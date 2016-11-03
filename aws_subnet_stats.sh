# Pipe pbpaste into this script after doing CMD+A CMD+C on...
# https://us-west-2.console.aws.amazon.com/vpc/home?region=us-west-2#subnets:

[[ $1 == '-h' || $1 == '--help' ]] && cat <<EOF && exit
Usage:
    pbpaste | ./filter_aws_subnet.sh

    pbpaste > aws_subnets.txt
    ./aws_subnet_stats.sh < aws_subnets.txt
EOF

./filter_aws_subnet.sh | xargs -L 1 -P 1 -- bash -c 'python subnet.py $1 $0'
