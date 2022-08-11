set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial_boosted"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial_boosted"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_boosted_hurt"));
set_attack_value(AT_FSPECIAL_2, AG_OFF_LEDGE, 1);

//Startup
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, STARTUP_FRAMES);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 8);

//Movement
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX, sound_get("knight_special_side_boosted"));
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, MOVEMENT_FRAMES);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, MOVEMENT_FRAME_START);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED, 18);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED, 0);

//Endlag
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, RECOVERY_FRAMES);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, RECOVERY_FRAME_START);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 1.3);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1.3);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSPECIAL_2, 4);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, -2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 103);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 36);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_TECHABLE, 3);

set_hitbox_value(AT_FSPECIAL_2, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, -2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_TECHABLE, 3);

set_hitbox_value(AT_FSPECIAL_2, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_X, -2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_TECHABLE, 3);

set_hitbox_value(AT_FSPECIAL_2, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_X, -2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WIDTH, 103);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HEIGHT, 55);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_PRIORITY, 6);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_ANGLE, 38);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL_2, 4, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_TECHABLE, 3);

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#macro STARTUP_FRAMES 1
#define _get_startup_frames()
    return STARTUP_FRAMES
#macro STARTUP_FRAME_START 0
#define _get_startup_frame_start()
    return STARTUP_FRAME_START

#macro MOVEMENT_FRAMES 4
#define _get_movement_frames()
    return MOVEMENT_FRAMES
#macro MOVEMENT_FRAME_START 1
#define _get_movement_frame_start()
    return MOVEMENT_FRAME_START

#macro RECOVERY_FRAMES 3
#define _get_recovery_frames()
    return RECOVERY_FRAMES
#macro RECOVERY_FRAME_START 5
#define _get_recovery_frame_start()
    return RECOVERY_FRAME_START
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion