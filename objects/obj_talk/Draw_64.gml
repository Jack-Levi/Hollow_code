if (pagina < array_length(texto)) {
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();


    var caja_w = gui_w - 40; 
    var caja_h = 140;
    var caja_x = 20;
    var caja_y = gui_h - caja_h - 20;


    draw_set_color(c_white);
    draw_rectangle(caja_x, caja_y, caja_x + caja_w, caja_y + caja_h, false);
    draw_set_color(c_black);
    draw_rectangle(caja_x + 4, caja_y + 4, caja_x + caja_w - 4, caja_y + caja_h - 4, false);


    draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    

    draw_set_font(-1); 


    var texto_a_dibujar = string_copy(texto[pagina], 1, floor(char_actual));
    

    var tx = caja_x + 30;
    var ty = caja_y + 30;
    var ancho_max = caja_w - 60;
    
    draw_text_ext(tx, ty, texto_a_dibujar, 32, ancho_max);


    if (char_actual < string_length(texto[pagina])) {
        char_actual += velocidad_texto;
    }
}