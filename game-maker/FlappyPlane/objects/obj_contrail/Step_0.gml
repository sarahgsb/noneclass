/// @description Insert description here
// You can write your code in this editor

// crescendo
image_xscale += 0.01;
image_yscale += 0.01;

//fazendo desaparecer
image_alpha -= 0.01;

// desrtuindo ao ficar transparente
if (image_alpha <= 0) {
    instance_destroy()
}