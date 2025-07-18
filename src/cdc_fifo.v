logic [ADDR_WIDTH-1:0] wr_ptr_gray, rd_ptr_gray;
logic [ADDR_WIDTH-1:0] wr_ptr_gray_sync, rd_ptr_gray_sync;

module cdc_fifo #(parameter WIDTH=8, DEPTH=16)(
    input  logic wr_clk,
    input  logic rd_clk,
    input  logic [WIDTH-1:0] data_in,
    input  logic wr_en,
    input  logic rd_en,
    output logic [WIDTH-1:0] data_out,
    output logic empty,
    output logic full
);
  always_ff @(posedge wr_clk) begin
    {wr_ptr_gray_sync[1], wr_ptr_gray_sync[0]} <= {wr_ptr_gray_sync[0], rd_ptr_gray};
endmodule
