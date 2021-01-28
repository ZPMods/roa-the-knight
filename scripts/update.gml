// Test Nul
//soul_points = 100;
//debug = 0;
//Rainbow Color
if(get_gameplay_time() <= 120 and get_player_color(player) == 9){
	if(alt_change_cooldown <= 0){
		shader_pride();
		init_shader();
	}else{
		alt_change_cooldown--;
	}
	
}
if get_player_color(player) == rainbow_alt {
	hue+=1 if hue>255 hue-=255;
	//make hue shift every step + loop around

	color_rgb=make_color_rgb(167, 195, 217);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb));
	set_color_profile_slot(rainbow_alt,0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));



	color_rgb=make_color_rgb(84, 87, 138);
	hue3=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue3,color_get_saturation(color_rgb),color_get_value(color_rgb));
	set_color_profile_slot(rainbow_alt, 1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));

	color_rgb=make_color_rgb(110, 106, 131);
	hue4=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue4,color_get_saturation(color_rgb),color_get_value(color_rgb));
	set_color_profile_slot(rainbow_alt, 2,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));

	color_rgb=make_color_rgb(24, 23, 33);
	hue5=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue5,color_get_saturation(color_rgb),color_get_value(color_rgb));
	set_color_profile_slot(rainbow_alt, 3,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));

	color_rgb=make_color_rgb(84, 87, 138);
	hue6=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue6,color_get_saturation(color_rgb),color_get_value(color_rgb));
	set_color_profile_slot(rainbow_alt, 4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	init_shader();
	}

//Credits Anguish (Code From Kirby)

//taunt.hurtbox_spr = "taunt_hurt";

if (get_player_color(player) == 1 && get_gameplay_time() <= 3 )
{
	if (jump_pressed && attack_pressed)
	{
		//Shayd
		set_color_profile_slot(1, 0, 35, 41, 67); //Helmet
		set_color_profile_slot(1, 1, 152, 14, 3); //Cape
		set_color_profile_slot(1, 2, 152, 14, 3); //Nail
		set_color_profile_slot(1, 3, 35, 41, 67); //Body
		set_color_profile_slot(1, 4, 8, 194, 109); //Eyes */

	}
	if (special_pressed && jump_pressed)
	{
		//Uki
		set_color_profile_slot(1, 0, 175, 221, 239); //Helmet
		set_color_profile_slot(1, 1, 67, 174, 216); //Cape
		set_color_profile_slot(1, 2, 226, 240, 245); //Nail
		set_color_profile_slot(1, 3, 64, 26, 93); //Body
		set_color_profile_slot(1, 4, 245, 90, 204); //Eyes */
	}
	if (jump_pressed && taunt_pressed)
	{
		//Bumble
		set_color_profile_slot(1, 0, 229, 229, 229); //Helmet
		set_color_profile_slot(1, 1, 37, 158, 37); //Cape
		set_color_profile_slot(1, 2, 65, 67, 80); //Nail
		set_color_profile_slot(1, 3, 40, 40, 40); //Body
		set_color_profile_slot(1, 4, 30, 30, 30); //Eyes */

	}
	if(attack_pressed && special_pressed)
	{
		//Yg
		set_color_profile_slot(1, 0, 136, 136, 136); //Helmet
		set_color_profile_slot(1, 1, 254, 254, 254); //Cape
		set_color_profile_slot(1, 2, 136, 136, 136); //Nail
		set_color_profile_slot(1, 3, 75, 77, 86); //Body
		set_color_profile_slot(1, 4, 55, 56, 61); //Eyes */
	}
	init_shader();

}

//----------------------------------------------------------
// GAMEPLAY
//----------------------------------------------------------
if(free && hsp > air_max_speed)
{
}
//Early access
if (get_player_color(player) == early_access_alt)
{
    for(i = 0; i < 5; i++)
    {
        set_character_color_shading(i, 0);
    }
}



//NTS Effect
if (state == PS_AIR_DODGE && window == 2 && window_timer == 9)
{
     nts_effect_show = true;
}

