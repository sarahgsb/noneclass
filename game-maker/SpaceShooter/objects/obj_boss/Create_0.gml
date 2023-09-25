/// @description Insert description here
// You can write your code in this editor

/*
Estado 1 - Parado dando o tiro 2
Estado 2 - Movendo dando o tiro 1
Estado 3 - Parado intercalando entre o tiro 1 e 2

(Estado 4)
Estado especial 1 - Ficar invulnerável enquanto criar 2 minions para recuperar a vida

*/

//tocando a musica do boss
audio_play_sound(snd_boss_fight, 0, 1);


//iniciando o sistema de vida
life_max = 1000;
current_life = life_max;

current_state = choose("state_01", "state_02", "state_03");

delay_shoot = room_speed / 2; //meio segundo
wait_shoot = 0;

delay_state = room_speed * 8;// 8 segundos
wait_state = delay_state;

horizontal_velocity = 3;

//criando minions
create_minions = true;

shoot_02 = function() {
		instance_create_layer(x, y + 80, "Shoots", obj_shoot_enemy2);
		//som do tiro
		audio_play_sound(sfx_laser1, 1, 0)
}

///@method tiro_01(true_direita_false_esquerda)
shoot_01 = function(_right) {
		if (_right) {
			var _posx = 160;
		} else {
			var _posx = -160;
		}
	
		instance_create_layer(x + _posx, y + 10, "Shoots", obj_shoot_enemy1);
		//som do tiro
		audio_play_sound(sfx_laser1, 1, 0)
}

//metodo do estado
state_01 = function() {
//diminindo o valor da espera do tiro
	wait_shoot -= 1;
	//criando o tiro 2 se a espera do tiro for menor do que o igual a 0
	if (wait_shoot <= 0) {
		instance_create_layer(x, y + 80, "Shoots", obj_shoot_enemy2);
	//atirei, vou mandar ele esperar
		wait_shoot = delay_shoot;
	}
}

state_02 = function() {
		//indo para a direita e esquerda
		x += horizontal_velocity;
		//invertendo a velocidade horizontal se eu toquei no limite da tela
     	if (x >= 1632 || x <= 288) {
		//inverta a velocidade horizontal
		horizontal_velocity *= -1
		}
		wait_shoot -= 1;
	if (wait_shoot <= 0) {
		//esquerda
		//instance_create_layer(x - 160, y + 10, "Shoots", obj_shoot_enemy1);
		shoot_01(false);
		shoot_01(true);
		//direita
		//instance_create_layer(x + 160, y + 10, "Shoots", obj_shoot_enemy1);
		wait_shoot = delay_shoot * 2;
	}
}

state_03 = function() {
	wait_shoot -= 1;
	
	if (wait_shoot <= 0) {
		shoot_02();
		wait_shoot = delay_shoot * 2;
	}
	
	if (wait_shoot == delay_shoot) {
		shoot_01(false);
	}
	
	if (wait_shoot == delay_shoot + round(delay_shoot / 2)) {
		shoot_01(true);
	}
}

state_04 = function() {
	//trocando de sprite
	sprite_index = spr_boss_dark;
	
	//indo para o meio da tela
	x += sign((room_width / 2) - x);
	
	
	//criando os minions se eu posso criar minions
	
	if (create_minions) {
	//direito
	var _minion = instance_create_layer(128, 672, "Enemies", obj_boss_minion)
	_minion.image_angle = 90;
	
	//direita
	_minion = instance_create_layer(1760, 672, "Enemies", obj_boss_minion)
	_minion.image_angle = 270;
	
	//já criei os minions, nao posso criar mais
	create_minions = false;
	}
}


change_state = function(){
	//diminuindo a espera do estado
	wait_state -= 1;
	if (wait_state <= 0 ) {
		//vou escolher um outro estado se minha vida não for menor do que a metade
	
		if (current_life > life_max / 2) {
		current_state = choose("state_01", "state_02", "state_03");
		} else {
		//estou com metade ou menos da vida
		current_state = choose("state_01", "state_02", "state_03", "state_04");
		}
		//fazendo o espera estado ter um valor alto de novo
		wait_state = delay_state;
		//pode criar minions
		create_minions = true;
}
}



