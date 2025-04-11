timer++

if (place_meeting(x,y,obj_player)){
    obj_player.grounded = false 
    obj_player.vsp -= variable_instance_get(id,"strenght")
}

if ((timer mod 5) = 4){
    if (variable_instance_get(id,"strenght")>0) create_effect(spr_wind_effect, 
        0,
        random_range(bbox_left,bbox_right),
        bbox_bottom,
        0,
        0,
        -variable_instance_get(id,"strenght"),
        0 ,
        (abs(image_yscale) * 64) / (sprite_get_height(spr_wind_up)/8),
        true)
    else if (variable_instance_get(id,"strenght")<0) create_effect(spr_wind_effect, 
        0,
        random_range(bbox_left,bbox_right),
        bbox_top,
        0,
        0,
        -variable_instance_get(id,"strenght"),
        0 ,
        (abs(image_yscale) * 64) / (sprite_get_height(spr_wind_up)/8),
        true)
}