Param(
	[Parameter(Mandatory, HelpMessage={
		'Type a number:'
		'1) Install modules'
		'2) Update modules'
		'3) Uninstall modules'
		}
	)]
	[int]$ActionNumber
)

If (($ActionNumber -lt 1) -or ($ActionNumber -gt 3)) {
    Write-Host "Invalid option." -ForegroundColor Red
} ElseIf ($ActionNumber -eq 1) {
    git submodule init
    git submodule update
    Write-Host "Modules has been successfully installed!" -ForegroundColor Green
} ElseIf ($ActionNumber -eq 2) {
    git submodule update --remote
    Write-Host "Modules has been successfully updated to the latest release!" -ForegroundColor Green
} ElseIf ($ActionNumber -eq 3) {
    git submodule deinit --all
    Write-Host "Modules has been uninstalled." -ForegroundColor Green
}
