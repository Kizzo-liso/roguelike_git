var _tecla_cima = keyboard_check(ord("W"))
var _tecla_baixo = keyboard_check(ord("S"))
var _tecla_esq = keyboard_check(ord("A"))
var _tecla_dir = keyboard_check(ord("D"))

dir = point_direction(0,0,_tecla_dir-_tecla_esq,_tecla_baixo-_tecla_cima)

var _tecla = _tecla_dir-_tecla_esq != 0 or _tecla_baixo-_tecla_cima != 0

velh = lengthdir_x(veloc * _tecla,dir)
velv = lengthdir_y(veloc* _tecla,dir)

x +=velh
y += velv
