#!/bin/bash

jpackage \
  --type dmg \
  --module-path 'build/modules' \
  --verbose \
  --add-modules javafx.controls \
  --input 'build/libraries' \
  --dest "build/bundle" \
  --name HelloFX \
  --main-jar 'jdk14-jpackage-mac.jar' \
  --main-class 'demo.HelloFX' \
  --mac-sign
