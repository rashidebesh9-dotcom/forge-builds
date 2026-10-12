```bash
#!/bin/bash

# Install Theos if not installed
if! command -v theos &> /dev/null
then
    git clone --recursive https://github.com/theos/theos.git /opt/theos
    export THEOS=/opt/theos
    echo "export THEOS=/opt/theos" >> ~/.profile
fi

# Build tweak
make clean
make package

# Inject dylib into IPA
IPA_PATH="path/to/8ballpool.ipa"
OPTOOL_PATH="/opt/Optool/optool"
DYLIB_PATH="./.theos/obj/debug/8ballPoolCheat.dylib"
UNPACKED_PATH="./Payload/8ballpool.app"

unzip -qo "$IPA_PATH" -d. 
$OPTOOL_PATH install -c load -p "@executable_path/Frameworks/CydiaSubstrate.framework/CydiaSubstrate" -t "$UNPACKED_PATH/8ballpool" "$DYLIB_PATH" 
cp "$DYLIB_PATH" "$UNPACKED_PATH/Frameworks/8ballPoolCheat.dylib"

# Sign with ldid
ldid -S "$UNPACKED_PATH/8ballpool"

# Package IPA
cd Payload
zip -qry../8ballpool_hacked.ipa.
cd..

# Clean up
rm -rf Payload
echo "Hacked IPA created: 8ballpool_hacked.ipa"