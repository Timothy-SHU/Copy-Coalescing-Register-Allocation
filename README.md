# Optimal Register Allocation with Copy Coalescing

This project implements the treewidth-based parameterized algorithm of copy-coalescing-aware register allocation problem. The experiment is conducted on SPEC CPU 2017 benchmark, MiBench, and Linux Kernel source code. The programs in the benchmark are compiled to LLVM IR, with graph information extracted. The performance of the parameterized algorithm, [Hack's heuristic](https://dl.acm.org/doi/10.1145/1375581.1375610), and [ILP-based solution](https://dl.acm.org/doi/10.5555/1759937.1759948) on those instances are compared.

## Dependencies
- [LLVM-18](https://llvm.org/)
- The [SPEC CPU 2017](https://www.spec.org/cpu2017/) benchmark (download the ISO file and place it under `bench/SPEC2017/`).
- The [MiBench](https://vhosts.eecs.umich.edu/mibench/) benchmark (download the ZIP file and place it under `bench/MiBench/`).
- [Linux Kernel v6.6.83](https://www.kernel.org/) source code (download the Tarball and place it under `bench/LinuxKernel/`).
- [IBM ILOG CPLEX Optimization Studio](https://www.ibm.com/products/ilog-cplex-optimization-studio) (v22.1.1, academic): standard mathematic programming solver.
- [htd](https://github.com/mabseher/htd): a tree / hypertree decomposition solver, which comes with C++ API for developers.
- [flow-cutter](https://github.com/kit-algo/flow-cutter-pace17) (optional): a fast tree decomposition solver, but needs external file IO (download, compile, and place it under `pace17/` folder).

## File Structure
```
Copy-Coalescing-Register-Allocation
└── algos/
│   └── Heuristic/
│   └── ILP/
│   └── Treewidth/
│   └── ExperimentSPEC.cpp
│   └── ExperimentMiBench.cpp
│   └── ExperimentLinuxKernel.cpp
└── bench/
│   └── SPEC2017/
│   │   └── input/
│   │   └── cpu2017-1_0_5.iso
│   │   └── myexpcfg.cfg
│   │   └── spec2017script.sh
│   └── MiBench/
│   │   └── input/
│   │   └── mibench.zip
│   │   └── compile_mibench.sh
│   └── LinuxKernel/
│       └── input/
│       └── linux-6.6.83.tar.xz
│       └── gen_compile_script.go
│       └── extract_ll.sh
└── preproc/
│   └── genCFG.h
│   └── liveness.h
│   └── main.cpp
│   └── PrelimExptSPEC.cpp
│   └── PreprocessSPEC.cpp
│   └── PreprocessSPEC-per-func.cpp
│   └── PrelimExptMiBench.cpp
│   └── PreprocessMiBench.cpp
│   └── PreprocessMiBench-per-func.cpp
│   └── PrelimExptLinuxKernel.cpp
│   └── PreprocessLinuxKernel.cpp
│   └── PreprocessLinuxKernel-per-func.cpp
└── results/
│   └── SPEC2017/
│   └── MiBench/
│   └── LinuxKernel/
│   └── RuntimePlots/
│   └── CollectResultsSPEC.cpp
│   └── CollectResultsMiBench.cpp
│   └── CollectResultsLinuxKernel.cpp
│   └── resultsSPEC.xls
│   └── resultsMiBench.xls
│   └── resultsLinuxKernel.xls
└── pace17/ (optional, for flow-cutter solver)
```

## Compile Benchmarks

### SPEC CPU 2017
Set `EXPER` to the path to the experiment directory containing benchmark ISO (`cpu2017-1_0_5.iso`), and set `LLVM_DIR` to the LLVM installation location.

For instance, 
```
export EXPER=/path/to/project/bench/SPEC2017
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

Now the benchmark is inside folder `spec2017/`. Make sure that `myexpcfg.cfg` and `spec2017script.sh` are at current location. To profile and compile the benchmark, copy the script inside the folder and run it as below.
```
cp spec2017script.sh spec2017
cd spec2017
export LLVM_PROFILE_FILE="default.profraw"
. shrc
bash spec2017script.sh $LLVM_DIR "-O1" 500.perlbench_r 502.gcc_r 505.mcf_r 508.namd_r 510.parest_r 511.povray_r 519.lbm_r 520.omnetpp_r 523.xalancbmk_r 525.x264_r 526.blender_r 531.deepsjeng_r 538.imagick_r 541.leela_r 544.nab_r 557.xz_r
```

The script will first profile the sub-benchmarks and then compile them into LLVM IR. The compiled `.ll` files are now under `bench/SPEC2017/-O1/` folder.

### MiBench
Unzip `mibench.zip` to `mibench/`. Then set `LLPATH` in `mibench/Makefile.config` to the `bin/` folder at LLVM installation location.
Run `compile_mibench.sh` to generate LLVM IR. For technical reasons, there's no profiling for this benchmark. The compiled `.ll` files are now under `bench/MiBench/-O1/` folder.
```
cd bench/MiBench
unzip mibench.zip
bash compile_mibench.sh "-O1" adpcm_c basicmath bitcount blowfish_d CRC32 dijkstra FFT ghostscript gsm ispell jpeg_c jpeg_d lame patricia pgp qsort rijndael rsynth sha stringsearch susan_c tiff2bw tiff2dither tiff2median tiff2rgba typeset
```

### Linux Kernel v6.6.83
Extract `linux-6.6.83.tar.xz` to `linux-6.6.83/`. Compile the kernel with make, and run `../gen_compile_script.go` to generate build script for LLVM IR. Then run `build.sh` to compile the kernel. Copy and run `../extract_ll.sh` to extract all `.ll` files into `bench/LinuxKernel/-O1/` folder. For technical reasons, there's no profiling for this benchmark.
```
cd bench/LinuxKernel
tar -xvf linux-6.6.83.tar.xz
cd linux-6.6.83
make defconfig
make LLVM=1 -j16
go run ../gen_compile_script.go
bash build.sh
cp ../extract_ll.sh extract_ll.sh
bash extract_ll.sh arch block certs crypto drivers fs init io_uring ipc kernel lib mm net rust security sound
```

## Generate CFG, Interference Graph, and Affinity Relation

### Standard Input Format
The standard input contains CFG, interference graph, and affinity relation, in proper order.

**1. Control-flow Graph (with Liveness Analysis).**  
The first line contains 3 integers $N$, $M$, $k$, which are the \# of nodes on CFG, the \# of variables, and the \# of registers, respectively.  
For each of the following $3N$ lines, let $i=1,2,\cdots,N$:

- The $(3i-2)$-th line first contains an integer $l$, representing the degree of node $i$. The following $l$ integers are the neighors of node $i$.
- The $(3i-1)$-th line first contains an integer $l$, representing $|\text{LiveIn}(i)|$. The following $l$ integers are the variables live before node $i$.
- The $(3i)$-th line first contains an integer $l$, representing $|\text{LiveOut}(i)|$. The following $l$ integers are the variables live after node $i$.

**2. Interference Graph.**  
The first line contains 1 integer $n$, representing the \# of variables, i.e., \# of vertices on the interference graph.  
For each of the following $n$ lines, the $i$-th line first contains an integer $l$, representing the degree of vertex $i$; the following $l$ integers are the neighbors of vertex $i$.

**3. Affinity Relation.**  
The first line contains 1 integer $m$, representing the \# of affinity relations.  
For each of the following $m$ lines, each line contains 3 integers $u,v,w$, indicating there's an affinity relation between $u$ and $v$ with weight $w$.

### Preprocess Benchmarks
The LLVM pass for constructing CFG, interference graph, and affinity relation is located in `preproc/` folder. Run the following to compile and run the pass. Notice that the generated graph information for each function is output under `tmp/` folder.
```
cd preproc
cmake .
make
mkdir tmp
opt -load-pass-plugin ./libCC.so -passes=CC -disable-output input/test.ll
```

We first demonstrate the preprocessing of SPEC CPU 2017 benchmark.

The configurations are set inside `config-SPEC.txt`, where the first line contains a single integer representing the number of registers allowed, and each of the following lines specifies a sub-benchmark to be preprocessed.

Compile and run `PreprocessSPEC-per-func.cpp` to generate graph information for all `.ll` files inside the benchmark. The standard input generated are located under `bench/SPEC2017/input-per-func/` folder. Each `.ll` file is separated into multiple graph files, where each file corresponds to a function.
```
g++ PreprocessSPEC-per-func.cpp -o PreprocessSPEC-per-func
./PreprocessSPEC-per-func
```

After generating the per-function input, compile and run `PrelimExptSPEC.cpp` to invoke ILP solver on each graph file to remove infeasible graphs. `PreprocessSPEC.cpp` then generates the graph information of each `.ll` as one merged graph file under `bench/SPEC2017/input/` folder.
```
g++ PrelimExptSPEC.cpp -o PrelimExptSPEC
./PrelimExptSPEC
g++ PreprocessSPEC.cpp -o PreprocessSPEC
./PreprocessSPEC
```

The preprocessing of MiBench benchmark and Linux Kernel can be done analogously.
```
g++ PreprocessMiBench-per-func.cpp -o PreprocessMiBench-per-func
./PreprocessMiBench-per-func
g++ PrelimExptMiBench.cpp -o PrelimExptMiBench
./PrelimExptMiBench
g++ PreprocessMiBench.cpp -o PreprocessMiBench
./PreprocessMiBench

g++ PreprocessLinuxKernel-per-func.cpp -o PreprocessLinuxKernel-per-func
./PreprocessLinuxKernel-per-func
g++ PrelimExptLinuxKernel.cpp -o PrelimExptLinuxKernel
./PrelimExptLinuxKernel
g++ PreprocessLinuxKernel.cpp -o PreprocessLinuxKernel
./PreprocessLinuxKernel
```

### Visualize CFG (for debugging)
Given a `.ll` file, one can generate the corresponding CFG with the following commands.
Notice that `.main.dot` should be replaced to the dot file generated for the specific function to be visualized.
```
cd preproc/input
clang++ -S -emit-llvm -O1 test.cpp
opt -passes=dot-cfg test.ll
dot -Tpng -o test.png .main.dot
```

### Display Profiled Information (for debugging)
The following shows how to profile a program and display counts / branch weights. `llvm-profdata` merges the raw data and show text report. `llvm-cov` displays coverage report and the program side-by-side. Generate LLVM IR with `-fprofile-instr-use` flag inserts profiled info into the `.ll` file.
```
clang++ -O1 -fprofile-instr-generate -fcoverage-mapping test.cpp -o test
./test
llvm-profdata merge -output=test.prof -instr default.profraw
llvm-profdata show -all-functions -counts -ic-targets test.prof
llvm-cov show test -instr-profile=test.prof
clang++ -O1 -fprofile-instr-use=test.prof -S -emit-llvm test.cpp
```

## Copy Coalescing Algorithms

### Brute-force Checker (for debugging)
The brute-force solver is implemented under `algos/checker/` folder along with a random data generator and a checker program. The data scale is specified in `config.txt`, where the four integers are the number of variables, the number of edges on integerence graph, the number of affinity relations, and the number of registers allowed. The checker compares the output of treewidth-based parameterized algorithm against brute-force result.
```
cd algos/checker
g++ BruteForce.cpp -o BruteForce
g++ data.cpp -o data
g++ checker.cpp -o checker
cd ..
checker/checker < checker/config.txt
```

### Parameterized Algorithm (w/ Treewidth)
The treewidth-based parameterized algorithm is implemented under `algos/Treewidth/` folder. Compile `Treewidth.cpp` and feed in standard input files. The default location of htd is under `/usr/local/`. Change it in `make.sh` if it is not the case.
```
cd algos/Treewidth
bash make.sh
cd ..
Treewidth/Treewidth < input/000
```
`Treewidth_i64.cpp` is the 64-bit long int version for `SPEC2017/502.gcc_r` sub-benchmark. The other three files with `_flow-cutter` is the implementation with flow-cutter solver (which needs external file IO for decomposition).

The output consists of three lines.  
The first line contains three integers $n$, $\text{avgAff}$, and $tw$, which are the number of vertices in the interference graph, the average affinity degree, and the treewidth (given by the solver).  
The second line contains two integers $ans$, $\text{totalWeight}$, and a float $t$, where $ans$ is the max sum of satisfied affinity relations, $\text{totalWeight}$ is the total sum of all affinity relations, and $t$ is the run time.  
The third line contains $n$ integers in $[0,k-1]$, representing the register allocated for each variable.

### Hack's Heuristic
The Hack's heuristic is implemented under `algos/Heuristic/` folder. The parameter $\alpha$ is set to 0.1, as in the original paper. There is no time or depth limit implemented. Compile `Heuristic.cpp` and feed in standard input files.
```
cd algos/Heuristic
g++ Heuristic.cpp -o Heuristic
cd ..
Heuristic/Heuristic < input/000
```

The output format is almost the same as that of the parameterized algorithm, except that there's no treewidth output in the first line. 

### ILP-based Algorithm
Copy coalescing by solving ILP is implmented under `algos/ILP/` folder. It requires CPLEX ILOG Optimizer (academic version 2211). `make.sh` links the libraries and compiles the code. The default location of CPLEX is under `/opt/ibm/ILOG/CPLEX_Studio2211/`. Change it in `make.sh` if it is not the case.
```
cd algos/ILP
bash make.sh
cd ..
ILP/ILP < input/000
```

### Experiment
To invoke the three algorithms on the input, compile and run `ExperimentSPEC.cpp`, `ExperimentMiBench`, and `ExperimentLinuxKernel.cpp` under `algos/` folder.  
The configurations are specified inside `config-SPEC.txt`, `config-MiBench.txt`, and `config-LinuxKernel.txt`:
- The first line is the name of the algorithm to be invoked: "Heuristic", "ILP", or "Treewidth";
- The second line contains the mode of experiment, either "normal" or "merged", where "normal" means running the algorithm on each program insider the benchmark, and "merged" means passing in all the graphs inside a benchmark as a whole; and the integer follows specifies the number of runs to be conducted for this experiment;
- Starting from the third line, each line contains a string representing a benchmark to be experimented on, where a '#' in at the beginning simply excludes this benchmark.

```
cd algos
g++ ExperimentSPEC.cpp -o ExperimentSPEC
./ExperimentSPEC
g++ ExperimentMiBench.cpp -o ExperimentMiBench
./ExperimentMiBench
g++ ExperimentLinuxKernel.cpp -o ExperimentLinuxKernel
./ExperimentLinuxKernel
```

### Results
The results are presented under the `results/` folder.  
The `results/SPEC2017/` folder (resp. `results/MiBench/` folder or `results/LinuxKernel/` folder) contains all the outputs of all three algorithms on the SPEC CPU 2017 benchmark (resp. MiBench benchmark or Linux Kernel). `CollectResultsSPEC.cpp`, `CollectResultsMiBench.cpp`, and `CollectResultsLinuxKernel.cpp` then gathers the result from raw output. The details on which sub-benchmarks are displayed are specified inside `config-SPEC.txt`, `config-MiBench`, and `config-LinuxKernel`.  
All experiment results are presented inside `results-SPEC.xls`, `results-MiBench`, and `results-LinuxKernel`. Note that only the SPEC benchmark contains weighted affinity relations, where as the other two contain unweighted affinity relations.