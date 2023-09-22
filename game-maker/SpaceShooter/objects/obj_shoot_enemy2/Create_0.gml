/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//definindo a minha velocidade
speed = 6
// achando a direção para onde eu devo ir
//indo para aquela direção
//checando se o player existe no jogo
if (instance_exists(obj_player)) {
	direction = point_direction(x, y, obj_player.x, obj_player.y)
}

image_angle = direction + 90;

