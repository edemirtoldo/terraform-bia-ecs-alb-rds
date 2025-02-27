resource "aws_iam_instance_profile" "role_acesso_ssm" {
  name = "role-acesso-ssm"
  path = "/"
  role = aws_iam_role.role_acesso_ssm.name
}

resource "aws_iam_role" "role_acesso_ssm" {
  name = "role-acesso-ssm"
  path = "/"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
  })

  max_session_duration = 3600
}

resource "aws_iam_role_policy_attachment" "ecr_access" {
  role       = aws_iam_role.role_acesso_ssm.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"
  depends_on = [aws_iam_role.role_acesso_ssm]
}

resource "aws_iam_role_policy_attachment" "ecs_access" {
  role       = aws_iam_role.role_acesso_ssm.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonECS_FullAccess"
  depends_on = [aws_iam_role.role_acesso_ssm]
}

resource "aws_iam_role_policy_attachment" "s3_access" {
  role       = aws_iam_role.role_acesso_ssm.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  depends_on = [aws_iam_role.role_acesso_ssm]
}

resource "aws_iam_role_policy_attachment" "ssm_access" {
  role       = aws_iam_role.role_acesso_ssm.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  depends_on = [aws_iam_role.role_acesso_ssm]
}

resource "aws_iam_role_policy_attachment" "secrets_manager_access" {
  role       = aws_iam_role.role_acesso_ssm.name
  policy_arn = "arn:aws:iam::aws:policy/SecretsManagerReadWrite"
  depends_on = [aws_iam_role.role_acesso_ssm]
}

resource "aws_iam_role_policy_attachment" "role_acesso_ssm_policy" {
  role       = aws_iam_role.role_acesso_ssm.name
  policy_arn = aws_iam_policy.get_secret_bia_db.arn
}