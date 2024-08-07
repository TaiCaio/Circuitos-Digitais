// Fazendo o mapa de Karnauguh para obtermos a expressão, conseguimos a seguinte expressão y(abcd) = a'b' + b'd' + acd'

module Circuito (
    input logic a, b, c, d,
    output logic y
);
    logic w1, w2, w3;
    assign w1 = ~a;
    assign w2 = ~b;
    assign w3 = ~d;
assign y = ((w1 & w2) | (w2 & w3) | (a & c & w3));
endmodule