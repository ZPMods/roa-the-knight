if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1) 
{
    my_hitboxID.length += get_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME);
}

/*if ("source" in my_hitboxID)
{
    my_hitboxID.source.got_parried = true;
}*/
if (my_hitboxID.attack == AT_NSPECIAL_2)
{
    parry_lag = 40;
}

if (my_hitboxID.attack == AT_NSPECIAL_2 && my_hitboxID.hbox_num == 3) 
{
    my_hitboxID.player = hit_player;
    shade_soul.parried = true;
    shade_soul.shade_player_id = hit_player_obj;
    shade_soul.hsp *= -1;
    shade_soul.spr_dir *= -1;
    
}