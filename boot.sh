# Exit immediately if a command exits with a non-zero status
set -e

echo "Cloning mac-os-setup..."
mkdir -p ~/.local/share/mac-os-setup
rm -rf ~/.local/share/mac-os-setup
git clone https://github.com/e2po/mac-os-setup.git ~/.local/share/mac-os-setup >/dev/null

echo "Installation starting..."
source ~/.local/share/mac-os-setup/install.sh