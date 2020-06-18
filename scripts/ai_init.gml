//ai_init - setting the basic AI attack behaviors
//The Knight


far_side_attacks[0] = AT_NSPECIAL;
far_side_attacks[1] = AT_FSPECIAL;

mid_side_attacks[0] = AT_NSPECIAL;

// close_up_attacks[0] = AT_UTILT;
//close_up_attacks[0] = AT_USTRONG;


close_down_attacks[0] = AT_DAIR;



mid_down_attacks[0] = AT_DSPECIAL;

far_down_attacks[0] = AT_DSPECIAL;

close_side_attacks[0] = AT_DSTRONG;
close_side_attacks[1] = AT_FSTRONG;


//neutral_attacks[0] = AT_NSPECIAL;
// neutral_attacks[1] = AT_NAIR;


FTILTprob = random_func(3,1,false);
facing = false;
rangedtimer = 300;
inactive = 0;
xpos = 0;
ypos = 0;
atkwidth = 0;
atkheight = 0;
target_init = true;
hurtboxWidth = 0;
chosenAttack = 0;
old_ai_target = noone;
xdist = 0;
ydist = 0;
num_whiffs = 0;
predict = false;

xtrag = 0;
ytrag = 0;
new_x = 0;
new_y = 0;
current_prediction = 0;
stopped_at = 0;
stopped_at_target = 0;
new_target_vsp = 0;
new_vsp = 0;

fprediction = 8;
current_prediction = 0;
stopped_at = -1;
targetbusy = false;
stagex = get_stage_data(SD_X_POS);
stagey = get_stage_data(SD_Y_POS);
top_blastzone = get_stage_data(SD_TOP_BLASTZONE);
new_x = x;
new_y = y;
chasing = 0;
to_boost = 0;
strongPercent = 0;
stall = 0;
camping = 0;
do_not_attack = false;
attacking = false;
wait_time = 0;

iterations = 0;
cancel_jab = false;

DACUStimer = 0;
can_DACUS = false;