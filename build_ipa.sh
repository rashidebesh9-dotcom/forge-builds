#!/bin/bash
export THEOS_DEVICE_IP=localhost
make package install FINALPACKAGE=1
rm -rf.theos-packages
rm -rf packages
rm -rf obj
