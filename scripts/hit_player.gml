
if (my_hitboxID.attack == AT_JAB || my_hitboxID.attack == AT_DATTACK || my_hitboxID.attack == AT_FTILT || my_hitboxID.attack == AT_DTILT || my_hitboxID.attack == AT_UTILT || my_hitboxID.attack == AT_FSTRONG || my_hitboxID.attack == AT_DSTRONG || my_hitboxID.attack == AT_FAIR || my_hitboxID.attack == AT_BAIR || my_hitboxID.attack == AT_DAIR || my_hitboxID.attack == AT_UAIR || my_hitboxID.attack == AT_NAIR)
{
  if (soul_points < 100)
  {
      
    soul_points += my_hitboxID.damage;
    
    if (soul_points > 100)
    {
      soul_points = 100;
    }
  }
}
