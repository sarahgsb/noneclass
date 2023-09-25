/// @description Insert description here
// You can write your code in this editor

//repetindo o mesmo codigo
//criando os inimigos
// se nao existe o obieto inimigo 1
if (!instance_exists(obj_enemy1)) {
	var _repeat = 10 * level
	// crio inimigos se não existir mais na room
	//so criar inimigos se eu ainda nao cheguei no level 10
	if (level < 10) {
		repeat(_repeat) {
		create_enemy();
		}
	} else {
		//criar o boss
		if(create_boss) {
			layer_sequence_create("Boss_arriving", 960, 512, seq_boss_arriving);
			
		//avisando que nao posso mais criar o boss	
		create_boss = false;
		
		//parando de tocar a musica
		audio_stop_all();
		}
	}
}



//reiniciando o alarme em 1 segundo
alarm[0] = room_speed * 5;
