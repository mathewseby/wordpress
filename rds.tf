resource "aws_db_instance" "wp-rds" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  name                 = "wpdatabase"
  username             = "root"
  password             = "N$=]:%9;F7z%DX!X"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
  vpc_security_group_ids = [
    "${aws_security_group.db_sg.id}"
  ]
  db_subnet_group_name = aws_db_subnet_group.db.id
}