/// @description  Set the X/Y Position and Depth.

 // Set position:
    if(Parent.Action != ActionJump && Parent.Action != ActionRolling){
       x = floor(Parent.x);
       y = floor(Parent.y);
    }else{
       x = floor(Parent.x);
       y = floor(Parent.y+4);   
    }
    
 // Change Depth:
    if(image_index >= 0 && image_index < 15){
       depth  = Parent.depth - 1;
    }else{
       depth  = Parent.depth
    }


