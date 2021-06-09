// Soul system
if(has_charm(FURY_OF_THE_FALLEN) and get_player_damage( player ) >= 90){
	take_damage(hit_player_obj.player, player, 1 + my_hitboxID.damage > 1);
}
if (GiveSoulAttack())
{
	if (soul_points < 100)
	{
		old_soul_points = soul_points;
		
		soul_points += round((my_hitboxID.damage));
		
		correct_soul();
	}
    if(splash){
		var random_pitch = (random_func(0, 2, false) - 1)*0.2 + 1;
		sound_play(damage_sound, false, noone, 1, random_pitch);
	}
	
}else{
	if(isBoostedSpell()){
		if has_charm(SPELL_TWISTER){
			if(attack != AT_NSPECIAL_2 and can_refund){
				
				old_soul_points = soul_points;
				soul_points += 15; // 3/5 of the average SP per spell
				correct_soul();
				can_refund = false;
			}else if (attack == AT_NSPECIAL_2 and can_refund_nspecial){
				
				old_soul_points = soul_points;
				can_refund_nspecial = false;
				soul_points += 15;
				correct_soul();
				
			}
		}
	}
}

if (my_hitboxID.attack == AT_DAIR && window == 2)
{
     has_dair_hit = true;
}

//Down Special Aerial Hitbox
if(my_hitboxID.attack == AT_DSPECIAL && window == 4)
{
  has_dspecial_air_hit = true;
  window = 6;
  window_timer = 0;
  sound_play(sound_get("knight_special_down_normal_air"));
}

//Down Special Boosted Multihit
if (my_hitboxID.attack == AT_DSPECIAL_2 && window == 4)
{
  if (y < 750)
    hit_player_obj.should_make_shockwave = false;
  else
    hit_player_obj.should_make_shockwave = true;
}

//          CHANGE --------- CHANGE
//Neutral Special Boosted Multihit
if (my_hitboxID.attack == AT_NSPECIAL_2)
{
	  //Empecher l'effet violet dégueulasse
     if (my_hitboxID.hbox_num == 1)
     {
          hit_player_obj.should_make_shockwave = false;
     }
     
     if (my_hitboxID.hbox_num != 2)
     {
     	  //multi-hit moved to article
     	  if(hit_player_obj.player != 0){
     	  	 shade_soul.shade_soul_player_hit = hit_player_obj;
        	 shade_soul.newhit_hsp = 10*shade_soul.spr_dir + (shade_soul.spr_dir * hit_player_obj.air_friction * 3);
         	 shade_soul.newhit_vsp = -1 * hit_player_obj.hitstun_grav * 3;
        	 shade_soul.shade_soul_hit = true;
        	 shade_soul.destroy_firsthit = true;
        	 
        	 shade_soul.in_hitpause = true;
        	 shade_soul.hitstop = hit_player_obj.hitstop;
        	 shade_soul.hitstop_full = hit_player_obj.hitstop_full;
     	  }else{
     	  	 shade_soul.shade_soul_player_hit = noone;
     	  	 shade_soul.shade_soul_hit = false;
     	  }
          
     }

}


//          CHANGE --------- CHANGE
//Forward Special Boosted Multihit
if (my_hitboxID.attack == AT_FSPECIAL_2)
{
     fspecial_boosted_got_out = false;

     if (my_hitboxID.hbox_num != 4)
     {
          fspecial_boosted_player_hit = hit_player_obj;
          newhit_hsp = hsp + (spr_dir * hit_player_obj.air_friction * 20);
          newhit_vsp = -1 * hit_player_obj.hitstun_grav * 2;

          fspecial_boosted_hit = true;
     }
     else
     {
          fspecial_boosted_player_hit = noone;
          fspecial_boosted_hit = false;
     }
}


