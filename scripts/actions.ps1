Param(
	[Parameter(Mandatory=$true,helpMessage="Options: 1. Install modules | 2. Update modules.")]
	[int]$ActionNumber
)

if ($ActionNumber -eq 1) {
	git submodule init
	git submodule update
} elseif ($ActionNumber -eq 2) {
	git submodule update --remote
} else {
	Write-Host "Undefined action number." -ForegroundColor Red
}
