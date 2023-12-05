//Movimentacao
velh = 0;
velv = 0;
dir = 0;
veloc = 4.0;


//Dash

dash = true;
pode_dash = true;
dash_delay = 45;
dash_dir = 0;
dash_distancia = 20;
dash_duracao = 5;
dash_veloc = 8;


//Estado
estado = scr_personagem_andando;

//Combate
atk_dir = 0;
dano = 10;
ataque = false;
atk_delay = 20;
pode_atk = true;

//Coleta de XP

range_coleta = 102;


//Controles Mobile
l = virtual_key_add(300,690,100,100,vk_up)
esq = virtual_key_add(190,800,100,100,vk_left)
dire = virtual_key_add(410,800,100,100,vk_right)
b = virtual_key_add(300,910,100,100,vk_down)
das = virtual_key_add(1500,910,100,100,vk_shift)
atk = virtual_key_add(1700,850,100,100,ord("X"))
display_set_gui_size(1920,1080)