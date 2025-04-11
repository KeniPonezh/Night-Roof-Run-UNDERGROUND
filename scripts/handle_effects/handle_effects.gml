function create_effect(set_sprite, animation_speed = 0, set_x = 0 ,set_y = 0, xspeed = 0, yspeed = 0, gravity = 0, acceleration = 0, destroy_time = 0, effect_fade_out = false){
    var effect = instance_create_depth(set_x,set_y,-250,obj_effect){
    
        effect.sprite = set_sprite
        effect.image_speed = animation_speed
    
        effect.hsp = xspeed
        effect.vsp = yspeed
        effect.grav = gravity
        effect.accel = acceleration
        effect.time = destroy_time
    
        effect.do_fade_out = effect_fade_out
    }
    return effect
}

function create_defeat_effect(set_sprite, set_frame = 0, set_x = 0 ,set_y = 0, xspeed = 0, yspeed = 0, gravity = 0, acceleration = 0, destroy_time = 0, effect_fade_out = false){
    var effect = instance_create_depth(set_x,set_y,depth,obj_effect){
    
        effect.sprite = set_sprite
        effect.frame = set_frame
        effect.image_speed = 0
    
        effect.hsp = xspeed
        effect.vsp = yspeed
        effect.grav = gravity
        effect.accel = acceleration
        effect.time = destroy_time
    
        effect.do_fade_out = effect_fade_out
        
        effect.is_enemy_debris = true
        
        effect.enemy_debris_x_scale = random_range(0.5,1.5)
        effect.enemy_debris_y_scale = effect.enemy_debris_x_scale
        effect.enemy_debris_angle = random_range(0,360)
    }
    return effect
}