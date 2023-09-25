/// @description Insert description here
// You can write your code in this editor

//deixar a tela escura se eu ainda nao troquei de room
if (!change_room) {
	alpha += 0.02
} else {
	//troquei de room, diminuo o alpha
	alpha -= 0.02
}

if (alpha <= 0) {
	instance_destroy()
}

//checar se a tela esta totalmente escura, ou seja, o alpha é 1 ou mais
//mudar de room se eu ainda nao troquei de room
if (alpha >= 1 && !change_room) {
 room_goto(destination)
}






