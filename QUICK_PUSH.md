# Quick Push Guide 🚀

## Step 1: Create GitHub Personal Access Token

1. Go to: https://github.com/settings/tokens
2. Click **"Generate new token"** → **"Generate new token (classic)"**
3. Name it: `Sharpsell Design Storybook`
4. Select scope: ✅ **repo** (Full control of private repositories)
5. Click **"Generate token"**
6. **Copy the token** immediately (you won't see it again!)

## Step 2: Push Using Token

Run this command (replace `YOUR_TOKEN` with your actual token):

```bash
git push https://YOUR_TOKEN@github.com/jainaditya-spec/Sharpsell-Design.git main
```

**Example:**
```bash
git push https://ghp_xxxxxxxxxxxxxxxxxxxx@github.com/jainaditya-spec/Sharpsell-Design.git main
```

## Step 3: Deploy on Netlify

After pushing:

1. Go to https://app.netlify.com
2. Click **"Add new site"** → **"Import an existing project"**
3. Connect **GitHub**
4. Select repository: **`jainaditya-spec/Sharpsell-Design`**
5. Build settings are auto-detected ✅
6. Click **"Deploy site"**

## Future Updates

After the first push, you can use:
```bash
git add .
git commit -m "Your message"
git push origin main
```

Netlify will automatically deploy! 🎉

---

**Note:** For security, consider using SSH keys or GitHub CLI for future pushes instead of tokens.
