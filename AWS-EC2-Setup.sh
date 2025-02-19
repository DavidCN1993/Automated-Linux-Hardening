#!/bin/bash

# Install AWS CLI
if ! command -v aws &> /dev/null
then
    echo "AWS CLI not found, installing..."
    apt-get install -y awscli
fi

# Create an EC2 instance using AWS CLI
aws ec2 run-instances \
    --image-id ami-xxxxxxxxx \
    --count 1 \
    --instance-type t2.micro \
    --key-name MyKeyPair \
    --security-group-ids sg-xxxxxxxx \
    --subnet-id subnet-xxxxxxxx \
    --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=MyLinuxServer}]'

# Print the instance details
echo "EC2 instance created successfully!"
#!/bin/bash

# Install AWS CLI
if ! command -v aws &> /dev/null
then
    echo "AWS CLI not found, installing..."
    apt-get install -y awscli
fi

# Create an EC2 instance using AWS CLI
aws ec2 run-instances \
    --image-id ami-xxxxxxxxx \
    --count 1 \
    --instance-type t2.micro \
    --key-name MyKeyPair \
    --security-group-ids sg-xxxxxxxx \
    --subnet-id subnet-xxxxxxxx \
    --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=MyLinuxServer}]'

# Print the instance details
echo "EC2 instance created successfully!"
