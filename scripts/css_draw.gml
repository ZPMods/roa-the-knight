var temp_x = x + 8;
var temp_y = y + 9;

patch_ver = "";
patch_day = "";
patch_month = "";

var num_alts = 14;
var alt_cur = get_player_color(player);



//Alt name init. var doesn't work with arrays lol

alt_name[0]  = "Default";
alt_name[1]  = "Hornet";
alt_name[2]  = "Quirrel";
alt_name[3]  = "Pale King";
alt_name[4]  = "Thistlewind";
alt_name[5]  = "Godseeker";
alt_name[6]  = "Grimm";
alt_name[7]  = "Hollow Knight";
alt_name[8]  = "Trans Rights";
alt_name[9]  = "Lesbians Rights";
alt_name[10] = "Non Binary Rights";
alt_name[11] = "Rainbow";
alt_name[12] = "Early Access";
alt_name[13] = "Abyss";



// CSS Goodies
// Seasonal
/*
if (alt_cur == 6){
  draw_sprite_ext(sprite_get("cssextras"), 2, temp_x + 3, temp_y + 92, 1, 1, 0, c_white, 1);
}
*/
// Abyss
if (alt_cur == 13){
  draw_sprite_ext(sprite_get("cssextras"), 1, temp_x + 3, temp_y + 92, 1, 1, 0, c_white, 1);
}
// Early Access
if (alt_cur == 12){
  draw_sprite_ext(sprite_get("cssextras"), 3, temp_x + 3, temp_y + 92, 1, 1, 0, c_white, 1);
}
/*
// Little Star
if (alt_cur == 15){
  draw_sprite_ext(sprite_get("cssextras"), 0, temp_x + 3, temp_y + 92, 1, 1, 0, c_white, 1);
}
// Show Nothing
if (alt_cur != 6 and alt_cur != 7 and alt_cur != 8 and alt_cur != 15){
  draw_sprite_ext(sprite_get("cssextras"), 2, temp_x + 3, temp_y + 92, 1, 1, 0, c_white, 0);
}
*/
//Patch

draw_set_halign(fa_left);

textDraw(temp_x + 2, temp_y + 30, "medFont", c_white, 0, 1000, 1, true, 1, "" + patch_ver);

textDraw(temp_x + 2, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, patch_day + " " + patch_month);



//MAGIC COLOUR CODE
if !("hue" in self) hue = 0
if get_player_color(player) = 11 {
	hue+=1 
	if hue>255 hue-=255;
	color_rgb=make_color_rgb(167, 195, 217);
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(11,0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));


	color_rgb=make_color_rgb( 84, 87, 138);
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(11,1,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	
	color_rgb=make_color_rgb(15, 15, 30);
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	set_color_profile_slot(11,4,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
	}
init_shader();
//Credits Anguish (Code From Kirby)

//Alt


rectDraw(temp_x, temp_y + 135, temp_x + 201, temp_y + 142, c_black);

for(i = 0; i < num_alts; i++){
    var draw_color = (i == alt_cur) ? c_white : c_gray;
    var draw_x = temp_x + 2 + 10 * i;
    rectDraw(draw_x, temp_y + 137, draw_x + 7, temp_y + 140, draw_color);
}

draw_set_halign(fa_left);
textDraw(temp_x + 2, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "Alt. " + (alt_cur < 9 ? "0" : "") + string(alt_cur + 1) + ": " + alt_name[alt_cur]);



#define textDraw(x, y, font, color, lineb, linew, scale, outline, alpha, string)

draw_set_font(asset_get(argument[2]));

if argument[7]{ //outline. doesn't work lol
    for (i = -1; i < 2; i++){
        for (j = -1; j < 2; j++){
            draw_text_ext_transformed_color(argument[0] + i * 2, argument[1] + j * 2, argument[9], argument[4], argument[5], argument[6], argument[6], 0, c_black, c_black, c_black, c_black, 1);
        }
    }
}

draw_text_ext_transformed_color(argument[0], argument[1], argument[9], argument[4], argument[5], argument[6], argument[6], 0, argument[3], argument[3], argument[3], argument[3], argument[8]);

return string_width_ext(argument[9], argument[4], argument[5]);



#define rectDraw(x1, y1, x2, y2, color)

draw_rectangle_color(argument[0], argument[1], argument[2], argument[3], argument[4], argument[4], argument[4], argument[4], false);
