# Social Media Downloader Startup Script
Write-Host "Starting Social Media Downloader..." -ForegroundColor Green

# Check if Node.js is installed
try {
    $nodeVersion = node --version
    Write-Host "Node.js version: $nodeVersion" -ForegroundColor Yellow
} catch {
    Write-Host "Error: Node.js is not installed or not in PATH" -ForegroundColor Red
    Write-Host "Please install Node.js from https://nodejs.org/" -ForegroundColor Yellow
    Read-Host "Press Enter to exit"
    exit 1
}

# Start backend server
Write-Host "`nStarting backend server..." -ForegroundColor Blue
$backendJob = Start-Job -ScriptBlock { 
    Set-Location "server"
    npm start 
}

# Wait a moment for backend to start
Start-Sleep -Seconds 3

# Start frontend server
Write-Host "Starting frontend development server..." -ForegroundColor Blue
$frontendJob = Start-Job -ScriptBlock { 
    npm run dev 
}

Write-Host "`nBoth servers are starting..." -ForegroundColor Green
Write-Host "Frontend: http://localhost:3000" -ForegroundColor Cyan
Write-Host "Backend API: http://localhost:3001" -ForegroundColor Cyan

# Wait for servers to start
Start-Sleep -Seconds 5

# Open browser
Write-Host "`nOpening browser..." -ForegroundColor Yellow
Start-Process "http://localhost:3000"

Write-Host "`nApplication is running!" -ForegroundColor Green
Write-Host "Press 'q' to stop all servers and exit..." -ForegroundColor Yellow

# Wait for user to quit
do {
    $key = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
} while ($key.Character -ne 'q')

# Stop servers
Write-Host "`nStopping servers..." -ForegroundColor Red
Stop-Job $backendJob, $frontendJob
Remove-Job $backendJob, $frontendJob

Write-Host "Servers stopped. Goodbye!" -ForegroundColor Green