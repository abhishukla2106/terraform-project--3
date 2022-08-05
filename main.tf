## count
resource "aws_instance" "web" {
  count = length(var.ami)
  ami     = var.ami[count.index]

  instance_type = "t2.micro"

   tags = {
    Name = var.ins_name[count.index],
    Owner = "abhishek Kumar"

  }
}

## for_each (map)
resource "aws_instance" "web1" {
  for_each = var.loop_name
  ami           = "ami-076e3a557efe1aa9c"
  instance_type = "t2.micro"

  tags = {
    Name  = each.value,
    owner = each.key
  }
}

## nested map
resource "aws_instance" "web2" {
  for_each = var.loop_name1
  ami      = each.value.ami
  instance_type = each.value.instance_type

  tags = {
    Name  = each.value.name.my_name,
    owner = "each.key"
  }
}

## for each (set)
resource "aws_instance" "web3" {
  for_each = toset(var.set1)
  ami           = "ami-076e3a557efe1aa9c"
  instance_type = "t2.micro"

  tags = {
    Name  = each.key,
    owner = "abhi"
  }
}

resource "aws_s3_bucket" "b01" {
  bucket = "abhi-bucket1"
  for_each = toset(var.set)
  tags = {
    Name        = "abhi"
    Environment = "Dev"
  }
}


