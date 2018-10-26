


chcp 65001

#--------Install And Import Module-----------------------------------#

#Set-Executionpolicy -ExecutionPolicy Unrestricted
# Set-Psrepository -Name PSGallery -InstallationPolicy Trusted
# Install-Module DirColors
# Install-Module Posh-Git
# Install-Module Oh-My-posh
# Install-Module Screenfetch
# Install-Module Jump.Location
# Install-Module Pscx -AllowClobber
# Install-Module -Name PowerShellGet -Force
# Install-Module -Name PSReadLine -AllowPrerelease -Force


Import-Module Pscx -arg "C:\Windows\System32\WindowsPowerShell\v1.0\Pscx.UserPreferences.ps1"
Import-Module DirColors
Import-Module Jump.Location
Import-Module Posh-Git
Import-Module Oh-My-Posh
#--------------------------------------------------------------------#

#---------Appearance Settings----------------------------------------#
Set-Theme PowerLine
# Set-Theme Fish
# Set-Theme Agnoster #和powerline一样
# Set-Theme Paradox #还可以
# Set-Theme Honukai #还可以
# Set-Theme Darkblood #不一样
# Set-Theme Avit #不一样
# Set-Theme Sorin
# Set-Theme tehrob
Update-Dircolors ~/dir_colors
# Screenfetch
#--------------------------------------------------------------------#


# 环境变量
$desktop="$home/desktop"
$app="C:\ProgramData\Microsoft\Windows\Start Menu\Programs"
$apps="C:\Users\fj\AppData\Roaming\Microsoft\Windows\Start Menu\Programs"
# $program="E:\Program Files"
# $program86="E:\Program Files (x86)"
$fonts="C:\Windows\Fonts"
$hosts="C:\Windows\System32\drivers\etc\hosts"
$posts="C:\Users\fj\Desktop\github\infinite-knowledge.github.io\_posts"
# $regPath = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings'
cd $desktop

#------------------------ Difine Aliases-----------------------------#
Set-Alias  sa  Set-Alias
sa open  Invoke-Item  #执行文件默认操作
sa touch New-Item     #新建文件
sa st    subl
sa say   Out-Speech
sa di    dict
# modify system aliases to suit individual habits
Remove-Item -Path "Alias:\clc" -Force
Remove-Item -Path "Alias:\cls" -Force
Remove-Item -Path "Alias:\curl" -Force
Remove-Item -Path "Alias:\cat" -Force
sa clc Clear-Host
sa wh Write-Host
sa of Out-File
# sa cat `Get-Content  -encoding utf8`
#--------------------------------------------------------------------#
function cat{

get-content $args -encoding utf8


}
function Open-App{
    foreach ($item in $args) {
        $path=-join($app,"\",$item,".lnk")
        $path1=-join($apps,"\",$item,".lnk")

            if (test-path $path ) {
                open $path
            }
            elseif (test-path $path1) {
                open $path1
            }
            else {
                $fullnames=Get-ChildItem $app,$apps -Recurse -Attributes !D|Foreach-Object fullname
                $basenames=$fullnames|Foreach-Object {Split-Path -Leaf $_}|Foreach-Object {$_.split(".")[0]}

                if ($item -in $basenames) {
                    $count=$fullnames.count
                     for ($i=1;$i -lt $count;$i++){
                            if ( $item -eq $basenames[$i] ) {
                                open $fullnames[$i]
                                break
                            }
                        }
                }
                else {
                     Write-Host  -ForegroundColor DarkRed "Not Found Application !"
                }

            }
    }
}
sa op Open-App

Function Set-Profile{
    code $profile.AllUsersCurrentHost
}
sa vsp Code-Profile
Function Open-Fonts
{
    open $fonts
}
sa font Open-Fonts

# create shortcut and  set up command alias
# function New-Shortcut($TargetPath,$link){
# $sh = New-Object -ComObject wscript.shell
# $sc = $sh.CreateShortcut($app + "\" + $link + ".lnk")
# $sc.targetpath = $TargetPath
# $sc.save()
# }
# sa ln New-Shortcut



# for editing your Hosts profile and set up command alias
Function Edit-Hosts{
    st $hosts

}
sa eh Edit-Hosts

# get all alias according to your command and set up alias
function Get-Cmdletalias ($cmdletname){
Get-Alias | Where-Object {$_.definition -like "*$cmdletname*"} | Format-Table Definition, Name -auto
}
sa gca  Get-Cmdletalias




function .. { Set-Location ..\.. }
function ... { Set-Location ..\..\.. }
function .... { Set-Location ..\..\..\.. }
function ..... { Set-Location ..\..\..\..\.. }
function ...... { Set-Location ..\..\..\..\..\.. }
function ....... { Set-Location ..\..\..\..\..\..\.. }
function ........ { Set-Location ..\..\..\..\..\..\..\.. }
function ~{ Set-Location ~ }
function Desk{ Set-Location $desktop }


# finding binary executable program from the system search path
function which
{
    $results =New-Object System.Collections.Generic.List[System.Object]
    foreach ($command in $args)
    {
        $path = (Get-Command $command).Source
        if ($path)
        {
            $results.Add($path)
        }
    }
    return $results
}

function cu {
    Invoke-WebRequest -x   socks5h://localhost:1080 $args
}

# set up startup MATLAB options
function Start-Matlab{
    matlab -nosplash -sd "E:\onedrive\document\matlab"#启动matlab不显示启动标志，并设置工作目录
}

function Min-Matlab{matlab -automation}

sa sm Start-Matlab
sa mb Min-Matlab

    Function Compare-ObjectProperties {
    Param(
        [PSObject]$ReferenceObject,
        [PSObject]$DifferenceObject
    )
    $objprops = Get-Member -InputObject $ReferenceObject  -MemberType Property, NoteProperty| Foreach-Object Name
    $objprops +=Get-Member  -InputObject $DifferenceObject  -MemberType Property, NoteProperty | Foreach-Object Name
    $objprops = $objprops | Sort-Object | Select-Object -Unique
    $diffs = @()
    foreach ($objprop in $objprops) {
        $diff = Compare-Object $ReferenceObject $DifferenceObject -Property $objprop
        if ($diff) {
            $diffprops = @{
                PropertyName = $objprop
                RefValue     = ($diff | Where-Object {$_.SideIndicator -eq '<='} | Foreach-Object $($objprop))
                DiffValue    = ($diff | Where-Object {$_.SideIndicator -eq '=>'} | Foreach-Object $($objprop))
            }
            $diffs += New-Object PSObject -Property $diffprops
        }
    }
    if ($diffs) {return ($diffs | Select-Object PropertyName, RefValue, DiffValue)}
}

function Read-Translate {


    param (


        [string]$sentence,
        [switch]$word


    )
    if ($word) {
        $words = $sentence.Split(" ")
        $strarray=@(".",",","~","``","!","@","#","^",":"," ","?")
        foreach ($item in $words) {
            if ($item -notin $strarray) {
                di $item ; say $item
            }

        }
    }
    else {

        di $sentence  ; say $sentence


    }



}
sa rat Read-Translate










