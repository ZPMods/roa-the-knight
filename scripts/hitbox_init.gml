if(attack == AT_NSPECIAL_2 and hbox_num == 3){
    //Properties Variables
    free = true;
    can_be_grounded = false;
    ignores_walls = false;
    
    //Custom Variables
    timer = 0;
    timer_boom = 14;
    stage_left = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
    stage_right = (room_width - get_stage_data(SD_X_POS)) + get_stage_data(SD_SIDE_BLASTZONE);
    owner = player_id;
    destroy_this = false;
    
    //          CHANGE --------- CHANGE
    shade_soul_player_hit = noone;
    newhit_vsp = 0;
    newhit_hsp = 0;
    fx_shade_bubbles_play = 0;
    shade_soul_hit = false;
    shade_soul_first_hit = false;
    shade_hitbox = noone;
    shade_drag = noone;
    spawn_drag = false;
    shade_boom = noone;
    shade_player_id = player_id;
    parried = false;
    destroy_firsthit = false;
    
    //Bubbles
    bubbles_timer = 0;
    fx_shade_bubbles_x = x;
    fx_shade_bubbles_y = y - 40;
    
    audio = sound_get("knight_special_neutral_boosted_loop");
    sound_play(audio);

}
// if player_id.nsb_parried and attack == AT_NSPECIAL_2 and hbox_num != 3{
//     if(instance_exists(player_id.shade_soul)){
//         var hbox = player_id.shade_soul;
//         was_parried = hbox.was_parried;
//         player = hbox.player;
//     }
    
// }