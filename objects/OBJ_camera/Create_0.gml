
window_set_fullscreen(true);

cam = view_camera[0]; //Escolhendo viewpoint pra ser a camera
follow = obj_player; //Quem a camera vai seguir
w_half = camera_get_view_width(cam)/2; // metade da largura da camera
h_half = camera_get_view_height(cam)/2; // metade da altura da camera

global.cmw = camera_get_view_width(cam);
global.cmh = camera_get_view_height(cam);


global.cmx = follow.x - w_half;
global.cmy = follow.y - h_half;

targetx = xstart; // saber posicao x do jogador
targety = ystart; // saber posicao y do jogador

spd = 10; //veloc da camera

