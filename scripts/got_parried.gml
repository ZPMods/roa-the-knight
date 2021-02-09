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
    my_hitboxID.parried = true;
    my_hitboxID.shade_player_id = hit_player_obj;
    my_hitboxID.length += get_hitbox_value(AT_NSPECIAL_2, 3, HG_LIFETIME);
    // my_hitboxID.hsp *= -1;
    // my_hitboxID.spr_dir *= -1;
}