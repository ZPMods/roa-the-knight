//ai_init - setting the basic AI attack behaviors
if (get_training_cpu_action() == CPU_FIGHT){
    
    
    //This code is a Frankenstein of Otto's ai code and Ronalds ai code with additions of mine (Danilo-PJ#3122)
    
    
    //Check the width of the hurtbox
    if (ai_target.player != old_ai_target or target_init == true or hurtboxWidth = 0){
    	checkHurtboxWidth();
    	target_init = false;
    }
    // hurtboxWidth = 30;
    
    //Variables updates and resets
    old_ai_target = ai_target.player;
    xdist = abs(ai_target.x - x);
    ydist = abs(y - ai_target.y);
    
    resetPredict();
    targetdamage = get_player_damage( ai_target.player );
    cancel_jab = false;
    targetbusy = false;
    facing = false;
    can_boost = false;
    chasing = 0;
    camping = 0;
    debug = 0;
    do_not_attack = 0;
    var offstage = (x > room_width - stagex || x < stagex) and y <= stagey;
    var ai_target_offstage = (ai_target.x - hurtboxWidth > room_width - stagex || ai_target.x + hurtboxWidth < stagex);
    if state_cat == SC_HITSTUN{
    	if (hit_player_obj != ai_target){
    		ai_target = hit_player_obj;
    	}
    }
    
    
    //------------------ Wait time
    if(state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR){
    	attacking = true;
    	if wait_time == 0{
    		
    		wait_time = -1;
    	}
    }else{
    	attacking = false;
    }
    
    if(wait_time == -1 and !attacking){
    	wait_time = 90 - (temp_level * 10);
    }
    if wait_time > 0{
    	wait_time--;
    }
    //--------------------
    
    if soul_points >= 25{
        can_boost = true;
    }
    
    if soul_points == 100 and (attack == AT_NSPECIAL or attack == AT_FSPECIAL or attack == AT_DSPECIAL){
    	special_down = true;
    }
    
    if (ai_target.state == PS_DEAD or ai_target.state == PS_RESPAWN){
        targetbusy = true;
        rangedtimer = 100;
    }
    
    
    if (state_cat != SC_HITSTUN and state != PS_SPAWN){
        rangedtimer -= 1;
    }
    
    
    if (ai_target.x < x && spr_dir = -1) || (ai_target.x > x && spr_dir = 1){
        facing = true;
    }
    if(state_cat == SC_GROUND_NEUTRAL and !facing){
    	faceopponent();
    }
    
    //Chase - Agression
    if (((0 > rangedtimer) and (!ai_recovering and inactive > 20)) and (state_cat == SC_GROUND_NEUTRAL or state_cat == SC_AIR_NEUTRAL) and state_cat != SC_HITSTUN and !ai_target_offstage and !offstage and xdist > 100 and !wait_time > 0){
	    if ai_target.x > x{
	        right_hard_pressed = true;
			if state = PS_DASH {
				right_down = true;
			}
	    } else {
	        left_hard_pressed = true;
			if state = PS_DASH {
				left_down = true;
			}
	    }
	    chasing = 1
	}
	
	//Chase - Combos
	if(ai_target.state_cat == SC_HITSTUN and state != PS_PRATFALL and state_cat != SC_HITSTUN and !((attack == AT_USPECIAL or attack == AT_USPECIAL_2) and state == PS_ATTACK_AIR) and !ai_target_offstage and !offstage and !can_DACUS and !to_boost and !wait_time > 0){
		if ai_target.x > x{
	        right_hard_pressed = true;
			if state = PS_DASH {
				right_down = true;
			}
	    } else {
	        left_hard_pressed = true;
			if state = PS_DASH {
				left_down = true;
			}
	    }
	    chasing = 1;
	    
	    
	}
	
	
	//Camping
	if (((state != PS_PRATFALL and rangedtimer > 0 and ai_target.state_cat != SC_HITSTUN and !to_boost and state_cat != SC_HITSTUN ) or targetbusy) and !ai_recovering and !wait_time > 0){
		if !facing and xdist > 350 and !(attack == AT_USPECIAL_2 and state == PS_ATTACK_AIR){
			faceopponent();
		} 
		
		if get_player_damage(player) > 90{
			if !free and xdist > 200{
				jump_pressed = true
			}
			if free{
			    if x > ai_target.x{
					left_down = false;
					right_down = true;
				} 	else {
					left_down = true;
					right_down = false;
				}
			}
			
			if can_special and xdist > 350 and ydist < 20 and facing {
				
			    joy_pad_idle = true;
				up_pressed = false;
				left_pressed = false;
				right_pressed = false;
				down_pressed = false;
				left_down = false;
				right_down = false;
				up_down = false;
				down_down = false;
			    special_pressed = true;
			    attack_pressed = false;
			}
		}
		
		camping = 1;
	}
    
    // if(chasing){
	// 	if(state == PS_JUMPSQUAT){
	    	
	//     	if ai_target.y > y - char_height and ai_target.y < y{
	//     		shield_pressed = true;
	    		
	//     	}
	//     }
	// }
	if state == PS_WAVELAND{
	 	if chasing{
	 		if x < ai_target.x{
				left_down = false;
				right_down = true;
			} 	else {
				left_down = true;
				right_down = false;
			}
	 	}
	 		
	}
	
	var plat_near = collision_point(x, y+5, asset_get("jumpthrough_32_obj"), false, false);
    if free and plat_near and (chasing or camping) and vsp < 0 and !(ai_target.y < y and xdist < 50) and !ai_target_offstage{
    	shield_pressed = true;
    }
    
    if (state == PS_AIR_DODGE and plat_near){
    	if chasing{
    		if x < ai_target.x{
				left_down = false;
				right_down = true;
				joy_pad_idle = false;
				joy_dir = 350;
			}else {
				left_down = true;
				right_down = false;
				joy_pad_idle = false;
				joy_dir = 190;
			}
    	}
    	if camping{
    		if x > ai_target.x{
				left_down = false;
				right_down = true;
				joy_pad_idle = false;
				joy_dir = 350;
			}else {
				left_down = true;
				right_down = false;
				joy_pad_idle = false;
				joy_dir = 190;
			}
    	}
    }
    
    
	if (ai_target.state == PS_DEAD or ai_target.state == PS_RESPAWN) and !free and !(x > room_width/2 - 100 and x < room_width/2 + 100){
    	clear_button_buffer(PC_JUMP_PRESSED);
    	jump_down = false;
    	jump_pressed = false;
    	tiltDance();
    	
    }
	
	if (state_cat == SC_GROUND_NEUTRAL or state_cat == SC_AIR_NEUTRAL or (state == PS_DASH_START or state == PS_DASH or state == PS_DASH_TURN) and state != PS_SPAWN){
        rangedtimer -= 1;
        inactive += 2;
    } else{
        inactive = 0;
    }
    
    if !free and ai_target.y - 70 > y and !ai_target.free {
		down_hard_pressed = true;
	}
    
    //Fastfall
 //   if free and ai_target.y - 120 > y {
	// 	down_hard_pressed = true;
	// }
	
	//Shielding from Kirby AI code
	nearbyhitbox = collision_circle( x, y - char_height/2, 64-(wait_time*0.4), asset_get("pHitBox"), true, true);
	if nearbyhitbox != noone{
		if nearbyhitbox.player_id != self{
			shield_pressed = true
		}
	}
    
   	//----------------------------------------------------
	//Combos logic
	//----------------------------------------------------
	
	
	// //Shorthop combos
 //   if can_jump{
 //       if ai_target.state_cat == SC_HITSTUN{
 //           if ai_target.y < y-60 and state_cat == SC_GROUND_NEUTRAL{
 //               jump_pressed = true;
 //           }
            
 //       }
        
 //   }
    
   
	if(free and has_hit and state == PS_ATTACK_AIR and !offstage){
		var plat_near = instance_nearest(x, y, asset_get("par_jumpthrough"));
		if ((y > stagey - char_height and y < stagey) or collision_line(x, y, x, y+char_height, plat_near, false, true)){
			down_hard_pressed = true;
		}
		
	}
	
	
	//Jab cancel
	if(attack == AT_JAB){
		if(get_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME) <= window_timer and window = 3){
			cancel_jab = true;
			can_attack = true;
		}
	}
	
	//DACUS
    DACUSpercent = (2 - ai_target.knockback_adj) * 110;
    if(attack == AT_DTILT and has_hit and DACUSpercent < targetdamage and targetdamage < DACUSpercent * 1.30){
    	can_DACUS = true;
    }
    
    if(can_DACUS){
    	faceopponent();
    	DACUStimer++;
    	if can_attack and !free{
    		if attack = AT_DTILT{
    			clear_button_buffer( PC_ATTACK_PRESSED );
    			clear_button_buffer( PC_JUMP_PRESSED );
    			if ai_target.x > x{
    				right_hard_pressed = true;
    			} 
    			else {
    				left_hard_pressed = true;
    			}
    	        joy_pad_idle = true;
    	        left_down = false;
    	        right_down = false;
    	        up_down = false;
    	        down_down = false;
    	        special_pressed = false;
    	        attack_pressed = true;
   
    	        
    		
    		}
    	}
    	
		if (window = 1 or (window = 2 and window_timer < 2)) and attack == AT_DATTACK{
			clear_button_buffer( PC_ATTACK_PRESSED );
			clear_button_buffer( PC_STRONG_PRESSED );
			clear_button_buffer( PC_UP_STRONG_PRESSED );
			joy_pad_idle = true;
		    up_down = true;
		    special_pressed = false;
		    attack_pressed = false;
		    up_strong_pressed = true;
		}
		if attack == AT_USTRONG{
			DACUStimer = 0;
			can_DACUS = false;
		}
    }
    
    if(wait_time > 0 or ai_target.invince_time > 10){
		do_not_attack = true;
	}
    
	//----------------------
	
    
    // if ai_recovering{
    // 	can_attack = false;
    // }
	
	if (attack == AT_NSPECIAL and ai_target_offstage and soul_points >= 50 and window > 0){
		special_down = true;
	}
	
	if can_special and !targetbusy and !wait_time > 0{
		
		//USpecial Boosted
		if (ai_target.y + 100 <= y) and !ai_target.y + 400 >= y and can_boost and xdist < 50 and facing and !offstage and attack != AT_USPECIAL_2{
			clear_button_buffer(PC_ATTACK_PRESSED);
			clear_button_buffer(PC_JUMP_PRESSED);
			joy_pad_idle = true;
			up_down = true;
			left_down = false;
			right_down = false;
			down_down = false;
		    special_pressed = true;
		    special_down = true;
		    attack_pressed = false;
		    to_boost = 10;
		}
		
		//DSpecial
		if(ai_target.state == PS_ROLL_BACKWARD or ai_target.state == PS_ROLL_FORWARD or ai_target.state == PS_TECH_GROUND or ai_target.state == PS_TECH_BACKWARD or ai_target.state == PS_TECH_FORWARD) and ai_target.state_timer <= 5{
			predictlocSimple(10);
			if (xtrag < x + 50 and xtrag > x - 50) and (y - 10 < ytrag and ytrag < y + char_height + 10){
				set_attack(AT_DSPECIAL);
			}
			resetPredict();
		}
		
		//Fspecial
		if !camping and xdist > 300 and !ai_target_offstage and !attacking and !do_not_attack{
			if x > ai_target.x{
				Fspecial(1);
			}else{
				Fspecial(-1);
			}
		}
	}
	
	if (attack == AT_USPECIAL and to_boost and window == 1){	
		joy_pad_idle = true;
	    special_down = true;
	    if(to_boost > 0){
			to_boost = to_boost - 1;
		}
	}
	
	if(ai_recovering){
		if(y + char_height >= stagey){
			if !(can_boost and vsp < -1){
				do_not_attack = true;
			}
		}
	}
	
	
    //Attacks
    if (can_attack or state == PS_DASH or state == PS_DASH_STOP or state == PS_DOUBLE_JUMP) and !targetbusy and !to_boost and !do_not_attack{
    	
    	
        
        if !free{
    		
    		
            strongPercent = (2 - ai_target.knockback_adj) * 70 < targetdamage;
            //Strongs
            if can_strong and ((ai_target.state_cat = SC_HITSTUN and strongPercent) or ai_target_offstage or ai_target.state == PS_PRATLAND){
            	
            	//Predicts the location of ai target by 12 frames
            	//predictlocComplex(12);
            	hitboxloc("strongs");
        		//UStrong
                if chosenAttack == AT_USTRONG{
                    joy_pad_idle = true;
                    up_down = false;
                    down_down = false;
				    left_down = false;
				    right_down = false;
				    special_pressed = false;
				    attack_pressed = false;
				    up_strong_pressed = true;
        			
                }
        		
            	//FStrong
                if (chosenAttack == AT_FSTRONG){
                    joy_pad_idle = true;
				    up_down = false;
                    down_down = false;
				    left_down = false;
				    right_down = false;
				    special_pressed = false;
				    attack_pressed = false;
				    if x > ai_target.x{
				        left_strong_pressed = true;
				    } else {
				        right_strong_pressed = true;
				    }
        	        
                }
    
    
                //DStrong
                if chosenAttack == AT_DSTRONG{
                    joy_pad_idle = true;
				    up_down = false;
                    down_down = false;
				    left_down = false;
				    right_down = false;
				    special_pressed = false;
				    attack_pressed = false;
				    down_strong_pressed = true;
        			
                }
    			
        	
            }
            
            //Tilts
            
            //Predict location of ai target by 1 frame
            //predictlocComplex(3);
            hitboxloc("tilts"); //Project all attacks and returns which is in range and it is based on a set of conditions or random otherwise
            
            //Dattack
            if chosenAttack == AT_DATTACK and attack != AT_NSPECIAL{
                clear_button_buffer( PC_ATTACK_PRESSED );
    			if ai_target.x > x{
    				right_hard_pressed = true;
    			} 
    			else {
    				left_hard_pressed = true;
    			}
    	        joy_pad_idle = true;
    	        left_down = false;
    	        right_down = false;
    	        up_down = false;
    	        down_down = false;
    	        special_pressed = false;
    	        attack_pressed = true;
    	        rangedtimer = 300;
    			
            }
            
            //Jab
            if chosenAttack == AT_JAB{
                clear_button_buffer( PC_ATTACK_PRESSED );
    	        joy_pad_idle = true;
    	        left_down = false;
    	        right_down = false;
    	        up_down = false;
    	        down_down = false;
    	        special_pressed = false;
    	        attack_pressed = true;
    			rangedtimer = 300;
    			
            }
            
            //FTilt
            if chosenAttack == AT_FTILT{
                clear_button_buffer( PC_ATTACK_PRESSED );
    	        joy_pad_idle = true;
    	        if x > ai_target.x{
    	            left_down = true;
    	            right_down = false;
    	        } else {
    	            left_down = false;
    	            right_down = true;
    	        }
    	        up_down = false;
    	        down_down = false;
    	        special_pressed = false;
    	        attack_pressed = true;
    	        rangedtimer = 300;
    	        
            }


            //DTilt
            if chosenAttack == AT_DTILT{
                clear_button_buffer( PC_ATTACK_PRESSED );
    	        joy_pad_idle = true;
    	        left_down = false;
    	        right_down = false;
    	        up_down = false;
    	        down_down = true;
    	        special_pressed = false;
    	        attack_pressed = true;
    			rangedtimer = 300;
    			
            }
            
            
            //Utilt
            if chosenAttack == AT_UTILT{
                clear_button_buffer( PC_ATTACK_PRESSED );
    	        joy_pad_idle = true;
    	        left_down = false;
    	        right_down = false;
    	        up_down = true;
    	        down_down = false;
    	        special_pressed = false;
    	        attack_pressed = true;
    			rangedtimer = 300;
    			
            }
            
            
        //Aerials    
        }else{
        

            //Predict location of target ai by 3 frames 
            //predictlocComplex(9);
            hitboxloc("aerials");
            if chosenAttack == AT_DAIR{
                clear_button_buffer( PC_ATTACK_PRESSED );
    	        joy_pad_idle = true;
    	        left_down = false;
    	        right_down = false;
    	        up_down = false;
    	        down_down = true;
    	        special_pressed = false;
    	        attack_pressed = true;
            }
            
            
            if chosenAttack == AT_NAIR{
                clear_button_buffer( PC_ATTACK_PRESSED );
    	        joy_pad_idle = true;
    	        left_down = false;
    	        right_down = false;
    	        up_down = false;
    	        down_down = false;
    	        special_pressed = false;
    	        attack_pressed = true;
            }
            
            if chosenAttack == AT_UAIR{
                clear_button_buffer( PC_ATTACK_PRESSED );
                joy_pad_idle = true;
                left_down = false;
                right_down = false;
                up_down = true;
                down_down = false;
                special_pressed = false;
                attack_pressed = true;
            }
            
            if chosenAttack == AT_FAIR{
                clear_button_buffer( PC_ATTACK_PRESSED );
    	        joy_pad_idle = true;
    	        if ai_target.x < x{
    	            left_down = true;
    	            right_down = false;
    	        } else {
    	            left_down = false;
    	            right_down = true;
    	        }
    	        up_down = false;
    	        down_down = false;
    	        special_pressed = false;
    	        attack_pressed = true;
            }
            
            if chosenAttack == AT_BAIR{
                clear_button_buffer( PC_ATTACK_PRESSED );
    	        joy_pad_idle = true;
    	        if ai_target.x < x{
    	            left_down = true;
    	            right_down = false;
    	        } else {
    	            left_down = false;
    	            right_down = true;
    	        }
    	        up_down = false;
    	        down_down = false;
    	        special_pressed = false;
    	        attack_pressed = true;
            }
        }
    }
    
    if (xdist > 300 and ai_target_offstage){
    	jump_down = false;
    }
    
    if (ai_recovering){
	
    	if x < 130 or x > room_width - 130 {
    		if(move_cooldown[AT_FSPECIAL] == 0){
	    		if x > room_width/2{
					Fspecial(1);
					
				}else {
					Fspecial(-1);
					
				}
				
	    	}
    	}
        
        if ((x < stagex and x > stagex - 100) or (x > room_width - stagex and x < room_width - stagex + 100)) and !ai_target_offstage{
        	if y - char_height - 10 > stagey{
        		if(djumps == max_djumps and has_walljump and stall){
	        		
	        		Nspecial(0);
	        		stall = 0;
	        	}
        	}
        	
        }
        
        if !has_walljump{
        	if attack == AT_USPECIAL and window == 1 and can_boost{
        		special_down = true;
        	}
        }else{
        	
        }
        if attack == AT_FSPECIAL and window == 1 and window_timer <= 1{
        	facestage();
        }
    }else{
    	stall = 1;
    }
    
	if(state == PS_PRATFALL){
		facestage();
	}

    
    // if(pogo = 10){
    // 	faceopponent();
    // }
    
    if !has_hit_player{
    	if  window_timer = 1 and window = get_hitbox_value(attack, 1, HG_WINDOW){
    		num_whiffs++;
    	}
    }
    // if(inactive > 20){
    // 	num_whiffs = 0;
    // }
    
}

