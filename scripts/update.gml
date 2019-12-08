// EUPEUDEÏTEUH
// Walking Variables
    walk_speed = 3;
    walk_accel = 0.1;
    walk_turn_time = 5;
    initial_dash_speed = 7;
    dash_speed = 5.5;
    dash_turn_time = 10;
    dash_turn_accel = 1.5;
    dash_stop_time = 7;
    dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
    ground_friction = .5;
    moonwalk_accel = 1.4;

    air_max_speed = 4;
    air_accel = .4;

// Dodge / Air Dodge Variables
    air_dodge_speed = 7.5;

    roll_forward_max = 9; //roll speed
    roll_backward_max = 9;

// Knockback Variable
    knockback_adj = 1.1;

// Soul Variable
    soulcatcher_multiplier = 1;



if(equipped_charm_1 = "dashmaster" || equipped_charm_2 = "dashmaster" || equipped_charm_3 = "dashmaster")
{
    // BONUS
    walk_speed = walk_speed + 1;
    walk_accel = walk_accel + 0.2;
    walk_turn_time = walk_turn_time - 1;
    initial_dash_speed = initial_dash_speed + 0.75;
    dash_speed = dash_speed + 0.6;

    air_max_speed = air_max_speed + 1;
    air_accel = air_accel + 0.05;

    //MALUS
    knockback_adj = knockback_adj + 0.3;
}

if(equipped_charm_1 = "stalwart" || equipped_charm_2 = "stalwart" || equipped_charm_3 = "stalwart")
{
    // BONUS
    air_dodge_speed = air_dodge_speed + 1.5;

    roll_forward_max = roll_forward_max + 2; //roll speed
    roll_backward_max = roll_backward_max + 2;

    // MALUS
    walk_speed = walk_speed - 1;
    walk_accel = walk_accel - 0.1;
    walk_turn_time = walk_turn_time + 1;
    initial_dash_speed = initial_dash_speed - 1;
    dash_speed = dash_speed - 1;

}


if(equipped_charm_1 = "soulcatcher" || equipped_charm_2 = "soulcatcher" || equipped_charm_3 = "soulcatcher")
{
    // BONUS
    soulcatcher_multiplier = soulcatcher_multiplier + 0.4;

    // MALUS
}

if(equipped_charm_1 = "grubsong" || equipped_charm_2 = "grubsong" || equipped_charm_3 = "grubsong")
{
    // BONUS
    soulcatcher_multiplier = soulcatcher_multiplier - 0.2;

    // MALUS
}



if(equipped_charm_1 = "heart" || equipped_charm_2 = "heart" || equipped_charm_3 = "heart")
{
    // BONUS
    knockback_adj = knockback_adj - 0.5;

    // MALUS dans hit_player
}


// OVERCHARM
if (overcharmed = true)
{
    knockback_adj = knockback_adj + 0.3;
}

//Moves cooldown
//Down Special
if (!free)
{
  move_cooldown[AT_DSPECIAL] = 0;
}

//New check for a state other than attack cancelling
if(((state != PS_ATTACK_GROUND && state_cat == SC_GROUND_COMMITTED) || state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL || state_cat == SC_AIR_COMMITTED) && attack == AT_TAUNT){
    is_equipping_charms = false;
}

//----------------------------------------------------------
//Rainbow
//----------------------------------------------------------
if get_player_color(player) = 9 {
	hue+=1 if hue>255 hue-=255;
	//make hue shift every step + loop around

	color_rgb=make_color_rgb(167, 195, 217);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb));
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(9,0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color


	color_rgb=make_color_rgb(84, 87, 138);
	//make a gamemaker color variable using kirby's default color (feet)
	hue3=(color_get_hue(color_rgb)+hue) mod 255;
	//kirby's feet keep the same hue as his skin
	color_hsv=make_color_hsv(hue3,color_get_saturation(color_rgb),color_get_value(color_rgb));
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(9,1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color

	color_rgb=make_color_rgb(110, 106, 131);
	//make a gamemaker color variable using kirby's default color (feet)
	hue4=(color_get_hue(color_rgb)+hue) mod 255;
	//kirby's feet keep the same hue as his skin
	color_hsv=make_color_hsv(hue4,color_get_saturation(color_rgb),color_get_value(color_rgb));
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(9,2,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color

	color_rgb=make_color_rgb(24, 23, 33);
	//make a gamemaker color variable using kirby's default color (feet)
	hue5=(color_get_hue(color_rgb)+hue) mod 255;
	//kirby's feet keep the same hue as his skin
	color_hsv=make_color_hsv(hue5,color_get_saturation(color_rgb),color_get_value(color_rgb));
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(9,3,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color

	color_rgb=make_color_rgb(173, 3, 91);
	//make a gamemaker color variable using kirby's default color (feet)
	hue6=(color_get_hue(color_rgb)+hue) mod 255;
	//kirby's feet keep the same hue as his skin
	color_hsv=make_color_hsv(hue6,color_get_saturation(color_rgb),color_get_value(color_rgb));
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(9,4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	//set the new color using rgb values from the gamemaker color
	}


init_shader();


//----------------------------------------------------------
//Kirby Ability
//----------------------------------------------------------

if swallowed{

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

//Cooldown Kirby NSpecial


/*if enemykirby != undefined // If Kirby is in a match & swallowed
{

   with oPlayer //Check All Players
   {
       if (attack == AT_EXTRA_3)
       {
           if(window == 3 && window_timer == 1){
               move_cooldown[AT_EXTRA_3];
           }
       }
   }
}
*/

//--------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//NTS EFFECT ---------------------------------------------

if (state == PS_AIR_DODGE && window == 2 && window_timer == 9)
{
     nts_effect_show = true;
}

