// Define as posições e tamanhos da caixa
var box_x = 20;
var box_y = 100;
var box_w = 220;
var box_h = 120;

// Desenha a caixa de fundo
draw_set_color(c_black);
draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, 0);

// Desenha o contorno da caixa
draw_set_color(c_white);
draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, 1);

// Define a fonte para o texto
draw_set_font(fnt_ui);

// Calcula o número de inimigos faltando
var total_enemies = 50;
var enemies_left = total_enemies - global.inimigos_destruidos;
draw_set_color(c_white);
draw_text(box_x + 10, box_y + 10, "Inimigos Faltando: " + string(enemies_left));

// Calcula o número de inimigos spawnados
var enemy_count = instance_number(obj_enemy) + instance_number(obj_enemy2);
draw_text(box_x + 10, box_y + 30, "Inimigos na Tela: " + string(enemy_count));

// Calcula a velocidade dos inimigos
var enemies_speed = 2;
var speed_multiplier = 1;

if (enemies_left <= 40) {
    speed_multiplier = 1.5;
}
if (enemies_left <= 30) {
    speed_multiplier = 2;
}
if (enemies_left <= 10) {
    speed_multiplier = 2.5;
}

var adjusted_speed = enemies_speed * speed_multiplier;
draw_text(box_x + 10, box_y + 50, "Velocidade Base dos Inimigos: " + string(adjusted_speed));

// Calcula a velocidade de spawn
var spawn_rate_base = 15;
var spawn_multiplier = 1;

if (enemies_left <= 40) {
    spawn_multiplier = 1.5;
}
if (enemies_left <= 30) {
    spawn_multiplier = 2;
}
if (enemies_left <= 10) {
    spawn_multiplier = 2.5;
}

var adjusted_spawn_rate = spawn_rate_base / spawn_multiplier;
draw_text(box_x + 10, box_y + 70, "Taxa de Respawn: " + string(adjusted_spawn_rate));

// Desenha a barra de vida do jogador
var life = obj_player.life;
var xx = 20;
var yy = 20;
var ww = xx + (life / 100) * 150;
var ww2 = xx + 150;
var hh = yy + 20;

draw_set_color(c_red);
draw_rectangle(xx, yy, ww2, hh, 0);

draw_set_color(c_green);
draw_rectangle(xx, yy, ww, hh, 0);

draw_set_color(c_white);
draw_rectangle(xx, yy, ww2, hh, 1);

draw_set_font(fnt_ui);
draw_text(50, 15, "Vida: " + string(life));
