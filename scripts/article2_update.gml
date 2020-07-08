phase_timer ++;

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
