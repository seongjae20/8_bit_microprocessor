module alu( a, b, ALUOP, o);
    
    input [7:0] a,b;
    input [2:0] ALUOP;
    output [7:0] o; reg [7:0] o;

    always @ (a, b, ALUOP)
    begin
        case (ALUOP)
            3'b001: o = a + b;
            3'b010: o = a + b;
            3'b100: o = a + b;  
            3'b101: o = a + b;
            3'b110: o = a - b;
        endcase
    end
endmodule