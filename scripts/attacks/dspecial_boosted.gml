set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial_boosted"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial_boosted_hurt"));

//Avant boost vertical
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, STARTUP_FRAMES);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HSPEED, 0);

//Boost Vertical
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, JUMP_FRAMES);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, JUMP_FRAME_START);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_VSPEED, -9);

//Hover
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, HOVER_FRAMES);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, HOVER_FRAME_START);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_SFX, sound_get("knight_special_down_boosted_hover"));
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_SFX_FRAME, 3);

//Descente
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, DIVE_FRAMES);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, DIVE_FRAME_START);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_VSPEED, 15);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HSPEED, 0);

//Hitboxes au sol - Phase 1
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, LAND_FRAMES);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, LAND_FRAME_START);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_SFX, sound_get("knight_special_down_boosted_impact_2"));
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_HSPEED, 0);

//Hitboxes au sol - Explosion
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, LAND_EXPLOSION_FRAMES);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, LAND_EXPLOSION_FRAME_START);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_HSPEED, 0);

//Endlag
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, RECOVERY_FRAMES);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, RECOVERY_FRAME_START);

set_num_hitboxes(AT_DSPECIAL_2, 15);

//Hitbox en l'air
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, -4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING,0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, .1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_DSPECIAL_2, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X, -4);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL_2, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_X, -4);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL_2, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 13);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_X, -4);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_GROUP, -1);

//Hitboxes au sol
//Phase 1
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_X, -3);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_WIDTH, 125);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HEIGHT, 38);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_ANGLE, 100);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSPECIAL_2, 5, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_TECHABLE, 1);

set_hitbox_value(AT_DSPECIAL_2, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_X, -3);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_Y, -37);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_WIDTH, 99);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HEIGHT, 73);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_ANGLE, 100);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSPECIAL_2, 6, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_TECHABLE, 1);

set_hitbox_value(AT_DSPECIAL_2, 7, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HITBOX_X, -3);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HITBOX_Y, -45);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_WIDTH, 99);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HEIGHT, 64);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_ANGLE, 100);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSPECIAL_2, 7, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_TECHABLE, 1);

set_hitbox_value(AT_DSPECIAL_2, 8, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HITBOX_X, -3);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HITBOX_Y, -63);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_WIDTH, 106);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HEIGHT, 34);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_ANGLE, 100);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSPECIAL_2, 8, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_2, 8, HG_TECHABLE, 1);

set_hitbox_value(AT_DSPECIAL_2, 9, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_WINDOW_CREATION_FRAME, 21);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_HITBOX_X, -3);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_WIDTH, 30);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_HEIGHT, 37);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_ANGLE, 100);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSPECIAL_2, 9, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_2, 9, HG_TECHABLE, 1);

//Explosion
set_hitbox_value(AT_DSPECIAL_2, 10, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_HITBOX_X, -3);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_WIDTH, 135);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_HEIGHT, 135);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_DAMAGE, 9);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL_2, 10, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_DSPECIAL_2, 10, HG_HITBOX_GROUP, -1);

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#macro STARTUP_FRAMES 1
#define _get_startup_frames()
    return STARTUP_FRAMES
#macro STARTUP_FRAME_START 0
#define _get_startup_frame_start()
    return STARTUP_FRAME_START

#macro JUMP_FRAMES 4
#define _get_jump_frames()
    return JUMP_FRAMES
#macro JUMP_FRAME_START 1
#define _get_jump_frame_start()
    return JUMP_FRAME_START

#macro HOVER_FRAMES 10
#define _get_hover_frames()
    return HOVER_FRAMES
#macro HOVER_FRAME_START 5
#define _get_hover_frame_start()
    return HOVER_FRAME_START

#macro DIVE_FRAMES 4
#define _get_dive_frames()
    return DIVE_FRAMES
#macro DIVE_FRAME_START 15
#define _get_dive_frame_start()
    return DIVE_FRAME_START

#macro LAND_FRAMES 11
#define _get_land_frames()
    return LAND_FRAMES
#macro LAND_FRAME_START 19
#define _get_land_frame_start()
    return LAND_FRAME_START

#macro LAND_EXPLOSION_FRAMES 5
#define _get_land_explosion_frames()
    return LAND_EXPLOSION_FRAMES
#macro LAND_EXPLOSION_FRAME_START 30
#define _get_land_explosion_frame_start()
    return LAND_EXPLOSION_FRAME_START

#macro RECOVERY_FRAMES 7
#define _get_recovery_frames()
    return RECOVERY_FRAMES
#macro RECOVERY_FRAME_START 35
#define _get_recovery_frame_start()
    return RECOVERY_FRAME_START
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion