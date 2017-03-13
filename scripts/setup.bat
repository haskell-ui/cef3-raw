
echo 1
if "%CEF3_PATH%" == "" setx CEF3_PATH "C:\cef3-dev"
echo 2
if exist %CEF3_PATH% goto :eof
echo 3

curl -ocef1750_win64.7z -L https://github.com/haskell-ui/cef3-raw/releases/download/1750win64/cef1750_win64.7z
7z x cef1750_win64.7z
mkdir %CEF3_PATH%
echo 4
move cef1750_win64\* %CEF3_PATH%
echo 5
del cef1750_win64.7z
echo 6

dir

echo %CEF3_PATH%
echo 7
dir %CEF3_PATH%
