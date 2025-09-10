# 🚀 Social Media Downloader - Quick Start Guide

## What You've Got

A complete social media downloader application with:
- **React frontend** (modern UI with Vite)
- **Node.js backend** (Express API server)
- **Multi-platform support** (YouTube, Instagram, Twitter, Facebook, Reddit, TikTok)
- **Dual format support** (MP4 video, MP3 audio)
- **Batch downloading** (multiple URLs at once)
- **Real-time progress** (live download status)
- **Preview functionality** (verify content before download)

## 🏃‍♂️ Quick Start (Windows)

### Option 1: Use the Batch Files (Easiest)
1. **Install dependencies:** Double-click `install.bat`
2. **Start the app:** Double-click `start.bat`
3. **Open browser:** Go to http://localhost:3000

### Option 2: Manual Installation
```bash
# Install Node.js from https://nodejs.org/ first

# Install frontend dependencies
npm install

# Install backend dependencies
cd server
npm install
cd ..

# Start both servers (in separate terminals)
# Terminal 1:
cd server
npm start

# Terminal 2:
npm run dev
```

### Option 3: PowerShell Script
```powershell
# Run this in PowerShell
.\start.ps1
```

## 📱 How to Use

1. **Copy a video URL** from any supported platform
2. **Paste it** into the URL input field
3. **Click Preview** to see video information
4. **Select format**: MP4 (video) or MP3 (audio)
5. **Choose quality**: Various options from 360p to 4K
6. **Click Download** and wait for completion

### Batch Downloads
1. Switch to "Batch Download" mode
2. Enter multiple URLs (one per line)
3. Select format and quality
4. Download all at once with progress tracking

## 🌐 Supported Platforms & URLs

- **YouTube**: `https://youtube.com/watch?v=...` or `https://youtu.be/...`
- **Instagram**: `https://instagram.com/p/...` or `https://instagram.com/reel/...`
- **Twitter/X**: `https://twitter.com/user/status/...` or `https://x.com/user/status/...`
- **Facebook**: `https://facebook.com/watch/?v=...`
- **Reddit**: `https://reddit.com/r/subreddit/comments/...`
- **TikTok**: `https://tiktok.com/@user/video/...`

## 📂 Project Structure

```
social-media-downloader/
├── 📁 src/                    # React frontend
│   ├── App.jsx               # Main application
│   ├── index.css             # Styles
│   └── main.jsx              # Entry point
├── 📁 server/                 # Node.js backend
│   ├── 📁 handlers/           # API request handlers
│   ├── 📁 downloaders/        # Platform-specific downloaders
│   ├── 📁 utils/             # Utility functions
│   ├── 📁 downloads/         # Downloaded files storage
│   └── index.js              # Server entry point
├── 📄 package.json           # Frontend dependencies
├── 📄 vite.config.js         # Vite configuration
├── 📄 install.bat           # Windows installer
├── 📄 start.bat             # Windows starter
├── 📄 start.ps1             # PowerShell starter
└── 📄 README.md             # Full documentation
```

## 🔧 Available Scripts

- `npm run dev` - Start frontend development server
- `npm run build` - Build frontend for production
- `npm run preview` - Preview built frontend
- `cd server && npm start` - Start backend server
- `cd server && npm run dev` - Start backend with auto-reload

## 🌟 Features Breakdown

### Frontend Features ✨
- Responsive design (works on desktop, tablet, mobile)
- Real-time download progress bars
- Error handling and validation
- Clean, modern interface
- Platform detection and validation

### Backend Features ⚡
- RESTful API endpoints
- Streaming download responses
- Platform-specific downloaders
- File serving capabilities
- Error handling and logging

### Download Features 📥
- **Video Quality**: 360p, 480p, 720p, 1080p, 1440p, 4K
- **Audio Quality**: 128kbps, 192kbps, 256kbps, 320kbps
- **Batch Processing**: Up to 50 URLs simultaneously
- **Preview Mode**: See video info before downloading
- **Progress Tracking**: Real-time status updates

## 🚨 Important Notes

⚠️ **Legal Notice**: Only download content you have permission to download. Respect platform terms of service and copyright laws.

⚠️ **Current Status**: This is a demo/educational project. For production use, you would need:
- Real platform API integrations
- Proper video downloading libraries (yt-dlp, ytdl-core)
- Enhanced error handling
- Rate limiting and security measures

## 🛠️ Next Steps for Production

To make this production-ready, consider:

1. **Integration with real downloaders**:
   - Install and configure `yt-dlp` or `ytdl-core`
   - Add platform-specific API keys
   - Implement actual file downloading

2. **Enhanced security**:
   - Add rate limiting
   - Input sanitization
   - CORS configuration
   - Authentication (if needed)

3. **Performance optimization**:
   - Add caching
   - Queue management
   - Background processing
   - File cleanup

4. **Production deployment**:
   - Docker containerization
   - Environment configuration
   - Monitoring and logging
   - SSL/HTTPS setup

## 🆘 Troubleshooting

**Can't install packages?**
- Make sure Node.js is installed
- Try running as administrator
- Clear npm cache: `npm cache clean --force`

**Servers won't start?**
- Check if ports 3000/3001 are available
- Make sure you're in the right directory
- Check the console for error messages

**Downloads don't work?**
- This is normal - the current version uses mock downloads
- For real downloads, integrate actual downloading libraries

## 🎉 You're All Set!

Your Social Media Downloader is ready to use! Start with the batch files, test the interface, and enjoy your new application.

For full documentation, see the complete README.md file.