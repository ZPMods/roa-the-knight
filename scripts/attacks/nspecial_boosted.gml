set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_boosted"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial_boosted"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

//Startup
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, STARTUP_FRAMES);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, STARTUP_FRAME_START);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("knight_special_neutral_boosted"));
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_VSPEED, 0);

//Attack
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, SHOOT_FRAMES);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, SHOOT_FRAME_START);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED, 0);

//Endlag
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, RECOVERY_FRAMES);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, RECOVERY_FRAME_START);

set_num_hitboxes(AT_NSPECIAL_2, 3);

//Hitbox Drag
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 70);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, .4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, sound_get("knight_special_neutral_boosted_drag"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 20);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, fx_shade_hit_weak);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_TECHABLE, 3);

//Hitbox Boom
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WIDTH, 100);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HIT_SFX, sound_get("knight_special_neutral_boosted_boom"));
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE, 42);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT, fx_nspecial_boosted_explosion);

//First Hitbox
//set_hitbox_value(AT_NSPECIAL_2, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_LIFETIME, 1920);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PRIORITY, 9);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_WIDTH, 70);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_ANGLE, 20);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITSTUN_MULTIPLIER, .4);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HIT_SFX, sound_get("knight_special_neutral_boosted_drag"));
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_SPRITE, sprite_get("nspecial_boosted_proj"));
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_TECHABLE, 3);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_ENEMY_BEHAVIOR	, 1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_PROJECTILE_WALL_BEHAVIOR , 1);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_VISUAL_EFFECT, fx_shade_hit_weak);

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#macro STARTUP_FRAMES 3
#define _get_startup_frames()
    return STARTUP_FRAMES
#macro STARTUP_FRAME_START 0
#define _get_startup_frame_start()
    return STARTUP_FRAME_START

#macro SHOOT_FRAMES 2
#define _get_shoot_frames()
    return SHOOT_FRAMES
#macro SHOOT_FRAME_START 3
#define _get_shoot_frame_start()
    return SHOOT_FRAME_START

#macro RECOVERY_FRAMES 3
#define _get_recovery_frames()
    return RECOVERY_FRAMES
#macro RECOVERY_FRAME_START 5
#define _get_recovery_frame_start()
    return RECOVERY_FRAME_START
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion