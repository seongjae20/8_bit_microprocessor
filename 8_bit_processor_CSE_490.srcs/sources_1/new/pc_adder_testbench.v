`timescale 1ns / 1ps
`include "pc_adder.v"

module pc_adder_testbench();
    reg [7:0] prev_addr;
    wire [7:0] new_addr;

    pc_adder uut(.prev_addr(prev_addr), .new_addr(new_addr));
    
    initial begin
        prev_addr = 8'b00000000;
        #10;
        if (new_addr !== 8'b00000001) $display("pc_adder failed.");
        $display("output=%d", new_addr);
    end

endmodule
