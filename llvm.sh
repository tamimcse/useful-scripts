git clone  --branch  llvmorg-15.0.0  https://github.com/llvm/llvm-project.git &&
cd llvm-project &&
mkdir build &&
cd build/ &&
cmake -DLLVM_ENABLE_PROJECTS="clang;lld" -DLLVM_TARGETS_TO_BUILD=RISCV  -DCMAKE_BUILD_TYPE=Release -G "Unix Makefiles" ../llvm &&
make &&
bin/llc --version
