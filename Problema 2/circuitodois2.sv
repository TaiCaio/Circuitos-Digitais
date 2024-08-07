module circuitodois2(
    //definindo as entradas
    input logic a,
    input logic b,
    input logic c,
    input logic d, 
    //definindo as saídas
    output logic x, 
    //definindo os wires
    w1, w2, w3, w4, w5, w6
);
    //definindo as expressões lógicas dos wires
    assign w1 = ~a;
    assign w2 = ~b;
    assign w3 = ~c;
    assign w4 = w1 & w2 & w3;
    assign w5 = (~w1) & w2 & w3;
    assign w6 = w1 & w2 & d;  
    //definindo a expressão lógica da saída 
    assign x = w4 | w5 | w6; 
endmodule 