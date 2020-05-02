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

## Notes

This repository was created to help in reporting a problem creating signed packages on the Mac.  The problem was reported:

* [AdoptOpenJDK issue](https://github.com/AdoptOpenJDK/openjdk-build/issues/1718)
* [OpenJDK Code Tools Dev mailing list](https://mail.openjdk.java.net/pipermail/code-tools-dev/2020-May/000595.html)
* [OpenJDK Core Libs Dev mailing list](https://mail.openjdk.java.net/pipermail/core-libs-dev/2020-May/066194.html) (redirected by list administrator)
* [Twitter thread](https://twitter.com/vocabhunterapp/status/1256248440784392192?s=20)
