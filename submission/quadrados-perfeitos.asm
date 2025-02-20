LOOP        LD SUM; Carrega o valor da soma ate agora
            MM ADRESS; Salva no endereço desejado
            AD SOMADOR; Soma um valor impar `a soma
            MM SUM; Salva a nova soma na memoria

            LD SOMADOR; Carrega o somador
            AD TWO; Incrementa o somador
            MM SOMADOR; Salva o somador

            LD ADRESS
            AD TWO
            MM ADRESS

            LD COUNT
            SB ONE
            MM COUNT

            JN HALT
            JP LOOP

HALT        HM =0

COUNT       K =0064
ADRESS      K /0100
ONE         K /0001
TWO         K /0002
SOMADOR     K /0001
SUM         K /0000
