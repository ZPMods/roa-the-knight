if parried{
	owner.nsb_parried = true;
}

if (destroy_firsthit){
	sound_stop(audio);
	instance_destroy(shade_hitbox);
}

//timer
if (shade_soul_first_hit)
{
    timer ++;

    //          CHANGE --------- CHANGE
    if(shade_soul_player_hit != noone and (newhit_vsp != 0 or newhit_hsp != 0)){
	    if ((shade_soul_player_hit.state == PS_HITSTUN or shade_soul_player_hit.state == PS_HITSTUN_LAND) and !shade_soul_player_hit.hitpause){

	        shade_soul_player_hit.vsp = newhit_vsp;
	        shade_soul_player_hit.hsp = newhit_hsp;
	        newhit_vsp = 0;
	        newhit_hsp = 0;
	        debug = 1;
	    }

	}
}



if shade_hitbox == noone and !shade_soul_first_hit{
 	shade_hitbox = create_hitbox(AT_NSPECIAL_2, 3, x + 10 * spr_dir , y - 33);
	shade_hitbox.source = id;
	shade_hitbox.hsp = hsp;
}

// player_id.shade_soul_x = x;
// player_id.shade_soul_y = y;

if (shade_soul_first_hit && timer % 5 == 0 && !hit_wall && timer_boom > 1)
{

    shade_drag = create_hitbox(AT_NSPECIAL_2, 1, x + 14 * spr_dir, y - 33);

}

if (shade_soul_hit)
{
     shade_soul_first_hit = true;
     shade_soul_hit = false;
}

if (shade_soul_first_hit)
{
     timer_boom --;
}


if(!instance_exists(shade_hitbox) and !destroy_firsthit){
	sound_stop(audio);
	instance_destroy();
	return;
}

//Animation
sprite_index = sprite_get("nspecial_boosted_proj_" + string(nspecial_animation_frame));

nspecial_animation_timer += 1;

if (nspecial_animation_timer == nspecial_animation_framelength)
{
  nspecial_animation_frame += 1;
  nspecial_animation_timer = 0;

  if (nspecial_animation_frame > 10)
  {
    nspecial_animation_frame = 1;
  }
}

//Clairen Plasma Field

if (place_meeting(x, y, asset_get("plasma_field_obj"))) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256);
	timer_boom = 0;
}

//Shade bubbles
bubbles_timer ++;

if (bubbles_timer % 4 == 0)
{
     shade_bubbles_play = 1;
     shade_bubbles_x = x;
     shade_bubbles_y = y - 40;
}

if (shade_bubbles_play = 1)
{
	shade_bubbles_play = 0;
	spawnShadeBubbles(shade_bubbles_x, shade_bubbles_y);
}

if (hit_wall || x < stage_left || x > stage_right)
{
     if timer_boom > 0{
     	timer_boom = 0;
     }

    if(timer_boom) == 0{

		if (shade_soul_first_hit)
	    {
	    	create_hitbox(AT_NSPECIAL_2, 2, x + 10 * spr_dir, y - 33);

	    }

	}

	sound_stop(audio);
    instance_destroy(shade_hitbox);
    instance_destroy();
    //sprite_index = asset_get("empty_sprite");
    return;
}

if(timer_boom) == 0{

	if (shade_soul_first_hit)
    {
    	create_hitbox(AT_NSPECIAL_2, 2, x + 10 * spr_dir, y - 33);

    }

}

if timer_boom == -1{
	owner.move_cooldown[AT_NSPECIAL] = 0;
    shade_soul_first_hit = false;
    sound_stop(audio);
    instance_destroy(shade_hitbox);
    instance_destroy();
    return;
}
#define spawnShadeBubbles
var id = random_func(0, 5, true);
var toSpawn = owner.shade_bubbles_1;

switch (id)
{
	case 0 : toSpawn = owner.shade_bubbles_1; break;
	case 1 : toSpawn = owner.shade_bubbles_1; break;
	case 2 : toSpawn = owner.shade_bubbles_3; break;
	case 3 : toSpawn = owner.shade_bubbles_4; break;
	case 4 : toSpawn = owner.shade_bubbles_5; break;
}

spawn_hit_fx(argument[0], argument[1], toSpawn);
