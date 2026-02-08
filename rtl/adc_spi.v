module adc_spi(
    input clk,
    input rst,
    input start,
    input miso,
    output reg sclk,
    output reg cs,
    output reg [11:0] adc_data,
    output reg done
);
    reg [4:0] count;
    reg [15:0] shift;

    always @(posedge clk) begin
        if (rst) begin
            cs <= 1;
            sclk <= 0;
            count <= 0;
            done <= 0;
        end else if (start) begin
            cs <= 0;
            sclk <= ~sclk;
            shift <= {shift[14:0], miso};
            count <= count + 1;
            if (count == 15) begin
                cs <= 1;
                adc_data <= shift[11:0];
                done <= 1;
                count <= 0;
            end
        end
    end
endmodule
