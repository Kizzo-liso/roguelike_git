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