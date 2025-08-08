-- Arquivo: led_botoes2.vhd
-- Descrição: Botão multifunção
-- Autor: Malki-çedheq Benjamim
-- Data: 04/02/2022
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY leds_botoes2 IS
	PORT (
		clock : IN std_logic;
		key : IN std_logic_vector (4 DOWNTO 1); --entrada para os botões/chaves
		--todos os leds INativos (ativo-baixo)
		led : OUT std_logic_vector (4 DOWNTO 1):= X"F" --saída para leds
	);
END leds_botoes2;
ARCHITECTURE df OF leds_botoes2 IS
	--Declaraçao de componentes
	COMPONENT gera_pulso
		PORT (clk, pushbutton : IN std_logic;
				pulso : OUT std_logic);
	END COMPONENT ;
	
	--Sinais
	SIGNAL pulso_in : std_logic := '0';
	
	--Constantes de Estados da FSM
	TYPE estados IS (s0, s1, s2, s3);
	SIGNAL estado_atual: estados := s0;
	SIGNAL prox_estado: estados;
BEGIN
	-- instancia do componente gera pulso
	gp : gera_pulso PORT MAP (clock, key(1), pulso_in);
			
	--Lógica para controle do estado atual (SEQUENCIAL)
	L1: PROCESS(clock)
	BEGIN
		IF rising_edge(clock) THEN 
			estado_atual <= prox_estado;
		END IF;
	END PROCESS L1;
	--Lógica para próximo estado (COMBINACIONAL)
	L2: PROCESS (estado_atual, pulso_in)
	BEGIN
		CASE estado_atual IS
			WHEN s0 =>			
				IF (pulso_in = '1') THEN
					prox_estado <= s1;					
				ELSE
					prox_estado <= s0;
				END IF;
			WHEN s1 =>
				IF (pulso_in = '1') THEN
					prox_estado <= s2;					
				ELSE
					prox_estado <= s1;
				END IF;
			WHEN s2 =>
				IF (pulso_in = '1') THEN
					prox_estado <= s3;					
				ELSE
					prox_estado <= s2;
				END IF;		
			WHEN s3 =>
				IF (pulso_in = '1') THEN
					prox_estado <= s0;					
				ELSE
					prox_estado <= s3;
				END IF;					
			WHEN OTHERS =>
				--recupera de estado inválido
				prox_estado <= s0; --reinicia
		END CASE;
	END PROCESS L2;
	--Lógica para saída registrada da FSM
	L3: PROCESS (clock)
	BEGIN
		IF rising_edge(clock) THEN
			CASE estado_atual IS
				WHEN s0 => led <= b"1011";--LED3
				WHEN s1 => led <= b"1110";--LED1
				WHEN s2 => led <= b"1101";--LED2
				WHEN s3 => led <= b"0111";--LED4	
--Não é necessário WHEN OTHERS pois
--o controle é feito no processo L2
			END CASE;
		END IF;
	END PROCESS L3;
	
END df;