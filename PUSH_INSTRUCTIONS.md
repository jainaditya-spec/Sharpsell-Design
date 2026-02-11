# Push to GitHub - Instructions

Your repository is connected to: https://github.com/jainaditya-spec/Sharpsell-Design.git

## Authentication Required

You need to authenticate with GitHub to push. Choose one of these methods:

### Option 1: GitHub CLI (Easiest)

If you have GitHub CLI installed:
```bash
gh auth login
# Follow the prompts to authenticate
git push -u origin main
```

### Option 2: Personal Access Token (Recommended)

1. **Create a Personal Access Token:**
   - Go to https://github.com/settings/tokens
   - Click "Generate new token" → "Generate new token (classic)"
   - Give it a name (e.g., "Sharpsell Design Storybook")
   - Select scopes: `repo` (full control of private repositories)
   - Click "Generate token"
   - **Copy the token** (you won't see it again!)

2. **Push using the token:**
   ```bash
   git push https://<YOUR_TOKEN>@github.com/jainaditya-spec/Sharpsell-Design.git main
   ```
   Or update the remote URL:
   ```bash
   git remote set-url origin https://<YOUR_TOKEN>@github.com/jainaditya-spec/Sharpsell-Design.git
   git push -u origin main
   ```

### Option 3: SSH (Most Secure)

1. **Set up SSH key** (if not already done):
   ```bash
   # Check if you have SSH keys
   ls -al ~/.ssh
   
   # If not, generate one
   ssh-keygen -t ed25519 -C "your_email@example.com"
   
   # Add to ssh-agent
   eval "$(ssh-agent -s)"
   ssh-add ~/.ssh/id_ed25519
   
   # Copy public key
   cat ~/.ssh/id_ed25519.pub
   ```

2. **Add SSH key to GitHub:**
   - Go to https://github.com/settings/keys
   - Click "New SSH key"
   - Paste your public key
   - Save

3. **Change remote to SSH:**
   ```bash
   git remote set-url origin git@github.com:jainaditya-spec/Sharpsell-Design.git
   git push -u origin main
   ```

### Option 4: Manual Push (Browser)

1. Go to https://github.com/jainaditya-spec/Sharpsell-Design
2. Click "uploading an existing file"
3. Drag and drop your project files
4. Commit directly on GitHub

## After Pushing

Once your code is on GitHub:

1. **Deploy on Netlify:**
   - Go to https://app.netlify.com
   - Click "Add new site" → "Import an existing project"
   - Connect GitHub
   - Select `jainaditya-spec/Sharpsell-Design`
   - Build settings are auto-detected from `netlify.toml`
   - Click "Deploy site"

2. **Future Updates:**
   ```bash
   git add .
   git commit -m "Your update message"
   git push origin main
   # Netlify automatically deploys! 🚀
   ```

## Current Status

✅ Local repository initialized
✅ Remote repository connected
✅ Branch set to main
⏳ Waiting for authentication to push
