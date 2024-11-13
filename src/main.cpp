#include "bn_core.h"
#include "bn_sprite_items_ball.h"
#include "bn_sprite_items_paddle.h"
#include "bn_sprite_ptr.h"
#include "bn_keypad.h"

int main()
{
    bn::core::init();

    bn::sprite_ptr ball_sprite = bn::sprite_items::ball.create_sprite(0, 0);
    bn::sprite_ptr paddle_sprite = bn::sprite_items::paddle.create_sprite(0, 60);

    while(true)
    {
        bn::core::update();
    }
}
