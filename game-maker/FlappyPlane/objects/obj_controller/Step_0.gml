/// @description Ganhando pontos
// You can write your code in this editor
score_player += 0.1 * global.level;


// ganhar level se os pontos forem maior que 100
if (score_player > next_level) {
	global.level += 1
	// aumentando pontos necessarios, quando atinge a meta, dobra a meta
	next_level *= 2;
	// tocando som ao ganhar level
	audio_play_sound(snd_level_up, 1, false);
}

//show_debug_message(global.level)

// ajustando a velocidade do brackground
var background = layer_get_id("Background");
layer_hspeed(background, -1 - global.level);
// ajustando a velocidade do chao
var floor_game = layer_get_id("Floor");
layer_hspeed(floor_game, -4 - global.level);