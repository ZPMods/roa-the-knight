//this var makes f5 not break the buddy if developing with more than one
//workshop character or buddy in the match
//abyss_devmode = true;
//
abyssEnabled = false;
enum runes {A = 1,B = 2,C = 3,D = 4,E = 5,F = 6,G = 7,H = 8,I = 9,J = 10,K = 11,L = 12,M = 13,N = 14,O = 15}
ab_hud_x = 0;
ab_hud_y = 0;

//abyssMods[1 to 15] = [type, description];
//types are: -1 - disabled
// 0 - object mod: Modifies a static object left behind after an attack.
// 1 - ranged mod: Modifies a projectile attack.
// 2 - hit mod: Modifies a direct physical interaction with an opponent.
// 3 - ability boost: Powers up a character attribute or action.
abyssMods = array_create(16,[-1,"Not Implemented."]);
//example rune definition:
abyssMods[@ runes.A] = [3,"The Knight can wallcling. "];
//abyssMods[@ runes.B] = [3,"Ground speed is faster."];
abyssMods[@ runes.C] = [3,"Boosted Special cost 10 less soul."];
abyssMods[@ runes.D] = [2,"Special Moves burn the enemy."];
abyssMods[@ runes.E] = [3,"Ground speed is faster."];
//abyssMods[@ runes.F] = [3,"Ground speed is faster."];

abyssMods[@ runes.G] = [3,"Sandbert's Values"];
abyssMods[@ runes.H] = [3,"Up Special cover more distance."];
abyssMods[@ runes.I] = [3,"Up Special Boosted doesn't put you in pratfall."];
abyssMods[@ runes.J] = [3,"Second Double Jump."];
//abyssMods[@ runes.K] = [3,"Ground speed is faster."];

//abyssMods[@ runes.L] = [2,"Charm Wheel babyyyy!"];
abyssMods[@ runes.M] = [3,"Special Boosted cost no soul"];
abyssMods[@ runes.N] = [3,"WAVEDAAAASH!"];
abyssMods[@ runes.O] = [3,"Ground speed is faster."];

//abyss init code over

//----------------------------------------------------------
//Custom Variables
//----------------------------------------------------------
swallowed = 1;

//Shade Soul
shade_soul_hit = false;
shade_soul_first_hit = false;
shade_soul_x = 0;
shade_soul_y = 0;
shade_soul_player_hit = 0;

// Kirby
kirbyability = 16;
kirb_used = 0;

// Trummel
trummelcodecneeded = false;
trummelcodec_id = noone;

//ATTACKS
has_dair_hit = false;
has_dspecial_air_hit = false;

//SOUL

//Soul points, Boosted Attacks
soul_points = 0;

SP_nspecial = 25;
SP_fspecial = 25;
SP_dspecial = 25;
SP_uspecial = 25;

charged_time = 0;
required_charge_time = 10;
is_charged = false;
/*
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

//Overcharmed
overcharmed = false;

overcharm_shaking_1_x = 0;
overcharm_shaking_1_y = 0;

overcharm_shaking_2_x = 0;
overcharm_shaking_2_y = 0;

overcharm_shaking_3_x = 0;
overcharm_shaking_3_y = 0;

overcharm_shaking_timer = 0;

//Charms Variables
soulcatcher_multiplier = 1;
*/

//ANIMATIONS

//Airdodge Trail
airdodge_trail_1_x = 0;
airdodge_trail_1_y = 0;
airdodge_trail_1_alpha = 1;
airdodge_trail_1_show = false;

airdodge_trail_2_x = 0;
airdodge_trail_2_y = 0;
airdodge_trail_2_alpha = 1;
airdodge_trail_2_show = false;

airdodge_trail_3_x = 0;
airdodge_trail_3_y = 0;
airdodge_trail_3_alpha = 1;
airdodge_trail_3_show = false;

//Roll Backward Trail
rollbackward_trail_1_x = 0;
rollbackward_trail_1_y = 0;
rollbackward_trail_1_alpha = 1;
rollbackward_trail_1_show = false;

