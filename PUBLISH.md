# Publishing Guide - Skillet Formula Builder Skill

## Prerequisites

- [ ] GitHub account
- [ ] Git installed locally
- [ ] Skill file tested and working
- [ ] Examples ready
- [ ] README complete

## Step-by-Step Publishing

### 1. Prepare Repository

```bash
cd /Users/zenbakiak/Sandbox/Skillet-lang/skillet/skill-publish

# Copy the skill file
cp ../skill/skillet-formula-builder.md ./skill.md

# Create examples directory
mkdir -p examples
mkdir -p screenshots
```

### 2. Create GitHub Repository

1. Go to https://github.com/new
2. Repository name: `skillet-formula-builder-skill`
3. Description: "Expert assistant for creating Skillet expressions"
4. Public repository
5. Don't initialize with README (we have our own)
6. Create repository

### 3. Initialize Git and Push

```bash
# Initialize git
git init
git add .
git commit -m "Initial commit: Skillet Formula Builder skill v1.0.0"

# Add remote (replace zenbakiak)
git remote add origin https://github.com/zenbakiak/skillet-formula-builder-skill.git

# Push to GitHub
git branch -M main
git push -u origin main
```

### 4. Create a Release

On GitHub:
1. Go to Releases → Create a new release
2. Tag version: `v1.0.0`
3. Release title: `Skillet Formula Builder v1.0.0`
4. Description:
   ```
   Initial release of Skillet Formula Builder skill.

   Features:
   - 80+ Excel-like functions
   - Ruby-style method chaining
   - HTTP API support
   - Comment support (#, //, /* */)
   - Array expression format
   - Real-world examples (ISR, finiquito)
   ```
5. Publish release

### 5. Submit to skills.sh

**Option A: Via skills.sh Website**
1. Go to https://skills.sh/submit
2. Fill in the form:
   - Skill name: `skillet-formula-builder`
   - Repository URL: `https://github.com/zenbakiak/skillet-formula-builder-skill`
   - Description: "Expert assistant for creating Skillet expressions"
   - Tags: `skillet, formula, excel, calculator, business-logic`
3. Submit for review

**Option B: Via Pull Request**
1. Fork https://github.com/skills-sh/registry
2. Add your skill to `skills.json`:
   ```json
   {
     "name": "skillet-formula-builder",
     "repo": "zenbakiak/skillet-formula-builder-skill",
     "description": "Expert assistant for creating Skillet expressions",
     "tags": ["skillet", "formula", "excel"],
     "verified": false
   }
   ```
3. Submit PR to skills-sh/registry

**Option C: Share Raw URL**
Even without skills.sh approval, users can install via direct URL:
```bash
claude skills install https://raw.githubusercontent.com/zenbakiak/skillet-formula-builder-skill/main/skill.md
```

### 6. Update README with Correct URLs

After creating the repo, update README.md:
```bash
# Replace zenbakiak with actual username
sed -i '' 's/zenbakiak/actual-username/g' README.md
git add README.md
git commit -m "Update README with correct URLs"
git push
```

### 7. Add Examples

Create example files:

```bash
# Create ISR example
cat > examples/isr-calculator.md << 'EOF'
# ISR Calculator Example

## Problem
Calculate Mexican ISR tax for monthly income.

## Solution
[Include the ISR JSON payload]

## Explanation
[Explain the formula]
EOF

git add examples/
git commit -m "Add ISR calculator example"
git push
```

### 8. Optional: Add Screenshots

```bash
# Take screenshots of skill in action
# Save to screenshots/

git add screenshots/
git commit -m "Add screenshots"
git push
```

### 9. Promote Your Skill

Share on:
- [ ] Twitter/X
- [ ] Reddit (r/ClaudeAI)
- [ ] Discord communities
- [ ] Your blog/website
- [ ] LinkedIn

Example tweet:
```
🚀 Just published a new Claude Code skill: Skillet Formula Builder!

✅ Excel-like formulas
✅ Ruby-style methods
✅ Mexican tax calculators
✅ Business logic patterns

Install: claude skills install skillet-formula-builder

GitHub: https://github.com/zenbakiak/skillet-formula-builder-skill
```

## Testing Installation

Test that others can install:

```bash
# From raw URL
claude skills install https://raw.githubusercontent.com/zenbakiak/skillet-formula-builder-skill/main/skill.md

# Test it works
claude "Create a Skillet formula to calculate total with 16% IVA"
```

## Maintenance

### Version Updates

When making changes:

```bash
# 1. Update version in .skillsrc
# 2. Update CHANGELOG.md
# 3. Commit changes
git add .
git commit -m "Release v1.1.0: Add new features"
git push

# 4. Create new release on GitHub
# Tag: v1.1.0
```

### Responding to Issues

Monitor:
- GitHub Issues
- skills.sh feedback
- Community requests

## Checklist

Before publishing:
- [ ] Skill file tested with Claude Code
- [ ] All examples work correctly
- [ ] README complete with installation instructions
- [ ] LICENSE file present
- [ ] .skillsrc metadata accurate
- [ ] Examples directory populated
- [ ] Repository created on GitHub
- [ ] First release tagged
- [ ] Submitted to skills.sh (optional)
- [ ] Announced on social media

## Quick Publish Script

```bash
#!/bin/bash
# publish.sh - Quick publish script

echo "Publishing Skillet Formula Builder skill..."

# Check if username is set
if [ -z "$GITHUB_USERNAME" ]; then
  echo "Error: Set GITHUB_USERNAME environment variable"
  exit 1
fi

# Replace placeholders
find . -type f -name "*.md" -exec sed -i '' "s/zenbakiak/$GITHUB_USERNAME/g" {} +

# Initialize git
git init
git add .
git commit -m "Initial commit: Skillet Formula Builder v1.0.0"

# Add remote
git remote add origin "https://github.com/$GITHUB_USERNAME/skillet-formula-builder-skill.git"

# Push
git branch -M main
git push -u origin main

echo "✅ Published! Create a release on GitHub and submit to skills.sh"
```

Run with:
```bash
export GITHUB_USERNAME="your-github-username"
chmod +x publish.sh
./publish.sh
```
