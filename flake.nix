{
  description = "Kubernetes Lab with Talos Linux";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";

  outputs = { self, nixpkgs }: {
    devShells.x86_64-linux.default = nixpkgs.legacyPackages.x86_64-linux.mkShell {
      name = "Kubernetes Lab Environment";

      buildInputs = [
        nixpkgs.legacyPackages.x86_64-linux.curl
      ];

      shellHook = "echo '=> Entering \"Kubernetes Lab\" environment.'";
    };
  };
}
