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

//Animation
nspecial_animation_frame = 8;
nspecial_animation_framelength = 4;
nspecial_animation_timer = 0;
