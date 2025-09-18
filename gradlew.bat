@echo off
where gradle >nul 2>nul
if %ERRORLEVEL%==0 (
  gradle %*
) else (
  echo Gradle not found. Please install Gradle or allow CI to download it.
  exit /b 1
)
