/// @description Insert description here
// You can write your code in this editor

//so faz isso tudo se eu nao estou no estado 4

if (current_state != "state_04") {
	//perdendo 1 de vida
	if (current_life > 0) {
		current_life -= 1;
	} else {
		instance_destroy();
	}

	instance_destroy(other);
}


