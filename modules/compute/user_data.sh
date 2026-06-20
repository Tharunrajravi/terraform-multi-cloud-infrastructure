#!/bin/bash

set -euxo pipefail

# Update system packages
dnf update -y

# Install Nginx
dnf install -y nginx

# Enable and start Nginx
systemctl enable nginx
systemctl start nginx

# Create a custom home page
cat > /usr/share/nginx/html/index.html <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>NeuraNx Terraform Assignment</title>
</head>
<body>
    <h1>Infrastructure Successfully Deployed</h1>

    <p>This web server was provisioned using Terraform on AWS.</p>

    <ul>
        <li>Compute: Amazon EC2</li>
        <li>Storage: Amazon S3</li>
        <li>Networking: VPC, Public Subnet, Internet Gateway</li>
        <li>Provisioning: Terraform Modules</li>
    </ul>
</body>
</html>
EOF
