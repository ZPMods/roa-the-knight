//STRONG MOVEMENT
if((attack == AT_FSTRONG && window == 1)|| (attack == AT_DSTRONG && window == 1))
{
    var mov_value = lengthdir_x(0.4, joy_dir);
    if (joy_pad_idle == false and hsp/mov_value <= 1)
    {
        hsp = mov_value;
    }
}

//Test DSpecial mvt
if((attack == AT_DSPECIAL && window >= 6 && !hitpause) || attack == AT_DSPECIAL_2 && window <= 4 && !hitpause)
{
    if (joy_pad_idle == false)
    {
        hsp = lengthdir_x(1.5, joy_dir);
    }
}
//DACUS

if (attack == AT_DATTACK && window <= 2 && window_timer <= 3)
{
    can_ustrong = true;
}
//BOOSTED --------------------------------------------------

//Forward Special Boosted
if (attack == AT_FSPECIAL)
{
  if (window == 1)
  {
    if (special_down && soul_points >= SP_nspecial)
    {
      charged_time += 1;

      if (charged_time == get_window_value(attack, 1, AG_WINDOW_LENGTH))
      {
        window = 1;
        window_timer = 0;
        attack = AT_FSPECIAL_2;
        soul_points -= SP_fspecial;
        hurtboxID.sprite_index = sprite_get("fspecial_boosted_hurt");
        nts_effect_show = true;
      }
    }
  }
}


//UpSpecial Boosted
if (attack == AT_USPECIAL)
{
  if (window == 1)
  {
    if (special_down && soul_points >= SP_nspecial)
    {
      charged_time += 1;

      if (charged_time == get_window_value(attack, 1, AG_WINDOW_LENGTH))
      {
        window = 1;
        window_timer = 0;
        attack = AT_USPECIAL_2;
        soul_points -= SP_uspecial;
        hurtboxID.sprite_index = sprite_get("uspecial_boosted_hurt");
        nts_effect_show = true;
      }
    }
  }
}

if (attack == AT_USPECIAL)
{
    can_wall_jump = true;
}
if (attack == AT_USPECIAL_2)
{
    can_wall_jump = true;
}

//FSPECIAL
if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_2)
{
    can_wall_jump = true;
}

// Down Special Boosted
if (attack == AT_DSPECIAL)
{
  if (window == 1)
  {
    if (special_down && soul_points >= SP_nspecial)
    {
      charged_time += 1;

      if (charged_time == get_window_value(attack, 1, AG_WINDOW_LENGTH))
      {
        window = 1;
        window_timer = 0;
        attack = AT_DSPECIAL_2;
        soul_points -= SP_dspecial;
        hurtboxID.sprite_index = sprite_get("dspecial_boosted_hurt");
        nts_effect_show = true;
      }
    }
  }
}

//Neutral Special Boosted
if (attack == AT_NSPECIAL)
{
  if (window == 1)
  {
    if (special_down && soul_points >= SP_nspecial)
    {
      charged_time += 1;

      if (charged_time == get_window_value(attack, 1, AG_WINDOW_LENGTH))
      {
        window = 1;
        window_timer = 0;
        attack = AT_NSPECIAL_2;
        soul_points -= SP_nspecial;

        nts_effect_show = true;
      }
    }
  }
}

//--------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//DOWN SPECIAL MECHANICS ---------------------------------

//Empecher le boost vertical en l'air
if (attack == AT_DSPECIAL && free && window == 1 && window_timer == get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH))
{
     window = 3;
     window_timer = 0;
}

//Hitbox au sol
if (attack == AT_DSPECIAL && !free && window == 4)
{
	 destroy_hitboxes();
     window = 5;
     window_timer = 0;
}
if (attack == AT_DSPECIAL && window == 5)
{
     if (window_timer == 18)
     {
          window = 29;
          window_timer = 0;
     }
}

//Hitbox en l'air
if (attack == AT_DSPECIAL && window == 4 && has_dspecial_air_hit == true)
{

  window = 6;
  window_timer = 0;
}
if (attack == AT_DSPECIAL && window == 7 && window_timer == 7)
{
  window = 29;
  window_timer = 0;
  move_cooldown[AT_DSPECIAL] = 999;
}

