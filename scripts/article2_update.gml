phase_timer ++;
player_id.bench_timer = phase_timer;
player_id.bench_phase = phase;

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
