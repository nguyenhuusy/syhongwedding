@echo off

set /a counter=0

for %%f in (*.jpg) do (
	C:\libwebp\bin\cwebp.exe -q 100 %%f -o %%~nf.webp
	set /A counter=counter+1
)

echo ************************************
echo %counter% files have been processed.
echo ************************************

pause