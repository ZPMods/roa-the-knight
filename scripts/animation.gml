//coucou
switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*6.5));
    break;

    case PS_WALK:
        image_index = floor(image_number*state_timer/(image_number*5));
        
        
    break;
    
    case PS_WALL_JUMP:
        if(clinging){
            image_index = 0;
        }else{
            image_index = floor(image_number*(state_timer - clinging_timer)/(image_number*2.5));
        }
    break;    
}
if(nail_charging){
    print("gawerg")
    hurtboxID.sprite_index = hurtbox_spr;
    switch(custom_state){
        case "walk":
            if(hsp == 0){
                sprite_index = sprite_get("idle");
                image_index = idle_anim_speed*custom_state_timer;
            }else{
                sprite_index = sprite_get("walk");
                image_index = floor(image_number*custom_state_timer/(image_number*5));
            }
        break;
        case "walkturn":
            sprite_index = sprite_get("walkturn");
            image_index = ease_linear(0, 2, custom_state_timer, walk_turn_time -1);
        break;
        case "jumpstart":
            sprite_index = sprite_get("jumpstart");
            image_index = ease_linear(0, 1, custom_state_timer, jump_start_time -1);
        break;
        case "jump":
            sprite_index = sprite_get("jump");
            if(custom_state_timer > double_jump_time){
                image_index = double_jump_time;
            }else{
                image_index = ease_linear(0, image_number - 1, custom_state_timer, double_jump_time);
            }
        break;
        case "landing":
            sprite_index = sprite_get("land");
            image_index = 0;
        break;
    }
}