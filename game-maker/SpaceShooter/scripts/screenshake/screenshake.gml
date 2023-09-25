// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screenshake(_shake){
	var _screen = instance_create_layer(0, 0, "Shield", obj_screenshake);
	_screen.shake = _shake;
}

//funcao pra ganhar pontos
function earning_points(_points) {
	if (instance_exists(obj_control)) {
		obj_control.earn_points(_points);
	}
}

//destruindo a sequence do boss
function destroy_seq() {
	//tentando pegar a sequencia da minha layer
	var _elements = layer_get_all_elements("Boss_arriving");
	layer_sequence_destroy(_elements[0]);
	
	//criando o boss
	instance_create_layer(960, 256, "Boss", obj_boss);
}

//criando a sequencia do player
function create_seq_level_end() {
	if (instance_exists(obj_player)) {
	layer_sequence_create("Sequences", obj_player.x , obj_player.y, seq_level_end)
	
	//destruindo player
	instance_destroy(obj_player, false);
	
	//impedindo que o control crie o game over
	//avisando que o level foi completo
	if (instance_exists(obj_control)) {
		obj_control.complete_level = true;
		}
	}
}

function create_transition() {
var _transition = instance_create_layer(0, 0, "Player", obj_transition)
_transition.destination = rm_start;
}

