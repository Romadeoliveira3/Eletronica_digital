LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
ENTITY controlador IS
PORT ( 	Clk_out  : OUT std_logic := '0';
			Disparo  : OUT std_logic := '0';
			Temp_out : OUT std_logic_vector (27 DOWNTO 0);	
			Freq_out : OUT std_logic_vector (27 DOWNTO 0);		
			Clk_in, Duracao : IN std_logic
		);
END controlador;
ARCHITECTURE bhv OF controlador IS
  -- Subprograma para aplicar o tempo e frequencia
  --para atribuição de saídas nos estados
  PROCEDURE nota (CONSTANT ov_f : IN integer;
						CONSTANT ov_t : IN integer ) IS
  BEGIN
		Temp_out <= std_logic_vector(to_unsigned(ov_t,Temp_out'LENGTH)); --define a duração	proxima nota			
		Freq_out <= std_logic_vector(to_unsigned(ov_f,Freq_out'LENGTH)); --define a frequência nota atual
		Disparo <= '1';  --dispara o temp a próxima nota	
  END nota;
	
	--overflow para frequencias
	CONSTANT C4 : integer := 47802; --1046Hz (C4 ou Dó4)
	CONSTANT D4 : integer := 42553; --1175Hz (D4 ou Ré4)
	CONSTANT E4 : integer := 37937; --1318Hz (E4 ou Mi4)
	CONSTANT F4 : integer := 35791; --1397Hz (F4 ou Fá4)
	CONSTANT G4 : integer := 31290; --1598Hz (G4 ou Sol4)
	
	--overflow para tempos
	CONSTANT ov_t1 : integer := 200000000; --4000ms
	CONSTANT ov_t2 : integer := 100000000; --2000ms
	CONSTANT ov_t3 : integer := 50000000; --1000ms
	CONSTANT ov_t4 : integer := 25000000; --500ms
	CONSTANT ov_t5 : integer := 12500000; --250ms
	
	--FSM Declaração de estados 
	TYPE estados IS (s0, s1 , s2);
	SIGNAL estado_atual: estados;
	SIGNAL proximo_estado: estados;
BEGIN
	--Lógica para controle do estado atual
	L1: PROCESS(Clk_in)
	BEGIN
		IF rising_edge(Clk_in) THEN 
			estado_atual <= proximo_estado;
		END IF;
	END PROCESS L1;
	--Lógica para próximo estado
	L2: PROCESS (estado_atual, Duracao)
	BEGIN
		CASE estado_atual IS
			WHEN s0 =>
				IF (Duracao = '0') THEN
					proximo_estado <= s1;
				ELSE proximo_estado <= s0;
				END IF;
			WHEN s1 =>
				IF (Duracao = '0') THEN
					proximo_estado <= s2;
				ELSE proximo_estado <= s1;					
				END IF;	
			WHEN s2 =>
				IF (Duracao = '0') THEN
					proximo_estado <= s1;					
				ELSE proximo_estado <= s2;
				END IF;				
			WHEN OTHERS =>
				--recupera de estado inválido
				proximo_estado <= s0; --reinicia
		END CASE;
	END PROCESS L2;
	--Lógica para saída da FSM
	L3: PROCESS (Clk_in, estado_atual)
	BEGIN
		IF rising_edge(Clk_in) THEN
			CASE estado_atual IS 
				WHEN s0 => nota(0, ov_t4); --s0 apenas inicia a prox nota
				WHEN s1 => nota(D4, ov_t4);
				WHEN s2 => nota(G4, ov_t3);			
--Não é necessário WHEN OTHERS pois
--o controle é feito no processo L2
			END CASE;
		END IF;
	END PROCESS L3;
	
	--Atribuição contínua
	Clk_out <= Duracao AND Clk_in;
END bhv;