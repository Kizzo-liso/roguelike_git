script_execute(estado);

var _move_x = 0;
var _move_y = 0;

with (obj_joy)
{
	_move_x = joy_x / radius;
	_move_y = joy_y / radius;
}

x += _move_x * veloc;
y += _move_y * veloc;