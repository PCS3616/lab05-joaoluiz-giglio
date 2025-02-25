@ /0000
        GD  /0000; obtem x e salva no endereço 100
        MM  /0100

        GD  /0000; obtem os espaços e salva no endereço 102
        MM  /0102

        GD  /0000; obtem y e salva no endereço 104 
        MM  /0104

        LD /0100; carrega x
        SB ZERO_ASC; subtrai 3030 do x em hexadecimal
        MM /0100; salva x

        LD /0104; carrega y
        SB ZERO_ASC; subtari 3030 em hexadecimal
        MM /0104; salva y

        AD /0100; somamos os x e y processados
        MM /0106; salvamos o valor da soma

        DV DESESSEIS; obetmos x+y deslocado a direita
        ML DESESSEIS; obtemos x+y sem o digito menos significativo, deslacando novamente `a esquerda

        MM /0108; salva este valor em 108

        LD /0106
        SB /0108; o valor no acumulador 'e o digito menos significativo (LSB)
        SB DEZ; obtemos a subtraçao do bit menos significativo e do a
        JN LAST; se o resultado for negativo entao A e maior q LSB 
        JP INTER; caso contrario executa um processo intermedi'ario

INTER   LD /0106; carrega a soma obtida
        SB DEZ; subtrai 000A
        AD CEM_HEXA; soma 0100
        MM /0106; salva o valor no endereeço 0106
        JP LAST

LAST    LD /0106; carrega o valor processado at'e aqui
        AD ZERO_ASC; soma x3030
        MM /0106; salva o valor
        JP FINAL; desvio incondicional

FINAL   LD /0106
        PD /100; exibe no monitor
        HM =0



@ /0300
CEM_HEXA  K /0100
DESESSEIS K /0010
DEZ       K /000A
ZERO_ASC  K /3030