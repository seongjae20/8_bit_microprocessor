`timescale 1ns / 1ps


module instruction_memory(address, instruction);
    input [7:0] address;
    output [7:0] instruction;
    reg [7:0] instruction_memory[10:0];
    reg [7:0] instruction;
    
    initial
        begin
            instruction_memory[0] = 8'b00000000;
            //Store word s0 -> s0[0]
            instruction_memory[1] = 8'b010_0_0_000;
            //Load word s1 <- s0[0]
            instruction_memory[2] = 8'b001_1_0_000;
            //Add s1 = s1 + s1
            instruction_memory[3] = 8'b100_1_1_000;
            //Addi s0 = s0 + 7
            instruction_memory[4] = 8'b101_0_0_111;
            //Jump L1 (10)
            instruction_memory[5] = 8'b011_01010;
            instruction_memory[6] = 8'b00000000;
            instruction_memory[7] = 8'b00000000;
            instruction_memory[8] = 8'b00000000;
            instruction_memory[9] = 8'b00000000;
            //Subtract s1 = s0 - s1
            instruction_memory[10] = 8'b110_1_0_000;
        end
    
    always @ (address)
        begin
            instruction = instruction_memory[address];
        end
endmodule
