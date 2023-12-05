// Os recursos de script mudaram para a v2.3.0; veja
function scr_inimigo_colisao(){

		if(place_meeting(x+velh,y,OBJ_colisor)){
			while(!place_meeting(x+sign(velh),y,OBJ_colisor)){
			x+= sign(velh);}
		velh = 0};
		x +=velh;
	
			if(place_meeting(x,y+velv,OBJ_colisor)){
		
		velv = 0};
	
		y += velv;

}

function scr_inimigo_perseguindo(){

	var _borda = 64;

	//inimigo vai spawnar fora da camera, se sair dela, spawna no lado oposto(vertical)

	if y < global.cmy - _borda{

		y = global.cmy + global.cmh + _borda
	}


	if y > global.cmy + global.cmh + _borda{
	
		y = global.cmy - _borda;

	}
	//inimigo vai spawnar fora da camera, se sair dela, spawna no lado oposto(horizontal)
	if x < global.cmx - _borda{

		x = global.cmx + global.cmw + _borda;

	}

	if x > global.cmx + global.cmw + _borda{

		x = global.cmx - _borda;

	}

	dir = point_direction(x,y,obj_player.x,obj_player.y); // inimigo vai perseguir o player
	velv = lengthdir_y(veloc, dir);
	velh = lengthdir_x(veloc, dir);

	scr_inimigo_colisao();
	//



	//DEFININDO O QUE OCORRE QUANDO INIMIGO MORRE
	if vida <= 0{
		//inimigo deletado quando zera HP.
		instance_destroy();
		
		//loop que vai se repetir quantidade x de vezes.
		repeat(3){
			//criando variaveis locais que randomizam drop do exp
			var _xx = irandom_range(-60, 60)
			var _yy = irandom_range(-60, 60);
			instance_create_layer(x + _xx, y + _yy, "Instances_1", obj_exp);
	
		}
	

}

}