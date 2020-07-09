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

bench_timer = 0;
bench_phase = 0;

// Kirby
kirbyability = 16;
kirb_used = 0;
swallowed = 1;
enemykirby = undefined;


// Trummel
trummelcodecneeded = false;
trummelcodec_id = noone;



//ATTACKS


//Dair
has_dair_hit = false;
has_dspecial_air_hit = false;

//Neutral Special Boosted
shade_soul_hit = false;
shade_soul_first_hit = false;
shade_soul_x = 0;
shade_soul_y = 0;
shade_soul_player_hit = noone;

//Forward Special Boosted
fspecial_boosted_hit = false;
fspecial_boosted_player_hit = noone;
fspecial_boosted_got_out = false;

//Forward Special Boosted
dspecial_boosted_hit = false;
dspecial_boosted_player_hit = noone;
dspecial_boosted_got_out = false;

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


//HIT EFFECTS

nspecial_explosion = hit_fx_create(sprite_get("nspecial_explosion"), 30);
nspecial_boosted_explosion = hit_fx_create(sprite_get("nspecial_boosted_explosion"), 30);

shade_hit_weak = hit_fx_create(sprite_get("shade_hit_weak"), 20);
shade_hit_weak_2 = hit_fx_create(sprite_get("shade_hit_weak_2"), 20);


soul_hit_weak = hit_fx_create(sprite_get("soul_hit_weak"), 20);
soul_hit_heavy = hit_fx_create(sprite_get("soul_hit_heavy"), 20);

//PARTICLE EFFECTS
soul_full_effect = hit_fx_create(sprite_get("soul_full_effect"), 30);
soul_full_play = -1;

soul_burst_1 = hit_fx_create(sprite_get("soul_burst_1"), 40);
soul_burst_2 = hit_fx_create(sprite_get("soul_burst_2"), 40);
soul_burst_3 = hit_fx_create(sprite_get("soul_burst_3"), 40);
soul_burst_4 = hit_fx_create(sprite_get("soul_burst_4"), 40);
soul_burst_5 = hit_fx_create(sprite_get("soul_burst_5"), 40);
soul_burst_play = 0;
soul_burst_x = 0;
soul_burst_y = 0;

shade_burst_1 = hit_fx_create(sprite_get("shade_burst_1"), 50);
shade_burst_2 = hit_fx_create(sprite_get("shade_burst_2"), 50);
shade_burst_3 = hit_fx_create(sprite_get("shade_burst_3"), 50);
shade_burst_4 = hit_fx_create(sprite_get("shade_burst_4"), 50);
shade_burst_5 = hit_fx_create(sprite_get("shade_burst_5"), 50);
shade_burst_play = 0;
shade_burst_x = 0;
shade_burst_y = 0;

shade_bubbles_1 = hit_fx_create(sprite_get("shade_bubbles_1"), 22);
shade_bubbles_2 = hit_fx_create(sprite_get("shade_bubbles_2"), 22);
shade_bubbles_3 = hit_fx_create(sprite_get("shade_bubbles_3"), 22);
shade_bubbles_4 = hit_fx_create(sprite_get("shade_bubbles_4"), 22);
shade_bubbles_5 = hit_fx_create(sprite_get("shade_bubbles_5"), 22);
shade_bubbles_play = 0;
shade_bubbles_x = 0;
shade_bubbles_y = 0;

feathers_burst_1 = hit_fx_create(sprite_get("feathers_burst_1"), 40);
feathers_falling_1 = hit_fx_create(sprite_get("feathers_falling_1"), 40);
feathers_falling_2 = hit_fx_create(sprite_get("feathers_falling_2"), 40);
feathers_falling_3 = hit_fx_create(sprite_get("feathers_falling_3"), 40);
feathers_play = 0;

//----------------------------------------------------------

//Common Variables

