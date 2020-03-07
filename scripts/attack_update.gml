//DACUS

if(attack == AT_DATTACK && window == 2 && window_timer <= 3 )
{
    if(up_strong_pressed)
    {
        attack = AT_USTRONG;
    }
}
//BOOSTED --------------------------------------------------

//Forward Special Boosted
if (attack == AT_FSPECIAL && soul_points >= SP_fspecial)
{
  if (window == 1)
  {
    if (special_down)
    {
      charged_time += 1;

      if (charged_time == required_charge_time)
      {
        window = 1;
        window_timer = 0;
        attack = AT_FSPECIAL_2;
        soul_points -= SP_fspecial;

        nts_effect_show = true;
      }

      window = 1;
    }
    else
    {
      window = 2;
      window_timer = 0;
    }
  }
}

if (attack == AT_FSPECIAL && soul_points < SP_fspecial && window == 1)
{
  window = 2;
}


//UpSpecial Boosted
if (attack == AT_USPECIAL && soul_points >= SP_uspecial)
{
  if (window == 1)
  {
    if (special_down)
    {
      charged_time += 1;

      if (charged_time == required_charge_time)
      {
        window = 1;
        window_timer = 0;
        attack = AT_USPECIAL_2;
        soul_points -= SP_uspecial;

        nts_effect_show = true;
      }

      window = 1;
    }
    else
    {
      window = 2;
      window_timer = 0;
    }
  }
}

if (attack == AT_USPECIAL && soul_points < SP_uspecial && window == 1)
{
  window = 2;
}
if (attack == AT_USPECIAL)
{
    if (window <= 3)
    {
        can_wall_jump = true;
    }
}
if (attack == AT_USPECIAL_2)
{
    if(window <= 2)
    {
        can_wall_jump = true;
    }
}

// Down Special Boosted
if (attack == AT_DSPECIAL && soul_points >= SP_dspecial)
{
  if (window == 1)
  {
    if (special_down)
    {
      charged_time += 1;

      if (charged_time == required_charge_time)
      {
        window = 1;
        window_timer = 0;
        attack = AT_DSPECIAL_2;
        soul_points -= SP_dspecial;

        nts_effect_show = true;
      }

      window = 1;
    }
    else
    {
      window = 2;
      window_timer = 0;
    }
  }
}

if (attack == AT_DSPECIAL && soul_points < SP_dspecial && window == 1)
{
  window = 2;
}

//Neutral Special Boosted
if (attack == AT_NSPECIAL && soul_points >= SP_nspecial)
{
  if (window == 1)
  {
    if (special_down)
    {
      charged_time += 1;

      if (charged_time == required_charge_time)
      {
        window = 1;
        window_timer = 0;
        attack = AT_NSPECIAL_2;
        soul_points -= SP_nspecial;

        nts_effect_show = true;
      }

      window = 1;
    }
    else
    {
      window = 2;
      window_timer = 0;
    }
  }
}
if (attack == AT_NSPECIAL && soul_points < SP_nspecial && window == 1)
{
  window = 2;
  window_timer = 0;
}

//--------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//DOWN SPECIAL MECHANICS ---------------------------------

//Empecher le boost vertical en l'air
if (attack == AT_DSPECIAL && free && window == 2)
{
     window = 4;
}

//Hitbox au sol
if (attack == AT_DSPECIAL && !free && window == 5)
{
     window = 6;
     window_timer = 0;
}
if (attack == AT_DSPECIAL && window == 6)
{
     if (window_timer == 0)
     {
          dspecial_explosion_show = true;
     }

     if (window_timer == 25)
     {
          set_state(PS_IDLE);
     }
}

//Hitbox en l'air
if (attack == AT_DSPECIAL && window == 5 && has_dspecial_air_hit == true)
{
  window = 7;
  window_timer = 0;
}
if (attack == AT_DSPECIAL && window == 8 && window_timer == 7)
{
  set_state(PS_IDLE);
  move_cooldown[AT_DSPECIAL] = 999;
}

//Cancel possible
if(attack == AT_DSPECIAL || attack == AT_DSPECIAL_2)
{
    ds_timer += 1;
}

if ((attack == AT_DSPECIAL && window == 4 && window_timer >= 3) || (attack == AT_DSPECIAL && window == 5 && ds_timer > 40))
{
    can_jump = true;
    can_shield = true;
}
if((attack == AT_DSPECIAL_2 && window == 3 && window_timer >= 3) || (attack == AT_DSPECIAL_2 && window == 4 && ds_timer > 60))
{
   can_jump = true;
   can_shield = true;
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

//--------------------------------------------------------
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//NEUTRAL SPECIAL MECHANICS ---------------------------------

//Neutral Special Cooldown
if (attack == AT_NSPECIAL)
{
    move_cooldown[AT_NSPECIAL] = 30;
}

//NEUTRAL SPECIAL BOOSTED MECHANICS -------------------------

//Faire spawn l'article
if (attack == AT_NSPECIAL_2 && window == 2 && window_timer == 1)
{
     shade_soul_hit = false;
     shade_soul_first_hit = false;

     var shade_soul = instance_create(x, y + 10, "obj_article1");
     shade_soul.spr_dir = spr_dir;
     shade_soul.hsp *= spr_dir;
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

//NEUTRAL SPECIAL BOOSTED MECHANICS -------------------------

//Forward Special Boosted Jump Cancel
if(my_hitboxID.attack == AT_FSPECIAL_2 && hitpause)
{
    can_jump = true;
    if (jump_pressed)
    {
       hsp = 1 * spr_dir;
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
     if (window >= 2 && window_timer >= 10 && (shield_pressed || taunt_pressed))
     {
          set_state(PS_LAND);
          clear_button_buffer(PC_SHIELD_PRESSED);
          clear_button_buffer(PC_TAUNT_PRESSED);
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
if (attack = AT_JAB && window == 1)
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

//NEUTRAL SPECIAL EFFECT
if (attack == AT_NSPECIAL && window == 2 && window_timer == 8)
{
     nspecial_effect_show = true;
}

if (attack == AT_NSPECIAL_2 && window == 1 && window_timer == 8)
{
     nspecial_boosted_effect_show = true;
}


//STRONG MOVEMENT
if((attack == AT_FSTRONG && window == 1)|| (attack == AT_DSTRONG && window == 1))
{
    if (joy_pad_idle == false)
    {
        hsp = lengthdir_x(0.4, joy_dir);
    }
}
