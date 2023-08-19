/// @description 

y = ystart + 4;

alarm[0] = 10;

if (instance_exists(global.clicked_cell)) {
	if(global.clicked_cell.fixed == false) {
		//show_debug_message("not fixed");
		global.clicked_cell.number = 0;
	}
}