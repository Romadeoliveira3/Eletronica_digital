library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mode_selector is
  generic (
    CRED_BITS : natural := 14
  );
  port (
    clk         : in  std_logic;
    reset_n     : in  std_logic;                      -- reset assíncrono ativo-baixo

    -- Fluxo de UI
    next_menu   : in  std_logic;                      -- pulso: consumiu 1 crédito (KEY1) para entrar no menu da jukebox
    song_end    : in  std_logic;                      -- pulso: música terminou
    stop_btn    : in  std_logic;                      -- nível: STOP pressionado (debounced)
    is_playing  : in  std_logic;                      -- nível: 1 = música tocando
    credits     : in  unsigned(CRED_BITS-1 downto 0); -- créditos atuais

    -- Botões que vão para o buzzer (entradas cruas)...
    play_btn    : in  std_logic;                      -- KEY1 (ou pulso do menu)
    mute_btn    : in  std_logic;                      -- KEY3

    -- ...e versões "gated" (saídas) após as restrições de créditos/modo:
    play_gate   : out std_logic;                      -- só gera borda se permitido
    mute_gate   : out std_logic;                      -- só permite mute em contexto válido

    -- Seleção de UI
    mode_sel    : out std_logic                       -- 0 = tela de créditos, 1 = tela jukebox
  );
end entity;

architecture rtl of mode_selector is
  signal mode_q : std_logic := '0';  -- 0=créditos, 1=jukebox

  -- Alongamento de pulso para robustez na troca de UI
  constant STRETCH_CYC : natural := 8;

  -- sincronização/edge detect
  signal stop_d1,  stop_d2  : std_logic := '0';
  signal end_d1,   end_d2   : std_logic := '0';
  signal end_rise           : std_logic := '0';

  -- stretch de next_menu (só é usado quando estamos na tela de créditos)
  signal nm_cnt     : natural range 0 to STRETCH_CYC := 0;
  signal nm_latched : std_logic := '0';
begin
  mode_sel <= mode_q;

  --------------------------------------------------------------------------
  -- Sincroniza STOP e detecta borda de song_end
  --------------------------------------------------------------------------
  process(clk, reset_n)
  begin
    if reset_n = '0' then
      stop_d1  <= '0'; stop_d2 <= '0';
      end_d1   <= '0'; end_d2  <= '0';
      end_rise <= '0';
    elsif rising_edge(clk) then
      stop_d1  <= stop_btn;   stop_d2 <= stop_d1;
      end_d1   <= song_end;   end_d2  <= end_d1;
      end_rise <= end_d1 and not end_d2;
    end if;
  end process;

  --------------------------------------------------------------------------
  -- Pulse-stretch do next_menu (somente relevante no modo créditos)
  --------------------------------------------------------------------------
  process(clk, reset_n)
  begin
    if reset_n = '0' then
      nm_cnt     <= 0;
      nm_latched <= '0';
    elsif rising_edge(clk) then
      if (mode_q = '0') then
        if next_menu = '1' then
          nm_cnt     <= STRETCH_CYC;
          nm_latched <= '1';
        elsif nm_cnt > 0 then
          nm_cnt     <= nm_cnt - 1;
          nm_latched <= '1';
        else
          nm_latched <= '0';
        end if;
      else
        -- no modo jukebox, ignora next_menu
        nm_cnt     <= 0;
        nm_latched <= '0';
      end if;
    end if;
  end process;

  --------------------------------------------------------------------------
  -- FSM de modo (2 estados implícitos via mode_q)
  -- Ajuste principal: ENTRA no menu jukebox assim que ocorrer next_menu,
  -- independentemente do valor atual de credits (permite entrar mesmo se foi
  -- consumido o último crédito e ficou 0).
  -- Volta para CRÉDITOS ao fim da música, STOP, ou se créditos acabarem.
  --------------------------------------------------------------------------
  process(clk, reset_n)
  begin
    if reset_n = '0' then
      mode_q <= '0';
    elsif rising_edge(clk) then
      if mode_q = '0' then
        if (nm_latched = '1') then
          mode_q <= '1';                 -- entra no menu jukebox
        else
          mode_q <= '0';
        end if;
      else  -- mode_q = '1'
        if (end_rise = '1') or (stop_d2 = '1') or (credits = 0) then
          mode_q <= '0';                 -- retorna para créditos
        else
          mode_q <= '1';
        end if;
      end if;
    end if;
  end process;

  --------------------------------------------------------------------------
  -- Gating dos botões para o buzzer_sweet
  -- No modo jukebox:
  --   * play_gate: permite pausar/retomar ou iniciar (consumo já foi feito no módulo de créditos)
  --   * mute_gate: somente quando está tocando
  -- No modo créditos: bloqueia ambos
  --------------------------------------------------------------------------
  play_gate <= play_btn when (mode_q = '1') else '0';
  mute_gate <= mute_btn when (mode_q = '1' and is_playing = '1') else '0';

end architecture;
