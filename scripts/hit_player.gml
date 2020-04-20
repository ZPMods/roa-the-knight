// Soul system
if (my_hitboxID.attack == AT_JAB || my_hitboxID.attack == AT_DATTACK || my_hitboxID.attack == AT_FTILT || my_hitboxID.attack == AT_DTILT || my_hitboxID.attack == AT_UTILT || my_hitboxID.attack == AT_FSTRONG || my_hitboxID.attack == AT_DSTRONG || my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_FAIR || my_hitboxID.attack == AT_BAIR || my_hitboxID.attack == AT_DAIR || my_hitboxID.attack == AT_UAIR|| my_hitboxID.attack == AT_NAIR )
{
     if (soul_points < 100)
     {
          old_soul_points = soul_points

          soul_points += round((my_hitboxID.damage));

          if (soul_points > 100)
          {
               soul_points = 100;
          }

          var i;
          for (i = 25; i < 125; i += 25)
          {
               if (old_soul_points < i && soul_points >= i)
               {
                    soul_full_play = 0;
               }
          }
     }
}

if (my_hitboxID.attack == AT_DAIR && window == 2)
{
     has_dair_hit = true;
}

//Down Special Aerial Hitbox
if(my_hitboxID.attack == AT_DSPECIAL && window == 5)
{
  has_dspecial_air_hit = true;
  window = 7;
  window_timer = 0;
}

//Down Special Boosted Multihit
if (my_hitboxID.attack == AT_DSPECIAL_2 && window == 4)
{
  if (y < 750)
    hit_player_obj.should_make_shockwave = false;
  else
    hit_player_obj.should_make_shockwave = true;
}

//Neutral Special Boosted Multihit
if (my_hitboxID.attack == AT_NSPECIAL_2)
{
     if (my_hitboxID.hbox_num == 3)
     {
          shade_soul_player_hit = hit_player_obj;
          shade_soul_hit = true;
     }

     //Empecher l'effet violet dégueulasse
     if (my_hitboxID.hbox_num == 1)
     {
          hit_player_obj.should_make_shockwave = false;
     }

}

//Forward Special Boosted Multihit
if (my_hitboxID.attack == AT_FSPECIAL_2)
{
     if (my_hitboxID.hbox_num != 4)
     {
          fspecial_boosted_player_hit = hit_player_obj;
          fspecial_boosted_hit = true;
     }
     else
     {
          fspecial_boosted_player_hit = 0;
          fspecial_boosted_hit = false;
     }
}

//Down Special Boosted Multihit
if (my_hitboxID.attack == AT_DSPECIAL_2)
{
     if (my_hitboxID.hbox_num < 6)
     {
          dspecial_boosted_player_hit = hit_player_obj;
          dspecial_boosted_hit = true;
     }
     else
     {
          dspecial_boosted_player_hit = 0;
          dspecial_boosted_hit = false;
     }
}

// Dream Nail
if (attack == AT_TAUNT_2) {
	with(asset_get("oPlayer")){
		if(id != other.id){
			if(select == clamp(select, 2, 15)){
				other.vanillachar = select - 1;
			}
			if (url == 1865940669){ //Sandbert
                vanillachar = 15;
            }

            if (url == 1866016173){ //Guadua
                vanillachar = 16;
            }
		}
		vanillachar = 0;
        dream_random =  hit_player_obj.dream_nail[random_func(0, array_length_1d(dream_nail), true)];
	}



}

if (vanillachar == 1)
{
	dream_random = dream_nail_zetterburn[random_func(0,array_length_1d(dream_nail_zetterburn), true)];
}
if (vanillachar == 2)
{
	dream_random = dream_nail_orcane[random_func(0,array_length_1d(dream_nail_orcane), true)];
}
if (vanillachar == 3)
{
	dream_random = dream_nail_wrastor[random_func(0,array_length_1d(dream_nail_wrastor), true)];
}
if (vanillachar == 4)
{
	dream_random = dream_nail_kragg[random_func(0,array_length_1d(dream_nail_kragg), true)];
}
if (vanillachar == 5)
{
	dream_random = dream_nail_frosburn[random_func(0,array_length_1d(dream_nail_frosburn), true)];
}
if (vanillachar == 6)
{
	dream_random = dream_nail_maypul[random_func(0,array_length_1d(dream_nail_maypul), true)];
}
if (vanillachar == 7)
{
	dream_random = dream_nail_absa[random_func(0,array_length_1d(dream_nail_absa), true)];
}
if (vanillachar == 8)
{
	dream_random = dream_nail_etalus[random_func(0,array_length_1d(dream_nail_etalus), true)];
}
if (vanillachar == 9)
{
	dream_random = dream_nail_ori[random_func(0,array_length_1d(dream_nail_ori), true)];
}
if (vanillachar == 10)
{
	dream_random = dream_nail_ranno[random_func(0,array_length_1d(dream_nail_ranno), true)];
}
if (vanillachar == 11)
{
	dream_random = dream_nail_clairen[random_func(0,array_length_1d(dream_nail_clairen), true)];
}
if (vanillachar == 12)
{
	dream_random = dream_nail_sylvanos[random_func(0,array_length_1d(dream_nail_sylvanos), true)];
}
if (vanillachar == 13)
{
	dream_random = dream_nail_elliana[random_func(0,array_length_1d(dream_nail_elliana), true)];
}
if (vanillachar == 14)
{
	dream_random = dream_nail_shovel[random_func(0,array_length_1d(dream_nail_shovel), true)];
}

//----------------------------------------------------------
// PARTICLES
//----------------------------------------------------------
//Soul Burst
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1)
{
     soul_burst_play = 1;
     soul_burst_x = hit_player_obj.x;
     soul_burst_y = hit_player_obj.y - 35;
}

if (my_hitboxID.attack == AT_DSPECIAL && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2))
{
     soul_burst_play = 1;
     soul_burst_x = hit_player_obj.x;
     soul_burst_y = hit_player_obj.y - 35;
}

//Shade Burst
if (my_hitboxID.attack == AT_NSPECIAL_2 && my_hitboxID.hbox_num == 2)
{
     shade_burst_play = 1;
     shade_burst_x = hit_player_obj.x;
     shade_burst_y = hit_player_obj.y - 35;
}

if (my_hitboxID.attack == AT_USPECIAL_2 && my_hitboxID.hbox_num == 7)
{
     shade_burst_play = 1;
     shade_burst_x = hit_player_obj.x;
     shade_burst_y = hit_player_obj.y - 35;
}

if (my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num == 4)
{
     shade_burst_play = 1;
     shade_burst_x = hit_player_obj.x;
     shade_burst_y = hit_player_obj.y - 35;
}

if (my_hitboxID.attack == AT_DSPECIAL_2 && my_hitboxID.hbox_num == 10)
{
     shade_burst_play = 1;
     shade_burst_x = hit_player_obj.x;
     shade_burst_y = hit_player_obj.y - 35;
}
