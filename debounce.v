/**
 * @file    debounce_active_high.v
 * @brief   Módulo de debounce com saída ativa-alta (normalmente 0).
 */
 
module debounce #(
    parameter CLK_FREQ_HZ = 50_000_000, // Frequência do clock em Hz
    parameter DEBOUNCE_MS = 20,          // Tempo de debounce em milissegundos
    parameter N_KEYS      = 4            // Número de botões
) (
    input                       clk,         // Clock de entrada
    input      [N_KEYS-1:0]     key,         // Entrada dos botões (com ruído)
    output     [N_KEYS-1:0]     deb          // Saída dos botões (sem ruído, ativa-alta)
);

    // Calcula o número máximo de ciclos de clock para o tempo de debounce.
    localparam CNT_MAX = (CLK_FREQ_HZ / 1000) * DEBOUNCE_MS;

    // Calcula a largura de bits necessária para o contador.
    localparam CNT_WIDTH = $clog2(CNT_MAX);

    // Sinais internos (registradores)
    reg [N_KEYS-1:0] s0;      // Primeiro estágio do sincronizador de entrada
    reg [N_KEYS-1:0] s1;      // Segundo estágio do sincronizador de entrada
    reg [N_KEYS-1:0] stable;  // Saída estável (debounced) - ainda ativa-baixa

    // Array de contadores, um para cada botão.
    reg [CNT_WIDTH-1:0] cnt [N_KEYS-1:0];

    // Variável para o laço 'for'
    integer i;
    
    // Define o estado inicial do registrador 'stable' para '1's (estado de repouso)
    initial begin
        stable = {N_KEYS{1'b1}};
    end

    // Lógica principal do debounce
    always @(posedge clk) begin
        // 1. Sincronizador de 2 estágios para a entrada 'key'
        s0 <= key;
        s1 <= s0;

        // 2. Lógica de debounce para cada botão em paralelo
        for (i = 0; i < N_KEYS; i = i + 1) begin
            if (s1[i] == stable[i]) begin
                cnt[i] <= 0;
            end
            else begin
                if (cnt[i] == CNT_MAX - 1) begin
                    stable[i] <= s1[i];
                    cnt[i]   <= 0;
                end
                else begin
                    cnt[i] <= cnt[i] + 1;
                end
            end
        end
    end

    // 3. Atribui a versão INVERTIDA da saída estável à porta de saída do módulo
    assign deb = ~stable;

endmodule