/// @description 

// Draw the cell sprite first
draw_self();

// Set text properties 
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);  
draw_set_font(fnt_number);  

// Calculate the center of the cell
var _center_x = x + sprite_width / 2;
var _center_y = y + sprite_height / 2;

// Draw the number if it's not zero (assuming zero represents an empty cell)
if (number != 0) {
    draw_text(x, y, string(number));
}