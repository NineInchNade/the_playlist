with import <nixpkgs> {}; {
  env = stdenv.mkDerivation {
    name = "playlist-tools";
    buildInputs = [
      ffmpeg
      parallel
      pypyPackages.youtube-dl-light
      sox
      vorbisgain
      mpv
    ];
    SSL_CERT_FILE="/etc/ssl/certs/ca-bundle.crt";
  };
}
