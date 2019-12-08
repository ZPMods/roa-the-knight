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

if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_2)
{
    move_cooldown[AT_FSPECIAL] = 25;
    move_cooldown[AT_FSPECIAL_2] = 22;
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

if (attack == AT_NSPECIAL)
{
    move_cooldown[AT_NSPECIAL] = 25;
}
if (attack == AT_NSPECIAL_2)
{
    move_cooldown[AT_NSPECIAL] = 25;
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
if (attack == AT_DSPECIAL && window == 6 && window_timer == 5)
{
  window = 9;
  window_timer = 0;
  move_cooldown[AT_DSPECIAL] = 999;
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

//SPORE SHROOM MECHANICS ---------------------------------

//Article Spawn
if (equipped_charm_1 = "sporeshroom" || equipped_charm_2 = "sporeshroom" || equipped_charm_3 = "sporeshroom")
{
    if(attack == AT_NSPECIAL || attack == AT_NSPECIAL_2)
    {
        shape_special = 1;

         var shade_soul = instance_create(x, y - 10, "obj_article2");
         shade_soul.spr_dir = spr_dir;
        shade_soul.hsp *= spr_dir;
}
   /* }
    if(attack == AT_DSPECIAL || attack == AT_DSPECIAL_2)
    {

    }
    if(attack == AT_USPECIAL || attack == AT_USPECIAL_2)
    {

    }
    if(attack == AT_FSPECIAL || attack == AT_FSPECIAL_2)
    {

    }*/
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
     is_equipping_charms = true;

     if (window >= 2 && window_timer >= 10 && (shield_pressed || taunt_pressed))
     {
        set_state(PS_LAND);
        is_equipping_charms = false;
        clear_button_buffer(PC_SHIELD_PRESSED);
        clear_button_buffer(PC_TAUNT_PRESSED);
        charms_ui_alpha = 0;

     }


}else{//New check for non taunt attack as it doesn't forget last attack
    is_equipping_charms = false;
}



//Reset du pogo du dair
if (attack == AT_DAIR && window == 3)
{
  if (has_dair_hit == true)
  {
    window = 4;
    has_dair_hit = false;
  }

  if (window_timer == 12)
  {
  set_state(PS_IDLE);
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

//STRONG MOVEMENT
if((attack == AT_FSTRONG && window == 1)|| (attack == AT_DSTRONG && window == 1))
{
    if (joy_pad_idle == false)
    {
        hsp = lengthdir_x(0.4, joy_dir);
    }
}

//UP SPECIAL CANCEL
if(my_hitboxID.attack == AT_FSPECIAL_2)
{
    can_jump = true;
}
