#!/bin/bash
#
# Helper script to get started with setting up Bash mode and loading keys
# Do not run this directly but 'source' it from your script
#

set -u # Variables must be explicit
set -e # If any command fails, fail the whole thing
set -o pipefail

chmod 0600 inventory/ansible.pem
eval `ssh-agent -s`
ssh-add inventory/ansible.pem
source inventory/aws_keys

# Update the cache
inventory/ec2.py --refresh-cache >/dev/null
