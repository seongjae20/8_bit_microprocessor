`timescale 1ns / 1ns
`include "alu.v"

module testbench();
    reg [7:0] a,b;
    reg [2:0] ALUOP;
    wire [7:0] o;
    
    alu uut(.a(a), .b(b), .ALUOP(ALUOP), .o(o));
    
    initial begin
        a = 1; b = 2; ALUOP = 4; #10;
        if (o !== 3) $display("1+2 failed.");
        a = 2; #10;
        if (o !== 4) $display("2+2 failed.");
        ALUOP = 0; #10;
        $display("output=%d", o);
    end
    
    
endmodule
