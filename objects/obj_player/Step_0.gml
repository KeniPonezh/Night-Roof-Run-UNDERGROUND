timer++
state_timer++
ability_cd = max(ability_cd-1,0)

//moving var
if (!allow_moving){
    moving_x = HOLD_RIGHT - HOLD_LEFT;
    moving_y = HOLD_DOWN - HOLD_UP;
}

if (state=0){
    if (global.walljumpmode = 0){
        if (place_meeting(x+moving_x,y,obj_solid) && !grounded && moving_x != old_moving_x){
            vsp=2
            skin_dir=-moving_x
            if (JUMP){
                hsp=-6*moving_x
                vsp=-wallcling_power
                old_moving_x = moving_x
                state_timer = 0
                wallcling_power-=1
            }
        }
    }
    else if (global.walljumpmode = 1){
        if (place_meeting(x+2,y,par_solid) && dudeimgoingotkillmyself = -1|| place_meeting(x-2,y,par_solid) && dudeimgoingotkillmyself = 1) && (!grounded){
            vsp=2
            if (JUMP){
                if (place_meeting(x+2,y,par_solid)) {
                    dudeimgoingotkillmyself = -1
                    x-=2
                }
                if (place_meeting(x-2,y,par_solid)) {
                    dudeimgoingotkillmyself = 1
                    x+=2
                }
                hsp=-6*moving_x
                vsp=-wallcling_power
                old_moving_x = moving_x
                state_timer = 0
                wallcling_power-=1
            }
        }
    }
}
if (grounded) {
    wallcling_power = 14
    old_moving_x = 0
}

//hsp=clamp(hsp,-walkspd,walkspd)
if (abs(hsp)>walkspd) hsp-=dcc*sign(hsp)

if (!place_meeting(x+sign(hsp),y-5,par_solid)){
    if (moving_x = 0){
        if (sign(hsp)>0) hsp=max(hsp-dcc*sign(hsp),0)
        else if (sign(hsp)<0) hsp=min(hsp-dcc*sign(hsp),0)
    }
    
    else if (moving_x!=0){
        hsp+=acc*moving_x
    }
}

repeat ceil(abs(hsp)) {
		x += sign(hsp);
    if !place_meeting(x,y,par_solid) && place_meeting(x,y+3,par_solid) {
        y++;
        if !place_meeting(x,y,par_solid) y++;
    }
    if place_meeting(x,y,par_solid) {
        if place_meeting(x,y-2,par_solid) {
            x -= sign(hsp);
            hsp = 0;
            break;
        } else {
            y--;
            if place_meeting(x,y,par_solid) y--;
        }
    }
		}
if (!place_meeting(x,y+sign(vsp),par_solid)){
    vsp+=grav
    grounded = false
}
if (place_meeting(x,y+sign(vsp),par_solid)){
    while(!place_meeting(x,y+sign(vsp),par_solid)){
        repeat(vsp) y -= sign(vsp)
        }
        if (state = 0){
            vsp = 0
            grounded = true
            if (grounded = true && vsp=0 && JUMP){
                grounded = false
                vsp = -jumpstr
                
                skin_xscale = 0.85
                skin_yscale = 1.15
                audio_play_sound(sfx_jump,0,false)
            }
        }
}

repeat abs(vsp) {
    y += sign(vsp);
    if place_meeting(x,y,par_solid){
        if (vsp < 0 && !place_meeting(x-1,y,par_solid)){
            x--;
            if (!place_meeting(x-1,y,par_solid)) x--;
        } else if (vsp < 0 && !place_meeting(x+1,y,par_solid)){
            x++;
            if (!place_meeting(x+1,y,par_solid)) x++;
        } else{
            y -= sign(vsp);
            vsp = 0;
            break;
        }
    }
}


// the slope code
while (place_meeting(x+sign(hsp),y,obj_slope_solid)) y--

if (grounded){
    point1 = 1;
    point2 = 1;
    while !collision_point(bbox_left,y+point1,par_solid,true,true) {
        point1++;
        if point1 > 63{
            point1 = 1;
            break;
        }
    }
    while !collision_point(bbox_right,y+point2,par_solid,true,true) {
        point2++;
        if point2 > 63 {
            point2 = 1;
            break;
        }
    }
    
    if (point_direction(bbox_left,point1,bbox_right,point2) == (360-slopang)%360) slopang = (360-slopang)%360;
    else slopang += angle_difference(point_direction(bbox_left,point1,bbox_right,point2),slopang)/3;
    } else {
    slopang += angle_difference(0,slopang)/5;
}

if (DASH && state=0 && ability_cd = 0 && moving_x!=0){
    state_timer = 0
    state = 1
    ability_cd = 120
}

if (state = 1){
    if (state_timer = 1) audio_play_sound(sfx_dash,0,false)
    grounded = false
    skin_dir = moving_x
    allow_moving = true
    hsp = 14 * moving_x
    vsp = 0
    if (state_timer = 45){
        state = 0
        allow_moving = false
    }
    var create_afterimage = instance_create_layer(x, y, layer, obj_afterimage)
    create_afterimage.sprite_index = animation
    create_afterimage.image_index = frame
    create_afterimage.image_xscale = skin_dir
    create_afterimage.fade_spd = 0.08
    create_afterimage.image_blend = c_purple
}

skin_xscale = lerp(skin_xscale,1,0.1) 
skin_yscale = lerp(skin_yscale,1,0.1)

frame = (frame+sprite_get_speed(animation)) mod sprite_get_number(animation)

if (abs(hsp)>0 && grounded && state = 0) && (frame = 1 || frame = 3) audio_play_sound(sfx_walk,0,false)

switch (state){
    case 0:
        if (place_meeting(x+moving_x,y,obj_solid) && !grounded && moving_x != old_moving_x) animation = spr_wallcling
            
        else{
           if (grounded){
               if (hsp!=0) skin_dir = sign(hsp)
                   
               if (abs(hsp) < 0.1) animation = spr_idle
               if (abs(hsp) > 0.1) animation = spr_walk
           }
           else{
               if (vsp<0) animation = spr_jump
               if (vsp>0) animation = spr_fall
           }
        }
    break
    
    case 1:
        animation = spr_dash
    break
}
