/// @description Insert description here
// You can write your code in this editor

//repetindo o mesmo codigo
//criando os inimigos
// se nao existe o obieto inimigo 1
if (!instance_exists(obj_enemy1)) {
	var _repeat = 10 * level
	// crio inimigos se não existir mais na room
	repeat(_repeat) {
	create_enemy();
	}
}



//reiniciando o alarme em 1 segundo
alarm[0] = room_speed * 5;
