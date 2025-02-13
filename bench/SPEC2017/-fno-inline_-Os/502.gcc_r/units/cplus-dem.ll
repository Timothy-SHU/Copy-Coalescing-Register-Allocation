; ModuleID = 'cplus-dem.c'
source_filename = "cplus-dem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.demangler_engine = type { ptr, i32, ptr }
%struct.optable = type { ptr, ptr, i32 }
%struct.string = type { ptr, ptr, ptr }
%struct.work_stuff = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, i32 }

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
@.str.203 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.204 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.205 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.206 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.207 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.208 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.209 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.210 = private unnamed_addr constant [2 x i8] c"e\00", align 1
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
@reltable.qualifier_string = private unnamed_addr constant [8 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.178 to i64), i64 ptrtoint (ptr @reltable.qualifier_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.230 to i64), i64 ptrtoint (ptr @reltable.qualifier_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.231 to i64), i64 ptrtoint (ptr @reltable.qualifier_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.233 to i64), i64 ptrtoint (ptr @reltable.qualifier_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.232 to i64), i64 ptrtoint (ptr @reltable.qualifier_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.234 to i64), i64 ptrtoint (ptr @reltable.qualifier_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.235 to i64), i64 ptrtoint (ptr @reltable.qualifier_string to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.236 to i64), i64 ptrtoint (ptr @reltable.qualifier_string to i64)) to i32)], align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_cplus_marker_for_demangling(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = trunc i32 %0 to i8
  store i8 %2, ptr @cplus_markers, align 1, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @cplus_demangle_opname(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 !prof !34 {
  %4 = alloca %struct.string, align 8
  %5 = alloca [1 x %struct.work_stuff], align 16
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %8 = trunc i64 %7 to i32
  store i8 0, ptr %1, align 1, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %5, i8 0, i64 112, i1 false)
  store i32 %2, ptr %5, align 16, !tbaa !38
  %9 = load i8, ptr %0, align 1, !tbaa !35
  %10 = icmp eq i8 %9, 95
  br i1 %10, label %11, label %99

11:                                               ; preds = %3
  %12 = getelementptr inbounds i8, ptr %0, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !35
  %14 = icmp eq i8 %13, 95
  br i1 %14, label %15, label %99

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %0, i64 2
  %17 = load i8, ptr %16, align 1, !tbaa !35
  %18 = icmp eq i8 %17, 111
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, ptr %0, i64 3
  %21 = load i8, ptr %20, align 1, !tbaa !35
  %22 = icmp eq i8 %21, 112
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %0, i64 4
  store ptr %24, ptr %6, align 8, !tbaa !42
  %25 = call fastcc i32 @do_type(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %4) #23, !range !43
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %192, label %27

27:                                               ; preds = %23
  %28 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %29 = getelementptr inbounds i8, ptr %1, i64 %28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %29, ptr noundef nonnull align 1 dereferenceable(10) @.str.20, i64 10, i1 false)
  %30 = load ptr, ptr %4, align 8, !tbaa !44
  %31 = getelementptr inbounds %struct.string, ptr %4, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = ptrtoint ptr %32 to i64
  %34 = ptrtoint ptr %30 to i64
  %35 = sub i64 %33, %34
  %36 = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef %30, i64 noundef %35) #23
  call fastcc void @string_delete(ptr noundef nonnull %4) #23
  br label %192

37:                                               ; preds = %19, %15
  %38 = getelementptr inbounds i8, ptr %0, i64 2
  %39 = load i8, ptr %38, align 1, !tbaa !35
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %40
  %42 = load i16, ptr %41, align 2, !tbaa !47
  %43 = and i16 %42, 8
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %99, label %45

45:                                               ; preds = %37
  %46 = getelementptr inbounds i8, ptr %0, i64 3
  %47 = load i8, ptr %46, align 1, !tbaa !35
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %48
  %50 = load i16, ptr %49, align 2, !tbaa !47
  %51 = and i16 %50, 8
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %99, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds i8, ptr %0, i64 4
  %55 = load i8, ptr %54, align 1, !tbaa !35
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %53, %72
  %58 = phi i64 [ %73, %72 ], [ 0, %53 ]
  %59 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !49
  %61 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %60) #23
  %62 = icmp eq i64 %61, 2
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %60, ptr noundef nonnull dereferenceable(2) %38, i64 2)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %68 = getelementptr inbounds i8, ptr %1, i64 %67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %68, ptr noundef nonnull align 1 dereferenceable(9) @.str.21, i64 9, i1 false)
  %69 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %58, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !51
  %71 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %70) #23
  br label %192

72:                                               ; preds = %57, %63
  %73 = add nuw nsw i64 %58, 1
  %74 = icmp eq i64 %73, 79
  br i1 %74, label %192, label %57, !llvm.loop !52

75:                                               ; preds = %53
  %76 = icmp eq i8 %39, 97
  br i1 %76, label %77, label %192

77:                                               ; preds = %75
  %78 = getelementptr inbounds i8, ptr %0, i64 5
  %79 = load i8, ptr %78, align 1, !tbaa !35
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %192

81:                                               ; preds = %77, %96
  %82 = phi i64 [ %97, %96 ], [ 0, %77 ]
  %83 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !49
  %85 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %84) #23
  %86 = icmp eq i64 %85, 3
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %84, ptr noundef nonnull dereferenceable(3) %38, i64 3)
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %92 = getelementptr inbounds i8, ptr %1, i64 %91
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %92, ptr noundef nonnull align 1 dereferenceable(9) @.str.21, i64 9, i1 false)
  %93 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %82, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !51
  %95 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %94) #23
  br label %192

96:                                               ; preds = %81, %87
  %97 = add nuw nsw i64 %82, 1
  %98 = icmp eq i64 %97, 79
  br i1 %98, label %192, label %81, !llvm.loop !54

99:                                               ; preds = %11, %3, %45, %37
  %100 = icmp sgt i32 %8, 2
  br i1 %100, label %101, label %192

101:                                              ; preds = %99
  %102 = icmp eq i8 %9, 111
  br i1 %102, label %103, label %167

103:                                              ; preds = %101
  %104 = getelementptr inbounds i8, ptr %0, i64 1
  %105 = load i8, ptr %104, align 1, !tbaa !35
  %106 = icmp eq i8 %105, 112
  br i1 %106, label %107, label %167

107:                                              ; preds = %103
  %108 = getelementptr inbounds i8, ptr %0, i64 2
  %109 = load i8, ptr %108, align 1, !tbaa !35
  %110 = sext i8 %109 to i32
  %111 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @cplus_markers, i32 noundef %110) #23
  %112 = icmp eq ptr %111, null
  br i1 %112, label %167, label %113

113:                                              ; preds = %107
  %114 = icmp ugt i32 %8, 9
  br i1 %114, label %115, label %144

115:                                              ; preds = %113
  %116 = getelementptr inbounds i8, ptr %0, i64 3
  %117 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %116, ptr noundef nonnull dereferenceable(7) @.str.22, i64 7)
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %144

119:                                              ; preds = %115
  %120 = add nsw i32 %8, -10
  %121 = getelementptr inbounds i8, ptr %0, i64 10
  %122 = zext nneg i32 %120 to i64
  br label %123

123:                                              ; preds = %119, %141
  %124 = phi i64 [ 0, %119 ], [ %142, %141 ]
  %125 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !49
  %127 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %126) #23
  %128 = trunc i64 %127 to i32
  %129 = icmp eq i32 %120, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %123
  %131 = tail call i32 @bcmp(ptr %126, ptr nonnull %121, i64 %122)
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %135 = getelementptr inbounds i8, ptr %1, i64 %134
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %135, ptr noundef nonnull align 1 dereferenceable(9) @.str.21, i64 9, i1 false)
  %136 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %124, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !51
  %138 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %137) #23
  %139 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %140 = getelementptr inbounds i8, ptr %1, i64 %139
  store i16 61, ptr %140, align 1
  br label %192

141:                                              ; preds = %123, %130
  %142 = add nuw nsw i64 %124, 1
  %143 = icmp eq i64 %142, 79
  br i1 %143, label %192, label %123, !llvm.loop !55

144:                                              ; preds = %115, %113
  %145 = add nsw i32 %8, -3
  %146 = getelementptr inbounds i8, ptr %0, i64 3
  %147 = zext nneg i32 %145 to i64
  br label %148

148:                                              ; preds = %144, %164
  %149 = phi i64 [ 0, %144 ], [ %165, %164 ]
  %150 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !49
  %152 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %151) #23
  %153 = trunc i64 %152 to i32
  %154 = icmp eq i32 %145, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %148
  %156 = tail call i32 @bcmp(ptr %151, ptr nonnull %146, i64 %147)
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %160 = getelementptr inbounds i8, ptr %1, i64 %159
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %160, ptr noundef nonnull align 1 dereferenceable(9) @.str.21, i64 9, i1 false)
  %161 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %149, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !51
  %163 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %162) #23
  br label %192

164:                                              ; preds = %148, %155
  %165 = add nuw nsw i64 %149, 1
  %166 = icmp eq i64 %165, 79
  br i1 %166, label %192, label %148, !llvm.loop !56

167:                                              ; preds = %107, %103, %101
  %168 = icmp ugt i32 %8, 4
  br i1 %168, label %169, label %192

169:                                              ; preds = %167
  %170 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %0, ptr noundef nonnull dereferenceable(4) @.str.24, i64 4)
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %192

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 4
  %174 = load i8, ptr %173, align 1, !tbaa !35
  %175 = sext i8 %174 to i32
  %176 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @cplus_markers, i32 noundef %175) #23
  %177 = icmp eq ptr %176, null
  br i1 %177, label %192, label %178

178:                                              ; preds = %172
  %179 = getelementptr inbounds i8, ptr %0, i64 5
  store ptr %179, ptr %6, align 8, !tbaa !42
  %180 = call fastcc i32 @do_type(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %4) #23, !range !43
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %192, label %182

182:                                              ; preds = %178
  %183 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %184 = getelementptr inbounds i8, ptr %1, i64 %183
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %184, ptr noundef nonnull align 1 dereferenceable(10) @.str.20, i64 10, i1 false)
  %185 = load ptr, ptr %4, align 8, !tbaa !44
  %186 = getelementptr inbounds %struct.string, ptr %4, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !46
  %188 = ptrtoint ptr %187 to i64
  %189 = ptrtoint ptr %185 to i64
  %190 = sub i64 %188, %189
  %191 = tail call ptr @strncat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef %185, i64 noundef %190) #23
  call fastcc void @string_delete(ptr noundef nonnull %4) #23
  br label %192

192:                                              ; preds = %96, %72, %164, %141, %99, %158, %133, %90, %66, %75, %77, %167, %169, %172, %182, %178, %23, %27
  %193 = phi i32 [ 1, %27 ], [ 0, %23 ], [ 0, %77 ], [ 0, %75 ], [ 1, %182 ], [ 0, %178 ], [ 0, %172 ], [ 0, %169 ], [ 0, %167 ], [ 1, %66 ], [ 1, %90 ], [ 1, %133 ], [ 1, %158 ], [ 0, %99 ], [ 0, %141 ], [ 0, %164 ], [ 0, %72 ], [ 0, %96 ]
  call fastcc void @squangle_mop_up(ptr noundef nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  ret i32 %193
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @do_type(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #1 !prof !34 !PGOFuncName !57 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.string, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.string, align 8
  %8 = alloca %struct.string, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call fastcc void @string_init(ptr noundef nonnull %5) #23
  tail call fastcc void @string_init(ptr noundef %2) #23
  %9 = getelementptr inbounds %struct.string, ptr %5, i64 0, i32 1
  %10 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 8
  %11 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 1
  br label %12

12:                                               ; preds = %3, %191
  %13 = phi ptr [ %1, %3 ], [ %194, %191 ]
  %14 = phi i32 [ 0, %3 ], [ %193, %191 ]
  %15 = phi i32 [ 1, %3 ], [ %192, %191 ]
  %16 = load ptr, ptr %13, align 8, !tbaa !42
  %17 = load i8, ptr %16, align 1, !tbaa !35
  switch i8 %17, label %196 [
    i8 80, label %18
    i8 112, label %18
    i8 82, label %26
    i8 65, label %30
    i8 84, label %53
    i8 70, label %66
    i8 77, label %82
    i8 79, label %82
    i8 71, label %170
    i8 67, label %172
    i8 86, label %172
    i8 117, label %172
  ]

18:                                               ; preds = %12, %12
  %19 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %19, ptr %13, align 8, !tbaa !42
  %20 = load i32, ptr %0, align 8, !tbaa !38
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  call fastcc void @string_prepend(ptr noundef nonnull %5, ptr noundef nonnull @.str.58) #23
  br label %24

24:                                               ; preds = %23, %18
  %25 = tail call i32 @llvm.umax.i32(i32 %14, i32 1)
  br label %191

26:                                               ; preds = %12
  %27 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %27, ptr %13, align 8, !tbaa !42
  call fastcc void @string_prepend(ptr noundef nonnull %5, ptr noundef nonnull @.str.56) #23
  %28 = icmp eq i32 %14, 0
  %29 = select i1 %28, i32 2, i32 %14
  br label %191

30:                                               ; preds = %12
  %31 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %31, ptr %13, align 8, !tbaa !42
  %32 = load ptr, ptr %5, align 8, !tbaa !44
  %33 = load ptr, ptr %9, align 8, !tbaa !46
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i8, ptr %32, align 1, !tbaa !35
  switch i8 %36, label %38 [
    i8 42, label %37
    i8 38, label %37
  ]

37:                                               ; preds = %35, %35
  call fastcc void @string_prepend(ptr noundef nonnull %5, ptr noundef nonnull @.str.208) #23
  call fastcc void @string_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.209) #23
  br label %38

38:                                               ; preds = %35, %37, %30
  call fastcc void @string_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.237) #23
  %39 = load ptr, ptr %13, align 8, !tbaa !42
  %40 = load i8, ptr %39, align 1, !tbaa !35
  %41 = icmp eq i8 %40, 95
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = call fastcc i32 @demangle_template_value_parm(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %5, i32 noundef 3) #23
  %44 = load ptr, ptr %13, align 8, !tbaa !42
  %45 = load i8, ptr %44, align 1, !tbaa !35
  %46 = icmp eq i8 %45, 95
  br i1 %46, label %47, label %51

47:                                               ; preds = %38, %42
  %48 = phi i32 [ %43, %42 ], [ %15, %38 ]
  %49 = phi ptr [ %44, %42 ], [ %39, %38 ]
  %50 = getelementptr inbounds i8, ptr %49, i64 1
  store ptr %50, ptr %13, align 8, !tbaa !42
  br label %51

51:                                               ; preds = %47, %42
  %52 = phi i32 [ %48, %47 ], [ %43, %42 ]
  call fastcc void @string_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.238) #23
  br label %191

53:                                               ; preds = %12
  %54 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %54, ptr %13, align 8, !tbaa !42
  %55 = call fastcc i32 @get_count(ptr noundef nonnull %13, ptr noundef nonnull %4) #23, !range !58
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %256, label %57

57:                                               ; preds = %53
  %58 = load i32, ptr %4, align 4, !tbaa !59
  %59 = load i32, ptr %10, align 8, !tbaa !60
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %256

61:                                               ; preds = %57
  %62 = load ptr, ptr %11, align 8, !tbaa !61
  %63 = sext i32 %58 to i64
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !42
  store ptr %65, ptr %6, align 8, !tbaa !42
  br label %191

66:                                               ; preds = %12
  %67 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %67, ptr %13, align 8, !tbaa !42
  %68 = load ptr, ptr %5, align 8, !tbaa !44
  %69 = load ptr, ptr %9, align 8, !tbaa !46
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i8, ptr %68, align 1, !tbaa !35
  switch i8 %72, label %74 [
    i8 42, label %73
    i8 38, label %73
  ]

73:                                               ; preds = %71, %71
  call fastcc void @string_prepend(ptr noundef nonnull %5, ptr noundef nonnull @.str.208) #23
  call fastcc void @string_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.209) #23
  br label %74

74:                                               ; preds = %71, %73, %66
  %75 = call fastcc i32 @demangle_nested_args(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %5) #23, !range !58
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %256, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr %13, align 8, !tbaa !42
  %79 = load i8, ptr %78, align 1, !tbaa !35
  switch i8 %79, label %256 [
    i8 95, label %80
    i8 0, label %191
  ]

80:                                               ; preds = %77
  %81 = getelementptr inbounds i8, ptr %78, i64 1
  store ptr %81, ptr %13, align 8, !tbaa !42
  br label %191

82:                                               ; preds = %12, %12
  %83 = icmp eq i8 %17, 77
  %84 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %84, ptr %13, align 8, !tbaa !42
  call fastcc void @string_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.209) #23
  %85 = load ptr, ptr %13, align 8, !tbaa !42
  %86 = load i8, ptr %85, align 1, !tbaa !35
  %87 = icmp eq i8 %86, 81
  br i1 %87, label %95, label %88

88:                                               ; preds = %82
  %89 = load i32, ptr %0, align 8, !tbaa !38
  %90 = and i32 %89, 4
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, ptr @.str.187, ptr @.str.186
  call fastcc void @string_prepend(ptr noundef nonnull %5, ptr noundef nonnull %92) #23
  %93 = load ptr, ptr %13, align 8, !tbaa !42
  %94 = load i8, ptr %93, align 1, !tbaa !35
  br label %95

95:                                               ; preds = %88, %82
  %96 = phi i8 [ %94, %88 ], [ 81, %82 ]
  %97 = zext i8 %96 to i64
  %98 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %97
  %99 = load i16, ptr %98, align 2, !tbaa !47
  %100 = and i16 %99, 4
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %95
  %103 = call fastcc i32 @consume_count(ptr noundef nonnull %13) #23
  store i32 %103, ptr %4, align 4, !tbaa !59
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %256, label %105

105:                                              ; preds = %102
  %106 = load ptr, ptr %13, align 8, !tbaa !42
  %107 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %106) #23
  %108 = trunc i64 %107 to i32
  %109 = icmp sgt i32 %103, %108
  br i1 %109, label %256, label %110

110:                                              ; preds = %105
  call fastcc void @string_prependn(ptr noundef nonnull %5, ptr noundef %106, i32 noundef %103) #23
  %111 = load ptr, ptr %13, align 8, !tbaa !42
  %112 = sext i32 %103 to i64
  %113 = getelementptr inbounds i8, ptr %111, i64 %112
  store ptr %113, ptr %13, align 8, !tbaa !42
  br label %132

114:                                              ; preds = %95
  switch i8 %96, label %256 [
    i8 88, label %115
    i8 89, label %115
    i8 116, label %117
    i8 81, label %129
  ]

115:                                              ; preds = %114, %114
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #22
  %116 = call fastcc i32 @do_type(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %7) #23, !range !43
  call fastcc void @string_prepends(ptr noundef nonnull %5, ptr noundef nonnull %7) #23
  call fastcc void @string_delete(ptr noundef nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  br label %132

117:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #22
  call fastcc void @string_init(ptr noundef nonnull %8) #23
  %118 = call fastcc i32 @demangle_template(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %8, ptr noundef null, i32 noundef 1, i32 noundef 1) #23
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %128, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.string, ptr %8, i64 0, i32 1
  %122 = load ptr, ptr %8, align 8, !tbaa !44
  %123 = load ptr, ptr %121, align 8, !tbaa !46
  %124 = ptrtoint ptr %123 to i64
  %125 = ptrtoint ptr %122 to i64
  %126 = sub i64 %124, %125
  %127 = trunc i64 %126 to i32
  call fastcc void @string_prependn(ptr noundef nonnull %5, ptr noundef %122, i32 noundef %127) #23
  call fastcc void @string_delete(ptr noundef nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #22
  br label %132

128:                                              ; preds = %117
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #22
  br label %256

129:                                              ; preds = %114
  %130 = call fastcc i32 @demangle_qualified(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0) #23
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %256, label %132

132:                                              ; preds = %120, %115, %129, %110
  %133 = phi i32 [ %15, %110 ], [ %15, %115 ], [ %130, %129 ], [ %118, %120 ]
  call fastcc void @string_prepend(ptr noundef nonnull %5, ptr noundef nonnull @.str.208) #23
  br i1 %83, label %134, label %151

134:                                              ; preds = %132
  %135 = load ptr, ptr %13, align 8, !tbaa !42
  %136 = load i8, ptr %135, align 1, !tbaa !35
  switch i8 %136, label %142 [
    i8 67, label %137
    i8 86, label %137
    i8 117, label %137
  ]

137:                                              ; preds = %134, %134, %134
  %138 = zext nneg i8 %136 to i32
  %139 = tail call fastcc i32 @code_for_qualifier(i32 noundef %138) #23, !range !62
  %140 = load ptr, ptr %13, align 8, !tbaa !42
  %141 = getelementptr inbounds i8, ptr %140, i64 1
  br label %142

142:                                              ; preds = %134, %137
  %143 = phi ptr [ %135, %134 ], [ %141, %137 ]
  %144 = phi i32 [ 0, %134 ], [ %139, %137 ]
  %145 = getelementptr inbounds i8, ptr %143, i64 1
  store ptr %145, ptr %13, align 8, !tbaa !42
  %146 = load i8, ptr %143, align 1, !tbaa !35
  %147 = icmp eq i8 %146, 70
  br i1 %147, label %148, label %256

148:                                              ; preds = %142
  %149 = call fastcc i32 @demangle_nested_args(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %5) #23, !range !58
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %256, label %151

151:                                              ; preds = %132, %148
  %152 = phi i32 [ %144, %148 ], [ 0, %132 ]
  %153 = load ptr, ptr %13, align 8, !tbaa !42
  %154 = load i8, ptr %153, align 1, !tbaa !35
  %155 = icmp eq i8 %154, 95
  br i1 %155, label %156, label %256

156:                                              ; preds = %151
  %157 = getelementptr inbounds i8, ptr %153, i64 1
  store ptr %157, ptr %13, align 8, !tbaa !42
  %158 = load i32, ptr %0, align 8, !tbaa !38
  %159 = and i32 %158, 2
  %160 = icmp ne i32 %159, 0
  %161 = icmp ne i32 %152, 0
  %162 = and i1 %161, %160
  br i1 %162, label %163, label %191

163:                                              ; preds = %156
  %164 = load ptr, ptr %5, align 8, !tbaa !44
  %165 = load ptr, ptr %9, align 8, !tbaa !46
  %166 = icmp eq ptr %164, %165
  br i1 %166, label %168, label %167

167:                                              ; preds = %163
  call fastcc void @string_append(ptr noundef nonnull %5, ptr noundef nonnull @.str.198) #23
  br label %168

168:                                              ; preds = %167, %163
  %169 = tail call fastcc ptr @qualifier_string(i32 noundef %152) #23
  call fastcc void @string_append(ptr noundef nonnull %5, ptr noundef nonnull %169) #23
  br label %191

170:                                              ; preds = %12
  %171 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %171, ptr %13, align 8, !tbaa !42
  br label %191

172:                                              ; preds = %12, %12, %12
  %173 = load i32, ptr %0, align 8, !tbaa !38
  %174 = and i32 %173, 2
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %188, label %176

176:                                              ; preds = %172
  %177 = load ptr, ptr %5, align 8, !tbaa !44
  %178 = load ptr, ptr %9, align 8, !tbaa !46
  %179 = icmp eq ptr %177, %178
  br i1 %179, label %183, label %180

180:                                              ; preds = %176
  call fastcc void @string_prepend(ptr noundef nonnull %5, ptr noundef nonnull @.str.198) #23
  %181 = load ptr, ptr %13, align 8, !tbaa !42
  %182 = load i8, ptr %181, align 1, !tbaa !35
  br label %183

183:                                              ; preds = %180, %176
  %184 = phi i8 [ %182, %180 ], [ %17, %176 ]
  %185 = sext i8 %184 to i32
  %186 = tail call fastcc ptr @demangle_qualifier(i32 noundef %185) #23
  call fastcc void @string_prepend(ptr noundef nonnull %5, ptr noundef nonnull %186) #23
  %187 = load ptr, ptr %13, align 8, !tbaa !42
  br label %188

188:                                              ; preds = %183, %172
  %189 = phi ptr [ %187, %183 ], [ %16, %172 ]
  %190 = getelementptr inbounds i8, ptr %189, i64 1
  store ptr %190, ptr %13, align 8, !tbaa !42
  br label %191

191:                                              ; preds = %77, %168, %156, %80, %61, %188, %170, %51, %26, %24
  %192 = phi i32 [ %15, %188 ], [ %15, %170 ], [ %133, %168 ], [ %133, %156 ], [ %15, %80 ], [ %15, %61 ], [ %52, %51 ], [ %15, %26 ], [ %15, %24 ], [ %15, %77 ]
  %193 = phi i32 [ %14, %188 ], [ %14, %170 ], [ %14, %168 ], [ %14, %156 ], [ %14, %80 ], [ %14, %61 ], [ %14, %51 ], [ %29, %26 ], [ %25, %24 ], [ %14, %77 ]
  %194 = phi ptr [ %13, %188 ], [ %13, %170 ], [ %13, %168 ], [ %13, %156 ], [ %13, %80 ], [ %6, %61 ], [ %13, %51 ], [ %13, %26 ], [ %13, %24 ], [ %13, %77 ]
  %195 = icmp eq i32 %192, 0
  br i1 %195, label %256, label %12, !llvm.loop !63

196:                                              ; preds = %12
  %197 = load ptr, ptr %13, align 8, !tbaa !42
  %198 = load i8, ptr %197, align 1, !tbaa !35
  switch i8 %198, label %239 [
    i8 81, label %199
    i8 75, label %199
    i8 66, label %201
    i8 88, label %216
    i8 89, label %216
  ]

199:                                              ; preds = %196, %196
  %200 = call fastcc i32 @demangle_qualified(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %2, i32 noundef 0, i32 noundef 1) #23
  br label %243

201:                                              ; preds = %196
  %202 = getelementptr inbounds i8, ptr %197, i64 1
  store ptr %202, ptr %13, align 8, !tbaa !42
  %203 = call fastcc i32 @get_count(ptr noundef nonnull %13, ptr noundef nonnull %4) #23, !range !58
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %256, label %205

205:                                              ; preds = %201
  %206 = load i32, ptr %4, align 4, !tbaa !59
  %207 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 5
  %208 = load i32, ptr %207, align 4, !tbaa !64
  %209 = icmp slt i32 %206, %208
  br i1 %209, label %210, label %256

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 3
  %212 = load ptr, ptr %211, align 8, !tbaa !65
  %213 = sext i32 %206 to i64
  %214 = getelementptr inbounds ptr, ptr %212, i64 %213
  %215 = load ptr, ptr %214, align 8, !tbaa !42
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef %215) #23
  br label %247

216:                                              ; preds = %196, %196
  %217 = getelementptr inbounds i8, ptr %197, i64 1
  store ptr %217, ptr %13, align 8, !tbaa !42
  %218 = call fastcc i32 @consume_count_with_underscores(ptr noundef nonnull %13) #23
  %219 = icmp eq i32 %218, -1
  br i1 %219, label %256, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 16
  %222 = load ptr, ptr %221, align 8, !tbaa !66
  %223 = icmp eq ptr %222, null
  br i1 %223, label %228, label %224

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 17
  %226 = load i32, ptr %225, align 8, !tbaa !67
  %227 = icmp slt i32 %218, %226
  br i1 %227, label %228, label %256

228:                                              ; preds = %224, %220
  %229 = call fastcc i32 @consume_count_with_underscores(ptr noundef nonnull %13) #23
  %230 = icmp eq i32 %229, -1
  br i1 %230, label %256, label %231

231:                                              ; preds = %228
  %232 = load ptr, ptr %221, align 8, !tbaa !66
  %233 = icmp eq ptr %232, null
  br i1 %233, label %238, label %234

234:                                              ; preds = %231
  %235 = sext i32 %218 to i64
  %236 = getelementptr inbounds ptr, ptr %232, i64 %235
  %237 = load ptr, ptr %236, align 8, !tbaa !42
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef %237) #23
  br label %247

238:                                              ; preds = %231
  tail call fastcc void @string_append_template_idx(ptr noundef %2, i32 noundef %218) #23
  br label %247

239:                                              ; preds = %196
  %240 = call fastcc i32 @demangle_fund_type(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %2) #23, !range !43
  %241 = icmp eq i32 %14, 0
  %242 = select i1 %241, i32 %240, i32 %14
  br label %243

243:                                              ; preds = %239, %199
  %244 = phi i32 [ %200, %199 ], [ %240, %239 ]
  %245 = phi i32 [ %14, %199 ], [ %242, %239 ]
  %246 = icmp eq i32 %244, 0
  br i1 %246, label %256, label %247

247:                                              ; preds = %234, %238, %210, %243
  %248 = phi i32 [ %245, %243 ], [ %14, %210 ], [ %14, %238 ], [ %14, %234 ]
  %249 = load ptr, ptr %5, align 8, !tbaa !44
  %250 = load ptr, ptr %9, align 8, !tbaa !46
  %251 = icmp eq ptr %249, %250
  br i1 %251, label %253, label %252

252:                                              ; preds = %247
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.198) #23
  call fastcc void @string_appends(ptr noundef %2, ptr noundef nonnull %5) #23
  br label %253

253:                                              ; preds = %247, %252
  call fastcc void @string_delete(ptr noundef nonnull %5) #23
  %254 = icmp eq i32 %248, 0
  %255 = select i1 %254, i32 3, i32 %248
  br label %257

256:                                              ; preds = %129, %57, %53, %77, %74, %105, %102, %114, %142, %151, %148, %191, %128, %216, %224, %228, %201, %205, %243
  tail call fastcc void @string_delete(ptr noundef %2) #23
  call fastcc void @string_delete(ptr noundef nonnull %5) #23
  br label %257

257:                                              ; preds = %253, %256
  %258 = phi i32 [ 0, %256 ], [ %255, %253 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret i32 %258
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @string_delete(ptr nocapture noundef %0) unnamed_addr #6 !prof !34 !PGOFuncName !68 {
  %2 = load ptr, ptr %0, align 8, !tbaa !44
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @squangle_mop_up(ptr nocapture noundef %0) unnamed_addr #1 !prof !34 !PGOFuncName !69 {
  tail call fastcc void @forget_B_and_K_types(ptr noundef %0) #23
  %2 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %3) #23
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @free(ptr noundef nonnull %8) #23
  br label %11

11:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @cplus_mangle_opname(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 !prof !34 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %4 = trunc i64 %3 to i32
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  br label %7

7:                                                ; preds = %2, %26
  %8 = phi i64 [ 0, %2 ], [ %27, %26 ]
  %9 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %8, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #23
  %12 = trunc i64 %11 to i32
  %13 = icmp eq i32 %12, %4
  br i1 %13, label %14, label %26

14:                                               ; preds = %7
  %15 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %8, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !71
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
  %25 = load ptr, ptr %24, align 8, !tbaa !49
  br label %29

26:                                               ; preds = %7, %14, %20
  %27 = add nuw nsw i64 %8, 1
  %28 = icmp eq i64 %27, 79
  br i1 %28, label %29, label %7, !llvm.loop !72

29:                                               ; preds = %26, %23
  %30 = phi ptr [ %25, %23 ], [ null, %26 ]
  ret ptr %30
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @cplus_demangle_set_style(i32 noundef %0) local_unnamed_addr #8 !prof !34 {
  br label %7

2:                                                ; preds = %7
  %3 = getelementptr inbounds %struct.demangler_engine, ptr %9, i64 1
  %4 = getelementptr inbounds %struct.demangler_engine, ptr %9, i64 1, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !73
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7, !llvm.loop !75

7:                                                ; preds = %1, %2
  %8 = phi i32 [ -1, %1 ], [ %5, %2 ]
  %9 = phi ptr [ @libiberty_demanglers, %1 ], [ %3, %2 ]
  %10 = icmp eq i32 %8, %0
  br i1 %10, label %11, label %2

11:                                               ; preds = %7
  store i32 %0, ptr @current_demangling_style, align 4, !tbaa !59
  br label %12

12:                                               ; preds = %2, %11
  %13 = phi i32 [ %0, %11 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @cplus_demangle_name_to_style(ptr nocapture noundef readonly %0) local_unnamed_addr #7 !prof !34 {
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str) #23
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %9
  %5 = phi ptr [ %10, %9 ], [ @libiberty_demanglers, %1 ]
  %6 = getelementptr inbounds %struct.demangler_engine, ptr %5, i64 1, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !73
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !llvm.loop !76

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.demangler_engine, ptr %5, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %11) #23
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %4, !llvm.loop !76

14:                                               ; preds = %9, %4, %1
  %15 = phi i32 [ -1, %1 ], [ %7, %9 ], [ 0, %4 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cplus_demangle(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !prof !34 {
  %3 = alloca [1 x %struct.work_stuff], align 16
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %3) #22
  %4 = load i32, ptr @current_demangling_style, align 4, !tbaa !59
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @xstrdup(ptr noundef %0) #24
  br label %35

8:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %3, i8 0, i64 112, i1 false)
  %9 = and i32 %1, 65284
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %4, 65284
  %12 = select i1 %10, i32 %11, i32 0
  %13 = or disjoint i32 %12, %1
  store i32 %13, ptr %3, align 16, !tbaa !38
  %14 = and i32 %13, 16640
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %8
  %17 = tail call ptr @cplus_demangle_v3(ptr noundef %0, i32 noundef %13) #24
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = and i32 %13, 16384
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %8, %19
  %23 = and i32 %13, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = tail call ptr @java_demangle_v3(ptr noundef %0) #24
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25, %22
  %29 = and i32 %13, 32768
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = tail call ptr @ada_demangle(ptr noundef %0, i32 poison) #23
  br label %35

33:                                               ; preds = %28
  %34 = call fastcc ptr @internal_cplus_demangle(ptr noundef nonnull %3, ptr noundef %0) #23
  call fastcc void @squangle_mop_up(ptr noundef nonnull %3) #23
  br label %35

35:                                               ; preds = %25, %16, %19, %33, %31, %6
  %36 = phi ptr [ %7, %6 ], [ %32, %31 ], [ %34, %33 ], [ null, %19 ], [ %17, %16 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #22
  ret ptr %36
}

; Function Attrs: optsize
declare ptr @xstrdup(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @cplus_demangle_v3(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @java_demangle_v3(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ada_demangle(ptr noundef %0, i32 %1) local_unnamed_addr #1 !prof !34 {
  %3 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.25, i64 noundef 5) #23
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i64 5, i64 0
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !35
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !47
  %11 = and i16 %10, 8
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %203, label %13

13:                                               ; preds = %2
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #23
  %15 = shl i64 %14, 32
  %16 = add i64 %15, 12884901888
  %17 = ashr exact i64 %16, 32
  %18 = tail call ptr @xmalloc(i64 noundef %17) #24
  br label %19

19:                                               ; preds = %124, %13
  %20 = phi ptr [ %6, %13 ], [ %126, %124 ]
  %21 = phi ptr [ %18, %13 ], [ %127, %124 ]
  %22 = load i8, ptr %20, align 1, !tbaa !35
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !47
  %26 = and i16 %25, 8
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %19, %40
  %29 = phi i8 [ %34, %40 ], [ %22, %19 ]
  %30 = phi ptr [ %32, %40 ], [ %20, %19 ]
  %31 = phi ptr [ %33, %40 ], [ %21, %19 ]
  %32 = getelementptr inbounds i8, ptr %30, i64 1
  %33 = getelementptr inbounds i8, ptr %31, i64 1
  store i8 %29, ptr %31, align 1, !tbaa !35
  %34 = load i8, ptr %32, align 1, !tbaa !35
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %35
  %37 = load i16, ptr %36, align 2, !tbaa !47
  %38 = and i16 %37, 12
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %28, %43
  br label %28, !llvm.loop !78

41:                                               ; preds = %28
  %42 = icmp eq i8 %34, 95
  br i1 %42, label %43, label %144

43:                                               ; preds = %41
  %44 = getelementptr inbounds i8, ptr %30, i64 2
  %45 = load i8, ptr %44, align 1, !tbaa !35
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %46
  %48 = load i16, ptr %47, align 2, !tbaa !47
  %49 = and i16 %48, 12
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %78, label %40

51:                                               ; preds = %19
  %52 = icmp eq i8 %22, 79
  br i1 %52, label %58, label %203

53:                                               ; preds = %58
  %54 = add nuw nsw i64 %59, 1
  %55 = getelementptr inbounds [20 x [2 x ptr]], ptr @ada_demangle.operators, i64 0, i64 %54
  %56 = load ptr, ptr %55, align 16, !tbaa !42
  %57 = icmp eq i64 %54, 19
  br i1 %57, label %203, label %58, !llvm.loop !79

58:                                               ; preds = %51, %53
  %59 = phi i64 [ %54, %53 ], [ 0, %51 ]
  %60 = phi ptr [ %56, %53 ], [ @.str.26, %51 ]
  %61 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %60) #23
  %62 = shl i64 %61, 32
  %63 = ashr exact i64 %62, 32
  %64 = tail call i32 @strncmp(ptr noundef nonnull %20, ptr noundef nonnull %60, i64 noundef %63) #23
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %53

66:                                               ; preds = %58
  %67 = getelementptr inbounds i8, ptr %20, i64 %63
  %68 = getelementptr inbounds [20 x [2 x ptr]], ptr @ada_demangle.operators, i64 0, i64 %59, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !42
  %70 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %69) #23
  %71 = getelementptr inbounds i8, ptr %21, i64 1
  store i8 34, ptr %21, align 1, !tbaa !35
  %72 = shl i64 %70, 32
  %73 = ashr exact i64 %72, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %71, ptr align 1 %69, i64 %73, i1 false)
  %74 = getelementptr inbounds i8, ptr %71, i64 %73
  %75 = getelementptr inbounds i8, ptr %74, i64 1
  store i8 34, ptr %74, align 1, !tbaa !35
  %76 = load i8, ptr %67, align 1, !tbaa !35
  %77 = icmp eq i8 %76, 95
  br i1 %77, label %78, label %144

78:                                               ; preds = %43, %66
  %79 = phi ptr [ %75, %66 ], [ %33, %43 ]
  %80 = phi ptr [ %67, %66 ], [ %32, %43 ]
  %81 = getelementptr inbounds i8, ptr %80, i64 1
  %82 = load i8, ptr %81, align 1, !tbaa !35
  switch i8 %82, label %203 [
    i8 95, label %83
    i8 66, label %128
    i8 69, label %128
  ]

83:                                               ; preds = %78
  %84 = getelementptr inbounds i8, ptr %80, i64 2
  %85 = load i8, ptr %84, align 1, !tbaa !35
  %86 = zext i8 %85 to i64
  %87 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %86
  %88 = load i16, ptr %87, align 2, !tbaa !47
  %89 = and i16 %88, 4
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %111, label %91

91:                                               ; preds = %83, %110
  %92 = phi ptr [ %93, %110 ], [ %84, %83 ]
  %93 = getelementptr inbounds i8, ptr %92, i64 1
  %94 = load i8, ptr %93, align 1, !tbaa !35
  %95 = zext i8 %94 to i64
  %96 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %95
  %97 = load i16, ptr %96, align 2, !tbaa !47
  %98 = and i16 %97, 4
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %91
  %101 = icmp eq i8 %94, 95
  br i1 %101, label %102, label %144

102:                                              ; preds = %100
  %103 = getelementptr inbounds i8, ptr %92, i64 2
  %104 = load i8, ptr %103, align 1, !tbaa !35
  %105 = zext i8 %104 to i64
  %106 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %105
  %107 = load i16, ptr %106, align 2, !tbaa !47
  %108 = and i16 %107, 4
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %203, label %110

110:                                              ; preds = %102, %91
  br label %91, !llvm.loop !80

111:                                              ; preds = %83
  %112 = icmp eq i8 %85, 95
  br i1 %112, label %113, label %124

113:                                              ; preds = %111
  %114 = getelementptr inbounds i8, ptr %80, i64 3
  %115 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %114, ptr noundef nonnull dereferenceable(6) @.str.63) #23
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %79, ptr noundef nonnull align 1 dereferenceable(10) @.str.64, i64 10, i1 false)
  %118 = getelementptr inbounds i8, ptr %79, i64 10
  br label %201

119:                                              ; preds = %113
  %120 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %114, ptr noundef nonnull dereferenceable(6) @.str.65) #23
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %79, ptr noundef nonnull align 1 dereferenceable(10) @.str.66, i64 10, i1 false)
  %123 = getelementptr inbounds i8, ptr %79, i64 10
  br label %201

124:                                              ; preds = %119, %111, %163
  %125 = phi ptr [ %145, %163 ], [ %79, %111 ], [ %79, %119 ]
  %126 = phi ptr [ %164, %163 ], [ %84, %111 ], [ %84, %119 ]
  %127 = getelementptr inbounds i8, ptr %125, i64 1
  store i8 46, ptr %125, align 1, !tbaa !35
  br label %19

128:                                              ; preds = %78, %78
  %129 = getelementptr inbounds i8, ptr %80, i64 2
  br label %130

130:                                              ; preds = %130, %128
  %131 = phi ptr [ %129, %128 ], [ %138, %130 ]
  %132 = load i8, ptr %131, align 1, !tbaa !35
  %133 = zext i8 %132 to i64
  %134 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %133
  %135 = load i16, ptr %134, align 2, !tbaa !47
  %136 = and i16 %135, 4
  %137 = icmp eq i16 %136, 0
  %138 = getelementptr inbounds i8, ptr %131, i64 1
  br i1 %137, label %139, label %130, !llvm.loop !81

139:                                              ; preds = %130
  %140 = icmp eq i8 %132, 115
  br i1 %140, label %141, label %203

141:                                              ; preds = %139
  %142 = load i8, ptr %138, align 1, !tbaa !35
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %201, label %203

144:                                              ; preds = %41, %100, %66
  %145 = phi ptr [ %75, %66 ], [ %79, %100 ], [ %33, %41 ]
  %146 = phi i8 [ %76, %66 ], [ %94, %100 ], [ %34, %41 ]
  %147 = phi ptr [ %67, %66 ], [ %93, %100 ], [ %32, %41 ]
  switch i8 %146, label %175 [
    i8 84, label %148
    i8 80, label %165
    i8 78, label %165
    i8 69, label %203
    i8 83, label %203
    i8 88, label %169
  ]

148:                                              ; preds = %144
  %149 = getelementptr inbounds i8, ptr %147, i64 1
  %150 = load i8, ptr %149, align 1, !tbaa !35
  %151 = icmp eq i8 %150, 75
  br i1 %151, label %152, label %203

152:                                              ; preds = %148
  %153 = getelementptr inbounds i8, ptr %147, i64 2
  %154 = load i8, ptr %153, align 1, !tbaa !35
  switch i8 %154, label %203 [
    i8 66, label %155
    i8 95, label %159
  ]

155:                                              ; preds = %152
  %156 = getelementptr inbounds i8, ptr %147, i64 3
  %157 = load i8, ptr %156, align 1, !tbaa !35
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %201, label %203

159:                                              ; preds = %152
  %160 = getelementptr inbounds i8, ptr %147, i64 3
  %161 = load i8, ptr %160, align 1, !tbaa !35
  %162 = icmp eq i8 %161, 95
  br i1 %162, label %163, label %203

163:                                              ; preds = %159
  %164 = getelementptr inbounds i8, ptr %147, i64 4
  br label %124

165:                                              ; preds = %144, %144
  %166 = getelementptr inbounds i8, ptr %147, i64 1
  %167 = load i8, ptr %166, align 1, !tbaa !35
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %201, label %203

169:                                              ; preds = %144
  %170 = getelementptr inbounds i8, ptr %147, i64 1
  %171 = load i8, ptr %170, align 1, !tbaa !35
  switch i8 %171, label %203 [
    i8 110, label %172
    i8 98, label %172
    i8 0, label %201
  ]

172:                                              ; preds = %169, %169
  %173 = getelementptr inbounds i8, ptr %147, i64 2
  %174 = load i8, ptr %173, align 1, !tbaa !35
  br label %175

175:                                              ; preds = %144, %172
  %176 = phi i8 [ %174, %172 ], [ %146, %144 ]
  %177 = phi ptr [ %173, %172 ], [ %147, %144 ]
  %178 = icmp eq i8 %176, 46
  br i1 %178, label %179, label %198

179:                                              ; preds = %175
  %180 = getelementptr inbounds i8, ptr %177, i64 1
  %181 = load i8, ptr %180, align 1, !tbaa !35
  %182 = zext i8 %181 to i64
  %183 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %182
  %184 = load i16, ptr %183, align 2, !tbaa !47
  %185 = and i16 %184, 4
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %203, label %187

187:                                              ; preds = %179
  %188 = getelementptr inbounds i8, ptr %177, i64 2
  br label %189

189:                                              ; preds = %189, %187
  %190 = phi ptr [ %188, %187 ], [ %197, %189 ]
  %191 = load i8, ptr %190, align 1, !tbaa !35
  %192 = zext i8 %191 to i64
  %193 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %192
  %194 = load i16, ptr %193, align 2, !tbaa !47
  %195 = and i16 %194, 4
  %196 = icmp eq i16 %195, 0
  %197 = getelementptr inbounds i8, ptr %190, i64 1
  br i1 %196, label %198, label %189, !llvm.loop !82

198:                                              ; preds = %189, %175
  %199 = phi i8 [ %176, %175 ], [ %191, %189 ]
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %169, %198, %165, %155, %141, %122, %117
  %202 = phi ptr [ %145, %155 ], [ %145, %165 ], [ %145, %198 ], [ %123, %122 ], [ %118, %117 ], [ %79, %141 ], [ %145, %169 ]
  store i8 0, ptr %202, align 1, !tbaa !35
  br label %215

203:                                              ; preds = %148, %144, %144, %152, %78, %159, %51, %53, %102, %165, %169, %179, %155, %198, %139, %141, %2
  %204 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #23
  %205 = shl i64 %204, 32
  %206 = add i64 %205, 12884901888
  %207 = ashr exact i64 %206, 32
  %208 = tail call ptr @xmalloc(i64 noundef %207) #24
  %209 = load i8, ptr %6, align 1, !tbaa !35
  %210 = icmp eq i8 %209, 60
  br i1 %210, label %211, label %213

211:                                              ; preds = %203
  %212 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %208, ptr noundef nonnull dereferenceable(1) %6) #23
  br label %215

213:                                              ; preds = %203
  %214 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %208, ptr noundef nonnull dereferenceable(1) @.str.67, ptr noundef nonnull %6) #23
  br label %215

215:                                              ; preds = %211, %213, %201
  %216 = phi ptr [ %18, %201 ], [ %208, %213 ], [ %208, %211 ]
  ret ptr %216
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @internal_cplus_demangle(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 !prof !34 !PGOFuncName !83 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.string, align 8
  store ptr %1, ptr %3, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 10
  %6 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 11
  %7 = load <2 x i32>, ptr %5, align 8, !tbaa !59
  %8 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 12
  %9 = load i32, ptr %8, align 8, !tbaa !84
  %10 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 14
  %11 = load i32, ptr %10, align 8, !tbaa !85
  store i32 0, ptr %6, align 4, !tbaa !86
  store i32 0, ptr %5, align 8, !tbaa !87
  store i32 0, ptr %10, align 8, !tbaa !85
  %12 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 15
  store i32 0, ptr %12, align 4, !tbaa !88
  %13 = icmp eq ptr %1, null
  br i1 %13, label %49, label %14

14:                                               ; preds = %2
  %15 = load i8, ptr %1, align 1, !tbaa !35
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %49, label %17

17:                                               ; preds = %14
  call fastcc void @string_init(ptr noundef nonnull %4) #23
  %18 = load i32, ptr %0, align 8, !tbaa !38
  %19 = and i32 %18, 768
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = call fastcc i32 @gnu_special(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17, %21
  %25 = call fastcc i32 @demangle_prefix(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %21, %24
  %28 = phi i32 [ %25, %24 ], [ %22, %21 ]
  %29 = load ptr, ptr %3, align 8, !tbaa !42
  %30 = load i8, ptr %29, align 1, !tbaa !35
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = call fastcc i32 @demangle_signature(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  br label %34

34:                                               ; preds = %32, %27, %24
  %35 = phi i32 [ %33, %32 ], [ %28, %27 ], [ 0, %24 ]
  %36 = load i32, ptr %5, align 8, !tbaa !87
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  call fastcc void @string_prepend(ptr noundef nonnull %4, ptr noundef nonnull @.str.183) #23
  store i32 0, ptr %5, align 8, !tbaa !87
  br label %47

39:                                               ; preds = %34
  %40 = load i32, ptr %6, align 4, !tbaa !86
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  call fastcc void @string_prepend(ptr noundef nonnull %4, ptr noundef nonnull @.str.184) #23
  store i32 0, ptr %6, align 4, !tbaa !86
  br label %47

43:                                               ; preds = %39
  %44 = load i32, ptr %12, align 4, !tbaa !88
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  call fastcc void @string_prepend(ptr noundef nonnull %4, ptr noundef nonnull @.str.185) #23
  store i32 0, ptr %12, align 4, !tbaa !88
  br label %47

47:                                               ; preds = %42, %46, %43, %38
  %48 = call fastcc ptr @mop_up(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %35) #23
  br label %49

49:                                               ; preds = %47, %14, %2
  %50 = phi ptr [ %48, %47 ], [ null, %14 ], [ null, %2 ]
  store <2 x i32> %7, ptr %5, align 8, !tbaa !59
  store i32 %9, ptr %8, align 8, !tbaa !84
  store i32 %11, ptr %10, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  ret ptr %50
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @string_init(ptr nocapture noundef writeonly %0) unnamed_addr #12 !prof !34 !PGOFuncName !89 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gnu_special(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #1 !prof !34 !PGOFuncName !90 {
  %4 = alloca [50 x i8], align 16
  %5 = load ptr, ptr %1, align 8, !tbaa !42
  %6 = load i8, ptr %5, align 1, !tbaa !35
  %7 = icmp eq i8 %6, 95
  br i1 %7, label %8, label %175

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %5, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !35
  %11 = sext i8 %10 to i32
  %12 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @cplus_markers, i32 noundef %11) #23
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds i8, ptr %5, i64 2
  %16 = load i8, ptr %15, align 1, !tbaa !35
  %17 = icmp eq i8 %16, 95
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %5, i64 3
  store ptr %19, ptr %1, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 11
  %21 = load i32, ptr %20, align 4, !tbaa !86
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 4, !tbaa !86
  br label %220

23:                                               ; preds = %14, %8
  switch i8 %10, label %106 [
    i8 95, label %24
    i8 118, label %36
  ]

24:                                               ; preds = %23
  %25 = getelementptr inbounds i8, ptr %5, i64 2
  %26 = load i8, ptr %25, align 1, !tbaa !35
  %27 = icmp eq i8 %26, 118
  br i1 %27, label %28, label %106

28:                                               ; preds = %24
  %29 = getelementptr inbounds i8, ptr %5, i64 3
  %30 = load i8, ptr %29, align 1, !tbaa !35
  %31 = icmp eq i8 %30, 116
  br i1 %31, label %32, label %106

32:                                               ; preds = %28
  %33 = getelementptr inbounds i8, ptr %5, i64 4
  %34 = load i8, ptr %33, align 1, !tbaa !35
  %35 = icmp eq i8 %34, 95
  br i1 %35, label %46, label %106

36:                                               ; preds = %23
  %37 = getelementptr inbounds i8, ptr %5, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !35
  %39 = icmp eq i8 %38, 116
  br i1 %39, label %40, label %106

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, ptr %5, i64 3
  %42 = load i8, ptr %41, align 1, !tbaa !35
  %43 = sext i8 %42 to i32
  %44 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @cplus_markers, i32 noundef %43) #23
  %45 = icmp eq ptr %44, null
  br i1 %45, label %106, label %46

46:                                               ; preds = %40, %32
  %47 = phi i64 [ 4, %40 ], [ 5, %32 ]
  %48 = getelementptr inbounds i8, ptr %5, i64 %47
  br label %49

49:                                               ; preds = %46, %98
  %50 = phi ptr [ %104, %98 ], [ %48, %46 ]
  %51 = phi i32 [ %93, %98 ], [ 1, %46 ]
  store ptr %50, ptr %1, align 8, !tbaa !42
  br label %52

52:                                               ; preds = %49, %97
  %53 = phi ptr [ %92, %97 ], [ %50, %49 ]
  %54 = phi i32 [ %93, %97 ], [ %51, %49 ]
  %55 = load i8, ptr %53, align 1, !tbaa !35
  switch i8 %55, label %60 [
    i8 0, label %105
    i8 81, label %56
    i8 75, label %56
    i8 116, label %58
  ]

56:                                               ; preds = %52, %52
  %57 = tail call fastcc i32 @demangle_qualified(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 0, i32 noundef 1) #23
  br label %85

58:                                               ; preds = %52
  %59 = tail call fastcc i32 @demangle_template(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef null, i32 noundef 1, i32 noundef 1) #23
  br label %85

60:                                               ; preds = %52
  %61 = zext i8 %55 to i64
  %62 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %61
  %63 = load i16, ptr %62, align 2, !tbaa !47
  %64 = and i16 %63, 4
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = tail call fastcc i32 @consume_count(ptr noundef nonnull %1) #23
  %68 = load ptr, ptr %1, align 8, !tbaa !42
  %69 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %68) #23
  %70 = trunc i64 %69 to i32
  %71 = icmp sgt i32 %67, %70
  br i1 %71, label %81, label %75

72:                                               ; preds = %60
  %73 = tail call i64 @strcspn(ptr noundef nonnull %53, ptr noundef nonnull @cplus_markers) #23
  %74 = trunc i64 %73 to i32
  br label %75

75:                                               ; preds = %66, %72
  %76 = phi ptr [ %68, %66 ], [ %53, %72 ]
  %77 = phi i32 [ %67, %66 ], [ %74, %72 ]
  tail call fastcc void @string_appendn(ptr noundef %2, ptr noundef %76, i32 noundef %77) #23
  %78 = load ptr, ptr %1, align 8, !tbaa !42
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, ptr %78, i64 %79
  store ptr %80, ptr %1, align 8, !tbaa !42
  br label %81

81:                                               ; preds = %75, %66
  %82 = phi ptr [ %68, %66 ], [ %80, %75 ]
  %83 = phi i32 [ 1, %66 ], [ %54, %75 ]
  %84 = tail call ptr @strpbrk(ptr noundef %82, ptr noundef nonnull @cplus_markers) #23
  br label %90

85:                                               ; preds = %58, %56
  %86 = phi i32 [ %59, %58 ], [ %57, %56 ]
  %87 = load ptr, ptr %1, align 8, !tbaa !42
  %88 = tail call ptr @strpbrk(ptr noundef %87, ptr noundef nonnull @cplus_markers) #23
  %89 = icmp eq i32 %86, 0
  br i1 %89, label %220, label %90

90:                                               ; preds = %81, %85
  %91 = phi ptr [ %84, %81 ], [ %88, %85 ]
  %92 = phi ptr [ %82, %81 ], [ %87, %85 ]
  %93 = phi i32 [ %83, %81 ], [ %86, %85 ]
  %94 = icmp eq ptr %91, null
  %95 = icmp eq ptr %91, %92
  %96 = or i1 %94, %95
  br i1 %96, label %97, label %220

97:                                               ; preds = %90
  br i1 %94, label %52, label %98, !llvm.loop !91

98:                                               ; preds = %97
  %99 = load i32, ptr %0, align 8, !tbaa !38
  %100 = and i32 %99, 4
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %101, ptr @.str.187, ptr @.str.186
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull %102) #23
  %103 = load ptr, ptr %1, align 8, !tbaa !42
  %104 = getelementptr inbounds i8, ptr %103, i64 1
  br label %49, !llvm.loop !91

105:                                              ; preds = %52
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.188) #23
  br label %220

106:                                              ; preds = %23, %24, %28, %32, %40, %36
  %107 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.189, i32 %11, i64 13)
  %108 = icmp eq ptr %107, null
  br i1 %108, label %175, label %109

109:                                              ; preds = %106
  %110 = tail call ptr @strpbrk(ptr noundef nonnull %5, ptr noundef nonnull @cplus_markers) #23
  %111 = icmp eq ptr %110, null
  br i1 %111, label %175, label %112

112:                                              ; preds = %109
  store ptr %9, ptr %1, align 8, !tbaa !42
  %113 = load i8, ptr %9, align 1, !tbaa !35
  switch i8 %113, label %118 [
    i8 81, label %114
    i8 75, label %114
    i8 116, label %116
  ]

114:                                              ; preds = %112, %112
  %115 = tail call fastcc i32 @demangle_qualified(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 0, i32 noundef 1) #23
  br label %152

116:                                              ; preds = %112
  %117 = tail call fastcc i32 @demangle_template(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef null, i32 noundef 1, i32 noundef 1) #23
  br label %152

118:                                              ; preds = %112
  %119 = tail call fastcc i32 @consume_count(ptr noundef nonnull %1) #23
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %220, label %121

121:                                              ; preds = %118
  %122 = zext nneg i32 %119 to i64
  %123 = load ptr, ptr %1, align 8, !tbaa !42
  %124 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %123) #23
  %125 = icmp slt i64 %124, %122
  br i1 %125, label %220, label %126

126:                                              ; preds = %121
  %127 = icmp ugt i32 %119, 10
  br i1 %127, label %128, label %149

128:                                              ; preds = %126
  %129 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %123, ptr noundef nonnull dereferenceable(9) @.str.190, i64 noundef 8) #23
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %149

131:                                              ; preds = %128
  %132 = getelementptr inbounds i8, ptr %123, i64 9
  %133 = load i8, ptr %132, align 1, !tbaa !35
  %134 = icmp eq i8 %133, 78
  br i1 %134, label %135, label %149

135:                                              ; preds = %131
  %136 = getelementptr inbounds i8, ptr %123, i64 8
  %137 = load i8, ptr %136, align 1, !tbaa !35
  %138 = getelementptr inbounds i8, ptr %123, i64 10
  %139 = load i8, ptr %138, align 1, !tbaa !35
  %140 = icmp eq i8 %137, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %135
  %142 = sext i8 %137 to i32
  %143 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @cplus_markers, i32 noundef %142) #23
  %144 = icmp eq ptr %143, null
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.191) #23
  %146 = load ptr, ptr %1, align 8, !tbaa !42
  %147 = getelementptr inbounds i8, ptr %146, i64 %122
  store ptr %147, ptr %1, align 8, !tbaa !42
  %148 = tail call ptr @strpbrk(ptr noundef nonnull %147, ptr noundef nonnull @cplus_markers) #23
  br label %157

149:                                              ; preds = %141, %135, %131, %128, %126
  tail call fastcc void @string_appendn(ptr noundef %2, ptr noundef %123, i32 noundef %119) #23
  %150 = load ptr, ptr %1, align 8, !tbaa !42
  %151 = getelementptr inbounds i8, ptr %150, i64 %122
  store ptr %151, ptr %1, align 8, !tbaa !42
  br label %157

152:                                              ; preds = %116, %114
  %153 = phi i32 [ %117, %116 ], [ %115, %114 ]
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %220, label %155

155:                                              ; preds = %152
  %156 = load ptr, ptr %1, align 8, !tbaa !42
  br label %157

157:                                              ; preds = %155, %149, %145
  %158 = phi ptr [ %156, %155 ], [ %147, %145 ], [ %151, %149 ]
  %159 = phi i32 [ %153, %155 ], [ 1, %145 ], [ 1, %149 ]
  %160 = phi ptr [ %110, %155 ], [ %148, %145 ], [ %110, %149 ]
  %161 = icmp eq ptr %160, %158
  br i1 %161, label %162, label %220

162:                                              ; preds = %157
  %163 = getelementptr inbounds i8, ptr %158, i64 1
  store ptr %163, ptr %1, align 8, !tbaa !42
  %164 = load i32, ptr %0, align 8, !tbaa !38
  %165 = and i32 %164, 4
  %166 = icmp eq i32 %165, 0
  %167 = select i1 %166, ptr @.str.187, ptr @.str.186
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull %167) #23
  %168 = load ptr, ptr %1, align 8, !tbaa !42
  %169 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %168) #23
  %170 = trunc i64 %169 to i32
  tail call fastcc void @string_appendn(ptr noundef %2, ptr noundef %168, i32 noundef %170) #23
  %171 = load ptr, ptr %1, align 8, !tbaa !42
  %172 = shl i64 %169, 32
  %173 = ashr exact i64 %172, 32
  %174 = getelementptr inbounds i8, ptr %171, i64 %173
  store ptr %174, ptr %1, align 8, !tbaa !42
  br label %220

175:                                              ; preds = %3, %109, %106
  %176 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(9) @.str.192, i64 noundef 8) #23
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %195

178:                                              ; preds = %175
  %179 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %179, ptr %1, align 8, !tbaa !42
  %180 = tail call fastcc i32 @consume_count(ptr noundef nonnull %1) #23
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %220, label %182

182:                                              ; preds = %178
  %183 = load ptr, ptr %1, align 8, !tbaa !42
  %184 = getelementptr inbounds i8, ptr %183, i64 1
  store ptr %184, ptr %1, align 8, !tbaa !42
  %185 = tail call fastcc ptr @internal_cplus_demangle(ptr noundef %0, ptr noundef nonnull %184) #23
  %186 = icmp eq ptr %185, null
  br i1 %186, label %220, label %187

187:                                              ; preds = %182
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %4) #22
  %188 = sub nsw i32 0, %180
  %189 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.193, i32 noundef %188) #23
  call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull %4) #23
  call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull %185) #23
  call void @free(ptr noundef nonnull %185) #23
  %190 = load ptr, ptr %1, align 8, !tbaa !42
  %191 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %190) #23
  %192 = shl i64 %191, 32
  %193 = ashr exact i64 %192, 32
  %194 = getelementptr inbounds i8, ptr %190, i64 %193
  store ptr %194, ptr %1, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %4) #22
  br label %220

