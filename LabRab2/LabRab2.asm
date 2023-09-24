 org $8000
 ldaa #$0
 staa $1
 staa $3
 ldx #$1111
 ldy #$2222
 ldaa #$33
 ldab #$44
 staa $2
 stab $4
 ldd #$0
 addd $1
 addd $3
 pshb
 psha
 stx $2
 pula
 pulb
 addd $1
 pshb
 psha
 stx $2
 ldaa #$0
 staa $2
 pula
 pulb
 addd $2
 pshb
 psha
 sty $2
 addd $1
 pshb
 psha
 ldaa #$0
 sty $1
 staa $2
 pula
 pulb
 addd $2