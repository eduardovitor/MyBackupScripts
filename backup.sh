#!/bin/bash

base_src_dir="/home/eduardovitor"
base_dst_dir="file:///home/eduardovitor/MEGAsync/Backups"
keyword="-back"

# First backup Documents dir
src_docs_folder="${base_src_dir}/Documents"
dst_docs_folder="${base_dst_dir}/DocumentsDir"

duplicity --include-regexp ${keyword} --no-encryption --exclude "**" ${src_docs_folder} ${dst_docs_folder}

# Second backup Downloads dir
src_down_folder="${base_src_dir}/Downloads"
dst_down_folder="${base_dst_dir}/DownloadsDir"
duplicity --include-regexp ${keyword} --no-encryption --exclude "**" ${src_down_folder} ${dst_down_folder}

# Third backup Desktop dir
src_desk_folder="${base_src_dir}/Desktop"
dst_desk_folder="${base_dst_dir}/DesktopDir"
duplicity --include-regexp ${keyword} --no-encryption --exclude "**" ${src_desk_folder} ${dst_desk_folder}
