 /// @description Insert description here
// You can write your code in this editor



cam = view_camera[0]; //Escolhendo viewpoint pra ser a camera
follow = obj_player; //Quem a camera vai seguir
w_half = camera_get_view_width(cam)/2; // metade da largura da camera
h_half = camera_get_view_height(cam)/2; // metade da altura da camera

targetx = xstart; // saber posicao x do jogador
targety = ystart; // saber posicao y do jogador

spd = 10; //veloc da camera