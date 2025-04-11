timer++

var dir
dir = point_direction(x,y,target.x,target.y - 60)
hsp = approach(hsp,lengthdir_x(15,dir),0.265)
vsp = approach(vsp,lengthdir_y(15,dir),0.265)