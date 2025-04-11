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

draw_sprite(spr_hud_cd,0,8,SCREEN_HEIGHT - 128)
draw_sprite_part(spr_hud_cd_value,0,sprite_get_bbox_left(spr_hud_cd_value),0,sprite_get_bbox_right(spr_hud_cd_value) / ability_cd * 2,sprite_get_bbox_bottom(spr_hud_cd_value),sprite_get_bbox_left(spr_hud_cd_value)+8,SCREEN_HEIGHT - 128)