//Cancel possible
if((attack == AT_DSPECIAL && window >= 4) || attack == AT_DSPECIAL_2)
{
    ds_timer += 1;
}

if ((attack == AT_DSPECIAL && window == 4 && window_timer >= 3) || (attack == AT_DSPECIAL && window == 5 && ds_timer > 30))
{
    can_jump = true;
    can_shield = true;
}
if((attack == AT_DSPECIAL_2 && window == 3 && window_timer >= 3 && !hitpause) || (attack == AT_DSPECIAL_2 && window == 4 && ds_timer > 30 && !hitpause))
{
   can_jump = true;
   can_shield = true;
}
if(attack == AT_DSPECIAL_2 && window == 4 && window != 5)
{
    can_jump = false;
    can_shield = false;

    if(jump_pressed || shield_pressed)
    {
        set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_HSPEED, 0);
        set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_VSPEED, 0);
        set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_HSPEED_TYPE, 1);
        set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_VSPEED_TYPE, 1);
        set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_SFX, sound_get("knight_special_up_boosted"));
        set_hitbox_value(AT_DSPECIAL_2, 10, HG_ANGLE, 75);
        set_hitbox_value(AT_DSPECIAL_2, 10, HG_BASE_KNOCKBACK, 13);
        set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_LENGTH, 7);
        set_hitbox_value(AT_DSPECIAL_2, 10, HG_KNOCKBACK_SCALING, 0);
        window = 6;
        window_timer = 0;
    }
    else
    {
        set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_HSPEED_TYPE, 1);
        set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_HSPEED, 0);
        set_hitbox_value(AT_DSPECIAL_2, 6, HG_ANGLE, 100);
        set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_HAS_SFX, 0);
        set_hitbox_value(AT_DSPECIAL_2, 10, HG_ANGLE, 60);
        set_hitbox_value(AT_DSPECIAL_2, 10, HG_BASE_KNOCKBACK, 10);
        set_hitbox_value(AT_DSPECIAL_2, 10, HG_KNOCKBACK_SCALING, .9);
        set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_LENGTH, 18);
    }
}
//DOWN SPECIAL BOOSTED MECHANICS -------------------------

//Empecher le boost vertical en l'air
if (attack == AT_DSPECIAL_2 && free && window == 1)
{
  window = 3;
}

//Hitbox au sol
if (attack == AT_DSPECIAL_2 && !free && window == 4)
{
  window = 5;
  window_timer = 0;
}


//          CHANGE --------- CHANGE

/* if (attack == AT_DSPECIAL_2 and (newhit_vsp != 0 or newhit_hsp != 0))
{
    if(dspecial_boosted_player_hit != noone){
        if ((dspecial_boosted_player_hit.state == PS_HITSTUN or dspecial_boosted_player_hit.state == PS_HITSTUN_LAND) and !dspecial_boosted_player_hit.hitpause){
            dspecial_boosted_player_hit.vsp = newhit_vsp;
            dspecial_boosted_player_hit.hsp = newhit_hsp;
            newhit_vsp = 0;
            newhit_hsp = 0;
            debug = 1;
        }

    }
} */

//Getting out failsafe
if (attack == AT_DSPECIAL_2)
{
     if (dspecial_boosted_player_hit != noone)
     {
          if (window == 4 && (window_timer == 0 || window_timer == 4 || window_timer == 8 || window_timer == 12))
          {
               dspecial_boosted_got_out = true;
          }

          if ((window == 4 && (window_timer == 3 || window_timer == 7 || window_timer == 11 || window_timer == 15)) && dspecial_boosted_got_out == true)
          {
               dspecial_boosted_player_hit.hsp = 0;
               dspecial_boosted_player_hit.vsp = 1;

               dspecial_boosted_player_hit = noone;
               dspecial_boosted_hit = false;
               dspecial_boosted_got_out = false;
          }
     }
}


//--------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//NEUTRAL SPECIAL MECHANICS ---------------------------------

//Neutral Special Cooldown
if (attack == AT_NSPECIAL)
{
    move_cooldown[AT_NSPECIAL] = 30;
}

