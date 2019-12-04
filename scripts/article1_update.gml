//timer
timer ++;

player_id.shade_soul_x = x;
player_id.shade_soul_y = y;

if (x < 0 || hit_wall)
{
     player_id.move_cooldown[AT_NSPECIAL] = 0;
     timer_boom = 0;
}


var hitbox_drag;
var hitbox_boom;

if (timer % 4 == 0 && !hit_wall && timer_boom > 1)
{
     create_hitbox(AT_NSPECIAL_2, 1, x+25 * spr_dir, y-25);
}

if (player_id.shade_soul_hit)
{
     player_id.shade_soul_first_hit = true;
     player_id.shade_soul_hit = false;
}

if (player_id.shade_soul_first_hit)
{
     timer_boom --;
}

if (timer_boom == 0 || hit_wall)
{
     create_hitbox(AT_NSPECIAL_2, 2, x+25 * spr_dir, y-25);

     player_id.move_cooldown[AT_NSPECIAL] = 0;
     instance_destroy();
}

//Animation
sprite_index = sprite_get("nspecial_boosted_proj_" + string(nspecial_animation_frame));

nspecial_animation_timer += 1;

if (nspecial_animation_timer == nspecial_animation_framelength)
{
  nspecial_animation_frame += 1;
  nspecial_animation_timer = 0;

  if (nspecial_animation_frame > 10)
  {
    nspecial_animation_frame = 1;
  }
}
