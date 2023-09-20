/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


//mudando a direção depois que eu me movi x pixels
//checando se minha posição atual é maior ou menor que minha posição inicial +- 50
if (x > (xstart +50) or x < (xstart - 50)) {
//invertendo a velocidade horizontal
hspeed *= -1;
}
