set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 7);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));

//Bench rise
set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, BENCH_RISE_FRAMES);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("knight_bench_rise"));

//Bench open
set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("knight_bench_open"));

//Bench lower
set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, BENCH_LOWER_FRAMES);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, BENCH_LOWER_FRAME_START);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("knight_bench_lower"));

//Knight sitting
set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 200);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, SITTING_FRAMES);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, SITTING_FRAME_START);

//Knight falling asleep
set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 36);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, FALL_ASLEEP_FRAMES);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, FALL_ASLEEP_FRAME_START);

//Knight Asleep
set_window_value(AT_TAUNT, 6, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 100);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, SLEEPING_FRAMES);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, SLEEPING_FRAME_START);

//Knight getting off the bench
set_window_value(AT_TAUNT, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 7, AG_WINDOW_LENGTH, 50);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAMES, END_FRAMES);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAME_START, END_FRAME_START);
set_window_value(AT_TAUNT, 7, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_TAUNT, 7, AG_WINDOW_SFX, sound_get("knight_bench_open"));
set_window_value(AT_TAUNT, 7, AG_WINDOW_SFX_FRAME, 20);

set_num_hitboxes(AT_TAUNT, 3);

set_hitbox_value(AT_TAUNT, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 0);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, -1);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -56);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 115);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 100);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT, 1, HG_DRIFT_MULTIPLIER, 0);

set_hitbox_value(AT_TAUNT, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 0);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, -1);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -73);
set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 91);
set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 66);
set_hitbox_value(AT_TAUNT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE, 70);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_TAUNT, 2, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_TAUNT, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_TAUNT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT, 2, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_TAUNT, 2, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_TAUNT, 2, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_TAUNT, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 3, HG_WINDOW, 0);
set_hitbox_value(AT_TAUNT, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_TAUNT, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_X, -1);
set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_Y, -53);
set_hitbox_value(AT_TAUNT, 3, HG_WIDTH, 90);
set_hitbox_value(AT_TAUNT, 3, HG_HEIGHT, 111);
set_hitbox_value(AT_TAUNT, 3, HG_SHAPE, 1);
set_hitbox_value(AT_TAUNT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_TAUNT, 3, HG_ANGLE, 240);
set_hitbox_value(AT_TAUNT, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_TAUNT, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_TAUNT, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_TAUNT, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_TAUNT, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_TAUNT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_TAUNT, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_GROUP, -1);

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#macro BENCH_RISE_FRAMES 2
#define _get_bench_rise_frames()
    return BENCH_RISE_FRAMES
#macro BENCH_RISE_FRAME_START 0
#define _get_bench_rise_frame_start()
    return BENCH_RISE_FRAME_START

#macro BENCH_OPEN_FRAMES 2
#define _get_bench_open_frames()
    return BENCH_OPEN_FRAMES
#macro BENCH_OPEN_FRAME_START 2
#define _get_bench_open_frame_start()
    return BENCH_OPEN_FRAME_START

#macro BENCH_LOWER_FRAMES 6
#define _get_bench_lower_frames()
    return BENCH_LOWER_FRAMES
#macro BENCH_LOWER_FRAME_START 4
#define _get_bench_lower_frame_start()
    return BENCH_LOWER_FRAME_START

#macro SITTING_FRAMES 8
#define _get_sitting_frames()
    return SITTING_FRAMES
#macro SITTING_FRAME_START 10
#define _get_sitting_frame_start()
    return SITTING_FRAME_START

#macro FALL_ASLEEP_FRAMES 3
#define _get_fall_asleep_frames()
    return FALL_ASLEEP_FRAMES
#macro FALL_ASLEEP_FRAME_START 18
#define _get_fall_asleep_frame_start()
    return FALL_ASLEEP_FRAME_START

#macro SLEEPING_FRAMES 2
#define _get_sleeping_frames()
    return SLEEPING_FRAMES
#macro SLEEPING_FRAME_START 21
#define _get_sleeping_frame_start()
    return SLEEPING_FRAME_START

#macro END_FRAMES 12
#define _get_end_frames()
    return END_FRAMES
#macro END_FRAME_START 23
#define _get_end_frame_start()
    return END_FRAME_START
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion