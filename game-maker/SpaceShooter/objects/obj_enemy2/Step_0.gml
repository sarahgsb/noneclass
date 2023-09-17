/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

//Checando se ja passei de 1/3 da tela

if (y > room_height / 3) && move_side == true {

// Checando de que lado da room eu estou 
//Se o meu x for maior que 1920/2, ou seja, 960
	if (x > (room_width / 2)) {
	//ir a esquerda
		hspeed = -4
		
	//avisando que ele nao pode mais se mover
		move_side = false;
	} else {
	//ir para a direita
		hspeed = 4
		//avisando que nao pode mais se mover
		move_side = false
	}
}
