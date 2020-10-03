#!/bin/bash

echo "Adding PPAs"

echo ”deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/” > /etc/apt/sources.list.d/cran.list
add-apt-repository -y ppa:c2d4u.team/c2d4u4.0+
add-apt-repository -y ppa:git-core/ppa
add-apt-repository -y ppa:kelleyk/emacs
add-apt-repository -y ppa:libreoffice/ppa
add-apt-repository -y ppa:linrunner/tlp
add-apt-repository -y ppa:linuxuprising/java
add-apt-repository -y ppa:lyx-devel/release
add-apt-repository -y ppa:nilarimogard/webupd8
apt-apt-repository -y ppa:openjdk-r/ppa
add-apt-repository -y ppa:otto-kesselgulasch/gimp
add-apt-repository -y ppa:qbittorrent-team/qbittorrent-stable
add-apt-repository -y ppa:sunderme/texstudio
add-apt-repository -y ppa:teejee2008/ppa
add-apt-repository -y ppa:ubuntu-mozilla-daily/ppa
add-apt-repository -y ppa:ubuntuhandbook1/apps
add-apt-repository -y ppa:uget-team/ppa
add-apt-repository -y ppa:webupd8team/y-ppa-manager

echo "updating repositories"
apt-get update

echo "Installing packages"

apt-get install y-ppa-manager git texstudio timeshift lyx r-base r-recommended elpa-ess r-doc-html oracle-java11-installer-local terminator

echo "Finished adding PPAs and installing applications"
exit 0
