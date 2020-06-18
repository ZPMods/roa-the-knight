draw_debug_text( temp_x+250, temp_y-30, string(sex));
draw_debug_text( temp_x+250, temp_y-60, string(shade_bubbles_play));

//Affiche le nombre de Soul Points sur le HUD
//draw_debug_text( temp_x+150, temp_y-14, "Soul : " + string( soul_points ));
if(practice)
{
    draw_debug_text( temp_x - 170, temp_y + 5,("Press Taunt + Parry"));
    draw_debug_text( temp_x - 170, temp_y + 25,("To gain infinite Soul"));
}
//Affichage et animation du Soul Meter
if (soul_points <= 25)
{
     soulmeter_stage_main = round(soul_points / (25 / 20));
     soulmeter_stage_mini_1 = 0;
     soulmeter_stage_mini_2 = 0;
     soulmeter_stage_mini_3 = 0;
}

if (soul_points > 25 && soul_points <= 50)
{
     soulmeter_stage_main = 20;
     soulmeter_stage_mini_1 = round((soul_points - 25) / (25 / 7));
     soulmeter_stage_mini_2 = 0;
     soulmeter_stage_mini_3 = 0;
}

if (soul_points > 50 && soul_points <= 75)
{
     soulmeter_stage_main = 20;
     soulmeter_stage_mini_1 = 7;
     soulmeter_stage_mini_2 = round((soul_points - 50) / (25 / 7));
     soulmeter_stage_mini_3 = 0;
}

if (soul_points > 75 && soul_points <= 100)
{
     soulmeter_stage_main = 20;
     soulmeter_stage_mini_1 = 7;
     soulmeter_stage_mini_2 = 7;
     soulmeter_stage_mini_3 = round((soul_points - 75) / (25 / 7));
}

//Principal
draw_sprite_part(sprite_get("soulmeter_" + string(soulmeter_stage_main)), 0, ((soulmeter_animation_frame*64) - 64), 0, 64, 64, temp_x, temp_y - 50);
//Mini 1
draw_sprite_part(sprite_get("soulmeter_mini_" + string(soulmeter_stage_mini_1)), 0, ((soulmeter_animation_frame*20) - 20), 0, 20, 20, temp_x - 12, temp_y - 19);
//Mini 2
draw_sprite_part(sprite_get("soulmeter_mini_" + string(soulmeter_stage_mini_2)), 0, ((soulmeter_animation_frame*20) - 20), 0, 20, 20, temp_x - 10, temp_y - 40);
//Mini 3
draw_sprite_part(sprite_get("soulmeter_mini_" + string(soulmeter_stage_mini_3)), 0, ((soulmeter_animation_frame*20) - 20), 0, 20, 20, temp_x + 4, temp_y - 56);

soulmeter_animation_timer += 1;

if (soulmeter_animation_timer == soulmeter_animation_framelength)
{
  soulmeter_animation_frame += 1;
  soulmeter_animation_timer = 0;

  if (soulmeter_animation_frame > 8)
  {
    soulmeter_animation_frame = 1;
  }
}



// Dream Nail
if (vanillachar == 0){
    draw_sprite(sprite_get("charm_infobox"), 0, temp_x + 126, temp_y - 347);
    draw_debug_text( temp_x +220, temp_y -315, string(dream_random));
}
if (vanillachar <= 14 && vanillachar != 0)
{
    draw_sprite(sprite_get("charm_infobox"), 0, temp_x + 126, temp_y - 347);
    draw_debug_text( temp_x +220, temp_y -315,dream_random);
}



//abyss gui code
ab_hud_x = temp_x;
ab_hud_y = temp_y;
//this is for the outdated warning message
if ("depNotice" not in self) depNotice = 0;
if (abyssEnabled && (menuActive || timerActive)) abyssDraw();
#define abyssDraw
/// abyssDraw()
/// draws text and images the player recieved from the abyss buddy.
if ("abyss_drawArray" in self && ds_list_valid(abyss_drawArray))  {
    if (ds_list_size(abyss_drawArray) > 0) {
        for (var _i = 0; _i < ds_list_size(abyss_drawArray);_i++) {
            var _text = abyss_drawArray[| _i];
            if draw_get_halign() != _text[6] {
                draw_set_halign(_text[6]);
            }
            switch (_text[0]) {
                case 0:
                    draw_debug_text(floor(_text[1]),floor(_text[2]),string(_text[3]));
                    break;
                case 1:
                    draw_sprite_ext(_text[3],_text[5],_text[1],_text[2],1,1,0,_text[4],1);
                    break;
                case 2:
                    draw_text_plus(floor(_text[1]),floor(_text[2]),string(_text[3]),floor(_text[5]),floor(_text[4]));
                    break;
                case 3:
                    if draw_get_font() != 1 draw_set_font(1);
                    draw_text_ext_color(floor(_text[1]),floor(_text[2]),string(_text[3]),16,floor(_text[5]),_text[4],_text[4],_text[4],_text[4], 1);
                    break;
                default:
                break;
            }
        }
    }
    //finished drawing, so clear the table for the next frame.
    ds_list_clear(abyss_drawArray);
}
//return draw_calls;
#define draw_text_plus
/// draw_text_plus(x, y, text, font, color = c_white)
/// draws outlined text in any in-game font.
var x = argument[0], y = argument[1], text = argument[2], font = argument[3];
var color = argument_count > 4 ? argument[4] : c_white;
if draw_get_font() != font {
    draw_set_font(font);
}
draw_text_color(x+2,y,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x-2,y,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x,y-2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x,y+2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x+2,y-2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x-2,y-2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x+2,y+2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x-2,y+2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x,y,text,color,color,color,color,1);
