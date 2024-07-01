resource "aws_db_instance" "main" {
  allocated_storage      = 20
  engine                 = "mysql"
  engine_version         = "5.7"
  instance_class         = "db.t2.micro"
  db_name                = "recognitiondb"
  username               = var.db_username
  password               = var.db_password
  parameter_group_name   = "default.mysql5.7"
  skip_final_snapshot    = true
  vpc_security_group_ids = [var.security_group_id]
  db_subnet_group_name   = aws_db_subnet_group.main.id
}

resource "aws_db_subnet_group" "main" {
  name       = "main"
  subnet_ids = [var.private_subnet1, var.private_subnet2]

  tags = {
    Name = "main"
  }
}
