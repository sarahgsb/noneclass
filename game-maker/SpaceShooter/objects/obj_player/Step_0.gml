/// @description Insert description here
// You can write your code in this editor
var up, down, left, right; // fire;
up = keyboard_check(ord("W")) or keyboard_check(vk_up);
down = keyboard_check(ord("S")) or keyboard_check(vk_down);
left = keyboard_check(ord("A")) or keyboard_check(vk_left);
right = keyboard_check(ord("D")) or keyboard_check(vk_right);
//fire = keyboard_check_pressed(vk_space);

y += (down - up) * velocity;
x += (right - left) * velocity;

//  atirando, criando o tiro
shooting();
    //y -= up * velocity;
    //y += down * velocity;
    //x -= left * velocity;
    //x += right * velocity;

