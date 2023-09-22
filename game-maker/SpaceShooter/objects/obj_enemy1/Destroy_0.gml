/// @description Insert description here
// You can write your code in this editor

//criando a explosao
instance_create_layer(x, y, layer, obj_explosion);


//checando se o obj_controller existe
//Rodando o metodo de ganhar pontos
earning_points(points);


//dropando o item
drop_item(chance);

//criando o screenshake
screenshake(10);