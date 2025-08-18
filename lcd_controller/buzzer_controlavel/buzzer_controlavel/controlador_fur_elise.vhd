library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controlador_fur_elise is
  port (
    Clk_out, Disparo  : out std_logic := '0';
    Temp_out, Freq_out: out std_logic_vector(27 downto 0);
    song_end          : out std_logic;               -- pulso 1 ciclo no fim
    Clk_in, Duracao   : in  std_logic;
    Stop_in, Play_in  : in  std_logic
  );
end controlador_fur_elise;

architecture bhv of controlador_fur_elise is
  -----------------------------------------------------------------------------
  -- Subprograma: aplica tempo/frequência e dispara o temporizador
  -----------------------------------------------------------------------------
  procedure nota (constant ov_f : integer; constant ov_t : integer) is
  begin
    Temp_out <= std_logic_vector(to_unsigned(ov_t, Temp_out'length));
    Freq_out <= std_logic_vector(to_unsigned(ov_f, Freq_out'length));
    Disparo  <= '1';
  end procedure;

  -----------------------------------------------------------------------------
  -- Constantes (50 MHz)
  -----------------------------------------------------------------------------
  constant clk_FPGA : integer := 50_000_000;

  -- Frequências (overflows)
  constant C4  : integer := 47802;
  constant D4  : integer := 42553;
  constant E4  : integer := 37937;
  constant F4  : integer := 35791;
  constant G4  : integer := 31290;

  constant Ds4 : integer := 40193;
  constant B3  : integer := 50608;
  constant A3  : integer := 56819;
  constant C3  : integer := 95603;
  constant E3  : integer := 75873;
  constant Gs3 : integer := 60169;

  -- Tempos (BPM=136)
  constant BPM     : integer := 136;
  constant BPS     : integer := BPM / 60;
  constant ov_t4   : integer := (4 * clk_FPGA) / BPS;
  constant ov_t2   : integer := (2 * clk_FPGA) / BPS;
  constant ov_t1   : integer := (1 * clk_FPGA) / BPS;
  constant ov_t1_2 : integer := (clk_FPGA / 2) / BPS;
  constant ov_t1_4 : integer := (clk_FPGA / 4) / BPS;

  -----------------------------------------------------------------------------
  -- FSM
  -----------------------------------------------------------------------------
  type estados is (
    s0,  s1,  s2,  s3,  s4,  s5,  s6,  s7,  s8,  s9,
    s10, s11, s12, s13, s14, s15, s16, s17, s18, s19,
    s20, s21, s22, s23, s24, s25, s26, s27, s28, s29,
    s30, s31, s32, s33, s34, s35, s36, s37, s38, s39,
    s40, s41
  );

  signal estado_atual, proximo_estado : estados;
  signal song_end_r : std_logic := '0';

  -- Função auxiliar: aplica regra “warp”: com Stop volta s0; com Duracao=0
  -- avança se Play=1, senão mantém.
  function step(curr, nxt: estados; d, p, s: std_logic) return estados is
  begin
    if s = '1' then
      return s0;
    elsif d = '0' then
      if p = '1' then
        return nxt;
      else
        return curr;
      end if;
    else
      return curr;
    end if;
  end function;

begin
  -----------------------------------------------------------------------------
  -- Registrador de estado e pulso song_end
  -----------------------------------------------------------------------------
  process(Clk_in)
  begin
    if rising_edge(Clk_in) then
      song_end_r <= '0';

      if Stop_in = '1' then
        estado_atual <= s0;
      else
        -- Pulso de fim quando se encerra s41 com Play ativo e Duracao fim
        if (estado_atual = s41) and (Duracao = '0') and (Play_in = '1') then
          song_end_r <= '1';
        end if;
        estado_atual <= proximo_estado;
      end if;
    end if;
  end process;

  song_end <= song_end_r;

  -----------------------------------------------------------------------------
  -- Próximo estado (sem operador ternário)
  -----------------------------------------------------------------------------
  process(estado_atual, Duracao, Stop_in, Play_in)
  begin
    case estado_atual is
      when s0  => proximo_estado <= step(s0 , s1 , Duracao, Play_in, Stop_in);
      when s1  => proximo_estado <= step(s1 , s2 , Duracao, Play_in, Stop_in);
      when s2  => proximo_estado <= step(s2 , s3 , Duracao, Play_in, Stop_in);
      when s3  => proximo_estado <= step(s3 , s4 , Duracao, Play_in, Stop_in);
      when s4  => proximo_estado <= step(s4 , s5 , Duracao, Play_in, Stop_in);
      when s5  => proximo_estado <= step(s5 , s6 , Duracao, Play_in, Stop_in);
      when s6  => proximo_estado <= step(s6 , s7 , Duracao, Play_in, Stop_in);
      when s7  => proximo_estado <= step(s7 , s8 , Duracao, Play_in, Stop_in);
      when s8  => proximo_estado <= step(s8 , s9 , Duracao, Play_in, Stop_in);
      when s9  => proximo_estado <= step(s9 , s10, Duracao, Play_in, Stop_in);
      when s10 => proximo_estado <= step(s10, s11, Duracao, Play_in, Stop_in);
      when s11 => proximo_estado <= step(s11, s12, Duracao, Play_in, Stop_in);
      when s12 => proximo_estado <= step(s12, s13, Duracao, Play_in, Stop_in);
      when s13 => proximo_estado <= step(s13, s14, Duracao, Play_in, Stop_in);
      when s14 => proximo_estado <= step(s14, s15, Duracao, Play_in, Stop_in);
      when s15 => proximo_estado <= step(s15, s16, Duracao, Play_in, Stop_in);
      when s16 => proximo_estado <= step(s16, s17, Duracao, Play_in, Stop_in);
      when s17 => proximo_estado <= step(s17, s18, Duracao, Play_in, Stop_in);
      when s18 => proximo_estado <= step(s18, s19, Duracao, Play_in, Stop_in);
      when s19 => proximo_estado <= step(s19, s20, Duracao, Play_in, Stop_in);
      when s20 => proximo_estado <= step(s20, s21, Duracao, Play_in, Stop_in);
      when s21 => proximo_estado <= step(s21, s22, Duracao, Play_in, Stop_in);
      when s22 => proximo_estado <= step(s22, s23, Duracao, Play_in, Stop_in);
      when s23 => proximo_estado <= step(s23, s24, Duracao, Play_in, Stop_in);
      when s24 => proximo_estado <= step(s24, s25, Duracao, Play_in, Stop_in);
      when s25 => proximo_estado <= step(s25, s26, Duracao, Play_in, Stop_in);
      when s26 => proximo_estado <= step(s26, s27, Duracao, Play_in, Stop_in);
      when s27 => proximo_estado <= step(s27, s28, Duracao, Play_in, Stop_in);
      when s28 => proximo_estado <= step(s28, s29, Duracao, Play_in, Stop_in);
      when s29 => proximo_estado <= step(s29, s30, Duracao, Play_in, Stop_in);
      when s30 => proximo_estado <= step(s30, s31, Duracao, Play_in, Stop_in);
      when s31 => proximo_estado <= step(s31, s32, Duracao, Play_in, Stop_in);
      when s32 => proximo_estado <= step(s32, s33, Duracao, Play_in, Stop_in);
      when s33 => proximo_estado <= step(s33, s34, Duracao, Play_in, Stop_in);
      when s34 => proximo_estado <= step(s34, s35, Duracao, Play_in, Stop_in);
      when s35 => proximo_estado <= step(s35, s36, Duracao, Play_in, Stop_in);
      when s36 => proximo_estado <= step(s36, s37, Duracao, Play_in, Stop_in);
      when s37 => proximo_estado <= step(s37, s38, Duracao, Play_in, Stop_in);
      when s38 => proximo_estado <= step(s38, s39, Duracao, Play_in, Stop_in);
      when s39 => proximo_estado <= step(s39, s40, Duracao, Play_in, Stop_in);
      when s40 => proximo_estado <= step(s40, s41, Duracao, Play_in, Stop_in);

      -- Último estado: término volta a s0 (pulso de fim gerado no registrador)
      when s41 =>
        if Stop_in = '1' then
          proximo_estado <= s0;
        elsif Duracao = '0' then
          if Play_in = '1' then
            proximo_estado <= s0;
          else
            proximo_estado <= s41;
          end if;
        else
          proximo_estado <= s41;
        end if;

      when others =>
        proximo_estado <= s0;
    end case;
  end process;

  -----------------------------------------------------------------------------
  -- Saídas das notas (Disparo só quando Play_in='1')
  -----------------------------------------------------------------------------
  process(Clk_in)
  begin
    if rising_edge(Clk_in) then
      Disparo <= '0';  -- default

      if Play_in = '1' then
        case estado_atual is
          when s0  => nota(0   , ov_t2);
          when s1  => nota(E4  , ov_t1_2);
          when s2  => nota(Ds4 , ov_t1_2);
          when s3  => nota(E4  , ov_t1_2);
          when s4  => nota(Ds4 , ov_t1_2);
          when s5  => nota(E4  , ov_t1_2);
          when s6  => nota(B3  , ov_t1_2);
          when s7  => nota(D4  , ov_t1_2);
          when s8  => nota(C4  , ov_t1_2);
          when s9  => nota(A3  , ov_t1);
          when s10 => nota(0   , ov_t1_2);
          when s11 => nota(C3  , ov_t1_2);
          when s12 => nota(E3  , ov_t1_2);
          when s13 => nota(A3  , ov_t1_2);
          when s14 => nota(B3  , ov_t1);
          when s15 => nota(0   , ov_t1_2);
          when s16 => nota(E3  , ov_t1_2);
          when s17 => nota(Gs3 , ov_t1_2);
          when s18 => nota(B3  , ov_t1_2);
          when s19 => nota(C4  , ov_t1);
          when s20 => nota(0   , ov_t1_2);
          when s21 => nota(E3  , ov_t1_2);
          when s22 => nota(E4  , ov_t1_2);
          when s23 => nota(Ds4 , ov_t1_2);
          when s24 => nota(E4  , ov_t1_2);
          when s25 => nota(Ds4 , ov_t1_2);
          when s26 => nota(E4  , ov_t1_2);
          when s27 => nota(B3  , ov_t1_2);
          when s28 => nota(D4  , ov_t1_2);
          when s29 => nota(C4  , ov_t1_2);
          when s30 => nota(A3  , ov_t1);
          when s31 => nota(0   , ov_t1_2);
          when s32 => nota(C3  , ov_t1_2);
          when s33 => nota(E3  , ov_t1_2);
          when s34 => nota(A3  , ov_t1_2);
          when s35 => nota(B3  , ov_t1);
          when s36 => nota(0   , ov_t1_2);
          when s37 => nota(E3  , ov_t1_2);
          when s38 => nota(C4  , ov_t1_2);
          when s39 => nota(B3  , ov_t1_2);
          when s40 => nota(A3  , ov_t2);
          when s41 => nota(0   , ov_t1);
          when others => null;
        end case;
      end if;
    end if;
  end process;

  -----------------------------------------------------------------------------
  -- Clk_out (mesma convenção do controlador “sweet”)
  -----------------------------------------------------------------------------
  Clk_out <= Duracao and Clk_in;
end bhv;
