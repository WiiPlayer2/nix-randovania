{ lib
, buildPythonPackage
, fetchPypi
, setuptools
, wheel
, zstd
, setuptools-scm
, construct
, randovania-lupa
}:

buildPythonPackage rec {
  pname = "mercury_engine_data_structures";
  version = "0.31.1";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-uQDXdXK57LJoVa5D4npQa4wvtKpJpHat4bWasU9sg0E=";
  };

  # do not run tests
  doCheck = false;

  # specific to buildPythonPackage, see its reference
  pyproject = true;
  build-system = [
    setuptools
    wheel
  ];

  dependencies = [
    setuptools-scm
    construct
    zstd
    randovania-lupa
  ];
}
