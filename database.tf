resource "aws_db_instance" "mf-mysql-db" {
  allocated_storage = 20
  storage_type = "gp2"
  engine = "mysql"
  engine_version = "5.7"
  instance_class = "db.t2.micro"
  name = "foodb"
  username = "foo"
  password = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
}
resource "aws_rds_cluster_instance" "cluster_instances" {
  identifier         = "aurora-cluster-demo"
  cluster_identifier = "${aws_rds_cluster.default.id}"
  instance_class     = "db.r4.large"
}

resource "aws_rds_cluster" "default" {
  cluster_identifier = "aurora-cluster-demo"
  database_name      = "mydb"
  master_username    = "foo"
  master_password    = "barbut8chars"
}