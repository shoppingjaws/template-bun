# CLAUDE.md - template-bun Project Configuration

This file provides guidance to Claude Code when working on this project.

## 📋 Overview

This is a Bun + TypeScript template project with the following characteristics:

- **Runtime**: Bun (v1.2.19)
- **Language**: TypeScript 5+
- **Code Quality**: Biome (v2.1.3) for linting and formatting
- **Tool Management**: mise

## 🛠️ Development Guidelines

### Code Execution

**IMPORTANT**: ALL code execution, file operations, and shell commands MUST be performed within a container-use environment.

- Create environment: `container-use create`
- Never execute code directly on the host system
- All file edits should be done through container-use tools

### Code Quality Standards

#### Biome Linting

Always run Biome lint checks before completing tasks:

```bash
bun run biome check .
```

To automatically fix issues:

```bash
bun run biome check --write .
```

#### Formatting Standards

- **Indent Style**: Tabs (as configured in biome.json)
- **Quote Style**: Double quotes for JavaScript/TypeScript
- **Import Organization**: Automatically organize imports

### TypeScript Guidelines

- Use TypeScript 5+ features
- Enable strict type checking
- Prefer explicit types for public APIs
- Use `type` over `interface` for object type definitions where appropriate

### Code Style

- Use tabs for indentation (not spaces)
- Use double quotes for strings
- Keep imports organized (Biome handles this automatically)
- Follow ESLint recommended rules (enforced by Biome)

## 🔄 Common Workflows

### Before Committing

1. Run lint checks:
   ```bash
   bun run biome check .
   ```

2. Run tests (if applicable):
   ```bash
   bun test
   ```

### Adding New Files

- Ensure new TypeScript files follow the project's tsconfig.json
- Run Biome check after creating new files
- Use `.ts` extension for TypeScript files

## 🚫 What NOT to Do

- Do not run commands outside of container-use environment
- Do not use `npm` or `yarn` (use `bun` instead)
- Do not use spaces for indentation (use tabs)
- Do not use single quotes for strings (use double quotes)
- Do not commit code without running Biome checks

## 📦 Tool Versions

Managed by mise (see mise.toml):

- Node.js: 24
- Bun: 1.2.19
- Biome: 2.1.3
- Kustomize: 5.7.1

## 🎯 Project-Specific Notes

This is a template repository intended to be used as a starting point for new Bun projects. When using this template:

- Update package.json with your project details
- Modify this CLAUDE.md to reflect your specific project needs
- Add project-specific guidelines as needed
