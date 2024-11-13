
@{{BLOCK(paddle_bn_gfx)

@=======================================================================
@
@	paddle_bn_gfx, 16x8@4, 
@	+ palette 16 entries, not compressed
@	+ 2 tiles not compressed
@	Total size: 32 + 64 = 96
@
@	Time-stamp: 2024-11-12, 21:39:35
@	Exported by Cearn's GBA Image Transmogrifier, v0.9.2
@	( http://www.coranac.com/projects/#grit )
@
@=======================================================================

	.section .rodata
	.align	2
	.global paddle_bn_gfxTiles		@ 64 unsigned chars
	.hidden paddle_bn_gfxTiles
paddle_bn_gfxTiles:
	.word 0x00000000,0x00000000,0x00000000,0x11112100,0x11211100,0x00000000,0x00000000,0x00000000
	.word 0x00000000,0x00000000,0x00000000,0x00212121,0x00111211,0x00000000,0x00000000,0x00000000

	.section .rodata
	.align	2
	.global paddle_bn_gfxPal		@ 32 unsigned chars
	.hidden paddle_bn_gfxPal
paddle_bn_gfxPal:
	.hword 0x0000,0x5074,0x68FA,0x0000,0x0000,0x0000,0x0000,0x0000
	.hword 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000

@}}BLOCK(paddle_bn_gfx)
