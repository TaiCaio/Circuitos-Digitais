// Fazendo o mapa de Karnauguh para obtermos a expressão, conseguimos a seguinte expressão y(abcd) = a'b' + b'd' + acd'

module Circuito (
    input logic a, b, c, d,
    output logic y
);
    logic w1, w2, w3;
assign logic w1 = ~a;
assign logic w2 = ~b;
assign logic w3 = ~d;
assign logic y = ((w1 | w2) & (w2 | w3) & (a | c | w3));
endmodule