if (get_training_cpu_action() == CPU_EVADE){
	chasing = true;
	
}
#define Nspecial
/// Nspecial(side, ...)

var side = argument[0];

joy_pad_idle = true;
up_pressed = false;
left_pressed = false;
right_pressed = false;
down_pressed = false;
left_down = false;
right_down = false;
up_down = false;
down_down = false;
special_pressed = true;
attack_pressed = false;

#define Fspecial
/// Fspecial(side, ...)

var side = argument[0];

if side == 1 {
	left_down = true;
	right_down = false;
}else if side == -1{
	left_down = false;
	right_down = true;
}

up_down = false;
down_down = false;
up_pressed = false;
down_pressed = false;
special_pressed = true;
attack_pressed = false;


#define predictlocTarget

fprediction = argument[0];

var plat = 0;
var stage = 0;

if stopped_at_target > 0{
	if fprediction >= stopped_at_target{
		return;
	}
}

var cur_p = current_prediction_target;

if cur_p <= fprediction{
	for(var i = 0; i < fprediction - cur_p; i++){
		
		stage = position_meeting(xtrag, ytrag, asset_get("par_block"));
		plat = position_meeting(xtrag, ytrag, asset_get("jumpthrough_32_obj"));
		if plat and new_target_vsp > 0{
			stopped_at_target = current_prediction_target;
			break;
		}
		if stage {
			stopped_at_target = current_prediction_target;
			break;
		}
		
		current_prediction_target++;
		xtrag = xtrag + ai_target.hsp;
		
		new_target_vsp = new_target_vsp + ai_target.grav;
		
		
		if new_target_vsp > ai_target.max_fall{
			new_target_vsp = ai_target.max_fall;
		}
		if ai_target.fast_falling{
			if new_target_vsp > ai_target.fast_fall{
				new_target_vsp = ai_target.fast_fall;
			}
		}
		
		
		ytrag = ytrag + new_target_vsp;
		
		ytrag = ytrag;
		xtrag = xtrag;
		
	}
}else{
	for(var i = 0; i < cur_p - fprediction; i++){
		
		current_prediction_target--;
		xtrag = xtrag - ai_target.hsp;
		
		new_target_vsp = new_target_vsp - ai_target.grav;
		
		
		if new_target_vsp > ai_target.max_fall{
			new_target_vsp = ai_target.max_fall;
		}
		if ai_target.fast_falling{
			if new_target_vsp > ai_target.fast_fall{
				new_target_vsp = ai_target.fast_fall;
			}
		}
		
		
		ytrag = ytrag - new_target_vsp;
		new_target_vsp = new_target_vsp;
		ytrag = ytrag;
		xtrag = xtrag;
		
	}
}

