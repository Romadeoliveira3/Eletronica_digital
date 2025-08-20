/**
 * @file    contador_creditos_simples.v
 * @brief   Contador BCD de 4 dígitos (0000-9999) para créditos de Jukebox.
 * @details Incrementa e decrementa com base em pulsos de entrada.
 * @version 3.0 - Versão simplificada sem geração de pulso na saída.
 */
module contador_creditos_simples (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        incremento_in,
    input  wire        decremento_in,
    output reg  [15:0] contagem_out
);

    //-----------------------------------------------------------------------------
    // Detecção de Borda para Entradas
    //-----------------------------------------------------------------------------
    reg  inc_d1, inc_d2;
    reg  dec_d1, dec_d2;
    wire inc_pulso;
    wire dec_pulso;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            inc_d1 <= 1'b0; inc_d2 <= 1'b0;
            dec_d1 <= 1'b0; dec_d2 <= 1'b0;
        end else begin
            inc_d1 <= incremento_in; inc_d2 <= inc_d1;
            dec_d1 <= decremento_in; dec_d2 <= dec_d1;
        end
    end

    assign inc_pulso = inc_d1 & ~inc_d2;
    assign dec_pulso = dec_d1 & ~dec_d2;

    //-----------------------------------------------------------------------------
    // Lógica Principal do Contador BCD
    //-----------------------------------------------------------------------------
    // Apelidos (aliases) para facilitar a leitura do código
    wire [3:0] milhar  = contagem_out[15:12];
    wire [3:0] centena = contagem_out[11:8];
    wire [3:0] dezena  = contagem_out[7:4];
    wire [3:0] unidade = contagem_out[3:0];
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            // Reseta a contagem para 0
            contagem_out <= 16'h0000;
        end else begin
            // Lógica de INCREMENTO
            if (inc_pulso && (contagem_out < 16'h9999)) begin
                if (unidade < 9) begin
                    contagem_out[3:0] <= unidade + 1;
                end else begin
                    contagem_out[3:0] <= 0; // Zera e "vai um"
                    if (dezena < 9) begin
                        contagem_out[7:4] <= dezena + 1;
                    end else begin
                        contagem_out[7:4] <= 0; // Zera e "vai um"
                        if (centena < 9) begin
                            contagem_out[11:8] <= centena + 1;
                        end else begin
                            contagem_out[11:8] <= 0; // Zera e "vai um"
                            if (milhar < 9) begin
                                contagem_out[15:12] <= milhar + 1;
                            end
                        end
                    end
                end
            end

            // Lógica de DECREMENTO
            else if (dec_pulso && (contagem_out > 16'h0000)) begin
                if (unidade > 0) begin
                    contagem_out[3:0] <= unidade - 1;
                end else begin
                    contagem_out[3:0] <= 9; // Zera e "empresta um"
                    if (dezena > 0) begin
                        contagem_out[7:4] <= dezena - 1;
                    end else begin
                        contagem_out[7:4] <= 9; // Zera e "empresta um"
                        if (centena > 0) begin
                            contagem_out[11:8] <= centena - 1;
                        end else begin
                            contagem_out[11:8] <= 9; // Zera e "empresta um"
                            if (milhar > 0) begin
                                contagem_out[15:12] <= milhar - 1;
                            end
                        end
                    end
                end
            end
            // Se nenhum pulso for recebido, a contagem_out mantém seu valor
        end
    end

endmodule