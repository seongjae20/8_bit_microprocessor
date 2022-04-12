`timescale 1ns / 1ps

module sign_ext(
    input [2:0] a,
    output reg [7:0] out
    );
    
    always @(*)
    begin
        out[7:3] = 5'b00000;
        out[2:0] = a;
    end
endmodule