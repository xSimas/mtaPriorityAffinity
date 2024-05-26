while(1) 
{
    try {
        $process = Get-Process gta_sa;

        if ($process.PriorityClass -ne [System.Diagnostics.ProcessPriorityClass]::HIGH)
        {
            $process.PriorityClass = [System.Diagnostics.ProcessPriorityClass]::HIGH;
            $process.ProcessorAffinity = [int][Math]::Pow(2, $env:NUMBER_OF_PROCESSORS) - 2;
        }
    } catch {

    }

    Start-Sleep 15;
}