{ pkgs }: {
  deps = [
    pkgs.python310
    pkgs.python310Packages.pip
    pkgs.nodejs_18
  ];
  env = {
    PYTHON_LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
      pkgs.libffi
    ];
    PYTHONBIN = "${pkgs.python310}/bin/python3.10";
    LANG = "C.UTF-8";
  };
}