if !(ai_target.x > room_width - stagex || ai_target.x < stagex){
	if ytrag >= stagey{
		ytrag = stagey;
	}
	if !ai_target.free{
		ytrag = ai_target.y
	}
}

#define predictloc

fprediction = argument[0];

var plat = 0;
var stage = 0;

if stopped_at > 0{
	if fprediction >= stopped_at{
		return;
	}
}

var cur_p = current_prediction;

if cur_p <= fprediction{
	for(var i = 0; i < fprediction - cur_p; i++){
		
		stage = position_meeting(new_x, new_y, asset_get("par_block"));
		plat = position_meeting(new_x, new_y, asset_get("jumpthrough_32_obj"));
		if plat and new_vsp > 0{
			stopped_at_target = current_prediction;
			break;
		}
		if stage {
			stopped_at_target = current_prediction;
			break;
		}
		
		current_prediction++;
		new_x = new_x + hsp;
		
		new_vsp = new_vsp + grav;
		
		
		if new_vsp > max_fall{
			new_vsp = max_fall;
		}
		if fast_falling{
			if new_vsp > fast_fall{
				new_vsp = fast_fall;
			}
		}
		
		
		new_y = new_y + new_vsp;
		
		new_y = new_y;
		new_x = new_x;
		
	}
}else{
	for(var i = 0; i < cur_p - fprediction; i++){
		
		current_prediction--;
		new_x = new_x - ai_target.hsp;
		
		new_target_vsp = new_target_vsp - ai_target.grav;
		
		
		if new_target_vsp > ai_target.max_fall{
			new_target_vsp = ai_target.max_fall;
		}
		if ai_target.fast_falling{
			if new_target_vsp > ai_target.fast_fall{
				new_target_vsp = ai_target.fast_fall;
			}
		}
		
		
		new_y = new_y - new_target_vsp;
		new_target_vsp = new_target_vsp;
		new_y = new_y;
		new_x = new_x;
		
	}
}

