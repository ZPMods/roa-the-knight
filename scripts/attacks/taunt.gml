set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 7);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));

//Bench rise
set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 2);
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
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("knight_bench_lower"));

//Knight sitting
set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 200);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 10);

//Knight falling asleep
set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 36);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 18);

//Knight Asleep
set_window_value(AT_TAUNT, 6, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 100);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 21);

//Knight getting off the bench
set_window_value(AT_TAUNT, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 7, AG_WINDOW_LENGTH, 50);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAME_START, 23);
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
