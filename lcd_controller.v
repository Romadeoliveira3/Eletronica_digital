module lcd_controller #(
    parameter clk_freq       = 50,      // Clock principal em MHz
    parameter display_lines  = 1'b0,    // 0 = uma linha, 1 = duas linhas
    parameter character_font = 1'b0,    // 0 = 5x8 pontos, 1 = 5x10 pontos
    parameter display_on_off = 1'b1,    // 0 = off, 1 = on
    parameter cursor         = 1'b0,    // 0 = off, 1 = on
    parameter blink          = 1'b0,    // 0 = off, 1 = on
    parameter inc_dec        = 1'b1,    // 0 = decremento, 1 = incremento
    parameter shift          = 1'b0     // 0 = off, 1 = on
) (
    input  wire        clk,
    input  wire        reset_n,    // Ativo-baixo, reinicializa o LCD
    input  wire        lcd_enable, // Habilita o envio de dados
    input  wire [9:0]  lcd_bus,    // {rs, rw, dado[7:0]}
    output reg         busy,       // Feedback: 1=ocupado, 0=disponível
    output reg         rw, rs, e,  // Sinais de controle do LCD
    output reg [7:0]   lcd_data    // Barramento de dados para o LCD
);

    //-----------------------------------------------------------------------------
    // FSM - Definição de Estados
    //-----------------------------------------------------------------------------
    localparam [1:0] ENERGIZACAO   = 2'b00,
                     INICIALIZACAO = 2'b01,
                     PRONTO        = 2'b10,
                     ENVIAR        = 2'b11;

    reg [1:0] estado;
    // Usamos 'integer' para o contador, pois ele é usado como variável
    // com atribuições bloqueantes para simular o comportamento da 'VARIABLE' do VHDL.
    integer   clk_count;

    //-----------------------------------------------------------------------------
    // Máquina de Estados (FSM) Síncrona
    //-----------------------------------------------------------------------------
    always @(posedge clk) begin
        // Reset síncrono ativo-baixo
        if (!reset_n) begin
            estado    <= ENERGIZACAO;
            clk_count = 0;
            busy      <= 1'b1;
            rs        <= 1'b0;
            rw        <= 1'b0;
            e         <= 1'b0;
            lcd_data  <= 8'h00;
        end else begin
            case (estado)
                // Espera 50ms para garantir a energização do LCD
                ENERGIZACAO: begin
                    busy <= 1'b1;
                    if (clk_count < (50000 * clk_freq)) begin
                        clk_count = clk_count + 1; // Atribuição bloqueante
                    end else begin
                        clk_count = 0;
                        rs        <= 1'b0;
                        rw        <= 1'b0;
                        lcd_data  <= 8'h30; // 8-bits, 1 Linha (será reconfigurado)
                        estado    <= INICIALIZACAO;
                    end
                end

                // Sequência de inicialização do display LCD
                INICIALIZACAO: begin
                    busy      <= 1'b1;
                    clk_count = clk_count + 1; // Atribuição bloqueante

                    if (clk_count < (10 * clk_freq)) begin      // Function Set
                        lcd_data <= {4'b0011, display_lines, character_font, 2'b00};
                        e        <= 1'b1;
                    end else if (clk_count < (60 * clk_freq)) begin   // Espera 50 us
                        e <= 1'b0;
                    end else if (clk_count < (70 * clk_freq)) begin   // Display ON/OFF Control
                        lcd_data <= {3'b000, 1'b1, display_on_off, cursor, blink};
                        e        <= 1'b1;
                    end else if (clk_count < (120 * clk_freq)) begin  // Espera 50 us
                        e <= 1'b0;
                    end else if (clk_count < (130 * clk_freq)) begin  // Display Clear
                        lcd_data <= 8'h01;
                        e        <= 1'b1;
                    end else if (clk_count < (2130 * clk_freq)) begin // Espera 2 ms
                        e <= 1'b0;
                    end else if (clk_count < (2140 * clk_freq)) begin // Entry Mode Set
                        lcd_data <= {2'b00, 4'b0001, inc_dec, shift};
                        e        <= 1'b1;
                    end else if (clk_count < (2200 * clk_freq)) begin // Espera 60 us
                        e <= 1'b0;
                    end else begin                                  // Fim da inicialização
                        clk_count = 0;
                        busy      <= 1'b0;
                        estado    <= PRONTO;
                    end
                end
                
                // Espera pelo sinal de enable para capturar a instrução
                PRONTO: begin
                    e <= 1'b0; // Garante que 'e' esteja baixo no estado pronto
                    if (lcd_enable) begin
                        busy      <= 1'b1;
                        rs        <= lcd_bus[9];
                        rw        <= lcd_bus[8];
                        lcd_data  <= lcd_bus[7:0];
                        clk_count = 0;
                        estado    <= ENVIAR;
                    end else begin
                        busy <= 1'b0;
                    end
                end
                
                // Envia a instrução/dado para o LCD com o pulso de 'enable'
                ENVIAR: begin
                    busy      <= 1'b1;
                    clk_count = clk_count + 1; // Atribuição bloqueante

                    // Gera o pulso de 'enable' (E) com a duração correta
                    if (clk_count >= clk_freq && clk_count < (14 * clk_freq)) begin
                        e <= 1'b1; // Pulso positivo de 'e'
                    end else begin
                        e <= 1'b0; // 'e' fica em nível baixo
                    end

                    // Após ~50us, a operação termina e volta para PRONTO
                    if (clk_count >= (50 * clk_freq)) begin
                        clk_count = 0;
                        estado    <= PRONTO;
                    end
                end
                
                default: begin
                    estado <= ENERGIZACAO;
                end
            endcase
        end
    end

endmodule