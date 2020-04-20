if abyssEnabled {
	if "runesUpdated" in self && runesUpdated {
		//attribute changes and things that don't have to run every frame go in here
		if runeL {

		} else {

		}
	}

	//everything that should run every frame goes here.
}

//EFFECTS ANIMATIONS -----------------------------------------------------------

//Normal to Shade Effect

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

//Neutral Special Effect

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

//Down Special Explosion

if (dspecial_explosion_show == true)
{
     if (dspecial_explosion_freeze == false)
     {
          dspecial_explosion_x = x - 128 - 2 * spr_dir;
          dspecial_explosion_y = y - 128 - 12;
          dspecial_explosion_freeze = true;
     }

     shader_start();
     draw_sprite_part(sprite_get("dspecial_explosion"), 0, ((dspecial_explosion_animation_frame * 256) - 256), 0, 256, 256, dspecial_explosion_x, dspecial_explosion_y);
     shader_end();
	if (!hitpause)
	{
     	dspecial_explosion_animation_timer += 1;
	}

     if (dspecial_explosion_animation_timer >= dspecial_explosion_animation_framelength)
     {
          dspecial_explosion_animation_frame += 1;
          dspecial_explosion_animation_timer = 0;

          if (dspecial_explosion_animation_frame > 9)
          {
               dspecial_explosion_animation_frame = 1;
               dspecial_explosion_show = false;
               dspecial_explosion_freeze = false;
          }
     }
}
