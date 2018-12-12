/// @description  Set the X/Y Position, Depth and sprite.

 // Position:
    x = floor(Parent.x);
    y = floor(Parent.y+ShieldOffset);  

 // Offset:
    if(Parent.Animation != "ROLL"){
       ShieldOffset = 0;
    }else{
       ShieldOffset = 4;
    }
      
 // Depth:   
    depth = Parent.depth - 1;
    
 // Sprite:
    if(Shield_State == "default"){
       sprite_index  = spr_shield_bubble;
       image_speed   = .3;
       BounceAnimate = false;
    }else{
       if(sprite_index != spr_shield_bubble){
          image_speed   = 0;
       }else{
          image_speed   = .3;
       }
    }
    
    if(BounceAnimate){
       if(image_index < 6){
          image_index += 0.20;
       }else{
          if(sprite_index != spr_shield_bubble){
             image_index   = 0;
             sprite_index  = spr_shield_bubble;
          }
       }
    }

