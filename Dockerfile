docker build -t ohheybellimage:latest -f- https://github.com/ohheybell/kickoffvotingrepo.git <<EOF
FROM unbuntu 18.04
COPY . 
EOF

