module clock_gating(
    input  logic clk,
    input  logic enable,
    output logic gated_clk
);
    logic latch_en;
    always_latch begin
        if (!clk)
            latch_en <= enable;
    end
    assign gated_clk = clk & latch_en;
endmodule
