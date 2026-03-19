#!/bin/bash

# Skillet Formula Builder - Quick Publish Script
# Automates GitHub repository creation and publishing

set -e  # Exit on error

echo "🚀 Skillet Formula Builder - Publish Script"
echo "============================================"
echo ""

# Check if GITHUB_USERNAME is set
if [ -z "$GITHUB_USERNAME" ]; then
  echo "❌ Error: GITHUB_USERNAME environment variable not set"
  echo ""
  echo "Usage:"
  echo "  export GITHUB_USERNAME=\"your-github-username\""
  echo "  ./publish.sh"
  echo ""
  exit 1
fi

echo "📝 GitHub Username: $GITHUB_USERNAME"
echo ""

# Replace placeholders in files
echo "🔄 Updating placeholders with your GitHub username..."
find . -type f -name "*.md" -exec sed -i '' "s/YOUR_USERNAME/$GITHUB_USERNAME/g" {} +
sed -i '' "s/YOUR_USERNAME/$GITHUB_USERNAME/g" .skillsrc 2>/dev/null || true

echo "✅ Placeholders updated"
echo ""

# Check if git is initialized
if [ ! -d ".git" ]; then
  echo "🔧 Initializing git repository..."
  git init
  echo "✅ Git initialized"
else
  echo "ℹ️  Git already initialized"
fi
echo ""

# Check if files are staged
echo "📦 Staging files..."
git add .
echo "✅ Files staged"
echo ""

# Commit
echo "💾 Creating commit..."
git commit -m "Initial release: Skillet Formula Builder v1.0.0" 2>/dev/null || echo "ℹ️  No changes to commit"
echo ""

# Check if remote exists
if git remote | grep -q origin; then
  echo "ℹ️  Remote 'origin' already exists"
  echo "   Current remote: $(git remote get-url origin)"
else
  echo "🔗 Adding remote..."
  REPO_URL="https://github.com/$GITHUB_USERNAME/skillet-formula-builder-skill.git"
  git remote add origin "$REPO_URL"
  echo "✅ Remote added: $REPO_URL"
fi
echo ""

# Set main branch
echo "🌿 Setting main branch..."
git branch -M main
echo "✅ Branch set to main"
echo ""

# Push
echo "⬆️  Pushing to GitHub..."
echo "   (You may need to authenticate)"
echo ""

if git push -u origin main 2>&1; then
  echo ""
  echo "✅ Successfully pushed to GitHub!"
else
  echo ""
  echo "⚠️  Push failed. This might be because:"
  echo "   1. Repository doesn't exist yet on GitHub"
  echo "   2. Authentication failed"
  echo "   3. Repository already has different history"
  echo ""
  echo "📋 Next steps:"
  echo "   1. Create repository on GitHub:"
  echo "      https://github.com/new"
  echo "      Name: skillet-formula-builder-skill"
  echo ""
  echo "   2. Then run: git push -u origin main"
  exit 1
fi

echo ""
echo "============================================"
echo "🎉 Success! Your skill is now on GitHub!"
echo "============================================"
echo ""
echo "📍 Repository URL:"
echo "   https://github.com/$GITHUB_USERNAME/skillet-formula-builder-skill"
echo ""
echo "📋 Next Steps:"
echo ""
echo "1. Create a Release on GitHub:"
echo "   • Go to: https://github.com/$GITHUB_USERNAME/skillet-formula-builder-skill/releases/new"
echo "   • Tag: v1.0.0"
echo "   • Title: Skillet Formula Builder v1.0.0"
echo "   • Description: (copy from CHANGELOG.md)"
echo "   • Click 'Publish release'"
echo ""
echo "2. Test Installation:"
echo "   claude skills install https://raw.githubusercontent.com/$GITHUB_USERNAME/skillet-formula-builder-skill/main/skill.md"
echo ""
echo "3. (Optional) Submit to skills.sh:"
echo "   • Go to: https://skills.sh/submit"
echo "   • Submit your repository URL"
echo ""
echo "4. Share with the community!"
echo "   • Twitter, Reddit, LinkedIn, etc."
echo ""
echo "✨ Happy skill building!"
