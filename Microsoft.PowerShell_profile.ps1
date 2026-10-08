# Theme
oh-my-posh init pwsh --config "~\.poshthemes\tokyo_mine.omp.pwsh.json" | Invoke-Expression

# Set PSReadLine Mode
Set-PSReadLineOption -EditMode vi
Set-PSReadLineKeyHandler -Chord "Ctrl+Oem4" -ViMode Insert -Function ViCommandMode
$PSDefaultParameterValues['*:Encoding'] = 'utf8'

# fnm(node.js version manager)
# e.g. fnm env --use-on-cd --fnm-dir="E:\SOFT\programming\package-manage\fnm" | Out-String | Invoke-Expression
fnm env --use-on-cd | Out-String | Invoke-Expression

# Alias
Set-Alias vim nvim

function pip {
  echo('python -m pip')
  python -m pip $args
}

function yaya {
	$tmp = (New-TemporaryFile).FullName
	yazi.exe @args --cwd-file="$tmp"
	$cwd = Get-Content -Path $tmp -Encoding UTF8
	if ($cwd -and $cwd -ne $PWD.Path -and (Test-Path -LiteralPath $cwd -PathType Container)) {
		Set-Location -LiteralPath (Resolve-Path -LiteralPath $cwd).Path
	}
	Remove-Item -Path $tmp
}
