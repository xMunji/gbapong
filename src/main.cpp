#include "bn_core.h"
#include "bn_sprite_ptr.h"
#include "bn_keypad.h"
#include "bn_fixed.h"
#include "bn_regular_bg_ptr.h"

// Include the generated header for the regular background and the paddle/ball sprites
#include "bn_regular_bg_items_background.h"
#include "bn_sprite_items_paddle.h"
#include "bn_sprite_items_ball.h"

int main()
{
    bn::core::init();

    // Load the background image as a regular background
    bn::regular_bg_ptr background = bn::regular_bg_items::background.create_bg(0, 0);

    // Create paddle and ball sprites and set initial positions
    bn::sprite_ptr paddle = bn::sprite_items::paddle.create_sprite(0, 70);  // Positioned near the bottom
    bn::sprite_ptr ball = bn::sprite_items::ball.create_sprite(0, 0);       // Positioned near the center

    // Set ball's initial speed
    bn::fixed ball_dx = 1;
    bn::fixed ball_dy = -1;

    while(true)
    {
        // Paddle movement controlled by the left and right keypad inputs
        if(bn::keypad::left_held())
        {
            paddle.set_x(paddle.x() - 2);  // Move paddle left
        }
        else if(bn::keypad::right_held())
        {
            paddle.set_x(paddle.x() + 2);  // Move paddle right
        }

        // Ball movement
        ball.set_position(ball.x() + ball_dx, ball.y() + ball_dy);

        // Bounce the ball off walls
        if(ball.x() <= -120 || ball.x() >= 120)  // Screen width boundaries
        {
            ball_dx = -ball_dx;  // Reverse horizontal direction
        }
        if(ball.y() <= -80)  // Top boundary
        {
            ball_dy = -ball_dy;  // Reverse vertical direction
        }

        // Check for collision with the paddle
        if(ball.y() >= paddle.y() - 8 &&  // Ball is near paddle
           ball.x() > paddle.x() - 16 && ball.x() < paddle.x() + 16)  // Ball is within paddle's horizontal range
        {
            ball_dy = -ball_dy;  // Bounce the ball upward
        }

        // Check if the ball hits the bottom of the screen
        if(ball.y() >= 80)
        {
            // Reset ball to the center with initial downward movement
            ball.set_position(0, 0);
            ball_dx = 1;
            ball_dy = -1;
        }

        bn::core::update();  // Update the display and process input each frame
    }
}
