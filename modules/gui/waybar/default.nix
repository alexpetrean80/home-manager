{lib, ...}: let
  waybarDir = ".config/waybar";
in {
  home.file = {
    "${waybarDir}/config.jsonc" = {
      text = lib.readFile ./config/config.jsonc;
      executable = false;
    };
    "${waybarDir}/style.css" = {
      text = lib.readFile ./config/style.css;
      executable = false;
    };
    "${waybarDir}/mocha.css" = {
      text = lib.readFile ./config/mocha.css;
    };
  };
}
