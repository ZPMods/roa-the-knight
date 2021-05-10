soul_points = 0;
lifeblood_pool = 10;
nailart_triggered = false;
clear_charms();

#define clear_charms()

is_charm_equipped = 00000000;
charm_equipped_num = 0;
var it = 0;
repeat(max_charms){
    charm_equipped[it] = -1;
    it++;
    
}