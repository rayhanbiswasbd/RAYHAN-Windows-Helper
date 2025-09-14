
# Rayhan.Windows.Helper.psm1
# Clean, legal helper for Windows licensing tasks.
# No KMS/bypass. Uses official slmgr.vbs.

$global:RayhanHelperLog = "$($env:ProgramData)\RAYHAN-Helper\log.txt"
$null = New-Item -ItemType Directory -Force -Path ([System.IO.Path]::GetDirectoryName($global:RayhanHelperLog)) | Out-Null

function Write-Log {
    param([string]$Message)
    $ts = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    "$ts [INFO] $Message" | Out-File -FilePath $global:RayhanHelperLog -Append -Encoding utf8
}

function Install-ProductKey {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [ValidatePattern('^[A-Z0-9]{5}(-[A-Z0-9]{5}){4}$')]
        [string]$Key
    )
    Write-Log "Installing product key."
    & cscript.exe //nologo "$env:WINDIR\System32\slmgr.vbs" /ipk $Key | Out-Null
}

function Activate-Online {
    [CmdletBinding()]
    param()
    Write-Log "Activating online."
    & cscript.exe //nologo "$env:WINDIR\System32\slmgr.vbs" /ato | Out-Null
}

function Get-ActivationStatus {
    [CmdletBinding()]
    param()
    Write-Log "Query activation status."
    & cscript.exe //nologo "$env:WINDIR\System32\slmgr.vbs" /dli
    & cscript.exe //nologo "$env:WINDIR\System32\slmgr.vbs" /xpr
}

function Uninstall-ProductKey {
    [CmdletBinding()]
    param()
    Write-Log "Uninstalling current key and clearing cache."
    & cscript.exe //nologo "$env:WINDIR\System32\slmgr.vbs" /upk | Out-Null
    & cscript.exe //nologo "$env:WINDIR\System32\slmgr.vbs" /cpky | Out-Null
}

Export-ModuleMember -Function Install-ProductKey, Activate-Online, Get-ActivationStatus, Uninstall-ProductKey
