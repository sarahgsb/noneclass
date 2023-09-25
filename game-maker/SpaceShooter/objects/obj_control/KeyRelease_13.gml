/// @description Reiniciando o jogo
// You can write your code in this editor

// reiniciando apenas se o player ja morreu
if (!instance_exists(obj_player)) {
	//room_restart()
	//criando o objeto transicao com o destino da room inicial
	var _transition = instance_create_layer(0, 0, "Player", obj_transition)
	_transition.destination = rm_start;
	
	////checando se os pontos sao a maior pontuacao
	//if (points > global.max_points) {
	//	global.max_points = points;
	//}
}

//OU
//if (gameover_seq) room_restart();


 





