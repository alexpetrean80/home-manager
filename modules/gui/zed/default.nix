{ lib, ... }:
let
  zeddir = ".config/zed";
in
{
  home.file = {
    "${zeddir}/settings.json" = {
      text = lib.readFile ./config/settings.json;
      executable = false;
    };
    "${zeddir}/keymap.json" = {
      text = lib.readFile ./config/keymap.json;
      executable = false;
    };
  };

}
