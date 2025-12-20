// Find a note inside the detector
var LEFT = instance_place(x, y, obj_buttonLEFT);
var RIGHT = instance_place(x, y, obj_buttonRIGHT);
var DOWN = instance_place(x, y, obj_buttonDOWN);
var UP = instance_place(x, y, obj_buttonUP);

// If a note is inside AND the key is pressed
if (LEFT != noone && (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left))
	&& abs(self.x-LEFT.x) <= LEFT.perfect_visual_window) {
	score += 100;
    instance_destroy(LEFT);
}

else if (RIGHT != noone && (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right))
	&& abs(self.x-RIGHT.x) <= RIGHT.perfect_visual_window){
	score += 100;
    instance_destroy(RIGHT);
}
else if (DOWN != noone && (keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down))
	&& abs(self.x-DOWN.x) <= DOWN.perfect_visual_window){
	score += 100;
    instance_destroy(DOWN);
}
else if (UP != noone && (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_up))
	&& abs(self.x-UP.x) <= UP.perfect_visual_window){
	score += 100;
    instance_destroy(UP);
}

// If note is outside AND the key is pressed
if (LEFT != noone && (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left))
	&& abs(self.x-LEFT.x) <= LEFT.ok_visual_window){
	score += 50;
    instance_destroy(LEFT);
}
else if (RIGHT != noone && (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right))
&& abs(self.x-RIGHT.x) <= RIGHT.ok_visual_window){
	score += 50;
	
    instance_destroy(RIGHT);
}
else if (DOWN != noone && (keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down))
&& abs(self.x-DOWN.x) <= DOWN.ok_visual_window){
	score += 50;
    instance_destroy(DOWN);
}
else if (UP != noone && (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_up))
&& abs(self.x-UP.x) <= UP.ok_visual_window){
	score += 50;
    instance_destroy(UP);
}

//MISS 
if (LEFT != noone && (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left))
	&& abs(self.x-LEFT.x) <= LEFT.miss_visual_window){
	score -= 100;
    instance_destroy(LEFT);
}
else if (RIGHT != noone && (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right))
&& abs(self.x-RIGHT.x) <= RIGHT.miss_visual_window){
	score -= 100;
	
    instance_destroy(RIGHT);
}
else if (DOWN != noone && (keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down))
&& abs(self.x-DOWN.x) <= DOWN.miss_visual_window){
	score -= 100;
    instance_destroy(DOWN);
}
else if (UP != noone && (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_up))
&& abs(self.x-UP.x) <= UP.miss_visual_window){
	score -= 100;
    instance_destroy(UP);
}



//To prevent negative score
if (score <= 0){
	score = 0;
}



