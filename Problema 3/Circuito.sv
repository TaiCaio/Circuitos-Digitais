// Fazendo o mapa de Karnauguh para obtermos a expressão, conseguimos a seguinte expressão y(abcd) = a'b' + b'd' + acd'

module Circuito (
    //definindo as entradas
    input logic a, b, c, d,
    //defininda a saída
    output logic y
);
    //definindo os wrires
    logic w1, w2, w3;
    //definindo as expressões lógicas dos wrires
    assign w1 = ~a;
    assign w2 = ~b;
    assign w3 = ~d;
//definindo a expressão lógica da saída
assign y = ((w1 & w2) | (w2 & w3) | (a & c & w3));
endmodule