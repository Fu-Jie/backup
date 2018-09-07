# chcp 65001
 

# Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
# install-Module DirColors
# install-Module posh-git
# install-Module oh-my-posh
# install-Module Screenfetch
# Import-Module PScolor
import-module DirColors
# Install-Module -Name PowerShellGet -Force
# Install-Module -Name PSReadLine -AllowPrerelease -Force
Import-Module posh-git
Import-Module oh-my-posh
# Set-Theme PowerLine
# Set-Theme Fish
# Set-Theme Agnoster #和powerline一样
# Set-Theme Paradox #还可以
Set-Theme Honukai #还可以
# Set-Theme Darkblood #不一样
# Set-Theme Avit #不一样
#Set-Theme Sorin
 # Set-Theme tehrob
Update-DirColors ~/dir_colors
# Screenfetch
$desktop="$home/desktop"
cd $desktop
$app="C:\ProgramData\Microsoft\Windows\Start Menu\Programs"
$fonts="C:\Windows\Fonts"
$hosts="C:\Windows\System32\drivers\etc\hosts"
# $tim="C:\ProgramData\Microsoft\Windows\Start Menu\Programs\腾讯软件\TIM\"
set-alias  sa  set-alias 
#设置默认打开方式
sa open invoke-item 
#设置新建项目
sa touch new-item
Function Open-Fonts
{
    open $fonts
}
# Function Open-Tim
# {
#     open "${tim}Tim.lnk"
# }
sa font Open-Fonts
sa word winword
sa -name st -value subl
# $SCRIPTPATH = "C:\Program Files (x86)\Vim"
# $VIMPATH    = $SCRIPTPATH + "\vim81\vim.exe"
 
# sa vi   $VIMPATH  
# sa vim  $VIMPATH
 
# for editing your PowerShell profile
Function Edit-Profile{
    st $profile.AllUsersCurrentHost
}
Function Edit-Hosts{
    st $hosts

}
sa eh Edit-Hosts
 
# for editing your Vim settings
# Function Edit-Vimrc
# {
    # st $home\_vimrc
# }

sa ep Edit-Profile

# sa ev Edit-Vimrc
 # sa=set-alias

          function Get-CmdletAlias ($cmdletname)
           {
              get-alias | Where {$_.definition -like "*$cmdletname*"} | ft Definition, Name -auto
           }

sa gca  Get-CmdletAlias



rm -Path "Alias:\clc" -Force
rm -Path "Alias:\cls" -Force
rm -Path "Alias:\curl" -Force
sa clc Clear-host
sa wh write-host
sa of Out-File
function cd... { Set-Location ..\.. }
function cd.... { Set-Location ..\..\.. }
function cd..... { Set-Location ..\..\..\.. }
function cd...... { Set-Location ..\..\..\..\.. }
function cd....... { Set-Location ..\..\..\..\..\.. }
function cd........ { Set-Location ..\..\..\..\..\..\.. }
function cd......... { Set-Location ..\..\..\..\..\..\..\.. }
function which
{
    $results =New-Object System.Collections.Generic.List[System.Object];
    foreach ($command in $args)
    {
        $path = (Get-Command $command).Source
        if ($path)
        {
            $results.Add($path);
        }
    }
    return $results;
}
function cu {
    curl -x   socks5h://localhost:1080 $args
}
function Start-Matlab{
    matlab -nosplash -sd "E:\f\OneDrive\document\matlab"#启动matlab不显示启动标志，并设置工作目录
}
sa sm start-Matlab
















