/// @description Insert description here
// You can write your code in this editor



// Diminuindo a escala do tiro

//Lerp é uma funcao de aproximacao, eu faço o meu valor chega em outro valor por uma porcentagem
//LERP (valor que eu tenho, valor para chegar, porcentagem da aproximacao)

//step1 = 1 - 10 = 5- 10
//step2 = 5 - 10 = 7,5 - 10
//step3 = 7,5 - 10 = 8.75 - 10

//Fazendo o meu xscale chegar no valor original que é 1
image_xscale = lerp(image_xscale, 1, 0.5)
image_yscale = lerp(image_yscale, 1, 0.5)
