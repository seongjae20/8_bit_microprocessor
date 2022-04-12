`timescale 1ns/1ps

module multiplexers (input [7:0] a,
    input [7:0] b,
    input x,
    output reg[7:0] out
    );
    
    always @ (*)
    begin
       if (x == 0)
       begin
        out = a;
       end
       else
       begin
        out = b;
       end 
    end
endmodule