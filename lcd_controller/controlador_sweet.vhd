library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controlador_sweet is
  port (
    Clk_in    : in  std_logic;
    Play_in   : in  std_logic;
    Stop_in   : in  std_logic;
    Duracao   : in  std_logic;
    Disparo   : out std_logic := '0';
    Temp_out  : out std_logic_vector(27 downto 0);
    Freq_out  : out std_logic_vector(27 downto 0);
    Clk_out   : out std_logic := '0'
  );
end entity;

architecture bhv of controlador_sweet is
  -- clock base
  constant CLK_FPGA : integer := 50_000_000;

  -- tempos (BPM ajustável)
  constant BPM : integer := 130;
  constant BPS : integer := BPM / 60;
  constant OV_T4   : integer := (4 * CLK_FPGA) / BPS;     -- semibreve
  constant OV_T2   : integer := (2 * CLK_FPGA) / BPS;     -- mínima
  constant OV_T1   : integer := (    CLK_FPGA) / BPS;     -- semínima
  constant OV_T1_2 : integer := (CLK_FPGA / 2) / BPS;     -- colcheia
  constant OV_T1_4 : integer := (CLK_FPGA / 4) / BPS;     -- semicolcheia
  constant OV_T_TRIP : integer := (CLK_FPGA / BPS) / 3;   -- tercina (1/3 da semínima)

  -- overflows de notas (aprox.) 50e6 / f
  constant A4  : integer := 113_636;  -- 440 Hz
  constant B4  : integer := 101_214;  -- 494 Hz
  constant D4  : integer := 170_068;  -- 294 Hz
  constant G4  : integer := 127_551;  -- 392 Hz
  constant D5  : integer := 85_111;   -- 587 Hz
  constant FIS4: integer := 133_689;  -- 374 Hz (~F#4)
  constant C5  : integer := 95_420;   -- 523 Hz
  constant E5  : integer := 96_618;   -- 517 Hz

  -- motivo inicial em tercinas (duas barras)
  type int_vec is array (natural range <>) of integer;
  constant N : integer := 24;
  constant FREQ_SEQ : int_vec(0 to N-1) := (
    D5,  A4,  B4,  D5,  A4,  G4,   D4,  D5,  A4,  B4,  D5,  A4,
    D5,  A4,  B4,  D5,  A4, FIS4,  D4,  D5,  A4,  B4,  D5,  A4
  );
  constant TIME_SEQ : int_vec(0 to N-1) := (
    OV_T_TRIP, OV_T_TRIP, OV_T_TRIP, OV_T_TRIP, OV_T_TRIP, OV_T_TRIP,
    OV_T_TRIP, OV_T_TRIP, OV_T_TRIP, OV_T_TRIP, OV_T_TRIP, OV_T_TRIP,
    OV_T_TRIP, OV_T_TRIP, OV_T_TRIP, OV_T_TRIP, OV_T_TRIP, OV_T_TRIP,
    OV_T_TRIP, OV_T_TRIP, OV_T_TRIP, OV_T_TRIP, OV_T_TRIP, OV_T_TRIP
  );

  signal idx           : integer range 0 to N := 0;
  signal playing       : std_logic := '0';
  signal disparo_pulse : std_logic := '0';

begin
  -- pulso de 1 ciclo em cada nova nota
  process(Clk_in)
  begin
    if rising_edge(Clk_in) then
      disparo_pulse <= '0';

      -- STOP
      if Stop_in = '1' then
        playing <= '0';
        idx     <= 0;

      -- START
      elsif (Play_in = '1' and playing = '0') then
        playing       <= '1';
        idx           <= 0;
        Temp_out  <= std_logic_vector(to_unsigned(TIME_SEQ(0), Temp_out'length));
        Freq_out  <= std_logic_vector(to_unsigned(FREQ_SEQ(0), Freq_out'length));
        disparo_pulse <= '1';

      -- AVANÇA QUANDO A DURAÇÃO ZERA (Duracao='0' -> próxima nota)
      elsif (playing = '1' and Play_in = '1' and Duracao = '0') then
        if idx = N-1 then
          idx <= 0;  -- repete o riff
        else
          idx <= idx + 1;
        end if;
        Temp_out  <= std_logic_vector(to_unsigned(TIME_SEQ(idx), Temp_out'length));
        Freq_out  <= std_logic_vector(to_unsigned(FREQ_SEQ(idx), Freq_out'length));
        disparo_pulse <= '1';
      end if;
    end if;
  end process;

  Disparo <= disparo_pulse;                 -- pulso curto
  Clk_out <= Duracao and Clk_in;            -- opcional

end architecture;
