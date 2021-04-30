phase_timer ++;
player_id.bench_timer = phase_timer;
player_id.bench_phase = phase;

if(player_id.state != PS_RESPAWN){
	if(free) {
		vsp += gravity_speed;
	}else{
		if(old_vsp != vsp) sound_play(sound_get("knight_bench_lower"));
	}
}

left_side = x - width/2;
right_side = x + width/2;

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
		depth = 7;
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
          //case 5 :
          //     create_hitbox(AT_TAUNT, 1, x, y);
          //break;

          //case 15 :
          //     create_hitbox(AT_TAUNT, 2, x, y);
          //break;

          case 30 :
               create_hitbox(AT_TAUNT, 3, x, y);
          break;
     }
}

if(end_anim){
	all_hop_off = true;
}
if(all_hop_off){
	for(var i = 0; i < n_sit; i++){
		sitting_ids[i].hop_off = true;
	}
}



var j = 0;
var delay_x_update = false;//Hold x updates to not flicker later array shifts
how_many_sleeping = 0;
whos_not_sleeping = noone;
draw_charm = false;
var wake = false;
for(var i = 0; i < n_sit; i++){
	var sit_id = sitting_ids[@ i];
	if(instance_exists(sit_id) and sit_id != 0){
		
		if(sit_id.sitting){
			sitting_spots[@ j] = left_side + (j + 1)*width/(n_sit + 1);
			sit_id.x = floor( lerp(sit_id.x, sitting_spots[@ j], 0.5 ) );

			sit_id.sitting_bench = id;
			
			if(sit_id.sleepy_time > -1){
				how_many_sleeping++;
				if(!sit_id.joy_pad_idle){
					wake = true;
			    }
			}else{
				if(whos_not_sleeping != noone){
					if(fade_value_greater(sit_id)){
						whos_not_sleeping = sit_id;
					}
					
				}else{
					whos_not_sleeping = sit_id;
				}
					
			}
			
			j++;
		}else{
			
			
			n_sit--;
			if(i < n_sit){
				for(var t = i; t < n_sit; t++){//Move right side to occupy space
					sitting_ids[@ t] = sitting_ids[@ t + 1];
				}
			}
			
			sitting_ids[@ n_sit] = noone;
			i--;
			
		}
	}
}

if(whos_not_sleeping != noone){
	request_to_draw_wheel(whos_not_sleeping);
}

if(how_many_sleeping >= n_sit){
	sleepy_time++;
	if(!n_sit){
		sleepy_time = (sleepy_time < 110) ? 110 : sleepy_time;
	} 
}else{
	sleepy_time = -1;
}
if(wake) wake_up();
old_vsp = vsp;

#define fade_value_greater(_id)

return _id.charm_wheel_fade_value > whos_not_sleeping.charm_wheel_fade_value;

#define request_to_draw_wheel(_id)

player_id.fade_value = _id.charm_wheel_fade_value;
charm_wheel_fade_value = _id.charm_wheel_fade_value;
draw_wheel = true;

#define set_joy_dir_num(_id)

charm_selector_dir_array[_id.charm_dir]++;

#define clear_array(arr, n)

var index = 0;
repeat(array_length_1d(arr)){
	
	charm_selector_dir_array[index] = n;
	index++;
}

#define wake_up()

sleepy_time = -1;

#define old_bench()

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