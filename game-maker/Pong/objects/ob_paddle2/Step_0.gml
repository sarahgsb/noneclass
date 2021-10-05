/// @description Insert description here
// You can write your code in this editor
// seguindo o y da bola
// acessando a bola e pegando o y dela

//colocando o y da raquete para ser igual o da bola
if (automatic == true) {
	//y = obj_ball.y	- impossivel de ganhar da AI
	
	y = lerp(y, obj_ball.y, 0.05);
}


if (y < 64) {
	//travando em 64
    y = 64;
}

if (y > 416) {
	y = 416
}