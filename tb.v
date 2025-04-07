module testbench;

reg clk;

initial begin
    $display("Hello Verilog");
end

initial begin
    $dumpfile("testbench.vcd");
    $dumpvars(0, testbench);
end

initial begin
    clk = 0;
    #5 clk = 1;
    #5 clk = 0;
    #5 clk = 1;
    #5 $finish;
end
endmodule