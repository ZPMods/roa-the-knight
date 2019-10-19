// EUPEUDEÏTEUH
// Walking Variables
    walk_speed = 4;
    walk_accel = 0.2;
    walk_turn_time = 6;
    initial_dash_speed = 8;
    dash_speed = 6;
    dash_turn_time = 10;
    dash_turn_accel = 1.5;
    dash_stop_time = 7;
    dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
    ground_friction = .5;
    moonwalk_accel = 1.4;

    air_max_speed = 5;
    air_accel = .5;

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
    walk_speed = walk_speed + 1.5;
    walk_accel = walk_accel + 0.1;
    walk_turn_time = walk_turn_time - 1;
    initial_dash_speed = initial_dash_speed + 1.5;
    dash_speed = dash_speed + 1;

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
    soulcatcher_multiplier = soulcatcher_multiplier + 0.3;

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
    knockback_adj = knockback_adj - 0.4;

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
}else{
    if(state == PS_IDLE_AIR && attack == AT_TAUNT){
        is_equipping_charms = false;
    }
}



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
//----------------------------------------------------------
//----------------------------------------------------------