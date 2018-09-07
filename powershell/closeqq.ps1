try
{
Stop-Process -Name TIM   -ErrorAction Stop #
}
catch{
Write-Output "tim已关闭！" 

}
Stop-Process -Name QQProtect -Force
Set-Service -Name QPCore -StartupType Manual