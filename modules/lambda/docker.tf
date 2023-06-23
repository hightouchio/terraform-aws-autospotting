resource "aws_ecr_repository" "autospotting" {
  name                 = "autospotting-${module.label.id}"
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    scan_on_push = true
  }
  timeouts {
    delete = "2m"
  }
}
