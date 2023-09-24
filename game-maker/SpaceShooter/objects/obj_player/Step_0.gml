/// @description Insert description here
// You can write your code in this editor
var _up, _down, _left, _right; // fire;
_up = keyboard_check(ord("W")) /*or keyboard_check(vk_up)*/;
_down = keyboard_check(ord("S")) /*or keyboard_check(vk_down)*/;
_left = keyboard_check(ord("A")) /*or keyboard_check(vk_left)*/;
_right = keyboard_check(ord("D")) /*or keyboard_check(vk_right)*/;

//fire = keyboard_check_pressed(vk_space);

make_shield();

//se movendo para cima/baixo e para os lados
y += (_down - _up) * velocity;
x += (_right - _left) * velocity;

//impedindo o player de sair da tela
//if (x <= 64) x = 64;
//if (x >= 1856) x = 1856;
//if (y <= 64) y = -64;
//if (y >= 1024) y = 1024;

x = clamp(x, 64, 1856);
y = clamp(y, 64, 1024);

//  atirando, criando o tiro
shooting();

    //y -= up * velocity;
    //y += down * velocity;
    //x -= left * velocity;
    //x += right * velocity;

// Fazer com que o level do tiro suba sempre que aperta a seta pra cima
// apenas se o level do tiro for menor que 5
if (keyboard_check_pressed(vk_up)) {
	if (level_shoot < 5) {
		level_shoot += 1
	}
}

//fazer co mque o level do tiro diminua em 1 sempre que eu apertar a seta pra baixo
// e s o level do tiro for maior que 1
if (keyboard_check_pressed(vk_down) && (level_shoot > 1)) {
	level_shoot -= 1
}

//show_debug_message(level_shoot)

/////diminuir espera tiro (seta esquerda) em 10%
/////basta multiplicar por 0.9 se a espera do tiro for maior que 10
//if (keyboard_checked_pressed(vk_left) && (wait_shoot > 20)) {
//	wait_shoot *= .9
//}
// ///aumentar espera tiro (direita) em 10%
/////basta multiplicar por 1.1
//if (keyboard_checked_pressed(vk_right) && (wait_shoot < 20)) {
//	wait_shoot *= 1.1
//}

