variable "name" {
  description = "Nnombre para CloudFront"
  type        = string
}

variable "s3_bucket_name" {
  description = "Nombre del bucket"
  type        = string
}

variable "s3_bucket_arn" {
  description = "ARN del bucket"
  type        = string
}

variable "enable_logging" {
  description = "Habilitar logging de CloudFront"
  type        = bool
  default     = false
}

variable "default_ttl" {
  type    = number
  default = 3600
}

variable "max_ttl" {
  type    = number
  default = 86400
}

variable "min_ttl" {
  type    = number
  default = 0
}

variable "price_class" {
  description = "Price class for CloudFront"
  type        = string
  default     = "PriceClass_100"
}

variable "custom_domain" {
  description = "Custom domain opcional"
  type        = string
  default     = ""
}

variable "acm_certificate_arn" {
  description = "ARN del certificado ACM en us-east-1 opcional"
  type        = string
  default     = ""
}
