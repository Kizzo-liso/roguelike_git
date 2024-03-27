/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if hit == true{

gpu_set_fog(true, c_white, 0,0);
draw_self();
gpu_set_fog(false, c_white, 0,0);

}else{
	draw_self();
}