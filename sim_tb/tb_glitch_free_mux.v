module tb_glitch_free_mux;
  logic clk0, clk1, sel, rst, clk_out;
  glitch_free_mux u0 (.clk0(clk0), .clk1(clk1), .sel(sel), .rst(rst), .clk_out(clk_out));

  initial begin
    clk0 = 0; clk1 = 0; sel = 0; rst = 1;
    #5 rst = 0;
    forever #5 clk0 = ~clk0;
  end

  always #7 clk1 = ~clk1;

  initial begin
    #30 sel = 1;
    #40 sel = 0;
    #100 $finish;
  end
endmodule
