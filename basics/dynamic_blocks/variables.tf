variable "sg_ports" {
  type        = list(any)
  description = "list of ingress ports"
  default     = [22, 80, 8080, 443, 389, 689]
}
