
# Requires -Version 5.1
Describe 'Rayhan.Windows.Helper Module' {
    It 'Module file exists' {
        Test-Path "$PSScriptRoot/../src/Rayhan.Windows.Helper.psm1" | Should -BeTrue
    }
}
