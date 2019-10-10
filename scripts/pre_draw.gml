//Airdodge Trail
if (state == PS_AIR_DODGE && window == 1)
{
  if (window_timer == 0)
  {
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
  draw_sprite_ext(sprite_get("airdodge_trail_1"), 0, airdodge_trail_1_x, airdodge_trail_1_y, 1, 1, 0, c_white, airdodge_trail_1_alpha);
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
  draw_sprite_ext(sprite_get("airdodge_trail_2"), 0, airdodge_trail_2_x, airdodge_trail_2_y, 1, 1, 0, c_white, airdodge_trail_2_alpha);
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
  draw_sprite_ext(sprite_get("airdodge_trail_3"), 0, airdodge_trail_3_x, airdodge_trail_3_y, 1, 1, 0, c_white, airdodge_trail_3_alpha);
  shader_end();

  airdodge_trail_3_alpha -= .05;

  if (airdodge_trail_3_alpha <= 0)
  {
    airdodge_trail_3_alpha = 0;
    airdodge_trail_3_show = false;
  }
}
