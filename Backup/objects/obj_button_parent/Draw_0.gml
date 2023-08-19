/// @description 

draw_self();

// set font as fnt_menu
draw_set_font(fnt_menu);

// center middle alignment
// default is left top alignment
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_white);

// draw button_text to x,y (position of button)
draw_text(x,y,button_text);

// it get reset after drawing
draw_set_halign(fa_left);
draw_set_valign(fa_top);
