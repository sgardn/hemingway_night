# Commit Guidelines

## Conventional Commits

Conventional Commits is a standardized format for commit messages that provides a structured way to document changes. The format is:

```
<type>(<scope>): <description>

[optional body]

[optional footer(s)]
```

### Types
- `feat`: A new feature
- `fix`: A bug fix
- `docs`: Documentation only changes
- `style`: Changes that do not affect the meaning of the code (white-space, formatting, etc)
- `refactor`: A code change that neither fixes a bug nor adds a feature
- `perf`: A code change that improves performance
- `test`: Adding missing tests or correcting existing tests
- `build`: Changes that affect the build system or external dependencies
- `ci`: Changes to CI configuration files and scripts
- `chore`: Other changes that don't modify src or test files

### Examples
```
feat(auth): add user authentication
fix(api): resolve connection timeout issue
docs(readme): update installation instructions
style(ui): format component layout
refactor(db): optimize database queries
```

### Benefits
- Automatically generates changelogs
- Determines semantic versioning
- Communicates the nature of changes to other developers
- Makes it easier to review and understand commit history 