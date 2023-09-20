/// @description Insert description here
// You can write your code in this editor

//me desenhando
draw_self()



gpu_set_blendmode(bm_add)

draw_sprite_ext(sprite_index, image_index, x, y,
				image_xscale + 0.2, image_yscale + 0.2,
				image_angle, color, image_alpha - 0.2);

gpu_set_blendmode(bm_normal)






