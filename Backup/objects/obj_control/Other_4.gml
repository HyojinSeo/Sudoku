

global.clicked = false;
global.clicked_cell = noone; 
global.mistakes = 0;

// Define a predefined Sudoku. 0 means the cell is empty.
global.sudoku_board = [
    [5, 3, 0, 0, 7, 0, 0, 0, 0],
    [6, 0, 0, 1, 9, 5, 0, 0, 0],
    [0, 9, 8, 0, 0, 0, 0, 6, 0],
    [8, 0, 0, 0, 6, 0, 0, 0, 3],
    [4, 0, 0, 8, 0, 3, 0, 0, 1],
    [7, 0, 0, 0, 2, 0, 0, 0, 6],
    [0, 6, 0, 0, 0, 0, 2, 8, 0],
    [0, 0, 0, 4, 1, 9, 0, 0, 5],
    [0, 0, 0, 0, 8, 0, 0, 7, 9]
];

global.solved_sudoku_board = [
    [5, 3, 4, 6, 7, 8, 9, 1, 2],
    [6, 7, 2, 1, 9, 5, 3, 4, 8],
    [1, 9, 8, 3, 4, 2, 5, 6, 7],
    [8, 5, 9, 7, 6, 1, 4, 2, 3],
    [4, 2, 6, 8, 5, 3, 7, 9, 1],
    [7, 1, 3, 9, 2, 4, 8, 5, 6],
    [9, 6, 1, 5, 3, 7, 2, 8, 4],
    [2, 8, 7, 4, 1, 9, 6, 3, 5],
    [3, 4, 5, 2, 8, 6, 1, 7, 9]
];

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

// Create the Sudoku cells in the room and assign the numbers.
for (var _y = 0; _y < 9; _y++) {
    for (var _x = 0; _x < 9; _x++) {
        var _cell = instance_create_layer(_start_x + _x * _adjusted_size, _start_y + _y * _adjusted_size, "Instances", obj_cell);
        _cell.number = global.sudoku_board[_y][_x];
        if (_cell.number != 0) {
            _cell.fixed = true; // If the cell has a number, it's fixed.
        }
    }
}

// Create the number cells 
for (var _row = 0; _row < 3; _row++) {
	for (var _col = 0; _col < 3; _col++) {
		var _cell_number = instance_create_layer(room_width/2 + _col * _adjusted_size + 100, room_height/2 + _row * _adjusted_size, "Instances", obj_cell_number);
		_cell_number.number = (_col + 1) + _row * 3;
	}
}

