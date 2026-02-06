variable "name" {
  description = "Nombre del bucket"
  type        = string
}

variable "environment" {
  description = "ambiente (dev|prod)"
  type        = string
}

variable "versioning" {
  description = "Habilitar versioning"
  type        = bool
  default     = true
}

variable "lifecycle_rules" {
  description = "Lista de reglas de lifecycle para el bucket"
  type = list(object({
    id      = string
    enabled = bool
    prefix  = optional(string)
    tags    = optional(map(string))
    transition = optional(list(object({
      days          = number
      storage_class = string
    })))
    expiration = optional(object({
      days = number
    }))
  }))
  default = []
}

variable "force_destroy" {
  description = "Eliminar objetos cuando se borra el bucket"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Etiquetas adicionales/override"
  type        = map(string)
  default     = {}
}
