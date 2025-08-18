library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.lcd_vhdl_package.all;

entity junkbox_buzzer_system is
  port (
    clk        : in  std_logic;  -- clock do sistema
    lcd_busy   : in  std_logic;  -- feedback do controlador LCD
    key        : in  std_logic_vector(4 downto 1); -- botões já debounced
    lcd_e   : out std_logic;
    lcd_bus : out std_logic_vector(9 downto 0);
    buzzer  : out std_logic
  );
end entity;

architecture estrutural of junkbox_buzzer_system is

  -- Sinais de conexão
  signal play_m1_sig  : std_logic;
  signal play_m2_sig  : std_logic;
  signal buzzer_play1 : std_logic := '0';
  signal buzzer_play2 : std_logic := '0';
  signal buzzer_stop1 : std_logic := '0';
  signal buzzer_stop2 : std_logic := '0';
  signal song_sel     : std_logic_vector(1 downto 0) := "00";

  signal buzzer_s1    : std_logic;
  signal buzzer_s2    : std_logic;
  signal is_playing1  : std_logic;
  signal is_playing2  : std_logic;
  signal song_end1    : std_logic;
  signal song_end2    : std_logic;
  signal is_playing_s : std_logic;
  signal song_end_s   : std_logic;

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
      clk        => clk,
      lcd_busy   => lcd_busy,
      key        => key,
      is_playing => is_playing_s,
      song_end   => song_end_s,
      lcd_e      => lcd_e,
      lcd_bar    => lcd_bus,
      play_m1    => play_m1_sig,
      play_m2    => play_m2_sig
    );

  --------------------------------------------------------------------
  -- Lógica de seleção da música e geração do pulso de play
  --------------------------------------------------------------------
  process(clk)
  begin
    if rising_edge(clk) then
      buzzer_play1 <= '0';
      buzzer_play2 <= '0';
      buzzer_stop1 <= '0';
      buzzer_stop2 <= '0';

      if play_m1_sig = '1' then
        song_sel     <= "01"; -- música 1
        buzzer_play1 <= '1';
        buzzer_stop2 <= '1';
      elsif play_m2_sig = '1' then
        song_sel     <= "10"; -- música 2
        buzzer_play2 <= '1';
        buzzer_stop1 <= '1';
      end if;

      -- Stop em ambos com KEY3
      if key(3) = '0' then
        buzzer_stop1 <= '1';
        buzzer_stop2 <= '1';
      end if;
    end if;
  end process;

  --------------------------------------------------------------------
  -- Instâncias dos buzzer_sweet e buzzer_fur_elise
  --------------------------------------------------------------------
  u_buzzer1: entity work.buzzer_sweet
    port map (
      clock      => clk,
      play       => buzzer_play1,
      stop       => buzzer_stop1,
      mute       => '0',
      buzzer     => buzzer_s1,
      is_playing => is_playing1,
      song_end   => song_end1
    );

  u_buzzer2: entity work.buzzer_fur_elise
    port map (
      clock      => clk,
      play       => buzzer_play2,
      stop       => buzzer_stop2,
      mute       => '0',
      buzzer     => buzzer_s2,
      is_playing => is_playing2,
      song_end   => song_end2
    );

  -- Multiplexação das saídas conforme música selecionada
  with song_sel select
    buzzer <= buzzer_s1 when "01",
               buzzer_s2 when "10",
               '0'       when others;

  with song_sel select
    is_playing_s <= is_playing1 when "01",
                    is_playing2 when "10",
                    '0'        when others;

  with song_sel select
    song_end_s <= song_end1 when "01",
                  song_end2 when "10",
                  '0'      when others;

end architecture;
