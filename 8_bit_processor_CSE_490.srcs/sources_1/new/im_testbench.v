`timescale 1ns / 1ps
`include "instruction_memory.v"

module im_testbench();

    reg [7:0] address;
    wire [7:0] instruction;
    
    instruction_memory im(.address(address), .instruction(instruction));
    
    initial
        begin
            //Check that the output is 0 initially
            address = 8'b00000000;
            #10;
            //Check that the output is the next instruction
            address = 8'b00000001;
            #10
            //Check a random address
            address = 8'b00001010;
        end

endmodule
