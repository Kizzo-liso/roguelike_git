/// @description Inserir descrição aqui
if other.tomardano == true{

	var _dir = point_direction(-other.x,-other.y,-x,-y);


	other.empurrar_dir = _dir;
	other.estado = scr_pers_hit;
	other.alarm[2] = 10;
	other.alarm[3] = 60;
	other.tomardano  = false;
	other.hp -= 10;
}
 