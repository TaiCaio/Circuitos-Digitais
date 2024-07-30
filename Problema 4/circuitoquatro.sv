module circuitoquatro(
    //definindo entradas
    input logic h,
    input logic u,
    input logic t,
    input logic f,
    //definindo saída
    output logic x
);
    //definindo a expressão lógica da saída 
    assign x = (h & t)|(u & f);
endmodule