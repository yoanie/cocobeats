if (x > room_width + 200) 
{
	instance_destroy();
}


x = targetX + hspeedPerSecond * (obj_timeController.millis - self.millis)/1000;

