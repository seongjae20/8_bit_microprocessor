`timescale 1ns / 1ps

module tb_processor();
    reg clk;
    wire [7:0] opcode;
    initial begin
        clk=0;
    end
    
    always #30 clk =~clk;
    main_pc mips(.clk(clk),.ins_addr(opcode));
    
    initial #390 $finish;
endmodule