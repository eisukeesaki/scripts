#!/bin/zsh

# Define directories to delete
dirs=(
    # Config directory
    "~/.config/nvim"

    # Data directory
    "~/.local/share/nvim"

    # State directory
    "~/.local/state/nvim"

    # Cache directory
    "~/.cache/nvim"

    # Log file directory
    "~/.local/state/nvim/log"

    # Additional configs directory
    "/etc/xdg/nvim"

    # Additional data directory
    "/usr/local/share/nvim"
    "/usr/share/nvim"
)

# Iterate over the directories and remove them
for dir in $dirs; do
    if [[ -d $dir ]]; then
        echo "Removing directory: $dir"
        rm -rf $dir
    else
        echo "Directory not found: $dir"
    fi
done