if !(x > room_width - stagex || x < stagex){
	if new_y >= stagey{
		new_y = stagey;
	}
	if !free{
		new_y = y;
	}
}

#define predictlocComplex

fprediction = argument[0];


xtrag = ai_target.x;
ytrag = ai_target.y;

new_x = x
new_y = y;

var new_target_vsp = ai_target.vsp;
var new_vsp = vsp;
var plat = 0;

//Ai target
for(i = 0; i < fprediction; i++){
	
	
	xtrag = xtrag + ai_target.hsp;
	
	new_target_vsp = new_target_vsp + ai_target.grav;
	
	if new_target_vsp > ai_target.max_fall{
		new_target_vsp = ai_target.max_fall;
	}
	if ai_target.fast_falling{
		if new_target_vsp > ai_target.fast_fall{
			new_target_vsp = ai_target.fast_fall;
		}
	}
	
	ytrag = ytrag + new_target_vsp;
	
	plat = position_meeting(xtrag, ytrag, asset_get("jumpthrough_32_obj"));
	if plat and new_target_vsp > 0{
		break;
	}
}

//Player
for(i = 0; i < fprediction; i++){
	
	new_x = new_x + hsp;
	
	new_vsp = new_vsp + grav;
	if new_vsp > max_fall{
		new_vsp = max_fall;
	}
	if fast_falling{
		if new_vsp > fast_fall{
			new_vsp = fast_fall;
		}
	}
	new_y = new_y + new_vsp;
	
	plat = instance_position(new_x, new_y, asset_get("jumpthrough_32_obj"));
	if plat and new_vsp > 0{
		break;
	}
}

