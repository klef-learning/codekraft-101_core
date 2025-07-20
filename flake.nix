{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
		flake-utils.url = "github:numtide/flake-utils";
		ipaexfont = {
			url = "https://moji.or.jp/wp-content/ipafont/IPAexfont/IPAexfont00401.zip";
			flake = false;
		};
		dejavu = {
			url = "https://github.com/dejavu-fonts/dejavu-fonts/releases/download/version_2_37/dejavu-fonts-ttf-2.37.tar.bz2";
			flake = false;
		};
		ibm-plex = {
			url = "https://github.com/IBM/plex/releases/download/v6.0.1/TrueType.zip";
			flake = false;
		};
		klee = {
			url = "github:fontworks-fonts/klee";
			flake = false;
		};
		zen-kurenaido = {
			url = "github:googlefonts/zen-kurenaido";
			flake = false;
		};
  };

  outputs = { self, nixpkgs, flake-utils, ipaexfont, dejavu, ibm-plex, klee, zen-kurenaido }:
		flake-utils.lib.eachDefaultSystem(system:
		let
			pkgs = nixpkgs.legacyPackages.${system};
		in
		{
			packages.default = pkgs.stdenv.mkDerivation {
				pname = "codekraft-101_core";
				version = "0.1.0";
				src = ./.;
				nativeBuildInputs = with pkgs; [
					typst
					unzip
				];
				buildPhase = ''
					export TYPST_FONT_PATHS="${ipaexfont}":"${dejavu}":"${ibm-plex}":"${klee}/fonts/ttf":"${zen-kurenaido}/fonts/ttf"
					typst compile ./typst/main.typ output.pdf
					mkdir -p $out
					cp output.pdf $out/codekraft-101_core.pdf
				'';
			};
		});
}