195:                                              ; preds = %175
  %196 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.194, i64 noundef 3) #23
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %220

198:                                              ; preds = %195
  %199 = getelementptr inbounds i8, ptr %5, i64 3
  %200 = load i8, ptr %199, align 1, !tbaa !35
  switch i8 %200, label %220 [
    i8 105, label %201
    i8 102, label %201
  ]

201:                                              ; preds = %198, %198
  %202 = icmp eq i8 %200, 105
  %203 = select i1 %202, ptr @.str.195, ptr @.str.196
  %204 = getelementptr inbounds i8, ptr %5, i64 4
  store ptr %204, ptr %1, align 8, !tbaa !42
  %205 = load i8, ptr %204, align 1, !tbaa !35
  switch i8 %205, label %210 [
    i8 81, label %206
    i8 75, label %206
    i8 116, label %208
  ]

206:                                              ; preds = %201, %201
  %207 = tail call fastcc i32 @demangle_qualified(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 0, i32 noundef 1) #23
  br label %212

208:                                              ; preds = %201
  %209 = tail call fastcc i32 @demangle_template(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef null, i32 noundef 1, i32 noundef 1) #23
  br label %212

210:                                              ; preds = %201
  %211 = tail call fastcc i32 @do_type(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #23, !range !43
  br label %212

212:                                              ; preds = %210, %208, %206
  %213 = phi i32 [ %211, %210 ], [ %209, %208 ], [ %207, %206 ]
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %220, label %215

215:                                              ; preds = %212
  %216 = load ptr, ptr %1, align 8, !tbaa !42
  %217 = load i8, ptr %216, align 1, !tbaa !35
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull %203) #23
  br label %220

220:                                              ; preds = %85, %90, %215, %212, %118, %121, %195, %198, %178, %182, %187, %152, %157, %105, %219, %162, %18
  %221 = phi i32 [ 1, %18 ], [ %54, %105 ], [ %159, %162 ], [ %213, %219 ], [ 0, %157 ], [ 0, %152 ], [ 0, %178 ], [ 1, %187 ], [ 0, %182 ], [ 0, %198 ], [ 0, %195 ], [ 0, %121 ], [ 0, %118 ], [ 0, %212 ], [ 0, %215 ], [ 0, %90 ], [ 0, %85 ]
  ret i32 %221
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @demangle_prefix(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #1 !prof !34 !PGOFuncName !92 {
  %4 = load ptr, ptr %1, align 8, !tbaa !42
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #23
  %6 = icmp ugt i64 %5, 6
  br i1 %6, label %7, label %45

7:                                                ; preds = %3
  %8 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(7) @.str.211, i64 noundef 6) #23
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(7) @.str.212, i64 noundef 6) #23
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %7
  %14 = getelementptr inbounds i8, ptr %4, i64 6
  store ptr %14, ptr %1, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 15
  store i32 1, ptr %15, align 4, !tbaa !88
  br label %61

16:                                               ; preds = %10
  %17 = icmp ugt i64 %5, 10
  br i1 %17, label %18, label %45

18:                                               ; preds = %16
  %19 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(9) @.str.190, i64 noundef 8) #23
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %18
  %22 = getelementptr inbounds i8, ptr %4, i64 8
  %23 = load i8, ptr %22, align 1, !tbaa !35
  %24 = sext i8 %23 to i32
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @cplus_markers, i32 noundef %24) #23
  %26 = icmp eq ptr %25, null
  br i1 %26, label %61, label %27

27:                                               ; preds = %21
  %28 = load i8, ptr %25, align 1, !tbaa !35
  %29 = getelementptr inbounds i8, ptr %4, i64 10
  %30 = load i8, ptr %29, align 1, !tbaa !35
  %31 = icmp eq i8 %28, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %27
  %33 = getelementptr inbounds i8, ptr %4, i64 9
  %34 = load i8, ptr %33, align 1, !tbaa !35
  switch i8 %34, label %61 [
    i8 68, label %35
    i8 73, label %40
  ]

35:                                               ; preds = %32
  %36 = getelementptr inbounds i8, ptr %4, i64 11
  store ptr %36, ptr %1, align 8, !tbaa !42
  %37 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 11
  store i32 2, ptr %37, align 4, !tbaa !86
  %38 = tail call fastcc i32 @gnu_special(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #23
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %61, label %211

40:                                               ; preds = %32
  %41 = getelementptr inbounds i8, ptr %4, i64 11
  store ptr %41, ptr %1, align 8, !tbaa !42
  %42 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 10
  store i32 2, ptr %42, align 8, !tbaa !87
  %43 = tail call fastcc i32 @gnu_special(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #23
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %61, label %211

45:                                               ; preds = %3, %18, %16
  %46 = load i32, ptr %0, align 8, !tbaa !38
  %47 = and i32 %46, 14336
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(8) @.str.213, i64 noundef 7) #23
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = getelementptr inbounds i8, ptr %4, i64 7
  store ptr %53, ptr %1, align 8, !tbaa !42
  %54 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 11
  store i32 2, ptr %54, align 4, !tbaa !86
  br label %61

55:                                               ; preds = %49
  %56 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(8) @.str.214, i64 noundef 7) #23
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = getelementptr inbounds i8, ptr %4, i64 7
  store ptr %59, ptr %1, align 8, !tbaa !42
  %60 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 10
  store i32 2, ptr %60, align 8, !tbaa !87
  br label %61

61:                                               ; preds = %45, %21, %27, %40, %35, %32, %55, %58, %52, %13
  %62 = load ptr, ptr %1, align 8, !tbaa !42
  br label %63

63:                                               ; preds = %67, %61
  %64 = phi ptr [ %62, %61 ], [ %68, %67 ]
  %65 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %64, i32 noundef 95) #23
  %66 = icmp eq ptr %65, null
  br i1 %66, label %198, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %65, i64 1
  %69 = load i8, ptr %68, align 1, !tbaa !35
  %70 = icmp eq i8 %69, 95
  br i1 %70, label %71, label %63, !llvm.loop !93

71:                                               ; preds = %67
  %72 = tail call i64 @strspn(ptr noundef nonnull %65, ptr noundef nonnull @.str.215) #23
  %73 = trunc i64 %72 to i32
  %74 = icmp sgt i32 %73, 2
  %75 = add i64 %72, 4294967294
  %76 = and i64 %75, 4294967295
  %77 = select i1 %74, i64 %76, i64 0
  %78 = getelementptr inbounds i8, ptr %65, i64 %77
  %79 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 12
  %80 = load i32, ptr %79, align 8, !tbaa !84
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %71
  %83 = load i8, ptr %78, align 1, !tbaa !35
  %84 = zext i8 %83 to i64
  %85 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %84
  %86 = load i16, ptr %85, align 2, !tbaa !47
  %87 = and i16 %86, 4
  %88 = icmp ne i16 %87, 0
  %89 = icmp eq i8 %83, 116
  %90 = or i1 %89, %88
  br i1 %90, label %211, label %198

91:                                               ; preds = %71
  %92 = icmp eq ptr %78, %62
  br i1 %92, label %93, label %127

93:                                               ; preds = %91
  %94 = getelementptr inbounds i8, ptr %62, i64 2
  %95 = load i8, ptr %94, align 1, !tbaa !35
  %96 = zext i8 %95 to i64
  %97 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %96
  %98 = load i16, ptr %97, align 2, !tbaa !47
  %99 = freeze i16 %98
  %100 = and i16 %99, 4
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %93
  switch i8 %95, label %127 [
    i8 116, label %103
    i8 81, label %103
    i8 75, label %103
    i8 72, label %103
  ]

103:                                              ; preds = %102, %102, %102, %102
  %104 = load i32, ptr %0, align 8, !tbaa !38
  %105 = and i32 %104, 7168
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %118, label %111

107:                                              ; preds = %93
  %108 = load i32, ptr %0, align 8, !tbaa !38
  %109 = and i32 %108, 7168
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %118, label %112

111:                                              ; preds = %103
  br i1 %101, label %126, label %112

112:                                              ; preds = %107, %111
  store ptr %94, ptr %1, align 8, !tbaa !42
  %113 = tail call fastcc i32 @consume_count(ptr noundef nonnull %1) #23
  %114 = load ptr, ptr %1, align 8, !tbaa !42
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef %114) #23
  %115 = load ptr, ptr %1, align 8, !tbaa !42
  %116 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %115) #23
  %117 = getelementptr inbounds i8, ptr %115, i64 %116
  store ptr %117, ptr %1, align 8, !tbaa !42
  br label %211

118:                                              ; preds = %107, %103
  %119 = phi i32 [ %108, %107 ], [ %104, %103 ]
  %120 = and i32 %119, 8192
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 10
  %124 = load i32, ptr %123, align 8, !tbaa !87
  %125 = add nsw i32 %124, 1
  store i32 %125, ptr %123, align 8, !tbaa !87
  br label %126

126:                                              ; preds = %111, %122, %118
  store ptr %94, ptr %1, align 8, !tbaa !42
  br label %211

127:                                              ; preds = %102, %91
  %128 = load i32, ptr %0, align 8, !tbaa !38
  %129 = and i32 %128, 2048
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %142, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds i8, ptr %78, i64 2
  %133 = load i8, ptr %132, align 1, !tbaa !35
  %134 = icmp eq i8 %133, 112
  br i1 %134, label %135, label %142

135:                                              ; preds = %131
  %136 = getelementptr inbounds i8, ptr %78, i64 3
  %137 = load i8, ptr %136, align 1, !tbaa !35
  %138 = icmp eq i8 %137, 116
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %62) #23
  %141 = trunc i64 %140 to i32
  tail call fastcc void @demangle_arm_hp_template(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %141, ptr noundef %2) #23
  br label %211

142:                                              ; preds = %135, %131, %127
  %143 = and i32 %128, 8192
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %160, label %145

145:                                              ; preds = %142
  %146 = getelementptr inbounds i8, ptr %78, i64 2
  %147 = load i8, ptr %146, align 1, !tbaa !35
  switch i8 %147, label %160 [
    i8 116, label %148
    i8 112, label %152
  ]

148:                                              ; preds = %145
  %149 = getelementptr inbounds i8, ptr %78, i64 3
  %150 = load i8, ptr %149, align 1, !tbaa !35
  %151 = icmp eq i8 %150, 109
  br i1 %151, label %157, label %160

152:                                              ; preds = %145
  %153 = getelementptr inbounds i8, ptr %78, i64 3
  %154 = load i8, ptr %153, align 1, !tbaa !35
  %155 = add i8 %154, -115
  %156 = icmp ult i8 %155, 2
  br i1 %156, label %157, label %160

157:                                              ; preds = %152, %148
  %158 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %62) #23
  %159 = trunc i64 %158 to i32
  tail call fastcc void @demangle_arm_hp_template(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %159, ptr noundef %2) #23
  br label %211

160:                                              ; preds = %152, %145, %148, %142
  br i1 %92, label %161, label %192

161:                                              ; preds = %160
  %162 = getelementptr inbounds i8, ptr %62, i64 2
  %163 = load i8, ptr %162, align 1, !tbaa !35
  %164 = zext i8 %163 to i64
  %165 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %164
  %166 = load i16, ptr %165, align 2, !tbaa !47
  %167 = and i16 %166, 4
  %168 = icmp ne i16 %167, 0
  %169 = icmp eq i8 %163, 116
  %170 = or i1 %169, %168
  br i1 %170, label %192, label %171

171:                                              ; preds = %161
  %172 = and i32 %128, 15360
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %171
  %175 = tail call fastcc i32 @arm_special(ptr noundef nonnull %1, ptr noundef %2) #23, !range !58
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %211

177:                                              ; preds = %171, %174
  br label %178

178:                                              ; preds = %177, %178
  %179 = phi ptr [ %182, %178 ], [ %62, %177 ]
  %180 = load i8, ptr %179, align 1, !tbaa !35
  %181 = icmp eq i8 %180, 95
  %182 = getelementptr inbounds i8, ptr %179, i64 1
  br i1 %181, label %178, label %183, !llvm.loop !94

183:                                              ; preds = %178
  %184 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %179, ptr noundef nonnull dereferenceable(1) @.str.216) #23
  %185 = icmp eq ptr %184, null
  br i1 %185, label %198, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds i8, ptr %184, i64 2
  %188 = load i8, ptr %187, align 1, !tbaa !35
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %198, label %190

190:                                              ; preds = %186
  %191 = tail call fastcc i32 @iterate_demangle_function(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %184) #23
  br label %211

192:                                              ; preds = %161, %160
  %193 = getelementptr inbounds i8, ptr %78, i64 2
  %194 = load i8, ptr %193, align 1, !tbaa !35
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %192
  %197 = tail call fastcc i32 @iterate_demangle_function(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %78) #23
  br label %211

198:                                              ; preds = %63, %82, %186, %183, %192
  %199 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 10
  %200 = load i32, ptr %199, align 8, !tbaa !87
  %201 = icmp eq i32 %200, 2
  br i1 %201, label %206, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 11
  %204 = load i32, ptr %203, align 4, !tbaa !86
  %205 = icmp eq i32 %204, 2
  br i1 %205, label %206, label %211

206:                                              ; preds = %202, %198
  %207 = load ptr, ptr %1, align 8, !tbaa !42
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef %207) #23
  %208 = load ptr, ptr %1, align 8, !tbaa !42
  %209 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %208) #23
  %210 = getelementptr inbounds i8, ptr %208, i64 %209
  store ptr %210, ptr %1, align 8, !tbaa !42
  br label %211

211:                                              ; preds = %202, %206, %174, %157, %139, %126, %112, %82, %35, %40, %196, %190
  %212 = phi i32 [ %197, %196 ], [ %191, %190 ], [ 1, %40 ], [ 1, %35 ], [ 1, %206 ], [ 0, %202 ], [ 1, %174 ], [ 1, %157 ], [ 1, %139 ], [ 1, %126 ], [ 1, %112 ], [ 1, %82 ]
  ret i32 %212
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @demangle_signature(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #1 !prof !34 !PGOFuncName !95 {
  %4 = alloca %struct.string, align 8
  %5 = alloca %struct.string, align 8
  %6 = alloca %struct.string, align 8
  %7 = alloca %struct.string, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  %8 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 10
  %9 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 13
  %10 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 14
  %11 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 12
  br label %12

12:                                               ; preds = %3, %217
  %13 = phi ptr [ null, %3 ], [ %206, %217 ]
  %14 = phi i32 [ 0, %3 ], [ %205, %217 ]
  %15 = phi i32 [ 0, %3 ], [ %220, %217 ]
  %16 = phi i32 [ 0, %3 ], [ %219, %217 ]
  %17 = phi i32 [ 1, %3 ], [ %218, %217 ]
  %18 = load ptr, ptr %1, align 8, !tbaa !42
  %19 = load i8, ptr %18, align 1, !tbaa !35
  switch i8 %19, label %195 [
    i8 0, label %222
    i8 81, label %20
    i8 75, label %34
    i8 83, label %40
    i8 67, label %44
    i8 86, label %44
    i8 117, label %44
    i8 76, label %53
    i8 48, label %65
    i8 49, label %65
    i8 50, label %65
    i8 51, label %65
    i8 52, label %65
    i8 53, label %65
    i8 54, label %65
    i8 55, label %65
    i8 56, label %65
    i8 57, label %65
    i8 66, label %85
    i8 70, label %94
    i8 116, label %114
    i8 95, label %149
    i8 72, label %183
  ]

20:                                               ; preds = %12
  %21 = call fastcc i32 @demangle_qualified(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 1, i32 noundef 0) #23
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %1, align 8, !tbaa !42
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %18 to i64
  %27 = sub i64 %25, %26
  %28 = trunc i64 %27 to i32
  call fastcc void @remember_type(ptr noundef %0, ptr noundef nonnull %18, i32 noundef %28) #23
  br label %29

29:                                               ; preds = %23, %20
  %30 = load i32, ptr %0, align 8, !tbaa !38
  %31 = and i32 %30, 768
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 %15, i32 1
  br label %201

34:                                               ; preds = %12
  %35 = call fastcc i32 @demangle_qualified(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 1, i32 noundef 0) #23
  %36 = load i32, ptr %0, align 8, !tbaa !38
  %37 = and i32 %36, 768
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 %15, i32 1
  br label %201

40:                                               ; preds = %12
  %41 = icmp eq ptr %13, null
  %42 = select i1 %41, ptr %18, ptr %13
  %43 = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %43, ptr %1, align 8, !tbaa !42
  store i32 1, ptr %11, align 8, !tbaa !84
  br label %201

44:                                               ; preds = %12, %12, %12
  %45 = zext nneg i8 %19 to i32
  %46 = call fastcc i32 @code_for_qualifier(i32 noundef %45) #23, !range !62
  %47 = load i32, ptr %10, align 8, !tbaa !85
  %48 = or i32 %47, %46
  store i32 %48, ptr %10, align 8, !tbaa !85
  %49 = icmp eq ptr %13, null
  %50 = load ptr, ptr %1, align 8, !tbaa !42
  %51 = select i1 %49, ptr %50, ptr %13
  %52 = getelementptr inbounds i8, ptr %50, i64 1
  store ptr %52, ptr %1, align 8, !tbaa !42
  br label %201

53:                                               ; preds = %12
  %54 = load i32, ptr %0, align 8, !tbaa !38
  %55 = and i32 %54, 4096
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %255, label %57

57:                                               ; preds = %53, %60
  %58 = phi i8 [ %62, %60 ], [ 76, %53 ]
  %59 = phi ptr [ %61, %60 ], [ %18, %53 ]
  switch i8 %58, label %60 [
    i8 0, label %255
    i8 95, label %63
  ]

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, ptr %59, i64 1
  store ptr %61, ptr %1, align 8, !tbaa !42
  %62 = load i8, ptr %61, align 1, !tbaa !35
  br label %57, !llvm.loop !96

63:                                               ; preds = %57
  %64 = getelementptr inbounds i8, ptr %59, i64 1
  store ptr %64, ptr %1, align 8, !tbaa !42
  br label %201

65:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  store i32 -1, ptr %9, align 4, !tbaa !97
  %66 = call fastcc i32 @demangle_class(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #23, !range !58
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %65
  %69 = icmp eq ptr %13, null
  %70 = select i1 %69, ptr %18, ptr %13
  %71 = load ptr, ptr %1, align 8, !tbaa !42
  %72 = ptrtoint ptr %71 to i64
  %73 = ptrtoint ptr %70 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  call fastcc void @remember_type(ptr noundef nonnull %0, ptr noundef nonnull %70, i32 noundef %75) #23
  br label %76

76:                                               ; preds = %68, %65
  %77 = load i32, ptr %0, align 8, !tbaa !38
  %78 = and i32 %77, 8960
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %201, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %1, align 8, !tbaa !42
  %82 = load i8, ptr %81, align 1, !tbaa !35
  %83 = icmp eq i8 %82, 70
  %84 = select i1 %83, i32 %15, i32 1
  br label %201

85:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #22
  %86 = call fastcc i32 @do_type(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %6) #23, !range !43
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = load i32, ptr %0, align 8, !tbaa !38
  %90 = and i32 %89, 4
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, ptr @.str.187, ptr @.str.186
  call fastcc void @string_append(ptr noundef nonnull %6, ptr noundef nonnull %92) #23
  call fastcc void @string_prepends(ptr noundef %2, ptr noundef nonnull %6) #23
  call fastcc void @string_delete(ptr noundef nonnull %6) #23
  br label %93

93:                                               ; preds = %88, %85
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #22
  br label %201

94:                                               ; preds = %12
  %95 = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %95, ptr %1, align 8, !tbaa !42
  %96 = load i32, ptr %0, align 8, !tbaa !38
  %97 = and i32 %96, 15360
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  call fastcc void @forget_types(ptr noundef nonnull %0) #23
  br label %100

100:                                              ; preds = %94, %99
  %101 = call fastcc i32 @demangle_args(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) #23, !range !58
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %255, label %103

103:                                              ; preds = %100
  %104 = load i32, ptr %0, align 8, !tbaa !38
  %105 = and i32 %104, 8448
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %201, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %1, align 8, !tbaa !42
  %109 = load i8, ptr %108, align 1, !tbaa !35
  %110 = icmp eq i8 %109, 95
  br i1 %110, label %111, label %201

111:                                              ; preds = %107
  %112 = getelementptr inbounds i8, ptr %108, i64 1
  store ptr %112, ptr %1, align 8, !tbaa !42
  %113 = call fastcc i32 @do_type(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %5) #23, !range !43
  call fastcc void @string_delete(ptr noundef nonnull %5) #23
  br label %201

114:                                              ; preds = %12
  %115 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 11
  call fastcc void @string_init(ptr noundef nonnull %4) #23
  call fastcc void @string_init(ptr noundef nonnull %5) #23
  %116 = call fastcc i32 @demangle_template(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 1) #23
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %114
  %119 = icmp eq ptr %13, null
  %120 = select i1 %119, ptr %18, ptr %13
  %121 = load ptr, ptr %1, align 8, !tbaa !42
  %122 = ptrtoint ptr %121 to i64
  %123 = ptrtoint ptr %120 to i64
  %124 = sub i64 %122, %123
  %125 = trunc i64 %124 to i32
  call fastcc void @remember_type(ptr noundef %0, ptr noundef nonnull %120, i32 noundef %125) #23
  br label %126

126:                                              ; preds = %118, %114
  %127 = load i32, ptr %0, align 8, !tbaa !38
  %128 = and i32 %127, 4
  %129 = icmp eq i32 %128, 0
  %130 = select i1 %129, ptr @.str.187, ptr @.str.186
  call fastcc void @string_append(ptr noundef nonnull %5, ptr noundef nonnull %130) #23
  call fastcc void @string_prepends(ptr noundef %2, ptr noundef nonnull %5) #23
  %131 = load i32, ptr %115, align 4, !tbaa !86
  %132 = and i32 %131, 1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %126
  call fastcc void @string_prepend(ptr noundef nonnull %4, ptr noundef nonnull @.str.139) #23
  call fastcc void @string_appends(ptr noundef %2, ptr noundef nonnull %4) #23
  %135 = load i32, ptr %115, align 4, !tbaa !86
  %136 = add nsw i32 %135, -1
  store i32 %136, ptr %115, align 4, !tbaa !86
  br label %137

137:                                              ; preds = %134, %126
  %138 = phi i32 [ %136, %134 ], [ %131, %126 ]
  %139 = load i32, ptr %8, align 8, !tbaa !87
  %140 = and i32 %139, 1
  %141 = icmp eq i32 %140, 0
  %142 = and i32 %138, 1
  %143 = icmp eq i32 %142, 0
  %144 = select i1 %141, i1 %143, i1 false
  br i1 %144, label %148, label %145

145:                                              ; preds = %137
  call fastcc void @string_appends(ptr noundef %2, ptr noundef nonnull %4) #23
  %146 = load i32, ptr %8, align 8, !tbaa !87
  %147 = add nsw i32 %146, -1
  store i32 %147, ptr %8, align 8, !tbaa !87
  br label %148

148:                                              ; preds = %137, %145
  call fastcc void @string_delete(ptr noundef nonnull %4) #23
  call fastcc void @string_delete(ptr noundef nonnull %5) #23
  br label %201

149:                                              ; preds = %12
  %150 = load i32, ptr %0, align 8, !tbaa !38
  %151 = and i32 %150, 256
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = and i32 %150, 512
  %155 = icmp ne i32 %154, 0
  %156 = icmp ne i32 %14, 0
  %157 = select i1 %155, i1 %156, i1 false
  br i1 %157, label %160, label %169

158:                                              ; preds = %149
  %159 = icmp eq i32 %14, 0
  br i1 %159, label %169, label %160

160:                                              ; preds = %153, %158
  %161 = getelementptr inbounds %struct.string, ptr %7, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #22
  %162 = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %162, ptr %1, align 8, !tbaa !42
  %163 = call fastcc i32 @do_type(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %7) #23, !range !43
  %164 = load ptr, ptr %7, align 8, !tbaa !44
  %165 = load ptr, ptr %161, align 8, !tbaa !46
  %166 = icmp eq ptr %164, %165
  br i1 %166, label %168, label %167

167:                                              ; preds = %160
  call fastcc void @string_append(ptr noundef nonnull %7, ptr noundef nonnull @.str.198) #23
  br label %168

168:                                              ; preds = %167, %160
  call fastcc void @string_prepends(ptr noundef %2, ptr noundef nonnull %7) #23
  call fastcc void @string_delete(ptr noundef nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  br label %201

169:                                              ; preds = %158, %153
  %170 = and i32 %150, 4096
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %255, label %172

172:                                              ; preds = %169, %177
  %173 = phi ptr [ %174, %177 ], [ %18, %169 ]
  %174 = getelementptr inbounds i8, ptr %173, i64 1
  store ptr %174, ptr %1, align 8, !tbaa !42
  %175 = load i8, ptr %174, align 1, !tbaa !35
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %201, label %177

177:                                              ; preds = %172
  %178 = zext i8 %175 to i64
  %179 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %178
  %180 = load i16, ptr %179, align 2, !tbaa !47
  %181 = and i16 %180, 4
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %201, label %172, !llvm.loop !98

183:                                              ; preds = %12
  %184 = load i32, ptr %0, align 8, !tbaa !38
  %185 = and i32 %184, 768
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %255, label %187

187:                                              ; preds = %183
  %188 = call fastcc i32 @demangle_template(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef null, i32 noundef 0, i32 noundef 0) #23
  %189 = load i32, ptr %8, align 8, !tbaa !87
  %190 = and i32 %189, 1
  %191 = icmp eq i32 %190, 0
  %192 = select i1 %191, i32 1, i32 %14
  %193 = load ptr, ptr %1, align 8, !tbaa !42
  %194 = getelementptr inbounds i8, ptr %193, i64 1
  store ptr %194, ptr %1, align 8, !tbaa !42
  br label %201

195:                                              ; preds = %12
  %196 = load i32, ptr %0, align 8, !tbaa !38
  %197 = and i32 %196, 768
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %255, label %199

199:                                              ; preds = %195
  %200 = call fastcc i32 @demangle_args(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) #23, !range !58
  br label %201

201:                                              ; preds = %177, %172, %80, %103, %76, %199, %107, %111, %63, %187, %168, %148, %93, %44, %40, %34, %29
  %202 = phi i32 [ %200, %199 ], [ %188, %187 ], [ %163, %168 ], [ %116, %148 ], [ %113, %111 ], [ 1, %107 ], [ %86, %93 ], [ %17, %63 ], [ %17, %44 ], [ %17, %40 ], [ %35, %34 ], [ %21, %29 ], [ %66, %76 ], [ %66, %80 ], [ 1, %103 ], [ %17, %172 ], [ %17, %177 ]
  %203 = phi i32 [ 1, %199 ], [ %16, %187 ], [ %16, %168 ], [ %16, %148 ], [ 1, %111 ], [ 1, %107 ], [ %16, %93 ], [ %16, %63 ], [ %16, %44 ], [ %16, %40 ], [ %16, %34 ], [ %16, %29 ], [ %16, %76 ], [ %16, %80 ], [ 1, %103 ], [ %16, %172 ], [ %16, %177 ]
  %204 = phi i32 [ %15, %199 ], [ %15, %187 ], [ %15, %168 ], [ 1, %148 ], [ %15, %111 ], [ %15, %107 ], [ 1, %93 ], [ %15, %63 ], [ %15, %44 ], [ %15, %40 ], [ %39, %34 ], [ %33, %29 ], [ %15, %76 ], [ %84, %80 ], [ %15, %103 ], [ %15, %172 ], [ %15, %177 ]
  %205 = phi i32 [ %14, %199 ], [ %192, %187 ], [ %14, %168 ], [ %14, %148 ], [ %14, %111 ], [ %14, %107 ], [ %14, %93 ], [ %14, %63 ], [ %14, %44 ], [ %14, %40 ], [ %14, %34 ], [ %14, %29 ], [ %14, %76 ], [ %14, %80 ], [ %14, %103 ], [ %14, %172 ], [ %14, %177 ]
  %206 = phi ptr [ %13, %199 ], [ %13, %187 ], [ %13, %168 ], [ null, %148 ], [ null, %111 ], [ null, %107 ], [ null, %93 ], [ %13, %63 ], [ %51, %44 ], [ %42, %40 ], [ null, %34 ], [ null, %29 ], [ null, %76 ], [ null, %80 ], [ null, %103 ], [ %13, %172 ], [ %13, %177 ]
  %207 = icmp ne i32 %202, 0
  %208 = icmp ne i32 %204, 0
  %209 = select i1 %207, i1 %208, i1 false
  br i1 %209, label %210, label %217

210:                                              ; preds = %201
  %211 = load i32, ptr %0, align 8, !tbaa !38
  %212 = and i32 %211, 11264
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %210
  call fastcc void @forget_types(ptr noundef nonnull %0) #23
  br label %215

215:                                              ; preds = %210, %214
  %216 = call fastcc i32 @demangle_args(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) #23, !range !58
  br label %217

217:                                              ; preds = %215, %201
  %218 = phi i32 [ %216, %215 ], [ %202, %201 ]
  %219 = phi i32 [ 1, %215 ], [ %203, %201 ]
  %220 = phi i32 [ 0, %215 ], [ %204, %201 ]
  %221 = icmp eq i32 %218, 0
  br i1 %221, label %255, label %12, !llvm.loop !99

222:                                              ; preds = %12
  %223 = icmp ne i32 %16, 0
  %224 = load i32, ptr %0, align 8, !tbaa !38
  %225 = and i32 %224, 768
  %226 = icmp eq i32 %225, 0
  %227 = select i1 %223, i1 true, i1 %226
  br i1 %227, label %233, label %228

228:                                              ; preds = %222
  %229 = call fastcc i32 @demangle_args(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) #23, !range !58
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %255, label %231

231:                                              ; preds = %228
  %232 = load i32, ptr %0, align 8, !tbaa !38
  br label %233

233:                                              ; preds = %231, %222
  %234 = phi i32 [ %232, %231 ], [ %224, %222 ]
  %235 = phi i32 [ 1, %231 ], [ %17, %222 ]
  %236 = and i32 %234, 1
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %255, label %238

238:                                              ; preds = %233
  %239 = load i32, ptr %11, align 8, !tbaa !84
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %238
  call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.227) #23
  br label %242

242:                                              ; preds = %241, %238
  %243 = load i32, ptr %10, align 8, !tbaa !85
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %255, label %245

245:                                              ; preds = %242
  %246 = load ptr, ptr %2, align 8, !tbaa !44
  %247 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !46
  %249 = icmp eq ptr %246, %248
  br i1 %249, label %252, label %250

250:                                              ; preds = %245
  call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198) #23
  %251 = load i32, ptr %10, align 8, !tbaa !85
  br label %252

252:                                              ; preds = %250, %245
  %253 = phi i32 [ %251, %250 ], [ %243, %245 ]
  %254 = call fastcc ptr @qualifier_string(i32 noundef %253) #23
  call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull %254) #23
  br label %255

