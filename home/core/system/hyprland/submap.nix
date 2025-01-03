{

  wayland.windowManager.hyprland.extraConfig = ''
    bind=$mainMod ALT,R,submap,resize

    # will start a submap called "resize"
    submap=resize
    
    # sets repeatable binds for resizing the active window
    binde=,l,resizeactive,10 0
    binde=,h,resizeactive,-10 0
    binde=,k,resizeactive,0 -10
    binde=,j,resizeactive,0 10
    
    # use reset to go back to the global submap
    bind=,escape,submap,reset 
    
    # will reset the submap, meaning end the current one and return to the global one
    submap=reset
    
  '';

}
