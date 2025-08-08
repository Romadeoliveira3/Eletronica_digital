LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
PACKAGE pkg_buzzer IS

COMPONENT divisor_clock
	PORT (Clk_in : IN std_logic;
			Overflow : IN std_logic_vector (27 DOWNTO 0);
			Clk_out: OUT std_logic);		
END COMPONENT;

COMPONENT temporizador IS
PORT ( Clk, Disparo :IN std_logic;
		 Overflow : IN std_logic_vector (27 DOWNTO 0);	
		 Q :OUT std_logic );
END COMPONENT;

COMPONENT controlador IS
PORT ( 	Clk_out  : OUT std_logic;
			Disparo  : OUT std_logic;
			Temp_out : OUT std_logic_vector (27 DOWNTO 0);	
			Freq_out : OUT std_logic_vector (27 DOWNTO 0);		
			Clk_in, Duracao : IN std_logic
		);
END COMPONENT;

END PACKAGE;