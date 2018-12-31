#
# Provision the RDS instances
#
resource "aws_db_instance" "qa_simple_db" {
  allocated_storage          = 20
  auto_minor_version_upgrade = false
  engine                     = "postgres"
  engine_version             = "10.3"
  identifier                 = "redapp-db-qa"
  instance_class             = "db.t2.micro"
  name                       = "redapp"
  username                   = "redapp_db_master_user"
  copy_tags_to_snapshot      = true
  publicly_accessible        = true
  skip_final_snapshot        = true
  tags {
    workload-type = "other"
  }
}
