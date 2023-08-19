/// @description 

if (!fixed) {
    // Reset the previously clicked cell if it exists
    if (instance_exists(global.clicked_cell)) {
        global.clicked_cell.image_blend = c_white;
    }

    // Set the current cell as the clicked cell
    image_blend = c_ltgray;
    global.clicked_cell = id;
}