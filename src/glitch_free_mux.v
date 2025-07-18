module glitch_free_mux(
    input  logic clk0,
    input  logic clk1,
    input  logic sel,
    input  logic rst,
    output logic clk_out
);
    logic latch0, latch1;

    always_ff @(posedge clk0 or posedge rst) begin
        if (rst) latch0 <= 0;
        else if (!sel) latch0 <= 1;
        else latch0 <= 0;
    end

    always_ff @(posedge clk1 or posedge rst) begin
        if (rst) latch1 <= 0;
        else if (sel) latch1 <= 1;
        else latch1 <= 0;
    end

    assign clk_out = (sel) ? (latch1 & clk1) : (latch0 & clk0);
endmodule
