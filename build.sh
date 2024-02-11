#!/bin/bash

# Copy /etc/ansible/plugins to files/, excluding .git directories
rsync -av --exclude='.git/' /etc/ansible/plugins/ files/plugins/

echo 'Copied /etc/ansible/plugins --> files/plugins/, excluding .git directories'

# Copy /etc/ansible/roles to files/, excluding .git directories
rsync -av --exclude='.git/' /etc/ansible/roles/ files/roles/

echo 'Copied /etc/ansible/roles --> files/roles/, excluding .git directories'


echo 'Running ansible-builder'
ansible-builder build --tag myregistry/my-custom-ee

echo 'Pushing image to registry'
docker push myregistry/my-custom-ee

echo 'Cleaning up...'
rm -rf context
