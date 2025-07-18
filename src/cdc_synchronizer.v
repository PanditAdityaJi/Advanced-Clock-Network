module tb_cdc_synchronizer;
  logic clk, async_sig, sync_out;
  cdc_synchronizer u0 (.clk(clk), .async_sig(async_sig), .sync_out(sync_out));

  initial begin
    clk = 0;
    forever #10 clk = ~clk;
  end

  initial begin
    async_sig = 0;
    #25 async_sig = 1;
    #35 async_sig = 0;
    #40 $finish;
  end
endmodule
