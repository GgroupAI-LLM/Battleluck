# BattleLuck PowerShell Aliases
# Source this in your profile: . .\.powershell-aliases.ps1

# ==== DOCUMENTATION GUIDES ====
Set-Alias -Name docs-summary -Value {code docs\PROJECT_SUMMARY.md}
Set-Alias -Name docs-arch -Value {code docs\ARCHITECTURE.md}
Set-Alias -Name docs-ecs -Value {code docs\ECS_COMPLETE_GUIDE.md}
Set-Alias -Name docs-prefabs -Value {code docs\PREFABS_COMPLETE_GUIDE.md}
Set-Alias -Name docs-llm -Value {code docs\LLM_INTEGRATION.md}
Set-Alias -Name docs-ui -Value {code docs\UI_CONSOLE_GUIDE.md}
Set-Alias -Name docs-chat -Value {code docs\AI_CHAT_INTEGRATIONS.md}
Set-Alias -Name docs-char -Value {code docs\CHARACTER_LIFECYCLE.md}
Set-Alias -Name docs-entity -Value {code docs\ENTITY_CREATION_TELEPORT.md}
Set-Alias -Name docs-buffs -Value {code docs\BUFFS_INVENTORY_KITS.md}

# Open all docs at once
function docs-all {
    code docs\PROJECT_SUMMARY.md
    code docs\ARCHITECTURE.md
    code docs\ECS_COMPLETE_GUIDE.md
    code docs\PREFABS_COMPLETE_GUIDE.md
    code docs\LLM_INTEGRATION.md
    code docs\UI_CONSOLE_GUIDE.md
    code docs\AI_CHAT_INTEGRATIONS.md
    code docs\CHARACTER_LIFECYCLE.md
    code docs\ENTITY_CREATION_TELEPORT.md
    code docs\BUFFS_INVENTORY_KITS.md
    Write-Host "✓ All 10 guides opened in VS Code" -ForegroundColor Green
}

# ==== NAVIGATION ====
Set-Alias -Name cdcore -Value {Set-Location Core}
Set-Alias -Name cdsvc -Value {Set-Location Services}
Set-Alias -Name cdutil -Value {Set-Location Utilities}
Set-Alias -Name cddata -Value {Set-Location Data}
Set-Alias -Name cddocs -Value {Set-Location docs}
Set-Alias -Name cdhome -Value {Set-Location C:\Users\ahmad\RiderProjects\battleluck}

# ==== GIT OPERATIONS ====
function git-status {git status}
function git-log {git log --oneline -10}
function git-branch {git branch -a}
function git-pull {git pull origin main}
function git-push {git push origin main}
function git-commit {
    param([string]$message = "Update")
    git add .
    git commit -m "$message" -m "Co-authored-by: Copilot App <223556219+Copilot@users.noreply.github.com>"
}

# ==== BUILD & DEBUG ====
function build { dotnet build }
function rebuild { dotnet clean; dotnet build }
function test-all { dotnet test }
function clean { dotnet clean }

# ==== PROJECT SHORTCUTS ====
function open-project { 
    Start-Process "C:\Program Files\JetBrains\Rider\bin\rider.exe" "battleluck.csproj"
    Write-Host "✓ Opening BattleLuck in Rider" -ForegroundColor Green
}

function show-structs {
    # Show key struct definitions
    Write-Host "Key BattleLuck Structs:" -ForegroundColor Cyan
    Write-Host "`n=== Kit Configuration ===" -ForegroundColor Yellow
    Get-Content Models\KitModels.cs | Select-String "public class|public struct" -A 2
}

# ==== USEFUL SHORTCUTS ====
Set-Alias -Name ll -Value Get-ChildItem
Set-Alias -Name pwd -Value Get-Location
Set-Alias -Name touch -Value New-Item
Set-Alias -Name grep -Value Select-String
Set-Alias -Name clear-scr -Value Clear-Host

# ==== QUICK REFERENCE ====
function help-aliases {
    Write-Host "`n╔════════════════════════════════════════════════════════════╗" -ForegroundColor Cyan
    Write-Host "║         BattleLuck PowerShell Aliases                      ║" -ForegroundColor Cyan
    Write-Host "╚════════════════════════════════════════════════════════════╝" -ForegroundColor Cyan
    
    Write-Host "`n📚 DOCUMENTATION:" -ForegroundColor Yellow
    Write-Host "  docs-summary    → Project overview" -ForegroundColor Green
    Write-Host "  docs-arch       → System architecture" -ForegroundColor Green
    Write-Host "  docs-ecs        → ECS framework guide" -ForegroundColor Green
    Write-Host "  docs-prefabs    → Prefab registry & resolution" -ForegroundColor Green
    Write-Host "  docs-llm        → LLM integration & AI chat" -ForegroundColor Green
    Write-Host "  docs-ui         → UI & console systems" -ForegroundColor Green
    Write-Host "  docs-chat       → In-game AI chat integrations" -ForegroundColor Green
    Write-Host "  docs-char       → Character lifecycle & creation" -ForegroundColor Green
    Write-Host "  docs-entity     → Entity creation & teleportation" -ForegroundColor Green
    Write-Host "  docs-buffs      → Buffs, items, inventory, kits" -ForegroundColor Green
    Write-Host "  docs-all        → Open all guides at once" -ForegroundColor Green
    
    Write-Host "`n🗂️  NAVIGATION:" -ForegroundColor Yellow
    Write-Host "  cdcore          → Core/" -ForegroundColor Green
    Write-Host "  cdsvc           → Services/" -ForegroundColor Green
    Write-Host "  cdutil          → Utilities/" -ForegroundColor Green
    Write-Host "  cddata          → Data/" -ForegroundColor Green
    Write-Host "  cddocs          → docs/" -ForegroundColor Green
    Write-Host "  cdhome          → Project root" -ForegroundColor Green
    
    Write-Host "`n🔧 BUILD & DEBUG:" -ForegroundColor Yellow
    Write-Host "  build           → dotnet build" -ForegroundColor Green
    Write-Host "  rebuild         → dotnet clean && dotnet build" -ForegroundColor Green
    Write-Host "  test-all        → dotnet test" -ForegroundColor Green
    Write-Host "  clean           → dotnet clean" -ForegroundColor Green
    Write-Host "  open-project    → Open in Rider" -ForegroundColor Green
    
    Write-Host "`n📝 GIT OPERATIONS:" -ForegroundColor Yellow
    Write-Host "  git-status      → git status" -ForegroundColor Green
    Write-Host "  git-log         → Last 10 commits" -ForegroundColor Green
    Write-Host "  git-branch      → List branches" -ForegroundColor Green
    Write-Host "  git-pull        → Pull from mainss" -ForegroundColor Green
    Write-Host "  git-push        → Push to mainss" -ForegroundColor Green
    Write-Host "  git-commit MSG  → Commit with message & co-author trailer" -ForegroundColor Green
    
    Write-Host "`n🚀 QUICK SHORTCUTS:" -ForegroundColor Yellow
    Write-Host "  ll              → List files" -ForegroundColor Green
    Write-Host "  pwd             → Current location" -ForegroundColor Green
    Write-Host "  clear-scr       → Clear screen" -ForegroundColor Green
    Write-Host "`n"
}

# Show help on load
Write-Host "✓ BattleLuck aliases loaded! Type 'help-aliases' for reference" -ForegroundColor Green
