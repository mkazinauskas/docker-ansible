# How to use?
* Do NOT put any data of this setup to public repository! It will be security breach...
* Generate new ssh public and private key with command `ssh-keygen -t rsa`
* Copy and replace private and public files in `files/root/.ssh/` folder
* Replace `authorized_keys` file with content from `.pub` file
* Update hosts file with your hosts
* Update sample-setup.yml file
* Execute `.run.sh`
* You will be inside running your custom ansible container. 
* Execute `ansible-playbook /playbooks/sample-setup.yml` command to start using ansible magic in your server
* Please note, all files under `playbooks` folder can be edited without need of docker container restart