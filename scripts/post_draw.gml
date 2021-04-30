//EFFECTS ANIMATIONS -----------------------------------------------------------

//Normal to Shade Effect
nts();
//nailart aura
if (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) and (attack == AT_FSTRONG or attack == AT_DSTRONG) and (window == 1 or window == 2 or window == 4){
    shader_start();
    var time = get_gameplay_time();
    var index = time%12 / 4;
    draw_sprite_ext(nailart_aura, index, x, y - char_height/2, 2, 2, 0, c_white, 1);
    shader_end();
}

if(state == PS_ATTACK_GROUND and attack == AT_TAUNT){
    // if(draw_wheel)
    //     charm_selection()
}

#define charm_selection()
var t = get_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH);
// var offset = (sitting_bench.x - charm_wheel_width*(sitting_num+1)/2) + (sitting_pos + 1)*charm_wheel_width;

var alpha = (window == 3)*(window_timer/t) + (window > 3 and window < 7) - (window == 6)*(sleepy_time/90);
if(sitting_pos == 0){
    draw_sprite_ext(charm_wheel_spr, 0, sitting_bench.x, y-char_height, 1, 1, 0, c_white, 1);
}


#define nts()


if (nts_effect_show == true)
{

     if (nts_effect_freeze == false)
     {
          nts_effect_x = x - 40;
          nts_effect_y = y - 64;
          nts_effect_freeze = true;
     }

     shader_start();
     draw_sprite_ext(sprite_get("normal_to_shade_effect"), nts_effect_animation_frame, nts_effect_x, nts_effect_y, 1, 1, 0, c_white, 255);
     shader_end();

     nts_effect_animation_timer += 1;

     if (nts_effect_animation_timer >= nts_effect_animation_framelength)
     {
          nts_effect_animation_frame += 1;
          nts_effect_animation_timer = 0;

          if (nts_effect_animation_frame > 7)
          {
               nts_effect_animation_frame = 1;
               nts_effect_show = false;
               nts_effect_freeze = false;
          }
     }
}

//Neutral Special Effect

if (nspecial_effect_show == true)
{
     if (nspecial_effect_freeze == false)
     {
          nspecial_effect_x = x + (spr_dir * -6);
          nspecial_effect_y = y - 86;
          nspecial_effect_freeze = true;
     }

     shader_start();
     draw_sprite_ext(sprite_get("nspecial_effect"), nspecial_effect_animation_frame, nspecial_effect_x, nspecial_effect_y, spr_dir, 1, 0, c_white, 255);
     shader_end();

     nspecial_effect_animation_timer += 1;

     if (nspecial_effect_animation_timer >= nspecial_effect_animation_framelength)
     {
          nspecial_effect_animation_frame += 1;
          nspecial_effect_animation_timer = 0;

          if (nspecial_effect_animation_frame > 7)
          {
               nspecial_effect_animation_frame = 1;
               nspecial_effect_show = false;
               nspecial_effect_freeze = false;
          }
     }
}

if (nspecial_boosted_effect_show == true)
{
     if (nspecial_boosted_effect_freeze == false)
     {
          nspecial_boosted_effect_x = x + (spr_dir * -6);
          nspecial_boosted_effect_y = y - 84;
          nspecial_boosted_effect_freeze = true;

          if (spr_dir == 1)
          {
               nspecial_boosted_effect_dir = "right";
          }
          else
          {
               nspecial_boosted_effect_dir = "left";
          }
     }

     shader_start();
     draw_sprite_ext(sprite_get("nspecial_boosted_effect"), nspecial_boosted_effect_animation_frame, nspecial_boosted_effect_x, nspecial_boosted_effect_y, spr_dir, 1, 0, c_white, 255);
     shader_end();

     nspecial_boosted_effect_animation_timer += 1;

     if (nspecial_boosted_effect_animation_timer >= nspecial_boosted_effect_animation_framelength)
     {
          nspecial_boosted_effect_animation_frame += 1;
          nspecial_boosted_effect_animation_timer = 0;

          if (nspecial_boosted_effect_animation_frame > 7)
          {
               nspecial_boosted_effect_animation_frame = 1;
               nspecial_boosted_effect_show = false;
               nspecial_boosted_effect_freeze = false;
          }
     }
}
