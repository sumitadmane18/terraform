terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.53.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  profile = "devops.tf"
}

resource "aws_iam_user" "demo" {
  name = "sumit"
}

resource "aws_iam_user" "demo1" {
  name = "nimesh"
}

resource "aws_iam_user" "demo2" {
  name = "macchi"
}

resource "aws_iam_group" "grp" {
  name = "batch34"
}

resource "aws_iam_user_group_membership" "groupadd" {
  user = aws_iam_user.demo.name

  groups = [
           aws_iam_group.grp.name
           ]
}
