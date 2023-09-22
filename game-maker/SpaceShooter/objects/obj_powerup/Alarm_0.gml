/// @description Insert description here
// You can write your code in this editor

//diminuir o alpha (transparencia) em 10% (em 0.1)

image_alpha -= 0.2;

//me destruindo se meu alpha for menor ou igual a 0.5
if (image_alpha <= 0) {
	instance_destroy(id, false)
}

//repetir o alarme em 1 segundo
alarm[0] = room_speed;






