@ /0000
LOOP    LD SUM; Carrega o valor da soma ate agora
        MM LOOP; Salva no endereço desejado
        AD SOMADOR; Soma um valor impar `a soma
        MM SUM; Salva a nova soma na memoria

        LD SOMADOR; Carrega o somador
        AD TWO; Incrementa o somador
        MM SOMADOR; Salva o somador

        LD ADRESS; Incrementa o endereeço
        AD TWO
        MM ADRESS

        LD COUNT; Decresce o contador
        SB ONE
        MM COUNT

        JN HALT; Se o contador atinge valor negativo, encerra o programa
        JP LOOP

HALT    HM =0

COUNT   K /0004
ADRESS  K /0100
ONE     K /0001
TWO     K /0002
SOMADOR K /0001
SUM     K /0000

@ /0100
    K /0000
    K /0001
    K /0004
    K /0009 
    K /0010
    K /0019
    K /0024
    K /0031 
    K /0040
    K /0051
    K /0064
    K /0079 
    K /0090
    K /00a9
    K /00c4
    K /00e1 
    K /0100
    K /0121
    K /0144
    K /0169 
    K /0190
    K /01b9
    K /01e4
    K /0211 
    K /0240
    K /0271
    K /02a4
    K /02d9 
    K /0310
    K /0349
    K /0384
    K /03c1 
    K /0400
    K /0441
    K /0484
    K /04c9 
    K /0510
    K /0559
    K /05a4
    K /05f1 
    K /0640
    K /0691
    K /06e4
    K /0739 
    K /0790
    K /07e9
    K /0844
    K /08a1 
    K /0900
    K /0961
    K /09c4
    K /0a29 
    K /0a90
    K /0af9
    K /0b64
    K /0bd1 
    K /0c40
    K /0cb1
    K /0d24
    K /0d99 
    K /0e10
    K /0e89
    K /0f04
    K /0f81 