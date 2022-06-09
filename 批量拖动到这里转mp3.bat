@echo off

title ffmpeg之批量转mp3

rem 注：原文件名不能有“)”、“^”、“&”、“=”、“;”、“,”符号

set ffmpegpath=%~dp0

md output

for %%a in (%*) do (

  ::"%ffmpegpath%ffmpeg.exe" -i %%a -f mp3 "output\%ffmpegpath%%%~na.mp3"
  ffmpeg -i %%a -f mp3 "output\%%~na.mp3"

)

echo.

echo 转换完成，按任意键退出....

pause>nul