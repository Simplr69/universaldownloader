@echo off
echo Installing Social Media Downloader for PRODUCTION use...

echo.
echo WARNING: This will install REAL downloading capabilities!
echo Make sure you have permission to download content and respect copyright laws.
echo.
pause

echo.
echo Installing frontend dependencies...
call npm install
if %errorlevel% neq 0 (
    echo Failed to install frontend dependencies
    pause
    exit /b 1
)

echo.
echo Installing backend dependencies with production tools...
cd server
call npm install
if %errorlevel% neq 0 (
    echo Failed to install backend dependencies
    pause
    exit /b 1
)

echo.
echo Setting up production environment...
if not exist .env (
    copy .env.example .env
    echo Created .env file - please edit for production
)

echo Creating directories...
if not exist downloads mkdir downloads
if not exist logs mkdir logs
if not exist cache mkdir cache

cd ..

echo.
echo Production installation completed!
echo Edit server\.env for production settings
echo Run start-production.bat to start
echo.
pause