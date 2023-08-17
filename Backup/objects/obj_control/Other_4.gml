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

// Adjusted size including the gap
var _spr_width = sprite_get_width(spr_cell);
var _gap = 2;
var _adjusted_size = _spr_width + _gap;

// Calculate the total width and height of the Sudoku grid
var _total_grid_width = 9 * _adjusted_size - _gap; // subtract gap to exclude the last gap 
var _total_grid_height = 9 * _adjusted_size - _gap;

// Calculate the starting x and y coordinates to center the grid
var _start_x = (room_width - _total_grid_width) / 2;
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