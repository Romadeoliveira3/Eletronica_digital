LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
USE WORK.lcd_vhdl_package.ALL;

ENTITY lcd_junkbox_ctrl IS
  GENERIC(
    KEY1_IDX : integer := 1;
    KEY2_IDX : integer := 2
  );
  PORT(
    clk        : IN  STD_LOGIC;
    lcd_busy   : IN  STD_LOGIC;
    key        : IN  STD_LOGIC_VECTOR(4 DOWNTO 1);
    is_playing : IN  STD_LOGIC;
    song_end   : IN  STD_LOGIC;
    lcd_e      : OUT STD_LOGIC;
    lcd_bar    : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    play_m1    : OUT STD_LOGIC;
    play_m2    : OUT STD_LOGIC
  );
END lcd_junkbox_ctrl;

ARCHITECTURE bhv OF lcd_junkbox_ctrl IS
  SIGNAL lcd_enable : STD_LOGIC := '0';
  SIGNAL lcd_bus    : STD_LOGIC_VECTOR(9 DOWNTO 0) := (others => '0');
  SIGNAL L1, L2     : STD_LOGIC_VECTOR(127 DOWNTO 0);
  SIGNAL key1_d1, key1_d2, key2_d1, key2_d2 : STD_LOGIC := '0';
  SIGNAL key1_rise, key2_rise : STD_LOGIC := '0';

  TYPE state_type IS (SHOW_MENU, SONG1, SONG2, PLAYING, BACK_MENU);
  SIGNAL state : state_type := SHOW_MENU;

  CONSTANT MSG_MENU1  : STD_LOGIC_VECTOR(127 DOWNTO 0) := to_std_logic_vector("1: SONG ONE     ");
  CONSTANT MSG_MENU2  : STD_LOGIC_VECTOR(127 DOWNTO 0) := to_std_logic_vector("2: SONG TWO     ");
  CONSTANT MSG_SONG1_1: STD_LOGIC_VECTOR(127 DOWNTO 0) := to_std_logic_vector("   PLAYING      ");
  CONSTANT MSG_SONG1_2: STD_LOGIC_VECTOR(127 DOWNTO 0) := to_std_logic_vector("   SONG ONE     ");
  CONSTANT MSG_SONG2_1: STD_LOGIC_VECTOR(127 DOWNTO 0) := to_std_logic_vector("   PLAYING      ");
  CONSTANT MSG_SONG2_2: STD_LOGIC_VECTOR(127 DOWNTO 0) := to_std_logic_vector("   SONG TWO     ");
  CONSTANT MSG_PLAY_1 : STD_LOGIC_VECTOR(127 DOWNTO 0) := to_std_logic_vector(" NOW PLAYING    ");
  CONSTANT MSG_PLAY_2 : STD_LOGIC_VECTOR(127 DOWNTO 0) := to_std_logic_vector("  ROCK 80s      ");
  CONSTANT MSG_BACK_1 : STD_LOGIC_VECTOR(127 DOWNTO 0) := to_std_logic_vector("   JUNKBOX      ");
  CONSTANT MSG_BACK_2 : STD_LOGIC_VECTOR(127 DOWNTO 0) := to_std_logic_vector(" Press KEY1/2   ");
BEGIN
  lcd_e <= lcd_enable;
  lcd_bar <= lcd_bus;

  PROCESS(clk)
  BEGIN
    IF rising_edge(clk) THEN
      key1_d1 <= key(KEY1_IDX);
      key1_d2 <= key1_d1;
      key2_d1 <= key(KEY2_IDX);
      key2_d2 <= key2_d1;
      key1_rise <= key1_d1 AND NOT key1_d2;
      key2_rise <= key2_d1 AND NOT key2_d2;
    END IF;
  END PROCESS;

  PROCESS(clk)
    VARIABLE char : INTEGER RANGE 0 TO 34 := 0;
  BEGIN
    IF rising_edge(clk) THEN
      IF (lcd_busy = '0' AND lcd_enable = '0') THEN
        lcd_enable <= '1';
        IF (char < 34) THEN
          char := char + 1;
        ELSE
          char := 0;
        END IF;
        CASE char IS
          WHEN 0  => lcd_bus <= "00" & "10000000";
          WHEN 1  => lcd_bus <= "10" & L1(127 DOWNTO 120);
          WHEN 2  => lcd_bus <= "10" & L1(119 DOWNTO 112);
          WHEN 3  => lcd_bus <= "10" & L1(111 DOWNTO 104);
          WHEN 4  => lcd_bus <= "10" & L1(103 DOWNTO 96);
          WHEN 5  => lcd_bus <= "10" & L1(95 DOWNTO 88);
          WHEN 6  => lcd_bus <= "10" & L1(87 DOWNTO 80);
          WHEN 7  => lcd_bus <= "10" & L1(79 DOWNTO 72);
          WHEN 8  => lcd_bus <= "10" & L1(71 DOWNTO 64);
          WHEN 9  => lcd_bus <= "10" & L1(63 DOWNTO 56);
          WHEN 10 => lcd_bus <= "10" & L1(55 DOWNTO 48);
          WHEN 11 => lcd_bus <= "10" & L1(47 DOWNTO 40);
          WHEN 12 => lcd_bus <= "10" & L1(39 DOWNTO 32);
          WHEN 13 => lcd_bus <= "10" & L1(31 DOWNTO 24);
          WHEN 14 => lcd_bus <= "10" & L1(23 DOWNTO 16);
          WHEN 15 => lcd_bus <= "10" & L1(15 DOWNTO 8);
          WHEN 16 => lcd_bus <= "10" & L1(7 DOWNTO 0);
          WHEN 17 => lcd_bus <= "00" & "11000000";
          WHEN 18 => lcd_bus <= "10" & L2(127 DOWNTO 120);
          WHEN 19 => lcd_bus <= "10" & L2(119 DOWNTO 112);
          WHEN 20 => lcd_bus <= "10" & L2(111 DOWNTO 104);
          WHEN 21 => lcd_bus <= "10" & L2(103 DOWNTO 96);
          WHEN 22 => lcd_bus <= "10" & L2(95 DOWNTO 88);
          WHEN 23 => lcd_bus <= "10" & L2(87 DOWNTO 80);
          WHEN 24 => lcd_bus <= "10" & L2(79 DOWNTO 72);
          WHEN 25 => lcd_bus <= "10" & L2(71 DOWNTO 64);
          WHEN 26 => lcd_bus <= "10" & L2(63 DOWNTO 56);
          WHEN 27 => lcd_bus <= "10" & L2(55 DOWNTO 48);
          WHEN 28 => lcd_bus <= "10" & L2(47 DOWNTO 40);
          WHEN 29 => lcd_bus <= "10" & L2(39 DOWNTO 32);
          WHEN 30 => lcd_bus <= "10" & L2(31 DOWNTO 24);
          WHEN 31 => lcd_bus <= "10" & L2(23 DOWNTO 16);
          WHEN 32 => lcd_bus <= "10" & L2(15 DOWNTO 8);
          WHEN 33 => lcd_bus <= "10" & L2(7 DOWNTO 0);
          WHEN OTHERS => lcd_enable <= '0';
        END CASE;
      ELSE
        lcd_enable <= '0';
      END IF;
    END IF;
  END PROCESS;

  PROCESS(clk)
  BEGIN
    IF rising_edge(clk) THEN
      CASE state IS
        WHEN SHOW_MENU =>
          L1 <= MSG_MENU1;
          L2 <= MSG_MENU2;
          play_m1 <= '0';
          play_m2 <= '0';
          IF key1_rise = '1' THEN
            play_m1 <= '1';
            state <= SONG1;
          ELSIF key2_rise = '1' THEN
            play_m2 <= '1';
            state <= SONG2;
          END IF;
        WHEN SONG1 =>
          L1 <= MSG_SONG1_1;
          L2 <= MSG_SONG1_2;
          state <= PLAYING;
        WHEN SONG2 =>
          L1 <= MSG_SONG2_1;
          L2 <= MSG_SONG2_2;
          state <= PLAYING;
        WHEN PLAYING =>
          IF is_playing = '1' THEN
            L1 <= MSG_PLAY_1;
            L2 <= MSG_PLAY_2;
          END IF;
          IF song_end = '1' THEN
            state <= BACK_MENU;
          END IF;
        WHEN BACK_MENU =>
          L1 <= MSG_BACK_1;
          L2 <= MSG_BACK_2;
          state <= SHOW_MENU;
      END CASE;
    END IF;
  END PROCESS;
END bhv;
