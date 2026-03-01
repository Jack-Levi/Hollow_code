
draw_set_font(Font1);
draw_set_halign(fa_center); 
draw_set_valign(fa_middle); 



draw_set_color(c_white);

draw_text_transformed(room_width/2, room_height/4, "HOLLOW", 2, 2, 0); 



var escala = 1.7; 
var separacion = 70; 

for (var i = 0; i < array_length(opciones); i++) {
    
    if (i == opcion_actual) {
        draw_set_color(c_yellow);

        draw_text_transformed(room_width/2, (room_height/2) + (i * separacion), "> " + opciones[i] + " <", escala, escala, 0);
    } else {
        draw_set_color(c_gray);
        draw_text_transformed(room_width/2, (room_height/2) + (i * separacion), opciones[i], escala, escala, 0);
    }
}