255:                                              ; preds = %183, %100, %53, %169, %195, %217, %57, %242, %252, %233, %228
  %256 = phi i32 [ %235, %242 ], [ %235, %252 ], [ %235, %233 ], [ 0, %228 ], [ 0, %57 ], [ 0, %217 ], [ 0, %195 ], [ 0, %169 ], [ 0, %53 ], [ 0, %100 ], [ 0, %183 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  ret i32 %256
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @string_prepend(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #1 !prof !34 !PGOFuncName !100 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %1, align 1, !tbaa !35
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %9 = trunc i64 %8 to i32
  tail call fastcc void @string_prependn(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %9) #23
  br label %10

10:                                               ; preds = %7, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @mop_up(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #1 !prof !34 !PGOFuncName !101 {
  tail call fastcc void @delete_non_B_K_work_stuff(ptr noundef %0) #23
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call fastcc void @string_delete(ptr noundef %1) #23
  br label %8

6:                                                ; preds = %3
  tail call fastcc void @string_appendn(ptr noundef %1, ptr noundef nonnull @.str.178, i32 noundef 1) #23
  %7 = load ptr, ptr %1, align 8, !tbaa !44
  br label %8

8:                                                ; preds = %6, %5
  %9 = phi ptr [ %7, %6 ], [ null, %5 ]
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @demangle_qualified(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 !prof !34 !PGOFuncName !102 {
  %6 = alloca [2 x i8], align 1
  %7 = alloca %struct.string, align 8
  %8 = alloca %struct.string, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #22
  %9 = tail call fastcc i32 @register_Btype(ptr noundef %0) #23
  %10 = icmp eq i32 %3, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !87
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 11
  %18 = load i32, ptr %17, align 4, !tbaa !86
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %11, %16, %5
  %22 = phi i1 [ false, %5 ], [ true, %11 ], [ %20, %16 ]
  call fastcc void @string_init(ptr noundef nonnull %7) #23
  call fastcc void @string_init(ptr noundef nonnull %8) #23
  %23 = load ptr, ptr %1, align 8, !tbaa !42
  %24 = load i8, ptr %23, align 1, !tbaa !35
  %25 = icmp eq i8 %24, 75
  %26 = getelementptr inbounds i8, ptr %23, i64 1
  br i1 %25, label %27, label %40

27:                                               ; preds = %21
  store ptr %26, ptr %1, align 8, !tbaa !42
  %28 = tail call fastcc i32 @consume_count_with_underscores(ptr noundef nonnull %1) #23
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %156, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !103
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %156

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !70
  %37 = sext i32 %28 to i64
  %38 = getelementptr inbounds ptr, ptr %36, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !42
  call fastcc void @string_append(ptr noundef nonnull %7, ptr noundef %39) #23
  br label %53

40:                                               ; preds = %21
  %41 = load i8, ptr %26, align 1, !tbaa !35
  switch i8 %41, label %156 [
    i8 95, label %50
    i8 49, label %42
    i8 50, label %42
    i8 51, label %42
    i8 52, label %42
    i8 53, label %42
    i8 54, label %42
    i8 55, label %42
    i8 56, label %42
    i8 57, label %42
  ]

42:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40
  store i8 %41, ptr %6, align 1, !tbaa !35
  %43 = getelementptr inbounds [2 x i8], ptr %6, i64 0, i64 1
  store i8 0, ptr %43, align 1, !tbaa !35
  %44 = call i32 @atoi(ptr nocapture noundef nonnull %6) #23
  %45 = getelementptr inbounds i8, ptr %23, i64 2
  %46 = load i8, ptr %45, align 1, !tbaa !35
  %47 = icmp eq i8 %46, 95
  %48 = select i1 %47, ptr %26, ptr %23
  %49 = getelementptr inbounds i8, ptr %48, i64 2
  store ptr %49, ptr %1, align 8, !tbaa !42
  br label %53

50:                                               ; preds = %40
  store ptr %26, ptr %1, align 8, !tbaa !42
  %51 = tail call fastcc i32 @consume_count_with_underscores(ptr noundef nonnull %1) #23
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %156, label %53

53:                                               ; preds = %50, %34, %42
  %54 = phi i32 [ 0, %34 ], [ %44, %42 ], [ %51, %50 ]
  %55 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 4
  %56 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 2
  %57 = getelementptr inbounds %struct.string, ptr %7, i64 0, i32 1
  %58 = icmp sgt i32 %54, 0
  br i1 %58, label %59, label %120

59:                                               ; preds = %53, %118
  %60 = phi i32 [ %62, %118 ], [ %54, %53 ]
  %61 = phi i32 [ %111, %118 ], [ 1, %53 ]
  %62 = add nsw i32 %60, -1
  call fastcc void @string_clear(ptr noundef nonnull %8) #23
  %63 = load ptr, ptr %1, align 8, !tbaa !42
  %64 = load i8, ptr %63, align 1, !tbaa !35
  %65 = icmp eq i8 %64, 95
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = getelementptr inbounds i8, ptr %63, i64 1
  store ptr %67, ptr %1, align 8, !tbaa !42
  %68 = load i8, ptr %67, align 1, !tbaa !35
  br label %69

69:                                               ; preds = %66, %59
  %70 = phi i8 [ %68, %66 ], [ %64, %59 ]
  %71 = phi ptr [ %67, %66 ], [ %63, %59 ]
  switch i8 %70, label %88 [
    i8 116, label %72
    i8 75, label %75
  ]

72:                                               ; preds = %69
  %73 = call fastcc i32 @demangle_template(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %7, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0) #23
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %120, label %100

75:                                               ; preds = %69
  %76 = getelementptr inbounds i8, ptr %71, i64 1
  store ptr %76, ptr %1, align 8, !tbaa !42
  %77 = call fastcc i32 @consume_count_with_underscores(ptr noundef nonnull %1) #23
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %120, label %79

79:                                               ; preds = %75
  %80 = load i32, ptr %55, align 8, !tbaa !103
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %120

82:                                               ; preds = %79
  %83 = load ptr, ptr %56, align 8, !tbaa !70
  %84 = sext i32 %77 to i64
  %85 = getelementptr inbounds ptr, ptr %83, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !42
  call fastcc void @string_append(ptr noundef nonnull %7, ptr noundef %86) #23
  %87 = icmp eq i32 %61, 0
  br i1 %87, label %120, label %110

88:                                               ; preds = %69
  %89 = load i32, ptr %0, align 8, !tbaa !38
  %90 = and i32 %89, 8192
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = call fastcc i32 @consume_count(ptr noundef nonnull %1) #23
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %120, label %95

95:                                               ; preds = %92
  call fastcc void @recursively_demangle(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %7, i32 noundef %93) #23
  br label %100

96:                                               ; preds = %88
  call fastcc void @string_delete(ptr noundef nonnull %8) #23
  %97 = call fastcc i32 @do_type(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %8) #23, !range !43
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %120, label %99

99:                                               ; preds = %96
  call fastcc void @string_appends(ptr noundef nonnull %7, ptr noundef nonnull %8) #23
  br label %100

100:                                              ; preds = %72, %95, %99
  %101 = phi i32 [ %97, %99 ], [ %61, %95 ], [ %73, %72 ]
  %102 = load ptr, ptr %7, align 8
  %103 = load ptr, ptr %57, align 8
  %104 = icmp eq ptr %102, %103
  %105 = ptrtoint ptr %103 to i64
  %106 = ptrtoint ptr %102 to i64
  %107 = sub i64 %105, %106
  %108 = trunc i64 %107 to i32
  %109 = select i1 %104, i32 0, i32 %108
  call fastcc void @remember_Ktype(ptr noundef %0, ptr noundef %102, i32 noundef %109) #23
  br label %110

110:                                              ; preds = %82, %100
  %111 = phi i32 [ %101, %100 ], [ %61, %82 ]
  %112 = icmp eq i32 %60, 1
  br i1 %112, label %118, label %113

113:                                              ; preds = %110
  %114 = load i32, ptr %0, align 8, !tbaa !38
  %115 = and i32 %114, 4
  %116 = icmp eq i32 %115, 0
  %117 = select i1 %116, ptr @.str.187, ptr @.str.186
  call fastcc void @string_append(ptr noundef nonnull %7, ptr noundef nonnull %117) #23
  br label %118

118:                                              ; preds = %110, %113
  %119 = icmp sgt i32 %60, 1
  br i1 %119, label %59, label %120

120:                                              ; preds = %118, %72, %96, %79, %75, %92, %82, %53
  %121 = phi i32 [ 1, %53 ], [ %111, %118 ], [ 0, %72 ], [ 0, %96 ], [ 0, %79 ], [ 0, %75 ], [ 0, %92 ], [ 0, %82 ]
  %122 = load ptr, ptr %7, align 8
  %123 = load ptr, ptr %57, align 8
  %124 = icmp eq ptr %122, %123
  %125 = ptrtoint ptr %123 to i64
  %126 = ptrtoint ptr %122 to i64
  %127 = sub i64 %125, %126
  %128 = trunc i64 %127 to i32
  %129 = select i1 %124, i32 0, i32 %128
  call fastcc void @remember_Btype(ptr noundef %0, ptr noundef %122, i32 noundef %129, i32 noundef %9) #23
  br i1 %22, label %130, label %141

130:                                              ; preds = %120
  %131 = load i32, ptr %0, align 8, !tbaa !38
  %132 = and i32 %131, 4
  %133 = icmp eq i32 %132, 0
  %134 = select i1 %133, ptr @.str.187, ptr @.str.186
  call fastcc void @string_append(ptr noundef nonnull %7, ptr noundef nonnull %134) #23
  %135 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 11
  %136 = load i32, ptr %135, align 4, !tbaa !86
  %137 = and i32 %136, 1
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %130
  call fastcc void @string_append(ptr noundef nonnull %7, ptr noundef nonnull @.str.139) #23
  br label %140

140:                                              ; preds = %139, %130
  call fastcc void @string_appends(ptr noundef nonnull %7, ptr noundef nonnull %8) #23
  br label %141

141:                                              ; preds = %140, %120
  %142 = icmp eq i32 %4, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %141
  call fastcc void @string_appends(ptr noundef %2, ptr noundef nonnull %7) #23
  br label %155

144:                                              ; preds = %141
  %145 = load ptr, ptr %2, align 8, !tbaa !44
  %146 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !46
  %148 = icmp eq ptr %145, %147
  br i1 %148, label %154, label %149

149:                                              ; preds = %144
  %150 = load i32, ptr %0, align 8, !tbaa !38
  %151 = and i32 %150, 4
  %152 = icmp eq i32 %151, 0
  %153 = select i1 %152, ptr @.str.187, ptr @.str.186
  call fastcc void @string_append(ptr noundef nonnull %7, ptr noundef nonnull %153) #23
  br label %154

154:                                              ; preds = %149, %144
  call fastcc void @string_prepends(ptr noundef nonnull %2, ptr noundef nonnull %7) #23
  br label %155

155:                                              ; preds = %154, %143
  call fastcc void @string_delete(ptr noundef nonnull %8) #23
  call fastcc void @string_delete(ptr noundef nonnull %7) #23
  br label %156

156:                                              ; preds = %40, %27, %30, %50, %155
  %157 = phi i32 [ %121, %155 ], [ 0, %50 ], [ 0, %30 ], [ 0, %27 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #22
  ret i32 %157
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @demangle_template(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 !prof !34 !PGOFuncName !104 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.string, align 8
  %9 = alloca %struct.string, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #22
  %10 = load ptr, ptr %1, align 8, !tbaa !42
  %11 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %11, ptr %1, align 8, !tbaa !42
  %12 = icmp ne i32 %4, 0
  br i1 %12, label %13, label %73

13:                                               ; preds = %6
  %14 = load i8, ptr %11, align 1, !tbaa !35
  %15 = icmp eq i8 %14, 122
  br i1 %15, label %16, label %46

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, ptr %10, i64 3
  store ptr %17, ptr %1, align 8, !tbaa !42
  %18 = tail call fastcc i32 @consume_count_with_underscores(ptr noundef nonnull %1) #23
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %243, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 16
  %22 = load ptr, ptr %21, align 8, !tbaa !66
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 17
  %26 = load i32, ptr %25, align 8, !tbaa !67
  %27 = icmp slt i32 %18, %26
  br i1 %27, label %28, label %243

28:                                               ; preds = %24, %20
  %29 = tail call fastcc i32 @consume_count_with_underscores(ptr noundef nonnull %1) #23
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %243, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %21, align 8, !tbaa !66
  %33 = icmp eq ptr %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %31
  %35 = sext i32 %18 to i64
  %36 = getelementptr inbounds ptr, ptr %32, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !42
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef %37) #23
  %38 = icmp eq ptr %3, null
  br i1 %38, label %73, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %21, align 8, !tbaa !66
  %41 = getelementptr inbounds ptr, ptr %40, i64 %35
  %42 = load ptr, ptr %41, align 8, !tbaa !42
  tail call fastcc void @string_append(ptr noundef nonnull %3, ptr noundef %42) #23
  br label %73

43:                                               ; preds = %31
  tail call fastcc void @string_append_template_idx(ptr noundef %2, i32 noundef %18) #23
  %44 = icmp eq ptr %3, null
  br i1 %44, label %73, label %45

45:                                               ; preds = %43
  tail call fastcc void @string_append_template_idx(ptr noundef nonnull %3, i32 noundef %18) #23
  br label %73

46:                                               ; preds = %13
  %47 = tail call fastcc i32 @consume_count(ptr noundef nonnull %1) #23
  store i32 %47, ptr %7, align 4, !tbaa !59
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %243, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %1, align 8, !tbaa !42
  %51 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %50) #23
  %52 = trunc i64 %51 to i32
  %53 = icmp sgt i32 %47, %52
  br i1 %53, label %243, label %54

54:                                               ; preds = %49
  %55 = load i32, ptr %0, align 8, !tbaa !38
  %56 = and i32 %55, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %50, ptr noundef nonnull dereferenceable(9) @.str.197, i64 noundef 8) #23
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %54, %58
  tail call fastcc void @string_appendn(ptr noundef %2, ptr noundef %50, i32 noundef %47) #23
  %62 = load ptr, ptr %1, align 8, !tbaa !42
  br label %63

63:                                               ; preds = %61, %58
  %64 = phi ptr [ %62, %61 ], [ %50, %58 ]
  %65 = phi i1 [ true, %61 ], [ false, %58 ]
  %66 = icmp eq ptr %3, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  tail call fastcc void @string_appendn(ptr noundef nonnull %3, ptr noundef %64, i32 noundef %47) #23
  %68 = load ptr, ptr %1, align 8, !tbaa !42
  br label %69

69:                                               ; preds = %63, %67
  %70 = phi ptr [ %64, %63 ], [ %68, %67 ]
  %71 = zext nneg i32 %47 to i64
  %72 = getelementptr inbounds i8, ptr %70, i64 %71
  store ptr %72, ptr %1, align 8, !tbaa !42
  br i1 %65, label %73, label %76

73:                                               ; preds = %69, %6, %39, %34, %45, %43
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.44) #23
  %74 = call fastcc i32 @get_count(ptr noundef nonnull %1, ptr noundef nonnull %7) #23, !range !58
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %243, label %81

76:                                               ; preds = %69
  %77 = call fastcc i32 @get_count(ptr noundef nonnull %1, ptr noundef nonnull %7) #23, !range !58
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %243, label %79

79:                                               ; preds = %76
  %80 = load i32, ptr %7, align 4, !tbaa !59
  br label %98

81:                                               ; preds = %73
  %82 = load i32, ptr %7, align 4, !tbaa !59
  br i1 %12, label %98, label %83

83:                                               ; preds = %81
  %84 = sext i32 %82 to i64
  %85 = shl nsw i64 %84, 3
  %86 = tail call ptr @xmalloc(i64 noundef %85) #24
  %87 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 16
  store ptr %86, ptr %87, align 8, !tbaa !66
  %88 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 17
  store i32 %82, ptr %88, align 8, !tbaa !67
  %89 = icmp sgt i32 %82, 0
  br i1 %89, label %90, label %219

90:                                               ; preds = %83
  %91 = zext nneg i32 %82 to i64
  br label %92

92:                                               ; preds = %90, %92
  %93 = phi i64 [ 0, %90 ], [ %96, %92 ]
  %94 = load ptr, ptr %87, align 8, !tbaa !66
  %95 = getelementptr inbounds ptr, ptr %94, i64 %93
  store ptr null, ptr %95, align 8, !tbaa !42
  %96 = add nuw nsw i64 %93, 1
  %97 = icmp eq i64 %96, %91
  br i1 %97, label %98, label %92, !llvm.loop !105

98:                                               ; preds = %92, %79, %81
  %99 = phi i32 [ %82, %81 ], [ %80, %79 ], [ %82, %92 ]
  %100 = phi i1 [ true, %81 ], [ false, %79 ], [ true, %92 ]
  %101 = icmp sgt i32 %99, 0
  br i1 %101, label %102, label %215

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 16
  %104 = getelementptr inbounds %struct.string, ptr %8, i64 0, i32 1
  %105 = getelementptr inbounds %struct.string, ptr %9, i64 0, i32 1
  %106 = zext nneg i32 %99 to i64
  br label %107

107:                                              ; preds = %102, %210
  %108 = phi i64 [ 0, %102 ], [ %212, %210 ]
  %109 = phi i1 [ true, %102 ], [ false, %210 ]
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.166) #23
  br label %111

111:                                              ; preds = %110, %107
  %112 = load ptr, ptr %1, align 8, !tbaa !42
  %113 = load i8, ptr %112, align 1, !tbaa !35
  switch i8 %113, label %176 [
    i8 90, label %114
    i8 122, label %141
  ]

114:                                              ; preds = %111
  %115 = getelementptr inbounds i8, ptr %112, i64 1
  store ptr %115, ptr %1, align 8, !tbaa !42
  %116 = call fastcc i32 @do_type(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %8) #23, !range !43
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %214, label %118

118:                                              ; preds = %114
  call fastcc void @string_appends(ptr noundef %2, ptr noundef nonnull %8) #23
  br i1 %12, label %140, label %119

119:                                              ; preds = %118
  %120 = load ptr, ptr %104, align 8, !tbaa !46
  %121 = load ptr, ptr %8, align 8, !tbaa !44
  %122 = ptrtoint ptr %120 to i64
  %123 = ptrtoint ptr %121 to i64
  %124 = sub i64 %122, %123
  %125 = shl i64 %124, 32
  %126 = add i64 %125, 4294967296
  %127 = ashr exact i64 %126, 32
  %128 = tail call ptr @xmalloc(i64 noundef %127) #24
  %129 = load ptr, ptr %103, align 8, !tbaa !66
  %130 = getelementptr inbounds ptr, ptr %129, i64 %108
  store ptr %128, ptr %130, align 8, !tbaa !42
  %131 = load ptr, ptr %103, align 8, !tbaa !66
  %132 = getelementptr inbounds ptr, ptr %131, i64 %108
  %133 = load ptr, ptr %132, align 8, !tbaa !42
  %134 = load ptr, ptr %8, align 8, !tbaa !44
  %135 = ashr exact i64 %125, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %133, ptr align 1 %134, i64 %135, i1 false)
  %136 = load ptr, ptr %103, align 8, !tbaa !66
  %137 = getelementptr inbounds ptr, ptr %136, i64 %108
  %138 = load ptr, ptr %137, align 8, !tbaa !42
  %139 = getelementptr inbounds i8, ptr %138, i64 %135
  store i8 0, ptr %139, align 1, !tbaa !35
  br label %140

140:                                              ; preds = %118, %119
  call fastcc void @string_delete(ptr noundef nonnull %8) #23
  br label %210

141:                                              ; preds = %111
  %142 = getelementptr inbounds i8, ptr %112, i64 1
  store ptr %142, ptr %1, align 8, !tbaa !42
  %143 = tail call fastcc i32 @demangle_template_template_parm(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #23
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %215, label %145

145:                                              ; preds = %141
  %146 = tail call fastcc i32 @consume_count(ptr noundef nonnull %1) #23
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %210

148:                                              ; preds = %145
  %149 = load ptr, ptr %1, align 8, !tbaa !42
  %150 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %149) #23
  %151 = trunc i64 %150 to i32
  %152 = icmp sgt i32 %146, %151
  br i1 %152, label %210, label %153

153:                                              ; preds = %148
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.198) #23
  %154 = load ptr, ptr %1, align 8, !tbaa !42
  tail call fastcc void @string_appendn(ptr noundef %2, ptr noundef %154, i32 noundef %146) #23
  br i1 %12, label %155, label %157

155:                                              ; preds = %153
  %156 = zext nneg i32 %146 to i64
  br label %172

157:                                              ; preds = %153
  %158 = add nuw nsw i32 %146, 1
  %159 = zext nneg i32 %158 to i64
  %160 = tail call ptr @xmalloc(i64 noundef %159) #24
  %161 = load ptr, ptr %103, align 8, !tbaa !66
  %162 = getelementptr inbounds ptr, ptr %161, i64 %108
  store ptr %160, ptr %162, align 8, !tbaa !42
  %163 = load ptr, ptr %103, align 8, !tbaa !66
  %164 = getelementptr inbounds ptr, ptr %163, i64 %108
  %165 = load ptr, ptr %164, align 8, !tbaa !42
  %166 = load ptr, ptr %1, align 8, !tbaa !42
  %167 = zext nneg i32 %146 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %165, ptr align 1 %166, i64 %167, i1 false)
  %168 = load ptr, ptr %103, align 8, !tbaa !66
  %169 = getelementptr inbounds ptr, ptr %168, i64 %108
  %170 = load ptr, ptr %169, align 8, !tbaa !42
  %171 = getelementptr inbounds i8, ptr %170, i64 %167
  store i8 0, ptr %171, align 1, !tbaa !35
  br label %172

172:                                              ; preds = %155, %157
  %173 = phi i64 [ %156, %155 ], [ %167, %157 ]
  %174 = load ptr, ptr %1, align 8, !tbaa !42
  %175 = getelementptr inbounds i8, ptr %174, i64 %173
  store ptr %175, ptr %1, align 8, !tbaa !42
  br label %210

176:                                              ; preds = %111
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #22
  %177 = call fastcc i32 @do_type(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %8) #23, !range !43
  call fastcc void @string_delete(ptr noundef nonnull %8) #23
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %207, label %179

179:                                              ; preds = %176
  br i1 %12, label %180, label %183

180:                                              ; preds = %179
  %181 = tail call fastcc i32 @demangle_template_value_parm(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %177) #23
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %207, label %208

183:                                              ; preds = %179
  call fastcc void @string_init(ptr noundef nonnull %9) #23
  %184 = call fastcc i32 @demangle_template_value_parm(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %9, i32 noundef %177) #23
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  call fastcc void @string_delete(ptr noundef nonnull %9) #23
  br label %207

187:                                              ; preds = %183
  %188 = load ptr, ptr %105, align 8, !tbaa !46
  %189 = load ptr, ptr %9, align 8, !tbaa !44
  %190 = ptrtoint ptr %188 to i64
  %191 = ptrtoint ptr %189 to i64
  %192 = sub i64 %190, %191
  %193 = shl i64 %192, 32
  %194 = add i64 %193, 4294967296
  %195 = ashr exact i64 %194, 32
  %196 = tail call ptr @xmalloc(i64 noundef %195) #24
  %197 = load ptr, ptr %103, align 8, !tbaa !66
  %198 = getelementptr inbounds ptr, ptr %197, i64 %108
  store ptr %196, ptr %198, align 8, !tbaa !42
  %199 = load ptr, ptr %103, align 8, !tbaa !66
  %200 = getelementptr inbounds ptr, ptr %199, i64 %108
  %201 = load ptr, ptr %200, align 8, !tbaa !42
  %202 = ashr exact i64 %193, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %201, ptr align 1 %189, i64 %202, i1 false)
  %203 = load ptr, ptr %103, align 8, !tbaa !66
  %204 = getelementptr inbounds ptr, ptr %203, i64 %108
  %205 = load ptr, ptr %204, align 8, !tbaa !42
  %206 = getelementptr inbounds i8, ptr %205, i64 %202
  store i8 0, ptr %206, align 1, !tbaa !35
  call fastcc void @string_appends(ptr noundef %2, ptr noundef nonnull %9) #23
  call fastcc void @string_delete(ptr noundef nonnull %9) #23
  br label %208

207:                                              ; preds = %176, %180, %186
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #22
  br i1 %100, label %219, label %217

208:                                              ; preds = %180, %187
  %209 = phi i32 [ %184, %187 ], [ %181, %180 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #22
  br label %210

210:                                              ; preds = %208, %145, %148, %172, %140
  %211 = phi i32 [ %116, %140 ], [ %209, %208 ], [ %143, %172 ], [ %143, %148 ], [ %143, %145 ]
  %212 = add nuw nsw i64 %108, 1
  %213 = icmp eq i64 %212, %106
  br i1 %213, label %215, label %107, !llvm.loop !106

214:                                              ; preds = %114
  call fastcc void @string_delete(ptr noundef nonnull %8) #23
  br i1 %100, label %219, label %217

215:                                              ; preds = %210, %141, %98
  %216 = phi i32 [ 0, %98 ], [ %211, %210 ], [ 0, %141 ]
  br i1 %100, label %219, label %217

217:                                              ; preds = %207, %214, %215
  %218 = phi i32 [ 0, %214 ], [ %216, %215 ], [ 0, %207 ]
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.163) #23
  br label %228

219:                                              ; preds = %83, %207, %214, %215
  %220 = phi i32 [ %216, %215 ], [ 0, %214 ], [ 0, %207 ], [ 0, %83 ]
  %221 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !46
  %223 = getelementptr inbounds i8, ptr %222, i64 -1
  %224 = load i8, ptr %223, align 1, !tbaa !35
  %225 = icmp eq i8 %224, 62
  br i1 %225, label %226, label %227

226:                                              ; preds = %219
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198) #23
  br label %227

227:                                              ; preds = %226, %219
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.48) #23
  br label %228

228:                                              ; preds = %227, %217
  %229 = phi i32 [ %220, %227 ], [ %218, %217 ]
  %230 = icmp ne i32 %5, 0
  %231 = and i1 %12, %230
  br i1 %231, label %232, label %243

232:                                              ; preds = %228
  %233 = tail call fastcc i32 @register_Btype(ptr noundef %0) #23
  %234 = load ptr, ptr %2, align 8, !tbaa !44
  %235 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !46
  %237 = icmp eq ptr %234, %236
  %238 = ptrtoint ptr %236 to i64
  %239 = ptrtoint ptr %234 to i64
  %240 = sub i64 %238, %239
  %241 = trunc i64 %240 to i32
  %242 = select i1 %237, i32 0, i32 %241
  tail call fastcc void @remember_Btype(ptr noundef %0, ptr noundef %234, i32 noundef %242, i32 noundef %233) #23
  br label %243

