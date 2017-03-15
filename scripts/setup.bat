
if "%CEF3_PATH%" == "" (
   setx CEF3_PATH "C:\cef3-dev"
   set CEF3_PATH=C:\cef3-dev
)
if exist "%CEF3_PATH%" (goto :Done)

curl -ocef1750_win64.7z -L https://github.com/haskell-ui/cef3-raw/releases/download/1750win64/cef1750_win64.7z
7z x cef1750_win64.7z > NUL
mkdir %CEF3_PATH%
xcopy /E /Q cef1750_win64 %CEF3_PATH%
del cef1750_win64.7z
rmdir /S /Q cef1750_win64

:Done
