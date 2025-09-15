#!/bin/bash

base=$(dirname $(readlink -f $0))
tool=$base/9pm/9pm.py

export TCLLIBPATH="$base/src"

echo "* Running all automated test, all should be OK!"
$tool -v --option cmdl-supplied $base/test/all.yaml
