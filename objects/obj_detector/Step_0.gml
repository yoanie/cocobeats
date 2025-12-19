// Find a note inside the detector
var LEFT = instance_place(x, y, obj_buttonLEFT);
var RIGHT = instance_place(x, y, obj_buttonRIGHT);
var DOWN = instance_place(x, y, obj_buttonDOWN);
var UP = instance_place(x, y, obj_buttonUP);

// If a note is inside AND the key is pressed
if (LEFT != noone && (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left))) {
	score += 100;
    instance_destroy(LEFT);
}
else if (RIGHT != noone && (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right))) {
	score += 100;
    instance_destroy(RIGHT);
}
else if (DOWN != noone && (keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down))) {
	score += 100;
    instance_destroy(DOWN);
}
else if (UP != noone && (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_up))) {
	score += 100;
    instance_destroy(UP);
}




