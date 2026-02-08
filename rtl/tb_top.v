module tb_top;
    reg clk = 0;
    reg rst = 1;
    reg miso = 0;
    wire sclk, cs, tx;

    top DUT(clk, rst, miso, sclk, cs, tx);

    always #5 clk = ~clk;

    initial begin
        #20 rst = 0;
        #200 $finish;
    end
endmodule
