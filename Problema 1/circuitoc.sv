module circuitoc(
    //definindo as entradas
    input logic a, 
    input logic b, 
    input logic c, 
    //definindo a saída 
    output logic x 
);
    //definindo a saída x 
    assign x = ~((a & b) & (c | d));

endmodule