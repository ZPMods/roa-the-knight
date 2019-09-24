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
        take_damage(hit_player_obj.player,1,round(my_hitboxID.damage*0.1));
    }
}

//Pogo du dair
if (my_hitboxID.attack == AT_DAIR && window == 2)
{
  has_dair_hit = true;
}
