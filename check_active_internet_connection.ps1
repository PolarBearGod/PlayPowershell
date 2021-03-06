function test-ipmetric {
    Get-WmiObject Win32_NetworkAdapter -Filter "AdapterType='Ethernet 802.3'" |
    ForEach-Object { $_.GetRelated('Win32_NetworkAdapterConfiguration') } |
    Select-Object Description, Index, IPEnabled, IPConnectionMetric
}
Test-ipmetric