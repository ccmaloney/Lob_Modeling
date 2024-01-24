{
  description = "My Jupyter Notebook Development Environment";

  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixos-unstable;
  };

  outputs = { self, nixpkgs }: {
    devShell = nixpkgs.mkShell {
      buildInputs = [
        nixpkgs.jupyter
        # Add any other dependencies you need
      ];
    };
  };
}
