-- mux2to1_10bit.vhd
library ieee;
use ieee.std_logic_1164.all;

entity mux2to1_10bit is
  port (
    sel : in  std_logic;                    -- 0=A, 1=B
    a   : in  std_logic_vector(9 downto 0); -- A
    b   : in  std_logic_vector(9 downto 0); -- B
    y   : out std_logic_vector(9 downto 0)  -- Y
  );
end entity;

architecture rtl of mux2to1_10bit is
begin
  y <= a when (sel = '0') else b;
end architecture;
