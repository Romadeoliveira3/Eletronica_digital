/**
 * @file    lcd_logic_jukebox.v
 * @brief   Lógica de controle para display LCD 16x2 para Jukebox.
 * @details Exibe a tela de boas-vindas ou o nome da música selecionada.
 * @version 3.0 - Funcional
 */
module lcd_logic (
    input  wire        clk,        // Clock principal
    input  wire        lcd_busy,   // Feedback do controlador: 1=ocupado, 0=disponível
    input  wire [15:0] cred_in,    // Entrada com o número de créditos em BCD (0000-9999)
    input  wire        menu_in,    // Seletor de menu: 0=Menu Principal, 1=Menu de Músicas
    input  wire [1:0]  musica_in,  // Índice da música selecionada no Menu 2
    output reg         lcd_e,      // Retem os dados no controlador LCD
    output reg  [9:0]  lcd_bar     // Barramento: {RS, R/W, D7..D0}
);

    //-----------------------------------------------------------------------------
    // Constantes e Mensagens (16 caracteres = 128 bits)
    //-----------------------------------------------------------------------------
    localparam [127:0] MSG_BEMVINDO = "JUKEBOX 80s     ";
    localparam [127:0] MSG_MUSICA_0 = "FUR ELISE       ";
    localparam [127:0] MSG_MUSICA_1 = "SWEET CHILD     ";
    localparam [127:0] MSG_MUSICA_2 = "ASA BRANCA      ";
    localparam [127:0] MSG_INVALIDA = "MUSICA INVALIDA ";
    localparam [79:0]  LINE2_PREFIX = "CREDITOS: ";

    //-----------------------------------------------------------------------------
    // Fios e Registradores para as linhas de texto a serem exibidas
    //-----------------------------------------------------------------------------
    reg  [127:0] L1;
    wire [127:0] L2;

    // Lógica Combinacional para a Linha 1 (seleção de mensagem)
    always @(*) begin
        if (menu_in == 1'b0) begin
            L1 = MSG_BEMVINDO;
        end else begin
            case (musica_in)
                2'd0:    L1 = MSG_MUSICA_0; // FUR ELISE
                2'd1:    L1 = MSG_MUSICA_1; // SWEET CHILD
                2'd2:    L1 = MSG_MUSICA_2; // ASA BRANCA
                default: L1 = MSG_INVALIDA;
            endcase
        end
    end

    // A Linha 2 é construída dinamicamente com os créditos
    assign L2 = {
        LINE2_PREFIX,
        {4'h3, cred_in[15:12]},
        {4'h3, cred_in[11:8]},
        {4'h3, cred_in[7:4]},
        {4'h3, cred_in[3:0]},
        " "
    };

    //-----------------------------------------------------------------------------
    // Máquina de Estados (FSM) para enviar dados ao LCD
    //-----------------------------------------------------------------------------
    reg [5:0] char_state;

    always @(posedge clk) begin
        // Condição para avançar: LCD está pronto E o pulso de enable anterior terminou
        if (!lcd_busy && !lcd_e) begin
            lcd_e <= 1'b1; // Habilita o LCD para a próxima escrita

            // Lógica de avanço e reinício do estado
            if (char_state == 33) begin // Após o estado 33 (último char), volta para 0
                char_state <= 0;
            end else begin
                char_state <= char_state + 1;
            end

            // Decodifica o estado ATUAL para definir qual dado enviar
            case (char_state)
                0:  lcd_bar <= {2'b00, 8'h80};     // Instrução: Cursor para linha 1, posição 0
                1:  lcd_bar <= {2'b10, L1[127:120]}; // Envia 1º char da Linha 1
                2:  lcd_bar <= {2'b10, L1[119:112]};
                3:  lcd_bar <= {2'b10, L1[111:104]};
                4:  lcd_bar <= {2'b10, L1[103:96]};
                5:  lcd_bar <= {2'b10, L1[95:88]};
                6:  lcd_bar <= {2'b10, L1[87:80]};
                7:  lcd_bar <= {2'b10, L1[79:72]};
                8:  lcd_bar <= {2'b10, L1[71:64]};
                9:  lcd_bar <= {2'b10, L1[63:56]};
                10: lcd_bar <= {2'b10, L1[55:48]};
                11: lcd_bar <= {2'b10, L1[47:40]};
                12: lcd_bar <= {2'b10, L1[39:32]};
                13: lcd_bar <= {2'b10, L1[31:24]};
                14: lcd_bar <= {2'b10, L1[23:16]};
                15: lcd_bar <= {2'b10, L1[15:8]};
                16: lcd_bar <= {2'b10, L1[7:0]};     // Envia último char da Linha 1
                17: lcd_bar <= {2'b00, 8'hC0};     // Instrução: Cursor para linha 2, posição 0
                18: lcd_bar <= {2'b10, L2[127:120]}; // Envia 1º char da Linha 2
                19: lcd_bar <= {2'b10, L2[119:112]};
                20: lcd_bar <= {2'b10, L2[111:104]};
                21: lcd_bar <= {2'b10, L2[103:96]};
                22: lcd_bar <= {2'b10, L2[95:88]};
                23: lcd_bar <= {2'b10, L2[87:80]};
                24: lcd_bar <= {2'b10, L2[79:72]};
                25: lcd_bar <= {2'b10, L2[71:64]};
                26: lcd_bar <= {2'b10, L2[63:56]};
                27: lcd_bar <= {2'b10, L2[55:48]};
                28: lcd_bar <= {2'b10, L2[47:40]};
                29: lcd_bar <= {2'b10, L2[39:32]};
                30: lcd_bar <= {2'b10, L2[31:24]};
                31: lcd_bar <= {2'b10, L2[23:16]};
                32: lcd_bar <= {2'b10, L2[15:8]};
                33: lcd_bar <= {2'b10, L2[7:0]};     // Envia último char da Linha 2
                default: ; // Para qualquer outro estado, não atribui novo valor a lcd_bar
            endcase
        end
        // Se o LCD está ocupado ou o pulso de enable ainda está ativo,
        // apenas desabilita o enable e espera.
        else begin
            lcd_e <= 1'b0;
        end
    end

    // Define o estado inicial dos registradores
    initial begin
        lcd_e      = 1'b0;
        lcd_bar    = 10'b0;
        char_state = 0;
    end

endmodule