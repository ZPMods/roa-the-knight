/* draw_debug_text( temp_x+150, temp_y-30, string( soulmeter_animation_timer ));
draw_debug_text( temp_x+150, temp_y-50, string( soulmeter_animation_framelength ));
draw_debug_text( temp_x+150, temp_y-70, string( soulmeter_animation_frame )); */
draw_debug_text( temp_x+150, temp_y-10, selected_charm);
draw_debug_text( temp_x+150, temp_y-30, equipped_charm_1);
draw_debug_text( temp_x+150, temp_y-50, equipped_charm_2);
draw_debug_text( temp_x+150, temp_y-70, equipped_charm_3);
draw_debug_text( temp_x+250, temp_y-10, string(shade_soul_x));
draw_debug_text( temp_x+280, temp_y-10, string(shade_soul_y));
draw_debug_text( temp_x+250, temp_y-30, string(window));
draw_debug_text( temp_x+250, temp_y-50, string(window_timer));


//Affiche le nombre de Soul Points sur le HUD
//draw_debug_text( temp_x+150, temp_y-14, "Soul : " + string( soul_points ));

//Affichage et animation du Soul Meter
draw_sprite_part(sprite_get("soulmeter_" + string(round(soul_points/5))), 0, ((soulmeter_animation_frame*64) - 64), 0, 64, 64, temp_x, temp_y - 50);

soulmeter_animation_timer += 1;

if (soulmeter_animation_timer == soulmeter_animation_framelength)
{
  soulmeter_animation_frame += 1;
  soulmeter_animation_timer = 0;

  if (soulmeter_animation_frame > 8)
  {
    soulmeter_animation_frame = 1;
  }
}

//Affichage de l'overcharm
if (overcharmed == true)
{
    draw_sprite_ext(sprite_get("overcharm_8"), 0, temp_x + 50, temp_y - 26, 1, 1, 0, c_white, 1);
}

//Affichage des charms équipés
if (equipped_charm_1 != "")
{
  draw_sprite(sprite_get(equipped_charm_1 + "_8"), 0, temp_x + 60 + overcharm_shaking_1_x, temp_y - 22 + overcharm_shaking_1_y);
}

if (equipped_charm_2 != "")
{
  draw_sprite(sprite_get(equipped_charm_2 + "_8"), 0, temp_x + 82  + overcharm_shaking_2_x, temp_y - 22 + overcharm_shaking_2_y);
}

if (equipped_charm_3 != "")
{
  draw_sprite(sprite_get(equipped_charm_3 + "_8"), 0, temp_x + 104 + overcharm_shaking_3_x, temp_y - 22 + overcharm_shaking_3_y);
}
