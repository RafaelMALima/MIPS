## MIPS VHDL
Este projeto consiste de um processador MIPS single cycle, com as seguintes instruções implementadas:


-    Carrega palavra (load word: lw);
-    Armazena palavra (store word: sw).
-    Soma (add);
-    Subtração (sub);
-    E lógico (AND);
-    OU lógico (OR);
-    Comparação menor que (set if less than: slt).
-    Desvio se igual (branch equal: beq);
-    Salto incondicional (jump: j).
-    Carrega imediato para 16 bits MSB (load upper immediate: lui).
-    Soma com imediato (addi);
-    E lógico com imediato (ANDI);
-    OU lógico com imediato (ORI);
-    Comparação menor que imediato (set if less than: slti).
-    Desvio se não igual (branch not equal: bne);
-    Salto e conecta (jump and link: jal);
-    Salto por registrador (jump register: jr).

O projeto foi implementado em VHDL, usando a placa FPGA ALTERA 5CEBA4F23C7N, e o Quartus como IDE.

Para observação do que está acontecendo dentro do processador, os display 7 SEG foram conectados de forma que, de acordo com o switch 0 da placa, eles mostram ou o valor do Program Counter, ou a saída da ULA(Unidade lógica aritmética)
