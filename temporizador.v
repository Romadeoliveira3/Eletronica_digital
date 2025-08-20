module temporizador (
    input wire           Clk,
    input wire           Disparo,
    input wire [27:0]    Overflow,
    output wire          Q
);

    // Registrador para o contador regressivo.
    // 'reg' é usado porque o contador recebe valores dentro de um bloco 'always'.
    reg [27:0] cnt;

    // Lógica síncrona para o contador
    always @(posedge Clk) begin
        // Condição de início: Disparo está ativo E o contador está zerado (inativo)
        if (Disparo && (cnt == 0)) begin
            cnt <= Overflow; // Carrega o contador com o valor da duração
        end
        // Condição de espera: Sem disparo E o contador está zerado
        else if (!Disparo && (cnt == 0)) begin
            cnt <= 0; // Mantém o contador em zero
        end
        // Condição de contagem: Se nenhuma das anteriores, o timer está ativo
        else begin
            cnt <= cnt - 1; // Decrementa o contador a cada ciclo de clock
        end
    end

    // Define o estado inicial do contador no início da simulação ou reset do FPGA
    initial begin
        cnt = 28'd0;
    end

    // Lógica combinacional para a saída Q.
    // Q é '1' sempre que o contador for diferente de zero.
    assign Q = (cnt != 0);

endmodule