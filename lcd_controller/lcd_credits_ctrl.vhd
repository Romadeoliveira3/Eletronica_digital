library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.lcd_vhdl_package.all;

entity lcd_credits_ctrl is
  port(
    clk       : in  std_logic;
    lcd_busy  : in  std_logic;
    key       : in  std_logic_vector(4 downto 1);   -- não usado (compatibilidade)
    credits   : in  unsigned(13 downto 0);          -- 0..9999 do jukebox_credits
    lcd_e     : out std_logic;
    lcd_bar   : out std_logic_vector(9 downto 0)
  );
end entity;

architecture bhv of lcd_credits_ctrl is
  -- Ajuste de pisca: número de ciclos de clk para inverter o estado (meia-periodicidade).
  -- Para 50 MHz e 1 Hz de pisca total (liga+desliga = 1s), use 25_000_000-1.
  constant BLINK_DIV : natural := 75_000_000 - 1;

  -- Interface com o controlador LCD
  signal lcd_enable : std_logic := '0';
  signal lcd_bus    : std_logic_vector(9 downto 0) := (others => '0');

  -- Linhas do LCD (16 chars cada → 128 bits)
  signal L1 : std_logic_vector(127 downto 0);
  signal L2 : std_logic_vector(127 downto 0);

  -- Sequenciamento do envio
  signal char : integer range 0 to 34 := 0;

  -- Pisca/efeitos
  signal blink_cnt : unsigned(31 downto 0) := (others => '0');
  signal blink_on  : std_logic := '0';

  -- Título fixo (16 chars)
  constant TITLE       : string(1 to 16) := "  JUKEBOX 80s   ";
  -- Mensagem para solicitar ficha quando créditos = 0 (16 chars)
  constant INSERT_COIN : string(1 to 16) := "  INSERT COIN   ";

  -- Converte credits (0..9999) para 4 dígitos ASCII
  function to_4dec(u : unsigned(13 downto 0)) return string is
    variable v  : integer := to_integer(u);
    variable d0, d1, d2, d3 : integer;
    variable s  : string(1 to 4);
  begin
    if v < 0 then v := 0; end if;
    if v > 9999 then v := 9999; end if;

    d0 := v mod 10; v := v / 10;
    d1 := v mod 10; v := v / 10;
    d2 := v mod 10; v := v / 10;
    d3 := v mod 10;

    s(1) := character'val(character'pos('0') + d3);
    s(2) := character'val(character'pos('0') + d2);
    s(3) := character'val(character'pos('0') + d1);
    s(4) := character'val(character'pos('0') + d0);
    return s;
  end function;

begin
  lcd_e   <= lcd_enable;
  lcd_bar <= lcd_bus;

  -- Geração das linhas L1/L2
  process(clk)
    variable line1 : string(1 to 16);
    variable line2 : string(1 to 16);
    variable digs  : string(1 to 4);
  begin
    if rising_edge(clk) then
      -- Pisca com divisor configurável
      if blink_cnt = to_unsigned(BLINK_DIV, blink_cnt'length) then
        blink_cnt <= (others => '0');
        blink_on  <= not blink_on;
      else
        blink_cnt <= blink_cnt + 1;
      end if;

      -- Linha 1 (título)
      line1 := TITLE;

      -- Linha 2 (créditos / insert coin)
      if credits = 0 then
        if blink_on = '1' then
          line2 := INSERT_COIN;
        else
          digs  := to_4dec(credits);
          line2(1)  := 'C'; line2(2)  := 'R'; line2(3)  := 'E'; line2(4)  := 'D';
          line2(5)  := 'I'; line2(6)  := 'T'; line2(7)  := 'S'; line2(8)  := ':';
          line2(9)  := ' ';
          line2(10) := digs(1);
          line2(11) := digs(2);
          line2(12) := digs(3);
          line2(13) := digs(4);
          line2(14) := ' ';
          line2(15) := ' ';
          line2(16) := ' ';
        end if;
      else
        digs  := to_4dec(credits);
        line2(1)  := 'C'; line2(2)  := 'R'; line2(3)  := 'E'; line2(4)  := 'D';
        line2(5)  := 'I'; line2(6)  := 'T'; line2(7)  := 'S'; line2(8)  := ':';
        line2(9)  := ' ';
        line2(10) := digs(1);
        line2(11) := digs(2);
        line2(12) := digs(3);
        line2(13) := digs(4);
        line2(14) := ' ';
        line2(15) := ' ';
        line2(16) := ' ';
      end if;

      -- Converte para vetores de 128 bits
      L1 <= to_std_logic_vector(line1);
      L2 <= to_std_logic_vector(line2);
    end if;
  end process;

  -- Sequenciamento do envio de cada caractere de L1 e L2
  process(clk)
  begin
    if rising_edge(clk) then
      if (lcd_busy = '0' and lcd_enable = '0') then
        lcd_enable <= '1';
        if (char < 34) then
          char <= char + 1;
        else
          char <= 0;
        end if;

        case char is
          when 0  => lcd_bus <= "00" & "10000000"; -- DDRAM linha 1
          when 1  => lcd_bus <= "10" & L1(127 downto 120);
          when 2  => lcd_bus <= "10" & L1(119 downto 112);
          when 3  => lcd_bus <= "10" & L1(111 downto 104);
          when 4  => lcd_bus <= "10" & L1(103 downto 96);
          when 5  => lcd_bus <= "10" & L1(95 downto 88);
          when 6  => lcd_bus <= "10" & L1(87 downto 80);
          when 7  => lcd_bus <= "10" & L1(79 downto 72);
          when 8  => lcd_bus <= "10" & L1(71 downto 64);
          when 9  => lcd_bus <= "10" & L1(63 downto 56);
          when 10 => lcd_bus <= "10" & L1(55 downto 48);
          when 11 => lcd_bus <= "10" & L1(47 downto 40);
          when 12 => lcd_bus <= "10" & L1(39 downto 32);
          when 13 => lcd_bus <= "10" & L1(31 downto 24);
          when 14 => lcd_bus <= "10" & L1(23 downto 16);
          when 15 => lcd_bus <= "10" & L1(15 downto 8);
          when 16 => lcd_bus <= "10" & L1(7 downto 0);
          when 17 => lcd_bus <= "00" & "11000000"; -- DDRAM linha 2
          when 18 => lcd_bus <= "10" & L2(127 downto 120);
          when 19 => lcd_bus <= "10" & L2(119 downto 112);
          when 20 => lcd_bus <= "10" & L2(111 downto 104);
          when 21 => lcd_bus <= "10" & L2(103 downto 96);
          when 22 => lcd_bus <= "10" & L2(95 downto 88);
          when 23 => lcd_bus <= "10" & L2(87 downto 80);
          when 24 => lcd_bus <= "10" & L2(79 downto 72);
          when 25 => lcd_bus <= "10" & L2(71 downto 64);
          when 26 => lcd_bus <= "10" & L2(63 downto 56);
          when 27 => lcd_bus <= "10" & L2(55 downto 48);
          when 28 => lcd_bus <= "10" & L2(47 downto 40);
          when 29 => lcd_bus <= "10" & L2(39 downto 32);
          when 30 => lcd_bus <= "10" & L2(31 downto 24);
          when 31 => lcd_bus <= "10" & L2(23 downto 16);
          when 32 => lcd_bus <= "10" & L2(15 downto 8);
          when 33 => lcd_bus <= "10" & L2(7 downto 0);
          when others => lcd_enable <= '0';
        end case;
      else
        lcd_enable <= '0';
      end if;
    end if;
  end process;

end architecture;
