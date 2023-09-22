/// @description Insert description here
// You can write your code in this editor


//diminuindo o image_index
if (image_index = 0) {
	//diminuir a imagem
	image_index -= 1;
	//ficar mais transparente
	image_alpha -= 0.2;
} else {
	instance_destroy();
}

//reiniciando o alarme em 1 segundo
alarm[0] = room_speed;





