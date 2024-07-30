module circuitocinco(
    //definindo os bits de entrada
    input logic b2,
    input logic b1,
    input logic b0,
    //definindo os bits de saída
    output logic y3,
    output logic y2,
    output logic y1,
    output logic y0
);
    //definindo as expressões lógicas das saídas de cada bit de Y
    assign y3 = (b2 & b1 & b0);
    assign y2 = ((~b2)&(~b1)&(~b0)) | (b2&(~b1)&b0) | (b2&b1&(~b0));
    assign y1 = ((~b2)&(~b1)&b0) | (b2&(~b0));
    assign y0 = 1;
endmodule