@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem Gradle startup script for Windows
@rem ##########################################################################

set APP_BASE_NAME=%~n0
set APP_HOME=%~dp0

set DEFAULT_JVM_OPTS=-Xmx64m -Xms64m

if defined JAVA_HOME (
    set JAVACMD=%JAVA_HOME%\bin\java.exe
) else (
    set JAVACMD=java.exe
)

set CLASSPATH=%APP_HOME%\gradle\wrapper\gradle-wrapper.jar

"%JAVACMD%" %DEFAULT_JVM_OPTS% -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %*
