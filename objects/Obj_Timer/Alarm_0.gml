#region INIMIGOS FASE 1

// Contador para o número total de instâncias de inimigos filhos
var inimigos_count = 0;

// Loop para contar instâncias de todos os inimigos filhos de obj_InimigosFase1
for (var i = 0; i < instance_number(obj_enemylevelone); i++) {
    var obj = instance_find(obj_enemylevelone, i);
    if (instance_exists(obj)) {
        // Verifica se a instância é um inimigo filho
        if (obj.object_index == obj_enemy || obj.object_index == obj_enemy2) {
            inimigos_count += 1;
        }
    }
}

// Verifica se o número total de instâncias de inimigos é menor que 5
if (inimigos_count < 5) {
    // Escolhe aleatoriamente um dos inimigos filhos de obj_InimigosFase1
    var inimigo_aleatorio = choose(obj_enemy, obj_enemy2);  // Adicione mais se necessário

    // Cria o inimigo escolhido em uma posição aleatória na room
    instance_create_depth(irandom_range(32, room_width - 32), irandom_range(32, room_height - 32), -1, inimigo_aleatorio);

    // Define o alarme para disparar novamente em um intervalo de tempo aleatório entre 60 e 600 frames (1 segundo a 10 segundos)
    alarm[0] = irandom_range(60, 60 * 10);
}

#endregion
