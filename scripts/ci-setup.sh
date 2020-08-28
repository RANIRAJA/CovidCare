#!/usr/bin/env bash

# Accept licenses
${ANDROID_HOME}/tools/bin/sdkmanager --licenses
yes | sdkmanager sdkmanager

# Install dependencies
./gradlew androidDependencies || true