if (attack == AT_NSPECIAL_2)
{
    move_cooldown[AT_NSPECIAL] = 25;
}

//Effect
if (attack == AT_NSPECIAL && window == 2 && window_timer == 8)
{
     nspecial_effect_show = true;
}

//NEUTRAL SPECIAL BOOSTED MECHANICS -------------------------

//Faire spawn l'article
if (attack == AT_NSPECIAL_2 && window == 2 && window_timer == 1)
{
     shade_soul = instance_create(x + 20 * spr_dir, y + 10, "obj_article1");
     shade_soul.shade_soul_hit = false;
     shade_soul.shade_soul_first_hit = false;
     nbs_parried = false;
     shade_soul.spr_dir = spr_dir;
     shade_soul.hsp *= spr_dir;
}

//Effect
if (attack == AT_NSPECIAL_2 && window == 1 && window_timer == 8)
{
     nspecial_boosted_effect_show = true;
}

//--------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//FORWARD SPECIAL MECHANICS ---------------------------------

//Forward Special Cooldown
if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_2)
{
     if (free)
     {
          move_cooldown[AT_FSPECIAL] = 999;
     }
     else
     {
          move_cooldown[AT_FSPECIAL] = 25;
     }
}

/* if (attack == AT_FSPECIAL && window == 1 && window_timer == 8)
{
     spawn_hit_fx(x, y, dash_burst)
} */

//FORWARD SPECIAL BOOSTED MECHANICS ---------------------------------

//Forward Special Boosted Position Reset
if (attack != AT_FSPECIAL_2)
{
     fspecial_boosted_player_hit = noone;
     fspecial_boosted_hit = false;
}

//Getting out failsafe
if (attack == AT_FSPECIAL_2)
{
     if (fspecial_boosted_player_hit != noone)
     {
          if (window == 2 && (window_timer == 3 || window_timer == 6 || window_timer == 9))
          {
               fspecial_boosted_got_out = true;
          }

          if (((window == 2 && (window_timer == 5 || window_timer == 8)) || (window == 3 && window_timer == 1)) && fspecial_boosted_got_out == true)
          {
               fspecial_boosted_player_hit.hsp = 4 * spr_dir;

               fspecial_boosted_player_hit = noone;
               fspecial_boosted_hit = false;
               fspecial_boosted_got_out = false;
          }
     }
}


//          CHANGE --------- CHANGE

if (attack == AT_FSPECIAL_2 and (newhit_vsp != 0 or newhit_hsp != 0))
{
    if(fspecial_boosted_player_hit != noone){
        if ((fspecial_boosted_player_hit.state == PS_HITSTUN or fspecial_boosted_player_hit.state == PS_HITSTUN_LAND) and !fspecial_boosted_player_hit.hitpause){

            fspecial_boosted_player_hit.vsp = newhit_vsp;
            fspecial_boosted_player_hit.hsp = newhit_hsp;
            newhit_vsp = 0;
            newhit_hsp = 0;
            debug = 1;
        }
    }
}



//Forward Special Boosted Jump Cancel
if ((attack == AT_FSPECIAL_2 && hitpause) || attack == AT_FSPECIAL_2)
{
     if (fspecial_boosted_player_hit != noone)
     {
          if (hitpause)
          {
               can_jump = true;

               if (jump_pressed)
               {
                    hsp = 1 * spr_dir;
                    fspecial_boosted_player_hit.hsp = 2 * spr_dir;
               }
          }
          else
          {
               can_jump = false;
          }
     }
     else
     {
          can_jump = true;

          if (jump_pressed && djumps == 0)
          {
               set_state(PS_FIRST_JUMP);
               hsp = 10 * spr_dir;
          }
     }
}



//--------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//DIVERS ---------------------------------

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL)
{
    trigger_b_reverse();
}