if !(ai_target.x > room_width - stagex || ai_target.x < stagex){
	if ytrag >= stagey{
		ytrag = stagey;
	}
	if !ai_target.free{
		ytrag = ai_target.y
	}
}

if !(x > room_width - stagex || x < stagex){
	if new_y >= stagey{
		new_y = stagey;
	}
	if !free{
		new_y = y;
	}
}

// var dist = point_distance(xtrag, ytrag, x, y);

// if (dist < 120){
// 	predict = true;
// 	return true;
// }else{
// 	predict = false;
// 	return false;
// }



#define predictlocSimple

fprediction = argument[0];

xtrag = ai_target.x + (ai_target.hsp * fprediction);
ytrag = ai_target.y + (ai_target.vsp * fprediction);

new_x = x + (hsp * fprediction);
new_y = y + (vsp * fprediction);

if !(ai_target.x > room_width - stagex || ai_target.x < stagex){
	if ytrag >= stagey{
		ytrag = stagey;
	}
	if !ai_target.free{
		ytrag = ai_target.y
	}
}

if !(x > room_width - stagex || x < stagex){
	if new_y >= stagey{
		new_y = stagey;
	}
	if !free{
		new_y = y;
	}
}

#define resetPredict


current_prediction = 0;
current_prediction_target = 0;
stopped_at = -1;
xtrag = ai_target.x;
ytrag = ai_target.y;
new_x = x;
new_y = y;
new_target_vsp = ai_target.vsp;
new_vsp = vsp;


