# Ember TS Tailwind Vite Template

This is a template for quickly setting up a new **Ember** project with **TypeScript**, **Tailwind CSS**, **Vite**, and **Ember-Broider**. You can either clone the pre-configured project or use the provided shell script to set up a new project.

## Prerequisites

You will need the following things properly installed on your computer.

- [Git](https://git-scm.com/)
- [Node.js](https://nodejs.org/) (with npm)
- [Ember CLI](https://cli.emberjs.com/release/) (version 6.2)

## What This Setup Includes:
- **[Ember-Broider](https://github.com/embroider-build/embroider)**
- **[TypeScript](https://github.com/Microsoft/TypeScript)**
- **[Vite](https://github.com/vitejs/vite)**
- **[Tailwind CSS (v4)](https://github.com/tailwindlabs/tailwindcss)**

## Option 1: Clone the Pre-configured Project

1. Clone the repository:
    ```bash
    git clone https://github.com/macTracyHuang/ember-ts-tailwind-vite-template.git
    cd ember-ts-tailwind-vite-template/myproject
    ```

2. Install dependencies:
    ```bash
    npm install
    ```

3. Run the Ember project with rebuilding:
    ```bash
    npm exec vite
    ```

## Option 2: Use the Setup Shell Script

1. Clone the repository:
    ```bash
    git clone https://github.com/macTracyHuang/ember-ts-tailwind-vite-template.git
    cd ember-ts-tailwind-vite-template
    ```

2. Make the script executable:
    ```bash
    chmod +x setup-ember-project.sh
    ```

3. Run the script with your desired project name (or use the default `myproject`):
    ```bash
    ./setup-ember-project.sh customprojectname
    ```
---

## References:
- **[ember-vite-codemod](https://github.com/mainmatter/ember-vite-codemod)**
- **[ember-apply](https://github.com/NullVoxPopuli/ember-apply)**
- **[Ember.js Discord Community](https://discord.com/invite/emberjs)**
