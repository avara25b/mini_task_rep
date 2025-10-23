resource "aws_security_group" "sg1" {
  description = "22,80,443 to internet"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "${var.name} - sg1"
  }
}

resource "aws_security_group_rule" "sg1_ingress" {
  
  for_each = var.ingress_ports
  
  type              = "ingress"
  from_port         = each.value
  to_port           = each.value
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.sg1.id
}

resource "aws_security_group_rule" "sg1_egress" {
  
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.sg1.id
}

