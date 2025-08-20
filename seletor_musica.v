/**
 * @file    seletor_musica.v
 * @brief   Contador incremental parametrizável para seleção de músicas.
 * @details Conta de 0 até (NUM_MUSICAS - 1) e retorna a 0.
 * Avança a contagem a cada pulso recebido em 'inc_pulso_in'.
 * @version 1.1 - Corrigida declaração de porta para compatibilidade com ferramentas.
 */
module seletor_musica #(
    // Parâmetro principal para definir o número de músicas.
    parameter NUM_MUSICAS     = 10,
    // Parâmetro secundário que calcula a largura do barramento de saída.
    // Isso torna a declaração da porta compatível com todas as ferramentas.
    parameter LARGURA_SAIDA = $clog2(NUM_MUSICAS)
) (
    input  wire                   clk,            // Clock do sistema
    input  wire                   rst_n,          // Reset assíncrono, ativo em baixo
    input  wire                   inc_pulso_in,   // Pulso de 1 ciclo para incrementar a seleção
    output reg [LARGURA_SAIDA-1:0] selecao_out    // Saída com o índice da música selecionada
);

    // Lógica síncrona do contador com reset assíncrono
    always @(posedge clk or negedge rst_n) begin
        // Condição de Reset: Se rst_n for para '0', a seleção volta para a primeira música (0)
        if (!rst_n) begin
            selecao_out <= 0;
        end
        // Lógica síncrona: Executa na borda de subida do clock
        else begin
            // Apenas age se receber um pulso de incremento
            if (inc_pulso_in) begin
                // Se a contagem atual está na última música, retorna para a primeira
                if (selecao_out == NUM_MUSICAS - 1) begin
                    selecao_out <= 0;
                end
                // Senão, simplesmente incrementa para a próxima música
                else begin
                    selecao_out <= selecao_out + 1;
                end
            end
        end
    end

endmodule