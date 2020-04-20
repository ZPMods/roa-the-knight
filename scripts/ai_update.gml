//ai_init - setting the basic AI attack behaviors
if (get_training_cpu_action() == CPU_FIGHT){
    
    
    //This code is a Frankenstein of Otto's ai code and Ronalds ai code with additions of mine (Danilo-PJ#3122)
    
    
    //Check the width of the hurtbox
    if (ai_target.player != old_ai_target or target_init == true or hurtboxWidth = 0){
    	checkHurtboxWidth();
    	target_init = false;
    }
    
    //Variables updates and resets
    old_ai_target = ai_target.player;
    xdist = abs(ai_target.x - x);
    ydist = abs(y - ai_target.y);
    targetdamage = get_player_damage( ai_target.player );
    cancel_jab = false;
    targetbusy = false;
    facing = false;
    can_boost = false;
    var offstage = (x + 10 > room_width - stagex || x - 10 < stagex);
    
    
    if soul_points >= 25{
        can_boost = true;
    }
    
    if soul_points == 100 and (AT_NSPECIAL or AT_FSPECIAL or AT_DSPECIAL){
    	special_down = true;
    }
    
    if (ai_target.state == PS_DEAD or ai_target.state == PS_RESPAWN or ai_target.invince_time > 10){
        targetbusy = true;
        rangedtimer = 100;
    }
    
    if (ai_recovering){
        if (attack == AT_USPECIAL && soul_points >= SP_uspecial)
        {
            charged_time = required_charge_time;
        }
    }
    
    
    if (state_cat != SC_HITSTUN and state != PS_SPAWN){
        rangedtimer -= 1;
    }
    
    
    if (ai_target.x < x && spr_dir = -1) || (ai_target.x > x && spr_dir = 1){
        facing = true;
    }
    
    //Chase
    if (((0 > rangedtimer) or (!ai_recovering and inactive > 20)) and (state_cat == SC_GROUND_NEUTRAL or state_cat == SC_AIR_NEUTRAL or state_cat == SC_HITSTUN) and xdist > 100){
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
	    
	}
	
	
	//Camping
	if (!ai_recovering and rangedtimer > 0 and ai_target.state_cat != SC_HITSTUN) or targetbusy{
		if !free and xdist > 200 and get_player_damage(player) > 90 {
			jump_pressed = true
		}
		if free and get_player_damage(player) > 90 {
			    if x > ai_target.x{
					left_down = false;
					right_down = true;
				} 	else {
					left_down = true;
					right_down = false;
				}
		}
		if attack == AT_NSPECIAL and window = 1 and window_timer = 0{
			faceopponent();
		}
		
		if can_special and xdist > 350 {
			
		    joy_pad_idle = true;
			up_down = false;
			left_down = false;
			right_down = false;
		    special_pressed = true;
		    attack_pressed = false;
		}
		
	}
	
	if (state_cat == SC_GROUND_NEUTRAL or state_cat == SC_AIR_NEUTRAL or (state == PS_DASH_START or state == PS_DASH or state == PS_DASH_TURN) and state != PS_SPAWN){
        rangedtimer -= 1;
        inactive += 1;
    } else{
        inactive = 0;
    }
    
    
    //Fastfall
 //   if free and ai_target.y - 120 > y {
	// 	down_hard_pressed = true;
	// }
	
	 
    
   	//----------------------------------------------------
	//Combos logic
	//----------------------------------------------------
	
	
	//Shorthop combos
    if can_jump{
        if ai_target.state_cat == SC_HITSTUN{
            if ai_target.y < y-60 and state_cat == SC_GROUND_NEUTRAL{
                jump_pressed = true;
            }
            
        }
        
    }
	
	if(free and has_hit and state == PS_ATTACK_AIR and (y > stagey - char_height and y < stagey) and !offstage){
		down_hard_pressed = true;
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
    if(attack == AT_DTILT and has_hit and DACUSpercent < targetdamage){
    	can_DACUS = true;
    }
    
    if(can_DACUS){
    	faceopponent();
    	DACUStimer++;
    	if can_attack{
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
   
    	        rangedtimer = 300;
    		
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
    
    
    
    
	//----------------------
	
    
    if ai_recovering and !(stagey < y and has_walljump and (has_airdodge or max_djumps == djumps)){
    	can_attack = false;
    }
	
	
    //Attacks
    if can_attack and !targetbusy{
        
        if !free{
        	// Do/While loop in a permanent false state so we can break; at any point
            do{
                
                //Strongs
                if can_strong and (ai_target.state_cat = SC_HITSTUN or (ai_target.x > room_width - stagex || ai_target.x < stagex)){
                	
                	//Predicts the location of ai target by 12 frames
                	
                	
                	predictloc(12);
                	hitboxloc("strongs");
            		//UStrong
	                if chosenAttack == AT_USTRONG{
	                    joy_pad_idle = true;
					    left_down = false;
					    right_down = false;
					    special_pressed = false;
					    attack_pressed = false;
					    up_strong_pressed = true;
	        			break;
	                }
            		
                	//FStrong
	                if (chosenAttack == AT_FSTRONG and facing){
	                    joy_pad_idle = true;
					    left_down = false;
					    right_down = false;
					    special_pressed = false;
					    attack_pressed = false;
					    if x > ai_target.x{
					        left_strong_pressed = true;
					    } else {
					        right_strong_pressed = true;
					    }
	        	        break;
	                }
	    
	    
	                //DStrong
	                if chosenAttack == AT_DSTRONG{
	                    joy_pad_idle = true;
					    left_down = false;
					    right_down = false;
					    special_pressed = false;
					    attack_pressed = false;
					    down_strong_pressed = true;
	        			break;
	                }
        			
            	
                }
                
                //Tilts
                
                //Predict location of ai target by 1 frame
                predictloc(1);
                hitboxloc("tilts"); //Project all attacks and returns which is in range and it is based on a set of conditions or random otherwise
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
        			break;
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
        	        break;
                }
    
    
                //DTilt
                if chosenAttack == AT_DTILT and facing{
                    clear_button_buffer( PC_ATTACK_PRESSED );
        	        joy_pad_idle = true;
        	        left_down = false;
        	        right_down = false;
        	        up_down = false;
        	        down_down = true;
        	        special_pressed = false;
        	        attack_pressed = true;
        			rangedtimer = 300;
        			break;
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
        			break;
                }
                
                //Dattack
                if chosenAttack == AT_DATTACK and attack != AT_DATTACK and attack != AT_NSPECIAL and random_func(1, 2, true){
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
        			break;
                }
                
            }while(false);
        
        //Aerials    
        }else{
        
            do{
                
                //Predict location of target ai by 3 frames 
                predictloc(3);
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
                
            }while(false);
        }
    }
    
	

    
    if(pogo = 10){
    	faceopponent();
    }
    
    if !has_hit_player{
    	if  window_timer = 1 and window = get_hitbox_value(attack, 1, HG_WINDOW){
    		num_whiffs++;
    	}
    }
    // if(inactive > 20){
    // 	num_whiffs = 0;
    // }
}



#define predictloc

fprediction = argument[0];

xtrag = ai_target.x + (ai_target.hsp * fprediction);
ytrag = ai_target.y + (ai_target.vsp * fprediction);

var dist = point_distance(xtrag, ytrag, x, y);

if (dist < 120){
	predict = true;
	return true;
}else{
	predict = false;
	return false;
}
#define checkHurtboxWidth

var circleRad = 1;
var widthChecker = collision_circle( ai_target.x, ai_target.y - ai_target.char_height/2, circleRad, asset_get("pHurtBox"), true, true );

//Iterate a circle of radius 1 starting at the center of ai target, if it doesn't collide with the target anymore it stops
for (i = 0; i < 20 and widthChecker.player == ai_target.player; i++){
	widthChecker = collision_circle( ai_target.x+circleRad*i, ai_target.y - ai_target.char_height/2, circleRad, asset_get("pHurtBox"), true, true );
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
var distadd = 0;

//Distance from the predicted location
xdist = abs(xtrag - x);
ydist = abs(y - ytrag);

//Project the attack
for(i = 0; i < len; i++){
	//Get information of the first hitbox of the attack in the array
	xpos = get_hitbox_value( attacke[i], 1, HG_HITBOX_X );
	ypos = get_hitbox_value( attacke[i], 1, HG_HITBOX_Y );
	atkwidth = get_hitbox_value( attacke[i], 1, HG_WIDTH ) div 2;
	atkheight = get_hitbox_value( attacke[i], 1, HG_HEIGHT ) div 2;
	
	//Special condition of range of the attack (if the character moves for example)
	if(attacke[i] == AT_DATTACK){
		distadd = 150;
	}else{
		distadd = 0;
	}
	
	//Long condition to set the boundaries of the attack (this always calcules the boundaries in rectangles for performance, if the hitbox is an ellipse it might not hit)
	//Test if the predicted location falls inside the boundaries/range
	if (xdist - hurtboxWidth < xpos + distadd + atkwidth and xdist - hurtboxWidth > xpos + distadd - atkwidth){
		if (ypos + atkheight + y < ytrag or ypos - atkheight + y < ytrag) and (ypos + atkheight + y > ytrag - ai_target.char_height or ypos - atkheight + y > ytrag - ai_target.char_height){
			
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
	while(!reroll and iterations < 20){
		iterations++;
		
		chosenAttack = listAtk[random_func(2, j, true)];
		
		if(chosenAttack == AT_JAB){
			if !facing or cancel_jab {
				reroll = true;
			}
		}
		
		var FTILTprob = random_func(3,1,false);
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
		
		//If there is only one attack do not reroll
		if(len == 1){
			reroll = false;
			break;
		}
	}
	
}else{
	chosenAttack = noone;
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