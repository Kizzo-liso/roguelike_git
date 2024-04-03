
#region COLISAO
function scr_personagem_colisao(){

		if(place_meeting(x+velh,y,OBJ_colisor)){
			while(!place_meeting(x+sign(velh),y,OBJ_colisor)){
			x+= sign(velh);}
		velh = 0};
		x +=velh;
	
			if(place_meeting(x,y+velv,OBJ_colisor)){
		
		velv = 0};
	
		y += velv;

}

#endregion


#region MOVIMENTACAO
function scr_personagem_andando(){
	/*movimentaçao do personagem*/
	var _tecla_cima = keyboard_check(ord("W")) or keyboard_check(vk_up);
	var _tecla_baixo = keyboard_check(ord("S")) or keyboard_check(vk_down);
	var _tecla_esq = keyboard_check(ord("A")) or keyboard_check(vk_left);
	var _tecla_dir = keyboard_check(ord("D")) or keyboard_check(vk_right);
	var _tecla_dash =  keyboard_check(ord("Z")) or keyboard_check(vk_shift);
	//var _tecla_atk = mouse_check_button(mb_left);
	var _tecla_atk = keyboard_check(ord("X")); 
	var _tecla_x = _tecla_dir -_tecla_esq;
	var _tecla_y = _tecla_baixo - _tecla_cima;

	 if _tecla_x != 0 or _tecla_y != 0{
		 sprite_index = spr_player_andando

		dir = (point_direction(0,0,_tecla_x,_tecla_y));
		velh = lengthdir_x(veloc,dir);
		velv = lengthdir_y(veloc,dir);
	
	scr_personagem_colisao();

	 }else{
		 sprite_index = spr_player_parado;
	 }
	if (_tecla_dash and dash and pode_dash){
		pode_dash = false;
		alarm[0] = dash_delay;
		velh = 0;
		velv = 0;
		dash_dir = point_direction(x,y,x+_tecla_x,y+_tecla_y)
		estado = scr_pers_dash;
	 
	 }
	 
	if (_tecla_atk and pode_atk){
		pode_atk = false;
		alarm[1] = atk_delay;
		image_index = 0;
		/*SE FOR USAR O MOUSE COMO ATAQUE, SUBSTITUI OS CASES PRA 0,1,2,3
		e a variavel DIR para ATK_DIR*/
		
		//atk_dir = floor(point_direction(x,y,mouse_x,mouse_y)/90);
		
		switch dir{
			case 0:
				sprite_index = spr_pers_atk_direita;	
            break;
			case 90:
				sprite_index = spr_pers_atk_cima;
            break;
			case 180:
				sprite_index = spr_pers_atk_esq;
            break;
			case 270:
				sprite_index = spr_pers_atk_baixo;
            break;
    }
	estado = scr_atk_pers;
	}
}

#endregion


#region DASH
function scr_pers_dash(){
	tomardano = false;
	
	velv = lengthdir_y(dash_veloc,dash_dir);
	velh = lengthdir_x(dash_veloc,dash_dir);
	
	scr_personagem_colisao();
	
	var _inst = instance_create_layer(x,y,"Instances_1", obj_dash);
	_inst.sprite_index = sprite_index;
	
	dash_duracao++;
	if(dash_duracao >= dash_distancia){
	
		dash_duracao = 0;
		velv = 0;
		velh = 0;
		estado = scr_personagem_andando;
	}
}
#endregion


#region ATK
function scr_atk_pers(){
	if image_index >= 1{
		if ataque == false{
			switch dir{
				case 0:
					instance_create_layer(x + 15,y,"Instances_1",obj_pers_hitbox);
				break;
				case 90:
					instance_create_layer(x,y - 15,"Instances_1",obj_pers_hitbox);
				break;
				case 180:
					instance_create_layer(x - 15,y,"Instances_1",obj_pers_hitbox);
				break;
				case 270:
					instance_create_layer(x,y + 15,"Instances_1",obj_pers_hitbox);
				break;
			}
		ataque = true;
		}
	}
	if (image_index >= image_number -1){
		estado = scr_personagem_andando;
		ataque = false;
	}
}
#endregion

#region DANO TOMADO
function scr_pers_hit(){
	//perder velocidade do empurrao
	if alarm[2] > 0{
	
	hvel = lengthdir_x(3, empurrar_dir);
	vvel = lengthdir_y(3,empurrar_dir);
	
	scr_personagem_colisao();
	}else{
	
		estado = scr_personagem_andando;
	}
}
#endregion
#region MORRER
	function scr_pers_die(){
	if hp <= 0{
		room_restart()
		room_goto(rm_lostgame)
		
	}
	
	}
#endregion
