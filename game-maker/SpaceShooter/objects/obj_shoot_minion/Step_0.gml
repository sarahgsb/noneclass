/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (instance_exists(obj_boss)) {
	//se o boss existe, eu vou na direção dele
	direction = point_direction(x, y, obj_boss.x, obj_boss.y)
	//olharem para o boss
	image_angle = direction + 90;
}