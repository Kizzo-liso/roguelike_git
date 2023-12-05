//Definindo distancia da atração do XP ao jogador

//substituir valor numerico por 
if distance_to_object(obj_player) <= obj_player.range_coleta{

	var _dir = point_direction(x, y, obj_player.x, obj_player.y);
	vvel = lengthdir_y(veloc, _dir);
	hvel = lengthdir_x(veloc, _dir);
	
	x += hvel;
	y += vvel;

}