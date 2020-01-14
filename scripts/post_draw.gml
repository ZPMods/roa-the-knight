//Charms menu ----------------------------------------------------------------------------------------------------------

//Charms position
/*
stalwart_x = x - 17 + charms_facing_direction;
stalwart_y = y - 125;

soulcatcher_x = x + 27 + charms_facing_direction;
soulcatcher_y = y - 105;

shamanstone_x = x + 45 + charms_facing_direction;
shamanstone_y = y - 63;

grubsong_x = x + 27 + charms_facing_direction;
grubsong_y = y - 21;

strength_x = x - 17 + charms_facing_direction;
strength_y = y-1;

heart_x = x - 61 + charms_facing_direction;
heart_y = y - 21;

sporeshroom_x = x - 79 + charms_facing_direction;
sporeshroom_y = y - 63;

dashmaster_x = x - 61 + charms_facing_direction;
dashmaster_y = y - 105;

//Charms color
if (equipped_charm_1 = "stalwart" || equipped_charm_2 = "stalwart" || equipped_charm_3 = "stalwart"){stalwart_color = c_dkgray;} else{stalwart_color = c_white;}

if (equipped_charm_1 = "soulcatcher" || equipped_charm_2 = "soulcatcher" || equipped_charm_3 = "soulcatcher"){soulcatcher_color = c_dkgray;} else{soulcatcher_color = c_white;}

if (equipped_charm_1 = "shamanstone" || equipped_charm_2 = "shamanstone" || equipped_charm_3 = "shamanstone"){shamanstone_color = c_dkgray;} else{shamanstone_color = c_white;}

if (equipped_charm_1 = "grubsong" || equipped_charm_2 = "grubsong" || equipped_charm_3 = "grubsong"){grubsong_color = c_dkgray;} else{grubsong_color = c_white;}

if (equipped_charm_1 = "strength" || equipped_charm_2 = "strength" || equipped_charm_3 = "strength"){strength_color = c_dkgray;} else{strength_color = c_white;}

if (equipped_charm_1 = "heart" || equipped_charm_2 = "heart" || equipped_charm_3 = "heart"){heart_color = c_dkgray;} else{heart_color = c_white;}

if (equipped_charm_1 = "sporeshroom" || equipped_charm_2 = "sporeshroom" || equipped_charm_3 = "sporeshroom"){sporeshroom_color = c_dkgray;} else{sporeshroom_color = c_white;}

if (equipped_charm_1 = "dashmaster" || equipped_charm_2 = "dashmaster" || equipped_charm_3 = "dashmaster"){dashmaster_color = c_dkgray;} else{dashmaster_color = c_white;}

//Position du charm selector
if (selected_charm = "stalwart")
{
  charm_selector_x = stalwart_x;
  charm_selector_y = stalwart_y;
}

if (selected_charm = "soulcatcher")
{
  charm_selector_x = soulcatcher_x;
  charm_selector_y = soulcatcher_y;
}

if (selected_charm = "soulcatcher")
{
  charm_selector_x = soulcatcher_x;
  charm_selector_y = soulcatcher_y;
}

if (selected_charm = "shamanstone")
{
  charm_selector_x = shamanstone_x;
  charm_selector_y = shamanstone_y;
}

if (selected_charm = "grubsong")
{
  charm_selector_x = grubsong_x;
  charm_selector_y = grubsong_y;
}

if (selected_charm = "strength")
{
  charm_selector_x = strength_x;
  charm_selector_y = strength_y;
}

if (selected_charm = "heart")
{
  charm_selector_x = heart_x;
  charm_selector_y = heart_y;
}

if (selected_charm = "sporeshroom")
{
  charm_selector_x = sporeshroom_x;
  charm_selector_y = sporeshroom_y;
}

if (selected_charm = "dashmaster")
{
  charm_selector_x = dashmaster_x;
  charm_selector_y = dashmaster_y;
}
//Ajuster la position du menu quand on regarde à gauche
if (spr_dir == 1)
{
  charms_facing_direction = 0;
}
else
{
  charms_facing_direction = -30
}

//Shaking de l'overcharm
overcharm_shaking_timer += 1
if (overcharm_shaking_timer == 1)
{
  overcharm_shaking_1_x = (random_func(0, 2, 0) - 1) * real(overcharmed);
  overcharm_shaking_3_y = (random_func(0, 2, 0) - 1) * real(overcharmed);
}

if (overcharm_shaking_timer == 2)
{
  overcharm_shaking_2_x = (random_func(0, 2, 0) - 1) * real(overcharmed);
  overcharm_shaking_1_y = (random_func(0, 2, 0) - 1) * real(overcharmed);
}

if (overcharm_shaking_timer == 3)
{
  overcharm_shaking_3_x = (random_func(0, 2, 0) - 1) * real(overcharmed);
  overcharm_shaking_2_y = (random_func(0, 2, 0) - 1) * real(overcharmed);
  overcharm_shaking_timer = 0;
}

//Tout ce qu'il se passe pendant le taunt
if (is_equipping_charms == true)
{
  charms_ui_alpha += 0.05;

  //Affichage de la roue
  draw_sprite_ext(sprite_get("charm_wheel"), 0, x - 82 + charms_facing_direction, y - 128, 1, 1, 0, c_white, charms_ui_alpha);

  //Affichage de la box
  //draw_sprite_ext(sprite_get("charm_infobox"), 0, x + 120 + charms_facing_direction, y - 94, 1, 1, 0, c_white, charms_ui_alpha);

  //Affichage du nom
  draw_sprite_ext(sprite_get(selected_charm + "_name"), 0, x - 369 + charms_facing_direction, y - 232, 1, 1, 0, c_white, charms_ui_alpha);

  //Affichage de la light
  draw_sprite_ext(sprite_get("charm_light"), 0, charm_selector_x, charm_selector_y, 1, 1, 0, c_white, charms_ui_alpha);

  //Affichage des charms
  draw_sprite_ext(sprite_get("stalwart_16"), 0, stalwart_x, stalwart_y, 1, 1, 0, stalwart_color, charms_ui_alpha);
  draw_sprite_ext(sprite_get("soulcatcher_16"), 0, soulcatcher_x, soulcatcher_y, 1, 1, 0, soulcatcher_color, charms_ui_alpha);
  draw_sprite_ext(sprite_get("shamanstone_16"), 0, shamanstone_x, shamanstone_y, 1, 1, 0, shamanstone_color, charms_ui_alpha);
  draw_sprite_ext(sprite_get("grubsong_16"), 0, grubsong_x, grubsong_y, 1, 1, 0, grubsong_color, charms_ui_alpha);
  draw_sprite_ext(sprite_get("strength_16"), 0, strength_x, strength_y, 1, 1, 0, strength_color, charms_ui_alpha);
  draw_sprite_ext(sprite_get("heart_16"), 0, heart_x, heart_y, 1, 1, 0, heart_color, charms_ui_alpha);
  draw_sprite_ext(sprite_get("sporeshroom_16"), 0, sporeshroom_x, sporeshroom_y, 1, 1, 0, sporeshroom_color, charms_ui_alpha);
  draw_sprite_ext(sprite_get("dashmaster_16"), 0, dashmaster_x, dashmaster_y, 1, 1, 0, dashmaster_color, charms_ui_alpha);

  //Affichage du sélecteur
  draw_sprite_ext(sprite_get("charm_selector"), 0, charm_selector_x, charm_selector_y, 1, 1, 0, c_white, charms_ui_alpha);

  //Affichage des aides
  draw_sprite_ext(sprite_get("equip"), 0, x + 115, y - 80, 1, 1, 0, c_white, charms_ui_alpha);
  draw_sprite_ext(sprite_get("unequip"), 0, x + 115, y - 60, 1, 1, 0, c_white, charms_ui_alpha);
  draw_sprite_ext(sprite_get("quit"), 0, x + 115, y - 20, 1, 1, 0, c_white, charms_ui_alpha);
  draw_sprite_ext(sprite_get("quick_equip"), 0, x + 115, y, 1, 1, 0, c_white, charms_ui_alpha);

  //Affichage de l'overcharm
  if (overcharmed == true)
  {
      draw_sprite_ext(sprite_get("overcharm3_16"), 0, x + 82 + charms_facing_direction, y - 128, 1, 1, 0, c_white, charms_ui_alpha - 0.3);
  }

  //Affichage des notches/charms équipés
  if (equipped_charm_1 == "")
  {
    //Notches vides
    draw_sprite_ext(sprite_get("charm_notch_on"), 0, x + 82 + charms_facing_direction, y - 138, 1, 1, 0, c_white, charms_ui_alpha);
    draw_sprite_ext(sprite_get("charm_notch_off"), 0, x + 122 + charms_facing_direction, y - 138, 1, 1, 0, c_white, charms_ui_alpha);
  }
  else
  {
    //Charm 1
    draw_sprite_ext(sprite_get(equipped_charm_1 + "_16"), 0, x + 82 + charms_facing_direction + overcharm_shaking_1_x, y - 138 + overcharm_shaking_1_y, 1, 1, 0, c_white, charms_ui_alpha);
  }

  if (equipped_charm_1 != "")
  {
    //Deuxième notch, si le coût de Charm 1 est 1
    draw_sprite_ext(sprite_get("charm_notch_on"), 0, x + 122 + charms_facing_direction, y - 138, 1, 1, 0, c_white, charms_ui_alpha);
  }

  if (equipped_charm_2 != "")
  {
    //Charm 2
    draw_sprite_ext(sprite_get(equipped_charm_2 + "_16"), 0, x + 122 + charms_facing_direction + overcharm_shaking_2_x, y - 138 + overcharm_shaking_2_y, 1, 1, 0, c_white, charms_ui_alpha);
  }

  if (equipped_charm_3 != "")
  {
    //Charm 3
    draw_sprite_ext(sprite_get(equipped_charm_3 + "_16"), 0, x + 162 + charms_facing_direction + overcharm_shaking_3_x, y - 138 + overcharm_shaking_3_y, 1, 1, 0, c_white, charms_ui_alpha);
  }

  //Sélection des charms
  if (up_down && !right_down && !left_down)
  {
    selected_charm = "stalwart";
  }
  if (up_down && right_down)
  {
    selected_charm = "soulcatcher";
  }
  if (right_down && !up_down && !left_down)
  {
    selected_charm = "shamanstone";
  }
  if (down_down && right_down)
  {
    selected_charm = "grubsong";
  }
  if (down_down && !right_down && !left_down)
  {
    selected_charm = "strength";
  }
  if (down_down && left_down)
  {
    selected_charm = "heart";
  }
  if (left_down && !up_down && !down_down)
  {
    selected_charm = "sporeshroom";
  }
  if (up_down && left_down)
  {
    selected_charm = "dashmaster";
  }
//----------------------------------------------------------
//CStick Charms
//----------------------------------------------------------


if (up_stick_down && !right_stick_down && !left_stick_down) //Stalwart Quick Equip
{
    if(equipped_charm_1 == "")
    {
        equipped_charm_1 = "stalwart";
    }
    if(equipped_charm_1 != "" &&equipped_charm_2 == "" && equipped_charm_1 != "stalwart")
    {
        equipped_charm_2 = "stalwart";
    }
    if(equipped_charm_1 != "" && equipped_charm_2 != "" && equipped_charm_3 == "" && equipped_charm_1 != "stalwart" && equipped_charm_2 != "stalwart")
    {
        equipped_charm_3 = "stalwart";
        overcharmed = true;
    }

}

if (up_stick_down && right_stick_down) //Soulcatcher Quick Equip
{
    if(equipped_charm_1 == "")
    {
        equipped_charm_1 = "soulcatcher";
    }
    if(equipped_charm_1 != "" &&equipped_charm_2 == "" && equipped_charm_1 != "soulcatcher")
    {
        equipped_charm_2 = "soulcatcher";
    }
    if(equipped_charm_1 != "" && equipped_charm_2 != "" && equipped_charm_3 == "" && equipped_charm_1 != "soulcatcher" && equipped_charm_2 != "soulcatcher")
    {
        equipped_charm_3 = "soulcatcher";
        overcharmed = true;
    }
}

if (right_stick_down && !up_stick_down && !left_stick_down) //Shamanstone Quick Equip
{
    if(equipped_charm_1 == "")
    {
        equipped_charm_1 = "shamanstone";
    }
    if(equipped_charm_1 != "" &&equipped_charm_2 == "" && equipped_charm_1 != "shamanstone")
    {
        equipped_charm_2 = "shamanstone";
    }
    if(equipped_charm_1 != "" && equipped_charm_2 != "" && equipped_charm_3 == "" && equipped_charm_1 != "shamanstone" && equipped_charm_2 != "shamanstone")
    {
        equipped_charm_3 = "shamanstone";
        overcharmed = true;
    }
}

if (down_stick_down && right_stick_down) //Grubsong Quick Equip
{
    if(equipped_charm_1 == "")
    {
        equipped_charm_1 = "grubsong";
    }
    if(equipped_charm_1 != "" &&equipped_charm_2 == "" && equipped_charm_1 != "grubsong")
    {
        equipped_charm_2 = "grubsong";
    }
    if(equipped_charm_1 != "" && equipped_charm_2 != "" && equipped_charm_3 == "" && equipped_charm_1 != "grubsong" && equipped_charm_2 != "grubsong")
    {
        equipped_charm_3 = "grubsong";
        overcharmed = true;
    }
}

if (down_stick_down && !right_stick_down && !left_stick_down) //Strength Quick Equip
{
    if(equipped_charm_1 == "")
    {
        equipped_charm_1 = "strength";
    }
    if(equipped_charm_1 != "" &&equipped_charm_2 == "" && equipped_charm_1 != "strength")
    {
        equipped_charm_2 = "strength";
    }
    if(equipped_charm_1 != "" && equipped_charm_2 != "" && equipped_charm_3 == "" && equipped_charm_1 != "strength" && equipped_charm_2 != "strength")
    {
        equipped_charm_3 = "strength";
        overcharmed = true;
    }
}

if (down_stick_down && left_stick_down) //Heart Quick Equip
{
    if(equipped_charm_1 == "")
    {
        equipped_charm_1 = "heart";
    }
    if(equipped_charm_1 != "" &&equipped_charm_2 == "" && equipped_charm_1 != "heart")
    {
        equipped_charm_2 = "heart";
    }
    if(equipped_charm_1 != "" && equipped_charm_2 != "" && equipped_charm_3 == "" && equipped_charm_1 != "heart" && equipped_charm_2 != "heart")
    {
        equipped_charm_3 = "heart";
        overcharmed = true;
    }
}

if (left_stick_down && !up_stick_down && !down_stick_down) //Sporeshroom Quick Equip
{
    if(equipped_charm_1 == "")
    {
        equipped_charm_1 = "sporeshroom";
    }
    if(equipped_charm_1 != "" &&equipped_charm_2 == "" && equipped_charm_1 != "sporeshroom")
    {
        equipped_charm_2 = "sporeshroom";
    }
    if(equipped_charm_1 != "" && equipped_charm_2 != "" && equipped_charm_3 == "" && equipped_charm_1 != "sporeshroom" && equipped_charm_2 != "sporeshroom")
    {
        equipped_charm_3 = "sporeshroom";
        overcharmed = true;
    }
}

if (up_stick_down && left_stick_down) //Dashmaster Quick Equip
{
    if(equipped_charm_1 == "")
    {
        equipped_charm_1 = "dashmaster";
    }
    if(equipped_charm_1 != "" &&equipped_charm_2 == "" && equipped_charm_1 != "dashmaster")
    {
        equipped_charm_2 = "dashmaster";
    }
    if(equipped_charm_1 != "" && equipped_charm_2 != "" && equipped_charm_3 == "" && equipped_charm_1 != "dashmaster" && equipped_charm_2 != "dashmaster")
    {
        equipped_charm_3 = "dashmaster";
        overcharmed = true;
    }
}

  //Equipement des charms
  if (equip_cooldown = true)
  {
    equip_cooldown_timer += 1;
    if (equip_cooldown_timer >= 10)
    {
      equip_cooldown = false;
      equip_cooldown_timer = 0;
    }
  }
  if(special_pressed)
  {
     equipped_charm_1 = "";
     equipped_charm_2 = "";
     equipped_charm_3 = "";
     overcharmed = false;
  }
  if (jump_pressed || attack_pressed)
  {
    //Équiper Charm 1
    if (equipped_charm_1 == "" && equip_cooldown = false)
    {
      equipped_charm_1 = selected_charm;
      equip_cooldown = true;
    }

    //Équiper Charm 2
    if (equipped_charm_2 == "" && equipped_charm_1 != "" && selected_charm != equipped_charm_1 && equip_cooldown = false)
    {
      equipped_charm_2 = selected_charm;
      equip_cooldown = true;
    }

    //Équiper Charm 3
    if (equipped_charm_3 == "" && equipped_charm_2 != "" && selected_charm != equipped_charm_1 && selected_charm != equipped_charm_2 && equip_cooldown = false)
    {
      equipped_charm_3 = selected_charm;
      equip_cooldown = true;
      overcharmed = true;
    }

    //Déséquiper Charm 1
    if (selected_charm == equipped_charm_1 && equip_cooldown = false)
    {
      equipped_charm_1 = equipped_charm_2;
      equipped_charm_2 = equipped_charm_3;
      equipped_charm_3 = "";
      equip_cooldown = true;
      overcharmed = false;
    }

    //Déséquiper Charm 2
    if (selected_charm == equipped_charm_2 && equip_cooldown = false)
    {
      equipped_charm_2 = equipped_charm_3;
      equipped_charm_3 = "";
      equip_cooldown = true;
      overcharmed = false;
    }

    //Déséquiper Charm 3
    if (selected_charm == equipped_charm_3 && equip_cooldown = false)
    {
      equipped_charm_3 = "";
      equip_cooldown = true;
      overcharmed = false;
    }
  }
}
*/
if abyssEnabled { 
	if "runesUpdated" in self && runesUpdated {
		//attribute changes and things that don't have to run every frame go in here
		if runeL {
		    
		} else {

		}
	}
	
	//everything that should run every frame goes here.
}
//----------------------------------------------------------
//Normal to Shade Effect
//----------------------------------------------------------

