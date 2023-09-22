/// @description Insert description here
// You can write your code in this editor


//checando se o player nao existe e se eu ainda nao criei a minha sequencia
if (!instance_exists(obj_player) and !gameover_seq) {
	//criando a minha sequencia
	//criando apenas uma sequencia
	gameover_seq = layer_sequence_create("Sequences", room_width/2, room_height/2, seq_gameover)
}



 

