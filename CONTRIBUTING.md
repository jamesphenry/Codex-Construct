# 🤝 Contributing to Codex-Construct

Thanks for considering a contribution!

## 🔁 Git Flow

We use [Git Flow](https://nvie.com/posts/a-successful-git-branching-model/) for all project work:

- `main` = stable
- `develop` = active development
- `feature/*` = scoped feature branches

Start a feature:

```bash
git flow feature start your-feature-name
```

# 📜 Coding Conventions
- C# 12 / .NET 8+

- Use top-level statements and Namespace; syntax

- One class per file

- Use Fluent API for configuration when practical

- Favor composition over inheritance

# 🧪 Testing
- Use xUnit only

- Structure tests by behavior, not class

- All tests should pass before PR

- If tests fail, log to testdebug.log

# 📝 Docs
All features must be documented under docs/{ProjectName}/Features/.

Update:

- README.md

- HISTORY.md

- Any config-related docs if needed

# ✅ Check Before Commit
- [ ] All tests pass

- [ ] Code is clean and well-named

- [ ] Docs updated

- [ ] PR is to develop, not main

Welcome aboard 🛠️