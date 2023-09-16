/// @description Criando variaveis

velocity = 5;

shooting = function() {
	// convertendo em um metodo
	var fire = keyboard_check_pressed(vk_space);
	if (fire) {
	// criando o objeto tiro
	instance_create_layer(x, y - sprite_height / 3, "Shoots", obj_shoot_player)
	}
}