if (nts_effect_show == true)
{
     if (nts_effect_freeze == false)
     {
          nts_effect_x = x - 82;
          nts_effect_y = y - 128;
          nts_effect_freeze = true;
     }

     shader_start();
     draw_sprite_part(sprite_get("nts_effect"), 0, ((nts_effect_animation_frame*160) - 160), 0, 160, 160, nts_effect_x, nts_effect_y);
     shader_end();

     nts_effect_animation_timer += 1;

     if (nts_effect_animation_timer >= nts_effect_animation_framelength)
     {
          nts_effect_animation_frame += 1;
          nts_effect_animation_timer = 0;

          if (nts_effect_animation_frame > 7)
          {
               nts_effect_animation_frame = 1;
               nts_effect_show = false;
               nts_effect_freeze = false;
          }
     }
}

//----------------------------------------------------------
//Neutral Special Effect
//----------------------------------------------------------

if (nspecial_effect_show == true)
{
     if (nspecial_effect_freeze == false)
     {
          nspecial_effect_x = x - 146;
          nspecial_effect_y = y - 192;
          nspecial_effect_freeze = true;

          if (spr_dir = 1)
          {
               nspecial_effect_dir = "right";
          }
          else
          {
               nspecial_effect_dir = "left";
          }
     }

     shader_start();
     draw_sprite_part(sprite_get("nspecial_effect_" + nspecial_effect_dir), 0, ((nspecial_effect_animation_frame*288) - 288), 0, 288, 288, nspecial_effect_x, nspecial_effect_y);
     shader_end();

     nspecial_effect_animation_timer += 1;

     if (nspecial_effect_animation_timer >= nspecial_effect_animation_framelength)
     {
          nspecial_effect_animation_frame += 1;
          nspecial_effect_animation_timer = 0;

          if (nspecial_effect_animation_frame > 7)
          {
               nspecial_effect_animation_frame = 1;
               nspecial_effect_show = false;
               nspecial_effect_freeze = false;
          }
     }
}

