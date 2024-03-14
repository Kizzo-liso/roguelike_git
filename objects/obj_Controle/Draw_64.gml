  //Draw GUI serve pra colocar as coisa DENTRO DA VIEWPORT 
//Gerando o spr de hud do XP
draw_sprite(spr_hud_xp,-1,2,2);

//Fazendo a barra de XP crescer conforme coleta XP.
draw_sprite_ext(spr_barra_xp, -1, 6, 6, global.exp/global.exp_max, 1, 0, c_white, 1);

draw_sprite(spr_hud_vida,-1,2,30);


//draw_healthbar(100, 100, 500, 200, obj_player.life, c_black, c_red, c_lime, 0, true, true);
draw_sprite(spr_barra_vida,-1,6,34);


