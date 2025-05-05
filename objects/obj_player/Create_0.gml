char = 0

var physics = {
    walkspd : [8],
    acc : [0.6],
    dcc : [0.8],
    grav : [0.55],
    jumpstr : [12],
}

hsp = 0
vsp = 0
walkspd = physics.walkspd[char]
acc = physics.acc[char]
dcc = physics.dcc[char]
grav = physics.grav[char]
jumpstr = physics.jumpstr[char]
grounded = 0
moving_x = 0
moving_y = 0
allow_moving = false
state = 0
state_timer = 0
wallcling_power = 12
ability_cd = 0

cam_x = x
cam_y = y
cam_x_offset = 0

point1 = 1
point2 = 1
slopang = 0

animation = spr_idle
frame = 0
skin_dir = 1
skin_xscale = 1
skin_yscale = 1

timer = 0

old_moving_x = 0

pause_cd = 0

dudeimgoingotkillmyself = 0

repeat 1 instance_create_depth(x,y,depth,obj_fly)