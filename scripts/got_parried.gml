if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1) 
{
    my_hitboxID.length += get_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME);
}

if ("source" in my_hitboxID)
{
    my_hitboxID.source.got_parried = true;
}
