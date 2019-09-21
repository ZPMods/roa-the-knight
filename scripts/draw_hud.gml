/* draw_debug_text( temp_x+150, temp_y-30, string( soulmeter_animation_timer ));
draw_debug_text( temp_x+150, temp_y-50, string( soulmeter_animation_framelength ));
draw_debug_text( temp_x+150, temp_y-70, string( soulmeter_animation_frame )); */
draw_debug_text( temp_x+150, temp_y-30, selected_charm);
draw_debug_text( temp_x+150, temp_y-50, equipped_charm_1);
draw_debug_text( temp_x+150, temp_y-70, equipped_charm_2);
draw_debug_text( temp_x+150, temp_y-90, equipped_charm_3);
draw_debug_text( temp_x+150, temp_y-110, string(knockback_adj));

//Affiche le nombre de Soul Points sur le HUD
draw_debug_text( temp_x+150, temp_y-14, "Soul : " + string( soul_points ));

//Affichage et animation du Soul Meter
draw_sprite_part(sprite_get("soulmeter_" + string(round(soul_points/5))), 0, ((soulmeter_animation_frame*64) - 64), 0, 64, 64, temp_x, temp_y - 50);

soulmeter_animation_timer += 1;

if (soulmeter_animation_timer == soulmeter_animation_framelength)
{
  soulmeter_animation_frame += 1;
  soulmeter_animation_timer = 0

  if (soulmeter_animation_frame > 8)
  {
    soulmeter_animation_frame = 1;
  }
}

//Affichage des charms équipés
if (equipped_charm_1 != "")
{
  draw_sprite(sprite_get(equipped_charm_1 + "_8"), 0, temp_x + 56, temp_y - 22);
}

if (equipped_charm_2 != "")
{
  draw_sprite(sprite_get(equipped_charm_2 + "_8"), 0, temp_x + 78, temp_y - 22);
}

if (equipped_charm_3 != "")
{
  draw_sprite(sprite_get(equipped_charm_3 + "_8"), 0, temp_x + 100, temp_y - 22);
}