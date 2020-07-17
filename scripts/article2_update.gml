phase_timer ++;
player_id.bench_timer = phase_timer;
player_id.bench_phase = phase;
n_sit = 0;

// num_sitting = 0;
//Phase switching
switch (phase)
{
     case 1 :
		frame_timer = 5;
		loop = false;
	break;

	case 2 :
		loop = true;
		phase_timer = 0;
	break;

	case 3 :
		frame_timer = 5;
		loop = false;
		depth = 10000;
	break;
}

if (phase_timer % frame_timer == 0 && loop = false)
{
	image_index ++;
}

//Staying
if (image_index == 9)
{
	phase = 2;
}

//End
if (end_anim && phase == 2)
{
	end_stay -= 1;
    
}

if (end_stay <= 0)
{
	phase = 3;
}

if (image_index == 17)
{
	instance_destroy();
	return;
}

//SOUNDS
switch (phase)
{
     case 1 :
          switch (phase_timer)
          {
               case 1 :
                    sound_play(sound_get("knight_bench_rise"));
          	break;

               case 11 :
                    sound_play(sound_get("knight_bench_open"));
          	break;

               case 21 :
                    sound_play(sound_get("knight_bench_lower"));
               break;
          }
	break;

	case 3 :
          switch (phase_timer)
          {
               case 5 :
                    sound_play(sound_get("knight_bench_open"));
               break;

               case 25 :
                    sound_play(sound_get("knight_bench_rise"));
               break;
          }
	break;
}

//HITBOXES
if (phase == 1)
{
     switch (phase_timer)
     {
          case 5 :
               create_hitbox(AT_TAUNT, 1, x, y);
          break;

          case 15 :
               create_hitbox(AT_TAUNT, 2, x, y);
          break;

          case 30 :
               create_hitbox(AT_TAUNT, 3, x, y);
          break;
     }
}

if timer_ease <= 50 and timer_ease > -2{
	timer_ease++;
}



with asset_get("oPlayer"){
	if self.url == "2109714904"{
		
		if other.phase == 2 and !other.end_anim{
			if place_meeting(x, y, other){
				colliding_bench = other;
				if sitting{
					other.n_sit++;
				}
				print_debug("sim");
			}else{
				colliding_bench = noone;
				if id == other.player_id{
					all_hop_off = true;
					other.end_anim = true;
				}
				print_debug("noone");
			}
			
		}else{
			colliding_bench = noone;
			print_debug("não phase 2")
		}
		
	}
}


if update_mov != player_id and update_mov != noone and timer_ease <= 50{
	if update_mov.x < x{
		update_mov.spr_dir = 1;
		update_mov.x = ease_cubeOut(update_mov.sitting_old_x, pos_left, timer_ease, 50);
		player_id.x = ease_cubeOut(player_id.sitting_old_x, pos_right, timer_ease, 50);
	}else{
		update_mov.spr_dir = -1;
		update_mov.x = ease_cubeOut(update_mov.sitting_old_x, pos_right, timer_ease, 50);
		player_id.x = ease_cubeOut(player_id.sitting_old_x, pos_left, timer_ease, 50);
	}
}

if(player_id.window == 7 and player_id.window_timer == 0) or all_hop_off{
	if second != noone{
		second.hop_off = true;
	}
	
}