243:                                              ; preds = %76, %28, %24, %16, %228, %232, %73, %46, %49
  %244 = phi i32 [ 0, %49 ], [ 0, %46 ], [ 0, %73 ], [ %229, %232 ], [ %229, %228 ], [ 0, %16 ], [ 0, %24 ], [ 0, %28 ], [ 0, %76 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  ret i32 %244
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @consume_count(ptr nocapture noundef %0) unnamed_addr #13 !prof !34 !PGOFuncName !107 {
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  %3 = load i8, ptr %2, align 1, !tbaa !35
  %4 = zext i8 %3 to i64
  %5 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !47
  %7 = and i16 %6, 4
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %1, %9
  %10 = phi i8 [ %18, %9 ], [ %3, %1 ]
  %11 = phi i32 [ %16, %9 ], [ 0, %1 ]
  %12 = phi ptr [ %17, %9 ], [ %2, %1 ]
  %13 = mul nsw i32 %11, 10
  %14 = sext i8 %10 to i32
  %15 = add i32 %13, -48
  %16 = add i32 %15, %14
  %17 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %17, ptr %0, align 8, !tbaa !42
  %18 = load i8, ptr %17, align 1, !tbaa !35
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !47
  %22 = and i16 %21, 4
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %9, !llvm.loop !108

24:                                               ; preds = %9
  %25 = tail call i32 @llvm.smax.i32(i32 %16, i32 -1)
  br label %26

26:                                               ; preds = %1, %24
  %27 = phi i32 [ %25, %24 ], [ -1, %1 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @string_appendn(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 !prof !34 !PGOFuncName !109 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  tail call fastcc void @string_need(ptr noundef %0, i32 noundef %2) #23
  %6 = getelementptr inbounds %struct.string, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %1, i64 %8, i1 false)
  %9 = load ptr, ptr %6, align 8, !tbaa !46
  %10 = getelementptr inbounds i8, ptr %9, i64 %8
  store ptr %10, ptr %6, align 8, !tbaa !46
  br label %11

11:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @string_append(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #1 !prof !34 !PGOFuncName !110 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = load i8, ptr %1, align 1, !tbaa !35
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %9 = trunc i64 %8 to i32
  tail call fastcc void @string_need(ptr noundef %0, i32 noundef %9) #23
  %10 = getelementptr inbounds %struct.string, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = shl i64 %8, 32
  %13 = ashr exact i64 %12, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr nonnull align 1 %1, i64 %13, i1 false)
  %14 = load ptr, ptr %10, align 8, !tbaa !46
  %15 = getelementptr inbounds i8, ptr %14, i64 %13
  store ptr %15, ptr %10, align 8, !tbaa !46
  br label %16

16:                                               ; preds = %2, %4, %7
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @register_Btype(ptr nocapture noundef %0) unnamed_addr #1 !prof !34 !PGOFuncName !111 {
  %2 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !64
  %4 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !112
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  br label %21

10:                                               ; preds = %1
  %11 = icmp eq i32 %5, 0
  %12 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 3
  br i1 %11, label %13, label %15

13:                                               ; preds = %10
  store i32 5, ptr %4, align 4, !tbaa !112
  %14 = tail call ptr @xmalloc(i64 noundef 40) #24
  store ptr %14, ptr %12, align 8, !tbaa !65
  br label %21

15:                                               ; preds = %10
  %16 = shl nsw i32 %5, 1
  store i32 %16, ptr %4, align 4, !tbaa !112
  %17 = load ptr, ptr %12, align 8, !tbaa !65
  %18 = sext i32 %16 to i64
  %19 = shl nsw i64 %18, 3
  %20 = tail call ptr @xrealloc(ptr noundef %17, i64 noundef %19) #24
  store ptr %20, ptr %12, align 8, !tbaa !65
  br label %21

21:                                               ; preds = %7, %13, %15
  %22 = phi ptr [ %9, %7 ], [ %14, %13 ], [ %20, %15 ]
  %23 = load i32, ptr %2, align 4, !tbaa !64
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %2, align 4, !tbaa !64
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds ptr, ptr %22, i64 %25
  store ptr null, ptr %26, align 8, !tbaa !42
  ret i32 %23
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @consume_count_with_underscores(ptr nocapture noundef %0) unnamed_addr #13 !prof !34 !PGOFuncName !113 {
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  %3 = load i8, ptr %2, align 1, !tbaa !35
  %4 = icmp eq i8 %3, 95
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %2, i64 1
  store ptr %6, ptr %0, align 8, !tbaa !42
  %7 = load i8, ptr %6, align 1, !tbaa !35
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !47
  %11 = and i16 %10, 4
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %5
  %14 = tail call fastcc i32 @consume_count(ptr noundef nonnull %0) #23
  %15 = load ptr, ptr %0, align 8, !tbaa !42
  %16 = load i8, ptr %15, align 1, !tbaa !35
  %17 = icmp eq i8 %16, 95
  br i1 %17, label %24, label %28

18:                                               ; preds = %1
  %19 = add i8 %3, -58
  %20 = icmp ult i8 %19, -10
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = add nsw i8 %3, -48
  %23 = zext nneg i8 %22 to i32
  br label %24

24:                                               ; preds = %13, %21
  %25 = phi ptr [ %2, %21 ], [ %15, %13 ]
  %26 = phi i32 [ %23, %21 ], [ %14, %13 ]
  %27 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %27, ptr %0, align 8, !tbaa !42
  br label %28

28:                                               ; preds = %18, %13, %5, %24
  %29 = phi i32 [ %26, %24 ], [ -1, %5 ], [ -1, %13 ], [ -1, %18 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @string_clear(ptr nocapture noundef %0) unnamed_addr #16 !prof !34 !PGOFuncName !114 {
  %2 = load ptr, ptr %0, align 8, !tbaa !44
  %3 = getelementptr inbounds %struct.string, ptr %0, i64 0, i32 1
  store ptr %2, ptr %3, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @recursively_demangle(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #1 !prof !34 !PGOFuncName !115 {
  %5 = add nsw i32 %3, 1
  %6 = sext i32 %5 to i64
  %7 = tail call ptr @xmalloc(i64 noundef %6) #24
  %8 = load ptr, ptr %1, align 8, !tbaa !42
  %9 = sext i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %8, i64 %9, i1 false)
  %10 = getelementptr inbounds i8, ptr %7, i64 %9
  store i8 0, ptr %10, align 1, !tbaa !35
  %11 = load i32, ptr %0, align 8, !tbaa !38
  %12 = tail call ptr @cplus_demangle(ptr noundef %7, i32 noundef %11) #23
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull %12) #23
  tail call void @free(ptr noundef nonnull %12) #23
  br label %17

15:                                               ; preds = %4
  %16 = load ptr, ptr %1, align 8, !tbaa !42
  tail call fastcc void @string_appendn(ptr noundef %2, ptr noundef %16, i32 noundef %3) #23
  br label %17

17:                                               ; preds = %15, %14
  tail call void @free(ptr noundef nonnull %7) #23
  %18 = load ptr, ptr %1, align 8, !tbaa !42
  %19 = getelementptr inbounds i8, ptr %18, i64 %9
  store ptr %19, ptr %1, align 8, !tbaa !42
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @string_appends(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !34 !PGOFuncName !116 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.string, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %3 to i64
  %10 = sub i64 %8, %9
  %11 = trunc i64 %10 to i32
  tail call fastcc void @string_need(ptr noundef %0, i32 noundef %11) #23
  %12 = getelementptr inbounds %struct.string, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = load ptr, ptr %1, align 8, !tbaa !44
  %15 = shl i64 %10, 32
  %16 = ashr exact i64 %15, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr align 1 %14, i64 %16, i1 false)
  %17 = load ptr, ptr %12, align 8, !tbaa !46
  %18 = getelementptr inbounds i8, ptr %17, i64 %16
  store ptr %18, ptr %12, align 8, !tbaa !46
  br label %19

19:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remember_Ktype(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 !prof !34 !PGOFuncName !117 {
  %4 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !103
  %6 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !118
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %22, label %9

9:                                                ; preds = %3
  %10 = icmp eq i32 %7, 0
  %11 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 2
  br i1 %10, label %12, label %14

12:                                               ; preds = %9
  store i32 5, ptr %6, align 8, !tbaa !118
  %13 = tail call ptr @xmalloc(i64 noundef 40) #24
  br label %20

14:                                               ; preds = %9
  %15 = shl nsw i32 %7, 1
  store i32 %15, ptr %6, align 8, !tbaa !118
  %16 = load ptr, ptr %11, align 8, !tbaa !70
  %17 = sext i32 %15 to i64
  %18 = shl nsw i64 %17, 3
  %19 = tail call ptr @xrealloc(ptr noundef %16, i64 noundef %18) #24
  br label %20

20:                                               ; preds = %14, %12
  %21 = phi ptr [ %13, %12 ], [ %19, %14 ]
  store ptr %21, ptr %11, align 8, !tbaa !70
  br label %22

22:                                               ; preds = %20, %3
  %23 = add nsw i32 %2, 1
  %24 = sext i32 %23 to i64
  %25 = tail call ptr @xmalloc(i64 noundef %24) #24
  %26 = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %1, i64 %26, i1 false)
  %27 = getelementptr inbounds i8, ptr %25, i64 %26
  store i8 0, ptr %27, align 1, !tbaa !35
  %28 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !70
  %30 = load i32, ptr %4, align 8, !tbaa !103
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %4, align 8, !tbaa !103
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds ptr, ptr %29, i64 %32
  store ptr %25, ptr %33, align 8, !tbaa !42
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remember_Btype(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 !prof !34 !PGOFuncName !119 {
  %5 = add nsw i32 %2, 1
  %6 = sext i32 %5 to i64
  %7 = tail call ptr @xmalloc(i64 noundef %6) #24
  %8 = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %1, i64 %8, i1 false)
  %9 = getelementptr inbounds i8, ptr %7, i64 %8
  store i8 0, ptr %9, align 1, !tbaa !35
  %10 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = sext i32 %3 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %7, ptr %13, align 8, !tbaa !42
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @string_prepends(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !34 !PGOFuncName !120 {
  %3 = load ptr, ptr %1, align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.string, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %3 to i64
  %10 = sub i64 %8, %9
  %11 = trunc i64 %10 to i32
  tail call fastcc void @string_prependn(ptr noundef %0, ptr noundef %3, i32 noundef %11) #23
  br label %12

12:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @string_need(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 !prof !34 !PGOFuncName !121 {
  %3 = load ptr, ptr %0, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = tail call i32 @llvm.smax.i32(i32 %1, i32 32)
  %7 = zext nneg i32 %6 to i64
  %8 = tail call ptr @xmalloc(i64 noundef %7) #24
  store ptr %8, ptr %0, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.string, ptr %0, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !46
  %10 = getelementptr inbounds i8, ptr %8, i64 %7
  %11 = getelementptr inbounds %struct.string, ptr %0, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !122
  br label %34

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.string, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !122
  %15 = getelementptr inbounds %struct.string, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !46
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
  %29 = tail call ptr @xrealloc(ptr noundef nonnull %3, i64 noundef %28) #24
  store ptr %29, ptr %0, align 8, !tbaa !44
  %30 = shl i64 %24, 32
  %31 = ashr exact i64 %30, 32
  %32 = getelementptr inbounds i8, ptr %29, i64 %31
  store ptr %32, ptr %15, align 8, !tbaa !46
  %33 = getelementptr inbounds i8, ptr %29, i64 %28
  store ptr %33, ptr %13, align 8, !tbaa !122
  br label %34

34:                                               ; preds = %12, %22, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @string_prependn(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 !prof !34 !PGOFuncName !123 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %3
  tail call fastcc void @string_need(ptr noundef %0, i32 noundef %2) #23
  %6 = getelementptr inbounds %struct.string, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds i8, ptr %7, i64 -1
  %9 = load ptr, ptr %0, align 8, !tbaa !44
  %10 = icmp ult ptr %8, %9
  %11 = sext i32 %2 to i64
  br i1 %10, label %19, label %12

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %16, %12 ], [ %8, %5 ]
  %14 = load i8, ptr %13, align 1, !tbaa !35
  %15 = getelementptr inbounds i8, ptr %13, i64 %11
  store i8 %14, ptr %15, align 1, !tbaa !35
  %16 = getelementptr inbounds i8, ptr %13, i64 -1
  %17 = load ptr, ptr %0, align 8, !tbaa !44
  %18 = icmp ult ptr %16, %17
  br i1 %18, label %19, label %12, !llvm.loop !124

19:                                               ; preds = %12, %5
  %20 = phi ptr [ %9, %5 ], [ %17, %12 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %20, ptr align 1 %1, i64 %11, i1 false)
  %21 = load ptr, ptr %6, align 8, !tbaa !46
  %22 = getelementptr inbounds i8, ptr %21, i64 %11
  store ptr %22, ptr %6, align 8, !tbaa !46
  br label %23

23:                                               ; preds = %19, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @string_append_template_idx(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 !prof !34 !PGOFuncName !125 {
  %3 = alloca [33 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %3) #22
  %4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.199, i32 noundef %1) #23
  call fastcc void @string_append(ptr noundef %0, ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %3) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @get_count(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #13 !prof !34 !PGOFuncName !126 {
  %3 = load ptr, ptr %0, align 8, !tbaa !42
  %4 = load i8, ptr %3, align 1, !tbaa !35
  %5 = zext i8 %4 to i64
  %6 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !47
  %8 = and i16 %7, 4
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %39, label %10

10:                                               ; preds = %2
  %11 = sext i8 %4 to i32
  %12 = add nsw i32 %11, -48
  store i32 %12, ptr %1, align 4, !tbaa !59
  %13 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %13, ptr %0, align 8, !tbaa !42
  %14 = load i8, ptr %13, align 1, !tbaa !35
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !47
  %18 = and i16 %17, 4
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %10, %20
  %21 = phi i8 [ %29, %20 ], [ %14, %10 ]
  %22 = phi ptr [ %28, %20 ], [ %13, %10 ]
  %23 = phi i32 [ %27, %20 ], [ %12, %10 ]
  %24 = mul nsw i32 %23, 10
  %25 = sext i8 %21 to i32
  %26 = add i32 %24, -48
  %27 = add i32 %26, %25
  %28 = getelementptr inbounds i8, ptr %22, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !35
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !47
  %33 = and i16 %32, 4
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %20, !llvm.loop !127

35:                                               ; preds = %20
  %36 = icmp eq i8 %29, 95
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = getelementptr inbounds i8, ptr %22, i64 2
  store ptr %38, ptr %0, align 8, !tbaa !42
  store i32 %27, ptr %1, align 4, !tbaa !59
  br label %39

39:                                               ; preds = %35, %37, %10, %2
  %40 = phi i32 [ 0, %2 ], [ 1, %10 ], [ 1, %37 ], [ 1, %35 ]
  ret i32 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @demangle_template_template_parm(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #1 !prof !34 !PGOFuncName !128 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.string, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.200) #23
  %6 = call fastcc i32 @get_count(ptr noundef %1, ptr noundef nonnull %4) #23, !range !58
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %4, align 4, !tbaa !59
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %8, %29
  %12 = phi i32 [ %30, %29 ], [ 1, %8 ]
  %13 = phi i1 [ false, %29 ], [ true, %8 ]
  %14 = phi i32 [ %31, %29 ], [ 0, %8 ]
  br i1 %13, label %16, label %15

15:                                               ; preds = %11
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.166) #23
  br label %16

16:                                               ; preds = %15, %11
  %17 = load ptr, ptr %1, align 8, !tbaa !42
  %18 = load i8, ptr %17, align 1, !tbaa !35
  switch i8 %18, label %25 [
    i8 90, label %19
    i8 122, label %21
  ]

19:                                               ; preds = %16
  %20 = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %20, ptr %1, align 8, !tbaa !42
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.201) #23
  br label %29

21:                                               ; preds = %16
  %22 = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %22, ptr %1, align 8, !tbaa !42
  %23 = tail call fastcc i32 @demangle_template_template_parm(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #23
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %34, label %29

25:                                               ; preds = %16
  %26 = call fastcc i32 @do_type(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %5) #23, !range !43
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  call fastcc void @string_appends(ptr noundef %2, ptr noundef nonnull %5) #23
  call fastcc void @string_delete(ptr noundef nonnull %5) #23
  br label %29

29:                                               ; preds = %28, %21, %19
  %30 = phi i32 [ %12, %19 ], [ %23, %21 ], [ %26, %28 ]
  %31 = add nuw nsw i32 %14, 1
  %32 = icmp eq i32 %31, %9
  br i1 %32, label %34, label %11, !llvm.loop !129

33:                                               ; preds = %25
  call fastcc void @string_delete(ptr noundef nonnull %5) #23
  br label %34

34:                                               ; preds = %21, %29, %8, %33, %3
  %35 = phi i32 [ 1, %3 ], [ 0, %33 ], [ 1, %8 ], [ 0, %21 ], [ %30, %29 ]
  %36 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = getelementptr inbounds i8, ptr %37, i64 -1
  %39 = load i8, ptr %38, align 1, !tbaa !35
  %40 = icmp eq i8 %39, 62
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198) #23
  br label %42

42:                                               ; preds = %41, %34
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.202) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret i32 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @demangle_template_value_parm(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #1 !prof !34 !PGOFuncName !130 {
  %5 = alloca [2 x i8], align 1
  %6 = load ptr, ptr %1, align 8, !tbaa !42
  %7 = load i8, ptr %6, align 1, !tbaa !35
  %8 = icmp eq i8 %7, 89
  br i1 %8, label %9, label %32

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %10, ptr %1, align 8, !tbaa !42
  %11 = tail call fastcc i32 @consume_count_with_underscores(ptr noundef nonnull %1) #23
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %85, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 16
  %15 = load ptr, ptr %14, align 8, !tbaa !66
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 17
  %19 = load i32, ptr %18, align 8, !tbaa !67
  %20 = icmp slt i32 %11, %19
  br i1 %20, label %21, label %85

21:                                               ; preds = %17, %13
  %22 = tail call fastcc i32 @consume_count_with_underscores(ptr noundef nonnull %1) #23
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %85, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %14, align 8, !tbaa !66
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = sext i32 %11 to i64
  %29 = getelementptr inbounds ptr, ptr %25, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !42
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef %30) #23
  br label %85

31:                                               ; preds = %24
  tail call fastcc void @string_append_template_idx(ptr noundef %2, i32 noundef %11) #23
  br label %85

32:                                               ; preds = %4
  switch i32 %3, label %54 [
    i32 3, label %33
    i32 5, label %35
    i32 4, label %48
    i32 6, label %52
  ]

33:                                               ; preds = %32
  %34 = tail call fastcc i32 @demangle_integral_value(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #23
  br label %85

35:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #22
  %36 = icmp eq i8 %7, 109
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  tail call fastcc void @string_appendn(ptr noundef %2, ptr noundef nonnull @.str.54, i32 noundef 1) #23
  %38 = load ptr, ptr %1, align 8, !tbaa !42
  %39 = getelementptr inbounds i8, ptr %38, i64 1
  store ptr %39, ptr %1, align 8, !tbaa !42
  br label %40

40:                                               ; preds = %37, %35
  tail call fastcc void @string_appendn(ptr noundef %2, ptr noundef nonnull @.str.203, i32 noundef 1) #23
  %41 = tail call fastcc i32 @consume_count(ptr noundef nonnull %1) #23
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = trunc i32 %41 to i8
  store i8 %44, ptr %5, align 1, !tbaa !35
  %45 = getelementptr inbounds [2 x i8], ptr %5, i64 0, i64 1
  store i8 0, ptr %45, align 1, !tbaa !35
  call fastcc void @string_appendn(ptr noundef %2, ptr noundef nonnull %5, i32 noundef 1) #23
  tail call fastcc void @string_appendn(ptr noundef %2, ptr noundef nonnull @.str.203, i32 noundef 1) #23
  br label %46

46:                                               ; preds = %40, %43
  %47 = phi i32 [ 1, %43 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #22
  br label %85

48:                                               ; preds = %32
  %49 = tail call fastcc i32 @consume_count(ptr noundef nonnull %1) #23
  switch i32 %49, label %85 [
    i32 0, label %50
    i32 1, label %51
  ]

50:                                               ; preds = %48
  tail call fastcc void @string_appendn(ptr noundef %2, ptr noundef nonnull @.str.204, i32 noundef 5) #23
  br label %85

51:                                               ; preds = %48
  tail call fastcc void @string_appendn(ptr noundef %2, ptr noundef nonnull @.str.205, i32 noundef 4) #23
  br label %85

52:                                               ; preds = %32
  %53 = tail call fastcc i32 @demangle_real_value(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #23
  br label %85

54:                                               ; preds = %32
  %55 = icmp eq i32 %3, 1
  %56 = add i32 %3, -1
  %57 = icmp ult i32 %56, 2
  br i1 %57, label %58, label %85

58:                                               ; preds = %54
  %59 = icmp eq i8 %7, 81
  br i1 %59, label %60, label %62

60:                                               ; preds = %58
  %61 = tail call fastcc i32 @demangle_qualified(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 0, i32 noundef 1) #23
  br label %85

62:                                               ; preds = %58
  %63 = tail call fastcc i32 @consume_count(ptr noundef nonnull %1) #23
  switch i32 %63, label %65 [
    i32 -1, label %85
    i32 0, label %64
  ]

64:                                               ; preds = %62
  tail call fastcc void @string_appendn(ptr noundef %2, ptr noundef nonnull @.str.206, i32 noundef 1) #23
  br label %81

65:                                               ; preds = %62
  %66 = add nuw nsw i32 %63, 1
  %67 = sext i32 %66 to i64
  %68 = tail call ptr @xmalloc(i64 noundef %67) #24
  %69 = load ptr, ptr %1, align 8, !tbaa !42
  %70 = sext i32 %63 to i64
  %71 = tail call ptr @strncpy(ptr noundef %68, ptr noundef %69, i64 noundef %70) #23
  %72 = getelementptr inbounds i8, ptr %68, i64 %70
  store i8 0, ptr %72, align 1, !tbaa !35
  %73 = load i32, ptr %0, align 8, !tbaa !38
  %74 = tail call ptr @cplus_demangle(ptr noundef %68, i32 noundef %73) #23
  br i1 %55, label %75, label %76

75:                                               ; preds = %65
  tail call fastcc void @string_appendn(ptr noundef %2, ptr noundef nonnull @.str.56, i32 noundef 1) #23
  br label %76

76:                                               ; preds = %75, %65
  %77 = icmp eq ptr %74, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %76
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull %74) #23
  tail call void @free(ptr noundef nonnull %74) #23
  br label %80

79:                                               ; preds = %76
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull %68) #23
  br label %80

80:                                               ; preds = %79, %78
  tail call void @free(ptr noundef nonnull %68) #23
  br label %81

81:                                               ; preds = %80, %64
  %82 = phi i64 [ %70, %80 ], [ 0, %64 ]
  %83 = load ptr, ptr %1, align 8, !tbaa !42
  %84 = getelementptr inbounds i8, ptr %83, i64 %82
  store ptr %84, ptr %1, align 8, !tbaa !42
  br label %85

85:                                               ; preds = %62, %81, %21, %17, %9, %46, %52, %60, %54, %33, %27, %31, %48, %51, %50
  %86 = phi i32 [ %34, %33 ], [ %47, %46 ], [ %53, %52 ], [ %61, %60 ], [ 1, %54 ], [ 1, %27 ], [ 1, %31 ], [ 1, %50 ], [ 1, %51 ], [ 0, %48 ], [ -1, %9 ], [ -1, %17 ], [ -1, %21 ], [ %63, %62 ], [ 1, %81 ]
  ret i32 %86
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @demangle_integral_value(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #1 !prof !34 !PGOFuncName !131 {
  %4 = alloca [32 x i8], align 16
  %5 = load ptr, ptr %1, align 8, !tbaa !42
  %6 = load i8, ptr %5, align 1, !tbaa !35
  switch i8 %6, label %20 [
    i8 69, label %7
    i8 81, label %9
    i8 75, label %9
    i8 95, label %11
    i8 109, label %15
  ]

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @demangle_expression(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 3) #23
  br label %43

9:                                                ; preds = %3, %3
  %10 = tail call fastcc i32 @demangle_qualified(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 0, i32 noundef 1) #23
  br label %43

11:                                               ; preds = %3
  %12 = getelementptr inbounds i8, ptr %5, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !35
  %14 = icmp eq i8 %13, 109
  br i1 %14, label %15, label %23

15:                                               ; preds = %3, %11
  %16 = phi i64 [ 2, %11 ], [ 1, %3 ]
  %17 = phi i1 [ false, %11 ], [ true, %3 ]
  tail call fastcc void @string_appendn(ptr noundef %2, ptr noundef nonnull @.str.54, i32 noundef 1) #23
  %18 = load ptr, ptr %1, align 8, !tbaa !42
  %19 = getelementptr inbounds i8, ptr %18, i64 %16
  store ptr %19, ptr %1, align 8, !tbaa !42
  br label %20

20:                                               ; preds = %15, %3
  %21 = phi i1 [ true, %3 ], [ %17, %15 ]
  %22 = tail call fastcc i32 @consume_count(ptr noundef nonnull %1) #23
  br label %25

23:                                               ; preds = %11
  %24 = tail call fastcc i32 @consume_count_with_underscores(ptr noundef nonnull %1) #23
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi i1 [ %21, %20 ], [ true, %23 ]
  %27 = phi i1 [ true, %20 ], [ false, %23 ]
  %28 = phi i32 [ %22, %20 ], [ %24, %23 ]
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %43, label %30

30:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  %31 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.207, i32 noundef %28) #23
  call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull %4) #23
  %32 = icmp sgt i32 %28, 9
  %33 = or i1 %27, %32
  %34 = xor i1 %33, true
  %35 = or i1 %26, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load ptr, ptr %1, align 8, !tbaa !42
  %38 = load i8, ptr %37, align 1, !tbaa !35
  %39 = icmp eq i8 %38, 95
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, ptr %37, i64 1
  store ptr %41, ptr %1, align 8, !tbaa !42
  br label %42

42:                                               ; preds = %30, %40, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  br label %43

43:                                               ; preds = %25, %42, %9, %7
  %44 = phi i32 [ %8, %7 ], [ %10, %9 ], [ 1, %42 ], [ 0, %25 ]
  ret i32 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @demangle_real_value(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #1 !prof !34 !PGOFuncName !132 {
  %4 = load ptr, ptr %1, align 8, !tbaa !42
  %5 = load i8, ptr %4, align 1, !tbaa !35
  switch i8 %5, label %12 [
    i8 69, label %6
    i8 109, label %8
  ]

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @demangle_expression(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 6) #23
  br label %74

8:                                                ; preds = %3
  tail call fastcc void @string_appendn(ptr noundef %2, ptr noundef nonnull @.str.54, i32 noundef 1) #23
  %9 = load ptr, ptr %1, align 8, !tbaa !42
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %10, ptr %1, align 8, !tbaa !42
  %11 = load i8, ptr %10, align 1, !tbaa !35
  br label %12

12:                                               ; preds = %3, %8
  %13 = phi i8 [ %5, %3 ], [ %11, %8 ]
  %14 = phi ptr [ %4, %3 ], [ %10, %8 ]
  %15 = zext i8 %13 to i64
  %16 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !47
  %18 = and i16 %17, 4
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %12, %20
  %21 = phi ptr [ %23, %20 ], [ %14, %12 ]
  tail call fastcc void @string_appendn(ptr noundef %2, ptr noundef nonnull %21, i32 noundef 1) #23
  %22 = load ptr, ptr %1, align 8, !tbaa !42
  %23 = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %23, ptr %1, align 8, !tbaa !42
  %24 = load i8, ptr %23, align 1, !tbaa !35
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !47
  %28 = and i16 %27, 4
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %20, !llvm.loop !133

30:                                               ; preds = %20, %12
  %31 = phi i8 [ %13, %12 ], [ %24, %20 ]
  %32 = icmp eq i8 %31, 46
  br i1 %32, label %33, label %52

33:                                               ; preds = %30
  tail call fastcc void @string_appendn(ptr noundef %2, ptr noundef nonnull @.str.186, i32 noundef 1) #23
  %34 = load ptr, ptr %1, align 8, !tbaa !42
  %35 = getelementptr inbounds i8, ptr %34, i64 1
  store ptr %35, ptr %1, align 8, !tbaa !42
  %36 = load i8, ptr %35, align 1, !tbaa !35
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa !47
  %40 = and i16 %39, 4
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %33, %42
  %43 = phi ptr [ %45, %42 ], [ %35, %33 ]
  tail call fastcc void @string_appendn(ptr noundef %2, ptr noundef nonnull %43, i32 noundef 1) #23
  %44 = load ptr, ptr %1, align 8, !tbaa !42
  %45 = getelementptr inbounds i8, ptr %44, i64 1
  store ptr %45, ptr %1, align 8, !tbaa !42
  %46 = load i8, ptr %45, align 1, !tbaa !35
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !47
  %50 = and i16 %49, 4
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %42, !llvm.loop !134

52:                                               ; preds = %42, %33, %30
  %53 = phi i8 [ %36, %33 ], [ %31, %30 ], [ %46, %42 ]
  %54 = icmp eq i8 %53, 101
  br i1 %54, label %55, label %74

55:                                               ; preds = %52
  tail call fastcc void @string_appendn(ptr noundef %2, ptr noundef nonnull @.str.210, i32 noundef 1) #23
  %56 = load ptr, ptr %1, align 8, !tbaa !42
  %57 = getelementptr inbounds i8, ptr %56, i64 1
  store ptr %57, ptr %1, align 8, !tbaa !42
  %58 = load i8, ptr %57, align 1, !tbaa !35
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %59
  %61 = load i16, ptr %60, align 2, !tbaa !47
  %62 = and i16 %61, 4
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %55, %64
  %65 = phi ptr [ %67, %64 ], [ %57, %55 ]
  tail call fastcc void @string_appendn(ptr noundef %2, ptr noundef nonnull %65, i32 noundef 1) #23
  %66 = load ptr, ptr %1, align 8, !tbaa !42
  %67 = getelementptr inbounds i8, ptr %66, i64 1
  store ptr %67, ptr %1, align 8, !tbaa !42
  %68 = load i8, ptr %67, align 1, !tbaa !35
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %69
  %71 = load i16, ptr %70, align 2, !tbaa !47
  %72 = and i16 %71, 4
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %74, label %64, !llvm.loop !135

74:                                               ; preds = %64, %55, %52, %6
  %75 = phi i32 [ %7, %6 ], [ 1, %52 ], [ 1, %55 ], [ 1, %64 ]
  ret i32 %75
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @demangle_expression(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #1 !prof !34 !PGOFuncName !136 {
  tail call fastcc void @string_appendn(ptr noundef %2, ptr noundef nonnull @.str.208, i32 noundef 1) #23
  %5 = load ptr, ptr %1, align 8, !tbaa !42
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %6, ptr %1, align 8, !tbaa !42
  br label %7

7:                                                ; preds = %4, %32
  %8 = phi i1 [ true, %4 ], [ false, %32 ]
  %9 = phi i32 [ 1, %4 ], [ %33, %32 ]
  %10 = load ptr, ptr %1, align 8, !tbaa !42
  %11 = load i8, ptr %10, align 1, !tbaa !35
  switch i8 %11, label %12 [
    i8 87, label %38
    i8 0, label %38
  ]

12:                                               ; preds = %7
  br i1 %8, label %32, label %13

13:                                               ; preds = %12
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #23
  br label %15

15:                                               ; preds = %13, %24
  %16 = phi i64 [ 0, %13 ], [ %25, %24 ]
  %17 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %18) #23
  %20 = icmp ugt i64 %19, %14
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = tail call i32 @bcmp(ptr %18, ptr nonnull %10, i64 %19)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21, %15
  %25 = add nuw nsw i64 %16, 1
  %26 = icmp eq i64 %25, 79
  br i1 %26, label %38, label %15, !llvm.loop !137

27:                                               ; preds = %21
  tail call fastcc void @string_appendn(ptr noundef %2, ptr noundef nonnull @.str.198, i32 noundef 1) #23
  %28 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %16, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !51
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef %29) #23
  tail call fastcc void @string_appendn(ptr noundef %2, ptr noundef nonnull @.str.198, i32 noundef 1) #23
  %30 = load ptr, ptr %1, align 8, !tbaa !42
  %31 = getelementptr inbounds i8, ptr %30, i64 %19
  store ptr %31, ptr %1, align 8, !tbaa !42
  br label %32

32:                                               ; preds = %27, %12
  %33 = tail call fastcc i32 @demangle_template_value_parm(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3) #23
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %7, !llvm.loop !138

35:                                               ; preds = %32
  %36 = load ptr, ptr %1, align 8, !tbaa !42
  %37 = load i8, ptr %36, align 1, !tbaa !35
  br label %38

38:                                               ; preds = %7, %7, %24, %35
  %39 = phi i8 [ %37, %35 ], [ %11, %24 ], [ %11, %7 ], [ %11, %7 ]
  %40 = phi i32 [ 0, %35 ], [ 0, %24 ], [ %9, %7 ], [ %9, %7 ]
  %41 = icmp eq i8 %39, 87
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  tail call fastcc void @string_appendn(ptr noundef %2, ptr noundef nonnull @.str.209, i32 noundef 1) #23
  %43 = load ptr, ptr %1, align 8, !tbaa !42
  %44 = getelementptr inbounds i8, ptr %43, i64 1
  store ptr %44, ptr %1, align 8, !tbaa !42
  br label %45

45:                                               ; preds = %38, %42
  %46 = phi i32 [ %40, %42 ], [ 0, %38 ]
  ret i32 %46
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @demangle_arm_hp_template(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #1 !prof !34 !PGOFuncName !139 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.string, align 8
  %8 = alloca %struct.string, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %9 = load ptr, ptr %1, align 8, !tbaa !42
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds i8, ptr %9, i64 %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #22
  %12 = load i32, ptr %0, align 8, !tbaa !38
  %13 = and i32 %12, 4096
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %69, label %15

15:                                               ; preds = %4
  %16 = load i8, ptr %11, align 1, !tbaa !35
  %17 = icmp eq i8 %16, 88
  br i1 %17, label %18, label %69

18:                                               ; preds = %15
  %19 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %9, i32 noundef 60) #23
  %20 = icmp eq ptr %19, null
  %21 = ptrtoint ptr %19 to i64
  %22 = ptrtoint ptr %9 to i64
  %23 = sub i64 %21, %22
  %24 = icmp slt i64 %23, %10
  %25 = trunc i64 %23 to i32
  %26 = select i1 %24, i32 %25, i32 %2
  %27 = select i1 %20, i32 %2, i32 %26
  tail call fastcc void @string_appendn(ptr noundef %3, ptr noundef nonnull %9, i32 noundef %27) #23
  %28 = load ptr, ptr %1, align 8, !tbaa !42
  %29 = getelementptr i8, ptr %28, i64 %10
  %30 = getelementptr i8, ptr %29, i64 1
  store ptr %30, ptr %1, align 8, !tbaa !42
  call fastcc void @string_init(ptr noundef nonnull %7) #23
  %31 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 13
  %32 = load i32, ptr %31, align 4, !tbaa !97
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %42

34:                                               ; preds = %18
  %35 = getelementptr inbounds %struct.string, ptr %3, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = load ptr, ptr %3, align 8, !tbaa !44
  %38 = ptrtoint ptr %36 to i64
  %39 = ptrtoint ptr %37 to i64
  %40 = sub i64 %38, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, ptr %31, align 4, !tbaa !97
  br label %42

42:                                               ; preds = %34, %18
  %43 = load i32, ptr %0, align 8, !tbaa !38
  %44 = or i32 %43, 1
  store i32 %44, ptr %0, align 8, !tbaa !38
  tail call fastcc void @string_append(ptr noundef %3, ptr noundef nonnull @.str.44) #23
  br label %45

45:                                               ; preds = %61, %42
  call fastcc void @string_delete(ptr noundef nonnull %7) #23
  %46 = load ptr, ptr %1, align 8, !tbaa !42
  %47 = load i8, ptr %46, align 1, !tbaa !35
  switch i8 %47, label %62 [
    i8 84, label %48
    i8 85, label %52
    i8 83, label %52
    i8 65, label %55
  ]

48:                                               ; preds = %45
  %49 = getelementptr inbounds i8, ptr %46, i64 1
  store ptr %49, ptr %1, align 8, !tbaa !42
  %50 = call fastcc i32 @do_type(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %7) #23, !range !43
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %62, label %58

52:                                               ; preds = %45, %45
  %53 = call fastcc i32 @do_hpacc_template_const_value(ptr noundef nonnull %1, ptr noundef nonnull %7) #23
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %58

55:                                               ; preds = %45
  %56 = call fastcc i32 @do_hpacc_template_literal(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %7) #23, !range !58
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55, %52, %48
  call fastcc void @string_appends(ptr noundef %3, ptr noundef nonnull %7) #23
  %59 = load ptr, ptr %1, align 8, !tbaa !42
  %60 = load i8, ptr %59, align 1, !tbaa !35
  switch i8 %60, label %61 [
    i8 0, label %62
    i8 95, label %62
  ]

61:                                               ; preds = %58
  tail call fastcc void @string_append(ptr noundef %3, ptr noundef nonnull @.str.217) #23
  br label %45

62:                                               ; preds = %58, %58, %45, %55, %52, %48
  tail call fastcc void @string_append(ptr noundef %3, ptr noundef nonnull @.str.48) #23
  call fastcc void @string_delete(ptr noundef nonnull %7) #23
  %63 = load ptr, ptr %1, align 8, !tbaa !42
  %64 = load i8, ptr %63, align 1, !tbaa !35
  %65 = icmp eq i8 %64, 95
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, ptr %63, i64 1
  store ptr %67, ptr %1, align 8, !tbaa !42
  br label %68

68:                                               ; preds = %66, %62
  store i32 %43, ptr %0, align 8, !tbaa !38
  br label %165

69:                                               ; preds = %15, %4
  %70 = call fastcc i32 @arm_pt(ptr noundef nonnull %0, ptr noundef %9, i32 noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6) #23
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %134, label %72

72:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #22
  call fastcc void @string_init(ptr noundef nonnull %7) #23
  %73 = load ptr, ptr %1, align 8, !tbaa !42
  %74 = load ptr, ptr %5, align 8, !tbaa !42
  %75 = ptrtoint ptr %74 to i64
  %76 = ptrtoint ptr %73 to i64
  %77 = sub i64 %75, %76
  %78 = trunc i64 %77 to i32
  tail call fastcc void @string_appendn(ptr noundef %3, ptr noundef %73, i32 noundef %78) #23
  %79 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 13
  %80 = load i32, ptr %79, align 4, !tbaa !97
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %90

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.string, ptr %3, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !46
  %85 = load ptr, ptr %3, align 8, !tbaa !44
  %86 = ptrtoint ptr %84 to i64
  %87 = ptrtoint ptr %85 to i64
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  store i32 %89, ptr %79, align 4, !tbaa !97
  br label %90

90:                                               ; preds = %82, %72
  %91 = load i32, ptr %0, align 8, !tbaa !38
  %92 = or i32 %91, 1
  store i32 %92, ptr %0, align 8, !tbaa !38
  tail call fastcc void @string_append(ptr noundef %3, ptr noundef nonnull @.str.44) #23
  %93 = load ptr, ptr %6, align 8, !tbaa !42
  %94 = icmp ult ptr %93, %11
  br i1 %94, label %95, label %125

95:                                               ; preds = %90, %120
  %96 = phi ptr [ %121, %120 ], [ %93, %90 ]
  call fastcc void @string_delete(ptr noundef nonnull %7) #23
  %97 = load i8, ptr %96, align 1, !tbaa !35
  switch i8 %97, label %114 [
    i8 88, label %98
    i8 76, label %110
  ]

98:                                               ; preds = %95
  %99 = getelementptr inbounds i8, ptr %96, i64 1
  store ptr %99, ptr %6, align 8, !tbaa !42
  %100 = call fastcc i32 @do_type(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %8) #23, !range !43
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %123, label %102

102:                                              ; preds = %98
  call fastcc void @string_append(ptr noundef nonnull %7, ptr noundef nonnull @.str.208) #23
  call fastcc void @string_appends(ptr noundef nonnull %7, ptr noundef nonnull %8) #23
  call fastcc void @string_delete(ptr noundef nonnull %8) #23
  call fastcc void @string_append(ptr noundef nonnull %7, ptr noundef nonnull @.str.209) #23
  %103 = load ptr, ptr %6, align 8, !tbaa !42
  %104 = load i8, ptr %103, align 1, !tbaa !35
  %105 = icmp eq i8 %104, 76
  br i1 %105, label %106, label %123

106:                                              ; preds = %102
  %107 = getelementptr inbounds i8, ptr %103, i64 1
  store ptr %107, ptr %6, align 8, !tbaa !42
  %108 = call fastcc i32 @snarf_numeric_literal(ptr noundef nonnull %6, ptr noundef nonnull %7) #23, !range !58
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %123, label %120

110:                                              ; preds = %95
  %111 = getelementptr inbounds i8, ptr %96, i64 1
  store ptr %111, ptr %6, align 8, !tbaa !42
  %112 = call fastcc i32 @snarf_numeric_literal(ptr noundef nonnull %6, ptr noundef nonnull %7) #23, !range !58
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %123, label %120

114:                                              ; preds = %95
  %115 = call fastcc i32 @do_type(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #23, !range !43
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr %6, align 8, !tbaa !42
  %119 = icmp eq ptr %118, %96
  br i1 %119, label %133, label %120

120:                                              ; preds = %117, %110, %106
  call fastcc void @string_appends(ptr noundef %3, ptr noundef nonnull %7) #23
  tail call fastcc void @string_append(ptr noundef %3, ptr noundef nonnull @.str.217) #23
  %121 = load ptr, ptr %6, align 8, !tbaa !42
  %122 = icmp ult ptr %121, %11
  br i1 %122, label %95, label %123, !llvm.loop !140

123:                                              ; preds = %114, %120, %110, %106, %102, %98
  %124 = load ptr, ptr %6, align 8, !tbaa !42
  br label %125

125:                                              ; preds = %123, %90
  %126 = phi ptr [ %124, %123 ], [ %93, %90 ]
  call fastcc void @string_delete(ptr noundef nonnull %7) #23
  %127 = icmp ult ptr %126, %11
  br i1 %127, label %132, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.string, ptr %3, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !46
  %131 = getelementptr inbounds i8, ptr %130, i64 -1
  store ptr %131, ptr %129, align 8, !tbaa !46
  br label %132

132:                                              ; preds = %125, %128
  tail call fastcc void @string_append(ptr noundef %3, ptr noundef nonnull @.str.48) #23
  store i32 %91, ptr %0, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #22
  br label %162

133:                                              ; preds = %117
  store i32 %91, ptr %0, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #22
  br label %165

134:                                              ; preds = %69
  %135 = icmp sgt i32 %2, 10
  br i1 %135, label %136, label %155

136:                                              ; preds = %134
  %137 = load ptr, ptr %1, align 8, !tbaa !42
  %138 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %137, ptr noundef nonnull dereferenceable(9) @.str.190, i64 noundef 8) #23
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %136
  %141 = getelementptr inbounds i8, ptr %137, i64 9
  %142 = load i8, ptr %141, align 1, !tbaa !35
  %143 = icmp eq i8 %142, 78
  br i1 %143, label %144, label %155

144:                                              ; preds = %140
  %145 = getelementptr inbounds i8, ptr %137, i64 8
  %146 = load i8, ptr %145, align 1, !tbaa !35
  %147 = getelementptr inbounds i8, ptr %137, i64 10
  %148 = load i8, ptr %147, align 1, !tbaa !35
  %149 = icmp eq i8 %146, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %144
  %151 = sext i8 %146 to i32
  %152 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @cplus_markers, i32 noundef %151) #23
  %153 = icmp eq ptr %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %150
  tail call fastcc void @string_append(ptr noundef %3, ptr noundef nonnull @.str.191) #23
  br label %162

155:                                              ; preds = %150, %144, %140, %136, %134
  %156 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 13
  %157 = load i32, ptr %156, align 4, !tbaa !97
  %158 = icmp eq i32 %157, -1
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  store i32 0, ptr %156, align 4, !tbaa !97
  br label %160

160:                                              ; preds = %159, %155
  %161 = load ptr, ptr %1, align 8, !tbaa !42
  tail call fastcc void @string_appendn(ptr noundef %3, ptr noundef %161, i32 noundef %2) #23
  br label %162

162:                                              ; preds = %132, %160, %154
  %163 = load ptr, ptr %1, align 8, !tbaa !42
  %164 = getelementptr inbounds i8, ptr %163, i64 %10
  store ptr %164, ptr %1, align 8, !tbaa !42
  br label %165

165:                                              ; preds = %133, %162, %68
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @arm_special(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #1 !prof !34 !PGOFuncName !141 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %4 = load ptr, ptr %0, align 8, !tbaa !42
  %5 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(9) @.str.224, i64 noundef 8) #23
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %58

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %8, ptr %3, align 8, !tbaa !42
  %9 = load i8, ptr %8, align 1, !tbaa !35
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %7, %27
  %12 = call fastcc i32 @consume_count(ptr noundef nonnull %3) #23
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %58, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %3, align 8, !tbaa !42
  %16 = sext i32 %12 to i64
  %17 = getelementptr inbounds i8, ptr %15, i64 %16
  store ptr %17, ptr %3, align 8, !tbaa !42
  %18 = load i8, ptr %17, align 1, !tbaa !35
  %19 = icmp eq i8 %18, 95
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = getelementptr inbounds i8, ptr %17, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !35
  %23 = icmp eq i8 %22, 95
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds i8, ptr %17, i64 2
  store ptr %25, ptr %3, align 8, !tbaa !42
  %26 = load i8, ptr %25, align 1, !tbaa !35
  br label %27

27:                                               ; preds = %24, %20, %14
  %28 = phi i8 [ %26, %24 ], [ 95, %20 ], [ %18, %14 ]
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %11, !llvm.loop !142

30:                                               ; preds = %27, %7
  store ptr %8, ptr %0, align 8, !tbaa !42
  %31 = load i8, ptr %8, align 1, !tbaa !35
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %57, label %33

33:                                               ; preds = %30, %54
  %34 = tail call fastcc i32 @consume_count(ptr noundef nonnull %0) #23
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %58, label %36

36:                                               ; preds = %33
  %37 = sext i32 %34 to i64
  %38 = load ptr, ptr %0, align 8, !tbaa !42
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %38) #23
  %40 = icmp slt i64 %39, %37
  br i1 %40, label %58, label %41

41:                                               ; preds = %36
  tail call fastcc void @string_prependn(ptr noundef %1, ptr noundef %38, i32 noundef %34) #23
  %42 = load ptr, ptr %0, align 8, !tbaa !42
  %43 = getelementptr inbounds i8, ptr %42, i64 %37
  store ptr %43, ptr %0, align 8, !tbaa !42
  %44 = load i8, ptr %43, align 1, !tbaa !35
  %45 = icmp eq i8 %44, 95
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = getelementptr inbounds i8, ptr %43, i64 1
  %48 = load i8, ptr %47, align 1, !tbaa !35
  %49 = icmp eq i8 %48, 95
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  tail call fastcc void @string_prepend(ptr noundef %1, ptr noundef nonnull @.str.187) #23
  %51 = load ptr, ptr %0, align 8, !tbaa !42
  %52 = getelementptr inbounds i8, ptr %51, i64 2
  store ptr %52, ptr %0, align 8, !tbaa !42
  %53 = load i8, ptr %52, align 1, !tbaa !35
  br label %54

54:                                               ; preds = %50, %46, %41
  %55 = phi i8 [ %53, %50 ], [ 95, %46 ], [ %44, %41 ]
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %33, !llvm.loop !143

57:                                               ; preds = %54, %30
  tail call fastcc void @string_append(ptr noundef %1, ptr noundef nonnull @.str.188) #23
  br label %58

58:                                               ; preds = %11, %33, %36, %57, %2
  %59 = phi i32 [ 1, %57 ], [ 0, %2 ], [ 0, %36 ], [ 0, %33 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret i32 %59
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @iterate_demangle_function(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #1 !prof !34 !PGOFuncName !144 {
  %5 = alloca %struct.string, align 8
  %6 = alloca %struct.work_stuff, align 8
  %7 = load ptr, ptr %1, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %6) #22
  %8 = getelementptr inbounds i8, ptr %3, i64 2
  %9 = load i8, ptr %8, align 1, !tbaa !35
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %52, label %11

11:                                               ; preds = %4
  %12 = load i32, ptr %0, align 8, !tbaa !38
  %13 = and i32 %12, 15360
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @.str.216) #23
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %11
  %19 = tail call fastcc i32 @demangle_function_name(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3) #23, !range !58
  br label %52

20:                                               ; preds = %15
  call fastcc void @string_init(ptr noundef nonnull %5) #23
  call fastcc void @string_appends(ptr noundef nonnull %5, ptr noundef %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %6, i8 0, i64 112, i1 false)
  call fastcc void @work_stuff_copy_to_from(ptr noundef nonnull %6, ptr noundef nonnull %0) #23
  %21 = load i8, ptr %8, align 1, !tbaa !35
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %50, label %23

23:                                               ; preds = %20, %47
  %24 = phi ptr [ %43, %47 ], [ %8, %20 ]
  %25 = phi ptr [ %48, %47 ], [ %3, %20 ]
  %26 = tail call fastcc i32 @demangle_function_name(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %25) #23, !range !58
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = tail call fastcc i32 @demangle_signature(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2) #23
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %28, %23
  store ptr %7, ptr %1, align 8, !tbaa !42
  tail call fastcc void @string_clear(ptr noundef %2) #23
  call fastcc void @string_appends(ptr noundef %2, ptr noundef nonnull %5) #23
  call fastcc void @work_stuff_copy_to_from(ptr noundef nonnull %0, ptr noundef nonnull %6) #23
  br label %32

32:                                               ; preds = %40, %31
  %33 = phi ptr [ %24, %31 ], [ %41, %40 ]
  %34 = load i8, ptr %33, align 1, !tbaa !35
  switch i8 %34, label %40 [
    i8 0, label %39
    i8 95, label %35
  ]

35:                                               ; preds = %32
  %36 = getelementptr inbounds i8, ptr %33, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !35
  %38 = icmp eq i8 %37, 95
  br i1 %38, label %39, label %40

39:                                               ; preds = %32, %35
  br label %42

40:                                               ; preds = %32, %35
  %41 = getelementptr inbounds i8, ptr %33, i64 1
  br label %32, !llvm.loop !145

42:                                               ; preds = %39, %42
  %43 = phi ptr [ %46, %42 ], [ %33, %39 ]
  %44 = load i8, ptr %43, align 1, !tbaa !35
  %45 = icmp eq i8 %44, 95
  %46 = getelementptr inbounds i8, ptr %43, i64 1
  br i1 %45, label %42, label %47, !llvm.loop !146

47:                                               ; preds = %42
  %48 = getelementptr inbounds i8, ptr %43, i64 -2
  %49 = icmp eq i8 %44, 0
  br i1 %49, label %50, label %23, !llvm.loop !147

50:                                               ; preds = %47, %28, %20
  %51 = phi i32 [ 0, %20 ], [ %29, %28 ], [ 0, %47 ]
  call fastcc void @delete_work_stuff(ptr noundef nonnull %6) #23
  call fastcc void @string_delete(ptr noundef nonnull %5) #23
  br label %52

52:                                               ; preds = %4, %50, %18
  %53 = phi i32 [ %19, %18 ], [ %51, %50 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  ret i32 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @do_hpacc_template_const_value(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #1 !prof !34 !PGOFuncName !148 {
  %3 = load ptr, ptr %0, align 8, !tbaa !42
  %4 = load i8, ptr %3, align 1, !tbaa !35
  switch i8 %4, label %35 [
    i8 85, label %5
    i8 83, label %5
  ]

5:                                                ; preds = %2, %2
  %6 = icmp eq i8 %4, 85
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %7, ptr %0, align 8, !tbaa !42
  %8 = load i8, ptr %7, align 1, !tbaa !35
  switch i8 %8, label %35 [
    i8 78, label %9
    i8 80, label %11
    i8 77, label %20
  ]

9:                                                ; preds = %5
  tail call fastcc void @string_append(ptr noundef %1, ptr noundef nonnull @.str.54) #23
  %10 = load ptr, ptr %0, align 8, !tbaa !42
  br label %11

11:                                               ; preds = %5, %9
  %12 = phi ptr [ %7, %5 ], [ %10, %9 ]
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %13, ptr %0, align 8, !tbaa !42
  %14 = load i8, ptr %13, align 1, !tbaa !35
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !47
  %18 = and i16 %17, 4
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %35, label %23

20:                                               ; preds = %5
  tail call fastcc void @string_append(ptr noundef %1, ptr noundef nonnull @.str.218) #23
  %21 = load ptr, ptr %0, align 8, !tbaa !42
  %22 = getelementptr inbounds i8, ptr %21, i64 1
  store ptr %22, ptr %0, align 8, !tbaa !42
  br label %35

23:                                               ; preds = %11, %23
  %24 = phi i8 [ %27, %23 ], [ %14, %11 ]
  store i8 %24, ptr @char_str, align 1, !tbaa !35
  tail call fastcc void @string_append(ptr noundef %1, ptr noundef nonnull @char_str) #23
  %25 = load ptr, ptr %0, align 8, !tbaa !42
  %26 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %26, ptr %0, align 8, !tbaa !42
  %27 = load i8, ptr %26, align 1, !tbaa !35
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !47
  %31 = and i16 %30, 4
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %23, !llvm.loop !149

33:                                               ; preds = %23
  br i1 %6, label %34, label %35

34:                                               ; preds = %33
  tail call fastcc void @string_append(ptr noundef %1, ptr noundef nonnull @.str.219) #23
  br label %35

35:                                               ; preds = %33, %34, %11, %5, %2, %20
  %36 = phi i32 [ 1, %20 ], [ 0, %2 ], [ 0, %5 ], [ 0, %11 ], [ 1, %34 ], [ 1, %33 ]
  ret i32 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @do_hpacc_template_literal(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #1 !prof !34 !PGOFuncName !150 {
  %4 = load ptr, ptr %1, align 8, !tbaa !42
  %5 = load i8, ptr %4, align 1, !tbaa !35
  %6 = icmp eq i8 %5, 65
  br i1 %6, label %7, label %27

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %8, ptr %1, align 8, !tbaa !42
  %9 = tail call fastcc i32 @consume_count(ptr noundef nonnull %1) #23
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %27, label %11

11:                                               ; preds = %7
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.56) #23
  %12 = add nuw nsw i32 %9, 1
  %13 = zext nneg i32 %12 to i64
  %14 = tail call ptr @xmalloc(i64 noundef %13) #24
  %15 = load ptr, ptr %1, align 8, !tbaa !42
  %16 = zext nneg i32 %9 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %15, i64 %16, i1 false)
  %17 = getelementptr inbounds i8, ptr %14, i64 %16
  store i8 0, ptr %17, align 1, !tbaa !35
  %18 = load i32, ptr %0, align 8, !tbaa !38
  %19 = tail call ptr @cplus_demangle(ptr noundef %14, i32 noundef %18) #23
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull %19) #23
  tail call void @free(ptr noundef nonnull %19) #23
  br label %24

22:                                               ; preds = %11
  %23 = load ptr, ptr %1, align 8, !tbaa !42
  tail call fastcc void @string_appendn(ptr noundef %2, ptr noundef %23, i32 noundef %9) #23
  br label %24

24:                                               ; preds = %22, %21
  %25 = load ptr, ptr %1, align 8, !tbaa !42
  %26 = getelementptr inbounds i8, ptr %25, i64 %16
  store ptr %26, ptr %1, align 8, !tbaa !42
  tail call void @free(ptr noundef nonnull %14) #23
  br label %27

27:                                               ; preds = %7, %3, %24
  %28 = phi i32 [ 1, %24 ], [ 0, %3 ], [ 0, %7 ]
  ret i32 %28
}

; Function Attrs: nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @arm_pt(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) unnamed_addr #17 !prof !34 !PGOFuncName !151 {
  %6 = load i32, ptr %0, align 8, !tbaa !38
  %7 = and i32 %6, 6144
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.220) #23
  store ptr %10, ptr %3, align 8, !tbaa !42
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, ptr %10, i64 6
  store ptr %13, ptr %4, align 8, !tbaa !42
  %14 = tail call fastcc i32 @consume_count(ptr noundef nonnull %4) #23
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %74, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %4, align 8, !tbaa !42
  %18 = sext i32 %14 to i64
  %19 = getelementptr inbounds i8, ptr %17, i64 %18
  %20 = sext i32 %2 to i64
  %21 = getelementptr inbounds i8, ptr %1, i64 %20
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i8, ptr %17, align 1, !tbaa !35
  %25 = icmp eq i8 %24, 95
  br i1 %25, label %71, label %26

26:                                               ; preds = %16, %23, %5, %9
  %27 = load i32, ptr %0, align 8, !tbaa !38
  %28 = and i32 %27, 8448
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %74, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.221) #23
  store ptr %31, ptr %3, align 8, !tbaa !42
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.222) #23
  store ptr %34, ptr %3, align 8, !tbaa !42
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.220) #23
  store ptr %37, ptr %3, align 8, !tbaa !42
  %38 = icmp eq ptr %37, null
  br i1 %38, label %54, label %39

39:                                               ; preds = %36, %33, %30
  %40 = phi ptr [ %37, %36 ], [ %34, %33 ], [ %31, %30 ]
  %41 = getelementptr inbounds i8, ptr %40, i64 6
  store ptr %41, ptr %4, align 8, !tbaa !42
  %42 = tail call fastcc i32 @consume_count(ptr noundef nonnull %4) #23
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %74, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %4, align 8, !tbaa !42
  %46 = sext i32 %42 to i64
  %47 = getelementptr inbounds i8, ptr %45, i64 %46
  %48 = sext i32 %2 to i64
  %49 = getelementptr inbounds i8, ptr %1, i64 %48
  %50 = icmp eq ptr %47, %49
  br i1 %50, label %51, label %74

51:                                               ; preds = %44
  %52 = load i8, ptr %45, align 1, !tbaa !35
  %53 = icmp eq i8 %52, 95
  br i1 %53, label %71, label %74

54:                                               ; preds = %36
  %55 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.223) #23
  store ptr %55, ptr %3, align 8, !tbaa !42
  %56 = icmp eq ptr %55, null
  br i1 %56, label %74, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds i8, ptr %55, i64 3
  store ptr %58, ptr %4, align 8, !tbaa !42
  %59 = tail call fastcc i32 @consume_count(ptr noundef nonnull %4) #23
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %74, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %4, align 8, !tbaa !42
  %63 = sext i32 %59 to i64
  %64 = getelementptr inbounds i8, ptr %62, i64 %63
  %65 = sext i32 %2 to i64
  %66 = getelementptr inbounds i8, ptr %1, i64 %65
  %67 = icmp eq ptr %64, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load i8, ptr %62, align 1, !tbaa !35
  %70 = icmp eq i8 %69, 95
  br i1 %70, label %71, label %74

