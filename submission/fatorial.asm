@ /0000
START   LD N
        JZ SET_ONE
        LV ONE
        MM RES

LOOP    LD N
        SB ONE
        MM TEMP
        LD N
        ML RES
        MM RES
        LD TEMP 
        MM N
        JZ HALT
        JP LOOP


SET_ONE LD ONE
        MM RES
        JP HALT

HALT    LD RES
        DV CONS
        MM RES
        HM /0000

@ /0100
N       K /0000
RES     K /0001
TEMP    K /0000
ONE     K /0001
CONS    K =262