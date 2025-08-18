library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity buzzer_fur_elise is
  port (
    clock      : in  std_logic;
    play       : in  std_logic;   -- flanco de subida: alterna Play/Pause
    stop       : in  std_logic;   -- flanco de subida: reseta e pausa
    mute       : in  std_logic;   -- flanco de subida: alterna mute/desmute
    buzzer     : out std_logic;
    is_playing : out std_logic;
    song_end   : out std_logic    -- pulso de 1 ciclo no fim da música
  );
end entity;

architecture estrutural of buzzer_fur_elise is
  -- Controle de execução
  signal run_en               : std_logic := '0';  -- 1=tocando, 0=pausado
  signal mute_en              : std_logic := '1';  -- 1=mudo, 0=normal (ajuste p/ '0' se quiser iniciar desmutado)

  signal play_d1, play_d2     : std_logic := '0';
  signal stop_d1, stop_d2     : std_logic := '0';
  signal mute_d1, mute_d2     : std_logic := '0';
  signal play_rise            : std_logic := '0';
  signal stop_rise            : std_logic := '0';
  signal mute_rise            : std_logic := '0';
  signal stop_pulse           : std_logic := '0';  -- pulso de 1 ciclo para o controlador

  -- Interconexões de áudio
  signal disparo   : std_logic;
  signal duracao   : std_logic;
  signal temp_ovf  : std_logic_vector(27 downto 0);
  signal freq_ovf  : std_logic_vector(27 downto 0);
  signal tone      : std_logic;

  -- Fim de música (interno)
  signal song_end_i : std_logic := '0';
begin
  -----------------------------------------------------------------------------
  -- Detecção de borda (assuma play/stop/mute já debounced e ativos em '1')
  -----------------------------------------------------------------------------
  process(clock)
  begin
    if rising_edge(clock) then
      -- registradores
      play_d1 <= play;  play_d2 <= play_d1;
      stop_d1 <= stop;  stop_d2 <= stop_d1;
      mute_d1 <= mute;  mute_d2 <= mute_d1;

      -- bordas
      play_rise <= play_d1 and not play_d2;
      stop_rise <= stop_d1 and not stop_d2;
      mute_rise <= mute_d1 and not mute_d2;

      -- controle Play/Pause e Stop (encerra também no song_end)
      if (stop_rise = '1') or (song_end_i = '1') then
        run_en     <= '0';      -- pausa/encerra
        stop_pulse <= '1';      -- reseta o controlador
      else
        stop_pulse <= '0';
        if play_rise = '1' then
          run_en <= not run_en; -- alterna play/pause
        end if;
      end if;

      -- controle Mute/Desmute
      if mute_rise = '1' then
        mute_en <= not mute_en; -- alterna mute/desmute
      end if;
    end if;
  end process;

  -----------------------------------------------------------------------------
  -- Controlador da melodia (Fur Elise)
  -- Requer a entidade: work.controlador_fur_elise com portas:
  --   Clk_in, Play_in, Stop_in : in std_logic
  --   Duracao, Disparo         : out std_logic
  --   Temp_out, Freq_out       : out std_logic_vector(27 downto 0)
  --   Clk_out                  : out std_logic (pode ser 'open' aqui)
  --   song_end                 : out std_logic (pulso de 1 ciclo)
  -----------------------------------------------------------------------------
  u_ctrl: entity work.controlador_fur_elise
    port map (
      Clk_in   => clock,
      Play_in  => run_en,       -- 1 = tocar/avançar; 0 = pausar (warp)
      Stop_in  => stop_pulse,   -- pulso de 1 ciclo para resetar
      Duracao  => duracao,
      Disparo  => disparo,
      Temp_out => temp_ovf,
      Freq_out => freq_ovf,
      Clk_out  => open,
      song_end => song_end_i
    );

  -- Temporizador (duração)
  u_tmp: entity work.temporizador
    port map (
      clk      => clock,
      Disparo  => disparo,
      Overflow => temp_ovf,
      Q        => duracao
    );

  -- Divisor (frequência -> tom)
  u_div: entity work.divisor_clock
    port map (
      Clk_in   => clock,
      Overflow => freq_ovf,
      Clk_out  => tone
    );

  -- Saída do buzzer (mute atua apenas no som, não no andamento da música)
  buzzer <= tone when (run_en = '1' and mute_en = '0') else '0';

  -- Sinais de status
  is_playing <= run_en;
  song_end   <= song_end_i;

end architecture;
