if (keyboard_check_pressed(ord("E"))) {

    if (char_actual < string_length(texto[pagina])) {
        char_actual = string_length(texto[pagina]);
    } 

    else {
        pagina += 1;
        char_actual = 0; 
        

        if (pagina >= array_length(texto)) {
            instance_destroy();
        }
    }

    keyboard_clear(ord("E"));
}