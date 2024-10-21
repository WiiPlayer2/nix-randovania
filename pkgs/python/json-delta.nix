{ lib
, buildPythonPackage
, fetchPypi
, setuptools
, wheel
}:

buildPythonPackage rec {
  pname = "json_delta";
  version = "2.0.2";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-leo/+ZCPx9Y0wn/+wR24/Y2TWqPoldcwKRXTlLEOAyE=";
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
  ];
}
