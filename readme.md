1.
`sc.exe config TrustedInstaller binpath= "cmd /c powershell -ExecutionPolicy Bypass -File /script.ps1"`
`sc.exe start TrustedInstaller`
`sc.exe stop TrustedInstaller`
`sc.exe config TrustedInstaller binpath= "C:\Windows\servicing\TrustedInstaller.exe"`

2.
`sc.exe start TrustedInstaller`
#install dependency
`Install-Module -Name NtObjectManager`
#enable scripts
`Set-ExecutionPolicy RemoteSigned`
`$p = Get-NtProcess TrustedInstaller.exe`
`$proc = New-Win32Process cmd.exe -CreationFlags NewConsole -ParentProcess $p`

#disable scritps (back to default)
`Set-ExecutionPolicy Restricted`
