/// @description Insert description here
// You can write your code in this editor



//definindo o blendmode

gpu_set_blendmode(bm_add);
//desenhando a sprite
draw_sprite_ext(sprite_index, image_index, x, y,
				image_xscale, image_yscale, image_angle,
				image_blend, image_alpha);
gpu_set_blendmode(bm_normal);



