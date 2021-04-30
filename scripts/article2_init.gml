//article2_init
sprite_index = sprite_get("bench");
image_index = 0;
charm_wheel_spr = sprite_get("charm_wheel");
charm_selector_spr = sprite_get("charm_selector");

//Properties Variables
hsp = 0;
vsp = 0;
free = false;
can_be_grounded = true;
ignores_walls = false;
spr_dir = 1;
uses_shader = true;
gravity_speed = 0.6;

//Custom Variables
phase = 1;
phase_timer = 0;

anim_frame = 0;
frame_timer = 0;
loop = false;

end_anim = false;
end_stay = 30;

width = 94;
left_side = x - width/2;
right_side = x + width/2;

pos_left = x - 24;
pos_center = x;
pos_right = x + 24;

timer_ease = -2;
max_sit = 4;
sitting_ids = array_create(max_sit + 1, noone);
all_hop_off = false;
sitting_spots[max_sit] = 0;
n_sit = 0;
how_many_sleeping = 0;
whos_not_sleeping = noone;
sleepy_time = -1;
charm_wheel_fade_value = 0;//alpha
draw_wheel = true;
charm_selector_x = 0;
charm_selector_y = 0;
charm_selector_dir_array= array_create(8, 0);//keeps track of drawn selectors

old_vsp = vsp;
base_depth = depth;