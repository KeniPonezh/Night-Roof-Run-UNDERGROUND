draw_sprite_ext(animation,frame,x,y/*+abs(slopang/2)*/,skin_xscale* skin_dir,skin_yscale,0,c_white,1)

var debug_text, debug_result
debug_text = ["hsp", "vsp", "xmove", "ymove", "grounded", "slope angle", "state", "state timer"]
debug_result = [string(hsp), string(vsp), string(moving_x),string(moving_y), string(grounded), string(slopang), string(state), string(state_timer)]
if (global.debug){
    for (var i = 0; i < array_length(debug_text); ++i){
        draw_text(clamp(x + 20,0,room_width-20), clamp(y + 16*i,0+ 16*i,room_height- 16*i), debug_text[i] + " : " + debug_result[i]);
    }
}