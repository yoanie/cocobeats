///@description Create the Notes

seperator = "/"
if(os_type == os_windows){ seperator = "\\"; }

//file = file_text_open_read(working_directory + "chartfiles" + seperator + self.filename);
var file = file_text_open_read(working_directory + self.filename);
if(file == -1){
	show_debug_message("couldn't open file "+self.filename+", aborting note creation...");
	return;
}
file_text_readln(file);

show_debug_message(working_directory + "chartfiles" + seperator + self.filename)
show_debug_message(file_text_read_real(file));

//file_text_close(file);