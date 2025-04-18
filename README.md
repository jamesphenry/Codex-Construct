
# Codex-Construct

**Tagline:** "Where documented designs (Codex) meet implemented C# projects (Construct)."

**Purpose:** A collection of small-to-medium scoped C#/.NET projects, utilities, and games — emphasizing great design, TDD, and rock-solid documentation.

## 🎯 Core Development Preferences

| Category          | Preference |
|------------------|------------|
| Language          | C# (.NET 8+) |
| Style             | Top-level statements, `Namespace;` syntax |
| Testing           | xUnit with TDD. Use helpers in test projects. No separate test apps unless asked |
| Data Storage      | Default to `Microsoft.EntityFrameworkCore.Sqlite` |
| Design Principles | Design Patterns, Separation of Concerns, Fluent API |
| IDE               | Rider preferred |
| Dependency Mgmt   | Use `dotnet add package` |
| Documentation     | Markdown with GDD/SDD-style breakdowns |
| Repo Flow         | Use Git Flow per-project (see below) |
| Assistant Style   | Easygoing tone, one-question-at-a-time, discuss before coding |

## 🧪 Development Flow (TDD-First)

1. Write failing unit test (xUnit).
2. Implement logic to make it pass.
3. Refactor if needed.
4. Repeat.
5. Tests should log to `testdebug.log` if debugging is needed.

Use `Microsoft.Extensions.Hosting` + Serilog for apps.  
Settings should layer:  
`/config/appsettings.json` → `projects/{Project}/src/appsettings.json`  
Use `IOptions<T>` for typed configs.

## 🧫 AI Assistant Integration

| Assistant Role     | Description |
|--------------------|-------------|
| Git Awareness      | Prompts for branch/context before new features |
| TDD Workflow       | Treats Red/Green/Refactor as distinct Git Flow features | 
| Repetition Hunting | Flags repeat work and suggests helper scripts |
| No Overreach       | Doesn't assume context or run destructive commands |

## 📊 Process Improvements (from ConstructTester Learnings)

### Testing
- Use Regex or substring-based `Assert.Matches` for output like Markdown/HTML to reduce flakiness.
- Pivot to local debugging sooner when things get weird (especially with icon/text bugs).

### Code Delivery
- Always use clear Markdown fences (` ```csharp `) and state the filename.
- Confirm local file updates before build/test steps.

### Red-Green-Refactor
- Be explicit: confirm if we Refactor or move forward.
- Pause to upgrade shared dependencies before resuming feature flow.

## 🚀 Git Flow Strategy

### 📌 Branch Roles

```
main      ← stable
develop   ← active dev
feature/* ← isolated changes per project
release/* ← pre-release prep
hotfix/*  ← critical fixes
```

> Prefer per-project version tags: `project-name/v1.2.0`

### 🏗 Feature Flow

```
git flow feature start nexus-docking-ui
```

Work inside:
- `projects/NexusDockingUI/`
- `docs/NexusDockingUI/`
- `.github/workflows/nexus-docking-ui-*`

Then:
```
git flow feature finish nexus-docking-ui
```

Update:
- `docs/{Project}/Features/`
- `HISTORY.md` `[Unreleased]` section

---

## 🌟 Project Kickoff Checklist

1. Provide **Description** (Category optional)
2. Generate project folders (`src/`, `tests/`)
3. Create solution:  
   ```bash
   dotnet new sln
   dotnet new console / xunit
   dotnet sln add ...
   dotnet add reference ...
   ```
4. Add `README.md`, badges, usage
5. Add `docs/{Project}/Overview.md`, `Design/`, `Features/`
6. Setup CI (`build.yml`, `test.yml`)
7. Update root `README.md` + `HISTORY.md`
8. Add `.gitignore` if needed
9. Initial commit

---

## 📜 Documentation Style Guide

| Topic         | Standard |
|---------------|----------|
| Format        | Markdown (`.md`) |
| Alerts        | Use `[!NOTE]`, `[!WARNING]`, etc. for emphasis |
| Structure     | GDD/SDD-style: Overview → Design → Features |
| Location      | `docs/{Project}/` with subfolders |
| Changelog     | Update `HISTORY.md` using Keep A Changelog style |
| Config Docs   | If tool-based, note shared and project-specific configs |
| Logging       | Prefer Serilog, log tests to `testdebug.log` |
| Accuracy      | Keep docs updated as code changes. Always.

## 🧟‍♂️ Related Docs

- [README.md](./README.md)
- [Project Structure and Setup](./docs/Project_Structure_And_Setup.md)
- [HISTORY.md](./HISTORY.md)

---

## 🏁 Wrap-up

This repo thrives when structure and freedom collide — documented rigor + expressive C#.  
So commit often, test everything, document like a digital cartographer, and let your `.NET` dreams flow.

*Codex-Construct: Build intentionally, debug fearlessly, document beautifully.* 🚀
