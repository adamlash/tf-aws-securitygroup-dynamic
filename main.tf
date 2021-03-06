resource "aws_security_group" "default" {
  name = var.name
  description    = var.description
  vpc_id  = var.vpc_id

  dynamic "ingress" {
    for_each = var.ingress_cidrs
    content {
      from_port = ingress.value["from_port"]
      to_port   = ingress.value["to_port"]
      protocol  = ingress.value["protocol"]
      cidr_blocks = [ingress.value["cidr_blocks"]]
    }
  }
  tags = var.tags
}
