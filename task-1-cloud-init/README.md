# Task 1: Automated Server Provisioning with Cloud-Init

## Overview
Provisioned an Ubuntu 24.04 virtual machine using QEMU and Cloud-Init.

## Implementation
- Updated apt package indexes.
- Installed Docker, Git, curl and FFmpeg.
- Created a non-root user named `testpress`.
- Added the user to the Docker group.
- Created `/opt/testpress` and sample environment configuration.
- Deployed a Dockerized HTTP application on port 8080.
- Configured automatic container restart.

## Verification
- Verified installed packages and user permissions.
- Verified the HTTP response.
- Rebooted the VM and confirmed the application remained accessible.
- Re-ran the deployment script and checked for duplicate containers.

## Technologies
Ubuntu 24.04, QEMU, Cloud-Init and Docker.
