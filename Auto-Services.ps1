Get-Service * -ComputerName (Get-Content C:\temp\servers_list.txt) |
    Select-Object -Property name,DisplayName,Status,StartType,machinename |
        Where-Object {$_.StartType -eq 'Automatic' -and $_.Status -eq 'Stopped'} | 
        sort machinename | Format-Table -AutoSize
