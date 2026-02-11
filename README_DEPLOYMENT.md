# Quick Deployment Guide for Netlify

## 🚀 Quick Start

### Prerequisites
- Git repository (GitHub, GitLab, or Bitbucket)
- Netlify account (free at https://www.netlify.com)

### Step 1: Push to Git
```bash
git add .
git commit -m "Ready for Netlify deployment"
git push origin main
```

### Step 2: Deploy on Netlify

#### Option A: Via Netlify UI (Easiest)
1. Go to https://app.netlify.com
2. Click "Add new site" → "Import an existing project"
3. Connect your Git provider
4. Select your repository
5. Configure build settings:
   - **Build command**: `flutter build web --release`
   - **Publish directory**: `build/web`
6. Click "Deploy site"

#### Option B: Via Netlify CLI
```bash
# Install Netlify CLI
npm install -g netlify-cli

# Login
netlify login

# Deploy
flutter build web --release --web-renderer canvaskit
netlify deploy --prod
```

## 📝 Configuration Files

The following files are already configured:

- ✅ `netlify.toml` - Build configuration and redirects
- ✅ `_redirects` - SPA routing support
- ✅ `.gitignore` - Excludes build files

## 🔄 Updating the Site

### Automatic Updates (Recommended)
- Push changes to your Git repository
- Netlify automatically rebuilds and deploys

### Manual Update
```bash
flutter build web --release
netlify deploy --prod
```

## ⚙️ Build Settings Summary

- **Build Command**: `flutter build web --release --web-renderer canvaskit`
- **Publish Directory**: `build/web`
- **Node Version**: Not required (Flutter handles builds)
- **Environment Variables**: None required by default

## 🐛 Troubleshooting

### Build Fails
1. Check build logs in Netlify dashboard
2. Ensure Flutter is available in build environment
3. Verify all dependencies in `pubspec.yaml`

### App Not Loading
1. Check browser console for errors
2. Verify `_redirects` file is in `build/web`
3. Ensure base href is set correctly

### Performance
- Enable Brotli compression in Netlify settings
- Assets are automatically cached via headers in `netlify.toml`

## 📚 More Details

See `NETLIFY_DEPLOY.md` for comprehensive deployment guide.
