module Demem (
    input clock,  // from CPU top 
    input memWrite,  // from controller 
    input [31:0] address,  // from alu_result of ALU 
    input [31:0] writeData,  // from read_data_2 of decoder 
    output [31:0] readData  // the data read from ram 
);

    RAM ram (
        .clka(ram_clk),
        .wea(memWrite),
        .addra(address[15:2]),
        .dina(writeData),
        .douta(readData)
    );
endmodule