#define checkHurtboxWidth

var circleRad = 1;
var widthChecker = collision_circle( ai_target.x, ai_target.y - ai_target.char_height/2, circleRad, asset_get("pHurtBox"), true, true );
var i = 0;
//Iterate a circle of radius 1 starting at the center of ai target, if it doesn't collide with the target anymore it stops
for (i = 0; i < 60 and widthChecker.player == ai_target.player; i++){
	
	widthChecker = collision_circle( ai_target.x+circleRad*i, ai_target.y - ai_target.char_height/2, circleRad, asset_get("pHurtBox"), true, true );
	if widthChecker == noone{
		break;
	}
}

hurtboxWidth = i*circleRad;

#define hitboxloc

switch(argument[0]){
	case "tilts":
		var attacke = [AT_JAB, AT_DTILT, AT_FTILT, AT_UTILT, AT_DATTACK];

		break;
		
	case "aerials":
		var attacke = [AT_NAIR, AT_DAIR, AT_FAIR, AT_UAIR, AT_BAIR];
		break;
		
	case "strongs":
		var attacke = [AT_DSTRONG, AT_USTRONG, AT_FSTRONG];
		break;
}

var len = array_length_1d(attacke);

var listAtk = [];
var j = 0;
var distadd_x = 0;
var distadd_y = 0;

