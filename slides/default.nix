{ pkgs
, stdenvNoCC
, ...
}:

stdenvNoCC.mkDerivation {
  name = "slides";

  srcs = [
    (./.)
    (fetchGit {
      url = "https://gitlab.lrde.epita.fr/lrde/share.git";
      allRefs = true;
      rev = "6f111d90c51600909b2ee41f040f270b56031497";
    })
  ];

  enableParallelBuilding = true;

  unpackPhase = ''
    runHook preUnpack

    srcsarrays=($srcs)
    cp -r "''${srcsarrays[0]}"/* .
    cp -r "''${srcsarrays[1]}" ./share

    runHook postUnpack
  '';

  patchPhase = ''
    chmod -R u+w .
  '';

  installPhase = ''
    mkdir -p $out/slides
    mv *.pdf $out/slides
  '';

  nativeBuildInputs = with pkgs; [
    which
    python3Packages.pygments
    texlive.combined.scheme-full
  ];
}
