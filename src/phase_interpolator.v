module phase_interpolator(
    input  logic [5:0] phase_sel,
    input  logic base_clk,
    output logic interp_clk
);
    assign interp_clk = base_clk ^ phase_sel[0];
endmodule