if ((state == PS_ROLL_FORWARD || state == PS_TECH_FORWARD || state == PS_ROLL_BACKWARD || state == PS_TECH_BACKWARD) && window == 2 && window_timer == 9)
{
     nts_effect_show = true;
}

if (state == PS_TECH_GROUND && window_timer == 0)
{
     nts_effect_show = true;
}


//Practice Soul gain
if (get_gameplay_time() >= 140){

    timer2 = get_game_timer();
    if (timer1 == timer2 && timer1 != 0 && !practice){
        practice = true;
    }
}
if (practice)
{
    if(shield_pressed && taunt_pressed && !shade_mod)
    {
    	shade_mod = true;
        clear_button_buffer(PC_SHIELD_PRESSED);
        clear_button_buffer(PC_TAUNT_PRESSED);
    }
}

if (practice)
{
	if(shield_pressed && taunt_pressed && shade_mod)
	{
		shade_mod = false;
		soul_points = 100;
		clear_button_buffer(PC_SHIELD_PRESSED);
        clear_button_buffer(PC_TAUNT_PRESSED);
	}
}

if(shade_mod)
{
	soul_points ++;
}


//          CHANGE --------- CHANGE

// //Neutral Special Boosted Multihit
// if (shade_soul_first_hit)
// {
//      shade_soul_player_hit.x = lerp(shade_soul_player_hit.x, shade_soul_x, 0.3);
//      shade_soul_player_hit.y = lerp(shade_soul_player_hit.y, shade_soul_y, 0.3);
// }

// //Forward Special Boosted Multihit
// if (fspecial_boosted_hit)
// {
//      fspecial_boosted_player_hit.x = lerp(fspecial_boosted_player_hit.x, x, 0.8);
//      fspecial_boosted_player_hit.y = lerp(fspecial_boosted_player_hit.y, y, 0.8);
// }

if (fspecial_boosted_hit && !(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR))
{
     fspecial_boosted_player_hit = noone;
     fspecial_boosted_hit = false;
}

// //Down Special Boosted Multihit
// if (dspecial_boosted_hit)
// {
//      dspecial_boosted_player_hit.x = lerp(dspecial_boosted_player_hit.x, x, 0.8);
//      dspecial_boosted_player_hit.y = lerp(dspecial_boosted_player_hit.y, y, 0.8) + 40;
// }

if (dspecial_boosted_hit && !(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR))
{
     dspecial_boosted_player_hit = noone;
     dspecial_boosted_hit = false;
}

//Down Special Cooldown Reset
if (!free)
{
  move_cooldown[AT_DSPECIAL] = 0;
}

//Down Special Cancel
if(state == PS_AIR_DODGE || state == PS_DOUBLE_JUMP || state == PS_IDLE)
{
	ds_timer = 0;
}

//Forward Special Cooldown Reset
if (!free && move_cooldown[AT_FSPECIAL] > 25)
{
     move_cooldown[AT_FSPECIAL] = 0;
}
if(state == PS_WALL_JUMP)
{
	move_cooldown[AT_FSPECIAL] = 0;
}

//Soul Full Effect
if (soul_full_play == 0)
{
	sound_play(sound_get("soul_full"));
	spawned_soul_effect = spawn_hit_fx(x, y-35, soul_full_effect);
}

if (soul_full_play >= 0)
{
	soul_full_play += 1

	spawned_soul_effect.x = x;
	spawned_soul_effect.y = y-40;
}

if (soul_full_play == 30)
{
	soul_full_play = -1;
	spawnShadeBurst(x, y - 35);
	white_flash_timer = 10;
}

//Particle effects triggers from other scripts, 'cause you can't call a function from other scripts for some godforsaken reason, @dan plz fix
if (soul_burst_play = 1)
{
	soul_burst_play = 0;
	spawnSoulBurst(soul_burst_x, soul_burst_y);
}

if (shade_burst_play = 1)
{
	shade_burst_play = 0;
	spawnShadeBurst(shade_burst_x, shade_burst_y);
}


