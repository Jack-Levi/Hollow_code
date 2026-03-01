with(other) {
    if (!invencible) {
        hp -= 2;
        invencible = true;
        alarm[0] = 60; 
        image_alpha = 0.5; 

        if (hp <= 0) game_restart(); 
    }
}