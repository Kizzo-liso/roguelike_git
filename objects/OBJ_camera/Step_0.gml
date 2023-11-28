
//definindo quem a camera segue
if object_exists(follow){
	targetx = follow.x;
	targety = follow.y;
}

//definindo a veloc da camera
x += (targetx - x)/spd;
y += (targety - y)/spd;


//posicao da camera

camera_set_view_pos(cam, x-w_half, y-h_half) //fara que a camera fique centralizada no player

//definindo valor minimo e maximo da camera


x = clamp(x,w_half, room_width-w_half) //limita largura da camera, evitando ver o fim do mapa
y = clamp(y,h_half, room_height-h_half) //limita altura da camera, evitando ver o fim do mapa