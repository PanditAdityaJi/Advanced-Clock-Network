module tb_clock_gating;
  logic clk, enable, gated_clk;
  clock_gating u0 (.clk(clk), .enable(enable), .gated_clk(gated_clk));

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    enable = 0;
    #15 enable = 1;
    #30 enable = 0;
    #30 $finish;
  end
endmodule
