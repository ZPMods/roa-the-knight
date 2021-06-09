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
    case PS_CROUCH:
        if(has_charm(SHAPE_OF_UNN)){
            sprite_index = crouch_worm_spr;
            if(cr_window == 1){
                
                image_index = ease_linear(0, 2, cr_window_timer, 4);
            }else if(cr_window == 2){
                
                if(hsp == 0){
                    image_index = 6;
                    crouch_anim_index = 0;
                }else if(hsp > 0){
                    
                    crouch_anim_index +=  crouch_anim_speed * spr_dir;
                    crouch_anim_index = crouch_anim_index % 6;
                    
                    if(crouch_anim_index < 0) crouch_anim_index = 5;
                    image_index = crouch_anim_index + 3;
                }else{
                    
                    crouch_anim_index +=  crouch_anim_speed * spr_dir;
                    crouch_anim_index = crouch_anim_index % 6;
                    
                    if(crouch_anim_index < 0) crouch_anim_index = 5;
                    image_index = crouch_anim_index + 3;
                }
            }else{
                image_index = ease_linear(2, 0, cr_window_timer, 4);
            }
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

                image_index = ease_linear(0, image_number - 1, vsp + max_fall < 0 ? 0 : floor(vsp + max_fall), floor(max_fall*2));
            }
        break;
        case "landing":
            sprite_index = sprite_get("land");
            image_index = 0;
        break;
    }
}


#define has_charm(charm)

// is_charm_equipped >> charm shifts the charm flag location one to the most right flag
// then it performs AND, if equipped then must be a one
return (is_charm_equipped >> charm) & 1;
