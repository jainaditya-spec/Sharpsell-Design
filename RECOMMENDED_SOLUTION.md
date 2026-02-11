# Recommended Solution: Use GitHub CLI

The easiest way to push is using GitHub CLI, which handles authentication automatically.

## Install GitHub CLI

```bash
brew install gh
```

## Authenticate

```bash
gh auth login
```

Follow the prompts:
1. Select: **GitHub.com**
2. Select: **HTTPS**
3. Select: **Login with a web browser**
4. Copy the code shown
5. Press Enter (opens browser)
6. Paste code and authorize

## Push

```bash
git push -u origin main
```

That's it! GitHub CLI handles all authentication automatically.

---

## If You Prefer to Use Token

Make sure your fine-grained token has:
1. ✅ Repository access to `jainaditya-spec/Sharpsell-Design`
2. ✅ **Contents** permission: **Read and write** (not just Read)
3. ✅ **Metadata** permission: Read-only

Then use:
```bash
git remote set-url origin https://jainaditya-spec:YOUR_TOKEN@github.com/jainaditya-spec/Sharpsell-Design.git
git push -u origin main
```
