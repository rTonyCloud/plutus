self: super: {
  python3 = super.python3.override {
    packageOverrides = python-self: python-super: {
      # New version has much better citation styles
      sphinxcontrib-bibtex = python-super.sphinxcontrib-bibtex.overrideAttrs (oldAttrs: rec {
        version = "2.2.0";
        src = python-super.fetchPypi {
          inherit (oldAttrs) pname;
          inherit version;
          sha256 = "1cp3dj5bbl122d64i3vbqhjhfplnh1rwm9dw4cy9hxjd2lz8803m";
        };
      });
    };
  };
}
