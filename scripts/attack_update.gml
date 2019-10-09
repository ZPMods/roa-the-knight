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

//--------------------------------------------------------

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL)
{
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL)
{
    if (window == 3){
        if (special_pressed){
            window = 1;
            window_timer = 0;
        }
    }
}

//Taunt
if (attack == AT_TAUNT)
{
  is_equipping_charms = true;

  if (window >= 2  && window_timer >= 10 && shield_pressed)
  {
      set_state(PS_IDLE);
      is_equipping_charms = false;
      charms_ui_alpha = 0;
  }
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

// Custom Sounds
if (attack == AT_BAIR){
    if (window == 2 && window_timer == 1)
    {
        sound_play( sound_get("knight_bair"));
    }
}
