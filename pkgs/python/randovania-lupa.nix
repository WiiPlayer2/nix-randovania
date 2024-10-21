{ lib
, buildPythonPackage
, fetchPypi
, setuptools
, wheel
, cython
}:

buildPythonPackage rec {
  pname = "randovania-lupa";
  version = "2.0.1";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-kJmjVt043wAWABe16EnfMIapChUqkx/T/gcjwRzE6B8=";
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
    cython
  ];
}
