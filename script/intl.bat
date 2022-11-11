@echo off

set param1=%1
if %param1%==l10n (
    cd ../
    flutter pub run intl_utils:generate
    cd script
) else (
    echo 2
)

@REM else (
@REM echo 2
@REM )




