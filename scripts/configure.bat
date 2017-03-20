
if not "%~1"=="" (
  set C3PATH=%~1
  goto :Config
)

if "%CEF3_PATH%" == "" (
  echo Undefined CEF3_PATH, run setup before running build script!
  goto :Done
)

set C3PATH=%CEF3_PATH%
:Config

stack build --only-configure^
  --extra-lib-dirs="%C3PATH%\Release"^
  --extra-include-dirs="%C3PATH%"^
  --extra-include-dirs="%C3PATH%\include"^
  --extra-include-dirs="%C3PATH%\include\capi"

:Done
