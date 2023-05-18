{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  packages = [
    (pkgs.python310.withPackages (ps:
      with ps; [
        pip
      ]))
  ];
}
