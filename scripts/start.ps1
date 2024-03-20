Write-Host "What you want to do?"
Write-Host "1) Install modules"
Write-Host "2) Update modules"
Write-Host "3) Uninstall modules"

[int]$userInput = Read-Host "Type a number"

If (($userInput -lt 1) -or ($userInput -gt 3)) {
    Write-Host "Invalid option."
} ElseIf ($userInput -eq 1) {
    git submodule init
    git submodule update
    Write-Host "Modules has been successfully installed!"
} ElseIf ($userInput -eq 2) {
    git submodule update --remote
    Write-Host "Modules has been successfully updated to the latest release!"
} ElseIf ($userInput -eq 3) {
    git submodule deinit --all
    Write-Host "Modules has been uninstalled."
}
