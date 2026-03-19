# Quick Start - Publishing Skillet Formula Builder

## 🚀 Fast Track (5 minutes)

### Step 1: Prepare (Already Done!)
All files are ready in `/Users/zenbakiak/Sandbox/Skillet-lang/skillet/skill-publish/`

```
skill-publish/
├── skill.md          ✅ Main skill file
├── README.md         ✅ Repository documentation
├── LICENSE           ✅ MIT License
├── .skillsrc         ✅ Metadata for skills.sh
├── CHANGELOG.md      ✅ Version history
├── PUBLISH.md        ✅ Detailed publishing guide
└── QUICK_START.md    ← You are here
```

### Step 2: Create GitHub Repo (2 minutes)

```bash
# 1. Go to GitHub
open https://github.com/new

# 2. Create repository:
#    Name: skillet-formula-builder-skill
#    Description: Expert assistant for creating Skillet expressions
#    Public: ✅
#    Initialize: ❌ (we have our own files)

# 3. Click "Create repository"
```

### Step 3: Push to GitHub (1 minute)

```bash
cd /Users/zenbakiak/Sandbox/Skillet-lang/skillet/skill-publish

# Replace zenbakiak with your GitHub username
export GITHUB_USERNAME="your-username-here"

# Replace placeholders in files
find . -type f -name "*.md" -exec sed -i '' "s/zenbakiak/$GITHUB_USERNAME/g" {} +
sed -i '' "s/zenbakiak/$GITHUB_USERNAME/g" .skillsrc

# Initialize and push
git init
git add .
git commit -m "Initial release: Skillet Formula Builder v1.0.0"
git remote add origin "https://github.com/$GITHUB_USERNAME/skillet-formula-builder-skill.git"
git branch -M main
git push -u origin main
```

### Step 4: Create Release (1 minute)

```bash
# On GitHub:
# 1. Go to your repository
# 2. Click "Releases" → "Create a new release"
# 3. Tag: v1.0.0
# 4. Title: Skillet Formula Builder v1.0.0
# 5. Description: Copy from CHANGELOG.md
# 6. Click "Publish release"
```

### Step 5: Share (1 minute)

People can now install your skill:

```bash
# Option 1: Direct URL
claude skills install https://raw.githubusercontent.com/$GITHUB_USERNAME/skillet-formula-builder-skill/main/skill.md

# Option 2: Submit to skills.sh (optional)
# Go to https://skills.sh/submit
# Fill in the form with your repo URL
```

---

## 📋 Option 2: Submit to skills.sh Registry

### What is skills.sh?
A curated registry of Claude Code skills, making them easily discoverable.

### How to Submit

**Method A: Web Form**
1. Go to https://skills.sh/submit
2. Repository URL: `https://github.com/$GITHUB_USERNAME/skillet-formula-builder-skill`
3. Submit for review

**Method B: Pull Request**
1. Fork https://github.com/skills-sh/registry
2. Add to `skills.json`:
   ```json
   {
     "name": "skillet-formula-builder",
     "repo": "zenbakiak/skillet-formula-builder-skill",
     "description": "Expert assistant for creating Skillet expressions",
     "tags": ["skillet", "formula", "excel", "business-logic"],
     "category": "productivity"
   }
   ```
3. Submit PR

**Method C: Direct Usage (No Approval Needed)**
Users can install directly:
```bash
claude skills install https://raw.githubusercontent.com/zenbakiak/skillet-formula-builder-skill/main/skill.md
```

---

## ✅ Verification

Test that it works:

```bash
# Install your skill
claude skills install https://raw.githubusercontent.com/$GITHUB_USERNAME/skillet-formula-builder-skill/main/skill.md

# Test it
claude "Create a Skillet formula to calculate 100 + 200"

# Should invoke your skill and generate a Skillet expression
```

---

## 📢 Promote Your Skill

Share on:

**Twitter/X:**
```
🚀 New Claude Code skill: Skillet Formula Builder!

Create Excel-like formulas with Ruby-style methods for:
✅ Tax calculations (ISR, IVA)
✅ Payroll (finiquito, aguinaldo)
✅ Business logic
✅ Data transformations

Install: claude skills install skillet-formula-builder

https://github.com/zenbakiak/skillet-formula-builder-skill
```

**Reddit (r/ClaudeAI):**
```
Title: [Skill] Skillet Formula Builder - Excel + Ruby for Business Calculations

I created a Claude Code skill for the Skillet expression language...
[Include features, examples, installation]
```

**LinkedIn:**
```
Excited to share my new Claude Code skill for business calculations!

The Skillet Formula Builder helps create powerful expressions for:
- Mexican tax calculations (ISR, IVA)
- Payroll calculations (finiquito)
- Complex business logic
- Data transformations

Check it out: [link]
```

---

## 🔧 Maintenance

### Update the Skill

```bash
# 1. Make changes to skill.md
# 2. Update version in .skillsrc
# 3. Update CHANGELOG.md

# 4. Commit and push
git add .
git commit -m "v1.1.0: Add new features"
git push

# 5. Create new release on GitHub
# Tag: v1.1.0
```

### Monitor Usage

- GitHub Stars ⭐
- GitHub Issues 🐛
- skills.sh downloads 📦
- Community feedback 💬

---

## 🎯 Success Metrics

After publishing, track:
- [ ] GitHub repository created
- [ ] First release tagged
- [ ] Skill installable via URL
- [ ] Submitted to skills.sh (optional)
- [ ] First external user install
- [ ] First GitHub star
- [ ] First community contribution

---

## 📚 Resources

- **Detailed Guide**: See `PUBLISH.md` for step-by-step instructions
- **Skill File**: `skill.md` is your main skill
- **Examples**: Add to `examples/` directory
- **Issues**: Monitor GitHub issues for feedback

---

## 🆘 Help

**Common Issues:**

1. **Can't push to GitHub**
   - Check remote URL: `git remote -v`
   - Check authentication: `gh auth status`

2. **Skill not loading**
   - Verify skill.md syntax
   - Test locally first: `claude skills add ./skill.md`

3. **skills.sh submission**
   - Not required! Users can install via direct URL
   - Submission just adds to registry for discovery

**Get Help:**
- GitHub Issues on your repo
- Claude Code Discord
- skills.sh support

---

Ready to publish? Run:

```bash
cd /Users/zenbakiak/Sandbox/Skillet-lang/skillet/skill-publish
export GITHUB_USERNAME="your-username"
./publish.sh  # Or follow steps above
```

Good luck! 🎉
