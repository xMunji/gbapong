
@{{BLOCK(ball_bn_gfx)

@=======================================================================
@
@	ball_bn_gfx, 8x8@4, 
@	+ palette 16 entries, not compressed
@	+ 1 tiles not compressed
@	Total size: 32 + 32 = 64
@
@	Time-stamp: 2024-11-12, 23:39:00
@	Exported by Cearn's GBA Image Transmogrifier, v0.9.2
@	( http://www.coranac.com/projects/#grit )
@
@=======================================================================

	.section .rodata
	.align	2
	.global ball_bn_gfxTiles		@ 32 unsigned chars
	.hidden ball_bn_gfxTiles
ball_bn_gfxTiles:
	.word 0x007C7600,0x0199CE90,0x0CDAEBEB,0x5BCBBAED,0xCAB9CDBA,0x3E9CDB63,0x09EEED30,0x00187900

	.section .rodata
	.align	2
	.global ball_bn_gfxPal		@ 32 unsigned chars
	.hidden ball_bn_gfxPal
ball_bn_gfxPal:
	.hword 0x1C03,0x2004,0x2004,0x2804,0x2005,0x2C05,0x3005,0x3405
	.hword 0x3805,0x3C06,0x3C05,0x4807,0x4C06,0x5408,0x600A,0x318C

@}}BLOCK(ball_bn_gfx)
