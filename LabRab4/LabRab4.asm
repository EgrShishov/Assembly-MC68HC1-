 org $8000
 ldx #$0000
 ldaa #0
 ldab #$ff ;while condition

filling_ff:
 stab 0,x ;filling 256-bits array with ff
 inca
 inx
 cba
 beq start_filling
 ;beq done
 bra filling_ff

start_filling:
 ldaa #0
 ldab #$ff
 ldx #$0000
 bra filling

filling:
 staa 0,x ;filling 256-bits array
 inca
 inx
 cba
 beq reverse
 bra filling

reverse:
 ldx #$0000
 ldy #$00ff
 bra reverseloop

reverseloop:
 ldaa 0,x
 ldab 0,y
 psha
 pshb
 pula
 pulb
 staa 0,x
 stab 0,y
 inx
 sty $0101
 cpx $0101
 beq done
 dey
 bne reverseloop

done:
 stop
 nop