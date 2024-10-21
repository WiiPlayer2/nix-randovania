{ lib
, buildPythonPackage
, fetchPypi
, setuptools
, wheel
, ips
, keystone-engine
, setuptools-scm
, jsonschema
, mercury-engine-data-structures
, json-delta
}:

buildPythonPackage rec {
  pname = "open_dread_rando";
  version = "2.13.1";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-9+Mdo3fJRld5mMdfrm9sbYWv0egs804lGmebmBuF/Pc=";
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
    ips
    keystone-engine
    setuptools-scm
    jsonschema
    mercury-engine-data-structures
    json-delta
  ];
}
