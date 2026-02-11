# Correct Push Command

## For Fine-Grained Token (github_pat_)

You need to include your GitHub username. Use this format:

```bash
git push https://YOUR_USERNAME:YOUR_TOKEN@github.com/jainaditya-spec/Sharpsell-Design.git main
```

**Replace `YOUR_USERNAME` with your actual GitHub username** (likely `jainaditya-spec`)
**Replace `YOUR_TOKEN` with your actual token**

## Or Update Remote URL

```bash
# Set remote with credentials
git remote set-url origin https://YOUR_USERNAME:YOUR_TOKEN@github.com/jainaditya-spec/Sharpsell-Design.git

# Then push normally
git push -u origin main
```

## Alternative: Use GitHub CLI (Recommended)

This is the easiest and most secure method:

```bash
# Install GitHub CLI (if not installed)
brew install gh

# Login
gh auth login
# Select: GitHub.com
# Select: HTTPS
# Authenticate via web browser

# Then push
git push -u origin main
```

## Check Token Permissions

Your fine-grained token needs:
- ✅ Repository access: `jainaditya-spec/Sharpsell-Design`
- ✅ Permissions: **Contents** (Read and write)
- ✅ Permissions: **Metadata** (Read-only)

Check at: https://github.com/settings/tokens
