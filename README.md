# Ansible Site Admin
<p>A collection of Ansible playbooks and tools used to manage an Apache Virtual Host AWS EC2 environment.</p>

### System Requirements
* Python 2.7 +
* Ansible 2.2
* AWS Classic Load Balancer
* EC2 LAMP Instance

### Available Methods
* View Running Hosts
* Add Domain
* Get Name Servers

### Configuration
Create the following two files<br />
`/ansible/inventory/aws_keys`<br />
`/ansible/inventory/ansible.pem`<br /><br />
The `aws_keys` files should contain the following settings based on your environment:
```
export AWS_ACCESS_KEY_ID=''
export AWS_SECRET_ACCESS_KEY='+3xJ9Gnv+7'
export EC2_REGION=''
```
The `ansible.pem` file is a renamed copy of the PEM file for your AWS account.

### Usage
Execute `./admin` and then follow the prompts. 