if (nspecial_boosted_effect_show == true)
{
     if (nspecial_boosted_effect_freeze == false)
     {
          nspecial_boosted_effect_x = x - 146;
          nspecial_boosted_effect_y = y - 192;
          nspecial_boosted_effect_freeze = true;

          if (spr_dir = 1)
          {
               nspecial_boosted_effect_dir = "right";
          }
          else
          {
               nspecial_boosted_effect_dir = "left";
          }
     }

     shader_start();
     draw_sprite_part(sprite_get("nspecial_boosted_effect_" + nspecial_boosted_effect_dir), 0, ((nspecial_boosted_effect_animation_frame*288) - 288), 0, 288, 288, nspecial_boosted_effect_x, nspecial_boosted_effect_y);
     shader_end();

     nspecial_boosted_effect_animation_timer += 1;

     if (nspecial_boosted_effect_animation_timer >= nspecial_boosted_effect_animation_framelength)
     {
          nspecial_boosted_effect_animation_frame += 1;
          nspecial_boosted_effect_animation_timer = 0;

          if (nspecial_boosted_effect_animation_frame > 7)
          {
               nspecial_boosted_effect_animation_frame = 1;
               nspecial_boosted_effect_show = false;
               nspecial_boosted_effect_freeze = false;
          }
     }
}
