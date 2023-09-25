/// @description Insert description here
// You can write your code in this editor


//checando se o player nao existe e se eu ainda nao criei a minha sequencia
//e o level nao foi completo
if (!instance_exists(obj_player) and !gameover_seq and !complete_level) {
	//criando a minha sequencia
	//criando apenas uma sequencia
	gameover_seq = layer_sequence_create("Sequences", room_width/2, room_height/2, seq_gameover)

	audio_play_sound(sfx_lose, 1, 0)
}



 