71:                                               ; preds = %68, %51, %23
  %72 = phi ptr [ %17, %23 ], [ %45, %51 ], [ %62, %68 ]
  %73 = getelementptr inbounds i8, ptr %72, i64 1
  store ptr %73, ptr %4, align 8, !tbaa !42
  br label %74

74:                                               ; preds = %71, %61, %68, %44, %51, %54, %26, %57, %39, %12
  %75 = phi i32 [ 0, %12 ], [ 0, %39 ], [ 0, %57 ], [ 0, %26 ], [ 0, %54 ], [ 0, %51 ], [ 0, %44 ], [ 0, %68 ], [ 0, %61 ], [ 1, %71 ]
  ret i32 %75
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @snarf_numeric_literal(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #1 !prof !34 !PGOFuncName !152 {
  %3 = load ptr, ptr %0, align 8, !tbaa !42
  %4 = load i8, ptr %3, align 1, !tbaa !35
  switch i8 %4, label %10 [
    i8 45, label %5
    i8 43, label %7
  ]

5:                                                ; preds = %2
  store i8 45, ptr @char_str, align 1, !tbaa !35
  tail call fastcc void @string_append(ptr noundef %1, ptr noundef nonnull @char_str) #23
  %6 = load ptr, ptr %0, align 8, !tbaa !42
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ %3, %2 ]
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %9, ptr %0, align 8, !tbaa !42
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ %3, %2 ], [ %9, %7 ]
  %12 = load i8, ptr %11, align 1, !tbaa !35
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !47
  %16 = and i16 %15, 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %10, %18
  %19 = phi i8 [ %22, %18 ], [ %12, %10 ]
  store i8 %19, ptr @char_str, align 1, !tbaa !35
  tail call fastcc void @string_append(ptr noundef %1, ptr noundef nonnull @char_str) #23
  %20 = load ptr, ptr %0, align 8, !tbaa !42
  %21 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %21, ptr %0, align 8, !tbaa !42
  %22 = load i8, ptr %21, align 1, !tbaa !35
  %23 = zext i8 %22 to i64
  %24 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !47
  %26 = and i16 %25, 4
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %18, !llvm.loop !153

28:                                               ; preds = %18, %10
  %29 = phi i32 [ 0, %10 ], [ 1, %18 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @demangle_function_name(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #1 !prof !34 !PGOFuncName !154 {
  %5 = alloca %struct.string, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %7 = load ptr, ptr %1, align 8, !tbaa !42
  %8 = ptrtoint ptr %3 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = trunc i64 %10 to i32
  tail call fastcc void @string_appendn(ptr noundef %2, ptr noundef %7, i32 noundef %11) #23
  tail call fastcc void @string_need(ptr noundef %2, i32 noundef 1) #23
  %12 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  store i8 0, ptr %13, align 1, !tbaa !35
  %14 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %14, ptr %1, align 8, !tbaa !42
  %15 = load i32, ptr %0, align 8, !tbaa !38
  %16 = and i32 %15, 4096
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load i8, ptr %14, align 1, !tbaa !35
  %20 = icmp eq i8 %19, 88
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  tail call fastcc void @demangle_arm_hp_template(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %2) #23
  %22 = load i32, ptr %0, align 8, !tbaa !38
  br label %23

23:                                               ; preds = %21, %18, %4
  %24 = phi i32 [ %22, %21 ], [ %15, %18 ], [ %15, %4 ]
  %25 = and i32 %24, 15360
  %26 = icmp eq i32 %25, 0
  %27 = load ptr, ptr %2, align 8, !tbaa !44
  br i1 %26, label %42, label %28

28:                                               ; preds = %23
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(5) @.str.225) #23
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 10
  %33 = load i32, ptr %32, align 8, !tbaa !87
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %32, align 8, !tbaa !87
  tail call fastcc void @string_clear(ptr noundef nonnull %2) #23
  br label %213

35:                                               ; preds = %28
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(5) @.str.226) #23
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 11
  %40 = load i32, ptr %39, align 4, !tbaa !86
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %39, align 4, !tbaa !86
  tail call fastcc void @string_clear(ptr noundef nonnull %2) #23
  br label %213

42:                                               ; preds = %23, %35
  %43 = load ptr, ptr %12, align 8, !tbaa !46
  %44 = ptrtoint ptr %43 to i64
  %45 = ptrtoint ptr %27 to i64
  %46 = sub i64 %44, %45
  %47 = icmp sgt i64 %46, 2
  %48 = load i8, ptr %27, align 1, !tbaa !35
  br i1 %47, label %49, label %125

49:                                               ; preds = %42
  %50 = icmp eq i8 %48, 111
  br i1 %50, label %51, label %109

51:                                               ; preds = %49
  %52 = getelementptr inbounds i8, ptr %27, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !35
  %54 = icmp eq i8 %53, 112
  br i1 %54, label %55, label %109

55:                                               ; preds = %51
  %56 = getelementptr inbounds i8, ptr %27, i64 2
  %57 = load i8, ptr %56, align 1, !tbaa !35
  %58 = sext i8 %57 to i32
  %59 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @cplus_markers, i32 noundef %58) #23
  %60 = icmp eq ptr %59, null
  br i1 %60, label %109, label %61

61:                                               ; preds = %55
  %62 = icmp ugt i64 %46, 9
  br i1 %62, label %63, label %88

63:                                               ; preds = %61
  %64 = getelementptr inbounds i8, ptr %27, i64 3
  %65 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %64, ptr noundef nonnull dereferenceable(7) @.str.22, i64 7)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %68 = trunc i64 %46 to i32
  %69 = add i32 %68, -10
  %70 = getelementptr inbounds i8, ptr %27, i64 10
  %71 = sext i32 %69 to i64
  br label %72

72:                                               ; preds = %67, %85
  %73 = phi i64 [ 0, %67 ], [ %86, %85 ]
  %74 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !49
  %76 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #23
  %77 = trunc i64 %76 to i32
  %78 = icmp eq i32 %69, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = tail call i32 @bcmp(ptr %75, ptr nonnull %70, i64 %71)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  tail call fastcc void @string_clear(ptr noundef nonnull %2) #23
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.21) #23
  %83 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %73, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !51
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef %84) #23
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.23) #23
  br label %200

85:                                               ; preds = %79, %72
  %86 = add nuw nsw i64 %73, 1
  %87 = icmp eq i64 %86, 79
  br i1 %87, label %200, label %72, !llvm.loop !155

88:                                               ; preds = %63, %61
  %89 = trunc i64 %46 to i32
  %90 = add i32 %89, -3
  %91 = getelementptr inbounds i8, ptr %27, i64 3
  %92 = sext i32 %90 to i64
  br label %93

93:                                               ; preds = %88, %106
  %94 = phi i64 [ 0, %88 ], [ %107, %106 ]
  %95 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !49
  %97 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %96) #23
  %98 = trunc i64 %97 to i32
  %99 = icmp eq i32 %90, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = tail call i32 @bcmp(ptr %96, ptr nonnull %91, i64 %92)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  tail call fastcc void @string_clear(ptr noundef nonnull %2) #23
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.21) #23
  %104 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %94, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !51
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef %105) #23
  br label %200

