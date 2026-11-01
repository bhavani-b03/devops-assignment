# Testpress DevOps - Rclone Storage Automation

## Requirements
- Ubuntu / WSL
- Docker
- Rclone
- Local MinIO server

## Features
- Local copy, move, sync and delete.
- File comparison with rclone check.
- MinIO S3-compatible storage.
- S3 upload, download, listing and deletion.
- Direct S3-to-S3 copy.
- Configuration-free S3 access.
- 1 GB transfer demonstration.
- Transfer script with progress, retries and logs.

## Run

    ./transfer.sh copy source destination

    ./transfer.sh sync source destination

For S3 operations, pass the required S3 options directly to Rclone.

## Safety
Sync can delete destination-only files. Use --dry-run first.

Demo credentials are not suitable for production.

See commands.md and results.md for details.
