### 🔧 One-liner (safe)
```powershell
powershell -NoProfile -ExecutionPolicy Bypass -Command "$u='https://raw.githubusercontent.com/rayhanbiswasbd/RAYHAN-Windows-Helper/main/scripts/RAYHAN_Windows_Helper.cmd'; $p=Join-Path $env:TEMP 'RAYHAN_Windows_Helper.cmd'; Invoke-WebRequest -UseBasicParsing -Uri $u -OutFile $p; Start-Process -Verb RunAs -FilePath $p"
```

### ⚠️ One-liner (irm | iex)
> Use at your own risk. Source is this repo's `install.ps1`.
```powershell
irm https://raw.githubusercontent.com/rayhanbiswasbd/RAYHAN-Windows-Helper/main/install.ps1 | iex
```
