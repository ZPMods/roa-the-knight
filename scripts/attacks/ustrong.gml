set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

//Charge
set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, CHARGE_FRAMES);

//Startup
set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, STARTUP_FRAMES);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, STARTUP_FRAME_START);

//Scoop
set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, SCOOP_FRAMES);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, SCOOP_FRAME_START);

set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, sound_get("knight_strong_up"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 1);

//Sweetspot
set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, SWEETSPOT_FRAMES);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, SWEETSPOT_FRAME_START);

//Sourspot
set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, SOURSPOT_FRAMES);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, SOURSPOT_FRAME_START);

//Endlag
set_window_value(AT_USTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, ENDLAG_FRAMES);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, ENDLAG_FRAME_START);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 3);

//Scoop
set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, -2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -62);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 120);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 62);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, soul_hit_weak);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, -1);

//Sweetspot
set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, -2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -76);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 126);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 109);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 85);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, soul_hit_heavy);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);

//Sourspot
set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -76);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 126);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 109);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, soul_hit_weak);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 1);

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#macro CHARGE_FRAMES 4
#define _get_charge_frames()
    return CHARGE_FRAMES
#macro CHARGE_FRAME_START 0
#define _get_charge_frame_start()
    return CHARGE_FRAME_START

#macro STARTUP_FRAMES 1
#define _get_startup_frames()
    return STARTUP_FRAMES
#macro STARTUP_FRAME_START 3
#define _get_startup_frame_start()
    return STARTUP_FRAME_START

#macro SCOOP_FRAMES 1
#define _get_scoop_frames()
    return SCOOP_FRAMES
#macro SCOOP_FRAME_START 4
#define _get_scoop_frame_start()
    return SCOOP_FRAME_START

#macro SWEETSPOT_FRAMES 1
#define _get_sweetspot_frames()
    return SWEETSPOT_FRAMES
#macro SWEETSPOT_FRAME_START 5
#define _get_sweetspot_frame_start()
    return SWEETSPOT_FRAME_START

#macro SOURSPOT_FRAMES 6
#define _get_sourspot_frames()
    return SOURSPOT_FRAMES
#macro SOURSPOT_FRAME_START 6
#define _get_sourspot_frame_start()
    return SOURSPOT_FRAME_START

#macro ENDLAG_FRAMES 4
#define _get_endlag_frames()
    return ENDLAG_FRAMES
#macro ENDLAG_FRAME_START 12
#define _get_endlag_frame_start()
    return ENDLAG_FRAME_START
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion