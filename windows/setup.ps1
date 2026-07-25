function Install-Winget([string]$PackageName) {
    winget install --exact --id $PackageName --source winget
}

Install-Winget('Microsoft.PowerShell')
Install-Winget('junegunn.fzf')
Install-Winget('BurntSushi.ripgrep.MSVC')
Install-Winget('ZedIndustries.Zed')
Install-Winget('OBSProject.OBSStudio')
Install-Winget('Obsidian.Obsidian')
Install-Winget('Microsoft.PowerToys')
Install-Winget('Bitwarden.Bitwarden')
Install-Winget('Mozilla.Firefox')
Install-Winget('GitHub.cli')
Install-Winget('Atuinsh.Atuin')
