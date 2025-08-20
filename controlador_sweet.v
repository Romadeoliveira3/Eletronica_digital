/*
 * Module: controlador_sweet
 * Description: Controla a execução da melodia "Sweet Child O' Mine"
 * como uma máquina de estados finitos (FSM).
 */
module controlador_sweet (
    // Saídas
    output         Clk_out,
    output reg     Disparo,
    output reg     [27:0] Temp_out,
    output reg     [27:0] Freq_out,
    output reg     song_end,

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
    parameter D5  = 85179;  // ~587.33 Hz
    parameter D6  = 42589;  // ~1174.66 Hz
    parameter A5  = 56818;  // 880.00 Hz
    parameter G5  = 63776;  // ~783.99 Hz
    parameter G6  = 31888;  // ~1567.98 Hz
    parameter FS6 = 33784;  // ~1479.98 Hz (F#6)
    parameter E5  = 75758;  // ~659.25 Hz

    // Parâmetros de tempo (BPM = 90)
    parameter BPM     = 90;
    // BPS (Batidas Por Segundo) - A divisão de inteiros em Verilog funciona aqui
    parameter BPS     = BPM / 60;
    // Duração de 1/4 de batida
    parameter OV_T1_4 = (CLK_FPGA / 4) / BPS;

    // Definição dos estados da FSM (31 estados -> 5 bits)
    localparam [4:0]
        s0  = 5'd0,  s1  = 5'd1,  s2  = 5'd2,  s3  = 5'd3,
        s4  = 5'd4,  s5  = 5'd5,  s6  = 5'd6,  s7  = 5'd7,
        s8  = 5'd8,  s9  = 5'd9,  s10 = 5'd10, s11 = 5'd11,
        s12 = 5'd12, s13 = 5'd13, s14 = 5'd14, s15 = 5'd15,
        s16 = 5'd16, s17 = 5'd17, s18 = 5'd18, s19 = 5'd19,
        s20 = 5'd20, s21 = 5'd21, s22 = 5'd22, s23 = 5'd23,
        s24 = 5'd24, s25 = 5'd25, s26 = 5'd26, s27 = 5'd27,
        s28 = 5'd28, s29 = 5'd29, s30 = 5'd30;

    //================================================================
    // Sinais Internos (Registradores)
    //================================================================
    reg [4:0] estado_atual, proximo_estado;
    reg enable;
    reg armed;

    //================================================================
    // Lógica Sequencial (Registradores de Estado e Sinais de Controle)
    //================================================================
    // Este bloco atualiza o estado e os sinais de controle na borda de subida do clock.
    always @(posedge Clk_in) begin
        estado_atual <= proximo_estado;

        // Valor padrão para song_end para evitar latch
        song_end <= 1'b0;

        if (Stop_in) begin
            enable <= 1'b0;
            armed  <= 1'b1;
        end else if (estado_atual == s0 && !Duracao && Play_in && armed) begin
            enable <= 1'b1;
            armed  <= 1'b0;
        end else if (estado_atual == s30 && !Duracao) begin
            enable   <= 1'b0;
            song_end <= 1'b1; // Sinaliza o fim da música por um ciclo de clock
        end

        // Rearma o sistema se o botão de play for solto
        if (!Play_in) begin
            armed <= 1'b1;
        end
    end

    //================================================================
    // Lógica Combinacional (Cálculo do Próximo Estado)
    //================================================================
    // Este bloco calcula qual será o próximo estado com base no estado atual e nas entradas.
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
                // Lógica consolidada para todas as notas da música
                s1, s2, s3, s4, s5, s6, s7, s8, s9, s10,
                s11, s12, s13, s14, s15, s16, s17, s18, s19, s20,
                s21, s22, s23, s24, s25, s26, s27, s28, s29: begin
                    if (!Duracao && Play_in) begin
                        proximo_estado = estado_atual + 1; // Avança para a próxima nota
                    end
                end
                s30: begin
                    // Após a última nota, volta ao início
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
    // Este bloco define as saídas (notas) com base apenas no estado atual.
    always @(*) begin
        // Valores padrão para as saídas
        Temp_out = OV_T1_4;
        Freq_out = 28'd0;    // Silêncio
        Disparo  = 1'b0;

        case (estado_atual)
            //             Nota  Disparo
            s1:  begin Freq_out = D5;  Disparo = 1'b1; end // 1
            s2:  begin Freq_out = D6;  Disparo = 1'b1; end // 2
            s3:  begin Freq_out = A5;  Disparo = 1'b1; end // 3
            s4:  begin Freq_out = G5;  Disparo = 1'b1; end // 4
            s5:  begin Freq_out = G6;  Disparo = 1'b1; end // 5
            s6:  begin Freq_out = A5;  Disparo = 1'b1; end // 6
            s7:  begin Freq_out = FS6; Disparo = 1'b1; end // 7
            s8:  begin Freq_out = A5;  Disparo = 1'b1; end // 8
            s9:  begin Freq_out = D5;  Disparo = 1'b1; end // 9
            s10: begin Freq_out = D6;  Disparo = 1'b1; end // 10
            s11: begin Freq_out = A5;  Disparo = 1'b1; end // 11
            s12: begin Freq_out = G5;  Disparo = 1'b1; end // 12
            s13: begin Freq_out = G6;  Disparo = 1'b1; end // 13
            s14: begin Freq_out = A5;  Disparo = 1'b1; end // 14
            s15: begin Freq_out = FS6; Disparo = 1'b1; end // 15
            s16: begin Freq_out = A5;  Disparo = 1'b1; end // 16
            s17: begin Freq_out = E5;  Disparo = 1'b1; end // 17
            s18: begin Freq_out = D6;  Disparo = 1'b1; end // 18
            s19: begin Freq_out = A5;  Disparo = 1'b1; end // 19
            s20: begin Freq_out = G5;  Disparo = 1'b1; end // 20
            s21: begin Freq_out = G6;  Disparo = 1'b1; end // 21
            s22: begin Freq_out = A5;  Disparo = 1'b1; end // 22
            s23: begin Freq_out = FS6; Disparo = 1'b1; end // 23
            s24: begin Freq_out = A5;  Disparo = 1'b1; end // 24
            s25: begin Freq_out = E5;  Disparo = 1'b1; end // 25
            s26: begin Freq_out = D6;  Disparo = 1'b1; end // 26
            s27: begin Freq_out = A5;  Disparo = 1'b1; end // 27
            s28: begin Freq_out = G5;  Disparo = 1'b1; end // 28
            s29: begin Freq_out = G6;  Disparo = 1'b1; end // 29
            s30: begin Freq_out = A5;  Disparo = 1'b1; end // 30
            // No estado s0 e default, as saídas permanecem com os valores padrão (silêncio).
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
        song_end = 1'b0;
    end

endmodule