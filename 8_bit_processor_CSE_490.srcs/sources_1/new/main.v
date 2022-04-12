`timescale 1ns / 1ps

module main_pc (
    input clk, output wire[7:0] ins_addr
    );
    
    wire [2:0] ALUOP;
    wire [7:0] out_addr, instruction, write_data, extended_num, regtoalu, alutomem, read_data, added_addr, jump_addr, final_addr, read_data1, read_data2;
    wire jump, memread, memtoreg, memwrite, alusrc, regwrite;
    
    // instruction[7:0] is the element in the memory[address]
    instruction_memory Ins_Mem(out_addr, instruction);

    // Based on the opcode, instruction[7:5], assign corresponding number to each decision values
    control ctr(instruction[7:5], ALUOP, jump, memread, memtoreg, memwrite, alusrc, regwrite);
    
    // rs = read_data1, rt = read_data2, rd = write_reg (third parameter)
    register_file reg_file(instruction[3], instruction[4], instruction[4], clk, write_data, regwrite, read_data1, read_data2);

    // 3'bxxx -> 8'b00000xxx
    sign_ext sign_extension(instruction[2:0], extended_num);

    // alusrc = 0 -> R type (add,sub)
    // alusrc = 1 -> I type 
    multiplexers reg_to_alu(read_data2, extended_num, alusrc, regtoalu);

    // based on the ALUOP, opcode, add or sub
    alu reg_to_datamem(read_data1, regtoalu, ALUOP, alutomem);

    // if sw, read_data2 -> mem[address], address is read_data 1 + sign_extended
    data_memory dt_mem(alutomem, read_data2, memwrite, memread, clk, read_data);
    
    // choose write value for write data
    // memtoreg = 0 -> alu return between reg and mem
    // memtoreg = 1 -> data_memory return
    multiplexers datamem_to_reg(alutomem, read_data, memtoreg, write_data);
    
    // write_data to register
    // mem_wb_reg WB_to_reg(clk, regwrite, instruction[4], write_data);

    // pc = pc + 1
    pc_adder addr_add(out_addr, added_addr);
    
    // get jump address
    assign jump_addr[7:5] = added_addr[7:5];
    assign jump_addr[4:0] = instruction[4:0];
    
    // jump = 0 -> R and I types, move 1 to next
    // jump = 1 -> J type
    multiplexers jmp_or_not(added_addr, jump_addr, jump, final_addr);

    // next_add <- final_addr
    program_counter prg_cnt(final_addr, clk, out_addr);
    assign ins_addr = instruction;
endmodule