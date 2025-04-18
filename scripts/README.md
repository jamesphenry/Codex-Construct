# 🛠 Scripts Folder

This folder contains PowerShell automation scripts used across the Codex-Construct repo.

## 📌 Available Scripts

### `setup.ps1`

Initial repository setup. Creates the required folder structure and placeholder files.

```powershell
.\scripts\setup.ps1
```

# 📏 Conventions
- Scripts should be written in PowerShell (.ps1)

- Must run from the repo root unless otherwise documented

- Should not modify tracked source unless explicitly stated

- Always document new scripts here

---

### 📄 `SECURITY.md`

```markdown
# 🔐 Security Policy

## 🛡 Reporting Vulnerabilities

If you discover a security issue or vulnerability, please report it **privately** via email or issue tagging, not as a public GitHub issue.

> Email: [secure@codex-construct.fake]  
> Tag with: `security` label in private issues

We'll coordinate disclosure and patching together.

## 🔒 Scope

This applies to:
- Application code within `projects/`
- Shared tools/scripts that manipulate or expose data
- CI/CD workflows

---

## 🧯 Dependencies

We use `dotnet list package --vulnerable` in CI to scan for known .NET vulnerabilities.  
Third-party packages are regularly reviewed and locked to stable versions.