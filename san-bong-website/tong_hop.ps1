# Script: tong_hop.ps1
# Tac gia: Pham Ngoc Linh
# Ngay tao: 2026-11-03
Write-Host "Dang tao bao cao..."
"=== BAO CAO SU CO WEBSITE ===" > .\logs\tong_hop.txt
Get-Content .\logs\access.log | Select-String "status=404" | ForEach-Object { $_.Line } >> .\logs\tong_hop.txt
(Get-Content .\logs\access.log | Select-String "status=500" | Measure-Object).Count >> .\logs\tong_hop.txt
Write-Host "Hoan thanh!"
