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
        var i = 0;
		while(i < 3){
			i++;
			if (colliding_bench.num_sitting[i] == noone){
			    colliding_bench.num_sitting[i] = id;
			    sitting_old_x = x;
			    if i == 1{colliding_bench.timer_ease = -1; colliding_bench.update_mov = id; colliding_bench.num_sitting[0].sitting_old_x = colliding_bench.num_sitting[0].x}
			    sitting_id = i;
			    do_easing = true;
			    break;
			}
		}
    }
}
