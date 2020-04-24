//timer
if (player_id.shade_soul_first_hit)
{
     timer ++;
}
else
{
     create_hitbox(AT_NSPECIAL_2, 3, x, y - 33)
}

player_id.shade_soul_x = x;
player_id.shade_soul_y = y;

if (player_id.shade_soul_first_hit && timer % 5 == 0 && !hit_wall && timer_boom > 1)
{
     create_hitbox(AT_NSPECIAL_2, 1, x, y - 33);
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

if (timer_boom == 0 || hit_wall || x < stage_left || x > stage_right)
{
     timer_boom = 0;

     if (player_id.shade_soul_first_hit)
     {
          create_hitbox(AT_NSPECIAL_2, 2, x, y - 33);
     }

     player_id.move_cooldown[AT_NSPECIAL] = 0;
     player_id.shade_soul_first_hit = false;
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

//Clairen Plasma Field
if (place_meeting(x, y, asset_get("plasma_field_obj"))) {
		sound_play(asset_get("sfx_clairen_hit_med"));
		spawn_hit_fx(floor(x),floor(y),256);
		timer_boom = 0;
	}
	
//Shade bubbles
bubbles_timer ++;

if (bubbles_timer % 4 == 0)
{
     player_id.shade_bubbles_play = 1;
     player_id.shade_bubbles_x = x;
     player_id.shade_bubbles_y = y - 40;
}
