`timescale 1ns / 1ps

module data_memory(address, write_data, MemWrite, MemRead, clock, data_out);
    
    input [7:0] address;
    input [7:0] write_data;
    input MemWrite;
    input MemRead;
    input clock;
    
    output [7:0] data_out;
    reg [7:0] data_out;
    
    //Memory
    reg [7:0] memory[255:0];
    
    //For memory intitialize loop
    integer i;
    
    initial
        begin
        //Initialize all the data to 0
            for (i = 0; i < 256; i = i + 1)
                begin
                    memory[i] = 8'b00000000;
                end 
        end  
    
    always @ (posedge clock)
        begin
            //sw instruction
            if (MemWrite == 1)
                begin
                    memory[address] = write_data;
                end
        end
    
    always @ (*)
    begin
        //lw instruction
        if (MemRead == 1)
            begin
                data_out = memory[address];
        end
    end
    
endmodule
