#region

// Define a velocidade base dos inimigos e o multiplicador
var base_speed = 1;
var speed_multiplier = 1;

// Ajuste o multiplicador de velocidade com base no número de inimigos restantes
var enemies_left = 50 - global.inimigos_destruidos;

if (enemies_left <= 40) {
    speed_multiplier = 3;
}
if (enemies_left <= 30) {
    speed_multiplier = 4;
}
if (enemies_left <= 10) {
    speed_multiplier = 5;
}

// Calcula a velocidade ajustada
var adjusted_speed = base_speed * speed_multiplier;

// Move o inimigo em direção ao jogador usando a velocidade ajustada
if (random(100) < 90) {
    mp_potential_step(obj_player.x, obj_player.y, adjusted_speed, false);
}

depth = -y;
image_xscale = 0.5;
image_yscale = 0.5;

#endregion
