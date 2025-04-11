if (place_meeting(x,y,obj_player) && !activated){
    activated = true
    timer = obj_player.timer
}

if (activated){
    sc_xscale = 1 + dsin(current_time / 12) * 0.2
    sc_yscale = 1 + dcos(current_time / 12) * 0.2
    sc_angle = dsin(current_time / 12) * 50
}