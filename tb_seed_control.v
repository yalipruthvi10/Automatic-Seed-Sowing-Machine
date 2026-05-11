`timescale 1ns/1ps

module tb_seed_control;

reg clk, reset;
wire drop;

seed_control uut(clk, reset, drop);

always #5 clk = ~clk;

initial begin
    $dumpfile("seed.vcd");
    $dumpvars(0, tb_seed_control);

    clk = 0;
    reset = 1;
    #10 reset = 0;

    #100 $finish;
end

endmodule
