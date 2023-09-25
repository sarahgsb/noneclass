//codigo que roda sempre que a room é iniciada
//iniciar variaveis globais

//deixando o jogo aleatorio
randomize();

//pontuação mais alta
global.max_points = 0;

//quantidade de vezes que o player morrey
global.total_deaths = 0;

//total de inimigos mortos
global.total_enemies = 0;

//indo para a proxima room
room_goto(rm_start)