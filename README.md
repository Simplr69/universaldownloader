# Social Media Downloader

A comprehensive, browser-based tool for downloading videos and audio from major social media platforms including YouTube, Instagram, Twitter/X, Facebook, Reddit, and TikTok.

## 🌟 Features

### Supported Platforms
- **YouTube**: Videos, shorts, playlists, live streams
- **Instagram**: Reels, stories, IGTV, posts
- **Twitter/X**: Videos, clips, embedded media
- **Facebook**: Posts, reels, videos
- **Reddit**: Embedded videos, v.redd.it content
- **TikTok**: Short videos, trending content

### Download Options
- **Video Formats**: MP4 with quality options from 360p to 4K/8K
- **Audio Formats**: MP3 with quality up to 320kbps
- **Batch Downloads**: Support for multiple URLs and playlists
- **Preview Mode**: Verify content before downloading

### User Experience
- Clean, responsive design works on desktop, tablet, and mobile
- No ads, pop-ups, or tracking
- Real-time progress indicators
- Error handling and validation
- No software installation required

## 🚀 Quick Start

### Prerequisites
- Node.js 18+ installed on your system
- npm or yarn package manager

### Installation

1. **Clone or download the project**
   ```bash
   # If you have git installed
   git clone <repository-url>
   cd social-media-downloader
   
   # Or download and extract the ZIP file
   ```

2. **Install frontend dependencies**
   ```bash
   npm install
   ```

3. **Install backend dependencies**
   ```bash
   cd server
   npm install
   cd ..
   ```

4. **Start the application**
   
   **Option A: Start both frontend and backend separately**
   ```bash
   # Terminal 1 - Start the backend server
   cd server
   npm start
   
   # Terminal 2 - Start the frontend development server
   npm run dev
   ```
   
   **Option B: Start both with one command (if you prefer)**
   ```bash
   # Install concurrently globally (one time setup)
   npm install -g concurrently
   
   # Add this script to your package.json and run:
   npm run dev-all
   ```

5. **Access the application**
   - Frontend: http://localhost:3000
   - Backend API: http://localhost:3001

## 📖 How to Use

### Single Download
1. Copy a video URL from any supported platform
2. Paste the URL into the input field
3. Click "Preview" to verify the content
4. Select format (MP4 for video, MP3 for audio)
5. Choose quality settings
6. Click "Download" and wait for completion

### Batch Download
1. Switch to "Batch Download" mode
2. Enter multiple URLs (one per line)
3. Select format and quality settings
4. Click "Download" to process all URLs
5. Monitor progress for each individual download

### Supported URL Formats
```
YouTube:
- https://youtube.com/watch?v=VIDEO_ID
- https://youtu.be/VIDEO_ID
- https://youtube.com/playlist?list=PLAYLIST_ID

Instagram:
- https://instagram.com/p/POST_ID/
- https://instagram.com/reel/REEL_ID/
- https://instagram.com/tv/TV_ID/

Twitter/X:
- https://twitter.com/user/status/TWEET_ID
- https://x.com/user/status/TWEET_ID

Facebook:
- https://facebook.com/watch/?v=VIDEO_ID
- https://facebook.com/user/videos/VIDEO_ID

Reddit:
- https://reddit.com/r/subreddit/comments/POST_ID
- https://v.redd.it/VIDEO_ID

TikTok:
- https://tiktok.com/@user/video/VIDEO_ID
```

## 🛠️ Technical Details

### Frontend Stack
- **React 18**: Modern UI framework
- **Vite**: Fast development and build tool
- **Lucide React**: Beautiful icons
- **Axios**: HTTP client for API calls
- **CSS3**: Custom responsive styling

### Backend Stack
- **Node.js**: Server runtime
- **Express**: Web framework
- **CORS**: Cross-origin resource sharing
- **Custom downloaders**: Platform-specific download handlers

