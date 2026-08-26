@echo off
setlocal
chcp 65001 >nul
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0Tools\CreateSubmission.ps1" -ProjectRoot "%~dp0." -SelectInExplorer
if errorlevel 1 (
  set "exitCode=1"
) else (
  set "exitCode=0"
)
echo.
if "%exitCode%"=="0" (
  echo 提出ZIPの作成処理が完了しました。
) else (
  echo 提出ZIPを作成できませんでした。上の理由を確認してください。
)
echo.
pause
exit /b %exitCode%
