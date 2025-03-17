#!/bin/bash

echo "Initializing Travel Audio Commentary App repository..."

# Step 1: Create directories
mkdir -p frontend backend tests docs

# Step 2: Create placeholder README files
echo "# Frontend\n\nFlutter source code goes here." > frontend/README.md
echo "# Backend\n\nServerless functions go here." > backend/README.md
echo "# Tests\n\nUnit and integration tests." > tests/README.md
echo "# Documentation\n\nProject documentation and planning materials." > docs/README.md

# Step 3: Create .gitignore
cat <<EOL > .gitignore
# Flutter & Dart
/frontend/.dart_tool/
/frontend/.idea/
/frontend/.packages
/frontend/build/
/frontend/.flutter-plugins
/frontend/pubspec.lock

# Node.js / Backend
/backend/node_modules/
/backend/.env
/backend/dist/

# General
*.log
.DS_Store
.env
EOL

# Step 4: Create .editorconfig
cat <<EOL > .editorconfig
root = true

[*]
charset = utf-8
end_of_line = lf
insert_final_newline = true
indent_style = space
indent_size = 2
trim_trailing_whitespace = true
EOL

# Step 5: Create .prettierrc
cat <<EOL > .prettierrc
{
  "semi": true,
  "singleQuote": true,
  "printWidth": 80,
  "tabWidth": 2,
  "trailingComma": "es5"
}
EOL

# Step 6: Create .eslintrc.json
cat <<EOL > .eslintrc.json
{
  "env": {
    "es2021": true,
    "node": true
  },
  "extends": [
    "eslint:recommended"
  ],
  "parserOptions": {
    "ecmaVersion": 12
  },
  "rules": {
    "no-unused-vars": "warn",
    "semi": ["error", "always"]
  }
}
EOL

# Step 7: Create README.md
cat <<EOL > README.md
# Travel Audio Commentary App MVP

This repository contains the initial structure for the Travel Audio Commentary App MVP. The app provides audio commentaries for travelers based on their location.

## Structure
- **/frontend**: Contains Flutter code for mobile application.
- **/backend**: Contains serverless functions (e.g., AWS Lambda, Firebase Functions).
- **/tests**: Contains unit and integration tests for both frontend and backend.
- **/docs**: Contains technical documentation, API docs, and planning materials.

## Getting Started
1. Clone the repo:
   \`\`\`
   git clone <repo-url>
   \`\`\`
2. Install frontend dependencies:
   \`\`\`
   cd frontend
   flutter pub get
   \`\`\`
3. Backend setup:
   \`\`\`
   cd backend
   npm install
   \`\`\`

## License
MIT License
EOL

# Step 8: Initialize Git
git init
git add .
git commit -m "Initial project structure setup"

echo "✅ Repository initialized successfully!"
echo "👉 Next steps:"
echo "1. Replace <repo-url> in README.md with your actual repository URL."
echo "2. Push to GitHub:"
echo "   git remote add origin <your-repo-url>"
echo "   git branch -M main"
echo "   git push -u origin main"

