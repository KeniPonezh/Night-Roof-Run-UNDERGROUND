if (keyboard_check_pressed(vk_enter)) room_goto(rm_framework)
    
if (mouse_check_button_pressed(mb_left)){
    if (mouse_y > 140 && mouse_y < 280) url_open("https://theruby.neocities.org")
    if (mouse_y > 480 && mouse_y < SCREEN_HEIGHT){ 
        url_open("https://github.com/KeniPonezh/Night-Roof-Run-UNDERGROUND")
    }
}