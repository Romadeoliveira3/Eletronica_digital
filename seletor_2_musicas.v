/**
 * @file    seletor_2_musicas.v
 * @brief   Contador fixo de 1 bit (0/1) para selecionar entre duas músicas.
 * @details Alterna (toggle) a saída a cada pulso recebido em 'inc_pulso_in'.
 */
module seletor_2_musicas (
    input  wire clk,            // Clock do sistema
    input  wire rst_n,          // Reset assíncrono, ativo em baixo
    input  wire inc_pulso_in,   // Pulso de 1 ciclo para alternar a seleção
    output reg  selecao_out     // Saída de 1 bit com o índice da música (0 ou 1)
);

    // Lógica síncrona do contador com reset assíncrono
    always @(posedge clk or negedge rst_n) begin
        // Condição de Reset: Se rst_n for para '0', a seleção volta para a primeira música (0)
        if (!rst_n) begin
            selecao_out <= 1'b0;
        end
        // Lógica síncrona: Executa na borda de subida do clock
        else begin
            // Apenas age se receber um pulso de incremento
            if (inc_pulso_in) begin
                // Inverte o estado atual. Se for 0, vira 1. Se for 1, vira 0.
                selecao_out <= ~selecao_out;
            end
            // Se 'inc_pulso_in' for 0, a seleção mantém seu valor (não há 'else')
        end
    end

endmodule