{
  description = "nixos config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    zen-browser.url = "github:MarceColl/zen-browser-flake";
  };

   outputs = inputs@{ flake-parts, ... }:
   {};
}
