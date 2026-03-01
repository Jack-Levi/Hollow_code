
var key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
var key_down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
var key_accept = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);


var moverse = key_down - key_up;
opcion_actual += moverse;


if (opcion_actual < 0) {
    opcion_actual = array_length(opciones) - 1;
} else if (opcion_actual >= array_length(opciones)) {
    opcion_actual = 0;
}


if (key_accept) {
    switch (opcion_actual) {
        case 0: 

            room_goto(Room1); 
            break;
        case 1:

            show_debug_message("Aún no hay menú de opciones!"); 
            break;
        case 2:

            game_end(); 
            break;
    }
}