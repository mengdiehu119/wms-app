#!/usr/bin/env sh

# Gradle startup script

DEFAULT_JVM_OPTS="-Xmx64m -Xms64m"
APP_NAME="Gradle"
APP_BASE_NAME=$(basename "$0")

# Determine the Java command to use
if [ -n "$JAVA_HOME" ] ; then
    if [ -x "$JAVA_HOME/jre/sh/java" ] ; then
        JAVACMD="$JAVA_HOME/jre/sh/java"
    else
        JAVACMD="$JAVA_HOME/bin/java"
    fi
    if [ ! -x "$JAVACMD" ] ; then
        die "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME"
    fi
else
    JAVACMD="java"
    which java >/dev/null 2>&1 || die "ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH."
fi

# Find gradle wrapper jar
CLASSPATH="$APP_BASE_NAME"-wrapper.jar
if [ -f "$CLASSPATH" ]; then
    :
elif [ -f "../$CLASSPATH" ]; then
    CLASSPATH="../$CLASSPATH"
else
    echo "ERROR: Could not find gradle wrapper jar."
    exit 1
fi

# Execute gradle
exec "$JAVACMD" $DEFAULT_JVM_OPTS -classpath "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
