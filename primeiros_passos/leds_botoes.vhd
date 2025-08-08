-- Arquivo: leds_botoes.vhd
-- Descrição: Liga/Ativa/Acende o led correspondente ao botão pressionado
-- Autor: Malki-çedheq Benjamim
-- Data: 04/02/2022
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY leds_botoes IS
	PORT (
		key : IN std_logic_vector (4 DOWNTO 1); --entrada para os botões/chaves
		--todos os leds INativos (ativo-baixo)
		led : OUT std_logic_vector (4 DOWNTO 1):= X"F" --saída para leds
	);
END leds_botoes;
ARCHITECTURE df OF leds_botoes IS
BEGIN
 led <= key;
END df;