`timescale 1ns / 1ps

module register_file(read_reg1, read_reg2, write_reg1, clock, write_data, regWrite, reg1, reg2);
    //variable names taken from recitation slides
    input read_reg1;
    input read_reg2;
    input write_reg1;
    input clock;
    input [7:0] write_data;
    input regWrite;
    
    output reg [7:0] reg1, reg2;
    
    reg [7:0] registers[1:0];
    
    initial
        begin
            //Initialize s0 to 5 and s1 to 1
            registers[0] = 8'b00000101;
            registers[1] = 8'b00000001;
        end
        
    always @ (posedge clock)
        begin
            //If write is enabled, write data to write register
            if (regWrite == 1)
                begin
                    registers[write_reg1] = write_data;
                end
        end
    always @ (negedge clock)
        begin
            //Output the registers needed
            reg1 <= registers[read_reg1];
            reg2 <= registers[read_reg2];
        end
endmodule
