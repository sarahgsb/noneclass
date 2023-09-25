/// @description Insert description here
// You can write your code in this editor

//iniciando alarme

alarm[0] = room_speed;


//começando invisivel
image_alpha = 0;
first_shot = false;

life = 10;

scale = 1;
increase_scale = 0.01;

//checando se eu  com outro minion
if (place_meeting(x, y, obj_boss_minion)) {
	//se colidi com outro minion, eu subo 128 pixels
	y -= 128
}

