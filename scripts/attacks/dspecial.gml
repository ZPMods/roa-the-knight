set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

// //Window de charge boosted
// set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
// set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 10);
// set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
// set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
// set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED, 0);
// set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, 0);
// set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
// set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
// //-------------------------

//Startup (increase this window's length to increase the move's startup without affecting the charge time)
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, STARTUP_FRAMES);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);

//Boost Vertical
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, JUMP_FRAMES);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, JUMP_FRAME_START);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -9);

//Hover
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, HOVER_FRAMES);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, HOVER_FRAME_START);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, sound_get("knight_special_down_normal_hover"));
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED, 0);

//Descente
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, DIVE_FRAMES);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, DIVE_FRAME_START);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED, 16);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED, 0);

//Hitbox au sol
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, LAND_FRAMES);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, LAND_FRAME_START);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX, sound_get("knight_special_down_normal_impact"));
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

//Hitbox en l'air
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, AIR_ACTIVE_FRAMES);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, AIR_ACTIVE_FRAME_START);


set_window_value(AT_DSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, BOUNCE_FRAMES);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, BOUNCE_FRAME_START);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_VSPEED, -10);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 2);


set_num_hitboxes(AT_DSPECIAL, 2);

//Hitbox en l'air
set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, -4);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 16);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_EFFECT, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, fx_soul_hit_heavy)

//Hitboxes au sol
set_hitbox_value(AT_DSPECIAL, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 156);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 54);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_EFFECT, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 80);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, fx_soul_hit_heavy);

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

#macro LAND_FRAMES 7
#define _get_land_frames()
    return LAND_FRAMES
#macro LAND_FRAME_START 19
#define _get_land_frame_start()
    return LAND_FRAME_START

#macro BOUNCE_FRAMES 3
#define _get_bounce_frames()
    return BOUNCE_FRAMES
#macro BOUNCE_FRAME_START 26
#define _get_bounce_frame_start()
    return BOUNCE_FRAME_START

#macro AIR_ACTIVE_FRAMES 1
#define _get_air_active_frames()
    return AIR_ACTIVE_FRAMES
#macro AIR_ACTIVE_FRAME_START 26
#define _get_air_active_frame_start()
    return AIR_ACTIVE_FRAME_START
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion