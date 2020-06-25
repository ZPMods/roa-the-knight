//article1_init
sprite_index = sprite_get("nspecial_boosted_proj_1");

//Properties Variables
hsp = 10;
vsp = 0;
free = true;
can_be_grounded = false;
ignores_walls = false;
spr_dir = 1;
uses_shader = true;

//Custom Variables
timer = 0;
timer_boom = 14;
stage_left = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
stage_right = (room_width - get_stage_data(SD_X_POS)) + get_stage_data(SD_SIDE_BLASTZONE);
owner = player_id;

//          CHANGE --------- CHANGE
shade_soul_player_hit = noone;
newhit_vsp = 0;
newhit_hsp = 0;
shade_bubbles_play = 0;
shade_soul_hit = false;
shade_soul_first_hit = false;
shade_hitbox = noone;
shade_drag = noone;
shade_boom = noone;
shade_player_id = player_id;
parried = false;
destroy_firsthit = false;


//Animation
nspecial_animation_frame = 8;
nspecial_animation_framelength = 4;
nspecial_animation_timer = 0;

//Bubbles
bubbles_timer = 0;
shade_bubbles_x = x;
shade_bubbles_y = y - 40;

audio = sound_get("knight_special_neutral_boosted_loop");
sound_play(audio);
