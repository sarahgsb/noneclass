/// @description Insert description here
// You can write your code in this editor


//ficando visivel em 1 segundo
//se eu ainda nao estou visivel

if (image_alpha < 1 && first_shot == false /*ou !first_shot*/){
	image_alpha += 1 / room_speed;
}


//fazendo ele tornar o aumeto da escala negativo se ficou maior que 1.5
//fazendo ele tambem inverter o sinal da escala se for menor que 1
if ((scale > 1.5) or (scale < 1)) {
	//invertendo o aumento da escala
	increase_scale *= -1;
}
//aumentando a escala pelo valor de aumento
scale += increase_scale;
//diminuindo a escala enquanto ela for menor do que 0.5



