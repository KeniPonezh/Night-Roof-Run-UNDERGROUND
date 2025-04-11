var cx, cy

cx = camera_get_view_x(view_camera[0])
cy = camera_get_view_y(view_camera[0])

timer++
frame += image_speed

image_index = min(frame, image_number-1);

x+=hsp
y+=vsp

hsp+=accel
vsp+=grav

if (is_enemy_debris = true){
    if place_meeting(x,y+2,par_solid) vsp = random_range(-8,-4)
        
    if place_meeting(x + 1,y,par_solid) hsp*=-1
}

if (timer=time) || (y > room_height + 120){
    instance_destroy()
}

if (is_enemy_debris){
    // set sprite hitbox because fuck you
    sprite_index = sprite
    image_index = frame
    
    if (place_meeting(x,y,obj_player)){
        hsp+=obj_player.hsp / 25
    }
}