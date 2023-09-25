/// @description Insert description here
// You can write your code in this editor

//perdendo 1 de vida se eu ainda tenho vida

if life > 0 {
	life -=1;
	
	//diminuindo a transparencia quando o player atira
	image_alpha -= 0.8;
	
	//aumentando o aumento da escala em 10%
	scale *= 1.1

} else {
	instance_destroy();
}

//destruindo o tiro
instance_destroy(other);



