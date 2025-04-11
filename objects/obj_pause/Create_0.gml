backgroundimage = sprite_create_from_surface(application_surface, 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT, false, 0, 0, 0);

image_x = 0
image_y = 0

image_x_scale = 1
image_y_scale = 1

image_set_rgb = 255

timer = obj_player.timer
win_timer = obj_win.timer

instance_deactivate_all(true)
instance_activate_object(obj_game)