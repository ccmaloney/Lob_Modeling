{
  description = "My Python Environment with Jupyter Lab";

  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixpkgs-unstable;
  };

  outputs = { self, nixpkgs }:
    let
      pkgs = nixpkgs.legacyPackages.${self.system};
    in
    {
      devShell = pkgs.mkShell {
        buildInputs = [
          pkgs.python38
          pkgs.jupyterlab
        ];
      };
    };
}
