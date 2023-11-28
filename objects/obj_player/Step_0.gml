


/*movimentaçao do personagem*/
var _tecla_cima = keyboard_check(ord("W")) or keyboard_check(vk_up);
var _tecla_baixo = keyboard_check(ord("S")) or keyboard_check(vk_down);
var _tecla_esq = keyboard_check(ord("A")) or keyboard_check(vk_left);
var _tecla_dir = keyboard_check(ord("D")) or keyboard_check(vk_right);

dir = point_direction(0,0,_tecla_dir-_tecla_esq,_tecla_baixo-_tecla_cima);

var _tecla = _tecla_dir-_tecla_esq != 0 or _tecla_baixo-_tecla_cima != 0;

velh = lengthdir_x(veloc * _tecla,dir);
velv = lengthdir_y(veloc* _tecla,dir);

x +=velh;
y += velv;
