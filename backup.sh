#!/bin/bash

base_src_dir="/home/eduardovitor"
base_dst_dir="file:///home/eduardovitor/MEGAsync/Backups"
keyword="-back"

src_docs_folder="${base_src_dir}/Documents"
dst_docs_folder="${base_dst_dir}/DocumentsDir"

src_down_folder="${base_src_dir}/Downloads"
dst_down_folder="${base_dst_dir}/DownloadsDir"

# Check last backup date
last_backup_date=$(cat ${base_src_dir}/last_backup_date)

# Get current date
current_date=$(date "+%Y-%m-%d")

# Check whether a backup was done today
if [ "$last_backup_date" != "$current_date" ]; then
    # First backup Documents dir
    duplicity --include-regexp ${keyword} --no-encryption --exclude "**" ${src_docs_folder} ${dst_docs_folder}
    # Second backup Downloads dir
    duplicity --include-regexp ${keyword} --no-encryption --exclude "**" ${src_down_folder} ${dst_down_folder}
    # Update last backup's date
    echo "$current_date" > ${base_src_dir}/last_backup_date
else
    echo "A backup was already done today"
fi
