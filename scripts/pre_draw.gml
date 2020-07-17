//Airdodge Trail ---------------------------------------------------------------
if (state == PS_AIR_DODGE && window == 1)
{
     if (window_timer == 0)
     {
          nts_effect_show = true;

          airdodge_trail_1_x = x;
          airdodge_trail_1_y = y;
          airdodge_trail_1_alpha = 1;
          airdodge_trail_1_show = true;
     }

     if (window_timer == 4)
     {
          airdodge_trail_2_x = x;
          airdodge_trail_2_y = y;
          airdodge_trail_2_alpha = 1;
          airdodge_trail_2_show = true;
     }

     if (window_timer == 8)
     {
          airdodge_trail_3_x = x;
          airdodge_trail_3_y = y;
          airdodge_trail_3_alpha = 1;
          airdodge_trail_3_show = true;
     }
}
//Trail 1
if (airdodge_trail_1_show)
{
  shader_start();
  draw_sprite_ext(sprite_get("airdodge_trail"), 0, airdodge_trail_1_x, airdodge_trail_1_y, 1, 1, 0, c_white, airdodge_trail_1_alpha);
  shader_end();

  airdodge_trail_1_alpha -= .05;

  if (airdodge_trail_1_alpha <= 0)
  {
    airdodge_trail_1_alpha = 0;
    airdodge_trail_1_show = false;
  }
}
//Trail 2
if (airdodge_trail_2_show)
{
  shader_start();
  draw_sprite_ext(sprite_get("airdodge_trail"), 1, airdodge_trail_2_x, airdodge_trail_2_y, 1, 1, 0, c_white, airdodge_trail_2_alpha);
  shader_end();

  airdodge_trail_2_alpha -= .05;

  if (airdodge_trail_2_alpha <= 0)
  {
    airdodge_trail_2_alpha = 0;
    airdodge_trail_2_show = false;
  }
}
//Trail 3
if (airdodge_trail_3_show)
{
  shader_start();
  draw_sprite_ext(sprite_get("airdodge_trail"), 2, airdodge_trail_3_x, airdodge_trail_3_y, 1, 1, 0, c_white, airdodge_trail_3_alpha);
  shader_end();

  airdodge_trail_3_alpha -= .05;

  if (airdodge_trail_3_alpha <= 0)
  {
    airdodge_trail_3_alpha = 0;
    airdodge_trail_3_show = false;
  }
}

//Roll forward Trail ---------------------------------------------------------------
if ((state == PS_ROLL_FORWARD || state == PS_TECH_FORWARD) && window == 1)
{
     if (window_timer == 0)
     {
          nts_effect_show = true;

          rollforward_trail_1_x = x;
          rollforward_trail_1_y = y;
          rollforward_trail_1_alpha = 1;
          rollforward_trail_1_show = true;
     }

     if (window_timer == 4)
     {
          rollforward_trail_2_x = x;
          rollforward_trail_2_y = y;
          rollforward_trail_2_alpha = 1;
          rollforward_trail_2_show = true;
     }

     if (window_timer == 7)
     {
          rollforward_trail_3_x = x;
          rollforward_trail_3_y = y;
          rollforward_trail_3_alpha = 1;
          rollforward_trail_3_show = true;
     }

     if (window_timer == 11)
     {
          rollforward_trail_4_x = x;
          rollforward_trail_4_y = y;
          rollforward_trail_4_alpha = 1;
          rollforward_trail_4_show = true;
     }
}
//Trail 1
if (rollforward_trail_1_show)
{
  shader_start();
  draw_sprite_ext(sprite_get("rollforward_trail"), 0, rollforward_trail_1_x, rollforward_trail_1_y, 1, 1, 0, c_white, rollforward_trail_1_alpha);
  shader_end();

  rollforward_trail_1_alpha -= .05;

  if (rollforward_trail_1_alpha <= 0)
  {
    rollforward_trail_1_alpha = 0;
    rollforward_trail_1_show = false;
  }
}
//Trail 2
if (rollforward_trail_2_show)
{
  shader_start();
  draw_sprite_ext(sprite_get("rollforward_trail"), 1, rollforward_trail_2_x, rollforward_trail_2_y, 1, 1, 0, c_white, rollforward_trail_2_alpha);
  shader_end();

  rollforward_trail_2_alpha -= .05;

  if (rollforward_trail_2_alpha <= 0)
  {
    rollforward_trail_2_alpha = 0;
    rollforward_trail_2_show = false;
  }
}
//Trail 3
if (rollforward_trail_3_show)
{
  shader_start();
  draw_sprite_ext(sprite_get("rollforward_trail"), 2, rollforward_trail_3_x, rollforward_trail_3_y, 1, 1, 0, c_white, rollforward_trail_3_alpha);
  shader_end();

  rollforward_trail_3_alpha -= .05;

  if (rollforward_trail_3_alpha <= 0)
  {
    rollforward_trail_3_alpha = 0;
    rollforward_trail_3_show = false;
  }
}
//Trail 4
if (rollforward_trail_4_show)
{
  shader_start();
  draw_sprite_ext(sprite_get("rollforward_trail"), 3, rollforward_trail_4_x, rollforward_trail_4_y, 1, 1, 0, c_white, rollforward_trail_4_alpha);
  shader_end();

  rollforward_trail_4_alpha -= .05;

  if (rollforward_trail_4_alpha <= 0)
  {
    rollforward_trail_4_alpha = 0;
    rollforward_trail_4_show = false;
  }
}

