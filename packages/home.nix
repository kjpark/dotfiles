# REF
# https://stackoverflow.com/questions/50802880/reproducible-nix-env-i-with-only-nix-no-nixos

# USE
# nix-env -if home.nix
# nix-env -e home

let
  pkgs = import <nixpkgs> {};
  inherit (pkgs) buildEnv;
in buildEnv {
  name = "home";
  paths = [
    pkgs.bat
    pkgs.exa
    pkgs.figlet
    pkgs.git
    pkgs.lolcat
    pkgs.ripgrep
    pkgs.starship
    pkgs.zoxide
  ];
}
