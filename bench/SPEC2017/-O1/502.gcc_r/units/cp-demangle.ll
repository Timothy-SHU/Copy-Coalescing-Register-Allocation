; ModuleID = 'cp-demangle.c'
source_filename = "cp-demangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.demangle_operator_info = type { ptr, ptr, i32, i32 }
%struct.demangle_builtin_type_info = type { ptr, i32, ptr, i32, i32 }
%struct.d_standard_sub_info = type { i8, ptr, i32, ptr, i32, ptr, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.demangle_component = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32 }
%struct.d_info = type { ptr, ptr, i32, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32 }
%struct.d_print_info = type { i32, [256 x i8], i64, i8, ptr, ptr, ptr, ptr, i32, i32 }
%struct.d_print_mod = type { ptr, ptr, i32, ptr }
%struct.d_print_template = type { ptr, ptr }
%struct.d_growable_string = type { ptr, i64, i64, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [3 x i8] c"aN\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"&=\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"aS\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"aa\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ad\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"an\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"cm\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"co\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"dV\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"/=\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"da\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"delete[]\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"dl\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"dt\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"dv\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"eO\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"^=\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"eo\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"ix\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"lS\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"<<=\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"mI\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"mL\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"mi\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"ml\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"mm\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"na\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"new[]\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"ng\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"nt\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"nw\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"oR\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"|=\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"oo\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"pL\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"pl\00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"->*\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"pp\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"pt\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"qu\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"rM\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"%=\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"rS\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c">>=\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"rm\00", align 1
@.str.89 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"sizeof \00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"sz\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"at\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"alignof \00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"az\00", align 1
@cplus_demangle_operators = dso_local constant [53 x %struct.demangle_operator_info] [%struct.demangle_operator_info { ptr @.str, ptr @.str.1, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.2, ptr @.str.3, i32 1, i32 2 }, %struct.demangle_operator_info { ptr @.str.4, ptr @.str.5, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.6, ptr @.str.7, i32 1, i32 1 }, %struct.demangle_operator_info { ptr @.str.8, ptr @.str.7, i32 1, i32 2 }, %struct.demangle_operator_info { ptr @.str.9, ptr @.str.10, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.11, ptr @.str.12, i32 1, i32 2 }, %struct.demangle_operator_info { ptr @.str.13, ptr @.str.14, i32 1, i32 1 }, %struct.demangle_operator_info { ptr @.str.15, ptr @.str.16, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.17, ptr @.str.18, i32 8, i32 1 }, %struct.demangle_operator_info { ptr @.str.19, ptr @.str.20, i32 1, i32 1 }, %struct.demangle_operator_info { ptr @.str.21, ptr @.str.22, i32 6, i32 1 }, %struct.demangle_operator_info { ptr @.str.23, ptr @.str.24, i32 1, i32 2 }, %struct.demangle_operator_info { ptr @.str.25, ptr @.str.26, i32 1, i32 2 }, %struct.demangle_operator_info { ptr @.str.27, ptr @.str.28, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.29, ptr @.str.30, i32 1, i32 2 }, %struct.demangle_operator_info { ptr @.str.31, ptr @.str.32, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.33, ptr @.str.34, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.35, ptr @.str.36, i32 1, i32 2 }, %struct.demangle_operator_info { ptr @.str.37, ptr @.str.38, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.39, ptr @.str.40, i32 3, i32 2 }, %struct.demangle_operator_info { ptr @.str.41, ptr @.str.42, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.43, ptr @.str.44, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.45, ptr @.str.46, i32 1, i32 2 }, %struct.demangle_operator_info { ptr @.str.47, ptr @.str.48, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.49, ptr @.str.50, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.51, ptr @.str.52, i32 1, i32 2 }, %struct.demangle_operator_info { ptr @.str.53, ptr @.str.20, i32 1, i32 2 }, %struct.demangle_operator_info { ptr @.str.54, ptr @.str.55, i32 2, i32 1 }, %struct.demangle_operator_info { ptr @.str.56, ptr @.str.57, i32 5, i32 1 }, %struct.demangle_operator_info { ptr @.str.58, ptr @.str.59, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.60, ptr @.str.52, i32 1, i32 1 }, %struct.demangle_operator_info { ptr @.str.61, ptr @.str.62, i32 1, i32 1 }, %struct.demangle_operator_info { ptr @.str.63, ptr @.str.64, i32 3, i32 1 }, %struct.demangle_operator_info { ptr @.str.65, ptr @.str.66, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.67, ptr @.str.68, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.69, ptr @.str.70, i32 1, i32 2 }, %struct.demangle_operator_info { ptr @.str.71, ptr @.str.72, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.73, ptr @.str.74, i32 1, i32 2 }, %struct.demangle_operator_info { ptr @.str.75, ptr @.str.76, i32 3, i32 2 }, %struct.demangle_operator_info { ptr @.str.77, ptr @.str.78, i32 2, i32 1 }, %struct.demangle_operator_info { ptr @.str.79, ptr @.str.74, i32 1, i32 1 }, %struct.demangle_operator_info { ptr @.str.80, ptr @.str.81, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.82, ptr @.str.83, i32 1, i32 3 }, %struct.demangle_operator_info { ptr @.str.84, ptr @.str.85, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.86, ptr @.str.87, i32 3, i32 2 }, %struct.demangle_operator_info { ptr @.str.88, ptr @.str.89, i32 1, i32 2 }, %struct.demangle_operator_info { ptr @.str.90, ptr @.str.91, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.92, ptr @.str.93, i32 7, i32 1 }, %struct.demangle_operator_info { ptr @.str.94, ptr @.str.93, i32 7, i32 1 }, %struct.demangle_operator_info { ptr @.str.95, ptr @.str.96, i32 8, i32 1 }, %struct.demangle_operator_info { ptr @.str.97, ptr @.str.96, i32 8, i32 1 }, %struct.demangle_operator_info zeroinitializer], align 16
@.str.98 = private unnamed_addr constant [12 x i8] c"signed char\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.104 = private unnamed_addr constant [12 x i8] c"long double\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"__float128\00", align 1
@.str.107 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.109 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.112 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"__int128\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c"unsigned __int128\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.116 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"wchar_t\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"long long\00", align 1
@.str.120 = private unnamed_addr constant [19 x i8] c"unsigned long long\00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"decimal32\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"decimal64\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"decimal128\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.126 = private unnamed_addr constant [9 x i8] c"char16_t\00", align 1
@.str.127 = private unnamed_addr constant [9 x i8] c"char32_t\00", align 1
@cplus_demangle_builtin_types = dso_local constant [32 x %struct.demangle_builtin_type_info] [%struct.demangle_builtin_type_info { ptr @.str.98, i32 11, ptr @.str.98, i32 11, i32 0 }, %struct.demangle_builtin_type_info { ptr @.str.99, i32 4, ptr @.str.100, i32 7, i32 7 }, %struct.demangle_builtin_type_info { ptr @.str.101, i32 4, ptr @.str.102, i32 4, i32 0 }, %struct.demangle_builtin_type_info { ptr @.str.103, i32 6, ptr @.str.103, i32 6, i32 8 }, %struct.demangle_builtin_type_info { ptr @.str.104, i32 11, ptr @.str.104, i32 11, i32 8 }, %struct.demangle_builtin_type_info { ptr @.str.105, i32 5, ptr @.str.105, i32 5, i32 8 }, %struct.demangle_builtin_type_info { ptr @.str.106, i32 10, ptr @.str.106, i32 10, i32 8 }, %struct.demangle_builtin_type_info { ptr @.str.107, i32 13, ptr @.str.107, i32 13, i32 0 }, %struct.demangle_builtin_type_info { ptr @.str.108, i32 3, ptr @.str.108, i32 3, i32 1 }, %struct.demangle_builtin_type_info { ptr @.str.109, i32 12, ptr @.str.110, i32 8, i32 2 }, %struct.demangle_builtin_type_info zeroinitializer, %struct.demangle_builtin_type_info { ptr @.str.111, i32 4, ptr @.str.111, i32 4, i32 3 }, %struct.demangle_builtin_type_info { ptr @.str.112, i32 13, ptr @.str.112, i32 13, i32 4 }, %struct.demangle_builtin_type_info { ptr @.str.113, i32 8, ptr @.str.113, i32 8, i32 0 }, %struct.demangle_builtin_type_info { ptr @.str.114, i32 17, ptr @.str.114, i32 17, i32 0 }, %struct.demangle_builtin_type_info zeroinitializer, %struct.demangle_builtin_type_info zeroinitializer, %struct.demangle_builtin_type_info zeroinitializer, %struct.demangle_builtin_type_info { ptr @.str.115, i32 5, ptr @.str.115, i32 5, i32 0 }, %struct.demangle_builtin_type_info { ptr @.str.116, i32 14, ptr @.str.116, i32 14, i32 0 }, %struct.demangle_builtin_type_info zeroinitializer, %struct.demangle_builtin_type_info { ptr @.str.117, i32 4, ptr @.str.117, i32 4, i32 9 }, %struct.demangle_builtin_type_info { ptr @.str.118, i32 7, ptr @.str.101, i32 4, i32 0 }, %struct.demangle_builtin_type_info { ptr @.str.119, i32 9, ptr @.str.111, i32 4, i32 5 }, %struct.demangle_builtin_type_info { ptr @.str.120, i32 18, ptr @.str.120, i32 18, i32 6 }, %struct.demangle_builtin_type_info { ptr @.str.121, i32 3, ptr @.str.121, i32 3, i32 0 }, %struct.demangle_builtin_type_info { ptr @.str.122, i32 9, ptr @.str.122, i32 9, i32 0 }, %struct.demangle_builtin_type_info { ptr @.str.123, i32 9, ptr @.str.123, i32 9, i32 0 }, %struct.demangle_builtin_type_info { ptr @.str.124, i32 10, ptr @.str.124, i32 10, i32 0 }, %struct.demangle_builtin_type_info { ptr @.str.125, i32 4, ptr @.str.125, i32 4, i32 8 }, %struct.demangle_builtin_type_info { ptr @.str.126, i32 8, ptr @.str.126, i32 8, i32 0 }, %struct.demangle_builtin_type_info { ptr @.str.127, i32 8, ptr @.str.127, i32 8, i32 0 }], align 16
@.str.128 = private unnamed_addr constant [4 x i8] c"std\00", align 1
@.str.129 = private unnamed_addr constant [15 x i8] c"string literal\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c"_GLOBAL_\00", align 1
@.str.131 = private unnamed_addr constant [22 x i8] c"(anonymous namespace)\00", align 1
@standard_subs = internal unnamed_addr constant [7 x %struct.d_standard_sub_info] [%struct.d_standard_sub_info { i8 116, ptr @.str.128, i32 3, ptr @.str.128, i32 3, ptr null, i32 0 }, %struct.d_standard_sub_info { i8 97, ptr @.str.132, i32 14, ptr @.str.132, i32 14, ptr @.str.133, i32 9 }, %struct.d_standard_sub_info { i8 98, ptr @.str.134, i32 17, ptr @.str.134, i32 17, ptr @.str.135, i32 12 }, %struct.d_standard_sub_info { i8 115, ptr @.str.136, i32 11, ptr @.str.137, i32 70, ptr @.str.135, i32 12 }, %struct.d_standard_sub_info { i8 105, ptr @.str.138, i32 12, ptr @.str.139, i32 49, ptr @.str.140, i32 13 }, %struct.d_standard_sub_info { i8 111, ptr @.str.141, i32 12, ptr @.str.142, i32 49, ptr @.str.143, i32 13 }, %struct.d_standard_sub_info { i8 100, ptr @.str.144, i32 13, ptr @.str.145, i32 50, ptr @.str.146, i32 14 }], align 16
@.str.132 = private unnamed_addr constant [15 x i8] c"std::allocator\00", align 1
@.str.133 = private unnamed_addr constant [10 x i8] c"allocator\00", align 1
@.str.134 = private unnamed_addr constant [18 x i8] c"std::basic_string\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c"std::string\00", align 1
@.str.137 = private unnamed_addr constant [71 x i8] c"std::basic_string<char, std::char_traits<char>, std::allocator<char> >\00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"std::istream\00", align 1
@.str.139 = private unnamed_addr constant [50 x i8] c"std::basic_istream<char, std::char_traits<char> >\00", align 1
@.str.140 = private unnamed_addr constant [14 x i8] c"basic_istream\00", align 1
@.str.141 = private unnamed_addr constant [13 x i8] c"std::ostream\00", align 1
@.str.142 = private unnamed_addr constant [50 x i8] c"std::basic_ostream<char, std::char_traits<char> >\00", align 1
@.str.143 = private unnamed_addr constant [14 x i8] c"basic_ostream\00", align 1
@.str.144 = private unnamed_addr constant [14 x i8] c"std::iostream\00", align 1
@.str.145 = private unnamed_addr constant [51 x i8] c"std::basic_iostream<char, std::char_traits<char> >\00", align 1
@.str.146 = private unnamed_addr constant [15 x i8] c"basic_iostream\00", align 1
@.str.147 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"JArray\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"vtable for \00", align 1
@.str.150 = private unnamed_addr constant [9 x i8] c"VTT for \00", align 1
@.str.151 = private unnamed_addr constant [25 x i8] c"construction vtable for \00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"-in-\00", align 1
@.str.153 = private unnamed_addr constant [14 x i8] c"typeinfo for \00", align 1
@.str.154 = private unnamed_addr constant [19 x i8] c"typeinfo name for \00", align 1
@.str.155 = private unnamed_addr constant [17 x i8] c"typeinfo fn for \00", align 1
@.str.156 = private unnamed_addr constant [22 x i8] c"non-virtual thunk to \00", align 1
@.str.157 = private unnamed_addr constant [18 x i8] c"virtual thunk to \00", align 1
@.str.158 = private unnamed_addr constant [27 x i8] c"covariant return thunk to \00", align 1
@.str.159 = private unnamed_addr constant [16 x i8] c"java Class for \00", align 1
@.str.160 = private unnamed_addr constant [20 x i8] c"guard variable for \00", align 1
@.str.161 = private unnamed_addr constant [25 x i8] c"reference temporary for \00", align 1
@.str.162 = private unnamed_addr constant [18 x i8] c"hidden alias for \00", align 1
@.str.163 = private unnamed_addr constant [6 x i8] c"_Sat \00", align 1
@.str.164 = private unnamed_addr constant [7 x i8] c"_Accum\00", align 1
@.str.165 = private unnamed_addr constant [7 x i8] c"_Fract\00", align 1
@.str.166 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.167 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.168 = private unnamed_addr constant [10 x i8] c"operator \00", align 1
@.str.169 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.170 = private unnamed_addr constant [3 x i8] c"ul\00", align 1
@.str.171 = private unnamed_addr constant [3 x i8] c"ll\00", align 1
@.str.172 = private unnamed_addr constant [4 x i8] c"ull\00", align 1
@.str.173 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.174 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.175 = private unnamed_addr constant [15 x i8] c"java resource \00", align 1
@.str.176 = private unnamed_addr constant [11 x i8] c"decltype (\00", align 1
@.str.177 = private unnamed_addr constant [7 x i8] c"{parm#\00", align 1
@.str.178 = private unnamed_addr constant [30 x i8] c"global constructors keyed to \00", align 1
@.str.179 = private unnamed_addr constant [29 x i8] c"global destructors keyed to \00", align 1
@.str.180 = private unnamed_addr constant [9 x i8] c"{lambda(\00", align 1
@.str.181 = private unnamed_addr constant [3 x i8] c")#\00", align 1
@.str.182 = private unnamed_addr constant [15 x i8] c"{unnamed type#\00", align 1
@.str.183 = private unnamed_addr constant [10 x i8] c" restrict\00", align 1
@.str.184 = private unnamed_addr constant [10 x i8] c" volatile\00", align 1
@.str.185 = private unnamed_addr constant [7 x i8] c" const\00", align 1
@.str.186 = private unnamed_addr constant [9 x i8] c"complex \00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"imaginary \00", align 1
@.str.188 = private unnamed_addr constant [4 x i8] c"::*\00", align 1
@.str.189 = private unnamed_addr constant [11 x i8] c" __vector(\00", align 1
@.str.190 = private unnamed_addr constant [14 x i8] c"{default arg#\00", align 1
@.str.191 = private unnamed_addr constant [4 x i8] c"}::\00", align 1
@.str.192 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.193 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #27
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #27
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #27
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #27
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #27
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #27
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #27
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #27
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
  br i1 %23, label %7, label %24, !llvm.loop !50

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @cplus_demangle_fill_name(ptr noundef writeonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 !prof !34 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  %7 = icmp eq i32 %2, 0
  %8 = or i1 %6, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  store i32 0, ptr %0, align 8, !tbaa !53
  %10 = getelementptr inbounds %struct.demangle_component, ptr %0, i64 0, i32 1
  store ptr %1, ptr %10, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.demangle_component, ptr %0, i64 0, i32 1, i32 0, i32 1
  store i32 %2, ptr %11, align 8, !tbaa !46
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi i32 [ 1, %9 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @cplus_demangle_fill_extended_operator(ptr noundef writeonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #8 !prof !34 {
  %4 = icmp eq ptr %0, null
  %5 = icmp slt i32 %1, 0
  %6 = or i1 %4, %5
  %7 = icmp eq ptr %2, null
  %8 = or i1 %6, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  store i32 45, ptr %0, align 8, !tbaa !53
  %10 = getelementptr inbounds %struct.demangle_component, ptr %0, i64 0, i32 1
  store i32 %1, ptr %10, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.demangle_component, ptr %0, i64 0, i32 1, i32 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !46
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi i32 [ 1, %9 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @cplus_demangle_fill_ctor(ptr noundef writeonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #8 !prof !34 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %2, null
  %6 = or i1 %4, %5
  %7 = add i32 %1, -4
  %8 = icmp ult i32 %7, -3
  %9 = or i1 %8, %6
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  store i32 7, ptr %0, align 8, !tbaa !53
  %11 = getelementptr inbounds %struct.demangle_component, ptr %0, i64 0, i32 1
  store i32 %1, ptr %11, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.demangle_component, ptr %0, i64 0, i32 1, i32 0, i32 1
  store ptr %2, ptr %12, align 8, !tbaa !46
  br label %13

13:                                               ; preds = %3, %10
  %14 = phi i32 [ 1, %10 ], [ 0, %3 ]
  ret i32 %14
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @cplus_demangle_fill_dtor(ptr noundef writeonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #8 !prof !34 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %2, null
  %6 = or i1 %4, %5
  %7 = add i32 %1, -4
  %8 = icmp ult i32 %7, -3
  %9 = or i1 %8, %6
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  store i32 8, ptr %0, align 8, !tbaa !53
  %11 = getelementptr inbounds %struct.demangle_component, ptr %0, i64 0, i32 1
  store i32 %1, ptr %11, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.demangle_component, ptr %0, i64 0, i32 1, i32 0, i32 1
  store ptr %2, ptr %12, align 8, !tbaa !46
  br label %13

13:                                               ; preds = %3, %10
  %14 = phi i32 [ 1, %10 ], [ 0, %3 ]
  ret i32 %14
}

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @cplus_demangle_mangled_name(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = load i8, ptr %4, align 1, !tbaa !46
  %6 = icmp eq i8 %5, 95
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %8, ptr %3, align 8, !tbaa !55
  br label %11

9:                                                ; preds = %2
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %9, %7
  %12 = load ptr, ptr %3, align 8, !tbaa !55
  %13 = load i8, ptr %12, align 1, !tbaa !46
  %14 = icmp eq i8 %13, 90
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %16, ptr %3, align 8, !tbaa !55
  %17 = tail call fastcc ptr @d_encoding(ptr noundef %0, i32 noundef %1)
  br label %18

18:                                               ; preds = %11, %9, %15
  %19 = phi ptr [ %17, %15 ], [ null, %9 ], [ null, %11 ]
  ret ptr %19
}

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_encoding(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = load i8, ptr %4, align 1, !tbaa !46
  switch i8 %5, label %532 [
    i8 84, label %6
    i8 71, label %6
  ]

6:                                                ; preds = %2, %2
  %7 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %8 = load i32, ptr %7, align 8, !tbaa !57
  %9 = add nsw i32 %8, 20
  store i32 %9, ptr %7, align 8, !tbaa !57
  %10 = load i8, ptr %4, align 1, !tbaa !46
  switch i8 %10, label %588 [
    i8 84, label %11
    i8 71, label %306
  ]

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %12, ptr %3, align 8, !tbaa !55
  %13 = load i8, ptr %12, align 1, !tbaa !46
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %4, i64 2
  store ptr %16, ptr %3, align 8, !tbaa !55
  %17 = load i8, ptr %12, align 1, !tbaa !46
  %18 = sext i8 %17 to i32
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i32 [ %18, %15 ], [ 0, %11 ]
  switch i32 %20, label %588 [
    i32 86, label %21
    i32 84, label %43
    i32 73, label %65
    i32 83, label %86
    i32 104, label %107
    i32 118, label %152
    i32 99, label %176
    i32 67, label %203
    i32 70, label %264
    i32 74, label %285
  ]

21:                                               ; preds = %19
  %22 = add nsw i32 %8, 15
  store i32 %22, ptr %7, align 8, !tbaa !57
  %23 = tail call ptr @cplus_demangle_type(ptr noundef %0)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %588, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !58
  %28 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %29 = load i32, ptr %28, align 4, !tbaa !59
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !60
  %34 = sext i32 %27 to i64
  %35 = getelementptr inbounds %struct.demangle_component, ptr %33, i64 %34
  %36 = add nsw i32 %27, 1
  store i32 %36, ptr %26, align 8, !tbaa !58
  br label %37

37:                                               ; preds = %31, %25
  %38 = phi ptr [ %35, %31 ], [ null, %25 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %588, label %40

40:                                               ; preds = %37
  store i32 9, ptr %38, align 8, !tbaa !53
  %41 = getelementptr inbounds %struct.demangle_component, ptr %38, i64 0, i32 1
  store ptr %23, ptr %41, align 8, !tbaa !46
  %42 = getelementptr inbounds %struct.demangle_component, ptr %38, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %42, align 8, !tbaa !46
  br label %588

43:                                               ; preds = %19
  %44 = add nsw i32 %8, 10
  store i32 %44, ptr %7, align 8, !tbaa !57
  %45 = tail call ptr @cplus_demangle_type(ptr noundef %0)
  %46 = icmp eq ptr %45, null
  br i1 %46, label %588, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !58
  %50 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %51 = load i32, ptr %50, align 4, !tbaa !59
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !60
  %56 = sext i32 %49 to i64
  %57 = getelementptr inbounds %struct.demangle_component, ptr %55, i64 %56
  %58 = add nsw i32 %49, 1
  store i32 %58, ptr %48, align 8, !tbaa !58
  br label %59

59:                                               ; preds = %53, %47
  %60 = phi ptr [ %57, %53 ], [ null, %47 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %588, label %62

62:                                               ; preds = %59
  store i32 10, ptr %60, align 8, !tbaa !53
  %63 = getelementptr inbounds %struct.demangle_component, ptr %60, i64 0, i32 1
  store ptr %45, ptr %63, align 8, !tbaa !46
  %64 = getelementptr inbounds %struct.demangle_component, ptr %60, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %64, align 8, !tbaa !46
  br label %588

65:                                               ; preds = %19
  %66 = tail call ptr @cplus_demangle_type(ptr noundef %0)
  %67 = icmp eq ptr %66, null
  br i1 %67, label %588, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %70 = load i32, ptr %69, align 8, !tbaa !58
  %71 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %72 = load i32, ptr %71, align 4, !tbaa !59
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !60
  %77 = sext i32 %70 to i64
  %78 = getelementptr inbounds %struct.demangle_component, ptr %76, i64 %77
  %79 = add nsw i32 %70, 1
  store i32 %79, ptr %69, align 8, !tbaa !58
  br label %80

80:                                               ; preds = %74, %68
  %81 = phi ptr [ %78, %74 ], [ null, %68 ]
  %82 = icmp eq ptr %81, null
  br i1 %82, label %588, label %83

83:                                               ; preds = %80
  store i32 12, ptr %81, align 8, !tbaa !53
  %84 = getelementptr inbounds %struct.demangle_component, ptr %81, i64 0, i32 1
  store ptr %66, ptr %84, align 8, !tbaa !46
  %85 = getelementptr inbounds %struct.demangle_component, ptr %81, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %85, align 8, !tbaa !46
  br label %588

86:                                               ; preds = %19
  %87 = tail call ptr @cplus_demangle_type(ptr noundef %0)
  %88 = icmp eq ptr %87, null
  br i1 %88, label %588, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %91 = load i32, ptr %90, align 8, !tbaa !58
  %92 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %93 = load i32, ptr %92, align 4, !tbaa !59
  %94 = icmp slt i32 %91, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !60
  %98 = sext i32 %91 to i64
  %99 = getelementptr inbounds %struct.demangle_component, ptr %97, i64 %98
  %100 = add nsw i32 %91, 1
  store i32 %100, ptr %90, align 8, !tbaa !58
  br label %101

101:                                              ; preds = %95, %89
  %102 = phi ptr [ %99, %95 ], [ null, %89 ]
  %103 = icmp eq ptr %102, null
  br i1 %103, label %588, label %104

104:                                              ; preds = %101
  store i32 13, ptr %102, align 8, !tbaa !53
  %105 = getelementptr inbounds %struct.demangle_component, ptr %102, i64 0, i32 1
  store ptr %87, ptr %105, align 8, !tbaa !46
  %106 = getelementptr inbounds %struct.demangle_component, ptr %102, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %106, align 8, !tbaa !46
  br label %588

107:                                              ; preds = %19
  %108 = load ptr, ptr %3, align 8, !tbaa !55
  %109 = load i8, ptr %108, align 1, !tbaa !46
  %110 = icmp eq i8 %109, 110
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = getelementptr inbounds i8, ptr %108, i64 1
  store ptr %112, ptr %3, align 8, !tbaa !55
  %113 = load i8, ptr %112, align 1, !tbaa !46
  br label %114

114:                                              ; preds = %111, %107
  %115 = phi i8 [ %113, %111 ], [ %109, %107 ]
  %116 = add i8 %115, -48
  %117 = icmp ult i8 %116, 10
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = load ptr, ptr %3, align 8, !tbaa !55
  br label %120

120:                                              ; preds = %118, %120
  %121 = phi ptr [ %119, %118 ], [ %122, %120 ]
  %122 = getelementptr inbounds i8, ptr %121, i64 1
  store ptr %122, ptr %3, align 8, !tbaa !55
  %123 = load i8, ptr %122, align 1, !tbaa !46
  %124 = add i8 %123, -48
  %125 = icmp ult i8 %124, 10
  br i1 %125, label %120, label %126, !llvm.loop !61

126:                                              ; preds = %120, %114
  %127 = load ptr, ptr %3, align 8, !tbaa !55
  %128 = load i8, ptr %127, align 1, !tbaa !46
  %129 = icmp eq i8 %128, 95
  br i1 %129, label %130, label %588

130:                                              ; preds = %126
  %131 = getelementptr inbounds i8, ptr %127, i64 1
  store ptr %131, ptr %3, align 8, !tbaa !55
  %132 = tail call fastcc ptr @d_encoding(ptr noundef %0, i32 noundef 0)
  %133 = icmp eq ptr %132, null
  br i1 %133, label %588, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %136 = load i32, ptr %135, align 8, !tbaa !58
  %137 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %138 = load i32, ptr %137, align 4, !tbaa !59
  %139 = icmp slt i32 %136, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %142 = load ptr, ptr %141, align 8, !tbaa !60
  %143 = sext i32 %136 to i64
  %144 = getelementptr inbounds %struct.demangle_component, ptr %142, i64 %143
  %145 = add nsw i32 %136, 1
  store i32 %145, ptr %135, align 8, !tbaa !58
  br label %146

146:                                              ; preds = %140, %134
  %147 = phi ptr [ %144, %140 ], [ null, %134 ]
  %148 = icmp eq ptr %147, null
  br i1 %148, label %588, label %149

149:                                              ; preds = %146
  store i32 15, ptr %147, align 8, !tbaa !53
  %150 = getelementptr inbounds %struct.demangle_component, ptr %147, i64 0, i32 1
  store ptr %132, ptr %150, align 8, !tbaa !46
  %151 = getelementptr inbounds %struct.demangle_component, ptr %147, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %151, align 8, !tbaa !46
  br label %588

152:                                              ; preds = %19
  %153 = tail call fastcc i32 @d_call_offset(ptr noundef %0, i32 noundef 118), !range !62
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %588, label %155

155:                                              ; preds = %152
  %156 = tail call fastcc ptr @d_encoding(ptr noundef %0, i32 noundef 0)
  %157 = icmp eq ptr %156, null
  br i1 %157, label %588, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %160 = load i32, ptr %159, align 8, !tbaa !58
  %161 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %162 = load i32, ptr %161, align 4, !tbaa !59
  %163 = icmp slt i32 %160, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %166 = load ptr, ptr %165, align 8, !tbaa !60
  %167 = sext i32 %160 to i64
  %168 = getelementptr inbounds %struct.demangle_component, ptr %166, i64 %167
  %169 = add nsw i32 %160, 1
  store i32 %169, ptr %159, align 8, !tbaa !58
  br label %170

170:                                              ; preds = %164, %158
  %171 = phi ptr [ %168, %164 ], [ null, %158 ]
  %172 = icmp eq ptr %171, null
  br i1 %172, label %588, label %173

173:                                              ; preds = %170
  store i32 16, ptr %171, align 8, !tbaa !53
  %174 = getelementptr inbounds %struct.demangle_component, ptr %171, i64 0, i32 1
  store ptr %156, ptr %174, align 8, !tbaa !46
  %175 = getelementptr inbounds %struct.demangle_component, ptr %171, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %175, align 8, !tbaa !46
  br label %588

176:                                              ; preds = %19
  %177 = tail call fastcc i32 @d_call_offset(ptr noundef %0, i32 noundef 0), !range !62
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %588, label %179

179:                                              ; preds = %176
  %180 = tail call fastcc i32 @d_call_offset(ptr noundef %0, i32 noundef 0), !range !62
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %588, label %182

182:                                              ; preds = %179
  %183 = tail call fastcc ptr @d_encoding(ptr noundef %0, i32 noundef 0)
  %184 = icmp eq ptr %183, null
  br i1 %184, label %588, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %187 = load i32, ptr %186, align 8, !tbaa !58
  %188 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %189 = load i32, ptr %188, align 4, !tbaa !59
  %190 = icmp slt i32 %187, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %193 = load ptr, ptr %192, align 8, !tbaa !60
  %194 = sext i32 %187 to i64
  %195 = getelementptr inbounds %struct.demangle_component, ptr %193, i64 %194
  %196 = add nsw i32 %187, 1
  store i32 %196, ptr %186, align 8, !tbaa !58
  br label %197

197:                                              ; preds = %191, %185
  %198 = phi ptr [ %195, %191 ], [ null, %185 ]
  %199 = icmp eq ptr %198, null
  br i1 %199, label %588, label %200

200:                                              ; preds = %197
  store i32 17, ptr %198, align 8, !tbaa !53
  %201 = getelementptr inbounds %struct.demangle_component, ptr %198, i64 0, i32 1
  store ptr %183, ptr %201, align 8, !tbaa !46
  %202 = getelementptr inbounds %struct.demangle_component, ptr %198, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %202, align 8, !tbaa !46
  br label %588

203:                                              ; preds = %19
  %204 = tail call ptr @cplus_demangle_type(ptr noundef %0)
  %205 = load ptr, ptr %3, align 8, !tbaa !55
  %206 = load i8, ptr %205, align 1, !tbaa !46
  %207 = icmp eq i8 %206, 110
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = getelementptr inbounds i8, ptr %205, i64 1
  store ptr %209, ptr %3, align 8, !tbaa !55
  %210 = load i8, ptr %209, align 1, !tbaa !46
  br label %211

211:                                              ; preds = %208, %203
  %212 = phi i8 [ %210, %208 ], [ %206, %203 ]
  %213 = add i8 %212, -48
  %214 = icmp ult i8 %213, 10
  br i1 %214, label %215, label %229

215:                                              ; preds = %211
  %216 = load ptr, ptr %3, align 8, !tbaa !55
  br label %217

217:                                              ; preds = %215, %217
  %218 = phi ptr [ %216, %215 ], [ %225, %217 ]
  %219 = phi i64 [ 0, %215 ], [ %224, %217 ]
  %220 = phi i8 [ %212, %215 ], [ %226, %217 ]
  %221 = mul nsw i64 %219, 10
  %222 = zext nneg i8 %220 to i64
  %223 = add nsw i64 %222, -48
  %224 = add i64 %223, %221
  %225 = getelementptr inbounds i8, ptr %218, i64 1
  store ptr %225, ptr %3, align 8, !tbaa !55
  %226 = load i8, ptr %225, align 1, !tbaa !46
  %227 = add i8 %226, -48
  %228 = icmp ult i8 %227, 10
  br i1 %228, label %217, label %229, !llvm.loop !61

229:                                              ; preds = %217, %211
  %230 = phi i64 [ 0, %211 ], [ %224, %217 ]
  %231 = sub nsw i64 0, %230
  %232 = select i1 %207, i64 %231, i64 %230
  %233 = icmp slt i64 %232, 0
  br i1 %233, label %588, label %234

234:                                              ; preds = %229
  %235 = load ptr, ptr %3, align 8, !tbaa !55
  %236 = load i8, ptr %235, align 1, !tbaa !46
  %237 = icmp eq i8 %236, 95
  br i1 %237, label %238, label %588

238:                                              ; preds = %234
  %239 = getelementptr inbounds i8, ptr %235, i64 1
  store ptr %239, ptr %3, align 8, !tbaa !55
  %240 = tail call ptr @cplus_demangle_type(ptr noundef %0)
  %241 = load i32, ptr %7, align 8, !tbaa !57
  %242 = add nsw i32 %241, 5
  store i32 %242, ptr %7, align 8, !tbaa !57
  %243 = icmp eq ptr %240, null
  %244 = icmp eq ptr %204, null
  %245 = or i1 %244, %243
  br i1 %245, label %588, label %246

246:                                              ; preds = %238
  %247 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %248 = load i32, ptr %247, align 8, !tbaa !58
  %249 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %250 = load i32, ptr %249, align 4, !tbaa !59
  %251 = icmp slt i32 %248, %250
  br i1 %251, label %252, label %258

252:                                              ; preds = %246
  %253 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %254 = load ptr, ptr %253, align 8, !tbaa !60
  %255 = sext i32 %248 to i64
  %256 = getelementptr inbounds %struct.demangle_component, ptr %254, i64 %255
  %257 = add nsw i32 %248, 1
  store i32 %257, ptr %247, align 8, !tbaa !58
  br label %258

258:                                              ; preds = %252, %246
  %259 = phi ptr [ %256, %252 ], [ null, %246 ]
  %260 = icmp eq ptr %259, null
  br i1 %260, label %588, label %261

261:                                              ; preds = %258
  store i32 11, ptr %259, align 8, !tbaa !53
  %262 = getelementptr inbounds %struct.demangle_component, ptr %259, i64 0, i32 1
  store ptr %240, ptr %262, align 8, !tbaa !46
  %263 = getelementptr inbounds %struct.demangle_component, ptr %259, i64 0, i32 1, i32 0, i32 1
  store ptr %204, ptr %263, align 8, !tbaa !46
  br label %588

264:                                              ; preds = %19
  %265 = tail call ptr @cplus_demangle_type(ptr noundef %0)
  %266 = icmp eq ptr %265, null
  br i1 %266, label %588, label %267

267:                                              ; preds = %264
  %268 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %269 = load i32, ptr %268, align 8, !tbaa !58
  %270 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %271 = load i32, ptr %270, align 4, !tbaa !59
  %272 = icmp slt i32 %269, %271
  br i1 %272, label %273, label %279

273:                                              ; preds = %267
  %274 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %275 = load ptr, ptr %274, align 8, !tbaa !60
  %276 = sext i32 %269 to i64
  %277 = getelementptr inbounds %struct.demangle_component, ptr %275, i64 %276
  %278 = add nsw i32 %269, 1
  store i32 %278, ptr %268, align 8, !tbaa !58
  br label %279

279:                                              ; preds = %273, %267
  %280 = phi ptr [ %277, %273 ], [ null, %267 ]
  %281 = icmp eq ptr %280, null
  br i1 %281, label %588, label %282

282:                                              ; preds = %279
  store i32 14, ptr %280, align 8, !tbaa !53
  %283 = getelementptr inbounds %struct.demangle_component, ptr %280, i64 0, i32 1
  store ptr %265, ptr %283, align 8, !tbaa !46
  %284 = getelementptr inbounds %struct.demangle_component, ptr %280, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %284, align 8, !tbaa !46
  br label %588

285:                                              ; preds = %19
  %286 = tail call ptr @cplus_demangle_type(ptr noundef %0)
  %287 = icmp eq ptr %286, null
  br i1 %287, label %588, label %288

288:                                              ; preds = %285
  %289 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %290 = load i32, ptr %289, align 8, !tbaa !58
  %291 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %292 = load i32, ptr %291, align 4, !tbaa !59
  %293 = icmp slt i32 %290, %292
  br i1 %293, label %294, label %300

294:                                              ; preds = %288
  %295 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %296 = load ptr, ptr %295, align 8, !tbaa !60
  %297 = sext i32 %290 to i64
  %298 = getelementptr inbounds %struct.demangle_component, ptr %296, i64 %297
  %299 = add nsw i32 %290, 1
  store i32 %299, ptr %289, align 8, !tbaa !58
  br label %300

300:                                              ; preds = %294, %288
  %301 = phi ptr [ %298, %294 ], [ null, %288 ]
  %302 = icmp eq ptr %301, null
  br i1 %302, label %588, label %303

303:                                              ; preds = %300
  store i32 18, ptr %301, align 8, !tbaa !53
  %304 = getelementptr inbounds %struct.demangle_component, ptr %301, i64 0, i32 1
  store ptr %286, ptr %304, align 8, !tbaa !46
  %305 = getelementptr inbounds %struct.demangle_component, ptr %301, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %305, align 8, !tbaa !46
  br label %588

306:                                              ; preds = %6
  %307 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %307, ptr %3, align 8, !tbaa !55
  %308 = load i8, ptr %307, align 1, !tbaa !46
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %314, label %310

310:                                              ; preds = %306
  %311 = getelementptr inbounds i8, ptr %4, i64 2
  store ptr %311, ptr %3, align 8, !tbaa !55
  %312 = load i8, ptr %307, align 1, !tbaa !46
  %313 = sext i8 %312 to i32
  br label %314

314:                                              ; preds = %310, %306
  %315 = phi i32 [ %313, %310 ], [ 0, %306 ]
  switch i32 %315, label %588 [
    i32 86, label %316
    i32 82, label %337
    i32 65, label %358
    i32 114, label %379
  ]

316:                                              ; preds = %314
  %317 = tail call fastcc ptr @d_name(ptr noundef %0)
  %318 = icmp eq ptr %317, null
  br i1 %318, label %588, label %319

319:                                              ; preds = %316
  %320 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %321 = load i32, ptr %320, align 8, !tbaa !58
  %322 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %323 = load i32, ptr %322, align 4, !tbaa !59
  %324 = icmp slt i32 %321, %323
  br i1 %324, label %325, label %331

325:                                              ; preds = %319
  %326 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %327 = load ptr, ptr %326, align 8, !tbaa !60
  %328 = sext i32 %321 to i64
  %329 = getelementptr inbounds %struct.demangle_component, ptr %327, i64 %328
  %330 = add nsw i32 %321, 1
  store i32 %330, ptr %320, align 8, !tbaa !58
  br label %331

331:                                              ; preds = %325, %319
  %332 = phi ptr [ %329, %325 ], [ null, %319 ]
  %333 = icmp eq ptr %332, null
  br i1 %333, label %588, label %334

334:                                              ; preds = %331
  store i32 19, ptr %332, align 8, !tbaa !53
  %335 = getelementptr inbounds %struct.demangle_component, ptr %332, i64 0, i32 1
  store ptr %317, ptr %335, align 8, !tbaa !46
  %336 = getelementptr inbounds %struct.demangle_component, ptr %332, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %336, align 8, !tbaa !46
  br label %588

337:                                              ; preds = %314
  %338 = tail call fastcc ptr @d_name(ptr noundef %0)
  %339 = icmp eq ptr %338, null
  br i1 %339, label %588, label %340

340:                                              ; preds = %337
  %341 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %342 = load i32, ptr %341, align 8, !tbaa !58
  %343 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %344 = load i32, ptr %343, align 4, !tbaa !59
  %345 = icmp slt i32 %342, %344
  br i1 %345, label %346, label %352

346:                                              ; preds = %340
  %347 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %348 = load ptr, ptr %347, align 8, !tbaa !60
  %349 = sext i32 %342 to i64
  %350 = getelementptr inbounds %struct.demangle_component, ptr %348, i64 %349
  %351 = add nsw i32 %342, 1
  store i32 %351, ptr %341, align 8, !tbaa !58
  br label %352

352:                                              ; preds = %346, %340
  %353 = phi ptr [ %350, %346 ], [ null, %340 ]
  %354 = icmp eq ptr %353, null
  br i1 %354, label %588, label %355

355:                                              ; preds = %352
  store i32 20, ptr %353, align 8, !tbaa !53
  %356 = getelementptr inbounds %struct.demangle_component, ptr %353, i64 0, i32 1
  store ptr %338, ptr %356, align 8, !tbaa !46
  %357 = getelementptr inbounds %struct.demangle_component, ptr %353, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %357, align 8, !tbaa !46
  br label %588

358:                                              ; preds = %314
  %359 = tail call fastcc ptr @d_encoding(ptr noundef %0, i32 noundef 0)
  %360 = icmp eq ptr %359, null
  br i1 %360, label %588, label %361

361:                                              ; preds = %358
  %362 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %363 = load i32, ptr %362, align 8, !tbaa !58
  %364 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %365 = load i32, ptr %364, align 4, !tbaa !59
  %366 = icmp slt i32 %363, %365
  br i1 %366, label %367, label %373

367:                                              ; preds = %361
  %368 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %369 = load ptr, ptr %368, align 8, !tbaa !60
  %370 = sext i32 %363 to i64
  %371 = getelementptr inbounds %struct.demangle_component, ptr %369, i64 %370
  %372 = add nsw i32 %363, 1
  store i32 %372, ptr %362, align 8, !tbaa !58
  br label %373

373:                                              ; preds = %367, %361
  %374 = phi ptr [ %371, %367 ], [ null, %361 ]
  %375 = icmp eq ptr %374, null
  br i1 %375, label %588, label %376

376:                                              ; preds = %373
  store i32 21, ptr %374, align 8, !tbaa !53
  %377 = getelementptr inbounds %struct.demangle_component, ptr %374, i64 0, i32 1
  store ptr %359, ptr %377, align 8, !tbaa !46
  %378 = getelementptr inbounds %struct.demangle_component, ptr %374, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %378, align 8, !tbaa !46
  br label %588

379:                                              ; preds = %314
  %380 = load ptr, ptr %3, align 8, !tbaa !55
  %381 = load i8, ptr %380, align 1, !tbaa !46
  %382 = icmp eq i8 %381, 110
  br i1 %382, label %383, label %386

383:                                              ; preds = %379
  %384 = getelementptr inbounds i8, ptr %380, i64 1
  store ptr %384, ptr %3, align 8, !tbaa !55
  %385 = load i8, ptr %384, align 1, !tbaa !46
  br label %386

386:                                              ; preds = %383, %379
  %387 = phi i8 [ %385, %383 ], [ %381, %379 ]
  %388 = add i8 %387, -48
  %389 = icmp ult i8 %388, 10
  br i1 %389, label %390, label %404

390:                                              ; preds = %386
  %391 = load ptr, ptr %3, align 8, !tbaa !55
  br label %392

392:                                              ; preds = %390, %392
  %393 = phi ptr [ %391, %390 ], [ %400, %392 ]
  %394 = phi i64 [ 0, %390 ], [ %399, %392 ]
  %395 = phi i8 [ %387, %390 ], [ %401, %392 ]
  %396 = mul nsw i64 %394, 10
  %397 = zext nneg i8 %395 to i64
  %398 = add nsw i64 %397, -48
  %399 = add i64 %398, %396
  %400 = getelementptr inbounds i8, ptr %393, i64 1
  store ptr %400, ptr %3, align 8, !tbaa !55
  %401 = load i8, ptr %400, align 1, !tbaa !46
  %402 = add i8 %401, -48
  %403 = icmp ult i8 %402, 10
  br i1 %403, label %392, label %404, !llvm.loop !61

404:                                              ; preds = %392, %386
  %405 = phi i64 [ 0, %386 ], [ %399, %392 ]
  %406 = sub nsw i64 0, %405
  %407 = select i1 %382, i64 %406, i64 %405
  %408 = icmp slt i64 %407, 2
  br i1 %408, label %588, label %409

409:                                              ; preds = %404
  %410 = load ptr, ptr %3, align 8, !tbaa !55
  %411 = load i8, ptr %410, align 1, !tbaa !46
  %412 = icmp eq i8 %411, 0
  br i1 %412, label %588, label %413

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %410, i64 1
  store ptr %414, ptr %3, align 8, !tbaa !55
  %415 = load i8, ptr %410, align 1, !tbaa !46
  %416 = icmp eq i8 %415, 95
  br i1 %416, label %417, label %588

417:                                              ; preds = %413
  %418 = add nsw i64 %407, -1
  %419 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %420 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %421 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %422 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %423 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %424 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %425 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %426 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %427 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  br label %428

428:                                              ; preds = %417, %511
  %429 = phi ptr [ %414, %417 ], [ %494, %511 ]
  %430 = phi i64 [ %418, %417 ], [ %493, %511 ]
  %431 = phi ptr [ null, %417 ], [ %512, %511 ]
  %432 = load i8, ptr %429, align 1, !tbaa !46
  switch i8 %432, label %433 [
    i8 0, label %588
    i8 36, label %435
  ]

433:                                              ; preds = %428
  %434 = icmp sgt i64 %430, 0
  br i1 %434, label %459, label %466

435:                                              ; preds = %428
  %436 = getelementptr inbounds i8, ptr %429, i64 1
  %437 = load i8, ptr %436, align 1, !tbaa !46
  switch i8 %437, label %588 [
    i8 83, label %440
    i8 95, label %438
    i8 36, label %439
  ]

438:                                              ; preds = %435
  br label %440

439:                                              ; preds = %435
  br label %440

440:                                              ; preds = %439, %438, %435
  %441 = phi i32 [ 36, %439 ], [ 46, %438 ], [ 47, %435 ]
  %442 = load i32, ptr %419, align 8, !tbaa !58
  %443 = load i32, ptr %420, align 4, !tbaa !59
  %444 = icmp slt i32 %442, %443
  br i1 %444, label %445, label %450

445:                                              ; preds = %440
  %446 = load ptr, ptr %421, align 8, !tbaa !60
  %447 = sext i32 %442 to i64
  %448 = getelementptr inbounds %struct.demangle_component, ptr %446, i64 %447
  %449 = add nsw i32 %442, 1
  store i32 %449, ptr %419, align 8, !tbaa !58
  br label %450

450:                                              ; preds = %445, %440
  %451 = phi ptr [ %448, %445 ], [ null, %440 ]
  %452 = icmp eq ptr %451, null
  br i1 %452, label %455, label %453

453:                                              ; preds = %450
  store i32 57, ptr %451, align 8, !tbaa !53
  %454 = getelementptr inbounds %struct.demangle_component, ptr %451, i64 0, i32 1
  store i32 %441, ptr %454, align 8, !tbaa !46
  br label %455

455:                                              ; preds = %453, %450
  %456 = load ptr, ptr %3, align 8, !tbaa !55
  %457 = getelementptr inbounds i8, ptr %456, i64 2
  store ptr %457, ptr %3, align 8, !tbaa !55
  %458 = add nsw i64 %430, -2
  br i1 %452, label %588, label %491

459:                                              ; preds = %433, %463
  %460 = phi i64 [ %464, %463 ], [ 0, %433 ]
  %461 = getelementptr inbounds i8, ptr %429, i64 %460
  %462 = load i8, ptr %461, align 1, !tbaa !46
  switch i8 %462, label %463 [
    i8 0, label %466
    i8 36, label %466
  ]

463:                                              ; preds = %459
  %464 = add nuw nsw i64 %460, 1
  %465 = icmp eq i64 %464, %430
  br i1 %465, label %466, label %459, !llvm.loop !63

466:                                              ; preds = %463, %459, %459, %433
  %467 = phi i64 [ 0, %433 ], [ %430, %463 ], [ %460, %459 ], [ %460, %459 ]
  %468 = trunc i64 %467 to i32
  %469 = load i32, ptr %422, align 8, !tbaa !58
  %470 = load i32, ptr %423, align 4, !tbaa !59
  %471 = icmp slt i32 %469, %470
  br i1 %471, label %472, label %477

472:                                              ; preds = %466
  %473 = load ptr, ptr %424, align 8, !tbaa !60
  %474 = sext i32 %469 to i64
  %475 = getelementptr inbounds %struct.demangle_component, ptr %473, i64 %474
  %476 = add nsw i32 %469, 1
  store i32 %476, ptr %422, align 8, !tbaa !58
  br label %477

477:                                              ; preds = %472, %466
  %478 = phi ptr [ %475, %472 ], [ null, %466 ]
  %479 = icmp eq ptr %478, null
  %480 = icmp eq i32 %468, 0
  %481 = or i1 %480, %479
  br i1 %481, label %485, label %482

482:                                              ; preds = %477
  store i32 0, ptr %478, align 8, !tbaa !53
  %483 = getelementptr inbounds %struct.demangle_component, ptr %478, i64 0, i32 1
  store ptr %429, ptr %483, align 8, !tbaa !46
  %484 = getelementptr inbounds %struct.demangle_component, ptr %478, i64 0, i32 1, i32 0, i32 1
  store i32 %468, ptr %484, align 8, !tbaa !46
  br label %485

485:                                              ; preds = %482, %477
  %486 = phi ptr [ %478, %482 ], [ null, %477 ]
  %487 = load ptr, ptr %3, align 8, !tbaa !55
  %488 = getelementptr inbounds i8, ptr %487, i64 %467
  store ptr %488, ptr %3, align 8, !tbaa !55
  %489 = sub nsw i64 %430, %467
  %490 = icmp eq ptr %486, null
  br i1 %490, label %588, label %491

491:                                              ; preds = %485, %455
  %492 = phi ptr [ %451, %455 ], [ %486, %485 ]
  %493 = phi i64 [ %458, %455 ], [ %489, %485 ]
  %494 = phi ptr [ %457, %455 ], [ %488, %485 ]
  %495 = icmp eq ptr %431, null
  br i1 %495, label %511, label %496

496:                                              ; preds = %491
  %497 = load i32, ptr %425, align 8, !tbaa !58
  %498 = load i32, ptr %426, align 4, !tbaa !59
  %499 = icmp slt i32 %497, %498
  br i1 %499, label %500, label %505

500:                                              ; preds = %496
  %501 = load ptr, ptr %427, align 8, !tbaa !60
  %502 = sext i32 %497 to i64
  %503 = getelementptr inbounds %struct.demangle_component, ptr %501, i64 %502
  %504 = add nsw i32 %497, 1
  store i32 %504, ptr %425, align 8, !tbaa !58
  br label %505

505:                                              ; preds = %500, %496
  %506 = phi ptr [ %503, %500 ], [ null, %496 ]
  %507 = icmp eq ptr %506, null
  br i1 %507, label %588, label %508

508:                                              ; preds = %505
  store i32 56, ptr %506, align 8, !tbaa !53
  %509 = getelementptr inbounds %struct.demangle_component, ptr %506, i64 0, i32 1
  store ptr %431, ptr %509, align 8, !tbaa !46
  %510 = getelementptr inbounds %struct.demangle_component, ptr %506, i64 0, i32 1, i32 0, i32 1
  store ptr %492, ptr %510, align 8, !tbaa !46
  br label %511

511:                                              ; preds = %508, %491
  %512 = phi ptr [ %506, %508 ], [ %492, %491 ]
  %513 = icmp sgt i64 %493, 0
  br i1 %513, label %428, label %514, !llvm.loop !64

514:                                              ; preds = %511
  %515 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %516 = load i32, ptr %515, align 8, !tbaa !58
  %517 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %518 = load i32, ptr %517, align 4, !tbaa !59
  %519 = icmp slt i32 %516, %518
  br i1 %519, label %520, label %526

520:                                              ; preds = %514
  %521 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %522 = load ptr, ptr %521, align 8, !tbaa !60
  %523 = sext i32 %516 to i64
  %524 = getelementptr inbounds %struct.demangle_component, ptr %522, i64 %523
  %525 = add nsw i32 %516, 1
  store i32 %525, ptr %515, align 8, !tbaa !58
  br label %526

526:                                              ; preds = %520, %514
  %527 = phi ptr [ %524, %520 ], [ null, %514 ]
  %528 = icmp eq ptr %527, null
  br i1 %528, label %588, label %529

529:                                              ; preds = %526
  store i32 55, ptr %527, align 8, !tbaa !53
  %530 = getelementptr inbounds %struct.demangle_component, ptr %527, i64 0, i32 1
  store ptr %512, ptr %530, align 8, !tbaa !46
  %531 = getelementptr inbounds %struct.demangle_component, ptr %527, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %531, align 8, !tbaa !46
  br label %588

532:                                              ; preds = %2
  %533 = tail call fastcc ptr @d_name(ptr noundef %0)
  %534 = icmp ne ptr %533, null
  %535 = icmp ne i32 %1, 0
  %536 = and i1 %535, %534
  br i1 %536, label %537, label %558

537:                                              ; preds = %532
  %538 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 2
  %539 = load i32, ptr %538, align 8, !tbaa !65
  %540 = and i32 %539, 1
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %542, label %558

542:                                              ; preds = %537, %545
  %543 = phi ptr [ %547, %545 ], [ %533, %537 ]
  %544 = load i32, ptr %543, align 8, !tbaa !53
  switch i32 %544, label %588 [
    i32 26, label %545
    i32 27, label %545
    i32 28, label %545
    i32 2, label %548
  ]

545:                                              ; preds = %542, %542, %542
  %546 = getelementptr inbounds %struct.demangle_component, ptr %543, i64 0, i32 1
  %547 = load ptr, ptr %546, align 8, !tbaa !46
  br label %542, !llvm.loop !66

548:                                              ; preds = %542
  %549 = getelementptr inbounds %struct.demangle_component, ptr %543, i64 0, i32 1, i32 0, i32 1
  br label %550

550:                                              ; preds = %550, %548
  %551 = phi ptr [ %549, %548 ], [ %556, %550 ]
  %552 = load ptr, ptr %551, align 8, !tbaa !46
  %553 = load i32, ptr %552, align 8, !tbaa !53
  %554 = add i32 %553, -26
  %555 = icmp ult i32 %554, 3
  %556 = getelementptr inbounds %struct.demangle_component, ptr %552, i64 0, i32 1
  br i1 %555, label %550, label %557, !llvm.loop !67

557:                                              ; preds = %550
  store ptr %552, ptr %549, align 8, !tbaa !46
  br label %588

558:                                              ; preds = %537, %532
  %559 = load ptr, ptr %3, align 8, !tbaa !55
  %560 = load i8, ptr %559, align 1, !tbaa !46
  %561 = icmp eq ptr %533, null
  %562 = icmp eq i8 %560, 0
  %563 = select i1 %561, i1 true, i1 %562
  %564 = icmp eq i8 %560, 69
  %565 = select i1 %563, i1 true, i1 %564
  br i1 %565, label %588, label %566

566:                                              ; preds = %558
  %567 = tail call fastcc i32 @has_return_type(ptr noundef %533), !range !62
  %568 = tail call fastcc ptr @d_bare_function_type(ptr noundef %0, i32 noundef %567)
  %569 = icmp eq ptr %568, null
  br i1 %569, label %588, label %570

570:                                              ; preds = %566
  %571 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %572 = load i32, ptr %571, align 8, !tbaa !58
  %573 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %574 = load i32, ptr %573, align 4, !tbaa !59
  %575 = icmp slt i32 %572, %574
  br i1 %575, label %576, label %582

576:                                              ; preds = %570
  %577 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %578 = load ptr, ptr %577, align 8, !tbaa !60
  %579 = sext i32 %572 to i64
  %580 = getelementptr inbounds %struct.demangle_component, ptr %578, i64 %579
  %581 = add nsw i32 %572, 1
  store i32 %581, ptr %571, align 8, !tbaa !58
  br label %582

582:                                              ; preds = %576, %570
  %583 = phi ptr [ %580, %576 ], [ null, %570 ]
  %584 = icmp eq ptr %583, null
  br i1 %584, label %588, label %585

585:                                              ; preds = %582
  store i32 3, ptr %583, align 8, !tbaa !53
  %586 = getelementptr inbounds %struct.demangle_component, ptr %583, i64 0, i32 1
  store ptr %533, ptr %586, align 8, !tbaa !46
  %587 = getelementptr inbounds %struct.demangle_component, ptr %583, i64 0, i32 1, i32 0, i32 1
  store ptr %568, ptr %587, align 8, !tbaa !46
  br label %588

588:                                              ; preds = %485, %455, %435, %428, %505, %542, %126, %585, %582, %566, %314, %234, %229, %179, %176, %152, %19, %6, %21, %37, %40, %43, %59, %62, %65, %80, %83, %86, %101, %104, %130, %146, %149, %155, %170, %173, %182, %197, %200, %238, %258, %261, %264, %279, %282, %285, %300, %303, %316, %331, %334, %337, %352, %355, %358, %373, %376, %404, %409, %413, %526, %529, %557, %558
  %589 = phi ptr [ %543, %557 ], [ %533, %558 ], [ null, %152 ], [ null, %176 ], [ null, %179 ], [ null, %229 ], [ null, %234 ], [ null, %19 ], [ null, %314 ], [ null, %6 ], [ null, %21 ], [ %38, %40 ], [ %38, %37 ], [ null, %43 ], [ %60, %62 ], [ %60, %59 ], [ null, %65 ], [ %81, %83 ], [ %81, %80 ], [ null, %86 ], [ %102, %104 ], [ %102, %101 ], [ null, %130 ], [ %147, %149 ], [ %147, %146 ], [ null, %155 ], [ %171, %173 ], [ %171, %170 ], [ null, %182 ], [ %198, %200 ], [ %198, %197 ], [ null, %238 ], [ %259, %261 ], [ %259, %258 ], [ null, %264 ], [ %280, %282 ], [ %280, %279 ], [ null, %285 ], [ %301, %303 ], [ %301, %300 ], [ null, %316 ], [ %332, %334 ], [ %332, %331 ], [ null, %337 ], [ %353, %355 ], [ %353, %352 ], [ null, %358 ], [ %374, %376 ], [ %374, %373 ], [ null, %404 ], [ null, %413 ], [ null, %409 ], [ %527, %529 ], [ %527, %526 ], [ null, %566 ], [ %583, %585 ], [ %583, %582 ], [ null, %126 ], [ %543, %542 ], [ null, %505 ], [ null, %428 ], [ null, %435 ], [ null, %455 ], [ null, %485 ]
  ret ptr %589
}

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @cplus_demangle_type(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  %3 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = load i8, ptr %4, align 1, !tbaa !46
  switch i8 %5, label %638 [
    i8 114, label %6
    i8 86, label %6
    i8 75, label %6
    i8 97, label %31
    i8 98, label %31
    i8 99, label %31
    i8 100, label %31
    i8 101, label %31
    i8 102, label %31
    i8 103, label %31
    i8 104, label %31
    i8 105, label %31
    i8 106, label %31
    i8 108, label %31
    i8 109, label %31
    i8 110, label %31
    i8 111, label %31
    i8 115, label %31
    i8 116, label %31
    i8 118, label %31
    i8 119, label %31
    i8 120, label %31
    i8 121, label %31
    i8 122, label %31
    i8 117, label %61
    i8 70, label %85
    i8 48, label %87
    i8 49, label %87
    i8 50, label %87
    i8 51, label %87
    i8 52, label %87
    i8 53, label %87
    i8 54, label %87
    i8 55, label %87
    i8 56, label %87
    i8 57, label %87
    i8 78, label %87
    i8 90, label %87
    i8 65, label %89
    i8 77, label %91
    i8 84, label %93
    i8 83, label %137
    i8 79, label %183
    i8 80, label %207
    i8 82, label %231
    i8 67, label %255
    i8 71, label %279
    i8 85, label %303
    i8 68, label %331
  ]

6:                                                ; preds = %1, %1, %1
  %7 = call fastcc ptr @d_cv_qualifiers(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %638, label %9

9:                                                ; preds = %6
  %10 = call ptr @cplus_demangle_type(ptr noundef %0)
  store ptr %10, ptr %7, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %638, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %2, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 8
  %17 = load i32, ptr %16, align 8, !tbaa !68
  %18 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 9
  %19 = load i32, ptr %18, align 4, !tbaa !69
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !70
  %24 = sext i32 %17 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  store ptr %13, ptr %25, align 8, !tbaa !35
  %26 = add nsw i32 %17, 1
  store i32 %26, ptr %16, align 8, !tbaa !68
  br label %27

27:                                               ; preds = %12, %15, %21
  %28 = phi i1 [ false, %21 ], [ true, %12 ], [ true, %15 ]
  %29 = load ptr, ptr %2, align 8
  %30 = select i1 %28, ptr null, ptr %29
  br label %638

31:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %32 = sext i8 %5 to i64
  %33 = add nsw i64 %32, -97
  %34 = getelementptr inbounds [32 x %struct.demangle_builtin_type_info], ptr @cplus_demangle_builtin_types, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !58
  %37 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %38 = load i32, ptr %37, align 4, !tbaa !59
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !60
  %43 = sext i32 %36 to i64
  %44 = getelementptr inbounds %struct.demangle_component, ptr %42, i64 %43
  %45 = add nsw i32 %36, 1
  store i32 %45, ptr %35, align 8, !tbaa !58
  br label %46

46:                                               ; preds = %40, %31
  %47 = phi ptr [ %44, %40 ], [ null, %31 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  store i32 35, ptr %47, align 8, !tbaa !53
  %50 = getelementptr inbounds %struct.demangle_component, ptr %47, i64 0, i32 1
  store ptr %34, ptr %50, align 8, !tbaa !46
  br label %51

51:                                               ; preds = %46, %49
  store ptr %47, ptr %2, align 8, !tbaa !35
  %52 = getelementptr inbounds %struct.demangle_component, ptr %47, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %53, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !71
  %56 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %57 = load i32, ptr %56, align 8, !tbaa !57
  %58 = add nsw i32 %57, %55
  store i32 %58, ptr %56, align 8, !tbaa !57
  %59 = load ptr, ptr %3, align 8, !tbaa !55
  %60 = getelementptr inbounds i8, ptr %59, i64 1
  store ptr %60, ptr %3, align 8, !tbaa !55
  br label %636

61:                                               ; preds = %1
  %62 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %62, ptr %3, align 8, !tbaa !55
  %63 = tail call fastcc ptr @d_source_name(ptr noundef %0)
  %64 = icmp eq ptr %63, null
  br i1 %64, label %83, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %67 = load i32, ptr %66, align 8, !tbaa !58
  %68 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %69 = load i32, ptr %68, align 4, !tbaa !59
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !60
  %74 = sext i32 %67 to i64
  %75 = getelementptr inbounds %struct.demangle_component, ptr %73, i64 %74
  %76 = add nsw i32 %67, 1
  store i32 %76, ptr %66, align 8, !tbaa !58
  br label %77

77:                                               ; preds = %71, %65
  %78 = phi ptr [ %75, %71 ], [ null, %65 ]
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  store i32 36, ptr %78, align 8, !tbaa !53
  %81 = getelementptr inbounds %struct.demangle_component, ptr %78, i64 0, i32 1
  store ptr %63, ptr %81, align 8, !tbaa !46
  %82 = getelementptr inbounds %struct.demangle_component, ptr %78, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %82, align 8, !tbaa !46
  br label %83

83:                                               ; preds = %61, %77, %80
  %84 = phi ptr [ null, %61 ], [ %78, %80 ], [ %78, %77 ]
  store ptr %84, ptr %2, align 8, !tbaa !35
  br label %621

85:                                               ; preds = %1
  %86 = tail call fastcc ptr @d_function_type(ptr noundef %0)
  store ptr %86, ptr %2, align 8, !tbaa !35
  br label %621

87:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %88 = tail call fastcc ptr @d_name(ptr noundef %0)
  store ptr %88, ptr %2, align 8, !tbaa !35
  br label %621

89:                                               ; preds = %1
  %90 = tail call fastcc ptr @d_array_type(ptr noundef %0)
  store ptr %90, ptr %2, align 8, !tbaa !35
  br label %621

91:                                               ; preds = %1
  %92 = tail call fastcc ptr @d_pointer_to_member_type(ptr noundef %0)
  store ptr %92, ptr %2, align 8, !tbaa !35
  br label %621

93:                                               ; preds = %1
  %94 = tail call fastcc ptr @d_template_param(ptr noundef %0)
  store ptr %94, ptr %2, align 8, !tbaa !35
  %95 = load ptr, ptr %3, align 8, !tbaa !55
  %96 = load i8, ptr %95, align 1, !tbaa !46
  %97 = icmp eq i8 %96, 73
  br i1 %97, label %98, label %621

98:                                               ; preds = %93
  %99 = icmp eq ptr %94, null
  br i1 %99, label %638, label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 8
  %102 = load i32, ptr %101, align 8, !tbaa !68
  %103 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 9
  %104 = load i32, ptr %103, align 4, !tbaa !69
  %105 = icmp slt i32 %102, %104
  br i1 %105, label %106, label %638

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 7
  %108 = load ptr, ptr %107, align 8, !tbaa !70
  %109 = sext i32 %102 to i64
  %110 = getelementptr inbounds ptr, ptr %108, i64 %109
  store ptr %94, ptr %110, align 8, !tbaa !35
  %111 = add nsw i32 %102, 1
  store i32 %111, ptr %101, align 8, !tbaa !68
  %112 = load ptr, ptr %2, align 8, !tbaa !35
  %113 = tail call fastcc ptr @d_template_args(ptr noundef %0)
  %114 = icmp eq ptr %112, null
  %115 = icmp eq ptr %113, null
  %116 = or i1 %114, %115
  br i1 %116, label %135, label %117

117:                                              ; preds = %106
  %118 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %119 = load i32, ptr %118, align 8, !tbaa !58
  %120 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %121 = load i32, ptr %120, align 4, !tbaa !59
  %122 = icmp slt i32 %119, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %125 = load ptr, ptr %124, align 8, !tbaa !60
  %126 = sext i32 %119 to i64
  %127 = getelementptr inbounds %struct.demangle_component, ptr %125, i64 %126
  %128 = add nsw i32 %119, 1
  store i32 %128, ptr %118, align 8, !tbaa !58
  br label %129

129:                                              ; preds = %123, %117
  %130 = phi ptr [ %127, %123 ], [ null, %117 ]
  %131 = icmp eq ptr %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  store i32 4, ptr %130, align 8, !tbaa !53
  %133 = getelementptr inbounds %struct.demangle_component, ptr %130, i64 0, i32 1
  store ptr %112, ptr %133, align 8, !tbaa !46
  %134 = getelementptr inbounds %struct.demangle_component, ptr %130, i64 0, i32 1, i32 0, i32 1
  store ptr %113, ptr %134, align 8, !tbaa !46
  br label %135

135:                                              ; preds = %106, %129, %132
  %136 = phi ptr [ null, %106 ], [ %130, %132 ], [ %130, %129 ]
  store ptr %136, ptr %2, align 8, !tbaa !35
  br label %621

137:                                              ; preds = %1
  %138 = getelementptr inbounds i8, ptr %4, i64 1
  %139 = load i8, ptr %138, align 1, !tbaa !46
  %140 = add i8 %139, -48
  %141 = icmp ult i8 %140, 10
  %142 = icmp eq i8 %139, 95
  %143 = or i1 %142, %141
  %144 = add i8 %139, -65
  %145 = icmp ult i8 %144, 26
  %146 = or i1 %145, %143
  br i1 %146, label %147, label %177

147:                                              ; preds = %137
  %148 = tail call fastcc ptr @d_substitution(ptr noundef %0, i32 noundef 0)
  store ptr %148, ptr %2, align 8, !tbaa !35
  %149 = load ptr, ptr %3, align 8, !tbaa !55
  %150 = load i8, ptr %149, align 1, !tbaa !46
  %151 = icmp eq i8 %150, 73
  br i1 %151, label %152, label %636

152:                                              ; preds = %147
  %153 = tail call fastcc ptr @d_template_args(ptr noundef %0)
  %154 = icmp eq ptr %148, null
  %155 = icmp eq ptr %153, null
  %156 = or i1 %154, %155
  br i1 %156, label %175, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %159 = load i32, ptr %158, align 8, !tbaa !58
  %160 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %161 = load i32, ptr %160, align 4, !tbaa !59
  %162 = icmp slt i32 %159, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %165 = load ptr, ptr %164, align 8, !tbaa !60
  %166 = sext i32 %159 to i64
  %167 = getelementptr inbounds %struct.demangle_component, ptr %165, i64 %166
  %168 = add nsw i32 %159, 1
  store i32 %168, ptr %158, align 8, !tbaa !58
  br label %169

169:                                              ; preds = %163, %157
  %170 = phi ptr [ %167, %163 ], [ null, %157 ]
  %171 = icmp eq ptr %170, null
  br i1 %171, label %175, label %172

172:                                              ; preds = %169
  store i32 4, ptr %170, align 8, !tbaa !53
  %173 = getelementptr inbounds %struct.demangle_component, ptr %170, i64 0, i32 1
  store ptr %148, ptr %173, align 8, !tbaa !46
  %174 = getelementptr inbounds %struct.demangle_component, ptr %170, i64 0, i32 1, i32 0, i32 1
  store ptr %153, ptr %174, align 8, !tbaa !46
  br label %175

175:                                              ; preds = %152, %169, %172
  %176 = phi ptr [ null, %152 ], [ %170, %172 ], [ %170, %169 ]
  store ptr %176, ptr %2, align 8, !tbaa !35
  br label %621

177:                                              ; preds = %137
  %178 = tail call fastcc ptr @d_name(ptr noundef %0)
  store ptr %178, ptr %2, align 8, !tbaa !35
  %179 = icmp eq ptr %178, null
  br i1 %179, label %621, label %180

180:                                              ; preds = %177
  %181 = load i32, ptr %178, align 8, !tbaa !53
  %182 = icmp eq i32 %181, 22
  br i1 %182, label %636, label %621

183:                                              ; preds = %1
  %184 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %184, ptr %3, align 8, !tbaa !55
  %185 = tail call ptr @cplus_demangle_type(ptr noundef %0)
  %186 = icmp eq ptr %185, null
  br i1 %186, label %205, label %187

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %189 = load i32, ptr %188, align 8, !tbaa !58
  %190 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %191 = load i32, ptr %190, align 4, !tbaa !59
  %192 = icmp slt i32 %189, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %195 = load ptr, ptr %194, align 8, !tbaa !60
  %196 = sext i32 %189 to i64
  %197 = getelementptr inbounds %struct.demangle_component, ptr %195, i64 %196
  %198 = add nsw i32 %189, 1
  store i32 %198, ptr %188, align 8, !tbaa !58
  br label %199

199:                                              ; preds = %193, %187
  %200 = phi ptr [ %197, %193 ], [ null, %187 ]
  %201 = icmp eq ptr %200, null
  br i1 %201, label %205, label %202

202:                                              ; preds = %199
  store i32 32, ptr %200, align 8, !tbaa !53
  %203 = getelementptr inbounds %struct.demangle_component, ptr %200, i64 0, i32 1
  store ptr %185, ptr %203, align 8, !tbaa !46
  %204 = getelementptr inbounds %struct.demangle_component, ptr %200, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %204, align 8, !tbaa !46
  br label %205

205:                                              ; preds = %183, %199, %202
  %206 = phi ptr [ null, %183 ], [ %200, %202 ], [ %200, %199 ]
  store ptr %206, ptr %2, align 8, !tbaa !35
  br label %621

207:                                              ; preds = %1
  %208 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %208, ptr %3, align 8, !tbaa !55
  %209 = tail call ptr @cplus_demangle_type(ptr noundef %0)
  %210 = icmp eq ptr %209, null
  br i1 %210, label %229, label %211

211:                                              ; preds = %207
  %212 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %213 = load i32, ptr %212, align 8, !tbaa !58
  %214 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %215 = load i32, ptr %214, align 4, !tbaa !59
  %216 = icmp slt i32 %213, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %211
  %218 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %219 = load ptr, ptr %218, align 8, !tbaa !60
  %220 = sext i32 %213 to i64
  %221 = getelementptr inbounds %struct.demangle_component, ptr %219, i64 %220
  %222 = add nsw i32 %213, 1
  store i32 %222, ptr %212, align 8, !tbaa !58
  br label %223

223:                                              ; preds = %217, %211
  %224 = phi ptr [ %221, %217 ], [ null, %211 ]
  %225 = icmp eq ptr %224, null
  br i1 %225, label %229, label %226

226:                                              ; preds = %223
  store i32 30, ptr %224, align 8, !tbaa !53
  %227 = getelementptr inbounds %struct.demangle_component, ptr %224, i64 0, i32 1
  store ptr %209, ptr %227, align 8, !tbaa !46
  %228 = getelementptr inbounds %struct.demangle_component, ptr %224, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %228, align 8, !tbaa !46
  br label %229

229:                                              ; preds = %207, %223, %226
  %230 = phi ptr [ null, %207 ], [ %224, %226 ], [ %224, %223 ]
  store ptr %230, ptr %2, align 8, !tbaa !35
  br label %621

231:                                              ; preds = %1
  %232 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %232, ptr %3, align 8, !tbaa !55
  %233 = tail call ptr @cplus_demangle_type(ptr noundef %0)
  %234 = icmp eq ptr %233, null
  br i1 %234, label %253, label %235

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %237 = load i32, ptr %236, align 8, !tbaa !58
  %238 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %239 = load i32, ptr %238, align 4, !tbaa !59
  %240 = icmp slt i32 %237, %239
  br i1 %240, label %241, label %247

241:                                              ; preds = %235
  %242 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %243 = load ptr, ptr %242, align 8, !tbaa !60
  %244 = sext i32 %237 to i64
  %245 = getelementptr inbounds %struct.demangle_component, ptr %243, i64 %244
  %246 = add nsw i32 %237, 1
  store i32 %246, ptr %236, align 8, !tbaa !58
  br label %247

247:                                              ; preds = %241, %235
  %248 = phi ptr [ %245, %241 ], [ null, %235 ]
  %249 = icmp eq ptr %248, null
  br i1 %249, label %253, label %250

250:                                              ; preds = %247
  store i32 31, ptr %248, align 8, !tbaa !53
  %251 = getelementptr inbounds %struct.demangle_component, ptr %248, i64 0, i32 1
  store ptr %233, ptr %251, align 8, !tbaa !46
  %252 = getelementptr inbounds %struct.demangle_component, ptr %248, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %252, align 8, !tbaa !46
  br label %253

253:                                              ; preds = %231, %247, %250
  %254 = phi ptr [ null, %231 ], [ %248, %250 ], [ %248, %247 ]
  store ptr %254, ptr %2, align 8, !tbaa !35
  br label %621

255:                                              ; preds = %1
  %256 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %256, ptr %3, align 8, !tbaa !55
  %257 = tail call ptr @cplus_demangle_type(ptr noundef %0)
  %258 = icmp eq ptr %257, null
  br i1 %258, label %277, label %259

259:                                              ; preds = %255
  %260 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %261 = load i32, ptr %260, align 8, !tbaa !58
  %262 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %263 = load i32, ptr %262, align 4, !tbaa !59
  %264 = icmp slt i32 %261, %263
  br i1 %264, label %265, label %271

265:                                              ; preds = %259
  %266 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %267 = load ptr, ptr %266, align 8, !tbaa !60
  %268 = sext i32 %261 to i64
  %269 = getelementptr inbounds %struct.demangle_component, ptr %267, i64 %268
  %270 = add nsw i32 %261, 1
  store i32 %270, ptr %260, align 8, !tbaa !58
  br label %271

271:                                              ; preds = %265, %259
  %272 = phi ptr [ %269, %265 ], [ null, %259 ]
  %273 = icmp eq ptr %272, null
  br i1 %273, label %277, label %274

274:                                              ; preds = %271
  store i32 33, ptr %272, align 8, !tbaa !53
  %275 = getelementptr inbounds %struct.demangle_component, ptr %272, i64 0, i32 1
  store ptr %257, ptr %275, align 8, !tbaa !46
  %276 = getelementptr inbounds %struct.demangle_component, ptr %272, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %276, align 8, !tbaa !46
  br label %277

277:                                              ; preds = %255, %271, %274
  %278 = phi ptr [ null, %255 ], [ %272, %274 ], [ %272, %271 ]
  store ptr %278, ptr %2, align 8, !tbaa !35
  br label %621

279:                                              ; preds = %1
  %280 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %280, ptr %3, align 8, !tbaa !55
  %281 = tail call ptr @cplus_demangle_type(ptr noundef %0)
  %282 = icmp eq ptr %281, null
  br i1 %282, label %301, label %283

283:                                              ; preds = %279
  %284 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %285 = load i32, ptr %284, align 8, !tbaa !58
  %286 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %287 = load i32, ptr %286, align 4, !tbaa !59
  %288 = icmp slt i32 %285, %287
  br i1 %288, label %289, label %295

289:                                              ; preds = %283
  %290 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %291 = load ptr, ptr %290, align 8, !tbaa !60
  %292 = sext i32 %285 to i64
  %293 = getelementptr inbounds %struct.demangle_component, ptr %291, i64 %292
  %294 = add nsw i32 %285, 1
  store i32 %294, ptr %284, align 8, !tbaa !58
  br label %295

295:                                              ; preds = %289, %283
  %296 = phi ptr [ %293, %289 ], [ null, %283 ]
  %297 = icmp eq ptr %296, null
  br i1 %297, label %301, label %298

298:                                              ; preds = %295
  store i32 34, ptr %296, align 8, !tbaa !53
  %299 = getelementptr inbounds %struct.demangle_component, ptr %296, i64 0, i32 1
  store ptr %281, ptr %299, align 8, !tbaa !46
  %300 = getelementptr inbounds %struct.demangle_component, ptr %296, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %300, align 8, !tbaa !46
  br label %301

301:                                              ; preds = %279, %295, %298
  %302 = phi ptr [ null, %279 ], [ %296, %298 ], [ %296, %295 ]
  store ptr %302, ptr %2, align 8, !tbaa !35
  br label %621

303:                                              ; preds = %1
  %304 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %304, ptr %3, align 8, !tbaa !55
  %305 = tail call fastcc ptr @d_source_name(ptr noundef %0)
  store ptr %305, ptr %2, align 8, !tbaa !35
  %306 = tail call ptr @cplus_demangle_type(ptr noundef %0)
  %307 = load ptr, ptr %2, align 8, !tbaa !35
  %308 = icmp eq ptr %306, null
  %309 = icmp eq ptr %307, null
  %310 = or i1 %308, %309
  br i1 %310, label %329, label %311

311:                                              ; preds = %303
  %312 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %313 = load i32, ptr %312, align 8, !tbaa !58
  %314 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %315 = load i32, ptr %314, align 4, !tbaa !59
  %316 = icmp slt i32 %313, %315
  br i1 %316, label %317, label %323

317:                                              ; preds = %311
  %318 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %319 = load ptr, ptr %318, align 8, !tbaa !60
  %320 = sext i32 %313 to i64
  %321 = getelementptr inbounds %struct.demangle_component, ptr %319, i64 %320
  %322 = add nsw i32 %313, 1
  store i32 %322, ptr %312, align 8, !tbaa !58
  br label %323

323:                                              ; preds = %317, %311
  %324 = phi ptr [ %321, %317 ], [ null, %311 ]
  %325 = icmp eq ptr %324, null
  br i1 %325, label %329, label %326

326:                                              ; preds = %323
  store i32 29, ptr %324, align 8, !tbaa !53
  %327 = getelementptr inbounds %struct.demangle_component, ptr %324, i64 0, i32 1
  store ptr %306, ptr %327, align 8, !tbaa !46
  %328 = getelementptr inbounds %struct.demangle_component, ptr %324, i64 0, i32 1, i32 0, i32 1
  store ptr %307, ptr %328, align 8, !tbaa !46
  br label %329

329:                                              ; preds = %303, %323, %326
  %330 = phi ptr [ null, %303 ], [ %324, %326 ], [ %324, %323 ]
  store ptr %330, ptr %2, align 8, !tbaa !35
  br label %621

331:                                              ; preds = %1
  %332 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %332, ptr %3, align 8, !tbaa !55
  %333 = load i8, ptr %332, align 1, !tbaa !46
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %339, label %335

335:                                              ; preds = %331
  %336 = getelementptr inbounds i8, ptr %4, i64 2
  store ptr %336, ptr %3, align 8, !tbaa !55
  %337 = load i8, ptr %332, align 1, !tbaa !46
  %338 = sext i8 %337 to i32
  br label %339

339:                                              ; preds = %331, %335
  %340 = phi i32 [ %338, %335 ], [ 0, %331 ]
  switch i32 %340, label %638 [
    i32 84, label %341
    i32 116, label %341
    i32 112, label %374
    i32 102, label %397
    i32 100, label %422
    i32 101, label %447
    i32 104, label %472
    i32 115, label %497
    i32 105, label %522
    i32 70, label %547
    i32 118, label %619
  ]

341:                                              ; preds = %339, %339
  %342 = tail call fastcc ptr @d_expression(ptr noundef %0)
  %343 = icmp eq ptr %342, null
  br i1 %343, label %362, label %344

344:                                              ; preds = %341
  %345 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %346 = load i32, ptr %345, align 8, !tbaa !58
  %347 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %348 = load i32, ptr %347, align 4, !tbaa !59
  %349 = icmp slt i32 %346, %348
  br i1 %349, label %350, label %356

350:                                              ; preds = %344
  %351 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %352 = load ptr, ptr %351, align 8, !tbaa !60
  %353 = sext i32 %346 to i64
  %354 = getelementptr inbounds %struct.demangle_component, ptr %352, i64 %353
  %355 = add nsw i32 %346, 1
  store i32 %355, ptr %345, align 8, !tbaa !58
  br label %356

356:                                              ; preds = %350, %344
  %357 = phi ptr [ %354, %350 ], [ null, %344 ]
  %358 = icmp eq ptr %357, null
  br i1 %358, label %362, label %359

359:                                              ; preds = %356
  store i32 59, ptr %357, align 8, !tbaa !53
  %360 = getelementptr inbounds %struct.demangle_component, ptr %357, i64 0, i32 1
  store ptr %342, ptr %360, align 8, !tbaa !46
  %361 = getelementptr inbounds %struct.demangle_component, ptr %357, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %361, align 8, !tbaa !46
  br label %362

362:                                              ; preds = %341, %356, %359
  %363 = phi ptr [ null, %341 ], [ %357, %359 ], [ %357, %356 ]
  store ptr %363, ptr %2, align 8, !tbaa !35
  %364 = icmp eq ptr %363, null
  br i1 %364, label %636, label %365

365:                                              ; preds = %362
  %366 = load ptr, ptr %3, align 8, !tbaa !55
  %367 = load i8, ptr %366, align 1, !tbaa !46
  %368 = icmp eq i8 %367, 0
  br i1 %368, label %373, label %369

369:                                              ; preds = %365
  %370 = getelementptr inbounds i8, ptr %366, i64 1
  store ptr %370, ptr %3, align 8, !tbaa !55
  %371 = load i8, ptr %366, align 1, !tbaa !46
  %372 = icmp eq i8 %371, 69
  br i1 %372, label %636, label %373

373:                                              ; preds = %365, %369
  store ptr null, ptr %2, align 8, !tbaa !35
  br label %636

374:                                              ; preds = %339
  %375 = tail call ptr @cplus_demangle_type(ptr noundef %0)
  %376 = icmp eq ptr %375, null
  br i1 %376, label %395, label %377

377:                                              ; preds = %374
  %378 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %379 = load i32, ptr %378, align 8, !tbaa !58
  %380 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %381 = load i32, ptr %380, align 4, !tbaa !59
  %382 = icmp slt i32 %379, %381
  br i1 %382, label %383, label %389

383:                                              ; preds = %377
  %384 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %385 = load ptr, ptr %384, align 8, !tbaa !60
  %386 = sext i32 %379 to i64
  %387 = getelementptr inbounds %struct.demangle_component, ptr %385, i64 %386
  %388 = add nsw i32 %379, 1
  store i32 %388, ptr %378, align 8, !tbaa !58
  br label %389

389:                                              ; preds = %383, %377
  %390 = phi ptr [ %387, %383 ], [ null, %377 ]
  %391 = icmp eq ptr %390, null
  br i1 %391, label %395, label %392

392:                                              ; preds = %389
  store i32 65, ptr %390, align 8, !tbaa !53
  %393 = getelementptr inbounds %struct.demangle_component, ptr %390, i64 0, i32 1
  store ptr %375, ptr %393, align 8, !tbaa !46
  %394 = getelementptr inbounds %struct.demangle_component, ptr %390, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %394, align 8, !tbaa !46
  br label %395

395:                                              ; preds = %374, %389, %392
  %396 = phi ptr [ null, %374 ], [ %390, %392 ], [ %390, %389 ]
  store ptr %396, ptr %2, align 8, !tbaa !35
  br label %636

397:                                              ; preds = %339
  %398 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %399 = load i32, ptr %398, align 8, !tbaa !58
  %400 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %401 = load i32, ptr %400, align 4, !tbaa !59
  %402 = icmp slt i32 %399, %401
  br i1 %402, label %403, label %409

403:                                              ; preds = %397
  %404 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %405 = load ptr, ptr %404, align 8, !tbaa !60
  %406 = sext i32 %399 to i64
  %407 = getelementptr inbounds %struct.demangle_component, ptr %405, i64 %406
  %408 = add nsw i32 %399, 1
  store i32 %408, ptr %398, align 8, !tbaa !58
  br label %409

409:                                              ; preds = %403, %397
  %410 = phi ptr [ %407, %403 ], [ null, %397 ]
  %411 = icmp eq ptr %410, null
  br i1 %411, label %414, label %412

412:                                              ; preds = %409
  store i32 35, ptr %410, align 8, !tbaa !53
  %413 = getelementptr inbounds %struct.demangle_component, ptr %410, i64 0, i32 1
  store ptr getelementptr inbounds ([32 x %struct.demangle_builtin_type_info], ptr @cplus_demangle_builtin_types, i64 0, i64 26), ptr %413, align 8, !tbaa !46
  br label %414

414:                                              ; preds = %409, %412
  store ptr %410, ptr %2, align 8, !tbaa !35
  %415 = getelementptr inbounds %struct.demangle_component, ptr %410, i64 0, i32 1
  %416 = load ptr, ptr %415, align 8, !tbaa !46
  %417 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %416, i64 0, i32 1
  %418 = load i32, ptr %417, align 8, !tbaa !71
  %419 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %420 = load i32, ptr %419, align 8, !tbaa !57
  %421 = add nsw i32 %420, %418
  store i32 %421, ptr %419, align 8, !tbaa !57
  br label %636

422:                                              ; preds = %339
  %423 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %424 = load i32, ptr %423, align 8, !tbaa !58
  %425 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %426 = load i32, ptr %425, align 4, !tbaa !59
  %427 = icmp slt i32 %424, %426
  br i1 %427, label %428, label %434

428:                                              ; preds = %422
  %429 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %430 = load ptr, ptr %429, align 8, !tbaa !60
  %431 = sext i32 %424 to i64
  %432 = getelementptr inbounds %struct.demangle_component, ptr %430, i64 %431
  %433 = add nsw i32 %424, 1
  store i32 %433, ptr %423, align 8, !tbaa !58
  br label %434

434:                                              ; preds = %428, %422
  %435 = phi ptr [ %432, %428 ], [ null, %422 ]
  %436 = icmp eq ptr %435, null
  br i1 %436, label %439, label %437

437:                                              ; preds = %434
  store i32 35, ptr %435, align 8, !tbaa !53
  %438 = getelementptr inbounds %struct.demangle_component, ptr %435, i64 0, i32 1
  store ptr getelementptr inbounds ([32 x %struct.demangle_builtin_type_info], ptr @cplus_demangle_builtin_types, i64 0, i64 27), ptr %438, align 8, !tbaa !46
  br label %439

439:                                              ; preds = %434, %437
  store ptr %435, ptr %2, align 8, !tbaa !35
  %440 = getelementptr inbounds %struct.demangle_component, ptr %435, i64 0, i32 1
  %441 = load ptr, ptr %440, align 8, !tbaa !46
  %442 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %441, i64 0, i32 1
  %443 = load i32, ptr %442, align 8, !tbaa !71
  %444 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %445 = load i32, ptr %444, align 8, !tbaa !57
  %446 = add nsw i32 %445, %443
  store i32 %446, ptr %444, align 8, !tbaa !57
  br label %636

447:                                              ; preds = %339
  %448 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %449 = load i32, ptr %448, align 8, !tbaa !58
  %450 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %451 = load i32, ptr %450, align 4, !tbaa !59
  %452 = icmp slt i32 %449, %451
  br i1 %452, label %453, label %459

453:                                              ; preds = %447
  %454 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %455 = load ptr, ptr %454, align 8, !tbaa !60
  %456 = sext i32 %449 to i64
  %457 = getelementptr inbounds %struct.demangle_component, ptr %455, i64 %456
  %458 = add nsw i32 %449, 1
  store i32 %458, ptr %448, align 8, !tbaa !58
  br label %459

459:                                              ; preds = %453, %447
  %460 = phi ptr [ %457, %453 ], [ null, %447 ]
  %461 = icmp eq ptr %460, null
  br i1 %461, label %464, label %462

462:                                              ; preds = %459
  store i32 35, ptr %460, align 8, !tbaa !53
  %463 = getelementptr inbounds %struct.demangle_component, ptr %460, i64 0, i32 1
  store ptr getelementptr inbounds ([32 x %struct.demangle_builtin_type_info], ptr @cplus_demangle_builtin_types, i64 0, i64 28), ptr %463, align 8, !tbaa !46
  br label %464

464:                                              ; preds = %459, %462
  store ptr %460, ptr %2, align 8, !tbaa !35
  %465 = getelementptr inbounds %struct.demangle_component, ptr %460, i64 0, i32 1
  %466 = load ptr, ptr %465, align 8, !tbaa !46
  %467 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %466, i64 0, i32 1
  %468 = load i32, ptr %467, align 8, !tbaa !71
  %469 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %470 = load i32, ptr %469, align 8, !tbaa !57
  %471 = add nsw i32 %470, %468
  store i32 %471, ptr %469, align 8, !tbaa !57
  br label %636

472:                                              ; preds = %339
  %473 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %474 = load i32, ptr %473, align 8, !tbaa !58
  %475 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %476 = load i32, ptr %475, align 4, !tbaa !59
  %477 = icmp slt i32 %474, %476
  br i1 %477, label %478, label %484

478:                                              ; preds = %472
  %479 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %480 = load ptr, ptr %479, align 8, !tbaa !60
  %481 = sext i32 %474 to i64
  %482 = getelementptr inbounds %struct.demangle_component, ptr %480, i64 %481
  %483 = add nsw i32 %474, 1
  store i32 %483, ptr %473, align 8, !tbaa !58
  br label %484

484:                                              ; preds = %478, %472
  %485 = phi ptr [ %482, %478 ], [ null, %472 ]
  %486 = icmp eq ptr %485, null
  br i1 %486, label %489, label %487

487:                                              ; preds = %484
  store i32 35, ptr %485, align 8, !tbaa !53
  %488 = getelementptr inbounds %struct.demangle_component, ptr %485, i64 0, i32 1
  store ptr getelementptr inbounds ([32 x %struct.demangle_builtin_type_info], ptr @cplus_demangle_builtin_types, i64 0, i64 29), ptr %488, align 8, !tbaa !46
  br label %489

489:                                              ; preds = %484, %487
  store ptr %485, ptr %2, align 8, !tbaa !35
  %490 = getelementptr inbounds %struct.demangle_component, ptr %485, i64 0, i32 1
  %491 = load ptr, ptr %490, align 8, !tbaa !46
  %492 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %491, i64 0, i32 1
  %493 = load i32, ptr %492, align 8, !tbaa !71
  %494 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %495 = load i32, ptr %494, align 8, !tbaa !57
  %496 = add nsw i32 %495, %493
  store i32 %496, ptr %494, align 8, !tbaa !57
  br label %636

497:                                              ; preds = %339
  %498 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %499 = load i32, ptr %498, align 8, !tbaa !58
  %500 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %501 = load i32, ptr %500, align 4, !tbaa !59
  %502 = icmp slt i32 %499, %501
  br i1 %502, label %503, label %509

503:                                              ; preds = %497
  %504 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %505 = load ptr, ptr %504, align 8, !tbaa !60
  %506 = sext i32 %499 to i64
  %507 = getelementptr inbounds %struct.demangle_component, ptr %505, i64 %506
  %508 = add nsw i32 %499, 1
  store i32 %508, ptr %498, align 8, !tbaa !58
  br label %509

509:                                              ; preds = %503, %497
  %510 = phi ptr [ %507, %503 ], [ null, %497 ]
  %511 = icmp eq ptr %510, null
  br i1 %511, label %514, label %512

512:                                              ; preds = %509
  store i32 35, ptr %510, align 8, !tbaa !53
  %513 = getelementptr inbounds %struct.demangle_component, ptr %510, i64 0, i32 1
  store ptr getelementptr inbounds ([32 x %struct.demangle_builtin_type_info], ptr @cplus_demangle_builtin_types, i64 0, i64 30), ptr %513, align 8, !tbaa !46
  br label %514

514:                                              ; preds = %509, %512
  store ptr %510, ptr %2, align 8, !tbaa !35
  %515 = getelementptr inbounds %struct.demangle_component, ptr %510, i64 0, i32 1
  %516 = load ptr, ptr %515, align 8, !tbaa !46
  %517 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %516, i64 0, i32 1
  %518 = load i32, ptr %517, align 8, !tbaa !71
  %519 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %520 = load i32, ptr %519, align 8, !tbaa !57
  %521 = add nsw i32 %520, %518
  store i32 %521, ptr %519, align 8, !tbaa !57
  br label %636

522:                                              ; preds = %339
  %523 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %524 = load i32, ptr %523, align 8, !tbaa !58
  %525 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %526 = load i32, ptr %525, align 4, !tbaa !59
  %527 = icmp slt i32 %524, %526
  br i1 %527, label %528, label %534

528:                                              ; preds = %522
  %529 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %530 = load ptr, ptr %529, align 8, !tbaa !60
  %531 = sext i32 %524 to i64
  %532 = getelementptr inbounds %struct.demangle_component, ptr %530, i64 %531
  %533 = add nsw i32 %524, 1
  store i32 %533, ptr %523, align 8, !tbaa !58
  br label %534

534:                                              ; preds = %528, %522
  %535 = phi ptr [ %532, %528 ], [ null, %522 ]
  %536 = icmp eq ptr %535, null
  br i1 %536, label %539, label %537

537:                                              ; preds = %534
  store i32 35, ptr %535, align 8, !tbaa !53
  %538 = getelementptr inbounds %struct.demangle_component, ptr %535, i64 0, i32 1
  store ptr getelementptr inbounds ([32 x %struct.demangle_builtin_type_info], ptr @cplus_demangle_builtin_types, i64 0, i64 31), ptr %538, align 8, !tbaa !46
  br label %539

539:                                              ; preds = %534, %537
  store ptr %535, ptr %2, align 8, !tbaa !35
  %540 = getelementptr inbounds %struct.demangle_component, ptr %535, i64 0, i32 1
  %541 = load ptr, ptr %540, align 8, !tbaa !46
  %542 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %541, i64 0, i32 1
  %543 = load i32, ptr %542, align 8, !tbaa !71
  %544 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %545 = load i32, ptr %544, align 8, !tbaa !57
  %546 = add nsw i32 %545, %543
  store i32 %546, ptr %544, align 8, !tbaa !57
  br label %636

547:                                              ; preds = %339
  %548 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %549 = load i32, ptr %548, align 8, !tbaa !58
  %550 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %551 = load i32, ptr %550, align 4, !tbaa !59
  %552 = icmp slt i32 %549, %551
  tail call void @llvm.assume(i1 %552)
  %553 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %554 = load ptr, ptr %553, align 8, !tbaa !60
  %555 = sext i32 %549 to i64
  %556 = getelementptr inbounds %struct.demangle_component, ptr %554, i64 %555
  %557 = add nsw i32 %549, 1
  store i32 %557, ptr %548, align 8, !tbaa !58
  store ptr %556, ptr %2, align 8, !tbaa !35
  store i32 40, ptr %556, align 8, !tbaa !53
  %558 = load ptr, ptr %3, align 8, !tbaa !55
  %559 = load i8, ptr %558, align 1, !tbaa !46
  %560 = add i8 %559, -48
  %561 = icmp ult i8 %560, 10
  %562 = zext i1 %561 to i16
  %563 = getelementptr inbounds %struct.demangle_component, ptr %554, i64 %555, i32 1, i32 0, i32 1
  store i16 %562, ptr %563, align 8, !tbaa !46
  br i1 %561, label %564, label %583

564:                                              ; preds = %547
  %565 = load ptr, ptr %3, align 8, !tbaa !55
  %566 = load i8, ptr %565, align 1, !tbaa !46
  %567 = icmp eq i8 %566, 110
  br i1 %567, label %568, label %571

568:                                              ; preds = %564
  %569 = getelementptr inbounds i8, ptr %565, i64 1
  store ptr %569, ptr %3, align 8, !tbaa !55
  %570 = load i8, ptr %569, align 1, !tbaa !46
  br label %571

571:                                              ; preds = %568, %564
  %572 = phi i8 [ %570, %568 ], [ %566, %564 ]
  %573 = add i8 %572, -48
  %574 = icmp ult i8 %573, 10
  br i1 %574, label %575, label %583

575:                                              ; preds = %571
  %576 = load ptr, ptr %3, align 8, !tbaa !55
  br label %577

577:                                              ; preds = %575, %577
  %578 = phi ptr [ %576, %575 ], [ %579, %577 ]
  %579 = getelementptr inbounds i8, ptr %578, i64 1
  store ptr %579, ptr %3, align 8, !tbaa !55
  %580 = load i8, ptr %579, align 1, !tbaa !46
  %581 = add i8 %580, -48
  %582 = icmp ult i8 %581, 10
  br i1 %582, label %577, label %583, !llvm.loop !61

583:                                              ; preds = %577, %571, %547
  %584 = tail call ptr @cplus_demangle_type(ptr noundef %0)
  %585 = load ptr, ptr %2, align 8, !tbaa !35
  %586 = getelementptr inbounds %struct.demangle_component, ptr %585, i64 0, i32 1
  store ptr %584, ptr %586, align 8, !tbaa !46
  %587 = icmp eq ptr %584, null
  br i1 %587, label %638, label %588

588:                                              ; preds = %583
  %589 = load ptr, ptr %3, align 8, !tbaa !55
  %590 = load i8, ptr %589, align 1, !tbaa !46
  %591 = icmp eq i8 %590, 110
  br i1 %591, label %592, label %595

592:                                              ; preds = %588
  %593 = getelementptr inbounds i8, ptr %589, i64 1
  store ptr %593, ptr %3, align 8, !tbaa !55
  %594 = load i8, ptr %593, align 1, !tbaa !46
  br label %595

595:                                              ; preds = %592, %588
  %596 = phi i8 [ %594, %592 ], [ %590, %588 ]
  %597 = add i8 %596, -48
  %598 = icmp ult i8 %597, 10
  br i1 %598, label %599, label %607

599:                                              ; preds = %595
  %600 = load ptr, ptr %3, align 8, !tbaa !55
  br label %601

601:                                              ; preds = %599, %601
  %602 = phi ptr [ %600, %599 ], [ %603, %601 ]
  %603 = getelementptr inbounds i8, ptr %602, i64 1
  store ptr %603, ptr %3, align 8, !tbaa !55
  %604 = load i8, ptr %603, align 1, !tbaa !46
  %605 = add i8 %604, -48
  %606 = icmp ult i8 %605, 10
  br i1 %606, label %601, label %607, !llvm.loop !61

607:                                              ; preds = %601, %595
  %608 = load ptr, ptr %3, align 8, !tbaa !55
  %609 = load i8, ptr %608, align 1, !tbaa !46
  %610 = icmp eq i8 %609, 0
  br i1 %610, label %616, label %611

611:                                              ; preds = %607
  %612 = getelementptr inbounds i8, ptr %608, i64 1
  store ptr %612, ptr %3, align 8, !tbaa !55
  %613 = load i8, ptr %608, align 1, !tbaa !46
  %614 = icmp eq i8 %613, 115
  %615 = zext i1 %614 to i16
  br label %616

616:                                              ; preds = %607, %611
  %617 = phi i16 [ %615, %611 ], [ 0, %607 ]
  %618 = getelementptr inbounds i8, ptr %585, i64 18
  store i16 %617, ptr %618, align 2, !tbaa !46
  br label %636

619:                                              ; preds = %339
  %620 = tail call fastcc ptr @d_vector_type(ptr noundef %0)
  store ptr %620, ptr %2, align 8, !tbaa !35
  br label %636

621:                                              ; preds = %329, %301, %277, %253, %229, %205, %135, %93, %91, %89, %87, %85, %83, %175, %177, %180
  %622 = load ptr, ptr %2, align 8, !tbaa !35
  %623 = icmp eq ptr %622, null
  br i1 %623, label %638, label %624

624:                                              ; preds = %621
  %625 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 8
  %626 = load i32, ptr %625, align 8, !tbaa !68
  %627 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 9
  %628 = load i32, ptr %627, align 4, !tbaa !69
  %629 = icmp slt i32 %626, %628
  br i1 %629, label %630, label %638

630:                                              ; preds = %624
  %631 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 7
  %632 = load ptr, ptr %631, align 8, !tbaa !70
  %633 = sext i32 %626 to i64
  %634 = getelementptr inbounds ptr, ptr %632, i64 %633
  store ptr %622, ptr %634, align 8, !tbaa !35
  %635 = add nsw i32 %626, 1
  store i32 %635, ptr %625, align 8, !tbaa !68
  br label %636

636:                                              ; preds = %362, %630, %619, %616, %539, %514, %489, %464, %439, %414, %395, %373, %369, %51, %147, %180
  %637 = load ptr, ptr %2, align 8, !tbaa !35
  br label %638

638:                                              ; preds = %1, %624, %621, %100, %98, %27, %339, %583, %6, %9, %636
  %639 = phi ptr [ %637, %636 ], [ null, %6 ], [ null, %9 ], [ null, %583 ], [ null, %339 ], [ %30, %27 ], [ null, %98 ], [ null, %100 ], [ null, %621 ], [ null, %624 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret ptr %639
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_cv_qualifiers(ptr nocapture noundef %0, ptr noundef writeonly %1, i32 noundef %2) unnamed_addr #10 !prof !34 {
  %4 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = load i8, ptr %5, align 1, !tbaa !46
  %7 = icmp eq i32 %2, 0
  %8 = select i1 %7, i32 24, i32 27
  %9 = icmp eq i32 %2, 0
  %10 = select i1 %9, i32 23, i32 26
  %11 = icmp eq i32 %2, 0
  %12 = select i1 %11, i32 25, i32 28
  %13 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  br label %14

14:                                               ; preds = %33, %3
  %15 = phi ptr [ %1, %3 ], [ %34, %33 ]
  %16 = phi i8 [ %6, %3 ], [ %35, %33 ]
  switch i8 %16, label %36 [
    i8 114, label %17
    i8 86, label %17
    i8 75, label %17
  ]

17:                                               ; preds = %14, %14, %14
  %18 = load ptr, ptr %4, align 8, !tbaa !55
  %19 = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %19, ptr %4, align 8, !tbaa !55
  switch i8 %16, label %21 [
    i8 114, label %22
    i8 86, label %20
  ]

20:                                               ; preds = %17
  br label %22

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %17, %20, %21
  %23 = phi i32 [ 9, %20 ], [ 6, %21 ], [ 9, %17 ]
  %24 = phi i32 [ %8, %20 ], [ %12, %21 ], [ %10, %17 ]
  %25 = load i32, ptr %13, align 8, !tbaa !57
  %26 = add i32 %25, %23
  store i32 %26, ptr %13, align 8, !tbaa !57
  %27 = tail call fastcc ptr @d_make_comp(ptr noundef %0, i32 noundef %24, ptr noundef null, ptr noundef null)
  store ptr %27, ptr %15, align 8, !tbaa !35
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.demangle_component, ptr %27, i64 0, i32 1
  %31 = load ptr, ptr %4, align 8, !tbaa !55
  %32 = load i8, ptr %31, align 1, !tbaa !46
  br label %33

33:                                               ; preds = %22, %29
  %34 = phi ptr [ %30, %29 ], [ %15, %22 ]
  %35 = phi i8 [ %32, %29 ], [ %16, %22 ]
  br i1 %28, label %36, label %14, !llvm.loop !73

36:                                               ; preds = %14, %33
  %37 = phi ptr [ null, %33 ], [ %15, %14 ]
  ret ptr %37
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_make_comp(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #11 !prof !34 {
  switch i32 %1, label %31 [
    i32 1, label %5
    i32 2, label %5
    i32 3, label %5
    i32 4, label %5
    i32 11, label %5
    i32 29, label %5
    i32 39, label %5
    i32 47, label %5
    i32 48, label %5
    i32 49, label %5
    i32 50, label %5
    i32 51, label %5
    i32 52, label %5
    i32 53, label %5
    i32 54, label %5
    i32 56, label %5
    i32 41, label %5
    i32 9, label %9
    i32 10, label %9
    i32 12, label %9
    i32 13, label %9
    i32 14, label %9
    i32 15, label %9
    i32 16, label %9
    i32 17, label %9
    i32 18, label %9
    i32 19, label %9
    i32 20, label %9
    i32 21, label %9
    i32 30, label %9
    i32 31, label %9
    i32 32, label %9
    i32 33, label %9
    i32 34, label %9
    i32 36, label %9
    i32 46, label %9
    i32 55, label %9
    i32 59, label %9
    i32 65, label %9
    i32 60, label %9
    i32 61, label %9
    i32 38, label %11
    i32 37, label %13
    i32 23, label %13
    i32 24, label %13
    i32 25, label %13
    i32 26, label %13
    i32 27, label %13
    i32 28, label %13
    i32 42, label %13
    i32 43, label %13
  ]

5:                                                ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %6 = icmp eq ptr %2, null
  %7 = icmp eq ptr %3, null
  %8 = or i1 %6, %7
  br i1 %8, label %31, label %13

9:                                                ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %10 = icmp eq ptr %2, null
  br i1 %10, label %31, label %13

11:                                               ; preds = %4
  %12 = icmp eq ptr %3, null
  br i1 %12, label %31, label %13

13:                                               ; preds = %5, %4, %4, %4, %4, %4, %4, %4, %4, %4, %11, %9
  %14 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !58
  %16 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !59
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !60
  %22 = sext i32 %15 to i64
  %23 = getelementptr inbounds %struct.demangle_component, ptr %21, i64 %22
  %24 = add nsw i32 %15, 1
  store i32 %24, ptr %14, align 8, !tbaa !58
  br label %25

25:                                               ; preds = %13, %19
  %26 = phi ptr [ %23, %19 ], [ null, %13 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  store i32 %1, ptr %26, align 8, !tbaa !53
  %29 = getelementptr inbounds %struct.demangle_component, ptr %26, i64 0, i32 1
  store ptr %2, ptr %29, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.demangle_component, ptr %26, i64 0, i32 1, i32 0, i32 1
  store ptr %3, ptr %30, align 8, !tbaa !46
  br label %31

31:                                               ; preds = %11, %9, %5, %4, %25, %28
  %32 = phi ptr [ %26, %28 ], [ %26, %25 ], [ null, %4 ], [ null, %5 ], [ null, %9 ], [ null, %11 ]
  ret ptr %32
}

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_source_name(ptr nocapture noundef %0) unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = load i8, ptr %3, align 1, !tbaa !46
  %5 = icmp eq i8 %4, 110
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %7, ptr %2, align 8, !tbaa !55
  %8 = load i8, ptr %7, align 1, !tbaa !46
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i8 [ %8, %6 ], [ %4, %1 ]
  %11 = add i8 %10, -48
  %12 = icmp ult i8 %11, 10
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load ptr, ptr %2, align 8, !tbaa !55
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi ptr [ %14, %13 ], [ %23, %15 ]
  %17 = phi i64 [ 0, %13 ], [ %22, %15 ]
  %18 = phi i8 [ %10, %13 ], [ %24, %15 ]
  %19 = mul nsw i64 %17, 10
  %20 = zext nneg i8 %18 to i64
  %21 = add nsw i64 %20, -48
  %22 = add i64 %21, %19
  %23 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %23, ptr %2, align 8, !tbaa !55
  %24 = load i8, ptr %23, align 1, !tbaa !46
  %25 = add i8 %24, -48
  %26 = icmp ult i8 %25, 10
  br i1 %26, label %15, label %27, !llvm.loop !61

27:                                               ; preds = %15, %9
  %28 = phi i64 [ 0, %9 ], [ %22, %15 ]
  %29 = sub nsw i64 0, %28
  %30 = select i1 %5, i64 %29, i64 %28
  %31 = icmp slt i64 %30, 1
  br i1 %31, label %116, label %32

32:                                               ; preds = %27
  %33 = trunc i64 %30 to i32
  %34 = load ptr, ptr %2, align 8, !tbaa !55
  %35 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !74
  %37 = ptrtoint ptr %36 to i64
  %38 = ptrtoint ptr %34 to i64
  %39 = sub i64 %37, %38
  %40 = shl i64 %30, 32
  %41 = ashr exact i64 %40, 32
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %113, label %43

43:                                               ; preds = %32
  %44 = getelementptr inbounds i8, ptr %34, i64 %41
  store ptr %44, ptr %2, align 8, !tbaa !55
  %45 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !65
  %47 = and i32 %46, 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = load i8, ptr %44, align 1, !tbaa !46
  %51 = icmp eq i8 %50, 36
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = getelementptr inbounds i8, ptr %44, i64 1
  store ptr %53, ptr %2, align 8, !tbaa !55
  br label %54

54:                                               ; preds = %52, %49, %43
  %55 = icmp sgt i32 %33, 9
  br i1 %55, label %56, label %91

56:                                               ; preds = %54
  %57 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %34, ptr noundef nonnull dereferenceable(8) @.str.130, i64 8)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %91

59:                                               ; preds = %56
  %60 = getelementptr inbounds i8, ptr %34, i64 8
  %61 = load i8, ptr %60, align 1, !tbaa !46
  switch i8 %61, label %88 [
    i8 46, label %62
    i8 95, label %62
    i8 36, label %62
  ]

62:                                               ; preds = %59, %59, %59
  %63 = getelementptr inbounds i8, ptr %34, i64 9
  %64 = load i8, ptr %63, align 1, !tbaa !46
  %65 = icmp eq i8 %64, 78
  br i1 %65, label %66, label %88

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %68 = load i32, ptr %67, align 8, !tbaa !57
  %69 = sub i32 %68, %33
  %70 = add i32 %69, 22
  store i32 %70, ptr %67, align 8, !tbaa !57
  %71 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %72 = load i32, ptr %71, align 8, !tbaa !58
  %73 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %74 = load i32, ptr %73, align 4, !tbaa !59
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !60
  %79 = sext i32 %72 to i64
  %80 = getelementptr inbounds %struct.demangle_component, ptr %78, i64 %79
  %81 = add nsw i32 %72, 1
  store i32 %81, ptr %71, align 8, !tbaa !58
  br label %82

82:                                               ; preds = %76, %66
  %83 = phi ptr [ %80, %76 ], [ null, %66 ]
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  store i32 0, ptr %83, align 8, !tbaa !53
  %86 = getelementptr inbounds %struct.demangle_component, ptr %83, i64 0, i32 1
  store ptr @.str.131, ptr %86, align 8, !tbaa !46
  %87 = getelementptr inbounds %struct.demangle_component, ptr %83, i64 0, i32 1, i32 0, i32 1
  store i32 21, ptr %87, align 8, !tbaa !46
  br label %88

88:                                               ; preds = %59, %85, %82, %62
  %89 = phi i1 [ true, %62 ], [ false, %82 ], [ false, %85 ], [ true, %59 ]
  %90 = phi ptr [ undef, %62 ], [ null, %82 ], [ %83, %85 ], [ undef, %59 ]
  br i1 %89, label %91, label %113

91:                                               ; preds = %88, %56, %54
  %92 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %93 = load i32, ptr %92, align 8, !tbaa !58
  %94 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %95 = load i32, ptr %94, align 4, !tbaa !59
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %99 = load ptr, ptr %98, align 8, !tbaa !60
  %100 = sext i32 %93 to i64
  %101 = getelementptr inbounds %struct.demangle_component, ptr %99, i64 %100
  %102 = add nsw i32 %93, 1
  store i32 %102, ptr %92, align 8, !tbaa !58
  br label %103

103:                                              ; preds = %97, %91
  %104 = phi ptr [ %101, %97 ], [ null, %91 ]
  %105 = icmp eq ptr %104, null
  %106 = icmp eq ptr %34, null
  %107 = or i1 %106, %105
  %108 = icmp eq i32 %33, 0
  %109 = or i1 %108, %107
  br i1 %109, label %113, label %110

110:                                              ; preds = %103
  store i32 0, ptr %104, align 8, !tbaa !53
  %111 = getelementptr inbounds %struct.demangle_component, ptr %104, i64 0, i32 1
  store ptr %34, ptr %111, align 8, !tbaa !46
  %112 = getelementptr inbounds %struct.demangle_component, ptr %104, i64 0, i32 1, i32 0, i32 1
  store i32 %33, ptr %112, align 8, !tbaa !46
  br label %113

113:                                              ; preds = %88, %32, %103, %110
  %114 = phi ptr [ null, %32 ], [ %104, %110 ], [ null, %103 ], [ %90, %88 ]
  %115 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 11
  store ptr %114, ptr %115, align 8, !tbaa !75
  br label %116

116:                                              ; preds = %27, %113
  %117 = phi ptr [ %114, %113 ], [ null, %27 ]
  ret ptr %117
}

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_function_type(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = load i8, ptr %3, align 1, !tbaa !46
  %5 = icmp eq i8 %4, 70
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %7, ptr %2, align 8, !tbaa !55
  %8 = load i8, ptr %7, align 1, !tbaa !46
  %9 = icmp eq i8 %8, 89
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %11, ptr %2, align 8, !tbaa !55
  br label %12

12:                                               ; preds = %10, %6
  %13 = tail call fastcc ptr @d_bare_function_type(ptr noundef %0, i32 noundef 1)
  %14 = load ptr, ptr %2, align 8, !tbaa !55
  %15 = load i8, ptr %14, align 1, !tbaa !46
  %16 = icmp eq i8 %15, 69
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %18, ptr %2, align 8, !tbaa !55
  br label %19

19:                                               ; preds = %12, %1, %17
  %20 = phi ptr [ %13, %17 ], [ null, %1 ], [ null, %12 ]
  ret ptr %20
}

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_array_type(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = load i8, ptr %3, align 1, !tbaa !46
  %5 = icmp eq i8 %4, 65
  br i1 %5, label %6, label %79

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %7, ptr %2, align 8, !tbaa !55
  %8 = load i8, ptr %7, align 1, !tbaa !46
  %9 = icmp eq i8 %8, 95
  br i1 %9, label %52, label %10

10:                                               ; preds = %6
  %11 = add i8 %8, -48
  %12 = icmp ult i8 %11, 10
  br i1 %12, label %13, label %49

13:                                               ; preds = %10
  %14 = load ptr, ptr %2, align 8, !tbaa !55
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi ptr [ %14, %13 ], [ %17, %15 ]
  %17 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %17, ptr %2, align 8, !tbaa !55
  %18 = load i8, ptr %17, align 1, !tbaa !46
  %19 = add i8 %18, -48
  %20 = icmp ult i8 %19, 10
  br i1 %20, label %15, label %21, !llvm.loop !76

21:                                               ; preds = %15
  %22 = getelementptr inbounds i8, ptr %16, i64 1
  %23 = ptrtoint ptr %22 to i64
  %24 = ptrtoint ptr %7 to i64
  %25 = sub i64 %23, %24
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !58
  %29 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %30 = load i32, ptr %29, align 4, !tbaa !59
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !60
  %35 = sext i32 %28 to i64
  %36 = getelementptr inbounds %struct.demangle_component, ptr %34, i64 %35
  %37 = add nsw i32 %28, 1
  store i32 %37, ptr %27, align 8, !tbaa !58
  br label %38

38:                                               ; preds = %32, %21
  %39 = phi ptr [ %36, %32 ], [ null, %21 ]
  %40 = icmp eq ptr %39, null
  %41 = icmp eq i32 %26, 0
  %42 = or i1 %41, %40
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  store i32 0, ptr %39, align 8, !tbaa !53
  %44 = getelementptr inbounds %struct.demangle_component, ptr %39, i64 0, i32 1
  store ptr %7, ptr %44, align 8, !tbaa !46
  %45 = getelementptr inbounds %struct.demangle_component, ptr %39, i64 0, i32 1, i32 0, i32 1
  store i32 %26, ptr %45, align 8, !tbaa !46
  br label %46

46:                                               ; preds = %38, %43
  %47 = phi ptr [ %39, %43 ], [ null, %38 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %79, label %52

49:                                               ; preds = %10
  %50 = tail call fastcc ptr @d_expression(ptr noundef %0)
  %51 = icmp eq ptr %50, null
  br i1 %51, label %79, label %52

52:                                               ; preds = %6, %46, %49
  %53 = phi ptr [ %47, %46 ], [ %50, %49 ], [ null, %6 ]
  %54 = load ptr, ptr %2, align 8, !tbaa !55
  %55 = load i8, ptr %54, align 1, !tbaa !46
  %56 = icmp eq i8 %55, 95
  br i1 %56, label %57, label %79

57:                                               ; preds = %52
  %58 = getelementptr inbounds i8, ptr %54, i64 1
  store ptr %58, ptr %2, align 8, !tbaa !55
  %59 = tail call ptr @cplus_demangle_type(ptr noundef %0)
  %60 = icmp eq ptr %59, null
  br i1 %60, label %79, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %63 = load i32, ptr %62, align 8, !tbaa !58
  %64 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %65 = load i32, ptr %64, align 4, !tbaa !59
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !60
  %70 = sext i32 %63 to i64
  %71 = getelementptr inbounds %struct.demangle_component, ptr %69, i64 %70
  %72 = add nsw i32 %63, 1
  store i32 %72, ptr %62, align 8, !tbaa !58
  br label %73

73:                                               ; preds = %67, %61
  %74 = phi ptr [ %71, %67 ], [ null, %61 ]
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  store i32 38, ptr %74, align 8, !tbaa !53
  %77 = getelementptr inbounds %struct.demangle_component, ptr %74, i64 0, i32 1
  store ptr %53, ptr %77, align 8, !tbaa !46
  %78 = getelementptr inbounds %struct.demangle_component, ptr %74, i64 0, i32 1, i32 0, i32 1
  store ptr %59, ptr %78, align 8, !tbaa !46
  br label %79

79:                                               ; preds = %49, %46, %76, %73, %57, %52, %1
  %80 = phi ptr [ null, %1 ], [ null, %52 ], [ null, %57 ], [ %74, %76 ], [ %74, %73 ], [ null, %46 ], [ null, %49 ]
  ret ptr %80
}

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_pointer_to_member_type(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  %3 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = load i8, ptr %4, align 1, !tbaa !46
  %6 = icmp eq i8 %5, 77
  br i1 %6, label %7, label %58

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %8, ptr %3, align 8, !tbaa !55
  %9 = tail call ptr @cplus_demangle_type(ptr noundef %0)
  %10 = call fastcc ptr @d_cv_qualifiers(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %58, label %12

12:                                               ; preds = %7
  %13 = call ptr @cplus_demangle_type(ptr noundef %0)
  store ptr %13, ptr %10, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %58, label %15

15:                                               ; preds = %12
  %16 = icmp eq ptr %10, %2
  br i1 %16, label %35, label %17

17:                                               ; preds = %15
  %18 = load i32, ptr %13, align 8, !tbaa !53
  %19 = icmp eq i32 %18, 37
  br i1 %19, label %35, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %2, align 8, !tbaa !35
  %22 = icmp eq ptr %21, null
  br i1 %22, label %58, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 8
  %25 = load i32, ptr %24, align 8, !tbaa !68
  %26 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 9
  %27 = load i32, ptr %26, align 4, !tbaa !69
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !70
  %32 = sext i32 %25 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %21, ptr %33, align 8, !tbaa !35
  %34 = add nsw i32 %25, 1
  store i32 %34, ptr %24, align 8, !tbaa !68
  br label %35

35:                                               ; preds = %29, %17, %15
  %36 = load ptr, ptr %2, align 8, !tbaa !35
  %37 = icmp eq ptr %9, null
  %38 = icmp eq ptr %36, null
  %39 = or i1 %37, %38
  br i1 %39, label %58, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !58
  %43 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %44 = load i32, ptr %43, align 4, !tbaa !59
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !60
  %49 = sext i32 %42 to i64
  %50 = getelementptr inbounds %struct.demangle_component, ptr %48, i64 %49
  %51 = add nsw i32 %42, 1
  store i32 %51, ptr %41, align 8, !tbaa !58
  br label %52

52:                                               ; preds = %46, %40
  %53 = phi ptr [ %50, %46 ], [ null, %40 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  store i32 39, ptr %53, align 8, !tbaa !53
  %56 = getelementptr inbounds %struct.demangle_component, ptr %53, i64 0, i32 1
  store ptr %9, ptr %56, align 8, !tbaa !46
  %57 = getelementptr inbounds %struct.demangle_component, ptr %53, i64 0, i32 1, i32 0, i32 1
  store ptr %36, ptr %57, align 8, !tbaa !46
  br label %58

58:                                               ; preds = %23, %20, %55, %52, %35, %12, %7, %1
  %59 = phi ptr [ null, %1 ], [ null, %7 ], [ null, %12 ], [ null, %35 ], [ %53, %55 ], [ %53, %52 ], [ null, %20 ], [ null, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret ptr %59
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_template_param(ptr nocapture noundef %0) unnamed_addr #10 !prof !34 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = load i8, ptr %3, align 1, !tbaa !46
  %5 = icmp eq i8 %4, 84
  br i1 %5, label %6, label %30

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %7, ptr %2, align 8, !tbaa !55
  %8 = tail call fastcc i64 @d_compact_number(ptr noundef %0)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 10
  %12 = load i32, ptr %11, align 8, !tbaa !77
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %11, align 8, !tbaa !77
  %14 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !58
  %16 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !59
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !60
  %22 = sext i32 %15 to i64
  %23 = getelementptr inbounds %struct.demangle_component, ptr %21, i64 %22
  %24 = add nsw i32 %15, 1
  store i32 %24, ptr %14, align 8, !tbaa !58
  br label %25

25:                                               ; preds = %19, %10
  %26 = phi ptr [ %23, %19 ], [ null, %10 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  store i32 5, ptr %26, align 8, !tbaa !53
  %29 = getelementptr inbounds %struct.demangle_component, ptr %26, i64 0, i32 1
  store i64 %8, ptr %29, align 8, !tbaa !46
  br label %30

30:                                               ; preds = %28, %25, %6, %1
  %31 = phi ptr [ null, %1 ], [ null, %6 ], [ %26, %25 ], [ %26, %28 ]
  ret ptr %31
}

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_template_args(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  %3 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load i8, ptr %6, align 1, !tbaa !46
  %8 = icmp eq i8 %7, 73
  br i1 %8, label %9, label %82

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %10, ptr %5, align 8, !tbaa !55
  %11 = load i8, ptr %10, align 1, !tbaa !46
  %12 = icmp eq i8 %11, 69
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = getelementptr inbounds i8, ptr %6, i64 2
  store ptr %14, ptr %5, align 8, !tbaa !55
  %15 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !58
  %17 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !59
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !60
  %23 = sext i32 %16 to i64
  %24 = getelementptr inbounds %struct.demangle_component, ptr %22, i64 %23
  %25 = add nsw i32 %16, 1
  store i32 %25, ptr %15, align 8, !tbaa !58
  br label %26

26:                                               ; preds = %20, %13
  %27 = phi ptr [ %24, %20 ], [ null, %13 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %82, label %29

29:                                               ; preds = %26
  store i32 43, ptr %27, align 8, !tbaa !53
  %30 = getelementptr inbounds %struct.demangle_component, ptr %27, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  br label %82

31:                                               ; preds = %9
  store ptr null, ptr %2, align 8, !tbaa !35
  %32 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %33 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  br label %34

34:                                               ; preds = %77, %31
  %35 = phi ptr [ %2, %31 ], [ %78, %77 ]
  %36 = load ptr, ptr %5, align 8, !tbaa !55
  %37 = load i8, ptr %36, align 1, !tbaa !46
  switch i8 %37, label %50 [
    i8 88, label %38
    i8 76, label %46
    i8 73, label %48
  ]

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, ptr %36, i64 1
  store ptr %39, ptr %5, align 8, !tbaa !55
  %40 = tail call fastcc ptr @d_expression(ptr noundef %0)
  %41 = load ptr, ptr %5, align 8, !tbaa !55
  %42 = load i8, ptr %41, align 1, !tbaa !46
  %43 = icmp eq i8 %42, 69
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = getelementptr inbounds i8, ptr %41, i64 1
  store ptr %45, ptr %5, align 8, !tbaa !55
  br label %52

46:                                               ; preds = %34
  %47 = tail call fastcc ptr @d_expr_primary(ptr noundef %0)
  br label %52

48:                                               ; preds = %34
  %49 = tail call fastcc ptr @d_template_args(ptr noundef %0)
  br label %52

50:                                               ; preds = %34
  %51 = tail call ptr @cplus_demangle_type(ptr noundef %0)
  br label %52

52:                                               ; preds = %38, %44, %46, %48, %50
  %53 = phi ptr [ %51, %50 ], [ %49, %48 ], [ %47, %46 ], [ %40, %44 ], [ null, %38 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %77, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr %32, align 8, !tbaa !58
  %57 = load i32, ptr %33, align 4, !tbaa !59
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !60
  %62 = sext i32 %56 to i64
  %63 = getelementptr inbounds %struct.demangle_component, ptr %61, i64 %62
  %64 = add nsw i32 %56, 1
  store i32 %64, ptr %32, align 8, !tbaa !58
  br label %65

65:                                               ; preds = %59, %55
  %66 = phi ptr [ %63, %59 ], [ null, %55 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %76, label %68

68:                                               ; preds = %65
  store i32 43, ptr %66, align 8, !tbaa !53
  %69 = getelementptr inbounds %struct.demangle_component, ptr %66, i64 0, i32 1
  store ptr %53, ptr %69, align 8, !tbaa !46
  %70 = getelementptr inbounds %struct.demangle_component, ptr %66, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %70, align 8, !tbaa !46
  store ptr %66, ptr %35, align 8, !tbaa !35
  %71 = load ptr, ptr %5, align 8, !tbaa !55
  %72 = load i8, ptr %71, align 1, !tbaa !46
  %73 = icmp eq i8 %72, 69
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = getelementptr inbounds i8, ptr %71, i64 1
  store ptr %75, ptr %5, align 8, !tbaa !55
  br label %77

76:                                               ; preds = %65
  store ptr %66, ptr %35, align 8, !tbaa !35
  br label %77

77:                                               ; preds = %76, %68, %52, %74
  %78 = phi ptr [ %70, %74 ], [ %35, %52 ], [ %70, %68 ], [ %35, %76 ]
  %79 = phi i32 [ 3, %74 ], [ 1, %52 ], [ 0, %68 ], [ 1, %76 ]
  switch i32 %79, label %82 [
    i32 0, label %34
    i32 3, label %80
  ], !llvm.loop !78

80:                                               ; preds = %77
  store ptr %4, ptr %3, align 8, !tbaa !75
  %81 = load ptr, ptr %2, align 8, !tbaa !35
  br label %82

82:                                               ; preds = %77, %29, %26, %1, %80
  %83 = phi ptr [ %81, %80 ], [ null, %1 ], [ %27, %26 ], [ %27, %29 ], [ null, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  ret ptr %83
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_substitution(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #10 !prof !34 {
  %3 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = load i8, ptr %4, align 1, !tbaa !46
  %6 = icmp eq i8 %5, 83
  br i1 %6, label %7, label %149

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %8, ptr %3, align 8, !tbaa !55
  %9 = load i8, ptr %8, align 1, !tbaa !46
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds i8, ptr %4, i64 2
  store ptr %12, ptr %3, align 8, !tbaa !55
  %13 = load i8, ptr %8, align 1, !tbaa !46
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi i8 [ %13, %11 ], [ 0, %7 ]
  %16 = icmp eq i8 %15, 95
  %17 = add i8 %15, -48
  %18 = icmp ult i8 %17, 10
  %19 = add i8 %15, -65
  %20 = icmp ult i8 %19, 26
  %21 = or i1 %18, %20
  %22 = or i1 %16, %21
  br i1 %22, label %23, label %68

23:                                               ; preds = %14
  br i1 %16, label %54, label %24

24:                                               ; preds = %23, %50
  %25 = phi i32 [ %48, %50 ], [ 0, %23 ]
  %26 = phi i8 [ %49, %50 ], [ %15, %23 ]
  %27 = sext i8 %26 to i32
  %28 = add i8 %26, -48
  %29 = icmp ult i8 %28, 10
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = add i8 %26, -65
  %32 = icmp ult i8 %31, 26
  br i1 %32, label %33, label %46

33:                                               ; preds = %30, %24
  %34 = phi i32 [ -48, %24 ], [ -55, %30 ]
  %35 = mul i32 %25, 36
  %36 = add i32 %35, %34
  %37 = add i32 %36, %27
  %38 = icmp ult i32 %37, %25
  br i1 %38, label %46, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %3, align 8, !tbaa !55
  %41 = load i8, ptr %40, align 1, !tbaa !46
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds i8, ptr %40, i64 1
  store ptr %44, ptr %3, align 8, !tbaa !55
  %45 = load i8, ptr %40, align 1, !tbaa !46
  br label %46

46:                                               ; preds = %43, %39, %33, %30
  %47 = phi i1 [ false, %30 ], [ false, %33 ], [ true, %39 ], [ true, %43 ]
  %48 = phi i32 [ %25, %30 ], [ %25, %33 ], [ %37, %39 ], [ %37, %43 ]
  %49 = phi i8 [ %26, %30 ], [ %26, %33 ], [ 0, %39 ], [ %45, %43 ]
  br i1 %47, label %50, label %149

50:                                               ; preds = %46
  %51 = icmp eq i8 %49, 95
  br i1 %51, label %52, label %24, !llvm.loop !79

52:                                               ; preds = %50
  %53 = add i32 %48, 1
  br label %54

54:                                               ; preds = %52, %23
  %55 = phi i32 [ %53, %52 ], [ 0, %23 ]
  %56 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 8
  %57 = load i32, ptr %56, align 8, !tbaa !68
  %58 = icmp ult i32 %55, %57
  br i1 %58, label %59, label %149

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 10
  %61 = load i32, ptr %60, align 8, !tbaa !77
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %60, align 8, !tbaa !77
  %63 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !70
  %65 = zext i32 %55 to i64
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !35
  br label %149

68:                                               ; preds = %14
  %69 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 2
  %70 = load i32, ptr %69, align 8, !tbaa !65
  %71 = lshr i32 %70, 3
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  %74 = icmp ne i32 %1, 0
  %75 = and i1 %74, %73
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  %77 = load ptr, ptr %3, align 8, !tbaa !55
  %78 = load i8, ptr %77, align 1, !tbaa !46
  %79 = add i8 %78, -67
  %80 = icmp ult i8 %79, 2
  %81 = zext i1 %80 to i32
  br label %82

82:                                               ; preds = %76, %68
  %83 = phi i32 [ %81, %76 ], [ %72, %68 ]
  br label %88

84:                                               ; preds = %88
  %85 = add nuw nsw i64 %90, 56
  %86 = getelementptr inbounds i8, ptr @standard_subs, i64 %85
  %87 = icmp ult i64 %90, 336
  br i1 %87, label %88, label %149, !llvm.loop !80

88:                                               ; preds = %82, %84
  %89 = phi ptr [ @standard_subs, %82 ], [ %86, %84 ]
  %90 = phi i64 [ 0, %82 ], [ %85, %84 ]
  %91 = load i8, ptr %89, align 8, !tbaa !81
  %92 = icmp eq i8 %15, %91
  br i1 %92, label %93, label %84

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.d_standard_sub_info, ptr %89, i64 0, i32 5
  %95 = load ptr, ptr %94, align 8, !tbaa !83
  %96 = icmp eq ptr %95, null
  br i1 %96, label %119, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.d_standard_sub_info, ptr %89, i64 0, i32 6
  %99 = load i32, ptr %98, align 8, !tbaa !84
  %100 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %101 = load i32, ptr %100, align 8, !tbaa !58
  %102 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %103 = load i32, ptr %102, align 4, !tbaa !59
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %107 = load ptr, ptr %106, align 8, !tbaa !60
  %108 = sext i32 %101 to i64
  %109 = getelementptr inbounds %struct.demangle_component, ptr %107, i64 %108
  %110 = add nsw i32 %101, 1
  store i32 %110, ptr %100, align 8, !tbaa !58
  br label %111

111:                                              ; preds = %105, %97
  %112 = phi ptr [ %109, %105 ], [ null, %97 ]
  %113 = icmp eq ptr %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  store i32 22, ptr %112, align 8, !tbaa !53
  %115 = getelementptr inbounds %struct.demangle_component, ptr %112, i64 0, i32 1
  store ptr %95, ptr %115, align 8, !tbaa !46
  %116 = getelementptr inbounds %struct.demangle_component, ptr %112, i64 0, i32 1, i32 0, i32 1
  store i32 %99, ptr %116, align 8, !tbaa !46
  br label %117

117:                                              ; preds = %111, %114
  %118 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 11
  store ptr %112, ptr %118, align 8, !tbaa !75
  br label %119

119:                                              ; preds = %117, %93
  %120 = icmp eq i32 %83, 0
  %121 = getelementptr inbounds %struct.d_standard_sub_info, ptr %89, i64 0, i32 3
  %122 = getelementptr inbounds %struct.d_standard_sub_info, ptr %89, i64 0, i32 4
  %123 = getelementptr inbounds %struct.d_standard_sub_info, ptr %89, i64 0, i32 1
  %124 = getelementptr inbounds %struct.d_standard_sub_info, ptr %89, i64 0, i32 2
  %125 = select i1 %120, ptr %123, ptr %121
  %126 = select i1 %120, ptr %124, ptr %122
  %127 = load i32, ptr %126, align 8, !tbaa !85
  %128 = load ptr, ptr %125, align 8, !tbaa !35
  %129 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %130 = load i32, ptr %129, align 8, !tbaa !57
  %131 = add nsw i32 %130, %127
  store i32 %131, ptr %129, align 8, !tbaa !57
  %132 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %133 = load i32, ptr %132, align 8, !tbaa !58
  %134 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %135 = load i32, ptr %134, align 4, !tbaa !59
  %136 = icmp slt i32 %133, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %119
  %138 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %139 = load ptr, ptr %138, align 8, !tbaa !60
  %140 = sext i32 %133 to i64
  %141 = getelementptr inbounds %struct.demangle_component, ptr %139, i64 %140
  %142 = add nsw i32 %133, 1
  store i32 %142, ptr %132, align 8, !tbaa !58
  br label %143

143:                                              ; preds = %137, %119
  %144 = phi ptr [ %141, %137 ], [ null, %119 ]
  %145 = icmp eq ptr %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  store i32 22, ptr %144, align 8, !tbaa !53
  %147 = getelementptr inbounds %struct.demangle_component, ptr %144, i64 0, i32 1
  store ptr %128, ptr %147, align 8, !tbaa !46
  %148 = getelementptr inbounds %struct.demangle_component, ptr %144, i64 0, i32 1, i32 0, i32 1
  store i32 %127, ptr %148, align 8, !tbaa !46
  br label %149

149:                                              ; preds = %84, %46, %146, %143, %59, %54, %2
  %150 = phi ptr [ null, %2 ], [ %67, %59 ], [ null, %54 ], [ %144, %143 ], [ %144, %146 ], [ null, %46 ], [ null, %84 ]
  ret ptr %150
}

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_expression(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = load i8, ptr %3, align 1, !tbaa !46
  switch i8 %4, label %137 [
    i8 76, label %5
    i8 84, label %7
    i8 115, label %9
    i8 102, label %110
  ]

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @d_expr_primary(ptr noundef %0)
  br label %419

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @d_template_param(ptr noundef %0)
  br label %419

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !46
  switch i8 %11, label %108 [
    i8 114, label %12
    i8 112, label %86
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %13, ptr %2, align 8, !tbaa !55
  %14 = tail call ptr @cplus_demangle_type(ptr noundef %0)
  %15 = tail call fastcc ptr @d_unqualified_name(ptr noundef %0)
  %16 = load ptr, ptr %2, align 8, !tbaa !55
  %17 = load i8, ptr %16, align 1, !tbaa !46
  %18 = icmp eq i8 %17, 73
  %19 = icmp eq ptr %15, null
  br i1 %18, label %41, label %20

20:                                               ; preds = %12
  %21 = icmp eq ptr %14, null
  %22 = or i1 %21, %19
  br i1 %22, label %419, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !58
  %26 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !59
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !60
  %32 = sext i32 %25 to i64
  %33 = getelementptr inbounds %struct.demangle_component, ptr %31, i64 %32
  %34 = add nsw i32 %25, 1
  store i32 %34, ptr %24, align 8, !tbaa !58
  br label %35

35:                                               ; preds = %29, %23
  %36 = phi ptr [ %33, %29 ], [ null, %23 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %419, label %38

38:                                               ; preds = %35
  store i32 1, ptr %36, align 8, !tbaa !53
  %39 = getelementptr inbounds %struct.demangle_component, ptr %36, i64 0, i32 1
  store ptr %14, ptr %39, align 8, !tbaa !46
  %40 = getelementptr inbounds %struct.demangle_component, ptr %36, i64 0, i32 1, i32 0, i32 1
  store ptr %15, ptr %40, align 8, !tbaa !46
  br label %419

41:                                               ; preds = %12
  %42 = tail call fastcc ptr @d_template_args(ptr noundef %0)
  %43 = icmp eq ptr %42, null
  %44 = or i1 %19, %43
  br i1 %44, label %63, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %47 = load i32, ptr %46, align 8, !tbaa !58
  %48 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %49 = load i32, ptr %48, align 4, !tbaa !59
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !60
  %54 = sext i32 %47 to i64
  %55 = getelementptr inbounds %struct.demangle_component, ptr %53, i64 %54
  %56 = add nsw i32 %47, 1
  store i32 %56, ptr %46, align 8, !tbaa !58
  br label %57

57:                                               ; preds = %51, %45
  %58 = phi ptr [ %55, %51 ], [ null, %45 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  store i32 4, ptr %58, align 8, !tbaa !53
  %61 = getelementptr inbounds %struct.demangle_component, ptr %58, i64 0, i32 1
  store ptr %15, ptr %61, align 8, !tbaa !46
  %62 = getelementptr inbounds %struct.demangle_component, ptr %58, i64 0, i32 1, i32 0, i32 1
  store ptr %42, ptr %62, align 8, !tbaa !46
  br label %63

63:                                               ; preds = %41, %57, %60
  %64 = phi ptr [ null, %41 ], [ %58, %60 ], [ %58, %57 ]
  %65 = icmp eq ptr %14, null
  %66 = icmp eq ptr %64, null
  %67 = or i1 %65, %66
  br i1 %67, label %419, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %70 = load i32, ptr %69, align 8, !tbaa !58
  %71 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %72 = load i32, ptr %71, align 4, !tbaa !59
  %73 = icmp slt i32 %70, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !60
  %77 = sext i32 %70 to i64
  %78 = getelementptr inbounds %struct.demangle_component, ptr %76, i64 %77
  %79 = add nsw i32 %70, 1
  store i32 %79, ptr %69, align 8, !tbaa !58
  br label %80

80:                                               ; preds = %74, %68
  %81 = phi ptr [ %78, %74 ], [ null, %68 ]
  %82 = icmp eq ptr %81, null
  br i1 %82, label %419, label %83

83:                                               ; preds = %80
  store i32 1, ptr %81, align 8, !tbaa !53
  %84 = getelementptr inbounds %struct.demangle_component, ptr %81, i64 0, i32 1
  store ptr %14, ptr %84, align 8, !tbaa !46
  %85 = getelementptr inbounds %struct.demangle_component, ptr %81, i64 0, i32 1, i32 0, i32 1
  store ptr %64, ptr %85, align 8, !tbaa !46
  br label %419

86:                                               ; preds = %9
  %87 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %87, ptr %2, align 8, !tbaa !55
  %88 = tail call fastcc ptr @d_expression(ptr noundef %0)
  %89 = icmp eq ptr %88, null
  br i1 %89, label %419, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %92 = load i32, ptr %91, align 8, !tbaa !58
  %93 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %94 = load i32, ptr %93, align 4, !tbaa !59
  %95 = icmp slt i32 %92, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !60
  %99 = sext i32 %92 to i64
  %100 = getelementptr inbounds %struct.demangle_component, ptr %98, i64 %99
  %101 = add nsw i32 %92, 1
  store i32 %101, ptr %91, align 8, !tbaa !58
  br label %102

102:                                              ; preds = %96, %90
  %103 = phi ptr [ %100, %96 ], [ null, %90 ]
  %104 = icmp eq ptr %103, null
  br i1 %104, label %419, label %105

105:                                              ; preds = %102
  store i32 65, ptr %103, align 8, !tbaa !53
  %106 = getelementptr inbounds %struct.demangle_component, ptr %103, i64 0, i32 1
  store ptr %88, ptr %106, align 8, !tbaa !46
  %107 = getelementptr inbounds %struct.demangle_component, ptr %103, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %107, align 8, !tbaa !46
  br label %419

108:                                              ; preds = %9
  %109 = icmp eq i8 %4, 102
  br i1 %109, label %110, label %137

110:                                              ; preds = %1, %108
  %111 = getelementptr inbounds i8, ptr %3, i64 1
  %112 = load i8, ptr %111, align 1, !tbaa !46
  %113 = icmp eq i8 %112, 112
  br i1 %113, label %114, label %137

114:                                              ; preds = %110
  %115 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %115, ptr %2, align 8, !tbaa !55
  %116 = tail call fastcc i64 @d_compact_number(ptr noundef %0)
  %117 = and i64 %116, 2147483648
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %419

119:                                              ; preds = %114
  %120 = and i64 %116, 2147483647
  %121 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %122 = load i32, ptr %121, align 8, !tbaa !58
  %123 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %124 = load i32, ptr %123, align 4, !tbaa !59
  %125 = icmp slt i32 %122, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %128 = load ptr, ptr %127, align 8, !tbaa !60
  %129 = sext i32 %122 to i64
  %130 = getelementptr inbounds %struct.demangle_component, ptr %128, i64 %129
  %131 = add nsw i32 %122, 1
  store i32 %131, ptr %121, align 8, !tbaa !58
  br label %132

132:                                              ; preds = %126, %119
  %133 = phi ptr [ %130, %126 ], [ null, %119 ]
  %134 = icmp eq ptr %133, null
  br i1 %134, label %419, label %135

135:                                              ; preds = %132
  store i32 6, ptr %133, align 8, !tbaa !53
  %136 = getelementptr inbounds %struct.demangle_component, ptr %133, i64 0, i32 1
  store i64 %120, ptr %136, align 8, !tbaa !46
  br label %419

137:                                              ; preds = %110, %108, %1
  %138 = add i8 %4, -48
  %139 = icmp ult i8 %138, 10
  br i1 %139, label %146, label %140

140:                                              ; preds = %137
  %141 = icmp eq i8 %4, 111
  br i1 %141, label %142, label %178

142:                                              ; preds = %140
  %143 = getelementptr inbounds i8, ptr %3, i64 1
  %144 = load i8, ptr %143, align 1, !tbaa !46
  %145 = icmp eq i8 %144, 110
  br i1 %145, label %146, label %178

146:                                              ; preds = %137, %142
  %147 = icmp eq i8 %4, 111
  br i1 %147, label %148, label %150

148:                                              ; preds = %146
  %149 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %149, ptr %2, align 8, !tbaa !55
  br label %150

150:                                              ; preds = %148, %146
  %151 = tail call fastcc ptr @d_unqualified_name(ptr noundef %0)
  %152 = icmp eq ptr %151, null
  br i1 %152, label %419, label %153

153:                                              ; preds = %150
  %154 = load ptr, ptr %2, align 8, !tbaa !55
  %155 = load i8, ptr %154, align 1, !tbaa !46
  %156 = icmp eq i8 %155, 73
  br i1 %156, label %157, label %419

157:                                              ; preds = %153
  %158 = tail call fastcc ptr @d_template_args(ptr noundef %0)
  %159 = icmp eq ptr %158, null
  br i1 %159, label %419, label %160

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %162 = load i32, ptr %161, align 8, !tbaa !58
  %163 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %164 = load i32, ptr %163, align 4, !tbaa !59
  %165 = icmp slt i32 %162, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %168 = load ptr, ptr %167, align 8, !tbaa !60
  %169 = sext i32 %162 to i64
  %170 = getelementptr inbounds %struct.demangle_component, ptr %168, i64 %169
  %171 = add nsw i32 %162, 1
  store i32 %171, ptr %161, align 8, !tbaa !58
  br label %172

172:                                              ; preds = %166, %160
  %173 = phi ptr [ %170, %166 ], [ null, %160 ]
  %174 = icmp eq ptr %173, null
  br i1 %174, label %419, label %175

175:                                              ; preds = %172
  store i32 4, ptr %173, align 8, !tbaa !53
  %176 = getelementptr inbounds %struct.demangle_component, ptr %173, i64 0, i32 1
  store ptr %151, ptr %176, align 8, !tbaa !46
  %177 = getelementptr inbounds %struct.demangle_component, ptr %173, i64 0, i32 1, i32 0, i32 1
  store ptr %158, ptr %177, align 8, !tbaa !46
  br label %419

178:                                              ; preds = %142, %140
  %179 = tail call fastcc ptr @d_operator_name(ptr noundef %0)
  %180 = icmp eq ptr %179, null
  br i1 %180, label %419, label %181

181:                                              ; preds = %178
  %182 = load i32, ptr %179, align 8, !tbaa !53
  switch i32 %182, label %419 [
    i32 44, label %183
    i32 45, label %224
    i32 46, label %227
  ]

183:                                              ; preds = %181
  %184 = getelementptr inbounds %struct.demangle_component, ptr %179, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !46
  %186 = getelementptr inbounds %struct.demangle_operator_info, ptr %185, i64 0, i32 2
  %187 = load i32, ptr %186, align 8, !tbaa !86
  %188 = add nsw i32 %187, -2
  %189 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %190 = load i32, ptr %189, align 8, !tbaa !57
  %191 = add nsw i32 %188, %190
  store i32 %191, ptr %189, align 8, !tbaa !57
  %192 = getelementptr inbounds %struct.demangle_component, ptr %179, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !46
  %194 = load ptr, ptr %193, align 8, !tbaa !88
  %195 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %194, ptr noundef nonnull dereferenceable(3) @.str.92)
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %218

197:                                              ; preds = %183
  %198 = tail call ptr @cplus_demangle_type(ptr noundef %0)
  %199 = icmp eq ptr %198, null
  br i1 %199, label %419, label %200

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %202 = load i32, ptr %201, align 8, !tbaa !58
  %203 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %204 = load i32, ptr %203, align 4, !tbaa !59
  %205 = icmp slt i32 %202, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %200
  %207 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %208 = load ptr, ptr %207, align 8, !tbaa !60
  %209 = sext i32 %202 to i64
  %210 = getelementptr inbounds %struct.demangle_component, ptr %208, i64 %209
  %211 = add nsw i32 %202, 1
  store i32 %211, ptr %201, align 8, !tbaa !58
  br label %212

212:                                              ; preds = %206, %200
  %213 = phi ptr [ %210, %206 ], [ null, %200 ]
  %214 = icmp eq ptr %213, null
  br i1 %214, label %419, label %215

215:                                              ; preds = %212
  store i32 47, ptr %213, align 8, !tbaa !53
  %216 = getelementptr inbounds %struct.demangle_component, ptr %213, i64 0, i32 1
  store ptr %179, ptr %216, align 8, !tbaa !46
  %217 = getelementptr inbounds %struct.demangle_component, ptr %213, i64 0, i32 1, i32 0, i32 1
  store ptr %198, ptr %217, align 8, !tbaa !46
  br label %419

218:                                              ; preds = %183
  switch i32 %182, label %419 [
    i32 44, label %219
    i32 45, label %224
    i32 46, label %227
  ]

219:                                              ; preds = %218
  %220 = getelementptr inbounds %struct.demangle_component, ptr %179, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !46
  %222 = getelementptr inbounds %struct.demangle_operator_info, ptr %221, i64 0, i32 3
  %223 = load i32, ptr %222, align 4, !tbaa !89
  br label %227

224:                                              ; preds = %181, %218
  %225 = getelementptr inbounds %struct.demangle_component, ptr %179, i64 0, i32 1
  %226 = load i32, ptr %225, align 8, !tbaa !46
  br label %227

227:                                              ; preds = %181, %218, %224, %219
  %228 = phi i32 [ %226, %224 ], [ %223, %219 ], [ 1, %218 ], [ 1, %181 ]
  switch i32 %228, label %419 [
    i32 1, label %229
    i32 2, label %261
    i32 3, label %350
  ]

229:                                              ; preds = %227
  %230 = icmp eq i32 %182, 46
  br i1 %230, label %231, label %238

231:                                              ; preds = %229
  %232 = load ptr, ptr %2, align 8, !tbaa !55
  %233 = load i8, ptr %232, align 1, !tbaa !46
  %234 = icmp eq i8 %233, 95
  br i1 %234, label %235, label %238

235:                                              ; preds = %231
  %236 = getelementptr inbounds i8, ptr %232, i64 1
  store ptr %236, ptr %2, align 8, !tbaa !55
  %237 = tail call fastcc ptr @d_exprlist(ptr noundef %0)
  br label %240

238:                                              ; preds = %231, %229
  %239 = tail call fastcc ptr @d_expression(ptr noundef %0)
  br label %240

240:                                              ; preds = %238, %235
  %241 = phi ptr [ %237, %235 ], [ %239, %238 ]
  %242 = icmp eq ptr %241, null
  br i1 %242, label %419, label %243

243:                                              ; preds = %240
  %244 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %245 = load i32, ptr %244, align 8, !tbaa !58
  %246 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %247 = load i32, ptr %246, align 4, !tbaa !59
  %248 = icmp slt i32 %245, %247
  br i1 %248, label %249, label %255

249:                                              ; preds = %243
  %250 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %251 = load ptr, ptr %250, align 8, !tbaa !60
  %252 = sext i32 %245 to i64
  %253 = getelementptr inbounds %struct.demangle_component, ptr %251, i64 %252
  %254 = add nsw i32 %245, 1
  store i32 %254, ptr %244, align 8, !tbaa !58
  br label %255

255:                                              ; preds = %249, %243
  %256 = phi ptr [ %253, %249 ], [ null, %243 ]
  %257 = icmp eq ptr %256, null
  br i1 %257, label %419, label %258

258:                                              ; preds = %255
  store i32 47, ptr %256, align 8, !tbaa !53
  %259 = getelementptr inbounds %struct.demangle_component, ptr %256, i64 0, i32 1
  store ptr %179, ptr %259, align 8, !tbaa !46
  %260 = getelementptr inbounds %struct.demangle_component, ptr %256, i64 0, i32 1, i32 0, i32 1
  store ptr %241, ptr %260, align 8, !tbaa !46
  br label %419

261:                                              ; preds = %227
  %262 = getelementptr inbounds %struct.demangle_component, ptr %179, i64 0, i32 1
  %263 = load ptr, ptr %262, align 8, !tbaa !46
  %264 = load ptr, ptr %263, align 8, !tbaa !88
  %265 = tail call fastcc ptr @d_expression(ptr noundef %0)
  %266 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %264, ptr noundef nonnull dereferenceable(3) @.str.9)
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %261
  %269 = tail call fastcc ptr @d_exprlist(ptr noundef %0)
  br label %306

270:                                              ; preds = %261
  %271 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %264, ptr noundef nonnull dereferenceable(3) @.str.23)
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %276, label %273

273:                                              ; preds = %270
  %274 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %264, ptr noundef nonnull dereferenceable(3) @.str.80)
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %304

276:                                              ; preds = %273, %270
  %277 = tail call fastcc ptr @d_unqualified_name(ptr noundef %0)
  %278 = load ptr, ptr %2, align 8, !tbaa !55
  %279 = load i8, ptr %278, align 1, !tbaa !46
  %280 = icmp eq i8 %279, 73
  br i1 %280, label %281, label %306

281:                                              ; preds = %276
  %282 = tail call fastcc ptr @d_template_args(ptr noundef %0)
  %283 = icmp eq ptr %277, null
  %284 = icmp eq ptr %282, null
  %285 = or i1 %283, %284
  br i1 %285, label %306, label %286

286:                                              ; preds = %281
  %287 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %288 = load i32, ptr %287, align 8, !tbaa !58
  %289 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %290 = load i32, ptr %289, align 4, !tbaa !59
  %291 = icmp slt i32 %288, %290
  br i1 %291, label %292, label %298

292:                                              ; preds = %286
  %293 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %294 = load ptr, ptr %293, align 8, !tbaa !60
  %295 = sext i32 %288 to i64
  %296 = getelementptr inbounds %struct.demangle_component, ptr %294, i64 %295
  %297 = add nsw i32 %288, 1
  store i32 %297, ptr %287, align 8, !tbaa !58
  br label %298

298:                                              ; preds = %292, %286
  %299 = phi ptr [ %296, %292 ], [ null, %286 ]
  %300 = icmp eq ptr %299, null
  br i1 %300, label %306, label %301

301:                                              ; preds = %298
  store i32 4, ptr %299, align 8, !tbaa !53
  %302 = getelementptr inbounds %struct.demangle_component, ptr %299, i64 0, i32 1
  store ptr %277, ptr %302, align 8, !tbaa !46
  %303 = getelementptr inbounds %struct.demangle_component, ptr %299, i64 0, i32 1, i32 0, i32 1
  store ptr %282, ptr %303, align 8, !tbaa !46
  br label %306

304:                                              ; preds = %273
  %305 = tail call fastcc ptr @d_expression(ptr noundef %0)
  br label %306

306:                                              ; preds = %301, %298, %281, %304, %276, %268
  %307 = phi ptr [ %305, %304 ], [ %277, %276 ], [ %269, %268 ], [ null, %281 ], [ %299, %301 ], [ %299, %298 ]
  %308 = icmp eq ptr %265, null
  %309 = icmp eq ptr %307, null
  %310 = or i1 %308, %309
  br i1 %310, label %329, label %311

311:                                              ; preds = %306
  %312 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %313 = load i32, ptr %312, align 8, !tbaa !58
  %314 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %315 = load i32, ptr %314, align 4, !tbaa !59
  %316 = icmp slt i32 %313, %315
  br i1 %316, label %317, label %323

317:                                              ; preds = %311
  %318 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %319 = load ptr, ptr %318, align 8, !tbaa !60
  %320 = sext i32 %313 to i64
  %321 = getelementptr inbounds %struct.demangle_component, ptr %319, i64 %320
  %322 = add nsw i32 %313, 1
  store i32 %322, ptr %312, align 8, !tbaa !58
  br label %323

323:                                              ; preds = %317, %311
  %324 = phi ptr [ %321, %317 ], [ null, %311 ]
  %325 = icmp eq ptr %324, null
  br i1 %325, label %329, label %326

326:                                              ; preds = %323
  store i32 49, ptr %324, align 8, !tbaa !53
  %327 = getelementptr inbounds %struct.demangle_component, ptr %324, i64 0, i32 1
  store ptr %265, ptr %327, align 8, !tbaa !46
  %328 = getelementptr inbounds %struct.demangle_component, ptr %324, i64 0, i32 1, i32 0, i32 1
  store ptr %307, ptr %328, align 8, !tbaa !46
  br label %329

329:                                              ; preds = %306, %323, %326
  %330 = phi ptr [ null, %306 ], [ %324, %326 ], [ %324, %323 ]
  %331 = icmp eq ptr %330, null
  br i1 %331, label %419, label %332

332:                                              ; preds = %329
  %333 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %334 = load i32, ptr %333, align 8, !tbaa !58
  %335 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %336 = load i32, ptr %335, align 4, !tbaa !59
  %337 = icmp slt i32 %334, %336
  br i1 %337, label %338, label %344

338:                                              ; preds = %332
  %339 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %340 = load ptr, ptr %339, align 8, !tbaa !60
  %341 = sext i32 %334 to i64
  %342 = getelementptr inbounds %struct.demangle_component, ptr %340, i64 %341
  %343 = add nsw i32 %334, 1
  store i32 %343, ptr %333, align 8, !tbaa !58
  br label %344

344:                                              ; preds = %338, %332
  %345 = phi ptr [ %342, %338 ], [ null, %332 ]
  %346 = icmp eq ptr %345, null
  br i1 %346, label %419, label %347

347:                                              ; preds = %344
  store i32 48, ptr %345, align 8, !tbaa !53
  %348 = getelementptr inbounds %struct.demangle_component, ptr %345, i64 0, i32 1
  store ptr %179, ptr %348, align 8, !tbaa !46
  %349 = getelementptr inbounds %struct.demangle_component, ptr %345, i64 0, i32 1, i32 0, i32 1
  store ptr %330, ptr %349, align 8, !tbaa !46
  br label %419

350:                                              ; preds = %227
  %351 = tail call fastcc ptr @d_expression(ptr noundef %0)
  %352 = tail call fastcc ptr @d_expression(ptr noundef %0)
  %353 = tail call fastcc ptr @d_expression(ptr noundef %0)
  %354 = icmp eq ptr %352, null
  %355 = icmp eq ptr %353, null
  %356 = or i1 %354, %355
  br i1 %356, label %375, label %357

357:                                              ; preds = %350
  %358 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %359 = load i32, ptr %358, align 8, !tbaa !58
  %360 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %361 = load i32, ptr %360, align 4, !tbaa !59
  %362 = icmp slt i32 %359, %361
  br i1 %362, label %363, label %369

363:                                              ; preds = %357
  %364 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %365 = load ptr, ptr %364, align 8, !tbaa !60
  %366 = sext i32 %359 to i64
  %367 = getelementptr inbounds %struct.demangle_component, ptr %365, i64 %366
  %368 = add nsw i32 %359, 1
  store i32 %368, ptr %358, align 8, !tbaa !58
  br label %369

369:                                              ; preds = %363, %357
  %370 = phi ptr [ %367, %363 ], [ null, %357 ]
  %371 = icmp eq ptr %370, null
  br i1 %371, label %375, label %372

372:                                              ; preds = %369
  store i32 52, ptr %370, align 8, !tbaa !53
  %373 = getelementptr inbounds %struct.demangle_component, ptr %370, i64 0, i32 1
  store ptr %352, ptr %373, align 8, !tbaa !46
  %374 = getelementptr inbounds %struct.demangle_component, ptr %370, i64 0, i32 1, i32 0, i32 1
  store ptr %353, ptr %374, align 8, !tbaa !46
  br label %375

375:                                              ; preds = %350, %369, %372
  %376 = phi ptr [ null, %350 ], [ %370, %372 ], [ %370, %369 ]
  %377 = icmp eq ptr %351, null
  %378 = icmp eq ptr %376, null
  %379 = or i1 %377, %378
  br i1 %379, label %398, label %380

380:                                              ; preds = %375
  %381 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %382 = load i32, ptr %381, align 8, !tbaa !58
  %383 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %384 = load i32, ptr %383, align 4, !tbaa !59
  %385 = icmp slt i32 %382, %384
  br i1 %385, label %386, label %392

386:                                              ; preds = %380
  %387 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %388 = load ptr, ptr %387, align 8, !tbaa !60
  %389 = sext i32 %382 to i64
  %390 = getelementptr inbounds %struct.demangle_component, ptr %388, i64 %389
  %391 = add nsw i32 %382, 1
  store i32 %391, ptr %381, align 8, !tbaa !58
  br label %392

392:                                              ; preds = %386, %380
  %393 = phi ptr [ %390, %386 ], [ null, %380 ]
  %394 = icmp eq ptr %393, null
  br i1 %394, label %398, label %395

395:                                              ; preds = %392
  store i32 51, ptr %393, align 8, !tbaa !53
  %396 = getelementptr inbounds %struct.demangle_component, ptr %393, i64 0, i32 1
  store ptr %351, ptr %396, align 8, !tbaa !46
  %397 = getelementptr inbounds %struct.demangle_component, ptr %393, i64 0, i32 1, i32 0, i32 1
  store ptr %376, ptr %397, align 8, !tbaa !46
  br label %398

398:                                              ; preds = %375, %392, %395
  %399 = phi ptr [ null, %375 ], [ %393, %395 ], [ %393, %392 ]
  %400 = icmp eq ptr %399, null
  br i1 %400, label %419, label %401

401:                                              ; preds = %398
  %402 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %403 = load i32, ptr %402, align 8, !tbaa !58
  %404 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %405 = load i32, ptr %404, align 4, !tbaa !59
  %406 = icmp slt i32 %403, %405
  br i1 %406, label %407, label %413

407:                                              ; preds = %401
  %408 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %409 = load ptr, ptr %408, align 8, !tbaa !60
  %410 = sext i32 %403 to i64
  %411 = getelementptr inbounds %struct.demangle_component, ptr %409, i64 %410
  %412 = add nsw i32 %403, 1
  store i32 %412, ptr %402, align 8, !tbaa !58
  br label %413

413:                                              ; preds = %407, %401
  %414 = phi ptr [ %411, %407 ], [ null, %401 ]
  %415 = icmp eq ptr %414, null
  br i1 %415, label %419, label %416

416:                                              ; preds = %413
  store i32 50, ptr %414, align 8, !tbaa !53
  %417 = getelementptr inbounds %struct.demangle_component, ptr %414, i64 0, i32 1
  store ptr %179, ptr %417, align 8, !tbaa !46
  %418 = getelementptr inbounds %struct.demangle_component, ptr %414, i64 0, i32 1, i32 0, i32 1
  store ptr %399, ptr %418, align 8, !tbaa !46
  br label %419

419:                                              ; preds = %181, %227, %416, %413, %398, %347, %344, %329, %258, %255, %240, %215, %212, %197, %175, %172, %157, %135, %132, %105, %102, %86, %83, %80, %63, %38, %35, %20, %178, %218, %150, %153, %114, %7, %5
  %420 = phi ptr [ %6, %5 ], [ %8, %7 ], [ null, %114 ], [ null, %150 ], [ %151, %153 ], [ null, %178 ], [ null, %218 ], [ null, %20 ], [ %36, %38 ], [ %36, %35 ], [ null, %63 ], [ %81, %83 ], [ %81, %80 ], [ null, %86 ], [ %103, %105 ], [ %103, %102 ], [ %133, %132 ], [ %133, %135 ], [ null, %157 ], [ %173, %175 ], [ %173, %172 ], [ null, %197 ], [ %213, %215 ], [ %213, %212 ], [ null, %240 ], [ %256, %258 ], [ %256, %255 ], [ null, %329 ], [ %345, %347 ], [ %345, %344 ], [ null, %398 ], [ %414, %416 ], [ %414, %413 ], [ null, %227 ], [ null, %181 ]
  ret ptr %420
}

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_vector_type(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = load i8, ptr %3, align 1, !tbaa !46
  %5 = icmp eq i8 %4, 95
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %7, ptr %2, align 8, !tbaa !55
  %8 = tail call fastcc ptr @d_expression(ptr noundef %0)
  br label %53

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !58
  %12 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !59
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !60
  %18 = sext i32 %11 to i64
  %19 = getelementptr inbounds %struct.demangle_component, ptr %17, i64 %18
  %20 = add nsw i32 %11, 1
  store i32 %20, ptr %10, align 8, !tbaa !58
  br label %21

21:                                               ; preds = %15, %9
  %22 = phi ptr [ %19, %15 ], [ null, %9 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %53, label %24

24:                                               ; preds = %21
  store i32 58, ptr %22, align 8, !tbaa !53
  %25 = load i8, ptr %3, align 1, !tbaa !46
  %26 = icmp eq i8 %25, 110
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %28, ptr %2, align 8, !tbaa !55
  %29 = load i8, ptr %28, align 1, !tbaa !46
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i8 [ %29, %27 ], [ %25, %24 ]
  %32 = add i8 %31, -48
  %33 = icmp ult i8 %32, 10
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load ptr, ptr %2, align 8, !tbaa !55
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi ptr [ %35, %34 ], [ %44, %36 ]
  %38 = phi i64 [ 0, %34 ], [ %43, %36 ]
  %39 = phi i8 [ %31, %34 ], [ %45, %36 ]
  %40 = mul nsw i64 %38, 10
  %41 = zext nneg i8 %39 to i64
  %42 = add nsw i64 %41, -48
  %43 = add i64 %42, %40
  %44 = getelementptr inbounds i8, ptr %37, i64 1
  store ptr %44, ptr %2, align 8, !tbaa !55
  %45 = load i8, ptr %44, align 1, !tbaa !46
  %46 = add i8 %45, -48
  %47 = icmp ult i8 %46, 10
  br i1 %47, label %36, label %48, !llvm.loop !61

48:                                               ; preds = %36, %30
  %49 = phi i64 [ 0, %30 ], [ %43, %36 ]
  %50 = sub nsw i64 0, %49
  %51 = select i1 %26, i64 %50, i64 %49
  %52 = getelementptr inbounds %struct.demangle_component, ptr %22, i64 0, i32 1
  store i64 %51, ptr %52, align 8, !tbaa !46
  br label %53

53:                                               ; preds = %48, %21, %6
  %54 = phi ptr [ %8, %6 ], [ %22, %21 ], [ %22, %48 ]
  %55 = icmp eq ptr %54, null
  br i1 %55, label %82, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr %2, align 8, !tbaa !55
  %58 = load i8, ptr %57, align 1, !tbaa !46
  %59 = icmp eq i8 %58, 95
  br i1 %59, label %60, label %82

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, ptr %57, i64 1
  store ptr %61, ptr %2, align 8, !tbaa !55
  %62 = tail call ptr @cplus_demangle_type(ptr noundef %0)
  %63 = icmp eq ptr %62, null
  br i1 %63, label %82, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %66 = load i32, ptr %65, align 8, !tbaa !58
  %67 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %68 = load i32, ptr %67, align 4, !tbaa !59
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !60
  %73 = sext i32 %66 to i64
  %74 = getelementptr inbounds %struct.demangle_component, ptr %72, i64 %73
  %75 = add nsw i32 %66, 1
  store i32 %75, ptr %65, align 8, !tbaa !58
  br label %76

76:                                               ; preds = %70, %64
  %77 = phi ptr [ %74, %70 ], [ null, %64 ]
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  store i32 41, ptr %77, align 8, !tbaa !53
  %80 = getelementptr inbounds %struct.demangle_component, ptr %77, i64 0, i32 1
  store ptr %54, ptr %80, align 8, !tbaa !46
  %81 = getelementptr inbounds %struct.demangle_component, ptr %77, i64 0, i32 1, i32 0, i32 1
  store ptr %62, ptr %81, align 8, !tbaa !46
  br label %82

82:                                               ; preds = %79, %76, %60, %56, %53
  %83 = phi ptr [ null, %53 ], [ null, %56 ], [ null, %60 ], [ %77, %79 ], [ %77, %76 ]
  ret ptr %83
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @cplus_demangle_print_callback(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #12 !prof !34 {
  %5 = alloca %struct.d_print_info, align 8
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %5) #27
  store i32 %0, ptr %5, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.d_print_info, ptr %5, i64 0, i32 2
  store i64 0, ptr %6, align 8, !tbaa !92
  %7 = getelementptr inbounds %struct.d_print_info, ptr %5, i64 0, i32 3
  store i8 0, ptr %7, align 8, !tbaa !93
  %8 = getelementptr inbounds %struct.d_print_info, ptr %5, i64 0, i32 6
  %9 = getelementptr inbounds %struct.d_print_info, ptr %5, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store ptr %2, ptr %9, align 8, !tbaa !94
  %10 = getelementptr inbounds %struct.d_print_info, ptr %5, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !95
  %11 = getelementptr inbounds %struct.d_print_info, ptr %5, i64 0, i32 8
  store i32 0, ptr %11, align 8, !tbaa !96
  call fastcc void @d_print_comp(ptr noundef nonnull %5, ptr noundef %1)
  %12 = getelementptr inbounds %struct.d_print_info, ptr %5, i64 0, i32 1
  %13 = load i64, ptr %6, align 8, !tbaa !92
  %14 = getelementptr inbounds %struct.d_print_info, ptr %5, i64 0, i32 1, i64 %13
  store i8 0, ptr %14, align 1, !tbaa !46
  %15 = load ptr, ptr %9, align 8, !tbaa !94
  %16 = load i64, ptr %6, align 8, !tbaa !92
  %17 = load ptr, ptr %10, align 8, !tbaa !95
  call void %15(ptr noundef nonnull %12, i64 noundef %16, ptr noundef %17) #27
  store i64 0, ptr %6, align 8, !tbaa !92
  %18 = load i32, ptr %11, align 8, !tbaa !96
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %5) #27
  ret i32 %20
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @d_print_comp(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !34 {
  %3 = alloca [25 x i8], align 16
  %4 = alloca [25 x i8], align 16
  %5 = alloca [25 x i8], align 16
  %6 = alloca [25 x i8], align 16
  %7 = alloca [4 x %struct.d_print_mod], align 16
  %8 = alloca %struct.d_print_template, align 8
  %9 = alloca %struct.d_print_mod, align 8
  %10 = alloca %struct.d_print_mod, align 8
  %11 = alloca [4 x %struct.d_print_mod], align 16
  %12 = alloca %struct.d_print_mod, align 8
  br label %13

13:                                               ; preds = %2152, %2132, %1912, %1909, %1859, %1340, %994, %908, %858, %838, %818, %798, %778, %758, %738, %718, %698, %678, %658, %613, %593, %569, %554, %241, %2
  %14 = phi ptr [ %1, %2 ], [ %243, %241 ], [ %556, %554 ], [ %575, %569 ], [ %595, %593 ], [ %615, %613 ], [ %660, %658 ], [ %680, %678 ], [ %700, %698 ], [ %720, %718 ], [ %740, %738 ], [ %760, %758 ], [ %780, %778 ], [ %800, %798 ], [ %820, %818 ], [ %840, %838 ], [ %860, %858 ], [ %910, %908 ], [ %996, %994 ], [ %1342, %1340 ], [ %1861, %1859 ], [ %1911, %1909 ], [ %1916, %1912 ], [ %2134, %2132 ], [ %2154, %2152 ]
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 8
  br i1 %15, label %17, label %18

17:                                               ; preds = %13
  store i32 1, ptr %16, align 8, !tbaa !96
  br label %551

18:                                               ; preds = %13
  %19 = load i32, ptr %16, align 8, !tbaa !96
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %551

21:                                               ; preds = %18
  %22 = load i32, ptr %14, align 8, !tbaa !53
  switch i32 %22, label %2309 [
    i32 0, label %161
    i32 1, label %196
    i32 2, label %196
    i32 3, label %244
    i32 4, label %361
    i32 5, label %477
    i32 7, label %554
    i32 8, label %557
    i32 9, label %155
    i32 10, label %149
    i32 11, label %143
    i32 12, label %137
    i32 13, label %131
    i32 14, label %125
    i32 15, label %119
    i32 16, label %113
    i32 17, label %107
    i32 18, label %101
    i32 19, label %95
    i32 20, label %89
    i32 21, label %83
    i32 22, label %861
    i32 23, label %891
    i32 24, label %891
    i32 25, label %891
    i32 26, label %914
    i32 27, label %914
    i32 28, label %914
    i32 29, label %914
    i32 30, label %914
    i32 31, label %914
    i32 32, label %914
    i32 33, label %914
    i32 34, label %914
    i32 35, label %929
    i32 36, label %994
    i32 37, label %997
    i32 38, label %1049
    i32 39, label %1102
    i32 41, label %1102
    i32 40, label %1117
    i32 42, label %1210
    i32 43, label %1210
    i32 44, label %77
    i32 45, label %71
    i32 46, label %65
    i32 47, label %1361
    i32 48, label %1402
    i32 49, label %1525
    i32 50, label %1526
    i32 51, label %1575
    i32 52, label %1575
    i32 53, label %1576
    i32 54, label %1576
    i32 58, label %1862
    i32 55, label %59
    i32 56, label %1912
    i32 57, label %1917
    i32 59, label %53
    i32 65, label %1973
    i32 6, label %47
    i32 60, label %41
    i32 61, label %35
    i32 62, label %29
    i32 64, label %23
  ]

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %25 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %26 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %27 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %28 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %2245

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %31 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %32 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %33 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %34 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %2155

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %37 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %38 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %39 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %40 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %2135

41:                                               ; preds = %21
  %42 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %43 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %44 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %45 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %46 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %2115

47:                                               ; preds = %21
  %48 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %49 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %50 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %51 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %52 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %2051

53:                                               ; preds = %21
  %54 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %55 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %56 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %57 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %58 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %1937

59:                                               ; preds = %21
  %60 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %61 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %62 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %63 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %64 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %1892

65:                                               ; preds = %21
  %66 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %67 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %68 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %69 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %70 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %1343

71:                                               ; preds = %21
  %72 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %73 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %74 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %75 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %76 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %1323

77:                                               ; preds = %21
  %78 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %79 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %80 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %81 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %82 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %1250

83:                                               ; preds = %21
  %84 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %85 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %86 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %87 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %88 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %841

89:                                               ; preds = %21
  %90 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %91 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %92 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %93 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %94 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %821

95:                                               ; preds = %21
  %96 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %97 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %98 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %99 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %100 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %801

101:                                              ; preds = %21
  %102 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %103 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %104 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %105 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %106 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %781

107:                                              ; preds = %21
  %108 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %109 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %110 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %111 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %112 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %761

113:                                              ; preds = %21
  %114 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %115 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %116 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %117 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %118 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %741

119:                                              ; preds = %21
  %120 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %121 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %122 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %123 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %124 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %721

125:                                              ; preds = %21
  %126 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %127 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %128 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %129 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %130 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %701

131:                                              ; preds = %21
  %132 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %133 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %134 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %135 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %136 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %681

137:                                              ; preds = %21
  %138 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %139 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %140 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %141 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %142 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %661

143:                                              ; preds = %21
  %144 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %145 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %146 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %147 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %148 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %616

149:                                              ; preds = %21
  %150 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %151 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %152 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %153 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %154 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %596

155:                                              ; preds = %21
  %156 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %157 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %158 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %159 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %160 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %576

161:                                              ; preds = %21
  %162 = load i32, ptr %0, align 8, !tbaa !90
  %163 = and i32 %162, 4
  %164 = icmp eq i32 %163, 0
  %165 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !46
  %167 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %168 = load i32, ptr %167, align 8, !tbaa !46
  br i1 %164, label %169, label %195

169:                                              ; preds = %161
  %170 = sext i32 %168 to i64
  %171 = icmp eq i32 %168, 0
  br i1 %171, label %551, label %172

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %174 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %175 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %176 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %177 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %178

178:                                              ; preds = %172, %189
  %179 = phi i64 [ 0, %172 ], [ %193, %189 ]
  %180 = getelementptr inbounds i8, ptr %166, i64 %179
  %181 = load i8, ptr %180, align 1, !tbaa !46
  %182 = load i64, ptr %173, align 8, !tbaa !92
  %183 = icmp eq i64 %182, 255
  br i1 %183, label %184, label %189

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %182
  store i8 0, ptr %185, align 1, !tbaa !46
  %186 = load ptr, ptr %175, align 8, !tbaa !94
  %187 = load i64, ptr %173, align 8, !tbaa !92
  %188 = load ptr, ptr %176, align 8, !tbaa !95
  tail call void %186(ptr noundef nonnull %174, i64 noundef %187, ptr noundef %188) #27
  store i64 0, ptr %173, align 8, !tbaa !92
  br label %189

189:                                              ; preds = %184, %178
  %190 = load i64, ptr %173, align 8, !tbaa !92
  %191 = add i64 %190, 1
  store i64 %191, ptr %173, align 8, !tbaa !92
  %192 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %190
  store i8 %181, ptr %192, align 1, !tbaa !46
  store i8 %181, ptr %177, align 8, !tbaa !93
  %193 = add nuw i64 %179, 1
  %194 = icmp eq i64 %193, %170
  br i1 %194, label %551, label %178, !llvm.loop !97

195:                                              ; preds = %161
  tail call fastcc void @d_print_java_identifier(ptr noundef nonnull %0, ptr noundef %166, i32 noundef %168)
  br label %551

196:                                              ; preds = %21, %21
  %197 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !46
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %198)
  %199 = load i32, ptr %0, align 8, !tbaa !90
  %200 = and i32 %199, 4
  %201 = icmp eq i32 %200, 0
  %202 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  br i1 %201, label %203, label %225

203:                                              ; preds = %196
  %204 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %205 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %206 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %207 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %208

208:                                              ; preds = %203, %219
  %209 = phi i64 [ 0, %203 ], [ %223, %219 ]
  %210 = getelementptr inbounds i8, ptr @.str.147, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !46
  %212 = load i64, ptr %202, align 8, !tbaa !92
  %213 = icmp eq i64 %212, 255
  br i1 %213, label %214, label %219

214:                                              ; preds = %208
  %215 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %212
  store i8 0, ptr %215, align 1, !tbaa !46
  %216 = load ptr, ptr %205, align 8, !tbaa !94
  %217 = load i64, ptr %202, align 8, !tbaa !92
  %218 = load ptr, ptr %206, align 8, !tbaa !95
  tail call void %216(ptr noundef nonnull %204, i64 noundef %217, ptr noundef %218) #27
  store i64 0, ptr %202, align 8, !tbaa !92
  br label %219

219:                                              ; preds = %214, %208
  %220 = load i64, ptr %202, align 8, !tbaa !92
  %221 = add i64 %220, 1
  store i64 %221, ptr %202, align 8, !tbaa !92
  %222 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %220
  store i8 %211, ptr %222, align 1, !tbaa !46
  store i8 %211, ptr %207, align 8, !tbaa !93
  %223 = add nuw nsw i64 %209, 1
  %224 = icmp eq i64 %209, 0
  br i1 %224, label %208, label %241, !llvm.loop !97

225:                                              ; preds = %196
  %226 = load i64, ptr %202, align 8, !tbaa !92
  %227 = icmp eq i64 %226, 255
  br i1 %227, label %228, label %236

228:                                              ; preds = %225
  %229 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %230 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %226
  store i8 0, ptr %230, align 1, !tbaa !46
  %231 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %232 = load ptr, ptr %231, align 8, !tbaa !94
  %233 = load i64, ptr %202, align 8, !tbaa !92
  %234 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %235 = load ptr, ptr %234, align 8, !tbaa !95
  tail call void %232(ptr noundef nonnull %229, i64 noundef %233, ptr noundef %235) #27
  store i64 0, ptr %202, align 8, !tbaa !92
  br label %236

236:                                              ; preds = %225, %228
  %237 = load i64, ptr %202, align 8, !tbaa !92
  %238 = add i64 %237, 1
  store i64 %238, ptr %202, align 8, !tbaa !92
  %239 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %237
  store i8 46, ptr %239, align 1, !tbaa !46
  %240 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 46, ptr %240, align 8, !tbaa !93
  br label %241

241:                                              ; preds = %219, %236
  %242 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !46
  br label %13

244:                                              ; preds = %21
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #27
  %245 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 7
  %246 = load ptr, ptr %245, align 8, !tbaa !98
  store ptr null, ptr %245, align 8, !tbaa !98
  %247 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 6
  br label %248

248:                                              ; preds = %257, %244
  %249 = phi i64 [ %264, %257 ], [ 0, %244 ]
  %250 = phi ptr [ %252, %257 ], [ %14, %244 ]
  %251 = getelementptr inbounds %struct.demangle_component, ptr %250, i64 0, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !46
  %253 = icmp eq ptr %252, null
  br i1 %253, label %268, label %254

254:                                              ; preds = %248
  %255 = icmp eq i64 %249, 4
  br i1 %255, label %256, label %257

256:                                              ; preds = %254
  store i32 1, ptr %16, align 8, !tbaa !96
  br label %360

257:                                              ; preds = %254
  %258 = load ptr, ptr %245, align 8, !tbaa !98
  %259 = getelementptr inbounds [4 x %struct.d_print_mod], ptr %7, i64 0, i64 %249
  store ptr %258, ptr %259, align 16, !tbaa !99
  store ptr %259, ptr %245, align 8, !tbaa !98
  %260 = getelementptr inbounds [4 x %struct.d_print_mod], ptr %7, i64 0, i64 %249, i32 1
  store ptr %252, ptr %260, align 8, !tbaa !101
  %261 = getelementptr inbounds [4 x %struct.d_print_mod], ptr %7, i64 0, i64 %249, i32 2
  store i32 0, ptr %261, align 16, !tbaa !102
  %262 = load ptr, ptr %247, align 8, !tbaa !103
  %263 = getelementptr inbounds [4 x %struct.d_print_mod], ptr %7, i64 0, i64 %249, i32 3
  store ptr %262, ptr %263, align 8, !tbaa !104
  %264 = add nuw nsw i64 %249, 1
  %265 = load i32, ptr %252, align 8, !tbaa !53
  %266 = add i32 %265, -26
  %267 = icmp ult i32 %266, 3
  br i1 %267, label %248, label %268, !llvm.loop !105

268:                                              ; preds = %257, %248
  %269 = phi i64 [ %249, %248 ], [ %264, %257 ]
  %270 = trunc i64 %269 to i32
  br i1 %253, label %271, label %272

271:                                              ; preds = %268
  store i32 1, ptr %16, align 8, !tbaa !96
  br label %360

272:                                              ; preds = %268
  %273 = load i32, ptr %252, align 8, !tbaa !53
  switch i32 %273, label %318 [
    i32 4, label %274
    i32 2, label %278
  ]

274:                                              ; preds = %272
  %275 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 6
  %276 = load ptr, ptr %275, align 8, !tbaa !103
  store ptr %276, ptr %8, align 8, !tbaa !106
  store ptr %8, ptr %275, align 8, !tbaa !103
  %277 = getelementptr inbounds %struct.d_print_template, ptr %8, i64 0, i32 1
  store ptr %252, ptr %277, align 8, !tbaa !108
  br label %318

278:                                              ; preds = %272
  %279 = getelementptr inbounds %struct.demangle_component, ptr %252, i64 0, i32 1, i32 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !46
  %281 = load i32, ptr %280, align 8, !tbaa !53
  %282 = icmp eq i32 %281, 63
  br i1 %282, label %283, label %286

283:                                              ; preds = %278
  %284 = getelementptr inbounds %struct.demangle_component, ptr %280, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !46
  br label %286

286:                                              ; preds = %283, %278
  %287 = phi ptr [ %285, %283 ], [ %280, %278 ]
  %288 = load i32, ptr %287, align 8, !tbaa !53
  %289 = add i32 %288, -26
  %290 = icmp ult i32 %289, 3
  br i1 %290, label %291, label %318

291:                                              ; preds = %286
  %292 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 6
  %293 = and i64 %269, 4294967295
  %294 = call i32 @llvm.umax.i32(i32 %270, i32 4)
  %295 = zext i32 %294 to i64
  br label %296

296:                                              ; preds = %291, %301
  %297 = phi i64 [ %293, %291 ], [ %310, %301 ]
  %298 = phi ptr [ %287, %291 ], [ %312, %301 ]
  %299 = icmp eq i64 %297, %295
  br i1 %299, label %300, label %301

300:                                              ; preds = %296
  store i32 1, ptr %16, align 8, !tbaa !96
  br label %360

301:                                              ; preds = %296
  %302 = getelementptr inbounds [4 x %struct.d_print_mod], ptr %7, i64 0, i64 %297
  %303 = add nuw i64 %297, 4294967295
  %304 = and i64 %303, 4294967295
  %305 = getelementptr inbounds [4 x %struct.d_print_mod], ptr %7, i64 0, i64 %304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %302, ptr noundef nonnull align 16 dereferenceable(32) %305, i64 32, i1 false), !tbaa.struct !109
  store ptr %305, ptr %302, align 16, !tbaa !99
  store ptr %302, ptr %245, align 8, !tbaa !98
  %306 = getelementptr inbounds [4 x %struct.d_print_mod], ptr %7, i64 0, i64 %304, i32 1
  store ptr %298, ptr %306, align 8, !tbaa !101
  %307 = getelementptr inbounds [4 x %struct.d_print_mod], ptr %7, i64 0, i64 %304, i32 2
  store i32 0, ptr %307, align 16, !tbaa !102
  %308 = load ptr, ptr %292, align 8, !tbaa !103
  %309 = getelementptr inbounds [4 x %struct.d_print_mod], ptr %7, i64 0, i64 %304, i32 3
  store ptr %308, ptr %309, align 8, !tbaa !104
  %310 = add nuw nsw i64 %297, 1
  %311 = getelementptr inbounds %struct.demangle_component, ptr %298, i64 0, i32 1
  %312 = load ptr, ptr %311, align 8, !tbaa !46
  %313 = load i32, ptr %312, align 8, !tbaa !53
  %314 = add i32 %313, -26
  %315 = icmp ult i32 %314, 3
  br i1 %315, label %296, label %316, !llvm.loop !110

316:                                              ; preds = %301
  %317 = trunc i64 %310 to i32
  br label %318

318:                                              ; preds = %316, %286, %274, %272
  %319 = phi i32 [ %270, %274 ], [ %270, %272 ], [ %270, %286 ], [ %317, %316 ]
  %320 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %321 = load ptr, ptr %320, align 8, !tbaa !46
  call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %321)
  %322 = load i32, ptr %252, align 8, !tbaa !53
  %323 = icmp eq i32 %322, 4
  br i1 %323, label %324, label %327

324:                                              ; preds = %318
  %325 = load ptr, ptr %8, align 8, !tbaa !106
  %326 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 6
  store ptr %325, ptr %326, align 8, !tbaa !103
  br label %327

327:                                              ; preds = %324, %318
  %328 = icmp eq i32 %319, 0
  br i1 %328, label %359, label %329

329:                                              ; preds = %327
  %330 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %331 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  %332 = zext nneg i32 %319 to i64
  br label %333

333:                                              ; preds = %329, %357
  %334 = phi i64 [ %332, %329 ], [ %336, %357 ]
  %335 = add nsw i64 %334, -1
  %336 = add nsw i64 %334, -1
  %337 = getelementptr inbounds [4 x %struct.d_print_mod], ptr %7, i64 0, i64 %335, i32 2
  %338 = load i32, ptr %337, align 16, !tbaa !102
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %357

340:                                              ; preds = %333
  %341 = load i64, ptr %330, align 8, !tbaa !92
  %342 = icmp eq i64 %341, 255
  br i1 %342, label %343, label %351

343:                                              ; preds = %340
  %344 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %345 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %346 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %347 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %341
  store i8 0, ptr %347, align 1, !tbaa !46
  %348 = load ptr, ptr %345, align 8, !tbaa !94
  %349 = load i64, ptr %330, align 8, !tbaa !92
  %350 = load ptr, ptr %346, align 8, !tbaa !95
  call void %348(ptr noundef nonnull %344, i64 noundef %349, ptr noundef %350) #27
  store i64 0, ptr %330, align 8, !tbaa !92
  br label %351

351:                                              ; preds = %340, %343
  %352 = load i64, ptr %330, align 8, !tbaa !92
  %353 = add i64 %352, 1
  store i64 %353, ptr %330, align 8, !tbaa !92
  %354 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %352
  store i8 32, ptr %354, align 1, !tbaa !46
  store i8 32, ptr %331, align 8, !tbaa !93
  %355 = getelementptr inbounds [4 x %struct.d_print_mod], ptr %7, i64 0, i64 %335, i32 1
  %356 = load ptr, ptr %355, align 8, !tbaa !101
  call fastcc void @d_print_mod(ptr noundef %0, ptr noundef %356)
  br label %357

357:                                              ; preds = %351, %333
  %358 = icmp eq i64 %335, 0
  br i1 %358, label %359, label %333, !llvm.loop !111

359:                                              ; preds = %357, %327
  store ptr %246, ptr %245, align 8, !tbaa !98
  br label %360

360:                                              ; preds = %300, %359, %271, %256
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #27
  br label %551

361:                                              ; preds = %21
  %362 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 7
  %363 = load ptr, ptr %362, align 8, !tbaa !98
  store ptr null, ptr %362, align 8, !tbaa !98
  %364 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %365 = load ptr, ptr %364, align 8, !tbaa !46
  %366 = load i32, ptr %0, align 8, !tbaa !90
  %367 = and i32 %366, 4
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %406, label %369

369:                                              ; preds = %361
  %370 = load i32, ptr %365, align 8, !tbaa !53
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %406

372:                                              ; preds = %369
  %373 = getelementptr inbounds %struct.demangle_component, ptr %365, i64 0, i32 1, i32 0, i32 1
  %374 = load i32, ptr %373, align 8, !tbaa !46
  %375 = icmp eq i32 %374, 6
  br i1 %375, label %376, label %406

376:                                              ; preds = %372
  %377 = getelementptr inbounds %struct.demangle_component, ptr %365, i64 0, i32 1
  %378 = load ptr, ptr %377, align 8, !tbaa !46
  %379 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %378, ptr noundef nonnull dereferenceable(7) @.str.148, i64 noundef 6)
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %406

381:                                              ; preds = %376
  %382 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %383 = load ptr, ptr %382, align 8, !tbaa !46
  tail call fastcc void @d_print_comp(ptr noundef nonnull %0, ptr noundef %383)
  %384 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %385 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %386 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %387 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %388 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %389

389:                                              ; preds = %381, %400
  %390 = phi i64 [ 0, %381 ], [ %404, %400 ]
  %391 = getelementptr inbounds i8, ptr @.str.38, i64 %390
  %392 = load i8, ptr %391, align 1, !tbaa !46
  %393 = load i64, ptr %384, align 8, !tbaa !92
  %394 = icmp eq i64 %393, 255
  br i1 %394, label %395, label %400

395:                                              ; preds = %389
  %396 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %393
  store i8 0, ptr %396, align 1, !tbaa !46
  %397 = load ptr, ptr %386, align 8, !tbaa !94
  %398 = load i64, ptr %384, align 8, !tbaa !92
  %399 = load ptr, ptr %387, align 8, !tbaa !95
  tail call void %397(ptr noundef nonnull %385, i64 noundef %398, ptr noundef %399) #27
  store i64 0, ptr %384, align 8, !tbaa !92
  br label %400

400:                                              ; preds = %395, %389
  %401 = load i64, ptr %384, align 8, !tbaa !92
  %402 = add i64 %401, 1
  store i64 %402, ptr %384, align 8, !tbaa !92
  %403 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %401
  store i8 %392, ptr %403, align 1, !tbaa !46
  store i8 %392, ptr %388, align 8, !tbaa !93
  %404 = add nuw nsw i64 %390, 1
  %405 = icmp eq i64 %390, 0
  br i1 %405, label %389, label %476, !llvm.loop !97

406:                                              ; preds = %376, %372, %369, %361
  tail call fastcc void @d_print_comp(ptr noundef nonnull %0, ptr noundef %365)
  %407 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  %408 = load i8, ptr %407, align 8, !tbaa !93
  %409 = icmp eq i8 %408, 60
  br i1 %409, label %410, label %426

410:                                              ; preds = %406
  %411 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %412 = load i64, ptr %411, align 8, !tbaa !92
  %413 = icmp eq i64 %412, 255
  br i1 %413, label %414, label %422

414:                                              ; preds = %410
  %415 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %416 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %412
  store i8 0, ptr %416, align 1, !tbaa !46
  %417 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %418 = load ptr, ptr %417, align 8, !tbaa !94
  %419 = load i64, ptr %411, align 8, !tbaa !92
  %420 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %421 = load ptr, ptr %420, align 8, !tbaa !95
  tail call void %418(ptr noundef nonnull %415, i64 noundef %419, ptr noundef %421) #27
  store i64 0, ptr %411, align 8, !tbaa !92
  br label %422

422:                                              ; preds = %410, %414
  %423 = load i64, ptr %411, align 8, !tbaa !92
  %424 = add i64 %423, 1
  store i64 %424, ptr %411, align 8, !tbaa !92
  %425 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %423
  store i8 32, ptr %425, align 1, !tbaa !46
  store i8 32, ptr %407, align 8, !tbaa !93
  br label %426

426:                                              ; preds = %422, %406
  %427 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %428 = load i64, ptr %427, align 8, !tbaa !92
  %429 = icmp eq i64 %428, 255
  br i1 %429, label %430, label %438

430:                                              ; preds = %426
  %431 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %432 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %428
  store i8 0, ptr %432, align 1, !tbaa !46
  %433 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %434 = load ptr, ptr %433, align 8, !tbaa !94
  %435 = load i64, ptr %427, align 8, !tbaa !92
  %436 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %437 = load ptr, ptr %436, align 8, !tbaa !95
  tail call void %434(ptr noundef nonnull %431, i64 noundef %435, ptr noundef %437) #27
  store i64 0, ptr %427, align 8, !tbaa !92
  br label %438

438:                                              ; preds = %426, %430
  %439 = load i64, ptr %427, align 8, !tbaa !92
  %440 = add i64 %439, 1
  store i64 %440, ptr %427, align 8, !tbaa !92
  %441 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %439
  store i8 60, ptr %441, align 1, !tbaa !46
  store i8 60, ptr %407, align 8, !tbaa !93
  %442 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %443 = load ptr, ptr %442, align 8, !tbaa !46
  tail call fastcc void @d_print_comp(ptr noundef nonnull %0, ptr noundef %443)
  %444 = load i8, ptr %407, align 8, !tbaa !93
  %445 = icmp eq i8 %444, 62
  br i1 %445, label %446, label %461

446:                                              ; preds = %438
  %447 = load i64, ptr %427, align 8, !tbaa !92
  %448 = icmp eq i64 %447, 255
  br i1 %448, label %449, label %457

449:                                              ; preds = %446
  %450 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %451 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %447
  store i8 0, ptr %451, align 1, !tbaa !46
  %452 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %453 = load ptr, ptr %452, align 8, !tbaa !94
  %454 = load i64, ptr %427, align 8, !tbaa !92
  %455 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %456 = load ptr, ptr %455, align 8, !tbaa !95
  tail call void %453(ptr noundef nonnull %450, i64 noundef %454, ptr noundef %456) #27
  store i64 0, ptr %427, align 8, !tbaa !92
  br label %457

457:                                              ; preds = %446, %449
  %458 = load i64, ptr %427, align 8, !tbaa !92
  %459 = add i64 %458, 1
  store i64 %459, ptr %427, align 8, !tbaa !92
  %460 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %458
  store i8 32, ptr %460, align 1, !tbaa !46
  store i8 32, ptr %407, align 8, !tbaa !93
  br label %461

461:                                              ; preds = %457, %438
  %462 = load i64, ptr %427, align 8, !tbaa !92
  %463 = icmp eq i64 %462, 255
  br i1 %463, label %464, label %472

464:                                              ; preds = %461
  %465 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %466 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %462
  store i8 0, ptr %466, align 1, !tbaa !46
  %467 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %468 = load ptr, ptr %467, align 8, !tbaa !94
  %469 = load i64, ptr %427, align 8, !tbaa !92
  %470 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %471 = load ptr, ptr %470, align 8, !tbaa !95
  tail call void %468(ptr noundef nonnull %465, i64 noundef %469, ptr noundef %471) #27
  store i64 0, ptr %427, align 8, !tbaa !92
  br label %472

472:                                              ; preds = %461, %464
  %473 = load i64, ptr %427, align 8, !tbaa !92
  %474 = add i64 %473, 1
  store i64 %474, ptr %427, align 8, !tbaa !92
  %475 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %473
  store i8 62, ptr %475, align 1, !tbaa !46
  store i8 62, ptr %407, align 8, !tbaa !93
  br label %476

476:                                              ; preds = %400, %472
  store ptr %363, ptr %362, align 8, !tbaa !98
  br label %551

477:                                              ; preds = %21
  %478 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 6
  %479 = load ptr, ptr %478, align 8, !tbaa !103
  %480 = icmp eq ptr %479, null
  br i1 %480, label %481, label %482

481:                                              ; preds = %477
  store i32 1, ptr %16, align 8, !tbaa !96
  br label %515

482:                                              ; preds = %477
  %483 = getelementptr inbounds %struct.d_print_template, ptr %479, i64 0, i32 1
  %484 = load ptr, ptr %483, align 8, !tbaa !108
  %485 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %486 = load i64, ptr %485, align 8, !tbaa !46
  %487 = trunc i64 %486 to i32
  %488 = getelementptr inbounds %struct.demangle_component, ptr %484, i64 0, i32 1, i32 0, i32 1
  %489 = load ptr, ptr %488, align 8, !tbaa !46
  %490 = icmp eq ptr %489, null
  br i1 %490, label %506, label %491

491:                                              ; preds = %482
  %492 = tail call i32 @llvm.smin.i32(i32 %487, i32 0)
  br label %493

493:                                              ; preds = %491, %501
  %494 = phi i1 [ %505, %501 ], [ %490, %491 ]
  %495 = phi ptr [ %504, %501 ], [ %489, %491 ]
  %496 = phi i32 [ %502, %501 ], [ %487, %491 ]
  %497 = load i32, ptr %495, align 8, !tbaa !53
  %498 = icmp eq i32 %497, 43
  br i1 %498, label %499, label %515

499:                                              ; preds = %493
  %500 = icmp slt i32 %496, 1
  br i1 %500, label %506, label %501

501:                                              ; preds = %499
  %502 = add nsw i32 %496, -1
  %503 = getelementptr inbounds %struct.demangle_component, ptr %495, i64 0, i32 1, i32 0, i32 1
  %504 = load ptr, ptr %503, align 8, !tbaa !46
  %505 = icmp eq ptr %504, null
  br i1 %505, label %506, label %493, !llvm.loop !112

506:                                              ; preds = %501, %499, %482
  %507 = phi i32 [ %487, %482 ], [ %502, %501 ], [ %492, %499 ]
  %508 = phi ptr [ %489, %482 ], [ %504, %501 ], [ %495, %499 ]
  %509 = phi i1 [ %490, %482 ], [ %505, %501 ], [ %494, %499 ]
  %510 = icmp ne i32 %507, 0
  %511 = or i1 %510, %509
  br i1 %511, label %515, label %512

512:                                              ; preds = %506
  %513 = getelementptr inbounds %struct.demangle_component, ptr %508, i64 0, i32 1
  %514 = load ptr, ptr %513, align 8, !tbaa !46
  br label %515

515:                                              ; preds = %493, %481, %506, %512
  %516 = phi ptr [ null, %481 ], [ %514, %512 ], [ null, %506 ], [ null, %493 ]
  %517 = icmp eq ptr %516, null
  br i1 %517, label %547, label %518

518:                                              ; preds = %515
  %519 = load i32, ptr %516, align 8, !tbaa !53
  %520 = icmp eq i32 %519, 43
  br i1 %520, label %521, label %547

521:                                              ; preds = %518
  %522 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 9
  %523 = load i32, ptr %522, align 4, !tbaa !113
  %524 = tail call i32 @llvm.smin.i32(i32 %523, i32 0)
  br label %525

525:                                              ; preds = %521, %533
  %526 = phi i1 [ false, %521 ], [ %537, %533 ]
  %527 = phi ptr [ %516, %521 ], [ %536, %533 ]
  %528 = phi i32 [ %523, %521 ], [ %534, %533 ]
  %529 = load i32, ptr %527, align 8, !tbaa !53
  %530 = icmp eq i32 %529, 43
  br i1 %530, label %531, label %547

531:                                              ; preds = %525
  %532 = icmp slt i32 %528, 1
  br i1 %532, label %538, label %533

533:                                              ; preds = %531
  %534 = add nsw i32 %528, -1
  %535 = getelementptr inbounds %struct.demangle_component, ptr %527, i64 0, i32 1, i32 0, i32 1
  %536 = load ptr, ptr %535, align 8, !tbaa !46
  %537 = icmp eq ptr %536, null
  br i1 %537, label %538, label %525, !llvm.loop !112

538:                                              ; preds = %531, %533
  %539 = phi i32 [ %524, %531 ], [ %534, %533 ]
  %540 = phi ptr [ %527, %531 ], [ %536, %533 ]
  %541 = phi i1 [ %526, %531 ], [ %537, %533 ]
  %542 = icmp ne i32 %539, 0
  %543 = or i1 %542, %541
  br i1 %543, label %547, label %544

544:                                              ; preds = %538
  %545 = getelementptr inbounds %struct.demangle_component, ptr %540, i64 0, i32 1
  %546 = load ptr, ptr %545, align 8, !tbaa !46
  br label %547

547:                                              ; preds = %525, %544, %538, %518, %515
  %548 = phi ptr [ %516, %518 ], [ null, %515 ], [ %546, %544 ], [ null, %538 ], [ null, %525 ]
  %549 = icmp eq ptr %548, null
  br i1 %549, label %550, label %552

550:                                              ; preds = %547
  store i32 1, ptr %16, align 8, !tbaa !96
  br label %551

551:                                              ; preds = %17, %360, %476, %927, %1101, %1115, %1360, %1399, %1408, %1525, %1537, %1569, %1575, %1891, %1932, %1968, %2110, %2240, %2304, %2309, %18, %195, %1046, %1042, %1520, %1503, %1497, %1493, %550, %1041, %1248, %1242, %1855, %1642, %1659, %1610, %2310, %1215, %169, %861, %935, %964, %1292, %2016, %189, %885, %958, %988, %1204, %1187, %1317, %1675, %1692, %1709, %1753, %1770, %1996, %2048, %552
  ret void

552:                                              ; preds = %547
  %553 = load ptr, ptr %479, align 8, !tbaa !106
  store ptr %553, ptr %478, align 8, !tbaa !103
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef nonnull %548)
  store ptr %479, ptr %478, align 8, !tbaa !103
  br label %551

554:                                              ; preds = %21
  %555 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %556 = load ptr, ptr %555, align 8, !tbaa !46
  br label %13

557:                                              ; preds = %21
  %558 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %559 = load i64, ptr %558, align 8, !tbaa !92
  %560 = icmp eq i64 %559, 255
  br i1 %560, label %561, label %569

561:                                              ; preds = %557
  %562 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %563 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %559
  store i8 0, ptr %563, align 1, !tbaa !46
  %564 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %565 = load ptr, ptr %564, align 8, !tbaa !94
  %566 = load i64, ptr %558, align 8, !tbaa !92
  %567 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %568 = load ptr, ptr %567, align 8, !tbaa !95
  tail call void %565(ptr noundef nonnull %562, i64 noundef %566, ptr noundef %568) #27
  store i64 0, ptr %558, align 8, !tbaa !92
  br label %569

569:                                              ; preds = %557, %561
  %570 = load i64, ptr %558, align 8, !tbaa !92
  %571 = add i64 %570, 1
  store i64 %571, ptr %558, align 8, !tbaa !92
  %572 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %570
  store i8 126, ptr %572, align 1, !tbaa !46
  %573 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 126, ptr %573, align 8, !tbaa !93
  %574 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %575 = load ptr, ptr %574, align 8, !tbaa !46
  br label %13

576:                                              ; preds = %155, %587
  %577 = phi i64 [ 0, %155 ], [ %591, %587 ]
  %578 = getelementptr inbounds i8, ptr @.str.149, i64 %577
  %579 = load i8, ptr %578, align 1, !tbaa !46
  %580 = load i64, ptr %156, align 8, !tbaa !92
  %581 = icmp eq i64 %580, 255
  br i1 %581, label %582, label %587

582:                                              ; preds = %576
  %583 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %580
  store i8 0, ptr %583, align 1, !tbaa !46
  %584 = load ptr, ptr %158, align 8, !tbaa !94
  %585 = load i64, ptr %156, align 8, !tbaa !92
  %586 = load ptr, ptr %159, align 8, !tbaa !95
  tail call void %584(ptr noundef nonnull %157, i64 noundef %585, ptr noundef %586) #27
  store i64 0, ptr %156, align 8, !tbaa !92
  br label %587

587:                                              ; preds = %582, %576
  %588 = load i64, ptr %156, align 8, !tbaa !92
  %589 = add i64 %588, 1
  store i64 %589, ptr %156, align 8, !tbaa !92
  %590 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %588
  store i8 %579, ptr %590, align 1, !tbaa !46
  store i8 %579, ptr %160, align 8, !tbaa !93
  %591 = add nuw nsw i64 %577, 1
  %592 = icmp eq i64 %591, 11
  br i1 %592, label %593, label %576, !llvm.loop !97

593:                                              ; preds = %587
  %594 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %595 = load ptr, ptr %594, align 8, !tbaa !46
  br label %13

596:                                              ; preds = %149, %607
  %597 = phi i64 [ 0, %149 ], [ %611, %607 ]
  %598 = getelementptr inbounds i8, ptr @.str.150, i64 %597
  %599 = load i8, ptr %598, align 1, !tbaa !46
  %600 = load i64, ptr %150, align 8, !tbaa !92
  %601 = icmp eq i64 %600, 255
  br i1 %601, label %602, label %607

602:                                              ; preds = %596
  %603 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %600
  store i8 0, ptr %603, align 1, !tbaa !46
  %604 = load ptr, ptr %152, align 8, !tbaa !94
  %605 = load i64, ptr %150, align 8, !tbaa !92
  %606 = load ptr, ptr %153, align 8, !tbaa !95
  tail call void %604(ptr noundef nonnull %151, i64 noundef %605, ptr noundef %606) #27
  store i64 0, ptr %150, align 8, !tbaa !92
  br label %607

607:                                              ; preds = %602, %596
  %608 = load i64, ptr %150, align 8, !tbaa !92
  %609 = add i64 %608, 1
  store i64 %609, ptr %150, align 8, !tbaa !92
  %610 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %608
  store i8 %599, ptr %610, align 1, !tbaa !46
  store i8 %599, ptr %154, align 8, !tbaa !93
  %611 = add nuw nsw i64 %597, 1
  %612 = icmp eq i64 %611, 8
  br i1 %612, label %613, label %596, !llvm.loop !97

613:                                              ; preds = %607
  %614 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %615 = load ptr, ptr %614, align 8, !tbaa !46
  br label %13

616:                                              ; preds = %143, %627
  %617 = phi i64 [ 0, %143 ], [ %631, %627 ]
  %618 = getelementptr inbounds i8, ptr @.str.151, i64 %617
  %619 = load i8, ptr %618, align 1, !tbaa !46
  %620 = load i64, ptr %144, align 8, !tbaa !92
  %621 = icmp eq i64 %620, 255
  br i1 %621, label %622, label %627

622:                                              ; preds = %616
  %623 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %620
  store i8 0, ptr %623, align 1, !tbaa !46
  %624 = load ptr, ptr %146, align 8, !tbaa !94
  %625 = load i64, ptr %144, align 8, !tbaa !92
  %626 = load ptr, ptr %147, align 8, !tbaa !95
  tail call void %624(ptr noundef nonnull %145, i64 noundef %625, ptr noundef %626) #27
  store i64 0, ptr %144, align 8, !tbaa !92
  br label %627

627:                                              ; preds = %622, %616
  %628 = load i64, ptr %144, align 8, !tbaa !92
  %629 = add i64 %628, 1
  store i64 %629, ptr %144, align 8, !tbaa !92
  %630 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %628
  store i8 %619, ptr %630, align 1, !tbaa !46
  store i8 %619, ptr %148, align 8, !tbaa !93
  %631 = add nuw nsw i64 %617, 1
  %632 = icmp eq i64 %631, 24
  br i1 %632, label %633, label %616, !llvm.loop !97

633:                                              ; preds = %627
  %634 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %635 = load ptr, ptr %634, align 8, !tbaa !46
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %635)
  %636 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %637 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %638 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %639 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %640 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %641

641:                                              ; preds = %633, %652
  %642 = phi i64 [ 0, %633 ], [ %656, %652 ]
  %643 = getelementptr inbounds i8, ptr @.str.152, i64 %642
  %644 = load i8, ptr %643, align 1, !tbaa !46
  %645 = load i64, ptr %636, align 8, !tbaa !92
  %646 = icmp eq i64 %645, 255
  br i1 %646, label %647, label %652

647:                                              ; preds = %641
  %648 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %645
  store i8 0, ptr %648, align 1, !tbaa !46
  %649 = load ptr, ptr %638, align 8, !tbaa !94
  %650 = load i64, ptr %636, align 8, !tbaa !92
  %651 = load ptr, ptr %639, align 8, !tbaa !95
  tail call void %649(ptr noundef nonnull %637, i64 noundef %650, ptr noundef %651) #27
  store i64 0, ptr %636, align 8, !tbaa !92
  br label %652

652:                                              ; preds = %647, %641
  %653 = load i64, ptr %636, align 8, !tbaa !92
  %654 = add i64 %653, 1
  store i64 %654, ptr %636, align 8, !tbaa !92
  %655 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %653
  store i8 %644, ptr %655, align 1, !tbaa !46
  store i8 %644, ptr %640, align 8, !tbaa !93
  %656 = add nuw nsw i64 %642, 1
  %657 = icmp eq i64 %656, 4
  br i1 %657, label %658, label %641, !llvm.loop !97

658:                                              ; preds = %652
  %659 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %660 = load ptr, ptr %659, align 8, !tbaa !46
  br label %13

661:                                              ; preds = %137, %672
  %662 = phi i64 [ 0, %137 ], [ %676, %672 ]
  %663 = getelementptr inbounds i8, ptr @.str.153, i64 %662
  %664 = load i8, ptr %663, align 1, !tbaa !46
  %665 = load i64, ptr %138, align 8, !tbaa !92
  %666 = icmp eq i64 %665, 255
  br i1 %666, label %667, label %672

667:                                              ; preds = %661
  %668 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %665
  store i8 0, ptr %668, align 1, !tbaa !46
  %669 = load ptr, ptr %140, align 8, !tbaa !94
  %670 = load i64, ptr %138, align 8, !tbaa !92
  %671 = load ptr, ptr %141, align 8, !tbaa !95
  tail call void %669(ptr noundef nonnull %139, i64 noundef %670, ptr noundef %671) #27
  store i64 0, ptr %138, align 8, !tbaa !92
  br label %672

672:                                              ; preds = %667, %661
  %673 = load i64, ptr %138, align 8, !tbaa !92
  %674 = add i64 %673, 1
  store i64 %674, ptr %138, align 8, !tbaa !92
  %675 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %673
  store i8 %664, ptr %675, align 1, !tbaa !46
  store i8 %664, ptr %142, align 8, !tbaa !93
  %676 = add nuw nsw i64 %662, 1
  %677 = icmp eq i64 %676, 13
  br i1 %677, label %678, label %661, !llvm.loop !97

678:                                              ; preds = %672
  %679 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %680 = load ptr, ptr %679, align 8, !tbaa !46
  br label %13

681:                                              ; preds = %131, %692
  %682 = phi i64 [ 0, %131 ], [ %696, %692 ]
  %683 = getelementptr inbounds i8, ptr @.str.154, i64 %682
  %684 = load i8, ptr %683, align 1, !tbaa !46
  %685 = load i64, ptr %132, align 8, !tbaa !92
  %686 = icmp eq i64 %685, 255
  br i1 %686, label %687, label %692

687:                                              ; preds = %681
  %688 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %685
  store i8 0, ptr %688, align 1, !tbaa !46
  %689 = load ptr, ptr %134, align 8, !tbaa !94
  %690 = load i64, ptr %132, align 8, !tbaa !92
  %691 = load ptr, ptr %135, align 8, !tbaa !95
  tail call void %689(ptr noundef nonnull %133, i64 noundef %690, ptr noundef %691) #27
  store i64 0, ptr %132, align 8, !tbaa !92
  br label %692

692:                                              ; preds = %687, %681
  %693 = load i64, ptr %132, align 8, !tbaa !92
  %694 = add i64 %693, 1
  store i64 %694, ptr %132, align 8, !tbaa !92
  %695 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %693
  store i8 %684, ptr %695, align 1, !tbaa !46
  store i8 %684, ptr %136, align 8, !tbaa !93
  %696 = add nuw nsw i64 %682, 1
  %697 = icmp eq i64 %696, 18
  br i1 %697, label %698, label %681, !llvm.loop !97

698:                                              ; preds = %692
  %699 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %700 = load ptr, ptr %699, align 8, !tbaa !46
  br label %13

701:                                              ; preds = %125, %712
  %702 = phi i64 [ 0, %125 ], [ %716, %712 ]
  %703 = getelementptr inbounds i8, ptr @.str.155, i64 %702
  %704 = load i8, ptr %703, align 1, !tbaa !46
  %705 = load i64, ptr %126, align 8, !tbaa !92
  %706 = icmp eq i64 %705, 255
  br i1 %706, label %707, label %712

707:                                              ; preds = %701
  %708 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %705
  store i8 0, ptr %708, align 1, !tbaa !46
  %709 = load ptr, ptr %128, align 8, !tbaa !94
  %710 = load i64, ptr %126, align 8, !tbaa !92
  %711 = load ptr, ptr %129, align 8, !tbaa !95
  tail call void %709(ptr noundef nonnull %127, i64 noundef %710, ptr noundef %711) #27
  store i64 0, ptr %126, align 8, !tbaa !92
  br label %712

712:                                              ; preds = %707, %701
  %713 = load i64, ptr %126, align 8, !tbaa !92
  %714 = add i64 %713, 1
  store i64 %714, ptr %126, align 8, !tbaa !92
  %715 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %713
  store i8 %704, ptr %715, align 1, !tbaa !46
  store i8 %704, ptr %130, align 8, !tbaa !93
  %716 = add nuw nsw i64 %702, 1
  %717 = icmp eq i64 %716, 16
  br i1 %717, label %718, label %701, !llvm.loop !97

718:                                              ; preds = %712
  %719 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %720 = load ptr, ptr %719, align 8, !tbaa !46
  br label %13

721:                                              ; preds = %119, %732
  %722 = phi i64 [ 0, %119 ], [ %736, %732 ]
  %723 = getelementptr inbounds i8, ptr @.str.156, i64 %722
  %724 = load i8, ptr %723, align 1, !tbaa !46
  %725 = load i64, ptr %120, align 8, !tbaa !92
  %726 = icmp eq i64 %725, 255
  br i1 %726, label %727, label %732

727:                                              ; preds = %721
  %728 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %725
  store i8 0, ptr %728, align 1, !tbaa !46
  %729 = load ptr, ptr %122, align 8, !tbaa !94
  %730 = load i64, ptr %120, align 8, !tbaa !92
  %731 = load ptr, ptr %123, align 8, !tbaa !95
  tail call void %729(ptr noundef nonnull %121, i64 noundef %730, ptr noundef %731) #27
  store i64 0, ptr %120, align 8, !tbaa !92
  br label %732

732:                                              ; preds = %727, %721
  %733 = load i64, ptr %120, align 8, !tbaa !92
  %734 = add i64 %733, 1
  store i64 %734, ptr %120, align 8, !tbaa !92
  %735 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %733
  store i8 %724, ptr %735, align 1, !tbaa !46
  store i8 %724, ptr %124, align 8, !tbaa !93
  %736 = add nuw nsw i64 %722, 1
  %737 = icmp eq i64 %736, 21
  br i1 %737, label %738, label %721, !llvm.loop !97

738:                                              ; preds = %732
  %739 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %740 = load ptr, ptr %739, align 8, !tbaa !46
  br label %13

741:                                              ; preds = %113, %752
  %742 = phi i64 [ 0, %113 ], [ %756, %752 ]
  %743 = getelementptr inbounds i8, ptr @.str.157, i64 %742
  %744 = load i8, ptr %743, align 1, !tbaa !46
  %745 = load i64, ptr %114, align 8, !tbaa !92
  %746 = icmp eq i64 %745, 255
  br i1 %746, label %747, label %752

747:                                              ; preds = %741
  %748 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %745
  store i8 0, ptr %748, align 1, !tbaa !46
  %749 = load ptr, ptr %116, align 8, !tbaa !94
  %750 = load i64, ptr %114, align 8, !tbaa !92
  %751 = load ptr, ptr %117, align 8, !tbaa !95
  tail call void %749(ptr noundef nonnull %115, i64 noundef %750, ptr noundef %751) #27
  store i64 0, ptr %114, align 8, !tbaa !92
  br label %752

752:                                              ; preds = %747, %741
  %753 = load i64, ptr %114, align 8, !tbaa !92
  %754 = add i64 %753, 1
  store i64 %754, ptr %114, align 8, !tbaa !92
  %755 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %753
  store i8 %744, ptr %755, align 1, !tbaa !46
  store i8 %744, ptr %118, align 8, !tbaa !93
  %756 = add nuw nsw i64 %742, 1
  %757 = icmp eq i64 %756, 17
  br i1 %757, label %758, label %741, !llvm.loop !97

758:                                              ; preds = %752
  %759 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %760 = load ptr, ptr %759, align 8, !tbaa !46
  br label %13

761:                                              ; preds = %107, %772
  %762 = phi i64 [ 0, %107 ], [ %776, %772 ]
  %763 = getelementptr inbounds i8, ptr @.str.158, i64 %762
  %764 = load i8, ptr %763, align 1, !tbaa !46
  %765 = load i64, ptr %108, align 8, !tbaa !92
  %766 = icmp eq i64 %765, 255
  br i1 %766, label %767, label %772

767:                                              ; preds = %761
  %768 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %765
  store i8 0, ptr %768, align 1, !tbaa !46
  %769 = load ptr, ptr %110, align 8, !tbaa !94
  %770 = load i64, ptr %108, align 8, !tbaa !92
  %771 = load ptr, ptr %111, align 8, !tbaa !95
  tail call void %769(ptr noundef nonnull %109, i64 noundef %770, ptr noundef %771) #27
  store i64 0, ptr %108, align 8, !tbaa !92
  br label %772

772:                                              ; preds = %767, %761
  %773 = load i64, ptr %108, align 8, !tbaa !92
  %774 = add i64 %773, 1
  store i64 %774, ptr %108, align 8, !tbaa !92
  %775 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %773
  store i8 %764, ptr %775, align 1, !tbaa !46
  store i8 %764, ptr %112, align 8, !tbaa !93
  %776 = add nuw nsw i64 %762, 1
  %777 = icmp eq i64 %776, 26
  br i1 %777, label %778, label %761, !llvm.loop !97

778:                                              ; preds = %772
  %779 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %780 = load ptr, ptr %779, align 8, !tbaa !46
  br label %13

781:                                              ; preds = %101, %792
  %782 = phi i64 [ 0, %101 ], [ %796, %792 ]
  %783 = getelementptr inbounds i8, ptr @.str.159, i64 %782
  %784 = load i8, ptr %783, align 1, !tbaa !46
  %785 = load i64, ptr %102, align 8, !tbaa !92
  %786 = icmp eq i64 %785, 255
  br i1 %786, label %787, label %792

787:                                              ; preds = %781
  %788 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %785
  store i8 0, ptr %788, align 1, !tbaa !46
  %789 = load ptr, ptr %104, align 8, !tbaa !94
  %790 = load i64, ptr %102, align 8, !tbaa !92
  %791 = load ptr, ptr %105, align 8, !tbaa !95
  tail call void %789(ptr noundef nonnull %103, i64 noundef %790, ptr noundef %791) #27
  store i64 0, ptr %102, align 8, !tbaa !92
  br label %792

792:                                              ; preds = %787, %781
  %793 = load i64, ptr %102, align 8, !tbaa !92
  %794 = add i64 %793, 1
  store i64 %794, ptr %102, align 8, !tbaa !92
  %795 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %793
  store i8 %784, ptr %795, align 1, !tbaa !46
  store i8 %784, ptr %106, align 8, !tbaa !93
  %796 = add nuw nsw i64 %782, 1
  %797 = icmp eq i64 %796, 15
  br i1 %797, label %798, label %781, !llvm.loop !97

798:                                              ; preds = %792
  %799 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %800 = load ptr, ptr %799, align 8, !tbaa !46
  br label %13

801:                                              ; preds = %95, %812
  %802 = phi i64 [ 0, %95 ], [ %816, %812 ]
  %803 = getelementptr inbounds i8, ptr @.str.160, i64 %802
  %804 = load i8, ptr %803, align 1, !tbaa !46
  %805 = load i64, ptr %96, align 8, !tbaa !92
  %806 = icmp eq i64 %805, 255
  br i1 %806, label %807, label %812

807:                                              ; preds = %801
  %808 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %805
  store i8 0, ptr %808, align 1, !tbaa !46
  %809 = load ptr, ptr %98, align 8, !tbaa !94
  %810 = load i64, ptr %96, align 8, !tbaa !92
  %811 = load ptr, ptr %99, align 8, !tbaa !95
  tail call void %809(ptr noundef nonnull %97, i64 noundef %810, ptr noundef %811) #27
  store i64 0, ptr %96, align 8, !tbaa !92
  br label %812

812:                                              ; preds = %807, %801
  %813 = load i64, ptr %96, align 8, !tbaa !92
  %814 = add i64 %813, 1
  store i64 %814, ptr %96, align 8, !tbaa !92
  %815 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %813
  store i8 %804, ptr %815, align 1, !tbaa !46
  store i8 %804, ptr %100, align 8, !tbaa !93
  %816 = add nuw nsw i64 %802, 1
  %817 = icmp eq i64 %816, 19
  br i1 %817, label %818, label %801, !llvm.loop !97

818:                                              ; preds = %812
  %819 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %820 = load ptr, ptr %819, align 8, !tbaa !46
  br label %13

821:                                              ; preds = %89, %832
  %822 = phi i64 [ 0, %89 ], [ %836, %832 ]
  %823 = getelementptr inbounds i8, ptr @.str.161, i64 %822
  %824 = load i8, ptr %823, align 1, !tbaa !46
  %825 = load i64, ptr %90, align 8, !tbaa !92
  %826 = icmp eq i64 %825, 255
  br i1 %826, label %827, label %832

827:                                              ; preds = %821
  %828 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %825
  store i8 0, ptr %828, align 1, !tbaa !46
  %829 = load ptr, ptr %92, align 8, !tbaa !94
  %830 = load i64, ptr %90, align 8, !tbaa !92
  %831 = load ptr, ptr %93, align 8, !tbaa !95
  tail call void %829(ptr noundef nonnull %91, i64 noundef %830, ptr noundef %831) #27
  store i64 0, ptr %90, align 8, !tbaa !92
  br label %832

832:                                              ; preds = %827, %821
  %833 = load i64, ptr %90, align 8, !tbaa !92
  %834 = add i64 %833, 1
  store i64 %834, ptr %90, align 8, !tbaa !92
  %835 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %833
  store i8 %824, ptr %835, align 1, !tbaa !46
  store i8 %824, ptr %94, align 8, !tbaa !93
  %836 = add nuw nsw i64 %822, 1
  %837 = icmp eq i64 %836, 24
  br i1 %837, label %838, label %821, !llvm.loop !97

838:                                              ; preds = %832
  %839 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %840 = load ptr, ptr %839, align 8, !tbaa !46
  br label %13

841:                                              ; preds = %83, %852
  %842 = phi i64 [ 0, %83 ], [ %856, %852 ]
  %843 = getelementptr inbounds i8, ptr @.str.162, i64 %842
  %844 = load i8, ptr %843, align 1, !tbaa !46
  %845 = load i64, ptr %84, align 8, !tbaa !92
  %846 = icmp eq i64 %845, 255
  br i1 %846, label %847, label %852

847:                                              ; preds = %841
  %848 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %845
  store i8 0, ptr %848, align 1, !tbaa !46
  %849 = load ptr, ptr %86, align 8, !tbaa !94
  %850 = load i64, ptr %84, align 8, !tbaa !92
  %851 = load ptr, ptr %87, align 8, !tbaa !95
  tail call void %849(ptr noundef nonnull %85, i64 noundef %850, ptr noundef %851) #27
  store i64 0, ptr %84, align 8, !tbaa !92
  br label %852

852:                                              ; preds = %847, %841
  %853 = load i64, ptr %84, align 8, !tbaa !92
  %854 = add i64 %853, 1
  store i64 %854, ptr %84, align 8, !tbaa !92
  %855 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %853
  store i8 %844, ptr %855, align 1, !tbaa !46
  store i8 %844, ptr %88, align 8, !tbaa !93
  %856 = add nuw nsw i64 %842, 1
  %857 = icmp eq i64 %856, 17
  br i1 %857, label %858, label %841, !llvm.loop !97

858:                                              ; preds = %852
  %859 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %860 = load ptr, ptr %859, align 8, !tbaa !46
  br label %13

861:                                              ; preds = %21
  %862 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %863 = load ptr, ptr %862, align 8, !tbaa !46
  %864 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %865 = load i32, ptr %864, align 8, !tbaa !46
  %866 = sext i32 %865 to i64
  %867 = icmp eq i32 %865, 0
  br i1 %867, label %551, label %868

868:                                              ; preds = %861
  %869 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %870 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %871 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %872 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %873 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %874

874:                                              ; preds = %868, %885
  %875 = phi i64 [ 0, %868 ], [ %889, %885 ]
  %876 = getelementptr inbounds i8, ptr %863, i64 %875
  %877 = load i8, ptr %876, align 1, !tbaa !46
  %878 = load i64, ptr %869, align 8, !tbaa !92
  %879 = icmp eq i64 %878, 255
  br i1 %879, label %880, label %885

880:                                              ; preds = %874
  %881 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %878
  store i8 0, ptr %881, align 1, !tbaa !46
  %882 = load ptr, ptr %871, align 8, !tbaa !94
  %883 = load i64, ptr %869, align 8, !tbaa !92
  %884 = load ptr, ptr %872, align 8, !tbaa !95
  tail call void %882(ptr noundef nonnull %870, i64 noundef %883, ptr noundef %884) #27
  store i64 0, ptr %869, align 8, !tbaa !92
  br label %885

885:                                              ; preds = %880, %874
  %886 = load i64, ptr %869, align 8, !tbaa !92
  %887 = add i64 %886, 1
  store i64 %887, ptr %869, align 8, !tbaa !92
  %888 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %886
  store i8 %877, ptr %888, align 1, !tbaa !46
  store i8 %877, ptr %873, align 8, !tbaa !93
  %889 = add nuw i64 %875, 1
  %890 = icmp eq i64 %889, %866
  br i1 %890, label %551, label %874, !llvm.loop !97

891:                                              ; preds = %21, %21, %21
  %892 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 7
  %893 = load ptr, ptr %892, align 8, !tbaa !35
  %894 = icmp eq ptr %893, null
  br i1 %894, label %914, label %895

895:                                              ; preds = %891, %911
  %896 = phi ptr [ %912, %911 ], [ %893, %891 ]
  %897 = getelementptr inbounds %struct.d_print_mod, ptr %896, i64 0, i32 2
  %898 = load i32, ptr %897, align 8, !tbaa !102
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %900, label %911

900:                                              ; preds = %895
  %901 = getelementptr inbounds %struct.d_print_mod, ptr %896, i64 0, i32 1
  %902 = load ptr, ptr %901, align 8, !tbaa !101
  %903 = load i32, ptr %902, align 8, !tbaa !53
  %904 = add i32 %903, -23
  %905 = icmp ult i32 %904, 3
  br i1 %905, label %906, label %914

906:                                              ; preds = %900
  %907 = icmp eq i32 %903, %22
  br i1 %907, label %908, label %911

908:                                              ; preds = %906
  %909 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %910 = load ptr, ptr %909, align 8, !tbaa !46
  br label %13

911:                                              ; preds = %895, %906
  %912 = load ptr, ptr %896, align 8, !tbaa !35
  %913 = icmp eq ptr %912, null
  br i1 %913, label %914, label %895, !llvm.loop !114

914:                                              ; preds = %900, %911, %891, %21, %21, %21, %21, %21, %21, %21, %21, %21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #27
  %915 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 7
  %916 = load ptr, ptr %915, align 8, !tbaa !98
  store ptr %916, ptr %9, align 8, !tbaa !99
  store ptr %9, ptr %915, align 8, !tbaa !98
  %917 = getelementptr inbounds %struct.d_print_mod, ptr %9, i64 0, i32 1
  store ptr %14, ptr %917, align 8, !tbaa !101
  %918 = getelementptr inbounds %struct.d_print_mod, ptr %9, i64 0, i32 2
  store i32 0, ptr %918, align 8, !tbaa !102
  %919 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 6
  %920 = load ptr, ptr %919, align 8, !tbaa !103
  %921 = getelementptr inbounds %struct.d_print_mod, ptr %9, i64 0, i32 3
  store ptr %920, ptr %921, align 8, !tbaa !104
  %922 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %923 = load ptr, ptr %922, align 8, !tbaa !46
  call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %923)
  %924 = load i32, ptr %918, align 8, !tbaa !102
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %926, label %927

926:                                              ; preds = %914
  call fastcc void @d_print_mod(ptr noundef %0, ptr noundef nonnull %14)
  br label %927

927:                                              ; preds = %926, %914
  %928 = load ptr, ptr %9, align 8, !tbaa !99
  store ptr %928, ptr %915, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #27
  br label %551

929:                                              ; preds = %21
  %930 = load i32, ptr %0, align 8, !tbaa !90
  %931 = and i32 %930, 4
  %932 = icmp eq i32 %931, 0
  %933 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %934 = load ptr, ptr %933, align 8, !tbaa !46
  br i1 %932, label %935, label %964

935:                                              ; preds = %929
  %936 = load ptr, ptr %934, align 8, !tbaa !115
  %937 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %934, i64 0, i32 1
  %938 = load i32, ptr %937, align 8, !tbaa !71
  %939 = sext i32 %938 to i64
  %940 = icmp eq i32 %938, 0
  br i1 %940, label %551, label %941

941:                                              ; preds = %935
  %942 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %943 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %944 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %945 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %946 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %947

947:                                              ; preds = %941, %958
  %948 = phi i64 [ 0, %941 ], [ %962, %958 ]
  %949 = getelementptr inbounds i8, ptr %936, i64 %948
  %950 = load i8, ptr %949, align 1, !tbaa !46
  %951 = load i64, ptr %942, align 8, !tbaa !92
  %952 = icmp eq i64 %951, 255
  br i1 %952, label %953, label %958

953:                                              ; preds = %947
  %954 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %951
  store i8 0, ptr %954, align 1, !tbaa !46
  %955 = load ptr, ptr %944, align 8, !tbaa !94
  %956 = load i64, ptr %942, align 8, !tbaa !92
  %957 = load ptr, ptr %945, align 8, !tbaa !95
  tail call void %955(ptr noundef nonnull %943, i64 noundef %956, ptr noundef %957) #27
  store i64 0, ptr %942, align 8, !tbaa !92
  br label %958

958:                                              ; preds = %953, %947
  %959 = load i64, ptr %942, align 8, !tbaa !92
  %960 = add i64 %959, 1
  store i64 %960, ptr %942, align 8, !tbaa !92
  %961 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %959
  store i8 %950, ptr %961, align 1, !tbaa !46
  store i8 %950, ptr %946, align 8, !tbaa !93
  %962 = add nuw i64 %948, 1
  %963 = icmp eq i64 %962, %939
  br i1 %963, label %551, label %947, !llvm.loop !97

964:                                              ; preds = %929
  %965 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %934, i64 0, i32 2
  %966 = load ptr, ptr %965, align 8, !tbaa !116
  %967 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %934, i64 0, i32 3
  %968 = load i32, ptr %967, align 8, !tbaa !117
  %969 = sext i32 %968 to i64
  %970 = icmp eq i32 %968, 0
  br i1 %970, label %551, label %971

971:                                              ; preds = %964
  %972 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %973 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %974 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %975 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %976 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %977

977:                                              ; preds = %971, %988
  %978 = phi i64 [ 0, %971 ], [ %992, %988 ]
  %979 = getelementptr inbounds i8, ptr %966, i64 %978
  %980 = load i8, ptr %979, align 1, !tbaa !46
  %981 = load i64, ptr %972, align 8, !tbaa !92
  %982 = icmp eq i64 %981, 255
  br i1 %982, label %983, label %988

983:                                              ; preds = %977
  %984 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %981
  store i8 0, ptr %984, align 1, !tbaa !46
  %985 = load ptr, ptr %974, align 8, !tbaa !94
  %986 = load i64, ptr %972, align 8, !tbaa !92
  %987 = load ptr, ptr %975, align 8, !tbaa !95
  tail call void %985(ptr noundef nonnull %973, i64 noundef %986, ptr noundef %987) #27
  store i64 0, ptr %972, align 8, !tbaa !92
  br label %988

988:                                              ; preds = %983, %977
  %989 = load i64, ptr %972, align 8, !tbaa !92
  %990 = add i64 %989, 1
  store i64 %990, ptr %972, align 8, !tbaa !92
  %991 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %989
  store i8 %980, ptr %991, align 1, !tbaa !46
  store i8 %980, ptr %976, align 8, !tbaa !93
  %992 = add nuw i64 %978, 1
  %993 = icmp eq i64 %992, %969
  br i1 %993, label %551, label %977, !llvm.loop !97

994:                                              ; preds = %21
  %995 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %996 = load ptr, ptr %995, align 8, !tbaa !46
  br label %13

997:                                              ; preds = %21
  %998 = load i32, ptr %0, align 8, !tbaa !90
  %999 = and i32 %998, 32
  %1000 = icmp eq i32 %999, 0
  br i1 %1000, label %1004, label %1001

1001:                                             ; preds = %997
  %1002 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 7
  %1003 = load ptr, ptr %1002, align 8, !tbaa !98
  tail call fastcc void @d_print_function_type(ptr noundef nonnull %0, ptr noundef nonnull %14, ptr noundef %1003)
  br label %1004

1004:                                             ; preds = %1001, %997
  %1005 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %1006 = load ptr, ptr %1005, align 8, !tbaa !46
  %1007 = icmp eq ptr %1006, null
  br i1 %1007, label %1042, label %1008

1008:                                             ; preds = %1004
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #27
  %1009 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 7
  %1010 = load ptr, ptr %1009, align 8, !tbaa !98
  store ptr %1010, ptr %10, align 8, !tbaa !99
  store ptr %10, ptr %1009, align 8, !tbaa !98
  %1011 = getelementptr inbounds %struct.d_print_mod, ptr %10, i64 0, i32 1
  store ptr %14, ptr %1011, align 8, !tbaa !101
  %1012 = getelementptr inbounds %struct.d_print_mod, ptr %10, i64 0, i32 2
  store i32 0, ptr %1012, align 8, !tbaa !102
  %1013 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 6
  %1014 = load ptr, ptr %1013, align 8, !tbaa !103
  %1015 = getelementptr inbounds %struct.d_print_mod, ptr %10, i64 0, i32 3
  store ptr %1014, ptr %1015, align 8, !tbaa !104
  %1016 = load ptr, ptr %1005, align 8, !tbaa !46
  call fastcc void @d_print_comp(ptr noundef nonnull %0, ptr noundef %1016)
  %1017 = load ptr, ptr %10, align 8, !tbaa !99
  store ptr %1017, ptr %1009, align 8, !tbaa !98
  %1018 = load i32, ptr %1012, align 8, !tbaa !102
  %1019 = icmp eq i32 %1018, 0
  br i1 %1019, label %1020, label %2310

1020:                                             ; preds = %1008
  %1021 = load i32, ptr %0, align 8, !tbaa !90
  %1022 = and i32 %1021, 32
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1024, label %1041

1024:                                             ; preds = %1020
  %1025 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %1026 = load i64, ptr %1025, align 8, !tbaa !92
  %1027 = icmp eq i64 %1026, 255
  br i1 %1027, label %1028, label %1036

1028:                                             ; preds = %1024
  %1029 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1030 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1026
  store i8 0, ptr %1030, align 1, !tbaa !46
  %1031 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1032 = load ptr, ptr %1031, align 8, !tbaa !94
  %1033 = load i64, ptr %1025, align 8, !tbaa !92
  %1034 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1035 = load ptr, ptr %1034, align 8, !tbaa !95
  call void %1032(ptr noundef nonnull %1029, i64 noundef %1033, ptr noundef %1035) #27
  store i64 0, ptr %1025, align 8, !tbaa !92
  br label %1036

1036:                                             ; preds = %1024, %1028
  %1037 = load i64, ptr %1025, align 8, !tbaa !92
  %1038 = add i64 %1037, 1
  store i64 %1038, ptr %1025, align 8, !tbaa !92
  %1039 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1037
  store i8 32, ptr %1039, align 1, !tbaa !46
  %1040 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 32, ptr %1040, align 8, !tbaa !93
  br label %1041

1041:                                             ; preds = %1020, %1036
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #27
  br i1 %1019, label %1042, label %551

1042:                                             ; preds = %1041, %1004
  %1043 = load i32, ptr %0, align 8, !tbaa !90
  %1044 = and i32 %1043, 32
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1046, label %551

1046:                                             ; preds = %1042
  %1047 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 7
  %1048 = load ptr, ptr %1047, align 8, !tbaa !98
  call fastcc void @d_print_function_type(ptr noundef nonnull %0, ptr noundef nonnull %14, ptr noundef %1048)
  br label %551

1049:                                             ; preds = %21
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %11) #27
  %1050 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 7
  %1051 = load ptr, ptr %1050, align 8, !tbaa !98
  store ptr %1051, ptr %11, align 16, !tbaa !99
  store ptr %11, ptr %1050, align 8, !tbaa !98
  %1052 = getelementptr inbounds %struct.d_print_mod, ptr %11, i64 0, i32 1
  store ptr %14, ptr %1052, align 8, !tbaa !101
  %1053 = getelementptr inbounds %struct.d_print_mod, ptr %11, i64 0, i32 2
  store i32 0, ptr %1053, align 16, !tbaa !102
  %1054 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 6
  %1055 = load ptr, ptr %1054, align 8, !tbaa !103
  %1056 = getelementptr inbounds %struct.d_print_mod, ptr %11, i64 0, i32 3
  store ptr %1055, ptr %1056, align 8, !tbaa !104
  %1057 = icmp eq ptr %1051, null
  br i1 %1057, label %1082, label %1058

1058:                                             ; preds = %1049, %1078
  %1059 = phi ptr [ %1080, %1078 ], [ %1051, %1049 ]
  %1060 = phi i32 [ %1079, %1078 ], [ 1, %1049 ]
  %1061 = getelementptr inbounds %struct.d_print_mod, ptr %1059, i64 0, i32 1
  %1062 = load ptr, ptr %1061, align 8, !tbaa !101
  %1063 = load i32, ptr %1062, align 8, !tbaa !53
  %1064 = add i32 %1063, -23
  %1065 = icmp ult i32 %1064, 3
  br i1 %1065, label %1066, label %1082

1066:                                             ; preds = %1058
  %1067 = getelementptr inbounds %struct.d_print_mod, ptr %1059, i64 0, i32 2
  %1068 = load i32, ptr %1067, align 8, !tbaa !102
  %1069 = icmp eq i32 %1068, 0
  br i1 %1069, label %1070, label %1078

1070:                                             ; preds = %1066
  %1071 = icmp ugt i32 %1060, 3
  br i1 %1071, label %1072, label %1073

1072:                                             ; preds = %1070
  store i32 1, ptr %16, align 8, !tbaa !96
  br label %1101

1073:                                             ; preds = %1070
  %1074 = zext nneg i32 %1060 to i64
  %1075 = getelementptr inbounds [4 x %struct.d_print_mod], ptr %11, i64 0, i64 %1074
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %1075, ptr noundef nonnull align 8 dereferenceable(32) %1059, i64 32, i1 false), !tbaa.struct !109
  %1076 = load ptr, ptr %1050, align 8, !tbaa !98
  store ptr %1076, ptr %1075, align 16, !tbaa !99
  store ptr %1075, ptr %1050, align 8, !tbaa !98
  store i32 1, ptr %1067, align 8, !tbaa !102
  %1077 = add nuw nsw i32 %1060, 1
  br label %1078

1078:                                             ; preds = %1073, %1066
  %1079 = phi i32 [ %1060, %1066 ], [ %1077, %1073 ]
  %1080 = load ptr, ptr %1059, align 8, !tbaa !99
  %1081 = icmp eq ptr %1080, null
  br i1 %1081, label %1082, label %1058, !llvm.loop !118

1082:                                             ; preds = %1078, %1058, %1049
  %1083 = phi i32 [ 1, %1049 ], [ %1079, %1078 ], [ %1060, %1058 ]
  %1084 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %1085 = load ptr, ptr %1084, align 8, !tbaa !46
  call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %1085)
  store ptr %1051, ptr %1050, align 8, !tbaa !98
  %1086 = load i32, ptr %1053, align 16, !tbaa !102
  %1087 = icmp eq i32 %1086, 0
  br i1 %1087, label %1088, label %1101

1088:                                             ; preds = %1082
  %1089 = icmp ugt i32 %1083, 1
  br i1 %1089, label %1090, label %1099

1090:                                             ; preds = %1088
  %1091 = zext i32 %1083 to i64
  br label %1092

1092:                                             ; preds = %1090, %1092
  %1093 = phi i64 [ %1091, %1090 ], [ %1095, %1092 ]
  %1094 = add nsw i64 %1093, -1
  %1095 = add nsw i64 %1093, -1
  %1096 = getelementptr inbounds [4 x %struct.d_print_mod], ptr %11, i64 0, i64 %1094, i32 1
  %1097 = load ptr, ptr %1096, align 8, !tbaa !101
  call fastcc void @d_print_mod(ptr noundef %0, ptr noundef %1097)
  %1098 = icmp ugt i64 %1094, 1
  br i1 %1098, label %1092, label %1099, !llvm.loop !119

1099:                                             ; preds = %1092, %1088
  %1100 = load ptr, ptr %1050, align 8, !tbaa !98
  call fastcc void @d_print_array_type(ptr noundef %0, ptr noundef nonnull %14, ptr noundef %1100)
  br label %1101

1101:                                             ; preds = %1082, %1099, %1072
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %11) #27
  br label %551

1102:                                             ; preds = %21, %21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #27
  %1103 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 7
  %1104 = load ptr, ptr %1103, align 8, !tbaa !98
  store ptr %1104, ptr %12, align 8, !tbaa !99
  store ptr %12, ptr %1103, align 8, !tbaa !98
  %1105 = getelementptr inbounds %struct.d_print_mod, ptr %12, i64 0, i32 1
  store ptr %14, ptr %1105, align 8, !tbaa !101
  %1106 = getelementptr inbounds %struct.d_print_mod, ptr %12, i64 0, i32 2
  store i32 0, ptr %1106, align 8, !tbaa !102
  %1107 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 6
  %1108 = load ptr, ptr %1107, align 8, !tbaa !103
  %1109 = getelementptr inbounds %struct.d_print_mod, ptr %12, i64 0, i32 3
  store ptr %1108, ptr %1109, align 8, !tbaa !104
  %1110 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %1111 = load ptr, ptr %1110, align 8, !tbaa !46
  call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %1111)
  %1112 = load i32, ptr %1106, align 8, !tbaa !102
  %1113 = icmp eq i32 %1112, 0
  br i1 %1113, label %1114, label %1115

1114:                                             ; preds = %1102
  call fastcc void @d_print_mod(ptr noundef %0, ptr noundef nonnull %14)
  br label %1115

1115:                                             ; preds = %1114, %1102
  %1116 = load ptr, ptr %12, align 8, !tbaa !99
  store ptr %1116, ptr %1103, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #27
  br label %551

1117:                                             ; preds = %21
  %1118 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %1119 = getelementptr inbounds i8, ptr %14, i64 18
  %1120 = load i16, ptr %1119, align 2, !tbaa !46
  %1121 = icmp eq i16 %1120, 0
  br i1 %1121, label %1145, label %1122

1122:                                             ; preds = %1117
  %1123 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %1124 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1125 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1126 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1127 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %1128

1128:                                             ; preds = %1122, %1139
  %1129 = phi i64 [ 0, %1122 ], [ %1143, %1139 ]
  %1130 = getelementptr inbounds i8, ptr @.str.163, i64 %1129
  %1131 = load i8, ptr %1130, align 1, !tbaa !46
  %1132 = load i64, ptr %1123, align 8, !tbaa !92
  %1133 = icmp eq i64 %1132, 255
  br i1 %1133, label %1134, label %1139

1134:                                             ; preds = %1128
  %1135 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1132
  store i8 0, ptr %1135, align 1, !tbaa !46
  %1136 = load ptr, ptr %1125, align 8, !tbaa !94
  %1137 = load i64, ptr %1123, align 8, !tbaa !92
  %1138 = load ptr, ptr %1126, align 8, !tbaa !95
  tail call void %1136(ptr noundef nonnull %1124, i64 noundef %1137, ptr noundef %1138) #27
  store i64 0, ptr %1123, align 8, !tbaa !92
  br label %1139

1139:                                             ; preds = %1134, %1128
  %1140 = load i64, ptr %1123, align 8, !tbaa !92
  %1141 = add i64 %1140, 1
  store i64 %1141, ptr %1123, align 8, !tbaa !92
  %1142 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1140
  store i8 %1131, ptr %1142, align 1, !tbaa !46
  store i8 %1131, ptr %1127, align 8, !tbaa !93
  %1143 = add nuw nsw i64 %1129, 1
  %1144 = icmp eq i64 %1143, 5
  br i1 %1144, label %1145, label %1128, !llvm.loop !97

1145:                                             ; preds = %1139, %1117
  %1146 = load ptr, ptr %1118, align 8, !tbaa !46
  %1147 = getelementptr inbounds %struct.demangle_component, ptr %1146, i64 0, i32 1
  %1148 = load ptr, ptr %1147, align 8, !tbaa !46
  %1149 = icmp eq ptr %1148, getelementptr inbounds ([32 x %struct.demangle_builtin_type_info], ptr @cplus_demangle_builtin_types, i64 0, i64 8)
  br i1 %1149, label %1167, label %1150

1150:                                             ; preds = %1145
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %1146)
  %1151 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %1152 = load i64, ptr %1151, align 8, !tbaa !92
  %1153 = icmp eq i64 %1152, 255
  br i1 %1153, label %1154, label %1162

1154:                                             ; preds = %1150
  %1155 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1156 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1152
  store i8 0, ptr %1156, align 1, !tbaa !46
  %1157 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1158 = load ptr, ptr %1157, align 8, !tbaa !94
  %1159 = load i64, ptr %1151, align 8, !tbaa !92
  %1160 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1161 = load ptr, ptr %1160, align 8, !tbaa !95
  tail call void %1158(ptr noundef nonnull %1155, i64 noundef %1159, ptr noundef %1161) #27
  store i64 0, ptr %1151, align 8, !tbaa !92
  br label %1162

1162:                                             ; preds = %1150, %1154
  %1163 = load i64, ptr %1151, align 8, !tbaa !92
  %1164 = add i64 %1163, 1
  store i64 %1164, ptr %1151, align 8, !tbaa !92
  %1165 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1163
  store i8 32, ptr %1165, align 1, !tbaa !46
  %1166 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 32, ptr %1166, align 8, !tbaa !93
  br label %1167

1167:                                             ; preds = %1162, %1145
  %1168 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %1169 = load i16, ptr %1168, align 8, !tbaa !46
  %1170 = icmp eq i16 %1169, 0
  %1171 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %1172 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1173 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1174 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1175 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br i1 %1170, label %1193, label %1176

1176:                                             ; preds = %1167, %1187
  %1177 = phi i64 [ %1191, %1187 ], [ 0, %1167 ]
  %1178 = getelementptr inbounds i8, ptr @.str.164, i64 %1177
  %1179 = load i8, ptr %1178, align 1, !tbaa !46
  %1180 = load i64, ptr %1171, align 8, !tbaa !92
  %1181 = icmp eq i64 %1180, 255
  br i1 %1181, label %1182, label %1187

1182:                                             ; preds = %1176
  %1183 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1180
  store i8 0, ptr %1183, align 1, !tbaa !46
  %1184 = load ptr, ptr %1173, align 8, !tbaa !94
  %1185 = load i64, ptr %1171, align 8, !tbaa !92
  %1186 = load ptr, ptr %1174, align 8, !tbaa !95
  tail call void %1184(ptr noundef nonnull %1172, i64 noundef %1185, ptr noundef %1186) #27
  store i64 0, ptr %1171, align 8, !tbaa !92
  br label %1187

1187:                                             ; preds = %1182, %1176
  %1188 = load i64, ptr %1171, align 8, !tbaa !92
  %1189 = add i64 %1188, 1
  store i64 %1189, ptr %1171, align 8, !tbaa !92
  %1190 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1188
  store i8 %1179, ptr %1190, align 1, !tbaa !46
  store i8 %1179, ptr %1175, align 8, !tbaa !93
  %1191 = add nuw nsw i64 %1177, 1
  %1192 = icmp eq i64 %1191, 6
  br i1 %1192, label %551, label %1176, !llvm.loop !97

1193:                                             ; preds = %1167, %1204
  %1194 = phi i64 [ %1208, %1204 ], [ 0, %1167 ]
  %1195 = getelementptr inbounds i8, ptr @.str.165, i64 %1194
  %1196 = load i8, ptr %1195, align 1, !tbaa !46
  %1197 = load i64, ptr %1171, align 8, !tbaa !92
  %1198 = icmp eq i64 %1197, 255
  br i1 %1198, label %1199, label %1204

1199:                                             ; preds = %1193
  %1200 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1197
  store i8 0, ptr %1200, align 1, !tbaa !46
  %1201 = load ptr, ptr %1173, align 8, !tbaa !94
  %1202 = load i64, ptr %1171, align 8, !tbaa !92
  %1203 = load ptr, ptr %1174, align 8, !tbaa !95
  tail call void %1201(ptr noundef nonnull %1172, i64 noundef %1202, ptr noundef %1203) #27
  store i64 0, ptr %1171, align 8, !tbaa !92
  br label %1204

1204:                                             ; preds = %1199, %1193
  %1205 = load i64, ptr %1171, align 8, !tbaa !92
  %1206 = add i64 %1205, 1
  store i64 %1206, ptr %1171, align 8, !tbaa !92
  %1207 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1205
  store i8 %1196, ptr %1207, align 1, !tbaa !46
  store i8 %1196, ptr %1175, align 8, !tbaa !93
  %1208 = add nuw nsw i64 %1194, 1
  %1209 = icmp eq i64 %1208, 6
  br i1 %1209, label %551, label %1193, !llvm.loop !97

1210:                                             ; preds = %21, %21
  %1211 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %1212 = load ptr, ptr %1211, align 8, !tbaa !46
  %1213 = icmp eq ptr %1212, null
  br i1 %1213, label %1215, label %1214

1214:                                             ; preds = %1210
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef nonnull %1212)
  br label %1215

1215:                                             ; preds = %1214, %1210
  %1216 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %1217 = load ptr, ptr %1216, align 8, !tbaa !46
  %1218 = icmp eq ptr %1217, null
  br i1 %1218, label %551, label %1219

1219:                                             ; preds = %1215
  %1220 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %1221 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1222 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1223 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1224 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %1225

1225:                                             ; preds = %1219, %1236
  %1226 = phi i64 [ 0, %1219 ], [ %1240, %1236 ]
  %1227 = getelementptr inbounds i8, ptr @.str.166, i64 %1226
  %1228 = load i8, ptr %1227, align 1, !tbaa !46
  %1229 = load i64, ptr %1220, align 8, !tbaa !92
  %1230 = icmp eq i64 %1229, 255
  br i1 %1230, label %1231, label %1236

1231:                                             ; preds = %1225
  %1232 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1229
  store i8 0, ptr %1232, align 1, !tbaa !46
  %1233 = load ptr, ptr %1222, align 8, !tbaa !94
  %1234 = load i64, ptr %1220, align 8, !tbaa !92
  %1235 = load ptr, ptr %1223, align 8, !tbaa !95
  tail call void %1233(ptr noundef nonnull %1221, i64 noundef %1234, ptr noundef %1235) #27
  store i64 0, ptr %1220, align 8, !tbaa !92
  br label %1236

1236:                                             ; preds = %1231, %1225
  %1237 = load i64, ptr %1220, align 8, !tbaa !92
  %1238 = add i64 %1237, 1
  store i64 %1238, ptr %1220, align 8, !tbaa !92
  %1239 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1237
  store i8 %1228, ptr %1239, align 1, !tbaa !46
  store i8 %1228, ptr %1224, align 8, !tbaa !93
  %1240 = add nuw nsw i64 %1226, 1
  %1241 = icmp eq i64 %1226, 0
  br i1 %1241, label %1225, label %1242, !llvm.loop !97

1242:                                             ; preds = %1236
  %1243 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %1244 = load i64, ptr %1243, align 8, !tbaa !92
  %1245 = load ptr, ptr %1216, align 8, !tbaa !46
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %1245)
  %1246 = load i64, ptr %1243, align 8, !tbaa !92
  %1247 = icmp eq i64 %1246, %1244
  br i1 %1247, label %1248, label %551

1248:                                             ; preds = %1242
  %1249 = add i64 %1246, -2
  store i64 %1249, ptr %1243, align 8, !tbaa !92
  br label %551

1250:                                             ; preds = %77, %1261
  %1251 = phi i64 [ 0, %77 ], [ %1265, %1261 ]
  %1252 = getelementptr inbounds i8, ptr @.str.167, i64 %1251
  %1253 = load i8, ptr %1252, align 1, !tbaa !46
  %1254 = load i64, ptr %78, align 8, !tbaa !92
  %1255 = icmp eq i64 %1254, 255
  br i1 %1255, label %1256, label %1261

1256:                                             ; preds = %1250
  %1257 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1254
  store i8 0, ptr %1257, align 1, !tbaa !46
  %1258 = load ptr, ptr %80, align 8, !tbaa !94
  %1259 = load i64, ptr %78, align 8, !tbaa !92
  %1260 = load ptr, ptr %81, align 8, !tbaa !95
  tail call void %1258(ptr noundef nonnull %79, i64 noundef %1259, ptr noundef %1260) #27
  store i64 0, ptr %78, align 8, !tbaa !92
  br label %1261

1261:                                             ; preds = %1256, %1250
  %1262 = load i64, ptr %78, align 8, !tbaa !92
  %1263 = add i64 %1262, 1
  store i64 %1263, ptr %78, align 8, !tbaa !92
  %1264 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1262
  store i8 %1253, ptr %1264, align 1, !tbaa !46
  store i8 %1253, ptr %82, align 8, !tbaa !93
  %1265 = add nuw nsw i64 %1251, 1
  %1266 = icmp eq i64 %1265, 8
  br i1 %1266, label %1267, label %1250, !llvm.loop !97

1267:                                             ; preds = %1261
  %1268 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %1269 = load ptr, ptr %1268, align 8, !tbaa !46
  %1270 = getelementptr inbounds %struct.demangle_operator_info, ptr %1269, i64 0, i32 1
  %1271 = load ptr, ptr %1270, align 8, !tbaa !120
  %1272 = load i8, ptr %1271, align 1, !tbaa !46
  %1273 = add i8 %1272, -97
  %1274 = icmp ult i8 %1273, 26
  br i1 %1274, label %1275, label %1292

1275:                                             ; preds = %1267
  %1276 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %1277 = load i64, ptr %1276, align 8, !tbaa !92
  %1278 = icmp eq i64 %1277, 255
  br i1 %1278, label %1279, label %1287

1279:                                             ; preds = %1275
  %1280 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1281 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1277
  store i8 0, ptr %1281, align 1, !tbaa !46
  %1282 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1283 = load ptr, ptr %1282, align 8, !tbaa !94
  %1284 = load i64, ptr %1276, align 8, !tbaa !92
  %1285 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1286 = load ptr, ptr %1285, align 8, !tbaa !95
  tail call void %1283(ptr noundef nonnull %1280, i64 noundef %1284, ptr noundef %1286) #27
  store i64 0, ptr %1276, align 8, !tbaa !92
  br label %1287

1287:                                             ; preds = %1275, %1279
  %1288 = load i64, ptr %1276, align 8, !tbaa !92
  %1289 = add i64 %1288, 1
  store i64 %1289, ptr %1276, align 8, !tbaa !92
  %1290 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1288
  store i8 32, ptr %1290, align 1, !tbaa !46
  %1291 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 32, ptr %1291, align 8, !tbaa !93
  br label %1292

1292:                                             ; preds = %1287, %1267
  %1293 = load ptr, ptr %1268, align 8, !tbaa !46
  %1294 = getelementptr inbounds %struct.demangle_operator_info, ptr %1293, i64 0, i32 1
  %1295 = load ptr, ptr %1294, align 8, !tbaa !120
  %1296 = getelementptr inbounds %struct.demangle_operator_info, ptr %1293, i64 0, i32 2
  %1297 = load i32, ptr %1296, align 8, !tbaa !86
  %1298 = sext i32 %1297 to i64
  %1299 = icmp eq i32 %1297, 0
  br i1 %1299, label %551, label %1300

1300:                                             ; preds = %1292
  %1301 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %1302 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1303 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1304 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1305 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %1306

1306:                                             ; preds = %1300, %1317
  %1307 = phi i64 [ 0, %1300 ], [ %1321, %1317 ]
  %1308 = getelementptr inbounds i8, ptr %1295, i64 %1307
  %1309 = load i8, ptr %1308, align 1, !tbaa !46
  %1310 = load i64, ptr %1301, align 8, !tbaa !92
  %1311 = icmp eq i64 %1310, 255
  br i1 %1311, label %1312, label %1317

1312:                                             ; preds = %1306
  %1313 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1310
  store i8 0, ptr %1313, align 1, !tbaa !46
  %1314 = load ptr, ptr %1303, align 8, !tbaa !94
  %1315 = load i64, ptr %1301, align 8, !tbaa !92
  %1316 = load ptr, ptr %1304, align 8, !tbaa !95
  tail call void %1314(ptr noundef nonnull %1302, i64 noundef %1315, ptr noundef %1316) #27
  store i64 0, ptr %1301, align 8, !tbaa !92
  br label %1317

1317:                                             ; preds = %1312, %1306
  %1318 = load i64, ptr %1301, align 8, !tbaa !92
  %1319 = add i64 %1318, 1
  store i64 %1319, ptr %1301, align 8, !tbaa !92
  %1320 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1318
  store i8 %1309, ptr %1320, align 1, !tbaa !46
  store i8 %1309, ptr %1305, align 8, !tbaa !93
  %1321 = add nuw i64 %1307, 1
  %1322 = icmp eq i64 %1321, %1298
  br i1 %1322, label %551, label %1306, !llvm.loop !97

1323:                                             ; preds = %71, %1334
  %1324 = phi i64 [ 0, %71 ], [ %1338, %1334 ]
  %1325 = getelementptr inbounds i8, ptr @.str.168, i64 %1324
  %1326 = load i8, ptr %1325, align 1, !tbaa !46
  %1327 = load i64, ptr %72, align 8, !tbaa !92
  %1328 = icmp eq i64 %1327, 255
  br i1 %1328, label %1329, label %1334

1329:                                             ; preds = %1323
  %1330 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1327
  store i8 0, ptr %1330, align 1, !tbaa !46
  %1331 = load ptr, ptr %74, align 8, !tbaa !94
  %1332 = load i64, ptr %72, align 8, !tbaa !92
  %1333 = load ptr, ptr %75, align 8, !tbaa !95
  tail call void %1331(ptr noundef nonnull %73, i64 noundef %1332, ptr noundef %1333) #27
  store i64 0, ptr %72, align 8, !tbaa !92
  br label %1334

1334:                                             ; preds = %1329, %1323
  %1335 = load i64, ptr %72, align 8, !tbaa !92
  %1336 = add i64 %1335, 1
  store i64 %1336, ptr %72, align 8, !tbaa !92
  %1337 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1335
  store i8 %1326, ptr %1337, align 1, !tbaa !46
  store i8 %1326, ptr %76, align 8, !tbaa !93
  %1338 = add nuw nsw i64 %1324, 1
  %1339 = icmp eq i64 %1338, 9
  br i1 %1339, label %1340, label %1323, !llvm.loop !97

1340:                                             ; preds = %1334
  %1341 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %1342 = load ptr, ptr %1341, align 8, !tbaa !46
  br label %13

1343:                                             ; preds = %65, %1354
  %1344 = phi i64 [ 0, %65 ], [ %1358, %1354 ]
  %1345 = getelementptr inbounds i8, ptr @.str.168, i64 %1344
  %1346 = load i8, ptr %1345, align 1, !tbaa !46
  %1347 = load i64, ptr %66, align 8, !tbaa !92
  %1348 = icmp eq i64 %1347, 255
  br i1 %1348, label %1349, label %1354

1349:                                             ; preds = %1343
  %1350 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1347
  store i8 0, ptr %1350, align 1, !tbaa !46
  %1351 = load ptr, ptr %68, align 8, !tbaa !94
  %1352 = load i64, ptr %66, align 8, !tbaa !92
  %1353 = load ptr, ptr %69, align 8, !tbaa !95
  tail call void %1351(ptr noundef nonnull %67, i64 noundef %1352, ptr noundef %1353) #27
  store i64 0, ptr %66, align 8, !tbaa !92
  br label %1354

1354:                                             ; preds = %1349, %1343
  %1355 = load i64, ptr %66, align 8, !tbaa !92
  %1356 = add i64 %1355, 1
  store i64 %1356, ptr %66, align 8, !tbaa !92
  %1357 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1355
  store i8 %1346, ptr %1357, align 1, !tbaa !46
  store i8 %1346, ptr %70, align 8, !tbaa !93
  %1358 = add nuw nsw i64 %1344, 1
  %1359 = icmp eq i64 %1358, 9
  br i1 %1359, label %1360, label %1343, !llvm.loop !97

1360:                                             ; preds = %1354
  tail call fastcc void @d_print_cast(ptr noundef %0, ptr noundef nonnull %14)
  br label %551

1361:                                             ; preds = %21
  %1362 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %1363 = load ptr, ptr %1362, align 8, !tbaa !46
  %1364 = load i32, ptr %1363, align 8, !tbaa !53
  %1365 = icmp eq i32 %1364, 46
  br i1 %1365, label %1367, label %1366

1366:                                             ; preds = %1361
  tail call fastcc void @d_print_expr_op(ptr noundef %0, ptr noundef nonnull %1363)
  br label %1399

1367:                                             ; preds = %1361
  %1368 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %1369 = load i64, ptr %1368, align 8, !tbaa !92
  %1370 = icmp eq i64 %1369, 255
  br i1 %1370, label %1371, label %1379

1371:                                             ; preds = %1367
  %1372 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1373 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1369
  store i8 0, ptr %1373, align 1, !tbaa !46
  %1374 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1375 = load ptr, ptr %1374, align 8, !tbaa !94
  %1376 = load i64, ptr %1368, align 8, !tbaa !92
  %1377 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1378 = load ptr, ptr %1377, align 8, !tbaa !95
  tail call void %1375(ptr noundef nonnull %1372, i64 noundef %1376, ptr noundef %1378) #27
  store i64 0, ptr %1368, align 8, !tbaa !92
  br label %1379

1379:                                             ; preds = %1367, %1371
  %1380 = load i64, ptr %1368, align 8, !tbaa !92
  %1381 = add i64 %1380, 1
  store i64 %1381, ptr %1368, align 8, !tbaa !92
  %1382 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1380
  store i8 40, ptr %1382, align 1, !tbaa !46
  %1383 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 40, ptr %1383, align 8, !tbaa !93
  %1384 = load ptr, ptr %1362, align 8, !tbaa !46
  tail call fastcc void @d_print_cast(ptr noundef %0, ptr noundef %1384)
  %1385 = load i64, ptr %1368, align 8, !tbaa !92
  %1386 = icmp eq i64 %1385, 255
  br i1 %1386, label %1387, label %1395

1387:                                             ; preds = %1379
  %1388 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1389 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1385
  store i8 0, ptr %1389, align 1, !tbaa !46
  %1390 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1391 = load ptr, ptr %1390, align 8, !tbaa !94
  %1392 = load i64, ptr %1368, align 8, !tbaa !92
  %1393 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1394 = load ptr, ptr %1393, align 8, !tbaa !95
  tail call void %1391(ptr noundef nonnull %1388, i64 noundef %1392, ptr noundef %1394) #27
  store i64 0, ptr %1368, align 8, !tbaa !92
  br label %1395

1395:                                             ; preds = %1379, %1387
  %1396 = load i64, ptr %1368, align 8, !tbaa !92
  %1397 = add i64 %1396, 1
  store i64 %1397, ptr %1368, align 8, !tbaa !92
  %1398 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1396
  store i8 41, ptr %1398, align 1, !tbaa !46
  store i8 41, ptr %1383, align 8, !tbaa !93
  br label %1399

1399:                                             ; preds = %1395, %1366
  %1400 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %1401 = load ptr, ptr %1400, align 8, !tbaa !46
  tail call fastcc void @d_print_subexpr(ptr noundef %0, ptr noundef %1401)
  br label %551

1402:                                             ; preds = %21
  %1403 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %1404 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %1405 = load ptr, ptr %1404, align 8, !tbaa !46
  %1406 = load i32, ptr %1405, align 8, !tbaa !53
  %1407 = icmp eq i32 %1406, 49
  br i1 %1407, label %1409, label %1408

1408:                                             ; preds = %1402
  store i32 1, ptr %16, align 8, !tbaa !96
  br label %551

1409:                                             ; preds = %1402
  %1410 = load ptr, ptr %1403, align 8, !tbaa !46
  %1411 = load i32, ptr %1410, align 8, !tbaa !53
  %1412 = icmp eq i32 %1411, 44
  br i1 %1412, label %1413, label %1441

1413:                                             ; preds = %1409
  %1414 = getelementptr inbounds %struct.demangle_component, ptr %1410, i64 0, i32 1
  %1415 = load ptr, ptr %1414, align 8, !tbaa !46
  %1416 = getelementptr inbounds %struct.demangle_operator_info, ptr %1415, i64 0, i32 2
  %1417 = load i32, ptr %1416, align 8, !tbaa !86
  %1418 = icmp eq i32 %1417, 1
  br i1 %1418, label %1419, label %1441

1419:                                             ; preds = %1413
  %1420 = getelementptr inbounds %struct.demangle_operator_info, ptr %1415, i64 0, i32 1
  %1421 = load ptr, ptr %1420, align 8, !tbaa !120
  %1422 = load i8, ptr %1421, align 1, !tbaa !46
  %1423 = icmp eq i8 %1422, 62
  br i1 %1423, label %1424, label %1441

1424:                                             ; preds = %1419
  %1425 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %1426 = load i64, ptr %1425, align 8, !tbaa !92
  %1427 = icmp eq i64 %1426, 255
  br i1 %1427, label %1428, label %1436

1428:                                             ; preds = %1424
  %1429 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1430 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1426
  store i8 0, ptr %1430, align 1, !tbaa !46
  %1431 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1432 = load ptr, ptr %1431, align 8, !tbaa !94
  %1433 = load i64, ptr %1425, align 8, !tbaa !92
  %1434 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1435 = load ptr, ptr %1434, align 8, !tbaa !95
  tail call void %1432(ptr noundef nonnull %1429, i64 noundef %1433, ptr noundef %1435) #27
  store i64 0, ptr %1425, align 8, !tbaa !92
  br label %1436

1436:                                             ; preds = %1424, %1428
  %1437 = load i64, ptr %1425, align 8, !tbaa !92
  %1438 = add i64 %1437, 1
  store i64 %1438, ptr %1425, align 8, !tbaa !92
  %1439 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1437
  store i8 40, ptr %1439, align 1, !tbaa !46
  %1440 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 40, ptr %1440, align 8, !tbaa !93
  br label %1441

1441:                                             ; preds = %1436, %1419, %1413, %1409
  %1442 = load ptr, ptr %1404, align 8, !tbaa !46
  %1443 = getelementptr inbounds %struct.demangle_component, ptr %1442, i64 0, i32 1
  %1444 = load ptr, ptr %1443, align 8, !tbaa !46
  tail call fastcc void @d_print_subexpr(ptr noundef %0, ptr noundef %1444)
  %1445 = load ptr, ptr %1403, align 8, !tbaa !46
  %1446 = getelementptr inbounds %struct.demangle_component, ptr %1445, i64 0, i32 1
  %1447 = load ptr, ptr %1446, align 8, !tbaa !46
  %1448 = load ptr, ptr %1447, align 8, !tbaa !88
  %1449 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1448, ptr noundef nonnull dereferenceable(3) @.str.37)
  %1450 = icmp eq i32 %1449, 0
  br i1 %1450, label %1451, label %1485

1451:                                             ; preds = %1441
  %1452 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %1453 = load i64, ptr %1452, align 8, !tbaa !92
  %1454 = icmp eq i64 %1453, 255
  br i1 %1454, label %1455, label %1463

1455:                                             ; preds = %1451
  %1456 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1457 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1453
  store i8 0, ptr %1457, align 1, !tbaa !46
  %1458 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1459 = load ptr, ptr %1458, align 8, !tbaa !94
  %1460 = load i64, ptr %1452, align 8, !tbaa !92
  %1461 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1462 = load ptr, ptr %1461, align 8, !tbaa !95
  tail call void %1459(ptr noundef nonnull %1456, i64 noundef %1460, ptr noundef %1462) #27
  store i64 0, ptr %1452, align 8, !tbaa !92
  br label %1463

1463:                                             ; preds = %1451, %1455
  %1464 = load i64, ptr %1452, align 8, !tbaa !92
  %1465 = add i64 %1464, 1
  store i64 %1465, ptr %1452, align 8, !tbaa !92
  %1466 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1464
  store i8 91, ptr %1466, align 1, !tbaa !46
  %1467 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 91, ptr %1467, align 8, !tbaa !93
  %1468 = load ptr, ptr %1404, align 8, !tbaa !46
  %1469 = getelementptr inbounds %struct.demangle_component, ptr %1468, i64 0, i32 1, i32 0, i32 1
  %1470 = load ptr, ptr %1469, align 8, !tbaa !46
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %1470)
  %1471 = load i64, ptr %1452, align 8, !tbaa !92
  %1472 = icmp eq i64 %1471, 255
  br i1 %1472, label %1473, label %1481

1473:                                             ; preds = %1463
  %1474 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1475 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1471
  store i8 0, ptr %1475, align 1, !tbaa !46
  %1476 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1477 = load ptr, ptr %1476, align 8, !tbaa !94
  %1478 = load i64, ptr %1452, align 8, !tbaa !92
  %1479 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1480 = load ptr, ptr %1479, align 8, !tbaa !95
  tail call void %1477(ptr noundef nonnull %1474, i64 noundef %1478, ptr noundef %1480) #27
  store i64 0, ptr %1452, align 8, !tbaa !92
  br label %1481

1481:                                             ; preds = %1463, %1473
  %1482 = load i64, ptr %1452, align 8, !tbaa !92
  %1483 = add i64 %1482, 1
  store i64 %1483, ptr %1452, align 8, !tbaa !92
  %1484 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1482
  store i8 93, ptr %1484, align 1, !tbaa !46
  store i8 93, ptr %1467, align 8, !tbaa !93
  br label %1493

1485:                                             ; preds = %1441
  %1486 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1448, ptr noundef nonnull dereferenceable(3) @.str.9)
  %1487 = icmp eq i32 %1486, 0
  br i1 %1487, label %1489, label %1488

1488:                                             ; preds = %1485
  tail call fastcc void @d_print_expr_op(ptr noundef %0, ptr noundef %1445)
  br label %1489

1489:                                             ; preds = %1488, %1485
  %1490 = load ptr, ptr %1404, align 8, !tbaa !46
  %1491 = getelementptr inbounds %struct.demangle_component, ptr %1490, i64 0, i32 1, i32 0, i32 1
  %1492 = load ptr, ptr %1491, align 8, !tbaa !46
  tail call fastcc void @d_print_subexpr(ptr noundef %0, ptr noundef %1492)
  br label %1493

1493:                                             ; preds = %1489, %1481
  %1494 = load ptr, ptr %1403, align 8, !tbaa !46
  %1495 = load i32, ptr %1494, align 8, !tbaa !53
  %1496 = icmp eq i32 %1495, 44
  br i1 %1496, label %1497, label %551

1497:                                             ; preds = %1493
  %1498 = getelementptr inbounds %struct.demangle_component, ptr %1494, i64 0, i32 1
  %1499 = load ptr, ptr %1498, align 8, !tbaa !46
  %1500 = getelementptr inbounds %struct.demangle_operator_info, ptr %1499, i64 0, i32 2
  %1501 = load i32, ptr %1500, align 8, !tbaa !86
  %1502 = icmp eq i32 %1501, 1
  br i1 %1502, label %1503, label %551

1503:                                             ; preds = %1497
  %1504 = getelementptr inbounds %struct.demangle_operator_info, ptr %1499, i64 0, i32 1
  %1505 = load ptr, ptr %1504, align 8, !tbaa !120
  %1506 = load i8, ptr %1505, align 1, !tbaa !46
  %1507 = icmp eq i8 %1506, 62
  br i1 %1507, label %1508, label %551

1508:                                             ; preds = %1503
  %1509 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %1510 = load i64, ptr %1509, align 8, !tbaa !92
  %1511 = icmp eq i64 %1510, 255
  br i1 %1511, label %1512, label %1520

1512:                                             ; preds = %1508
  %1513 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1514 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1510
  store i8 0, ptr %1514, align 1, !tbaa !46
  %1515 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1516 = load ptr, ptr %1515, align 8, !tbaa !94
  %1517 = load i64, ptr %1509, align 8, !tbaa !92
  %1518 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1519 = load ptr, ptr %1518, align 8, !tbaa !95
  tail call void %1516(ptr noundef nonnull %1513, i64 noundef %1517, ptr noundef %1519) #27
  store i64 0, ptr %1509, align 8, !tbaa !92
  br label %1520

1520:                                             ; preds = %1508, %1512
  %1521 = load i64, ptr %1509, align 8, !tbaa !92
  %1522 = add i64 %1521, 1
  store i64 %1522, ptr %1509, align 8, !tbaa !92
  %1523 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1521
  store i8 41, ptr %1523, align 1, !tbaa !46
  %1524 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 41, ptr %1524, align 8, !tbaa !93
  br label %551

1525:                                             ; preds = %21
  store i32 1, ptr %16, align 8, !tbaa !96
  br label %551

1526:                                             ; preds = %21
  %1527 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %1528 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %1529 = load ptr, ptr %1528, align 8, !tbaa !46
  %1530 = load i32, ptr %1529, align 8, !tbaa !53
  %1531 = icmp eq i32 %1530, 51
  br i1 %1531, label %1532, label %1537

1532:                                             ; preds = %1526
  %1533 = getelementptr inbounds %struct.demangle_component, ptr %1529, i64 0, i32 1, i32 0, i32 1
  %1534 = load ptr, ptr %1533, align 8, !tbaa !46
  %1535 = load i32, ptr %1534, align 8, !tbaa !53
  %1536 = icmp eq i32 %1535, 52
  br i1 %1536, label %1538, label %1537

1537:                                             ; preds = %1532, %1526
  store i32 1, ptr %16, align 8, !tbaa !96
  br label %551

1538:                                             ; preds = %1532
  %1539 = getelementptr inbounds %struct.demangle_component, ptr %1529, i64 0, i32 1
  %1540 = load ptr, ptr %1539, align 8, !tbaa !46
  tail call fastcc void @d_print_subexpr(ptr noundef %0, ptr noundef %1540)
  %1541 = load ptr, ptr %1527, align 8, !tbaa !46
  tail call fastcc void @d_print_expr_op(ptr noundef %0, ptr noundef %1541)
  %1542 = load ptr, ptr %1528, align 8, !tbaa !46
  %1543 = getelementptr inbounds %struct.demangle_component, ptr %1542, i64 0, i32 1, i32 0, i32 1
  %1544 = load ptr, ptr %1543, align 8, !tbaa !46
  %1545 = getelementptr inbounds %struct.demangle_component, ptr %1544, i64 0, i32 1
  %1546 = load ptr, ptr %1545, align 8, !tbaa !46
  tail call fastcc void @d_print_subexpr(ptr noundef %0, ptr noundef %1546)
  %1547 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %1548 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1549 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1550 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1551 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %1552

1552:                                             ; preds = %1538, %1563
  %1553 = phi i64 [ 0, %1538 ], [ %1567, %1563 ]
  %1554 = getelementptr inbounds i8, ptr @.str.169, i64 %1553
  %1555 = load i8, ptr %1554, align 1, !tbaa !46
  %1556 = load i64, ptr %1547, align 8, !tbaa !92
  %1557 = icmp eq i64 %1556, 255
  br i1 %1557, label %1558, label %1563

1558:                                             ; preds = %1552
  %1559 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1556
  store i8 0, ptr %1559, align 1, !tbaa !46
  %1560 = load ptr, ptr %1549, align 8, !tbaa !94
  %1561 = load i64, ptr %1547, align 8, !tbaa !92
  %1562 = load ptr, ptr %1550, align 8, !tbaa !95
  tail call void %1560(ptr noundef nonnull %1548, i64 noundef %1561, ptr noundef %1562) #27
  store i64 0, ptr %1547, align 8, !tbaa !92
  br label %1563

1563:                                             ; preds = %1558, %1552
  %1564 = load i64, ptr %1547, align 8, !tbaa !92
  %1565 = add i64 %1564, 1
  store i64 %1565, ptr %1547, align 8, !tbaa !92
  %1566 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1564
  store i8 %1555, ptr %1566, align 1, !tbaa !46
  store i8 %1555, ptr %1551, align 8, !tbaa !93
  %1567 = add nuw nsw i64 %1553, 1
  %1568 = icmp eq i64 %1567, 3
  br i1 %1568, label %1569, label %1552, !llvm.loop !97

1569:                                             ; preds = %1563
  %1570 = load ptr, ptr %1528, align 8, !tbaa !46
  %1571 = getelementptr inbounds %struct.demangle_component, ptr %1570, i64 0, i32 1, i32 0, i32 1
  %1572 = load ptr, ptr %1571, align 8, !tbaa !46
  %1573 = getelementptr inbounds %struct.demangle_component, ptr %1572, i64 0, i32 1, i32 0, i32 1
  %1574 = load ptr, ptr %1573, align 8, !tbaa !46
  tail call fastcc void @d_print_subexpr(ptr noundef %0, ptr noundef %1574)
  br label %551

1575:                                             ; preds = %21, %21
  store i32 1, ptr %16, align 8, !tbaa !96
  br label %551

1576:                                             ; preds = %21, %21
  %1577 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %1578 = load ptr, ptr %1577, align 8, !tbaa !46
  %1579 = load i32, ptr %1578, align 8, !tbaa !53
  %1580 = icmp eq i32 %1579, 35
  br i1 %1580, label %1581, label %1776

1581:                                             ; preds = %1576
  %1582 = getelementptr inbounds %struct.demangle_component, ptr %1578, i64 0, i32 1
  %1583 = load ptr, ptr %1582, align 8, !tbaa !46
  %1584 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %1583, i64 0, i32 4
  %1585 = load i32, ptr %1584, align 4, !tbaa !121
  switch i32 %1585, label %1776 [
    i32 1, label %1586
    i32 2, label %1586
    i32 3, label %1586
    i32 4, label %1586
    i32 5, label %1586
    i32 6, label %1586
    i32 7, label %1715
  ]

1586:                                             ; preds = %1581, %1581, %1581, %1581, %1581, %1581
  %1587 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %1588 = load ptr, ptr %1587, align 8, !tbaa !46
  %1589 = load i32, ptr %1588, align 8, !tbaa !53
  %1590 = icmp eq i32 %1589, 0
  br i1 %1590, label %1591, label %1776

1591:                                             ; preds = %1586
  %1592 = icmp eq i32 %22, 54
  br i1 %1592, label %1593, label %1610

1593:                                             ; preds = %1591
  %1594 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %1595 = load i64, ptr %1594, align 8, !tbaa !92
  %1596 = icmp eq i64 %1595, 255
  br i1 %1596, label %1597, label %1605

1597:                                             ; preds = %1593
  %1598 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1599 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1595
  store i8 0, ptr %1599, align 1, !tbaa !46
  %1600 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1601 = load ptr, ptr %1600, align 8, !tbaa !94
  %1602 = load i64, ptr %1594, align 8, !tbaa !92
  %1603 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1604 = load ptr, ptr %1603, align 8, !tbaa !95
  tail call void %1601(ptr noundef nonnull %1598, i64 noundef %1602, ptr noundef %1604) #27
  store i64 0, ptr %1594, align 8, !tbaa !92
  br label %1605

1605:                                             ; preds = %1593, %1597
  %1606 = load i64, ptr %1594, align 8, !tbaa !92
  %1607 = add i64 %1606, 1
  store i64 %1607, ptr %1594, align 8, !tbaa !92
  %1608 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1606
  store i8 45, ptr %1608, align 1, !tbaa !46
  %1609 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 45, ptr %1609, align 8, !tbaa !93
  br label %1610

1610:                                             ; preds = %1605, %1591
  %1611 = load ptr, ptr %1587, align 8, !tbaa !46
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %1611)
  switch i32 %1585, label %551 [
    i32 2, label %1630
    i32 3, label %1647
    i32 4, label %1624
    i32 5, label %1618
    i32 6, label %1612
  ]

1612:                                             ; preds = %1610
  %1613 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %1614 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1615 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1616 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1617 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %1698

1618:                                             ; preds = %1610
  %1619 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %1620 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1621 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1622 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1623 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %1681

1624:                                             ; preds = %1610
  %1625 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %1626 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1627 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1628 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1629 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %1664

1630:                                             ; preds = %1610
  %1631 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %1632 = load i64, ptr %1631, align 8, !tbaa !92
  %1633 = icmp eq i64 %1632, 255
  br i1 %1633, label %1634, label %1642

1634:                                             ; preds = %1630
  %1635 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1636 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1632
  store i8 0, ptr %1636, align 1, !tbaa !46
  %1637 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1638 = load ptr, ptr %1637, align 8, !tbaa !94
  %1639 = load i64, ptr %1631, align 8, !tbaa !92
  %1640 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1641 = load ptr, ptr %1640, align 8, !tbaa !95
  tail call void %1638(ptr noundef nonnull %1635, i64 noundef %1639, ptr noundef %1641) #27
  store i64 0, ptr %1631, align 8, !tbaa !92
  br label %1642

1642:                                             ; preds = %1630, %1634
  %1643 = load i64, ptr %1631, align 8, !tbaa !92
  %1644 = add i64 %1643, 1
  store i64 %1644, ptr %1631, align 8, !tbaa !92
  %1645 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1643
  store i8 117, ptr %1645, align 1, !tbaa !46
  %1646 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 117, ptr %1646, align 8, !tbaa !93
  br label %551

1647:                                             ; preds = %1610
  %1648 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %1649 = load i64, ptr %1648, align 8, !tbaa !92
  %1650 = icmp eq i64 %1649, 255
  br i1 %1650, label %1651, label %1659

1651:                                             ; preds = %1647
  %1652 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1653 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1649
  store i8 0, ptr %1653, align 1, !tbaa !46
  %1654 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1655 = load ptr, ptr %1654, align 8, !tbaa !94
  %1656 = load i64, ptr %1648, align 8, !tbaa !92
  %1657 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1658 = load ptr, ptr %1657, align 8, !tbaa !95
  tail call void %1655(ptr noundef nonnull %1652, i64 noundef %1656, ptr noundef %1658) #27
  store i64 0, ptr %1648, align 8, !tbaa !92
  br label %1659

1659:                                             ; preds = %1647, %1651
  %1660 = load i64, ptr %1648, align 8, !tbaa !92
  %1661 = add i64 %1660, 1
  store i64 %1661, ptr %1648, align 8, !tbaa !92
  %1662 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1660
  store i8 108, ptr %1662, align 1, !tbaa !46
  %1663 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 108, ptr %1663, align 8, !tbaa !93
  br label %551

1664:                                             ; preds = %1624, %1675
  %1665 = phi i64 [ 0, %1624 ], [ %1679, %1675 ]
  %1666 = getelementptr inbounds i8, ptr @.str.170, i64 %1665
  %1667 = load i8, ptr %1666, align 1, !tbaa !46
  %1668 = load i64, ptr %1625, align 8, !tbaa !92
  %1669 = icmp eq i64 %1668, 255
  br i1 %1669, label %1670, label %1675

1670:                                             ; preds = %1664
  %1671 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1668
  store i8 0, ptr %1671, align 1, !tbaa !46
  %1672 = load ptr, ptr %1627, align 8, !tbaa !94
  %1673 = load i64, ptr %1625, align 8, !tbaa !92
  %1674 = load ptr, ptr %1628, align 8, !tbaa !95
  tail call void %1672(ptr noundef nonnull %1626, i64 noundef %1673, ptr noundef %1674) #27
  store i64 0, ptr %1625, align 8, !tbaa !92
  br label %1675

1675:                                             ; preds = %1670, %1664
  %1676 = load i64, ptr %1625, align 8, !tbaa !92
  %1677 = add i64 %1676, 1
  store i64 %1677, ptr %1625, align 8, !tbaa !92
  %1678 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1676
  store i8 %1667, ptr %1678, align 1, !tbaa !46
  store i8 %1667, ptr %1629, align 8, !tbaa !93
  %1679 = add nuw nsw i64 %1665, 1
  %1680 = icmp eq i64 %1665, 0
  br i1 %1680, label %1664, label %551, !llvm.loop !97

1681:                                             ; preds = %1618, %1692
  %1682 = phi i64 [ 0, %1618 ], [ %1696, %1692 ]
  %1683 = getelementptr inbounds i8, ptr @.str.171, i64 %1682
  %1684 = load i8, ptr %1683, align 1, !tbaa !46
  %1685 = load i64, ptr %1619, align 8, !tbaa !92
  %1686 = icmp eq i64 %1685, 255
  br i1 %1686, label %1687, label %1692

1687:                                             ; preds = %1681
  %1688 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1685
  store i8 0, ptr %1688, align 1, !tbaa !46
  %1689 = load ptr, ptr %1621, align 8, !tbaa !94
  %1690 = load i64, ptr %1619, align 8, !tbaa !92
  %1691 = load ptr, ptr %1622, align 8, !tbaa !95
  tail call void %1689(ptr noundef nonnull %1620, i64 noundef %1690, ptr noundef %1691) #27
  store i64 0, ptr %1619, align 8, !tbaa !92
  br label %1692

1692:                                             ; preds = %1687, %1681
  %1693 = load i64, ptr %1619, align 8, !tbaa !92
  %1694 = add i64 %1693, 1
  store i64 %1694, ptr %1619, align 8, !tbaa !92
  %1695 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1693
  store i8 %1684, ptr %1695, align 1, !tbaa !46
  store i8 %1684, ptr %1623, align 8, !tbaa !93
  %1696 = add nuw nsw i64 %1682, 1
  %1697 = icmp eq i64 %1682, 0
  br i1 %1697, label %1681, label %551, !llvm.loop !97

1698:                                             ; preds = %1612, %1709
  %1699 = phi i64 [ 0, %1612 ], [ %1713, %1709 ]
  %1700 = getelementptr inbounds i8, ptr @.str.172, i64 %1699
  %1701 = load i8, ptr %1700, align 1, !tbaa !46
  %1702 = load i64, ptr %1613, align 8, !tbaa !92
  %1703 = icmp eq i64 %1702, 255
  br i1 %1703, label %1704, label %1709

1704:                                             ; preds = %1698
  %1705 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1702
  store i8 0, ptr %1705, align 1, !tbaa !46
  %1706 = load ptr, ptr %1615, align 8, !tbaa !94
  %1707 = load i64, ptr %1613, align 8, !tbaa !92
  %1708 = load ptr, ptr %1616, align 8, !tbaa !95
  tail call void %1706(ptr noundef nonnull %1614, i64 noundef %1707, ptr noundef %1708) #27
  store i64 0, ptr %1613, align 8, !tbaa !92
  br label %1709

1709:                                             ; preds = %1704, %1698
  %1710 = load i64, ptr %1613, align 8, !tbaa !92
  %1711 = add i64 %1710, 1
  store i64 %1711, ptr %1613, align 8, !tbaa !92
  %1712 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1710
  store i8 %1701, ptr %1712, align 1, !tbaa !46
  store i8 %1701, ptr %1617, align 8, !tbaa !93
  %1713 = add nuw nsw i64 %1699, 1
  %1714 = icmp eq i64 %1713, 3
  br i1 %1714, label %551, label %1698, !llvm.loop !97

1715:                                             ; preds = %1581
  %1716 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %1717 = load ptr, ptr %1716, align 8, !tbaa !46
  %1718 = load i32, ptr %1717, align 8, !tbaa !53
  %1719 = icmp eq i32 %1718, 0
  br i1 %1719, label %1720, label %1776

1720:                                             ; preds = %1715
  %1721 = getelementptr inbounds %struct.demangle_component, ptr %1717, i64 0, i32 1, i32 0, i32 1
  %1722 = load i32, ptr %1721, align 8, !tbaa !46
  %1723 = icmp eq i32 %1722, 1
  %1724 = icmp eq i32 %22, 53
  %1725 = and i1 %1724, %1723
  br i1 %1725, label %1726, label %1776

1726:                                             ; preds = %1720
  %1727 = getelementptr inbounds %struct.demangle_component, ptr %1717, i64 0, i32 1
  %1728 = load ptr, ptr %1727, align 8, !tbaa !46
  %1729 = load i8, ptr %1728, align 1, !tbaa !46
  switch i8 %1729, label %1776 [
    i8 48, label %1736
    i8 49, label %1730
  ]

1730:                                             ; preds = %1726
  %1731 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %1732 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1733 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1734 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1735 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %1759

1736:                                             ; preds = %1726
  %1737 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %1738 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1739 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1740 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1741 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %1742

1742:                                             ; preds = %1736, %1753
  %1743 = phi i64 [ 0, %1736 ], [ %1757, %1753 ]
  %1744 = getelementptr inbounds i8, ptr @.str.173, i64 %1743
  %1745 = load i8, ptr %1744, align 1, !tbaa !46
  %1746 = load i64, ptr %1737, align 8, !tbaa !92
  %1747 = icmp eq i64 %1746, 255
  br i1 %1747, label %1748, label %1753

1748:                                             ; preds = %1742
  %1749 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1746
  store i8 0, ptr %1749, align 1, !tbaa !46
  %1750 = load ptr, ptr %1739, align 8, !tbaa !94
  %1751 = load i64, ptr %1737, align 8, !tbaa !92
  %1752 = load ptr, ptr %1740, align 8, !tbaa !95
  tail call void %1750(ptr noundef nonnull %1738, i64 noundef %1751, ptr noundef %1752) #27
  store i64 0, ptr %1737, align 8, !tbaa !92
  br label %1753

1753:                                             ; preds = %1748, %1742
  %1754 = load i64, ptr %1737, align 8, !tbaa !92
  %1755 = add i64 %1754, 1
  store i64 %1755, ptr %1737, align 8, !tbaa !92
  %1756 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1754
  store i8 %1745, ptr %1756, align 1, !tbaa !46
  store i8 %1745, ptr %1741, align 8, !tbaa !93
  %1757 = add nuw nsw i64 %1743, 1
  %1758 = icmp eq i64 %1757, 5
  br i1 %1758, label %551, label %1742, !llvm.loop !97

1759:                                             ; preds = %1730, %1770
  %1760 = phi i64 [ 0, %1730 ], [ %1774, %1770 ]
  %1761 = getelementptr inbounds i8, ptr @.str.174, i64 %1760
  %1762 = load i8, ptr %1761, align 1, !tbaa !46
  %1763 = load i64, ptr %1731, align 8, !tbaa !92
  %1764 = icmp eq i64 %1763, 255
  br i1 %1764, label %1765, label %1770

1765:                                             ; preds = %1759
  %1766 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1763
  store i8 0, ptr %1766, align 1, !tbaa !46
  %1767 = load ptr, ptr %1733, align 8, !tbaa !94
  %1768 = load i64, ptr %1731, align 8, !tbaa !92
  %1769 = load ptr, ptr %1734, align 8, !tbaa !95
  tail call void %1767(ptr noundef nonnull %1732, i64 noundef %1768, ptr noundef %1769) #27
  store i64 0, ptr %1731, align 8, !tbaa !92
  br label %1770

1770:                                             ; preds = %1765, %1759
  %1771 = load i64, ptr %1731, align 8, !tbaa !92
  %1772 = add i64 %1771, 1
  store i64 %1772, ptr %1731, align 8, !tbaa !92
  %1773 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1771
  store i8 %1762, ptr %1773, align 1, !tbaa !46
  store i8 %1762, ptr %1735, align 8, !tbaa !93
  %1774 = add nuw nsw i64 %1760, 1
  %1775 = icmp eq i64 %1774, 4
  br i1 %1775, label %551, label %1759, !llvm.loop !97

1776:                                             ; preds = %1581, %1586, %1726, %1720, %1715, %1576
  %1777 = phi i32 [ 7, %1726 ], [ 7, %1720 ], [ 7, %1715 ], [ %1585, %1586 ], [ 0, %1576 ], [ %1585, %1581 ]
  %1778 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %1779 = load i64, ptr %1778, align 8, !tbaa !92
  %1780 = icmp eq i64 %1779, 255
  br i1 %1780, label %1781, label %1789

1781:                                             ; preds = %1776
  %1782 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1783 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1779
  store i8 0, ptr %1783, align 1, !tbaa !46
  %1784 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1785 = load ptr, ptr %1784, align 8, !tbaa !94
  %1786 = load i64, ptr %1778, align 8, !tbaa !92
  %1787 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1788 = load ptr, ptr %1787, align 8, !tbaa !95
  tail call void %1785(ptr noundef nonnull %1782, i64 noundef %1786, ptr noundef %1788) #27
  store i64 0, ptr %1778, align 8, !tbaa !92
  br label %1789

1789:                                             ; preds = %1776, %1781
  %1790 = load i64, ptr %1778, align 8, !tbaa !92
  %1791 = add i64 %1790, 1
  store i64 %1791, ptr %1778, align 8, !tbaa !92
  %1792 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1790
  store i8 40, ptr %1792, align 1, !tbaa !46
  %1793 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 40, ptr %1793, align 8, !tbaa !93
  %1794 = load ptr, ptr %1577, align 8, !tbaa !46
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %1794)
  %1795 = load i64, ptr %1778, align 8, !tbaa !92
  %1796 = icmp eq i64 %1795, 255
  br i1 %1796, label %1797, label %1805

1797:                                             ; preds = %1789
  %1798 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1799 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1795
  store i8 0, ptr %1799, align 1, !tbaa !46
  %1800 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1801 = load ptr, ptr %1800, align 8, !tbaa !94
  %1802 = load i64, ptr %1778, align 8, !tbaa !92
  %1803 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1804 = load ptr, ptr %1803, align 8, !tbaa !95
  tail call void %1801(ptr noundef nonnull %1798, i64 noundef %1802, ptr noundef %1804) #27
  store i64 0, ptr %1778, align 8, !tbaa !92
  br label %1805

1805:                                             ; preds = %1789, %1797
  %1806 = load i64, ptr %1778, align 8, !tbaa !92
  %1807 = add i64 %1806, 1
  store i64 %1807, ptr %1778, align 8, !tbaa !92
  %1808 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1806
  store i8 41, ptr %1808, align 1, !tbaa !46
  store i8 41, ptr %1793, align 8, !tbaa !93
  %1809 = load i32, ptr %14, align 8, !tbaa !53
  %1810 = icmp eq i32 %1809, 54
  br i1 %1810, label %1811, label %1826

1811:                                             ; preds = %1805
  %1812 = load i64, ptr %1778, align 8, !tbaa !92
  %1813 = icmp eq i64 %1812, 255
  br i1 %1813, label %1814, label %1822

1814:                                             ; preds = %1811
  %1815 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1816 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1812
  store i8 0, ptr %1816, align 1, !tbaa !46
  %1817 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1818 = load ptr, ptr %1817, align 8, !tbaa !94
  %1819 = load i64, ptr %1778, align 8, !tbaa !92
  %1820 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1821 = load ptr, ptr %1820, align 8, !tbaa !95
  tail call void %1818(ptr noundef nonnull %1815, i64 noundef %1819, ptr noundef %1821) #27
  store i64 0, ptr %1778, align 8, !tbaa !92
  br label %1822

1822:                                             ; preds = %1811, %1814
  %1823 = load i64, ptr %1778, align 8, !tbaa !92
  %1824 = add i64 %1823, 1
  store i64 %1824, ptr %1778, align 8, !tbaa !92
  %1825 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1823
  store i8 45, ptr %1825, align 1, !tbaa !46
  store i8 45, ptr %1793, align 8, !tbaa !93
  br label %1826

1826:                                             ; preds = %1822, %1805
  %1827 = icmp eq i32 %1777, 8
  br i1 %1827, label %1828, label %1859

1828:                                             ; preds = %1826
  %1829 = load i64, ptr %1778, align 8, !tbaa !92
  %1830 = icmp eq i64 %1829, 255
  br i1 %1830, label %1831, label %1839

1831:                                             ; preds = %1828
  %1832 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1833 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1829
  store i8 0, ptr %1833, align 1, !tbaa !46
  %1834 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1835 = load ptr, ptr %1834, align 8, !tbaa !94
  %1836 = load i64, ptr %1778, align 8, !tbaa !92
  %1837 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1838 = load ptr, ptr %1837, align 8, !tbaa !95
  tail call void %1835(ptr noundef nonnull %1832, i64 noundef %1836, ptr noundef %1838) #27
  store i64 0, ptr %1778, align 8, !tbaa !92
  br label %1839

1839:                                             ; preds = %1828, %1831
  %1840 = load i64, ptr %1778, align 8, !tbaa !92
  %1841 = add i64 %1840, 1
  store i64 %1841, ptr %1778, align 8, !tbaa !92
  %1842 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1840
  store i8 91, ptr %1842, align 1, !tbaa !46
  store i8 91, ptr %1793, align 8, !tbaa !93
  %1843 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %1844 = load ptr, ptr %1843, align 8, !tbaa !46
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %1844)
  %1845 = load i64, ptr %1778, align 8, !tbaa !92
  %1846 = icmp eq i64 %1845, 255
  br i1 %1846, label %1847, label %1855

1847:                                             ; preds = %1839
  %1848 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1849 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1845
  store i8 0, ptr %1849, align 1, !tbaa !46
  %1850 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1851 = load ptr, ptr %1850, align 8, !tbaa !94
  %1852 = load i64, ptr %1778, align 8, !tbaa !92
  %1853 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1854 = load ptr, ptr %1853, align 8, !tbaa !95
  tail call void %1851(ptr noundef nonnull %1848, i64 noundef %1852, ptr noundef %1854) #27
  store i64 0, ptr %1778, align 8, !tbaa !92
  br label %1855

1855:                                             ; preds = %1839, %1847
  %1856 = load i64, ptr %1778, align 8, !tbaa !92
  %1857 = add i64 %1856, 1
  store i64 %1857, ptr %1778, align 8, !tbaa !92
  %1858 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1856
  store i8 93, ptr %1858, align 1, !tbaa !46
  store i8 93, ptr %1793, align 8, !tbaa !93
  br label %551

1859:                                             ; preds = %1826
  %1860 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %1861 = load ptr, ptr %1860, align 8, !tbaa !46
  br label %13

1862:                                             ; preds = %21
  %1863 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %1864 = load i64, ptr %1863, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %6) #27
  %1865 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.193, i64 noundef %1864)
  %1866 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6)
  %1867 = icmp eq i64 %1866, 0
  br i1 %1867, label %1891, label %1868

1868:                                             ; preds = %1862
  %1869 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %1870 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1871 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1872 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1873 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %1874

1874:                                             ; preds = %1868, %1885
  %1875 = phi i64 [ 0, %1868 ], [ %1889, %1885 ]
  %1876 = getelementptr inbounds i8, ptr %6, i64 %1875
  %1877 = load i8, ptr %1876, align 1, !tbaa !46
  %1878 = load i64, ptr %1869, align 8, !tbaa !92
  %1879 = icmp eq i64 %1878, 255
  br i1 %1879, label %1880, label %1885

1880:                                             ; preds = %1874
  %1881 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1878
  store i8 0, ptr %1881, align 1, !tbaa !46
  %1882 = load ptr, ptr %1871, align 8, !tbaa !94
  %1883 = load i64, ptr %1869, align 8, !tbaa !92
  %1884 = load ptr, ptr %1872, align 8, !tbaa !95
  tail call void %1882(ptr noundef nonnull %1870, i64 noundef %1883, ptr noundef %1884) #27
  store i64 0, ptr %1869, align 8, !tbaa !92
  br label %1885

1885:                                             ; preds = %1880, %1874
  %1886 = load i64, ptr %1869, align 8, !tbaa !92
  %1887 = add i64 %1886, 1
  store i64 %1887, ptr %1869, align 8, !tbaa !92
  %1888 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1886
  store i8 %1877, ptr %1888, align 1, !tbaa !46
  store i8 %1877, ptr %1873, align 8, !tbaa !93
  %1889 = add nuw i64 %1875, 1
  %1890 = icmp eq i64 %1889, %1866
  br i1 %1890, label %1891, label %1874, !llvm.loop !97

1891:                                             ; preds = %1885, %1862
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %6) #27
  br label %551

1892:                                             ; preds = %59, %1903
  %1893 = phi i64 [ 0, %59 ], [ %1907, %1903 ]
  %1894 = getelementptr inbounds i8, ptr @.str.175, i64 %1893
  %1895 = load i8, ptr %1894, align 1, !tbaa !46
  %1896 = load i64, ptr %60, align 8, !tbaa !92
  %1897 = icmp eq i64 %1896, 255
  br i1 %1897, label %1898, label %1903

1898:                                             ; preds = %1892
  %1899 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1896
  store i8 0, ptr %1899, align 1, !tbaa !46
  %1900 = load ptr, ptr %62, align 8, !tbaa !94
  %1901 = load i64, ptr %60, align 8, !tbaa !92
  %1902 = load ptr, ptr %63, align 8, !tbaa !95
  tail call void %1900(ptr noundef nonnull %61, i64 noundef %1901, ptr noundef %1902) #27
  store i64 0, ptr %60, align 8, !tbaa !92
  br label %1903

1903:                                             ; preds = %1898, %1892
  %1904 = load i64, ptr %60, align 8, !tbaa !92
  %1905 = add i64 %1904, 1
  store i64 %1905, ptr %60, align 8, !tbaa !92
  %1906 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1904
  store i8 %1895, ptr %1906, align 1, !tbaa !46
  store i8 %1895, ptr %64, align 8, !tbaa !93
  %1907 = add nuw nsw i64 %1893, 1
  %1908 = icmp eq i64 %1907, 14
  br i1 %1908, label %1909, label %1892, !llvm.loop !97

1909:                                             ; preds = %1903
  %1910 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %1911 = load ptr, ptr %1910, align 8, !tbaa !46
  br label %13

1912:                                             ; preds = %21
  %1913 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %1914 = load ptr, ptr %1913, align 8, !tbaa !46
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %1914)
  %1915 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %1916 = load ptr, ptr %1915, align 8, !tbaa !46
  br label %13

1917:                                             ; preds = %21
  %1918 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %1919 = load i32, ptr %1918, align 8, !tbaa !46
  %1920 = trunc i32 %1919 to i8
  %1921 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %1922 = load i64, ptr %1921, align 8, !tbaa !92
  %1923 = icmp eq i64 %1922, 255
  br i1 %1923, label %1924, label %1932

1924:                                             ; preds = %1917
  %1925 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1926 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1922
  store i8 0, ptr %1926, align 1, !tbaa !46
  %1927 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1928 = load ptr, ptr %1927, align 8, !tbaa !94
  %1929 = load i64, ptr %1921, align 8, !tbaa !92
  %1930 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1931 = load ptr, ptr %1930, align 8, !tbaa !95
  tail call void %1928(ptr noundef nonnull %1925, i64 noundef %1929, ptr noundef %1931) #27
  store i64 0, ptr %1921, align 8, !tbaa !92
  br label %1932

1932:                                             ; preds = %1917, %1924
  %1933 = load i64, ptr %1921, align 8, !tbaa !92
  %1934 = add i64 %1933, 1
  store i64 %1934, ptr %1921, align 8, !tbaa !92
  %1935 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1933
  store i8 %1920, ptr %1935, align 1, !tbaa !46
  %1936 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 %1920, ptr %1936, align 8, !tbaa !93
  br label %551

1937:                                             ; preds = %53, %1948
  %1938 = phi i64 [ 0, %53 ], [ %1952, %1948 ]
  %1939 = getelementptr inbounds i8, ptr @.str.176, i64 %1938
  %1940 = load i8, ptr %1939, align 1, !tbaa !46
  %1941 = load i64, ptr %54, align 8, !tbaa !92
  %1942 = icmp eq i64 %1941, 255
  br i1 %1942, label %1943, label %1948

1943:                                             ; preds = %1937
  %1944 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1941
  store i8 0, ptr %1944, align 1, !tbaa !46
  %1945 = load ptr, ptr %56, align 8, !tbaa !94
  %1946 = load i64, ptr %54, align 8, !tbaa !92
  %1947 = load ptr, ptr %57, align 8, !tbaa !95
  tail call void %1945(ptr noundef nonnull %55, i64 noundef %1946, ptr noundef %1947) #27
  store i64 0, ptr %54, align 8, !tbaa !92
  br label %1948

1948:                                             ; preds = %1943, %1937
  %1949 = load i64, ptr %54, align 8, !tbaa !92
  %1950 = add i64 %1949, 1
  store i64 %1950, ptr %54, align 8, !tbaa !92
  %1951 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1949
  store i8 %1940, ptr %1951, align 1, !tbaa !46
  store i8 %1940, ptr %58, align 8, !tbaa !93
  %1952 = add nuw nsw i64 %1938, 1
  %1953 = icmp eq i64 %1952, 10
  br i1 %1953, label %1954, label %1937, !llvm.loop !97

1954:                                             ; preds = %1948
  %1955 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %1956 = load ptr, ptr %1955, align 8, !tbaa !46
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %1956)
  %1957 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %1958 = load i64, ptr %1957, align 8, !tbaa !92
  %1959 = icmp eq i64 %1958, 255
  br i1 %1959, label %1960, label %1968

1960:                                             ; preds = %1954
  %1961 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1962 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1958
  store i8 0, ptr %1962, align 1, !tbaa !46
  %1963 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1964 = load ptr, ptr %1963, align 8, !tbaa !94
  %1965 = load i64, ptr %1957, align 8, !tbaa !92
  %1966 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1967 = load ptr, ptr %1966, align 8, !tbaa !95
  tail call void %1964(ptr noundef nonnull %1961, i64 noundef %1965, ptr noundef %1967) #27
  store i64 0, ptr %1957, align 8, !tbaa !92
  br label %1968

1968:                                             ; preds = %1954, %1960
  %1969 = load i64, ptr %1957, align 8, !tbaa !92
  %1970 = add i64 %1969, 1
  store i64 %1970, ptr %1957, align 8, !tbaa !92
  %1971 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1969
  store i8 41, ptr %1971, align 1, !tbaa !46
  %1972 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 41, ptr %1972, align 8, !tbaa !93
  br label %551

1973:                                             ; preds = %21
  %1974 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %1975 = load ptr, ptr %1974, align 8, !tbaa !46
  %1976 = tail call fastcc ptr @d_find_pack(ptr noundef %0, ptr noundef %1975)
  %1977 = icmp eq ptr %1976, null
  br i1 %1977, label %1978, label %2002

1978:                                             ; preds = %1973
  %1979 = load ptr, ptr %1974, align 8, !tbaa !46
  tail call fastcc void @d_print_subexpr(ptr noundef %0, ptr noundef %1979)
  %1980 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %1981 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %1982 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %1983 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %1984 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %1985

1985:                                             ; preds = %1978, %1996
  %1986 = phi i64 [ 0, %1978 ], [ %2000, %1996 ]
  %1987 = getelementptr inbounds i8, ptr @.str.121, i64 %1986
  %1988 = load i8, ptr %1987, align 1, !tbaa !46
  %1989 = load i64, ptr %1980, align 8, !tbaa !92
  %1990 = icmp eq i64 %1989, 255
  br i1 %1990, label %1991, label %1996

1991:                                             ; preds = %1985
  %1992 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1989
  store i8 0, ptr %1992, align 1, !tbaa !46
  %1993 = load ptr, ptr %1982, align 8, !tbaa !94
  %1994 = load i64, ptr %1980, align 8, !tbaa !92
  %1995 = load ptr, ptr %1983, align 8, !tbaa !95
  tail call void %1993(ptr noundef nonnull %1981, i64 noundef %1994, ptr noundef %1995) #27
  store i64 0, ptr %1980, align 8, !tbaa !92
  br label %1996

1996:                                             ; preds = %1991, %1985
  %1997 = load i64, ptr %1980, align 8, !tbaa !92
  %1998 = add i64 %1997, 1
  store i64 %1998, ptr %1980, align 8, !tbaa !92
  %1999 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %1997
  store i8 %1988, ptr %1999, align 1, !tbaa !46
  store i8 %1988, ptr %1984, align 8, !tbaa !93
  %2000 = add nuw nsw i64 %1986, 1
  %2001 = icmp eq i64 %2000, 3
  br i1 %2001, label %551, label %1985, !llvm.loop !97

2002:                                             ; preds = %1973, %2011
  %2003 = phi i32 [ %2012, %2011 ], [ 0, %1973 ]
  %2004 = phi ptr [ %2014, %2011 ], [ %1976, %1973 ]
  %2005 = load i32, ptr %2004, align 8, !tbaa !53
  %2006 = icmp eq i32 %2005, 43
  br i1 %2006, label %2007, label %2016

2007:                                             ; preds = %2002
  %2008 = getelementptr inbounds %struct.demangle_component, ptr %2004, i64 0, i32 1
  %2009 = load ptr, ptr %2008, align 8, !tbaa !46
  %2010 = icmp eq ptr %2009, null
  br i1 %2010, label %2016, label %2011

2011:                                             ; preds = %2007
  %2012 = add nuw nsw i32 %2003, 1
  %2013 = getelementptr inbounds %struct.demangle_component, ptr %2004, i64 0, i32 1, i32 0, i32 1
  %2014 = load ptr, ptr %2013, align 8, !tbaa !46
  %2015 = icmp eq ptr %2014, null
  br i1 %2015, label %2016, label %2002, !llvm.loop !122

2016:                                             ; preds = %2011, %2002, %2007
  %2017 = phi i32 [ %2012, %2011 ], [ %2003, %2002 ], [ %2003, %2007 ]
  %2018 = load ptr, ptr %1974, align 8, !tbaa !46
  %2019 = icmp eq i32 %2017, 0
  br i1 %2019, label %551, label %2020

2020:                                             ; preds = %2016
  %2021 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 9
  %2022 = add nsw i32 %2017, -1
  %2023 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %2024 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %2025 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %2026 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %2027 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %2028

2028:                                             ; preds = %2020, %2048
  %2029 = phi i32 [ 0, %2020 ], [ %2049, %2048 ]
  store i32 %2029, ptr %2021, align 4, !tbaa !113
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %2018)
  %2030 = icmp slt i32 %2029, %2022
  br i1 %2030, label %2031, label %2048

2031:                                             ; preds = %2028, %2042
  %2032 = phi i64 [ %2046, %2042 ], [ 0, %2028 ]
  %2033 = getelementptr inbounds i8, ptr @.str.166, i64 %2032
  %2034 = load i8, ptr %2033, align 1, !tbaa !46
  %2035 = load i64, ptr %2023, align 8, !tbaa !92
  %2036 = icmp eq i64 %2035, 255
  br i1 %2036, label %2037, label %2042

2037:                                             ; preds = %2031
  %2038 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %2035
  store i8 0, ptr %2038, align 1, !tbaa !46
  %2039 = load ptr, ptr %2025, align 8, !tbaa !94
  %2040 = load i64, ptr %2023, align 8, !tbaa !92
  %2041 = load ptr, ptr %2026, align 8, !tbaa !95
  tail call void %2039(ptr noundef nonnull %2024, i64 noundef %2040, ptr noundef %2041) #27
  store i64 0, ptr %2023, align 8, !tbaa !92
  br label %2042

2042:                                             ; preds = %2037, %2031
  %2043 = load i64, ptr %2023, align 8, !tbaa !92
  %2044 = add i64 %2043, 1
  store i64 %2044, ptr %2023, align 8, !tbaa !92
  %2045 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %2043
  store i8 %2034, ptr %2045, align 1, !tbaa !46
  store i8 %2034, ptr %2027, align 8, !tbaa !93
  %2046 = add nuw nsw i64 %2032, 1
  %2047 = icmp eq i64 %2032, 0
  br i1 %2047, label %2031, label %2048, !llvm.loop !97

2048:                                             ; preds = %2042, %2028
  %2049 = add nuw i32 %2029, 1
  %2050 = icmp eq i32 %2049, %2017
  br i1 %2050, label %551, label %2028, !llvm.loop !123

2051:                                             ; preds = %47, %2062
  %2052 = phi i64 [ 0, %47 ], [ %2066, %2062 ]
  %2053 = getelementptr inbounds i8, ptr @.str.177, i64 %2052
  %2054 = load i8, ptr %2053, align 1, !tbaa !46
  %2055 = load i64, ptr %48, align 8, !tbaa !92
  %2056 = icmp eq i64 %2055, 255
  br i1 %2056, label %2057, label %2062

2057:                                             ; preds = %2051
  %2058 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %2055
  store i8 0, ptr %2058, align 1, !tbaa !46
  %2059 = load ptr, ptr %50, align 8, !tbaa !94
  %2060 = load i64, ptr %48, align 8, !tbaa !92
  %2061 = load ptr, ptr %51, align 8, !tbaa !95
  tail call void %2059(ptr noundef nonnull %49, i64 noundef %2060, ptr noundef %2061) #27
  store i64 0, ptr %48, align 8, !tbaa !92
  br label %2062

2062:                                             ; preds = %2057, %2051
  %2063 = load i64, ptr %48, align 8, !tbaa !92
  %2064 = add i64 %2063, 1
  store i64 %2064, ptr %48, align 8, !tbaa !92
  %2065 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %2063
  store i8 %2054, ptr %2065, align 1, !tbaa !46
  store i8 %2054, ptr %52, align 8, !tbaa !93
  %2066 = add nuw nsw i64 %2052, 1
  %2067 = icmp eq i64 %2066, 6
  br i1 %2067, label %2068, label %2051, !llvm.loop !97

2068:                                             ; preds = %2062
  %2069 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %2070 = load i64, ptr %2069, align 8, !tbaa !46
  %2071 = add nsw i64 %2070, 1
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %5) #27
  %2072 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.193, i64 noundef %2071)
  %2073 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5)
  %2074 = icmp eq i64 %2073, 0
  br i1 %2074, label %2098, label %2075

2075:                                             ; preds = %2068
  %2076 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %2077 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %2078 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %2079 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %2080 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %2081

2081:                                             ; preds = %2075, %2092
  %2082 = phi i64 [ 0, %2075 ], [ %2096, %2092 ]
  %2083 = getelementptr inbounds i8, ptr %5, i64 %2082
  %2084 = load i8, ptr %2083, align 1, !tbaa !46
  %2085 = load i64, ptr %2076, align 8, !tbaa !92
  %2086 = icmp eq i64 %2085, 255
  br i1 %2086, label %2087, label %2092

2087:                                             ; preds = %2081
  %2088 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %2085
  store i8 0, ptr %2088, align 1, !tbaa !46
  %2089 = load ptr, ptr %2078, align 8, !tbaa !94
  %2090 = load i64, ptr %2076, align 8, !tbaa !92
  %2091 = load ptr, ptr %2079, align 8, !tbaa !95
  tail call void %2089(ptr noundef nonnull %2077, i64 noundef %2090, ptr noundef %2091) #27
  store i64 0, ptr %2076, align 8, !tbaa !92
  br label %2092

2092:                                             ; preds = %2087, %2081
  %2093 = load i64, ptr %2076, align 8, !tbaa !92
  %2094 = add i64 %2093, 1
  store i64 %2094, ptr %2076, align 8, !tbaa !92
  %2095 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %2093
  store i8 %2084, ptr %2095, align 1, !tbaa !46
  store i8 %2084, ptr %2080, align 8, !tbaa !93
  %2096 = add nuw i64 %2082, 1
  %2097 = icmp eq i64 %2096, %2073
  br i1 %2097, label %2098, label %2081, !llvm.loop !97

2098:                                             ; preds = %2092, %2068
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %5) #27
  %2099 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %2100 = load i64, ptr %2099, align 8, !tbaa !92
  %2101 = icmp eq i64 %2100, 255
  br i1 %2101, label %2102, label %2110

2102:                                             ; preds = %2098
  %2103 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %2104 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %2100
  store i8 0, ptr %2104, align 1, !tbaa !46
  %2105 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %2106 = load ptr, ptr %2105, align 8, !tbaa !94
  %2107 = load i64, ptr %2099, align 8, !tbaa !92
  %2108 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %2109 = load ptr, ptr %2108, align 8, !tbaa !95
  tail call void %2106(ptr noundef nonnull %2103, i64 noundef %2107, ptr noundef %2109) #27
  store i64 0, ptr %2099, align 8, !tbaa !92
  br label %2110

2110:                                             ; preds = %2098, %2102
  %2111 = load i64, ptr %2099, align 8, !tbaa !92
  %2112 = add i64 %2111, 1
  store i64 %2112, ptr %2099, align 8, !tbaa !92
  %2113 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %2111
  store i8 125, ptr %2113, align 1, !tbaa !46
  %2114 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 125, ptr %2114, align 8, !tbaa !93
  br label %551

2115:                                             ; preds = %41, %2126
  %2116 = phi i64 [ 0, %41 ], [ %2130, %2126 ]
  %2117 = getelementptr inbounds i8, ptr @.str.178, i64 %2116
  %2118 = load i8, ptr %2117, align 1, !tbaa !46
  %2119 = load i64, ptr %42, align 8, !tbaa !92
  %2120 = icmp eq i64 %2119, 255
  br i1 %2120, label %2121, label %2126

2121:                                             ; preds = %2115
  %2122 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %2119
  store i8 0, ptr %2122, align 1, !tbaa !46
  %2123 = load ptr, ptr %44, align 8, !tbaa !94
  %2124 = load i64, ptr %42, align 8, !tbaa !92
  %2125 = load ptr, ptr %45, align 8, !tbaa !95
  tail call void %2123(ptr noundef nonnull %43, i64 noundef %2124, ptr noundef %2125) #27
  store i64 0, ptr %42, align 8, !tbaa !92
  br label %2126

2126:                                             ; preds = %2121, %2115
  %2127 = load i64, ptr %42, align 8, !tbaa !92
  %2128 = add i64 %2127, 1
  store i64 %2128, ptr %42, align 8, !tbaa !92
  %2129 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %2127
  store i8 %2118, ptr %2129, align 1, !tbaa !46
  store i8 %2118, ptr %46, align 8, !tbaa !93
  %2130 = add nuw nsw i64 %2116, 1
  %2131 = icmp eq i64 %2130, 29
  br i1 %2131, label %2132, label %2115, !llvm.loop !97

2132:                                             ; preds = %2126
  %2133 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %2134 = load ptr, ptr %2133, align 8, !tbaa !46
  br label %13

2135:                                             ; preds = %35, %2146
  %2136 = phi i64 [ 0, %35 ], [ %2150, %2146 ]
  %2137 = getelementptr inbounds i8, ptr @.str.179, i64 %2136
  %2138 = load i8, ptr %2137, align 1, !tbaa !46
  %2139 = load i64, ptr %36, align 8, !tbaa !92
  %2140 = icmp eq i64 %2139, 255
  br i1 %2140, label %2141, label %2146

2141:                                             ; preds = %2135
  %2142 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %2139
  store i8 0, ptr %2142, align 1, !tbaa !46
  %2143 = load ptr, ptr %38, align 8, !tbaa !94
  %2144 = load i64, ptr %36, align 8, !tbaa !92
  %2145 = load ptr, ptr %39, align 8, !tbaa !95
  tail call void %2143(ptr noundef nonnull %37, i64 noundef %2144, ptr noundef %2145) #27
  store i64 0, ptr %36, align 8, !tbaa !92
  br label %2146

2146:                                             ; preds = %2141, %2135
  %2147 = load i64, ptr %36, align 8, !tbaa !92
  %2148 = add i64 %2147, 1
  store i64 %2148, ptr %36, align 8, !tbaa !92
  %2149 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %2147
  store i8 %2138, ptr %2149, align 1, !tbaa !46
  store i8 %2138, ptr %40, align 8, !tbaa !93
  %2150 = add nuw nsw i64 %2136, 1
  %2151 = icmp eq i64 %2150, 28
  br i1 %2151, label %2152, label %2135, !llvm.loop !97

2152:                                             ; preds = %2146
  %2153 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %2154 = load ptr, ptr %2153, align 8, !tbaa !46
  br label %13

2155:                                             ; preds = %29, %2166
  %2156 = phi i64 [ 0, %29 ], [ %2170, %2166 ]
  %2157 = getelementptr inbounds i8, ptr @.str.180, i64 %2156
  %2158 = load i8, ptr %2157, align 1, !tbaa !46
  %2159 = load i64, ptr %30, align 8, !tbaa !92
  %2160 = icmp eq i64 %2159, 255
  br i1 %2160, label %2161, label %2166

2161:                                             ; preds = %2155
  %2162 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %2159
  store i8 0, ptr %2162, align 1, !tbaa !46
  %2163 = load ptr, ptr %32, align 8, !tbaa !94
  %2164 = load i64, ptr %30, align 8, !tbaa !92
  %2165 = load ptr, ptr %33, align 8, !tbaa !95
  tail call void %2163(ptr noundef nonnull %31, i64 noundef %2164, ptr noundef %2165) #27
  store i64 0, ptr %30, align 8, !tbaa !92
  br label %2166

2166:                                             ; preds = %2161, %2155
  %2167 = load i64, ptr %30, align 8, !tbaa !92
  %2168 = add i64 %2167, 1
  store i64 %2168, ptr %30, align 8, !tbaa !92
  %2169 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %2167
  store i8 %2158, ptr %2169, align 1, !tbaa !46
  store i8 %2158, ptr %34, align 8, !tbaa !93
  %2170 = add nuw nsw i64 %2156, 1
  %2171 = icmp eq i64 %2170, 8
  br i1 %2171, label %2172, label %2155, !llvm.loop !97

2172:                                             ; preds = %2166
  %2173 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %2174 = load ptr, ptr %2173, align 8, !tbaa !46
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %2174)
  %2175 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %2176 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %2177 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %2178 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %2179 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %2180

2180:                                             ; preds = %2172, %2191
  %2181 = phi i64 [ 0, %2172 ], [ %2195, %2191 ]
  %2182 = getelementptr inbounds i8, ptr @.str.181, i64 %2181
  %2183 = load i8, ptr %2182, align 1, !tbaa !46
  %2184 = load i64, ptr %2175, align 8, !tbaa !92
  %2185 = icmp eq i64 %2184, 255
  br i1 %2185, label %2186, label %2191

2186:                                             ; preds = %2180
  %2187 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %2184
  store i8 0, ptr %2187, align 1, !tbaa !46
  %2188 = load ptr, ptr %2177, align 8, !tbaa !94
  %2189 = load i64, ptr %2175, align 8, !tbaa !92
  %2190 = load ptr, ptr %2178, align 8, !tbaa !95
  tail call void %2188(ptr noundef nonnull %2176, i64 noundef %2189, ptr noundef %2190) #27
  store i64 0, ptr %2175, align 8, !tbaa !92
  br label %2191

2191:                                             ; preds = %2186, %2180
  %2192 = load i64, ptr %2175, align 8, !tbaa !92
  %2193 = add i64 %2192, 1
  store i64 %2193, ptr %2175, align 8, !tbaa !92
  %2194 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %2192
  store i8 %2183, ptr %2194, align 1, !tbaa !46
  store i8 %2183, ptr %2179, align 8, !tbaa !93
  %2195 = add nuw nsw i64 %2181, 1
  %2196 = icmp eq i64 %2181, 0
  br i1 %2196, label %2180, label %2197, !llvm.loop !97

2197:                                             ; preds = %2191
  %2198 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %2199 = load i32, ptr %2198, align 8, !tbaa !46
  %2200 = add nsw i32 %2199, 1
  %2201 = sext i32 %2200 to i64
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %4) #27
  %2202 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.193, i64 noundef %2201)
  %2203 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4)
  %2204 = icmp eq i64 %2203, 0
  br i1 %2204, label %2228, label %2205

2205:                                             ; preds = %2197
  %2206 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %2207 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %2208 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %2209 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %2210 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %2211

2211:                                             ; preds = %2205, %2222
  %2212 = phi i64 [ 0, %2205 ], [ %2226, %2222 ]
  %2213 = getelementptr inbounds i8, ptr %4, i64 %2212
  %2214 = load i8, ptr %2213, align 1, !tbaa !46
  %2215 = load i64, ptr %2206, align 8, !tbaa !92
  %2216 = icmp eq i64 %2215, 255
  br i1 %2216, label %2217, label %2222

2217:                                             ; preds = %2211
  %2218 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %2215
  store i8 0, ptr %2218, align 1, !tbaa !46
  %2219 = load ptr, ptr %2208, align 8, !tbaa !94
  %2220 = load i64, ptr %2206, align 8, !tbaa !92
  %2221 = load ptr, ptr %2209, align 8, !tbaa !95
  tail call void %2219(ptr noundef nonnull %2207, i64 noundef %2220, ptr noundef %2221) #27
  store i64 0, ptr %2206, align 8, !tbaa !92
  br label %2222

2222:                                             ; preds = %2217, %2211
  %2223 = load i64, ptr %2206, align 8, !tbaa !92
  %2224 = add i64 %2223, 1
  store i64 %2224, ptr %2206, align 8, !tbaa !92
  %2225 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %2223
  store i8 %2214, ptr %2225, align 1, !tbaa !46
  store i8 %2214, ptr %2210, align 8, !tbaa !93
  %2226 = add nuw i64 %2212, 1
  %2227 = icmp eq i64 %2226, %2203
  br i1 %2227, label %2228, label %2211, !llvm.loop !97

2228:                                             ; preds = %2222, %2197
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %4) #27
  %2229 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %2230 = load i64, ptr %2229, align 8, !tbaa !92
  %2231 = icmp eq i64 %2230, 255
  br i1 %2231, label %2232, label %2240

2232:                                             ; preds = %2228
  %2233 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %2234 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %2230
  store i8 0, ptr %2234, align 1, !tbaa !46
  %2235 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %2236 = load ptr, ptr %2235, align 8, !tbaa !94
  %2237 = load i64, ptr %2229, align 8, !tbaa !92
  %2238 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %2239 = load ptr, ptr %2238, align 8, !tbaa !95
  tail call void %2236(ptr noundef nonnull %2233, i64 noundef %2237, ptr noundef %2239) #27
  store i64 0, ptr %2229, align 8, !tbaa !92
  br label %2240

2240:                                             ; preds = %2228, %2232
  %2241 = load i64, ptr %2229, align 8, !tbaa !92
  %2242 = add i64 %2241, 1
  store i64 %2242, ptr %2229, align 8, !tbaa !92
  %2243 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %2241
  store i8 125, ptr %2243, align 1, !tbaa !46
  %2244 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 125, ptr %2244, align 8, !tbaa !93
  br label %551

2245:                                             ; preds = %23, %2256
  %2246 = phi i64 [ 0, %23 ], [ %2260, %2256 ]
  %2247 = getelementptr inbounds i8, ptr @.str.182, i64 %2246
  %2248 = load i8, ptr %2247, align 1, !tbaa !46
  %2249 = load i64, ptr %24, align 8, !tbaa !92
  %2250 = icmp eq i64 %2249, 255
  br i1 %2250, label %2251, label %2256

2251:                                             ; preds = %2245
  %2252 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %2249
  store i8 0, ptr %2252, align 1, !tbaa !46
  %2253 = load ptr, ptr %26, align 8, !tbaa !94
  %2254 = load i64, ptr %24, align 8, !tbaa !92
  %2255 = load ptr, ptr %27, align 8, !tbaa !95
  tail call void %2253(ptr noundef nonnull %25, i64 noundef %2254, ptr noundef %2255) #27
  store i64 0, ptr %24, align 8, !tbaa !92
  br label %2256

2256:                                             ; preds = %2251, %2245
  %2257 = load i64, ptr %24, align 8, !tbaa !92
  %2258 = add i64 %2257, 1
  store i64 %2258, ptr %24, align 8, !tbaa !92
  %2259 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %2257
  store i8 %2248, ptr %2259, align 1, !tbaa !46
  store i8 %2248, ptr %28, align 8, !tbaa !93
  %2260 = add nuw nsw i64 %2246, 1
  %2261 = icmp eq i64 %2260, 14
  br i1 %2261, label %2262, label %2245, !llvm.loop !97

2262:                                             ; preds = %2256
  %2263 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %2264 = load i64, ptr %2263, align 8, !tbaa !46
  %2265 = add nsw i64 %2264, 1
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %3) #27
  %2266 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.193, i64 noundef %2265)
  %2267 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3)
  %2268 = icmp eq i64 %2267, 0
  br i1 %2268, label %2292, label %2269

2269:                                             ; preds = %2262
  %2270 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %2271 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %2272 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %2273 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %2274 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %2275

2275:                                             ; preds = %2269, %2286
  %2276 = phi i64 [ 0, %2269 ], [ %2290, %2286 ]
  %2277 = getelementptr inbounds i8, ptr %3, i64 %2276
  %2278 = load i8, ptr %2277, align 1, !tbaa !46
  %2279 = load i64, ptr %2270, align 8, !tbaa !92
  %2280 = icmp eq i64 %2279, 255
  br i1 %2280, label %2281, label %2286

2281:                                             ; preds = %2275
  %2282 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %2279
  store i8 0, ptr %2282, align 1, !tbaa !46
  %2283 = load ptr, ptr %2272, align 8, !tbaa !94
  %2284 = load i64, ptr %2270, align 8, !tbaa !92
  %2285 = load ptr, ptr %2273, align 8, !tbaa !95
  tail call void %2283(ptr noundef nonnull %2271, i64 noundef %2284, ptr noundef %2285) #27
  store i64 0, ptr %2270, align 8, !tbaa !92
  br label %2286

2286:                                             ; preds = %2281, %2275
  %2287 = load i64, ptr %2270, align 8, !tbaa !92
  %2288 = add i64 %2287, 1
  store i64 %2288, ptr %2270, align 8, !tbaa !92
  %2289 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %2287
  store i8 %2278, ptr %2289, align 1, !tbaa !46
  store i8 %2278, ptr %2274, align 8, !tbaa !93
  %2290 = add nuw i64 %2276, 1
  %2291 = icmp eq i64 %2290, %2267
  br i1 %2291, label %2292, label %2275, !llvm.loop !97

2292:                                             ; preds = %2286, %2262
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %3) #27
  %2293 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %2294 = load i64, ptr %2293, align 8, !tbaa !92
  %2295 = icmp eq i64 %2294, 255
  br i1 %2295, label %2296, label %2304

2296:                                             ; preds = %2292
  %2297 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %2298 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %2294
  store i8 0, ptr %2298, align 1, !tbaa !46
  %2299 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %2300 = load ptr, ptr %2299, align 8, !tbaa !94
  %2301 = load i64, ptr %2293, align 8, !tbaa !92
  %2302 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %2303 = load ptr, ptr %2302, align 8, !tbaa !95
  tail call void %2300(ptr noundef nonnull %2297, i64 noundef %2301, ptr noundef %2303) #27
  store i64 0, ptr %2293, align 8, !tbaa !92
  br label %2304

2304:                                             ; preds = %2292, %2296
  %2305 = load i64, ptr %2293, align 8, !tbaa !92
  %2306 = add i64 %2305, 1
  store i64 %2306, ptr %2293, align 8, !tbaa !92
  %2307 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %2305
  store i8 125, ptr %2307, align 1, !tbaa !46
  %2308 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 125, ptr %2308, align 8, !tbaa !93
  br label %551

2309:                                             ; preds = %21
  store i32 1, ptr %16, align 8, !tbaa !96
  br label %551

2310:                                             ; preds = %1008
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #27
  br label %551
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @cplus_demangle_print(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #12 !prof !34 {
  %5 = alloca %struct.d_print_info, align 8
  %6 = alloca %struct.d_growable_string, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #27
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds %struct.d_growable_string, ptr %6, i64 0, i32 2
  %9 = getelementptr inbounds %struct.d_growable_string, ptr %6, i64 0, i32 3
  %10 = icmp eq i32 %2, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  br i1 %10, label %20, label %11

11:                                               ; preds = %4, %11
  %12 = phi i64 [ %14, %11 ], [ 2, %4 ]
  %13 = icmp ult i64 %12, %7
  %14 = shl i64 %12, 1
  br i1 %13, label %11, label %15, !llvm.loop !124

15:                                               ; preds = %11
  %16 = tail call ptr @malloc(i64 %12)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store i32 1, ptr %9, align 8, !tbaa !125
  br label %20

19:                                               ; preds = %15
  store ptr %16, ptr %6, align 8, !tbaa !127
  store i64 %12, ptr %8, align 8, !tbaa !128
  br label %20

20:                                               ; preds = %4, %18, %19
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %5) #27
  store i32 %0, ptr %5, align 8, !tbaa !90
  %21 = getelementptr inbounds %struct.d_print_info, ptr %5, i64 0, i32 2
  store i64 0, ptr %21, align 8, !tbaa !92
  %22 = getelementptr inbounds %struct.d_print_info, ptr %5, i64 0, i32 3
  store i8 0, ptr %22, align 8, !tbaa !93
  %23 = getelementptr inbounds %struct.d_print_info, ptr %5, i64 0, i32 6
  %24 = getelementptr inbounds %struct.d_print_info, ptr %5, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  store ptr @d_growable_string_callback_adapter, ptr %24, align 8, !tbaa !94
  %25 = getelementptr inbounds %struct.d_print_info, ptr %5, i64 0, i32 5
  store ptr %6, ptr %25, align 8, !tbaa !95
  %26 = getelementptr inbounds %struct.d_print_info, ptr %5, i64 0, i32 8
  store i32 0, ptr %26, align 8, !tbaa !96
  call fastcc void @d_print_comp(ptr noundef nonnull %5, ptr noundef %1)
  %27 = getelementptr inbounds %struct.d_print_info, ptr %5, i64 0, i32 1
  %28 = load i64, ptr %21, align 8, !tbaa !92
  %29 = getelementptr inbounds %struct.d_print_info, ptr %5, i64 0, i32 1, i64 %28
  store i8 0, ptr %29, align 1, !tbaa !46
  %30 = load ptr, ptr %24, align 8, !tbaa !94
  %31 = load i64, ptr %21, align 8, !tbaa !92
  %32 = load ptr, ptr %25, align 8, !tbaa !95
  call void %30(ptr noundef nonnull %27, i64 noundef %31, ptr noundef %32) #27
  store i64 0, ptr %21, align 8, !tbaa !92
  %33 = load i32, ptr %26, align 8, !tbaa !96
  %34 = icmp eq i32 %33, 0
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %5) #27
  br i1 %34, label %37, label %35

35:                                               ; preds = %20
  %36 = load ptr, ptr %6, align 8, !tbaa !127
  call void @free(ptr noundef %36)
  store i64 0, ptr %3, align 8, !tbaa !129
  br label %43

37:                                               ; preds = %20
  %38 = load i32, ptr %9, align 8, !tbaa !125
  %39 = icmp eq i32 %38, 0
  %40 = load i64, ptr %8, align 8
  %41 = select i1 %39, i64 %40, i64 1
  store i64 %41, ptr %3, align 8, !tbaa !129
  %42 = load ptr, ptr %6, align 8, !tbaa !127
  br label %43

43:                                               ; preds = %37, %35
  %44 = phi ptr [ %42, %37 ], [ null, %35 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #27
  ret ptr %44
}

; Function Attrs: cold nounwind uwtable
define internal void @d_growable_string_callback_adapter(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2) #12 !prof !34 {
  %4 = getelementptr inbounds %struct.d_growable_string, ptr %2, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !130
  %6 = add i64 %1, 1
  %7 = add i64 %6, %5
  %8 = getelementptr inbounds %struct.d_growable_string, ptr %2, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !128
  %10 = icmp ugt i64 %7, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.d_growable_string, ptr %2, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !125
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = icmp eq i64 %9, 0
  %17 = select i1 %16, i64 2, i64 %9
  br label %18

18:                                               ; preds = %18, %15
  %19 = phi i64 [ %17, %15 ], [ %21, %18 ]
  %20 = icmp ult i64 %19, %7
  %21 = shl i64 %19, 1
  br i1 %20, label %18, label %22, !llvm.loop !124

22:                                               ; preds = %18
  %23 = load ptr, ptr %2, align 8, !tbaa !127
  %24 = tail call ptr @realloc(ptr noundef %23, i64 noundef %19) #28
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load ptr, ptr %2, align 8, !tbaa !127
  tail call void @free(ptr noundef %27)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store i32 1, ptr %12, align 8, !tbaa !125
  br label %29

28:                                               ; preds = %22
  store ptr %24, ptr %2, align 8, !tbaa !127
  store i64 %19, ptr %8, align 8, !tbaa !128
  br label %29

29:                                               ; preds = %28, %26, %11, %3
  %30 = getelementptr inbounds %struct.d_growable_string, ptr %2, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !125
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load ptr, ptr %2, align 8, !tbaa !127
  %35 = load i64, ptr %4, align 8, !tbaa !130
  %36 = getelementptr inbounds i8, ptr %34, i64 %35
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %36, ptr align 1 %0, i64 %1, i1 false)
  %37 = load ptr, ptr %2, align 8, !tbaa !127
  %38 = load i64, ptr %4, align 8, !tbaa !130
  %39 = getelementptr i8, ptr %37, i64 %38
  %40 = getelementptr i8, ptr %39, i64 %1
  store i8 0, ptr %40, align 1, !tbaa !46
  %41 = load i64, ptr %4, align 8, !tbaa !130
  %42 = add i64 %41, %1
  store i64 %42, ptr %4, align 8, !tbaa !130
  br label %43

43:                                               ; preds = %29, %33
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @cplus_demangle_init_info(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #8 !prof !34 {
  store ptr %0, ptr %3, align 8, !tbaa !131
  %5 = getelementptr inbounds i8, ptr %0, i64 %2
  %6 = getelementptr inbounds %struct.d_info, ptr %3, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.d_info, ptr %3, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.d_info, ptr %3, i64 0, i32 3
  store ptr %0, ptr %8, align 8, !tbaa !55
  %9 = trunc i64 %2 to i32
  %10 = shl i32 %9, 1
  %11 = getelementptr inbounds %struct.d_info, ptr %3, i64 0, i32 6
  store i32 %10, ptr %11, align 4, !tbaa !59
  %12 = getelementptr inbounds %struct.d_info, ptr %3, i64 0, i32 5
  store i32 0, ptr %12, align 8, !tbaa !58
  %13 = getelementptr inbounds %struct.d_info, ptr %3, i64 0, i32 9
  store i32 %9, ptr %13, align 4, !tbaa !69
  %14 = getelementptr inbounds %struct.d_info, ptr %3, i64 0, i32 8
  store i32 0, ptr %14, align 8, !tbaa !68
  %15 = getelementptr inbounds %struct.d_info, ptr %3, i64 0, i32 10
  store i32 0, ptr %15, align 8, !tbaa !77
  %16 = getelementptr inbounds %struct.d_info, ptr %3, i64 0, i32 11
  store ptr null, ptr %16, align 8, !tbaa !75
  %17 = getelementptr inbounds %struct.d_info, ptr %3, i64 0, i32 12
  store i32 0, ptr %17, align 8, !tbaa !57
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @cplus_demangle_v3(ptr noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !34 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %4 = call fastcc ptr @d_demangle(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  ret ptr %4
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @d_demangle(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #12 !prof !34 {
  %4 = alloca %struct.d_growable_string, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  %5 = call fastcc i32 @d_demangle_callback(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @d_growable_string_callback_adapter, ptr noundef nonnull %4), !range !62
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 8, !tbaa !127
  call void @free(ptr noundef %8)
  store i64 0, ptr %2, align 8, !tbaa !129
  br label %17

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.d_growable_string, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.d_growable_string, ptr %4, i64 0, i32 2
  %12 = load i32, ptr %10, align 8, !tbaa !125
  %13 = icmp eq i32 %12, 0
  %14 = load i64, ptr %11, align 8
  %15 = select i1 %13, i64 %14, i64 1
  store i64 %15, ptr %2, align 8, !tbaa !129
  %16 = load ptr, ptr %4, align 8, !tbaa !127
  br label %17

17:                                               ; preds = %9, %7
  %18 = phi ptr [ null, %7 ], [ %16, %9 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  ret ptr %18
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @cplus_demangle_v3_callback(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #12 !prof !34 {
  %5 = tail call fastcc i32 @d_demangle_callback(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !range !62
  ret i32 %5
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @d_demangle_callback(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #12 !prof !34 {
  %5 = alloca %struct.d_print_info, align 8
  %6 = alloca %struct.d_info, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %6) #27
  %7 = load i8, ptr %0, align 1, !tbaa !46
  %8 = icmp eq i8 %7, 95
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %0, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !46
  %12 = icmp eq i8 %11, 90
  br i1 %12, label %32, label %13

13:                                               ; preds = %9, %4
  %14 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.130, i64 noundef 8)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, ptr %0, i64 8
  %18 = load i8, ptr %17, align 1, !tbaa !46
  switch i8 %18, label %29 [
    i8 46, label %19
    i8 95, label %19
    i8 36, label %19
  ]

19:                                               ; preds = %16, %16, %16
  %20 = getelementptr inbounds i8, ptr %0, i64 9
  %21 = load i8, ptr %20, align 1, !tbaa !46
  switch i8 %21, label %29 [
    i8 68, label %22
    i8 73, label %22
  ]

22:                                               ; preds = %19, %19
  %23 = getelementptr inbounds i8, ptr %0, i64 10
  %24 = load i8, ptr %23, align 1, !tbaa !46
  %25 = icmp eq i8 %24, 95
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = icmp eq i8 %21, 73
  %28 = select i1 %27, i32 2, i32 3
  br label %32

29:                                               ; preds = %22, %16, %19, %13
  %30 = and i32 %1, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %128, label %32

32:                                               ; preds = %29, %9, %26
  %33 = phi i32 [ %28, %26 ], [ 1, %9 ], [ 0, %29 ]
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  store ptr %0, ptr %6, align 8, !tbaa !131
  %35 = getelementptr inbounds i8, ptr %0, i64 %34
  %36 = getelementptr inbounds %struct.d_info, ptr %6, i64 0, i32 1
  store ptr %35, ptr %36, align 8, !tbaa !74
  %37 = getelementptr inbounds %struct.d_info, ptr %6, i64 0, i32 2
  store i32 %1, ptr %37, align 8, !tbaa !65
  %38 = getelementptr inbounds %struct.d_info, ptr %6, i64 0, i32 3
  store ptr %0, ptr %38, align 8, !tbaa !55
  %39 = trunc i64 %34 to i32
  %40 = shl i32 %39, 1
  %41 = getelementptr inbounds %struct.d_info, ptr %6, i64 0, i32 6
  store i32 %40, ptr %41, align 4, !tbaa !59
  %42 = getelementptr inbounds %struct.d_info, ptr %6, i64 0, i32 5
  store i32 0, ptr %42, align 8, !tbaa !58
  %43 = getelementptr inbounds %struct.d_info, ptr %6, i64 0, i32 9
  store i32 %39, ptr %43, align 4, !tbaa !69
  %44 = getelementptr inbounds %struct.d_info, ptr %6, i64 0, i32 8
  store i32 0, ptr %44, align 8, !tbaa !68
  %45 = getelementptr inbounds %struct.d_info, ptr %6, i64 0, i32 10
  store i32 0, ptr %45, align 8, !tbaa !77
  %46 = getelementptr inbounds %struct.d_info, ptr %6, i64 0, i32 11
  store ptr null, ptr %46, align 8, !tbaa !75
  %47 = getelementptr inbounds %struct.d_info, ptr %6, i64 0, i32 12
  store i32 0, ptr %47, align 8, !tbaa !57
  %48 = zext i32 %40 to i64
  %49 = tail call ptr @llvm.stacksave.p0()
  %50 = alloca %struct.demangle_component, i64 %48, align 16
  %51 = load i32, ptr %43, align 4, !tbaa !69
  %52 = zext i32 %51 to i64
  %53 = alloca ptr, i64 %52, align 16
  %54 = getelementptr inbounds %struct.d_info, ptr %6, i64 0, i32 4
  store ptr %50, ptr %54, align 8, !tbaa !60
  %55 = getelementptr inbounds %struct.d_info, ptr %6, i64 0, i32 7
  store ptr %53, ptr %55, align 8, !tbaa !70
  switch i32 %33, label %97 [
    i32 0, label %56
    i32 1, label %58
    i32 2, label %69
    i32 3, label %69
  ]

56:                                               ; preds = %32
  %57 = call ptr @cplus_demangle_type(ptr noundef nonnull %6)
  br label %98

58:                                               ; preds = %32
  %59 = load ptr, ptr %38, align 8, !tbaa !55
  %60 = load i8, ptr %59, align 1, !tbaa !46
  %61 = icmp eq i8 %60, 95
  br i1 %61, label %62, label %98

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1
  store ptr %63, ptr %38, align 8, !tbaa !55
  %64 = load i8, ptr %63, align 1, !tbaa !46
  %65 = icmp eq i8 %64, 90
  br i1 %65, label %66, label %98

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, ptr %59, i64 2
  store ptr %67, ptr %38, align 8, !tbaa !55
  %68 = call fastcc ptr @d_encoding(ptr noundef nonnull %6, i32 noundef 1)
  br label %98

69:                                               ; preds = %32, %32
  %70 = load ptr, ptr %38, align 8, !tbaa !55
  %71 = getelementptr inbounds i8, ptr %70, i64 11
  store ptr %71, ptr %38, align 8, !tbaa !55
  %72 = icmp eq i32 %33, 2
  %73 = select i1 %72, i32 60, i32 61
  %74 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %71)
  %75 = trunc i64 %74 to i32
  %76 = load i32, ptr %42, align 8, !tbaa !58
  %77 = load i32, ptr %41, align 4, !tbaa !59
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %69
  %80 = sext i32 %76 to i64
  %81 = getelementptr inbounds %struct.demangle_component, ptr %50, i64 %80
  %82 = add nsw i32 %76, 1
  store i32 %82, ptr %42, align 8, !tbaa !58
  br label %83

83:                                               ; preds = %79, %69
  %84 = phi ptr [ %81, %79 ], [ null, %69 ]
  %85 = icmp eq ptr %84, null
  %86 = icmp eq i32 %75, 0
  %87 = or i1 %86, %85
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  store i32 0, ptr %84, align 8, !tbaa !53
  %89 = getelementptr inbounds %struct.demangle_component, ptr %84, i64 0, i32 1
  store ptr %71, ptr %89, align 8, !tbaa !46
  %90 = getelementptr inbounds %struct.demangle_component, ptr %84, i64 0, i32 1, i32 0, i32 1
  store i32 %75, ptr %90, align 8, !tbaa !46
  br label %91

91:                                               ; preds = %83, %88
  %92 = phi ptr [ %84, %88 ], [ null, %83 ]
  %93 = call fastcc ptr @d_make_comp(ptr noundef nonnull %6, i32 noundef %73, ptr noundef %92, ptr noundef null)
  %94 = load ptr, ptr %38, align 8, !tbaa !55
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %94)
  %96 = getelementptr inbounds i8, ptr %94, i64 %95
  store ptr %96, ptr %38, align 8, !tbaa !55
  br label %98

97:                                               ; preds = %32
  unreachable

98:                                               ; preds = %66, %62, %58, %91, %56
  %99 = phi ptr [ %93, %91 ], [ %57, %56 ], [ %68, %66 ], [ null, %62 ], [ null, %58 ]
  %100 = and i32 %1, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %38, align 8, !tbaa !55
  %104 = load i8, ptr %103, align 1, !tbaa !46
  %105 = icmp eq i8 %104, 0
  %106 = select i1 %105, ptr %99, ptr null
  br label %107

107:                                              ; preds = %102, %98
  %108 = phi ptr [ %99, %98 ], [ %106, %102 ]
  %109 = icmp eq ptr %108, null
  br i1 %109, label %126, label %110

110:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %5) #27
  store i32 %1, ptr %5, align 8, !tbaa !90
  %111 = getelementptr inbounds %struct.d_print_info, ptr %5, i64 0, i32 2
  store i64 0, ptr %111, align 8, !tbaa !92
  %112 = getelementptr inbounds %struct.d_print_info, ptr %5, i64 0, i32 3
  store i8 0, ptr %112, align 8, !tbaa !93
  %113 = getelementptr inbounds %struct.d_print_info, ptr %5, i64 0, i32 6
  %114 = getelementptr inbounds %struct.d_print_info, ptr %5, i64 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %113, i8 0, i64 16, i1 false)
  store ptr %2, ptr %114, align 8, !tbaa !94
  %115 = getelementptr inbounds %struct.d_print_info, ptr %5, i64 0, i32 5
  store ptr %3, ptr %115, align 8, !tbaa !95
  %116 = getelementptr inbounds %struct.d_print_info, ptr %5, i64 0, i32 8
  store i32 0, ptr %116, align 8, !tbaa !96
  call fastcc void @d_print_comp(ptr noundef nonnull %5, ptr noundef nonnull %108)
  %117 = getelementptr inbounds %struct.d_print_info, ptr %5, i64 0, i32 1
  %118 = load i64, ptr %111, align 8, !tbaa !92
  %119 = getelementptr inbounds %struct.d_print_info, ptr %5, i64 0, i32 1, i64 %118
  store i8 0, ptr %119, align 1, !tbaa !46
  %120 = load ptr, ptr %114, align 8, !tbaa !94
  %121 = load i64, ptr %111, align 8, !tbaa !92
  %122 = load ptr, ptr %115, align 8, !tbaa !95
  call void %120(ptr noundef nonnull %117, i64 noundef %121, ptr noundef %122) #27
  store i64 0, ptr %111, align 8, !tbaa !92
  %123 = load i32, ptr %116, align 8, !tbaa !96
  %124 = icmp eq i32 %123, 0
  %125 = zext i1 %124 to i32
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %5) #27
  br label %126

126:                                              ; preds = %107, %110
  %127 = phi i32 [ %125, %110 ], [ 0, %107 ]
  call void @llvm.stackrestore.p0(ptr %49)
  br label %128

128:                                              ; preds = %29, %126
  %129 = phi i32 [ %127, %126 ], [ 0, %29 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #27
  ret i32 %129
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @java_demangle_v3(ptr noundef %0) local_unnamed_addr #12 !prof !34 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  %3 = call fastcc ptr @d_demangle(ptr noundef %0, i32 noundef 37, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @java_demangle_v3_callback(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 !prof !34 {
  %4 = tail call fastcc i32 @d_demangle_callback(ptr noundef %0, i32 noundef 37, ptr noundef %1, ptr noundef %2), !range !62
  ret i32 %4
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local i32 @is_gnu_v3_mangled_ctor(ptr noundef %0) local_unnamed_addr #14 !prof !34 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #27
  %4 = call fastcc i32 @is_ctor_or_dtor(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3), !range !62
  %5 = icmp eq i32 %4, 0
  %6 = load i32, ptr %2, align 4
  %7 = select i1 %5, i32 0, i32 %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #27
  ret i32 %7
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc i32 @is_ctor_or_dtor(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #14 !prof !34 {
  %4 = alloca %struct.d_info, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #27
  store i32 0, ptr %1, align 4, !tbaa !85
  store i32 0, ptr %2, align 4, !tbaa !85
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  store ptr %0, ptr %4, align 8, !tbaa !131
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = getelementptr inbounds %struct.d_info, ptr %4, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.d_info, ptr %4, i64 0, i32 2
  store i32 16384, ptr %8, align 8, !tbaa !65
  %9 = getelementptr inbounds %struct.d_info, ptr %4, i64 0, i32 3
  store ptr %0, ptr %9, align 8, !tbaa !55
  %10 = trunc i64 %5 to i32
  %11 = shl i32 %10, 1
  %12 = getelementptr inbounds %struct.d_info, ptr %4, i64 0, i32 6
  store i32 %11, ptr %12, align 4, !tbaa !59
  %13 = getelementptr inbounds %struct.d_info, ptr %4, i64 0, i32 5
  store i32 0, ptr %13, align 8, !tbaa !58
  %14 = getelementptr inbounds %struct.d_info, ptr %4, i64 0, i32 9
  store i32 %10, ptr %14, align 4, !tbaa !69
  %15 = getelementptr inbounds %struct.d_info, ptr %4, i64 0, i32 8
  store i32 0, ptr %15, align 8, !tbaa !68
  %16 = getelementptr inbounds %struct.d_info, ptr %4, i64 0, i32 10
  store i32 0, ptr %16, align 8, !tbaa !77
  %17 = getelementptr inbounds %struct.d_info, ptr %4, i64 0, i32 11
  store ptr null, ptr %17, align 8, !tbaa !75
  %18 = getelementptr inbounds %struct.d_info, ptr %4, i64 0, i32 12
  store i32 0, ptr %18, align 8, !tbaa !57
  %19 = zext i32 %11 to i64
  %20 = tail call ptr @llvm.stacksave.p0()
  %21 = alloca %struct.demangle_component, i64 %19, align 16
  %22 = load i32, ptr %14, align 4, !tbaa !69
  %23 = zext i32 %22 to i64
  %24 = alloca ptr, i64 %23, align 16
  %25 = getelementptr inbounds %struct.d_info, ptr %4, i64 0, i32 4
  store ptr %21, ptr %25, align 8, !tbaa !60
  %26 = getelementptr inbounds %struct.d_info, ptr %4, i64 0, i32 7
  store ptr %24, ptr %26, align 8, !tbaa !70
  %27 = load ptr, ptr %9, align 8, !tbaa !55
  %28 = load i8, ptr %27, align 1, !tbaa !46
  %29 = icmp eq i8 %28, 95
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = getelementptr inbounds i8, ptr %27, i64 1
  store ptr %31, ptr %9, align 8, !tbaa !55
  %32 = load i8, ptr %31, align 1, !tbaa !46
  %33 = icmp eq i8 %32, 90
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %27, i64 2
  store ptr %35, ptr %9, align 8, !tbaa !55
  %36 = call fastcc ptr @d_encoding(ptr noundef nonnull %4, i32 noundef 1)
  br label %37

37:                                               ; preds = %3, %30, %34
  %38 = phi ptr [ %36, %34 ], [ null, %30 ], [ null, %3 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %60, label %40

40:                                               ; preds = %37, %56
  %41 = phi ptr [ %58, %56 ], [ %38, %37 ]
  %42 = phi i32 [ %57, %56 ], [ 0, %37 ]
  %43 = load i32, ptr %41, align 8, !tbaa !53
  switch i32 %43, label %56 [
    i32 3, label %44
    i32 4, label %44
    i32 26, label %44
    i32 27, label %44
    i32 28, label %44
    i32 1, label %47
    i32 2, label %47
    i32 7, label %50
    i32 8, label %53
  ]

44:                                               ; preds = %40, %40, %40, %40, %40
  %45 = getelementptr inbounds %struct.demangle_component, ptr %41, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  br label %56

47:                                               ; preds = %40, %40
  %48 = getelementptr inbounds %struct.demangle_component, ptr %41, i64 0, i32 1, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  br label %56

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.demangle_component, ptr %41, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !46
  store i32 %52, ptr %1, align 4, !tbaa !85
  br label %56

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.demangle_component, ptr %41, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !46
  store i32 %55, ptr %2, align 4, !tbaa !85
  br label %56

56:                                               ; preds = %40, %53, %50, %47, %44
  %57 = phi i32 [ 1, %53 ], [ 1, %50 ], [ %42, %47 ], [ %42, %44 ], [ %42, %40 ]
  %58 = phi ptr [ null, %53 ], [ null, %50 ], [ %49, %47 ], [ %46, %44 ], [ null, %40 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %40, !llvm.loop !132

60:                                               ; preds = %56, %37
  %61 = phi i32 [ 0, %37 ], [ %57, %56 ]
  call void @llvm.stackrestore.p0(ptr %20)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #27
  ret i32 %61
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local i32 @is_gnu_v3_mangled_dtor(ptr noundef %0) local_unnamed_addr #14 !prof !34 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #27
  %4 = call fastcc i32 @is_ctor_or_dtor(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3), !range !62
  %5 = icmp eq i32 %4, 0
  %6 = load i32, ptr %3, align 4
  %7 = select i1 %5, i32 0, i32 %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #27
  ret i32 %7
}

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_name(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = load i8, ptr %4, align 1, !tbaa !46
  switch i8 %5, label %291 [
    i8 78, label %6
    i8 90, label %85
    i8 76, label %194
    i8 85, label %194
    i8 83, label %196
  ]

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  %7 = load i8, ptr %4, align 1, !tbaa !46
  %8 = icmp eq i8 %7, 78
  br i1 %8, label %9, label %83

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !55
  %11 = call fastcc ptr @d_cv_qualifiers(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %83, label %13

13:                                               ; preds = %9, %73
  %14 = phi ptr [ %70, %73 ], [ null, %9 ]
  %15 = phi ptr [ %71, %73 ], [ undef, %9 ]
  %16 = load ptr, ptr %3, align 8, !tbaa !55
  %17 = load i8, ptr %16, align 1, !tbaa !46
  %18 = freeze i8 %17
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %69, label %20

20:                                               ; preds = %13
  %21 = add i8 %18, -48
  %22 = icmp ult i8 %21, 10
  %23 = add i8 %18, -97
  %24 = icmp ult i8 %23, 26
  %25 = or i1 %22, %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  switch i8 %18, label %41 [
    i8 85, label %27
    i8 76, label %27
    i8 68, label %27
    i8 67, label %27
    i8 83, label %29
    i8 73, label %31
    i8 84, label %35
    i8 69, label %69
    i8 77, label %37
  ]

27:                                               ; preds = %26, %26, %26, %26, %20
  %28 = call fastcc ptr @d_unqualified_name(ptr noundef %0)
  br label %42

29:                                               ; preds = %26
  %30 = call fastcc ptr @d_substitution(ptr noundef %0, i32 noundef 1)
  br label %42

31:                                               ; preds = %26
  %32 = icmp eq ptr %14, null
  br i1 %32, label %69, label %33

33:                                               ; preds = %31
  %34 = call fastcc ptr @d_template_args(ptr noundef %0)
  br label %42

35:                                               ; preds = %26
  %36 = call fastcc ptr @d_template_param(ptr noundef %0)
  br label %42

37:                                               ; preds = %26
  %38 = icmp eq ptr %14, null
  br i1 %38, label %69, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %40, ptr %3, align 8, !tbaa !55
  br label %69, !llvm.loop !133

41:                                               ; preds = %26
  br label %69

42:                                               ; preds = %35, %33, %29, %27
  %43 = phi i32 [ 1, %27 ], [ 1, %29 ], [ 4, %33 ], [ 1, %35 ]
  %44 = phi ptr [ %28, %27 ], [ %30, %29 ], [ %34, %33 ], [ %36, %35 ]
  %45 = icmp eq ptr %14, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = call fastcc ptr @d_make_comp(ptr noundef %0, i32 noundef %43, ptr noundef nonnull %14, ptr noundef %44)
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi ptr [ %47, %46 ], [ %44, %42 ]
  %50 = icmp eq i8 %18, 83
  br i1 %50, label %69, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %3, align 8, !tbaa !55
  %53 = load i8, ptr %52, align 1, !tbaa !46
  %54 = icmp eq i8 %53, 69
  br i1 %54, label %69, label %55

55:                                               ; preds = %51
  %56 = icmp eq ptr %49, null
  br i1 %56, label %69, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 8
  %59 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 9
  %60 = load i32, ptr %58, align 8, !tbaa !68
  %61 = load i32, ptr %59, align 4, !tbaa !69
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !70
  %66 = sext i32 %60 to i64
  %67 = getelementptr inbounds ptr, ptr %65, i64 %66
  store ptr %49, ptr %67, align 8, !tbaa !35
  %68 = add nsw i32 %60, 1
  store i32 %68, ptr %58, align 8, !tbaa !68
  br label %69

69:                                               ; preds = %13, %48, %51, %63, %55, %57, %41, %39, %37, %31, %26
  %70 = phi ptr [ %14, %39 ], [ %14, %41 ], [ null, %31 ], [ %14, %26 ], [ null, %37 ], [ %49, %57 ], [ %49, %55 ], [ %49, %63 ], [ %49, %51 ], [ %49, %48 ], [ %14, %13 ]
  %71 = phi ptr [ %15, %39 ], [ null, %41 ], [ null, %31 ], [ %14, %26 ], [ null, %37 ], [ null, %57 ], [ null, %55 ], [ %15, %63 ], [ %15, %51 ], [ %15, %48 ], [ null, %13 ]
  %72 = phi i32 [ 2, %39 ], [ 1, %41 ], [ 1, %31 ], [ 1, %26 ], [ 1, %37 ], [ 1, %57 ], [ 1, %55 ], [ 0, %63 ], [ 0, %51 ], [ 0, %48 ], [ 1, %13 ]
  switch i32 %72, label %74 [
    i32 0, label %73
    i32 2, label %73
  ]

73:                                               ; preds = %69, %69
  br label %13, !llvm.loop !133

74:                                               ; preds = %69
  store ptr %71, ptr %11, align 8, !tbaa !35
  %75 = icmp eq ptr %71, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %74
  %77 = load ptr, ptr %3, align 8, !tbaa !55
  %78 = load i8, ptr %77, align 1, !tbaa !46
  %79 = icmp eq i8 %78, 69
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = getelementptr inbounds i8, ptr %77, i64 1
  store ptr %81, ptr %3, align 8, !tbaa !55
  %82 = load ptr, ptr %2, align 8, !tbaa !35
  br label %83

83:                                               ; preds = %6, %9, %74, %76, %80
  %84 = phi ptr [ %82, %80 ], [ null, %6 ], [ null, %9 ], [ null, %74 ], [ null, %76 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  br label %330

85:                                               ; preds = %1
  %86 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %86, ptr %3, align 8, !tbaa !55
  %87 = tail call fastcc ptr @d_encoding(ptr noundef %0, i32 noundef 0)
  %88 = load ptr, ptr %3, align 8, !tbaa !55
  %89 = load i8, ptr %88, align 1, !tbaa !46
  %90 = icmp eq i8 %89, 69
  br i1 %90, label %91, label %330

91:                                               ; preds = %85
  %92 = getelementptr inbounds i8, ptr %88, i64 1
  store ptr %92, ptr %3, align 8, !tbaa !55
  %93 = load i8, ptr %92, align 1, !tbaa !46
  switch i8 %93, label %142 [
    i8 115, label %94
    i8 100, label %137
  ]

94:                                               ; preds = %91
  %95 = getelementptr inbounds i8, ptr %88, i64 2
  store ptr %95, ptr %3, align 8, !tbaa !55
  %96 = tail call fastcc i32 @d_discriminator(ptr noundef %0), !range !62
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %330, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %100 = load i32, ptr %99, align 8, !tbaa !58
  %101 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %102 = load i32, ptr %101, align 4, !tbaa !59
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !60
  %107 = sext i32 %100 to i64
  %108 = getelementptr inbounds %struct.demangle_component, ptr %106, i64 %107
  %109 = add nsw i32 %100, 1
  store i32 %109, ptr %99, align 8, !tbaa !58
  br label %110

110:                                              ; preds = %104, %98
  %111 = phi ptr [ %108, %104 ], [ null, %98 ]
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  store i32 0, ptr %111, align 8, !tbaa !53
  %114 = getelementptr inbounds %struct.demangle_component, ptr %111, i64 0, i32 1
  store ptr @.str.129, ptr %114, align 8, !tbaa !46
  %115 = getelementptr inbounds %struct.demangle_component, ptr %111, i64 0, i32 1, i32 0, i32 1
  store i32 14, ptr %115, align 8, !tbaa !46
  br label %116

116:                                              ; preds = %110, %113
  %117 = phi ptr [ %111, %113 ], [ null, %110 ]
  %118 = icmp eq ptr %87, null
  %119 = icmp eq ptr %117, null
  %120 = or i1 %118, %119
  br i1 %120, label %330, label %121

121:                                              ; preds = %116
  %122 = load i32, ptr %99, align 8, !tbaa !58
  %123 = load i32, ptr %101, align 4, !tbaa !59
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %127 = load ptr, ptr %126, align 8, !tbaa !60
  %128 = sext i32 %122 to i64
  %129 = getelementptr inbounds %struct.demangle_component, ptr %127, i64 %128
  %130 = add nsw i32 %122, 1
  store i32 %130, ptr %99, align 8, !tbaa !58
  br label %131

131:                                              ; preds = %125, %121
  %132 = phi ptr [ %129, %125 ], [ null, %121 ]
  %133 = icmp eq ptr %132, null
  br i1 %133, label %330, label %134

134:                                              ; preds = %131
  store i32 2, ptr %132, align 8, !tbaa !53
  %135 = getelementptr inbounds %struct.demangle_component, ptr %132, i64 0, i32 1
  store ptr %87, ptr %135, align 8, !tbaa !46
  %136 = getelementptr inbounds %struct.demangle_component, ptr %132, i64 0, i32 1, i32 0, i32 1
  store ptr %117, ptr %136, align 8, !tbaa !46
  br label %330

137:                                              ; preds = %91
  %138 = getelementptr inbounds i8, ptr %88, i64 2
  store ptr %138, ptr %3, align 8, !tbaa !55
  %139 = tail call fastcc i64 @d_compact_number(ptr noundef %0)
  %140 = trunc i64 %139 to i32
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %330, label %142

142:                                              ; preds = %137, %91
  %143 = phi i32 [ %140, %137 ], [ -1, %91 ]
  %144 = tail call fastcc ptr @d_name(ptr noundef %0)
  %145 = icmp eq ptr %144, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %142
  %147 = load i32, ptr %144, align 8, !tbaa !53
  switch i32 %147, label %148 [
    i32 62, label %151
    i32 64, label %151
  ]

148:                                              ; preds = %146
  %149 = tail call fastcc i32 @d_discriminator(ptr noundef %0), !range !62
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %330, label %151

151:                                              ; preds = %146, %148, %146, %142
  %152 = icmp sgt i32 %143, -1
  br i1 %152, label %153, label %171

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %155 = load i32, ptr %154, align 8, !tbaa !58
  %156 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %157 = load i32, ptr %156, align 4, !tbaa !59
  %158 = icmp slt i32 %155, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %161 = load ptr, ptr %160, align 8, !tbaa !60
  %162 = sext i32 %155 to i64
  %163 = getelementptr inbounds %struct.demangle_component, ptr %161, i64 %162
  %164 = add nsw i32 %155, 1
  store i32 %164, ptr %154, align 8, !tbaa !58
  br label %165

165:                                              ; preds = %159, %153
  %166 = phi ptr [ %163, %159 ], [ null, %153 ]
  %167 = icmp eq ptr %166, null
  br i1 %167, label %171, label %168

168:                                              ; preds = %165
  store i32 63, ptr %166, align 8, !tbaa !53
  %169 = getelementptr inbounds %struct.demangle_component, ptr %166, i64 0, i32 1
  %170 = getelementptr inbounds %struct.demangle_component, ptr %166, i64 0, i32 1, i32 0, i32 1
  store i32 %143, ptr %170, align 8, !tbaa !46
  store ptr %144, ptr %169, align 8, !tbaa !46
  br label %171

171:                                              ; preds = %168, %165, %151
  %172 = phi ptr [ %144, %151 ], [ %166, %165 ], [ %166, %168 ]
  %173 = icmp eq ptr %87, null
  %174 = icmp eq ptr %172, null
  %175 = or i1 %173, %174
  br i1 %175, label %330, label %176

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %178 = load i32, ptr %177, align 8, !tbaa !58
  %179 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %180 = load i32, ptr %179, align 4, !tbaa !59
  %181 = icmp slt i32 %178, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %176
  %183 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %184 = load ptr, ptr %183, align 8, !tbaa !60
  %185 = sext i32 %178 to i64
  %186 = getelementptr inbounds %struct.demangle_component, ptr %184, i64 %185
  %187 = add nsw i32 %178, 1
  store i32 %187, ptr %177, align 8, !tbaa !58
  br label %188

188:                                              ; preds = %182, %176
  %189 = phi ptr [ %186, %182 ], [ null, %176 ]
  %190 = icmp eq ptr %189, null
  br i1 %190, label %330, label %191

191:                                              ; preds = %188
  store i32 2, ptr %189, align 8, !tbaa !53
  %192 = getelementptr inbounds %struct.demangle_component, ptr %189, i64 0, i32 1
  store ptr %87, ptr %192, align 8, !tbaa !46
  %193 = getelementptr inbounds %struct.demangle_component, ptr %189, i64 0, i32 1, i32 0, i32 1
  store ptr %172, ptr %193, align 8, !tbaa !46
  br label %330

194:                                              ; preds = %1, %1
  %195 = tail call fastcc ptr @d_unqualified_name(ptr noundef %0)
  br label %330

196:                                              ; preds = %1
  %197 = getelementptr inbounds i8, ptr %4, i64 1
  %198 = load i8, ptr %197, align 1, !tbaa !46
  %199 = icmp eq i8 %198, 116
  br i1 %199, label %202, label %200

200:                                              ; preds = %196
  %201 = tail call fastcc ptr @d_substitution(ptr noundef %0, i32 noundef 0)
  br label %248

202:                                              ; preds = %196
  %203 = getelementptr inbounds i8, ptr %4, i64 2
  store ptr %203, ptr %3, align 8, !tbaa !55
  %204 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %205 = load i32, ptr %204, align 8, !tbaa !58
  %206 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %207 = load i32, ptr %206, align 4, !tbaa !59
  %208 = icmp slt i32 %205, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %202
  %210 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %211 = load ptr, ptr %210, align 8, !tbaa !60
  %212 = sext i32 %205 to i64
  %213 = getelementptr inbounds %struct.demangle_component, ptr %211, i64 %212
  %214 = add nsw i32 %205, 1
  store i32 %214, ptr %204, align 8, !tbaa !58
  br label %215

215:                                              ; preds = %209, %202
  %216 = phi ptr [ %213, %209 ], [ null, %202 ]
  %217 = icmp eq ptr %216, null
  br i1 %217, label %221, label %218

218:                                              ; preds = %215
  store i32 0, ptr %216, align 8, !tbaa !53
  %219 = getelementptr inbounds %struct.demangle_component, ptr %216, i64 0, i32 1
  store ptr @.str.128, ptr %219, align 8, !tbaa !46
  %220 = getelementptr inbounds %struct.demangle_component, ptr %216, i64 0, i32 1, i32 0, i32 1
  store i32 3, ptr %220, align 8, !tbaa !46
  br label %221

221:                                              ; preds = %215, %218
  %222 = phi ptr [ %216, %218 ], [ null, %215 ]
  %223 = tail call fastcc ptr @d_unqualified_name(ptr noundef %0)
  %224 = icmp eq ptr %222, null
  %225 = icmp eq ptr %223, null
  %226 = or i1 %224, %225
  br i1 %226, label %243, label %227

227:                                              ; preds = %221
  %228 = load i32, ptr %204, align 8, !tbaa !58
  %229 = load i32, ptr %206, align 4, !tbaa !59
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %237

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %233 = load ptr, ptr %232, align 8, !tbaa !60
  %234 = sext i32 %228 to i64
  %235 = getelementptr inbounds %struct.demangle_component, ptr %233, i64 %234
  %236 = add nsw i32 %228, 1
  store i32 %236, ptr %204, align 8, !tbaa !58
  br label %237

237:                                              ; preds = %231, %227
  %238 = phi ptr [ %235, %231 ], [ null, %227 ]
  %239 = icmp eq ptr %238, null
  br i1 %239, label %243, label %240

240:                                              ; preds = %237
  store i32 1, ptr %238, align 8, !tbaa !53
  %241 = getelementptr inbounds %struct.demangle_component, ptr %238, i64 0, i32 1
  store ptr %222, ptr %241, align 8, !tbaa !46
  %242 = getelementptr inbounds %struct.demangle_component, ptr %238, i64 0, i32 1, i32 0, i32 1
  store ptr %223, ptr %242, align 8, !tbaa !46
  br label %243

243:                                              ; preds = %221, %237, %240
  %244 = phi ptr [ null, %221 ], [ %238, %240 ], [ %238, %237 ]
  %245 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %246 = load i32, ptr %245, align 8, !tbaa !57
  %247 = add nsw i32 %246, 3
  store i32 %247, ptr %245, align 8, !tbaa !57
  br label %248

248:                                              ; preds = %243, %200
  %249 = phi ptr [ %201, %200 ], [ %244, %243 ]
  %250 = load ptr, ptr %3, align 8, !tbaa !55
  %251 = load i8, ptr %250, align 1, !tbaa !46
  %252 = icmp eq i8 %251, 73
  br i1 %252, label %253, label %330

253:                                              ; preds = %248
  br i1 %199, label %254, label %268

254:                                              ; preds = %253
  %255 = icmp eq ptr %249, null
  br i1 %255, label %330, label %256

256:                                              ; preds = %254
  %257 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 8
  %258 = load i32, ptr %257, align 8, !tbaa !68
  %259 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 9
  %260 = load i32, ptr %259, align 4, !tbaa !69
  %261 = icmp slt i32 %258, %260
  br i1 %261, label %262, label %330

262:                                              ; preds = %256
  %263 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 7
  %264 = load ptr, ptr %263, align 8, !tbaa !70
  %265 = sext i32 %258 to i64
  %266 = getelementptr inbounds ptr, ptr %264, i64 %265
  store ptr %249, ptr %266, align 8, !tbaa !35
  %267 = add nsw i32 %258, 1
  store i32 %267, ptr %257, align 8, !tbaa !68
  br label %268

268:                                              ; preds = %262, %253
  %269 = tail call fastcc ptr @d_template_args(ptr noundef %0)
  %270 = icmp eq ptr %249, null
  %271 = icmp eq ptr %269, null
  %272 = or i1 %270, %271
  br i1 %272, label %330, label %273

273:                                              ; preds = %268
  %274 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %275 = load i32, ptr %274, align 8, !tbaa !58
  %276 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %277 = load i32, ptr %276, align 4, !tbaa !59
  %278 = icmp slt i32 %275, %277
  br i1 %278, label %279, label %285

279:                                              ; preds = %273
  %280 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %281 = load ptr, ptr %280, align 8, !tbaa !60
  %282 = sext i32 %275 to i64
  %283 = getelementptr inbounds %struct.demangle_component, ptr %281, i64 %282
  %284 = add nsw i32 %275, 1
  store i32 %284, ptr %274, align 8, !tbaa !58
  br label %285

285:                                              ; preds = %279, %273
  %286 = phi ptr [ %283, %279 ], [ null, %273 ]
  %287 = icmp eq ptr %286, null
  br i1 %287, label %330, label %288

288:                                              ; preds = %285
  store i32 4, ptr %286, align 8, !tbaa !53
  %289 = getelementptr inbounds %struct.demangle_component, ptr %286, i64 0, i32 1
  store ptr %249, ptr %289, align 8, !tbaa !46
  %290 = getelementptr inbounds %struct.demangle_component, ptr %286, i64 0, i32 1, i32 0, i32 1
  store ptr %269, ptr %290, align 8, !tbaa !46
  br label %330

291:                                              ; preds = %1
  %292 = tail call fastcc ptr @d_unqualified_name(ptr noundef %0)
  %293 = load ptr, ptr %3, align 8, !tbaa !55
  %294 = load i8, ptr %293, align 1, !tbaa !46
  %295 = icmp eq i8 %294, 73
  br i1 %295, label %296, label %330

296:                                              ; preds = %291
  %297 = icmp eq ptr %292, null
  br i1 %297, label %330, label %298

298:                                              ; preds = %296
  %299 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 8
  %300 = load i32, ptr %299, align 8, !tbaa !68
  %301 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 9
  %302 = load i32, ptr %301, align 4, !tbaa !69
  %303 = icmp slt i32 %300, %302
  br i1 %303, label %304, label %330

304:                                              ; preds = %298
  %305 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 7
  %306 = load ptr, ptr %305, align 8, !tbaa !70
  %307 = sext i32 %300 to i64
  %308 = getelementptr inbounds ptr, ptr %306, i64 %307
  store ptr %292, ptr %308, align 8, !tbaa !35
  %309 = add nsw i32 %300, 1
  store i32 %309, ptr %299, align 8, !tbaa !68
  %310 = tail call fastcc ptr @d_template_args(ptr noundef %0)
  %311 = icmp eq ptr %310, null
  br i1 %311, label %330, label %312

312:                                              ; preds = %304
  %313 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %314 = load i32, ptr %313, align 8, !tbaa !58
  %315 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %316 = load i32, ptr %315, align 4, !tbaa !59
  %317 = icmp slt i32 %314, %316
  br i1 %317, label %318, label %324

318:                                              ; preds = %312
  %319 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %320 = load ptr, ptr %319, align 8, !tbaa !60
  %321 = sext i32 %314 to i64
  %322 = getelementptr inbounds %struct.demangle_component, ptr %320, i64 %321
  %323 = add nsw i32 %314, 1
  store i32 %323, ptr %313, align 8, !tbaa !58
  br label %324

324:                                              ; preds = %318, %312
  %325 = phi ptr [ %322, %318 ], [ null, %312 ]
  %326 = icmp eq ptr %325, null
  br i1 %326, label %330, label %327

327:                                              ; preds = %324
  store i32 4, ptr %325, align 8, !tbaa !53
  %328 = getelementptr inbounds %struct.demangle_component, ptr %325, i64 0, i32 1
  store ptr %292, ptr %328, align 8, !tbaa !46
  %329 = getelementptr inbounds %struct.demangle_component, ptr %325, i64 0, i32 1, i32 0, i32 1
  store ptr %310, ptr %329, align 8, !tbaa !46
  br label %330

330:                                              ; preds = %148, %137, %298, %296, %256, %254, %327, %324, %304, %288, %285, %268, %94, %85, %116, %131, %134, %171, %188, %191, %291, %248, %194, %83
  %331 = phi ptr [ %195, %194 ], [ %84, %83 ], [ %249, %248 ], [ %292, %291 ], [ null, %85 ], [ null, %94 ], [ null, %116 ], [ %132, %134 ], [ %132, %131 ], [ null, %171 ], [ %189, %191 ], [ %189, %188 ], [ null, %268 ], [ %286, %288 ], [ %286, %285 ], [ null, %304 ], [ %325, %327 ], [ %325, %324 ], [ null, %254 ], [ null, %256 ], [ null, %296 ], [ null, %298 ], [ null, %137 ], [ null, %148 ]
  ret ptr %331
}

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_bare_function_type(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = load i8, ptr %4, align 1, !tbaa !46
  %6 = icmp eq i8 %5, 74
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %8, ptr %3, align 8, !tbaa !55
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ 1, %7 ], [ %1, %2 ]
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @cplus_demangle_type(ptr noundef %0)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %9, %12
  %16 = phi ptr [ %13, %12 ], [ null, %9 ]
  %17 = tail call fastcc ptr @d_parmlist(ptr noundef %0)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %37, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !58
  %22 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !59
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !60
  %28 = sext i32 %21 to i64
  %29 = getelementptr inbounds %struct.demangle_component, ptr %27, i64 %28
  %30 = add nsw i32 %21, 1
  store i32 %30, ptr %20, align 8, !tbaa !58
  br label %31

31:                                               ; preds = %25, %19
  %32 = phi ptr [ %29, %25 ], [ null, %19 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  store i32 37, ptr %32, align 8, !tbaa !53
  %35 = getelementptr inbounds %struct.demangle_component, ptr %32, i64 0, i32 1
  store ptr %16, ptr %35, align 8, !tbaa !46
  %36 = getelementptr inbounds %struct.demangle_component, ptr %32, i64 0, i32 1, i32 0, i32 1
  store ptr %17, ptr %36, align 8, !tbaa !46
  br label %37

37:                                               ; preds = %12, %34, %31, %15
  %38 = phi ptr [ null, %15 ], [ %32, %31 ], [ %32, %34 ], [ null, %12 ]
  ret ptr %38
}

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @has_return_type(ptr noundef readonly %0) unnamed_addr #15 !prof !34 {
  br label %2

2:                                                ; preds = %12, %1
  %3 = phi ptr [ %0, %1 ], [ %14, %12 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !53
  switch i32 %6, label %15 [
    i32 4, label %7
    i32 26, label %12
    i32 27, label %12
    i32 28, label %12
  ]

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.demangle_component, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = tail call fastcc i32 @is_ctor_dtor_or_conversion(ptr noundef %9), !range !62
  %11 = xor i32 %10, 1
  br label %15

12:                                               ; preds = %5, %5, %5
  %13 = getelementptr inbounds %struct.demangle_component, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  br label %2

15:                                               ; preds = %5, %2, %7
  %16 = phi i32 [ %11, %7 ], [ 0, %2 ], [ 0, %5 ]
  ret i32 %16
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @d_call_offset(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #16 !prof !34 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load i8, ptr %6, align 1, !tbaa !46
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %10, ptr %5, align 8, !tbaa !55
  %11 = load i8, ptr %6, align 1, !tbaa !46
  %12 = sext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %4, %2
  %14 = phi i32 [ %1, %2 ], [ %12, %9 ], [ 0, %4 ]
  switch i32 %14, label %85 [
    i32 104, label %15
    i32 118, label %35
  ]

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !55
  %18 = load i8, ptr %17, align 1, !tbaa !46
  %19 = icmp eq i8 %18, 110
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %21, ptr %16, align 8, !tbaa !55
  %22 = load i8, ptr %21, align 1, !tbaa !46
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi i8 [ %22, %20 ], [ %18, %15 ]
  %25 = add i8 %24, -48
  %26 = icmp ult i8 %25, 10
  br i1 %26, label %27, label %78

27:                                               ; preds = %23
  %28 = load ptr, ptr %16, align 8, !tbaa !55
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi ptr [ %28, %27 ], [ %31, %29 ]
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  store ptr %31, ptr %16, align 8, !tbaa !55
  %32 = load i8, ptr %31, align 1, !tbaa !46
  %33 = add i8 %32, -48
  %34 = icmp ult i8 %33, 10
  br i1 %34, label %29, label %78, !llvm.loop !61

35:                                               ; preds = %13
  %36 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !55
  %38 = load i8, ptr %37, align 1, !tbaa !46
  %39 = icmp eq i8 %38, 110
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = getelementptr inbounds i8, ptr %37, i64 1
  store ptr %41, ptr %36, align 8, !tbaa !55
  %42 = load i8, ptr %41, align 1, !tbaa !46
  br label %43

43:                                               ; preds = %40, %35
  %44 = phi i8 [ %42, %40 ], [ %38, %35 ]
  %45 = add i8 %44, -48
  %46 = icmp ult i8 %45, 10
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load ptr, ptr %36, align 8, !tbaa !55
  br label %49

49:                                               ; preds = %47, %49
  %50 = phi ptr [ %48, %47 ], [ %51, %49 ]
  %51 = getelementptr inbounds i8, ptr %50, i64 1
  store ptr %51, ptr %36, align 8, !tbaa !55
  %52 = load i8, ptr %51, align 1, !tbaa !46
  %53 = add i8 %52, -48
  %54 = icmp ult i8 %53, 10
  br i1 %54, label %49, label %55, !llvm.loop !61

55:                                               ; preds = %49, %43
  %56 = load ptr, ptr %36, align 8, !tbaa !55
  %57 = load i8, ptr %56, align 1, !tbaa !46
  %58 = icmp eq i8 %57, 95
  br i1 %58, label %59, label %85

59:                                               ; preds = %55
  %60 = getelementptr inbounds i8, ptr %56, i64 1
  store ptr %60, ptr %36, align 8, !tbaa !55
  %61 = load i8, ptr %60, align 1, !tbaa !46
  %62 = icmp eq i8 %61, 110
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %56, i64 2
  store ptr %64, ptr %36, align 8, !tbaa !55
  %65 = load i8, ptr %64, align 1, !tbaa !46
  br label %66

66:                                               ; preds = %63, %59
  %67 = phi i8 [ %65, %63 ], [ %61, %59 ]
  %68 = add i8 %67, -48
  %69 = icmp ult i8 %68, 10
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load ptr, ptr %36, align 8, !tbaa !55
  br label %72

72:                                               ; preds = %70, %72
  %73 = phi ptr [ %71, %70 ], [ %74, %72 ]
  %74 = getelementptr inbounds i8, ptr %73, i64 1
  store ptr %74, ptr %36, align 8, !tbaa !55
  %75 = load i8, ptr %74, align 1, !tbaa !46
  %76 = add i8 %75, -48
  %77 = icmp ult i8 %76, 10
  br i1 %77, label %72, label %78, !llvm.loop !61

78:                                               ; preds = %72, %29, %66, %23
  %79 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !55
  %81 = load i8, ptr %80, align 1, !tbaa !46
  %82 = icmp eq i8 %81, 95
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = getelementptr inbounds i8, ptr %80, i64 1
  store ptr %84, ptr %79, align 8, !tbaa !55
  br label %85

85:                                               ; preds = %78, %13, %55, %83
  %86 = phi i32 [ 1, %83 ], [ 0, %55 ], [ 0, %13 ], [ 0, %78 ]
  ret i32 %86
}

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_unqualified_name(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = load i8, ptr %3, align 1, !tbaa !46
  %5 = add i8 %4, -48
  %6 = icmp ult i8 %5, 10
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @d_source_name(ptr noundef %0)
  br label %114

9:                                                ; preds = %1
  %10 = add i8 %4, -97
  %11 = icmp ult i8 %10, 26
  br i1 %11, label %12, label %27

12:                                               ; preds = %9
  %13 = tail call fastcc ptr @d_operator_name(ptr noundef %0)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %114, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr %13, align 8, !tbaa !53
  %17 = icmp eq i32 %16, 44
  br i1 %17, label %18, label %114

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.demangle_component, ptr %13, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.demangle_operator_info, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !86
  %23 = add i32 %22, 7
  %24 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %25 = load i32, ptr %24, align 8, !tbaa !57
  %26 = add i32 %23, %25
  store i32 %26, ptr %24, align 8, !tbaa !57
  br label %114

27:                                               ; preds = %9
  %28 = add i8 %4, -67
  %29 = icmp ult i8 %28, 2
  br i1 %29, label %30, label %98

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 11
  %32 = load ptr, ptr %31, align 8, !tbaa !75
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %32, align 8, !tbaa !53
  switch i32 %35, label %42 [
    i32 0, label %36
    i32 22, label %36
  ]

36:                                               ; preds = %34, %34
  %37 = getelementptr inbounds %struct.demangle_component, ptr %32, i64 0, i32 1, i32 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !46
  %39 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %40 = load i32, ptr %39, align 8, !tbaa !57
  %41 = add nsw i32 %40, %38
  store i32 %41, ptr %39, align 8, !tbaa !57
  br label %42

42:                                               ; preds = %36, %34, %30
  %43 = load i8, ptr %3, align 1, !tbaa !46
  switch i8 %43, label %114 [
    i8 67, label %44
    i8 68, label %71
  ]

44:                                               ; preds = %42
  %45 = getelementptr inbounds i8, ptr %3, i64 1
  %46 = load i8, ptr %45, align 1, !tbaa !46
  %47 = add i8 %46, -49
  %48 = icmp ult i8 %47, 3
  br i1 %48, label %49, label %114

49:                                               ; preds = %44
  %50 = add nsw i8 %46, -48
  %51 = zext nneg i8 %50 to i32
  %52 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %52, ptr %2, align 8, !tbaa !55
  %53 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %54 = load i32, ptr %53, align 8, !tbaa !58
  %55 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %56 = load i32, ptr %55, align 4, !tbaa !59
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !60
  %61 = sext i32 %54 to i64
  %62 = getelementptr inbounds %struct.demangle_component, ptr %60, i64 %61
  %63 = add nsw i32 %54, 1
  store i32 %63, ptr %53, align 8, !tbaa !58
  br label %64

64:                                               ; preds = %58, %49
  %65 = phi ptr [ %62, %58 ], [ null, %49 ]
  %66 = icmp eq ptr %65, null
  %67 = or i1 %33, %66
  br i1 %67, label %114, label %68

68:                                               ; preds = %64
  store i32 7, ptr %65, align 8, !tbaa !53
  %69 = getelementptr inbounds %struct.demangle_component, ptr %65, i64 0, i32 1
  store i32 %51, ptr %69, align 8, !tbaa !46
  %70 = getelementptr inbounds %struct.demangle_component, ptr %65, i64 0, i32 1, i32 0, i32 1
  store ptr %32, ptr %70, align 8, !tbaa !46
  br label %114

71:                                               ; preds = %42
  %72 = getelementptr inbounds i8, ptr %3, i64 1
  %73 = load i8, ptr %72, align 1, !tbaa !46
  %74 = add i8 %73, -48
  %75 = icmp ult i8 %74, 3
  br i1 %75, label %76, label %114

76:                                               ; preds = %71
  %77 = add nsw i8 %73, -47
  %78 = zext nneg i8 %77 to i32
  %79 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %79, ptr %2, align 8, !tbaa !55
  %80 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %81 = load i32, ptr %80, align 8, !tbaa !58
  %82 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %83 = load i32, ptr %82, align 4, !tbaa !59
  %84 = icmp slt i32 %81, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !60
  %88 = sext i32 %81 to i64
  %89 = getelementptr inbounds %struct.demangle_component, ptr %87, i64 %88
  %90 = add nsw i32 %81, 1
  store i32 %90, ptr %80, align 8, !tbaa !58
  br label %91

91:                                               ; preds = %85, %76
  %92 = phi ptr [ %89, %85 ], [ null, %76 ]
  %93 = icmp eq ptr %92, null
  %94 = or i1 %33, %93
  br i1 %94, label %114, label %95

95:                                               ; preds = %91
  store i32 8, ptr %92, align 8, !tbaa !53
  %96 = getelementptr inbounds %struct.demangle_component, ptr %92, i64 0, i32 1
  store i32 %78, ptr %96, align 8, !tbaa !46
  %97 = getelementptr inbounds %struct.demangle_component, ptr %92, i64 0, i32 1, i32 0, i32 1
  store ptr %32, ptr %97, align 8, !tbaa !46
  br label %114

98:                                               ; preds = %27
  switch i8 %4, label %114 [
    i8 76, label %99
    i8 85, label %107
  ]

99:                                               ; preds = %98
  %100 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %100, ptr %2, align 8, !tbaa !55
  %101 = tail call fastcc ptr @d_source_name(ptr noundef %0)
  %102 = icmp eq ptr %101, null
  br i1 %102, label %114, label %103

103:                                              ; preds = %99
  %104 = tail call fastcc i32 @d_discriminator(ptr noundef %0), !range !62
  %105 = icmp eq i32 %104, 0
  %106 = select i1 %105, ptr null, ptr %101
  br label %114

107:                                              ; preds = %98
  %108 = getelementptr inbounds i8, ptr %3, i64 1
  %109 = load i8, ptr %108, align 1, !tbaa !46
  switch i8 %109, label %114 [
    i8 108, label %110
    i8 116, label %112
  ]

110:                                              ; preds = %107
  %111 = tail call fastcc ptr @d_lambda(ptr noundef %0)
  br label %114

112:                                              ; preds = %107
  %113 = tail call fastcc ptr @d_unnamed_type(ptr noundef %0)
  br label %114

114:                                              ; preds = %71, %44, %95, %91, %68, %64, %42, %98, %107, %99, %103, %12, %15, %18, %112, %110, %7
  %115 = phi ptr [ %8, %7 ], [ %113, %112 ], [ %111, %110 ], [ %13, %18 ], [ %13, %15 ], [ %13, %12 ], [ null, %99 ], [ %106, %103 ], [ null, %107 ], [ null, %98 ], [ null, %44 ], [ null, %71 ], [ null, %42 ], [ %65, %68 ], [ null, %64 ], [ %92, %95 ], [ null, %91 ]
  ret ptr %115
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @d_discriminator(ptr nocapture noundef %0) unnamed_addr #16 !prof !34 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = load i8, ptr %3, align 1, !tbaa !46
  %5 = icmp eq i8 %4, 95
  br i1 %5, label %6, label %37

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %7, ptr %2, align 8, !tbaa !55
  %8 = load i8, ptr %7, align 1, !tbaa !46
  %9 = icmp eq i8 %8, 110
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %11, ptr %2, align 8, !tbaa !55
  %12 = load i8, ptr %11, align 1, !tbaa !46
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi i8 [ %12, %10 ], [ %8, %6 ]
  %15 = add i8 %14, -48
  %16 = icmp ult i8 %15, 10
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load ptr, ptr %2, align 8, !tbaa !55
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi ptr [ %18, %17 ], [ %27, %19 ]
  %21 = phi i64 [ 0, %17 ], [ %26, %19 ]
  %22 = phi i8 [ %14, %17 ], [ %28, %19 ]
  %23 = mul nsw i64 %21, 10
  %24 = zext nneg i8 %22 to i64
  %25 = add nsw i64 %24, -48
  %26 = add i64 %25, %23
  %27 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %27, ptr %2, align 8, !tbaa !55
  %28 = load i8, ptr %27, align 1, !tbaa !46
  %29 = add i8 %28, -48
  %30 = icmp ult i8 %29, 10
  br i1 %30, label %19, label %31, !llvm.loop !61

31:                                               ; preds = %19, %13
  %32 = phi i64 [ 0, %13 ], [ %26, %19 ]
  %33 = sub nsw i64 0, %32
  %34 = select i1 %9, i64 %33, i64 %32
  %35 = icmp sgt i64 %34, -1
  %36 = zext i1 %35 to i32
  br label %37

37:                                               ; preds = %31, %1
  %38 = phi i32 [ 1, %1 ], [ %36, %31 ]
  ret i32 %38
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @d_compact_number(ptr nocapture noundef %0) unnamed_addr #16 !prof !34 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = load i8, ptr %3, align 1, !tbaa !46
  switch i8 %4, label %5 [
    i8 95, label %33
    i8 110, label %40
  ]

5:                                                ; preds = %1
  %6 = icmp eq i8 %4, 110
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !55
  %9 = load i8, ptr %8, align 1, !tbaa !46
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i8 [ %9, %7 ], [ %4, %5 ]
  %12 = add i8 %11, -48
  %13 = icmp ult i8 %12, 10
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 8, !tbaa !55
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi ptr [ %15, %14 ], [ %24, %16 ]
  %18 = phi i64 [ 0, %14 ], [ %23, %16 ]
  %19 = phi i8 [ %11, %14 ], [ %25, %16 ]
  %20 = mul nsw i64 %18, 10
  %21 = zext nneg i8 %19 to i64
  %22 = add nsw i64 %21, -48
  %23 = add i64 %22, %20
  %24 = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %24, ptr %2, align 8, !tbaa !55
  %25 = load i8, ptr %24, align 1, !tbaa !46
  %26 = add i8 %25, -48
  %27 = icmp ult i8 %26, 10
  br i1 %27, label %16, label %28, !llvm.loop !61

28:                                               ; preds = %16, %10
  %29 = phi i64 [ 0, %10 ], [ %23, %16 ]
  %30 = sub nsw i64 0, %29
  %31 = select i1 %6, i64 %30, i64 %29
  %32 = add nsw i64 %31, 1
  br label %33

33:                                               ; preds = %1, %28
  %34 = phi i64 [ %32, %28 ], [ 0, %1 ]
  %35 = load ptr, ptr %2, align 8, !tbaa !55
  %36 = load i8, ptr %35, align 1, !tbaa !46
  %37 = icmp eq i8 %36, 95
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %39, ptr %2, align 8, !tbaa !55
  br label %40

40:                                               ; preds = %33, %1, %38
  %41 = phi i64 [ %34, %38 ], [ -1, %1 ], [ -1, %33 ]
  ret i64 %41
}

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_operator_name(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = load i8, ptr %3, align 1, !tbaa !46
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %7, ptr %2, align 8, !tbaa !55
  %8 = load i8, ptr %3, align 1, !tbaa !46
  %9 = sext i8 %8 to i32
  br label %10

10:                                               ; preds = %1, %6
  %11 = phi i32 [ %9, %6 ], [ 0, %1 ]
  %12 = load ptr, ptr %2, align 8, !tbaa !55
  %13 = load i8, ptr %12, align 1, !tbaa !46
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %16, ptr %2, align 8, !tbaa !55
  %17 = load i8, ptr %12, align 1, !tbaa !46
  %18 = sext i8 %17 to i32
  br label %19

19:                                               ; preds = %10, %15
  %20 = phi i32 [ %18, %15 ], [ 0, %10 ]
  %21 = icmp eq i32 %11, 118
  %22 = icmp sgt i32 %20, 47
  %23 = select i1 %21, i1 %22, i1 false
  %24 = icmp slt i32 %20, 58
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %49

26:                                               ; preds = %19
  %27 = add nsw i32 %20, -48
  %28 = tail call fastcc ptr @d_source_name(ptr noundef %0)
  %29 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !58
  %31 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %32 = load i32, ptr %31, align 4, !tbaa !59
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !60
  %37 = sext i32 %30 to i64
  %38 = getelementptr inbounds %struct.demangle_component, ptr %36, i64 %37
  %39 = add nsw i32 %30, 1
  store i32 %39, ptr %29, align 8, !tbaa !58
  br label %40

40:                                               ; preds = %34, %26
  %41 = phi ptr [ %38, %34 ], [ null, %26 ]
  %42 = icmp eq ptr %41, null
  %43 = icmp slt i32 %20, 48
  %44 = or i1 %43, %42
  %45 = icmp eq ptr %28, null
  %46 = or i1 %45, %44
  br i1 %46, label %133, label %47

47:                                               ; preds = %40
  store i32 45, ptr %41, align 8, !tbaa !53
  %48 = getelementptr inbounds %struct.demangle_component, ptr %41, i64 0, i32 1
  store i32 %27, ptr %48, align 8, !tbaa !46
  br label %129

49:                                               ; preds = %19
  %50 = icmp eq i32 %11, 99
  %51 = icmp eq i32 %20, 118
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %55 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %56 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  br label %77

57:                                               ; preds = %49
  %58 = tail call ptr @cplus_demangle_type(ptr noundef %0)
  %59 = icmp eq ptr %58, null
  br i1 %59, label %133, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %62 = load i32, ptr %61, align 8, !tbaa !58
  %63 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %64 = load i32, ptr %63, align 4, !tbaa !59
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !60
  %69 = sext i32 %62 to i64
  %70 = getelementptr inbounds %struct.demangle_component, ptr %68, i64 %69
  %71 = add nsw i32 %62, 1
  store i32 %71, ptr %61, align 8, !tbaa !58
  br label %72

72:                                               ; preds = %66, %60
  %73 = phi ptr [ %70, %66 ], [ null, %60 ]
  %74 = icmp eq ptr %73, null
  br i1 %74, label %133, label %75

75:                                               ; preds = %72
  store i32 46, ptr %73, align 8, !tbaa !53
  %76 = getelementptr inbounds %struct.demangle_component, ptr %73, i64 0, i32 1
  store ptr %58, ptr %76, align 8, !tbaa !46
  br label %129

77:                                               ; preds = %53, %124
  %78 = phi i32 [ %125, %124 ], [ 0, %53 ]
  %79 = phi i32 [ %126, %124 ], [ 52, %53 ]
  %80 = phi ptr [ %128, %124 ], [ undef, %53 ]
  %81 = sub nsw i32 %79, %78
  %82 = sdiv i32 %81, 2
  %83 = add nsw i32 %82, %78
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.demangle_operator_info, ptr @cplus_demangle_operators, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !88
  %87 = load i8, ptr %86, align 1, !tbaa !46
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %11, %88
  br i1 %89, label %90, label %109

90:                                               ; preds = %77
  %91 = getelementptr inbounds i8, ptr %86, i64 1
  %92 = load i8, ptr %91, align 1, !tbaa !46
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %20, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %90
  %96 = load i32, ptr %54, align 8, !tbaa !58
  %97 = load i32, ptr %55, align 4, !tbaa !59
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load ptr, ptr %56, align 8, !tbaa !60
  %101 = sext i32 %96 to i64
  %102 = getelementptr inbounds %struct.demangle_component, ptr %100, i64 %101
  %103 = add nsw i32 %96, 1
  store i32 %103, ptr %54, align 8, !tbaa !58
  br label %104

104:                                              ; preds = %99, %95
  %105 = phi ptr [ %102, %99 ], [ null, %95 ]
  %106 = icmp eq ptr %105, null
  br i1 %106, label %124, label %107

107:                                              ; preds = %104
  store i32 44, ptr %105, align 8, !tbaa !53
  %108 = getelementptr inbounds %struct.demangle_component, ptr %105, i64 0, i32 1
  store ptr %85, ptr %108, align 8, !tbaa !46
  br label %124

109:                                              ; preds = %90, %77
  %110 = icmp slt i32 %11, %88
  br i1 %110, label %119, label %111

111:                                              ; preds = %109
  br i1 %89, label %112, label %117

112:                                              ; preds = %111
  %113 = getelementptr inbounds i8, ptr %86, i64 1
  %114 = load i8, ptr %113, align 1, !tbaa !46
  %115 = sext i8 %114 to i32
  %116 = icmp slt i32 %20, %115
  br i1 %116, label %119, label %117

117:                                              ; preds = %112, %111
  %118 = add nsw i32 %83, 1
  br label %119

119:                                              ; preds = %109, %112, %117
  %120 = phi i32 [ %118, %117 ], [ %78, %112 ], [ %78, %109 ]
  %121 = phi i32 [ %79, %117 ], [ %83, %112 ], [ %83, %109 ]
  %122 = icmp ne i32 %120, %121
  %123 = select i1 %122, ptr %80, ptr null
  br label %124

124:                                              ; preds = %107, %104, %119
  %125 = phi i32 [ %120, %119 ], [ %78, %104 ], [ %78, %107 ]
  %126 = phi i32 [ %121, %119 ], [ %79, %104 ], [ %79, %107 ]
  %127 = phi i1 [ %122, %119 ], [ false, %104 ], [ false, %107 ]
  %128 = phi ptr [ %123, %119 ], [ %105, %104 ], [ %105, %107 ]
  br i1 %127, label %77, label %133, !llvm.loop !134

129:                                              ; preds = %47, %75
  %130 = phi ptr [ %73, %75 ], [ %41, %47 ]
  %131 = phi ptr [ null, %75 ], [ %28, %47 ]
  %132 = getelementptr inbounds %struct.demangle_component, ptr %130, i64 0, i32 1, i32 0, i32 1
  store ptr %131, ptr %132, align 8, !tbaa !46
  br label %133

133:                                              ; preds = %124, %129, %72, %57, %40
  %134 = phi ptr [ null, %40 ], [ null, %57 ], [ %73, %72 ], [ %130, %129 ], [ %128, %124 ]
  ret ptr %134
}

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_lambda(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = load i8, ptr %3, align 1, !tbaa !46
  %5 = icmp eq i8 %4, 85
  br i1 %5, label %6, label %52

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %7, ptr %2, align 8, !tbaa !55
  %8 = load i8, ptr %7, align 1, !tbaa !46
  %9 = icmp eq i8 %8, 108
  br i1 %9, label %10, label %52

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %11, ptr %2, align 8, !tbaa !55
  %12 = tail call fastcc ptr @d_parmlist(ptr noundef %0)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %52, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 8, !tbaa !55
  %16 = load i8, ptr %15, align 1, !tbaa !46
  %17 = icmp eq i8 %16, 69
  br i1 %17, label %18, label %52

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %19, ptr %2, align 8, !tbaa !55
  %20 = tail call fastcc i64 @d_compact_number(ptr noundef %0)
  %21 = trunc i64 %20 to i32
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %52, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !58
  %26 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !59
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !60
  %32 = sext i32 %25 to i64
  %33 = getelementptr inbounds %struct.demangle_component, ptr %31, i64 %32
  %34 = add nsw i32 %25, 1
  store i32 %34, ptr %24, align 8, !tbaa !58
  br label %35

35:                                               ; preds = %23, %29
  %36 = phi ptr [ %33, %29 ], [ null, %23 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %52, label %38

38:                                               ; preds = %35
  store i32 62, ptr %36, align 8, !tbaa !53
  %39 = getelementptr inbounds %struct.demangle_component, ptr %36, i64 0, i32 1
  store ptr %12, ptr %39, align 8, !tbaa !46
  %40 = getelementptr inbounds %struct.demangle_component, ptr %36, i64 0, i32 1, i32 0, i32 1
  store i32 %21, ptr %40, align 8, !tbaa !46
  %41 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 8
  %42 = load i32, ptr %41, align 8, !tbaa !68
  %43 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 9
  %44 = load i32, ptr %43, align 4, !tbaa !69
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !70
  %49 = sext i32 %42 to i64
  %50 = getelementptr inbounds ptr, ptr %48, i64 %49
  store ptr %36, ptr %50, align 8, !tbaa !35
  %51 = add nsw i32 %42, 1
  store i32 %51, ptr %41, align 8, !tbaa !68
  br label %52

52:                                               ; preds = %46, %38, %35, %18, %14, %10, %6, %1
  %53 = phi ptr [ null, %1 ], [ null, %6 ], [ null, %10 ], [ null, %14 ], [ null, %18 ], [ %36, %46 ], [ null, %38 ], [ null, %35 ]
  ret ptr %53
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_unnamed_type(ptr nocapture noundef %0) unnamed_addr #10 !prof !34 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = load i8, ptr %3, align 1, !tbaa !46
  %5 = icmp eq i8 %4, 85
  br i1 %5, label %6, label %42

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %7, ptr %2, align 8, !tbaa !55
  %8 = load i8, ptr %7, align 1, !tbaa !46
  %9 = icmp eq i8 %8, 116
  br i1 %9, label %10, label %42

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %11, ptr %2, align 8, !tbaa !55
  %12 = tail call fastcc i64 @d_compact_number(ptr noundef %0)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %42, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !58
  %17 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !59
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !60
  %23 = sext i32 %16 to i64
  %24 = getelementptr inbounds %struct.demangle_component, ptr %22, i64 %23
  %25 = add nsw i32 %16, 1
  store i32 %25, ptr %15, align 8, !tbaa !58
  br label %26

26:                                               ; preds = %14, %20
  %27 = phi ptr [ %24, %20 ], [ null, %14 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %42, label %29

29:                                               ; preds = %26
  store i32 64, ptr %27, align 8, !tbaa !53
  %30 = getelementptr inbounds %struct.demangle_component, ptr %27, i64 0, i32 1
  store i64 %12, ptr %30, align 8, !tbaa !46
  %31 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 8
  %32 = load i32, ptr %31, align 8, !tbaa !68
  %33 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 9
  %34 = load i32, ptr %33, align 4, !tbaa !69
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !70
  %39 = sext i32 %32 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  store ptr %27, ptr %40, align 8, !tbaa !35
  %41 = add nsw i32 %32, 1
  store i32 %41, ptr %31, align 8, !tbaa !68
  br label %42

42:                                               ; preds = %36, %29, %26, %10, %6, %1
  %43 = phi ptr [ null, %1 ], [ null, %6 ], [ null, %10 ], [ %27, %36 ], [ null, %29 ], [ null, %26 ]
  ret ptr %43
}

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_parmlist(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store ptr null, ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  br label %4

4:                                                ; preds = %33, %1
  %5 = phi ptr [ %2, %1 ], [ %34, %33 ]
  %6 = load ptr, ptr %3, align 8, !tbaa !55
  %7 = load i8, ptr %6, align 1, !tbaa !46
  switch i8 %7, label %8 [
    i8 69, label %33
    i8 0, label %33
  ]

8:                                                ; preds = %4
  %9 = tail call ptr @cplus_demangle_type(ptr noundef %0)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %12, align 8, !tbaa !58
  %15 = load i32, ptr %13, align 4, !tbaa !59
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  %20 = sext i32 %14 to i64
  %21 = getelementptr inbounds %struct.demangle_component, ptr %19, i64 %20
  %22 = add nsw i32 %14, 1
  store i32 %22, ptr %12, align 8, !tbaa !58
  br label %23

23:                                               ; preds = %17, %11
  %24 = phi ptr [ %21, %17 ], [ null, %11 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  store i32 42, ptr %24, align 8, !tbaa !53
  %27 = getelementptr inbounds %struct.demangle_component, ptr %24, i64 0, i32 1
  store ptr %9, ptr %27, align 8, !tbaa !46
  %28 = getelementptr inbounds %struct.demangle_component, ptr %24, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %28, align 8, !tbaa !46
  br label %29

29:                                               ; preds = %23, %26
  store ptr %24, ptr %5, align 8, !tbaa !35
  %30 = getelementptr inbounds %struct.demangle_component, ptr %24, i64 0, i32 1, i32 0, i32 1
  %31 = select i1 %25, ptr %5, ptr %30
  %32 = zext i1 %25 to i32
  br label %33

33:                                               ; preds = %4, %4, %29, %8
  %34 = phi ptr [ %5, %8 ], [ %31, %29 ], [ %5, %4 ], [ %5, %4 ]
  %35 = phi i32 [ 1, %8 ], [ %32, %29 ], [ 3, %4 ], [ 3, %4 ]
  switch i32 %35, label %60 [
    i32 0, label %4
    i32 3, label %36
  ], !llvm.loop !135

36:                                               ; preds = %33
  %37 = load ptr, ptr %2, align 8, !tbaa !35
  %38 = icmp eq ptr %37, null
  br i1 %38, label %60, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.demangle_component, ptr %37, i64 0, i32 1, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.demangle_component, ptr %37, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !46
  %46 = load i32, ptr %45, align 8, !tbaa !53
  %47 = icmp eq i32 %46, 35
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.demangle_component, ptr %45, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  %51 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %50, i64 0, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !121
  %53 = icmp eq i32 %52, 9
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %50, i64 0, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !71
  %57 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %58 = load i32, ptr %57, align 8, !tbaa !57
  %59 = sub nsw i32 %58, %56
  store i32 %59, ptr %57, align 8, !tbaa !57
  store ptr null, ptr %44, align 8, !tbaa !46
  br label %60

60:                                               ; preds = %33, %39, %43, %48, %54, %36
  %61 = phi ptr [ null, %36 ], [ %37, %54 ], [ %37, %48 ], [ %37, %43 ], [ %37, %39 ], [ null, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  ret ptr %61
}

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @is_ctor_dtor_or_conversion(ptr noundef readonly %0) unnamed_addr #15 !prof !34 {
  br label %2

2:                                                ; preds = %7, %1
  %3 = phi ptr [ %0, %1 ], [ %9, %7 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !53
  switch i32 %6, label %11 [
    i32 1, label %7
    i32 2, label %7
    i32 7, label %10
    i32 8, label %10
    i32 46, label %10
  ]

7:                                                ; preds = %5, %5
  %8 = getelementptr inbounds %struct.demangle_component, ptr %3, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  br label %2

10:                                               ; preds = %5, %5, %5
  br label %11

11:                                               ; preds = %5, %2, %10
  %12 = phi i32 [ 1, %10 ], [ 0, %2 ], [ 0, %5 ]
  ret i32 %12
}

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_expr_primary(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  %4 = load i8, ptr %3, align 1, !tbaa !46
  %5 = icmp eq i8 %4, 76
  br i1 %5, label %6, label %89

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %7, ptr %2, align 8, !tbaa !55
  %8 = load i8, ptr %7, align 1, !tbaa !46
  switch i8 %8, label %18 [
    i8 95, label %9
    i8 90, label %11
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %10, ptr %2, align 8, !tbaa !55
  br label %11

11:                                               ; preds = %6, %9
  %12 = load ptr, ptr %2, align 8, !tbaa !55
  %13 = load i8, ptr %12, align 1, !tbaa !46
  %14 = icmp eq i8 %13, 90
  br i1 %14, label %15, label %82

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %16, ptr %2, align 8, !tbaa !55
  %17 = tail call fastcc ptr @d_encoding(ptr noundef %0, i32 noundef 0)
  br label %82

18:                                               ; preds = %6
  %19 = tail call ptr @cplus_demangle_type(ptr noundef %0)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %79, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr %19, align 8, !tbaa !53
  %23 = icmp eq i32 %22, 35
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.demangle_component, ptr %19, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %26, i64 0, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !121
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %26, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !71
  %33 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %34 = load i32, ptr %33, align 8, !tbaa !57
  %35 = sub nsw i32 %34, %32
  store i32 %35, ptr %33, align 8, !tbaa !57
  br label %36

36:                                               ; preds = %30, %24, %21
  %37 = load ptr, ptr %2, align 8, !tbaa !55
  %38 = load i8, ptr %37, align 1, !tbaa !46
  %39 = icmp eq i8 %38, 110
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, ptr %37, i64 1
  store ptr %41, ptr %2, align 8, !tbaa !55
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi i32 [ 54, %40 ], [ 53, %36 ]
  %44 = load ptr, ptr %2, align 8, !tbaa !55
  br label %45

45:                                               ; preds = %48, %42
  %46 = phi ptr [ %49, %48 ], [ %44, %42 ]
  %47 = load i8, ptr %46, align 1, !tbaa !46
  switch i8 %47, label %48 [
    i8 69, label %50
    i8 0, label %79
  ]

48:                                               ; preds = %45
  %49 = getelementptr inbounds i8, ptr %46, i64 1
  store ptr %49, ptr %2, align 8, !tbaa !55
  br label %45, !llvm.loop !136

50:                                               ; preds = %45
  %51 = ptrtoint ptr %46 to i64
  %52 = ptrtoint ptr %44 to i64
  %53 = sub i64 %51, %52
  %54 = trunc i64 %53 to i32
  %55 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %56 = load i32, ptr %55, align 8, !tbaa !58
  %57 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %58 = load i32, ptr %57, align 4, !tbaa !59
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !60
  %63 = sext i32 %56 to i64
  %64 = getelementptr inbounds %struct.demangle_component, ptr %62, i64 %63
  %65 = add nsw i32 %56, 1
  store i32 %65, ptr %55, align 8, !tbaa !58
  br label %66

66:                                               ; preds = %60, %50
  %67 = phi ptr [ %64, %60 ], [ null, %50 ]
  %68 = icmp eq ptr %67, null
  %69 = icmp eq ptr %44, null
  %70 = or i1 %69, %68
  %71 = icmp eq i32 %54, 0
  %72 = or i1 %71, %70
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  store i32 0, ptr %67, align 8, !tbaa !53
  %74 = getelementptr inbounds %struct.demangle_component, ptr %67, i64 0, i32 1
  store ptr %44, ptr %74, align 8, !tbaa !46
  %75 = getelementptr inbounds %struct.demangle_component, ptr %67, i64 0, i32 1, i32 0, i32 1
  store i32 %54, ptr %75, align 8, !tbaa !46
  br label %76

76:                                               ; preds = %66, %73
  %77 = phi ptr [ %67, %73 ], [ null, %66 ]
  %78 = tail call fastcc ptr @d_make_comp(ptr noundef %0, i32 noundef %43, ptr noundef nonnull %19, ptr noundef %77)
  br label %79

79:                                               ; preds = %45, %18, %76
  %80 = phi i1 [ true, %76 ], [ false, %18 ], [ false, %45 ]
  %81 = phi ptr [ %78, %76 ], [ undef, %18 ], [ undef, %45 ]
  br i1 %80, label %82, label %89

82:                                               ; preds = %15, %11, %79
  %83 = phi ptr [ %81, %79 ], [ %17, %15 ], [ null, %11 ]
  %84 = load ptr, ptr %2, align 8, !tbaa !55
  %85 = load i8, ptr %84, align 1, !tbaa !46
  %86 = icmp eq i8 %85, 69
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = getelementptr inbounds i8, ptr %84, i64 1
  store ptr %88, ptr %2, align 8, !tbaa !55
  br label %89

89:                                               ; preds = %79, %82, %1, %87
  %90 = phi ptr [ %83, %87 ], [ null, %1 ], [ null, %82 ], [ null, %79 ]
  ret ptr %90
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_exprlist(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store ptr null, ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  %5 = load i8, ptr %4, align 1, !tbaa !46
  %6 = icmp eq i8 %5, 69
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  br label %28

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %11, ptr %3, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !58
  %14 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !59
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  %20 = sext i32 %13 to i64
  %21 = getelementptr inbounds %struct.demangle_component, ptr %19, i64 %20
  %22 = add nsw i32 %13, 1
  store i32 %22, ptr %12, align 8, !tbaa !58
  br label %23

23:                                               ; preds = %17, %10
  %24 = phi ptr [ %21, %17 ], [ null, %10 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %59, label %26

26:                                               ; preds = %23
  store i32 42, ptr %24, align 8, !tbaa !53
  %27 = getelementptr inbounds %struct.demangle_component, ptr %24, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  br label %59

28:                                               ; preds = %7, %54
  %29 = phi ptr [ %55, %54 ], [ %2, %7 ]
  %30 = tail call fastcc ptr @d_expression(ptr noundef %0)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %54, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %8, align 8, !tbaa !58
  %34 = load i32, ptr %9, align 4, !tbaa !59
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !60
  %39 = sext i32 %33 to i64
  %40 = getelementptr inbounds %struct.demangle_component, ptr %38, i64 %39
  %41 = add nsw i32 %33, 1
  store i32 %41, ptr %8, align 8, !tbaa !58
  br label %42

42:                                               ; preds = %36, %32
  %43 = phi ptr [ %40, %36 ], [ null, %32 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  store i32 42, ptr %43, align 8, !tbaa !53
  %46 = getelementptr inbounds %struct.demangle_component, ptr %43, i64 0, i32 1
  store ptr %30, ptr %46, align 8, !tbaa !46
  %47 = getelementptr inbounds %struct.demangle_component, ptr %43, i64 0, i32 1, i32 0, i32 1
  store ptr null, ptr %47, align 8, !tbaa !46
  store ptr %43, ptr %29, align 8, !tbaa !35
  %48 = load ptr, ptr %3, align 8, !tbaa !55
  %49 = load i8, ptr %48, align 1, !tbaa !46
  %50 = icmp eq i8 %49, 69
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = getelementptr inbounds i8, ptr %48, i64 1
  store ptr %52, ptr %3, align 8, !tbaa !55
  br label %54

53:                                               ; preds = %42
  store ptr %43, ptr %29, align 8, !tbaa !35
  br label %54

54:                                               ; preds = %28, %53, %45, %51
  %55 = phi ptr [ %47, %51 ], [ %47, %45 ], [ %29, %53 ], [ %29, %28 ]
  %56 = phi i32 [ 3, %51 ], [ 0, %45 ], [ 1, %53 ], [ 1, %28 ]
  switch i32 %56, label %59 [
    i32 0, label %28
    i32 3, label %57
  ], !llvm.loop !137

57:                                               ; preds = %54
  %58 = load ptr, ptr %2, align 8, !tbaa !35
  br label %59

59:                                               ; preds = %54, %26, %23, %57
  %60 = phi ptr [ %58, %57 ], [ %24, %23 ], [ %24, %26 ], [ null, %54 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  ret ptr %60
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #19

; Function Attrs: cold nounwind uwtable
define internal fastcc void @d_print_java_identifier(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #12 !prof !34 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds i8, ptr %1, i64 %4
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %113

7:                                                ; preds = %3
  %8 = ptrtoint ptr %5 to i64
  %9 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %14

14:                                               ; preds = %7, %109
  %15 = phi ptr [ %1, %7 ], [ %111, %109 ]
  %16 = ptrtoint ptr %15 to i64
  %17 = sub i64 %8, %16
  %18 = icmp sgt i64 %17, 3
  br i1 %18, label %19, label %95

19:                                               ; preds = %14
  %20 = load i8, ptr %15, align 1, !tbaa !46
  %21 = icmp eq i8 %20, 95
  br i1 %21, label %22, label %95

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, ptr %15, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !46
  %25 = icmp eq i8 %24, 95
  br i1 %25, label %26, label %95

26:                                               ; preds = %22
  %27 = getelementptr inbounds i8, ptr %15, i64 2
  %28 = load i8, ptr %27, align 1, !tbaa !46
  %29 = icmp eq i8 %28, 85
  br i1 %29, label %30, label %95

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %15, i64 3
  %32 = icmp ult ptr %31, %5
  br i1 %32, label %33, label %65

33:                                               ; preds = %30, %62
  %34 = phi i1 [ %64, %62 ], [ %32, %30 ]
  %35 = phi ptr [ %63, %62 ], [ %31, %30 ]
  %36 = phi i64 [ %60, %62 ], [ 0, %30 ]
  %37 = load i8, ptr %35, align 1, !tbaa !46
  %38 = add i8 %37, -48
  %39 = icmp ult i8 %38, 10
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = zext nneg i8 %38 to i64
  br label %54

42:                                               ; preds = %33
  %43 = add i8 %37, -65
  %44 = icmp ult i8 %43, 6
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = zext nneg i8 %37 to i64
  %47 = add nuw nsw i64 %46, 4294967241
  br label %54

48:                                               ; preds = %42
  %49 = add i8 %37, -97
  %50 = icmp ult i8 %49, 6
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = zext nneg i8 %37 to i64
  %53 = add nuw nsw i64 %52, 4294967209
  br label %54

54:                                               ; preds = %45, %51, %40
  %55 = phi i64 [ %41, %40 ], [ %47, %45 ], [ %53, %51 ]
  %56 = shl i64 %36, 4
  %57 = and i64 %55, 4294967295
  %58 = add i64 %57, %56
  br label %59

59:                                               ; preds = %48, %54
  %60 = phi i64 [ %58, %54 ], [ %36, %48 ]
  %61 = phi i1 [ true, %54 ], [ false, %48 ]
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, ptr %35, i64 1
  %64 = icmp ult ptr %63, %5
  br i1 %64, label %33, label %65, !llvm.loop !138

65:                                               ; preds = %62, %59, %30
  %66 = phi ptr [ %31, %30 ], [ %63, %62 ], [ %35, %59 ]
  %67 = phi i1 [ %32, %30 ], [ %64, %62 ], [ %34, %59 ]
  %68 = phi i64 [ 0, %30 ], [ %60, %59 ], [ %60, %62 ]
  br i1 %67, label %69, label %92

69:                                               ; preds = %65
  %70 = load i8, ptr %66, align 1, !tbaa !46
  %71 = icmp eq i8 %70, 95
  %72 = icmp ult i64 %68, 256
  %73 = select i1 %71, i1 %72, i1 false
  br i1 %73, label %74, label %92

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %76 = trunc i64 %68 to i8
  %77 = load i64, ptr %75, align 8, !tbaa !92
  %78 = icmp eq i64 %77, 255
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %81 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %82 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %83 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %77
  store i8 0, ptr %83, align 1, !tbaa !46
  %84 = load ptr, ptr %81, align 8, !tbaa !94
  %85 = load i64, ptr %75, align 8, !tbaa !92
  %86 = load ptr, ptr %82, align 8, !tbaa !95
  tail call void %84(ptr noundef nonnull %80, i64 noundef %85, ptr noundef %86) #27
  store i64 0, ptr %75, align 8, !tbaa !92
  br label %87

87:                                               ; preds = %74, %79
  %88 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  %89 = load i64, ptr %75, align 8, !tbaa !92
  %90 = add i64 %89, 1
  store i64 %90, ptr %75, align 8, !tbaa !92
  %91 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %89
  store i8 %76, ptr %91, align 1, !tbaa !46
  store i8 %76, ptr %88, align 8, !tbaa !93
  br label %92

92:                                               ; preds = %65, %69, %87
  %93 = phi ptr [ %66, %87 ], [ %15, %69 ], [ %15, %65 ]
  %94 = phi i1 [ false, %87 ], [ true, %69 ], [ true, %65 ]
  br i1 %94, label %95, label %109

95:                                               ; preds = %92, %26, %22, %19, %14
  %96 = phi ptr [ %93, %92 ], [ %15, %26 ], [ %15, %22 ], [ %15, %19 ], [ %15, %14 ]
  %97 = load i8, ptr %96, align 1, !tbaa !46
  %98 = load i64, ptr %9, align 8, !tbaa !92
  %99 = icmp eq i64 %98, 255
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %98
  store i8 0, ptr %101, align 1, !tbaa !46
  %102 = load ptr, ptr %11, align 8, !tbaa !94
  %103 = load i64, ptr %9, align 8, !tbaa !92
  %104 = load ptr, ptr %12, align 8, !tbaa !95
  tail call void %102(ptr noundef nonnull %10, i64 noundef %103, ptr noundef %104) #27
  store i64 0, ptr %9, align 8, !tbaa !92
  br label %105

105:                                              ; preds = %95, %100
  %106 = load i64, ptr %9, align 8, !tbaa !92
  %107 = add i64 %106, 1
  store i64 %107, ptr %9, align 8, !tbaa !92
  %108 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %106
  store i8 %97, ptr %108, align 1, !tbaa !46
  store i8 %97, ptr %13, align 8, !tbaa !93
  br label %109

109:                                              ; preds = %92, %105
  %110 = phi ptr [ %93, %92 ], [ %96, %105 ]
  %111 = getelementptr inbounds i8, ptr %110, i64 1
  %112 = icmp ult ptr %111, %5
  br i1 %112, label %14, label %113, !llvm.loop !139

113:                                              ; preds = %109, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @d_print_mod(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !34 {
  %3 = load i32, ptr %1, align 8, !tbaa !53
  switch i32 %3, label %288 [
    i32 23, label %28
    i32 26, label %28
    i32 24, label %51
    i32 27, label %51
    i32 25, label %74
    i32 28, label %74
    i32 29, label %97
    i32 30, label %116
    i32 31, label %137
    i32 32, label %22
    i32 33, label %16
    i32 34, label %10
    i32 39, label %205
    i32 3, label %249
    i32 41, label %4
  ]

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %252

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %12 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %15 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %188

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %19 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %20 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %21 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %171

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %24 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %25 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %26 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %27 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %154

28:                                               ; preds = %2, %2
  %29 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %30 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %31 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %32 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %33 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %34

34:                                               ; preds = %28, %45
  %35 = phi i64 [ 0, %28 ], [ %49, %45 ]
  %36 = getelementptr inbounds i8, ptr @.str.183, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !46
  %38 = load i64, ptr %29, align 8, !tbaa !92
  %39 = icmp eq i64 %38, 255
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %38
  store i8 0, ptr %41, align 1, !tbaa !46
  %42 = load ptr, ptr %31, align 8, !tbaa !94
  %43 = load i64, ptr %29, align 8, !tbaa !92
  %44 = load ptr, ptr %32, align 8, !tbaa !95
  tail call void %42(ptr noundef nonnull %30, i64 noundef %43, ptr noundef %44) #27
  store i64 0, ptr %29, align 8, !tbaa !92
  br label %45

45:                                               ; preds = %40, %34
  %46 = load i64, ptr %29, align 8, !tbaa !92
  %47 = add i64 %46, 1
  store i64 %47, ptr %29, align 8, !tbaa !92
  %48 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %46
  store i8 %37, ptr %48, align 1, !tbaa !46
  store i8 %37, ptr %33, align 8, !tbaa !93
  %49 = add nuw nsw i64 %35, 1
  %50 = icmp eq i64 %49, 9
  br i1 %50, label %289, label %34, !llvm.loop !97

51:                                               ; preds = %2, %2
  %52 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %53 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %54 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %55 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %56 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %57

57:                                               ; preds = %51, %68
  %58 = phi i64 [ 0, %51 ], [ %72, %68 ]
  %59 = getelementptr inbounds i8, ptr @.str.184, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !46
  %61 = load i64, ptr %52, align 8, !tbaa !92
  %62 = icmp eq i64 %61, 255
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %61
  store i8 0, ptr %64, align 1, !tbaa !46
  %65 = load ptr, ptr %54, align 8, !tbaa !94
  %66 = load i64, ptr %52, align 8, !tbaa !92
  %67 = load ptr, ptr %55, align 8, !tbaa !95
  tail call void %65(ptr noundef nonnull %53, i64 noundef %66, ptr noundef %67) #27
  store i64 0, ptr %52, align 8, !tbaa !92
  br label %68

68:                                               ; preds = %63, %57
  %69 = load i64, ptr %52, align 8, !tbaa !92
  %70 = add i64 %69, 1
  store i64 %70, ptr %52, align 8, !tbaa !92
  %71 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %69
  store i8 %60, ptr %71, align 1, !tbaa !46
  store i8 %60, ptr %56, align 8, !tbaa !93
  %72 = add nuw nsw i64 %58, 1
  %73 = icmp eq i64 %72, 9
  br i1 %73, label %289, label %57, !llvm.loop !97

74:                                               ; preds = %2, %2
  %75 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %76 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %77 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %78 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %79 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %80

80:                                               ; preds = %74, %91
  %81 = phi i64 [ 0, %74 ], [ %95, %91 ]
  %82 = getelementptr inbounds i8, ptr @.str.185, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !46
  %84 = load i64, ptr %75, align 8, !tbaa !92
  %85 = icmp eq i64 %84, 255
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %84
  store i8 0, ptr %87, align 1, !tbaa !46
  %88 = load ptr, ptr %77, align 8, !tbaa !94
  %89 = load i64, ptr %75, align 8, !tbaa !92
  %90 = load ptr, ptr %78, align 8, !tbaa !95
  tail call void %88(ptr noundef nonnull %76, i64 noundef %89, ptr noundef %90) #27
  store i64 0, ptr %75, align 8, !tbaa !92
  br label %91

91:                                               ; preds = %86, %80
  %92 = load i64, ptr %75, align 8, !tbaa !92
  %93 = add i64 %92, 1
  store i64 %93, ptr %75, align 8, !tbaa !92
  %94 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %92
  store i8 %83, ptr %94, align 1, !tbaa !46
  store i8 %83, ptr %79, align 8, !tbaa !93
  %95 = add nuw nsw i64 %81, 1
  %96 = icmp eq i64 %95, 6
  br i1 %96, label %289, label %80, !llvm.loop !97

97:                                               ; preds = %2
  %98 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %99 = load i64, ptr %98, align 8, !tbaa !92
  %100 = icmp eq i64 %99, 255
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %103 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %99
  store i8 0, ptr %103, align 1, !tbaa !46
  %104 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %105 = load ptr, ptr %104, align 8, !tbaa !94
  %106 = load i64, ptr %98, align 8, !tbaa !92
  %107 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %108 = load ptr, ptr %107, align 8, !tbaa !95
  tail call void %105(ptr noundef nonnull %102, i64 noundef %106, ptr noundef %108) #27
  store i64 0, ptr %98, align 8, !tbaa !92
  br label %109

109:                                              ; preds = %97, %101
  %110 = load i64, ptr %98, align 8, !tbaa !92
  %111 = add i64 %110, 1
  store i64 %111, ptr %98, align 8, !tbaa !92
  %112 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %110
  store i8 32, ptr %112, align 1, !tbaa !46
  %113 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 32, ptr %113, align 8, !tbaa !93
  %114 = getelementptr inbounds %struct.demangle_component, ptr %1, i64 0, i32 1, i32 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !46
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %115)
  br label %289

116:                                              ; preds = %2
  %117 = load i32, ptr %0, align 8, !tbaa !90
  %118 = and i32 %117, 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %289

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %122 = load i64, ptr %121, align 8, !tbaa !92
  %123 = icmp eq i64 %122, 255
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %126 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %122
  store i8 0, ptr %126, align 1, !tbaa !46
  %127 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %128 = load ptr, ptr %127, align 8, !tbaa !94
  %129 = load i64, ptr %121, align 8, !tbaa !92
  %130 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %131 = load ptr, ptr %130, align 8, !tbaa !95
  tail call void %128(ptr noundef nonnull %125, i64 noundef %129, ptr noundef %131) #27
  store i64 0, ptr %121, align 8, !tbaa !92
  br label %132

132:                                              ; preds = %120, %124
  %133 = load i64, ptr %121, align 8, !tbaa !92
  %134 = add i64 %133, 1
  store i64 %134, ptr %121, align 8, !tbaa !92
  %135 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %133
  store i8 42, ptr %135, align 1, !tbaa !46
  %136 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 42, ptr %136, align 8, !tbaa !93
  br label %289

137:                                              ; preds = %2
  %138 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %139 = load i64, ptr %138, align 8, !tbaa !92
  %140 = icmp eq i64 %139, 255
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %143 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %139
  store i8 0, ptr %143, align 1, !tbaa !46
  %144 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %145 = load ptr, ptr %144, align 8, !tbaa !94
  %146 = load i64, ptr %138, align 8, !tbaa !92
  %147 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %148 = load ptr, ptr %147, align 8, !tbaa !95
  tail call void %145(ptr noundef nonnull %142, i64 noundef %146, ptr noundef %148) #27
  store i64 0, ptr %138, align 8, !tbaa !92
  br label %149

149:                                              ; preds = %137, %141
  %150 = load i64, ptr %138, align 8, !tbaa !92
  %151 = add i64 %150, 1
  store i64 %151, ptr %138, align 8, !tbaa !92
  %152 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %150
  store i8 38, ptr %152, align 1, !tbaa !46
  %153 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 38, ptr %153, align 8, !tbaa !93
  br label %289

154:                                              ; preds = %22, %165
  %155 = phi i64 [ 0, %22 ], [ %169, %165 ]
  %156 = getelementptr inbounds i8, ptr @.str.5, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !46
  %158 = load i64, ptr %23, align 8, !tbaa !92
  %159 = icmp eq i64 %158, 255
  br i1 %159, label %160, label %165

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %158
  store i8 0, ptr %161, align 1, !tbaa !46
  %162 = load ptr, ptr %25, align 8, !tbaa !94
  %163 = load i64, ptr %23, align 8, !tbaa !92
  %164 = load ptr, ptr %26, align 8, !tbaa !95
  tail call void %162(ptr noundef nonnull %24, i64 noundef %163, ptr noundef %164) #27
  store i64 0, ptr %23, align 8, !tbaa !92
  br label %165

165:                                              ; preds = %160, %154
  %166 = load i64, ptr %23, align 8, !tbaa !92
  %167 = add i64 %166, 1
  store i64 %167, ptr %23, align 8, !tbaa !92
  %168 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %166
  store i8 %157, ptr %168, align 1, !tbaa !46
  store i8 %157, ptr %27, align 8, !tbaa !93
  %169 = add nuw nsw i64 %155, 1
  %170 = icmp eq i64 %155, 0
  br i1 %170, label %154, label %289, !llvm.loop !97

171:                                              ; preds = %16, %182
  %172 = phi i64 [ 0, %16 ], [ %186, %182 ]
  %173 = getelementptr inbounds i8, ptr @.str.186, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !46
  %175 = load i64, ptr %17, align 8, !tbaa !92
  %176 = icmp eq i64 %175, 255
  br i1 %176, label %177, label %182

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %175
  store i8 0, ptr %178, align 1, !tbaa !46
  %179 = load ptr, ptr %19, align 8, !tbaa !94
  %180 = load i64, ptr %17, align 8, !tbaa !92
  %181 = load ptr, ptr %20, align 8, !tbaa !95
  tail call void %179(ptr noundef nonnull %18, i64 noundef %180, ptr noundef %181) #27
  store i64 0, ptr %17, align 8, !tbaa !92
  br label %182

182:                                              ; preds = %177, %171
  %183 = load i64, ptr %17, align 8, !tbaa !92
  %184 = add i64 %183, 1
  store i64 %184, ptr %17, align 8, !tbaa !92
  %185 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %183
  store i8 %174, ptr %185, align 1, !tbaa !46
  store i8 %174, ptr %21, align 8, !tbaa !93
  %186 = add nuw nsw i64 %172, 1
  %187 = icmp eq i64 %186, 8
  br i1 %187, label %289, label %171, !llvm.loop !97

188:                                              ; preds = %10, %199
  %189 = phi i64 [ 0, %10 ], [ %203, %199 ]
  %190 = getelementptr inbounds i8, ptr @.str.187, i64 %189
  %191 = load i8, ptr %190, align 1, !tbaa !46
  %192 = load i64, ptr %11, align 8, !tbaa !92
  %193 = icmp eq i64 %192, 255
  br i1 %193, label %194, label %199

194:                                              ; preds = %188
  %195 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %192
  store i8 0, ptr %195, align 1, !tbaa !46
  %196 = load ptr, ptr %13, align 8, !tbaa !94
  %197 = load i64, ptr %11, align 8, !tbaa !92
  %198 = load ptr, ptr %14, align 8, !tbaa !95
  tail call void %196(ptr noundef nonnull %12, i64 noundef %197, ptr noundef %198) #27
  store i64 0, ptr %11, align 8, !tbaa !92
  br label %199

199:                                              ; preds = %194, %188
  %200 = load i64, ptr %11, align 8, !tbaa !92
  %201 = add i64 %200, 1
  store i64 %201, ptr %11, align 8, !tbaa !92
  %202 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %200
  store i8 %191, ptr %202, align 1, !tbaa !46
  store i8 %191, ptr %15, align 8, !tbaa !93
  %203 = add nuw nsw i64 %189, 1
  %204 = icmp eq i64 %203, 10
  br i1 %204, label %289, label %188, !llvm.loop !97

205:                                              ; preds = %2
  %206 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  %207 = load i8, ptr %206, align 8, !tbaa !93
  %208 = icmp eq i8 %207, 40
  br i1 %208, label %225, label %209

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %211 = load i64, ptr %210, align 8, !tbaa !92
  %212 = icmp eq i64 %211, 255
  br i1 %212, label %213, label %221

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %215 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %211
  store i8 0, ptr %215, align 1, !tbaa !46
  %216 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %217 = load ptr, ptr %216, align 8, !tbaa !94
  %218 = load i64, ptr %210, align 8, !tbaa !92
  %219 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %220 = load ptr, ptr %219, align 8, !tbaa !95
  tail call void %217(ptr noundef nonnull %214, i64 noundef %218, ptr noundef %220) #27
  store i64 0, ptr %210, align 8, !tbaa !92
  br label %221

221:                                              ; preds = %209, %213
  %222 = load i64, ptr %210, align 8, !tbaa !92
  %223 = add i64 %222, 1
  store i64 %223, ptr %210, align 8, !tbaa !92
  %224 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %222
  store i8 32, ptr %224, align 1, !tbaa !46
  store i8 32, ptr %206, align 8, !tbaa !93
  br label %225

225:                                              ; preds = %221, %205
  %226 = getelementptr inbounds %struct.demangle_component, ptr %1, i64 0, i32 1
  %227 = load ptr, ptr %226, align 8, !tbaa !46
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %227)
  %228 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %229 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %230 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %231 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  br label %232

232:                                              ; preds = %225, %243
  %233 = phi i64 [ 0, %225 ], [ %247, %243 ]
  %234 = getelementptr inbounds i8, ptr @.str.188, i64 %233
  %235 = load i8, ptr %234, align 1, !tbaa !46
  %236 = load i64, ptr %228, align 8, !tbaa !92
  %237 = icmp eq i64 %236, 255
  br i1 %237, label %238, label %243

238:                                              ; preds = %232
  %239 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %236
  store i8 0, ptr %239, align 1, !tbaa !46
  %240 = load ptr, ptr %230, align 8, !tbaa !94
  %241 = load i64, ptr %228, align 8, !tbaa !92
  %242 = load ptr, ptr %231, align 8, !tbaa !95
  tail call void %240(ptr noundef nonnull %229, i64 noundef %241, ptr noundef %242) #27
  store i64 0, ptr %228, align 8, !tbaa !92
  br label %243

243:                                              ; preds = %238, %232
  %244 = load i64, ptr %228, align 8, !tbaa !92
  %245 = add i64 %244, 1
  store i64 %245, ptr %228, align 8, !tbaa !92
  %246 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %244
  store i8 %235, ptr %246, align 1, !tbaa !46
  store i8 %235, ptr %206, align 8, !tbaa !93
  %247 = add nuw nsw i64 %233, 1
  %248 = icmp eq i64 %247, 3
  br i1 %248, label %289, label %232, !llvm.loop !97

249:                                              ; preds = %2
  %250 = getelementptr inbounds %struct.demangle_component, ptr %1, i64 0, i32 1
  %251 = load ptr, ptr %250, align 8, !tbaa !46
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %251)
  br label %289

252:                                              ; preds = %4, %263
  %253 = phi i64 [ 0, %4 ], [ %267, %263 ]
  %254 = getelementptr inbounds i8, ptr @.str.189, i64 %253
  %255 = load i8, ptr %254, align 1, !tbaa !46
  %256 = load i64, ptr %5, align 8, !tbaa !92
  %257 = icmp eq i64 %256, 255
  br i1 %257, label %258, label %263

258:                                              ; preds = %252
  %259 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %256
  store i8 0, ptr %259, align 1, !tbaa !46
  %260 = load ptr, ptr %7, align 8, !tbaa !94
  %261 = load i64, ptr %5, align 8, !tbaa !92
  %262 = load ptr, ptr %8, align 8, !tbaa !95
  tail call void %260(ptr noundef nonnull %6, i64 noundef %261, ptr noundef %262) #27
  store i64 0, ptr %5, align 8, !tbaa !92
  br label %263

263:                                              ; preds = %258, %252
  %264 = load i64, ptr %5, align 8, !tbaa !92
  %265 = add i64 %264, 1
  store i64 %265, ptr %5, align 8, !tbaa !92
  %266 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %264
  store i8 %255, ptr %266, align 1, !tbaa !46
  store i8 %255, ptr %9, align 8, !tbaa !93
  %267 = add nuw nsw i64 %253, 1
  %268 = icmp eq i64 %267, 10
  br i1 %268, label %269, label %252, !llvm.loop !97

269:                                              ; preds = %263
  %270 = getelementptr inbounds %struct.demangle_component, ptr %1, i64 0, i32 1
  %271 = load ptr, ptr %270, align 8, !tbaa !46
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %271)
  %272 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %273 = load i64, ptr %272, align 8, !tbaa !92
  %274 = icmp eq i64 %273, 255
  br i1 %274, label %275, label %283

275:                                              ; preds = %269
  %276 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %277 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %273
  store i8 0, ptr %277, align 1, !tbaa !46
  %278 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %279 = load ptr, ptr %278, align 8, !tbaa !94
  %280 = load i64, ptr %272, align 8, !tbaa !92
  %281 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %282 = load ptr, ptr %281, align 8, !tbaa !95
  tail call void %279(ptr noundef nonnull %276, i64 noundef %280, ptr noundef %282) #27
  store i64 0, ptr %272, align 8, !tbaa !92
  br label %283

283:                                              ; preds = %269, %275
  %284 = load i64, ptr %272, align 8, !tbaa !92
  %285 = add i64 %284, 1
  store i64 %285, ptr %272, align 8, !tbaa !92
  %286 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %284
  store i8 41, ptr %286, align 1, !tbaa !46
  %287 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 41, ptr %287, align 8, !tbaa !93
  br label %289

288:                                              ; preds = %2
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef nonnull %1)
  br label %289

289:                                              ; preds = %243, %199, %182, %165, %91, %68, %45, %116, %132, %288, %283, %249, %149, %109
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind uwtable
define internal fastcc void @d_print_function_type(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #12 !prof !34 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.d_print_mod, ptr %2, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !102
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %29

9:                                                ; preds = %24
  %10 = getelementptr inbounds %struct.d_print_mod, ptr %25, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !102
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %27, !llvm.loop !140

13:                                               ; preds = %5, %9
  %14 = phi i32 [ %22, %9 ], [ 0, %5 ]
  %15 = phi ptr [ %25, %9 ], [ %2, %5 ]
  %16 = getelementptr inbounds %struct.d_print_mod, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !101
  %18 = load i32, ptr %17, align 8, !tbaa !53
  switch i32 %18, label %21 [
    i32 30, label %19
    i32 31, label %19
    i32 32, label %19
    i32 23, label %20
    i32 24, label %20
    i32 25, label %20
    i32 29, label %20
    i32 33, label %20
    i32 34, label %20
    i32 39, label %20
  ]

19:                                               ; preds = %13, %13, %13
  br label %21

20:                                               ; preds = %13, %13, %13, %13, %13, %13, %13
  br label %21

21:                                               ; preds = %13, %20, %19
  %22 = phi i32 [ %14, %13 ], [ 1, %20 ], [ %14, %19 ]
  %23 = phi i1 [ true, %13 ], [ false, %20 ], [ false, %19 ]
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load ptr, ptr %15, align 8, !tbaa !99
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %9, !llvm.loop !140

27:                                               ; preds = %21, %9, %24
  %28 = icmp eq i32 %22, 0
  br label %29

29:                                               ; preds = %5, %27, %3
  %30 = phi i1 [ false, %3 ], [ %8, %27 ], [ %8, %5 ]
  %31 = phi i1 [ true, %3 ], [ true, %5 ], [ %28, %27 ]
  %32 = phi i1 [ true, %3 ], [ true, %5 ], [ %23, %27 ]
  %33 = getelementptr inbounds %struct.demangle_component, ptr %1, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = icmp eq ptr %34, null
  %36 = or i1 %30, %35
  %37 = and i1 %32, %36
  br i1 %37, label %79, label %38

38:                                               ; preds = %29
  br i1 %31, label %39, label %42

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  %41 = load i8, ptr %40, align 8, !tbaa !93
  switch i8 %41, label %42 [
    i8 40, label %62
    i8 42, label %62
  ]

42:                                               ; preds = %39, %38
  %43 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  %44 = load i8, ptr %43, align 8, !tbaa !93
  %45 = icmp eq i8 %44, 32
  br i1 %45, label %62, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !92
  %49 = icmp eq i64 %48, 255
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %52 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %48
  store i8 0, ptr %52, align 1, !tbaa !46
  %53 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !94
  %55 = load i64, ptr %47, align 8, !tbaa !92
  %56 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !95
  tail call void %54(ptr noundef nonnull %51, i64 noundef %55, ptr noundef %57) #27
  store i64 0, ptr %47, align 8, !tbaa !92
  br label %58

58:                                               ; preds = %46, %50
  %59 = load i64, ptr %47, align 8, !tbaa !92
  %60 = add i64 %59, 1
  store i64 %60, ptr %47, align 8, !tbaa !92
  %61 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %59
  store i8 32, ptr %61, align 1, !tbaa !46
  store i8 32, ptr %43, align 8, !tbaa !93
  br label %62

62:                                               ; preds = %39, %39, %58, %42
  %63 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %64 = load i64, ptr %63, align 8, !tbaa !92
  %65 = icmp eq i64 %64, 255
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %68 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %64
  store i8 0, ptr %68, align 1, !tbaa !46
  %69 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !94
  %71 = load i64, ptr %63, align 8, !tbaa !92
  %72 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !95
  tail call void %70(ptr noundef nonnull %67, i64 noundef %71, ptr noundef %73) #27
  store i64 0, ptr %63, align 8, !tbaa !92
  br label %74

74:                                               ; preds = %62, %66
  %75 = load i64, ptr %63, align 8, !tbaa !92
  %76 = add i64 %75, 1
  store i64 %76, ptr %63, align 8, !tbaa !92
  %77 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %75
  store i8 40, ptr %77, align 1, !tbaa !46
  %78 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 40, ptr %78, align 8, !tbaa !93
  br label %79

79:                                               ; preds = %74, %29
  %80 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 7
  %81 = load ptr, ptr %80, align 8, !tbaa !98
  store ptr null, ptr %80, align 8, !tbaa !98
  tail call fastcc void @d_print_mod_list(ptr noundef %0, ptr noundef %2, i32 noundef 0)
  br i1 %37, label %99, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %84 = load i64, ptr %83, align 8, !tbaa !92
  %85 = icmp eq i64 %84, 255
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %88 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %84
  store i8 0, ptr %88, align 1, !tbaa !46
  %89 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !94
  %91 = load i64, ptr %83, align 8, !tbaa !92
  %92 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %93 = load ptr, ptr %92, align 8, !tbaa !95
  tail call void %90(ptr noundef nonnull %87, i64 noundef %91, ptr noundef %93) #27
  store i64 0, ptr %83, align 8, !tbaa !92
  br label %94

94:                                               ; preds = %82, %86
  %95 = load i64, ptr %83, align 8, !tbaa !92
  %96 = add i64 %95, 1
  store i64 %96, ptr %83, align 8, !tbaa !92
  %97 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %95
  store i8 41, ptr %97, align 1, !tbaa !46
  %98 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 41, ptr %98, align 8, !tbaa !93
  br label %99

99:                                               ; preds = %94, %79
  %100 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %101 = load i64, ptr %100, align 8, !tbaa !92
  %102 = icmp eq i64 %101, 255
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %105 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %101
  store i8 0, ptr %105, align 1, !tbaa !46
  %106 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %107 = load ptr, ptr %106, align 8, !tbaa !94
  %108 = load i64, ptr %100, align 8, !tbaa !92
  %109 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %110 = load ptr, ptr %109, align 8, !tbaa !95
  tail call void %107(ptr noundef nonnull %104, i64 noundef %108, ptr noundef %110) #27
  store i64 0, ptr %100, align 8, !tbaa !92
  br label %111

111:                                              ; preds = %99, %103
  %112 = load i64, ptr %100, align 8, !tbaa !92
  %113 = add i64 %112, 1
  store i64 %113, ptr %100, align 8, !tbaa !92
  %114 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %112
  store i8 40, ptr %114, align 1, !tbaa !46
  %115 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 40, ptr %115, align 8, !tbaa !93
  %116 = getelementptr inbounds %struct.demangle_component, ptr %1, i64 0, i32 1, i32 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !46
  %118 = icmp eq ptr %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %111
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef nonnull %117)
  br label %120

120:                                              ; preds = %119, %111
  %121 = load i64, ptr %100, align 8, !tbaa !92
  %122 = icmp eq i64 %121, 255
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %125 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %121
  store i8 0, ptr %125, align 1, !tbaa !46
  %126 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %127 = load ptr, ptr %126, align 8, !tbaa !94
  %128 = load i64, ptr %100, align 8, !tbaa !92
  %129 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %130 = load ptr, ptr %129, align 8, !tbaa !95
  tail call void %127(ptr noundef nonnull %124, i64 noundef %128, ptr noundef %130) #27
  store i64 0, ptr %100, align 8, !tbaa !92
  br label %131

131:                                              ; preds = %120, %123
  %132 = load i64, ptr %100, align 8, !tbaa !92
  %133 = add i64 %132, 1
  store i64 %133, ptr %100, align 8, !tbaa !92
  %134 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %132
  store i8 41, ptr %134, align 1, !tbaa !46
  store i8 41, ptr %115, align 8, !tbaa !93
  tail call fastcc void @d_print_mod_list(ptr noundef %0, ptr noundef %2, i32 noundef 1)
  store ptr %81, ptr %80, align 8, !tbaa !98
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @d_print_array_type(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #12 !prof !34 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %63, label %5

5:                                                ; preds = %3, %15
  %6 = phi ptr [ %16, %15 ], [ %2, %3 ]
  %7 = getelementptr inbounds %struct.d_print_mod, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !102
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.d_print_mod, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !101
  %13 = load i32, ptr %12, align 8, !tbaa !53
  %14 = icmp eq i32 %13, 38
  br label %18

15:                                               ; preds = %5
  %16 = load ptr, ptr %6, align 8, !tbaa !99
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %5, !llvm.loop !141

18:                                               ; preds = %15, %10
  %19 = phi i1 [ %14, %10 ], [ false, %15 ]
  %20 = phi i1 [ %14, %10 ], [ true, %15 ]
  br i1 %20, label %61, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %23 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %24 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %25 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %26 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %27

27:                                               ; preds = %21, %38
  %28 = phi i64 [ 0, %21 ], [ %42, %38 ]
  %29 = getelementptr inbounds i8, ptr @.str.192, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !46
  %31 = load i64, ptr %22, align 8, !tbaa !92
  %32 = icmp eq i64 %31, 255
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %31
  store i8 0, ptr %34, align 1, !tbaa !46
  %35 = load ptr, ptr %24, align 8, !tbaa !94
  %36 = load i64, ptr %22, align 8, !tbaa !92
  %37 = load ptr, ptr %25, align 8, !tbaa !95
  tail call void %35(ptr noundef nonnull %23, i64 noundef %36, ptr noundef %37) #27
  store i64 0, ptr %22, align 8, !tbaa !92
  br label %38

38:                                               ; preds = %33, %27
  %39 = load i64, ptr %22, align 8, !tbaa !92
  %40 = add i64 %39, 1
  store i64 %40, ptr %22, align 8, !tbaa !92
  %41 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %39
  store i8 %30, ptr %41, align 1, !tbaa !46
  store i8 %30, ptr %26, align 8, !tbaa !93
  %42 = add nuw nsw i64 %28, 1
  %43 = icmp eq i64 %28, 0
  br i1 %43, label %27, label %44, !llvm.loop !97

44:                                               ; preds = %38
  tail call fastcc void @d_print_mod_list(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0)
  %45 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %46 = load i64, ptr %45, align 8, !tbaa !92
  %47 = icmp eq i64 %46, 255
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %50 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %46
  store i8 0, ptr %50, align 1, !tbaa !46
  %51 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !94
  %53 = load i64, ptr %45, align 8, !tbaa !92
  %54 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !95
  tail call void %52(ptr noundef nonnull %49, i64 noundef %53, ptr noundef %55) #27
  store i64 0, ptr %45, align 8, !tbaa !92
  br label %56

56:                                               ; preds = %44, %48
  %57 = load i64, ptr %45, align 8, !tbaa !92
  %58 = add i64 %57, 1
  store i64 %58, ptr %45, align 8, !tbaa !92
  %59 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %57
  store i8 41, ptr %59, align 1, !tbaa !46
  %60 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 41, ptr %60, align 8, !tbaa !93
  br label %62

61:                                               ; preds = %18
  tail call fastcc void @d_print_mod_list(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0)
  br label %62

62:                                               ; preds = %56, %61
  br i1 %19, label %80, label %63

63:                                               ; preds = %3, %62
  %64 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %65 = load i64, ptr %64, align 8, !tbaa !92
  %66 = icmp eq i64 %65, 255
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %69 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %65
  store i8 0, ptr %69, align 1, !tbaa !46
  %70 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !94
  %72 = load i64, ptr %64, align 8, !tbaa !92
  %73 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %74 = load ptr, ptr %73, align 8, !tbaa !95
  tail call void %71(ptr noundef nonnull %68, i64 noundef %72, ptr noundef %74) #27
  store i64 0, ptr %64, align 8, !tbaa !92
  br label %75

75:                                               ; preds = %63, %67
  %76 = load i64, ptr %64, align 8, !tbaa !92
  %77 = add i64 %76, 1
  store i64 %77, ptr %64, align 8, !tbaa !92
  %78 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %76
  store i8 32, ptr %78, align 1, !tbaa !46
  %79 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 32, ptr %79, align 8, !tbaa !93
  br label %80

80:                                               ; preds = %75, %62
  %81 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %82 = load i64, ptr %81, align 8, !tbaa !92
  %83 = icmp eq i64 %82, 255
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %86 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %82
  store i8 0, ptr %86, align 1, !tbaa !46
  %87 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !94
  %89 = load i64, ptr %81, align 8, !tbaa !92
  %90 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !95
  tail call void %88(ptr noundef nonnull %85, i64 noundef %89, ptr noundef %91) #27
  store i64 0, ptr %81, align 8, !tbaa !92
  br label %92

92:                                               ; preds = %80, %84
  %93 = load i64, ptr %81, align 8, !tbaa !92
  %94 = add i64 %93, 1
  store i64 %94, ptr %81, align 8, !tbaa !92
  %95 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %93
  store i8 91, ptr %95, align 1, !tbaa !46
  %96 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 91, ptr %96, align 8, !tbaa !93
  %97 = getelementptr inbounds %struct.demangle_component, ptr %1, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !46
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %92
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef nonnull %98)
  br label %101

101:                                              ; preds = %100, %92
  %102 = load i64, ptr %81, align 8, !tbaa !92
  %103 = icmp eq i64 %102, 255
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %106 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %102
  store i8 0, ptr %106, align 1, !tbaa !46
  %107 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %108 = load ptr, ptr %107, align 8, !tbaa !94
  %109 = load i64, ptr %81, align 8, !tbaa !92
  %110 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %111 = load ptr, ptr %110, align 8, !tbaa !95
  tail call void %108(ptr noundef nonnull %105, i64 noundef %109, ptr noundef %111) #27
  store i64 0, ptr %81, align 8, !tbaa !92
  br label %112

112:                                              ; preds = %101, %104
  %113 = load i64, ptr %81, align 8, !tbaa !92
  %114 = add i64 %113, 1
  store i64 %114, ptr %81, align 8, !tbaa !92
  %115 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %113
  store i8 93, ptr %115, align 1, !tbaa !46
  store i8 93, ptr %96, align 8, !tbaa !93
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @d_print_cast(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !prof !34 {
  %3 = alloca %struct.d_print_template, align 8
  %4 = getelementptr inbounds %struct.demangle_component, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = load i32, ptr %5, align 8, !tbaa !53
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef nonnull %5)
  br label %89

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #27
  %10 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !98
  store ptr null, ptr %10, align 8, !tbaa !98
  %12 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !103
  store ptr %13, ptr %3, align 8, !tbaa !106
  store ptr %3, ptr %12, align 8, !tbaa !103
  %14 = load ptr, ptr %4, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.d_print_template, ptr %3, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !108
  %16 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %17)
  %18 = load ptr, ptr %3, align 8, !tbaa !106
  store ptr %18, ptr %12, align 8, !tbaa !103
  %19 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  %20 = load i8, ptr %19, align 8, !tbaa !93
  %21 = icmp eq i8 %20, 60
  br i1 %21, label %22, label %38

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !92
  %25 = icmp eq i64 %24, 255
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %28 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %24
  store i8 0, ptr %28, align 1, !tbaa !46
  %29 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !94
  %31 = load i64, ptr %23, align 8, !tbaa !92
  %32 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !95
  call void %30(ptr noundef nonnull %27, i64 noundef %31, ptr noundef %33) #27
  store i64 0, ptr %23, align 8, !tbaa !92
  br label %34

34:                                               ; preds = %22, %26
  %35 = load i64, ptr %23, align 8, !tbaa !92
  %36 = add i64 %35, 1
  store i64 %36, ptr %23, align 8, !tbaa !92
  %37 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %35
  store i8 32, ptr %37, align 1, !tbaa !46
  store i8 32, ptr %19, align 8, !tbaa !93
  br label %38

38:                                               ; preds = %34, %9
  %39 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !92
  %41 = icmp eq i64 %40, 255
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %44 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %40
  store i8 0, ptr %44, align 1, !tbaa !46
  %45 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !94
  %47 = load i64, ptr %39, align 8, !tbaa !92
  %48 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !95
  call void %46(ptr noundef nonnull %43, i64 noundef %47, ptr noundef %49) #27
  store i64 0, ptr %39, align 8, !tbaa !92
  br label %50

50:                                               ; preds = %38, %42
  %51 = load i64, ptr %39, align 8, !tbaa !92
  %52 = add i64 %51, 1
  store i64 %52, ptr %39, align 8, !tbaa !92
  %53 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %51
  store i8 60, ptr %53, align 1, !tbaa !46
  store i8 60, ptr %19, align 8, !tbaa !93
  %54 = load ptr, ptr %4, align 8, !tbaa !46
  %55 = getelementptr inbounds %struct.demangle_component, ptr %54, i64 0, i32 1, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %56)
  %57 = load i8, ptr %19, align 8, !tbaa !93
  %58 = icmp eq i8 %57, 62
  br i1 %58, label %59, label %74

59:                                               ; preds = %50
  %60 = load i64, ptr %39, align 8, !tbaa !92
  %61 = icmp eq i64 %60, 255
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %64 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %60
  store i8 0, ptr %64, align 1, !tbaa !46
  %65 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !94
  %67 = load i64, ptr %39, align 8, !tbaa !92
  %68 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %69 = load ptr, ptr %68, align 8, !tbaa !95
  call void %66(ptr noundef nonnull %63, i64 noundef %67, ptr noundef %69) #27
  store i64 0, ptr %39, align 8, !tbaa !92
  br label %70

70:                                               ; preds = %59, %62
  %71 = load i64, ptr %39, align 8, !tbaa !92
  %72 = add i64 %71, 1
  store i64 %72, ptr %39, align 8, !tbaa !92
  %73 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %71
  store i8 32, ptr %73, align 1, !tbaa !46
  store i8 32, ptr %19, align 8, !tbaa !93
  br label %74

74:                                               ; preds = %70, %50
  %75 = load i64, ptr %39, align 8, !tbaa !92
  %76 = icmp eq i64 %75, 255
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %79 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %75
  store i8 0, ptr %79, align 1, !tbaa !46
  %80 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !94
  %82 = load i64, ptr %39, align 8, !tbaa !92
  %83 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %84 = load ptr, ptr %83, align 8, !tbaa !95
  call void %81(ptr noundef nonnull %78, i64 noundef %82, ptr noundef %84) #27
  store i64 0, ptr %39, align 8, !tbaa !92
  br label %85

85:                                               ; preds = %74, %77
  %86 = load i64, ptr %39, align 8, !tbaa !92
  %87 = add i64 %86, 1
  store i64 %87, ptr %39, align 8, !tbaa !92
  %88 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %86
  store i8 62, ptr %88, align 1, !tbaa !46
  store i8 62, ptr %19, align 8, !tbaa !93
  store ptr %11, ptr %10, align 8, !tbaa !98
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #27
  br label %89

89:                                               ; preds = %85, %8
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @d_print_expr_op(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !34 {
  %3 = load i32, ptr %1, align 8, !tbaa !53
  %4 = icmp eq i32 %3, 44
  br i1 %4, label %5, label %37

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.demangle_component, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.demangle_operator_info, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !120
  %10 = getelementptr inbounds %struct.demangle_operator_info, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !86
  %12 = sext i32 %11 to i64
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %17 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %18 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %20

20:                                               ; preds = %14, %31
  %21 = phi i64 [ 0, %14 ], [ %35, %31 ]
  %22 = getelementptr inbounds i8, ptr %9, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !46
  %24 = load i64, ptr %15, align 8, !tbaa !92
  %25 = icmp eq i64 %24, 255
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %24
  store i8 0, ptr %27, align 1, !tbaa !46
  %28 = load ptr, ptr %17, align 8, !tbaa !94
  %29 = load i64, ptr %15, align 8, !tbaa !92
  %30 = load ptr, ptr %18, align 8, !tbaa !95
  tail call void %28(ptr noundef nonnull %16, i64 noundef %29, ptr noundef %30) #27
  store i64 0, ptr %15, align 8, !tbaa !92
  br label %31

31:                                               ; preds = %26, %20
  %32 = load i64, ptr %15, align 8, !tbaa !92
  %33 = add i64 %32, 1
  store i64 %33, ptr %15, align 8, !tbaa !92
  %34 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %32
  store i8 %23, ptr %34, align 1, !tbaa !46
  store i8 %23, ptr %19, align 8, !tbaa !93
  %35 = add nuw i64 %21, 1
  %36 = icmp eq i64 %35, %12
  br i1 %36, label %38, label %20, !llvm.loop !97

37:                                               ; preds = %2
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef nonnull %1)
  br label %38

38:                                               ; preds = %31, %5, %37
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @d_print_subexpr(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !34 {
  %3 = load i32, ptr %1, align 8, !tbaa !53
  switch i32 %3, label %4 [
    i32 6, label %35
    i32 0, label %35
  ]

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !92
  %7 = icmp eq i64 %6, 255
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %6
  store i8 0, ptr %10, align 1, !tbaa !46
  %11 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !94
  %13 = load i64, ptr %5, align 8, !tbaa !92
  %14 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !95
  tail call void %12(ptr noundef nonnull %9, i64 noundef %13, ptr noundef %15) #27
  store i64 0, ptr %5, align 8, !tbaa !92
  br label %16

16:                                               ; preds = %4, %8
  %17 = load i64, ptr %5, align 8, !tbaa !92
  %18 = add i64 %17, 1
  store i64 %18, ptr %5, align 8, !tbaa !92
  %19 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %17
  store i8 40, ptr %19, align 1, !tbaa !46
  %20 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 40, ptr %20, align 8, !tbaa !93
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef nonnull %1)
  %21 = load i64, ptr %5, align 8, !tbaa !92
  %22 = icmp eq i64 %21, 255
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %25 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %21
  store i8 0, ptr %25, align 1, !tbaa !46
  %26 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !94
  %28 = load i64, ptr %5, align 8, !tbaa !92
  %29 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !95
  tail call void %27(ptr noundef nonnull %24, i64 noundef %28, ptr noundef %30) #27
  store i64 0, ptr %5, align 8, !tbaa !92
  br label %31

31:                                               ; preds = %16, %23
  %32 = load i64, ptr %5, align 8, !tbaa !92
  %33 = add i64 %32, 1
  store i64 %33, ptr %5, align 8, !tbaa !92
  %34 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %32
  store i8 41, ptr %34, align 1, !tbaa !46
  store i8 41, ptr %20, align 8, !tbaa !93
  br label %36

35:                                               ; preds = %2, %2
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef nonnull %1)
  br label %36

36:                                               ; preds = %35, %31
  ret void
}

; Function Attrs: cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_find_pack(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #20 !prof !34 {
  br label %3

3:                                                ; preds = %68, %60, %57, %54, %2
  %4 = phi ptr [ %1, %2 ], [ %56, %54 ], [ %59, %57 ], [ %62, %60 ], [ %70, %68 ]
  %5 = icmp eq ptr %4, null
  br i1 %5, label %71, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 8, !tbaa !53
  switch i32 %7, label %63 [
    i32 5, label %8
    i32 65, label %71
    i32 0, label %71
    i32 44, label %71
    i32 35, label %71
    i32 22, label %71
    i32 57, label %71
    i32 6, label %71
    i32 45, label %54
    i32 7, label %57
    i32 8, label %60
  ]

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !103
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 8
  store i32 1, ptr %13, align 8, !tbaa !96
  br label %47

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.d_print_template, ptr %10, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !108
  %17 = getelementptr inbounds %struct.demangle_component, ptr %4, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !46
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds %struct.demangle_component, ptr %16, i64 0, i32 1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %14
  %24 = tail call i32 @llvm.smin.i32(i32 %19, i32 0)
  br label %25

25:                                               ; preds = %23, %33
  %26 = phi i1 [ %37, %33 ], [ %22, %23 ]
  %27 = phi ptr [ %36, %33 ], [ %21, %23 ]
  %28 = phi i32 [ %34, %33 ], [ %19, %23 ]
  %29 = load i32, ptr %27, align 8, !tbaa !53
  %30 = icmp eq i32 %29, 43
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = icmp slt i32 %28, 1
  br i1 %32, label %38, label %33

33:                                               ; preds = %31
  %34 = add nsw i32 %28, -1
  %35 = getelementptr inbounds %struct.demangle_component, ptr %27, i64 0, i32 1, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %25, !llvm.loop !112

38:                                               ; preds = %33, %31, %14
  %39 = phi i32 [ %19, %14 ], [ %34, %33 ], [ %24, %31 ]
  %40 = phi ptr [ %21, %14 ], [ %36, %33 ], [ %27, %31 ]
  %41 = phi i1 [ %22, %14 ], [ %37, %33 ], [ %26, %31 ]
  %42 = icmp ne i32 %39, 0
  %43 = or i1 %42, %41
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.demangle_component, ptr %40, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  br label %47

47:                                               ; preds = %25, %12, %38, %44
  %48 = phi ptr [ null, %12 ], [ %46, %44 ], [ null, %38 ], [ null, %25 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, ptr %48, align 8, !tbaa !53
  %52 = icmp eq i32 %51, 43
  br i1 %52, label %71, label %53

53:                                               ; preds = %50, %47
  br label %71

54:                                               ; preds = %6
  %55 = getelementptr inbounds %struct.demangle_component, ptr %4, i64 0, i32 1, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  br label %3

57:                                               ; preds = %6
  %58 = getelementptr inbounds %struct.demangle_component, ptr %4, i64 0, i32 1, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !46
  br label %3

60:                                               ; preds = %6
  %61 = getelementptr inbounds %struct.demangle_component, ptr %4, i64 0, i32 1, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !46
  br label %3

63:                                               ; preds = %6
  %64 = getelementptr inbounds %struct.demangle_component, ptr %4, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !46
  %66 = tail call fastcc ptr @d_find_pack(ptr noundef %0, ptr noundef %65)
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.demangle_component, ptr %4, i64 0, i32 1, i32 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !46
  br label %3

71:                                               ; preds = %6, %6, %6, %6, %6, %6, %63, %6, %50, %3, %53
  %72 = phi ptr [ null, %53 ], [ null, %3 ], [ %48, %50 ], [ null, %6 ], [ %66, %63 ], [ null, %6 ], [ null, %6 ], [ null, %6 ], [ null, %6 ], [ null, %6 ], [ null, %6 ]
  ret ptr %72
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind uwtable
define internal fastcc void @d_print_mod_list(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #12 !prof !34 {
  %4 = alloca [25 x i8], align 16
  br label %5

5:                                                ; preds = %185, %24, %3
  %6 = phi ptr [ %1, %3 ], [ %25, %24 ], [ %186, %185 ]
  %7 = icmp eq ptr %6, null
  br i1 %7, label %187, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !96
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %187

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.d_print_mod, ptr %6, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !102
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.d_print_mod, ptr %6, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !101
  %21 = load i32, ptr %20, align 8, !tbaa !53
  %22 = add i32 %21, -26
  %23 = icmp ult i32 %22, 3
  br i1 %23, label %24, label %26

24:                                               ; preds = %18, %12
  %25 = load ptr, ptr %6, align 8, !tbaa !99
  br label %5

26:                                               ; preds = %18, %16
  store i32 1, ptr %13, align 8, !tbaa !102
  %27 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !103
  %29 = getelementptr inbounds %struct.d_print_mod, ptr %6, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !104
  store ptr %30, ptr %27, align 8, !tbaa !103
  %31 = getelementptr inbounds %struct.d_print_mod, ptr %6, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !101
  %33 = load i32, ptr %32, align 8, !tbaa !53
  switch i32 %33, label %185 [
    i32 37, label %34
    i32 38, label %36
    i32 2, label %38
  ]

34:                                               ; preds = %26
  %35 = load ptr, ptr %6, align 8, !tbaa !99
  tail call fastcc void @d_print_function_type(ptr noundef %0, ptr noundef nonnull %32, ptr noundef %35)
  store ptr %28, ptr %27, align 8, !tbaa !103
  br label %187

36:                                               ; preds = %26
  %37 = load ptr, ptr %6, align 8, !tbaa !99
  tail call fastcc void @d_print_array_type(ptr noundef %0, ptr noundef nonnull %32, ptr noundef %37)
  store ptr %28, ptr %27, align 8, !tbaa !103
  br label %187

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !98
  store ptr null, ptr %39, align 8, !tbaa !98
  %41 = getelementptr inbounds %struct.demangle_component, ptr %32, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %42)
  store ptr %40, ptr %39, align 8, !tbaa !98
  %43 = load i32, ptr %0, align 8, !tbaa !90
  %44 = and i32 %43, 4
  %45 = icmp eq i32 %44, 0
  %46 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  br i1 %45, label %47, label %69

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %49 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %50 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %51 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %52

52:                                               ; preds = %47, %63
  %53 = phi i64 [ 0, %47 ], [ %67, %63 ]
  %54 = getelementptr inbounds i8, ptr @.str.147, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !46
  %56 = load i64, ptr %46, align 8, !tbaa !92
  %57 = icmp eq i64 %56, 255
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %56
  store i8 0, ptr %59, align 1, !tbaa !46
  %60 = load ptr, ptr %49, align 8, !tbaa !94
  %61 = load i64, ptr %46, align 8, !tbaa !92
  %62 = load ptr, ptr %50, align 8, !tbaa !95
  tail call void %60(ptr noundef nonnull %48, i64 noundef %61, ptr noundef %62) #27
  store i64 0, ptr %46, align 8, !tbaa !92
  br label %63

63:                                               ; preds = %58, %52
  %64 = load i64, ptr %46, align 8, !tbaa !92
  %65 = add i64 %64, 1
  store i64 %65, ptr %46, align 8, !tbaa !92
  %66 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %64
  store i8 %55, ptr %66, align 1, !tbaa !46
  store i8 %55, ptr %51, align 8, !tbaa !93
  %67 = add nuw nsw i64 %53, 1
  %68 = icmp eq i64 %53, 0
  br i1 %68, label %52, label %85, !llvm.loop !97

69:                                               ; preds = %38
  %70 = load i64, ptr %46, align 8, !tbaa !92
  %71 = icmp eq i64 %70, 255
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %74 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %70
  store i8 0, ptr %74, align 1, !tbaa !46
  %75 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !94
  %77 = load i64, ptr %46, align 8, !tbaa !92
  %78 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !95
  tail call void %76(ptr noundef nonnull %73, i64 noundef %77, ptr noundef %79) #27
  store i64 0, ptr %46, align 8, !tbaa !92
  br label %80

80:                                               ; preds = %69, %72
  %81 = load i64, ptr %46, align 8, !tbaa !92
  %82 = add i64 %81, 1
  store i64 %82, ptr %46, align 8, !tbaa !92
  %83 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %81
  store i8 46, ptr %83, align 1, !tbaa !46
  %84 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 46, ptr %84, align 8, !tbaa !93
  br label %85

85:                                               ; preds = %63, %80
  %86 = load ptr, ptr %31, align 8, !tbaa !101
  %87 = getelementptr inbounds %struct.demangle_component, ptr %86, i64 0, i32 1, i32 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !46
  %89 = load i32, ptr %88, align 8, !tbaa !53
  %90 = icmp eq i32 %89, 63
  br i1 %90, label %91, label %171

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %93 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %94 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %95 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %96 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %97

97:                                               ; preds = %91, %108
  %98 = phi i64 [ 0, %91 ], [ %112, %108 ]
  %99 = getelementptr inbounds i8, ptr @.str.190, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !46
  %101 = load i64, ptr %92, align 8, !tbaa !92
  %102 = icmp eq i64 %101, 255
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %101
  store i8 0, ptr %104, align 1, !tbaa !46
  %105 = load ptr, ptr %94, align 8, !tbaa !94
  %106 = load i64, ptr %92, align 8, !tbaa !92
  %107 = load ptr, ptr %95, align 8, !tbaa !95
  tail call void %105(ptr noundef nonnull %93, i64 noundef %106, ptr noundef %107) #27
  store i64 0, ptr %92, align 8, !tbaa !92
  br label %108

108:                                              ; preds = %103, %97
  %109 = load i64, ptr %92, align 8, !tbaa !92
  %110 = add i64 %109, 1
  store i64 %110, ptr %92, align 8, !tbaa !92
  %111 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %109
  store i8 %100, ptr %111, align 1, !tbaa !46
  store i8 %100, ptr %96, align 8, !tbaa !93
  %112 = add nuw nsw i64 %98, 1
  %113 = icmp eq i64 %112, 13
  br i1 %113, label %114, label %97, !llvm.loop !97

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.demangle_component, ptr %88, i64 0, i32 1
  %116 = getelementptr inbounds %struct.demangle_component, ptr %88, i64 0, i32 1, i32 0, i32 1
  %117 = load i32, ptr %116, align 8, !tbaa !46
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %4) #27
  %120 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.193, i64 noundef %119)
  %121 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %146, label %123

123:                                              ; preds = %114
  %124 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %125 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %126 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %127 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %128 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %129

129:                                              ; preds = %123, %140
  %130 = phi i64 [ 0, %123 ], [ %144, %140 ]
  %131 = getelementptr inbounds i8, ptr %4, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !46
  %133 = load i64, ptr %124, align 8, !tbaa !92
  %134 = icmp eq i64 %133, 255
  br i1 %134, label %135, label %140

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %133
  store i8 0, ptr %136, align 1, !tbaa !46
  %137 = load ptr, ptr %126, align 8, !tbaa !94
  %138 = load i64, ptr %124, align 8, !tbaa !92
  %139 = load ptr, ptr %127, align 8, !tbaa !95
  tail call void %137(ptr noundef nonnull %125, i64 noundef %138, ptr noundef %139) #27
  store i64 0, ptr %124, align 8, !tbaa !92
  br label %140

140:                                              ; preds = %135, %129
  %141 = load i64, ptr %124, align 8, !tbaa !92
  %142 = add i64 %141, 1
  store i64 %142, ptr %124, align 8, !tbaa !92
  %143 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %141
  store i8 %132, ptr %143, align 1, !tbaa !46
  store i8 %132, ptr %128, align 8, !tbaa !93
  %144 = add nuw i64 %130, 1
  %145 = icmp eq i64 %144, %121
  br i1 %145, label %146, label %129, !llvm.loop !97

146:                                              ; preds = %140, %114
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %4) #27
  %147 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %148 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %149 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %150 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %151 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  br label %152

152:                                              ; preds = %146, %163
  %153 = phi i64 [ 0, %146 ], [ %167, %163 ]
  %154 = getelementptr inbounds i8, ptr @.str.191, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !46
  %156 = load i64, ptr %147, align 8, !tbaa !92
  %157 = icmp eq i64 %156, 255
  br i1 %157, label %158, label %163

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %156
  store i8 0, ptr %159, align 1, !tbaa !46
  %160 = load ptr, ptr %149, align 8, !tbaa !94
  %161 = load i64, ptr %147, align 8, !tbaa !92
  %162 = load ptr, ptr %150, align 8, !tbaa !95
  tail call void %160(ptr noundef nonnull %148, i64 noundef %161, ptr noundef %162) #27
  store i64 0, ptr %147, align 8, !tbaa !92
  br label %163

163:                                              ; preds = %158, %152
  %164 = load i64, ptr %147, align 8, !tbaa !92
  %165 = add i64 %164, 1
  store i64 %165, ptr %147, align 8, !tbaa !92
  %166 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %164
  store i8 %155, ptr %166, align 1, !tbaa !46
  store i8 %155, ptr %151, align 8, !tbaa !93
  %167 = add nuw nsw i64 %153, 1
  %168 = icmp eq i64 %167, 3
  br i1 %168, label %169, label %152, !llvm.loop !97

169:                                              ; preds = %163
  %170 = load ptr, ptr %115, align 8, !tbaa !46
  br label %171

171:                                              ; preds = %169, %85
  %172 = phi ptr [ %170, %169 ], [ %88, %85 ]
  %173 = load i32, ptr %172, align 8, !tbaa !53
  %174 = add i32 %173, -26
  %175 = icmp ult i32 %174, 3
  br i1 %175, label %176, label %183

176:                                              ; preds = %171, %176
  %177 = phi ptr [ %179, %176 ], [ %172, %171 ]
  %178 = getelementptr inbounds %struct.demangle_component, ptr %177, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !46
  %180 = load i32, ptr %179, align 8, !tbaa !53
  %181 = add i32 %180, -26
  %182 = icmp ult i32 %181, 3
  br i1 %182, label %176, label %183, !llvm.loop !142

183:                                              ; preds = %176, %171
  %184 = phi ptr [ %172, %171 ], [ %179, %176 ]
  tail call fastcc void @d_print_comp(ptr noundef nonnull %0, ptr noundef nonnull %184)
  store ptr %28, ptr %27, align 8, !tbaa !103
  br label %187

185:                                              ; preds = %26
  tail call fastcc void @d_print_mod(ptr noundef %0, ptr noundef nonnull %32)
  store ptr %28, ptr %27, align 8, !tbaa !103
  %186 = load ptr, ptr %6, align 8, !tbaa !99
  br label %5

187:                                              ; preds = %5, %8, %183, %36, %34
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #21

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #25

; Function Attrs: nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #26

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #20 = { cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #22 = { nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #27 = { nounwind }
attributes #28 = { allocsize(1) }

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
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!54, !41, i64 0}
!54 = !{!"demangle_component", !41, i64 0, !37, i64 8}
!55 = !{!56, !36, i64 24}
!56 = !{!"d_info", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !36, i64 48, !41, i64 56, !41, i64 60, !41, i64 64, !36, i64 72, !41, i64 80}
!57 = !{!56, !41, i64 80}
!58 = !{!56, !41, i64 40}
!59 = !{!56, !41, i64 44}
!60 = !{!56, !36, i64 32}
!61 = distinct !{!61, !52}
!62 = !{i32 0, i32 2}
!63 = distinct !{!63, !51, !52}
!64 = distinct !{!64, !51, !52}
!65 = !{!56, !41, i64 16}
!66 = distinct !{!66, !51, !52}
!67 = distinct !{!67, !51, !52}
!68 = !{!56, !41, i64 56}
!69 = !{!56, !41, i64 60}
!70 = !{!56, !36, i64 48}
!71 = !{!72, !41, i64 8}
!72 = !{!"demangle_builtin_type_info", !36, i64 0, !41, i64 8, !36, i64 16, !41, i64 24, !41, i64 28}
!73 = distinct !{!73, !51, !52}
!74 = !{!56, !36, i64 8}
!75 = !{!56, !36, i64 72}
!76 = distinct !{!76, !51, !52}
!77 = !{!56, !41, i64 64}
!78 = distinct !{!78, !52}
!79 = distinct !{!79, !51, !52}
!80 = distinct !{!80, !51, !52}
!81 = !{!82, !37, i64 0}
!82 = !{!"d_standard_sub_info", !37, i64 0, !36, i64 8, !41, i64 16, !36, i64 24, !41, i64 32, !36, i64 40, !41, i64 48}
!83 = !{!82, !36, i64 40}
!84 = !{!82, !41, i64 48}
!85 = !{!41, !41, i64 0}
!86 = !{!87, !41, i64 16}
!87 = !{!"demangle_operator_info", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20}
!88 = !{!87, !36, i64 0}
!89 = !{!87, !41, i64 20}
!90 = !{!91, !41, i64 0}
!91 = !{!"d_print_info", !41, i64 0, !37, i64 4, !42, i64 264, !37, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !41, i64 312, !41, i64 316}
!92 = !{!91, !42, i64 264}
!93 = !{!91, !37, i64 272}
!94 = !{!91, !36, i64 280}
!95 = !{!91, !36, i64 288}
!96 = !{!91, !41, i64 312}
!97 = distinct !{!97, !51, !52}
!98 = !{!91, !36, i64 304}
!99 = !{!100, !36, i64 0}
!100 = !{!"d_print_mod", !36, i64 0, !36, i64 8, !41, i64 16, !36, i64 24}
!101 = !{!100, !36, i64 8}
!102 = !{!100, !41, i64 16}
!103 = !{!91, !36, i64 296}
!104 = !{!100, !36, i64 24}
!105 = distinct !{!105, !51, !52}
!106 = !{!107, !36, i64 0}
!107 = !{!"d_print_template", !36, i64 0, !36, i64 8}
!108 = !{!107, !36, i64 8}
!109 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 4, !85, i64 24, i64 8, !35}
!110 = distinct !{!110, !51, !52}
!111 = distinct !{!111, !51, !52}
!112 = distinct !{!112, !51, !52}
!113 = !{!91, !41, i64 316}
!114 = distinct !{!114, !51, !52}
!115 = !{!72, !36, i64 0}
!116 = !{!72, !36, i64 16}
!117 = !{!72, !41, i64 24}
!118 = distinct !{!118, !51, !52}
!119 = distinct !{!119, !51, !52}
!120 = !{!87, !36, i64 8}
!121 = !{!72, !41, i64 28}
!122 = distinct !{!122, !51, !52}
!123 = distinct !{!123, !51, !52}
!124 = distinct !{!124, !51, !52}
!125 = !{!126, !41, i64 24}
!126 = !{!"d_growable_string", !36, i64 0, !42, i64 8, !42, i64 16, !41, i64 24}
!127 = !{!126, !36, i64 0}
!128 = !{!126, !42, i64 16}
!129 = !{!42, !42, i64 0}
!130 = !{!126, !42, i64 8}
!131 = !{!56, !36, i64 0}
!132 = distinct !{!132, !51, !52}
!133 = distinct !{!133, !52}
!134 = distinct !{!134, !52}
!135 = distinct !{!135, !52}
!136 = distinct !{!136, !51, !52}
!137 = distinct !{!137, !52}
!138 = distinct !{!138, !51, !52}
!139 = distinct !{!139, !51, !52}
!140 = distinct !{!140, !51, !52}
!141 = distinct !{!141, !51, !52}
!142 = distinct !{!142, !51, !52}
