@thumb
@org $08025cd8
	ldrh r0, [r0,#12]
	lsl r0, r0, #16
	lsr r0, r0, #30
	add r0, r0, #1
	bne check
	mov r0, #0
check:
	bx lr
	
flip:
	ldr r1, [adr+4]
	ldr r1, [r1]
	ldrh r1, [r1, #4]
	lsl r1, r1, #22
	bpl end
	sub r0, r0, #1
	beq end
	mov r0, #1
end:
	bx lr
adr:
@dcd $0858e578



@org $08025d52
	bl flip
	pop {pc}
;会心の出来なのでは？