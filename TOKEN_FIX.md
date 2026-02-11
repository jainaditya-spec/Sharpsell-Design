# Fix Token Permissions Issue

## Problem
The token is being recognized but doesn't have write access to the repository.

## Solution: Update Token Permissions

### Step 1: Check Current Token Settings

1. Go to: https://github.com/settings/tokens
2. Find your token: `Sharpsell Design Storybook`
3. Click on it to edit

### Step 2: Update Repository Access

For **Fine-Grained Token**:
1. Under **"Repository access"**:
   - Select: ✅ **"Selected repositories"**
   - Add: `jainaditya-spec/Sharpsell-Design`
   - Click **"Save"**

### Step 3: Update Permissions

Under **"Repository permissions"**:
- ✅ **Contents**: Set to **"Read and write"** (not just Read)
- ✅ **Metadata**: Set to **"Read-only"** (this is automatic)

### Step 4: Regenerate Token (if needed)

If you can't edit permissions:
1. Delete the old token
2. Create a new **Classic Token** instead:
   - Go to: https://github.com/settings/tokens/new
   - Select: ✅ **repo** (Full control)
   - Generate and copy the new token (starts with `ghp_`)

### Step 5: Push with New Token

**For Classic Token (ghp_):**
```bash
git remote set-url origin https://ghp_YOUR_NEW_TOKEN@github.com/jainaditya-spec/Sharpsell-Design.git
git push -u origin main
```

**For Fine-Grained Token:**
After updating permissions, try again:
```bash
git push -u origin main
```

## Alternative: Use GitHub CLI (Easiest)

This avoids token issues entirely:

```bash
# Install GitHub CLI
brew install gh

# Login (opens browser)
gh auth login

# Push
git push -u origin main
```

## Check Repository Access

If it's an organization repository:
1. Go to: https://github.com/jainaditya-spec/Sharpsell-Design/settings/access
2. Make sure you have **Write** access
3. Check organization settings if needed