//Mantis Claw
if state != PS_WALL_JUMP{
	clinging = false;
	clinging_timer = 0;
	sound_stop(sound_get("knight_wall_slide"));
}else{
	if (clinging){
		if clinging_timer == 0 { sound_play(sound_get("knight_mantis_claw")); }
		if clinging_timer == 1 { sound_play(sound_get("knight_wall_slide")) }


		vsp = clinging_timer * 0.2;
		if vsp > max_fall { vsp = max_fall; }
		clinging_timer++;
	}else{

		sound_stop(sound_get("knight_wall_slide"));
		if clinging_timer == state_timer - 1{ sound_play(sound_get("knight_wall_jump")); }

	}
}

//bench collision check
if instance_exists(bench) and free and (state != PS_ATTACK_GROUND and attack == AT_TAUNT){
	bench.end_anim = true;
}

//------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//----------------------------------------------------------
// WORKSHOP, EASTER EGGS AND MORE
//----------------------------------------------------------

//Kirby Ability
/*if swallowed{

    swallowed = 0;
    kirby_used = 0;

    var ability_spr = sprite_get("nspecial");
    var ability_air_spr = sprite_get("nspecial");
    var hurtbox_spr = sprite_get("nspecial_hurt");
    var ability_proj_spr = sprite_get("nspecial_proj");

    with enemykirby{
    set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
    set_attack_value(AT_EXTRA_3, AG_SPRITE,ability_spr);
    set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
    set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
    set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
    set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_air_spr);
    set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, hurtbox_spr);

    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 15);
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 4);
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED, 0);
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, 0);
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED_TYPE, 1);
    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);

    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 4);
    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);
    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED, 0);
    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, 0);
    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED_TYPE, 1);
    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 1);

    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 12);
    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 4);
    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED, 0);
    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, 0);
    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED_TYPE, 1);
    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 1);


    set_num_hitboxes(AT_EXTRA_3, 1);

    set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 0);
    set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
    set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
    set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 40);
    set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 14);
    set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 90);
    set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 60);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
    set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 6);

    set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.3);
    set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 9);
    set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 75);
    set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_proj_spr);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, ability_proj_spr);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .2);
    set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 10);
    }

}
if enemykirby != undefined { //if kirby is in a match & swallowed
    with oPlayer { //Run through all players
        if (state_cat == SC_GROUND_COMMITTED || state_cat == SC_GROUND_NEUTRAL) && move_cooldown[AT_EXTRA_3] == 0 {
            kirb_used_Theknight = 0;
        }
        if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3) {
            if (kirb_used_Theknight == 0) {
                kirb_used_Theknight = 1;
                move_cooldown[AT_EXTRA_3] = 20;
            }

        }
    }
}*/

if swallowed {
    swallowed = 0;
    kirb_used = 0;

    var ability_spr = sprite_get("Kirby_Knight");
    var ability_air_spr = sprite_get("Kirby_Knight");
    var hurtbox_spr = sprite_get("Kirby_Knight_hurt");
    var ability_proj_spr = sprite_get("nspecial_proj");
	var sound_nspecial = sound_get("knight_special_neutral_normal");
	var vfx = hit_fx_create(sprite_get("soul_hit_heavy"), 20);

    with enemykirby {

        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
    	set_attack_value(AT_EXTRA_3, AG_SPRITE,ability_spr);
    	set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
    	set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
    	set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
    	set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_air_spr);
    	set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, hurtbox_spr);

    	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
    	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 17);
    	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
    	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
    	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 4);
    	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED, 0);
    	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, 0);
    	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED_TYPE, 1);
    	set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);

    	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
    	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 4);
    	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
    	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
    	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, sound_nspecial);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
    	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED, 0);
    	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, 0);
    	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED_TYPE, 1);
    	set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 1);

    	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
    	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 12);
    	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
    	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 3);
    	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED, 0);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, 0);
    	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED_TYPE, 1);
    	set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 1);

        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 99765); //Arbitrary value in a dead window for checking

        set_num_hitboxes(AT_EXTRA_3, 1);

    	set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 40);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 32);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -50);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 90);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 60);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 9);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 6);
    	set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 8);
    	set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.3);
    	set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 9);
    	set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 60);
    	set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, vfx);
    	set_hitbox_value(AT_EXTRA_3, 1, HG_EFFECT, 0);
    	set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_proj_spr);
    	set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, ability_proj_spr);
    	set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .2);
    	set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 10);
    }
}

