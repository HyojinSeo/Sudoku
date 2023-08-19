/// @description 


switch (global.mistakes) {
    case 1:
        global.hearts[0].sprite_index = spr_heart_empty; 
        break;
    case 2:
        global.hearts[1].sprite_index = spr_heart_empty; 
        break;
    case 3:
        global.hearts[2].sprite_index = spr_heart_empty; 
        break;
}

if(global.mistakes > 2) room_goto(rm_game_over);