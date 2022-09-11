#These scripts adds Bambu and Vivado's executables to the PATH derectory. Without them, the script will fail.
export PATH=../../src:../../../src:/opt/panda/bin:$PATH
export PATH=/tools/Xilinx/Vivado/2022.1/bin/:$PATH

bambu /home/tamim/PandA-bambu/examples/fft_example/fft_float.c --configuration-name=fft --benchmark-name=x_main --top-fname=main --generate-tb=/home/tamim/PandA-bambu/examples/fft_example/test.xml --experimental-setup=BAMBU --device-name=xc7z020,-1,clg484,VVD -lm -fsingle-precision-constant -Os -ffast-math --libm-std-rounding -fwhole-program --no-iob --evaluation

bambu /home/tamim/PandA-bambu/panda_regressions/hls/CHStone/adpcm/adpcm.c --configuration-name=GCC7-O0-wp-NN  --compiler=I386_GCC7  --simulate -O0 -fwhole-program --clock-period=15 -D'printf(fmt, ...)=' --channels-type=MEM_ACC_NN --experimental-setup=BAMBU --benchmark-name=adpcm

