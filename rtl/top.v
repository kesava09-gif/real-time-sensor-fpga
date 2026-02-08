module uart_tx(
    input clk,
    input start,
    input [7:0] data,
    output reg tx,
    output reg busy
);
    reg [3:0] bit;
    reg [9:0] shift;

    always @(posedge clk) begin
        if (start && !busy) begin
            shift <= {1'b1, data, 1'b0};
            busy <= 1;
            bit <= 0;
        end else if (busy) begin
            tx <= shift[bit];
            bit <= bit + 1;
            if (bit == 9)
                busy <= 0;
        end
    end
endmodule
