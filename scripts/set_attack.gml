//Reset les valeurs
charged_time = 0;
has_dspecial_air_hit = false;

if (attack == AT_TAUNT)
{
    hsp = 0;
	var sp_bench = false;
	var i_collide_with_owner = false;
	var i_collide_with_another = false;
	can_sit = true;
	var chosen_bench = noone;
    if(instance_exists(obj_article2)){
    	
    	with(obj_article2){
    		
    		if(player_id.url == "2109714904"){		//From knight?
    			
    			if(place_meeting(x, y, other)){		//Does this bench collide with knight?
    				if(player_id == other){			//IS this collided bench from owner?
    					if(i_collide_with_owner){	//Did a bench already collide?
	    					end_anim = true;
	    					end_stay = 15;
	    				}else{
	    					chosen_bench = id;
	    				}
	    				i_collide_with_owner = true;
    				}else{
    					i_collide_with_another = true;
    					chosen_bench = id;
    					print("de boa")
    				}
    				if(sp_bench) sp_bench = false;
    			}else{
    				
    				
    				if(player_id == other){
    					end_anim = true;
    					end_stay = 15;
    				}else{
    					print("de boa")
    				}
    				
    				if(!i_collide_with_owner and !i_collide_with_another) sp_bench = true;
    				
    			}
    		}
    	}
    }else{
    	sp_bench = true;
    }
    if(sp_bench) {
    	print(id)
    	var b = instance_create(x, y, "obj_article2");
    	b.spr_dir = spr_dir;
    	chosen_bench = b;
    	reset_bench_startup(id);
    }else{
    	bench_startup_fast(id);
    }
    request_to_sit(chosen_bench, id);
    
}

if (attack == AT_DSPECIAL)
{
     if (free)
     {
          set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 5);
          set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 17);
     }
     else
     {
          set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
          set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 10);
     }
}

//NAILMASTER
if(attack == AT_FSTRONG or attack == AT_DSTRONG){
	if (nailart_triggered){
		set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 0);//NO CHARGE
		set_window_value(attack, 5, AG_WINDOW_TYPE, 7);//PRATFALL
	}else{
		set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 1);
		set_window_value(attack, 5, AG_WINDOW_TYPE, 0);
	}
}

//FLUKENEST
if(attack == AT_NSPECIAL){
	if(has_charm(FLUKENEST)){
		flukenest_proj();
		flukenest_void_proj();
	}else{
		reset_nspecial();
		reset_nspecial_2();
	}
}

#define get_sitting_pos(_bench, _id)

_bench.sitting_ids[@ 4] = _id;
sort_by_x(_bench.sitting_ids, 5);

#define request_to_sit(_bench, _id)

with _bench{

	if(phase != 2 and player_id != _id) or (n_sit >= max_sit){
		other.can_sit = false;
		return;
	}else{
		
		var _min = 0;
		var pos = -1;
		for(var i = 0; i < n_sit; i++){
			if(sitting_ids[i].x > _id.x){
				pos = i;
				break;
			}
		}
		if(pos != -1){
			for(var i = n_sit; i > pos; i--){
				sitting_ids[i] = sitting_ids[i - 1]
				print("hold up")
			}
			sitting_ids[pos] = other;
		}else{
			sitting_ids[n_sit] = other;
		}
		
		
		n_sit++;
		other.sitting = true;
		other.sitting_bench = _bench;
		return;
	}
	
}

#define sort_by_x(arr, n)
var i, key, j = 0;
for (i = 1; i < n; i++)
{
	if(instance_exists(arr[@ i])){
		key = arr[i];
	    j = i - 1;
	
	    /* Move elements of arr[0..i-1], that are
	    greater than key, to one position ahead
	    of their current position */
	    while (j >= 0 && (!instance_exists(arr[@ j]) or arr[@ j].x > key.x))
	    {
	        arr[@ j + 1] = arr[@ j];
	        j = j - 1;
	    }
	}else{
		
	}
    
    arr[@ j + 1] = key;
}
#define bench_startup_fast(_id)

with (_id){
	set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 5);
	set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 5);
	set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 10);
	set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 5);
	set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
}

#define reset_bench_startup(_id)
with (_id){
	reset_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH);
	reset_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH);
	reset_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH);
	reset_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES);
	reset_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START);
}
#define flukenest_void_proj

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX, sound_get("fluke_cast"));

// set_hitbox_value(AT_NSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
// set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 150);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, nspecial_boosted_explosion);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, sound_get("knight_special_neutral_boosted_boom"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("flukeling_void"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GRAVITY, .2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GROUND_FRICTION, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_AIR_FRICTION, .02);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 1);


#define flukenest_proj()

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("fluke_cast"));

set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 20);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, soul_hit_heavy);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sound_get("knight_special_neutral_normal_impact"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("flukeling"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, .3);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_FRICTION, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, .05);


#define reset_nspecial()

reset_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX);

reset_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX);
reset_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE);
reset_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW);
reset_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME);
reset_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X);
reset_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y);
reset_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH);
reset_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT);
reset_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY);
reset_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE);
reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE);
reset_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE);
reset_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT);
reset_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX);
reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE);
reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK);
reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED);
reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED);
reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED);
reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR);
reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY);
reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_FRICTION);
reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION);

#define reset_nspecial_2()

reset_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX);

reset_hitbox_value(AT_NSPECIAL_2, 1, HG_PARENT_HITBOX);
reset_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE);
reset_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW);
reset_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME);
reset_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X);
reset_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y);
reset_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH);
reset_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT);
reset_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY);
reset_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE);
reset_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK);
reset_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING);
reset_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE);
reset_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE);
reset_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT);
reset_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX);
reset_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE);
reset_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK);
reset_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED);
reset_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_HSPEED);
reset_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_VSPEED);
reset_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR);
reset_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GRAVITY);
reset_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GROUND_FRICTION);
reset_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_AIR_FRICTION);

#define has_charm(charm)

// is_charm_equipped >> charm shifts the charm flag location one to the most right flag
// then it performs AND, if equipped then must be equal to the charm number
return (is_charm_equipped >> charm) & 1;

#define remove_charm(charm)

// charm_equipped_num--;
// if(charm_equipped_num < 0) charm_equipped_num = 0;
if(has_charm(charm))
	charm_equipped_num--;
	is_charm_equipped = is_charm_equipped & ~(1<<charm); // 1<<charm shifts the one to the charm flag location, it creates the mask with negation, then it performs AND, is_charm_equipped will no longer have 1 at the charm number

#define add_charm(charm)

// charm_equipped_num++;
// if(charm_equipped_num > max_charms) charm_equipped_num = max_charms;
if(has_charm(charm)) return;
charm_equipped_num++;
is_charm_equipped = is_charm_equipped | (1<<charm); // 1<<charm shifts the one to the charm flag location, then it performs OR, is_charm_equipped will have 1 at the charm number