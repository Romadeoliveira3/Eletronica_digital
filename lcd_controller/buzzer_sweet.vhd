library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity buzzer_sweet is
  port (
    clock  : in  std_logic;
    play   : in  std_logic;   -- flanco de subida: alterna Play/Pause
    stop   : in  std_logic;   -- flanco de subida: reseta e pausa
    buzzer : out std_logic
  );
end entity;

architecture estrutural of buzzer_sweet is
  -- Controle de execução
  signal run_en                 : std_logic := '0';  -- 1=tocando, 0=pausado
  signal play_d1,  play_d2      : std_logic := '0';
  signal stop_d1,  stop_d2      : std_logic := '0';
  signal play_rise, stop_rise   : std_logic := '0';
  signal stop_pulse             : std_logic := '0';  -- 1 ciclo para o controlador

  -- Interconexões de áudio
  signal disparo  : std_logic;
  signal duracao  : std_logic;
  signal temp_ovf : std_logic_vector(27 downto 0);
  signal freq_ovf : std_logic_vector(27 downto 0);
  signal tone     : std_logic;
begin
  ---------------------------------------------------------------------------
  -- Detecção de borda (assuma play/stop já debounced e ativos em '1')
  ---------------------------------------------------------------------------
  process(clock)
  begin
    if rising_edge(clock) then
      -- registradores
      play_d1 <= play;  play_d2 <= play_d1;
      stop_d1 <= stop;  stop_d2 <= stop_d1;

      -- bordas
      play_rise <= play_d1 and not play_d2;
      stop_rise <= stop_d1 and not stop_d2;

      -- toggle e reset
      if stop_rise = '1' then
        run_en     <= '0';      -- pausa
        stop_pulse <= '1';      -- reseta o controlador
      else
        stop_pulse <= '0';
        if play_rise = '1' then
          run_en <= not run_en; -- alterna play/pause
        end if;
      end if;
    end if;
  end process;

  ---------------------------------------------------------------------------
  -- Controlador da melodia (ajuste interno recomendado abaixo)
  ---------------------------------------------------------------------------
  u_ctrl: entity work.controlador_sweet
    port map (
      Clk_in   => clock,
      Play_in  => run_en,      -- 1 = tocar/avançar; 0 = pausar
      Stop_in  => stop_pulse,  -- pulso de 1 ciclo para resetar
      Duracao  => duracao,
      Disparo  => disparo,
      Temp_out => temp_ovf,
      Freq_out => freq_ovf,
      Clk_out  => open
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

  -- Mudo quando pausado
  buzzer <= tone when run_en = '1' else '0';

end architecture;
