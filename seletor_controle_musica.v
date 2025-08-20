/**
 * @file    seletor_controle_musica.v
 * @brief   Multiplexa/demultiplexa os sinais de controle para até 3 módulos de música.
 * @version 1.0
 * @details Com base em uma entrada de seleção de 2 bits, este módulo direciona os
 * sinais de entrada genéricos (play_in, mute_in, stop_in) para um dos
 * três conjuntos de saídas (play_1/2/3, etc.).
 */
module seletor_controle_musica (
    // --- Entradas ---
    input  wire [1:0] selecao_in, // Chave seletora: 00, 01, 10
    input  wire       play_in,    // Sinal do botão físico "Play/Pause"
    input  wire       mute_in,    // Sinal do botão físico "Mute"
    input  wire       stop_in,    // Sinal do botão físico "Stop"

    // --- Saídas para a Música 1 (selecao_in = 00) ---
    output reg        play_1,
    output reg        mute_1,
    output reg        stop_1,

    // --- Saídas para a Música 2 (selecao_in = 01) ---
    output reg        play_2,
    output reg        mute_2,
    output reg        stop_2,

    // --- Saídas para a Música 3 (selecao_in = 10) ---
    output reg        play_3,
    output reg        mute_3,
    output reg        stop_3
);

    //================================================================
    // Lógica Combinacional para Demultiplexar os Sinais
    //================================================================
    // Usamos um bloco always@(*) para criar um circuito puramente combinacional.
    // As saídas mudarão instantaneamente sempre que qualquer uma das entradas mudar.
    always @(*) begin
        // Passo 1: Definir valores padrão para TODAS as saídas.
        // Isso é crucial para garantir que apenas o canal selecionado esteja ativo
        // e para evitar a criação de latches indesejados pela ferramenta de síntese.
        play_1 = 1'b0; mute_1 = 1'b0; stop_1 = 1'b0;
        play_2 = 1'b0; mute_2 = 1'b0; stop_2 = 1'b0;
        play_3 = 1'b0; mute_3 = 1'b0; stop_3 = 1'b0;

        // Passo 2: Usar um 'case' para selecionar o canal ativo com base em 'selecao_in'.
        case (selecao_in)
            // Se a seleção for "00", direciona os sinais para as saídas do canal 1.
            2'b00: begin
                play_1 = play_in;
                mute_1 = mute_in;
                stop_1 = stop_in;
            end
            
            // Se a seleção for "01", direciona os sinais para as saídas do canal 2.
            2'b01: begin
                play_2 = play_in;
                mute_2 = mute_in;
                stop_2 = stop_in;
            end

            // Se a seleção for "10", direciona os sinais para as saídas do canal 3.
            2'b10: begin
                play_3 = play_in;
                mute_3 = mute_in;
                stop_3 = stop_in;
            end

            // O 'default' cobre todos os outros casos possíveis (neste caso, apenas "11").
            // Conforme solicitado, ele se comporta como o caso "00".
            default: begin
                play_1 = play_in;
                mute_1 = mute_in;
                stop_1 = stop_in;
            end
        endcase
    end

endmodule