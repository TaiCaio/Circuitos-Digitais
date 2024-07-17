module circuitod(
    //definindo as entradas
    input logic a, 
    input logic b, 
    input logic c, 
    //definindo as saídas 
    output logic x,
    output logic y  
);
    //definindo a saída x 
    assign x = (a ^ b ^ c);
    assign y = (a & b) | (b & c) | (a & c); 
endmodule