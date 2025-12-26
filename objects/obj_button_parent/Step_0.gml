if (x > room_width + 200) 
{
	instance_destroy();
}


x = targetX + hspeedPerSecond * (obj_timeController.millis - self.millis)/1000;

if(x > targetX + miss_visual_window){
	obj_gamecontroller.score -= 100;
	show_debug_message("Miss")
    instance_destroy(self);
}