if enemykirby != undefined { //if kirby is in a match & swallowed
    with asset_get("oPlayer") { //Run through all players
        if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3) {
            if (get_window_value(AT_EXTRA_3,4,AG_WINDOW_ANIM_FRAMES) == 99765) {

                kirb_used_Theknight = 1;
                move_cooldown[AT_EXTRA_3] = 70;
                //sound_play(other.sound_get("knight_special_neutral"));
            }

        }
    }
}
//Trummel
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 5;
    trummelcodecsprite1 = sprite_get("smalltalk");
    trummelcodecsprite2 = sprite_get("charm_notch_on");

    //Page 0
    trummelcodecspeaker[0] = 2;
    trummelcodecexpression[0] = 2;

    trummelcodecline[0,1] = "";
    trummelcodecline[0,2] = "";
    trummelcodecline[0,3] = "";
    trummelcodecline[0,4] = "";

    //Page 1
    trummelcodecspeaker[1] = 3;
    trummelcodecexpression[1] = 1;

    trummelcodecline[1,1] = "...";
    trummelcodecline[1,2] = "";
    trummelcodecline[1,3] = "";
    trummelcodecline[1,4] = "";


    //Page 2
    trummelcodecspeaker[2] = 1;
    trummelcodecexpression[2] = 0;

    trummelcodecline[2,1] = "";
    trummelcodecline[2,2] = "";
    trummelcodecline[2,3] = "";
    trummelcodecline[2,4] = "";

    //Page 3
    trummelcodecspeaker[3] = 2;
    trummelcodecexpression[3] = 2;

    trummelcodecline[3,1] = "";
    trummelcodecline[3,2] = "";
    trummelcodecline[3,3] = "";
    trummelcodecline[3,4] = "";

    //Page 4
    trummelcodecspeaker[4] = 1;
    trummelcodecexpression[4] = 0;

    trummelcodecline[4,1] = "";
    trummelcodecline[4,2] = "";
    trummelcodecline[4,3] = "";
    trummelcodecline[4,4] = "";

    //Page 5
    trummelcodecspeaker[5] = 1;
    trummelcodecexpression[5] = 0;

    trummelcodecline[5,1] = "";
    trummelcodecline[5,2] = "";
    trummelcodecline[5,3] = "";
    trummelcodecline[5,4] = "";
}

//Abyss Runes

//Get a damage boost while at 100% or higher
if has_rune("D"){ 
	
}

//Neutral Special travel twice as fast
if has_rune("E"){
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 20);
}

//Down Special will leave a soul mark on the ground
if has_rune("F"){
	
}

//Up Special doesn't put you into freefall
if has_rune("G"){
	set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 0);
	set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 8);
	set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 0);
}


//Forward Special travels much farther
if has_rune("H"){
	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 18);
	set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED, 22);
}

//100 Soul h24
if has_rune("L"){
	shade_mod = true;
}

//Neutral Special stuns
if has_rune("M"){
	set_hitbox_value(AT_NSPECIAL, 1,HG_EFFECT, 8);
}
// Break the target

