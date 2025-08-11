u_db: entity work.debounce
  generic map (
    CLK_FREQ_HZ => 50_000_000,
    DEBOUNCE_MS => 20
  )
  port map (
    clk           => clk,
    rst_n         => '1',
    noisy_in      => pushbutton,
    clean_lvl     => open,   -- ou use como nível estável
    press_pulse   => pulso,  -- pulso 1 ciclo na pressão
    release_pulse => open
  );
