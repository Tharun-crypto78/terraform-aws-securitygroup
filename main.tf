# roboshop-dev-frontend
resource "aws_security_group" "main" {
    name        = var.sg_name
    description = var.sg_description # usually the description is optional, but here we're making it mandatory --> for that we need to create a variable for the description.
    vpc_id      = var.vpc_id

    tags = merge(
        var.sg_tags,
        local.common_tags,
        {
            Name = "${var.project}-${var.environment}-${var.sg_name}" # roboshop-dev-frontend
        }
    )
}    