//          CHANGE --------- CHANGE
//Down Special Boosted Multihit
if (my_hitboxID.attack == AT_DSPECIAL_2)
{
     dspecial_boosted_got_out = false;

     if (my_hitboxID.hbox_num < 5)
     {
          dspecial_boosted_player_hit = hit_player_obj;
          /* newhit_hsp = hsp;
          newhit_vsp = vsp + (hit_player_obj.air_friction * 5); */

          dspecial_boosted_hit = true;
     }
     else
     {
          dspecial_boosted_player_hit = noone;
          dspecial_boosted_hit = false;
     }

     if (my_hitboxID.hbox_num == 10)
     {
          djumps = 0;
     }
}

//Custom hit sound
if (my_hitboxID.attack == AT_USPECIAL_2 && my_hitboxID.hbox_num == 4)
{
	sound_play(sound_get("knight_special_up_boosted_impact"));
}

if (my_hitboxID.attack == AT_DSPECIAL_2 && my_hitboxID.hbox_num == 10)
{
	sound_play(sound_get("knight_special_up_boosted_impact"));
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1)
{
	var random_pitch = (random_func(7, 2, false) - 1)*0.2 + 1;
	sound_play(sound_get("hive_zombie_give_birth"), false, noone, 0.4, random_pitch);
}
/*
// Dream Nail
if (attack == AT_TAUNT_2) {
	with(asset_get("oPlayer")){
		if(id != other.id){
			if(select == clamp(select, 2, 15)){
				other.vanillachar = select - 1;
			}
			if (url == 1865940669){ //Sandbert
                vanillachar = 15;
            }

            if (url == 1866016173){ //Guadua
                vanillachar = 16;
            }
		}
		vanillachar = 0;
        dream_random =  hit_player_obj.dream_nail[random_func(0, array_length_1d(dream_nail), true)];
	}



}

if (vanillachar == 1)
{
	dream_random = dream_nail_zetterburn[random_func(0,array_length_1d(dream_nail_zetterburn), true)];
}
if (vanillachar == 2)
{
	dream_random = dream_nail_orcane[random_func(0,array_length_1d(dream_nail_orcane), true)];
}
if (vanillachar == 3)
{
	dream_random = dream_nail_wrastor[random_func(0,array_length_1d(dream_nail_wrastor), true)];
}
if (vanillachar == 4)
{
	dream_random = dream_nail_kragg[random_func(0,array_length_1d(dream_nail_kragg), true)];
}
if (vanillachar == 5)
{
	dream_random = dream_nail_frosburn[random_func(0,array_length_1d(dream_nail_frosburn), true)];
}
if (vanillachar == 6)
{
	dream_random = dream_nail_maypul[random_func(0,array_length_1d(dream_nail_maypul), true)];
}
if (vanillachar == 7)
{
	dream_random = dream_nail_absa[random_func(0,array_length_1d(dream_nail_absa), true)];
}
if (vanillachar == 8)
{
	dream_random = dream_nail_etalus[random_func(0,array_length_1d(dream_nail_etalus), true)];
}
if (vanillachar == 9)
{
	dream_random = dream_nail_ori[random_func(0,array_length_1d(dream_nail_ori), true)];
}
if (vanillachar == 10)
{
	dream_random = dream_nail_ranno[random_func(0,array_length_1d(dream_nail_ranno), true)];
}
if (vanillachar == 11)
{
	dream_random = dream_nail_clairen[random_func(0,array_length_1d(dream_nail_clairen), true)];
}
if (vanillachar == 12)
{
	dream_random = dream_nail_sylvanos[random_func(0,array_length_1d(dream_nail_sylvanos), true)];
}
if (vanillachar == 13)
{
	dream_random = dream_nail_elliana[random_func(0,array_length_1d(dream_nail_elliana), true)];
}
if (vanillachar == 14)
{
	dream_random = dream_nail_shovel[random_func(0,array_length_1d(dream_nail_shovel), true)];
}
*/
//----------------------------------------------------------
// PARTICLES
//----------------------------------------------------------
//Soul Burst
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1)
{
     soul_burst_play = 1;
     soul_burst_x = hit_player_obj.x;
     soul_burst_y = hit_player_obj.y - 35;
}

