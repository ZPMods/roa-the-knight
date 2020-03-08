draw_debug_text( temp_x+250, temp_y-30, string(vanillachar));
draw_debug_text( temp_x+250, temp_y-50, string(window_timer));
draw_debug_text( temp_x+250, temp_y-70, string(state));
draw_debug_text( temp_x+250, temp_y-90, string(state_timer));
draw_debug_text( temp_x+250, temp_y-110, string(attack));

//Affiche le nombre de Soul Points sur le HUD
//draw_debug_text( temp_x+150, temp_y-14, "Soul : " + string( soul_points ));

//Affichage et animation du Soul Meter
draw_sprite_part(sprite_get("soulmeter_" + string(round(soul_points/5))), 0, ((soulmeter_animation_frame*64) - 64), 0, 64, 64, temp_x, temp_y - 50);

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
/*if (vanillachar == 0){
    draw_sprite(sprite_get("charm_infobox"), 0, temp_x + 126, temp_y - 347);
    draw_debug_text( temp_x +220, temp_y -315, string(dream_random));

}*/
if (vanillachar == 1)
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
var color; if (argument_count > 4) color = argument[4]; else color = c_white;
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
