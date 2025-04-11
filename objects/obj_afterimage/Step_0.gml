timer++
// destroy when invisible
image_alpha -= fade_spd;
if(image_alpha <= 0){
    instance_destroy();
};
