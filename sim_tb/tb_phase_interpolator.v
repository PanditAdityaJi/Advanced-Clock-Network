module tb_phase_interpolator;
  logic [5:0] phase_sel;
  logic base_clk;
  logic interp_clk;

  phase_interpolator u0 (.phase_sel(phase_sel), .base_clk(base_clk), .interp_clk(interp_clk));

  initial begin
    base_clk = 0;
    forever #10 base_clk = ~base_clk;
  end

  initial begin
    phase_sel = 6'b000000;
    #30 phase_sel = 6'b111111;
    #40 phase_sel = 6'b101010;
    #50 $finish;
  end
endmodule
