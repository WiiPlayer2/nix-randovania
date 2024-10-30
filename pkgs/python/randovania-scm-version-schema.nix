{ lib
, buildPythonPackage
, fetchPypi
, setuptools
, wheel
, setuptools-scm
, dulwich
}:

buildPythonPackage rec {
  pname = "randovania_scm_version_schema";
  version = "0.3.2";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-9Vy2StHhWjfMDE38mW6ej/LeTl/vFdk+3S7A4OoA7hQ=";
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
    dulwich
  ];
}
