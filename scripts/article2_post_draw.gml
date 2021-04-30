
if(sleepy_time < 120){
	var alpha = 1 - (sleepy_time > 109)*((sleepy_time - 110)/10);
	
    with(player_id){
    	
        draw_sprite_ext(charm_wheel_spr, 0, other.x, other.y -char_height, 1, 1, 0, c_white, alpha);
        draw_sprite_ext(charms_in_wheel_spr, 0, other.x, other.y -char_height, 1, 1, 0, c_white, alpha);
    }
    
    
    for(var p = 0; p < n_sit; p++){
        
        var dir = get_joy_dir(sitting_ids[@ p]);
        
        var num_sel = charm_selector_dir_array[@ sitting_ids[@ p].charm_dir ] - 1;        
        var sel_draw_flag = num_sel;
        // print(charm_selector_dir_array)
        
        var part_offset_x = 32 - (sel_draw_flag     & 1)    *32;
        var part_offset_y = 32 - (sel_draw_flag>>1  & 1)    *32;
        draw_sprite_part_ext(charm_selector_spr, sitting_ids[@ p].player, (sel_draw_flag & 1)*32, (sel_draw_flag>>1 & 1)*32, 64, 64, 
        					x + charm_selector_x - part_offset_x, y + charm_selector_y - part_offset_y - 52, 1, 1, c_white, alpha);
    }
    clear_array(charm_selector_dir_array, 0);
}
#define get_joy_dir(_id)
var wake = false;
with _id{
    var dir = charm_dir * 45;
    
    other.charm_selector_x = lengthdir_x(60, dir);
    other.charm_selector_y = lengthdir_y(60, dir);
}
charm_selector_dir_array[@ _id.charm_dir]++;
if(wake) wake_up()
#define clear_array(arr, n)

var index = 0;
repeat(array_length_1d(arr)){
	
	charm_selector_dir_array[@ index] = n;
	index++;
}
#define wake_up()

sleepy_time = -1;