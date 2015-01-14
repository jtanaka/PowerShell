[void][System.Reflection.Assembly]::LoadWithPartialName("System.Net.NetworkInformation")

$nics = [System.Net.NetworkInformation.NetworkInterface]::GetAllNetworkInterfaces()
foreach ($nic in $nics) {
	$n = "NIC Name     : " + $nic.Name.ToString()
	$m = " MAC Address : " + $nic.GetPhysicalAddress().ToString()

	Write-Output $n $m
}

