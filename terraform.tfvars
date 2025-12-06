credentials_file = "gcp-key.json"
project_id       = "your-gcp-project-id"
region           = "asia-south1"
zone             = "asia-south1-a"

instance_name  = "my-terraform-instance"
machine_type   = "e2-micro"
image          = "debian-cloud/debian-11"
disk_size      = 20

startup_script = <<EOF
#! /bin/bash
apt update -y
apt install nginx -y
systemctl start nginx
echo "<h1>VM created using Terraform + Jenkins CI/CD</h1>" > /var/www/html/index.html
EOF
