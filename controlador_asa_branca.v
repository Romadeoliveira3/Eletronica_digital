/*
 * Module: controlador_asa_branca
 * Description: Controla a execução da melodia "Asa Branca" como uma
 * máquina de estados finitos (FSM).
 */
module controlador_asa_branca (
    // Saídas
    output         Clk_out,
    output reg     Disparo,
    output reg [27:0] Temp_out,
    output reg [27:0] Freq_out,

    // Entradas
    input          Clk_in,
    input          Duracao,
    input          Stop_in,
    input          Play_in
);

    //================================================================
    // Parâmetros e Constantes
    //================================================================

    // Frequência do clock da FPGA
    parameter CLK_FPGA = 50_000_000;

    // Valores de overflow para as notas (calculado como CLK_FPGA / frequência_da_nota)
    parameter G5 = 63776;  // ~784 Hz
    parameter A5 = 56818;  // 880 Hz
    parameter B5 = 50607;  // ~988 Hz
    parameter C6 = 47710;  // ~1047 Hz
    parameter D6 = 42555;  // ~1175 Hz

    // Parâmetros de tempo (BPM = 120)
    parameter BPM     = 120;
    parameter BPS     = BPM / 60; // = 2
    parameter OV_T1   = CLK_FPGA / BPS;            // 1 batida (25,000,000)
    parameter OV_T1_2 = (CLK_FPGA / 2) / BPS;      // 1/2 batida (12,500,000)
    parameter OV_T2   = (2 * CLK_FPGA) / BPS;      // 2 batidas (50,000,000)

    // Definição dos estados da FSM (39 estados -> 6 bits)
    localparam [5:0]
        s0  = 6'd0,  s1  = 6'd1,  s2  = 6'd2,  s3  = 6'd3,  s4  = 6'd4,
        s5  = 6'd5,  s6  = 6'd6,  s7  = 6'd7,  s8  = 6'd8,  s9  = 6'd9,
        s10 = 6'd10, s11 = 6'd11, s12 = 6'd12, s13 = 6'd13, s14 = 6'd14,
        s15 = 6'd15, s16 = 6'd16, s17 = 6'd17, s18 = 6'd18, s19 = 6'd19,
        s20 = 6'd20, s21 = 6'd21, s22 = 6'd22, s23 = 6'd23, s24 = 6'd24,
        s25 = 6'd25, s26 = 6'd26, s27 = 6'd27, s28 = 6'd28, s29 = 6'd29,
        s30 = 6'd30, s31 = 6'd31, s32 = 6'd32, s33 = 6'd33, s34 = 6'd34,
        s35 = 6'd35, s36 = 6'd36, s37 = 6'd37, s38 = 6'd38;

    //================================================================
    // Sinais Internos (Registradores)
    //================================================================
    reg [5:0] estado_atual, proximo_estado;
    reg enable;
    reg armed;

    //================================================================
    // Lógica Sequencial (Registradores de Estado e Sinais de Controle)
    //================================================================
    always @(posedge Clk_in) begin
        estado_atual <= proximo_estado;

        if (Stop_in) begin
            enable <= 1'b0;
            armed  <= 1'b1;
        end else if (estado_atual == s0 && !Duracao && Play_in && !enable && armed) begin
            // Inicia a música
            enable <= 1'b1;
            armed  <= 1'b0;
        end else if (estado_atual == s38 && !Duracao) begin
            // Termina a música
            enable <= 1'b0;
        end

        // Rearma o sistema se o botão de play for solto
        if (!Play_in) begin
            armed <= 1'b1;
        end
    end

    //================================================================
    // Lógica Combinacional (Cálculo do Próximo Estado)
    //================================================================
    always @(*) begin
        // Valor padrão: permanece no estado atual
        proximo_estado = estado_atual;

        if (Stop_in) begin
            proximo_estado = s0; // Reset para o estado inicial
        end else begin
            case (estado_atual)
                s0: begin
                    if (!Duracao && Play_in && !enable && armed) begin
                        proximo_estado = s1;
                    end
                end
                // Lógica consolidada para todas as notas sequenciais da música
                s1, s2, s3, s4, s5, s6, s7, s8, s9, s10,
                s11, s12, s13, s14, s15, s16, s17, s18, s19, s20,
                s21, s22, s23, s24, s25, s26, s27, s28, s29, s30,
                s31, s32, s33, s34, s35, s36, s37: begin
                    if (!Duracao && Play_in) begin
                        proximo_estado = estado_atual + 1; // Avança para a próxima nota
                    end
                end
                s38: begin
                    // Após a última nota, a música termina e volta ao início
                    if (!Duracao) begin
                        proximo_estado = s0;
                    end
                end
                default: proximo_estado = s0;
            endcase
        end
    end

    //================================================================
    // Lógica Combinacional (Lógica de Saída - Moore FSM)
    //================================================================
    always @(*) begin
        // Valores padrão para as saídas (silêncio)
        Disparo  = 1'b0;
        Temp_out = OV_T1_2; // Duração padrão para o estado de silêncio
        Freq_out = 28'd0;

        case (estado_atual)
            //             Nota  Duração    Disparo
            s1:  begin Freq_out = G5; Temp_out = OV_T1_2; Disparo = 1'b1; end
            s2:  begin Freq_out = A5; Temp_out = OV_T1_2; Disparo = 1'b1; end
            s3:  begin Freq_out = B5; Temp_out = OV_T1;   Disparo = 1'b1; end
            s4:  begin Freq_out = D6; Temp_out = OV_T1;   Disparo = 1'b1; end
            s5:  begin Freq_out = D6; Temp_out = OV_T1;   Disparo = 1'b1; end
            s6:  begin Freq_out = B5; Temp_out = OV_T1;   Disparo = 1'b1; end
            s7:  begin Freq_out = C6; Temp_out = OV_T1;   Disparo = 1'b1; end
            s8:  begin Freq_out = C6; Temp_out = OV_T2;   Disparo = 1'b1; end
            s9:  begin Freq_out = G5; Temp_out = OV_T1_2; Disparo = 1'b1; end
            s10: begin Freq_out = A5; Temp_out = OV_T1_2; Disparo = 1'b1; end
            s11: begin Freq_out = B5; Temp_out = OV_T1;   Disparo = 1'b1; end
            s12: begin Freq_out = D6; Temp_out = OV_T1;   Disparo = 1'b1; end
            s13: begin Freq_out = D6; Temp_out = OV_T1;   Disparo = 1'b1; end
            s14: begin Freq_out = C6; Temp_out = OV_T1;   Disparo = 1'b1; end
            s15: begin Freq_out = B5; Temp_out = OV_T2;   Disparo = 1'b1; end
            s16: begin Freq_out = 0;  Temp_out = OV_T1_2; Disparo = 1'b1; end // Pausa
            s17: begin Freq_out = G5; Temp_out = OV_T1_2; Disparo = 1'b1; end
            s18: begin Freq_out = G5; Temp_out = OV_T1_2; Disparo = 1'b1; end
            s19: begin Freq_out = A5; Temp_out = OV_T1_2; Disparo = 1'b1; end
            s20: begin Freq_out = B5; Temp_out = OV_T1;   Disparo = 1'b1; end
            s21: begin Freq_out = D6; Temp_out = OV_T1;   Disparo = 1'b1; end
            s22: begin Freq_out = 0;  Temp_out = OV_T1_2; Disparo = 1'b1; end // Pausa
            s23: begin Freq_out = D6; Temp_out = OV_T1_2; Disparo = 1'b1; end
            s24: begin Freq_out = C6; Temp_out = OV_T1_2; Disparo = 1'b1; end
            s25: begin Freq_out = B5; Temp_out = OV_T1_2; Disparo = 1'b1; end
            s26: begin Freq_out = G5; Temp_out = OV_T1;   Disparo = 1'b1; end
            s27: begin Freq_out = C6; Temp_out = OV_T1;   Disparo = 1'b1; end
            s28: begin Freq_out = 0;  Temp_out = OV_T1_2; Disparo = 1'b1; end // Pausa
            s29: begin Freq_out = C6; Temp_out = OV_T1_2; Disparo = 1'b1; end
            s30: begin Freq_out = B5; Temp_out = OV_T1_2; Disparo = 1'b1; end
            s31: begin Freq_out = A5; Temp_out = OV_T1_2; Disparo = 1'b1; end
            s32: begin Freq_out = A5; Temp_out = OV_T1;   Disparo = 1'b1; end
            s33: begin Freq_out = B5; Temp_out = OV_T1;   Disparo = 1'b1; end
            s34: begin Freq_out = 0;  Temp_out = OV_T1_2; Disparo = 1'b1; end // Pausa
            s35: begin Freq_out = B5; Temp_out = OV_T1_2; Disparo = 1'b1; end
            s36: begin Freq_out = A5; Temp_out = OV_T1_2; Disparo = 1'b1; end
            s37: begin Freq_out = G5; Temp_out = OV_T1_2; Disparo = 1'b1; end
            s38: begin Freq_out = G5; Temp_out = OV_T2;   Disparo = 1'b1; end
        endcase
    end

    //================================================================
    // Atribuições Concorrentes
    //================================================================
    assign Clk_out = Duracao & Clk_in;

    // Inicialização para simulação (não será sintetizado como hardware)
    initial begin
        estado_atual = s0;
        enable = 1'b0;
        armed = 1'b1;
    end

endmodule