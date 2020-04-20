//ai_init - setting the basic AI attack behaviors
//The Knight


far_side_attacks[0] = AT_NSPECIAL;
far_side_attacks[1] = AT_FSPECIAL;

mid_side_attacks[0] = AT_NSPECIAL;

close_up_attacks[0] = AT_UTILT;
close_up_attacks[1] = AT_UAIR;
close_up_attacks[2] = AT_USTRONG;


close_down_attacks[0] = AT_DAIR;
close_down_attacks[1] = AT_DTILT;

mid_down_attacks[0] = AT_DSPECIAL;

far_down_attacks[0] = AT_DSPECIAL;

close_side_attacks[0] = AT_FAIR;
close_side_attacks[1] = AT_DSTRONG;
close_side_attacks[2] = AT_FSTRONG;


neutral_attacks[0] = AT_JAB;
neutral_attacks[1] = AT_NAIR;



temp_level = 9;
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
fprediction = 8;
targetbusy = false;
stagex = get_stage_data(SD_X_POS);
stagey = get_stage_data(SD_Y_POS);


iterations = 0;
cancel_jab = false;

DACUStimer = 0;
can_DACUS = false;