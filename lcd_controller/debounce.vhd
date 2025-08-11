library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity debounce is
  generic (
    CLK_FREQ_HZ : positive := 50_000_000;
    DEBOUNCE_MS : positive := 20;
    N_KEYS      : positive := 4
  );
  port (
    clk : in  std_logic;
    key : in  std_logic_vector(N_KEYS downto 1);
    deb : out std_logic_vector(N_KEYS downto 1)
  );
end entity;

architecture rtl of debounce is
  constant CNT_MAX : natural := (CLK_FREQ_HZ / 1000) * DEBOUNCE_MS;
  type u32_array is array (N_KEYS downto 1) of unsigned(31 downto 0);
  signal s0, s1, stable : std_logic_vector(N_KEYS downto 1) := (others => '0');
  signal cnt            : u32_array := (others => (others => '0'));
begin
  process(clk)
  begin
    if rising_edge(clk) then
      s0 <= key;
      s1 <= s0;

      for i in N_KEYS downto 1 loop
        if s1(i) = stable(i) then
          cnt(i) <= (others => '0');
        else
          if cnt(i) = to_unsigned(CNT_MAX-1, cnt(i)'length) then
            stable(i) <= s1(i);
            cnt(i)    <= (others => '0');
          else
            cnt(i) <= cnt(i) + 1;
          end if;
        end if;
      end loop;
    end if;
  end process;

  deb <= stable;
end architecture;
