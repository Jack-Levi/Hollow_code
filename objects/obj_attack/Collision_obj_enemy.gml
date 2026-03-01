with(other) {
    hp -= 1;     
    flash = 1; 
    

    if (hp <= 0) instance_destroy();
}

instance_destroy();