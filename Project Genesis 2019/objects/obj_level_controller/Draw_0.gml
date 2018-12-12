/// @description  Draw Pause frame.
    if(GamePBG != noone){
       draw_background(GamePBG, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));
    }

/// Draw the Hud.

    // Exit when the game is paused:
    if(GamePaused == true) exit;
    
    // Don't draw if in Bonus Stages:
    if(global.BonusStage == false){
       
    // SCORE/TIME/RINGS:
       draw_sprite(spr_main_hud, 0, __view_get( e__VW.XView, view_current )+floor(16), __view_get( e__VW.YView, view_current )+floor(9));
       if( ((global.GameTime div 8) mod 2 && global.GameTime > 540000) or global.GameTime < 540000 or global.DoTime = 0){       
       draw_sprite(spr_main_hud, 1, __view_get( e__VW.XView, view_current )+floor(16), __view_get( e__VW.YView, view_current )+floor(25));
       }
       if(((global.Rings == 0) && (global.GameTime div 8) mod 2 ) or global.Rings > 0 or instance_exists(obj_scoring_results) || global.DoTime == 0){
          draw_sprite(spr_main_hud, 2, __view_get( e__VW.XView, view_current )+floor(16), __view_get( e__VW.YView, view_current )+floor(41));
       }

    // Text for SCORE/TIME/RINGS:
       draw_set_font(global.Font_HUD){
                     draw_set_color(c_white){
                                    draw_set_halign(fa_right);
                                    draw_text(__view_get( e__VW.XView, view_current )+111, __view_get( e__VW.YView, view_current )+9, string_hash_to_newline(global.Score));                                                          
                                    draw_set_halign(fa_left);
                                    if( ((global.GameTime div 8) mod 2 && global.GameTime > 540000) or global.GameTime < 540000 or global.DoTime = 0){      
                                    draw_text(__view_get( e__VW.XView, view_current )+55, __view_get( e__VW.YView, view_current )+25, 
                                              string_hash_to_newline(string(floor(global.GameTime/60000))+" "+scr_string_number_format(floor(global.GameTime/1000) mod 60,2)));
                                    }          
                                    draw_set_halign(fa_right);
                                    draw_text(__view_get( e__VW.XView, view_current )+87, __view_get( e__VW.YView, view_current )+41, string_hash_to_newline(global.Rings));
                                    draw_set_halign(-1);
                     }
       } 
           
    // Lives:
       draw_set_font(global.Font_Life){    
                     draw_set_halign(fa_right){
                                     draw_text(__view_get( e__VW.XView, 0 )+64, __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-15, string_hash_to_newline(global.Lives));                     
                                     draw_sprite(spr_life_hud, CharID, __view_get( e__VW.XView, view_current )+floor(16), __view_get( e__VW.YView, view_current )+floor(200));  
                     }
                     draw_set_halign(-1)  
       }

      }else{ // Draw the Ring counter in Bonus Stages.
          draw_sprite(spr_main_hud, 2, __view_get( e__VW.XView, view_current )+floor(16), __view_get( e__VW.YView, view_current )+floor(9)); 
          draw_set_font(global.Font_HUD){
             draw_set_color(c_white){
                draw_set_halign(fa_right);          
                draw_text(__view_get( e__VW.XView, view_current )+88, __view_get( e__VW.YView, view_current )+9, string_hash_to_newline(global.Rings));    
                draw_set_halign(-1);                
             }
          }
      }


/// Konami Easter Egg.
    if(KonamiSprite != noone){
       draw_set_color(c_black)
       draw_rectangle(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ), false)
       draw_set_color(c_white)
       draw_sprite_ext(KonamiSprite, current_time div 60, __view_get( e__VW.XView, 0 )+0, __view_get( e__VW.YView, 0 )+0, 2, 2, 0, c_white, 1)
    }

