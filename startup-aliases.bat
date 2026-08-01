@echo off
REM BattleLuck Development Shortcuts for Windows
REM Add this to your PATH or use directly

doskey docs-summary=code docs\PROJECT_SUMMARY.md
doskey docs-arch=code docs\ARCHITECTURE.md
doskey docs-ecs=code docs\ECS_COMPLETE_GUIDE.md
doskey docs-prefabs=code docs\PREFABS_COMPLETE_GUIDE.md
doskey docs-llm=code docs\LLM_INTEGRATION.md
doskey docs-ui=code docs\UI_CONSOLE_GUIDE.md
doskey docs-chat=code docs\AI_CHAT_INTEGRATIONS.md
doskey docs-char=code docs\CHARACTER_LIFECYCLE.md
doskey docs-entity=code docs\ENTITY_CREATION_TELEPORT.md
doskey docs-buffs=code docs\BUFFS_INVENTORY_KITS.md

doskey cdcore=cd Core
doskey cdsvc=cd Services
doskey cdutil=cd Utilities
doskey cddata=cd Data
doskey cddocs=cd docs

doskey build=dotnet build
doskey rebuild=dotnet clean $T dotnet build
doskey test-all=dotnet test
doskey clean=dotnet clean
doskey git-status=git status
doskey git-log=git log --oneline -10
doskey git-branch=git branch -a
doskey git-pull=git pull origin main
doskey git-push=git push origin main

@echo.
@echo.
@echo ============================================
@echo  BattleLuck Development Shortcuts Loaded
@echo ============================================
@echo.
@echo DOCUMENTATION:
@echo   docs-summary    - Project overview
@echo   docs-arch       - System architecture
@echo   docs-ecs        - ECS framework
@echo   docs-prefabs    - Prefab system
@echo   docs-llm        - LLM integration
@echo   docs-ui         - UI console
@echo   docs-chat       - AI chat
@echo   docs-char       - Character lifecycle
@echo   docs-entity     - Entity creation
@echo   docs-buffs      - Buffs and inventory
@echo.
@echo NAVIGATION:
@echo   cdcore, cdsvc, cdutil, cddata, cddocs
@echo.
@echo BUILD:
@echo   build, rebuild, test-all, clean
@echo.
@echo GIT:
@echo   git-status, git-log, git-branch, git-pull, git-push
@echo.
