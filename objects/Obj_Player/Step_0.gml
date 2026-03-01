var key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
var key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

var move_x = key_right - key_left;
var move_y = key_down - key_up;
var key_run = keyboard_check(vk_shift); 


if (keyboard_check_pressed(vk_space))
{
var _inst = instance_create_depth(x, y, depth, obj_attack)
_inst.damage *= damage;
switch(face)
{
        case 0: 
            _inst.image_angle = 0; 
            _inst.x += 0; 
            break;
        case 1: 
            _inst.image_angle = 40; 
			_inst.x += -20;
            _inst.y -= 0;    
            break;
        case 2: 
            _inst.image_angle = 180; 
			_inst.x -= -40; 
            _inst.y += 75;
            break;
        case 3:
            _inst.image_angle = 360;
			_inst.x += -5;
            _inst.y += 15; 
            break;
    }

}



if (key_run) {
    move_speed = 4; 
} else {
    move_speed = 2; 
}

if (move_x > 0) face = 0;      
else if (move_x < 0) face = 2; 
else if (move_y < 0) face = 1; 
else if (move_y > 0) face = 3; 

x += move_x * move_speed;
y += move_y * move_speed;

if (move_x == 0 && move_y == 0) {
	image_speed = 1; 

    switch(face) {
        case 0: sprite_index = Idle_R_Sprite; break;
        case 1: sprite_index = Idle_B_Sprite; break;
        case 2: sprite_index = Idle_L_Sprite; break;
        case 3: sprite_index = Idle_F_Sprite; break;
    }

} else {
    image_speed = key_run ? 1.5 : 1; 
   
    if (key_run) {
        switch(face) {
            case 0: sprite_index = Running_R_Sprite; break;
            case 1: sprite_index = Running_B_Sprite; break;
            case 2: sprite_index = Running_L_Sprite; break;
            case 3: sprite_index = Running_F_Sprite; break;
        }
    } else {

        switch(face) {
            case 0: sprite_index = Walk_R_Sprite; break;
            case 1: sprite_index = Walk_B_Sprite; break;
            case 2: sprite_index = Walk_L_Sprite; break;
            case 3: sprite_index = Walk_F_Sprite; break;
			}
	}
}