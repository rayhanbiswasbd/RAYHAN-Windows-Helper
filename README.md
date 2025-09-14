📌 Final Polished README.md (GitHub Ready)
# ⚡ RAYHAN Windows Helper

![GitHub release](https://img.shields.io/github/v/release/rayhanbiswasbd/RAYHAN-Windows-Helper?style=for-the-badge)
![License](https://img.shields.io/badge/license-MIT-green?style=for-the-badge)

A **clean & legal** Windows licensing helper by **RAYHAN** — automates `slmgr.vbs` using your own valid product keys.  
> ⚖️ **No KMS / loader / cracks** → 100% safe & legit.

---

## ✨ Features
- 🔑 Install your genuine product key  
- ⚡ One-click online activation  
- 📜 Check Windows activation status  
- 🗑️ Uninstall current key & clear cache  
- 🗂️ Logs saved to `%ProgramData%\RAYHAN-Helper\log.txt`

---

## 🚀 Quick Start
1. **Download / clone** this repo  
   ```bash
   git clone https://github.com/rayhanbiswasbd/RAYHAN-Windows-Helper.git
   cd RAYHAN-Windows-Helper


Run scripts/RAYHAN_Windows_Helper.cmd as Administrator

Choose an option from the menu:

(1) Check activation status

(2) Install a genuine product key

(3) Online activation

(4) Uninstall current key

⚙️ How It Works

This helper is a simple wrapper around Microsoft’s official licensing script slmgr.vbs.
Here’s what happens behind the scenes:

Check Activation Status

slmgr.vbs /dli
slmgr.vbs /xpr


→ Shows current edition, license info, and whether Windows is permanently activated.

Install Product Key

slmgr.vbs /ipk XXXXX-XXXXX-XXXXX-XXXXX-XXXXX


→ Installs the genuine product key you provide.

Online Activation

slmgr.vbs /ato


→ Connects to Microsoft servers and activates Windows.

Uninstall Key + Clear Cache

slmgr.vbs /upk
slmgr.vbs /cpky


→ Removes the installed key and clears it from the registry.

🔒 Important:

Works only with valid, purchased keys.

No KMS / bypass is included.

Errors are logged to %ProgramData%\RAYHAN-Helper\log.txt.

📂 Repository Structure
RAYHAN-Windows-Helper/
├─ scripts/                  # Batch menu entrypoint
├─ src/                      # PowerShell module
├─ tests/                    # Pester test stubs
├─ .github/workflows/        # GitHub Actions release workflow
├─ README.md
└─ LICENSE

<h1 align="center">Hi 👋, I'm RAYHAN</h1> <h3 align="center">🚀 Paid Ads Specialist | Facebook & Google Ads | Founder @ Team RSB Digital</h3>
