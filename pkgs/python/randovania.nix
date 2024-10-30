{ lib
, buildPythonPackage
, fetchPypi
, setuptools
, wheel
, setuptools-scm
, dulwich
, pyqt-distutils
, randovania-scm-version-schema
, open-dread-rando
, python-slugify
, bitstruct
, cryptography
, networkx
, tenacity
, python-socketio
, aiohttp
, aiofiles
, frozendict
, sentry-sdk
}:

buildPythonPackage rec {
  pname = "randovania";
  version = "8.5.0";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-a1IPhoKWk8bgF1r6Qsutia71UsTASnhZUGYzveMXER8=";
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
    pyqt-distutils
    randovania-scm-version-schema
    open-dread-rando
    python-slugify
    bitstruct
    cryptography
    networkx
    tenacity
    python-socketio
    aiohttp
    aiofiles
    frozendict
    sentry-sdk
  ];
}
