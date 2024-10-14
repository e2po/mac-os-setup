# Exit immediately if a command exits with a non-zero status
set -e

# Uninstall Homebrew using the official uninstall script
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
