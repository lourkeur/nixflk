{ modulesPath, ... }: {
  imports = [
    ../users/root
    ../users/louis
    "${modulesPath}/installer/cd-dvd/iso-image.nix"
  ];

  boot.initrd.kernelModules = [ "dm-raid" ];

  isoImage.makeEfiBootable = true;
  isoImage.makeUsbBootable = true;
  networking.networkmanager.enable = true;

  services.mingetty.autologinUser = "louis";

  programs.gnupg.agent.pinentryFlavor = "curses";

  isoImage.contents = [ {
    source = ../secrets/id_niximg;
    target = "id_niximg";
  } ];
  programs.ssh.extraConfig = ''
    IdentityFile /iso/id_niximg
  '';
}