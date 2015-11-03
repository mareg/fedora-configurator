#!/bin/sh

echo "Remove unwanted applications"
sudo dnf remove claws-mail *abrt* xfburn -y

echo "Install required software"
sudo dnf install -y evolution banshee docky

echo "Install RPMFusion repository..."
sudo dnf install -y --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

echo "Install CDRecord tools repository"
sudo dnf config-manager --add-repo=http://negativo17.org/repos/fedora-cdrtools.repo
sudo dnf install -y cdrecord mkisofs cdda2wav brasero

echo "Install dev tools"
sudo dnf install eclipse-platform meld ghex
