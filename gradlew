#!/bin/sh

# Gradle wrapper script
GRADLE_VERSION="8.5"
APP_HOME=$(dirname "$(dirname "$0")")

# Download Gradle if not present
GRADLE_HOME="$HOME/.gradle/wrapper/dists/gradle-${GRADLE_VERSION}-bin"
if [ ! -d "$GRADLE_HOME" ]; then
    echo "Downloading Gradle ${GRADLE_VERSION}..."
    mkdir -p "$HOME/.gradle/wrapper/dists"
    cd "$HOME/.gradle/wrapper/dists"
    curl -fsSL "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" -o gradle.zip
    unzip -q gradle.zip
    rm gradle.zip
fi

# Find gradle directory
GRADLE_DIR=$(ls -d "$HOME/.gradle/wrapper/dists/gradle-${GRADLE_VERSION}"* 2>/dev/null | head -1)
if [ -z "$GRADLE_DIR" ]; then
    GRADLE_DIR="$HOME/.gradle/wrapper/dists/gradle-${GRADLE_VERSION}-bin/gradle-${GRADLE_VERSION}"
fi

exec "$GRADLE_DIR/bin/gradle" "$@"
