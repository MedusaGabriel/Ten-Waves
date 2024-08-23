#region INIMIGOS FASE 1

var max_inimigos = 500;
var inimigos_count = 0;

var enemies = instance_find(obj_enemylevelone, -1);
for (var i = 0; i < array_length_1d(enemies); i++) {
    var obj = enemies[i];
    if (obj.object_index == obj_enemy || obj.object_index == obj_enemy2) {
        inimigos_count++;
    }
}

var num_timers = instance_number(obj_timer);

var spawn_multiplier = 1;
var speed_multiplier = 0.5;
var enemies_left = 50 - global.inimigos_destruidos;

if (enemies_left <= 40) {
    spawn_multiplier = 2;
    speed_multiplier = 1;
}
if (enemies_left <= 30) {
    spawn_multiplier = 2.5;
    speed_multiplier = 1.5;
}
if (enemies_left <= 10) {
    spawn_multiplier = 3;
    speed_multiplier = 2;
}

var enemies_speed = 1;
var adjusted_speed = enemies_speed * speed_multiplier;

// Atualiza a velocidade dos inimigos
var enemy_instances = instance_find(obj_enemy, -1);
for (var i = 0; i < array_length_1d(enemy_instances); i++) {
    enemy_instances[i].speed = adjusted_speed; // Confirme se 'speed' é a propriedade correta
}
enemy_instances = instance_find(obj_enemy2, -1);
for (var i = 0; i < array_length_1d(enemy_instances); i++) {
    enemy_instances[i].speed = adjusted_speed; // Confirme também para obj_enemy2
}

// Garante que o número total de inimigos na sala seja menor que o máximo permitido
if (inimigos_count < max_inimigos) {
    for (var j = 0; j < num_timers * spawn_multiplier; j++) {
        var inimigo_aleatorio = choose(obj_enemy, obj_enemy2);
        instance_create_depth(irandom_range(16, room_width - 32), irandom_range(16, room_height - 32), -1, inimigo_aleatorio);
    }
  
    alarm[0] = irandom_range(room_speed * 5 / spawn_multiplier, room_speed * 20 / spawn_multiplier);
}

#endregion
