/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



other.vida -= obj_player.dano; 

var _dir = point_direction(obj_player.x,obj_player.y, other.x, other.y);
other.empurrar_dir = _dir;
other.empurrar_vel = 6;
other.alarm[0] = 5;
other.hit = true;
other.estado = scr_inimigo_hit;