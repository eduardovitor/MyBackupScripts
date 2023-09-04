#!/bin/bash

back_folder="file:///home/eduardovitor/MEGAsync/Backups/DocumentsDir"
restore_folder="/home/eduardovitor/Desktop/Restore"
duplicity restore --no-encryption ${back_folder} ${restore_folder}
