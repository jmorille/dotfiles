#!/bin/bash

echo "removing evaluation key"
rm ~/.IntelliJIdea*/config/eval/idea*.evaluation.key
rm ~/.PhpStorm*/config/eval/PhpStorm*.evaluation.key

echo "resetting evalsprt in options.xml"
sed -i '/evlsprt/d' ~/.IntelliJIdea*/config/options/options.xml
sed -i '/evlsprt/d' ~/.PhpStorm*/config/options/options.xml

echo "resetting evalsprt in prefs.xml"
sed -i '/evlsprt/d' ~/.java/.userPrefs/prefs.xml

