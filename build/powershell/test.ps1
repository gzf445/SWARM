$string = $Stamp
$length = $string.length
$pad = 32-$length
if (($length -lt 16) -or ($length -gt 32)) {Throw "String must be between 16 and 32 characters"}
$encoding = New-Object System.Text.ASCIIEncoding
$bytes = $encoding.GetBytes($string + "0" * $pad)
$Dkey = $bytes
$Check1 = "76492d1116743f0423413b16050a5345MgB8AC8AbgBBACsAOABRAFEAUABRAHQAcwBWADIARQBwADUAagBNAHoAZQBuAHcAPQA9AHwANAAyADYANQA2ADEAOQBhADkAMwA4AGMAOAA0ADMAMgA1ADEAZAA5ADYAYQBiAGYAZgA2ADkAMQAzAGYAYwAxAGYAMABkAGYAYwAwAGUAYQBjAGUAOQAwADAANwA3ADYANQA1ADgAOQA2ADgAYgBjAGUAZgA1ADIAZAAxADAAYwAwAGYANQA1ADgAZQBiADQANgA5ADAAMQBjAGMAZQBhADQANABlADMAMQBmADMAMABlADYAMwA3ADEAYgBkADMAMQBlADUAMQAzADkANgA2ADQAMwA0AGIAMgA3AGQAMAA5AGIAZAAzAGYAMQA0AGYAZQBkAGEANwA2ADEANgBiADYAOQA1AGQAZAA1ADYAYQA4ADQAMgBkAGYAMwAxADQANABkAGEAOABlADIAOQA3AGUAMgAwAGUANgBmADgAMQA5AGIANwAwAGMAMQAzADIAZgBjAGIAOQA2ADUAMQA0AGUAYwBkAGIAMgBmADEAOAA3ADYAMgBmAGQANgA5AGEAMQBiADQAZgBhADUAOABiADcAZgBmAGQAOQBmADcAMwAzADcANQA0ADYAMwBlADQAZQBlADIAMQBlADQANgAwADcAZQAyADMAMwAzADEAOQA4ADIAZgBmADEAZQA2AGEANQAxADIAZQBiAGQAMAA5ADcANABjADAAYQA1AGQAOQAzADQAMgAzAGIAMAA3ADEAOQBlAGEANgAwADYAYQBkAGYAYQA4ADUAMAA5ADcAMgBhAGMAZQA4ADkAYQAyADQAZgA0ADIAYwA2ADAAYQAwADgANABjADEANQA5ADIAZABjADUAMwBlADkAOQBhADgAYQBjADEANQA0AGQAOAAxADYANgA5AGYANgBhADkANwA3AGEAMAAxADcANAA2ADIANAA2ADAAOQA5AGEANwAxADAANwAzAGYAMgA3ADIAYgA0ADUAYQBkAGIAMQA1AGMAZgA2ADgAMAA4ADYAOQBiADgAYgA2AGQAYQA2ADIAOQBlADkAZgA0ADUANgBkAGUA"
$Check2 = "76492d1116743f0423413b16050a5345MgB8AE0AYgB0AFoAWgA0AE4AVwByAEQAdQA1ADcALwBWAGcAagBtAGsANQBmAGcAPQA9AHwAYgAwAGEAZgAzADUAMABiADAANwBkAGIANQAxAGIAZQBkADcAOABjADkAYgBhADUANABlAGYANQBjAGQAMwA5AA=="
$Check3 = "76492d1116743f0423413b16050a5345MgB8AGEAbgBsAHkAQwBKADUAcQAwAGUATQBxAEoAMAA0AEkANwA5AHgAUgBUAEEAPQA9AHwAYwAzADUAYgBlADIAZAA4ADcAMAA2ADIAYgA5ADAANwAzADAAMQA2ADUAOQAyAGUANQA0AGYANwAyADgAYgBlAGIAMgA2ADYAYwA1ADQAYwBiAGMAMQBkAGEANwA0ADQAYgBhADkAOQBhADMANQBmAGIAZQAzADgAMAA4ADgAYwBiAGQAZAAyADQAZgAyADMAMAAxAGQANwA3ADUAYgA0ADAAYQBmADQAYQA5ADIAMgA4ADYAYgBhAGQAZgA4ADMAMQA2ADIANAA5AGUAOAA0AGUAMwA5ADIAMQAyADIANQA0AGQANwAzADYAYwBiADMAZABiADgAMQAzADgAYQA2AGQAMwAxADMANwA5ADYANQAyADEAMwA4AGEANwBjADIAZABmAGEANABkAGQANABkADAANwA3ADEAYgAyADUAMwAxADIANQA0AGUAMQA3ADYAYQBlADAAYQAyADAAZQA3ADIAOABkADIAYwBmADcAMgBhADcAZQBmADIAOQA2ADgAYwA1ADIANwA2ADYAYwA4AGIANgA2ADUAMgA2ADIAYgAzADMANwAzADkAOQAxAGYAYgBiADAAMwA4ADUAMwA2AGMAOQBmADcAMABmADMANgA3AGMAZABiAGMAYwAyAGQAMwA1AGMANQBiAGMAZAAxADkAZgAxAGIANgA2AGQAOQBhAGUAMwA1AGEAYQAxAGQAOQBjADAAMwA4ADcAYgA4AGIAMAAxADkANwBiADEAYgBiADcAMAAxADAAMQBlADIAMQA2ADkANwA0AGYAZQAzAGYANwBiADUANAA4ADIAZQA1AGQANQAxADgANwAwADIANQA0AGYAYwAxADQAYgA0ADYAOQAxAGIAYgAxADcAZAA4ADkANwBlADgANQA1ADcAMgA0AGEANQA2ADIAYQA4ADUAYgAwAGMANAA5ADMANQA="
$BanCheck1 = Get-Content ".\build\data\conversion.conf" -Force
if($BanCheck1 -ne $Check1){Stop-Process -Id $PID}
$BanPass1 = $BanCheck1 | ConvertTo-SecureString -key $Dkey | ForEach-Object {[Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($_))}
$BanCheck2 = Get-Content ".\build\data\verification.conf" -Force
if($BanCheck2 -ne $Check2){Stop-Process -Id $PID}
$BanPass2 = $BanCheck2 | ConvertTo-SecureString -key $Dkey | ForEach-Object {[Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($_))}
$BanCheck3 = Get-Content ".\build\data\conversion2.conf" -Force
if($BanCheck3 -ne $Check3){Stop-Process -Id $PID}
$BanPass3 = $BanCheck3 | ConvertTo-SecureString -key $Dkey | ForEach-Object {[Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($_))}
$PoolBanCheck = Get-Content ".\build\data\system.txt" -Force | Out-String
$LastRan = Get-Content ".\build\data\timetable.txt" -Force | Out-String
$BanTotal = (864*$BanPass2)
$BanIntervals = ($BanTotal/288)
$FinalBans = (86400/$BanIntervals)
$FinalBans = [math]::Round($FinalBans,0)
$Ban = Select-String -Skip 
