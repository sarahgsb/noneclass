/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

chance = 30;

points = 20;

// Criando a variavel de controle para saber se eu posso
// me mover para os lados
move_side = true; 

//criando a função de tiro
shooting = function () {
//checando se ja entrei na room
	if (y > 0 ) {
	//criando o tiro
	instance_create_layer(x, y + sprite_height / 3, "Shoots", obj_shoot_enemy2)
	}
}