if (my_hitboxID.attack == AT_DSPECIAL && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2))
{
     soul_burst_play = 1;
     soul_burst_x = hit_player_obj.x;
     soul_burst_y = hit_player_obj.y - 35;
}

//Shade Burst
if (my_hitboxID.attack == AT_NSPECIAL_2 && my_hitboxID.hbox_num == 2)
{
     shade_burst_play = 1;
     shade_burst_x = hit_player_obj.x;
     shade_burst_y = hit_player_obj.y - 35;
}

if (my_hitboxID.attack == AT_USPECIAL_2 && my_hitboxID.hbox_num == 4)
{
     shade_burst_play = 1;
     shade_burst_x = hit_player_obj.x;
     shade_burst_y = hit_player_obj.y - 35;
}

if (my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num == 4)
{
     shade_burst_play = 1;
     shade_burst_x = hit_player_obj.x;
     shade_burst_y = hit_player_obj.y - 35;
}

if (my_hitboxID.attack == AT_DSPECIAL_2 && my_hitboxID.hbox_num == 10)
{
     shade_burst_play = 1;
     shade_burst_x = hit_player_obj.x;
     shade_burst_y = hit_player_obj.y - 35;
}

#define has_charm(charm)

// 1<<charm shifts the one to the charm flag location, example [1 << MARK_OF_PRIDE (mark of pride is 3)] === [0000 0100],
var shift = (1<<charm);

// then it performs AND, if equipped then must be equal to the charm number
return is_charm_equipped & shift == shift;

#define remove_charm(charm)

// charm_equipped_num--;
// if(charm_equipped_num < 0) charm_equipped_num = 0;
if(has_charm(charm))
	is_charm_equipped = is_charm_equipped & ~(1<<charm); // 1<<charm shifts the one to the charm flag location, it creates the mask with negation, then it performs AND, is_charm_equipped will no longer have 1 at the charm number

#define add_charm(charm)

// charm_equipped_num++;
// if(charm_equipped_num > max_charms) charm_equipped_num = max_charms;
if(has_charm(charm)) return;
is_charm_equipped = is_charm_equipped | (1<<charm); // 1<<charm shifts the one to the charm flag location, then it performs OR, is_charm_equipped will have 1 at the charm number

#define GiveSoulAttack

return (my_hitboxID.attack == AT_JAB || my_hitboxID.attack == AT_DATTACK || my_hitboxID.attack == AT_FTILT || my_hitboxID.attack == AT_DTILT || my_hitboxID.attack == AT_UTILT || 
	my_hitboxID.attack == AT_FSTRONG || my_hitboxID.attack == AT_DSTRONG || my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_FAIR || my_hitboxID.attack == AT_BAIR || 
	my_hitboxID.attack == AT_DAIR || my_hitboxID.attack == AT_UAIR|| my_hitboxID.attack == AT_NAIR)

#define isSpell

return (my_hitboxID.attack == AT_FSPECIAL or my_hitboxID.attack == AT_FSPECIAL_2 or my_hitboxID.attack == AT_USPECIAL or my_hitboxID.attack == AT_USPECIAL_2 or my_hitboxID.attack == AT_DSPECIAL or
	my_hitboxID.attack == AT_DSPECIAL_2 or my_hitboxID.attack == AT_NSPECIAL or my_hitboxID.attack == AT_NSPECIAL_2)

#define isBoostedSpell

return (my_hitboxID.attack == AT_FSPECIAL_2 or my_hitboxID.attack == AT_USPECIAL_2 or 
	my_hitboxID.attack == AT_DSPECIAL_2 or my_hitboxID.attack == AT_NSPECIAL_2)

#define correct_soul()
if (soul_points > 100)
{
   soul_points = 100;
}

var i;
for (i = 25; i < 125; i += 25)
{
   if (old_soul_points < i && soul_points >= i)
   {
        soul_full_play = 0;
   }
}