106:                                              ; preds = %100, %93
  %107 = add nuw nsw i64 %94, 1
  %108 = icmp eq i64 %107, 79
  br i1 %108, label %200, label %93, !llvm.loop !156

109:                                              ; preds = %55, %51, %49
  %110 = icmp ugt i64 %46, 4
  br i1 %110, label %111, label %125

111:                                              ; preds = %109
  %112 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %27, ptr noundef nonnull dereferenceable(4) @.str.24, i64 4)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %111
  %115 = getelementptr inbounds i8, ptr %27, i64 4
  %116 = load i8, ptr %115, align 1, !tbaa !35
  %117 = sext i8 %116 to i32
  %118 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) @cplus_markers, i32 noundef %117) #23
  %119 = icmp eq ptr %118, null
  br i1 %119, label %125, label %120

120:                                              ; preds = %114
  %121 = getelementptr inbounds i8, ptr %27, i64 5
  store ptr %121, ptr %6, align 8, !tbaa !42
  %122 = call fastcc i32 @do_type(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %5) #23, !range !43
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %200, label %124

124:                                              ; preds = %120
  tail call fastcc void @string_clear(ptr noundef nonnull %2) #23
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.20) #23
  call fastcc void @string_appends(ptr noundef nonnull %2, ptr noundef nonnull %5) #23
  call fastcc void @string_delete(ptr noundef nonnull %5) #23
  br label %200

125:                                              ; preds = %42, %114, %111, %109
  %126 = icmp eq i8 %48, 95
  br i1 %126, label %127, label %200

127:                                              ; preds = %125
  %128 = getelementptr inbounds i8, ptr %27, i64 1
  %129 = load i8, ptr %128, align 1, !tbaa !35
  %130 = icmp eq i8 %129, 95
  br i1 %130, label %131, label %200

131:                                              ; preds = %127
  %132 = getelementptr inbounds i8, ptr %27, i64 2
  %133 = load i8, ptr %132, align 1, !tbaa !35
  %134 = icmp eq i8 %133, 111
  br i1 %134, label %135, label %144

135:                                              ; preds = %131
  %136 = getelementptr inbounds i8, ptr %27, i64 3
  %137 = load i8, ptr %136, align 1, !tbaa !35
  %138 = icmp eq i8 %137, 112
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = getelementptr inbounds i8, ptr %27, i64 4
  store ptr %140, ptr %6, align 8, !tbaa !42
  %141 = call fastcc i32 @do_type(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %5) #23, !range !43
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %200, label %143

143:                                              ; preds = %139
  tail call fastcc void @string_clear(ptr noundef nonnull %2) #23
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.20) #23
  call fastcc void @string_appends(ptr noundef nonnull %2, ptr noundef nonnull %5) #23
  call fastcc void @string_delete(ptr noundef nonnull %5) #23
  br label %200

144:                                              ; preds = %135, %131
  %145 = getelementptr inbounds i8, ptr %27, i64 2
  %146 = load i8, ptr %145, align 1, !tbaa !35
  %147 = zext i8 %146 to i64
  %148 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %147
  %149 = load i16, ptr %148, align 2, !tbaa !47
  %150 = and i16 %149, 8
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %200, label %152

152:                                              ; preds = %144
  %153 = getelementptr inbounds i8, ptr %27, i64 3
  %154 = load i8, ptr %153, align 1, !tbaa !35
  %155 = zext i8 %154 to i64
  %156 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %155
  %157 = load i16, ptr %156, align 2, !tbaa !47
  %158 = and i16 %157, 8
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %200, label %160

160:                                              ; preds = %152
  %161 = getelementptr inbounds i8, ptr %27, i64 4
  %162 = load i8, ptr %161, align 1, !tbaa !35
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %179

164:                                              ; preds = %160, %176
  %165 = phi i64 [ %177, %176 ], [ 0, %160 ]
  %166 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !49
  %168 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %167) #23
  %169 = icmp eq i64 %168, 2
  br i1 %169, label %170, label %176

170:                                              ; preds = %164
  %171 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %167, ptr noundef nonnull dereferenceable(2) %145, i64 2)
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  tail call fastcc void @string_clear(ptr noundef nonnull %2) #23
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.21) #23
  %174 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %165, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !51
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef %175) #23
  br label %200

176:                                              ; preds = %164, %170
  %177 = add nuw nsw i64 %165, 1
  %178 = icmp eq i64 %177, 79
  br i1 %178, label %200, label %164, !llvm.loop !157

179:                                              ; preds = %160
  %180 = icmp eq i8 %146, 97
  br i1 %180, label %181, label %200

181:                                              ; preds = %179
  %182 = getelementptr inbounds i8, ptr %27, i64 5
  %183 = load i8, ptr %182, align 1, !tbaa !35
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %200

185:                                              ; preds = %181, %197
  %186 = phi i64 [ %198, %197 ], [ 0, %181 ]
  %187 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %186
  %188 = load ptr, ptr %187, align 8, !tbaa !49
  %189 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %188) #23
  %190 = icmp eq i64 %189, 3
  br i1 %190, label %191, label %197

191:                                              ; preds = %185
  %192 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %188, ptr noundef nonnull dereferenceable(3) %145, i64 3)
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  tail call fastcc void @string_clear(ptr noundef nonnull %2) #23
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.21) #23
  %195 = getelementptr inbounds [79 x %struct.optable], ptr @optable, i64 0, i64 %186, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !51
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef %196) #23
  br label %200

197:                                              ; preds = %185, %191
  %198 = add nuw nsw i64 %186, 1
  %199 = icmp eq i64 %198, 79
  br i1 %199, label %200, label %185, !llvm.loop !158

200:                                              ; preds = %106, %85, %197, %176, %127, %125, %103, %82, %124, %120, %144, %152, %179, %181, %194, %173, %139, %143
  %201 = load ptr, ptr %2, align 8, !tbaa !44
  %202 = load ptr, ptr %12, align 8, !tbaa !46
  %203 = icmp ne ptr %201, %202
  %204 = ptrtoint ptr %202 to i64
  %205 = ptrtoint ptr %201 to i64
  %206 = sub i64 %204, %205
  %207 = icmp eq i64 %206, 1
  %208 = and i1 %203, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %200
  %210 = load i8, ptr %201, align 1, !tbaa !35
  %211 = icmp eq i8 %210, 46
  br i1 %211, label %213, label %212

212:                                              ; preds = %209, %200
  br label %213

213:                                              ; preds = %209, %212, %38, %31
  %214 = phi i32 [ 1, %31 ], [ 1, %38 ], [ 1, %212 ], [ 0, %209 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  ret i32 %214
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @work_stuff_copy_to_from(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !34 !PGOFuncName !159 {
  tail call fastcc void @delete_work_stuff(ptr noundef %0) #23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  %3 = getelementptr inbounds %struct.work_stuff, ptr %1, i64 0, i32 9
  %4 = load i32, ptr %3, align 4, !tbaa !160
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = sext i32 %4 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call ptr @xmalloc(i64 noundef %8) #24
  %10 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !61
  br label %11

11:                                               ; preds = %6, %2
  %12 = getelementptr inbounds %struct.work_stuff, ptr %1, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !60
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.work_stuff, ptr %1, i64 0, i32 1
  %17 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi i64 [ 0, %15 ], [ %36, %18 ]
  %20 = load ptr, ptr %16, align 8, !tbaa !61
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %22) #23
  %24 = shl i64 %23, 32
  %25 = add i64 %24, 4294967296
  %26 = ashr exact i64 %25, 32
  %27 = tail call ptr @xmalloc(i64 noundef %26) #24
  %28 = load ptr, ptr %17, align 8, !tbaa !61
  %29 = getelementptr inbounds ptr, ptr %28, i64 %19
  store ptr %27, ptr %29, align 8, !tbaa !42
  %30 = load ptr, ptr %17, align 8, !tbaa !61
  %31 = getelementptr inbounds ptr, ptr %30, i64 %19
  %32 = load ptr, ptr %31, align 8, !tbaa !42
  %33 = load ptr, ptr %16, align 8, !tbaa !61
  %34 = getelementptr inbounds ptr, ptr %33, i64 %19
  %35 = load ptr, ptr %34, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %32, ptr align 1 %35, i64 %26, i1 false)
  %36 = add nuw nsw i64 %19, 1
  %37 = load i32, ptr %12, align 8, !tbaa !60
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %18, label %40, !llvm.loop !161

40:                                               ; preds = %18, %11
  %41 = getelementptr inbounds %struct.work_stuff, ptr %1, i64 0, i32 6
  %42 = load i32, ptr %41, align 8, !tbaa !118
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = sext i32 %42 to i64
  %46 = shl nsw i64 %45, 3
  %47 = tail call ptr @xmalloc(i64 noundef %46) #24
  %48 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 2
  store ptr %47, ptr %48, align 8, !tbaa !70
  br label %49

49:                                               ; preds = %44, %40
  %50 = getelementptr inbounds %struct.work_stuff, ptr %1, i64 0, i32 4
  %51 = load i32, ptr %50, align 8, !tbaa !103
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %78

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.work_stuff, ptr %1, i64 0, i32 2
  %55 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 2
  br label %56

56:                                               ; preds = %53, %56
  %57 = phi i64 [ 0, %53 ], [ %74, %56 ]
  %58 = load ptr, ptr %54, align 8, !tbaa !70
  %59 = getelementptr inbounds ptr, ptr %58, i64 %57
  %60 = load ptr, ptr %59, align 8, !tbaa !42
  %61 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %60) #23
  %62 = shl i64 %61, 32
  %63 = add i64 %62, 4294967296
  %64 = ashr exact i64 %63, 32
  %65 = tail call ptr @xmalloc(i64 noundef %64) #24
  %66 = load ptr, ptr %55, align 8, !tbaa !70
  %67 = getelementptr inbounds ptr, ptr %66, i64 %57
  store ptr %65, ptr %67, align 8, !tbaa !42
  %68 = load ptr, ptr %55, align 8, !tbaa !70
  %69 = getelementptr inbounds ptr, ptr %68, i64 %57
  %70 = load ptr, ptr %69, align 8, !tbaa !42
  %71 = load ptr, ptr %54, align 8, !tbaa !70
  %72 = getelementptr inbounds ptr, ptr %71, i64 %57
  %73 = load ptr, ptr %72, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %70, ptr align 1 %73, i64 %64, i1 false)
  %74 = add nuw nsw i64 %57, 1
  %75 = load i32, ptr %50, align 8, !tbaa !103
  %76 = sext i32 %75 to i64
  %77 = icmp slt i64 %74, %76
  br i1 %77, label %56, label %78, !llvm.loop !162

78:                                               ; preds = %56, %49
  %79 = getelementptr inbounds %struct.work_stuff, ptr %1, i64 0, i32 7
  %80 = load i32, ptr %79, align 4, !tbaa !112
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = sext i32 %80 to i64
  %84 = shl nsw i64 %83, 3
  %85 = tail call ptr @xmalloc(i64 noundef %84) #24
  %86 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 3
  store ptr %85, ptr %86, align 8, !tbaa !65
  br label %87

87:                                               ; preds = %82, %78
  %88 = getelementptr inbounds %struct.work_stuff, ptr %1, i64 0, i32 5
  %89 = load i32, ptr %88, align 4, !tbaa !64
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %116

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.work_stuff, ptr %1, i64 0, i32 3
  %93 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 3
  br label %94

94:                                               ; preds = %91, %94
  %95 = phi i64 [ 0, %91 ], [ %112, %94 ]
  %96 = load ptr, ptr %92, align 8, !tbaa !65
  %97 = getelementptr inbounds ptr, ptr %96, i64 %95
  %98 = load ptr, ptr %97, align 8, !tbaa !42
  %99 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %98) #23
  %100 = shl i64 %99, 32
  %101 = add i64 %100, 4294967296
  %102 = ashr exact i64 %101, 32
  %103 = tail call ptr @xmalloc(i64 noundef %102) #24
  %104 = load ptr, ptr %93, align 8, !tbaa !65
  %105 = getelementptr inbounds ptr, ptr %104, i64 %95
  store ptr %103, ptr %105, align 8, !tbaa !42
  %106 = load ptr, ptr %93, align 8, !tbaa !65
  %107 = getelementptr inbounds ptr, ptr %106, i64 %95
  %108 = load ptr, ptr %107, align 8, !tbaa !42
  %109 = load ptr, ptr %92, align 8, !tbaa !65
  %110 = getelementptr inbounds ptr, ptr %109, i64 %95
  %111 = load ptr, ptr %110, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %108, ptr align 1 %111, i64 %102, i1 false)
  %112 = add nuw nsw i64 %95, 1
  %113 = load i32, ptr %88, align 4, !tbaa !64
  %114 = sext i32 %113 to i64
  %115 = icmp slt i64 %112, %114
  br i1 %115, label %94, label %116, !llvm.loop !163

116:                                              ; preds = %94, %87
  %117 = getelementptr inbounds %struct.work_stuff, ptr %1, i64 0, i32 17
  %118 = load i32, ptr %117, align 8, !tbaa !67
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %152, label %120

120:                                              ; preds = %116
  %121 = sext i32 %118 to i64
  %122 = shl nsw i64 %121, 3
  %123 = tail call ptr @xmalloc(i64 noundef %122) #24
  %124 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 16
  store ptr %123, ptr %124, align 8, !tbaa !66
  %125 = load i32, ptr %117, align 8, !tbaa !67
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %152

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.work_stuff, ptr %1, i64 0, i32 16
  %129 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 16
  br label %130

130:                                              ; preds = %127, %130
  %131 = phi i64 [ 0, %127 ], [ %148, %130 ]
  %132 = load ptr, ptr %128, align 8, !tbaa !66
  %133 = getelementptr inbounds ptr, ptr %132, i64 %131
  %134 = load ptr, ptr %133, align 8, !tbaa !42
  %135 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %134) #23
  %136 = shl i64 %135, 32
  %137 = add i64 %136, 4294967296
  %138 = ashr exact i64 %137, 32
  %139 = tail call ptr @xmalloc(i64 noundef %138) #24
  %140 = load ptr, ptr %129, align 8, !tbaa !66
  %141 = getelementptr inbounds ptr, ptr %140, i64 %131
  store ptr %139, ptr %141, align 8, !tbaa !42
  %142 = load ptr, ptr %129, align 8, !tbaa !66
  %143 = getelementptr inbounds ptr, ptr %142, i64 %131
  %144 = load ptr, ptr %143, align 8, !tbaa !42
  %145 = load ptr, ptr %128, align 8, !tbaa !66
  %146 = getelementptr inbounds ptr, ptr %145, i64 %131
  %147 = load ptr, ptr %146, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %144, ptr align 1 %147, i64 %138, i1 false)
  %148 = add nuw nsw i64 %131, 1
  %149 = load i32, ptr %117, align 8, !tbaa !67
  %150 = sext i32 %149 to i64
  %151 = icmp slt i64 %148, %150
  br i1 %151, label %130, label %152, !llvm.loop !164

152:                                              ; preds = %130, %116, %120
  %153 = getelementptr inbounds %struct.work_stuff, ptr %1, i64 0, i32 19
  %154 = load ptr, ptr %153, align 8, !tbaa !165
  %155 = icmp eq ptr %154, null
  br i1 %155, label %161, label %156

156:                                              ; preds = %152
  %157 = tail call ptr @xmalloc(i64 noundef 24) #24
  %158 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 19
  store ptr %157, ptr %158, align 8, !tbaa !165
  tail call fastcc void @string_init(ptr noundef %157) #23
  %159 = load ptr, ptr %158, align 8, !tbaa !165
  %160 = load ptr, ptr %153, align 8, !tbaa !165
  tail call fastcc void @string_appends(ptr noundef %159, ptr noundef %160) #23
  br label %161

161:                                              ; preds = %156, %152
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_work_stuff(ptr nocapture noundef %0) unnamed_addr #1 !prof !34 !PGOFuncName !166 {
  tail call fastcc void @delete_non_B_K_work_stuff(ptr noundef %0) #23
  tail call fastcc void @squangle_mop_up(ptr noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_non_B_K_work_stuff(ptr nocapture noundef %0) unnamed_addr #1 !prof !34 !PGOFuncName !167 {
  tail call fastcc void @forget_types(ptr noundef %0) #23
  %2 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %3) #23
  store ptr null, ptr %2, align 8, !tbaa !61
  %6 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 9
  store i32 0, ptr %6, align 4, !tbaa !160
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 16
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 17
  %13 = load i32, ptr %12, align 8, !tbaa !67
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %11, %24
  %16 = phi i32 [ %25, %24 ], [ %13, %11 ]
  %17 = phi i64 [ %26, %24 ], [ 0, %11 ]
  %18 = load ptr, ptr %8, align 8, !tbaa !66
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  tail call void @free(ptr noundef nonnull %20) #23
  %23 = load i32, ptr %12, align 8, !tbaa !67
  br label %24

24:                                               ; preds = %15, %22
  %25 = phi i32 [ %16, %15 ], [ %23, %22 ]
  %26 = add nuw nsw i64 %17, 1
  %27 = sext i32 %25 to i64
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %15, label %29, !llvm.loop !168

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !tbaa !66
  br label %31

31:                                               ; preds = %29, %11
  %32 = phi ptr [ %30, %29 ], [ %9, %11 ]
  tail call void @free(ptr noundef %32) #23
  store ptr null, ptr %8, align 8, !tbaa !66
  br label %33

33:                                               ; preds = %31, %7
  %34 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !165
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  tail call fastcc void @string_delete(ptr noundef nonnull %35) #23
  %38 = load ptr, ptr %34, align 8, !tbaa !165
  tail call void @free(ptr noundef %38) #23
  store ptr null, ptr %34, align 8, !tbaa !165
  br label %39

39:                                               ; preds = %37, %33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @forget_types(ptr nocapture noundef %0) unnamed_addr #1 !prof !34 !PGOFuncName !169 {
  %2 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !60
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 1
  br label %7

7:                                                ; preds = %5, %19
  %8 = phi i32 [ %3, %5 ], [ %20, %19 ]
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %2, align 8, !tbaa !60
  %10 = load ptr, ptr %6, align 8, !tbaa !61
  %11 = zext nneg i32 %9 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %13) #23
  %16 = load ptr, ptr %6, align 8, !tbaa !61
  %17 = getelementptr inbounds ptr, ptr %16, i64 %11
  store ptr null, ptr %17, align 8, !tbaa !42
  %18 = load i32, ptr %2, align 8, !tbaa !60
  br label %19

19:                                               ; preds = %15, %7
  %20 = phi i32 [ %18, %15 ], [ %9, %7 ]
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %7, label %22, !llvm.loop !170

22:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remember_type(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 !prof !34 !PGOFuncName !171 {
  %4 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !172
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %38

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 8
  %9 = load i32, ptr %8, align 8, !tbaa !60
  %10 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 9
  %11 = load i32, ptr %10, align 4, !tbaa !160
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %26, label %13

13:                                               ; preds = %7
  %14 = icmp eq i32 %11, 0
  %15 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 1
  br i1 %14, label %16, label %18

16:                                               ; preds = %13
  store i32 3, ptr %10, align 4, !tbaa !160
  %17 = tail call ptr @xmalloc(i64 noundef 24) #24
  br label %24

18:                                               ; preds = %13
  %19 = shl nsw i32 %11, 1
  store i32 %19, ptr %10, align 4, !tbaa !160
  %20 = load ptr, ptr %15, align 8, !tbaa !61
  %21 = sext i32 %19 to i64
  %22 = shl nsw i64 %21, 3
  %23 = tail call ptr @xrealloc(ptr noundef %20, i64 noundef %22) #24
  br label %24

24:                                               ; preds = %18, %16
  %25 = phi ptr [ %17, %16 ], [ %23, %18 ]
  store ptr %25, ptr %15, align 8, !tbaa !61
  br label %26

26:                                               ; preds = %24, %7
  %27 = add nsw i32 %2, 1
  %28 = sext i32 %27 to i64
  %29 = tail call ptr @xmalloc(i64 noundef %28) #24
  %30 = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %29, ptr align 1 %1, i64 %30, i1 false)
  %31 = getelementptr inbounds i8, ptr %29, i64 %30
  store i8 0, ptr %31, align 1, !tbaa !35
  %32 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !61
  %34 = load i32, ptr %8, align 8, !tbaa !60
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %8, align 8, !tbaa !60
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds ptr, ptr %33, i64 %36
  store ptr %29, ptr %37, align 8, !tbaa !42
  br label %38

38:                                               ; preds = %3, %26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @code_for_qualifier(i32 noundef %0) unnamed_addr #1 !prof !34 !PGOFuncName !173 {
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
  tail call void @abort() #25
  unreachable

5:                                                ; preds = %1, %3, %2
  %6 = phi i32 [ 4, %3 ], [ 2, %2 ], [ 1, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @demangle_class(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #1 !prof !34 !PGOFuncName !174 {
  %4 = alloca %struct.string, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  call fastcc void @string_init(ptr noundef nonnull %4) #23
  %5 = tail call fastcc i32 @register_Btype(ptr noundef %0) #23
  %6 = call fastcc i32 @demangle_class_name(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #23, !range !58
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %58, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.string, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 10
  %12 = load i32, ptr %11, align 8, !tbaa !87
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 11
  %17 = load i32, ptr %16, align 4, !tbaa !86
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %15, %8
  %21 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 13
  %22 = load i32, ptr %21, align 4, !tbaa !97
  switch i32 %22, label %23 [
    i32 0, label %27
    i32 -1, label %27
  ]

23:                                               ; preds = %20
  %24 = load ptr, ptr %4, align 8, !tbaa !44
  %25 = sext i32 %22 to i64
  %26 = getelementptr inbounds i8, ptr %24, i64 %25
  store ptr %26, ptr %9, align 8, !tbaa !46
  br label %27

27:                                               ; preds = %20, %20, %23
  call fastcc void @string_prepends(ptr noundef %2, ptr noundef nonnull %4) #23
  %28 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 11
  %29 = load i32, ptr %28, align 4, !tbaa !86
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  tail call fastcc void @string_prepend(ptr noundef %2, ptr noundef nonnull @.str.139) #23
  %33 = load i32, ptr %28, align 4, !tbaa !86
  %34 = add nsw i32 %33, -1
  store i32 %34, ptr %28, align 4, !tbaa !86
  br label %38

35:                                               ; preds = %27
  %36 = load i32, ptr %11, align 8, !tbaa !87
  %37 = add nsw i32 %36, -1
  store i32 %37, ptr %11, align 8, !tbaa !87
  br label %38

38:                                               ; preds = %32, %35, %15
  store ptr %10, ptr %9, align 8, !tbaa !46
  %39 = load ptr, ptr %4, align 8
  %40 = icmp eq ptr %39, %10
  %41 = ptrtoint ptr %10 to i64
  %42 = ptrtoint ptr %39 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  %45 = select i1 %40, i32 0, i32 %44
  tail call fastcc void @remember_Ktype(ptr noundef nonnull %0, ptr noundef %39, i32 noundef %45) #23
  %46 = load ptr, ptr %4, align 8
  %47 = load ptr, ptr %9, align 8
  %48 = icmp eq ptr %46, %47
  %49 = ptrtoint ptr %47 to i64
  %50 = ptrtoint ptr %46 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  %53 = select i1 %48, i32 0, i32 %52
  tail call fastcc void @remember_Btype(ptr noundef nonnull %0, ptr noundef %46, i32 noundef %53, i32 noundef %5) #23
  %54 = load i32, ptr %0, align 8, !tbaa !38
  %55 = and i32 %54, 4
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, ptr @.str.187, ptr @.str.186
  tail call fastcc void @string_prepend(ptr noundef %2, ptr noundef nonnull %57) #23
  call fastcc void @string_prepends(ptr noundef %2, ptr noundef nonnull %4) #23
  br label %58

58:                                               ; preds = %38, %3
  %59 = phi i32 [ 1, %38 ], [ 0, %3 ]
  call fastcc void @string_delete(ptr noundef nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  ret i32 %59
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @demangle_args(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #1 !prof !34 !PGOFuncName !175 {
  %4 = alloca %struct.string, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  %8 = load i32, ptr %0, align 8, !tbaa !38
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.208) #23
  %12 = load ptr, ptr %1, align 8, !tbaa !42
  %13 = load i8, ptr %12, align 1, !tbaa !35
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.228) #23
  br label %16

16:                                               ; preds = %11, %15, %3
  %17 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 20
  %18 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 8
  %19 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 1
  br label %20

20:                                               ; preds = %110, %16
  %21 = phi i32 [ 0, %16 ], [ %111, %110 ]
  %22 = load ptr, ptr %1, align 8, !tbaa !42
  %23 = load i8, ptr %22, align 1, !tbaa !35
  switch i8 %23, label %93 [
    i8 95, label %24
    i8 0, label %24
    i8 101, label %24
    i8 78, label %28
    i8 84, label %28
  ]

24:                                               ; preds = %20, %20, %20
  %25 = load i32, ptr %17, align 8, !tbaa !176
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %112

27:                                               ; preds = %24
  switch i8 %23, label %93 [
    i8 78, label %28
    i8 84, label %28
  ]

28:                                               ; preds = %20, %20, %27, %27
  %29 = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %29, ptr %1, align 8, !tbaa !42
  %30 = load i8, ptr %22, align 1, !tbaa !35
  %31 = icmp eq i8 %30, 78
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = call fastcc i32 @get_count(ptr noundef nonnull %1, ptr noundef nonnull %5) #23, !range !58
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %129, label %36

35:                                               ; preds = %28
  store i32 1, ptr %5, align 4, !tbaa !59
  br label %36

36:                                               ; preds = %32, %35
  %37 = load i32, ptr %0, align 8, !tbaa !38
  %38 = and i32 %37, 14336
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr %18, align 8, !tbaa !60
  %42 = icmp sgt i32 %41, 9
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = tail call fastcc i32 @consume_count(ptr noundef nonnull %1) #23
  store i32 %44, ptr %6, align 4, !tbaa !59
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %129, label %49

46:                                               ; preds = %36, %40
  %47 = call fastcc i32 @get_count(ptr noundef nonnull %1, ptr noundef nonnull %6) #23, !range !58
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %129, label %49

49:                                               ; preds = %46, %43
  %50 = load i32, ptr %0, align 8, !tbaa !38
  %51 = and i32 %50, 15360
  %52 = icmp eq i32 %51, 0
  %53 = load i32, ptr %6, align 4, !tbaa !59
  br i1 %52, label %56, label %54

54:                                               ; preds = %49
  %55 = add nsw i32 %53, -1
  store i32 %55, ptr %6, align 4, !tbaa !59
  br label %56

56:                                               ; preds = %49, %54
  %57 = phi i32 [ %55, %54 ], [ %53, %49 ]
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %129, label %59

59:                                               ; preds = %56
  %60 = load i32, ptr %18, align 8, !tbaa !60
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %129

62:                                               ; preds = %59
  %63 = load i32, ptr %5, align 4, !tbaa !59
  %64 = zext nneg i32 %57 to i64
  br label %65

65:                                               ; preds = %62, %92
  %66 = phi i32 [ %74, %92 ], [ %63, %62 ]
  %67 = phi i32 [ 1, %92 ], [ %21, %62 ]
  %68 = load i32, ptr %17, align 8, !tbaa !176
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = add nsw i32 %66, -1
  %72 = icmp sgt i32 %66, 0
  br i1 %72, label %73, label %109

73:                                               ; preds = %65, %70
  %74 = phi i32 [ %66, %65 ], [ %71, %70 ]
  %75 = load ptr, ptr %19, align 8, !tbaa !61
  %76 = getelementptr inbounds ptr, ptr %75, i64 %64
  %77 = load ptr, ptr %76, align 8, !tbaa !42
  store ptr %77, ptr %7, align 8, !tbaa !42
  %78 = icmp eq i32 %67, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %73
  %80 = load i32, ptr %0, align 8, !tbaa !38
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.166) #23
  br label %84

84:                                               ; preds = %83, %79, %73
  %85 = call fastcc i32 @do_arg(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %4) #23, !range !58
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %129, label %87

87:                                               ; preds = %84
  %88 = load i32, ptr %0, align 8, !tbaa !38
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  call fastcc void @string_appends(ptr noundef %2, ptr noundef nonnull %4) #23
  br label %92

92:                                               ; preds = %91, %87
  call fastcc void @string_delete(ptr noundef nonnull %4) #23
  br label %65, !llvm.loop !177

93:                                               ; preds = %20, %27
  %94 = icmp eq i32 %21, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %93
  %96 = load i32, ptr %0, align 8, !tbaa !38
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.166) #23
  br label %100

100:                                              ; preds = %99, %95, %93
  %101 = call fastcc i32 @do_arg(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %4) #23, !range !58
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %129, label %103

103:                                              ; preds = %100
  %104 = load i32, ptr %0, align 8, !tbaa !38
  %105 = and i32 %104, 1
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  call fastcc void @string_appends(ptr noundef %2, ptr noundef nonnull %4) #23
  br label %108

108:                                              ; preds = %107, %103
  call fastcc void @string_delete(ptr noundef nonnull %4) #23
  br label %110

109:                                              ; preds = %70
  store i32 %71, ptr %5, align 4, !tbaa !59
  br label %110

110:                                              ; preds = %109, %108
  %111 = phi i32 [ 1, %108 ], [ %67, %109 ]
  br label %20, !llvm.loop !178

112:                                              ; preds = %24
  %113 = icmp eq i8 %23, 101
  %114 = load i32, ptr %0, align 8, !tbaa !38
  br i1 %113, label %115, label %124

115:                                              ; preds = %112
  %116 = getelementptr inbounds i8, ptr %22, i64 1
  store ptr %116, ptr %1, align 8, !tbaa !42
  %117 = and i32 %114, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = icmp eq i32 %21, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %119
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.217) #23
  br label %122

122:                                              ; preds = %121, %119
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.229) #23
  %123 = load i32, ptr %0, align 8, !tbaa !38
  br label %124

124:                                              ; preds = %115, %122, %112
  %125 = phi i32 [ %114, %115 ], [ %123, %122 ], [ %114, %112 ]
  %126 = and i32 %125, 1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  tail call fastcc void @string_append(ptr noundef %2, ptr noundef nonnull @.str.209) #23
  br label %129

129:                                              ; preds = %100, %56, %59, %46, %43, %32, %84, %124, %128
  %130 = phi i32 [ 1, %128 ], [ 1, %124 ], [ 0, %84 ], [ 0, %32 ], [ 0, %43 ], [ 0, %46 ], [ 0, %59 ], [ 0, %56 ], [ 0, %100 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  ret i32 %130
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef nonnull ptr @qualifier_string(i32 noundef %0) unnamed_addr #1 !prof !34 !PGOFuncName !179 {
  %2 = icmp ult i32 %0, 8
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @abort() #25
  unreachable

4:                                                ; preds = %1
  %5 = zext nneg i32 %0 to i64
  %6 = shl i64 %5, 2
  %7 = call ptr @llvm.load.relative.i64(ptr @reltable.qualifier_string, i64 %6)
  ret ptr %7
}

