{lib, ...}: let
  hyprdir = ".config/hypr";
  wofidir = ".config/wofi";
  # toConfig = name: {
  #   filename = "${hyprdir}/${name}";
  #   value = {
  #     text = lib.readFile ./. + "config/${name}";
  #     executable = false;
  #   };
  # };
in {
# wayland.windowManager.hyprland = {
#   enable = true;
# };
  home.file = {
    "${hyprdir}/hyprland.conf" = {
      text =''
        ${lib.readFile ./config/mocha.conf}
       ${lib.readFile ./config/hyprland.conf}
       '';
      executable = false;
    };
    # "${hyprdir}/hyprpaper.conf" = {
    #   text = lib.readFile ./config/hyprpaper.conf;
    #   executable = false;
    # };
    "${hyprdir}/hyprlock.conf" = {
      text = ''
        ${lib.readFile ./config/mocha.conf}
        ${lib.readFile ./config/hyprlock.conf}
      '';
      executable = false;
    };

    "${wofidir}/style.css" = {
      text = lib.readFile ./config/wofi.css;
      executable = false;
    };
  };
}
