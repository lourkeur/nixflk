# Packages in this list are imported by hosts/default.nix, and are pulled from
# nixpkgs master instead of the default nixos release. This doesn't actually
# install them, just creates an overlay to pull them from master if they are
# installed by the user elsewhere in the configuration.
pkgs:
with pkgs;
[
    brave
    firefox-bin
    tor-browser-bundle-bin
    vscodium
    vscode-with-extensions
    thunderbird-bin

    obs-studio

    android-studio
]