//Roll Backward Trail ---------------------------------------------------------------
if ((state == PS_ROLL_BACKWARD || state == PS_TECH_BACKWARD) && window == 1)
{
     if (window_timer == 0)
     {
          nts_effect_show = true;

          rollbackward_trail_1_x = x;
          rollbackward_trail_1_y = y;
          rollbackward_trail_1_alpha = 1;
          rollbackward_trail_1_show = true;
     }

     if (window_timer == 4)
     {
          rollbackward_trail_2_x = x;
          rollbackward_trail_2_y = y;
          rollbackward_trail_2_alpha = 1;
          rollbackward_trail_2_show = true;
     }

     if (window_timer == 7)
     {
          rollbackward_trail_3_x = x;
          rollbackward_trail_3_y = y;
          rollbackward_trail_3_alpha = 1;
          rollbackward_trail_3_show = true;
     }

     if (window_timer == 11)
     {
          rollbackward_trail_4_x = x;
          rollbackward_trail_4_y = y;
          rollbackward_trail_4_alpha = 1;
          rollbackward_trail_4_show = true;
     }
}
//Trail 1
if (rollbackward_trail_1_show)
{
  shader_start();
  draw_sprite_ext(sprite_get("rollbackward_trail"), 0, rollbackward_trail_1_x, rollbackward_trail_1_y, 1, 1, 0, c_white, rollbackward_trail_1_alpha);
  shader_end();

  rollbackward_trail_1_alpha -= .05;

  if (rollbackward_trail_1_alpha <= 0)
  {
    rollbackward_trail_1_alpha = 0;
    rollbackward_trail_1_show = false;
  }
}
//Trail 2
if (rollbackward_trail_2_show)
{
  shader_start();
  draw_sprite_ext(sprite_get("rollbackward_trail"), 1, rollbackward_trail_2_x, rollbackward_trail_2_y, 1, 1, 0, c_white, rollbackward_trail_2_alpha);
  shader_end();

  rollbackward_trail_2_alpha -= .05;

  if (rollbackward_trail_2_alpha <= 0)
  {
    rollbackward_trail_2_alpha = 0;
    rollbackward_trail_2_show = false;
  }
}
//Trail 3
if (rollbackward_trail_3_show)
{
  shader_start();
  draw_sprite_ext(sprite_get("rollbackward_trail"), 2, rollbackward_trail_3_x, rollbackward_trail_3_y, 1, 1, 0, c_white, rollbackward_trail_3_alpha);
  shader_end();

  rollbackward_trail_3_alpha -= .05;

  if (rollbackward_trail_3_alpha <= 0)
  {
    rollbackward_trail_3_alpha = 0;
    rollbackward_trail_3_show = false;
  }
}
//Trail 4
if (rollbackward_trail_4_show)
{
  shader_start();
  draw_sprite_ext(sprite_get("rollbackward_trail"), 3, rollbackward_trail_4_x, rollbackward_trail_4_y, 1, 1, 0, c_white, rollbackward_trail_4_alpha);
  shader_end();

  rollbackward_trail_4_alpha -= .05;

  if (rollbackward_trail_4_alpha <= 0)
  {
    rollbackward_trail_4_alpha = 0;
    rollbackward_trail_4_show = false;
  }
}
