
if (instance_exists(Obj_Player)) {
    

    var dir = point_direction(x, y, Obj_Player.x, Obj_Player.y);
    

    if (distance_to_object(Obj_Player) > 5) {
        x += lengthdir_x(2.2, dir);
        y += lengthdir_y(2.2, dir);
    }
}


var target = noone;

if (instance_exists(Obj_Player) && instance_exists(obj_ally)) {
    if (distance_to_object(Obj_Player) < distance_to_object(obj_ally)) {
        target = Obj_Player;
    } else {
        target = obj_ally;
    }
} else if (instance_exists(Obj_Player)) {
    target = Obj_Player;
} else if (instance_exists(obj_ally)) {
    target = obj_ally;
}


if (target != noone) {
    var dir = point_direction(x, y, target.x, target.y);
    x += lengthdir_x(0.6, dir);
    y += lengthdir_y(0.6, dir);
}