hurtbox_spr = sprite_get("_hurtbox_standing");
crouchbox_spr = sprite_get("_hurtbox_crouching");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = 0.2;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = 0.35;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.1;
walk_turn_time = 5;
initial_dash_time = 10;
initial_dash_speed = 7;
dash_speed = 6.3;
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
prat_fall_accel = .4; //multiplier of air_accel while in pratfall
air_friction = .07;
max_djumps = 1;
double_jump_time = 45; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .64;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
can_wall_cling = true;
land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .06; //grounded deceleration when wavelanding


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

dream_nail[0] = "Debug Knight 1";
dream_nail[1] = "Debug Knight 2";
dream_nail[2] = "Debug Knight 3";

dream_nail_zetterburn[0] = "Debug Zetterburn 1";
dream_nail_zetterburn[1] = "Debug Zetterburn 2";
dream_nail_zetterburn[2] = "Debug Zetterburn 3";

dream_nail_kragg[0] = "Debug Kragg 1";
dream_nail_kragg[1] = "Debug Kragg 2";
dream_nail_kragg[2] = "Debug Kragg 3";

dream_nail_frosburn[0] = "Debug Frosburn 1";
dream_nail_frosburn[1] = "Debug Frosburn 2";
dream_nail_frosburn[2] = "Debug Frosburn 3";

dream_nail_maypul[0] = "Debug Maypul 1";
dream_nail_maypul[1] = "Debug Maypul 2";
dream_nail_maypul[2] = "Debug Maypul 3";

dream_nail_clairen[0] = "Debug Clairen 1";
dream_nail_clairen[1] = "Debug Clairen 2";
dream_nail_clairen[2] = "Debug Clairen 3";

dream_nail_sylvanos[0] = "Debug Sylvanos 1";
dream_nail_sylvanos[1] = "Debug Sylvanos 2";
dream_nail_sylvanos[2] = "Debug Sylvanos 3";

dream_nail_wrastor[0] = "Debug Wrastor 1";
dream_nail_wrastor[1] = "Debug Wrastor 2";
dream_nail_wrastor[2] = "Debug Wrastor 3";

dream_nail_orcane[0] = "Debug Orcane 1";
dream_nail_orcane[1] = "Debug Orcane 2";
dream_nail_orcane[2] = "Debug Orcane 3";

dream_nail_absa[0] = "Debug Absa 1";
dream_nail_absa[1] = "Debug Absa 2";
dream_nail_absa[2] = "Debug Absa 3";

dream_nail_etalus[0] = "Debug Etalus 1";
dream_nail_etalus[1] = "Debug Etalus 2";
dream_nail_etalus[2] = "Debug Etalus 3";

dream_nail_elliana[0] = "Debug Elliana 1";
dream_nail_elliana[1] = "Debug Elliana 2";
dream_nail_elliana[2] = "Debug Elliana 3";

dream_nail_ranno[0] = "Debug Ranno 1";
dream_nail_ranno[1] = "Debug Ranno 2";
dream_nail_ranno[2] = "Debug Ranno 3";

dream_nail_ori[0] = "Debug Ori 1";
dream_nail_ori[1] = "Debug Ori 2";
dream_nail_ori[2] = "Debug Ori 3";

dream_nail_shovel[0] = "Debug Shovel 1";
dream_nail_shovel[1] = "Debug Shovel 2";
dream_nail_shovel[2] = "Debug Shovel 3";

//TP related branch
//          CHANGE --------- CHANGE
debug = 0;
newhit_vsp = 0;
newhit_hsp = 0;
hitbox_hitpause = 0;
shade_soul = noone;
clinging_timer = 0;
vanillachar = 25; // Permet de détecter le main cast
dream_random = "";

nsb_parried = 0;
player_who_parried = noone;

ds_timer = 0;

//Practice mode
practice = false;      //Whether you're in Practice Mode or not.
shade_mod = false;
timer1 = get_game_timer();      //The initial game timer.
timer2 = 0;                     //The game timer after a couple seconds pass.
