/**
 * @file    seletor_3_musicas.v
 * @brief   Contador fixo de 2 bits (0,1,2) para selecionar entre três músicas.
 * @details Conta de 0 a 2 e retorna a 0 a cada pulso em 'inc_pulso_in'.
 */
module seletor_3_musicas (
    input  wire        clk,            // Clock do sistema
    input  wire        rst_n,          // Reset assíncrono, ativo em baixo
    input  wire        inc_pulso_in,   // Pulso de 1 ciclo para incrementar a seleção
    output reg  [1:0]  selecao_out     // Saída de 2 bits com o índice da música (0, 1, ou 2)
);

    // Lógica síncrona do contador com reset assíncrono
    always @(posedge clk or negedge rst_n) begin
        // Condição de Reset: Se rst_n for para '0', a seleção volta para a primeira música (0)
        if (!rst_n) begin
            selecao_out <= 2'b00; // Reseta para 0, agora com 2 bits
        end
        // Lógica síncrona: Executa na borda de subida do clock
        else begin
            // Apenas age se receber um pulso de incremento
            if (inc_pulso_in) begin
                // Se a contagem atual está na última música (valor 2), retorna para a primeira (0)
                if (selecao_out == 2'd2) begin
                    selecao_out <= 2'd0;
                end
                // Senão (se for 0 ou 1), simplesmente incrementa para a próxima música
                else begin
                    selecao_out <= selecao_out + 1;
                end
            end
            // Se 'inc_pulso_in' for 0, a seleção mantém seu valor (não há 'else')
        end
    end

endmodule