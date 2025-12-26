///@description Create the Notes

seperator = "/"
if(os_type == os_windows){ seperator = "\\"; }

var file = file_text_open_read(working_directory + "chartfiles" + seperator + self.filename);
//var file = file_text_open_read(working_directory + self.filename);
if(file == -1){
	show_debug_message("couldn't open file "+self.filename+", aborting note creation...");
	return;
}

var targetX = room_width*3/4;
var targetY = room_height/2;
if(instance_exists(obj_detector)){
	targetX = obj_detector.x;
	targetY = obj_detector.y;
}

hspeedPerSecond = 500;

while(!file_text_eof(file)){
	k = file_text_read_real(file);
	file_text_readln(file);
	t = file_text_read_real(file);
	file_text_readln(file);
	
	//show_debug_message("key: "+string(k)+", millis: "+string(t));
	
	var noteToSpawn = obj_buttonLEFT;
	switch (k){
		case 0:
			break;
		case 1:
			noteToSpawn = obj_buttonDOWN;
			break;
		case 2:
			noteToSpawn = obj_buttonUP;
			break;
		case 3:
			noteToSpawn = obj_buttonRIGHT;
			break;
	}
	
	note = instance_create_layer(targetX-hspeedPerSecond*(t/1000), targetY, "Notes", noteToSpawn);
	note.targetX = targetX
	note.targetY = targetY
	note.millis = t
	note.hspeedPerSecond = hspeedPerSecond;
}

audio_play_sound(mus_test, 10, 0);

file_text_close(file);