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
    }
  }
}

if (attack == AT_USPECIAL && soul_points < SP_uspecial && window == 1)
{
  window = 2;
}

//--------------------------------------------------------


//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL){
    if (window == 3){
        if (special_pressed){
            window = 1;
            window_timer = 0;
        }
    }
}

//Forward Special Mechanics
if (attack == AT_FSPECIAL){
    if (window == 3){
        if (special_pressed){
            window = 4;
            window_timer = 0;
            destroy_hitboxes();
        }
    }
    can_fast_fall = false;
}



if (attack == AT_DSPECIAL){
    if (window == 2){
        can_jump = true;
    }
    can_fast_fall = false;
    can_move = false
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