#!/usr/bin/env bash

# Accept licenses
${ANDROID_HOME}/tools/bin/sdkmanager --licenses
yes | sdkmanage

# Install dependencies
./gradlew androidDependencies || true