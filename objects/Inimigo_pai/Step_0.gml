


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