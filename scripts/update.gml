//update

if(equipped_charm_1 = "dashmaster" || equipped_charm_2 = "dashmaster" || equipped_charm_3 = "dashmaster")
{
    walk_speed = 6;
    walk_accel = 0.3;
    walk_turn_time = 5;
    initial_dash_time = 10;
    initial_dash_speed = 10;
    dash_speed = 8;
    dash_turn_time = 10;
    dash_turn_accel = 1.5;
    dash_stop_time = 7;
    dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
    ground_friction = .5;
    moonwalk_accel = 1.4;

    air_max_speed = 6;
    air_accel = .55;
    
    knockback_adj = 1.3;
}
else
{
    walk_speed = 4;
    walk_accel = 0.2;
    walk_turn_time = 6;
    initial_dash_time = 10;
    initial_dash_speed = 8;
    dash_speed = 6;
    dash_turn_time = 10;
    dash_turn_accel = 1.5;
    dash_stop_time = 7;
    dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
    ground_friction = .5;
    moonwalk_accel = 1.4;

    air_max_speed = 5;
    air_accel = .5;
    
    knockback_adj = 1.1;
}

if(equipped_charm_1 = "stalwart" || equipped_charm_2 = "stalwart" || equipped_charm_3 = "stalwart")
{
    air_dodge_speed = 9;

    roll_forward_max = 10; //roll speed
    roll_backward_max = 10;
}
else
{
    air_dodge_speed = 7.5;

    roll_forward_max = 9; //roll speed
    roll_backward_max = 9;
}

if(equipped_charm_1 = "soulcatcher" || equipped_charm_2 = "soulcatcher" || equipped_charm_3 = "soulcatcher")
{
    soulcatcher_multiplier = 1.3;
}
else
{
   soulcatcher_multiplier = 1;
}

if(equipped_charm_1 = "heart" || equipped_charm_2 = "heart" || equipped_charm_3 = "heart")
{
    if(equipped_charm_1 = "dashmaster" || equipped_charm_2 = "dashmaster" || equipped_charm_3 = "dashmaster")
    {
        knockback_adj = 1;
    }
    knockback_adj = 0.9;
}
else
{
   knockback_adj = 1.1;
}
//