rollbackward_trail_2_x = 0;
rollbackward_trail_2_y = 0;
rollbackward_trail_2_alpha = 1;
rollbackward_trail_2_show = false;

rollbackward_trail_3_x = 0;
rollbackward_trail_3_y = 0;
rollbackward_trail_3_alpha = 1;
rollbackward_trail_3_show = false;

rollbackward_trail_4_x = 0;
rollbackward_trail_4_y = 0;
rollbackward_trail_4_alpha = 1;
rollbackward_trail_4_show = false;

//Roll Forward Trail
rollforward_trail_1_x = 0;
rollforward_trail_1_y = 0;
rollforward_trail_1_alpha = 1;
rollforward_trail_1_show = false;

rollforward_trail_2_x = 0;
rollforward_trail_2_y = 0;
rollforward_trail_2_alpha = 1;
rollforward_trail_2_show = false;

rollforward_trail_3_x = 0;
rollforward_trail_3_y = 0;
rollforward_trail_3_alpha = 1;
rollforward_trail_3_show = false;

rollforward_trail_4_x = 0;
rollforward_trail_4_y = 0;
rollforward_trail_4_alpha = 1;
rollforward_trail_4_show = false;

//Soul Meter animation
soulmeter_animation_frame = 1;
soulmeter_animation_framelength = 10;
soulmeter_animation_timer = 0;

//nts_effect animation
nts_effect_show = false;
nts_effect_freeze = false;
nts_effect_x = 0;
nts_effect_y = 0;
nts_effect_animation_frame = 1;
nts_effect_animation_framelength = 2;
nts_effect_animation_timer = 0;

//nspecial_effect animation
nspecial_effect_show = false;
nspecial_effect_freeze = false;
nspecial_effect_x = 0;
nspecial_effect_y = 0;
nspecial_effect_animation_frame = 1;
nspecial_effect_animation_framelength = 2;
nspecial_effect_animation_timer = 0;
nspecial_effect_dir = "right";

//nspecial_boosted_effect animation
nspecial_boosted_effect_show = false;
nspecial_boosted_effect_freeze = false;
nspecial_boosted_effect_x = 0;
nspecial_boosted_effect_y = 0;
nspecial_boosted_effect_animation_frame = 1;
nspecial_boosted_effect_animation_framelength = 2;
nspecial_boosted_effect_animation_timer = 0;
nspecial_boosted_effect_dir = "right";

//dspecial_explosion animation
dspecial_explosion_show = false;
dspecial_explosion_freeze = false;
dspecial_explosion_x = 0;
dspecial_explosion_y = 0;
dspecial_explosion_animation_frame = 1;
dspecial_explosion_animation_framelength = 2;
dspecial_explosion_animation_timer = 0;

//HIT EFFECTS

nspecial_explosion = hit_fx_create(sprite_get("nspecial_explosion"), 30);
nspecial_boosted_explosion = hit_fx_create(sprite_get("nspecial_boosted_explosion"), 30);

dspecial_explosion = hit_fx_create(sprite_get("dspecial_hiteffect"), 20);

shade_hit_weak = hit_fx_create(sprite_get("shade_hit_weak"), 20);

//----------------------------------------------------------

//Common Variables

hurtbox_spr = sprite_get("_hurtbox_standing");
crouchbox_spr = sprite_get("_hurtbox_crouching");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = 0.35;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.1;
walk_turn_time = 5;
initial_dash_time = 10;
initial_dash_speed = 7;
dash_speed = 5.5;
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
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4;
prat_fall_accel = .80; //multiplier of air_accel while in pratfall
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
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.45; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 2;
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
air_dodge_active_frames = 3;
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

//colors
hue = 0;

//Dream Nail
vanillachar = 0; // Permet de détecter le main cast
dream_random = 0;
dream_nail_1 = "No mind to think"; // Phrase 1 
dream_nail_2 = "No will to break"; // Phrase 2
dream_nail_draw_1 = "";
dream_nail_draw_2 = "";

//Practice mode
practice = false;               //Whether you're in Practice Mode or not.
timer1 = get_game_timer();      //The initial game timer.
timer2 = 0;                     //The game timer after a couple seconds pass.
