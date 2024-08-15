# Lista de Projeto 01 - Circuitos Digitais
Projeto direcionado à disciplina de Circuitos Digitais, ministrada pelo Prof Dr Pedro Thiago Valério de Souza no período 2024.1, na Universidade Federal Rural do Semi-Árido (UFERSA).

# Autores 
- Caio Barreto Meyer | [Caio B. Meyer](https://github.com/TaiCaio) 
- Guilherme Gabriel Saldanha Pereira | [OGuilhermeGabriel](https://github.com/OGuilhermeGabriel)

# Sumário

- [Problema 01](#problema-01)
- [Problema 02](#problema-02)
- [Problema 03](#problema-03)
- [Problema 04](#problema-04)
- [Problema 05](#problema-05)

# Problema 01 
Utilizando operadores lógicos, descreva os seguintes circuitos em SystemVerilog com as expressões
lógicas de saída dadas.

Além disso, simule o circuito no ModelSim para todas as possíveis combinações de entrada e obtenha a tabela verdade.

## Problema 01 - Circuito (a)
`X = A̅B + C`
- Descrição do circuito lógico
~~~
module circuitoa(
    //definindo as entradas
    input logic a, 
    input logic b, 
    input logic c, 
    //definindo a saída 
    output logic x 
);
    //definindo a saída x 
    assign x = (~a & b) | c;

endmodule
~~~
- Tabela Verdade Obtida

 *A* | *B* | *C* | *X* | 
 ----| ----| ----| ----|   
  0  |  0  |  0  |  0  |   
  0  |  0  |  1  |  1  |   
  0  |  1  |  0  |  1  | 
  0  |  1  |  1  |  1  |
  1  |  0  |  0  |  0  |   
  1  |  0  |  1  |  1  |   
  1  |  1  |  0  |  0  | 
  1  |  1  |  1  |  1  |

A tabela verdade deste circuito foi obtida tendo como base a interpretação dos termos produtos. Onde:

> *A̅B* corresponde à 01X. Logo, as combinações 010 e 011 fazem com que a saída *X* tenha nível lógico ALTO.

> *C* corresponde à XX1. Logo, as combinações 001, 011, 101 e 111 fazem com que a saída *X* tenha nível lógico ALTO.

Para comprovar a veracidade da tabela verdade, podemos pegar o caso 010 logo abaixo, onde a saída *X* será 1 e simular no ModelSim:

![P1 circuitoa](/Projeto%2001%20-%20Assets/P1%20circuitoa%20-%20WAVE.jpg)

## Problema 01 - Circuito (b)
`X = (A+B)(B+C̅)`
- Descrição do circuito lógico
~~~
module circuitob(
    //definindo as entradas
    input logic a, 
    input logic b, 
    input logic c, 
    //definindo a saída 
    output logic x 
);
    //definindo a saída x 
    assign x = (a | b) & (b | ~c);

endmodule
~~~  
- Tabela Verdade Obtida

 *A* | *B* | *C* | *X* | 
 ----| ----| ----| ----|   
  0  |  0  |  0  |  0  |   
  0  |  0  |  1  |  0  |   
  0  |  1  |  0  |  1  | 
  0  |  1  |  1  |  1  |
  1  |  0  |  0  |  1  |   
  1  |  0  |  1  |  0  |   
  1  |  1  |  0  |  1  | 
  1  |  1  |  1  |  1  |

Neste caso, podemos reduzir a expressão lógica *X = (A+B)(B+C̅)* para *X = B+AC̅* realizando uma simples redução algébrica.

A tabela verdade deste circuito foi obtida tendo como base a interpretação dos termos produtos. Onde:

> *B* corresponde à X1X. Logo, as combinações 010, 011, 110 e 111 fazem com que a saída *X* tenha nível lógico ALTO.

> *AC̅* corresponde à 1X0. Logo, as combinações 100 e 110 fazem com que a saída *X* tenha nível lógico ALTO.

Para comprovar a veracidade da tabela verdade, podemos pegar o caso 010 logo abaixo, onde a saída *X* será 1 e simular no ModelSim:

![P1 circuitob](/Projeto%2001%20-%20Assets/P1%20circuitob%20-%20WAVE.jpg)

## Problema 01 - Circuito (c)
<span style="text-decoration: overline;">`AB(C+D)`</span>
- Descrição no circuito lógico
~~~
module circuitoc(
    //definindo as entradas
    input logic a, 
    input logic b, 
    input logic c,
    input logic d,  
    //definindo a saída 
    output logic x 
);
    //definindo a saída x 
    assign x = ~((a & b) & (c | d));

endmodule
~~~
- Tabela Verdade Obtida

 *A* | *B* | *C* | *D* | *X* | 
 ----| ----| ----| ----| ----|   
  0  |  0  |  0  |  0  |  1  |   
  0  |  0  |  0  |  1  |  1  |   
  0  |  0  |  1  |  0  |  1  | 
  0  |  0  |  1  |  1  |  1  |
  0  |  1  |  0  |  0  |  1  |   
  0  |  1  |  0  |  1  |  1  |   
  0  |  1  |  1  |  0  |  1  | 
  0  |  1  |  1  |  1  |  1  |
  1  |  0  |  0  |  0  |  1  |   
  1  |  0  |  0  |  1  |  1  |   
  1  |  0  |  1  |  0  |  1  | 
  1  |  0  |  1  |  1  |  1  |
  1  |  1  |  0  |  0  |  1  |   
  1  |  1  |  0  |  1  |  0  |   
  1  |  1  |  1  |  0  |  0  | 
  1  |  1  |  1  |  1  |  0  |

Neste caso, podemos reduzir a expressão lógica *X = <span style="text-decoration: overline;">AB(C+D)</span>* para *X = A̅+B̅+C̅D̅* realizando uma simples redução algébrica, com o auxílio do Teorema de De Morgan.

A tabela verdade deste circuito foi obtida tendo como base a interpretação dos termos produtos. Onde:

> *A̅* corresponde à 0XXX. Logo, as combinações 0000, 0001, 0010, 0011, 0100, 0101, 0110 e 0111 fazem com que a saída *X* tenha nível lógico ALTO.

> *B̅* corresponde à X0XX. Logo, as combinações 0000, 0001, 0010, 0011, 1000, 1001, 1010 e 1011 fazem com que a saída *X* tenha nível lógico ALTO.

> *C̅D̅* corresponde à XX00. Logo, as combinações 0000, 0100, 1000 e 1100 fazem com que a saída *X* tenha nível lógico ALTO.

Para comprovar a veracidade da tabela verdade, podemos pegar o caso 1000 logo abaixo, onde a saída *X* será 1 e simular no ModelSim:

![P1 circuitoc](/Projeto%2001%20-%20Assets/P1%20circuitoc%20-%20WAVE.jpg)

## Problema 01 - Circuito (d)
`X = A⊕B⊕C`

`Y = AB + BC + AC` 

- Descrição no *System Verilog*
~~~
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
~~~
- Tabela Verdade Obtida

 *A* | *B* | *C* | *X* | *Y* | 
 ----| ----| ----| ----| ----| 
  0  |  0  |  0  |  0  |  0  |
  0  |  0  |  1  |  1  |  0  |
  0  |  1  |  0  |  1  |  0  |
  0  |  1  |  1  |  0  |  1  |
  1  |  0  |  0  |  1  |  0  |
  1  |  0  |  1  |  0  |  1  |
  1  |  1  |  0  |  0  |  1  |
  1  |  1  |  1  |  1  |  1  |

Neste caso, existem 2 saídas. Portanto, faz-se necessário encontrar duas expressões lógicas reduzidas que representem as respectivas saídas *X* e *Y*.

A saída *X = A⊕B⊕C* pode ser simplificada aplicando o Teorema De Morgan, de forma que a expressão da saída *X* evidencie os termos produto da expressão. Nesse sentido, a saída *X* pode ser reduzida para a seguinte expressão: *X = ABC + A̅B̅C + A̅BC̅ + AB̅C̅*

A saída *Y = AB + BC + AC* não precisa ser reduzida para outra expressão. Os termos produto da expressão já estão evidentes.

A tabela verdade deste circuito foi obtida tendo como base a interpretação dos termos produtos de cada uma das saídas. Onde:

> Na saída *X*: *ABC* representa 111, *A̅B̅C* representa 001, *A̅BC̅* representa 010 e *AB̅C̅* representa 100. Todas as combinações citadas atingem nível lógico ALTO para a saída *X*.

> Na saída *Y*: *AB* representa 11X (110 e 111), *BC* representa X11 (011 e 111) e *AC* representa 1X1 (101 e 111). Todas as combinações citadas atingem nível lógico ALTO para a saída *Y*.

Para comprovar a veracidade da tabela verdade, podemos pegar o caso 011 logo abaixo, onde a saída *X* será 0, a saída *Y* será 1 e simular no ModelSim:

![P1 circuitod](/Projeto%2001%20-%20Assets/P1%20circuitod%20-%20WAVE.jpg)

# Problema 02
Utilizando operadores lógicos e sinais intermediários, descreva em *SystemVerilog* os circuitos com os seguintes diagramas lógicos:

### Circuitodois1 
![P2 circuitodois1](/Projeto%2002%20-%20Assets/Circuitodois1.jpg)
### Circuitodois2
![P2 circuitodois2](/Projeto%2002%20-%20Assets/Circuitodois2.jpg)

Simule o circuito no ModelSim para todas as possíveis combinações de entrada e obtenha a tabela da verdade para cada um dos casos.

## Problema 02 - Circuitodois 1 e Circuitodois 2

A primeira coisa a se fazer será atribuir os sinais intermediários (também chamados de *signals* e *wires*) para trechos localizados entre as portas lógicas. O intuito de fazer isso é implementar uma boa prática para a descrição do circuito lógico. Uma vez que, a atribução destas variáveis às expressões lógicas irá reduzir drasticamente as linhas de códigos em alguns casos de atribuição por exemplo.

Nesse sentido, os sinais intermediários atribuidos para cada um dos circuitos foram:

### Circuitodois1 com *wires*
![Circuitodois1wires](/Projeto%2002%20-%20Assets/Circuitodois1wires.jpg)

- Descrição do circuito lógico
~~~
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
~~~

- Tabela Verdade Obtida

 *A* | *B* | *C* | *X* | 
 ----| ----| ----| ----|   
  0  |  0  |  0  |  0  |   
  0  |  0  |  1  |  0  |   
  0  |  1  |  0  |  0  | 
  0  |  1  |  1  |  0  |
  1  |  0  |  0  |  0  |   
  1  |  0  |  1  |  0  |   
  1  |  1  |  0  |  0  | 
  1  |  1  |  1  |  1  |

- Simulando no ModelSim

Podemos então utilizar o ModelSim para saber se a tabela verdade obtida é congruente com os resultados obtidos da simulação. Peguemos, por exemplo, a combinação 111 que resulta na saída 1.

![Circuitodois1](/Projeto%2002%20-%20Assets/P2%20circuitodois1.jpg)

### Circuitodois2 com *wires*
![Circuitodois2wires](/Projeto%2002%20-%20Assets/Circuitodois2wires.jpg)
- Descrição do circuito lógico
~~~
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
~~~

- Tabela Verdade Obtida

 *A* | *B* | *C* | *D* | *X* | 
 ----| ----| ----| ----| ----|   
  0  |  0  |  0  |  0  |  1  |   
  0  |  0  |  0  |  1  |  1  |   
  0  |  0  |  1  |  0  |  0  | 
  0  |  0  |  1  |  1  |  1  |
  0  |  1  |  0  |  0  |  0  |   
  0  |  1  |  0  |  1  |  0  |   
  0  |  1  |  1  |  0  |  0  | 
  0  |  1  |  1  |  1  |  0  |
  1  |  0  |  0  |  0  |  1  |   
  1  |  0  |  0  |  1  |  1  |   
  1  |  0  |  1  |  0  |  0  | 
  1  |  0  |  1  |  1  |  0  |
  1  |  1  |  0  |  0  |  0  |   
  1  |  1  |  0  |  1  |  0  |   
  1  |  1  |  1  |  0  |  0  | 
  1  |  1  |  1  |  1  |  0  |

- Simulando no ModelSim

Podemos então utilizar o ModelSim para saber se a tabela verdade obtida é congruente com os resultados obtidos da simulação. Peguemos, por exemplo, a combinação 1000 que resulta na saída 1.

![Circuitodois2](/Projeto%2002%20-%20Assets/P2%20circuitodois2.jpg)

# Problema 03
Utilizando os operadores lógicos, descreva um circuito em *SystemVerilog* que possua a seguinte tabela da verdade:

 *A* | *B* | *C* | *D* | *Y* | 
 ----| ----| ----| ----| ----|   
  0  |  0  |  0  |  0  |  1  |   
  0  |  0  |  0  |  1  |  1  |   
  0  |  0  |  1  |  0  |  1  | 
  0  |  0  |  1  |  1  |  1  |
  0  |  1  |  0  |  0  |  0  |   
  0  |  1  |  0  |  1  |  0  |   
  0  |  1  |  1  |  0  |  0  | 
  0  |  1  |  1  |  1  |  0  |
  1  |  0  |  0  |  0  |  1  |   
  1  |  0  |  0  |  1  |  0  |   
  1  |  0  |  1  |  0  |  1  | 
  1  |  0  |  1  |  1  |  0  |
  1  |  1  |  0  |  0  |  0  |   
  1  |  1  |  0  |  1  |  0  |   
  1  |  1  |  1  |  0  |  1  | 
  1  |  1  |  1  |  1  |  0  |

Simule o circuito no ModelSim para todas as possíveis combinações de entrada e verifique a saída.

- Obtenção das expressões lógicas

Antes de começar a descrever o circuito lógico, torna-se necessária a obtenção das expressões lógicas que definem a saída *Y*. O meio utilizado para este caso foi aplicando o mapa de Karnaugh.

- Descrição do circuito lógico
~~~
// Fazendo o mapa de Karnauguh para obtermos a expressão, conseguimos a seguinte expressão y(abcd) = a'b' + b'd' + acd'

module Circuito (
    //definindo as entradas
    input logic a, b, c, d,
    //definindo a saída
    output logic y
);
    //definindo os wires
    logic w1, w2, w3;
    //definindo as expressões lógicas dos wires
    assign w1 = ~a;
    assign w2 = ~b;
    assign w3 = ~d;
//definindo a expressão lógica da saída
assign y = ((w1 & w2) | (w2 & w3) | (a & c & w3));
endmodule
~~~

- Simulando no ModelSim

É possível provar que a expressão lógica da saída *Y* tirada do mapa de Karnaugh é verídica por meio de uma simulação, onde a combinações da tabela verdade precisam ser congruentes com os dados obtidos da simulação. Peguemos, por exemplo, a combinação 1101 que resulta na saída 0.

![Circuitotres](/Projeto%2003%20-%20Assets/P3%20circuitotres%20-%20WAVE.jpg)

# Problema 04 
Um sistema de ar condicionado deverá atuar sob as seguintes premissas:

• Temperatura acima de 21°C e estar entre 9:00h e 17:00h, ou;

• Ser fim de semana com umidade relativa do ar acima de 85%, ou;

• Umidade relativa do ar acima de 85%, temperatura acima de 21°C e ser final de semana, ou;

• Umidade relativa do ar acima de 85%, temperatura acima de 21°C e estar entre 9:00h e 17:00h.

Utilizando operadores lógicos, descreva um circuito em SystemVerilog que possua o esse funcionamento.

Para isso, algumas considerações devem ser estabelecidas:

• 𝐻 = Estar entre 9:00h e 17:00h, 𝐻 =Não estar entre 9:00h e 17:00h;

• 𝑈 = Umidade relativa do ar acima de 85%, 𝑈 =Umidade relativa do ar abaixo de 85%;

• 𝑇 = Temperatura acima de 21°C, 𝑇 =Temperatura abaixo de 21°C;

• 𝐹 = Final de semana, 𝐹 =Dia da semana.

Simule o circuito no ModelSim para todas as possíveis combinações de entrada.

- Interpretando as condições

As premissas impostas pelo ar condicionado podem ser consideradas como condições responsáveis por gerar a tabela verdade do circuito lógico desejável. Vale salientar que a sequência significativa das entradas adotada foi *HUTF*

O intuito é encontrar, por meio de tais condições, os *minterms* responsáveis por definir a tabela verdade. Confira à seguir: 

> Temperatura acima de 21°C e estar entre 9:00h e 17:00h. Podemos interpretar tal premissa como *HXTX*. Onde as possíveis combinações para a saída ser 1 serão: 1010, 1011, 1110, 1111.

> Ser fim de semana com umidade relativa do ar acima de 85%. Podemos interpretar tal premissa como *XUXF*. Onde as possíveis combinações para a saída ser 1 serão: 0101, 0111, 1101, 1111.

> Umidade relativa do ar acima de 85%, temperatura acima de 21°C e ser final de semana. Podemos interpretar tal premissa como *XUTF*. Onde as possíveis combinações para a saída ser 1 serão: 0111 e 1111.

> Umidade relativa do ar acima de 85%, temperatura acima de 21°C e estar entre 9:00h e 17:00h. Podemos interpretar tal premissa como *HUTX*. Onde as possíveis combinações para a saída ser 1 serão: 1110 e 1111

- Tabela Verdade Obtida

Tendo isso em mente, é possível implementar a tabela verdade que descreve o circuito lógico sobre as premissas estabelecidas.

 *H* | *U* | *T* | *F* | *X* | 
 ----| ----| ----| ----| ----|   
  0  |  0  |  0  |  0  |  0  |   
  0  |  0  |  0  |  1  |  0  |   
  0  |  0  |  1  |  0  |  0  | 
  0  |  0  |  1  |  1  |  0  |
  0  |  1  |  0  |  0  |  0  |   
  0  |  1  |  0  |  1  |  1  |   
  0  |  1  |  1  |  0  |  0  | 
  0  |  1  |  1  |  1  |  1  |
  1  |  0  |  0  |  0  |  0  |   
  1  |  0  |  0  |  1  |  0  |   
  1  |  0  |  1  |  0  |  1  | 
  1  |  0  |  1  |  1  |  1  |
  1  |  1  |  0  |  0  |  0  |   
  1  |  1  |  0  |  1  |  1  |   
  1  |  1  |  1  |  0  |  1  | 
  1  |  1  |  1  |  1  |  1  |

Dessa forma, para obter a expressão lógica que descreve a saída *X*, basta apenas utilizar o mapa de Karnaugh. Sendo a expressão lógica encontrada, implementada à seguir durante a descrição do circuito lógico.

- Descrição do circuito lógico
~~~
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
~~~

- Simulando no ModelSim

É possível provar que a expressão lógica da saída *Y* tirada do mapa de Karnaugh é verídica por meio de uma simulação, onde a combinações da tabela verdade precisam ser congruentes com os dados obtidos da simulação. Peguemos, por exemplo, a combinação 1011 que resulta na saída 1.

![Circuitoquatro](/Projeto%2004%20-%20Assets/P4%20circuitoquatro%20-%20WAVE.jpg)

# Problema 05
Um circuito lógico combinacional calcula, a partir de uma entrada de 3 bits 𝐵 (cada um dos bits designados por 𝐵2, 𝐵1 e 𝐵0), a seguinte operação matemática:

 *Y = |2B - 5|*

Utilizando operadores lógicos, descreva um circuito em SystemVerilog que possua esse funcionamento.

Simule o circuito no ModelSim para todas as possíveis combinações de entrada.

## Problema 05 - Circuitocinco

Para que o circuito lógico tenha esse funcionamento, será necessário criar uma tabela verdade com estes 3 bits, de 0 à 7, captando todas as combinações. Dessa forma, cada linha do conjunto dos 3 bits irá representar um valor *Y* que, somente mais tarde, na tabela verdade, será representado em bits. Montando esta tabela de associação de valores, teremos:

 *B* | *Y = 2B - 5* | 
 ----| ----|   
  0  |  5  |   
  1  |  3  |   
  2  |  1  | 
  3  |  1  |
  4  |  3  |   
  5  |  5  |   
  6  |  7  | 
  7  |  9  |

- Obtendo a tabela verdade

Note que o valores encontrados para *Y* são valores decimais. Estes valores serão representados na tabela verdade por bits e, como há casos onde o valor de *Y* passa de 7, a saída *Y* terá que ser representada por 4 bits: *Y*3, *Y*2, *Y*1, *Y*0. Confira a tabela verdade logo abaixo:

 *B*2 | *B*1 | *B*0 | *Y*3 | *Y*2 | *Y*1 | *Y*0 |  
 ---- | ---- | ---- | ---- | ---- | ---- | ---- |   
  0   |  0   |  0   |  0   |   1  |   0  |   1  |
  0   |  0   |  1   |  0   |   0  |   1  |   1  |
  0   |  1   |  0   |  0   |   0  |   0  |   1  | 
  0   |  1   |  1   |  0   |   0  |   0  |   1  | 
  1   |  0   |  0   |  0   |   0  |   1  |   1  | 
  1   |  0   |  1   |  0   |   1  |   0  |   1  |
  1   |  1   |  0   |  0   |   1  |   1  |   1  |
  1   |  1   |  1   |  1   |   0  |   0  |   1  |

- Descrevendo em *SystemVerilog*

Note que serão descritas 4 saídas para *Y*. As quatro saídas descritas são justamente os bits que representam a saída *Y*, como já mencionado anteriormente.

~~~
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
~~~

- Simulando no ModelSim

Podemos então utilizar o ModelSim para saber se a tabela verdade obtida é congruente com os resultados obtidos da simulação. Peguemos, por exemplo, a combinação de bits da entrada 100 (valor 4) que resulta na combinação de bits da saída 0011 (valor 3).

![Circuitoquatro](/Projeto%2005%20-%20Assets/P5%20circuitocinco.jpg)