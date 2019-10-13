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

if(equipped_charm_1 = "strength" || equipped_charm_2 = "strength" || equipped_charm_3 = "strength")
    {
        take_damage(player,hit_player,round(enemy_hitboxID.damage*0.3));
    }
    
if (overcharmed == true)
{
    take_damage(player,hit_player,round(enemy_hitboxID.damage*0.4));
}
