#!/bin/bash

# Repository URL
# REPO_URL <https://github.com/shubu001/propeller-logo-task>

# Step 1: Create React application
npx create-react-app my-app

# Step 2: Navigate into project
cd my-app

# Step 3: Initialize master branch and GitHub repository
git branch -M master
git add .
git commit -m "Initial React application"

# GitHub authentication
gh auth login
gh auth status

# Repository connection
git remote add origin https://github.com/shubu001/propeller-logo-task.git
git push -u origin master

# Step 4: Create and switch to update_logo branch
git checkout -b update_logo

# Step 5: Update Propeller Aero logo and website link
# Modified src/App.js

# Step 6: Commit and push changes
git add src/App.js
git commit -m "Replace React logo with Propeller Aero logo"
git push -u origin update_logo

# Step 7: Create Pull Request
gh pr create --base master --head update_logo --title "Replace React logo with Propeller Aero logo" --body "Updated React starter page with Propeller Aero logo and DirtMate link."

# Step 8: Merge Pull Request
# Pull request was successfully merged into master using GitHub.