
// Colisao dos inimigos entre eles
var _push = 1;

var _dir = point_direction(other.x,other.y,x,y);
var _hveloc = lengthdir_x(_push,_dir);
var _vveloc = lengthdir_y(_push, _dir); 

x += _hveloc;
y += _vveloc;