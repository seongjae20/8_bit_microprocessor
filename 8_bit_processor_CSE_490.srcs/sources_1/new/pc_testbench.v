`timescale 1ns / 1ps
`include "program_counter.v"

module pc_testbench();
    reg [7:0] next_addr;
    reg clock;
    wire [7:0] output_addr;
    
    program_counter pc(.next_addr(next_addr), .clock(clock), .output_addr(output_addr));
    
    //Set up the clock and variables
    initial
        begin
            clock = 0;
            next_addr = 8'b00000001;
        end
        
    //Tick clock every 10 time units
    always
        #10 clock = ~clock;
        
    initial
        begin
            //Check that memory is 0 as first output
            #20;
            //Check that next address is 1
            //Check that given an address, output is that
            next_addr = 8'b00000101;
        end

endmodule