if get_btt_data { //Get data for Break The Targets
	course_name = "The Knight Course";
	//Set the spawn properties
	respawn_point = [[155,60],[0,0],1];
	//Set the collision of the solid sprites to precise
	sprite_change_collision_mask("btt_solid",true, 1, 0, 0, 0, 0, 0 );
	room_add(1,[
	    [ //Each Cell
	        [0,0], //Cell Coordinates
	        [
	        	//Targets
		        //[10, 155, 60, 0, -5, [0, 0, 32, [[0,0],[0,-3]], 0, 0, 0, 0], [0]],
		        //[10, 40, 30.5, 0, -5, [1, 0, 60, [[-10,0],[5,0]], 0, 0, 0, 0], [0]],
		        [10, 96, 55, 0, -5, [1, 0, 0, 0, 0, 0, 0, 0], [0]], //Pogo Duo 1
		        [10, 83, 55, 0, -5, [2, 0, 0, 0, 0, 0, 0, 0], [0]], //Pogo Duo 2
		        [10, 132,55, 0, -5, [3, 0, 0, 0, 0, 0, 0, 0], [0]], //Pogo Start
		        [10, 115,20, 0, -5, [4, 0, 0, 0, 0, 0, 0, 0], [0]],
		        [10, 108,38, 0, -5, [5, 0, 0, 0, 0, 0, 0, 0], [0]], //NSpecial
		        [10, 89,20, 0, -5, [6, 0, 0, 0, 0, 0, 0, 0], [0]],
		        //Solid Ground
		    	[1, 2, 2, 2, 0, [sprite_get("btt_solid"), 0, 0, 0, 0, 0, 0, 0], [0]],
		    	//Plats
		    	[1, 85, 25, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
		    	[1, 130, 40, 1, 0, [sprite_get("btt_plat_64"), 0, 0, 0, 0, 0, 0, 0], [0]],
	            ]
	        ],
	    //Blastzones
	    [ //Each Cell
	        [0,1], //Cell Coordinates
	        [
	            [4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 2608, 20, 0], [0,0]]
	            ]
	        ],
	    [
	        [1,1],
	        [
	        	[4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 2608, 20, 0], [0,0]]
	            ]
	        ],
	    [ //Each Cell
	        [-1,1], //Cell Coordinates
	        [
	        	[4, 0, 32, 0, 0, [4, 0, 0, 0, 0, 2608, 20, 0], [0,0]]
	            ]
	        ]
	    ]);
}





#define room_add(_room_id,room_data) //Adds a new room to the scene
with obj_stage_article if num == 5 {
	var _room_id_ind = array_find_index(array_room_ID,_room_id);
	if _room_id_ind == - 1 {
	    if debug print_debug("[RM] Adding... "+string(_room_id));
	    array_push(array_room_data,room_data);
	    array_push(array_room_ID,_room_id);
	} else {
	    array_room_data[_room_id_ind] = room_data;
	    array_room_ID[_room_id_ind] = _room_id;
	}
}

//------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//----------------------------------------------------------
// FUNCTIONS
//----------------------------------------------------------

#define spawnSoulBurst
//argument 0 = x
//argument 1 = y
var id = random_func(0, 5, true);
var toSpawn = soul_burst_1;

switch (id)
{
	case 0 : toSpawn = soul_burst_1; break;
	case 1 : toSpawn = soul_burst_2; break;
	case 2 : toSpawn = soul_burst_3; break;
	case 3 : toSpawn = soul_burst_4; break;
	case 4 : toSpawn = soul_burst_5; break;
}

spawn_hit_fx(argument[0], argument[1], toSpawn);

//----------------------------------------------------------

#define spawnShadeBurst
//argument 0 = x
//argument 1 = y
var id = random_func(0, 5, true);
var toSpawn = shade_burst_1;

switch (id)
{
	case 0 : toSpawn = shade_burst_1; break;
	case 1 : toSpawn = shade_burst_2; break;
	case 2 : toSpawn = shade_burst_3; break;
	case 3 : toSpawn = shade_burst_4; break;
	case 4 : toSpawn = shade_burst_5; break;
}

spawn_hit_fx(argument[0], argument[1], toSpawn);

