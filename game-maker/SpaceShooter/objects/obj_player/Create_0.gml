/// @description Criando variaveis

// Velocidade - .05  - Limite = 10 //45%
// Espera tiro - 10% - Limite = 20 //45%
// Level tiro - 1    - Limite = 5  //10%


velocity = 5;

wait_shoot = room_speed;

level_shoot = 1;

shooting = function() {
	// convertendo em um metodo
	var _fire = keyboard_check_pressed(vk_space);
	//Y do meu tiro
	var _y_shoot = y -  (sprite_height / 3);
	
	if (_fire /*&& alarm[0] == -1*/) {
		//alarm[0] = wait_shoot;  //metodo pra esperar 1 segundo pra atirar
	// criando o objeto tiro
	// criar uma condição para atirar dependendo do level do tiro
	// tiro do level 1
	if (level_shoot == 1) {
		instance_create_layer(x, _y_shoot, "Shoots", obj_shoot_player)
		}
	//tiro do level 2
	else if (level_shoot == 2) {
		shoot2();
		}
	else if (level_shoot == 3) {
		instance_create_layer(x, _y_shoot, "Shoots", obj_shoot_player)
        shoot2();
		}
	else if (level_shoot == 4) {
		shoot3();
			}
	else if (level_shoot == 5){
		shoot2();
		shoot3();
			}
		}
	}

//metodo pra criar tiro 2
shoot2 = function() {
	var _y_shoot = y -  (sprite_height / 3);
//criando o segundo tiro da asa esquerda
		var _shoot_1 = instance_create_layer(x - 60, _y_shoot + 10, "Shoots", obj_shoot2_player)
		 _shoot_1.hspeed = -5
		 
		 //segundo tiro da asa direita
		var _shoot_2 = instance_create_layer(x + 60,  _y_shoot + 10, "Shoots", obj_shoot2_player)
		_shoot_2.hspeed = 5
		}

//metodo pra criar o tiro 4
shoot3 = function () {
var _direction = 75;
var _y_shoot = y -  (sprite_height / 3);

	repeat(3) {
		var _my_shoot = instance_create_layer(x, _y_shoot + 10, "Shoots", obj_shoot_player)
		//definir a direção
		_my_shoot.direction = _direction;
		//fazer o tiro olhar para a direção que esta indo
		_my_shoot.image_angle = _my_shoot.direction - 90;
			
		//aumentar a direcao em 15
		_direction += 15
	}
}

///@method level_up(_chance)
level_up = function(_chance) {
	if (_chance >= 90) {
		if (_chance < 5) {
			level_shoot += 1
		} else if (_chance >= 45) {
			if (wait_shoot > 20) {
				wait_shoot *= 0.9
			}
		} else {
			if (velocity < 10) {
				velocity += 0.5
			}
		}
	}
	


}

