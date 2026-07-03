# Frontend ECR Repository

resource "aws_ecr_repository" "frontend" {
  name                 = "${local.name}-frontend"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = merge(local.common_tags, {
    Name = "${local.name}-frontend-ecr"
  })
}

# Backend ECR Repository

resource "aws_ecr_repository" "backend" {
  name                 = "${local.name}-backend"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = merge(local.common_tags, {
    Name = "${local.name}-backend-ecr"
  })
}

# Worker ECR Repository

resource "aws_ecr_repository" "worker" {
  name                 = "${local.name}-worker"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = merge(local.common_tags, {
    Name = "${local.name}-worker-ecr"
  })
}
