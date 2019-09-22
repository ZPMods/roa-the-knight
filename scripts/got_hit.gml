if (attack == AT_TAUNT)
  {
    is_equipping_charms = false;
  }

if(equipped_charm_1 = "grubsong" || equipped_charm_2 = "grubsong" || equipped_charm_3 = "grubsong")
{
    soul_points += round((enemy_hitboxID.damage/2));
}
if (soul_points > 100)
    {
      soul_points = 100;
    }