// Incrementa o contador de inimigos destruídos
global.inimigos_destruidos += 1;

// Destrói o inimigo
with (other) {
    instance_destroy();
}

// Destrói a flecha
instance_destroy();