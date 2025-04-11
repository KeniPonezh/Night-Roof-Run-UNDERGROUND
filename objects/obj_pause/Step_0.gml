var effect_hpf = audio_effect_create(AudioEffectType.HPF2)
effect_hpf.bypass = false
audio_bus_main.effects[0] = effect_hpf

if(keyboard_check_pressed(vk_enter)){
    instance_activate_all()
    effect_hpf.bypass = true
    instance_destroy()
}

if (keyboard_check_pressed(ord("R"))){
    audio_stop_all()
    instance_activate_all()
    effect_hpf.bypass = true
    instance_destroy()
    room_restart()
}