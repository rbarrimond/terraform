#!/bin/sh

cat > index.html << EOF
<h1>Hello, World!</h1>
<p>DB_ADDRESS: ${data.terraform_remote_state.db.address}</p>
<p>${data.terraform_remote_state.db.port}"</p>
EOF

nohup busybox httpd -f -p "${var.server_port}" &
