module cdc_synchronizer(
    input  logic async_sig,
    input  logic clk,
    output logic sync_out
);
    logic sync_ff1, sync_ff2;
    always_ff @(posedge clk) begin
        sync_ff1 <= async_sig;
        sync_ff2 <= sync_ff1;
    end
    assign sync_out = sync_ff2;
endmodule
