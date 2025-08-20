/**
 * @file    seletor_menu_one_way.v
 * @brief   Seletor de menu de via única (one-way).
 * @details Avança de 0 para 1 com um pulso, mas só retorna para 0 com um reset.
 * Ideal para fluxo de menus que não retornam.
 */
module seletor_menu (
    input  wire clk,
    input  wire rst_pulso_in, // Pulso de 1 ciclo para resetar o menu para 0
    input  wire prox_in,      // Pulso de 1 ciclo para avançar de 0 para 1
    output reg  menu_select   // Saída de seleção: 0 = Menu 1, 1 = Menu 2
);
    
    // Define o estado inicial do registrador na simulação ou ao ligar o FPGA
    initial begin
        menu_select = 1'b0;
    end

    // Bloco puramente síncrono
    always @(posedge clk) begin
        // A lógica de reset é a primeira condição a ser verificada (maior prioridade)
        if (rst_pulso_in) begin
            menu_select <= 1'b0; // Reseta para o Menu 1
        end 
        // Se não houver reset, verifica a condição para avançar
        // A transição só ocorre se receber o pulso E estiver no estado 0
        else if (prox_in && (menu_select == 1'b0)) begin
            menu_select <= 1'b1; // Avança de 0 para 1 (e só)
        end
        // Em qualquer outro caso (se já estiver em '1' ou se 'prox_in' for '0'),
        // o valor de 'menu_select' é mantido.
    end

endmodule