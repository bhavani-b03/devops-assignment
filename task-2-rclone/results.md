# Rclone Task Results

## Local storage
- Created nested directories and sample files.
- Created a 1 GB test file.
- Demonstrated copy, move, sync and delete.
- Dry-run previewed destination-only file deletion.
- rclone check reported zero differences.

## MinIO / S3
- Reused an existing MinIO server.
- Health check returned HTTP 200.
- Created testpress-backup and testpress-archive buckets.
- Uploaded and downloaded 4 files, including a 1 GB file.
- Verified downloaded files using rclone check.
- Demonstrated S3-to-S3 copying.
- Deleted archive objects.

## Configuration-free S3
Used --config /dev/null with command-line S3 credentials,
provider, endpoint and region. No rclone.conf was required.

## Reliability
- 1 GB upload and download succeeded.
- Used --transfers 4 for concurrent transfers.
- Used --progress and --stats for monitoring.
- Configured retries and logging in transfer.sh.
- Interrupted-transfer testing was not performed.

## Sync safety
- Used --dry-run before synchronization.
- Confirmed sync deletes destination-only files.
- Used rclone check to verify matching files.
