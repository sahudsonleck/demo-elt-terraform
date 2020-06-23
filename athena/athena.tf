resource "null_resource" "athena_views" {
  for_each = {
    for filename in fileset("${path.module}/compressed_ddl/", "**"):
           replace(filename,"/","_") => file("${path.module}/compressed_ddl/${filename}")
  }

  provisioner "local-exec" {
    command = <<EOF
aws athena start-query-execution --query-string "${each.value}" --query-execution-context "Database=${var.athena_ldg}" --result-configuration "OutputLocation=s3://${var.athena_ldg_s3}"
EOF
  }

  provisioner "local-exec" {
    when    = "destroy"
    command = <<EOF
    aws athena start-query-execution \
      --output json \
      --query-string DROP VIEW IF EXISTS ${each.key} \
      --query-execution-context "Database=${var.athena_ldg}" \
      --result-configuration "OutputLocation=s3://${var.athena_ldg_s3}"
EOF
  }
}