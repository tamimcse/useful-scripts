#These scripts adds Bambu and Vivado's executables to the PATH derectory. Without them, the script will fail.
export PATH=../../src:../../../src:/opt/panda/bin:$PATH
export PATH=/tools/Xilinx/Vivado/2022.1/bin/:$PATH

bambu /home/tamim/PandA-bambu/examples/fft_example/fft_float.c --configuration-name=fft --benchmark-name=x_main --top-fname=main --generate-tb=/home/tamim/PandA-bambu/examples/fft_example/test.xml --experimental-setup=BAMBU --device-name=xc7z020,-1,clg484,VVD -lm -fsingle-precision-constant -Os -ffast-math --libm-std-rounding -fwhole-program --no-iob --evaluation
