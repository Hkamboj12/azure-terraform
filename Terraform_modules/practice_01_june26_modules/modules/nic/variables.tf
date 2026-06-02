variable "Private-NIC" {
    type = map(object(
    {
        name = string
        location =string
        rg = string
        ipconfigname = string
        subid = string
        pvtIpAddrAllc = string
    }))
    description = "This variable is used to create the private IPS and assign to the vms"  
}