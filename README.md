# Compile SPEC2017 Benchmark

Set `EXPER` to the path to the experiment directory containing benchmark ISO (`cpu2017-1_0_5.iso`), and set `LLVM_DIR` to the LLVM installation location.

For instance, 
```
export EXPER=/home/tshu/Documents/CopyCoalescing/bench/SPEC2017
export LLVM_DIR=/usr/lib/llvm-18/
```

Change directory to benchmark folder, then mount the ISO file as below.
```
cd bench/SPEC2017
mkdir mnt
sudo mount -t iso9660 -o ro,exec,loop cpu2017-1_0_5.iso $EXPER/mnt
$EXPER/mnt/install.sh
sudo umount $EXPER/mnt
rm -r mnt
```

Now the benchmark is insider folder `spec2017/`. Make sure that `myexpcfg.cfg` and `spec2017script.sh` are at current location. To compile the benchmark, copy the script inside the folder and run it as below.
```
cp spec2017script.sh spec2017
cd spec2017
chmod +x spec2017script.sh
. shrc
./spec2017script.sh $LLVM_DIR "-fno-inline -Os -S -emit-llvm" 500.perlbench_r 502.gcc_r 505.mcf_r 520.omnetpp_r 523.xalancbmk_r 525.x264_r 531.deepsjeng_r 541.leela_r 557.xz_r 508.namd_r 510.parest_r 511.povray_r 519.lbm_r 526.blender_r 538.imagick_r 544.nab_r 600.perlbench_s 602.gcc_s 605.mcf_s 620.omnetpp_s 623.xalancbmk_s 625.x264_s 631.deepsjeng_s 641.leela_s 657.xz_s 619.lbm_s 638.imagick_s 644.nab_s
```

The compiled `.ll` files are now under `-fno-inline_-Os_-S_-emit-llvm/` folder.

# Generate CFG, Interference Graph, and Affinity Relation

## Standard Input Format
The standard input contains CFG, interference graph, and affinity relation, in proper order.

**1. Control-flow Graph (with Liveness Analysis).**
The first line contains 3 integers $N$, $M$, $k$, which are the \# of nodes on CFG, the \# of variables, and the \# of registers, respectively.
For each of the following $3N$ lines, let $i=1,2,\cdots,N$:
The $(3i-2)$-th line first contains an integer $l$, representing the degree of node $i$. The following $l$ integers are the neighors of node $i$.
The $(3i-1)$-th line first contains an integer $l$, representing $|\text{LiveIn}(i)|$. The following $l$ integers are the variables live before node $i$.
The $(3i)$-th line first contains an integer $l$, representing $|\text{LiveOut}(i)|$. The following $l$ integers are the variables live after node $i$.

**2. Interference Graph.**
The first line contains 1 integer $n$, representing the \# of variables, i.e., \# of vertices on the interference graph.
For each of the following $n$ lines, the $i$-th line first contains an integer $l$, representing the degree of vertex $i$; the following $l$ integers are the neighbors of vertex $i$.

**3. Affinity Relation.**
The first line contains 1 integer $m$, representing the \# of affinity relations.
For each of the following $m$ lines, each line contains 3 integers $u,v,w$, indicating there's an affinity relation between $u$ and $v$ with weight $w$.
**TODO.** The profiling is not implemented so all weights are set to 1 for now. Need to replace this with profiled frequency later.

## SPEC2017
The LLVM pass for constructing CFG, interference graph, and affinity relation is located in `preproc/` folder. Run the following to compile and run the pass. Notice that the generated graph information for each function is output under `tmp/` folder.

```
cd preproc
cmake .
make
mkdir tmp
opt -load-pass-plugin ./libCC.so -passes=CC -disable-output input/deb.ll
```

Compile and run `Preprocess.cpp` to generate graph information for all `.ll` files insider SPEC2017 benchmark. The standard input generated are located under `bench/SPEC2017/input/` folder.
```
g++ Preprocess.cpp -o Preprocess
./Preprocess
```

## Optimal Coalescing Challenge (Princeton)
To transform the benchmark into standard input format, compile and run `PrepareOCC.cpp` under `bench/OCC/` folder. The standard input generated are located under `bench/OCC/input/` folder. Notice that the benchmark doesn't contain CFG.
```
cd bench/OCC
mkdir input
g++ PrepareOCC.cpp -o PrepareOCC
./PrepareOCC
```

## Visualize CFG (for debugging)
Given a `.ll` file, one can generate the corresponding CFG with the following commands.
Notice that `.main.dot` should be replaced to the dot file generated for the specific function to be visualized.

```
cd preproc/input
clang++ -S -emit-llvm -O1 test.cpp
opt -passes=dot-cfg test.ll
dot -Tpng -o test.png .main.dot
```