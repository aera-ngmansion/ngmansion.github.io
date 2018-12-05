@thumb


@org $08085800
	ldr	r5, [adr1]

@org $0808584c
	ldr	r0, [adr1]
	
@org $08085862
	ldr	r1, [$080859D8+4]

@org $0808586a
	ldr	r1, [$080859d4+4]
	
@org $08085886
	ldr	r1, [$080859dc+4]
	
@org $080858b8
	ldr	r3, =$0202aa64
	ldrb r3, [r3]
	lsl r3, r3, #30
	lsr r3, r3, #31
	bne false
	ldr	r3, [$080859bc]
	ldrb	r3, [r3, #15]
	cmp	r3, #0
	bne	false
	push {r4, r5, r6, r7, lr}
	b $080857b2
false:
	bx lr
adr1:
@dcd $0201f0e8