//Distance from the predicted location
xdist = abs(xtrag - x);
ydist = abs(y - ytrag);

//Project the attack
for(var i = 0; i < len; i++){
	
	//Special condition of range of the attack (if the character moves for example)
	if(attacke[i] == AT_DATTACK){
		distadd_x = 150;
		distadd_y = 0;
	}else{
		distadd_x = 0;
		distadd_y = 0;
	}
	
	//Get information of the first hitbox of the attack in the array
	
	//Special cases
	switch(attacke[i]){
		default:
			xpos = (get_hitbox_value( attacke[i], 1, HG_HITBOX_X ) + distadd_x)* spr_dir;
			ypos = get_hitbox_value( attacke[i], 1, HG_HITBOX_Y ) + distadd_y;
			atkwidth = get_hitbox_value( attacke[i], 1, HG_WIDTH ) div 2;
			atkheight = get_hitbox_value( attacke[i], 1, HG_HEIGHT ) div 2;
			//Calculate when the hitbox will come out
			var frame = get_window_value(attacke[i], 1, AG_WINDOW_LENGTH);
			break;
			
		case AT_USTRONG:
			xpos = (get_hitbox_value( attacke[i], 2, HG_HITBOX_X ) + distadd_x)* spr_dir;
			ypos = get_hitbox_value( attacke[i], 2, HG_HITBOX_Y ) + distadd_y;
			atkwidth = get_hitbox_value( attacke[i], 2, HG_WIDTH ) div 2;
			atkheight = get_hitbox_value( attacke[i], 2, HG_HEIGHT ) div 2;
			var frame = get_window_value(attacke[i], 1, AG_WINDOW_LENGTH) + get_window_value(attacke[i], 2, AG_WINDOW_LENGTH) + get_window_value(attacke[i], 3, AG_WINDOW_LENGTH);
			break;
			
		case AT_FSTRONG:
			xpos = (get_hitbox_value( attacke[i], 1, HG_HITBOX_X ) + distadd_x)* spr_dir;
			ypos = get_hitbox_value( attacke[i], 1, HG_HITBOX_Y ) + distadd_y;
			atkwidth = get_hitbox_value( attacke[i], 1, HG_WIDTH ) div 2;
			atkheight = get_hitbox_value( attacke[i], 1, HG_HEIGHT ) div 2;
			var frame = get_window_value(attacke[i], 1, AG_WINDOW_LENGTH) + get_window_value(attacke[i], 2, AG_WINDOW_LENGTH);
		case AT_DSTRONG:
			xpos = (get_hitbox_value( attacke[i], 1, HG_HITBOX_X ) + distadd_x)* spr_dir;
			ypos = get_hitbox_value( attacke[i], 1, HG_HITBOX_Y ) + distadd_y;
			atkwidth = get_hitbox_value( attacke[i], 1, HG_WIDTH ) div 2;
			atkheight = get_hitbox_value( attacke[i], 1, HG_HEIGHT ) div 2;
			var frame = get_window_value(attacke[i], 1, AG_WINDOW_LENGTH) + get_window_value(attacke[i], 2, AG_WINDOW_LENGTH);
	}
	
	predictloc(frame);
	predictlocTarget(frame);
	
	//Long condition to set the boundaries of the attack (this always calcules the boundaries in rectangles for performance, if the hitbox is an ellipse it might not hit)
	//Test if the predicted location falls inside the boundaries/range
	if (xtrag <= new_x + xpos + atkwidth or xtrag - hurtboxWidth <= new_x + xpos + atkwidth) and (xtrag >= new_x + xpos - atkwidth or xtrag + hurtboxWidth >= new_x + xpos - atkwidth){
		if (ypos + atkheight + new_y <= ytrag or ypos - atkheight + new_y <= ytrag) and (ypos + atkheight + new_y >= ytrag - ai_target.char_height or ypos - atkheight + new_y >= ytrag - ai_target.char_height){
			
			//Add the attack in range to a new array
			listAtk[j] = attacke[i];
			j++;
		}
	}
}

