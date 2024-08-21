#region MOVIMENTAÇÃO DO PERSONAGEM
// Movimento com a tecla W
if (keyboard_check(ord("W")) && place_free(x, y - spd)) {
    y -= spd;
}
// Movimento com a tecla A
if (keyboard_check(ord("A")) && place_free(x - spd, y)) {
    x -= spd;
}
// Movimento com a tecla S
if (keyboard_check(ord("S")) && place_free(x, y + spd)) {
    y += spd;
}
// Movimento com a tecla D
if (keyboard_check(ord("D")) && place_free(x + spd, y)) {
    x += spd;
}
// Movimento com a seta para cima
if (keyboard_check(vk_up) && place_free(x, y - spd)) {
    y -= spd;
}
// Movimento com a seta para baixo
if (keyboard_check(vk_down) && place_free(x, y + spd)) {
    y += spd;
}
// Movimento com a seta para a esquerda
if (keyboard_check(vk_left) && place_free(x - spd, y)) {
    x -= spd;
}
// Movimento com a seta para a direita
if (keyboard_check(vk_right) && place_free(x + spd, y)) {
    x += spd;
}
#endregion

#region CAMERA PERSONAGEM

camera_set_view_pos(view_camera[0], x - view_wport[0]/2, y - view_hport[0]/2);
depth = -y;

// Diminui a escala do personagem em 50% (metade do tamanho original)
image_xscale = 0.5;
image_yscale = 0.5;

#endregion
