resource "postgresql_role" "pg_role" {
  name     = "pg_role_1"
  login    = true
  password = "YellowJumpingUnicorn"
}