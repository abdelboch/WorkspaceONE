while(-not $completed){if((get-itemproperty -path 'HKLM:\SOFTWARE\Policies\Microsoft\Internet Explorer\Main' -ErrorAction SilentlyContinue).'Start Page' -eq 'https://mgs.marriott.com' -and (get-itemproperty -path 'HKLM:\SOFTWARE\CrowdStrike\Falcon' -ErrorAction SilentlyContinue).Status -eq '0' -and (Test-Path 'C:\Program Files (x86)\VMware\VMware Horizon View Client\vmware-view.exe') -and (Test-Path '$env:ALLUSERSPROFILE\Microsoft\Windows\Start Menu\Programs\Internet Explorer.lnk')){$completed = $true; shutdown /r /t 3}else{echo 'Waiting';start-sleep 3}}