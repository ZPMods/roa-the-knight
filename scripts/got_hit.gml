//Empty
if (move_cooldown[AT_FSPECIAL] > 0)
{
    move_cooldown[AT_FSPECIAL] = 0;
}

if (attack == AT_TAUNT)
{
     if instance_exists(bench){
         bench.end_anim = true;
         bench.all_hop_off = true;
     }
     
     sitting = false;
}
