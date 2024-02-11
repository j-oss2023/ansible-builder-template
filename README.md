# TLDR;

To build and push this execution environment image to the registry:

```bash
./build.sh 
```

This script manages the copying of dependancies (roles/plugins) from /etc/ansible and the building and pushing process, leveraging the configurations defined in `execution-environment.yml`.


## Overview

This guide outlines the essentials to get your Ansible Execution Environment built and pushed to a registry using `ansible-builder`.

## Requirements

- **Docker**
- **Python >3.9**

To install `ansible-builder` v3, run:

```bash
pip3 install ansible-builder==3.0.0
```

**OR** with `pipx` the "new" Ubuntu/Debian way:

```bash
apt-get update && apt-get install pipx -y # Install pipx
pipx install ansible-builder==3.0.0 # Install ansible-builder
```

## Configuration: `execution-environment.yml`

Adjust the `execution-environment.yml` file to define your execution environment. This file specifies the base image, Python version, Ansible version, and dependencies needed for your Ansible automation projects.

- **Base Image & Versions**: Specify the Python version, Ansible version, and the base Docker image.
- **Dependencies**: Use `requirements.yml` to list Ansible Galaxy collections, and `requirements.txt` for Python package dependencies, these will be built into the execution environment.

For more details on Galaxy requirements files: [Ansible Galaxy - Requirements](https://docs.ansible.com/ansible/latest/galaxy/user_guide.html#installing-multiple-roles-from-a-file)

For more details on Python requirements files: [Pip Requirements](https://pip.pypa.io/en/stable/reference/requirements-file-format/)



Author: j-oss2023
