/// @description Insert description here
// You can write your code in this editor

//desenhando um retangulo preto na tela

//pegando informacoes da gui
//deixando retangulo preto

//desenhando retangulo com o valor do meu alpha
draw_set_alpha(alpha);
draw_set_color(c_black);
var _x2 = display_get_gui_width();
var _y2 = display_get_gui_height();
draw_rectangle(0, 0, _x2, _y2, false);
//resetando o alpha
draw_set_alpha(1);
draw_set_color(c_white);







