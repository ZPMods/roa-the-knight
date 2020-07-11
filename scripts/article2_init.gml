//article2_init
sprite_index = sprite_get("bench");
image_index = 0;

//Properties Variables
hsp = 0;
vsp = 0;
free = false;
can_be_grounded = true;
ignores_walls = false;
spr_dir = 1;
uses_shader = true;

//Custom Variables
phase = 1;
phase_timer = 0;

anim_frame = 0;
frame_timer = 0;
loop = false;

end_anim = false;
end_stay = 30;

num_sitting[0] = player_id;
num_sitting[1] = noone;
num_sitting[2] = noone;
pos_left = x - 24;
pos_right = x + 24;

timer_ease = -2;
update_mov = false;
all_hop_off = false;