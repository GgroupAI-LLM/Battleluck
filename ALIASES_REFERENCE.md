# BattleLuck Development Aliases & Shortcuts

## Quick Start

### For CMD (Command Prompt)
```cmd
startup-aliases.bat
```
Then use any alias from the list below.

### For PowerShell
```powershell
. .\.powershell-aliases.ps1
help-aliases
```

---

## 📚 Documentation Aliases

Open guides instantly:

```bash
docs-summary          # PROJECT_SUMMARY.md - Project overview & purpose
docs-arch            # ARCHITECTURE.md - System design & module connections
docs-ecs             # ECS_COMPLETE_GUIDE.md - Entity-Component-System framework
docs-prefabs         # PREFABS_COMPLETE_GUIDE.md - Prefab registry & resolution
docs-llm             # LLM_INTEGRATION.md - AI integration points
docs-ui              # UI_CONSOLE_GUIDE.md - UI systems & console
docs-chat            # AI_CHAT_INTEGRATIONS.md - In-game AI chat
docs-char            # CHARACTER_LIFECYCLE.md - Character creation & lifecycle
docs-entity          # ENTITY_CREATION_TELEPORT.md - Entity spawning & teleport
docs-buffs           # BUFFS_INVENTORY_KITS.md - Buffs, items, inventory systems
docs-all             # Open all 10 guides at once
```

---

## 🗂️ Navigation Aliases

Quick directory jumping:

```bash
cdcore              # → Core/
cdsvc               # → Services/
cdutil              # → Utilities/
cddata              # → Data/
cddocs              # → docs/
cdhome              # → Project root
```

---

## 🔧 Build & Debug

```bash
build              # dotnet build
rebuild            # Clean + build
test-all           # Run all tests
clean              # dotnet clean
open-project       # Open in Rider
```

---

## 📝 Git Operations

```bash
git-status         # git status
git-log            # Last 10 commits
git-branch         # List all branches
git-pull           # Pull from mainss
git-push           # Push to mainss
git-commit "msg"   # Commit with co-author trailer
```

---

## 🚀 Quick Utilities

```bash
ll                 # List files
pwd                # Current location
clear-scr          # Clear screen
touch <file>       # Create file
grep <pattern>     # Search text
```

---

## 📖 Where to Start Reading Code

1. **First time?** → `docs-summary`
2. **Architecture overview?** → `docs-arch`
3. **How is data structured?** → `docs-ecs`
4. **How do I spawn entities?** → `docs-entity`
5. **How do I give players items?** → `docs-buffs`
6. **How does AI work?** → `docs-llm` → `docs-chat`
7. **How are game objects defined?** → `docs-prefabs`
8. **How do UI elements work?** → `docs-ui`
9. **Character creation system?** → `docs-char`

---

## Setup Instructions

### Option 1: Auto-load in CMD
Add to your system PATH or Windows `autorun` registry key:
```
cmd /k C:\Users\ahmad\RiderProjects\battleluck\startup-aliases.bat
```

### Option 2: Auto-load in PowerShell Profile
Edit your PowerShell profile:
```powershell
$PROFILE  # Shows path
notepad $PROFILE
```

Add this line:
```powershell
. C:\Users\ahmad\RiderProjects\battleluck\.powershell-aliases.ps1
```

Save and restart PowerShell.

### Option 3: Manual Load (Each Session)
```cmd
startup-aliases.bat
```

or

```powershell
. .\.powershell-aliases.ps1
```

---

## Troubleshooting

**"doskey: command not found"**
→ You're using PowerShell. Run `startup-aliases.bat` from CMD instead, or use `.powershell-aliases.ps1` in PowerShell.

**"Running scripts is disabled"**
→ PowerShell execution policy too strict. In PowerShell as admin:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

**Aliases not persisting after restart?**
→ Auto-load not configured. See Setup Instructions above.

---

## Pro Tips

- **Combine aliases:** `cddocs && docs-ecs` (jump to docs dir, then open ECS guide)
- **Quick review:** `docs-arch && docs-ecs && docs-prefabs` (open architecture pipeline in sequence)
- **Full dev setup:** `build && docs-summary` (build project, then review changes in summary)
- **Git workflow:** `git-status && git-log && git-branch` (check status, review commits, pick branch)

---

## All Aliases at a Glance

| Category | Alias | Target |
|----------|-------|--------|
| **Docs** | `docs-*` | Open each guide |
| **Docs** | `docs-all` | Open all 10 guides |
| **Nav** | `cd*` | Jump to directory |
| **Build** | `build`, `rebuild`, `test-all`, `clean` | dotnet commands |
| **Git** | `git-*` | git operations |
| **Utils** | `ll`, `pwd`, `touch`, `grep` | OS utilities |

---

## Next Steps

1. **Load aliases:** Run `startup-aliases.bat` or `. .powershell-aliases.ps1`
2. **Test an alias:** `docs-summary`
3. **Read** one of the 10 guides based on your interest
4. **Set up auto-load** for persistent access (see Setup Instructions)
5. **Customize** the alias files to add your own shortcuts!
