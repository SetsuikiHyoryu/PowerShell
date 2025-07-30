# Theme
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\tokyo_mine.omp.pwsh.json" | Invoke-Expression

# Set PSReadLine Mode
Set-PSReadLineOption -EditMode vi
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