### Architecture
```
┌─────────────────┐    HTTP/WebSocket    ┌─────────────────┐
│   React App     │ ←─────────────────→  │  Express API    │
│   (Frontend)    │                      │   (Backend)     │
└─────────────────┘                      └─────────────────┘
        │                                         │
        │                                         ▼
        │                                ┌─────────────────┐
        │                                │   Downloaders   │
        │                                │   - YouTube     │
        │                                │   - Instagram   │
        │                                │   - Twitter     │
        │                                │   - Generic     │
        │                                └─────────────────┘
        │                                         │
        ▼                                         ▼
┌─────────────────┐                      ┌─────────────────┐
│   Downloads     │                      │   File System  │
│   Directory     │                      │   & Storage    │
└─────────────────┘                      └─────────────────┘
```

## 📝 API Endpoints

### GET /api/health
Check server status
```json
{
  "status": "OK",
  "message": "Social Media Downloader API is running",
  "timestamp": "2024-01-15T10:30:00.000Z",
  "version": "1.0.0"
}
```

### POST /api/video-info
Get video information
```json
{
  "url": "https://youtube.com/watch?v=example"
}
```

### POST /api/download
Download single video/audio
```json
{
  "url": "https://youtube.com/watch?v=example",
  "format": "mp4",
  "quality": "720"
}
```

### POST /api/batch-download
Download multiple videos
```json
{
  "urls": ["url1", "url2", "url3"],
  "format": "mp4",
  "quality": "720"
}
```

### GET /api/platforms
Get supported platforms information

## 🔧 Configuration

### Environment Variables
Create a `.env` file in the server directory:
```
PORT=3001
DOWNLOADS_DIR=./downloads
MAX_CONCURRENT_DOWNLOADS=5
MAX_FILE_SIZE=500MB
```

### Quality Settings
- **Video**: 360p, 480p, 720p HD, 1080p FHD, 1440p 2K, 2160p 4K, Best Available
- **Audio**: 128 kbps, 192 kbps, 256 kbps, 320 kbps, Best Available

## 🚨 Important Notes

### Legal Compliance
- Only download content you have permission to download
- Respect platform terms of service and copyright laws
- Use downloaded content responsibly and legally
- This tool is for personal use and educational purposes

### Limitations
- Some platforms may have rate limiting
- Private content requires appropriate permissions
- Live streams may have limited availability
- File size limits may apply based on system resources

### Troubleshooting

**Common Issues:**

1. **"Failed to fetch video information"**
   - Check if the URL is valid and publicly accessible
   - Ensure the platform is supported
   - Try again after a few minutes

2. **Download stuck at 0%**
   - Check your internet connection
   - Verify the backend server is running
   - Check browser console for errors

3. **"Platform not supported"**
   - Verify the URL format matches supported patterns
   - Check if the platform is in the supported list

**Getting Help:**
- Check the browser developer console for detailed error messages
- Verify both frontend and backend servers are running
- Ensure all dependencies are properly installed

## 📱 Mobile Support
The application is fully responsive and works on:
- iOS Safari
- Android Chrome
- Mobile browsers
- Tablet devices

## 🔄 Updates and Maintenance
- Regularly update dependencies for security
- Monitor platform changes that may affect downloading
- Check for new platform support additions
- Update quality options as platforms evolve

## 🏗️ Development

### Project Structure
```
social-media-downloader/
├── public/                 # Static assets
├── src/                   # React frontend source
│   ├── App.jsx           # Main application component
│   ├── index.css         # Global styles
│   └── main.jsx          # Application entry point
├── server/                # Backend source
│   ├── handlers/         # Request handlers
│   ├── downloaders/      # Platform-specific downloaders
│   ├── utils/           # Utility functions
│   └── index.js         # Server entry point
├── package.json          # Frontend dependencies
└── README.md            # This file
```

### Contributing
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

### License
This project is for educational and personal use. Please respect platform terms of service and copyright laws.

---

**Enjoy downloading your favorite social media content responsibly! 🎉**