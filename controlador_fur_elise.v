module controlador_fur_elise (
    // Saídas
    output wire          Clk_out, 
    output reg          Disparo,
    output reg [27:0]   Temp_out, 
    output reg [27:0]   Freq_out,
    output wire         song_end,

    // Entradas
    input wire          Clk_in, 
    input wire          Duracao,
    input wire          Stop_in, 
    input wire          Play_in
);

    //-----------------------------------------------------------------------------
    // Constantes (50 MHz)
    //-----------------------------------------------------------------------------
    localparam clk_FPGA = 50_000_000;

    // Frequências (valores de overflow para o divisor de clock)
    localparam [27:0] C4  = 47802;
    localparam [27:0] D4  = 42553;
    localparam [27:0] E4  = 37937;
    localparam [27:0] F4  = 35791;
    localparam [27:0] G4  = 31290;
    localparam [27:0] Ds4 = 40193;
    localparam [27:0] B3  = 50608;
    localparam [27:0] A3  = 56819;
    localparam [27:0] C3  = 95603;
    localparam [27:0] E3  = 75873;
    localparam [27:0] Gs3 = 60169;
    localparam [27:0] SILENCE = 0; // Pausa

    // Tempos (valores de overflow para o temporizador, BPM=136)
    localparam BPM     = 136;
    localparam BPS     = BPM / 60;
    localparam [27:0] ov_t4   = (4 * clk_FPGA) / BPS;
    localparam [27:0] ov_t2   = (2 * clk_FPGA) / BPS;
    localparam [27:0] ov_t1   = (1 * clk_FPGA) / BPS;
    localparam [27:0] ov_t1_2 = (clk_FPGA / 2) / BPS;
    localparam [27:0] ov_t1_4 = (clk_FPGA / 4) / BPS;

    //-----------------------------------------------------------------------------
    // FSM - Definição de Estados
    //-----------------------------------------------------------------------------
    // 42 estados (s0 a s41) -> precisamos de ceil(log2(42)) = 6 bits
    localparam [5:0] s0=0, s1=1, s2=2, s3=3, s4=4, s5=5, s6=6, s7=7, s8=8, s9=9, 
                     s10=10, s11=11, s12=12, s13=13, s14=14, s15=15, s16=16, s17=17, s18=18, s19=19,
                     s20=20, s21=21, s22=22, s23=23, s24=24, s25=25, s26=26, s27=27, s28=28, s29=29,
                     s30=30, s31=31, s32=32, s33=33, s34=34, s35=35, s36=36, s37=37, s38=38, s39=39,
                     s40=40, s41=41;

    reg [5:0] estado_atual, proximo_estado;
    reg       song_end_r;

    //-----------------------------------------------------------------------------
    // Registrador de estado síncrono e pulso de fim de música
    //-----------------------------------------------------------------------------
    always @(posedge Clk_in) begin
        if (Stop_in) begin
            estado_atual <= s0;
        end else begin
            estado_atual <= proximo_estado;
        end

        // Gera um pulso de 1 ciclo quando a música termina
        song_end_r <= (estado_atual == s41) && !Duracao && Play_in;
    end
    
    assign song_end = song_end_r;

    //-----------------------------------------------------------------------------
    // Lógica combinacional para o próximo estado
    //-----------------------------------------------------------------------------
    always @(*) begin
        case (estado_atual)
            s0:  proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s1  : s0;
            s1:  proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s2  : s1;
            s2:  proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s3  : s2;
            s3:  proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s4  : s3;
            s4:  proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s5  : s4;
            s5:  proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s6  : s5;
            s6:  proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s7  : s6;
            s7:  proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s8  : s7;
            s8:  proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s9  : s8;
            s9:  proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s10 : s9;
            s10: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s11 : s10;
            s11: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s12 : s11;
            s12: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s13 : s12;
            s13: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s14 : s13;
            s14: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s15 : s14;
            s15: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s16 : s15;
            s16: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s17 : s16;
            s17: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s18 : s17;
            s18: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s19 : s18;
            s19: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s20 : s19;
            s20: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s21 : s20;
            s21: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s22 : s21;
            s22: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s23 : s22;
            s23: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s24 : s23;
            s24: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s25 : s24;
            s25: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s26 : s25;
            s26: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s27 : s26;
            s27: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s28 : s27;
            s28: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s29 : s28;
            s29: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s30 : s29;
            s30: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s31 : s30;
            s31: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s32 : s31;
            s32: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s33 : s32;
            s33: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s34 : s33;
            s34: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s35 : s34;
            s35: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s36 : s35;
            s36: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s37 : s36;
            s37: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s38 : s37;
            s38: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s39 : s38;
            s39: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s40 : s39;
            s40: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s41 : s40;
            s41: proximo_estado = (Stop_in) ? s0 : (!Duracao && Play_in) ? s0  : s41;
            default: proximo_estado = s0;
        endcase
    end

    //-----------------------------------------------------------------------------
    // Lógica síncrona para as saídas das notas
    //-----------------------------------------------------------------------------
    always @(posedge Clk_in) begin
        // Valor padrão para o disparo (gera um pulso de 1 ciclo)
        Disparo <= 1'b0;

        if (Play_in) begin
            case (estado_atual)
                s0:  begin Temp_out <= ov_t2;   Freq_out <= SILENCE; Disparo <= 1'b1; end
                s1:  begin Temp_out <= ov_t1_2; Freq_out <= E4;      Disparo <= 1'b1; end
                s2:  begin Temp_out <= ov_t1_2; Freq_out <= Ds4;     Disparo <= 1'b1; end
                s3:  begin Temp_out <= ov_t1_2; Freq_out <= E4;      Disparo <= 1'b1; end
                s4:  begin Temp_out <= ov_t1_2; Freq_out <= Ds4;     Disparo <= 1'b1; end
                s5:  begin Temp_out <= ov_t1_2; Freq_out <= E4;      Disparo <= 1'b1; end
                s6:  begin Temp_out <= ov_t1_2; Freq_out <= B3;      Disparo <= 1'b1; end
                s7:  begin Temp_out <= ov_t1_2; Freq_out <= D4;      Disparo <= 1'b1; end
                s8:  begin Temp_out <= ov_t1_2; Freq_out <= C4;      Disparo <= 1'b1; end
                s9:  begin Temp_out <= ov_t1;   Freq_out <= A3;      Disparo <= 1'b1; end
                s10: begin Temp_out <= ov_t1_2; Freq_out <= SILENCE; Disparo <= 1'b1; end
                s11: begin Temp_out <= ov_t1_2; Freq_out <= C3;      Disparo <= 1'b1; end
                s12: begin Temp_out <= ov_t1_2; Freq_out <= E3;      Disparo <= 1'b1; end
                s13: begin Temp_out <= ov_t1_2; Freq_out <= A3;      Disparo <= 1'b1; end
                s14: begin Temp_out <= ov_t1;   Freq_out <= B3;      Disparo <= 1'b1; end
                s15: begin Temp_out <= ov_t1_2; Freq_out <= SILENCE; Disparo <= 1'b1; end
                s16: begin Temp_out <= ov_t1_2; Freq_out <= E3;      Disparo <= 1'b1; end
                s17: begin Temp_out <= ov_t1_2; Freq_out <= Gs3;     Disparo <= 1'b1; end
                s18: begin Temp_out <= ov_t1_2; Freq_out <= B3;      Disparo <= 1'b1; end
                s19: begin Temp_out <= ov_t1;   Freq_out <= C4;      Disparo <= 1'b1; end
                s20: begin Temp_out <= ov_t1_2; Freq_out <= SILENCE; Disparo <= 1'b1; end
                s21: begin Temp_out <= ov_t1_2; Freq_out <= E3;      Disparo <= 1'b1; end
                s22: begin Temp_out <= ov_t1_2; Freq_out <= E4;      Disparo <= 1'b1; end
                s23: begin Temp_out <= ov_t1_2; Freq_out <= Ds4;     Disparo <= 1'b1; end
                s24: begin Temp_out <= ov_t1_2; Freq_out <= E4;      Disparo <= 1'b1; end
                s25: begin Temp_out <= ov_t1_2; Freq_out <= Ds4;     Disparo <= 1'b1; end
                s26: begin Temp_out <= ov_t1_2; Freq_out <= E4;      Disparo <= 1'b1; end
                s27: begin Temp_out <= ov_t1_2; Freq_out <= B3;      Disparo <= 1'b1; end
                s28: begin Temp_out <= ov_t1_2; Freq_out <= D4;      Disparo <= 1'b1; end
                s29: begin Temp_out <= ov_t1_2; Freq_out <= C4;      Disparo <= 1'b1; end
                s30: begin Temp_out <= ov_t1;   Freq_out <= A3;      Disparo <= 1'b1; end
                s31: begin Temp_out <= ov_t1_2; Freq_out <= SILENCE; Disparo <= 1'b1; end
                s32: begin Temp_out <= ov_t1_2; Freq_out <= C3;      Disparo <= 1'b1; end
                s33: begin Temp_out <= ov_t1_2; Freq_out <= E3;      Disparo <= 1'b1; end
                s34: begin Temp_out <= ov_t1_2; Freq_out <= A3;      Disparo <= 1'b1; end
                s35: begin Temp_out <= ov_t1;   Freq_out <= B3;      Disparo <= 1'b1; end
                s36: begin Temp_out <= ov_t1_2; Freq_out <= SILENCE; Disparo <= 1'b1; end
                s37: begin Temp_out <= ov_t1_2; Freq_out <= E3;      Disparo <= 1'b1; end
                s38: begin Temp_out <= ov_t1_2; Freq_out <= C4;      Disparo <= 1'b1; end
                s39: begin Temp_out <= ov_t1_2; Freq_out <= B3;      Disparo <= 1'b1; end
                s40: begin Temp_out <= ov_t2;   Freq_out <= A3;      Disparo <= 1'b1; end
                s41: begin Temp_out <= ov_t1;   Freq_out <= SILENCE; Disparo <= 1'b1; end
                default: ; // Não faz nada para outros estados
            endcase
        end
    end
    
    //-----------------------------------------------------------------------------
    // Gated Clock (geralmente não recomendado, mas mantido da lógica original)
    //-----------------------------------------------------------------------------
    assign Clk_out = Duracao & Clk_in;

endmodule