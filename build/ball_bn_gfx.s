
@{{BLOCK(ball_bn_gfx)

@=======================================================================
@
@	ball_bn_gfx, 8x8@4, 
@	+ palette 16 entries, not compressed
@	+ 1 tiles not compressed
@	Total size: 32 + 32 = 64
@
@	Time-stamp: 2024-11-12, 21:01:43
@	Exported by Cearn's GBA Image Transmogrifier, v0.9.2
@	( http://www.coranac.com/projects/#grit )
@
@=======================================================================

	.section .rodata
	.align	2
	.global ball_bn_gfxTiles		@ 32 unsigned chars
	.hidden ball_bn_gfxTiles
ball_bn_gfxTiles:
	.word 0x00000000,0x00222300,0x00003230,0x00000230,0x01100020,0x03100000,0x00330000,0x00000000

	.section .rodata
	.align	2
	.global ball_bn_gfxPal		@ 32 unsigned chars
	.hidden ball_bn_gfxPal
ball_bn_gfxPal:
	.hword 0x0000,0x0000,0x0421,0x18C6,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

@}}BLOCK(ball_bn_gfx)
