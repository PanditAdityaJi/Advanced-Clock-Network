module ring_oscillator #(parameter STAGES = 5)(
    input logic enable,
    output logic clk_out
);
    logic [STAGES-1:0] stage;
    always_comb begin
        if (enable) begin
            stage[0] = ~stage[STAGES-1];
            for (int i = 1; i < STAGES; i++)
                stage[i] = stage[i-1];
            clk_out = stage[STAGES-1];
        end else begin
            clk_out = 0;
        end
    end
endmodule
