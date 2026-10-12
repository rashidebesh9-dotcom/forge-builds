#!/bin/bash

# Set up Theos
export THEOS=/opt/theos

# Navigate to the project directory
cd EightBallPoolCheatMenu

# Build the tweak
make package

# Create a DEB package
mv *.deb EightBallPoolCheatMenu.deb

# Create an IPA package
dpkg-deb -x EightBallPoolCheatMenu.deb EightBallPoolCheatMenu
cd EightBallPoolCheatMenu
rm -rf DEBIAN
zip -r../EightBallPoolCheatMenu.ipa *

# Clean up
cd..
rm -rf EightBallPoolCheatMenu EightBallPoolCheatMenu.deb

echo "IPA package created: EightBallPoolCheatMenu.ipa"