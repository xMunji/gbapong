#include "bn_core.h"
#include "bn_sprite_text_generator.h"
#include "bn_sprite_ptr.h"

// Include generated headers for paddle and ball assets
#include "bn_sprite_items_ball.h"
#include "bn_sprite_items_paddle.h"

int main()
{
    bn::core::init();

    // Initialize the paddle and ball sprites
    bn::sprite_ptr paddle = bn::sprite_items::paddle.create_sprite(0, -64);  // Example position
    bn::sprite_ptr ball = bn::sprite_items::ball.create_sprite(0, 0);  // Center position

    while(true)
    {
        // Update ball and paddle positions based on input (placeholder logic here)

        bn::core::update();  // Refresh the screen each frame
    }
}
