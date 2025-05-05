#macro SCREEN_WIDTH 1024
#macro SCREEN_HEIGHT 576

global.debug = false
global.walljumpmode = 0


#macro HOLD_UP keyboard_check(vk_up)
#macro HOLD_DOWN keyboard_check(vk_down)
#macro HOLD_LEFT keyboard_check(vk_left)
#macro HOLD_RIGHT keyboard_check(vk_right)
#macro JUMP keyboard_check_pressed(ord("A"))
#macro DASH keyboard_check_pressed(ord("S"))
/*
#macro HOLD_UP keyboard_check(ord("W"))
#macro HOLD_DOWN keyboard_check(ord("S"))
#macro HOLD_LEFT keyboard_check(ord("A"))
#macro HOLD_RIGHT keyboard_check(ord("D"))
#macro JUMP keyboard_check_pressed(vk_space)
#macro DASH keyboard_check_pressed(vk_shift)*/