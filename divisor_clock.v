module divisor_clock (
    input wire           Clk_in,
    input wire [27:0]    Overflow,
    output wire          Clk_out
);

    // Sinais internos (registradores)
    // 'reg' é usado porque esses sinais recebem valores
    // dentro de um bloco procedural 'always'.
    reg toggle;
    reg [27:0] cnt;

    // Bloco síncrono que descreve o comportamento do contador e do flip-flop 'toggle'
    always @(posedge Clk_in) begin
        // Compara o contador com o valor de Overflow
        if (cnt < Overflow) begin
            cnt <= cnt + 1;  // Incrementa o contador
            // 'toggle' mantém seu valor, não é necessário atribuir (toggle <= toggle;)
        end
        else begin
            cnt <= 0;          // Reinicia o contador
            toggle <= ~toggle; // Inverte ('toggle') o valor do sinal
        end
    end

    // Inicialização dos registradores (opcional, mas boa prática)
    // Este bloco é executado apenas uma vez no início da simulação.
    // Para FPGAs, isso define o estado inicial após a configuração.
    initial begin
        toggle = 1'b0;
        cnt = 28'd0;
    end

    // Atribui continuamente o valor do sinal 'toggle' à saída do módulo
    assign Clk_out = toggle;

endmodule