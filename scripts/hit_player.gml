// Soul system
if (my_hitboxID.attack == AT_JAB || my_hitboxID.attack == AT_DATTACK || my_hitboxID.attack == AT_FTILT || my_hitboxID.attack == AT_DTILT || my_hitboxID.attack == AT_UTILT || my_hitboxID.attack == AT_FSTRONG || my_hitboxID.attack == AT_DSTRONG || my_hitboxID.attack == AT_FAIR || my_hitboxID.attack == AT_BAIR || my_hitboxID.attack == AT_DAIR || my_hitboxID.attack == AT_UAIR || my_hitboxID.attack == AT_NAIR)
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
if (my_hitboxID.attack == AT_JAB || my_hitboxID.attack == AT_DATTACK || my_hitboxID.attack == AT_FTILT || my_hitboxID.attack == AT_DTILT || my_hitboxID.attack == AT_UTILT || my_hitboxID.attack == AT_FSTRONG || my_hitboxID.attack == AT_DSTRONG || my_hitboxID.attack == AT_FAIR || my_hitboxID.attack == AT_BAIR || my_hitboxID.attack == AT_DAIR || my_hitboxID.attack == AT_UAIR || my_hitboxID.attack == AT_NAIR)
{
    if(equipped_charm_1 = "strength" || equipped_charm_2 = "strength" || equipped_charm_3 = "strength")
    {
        take_damage(hit_player_obj.player,1,round(my_hitboxID.damage*0.2));
    }
    
     if(equipped_charm_1 = "heart" || equipped_charm_2 = "heart" || equipped_charm_3 = "heart")
    {
        take_damage(hit_player_obj.player,1,round(my_hitboxID.damage*-0.1));
    }
}

//Shaman Stone
if(my_hitboxID.attack == AT_USPECIAL || my_hitboxID.attack == AT_USPECIAL_2  || my_hitboxID.attack == AT_DPSPECIAL  || my_hitboxID.attack == AT_DSPECIAL_2 ||  my_hitboxID.attack == AT_FSPECIAL ||  my_hitboxID.attack == AT_FSPECIAL_2 )
{
    
    if(equipped_charm1 = "grubsong" || equipped_charm2 = "shaman" || equipped_charm3 = "shaman")
    {
         take_damage(hit_player_obj.player,1,round(my_hitboxID.damage*50));
    }
}

//Pogo du dair
if (my_hitboxID.attack == AT_DAIR && window == 2)
{
  has_dair_hit = true;
}
