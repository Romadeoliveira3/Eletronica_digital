/**
 * @file    contador_creditos.v
 * @brief   Contador BCD de 4 dígitos (0000-9999) para créditos de Jukebox.
 * @details Incrementa e decrementa com base em pulsos de entrada.
 * Gera um pulso na saída quando a contagem vai de 1 para 0.
 */
module contador_creditos (
    input  wire        clk,                  // Clock do sistema
    input  wire        rst_n,                // Reset assíncrono, ativo em baixo
    input  wire        incremento_in,        // Sinal para incrementar um crédito
    input  wire        decremento_in,        // Sinal para decrementar um crédito
    output reg  [15:0] contagem_out,         // Saída BCD de 4 dígitos: {milhar, centena, dezena, unidade}
    output reg         credito_zerado_pulso  // Pulso de 1 ciclo quando a contagem vai de 1->0
);

    //-----------------------------------------------------------------------------
    // Detecção de Borda para Entradas
    // Converte os sinais de botão em pulsos de 1 ciclo de clock para evitar
    // múltiplos incrementos/decrementos se o botão for segurado.
    //-----------------------------------------------------------------------------
    reg  inc_d1, inc_d2;
    reg  dec_d1, dec_d2;
    wire inc_pulso;
    wire dec_pulso;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            inc_d1 <= 1'b0;
            inc_d2 <= 1'b0;
            dec_d1 <= 1'b0;
            dec_d2 <= 1'b0;
        end else begin
            inc_d1 <= incremento_in;
            inc_d2 <= inc_d1;
            dec_d1 <= decremento_in;
            dec_d2 <= dec_d1;
        end
    end

    assign inc_pulso = inc_d1 & ~inc_d2; // Gera pulso na borda de subida do incremento
    assign dec_pulso = dec_d1 & ~dec_d2; // Gera pulso na borda de subida do decremento


    //-----------------------------------------------------------------------------
    // Lógica Principal do Contador BCD
    //-----------------------------------------------------------------------------
    // Define apelidos para cada dígito BCD para facilitar a leitura do código
    wire [3:0] milhar  = contagem_out[15:12];
    wire [3:0] centena = contagem_out[11:8];
    wire [3:0] dezena  = contagem_out[7:4];
    wire [3:0] unidade = contagem_out[3:0];
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            // Reseta contagem e pulso
            contagem_out         <= 16'h0000;
            credito_zerado_pulso <= 1'b0;
        end else begin
            // Valor padrão do pulso é zero. Ele só será 1 no ciclo exato do evento.
            credito_zerado_pulso <= 1'b0;

            // Lógica de INCREMENTO
            if (inc_pulso && (contagem_out < 16'h9999)) begin
                if (unidade < 9) begin
                    contagem_out[3:0] <= unidade + 1;
                end else begin
                    contagem_out[3:0] <= 0; // Zera unidade e passa o "carry" para a dezena
                    if (dezena < 9) begin
                        contagem_out[7:4] <= dezena + 1;
                    end else begin
                        contagem_out[7:4] <= 0; // Zera dezena e passa o "carry" para a centena
                        if (centena < 9) begin
                            contagem_out[11:8] <= centena + 1;
                        end else begin
                            contagem_out[11:8] <= 0; // Zera centena e passa o "carry" para o milhar
                            if (milhar < 9) begin
                                contagem_out[15:12] <= milhar + 1;
                            end
                        end
                    end
                end
            end

            // Lógica de DECREMENTO
            else if (dec_pulso && (contagem_out > 16'h0000)) begin
                // Verifica se a contagem atual é 1 para gerar o pulso ANTES de zerar
                if (contagem_out == 16'h0001) begin
                    credito_zerado_pulso <= 1'b1;
                end
                
                if (unidade > 0) begin
                    contagem_out[3:0] <= unidade - 1;
                end else begin
                    contagem_out[3:0] <= 9; // Vai para 9 e pega "borrow" da dezena
                    if (dezena > 0) begin
                        contagem_out[7:4] <= dezena - 1;
                    end else begin
                        contagem_out[7:4] <= 9; // Vai para 9 e pega "borrow" da centena
                        if (centena > 0) begin
                            contagem_out[11:8] <= centena - 1;
                        end else begin
                            contagem_out[11:8] <= 9; // Vai para 9 e pega "borrow" do milhar
                            if (milhar > 0) begin
                                contagem_out[15:12] <= milhar - 1;
                            end
                        end
                    end
                end
            end
        end
    end

endmodule