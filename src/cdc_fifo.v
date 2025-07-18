module tb_cdc_fifo;
  logic wr_clk, rd_clk, wr_en, rd_en;
  logic [7:0] data_in;
  logic [7:0] data_out;
  logic empty, full;

  cdc_fifo #(.WIDTH(8), .DEPTH(16)) u0 (
    .wr_clk(wr_clk), .rd_clk(rd_clk),
    .wr_en(wr_en), .rd_en(rd_en),
    .data_in(data_in), .data_out(data_out),
    .empty(empty), .full(full)
  );

  initial begin
    wr_clk = 0; rd_clk = 0;
    forever begin
      #5 wr_clk = ~wr_clk;
      #7 rd_clk = ~rd_clk;
    end
  end

  initial begin
    wr_en = 0; rd_en = 0; data_in = 8'hA5;
    #15 wr_en = 1;
    #30 wr_en = 0; rd_en = 1;
    #50 $finish;
  end
endmodule
