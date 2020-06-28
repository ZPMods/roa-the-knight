//coucou
switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*6.5));
    break;

    case PS_WALK:
        image_index = floor(image_number*state_timer/(image_number*5));
        
        
    break;
    
    case PS_WALL_JUMP:
        if(clinging){
            image_index = 0;
        }else{
            image_index = floor(image_number*(state_timer - clinging_timer)/(image_number*2.5));
        }
    break;    
}
