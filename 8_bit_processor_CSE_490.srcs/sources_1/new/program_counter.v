`timescale 1ns / 1ps

module program_counter(next_addr, clock, output_addr);
    input [7:0] next_addr;
    input clock;
    output [7:0] output_addr;
    reg [7:0] output_addr;
    
    initial
        begin
            output_addr = 8'b00000000;
        end
        
    always @ (posedge clock)
        begin
            output_addr <= next_addr;
        end
    
endmodule
