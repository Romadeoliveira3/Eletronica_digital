library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity controlador_sweet is
  port (
    Clk_out, Disparo  : out std_logic := '0';
    Temp_out, Freq_out: out std_logic_vector(27 downto 0);
    Clk_in, Duracao, Stop_in, Play_in : in std_logic
  );
end controlador_sweet;

architecture bhv of controlador_sweet is
  procedure nota (constant ov_f : integer; constant ov_t : integer) is
  begin
    Temp_out <= std_logic_vector(to_unsigned(ov_t, Temp_out'length));
    Freq_out <= std_logic_vector(to_unsigned(ov_f, Freq_out'length));
    Disparo  <= '1';
  end procedure;

  constant clk_FPGA : integer := 50000000;

  -- overflows (50 MHz / f)
  constant D4  : integer := 170068;  -- 294 Hz
  constant D5  : integer :=  85180;  -- 587 Hz
  constant A4  : integer := 113636;  -- 440 Hz
  constant G4  : integer := 127551;  -- 392 Hz
  constant G5  : integer :=  63776;  -- 784 Hz
  constant FS5 : integer :=  67568;  -- 740 Hz
  constant E4  : integer := 151515;  -- 330 Hz

  -- tempos (BPM=90 → 1/4 ≈ 0,167 s)
  constant BPM     : integer := 90;
  constant BPS     : integer := BPM / 60;
  constant ov_t1_4 : integer := (clk_FPGA / 4) / BPS;

  type estados is (
    s0,
    s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15,
    s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30
  );

  signal estado_atual, proximo_estado : estados;
  signal enable : std_logic := '0';
begin
  -- estado atual + enable (toca uma vez)
  process(Clk_in)
  begin
    if rising_edge(Clk_in) then
      estado_atual <= proximo_estado;

      if Stop_in = '1' then
        enable <= '0';
      elsif (estado_atual = s0 and Duracao = '0' and Play_in = '1') then
        enable <= '1';
      elsif (estado_atual = s30 and Duracao = '0') then
        enable <= '0';
      end if;
    end if;
  end process;

  -- próximo estado (sem reiniciar ao fim)
  process(estado_atual, Duracao, Play_in, Stop_in, enable)
  begin
    case estado_atual is
      when s0 =>
        if Stop_in = '1' then
          proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1' and enable = '0') then
          proximo_estado <= s1;
        else
          proximo_estado <= s0;
        end if;

      when s1  =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s2;
        else proximo_estado <= s1; end if;

      when s2  =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s3;
        else proximo_estado <= s2; end if;

      when s3  =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s4;
        else proximo_estado <= s3; end if;

      when s4  =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s5;
        else proximo_estado <= s4; end if;

      when s5  =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s6;
        else proximo_estado <= s5; end if;

      when s6  =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s7;
        else proximo_estado <= s6; end if;

      when s7  =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s8;
        else proximo_estado <= s7; end if;

      when s8  =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s9;
        else proximo_estado <= s8; end if;

      when s9  =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s10;
        else proximo_estado <= s9; end if;

      when s10 =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s11;
        else proximo_estado <= s10; end if;

      when s11 =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s12;
        else proximo_estado <= s11; end if;

      when s12 =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s13;
        else proximo_estado <= s12; end if;

      when s13 =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s14;
        else proximo_estado <= s13; end if;

      when s14 =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s15;
        else proximo_estado <= s14; end if;

      when s15 =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s16;
        else proximo_estado <= s15; end if;

      when s16 =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s17;
        else proximo_estado <= s16; end if;

      when s17 =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s18;
        else proximo_estado <= s17; end if;

      when s18 =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s19;
        else proximo_estado <= s18; end if;

      when s19 =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s20;
        else proximo_estado <= s19; end if;

      when s20 =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s21;
        else proximo_estado <= s20; end if;

      when s21 =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s22;
        else proximo_estado <= s21; end if;

      when s22 =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s23;
        else proximo_estado <= s22; end if;

      when s23 =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s24;
        else proximo_estado <= s23; end if;

      when s24 =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s25;
        else proximo_estado <= s24; end if;

      when s25 =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s26;
        else proximo_estado <= s25; end if;

      when s26 =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s27;
        else proximo_estado <= s26; end if;

      when s27 =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s28;
        else proximo_estado <= s27; end if;

      when s28 =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s29;
        else proximo_estado <= s28; end if;

      when s29 =>
        if Stop_in = '1' then proximo_estado <= s0;
        elsif (Duracao = '0' and Play_in = '1') then proximo_estado <= s30;
        else proximo_estado <= s29; end if;

      when s30 =>
        if Stop_in = '1' then
          proximo_estado <= s0;
        elsif Duracao = '0' then
          proximo_estado <= s0;
        else
          proximo_estado <= s30;
        end if;

      when others =>
        proximo_estado <= s0;
    end case;
  end process;

  -- saídas
  process(Clk_in, estado_atual)
  begin
    if rising_edge(Clk_in) then
      case estado_atual is
        when s0  => nota(0  , ov_t1_4);
        when s1  => nota(D4 , ov_t1_4);
        when s2  => nota(D5 , ov_t1_4);
        when s3  => nota(A4 , ov_t1_4);
        when s4  => nota(G4 , ov_t1_4);
        when s5  => nota(G5 , ov_t1_4);
        when s6  => nota(A4 , ov_t1_4);
        when s7  => nota(FS5, ov_t1_4);
        when s8  => nota(A4 , ov_t1_4);
        when s9  => nota(D4 , ov_t1_4);
        when s10 => nota(D5 , ov_t1_4);
        when s11 => nota(A4 , ov_t1_4);
        when s12 => nota(G4 , ov_t1_4);
        when s13 => nota(G5 , ov_t1_4);
        when s14 => nota(A4 , ov_t1_4);
        when s15 => nota(FS5, ov_t1_4);
        when s16 => nota(A4 , ov_t1_4);
        when s17 => nota(E4 , ov_t1_4);
        when s18 => nota(D5 , ov_t1_4);
        when s19 => nota(A4 , ov_t1_4);
        when s20 => nota(G4 , ov_t1_4);
        when s21 => nota(G5 , ov_t1_4);
        when s22 => nota(A4 , ov_t1_4);
        when s23 => nota(FS5, ov_t1_4);
        when s24 => nota(A4 , ov_t1_4);
        when s25 => nota(E4 , ov_t1_4);
        when s26 => nota(D5 , ov_t1_4);
        when s27 => nota(A4 , ov_t1_4);
        when s28 => nota(G4 , ov_t1_4);
        when s29 => nota(G5 , ov_t1_4);
        when s30 => nota(A4 , ov_t1_4);
        when others => null;
      end case;
    end if;
  end process;

  Clk_out <= Duracao and Clk_in;
end bhv;
