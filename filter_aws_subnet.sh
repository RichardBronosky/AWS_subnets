# Pipe pbpaste into this script after doing CMD+A CMD+C on...
# https://us-west-2.console.aws.amazon.com/vpc/home?region=us-west-2#subnets:

[[ $1 == '-h' || $1 == '--help' ]] && cat <<EOF && exit
Usage:
    pbpaste | ./filter_aws_subnet.sh

    pbpaste > aws_subnets.txt
    ./filter_aws_subnet.sh < aws_subnets.txt
EOF

awk '/\(|\|/{next}; /subnet-/{subnet=$1}; $1 ~ /^[0-9.]{7,15}\/[0-9]{1,2}$/{if(subnet){cidr=$1; print subnet, cidr}}'
