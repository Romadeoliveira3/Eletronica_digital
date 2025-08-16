library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.lcd_vhdl_package.all;

entity junkbox_buzzer_system is
  port (
    clk        : in  std_logic;  -- clock do sistema
    lcd_busy   : in  std_logic;  -- feedback do controlador LCD
    key        : in  std_logic_vector(4 downto 1); -- botões já debounced
    lcd_e      : out std_logic;
    lcd_bar    : out std_logic_vector(9 downto 0);
    buzzer_out : out std_logic
  );
end entity;

architecture estrutural of junkbox_buzzer_system is

  -- Sinais de conexão
  signal play_m1_sig : std_logic;
  signal play_m2_sig : std_logic;
  signal buzzer_play : std_logic := '0';
  signal buzzer_stop : std_logic := '0';
  signal song_sel    : std_logic_vector(1 downto 0) := "00";

begin

  --------------------------------------------------------------------
  -- Instância do módulo LCD com controle tipo jukebox
  --------------------------------------------------------------------
  u_junkbox: entity work.lcd_junkbox_ctrl
    generic map (
      KEY1_IDX => 1,
      KEY2_IDX => 2
    )
    port map (
      clk      => clk,
      lcd_busy => lcd_busy,
      key      => key,
      lcd_e    => lcd_e,
      lcd_bar  => lcd_bar,
      play_m1  => play_m1_sig,
      play_m2  => play_m2_sig
    );

  --------------------------------------------------------------------
  -- Lógica de seleção da música e geração do pulso de play
  --------------------------------------------------------------------
  process(clk)
  begin
    if rising_edge(clk) then
      buzzer_play <= '0'; -- default

      if play_m1_sig = '1' then
        song_sel    <= "01";  -- música 1
        buzzer_play <= '1';
      elsif play_m2_sig = '1' then
        song_sel    <= "10";  -- música 2
        buzzer_play <= '1';
      end if;

      -- Stop no KEY3 (por exemplo)
      if key(3) = '0' then
        buzzer_stop <= '1';
      else
        buzzer_stop <= '0';
      end if;
    end if;
  end process;

  --------------------------------------------------------------------
  -- Instância do buzzer_sweet (original)
  --------------------------------------------------------------------
  u_buzzer: entity work.buzzer_sweet
    port map (
      clock  => clk,
      play   => buzzer_play,
      stop   => buzzer_stop,
      buzzer => buzzer_out
    );

end architecture;
