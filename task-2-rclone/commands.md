# Rclone Command Reference

| Command | Purpose |
|---|---|
| rclone lsf | List files |
| rclone copy | Copy files without deleting source |
| rclone move | Move files and remove source after success |
| rclone sync | Make destination match source; may delete files |
| rclone delete | Delete destination files |
| rclone check | Compare source and destination |
| rclone mkdir | Create a directory or S3 bucket |
| --dry-run | Preview changes without applying them |
| --progress | Show transfer progress |
| --transfers 4 | Transfer up to four files concurrently |
| --config /dev/null | Run without an rclone configuration file |
| --retries 3 | Retry failed transfers |
