set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial_boosted"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 8);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial_boosted"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_boosted_hurt"));

//Startup
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);

//Montée
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_ice_uspecial_jump"));
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -14);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);

//Hitbox
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_SFX, sound_get("knight_special_up_boosted"));
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED, 5);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 9);


//Endlag -> Pratfall
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 13);

set_num_hitboxes(AT_USPECIAL_2, 4);

//Bug drag
set_hitbox_value(AT_USPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SDI_MULTIPLIER, .5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, .3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, 1);

//left drag
set_hitbox_value(AT_USPECIAL_2, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_X, -20);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WIDTH, 20);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE, 65);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_USPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_SDI_MULTIPLIER, .6);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, .3);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_GROUP, 1);

//Right drag
set_hitbox_value(AT_USPECIAL_2, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WIDTH, 20);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL_2, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_ANGLE, 100);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_KNOCKBACK, 13); 
set_hitbox_value(AT_USPECIAL_2, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_USPECIAL_2, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL_2, 3, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_SDI_MULTIPLIER, .6);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITSTUN_MULTIPLIER, .3);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL_2, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL_2, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL_2, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL_2, 4, HG_EFFECT, 0);
set_hitbox_value(AT_USPECIAL_2, 4, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL_2, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL_2, 4, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_USPECIAL_2, 4, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL_2, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL_2, 4, HG_DRIFT_MULTIPLIER, .5);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_GROUP, -1);
