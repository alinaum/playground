Provisioning Role
=========

This role is reponsable for provisionin ec2 instances

Requirements
------------
Python is required\
Install boto using pip
```
pip install boto3
```

Role Variables
--------------
all variables are store in vars/mail.yml \
import variables\
count: number of instaces to lauch \
instance_type: size of the instance
profile: profile used to access AWS services


Run playbook
------------------

```
ansible-playbook -i hosts main.yml 
```