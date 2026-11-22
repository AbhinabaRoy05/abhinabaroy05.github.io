@echo off
rem Double-click to publish your latest changes to GitHub (the live site updates in ~1 minute).
cd /d "%~dp0"
rem Rebuild the no-contact version (showcase.html) from index.html first.
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0build-showcase.ps1"
if errorlevel 1 (
  echo Could not build showcase.html, nothing was published.
  pause
  exit /b 1
)
git add -A
git commit -m "Update portfolio" || echo Nothing new to commit.
git push
pause
