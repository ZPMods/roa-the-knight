//Reset le timer des boosted
if (attack == AT_NSPECIAL || AT_FSPECIAL || AT_DSPECIAL || AT_USPECIAL)
{
  charged_time = 0;
}

if (attack == AT_TAUNT)
{
  equip_cooldown = false;
  equip_cooldown_timer = 0;
}
