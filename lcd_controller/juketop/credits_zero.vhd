library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity credits_zero is
  port (
    credits    : in  unsigned(13 downto 0); -- até 9999 créditos
    is_zero    : out std_logic              -- '1' se for zero
  );
end entity;

architecture rtl of credits_zero is
begin
  process(credits)
  begin
    if credits = 0 then
      is_zero <= '1';
    else
      is_zero <= '0';
    end if;
  end process;
end architecture;
