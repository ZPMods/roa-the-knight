//Reset les valeurs
charged_time = 0;
has_dspecial_air_hit = false;

if (attack == AT_TAUNT)
{
    hsp = 0;

    if colliding_bench == noone{
        bench = instance_create(x, y, "obj_article2");
        bench.spr_dir = spr_dir;
        sitting = true;
        sitting_id = 0;
        sitting_old_x = x;

    }else{

		if colliding_bench != bench{
			colliding_bench.timer_ease = -1;
			colliding_bench.update_mov = id;
			colliding_bench.player_id.sitting_old_x = colliding_bench.player_id.x;
			colliding_bench.second = id;
		    sitting_old_x = x;
		    do_easing = true;

		}

    }
}

if (attack == AT_DSPECIAL)
{
     if (free)
     {
          set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 5);
     }
     else
     {
          set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
     }
}