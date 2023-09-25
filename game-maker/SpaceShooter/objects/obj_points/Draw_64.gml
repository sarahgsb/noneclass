/// @description Insert description here
// You can write your code in this editor

//desenhando a maior pontuacao se o objeto transicao não existe

//if (!instance_exists(obj_transition)) {
	//definindo a fonte
	draw_set_font(fnt_button);
	// pontos
	//variavel segurando o valor dos pontos
	var _points = round(points);
	
	draw_text(120, 200, "Highest score: " + string(_points));

	//inimigos mortos
	draw_text(120, 350, "Dead enemies: " + string(global.total_enemies));
	
	//mortes do player
	draw_text(120, 500, "Total deaths: " + string(global.total_deaths));

	//resetando a fonte
	draw_set_font(-1);
	
	//fazendo pontos chegar até o valor do max pontos
	//se pontos for menor que max pontos, aumento o valor dele
	//pegando 5% do max points e adicionando esse valor em pontos 
	//enquanto ele for menor que max pontos
	if (points < global.max_points) {
		//aumentando o valor de pontos em 1% do max pontos
		var _increment_points = global.max_points * 0.01;
		points += _increment_points;
	}
	//points = lerp(points, global.max_points, 0.1);
//}







