/// @description Insert description here
// You can write your code in this editor

var _height_gui = display_get_gui_height();

//draw_text(20, 700, "Testando")

//desenhando nave pra ser a vida
//desenhando a quantdade de naves representando a quantidade de vida
//repetindo o desenho na quantidade de vida que tenho
//desenhando uma vida do lado da outra

var _multiplier = 0;
var _space = 40;
repeat(life) {
	// primeira fica no 40, segundo fica no 40+20, terceira fica no 40+40
	//1 - 40 + 20 * 0 = 40
	//2 - 40 + 20 * 1 = 60
	//3 - 40 + 2- * 2 = 80
	draw_sprite_ext(spr_player, 0, 40 + _space * _multiplier, 60,
				0.3, 0.3, 0, c_white, 0.5);
				
	//depois de desenhar, aumente o valor do multiplicador
	_multiplier += 1;
}

//resetando o valor do multiplicador
_multiplier = 0;
//desenhando os escudos
repeat(shields) {
	draw_sprite_ext(spr_shield, 0, 40 + _space * _multiplier, 110,
				0.3, 0.3, 0 , c_white, 0.5)
	_multiplier += 1;
}






