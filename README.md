# jdk14-jpackage-mac

## Description

A small, simple test for running the `jpackage` tool on a minimal JavaFX application on the Mac.

This project was created to investigate a problem in creating signed builds on the Mac environment with JDK 14.

## Instructions For Use

Build the project with JDK 14 as follows:
````
$ ./gradlew clean build
````

To create a signed `.dmg` bundle, run the following:
````
$ bin/create-signed-dmg.sh
````

The resulting `.dmg` file should be created in the directory `build/bundle/`.

Alternatively, you can create an unsigned bundle as follows:
````
$ bin/create-unsigned-dmg.sh
````
