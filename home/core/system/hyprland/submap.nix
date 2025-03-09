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

    # will switch to a submap called move
    bind=$mainMod ALT,M,submap,move

    # will start a submap called "move"
    submap=move
    
    # sets repeatable binds for moving the active window
    bind=,right,movewindow,r
    bind=,left,movewindow,l
    bind=,up,movewindow,u
    bind=,down,movewindow,d
    
    bind=,l,movewindow,r
    bind=,h,movewindow,l
    bind=,k,movewindow,u
    bind=,j,movewindow,d
    
    # use reset to go back to the global submap
    bind=,escape,submap,reset 
    
    # will reset the submap, meaning end the current one and return to the global one
    submap=reset
    
  '';

}
