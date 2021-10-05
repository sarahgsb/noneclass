/// @description Insert description here

// 0y da montanha de cima
var mountain_y = random_range(-160, 0);
instance_create_layer(864, mountain_y, "Instances", obj_mountain_top);


// garantir que o espaço entre montanhas é o mesmo
//Criando a montanha de baixo + 640 a distancia entre montanhas
instance_create_layer(864, mountain_y + 640, "Instances", obj_mountain_bottom);

var time_mininum = 1 / (1 + (global.level * 0.1)); 

//reiniciar o alarme entre 1 e 3 segundos
alarm[0] = room_speed * random_range(time_mininum, 3);