/// @description Insert description here
// You can write your code in this editor

//checando se eu nao estou no estado 4
if (current_state != "state_04") {
	sprite_index = spr_boss_fight	
}


//se apertar enter, boss perde 10 de vida
if(keyboard_check(vk_enter)) {
	current_life -= 10
}

//debug do estado atual
show_debug_message(current_state)

///alternando os estados
change_state();



//iniciando o estado 1
if (current_state == "state_01") {
	state_01();
	
} else if (current_state == "state_02") {
	state_02();

} else if (current_state == "state_03") {
	state_03();

} else if (current_state == "state_04") {
	state_04();
}




