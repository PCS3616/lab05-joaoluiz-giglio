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

HALT    HM =0

@ /0100
N       K =0
RES     K =1
TEMP    K =0
ONE     K =1