
resource "aws_subnet" "main" {
  vpc_id     = "vpc-021a7b3fcc26ded9c"
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "tform-subnet"
  }
}


resource "aws_internet_gateway" "gw" {
  vpc_id = "vpc-021a7b3fcc26ded9c"

  tags = {
    Name = "tform-igw"
  }
}



