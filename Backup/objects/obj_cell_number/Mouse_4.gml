/// @description 

image_blend = c_ltgray;

alarm[0] = 10;

////////////////////////// Maybe change to global later //////////////////////////
// Adjusted size including the gap
var _spr_width = sprite_get_width(spr_cell);
var _gap = 2;
var _adjusted_size = _spr_width + _gap;

// Calculate the total width and height of the Sudoku grid
var _total_grid_width = 9 * _adjusted_size - _gap; // subtract gap to exclude the last gap 
var _total_grid_height = 9 * _adjusted_size - _gap;

// Calculate the starting x and y coordinates to center the grid
var _start_x = (room_width - _total_grid_width) / 2 - 100;
var _start_y = (room_height - _total_grid_height) / 2;
//////////////////////////////////////////////////////////////////////////////////

if (instance_exists(global.clicked_cell)) {
	// Calculate row and col of clicked_cell
	var _cell_x = global.clicked_cell.x - _start_x;
	var _cell_y = global.clicked_cell.y - _start_y;

	var _col = floor(_cell_x / _adjusted_size);
	var _row = floor(_cell_y / _adjusted_size);
	
	//show_debug_message(_col);
	//show_debug_message(_row);
	//show_debug_message(global.solved_sudoku_board[_row][_col]);
	var _cell = global.clicked_cell;
	_cell.number = number;
	_cell.image_blend = c_white;

	
	global.clicked_cell = noone;
		
	// if it is correct
	if(global.solved_sudoku_board[_row][_col] == number) {
		_cell.text_color = c_blue;
		_cell.fixed = true;
	}
	else {
		_cell.text_color = c_red;
		global.mistakes++;
		//show_debug_message(global.mistakes);
	}
}
