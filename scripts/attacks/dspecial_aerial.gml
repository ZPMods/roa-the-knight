set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_2, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED, 3);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_VSPEED, 15);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_DSPECIAL_2, 7);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, -90);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL_2, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL_2, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL_2, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL_2, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL_2, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL_2, 7, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_WIDTH, 300);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HEIGHT, 300);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_ANGLE, -80);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HIT_SFX, asset_get("sfx_blow_strong1"));
set_hitbox_value(AT_DSPECIAL_2, 7, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_DSPECIAL_2, 7, HG_HITBOX_GROUP, -1);
