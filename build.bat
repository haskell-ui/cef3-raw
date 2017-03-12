
curl -ocef1750_win64.7z -L https://github.com/haskell-ui/cef3-raw/releases/download/1750win64/cef1750_win64.7z
7z x cef1750_win64.7z
rename cef1750_win64 cef
stack setup --skip-msys --no-terminal > NUL
set tp=%cd%\cef
stack build^
  --extra-lib-dirs="%tp%\Release"^
  --extra-include-dirs="%tp%"^
  --extra-include-dirs="%tp%\include"^
  --extra-include-dirs="%tp%\include\capi"
