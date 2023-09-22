/// @description Insert description here
// You can write your code in this editor


//movendo a tela
view_xport[0] = random_range(-shake, shake)
view_yport[0] = random_range(-shake, shake)


//diminuindo o valor do screenshake
//multiplicando por 0.9, ou seja, ele perde 5% por step
shake *= 0.9;

//se o valor do shake for menor que 0.5, ele se destroi
if (shake < 0.5) {
	instance_destroy();
	
}




