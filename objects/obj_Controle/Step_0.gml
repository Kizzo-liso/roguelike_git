
var _side = irandom(1);

if alarm[0] <= 0{
	if _side == 0{

	//vai definir em que parte da largura vai spawnar
		var _xx = irandom_range(global.cmx, global.cmx + global.cmw);

	//vai definir se vai spawnar em um lado ou em outro
		var _yy = choose(global.cmy - 16, global.cmy + global.cmh + 16);

		instance_create_layer(_xx,_yy,"Instances", obj_inimigo);
	}

	if _side == 1{


	}
	
	alarm[0] = spawn_timer;
}
