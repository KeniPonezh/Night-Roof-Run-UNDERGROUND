image_x = lerp(image_x, SCREEN_WIDTH / -8, 0.05)
image_y = lerp(image_y, SCREEN_HEIGHT / -12, 0.05)
image_x_scale = lerp(image_x_scale, 1.25, 0.075)
image_y_scale = lerp(image_y_scale, 1.25, 0.075)
image_set_rgb = lerp(image_set_rgb, 140,0.1)
    
draw_sprite_ext(backgroundimage, 
0, 
image_x, 
image_y, 
image_x_scale, 
image_y_scale, 
0, 
make_color_rgb(image_set_rgb,image_set_rgb,image_set_rgb), 
1);

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_text(SCREEN_WIDTH / 2, SCREEN_HEIGHT / 2, "PAUSED\n(ENTER TO UNPAUSE)\n(PRESS R TO RESTART)")

draw_set_halign(fa_left)
draw_set_valign(fa_top)

var minute, seconds, miliseconds
minute = floor(timer / 3600) 
seconds = floor((timer / 60) mod 60)
miliseconds = floor(((timer * 100) / 60) mod 100)

draw_set_font(font_48)
draw_set_color(make_color_rgb(64,0,83))
draw_text(20,20,string(minute) + ":" + (seconds > 9 ? "" : "0") + string(seconds) + "." + (miliseconds > 9 ? "" : "0") +  string(miliseconds))
draw_set_color(make_color_rgb(243,211,255))
draw_text(16,16,string(minute) + ":" + (seconds > 9 ? "" : "0") + string(seconds) + "." + (miliseconds > 9 ? "" : "0") +  string(miliseconds))
draw_set_font(noone)
draw_set_color(c_white)

if (win_timer > 0){
    var minute_2, seconds_2, miliseconds_2
    minute_2 = floor(win_timer / 3600) 
    seconds_2 = floor((win_timer / 60) mod 60)
    miliseconds_2 = floor(((win_timer * 100) / 60) mod 100)
    draw_set_font(font_48)
    draw_set_color(make_color_rgb(64,0,83))
    draw_text(20,66,string(minute_2) + ":" + (seconds_2 > 9 ? "" : "0") + string(seconds_2) + "." + (miliseconds_2 > 9 ? "" : "0") +  string(miliseconds_2))
    draw_set_color(make_color_rgb(243,211,255))
    draw_text(16,52,string(minute_2) + ":" + (seconds_2 > 9 ? "" : "0") + string(seconds_2) + "." + (miliseconds_2 > 9 ? "" : "0") +  string(miliseconds_2))
    draw_set_font(noone)
    draw_set_color(c_white)
}