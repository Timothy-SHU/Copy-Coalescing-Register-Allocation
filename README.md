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

Now the benchmark is insider folder `spec2017/`. Make sure that `myexpcfg.cfg` and `spec2017script.sh` are at current location. To profile and compile the benchmarks, copy the script inside the folder and run it as below.
```
cp spec2017script.sh spec2017
cd spec2017
export LLVM_PROFILE_FILE="default.profraw"
chmod +x spec2017script.sh
. shrc
./spec2017script.sh $LLVM_DIR "-O1" 500.perlbench_r 502.gcc_r 505.mcf_r 520.omnetpp_r 523.xalancbmk_r 525.x264_r 531.deepsjeng_r 541.leela_r 557.xz_r 508.namd_r 510.parest_r 511.povray_r 519.lbm_r 526.blender_r 538.imagick_r 544.nab_r 600.perlbench_s 602.gcc_s 605.mcf_s 620.omnetpp_s 623.xalancbmk_s 625.x264_s 631.deepsjeng_s 641.leela_s 657.xz_s 619.lbm_s 638.imagick_s 644.nab_s
```

The script will first profile the benchmarks and then compile them into LLVM IR. The last two benchmarks are huge and takes a long time to profile. The compiled `.ll` files are now under `bench/SPEC2017/-fno-inline_-Os/` folder.

# Generate CFG, Interference Graph, and Affinity Relation

## Standard Input Format
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
**TODO.** The profiling is not implemented so all weights are set to 1 for now. Need to replace this with profiled frequency later.

## SPEC2017
The LLVM pass for constructing CFG, interference graph, and affinity relation is located in `preproc/` folder. Run the following to compile and run the pass. Notice that the generated graph information for each function is output under `tmp/` folder.
```
cd preproc
cmake .
make
mkdir tmp
opt -load-pass-plugin ./libCC.so -passes=CC -disable-output input/test.ll
```

The configurations are set inside `config.txt`, where the first line contains a single integer representing the number of registers allowed, and each of the following lines specifies a benchmark to be preprocessed.

Compile and run `Preprocess.cpp` to generate graph information for all `.ll` files insider SPEC2017 benchmark. The standard input generated are located under `bench/SPEC2017/input/` folder. Each `.ll` file is separated into multiple graph files, where each file corresponds to a function.
```
g++ Preprocess-per-func.cpp -o Preprocess-per-func
./Preprocess-per-func
```

After generating the per-function input, compile and run `PrelimExpt.cpp` to invoke ILP solver on each graph file to remove infeasible graphs. `Preprocess.cpp` then generates the graph information of each `.ll` as one merged graph file under `bench/SPEC2017/input/` folder.

```
g++ PrelimExpt.cpp -o PrelimExpt
./PrelimExpt
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

## Display Profiled Information
The following shows how to profile a program and display counts / branch weights. `llvm-profdata` merges the raw data and show text report. `llvm-cov` displays coverage report and the program side-by-side. Generate LLVM IR with `-fprofile-instr-use` flag inserts profiled info into the `.ll` file.
```
clang++ -O1 -fprofile-instr-generate -fcoverage-mapping test.cpp -o test
./test
llvm-profdata merge -output=test.prof -instr default.profraw
llvm-profdata show -all-functions -counts -ic-targets test.prof
llvm-cov show test -instr-profile=test.prof
clang++ -O1 -fprofile-instr-use=test.prof -S -emit-llvm test.cpp
```

# Copy Coalescing Algorithms

## Brute-force Checker (for debugging)
The brute-force solver is implemented under `algos/checker/` folder along with a random data generator and a checker program. The data scale is specified in `config.txt`, where the four integers are the number of variables, the number of edges on integerence graph, the number of affinity relations, and the number of registers allowed. The checker compares the output of treewidth-based parameterized algorithm against brute-force result.
```
cd algos/checker
g++ BruteForce.cpp -o BruteForce
g++ data.cpp -o data
g++ checker.cpp -o checker
cd ..
checker/checker
```

## Parameterized Algorithm (w/ Treewidth)
The treewidth-based parameterized algorithm is implemented under `algos/Treewidth/` folder. Compile `Treewidth.cpp` and feed in standard input files.
```
cd algos/Treewidth
g++ Treewidth.cpp -o Treewidth
cd ..
Treewidth/Treewidth < input/000
```

The output consists of three lines.  
The first line contains three integers $n$, $\text{avgAff}$, and $tw$, which are the number of vertices in the interference graph, the average affinity degree, and the treewidth (given by the flow-cutter solver).  
The second line contains two integers $ans$, $\text{totalWeight}$, and a float $t$, where $ans$ is the max sum of satisfied affinity relations, $\text{totalWeight}$ is the total sum of all affinity relations, and $t$ is the run time.  
The third line contains $n$ integers in $[0,k-1]$, representing the register allocated for each variable.

## Hack's Heuristic
The Hack's heuristic is implemented under `algos/Heuristic/` folder. The parameter $\alpha$ is set to 0.1, as in the original paper. There is no time or depth limit implemented. Compile `Heuristic.cpp` and feed in standard input files.
```
cd algos/Heuristic
g++ Heuristic.cpp -o Heuristic
cd ..
Heuristic/Heuristic < input/000
```

The output format is almost the same as that of the parameterized algorithm, except that there's no treewidth output in the first line. 

## ILP-based Algorithm
Copy coalescing by solving ILP is implmented under `algos/ILP/` folder. It requires CPLEX ILOG Optimizer (academic version 2211). `make.sh` links the libraries and compiles the code. The default location of CPLEX is under `/opt/ibm/ILOG/CPLEX_Studio2211/`. Change it in `make.sh` if it is not the case.
```
cd algos/ILP
chmod u+x make.sh
./make.sh
cd ..
ILP/ILP < input/000
```

## Experiment
To invoke the three algorithms on the input, compile and run `Experiment.cpp` under `algos/` folder.  
The configurations are specified inside `config.txt`:
- The first line contains an integer representing the number of registers allowed;
- The second line is the name of the algorithm to be invoked: "Heuristic", "ILP", or "Treewidth";
- The third line is the mode of experiment, either "normal" or "merged", where "normal" means running the algorithm on each program insider the benchmark, and "merged" means passing in all the graphs inside a benchmark as a whole.
```
cd algos
g++ Experiment.cpp -o Experiment
./Experiment
```

## Results
The results are presented under the `results/` folder.  
`CollectResults.cpp` gathers the result from raw output. The details on how many registers are used and what benchmarks are displayed are specified inside `config.txt`.  
All experiment results are presented inside `results.xls`.