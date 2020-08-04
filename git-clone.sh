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
git clone https://_tamim_@bitbucket.org/_tamim_/onko.git &&
cd onko && git config core.fileMode false && cd .. &&
git clone https://_tamim_@bitbucket.org/_tamim_/fib-lookup-hls.git &&
cd fib-lookup-hls && git config core.fileMode false && cd ..


