`timescale 1ns / 1ps
`include "data_memory.v"

module data_memory_testbench();
    reg [7:0] address;
    reg [7:0] write_data;
    reg MemWrite;
    reg MemRead;
    reg clock;
    
    wire [7:0] data_out;

    data_memory dm(.address(address), .write_data(write_data), .MemWrite(MemWrite), .MemRead(MemRead), .clock(clock), .data_out(data_out)); 

    //Set up the clock and variables
    initial
        begin
            clock = 0;
            MemWrite = 0;
            MemRead = 0;
            write_data = 8'b00000111;
            address = 8'b00000001;
        end
        
    //Tick clock every 10 time units
    always
        #10 clock = ~clock;

    initial
        begin
            //Check that memory is zero'd and nothing changes, output of 0
            #40;
            //Check that given address, write to the address, output of 0
            MemWrite = 1;
            #20;
            //Check that given address, output the value at the address, no memory changes
            MemWrite = 0;
            MemRead = 1;
            #20
            //Turn off everything and check nothing changes, output of 0
            MemRead = 0;
        end

endmodule
