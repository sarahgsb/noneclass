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