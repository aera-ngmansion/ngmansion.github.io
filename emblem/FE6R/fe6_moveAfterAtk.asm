@thumb
@org $0801b932

ldrb	r0, [r2, #26]	;移動+
mov	r1, #18
ldsb	r1, [r4, r1]	;クラス基礎移動
add	r0, r0, r1
ldrb	r2, [r3, #16]	;消費移動
sub r0, r0, r2
ble	false						;残り0なら終了
;攻撃後かどうか
ldrb	r1, [r3, #17]
sub	r1, r1, #2
cmp	r1, #1
bhi	normal			;(0,1,4,5,6...)はjump

;残り移動が2以下かどうか
sub r0, r0, #2
ble normal
add r0, r0, r2
strb r0, [r3, #16]

normal:
bl	$080182d0
lsl	r0, r0, #24
@dcw 0xd105
false:


