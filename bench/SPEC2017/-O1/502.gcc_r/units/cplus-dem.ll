; ModuleID = 'cplus-dem.c'
source_filename = "cplus-dem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.demangler_engine = type { ptr, i32, ptr }
%struct.optable = type { ptr, ptr, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.string = type { ptr, ptr, ptr }
%struct.work_stuff = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@current_demangling_style = dso_local local_unnamed_addr global i32 256, align 4
@cplus_markers = internal global [4 x i8] c"$.$\00", align 1
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Demangling disabled\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Automatic selection based on executable\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"gnu\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"GNU (g++) style demangling\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"lucid\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Lucid (lcc) style demangling\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"ARM style demangling\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"hp\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"HP (aCC) style demangling\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"edg\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"EDG style demangling\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"gnu-v3\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"GNU (g++) V3 ABI-style demangling\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"java\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Java style demangling\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"gnat\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"GNAT style demangling\00", align 1
@libiberty_demanglers = dso_local local_unnamed_addr constant [11 x %struct.demangler_engine] [%struct.demangler_engine { ptr @.str, i32 -1, ptr @.str.1 }, %struct.demangler_engine { ptr @.str.2, i32 256, ptr @.str.3 }, %struct.demangler_engine { ptr @.str.4, i32 512, ptr @.str.5 }, %struct.demangler_engine { ptr @.str.6, i32 1024, ptr @.str.7 }, %struct.demangler_engine { ptr @.str.8, i32 2048, ptr @.str.9 }, %struct.demangler_engine { ptr @.str.10, i32 4096, ptr @.str.11 }, %struct.demangler_engine { ptr @.str.12, i32 8192, ptr @.str.13 }, %struct.demangler_engine { ptr @.str.14, i32 16384, ptr @.str.15 }, %struct.demangler_engine { ptr @.str.16, i32 4, ptr @.str.17 }, %struct.demangler_engine { ptr @.str.18, i32 32768, ptr @.str.19 }, %struct.demangler_engine zeroinitializer], align 16
@.str.20 = private unnamed_addr constant [10 x i8] c"operator \00", align 1
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@optable = internal unnamed_addr constant [79 x %struct.optable] [%struct.optable { ptr @.str.68, ptr @.str.69, i32 2 }, %struct.optable { ptr @.str.70, ptr @.str.71, i32 2 }, %struct.optable { ptr @.str.72, ptr @.str.69, i32 0 }, %struct.optable { ptr @.str.73, ptr @.str.71, i32 0 }, %struct.optable { ptr @.str.74, ptr @.str.75, i32 2 }, %struct.optable { ptr @.str.76, ptr @.str.77, i32 2 }, %struct.optable { ptr @.str.78, ptr @.str.23, i32 2 }, %struct.optable { ptr @.str.79, ptr @.str.80, i32 2 }, %struct.optable { ptr @.str.81, ptr @.str.82, i32 2 }, %struct.optable { ptr @.str.83, ptr @.str.50, i32 2 }, %struct.optable { ptr @.str.84, ptr @.str.48, i32 2 }, %struct.optable { ptr @.str.85, ptr @.str.46, i32 2 }, %struct.optable { ptr @.str.86, ptr @.str.44, i32 2 }, %struct.optable { ptr @.str.87, ptr @.str.52, i32 0 }, %struct.optable { ptr @.str.88, ptr @.str.52, i32 2 }, %struct.optable { ptr @.str.89, ptr @.str.90, i32 2 }, %struct.optable { ptr @.str.91, ptr @.str.54, i32 0 }, %struct.optable { ptr @.str.92, ptr @.str.54, i32 2 }, %struct.optable { ptr @.str.93, ptr @.str.94, i32 2 }, %struct.optable { ptr @.str.95, ptr @.str.58, i32 0 }, %struct.optable { ptr @.str.96, ptr @.str.58, i32 2 }, %struct.optable { ptr @.str.97, ptr @.str.98, i32 2 }, %struct.optable { ptr @.str.99, ptr @.str.98, i32 2 }, %struct.optable { ptr @.str.100, ptr @.str.52, i32 0 }, %struct.optable { ptr @.str.101, ptr @.str.54, i32 0 }, %struct.optable { ptr @.str.102, ptr @.str.103, i32 0 }, %struct.optable { ptr @.str.104, ptr @.str.103, i32 2 }, %struct.optable { ptr @.str.105, ptr @.str.106, i32 2 }, %struct.optable { ptr @.str.107, ptr @.str.60, i32 0 }, %struct.optable { ptr @.str.108, ptr @.str.60, i32 2 }, %struct.optable { ptr @.str.109, ptr @.str.42, i32 2 }, %struct.optable { ptr @.str.110, ptr @.str.111, i32 0 }, %struct.optable { ptr @.str.112, ptr @.str.111, i32 2 }, %struct.optable { ptr @.str.113, ptr @.str.114, i32 0 }, %struct.optable { ptr @.str.115, ptr @.str.114, i32 2 }, %struct.optable { ptr @.str.116, ptr @.str.117, i32 0 }, %struct.optable { ptr @.str.118, ptr @.str.117, i32 2 }, %struct.optable { ptr @.str.119, ptr @.str.120, i32 0 }, %struct.optable { ptr @.str.121, ptr @.str.120, i32 2 }, %struct.optable { ptr @.str.122, ptr @.str.123, i32 0 }, %struct.optable { ptr @.str.124, ptr @.str.123, i32 2 }, %struct.optable { ptr @.str.125, ptr @.str.126, i32 0 }, %struct.optable { ptr @.str.35, ptr @.str.126, i32 2 }, %struct.optable { ptr @.str.127, ptr @.str.128, i32 2 }, %struct.optable { ptr @.str.129, ptr @.str.130, i32 0 }, %struct.optable { ptr @.str.131, ptr @.str.130, i32 2 }, %struct.optable { ptr @.str.132, ptr @.str.133, i32 2 }, %struct.optable { ptr @.str.134, ptr @.str.56, i32 0 }, %struct.optable { ptr @.str.135, ptr @.str.56, i32 2 }, %struct.optable { ptr @.str.136, ptr @.str.137, i32 2 }, %struct.optable { ptr @.str.138, ptr @.str.139, i32 0 }, %struct.optable { ptr @.str.140, ptr @.str.139, i32 2 }, %struct.optable { ptr @.str.141, ptr @.str.142, i32 0 }, %struct.optable { ptr @.str.143, ptr @.str.142, i32 2 }, %struct.optable { ptr @.str.144, ptr @.str.145, i32 0 }, %struct.optable { ptr @.str.146, ptr @.str.145, i32 2 }, %struct.optable { ptr @.str.147, ptr @.str.148, i32 2 }, %struct.optable { ptr @.str.149, ptr @.str.150, i32 0 }, %struct.optable { ptr @.str.151, ptr @.str.150, i32 2 }, %struct.optable { ptr @.str.152, ptr @.str.153, i32 2 }, %struct.optable { ptr @.str.154, ptr @.str.155, i32 0 }, %struct.optable { ptr @.str.156, ptr @.str.155, i32 2 }, %struct.optable { ptr @.str.157, ptr @.str.155, i32 2 }, %struct.optable { ptr @.str.158, ptr @.str.58, i32 0 }, %struct.optable { ptr @.str.159, ptr @.str.160, i32 0 }, %struct.optable { ptr @.str.161, ptr @.str.56, i32 0 }, %struct.optable { ptr @.str.162, ptr @.str.163, i32 0 }, %struct.optable { ptr @.str.164, ptr @.str.163, i32 2 }, %struct.optable { ptr @.str.165, ptr @.str.166, i32 0 }, %struct.optable { ptr @.str.167, ptr @.str.166, i32 2 }, %struct.optable { ptr @.str.168, ptr @.str.169, i32 0 }, %struct.optable { ptr @.str.170, ptr @.str.169, i32 2 }, %struct.optable { ptr @.str.171, ptr @.str.172, i32 0 }, %struct.optable { ptr @.str.173, ptr @.str.172, i32 2 }, %struct.optable { ptr @.str.174, ptr @.str.175, i32 0 }, %struct.optable { ptr @.str.176, ptr @.str.175, i32 2 }, %struct.optable { ptr @.str.177, ptr @.str.178, i32 0 }, %struct.optable { ptr @.str.179, ptr @.str.180, i32 2 }, %struct.optable { ptr @.str.181, ptr @.str.182, i32 2 }], align 16
@.str.21 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"assign_\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"_ada_\00", align 1
@ada_demangle.operators = internal unnamed_addr constant [20 x [2 x ptr]] [[2 x ptr] [ptr @.str.26, ptr @.str.27], [2 x ptr] [ptr @.str.28, ptr @.str.29], [2 x ptr] [ptr @.str.30, ptr @.str.31], [2 x ptr] [ptr @.str.32, ptr @.str.33], [2 x ptr] [ptr @.str.34, ptr @.str.35], [2 x ptr] [ptr @.str.36, ptr @.str.37], [2 x ptr] [ptr @.str.38, ptr @.str.39], [2 x ptr] [ptr @.str.40, ptr @.str.23], [2 x ptr] [ptr @.str.41, ptr @.str.42], [2 x ptr] [ptr @.str.43, ptr @.str.44], [2 x ptr] [ptr @.str.45, ptr @.str.46], [2 x ptr] [ptr @.str.47, ptr @.str.48], [2 x ptr] [ptr @.str.49, ptr @.str.50], [2 x ptr] [ptr @.str.51, ptr @.str.52], [2 x ptr] [ptr @.str.53, ptr @.str.54], [2 x ptr] [ptr @.str.55, ptr @.str.56], [2 x ptr] [ptr @.str.57, ptr @.str.58], [2 x ptr] [ptr @.str.59, ptr @.str.60], [2 x ptr] [ptr @.str.61, ptr @.str.62], [2 x ptr] zeroinitializer], align 16
@.str.26 = private unnamed_addr constant [5 x i8] c"Oabs\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"Oand\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"Omod\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"Onot\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"Oor\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"Orem\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"rem\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"Oxor\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"Oeq\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"One\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"/=\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"Olt\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"Ole\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"Ogt\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"Oge\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"Oadd\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"Osubtract\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"Oconcat\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"Omultiply\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"Odivide\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"Oexpon\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"**\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"elabb\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"'Elab_Body\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"elabs\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"'Elab_Spec\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"<%s>\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"nw\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c" new\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"dl\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c" delete\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"vn\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c" new []\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"vd\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c" delete []\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"as\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"plus\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"pl\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"apl\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"minus\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"mi\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"ami\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"mult\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"ml\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"amu\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"aml\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"convert\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"negate\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"trunc_mod\00", align 1
@.str.103 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"md\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"amd\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"%=\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"trunc_div\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"dv\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"adv\00", align 1
@.str.110 = private unnamed_addr constant [12 x i8] c"truth_andif\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"aa\00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"truth_orif\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"oo\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"truth_not\00", align 1
@.str.117 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"nt\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"postincrement\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c"pp\00", align 1
@.str.122 = private unnamed_addr constant [14 x i8] c"postdecrement\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"mm\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"bit_ior\00", align 1
@.str.126 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"aor\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"|=\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"bit_xor\00", align 1
@.str.130 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.131 = private unnamed_addr constant [3 x i8] c"er\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"aer\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"^=\00", align 1
@.str.134 = private unnamed_addr constant [8 x i8] c"bit_and\00", align 1
@.str.135 = private unnamed_addr constant [3 x i8] c"ad\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c"aad\00", align 1
@.str.137 = private unnamed_addr constant [3 x i8] c"&=\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"bit_not\00", align 1
@.str.139 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"co\00", align 1
@.str.141 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.142 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.143 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"alshift\00", align 1
@.str.145 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.147 = private unnamed_addr constant [4 x i8] c"als\00", align 1
@.str.148 = private unnamed_addr constant [4 x i8] c"<<=\00", align 1
@.str.149 = private unnamed_addr constant [8 x i8] c"arshift\00", align 1
@.str.150 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.151 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@.str.152 = private unnamed_addr constant [4 x i8] c"ars\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c">>=\00", align 1
@.str.154 = private unnamed_addr constant [10 x i8] c"component\00", align 1
@.str.155 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.156 = private unnamed_addr constant [3 x i8] c"pt\00", align 1
@.str.157 = private unnamed_addr constant [3 x i8] c"rf\00", align 1
@.str.158 = private unnamed_addr constant [9 x i8] c"indirect\00", align 1
@.str.159 = private unnamed_addr constant [12 x i8] c"method_call\00", align 1
@.str.160 = private unnamed_addr constant [5 x i8] c"->()\00", align 1
@.str.161 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.162 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.163 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.164 = private unnamed_addr constant [3 x i8] c"vc\00", align 1
@.str.165 = private unnamed_addr constant [9 x i8] c"compound\00", align 1
@.str.166 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.167 = private unnamed_addr constant [3 x i8] c"cm\00", align 1
@.str.168 = private unnamed_addr constant [5 x i8] c"cond\00", align 1
@.str.169 = private unnamed_addr constant [3 x i8] c"?:\00", align 1
@.str.170 = private unnamed_addr constant [3 x i8] c"cn\00", align 1
@.str.171 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.172 = private unnamed_addr constant [3 x i8] c">?\00", align 1
@.str.173 = private unnamed_addr constant [3 x i8] c"mx\00", align 1
@.str.174 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.175 = private unnamed_addr constant [3 x i8] c"<?\00", align 1
@.str.176 = private unnamed_addr constant [3 x i8] c"mn\00", align 1
@.str.177 = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@.str.178 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.179 = private unnamed_addr constant [3 x i8] c"rm\00", align 1
@.str.180 = private unnamed_addr constant [4 x i8] c"->*\00", align 1
@.str.181 = private unnamed_addr constant [3 x i8] c"sz\00", align 1
@.str.182 = private unnamed_addr constant [8 x i8] c"sizeof \00", align 1
@.str.183 = private unnamed_addr constant [30 x i8] c"global constructors keyed to \00", align 1
@.str.184 = private unnamed_addr constant [29 x i8] c"global destructors keyed to \00", align 1
@.str.185 = private unnamed_addr constant [17 x i8] c"import stub for \00", align 1
@.str.186 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.187 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.188 = private unnamed_addr constant [15 x i8] c" virtual table\00", align 1
@.str.189 = private unnamed_addr constant [13 x i8] c"0123456789Qt\00", align 1
@.str.190 = private unnamed_addr constant [9 x i8] c"_GLOBAL_\00", align 1
@.str.191 = private unnamed_addr constant [12 x i8] c"{anonymous}\00", align 1
@.str.192 = private unnamed_addr constant [9 x i8] c"__thunk_\00", align 1
@.str.193 = private unnamed_addr constant [39 x i8] c"virtual function thunk (delta:%d) for \00", align 1
@.str.194 = private unnamed_addr constant [4 x i8] c"__t\00", align 1
@.str.195 = private unnamed_addr constant [16 x i8] c" type_info node\00", align 1
@.str.196 = private unnamed_addr constant [20 x i8] c" type_info function\00", align 1
@.str.197 = private unnamed_addr constant [9 x i8] c"JArray1Z\00", align 1
@.str.198 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.199 = private unnamed_addr constant [4 x i8] c"T%d\00", align 1
@.str.200 = private unnamed_addr constant [11 x i8] c"template <\00", align 1
@.str.201 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.202 = private unnamed_addr constant [8 x i8] c"> class\00", align 1
@.str.204 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.207 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.208 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.209 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.211 = private unnamed_addr constant [7 x i8] c"_imp__\00", align 1
@.str.212 = private unnamed_addr constant [7 x i8] c"__imp_\00", align 1
@.str.213 = private unnamed_addr constant [8 x i8] c"__std__\00", align 1
@.str.214 = private unnamed_addr constant [8 x i8] c"__sti__\00", align 1
@.str.215 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.216 = private unnamed_addr constant [3 x i8] c"__\00", align 1
@.str.217 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.218 = private unnamed_addr constant [12 x i8] c"-2147483648\00", align 1
@char_str = internal global [2 x i8] zeroinitializer, align 1
@.str.219 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.220 = private unnamed_addr constant [7 x i8] c"__pt__\00", align 1
@.str.221 = private unnamed_addr constant [7 x i8] c"__tm__\00", align 1
@.str.222 = private unnamed_addr constant [7 x i8] c"__ps__\00", align 1
@.str.223 = private unnamed_addr constant [4 x i8] c"__S\00", align 1
@.str.224 = private unnamed_addr constant [9 x i8] c"__vtbl__\00", align 1
@.str.225 = private unnamed_addr constant [5 x i8] c"__ct\00", align 1
@.str.226 = private unnamed_addr constant [5 x i8] c"__dt\00", align 1
@.str.227 = private unnamed_addr constant [8 x i8] c" static\00", align 1
@.str.228 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.229 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.230 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.231 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@.str.232 = private unnamed_addr constant [11 x i8] c"__restrict\00", align 1
@.str.233 = private unnamed_addr constant [15 x i8] c"const volatile\00", align 1
@.str.234 = private unnamed_addr constant [17 x i8] c"const __restrict\00", align 1
@.str.235 = private unnamed_addr constant [20 x i8] c"volatile __restrict\00", align 1
@.str.236 = private unnamed_addr constant [26 x i8] c"const volatile __restrict\00", align 1
@.str.237 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.238 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.239 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.240 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.241 = private unnamed_addr constant [10 x i8] c"__complex\00", align 1
@.str.242 = private unnamed_addr constant [10 x i8] c"long long\00", align 1
@.str.243 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.244 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.245 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.246 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.247 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.248 = private unnamed_addr constant [8 x i8] c"wchar_t\00", align 1
@.str.249 = private unnamed_addr constant [12 x i8] c"long double\00", align 1
@.str.250 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.251 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.252 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.253 = private unnamed_addr constant [8 x i8] c"int%u_t\00", align 1
@reltable.do_type = private unnamed_addr constant [5 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.178 to i64), i64 ptrtoint (ptr @reltable.do_type to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.230 to i64), i64 ptrtoint (ptr @reltable.do_type to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.231 to i64), i64 ptrtoint (ptr @reltable.do_type to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.233 to i64), i64 ptrtoint (ptr @reltable.do_type to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.232 to i64), i64 ptrtoint (ptr @reltable.do_type to i64)) to i32)], align 4
@reltable.demangle_signature = private unnamed_addr constant [8 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.178 to i64), i64 ptrtoint (ptr @reltable.demangle_signature to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.230 to i64), i64 ptrtoint (ptr @reltable.demangle_signature to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.231 to i64), i64 ptrtoint (ptr @reltable.demangle_signature to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.233 to i64), i64 ptrtoint (ptr @reltable.demangle_signature to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.232 to i64), i64 ptrtoint (ptr @reltable.demangle_signature to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.234 to i64), i64 ptrtoint (ptr @reltable.demangle_signature to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.235 to i64), i64 ptrtoint (ptr @reltable.demangle_signature to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.236 to i64), i64 ptrtoint (ptr @reltable.demangle_signature to i64)) to i32)], align 4
@reltable.demangle_qualifier = private unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.230 to i64), i64 ptrtoint (ptr @reltable.demangle_qualifier to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.231 to i64), i64 ptrtoint (ptr @reltable.demangle_qualifier to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.233 to i64), i64 ptrtoint (ptr @reltable.demangle_qualifier to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.232 to i64), i64 ptrtoint (ptr @reltable.demangle_qualifier to i64)) to i32)], align 4

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #23
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !39
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #23
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !39
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #4 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !46

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #23
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !41
  %11 = load i8, ptr %3, align 1, !tbaa !47
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #4 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !46

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #23
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !41
  %11 = load i8, ptr %3, align 1, !tbaa !47
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #4 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !46

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #23
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !41
  %11 = load i8, ptr %3, align 1, !tbaa !47
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !46

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #23
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !48
  store i8 %12, ptr %4, align 1, !tbaa !47
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !46

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #23
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !48
  store i8 %12, ptr %4, align 1, !tbaa !47
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #4 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !46

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #23
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !48
  store i8 %12, ptr %4, align 1, !tbaa !47
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #23
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !50
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !50
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #4 !prof !34 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #23
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_cplus_marker_for_demangling(i32 noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = trunc i32 %0 to i8
  store i8 %2, ptr @cplus_markers, align 1, !tbaa !47
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @cplus_demangle_opname(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !34 {
  %4 = alloca %struct.string, align 8
  %5 = alloca [1 x %struct.work_stuff], align 16
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %8 = trunc i64 %7 to i32
  store i8 0, ptr %1, align 1, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %5, i8 0, i64 112, i1 false)
  store i32 %2, ptr %5, align 16, !tbaa !54
  %9 = load i8, ptr %0, align 1, !tbaa !47
  %10 = icmp eq i8 %9, 95
  br i1 %10, label %11, label %106

11:                                               ; preds = %3
  %12 = getelementptr inbounds i8, ptr %0, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !47
  %14 = icmp eq i8 %13, 95
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %0, i64 2
  %17 = load i8, ptr %16, align 1, !tbaa !47
  %18 = icmp eq i8 %17, 111
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, ptr %0, i64 3
  %21 = load i8, ptr %20, align 1, !tbaa !47
  %22 = icmp eq i8 %21, 112
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %0, i64 4
  store ptr %24, ptr %6, align 8, !tbaa !35
  %25 = call fastcc i32 @do_type(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %4), !range !56
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %201, label %27

27:                                               ; preds = %23
  %28 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %29 = getelementptr inbounds i8, ptr %1, i64 %28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %29, ptr noundef nonnull align 1 dereferenceable(10) @.str.20, i64 10, i1 false)
  %30 = load ptr, ptr %4, align 8, !tbaa !57
  %31 = getelementptr inbounds %struct.string, ptr %4, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !59
  %33 = ptrtoint ptr %32 to i64
  %34 = ptrtoint ptr %30 to i64
  %35 = sub i64 %33, %34
  %36 = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef %30, i64 noundef %35)
  %37 = icmp eq ptr %30, null
  br i1 %37, label %201, label %38

38:                                               ; preds = %27
  tail call void @free(ptr noundef %30)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %201

39:                                               ; preds = %19, %15, %11
  br i1 %10, label %40, label %106

40:                                               ; preds = %39
  %41 = getelementptr inbounds i8, ptr %0, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !47
  %43 = icmp eq i8 %42, 95
  br i1 %43, label %44, label %106

44:                                               ; preds = %40
  %45 = getelementptr inbounds i8, ptr %0, i64 2
  %46 = load i8, ptr %45, align 1, !tbaa !47
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !60
  %50 = and i16 %49, 8
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %106, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds i8, ptr %0, i64 3
  %54 = load i8, ptr %53, align 1, !tbaa !47
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %55
  %57 = load i16, ptr %56, align 2, !tbaa !60
  %58 = and i16 %57, 8
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %106, label %60

60:                                               ; preds = %52
  %61 = getelementptr inbounds i8, ptr %0, i64 4
  %62 = load i8, ptr %61, align 1, !tbaa !47
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %60, %79
  %65 = phi i64 [ %80, %79 ], [ 0, %60 ]
  %66 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !61
  %68 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %67)
  %69 = icmp eq i64 %68, 2
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %67, ptr noundef nonnull dereferenceable(2) %45, i64 2)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %75 = getelementptr inbounds i8, ptr %1, i64 %74
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %75, ptr noundef nonnull align 1 dereferenceable(9) @.str.21, i64 9, i1 false)
  %76 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %65, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !63
  %78 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %77)
  br label %201

79:                                               ; preds = %64, %70
  %80 = add nuw nsw i64 %65, 1
  %81 = icmp eq i64 %80, 79
  br i1 %81, label %201, label %64, !llvm.loop !64

82:                                               ; preds = %60
  %83 = icmp eq i8 %46, 97
  br i1 %83, label %84, label %201

84:                                               ; preds = %82
  %85 = getelementptr inbounds i8, ptr %0, i64 5
  %86 = load i8, ptr %85, align 1, !tbaa !47
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %201

88:                                               ; preds = %84, %103
  %89 = phi i64 [ %104, %103 ], [ 0, %84 ]
  %90 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !61
  %92 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %91)
  %93 = icmp eq i64 %92, 3
  br i1 %93, label %94, label %103

94:                                               ; preds = %88
  %95 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %91, ptr noundef nonnull dereferenceable(3) %45, i64 3)
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %99 = getelementptr inbounds i8, ptr %1, i64 %98
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %99, ptr noundef nonnull align 1 dereferenceable(9) @.str.21, i64 9, i1 false)
  %100 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %89, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !63
  %102 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %101)
  br label %201

103:                                              ; preds = %88, %94
  %104 = add nuw nsw i64 %89, 1
  %105 = icmp eq i64 %104, 79
  br i1 %105, label %201, label %88, !llvm.loop !65

106:                                              ; preds = %3, %52, %44, %40, %39
  %107 = icmp sgt i32 %8, 2
  %108 = icmp eq i8 %9, 111
  %109 = and i1 %107, %108
  br i1 %109, label %110, label %174

110:                                              ; preds = %106
  %111 = getelementptr inbounds i8, ptr %0, i64 1
  %112 = load i8, ptr %111, align 1, !tbaa !47
  %113 = icmp eq i8 %112, 112
  br i1 %113, label %114, label %174

114:                                              ; preds = %110
  %115 = getelementptr inbounds i8, ptr %0, i64 2
  %116 = load i8, ptr %115, align 1, !tbaa !47
  %117 = sext i8 %116 to i32
  %118 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @cplus_markers, i32 noundef %117)
  %119 = icmp eq ptr %118, null
  br i1 %119, label %174, label %120

120:                                              ; preds = %114
  %121 = icmp sgt i32 %8, 9
  br i1 %121, label %122, label %151

122:                                              ; preds = %120
  %123 = getelementptr inbounds i8, ptr %0, i64 3
  %124 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %123, ptr noundef nonnull dereferenceable(7) @.str.22, i64 7)
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %151

126:                                              ; preds = %122
  %127 = add nsw i32 %8, -10
  %128 = getelementptr inbounds i8, ptr %0, i64 10
  %129 = zext nneg i32 %127 to i64
  br label %130

130:                                              ; preds = %126, %148
  %131 = phi i64 [ 0, %126 ], [ %149, %148 ]
  %132 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !61
  %134 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %133)
  %135 = trunc i64 %134 to i32
  %136 = icmp eq i32 %127, %135
  br i1 %136, label %137, label %148

137:                                              ; preds = %130
  %138 = tail call i32 @bcmp(ptr %133, ptr nonnull %128, i64 %129)
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %142 = getelementptr inbounds i8, ptr %1, i64 %141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %142, ptr noundef nonnull align 1 dereferenceable(9) @.str.21, i64 9, i1 false)
  %143 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %131, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !63
  %145 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %144)
  %146 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %147 = getelementptr inbounds i8, ptr %1, i64 %146
  store i16 61, ptr %147, align 1
  br label %201

148:                                              ; preds = %130, %137
  %149 = add nuw nsw i64 %131, 1
  %150 = icmp eq i64 %149, 79
  br i1 %150, label %201, label %130, !llvm.loop !66

151:                                              ; preds = %122, %120
  %152 = add nsw i32 %8, -3
  %153 = getelementptr inbounds i8, ptr %0, i64 3
  %154 = zext nneg i32 %152 to i64
  br label %155

155:                                              ; preds = %151, %171
  %156 = phi i64 [ 0, %151 ], [ %172, %171 ]
  %157 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !61
  %159 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %158)
  %160 = trunc i64 %159 to i32
  %161 = icmp eq i32 %152, %160
  br i1 %161, label %162, label %171

162:                                              ; preds = %155
  %163 = tail call i32 @bcmp(ptr %158, ptr nonnull %153, i64 %154)
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %167 = getelementptr inbounds i8, ptr %1, i64 %166
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %167, ptr noundef nonnull align 1 dereferenceable(9) @.str.21, i64 9, i1 false)
  %168 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %156, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !63
  %170 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %169)
  br label %201

171:                                              ; preds = %155, %162
  %172 = add nuw nsw i64 %156, 1
  %173 = icmp eq i64 %172, 79
  br i1 %173, label %201, label %155, !llvm.loop !67

174:                                              ; preds = %114, %110, %106
  %175 = icmp sgt i32 %8, 4
  br i1 %175, label %176, label %201

176:                                              ; preds = %174
  %177 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %0, ptr noundef nonnull dereferenceable(4) @.str.24, i64 4)
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %201

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, ptr %0, i64 4
  %181 = load i8, ptr %180, align 1, !tbaa !47
  %182 = sext i8 %181 to i32
  %183 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @cplus_markers, i32 noundef %182)
  %184 = icmp eq ptr %183, null
  br i1 %184, label %201, label %185

185:                                              ; preds = %179
  %186 = getelementptr inbounds i8, ptr %0, i64 5
  store ptr %186, ptr %6, align 8, !tbaa !35
  %187 = call fastcc i32 @do_type(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %4), !range !56
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %201, label %189

189:                                              ; preds = %185
  %190 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %191 = getelementptr inbounds i8, ptr %1, i64 %190
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %191, ptr noundef nonnull align 1 dereferenceable(10) @.str.20, i64 10, i1 false)
  %192 = load ptr, ptr %4, align 8, !tbaa !57
  %193 = getelementptr inbounds %struct.string, ptr %4, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !59
  %195 = ptrtoint ptr %194 to i64
  %196 = ptrtoint ptr %192 to i64
  %197 = sub i64 %195, %196
  %198 = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef %192, i64 noundef %197)
  %199 = icmp eq ptr %192, null
  br i1 %199, label %201, label %200

200:                                              ; preds = %189
  tail call void @free(ptr noundef %192)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %201

201:                                              ; preds = %103, %79, %171, %148, %200, %189, %38, %27, %165, %140, %97, %73, %82, %84, %174, %176, %179, %185, %23
  %202 = phi i32 [ 0, %23 ], [ 0, %84 ], [ 0, %82 ], [ 0, %185 ], [ 0, %179 ], [ 0, %176 ], [ 0, %174 ], [ 1, %73 ], [ 1, %97 ], [ 1, %140 ], [ 1, %165 ], [ 1, %27 ], [ 1, %38 ], [ 1, %189 ], [ 1, %200 ], [ 0, %148 ], [ 0, %171 ], [ 0, %79 ], [ 0, %103 ]
  call fastcc void @squangle_mop_up(ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  ret i32 %202
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @do_type(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #10 !prof !34 {
  %4 = alloca [37 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.string, align 8
  %7 = alloca %struct.string, align 8
  %8 = alloca [33 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.string, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %struct.string, align 8
  %13 = alloca %struct.string, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #23
  %14 = getelementptr inbounds %struct.string, ptr %10, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %15 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %16

16:                                               ; preds = %3, %274
  %17 = phi ptr [ %1, %3 ], [ %278, %274 ]
  %18 = phi i32 [ 0, %3 ], [ %277, %274 ]
  %19 = phi i32 [ 1, %3 ], [ %276, %274 ]
  %20 = phi i32 [ 0, %3 ], [ %275, %274 ]
  %21 = load ptr, ptr %17, align 8, !tbaa !35
  %22 = load i8, ptr %21, align 1, !tbaa !47
  switch i8 %22, label %274 [
    i8 80, label %23
    i8 112, label %23
    i8 82, label %31
    i8 65, label %35
    i8 84, label %57
    i8 70, label %72
    i8 77, label %89
    i8 79, label %89
    i8 71, label %254
    i8 67, label %256
    i8 86, label %256
    i8 117, label %256
  ]

23:                                               ; preds = %16, %16
  %24 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %24, ptr %17, align 8, !tbaa !35
  %25 = load i32, ptr %0, align 8, !tbaa !54
  %26 = and i32 %25, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  call fastcc void @string_prepend(ptr noundef nonnull %10, ptr noundef nonnull @.str.58)
  br label %29

29:                                               ; preds = %28, %23
  %30 = tail call i32 @llvm.umax.i32(i32 %18, i32 1)
  br label %274

31:                                               ; preds = %16
  %32 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %32, ptr %17, align 8, !tbaa !35
  call fastcc void @string_prepend(ptr noundef nonnull %10, ptr noundef nonnull @.str.56)
  %33 = icmp eq i32 %18, 0
  %34 = select i1 %33, i32 2, i32 %18
  br label %274

35:                                               ; preds = %16
  %36 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %36, ptr %17, align 8, !tbaa !35
  %37 = load ptr, ptr %10, align 8, !tbaa !57
  %38 = load ptr, ptr %14, align 8, !tbaa !59
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i8, ptr %37, align 1, !tbaa !47
  switch i8 %41, label %43 [
    i8 42, label %42
    i8 38, label %42
  ]

42:                                               ; preds = %40, %40
  call fastcc void @string_prepend(ptr noundef nonnull %10, ptr noundef nonnull @.str.208)
  call fastcc void @string_append(ptr noundef nonnull %10, ptr noundef nonnull @.str.209)
  br label %43

43:                                               ; preds = %40, %42, %35
  call fastcc void @string_append(ptr noundef nonnull %10, ptr noundef nonnull @.str.237)
  %44 = load ptr, ptr %17, align 8, !tbaa !35
  %45 = load i8, ptr %44, align 1, !tbaa !47
  %46 = icmp eq i8 %45, 95
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = call fastcc i32 @demangle_template_value_parm(ptr noundef %0, ptr noundef nonnull %17, ptr noundef nonnull %10, i32 noundef 3)
  br label %49

49:                                               ; preds = %47, %43
  %50 = phi i32 [ %48, %47 ], [ %19, %43 ]
  %51 = load ptr, ptr %17, align 8, !tbaa !35
  %52 = load i8, ptr %51, align 1, !tbaa !47
  %53 = icmp eq i8 %52, 95
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = getelementptr inbounds i8, ptr %51, i64 1
  store ptr %55, ptr %17, align 8, !tbaa !35
  br label %56

56:                                               ; preds = %54, %49
  call fastcc void @string_append(ptr noundef nonnull %10, ptr noundef nonnull @.str.238)
  br label %274

57:                                               ; preds = %16
  %58 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %58, ptr %17, align 8, !tbaa !35
  %59 = call fastcc i32 @get_count(ptr noundef nonnull %17, ptr noundef nonnull %9), !range !68
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %274, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 8
  %63 = load i32, ptr %9, align 4, !tbaa !39
  %64 = load i32, ptr %62, align 8, !tbaa !69
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %274

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !70
  %69 = sext i32 %63 to i64
  %70 = getelementptr inbounds ptr, ptr %68, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !35
  store ptr %71, ptr %11, align 8, !tbaa !35
  br label %274

72:                                               ; preds = %16
  %73 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %73, ptr %17, align 8, !tbaa !35
  %74 = load ptr, ptr %10, align 8, !tbaa !57
  %75 = load ptr, ptr %14, align 8, !tbaa !59
  %76 = icmp eq ptr %74, %75
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load i8, ptr %74, align 1, !tbaa !47
  switch i8 %78, label %80 [
    i8 42, label %79
    i8 38, label %79
  ]

79:                                               ; preds = %77, %77
  call fastcc void @string_prepend(ptr noundef nonnull %10, ptr noundef nonnull @.str.208)
  call fastcc void @string_append(ptr noundef nonnull %10, ptr noundef nonnull @.str.209)
  br label %80

80:                                               ; preds = %77, %79, %72
  %81 = call fastcc i32 @demangle_nested_args(ptr noundef %0, ptr noundef nonnull %17, ptr noundef nonnull %10), !range !68
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %274, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr %17, align 8, !tbaa !35
  %85 = load i8, ptr %84, align 1, !tbaa !47
  switch i8 %85, label %274 [
    i8 95, label %87
    i8 0, label %86
  ]

86:                                               ; preds = %83
  br label %274

87:                                               ; preds = %83
  %88 = getelementptr inbounds i8, ptr %84, i64 1
  store ptr %88, ptr %17, align 8, !tbaa !35
  br label %274

89:                                               ; preds = %16, %16
  %90 = icmp eq i8 %22, 77
  %91 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %91, ptr %17, align 8, !tbaa !35
  call fastcc void @string_append(ptr noundef nonnull %10, ptr noundef nonnull @.str.209)
  %92 = load ptr, ptr %17, align 8, !tbaa !35
  %93 = load i8, ptr %92, align 1, !tbaa !47
  %94 = icmp eq i8 %93, 81
  br i1 %94, label %100, label %95

95:                                               ; preds = %89
  %96 = load i32, ptr %0, align 8, !tbaa !54
  %97 = and i32 %96, 4
  %98 = icmp eq i32 %97, 0
  %99 = select i1 %98, ptr @.str.187, ptr @.str.186
  call fastcc void @string_prepend(ptr noundef nonnull %10, ptr noundef nonnull %99)
  br label %100

100:                                              ; preds = %95, %89
  %101 = load ptr, ptr %17, align 8, !tbaa !35
  %102 = load i8, ptr %101, align 1, !tbaa !47
  %103 = zext i8 %102 to i64
  %104 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %103
  %105 = load i16, ptr %104, align 2, !tbaa !60
  %106 = and i16 %105, 4
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %165, label %108

108:                                              ; preds = %100
  %109 = load ptr, ptr %17, align 8, !tbaa !35
  %110 = load i8, ptr %109, align 1, !tbaa !47
  %111 = zext i8 %110 to i64
  %112 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %111
  %113 = load i16, ptr %112, align 2, !tbaa !60
  %114 = and i16 %113, 4
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %131, label %116

116:                                              ; preds = %108, %116
  %117 = phi i8 [ %125, %116 ], [ %110, %108 ]
  %118 = phi i32 [ %123, %116 ], [ 0, %108 ]
  %119 = phi ptr [ %124, %116 ], [ %109, %108 ]
  %120 = mul nsw i32 %118, 10
  %121 = sext i8 %117 to i32
  %122 = add i32 %120, -48
  %123 = add i32 %122, %121
  %124 = getelementptr inbounds i8, ptr %119, i64 1
  store ptr %124, ptr %17, align 8, !tbaa !35
  %125 = load i8, ptr %124, align 1, !tbaa !47
  %126 = zext i8 %125 to i64
  %127 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %126
  %128 = load i16, ptr %127, align 2, !tbaa !60
  %129 = and i16 %128, 4
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %131, label %116, !llvm.loop !71

131:                                              ; preds = %116, %108
  %132 = phi i32 [ 0, %108 ], [ %123, %116 ]
  %133 = phi ptr [ %109, %108 ], [ %124, %116 ]
  %134 = tail call i32 @llvm.smax.i32(i32 %132, i32 -1)
  store i32 %134, ptr %9, align 4, !tbaa !39
  %135 = icmp slt i32 %132, 0
  br i1 %135, label %274, label %136

136:                                              ; preds = %131
  %137 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %133)
  %138 = trunc i64 %137 to i32
  %139 = icmp sgt i32 %134, %138
  br i1 %139, label %274, label %140

140:                                              ; preds = %136
  %141 = icmp eq i32 %132, 0
  br i1 %141, label %161, label %142

142:                                              ; preds = %140
  call fastcc void @string_need(ptr noundef nonnull %10, i32 noundef %134)
  %143 = load ptr, ptr %14, align 8, !tbaa !59
  %144 = getelementptr inbounds i8, ptr %143, i64 -1
  %145 = load ptr, ptr %10, align 8, !tbaa !57
  %146 = icmp ult ptr %144, %145
  br i1 %146, label %156, label %147

147:                                              ; preds = %142
  %148 = zext nneg i32 %134 to i64
  %149 = load ptr, ptr %10, align 8, !tbaa !57
  br label %150

150:                                              ; preds = %147, %150
  %151 = phi ptr [ %144, %147 ], [ %154, %150 ]
  %152 = load i8, ptr %151, align 1, !tbaa !47
  %153 = getelementptr inbounds i8, ptr %151, i64 %148
  store i8 %152, ptr %153, align 1, !tbaa !47
  %154 = getelementptr inbounds i8, ptr %151, i64 -1
  %155 = icmp ult ptr %154, %149
  br i1 %155, label %156, label %150, !llvm.loop !72

156:                                              ; preds = %150, %142
  %157 = phi ptr [ %145, %142 ], [ %149, %150 ]
  %158 = zext nneg i32 %134 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %157, ptr nonnull align 1 %133, i64 %158, i1 false)
  %159 = load ptr, ptr %14, align 8, !tbaa !59
  %160 = getelementptr inbounds i8, ptr %159, i64 %158
  store ptr %160, ptr %14, align 8, !tbaa !59
  br label %161

161:                                              ; preds = %140, %156
  %162 = load ptr, ptr %17, align 8, !tbaa !35
  %163 = zext nneg i32 %134 to i64
  %164 = getelementptr inbounds i8, ptr %162, i64 %163
  store ptr %164, ptr %17, align 8, !tbaa !35
  br label %213

165:                                              ; preds = %100
  switch i8 %102, label %274 [
    i8 88, label %166
    i8 89, label %166
    i8 116, label %172
    i8 81, label %210
  ]

166:                                              ; preds = %165, %165
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #23
  %167 = call fastcc i32 @do_type(ptr noundef %0, ptr noundef nonnull %17, ptr noundef nonnull %12), !range !56
  call fastcc void @string_prepends(ptr noundef nonnull %10, ptr noundef nonnull %12)
  %168 = load ptr, ptr %12, align 8, !tbaa !57
  %169 = icmp eq ptr %168, null
  br i1 %169, label %171, label %170

170:                                              ; preds = %166
  tail call void @free(ptr noundef %168)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  br label %171

171:                                              ; preds = %166, %170
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #23
  br label %213

172:                                              ; preds = %165
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %173 = call fastcc i32 @demangle_template(ptr noundef %0, ptr noundef nonnull %17, ptr noundef nonnull %13, ptr noundef null, i32 noundef 1, i32 noundef 1)
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %273, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.string, ptr %13, i64 0, i32 1
  %177 = load ptr, ptr %13, align 8, !tbaa !57
  %178 = load ptr, ptr %176, align 8, !tbaa !59
  %179 = ptrtoint ptr %178 to i64
  %180 = ptrtoint ptr %177 to i64
  %181 = sub i64 %179, %180
  %182 = trunc i64 %181 to i32
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %205, label %184

184:                                              ; preds = %175
  call fastcc void @string_need(ptr noundef nonnull %10, i32 noundef %182)
  %185 = load ptr, ptr %14, align 8, !tbaa !59
  %186 = getelementptr inbounds i8, ptr %185, i64 -1
  %187 = load ptr, ptr %10, align 8, !tbaa !57
  %188 = icmp ult ptr %186, %187
  br i1 %188, label %199, label %189

189:                                              ; preds = %184
  %190 = shl i64 %181, 32
  %191 = ashr exact i64 %190, 32
  %192 = load ptr, ptr %10, align 8, !tbaa !57
  br label %193

193:                                              ; preds = %189, %193
  %194 = phi ptr [ %186, %189 ], [ %197, %193 ]
  %195 = load i8, ptr %194, align 1, !tbaa !47
  %196 = getelementptr inbounds i8, ptr %194, i64 %191
  store i8 %195, ptr %196, align 1, !tbaa !47
  %197 = getelementptr inbounds i8, ptr %194, i64 -1
  %198 = icmp ult ptr %197, %192
  br i1 %198, label %199, label %193, !llvm.loop !72

199:                                              ; preds = %193, %184
  %200 = phi ptr [ %187, %184 ], [ %192, %193 ]
  %201 = shl i64 %181, 32
  %202 = ashr exact i64 %201, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %200, ptr align 1 %177, i64 %202, i1 false)
  %203 = load ptr, ptr %14, align 8, !tbaa !59
  %204 = getelementptr inbounds i8, ptr %203, i64 %202
  store ptr %204, ptr %14, align 8, !tbaa !59
  br label %205

205:                                              ; preds = %175, %199
  %206 = load ptr, ptr %13, align 8, !tbaa !57
  %207 = icmp eq ptr %206, null
  br i1 %207, label %209, label %208

208:                                              ; preds = %205
  tail call void @free(ptr noundef %206)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  br label %209

209:                                              ; preds = %208, %205
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #23
  br label %213

210:                                              ; preds = %165
  %211 = call fastcc i32 @demangle_qualified(ptr noundef %0, ptr noundef nonnull %17, ptr noundef nonnull %10, i32 noundef 0, i32 noundef 0)
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %274, label %213

213:                                              ; preds = %209, %171, %210, %161
  %214 = phi i32 [ %19, %161 ], [ %19, %171 ], [ %173, %209 ], [ %211, %210 ]
  call fastcc void @string_prepend(ptr noundef nonnull %10, ptr noundef nonnull @.str.208)
  br i1 %90, label %215, label %229

215:                                              ; preds = %213
  %216 = load ptr, ptr %17, align 8, !tbaa !35
  %217 = load i8, ptr %216, align 1, !tbaa !47
  switch i8 %217, label %223 [
    i8 67, label %220
    i8 86, label %218
    i8 117, label %219
  ]

218:                                              ; preds = %215
  br label %220

219:                                              ; preds = %215
  br label %220

220:                                              ; preds = %215, %218, %219
  %221 = phi i32 [ 4, %219 ], [ 2, %218 ], [ 1, %215 ]
  %222 = getelementptr inbounds i8, ptr %216, i64 1
  store ptr %222, ptr %17, align 8, !tbaa !35
  br label %223

223:                                              ; preds = %215, %220
  %224 = phi i32 [ 0, %215 ], [ %221, %220 ]
  %225 = load ptr, ptr %17, align 8, !tbaa !35
  %226 = getelementptr inbounds i8, ptr %225, i64 1
  store ptr %226, ptr %17, align 8, !tbaa !35
  %227 = load i8, ptr %225, align 1, !tbaa !47
  %228 = icmp eq i8 %227, 70
  br i1 %228, label %229, label %274

229:                                              ; preds = %223, %213
  %230 = phi i32 [ %224, %223 ], [ 0, %213 ]
  br i1 %90, label %231, label %234

231:                                              ; preds = %229
  %232 = call fastcc i32 @demangle_nested_args(ptr noundef %0, ptr noundef nonnull %17, ptr noundef nonnull %10), !range !68
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %274, label %234

234:                                              ; preds = %231, %229
  %235 = load ptr, ptr %17, align 8, !tbaa !35
  %236 = load i8, ptr %235, align 1, !tbaa !47
  %237 = icmp eq i8 %236, 95
  br i1 %237, label %238, label %274

238:                                              ; preds = %234
  %239 = getelementptr inbounds i8, ptr %235, i64 1
  store ptr %239, ptr %17, align 8, !tbaa !35
  %240 = load i32, ptr %0, align 8, !tbaa !54
  %241 = and i32 %240, 2
  %242 = icmp ne i32 %241, 0
  %243 = icmp ne i32 %230, 0
  %244 = and i1 %243, %242
  br i1 %244, label %245, label %274

245:                                              ; preds = %238
  %246 = load ptr, ptr %10, align 8, !tbaa !57
  %247 = load ptr, ptr %14, align 8, !tbaa !59
  %248 = icmp eq ptr %246, %247
  br i1 %248, label %250, label %249

249:                                              ; preds = %245
  call fastcc void @string_append(ptr noundef nonnull %10, ptr noundef nonnull @.str.198)
  br label %250

250:                                              ; preds = %245, %249
  %251 = sext i32 %230 to i64
  %252 = shl i64 %251, 2
  %253 = call ptr @llvm.load.relative.i64(ptr @reltable.do_type, i64 %252)
  call fastcc void @string_append(ptr noundef nonnull %10, ptr noundef nonnull %253)
  br label %274

254:                                              ; preds = %16
  %255 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %255, ptr %17, align 8, !tbaa !35
  br label %274

256:                                              ; preds = %16, %16, %16
  %257 = load i32, ptr %0, align 8, !tbaa !54
  %258 = and i32 %257, 2
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %270, label %260

260:                                              ; preds = %256
  %261 = load ptr, ptr %10, align 8, !tbaa !57
  %262 = load ptr, ptr %14, align 8, !tbaa !59
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  call fastcc void @string_prepend(ptr noundef nonnull %10, ptr noundef nonnull @.str.198)
  br label %265

265:                                              ; preds = %264, %260
  %266 = load ptr, ptr %17, align 8, !tbaa !35
  %267 = load i8, ptr %266, align 1, !tbaa !47
  %268 = sext i8 %267 to i32
  %269 = tail call fastcc ptr @demangle_qualifier(i32 noundef %268)
  call fastcc void @string_prepend(ptr noundef nonnull %10, ptr noundef nonnull %269)
  br label %270

270:                                              ; preds = %265, %256
  %271 = load ptr, ptr %17, align 8, !tbaa !35
  %272 = getelementptr inbounds i8, ptr %271, i64 1
  store ptr %272, ptr %17, align 8, !tbaa !35
  br label %274

273:                                              ; preds = %172
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #23
  br label %274

274:                                              ; preds = %231, %223, %210, %83, %86, %273, %16, %234, %165, %131, %136, %80, %57, %61, %250, %238, %87, %66, %270, %254, %56, %31, %29
  %275 = phi i32 [ %20, %270 ], [ %20, %254 ], [ %20, %250 ], [ %20, %238 ], [ %20, %87 ], [ %20, %86 ], [ %20, %66 ], [ %20, %56 ], [ %20, %31 ], [ %20, %29 ], [ %20, %61 ], [ %20, %57 ], [ %20, %83 ], [ %20, %80 ], [ %20, %136 ], [ %20, %131 ], [ %20, %165 ], [ %20, %234 ], [ 1, %16 ], [ %20, %273 ], [ %20, %210 ], [ %20, %223 ], [ %20, %231 ]
  %276 = phi i32 [ %19, %270 ], [ %19, %254 ], [ %214, %250 ], [ %214, %238 ], [ %19, %87 ], [ %19, %86 ], [ %19, %66 ], [ %50, %56 ], [ %19, %31 ], [ %19, %29 ], [ 0, %61 ], [ 0, %57 ], [ 0, %83 ], [ 0, %80 ], [ 0, %136 ], [ 0, %131 ], [ 0, %165 ], [ 0, %234 ], [ %19, %16 ], [ %173, %273 ], [ 0, %210 ], [ 0, %223 ], [ 0, %231 ]
  %277 = phi i32 [ %18, %270 ], [ %18, %254 ], [ %18, %250 ], [ %18, %238 ], [ %18, %87 ], [ %18, %86 ], [ %18, %66 ], [ %18, %56 ], [ %34, %31 ], [ %30, %29 ], [ %18, %61 ], [ %18, %57 ], [ %18, %83 ], [ %18, %80 ], [ %18, %136 ], [ %18, %131 ], [ %18, %165 ], [ %18, %234 ], [ %18, %16 ], [ %18, %273 ], [ %18, %210 ], [ %18, %223 ], [ %18, %231 ]
  %278 = phi ptr [ %17, %270 ], [ %17, %254 ], [ %17, %250 ], [ %17, %238 ], [ %17, %87 ], [ %17, %86 ], [ %11, %66 ], [ %17, %56 ], [ %17, %31 ], [ %17, %29 ], [ %17, %61 ], [ %17, %57 ], [ %17, %83 ], [ %17, %80 ], [ %17, %136 ], [ %17, %131 ], [ %17, %165 ], [ %17, %234 ], [ %17, %16 ], [ %17, %273 ], [ %17, %210 ], [ %17, %223 ], [ %17, %231 ]
  %279 = icmp ne i32 %276, 0
  %280 = icmp eq i32 %275, 0
  %281 = select i1 %279, i1 %280, i1 false
  br i1 %281, label %16, label %282, !llvm.loop !73

282:                                              ; preds = %274
  br i1 %279, label %283, label %585

283:                                              ; preds = %282
  %284 = load ptr, ptr %278, align 8, !tbaa !35
  %285 = load i8, ptr %284, align 1, !tbaa !47
  switch i8 %285, label %328 [
    i8 81, label %286
    i8 75, label %286
    i8 66, label %289
    i8 88, label %304
    i8 89, label %304
  ]

286:                                              ; preds = %283, %283
  %287 = call fastcc i32 @demangle_qualified(ptr noundef %0, ptr noundef nonnull %278, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  %288 = icmp eq i32 %287, 0
  br label %585

289:                                              ; preds = %283
  %290 = getelementptr inbounds i8, ptr %284, i64 1
  store ptr %290, ptr %278, align 8, !tbaa !35
  %291 = call fastcc i32 @get_count(ptr noundef nonnull %278, ptr noundef nonnull %9), !range !68
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %585, label %293

293:                                              ; preds = %289
  %294 = load i32, ptr %9, align 4, !tbaa !39
  %295 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 5
  %296 = load i32, ptr %295, align 4, !tbaa !74
  %297 = icmp slt i32 %294, %296
  br i1 %297, label %298, label %585

298:                                              ; preds = %293
  %299 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 3
  %300 = load ptr, ptr %299, align 8, !tbaa !75
  %301 = sext i32 %294 to i64
  %302 = getelementptr inbounds ptr, ptr %300, i64 %301
  %303 = load ptr, ptr %302, align 8, !tbaa !35
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef %303)
  br label %585

304:                                              ; preds = %283, %283
  %305 = getelementptr inbounds i8, ptr %284, i64 1
  store ptr %305, ptr %278, align 8, !tbaa !35
  %306 = call fastcc i32 @consume_count_with_underscores(ptr noundef nonnull %278)
  %307 = icmp eq i32 %306, -1
  br i1 %307, label %585, label %308

308:                                              ; preds = %304
  %309 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 16
  %310 = load ptr, ptr %309, align 8, !tbaa !76
  %311 = icmp eq ptr %310, null
  br i1 %311, label %316, label %312

312:                                              ; preds = %308
  %313 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 17
  %314 = load i32, ptr %313, align 8, !tbaa !77
  %315 = icmp slt i32 %306, %314
  br i1 %315, label %316, label %585

316:                                              ; preds = %312, %308
  %317 = call fastcc i32 @consume_count_with_underscores(ptr noundef nonnull %278)
  %318 = icmp eq i32 %317, -1
  br i1 %318, label %585, label %319

319:                                              ; preds = %316
  %320 = load ptr, ptr %309, align 8, !tbaa !76
  %321 = icmp eq ptr %320, null
  br i1 %321, label %326, label %322

322:                                              ; preds = %319
  %323 = sext i32 %306 to i64
  %324 = getelementptr inbounds ptr, ptr %320, i64 %323
  %325 = load ptr, ptr %324, align 8, !tbaa !35
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef %325)
  br label %585

326:                                              ; preds = %319
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %8) #23
  %327 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @.str.199, i32 noundef %306)
  call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull %8)
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %8) #23
  br label %585

328:                                              ; preds = %283
  call void @llvm.lifetime.start.p0(i64 37, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #23
  store i32 0, ptr %5, align 4, !tbaa !39
  br label %329

329:                                              ; preds = %328, %371
  %330 = phi i32 [ 0, %328 ], [ %372, %371 ]
  %331 = load ptr, ptr %278, align 8, !tbaa !35
  %332 = load i8, ptr %331, align 1, !tbaa !47
  switch i8 %332, label %371 [
    i8 67, label %333
    i8 86, label %333
    i8 117, label %333
    i8 85, label %350
    i8 83, label %357
    i8 74, label %364
  ]

333:                                              ; preds = %329, %329, %329
  %334 = load i32, ptr %0, align 8, !tbaa !54
  %335 = and i32 %334, 2
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %347, label %337

337:                                              ; preds = %333
  %338 = load ptr, ptr %2, align 8, !tbaa !57
  %339 = load ptr, ptr %15, align 8, !tbaa !59
  %340 = icmp eq ptr %338, %339
  br i1 %340, label %342, label %341

341:                                              ; preds = %337
  tail call fastcc void @string_prepend(ptr noundef nonnull %2, ptr noundef nonnull @.str.198)
  br label %342

342:                                              ; preds = %341, %337
  %343 = load ptr, ptr %278, align 8, !tbaa !35
  %344 = load i8, ptr %343, align 1, !tbaa !47
  %345 = sext i8 %344 to i32
  %346 = tail call fastcc ptr @demangle_qualifier(i32 noundef %345)
  tail call fastcc void @string_prepend(ptr noundef nonnull %2, ptr noundef nonnull %346)
  br label %347

347:                                              ; preds = %342, %333
  %348 = load ptr, ptr %278, align 8, !tbaa !35
  %349 = getelementptr inbounds i8, ptr %348, i64 1
  store ptr %349, ptr %278, align 8, !tbaa !35
  br label %371

350:                                              ; preds = %329
  %351 = getelementptr inbounds i8, ptr %331, i64 1
  store ptr %351, ptr %278, align 8, !tbaa !35
  %352 = load ptr, ptr %2, align 8, !tbaa !57
  %353 = load ptr, ptr %15, align 8, !tbaa !59
  %354 = icmp eq ptr %352, %353
  br i1 %354, label %356, label %355

355:                                              ; preds = %350
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198)
  br label %356

356:                                              ; preds = %355, %350
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.239)
  br label %371

357:                                              ; preds = %329
  %358 = getelementptr inbounds i8, ptr %331, i64 1
  store ptr %358, ptr %278, align 8, !tbaa !35
  %359 = load ptr, ptr %2, align 8, !tbaa !57
  %360 = load ptr, ptr %15, align 8, !tbaa !59
  %361 = icmp eq ptr %359, %360
  br i1 %361, label %363, label %362

362:                                              ; preds = %357
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198)
  br label %363

363:                                              ; preds = %362, %357
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.240)
  br label %371

364:                                              ; preds = %329
  %365 = getelementptr inbounds i8, ptr %331, i64 1
  store ptr %365, ptr %278, align 8, !tbaa !35
  %366 = load ptr, ptr %2, align 8, !tbaa !57
  %367 = load ptr, ptr %15, align 8, !tbaa !59
  %368 = icmp eq ptr %366, %367
  br i1 %368, label %370, label %369

369:                                              ; preds = %364
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198)
  br label %370

370:                                              ; preds = %369, %364
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.241)
  br label %371

371:                                              ; preds = %370, %363, %356, %347, %329
  %372 = phi i32 [ %330, %370 ], [ %330, %363 ], [ %330, %356 ], [ %330, %347 ], [ 1, %329 ]
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %329, label %374, !llvm.loop !78

374:                                              ; preds = %371
  %375 = load ptr, ptr %278, align 8, !tbaa !35
  %376 = load i8, ptr %375, align 1, !tbaa !47
  switch i8 %376, label %577 [
    i8 0, label %578
    i8 95, label %578
    i8 118, label %377
    i8 120, label %384
    i8 108, label %391
    i8 105, label %398
    i8 115, label %405
    i8 98, label %412
    i8 99, label %419
    i8 119, label %426
    i8 114, label %433
    i8 100, label %440
    i8 102, label %447
    i8 71, label %454
    i8 73, label %462
    i8 48, label %507
    i8 49, label %507
    i8 50, label %507
    i8 51, label %507
    i8 52, label %507
    i8 53, label %507
    i8 54, label %507
    i8 55, label %507
    i8 56, label %507
    i8 57, label %507
    i8 116, label %555
  ]

377:                                              ; preds = %374
  %378 = getelementptr inbounds i8, ptr %375, i64 1
  store ptr %378, ptr %278, align 8, !tbaa !35
  %379 = load ptr, ptr %2, align 8, !tbaa !57
  %380 = load ptr, ptr %15, align 8, !tbaa !59
  %381 = icmp eq ptr %379, %380
  br i1 %381, label %383, label %382

382:                                              ; preds = %377
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198)
  br label %383

383:                                              ; preds = %382, %377
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.228)
  br label %578

384:                                              ; preds = %374
  %385 = getelementptr inbounds i8, ptr %375, i64 1
  store ptr %385, ptr %278, align 8, !tbaa !35
  %386 = load ptr, ptr %2, align 8, !tbaa !57
  %387 = load ptr, ptr %15, align 8, !tbaa !59
  %388 = icmp eq ptr %386, %387
  br i1 %388, label %390, label %389

389:                                              ; preds = %384
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198)
  br label %390

390:                                              ; preds = %389, %384
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.242)
  br label %578

391:                                              ; preds = %374
  %392 = getelementptr inbounds i8, ptr %375, i64 1
  store ptr %392, ptr %278, align 8, !tbaa !35
  %393 = load ptr, ptr %2, align 8, !tbaa !57
  %394 = load ptr, ptr %15, align 8, !tbaa !59
  %395 = icmp eq ptr %393, %394
  br i1 %395, label %397, label %396

396:                                              ; preds = %391
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198)
  br label %397

397:                                              ; preds = %396, %391
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.243)
  br label %578

398:                                              ; preds = %374
  %399 = getelementptr inbounds i8, ptr %375, i64 1
  store ptr %399, ptr %278, align 8, !tbaa !35
  %400 = load ptr, ptr %2, align 8, !tbaa !57
  %401 = load ptr, ptr %15, align 8, !tbaa !59
  %402 = icmp eq ptr %400, %401
  br i1 %402, label %404, label %403

403:                                              ; preds = %398
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198)
  br label %404

404:                                              ; preds = %403, %398
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.244)
  br label %578

405:                                              ; preds = %374
  %406 = getelementptr inbounds i8, ptr %375, i64 1
  store ptr %406, ptr %278, align 8, !tbaa !35
  %407 = load ptr, ptr %2, align 8, !tbaa !57
  %408 = load ptr, ptr %15, align 8, !tbaa !59
  %409 = icmp eq ptr %407, %408
  br i1 %409, label %411, label %410

410:                                              ; preds = %405
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198)
  br label %411

411:                                              ; preds = %410, %405
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.245)
  br label %578

412:                                              ; preds = %374
  %413 = getelementptr inbounds i8, ptr %375, i64 1
  store ptr %413, ptr %278, align 8, !tbaa !35
  %414 = load ptr, ptr %2, align 8, !tbaa !57
  %415 = load ptr, ptr %15, align 8, !tbaa !59
  %416 = icmp eq ptr %414, %415
  br i1 %416, label %418, label %417

417:                                              ; preds = %412
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198)
  br label %418

418:                                              ; preds = %417, %412
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.246)
  br label %578

419:                                              ; preds = %374
  %420 = getelementptr inbounds i8, ptr %375, i64 1
  store ptr %420, ptr %278, align 8, !tbaa !35
  %421 = load ptr, ptr %2, align 8, !tbaa !57
  %422 = load ptr, ptr %15, align 8, !tbaa !59
  %423 = icmp eq ptr %421, %422
  br i1 %423, label %425, label %424

424:                                              ; preds = %419
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198)
  br label %425

425:                                              ; preds = %424, %419
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.247)
  br label %578

426:                                              ; preds = %374
  %427 = getelementptr inbounds i8, ptr %375, i64 1
  store ptr %427, ptr %278, align 8, !tbaa !35
  %428 = load ptr, ptr %2, align 8, !tbaa !57
  %429 = load ptr, ptr %15, align 8, !tbaa !59
  %430 = icmp eq ptr %428, %429
  br i1 %430, label %432, label %431

431:                                              ; preds = %426
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198)
  br label %432

432:                                              ; preds = %431, %426
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.248)
  br label %578

433:                                              ; preds = %374
  %434 = getelementptr inbounds i8, ptr %375, i64 1
  store ptr %434, ptr %278, align 8, !tbaa !35
  %435 = load ptr, ptr %2, align 8, !tbaa !57
  %436 = load ptr, ptr %15, align 8, !tbaa !59
  %437 = icmp eq ptr %435, %436
  br i1 %437, label %439, label %438

438:                                              ; preds = %433
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198)
  br label %439

439:                                              ; preds = %438, %433
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.249)
  br label %578

440:                                              ; preds = %374
  %441 = getelementptr inbounds i8, ptr %375, i64 1
  store ptr %441, ptr %278, align 8, !tbaa !35
  %442 = load ptr, ptr %2, align 8, !tbaa !57
  %443 = load ptr, ptr %15, align 8, !tbaa !59
  %444 = icmp eq ptr %442, %443
  br i1 %444, label %446, label %445

445:                                              ; preds = %440
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198)
  br label %446

446:                                              ; preds = %445, %440
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.250)
  br label %578

447:                                              ; preds = %374
  %448 = getelementptr inbounds i8, ptr %375, i64 1
  store ptr %448, ptr %278, align 8, !tbaa !35
  %449 = load ptr, ptr %2, align 8, !tbaa !57
  %450 = load ptr, ptr %15, align 8, !tbaa !59
  %451 = icmp eq ptr %449, %450
  br i1 %451, label %453, label %452

452:                                              ; preds = %447
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198)
  br label %453

453:                                              ; preds = %452, %447
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.251)
  br label %578

454:                                              ; preds = %374
  %455 = getelementptr inbounds i8, ptr %375, i64 1
  store ptr %455, ptr %278, align 8, !tbaa !35
  %456 = load i8, ptr %455, align 1, !tbaa !47
  %457 = zext i8 %456 to i64
  %458 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %457
  %459 = load i16, ptr %458, align 2, !tbaa !60
  %460 = and i16 %459, 4
  %461 = icmp eq i16 %460, 0
  br i1 %461, label %578, label %462

462:                                              ; preds = %454, %374
  %463 = load ptr, ptr %278, align 8, !tbaa !35
  %464 = getelementptr inbounds i8, ptr %463, i64 1
  store ptr %464, ptr %278, align 8, !tbaa !35
  %465 = load i8, ptr %464, align 1, !tbaa !47
  %466 = icmp eq i8 %465, 95
  br i1 %466, label %467, label %490

467:                                              ; preds = %462
  %468 = getelementptr inbounds i8, ptr %463, i64 2
  store ptr %468, ptr %278, align 8, !tbaa !35
  br label %469

469:                                              ; preds = %467, %473
  %470 = phi i64 [ 0, %467 ], [ %477, %473 ]
  %471 = load ptr, ptr %278, align 8, !tbaa !35
  %472 = load i8, ptr %471, align 1, !tbaa !47
  switch i8 %472, label %473 [
    i8 0, label %479
    i8 95, label %479
  ]

473:                                              ; preds = %469
  %474 = getelementptr inbounds [37 x i8], ptr %4, i64 0, i64 %470
  store i8 %472, ptr %474, align 1, !tbaa !47
  %475 = load ptr, ptr %278, align 8, !tbaa !35
  %476 = getelementptr inbounds i8, ptr %475, i64 1
  store ptr %476, ptr %278, align 8, !tbaa !35
  %477 = add nuw nsw i64 %470, 1
  %478 = icmp eq i64 %477, 36
  br i1 %478, label %479, label %469, !llvm.loop !79

479:                                              ; preds = %469, %469, %473
  %480 = phi i64 [ %470, %469 ], [ %470, %469 ], [ 36, %473 ]
  %481 = load ptr, ptr %278, align 8, !tbaa !35
  %482 = load i8, ptr %481, align 1, !tbaa !47
  %483 = icmp eq i8 %482, 95
  br i1 %483, label %484, label %488

484:                                              ; preds = %479
  %485 = getelementptr inbounds [37 x i8], ptr %4, i64 0, i64 %480
  store i8 0, ptr %485, align 1, !tbaa !47
  %486 = load ptr, ptr %278, align 8, !tbaa !35
  %487 = getelementptr inbounds i8, ptr %486, i64 1
  store ptr %487, ptr %278, align 8, !tbaa !35
  br label %488

488:                                              ; preds = %484, %479
  %489 = phi i32 [ 1, %484 ], [ 0, %479 ]
  br i1 %483, label %497, label %578

490:                                              ; preds = %462
  %491 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %464, i64 noundef 2)
  %492 = getelementptr inbounds [37 x i8], ptr %4, i64 0, i64 2
  store i8 0, ptr %492, align 2, !tbaa !47
  %493 = load ptr, ptr %278, align 8, !tbaa !35
  %494 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %493)
  %495 = call i64 @llvm.umin.i64(i64 %494, i64 2)
  %496 = getelementptr inbounds i8, ptr %493, i64 %495
  store ptr %496, ptr %278, align 8, !tbaa !35
  br label %497

497:                                              ; preds = %490, %488
  %498 = phi i32 [ %489, %488 ], [ 1, %490 ]
  %499 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %4, ptr noundef nonnull @.str.252, ptr noundef nonnull %5)
  %500 = load i32, ptr %5, align 4, !tbaa !39
  %501 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.253, i32 noundef %500)
  %502 = load ptr, ptr %2, align 8, !tbaa !57
  %503 = load ptr, ptr %15, align 8, !tbaa !59
  %504 = icmp eq ptr %502, %503
  br i1 %504, label %506, label %505

505:                                              ; preds = %497
  call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198)
  br label %506

506:                                              ; preds = %505, %497
  call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull %4)
  br label %578

507:                                              ; preds = %374, %374, %374, %374, %374, %374, %374, %374, %374, %374
  %508 = tail call fastcc i32 @register_Btype(ptr noundef %0)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #23
  %509 = getelementptr inbounds %struct.string, ptr %6, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %510 = call fastcc i32 @demangle_class_name(ptr noundef %0, ptr noundef nonnull %278, ptr noundef nonnull %6), !range !68
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %549, label %512

512:                                              ; preds = %507
  %513 = load ptr, ptr %6, align 8
  %514 = load ptr, ptr %509, align 8
  %515 = icmp eq ptr %513, %514
  %516 = ptrtoint ptr %514 to i64
  %517 = ptrtoint ptr %513 to i64
  %518 = sub i64 %516, %517
  %519 = trunc i64 %518 to i32
  %520 = select i1 %515, i32 0, i32 %519
  %521 = add nsw i32 %520, 1
  %522 = sext i32 %521 to i64
  %523 = tail call ptr @xmalloc(i64 noundef %522) #23
  %524 = sext i32 %520 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %523, ptr align 1 %513, i64 %524, i1 false)
  %525 = getelementptr inbounds i8, ptr %523, i64 %524
  store i8 0, ptr %525, align 1, !tbaa !47
  %526 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 3
  %527 = load ptr, ptr %526, align 8, !tbaa !75
  %528 = sext i32 %508 to i64
  %529 = getelementptr inbounds ptr, ptr %527, i64 %528
  store ptr %523, ptr %529, align 8, !tbaa !35
  %530 = load ptr, ptr %2, align 8, !tbaa !57
  %531 = load ptr, ptr %15, align 8, !tbaa !59
  %532 = icmp eq ptr %530, %531
  br i1 %532, label %534, label %533

533:                                              ; preds = %512
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198)
  br label %534

534:                                              ; preds = %533, %512
  %535 = load ptr, ptr %6, align 8, !tbaa !57
  %536 = load ptr, ptr %509, align 8, !tbaa !59
  %537 = icmp eq ptr %535, %536
  br i1 %537, label %549, label %538

538:                                              ; preds = %534
  %539 = ptrtoint ptr %536 to i64
  %540 = ptrtoint ptr %535 to i64
  %541 = sub i64 %539, %540
  %542 = trunc i64 %541 to i32
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef %542)
  %543 = load ptr, ptr %15, align 8, !tbaa !59
  %544 = load ptr, ptr %6, align 8, !tbaa !57
  %545 = shl i64 %541, 32
  %546 = ashr exact i64 %545, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %543, ptr align 1 %544, i64 %546, i1 false)
  %547 = load ptr, ptr %15, align 8, !tbaa !59
  %548 = getelementptr inbounds i8, ptr %547, i64 %546
  store ptr %548, ptr %15, align 8, !tbaa !59
  br label %549

549:                                              ; preds = %538, %534, %507
  %550 = phi i32 [ 0, %507 ], [ 1, %534 ], [ 1, %538 ]
  %551 = load ptr, ptr %6, align 8, !tbaa !57
  %552 = icmp eq ptr %551, null
  br i1 %552, label %554, label %553

553:                                              ; preds = %549
  tail call void @free(ptr noundef %551)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br label %554

554:                                              ; preds = %549, %553
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  br label %578

555:                                              ; preds = %374
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #23
  %556 = getelementptr inbounds %struct.string, ptr %7, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %557 = call fastcc i32 @demangle_template(ptr noundef %0, ptr noundef nonnull %278, ptr noundef nonnull %7, ptr noundef null, i32 noundef 1, i32 noundef 1)
  %558 = load ptr, ptr %7, align 8, !tbaa !57
  %559 = load ptr, ptr %556, align 8, !tbaa !59
  %560 = icmp eq ptr %558, %559
  br i1 %560, label %572, label %561

561:                                              ; preds = %555
  %562 = ptrtoint ptr %559 to i64
  %563 = ptrtoint ptr %558 to i64
  %564 = sub i64 %562, %563
  %565 = trunc i64 %564 to i32
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef %565)
  %566 = load ptr, ptr %15, align 8, !tbaa !59
  %567 = load ptr, ptr %7, align 8, !tbaa !57
  %568 = shl i64 %564, 32
  %569 = ashr exact i64 %568, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %566, ptr align 1 %567, i64 %569, i1 false)
  %570 = load ptr, ptr %15, align 8, !tbaa !59
  %571 = getelementptr inbounds i8, ptr %570, i64 %569
  store ptr %571, ptr %15, align 8, !tbaa !59
  br label %572

572:                                              ; preds = %555, %561
  %573 = load ptr, ptr %7, align 8, !tbaa !57
  %574 = icmp eq ptr %573, null
  br i1 %574, label %576, label %575

575:                                              ; preds = %572
  tail call void @free(ptr noundef %573)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %576

576:                                              ; preds = %572, %575
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #23
  br label %578

577:                                              ; preds = %374
  br label %578

578:                                              ; preds = %374, %374, %383, %390, %397, %404, %411, %418, %425, %432, %439, %446, %453, %454, %488, %506, %554, %576, %577
  %579 = phi i32 [ 0, %577 ], [ %557, %576 ], [ %550, %554 ], [ %489, %488 ], [ %498, %506 ], [ 1, %453 ], [ 1, %446 ], [ 1, %439 ], [ 1, %432 ], [ 1, %425 ], [ 1, %418 ], [ 1, %411 ], [ 1, %404 ], [ 1, %397 ], [ 1, %390 ], [ 1, %383 ], [ 1, %374 ], [ 0, %454 ], [ 1, %374 ]
  %580 = phi i32 [ 3, %577 ], [ 3, %576 ], [ 3, %554 ], [ 3, %488 ], [ 3, %506 ], [ 6, %453 ], [ 6, %446 ], [ 6, %439 ], [ 5, %432 ], [ 5, %425 ], [ 4, %418 ], [ 3, %411 ], [ 3, %404 ], [ 3, %397 ], [ 3, %390 ], [ 3, %383 ], [ 3, %374 ], [ 3, %454 ], [ 3, %374 ]
  %581 = icmp eq i32 %579, 0
  %582 = select i1 %581, i32 0, i32 %580
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 37, ptr nonnull %4) #23
  %583 = icmp eq i32 %277, 0
  %584 = select i1 %583, i32 %582, i32 %277
  br label %585

585:                                              ; preds = %316, %578, %312, %304, %326, %322, %289, %293, %286, %298, %282
  %586 = phi i1 [ false, %298 ], [ %288, %286 ], [ true, %282 ], [ true, %293 ], [ true, %289 ], [ true, %312 ], [ true, %304 ], [ false, %326 ], [ false, %322 ], [ %581, %578 ], [ true, %316 ]
  %587 = phi i32 [ %277, %298 ], [ %277, %286 ], [ %277, %282 ], [ %277, %293 ], [ %277, %289 ], [ %277, %312 ], [ %277, %304 ], [ %277, %326 ], [ %277, %322 ], [ %584, %578 ], [ %277, %316 ]
  br i1 %586, label %607, label %588

588:                                              ; preds = %585
  %589 = load ptr, ptr %10, align 8, !tbaa !57
  %590 = load ptr, ptr %14, align 8, !tbaa !59
  %591 = icmp eq ptr %589, %590
  br i1 %591, label %611, label %592

592:                                              ; preds = %588
  call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.198)
  %593 = load ptr, ptr %10, align 8, !tbaa !57
  %594 = load ptr, ptr %14, align 8, !tbaa !59
  %595 = icmp eq ptr %593, %594
  br i1 %595, label %611, label %596

596:                                              ; preds = %592
  %597 = ptrtoint ptr %594 to i64
  %598 = ptrtoint ptr %593 to i64
  %599 = sub i64 %597, %598
  %600 = trunc i64 %599 to i32
  call fastcc void @string_need(ptr noundef %2, i32 noundef %600)
  %601 = load ptr, ptr %15, align 8, !tbaa !59
  %602 = load ptr, ptr %10, align 8, !tbaa !57
  %603 = shl i64 %599, 32
  %604 = ashr exact i64 %603, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %601, ptr align 1 %602, i64 %604, i1 false)
  %605 = load ptr, ptr %15, align 8, !tbaa !59
  %606 = getelementptr inbounds i8, ptr %605, i64 %604
  store ptr %606, ptr %15, align 8, !tbaa !59
  br label %611

607:                                              ; preds = %585
  %608 = load ptr, ptr %2, align 8, !tbaa !57
  %609 = icmp eq ptr %608, null
  br i1 %609, label %611, label %610

610:                                              ; preds = %607
  call void @free(ptr noundef %608)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %611

611:                                              ; preds = %610, %607, %596, %592, %588
  %612 = load ptr, ptr %10, align 8, !tbaa !57
  %613 = icmp eq ptr %612, null
  br i1 %613, label %615, label %614

614:                                              ; preds = %611
  call void @free(ptr noundef %612)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br label %615

615:                                              ; preds = %611, %614
  %616 = icmp eq i32 %587, 0
  %617 = select i1 %616, i32 3, i32 %587
  %618 = select i1 %586, i32 0, i32 %617
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #23
  ret i32 %618
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: cold nounwind uwtable
define internal fastcc void @squangle_mop_up(ptr nocapture noundef %0) unnamed_addr #10 !prof !34 {
  %2 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !80
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 2
  br label %13

7:                                                ; preds = %24, %1
  %8 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !74
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 3
  br label %27

13:                                               ; preds = %5, %24
  %14 = phi i32 [ %3, %5 ], [ %25, %24 ]
  %15 = add nsw i32 %14, -1
  store i32 %15, ptr %2, align 8, !tbaa !80
  %16 = load ptr, ptr %6, align 8, !tbaa !81
  %17 = zext nneg i32 %15 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  tail call void @free(ptr noundef %19)
  %22 = load ptr, ptr %6, align 8, !tbaa !81
  %23 = getelementptr inbounds ptr, ptr %22, i64 %17
  store ptr null, ptr %23, align 8, !tbaa !35
  br label %24

24:                                               ; preds = %21, %13
  %25 = load i32, ptr %2, align 8, !tbaa !80
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %13, label %7, !llvm.loop !82

27:                                               ; preds = %11, %38
  %28 = phi i32 [ %9, %11 ], [ %39, %38 ]
  %29 = add nsw i32 %28, -1
  store i32 %29, ptr %8, align 4, !tbaa !74
  %30 = load ptr, ptr %12, align 8, !tbaa !75
  %31 = zext nneg i32 %29 to i64
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  tail call void @free(ptr noundef %33)
  %36 = load ptr, ptr %12, align 8, !tbaa !75
  %37 = getelementptr inbounds ptr, ptr %36, i64 %31
  store ptr null, ptr %37, align 8, !tbaa !35
  br label %38

38:                                               ; preds = %35, %27
  %39 = load i32, ptr %8, align 4, !tbaa !74
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %27, label %41, !llvm.loop !83

41:                                               ; preds = %38, %7
  %42 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !75
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @free(ptr noundef %43)
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !81
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void @free(ptr noundef %48)
  br label %51

51:                                               ; preds = %50, %46
  ret void
}

; Function Attrs: cold nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @cplus_mangle_opname(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #14 !prof !34 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %4 = trunc i64 %3 to i32
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  br label %7

7:                                                ; preds = %2, %26
  %8 = phi i64 [ 0, %2 ], [ %27, %26 ]
  %9 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %8, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10)
  %12 = trunc i64 %11 to i32
  %13 = icmp eq i32 %12, %4
  br i1 %13, label %14, label %26

14:                                               ; preds = %7
  %15 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %8, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !84
  %17 = xor i32 %16, %1
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = tail call i32 @bcmp(ptr %10, ptr %0, i64 %6)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %8
  %25 = load ptr, ptr %24, align 8, !tbaa !61
  br label %29

26:                                               ; preds = %7, %14, %20
  %27 = add nuw nsw i64 %8, 1
  %28 = icmp eq i64 %27, 79
  br i1 %28, label %29, label %7, !llvm.loop !85

29:                                               ; preds = %26, %23
  %30 = phi ptr [ %25, %23 ], [ null, %26 ]
  ret ptr %30
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @cplus_demangle_set_style(i32 noundef %0) local_unnamed_addr #15 !prof !34 {
  br label %7

2:                                                ; preds = %7
  %3 = getelementptr inbounds %struct.demangler_engine, ptr %9, i64 1
  %4 = getelementptr inbounds %struct.demangler_engine, ptr %9, i64 1, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !86
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7, !llvm.loop !88

7:                                                ; preds = %1, %2
  %8 = phi i32 [ -1, %1 ], [ %5, %2 ]
  %9 = phi ptr [ @libiberty_demanglers, %1 ], [ %3, %2 ]
  %10 = icmp eq i32 %8, %0
  br i1 %10, label %11, label %2

11:                                               ; preds = %7
  store i32 %0, ptr @current_demangling_style, align 4, !tbaa !39
  br label %12

12:                                               ; preds = %2, %11
  %13 = phi i32 [ %0, %11 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: cold nofree nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @cplus_demangle_name_to_style(ptr nocapture noundef readonly %0) local_unnamed_addr #14 !prof !34 {
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %9
  %5 = phi ptr [ %10, %9 ], [ @libiberty_demanglers, %1 ]
  %6 = getelementptr inbounds %struct.demangler_engine, ptr %5, i64 1, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !86
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !llvm.loop !89

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.demangler_engine, ptr %5, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %11)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %4, !llvm.loop !89

14:                                               ; preds = %9, %4, %1
  %15 = phi i32 [ -1, %1 ], [ %7, %9 ], [ 0, %4 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: cold nounwind uwtable
define dso_local ptr @cplus_demangle(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !34 {
  %3 = alloca [1 x %struct.work_stuff], align 16
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %3) #23
  %4 = load i32, ptr @current_demangling_style, align 4, !tbaa !39
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @xstrdup(ptr noundef %0) #23
  br label %38

8:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %3, i8 0, i64 112, i1 false)
  %9 = and i32 %1, 65284
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %4, 65284
  %12 = select i1 %10, i32 %11, i32 0
  %13 = or disjoint i32 %12, %1
  store i32 %13, ptr %3, align 16, !tbaa !54
  %14 = and i32 %13, 16640
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %8
  %17 = tail call ptr @cplus_demangle_v3(ptr noundef %0, i32 noundef %13) #23
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %16
  %20 = load i32, ptr %3, align 16, !tbaa !54
  %21 = and i32 %20, 16384
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %8, %19
  %24 = load i32, ptr %3, align 16, !tbaa !54
  %25 = and i32 %24, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = tail call ptr @java_demangle_v3(ptr noundef %0) #23
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %27, %23
  %31 = load i32, ptr %3, align 16, !tbaa !54
  %32 = and i32 %31, 32768
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @ada_demangle(ptr noundef %0, i32 poison)
  br label %38

36:                                               ; preds = %30
  %37 = call fastcc ptr @internal_cplus_demangle(ptr noundef nonnull %3, ptr noundef %0)
  call fastcc void @squangle_mop_up(ptr noundef nonnull %3)
  br label %38

38:                                               ; preds = %27, %16, %19, %36, %34, %6
  %39 = phi ptr [ %7, %6 ], [ %35, %34 ], [ %37, %36 ], [ %17, %19 ], [ %17, %16 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #23
  ret ptr %39
}

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #1

declare ptr @cplus_demangle_v3(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @java_demangle_v3(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @ada_demangle(ptr noundef %0, i32 %1) local_unnamed_addr #10 !prof !34 {
  %3 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.25, i64 noundef 5)
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i64 5, i64 0
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !47
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !60
  %11 = and i16 %10, 8
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %224, label %13

13:                                               ; preds = %2
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6)
  %15 = shl i64 %14, 32
  %16 = add i64 %15, 12884901888
  %17 = ashr exact i64 %16, 32
  %18 = tail call ptr @xmalloc(i64 noundef %17) #23
  br label %19

19:                                               ; preds = %136, %13
  %20 = phi ptr [ %6, %13 ], [ %137, %136 ]
  %21 = phi ptr [ %18, %13 ], [ %138, %136 ]
  %22 = load i8, ptr %20, align 1, !tbaa !47
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !60
  %26 = and i16 %25, 8
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %19, %40
  %29 = phi ptr [ %31, %40 ], [ %20, %19 ]
  %30 = phi ptr [ %33, %40 ], [ %21, %19 ]
  %31 = getelementptr inbounds i8, ptr %29, i64 1
  %32 = load i8, ptr %29, align 1, !tbaa !47
  %33 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 %32, ptr %30, align 1, !tbaa !47
  %34 = load i8, ptr %31, align 1, !tbaa !47
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %35
  %37 = load i16, ptr %36, align 2, !tbaa !60
  %38 = and i16 %37, 12
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %28, %43
  br label %28, !llvm.loop !91

41:                                               ; preds = %28
  %42 = icmp eq i8 %34, 95
  br i1 %42, label %43, label %85

43:                                               ; preds = %41
  %44 = getelementptr inbounds i8, ptr %29, i64 2
  %45 = load i8, ptr %44, align 1, !tbaa !47
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %46
  %48 = load i16, ptr %47, align 2, !tbaa !60
  %49 = and i16 %48, 12
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %85, label %40

51:                                               ; preds = %19
  %52 = icmp eq i8 %22, 79
  br i1 %52, label %59, label %224

53:                                               ; preds = %80
  %54 = add nuw nsw i64 %60, 1
  %55 = getelementptr inbounds [20 x [2 x ptr]], ptr @ada_demangle.operators, i64 0, i64 %54
  %56 = load ptr, ptr %55, align 16, !tbaa !35
  %57 = icmp eq ptr %56, null
  %58 = icmp eq i64 %54, 19
  br i1 %58, label %83, label %59, !llvm.loop !92

59:                                               ; preds = %51, %53
  %60 = phi i64 [ %54, %53 ], [ 0, %51 ]
  %61 = phi i1 [ %57, %53 ], [ false, %51 ]
  %62 = phi ptr [ %56, %53 ], [ @.str.26, %51 ]
  %63 = phi ptr [ %82, %53 ], [ %21, %51 ]
  %64 = phi ptr [ %81, %53 ], [ %20, %51 ]
  %65 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %62)
  %66 = shl i64 %65, 32
  %67 = ashr exact i64 %66, 32
  %68 = tail call i32 @strncmp(ptr noundef %64, ptr noundef nonnull %62, i64 noundef %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %59
  %71 = getelementptr inbounds i8, ptr %64, i64 %67
  %72 = getelementptr inbounds [20 x [2 x ptr]], ptr @ada_demangle.operators, i64 0, i64 %60, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !35
  %74 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %73)
  %75 = getelementptr inbounds i8, ptr %63, i64 1
  store i8 34, ptr %63, align 1, !tbaa !47
  %76 = shl i64 %74, 32
  %77 = ashr exact i64 %76, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %75, ptr align 1 %73, i64 %77, i1 false)
  %78 = getelementptr inbounds i8, ptr %75, i64 %77
  %79 = getelementptr inbounds i8, ptr %78, i64 1
  store i8 34, ptr %78, align 1, !tbaa !47
  br label %80

80:                                               ; preds = %59, %70
  %81 = phi ptr [ %71, %70 ], [ %64, %59 ]
  %82 = phi ptr [ %79, %70 ], [ %63, %59 ]
  br i1 %69, label %83, label %53

83:                                               ; preds = %80, %53
  %84 = phi i1 [ %61, %80 ], [ %57, %53 ]
  br i1 %84, label %224, label %85

85:                                               ; preds = %41, %43, %83
  %86 = phi ptr [ %81, %83 ], [ %31, %43 ], [ %31, %41 ]
  %87 = phi ptr [ %82, %83 ], [ %33, %43 ], [ %33, %41 ]
  %88 = load i8, ptr %86, align 1, !tbaa !47
  %89 = icmp eq i8 %88, 95
  br i1 %89, label %90, label %156

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, ptr %86, i64 1
  %92 = load i8, ptr %91, align 1, !tbaa !47
  switch i8 %92, label %224 [
    i8 95, label %93
    i8 66, label %139
    i8 69, label %139
  ]

93:                                               ; preds = %90
  %94 = getelementptr inbounds i8, ptr %86, i64 2
  %95 = load i8, ptr %94, align 1, !tbaa !47
  %96 = zext i8 %95 to i64
  %97 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %96
  %98 = load i16, ptr %97, align 2, !tbaa !60
  %99 = and i16 %98, 4
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %121, label %101

101:                                              ; preds = %93, %120
  %102 = phi ptr [ %103, %120 ], [ %94, %93 ]
  %103 = getelementptr inbounds i8, ptr %102, i64 1
  %104 = load i8, ptr %103, align 1, !tbaa !47
  %105 = zext i8 %104 to i64
  %106 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %105
  %107 = load i16, ptr %106, align 2, !tbaa !60
  %108 = and i16 %107, 4
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %101
  %111 = icmp eq i8 %104, 95
  br i1 %111, label %112, label %156

112:                                              ; preds = %110
  %113 = getelementptr inbounds i8, ptr %102, i64 2
  %114 = load i8, ptr %113, align 1, !tbaa !47
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %115
  %117 = load i16, ptr %116, align 2, !tbaa !60
  %118 = and i16 %117, 4
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %156, label %120

120:                                              ; preds = %112, %101
  br label %101, !llvm.loop !93

121:                                              ; preds = %93
  %122 = icmp eq i8 %95, 95
  br i1 %122, label %123, label %136

123:                                              ; preds = %121
  %124 = getelementptr inbounds i8, ptr %86, i64 3
  %125 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %124, ptr noundef nonnull dereferenceable(6) @.str.63)
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %87, ptr noundef nonnull align 1 dereferenceable(10) @.str.64, i64 10, i1 false)
  %128 = getelementptr inbounds i8, ptr %87, i64 10
  br label %222

129:                                              ; preds = %123
  br i1 %122, label %130, label %136

130:                                              ; preds = %129
  %131 = getelementptr inbounds i8, ptr %86, i64 3
  %132 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %131, ptr noundef nonnull dereferenceable(6) @.str.65)
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %87, ptr noundef nonnull align 1 dereferenceable(10) @.str.66, i64 10, i1 false)
  %135 = getelementptr inbounds i8, ptr %87, i64 10
  br label %222

136:                                              ; preds = %129, %130, %121, %176
  %137 = phi ptr [ %177, %176 ], [ %94, %121 ], [ %94, %130 ], [ %94, %129 ]
  %138 = getelementptr inbounds i8, ptr %87, i64 1
  store i8 46, ptr %87, align 1, !tbaa !47
  br label %19, !llvm.loop !94

139:                                              ; preds = %90, %90
  %140 = getelementptr inbounds i8, ptr %86, i64 2
  br label %141

141:                                              ; preds = %141, %139
  %142 = phi ptr [ %140, %139 ], [ %149, %141 ]
  %143 = load i8, ptr %142, align 1, !tbaa !47
  %144 = zext i8 %143 to i64
  %145 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %144
  %146 = load i16, ptr %145, align 2, !tbaa !60
  %147 = and i16 %146, 4
  %148 = icmp eq i16 %147, 0
  %149 = getelementptr inbounds i8, ptr %142, i64 1
  br i1 %148, label %150, label %141, !llvm.loop !95

150:                                              ; preds = %141
  %151 = icmp eq i8 %143, 115
  br i1 %151, label %152, label %224

152:                                              ; preds = %150
  %153 = getelementptr inbounds i8, ptr %142, i64 1
  %154 = load i8, ptr %153, align 1, !tbaa !47
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %222, label %224

156:                                              ; preds = %110, %112, %85
  %157 = phi ptr [ %86, %85 ], [ %103, %112 ], [ %103, %110 ]
  %158 = load i8, ptr %157, align 1, !tbaa !47
  switch i8 %158, label %195 [
    i8 84, label %159
    i8 80, label %179
    i8 78, label %179
    i8 69, label %184
    i8 83, label %224
    i8 88, label %189
  ]

159:                                              ; preds = %156
  %160 = getelementptr inbounds i8, ptr %157, i64 1
  %161 = load i8, ptr %160, align 1, !tbaa !47
  %162 = icmp eq i8 %161, 75
  br i1 %162, label %163, label %178

163:                                              ; preds = %159
  %164 = getelementptr inbounds i8, ptr %157, i64 2
  %165 = load i8, ptr %164, align 1, !tbaa !47
  switch i8 %165, label %224 [
    i8 66, label %166
    i8 95, label %172
  ]

166:                                              ; preds = %163
  %167 = getelementptr inbounds i8, ptr %157, i64 3
  %168 = load i8, ptr %167, align 1, !tbaa !47
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %222, label %170

170:                                              ; preds = %166
  %171 = icmp eq i8 %165, 95
  br i1 %171, label %172, label %224

172:                                              ; preds = %163, %170
  %173 = getelementptr inbounds i8, ptr %157, i64 3
  %174 = load i8, ptr %173, align 1, !tbaa !47
  %175 = icmp eq i8 %174, 95
  br i1 %175, label %176, label %224

176:                                              ; preds = %172
  %177 = getelementptr inbounds i8, ptr %157, i64 4
  br label %136

178:                                              ; preds = %159
  switch i8 %158, label %195 [
    i8 80, label %179
    i8 78, label %179
    i8 69, label %184
    i8 83, label %224
    i8 88, label %189
  ]

179:                                              ; preds = %156, %156, %178, %178
  %180 = getelementptr inbounds i8, ptr %157, i64 1
  %181 = load i8, ptr %180, align 1, !tbaa !47
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %222, label %183

183:                                              ; preds = %179
  switch i8 %158, label %195 [
    i8 69, label %184
    i8 78, label %224
    i8 83, label %224
    i8 88, label %189
  ]

184:                                              ; preds = %156, %178, %183
  %185 = getelementptr inbounds i8, ptr %157, i64 1
  %186 = load i8, ptr %185, align 1, !tbaa !47
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %224, label %188

188:                                              ; preds = %184
  switch i8 %158, label %195 [
    i8 78, label %224
    i8 83, label %224
    i8 88, label %189
  ]

189:                                              ; preds = %156, %178, %183, %188
  %190 = getelementptr inbounds i8, ptr %157, i64 1
  %191 = load i8, ptr %190, align 1, !tbaa !47
  switch i8 %191, label %195 [
    i8 110, label %192
    i8 98, label %192
    i8 0, label %194
  ]

192:                                              ; preds = %189, %189
  %193 = getelementptr inbounds i8, ptr %157, i64 2
  br label %195

194:                                              ; preds = %189
  br label %195

195:                                              ; preds = %156, %188, %183, %178, %189, %192, %194
  %196 = phi ptr [ %193, %192 ], [ %190, %194 ], [ %157, %189 ], [ %157, %178 ], [ %157, %183 ], [ %157, %188 ], [ %157, %156 ]
  %197 = load i8, ptr %196, align 1, !tbaa !47
  %198 = icmp eq i8 %197, 46
  br i1 %198, label %199, label %218

199:                                              ; preds = %195
  %200 = getelementptr inbounds i8, ptr %196, i64 1
  %201 = load i8, ptr %200, align 1, !tbaa !47
  %202 = zext i8 %201 to i64
  %203 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %202
  %204 = load i16, ptr %203, align 2, !tbaa !60
  %205 = and i16 %204, 4
  %206 = icmp eq i16 %205, 0
  br i1 %206, label %218, label %207

207:                                              ; preds = %199
  %208 = getelementptr inbounds i8, ptr %196, i64 2
  br label %209

209:                                              ; preds = %209, %207
  %210 = phi ptr [ %208, %207 ], [ %217, %209 ]
  %211 = load i8, ptr %210, align 1, !tbaa !47
  %212 = zext i8 %211 to i64
  %213 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %212
  %214 = load i16, ptr %213, align 2, !tbaa !60
  %215 = and i16 %214, 4
  %216 = icmp eq i16 %215, 0
  %217 = getelementptr inbounds i8, ptr %210, i64 1
  br i1 %216, label %218, label %209, !llvm.loop !96

218:                                              ; preds = %209, %199, %195
  %219 = phi ptr [ %196, %199 ], [ %196, %195 ], [ %210, %209 ]
  %220 = load i8, ptr %219, align 1, !tbaa !47
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %166, %218, %152, %179, %134, %127
  %223 = phi ptr [ %87, %179 ], [ %135, %134 ], [ %128, %127 ], [ %87, %152 ], [ %87, %218 ], [ %87, %166 ]
  store i8 0, ptr %223, align 1, !tbaa !47
  br label %236

224:                                              ; preds = %156, %163, %83, %90, %170, %172, %51, %188, %183, %188, %183, %178, %184, %218, %150, %152, %2
  %225 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6)
  %226 = shl i64 %225, 32
  %227 = add i64 %226, 12884901888
  %228 = ashr exact i64 %227, 32
  %229 = tail call ptr @xmalloc(i64 noundef %228) #23
  %230 = load i8, ptr %6, align 1, !tbaa !47
  %231 = icmp eq i8 %230, 60
  br i1 %231, label %232, label %234

232:                                              ; preds = %224
  %233 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %229, ptr noundef nonnull dereferenceable(1) %6)
  br label %236

234:                                              ; preds = %224
  %235 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %229, ptr noundef nonnull dereferenceable(1) @.str.67, ptr noundef nonnull %6)
  br label %236

236:                                              ; preds = %232, %234, %222
  %237 = phi ptr [ %18, %222 ], [ %229, %234 ], [ %229, %232 ]
  ret ptr %237
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @internal_cplus_demangle(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !34 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.string, align 8
  store ptr %1, ptr %3, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  %5 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 10
  %6 = load i32, ptr %5, align 8, !tbaa !97
  %7 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 11
  %8 = load i32, ptr %7, align 4, !tbaa !98
  %9 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 12
  %10 = load i32, ptr %9, align 8, !tbaa !99
  %11 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 14
  %12 = load i32, ptr %11, align 8, !tbaa !100
  store i32 0, ptr %7, align 4, !tbaa !98
  store i32 0, ptr %5, align 8, !tbaa !97
  store i32 0, ptr %11, align 8, !tbaa !100
  %13 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 15
  store i32 0, ptr %13, align 4, !tbaa !101
  %14 = icmp eq ptr %1, null
  br i1 %14, label %297, label %15

15:                                               ; preds = %2
  %16 = load i8, ptr %1, align 1, !tbaa !47
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %297, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.string, ptr %4, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %20 = load i32, ptr %0, align 8, !tbaa !54
  %21 = and i32 %20, 768
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = call fastcc i32 @gnu_special(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  br label %25

25:                                               ; preds = %18, %23
  %26 = phi i32 [ %24, %23 ], [ 0, %18 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %264

28:                                               ; preds = %25
  %29 = load ptr, ptr %3, align 8, !tbaa !35
  %30 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %29)
  %31 = icmp ugt i64 %30, 6
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(7) @.str.211, i64 noundef 6)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(7) @.str.212, i64 noundef 6)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35, %32
  %39 = getelementptr inbounds i8, ptr %29, i64 6
  store ptr %39, ptr %3, align 8, !tbaa !35
  store i32 1, ptr %13, align 4, !tbaa !101
  br label %82

40:                                               ; preds = %35, %28
  %41 = icmp ugt i64 %30, 10
  br i1 %41, label %42, label %67

42:                                               ; preds = %40
  %43 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(9) @.str.190, i64 noundef 8)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %42
  %46 = getelementptr inbounds i8, ptr %29, i64 8
  %47 = load i8, ptr %46, align 1, !tbaa !47
  %48 = sext i8 %47 to i32
  %49 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) @cplus_markers, i32 noundef %48)
  %50 = icmp eq ptr %49, null
  br i1 %50, label %82, label %51

51:                                               ; preds = %45
  %52 = load i8, ptr %49, align 1, !tbaa !47
  %53 = getelementptr inbounds i8, ptr %29, i64 10
  %54 = load i8, ptr %53, align 1, !tbaa !47
  %55 = icmp eq i8 %52, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %51
  %57 = getelementptr inbounds i8, ptr %29, i64 9
  %58 = load i8, ptr %57, align 1, !tbaa !47
  switch i8 %58, label %82 [
    i8 68, label %59
    i8 73, label %63
  ]

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, ptr %29, i64 11
  store ptr %60, ptr %3, align 8, !tbaa !35
  store i32 2, ptr %7, align 4, !tbaa !98
  %61 = call fastcc i32 @gnu_special(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %82, label %264

63:                                               ; preds = %56
  %64 = getelementptr inbounds i8, ptr %29, i64 11
  store ptr %64, ptr %3, align 8, !tbaa !35
  store i32 2, ptr %5, align 8, !tbaa !97
  %65 = call fastcc i32 @gnu_special(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %82, label %264

67:                                               ; preds = %42, %40
  %68 = load i32, ptr %0, align 8, !tbaa !54
  %69 = and i32 %68, 14336
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %67
  %72 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(8) @.str.213, i64 noundef 7)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = getelementptr inbounds i8, ptr %29, i64 7
  store ptr %75, ptr %3, align 8, !tbaa !35
  store i32 2, ptr %7, align 4, !tbaa !98
  br label %82

76:                                               ; preds = %71
  br i1 %70, label %82, label %77

77:                                               ; preds = %76
  %78 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(8) @.str.214, i64 noundef 7)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = getelementptr inbounds i8, ptr %29, i64 7
  store ptr %81, ptr %3, align 8, !tbaa !35
  store i32 2, ptr %5, align 8, !tbaa !97
  br label %82

82:                                               ; preds = %67, %59, %80, %77, %76, %74, %63, %56, %51, %45, %38
  %83 = load ptr, ptr %3, align 8, !tbaa !35
  br label %84

84:                                               ; preds = %88, %82
  %85 = phi ptr [ %83, %82 ], [ %89, %88 ]
  %86 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %85, i32 noundef 95)
  %87 = icmp eq ptr %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds i8, ptr %86, i64 1
  %90 = load i8, ptr %89, align 1, !tbaa !47
  %91 = icmp eq i8 %90, 95
  br i1 %91, label %92, label %84, !llvm.loop !102

92:                                               ; preds = %88, %84
  %93 = phi ptr [ null, %84 ], [ %89, %88 ]
  %94 = icmp eq ptr %93, null
  %95 = getelementptr inbounds i8, ptr %93, i64 -1
  %96 = select i1 %94, ptr null, ptr %95
  br i1 %94, label %105, label %97

97:                                               ; preds = %92
  %98 = call i64 @strspn(ptr noundef nonnull %96, ptr noundef nonnull @.str.215)
  %99 = trunc i64 %98 to i32
  %100 = icmp sgt i32 %99, 2
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = add i64 %98, 4294967294
  %103 = and i64 %102, 4294967295
  %104 = getelementptr inbounds i8, ptr %96, i64 %103
  br label %105

105:                                              ; preds = %101, %97, %92
  %106 = phi ptr [ %104, %101 ], [ %96, %97 ], [ null, %92 ]
  %107 = icmp eq ptr %106, null
  br i1 %107, label %253, label %108

108:                                              ; preds = %105
  %109 = load i32, ptr %9, align 8, !tbaa !99
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %108
  %112 = load i8, ptr %106, align 1, !tbaa !47
  %113 = zext i8 %112 to i64
  %114 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %113
  %115 = load i16, ptr %114, align 2, !tbaa !60
  %116 = and i16 %115, 4
  %117 = icmp ne i16 %116, 0
  %118 = icmp eq i8 %112, 116
  %119 = or i1 %118, %117
  br i1 %119, label %264, label %253

120:                                              ; preds = %108
  %121 = icmp eq ptr %106, %83
  br i1 %121, label %122, label %175

122:                                              ; preds = %120
  %123 = getelementptr inbounds i8, ptr %106, i64 2
  %124 = load i8, ptr %123, align 1, !tbaa !47
  %125 = zext i8 %124 to i64
  %126 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %125
  %127 = load i16, ptr %126, align 2, !tbaa !60
  %128 = freeze i16 %127
  %129 = and i16 %128, 4
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  switch i8 %124, label %175 [
    i8 116, label %132
    i8 81, label %132
    i8 75, label %132
    i8 72, label %132
  ]

132:                                              ; preds = %131, %131, %131, %131, %122
  %133 = load i32, ptr %0, align 8, !tbaa !54
  %134 = and i32 %133, 7168
  %135 = icmp eq i32 %134, 0
  %136 = and i16 %128, 4
  %137 = icmp eq i16 %136, 0
  %138 = or i1 %137, %135
  br i1 %138, label %168, label %139

139:                                              ; preds = %132
  store ptr %123, ptr %3, align 8, !tbaa !35
  %140 = load i8, ptr %123, align 1, !tbaa !47
  %141 = zext i8 %140 to i64
  %142 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %141
  %143 = load i16, ptr %142, align 2, !tbaa !60
  %144 = and i16 %143, 4
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %163, label %146

146:                                              ; preds = %139
  %147 = load ptr, ptr %3, align 8, !tbaa !35
  %148 = load i8, ptr %147, align 1, !tbaa !47
  %149 = zext i8 %148 to i64
  %150 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %149
  %151 = load i16, ptr %150, align 2, !tbaa !60
  %152 = and i16 %151, 4
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %163, label %154

154:                                              ; preds = %146, %154
  %155 = phi ptr [ %156, %154 ], [ %147, %146 ]
  %156 = getelementptr inbounds i8, ptr %155, i64 1
  store ptr %156, ptr %3, align 8, !tbaa !35
  %157 = load i8, ptr %156, align 1, !tbaa !47
  %158 = zext i8 %157 to i64
  %159 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %158
  %160 = load i16, ptr %159, align 2, !tbaa !60
  %161 = and i16 %160, 4
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %163, label %154, !llvm.loop !71

163:                                              ; preds = %154, %146, %139
  %164 = load ptr, ptr %3, align 8, !tbaa !35
  call fastcc void @string_append(ptr noundef nonnull %4, ptr noundef %164)
  %165 = load ptr, ptr %3, align 8, !tbaa !35
  %166 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %165)
  %167 = getelementptr inbounds i8, ptr %165, i64 %166
  store ptr %167, ptr %3, align 8, !tbaa !35
  br label %264

168:                                              ; preds = %132
  %169 = and i32 %133, 15360
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i32, ptr %5, align 8, !tbaa !97
  %173 = add nsw i32 %172, 1
  store i32 %173, ptr %5, align 8, !tbaa !97
  br label %174

174:                                              ; preds = %171, %168
  store ptr %123, ptr %3, align 8, !tbaa !35
  br label %264

175:                                              ; preds = %131, %120
  %176 = load i32, ptr %0, align 8, !tbaa !54
  %177 = and i32 %176, 2048
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %190, label %179

179:                                              ; preds = %175
  %180 = getelementptr inbounds i8, ptr %106, i64 2
  %181 = load i8, ptr %180, align 1, !tbaa !47
  %182 = icmp eq i8 %181, 112
  br i1 %182, label %183, label %190

183:                                              ; preds = %179
  %184 = getelementptr inbounds i8, ptr %106, i64 3
  %185 = load i8, ptr %184, align 1, !tbaa !47
  %186 = icmp eq i8 %185, 116
  br i1 %186, label %187, label %190

187:                                              ; preds = %183
  %188 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %83)
  %189 = trunc i64 %188 to i32
  call fastcc void @demangle_arm_hp_template(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %189, ptr noundef nonnull %4)
  br label %264

190:                                              ; preds = %183, %179, %175
  %191 = and i32 %176, 8192
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %215, label %193

193:                                              ; preds = %190
  %194 = getelementptr inbounds i8, ptr %106, i64 2
  %195 = load i8, ptr %194, align 1, !tbaa !47
  %196 = icmp eq i8 %195, 116
  br i1 %196, label %197, label %201

197:                                              ; preds = %193
  %198 = getelementptr inbounds i8, ptr %106, i64 3
  %199 = load i8, ptr %198, align 1, !tbaa !47
  %200 = icmp eq i8 %199, 109
  br i1 %200, label %212, label %201

201:                                              ; preds = %197, %193
  %202 = icmp eq i8 %195, 112
  br i1 %202, label %203, label %215

203:                                              ; preds = %201
  %204 = getelementptr inbounds i8, ptr %106, i64 3
  %205 = load i8, ptr %204, align 1, !tbaa !47
  %206 = icmp eq i8 %205, 115
  br i1 %206, label %212, label %207

207:                                              ; preds = %203
  br i1 %202, label %208, label %215

208:                                              ; preds = %207
  %209 = getelementptr inbounds i8, ptr %106, i64 3
  %210 = load i8, ptr %209, align 1, !tbaa !47
  %211 = icmp eq i8 %210, 116
  br i1 %211, label %212, label %215

212:                                              ; preds = %208, %203, %197
  %213 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %83)
  %214 = trunc i64 %213 to i32
  call fastcc void @demangle_arm_hp_template(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %214, ptr noundef nonnull %4)
  br label %264

215:                                              ; preds = %201, %208, %207, %190
  br i1 %121, label %216, label %247

216:                                              ; preds = %215
  %217 = getelementptr inbounds i8, ptr %106, i64 2
  %218 = load i8, ptr %217, align 1, !tbaa !47
  %219 = zext i8 %218 to i64
  %220 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %219
  %221 = load i16, ptr %220, align 2, !tbaa !60
  %222 = and i16 %221, 4
  %223 = icmp ne i16 %222, 0
  %224 = icmp eq i8 %218, 116
  %225 = or i1 %224, %223
  br i1 %225, label %247, label %226

226:                                              ; preds = %216
  %227 = and i32 %176, 15360
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %226
  %230 = call fastcc i32 @arm_special(ptr noundef nonnull %3, ptr noundef nonnull %4), !range !68
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %264

232:                                              ; preds = %229, %226
  br label %233

233:                                              ; preds = %232, %233
  %234 = phi ptr [ %237, %233 ], [ %106, %232 ]
  %235 = load i8, ptr %234, align 1, !tbaa !47
  %236 = icmp eq i8 %235, 95
  %237 = getelementptr inbounds i8, ptr %234, i64 1
  br i1 %236, label %233, label %238, !llvm.loop !103

238:                                              ; preds = %233
  %239 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %234, ptr noundef nonnull dereferenceable(1) @.str.216)
  %240 = icmp eq ptr %239, null
  br i1 %240, label %253, label %241

241:                                              ; preds = %238
  %242 = getelementptr inbounds i8, ptr %239, i64 2
  %243 = load i8, ptr %242, align 1, !tbaa !47
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %253, label %245

245:                                              ; preds = %241
  %246 = call fastcc i32 @iterate_demangle_function(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %239)
  br label %264

247:                                              ; preds = %216, %215
  %248 = getelementptr inbounds i8, ptr %106, i64 2
  %249 = load i8, ptr %248, align 1, !tbaa !47
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %253, label %251

251:                                              ; preds = %247
  %252 = call fastcc i32 @iterate_demangle_function(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %106)
  br label %264

253:                                              ; preds = %247, %241, %238, %111, %105
  %254 = load i32, ptr %5, align 8, !tbaa !97
  %255 = icmp eq i32 %254, 2
  br i1 %255, label %259, label %256

256:                                              ; preds = %253
  %257 = load i32, ptr %7, align 4, !tbaa !98
  %258 = icmp eq i32 %257, 2
  br i1 %258, label %259, label %264

259:                                              ; preds = %256, %253
  %260 = load ptr, ptr %3, align 8, !tbaa !35
  call fastcc void @string_append(ptr noundef nonnull %4, ptr noundef %260)
  %261 = load ptr, ptr %3, align 8, !tbaa !35
  %262 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %261)
  %263 = getelementptr inbounds i8, ptr %261, i64 %262
  store ptr %263, ptr %3, align 8, !tbaa !35
  br label %264

264:                                              ; preds = %256, %259, %251, %245, %229, %212, %187, %174, %163, %111, %63, %59, %25
  %265 = phi i32 [ %26, %25 ], [ %252, %251 ], [ %246, %245 ], [ 1, %63 ], [ 1, %59 ], [ 1, %259 ], [ 1, %229 ], [ 1, %212 ], [ 1, %187 ], [ 1, %174 ], [ 1, %163 ], [ 1, %111 ], [ 0, %256 ]
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %274, label %267

267:                                              ; preds = %264
  %268 = load ptr, ptr %3, align 8, !tbaa !35
  %269 = load i8, ptr %268, align 1, !tbaa !47
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %274, label %271

271:                                              ; preds = %267
  %272 = call fastcc i32 @demangle_signature(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %273 = icmp eq i32 %272, 0
  br label %274

274:                                              ; preds = %271, %267, %264
  %275 = phi i1 [ %273, %271 ], [ false, %267 ], [ true, %264 ]
  %276 = load i32, ptr %5, align 8, !tbaa !97
  %277 = icmp eq i32 %276, 2
  br i1 %277, label %278, label %279

278:                                              ; preds = %274
  call fastcc void @string_prepend(ptr noundef nonnull %4, ptr noundef nonnull @.str.183)
  store i32 0, ptr %5, align 8, !tbaa !97
  br label %287

279:                                              ; preds = %274
  %280 = load i32, ptr %7, align 4, !tbaa !98
  %281 = icmp eq i32 %280, 2
  br i1 %281, label %282, label %283

282:                                              ; preds = %279
  call fastcc void @string_prepend(ptr noundef nonnull %4, ptr noundef nonnull @.str.184)
  store i32 0, ptr %7, align 4, !tbaa !98
  br label %287

283:                                              ; preds = %279
  %284 = load i32, ptr %13, align 4, !tbaa !101
  %285 = icmp eq i32 %284, 1
  br i1 %285, label %286, label %287

286:                                              ; preds = %283
  call fastcc void @string_prepend(ptr noundef nonnull %4, ptr noundef nonnull @.str.185)
  store i32 0, ptr %13, align 4, !tbaa !101
  br label %287

287:                                              ; preds = %282, %286, %283, %278
  call fastcc void @delete_non_B_K_work_stuff(ptr noundef nonnull %0)
  br i1 %275, label %288, label %292

288:                                              ; preds = %287
  %289 = load ptr, ptr %4, align 8, !tbaa !57
  %290 = icmp eq ptr %289, null
  br i1 %290, label %297, label %291

291:                                              ; preds = %288
  call void @free(ptr noundef %289)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %297

292:                                              ; preds = %287
  call fastcc void @string_need(ptr noundef nonnull %4, i32 noundef 1)
  %293 = load ptr, ptr %19, align 8, !tbaa !59
  store i8 0, ptr %293, align 1
  %294 = load ptr, ptr %19, align 8, !tbaa !59
  %295 = getelementptr inbounds i8, ptr %294, i64 1
  store ptr %295, ptr %19, align 8, !tbaa !59
  %296 = load ptr, ptr %4, align 8, !tbaa !57
  br label %297

297:                                              ; preds = %292, %291, %288, %15, %2
  %298 = phi ptr [ null, %15 ], [ null, %2 ], [ %296, %292 ], [ null, %288 ], [ null, %291 ]
  store i32 %6, ptr %5, align 8, !tbaa !97
  store i32 %8, ptr %7, align 4, !tbaa !98
  store i32 %10, ptr %9, align 8, !tbaa !99
  store i32 %12, ptr %11, align 8, !tbaa !100
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  ret ptr %298
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #11

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @gnu_special(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 !prof !34 {
  %4 = alloca [50 x i8], align 16
  %5 = load ptr, ptr %1, align 8, !tbaa !35
  %6 = load i8, ptr %5, align 1, !tbaa !47
  %7 = icmp eq i8 %6, 95
  br i1 %7, label %8, label %258

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %5, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !47
  %11 = sext i8 %10 to i32
  %12 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @cplus_markers, i32 noundef %11)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds i8, ptr %5, i64 2
  %16 = load i8, ptr %15, align 1, !tbaa !47
  %17 = icmp eq i8 %16, 95
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %5, i64 3
  store ptr %19, ptr %1, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 11
  %21 = load i32, ptr %20, align 4, !tbaa !98
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 4, !tbaa !98
  br label %340

23:                                               ; preds = %14, %8
  br i1 %7, label %24, label %258

24:                                               ; preds = %23
  %25 = getelementptr inbounds i8, ptr %5, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !47
  switch i8 %26, label %140 [
    i8 95, label %27
    i8 118, label %41
  ]

27:                                               ; preds = %24
  %28 = getelementptr inbounds i8, ptr %5, i64 2
  %29 = load i8, ptr %28, align 1, !tbaa !47
  %30 = icmp eq i8 %29, 118
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %5, i64 3
  %33 = load i8, ptr %32, align 1, !tbaa !47
  %34 = icmp eq i8 %33, 116
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %5, i64 4
  %37 = load i8, ptr %36, align 1, !tbaa !47
  %38 = icmp eq i8 %37, 95
  br i1 %38, label %51, label %39

39:                                               ; preds = %35, %31, %27
  %40 = icmp eq i8 %26, 118
  br i1 %40, label %41, label %140

41:                                               ; preds = %24, %39
  %42 = getelementptr inbounds i8, ptr %5, i64 2
  %43 = load i8, ptr %42, align 1, !tbaa !47
  %44 = icmp eq i8 %43, 116
  br i1 %44, label %45, label %140

45:                                               ; preds = %41
  %46 = getelementptr inbounds i8, ptr %5, i64 3
  %47 = load i8, ptr %46, align 1, !tbaa !47
  %48 = sext i8 %47 to i32
  %49 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @cplus_markers, i32 noundef %48)
  %50 = icmp eq ptr %49, null
  br i1 %50, label %140, label %51

51:                                               ; preds = %45, %35
  %52 = getelementptr inbounds i8, ptr %5, i64 2
  %53 = load i8, ptr %52, align 1, !tbaa !47
  %54 = icmp eq i8 %53, 118
  %55 = select i1 %54, i64 5, i64 4
  %56 = getelementptr inbounds i8, ptr %5, i64 %55
  store ptr %56, ptr %1, align 8, !tbaa !35
  br label %57

57:                                               ; preds = %128, %51
  %58 = phi i32 [ 1, %51 ], [ %119, %128 ]
  %59 = load ptr, ptr %1, align 8, !tbaa !35
  %60 = load i8, ptr %59, align 1, !tbaa !47
  switch i8 %60, label %65 [
    i8 0, label %136
    i8 81, label %61
    i8 75, label %61
    i8 116, label %63
  ]

61:                                               ; preds = %57, %57
  %62 = tail call fastcc i32 @demangle_qualified(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %118

63:                                               ; preds = %57
  %64 = tail call fastcc i32 @demangle_template(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef null, i32 noundef 1, i32 noundef 1)
  br label %118

65:                                               ; preds = %57
  %66 = zext i8 %60 to i64
  %67 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %66
  %68 = load i16, ptr %67, align 2, !tbaa !60
  %69 = and i16 %68, 4
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %101, label %71

71:                                               ; preds = %65
  %72 = load ptr, ptr %1, align 8, !tbaa !35
  %73 = load i8, ptr %72, align 1, !tbaa !47
  %74 = zext i8 %73 to i64
  %75 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %74
  %76 = load i16, ptr %75, align 2, !tbaa !60
  %77 = and i16 %76, 4
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %94, label %79

79:                                               ; preds = %71, %79
  %80 = phi i8 [ %88, %79 ], [ %73, %71 ]
  %81 = phi i32 [ %86, %79 ], [ 0, %71 ]
  %82 = phi ptr [ %87, %79 ], [ %72, %71 ]
  %83 = mul nsw i32 %81, 10
  %84 = sext i8 %80 to i32
  %85 = add i32 %83, -48
  %86 = add i32 %85, %84
  %87 = getelementptr inbounds i8, ptr %82, i64 1
  store ptr %87, ptr %1, align 8, !tbaa !35
  %88 = load i8, ptr %87, align 1, !tbaa !47
  %89 = zext i8 %88 to i64
  %90 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %89
  %91 = load i16, ptr %90, align 2, !tbaa !60
  %92 = and i16 %91, 4
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %94, label %79, !llvm.loop !71

94:                                               ; preds = %79, %71
  %95 = phi i32 [ 0, %71 ], [ %86, %79 ]
  %96 = phi ptr [ %72, %71 ], [ %87, %79 ]
  %97 = tail call i32 @llvm.smax.i32(i32 %95, i32 -1)
  %98 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %96)
  %99 = trunc i64 %98 to i32
  %100 = icmp sgt i32 %97, %99
  br i1 %100, label %118, label %104

101:                                              ; preds = %65
  %102 = tail call i64 @strcspn(ptr noundef nonnull %59, ptr noundef nonnull @cplus_markers)
  %103 = trunc i64 %102 to i32
  br label %104

104:                                              ; preds = %94, %101
  %105 = phi i32 [ %97, %94 ], [ %103, %101 ]
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %109 = load ptr, ptr %1, align 8, !tbaa !35
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef %105)
  %110 = load ptr, ptr %108, align 8, !tbaa !59
  %111 = sext i32 %105 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %110, ptr align 1 %109, i64 %111, i1 false)
  %112 = load ptr, ptr %108, align 8, !tbaa !59
  %113 = getelementptr inbounds i8, ptr %112, i64 %111
  store ptr %113, ptr %108, align 8, !tbaa !59
  br label %114

114:                                              ; preds = %104, %107
  %115 = load ptr, ptr %1, align 8, !tbaa !35
  %116 = sext i32 %105 to i64
  %117 = getelementptr inbounds i8, ptr %115, i64 %116
  store ptr %117, ptr %1, align 8, !tbaa !35
  br label %118

118:                                              ; preds = %94, %114, %63, %61
  %119 = phi i32 [ %58, %114 ], [ %64, %63 ], [ %62, %61 ], [ 1, %94 ]
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %136, label %121

121:                                              ; preds = %118
  %122 = load ptr, ptr %1, align 8, !tbaa !35
  %123 = tail call ptr @strpbrk(ptr noundef %122, ptr noundef nonnull @cplus_markers)
  %124 = icmp eq ptr %123, null
  %125 = icmp eq ptr %123, %122
  %126 = or i1 %124, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %121
  br i1 %124, label %128, label %129

128:                                              ; preds = %127, %129
  br label %57, !llvm.loop !104

129:                                              ; preds = %127
  %130 = load i32, ptr %0, align 8, !tbaa !54
  %131 = and i32 %130, 4
  %132 = icmp eq i32 %131, 0
  %133 = select i1 %132, ptr @.str.187, ptr @.str.186
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull %133)
  %134 = load ptr, ptr %1, align 8, !tbaa !35
  %135 = getelementptr inbounds i8, ptr %134, i64 1
  store ptr %135, ptr %1, align 8, !tbaa !35
  br label %128

136:                                              ; preds = %118, %121, %57
  %137 = phi i32 [ %58, %57 ], [ 0, %121 ], [ 0, %118 ]
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %340, label %139

139:                                              ; preds = %136
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.188)
  br label %340

140:                                              ; preds = %24, %45, %41, %39
  br i1 %7, label %141, label %258

141:                                              ; preds = %140
  %142 = getelementptr inbounds i8, ptr %5, i64 1
  %143 = load i8, ptr %142, align 1, !tbaa !47
  %144 = sext i8 %143 to i32
  %145 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.189, i32 %144, i64 13)
  %146 = icmp eq ptr %145, null
  br i1 %146, label %258, label %147

147:                                              ; preds = %141
  %148 = tail call ptr @strpbrk(ptr noundef nonnull %5, ptr noundef nonnull @cplus_markers)
  %149 = icmp eq ptr %148, null
  br i1 %149, label %258, label %150

150:                                              ; preds = %147
  store ptr %142, ptr %1, align 8, !tbaa !35
  %151 = load i8, ptr %142, align 1, !tbaa !47
  switch i8 %151, label %156 [
    i8 81, label %152
    i8 75, label %152
    i8 116, label %154
  ]

152:                                              ; preds = %150, %150
  %153 = tail call fastcc i32 @demangle_qualified(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %229

154:                                              ; preds = %150
  %155 = tail call fastcc i32 @demangle_template(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef null, i32 noundef 1, i32 noundef 1)
  br label %229

156:                                              ; preds = %150
  %157 = zext i8 %151 to i64
  %158 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %157
  %159 = load i16, ptr %158, align 2, !tbaa !60
  %160 = and i16 %159, 4
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %188, label %162

162:                                              ; preds = %156
  %163 = load ptr, ptr %1, align 8, !tbaa !35
  %164 = load i8, ptr %163, align 1, !tbaa !47
  %165 = zext i8 %164 to i64
  %166 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %165
  %167 = load i16, ptr %166, align 2, !tbaa !60
  %168 = and i16 %167, 4
  %169 = icmp eq i16 %168, 0
  br i1 %169, label %185, label %170

170:                                              ; preds = %162, %170
  %171 = phi i8 [ %179, %170 ], [ %164, %162 ]
  %172 = phi i32 [ %177, %170 ], [ 0, %162 ]
  %173 = phi ptr [ %178, %170 ], [ %163, %162 ]
  %174 = mul nsw i32 %172, 10
  %175 = sext i8 %171 to i32
  %176 = add i32 %174, -48
  %177 = add i32 %176, %175
  %178 = getelementptr inbounds i8, ptr %173, i64 1
  store ptr %178, ptr %1, align 8, !tbaa !35
  %179 = load i8, ptr %178, align 1, !tbaa !47
  %180 = zext i8 %179 to i64
  %181 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %180
  %182 = load i16, ptr %181, align 2, !tbaa !60
  %183 = and i16 %182, 4
  %184 = icmp eq i16 %183, 0
  br i1 %184, label %185, label %170, !llvm.loop !71

185:                                              ; preds = %170, %162
  %186 = phi i32 [ 0, %162 ], [ %177, %170 ]
  %187 = tail call i32 @llvm.smax.i32(i32 %186, i32 -1)
  br label %188

188:                                              ; preds = %156, %185
  %189 = phi i32 [ %187, %185 ], [ -1, %156 ]
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %229, label %191

191:                                              ; preds = %188
  %192 = zext nneg i32 %189 to i64
  %193 = load ptr, ptr %1, align 8, !tbaa !35
  %194 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %193)
  %195 = icmp slt i64 %194, %192
  br i1 %195, label %229, label %196

196:                                              ; preds = %191
  %197 = icmp sgt i32 %189, 10
  br i1 %197, label %198, label %219

198:                                              ; preds = %196
  %199 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %193, ptr noundef nonnull dereferenceable(9) @.str.190, i64 noundef 8)
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %219

201:                                              ; preds = %198
  %202 = getelementptr inbounds i8, ptr %193, i64 9
  %203 = load i8, ptr %202, align 1, !tbaa !47
  %204 = icmp eq i8 %203, 78
  br i1 %204, label %205, label %219

205:                                              ; preds = %201
  %206 = getelementptr inbounds i8, ptr %193, i64 8
  %207 = load i8, ptr %206, align 1, !tbaa !47
  %208 = getelementptr inbounds i8, ptr %193, i64 10
  %209 = load i8, ptr %208, align 1, !tbaa !47
  %210 = icmp eq i8 %207, %209
  br i1 %210, label %211, label %219

211:                                              ; preds = %205
  %212 = sext i8 %207 to i32
  %213 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @cplus_markers, i32 noundef %212)
  %214 = icmp eq ptr %213, null
  br i1 %214, label %219, label %215

215:                                              ; preds = %211
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.191)
  %216 = load ptr, ptr %1, align 8, !tbaa !35
  %217 = getelementptr inbounds i8, ptr %216, i64 %192
  store ptr %217, ptr %1, align 8, !tbaa !35
  %218 = tail call ptr @strpbrk(ptr noundef nonnull %217, ptr noundef nonnull @cplus_markers)
  br label %229

219:                                              ; preds = %211, %205, %201, %198, %196
  %220 = icmp eq i32 %189, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %219
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef %189)
  %222 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %223, ptr align 1 %193, i64 %192, i1 false)
  %224 = load ptr, ptr %222, align 8, !tbaa !59
  %225 = getelementptr inbounds i8, ptr %224, i64 %192
  store ptr %225, ptr %222, align 8, !tbaa !59
  br label %226

226:                                              ; preds = %219, %221
  %227 = load ptr, ptr %1, align 8, !tbaa !35
  %228 = getelementptr inbounds i8, ptr %227, i64 %192
  store ptr %228, ptr %1, align 8, !tbaa !35
  br label %229

229:                                              ; preds = %188, %191, %226, %215, %154, %152
  %230 = phi ptr [ %218, %215 ], [ %148, %226 ], [ %148, %154 ], [ %148, %152 ], [ %148, %191 ], [ %148, %188 ]
  %231 = phi i32 [ 1, %215 ], [ 1, %226 ], [ %155, %154 ], [ %153, %152 ], [ 0, %191 ], [ 0, %188 ]
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %340, label %233

233:                                              ; preds = %229
  %234 = load ptr, ptr %1, align 8, !tbaa !35
  %235 = icmp eq ptr %230, %234
  br i1 %235, label %236, label %340

236:                                              ; preds = %233
  %237 = getelementptr inbounds i8, ptr %234, i64 1
  store ptr %237, ptr %1, align 8, !tbaa !35
  %238 = load i32, ptr %0, align 8, !tbaa !54
  %239 = and i32 %238, 4
  %240 = icmp eq i32 %239, 0
  %241 = select i1 %240, ptr @.str.187, ptr @.str.186
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull %241)
  %242 = load ptr, ptr %1, align 8, !tbaa !35
  %243 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %242)
  %244 = trunc i64 %243 to i32
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %253, label %246

246:                                              ; preds = %236
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef %244)
  %247 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !59
  %249 = shl i64 %243, 32
  %250 = ashr exact i64 %249, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %248, ptr align 1 %242, i64 %250, i1 false)
  %251 = load ptr, ptr %247, align 8, !tbaa !59
  %252 = getelementptr inbounds i8, ptr %251, i64 %250
  store ptr %252, ptr %247, align 8, !tbaa !59
  br label %253

253:                                              ; preds = %236, %246
  %254 = load ptr, ptr %1, align 8, !tbaa !35
  %255 = shl i64 %243, 32
  %256 = ashr exact i64 %255, 32
  %257 = getelementptr inbounds i8, ptr %254, i64 %256
  store ptr %257, ptr %1, align 8, !tbaa !35
  br label %340

258:                                              ; preds = %3, %23, %147, %141, %140
  %259 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(9) @.str.192, i64 noundef 8)
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %311

261:                                              ; preds = %258
  %262 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %262, ptr %1, align 8, !tbaa !35
  %263 = load i8, ptr %262, align 1, !tbaa !47
  %264 = zext i8 %263 to i64
  %265 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %264
  %266 = load i16, ptr %265, align 2, !tbaa !60
  %267 = and i16 %266, 4
  %268 = icmp eq i16 %267, 0
  br i1 %268, label %295, label %269

269:                                              ; preds = %261
  %270 = load ptr, ptr %1, align 8, !tbaa !35
  %271 = load i8, ptr %270, align 1, !tbaa !47
  %272 = zext i8 %271 to i64
  %273 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %272
  %274 = load i16, ptr %273, align 2, !tbaa !60
  %275 = and i16 %274, 4
  %276 = icmp eq i16 %275, 0
  br i1 %276, label %292, label %277

277:                                              ; preds = %269, %277
  %278 = phi i8 [ %286, %277 ], [ %271, %269 ]
  %279 = phi i32 [ %284, %277 ], [ 0, %269 ]
  %280 = phi ptr [ %285, %277 ], [ %270, %269 ]
  %281 = mul nsw i32 %279, 10
  %282 = sext i8 %278 to i32
  %283 = add i32 %281, -48
  %284 = add i32 %283, %282
  %285 = getelementptr inbounds i8, ptr %280, i64 1
  store ptr %285, ptr %1, align 8, !tbaa !35
  %286 = load i8, ptr %285, align 1, !tbaa !47
  %287 = zext i8 %286 to i64
  %288 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %287
  %289 = load i16, ptr %288, align 2, !tbaa !60
  %290 = and i16 %289, 4
  %291 = icmp eq i16 %290, 0
  br i1 %291, label %292, label %277, !llvm.loop !71

292:                                              ; preds = %277, %269
  %293 = phi i32 [ 0, %269 ], [ %284, %277 ]
  %294 = tail call i32 @llvm.smax.i32(i32 %293, i32 -1)
  br label %295

295:                                              ; preds = %261, %292
  %296 = phi i32 [ %294, %292 ], [ -1, %261 ]
  %297 = icmp eq i32 %296, -1
  br i1 %297, label %340, label %298

298:                                              ; preds = %295
  %299 = load ptr, ptr %1, align 8, !tbaa !35
  %300 = getelementptr inbounds i8, ptr %299, i64 1
  store ptr %300, ptr %1, align 8, !tbaa !35
  %301 = tail call fastcc ptr @internal_cplus_demangle(ptr noundef %0, ptr noundef nonnull %300)
  %302 = icmp eq ptr %301, null
  br i1 %302, label %340, label %303

303:                                              ; preds = %298
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %4) #23
  %304 = sub nsw i32 0, %296
  %305 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.193, i32 noundef %304)
  call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull %4)
  call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull %301)
  call void @free(ptr noundef %301)
  %306 = load ptr, ptr %1, align 8, !tbaa !35
  %307 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %306)
  %308 = shl i64 %307, 32
  %309 = ashr exact i64 %308, 32
  %310 = getelementptr inbounds i8, ptr %306, i64 %309
  store ptr %310, ptr %1, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %4) #23
  br label %340

311:                                              ; preds = %258
  %312 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.194, i64 noundef 3)
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %340

314:                                              ; preds = %311
  %315 = getelementptr inbounds i8, ptr %5, i64 3
  %316 = load i8, ptr %315, align 1, !tbaa !47
  switch i8 %316, label %340 [
    i8 105, label %317
    i8 102, label %317
  ]

317:                                              ; preds = %314, %314
  %318 = icmp eq i8 %316, 105
  %319 = select i1 %318, ptr @.str.195, ptr @.str.196
  %320 = getelementptr inbounds i8, ptr %5, i64 4
  store ptr %320, ptr %1, align 8, !tbaa !35
  %321 = load i8, ptr %320, align 1, !tbaa !47
  switch i8 %321, label %326 [
    i8 81, label %322
    i8 75, label %322
    i8 116, label %324
  ]

322:                                              ; preds = %317, %317
  %323 = tail call fastcc i32 @demangle_qualified(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %328

324:                                              ; preds = %317
  %325 = tail call fastcc i32 @demangle_template(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef null, i32 noundef 1, i32 noundef 1)
  br label %328

326:                                              ; preds = %317
  %327 = tail call fastcc i32 @do_type(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2), !range !56
  br label %328

328:                                              ; preds = %326, %324, %322
  %329 = phi i32 [ %327, %326 ], [ %325, %324 ], [ %323, %322 ]
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %336, label %331

331:                                              ; preds = %328
  %332 = load ptr, ptr %1, align 8, !tbaa !35
  %333 = load i8, ptr %332, align 1, !tbaa !47
  %334 = icmp eq i8 %333, 0
  %335 = select i1 %334, i32 %329, i32 0
  br label %336

336:                                              ; preds = %331, %328
  %337 = phi i32 [ 0, %328 ], [ %335, %331 ]
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %340, label %339

339:                                              ; preds = %336
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull %319)
  br label %340

340:                                              ; preds = %311, %314, %295, %298, %303, %229, %233, %139, %136, %336, %339, %253, %18
  %341 = phi i32 [ 1, %18 ], [ %137, %139 ], [ 0, %136 ], [ %231, %253 ], [ %337, %339 ], [ 0, %336 ], [ 0, %233 ], [ 0, %229 ], [ 0, %295 ], [ 1, %303 ], [ 0, %298 ], [ 0, %314 ], [ 0, %311 ]
  ret i32 %341
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @demangle_signature(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 !prof !34 {
  %4 = alloca %struct.string, align 8
  %5 = alloca %struct.string, align 8
  %6 = alloca %struct.string, align 8
  %7 = alloca %struct.string, align 8
  %8 = alloca %struct.string, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #23
  %9 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 14
  %10 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 13
  %11 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 12
  br label %12

12:                                               ; preds = %3, %375
  %13 = phi i1 [ false, %3 ], [ %379, %375 ]
  %14 = phi ptr [ null, %3 ], [ %345, %375 ]
  %15 = phi i32 [ 0, %3 ], [ %344, %375 ]
  %16 = phi i32 [ 0, %3 ], [ %378, %375 ]
  %17 = phi i32 [ 0, %3 ], [ %377, %375 ]
  %18 = phi i32 [ 1, %3 ], [ %376, %375 ]
  %19 = load ptr, ptr %1, align 8, !tbaa !35
  %20 = load i8, ptr %19, align 1, !tbaa !47
  switch i8 %20, label %334 [
    i8 0, label %380
    i8 81, label %21
    i8 75, label %35
    i8 83, label %41
    i8 72, label %321
    i8 95, label %283
    i8 116, label %206
    i8 76, label %54
    i8 48, label %67
    i8 49, label %67
    i8 50, label %67
    i8 51, label %67
    i8 52, label %67
    i8 53, label %67
    i8 54, label %67
    i8 55, label %67
    i8 56, label %67
    i8 57, label %67
    i8 66, label %152
    i8 70, label %164
    i8 67, label %47
    i8 86, label %45
    i8 117, label %46
  ]

21:                                               ; preds = %12
  %22 = call fastcc i32 @demangle_qualified(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 1, i32 noundef 0)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %1, align 8, !tbaa !35
  %26 = ptrtoint ptr %25 to i64
  %27 = ptrtoint ptr %19 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  call fastcc void @remember_type(ptr noundef %0, ptr noundef nonnull %19, i32 noundef %29)
  br label %30

30:                                               ; preds = %24, %21
  %31 = load i32, ptr %0, align 8, !tbaa !54
  %32 = and i32 %31, 768
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 %16, i32 1
  br label %340

35:                                               ; preds = %12
  %36 = call fastcc i32 @demangle_qualified(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 1, i32 noundef 0)
  %37 = load i32, ptr %0, align 8, !tbaa !54
  %38 = and i32 %37, 768
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 %16, i32 1
  br label %340

41:                                               ; preds = %12
  %42 = icmp eq ptr %14, null
  %43 = select i1 %42, ptr %19, ptr %14
  %44 = getelementptr inbounds i8, ptr %19, i64 1
  store ptr %44, ptr %1, align 8, !tbaa !35
  store i32 1, ptr %11, align 8, !tbaa !99
  br label %340

45:                                               ; preds = %12
  br label %47

46:                                               ; preds = %12
  br label %47

47:                                               ; preds = %12, %45, %46
  %48 = phi i32 [ 4, %46 ], [ 2, %45 ], [ 1, %12 ]
  %49 = load i32, ptr %9, align 8, !tbaa !100
  %50 = or i32 %49, %48
  store i32 %50, ptr %9, align 8, !tbaa !100
  %51 = icmp eq ptr %14, null
  %52 = select i1 %51, ptr %19, ptr %14
  %53 = getelementptr inbounds i8, ptr %19, i64 1
  store ptr %53, ptr %1, align 8, !tbaa !35
  br label %340

54:                                               ; preds = %12
  %55 = load i32, ptr %0, align 8, !tbaa !54
  %56 = and i32 %55, 4096
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %340, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %1, align 8, !tbaa !35
  br label %60

60:                                               ; preds = %58, %63
  %61 = phi ptr [ %59, %58 ], [ %64, %63 ]
  %62 = load i8, ptr %61, align 1, !tbaa !47
  switch i8 %62, label %63 [
    i8 0, label %340
    i8 95, label %65
  ]

63:                                               ; preds = %60
  %64 = getelementptr inbounds i8, ptr %61, i64 1
  store ptr %64, ptr %1, align 8, !tbaa !35
  br label %60, !llvm.loop !105

65:                                               ; preds = %60
  %66 = getelementptr inbounds i8, ptr %61, i64 1
  store ptr %66, ptr %1, align 8, !tbaa !35
  br label %340

67:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  %68 = icmp eq ptr %14, null
  %69 = select i1 %68, ptr %19, ptr %14
  store i32 -1, ptr %10, align 4, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %70 = call fastcc i32 @register_Btype(ptr noundef %0)
  %71 = call fastcc i32 @demangle_class_name(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %4), !range !68
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %131, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.string, ptr %4, i64 0, i32 1
  %75 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 10
  %76 = load ptr, ptr %74, align 8, !tbaa !59
  %77 = load i32, ptr %75, align 8, !tbaa !97
  %78 = and i32 %77, 1
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 11
  %82 = load i32, ptr %81, align 4, !tbaa !98
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %102, label %85

85:                                               ; preds = %80, %73
  %86 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 11
  %87 = load i32, ptr %10, align 4, !tbaa !106
  switch i32 %87, label %88 [
    i32 0, label %92
    i32 -1, label %92
  ]

88:                                               ; preds = %85
  %89 = load ptr, ptr %4, align 8, !tbaa !57
  %90 = sext i32 %87 to i64
  %91 = getelementptr inbounds i8, ptr %89, i64 %90
  store ptr %91, ptr %74, align 8, !tbaa !59
  br label %92

92:                                               ; preds = %85, %88, %85
  call fastcc void @string_prepends(ptr noundef %2, ptr noundef nonnull %4)
  %93 = load i32, ptr %86, align 4, !tbaa !98
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  call fastcc void @string_prepend(ptr noundef %2, ptr noundef nonnull @.str.139)
  %97 = load i32, ptr %86, align 4, !tbaa !98
  %98 = add nsw i32 %97, -1
  store i32 %98, ptr %86, align 4, !tbaa !98
  br label %102

99:                                               ; preds = %92
  %100 = load i32, ptr %75, align 8, !tbaa !97
  %101 = add nsw i32 %100, -1
  store i32 %101, ptr %75, align 8, !tbaa !97
  br label %102

102:                                              ; preds = %99, %96, %80
  %103 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 3
  store ptr %76, ptr %74, align 8, !tbaa !59
  %104 = load ptr, ptr %4, align 8
  %105 = icmp eq ptr %104, %76
  %106 = ptrtoint ptr %76 to i64
  %107 = ptrtoint ptr %104 to i64
  %108 = sub i64 %106, %107
  %109 = trunc i64 %108 to i32
  %110 = select i1 %105, i32 0, i32 %109
  call fastcc void @remember_Ktype(ptr noundef %0, ptr noundef %104, i32 noundef %110)
  %111 = load ptr, ptr %4, align 8
  %112 = load ptr, ptr %74, align 8
  %113 = icmp eq ptr %111, %112
  %114 = ptrtoint ptr %112 to i64
  %115 = ptrtoint ptr %111 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  %118 = select i1 %113, i32 0, i32 %117
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = call ptr @xmalloc(i64 noundef %120) #23
  %122 = sext i32 %118 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %121, ptr align 1 %111, i64 %122, i1 false)
  %123 = getelementptr inbounds i8, ptr %121, i64 %122
  store i8 0, ptr %123, align 1, !tbaa !47
  %124 = load ptr, ptr %103, align 8, !tbaa !75
  %125 = sext i32 %70 to i64
  %126 = getelementptr inbounds ptr, ptr %124, i64 %125
  store ptr %121, ptr %126, align 8, !tbaa !35
  %127 = load i32, ptr %0, align 8, !tbaa !54
  %128 = and i32 %127, 4
  %129 = icmp eq i32 %128, 0
  %130 = select i1 %129, ptr @.str.187, ptr @.str.186
  call fastcc void @string_prepend(ptr noundef %2, ptr noundef nonnull %130)
  call fastcc void @string_prepends(ptr noundef %2, ptr noundef nonnull %4)
  br label %131

131:                                              ; preds = %67, %102
  %132 = phi i32 [ 1, %102 ], [ 0, %67 ]
  %133 = load ptr, ptr %4, align 8, !tbaa !57
  %134 = icmp eq ptr %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %131
  call void @free(ptr noundef %133)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %136

136:                                              ; preds = %131, %135
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  br i1 %72, label %143, label %137

137:                                              ; preds = %136
  %138 = load ptr, ptr %1, align 8, !tbaa !35
  %139 = ptrtoint ptr %138 to i64
  %140 = ptrtoint ptr %69 to i64
  %141 = sub i64 %139, %140
  %142 = trunc i64 %141 to i32
  call fastcc void @remember_type(ptr noundef %0, ptr noundef nonnull %69, i32 noundef %142)
  br label %143

143:                                              ; preds = %137, %136
  %144 = load i32, ptr %0, align 8, !tbaa !54
  %145 = and i32 %144, 8960
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %340, label %147

147:                                              ; preds = %143
  %148 = load ptr, ptr %1, align 8, !tbaa !35
  %149 = load i8, ptr %148, align 1, !tbaa !47
  %150 = icmp eq i8 %149, 70
  %151 = select i1 %150, i32 %16, i32 1
  br label %340

152:                                              ; preds = %12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #23
  %153 = call fastcc i32 @do_type(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %7), !range !56
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %163, label %155

155:                                              ; preds = %152
  %156 = load i32, ptr %0, align 8, !tbaa !54
  %157 = and i32 %156, 4
  %158 = icmp eq i32 %157, 0
  %159 = select i1 %158, ptr @.str.187, ptr @.str.186
  call fastcc void @string_append(ptr noundef nonnull %7, ptr noundef nonnull %159)
  call fastcc void @string_prepends(ptr noundef %2, ptr noundef nonnull %7)
  %160 = load ptr, ptr %7, align 8, !tbaa !57
  %161 = icmp eq ptr %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %155
  call void @free(ptr noundef %160)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %163

163:                                              ; preds = %162, %155, %152
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #23
  br label %340

164:                                              ; preds = %12
  %165 = getelementptr inbounds i8, ptr %19, i64 1
  store ptr %165, ptr %1, align 8, !tbaa !35
  %166 = load i32, ptr %0, align 8, !tbaa !54
  %167 = and i32 %166, 15360
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %189, label %169

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 8
  %171 = load i32, ptr %170, align 8, !tbaa !69
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %189

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 1
  br label %175

175:                                              ; preds = %173, %186
  %176 = phi i32 [ %187, %186 ], [ %171, %173 ]
  %177 = add nsw i32 %176, -1
  store i32 %177, ptr %170, align 8, !tbaa !69
  %178 = load ptr, ptr %174, align 8, !tbaa !70
  %179 = zext nneg i32 %177 to i64
  %180 = getelementptr inbounds ptr, ptr %178, i64 %179
  %181 = load ptr, ptr %180, align 8, !tbaa !35
  %182 = icmp eq ptr %181, null
  br i1 %182, label %186, label %183

183:                                              ; preds = %175
  call void @free(ptr noundef %181)
  %184 = load ptr, ptr %174, align 8, !tbaa !70
  %185 = getelementptr inbounds ptr, ptr %184, i64 %179
  store ptr null, ptr %185, align 8, !tbaa !35
  br label %186

186:                                              ; preds = %183, %175
  %187 = load i32, ptr %170, align 8, !tbaa !69
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %175, label %189, !llvm.loop !107

189:                                              ; preds = %186, %169, %164
  %190 = call fastcc i32 @demangle_args(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2), !range !68
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %340, label %192

192:                                              ; preds = %189
  %193 = load i32, ptr %0, align 8, !tbaa !54
  %194 = and i32 %193, 8448
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %340, label %196

196:                                              ; preds = %192
  %197 = load ptr, ptr %1, align 8, !tbaa !35
  %198 = load i8, ptr %197, align 1, !tbaa !47
  %199 = icmp eq i8 %198, 95
  br i1 %199, label %200, label %340

200:                                              ; preds = %196
  %201 = getelementptr inbounds i8, ptr %197, i64 1
  store ptr %201, ptr %1, align 8, !tbaa !35
  %202 = call fastcc i32 @do_type(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %6), !range !56
  %203 = load ptr, ptr %6, align 8, !tbaa !57
  %204 = icmp eq ptr %203, null
  br i1 %204, label %340, label %205

205:                                              ; preds = %200
  call void @free(ptr noundef %203)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br label %340

206:                                              ; preds = %12
  %207 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 11
  %208 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %209 = call fastcc i32 @demangle_template(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 1)
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %219, label %211

211:                                              ; preds = %206
  %212 = icmp eq ptr %14, null
  %213 = select i1 %212, ptr %19, ptr %14
  %214 = load ptr, ptr %1, align 8, !tbaa !35
  %215 = ptrtoint ptr %214 to i64
  %216 = ptrtoint ptr %213 to i64
  %217 = sub i64 %215, %216
  %218 = trunc i64 %217 to i32
  call fastcc void @remember_type(ptr noundef %0, ptr noundef nonnull %213, i32 noundef %218)
  br label %219

219:                                              ; preds = %211, %206
  %220 = load i32, ptr %0, align 8, !tbaa !54
  %221 = and i32 %220, 4
  %222 = icmp eq i32 %221, 0
  %223 = select i1 %222, ptr @.str.187, ptr @.str.186
  call fastcc void @string_append(ptr noundef nonnull %6, ptr noundef nonnull %223)
  call fastcc void @string_prepends(ptr noundef %2, ptr noundef nonnull %6)
  %224 = load i32, ptr %207, align 4, !tbaa !98
  %225 = and i32 %224, 1
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %247, label %227

227:                                              ; preds = %219
  %228 = getelementptr inbounds %struct.string, ptr %5, i64 0, i32 1
  call fastcc void @string_prepend(ptr noundef nonnull %5, ptr noundef nonnull @.str.139)
  %229 = load ptr, ptr %5, align 8, !tbaa !57
  %230 = load ptr, ptr %228, align 8, !tbaa !59
  %231 = icmp eq ptr %229, %230
  br i1 %231, label %244, label %232

232:                                              ; preds = %227
  %233 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %234 = ptrtoint ptr %230 to i64
  %235 = ptrtoint ptr %229 to i64
  %236 = sub i64 %234, %235
  %237 = trunc i64 %236 to i32
  call fastcc void @string_need(ptr noundef %2, i32 noundef %237)
  %238 = load ptr, ptr %233, align 8, !tbaa !59
  %239 = load ptr, ptr %5, align 8, !tbaa !57
  %240 = shl i64 %236, 32
  %241 = ashr exact i64 %240, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %238, ptr align 1 %239, i64 %241, i1 false)
  %242 = load ptr, ptr %233, align 8, !tbaa !59
  %243 = getelementptr inbounds i8, ptr %242, i64 %241
  store ptr %243, ptr %233, align 8, !tbaa !59
  br label %244

244:                                              ; preds = %227, %232
  %245 = load i32, ptr %207, align 4, !tbaa !98
  %246 = add nsw i32 %245, -1
  store i32 %246, ptr %207, align 4, !tbaa !98
  br label %247

247:                                              ; preds = %244, %219
  %248 = load i32, ptr %208, align 8, !tbaa !97
  %249 = and i32 %248, 1
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %247
  %252 = load i32, ptr %207, align 4, !tbaa !98
  %253 = and i32 %252, 1
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %275, label %255

255:                                              ; preds = %251, %247
  %256 = getelementptr inbounds %struct.string, ptr %5, i64 0, i32 1
  %257 = load ptr, ptr %5, align 8, !tbaa !57
  %258 = load ptr, ptr %256, align 8, !tbaa !59
  %259 = icmp eq ptr %257, %258
  br i1 %259, label %272, label %260

260:                                              ; preds = %255
  %261 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %262 = ptrtoint ptr %258 to i64
  %263 = ptrtoint ptr %257 to i64
  %264 = sub i64 %262, %263
  %265 = trunc i64 %264 to i32
  call fastcc void @string_need(ptr noundef %2, i32 noundef %265)
  %266 = load ptr, ptr %261, align 8, !tbaa !59
  %267 = load ptr, ptr %5, align 8, !tbaa !57
  %268 = shl i64 %264, 32
  %269 = ashr exact i64 %268, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %266, ptr align 1 %267, i64 %269, i1 false)
  %270 = load ptr, ptr %261, align 8, !tbaa !59
  %271 = getelementptr inbounds i8, ptr %270, i64 %269
  store ptr %271, ptr %261, align 8, !tbaa !59
  br label %272

272:                                              ; preds = %255, %260
  %273 = load i32, ptr %208, align 8, !tbaa !97
  %274 = add nsw i32 %273, -1
  store i32 %274, ptr %208, align 8, !tbaa !97
  br label %275

275:                                              ; preds = %272, %251
  %276 = load ptr, ptr %5, align 8, !tbaa !57
  %277 = icmp eq ptr %276, null
  br i1 %277, label %279, label %278

278:                                              ; preds = %275
  call void @free(ptr noundef %276)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %279

279:                                              ; preds = %275, %278
  %280 = load ptr, ptr %6, align 8, !tbaa !57
  %281 = icmp eq ptr %280, null
  br i1 %281, label %340, label %282

282:                                              ; preds = %279
  call void @free(ptr noundef %280)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br label %340

283:                                              ; preds = %12
  %284 = load i32, ptr %0, align 8, !tbaa !54
  %285 = and i32 %284, 256
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %283
  %288 = and i32 %284, 512
  %289 = icmp ne i32 %288, 0
  %290 = icmp ne i32 %15, 0
  %291 = select i1 %289, i1 %290, i1 false
  br i1 %291, label %294, label %307

292:                                              ; preds = %283
  %293 = icmp eq i32 %15, 0
  br i1 %293, label %307, label %294

294:                                              ; preds = %287, %292
  %295 = getelementptr inbounds %struct.string, ptr %8, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #23
  %296 = getelementptr inbounds i8, ptr %19, i64 1
  store ptr %296, ptr %1, align 8, !tbaa !35
  %297 = call fastcc i32 @do_type(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %8), !range !56
  %298 = load ptr, ptr %8, align 8, !tbaa !57
  %299 = load ptr, ptr %295, align 8, !tbaa !59
  %300 = icmp eq ptr %298, %299
  br i1 %300, label %302, label %301

301:                                              ; preds = %294
  call fastcc void @string_append(ptr noundef nonnull %8, ptr noundef nonnull @.str.198)
  br label %302

302:                                              ; preds = %301, %294
  call fastcc void @string_prepends(ptr noundef %2, ptr noundef nonnull %8)
  %303 = load ptr, ptr %8, align 8, !tbaa !57
  %304 = icmp eq ptr %303, null
  br i1 %304, label %306, label %305

305:                                              ; preds = %302
  call void @free(ptr noundef %303)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br label %306

306:                                              ; preds = %302, %305
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #23
  br label %340

307:                                              ; preds = %292, %287
  %308 = and i32 %284, 4096
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %340, label %310

310:                                              ; preds = %307, %315
  %311 = phi ptr [ %312, %315 ], [ %19, %307 ]
  %312 = getelementptr inbounds i8, ptr %311, i64 1
  store ptr %312, ptr %1, align 8, !tbaa !35
  %313 = load i8, ptr %312, align 1, !tbaa !47
  %314 = icmp eq i8 %313, 0
  br i1 %314, label %340, label %315

315:                                              ; preds = %310
  %316 = zext i8 %313 to i64
  %317 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %316
  %318 = load i16, ptr %317, align 2, !tbaa !60
  %319 = and i16 %318, 4
  %320 = icmp eq i16 %319, 0
  br i1 %320, label %340, label %310, !llvm.loop !108

321:                                              ; preds = %12
  %322 = load i32, ptr %0, align 8, !tbaa !54
  %323 = and i32 %322, 768
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %334, label %325

325:                                              ; preds = %321
  %326 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 10
  %327 = call fastcc i32 @demangle_template(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %328 = load i32, ptr %326, align 8, !tbaa !97
  %329 = and i32 %328, 1
  %330 = icmp eq i32 %329, 0
  %331 = select i1 %330, i32 1, i32 %15
  %332 = load ptr, ptr %1, align 8, !tbaa !35
  %333 = getelementptr inbounds i8, ptr %332, i64 1
  store ptr %333, ptr %1, align 8, !tbaa !35
  br label %340

334:                                              ; preds = %12, %321
  %335 = load i32, ptr %0, align 8, !tbaa !54
  %336 = and i32 %335, 768
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %340, label %338

338:                                              ; preds = %334
  %339 = call fastcc i32 @demangle_args(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2), !range !68
  br label %340

340:                                              ; preds = %60, %315, %310, %334, %282, %279, %205, %200, %147, %307, %192, %143, %54, %338, %189, %196, %65, %325, %306, %163, %47, %41, %35, %30
  %341 = phi i32 [ %339, %338 ], [ %327, %325 ], [ %297, %306 ], [ 1, %196 ], [ 0, %189 ], [ %153, %163 ], [ %18, %65 ], [ %18, %47 ], [ %18, %41 ], [ %36, %35 ], [ %22, %30 ], [ 0, %54 ], [ %132, %143 ], [ %132, %147 ], [ 1, %192 ], [ 0, %307 ], [ %202, %200 ], [ %202, %205 ], [ %209, %279 ], [ %209, %282 ], [ 0, %334 ], [ %18, %310 ], [ %18, %315 ], [ 0, %60 ]
  %342 = phi i32 [ 1, %338 ], [ %17, %325 ], [ %17, %306 ], [ 1, %196 ], [ 1, %189 ], [ %17, %163 ], [ %17, %65 ], [ %17, %47 ], [ %17, %41 ], [ %17, %35 ], [ %17, %30 ], [ %17, %54 ], [ %17, %143 ], [ %17, %147 ], [ 1, %192 ], [ %17, %307 ], [ 1, %200 ], [ 1, %205 ], [ %17, %279 ], [ %17, %282 ], [ %17, %334 ], [ %17, %310 ], [ %17, %315 ], [ %17, %60 ]
  %343 = phi i32 [ %16, %338 ], [ %16, %325 ], [ %16, %306 ], [ %16, %196 ], [ %16, %189 ], [ 1, %163 ], [ %16, %65 ], [ %16, %47 ], [ %16, %41 ], [ %40, %35 ], [ %34, %30 ], [ %16, %54 ], [ %16, %143 ], [ %151, %147 ], [ %16, %192 ], [ %16, %307 ], [ %16, %200 ], [ %16, %205 ], [ 1, %279 ], [ 1, %282 ], [ %16, %334 ], [ %16, %310 ], [ %16, %315 ], [ %16, %60 ]
  %344 = phi i32 [ %15, %338 ], [ %331, %325 ], [ %15, %306 ], [ %15, %196 ], [ %15, %189 ], [ %15, %163 ], [ %15, %65 ], [ %15, %47 ], [ %15, %41 ], [ %15, %35 ], [ %15, %30 ], [ %15, %54 ], [ %15, %143 ], [ %15, %147 ], [ %15, %192 ], [ %15, %307 ], [ %15, %200 ], [ %15, %205 ], [ %15, %279 ], [ %15, %282 ], [ %15, %334 ], [ %15, %310 ], [ %15, %315 ], [ %15, %60 ]
  %345 = phi ptr [ %14, %338 ], [ %14, %325 ], [ %14, %306 ], [ null, %196 ], [ null, %189 ], [ null, %163 ], [ %14, %65 ], [ %52, %47 ], [ %43, %41 ], [ null, %35 ], [ null, %30 ], [ %14, %54 ], [ null, %143 ], [ null, %147 ], [ null, %192 ], [ %14, %307 ], [ null, %200 ], [ null, %205 ], [ null, %279 ], [ null, %282 ], [ %14, %334 ], [ %14, %310 ], [ %14, %315 ], [ %14, %60 ]
  %346 = icmp ne i32 %341, 0
  %347 = icmp ne i32 %343, 0
  %348 = select i1 %346, i1 %347, i1 false
  br i1 %348, label %349, label %375

349:                                              ; preds = %340
  %350 = load i32, ptr %0, align 8, !tbaa !54
  %351 = and i32 %350, 11264
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %373, label %353

353:                                              ; preds = %349
  %354 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 8
  %355 = load i32, ptr %354, align 8, !tbaa !69
  %356 = icmp sgt i32 %355, 0
  br i1 %356, label %357, label %373

357:                                              ; preds = %353
  %358 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 1
  br label %359

359:                                              ; preds = %357, %370
  %360 = phi i32 [ %371, %370 ], [ %355, %357 ]
  %361 = add nsw i32 %360, -1
  store i32 %361, ptr %354, align 8, !tbaa !69
  %362 = load ptr, ptr %358, align 8, !tbaa !70
  %363 = zext nneg i32 %361 to i64
  %364 = getelementptr inbounds ptr, ptr %362, i64 %363
  %365 = load ptr, ptr %364, align 8, !tbaa !35
  %366 = icmp eq ptr %365, null
  br i1 %366, label %370, label %367

367:                                              ; preds = %359
  call void @free(ptr noundef %365)
  %368 = load ptr, ptr %358, align 8, !tbaa !70
  %369 = getelementptr inbounds ptr, ptr %368, i64 %363
  store ptr null, ptr %369, align 8, !tbaa !35
  br label %370

370:                                              ; preds = %367, %359
  %371 = load i32, ptr %354, align 8, !tbaa !69
  %372 = icmp sgt i32 %371, 0
  br i1 %372, label %359, label %373, !llvm.loop !107

373:                                              ; preds = %370, %353, %349
  %374 = call fastcc i32 @demangle_args(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2), !range !68
  br label %375

375:                                              ; preds = %373, %340
  %376 = phi i32 [ %374, %373 ], [ %341, %340 ]
  %377 = phi i32 [ 1, %373 ], [ %342, %340 ]
  %378 = phi i32 [ 0, %373 ], [ %343, %340 ]
  %379 = icmp eq i32 %376, 0
  br i1 %379, label %380, label %12, !llvm.loop !109

380:                                              ; preds = %12, %375
  %381 = phi i32 [ %18, %12 ], [ %376, %375 ]
  %382 = phi i32 [ %17, %12 ], [ %377, %375 ]
  %383 = phi i1 [ %13, %12 ], [ %379, %375 ]
  %384 = icmp ne i32 %382, 0
  %385 = select i1 %383, i1 true, i1 %384
  br i1 %385, label %392, label %386

386:                                              ; preds = %380
  %387 = load i32, ptr %0, align 8, !tbaa !54
  %388 = and i32 %387, 768
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %392, label %390

390:                                              ; preds = %386
  %391 = call fastcc i32 @demangle_args(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2), !range !68
  br label %392

392:                                              ; preds = %386, %390, %380
  %393 = phi i32 [ %381, %380 ], [ %391, %390 ], [ %381, %386 ]
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %422, label %395

395:                                              ; preds = %392
  %396 = load i32, ptr %0, align 8, !tbaa !54
  %397 = and i32 %396, 1
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %422, label %399

399:                                              ; preds = %395
  %400 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 12
  %401 = load i32, ptr %400, align 8, !tbaa !99
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %404, label %403

403:                                              ; preds = %399
  call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.227)
  br label %404

404:                                              ; preds = %403, %399
  %405 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 14
  %406 = load i32, ptr %405, align 8, !tbaa !100
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %422, label %408

408:                                              ; preds = %404
  %409 = load ptr, ptr %2, align 8, !tbaa !57
  %410 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %411 = load ptr, ptr %410, align 8, !tbaa !59
  %412 = icmp eq ptr %409, %411
  br i1 %412, label %414, label %413

413:                                              ; preds = %408
  call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198)
  br label %414

414:                                              ; preds = %413, %408
  %415 = load i32, ptr %405, align 8, !tbaa !100
  %416 = icmp ult i32 %415, 8
  br i1 %416, label %418, label %417

417:                                              ; preds = %414
  call void @abort() #24
  unreachable

418:                                              ; preds = %414
  %419 = zext nneg i32 %415 to i64
  %420 = shl i64 %419, 2
  %421 = call ptr @llvm.load.relative.i64(ptr @reltable.demangle_signature, i64 %420)
  call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull %421)
  br label %422

422:                                              ; preds = %404, %418, %395, %392
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #23
  ret i32 %393
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @string_prepend(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #10 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %33, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %1, align 1, !tbaa !47
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %4
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  tail call fastcc void @string_need(ptr noundef %0, i32 noundef %9)
  %12 = getelementptr inbounds %struct.string, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !59
  %14 = getelementptr inbounds i8, ptr %13, i64 -1
  %15 = load ptr, ptr %0, align 8, !tbaa !57
  %16 = icmp ult ptr %14, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %11
  %18 = shl i64 %8, 32
  %19 = ashr exact i64 %18, 32
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi ptr [ %14, %17 ], [ %24, %20 ]
  %22 = load i8, ptr %21, align 1, !tbaa !47
  %23 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 %22, ptr %23, align 1, !tbaa !47
  %24 = getelementptr inbounds i8, ptr %21, i64 -1
  %25 = load ptr, ptr %0, align 8, !tbaa !57
  %26 = icmp ult ptr %24, %25
  br i1 %26, label %27, label %20, !llvm.loop !72

27:                                               ; preds = %20, %11
  %28 = phi ptr [ %15, %11 ], [ %25, %20 ]
  %29 = shl i64 %8, 32
  %30 = ashr exact i64 %29, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %28, ptr nonnull align 1 %1, i64 %30, i1 false)
  %31 = load ptr, ptr %12, align 8, !tbaa !59
  %32 = getelementptr inbounds i8, ptr %31, i64 %30
  store ptr %32, ptr %12, align 8, !tbaa !59
  br label %33

33:                                               ; preds = %27, %7, %4, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @demangle_qualified(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 !prof !34 {
  %6 = alloca [2 x i8], align 1
  %7 = alloca %struct.string, align 8
  %8 = alloca %struct.string, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #23
  %9 = tail call fastcc i32 @register_Btype(ptr noundef %0)
  %10 = icmp eq i32 %3, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !97
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 11
  %18 = load i32, ptr %17, align 4, !tbaa !98
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %11, %16, %5
  %22 = phi i1 [ false, %5 ], [ true, %11 ], [ %20, %16 ]
  %23 = getelementptr inbounds %struct.string, ptr %7, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %24 = getelementptr inbounds %struct.string, ptr %8, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %25 = load ptr, ptr %1, align 8, !tbaa !35
  %26 = load i8, ptr %25, align 1, !tbaa !47
  %27 = icmp eq i8 %26, 75
  %28 = getelementptr inbounds i8, ptr %25, i64 1
  br i1 %27, label %29, label %42

29:                                               ; preds = %21
  store ptr %28, ptr %1, align 8, !tbaa !35
  %30 = tail call fastcc i32 @consume_count_with_underscores(ptr noundef nonnull %1)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %60, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !80
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !81
  %39 = sext i32 %30 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  call fastcc void @string_append(ptr noundef nonnull %7, ptr noundef %41)
  br label %60

42:                                               ; preds = %21
  %43 = load i8, ptr %28, align 1, !tbaa !47
  switch i8 %43, label %60 [
    i8 95, label %44
    i8 49, label %47
    i8 50, label %47
    i8 51, label %47
    i8 52, label %47
    i8 53, label %47
    i8 54, label %47
    i8 55, label %47
    i8 56, label %47
    i8 57, label %47
  ]

44:                                               ; preds = %42
  store ptr %28, ptr %1, align 8, !tbaa !35
  %45 = tail call fastcc i32 @consume_count_with_underscores(ptr noundef nonnull %1)
  %46 = icmp eq i32 %45, -1
  br label %60

47:                                               ; preds = %42, %42, %42, %42, %42, %42, %42, %42, %42
  store i8 %43, ptr %6, align 1, !tbaa !47
  %48 = getelementptr inbounds [2 x i8], ptr %6, i64 0, i64 1
  store i8 0, ptr %48, align 1, !tbaa !47
  %49 = call i64 @strtol(ptr nocapture noundef nonnull %6, ptr noundef null, i32 noundef 10)
  %50 = trunc i64 %49 to i32
  %51 = load ptr, ptr %1, align 8, !tbaa !35
  %52 = getelementptr inbounds i8, ptr %51, i64 2
  %53 = load i8, ptr %52, align 1, !tbaa !47
  %54 = icmp eq i8 %53, 95
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = getelementptr inbounds i8, ptr %51, i64 1
  store ptr %56, ptr %1, align 8, !tbaa !35
  br label %57

57:                                               ; preds = %55, %47
  %58 = load ptr, ptr %1, align 8, !tbaa !35
  %59 = getelementptr inbounds i8, ptr %58, i64 2
  store ptr %59, ptr %1, align 8, !tbaa !35
  br label %60

60:                                               ; preds = %44, %42, %36, %32, %29, %57
  %61 = phi i1 [ false, %57 ], [ false, %36 ], [ true, %32 ], [ true, %29 ], [ %46, %44 ], [ true, %42 ]
  %62 = phi i32 [ %50, %57 ], [ 0, %36 ], [ 0, %32 ], [ 0, %29 ], [ %45, %44 ], [ 0, %42 ]
  br i1 %61, label %284, label %63

63:                                               ; preds = %60, %200
  %64 = phi i32 [ %201, %200 ], [ 1, %60 ]
  %65 = phi i32 [ %66, %200 ], [ %62, %60 ]
  %66 = add nsw i32 %65, -1
  %67 = icmp sgt i32 %65, 0
  br i1 %67, label %68, label %204

68:                                               ; preds = %63
  %69 = load ptr, ptr %8, align 8, !tbaa !57
  store ptr %69, ptr %24, align 8, !tbaa !59
  %70 = load ptr, ptr %1, align 8, !tbaa !35
  %71 = load i8, ptr %70, align 1, !tbaa !47
  %72 = icmp eq i8 %71, 95
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = getelementptr inbounds i8, ptr %70, i64 1
  store ptr %74, ptr %1, align 8, !tbaa !35
  br label %75

75:                                               ; preds = %73, %68
  %76 = load ptr, ptr %1, align 8, !tbaa !35
  %77 = load i8, ptr %76, align 1, !tbaa !47
  switch i8 %77, label %99 [
    i8 116, label %78
    i8 75, label %81
  ]

78:                                               ; preds = %75
  %79 = call fastcc i32 @demangle_template(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %200, label %181

81:                                               ; preds = %75
  %82 = getelementptr inbounds i8, ptr %76, i64 1
  store ptr %82, ptr %1, align 8, !tbaa !35
  %83 = call fastcc i32 @consume_count_with_underscores(ptr noundef nonnull %1)
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %95, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 4
  %87 = load i32, ptr %86, align 8, !tbaa !80
  %88 = icmp slt i32 %83, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !81
  %92 = sext i32 %83 to i64
  %93 = getelementptr inbounds ptr, ptr %91, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !35
  call fastcc void @string_append(ptr noundef nonnull %7, ptr noundef %94)
  br label %95

95:                                               ; preds = %81, %85, %89
  %96 = phi i32 [ %64, %89 ], [ 0, %85 ], [ 0, %81 ]
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %97, i32 4, i32 0
  br i1 %97, label %200, label %181

99:                                               ; preds = %75
  %100 = load i32, ptr %0, align 8, !tbaa !54
  %101 = and i32 %100, 8192
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %161, label %103

103:                                              ; preds = %99
  %104 = zext i8 %77 to i64
  %105 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %104
  %106 = load i16, ptr %105, align 2, !tbaa !60
  %107 = and i16 %106, 4
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %135, label %109

109:                                              ; preds = %103
  %110 = load ptr, ptr %1, align 8, !tbaa !35
  %111 = load i8, ptr %110, align 1, !tbaa !47
  %112 = zext i8 %111 to i64
  %113 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %112
  %114 = load i16, ptr %113, align 2, !tbaa !60
  %115 = and i16 %114, 4
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %132, label %117

117:                                              ; preds = %109, %117
  %118 = phi i8 [ %126, %117 ], [ %111, %109 ]
  %119 = phi i32 [ %124, %117 ], [ 0, %109 ]
  %120 = phi ptr [ %125, %117 ], [ %110, %109 ]
  %121 = mul nsw i32 %119, 10
  %122 = sext i8 %118 to i32
  %123 = add i32 %121, -48
  %124 = add i32 %123, %122
  %125 = getelementptr inbounds i8, ptr %120, i64 1
  store ptr %125, ptr %1, align 8, !tbaa !35
  %126 = load i8, ptr %125, align 1, !tbaa !47
  %127 = zext i8 %126 to i64
  %128 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %127
  %129 = load i16, ptr %128, align 2, !tbaa !60
  %130 = and i16 %129, 4
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %132, label %117, !llvm.loop !71

132:                                              ; preds = %117, %109
  %133 = phi i32 [ 0, %109 ], [ %124, %117 ]
  %134 = call i32 @llvm.smax.i32(i32 %133, i32 -1)
  br label %135

135:                                              ; preds = %103, %132
  %136 = phi i32 [ %134, %132 ], [ -1, %103 ]
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %158, label %138

138:                                              ; preds = %135
  %139 = add nsw i32 %136, 1
  %140 = sext i32 %139 to i64
  %141 = call ptr @xmalloc(i64 noundef %140) #23
  %142 = load ptr, ptr %1, align 8, !tbaa !35
  %143 = sext i32 %136 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %141, ptr align 1 %142, i64 %143, i1 false)
  %144 = getelementptr inbounds i8, ptr %141, i64 %143
  store i8 0, ptr %144, align 1, !tbaa !47
  %145 = load i32, ptr %0, align 8, !tbaa !54
  %146 = call ptr @cplus_demangle(ptr noundef %141, i32 noundef %145)
  %147 = icmp eq ptr %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %138
  call fastcc void @string_append(ptr noundef nonnull %7, ptr noundef nonnull %146)
  call void @free(ptr noundef %146)
  br label %155

149:                                              ; preds = %138
  %150 = icmp eq i32 %136, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %149
  %152 = load ptr, ptr %1, align 8, !tbaa !35
  call fastcc void @string_need(ptr noundef nonnull %7, i32 noundef %136)
  %153 = load ptr, ptr %23, align 8, !tbaa !59
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %153, ptr align 1 %152, i64 %143, i1 false)
  %154 = getelementptr inbounds i8, ptr %153, i64 %143
  store ptr %154, ptr %23, align 8, !tbaa !59
  br label %155

155:                                              ; preds = %151, %149, %148
  call void @free(ptr noundef %141)
  %156 = load ptr, ptr %1, align 8, !tbaa !35
  %157 = getelementptr inbounds i8, ptr %156, i64 %143
  store ptr %157, ptr %1, align 8, !tbaa !35
  br label %158

158:                                              ; preds = %135, %155
  %159 = phi i32 [ %64, %155 ], [ 0, %135 ]
  %160 = phi i32 [ 0, %155 ], [ 4, %135 ]
  br i1 %137, label %200, label %181

161:                                              ; preds = %99
  %162 = icmp eq ptr %69, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %161
  call void @free(ptr noundef %69)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br label %164

164:                                              ; preds = %161, %163
  %165 = call fastcc i32 @do_type(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %8), !range !56
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %200, label %167

167:                                              ; preds = %164
  %168 = load ptr, ptr %8, align 8, !tbaa !57
  %169 = load ptr, ptr %24, align 8, !tbaa !59
  %170 = icmp eq ptr %168, %169
  br i1 %170, label %181, label %171

171:                                              ; preds = %167
  %172 = ptrtoint ptr %169 to i64
  %173 = ptrtoint ptr %168 to i64
  %174 = sub i64 %172, %173
  %175 = trunc i64 %174 to i32
  call fastcc void @string_need(ptr noundef nonnull %7, i32 noundef %175)
  %176 = load ptr, ptr %23, align 8, !tbaa !59
  %177 = load ptr, ptr %8, align 8, !tbaa !57
  %178 = shl i64 %174, 32
  %179 = ashr exact i64 %178, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %176, ptr align 1 %177, i64 %179, i1 false)
  %180 = getelementptr inbounds i8, ptr %176, i64 %179
  store ptr %180, ptr %23, align 8, !tbaa !59
  br label %181

181:                                              ; preds = %171, %167, %95, %158, %78
  %182 = phi i32 [ %79, %78 ], [ %96, %95 ], [ %159, %158 ], [ %165, %167 ], [ %165, %171 ]
  %183 = phi i1 [ false, %78 ], [ true, %95 ], [ false, %158 ], [ false, %167 ], [ false, %171 ]
  br i1 %183, label %193, label %184

184:                                              ; preds = %181
  %185 = load ptr, ptr %7, align 8
  %186 = load ptr, ptr %23, align 8
  %187 = icmp eq ptr %185, %186
  %188 = ptrtoint ptr %186 to i64
  %189 = ptrtoint ptr %185 to i64
  %190 = sub i64 %188, %189
  %191 = trunc i64 %190 to i32
  %192 = select i1 %187, i32 0, i32 %191
  call fastcc void @remember_Ktype(ptr noundef %0, ptr noundef %185, i32 noundef %192)
  br label %193

193:                                              ; preds = %184, %181
  %194 = icmp eq i32 %65, 1
  br i1 %194, label %200, label %195

195:                                              ; preds = %193
  %196 = load i32, ptr %0, align 8, !tbaa !54
  %197 = and i32 %196, 4
  %198 = icmp eq i32 %197, 0
  %199 = select i1 %198, ptr @.str.187, ptr @.str.186
  call fastcc void @string_append(ptr noundef nonnull %7, ptr noundef nonnull %199)
  br label %200

200:                                              ; preds = %158, %95, %78, %193, %195, %164
  %201 = phi i32 [ 0, %164 ], [ %182, %195 ], [ %182, %193 ], [ 0, %78 ], [ %96, %95 ], [ %159, %158 ]
  %202 = phi i32 [ 4, %164 ], [ 0, %195 ], [ 0, %193 ], [ 4, %78 ], [ %98, %95 ], [ %160, %158 ]
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %63, label %204

204:                                              ; preds = %200, %63
  %205 = phi i32 [ %64, %63 ], [ %201, %200 ]
  %206 = load ptr, ptr %7, align 8
  %207 = load ptr, ptr %23, align 8
  %208 = icmp eq ptr %206, %207
  %209 = ptrtoint ptr %207 to i64
  %210 = ptrtoint ptr %206 to i64
  %211 = sub i64 %209, %210
  %212 = trunc i64 %211 to i32
  %213 = select i1 %208, i32 0, i32 %212
  %214 = add nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = call ptr @xmalloc(i64 noundef %215) #23
  %217 = sext i32 %213 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %216, ptr align 1 %206, i64 %217, i1 false)
  %218 = getelementptr inbounds i8, ptr %216, i64 %217
  store i8 0, ptr %218, align 1, !tbaa !47
  %219 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 3
  %220 = load ptr, ptr %219, align 8, !tbaa !75
  %221 = sext i32 %9 to i64
  %222 = getelementptr inbounds ptr, ptr %220, i64 %221
  store ptr %216, ptr %222, align 8, !tbaa !35
  br i1 %22, label %223, label %247

223:                                              ; preds = %204
  %224 = load i32, ptr %0, align 8, !tbaa !54
  %225 = and i32 %224, 4
  %226 = icmp eq i32 %225, 0
  %227 = select i1 %226, ptr @.str.187, ptr @.str.186
  call fastcc void @string_append(ptr noundef nonnull %7, ptr noundef nonnull %227)
  %228 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 11
  %229 = load i32, ptr %228, align 4, !tbaa !98
  %230 = and i32 %229, 1
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %223
  call fastcc void @string_append(ptr noundef nonnull %7, ptr noundef nonnull @.str.139)
  br label %233

233:                                              ; preds = %232, %223
  %234 = load ptr, ptr %8, align 8, !tbaa !57
  %235 = load ptr, ptr %24, align 8, !tbaa !59
  %236 = icmp eq ptr %234, %235
  br i1 %236, label %247, label %237

237:                                              ; preds = %233
  %238 = ptrtoint ptr %235 to i64
  %239 = ptrtoint ptr %234 to i64
  %240 = sub i64 %238, %239
  %241 = trunc i64 %240 to i32
  call fastcc void @string_need(ptr noundef nonnull %7, i32 noundef %241)
  %242 = load ptr, ptr %23, align 8, !tbaa !59
  %243 = load ptr, ptr %8, align 8, !tbaa !57
  %244 = shl i64 %240, 32
  %245 = ashr exact i64 %244, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %242, ptr align 1 %243, i64 %245, i1 false)
  %246 = getelementptr inbounds i8, ptr %242, i64 %245
  store ptr %246, ptr %23, align 8, !tbaa !59
  br label %247

247:                                              ; preds = %237, %233, %204
  %248 = icmp eq i32 %4, 0
  br i1 %248, label %265, label %249

249:                                              ; preds = %247
  %250 = load ptr, ptr %7, align 8, !tbaa !57
  %251 = load ptr, ptr %23, align 8, !tbaa !59
  %252 = icmp eq ptr %250, %251
  br i1 %252, label %276, label %253

253:                                              ; preds = %249
  %254 = ptrtoint ptr %251 to i64
  %255 = ptrtoint ptr %250 to i64
  %256 = sub i64 %254, %255
  %257 = trunc i64 %256 to i32
  call fastcc void @string_need(ptr noundef %2, i32 noundef %257)
  %258 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !59
  %260 = load ptr, ptr %7, align 8, !tbaa !57
  %261 = shl i64 %256, 32
  %262 = ashr exact i64 %261, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %259, ptr align 1 %260, i64 %262, i1 false)
  %263 = load ptr, ptr %258, align 8, !tbaa !59
  %264 = getelementptr inbounds i8, ptr %263, i64 %262
  store ptr %264, ptr %258, align 8, !tbaa !59
  br label %276

265:                                              ; preds = %247
  %266 = load ptr, ptr %2, align 8, !tbaa !57
  %267 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !59
  %269 = icmp eq ptr %266, %268
  br i1 %269, label %275, label %270

270:                                              ; preds = %265
  %271 = load i32, ptr %0, align 8, !tbaa !54
  %272 = and i32 %271, 4
  %273 = icmp eq i32 %272, 0
  %274 = select i1 %273, ptr @.str.187, ptr @.str.186
  call fastcc void @string_append(ptr noundef nonnull %7, ptr noundef nonnull %274)
  br label %275

275:                                              ; preds = %270, %265
  call fastcc void @string_prepends(ptr noundef nonnull %2, ptr noundef nonnull %7)
  br label %276

276:                                              ; preds = %253, %249, %275
  %277 = load ptr, ptr %8, align 8, !tbaa !57
  %278 = icmp eq ptr %277, null
  br i1 %278, label %280, label %279

279:                                              ; preds = %276
  call void @free(ptr noundef %277)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br label %280

280:                                              ; preds = %276, %279
  %281 = load ptr, ptr %7, align 8, !tbaa !57
  %282 = icmp eq ptr %281, null
  br i1 %282, label %284, label %283

283:                                              ; preds = %280
  call void @free(ptr noundef %281)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %284

284:                                              ; preds = %283, %280, %60
  %285 = phi i32 [ 0, %60 ], [ %205, %280 ], [ %205, %283 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #23
  ret i32 %285
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @demangle_template(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #10 !prof !34 {
  %7 = alloca [33 x i8], align 16
  %8 = alloca [33 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.string, align 8
  %11 = alloca %struct.string, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #23
  %12 = load ptr, ptr %1, align 8, !tbaa !35
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %13, ptr %1, align 8, !tbaa !35
  %14 = icmp ne i32 %4, 0
  br i1 %14, label %15, label %118

15:                                               ; preds = %6
  %16 = load i8, ptr %13, align 1, !tbaa !47
  %17 = icmp eq i8 %16, 122
  br i1 %17, label %18, label %49

18:                                               ; preds = %15
  %19 = getelementptr inbounds i8, ptr %12, i64 3
  store ptr %19, ptr %1, align 8, !tbaa !35
  %20 = tail call fastcc i32 @consume_count_with_underscores(ptr noundef nonnull %1)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %377, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 16
  %24 = load ptr, ptr %23, align 8, !tbaa !76
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 17
  %28 = load i32, ptr %27, align 8, !tbaa !77
  %29 = icmp slt i32 %20, %28
  br i1 %29, label %30, label %377

30:                                               ; preds = %26, %22
  %31 = tail call fastcc i32 @consume_count_with_underscores(ptr noundef nonnull %1)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %377, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %23, align 8, !tbaa !76
  %35 = icmp eq ptr %34, null
  %36 = icmp eq ptr %3, null
  br i1 %35, label %45, label %37

37:                                               ; preds = %33
  %38 = sext i32 %20 to i64
  %39 = getelementptr inbounds ptr, ptr %34, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !35
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef %40)
  br i1 %36, label %118, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %23, align 8, !tbaa !76
  %43 = getelementptr inbounds ptr, ptr %42, i64 %38
  %44 = load ptr, ptr %43, align 8, !tbaa !35
  tail call fastcc void @string_append(ptr noundef nonnull %3, ptr noundef %44)
  br label %118

45:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %8) #23
  %46 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @.str.199, i32 noundef %20)
  call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull %8)
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %8) #23
  br i1 %36, label %118, label %47

47:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %7) #23
  %48 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.199, i32 noundef %20)
  call fastcc void @string_append(ptr noundef nonnull %3, ptr noundef nonnull %7)
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %7) #23
  br label %118

49:                                               ; preds = %15
  %50 = zext i8 %16 to i64
  %51 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %50
  %52 = load i16, ptr %51, align 2, !tbaa !60
  %53 = and i16 %52, 4
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %81, label %55

55:                                               ; preds = %49
  %56 = load ptr, ptr %1, align 8, !tbaa !35
  %57 = load i8, ptr %56, align 1, !tbaa !47
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %58
  %60 = load i16, ptr %59, align 2, !tbaa !60
  %61 = and i16 %60, 4
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %55, %63
  %64 = phi i8 [ %72, %63 ], [ %57, %55 ]
  %65 = phi i32 [ %70, %63 ], [ 0, %55 ]
  %66 = phi ptr [ %71, %63 ], [ %56, %55 ]
  %67 = mul nsw i32 %65, 10
  %68 = sext i8 %64 to i32
  %69 = add i32 %67, -48
  %70 = add i32 %69, %68
  %71 = getelementptr inbounds i8, ptr %66, i64 1
  store ptr %71, ptr %1, align 8, !tbaa !35
  %72 = load i8, ptr %71, align 1, !tbaa !47
  %73 = zext i8 %72 to i64
  %74 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %73
  %75 = load i16, ptr %74, align 2, !tbaa !60
  %76 = and i16 %75, 4
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %78, label %63, !llvm.loop !71

78:                                               ; preds = %63, %55
  %79 = phi i32 [ 0, %55 ], [ %70, %63 ]
  %80 = tail call i32 @llvm.smax.i32(i32 %79, i32 -1)
  br label %81

81:                                               ; preds = %49, %78
  %82 = phi i32 [ %80, %78 ], [ -1, %49 ]
  store i32 %82, ptr %9, align 4, !tbaa !39
  %83 = icmp slt i32 %82, 1
  br i1 %83, label %377, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr %1, align 8, !tbaa !35
  %86 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %85)
  %87 = trunc i64 %86 to i32
  %88 = icmp sgt i32 %82, %87
  br i1 %88, label %377, label %89

89:                                               ; preds = %84
  %90 = load i32, ptr %0, align 8, !tbaa !54
  %91 = and i32 %90, 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %89
  %94 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(9) @.str.197, i64 noundef 8)
  %95 = icmp eq i32 %94, 0
  br label %96

96:                                               ; preds = %93, %89
  %97 = phi i1 [ false, %89 ], [ %95, %93 ]
  br i1 %97, label %104, label %98

98:                                               ; preds = %96
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef %82)
  %99 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !59
  %101 = zext nneg i32 %82 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %100, ptr align 1 %85, i64 %101, i1 false)
  %102 = load ptr, ptr %99, align 8, !tbaa !59
  %103 = getelementptr inbounds i8, ptr %102, i64 %101
  store ptr %103, ptr %99, align 8, !tbaa !59
  br label %104

104:                                              ; preds = %98, %96
  %105 = icmp eq ptr %3, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %104
  %107 = load ptr, ptr %1, align 8, !tbaa !35
  tail call fastcc void @string_need(ptr noundef nonnull %3, i32 noundef %82)
  %108 = getelementptr inbounds %struct.string, ptr %3, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !59
  %110 = zext nneg i32 %82 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %109, ptr align 1 %107, i64 %110, i1 false)
  %111 = load ptr, ptr %108, align 8, !tbaa !59
  %112 = getelementptr inbounds i8, ptr %111, i64 %110
  store ptr %112, ptr %108, align 8, !tbaa !59
  br label %113

113:                                              ; preds = %106, %104
  %114 = load ptr, ptr %1, align 8, !tbaa !35
  %115 = zext nneg i32 %82 to i64
  %116 = getelementptr inbounds i8, ptr %114, i64 %115
  store ptr %116, ptr %1, align 8, !tbaa !35
  %117 = xor i1 %97, true
  br label %118

118:                                              ; preds = %45, %47, %37, %41, %113, %6
  %119 = phi i1 [ %117, %113 ], [ true, %6 ], [ true, %41 ], [ true, %37 ], [ true, %47 ], [ true, %45 ]
  br i1 %119, label %120, label %121

120:                                              ; preds = %118
  call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.44)
  br label %121

121:                                              ; preds = %120, %118
  %122 = call fastcc i32 @get_count(ptr noundef nonnull %1, ptr noundef nonnull %9), !range !68
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %377, label %124

124:                                              ; preds = %121
  br i1 %14, label %141, label %125

125:                                              ; preds = %124
  %126 = load i32, ptr %9, align 4, !tbaa !39
  %127 = sext i32 %126 to i64
  %128 = shl nsw i64 %127, 3
  %129 = call ptr @xmalloc(i64 noundef %128) #23
  %130 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 16
  store ptr %129, ptr %130, align 8, !tbaa !76
  %131 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 17
  store i32 %126, ptr %131, align 8, !tbaa !77
  %132 = icmp sgt i32 %126, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %125
  %134 = zext nneg i32 %126 to i64
  br label %135

135:                                              ; preds = %133, %135
  %136 = phi i64 [ 0, %133 ], [ %139, %135 ]
  %137 = load ptr, ptr %130, align 8, !tbaa !76
  %138 = getelementptr inbounds ptr, ptr %137, i64 %136
  store ptr null, ptr %138, align 8, !tbaa !35
  %139 = add nuw nsw i64 %136, 1
  %140 = icmp eq i64 %139, %134
  br i1 %140, label %141, label %135, !llvm.loop !110

141:                                              ; preds = %135, %125, %124
  %142 = load i32, ptr %9, align 4, !tbaa !39
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %344

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %146 = getelementptr inbounds %struct.string, ptr %10, i64 0, i32 1
  %147 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %148 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 16
  %149 = zext nneg i32 %142 to i64
  br label %150

150:                                              ; preds = %144, %337
  %151 = phi i64 [ 0, %144 ], [ %339, %337 ]
  %152 = phi i1 [ true, %144 ], [ false, %337 ]
  br i1 %152, label %154, label %153

153:                                              ; preds = %150
  call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.166)
  br label %154

154:                                              ; preds = %153, %150
  %155 = load ptr, ptr %1, align 8, !tbaa !35
  %156 = load i8, ptr %155, align 1, !tbaa !47
  switch i8 %156, label %272 [
    i8 90, label %157
    i8 122, label %202
  ]

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, ptr %155, i64 1
  store ptr %158, ptr %1, align 8, !tbaa !35
  %159 = call fastcc i32 @do_type(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %10), !range !56
  %160 = icmp eq i32 %159, 0
  %161 = load ptr, ptr %10, align 8, !tbaa !57
  br i1 %160, label %341, label %162

162:                                              ; preds = %157
  %163 = load ptr, ptr %146, align 8, !tbaa !59
  %164 = icmp eq ptr %161, %163
  br i1 %164, label %176, label %165

165:                                              ; preds = %162
  %166 = ptrtoint ptr %163 to i64
  %167 = ptrtoint ptr %161 to i64
  %168 = sub i64 %166, %167
  %169 = trunc i64 %168 to i32
  call fastcc void @string_need(ptr noundef %2, i32 noundef %169)
  %170 = load ptr, ptr %147, align 8, !tbaa !59
  %171 = load ptr, ptr %10, align 8, !tbaa !57
  %172 = shl i64 %168, 32
  %173 = ashr exact i64 %172, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %170, ptr align 1 %171, i64 %173, i1 false)
  %174 = load ptr, ptr %147, align 8, !tbaa !59
  %175 = getelementptr inbounds i8, ptr %174, i64 %173
  store ptr %175, ptr %147, align 8, !tbaa !59
  br label %176

176:                                              ; preds = %162, %165
  br i1 %14, label %198, label %177

177:                                              ; preds = %176
  %178 = load ptr, ptr %146, align 8, !tbaa !59
  %179 = load ptr, ptr %10, align 8, !tbaa !57
  %180 = ptrtoint ptr %178 to i64
  %181 = ptrtoint ptr %179 to i64
  %182 = sub i64 %180, %181
  %183 = shl i64 %182, 32
  %184 = add i64 %183, 4294967296
  %185 = ashr exact i64 %184, 32
  %186 = call ptr @xmalloc(i64 noundef %185) #23
  %187 = load ptr, ptr %148, align 8, !tbaa !76
  %188 = getelementptr inbounds ptr, ptr %187, i64 %151
  store ptr %186, ptr %188, align 8, !tbaa !35
  %189 = load ptr, ptr %148, align 8, !tbaa !76
  %190 = getelementptr inbounds ptr, ptr %189, i64 %151
  %191 = load ptr, ptr %190, align 8, !tbaa !35
  %192 = load ptr, ptr %10, align 8, !tbaa !57
  %193 = ashr exact i64 %183, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %191, ptr align 1 %192, i64 %193, i1 false)
  %194 = load ptr, ptr %148, align 8, !tbaa !76
  %195 = getelementptr inbounds ptr, ptr %194, i64 %151
  %196 = load ptr, ptr %195, align 8, !tbaa !35
  %197 = getelementptr inbounds i8, ptr %196, i64 %193
  store i8 0, ptr %197, align 1, !tbaa !47
  br label %198

198:                                              ; preds = %176, %177
  %199 = load ptr, ptr %10, align 8, !tbaa !57
  %200 = icmp eq ptr %199, null
  br i1 %200, label %337, label %201

201:                                              ; preds = %198
  call void @free(ptr noundef %199)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br label %337

202:                                              ; preds = %154
  %203 = getelementptr inbounds i8, ptr %155, i64 1
  store ptr %203, ptr %1, align 8, !tbaa !35
  %204 = call fastcc i32 @demangle_template_template_parm(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %344, label %206

206:                                              ; preds = %202
  %207 = load ptr, ptr %1, align 8, !tbaa !35
  %208 = load i8, ptr %207, align 1, !tbaa !47
  %209 = zext i8 %208 to i64
  %210 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %209
  %211 = load i16, ptr %210, align 2, !tbaa !60
  %212 = and i16 %211, 4
  %213 = icmp eq i16 %212, 0
  br i1 %213, label %240, label %214

214:                                              ; preds = %206
  %215 = load ptr, ptr %1, align 8, !tbaa !35
  %216 = load i8, ptr %215, align 1, !tbaa !47
  %217 = zext i8 %216 to i64
  %218 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %217
  %219 = load i16, ptr %218, align 2, !tbaa !60
  %220 = and i16 %219, 4
  %221 = icmp eq i16 %220, 0
  br i1 %221, label %237, label %222

222:                                              ; preds = %214, %222
  %223 = phi i8 [ %231, %222 ], [ %216, %214 ]
  %224 = phi i32 [ %229, %222 ], [ 0, %214 ]
  %225 = phi ptr [ %230, %222 ], [ %215, %214 ]
  %226 = mul nsw i32 %224, 10
  %227 = sext i8 %223 to i32
  %228 = add i32 %226, -48
  %229 = add i32 %228, %227
  %230 = getelementptr inbounds i8, ptr %225, i64 1
  store ptr %230, ptr %1, align 8, !tbaa !35
  %231 = load i8, ptr %230, align 1, !tbaa !47
  %232 = zext i8 %231 to i64
  %233 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %232
  %234 = load i16, ptr %233, align 2, !tbaa !60
  %235 = and i16 %234, 4
  %236 = icmp eq i16 %235, 0
  br i1 %236, label %237, label %222, !llvm.loop !71

237:                                              ; preds = %222, %214
  %238 = phi i32 [ 0, %214 ], [ %229, %222 ]
  %239 = call i32 @llvm.smax.i32(i32 %238, i32 -1)
  br label %240

240:                                              ; preds = %206, %237
  %241 = phi i32 [ %239, %237 ], [ -1, %206 ]
  %242 = icmp sgt i32 %241, 0
  br i1 %242, label %243, label %337

243:                                              ; preds = %240
  %244 = load ptr, ptr %1, align 8, !tbaa !35
  %245 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %244)
  %246 = trunc i64 %245 to i32
  %247 = icmp sgt i32 %241, %246
  br i1 %247, label %337, label %248

248:                                              ; preds = %243
  call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.198)
  %249 = load ptr, ptr %1, align 8, !tbaa !35
  call fastcc void @string_need(ptr noundef %2, i32 noundef %241)
  %250 = load ptr, ptr %145, align 8, !tbaa !59
  %251 = zext nneg i32 %241 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %250, ptr align 1 %249, i64 %251, i1 false)
  %252 = load ptr, ptr %145, align 8, !tbaa !59
  %253 = getelementptr inbounds i8, ptr %252, i64 %251
  store ptr %253, ptr %145, align 8, !tbaa !59
  br i1 %14, label %269, label %254

254:                                              ; preds = %248
  %255 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 16
  %256 = add nuw nsw i32 %241, 1
  %257 = zext nneg i32 %256 to i64
  %258 = call ptr @xmalloc(i64 noundef %257) #23
  %259 = load ptr, ptr %255, align 8, !tbaa !76
  %260 = getelementptr inbounds ptr, ptr %259, i64 %151
  store ptr %258, ptr %260, align 8, !tbaa !35
  %261 = load ptr, ptr %255, align 8, !tbaa !76
  %262 = getelementptr inbounds ptr, ptr %261, i64 %151
  %263 = load ptr, ptr %262, align 8, !tbaa !35
  %264 = load ptr, ptr %1, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %263, ptr align 1 %264, i64 %251, i1 false)
  %265 = load ptr, ptr %255, align 8, !tbaa !76
  %266 = getelementptr inbounds ptr, ptr %265, i64 %151
  %267 = load ptr, ptr %266, align 8, !tbaa !35
  %268 = getelementptr inbounds i8, ptr %267, i64 %251
  store i8 0, ptr %268, align 1, !tbaa !47
  br label %269

269:                                              ; preds = %254, %248
  %270 = load ptr, ptr %1, align 8, !tbaa !35
  %271 = getelementptr inbounds i8, ptr %270, i64 %251
  store ptr %271, ptr %1, align 8, !tbaa !35
  br label %337

272:                                              ; preds = %154
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #23
  %273 = call fastcc i32 @do_type(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %10), !range !56
  %274 = load ptr, ptr %10, align 8, !tbaa !57
  %275 = icmp eq ptr %274, null
  br i1 %275, label %277, label %276

276:                                              ; preds = %272
  call void @free(ptr noundef %274)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br label %277

277:                                              ; preds = %272, %276
  %278 = icmp eq i32 %273, 0
  br i1 %278, label %334, label %279

279:                                              ; preds = %277
  br i1 %14, label %281, label %280

280:                                              ; preds = %279
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br label %281

281:                                              ; preds = %279, %280
  %282 = phi ptr [ %11, %280 ], [ %2, %279 ]
  %283 = call fastcc i32 @demangle_template_value_parm(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %282, i32 noundef %273)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %289, label %285

285:                                              ; preds = %281
  br i1 %14, label %334, label %286

286:                                              ; preds = %285
  %287 = load ptr, ptr %282, align 8, !tbaa !57
  %288 = icmp eq ptr %287, null
  br i1 %288, label %334, label %331

289:                                              ; preds = %281
  br i1 %14, label %334, label %290

290:                                              ; preds = %289
  %291 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 16
  %292 = getelementptr inbounds %struct.string, ptr %282, i64 0, i32 1
  %293 = load ptr, ptr %292, align 8, !tbaa !59
  %294 = load ptr, ptr %282, align 8, !tbaa !57
  %295 = ptrtoint ptr %293 to i64
  %296 = ptrtoint ptr %294 to i64
  %297 = sub i64 %295, %296
  %298 = shl i64 %297, 32
  %299 = add i64 %298, 4294967296
  %300 = ashr exact i64 %299, 32
  %301 = call ptr @xmalloc(i64 noundef %300) #23
  %302 = load ptr, ptr %291, align 8, !tbaa !76
  %303 = getelementptr inbounds ptr, ptr %302, i64 %151
  store ptr %301, ptr %303, align 8, !tbaa !35
  %304 = load ptr, ptr %291, align 8, !tbaa !76
  %305 = getelementptr inbounds ptr, ptr %304, i64 %151
  %306 = load ptr, ptr %305, align 8, !tbaa !35
  %307 = load ptr, ptr %282, align 8, !tbaa !57
  %308 = ashr exact i64 %298, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %306, ptr align 1 %307, i64 %308, i1 false)
  %309 = load ptr, ptr %291, align 8, !tbaa !76
  %310 = getelementptr inbounds ptr, ptr %309, i64 %151
  %311 = load ptr, ptr %310, align 8, !tbaa !35
  %312 = getelementptr inbounds i8, ptr %311, i64 %308
  store i8 0, ptr %312, align 1, !tbaa !47
  %313 = load ptr, ptr %282, align 8, !tbaa !57
  %314 = load ptr, ptr %292, align 8, !tbaa !59
  %315 = icmp eq ptr %313, %314
  br i1 %315, label %328, label %316

316:                                              ; preds = %290
  %317 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %318 = ptrtoint ptr %314 to i64
  %319 = ptrtoint ptr %313 to i64
  %320 = sub i64 %318, %319
  %321 = trunc i64 %320 to i32
  call fastcc void @string_need(ptr noundef %2, i32 noundef %321)
  %322 = load ptr, ptr %317, align 8, !tbaa !59
  %323 = load ptr, ptr %282, align 8, !tbaa !57
  %324 = shl i64 %320, 32
  %325 = ashr exact i64 %324, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %322, ptr align 1 %323, i64 %325, i1 false)
  %326 = load ptr, ptr %317, align 8, !tbaa !59
  %327 = getelementptr inbounds i8, ptr %326, i64 %325
  store ptr %327, ptr %317, align 8, !tbaa !59
  br label %328

328:                                              ; preds = %290, %316
  %329 = load ptr, ptr %282, align 8, !tbaa !57
  %330 = icmp eq ptr %329, null
  br i1 %330, label %334, label %331

331:                                              ; preds = %328, %286
  %332 = phi ptr [ %287, %286 ], [ %329, %328 ]
  %333 = phi i32 [ 0, %286 ], [ %283, %328 ]
  call void @free(ptr noundef %332)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %282, i8 0, i64 24, i1 false)
  br label %334

334:                                              ; preds = %331, %328, %286, %289, %285, %277
  %335 = phi i1 [ false, %277 ], [ false, %285 ], [ true, %289 ], [ false, %286 ], [ true, %328 ], [ %284, %331 ]
  %336 = phi i32 [ 0, %277 ], [ 0, %285 ], [ %283, %289 ], [ 0, %286 ], [ %283, %328 ], [ %333, %331 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #23
  br i1 %335, label %337, label %344

337:                                              ; preds = %240, %243, %269, %201, %198, %334
  %338 = phi i32 [ %336, %334 ], [ %159, %198 ], [ %159, %201 ], [ %204, %269 ], [ %204, %243 ], [ %204, %240 ]
  %339 = add nuw nsw i64 %151, 1
  %340 = icmp eq i64 %339, %149
  br i1 %340, label %344, label %150, !llvm.loop !111

341:                                              ; preds = %157
  %342 = icmp eq ptr %161, null
  br i1 %342, label %344, label %343

343:                                              ; preds = %341
  call void @free(ptr noundef %161)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br label %344

344:                                              ; preds = %337, %334, %202, %141, %343, %341
  %345 = phi i32 [ 0, %341 ], [ 0, %343 ], [ 0, %141 ], [ %204, %202 ], [ %336, %334 ], [ %338, %337 ]
  br i1 %119, label %346, label %353

346:                                              ; preds = %344
  %347 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %348 = load ptr, ptr %347, align 8, !tbaa !59
  %349 = getelementptr inbounds i8, ptr %348, i64 -1
  %350 = load i8, ptr %349, align 1, !tbaa !47
  %351 = icmp eq i8 %350, 62
  br i1 %351, label %352, label %353

352:                                              ; preds = %346
  call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.198)
  br label %353

353:                                              ; preds = %346, %352, %344
  %354 = phi ptr [ @.str.163, %344 ], [ @.str.48, %352 ], [ @.str.48, %346 ]
  call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull %354)
  %355 = icmp ne i32 %5, 0
  %356 = and i1 %14, %355
  br i1 %356, label %357, label %377

357:                                              ; preds = %353
  %358 = call fastcc i32 @register_Btype(ptr noundef %0)
  %359 = load ptr, ptr %2, align 8, !tbaa !57
  %360 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %361 = load ptr, ptr %360, align 8, !tbaa !59
  %362 = icmp eq ptr %359, %361
  %363 = ptrtoint ptr %361 to i64
  %364 = ptrtoint ptr %359 to i64
  %365 = sub i64 %363, %364
  %366 = trunc i64 %365 to i32
  %367 = select i1 %362, i32 0, i32 %366
  %368 = add nsw i32 %367, 1
  %369 = sext i32 %368 to i64
  %370 = call ptr @xmalloc(i64 noundef %369) #23
  %371 = sext i32 %367 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %370, ptr align 1 %359, i64 %371, i1 false)
  %372 = getelementptr inbounds i8, ptr %370, i64 %371
  store i8 0, ptr %372, align 1, !tbaa !47
  %373 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 3
  %374 = load ptr, ptr %373, align 8, !tbaa !75
  %375 = sext i32 %358 to i64
  %376 = getelementptr inbounds ptr, ptr %374, i64 %375
  store ptr %370, ptr %376, align 8, !tbaa !35
  br label %377

377:                                              ; preds = %30, %26, %18, %353, %357, %121, %81, %84
  %378 = phi i32 [ 0, %84 ], [ 0, %81 ], [ 0, %121 ], [ %345, %357 ], [ %345, %353 ], [ 0, %18 ], [ 0, %26 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #23
  ret i32 %378
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: cold nounwind uwtable
define internal fastcc void @string_append(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #10 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %1, align 1, !tbaa !47
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  %9 = trunc i64 %8 to i32
  tail call fastcc void @string_need(ptr noundef %0, i32 noundef %9)
  %10 = getelementptr inbounds %struct.string, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  %12 = shl i64 %8, 32
  %13 = ashr exact i64 %12, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr nonnull align 1 %1, i64 %13, i1 false)
  %14 = load ptr, ptr %10, align 8, !tbaa !59
  %15 = getelementptr inbounds i8, ptr %14, i64 %13
  store ptr %15, ptr %10, align 8, !tbaa !59
  br label %16

16:                                               ; preds = %2, %4, %7
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @register_Btype(ptr nocapture noundef %0) unnamed_addr #10 !prof !34 {
  %2 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !74
  %4 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !112
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = icmp eq i32 %5, 0
  %9 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 3
  br i1 %8, label %10, label %12

10:                                               ; preds = %7
  store i32 5, ptr %4, align 4, !tbaa !112
  %11 = tail call ptr @xmalloc(i64 noundef 40) #23
  br label %18

12:                                               ; preds = %7
  %13 = shl nsw i32 %5, 1
  store i32 %13, ptr %4, align 4, !tbaa !112
  %14 = load ptr, ptr %9, align 8, !tbaa !75
  %15 = sext i32 %13 to i64
  %16 = shl nsw i64 %15, 3
  %17 = tail call ptr @xrealloc(ptr noundef %14, i64 noundef %16) #23
  br label %18

18:                                               ; preds = %12, %10
  %19 = phi ptr [ %11, %10 ], [ %17, %12 ]
  store ptr %19, ptr %9, align 8, !tbaa !75
  br label %20

20:                                               ; preds = %18, %1
  %21 = load i32, ptr %2, align 4, !tbaa !74
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %2, align 4, !tbaa !74
  %23 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !75
  %25 = sext i32 %21 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  store ptr null, ptr %26, align 8, !tbaa !35
  ret i32 %21
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @consume_count_with_underscores(ptr nocapture noundef %0) unnamed_addr #18 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = load i8, ptr %2, align 1, !tbaa !47
  %4 = icmp eq i8 %3, 95
  br i1 %4, label %5, label %42

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %2, i64 1
  store ptr %6, ptr %0, align 8, !tbaa !35
  %7 = load i8, ptr %6, align 1, !tbaa !47
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !60
  %11 = and i16 %10, 4
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %52, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr %0, align 8, !tbaa !35
  %15 = load i8, ptr %14, align 1, !tbaa !47
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !60
  %19 = and i16 %18, 4
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %13, %21
  %22 = phi i8 [ %30, %21 ], [ %15, %13 ]
  %23 = phi i32 [ %28, %21 ], [ 0, %13 ]
  %24 = phi ptr [ %29, %21 ], [ %14, %13 ]
  %25 = mul nsw i32 %23, 10
  %26 = sext i8 %22 to i32
  %27 = add i32 %25, -48
  %28 = add i32 %27, %26
  %29 = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %29, ptr %0, align 8, !tbaa !35
  %30 = load i8, ptr %29, align 1, !tbaa !47
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !60
  %34 = and i16 %33, 4
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %21, !llvm.loop !71

36:                                               ; preds = %21, %13
  %37 = phi i32 [ 0, %13 ], [ %28, %21 ]
  %38 = phi ptr [ %14, %13 ], [ %29, %21 ]
  %39 = phi i8 [ %15, %13 ], [ %30, %21 ]
  %40 = tail call i32 @llvm.smax.i32(i32 %37, i32 -1)
  %41 = icmp eq i8 %39, 95
  br i1 %41, label %48, label %52

42:                                               ; preds = %1
  %43 = add i8 %3, -58
  %44 = icmp ult i8 %43, -10
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = add nsw i8 %3, -48
  %47 = zext nneg i8 %46 to i32
  br label %48

48:                                               ; preds = %36, %45
  %49 = phi ptr [ %2, %45 ], [ %38, %36 ]
  %50 = phi i32 [ %47, %45 ], [ %40, %36 ]
  %51 = getelementptr inbounds i8, ptr %49, i64 1
  store ptr %51, ptr %0, align 8, !tbaa !35
  br label %52

52:                                               ; preds = %42, %36, %5, %48
  %53 = phi i32 [ %50, %48 ], [ -1, %5 ], [ -1, %36 ], [ -1, %42 ]
  ret i32 %53
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @remember_Ktype(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #10 !prof !34 {
  %4 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !80
  %6 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !113
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %22, label %9

9:                                                ; preds = %3
  %10 = icmp eq i32 %7, 0
  %11 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 2
  br i1 %10, label %12, label %14

12:                                               ; preds = %9
  store i32 5, ptr %6, align 8, !tbaa !113
  %13 = tail call ptr @xmalloc(i64 noundef 40) #23
  br label %20

14:                                               ; preds = %9
  %15 = shl nsw i32 %7, 1
  store i32 %15, ptr %6, align 8, !tbaa !113
  %16 = load ptr, ptr %11, align 8, !tbaa !81
  %17 = sext i32 %15 to i64
  %18 = shl nsw i64 %17, 3
  %19 = tail call ptr @xrealloc(ptr noundef %16, i64 noundef %18) #23
  br label %20

20:                                               ; preds = %14, %12
  %21 = phi ptr [ %13, %12 ], [ %19, %14 ]
  store ptr %21, ptr %11, align 8, !tbaa !81
  br label %22

22:                                               ; preds = %20, %3
  %23 = add nsw i32 %2, 1
  %24 = sext i32 %23 to i64
  %25 = tail call ptr @xmalloc(i64 noundef %24) #23
  %26 = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %1, i64 %26, i1 false)
  %27 = getelementptr inbounds i8, ptr %25, i64 %26
  store i8 0, ptr %27, align 1, !tbaa !47
  %28 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !81
  %30 = load i32, ptr %4, align 8, !tbaa !80
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %4, align 8, !tbaa !80
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds ptr, ptr %29, i64 %32
  store ptr %25, ptr %33, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @string_prepends(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.string, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %35, label %7

7:                                                ; preds = %2
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %3 to i64
  %10 = sub i64 %8, %9
  %11 = trunc i64 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %7
  tail call fastcc void @string_need(ptr noundef %0, i32 noundef %11)
  %14 = getelementptr inbounds %struct.string, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = getelementptr inbounds i8, ptr %15, i64 -1
  %17 = load ptr, ptr %0, align 8, !tbaa !57
  %18 = icmp ult ptr %16, %17
  br i1 %18, label %29, label %19

19:                                               ; preds = %13
  %20 = shl i64 %10, 32
  %21 = ashr exact i64 %20, 32
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi ptr [ %16, %19 ], [ %26, %22 ]
  %24 = load i8, ptr %23, align 1, !tbaa !47
  %25 = getelementptr inbounds i8, ptr %23, i64 %21
  store i8 %24, ptr %25, align 1, !tbaa !47
  %26 = getelementptr inbounds i8, ptr %23, i64 -1
  %27 = load ptr, ptr %0, align 8, !tbaa !57
  %28 = icmp ult ptr %26, %27
  br i1 %28, label %29, label %22, !llvm.loop !72

29:                                               ; preds = %22, %13
  %30 = phi ptr [ %17, %13 ], [ %27, %22 ]
  %31 = shl i64 %10, 32
  %32 = ashr exact i64 %31, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %30, ptr align 1 %3, i64 %32, i1 false)
  %33 = load ptr, ptr %14, align 8, !tbaa !59
  %34 = getelementptr inbounds i8, ptr %33, i64 %32
  store ptr %34, ptr %14, align 8, !tbaa !59
  br label %35

35:                                               ; preds = %29, %7, %2
  ret void
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc void @string_need(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #10 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = tail call i32 @llvm.smax.i32(i32 %1, i32 32)
  %7 = zext nneg i32 %6 to i64
  %8 = tail call ptr @xmalloc(i64 noundef %7) #23
  store ptr %8, ptr %0, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.string, ptr %0, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !59
  %10 = getelementptr inbounds i8, ptr %8, i64 %7
  %11 = getelementptr inbounds %struct.string, ptr %0, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !114
  br label %34

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.string, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !114
  %15 = getelementptr inbounds %struct.string, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  %17 = ptrtoint ptr %14 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = sext i32 %1 to i64
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %12
  %23 = ptrtoint ptr %3 to i64
  %24 = sub i64 %18, %23
  %25 = trunc i64 %24 to i32
  %26 = add nsw i32 %25, %1
  %27 = shl nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = tail call ptr @xrealloc(ptr noundef nonnull %3, i64 noundef %28) #23
  store ptr %29, ptr %0, align 8, !tbaa !57
  %30 = shl i64 %24, 32
  %31 = ashr exact i64 %30, 32
  %32 = getelementptr inbounds i8, ptr %29, i64 %31
  store ptr %32, ptr %15, align 8, !tbaa !59
  %33 = getelementptr inbounds i8, ptr %29, i64 %28
  store ptr %33, ptr %13, align 8, !tbaa !114
  br label %34

34:                                               ; preds = %12, %22, %5
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @get_count(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #18 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load i8, ptr %3, align 1, !tbaa !47
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !60
  %8 = and i16 %7, 4
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %39, label %10

10:                                               ; preds = %2
  %11 = sext i8 %4 to i32
  %12 = add nsw i32 %11, -48
  store i32 %12, ptr %1, align 4, !tbaa !39
  %13 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %13, ptr %0, align 8, !tbaa !35
  %14 = load i8, ptr %13, align 1, !tbaa !47
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !60
  %18 = and i16 %17, 4
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %10, %20
  %21 = phi ptr [ %28, %20 ], [ %13, %10 ]
  %22 = phi i32 [ %27, %20 ], [ %12, %10 ]
  %23 = mul nsw i32 %22, 10
  %24 = load i8, ptr %21, align 1, !tbaa !47
  %25 = sext i8 %24 to i32
  %26 = add i32 %23, -48
  %27 = add i32 %26, %25
  %28 = getelementptr inbounds i8, ptr %21, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !47
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !60
  %33 = and i16 %32, 4
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %20, !llvm.loop !115

35:                                               ; preds = %20
  %36 = icmp eq i8 %29, 95
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = getelementptr inbounds i8, ptr %21, i64 2
  store ptr %38, ptr %0, align 8, !tbaa !35
  store i32 %27, ptr %1, align 4, !tbaa !39
  br label %39

39:                                               ; preds = %35, %37, %10, %2
  %40 = phi i32 [ 0, %2 ], [ 1, %10 ], [ 1, %37 ], [ 1, %35 ]
  ret i32 %40
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @demangle_template_template_parm(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #10 !prof !34 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.string, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #23
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.200)
  %6 = call fastcc i32 @get_count(ptr noundef %1, ptr noundef nonnull %4), !range !68
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %57, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %4, align 4, !tbaa !39
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %57

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.string, ptr %5, i64 0, i32 1
  %13 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  br label %14

14:                                               ; preds = %11, %50
  %15 = phi i32 [ 1, %11 ], [ %51, %50 ]
  %16 = phi i1 [ true, %11 ], [ false, %50 ]
  %17 = phi i32 [ 0, %11 ], [ %52, %50 ]
  br i1 %16, label %19, label %18

18:                                               ; preds = %14
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.166)
  br label %19

19:                                               ; preds = %18, %14
  %20 = load ptr, ptr %1, align 8, !tbaa !35
  %21 = load i8, ptr %20, align 1, !tbaa !47
  switch i8 %21, label %28 [
    i8 90, label %22
    i8 122, label %24
  ]

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %23, ptr %1, align 8, !tbaa !35
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.201)
  br label %50

24:                                               ; preds = %19
  %25 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %25, ptr %1, align 8, !tbaa !35
  %26 = tail call fastcc i32 @demangle_template_template_parm(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %57, label %50

28:                                               ; preds = %19
  %29 = call fastcc i32 @do_type(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5), !range !56
  %30 = icmp eq i32 %29, 0
  %31 = load ptr, ptr %5, align 8, !tbaa !57
  br i1 %30, label %54, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %12, align 8, !tbaa !59
  %34 = icmp eq ptr %31, %33
  br i1 %34, label %46, label %35

35:                                               ; preds = %32
  %36 = ptrtoint ptr %33 to i64
  %37 = ptrtoint ptr %31 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef %39)
  %40 = load ptr, ptr %13, align 8, !tbaa !59
  %41 = load ptr, ptr %5, align 8, !tbaa !57
  %42 = shl i64 %38, 32
  %43 = ashr exact i64 %42, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %40, ptr align 1 %41, i64 %43, i1 false)
  %44 = load ptr, ptr %13, align 8, !tbaa !59
  %45 = getelementptr inbounds i8, ptr %44, i64 %43
  store ptr %45, ptr %13, align 8, !tbaa !59
  br label %46

46:                                               ; preds = %32, %35
  %47 = load ptr, ptr %5, align 8, !tbaa !57
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @free(ptr noundef %47)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %50

50:                                               ; preds = %49, %46, %24, %22
  %51 = phi i32 [ %15, %22 ], [ %26, %24 ], [ %29, %46 ], [ %29, %49 ]
  %52 = add nuw nsw i32 %17, 1
  %53 = icmp eq i32 %52, %9
  br i1 %53, label %57, label %14, !llvm.loop !116

54:                                               ; preds = %28
  %55 = icmp eq ptr %31, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %54
  tail call void @free(ptr noundef %31)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %57

57:                                               ; preds = %24, %50, %8, %3, %56, %54
  %58 = phi i32 [ 0, %54 ], [ 0, %56 ], [ 1, %3 ], [ 1, %8 ], [ %51, %50 ], [ 0, %24 ]
  %59 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !59
  %61 = getelementptr inbounds i8, ptr %60, i64 -1
  %62 = load i8, ptr %61, align 1, !tbaa !47
  %63 = icmp eq i8 %62, 62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.198)
  br label %65

65:                                               ; preds = %64, %57
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.202)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  ret i32 %58
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @demangle_template_value_parm(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #10 !prof !34 {
  %5 = alloca [32 x i8], align 16
  %6 = alloca [33 x i8], align 16
  %7 = load ptr, ptr %1, align 8, !tbaa !35
  %8 = load i8, ptr %7, align 1, !tbaa !47
  %9 = icmp eq i8 %8, 89
  br i1 %9, label %10, label %34

10:                                               ; preds = %4
  %11 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %11, ptr %1, align 8, !tbaa !35
  %12 = tail call fastcc i32 @consume_count_with_underscores(ptr noundef nonnull %1)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %376, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 16
  %16 = load ptr, ptr %15, align 8, !tbaa !76
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 17
  %20 = load i32, ptr %19, align 8, !tbaa !77
  %21 = icmp slt i32 %12, %20
  br i1 %21, label %22, label %376

22:                                               ; preds = %18, %14
  %23 = tail call fastcc i32 @consume_count_with_underscores(ptr noundef nonnull %1)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %376, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %15, align 8, !tbaa !76
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = sext i32 %12 to i64
  %30 = getelementptr inbounds ptr, ptr %26, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !35
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef %31)
  br label %376

32:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %6) #23
  %33 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.199, i32 noundef %12)
  call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %6) #23
  br label %376

34:                                               ; preds = %4
  switch i32 %3, label %305 [
    i32 3, label %35
    i32 5, label %108
    i32 4, label %166
    i32 6, label %210
  ]

35:                                               ; preds = %34
  switch i8 %8, label %53 [
    i8 69, label %36
    i8 81, label %38
    i8 75, label %38
    i8 95, label %40
    i8 109, label %44
  ]

36:                                               ; preds = %35
  %37 = tail call fastcc i32 @demangle_expression(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 3)
  br label %376

38:                                               ; preds = %35, %35
  %39 = tail call fastcc i32 @demangle_qualified(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %376

40:                                               ; preds = %35
  %41 = getelementptr inbounds i8, ptr %7, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !47
  %43 = icmp eq i8 %42, 109
  br i1 %43, label %44, label %53

44:                                               ; preds = %35, %40
  %45 = phi i64 [ 2, %40 ], [ 1, %35 ]
  %46 = phi i1 [ false, %40 ], [ true, %35 ]
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef 1)
  %47 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !59
  store i8 45, ptr %48, align 1
  %49 = load ptr, ptr %47, align 8, !tbaa !59
  %50 = getelementptr inbounds i8, ptr %49, i64 1
  store ptr %50, ptr %47, align 8, !tbaa !59
  %51 = load ptr, ptr %1, align 8, !tbaa !35
  %52 = getelementptr inbounds i8, ptr %51, i64 %45
  store ptr %52, ptr %1, align 8, !tbaa !35
  br label %53

53:                                               ; preds = %44, %40, %35
  %54 = phi i1 [ false, %40 ], [ true, %35 ], [ true, %44 ]
  %55 = phi i1 [ true, %40 ], [ true, %35 ], [ %46, %44 ]
  br i1 %54, label %56, label %90

56:                                               ; preds = %53
  %57 = load ptr, ptr %1, align 8, !tbaa !35
  %58 = load i8, ptr %57, align 1, !tbaa !47
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %59
  %61 = load i16, ptr %60, align 2, !tbaa !60
  %62 = and i16 %61, 4
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %92, label %64

64:                                               ; preds = %56
  %65 = load ptr, ptr %1, align 8, !tbaa !35
  %66 = load i8, ptr %65, align 1, !tbaa !47
  %67 = zext i8 %66 to i64
  %68 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %67
  %69 = load i16, ptr %68, align 2, !tbaa !60
  %70 = and i16 %69, 4
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %64, %72
  %73 = phi i8 [ %81, %72 ], [ %66, %64 ]
  %74 = phi i32 [ %79, %72 ], [ 0, %64 ]
  %75 = phi ptr [ %80, %72 ], [ %65, %64 ]
  %76 = mul nsw i32 %74, 10
  %77 = sext i8 %73 to i32
  %78 = add i32 %76, -48
  %79 = add i32 %78, %77
  %80 = getelementptr inbounds i8, ptr %75, i64 1
  store ptr %80, ptr %1, align 8, !tbaa !35
  %81 = load i8, ptr %80, align 1, !tbaa !47
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %82
  %84 = load i16, ptr %83, align 2, !tbaa !60
  %85 = and i16 %84, 4
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %87, label %72, !llvm.loop !71

87:                                               ; preds = %72, %64
  %88 = phi i32 [ 0, %64 ], [ %79, %72 ]
  %89 = tail call i32 @llvm.smax.i32(i32 %88, i32 -1)
  br label %92

90:                                               ; preds = %53
  %91 = tail call fastcc i32 @consume_count_with_underscores(ptr noundef nonnull %1)
  br label %92

92:                                               ; preds = %87, %56, %90
  %93 = phi i32 [ %91, %90 ], [ %89, %87 ], [ -1, %56 ]
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %376, label %95

95:                                               ; preds = %92
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %96 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.207, i32 noundef %93)
  call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull %5)
  %97 = icmp sgt i32 %93, 9
  %98 = or i1 %54, %97
  %99 = xor i1 %98, true
  %100 = or i1 %55, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load ptr, ptr %1, align 8, !tbaa !35
  %103 = load i8, ptr %102, align 1, !tbaa !47
  %104 = icmp eq i8 %103, 95
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = getelementptr inbounds i8, ptr %102, i64 1
  store ptr %106, ptr %1, align 8, !tbaa !35
  br label %107

107:                                              ; preds = %105, %101, %95
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %376

108:                                              ; preds = %34
  %109 = icmp eq i8 %8, 109
  br i1 %109, label %110, label %117

110:                                              ; preds = %108
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef 1)
  %111 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !59
  store i8 45, ptr %112, align 1
  %113 = load ptr, ptr %111, align 8, !tbaa !59
  %114 = getelementptr inbounds i8, ptr %113, i64 1
  store ptr %114, ptr %111, align 8, !tbaa !59
  %115 = load ptr, ptr %1, align 8, !tbaa !35
  %116 = getelementptr inbounds i8, ptr %115, i64 1
  store ptr %116, ptr %1, align 8, !tbaa !35
  br label %117

117:                                              ; preds = %110, %108
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef 1)
  %118 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !59
  store i8 39, ptr %119, align 1
  %120 = load ptr, ptr %118, align 8, !tbaa !59
  %121 = getelementptr inbounds i8, ptr %120, i64 1
  store ptr %121, ptr %118, align 8, !tbaa !59
  %122 = load ptr, ptr %1, align 8, !tbaa !35
  %123 = load i8, ptr %122, align 1, !tbaa !47
  %124 = zext i8 %123 to i64
  %125 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %124
  %126 = load i16, ptr %125, align 2, !tbaa !60
  %127 = and i16 %126, 4
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %155, label %129

129:                                              ; preds = %117
  %130 = load ptr, ptr %1, align 8, !tbaa !35
  %131 = load i8, ptr %130, align 1, !tbaa !47
  %132 = zext i8 %131 to i64
  %133 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %132
  %134 = load i16, ptr %133, align 2, !tbaa !60
  %135 = and i16 %134, 4
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %152, label %137

137:                                              ; preds = %129, %137
  %138 = phi i8 [ %146, %137 ], [ %131, %129 ]
  %139 = phi i32 [ %144, %137 ], [ 0, %129 ]
  %140 = phi ptr [ %145, %137 ], [ %130, %129 ]
  %141 = mul nsw i32 %139, 10
  %142 = sext i8 %138 to i32
  %143 = add i32 %141, -48
  %144 = add i32 %143, %142
  %145 = getelementptr inbounds i8, ptr %140, i64 1
  store ptr %145, ptr %1, align 8, !tbaa !35
  %146 = load i8, ptr %145, align 1, !tbaa !47
  %147 = zext i8 %146 to i64
  %148 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %147
  %149 = load i16, ptr %148, align 2, !tbaa !60
  %150 = and i16 %149, 4
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %152, label %137, !llvm.loop !71

152:                                              ; preds = %137, %129
  %153 = phi i32 [ 0, %129 ], [ %144, %137 ]
  %154 = tail call i32 @llvm.smax.i32(i32 %153, i32 -1)
  br label %155

155:                                              ; preds = %117, %152
  %156 = phi i32 [ %154, %152 ], [ -1, %117 ]
  %157 = icmp slt i32 %156, 1
  br i1 %157, label %376, label %158

158:                                              ; preds = %155
  %159 = trunc i32 %156 to i8
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef 1)
  %160 = load ptr, ptr %118, align 8, !tbaa !59
  store i8 %159, ptr %160, align 1
  %161 = load ptr, ptr %118, align 8, !tbaa !59
  %162 = getelementptr inbounds i8, ptr %161, i64 1
  store ptr %162, ptr %118, align 8, !tbaa !59
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef 1)
  %163 = load ptr, ptr %118, align 8, !tbaa !59
  store i8 39, ptr %163, align 1
  %164 = load ptr, ptr %118, align 8, !tbaa !59
  %165 = getelementptr inbounds i8, ptr %164, i64 1
  store ptr %165, ptr %118, align 8, !tbaa !59
  br label %376

166:                                              ; preds = %34
  %167 = zext i8 %8 to i64
  %168 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %167
  %169 = load i16, ptr %168, align 2, !tbaa !60
  %170 = and i16 %169, 4
  %171 = icmp eq i16 %170, 0
  br i1 %171, label %198, label %172

172:                                              ; preds = %166
  %173 = load ptr, ptr %1, align 8, !tbaa !35
  %174 = load i8, ptr %173, align 1, !tbaa !47
  %175 = zext i8 %174 to i64
  %176 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %175
  %177 = load i16, ptr %176, align 2, !tbaa !60
  %178 = and i16 %177, 4
  %179 = icmp eq i16 %178, 0
  br i1 %179, label %195, label %180

180:                                              ; preds = %172, %180
  %181 = phi i8 [ %189, %180 ], [ %174, %172 ]
  %182 = phi i32 [ %187, %180 ], [ 0, %172 ]
  %183 = phi ptr [ %188, %180 ], [ %173, %172 ]
  %184 = mul nsw i32 %182, 10
  %185 = sext i8 %181 to i32
  %186 = add i32 %184, -48
  %187 = add i32 %186, %185
  %188 = getelementptr inbounds i8, ptr %183, i64 1
  store ptr %188, ptr %1, align 8, !tbaa !35
  %189 = load i8, ptr %188, align 1, !tbaa !47
  %190 = zext i8 %189 to i64
  %191 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %190
  %192 = load i16, ptr %191, align 2, !tbaa !60
  %193 = and i16 %192, 4
  %194 = icmp eq i16 %193, 0
  br i1 %194, label %195, label %180, !llvm.loop !71

195:                                              ; preds = %180, %172
  %196 = phi i32 [ 0, %172 ], [ %187, %180 ]
  %197 = tail call i32 @llvm.smax.i32(i32 %196, i32 -1)
  br label %198

198:                                              ; preds = %166, %195
  %199 = phi i32 [ %197, %195 ], [ -1, %166 ]
  switch i32 %199, label %376 [
    i32 0, label %200
    i32 1, label %205
  ]

200:                                              ; preds = %198
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef 5)
  %201 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %202, ptr noundef nonnull align 1 dereferenceable(5) @.str.204, i64 5, i1 false)
  %203 = load ptr, ptr %201, align 8, !tbaa !59
  %204 = getelementptr inbounds i8, ptr %203, i64 5
  store ptr %204, ptr %201, align 8, !tbaa !59
  br label %376

205:                                              ; preds = %198
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef 4)
  %206 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !59
  store i32 1702195828, ptr %207, align 1
  %208 = load ptr, ptr %206, align 8, !tbaa !59
  %209 = getelementptr inbounds i8, ptr %208, i64 4
  store ptr %209, ptr %206, align 8, !tbaa !59
  br label %376

210:                                              ; preds = %34
  switch i8 %8, label %220 [
    i8 69, label %211
    i8 109, label %213
  ]

211:                                              ; preds = %210
  %212 = tail call fastcc i32 @demangle_expression(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 6)
  br label %376

213:                                              ; preds = %210
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef 1)
  %214 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !59
  store i8 45, ptr %215, align 1
  %216 = load ptr, ptr %214, align 8, !tbaa !59
  %217 = getelementptr inbounds i8, ptr %216, i64 1
  store ptr %217, ptr %214, align 8, !tbaa !59
  %218 = load ptr, ptr %1, align 8, !tbaa !35
  %219 = getelementptr inbounds i8, ptr %218, i64 1
  store ptr %219, ptr %1, align 8, !tbaa !35
  br label %220

220:                                              ; preds = %213, %210
  %221 = load ptr, ptr %1, align 8, !tbaa !35
  %222 = load i8, ptr %221, align 1, !tbaa !47
  %223 = zext i8 %222 to i64
  %224 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %223
  %225 = load i16, ptr %224, align 2, !tbaa !60
  %226 = and i16 %225, 4
  %227 = icmp eq i16 %226, 0
  br i1 %227, label %244, label %228

228:                                              ; preds = %220
  %229 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  br label %230

230:                                              ; preds = %228, %230
  %231 = phi ptr [ %221, %228 ], [ %237, %230 ]
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef 1)
  %232 = load ptr, ptr %229, align 8, !tbaa !59
  %233 = load i8, ptr %231, align 1
  store i8 %233, ptr %232, align 1
  %234 = load ptr, ptr %229, align 8, !tbaa !59
  %235 = getelementptr inbounds i8, ptr %234, i64 1
  store ptr %235, ptr %229, align 8, !tbaa !59
  %236 = load ptr, ptr %1, align 8, !tbaa !35
  %237 = getelementptr inbounds i8, ptr %236, i64 1
  store ptr %237, ptr %1, align 8, !tbaa !35
  %238 = load i8, ptr %237, align 1, !tbaa !47
  %239 = zext i8 %238 to i64
  %240 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %239
  %241 = load i16, ptr %240, align 2, !tbaa !60
  %242 = and i16 %241, 4
  %243 = icmp eq i16 %242, 0
  br i1 %243, label %244, label %230, !llvm.loop !117

244:                                              ; preds = %230, %220
  %245 = phi i8 [ %222, %220 ], [ %238, %230 ]
  %246 = icmp eq i8 %245, 46
  br i1 %246, label %247, label %274

247:                                              ; preds = %244
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef 1)
  %248 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !59
  store i8 46, ptr %249, align 1
  %250 = load ptr, ptr %248, align 8, !tbaa !59
  %251 = getelementptr inbounds i8, ptr %250, i64 1
  store ptr %251, ptr %248, align 8, !tbaa !59
  %252 = load ptr, ptr %1, align 8, !tbaa !35
  %253 = getelementptr inbounds i8, ptr %252, i64 1
  store ptr %253, ptr %1, align 8, !tbaa !35
  %254 = load i8, ptr %253, align 1, !tbaa !47
  %255 = zext i8 %254 to i64
  %256 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %255
  %257 = load i16, ptr %256, align 2, !tbaa !60
  %258 = and i16 %257, 4
  %259 = icmp eq i16 %258, 0
  br i1 %259, label %274, label %260

260:                                              ; preds = %247, %260
  %261 = phi ptr [ %267, %260 ], [ %253, %247 ]
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef 1)
  %262 = load ptr, ptr %248, align 8, !tbaa !59
  %263 = load i8, ptr %261, align 1
  store i8 %263, ptr %262, align 1
  %264 = load ptr, ptr %248, align 8, !tbaa !59
  %265 = getelementptr inbounds i8, ptr %264, i64 1
  store ptr %265, ptr %248, align 8, !tbaa !59
  %266 = load ptr, ptr %1, align 8, !tbaa !35
  %267 = getelementptr inbounds i8, ptr %266, i64 1
  store ptr %267, ptr %1, align 8, !tbaa !35
  %268 = load i8, ptr %267, align 1, !tbaa !47
  %269 = zext i8 %268 to i64
  %270 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %269
  %271 = load i16, ptr %270, align 2, !tbaa !60
  %272 = and i16 %271, 4
  %273 = icmp eq i16 %272, 0
  br i1 %273, label %274, label %260, !llvm.loop !118

274:                                              ; preds = %260, %247, %244
  %275 = load ptr, ptr %1, align 8, !tbaa !35
  %276 = load i8, ptr %275, align 1, !tbaa !47
  %277 = icmp eq i8 %276, 101
  br i1 %277, label %278, label %376

278:                                              ; preds = %274
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef 1)
  %279 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !59
  store i8 101, ptr %280, align 1
  %281 = load ptr, ptr %279, align 8, !tbaa !59
  %282 = getelementptr inbounds i8, ptr %281, i64 1
  store ptr %282, ptr %279, align 8, !tbaa !59
  %283 = load ptr, ptr %1, align 8, !tbaa !35
  %284 = getelementptr inbounds i8, ptr %283, i64 1
  store ptr %284, ptr %1, align 8, !tbaa !35
  %285 = load i8, ptr %284, align 1, !tbaa !47
  %286 = zext i8 %285 to i64
  %287 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %286
  %288 = load i16, ptr %287, align 2, !tbaa !60
  %289 = and i16 %288, 4
  %290 = icmp eq i16 %289, 0
  br i1 %290, label %376, label %291

291:                                              ; preds = %278, %291
  %292 = phi ptr [ %298, %291 ], [ %284, %278 ]
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef 1)
  %293 = load ptr, ptr %279, align 8, !tbaa !59
  %294 = load i8, ptr %292, align 1
  store i8 %294, ptr %293, align 1
  %295 = load ptr, ptr %279, align 8, !tbaa !59
  %296 = getelementptr inbounds i8, ptr %295, i64 1
  store ptr %296, ptr %279, align 8, !tbaa !59
  %297 = load ptr, ptr %1, align 8, !tbaa !35
  %298 = getelementptr inbounds i8, ptr %297, i64 1
  store ptr %298, ptr %1, align 8, !tbaa !35
  %299 = load i8, ptr %298, align 1, !tbaa !47
  %300 = zext i8 %299 to i64
  %301 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %300
  %302 = load i16, ptr %301, align 2, !tbaa !60
  %303 = and i16 %302, 4
  %304 = icmp eq i16 %303, 0
  br i1 %304, label %376, label %291, !llvm.loop !119

305:                                              ; preds = %34
  %306 = icmp eq i32 %3, 1
  %307 = add i32 %3, -1
  %308 = icmp ult i32 %307, 2
  br i1 %308, label %309, label %376

309:                                              ; preds = %305
  %310 = icmp eq i8 %8, 81
  br i1 %310, label %311, label %313

311:                                              ; preds = %309
  %312 = tail call fastcc i32 @demangle_qualified(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %376

313:                                              ; preds = %309
  %314 = zext i8 %8 to i64
  %315 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %314
  %316 = load i16, ptr %315, align 2, !tbaa !60
  %317 = and i16 %316, 4
  %318 = icmp eq i16 %317, 0
  br i1 %318, label %345, label %319

319:                                              ; preds = %313
  %320 = load ptr, ptr %1, align 8, !tbaa !35
  %321 = load i8, ptr %320, align 1, !tbaa !47
  %322 = zext i8 %321 to i64
  %323 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %322
  %324 = load i16, ptr %323, align 2, !tbaa !60
  %325 = and i16 %324, 4
  %326 = icmp eq i16 %325, 0
  br i1 %326, label %342, label %327

327:                                              ; preds = %319, %327
  %328 = phi i8 [ %336, %327 ], [ %321, %319 ]
  %329 = phi i32 [ %334, %327 ], [ 0, %319 ]
  %330 = phi ptr [ %335, %327 ], [ %320, %319 ]
  %331 = mul nsw i32 %329, 10
  %332 = sext i8 %328 to i32
  %333 = add i32 %331, -48
  %334 = add i32 %333, %332
  %335 = getelementptr inbounds i8, ptr %330, i64 1
  store ptr %335, ptr %1, align 8, !tbaa !35
  %336 = load i8, ptr %335, align 1, !tbaa !47
  %337 = zext i8 %336 to i64
  %338 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %337
  %339 = load i16, ptr %338, align 2, !tbaa !60
  %340 = and i16 %339, 4
  %341 = icmp eq i16 %340, 0
  br i1 %341, label %342, label %327, !llvm.loop !71

342:                                              ; preds = %327, %319
  %343 = phi i32 [ 0, %319 ], [ %334, %327 ]
  %344 = tail call i32 @llvm.smax.i32(i32 %343, i32 -1)
  br label %345

345:                                              ; preds = %313, %342
  %346 = phi i32 [ %344, %342 ], [ -1, %313 ]
  switch i32 %346, label %352 [
    i32 -1, label %376
    i32 0, label %347
  ]

347:                                              ; preds = %345
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef 1)
  %348 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %349 = load ptr, ptr %348, align 8, !tbaa !59
  store i8 48, ptr %349, align 1
  %350 = load ptr, ptr %348, align 8, !tbaa !59
  %351 = getelementptr inbounds i8, ptr %350, i64 1
  store ptr %351, ptr %348, align 8, !tbaa !59
  br label %372

352:                                              ; preds = %345
  %353 = add nuw nsw i32 %346, 1
  %354 = sext i32 %353 to i64
  %355 = tail call ptr @xmalloc(i64 noundef %354) #23
  %356 = load ptr, ptr %1, align 8, !tbaa !35
  %357 = sext i32 %346 to i64
  %358 = tail call ptr @strncpy(ptr noundef %355, ptr noundef %356, i64 noundef %357)
  %359 = getelementptr inbounds i8, ptr %355, i64 %357
  store i8 0, ptr %359, align 1, !tbaa !47
  %360 = load i32, ptr %0, align 8, !tbaa !54
  %361 = tail call ptr @cplus_demangle(ptr noundef %355, i32 noundef %360)
  br i1 %306, label %362, label %367

362:                                              ; preds = %352
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef 1)
  %363 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %364 = load ptr, ptr %363, align 8, !tbaa !59
  store i8 38, ptr %364, align 1
  %365 = load ptr, ptr %363, align 8, !tbaa !59
  %366 = getelementptr inbounds i8, ptr %365, i64 1
  store ptr %366, ptr %363, align 8, !tbaa !59
  br label %367

367:                                              ; preds = %362, %352
  %368 = icmp eq ptr %361, null
  br i1 %368, label %370, label %369

369:                                              ; preds = %367
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull %361)
  tail call void @free(ptr noundef %361)
  br label %371

370:                                              ; preds = %367
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef %355)
  br label %371

371:                                              ; preds = %370, %369
  tail call void @free(ptr noundef %355)
  br label %372

372:                                              ; preds = %371, %347
  %373 = load ptr, ptr %1, align 8, !tbaa !35
  %374 = sext i32 %346 to i64
  %375 = getelementptr inbounds i8, ptr %373, i64 %374
  store ptr %375, ptr %1, align 8, !tbaa !35
  br label %376

376:                                              ; preds = %291, %278, %22, %345, %274, %211, %158, %155, %107, %92, %38, %36, %372, %18, %10, %311, %305, %28, %32, %198, %205, %200
  %377 = phi i32 [ %312, %311 ], [ 1, %305 ], [ 1, %28 ], [ 1, %32 ], [ 1, %200 ], [ 1, %205 ], [ 0, %198 ], [ -1, %10 ], [ -1, %18 ], [ %346, %345 ], [ 1, %372 ], [ %37, %36 ], [ %39, %38 ], [ 1, %107 ], [ 0, %92 ], [ 1, %158 ], [ 0, %155 ], [ %212, %211 ], [ 1, %274 ], [ -1, %22 ], [ 1, %278 ], [ 1, %291 ]
  ret i32 %377
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #13

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @demangle_expression(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #10 !prof !34 {
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef 1)
  %5 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  store i8 40, ptr %6, align 1
  %7 = load ptr, ptr %5, align 8, !tbaa !59
  %8 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %8, ptr %5, align 8, !tbaa !59
  %9 = load ptr, ptr %1, align 8, !tbaa !35
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %10, ptr %1, align 8, !tbaa !35
  br label %11

11:                                               ; preds = %4, %49
  %12 = phi i1 [ true, %4 ], [ false, %49 ]
  %13 = phi i32 [ 1, %4 ], [ %50, %49 ]
  %14 = load ptr, ptr %1, align 8, !tbaa !35
  %15 = load i8, ptr %14, align 1, !tbaa !47
  switch i8 %15, label %16 [
    i8 87, label %52
    i8 0, label %52
  ]

16:                                               ; preds = %11
  br i1 %12, label %49, label %17

17:                                               ; preds = %16
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14)
  br label %19

19:                                               ; preds = %41, %17
  %20 = phi i32 [ 0, %17 ], [ %42, %41 ]
  %21 = phi i64 [ 0, %17 ], [ %44, %41 ]
  %22 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !61
  %24 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %23)
  %25 = icmp ugt i64 %24, %18
  br i1 %25, label %41, label %26

26:                                               ; preds = %19
  %27 = load ptr, ptr %1, align 8, !tbaa !35
  %28 = tail call i32 @bcmp(ptr %23, ptr %27, i64 %24)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef 1)
  %31 = load ptr, ptr %5, align 8, !tbaa !59
  store i8 32, ptr %31, align 1
  %32 = load ptr, ptr %5, align 8, !tbaa !59
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  store ptr %33, ptr %5, align 8, !tbaa !59
  %34 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %21, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !63
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef %35)
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef 1)
  %36 = load ptr, ptr %5, align 8, !tbaa !59
  store i8 32, ptr %36, align 1
  %37 = load ptr, ptr %5, align 8, !tbaa !59
  %38 = getelementptr inbounds i8, ptr %37, i64 1
  store ptr %38, ptr %5, align 8, !tbaa !59
  %39 = load ptr, ptr %1, align 8, !tbaa !35
  %40 = getelementptr inbounds i8, ptr %39, i64 %24
  store ptr %40, ptr %1, align 8, !tbaa !35
  br label %41

41:                                               ; preds = %19, %26, %30
  %42 = phi i32 [ 1, %30 ], [ %20, %26 ], [ %20, %19 ]
  %43 = phi i1 [ false, %30 ], [ true, %26 ], [ true, %19 ]
  %44 = add nuw nsw i64 %21, 1
  %45 = icmp ult i64 %21, 78
  %46 = and i1 %43, %45
  br i1 %46, label %19, label %47, !llvm.loop !120

47:                                               ; preds = %41
  %48 = icmp eq i32 %42, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %47, %16
  %50 = tail call fastcc i32 @demangle_template_value_parm(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %11, !llvm.loop !121

52:                                               ; preds = %11, %47, %11, %49
  %53 = phi i32 [ %42, %47 ], [ 0, %49 ], [ %13, %11 ], [ %13, %11 ]
  %54 = load ptr, ptr %1, align 8, !tbaa !35
  %55 = load i8, ptr %54, align 1, !tbaa !47
  %56 = icmp eq i8 %55, 87
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef 1)
  %58 = load ptr, ptr %5, align 8, !tbaa !59
  store i8 41, ptr %58, align 1
  %59 = load ptr, ptr %5, align 8, !tbaa !59
  %60 = getelementptr inbounds i8, ptr %59, i64 1
  store ptr %60, ptr %5, align 8, !tbaa !59
  %61 = load ptr, ptr %1, align 8, !tbaa !35
  %62 = getelementptr inbounds i8, ptr %61, i64 1
  store ptr %62, ptr %1, align 8, !tbaa !35
  br label %63

63:                                               ; preds = %52, %57
  %64 = phi i32 [ %53, %57 ], [ 0, %52 ]
  ret i32 %64
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: cold nounwind uwtable
define internal fastcc void @demangle_arm_hp_template(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #10 !prof !34 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.string, align 8
  %7 = alloca %struct.string, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  %8 = load ptr, ptr %1, align 8, !tbaa !35
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #23
  %11 = load i32, ptr %0, align 8, !tbaa !54
  %12 = and i32 %11, 4096
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %196, label %14

14:                                               ; preds = %4
  %15 = load i8, ptr %10, align 1, !tbaa !47
  %16 = icmp eq i8 %15, 88
  br i1 %16, label %17, label %196

17:                                               ; preds = %14
  %18 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %8, i32 noundef 60)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %17
  %21 = ptrtoint ptr %18 to i64
  %22 = ptrtoint ptr %8 to i64
  %23 = sub i64 %21, %22
  %24 = icmp slt i64 %23, %9
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = trunc i64 %23 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %25
  tail call fastcc void @string_need(ptr noundef %3, i32 noundef %26)
  %29 = getelementptr inbounds %struct.string, ptr %3, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !59
  %31 = shl i64 %23, 32
  %32 = ashr exact i64 %31, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %30, ptr align 1 %8, i64 %32, i1 false)
  br label %38

33:                                               ; preds = %20, %17
  %34 = icmp eq i32 %2, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %33
  tail call fastcc void @string_need(ptr noundef %3, i32 noundef %2)
  %36 = getelementptr inbounds %struct.string, ptr %3, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %37, ptr align 1 %8, i64 %9, i1 false)
  br label %38

38:                                               ; preds = %28, %35
  %39 = phi ptr [ %36, %35 ], [ %29, %28 ]
  %40 = phi i64 [ %9, %35 ], [ %32, %28 ]
  %41 = load ptr, ptr %39, align 8, !tbaa !59
  %42 = getelementptr inbounds i8, ptr %41, i64 %40
  store ptr %42, ptr %39, align 8, !tbaa !59
  br label %43

43:                                               ; preds = %38, %33, %25
  %44 = load ptr, ptr %1, align 8, !tbaa !35
  %45 = getelementptr i8, ptr %44, i64 %9
  %46 = getelementptr i8, ptr %45, i64 1
  store ptr %46, ptr %1, align 8, !tbaa !35
  %47 = getelementptr inbounds %struct.string, ptr %6, i64 0, i32 1
  %48 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %49 = load i32, ptr %48, align 4, !tbaa !106
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.string, ptr %3, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !59
  %54 = load ptr, ptr %3, align 8, !tbaa !57
  %55 = ptrtoint ptr %53 to i64
  %56 = ptrtoint ptr %54 to i64
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, ptr %48, align 4, !tbaa !106
  br label %59

59:                                               ; preds = %51, %43
  %60 = load i32, ptr %0, align 8, !tbaa !54
  %61 = or i32 %60, 1
  store i32 %61, ptr %0, align 8, !tbaa !54
  tail call fastcc void @string_append(ptr noundef %3, ptr noundef nonnull @.str.44)
  %62 = getelementptr inbounds %struct.string, ptr %3, i64 0, i32 1
  br label %63

63:                                               ; preds = %184, %59
  %64 = load ptr, ptr %6, align 8, !tbaa !57
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call void @free(ptr noundef %64)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br label %67

67:                                               ; preds = %63, %66
  %68 = load ptr, ptr %1, align 8, !tbaa !35
  %69 = load i8, ptr %68, align 1, !tbaa !47
  switch i8 %69, label %185 [
    i8 84, label %70
    i8 65, label %111
    i8 85, label %74
    i8 83, label %74
  ]

70:                                               ; preds = %67
  %71 = getelementptr inbounds i8, ptr %68, i64 1
  store ptr %71, ptr %1, align 8, !tbaa !35
  %72 = call fastcc i32 @do_type(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %6), !range !56
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %185, label %166

74:                                               ; preds = %67, %67
  %75 = icmp eq i8 %69, 85
  %76 = getelementptr inbounds i8, ptr %68, i64 1
  store ptr %76, ptr %1, align 8, !tbaa !35
  %77 = load i8, ptr %76, align 1, !tbaa !47
  switch i8 %77, label %185 [
    i8 78, label %78
    i8 80, label %79
    i8 77, label %96
  ]

78:                                               ; preds = %74
  call fastcc void @string_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.54)
  br label %79

79:                                               ; preds = %78, %74
  %80 = load ptr, ptr %1, align 8, !tbaa !35
  %81 = getelementptr inbounds i8, ptr %80, i64 1
  store ptr %81, ptr %1, align 8, !tbaa !35
  %82 = load i8, ptr %81, align 1, !tbaa !47
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %83
  %85 = load i16, ptr %84, align 2, !tbaa !60
  %86 = and i16 %85, 4
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %185, label %88

88:                                               ; preds = %79
  %89 = load ptr, ptr %1, align 8, !tbaa !35
  %90 = load i8, ptr %89, align 1, !tbaa !47
  %91 = zext i8 %90 to i64
  %92 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !60
  %94 = and i16 %93, 4
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %109, label %99

96:                                               ; preds = %74
  call fastcc void @string_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.218)
  %97 = load ptr, ptr %1, align 8, !tbaa !35
  %98 = getelementptr inbounds i8, ptr %97, i64 1
  store ptr %98, ptr %1, align 8, !tbaa !35
  br label %166

99:                                               ; preds = %88, %99
  %100 = phi i8 [ %103, %99 ], [ %90, %88 ]
  store i8 %100, ptr @char_str, align 1, !tbaa !47
  call fastcc void @string_append(ptr noundef nonnull %6, ptr noundef nonnull @char_str)
  %101 = load ptr, ptr %1, align 8, !tbaa !35
  %102 = getelementptr inbounds i8, ptr %101, i64 1
  store ptr %102, ptr %1, align 8, !tbaa !35
  %103 = load i8, ptr %102, align 1, !tbaa !47
  %104 = zext i8 %103 to i64
  %105 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %104
  %106 = load i16, ptr %105, align 2, !tbaa !60
  %107 = and i16 %106, 4
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %109, label %99, !llvm.loop !122

109:                                              ; preds = %99, %88
  br i1 %75, label %110, label %166

110:                                              ; preds = %109
  call fastcc void @string_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.219)
  br label %166

111:                                              ; preds = %67
  %112 = getelementptr inbounds i8, ptr %68, i64 1
  store ptr %112, ptr %1, align 8, !tbaa !35
  %113 = load i8, ptr %112, align 1, !tbaa !47
  %114 = zext i8 %113 to i64
  %115 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %114
  %116 = load i16, ptr %115, align 2, !tbaa !60
  %117 = and i16 %116, 4
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %145, label %119

119:                                              ; preds = %111
  %120 = load ptr, ptr %1, align 8, !tbaa !35
  %121 = load i8, ptr %120, align 1, !tbaa !47
  %122 = zext i8 %121 to i64
  %123 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %122
  %124 = load i16, ptr %123, align 2, !tbaa !60
  %125 = and i16 %124, 4
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %142, label %127

127:                                              ; preds = %119, %127
  %128 = phi i8 [ %136, %127 ], [ %121, %119 ]
  %129 = phi i32 [ %134, %127 ], [ 0, %119 ]
  %130 = phi ptr [ %135, %127 ], [ %120, %119 ]
  %131 = mul nsw i32 %129, 10
  %132 = sext i8 %128 to i32
  %133 = add i32 %131, -48
  %134 = add i32 %133, %132
  %135 = getelementptr inbounds i8, ptr %130, i64 1
  store ptr %135, ptr %1, align 8, !tbaa !35
  %136 = load i8, ptr %135, align 1, !tbaa !47
  %137 = zext i8 %136 to i64
  %138 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %137
  %139 = load i16, ptr %138, align 2, !tbaa !60
  %140 = and i16 %139, 4
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %142, label %127, !llvm.loop !71

142:                                              ; preds = %127, %119
  %143 = phi i32 [ 0, %119 ], [ %134, %127 ]
  %144 = tail call i32 @llvm.smax.i32(i32 %143, i32 -1)
  br label %145

145:                                              ; preds = %111, %142
  %146 = phi i32 [ %144, %142 ], [ -1, %111 ]
  %147 = icmp slt i32 %146, 1
  br i1 %147, label %185, label %148

148:                                              ; preds = %145
  call fastcc void @string_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.56)
  %149 = add nuw nsw i32 %146, 1
  %150 = zext nneg i32 %149 to i64
  %151 = tail call ptr @xmalloc(i64 noundef %150) #23
  %152 = load ptr, ptr %1, align 8, !tbaa !35
  %153 = zext nneg i32 %146 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %151, ptr align 1 %152, i64 %153, i1 false)
  %154 = getelementptr inbounds i8, ptr %151, i64 %153
  store i8 0, ptr %154, align 1, !tbaa !47
  %155 = load i32, ptr %0, align 8, !tbaa !54
  %156 = tail call ptr @cplus_demangle(ptr noundef %151, i32 noundef %155)
  %157 = icmp eq ptr %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %148
  call fastcc void @string_append(ptr noundef nonnull %6, ptr noundef nonnull %156)
  tail call void @free(ptr noundef %156)
  br label %163

159:                                              ; preds = %148
  %160 = load ptr, ptr %1, align 8, !tbaa !35
  call fastcc void @string_need(ptr noundef nonnull %6, i32 noundef %146)
  %161 = load ptr, ptr %47, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %161, ptr align 1 %160, i64 %153, i1 false)
  %162 = getelementptr inbounds i8, ptr %161, i64 %153
  store ptr %162, ptr %47, align 8, !tbaa !59
  br label %163

163:                                              ; preds = %159, %158
  %164 = load ptr, ptr %1, align 8, !tbaa !35
  %165 = getelementptr inbounds i8, ptr %164, i64 %153
  store ptr %165, ptr %1, align 8, !tbaa !35
  tail call void @free(ptr noundef %151)
  br label %166

166:                                              ; preds = %163, %96, %110, %109, %70
  %167 = load ptr, ptr %6, align 8, !tbaa !57
  %168 = load ptr, ptr %47, align 8, !tbaa !59
  %169 = icmp eq ptr %167, %168
  br i1 %169, label %181, label %170

170:                                              ; preds = %166
  %171 = ptrtoint ptr %168 to i64
  %172 = ptrtoint ptr %167 to i64
  %173 = sub i64 %171, %172
  %174 = trunc i64 %173 to i32
  tail call fastcc void @string_need(ptr noundef %3, i32 noundef %174)
  %175 = load ptr, ptr %62, align 8, !tbaa !59
  %176 = load ptr, ptr %6, align 8, !tbaa !57
  %177 = shl i64 %173, 32
  %178 = ashr exact i64 %177, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %175, ptr align 1 %176, i64 %178, i1 false)
  %179 = load ptr, ptr %62, align 8, !tbaa !59
  %180 = getelementptr inbounds i8, ptr %179, i64 %178
  store ptr %180, ptr %62, align 8, !tbaa !59
  br label %181

181:                                              ; preds = %166, %170
  %182 = load ptr, ptr %1, align 8, !tbaa !35
  %183 = load i8, ptr %182, align 1, !tbaa !47
  switch i8 %183, label %184 [
    i8 0, label %185
    i8 95, label %185
  ]

184:                                              ; preds = %181
  tail call fastcc void @string_append(ptr noundef %3, ptr noundef nonnull @.str.217)
  br label %63, !llvm.loop !123

185:                                              ; preds = %181, %74, %67, %70, %145, %79, %181
  tail call fastcc void @string_append(ptr noundef %3, ptr noundef nonnull @.str.48)
  %186 = load ptr, ptr %6, align 8, !tbaa !57
  %187 = icmp eq ptr %186, null
  br i1 %187, label %189, label %188

188:                                              ; preds = %185
  tail call void @free(ptr noundef %186)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br label %189

189:                                              ; preds = %185, %188
  %190 = load ptr, ptr %1, align 8, !tbaa !35
  %191 = load i8, ptr %190, align 1, !tbaa !47
  %192 = icmp eq i8 %191, 95
  br i1 %192, label %193, label %195

193:                                              ; preds = %189
  %194 = getelementptr inbounds i8, ptr %190, i64 1
  store ptr %194, ptr %1, align 8, !tbaa !35
  br label %195

195:                                              ; preds = %193, %189
  store i32 %60, ptr %0, align 8, !tbaa !54
  br label %530

196:                                              ; preds = %14, %4
  %197 = and i32 %11, 6144
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %253, label %199

199:                                              ; preds = %196
  %200 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @.str.220)
  %201 = icmp eq ptr %200, null
  br i1 %201, label %253, label %202

202:                                              ; preds = %199
  %203 = getelementptr inbounds i8, ptr %200, i64 6
  store ptr %203, ptr %5, align 8, !tbaa !35
  %204 = load i8, ptr %203, align 1, !tbaa !47
  %205 = zext i8 %204 to i64
  %206 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %205
  %207 = load i16, ptr %206, align 2, !tbaa !60
  %208 = and i16 %207, 4
  %209 = icmp eq i16 %208, 0
  br i1 %209, label %237, label %210

210:                                              ; preds = %202
  %211 = load ptr, ptr %5, align 8, !tbaa !35
  %212 = load i8, ptr %211, align 1, !tbaa !47
  %213 = zext i8 %212 to i64
  %214 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %213
  %215 = load i16, ptr %214, align 2, !tbaa !60
  %216 = and i16 %215, 4
  %217 = icmp eq i16 %216, 0
  br i1 %217, label %234, label %218

218:                                              ; preds = %210, %218
  %219 = phi i8 [ %227, %218 ], [ %212, %210 ]
  %220 = phi i32 [ %225, %218 ], [ 0, %210 ]
  %221 = phi ptr [ %226, %218 ], [ %211, %210 ]
  %222 = mul nsw i32 %220, 10
  %223 = sext i8 %219 to i32
  %224 = add i32 %222, -48
  %225 = add i32 %224, %223
  %226 = getelementptr inbounds i8, ptr %221, i64 1
  %227 = load i8, ptr %226, align 1, !tbaa !47
  %228 = zext i8 %227 to i64
  %229 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %228
  %230 = load i16, ptr %229, align 2, !tbaa !60
  %231 = and i16 %230, 4
  %232 = icmp eq i16 %231, 0
  br i1 %232, label %233, label %218, !llvm.loop !71

233:                                              ; preds = %218
  store ptr %226, ptr %5, align 8, !tbaa !35
  br label %234

234:                                              ; preds = %233, %210
  %235 = phi i32 [ 0, %210 ], [ %225, %233 ]
  %236 = tail call i32 @llvm.smax.i32(i32 %235, i32 -1)
  br label %237

237:                                              ; preds = %234, %202
  %238 = phi i32 [ %236, %234 ], [ -1, %202 ]
  %239 = icmp eq i32 %238, -1
  br i1 %239, label %250, label %240

240:                                              ; preds = %237
  %241 = load ptr, ptr %5, align 8, !tbaa !35
  %242 = sext i32 %238 to i64
  %243 = getelementptr inbounds i8, ptr %241, i64 %242
  %244 = icmp eq ptr %243, %10
  br i1 %244, label %245, label %250

245:                                              ; preds = %240
  %246 = load i8, ptr %241, align 1, !tbaa !47
  %247 = icmp eq i8 %246, 95
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, ptr %241, i64 1
  store ptr %249, ptr %5, align 8, !tbaa !35
  br label %250

250:                                              ; preds = %248, %245, %240, %237
  %251 = phi i1 [ false, %248 ], [ false, %237 ], [ true, %245 ], [ true, %240 ]
  %252 = phi i32 [ 1, %248 ], [ 0, %237 ], [ undef, %245 ], [ undef, %240 ]
  br i1 %251, label %253, label %375

253:                                              ; preds = %250, %199, %196
  %254 = phi ptr [ undef, %196 ], [ %200, %199 ], [ %200, %250 ]
  %255 = phi i32 [ undef, %196 ], [ undef, %199 ], [ %252, %250 ]
  %256 = and i32 %11, 8448
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %373, label %258

258:                                              ; preds = %253
  %259 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @.str.221)
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %267

261:                                              ; preds = %258
  %262 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @.str.222)
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @.str.220)
  %266 = icmp eq ptr %265, null
  br i1 %266, label %319, label %267

267:                                              ; preds = %264, %261, %258
  %268 = phi ptr [ %265, %264 ], [ %262, %261 ], [ %259, %258 ]
  %269 = getelementptr inbounds i8, ptr %268, i64 6
  store ptr %269, ptr %5, align 8, !tbaa !35
  %270 = load i8, ptr %269, align 1, !tbaa !47
  %271 = zext i8 %270 to i64
  %272 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %271
  %273 = load i16, ptr %272, align 2, !tbaa !60
  %274 = and i16 %273, 4
  %275 = icmp eq i16 %274, 0
  br i1 %275, label %303, label %276

276:                                              ; preds = %267
  %277 = load ptr, ptr %5, align 8, !tbaa !35
  %278 = load i8, ptr %277, align 1, !tbaa !47
  %279 = zext i8 %278 to i64
  %280 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %279
  %281 = load i16, ptr %280, align 2, !tbaa !60
  %282 = and i16 %281, 4
  %283 = icmp eq i16 %282, 0
  br i1 %283, label %300, label %284

284:                                              ; preds = %276, %284
  %285 = phi i8 [ %293, %284 ], [ %278, %276 ]
  %286 = phi i32 [ %291, %284 ], [ 0, %276 ]
  %287 = phi ptr [ %292, %284 ], [ %277, %276 ]
  %288 = mul nsw i32 %286, 10
  %289 = sext i8 %285 to i32
  %290 = add i32 %288, -48
  %291 = add i32 %290, %289
  %292 = getelementptr inbounds i8, ptr %287, i64 1
  %293 = load i8, ptr %292, align 1, !tbaa !47
  %294 = zext i8 %293 to i64
  %295 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %294
  %296 = load i16, ptr %295, align 2, !tbaa !60
  %297 = and i16 %296, 4
  %298 = icmp eq i16 %297, 0
  br i1 %298, label %299, label %284, !llvm.loop !71

299:                                              ; preds = %284
  store ptr %292, ptr %5, align 8, !tbaa !35
  br label %300

300:                                              ; preds = %299, %276
  %301 = phi i32 [ 0, %276 ], [ %291, %299 ]
  %302 = tail call i32 @llvm.smax.i32(i32 %301, i32 -1)
  br label %303

303:                                              ; preds = %300, %267
  %304 = phi i32 [ %302, %300 ], [ -1, %267 ]
  %305 = icmp eq i32 %304, -1
  br i1 %305, label %316, label %306

306:                                              ; preds = %303
  %307 = load ptr, ptr %5, align 8, !tbaa !35
  %308 = sext i32 %304 to i64
  %309 = getelementptr inbounds i8, ptr %307, i64 %308
  %310 = icmp eq ptr %309, %10
  br i1 %310, label %311, label %316

311:                                              ; preds = %306
  %312 = load i8, ptr %307, align 1, !tbaa !47
  %313 = icmp eq i8 %312, 95
  br i1 %313, label %314, label %316

314:                                              ; preds = %311
  %315 = getelementptr inbounds i8, ptr %307, i64 1
  store ptr %315, ptr %5, align 8, !tbaa !35
  br label %316

316:                                              ; preds = %314, %311, %306, %303
  %317 = phi i1 [ false, %314 ], [ false, %303 ], [ true, %311 ], [ true, %306 ]
  %318 = phi i32 [ 1, %314 ], [ 0, %303 ], [ %255, %311 ], [ %255, %306 ]
  br i1 %317, label %373, label %375

319:                                              ; preds = %264
  %320 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @.str.223)
  %321 = icmp eq ptr %320, null
  br i1 %321, label %373, label %322

322:                                              ; preds = %319
  %323 = getelementptr inbounds i8, ptr %320, i64 3
  store ptr %323, ptr %5, align 8, !tbaa !35
  %324 = load i8, ptr %323, align 1, !tbaa !47
  %325 = zext i8 %324 to i64
  %326 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %325
  %327 = load i16, ptr %326, align 2, !tbaa !60
  %328 = and i16 %327, 4
  %329 = icmp eq i16 %328, 0
  br i1 %329, label %357, label %330

330:                                              ; preds = %322
  %331 = load ptr, ptr %5, align 8, !tbaa !35
  %332 = load i8, ptr %331, align 1, !tbaa !47
  %333 = zext i8 %332 to i64
  %334 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %333
  %335 = load i16, ptr %334, align 2, !tbaa !60
  %336 = and i16 %335, 4
  %337 = icmp eq i16 %336, 0
  br i1 %337, label %354, label %338

338:                                              ; preds = %330, %338
  %339 = phi i8 [ %347, %338 ], [ %332, %330 ]
  %340 = phi i32 [ %345, %338 ], [ 0, %330 ]
  %341 = phi ptr [ %346, %338 ], [ %331, %330 ]
  %342 = mul nsw i32 %340, 10
  %343 = sext i8 %339 to i32
  %344 = add i32 %342, -48
  %345 = add i32 %344, %343
  %346 = getelementptr inbounds i8, ptr %341, i64 1
  %347 = load i8, ptr %346, align 1, !tbaa !47
  %348 = zext i8 %347 to i64
  %349 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %348
  %350 = load i16, ptr %349, align 2, !tbaa !60
  %351 = and i16 %350, 4
  %352 = icmp eq i16 %351, 0
  br i1 %352, label %353, label %338, !llvm.loop !71

353:                                              ; preds = %338
  store ptr %346, ptr %5, align 8, !tbaa !35
  br label %354

354:                                              ; preds = %353, %330
  %355 = phi i32 [ 0, %330 ], [ %345, %353 ]
  %356 = tail call i32 @llvm.smax.i32(i32 %355, i32 -1)
  br label %357

357:                                              ; preds = %354, %322
  %358 = phi i32 [ %356, %354 ], [ -1, %322 ]
  %359 = icmp eq i32 %358, -1
  br i1 %359, label %370, label %360

360:                                              ; preds = %357
  %361 = load ptr, ptr %5, align 8, !tbaa !35
  %362 = sext i32 %358 to i64
  %363 = getelementptr inbounds i8, ptr %361, i64 %362
  %364 = icmp eq ptr %363, %10
  br i1 %364, label %365, label %370

365:                                              ; preds = %360
  %366 = load i8, ptr %361, align 1, !tbaa !47
  %367 = icmp eq i8 %366, 95
  br i1 %367, label %368, label %370

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %361, i64 1
  store ptr %369, ptr %5, align 8, !tbaa !35
  br label %370

370:                                              ; preds = %368, %365, %360, %357
  %371 = phi i1 [ false, %368 ], [ false, %357 ], [ true, %365 ], [ true, %360 ]
  %372 = phi i32 [ 1, %368 ], [ 0, %357 ], [ %255, %365 ], [ %255, %360 ]
  br i1 %371, label %373, label %375

373:                                              ; preds = %370, %319, %316, %253
  %374 = phi ptr [ %254, %253 ], [ %320, %319 ], [ %320, %370 ], [ %268, %316 ]
  br label %375

375:                                              ; preds = %370, %250, %316, %373
  %376 = phi ptr [ %374, %373 ], [ %268, %316 ], [ %200, %250 ], [ %320, %370 ]
  %377 = phi i32 [ 0, %373 ], [ %318, %316 ], [ %252, %250 ], [ %372, %370 ]
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %495, label %379

379:                                              ; preds = %375
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #23
  %380 = getelementptr inbounds %struct.string, ptr %6, i64 0, i32 1
  %381 = ptrtoint ptr %376 to i64
  %382 = ptrtoint ptr %8 to i64
  %383 = sub i64 %381, %382
  %384 = trunc i64 %383 to i32
  %385 = icmp eq i32 %384, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br i1 %385, label %393, label %386

386:                                              ; preds = %379
  tail call fastcc void @string_need(ptr noundef %3, i32 noundef %384)
  %387 = getelementptr inbounds %struct.string, ptr %3, i64 0, i32 1
  %388 = load ptr, ptr %387, align 8, !tbaa !59
  %389 = shl i64 %383, 32
  %390 = ashr exact i64 %389, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %388, ptr align 1 %8, i64 %390, i1 false)
  %391 = load ptr, ptr %387, align 8, !tbaa !59
  %392 = getelementptr inbounds i8, ptr %391, i64 %390
  store ptr %392, ptr %387, align 8, !tbaa !59
  br label %393

393:                                              ; preds = %379, %386
  %394 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 13
  %395 = load i32, ptr %394, align 4, !tbaa !106
  %396 = icmp eq i32 %395, -1
  br i1 %396, label %397, label %405

397:                                              ; preds = %393
  %398 = getelementptr inbounds %struct.string, ptr %3, i64 0, i32 1
  %399 = load ptr, ptr %398, align 8, !tbaa !59
  %400 = load ptr, ptr %3, align 8, !tbaa !57
  %401 = ptrtoint ptr %399 to i64
  %402 = ptrtoint ptr %400 to i64
  %403 = sub i64 %401, %402
  %404 = trunc i64 %403 to i32
  store i32 %404, ptr %394, align 4, !tbaa !106
  br label %405

405:                                              ; preds = %397, %393
  %406 = load i32, ptr %0, align 8, !tbaa !54
  %407 = or i32 %406, 1
  store i32 %407, ptr %0, align 8, !tbaa !54
  tail call fastcc void @string_append(ptr noundef %3, ptr noundef nonnull @.str.44)
  %408 = load ptr, ptr %5, align 8, !tbaa !35
  %409 = icmp ult ptr %408, %10
  br i1 %409, label %410, label %482

410:                                              ; preds = %405
  %411 = getelementptr inbounds %struct.string, ptr %7, i64 0, i32 1
  %412 = getelementptr inbounds %struct.string, ptr %3, i64 0, i32 1
  br label %413

413:                                              ; preds = %410, %479
  %414 = load ptr, ptr %6, align 8, !tbaa !57
  %415 = icmp eq ptr %414, null
  br i1 %415, label %417, label %416

416:                                              ; preds = %413
  tail call void @free(ptr noundef %414)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br label %417

417:                                              ; preds = %413, %416
  %418 = load ptr, ptr %5, align 8, !tbaa !35
  %419 = load i8, ptr %418, align 1, !tbaa !47
  switch i8 %419, label %454 [
    i8 88, label %420
    i8 76, label %450
  ]

420:                                              ; preds = %417
  %421 = getelementptr inbounds i8, ptr %418, i64 1
  store ptr %421, ptr %5, align 8, !tbaa !35
  %422 = call fastcc i32 @do_type(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %7), !range !56
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %482, label %424

424:                                              ; preds = %420
  call fastcc void @string_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.208)
  %425 = load ptr, ptr %7, align 8, !tbaa !57
  %426 = load ptr, ptr %411, align 8, !tbaa !59
  %427 = icmp eq ptr %425, %426
  br i1 %427, label %438, label %428

428:                                              ; preds = %424
  %429 = ptrtoint ptr %426 to i64
  %430 = ptrtoint ptr %425 to i64
  %431 = sub i64 %429, %430
  %432 = trunc i64 %431 to i32
  call fastcc void @string_need(ptr noundef nonnull %6, i32 noundef %432)
  %433 = load ptr, ptr %380, align 8, !tbaa !59
  %434 = load ptr, ptr %7, align 8, !tbaa !57
  %435 = shl i64 %431, 32
  %436 = ashr exact i64 %435, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %433, ptr align 1 %434, i64 %436, i1 false)
  %437 = getelementptr inbounds i8, ptr %433, i64 %436
  store ptr %437, ptr %380, align 8, !tbaa !59
  br label %438

438:                                              ; preds = %424, %428
  %439 = load ptr, ptr %7, align 8, !tbaa !57
  %440 = icmp eq ptr %439, null
  br i1 %440, label %442, label %441

441:                                              ; preds = %438
  tail call void @free(ptr noundef %439)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %442

442:                                              ; preds = %438, %441
  call fastcc void @string_append(ptr noundef nonnull %6, ptr noundef nonnull @.str.209)
  %443 = load ptr, ptr %5, align 8, !tbaa !35
  %444 = load i8, ptr %443, align 1, !tbaa !47
  %445 = icmp eq i8 %444, 76
  br i1 %445, label %446, label %482

446:                                              ; preds = %442
  %447 = getelementptr inbounds i8, ptr %443, i64 1
  store ptr %447, ptr %5, align 8, !tbaa !35
  %448 = call fastcc i32 @snarf_numeric_literal(ptr noundef nonnull %5, ptr noundef nonnull %6), !range !68
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %482, label %464

450:                                              ; preds = %417
  %451 = getelementptr inbounds i8, ptr %418, i64 1
  store ptr %451, ptr %5, align 8, !tbaa !35
  %452 = call fastcc i32 @snarf_numeric_literal(ptr noundef nonnull %5, ptr noundef nonnull %6), !range !68
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %482, label %464

454:                                              ; preds = %417
  %455 = call fastcc i32 @do_type(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %6), !range !56
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %461, label %457

457:                                              ; preds = %454
  %458 = load ptr, ptr %5, align 8, !tbaa !35
  %459 = icmp eq ptr %458, %418
  br i1 %459, label %460, label %461

460:                                              ; preds = %457
  store i32 %406, ptr %0, align 8, !tbaa !54
  br label %461

461:                                              ; preds = %457, %454, %460
  %462 = phi i1 [ false, %460 ], [ false, %454 ], [ true, %457 ]
  %463 = phi i32 [ 1, %460 ], [ 9, %454 ], [ 0, %457 ]
  switch i32 %463, label %494 [
    i32 0, label %464
    i32 9, label %482
  ]

464:                                              ; preds = %461, %450, %446
  %465 = load ptr, ptr %6, align 8, !tbaa !57
  %466 = load ptr, ptr %380, align 8, !tbaa !59
  %467 = icmp eq ptr %465, %466
  br i1 %467, label %479, label %468

468:                                              ; preds = %464
  %469 = ptrtoint ptr %466 to i64
  %470 = ptrtoint ptr %465 to i64
  %471 = sub i64 %469, %470
  %472 = trunc i64 %471 to i32
  tail call fastcc void @string_need(ptr noundef %3, i32 noundef %472)
  %473 = load ptr, ptr %412, align 8, !tbaa !59
  %474 = load ptr, ptr %6, align 8, !tbaa !57
  %475 = shl i64 %471, 32
  %476 = ashr exact i64 %475, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %473, ptr align 1 %474, i64 %476, i1 false)
  %477 = load ptr, ptr %412, align 8, !tbaa !59
  %478 = getelementptr inbounds i8, ptr %477, i64 %476
  store ptr %478, ptr %412, align 8, !tbaa !59
  br label %479

479:                                              ; preds = %464, %468
  tail call fastcc void @string_append(ptr noundef %3, ptr noundef nonnull @.str.217)
  %480 = load ptr, ptr %5, align 8, !tbaa !35
  %481 = icmp ult ptr %480, %10
  br i1 %481, label %413, label %482, !llvm.loop !124

482:                                              ; preds = %420, %442, %450, %479, %446, %461, %405
  %483 = load ptr, ptr %6, align 8, !tbaa !57
  %484 = icmp eq ptr %483, null
  br i1 %484, label %486, label %485

485:                                              ; preds = %482
  tail call void @free(ptr noundef %483)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br label %486

486:                                              ; preds = %482, %485
  %487 = load ptr, ptr %5, align 8, !tbaa !35
  %488 = icmp ult ptr %487, %10
  br i1 %488, label %493, label %489

489:                                              ; preds = %486
  %490 = getelementptr inbounds %struct.string, ptr %3, i64 0, i32 1
  %491 = load ptr, ptr %490, align 8, !tbaa !59
  %492 = getelementptr inbounds i8, ptr %491, i64 -1
  store ptr %492, ptr %490, align 8, !tbaa !59
  br label %493

493:                                              ; preds = %489, %486
  tail call fastcc void @string_append(ptr noundef %3, ptr noundef nonnull @.str.48)
  store i32 %406, ptr %0, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #23
  br label %527

494:                                              ; preds = %461
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #23
  br i1 %462, label %527, label %530

495:                                              ; preds = %375
  %496 = icmp sgt i32 %2, 10
  br i1 %496, label %497, label %515

497:                                              ; preds = %495
  %498 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(9) @.str.190, i64 noundef 8)
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %515

500:                                              ; preds = %497
  %501 = getelementptr inbounds i8, ptr %8, i64 9
  %502 = load i8, ptr %501, align 1, !tbaa !47
  %503 = icmp eq i8 %502, 78
  br i1 %503, label %504, label %515

504:                                              ; preds = %500
  %505 = getelementptr inbounds i8, ptr %8, i64 8
  %506 = load i8, ptr %505, align 1, !tbaa !47
  %507 = getelementptr inbounds i8, ptr %8, i64 10
  %508 = load i8, ptr %507, align 1, !tbaa !47
  %509 = icmp eq i8 %506, %508
  br i1 %509, label %510, label %515

510:                                              ; preds = %504
  %511 = sext i8 %506 to i32
  %512 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @cplus_markers, i32 noundef %511)
  %513 = icmp eq ptr %512, null
  br i1 %513, label %515, label %514

514:                                              ; preds = %510
  tail call fastcc void @string_append(ptr noundef %3, ptr noundef nonnull @.str.191)
  br label %527

515:                                              ; preds = %510, %504, %500, %497, %495
  %516 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 13
  %517 = load i32, ptr %516, align 4, !tbaa !106
  %518 = icmp eq i32 %517, -1
  br i1 %518, label %519, label %520

519:                                              ; preds = %515
  store i32 0, ptr %516, align 4, !tbaa !106
  br label %520

520:                                              ; preds = %519, %515
  %521 = icmp eq i32 %2, 0
  br i1 %521, label %527, label %522

522:                                              ; preds = %520
  tail call fastcc void @string_need(ptr noundef %3, i32 noundef %2)
  %523 = getelementptr inbounds %struct.string, ptr %3, i64 0, i32 1
  %524 = load ptr, ptr %523, align 8, !tbaa !59
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %524, ptr align 1 %8, i64 %9, i1 false)
  %525 = load ptr, ptr %523, align 8, !tbaa !59
  %526 = getelementptr inbounds i8, ptr %525, i64 %9
  store ptr %526, ptr %523, align 8, !tbaa !59
  br label %527

527:                                              ; preds = %493, %522, %520, %494, %514
  %528 = load ptr, ptr %1, align 8, !tbaa !35
  %529 = getelementptr inbounds i8, ptr %528, i64 %9
  store ptr %529, ptr %1, align 8, !tbaa !35
  br label %530

530:                                              ; preds = %494, %527, %195
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @arm_special(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #10 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(9) @.str.224, i64 noundef 8)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %143

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %3, i64 8
  %8 = load i8, ptr %7, align 1, !tbaa !47
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %63, label %10

10:                                               ; preds = %6, %59
  %11 = phi i8 [ %61, %59 ], [ %8, %6 ]
  %12 = phi ptr [ %60, %59 ], [ %7, %6 ]
  %13 = zext i8 %11 to i64
  %14 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !60
  %16 = and i16 %15, 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %44, label %18

18:                                               ; preds = %10
  %19 = load i8, ptr %12, align 1, !tbaa !47
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %20
  %22 = load i16, ptr %21, align 2, !tbaa !60
  %23 = and i16 %22, 4
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %18, %25
  %26 = phi i8 [ %34, %25 ], [ %19, %18 ]
  %27 = phi i32 [ %32, %25 ], [ 0, %18 ]
  %28 = phi ptr [ %33, %25 ], [ %12, %18 ]
  %29 = mul nsw i32 %27, 10
  %30 = sext i8 %26 to i32
  %31 = add i32 %29, -48
  %32 = add i32 %31, %30
  %33 = getelementptr inbounds i8, ptr %28, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !47
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %35
  %37 = load i16, ptr %36, align 2, !tbaa !60
  %38 = and i16 %37, 4
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %25, !llvm.loop !71

40:                                               ; preds = %25, %18
  %41 = phi ptr [ %12, %18 ], [ %33, %25 ]
  %42 = phi i32 [ 0, %18 ], [ %32, %25 ]
  %43 = tail call i32 @llvm.smax.i32(i32 %42, i32 -1)
  br label %44

44:                                               ; preds = %10, %40
  %45 = phi ptr [ %12, %10 ], [ %41, %40 ]
  %46 = phi i32 [ -1, %10 ], [ %43, %40 ]
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %143, label %48

48:                                               ; preds = %44
  %49 = sext i32 %46 to i64
  %50 = getelementptr inbounds i8, ptr %45, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !47
  %52 = icmp eq i8 %51, 95
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = getelementptr inbounds i8, ptr %50, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !47
  %56 = icmp eq i8 %55, 95
  %57 = select i1 %56, i64 2, i64 0
  %58 = getelementptr inbounds i8, ptr %50, i64 %57
  br label %59

59:                                               ; preds = %53, %48
  %60 = phi ptr [ %50, %48 ], [ %58, %53 ]
  %61 = load i8, ptr %60, align 1, !tbaa !47
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %10, !llvm.loop !125

63:                                               ; preds = %59, %6
  store ptr %7, ptr %0, align 8, !tbaa !35
  %64 = load i8, ptr %7, align 1, !tbaa !47
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %142, label %66

66:                                               ; preds = %63, %138
  %67 = phi i8 [ %140, %138 ], [ %64, %63 ]
  %68 = zext i8 %67 to i64
  %69 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %68
  %70 = load i16, ptr %69, align 2, !tbaa !60
  %71 = and i16 %70, 4
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %99, label %73

73:                                               ; preds = %66
  %74 = load ptr, ptr %0, align 8, !tbaa !35
  %75 = load i8, ptr %74, align 1, !tbaa !47
  %76 = zext i8 %75 to i64
  %77 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %76
  %78 = load i16, ptr %77, align 2, !tbaa !60
  %79 = and i16 %78, 4
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %96, label %81

81:                                               ; preds = %73, %81
  %82 = phi i8 [ %90, %81 ], [ %75, %73 ]
  %83 = phi i32 [ %88, %81 ], [ 0, %73 ]
  %84 = phi ptr [ %89, %81 ], [ %74, %73 ]
  %85 = mul nsw i32 %83, 10
  %86 = sext i8 %82 to i32
  %87 = add i32 %85, -48
  %88 = add i32 %87, %86
  %89 = getelementptr inbounds i8, ptr %84, i64 1
  store ptr %89, ptr %0, align 8, !tbaa !35
  %90 = load i8, ptr %89, align 1, !tbaa !47
  %91 = zext i8 %90 to i64
  %92 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !60
  %94 = and i16 %93, 4
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %81, !llvm.loop !71

96:                                               ; preds = %81, %73
  %97 = phi i32 [ 0, %73 ], [ %88, %81 ]
  %98 = tail call i32 @llvm.smax.i32(i32 %97, i32 -1)
  br label %99

99:                                               ; preds = %66, %96
  %100 = phi i32 [ %98, %96 ], [ -1, %66 ]
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %143, label %102

102:                                              ; preds = %99
  %103 = sext i32 %100 to i64
  %104 = load ptr, ptr %0, align 8, !tbaa !35
  %105 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %104)
  %106 = icmp slt i64 %105, %103
  br i1 %106, label %143, label %107

107:                                              ; preds = %102
  %108 = icmp eq i32 %100, 0
  br i1 %108, label %126, label %109

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.string, ptr %1, i64 0, i32 1
  tail call fastcc void @string_need(ptr noundef %1, i32 noundef %100)
  %111 = load ptr, ptr %110, align 8, !tbaa !59
  %112 = getelementptr inbounds i8, ptr %111, i64 -1
  %113 = load ptr, ptr %1, align 8, !tbaa !57
  %114 = icmp ult ptr %112, %113
  br i1 %114, label %122, label %115

115:                                              ; preds = %109, %115
  %116 = phi ptr [ %119, %115 ], [ %112, %109 ]
  %117 = load i8, ptr %116, align 1, !tbaa !47
  %118 = getelementptr inbounds i8, ptr %116, i64 %103
  store i8 %117, ptr %118, align 1, !tbaa !47
  %119 = getelementptr inbounds i8, ptr %116, i64 -1
  %120 = load ptr, ptr %1, align 8, !tbaa !57
  %121 = icmp ult ptr %119, %120
  br i1 %121, label %122, label %115, !llvm.loop !72

122:                                              ; preds = %115, %109
  %123 = phi ptr [ %113, %109 ], [ %120, %115 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %123, ptr align 1 %104, i64 %103, i1 false)
  %124 = load ptr, ptr %110, align 8, !tbaa !59
  %125 = getelementptr inbounds i8, ptr %124, i64 %103
  store ptr %125, ptr %110, align 8, !tbaa !59
  br label %126

126:                                              ; preds = %107, %122
  %127 = load ptr, ptr %0, align 8, !tbaa !35
  %128 = getelementptr inbounds i8, ptr %127, i64 %103
  store ptr %128, ptr %0, align 8, !tbaa !35
  %129 = load i8, ptr %128, align 1, !tbaa !47
  %130 = icmp eq i8 %129, 95
  br i1 %130, label %131, label %138

131:                                              ; preds = %126
  %132 = getelementptr inbounds i8, ptr %128, i64 1
  %133 = load i8, ptr %132, align 1, !tbaa !47
  %134 = icmp eq i8 %133, 95
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  tail call fastcc void @string_prepend(ptr noundef %1, ptr noundef nonnull @.str.187)
  %136 = load ptr, ptr %0, align 8, !tbaa !35
  %137 = getelementptr inbounds i8, ptr %136, i64 2
  store ptr %137, ptr %0, align 8, !tbaa !35
  br label %138

138:                                              ; preds = %135, %131, %126
  %139 = load ptr, ptr %0, align 8, !tbaa !35
  %140 = load i8, ptr %139, align 1, !tbaa !47
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %66, !llvm.loop !126

142:                                              ; preds = %138, %63
  tail call fastcc void @string_append(ptr noundef %1, ptr noundef nonnull @.str.188)
  br label %143

143:                                              ; preds = %44, %99, %102, %142, %2
  %144 = phi i32 [ 1, %142 ], [ 0, %2 ], [ 0, %102 ], [ 0, %99 ], [ 0, %44 ]
  ret i32 %144
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @iterate_demangle_function(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #10 !prof !34 {
  %5 = alloca %struct.string, align 8
  %6 = alloca %struct.work_stuff, align 8
  %7 = load ptr, ptr %1, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %6) #23
  %8 = getelementptr inbounds i8, ptr %3, i64 2
  %9 = load i8, ptr %8, align 1, !tbaa !47
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %88, label %11

11:                                               ; preds = %4
  %12 = load i32, ptr %0, align 8, !tbaa !54
  %13 = and i32 %12, 15360
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @.str.216)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %11
  %19 = tail call fastcc i32 @demangle_function_name(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3), !range !68
  br label %88

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.string, ptr %5, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %22 = load ptr, ptr %2, align 8, !tbaa !57
  %23 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !59
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %36, label %26

26:                                               ; preds = %20
  %27 = ptrtoint ptr %24 to i64
  %28 = ptrtoint ptr %22 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  call fastcc void @string_need(ptr noundef nonnull %5, i32 noundef %30)
  %31 = load ptr, ptr %21, align 8, !tbaa !59
  %32 = load ptr, ptr %2, align 8, !tbaa !57
  %33 = shl i64 %29, 32
  %34 = ashr exact i64 %33, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %31, ptr align 1 %32, i64 %34, i1 false)
  %35 = getelementptr inbounds i8, ptr %31, i64 %34
  store ptr %35, ptr %21, align 8, !tbaa !59
  br label %36

36:                                               ; preds = %20, %26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %6, i8 0, i64 112, i1 false)
  call fastcc void @work_stuff_copy_to_from(ptr noundef nonnull %6, ptr noundef nonnull %0)
  %37 = getelementptr inbounds i8, ptr %3, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !47
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %83, label %40

40:                                               ; preds = %36, %79
  %41 = phi ptr [ %75, %79 ], [ %37, %36 ]
  %42 = phi ptr [ %80, %79 ], [ %3, %36 ]
  %43 = tail call fastcc i32 @demangle_function_name(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %42), !range !68
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = tail call fastcc i32 @demangle_signature(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %83

48:                                               ; preds = %45, %40
  store ptr %7, ptr %1, align 8, !tbaa !35
  %49 = load ptr, ptr %2, align 8, !tbaa !57
  store ptr %49, ptr %23, align 8, !tbaa !59
  %50 = load ptr, ptr %5, align 8, !tbaa !57
  %51 = load ptr, ptr %21, align 8, !tbaa !59
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %63, label %53

53:                                               ; preds = %48
  %54 = ptrtoint ptr %51 to i64
  %55 = ptrtoint ptr %50 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  tail call fastcc void @string_need(ptr noundef nonnull %2, i32 noundef %57)
  %58 = load ptr, ptr %23, align 8, !tbaa !59
  %59 = shl i64 %56, 32
  %60 = ashr exact i64 %59, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %58, ptr align 1 %50, i64 %60, i1 false)
  %61 = load ptr, ptr %23, align 8, !tbaa !59
  %62 = getelementptr inbounds i8, ptr %61, i64 %60
  store ptr %62, ptr %23, align 8, !tbaa !59
  br label %63

63:                                               ; preds = %48, %53
  call fastcc void @work_stuff_copy_to_from(ptr noundef nonnull %0, ptr noundef nonnull %6)
  br label %64

64:                                               ; preds = %72, %63
  %65 = phi ptr [ %41, %63 ], [ %73, %72 ]
  %66 = load i8, ptr %65, align 1, !tbaa !47
  switch i8 %66, label %72 [
    i8 0, label %67
    i8 95, label %68
  ]

67:                                               ; preds = %68, %64
  br label %74

68:                                               ; preds = %64
  %69 = getelementptr inbounds i8, ptr %65, i64 1
  %70 = load i8, ptr %69, align 1, !tbaa !47
  %71 = icmp eq i8 %70, 95
  br i1 %71, label %67, label %72

72:                                               ; preds = %64, %68
  %73 = getelementptr inbounds i8, ptr %65, i64 1
  br label %64, !llvm.loop !127

74:                                               ; preds = %67, %74
  %75 = phi ptr [ %78, %74 ], [ %65, %67 ]
  %76 = load i8, ptr %75, align 1, !tbaa !47
  %77 = icmp eq i8 %76, 95
  %78 = getelementptr inbounds i8, ptr %75, i64 1
  br i1 %77, label %74, label %79, !llvm.loop !128

79:                                               ; preds = %74
  %80 = getelementptr inbounds i8, ptr %75, i64 -2
  %81 = load i8, ptr %75, align 1, !tbaa !47
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %40, !llvm.loop !129

83:                                               ; preds = %79, %45, %36
  %84 = phi i32 [ 0, %36 ], [ 0, %79 ], [ %46, %45 ]
  call fastcc void @delete_non_B_K_work_stuff(ptr noundef nonnull %6)
  call fastcc void @squangle_mop_up(ptr noundef nonnull %6)
  %85 = load ptr, ptr %5, align 8, !tbaa !57
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  tail call void @free(ptr noundef %85)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %88

88:                                               ; preds = %87, %83, %4, %18
  %89 = phi i32 [ %19, %18 ], [ 0, %4 ], [ %84, %83 ], [ %84, %87 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #23
  ret i32 %89
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @snarf_numeric_literal(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #10 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load i8, ptr %3, align 1, !tbaa !47
  switch i8 %4, label %10 [
    i8 45, label %5
    i8 43, label %7
  ]

5:                                                ; preds = %2
  store i8 45, ptr @char_str, align 1, !tbaa !47
  tail call fastcc void @string_append(ptr noundef %1, ptr noundef nonnull @char_str)
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ %3, %2 ]
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %9, ptr %0, align 8, !tbaa !35
  br label %10

10:                                               ; preds = %7, %2
  %11 = load ptr, ptr %0, align 8, !tbaa !35
  %12 = load i8, ptr %11, align 1, !tbaa !47
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !60
  %16 = and i16 %15, 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %10
  %19 = load ptr, ptr %0, align 8, !tbaa !35
  %20 = load i8, ptr %19, align 1, !tbaa !47
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !60
  %24 = and i16 %23, 4
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %18, %26
  %27 = phi i8 [ %30, %26 ], [ %20, %18 ]
  store i8 %27, ptr @char_str, align 1, !tbaa !47
  tail call fastcc void @string_append(ptr noundef %1, ptr noundef nonnull @char_str)
  %28 = load ptr, ptr %0, align 8, !tbaa !35
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %29, ptr %0, align 8, !tbaa !35
  %30 = load i8, ptr %29, align 1, !tbaa !47
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !60
  %34 = and i16 %33, 4
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %26, !llvm.loop !130

36:                                               ; preds = %26, %18, %10
  %37 = phi i32 [ 0, %10 ], [ 1, %18 ], [ 1, %26 ]
  ret i32 %37
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @demangle_function_name(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #10 !prof !34 {
  %5 = alloca %struct.string, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  %7 = load ptr, ptr %1, align 8, !tbaa !35
  %8 = ptrtoint ptr %3 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = trunc i64 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %4
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef %11)
  %14 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = shl i64 %10, 32
  %17 = ashr exact i64 %16, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 1 %7, i64 %17, i1 false)
  %18 = load ptr, ptr %14, align 8, !tbaa !59
  %19 = getelementptr inbounds i8, ptr %18, i64 %17
  store ptr %19, ptr %14, align 8, !tbaa !59
  br label %20

20:                                               ; preds = %4, %13
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef 1)
  %21 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  store i8 0, ptr %22, align 1, !tbaa !47
  %23 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %23, ptr %1, align 8, !tbaa !35
  %24 = load i32, ptr %0, align 8, !tbaa !54
  %25 = and i32 %24, 4096
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load i8, ptr %23, align 1, !tbaa !47
  %29 = icmp eq i8 %28, 88
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  tail call fastcc void @demangle_arm_hp_template(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %2)
  br label %31

31:                                               ; preds = %30, %27, %20
  %32 = load i32, ptr %0, align 8, !tbaa !54
  %33 = and i32 %32, 15360
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %2, align 8, !tbaa !57
  %37 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(5) @.str.225)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 10
  %41 = load i32, ptr %40, align 8, !tbaa !97
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %40, align 8, !tbaa !97
  store ptr %36, ptr %21, align 8, !tbaa !59
  br label %268

43:                                               ; preds = %35
  %44 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(5) @.str.226)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 11
  %48 = load i32, ptr %47, align 4, !tbaa !98
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %47, align 4, !tbaa !98
  store ptr %36, ptr %21, align 8, !tbaa !59
  br label %268

50:                                               ; preds = %31, %43
  %51 = load ptr, ptr %21, align 8, !tbaa !59
  %52 = load ptr, ptr %2, align 8, !tbaa !57
  %53 = ptrtoint ptr %51 to i64
  %54 = ptrtoint ptr %52 to i64
  %55 = sub i64 %53, %54
  %56 = icmp sgt i64 %55, 2
  br i1 %56, label %57, label %118

57:                                               ; preds = %50
  %58 = load i8, ptr %52, align 1, !tbaa !47
  %59 = icmp eq i8 %58, 111
  br i1 %59, label %60, label %118

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, ptr %52, i64 1
  %62 = load i8, ptr %61, align 1, !tbaa !47
  %63 = icmp eq i8 %62, 112
  br i1 %63, label %64, label %118

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, ptr %52, i64 2
  %66 = load i8, ptr %65, align 1, !tbaa !47
  %67 = sext i8 %66 to i32
  %68 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @cplus_markers, i32 noundef %67)
  %69 = icmp eq ptr %68, null
  br i1 %69, label %118, label %70

70:                                               ; preds = %64
  %71 = icmp sgt i64 %55, 9
  br i1 %71, label %72, label %97

72:                                               ; preds = %70
  %73 = getelementptr inbounds i8, ptr %52, i64 3
  %74 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %73, ptr noundef nonnull dereferenceable(7) @.str.22, i64 7)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %97

76:                                               ; preds = %72
  %77 = trunc i64 %55 to i32
  %78 = add i32 %77, -10
  %79 = getelementptr inbounds i8, ptr %52, i64 10
  %80 = sext i32 %78 to i64
  br label %81

81:                                               ; preds = %76, %94
  %82 = phi i64 [ 0, %76 ], [ %95, %94 ]
  %83 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !61
  %85 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %84)
  %86 = trunc i64 %85 to i32
  %87 = icmp eq i32 %78, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = tail call i32 @bcmp(ptr %84, ptr nonnull %79, i64 %80)
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  store ptr %52, ptr %21, align 8, !tbaa !59
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.21)
  %92 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %82, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !63
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef %93)
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.23)
  br label %255

94:                                               ; preds = %88, %81
  %95 = add nuw nsw i64 %82, 1
  %96 = icmp eq i64 %95, 79
  br i1 %96, label %255, label %81, !llvm.loop !131

97:                                               ; preds = %72, %70
  %98 = trunc i64 %55 to i32
  %99 = add i32 %98, -3
  %100 = getelementptr inbounds i8, ptr %52, i64 3
  %101 = sext i32 %99 to i64
  br label %102

102:                                              ; preds = %97, %115
  %103 = phi i64 [ 0, %97 ], [ %116, %115 ]
  %104 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !61
  %106 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %105)
  %107 = trunc i64 %106 to i32
  %108 = icmp eq i32 %99, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %102
  %110 = tail call i32 @bcmp(ptr %105, ptr nonnull %100, i64 %101)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  store ptr %52, ptr %21, align 8, !tbaa !59
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.21)
  %113 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %103, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !63
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef %114)
  br label %255

115:                                              ; preds = %109, %102
  %116 = add nuw nsw i64 %103, 1
  %117 = icmp eq i64 %116, 79
  br i1 %117, label %255, label %102, !llvm.loop !132

118:                                              ; preds = %64, %60, %57, %50
  %119 = icmp sgt i64 %55, 4
  br i1 %119, label %120, label %154

120:                                              ; preds = %118
  %121 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %52, ptr noundef nonnull dereferenceable(4) @.str.24, i64 4)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %154

123:                                              ; preds = %120
  %124 = getelementptr inbounds i8, ptr %52, i64 4
  %125 = load i8, ptr %124, align 1, !tbaa !47
  %126 = sext i8 %125 to i32
  %127 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @cplus_markers, i32 noundef %126)
  %128 = icmp eq ptr %127, null
  br i1 %128, label %154, label %129

129:                                              ; preds = %123
  %130 = getelementptr inbounds i8, ptr %52, i64 5
  store ptr %130, ptr %6, align 8, !tbaa !35
  %131 = call fastcc i32 @do_type(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %5), !range !56
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %255, label %133

133:                                              ; preds = %129
  %134 = load ptr, ptr %2, align 8, !tbaa !57
  store ptr %134, ptr %21, align 8, !tbaa !59
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.20)
  %135 = load ptr, ptr %5, align 8, !tbaa !57
  %136 = getelementptr inbounds %struct.string, ptr %5, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !59
  %138 = icmp eq ptr %135, %137
  br i1 %138, label %150, label %139

139:                                              ; preds = %133
  %140 = ptrtoint ptr %137 to i64
  %141 = ptrtoint ptr %135 to i64
  %142 = sub i64 %140, %141
  %143 = trunc i64 %142 to i32
  tail call fastcc void @string_need(ptr noundef nonnull %2, i32 noundef %143)
  %144 = load ptr, ptr %21, align 8, !tbaa !59
  %145 = load ptr, ptr %5, align 8, !tbaa !57
  %146 = shl i64 %142, 32
  %147 = ashr exact i64 %146, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %144, ptr align 1 %145, i64 %147, i1 false)
  %148 = load ptr, ptr %21, align 8, !tbaa !59
  %149 = getelementptr inbounds i8, ptr %148, i64 %147
  store ptr %149, ptr %21, align 8, !tbaa !59
  br label %150

150:                                              ; preds = %133, %139
  %151 = load ptr, ptr %5, align 8, !tbaa !57
  %152 = icmp eq ptr %151, null
  br i1 %152, label %255, label %153

153:                                              ; preds = %150
  tail call void @free(ptr noundef %151)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %255

154:                                              ; preds = %123, %120, %118
  %155 = load i8, ptr %52, align 1, !tbaa !47
  %156 = icmp eq i8 %155, 95
  br i1 %156, label %157, label %255

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, ptr %52, i64 1
  %159 = load i8, ptr %158, align 1, !tbaa !47
  %160 = icmp eq i8 %159, 95
  br i1 %160, label %161, label %194

161:                                              ; preds = %157
  %162 = getelementptr inbounds i8, ptr %52, i64 2
  %163 = load i8, ptr %162, align 1, !tbaa !47
  %164 = icmp eq i8 %163, 111
  br i1 %164, label %165, label %194

165:                                              ; preds = %161
  %166 = getelementptr inbounds i8, ptr %52, i64 3
  %167 = load i8, ptr %166, align 1, !tbaa !47
  %168 = icmp eq i8 %167, 112
  br i1 %168, label %169, label %194

169:                                              ; preds = %165
  %170 = getelementptr inbounds i8, ptr %52, i64 4
  store ptr %170, ptr %6, align 8, !tbaa !35
  %171 = call fastcc i32 @do_type(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %5), !range !56
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %255, label %173

173:                                              ; preds = %169
  %174 = load ptr, ptr %2, align 8, !tbaa !57
  store ptr %174, ptr %21, align 8, !tbaa !59
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.20)
  %175 = load ptr, ptr %5, align 8, !tbaa !57
  %176 = getelementptr inbounds %struct.string, ptr %5, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !59
  %178 = icmp eq ptr %175, %177
  br i1 %178, label %190, label %179

179:                                              ; preds = %173
  %180 = ptrtoint ptr %177 to i64
  %181 = ptrtoint ptr %175 to i64
  %182 = sub i64 %180, %181
  %183 = trunc i64 %182 to i32
  tail call fastcc void @string_need(ptr noundef nonnull %2, i32 noundef %183)
  %184 = load ptr, ptr %21, align 8, !tbaa !59
  %185 = load ptr, ptr %5, align 8, !tbaa !57
  %186 = shl i64 %182, 32
  %187 = ashr exact i64 %186, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %184, ptr align 1 %185, i64 %187, i1 false)
  %188 = load ptr, ptr %21, align 8, !tbaa !59
  %189 = getelementptr inbounds i8, ptr %188, i64 %187
  store ptr %189, ptr %21, align 8, !tbaa !59
  br label %190

190:                                              ; preds = %173, %179
  %191 = load ptr, ptr %5, align 8, !tbaa !57
  %192 = icmp eq ptr %191, null
  br i1 %192, label %255, label %193

193:                                              ; preds = %190
  tail call void @free(ptr noundef %191)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %255

194:                                              ; preds = %165, %161, %157
  br i1 %156, label %195, label %255

195:                                              ; preds = %194
  %196 = getelementptr inbounds i8, ptr %52, i64 1
  %197 = load i8, ptr %196, align 1, !tbaa !47
  %198 = icmp eq i8 %197, 95
  br i1 %198, label %199, label %255

199:                                              ; preds = %195
  %200 = getelementptr inbounds i8, ptr %52, i64 2
  %201 = load i8, ptr %200, align 1, !tbaa !47
  %202 = zext i8 %201 to i64
  %203 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %202
  %204 = load i16, ptr %203, align 2, !tbaa !60
  %205 = and i16 %204, 8
  %206 = icmp eq i16 %205, 0
  br i1 %206, label %255, label %207

207:                                              ; preds = %199
  %208 = getelementptr inbounds i8, ptr %52, i64 3
  %209 = load i8, ptr %208, align 1, !tbaa !47
  %210 = zext i8 %209 to i64
  %211 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %210
  %212 = load i16, ptr %211, align 2, !tbaa !60
  %213 = and i16 %212, 8
  %214 = icmp eq i16 %213, 0
  br i1 %214, label %255, label %215

215:                                              ; preds = %207
  %216 = getelementptr inbounds i8, ptr %52, i64 4
  %217 = load i8, ptr %216, align 1, !tbaa !47
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %219, label %234

219:                                              ; preds = %215, %231
  %220 = phi i64 [ %232, %231 ], [ 0, %215 ]
  %221 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !61
  %223 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %222)
  %224 = icmp eq i64 %223, 2
  br i1 %224, label %225, label %231

225:                                              ; preds = %219
  %226 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %222, ptr noundef nonnull dereferenceable(2) %200, i64 2)
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %225
  store ptr %52, ptr %21, align 8, !tbaa !59
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.21)
  %229 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %220, i32 1
  %230 = load ptr, ptr %229, align 8, !tbaa !63
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef %230)
  br label %255

231:                                              ; preds = %219, %225
  %232 = add nuw nsw i64 %220, 1
  %233 = icmp eq i64 %232, 79
  br i1 %233, label %255, label %219, !llvm.loop !133

234:                                              ; preds = %215
  %235 = icmp eq i8 %201, 97
  br i1 %235, label %236, label %255

236:                                              ; preds = %234
  %237 = getelementptr inbounds i8, ptr %52, i64 5
  %238 = load i8, ptr %237, align 1, !tbaa !47
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %240, label %255

240:                                              ; preds = %236, %252
  %241 = phi i64 [ %253, %252 ], [ 0, %236 ]
  %242 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %241
  %243 = load ptr, ptr %242, align 8, !tbaa !61
  %244 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %243)
  %245 = icmp eq i64 %244, 3
  br i1 %245, label %246, label %252

246:                                              ; preds = %240
  %247 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %243, ptr noundef nonnull dereferenceable(3) %200, i64 3)
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  store ptr %52, ptr %21, align 8, !tbaa !59
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.21)
  %250 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %241, i32 1
  %251 = load ptr, ptr %250, align 8, !tbaa !63
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef %251)
  br label %255

252:                                              ; preds = %240, %246
  %253 = add nuw nsw i64 %241, 1
  %254 = icmp eq i64 %253, 79
  br i1 %254, label %255, label %240, !llvm.loop !134

255:                                              ; preds = %115, %94, %252, %231, %154, %112, %91, %193, %190, %153, %150, %129, %194, %195, %199, %207, %234, %236, %249, %228, %169
  %256 = load ptr, ptr %2, align 8, !tbaa !57
  %257 = load ptr, ptr %21, align 8, !tbaa !59
  %258 = icmp ne ptr %256, %257
  %259 = ptrtoint ptr %257 to i64
  %260 = ptrtoint ptr %256 to i64
  %261 = sub i64 %259, %260
  %262 = icmp eq i64 %261, 1
  %263 = and i1 %258, %262
  br i1 %263, label %264, label %267

264:                                              ; preds = %255
  %265 = load i8, ptr %256, align 1, !tbaa !47
  %266 = icmp eq i8 %265, 46
  br i1 %266, label %268, label %267

267:                                              ; preds = %264, %255
  br label %268

268:                                              ; preds = %264, %267, %46, %39
  %269 = phi i32 [ 1, %39 ], [ 1, %46 ], [ 1, %267 ], [ 0, %264 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #23
  ret i32 %269
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @work_stuff_copy_to_from(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !34 {
  tail call fastcc void @delete_non_B_K_work_stuff(ptr noundef %0)
  tail call fastcc void @squangle_mop_up(ptr noundef %0)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  %3 = getelementptr inbounds %struct.work_stuff, ptr %1, i64 0, i32 9
  %4 = load i32, ptr %3, align 4, !tbaa !135
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = sext i32 %4 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call ptr @xmalloc(i64 noundef %8) #23
  %10 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !70
  br label %11

11:                                               ; preds = %6, %2
  %12 = getelementptr inbounds %struct.work_stuff, ptr %1, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !69
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.work_stuff, ptr %1, i64 0, i32 1
  %17 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi i64 [ 0, %15 ], [ %36, %18 ]
  %20 = load ptr, ptr %16, align 8, !tbaa !70
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %22)
  %24 = shl i64 %23, 32
  %25 = add i64 %24, 4294967296
  %26 = ashr exact i64 %25, 32
  %27 = tail call ptr @xmalloc(i64 noundef %26) #23
  %28 = load ptr, ptr %17, align 8, !tbaa !70
  %29 = getelementptr inbounds ptr, ptr %28, i64 %19
  store ptr %27, ptr %29, align 8, !tbaa !35
  %30 = load ptr, ptr %17, align 8, !tbaa !70
  %31 = getelementptr inbounds ptr, ptr %30, i64 %19
  %32 = load ptr, ptr %31, align 8, !tbaa !35
  %33 = load ptr, ptr %16, align 8, !tbaa !70
  %34 = getelementptr inbounds ptr, ptr %33, i64 %19
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %32, ptr align 1 %35, i64 %26, i1 false)
  %36 = add nuw nsw i64 %19, 1
  %37 = load i32, ptr %12, align 8, !tbaa !69
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %18, label %40, !llvm.loop !136

40:                                               ; preds = %18, %11
  %41 = getelementptr inbounds %struct.work_stuff, ptr %1, i64 0, i32 6
  %42 = load i32, ptr %41, align 8, !tbaa !113
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = sext i32 %42 to i64
  %46 = shl nsw i64 %45, 3
  %47 = tail call ptr @xmalloc(i64 noundef %46) #23
  %48 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 2
  store ptr %47, ptr %48, align 8, !tbaa !81
  br label %49

49:                                               ; preds = %44, %40
  %50 = getelementptr inbounds %struct.work_stuff, ptr %1, i64 0, i32 4
  %51 = load i32, ptr %50, align 8, !tbaa !80
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.work_stuff, ptr %1, i64 0, i32 2
  %55 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 2
  br label %56

56:                                               ; preds = %53, %56
  %57 = phi i64 [ 0, %53 ], [ %74, %56 ]
  %58 = load ptr, ptr %54, align 8, !tbaa !81
  %59 = getelementptr inbounds ptr, ptr %58, i64 %57
  %60 = load ptr, ptr %59, align 8, !tbaa !35
  %61 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %60)
  %62 = shl i64 %61, 32
  %63 = add i64 %62, 4294967296
  %64 = ashr exact i64 %63, 32
  %65 = tail call ptr @xmalloc(i64 noundef %64) #23
  %66 = load ptr, ptr %55, align 8, !tbaa !81
  %67 = getelementptr inbounds ptr, ptr %66, i64 %57
  store ptr %65, ptr %67, align 8, !tbaa !35
  %68 = load ptr, ptr %55, align 8, !tbaa !81
  %69 = getelementptr inbounds ptr, ptr %68, i64 %57
  %70 = load ptr, ptr %69, align 8, !tbaa !35
  %71 = load ptr, ptr %54, align 8, !tbaa !81
  %72 = getelementptr inbounds ptr, ptr %71, i64 %57
  %73 = load ptr, ptr %72, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %70, ptr align 1 %73, i64 %64, i1 false)
  %74 = add nuw nsw i64 %57, 1
  %75 = load i32, ptr %50, align 8, !tbaa !80
  %76 = sext i32 %75 to i64
  %77 = icmp slt i64 %74, %76
  br i1 %77, label %56, label %78, !llvm.loop !137

78:                                               ; preds = %56, %49
  %79 = getelementptr inbounds %struct.work_stuff, ptr %1, i64 0, i32 7
  %80 = load i32, ptr %79, align 4, !tbaa !112
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = sext i32 %80 to i64
  %84 = shl nsw i64 %83, 3
  %85 = tail call ptr @xmalloc(i64 noundef %84) #23
  %86 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 3
  store ptr %85, ptr %86, align 8, !tbaa !75
  br label %87

87:                                               ; preds = %82, %78
  %88 = getelementptr inbounds %struct.work_stuff, ptr %1, i64 0, i32 5
  %89 = load i32, ptr %88, align 4, !tbaa !74
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %116

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.work_stuff, ptr %1, i64 0, i32 3
  %93 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 3
  br label %94

94:                                               ; preds = %91, %94
  %95 = phi i64 [ 0, %91 ], [ %112, %94 ]
  %96 = load ptr, ptr %92, align 8, !tbaa !75
  %97 = getelementptr inbounds ptr, ptr %96, i64 %95
  %98 = load ptr, ptr %97, align 8, !tbaa !35
  %99 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %98)
  %100 = shl i64 %99, 32
  %101 = add i64 %100, 4294967296
  %102 = ashr exact i64 %101, 32
  %103 = tail call ptr @xmalloc(i64 noundef %102) #23
  %104 = load ptr, ptr %93, align 8, !tbaa !75
  %105 = getelementptr inbounds ptr, ptr %104, i64 %95
  store ptr %103, ptr %105, align 8, !tbaa !35
  %106 = load ptr, ptr %93, align 8, !tbaa !75
  %107 = getelementptr inbounds ptr, ptr %106, i64 %95
  %108 = load ptr, ptr %107, align 8, !tbaa !35
  %109 = load ptr, ptr %92, align 8, !tbaa !75
  %110 = getelementptr inbounds ptr, ptr %109, i64 %95
  %111 = load ptr, ptr %110, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %108, ptr align 1 %111, i64 %102, i1 false)
  %112 = add nuw nsw i64 %95, 1
  %113 = load i32, ptr %88, align 4, !tbaa !74
  %114 = sext i32 %113 to i64
  %115 = icmp slt i64 %112, %114
  br i1 %115, label %94, label %116, !llvm.loop !138

116:                                              ; preds = %94, %87
  %117 = getelementptr inbounds %struct.work_stuff, ptr %1, i64 0, i32 17
  %118 = load i32, ptr %117, align 8, !tbaa !77
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %116
  %121 = sext i32 %118 to i64
  %122 = shl nsw i64 %121, 3
  %123 = tail call ptr @xmalloc(i64 noundef %122) #23
  %124 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 16
  store ptr %123, ptr %124, align 8, !tbaa !76
  br label %125

125:                                              ; preds = %120, %116
  %126 = load i32, ptr %117, align 8, !tbaa !77
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %153

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.work_stuff, ptr %1, i64 0, i32 16
  %130 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 16
  br label %131

131:                                              ; preds = %128, %131
  %132 = phi i64 [ 0, %128 ], [ %149, %131 ]
  %133 = load ptr, ptr %129, align 8, !tbaa !76
  %134 = getelementptr inbounds ptr, ptr %133, i64 %132
  %135 = load ptr, ptr %134, align 8, !tbaa !35
  %136 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %135)
  %137 = shl i64 %136, 32
  %138 = add i64 %137, 4294967296
  %139 = ashr exact i64 %138, 32
  %140 = tail call ptr @xmalloc(i64 noundef %139) #23
  %141 = load ptr, ptr %130, align 8, !tbaa !76
  %142 = getelementptr inbounds ptr, ptr %141, i64 %132
  store ptr %140, ptr %142, align 8, !tbaa !35
  %143 = load ptr, ptr %130, align 8, !tbaa !76
  %144 = getelementptr inbounds ptr, ptr %143, i64 %132
  %145 = load ptr, ptr %144, align 8, !tbaa !35
  %146 = load ptr, ptr %129, align 8, !tbaa !76
  %147 = getelementptr inbounds ptr, ptr %146, i64 %132
  %148 = load ptr, ptr %147, align 8, !tbaa !35
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %145, ptr align 1 %148, i64 %139, i1 false)
  %149 = add nuw nsw i64 %132, 1
  %150 = load i32, ptr %117, align 8, !tbaa !77
  %151 = sext i32 %150 to i64
  %152 = icmp slt i64 %149, %151
  br i1 %152, label %131, label %153, !llvm.loop !139

153:                                              ; preds = %131, %125
  %154 = getelementptr inbounds %struct.work_stuff, ptr %1, i64 0, i32 19
  %155 = load ptr, ptr %154, align 8, !tbaa !140
  %156 = icmp eq ptr %155, null
  br i1 %156, label %177, label %157

157:                                              ; preds = %153
  %158 = tail call ptr @xmalloc(i64 noundef 24) #23
  %159 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 19
  store ptr %158, ptr %159, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %158, i8 0, i64 24, i1 false)
  %160 = load ptr, ptr %154, align 8, !tbaa !140
  %161 = load ptr, ptr %160, align 8, !tbaa !57
  %162 = getelementptr inbounds %struct.string, ptr %160, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !59
  %164 = icmp eq ptr %161, %163
  br i1 %164, label %177, label %165

165:                                              ; preds = %157
  %166 = getelementptr inbounds %struct.string, ptr %158, i64 0, i32 1
  %167 = ptrtoint ptr %163 to i64
  %168 = ptrtoint ptr %161 to i64
  %169 = sub i64 %167, %168
  %170 = trunc i64 %169 to i32
  tail call fastcc void @string_need(ptr noundef nonnull %158, i32 noundef %170)
  %171 = load ptr, ptr %166, align 8, !tbaa !59
  %172 = load ptr, ptr %160, align 8, !tbaa !57
  %173 = shl i64 %169, 32
  %174 = ashr exact i64 %173, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %171, ptr align 1 %172, i64 %174, i1 false)
  %175 = load ptr, ptr %166, align 8, !tbaa !59
  %176 = getelementptr inbounds i8, ptr %175, i64 %174
  store ptr %176, ptr %166, align 8, !tbaa !59
  br label %177

177:                                              ; preds = %165, %157, %153
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @delete_non_B_K_work_stuff(ptr nocapture noundef %0) unnamed_addr #10 !prof !34 {
  %2 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !69
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 1
  br label %7

7:                                                ; preds = %5, %18
  %8 = phi i32 [ %3, %5 ], [ %19, %18 ]
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %2, align 8, !tbaa !69
  %10 = load ptr, ptr %6, align 8, !tbaa !70
  %11 = zext nneg i32 %9 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  tail call void @free(ptr noundef %13)
  %16 = load ptr, ptr %6, align 8, !tbaa !70
  %17 = getelementptr inbounds ptr, ptr %16, i64 %11
  store ptr null, ptr %17, align 8, !tbaa !35
  br label %18

18:                                               ; preds = %15, %7
  %19 = load i32, ptr %2, align 8, !tbaa !69
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %7, label %21, !llvm.loop !107

21:                                               ; preds = %18, %1
  %22 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !70
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  tail call void @free(ptr noundef %23)
  store ptr null, ptr %22, align 8, !tbaa !70
  %26 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 9
  store i32 0, ptr %26, align 4, !tbaa !135
  br label %27

27:                                               ; preds = %25, %21
  %28 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 16
  %29 = load ptr, ptr %28, align 8, !tbaa !76
  %30 = icmp eq ptr %29, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 17
  %33 = load i32, ptr %32, align 8, !tbaa !77
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %31, %42
  %36 = phi i64 [ %43, %42 ], [ 0, %31 ]
  %37 = load ptr, ptr %28, align 8, !tbaa !76
  %38 = getelementptr inbounds ptr, ptr %37, i64 %36
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  tail call void @free(ptr noundef %39)
  br label %42

42:                                               ; preds = %35, %41
  %43 = add nuw nsw i64 %36, 1
  %44 = load i32, ptr %32, align 8, !tbaa !77
  %45 = sext i32 %44 to i64
  %46 = icmp slt i64 %43, %45
  br i1 %46, label %35, label %47, !llvm.loop !141

47:                                               ; preds = %42, %31
  %48 = load ptr, ptr %28, align 8, !tbaa !76
  tail call void @free(ptr noundef %48)
  store ptr null, ptr %28, align 8, !tbaa !76
  br label %49

49:                                               ; preds = %47, %27
  %50 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 19
  %51 = load ptr, ptr %50, align 8, !tbaa !140
  %52 = icmp eq ptr %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %51, align 8, !tbaa !57
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  tail call void @free(ptr noundef %54)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %51, i8 0, i64 24, i1 false)
  br label %57

57:                                               ; preds = %53, %56
  %58 = load ptr, ptr %50, align 8, !tbaa !140
  tail call void @free(ptr noundef %58)
  store ptr null, ptr %50, align 8, !tbaa !140
  br label %59

59:                                               ; preds = %57, %49
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @remember_type(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #10 !prof !34 {
  %4 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !142
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %38

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 8
  %9 = load i32, ptr %8, align 8, !tbaa !69
  %10 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 9
  %11 = load i32, ptr %10, align 4, !tbaa !135
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %26, label %13

13:                                               ; preds = %7
  %14 = icmp eq i32 %11, 0
  %15 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 1
  br i1 %14, label %16, label %18

16:                                               ; preds = %13
  store i32 3, ptr %10, align 4, !tbaa !135
  %17 = tail call ptr @xmalloc(i64 noundef 24) #23
  br label %24

18:                                               ; preds = %13
  %19 = shl nsw i32 %11, 1
  store i32 %19, ptr %10, align 4, !tbaa !135
  %20 = load ptr, ptr %15, align 8, !tbaa !70
  %21 = sext i32 %19 to i64
  %22 = shl nsw i64 %21, 3
  %23 = tail call ptr @xrealloc(ptr noundef %20, i64 noundef %22) #23
  br label %24

24:                                               ; preds = %18, %16
  %25 = phi ptr [ %17, %16 ], [ %23, %18 ]
  store ptr %25, ptr %15, align 8, !tbaa !70
  br label %26

26:                                               ; preds = %24, %7
  %27 = add nsw i32 %2, 1
  %28 = sext i32 %27 to i64
  %29 = tail call ptr @xmalloc(i64 noundef %28) #23
  %30 = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %29, ptr align 1 %1, i64 %30, i1 false)
  %31 = getelementptr inbounds i8, ptr %29, i64 %30
  store i8 0, ptr %31, align 1, !tbaa !47
  %32 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !70
  %34 = load i32, ptr %8, align 8, !tbaa !69
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %8, align 8, !tbaa !69
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds ptr, ptr %33, i64 %36
  store ptr %29, ptr %37, align 8, !tbaa !35
  br label %38

38:                                               ; preds = %3, %26
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @demangle_args(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #10 !prof !34 {
  %4 = alloca %struct.string, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  %8 = load i32, ptr %0, align 8, !tbaa !54
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.208)
  %12 = load ptr, ptr %1, align 8, !tbaa !35
  %13 = load i8, ptr %12, align 1, !tbaa !47
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.228)
  br label %16

16:                                               ; preds = %11, %15, %3
  %17 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 20
  %18 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 8
  %19 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 8
  %20 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 20
  %21 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 1
  %22 = getelementptr inbounds %struct.string, ptr %4, i64 0, i32 1
  br label %23

23:                                               ; preds = %183, %16
  %24 = phi i32 [ 0, %16 ], [ %184, %183 ]
  %25 = load ptr, ptr %1, align 8, !tbaa !35
  %26 = load i8, ptr %25, align 1, !tbaa !47
  switch i8 %26, label %148 [
    i8 95, label %27
    i8 0, label %27
    i8 101, label %27
    i8 78, label %31
    i8 84, label %31
  ]

27:                                               ; preds = %23, %23, %23
  %28 = load i32, ptr %17, align 8, !tbaa !143
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %185

30:                                               ; preds = %27
  switch i8 %26, label %148 [
    i8 78, label %31
    i8 84, label %31
  ]

31:                                               ; preds = %30, %23, %23, %30
  %32 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %32, ptr %1, align 8, !tbaa !35
  %33 = load i8, ptr %25, align 1, !tbaa !47
  %34 = icmp eq i8 %33, 78
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = call fastcc i32 @get_count(ptr noundef nonnull %1, ptr noundef nonnull %5), !range !68
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %202, label %39

38:                                               ; preds = %31
  store i32 1, ptr %5, align 4, !tbaa !39
  br label %39

39:                                               ; preds = %35, %38
  %40 = load i32, ptr %0, align 8, !tbaa !54
  %41 = and i32 %40, 14336
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %83, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr %18, align 8, !tbaa !69
  %45 = icmp sgt i32 %44, 9
  br i1 %45, label %46, label %83

46:                                               ; preds = %43
  %47 = load ptr, ptr %1, align 8, !tbaa !35
  %48 = load i8, ptr %47, align 1, !tbaa !47
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %49
  %51 = load i16, ptr %50, align 2, !tbaa !60
  %52 = and i16 %51, 4
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %80, label %54

54:                                               ; preds = %46
  %55 = load ptr, ptr %1, align 8, !tbaa !35
  %56 = load i8, ptr %55, align 1, !tbaa !47
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %57
  %59 = load i16, ptr %58, align 2, !tbaa !60
  %60 = and i16 %59, 4
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %54, %62
  %63 = phi i8 [ %71, %62 ], [ %56, %54 ]
  %64 = phi i32 [ %69, %62 ], [ 0, %54 ]
  %65 = phi ptr [ %70, %62 ], [ %55, %54 ]
  %66 = mul nsw i32 %64, 10
  %67 = sext i8 %63 to i32
  %68 = add i32 %66, -48
  %69 = add i32 %68, %67
  %70 = getelementptr inbounds i8, ptr %65, i64 1
  store ptr %70, ptr %1, align 8, !tbaa !35
  %71 = load i8, ptr %70, align 1, !tbaa !47
  %72 = zext i8 %71 to i64
  %73 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %72
  %74 = load i16, ptr %73, align 2, !tbaa !60
  %75 = and i16 %74, 4
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %77, label %62, !llvm.loop !71

77:                                               ; preds = %62, %54
  %78 = phi i32 [ 0, %54 ], [ %69, %62 ]
  %79 = tail call i32 @llvm.smax.i32(i32 %78, i32 -1)
  br label %80

80:                                               ; preds = %46, %77
  %81 = phi i32 [ %79, %77 ], [ -1, %46 ]
  store i32 %81, ptr %6, align 4, !tbaa !39
  %82 = icmp slt i32 %81, 1
  br i1 %82, label %202, label %86

83:                                               ; preds = %39, %43
  %84 = call fastcc i32 @get_count(ptr noundef nonnull %1, ptr noundef nonnull %6), !range !68
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %202, label %86

86:                                               ; preds = %83, %80
  %87 = load i32, ptr %0, align 8, !tbaa !54
  %88 = and i32 %87, 15360
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load i32, ptr %6, align 4, !tbaa !39
  %92 = add nsw i32 %91, -1
  store i32 %92, ptr %6, align 4, !tbaa !39
  br label %93

93:                                               ; preds = %86, %90
  %94 = load i32, ptr %6, align 4, !tbaa !39
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %202, label %96

96:                                               ; preds = %93
  %97 = load i32, ptr %19, align 8, !tbaa !69
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %202

99:                                               ; preds = %96
  %100 = load i32, ptr %5, align 4, !tbaa !39
  %101 = zext nneg i32 %94 to i64
  br label %102

102:                                              ; preds = %146, %99
  %103 = phi i32 [ %100, %99 ], [ %111, %146 ]
  %104 = phi i32 [ %24, %99 ], [ 1, %146 ]
  %105 = load i32, ptr %20, align 8, !tbaa !143
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = add nsw i32 %103, -1
  %109 = icmp sgt i32 %103, 0
  br i1 %109, label %110, label %182

110:                                              ; preds = %102, %107
  %111 = phi i32 [ %103, %102 ], [ %108, %107 ]
  %112 = load ptr, ptr %21, align 8, !tbaa !70
  %113 = getelementptr inbounds ptr, ptr %112, i64 %101
  %114 = load ptr, ptr %113, align 8, !tbaa !35
  store ptr %114, ptr %7, align 8, !tbaa !35
  %115 = icmp eq i32 %104, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %110
  %117 = load i32, ptr %0, align 8, !tbaa !54
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.166)
  br label %121

121:                                              ; preds = %120, %116, %110
  %122 = call fastcc i32 @do_arg(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %4), !range !68
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %201, label %124

124:                                              ; preds = %121
  %125 = load i32, ptr %0, align 8, !tbaa !54
  %126 = and i32 %125, 1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %143, label %128

128:                                              ; preds = %124
  %129 = load ptr, ptr %4, align 8, !tbaa !57
  %130 = load ptr, ptr %22, align 8, !tbaa !59
  %131 = icmp eq ptr %129, %130
  br i1 %131, label %143, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %134 = ptrtoint ptr %130 to i64
  %135 = ptrtoint ptr %129 to i64
  %136 = sub i64 %134, %135
  %137 = trunc i64 %136 to i32
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef %137)
  %138 = load ptr, ptr %133, align 8, !tbaa !59
  %139 = shl i64 %136, 32
  %140 = ashr exact i64 %139, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %138, ptr align 1 %129, i64 %140, i1 false)
  %141 = load ptr, ptr %133, align 8, !tbaa !59
  %142 = getelementptr inbounds i8, ptr %141, i64 %140
  store ptr %142, ptr %133, align 8, !tbaa !59
  br label %143

143:                                              ; preds = %132, %128, %124
  %144 = load ptr, ptr %4, align 8, !tbaa !57
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %143, %147
  br label %102, !llvm.loop !144

147:                                              ; preds = %143
  tail call void @free(ptr noundef %144)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %146

148:                                              ; preds = %23, %30
  %149 = icmp eq i32 %24, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %148
  %151 = load i32, ptr %0, align 8, !tbaa !54
  %152 = and i32 %151, 1
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %150
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.166)
  br label %155

155:                                              ; preds = %154, %150, %148
  %156 = call fastcc i32 @do_arg(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %4), !range !68
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %202, label %158

158:                                              ; preds = %155
  %159 = load i32, ptr %0, align 8, !tbaa !54
  %160 = and i32 %159, 1
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %178, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.string, ptr %4, i64 0, i32 1
  %164 = load ptr, ptr %4, align 8, !tbaa !57
  %165 = load ptr, ptr %163, align 8, !tbaa !59
  %166 = icmp eq ptr %164, %165
  br i1 %166, label %178, label %167

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %169 = ptrtoint ptr %165 to i64
  %170 = ptrtoint ptr %164 to i64
  %171 = sub i64 %169, %170
  %172 = trunc i64 %171 to i32
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef %172)
  %173 = load ptr, ptr %168, align 8, !tbaa !59
  %174 = shl i64 %171, 32
  %175 = ashr exact i64 %174, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %173, ptr align 1 %164, i64 %175, i1 false)
  %176 = load ptr, ptr %168, align 8, !tbaa !59
  %177 = getelementptr inbounds i8, ptr %176, i64 %175
  store ptr %177, ptr %168, align 8, !tbaa !59
  br label %178

178:                                              ; preds = %167, %162, %158
  %179 = load ptr, ptr %4, align 8, !tbaa !57
  %180 = icmp eq ptr %179, null
  br i1 %180, label %183, label %181

181:                                              ; preds = %178
  tail call void @free(ptr noundef %179)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %183

182:                                              ; preds = %107
  store i32 %108, ptr %5, align 4, !tbaa !39
  br label %183

183:                                              ; preds = %182, %181, %178
  %184 = phi i32 [ 1, %178 ], [ 1, %181 ], [ %104, %182 ]
  br label %23, !llvm.loop !145

185:                                              ; preds = %27
  %186 = icmp eq i8 %26, 101
  br i1 %186, label %187, label %196

187:                                              ; preds = %185
  %188 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %188, ptr %1, align 8, !tbaa !35
  %189 = load i32, ptr %0, align 8, !tbaa !54
  %190 = and i32 %189, 1
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %187
  %193 = icmp eq i32 %24, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %192
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.217)
  br label %195

195:                                              ; preds = %194, %192
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.229)
  br label %196

196:                                              ; preds = %187, %195, %185
  %197 = load i32, ptr %0, align 8, !tbaa !54
  %198 = and i32 %197, 1
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %196
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.209)
  br label %202

201:                                              ; preds = %121
  store i32 %111, ptr %5, align 4, !tbaa !39
  br label %202

202:                                              ; preds = %96, %83, %80, %35, %155, %93, %201, %196, %200
  %203 = phi i32 [ 1, %200 ], [ 1, %196 ], [ 0, %201 ], [ 0, %93 ], [ 0, %155 ], [ 0, %35 ], [ 0, %80 ], [ 0, %83 ], [ 0, %96 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  ret i32 %203
}

; Function Attrs: noreturn
declare void @abort() local_unnamed_addr #19

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @demangle_class_name(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #10 !prof !34 {
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = load i8, ptr %4, align 1, !tbaa !47
  %6 = zext i8 %5 to i64
  %7 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %6
  %8 = load i16, ptr %7, align 2, !tbaa !60
  %9 = and i16 %8, 4
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %37, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %1, align 8, !tbaa !35
  %13 = load i8, ptr %12, align 1, !tbaa !47
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !60
  %17 = and i16 %16, 4
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %11, %19
  %20 = phi i8 [ %28, %19 ], [ %13, %11 ]
  %21 = phi i32 [ %26, %19 ], [ 0, %11 ]
  %22 = phi ptr [ %27, %19 ], [ %12, %11 ]
  %23 = mul nsw i32 %21, 10
  %24 = sext i8 %20 to i32
  %25 = add i32 %23, -48
  %26 = add i32 %25, %24
  %27 = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %27, ptr %1, align 8, !tbaa !35
  %28 = load i8, ptr %27, align 1, !tbaa !47
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !60
  %32 = and i16 %31, 4
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %19, !llvm.loop !71

34:                                               ; preds = %19, %11
  %35 = phi i32 [ 0, %11 ], [ %26, %19 ]
  %36 = tail call i32 @llvm.smax.i32(i32 %35, i32 -1)
  br label %37

37:                                               ; preds = %3, %34
  %38 = phi i32 [ %36, %34 ], [ -1, %3 ]
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %1, align 8, !tbaa !35
  %42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %41)
  %43 = trunc i64 %42 to i32
  %44 = icmp sgt i32 %38, %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  tail call fastcc void @demangle_arm_hp_template(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %38, ptr noundef %2)
  br label %46

46:                                               ; preds = %40, %45, %37
  %47 = phi i32 [ 0, %37 ], [ 1, %45 ], [ 0, %40 ]
  ret i32 %47
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @do_arg(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #10 !prof !34 {
  br label %4

4:                                                ; preds = %80, %3
  %5 = load ptr, ptr %1, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %7 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %8 = load i32, ptr %7, align 8, !tbaa !143
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %4
  %11 = add nsw i32 %8, -1
  store i32 %11, ptr %7, align 8, !tbaa !143
  %12 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !140
  %14 = icmp eq ptr %13, null
  br i1 %14, label %118, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %13, align 8, !tbaa !57
  %17 = getelementptr inbounds %struct.string, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %118, label %20

20:                                               ; preds = %15
  %21 = ptrtoint ptr %18 to i64
  %22 = ptrtoint ptr %16 to i64
  %23 = sub i64 %21, %22
  %24 = trunc i64 %23 to i32
  tail call fastcc void @string_need(ptr noundef nonnull %2, i32 noundef %24)
  %25 = load ptr, ptr %6, align 8, !tbaa !59
  %26 = load ptr, ptr %13, align 8, !tbaa !57
  %27 = shl i64 %23, 32
  %28 = ashr exact i64 %27, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %26, i64 %28, i1 false)
  %29 = load ptr, ptr %6, align 8, !tbaa !59
  %30 = getelementptr inbounds i8, ptr %29, i64 %28
  store ptr %30, ptr %6, align 8, !tbaa !59
  br label %118

31:                                               ; preds = %4
  %32 = load ptr, ptr %1, align 8, !tbaa !35
  %33 = load i8, ptr %32, align 1, !tbaa !47
  %34 = icmp eq i8 %33, 110
  br i1 %34, label %35, label %81

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %32, i64 1
  store ptr %36, ptr %1, align 8, !tbaa !35
  %37 = load i8, ptr %36, align 1, !tbaa !47
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !60
  %41 = and i16 %40, 4
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %69, label %43

43:                                               ; preds = %35
  %44 = load ptr, ptr %1, align 8, !tbaa !35
  %45 = load i8, ptr %44, align 1, !tbaa !47
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %46
  %48 = load i16, ptr %47, align 2, !tbaa !60
  %49 = and i16 %48, 4
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %43, %51
  %52 = phi i8 [ %60, %51 ], [ %45, %43 ]
  %53 = phi i32 [ %58, %51 ], [ 0, %43 ]
  %54 = phi ptr [ %59, %51 ], [ %44, %43 ]
  %55 = mul nsw i32 %53, 10
  %56 = sext i8 %52 to i32
  %57 = add i32 %55, -48
  %58 = add i32 %57, %56
  %59 = getelementptr inbounds i8, ptr %54, i64 1
  store ptr %59, ptr %1, align 8, !tbaa !35
  %60 = load i8, ptr %59, align 1, !tbaa !47
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %61
  %63 = load i16, ptr %62, align 2, !tbaa !60
  %64 = and i16 %63, 4
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %51, !llvm.loop !71

66:                                               ; preds = %51, %43
  %67 = phi i32 [ 0, %43 ], [ %58, %51 ]
  %68 = tail call i32 @llvm.smax.i32(i32 %67, i32 -1)
  br label %69

69:                                               ; preds = %35, %66
  %70 = phi i32 [ %68, %66 ], [ -1, %35 ]
  store i32 %70, ptr %7, align 8, !tbaa !143
  %71 = icmp slt i32 %70, 1
  br i1 %71, label %118, label %72

72:                                               ; preds = %69
  %73 = icmp sgt i32 %70, 9
  br i1 %73, label %74, label %80

74:                                               ; preds = %72
  %75 = load ptr, ptr %1, align 8, !tbaa !35
  %76 = load i8, ptr %75, align 1, !tbaa !47
  %77 = icmp eq i8 %76, 95
  br i1 %77, label %78, label %118

78:                                               ; preds = %74
  %79 = getelementptr inbounds i8, ptr %75, i64 1
  store ptr %79, ptr %1, align 8, !tbaa !35
  br label %80

80:                                               ; preds = %78, %72
  br label %4

81:                                               ; preds = %31
  %82 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 19
  %83 = load ptr, ptr %82, align 8, !tbaa !140
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %83, align 8, !tbaa !57
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  tail call void @free(ptr noundef %86)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %83, i8 0, i64 24, i1 false)
  br label %91

89:                                               ; preds = %81
  %90 = tail call ptr @xmalloc(i64 noundef 24) #23
  store ptr %90, ptr %82, align 8, !tbaa !140
  br label %91

91:                                               ; preds = %88, %85, %89
  %92 = load ptr, ptr %82, align 8, !tbaa !140
  %93 = tail call fastcc i32 @do_type(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %92), !range !56
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %118, label %95

95:                                               ; preds = %91
  %96 = load ptr, ptr %82, align 8, !tbaa !140
  %97 = load ptr, ptr %96, align 8, !tbaa !57
  %98 = getelementptr inbounds %struct.string, ptr %96, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !59
  %100 = icmp eq ptr %97, %99
  br i1 %100, label %112, label %101

101:                                              ; preds = %95
  %102 = ptrtoint ptr %99 to i64
  %103 = ptrtoint ptr %97 to i64
  %104 = sub i64 %102, %103
  %105 = trunc i64 %104 to i32
  tail call fastcc void @string_need(ptr noundef nonnull %2, i32 noundef %105)
  %106 = load ptr, ptr %6, align 8, !tbaa !59
  %107 = load ptr, ptr %96, align 8, !tbaa !57
  %108 = shl i64 %104, 32
  %109 = ashr exact i64 %108, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %106, ptr align 1 %107, i64 %109, i1 false)
  %110 = load ptr, ptr %6, align 8, !tbaa !59
  %111 = getelementptr inbounds i8, ptr %110, i64 %109
  store ptr %111, ptr %6, align 8, !tbaa !59
  br label %112

112:                                              ; preds = %95, %101
  %113 = load ptr, ptr %1, align 8, !tbaa !35
  %114 = ptrtoint ptr %113 to i64
  %115 = ptrtoint ptr %5 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  tail call fastcc void @remember_type(ptr noundef %0, ptr noundef %5, i32 noundef %117)
  br label %118

118:                                              ; preds = %20, %15, %91, %74, %69, %10, %112
  %119 = phi i32 [ 1, %112 ], [ 0, %10 ], [ 0, %69 ], [ 0, %74 ], [ 0, %91 ], [ 1, %15 ], [ 1, %20 ]
  ret i32 %119
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @demangle_nested_args(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #10 !prof !34 {
  %4 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !142
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %4, align 4, !tbaa !142
  %7 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !140
  %9 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 20
  %10 = load i32, ptr %9, align 8, !tbaa !143
  store ptr null, ptr %7, align 8, !tbaa !140
  store i32 0, ptr %9, align 8, !tbaa !143
  %11 = tail call fastcc i32 @demangle_args(ptr noundef %0, ptr noundef %1, ptr noundef %2), !range !68
  %12 = load ptr, ptr %7, align 8, !tbaa !140
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr %12, align 8, !tbaa !57
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @free(ptr noundef %15)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  br label %18

18:                                               ; preds = %14, %17
  %19 = load ptr, ptr %7, align 8, !tbaa !140
  tail call void @free(ptr noundef %19)
  br label %20

20:                                               ; preds = %18, %3
  store ptr %8, ptr %7, align 8, !tbaa !140
  %21 = load i32, ptr %4, align 4, !tbaa !142
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr %4, align 4, !tbaa !142
  store i32 %10, ptr %9, align 8, !tbaa !143
  ret i32 %11
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef nonnull ptr @demangle_qualifier(i32 noundef %0) unnamed_addr #10 !prof !34 {
  switch i32 %0, label %4 [
    i32 67, label %5
    i32 86, label %2
    i32 117, label %3
  ]

2:                                                ; preds = %1
  br label %5

3:                                                ; preds = %1
  br label %5

4:                                                ; preds = %1
  tail call void @abort() #24
  unreachable

5:                                                ; preds = %1, %2, %3
  %6 = phi i64 [ 3, %3 ], [ 1, %2 ], [ 0, %1 ]
  %7 = shl i64 %6, 2
  %8 = call ptr @llvm.load.relative.i64(ptr @reltable.demangle_qualifier, i64 %7)
  ret ptr %8
}

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #22

attributes #0 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!42, !36, i64 8}
!42 = !{!"_IO_FILE", !40, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !40, i64 112, !40, i64 116, !43, i64 120, !44, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !43, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !43, i64 184, !40, i64 192, !37, i64 196}
!43 = !{!"long", !37, i64 0}
!44 = !{!"short", !37, i64 0}
!45 = !{!42, !36, i64 16}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{!37, !37, i64 0}
!48 = !{!42, !36, i64 40}
!49 = !{!42, !36, i64 48}
!50 = !{!42, !40, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !40, i64 0}
!55 = !{!"work_stuff", !40, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !36, i64 80, !40, i64 88, !40, i64 92, !36, i64 96, !40, i64 104}
!56 = !{i32 0, i32 7}
!57 = !{!58, !36, i64 0}
!58 = !{!"string", !36, i64 0, !36, i64 8, !36, i64 16}
!59 = !{!58, !36, i64 8}
!60 = !{!44, !44, i64 0}
!61 = !{!62, !36, i64 0}
!62 = !{!"optable", !36, i64 0, !36, i64 8, !40, i64 16}
!63 = !{!62, !36, i64 8}
!64 = distinct !{!64, !52, !53}
!65 = distinct !{!65, !52, !53}
!66 = distinct !{!66, !52, !53}
!67 = distinct !{!67, !52, !53}
!68 = !{i32 0, i32 2}
!69 = !{!55, !40, i64 48}
!70 = !{!55, !36, i64 8}
!71 = distinct !{!71, !52, !53}
!72 = distinct !{!72, !52, !53}
!73 = distinct !{!73, !52, !53}
!74 = !{!55, !40, i64 36}
!75 = !{!55, !36, i64 24}
!76 = !{!55, !36, i64 80}
!77 = !{!55, !40, i64 88}
!78 = distinct !{!78, !52, !53}
!79 = distinct !{!79, !52, !53}
!80 = !{!55, !40, i64 32}
!81 = !{!55, !36, i64 16}
!82 = distinct !{!82, !52, !53}
!83 = distinct !{!83, !52, !53}
!84 = !{!62, !40, i64 16}
!85 = distinct !{!85, !52, !53}
!86 = !{!87, !40, i64 8}
!87 = !{!"demangler_engine", !36, i64 0, !40, i64 8, !36, i64 16}
!88 = distinct !{!88, !52, !53}
!89 = distinct !{!89, !52, !53}
!90 = !{!87, !36, i64 0}
!91 = distinct !{!91, !52, !53}
!92 = distinct !{!92, !52, !53}
!93 = distinct !{!93, !52, !53}
!94 = distinct !{!94, !53}
!95 = distinct !{!95, !52, !53}
!96 = distinct !{!96, !52, !53}
!97 = !{!55, !40, i64 56}
!98 = !{!55, !40, i64 60}
!99 = !{!55, !40, i64 64}
!100 = !{!55, !40, i64 72}
!101 = !{!55, !40, i64 76}
!102 = distinct !{!102, !52, !53}
!103 = distinct !{!103, !52, !53}
!104 = distinct !{!104, !52, !53}
!105 = distinct !{!105, !52, !53}
!106 = !{!55, !40, i64 68}
!107 = distinct !{!107, !52, !53}
!108 = distinct !{!108, !52, !53}
!109 = distinct !{!109, !52, !53}
!110 = distinct !{!110, !52, !53}
!111 = distinct !{!111, !52, !53}
!112 = !{!55, !40, i64 44}
!113 = !{!55, !40, i64 40}
!114 = !{!58, !36, i64 16}
!115 = distinct !{!115, !52, !53}
!116 = distinct !{!116, !52, !53}
!117 = distinct !{!117, !52, !53}
!118 = distinct !{!118, !52, !53}
!119 = distinct !{!119, !52, !53}
!120 = distinct !{!120, !52, !53}
!121 = distinct !{!121, !52, !53}
!122 = distinct !{!122, !52, !53}
!123 = distinct !{!123, !53}
!124 = distinct !{!124, !52, !53}
!125 = distinct !{!125, !52, !53}
!126 = distinct !{!126, !52, !53}
!127 = distinct !{!127, !52, !53}
!128 = distinct !{!128, !52, !53}
!129 = distinct !{!129, !52, !53}
!130 = distinct !{!130, !52, !53}
!131 = distinct !{!131, !52, !53}
!132 = distinct !{!132, !52, !53}
!133 = distinct !{!133, !52, !53}
!134 = distinct !{!134, !52, !53}
!135 = !{!55, !40, i64 52}
!136 = distinct !{!136, !52, !53}
!137 = distinct !{!137, !52, !53}
!138 = distinct !{!138, !52, !53}
!139 = distinct !{!139, !52, !53}
!140 = !{!55, !36, i64 96}
!141 = distinct !{!141, !52, !53}
!142 = !{!55, !40, i64 92}
!143 = !{!55, !40, i64 104}
!144 = distinct !{!144, !52, !53}
!145 = distinct !{!145, !52, !53}
