`timescale 1ns / 1ps
`include "register_file.v"

module register_file_testbench();
    reg read_reg1;
    reg read_reg2;
    reg write_reg1;
    reg clock;
    reg [7:0] write_data;
    reg regWrite;
    
    wire [7:0] reg1;
    wire [7:0] reg2;
    
    register_file uut(.read_reg1(read_reg1), .read_reg2(read_reg2), .write_reg1(write_reg1), .clock(clock), .write_data(write_data), .regWrite(regWrite), .reg1(reg1), .reg2(reg2));
    
    //Set up the clock and variables
    initial
        begin
            clock = 0;
            read_reg1 = 0;
            read_reg2 = 1;
            write_reg1 = 0;
            write_data = 8'b00000111;
            
            //Disable write
            regWrite = 0;
        end
    
    //Tick clock every 10 time units
    always
        #10 clock = ~clock;
    
    initial
        begin
            //Check that reg file initialized correctly
            #20;
            //Flip the registers
            read_reg1 = 1;
            read_reg2 = 0;
            #20;
            //Enable write
            regWrite = 1;
            #20;
            //Check that register keeps value
            regWrite = 0;
        end
        
    initial
        #100 $finish;
        
endmodule
