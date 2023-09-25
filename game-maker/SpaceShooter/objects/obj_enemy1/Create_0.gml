/// @description Insert description here
// You can write your code in this editor

vspeed = 3;

//chance de dropar o item - 20%
chance = 20;

points = 10;

// iniciando o alarme com tempo entre 1 e 3 segundos
alarm[0] = random_range(1, 3) * room_speed;

//checando se estou colidindo com outro inimigo
//se eu colidir com alguem, eu me destruo
if (place_meeting(x, y, obj_enemy1)) {
	//nao executando o evento destroy
	instance_destroy(id, false)
}

//Criando o tiro se eu ja estou aparecendo na tela
shooting = function() {
	if (y >= 0) {
instance_create_layer(x - 3, y + sprite_height / 3, "Shoots", obj_shoot_enemy1);
	
	//som do tiro
	audio_play_sound(sfx_laser1, 1, 0)
	}
}

///@method drop_item(chance_de_dropar_em_porcentagem)
drop_item = function(_chance) {
	var _valor = random(100);
	//se o valor for menor que a chance, ele cria o item
		if (_valor < _chance && y > 96) {
			instance_create_layer(x, y , "Shoots", obj_powerup)
		}
}