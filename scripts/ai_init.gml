//ai_init - setting the basic AI attack behaviors
//The Knight


far_side_attacks[0] = AT_NSPECIAL;

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
let_parry = false;

xtrag = 0;
ytrag = 0;
new_x = 0;
new_y = 0;
current_prediction = 0;
current_prediction_target = 0;
stopped_at = -1;
stopped_at_target = -1;
// new_target_vsp = 0;
// new_vsp = 0;
fprediction = 0;

prediction_array = array_create(30, 0);
prediction_array_target = array_create(30, 0);
for(var i = 0; i < array_length_1d(prediction_array); i++){
    prediction_array[@i] = [0, 0, 0, 0];
    prediction_array_target[@i] = [0, 0, 0, 0];
}
is_ai = true;
targetbusy = false;
stagex = get_stage_data(SD_X_POS);
stagey = get_stage_data(SD_Y_POS);
top_blastzone = get_stage_data(SD_TOP_BLASTZONE);
chasing = 0;
to_boost = 0;
strongPercent = 0;
stall = 0;
camping = 0;
do_not_attack = false;
attacking = false;
wait_time = 0;
wavelanding = false;
plat_asset = asset_get("jumpthrough_32_obj");
solid_asset = asset_get("par_block");

iterations = 0;
cancel_jab = false;

DACUStimer = 0;
can_DACUS = false;