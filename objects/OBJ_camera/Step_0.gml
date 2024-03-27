// Defina os limites da sala
var room_left = 0;
var room_right = room_width;
var room_top = 0;
var room_bottom = room_height;

// Defina as metades da largura e altura da câmera
var w_half = camera_get_view_width(cam) / 2;
var h_half = camera_get_view_height(cam) / 2;

// Verifique se a câmera está seguindo um objeto
if object_exists(follow) {
    // Defina a posição alvo da câmera como a posição do objeto a ser seguido
    var targetx = follow.x;
    var targety = follow.y;

    // Defina a velocidade da câmera
    var spd = 10;

    // Calcule a nova posição da câmera suavizando o movimento
    x += (targetx - x) / spd;
    y += (targety - y) / spd;

    // Limite a posição da câmera aos limites da sala
    x = clamp(x, room_left + w_half, room_right - w_half);
    y = clamp(y, room_top + h_half, room_bottom - h_half);

    // Configure a posição da câmera
    camera_set_view_pos(cam, x - w_half, y - h_half);
}
