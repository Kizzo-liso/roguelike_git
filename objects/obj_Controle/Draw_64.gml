//Draw GUI serve pra colocar as coisa DENTRO DA VIEWPORT 
//Gerando o spr de hud do XP
draw_sprite(spr_hud_xp,-1,2,2);

//Fazendo a barra de XP crescer conforme coleta XP.
draw_sprite_ext(spr_barra_xp, -1, 3, 3, global.exp/global.exp_max, 1, 0, c_white, 1);