//----------------------------------------------------------
#define shader_pride
var pride_alt = 9;
var current_flag = -1;
alt_change_cooldown = 15;
if(keyboard_lastchar != ""){
	last_flag = current_flag;
	movement_timer = 0;
	switch(keyboard_lastchar){
		
		case "1":
			current_flag = 0;
			break;
		case "2":
			current_flag = 1;
			break;
		case "3":
			current_flag = 2;
			break;
		case "4":
			current_flag = 3;
			break;
		case "5":
			current_flag = 4;
			break;
		case "6":
			current_flag = 5;
			break;
		case "7":
			current_flag = 6;
			break;
		case "8":
			current_flag = 7;
			break;
		case "9":
			current_flag = 8;
			break;
			
	}
}
keyboard_string = "";
switch (current_flag)
{
    //Trans
    case 0 :

    set_color_profile_slot(pride_alt, 0, 232, 181, 182); // Helmet
    set_color_profile_slot(pride_alt, 1, 211, 129, 189); // Cape
    set_color_profile_slot(pride_alt, 2, 67, 174, 216); // Nail
    set_color_profile_slot(pride_alt, 3, 40, 40, 40); // Body
    set_color_profile_slot(pride_alt, 4, 15, 15, 30); // Eyes

    break;

    //Gay
    case 1 :

    set_color_profile_slot(pride_alt, 0, 189, 243, 217); // Helmet
    set_color_profile_slot(pride_alt, 1, 123, 173, 227); // Cape
    set_color_profile_slot(pride_alt, 2, 38, 206, 170); // Nail
    set_color_profile_slot(pride_alt, 3, 26, 19, 47); // Body
    set_color_profile_slot(pride_alt, 4, 15, 15, 30); // Eyes

    break;

    //Lesbian
    case 2 :

    set_color_profile_slot(pride_alt, 0, 255, 220, 196); // Helmet
    set_color_profile_slot(pride_alt, 1, 255, 77, 77); // Cape
    set_color_profile_slot(pride_alt, 2, 212, 98, 165); // Nail
    set_color_profile_slot(pride_alt, 3, 24, 23, 33); // Body
    set_color_profile_slot(pride_alt, 4, 15, 15, 30); // Eyes

    break;

    //Bi
    case 3 :

    set_color_profile_slot(pride_alt, 0, 181, 199, 232); // Helmet
    set_color_profile_slot(pride_alt, 1, 205, 55, 131); // Cape
    set_color_profile_slot(pride_alt, 2, 136, 105, 172); // Nail
    set_color_profile_slot(pride_alt, 3, 16, 30, 57); // Body
    set_color_profile_slot(pride_alt, 4, 15, 15, 30); // Eyes

    break;

    //Pan
    case 4 :

    set_color_profile_slot(pride_alt, 0, 232, 181, 206); // Helmet
    set_color_profile_slot(pride_alt, 1, 253, 217, 0); // Cape
    set_color_profile_slot(pride_alt, 2, 112, 160, 186); // Nail
    set_color_profile_slot(pride_alt, 3, 8, 28, 41); // Body
    set_color_profile_slot(pride_alt, 4, 15, 15, 30); // Eyes

    break;

    //Ace
    case 5 :

    set_color_profile_slot(pride_alt, 0, 229, 229, 229); // Helmet
    set_color_profile_slot(pride_alt, 1, 160, 59, 160); // Cape
    set_color_profile_slot(pride_alt, 2, 163, 163, 163); // Nail
    set_color_profile_slot(pride_alt, 3, 35, 35, 35); // Body
    set_color_profile_slot(pride_alt, 4, 15, 15, 30); // Eyes

    break;

    //Aro
    case 6 :

    set_color_profile_slot(pride_alt, 0, 206, 231, 179); // Helmet
    set_color_profile_slot(pride_alt, 1, 90, 167, 94); // Cape
    set_color_profile_slot(pride_alt, 2, 163, 163, 163); // Nail
    set_color_profile_slot(pride_alt, 3, 35, 35, 35); // Body
    set_color_profile_slot(pride_alt, 4, 15, 15, 30); // Eyes

    break;

    //Non-Binary
    case 7 :

    set_color_profile_slot(pride_alt, 0, 212, 207, 203); // Helmet
    set_color_profile_slot(pride_alt, 1, 157, 92, 213); // Cape
    set_color_profile_slot(pride_alt, 2, 253, 247, 95); // Nail
    set_color_profile_slot(pride_alt, 3, 66, 66, 71); // Body
    set_color_profile_slot(pride_alt, 4, 15, 15, 30); // Eyes

    break;

    //Genderqueer
    case 8 :

    set_color_profile_slot(pride_alt, 0, 218, 202, 235); // Helmet
    set_color_profile_slot(pride_alt, 1, 99, 135, 72); // Cape
    set_color_profile_slot(pride_alt, 2, 184, 159, 202); // Nail
    set_color_profile_slot(pride_alt, 3, 49, 44, 53); // Body
    set_color_profile_slot(pride_alt, 4, 15, 15, 30); // Eyes

    break;
}