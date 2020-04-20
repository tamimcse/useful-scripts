#Install Chrome first manually
#F10: BIOS, F9: advanced boot, sometimes I had to hold the key down to get it to work
#sudo apt-get -f install &&
#install Vanilla Gnome
#sudo apt-get upadte &&
#sudo apt install -y gnome-session &&
#select gnome-shell and press ENTER
#sudo update-alternatives --config gdm3.css &&
sudo apt-get install -y git subversion &&
sudo apt-get install -y netperf inetutils-traceroute &&
sudo apt-get install -y liborc-0.4-dev gir1.2-gst-* &&
sudo apt-get install -y texstudio texlive-latex-extra texlive-generic-extra texlive-full &&
sudo apt-get install -y liblz4-tool liblz-dev libbz2-dev &&
sudo apt-get install -y kexec-tools &&
sudo apt-get install -y openjdk-8-jre-headless &&
sudo apt-get install -y hexchat tree &&
sudo apt-get install -y hardinfo &&
sudo apt-get install -y build-essential libtool autopoint autoconf bison gtk-doc-tools libboost-all-dev qt5-default gcc-multilib libedit-dev libclang-dev libcairo2-dev &&
sudo apt-get install -y g++ &&
#BPF compiler
sudo apt-get install -y clang libc6-dev-i386 llvm libelf-dev binutils-dev util-linux pkg-config elfutils &&
#dependency
sudo apt-get install -y libgcrypt20-dev &&
#Linaro tool-chain
sudo apt-get install -y gcc-arm-linux-gnueabi qemu-system &&
sudo apt-get install -y qemu qemu-system &&
#Bootloader
sudo apt-get install -y redboot-tools u-boot-tools lzop bc &&
sudo apt-get install -y xinetd tftpd tftp &&
#Needed for checking capability
sudo apt-get install -y libcap-dev &&
#Needed for menuconfig
sudo apt-get install -y ncurses-dev &&
#Needed for LEDE
sudo apt-get install -y libncurses5-dev gawk gettext unzip file libssl-dev wget binutils subversion libz-dev ccache xsltproc &&
#Firmware reverse engineering
sudo apt-get install -y binwalk squashfs-tools python-magic &&
sudo apt-get install -y gnuplot &&
#needed for Domino
sudo apt-get install -y graphviz &&
sudo apt-get install -y v4l-utils &&
sudo apt-get install -y libva-dev vainfo mesa-utils mesa-common-dev inxi &&
sudo apt-get install -y libx264-dev &&
#Needed for GStreamer
sudo apt-get install -y flex yasm &&
#intsall latest NVIDIA driver (needed for good display)
sudo add-apt-repository -y ppa:graphics-drivers/ppa &&
sudo apt-get update -y &&
sudo apt-get install -y nvidia-361 nvidia-prime &&
#Needed for NVIDIA graphics driver, lsscsi, lstopo(shows cpu and PCIe topology), DPDK command
sudo apt-get install -y lsscsi cpuset sysstat rt-tests libnuma-dev hwloc &&
sudo apt-get install -y libvirt-bin libvirt-dev &&
#DVD burner
sudo apt-get install -y k3b brasero &&
#Installing GStreamer
sudo apt-get install -y libgstreamer1.0-0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio &&
sudo apt-get install -y python3-pip &&
sudo apt-get install -y python-pip &&
sudo apt-get install -y ninja-build &&
pip3 install meson &&
sudo apt-get install -y libfreenect-dev &&
sudo apt-get install -y libudev-dev libusb-1.0-0-dev libturbojpeg libjpeg-turbo8-dev libglfw3-dev beignet-dev libjpeg-dev libxrandr-dev doxygen libxi-dev libopencv-dev &&
sudo apt-get install -y libopenni2-dev &&
sudo apt-get install -y libogre-1.9-dev libois-dev libtinyxml-dev libhidapi-dev libsdl2-dev libglew-dev  freeglut3 freeglut3-dev libvisual-0.4-dev &&
sudo apt-get install -y libnice-dev &&
sudo apt-get install -y flex yasm &&
sudo apt-get install -y libmnl-dev &&
sudo apt-get install -y libgmp-dev &&
sudo apt-get install -y libreadline-dev &&
#Gnome tweak tool
sudo apt install -y gnome-tweak-tool &&
#Needed for OpenROAD
sudo apt-get install -y tcl-dev tk-dev swig libeigen3-dev &&
#Add TCL include directory to gcc include directory
echo 'export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/usr/include/tcl' >> .bashrc &&
#Needed for RePlAce
sudo apt-get install -y libsparsehash-dev &&
#Needed for Qflow
sudo apt-get install -y graywolf python3-tk &&
#Install netgen manually (apt-get doesn't work on Ubuntu 18.04). This is needed for Qflow
git clone git://opencircuitdesign.com/netgen &&
cd netgen &&
./configure &&
make -j8 &&
sudo make install &&
cd .. &&
sudo rm -R netgen/ &&
#Needed for OpenRAM
sudo apt-get install -y ngspice &&
#Needed for OpenRAM
pip3 install numpy scipy &&
#Needed for AMC
pip install numpy scipy &&
#Install Verilog
sudo apt-get install -y iverilog gtkwave libmotif-dev &&
#Needed for PyMTL
sudo apt-get install -y python-virtualenv verilator &&
#Needed for sv2v
sudo apt-get install -y haskell-stack &&
#Needed for Bambu HLS
sudo apt-get install -y autoconf autoconf-archive automake libtool g++ gcc-4.8 g++-4.8 gcc-5 g++-5 gcc-6 g++-6 gcc-7 g++-7 gcc-8 g++-8 gcc-4.8-plugin-dev gcc-5-plugin-dev gcc-6-plugin-dev gcc-7-plugin-dev  gcc-8-plugin-dev gcc-4.8-multilib gcc-5-multilib gcc-6-multilib gcc-7-multilib gcc-8-multilib g++-4.8-multilib g++-5-multilib g++-6-multilib g++-7-multilib g++-8-multilib gfortran-4.8 gfortran-4.8-multilib gfortran-5 gfortran-5-multilib gfortran-6 gfortran-6-multilib gfortran-7 gfortran-7-multilib gfortran-8 gfortran-8-multilib clang-4.0 libclang-4.0-dev libclang-6.0-dev clang-6.0 libclang-6.0-dev clang-7 libclang-7-dev libbdd-dev libboost-all-dev libmpc-dev libmpfr-dev libxml2-dev liblzma-dev libmpfi-dev zlib1g-dev libicu-dev bison doxygen flex graphviz iverilog verilator make libsuitesparse-dev libglpk-dev &&
sudo apt-get install -y scala &&
#Install Scala sbt
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list &&
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823 &&
sudo apt-get update -y &&
sudo apt-get install -y sbt &&
#Set path variables for Domino
echo 'export PATH="$PATH:/home/tamim/sketch-1.6.9/sketch-frontend"' >> .bashrc &&
echo 'export SKETCH_HOME="/home/tamim/sketch-1.6.9/sketch-frontend/runtime"' >> .bashrc &&
echo 'export CLANG_DEV_LIBS="/home/tamim/clang+llvm-3.5.0-x86_64-linux-gnu"' >> .bashrc &&
git config --global user.name "tamimcse" &&
git config --global user.email "tamim@csebuet.org" &&
git config --global credential.helper cache &&
git config --global credential.helper 'cache --timeout=3600' &&
git config --global core.fileMode false &&
#Build BOOST 1.55.0 locally (Needed for Aladdin).
wget http://sourceforge.net/projects/boost/files/boost/1.55.0/boost_1_55_0.tar.gz &&
tar -xzvf boost_1_55_0.tar.gz &&
cd boost_1_55_0 &&
./bootstrap.sh &&
mkdir build &&
./b2 --build-dir=./build --with-graph --with-regex &&
cd .. &&
#Build BOOST 1.68 locally (needed for TritonRoute). Don't install Boost
wget https://dl.bintray.com/boostorg/release/1.68.0/source/boost_1_68_0.tar.gz &&
tar xvzf boost_1_68_0.tar.gz &&
cd boost_1_68_0 &&
mkdir build &&
#add this prefix. Otherwise it installs in /usr/..
./bootstrap.sh -prefix=./build &&
./b2 install --with-iostreams -j8 &&
cd .. &&
#Default option installs old version of zlib1g. So Install Zlib 1.2.11 from source (needed for TritonRoute and Aladdin)
wget https://www.zlib.net/zlib-1.2.11.tar.gz &&
tar xvzf zlib-1.2.11.tar.gz &&
cd zlib-1.2.11 &&
./configure --prefix=/usr &&
sudo make &&
sudo make install &&
cd .. &&
sudo rm boost_1_55_0.tar.gz &&
sudo rm boost_1_68_0.tar.gz &&
sudo rm zlib-1.2.11.tar.gz &&
sudo rm -R zlib-1.2.11 &&
#Install Mininet
git clone git://github.com/mininet/mininet &&
cd mininet/util/ &&
sudo ./install.sh -fnv &&
cd ../../ &&
#Install Yosys from source. Don't install it via apt-get. Apt-get installs old version
git clone https://github.com/YosysHQ/yosys &&
cd yosys &&
git config core.fileMode false &&
make config-gcc &&
make -j8 &&
sudo make install &&
cd .. &&
cd Downloads &&
#apt install cmake installs cmake 10.2. OpenROAD requires higer version. So we install cmake from source
wget https://github.com/Kitware/CMake/releases/download/v3.17.1/cmake-3.17.1.tar.gz &&
tar xvzf cmake-3.17.1.tar.gz &&
cd cmake-3.17.1 &&
./bootstrap &&
sudo make -j8 &&
sudo make install &&
cd .. &&
#Install OpenROAD from source
git clone --recursive https://github.com/The-OpenROAD-Project/OpenROAD.git &&
cd OpenROAD &&
git config core.fileMode false &&
mkdir build &&
cd build &&
cmake .. &&
#don't use make -j8. It fails
make &&
sudo make install &&
cd ../../ &&
#Install TritonRoute from source
git clone https://github.com/The-OpenROAD-Project/TritonRoute &&
cd TritonRoute &&
git config core.fileMode false &&
mkdir build &&
cd build &&
#note that Boost 1.68 is installed in /home/tamim/boost_1_68_0/build
cmake -DBOOST_ROOT=/home/tamim/boost_1_68_0/build ../ &&
make -j8 &&
cd ../../ &&
#Set TritonRoute in PATH variable. Don't install it
echo 'export PATH="$PATH:/home/tamim/TritonRoute/build"' >> .bashrc &&
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
wget http://download.netbeans.org/netbeans/8.2/final/bundles/netbeans-8.2-cpp-linux-x64.sh &&
sudo chmod a+rwx netbeans-8.2-cpp-linux-x64.sh &&
sudo sh netbeans-8.2-cpp-linux-x64.sh &&
wget https://go.skype.com/skypeforlinux-64.deb &&
sudo chmod a+rwx skypeforlinux-64.deb &&
sudo apt-get install ./skypeforlinux-64.deb &&
wget https://zoom.us/client/latest/zoom_amd64.deb &&
sudo chmod a+rwx zoom_amd64.deb &&
sudo apt-get install -y ./zoom_amd64.deb &&
#install Discord
sudo snap install discord --classic &&
wget https://www.syntevo.com/downloads/smartgit/smartgit-19_1_6.deb &&
sudo chmod a+rwx -R smartgit-19_1_6.deb &&
sudo apt install ./smartgit-19_1_6.deb &&
#Install Klayout (GDSII viewer)
wget https://www.klayout.org/downloads/Ubuntu-18/klayout_0.26.3-1_amd64.deb &&
sudo chmod a+rwx -R klayout_0.26.3-1_amd64.deb &&
sudo apt install ./klayout_0.26.3-1_amd64.deb &&
sudo apt-get -f install &&
cd .. &&
#intsall Wireshark
sudo add-apt-repository -y ppa:wireshark-dev/stable &&
sudo apt-get update -y &&
sudo apt -y install wireshark &&
sudo rm -R openflow
#Increase heap size of Netbeans manually. Otherwise netbeans often cause trouble parsing kernel code.
#To do so, open up /usr/local/netbeans-version/etc/netbeans.conf. Change -J-Xms. That is, update 
#
#netbeans_default_options="-J-client -J-Xss2m -J-Xms32m -J-Dapple.laf.useScreenMenuBar=true -J-Dapple.awt.graphics.UseQuartz=true -J-Dsun.java2d.noddraw=true -J-#Dsun.java2d.dpiaware=true -J-Dsun.zip.disableMemoryMapping=true"
#to
#netbeans_default_options="-J-client -J-Xss2m -J-Xms1024m -J-Dapple.laf.useScreenMenuBar=true -J-Dapple.awt.graphics.UseQuartz=true -J-Dsun.java2d.noddraw=true -J-#Dsun.java2d.dpiaware=true -J-Dsun.zip.disableMemoryMapping=true"
