/// @description PERSONAGEM PISCANDO AO TOMAR DANO
draw_self();

if alarm[3] > 0{

	if image_alpha >= 1{
		dano_alfa = -0.05;
	}else if image_alpha <= 0{
		dano_alfa = 0.05;
	}

	image_alpha += dano_alfa;
}else{

	image_alpha = 1;
}
