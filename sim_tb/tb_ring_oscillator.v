module tb_ring_oscillator;
  logic enable;
  logic clk_out;
  ring_oscillator #(.STAGES(5)) u0 (.enable(enable), .clk_out(clk_out));

  initial begin
    enable = 0;
    #10 enable = 1;
    #100 $finish;
  end
endmodule
