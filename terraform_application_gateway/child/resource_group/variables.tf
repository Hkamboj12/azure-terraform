variable "resource_groups" {
    description = "A map of resource group names and their locations"
    type        = map(object({
        name     = string
        location = string
        environment = string
    }))
}