{
  description = "Kubernetes Lab with Talos Linux";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";

  outputs = { self, nixpkgs }: {
    devShells.x86_64-linux.default = let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in pkgs.mkShell {
      name = "Kubernetes Lab Environment";

      buildInputs = with pkgs; [ curl ];

      shellHook = "echo '=> Entering \"Kubernetes Lab\" environment.'";
    };
  };
}
