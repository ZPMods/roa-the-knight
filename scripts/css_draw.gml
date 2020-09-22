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
alt_name[8]  = "Pride";
alt_name[9]  = "Lesbians Rights";
alt_name[10] = "Non Binary Rights";
alt_name[11] = "Rainbow";
alt_name[12] = "Early Access";
alt_name[13] = "Abyss";

flag_name[0] = "Trans";
flag_name[1] = "Gay";
flag_name[2] = "Lesbian";
flag_name[3] = "Bi";
flag_name[4] = "Pan";
flag_name[5] = "Ace";
flag_name[6] = "Aro";
flag_name[7] = "Non-Binary";
flag_name[8] = "Genderqueer";

if !("flags_timer" in self) flags_timer = 0;
if !("current_flag" in self) current_flag = 0;
if !("last_flag" in self) last_flag = array_length(flag_name) - 1;
if !("movement_timer" in self) movement_timer = 0;
if !("lerp_val" in self) lerp_val = 0;

if (alt_cur == 8)
{
     flags_timer += 1;

     if (flags_timer >= 120)
     {
          last_flag = current_flag;
          current_flag ++;
          if (current_flag >= array_length(flag_name))
          {
               current_flag = 0;
          }

          flags_timer = 0;
     }

     switch (current_flag)
     {
          //Trans
          case 0 :

          set_color_profile_slot(8, 0, 232, 181, 182); // Helmet
          set_color_profile_slot(8, 1, 211, 129, 189); // Cape
          set_color_profile_slot(8, 2, 67, 174, 216); // Nail
          set_color_profile_slot(8, 3, 40, 40, 40); // Body
          set_color_profile_slot(8, 4, 15, 15, 30); // Eyes

          break;

          //Gay
          case 1 :

          set_color_profile_slot(8, 0, 189, 243, 217); // Helmet
          set_color_profile_slot(8, 1, 123, 173, 227); // Cape
          set_color_profile_slot(8, 2, 38, 206, 170); // Nail
          set_color_profile_slot(8, 3, 26, 19, 47); // Body
          set_color_profile_slot(8, 4, 15, 15, 30); // Eyes

          break;

          //Lesbian
          case 2 :

          set_color_profile_slot(8, 0, 255, 220, 196); // Helmet
          set_color_profile_slot(8, 1, 255, 77, 77); // Cape
          set_color_profile_slot(8, 2, 212, 98, 165); // Nail
          set_color_profile_slot(8, 3, 24, 23, 33); // Body
          set_color_profile_slot(8, 4, 15, 15, 30); // Eyes

          break;

          //Bi
          case 3 :

          set_color_profile_slot(8, 0, 181, 199, 232); // Helmet
          set_color_profile_slot(8, 1, 205, 55, 131); // Cape
          set_color_profile_slot(8, 2, 136, 105, 172); // Nail
          set_color_profile_slot(8, 3, 16, 30, 57); // Body
          set_color_profile_slot(8, 4, 15, 15, 30); // Eyes

          break;

          //Pan
          case 4 :

          set_color_profile_slot(8, 0, 232, 181, 206); // Helmet
          set_color_profile_slot(8, 1, 253, 217, 0); // Cape
          set_color_profile_slot(8, 2, 112, 160, 186); // Nail
          set_color_profile_slot(8, 3, 8, 28, 41); // Body
          set_color_profile_slot(8, 4, 15, 15, 30); // Eyes

          break;

          //Ace
          case 5 :

          set_color_profile_slot(8, 0, 229, 229, 229); // Helmet
          set_color_profile_slot(8, 1, 160, 59, 160); // Cape
          set_color_profile_slot(8, 2, 163, 163, 163); // Nail
          set_color_profile_slot(8, 3, 35, 35, 35); // Body
          set_color_profile_slot(8, 4, 15, 15, 30); // Eyes

          break;

          //Aro
          case 6 :

          set_color_profile_slot(8, 0, 206, 231, 179); // Helmet
          set_color_profile_slot(8, 1, 90, 167, 94); // Cape
          set_color_profile_slot(8, 2, 163, 163, 163); // Nail
          set_color_profile_slot(8, 3, 35, 35, 35); // Body
          set_color_profile_slot(8, 4, 15, 15, 30); // Eyes

          break;

          //Non-Binary
          case 7 :

          set_color_profile_slot(8, 0, 212, 207, 203); // Helmet
          set_color_profile_slot(8, 1, 157, 92, 213); // Cape
          set_color_profile_slot(8, 2, 253, 247, 95); // Nail
          set_color_profile_slot(8, 3, 66, 66, 71); // Body
          set_color_profile_slot(8, 4, 15, 15, 30); // Eyes

          break;

          //Genderqueer
          case 8 :

          set_color_profile_slot(8, 0, 218, 202, 235); // Helmet
          set_color_profile_slot(8, 1, 99, 135, 72); // Cape
          set_color_profile_slot(8, 2, 184, 159, 202); // Nail
          set_color_profile_slot(8, 3, 49, 44, 53); // Body
          set_color_profile_slot(8, 4, 15, 15, 30); // Eyes

          break;
     }

     draw_sprite_ext(sprite_get("flags_outline"), 0, temp_x + 4, temp_y + 34, 1, 1, 0, c_white, 1);

     if (last_flag != current_flag)
     {
          movement_timer ++;

          lerp_val = 1/30 * movement_timer;
          lerp_val = bias(0.7, lerp_val);

          if (movement_timer >= 30)
          {
               last_flag = current_flag;
               movement_timer = 0;
          }
     }

     draw_sprite_ext(sprite_get("flags"), current_flag-1, temp_x + 4, temp_y + lerp(34, 0, lerp_val), 1, 1, 0, c_white, lerp(1, 0, lerp_val));
     draw_sprite_ext(sprite_get("flags"), current_flag, temp_x + lerp(10, 4, lerp_val), temp_y + lerp(68, 34, lerp_val), lerp(.75, 1, lerp_val), lerp(.75, 1, lerp_val), 0, c_white, 1);
     draw_sprite_ext(sprite_get("flags"), current_flag + 1, temp_x + lerp(17, 10, lerp_val), temp_y + lerp(93, 68, lerp_val), lerp(.5, .75, lerp_val), lerp(.5, .75, lerp_val), 0, c_white, 1);
     draw_sprite_ext(sprite_get("flags"), current_flag + 2, temp_x + 17,  temp_y + lerp(110, 93, lerp_val), .5, .5, 0, c_white, lerp(0, 1, lerp_val));
}
else
{
     flags_timer = 0;
}

//textDraw(temp_x + 10, temp_y + 50, "fName", c_white, 0, 1000, 1, true, 1, string(movement_timer));
//textDraw(temp_x + 10, temp_y + 70, "fName", c_white, 0, 1000, 1, true, 1, string(current_flag));
//textDraw(temp_x + 10, temp_y + 90, "fName", c_white, 0, 1000, 1, true, 1, string(last_flag));
//textDraw(temp_x + 10, temp_y + 110, "fName", c_white, 0, 1000, 1, true, 1, string(lerp_val));

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
if !("hue" in self)
{
     hue = 0;
}

if (get_player_color(player) = 11)
{
	hue+=1;
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

if (alt_cur == 8) textDraw(temp_x + 100, temp_y + 124, "fName", c_white, 0, 1000, 1, true, 1, "- " + flag_name[current_flag]);



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

#define bias(b, x)
return argument1 / ((1 / argument0 - 2) * (1 - argument1) + 1);
