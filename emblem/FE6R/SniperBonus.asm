@thumb
@org 0x02492c
	ldrb	r2, [r4, #19]	;技をロード
	lsl	r2, r2, #1
	add	r2, r2, r0
	ldrb	r0, [r4, #23]	;幸運をロード
;	lsr	r1, r0, #31
;	add	r0, r0, r1
	asr	r0, r0, #1
	add	r0, r0, r2
	mov r1, #81
	ldsb	r1, [r4, r1]	;武器相性
	add	r1, r1, r0
Bonus
	ldr r0, [r4, #4]
	ldrb r0, [r0, #4]
	lsr	r0, r0, #1
	cmp r0, #9
	bne	notSniper
	add	r1, #20
notSniper:
	mov	r0, #94
	strh	r1, [r4, r0]
	pop	{r4, pc}
	
	
	
	
