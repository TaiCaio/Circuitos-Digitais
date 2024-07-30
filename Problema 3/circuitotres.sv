module circuitotres(
    //definindo as entradas 
    input logic a,  
    input logic b, 
    input logic c, 
    input logic d,
    //definindo as saídas
    output logic y
);
    //definindo a saída lógica Y
    assign y = ((~a) & (~b)) | ((~b) & (~d)) | (a & c & (~d));
endmodule