/// @description Insert description here
// You can write your code in this editor



//desenhando a barra de vida do boss
//desenhando a barra com 30px de altura
//convertendo o valor da vida atual do boss em um numero entre 0 e 100

var _boss_life;
_boss_life = (current_life/ life_max) * 100;

draw_healthbar(200, 20, 1080, 30, _boss_life,
				c_black, c_red, c_lime, 0, true, true)







