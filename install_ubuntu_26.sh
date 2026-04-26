#Install Chrome first manually
#F10: BIOS, F9: advanced boot, sometimes I had to hold the key down to get it to work
#sudo apt-get -f install &&
#Update it first
sudo apt-get update &&
#install Vanilla Gnome
#sudo apt install -y gnome-session &&
#select gnome-shell and press ENTER
#sudo update-alternatives --config gdm3.css &&
sudo apt-get install -y git subversion gedit &&
sudo apt-get install -y netperf inetutils-traceroute &&
sudo apt-get install -y liborc-0.4-dev gir1.2-gst-* &&
sudo apt-get install -y texstudio texlive-latex-extra texlive-full &&
sudo apt-get install -y liblz-dev libbz2-dev &&
sudo apt-get install -y kexec-tools &&
#Needed for ROCM. Also install Rocm manually
sudo apt-get install -y libsimde-dev &&
sudo apt install -y rocm-llvm-dev &&
#Don't install the headless version (headless version is a subset of the whole JDK)
sudo apt-get install -y openjdk-11-jdk &&
sudo apt-get install -y hexchat tree &&
sudo apt-get install -y hardinfo &&
sudo apt-get install -y build-essential libtool autopoint autoconf bison gtk-doc-tools libboost-all-dev gcc-multilib libedit-dev libclang-dev libcairo2-dev lld gcc-multilib g++-multilib repo &&
#Startup disk creator
sudo apt-get install -y usb-creator-gtk &&
#Needed for SST
sudo apt-get install -y libtool libtool-bin &&
sudo apt-get install -y g++ &&
#BPF compiler
sudo apt-get install -y clang libc6-dev-i386 llvm libelf-dev binutils-dev util-linux pkg-config elfutils &&
#dependency
sudo apt-get install -y libgcrypt20-dev &&
#Linaro tool-chain
sudo apt-get install -y gcc-arm-linux-gnueabi qemu-system &&
sudo apt-get install -y qemu-system &&
#Bootloader
sudo apt-get install -y u-boot-tools lzop bc &&
sudo apt-get install -y xinetd &&
#Needed for checking capability
sudo apt-get install -y libcap-dev &&
#Needed for LegUP
sudo apt-get install -y gxemul &&
#Needed for menuconfig
sudo apt-get install -y ncurses-dev &&
#Needed for LEDE
sudo apt-get install -y libncurses5-dev gawk gettext unzip file libssl-dev wget binutils subversion libz-dev ccache xsltproc &&
#Firmware reverse engineering
sudo apt-get install -y binwalk squashfs-tools &&
sudo apt-get install -y gnuplot &&
#Needed for Gem5
sudo apt-get install -y libgoogle-perftools-dev libgoogle-perftools4 libprotobuf-dev libprotoc-dev libtcmalloc-minimal4 libunwind-dev protobuf-compiler scons libhdf5-dev libcapstone-dev &&
sudo apt-get install -y build-essential git m4 scons zlib1g zlib1g-dev libprotobuf-dev protobuf-compiler libprotoc-dev libgoogle-perftools-dev python-dev-is-python3 &&
sudo apt-get install -y python3-pip python3-full &&
sudo apt-get install -y pipx &&
pipx install pre-commit &&
#needed for Domino
sudo apt-get install -y graphviz python3-pydot &&
#Combines images to create a PDF
sudo apt-get install -y gscan2pdf &&
sudo apt-get install -y v4l-utils &&
sudo apt-get install -y libva-dev vainfo mesa-utils mesa-common-dev inxi &&
sudo apt-get install -y libx264-dev &&
#Needed for GPGPUsim
sudo apt-get install -y xutils-dev libglu1-mesa-dev &&
#Needed for GStreamer
sudo apt-get install -y flex yasm &&
#intsall latest NVIDIA driver (needed for good display, but don't install it on Ubuntu 18.04 beacuse Ubuntu won't be able to reboot)
#sudo add-apt-repository -y ppa:graphics-drivers/ppa &&
#sudo apt-get update -y &&
#sudo apt-get install -y nvidia-361 nvidia-prime &&
#Needed for NVIDIA graphics driver, lsscsi, lstopo(shows cpu and PCIe topology), DPDK command
sudo apt-get install -y lsscsi cpuset sysstat rt-tests libnuma-dev hwloc &&
sudo apt-get install -y libvirt-daemon-system libvirt-clients libvirt-dev &&
#DVD burner
sudo apt-get install -y k3b brasero &&
sudo apt-get install -y ffmpeg &&
#Installing GStreamer
sudo apt-get install -y libgstreamer1.0-0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio &&
sudo apt-get install -y ninja-build &&
sudo apt-get install -y libfreenect-dev &&
sudo apt-get install -y libudev-dev libusb-1.0-0-dev libjpeg-turbo8-dev libglfw3-dev libjpeg-dev libxrandr-dev doxygen libxi-dev libopencv-dev &&
sudo apt-get install -y libopenni2-dev &&
sudo apt-get install -y libogre-1.9-dev libois-dev libtinyxml-dev libhidapi-dev libsdl2-dev libglew-dev freeglut3-dev libvisual-0.4-dev &&
sudo apt-get install -y libnice-dev &&
sudo apt-get install -y flex yasm &&
sudo apt-get install -y libmnl-dev &&
sudo apt-get install -y libgmp-dev &&
sudo apt-get install -y libreadline-dev &&
#Gnome tweak tool
sudo apt-get install -y gnome-tweaks &&
#GCC Plugin testing
sudo apt-get install -y libaspell-dev &&
#Needed for OpenROAD
sudo apt-get install -y tcl-dev tk-dev swig libeigen3-dev cimg-dev &&
sudo apt-get install -y cmake &&
git config --global user.name "tamimcse" &&
git config --global user.email "mislam4@kent.edu" &&
git config --global credential.helper cache &&
git config --global credential.helper 'cache --timeout=3600' &&
git config --global core.fileMode false &&
#git clone https://github.com/tamimcse/Linux.git &&
#git config --global core.compression 0 &&
#git clone --depth 1 https://_tamim_@bitbucket.org/_tamim_/research.git &&
#cd research &&
#git fetch --unshallow &&
#cd .. &&
#git clone https://github.com/tamimcse/tamimcse.github.io && 
#sudo chmod a+rwx -R * &&
#cd Linux && git config core.fileMode false && cd .. &&
#cd dpdk && git config core.fileMode false && cd .. &&
#cd research && git config core.fileMode false && cd .. &&
#cd tamimcse.github.io && git config core.fileMode false && cd .. &&
#cd gst-streamer && git config core.fileMode false && cd .. &&
#cd iproute2 && git config core.fileMode false &&  sudo ./configure && make -j8 && sudo make install && cd .. &&
#cd Linux &&
#make defconfig &&
#cd .. &&
cd Downloads &&
#You can download Netbeans binary or install it. Prefer installing it because it adds the executable to desktop as favorite app.
#In Netbeans, install C/C++ plugin manually. For that, you may need to enable 8.2 plugin as https://askubuntu.com/questions/1359015/netbeans-12-4-c-c
#Also increase the font size to 18. 
##You may need to increase the memory size, because Linux kernel was getting error analyzing the code
wget https://archive.apache.org/dist/netbeans/netbeans/12.4/Apache-NetBeans-12.4-bin-linux-x64.sh &&
sudo chmod a+rwx Apache-NetBeans-12.4-bin-linux-x64.sh &&
sudo sh Apache-NetBeans-12.4-bin-linux-x64.sh &&
#Install microsoft Teams manually. I couldn't wget the deb by a fixed link
#Install Skype and Zoom. Apparently we don't need to update link for them
wget https://go.skype.com/skypeforlinux-64.deb &&
sudo chmod a+rwx skypeforlinux-64.deb &&
sudo apt-get install ./skypeforlinux-64.deb &&
wget https://zoom.us/client/latest/zoom_amd64.deb &&
sudo chmod a+rwx zoom_amd64.deb &&
sudo apt-get install -y ./zoom_amd64.deb &&
#install Discord
sudo snap install discord --classic &&
#install Slack
sudo snap install slack --classic &&
#install Docker
sudo snap install docker &&
#Install Klayout (GDSII viewer)
wget https://www.klayout.org/downloads/Ubuntu-18/klayout_0.26.3-1_amd64.deb &&
sudo chmod a+rwx -R klayout_0.26.3-1_amd64.deb &&
sudo apt install -y ./klayout_0.26.3-1_amd64.deb &&
sudo apt-get -f install &&
cd .. &&
#intsall Wireshark
sudo add-apt-repository -y ppa:wireshark-dev/stable &&
sudo apt-get update -y &&
sudo apt -y install wireshark &&
#Install Dropbox (https://www.dropbox.com/install-linux)
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf - &&
~/.dropbox-dist/dropboxd &&
#Install virtual Box (don't do it. It virualbox doesn't work!!!)
#sudo add-apt-repository multiverse && sudo apt-get update &&
#sudo apt install -y virtualbox &&
sudo rm -R openflow
#Increase heap size of Netbeans manually. Otherwise netbeans often cause trouble parsing kernel code.
#To do so, open up /usr/local/netbeans-version/etc/netbeans.conf. Change -J-Xms. That is, update 
#
#netbeans_default_options="-J-client -J-Xss2m -J-Xms32m -J-Dapple.laf.useScreenMenuBar=true -J-Dapple.awt.graphics.UseQuartz=true -J-Dsun.java2d.noddraw=true -J-#Dsun.java2d.dpiaware=true -J-Dsun.zip.disableMemoryMapping=true"
#to
#netbeans_default_options="-J-client -J-Xss2m -J-Xms1024m -J-Dapple.laf.useScreenMenuBar=true -J-Dapple.awt.graphics.UseQuartz=true -J-Dsun.java2d.noddraw=true -J-#Dsun.java2d.dpiaware=true -J-Dsun.zip.disableMemoryMapping=true"