; Function Attrs: noreturn optsize
declare void @abort() local_unnamed_addr #18

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @demangle_class_name(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #1 !prof !34 !PGOFuncName !180 {
  %4 = tail call fastcc i32 @consume_count(ptr noundef %1) #23
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %1, align 8, !tbaa !42
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #23
  %9 = trunc i64 %8 to i32
  %10 = icmp sgt i32 %4, %9
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call fastcc void @demangle_arm_hp_template(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %4, ptr noundef %2) #23
  br label %12

12:                                               ; preds = %6, %11, %3
  %13 = phi i32 [ 0, %3 ], [ 1, %11 ], [ 0, %6 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @do_arg(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #1 !prof !34 !PGOFuncName !181 {
  %4 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 20
  %5 = load ptr, ptr %1, align 8, !tbaa !42
  tail call fastcc void @string_init(ptr noundef %2) #23
  %6 = load i32, ptr %4, align 8, !tbaa !176
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %1, align 8, !tbaa !42
  %10 = load i8, ptr %9, align 1, !tbaa !35
  %11 = icmp eq i8 %10, 110
  br i1 %11, label %23, label %40

12:                                               ; preds = %36, %3
  %13 = phi i32 [ %6, %3 ], [ %38, %36 ]
  %14 = add nsw i32 %13, -1
  store i32 %14, ptr %4, align 8, !tbaa !176
  %15 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !165
  %17 = icmp eq ptr %16, null
  br i1 %17, label %60, label %18

18:                                               ; preds = %12
  tail call fastcc void @string_appends(ptr noundef %2, ptr noundef nonnull %16) #23
  br label %60

19:                                               ; preds = %36
  %20 = load ptr, ptr %1, align 8, !tbaa !42
  %21 = load i8, ptr %20, align 1, !tbaa !35
  %22 = icmp eq i8 %21, 110
  br i1 %22, label %23, label %40

23:                                               ; preds = %8, %19
  %24 = phi ptr [ %20, %19 ], [ %9, %8 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %25, ptr %1, align 8, !tbaa !42
  %26 = tail call fastcc i32 @consume_count(ptr noundef nonnull %1) #23
  store i32 %26, ptr %4, align 8, !tbaa !176
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %60, label %28

28:                                               ; preds = %23
  %29 = icmp ugt i32 %26, 9
  %30 = load ptr, ptr %1, align 8, !tbaa !42
  br i1 %29, label %31, label %36

31:                                               ; preds = %28
  %32 = load i8, ptr %30, align 1, !tbaa !35
  %33 = icmp eq i8 %32, 95
  br i1 %33, label %34, label %60

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, ptr %30, i64 1
  store ptr %35, ptr %1, align 8, !tbaa !42
  br label %36

36:                                               ; preds = %34, %28
  %37 = phi ptr [ %35, %34 ], [ %30, %28 ]
  tail call fastcc void @string_init(ptr noundef %2) #23
  %38 = load i32, ptr %4, align 8, !tbaa !176
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %12, label %19

40:                                               ; preds = %19, %8
  %41 = phi ptr [ %5, %8 ], [ %37, %19 ]
  %42 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 19
  %43 = load ptr, ptr %42, align 8, !tbaa !165
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  tail call fastcc void @string_delete(ptr noundef nonnull %43) #23
  %46 = load ptr, ptr %42, align 8, !tbaa !165
  br label %49

47:                                               ; preds = %40
  %48 = tail call ptr @xmalloc(i64 noundef 24) #24
  store ptr %48, ptr %42, align 8, !tbaa !165
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi ptr [ %48, %47 ], [ %46, %45 ]
  %51 = tail call fastcc i32 @do_type(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %50) #23, !range !43
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %42, align 8, !tbaa !165
  tail call fastcc void @string_appends(ptr noundef %2, ptr noundef %54) #23
  %55 = load ptr, ptr %1, align 8, !tbaa !42
  %56 = ptrtoint ptr %55 to i64
  %57 = ptrtoint ptr %41 to i64
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  tail call fastcc void @remember_type(ptr noundef nonnull %0, ptr noundef %41, i32 noundef %59) #23
  br label %60

60:                                               ; preds = %31, %23, %49, %12, %53, %18
  %61 = phi i32 [ 1, %18 ], [ 1, %53 ], [ 0, %12 ], [ 0, %49 ], [ 0, %23 ], [ 0, %31 ]
  ret i32 %61
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @forget_B_and_K_types(ptr nocapture noundef %0) unnamed_addr #1 !prof !34 !PGOFuncName !182 {
  %2 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !103
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 2
  br label %13

7:                                                ; preds = %25, %1
  %8 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !64
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 3
  br label %28

13:                                               ; preds = %5, %25
  %14 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %15 = add nsw i32 %14, -1
  store i32 %15, ptr %2, align 8, !tbaa !103
  %16 = load ptr, ptr %6, align 8, !tbaa !70
  %17 = zext nneg i32 %15 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %13
  tail call void @free(ptr noundef nonnull %19) #23
  %22 = load ptr, ptr %6, align 8, !tbaa !70
  %23 = getelementptr inbounds ptr, ptr %22, i64 %17
  store ptr null, ptr %23, align 8, !tbaa !42
  %24 = load i32, ptr %2, align 8, !tbaa !103
  br label %25

25:                                               ; preds = %21, %13
  %26 = phi i32 [ %24, %21 ], [ %15, %13 ]
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %13, label %7, !llvm.loop !183

28:                                               ; preds = %11, %40
  %29 = phi i32 [ %9, %11 ], [ %41, %40 ]
  %30 = add nsw i32 %29, -1
  store i32 %30, ptr %8, align 4, !tbaa !64
  %31 = load ptr, ptr %12, align 8, !tbaa !65
  %32 = zext nneg i32 %30 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !42
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  tail call void @free(ptr noundef nonnull %34) #23
  %37 = load ptr, ptr %12, align 8, !tbaa !65
  %38 = getelementptr inbounds ptr, ptr %37, i64 %32
  store ptr null, ptr %38, align 8, !tbaa !42
  %39 = load i32, ptr %8, align 4, !tbaa !64
  br label %40

40:                                               ; preds = %36, %28
  %41 = phi i32 [ %39, %36 ], [ %30, %28 ]
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %28, label %43, !llvm.loop !184

43:                                               ; preds = %40, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @demangle_nested_args(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #1 !prof !34 !PGOFuncName !185 {
  %4 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !172
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %4, align 4, !tbaa !172
  %7 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !165
  %9 = getelementptr inbounds %struct.work_stuff, ptr %0, i64 0, i32 20
  %10 = load i32, ptr %9, align 8, !tbaa !176
  store ptr null, ptr %7, align 8, !tbaa !165
  store i32 0, ptr %9, align 8, !tbaa !176
  %11 = tail call fastcc i32 @demangle_args(ptr noundef %0, ptr noundef %1, ptr noundef %2) #23, !range !58
  %12 = load ptr, ptr %7, align 8, !tbaa !165
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  tail call fastcc void @string_delete(ptr noundef nonnull %12) #23
  %15 = load ptr, ptr %7, align 8, !tbaa !165
  tail call void @free(ptr noundef %15) #23
  br label %16

16:                                               ; preds = %14, %3
  store ptr %8, ptr %7, align 8, !tbaa !165
  %17 = load i32, ptr %4, align 4, !tbaa !172
  %18 = add nsw i32 %17, -1
  store i32 %18, ptr %4, align 4, !tbaa !172
  store i32 %10, ptr %9, align 8, !tbaa !176
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef nonnull ptr @demangle_qualifier(i32 noundef %0) unnamed_addr #1 !prof !34 !PGOFuncName !186 {
  %2 = tail call fastcc i32 @code_for_qualifier(i32 noundef %0) #23, !range !62
  %3 = tail call fastcc ptr @qualifier_string(i32 noundef %2) #23
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @demangle_fund_type(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #1 !prof !34 !PGOFuncName !187 {
  %4 = alloca [37 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.string, align 8
  %7 = alloca %struct.string, align 8
  call void @llvm.lifetime.start.p0(i64 37, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  store i32 0, ptr %5, align 4, !tbaa !59
  %8 = getelementptr inbounds %struct.string, ptr %2, i64 0, i32 1
  br label %9

9:                                                ; preds = %52, %3
  %10 = load ptr, ptr %1, align 8, !tbaa !42
  %11 = load i8, ptr %10, align 1, !tbaa !35
  switch i8 %11, label %53 [
    i8 67, label %12
    i8 86, label %12
    i8 117, label %12
    i8 85, label %31
    i8 83, label %38
    i8 74, label %45
  ]

12:                                               ; preds = %9, %9, %9
  %13 = load i32, ptr %0, align 8, !tbaa !38
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %2, align 8, !tbaa !44
  %18 = load ptr, ptr %8, align 8, !tbaa !46
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  tail call fastcc void @string_prepend(ptr noundef nonnull %2, ptr noundef nonnull @.str.198) #23
  %21 = load ptr, ptr %1, align 8, !tbaa !42
  %22 = load i8, ptr %21, align 1, !tbaa !35
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i8 [ %22, %20 ], [ %11, %16 ]
  %25 = sext i8 %24 to i32
  %26 = tail call fastcc ptr @demangle_qualifier(i32 noundef %25) #23
  tail call fastcc void @string_prepend(ptr noundef nonnull %2, ptr noundef nonnull %26) #23
  %27 = load ptr, ptr %1, align 8, !tbaa !42
  br label %28

28:                                               ; preds = %23, %12
  %29 = phi ptr [ %27, %23 ], [ %10, %12 ]
  %30 = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %30, ptr %1, align 8, !tbaa !42
  br label %52

31:                                               ; preds = %9
  %32 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %32, ptr %1, align 8, !tbaa !42
  %33 = load ptr, ptr %2, align 8, !tbaa !44
  %34 = load ptr, ptr %8, align 8, !tbaa !46
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198) #23
  br label %37

37:                                               ; preds = %36, %31
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.239) #23
  br label %52

38:                                               ; preds = %9
  %39 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %39, ptr %1, align 8, !tbaa !42
  %40 = load ptr, ptr %2, align 8, !tbaa !44
  %41 = load ptr, ptr %8, align 8, !tbaa !46
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198) #23
  br label %44

44:                                               ; preds = %43, %38
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.240) #23
  br label %52

45:                                               ; preds = %9
  %46 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %46, ptr %1, align 8, !tbaa !42
  %47 = load ptr, ptr %2, align 8, !tbaa !44
  %48 = load ptr, ptr %8, align 8, !tbaa !46
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198) #23
  br label %51

51:                                               ; preds = %50, %45
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.241) #23
  br label %52

52:                                               ; preds = %51, %44, %37, %28
  br label %9, !llvm.loop !188

53:                                               ; preds = %9
  %54 = load ptr, ptr %1, align 8, !tbaa !42
  %55 = load i8, ptr %54, align 1, !tbaa !35
  switch i8 %55, label %210 [
    i8 0, label %211
    i8 95, label %211
    i8 118, label %56
    i8 120, label %63
    i8 108, label %70
    i8 105, label %77
    i8 115, label %84
    i8 98, label %91
    i8 99, label %98
    i8 119, label %105
    i8 114, label %112
    i8 100, label %119
    i8 102, label %126
    i8 71, label %133
    i8 73, label %141
    i8 48, label %183
    i8 49, label %183
    i8 50, label %183
    i8 51, label %183
    i8 52, label %183
    i8 53, label %183
    i8 54, label %183
    i8 55, label %183
    i8 56, label %183
    i8 57, label %183
    i8 116, label %204
  ]

56:                                               ; preds = %53
  %57 = getelementptr inbounds i8, ptr %54, i64 1
  store ptr %57, ptr %1, align 8, !tbaa !42
  %58 = load ptr, ptr %2, align 8, !tbaa !44
  %59 = load ptr, ptr %8, align 8, !tbaa !46
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198) #23
  br label %62

62:                                               ; preds = %61, %56
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.228) #23
  br label %211

63:                                               ; preds = %53
  %64 = getelementptr inbounds i8, ptr %54, i64 1
  store ptr %64, ptr %1, align 8, !tbaa !42
  %65 = load ptr, ptr %2, align 8, !tbaa !44
  %66 = load ptr, ptr %8, align 8, !tbaa !46
  %67 = icmp eq ptr %65, %66
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198) #23
  br label %69

69:                                               ; preds = %68, %63
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.242) #23
  br label %211

70:                                               ; preds = %53
  %71 = getelementptr inbounds i8, ptr %54, i64 1
  store ptr %71, ptr %1, align 8, !tbaa !42
  %72 = load ptr, ptr %2, align 8, !tbaa !44
  %73 = load ptr, ptr %8, align 8, !tbaa !46
  %74 = icmp eq ptr %72, %73
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198) #23
  br label %76

76:                                               ; preds = %75, %70
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.243) #23
  br label %211

77:                                               ; preds = %53
  %78 = getelementptr inbounds i8, ptr %54, i64 1
  store ptr %78, ptr %1, align 8, !tbaa !42
  %79 = load ptr, ptr %2, align 8, !tbaa !44
  %80 = load ptr, ptr %8, align 8, !tbaa !46
  %81 = icmp eq ptr %79, %80
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198) #23
  br label %83

83:                                               ; preds = %82, %77
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.244) #23
  br label %211

84:                                               ; preds = %53
  %85 = getelementptr inbounds i8, ptr %54, i64 1
  store ptr %85, ptr %1, align 8, !tbaa !42
  %86 = load ptr, ptr %2, align 8, !tbaa !44
  %87 = load ptr, ptr %8, align 8, !tbaa !46
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198) #23
  br label %90

90:                                               ; preds = %89, %84
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.245) #23
  br label %211

91:                                               ; preds = %53
  %92 = getelementptr inbounds i8, ptr %54, i64 1
  store ptr %92, ptr %1, align 8, !tbaa !42
  %93 = load ptr, ptr %2, align 8, !tbaa !44
  %94 = load ptr, ptr %8, align 8, !tbaa !46
  %95 = icmp eq ptr %93, %94
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198) #23
  br label %97

97:                                               ; preds = %96, %91
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.246) #23
  br label %211

98:                                               ; preds = %53
  %99 = getelementptr inbounds i8, ptr %54, i64 1
  store ptr %99, ptr %1, align 8, !tbaa !42
  %100 = load ptr, ptr %2, align 8, !tbaa !44
  %101 = load ptr, ptr %8, align 8, !tbaa !46
  %102 = icmp eq ptr %100, %101
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198) #23
  br label %104

104:                                              ; preds = %103, %98
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.247) #23
  br label %211

105:                                              ; preds = %53
  %106 = getelementptr inbounds i8, ptr %54, i64 1
  store ptr %106, ptr %1, align 8, !tbaa !42
  %107 = load ptr, ptr %2, align 8, !tbaa !44
  %108 = load ptr, ptr %8, align 8, !tbaa !46
  %109 = icmp eq ptr %107, %108
  br i1 %109, label %111, label %110

110:                                              ; preds = %105
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198) #23
  br label %111

111:                                              ; preds = %110, %105
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.248) #23
  br label %211

112:                                              ; preds = %53
  %113 = getelementptr inbounds i8, ptr %54, i64 1
  store ptr %113, ptr %1, align 8, !tbaa !42
  %114 = load ptr, ptr %2, align 8, !tbaa !44
  %115 = load ptr, ptr %8, align 8, !tbaa !46
  %116 = icmp eq ptr %114, %115
  br i1 %116, label %118, label %117

117:                                              ; preds = %112
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198) #23
  br label %118

118:                                              ; preds = %117, %112
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.249) #23
  br label %211

119:                                              ; preds = %53
  %120 = getelementptr inbounds i8, ptr %54, i64 1
  store ptr %120, ptr %1, align 8, !tbaa !42
  %121 = load ptr, ptr %2, align 8, !tbaa !44
  %122 = load ptr, ptr %8, align 8, !tbaa !46
  %123 = icmp eq ptr %121, %122
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198) #23
  br label %125

125:                                              ; preds = %124, %119
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.250) #23
  br label %211

126:                                              ; preds = %53
  %127 = getelementptr inbounds i8, ptr %54, i64 1
  store ptr %127, ptr %1, align 8, !tbaa !42
  %128 = load ptr, ptr %2, align 8, !tbaa !44
  %129 = load ptr, ptr %8, align 8, !tbaa !46
  %130 = icmp eq ptr %128, %129
  br i1 %130, label %132, label %131

131:                                              ; preds = %126
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198) #23
  br label %132

132:                                              ; preds = %131, %126
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.251) #23
  br label %211

133:                                              ; preds = %53
  %134 = getelementptr inbounds i8, ptr %54, i64 1
  store ptr %134, ptr %1, align 8, !tbaa !42
  %135 = load i8, ptr %134, align 1, !tbaa !35
  %136 = zext i8 %135 to i64
  %137 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %136
  %138 = load i16, ptr %137, align 2, !tbaa !47
  %139 = and i16 %138, 4
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %210, label %141

141:                                              ; preds = %133, %53
  %142 = phi ptr [ %134, %133 ], [ %54, %53 ]
  %143 = getelementptr inbounds i8, ptr %142, i64 1
  store ptr %143, ptr %1, align 8, !tbaa !42
  %144 = load i8, ptr %143, align 1, !tbaa !35
  %145 = icmp eq i8 %144, 95
  br i1 %145, label %146, label %167

146:                                              ; preds = %141
  %147 = getelementptr inbounds i8, ptr %142, i64 2
  store ptr %147, ptr %1, align 8, !tbaa !42
  br label %148

148:                                              ; preds = %146, %152
  %149 = phi i64 [ 0, %146 ], [ %155, %152 ]
  %150 = phi ptr [ %147, %146 ], [ %154, %152 ]
  %151 = load i8, ptr %150, align 1, !tbaa !35
  switch i8 %151, label %152 [
    i8 0, label %159
    i8 95, label %159
  ]

152:                                              ; preds = %148
  %153 = getelementptr inbounds [37 x i8], ptr %4, i64 0, i64 %149
  store i8 %151, ptr %153, align 1, !tbaa !35
  %154 = getelementptr inbounds i8, ptr %150, i64 1
  store ptr %154, ptr %1, align 8, !tbaa !42
  %155 = add nuw nsw i64 %149, 1
  %156 = icmp eq i64 %155, 36
  br i1 %156, label %157, label %148, !llvm.loop !189

157:                                              ; preds = %152
  %158 = load i8, ptr %154, align 1, !tbaa !35
  br label %159

159:                                              ; preds = %148, %148, %157
  %160 = phi i8 [ %158, %157 ], [ %151, %148 ], [ %151, %148 ]
  %161 = phi ptr [ %154, %157 ], [ %150, %148 ], [ %150, %148 ]
  %162 = phi i64 [ 36, %157 ], [ %149, %148 ], [ %149, %148 ]
  %163 = icmp eq i8 %160, 95
  br i1 %163, label %164, label %210

164:                                              ; preds = %159
  %165 = getelementptr inbounds [37 x i8], ptr %4, i64 0, i64 %162
  store i8 0, ptr %165, align 1, !tbaa !35
  %166 = getelementptr inbounds i8, ptr %161, i64 1
  br label %173

167:                                              ; preds = %141
  %168 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %143, i64 noundef 2) #23
  %169 = getelementptr inbounds [37 x i8], ptr %4, i64 0, i64 2
  store i8 0, ptr %169, align 2, !tbaa !35
  %170 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %143) #23
  %171 = call i64 @llvm.umin.i64(i64 %170, i64 2)
  %172 = getelementptr inbounds i8, ptr %143, i64 %171
  br label %173

173:                                              ; preds = %164, %167
  %174 = phi ptr [ %172, %167 ], [ %166, %164 ]
  store ptr %174, ptr %1, align 8, !tbaa !42
  %175 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %4, ptr noundef nonnull @.str.252, ptr noundef nonnull %5) #23
  %176 = load i32, ptr %5, align 4, !tbaa !59
  %177 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.253, i32 noundef %176) #23
  %178 = load ptr, ptr %2, align 8, !tbaa !44
  %179 = load ptr, ptr %8, align 8, !tbaa !46
  %180 = icmp eq ptr %178, %179
  br i1 %180, label %182, label %181

181:                                              ; preds = %173
  call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198) #23
  br label %182

182:                                              ; preds = %181, %173
  call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull %4) #23
  br label %211

183:                                              ; preds = %53, %53, %53, %53, %53, %53, %53, %53, %53, %53
  %184 = tail call fastcc i32 @register_Btype(ptr noundef %0) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #22
  call fastcc void @string_init(ptr noundef nonnull %6) #23
  %185 = call fastcc i32 @demangle_class_name(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %6) #23, !range !58
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %202, label %187

187:                                              ; preds = %183
  %188 = load ptr, ptr %6, align 8
  %189 = getelementptr inbounds %struct.string, ptr %6, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8
  %191 = icmp eq ptr %188, %190
  %192 = ptrtoint ptr %190 to i64
  %193 = ptrtoint ptr %188 to i64
  %194 = sub i64 %192, %193
  %195 = trunc i64 %194 to i32
  %196 = select i1 %191, i32 0, i32 %195
  tail call fastcc void @remember_Btype(ptr noundef %0, ptr noundef %188, i32 noundef %196, i32 noundef %184) #23
  %197 = load ptr, ptr %2, align 8, !tbaa !44
  %198 = load ptr, ptr %8, align 8, !tbaa !46
  %199 = icmp eq ptr %197, %198
  br i1 %199, label %201, label %200

200:                                              ; preds = %187
  tail call fastcc void @string_append(ptr noundef nonnull %2, ptr noundef nonnull @.str.198) #23
  br label %201

201:                                              ; preds = %200, %187
  call fastcc void @string_appends(ptr noundef nonnull %2, ptr noundef nonnull %6) #23
  br label %202

202:                                              ; preds = %183, %201
  %203 = phi i32 [ 1, %201 ], [ 0, %183 ]
  call fastcc void @string_delete(ptr noundef nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #22
  br label %207

204:                                              ; preds = %53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #22
  call fastcc void @string_init(ptr noundef nonnull %7) #23
  %205 = call fastcc i32 @demangle_template(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %7, ptr noundef null, i32 noundef 1, i32 noundef 1) #23
  call fastcc void @string_appends(ptr noundef %2, ptr noundef nonnull %7) #23
  call fastcc void @string_delete(ptr noundef nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #22
  %206 = freeze i32 %205
  br label %207

207:                                              ; preds = %204, %202
  %208 = phi i32 [ %206, %204 ], [ %203, %202 ]
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %53, %159, %133, %207
  br label %211

211:                                              ; preds = %53, %53, %62, %69, %76, %83, %90, %97, %104, %111, %118, %125, %132, %182, %207, %210
  %212 = phi i32 [ 0, %210 ], [ 3, %207 ], [ 3, %53 ], [ 3, %53 ], [ 3, %62 ], [ 3, %69 ], [ 3, %76 ], [ 3, %83 ], [ 3, %90 ], [ 4, %97 ], [ 5, %104 ], [ 5, %111 ], [ 6, %118 ], [ 6, %125 ], [ 6, %132 ], [ 3, %182 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 37, ptr nonnull %4) #22
  ret i32 %212
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #21

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind willreturn memory(argmem: read) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nounwind }
attributes #23 = { optsize }
attributes #24 = { nounwind optsize }
attributes #25 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 0}
!39 = !{!"work_stuff", !40, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !41, i64 80, !40, i64 88, !40, i64 92, !41, i64 96, !40, i64 104}
!40 = !{!"int", !36, i64 0}
!41 = !{!"any pointer", !36, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{i32 0, i32 7}
!44 = !{!45, !41, i64 0}
!45 = !{!"string", !41, i64 0, !41, i64 8, !41, i64 16}
!46 = !{!45, !41, i64 8}
!47 = !{!48, !48, i64 0}
!48 = !{!"short", !36, i64 0}
!49 = !{!50, !41, i64 0}
!50 = !{!"optable", !41, i64 0, !41, i64 8, !40, i64 16}
!51 = !{!50, !41, i64 8}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = distinct !{!54, !53}
!55 = distinct !{!55, !53}
!56 = distinct !{!56, !53}
!57 = !{!"cplus-dem.c:do_type"}
!58 = !{i32 0, i32 2}
!59 = !{!40, !40, i64 0}
!60 = !{!39, !40, i64 48}
!61 = !{!39, !41, i64 8}
!62 = !{i32 1, i32 5}
!63 = distinct !{!63, !53}
!64 = !{!39, !40, i64 36}
!65 = !{!39, !41, i64 24}
!66 = !{!39, !41, i64 80}
!67 = !{!39, !40, i64 88}
!68 = !{!"cplus-dem.c:string_delete"}
!69 = !{!"cplus-dem.c:squangle_mop_up"}
!70 = !{!39, !41, i64 16}
!71 = !{!50, !40, i64 16}
!72 = distinct !{!72, !53}
!73 = !{!74, !40, i64 8}
!74 = !{!"demangler_engine", !41, i64 0, !40, i64 8, !41, i64 16}
!75 = distinct !{!75, !53}
!76 = distinct !{!76, !53}
!77 = !{!74, !41, i64 0}
!78 = distinct !{!78, !53}
!79 = distinct !{!79, !53}
!80 = distinct !{!80, !53}
!81 = distinct !{!81, !53}
!82 = distinct !{!82, !53}
!83 = !{!"cplus-dem.c:internal_cplus_demangle"}
!84 = !{!39, !40, i64 64}
!85 = !{!39, !40, i64 72}
!86 = !{!39, !40, i64 60}
!87 = !{!39, !40, i64 56}
!88 = !{!39, !40, i64 76}
!89 = !{!"cplus-dem.c:string_init"}
!90 = !{!"cplus-dem.c:gnu_special"}
!91 = distinct !{!91, !53}
!92 = !{!"cplus-dem.c:demangle_prefix"}
!93 = distinct !{!93, !53}
!94 = distinct !{!94, !53}
!95 = !{!"cplus-dem.c:demangle_signature"}
!96 = distinct !{!96, !53}
!97 = !{!39, !40, i64 68}
!98 = distinct !{!98, !53}
!99 = distinct !{!99, !53}
!100 = !{!"cplus-dem.c:string_prepend"}
!101 = !{!"cplus-dem.c:mop_up"}
!102 = !{!"cplus-dem.c:demangle_qualified"}
!103 = !{!39, !40, i64 32}
!104 = !{!"cplus-dem.c:demangle_template"}
!105 = distinct !{!105, !53}
!106 = distinct !{!106, !53}
!107 = !{!"cplus-dem.c:consume_count"}
!108 = distinct !{!108, !53}
!109 = !{!"cplus-dem.c:string_appendn"}
!110 = !{!"cplus-dem.c:string_append"}
!111 = !{!"cplus-dem.c:register_Btype"}
!112 = !{!39, !40, i64 44}
!113 = !{!"cplus-dem.c:consume_count_with_underscores"}
!114 = !{!"cplus-dem.c:string_clear"}
!115 = !{!"cplus-dem.c:recursively_demangle"}
!116 = !{!"cplus-dem.c:string_appends"}
!117 = !{!"cplus-dem.c:remember_Ktype"}
!118 = !{!39, !40, i64 40}
!119 = !{!"cplus-dem.c:remember_Btype"}
!120 = !{!"cplus-dem.c:string_prepends"}
!121 = !{!"cplus-dem.c:string_need"}
!122 = !{!45, !41, i64 16}
!123 = !{!"cplus-dem.c:string_prependn"}
!124 = distinct !{!124, !53}
!125 = !{!"cplus-dem.c:string_append_template_idx"}
!126 = !{!"cplus-dem.c:get_count"}
!127 = distinct !{!127, !53}
!128 = !{!"cplus-dem.c:demangle_template_template_parm"}
!129 = distinct !{!129, !53}
!130 = !{!"cplus-dem.c:demangle_template_value_parm"}
!131 = !{!"cplus-dem.c:demangle_integral_value"}
!132 = !{!"cplus-dem.c:demangle_real_value"}
!133 = distinct !{!133, !53}
!134 = distinct !{!134, !53}
!135 = distinct !{!135, !53}
!136 = !{!"cplus-dem.c:demangle_expression"}
!137 = distinct !{!137, !53}
!138 = distinct !{!138, !53}
!139 = !{!"cplus-dem.c:demangle_arm_hp_template"}
!140 = distinct !{!140, !53}
!141 = !{!"cplus-dem.c:arm_special"}
!142 = distinct !{!142, !53}
!143 = distinct !{!143, !53}
!144 = !{!"cplus-dem.c:iterate_demangle_function"}
!145 = distinct !{!145, !53}
!146 = distinct !{!146, !53}
!147 = distinct !{!147, !53}
!148 = !{!"cplus-dem.c:do_hpacc_template_const_value"}
!149 = distinct !{!149, !53}
!150 = !{!"cplus-dem.c:do_hpacc_template_literal"}
!151 = !{!"cplus-dem.c:arm_pt"}
!152 = !{!"cplus-dem.c:snarf_numeric_literal"}
!153 = distinct !{!153, !53}
!154 = !{!"cplus-dem.c:demangle_function_name"}
!155 = distinct !{!155, !53}
!156 = distinct !{!156, !53}
!157 = distinct !{!157, !53}
!158 = distinct !{!158, !53}
!159 = !{!"cplus-dem.c:work_stuff_copy_to_from"}
!160 = !{!39, !40, i64 52}
!161 = distinct !{!161, !53}
!162 = distinct !{!162, !53}
!163 = distinct !{!163, !53}
!164 = distinct !{!164, !53}
!165 = !{!39, !41, i64 96}
!166 = !{!"cplus-dem.c:delete_work_stuff"}
!167 = !{!"cplus-dem.c:delete_non_B_K_work_stuff"}
!168 = distinct !{!168, !53}
!169 = !{!"cplus-dem.c:forget_types"}
!170 = distinct !{!170, !53}
!171 = !{!"cplus-dem.c:remember_type"}
!172 = !{!39, !40, i64 92}
!173 = !{!"cplus-dem.c:code_for_qualifier"}
!174 = !{!"cplus-dem.c:demangle_class"}
!175 = !{!"cplus-dem.c:demangle_args"}
!176 = !{!39, !40, i64 104}
!177 = distinct !{!177, !53}
!178 = distinct !{!178, !53}
!179 = !{!"cplus-dem.c:qualifier_string"}
!180 = !{!"cplus-dem.c:demangle_class_name"}
!181 = !{!"cplus-dem.c:do_arg"}
!182 = !{!"cplus-dem.c:forget_B_and_K_types"}
!183 = distinct !{!183, !53}
!184 = distinct !{!184, !53}
!185 = !{!"cplus-dem.c:demangle_nested_args"}
!186 = !{!"cplus-dem.c:demangle_qualifier"}
!187 = !{!"cplus-dem.c:demangle_fund_type"}
!188 = distinct !{!188, !53}
!189 = distinct !{!189, !53}
