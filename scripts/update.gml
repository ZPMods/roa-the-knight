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
}
  