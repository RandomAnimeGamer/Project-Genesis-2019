/// @description  Play the proper Zone Theme.
     
    // Test Zone:
       ZoneSetTheme(rm_test_zone, Test_Theme, 0, -1, -1);

    // Bonus Stages:
    // Gumball:
       ZoneSetTheme(rm_bonus_gumball, Gumball_Theme, 0, -1, -1);

/// Start Credits Theme.
    ZoneSetTheme(rm_flicky_credits, Credits_Theme, 0, -1, -1)

/// Reset.

    DeadFade = false;
    global.BGMVolume = global.MaxBGMV;
    global.SFXVolume = global.MaxSFXV;
  

