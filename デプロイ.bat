@echo off
setlocal
cd /d "%~dp0"
set LOG=deploy-log.txt

echo ==========================================
echo   UI Mock Gallery - One Click Deploy
echo ==========================================
echo.

echo [Log] %CD%\%LOG%
echo Deploy start %date% %time% > "%LOG%"
echo Folder: %CD% >> "%LOG%"

REM ---- check git ----
where git >> "%LOG%" 2>&1
if errorlevel 1 (
  echo.
  echo [ERROR] Git is NOT installed.
  echo   Opening download page...
  echo   After install, run this file again.
  echo GIT NOT FOUND >> "%LOG%"
  start https://git-scm.com/download/win
  echo.
  pause
  exit /b
)
echo [OK] Git found.

REM ---- first time setup ----
if not exist ".git" (
  echo [Setup] initializing repository...
  echo --- git init --- >> "%LOG%"
  git init >> "%LOG%" 2>&1
  git branch -M main >> "%LOG%" 2>&1
  git remote add origin https://github.com/aodaisho-nk/ui-mock-gallery.git >> "%LOG%" 2>&1
  echo [Note] A GitHub login window may appear. Please sign in.
)

REM ---- make sure remote is correct ----
git remote set-url origin https://github.com/aodaisho-nk/ui-mock-gallery.git >> "%LOG%" 2>&1

REM ---- user info (required by git) ----
git config user.email >nul 2>nul || git config user.email "shota-nakano@shoace.jp"
git config user.name  >nul 2>nul || git config user.name  "aodaisho-nk"

echo [1/3] staging files...
echo --- git add --- >> "%LOG%"
git add -A >> "%LOG%" 2>&1

echo [2/3] committing...
echo --- git commit --- >> "%LOG%"
git commit -m "update %date% %time%" >> "%LOG%" 2>&1

echo [3/3] pushing to GitHub...
echo --- git push --- >> "%LOG%"
git push -u origin main --force >> "%LOG%" 2>&1
if errorlevel 1 (
  echo.
  echo [ERROR] Push failed.
  echo   Please open deploy-log.txt and check the last lines.
  echo.
  echo ---- last lines of log ----
  powershell -NoProfile -Command "Get-Content '%LOG%' -Tail 15"
  echo ---------------------------
  echo.
  pause
  exit /b
)

echo.
echo ==========================================
echo   SUCCESS - deployed to GitHub
echo   Live in 1-2 min:
echo   https://ui-mock-gallery-git.vercel.app
echo ==========================================
echo.
echo ---- last lines of log ----
powershell -NoProfile -Command "Get-Content '%LOG%' -Tail 8"
echo ---------------------------
echo.
pause
start https://ui-mock-gallery-git.vercel.app
exit /b
