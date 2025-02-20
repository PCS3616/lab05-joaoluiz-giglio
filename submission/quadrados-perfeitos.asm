@ /0000
LOOP    LD SUM; Carrega o valor da soma ate agora
        MM ADRESS; Salva no endereço desejado
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
    K /0000
    K /0000
    K /0000 
    K /0000
    K /0000
    K /0000
    K /0000 
    K /0000
    K /0000
    K /0000
    K /0000 
    K /0000
    K /0000
    K /0000
    K /0000 
    K /0000
    K /0000
    K /0000
    K /0000 
    K /0000
    K /0000
    K /0000
    K /0000 
    K /0000
    K /0000
    K /0000
    K /0000 
    K /0000
    K /0000
    K /0000
    K /0000 
    K /0000
    K /0000
    K /0000
    K /0000 
    K /0000
    K /0000
    K /0000
    K /0000 
    K /0000
    K /0000
    K /0000
    K /0000 
    K /0000
    K /0000
    K /0000
    K /0000 
    K /0000
    K /0000
    K /0000
    K /0000 
    K /0000
    K /0000
    K /0000
    K /0000 
    K /0000
    K /0000
    K /0000
    K /0000 
    K /0000
    K /0000
    K /0000
    K /0000 