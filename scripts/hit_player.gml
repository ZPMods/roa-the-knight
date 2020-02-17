// Soul system
if (my_hitboxID.attack == AT_JAB || my_hitboxID.attack == AT_DATTACK || my_hitboxID.attack == AT_FTILT || my_hitboxID.attack == AT_DTILT || my_hitboxID.attack == AT_UTILT || my_hitboxID.attack == AT_FSTRONG || my_hitboxID.attack == AT_DSTRONG || my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_FAIR || my_hitboxID.attack == AT_BAIR || my_hitboxID.attack == AT_DAIR || my_hitboxID.attack == AT_UAIR|| my_hitboxID.attack == AT_NAIR )
{
  if (soul_points < 100)
  {

    soul_points += round((my_hitboxID.damage));

    if (soul_points > 100)
    {
      soul_points = 100;
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

//Down Special Boosted Drag Down
if (my_hitboxID.attack == AT_DSPECIAL_2 && window == 4)
{
  if (y < 750)
    hit_player_obj.should_make_shockwave = false;
  else
    hit_player_obj.should_make_shockwave = true;
}

//Neutral Special Boosted
if (my_hitboxID.attack == AT_NSPECIAL_2)
{
     //Empecher l'effet violet dégueulasse
     if (my_hitboxID.hbox_num == 3)
     {
          shade_soul_player_hit = hit_player_obj;
          shade_soul_hit = true;
     }

     if (my_hitboxID.hbox_num == 1)
     {
          hit_player_obj.should_make_shockwave = false;
          /* hit_player_obj.x = shade_soul_x;
          hit_player_obj.y = shade_soul_y; */
     }

}
// Dream Nail
if (attack == AT_TAUNT) {
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
	}
	dream_nail_draw_1 = hit_player_obj.dream_nail_1;
	dream_nail_draw_2 = hit_player_obj.dream_nail_2;

}
