# Fix Token Permissions - Step by Step

Based on your token settings, here's exactly what to change:

## Current Issue
- ✅ Repository access: "Public repositories" (read-only)
- ❌ Permissions: "No account permissions added yet"

This is why you're getting 403 - the token can't write to repositories!

## Fix Steps

### Step 1: Change Repository Access

1. In the **"Repository access"** section:
   - Select: ✅ **"All repositories"** 
     OR
   - Select: ✅ **"Only select repositories"** and add `jainaditya-spec/Sharpsell-Design`

### Step 2: Add Write Permissions

1. Click the **"+ Add permissions"** button
2. Find **"Contents"** in the list
3. Select: ✅ **"Write"** (not just Read)
4. Click **"Save"** or **"Update"**

### Step 3: Save Changes

Click the **"Update"** button (green button) at the top to save your changes.

### Step 4: Push Again

After updating permissions, try pushing:

```bash
git push -u origin main
```

## Required Permissions

For pushing code, you need:
- ✅ **Contents**: Write (to push code)
- ✅ **Metadata**: Read (automatic)

## Alternative: Use Classic Token

If fine-grained tokens are causing issues:

1. Delete this token
2. Go to: https://github.com/settings/tokens/new
3. Select: **"Generate new token (classic)"**
4. Name: `Sharpsell Design Storybook`
5. Select: ✅ **repo** (Full control)
6. Generate and use that token instead

---

**After updating permissions, your push should work!** 🚀