//Taunt
if (attack == AT_TAUNT)
{	
	 sitting = true;
     if (window >= 4 && window < 7 && (shield_pressed || taunt_pressed))
     {
          /* if was_parried{
               set_state(PS_PRATFALL);
          }else{
          	   set_state(PS_LAND);
          } */

          window = 7;
          window_timer = 0;
          if instance_exists(bench){
        	  bench.end_anim = true;
          }
          print_debug("oi")
		  
          clear_button_buffer(PC_SHIELD_PRESSED);
          clear_button_buffer(PC_TAUNT_PRESSED);
     }
     
     if instance_exists(colliding_bench){
     	if colliding_bench.end_anim and bench != colliding_bench and hop_off{
     		hop_off = false;
	     	window = 7
	     	window_timer = 0;
	    }
	    if(window == 7){
	     	sitting = false;
	     	if sitting_id == 2{
	     		colliding_bench.num_sitting[sitting_id] = colliding_bench.num_sitting[sitting_id+1];
	     		colliding_bench.num_sitting[sitting_id+1] = noone;
	     	}else{
	     		colliding_bench.num_sitting[sitting_id] = noone;
	     	}
	     }
     }
     
}

//Pogo dair
if (attack == AT_DAIR)
{
     if (window == 1)
     {
          pogo = 0;
     }

     if (has_hit)
     {
          pogo = 10;
     }

     if (down_hard_pressed)
     {
          pogo = 0;
     }

     if (window == 3 && window_timer == 1)
     {
          if (pogo > 0)
          {
               vsp = - pogo;
          }
     }
}

//Reset buffer jab
if (attack == AT_JAB && window == 1)
{
     clear_button_buffer(PC_ATTACK_PRESSED);
}

//Pas de fastfall pendant les attaques
if (attack == AT_USPECIAL || attack == AT_USPECIAL_2 || attack == AT_NSPECIAL || attack == AT_NSPECIAL_2 || attack == AT_FSPECIAL || attack == AT_FSPECIAL_2 || attack == AT_DSPECIAL || attack == AT_DSPECIAL_2)
{
     can_fast_fall = false;
}

//NTS Effect
if (attack == AT_NSPECIAL_2 && window == 3 && window_timer == 9)
{
     nts_effect_show = true;
}

if (attack == AT_FSPECIAL_2 && window == 3 && window_timer == 15)
{
     nts_effect_show = true;
}

if (attack == AT_USPECIAL_2 && window == 4 && window_timer == 17)
{
     nts_effect_show = true;
}

if (attack == AT_DSPECIAL_2 && window == 7 && window_timer == 15)
{
     nts_effect_show = true;
}

//Feathers particles
if (attack == AT_USPECIAL)
{
     if (window == 3)
     {
          if (window_timer == 1)
          {
               spawn_hit_fx(x, y-30, feathers_burst_1);
          }

          if (window_timer % 4 == 0)
          {
               spawnFeathersFalling(x, y)
          }
     }
}

//Taunt
/*if (attack == AT_TAUNT && down_down)
{
    attack = AT_TAUNT_2;
}*/

//Shade Bubbles
if (attack == AT_USPECIAL_2 || attack == AT_FSPECIAL_2 || attack == AT_DSPECIAL_2)
{
     if (state_timer % 4 == 0)
     {
          shade_bubbles_play = 1;
          shade_bubbles_x = x;
          shade_bubbles_y = y - 35;
     }
}

if (shade_bubbles_play == 1)
{
    shade_bubbles_play = 0;
	spawnShadeBubbles(shade_bubbles_x, shade_bubbles_y);
}

#define spawnShadeBubbles
var id = random_func(0, 5, true);
var toSpawn = shade_bubbles_1;

switch (id)
{
     case 0 : toSpawn = shade_bubbles_1; break;
     case 1 : toSpawn = shade_bubbles_2; break;
     case 2 : toSpawn = shade_bubbles_3; break;
     case 3 : toSpawn = shade_bubbles_4; break;
     case 4 : toSpawn = shade_bubbles_5; break;
}

spawn_hit_fx(argument[0], argument[1], toSpawn);


#define spawnFeathersFalling
var id = random_func(0, 3, true);
var toSpawn = feathers_falling_1;

switch (id)
{
     case 0 : toSpawn = feathers_falling_1; break;
     case 1 : toSpawn = feathers_falling_2; break;
     case 2 : toSpawn = feathers_falling_3; break;
}

spawn_hit_fx(argument[0], argument[1], toSpawn);
