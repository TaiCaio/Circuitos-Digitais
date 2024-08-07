module circuitodois1(
    //definindo as entradas
    input logic a,
    input logic b, 
    input logic c,
    //definindo as saídas
    output logic x,
    //definindo os wires
     w1, w2, w3, w4
);
    //definindo as expressões lógicas dos wires
    assign w1 = ~a;
    assign w2 = ~b;
    assign w3 = (w1 | w2);
    assign w4 = ~w3;
    //definindo a expressão lógica da saída
    assign x = (w4 & b & c);
endmodule