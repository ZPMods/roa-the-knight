// Soul system
if (my_hitboxID.attack == AT_JAB || my_hitboxID.attack == AT_DATTACK || my_hitboxID.attack == AT_FTILT || my_hitboxID.attack == AT_DTILT || my_hitboxID.attack == AT_UTILT || my_hitboxID.attack == AT_FSTRONG || my_hitboxID.attack == AT_DSTRONG || my_hitboxID.attack == AT_FAIR || my_hitboxID.attack == AT_BAIR || my_hitboxID.attack == AT_DAIR || my_hitboxID.attack == AT_UAIR )
{
  if (soul_points < 100)
  {

    soul_points += round((my_hitboxID.damage * soulcatcher_multiplier));

    if (soul_points > 100)
    {
      soul_points = 100;
    }
  }
}

//Strength Charm
if (my_hitboxID.attack == AT_JAB || my_hitboxID.attack == AT_DATTACK || my_hitboxID.attack == AT_FTILT || my_hitboxID.attack == AT_DTILT || my_hitboxID.attack == AT_UTILT || my_hitboxID.attack == AT_FSTRONG || my_hitboxID.attack == AT_DSTRONG || my_hitboxID.attack == AT_FAIR || my_hitboxID.attack == AT_BAIR || my_hitboxID.attack == AT_DAIR || my_hitboxID.attack == AT_UAIR|| my_hitboxID.attack == AT_UAIR || my_hitboxID.attack == AT_NAIR||  my_hitboxID.attack == AT_FSPECIAL)
{
    if(equipped_charm_1 == "strength" || equipped_charm_2 == "strength" || equipped_charm_3 == "strength")
    {
        take_damage(hit_player_obj.player,1,round(my_hitboxID.damage*0.2));
    }

     if(equipped_charm_1 == "heart" || equipped_charm_2 == "heart" || equipped_charm_3 == "heart")
    {
        take_damage(hit_player_obj.player,1,round(my_hitboxID.damage*-0.1));
    }
}

//Shaman Stone
if(my_hitboxID.attack == AT_DSPECIAL || my_hitboxID.attack == AT_DSPECIAL_2 || my_hitboxID.attack == AT_USPECIAL_2 || my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_FSPECIAL_2)
{

    if(equipped_charm_1 == "shamanstone" || equipped_charm_2 == "shamanstone" || equipped_charm_3 == "shamanstone")
    {
        take_damage(hit_player_obj.player,1,round(my_hitboxID.damage*0.2));
    }
}

//Pogo du dair
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
     if (my_hitboxID.hbox_num == 1)
     {
          //hit_player_obj.should_make_shockwave = false;

          if (!shade_soul_first_hit)
               shade_soul_hit = true;
     }

}
