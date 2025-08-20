/**
 * @file    mux_buzzer.v
 * @brief   Multiplexador 4x1 para as saídas de áudio dos buzzers (versão compacta).
 * @version 1.1
 */
module mux_buzzer (
    // --- Entradas ---
    input  wire [1:0] selecao_in,
    input  wire       buzzer_1,
    input  wire       buzzer_2,
    input  wire       buzzer_3,

    // --- Saída ---
    // A saída é 'wire' porque é controlada por uma atribuição 'assign'
    output wire       buzzer_out
);

    // Atribuição contínua com operadores ternários aninhados
    // Lê-se como: "Se selecao_in for 00, use buzzer_1, senão, se for 01, use buzzer_2..."
    assign buzzer_out = (selecao_in == 2'b00) ? buzzer_1 :
                      (selecao_in == 2'b01) ? buzzer_2 :
                      (selecao_in == 2'b10) ? buzzer_3 :
                      1'b0; // Valor padrão (silêncio) para o caso 2'b11

endmodule