`timescale 1ns / 1ns


module control(opcode, ALUOP, jump, memread, memtoreg, memwrite, alusrc, regwrite);
    input [2:0] opcode;
    output [2:0] ALUOP;
    output jump, memread, memtoreg, memwrite, alusrc, regwrite;
    reg [2:0] ALUOP;
    reg jump, memread, memtoreg, memwrite, alusrc, regwrite;
    
    always @ (opcode) begin
        case (opcode)
            //Reset
            3'b000: begin ALUOP = opcode; jump = 0; memread = 0; memtoreg = 0; memwrite = 0; alusrc = 0; regwrite = 0; end
            // LW
            3'b001: begin ALUOP = opcode; jump = 0; memread = 1; memtoreg = 1; memwrite = 0; alusrc = 1; regwrite = 1; end
            // SW
            3'b010: begin ALUOP = opcode; jump = 0; memread = 0; memtoreg = 0; memwrite = 1; alusrc = 1; regwrite = 0; end
            // JUMP
            3'b011: begin ALUOP = opcode; jump = 1; memread = 0; memtoreg = 0; memwrite = 0; alusrc = 0; regwrite = 0; end
            // ADD
            3'b100: begin ALUOP = opcode; jump = 0; memread = 0; memtoreg = 0; memwrite = 0; alusrc = 0; regwrite = 1; end
            // ADDI
            3'b101: begin ALUOP = opcode; jump = 0; memread = 0; memtoreg = 0; memwrite = 0; alusrc = 1; regwrite = 1; end
            // SUB
            3'b110: begin ALUOP = opcode; jump = 0; memread = 0; memtoreg = 0; memwrite = 0; alusrc = 0; regwrite = 1; end
        endcase
    end    
endmodule