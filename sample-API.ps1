try{$SummaryRequest = Invoke-WebRequest "http://localhost:4099/Summary" -UseBasicParsing -TimeoutSec 10}catch{Write-Warning "Failed To Contact Summary"}

if($SummaryRequest)
{
 $SummaryRequest = $SummaryRequest.Content | ConvertFrom-JSon
 $AMDStats = $SummaryRequest | Where TYPE -eq "AMD1"
 $NVIDIAStats = $SummaryRequest | Where TYPE -eq "NVIDIA1"
}

## Note if You are using WATTOMETER, and your profits are all negative- This will not
## Work as-is. You will have to do more advanced sorting due to negative figures. But
## The table is there to be sorted.

if($AMDStats){$AMDStats | Select -First 1}
if($NVIDIAStats){$NVIDIAStats | Select -First 1}

try{$GetStatsRequest = Invoke-WebRequest "http://localhost:4099/GetStats" -UseBasicParsing -TimeoutSec 10}catch{Write-Warning "Failed To Contact GetStats"}

if($GetStatsRequest)
{
 $Data = $GetStatsRequest.Content | ConvertFrom-Json
 $GPUCount = 0;
 $Data | foreach{if($_ -like "*GPU*"){$GPUCount++}}
 $Accepted = $Data.Accepted
 $Rejected = $Data.Rejected
 $Uptime = $Data.Uptime
 $Units = $Data.Hash_Units
 $Algorithm = $Data.Algorithm
 for($i = 0; $i -lt $GPUCount; $i++)
 {
    $GPU = "GPU$i"
    Write-Host "GPU $i Fans = $($Data.$GPU.fans)`%";
    Write-Host "GPU $i Tempearture = $($Data.$GPU.Temperature) C";
    Write-Host "GPU $i hashrate = $($Data.$GPU.hashrate) $Units";
    Write-Host "";
 }
 Write-Host "Miner Has Been Running $Uptime seconds"
 Write-Host "Current Algorithm is $Algorithm"
 Write-Host "Current Accepted Count Is $Accepted"
 Write-Host "Current Rejected Count Is $Rejected"
}