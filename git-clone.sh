#git clone https://github.com/tamimcse/Linux.git &&
#sudo chmod a+rwx -R * &&
#cd Linux && git config core.fileMode false && cd .. &&
git config --global core.compression 0 &&
git clone --depth 1 https://_tamim_@bitbucket.org/_tamim_/research.git &&
cd research &&
git fetch --unshallow &&
git config core.fileMode false && cd .. &&
sudo chmod a+rwx -R * &&
git clone https://github.com/tamimcse/tamimcse.github.io && 
sudo chmod a+rwx -R * &&
cd tamimcse.github.io && git config core.fileMode false && cd .. &&
git clone https://github.com/tamimcse/useful-scripts &&
sudo chmod a+rwx -R * &&
cd useful-scripts && git config core.fileMode false && cd .. &&
git clone https://github.com/tamimcse/CP-Trie.git &&
sudo chmod a+rwx -R * &&
cd CP-Trie && git config core.fileMode false && cd .. &&
git clone https://github.com/tamimcse/C2RTL.git &&
sudo chmod a+rwx -R * &&
cd C2RTL && git config core.fileMode false && cd .. &&
git clone https://github.com/tamimcse/interview_practice.git &&
sudo chmod a+rwx -R * &&
cd interview_practice && git config core.fileMode false && cd .. &&
git clone https://github.com/gcc-mirror/gcc &&
sudo chmod a+rwx -R * &&
cd gcc && git config core.fileMode false && cd .. &&
git clone https://_tamim_@bitbucket.org/_tamim_/aladdin.git &&
sudo chmod a+rwx -R * &&
cd aladdin && git config core.fileMode false && cd .. &&
#Install Bambu
git clone https://github.com/ferrandi/PandA-bambu &&
sudo chmod a+rwx -R * &&
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
