/// @description Insert description here
// You can write your code in this editor


//criando o tiro
instance_create_layer(x, y, "Shoots", obj_shoot_minion);


//reiniciando o alarme
alarm[0] = room_speed / 2;

//avisando que ja dei o primeiro tiro
first_shot = true;


