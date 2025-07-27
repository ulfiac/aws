resource "aws_iam_openid_connect_provider" "oidc_gha" {
  client_id_list = ["sts.amazonaws.com"]
  url            = "https://token.actions.githubusercontent.com"

  # thumbprint is no longer needed at all
  # https://colinbarker.me.uk/blog/2025-01-12-github-actions-oidc-update/
  # thumbprint_list = [
  #   "6938fd4d98bab03faadb97b34396831e3780aea1", # https://github.blog/changelog/2023-06-27-github-actions-update-on-oidc-integration-with-aws/
  #   "1c58a3a8518e8759bf075b76b750d4f2df264fcd", # https://github.blog/changelog/2023-06-27-github-actions-update-on-oidc-integration-with-aws/
  #   "ffffffffffffffffffffffffffffffffffffffff", # https://github.blog/changelog/2023-07-13-github-actions-oidc-integration-with-aws-no-longer-requires-pinning-of-intermediate-tls-certificates/
  # ]
}
