let
  pkgs = import <nixpkgs> { };
in
pkgs.mkShell {
  packages = [
    (pkgs.python3.withPackages (
      pp:
      (with pp; [
        python-openems
        python-csxcad
        python-lsp-server
        python-lsp-ruff
        numpy
        matplotlib
      ])
    ))
  ];
}
