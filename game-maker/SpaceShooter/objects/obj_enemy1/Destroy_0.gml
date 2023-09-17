/// @description Insert description here
// You can write your code in this editor

//criando a explosao
instance_create_layer(x, y, layer, obj_explosion);


//checando se o obj_controller existe
if (instance_exists(obj_controller)) {
	//Rodando o metodo de ganhar pontos
	obj_controller.earn_points(points);
}