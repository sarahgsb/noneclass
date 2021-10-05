/// @description Insert description here
// // Ajustando a velocidade da montanha com base no level
hspeed = -4 - global.level;

// destruindo
if (x <= -100) {
    instance_destroy();
}