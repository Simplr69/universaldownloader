# 🚀 Deploying Social Media Downloader to Vercel

## ⚠️ **Important Vercel Limitations**

Vercel is optimized for frontend applications and serverless functions. Your Social Media Downloader has been adapted for Vercel with the following limitations:

- **No Real Downloads**: yt-dlp and FFmpeg are not available in Vercel's serverless environment
- **Video Info Only**: The Vercel version provides video information extraction only
- **30-second Timeout**: Serverless functions have execution time limits
- **No File Storage**: Downloaded files cannot be stored permanently on Vercel

## 📋 **Prerequisites**

1. **Vercel Account**: Sign up at [vercel.com](https://vercel.com)
2. **Vercel CLI**: Install globally
   ```bash
   npm install -g vercel
   ```
3. **Git Repository**: Your code should be in a Git repository (GitHub, GitLab, etc.)

## 🛠️ **Deployment Steps**

### **Method 1: Deploy via Vercel CLI**

1. **Login to Vercel:**
   ```bash
   vercel login
   ```

2. **Navigate to your project:**
   ```bash
   cd "c:\Users\hocbai\.qoder\mp3 and mp4"
   ```

3. **Deploy to Vercel:**
   ```bash
   vercel
   ```
   
   Follow the prompts:
   - Set up and deploy? **Y**
   - Which scope? Choose your account
   - Link to existing project? **N** (for first deployment)
   - Project name: `social-media-downloader` (or your preferred name)
   - Directory: `.` (current directory)

4. **Production deployment:**
   ```bash
   vercel --prod
   ```

### **Method 2: Deploy via Vercel Dashboard**

1. **Push code to Git:**
   ```bash
   git init
   git add .
   git commit -m "Initial commit for Vercel deployment"
   git remote add origin YOUR_GITHUB_REPO_URL
   git push -u origin main
   ```

2. **Import in Vercel:**
   - Go to [vercel.com/dashboard](https://vercel.com/dashboard)
   - Click "New Project"
   - Import your Git repository
   - Configure build settings (should auto-detect)
   - Deploy

### **Method 3: One-Click Deploy**

Create a deploy button for easy deployment:

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=YOUR_GITHUB_REPO_URL)

## ⚙️ **Configuration**

### **Environment Variables**

Set these in Vercel Dashboard > Project > Settings > Environment Variables:

```
NODE_ENV=production
VERCEL=true
```

### **Domain Configuration**

1. **Custom Domain** (optional):
   - Go to Project Settings > Domains
   - Add your custom domain
   - Configure DNS records

2. **CORS Configuration**:
   - Update `vite.config.js` with your Vercel domain
   - Replace `your-vercel-domain.vercel.app` with your actual domain

## 📁 **Project Structure for Vercel**

```
├── api/                    # Vercel serverless functions
│   ├── health.js          # Health check endpoint
│   ├── video-info.js      # Video information extraction
│   └── download.js        # Download simulation (limited)
├── src/                   # React frontend
├── dist/                  # Build output (auto-generated)
├── package.json           # Dependencies and scripts
├── vite.config.js         # Vite configuration
├── vercel.json           # Vercel deployment configuration
└── VERCEL_DEPLOYMENT.md  # This file
```

## 🔧 **Local Development with Vercel**

1. **Install Vercel CLI:**
   ```bash
   npm install -g vercel
   ```

2. **Link project:**
   ```bash
   vercel link
   ```

3. **Start development server:**
   ```bash
   vercel dev
   ```

   This starts:
   - Frontend: http://localhost:3000
   - API functions: http://localhost:3000/api/*

## 🌐 **Accessing Your Deployed App**

After deployment, your app will be available at:
- **Vercel URL**: `https://your-project-name.vercel.app`
- **Custom Domain**: Your configured domain (if set)

### **API Endpoints:**
- Health: `https://your-domain.vercel.app/api/health`
- Video Info: `https://your-domain.vercel.app/api/video-info`
- Download: `https://your-domain.vercel.app/api/download`

## 📊 **Vercel Version Features**

✅ **Available Features:**
- Video information extraction
- Platform detection (YouTube, Instagram, Twitter, etc.)
- Clean, responsive UI
- Real-time progress simulation
- Video preview and thumbnails

❌ **Limited Features:**
- No actual video/audio downloads
- No file storage
- No yt-dlp integration
- No FFmpeg processing

## 🔄 **Updates and Redeployment**

### **Automatic Deployment:**
- Push to your main branch
- Vercel automatically rebuilds and deploys

### **Manual Deployment:**
```bash
vercel --prod
```

## 🐛 **Troubleshooting**

### **Common Issues:**

1. **Build Failures:**
   ```bash
   # Clear cache and rebuild
   vercel --force
   ```

2. **API Function Errors:**
   - Check Vercel function logs in dashboard
   - Ensure API functions are in `/api` directory
   - Verify export default syntax

3. **CORS Errors:**
   - Update allowed origins in API functions
   - Check Vercel domain configuration

4. **404 Errors:**
   - Verify `vercel.json` routing configuration
   - Check file paths and exports

### **Debugging:**

```bash
# View deployment logs
vercel logs

# Test functions locally
vercel dev
```

## 📈 **Performance Optimization**

1. **Bundle Optimization:**
   - Code splitting enabled in `vite.config.js`
   - Separate vendor chunks for better caching

2. **Serverless Function Optimization:**
   - 30-second timeout limit
   - Minimal dependencies in API functions
   - Efficient response streaming

## 🔗 **Alternative Solutions**

For full download functionality, consider these alternatives:

1. **Vercel + External Service:**
   - Use Vercel for UI
   - Deploy download backend on services like Railway, Render, or AWS

2. **Other Platforms:**
   - **Railway**: Supports full Node.js applications
   - **Render**: Good for apps with background processes
   - **Heroku**: Traditional hosting with full feature support
   - **DigitalOcean App Platform**: Container-based deployment

3. **Hybrid Approach:**
   - Vercel for frontend
   - Separate backend service for downloads
   - API integration between services

## 🎯 **Next Steps**

1. **Deploy to Vercel** using one of the methods above
2. **Test the deployed application** with various video URLs
3. **Configure custom domain** if needed
4. **Consider hybrid deployment** for full download functionality
5. **Set up monitoring** and analytics

Your Social Media Downloader is now ready for Vercel deployment! 🚀