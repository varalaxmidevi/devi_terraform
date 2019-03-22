resource "aws_lb" "test" {
  name               = "lb-tf"
  internal           = false
  load_balancer_type = "application"
  security_groups    = ["sg-0d0a1390a8e19d088","sg-0f98301a5a1fd5e60"]
  subnets            = ["subnet-0e932842","subnet-e3da908b"]

  enable_deletion_protection = true

  access_logs {
    bucket  = "bucket-mar-21"
    prefix  = "test-lb"
    enabled = true
  }

  tags = {
    Environment = "production"
  }
}
