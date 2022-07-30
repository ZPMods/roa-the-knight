set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));


set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, STARTUP_FRAMES);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, CHARGE_FRAMES);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, CHARGE_FRAME_START);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 35);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, ACTIVE_FRAMES);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, ACTIVE_FRAME_START);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, sound_get("knight_strong_down"));

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, RECOVERY_FRAMES);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, RECOVERY_FRAME_START);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 7);

set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 130);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 110);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSTRONG, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSTRONG, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSTRONG, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSTRONG, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_GROUP, -1);


set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_DSTRONG, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_X, 3);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 7, HG_WIDTH, 150);
set_hitbox_value(AT_DSTRONG, 7, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 7, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 7, HG_DAMAGE, 7);
set_hitbox_value(AT_DSTRONG, 7, HG_ANGLE, 361);
set_hitbox_value(AT_DSTRONG, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 7, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 7, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DSTRONG, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DSTRONG, 7, HG_ANGLE_FLIPPER, 0);

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#macro STARTUP_FRAMES 4
#define _get_startup_frames()
    return STARTUP_FRAMES
#macro STARTUP_FRAME_START 0
#define _get_startup_frame_start()
    return STARTUP_FRAME_START

#macro CHARGE_FRAMES 1
#define _get_charge_frames()
    return CHARGE_FRAMES
#macro CHARGE_FRAME_START 3
#define _get_charge_frame_start()
    return CHARGE_FRAME_START

#macro ACTIVE_FRAMES 9
#define _get_active_frames()
    return ACTIVE_FRAMES
#macro ACTIVE_FRAME_START 4
#define _get_active_frame_start()
    return ACTIVE_FRAME_START

#macro RECOVERY_FRAMES 2
#define _get_recovery_frames()
    return RECOVERY_FRAMES
#macro RECOVERY_FRAME_START 13
#define _get_recovery_frame_start()
    return RECOVERY_FRAME_START
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion