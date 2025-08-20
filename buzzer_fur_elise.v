/**
 * @file    buzzer_fur_elise.v
 * @brief   Módulo de topo para tocar "Für Elise".
 * @version 2.1 - Lógica de play/pause com pulso de início.
 */
module buzzer_fur_elise (
    input  wire        clock,
    input  wire        play,
    input  wire        stop,
    input  wire        mute,
    output wire        buzzer,
    output reg         start_play,
    output wire        song_end
);

    //-----------------------------------------------------------------------------
    // Sinais de Controle de Execução (Registradores)
    //-----------------------------------------------------------------------------
    // run_en é a "chave geral" interna que controla se a música está tocando.
    // É a variável que antes era exposta como 'is_playing'.
    reg run_en;
    reg mute_en;
    reg is_stopped;

    // Registradores para amostragem dos botões
    reg play_d1, play_d2;
    reg stop_d1, stop_d2;
    reg mute_d1, mute_d2;
    reg stop_pulse;

    // Fios para os pulsos de borda (lógica combinacional)
    wire play_rise;
    wire stop_rise;
    wire mute_rise;

    // Fios de Interconexão entre os Módulos
    wire        disparo;
    wire        duracao;
    wire [27:0] temp_ovf;
    wire [27:0] freq_ovf;
    wire        tone;
    wire        song_end_i;

    //-----------------------------------------------------------------------------
    // Lógica de Controle Síncrona (Amostragem e Estados)
    //-----------------------------------------------------------------------------
    always @(posedge clock) begin
        // Valores padrão para os pulsos
        stop_pulse <= 1'b0;
        start_play <= 1'b0;

        // 1. Amostragem da entrada para o detector de borda
        play_d1 <= play; play_d2 <= play_d1;
        stop_d1 <= stop; stop_d2 <= stop_d1;
        mute_d1 <= mute; mute_d2 <= mute_d1;

        // 2. Lógica de controle Play/Pause e Stop
        if (stop_rise || song_end_i) begin
            run_en     <= 1'b0;
            stop_pulse <= 1'b1;
            is_stopped <= 1'b1;
        end else begin
            if (play_rise) begin
                if (is_stopped) begin
                    start_play <= 1'b1;
                    is_stopped <= 1'b0;
                end
                run_en <= ~run_en; // Alterna o estado de 'run_en'
            end
        end

        // 3. Lógica de controle Mute/Desmute
        if (mute_rise) begin
            mute_en <= ~mute_en;
        end
    end
    
    // Lógica Combinacional para Geração de Pulsos de Borda
    assign play_rise = play_d1 & ~play_d2;
    assign stop_rise = stop_d1 & ~stop_d2;
    assign mute_rise = mute_d1 & ~mute_d2;

    // Inicialização dos registradores
    initial begin
        run_en     = 1'b0;
        mute_en    = 1'b1;
        is_stopped = 1'b1;
        start_play = 1'b0;
        play_d1 = 0; play_d2 = 0;
        stop_d1 = 0; stop_d2 = 0;
        mute_d1 = 0; mute_d2 = 0;
        stop_pulse = 0;
    end

    //-----------------------------------------------------------------------------
    // Instanciação dos Sub-Módulos
    //-----------------------------------------------------------------------------
    controlador_fur_elise u_ctrl (
        .Clk_in   (clock),
        .Play_in  (run_en), // <<-- run_en faz a FSM da música avançar
        .Stop_in  (stop_pulse),
        .Duracao  (duracao),
        .Disparo  (disparo),
        .Temp_out (temp_ovf),
        .Freq_out (freq_ovf),
        .song_end (song_end_i)
    );

    temporizador u_tmp (
        .Clk      (clock),
        .Disparo  (disparo),
        .Overflow (temp_ovf),
        .Q        (duracao)
    );

    divisor_clock u_div (
        .Clk_in   (clock),
        .Overflow (freq_ovf),
        .Clk_out  (tone)
    );

    //-----------------------------------------------------------------------------
    // Lógica de Saída Combinacional
    //-----------------------------------------------------------------------------
    // O som do buzzer é habilitado pelo sinal 'run_en'
    assign buzzer   = (run_en && !mute_en) ? tone : 1'b0;
    assign song_end = song_end_i;

endmodule