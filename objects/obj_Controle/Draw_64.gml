  //Draw GUI serve pra colocar as coisa DENTRO DA VIEWPORT 
//Gerando o spr de hud do XP
draw_sprite(spr_hud_xp,-1,2,2);

//Fazendo a barra de XP crescer conforme coleta XP.
draw_sprite_ext(spr_barra_xp, -1, 6, 6, global.exp/global.exp_max, 1, 0, c_white, 1);




var _vida = obj_player.hp;
var _maxvida = obj_player.hp_max;


 
draw_sprite(spr_hud_vida,-1,2,30);


draw_sprite_ext(spr_barra_vida,-1,6,34,(_vida/_maxvida),1,0,c_white,1);


