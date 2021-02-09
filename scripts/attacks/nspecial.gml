set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

// //Window de charge boosted
// set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
// set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 10);
// set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
// set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);
// set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HSPEED, 0);
// set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED, 0);
// set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
// set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
// //-------------------------

//Startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 17);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);

//Attack
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("knight_special_neutral_normal"));
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);

//Endlag
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);


set_num_hitboxes(AT_NSPECIAL, 1);

set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 6);

set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, soul_hit_heavy);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sound_get("knight_special_neutral_normal_impact"));
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0);
/* set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -32);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, -32); */
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 10);
