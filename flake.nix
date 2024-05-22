{
  description = "Kubernetes Lab with Talos Linux";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";

  outputs = { self, nixpkgs }:
  let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in {
    devShells.x86_64-linux.default = pkgs.mkShell {
      name = "Kubernetes Lab Environment";

      buildInputs = [
        pkgs.curl
      ];

      shellHook = "echo '=> Entering \"Kubernetes Lab\" environment.'";
    };
  };
}
