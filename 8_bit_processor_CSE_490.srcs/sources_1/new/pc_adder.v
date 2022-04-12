`timescale 1ns / 1ps

module pc_adder(prev_addr, new_addr);
    input [7:0] prev_addr;
    output [7:0] new_addr;
    reg [7:0] new_addr;
    
    always @ (prev_addr)
        begin
            new_addr = prev_addr + 8'b00000001;
        end
endmodule
