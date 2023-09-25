/// @description Insert description here
// You can write your code in this editor

//randomizando o jogo
randomize();

//iniciando o alarme em 1 segundo
alarm[0] = room_speed;

// iniciando o sistema de pontos
points = 0;

//iniciando o sistema de level
level = 1;

//quantos pontos eu preciso para o proximo level
next_level = 100;

//variavel de controle para o gameover
gameover_seq = noone;

create_boss = true;

complete_level = false;

//criando um metodo pra ganhar pontos
///@method earn_points(_points)
earn_points = function(_points) {
	points += _points
	//ganhando level se os pontos forem maior que o proximo level
	if (points > next_level) {
		level += 1;
		
		//dobrando de valor do proximo level
		next_level *= 2;
	}
}

//criando metodo para gerar inimigos
create_enemy = function () {
	//criando os inimigos - definindo a posicao x e y
	var _xx = irandom_range(64, 1888);
	//aumentando o limite com base no level do jogo
	var _yy = irandom_range(-96, -1504 - (level * 800));


	//criando o inimigo com base no level
	// a chance de criar um inimigo mais forte depende do level
	var _chance = random_range(0, level);
	//definindo quando inimigo vou criar
	var _enemy = obj_enemy1

	//se o valor da chance for maior que 2, criar o inimigo 2
	if (_chance > 2) {
	_enemy = obj_enemy2
	}
	
	// criando inimigo na posicao definida
	instance_create_layer(_xx, _yy, "Enemies", _enemy);
}



