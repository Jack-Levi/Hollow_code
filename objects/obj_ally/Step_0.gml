
if (instance_exists(Obj_Player)) {
    var dist = distance_to_object(Obj_Player);
    
    
    if (dist > 45) {
        var dir = point_direction(x, y, Obj_Player.x, Obj_Player.y);
        x += lengthdir_x(1.8, dir);
        y += lengthdir_y(1.8, dir);
    }

   
    if (dist < 60 && keyboard_check_pressed(ord("E"))) {
       
        if (!instance_exists(obj_talk)) {
            instance_create_depth(0, 0, -9999, obj_talk);
        }
    }
}


flash = max(0, flash - 0.1);

if (hp <= 0) {
    instance_destroy();
}