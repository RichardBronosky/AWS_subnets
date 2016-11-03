# AWS_subnets

### Disclaimer:
This should be done using the AWS CLI, but I just knocked this out in a few minutes. My JMESPath game is weak and I couldn't waste time getting it right.


### How to use:
After going to the AWS subnets page for my region https://us-west-2.console.aws.amazon.com/vpc/home?region=us-west-2#subnets: I do a Select All and Copy. Then at the shell I do:

    pbpaste | ./filter_aws_subnet.sh

the results look like:

    Name:        subnet-1abcdef1
    CIDR:        172.31.0.0 / 20
    Address:     172.31.0.0
    Netmask:     255.255.240.0
    Network:     172.31.0.0
    Broadcast:   172.31.15.255
    Host Range:  172.31.0.4 - 172.31.15.254
    Host Count:  4090

    Name:        subnet-cdef11ab
    CIDR:        172.31.19.0 / 24
    Address:     172.31.19.0
    Netmask:     255.255.255.0
    Network:     172.31.19.0
    Broadcast:   172.31.19.255
    Host Range:  172.31.19.4 - 172.31.19.254
    Host Count:  250

    Name:        subnet-f11abcde
    CIDR:        172.31.20.0 / 22
    Address:     172.31.20.0
    Netmask:     255.255.252.0
    Network:     172.31.20.0
    Broadcast:   172.31.23.255
    Host Range:  172.31.20.4 - 172.31.23.254
    Host Count:  1018
