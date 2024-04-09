resource "aws_key_pair" "key" {
  key_name   = "aws-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC5KU1tDP6SrXNe3dCeVG+L45NNYZtKVXSJxDGylUwS+vA6v7m8HpEupjQsy3IgCuPzF3oCRkOyiuntTtojcY0kK3GSI3MgK9QjAM6QzeFrLi9++1WZgZOhbBcgQABBWjpV9d4KD7Fo3pe7NqZlbCPS2hhZSYQRBPzzvOVtWMwTuQUc5LvSzUo0N+5ZoPXVCmUSUzis1SfPKUxS1GRLKjwsXFy9qgnqilAfT5ygl4xCNE3vZmhLyAkXuY1V+VvCtq6J0Mi6cz8JYibyNC6Oiq405F0ldelIYoEed0wmHZWWJGPHzj4oz9x1DggR/Es1InZZWshw5VF1V578+LfHQJpDtTa2IQxgOqA42LCzoy0nqxqxD9U7OTLpuV2gp3vJglqOwYcKeZG8PmDCnuflZY3gqq6MsnW6Ci+zxQ33miC+SUzj8eGBZPW6JlbpXk6m9TOLCK6CqbhhAksqTXMeBxInksdr60WLOLAAMzXky9dyAxBMIt7K1PNZMT0ajwics/U= root@SUPORTE-WERMESSON"
}


resource "aws_instance" "aws_vm" {
  ami           = "ami-080e1f13689e07408"
  instance_type = "t3.micro"
  key_name = aws_key_pair.key.key_name
  associate_public_ip_address = true
  subnet_id = null 
  vpc_security_group_ids = null

  tags = local.common_tags
}