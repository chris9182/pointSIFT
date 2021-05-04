#/bin/bash
/usr/local/cuda/bin/nvcc pointSIFT.cu -o pointSIFT_g.cu.o -c -O2 -DGOOGLE_CUDA=1 -x cu -Xcompiler -fPIC

# TF1.4
g++ -std=c++11 main.cpp pointSIFT_g.cu.o -o tf_pointSIFT_so.so -shared -fPIC -I /home/chris/anaconda3/envs/pointSIFT/lib/python3.5/site-packages/tensorflow/include -I /usr/local/cuda/include -I /home/chris/anaconda3/envs/pointSIFT/lib/python3.5/site-packages/tensorflow/include/external/nsync/public -lcudart -L /usr/local/cuda/lib64/ -L /home/chris/anaconda3/envs/pointSIFT/lib/python3.5/site-packages/tensorflow -ltensorflow_framework -O2 -D_GLIBCXX_USE_CXX11_ABI=0
