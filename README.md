# 1. Pre-requisites
* Anaconda - following this link to install it on Linux machine [https://docs.anaconda.com/free/anaconda/install/linux](https://docs.anaconda.com/free/anaconda/install/linux/)
* Ubuntu 22.04
* Docker

# 2. Prepare environment
* Create Python 2.7 environment for Kolla Ansible project using Anaconda:
  ```bash=
  conda create --name kolla_ansible_stein python=2.7 pip
  ```
  
* Activate the environment:
  ```bash=
  conda activate kolla_ansible_stein
  ```
  
* Install Python packages:
  ```bash=
  pip install -r requirements.txt -c https://raw.githubusercontent.com/cuongpiger/requirements/dev/stein/upper-constraints.txt
  ```