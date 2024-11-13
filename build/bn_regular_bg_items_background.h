#ifndef BN_REGULAR_BG_ITEMS_BACKGROUND_H
#define BN_REGULAR_BG_ITEMS_BACKGROUND_H

#include "bn_regular_bg_item.h"

//{{BLOCK(background_bn_gfx)

//======================================================================
//
//	background_bn_gfx, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 964 tiles (t|f reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 61696 + 2048 = 64256
//
//	Time-stamp: 2024-11-12, 23:39:00
//	Exported by Cearn's GBA Image Transmogrifier, v0.9.2
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BACKGROUND_BN_GFX_H
#define GRIT_BACKGROUND_BN_GFX_H

#define background_bn_gfxTilesLen 61696
extern const bn::tile background_bn_gfxTiles[1928];

#define background_bn_gfxMapLen 2048
extern const bn::regular_bg_map_cell background_bn_gfxMap[1024];

#define background_bn_gfxPalLen 512
extern const bn::color background_bn_gfxPal[256];

#endif // GRIT_BACKGROUND_BN_GFX_H

//}}BLOCK(background_bn_gfx)

namespace bn::regular_bg_items
{
    constexpr inline regular_bg_item background(
            regular_bg_tiles_item(span<const tile>(background_bn_gfxTiles, 1928), bpp_mode::BPP_8, compression_type::NONE), 
            bg_palette_item(span<const color>(background_bn_gfxPal, 256), bpp_mode::BPP_8, compression_type::NONE),
            regular_bg_map_item(background_bn_gfxMap[0], size(32, 32), compression_type::NONE, 1, false));
}

#endif

