{
  description = "My Jupyter Notebook Development Environment";

  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixos-unstable;
  };

  outputs = { self, nixpkgs }: {
    devShell = nixpkgs.mkShell {
      buildInputs = [
        nixpkgs.jupyter
        self.python38Packages.jupyter
        self.python38Packages.numpy
        self.python38Packages.matplotlib
        # Add any other dependencies you need
      ];
    };
  };
}
