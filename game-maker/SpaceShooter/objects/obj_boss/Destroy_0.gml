/// @description Insert description here
// You can write your code in this editor


//criando a animação de morte no mesmo local que eu estou
layer_sequence_create("Boss_death", x, (room_height / 2) - 32, seq_boss_death)


global.total_enemies += 1;

earning_points(200);



