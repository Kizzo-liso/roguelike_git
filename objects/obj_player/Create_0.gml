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

//hp
life = 100


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
//diagonais
//esquer cima
lws = virtual_key_add(170, 590,120,120,vk_left);
lw = virtual_key_add(170, 590, 120,120,vk_up);
//esqbaixo

sqs = virtual_key_add(170, 890,120,120,vk_left);
sqb = virtual_key_add(170, 890,120,120,vk_down);

cd = virtual_key_add(450, 590, 120,120,vk_up);
cd = virtual_key_add(450, 590, 120,120,vk_right);

db = virtual_key_add(450, 890, 120,120,vk_up);

l = virtual_key_add(300,580,140,140,vk_up)
esq = virtual_key_add(150,730,140,140,vk_left)
dire = virtual_key_add(460,730,140,140,vk_right)
b = virtual_key_add(300,890,140,140,vk_down)
das = virtual_key_add(1500,910,100,100,vk_shift)
atk = virtual_key_add(1700,850,100,100,ord("X"))
display_set_gui_size(1920,1080)