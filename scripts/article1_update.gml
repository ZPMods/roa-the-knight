//article1_update

if (init == 0){
    init = 1;
    
    with (asset_get("obj_article1")){
        if (id != other.id && player_id == other.player_id && state < 2){
            state = 2;
            state_timer = 0;
        }
    }
}

state_timer++;

var grow_time = 8;
if (state == 0){ //growing
    image_index = state_timer * 4 / grow_time;
    if (state_timer == floor(grow_time*.5)){
        create_hitbox(AT_DSPECIAL, 1, x-11*spr_dir, y-40);
    }
    if (state_timer == grow_time){
        state = 1;
        state_timer = 0;
    }
}
if (state == 1){
    image_index = 4;
    
    with (asset_get("pHitBox")){
        if (player_id == other.player_id && (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR)
        && hbox_num == 2 && place_meeting(x,y,other.id)){
            other.state = 3;
            if (attack == AT_FSPECIAL_AIR){
                other.state = 4;
                with (player_id){
                    set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_VSPEED, -18);
                }
            }
            other.state_timer = 0;
        } else if (player_id == other.player_id && !player_id.ate_player_bamboo
        && attack == AT_NSPECIAL && place_meeting(x,y,other.id)){
            other.state = 4;
            other.state_timer = 0;
            player_id.window = 4;
            player_id.window_timer = 0;
        }
    }
}
var die_time = 8;
if (state == 2){
    image_index = 5 + state_timer * 4 / die_time;
    if (state_timer == die_time){
        instance_destroy();
        exit;
    }
}

var break_time = 16;
if (state == 3){
    if (state_timer == 1){
        var bamboo = create_hitbox(AT_USPECIAL, 1, x, y-32);
        bamboo.hsp = 0;
        if (player_id.left_down) bamboo.hsp -= 3;
        if (player_id.right_down) bamboo.hsp += 3;
        bamboo.vsp = -10;
    }
    image_index = 9 + state_timer * 4 / break_time;
    if (state_timer == break_time){
        instance_destroy();
        exit;
    }
}
if (state == 4){
    image_index = 9 + state_timer * 4 / break_time;
    if (state_timer == break_time){
        instance_destroy();
        exit;
    }
}

var wiggle_time = 15;
if (state == 5){
    image_index = 13 + state_timer * 5 / wiggle_time;
    if (state_timer == wiggle_time){
        state = 1;
        state_timer = 0;
        image_index = 4;
    }
}