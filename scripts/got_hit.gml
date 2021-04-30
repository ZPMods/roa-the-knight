//Empty
if (move_cooldown[AT_FSPECIAL] > 0)
{
    move_cooldown[AT_FSPECIAL] = 0;
}

if (attack == AT_TAUNT)
{
	if instance_exists(bench){
		bench.end_anim = true;
		bench.all_hop_off = true;
	}
	
	
}
sitting = false;
if(has_charm(LIFEBLOOD_HEART) and lifeblood_pool > 0){
    if(enemy_hitboxID.damage > lifeblood_pool){
        take_damage(player, hit_player_obj.player, -lifeblood_pool);
    }else{
        take_damage(player, hit_player_obj.player, -enemy_hitboxID.damage);
    }
    lifeblood_pool -= enemy_hitboxID.damage;
}
sound_stop(nailart_loop_sound);

#define has_charm(charm)

// is_charm_equipped >> charm shifts the charm flag location one to the most right flag
// then it performs AND, if equipped then must be equal to the charm number
return (is_charm_equipped >> charm) & 1;

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