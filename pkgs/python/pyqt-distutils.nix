{ lib
, buildPythonPackage
, fetchPypi
, setuptools
, wheel
, docopt
}:

buildPythonPackage rec {
  pname = "pyqt-distutils";
  version = "0.7.3";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-7luMMNOwpHOlwj5DsqKc6OR/p7SNjckYFpU9o3vAU+g=";
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
    docopt
  ];
}
