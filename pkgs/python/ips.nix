{ lib
, buildPythonPackage
, fetchPypi
, setuptools
, wheel
}:

buildPythonPackage rec {
  pname = "ips.py";
  version = "0.1.2";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-uR3d4eoUaTe45guMW/ckq1sQAJCbWIxm8mjmFgWBWR0=";
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
