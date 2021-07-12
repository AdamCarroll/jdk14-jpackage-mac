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

## Update (20 March 2021)

JDK 16 has now been released.  In this release `jpackage` has been promoted from "incubating" to "production-ready".  I've just tested this using v16+36 from [AdoptOpenJDK](https://adoptopenjdk.net) and everything now works and the signed build can be created without any problems.

## Update (12 July 2021)

I was able to create the installable bundle for [VocabHunter](https://github.com/VocabHunter/VocabHunter) with `jpackage` from JDK 16.  I've written up the details in the article [Installable Java Apps with jpackage](https://vocabhunter.github.io/2021/07/10/installable-java-apps-with-jpackage.html).