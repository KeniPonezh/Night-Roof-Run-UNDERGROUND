var alpha 
alpha = timer / time

enemy_debris_angle += timer / 60

if (do_fade_out) draw_set_alpha(1 - alpha);
    
if (!is_enemy_debris) draw_sprite(sprite,frame,x,y);
    else draw_sprite_ext(sprite,frame,x,y,enemy_debris_x_scale,enemy_debris_y_scale,enemy_debris_angle,c_white,1 - alpha);
draw_set_alpha(1);

