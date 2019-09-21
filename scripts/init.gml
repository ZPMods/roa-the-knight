//----------------------------------------------------------
//Custom Variables
//----------------------------------------------------------

//SOUL

//Soul points, Boosted Attacks
soul_points = 0;

SP_nspecial = 20;
SP_fspecial = 20;
SP_dspecial = 20;
SP_uspecial = 20;

charged_time = 0;
required_charge_time = 10;
is_charged = false;

//Soul Meter animation
soulmeter_animation_frame = 1;
soulmeter_animation_framelength = 10;
soulmeter_animation_timer = 0;

//----------------------------------------------------------

//CHARMS

//Notches number
notches_avaible = 2;

//Equipping CHARMS
is_equipping_charms = false;

equip_cooldown = false;
equip_cooldown_timer = 0;

charms_ui_alpha = 0;
charms_facing_direction = 0;

selected_charm = "stalwart";

equipped_charm_1 = "";
equipped_charm_2 = "";
equipped_charm_3 = "";

equipped_charm_1_cost = 1;

charm_selector_x = -100;
charm_selector_y = -100;

//Charms color
stalwart_color = c_white;
soulcatcher_color = c_white;
shamanstone_color = c_white;
grubsong_color =  c_white;
strength_color = c_white;
heart_color = c_white;
sporeshroom_color = c_white;
dashmaster_color = c_white;

//Charms cost value
stalwart_cost = 1;
soulcatcher_cost = 1;
shamanstone_cost = 1;
grubsong_cost =  1;
strength_cost = 1;
heart_cost = 1;
sporeshroom_cost = 1;
dashmaster_cost = 1;

//Overcharmed
overcharmed = false;

overcharm_shaking_1_x = 0;
overcharm_shaking_1_y = 0;

overcharm_shaking_2_x = 0;
overcharm_shaking_2_y = 0;

overcharm_shaking_3_x = 0;
overcharm_shaking_3_y = 0;
overcharm_shaking_timer = 0;

//----------------------------------------------------------

//Common Variables

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = 0.35;
pratfall_anim_speed = .25;




walk_speed = 4;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 8;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 7;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 13;
short_hop_speed = 8;
djump_speed = 13;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .5;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 45; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


//Effets Charmes

