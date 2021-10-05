/// @description  Mostrando pontos na tela
draw_set_color(c_black);
draw_set_font(fnt_score);
var score_text = string(round(score_player));
draw_text(12, 12, "Pontos: " + score_text);
// resetando a cor
draw_set_color(-1);
draw_set_font(-1);