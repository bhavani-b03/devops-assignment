#!/usr/bin/env bash
set -Eeuo pipefail

if [[ $# -lt 3 ]]; then
    echo "Usage: ./transfer.sh <copy|sync> <source> <destination>"
    exit 2
fi

MODE="$1"
SOURCE="$2"
DESTINATION="$3"

if [[ "$MODE" != "copy" && "$MODE" != "sync" ]]; then
    echo "Mode must be copy or sync"
    exit 2
fi

mkdir -p logs
LOG_FILE="logs/transfer-$(date +%Y%m%d-%H%M%S).log"

rclone "$MODE" "$SOURCE" "$DESTINATION" \
    --progress \
    --stats 10s \
    --retries 3 \
    --low-level-retries 10 \
    --log-file "$LOG_FILE" \
    --log-level INFO

echo "Transfer completed. Log: $LOG_FILE"
