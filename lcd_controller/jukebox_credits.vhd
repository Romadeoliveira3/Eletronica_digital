library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity jukebox_credits is
  generic (
    CRED_BITS   : natural := 14;   -- largura do registrador de créditos (suporta 0..9999)
    MAX_CREDITS : natural := 9999  -- saturação (<= 2^CRED_BITS - 1)
  );
  port (
    clk        : in  std_logic;
    key        : in  std_logic_vector(4 downto 1); -- debounced, ativos em '1'
    credits    : out unsigned(CRED_BITS-1 downto 0); -- valor atual
    add_pulse  : out std_logic;  -- pulso 1 ciclo quando adiciona crédito (KEY4) (som de moeda, ou alguma interação no LCD)
    next_menu  : out std_logic   -- pulso 1 ciclo quando consome 1 crédito (KEY1)
  );
end entity;

architecture rtl of jukebox_credits is
  signal cred_reg  : unsigned(CRED_BITS-1 downto 0) := (others => '0');

  signal k1_d1, k1_d2 : std_logic := '0';
  signal k4_d1, k4_d2 : std_logic := '0';
  signal k1_rise      : std_logic := '0';
  signal k4_rise      : std_logic := '0';

  function min(a, b : natural) return natural is
  begin
    if a < b then return a; else return b; end if;
  end function;

  constant MAX_SAT : unsigned(CRED_BITS-1 downto 0) :=
    to_unsigned(min(MAX_CREDITS, (2**CRED_BITS)-1), CRED_BITS);

begin
  credits <= cred_reg;

  process(clk)
  begin
    if rising_edge(clk) then
      -- detecção de borda (subida) em KEY1 e KEY4
      k1_d1 <= key(1);  k1_d2 <= k1_d1;
      k4_d1 <= key(4);  k4_d2 <= k4_d1;
      k1_rise <= k1_d1 and not k1_d2;
      k4_rise <= k4_d1 and not k4_d2;

      -- saídas de pulso (default 0)
      add_pulse <= '0';
      next_menu <= '0';

      -- adicionar crédito: KEY4
      if k4_rise = '1' then
        if cred_reg < MAX_SAT then
          cred_reg  <= cred_reg + 1;
        else
          cred_reg  <= MAX_SAT; -- satura
        end if;
        add_pulse <= '1';
      end if;

      -- consumir 1 crédito e sinalizar próximo menu: KEY1
      if k1_rise = '1' then
        if cred_reg > 0 then
          cred_reg  <= cred_reg - 1;
          next_menu <= '1';
        else
          next_menu <= '0';
        end if;
      end if;
    end if;
  end process;
end architecture;
