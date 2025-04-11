draw_sprite_ext(sprite_index,image_index,x,y,sc_xscale,sc_yscale,sc_angle,c_white,1)

var minute, seconds, miliseconds
minute = floor(timer / 3600)
seconds = floor((timer / 60) mod 60)
miliseconds = floor(((timer * 100) / 60) mod 100)

draw_set_color(make_color_rgb(64,0,83))
draw_text(x - 20, bbox_top - 10,string(minute) + ":" + (seconds > 9 ? "" : "0") + string(seconds) + "." + (miliseconds > 9 ? "" : "0") +  string(miliseconds))
draw_set_color(make_color_rgb(243,211,255))
draw_text(x - 16, bbox_top -6,string(minute) + ":" + (seconds > 9 ? "" : "0") + string(seconds) + "." + (miliseconds > 9 ? "" : "0") +  string(miliseconds))
draw_set_color(c_white)
