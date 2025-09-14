# RAYHAN Windows Helper

A **clean & legal** Windows licensing helper — branded for **RAYHAN**.  
This tool **does not** use KMS/bypass/cracks. It only runs official licensing commands (`slmgr.vbs`) with **valid, purchased keys** and reads activation status.

## Features
- Check Windows activation status
- Install a genuine product key
- Online activation (`slmgr /ato`)
- Uninstall current key + clear cached key
- Minimal UI (Batch) + reusable PowerShell module
- Logging to `%ProgramData%\RAYHAN-Helper\log.txt`

## Usage (Batch menu)
1. Right-click **`scripts\RAYHAN_Windows_Helper.cmd`** → Run as Administrator
2. Choose an option from the menu

## Usage (PowerShell module)
```powershell
Import-Module "$PSScriptRoot/../src/Rayhan.Windows.Helper.psm1"
Install-ProductKey -Key XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
Activate-Online
Get-ActivationStatus
Uninstall-ProductKey
```

> ⚖️ **Legal**: Use only with genuine keys you own. No KMS/loader/bypass included or supported.

## Dev Notes
- Pester tests stub in `tests/` (expand as needed).
- GitHub Actions workflow template under `.github/workflows/release.yml`.
- Consider code-signing your scripts before public release.

## License
MIT — see `LICENSE`.
