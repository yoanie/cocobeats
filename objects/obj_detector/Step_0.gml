// Find a note inside the detector
var LEFT = instance_place(x, y, obj_buttonLEFT);
var RIGHT = instance_place(x, y, obj_buttonRIGHT);
var DOWN = instance_place(x, y, obj_buttonDOWN);
var UP = instance_place(x, y, obj_buttonUP);

// PERFECT - If a note is inside AND the key is pressed
if (LEFT != noone && (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left))
	&& abs(self.x-LEFT.x) <= LEFT.perfect_visual_window) {
	score += 100;
	show_debug_message("L Perfect")
    instance_destroy(LEFT);
	exit;
}

else if (RIGHT != noone && (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right))
	&& abs(self.x-RIGHT.x) <= RIGHT.perfect_visual_window){
	score += 100;
	show_debug_message("R Perfect")
    instance_destroy(RIGHT);
	exit;
}
else if (DOWN != noone && (keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down))
	&& abs(self.x-DOWN.x) <= DOWN.perfect_visual_window){
	score += 100;
	show_debug_message("D Perfect")
    instance_destroy(DOWN);
	exit;
}
else if (UP != noone && (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up))
	&& abs(self.x-UP.x) <= UP.perfect_visual_window){
	score += 100;
	show_debug_message("U Perfect")
    instance_destroy(UP);
	exit;
}

// OK
if (LEFT != noone && (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left))
	&& abs(self.x-LEFT.x) <= LEFT.ok_visual_window){
	score += 50;
	show_debug_message("L Ok")
    instance_destroy(LEFT);
	exit;
}
else if (RIGHT != noone && (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right))
&& abs(self.x-RIGHT.x) <= RIGHT.ok_visual_window){
	score += 50;
	show_debug_message("R Ok")
    instance_destroy(RIGHT);
	exit;
}
else if (DOWN != noone && (keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down))
&& abs(self.x-DOWN.x) <= DOWN.ok_visual_window){
	score += 50;
	show_debug_message("D Ok")
    instance_destroy(DOWN);
	exit;
}
else if (UP != noone && (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up))
&& abs(self.x-UP.x) <= UP.ok_visual_window){
	score += 50;
	show_debug_message("U Ok")
    instance_destroy(UP);
	exit;
}

//MISS 
if (LEFT != noone && (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left))
	&& abs(self.x-LEFT.x) <= LEFT.miss_visual_window){
	score -= 100;
	show_debug_message("L Miss")
    instance_destroy(LEFT);
	exit;
}
else if (RIGHT != noone && (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right))
&& abs(self.x-RIGHT.x) <= RIGHT.miss_visual_window){
	score -= 100;
	show_debug_message("R Miss")
    instance_destroy(RIGHT);
	exit;
}
else if (DOWN != noone && (keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down))
&& abs(self.x-DOWN.x) <= DOWN.miss_visual_window){
	score -= 100;
	show_debug_message("D Miss")
    instance_destroy(DOWN);
	exit;
}
else if (UP != noone && (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up))
&& abs(self.x-UP.x) <= UP.miss_visual_window){
	score -= 100;
	show_debug_message("U Miss")
    instance_destroy(UP);
	exit;
}



//To prevent negative score
if (score <= 0){
	score = 0;
}



