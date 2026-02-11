# Fix Push Permission Issue

## Issue: 403 Permission Denied

This usually means:
1. Token doesn't have correct permissions
2. Token format issue
3. Repository access issue

## Solution 1: Verify Token Permissions

Make sure your token has these scopes:
- ✅ **repo** (Full control of private repositories)
- ✅ **workflow** (if using GitHub Actions)

## Solution 2: Use Correct Token Format

The token should start with `ghp_` for classic tokens or `github_pat_` for fine-grained tokens.

### For Classic Token (ghp_):
```bash
git push https://ghp_YOUR_TOKEN@github.com/jainaditya-spec/Sharpsell-Design.git main
```

### For Fine-Grained Token (github_pat_):
Fine-grained tokens need to be used with your username:
```bash
git push https://YOUR_USERNAME:github_pat_YOUR_TOKEN@github.com/jainaditya-spec/Sharpsell-Design.git main
```

## Solution 3: Update Remote URL with Credentials

```bash
# Replace YOUR_USERNAME and YOUR_TOKEN
git remote set-url origin https://YOUR_USERNAME:YOUR_TOKEN@github.com/jainaditya-spec/Sharpsell-Design.git
git push -u origin main
```

## Solution 4: Use GitHub CLI (Easiest)

Install GitHub CLI:
```bash
# macOS
brew install gh

# Then authenticate
gh auth login
git push -u origin main
```

## Solution 5: Check Repository Access

1. Go to https://github.com/jainaditya-spec/Sharpsell-Design/settings/access
2. Verify you have write access
3. If it's an organization repo, check organization settings

## Quick Test

Test your token:
```bash
curl -H "Authorization: token YOUR_TOKEN" https://api.github.com/user
```

This should return your user info if the token is valid.
