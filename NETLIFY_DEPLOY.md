# Netlify Deployment Guide

## Prerequisites

1. A Netlify account (sign up at https://www.netlify.com)
2. Git repository (GitHub, GitLab, or Bitbucket)
3. Flutter SDK installed locally (for testing builds)

## Deployment Steps

### Option 1: Deploy via Netlify UI (Recommended for first deployment)

1. **Push your code to Git repository**
   ```bash
   git add .
   git commit -m "Initial commit for Netlify deployment"
   git push origin main
   ```

2. **Connect to Netlify**
   - Go to https://app.netlify.com
   - Click "Add new site" → "Import an existing project"
   - Connect your Git provider (GitHub/GitLab/Bitbucket)
   - Select your repository

3. **Configure Build Settings**
   - **Build command**: `flutter build web --release`
   - **Publish directory**: `build/web`
   - **Base directory**: (leave empty or set to root)

4. **Set Environment Variables** (if needed)
   - Go to Site settings → Environment variables
   - Add any required variables

5. **Deploy**
   - Click "Deploy site"
   - Netlify will build and deploy your app

### Option 2: Deploy via Netlify CLI

1. **Install Netlify CLI**
   ```bash
   npm install -g netlify-cli
   ```

2. **Login to Netlify**
   ```bash
   netlify login
   ```

3. **Initialize Netlify**
   ```bash
   netlify init
   ```
   - Choose "Create & configure a new site"
   - Follow the prompts

4. **Build and Deploy**
   ```bash
   # Build locally first
   flutter build web --release
   
   # Deploy
   netlify deploy --prod
   ```

### Option 3: Continuous Deployment (Recommended for updates)

Once connected via Git:

1. **Automatic Deploys**
   - Every push to `main` branch will trigger a new deployment
   - Pull requests will create preview deployments

2. **Manual Deploy**
   - Go to Netlify dashboard
   - Click "Trigger deploy" → "Deploy site"

## Build Configuration

The `netlify.toml` file contains:
- Build command: `flutter build web --release`
- Publish directory: `build/web`
- Redirects for SPA routing

## Important Notes

1. **Flutter Version**: Make sure Netlify uses Flutter 3.38.9 or compatible version
   - You may need to add a build plugin or use a custom build image

2. **Build Time**: Flutter web builds can take 5-10 minutes
   - Be patient during the first deployment

3. **File Size**: Flutter web apps can be large
   - Consider enabling compression in Netlify settings
   - Enable Brotli compression for better performance

4. **Environment Variables**: If your app uses environment variables:
   - Add them in Netlify dashboard → Site settings → Environment variables
   - Access via `String.fromEnvironment()` in Flutter

## Troubleshooting

### Build Fails

1. **Check Build Logs**
   - Go to Netlify dashboard → Deploys → Click on failed deploy
   - Review the build logs for errors

2. **Common Issues**
   - Flutter not found: Add Flutter installation step in build command
   - Dependencies: Ensure `pubspec.yaml` has all dependencies
   - Build timeout: Increase build timeout in Netlify settings

### App Not Loading

1. **Check Redirects**
   - Ensure `_redirects` file is in `build/web` directory
   - Verify `netlify.toml` redirects are correct

2. **Check Console**
   - Open browser console (F12)
   - Look for JavaScript errors

### Performance Issues

1. **Enable Compression**
   - Netlify automatically enables gzip
   - Consider enabling Brotli compression

2. **Optimize Assets**
   - Compress images
   - Use Flutter's asset optimization

## Updating the Site

### Automatic Updates
- Push changes to your Git repository
- Netlify will automatically rebuild and deploy

### Manual Updates
```bash
# Make changes locally
flutter build web --release

# Deploy to Netlify
netlify deploy --prod
```

## Custom Domain

1. Go to Netlify dashboard → Domain settings
2. Add your custom domain
3. Follow DNS configuration instructions
4. SSL certificate is automatically provisioned

## Preview Deployments

- Every pull request creates a preview deployment
- Preview URL is available in PR comments
- Great for testing before merging

## Support

- Netlify Docs: https://docs.netlify.com
- Flutter Web: https://flutter.dev/web
- Netlify Support: support@netlify.com
