if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1) 
{
    my_hitboxID.length += get_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME);
}

if (my_hitboxID.attack == AT_NSPECIAL_2 )
{
    my_hitboxID.shade_soul_first_hit.spr_dir = - my_hitboxID.shade_soul_first_hit.spr_dir;
}