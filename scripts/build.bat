
if "%CEF3_PATH%" == "" (
  echo Undefined CEF3_PATH, run setup before running build script!
  goto :Done
)

stack setup --skip-msys --no-terminal > NUL
stack install^
  --extra-lib-dirs="%CEF3_PATH%\Release"^
  --extra-include-dirs="%CEF3_PATH%"^
  --extra-include-dirs="%CEF3_PATH%\include"^
  --extra-include-dirs="%CEF3_PATH%\include\capi"

:Done
