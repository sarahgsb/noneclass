/// @description Insert description here
// You can write your code in this editor

//criando os inimigos
var _xx = irandom_range(64, 1888);
var _yy = irandom_range(-96, -1504);
instance_create_layer(_xx, _yy, "Enemies", obj_enemy1);


alarm[0] = room_speed;
