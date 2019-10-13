// EUPEUDEÏTEUH
// Walking Variables
    walk_speed = 4;
    walk_accel = 0.2;
    walk_turn_time = 6;
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

// Dodge / Air Dodge Variables
    air_dodge_speed = 7.5;

    roll_forward_max = 9; //roll speed
    roll_backward_max = 9;

// Knockback Variable
    knockback_adj = 1.1;

// Soul Variable
    soulcatcher_multiplier = 1;

if(equipped_charm_1 = "dashmaster" || equipped_charm_2 = "dashmaster" || equipped_charm_3 = "dashmaster")
{
    // BONUS
    walk_speed = walk_speed + 1.5;
    walk_accel = walk_accel + 0.1;
    walk_turn_time = walk_turn_time - 1;
    initial_dash_speed = initial_dash_speed + 1.5;
    dash_speed = dash_speed + 1;

    air_max_speed = air_max_speed + 1;
    air_accel = air_accel + 0.05;

    //MALUS
    knockback_adj = knockback_adj + 0.3;
}
else
{

}

if(equipped_charm_1 = "stalwart" || equipped_charm_2 = "stalwart" || equipped_charm_3 = "stalwart")
{
    // BONUS
    air_dodge_speed = air_dodge_speed + 1.5;

    roll_forward_max = roll_forward_max + 2; //roll speed
    roll_backward_max = roll_backward_max + 2;

    // MALUS
    walk_speed = walk_speed - 1;
    walk_accel = walk_accel - 0.1;
    walk_turn_time = walk_turn_time + 1;
    initial_dash_speed = initial_dash_speed - 1;
    dash_speed = dash_speed - 1;

}
else
{
}

if(equipped_charm_1 = "soulcatcher" || equipped_charm_2 = "soulcatcher" || equipped_charm_3 = "soulcatcher")
{
    // BONUS
    soulcatcher_multiplier = soulcatcher_multiplier + 0.3;

    // MALUS
}

if(equipped_charm_1 = "grubsong" || equipped_charm_2 = "grubsong" || equipped_charm_3 = "grubsong")
{
    // BONUS
    soulcatcher_multiplier = soulcatcher_multiplier - 0.2;

    // MALUS
}
else
{
}

if(equipped_charm_1 = "heart" || equipped_charm_2 = "heart" || equipped_charm_3 = "heart")
{
    // BONUS
    knockback_adj = knockback_adj - 0.4;

    // MALUS dans hit_player
}
else
{
}

// OVERCHARM
if (overchamed == true)
{
    knockback_adj = knockback_adj + 0.3;
}
//

//Moves cooldown
//Down Special
if (!free)
{
  move_cooldown[AT_DSPECIAL] = 0;
}