var reroll = false;
len = array_length_1d(listAtk);
iterations = 0;

//Chooses from the new array based on a set of conditions randomly, test are done to reroll for a new attack if a condition is not met
if len != 0{
	FTILTprob = random_func(3,1,false);
	while(!reroll and iterations < 10){
		
		iterations++;
		
		chosenAttack = listAtk[random_func(2, j, true)];
		
		//If there is only one attack do not reroll
		
		if(chosenAttack == AT_DATTACK){
			if attack == AT_DATTACK{
				if random_func(6, 100, true) < 90{
					chosenAttack = noone;
					reroll = false;
					break;
				}
			}
		}
		
		if(len == 1){
			reroll = false;
			break;
		}
		
		if(chosenAttack == AT_JAB){
			if cancel_jab {
				reroll = true;
			}
		}
		
		
		if(chosenAttack == AT_FTILT){
			if(targetdamage > 80){
				if(!FTILTprob < .2){
					reroll = true;
				}
			}else{
				reroll = true;
			}
			
		}
		
		
	
		//Any other attack not testing do not reroll
		if !(chosenAttack == AT_JAB or chosenAttack == AT_FTILT){
			reroll = false;
			break;
		}
		
	}
	
}else{
	chosenAttack = noone;
}

#define tiltDance

if !free{
	if spr_dir == 1{
		left_down = true;
	}else{
		right_down = true;
	}
	
}


#define faceopponent
if x > ai_target.x{
    left_down = true;
    right_down = false;
} else {
    left_down = false;
    right_down = true;
}

#define facestage
if x > room_width / 2{
    left_down = true;
    right_down = false;
} else{
    left_down = false;
    right_down = true;
}