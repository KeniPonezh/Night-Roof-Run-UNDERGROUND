pause_cd = max(pause_cd-1,0)

// camera
cam_x = lerp(cam_x,x + (hsp * 24),0.1);
cam_y = lerp(cam_y,y,0.2) ;

var cam_true_x, cam_true_y
cam_true_x = round(clamp(cam_x - (SCREEN_WIDTH / 2),0,room_width - SCREEN_WIDTH) + cam_x_offset);
cam_true_y = round(clamp(cam_y - (SCREEN_HEIGHT / 2),0,room_height - SCREEN_HEIGHT));

camera_set_view_pos(view_camera[view_current],cam_true_x,cam_true_y);

if(keyboard_check_pressed(vk_enter) && pause_cd = 0) {
    pause_cd = 5    
    instance_create_depth(x,y,depth,obj_pause)
}