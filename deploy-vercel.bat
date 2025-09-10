@echo off
echo Deploying Social Media Downloader to Vercel...

echo.
echo Checking Vercel CLI installation...
vercel --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Installing Vercel CLI...
    npm install -g vercel
    if %errorlevel% neq 0 (
        echo Failed to install Vercel CLI
        echo Please install manually: npm install -g vercel
        pause
        exit /b 1
    )
)

echo.
echo Building application...
call npm run build
if %errorlevel% neq 0 (
    echo Build failed! Please fix errors and try again.
    pause
    exit /b 1
)

echo.
echo Deploying to Vercel...
echo Note: This will deploy with limited functionality (video info only)
echo For full downloads, consider Railway, Render, or other platforms
echo.
pause

vercel --prod

echo.
echo Deployment completed!
echo Your app should be available at the provided URL
echo.
echo IMPORTANT: Vercel version limitations:
echo - Video information extraction only
echo - No real downloads due to platform constraints
echo - 30-second function timeout
echo.
echo For full functionality, consider deploying to:
echo - Railway (railway.app)
echo - Render (render.com) 
echo - DigitalOcean App Platform
echo.
pause