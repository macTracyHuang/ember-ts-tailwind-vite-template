#!/bin/bash

# Define default project name
DEFAULT_PROJECT_NAME="myproject"

# Get the project name from the first positional argument, or fall back to default if not provided
PROJECT_NAME="${1:-$DEFAULT_PROJECT_NAME}"

# Step 1: Create a new Ember project with TypeScript and Ember-Broider
echo "Creating a new Ember project with TypeScript and Ember-Broider..."
ember new $PROJECT_NAME --no-welcome --embroider --typescript --lang en

# Navigate into the project directory
cd $PROJECT_NAME

# Step 2: Modify dependencies
echo "Modifying dependencies..."

# Remove ember-fetch from package.json
npm uninstall ember-fetch

# Update @glimmer/component to ^2.0.0
npm install @glimmer/component@^2.0.0 --save

# Step 3: Install Vite using ember-vite-codemod
echo "Installing Vite and updating configuration with ember-vite-codemod..."
npx ember-vite-codemod@latest --ts --embroider-webpack --skip-git

# Step 4: Set up Tailwind CSS with Vite
echo "Setting up Tailwind CSS (v4) with Vite..."
npx ember-apply tailwind4-vite

# Step 5: Clean and reinstall node_modules
echo "Cleaning up and reinstalling dependencies..."
rm -rf node_modules
rm package-lock.json
npm install

# Step 6: Insert the import for Tailwind CSS in app.ts under the correct position
echo "Ensuring proper import of Tailwind CSS in app.ts..."

# Use `sed` to insert the import statement for Tailwind CSS after compatModules import
if [[ "$OSTYPE" == "darwin"* ]]; then
  # macOS (BSD sed) version of the sed command (without space at the beginning)
  sed -i '' '/import compatModules from "@embroider\/virtual\/compat-modules";/a\
import ".\/styles\/app.css";' app/app.ts
else
  # Linux version of the sed command (without space at the beginning)
  sed -i '/import compatModules from "@embroider\/virtual\/compat-modules";/a import ".\/styles\/app.css";' app/app.ts
fi

# Step 7: Final Instructions
echo "Setup complete!"
echo "Your Ember project is now set up with the following technologies:"
echo "- Ember-Broider"
echo "- Vite"
echo "- Tailwind CSS (v4)"
echo "- TypeScript"