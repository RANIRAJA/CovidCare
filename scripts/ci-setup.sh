#!/usr/bin/env bash

# Accept licenses
${ANDROID_HOME}/tools/bin/sdkmanager --licenses
dependencies:
  pre:
    # Android SDK Build-tools, revision 25.0.2
    - if [ ! -d "/usr/local/android-sdk-linux/build-tools/25.0.2" ]; then echo y | android update sdk --no-ui --all --filter "build-tools-25.0.2"; fi
    - echo y | android update sdk --no-ui --all --filter "extra-google-m2repository"
  cache_directories:
    - ~/.gradle
    - /usr/local/android-sdk-linux/platforms/android-25
    - /usr/local/android-sdk-linux/build-tools/25.0.2
    - /usr/local/android-sdk-linux/tools
    - /usr/local/android-sdk-linux/extras/android/m2repository

# Install dependencies
./gradlew androidDependencies || true