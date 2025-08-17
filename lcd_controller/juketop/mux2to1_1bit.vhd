-- mux2to1_1bit.vhd
library ieee;
use ieee.std_logic_1164.all;

entity mux2to1_1bit is
  port (
    sel : in  std_logic; -- 0=A, 1=B
    a   : in  std_logic; -- A
    b   : in  std_logic; -- B
    y   : out std_logic  -- Y
  );
end entity;

architecture rtl of mux2to1_1bit is
begin
  y <= a when (sel = '0') else b;
end architecture;
