/**
 * @file    buzzer_asa_branca.v
 * @brief   Módulo de topo para tocar "Asa Branca".
 * @version 1.0 - Convertido de VHDL e aprimorado com a lógica de controle
 * de play/pause/stop e o pulso de início 'start_play'.
 */
module buzzer_asa_branca (
    input  wire       clock,
    input  wire       play,       // Borda de subida: alterna Play/Pause
    input  wire       stop,       // Borda de subida: reseta e pausa
    input  wire       mute,       // Borda de subida: alterna Mute/Desmute
    output wire       buzzer,
    output reg        start_play, // Pulso de 1 ciclo quando a música inicia
    output wire       song_end    // Pulso de 1 ciclo no fim da música
);

    //-----------------------------------------------------------------------------
    // Sinais de Controle de Execução (Registradores)
    //-----------------------------------------------------------------------------
    reg run_en;     // Chave geral que controla se a música está tocando/avançando
    reg mute_en;    // Controla se o som está mudo
    reg is_stopped; // Diferencia entre uma parada total e uma pausa

    // Registradores para amostragem dos botões
    reg play_d1, play_d2;
    reg stop_d1, stop_d2;
    reg mute_d1, mute_d2;
    reg stop_pulse; // Pulso interno de 1 ciclo para resetar o controlador

    // Fios para os pulsos de borda (lógica combinacional)
    wire play_rise;
    wire stop_rise;
    wire mute_rise;

    // Fios de Interconexão entre os Sub-Módulos
    wire        disparo;
    wire        duracao;
    wire [27:0] temp_ovf;
    wire [27:0] freq_ovf;
    wire        tone;
    wire        song_end_i; // Sinal interno de fim de música

    //-----------------------------------------------------------------------------
    // Lógica de Controle Síncrona (Amostragem e Estados)
    //-----------------------------------------------------------------------------
    always @(posedge clock) begin
        // Valores padrão para os pulsos a cada ciclo
        stop_pulse <= 1'b0;
        start_play <= 1'b0;

        // 1. Amostragem das entradas para o detector de borda
        play_d1 <= play; play_d2 <= play_d1;
        stop_d1 <= stop; stop_d2 <= stop_d1;
        mute_d1 <= mute; mute_d2 <= mute_d1;

        // 2. Lógica de controle Play/Pause e Stop
        // Se o botão stop for pressionado ou a música acabar...
        if (stop_rise || song_end_i) begin
            run_en     <= 1'b0;      // Pausa a execução
            stop_pulse <= 1'b1;      // Gera um pulso para resetar o controlador
            is_stopped <= 1'b1;      // Marca que a música foi parada
        end else begin
            // Se o botão play for pressionado...
            if (play_rise) begin
                // Se a música estava parada, gera o pulso de início
                if (is_stopped) begin
                    start_play <= 1'b1;
                    is_stopped <= 1'b0; // Marca que não está mais parada
                end
                run_en <= ~run_en; // Alterna o estado de play/pause
            end
        end

        // 3. Lógica de controle Mute/Desmute
        if (mute_rise) begin
            mute_en <= ~mute_en; // Alterna o estado de mudo
        end
    end
    
    // Lógica Combinacional para Geração de Pulsos de Borda de Subida
    assign play_rise = play_d1 & ~play_d2;
    assign stop_rise = stop_d1 & ~stop_d2;
    assign mute_rise = mute_d1 & ~mute_d2;

    // Inicialização dos registradores (para simulação)
    initial begin
        run_en     = 1'b0;
        mute_en    = 1'b0; // Inicia com som (ou 1'b1 para iniciar mudo)
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
    controlador_asa_branca u_ctrl (
        .Clk_in   (clock),
        .Play_in  (run_en),
        .Stop_in  (stop_pulse),
        .Duracao  (duracao),
        .Disparo  (disparo),
        .Temp_out (temp_ovf),
        .Freq_out (freq_ovf),
        // .Clk_out() // está "aberto", não conectamos a nada
        //.song_end (song_end_i) // **CONEXÃO CRÍTICA ADICIONADA**
        // Descomente a linha acima quando seu controlador_asa_branca tiver a saída song_end
    );

    temporizador u_tmp (
        .Clk   (clock), // Nome da porta corrigido com base no erro anterior
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
    assign buzzer   = (run_en && !mute_en) ? tone : 1'b0;
    assign song_end = song_end_i;

endmodule