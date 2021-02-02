#git clone https://github.com/tamimcse/Linux.git &&
#cd Linux && git config core.fileMode false && cd .. &&
git config --global core.compression 0 &&
git clone --depth 1 https://_tamim_@bitbucket.org/_tamim_/research.git &&
cd research &&
git fetch --unshallow &&
git config core.fileMode false && cd .. &&
git clone https://github.com/tamimcse/tamimcse.github.io && 
sudo chmod a+rwx -R * &&
cd tamimcse.github.io && git config core.fileMode false && cd .. &&
git clone https://github.com/tamimcse/scripts &&
cd scripts && git config core.fileMode false && cd .. &&
git clone https://_tamim_@bitbucket.org/_tamim_/cp-trie.git &&
cd cp-trie && git config core.fileMode false && cd .. &&
git clone https://_tamim_@bitbucket.org/_tamim_/c2rtl.git &&
cd onko && git config core.fileMode false && cd .. &&
git clone https://_tamim_@bitbucket.org/_tamim_/fib-lookup-hls.git &&
cd fib-lookup-hls && git config core.fileMode false && cd .. &&
git clone https://github.com/gcc-mirror/gcc &&
cd gcc && git config core.fileMode false && cd .. &&
git clone https://_tamim_@bitbucket.org/_tamim_/aladdin.git &&
cd aladdin && git config core.fileMode false && cd .. &&
#Install Bambu
git clone https://github.com/ferrandi/PandA-bambu &&
cd PandA-bambu && git config core.fileMode false && cd .. &&
cd PandA-bambu &&
make -f Makefile.init &&
mkdir obj &&
cd obj &&
#This sude is needed to access /opt/panda
sudo ../configure --prefix=/opt/panda --enable-flopoco --enable-icarus --enable-verilator --enable-opt --enable-release &&
#This sudo is also needed
sudo make -j8 &&
make install

