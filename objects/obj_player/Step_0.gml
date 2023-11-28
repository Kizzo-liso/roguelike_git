


/*movimentaçao do personagem*/
var _tecla_cima = keyboard_check(ord("W")) or keyboard_check(vk_up);
var _tecla_baixo = keyboard_check(ord("S")) or keyboard_check(vk_down);
var _tecla_esq = keyboard_check(ord("A")) or keyboard_check(vk_left);
var _tecla_dir = keyboard_check(ord("D")) or keyboard_check(vk_right);



var _tecla_x = _tecla_dir -_tecla_esq;
var _tecla_y = _tecla_baixo - _tecla_cima;

 if _tecla_x != 0 or _tecla_y != 0{
	 sprite_index = spr_player_andando

	dir = point_direction(0,0,_tecla_x,_tecla_y);
	velh = lengthdir_x(veloc,dir);
	velv = lengthdir_y(veloc,dir);

	x +=velh;
	y += velv;
 }else{
	 sprite_index = spr_player_parado
 }