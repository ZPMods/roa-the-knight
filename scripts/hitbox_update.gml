if(attack == AT_NSPECIAL_2 and hbox_num == 3){
    if was_parried{
    	owner.nsb_parried = true;
    }

    //timer
    if (shade_soul_first_hit and !in_hitpause)
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
    
    if(hitstop > 0) {
        hitstop--;
    }
    if(hitstop <= 0){
        in_hitpause = false;
    }
    
    if (shade_soul_first_hit && timer_boom % 5 == 0  && timer_boom > 1 && spawn_drag)
    {
        shade_drag = create_hitbox(AT_NSPECIAL_2, 1, x, y);
        shade_drag.was_parried = was_parried;
        shade_drag.player = player;
        spawn_drag = false;
    }
    
    if (shade_soul_hit)
    {
         shade_soul_first_hit = true;
         shade_soul_hit = false;
    }
    
    if (shade_soul_first_hit and !in_hitpause)
    {
        spawn_drag = true;
        timer_boom --;
    }
    
    //Shade bubbles
    bubbles_timer ++;
    
    if (bubbles_timer % 4 == 0)
    {
         shade_bubbles_play = 1;
         shade_bubbles_x = x;
         shade_bubbles_y = y;
    }
    
    if (shade_bubbles_play == 1)
    {
    	shade_bubbles_play = 0;
    	spawnShadeBubbles(shade_bubbles_x, shade_bubbles_y);
    }
    
    if (x < stage_left-200 || x > stage_right+200) or instance_place(x, y, asset_get("par_block"))
    {
    	if (timer_boom == 14)
    	{
    		spawn_hit_fx(x - 20, y - 40, owner.nts_hit);
    		spawn_hit_fx(x + 20, y, owner.shade_burst_1);
    	}
    
         if timer_boom > 0{
         	timer_boom = 0;
         }
    
        if(timer_boom) == 0{
    
    		if (shade_soul_first_hit)
    	    {
    	    	var temp = create_hitbox(AT_NSPECIAL_2, 2, x, y);
    			temp.was_parried = was_parried;
    			temp.player = player;
    	    }
    
    	}
    
    	sound_stop(audio);
        instance_destroy(shade_hitbox);
        instance_destroy();
        //sprite_index = asset_get("empty_sprite");
        return;
    }
    
    if destroy_this{
    	owner.move_cooldown[AT_NSPECIAL] = 0;
        shade_soul_first_hit = false;
        sound_stop(audio);
        instance_destroy();
        return;
    }
    
    if(timer_boom) == 0{
    
    	if (shade_soul_first_hit)
        {
    		var temp = create_hitbox(AT_NSPECIAL_2, 2, x, y);
			temp.was_parried = was_parried;
			temp.player = player;
        }
    	destroy_this = true;
    }
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