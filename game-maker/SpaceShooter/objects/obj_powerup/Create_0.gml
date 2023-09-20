/// @description Insert description here
// You can write your code in this editor

//Criando uma chance entre 0 em 100
//decidir qual vai ser o upgrade
chance = random(100) //CHance vai ficar entre 0 e 100
/* Se o valor de chance for 90 ou mais, ela cria o power up do tiro
senão, se o valor de chance for 45 ou mais, ela cria o power up da velocidade
senão ela cria o power up do level do tiro
*/

//fazendo ele se mover
speed = 2;
direction = irandom(359);

//iniciando o alarme

alarm[0] = room_speed;

//dependendo da chance, a cor vai se diferente do level do tiro

if (chance >= 90) {
    color = c_maroon
} else if (chance >= 45) {
	color = c_yellow
} else {
	color = c_lime
}



