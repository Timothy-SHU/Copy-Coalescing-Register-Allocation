; ModuleID = 'cp-demangle.c'
source_filename = "cp-demangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.demangle_operator_info = type { ptr, ptr, i32, i32 }
%struct.d_standard_sub_info = type { i8, ptr, i32, ptr, i32, ptr, i32 }
%struct.demangle_builtin_type_info = type { ptr, i32, ptr, i32, i32 }
%struct.demangle_component = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32 }
%struct.d_info = type { ptr, ptr, i32, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32 }
%struct.d_print_info = type { i32, [256 x i8], i64, i8, ptr, ptr, ptr, ptr, i32, i32 }
%struct.d_print_mod = type { ptr, ptr, i32, ptr }
%struct.d_print_template = type { ptr, ptr }
%struct.d_growable_string = type { ptr, i64, i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"std\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"string literal\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"_GLOBAL_\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"(anonymous namespace)\00", align 1
@cplus_demangle_operators = dso_local constant [53 x %struct.demangle_operator_info] [%struct.demangle_operator_info { ptr @.str.23, ptr @.str.24, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.25, ptr @.str.26, i32 1, i32 2 }, %struct.demangle_operator_info { ptr @.str.27, ptr @.str.28, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.29, ptr @.str.30, i32 1, i32 1 }, %struct.demangle_operator_info { ptr @.str.31, ptr @.str.30, i32 1, i32 2 }, %struct.demangle_operator_info { ptr @.str.20, ptr @.str.32, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.33, ptr @.str.34, i32 1, i32 2 }, %struct.demangle_operator_info { ptr @.str.35, ptr @.str.36, i32 1, i32 1 }, %struct.demangle_operator_info { ptr @.str.37, ptr @.str.38, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.39, ptr @.str.40, i32 8, i32 1 }, %struct.demangle_operator_info { ptr @.str.41, ptr @.str.42, i32 1, i32 1 }, %struct.demangle_operator_info { ptr @.str.43, ptr @.str.44, i32 6, i32 1 }, %struct.demangle_operator_info { ptr @.str.21, ptr @.str.45, i32 1, i32 2 }, %struct.demangle_operator_info { ptr @.str.46, ptr @.str.47, i32 1, i32 2 }, %struct.demangle_operator_info { ptr @.str.48, ptr @.str.49, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.50, ptr @.str.51, i32 1, i32 2 }, %struct.demangle_operator_info { ptr @.str.52, ptr @.str.53, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.54, ptr @.str.55, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.56, ptr @.str.57, i32 1, i32 2 }, %struct.demangle_operator_info { ptr @.str.58, ptr @.str.59, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.60, ptr @.str.61, i32 3, i32 2 }, %struct.demangle_operator_info { ptr @.str.62, ptr @.str.63, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.64, ptr @.str.65, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.66, ptr @.str.67, i32 1, i32 2 }, %struct.demangle_operator_info { ptr @.str.68, ptr @.str.69, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.70, ptr @.str.71, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.72, ptr @.str.73, i32 1, i32 2 }, %struct.demangle_operator_info { ptr @.str.74, ptr @.str.42, i32 1, i32 2 }, %struct.demangle_operator_info { ptr @.str.75, ptr @.str.76, i32 2, i32 1 }, %struct.demangle_operator_info { ptr @.str.77, ptr @.str.78, i32 5, i32 1 }, %struct.demangle_operator_info { ptr @.str.79, ptr @.str.80, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.81, ptr @.str.73, i32 1, i32 1 }, %struct.demangle_operator_info { ptr @.str.82, ptr @.str.83, i32 1, i32 1 }, %struct.demangle_operator_info { ptr @.str.84, ptr @.str.85, i32 3, i32 1 }, %struct.demangle_operator_info { ptr @.str.86, ptr @.str.87, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.88, ptr @.str.89, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.90, ptr @.str.91, i32 1, i32 2 }, %struct.demangle_operator_info { ptr @.str.92, ptr @.str.93, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.94, ptr @.str.95, i32 1, i32 2 }, %struct.demangle_operator_info { ptr @.str.96, ptr @.str.97, i32 3, i32 2 }, %struct.demangle_operator_info { ptr @.str.98, ptr @.str.99, i32 2, i32 1 }, %struct.demangle_operator_info { ptr @.str.100, ptr @.str.95, i32 1, i32 1 }, %struct.demangle_operator_info { ptr @.str.22, ptr @.str.101, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.102, ptr @.str.103, i32 1, i32 3 }, %struct.demangle_operator_info { ptr @.str.104, ptr @.str.105, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.106, ptr @.str.107, i32 3, i32 2 }, %struct.demangle_operator_info { ptr @.str.108, ptr @.str.109, i32 1, i32 2 }, %struct.demangle_operator_info { ptr @.str.110, ptr @.str.111, i32 2, i32 2 }, %struct.demangle_operator_info { ptr @.str.19, ptr @.str.112, i32 7, i32 1 }, %struct.demangle_operator_info { ptr @.str.113, ptr @.str.112, i32 7, i32 1 }, %struct.demangle_operator_info { ptr @.str.114, ptr @.str.115, i32 8, i32 1 }, %struct.demangle_operator_info { ptr @.str.116, ptr @.str.115, i32 8, i32 1 }, %struct.demangle_operator_info zeroinitializer], align 16
@standard_subs = internal unnamed_addr constant [7 x %struct.d_standard_sub_info] [%struct.d_standard_sub_info { i8 116, ptr @.str, i32 3, ptr @.str, i32 3, ptr null, i32 0 }, %struct.d_standard_sub_info { i8 97, ptr @.str.4, i32 14, ptr @.str.4, i32 14, ptr @.str.5, i32 9 }, %struct.d_standard_sub_info { i8 98, ptr @.str.6, i32 17, ptr @.str.6, i32 17, ptr @.str.7, i32 12 }, %struct.d_standard_sub_info { i8 115, ptr @.str.8, i32 11, ptr @.str.9, i32 70, ptr @.str.7, i32 12 }, %struct.d_standard_sub_info { i8 105, ptr @.str.10, i32 12, ptr @.str.11, i32 49, ptr @.str.12, i32 13 }, %struct.d_standard_sub_info { i8 111, ptr @.str.13, i32 12, ptr @.str.14, i32 49, ptr @.str.15, i32 13 }, %struct.d_standard_sub_info { i8 100, ptr @.str.16, i32 13, ptr @.str.17, i32 50, ptr @.str.18, i32 14 }], align 16
@.str.4 = private unnamed_addr constant [15 x i8] c"std::allocator\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"allocator\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"std::basic_string\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"std::string\00", align 1
@.str.9 = private unnamed_addr constant [71 x i8] c"std::basic_string<char, std::char_traits<char>, std::allocator<char> >\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"std::istream\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"std::basic_istream<char, std::char_traits<char> >\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"basic_istream\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"std::ostream\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"std::basic_ostream<char, std::char_traits<char> >\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"basic_ostream\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"std::iostream\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"std::basic_iostream<char, std::char_traits<char> >\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"basic_iostream\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"dt\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"pt\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"aN\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"&=\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"aS\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"aa\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"ad\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"an\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"cm\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"co\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"dV\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"/=\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"da\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"delete[]\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"dl\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"dv\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"eO\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"^=\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"eo\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"ix\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"lS\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"<<=\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"mI\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"mL\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"mi\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"ml\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"mm\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"na\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"new[]\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"ng\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"nt\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"nw\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"oR\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"|=\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"oo\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"pL\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"pl\00", align 1
@.str.95 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"->*\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"pp\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"qu\00", align 1
@.str.103 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"rM\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"%=\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"rS\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c">>=\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"rm\00", align 1
@.str.109 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c"sizeof \00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"sz\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"at\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"alignof \00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"az\00", align 1
@cplus_demangle_builtin_types = dso_local constant [32 x %struct.demangle_builtin_type_info] [%struct.demangle_builtin_type_info { ptr @.str.117, i32 11, ptr @.str.117, i32 11, i32 0 }, %struct.demangle_builtin_type_info { ptr @.str.118, i32 4, ptr @.str.119, i32 7, i32 7 }, %struct.demangle_builtin_type_info { ptr @.str.120, i32 4, ptr @.str.121, i32 4, i32 0 }, %struct.demangle_builtin_type_info { ptr @.str.122, i32 6, ptr @.str.122, i32 6, i32 8 }, %struct.demangle_builtin_type_info { ptr @.str.123, i32 11, ptr @.str.123, i32 11, i32 8 }, %struct.demangle_builtin_type_info { ptr @.str.124, i32 5, ptr @.str.124, i32 5, i32 8 }, %struct.demangle_builtin_type_info { ptr @.str.125, i32 10, ptr @.str.125, i32 10, i32 8 }, %struct.demangle_builtin_type_info { ptr @.str.126, i32 13, ptr @.str.126, i32 13, i32 0 }, %struct.demangle_builtin_type_info { ptr @.str.127, i32 3, ptr @.str.127, i32 3, i32 1 }, %struct.demangle_builtin_type_info { ptr @.str.128, i32 12, ptr @.str.129, i32 8, i32 2 }, %struct.demangle_builtin_type_info zeroinitializer, %struct.demangle_builtin_type_info { ptr @.str.130, i32 4, ptr @.str.130, i32 4, i32 3 }, %struct.demangle_builtin_type_info { ptr @.str.131, i32 13, ptr @.str.131, i32 13, i32 4 }, %struct.demangle_builtin_type_info { ptr @.str.132, i32 8, ptr @.str.132, i32 8, i32 0 }, %struct.demangle_builtin_type_info { ptr @.str.133, i32 17, ptr @.str.133, i32 17, i32 0 }, %struct.demangle_builtin_type_info zeroinitializer, %struct.demangle_builtin_type_info zeroinitializer, %struct.demangle_builtin_type_info zeroinitializer, %struct.demangle_builtin_type_info { ptr @.str.134, i32 5, ptr @.str.134, i32 5, i32 0 }, %struct.demangle_builtin_type_info { ptr @.str.135, i32 14, ptr @.str.135, i32 14, i32 0 }, %struct.demangle_builtin_type_info zeroinitializer, %struct.demangle_builtin_type_info { ptr @.str.136, i32 4, ptr @.str.136, i32 4, i32 9 }, %struct.demangle_builtin_type_info { ptr @.str.137, i32 7, ptr @.str.120, i32 4, i32 0 }, %struct.demangle_builtin_type_info { ptr @.str.138, i32 9, ptr @.str.130, i32 4, i32 5 }, %struct.demangle_builtin_type_info { ptr @.str.139, i32 18, ptr @.str.139, i32 18, i32 6 }, %struct.demangle_builtin_type_info { ptr @.str.140, i32 3, ptr @.str.140, i32 3, i32 0 }, %struct.demangle_builtin_type_info { ptr @.str.141, i32 9, ptr @.str.141, i32 9, i32 0 }, %struct.demangle_builtin_type_info { ptr @.str.142, i32 9, ptr @.str.142, i32 9, i32 0 }, %struct.demangle_builtin_type_info { ptr @.str.143, i32 10, ptr @.str.143, i32 10, i32 0 }, %struct.demangle_builtin_type_info { ptr @.str.144, i32 4, ptr @.str.144, i32 4, i32 8 }, %struct.demangle_builtin_type_info { ptr @.str.145, i32 8, ptr @.str.145, i32 8, i32 0 }, %struct.demangle_builtin_type_info { ptr @.str.146, i32 8, ptr @.str.146, i32 8, i32 0 }], align 16
@.str.117 = private unnamed_addr constant [12 x i8] c"signed char\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.122 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"long double\00", align 1
@.str.124 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c"__float128\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.128 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.131 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"__int128\00", align 1
@.str.133 = private unnamed_addr constant [18 x i8] c"unsigned __int128\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.135 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.137 = private unnamed_addr constant [8 x i8] c"wchar_t\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"long long\00", align 1
@.str.139 = private unnamed_addr constant [19 x i8] c"unsigned long long\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.141 = private unnamed_addr constant [10 x i8] c"decimal32\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"decimal64\00", align 1
@.str.143 = private unnamed_addr constant [11 x i8] c"decimal128\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"char16_t\00", align 1
@.str.146 = private unnamed_addr constant [9 x i8] c"char32_t\00", align 1
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @cplus_demangle_fill_name(ptr noundef writeonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  %7 = icmp eq i32 %2, 0
  %8 = or i1 %6, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  store i32 0, ptr %0, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.demangle_component, ptr %0, i64 0, i32 1
  store ptr %1, ptr %10, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.demangle_component, ptr %0, i64 0, i32 1, i32 0, i32 1
  store i32 %2, ptr %11, align 8, !tbaa !11
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi i32 [ 1, %9 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @cplus_demangle_fill_extended_operator(ptr noundef writeonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp slt i32 %1, 0
  %6 = or i1 %4, %5
  %7 = icmp eq ptr %2, null
  %8 = or i1 %6, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  store i32 45, ptr %0, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.demangle_component, ptr %0, i64 0, i32 1
  store i32 %1, ptr %10, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.demangle_component, ptr %0, i64 0, i32 1, i32 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !11
  br label %12

12:                                               ; preds = %3, %9
  %13 = phi i32 [ 1, %9 ], [ 0, %3 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @cplus_demangle_fill_ctor(ptr noundef writeonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %2, null
  %6 = or i1 %4, %5
  %7 = add i32 %1, -4
  %8 = icmp ult i32 %7, -3
  %9 = or i1 %8, %6
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  store i32 7, ptr %0, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.demangle_component, ptr %0, i64 0, i32 1
  store i32 %1, ptr %11, align 8, !tbaa !11
  %12 = getelementptr inbounds %struct.demangle_component, ptr %0, i64 0, i32 1, i32 0, i32 1
  store ptr %2, ptr %12, align 8, !tbaa !11
  br label %13

13:                                               ; preds = %3, %10
  %14 = phi i32 [ 1, %10 ], [ 0, %3 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @cplus_demangle_fill_dtor(ptr noundef writeonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %2, null
  %6 = or i1 %4, %5
  %7 = add i32 %1, -4
  %8 = icmp ult i32 %7, -3
  %9 = or i1 %8, %6
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  store i32 8, ptr %0, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.demangle_component, ptr %0, i64 0, i32 1
  store i32 %1, ptr %11, align 8, !tbaa !11
  %12 = getelementptr inbounds %struct.demangle_component, ptr %0, i64 0, i32 1, i32 0, i32 1
  store ptr %2, ptr %12, align 8, !tbaa !11
  br label %13

13:                                               ; preds = %3, %10
  %14 = phi i32 [ 1, %10 ], [ 0, %3 ]
  ret i32 %14
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @cplus_demangle_mangled_name(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = load i8, ptr %4, align 1, !tbaa !11
  %6 = icmp eq i8 %5, 95
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %8, ptr %3, align 8, !tbaa !12
  %9 = load i8, ptr %8, align 1, !tbaa !11
  br label %12

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %7, %10
  %13 = phi i8 [ %9, %7 ], [ %5, %10 ]
  %14 = phi ptr [ %8, %7 ], [ %4, %10 ]
  %15 = icmp eq i8 %13, 90
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %17, ptr %3, align 8, !tbaa !12
  %18 = tail call fastcc ptr @d_encoding(ptr noundef nonnull %0, i32 noundef %1) #22
  br label %19

19:                                               ; preds = %12, %10, %16
  %20 = phi ptr [ %18, %16 ], [ null, %10 ], [ null, %12 ]
  ret ptr %20
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_encoding(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = load i8, ptr %4, align 1, !tbaa !11
  switch i8 %5, label %8 [
    i8 84, label %6
    i8 71, label %6
  ]

6:                                                ; preds = %2, %2
  %7 = tail call fastcc ptr @d_special_name(ptr noundef nonnull %0) #22
  br label %46

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @d_name(ptr noundef nonnull %0) #22
  %10 = icmp ne ptr %9, null
  %11 = icmp ne i32 %1, 0
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %34

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !15
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %13, %21
  %19 = phi ptr [ %23, %21 ], [ %9, %13 ]
  %20 = load i32, ptr %19, align 8, !tbaa !6
  switch i32 %20, label %46 [
    i32 26, label %21
    i32 27, label %21
    i32 28, label %21
    i32 2, label %24
  ]

21:                                               ; preds = %18, %18, %18
  %22 = getelementptr inbounds %struct.demangle_component, ptr %19, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !11
  br label %18, !llvm.loop !16

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.demangle_component, ptr %19, i64 0, i32 1, i32 0, i32 1
  br label %26

26:                                               ; preds = %26, %24
  %27 = phi ptr [ %25, %24 ], [ %32, %26 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !11
  %29 = load i32, ptr %28, align 8, !tbaa !6
  %30 = add i32 %29, -26
  %31 = icmp ult i32 %30, 3
  %32 = getelementptr inbounds %struct.demangle_component, ptr %28, i64 0, i32 1
  br i1 %31, label %26, label %33, !llvm.loop !18

33:                                               ; preds = %26
  store ptr %28, ptr %25, align 8, !tbaa !11
  br label %46

34:                                               ; preds = %13, %8
  %35 = load ptr, ptr %3, align 8, !tbaa !12
  %36 = load i8, ptr %35, align 1, !tbaa !11
  %37 = icmp eq ptr %9, null
  %38 = icmp eq i8 %36, 0
  %39 = select i1 %37, i1 true, i1 %38
  %40 = icmp eq i8 %36, 69
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %34
  %43 = tail call fastcc i32 @has_return_type(ptr noundef nonnull %9) #22, !range !19
  %44 = tail call fastcc ptr @d_bare_function_type(ptr noundef nonnull %0, i32 noundef %43) #22
  %45 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull %9, ptr noundef %44) #22
  br label %46

46:                                               ; preds = %18, %42, %33, %34, %6
  %47 = phi ptr [ %7, %6 ], [ %45, %42 ], [ %19, %33 ], [ %9, %34 ], [ %19, %18 ]
  ret ptr %47
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_special_name(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %3 = load i32, ptr %2, align 8, !tbaa !20
  %4 = add nsw i32 %3, 20
  store i32 %4, ptr %2, align 8, !tbaa !20
  %5 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  %7 = load i8, ptr %6, align 1, !tbaa !11
  switch i8 %7, label %88 [
    i8 84, label %8
    i8 71, label %70
  ]

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %9, ptr %5, align 8, !tbaa !12
  %10 = load i8, ptr %9, align 1, !tbaa !11
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %88, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %6, i64 2
  store ptr %13, ptr %5, align 8, !tbaa !12
  %14 = load i8, ptr %9, align 1, !tbaa !11
  switch i8 %14, label %88 [
    i8 86, label %15
    i8 84, label %19
    i8 73, label %23
    i8 83, label %26
    i8 104, label %29
    i8 118, label %35
    i8 99, label %41
    i8 67, label %50
    i8 70, label %64
    i8 74, label %67
  ]

15:                                               ; preds = %12
  %16 = add nsw i32 %3, 15
  store i32 %16, ptr %2, align 8, !tbaa !20
  %17 = tail call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  %18 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 9, ptr noundef %17, ptr noundef null) #22
  br label %88

19:                                               ; preds = %12
  %20 = add nsw i32 %3, 10
  store i32 %20, ptr %2, align 8, !tbaa !20
  %21 = tail call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  %22 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 10, ptr noundef %21, ptr noundef null) #22
  br label %88

23:                                               ; preds = %12
  %24 = tail call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  %25 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 12, ptr noundef %24, ptr noundef null) #22
  br label %88

26:                                               ; preds = %12
  %27 = tail call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  %28 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 13, ptr noundef %27, ptr noundef null) #22
  br label %88

29:                                               ; preds = %12
  %30 = tail call fastcc i32 @d_call_offset(ptr noundef nonnull %0, i32 noundef 104) #22, !range !19
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %88, label %32

32:                                               ; preds = %29
  %33 = tail call fastcc ptr @d_encoding(ptr noundef nonnull %0, i32 noundef 0) #22
  %34 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 15, ptr noundef %33, ptr noundef null) #22
  br label %88

35:                                               ; preds = %12
  %36 = tail call fastcc i32 @d_call_offset(ptr noundef nonnull %0, i32 noundef 118) #22, !range !19
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %88, label %38

38:                                               ; preds = %35
  %39 = tail call fastcc ptr @d_encoding(ptr noundef nonnull %0, i32 noundef 0) #22
  %40 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 16, ptr noundef %39, ptr noundef null) #22
  br label %88

41:                                               ; preds = %12
  %42 = tail call fastcc i32 @d_call_offset(ptr noundef nonnull %0, i32 noundef 0) #22, !range !19
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %88, label %44

44:                                               ; preds = %41
  %45 = tail call fastcc i32 @d_call_offset(ptr noundef nonnull %0, i32 noundef 0) #22, !range !19
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %88, label %47

47:                                               ; preds = %44
  %48 = tail call fastcc ptr @d_encoding(ptr noundef nonnull %0, i32 noundef 0) #22
  %49 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 17, ptr noundef %48, ptr noundef null) #22
  br label %88

50:                                               ; preds = %12
  %51 = tail call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  %52 = tail call fastcc i64 @d_number(ptr noundef nonnull %0) #22
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %88, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %5, align 8, !tbaa !12
  %56 = load i8, ptr %55, align 1, !tbaa !11
  %57 = icmp eq i8 %56, 95
  br i1 %57, label %58, label %88

58:                                               ; preds = %54
  %59 = getelementptr inbounds i8, ptr %55, i64 1
  store ptr %59, ptr %5, align 8, !tbaa !12
  %60 = tail call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  %61 = load i32, ptr %2, align 8, !tbaa !20
  %62 = add nsw i32 %61, 5
  store i32 %62, ptr %2, align 8, !tbaa !20
  %63 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 11, ptr noundef %60, ptr noundef %51) #22
  br label %88

64:                                               ; preds = %12
  %65 = tail call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  %66 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 14, ptr noundef %65, ptr noundef null) #22
  br label %88

67:                                               ; preds = %12
  %68 = tail call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  %69 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 18, ptr noundef %68, ptr noundef null) #22
  br label %88

70:                                               ; preds = %1
  %71 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %71, ptr %5, align 8, !tbaa !12
  %72 = load i8, ptr %71, align 1, !tbaa !11
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %88, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds i8, ptr %6, i64 2
  store ptr %75, ptr %5, align 8, !tbaa !12
  %76 = load i8, ptr %71, align 1, !tbaa !11
  switch i8 %76, label %88 [
    i8 86, label %77
    i8 82, label %80
    i8 65, label %83
    i8 114, label %86
  ]

77:                                               ; preds = %74
  %78 = tail call fastcc ptr @d_name(ptr noundef nonnull %0) #22
  %79 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 19, ptr noundef %78, ptr noundef null) #22
  br label %88

80:                                               ; preds = %74
  %81 = tail call fastcc ptr @d_name(ptr noundef nonnull %0) #22
  %82 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 20, ptr noundef %81, ptr noundef null) #22
  br label %88

83:                                               ; preds = %74
  %84 = tail call fastcc ptr @d_encoding(ptr noundef nonnull %0, i32 noundef 0) #22
  %85 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 21, ptr noundef %84, ptr noundef null) #22
  br label %88

86:                                               ; preds = %74
  %87 = tail call fastcc ptr @d_java_resource(ptr noundef nonnull %0) #22
  br label %88

88:                                               ; preds = %70, %8, %1, %74, %12, %58, %50, %54, %44, %41, %35, %29, %86, %83, %80, %77, %67, %64, %47, %38, %32, %26, %23, %19, %15
  %89 = phi ptr [ %69, %67 ], [ %66, %64 ], [ %49, %47 ], [ %40, %38 ], [ %34, %32 ], [ %28, %26 ], [ %25, %23 ], [ %22, %19 ], [ %18, %15 ], [ %87, %86 ], [ %85, %83 ], [ %82, %80 ], [ %79, %77 ], [ null, %29 ], [ null, %35 ], [ null, %41 ], [ null, %44 ], [ %63, %58 ], [ null, %50 ], [ null, %54 ], [ null, %12 ], [ null, %74 ], [ null, %1 ], [ null, %8 ], [ null, %70 ]
  ret ptr %89
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_name(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = load i8, ptr %3, align 1, !tbaa !11
  switch i8 %4, label %38 [
    i8 78, label %5
    i8 90, label %7
    i8 76, label %9
    i8 85, label %9
    i8 83, label %11
  ]

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @d_nested_name(ptr noundef nonnull %0) #22
  br label %49

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @d_local_name(ptr noundef nonnull %0) #22
  br label %49

9:                                                ; preds = %1, %1
  %10 = tail call fastcc ptr @d_unqualified_name(ptr noundef nonnull %0) #22
  br label %49

11:                                               ; preds = %1
  %12 = getelementptr inbounds i8, ptr %3, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !11
  %14 = icmp eq i8 %13, 116
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %16, ptr %2, align 8, !tbaa !12
  %17 = tail call fastcc ptr @d_make_name(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 3) #22
  %18 = tail call fastcc ptr @d_unqualified_name(ptr noundef nonnull %0) #22
  %19 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %17, ptr noundef %18) #22
  %20 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %21 = load i32, ptr %20, align 8, !tbaa !20
  %22 = add nsw i32 %21, 3
  store i32 %22, ptr %20, align 8, !tbaa !20
  %23 = load ptr, ptr %2, align 8, !tbaa !12
  %24 = load i8, ptr %23, align 1, !tbaa !11
  %25 = icmp eq i8 %24, 73
  br i1 %25, label %31, label %49

26:                                               ; preds = %11
  %27 = tail call fastcc ptr @d_substitution(ptr noundef nonnull %0, i32 noundef 0) #22
  %28 = load ptr, ptr %2, align 8, !tbaa !12
  %29 = load i8, ptr %28, align 1, !tbaa !11
  %30 = icmp eq i8 %29, 73
  br i1 %30, label %34, label %49

31:                                               ; preds = %15
  %32 = tail call fastcc i32 @d_add_substitution(ptr noundef nonnull %0, ptr noundef %19) #22, !range !19
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %26, %31
  %35 = phi ptr [ %19, %31 ], [ %27, %26 ]
  %36 = tail call fastcc ptr @d_template_args(ptr noundef nonnull %0) #22
  %37 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 4, ptr noundef %35, ptr noundef %36) #22
  br label %49

38:                                               ; preds = %1
  %39 = tail call fastcc ptr @d_unqualified_name(ptr noundef nonnull %0) #22
  %40 = load ptr, ptr %2, align 8, !tbaa !12
  %41 = load i8, ptr %40, align 1, !tbaa !11
  %42 = icmp eq i8 %41, 73
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = tail call fastcc i32 @d_add_substitution(ptr noundef nonnull %0, ptr noundef %39) #22, !range !19
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = tail call fastcc ptr @d_template_args(ptr noundef nonnull %0) #22
  %48 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 4, ptr noundef %39, ptr noundef %47) #22
  br label %49

49:                                               ; preds = %26, %38, %46, %43, %31, %15, %34, %9, %7, %5
  %50 = phi ptr [ %10, %9 ], [ %8, %7 ], [ %6, %5 ], [ null, %31 ], [ %19, %15 ], [ %37, %34 ], [ null, %43 ], [ %48, %46 ], [ %39, %38 ], [ %27, %26 ]
  ret ptr %50
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_make_comp(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 {
  switch i32 %1, label %19 [
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
  br i1 %8, label %19, label %13

9:                                                ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %10 = icmp eq ptr %2, null
  br i1 %10, label %19, label %13

11:                                               ; preds = %4
  %12 = icmp eq ptr %3, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %11, %9, %5
  %14 = tail call fastcc ptr @d_make_empty(ptr noundef %0) #22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  store i32 %1, ptr %14, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  store ptr %2, ptr %17, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  store ptr %3, ptr %18, align 8, !tbaa !11
  br label %19

19:                                               ; preds = %13, %16, %4, %11, %9, %5
  %20 = phi ptr [ null, %5 ], [ null, %9 ], [ null, %11 ], [ null, %4 ], [ %14, %16 ], [ null, %13 ]
  ret ptr %20
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_bare_function_type(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = load i8, ptr %4, align 1, !tbaa !11
  %6 = icmp eq i8 %5, 74
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %8, ptr %3, align 8, !tbaa !12
  br label %11

9:                                                ; preds = %2
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7, %9
  %12 = tail call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %9, %11
  %15 = phi ptr [ %12, %11 ], [ null, %9 ]
  %16 = tail call fastcc ptr @d_parmlist(ptr noundef nonnull %0) #22
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 37, ptr noundef %15, ptr noundef nonnull %16) #22
  br label %20

20:                                               ; preds = %14, %11, %18
  %21 = phi ptr [ %19, %18 ], [ null, %11 ], [ null, %14 ]
  ret ptr %21
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @has_return_type(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1, %11
  %4 = phi ptr [ %13, %11 ], [ %0, %1 ]
  %5 = load i32, ptr %4, align 8, !tbaa !6
  switch i32 %5, label %15 [
    i32 4, label %6
    i32 26, label %11
    i32 27, label %11
    i32 28, label %11
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.demangle_component, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = tail call fastcc i32 @is_ctor_dtor_or_conversion(ptr noundef %8) #22, !range !19
  %10 = xor i32 %9, 1
  br label %15

11:                                               ; preds = %3, %3, %3
  %12 = getelementptr inbounds %struct.demangle_component, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %3

15:                                               ; preds = %11, %3, %1, %6
  %16 = phi i32 [ %10, %6 ], [ 0, %1 ], [ 0, %3 ], [ 0, %11 ]
  ret i32 %16
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @cplus_demangle_type(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  %3 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = load i8, ptr %4, align 1, !tbaa !11
  switch i8 %5, label %215 [
    i8 114, label %6
    i8 86, label %6
    i8 75, label %6
    i8 97, label %18
    i8 98, label %18
    i8 99, label %18
    i8 100, label %18
    i8 101, label %18
    i8 102, label %18
    i8 103, label %18
    i8 104, label %18
    i8 105, label %18
    i8 106, label %18
    i8 108, label %18
    i8 109, label %18
    i8 110, label %18
    i8 111, label %18
    i8 115, label %18
    i8 116, label %18
    i8 118, label %18
    i8 119, label %18
    i8 120, label %18
    i8 121, label %18
    i8 122, label %18
    i8 117, label %32
    i8 70, label %36
    i8 48, label %38
    i8 49, label %38
    i8 50, label %38
    i8 51, label %38
    i8 52, label %38
    i8 53, label %38
    i8 54, label %38
    i8 55, label %38
    i8 56, label %38
    i8 57, label %38
    i8 78, label %38
    i8 90, label %38
    i8 65, label %40
    i8 77, label %42
    i8 84, label %44
    i8 83, label %55
    i8 79, label %79
    i8 80, label %83
    i8 82, label %87
    i8 67, label %91
    i8 71, label %95
    i8 85, label %99
    i8 68, label %104
  ]

6:                                                ; preds = %1, %1, %1
  %7 = call fastcc ptr @d_cv_qualifiers(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0) #22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %215, label %9

9:                                                ; preds = %6
  %10 = call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  store ptr %10, ptr %7, align 8, !tbaa !21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %215, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %2, align 8, !tbaa !21
  %14 = call fastcc i32 @d_add_substitution(ptr noundef nonnull %0, ptr noundef %13) #22, !range !19
  %15 = icmp eq i32 %14, 0
  %16 = load ptr, ptr %2, align 8
  %17 = select i1 %15, ptr null, ptr %16
  br label %215

18:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %19 = zext nneg i8 %5 to i64
  %20 = add nsw i64 %19, -97
  %21 = getelementptr inbounds [32 x %struct.demangle_builtin_type_info], ptr @cplus_demangle_builtin_types, i64 0, i64 %20
  %22 = tail call fastcc ptr @d_make_builtin_type(ptr noundef nonnull %0, ptr noundef nonnull %21) #22
  %23 = getelementptr inbounds %struct.demangle_component, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  %25 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !22
  %27 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %28 = load i32, ptr %27, align 8, !tbaa !20
  %29 = add nsw i32 %28, %26
  store i32 %29, ptr %27, align 8, !tbaa !20
  %30 = load ptr, ptr %3, align 8, !tbaa !12
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  store ptr %31, ptr %3, align 8, !tbaa !12
  br label %215

32:                                               ; preds = %1
  %33 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %33, ptr %3, align 8, !tbaa !12
  %34 = tail call fastcc ptr @d_source_name(ptr noundef nonnull %0) #22
  %35 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 36, ptr noundef %34, ptr noundef null) #22
  br label %210

36:                                               ; preds = %1
  %37 = tail call fastcc ptr @d_function_type(ptr noundef nonnull %0) #22
  br label %210

38:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %39 = tail call fastcc ptr @d_class_enum_type(ptr noundef nonnull %0) #22
  br label %210

40:                                               ; preds = %1
  %41 = tail call fastcc ptr @d_array_type(ptr noundef nonnull %0) #22
  br label %210

42:                                               ; preds = %1
  %43 = tail call fastcc ptr @d_pointer_to_member_type(ptr noundef nonnull %0) #22
  br label %210

44:                                               ; preds = %1
  %45 = tail call fastcc ptr @d_template_param(ptr noundef nonnull %0) #22
  %46 = load ptr, ptr %3, align 8, !tbaa !12
  %47 = load i8, ptr %46, align 1, !tbaa !11
  %48 = icmp eq i8 %47, 73
  br i1 %48, label %49, label %210

49:                                               ; preds = %44
  %50 = tail call fastcc i32 @d_add_substitution(ptr noundef nonnull %0, ptr noundef %45) #22, !range !19
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %215, label %52

52:                                               ; preds = %49
  %53 = tail call fastcc ptr @d_template_args(ptr noundef nonnull %0) #22
  %54 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 4, ptr noundef %45, ptr noundef %53) #22
  br label %210

55:                                               ; preds = %1
  %56 = getelementptr inbounds i8, ptr %4, i64 1
  %57 = load i8, ptr %56, align 1, !tbaa !11
  %58 = add i8 %57, -48
  %59 = icmp ult i8 %58, 10
  %60 = icmp eq i8 %57, 95
  %61 = or i1 %60, %59
  %62 = add i8 %57, -65
  %63 = icmp ult i8 %62, 26
  %64 = or i1 %63, %61
  br i1 %64, label %65, label %73

65:                                               ; preds = %55
  %66 = tail call fastcc ptr @d_substitution(ptr noundef nonnull %0, i32 noundef 0) #22
  %67 = load ptr, ptr %3, align 8, !tbaa !12
  %68 = load i8, ptr %67, align 1, !tbaa !11
  %69 = icmp eq i8 %68, 73
  br i1 %69, label %70, label %215

70:                                               ; preds = %65
  %71 = tail call fastcc ptr @d_template_args(ptr noundef nonnull %0) #22
  %72 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 4, ptr noundef %66, ptr noundef %71) #22
  br label %210

73:                                               ; preds = %55
  %74 = tail call fastcc ptr @d_class_enum_type(ptr noundef nonnull %0) #22
  %75 = icmp eq ptr %74, null
  br i1 %75, label %210, label %76

76:                                               ; preds = %73
  %77 = load i32, ptr %74, align 8, !tbaa !6
  %78 = icmp eq i32 %77, 22
  br i1 %78, label %215, label %210

79:                                               ; preds = %1
  %80 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %80, ptr %3, align 8, !tbaa !12
  %81 = tail call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  %82 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 32, ptr noundef %81, ptr noundef null) #22
  br label %210

83:                                               ; preds = %1
  %84 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %84, ptr %3, align 8, !tbaa !12
  %85 = tail call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  %86 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 30, ptr noundef %85, ptr noundef null) #22
  br label %210

87:                                               ; preds = %1
  %88 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %88, ptr %3, align 8, !tbaa !12
  %89 = tail call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  %90 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 31, ptr noundef %89, ptr noundef null) #22
  br label %210

91:                                               ; preds = %1
  %92 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %92, ptr %3, align 8, !tbaa !12
  %93 = tail call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  %94 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 33, ptr noundef %93, ptr noundef null) #22
  br label %210

95:                                               ; preds = %1
  %96 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %96, ptr %3, align 8, !tbaa !12
  %97 = tail call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  %98 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 34, ptr noundef %97, ptr noundef null) #22
  br label %210

99:                                               ; preds = %1
  %100 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %100, ptr %3, align 8, !tbaa !12
  %101 = tail call fastcc ptr @d_source_name(ptr noundef nonnull %0) #22
  %102 = tail call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  %103 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 29, ptr noundef %102, ptr noundef %101) #22
  br label %210

104:                                              ; preds = %1
  %105 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %105, ptr %3, align 8, !tbaa !12
  %106 = load i8, ptr %105, align 1, !tbaa !11
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %215, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds i8, ptr %4, i64 2
  store ptr %109, ptr %3, align 8, !tbaa !12
  %110 = load i8, ptr %105, align 1, !tbaa !11
  switch i8 %110, label %215 [
    i8 84, label %111
    i8 116, label %111
    i8 112, label %124
    i8 102, label %127
    i8 100, label %136
    i8 101, label %145
    i8 104, label %154
    i8 115, label %163
    i8 105, label %172
    i8 70, label %181
    i8 118, label %208
  ]

111:                                              ; preds = %108, %108
  %112 = tail call fastcc ptr @d_expression(ptr noundef nonnull %0) #22
  %113 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 59, ptr noundef %112, ptr noundef null) #22
  %114 = icmp eq ptr %113, null
  br i1 %114, label %215, label %115

115:                                              ; preds = %111
  %116 = load ptr, ptr %3, align 8, !tbaa !12
  %117 = load i8, ptr %116, align 1, !tbaa !11
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds i8, ptr %116, i64 1
  store ptr %120, ptr %3, align 8, !tbaa !12
  %121 = load i8, ptr %116, align 1, !tbaa !11
  %122 = icmp eq i8 %121, 69
  br i1 %122, label %215, label %123

123:                                              ; preds = %115, %119
  br label %215

124:                                              ; preds = %108
  %125 = tail call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  %126 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 65, ptr noundef %125, ptr noundef null) #22
  br label %215

127:                                              ; preds = %108
  %128 = tail call fastcc ptr @d_make_builtin_type(ptr noundef nonnull %0, ptr noundef nonnull getelementptr inbounds ([32 x %struct.demangle_builtin_type_info], ptr @cplus_demangle_builtin_types, i64 0, i64 26)) #22
  %129 = getelementptr inbounds %struct.demangle_component, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !11
  %131 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %130, i64 0, i32 1
  %132 = load i32, ptr %131, align 8, !tbaa !22
  %133 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %134 = load i32, ptr %133, align 8, !tbaa !20
  %135 = add nsw i32 %134, %132
  store i32 %135, ptr %133, align 8, !tbaa !20
  br label %215

136:                                              ; preds = %108
  %137 = tail call fastcc ptr @d_make_builtin_type(ptr noundef nonnull %0, ptr noundef nonnull getelementptr inbounds ([32 x %struct.demangle_builtin_type_info], ptr @cplus_demangle_builtin_types, i64 0, i64 27)) #22
  %138 = getelementptr inbounds %struct.demangle_component, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !11
  %140 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %139, i64 0, i32 1
  %141 = load i32, ptr %140, align 8, !tbaa !22
  %142 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %143 = load i32, ptr %142, align 8, !tbaa !20
  %144 = add nsw i32 %143, %141
  store i32 %144, ptr %142, align 8, !tbaa !20
  br label %215

145:                                              ; preds = %108
  %146 = tail call fastcc ptr @d_make_builtin_type(ptr noundef nonnull %0, ptr noundef nonnull getelementptr inbounds ([32 x %struct.demangle_builtin_type_info], ptr @cplus_demangle_builtin_types, i64 0, i64 28)) #22
  %147 = getelementptr inbounds %struct.demangle_component, ptr %146, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !11
  %149 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %148, i64 0, i32 1
  %150 = load i32, ptr %149, align 8, !tbaa !22
  %151 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %152 = load i32, ptr %151, align 8, !tbaa !20
  %153 = add nsw i32 %152, %150
  store i32 %153, ptr %151, align 8, !tbaa !20
  br label %215

154:                                              ; preds = %108
  %155 = tail call fastcc ptr @d_make_builtin_type(ptr noundef nonnull %0, ptr noundef nonnull getelementptr inbounds ([32 x %struct.demangle_builtin_type_info], ptr @cplus_demangle_builtin_types, i64 0, i64 29)) #22
  %156 = getelementptr inbounds %struct.demangle_component, ptr %155, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !11
  %158 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %157, i64 0, i32 1
  %159 = load i32, ptr %158, align 8, !tbaa !22
  %160 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %161 = load i32, ptr %160, align 8, !tbaa !20
  %162 = add nsw i32 %161, %159
  store i32 %162, ptr %160, align 8, !tbaa !20
  br label %215

163:                                              ; preds = %108
  %164 = tail call fastcc ptr @d_make_builtin_type(ptr noundef nonnull %0, ptr noundef nonnull getelementptr inbounds ([32 x %struct.demangle_builtin_type_info], ptr @cplus_demangle_builtin_types, i64 0, i64 30)) #22
  %165 = getelementptr inbounds %struct.demangle_component, ptr %164, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !11
  %167 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %166, i64 0, i32 1
  %168 = load i32, ptr %167, align 8, !tbaa !22
  %169 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %170 = load i32, ptr %169, align 8, !tbaa !20
  %171 = add nsw i32 %170, %168
  store i32 %171, ptr %169, align 8, !tbaa !20
  br label %215

172:                                              ; preds = %108
  %173 = tail call fastcc ptr @d_make_builtin_type(ptr noundef nonnull %0, ptr noundef nonnull getelementptr inbounds ([32 x %struct.demangle_builtin_type_info], ptr @cplus_demangle_builtin_types, i64 0, i64 31)) #22
  %174 = getelementptr inbounds %struct.demangle_component, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !11
  %176 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %175, i64 0, i32 1
  %177 = load i32, ptr %176, align 8, !tbaa !22
  %178 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %179 = load i32, ptr %178, align 8, !tbaa !20
  %180 = add nsw i32 %179, %177
  store i32 %180, ptr %178, align 8, !tbaa !20
  br label %215

181:                                              ; preds = %108
  %182 = tail call fastcc ptr @d_make_empty(ptr noundef nonnull %0) #22
  store i32 40, ptr %182, align 8, !tbaa !6
  %183 = load ptr, ptr %3, align 8, !tbaa !12
  %184 = load i8, ptr %183, align 1, !tbaa !11
  %185 = add i8 %184, -48
  %186 = icmp ult i8 %185, 10
  %187 = zext i1 %186 to i16
  %188 = getelementptr inbounds %struct.demangle_component, ptr %182, i64 0, i32 1, i32 0, i32 1
  store i16 %187, ptr %188, align 8, !tbaa !11
  br i1 %186, label %189, label %191

189:                                              ; preds = %181
  %190 = tail call fastcc i64 @d_number(ptr noundef nonnull %0) #22
  br label %191

191:                                              ; preds = %189, %181
  %192 = tail call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  %193 = getelementptr inbounds %struct.demangle_component, ptr %182, i64 0, i32 1
  store ptr %192, ptr %193, align 8, !tbaa !11
  %194 = icmp eq ptr %192, null
  br i1 %194, label %215, label %195

195:                                              ; preds = %191
  %196 = tail call fastcc i64 @d_number(ptr noundef nonnull %0) #22
  %197 = load ptr, ptr %3, align 8, !tbaa !12
  %198 = load i8, ptr %197, align 1, !tbaa !11
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %195
  %201 = getelementptr inbounds i8, ptr %197, i64 1
  store ptr %201, ptr %3, align 8, !tbaa !12
  %202 = load i8, ptr %197, align 1, !tbaa !11
  %203 = icmp eq i8 %202, 115
  %204 = zext i1 %203 to i16
  br label %205

205:                                              ; preds = %195, %200
  %206 = phi i16 [ %204, %200 ], [ 0, %195 ]
  %207 = getelementptr inbounds i8, ptr %182, i64 18
  store i16 %206, ptr %207, align 2, !tbaa !11
  br label %215

208:                                              ; preds = %108
  %209 = tail call fastcc ptr @d_vector_type(ptr noundef nonnull %0) #22
  br label %215

210:                                              ; preds = %99, %95, %91, %87, %83, %79, %52, %44, %42, %40, %38, %36, %32, %70, %73, %76
  %211 = phi ptr [ %103, %99 ], [ %98, %95 ], [ %94, %91 ], [ %90, %87 ], [ %86, %83 ], [ %82, %79 ], [ %54, %52 ], [ %45, %44 ], [ %43, %42 ], [ %41, %40 ], [ %39, %38 ], [ %37, %36 ], [ %35, %32 ], [ %72, %70 ], [ null, %73 ], [ %74, %76 ]
  %212 = tail call fastcc i32 @d_add_substitution(ptr noundef nonnull %0, ptr noundef %211) #22, !range !19
  %213 = icmp eq i32 %212, 0
  %214 = select i1 %213, ptr null, ptr %211
  br label %215

215:                                              ; preds = %210, %76, %65, %18, %111, %119, %123, %124, %127, %136, %145, %154, %163, %172, %205, %208, %104, %12, %1, %108, %191, %49, %6, %9
  %216 = phi ptr [ null, %6 ], [ null, %9 ], [ null, %49 ], [ null, %191 ], [ null, %108 ], [ null, %1 ], [ %17, %12 ], [ null, %104 ], [ %209, %208 ], [ %182, %205 ], [ %173, %172 ], [ %164, %163 ], [ %155, %154 ], [ %146, %145 ], [ %137, %136 ], [ %128, %127 ], [ %126, %124 ], [ null, %123 ], [ %113, %119 ], [ null, %111 ], [ %22, %18 ], [ %66, %65 ], [ %74, %76 ], [ %214, %210 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret ptr %216
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @d_call_offset(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  %7 = load i8, ptr %6, align 1, !tbaa !11
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %10, ptr %5, align 8, !tbaa !12
  %11 = load i8, ptr %6, align 1, !tbaa !11
  %12 = sext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i32 [ %1, %2 ], [ %12, %9 ]
  switch i32 %14, label %33 [
    i32 104, label %15
    i32 118, label %17
  ]

15:                                               ; preds = %13
  %16 = tail call fastcc i64 @d_number(ptr noundef %0) #22
  br label %26

17:                                               ; preds = %13
  %18 = tail call fastcc i64 @d_number(ptr noundef %0) #22
  %19 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !12
  %21 = load i8, ptr %20, align 1, !tbaa !11
  %22 = icmp eq i8 %21, 95
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %24, ptr %19, align 8, !tbaa !12
  %25 = tail call fastcc i64 @d_number(ptr noundef nonnull %0) #22
  br label %26

26:                                               ; preds = %23, %15
  %27 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !12
  %29 = load i8, ptr %28, align 1, !tbaa !11
  %30 = icmp eq i8 %29, 95
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %32, ptr %27, align 8, !tbaa !12
  br label %33

33:                                               ; preds = %4, %26, %13, %17, %31
  %34 = phi i32 [ 1, %31 ], [ 0, %17 ], [ 0, %13 ], [ 0, %26 ], [ 0, %4 ]
  ret i32 %34
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @d_number(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = load i8, ptr %3, align 1, !tbaa !11
  %5 = icmp eq i8 %4, 110
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %7, ptr %2, align 8, !tbaa !12
  %8 = load i8, ptr %7, align 1, !tbaa !11
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %7, %6 ], [ %3, %1 ]
  %11 = phi i8 [ %8, %6 ], [ %4, %1 ]
  %12 = add i8 %11, -48
  %13 = icmp ult i8 %12, 10
  br i1 %13, label %18, label %14

14:                                               ; preds = %18, %9
  %15 = phi i64 [ 0, %9 ], [ %25, %18 ]
  %16 = sub nsw i64 0, %15
  %17 = select i1 %5, i64 %16, i64 %15
  ret i64 %17

18:                                               ; preds = %9, %18
  %19 = phi ptr [ %26, %18 ], [ %10, %9 ]
  %20 = phi i64 [ %25, %18 ], [ 0, %9 ]
  %21 = phi i8 [ %27, %18 ], [ %11, %9 ]
  %22 = mul nsw i64 %20, 10
  %23 = zext nneg i8 %21 to i64
  %24 = add nsw i64 %23, -48
  %25 = add i64 %24, %22
  %26 = getelementptr inbounds i8, ptr %19, i64 1
  store ptr %26, ptr %2, align 8, !tbaa !12
  %27 = load i8, ptr %26, align 1, !tbaa !11
  %28 = add i8 %27, -48
  %29 = icmp ult i8 %28, 10
  br i1 %29, label %18, label %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_java_resource(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = tail call fastcc i64 @d_number(ptr noundef %0) #22
  %3 = icmp slt i64 %2, 2
  br i1 %3, label %60, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  %7 = load i8, ptr %6, align 1, !tbaa !11
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %60, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %10, ptr %5, align 8, !tbaa !12
  %11 = load i8, ptr %6, align 1, !tbaa !11
  %12 = icmp eq i8 %11, 95
  br i1 %12, label %13, label %60

13:                                               ; preds = %9
  %14 = add nsw i64 %2, -1
  br label %15

15:                                               ; preds = %13, %55
  %16 = phi ptr [ %50, %55 ], [ %10, %13 ]
  %17 = phi i64 [ %49, %55 ], [ %14, %13 ]
  %18 = phi ptr [ %56, %55 ], [ null, %13 ]
  %19 = load i8, ptr %16, align 1, !tbaa !11
  switch i8 %19, label %32 [
    i8 0, label %60
    i8 36, label %20
  ]

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, ptr %16, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !11
  switch i8 %22, label %60 [
    i8 83, label %25
    i8 95, label %23
    i8 36, label %24
  ]

23:                                               ; preds = %20
  br label %25

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %20, %24, %23
  %26 = phi i32 [ 36, %24 ], [ 46, %23 ], [ 47, %20 ]
  %27 = tail call fastcc ptr @d_make_character(ptr noundef %0, i32 noundef %26) #22
  %28 = load ptr, ptr %5, align 8, !tbaa !12
  %29 = getelementptr inbounds i8, ptr %28, i64 2
  store ptr %29, ptr %5, align 8, !tbaa !12
  %30 = add nsw i64 %17, -2
  %31 = icmp eq ptr %27, null
  br i1 %31, label %60, label %47

32:                                               ; preds = %15, %36
  %33 = phi i64 [ %37, %36 ], [ 0, %15 ]
  %34 = getelementptr inbounds i8, ptr %16, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !11
  switch i8 %35, label %36 [
    i8 0, label %39
    i8 36, label %39
  ]

36:                                               ; preds = %32
  %37 = add nuw nsw i64 %33, 1
  %38 = icmp eq i64 %37, %17
  br i1 %38, label %39, label %32, !llvm.loop !24

39:                                               ; preds = %36, %32, %32
  %40 = phi i64 [ %17, %36 ], [ %33, %32 ], [ %33, %32 ]
  %41 = trunc i64 %40 to i32
  %42 = tail call fastcc ptr @d_make_name(ptr noundef %0, ptr noundef nonnull %16, i32 noundef %41) #22
  %43 = load ptr, ptr %5, align 8, !tbaa !12
  %44 = getelementptr inbounds i8, ptr %43, i64 %40
  store ptr %44, ptr %5, align 8, !tbaa !12
  %45 = sub nsw i64 %17, %40
  %46 = icmp eq ptr %42, null
  br i1 %46, label %60, label %47

47:                                               ; preds = %39, %25
  %48 = phi ptr [ %27, %25 ], [ %42, %39 ]
  %49 = phi i64 [ %30, %25 ], [ %45, %39 ]
  %50 = phi ptr [ %29, %25 ], [ %44, %39 ]
  %51 = icmp eq ptr %18, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 56, ptr noundef nonnull %18, ptr noundef nonnull %48) #22
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %47, %52
  %56 = phi ptr [ %53, %52 ], [ %48, %47 ]
  %57 = icmp sgt i64 %49, 0
  br i1 %57, label %15, label %58, !llvm.loop !25

58:                                               ; preds = %55
  %59 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 55, ptr noundef nonnull %56, ptr noundef null) #22
  br label %60

60:                                               ; preds = %52, %39, %25, %20, %15, %4, %9, %1, %58
  %61 = phi ptr [ %59, %58 ], [ null, %1 ], [ null, %9 ], [ null, %4 ], [ null, %15 ], [ null, %20 ], [ null, %25 ], [ null, %39 ], [ null, %52 ]
  ret ptr %61
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_make_character(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = tail call fastcc ptr @d_make_empty(ptr noundef %0) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  store i32 57, ptr %3, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.demangle_component, ptr %3, i64 0, i32 1
  store i32 %1, ptr %6, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %5, %2
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @d_make_name(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = tail call fastcc ptr @d_make_empty(ptr noundef %0) #22
  %5 = tail call i32 @cplus_demangle_fill_name(ptr noundef %4, ptr noundef %1, i32 noundef %2) #22, !range !19
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, ptr null, ptr %4
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @d_make_empty(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !26
  %4 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !27
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !28
  %10 = sext i32 %3 to i64
  %11 = getelementptr inbounds %struct.demangle_component, ptr %9, i64 %10
  %12 = add nsw i32 %3, 1
  store i32 %12, ptr %2, align 8, !tbaa !26
  br label %13

13:                                               ; preds = %1, %7
  %14 = phi ptr [ %11, %7 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_nested_name(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  %3 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = load i8, ptr %4, align 1, !tbaa !11
  %6 = icmp eq i8 %5, 78
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %8, ptr %3, align 8, !tbaa !12
  %9 = call fastcc ptr @d_cv_qualifiers(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1) #22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = call fastcc ptr @d_prefix(ptr noundef nonnull %0) #22
  store ptr %12, ptr %9, align 8, !tbaa !21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %3, align 8, !tbaa !12
  %16 = load i8, ptr %15, align 1, !tbaa !11
  %17 = icmp eq i8 %16, 69
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %19, ptr %3, align 8, !tbaa !12
  %20 = load ptr, ptr %2, align 8, !tbaa !21
  br label %21

21:                                               ; preds = %14, %11, %7, %1, %18
  %22 = phi ptr [ %20, %18 ], [ null, %1 ], [ null, %7 ], [ null, %11 ], [ null, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret ptr %22
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_local_name(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = load i8, ptr %3, align 1, !tbaa !11
  %5 = icmp eq i8 %4, 90
  br i1 %5, label %6, label %42

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %7, ptr %2, align 8, !tbaa !12
  %8 = tail call fastcc ptr @d_encoding(ptr noundef nonnull %0, i32 noundef 0) #22
  %9 = load ptr, ptr %2, align 8, !tbaa !12
  %10 = load i8, ptr %9, align 1, !tbaa !11
  %11 = icmp eq i8 %10, 69
  br i1 %11, label %12, label %42

12:                                               ; preds = %6
  %13 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %13, ptr %2, align 8, !tbaa !12
  %14 = load i8, ptr %13, align 1, !tbaa !11
  switch i8 %14, label %26 [
    i8 115, label %15
    i8 100, label %21
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, ptr %9, i64 2
  store ptr %16, ptr %2, align 8, !tbaa !12
  %17 = tail call fastcc i32 @d_discriminator(ptr noundef nonnull %0) #22, !range !19
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %42, label %19

19:                                               ; preds = %15
  %20 = tail call fastcc ptr @d_make_name(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef 14) #22
  br label %39

21:                                               ; preds = %12
  %22 = getelementptr inbounds i8, ptr %9, i64 2
  store ptr %22, ptr %2, align 8, !tbaa !12
  %23 = tail call fastcc i64 @d_compact_number(ptr noundef nonnull %0) #22
  %24 = trunc i64 %23 to i32
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %12, %21
  %27 = phi i32 [ %24, %21 ], [ -1, %12 ]
  %28 = tail call fastcc ptr @d_name(ptr noundef nonnull %0) #22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load i32, ptr %28, align 8, !tbaa !6
  switch i32 %31, label %32 [
    i32 62, label %35
    i32 64, label %35
  ]

32:                                               ; preds = %30
  %33 = tail call fastcc i32 @d_discriminator(ptr noundef nonnull %0) #22, !range !19
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30, %30, %32, %26
  %36 = icmp sgt i32 %27, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = tail call fastcc ptr @d_make_default_arg(ptr noundef nonnull %0, i32 noundef %27, ptr noundef %28) #22
  br label %39

39:                                               ; preds = %35, %37, %19
  %40 = phi ptr [ %20, %19 ], [ %38, %37 ], [ %28, %35 ]
  %41 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %8, ptr noundef %40) #22
  br label %42

42:                                               ; preds = %39, %21, %32, %15, %6, %1
  %43 = phi ptr [ null, %1 ], [ null, %6 ], [ null, %15 ], [ null, %21 ], [ null, %32 ], [ %41, %39 ]
  ret ptr %43
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_unqualified_name(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = load i8, ptr %3, align 1, !tbaa !11
  %5 = add i8 %4, -48
  %6 = icmp ult i8 %5, 10
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @d_source_name(ptr noundef nonnull %0) #22
  br label %48

9:                                                ; preds = %1
  %10 = add i8 %4, -97
  %11 = icmp ult i8 %10, 26
  br i1 %11, label %12, label %27

12:                                               ; preds = %9
  %13 = tail call fastcc ptr @d_operator_name(ptr noundef nonnull %0) #22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %48, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr %13, align 8, !tbaa !6
  %17 = icmp eq i32 %16, 44
  br i1 %17, label %18, label %48

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.demangle_component, ptr %13, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.demangle_operator_info, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !29
  %23 = add i32 %22, 7
  %24 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %25 = load i32, ptr %24, align 8, !tbaa !20
  %26 = add i32 %23, %25
  store i32 %26, ptr %24, align 8, !tbaa !20
  br label %48

27:                                               ; preds = %9
  %28 = add i8 %4, -67
  %29 = icmp ult i8 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = tail call fastcc ptr @d_ctor_dtor_name(ptr noundef nonnull %0) #22
  br label %48

32:                                               ; preds = %27
  switch i8 %4, label %48 [
    i8 76, label %33
    i8 85, label %41
  ]

33:                                               ; preds = %32
  %34 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %34, ptr %2, align 8, !tbaa !12
  %35 = tail call fastcc ptr @d_source_name(ptr noundef nonnull %0) #22
  %36 = icmp eq ptr %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %33
  %38 = tail call fastcc i32 @d_discriminator(ptr noundef nonnull %0) #22, !range !19
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, ptr null, ptr %35
  br label %48

41:                                               ; preds = %32
  %42 = getelementptr inbounds i8, ptr %3, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !11
  switch i8 %43, label %48 [
    i8 108, label %44
    i8 116, label %46
  ]

44:                                               ; preds = %41
  %45 = tail call fastcc ptr @d_lambda(ptr noundef nonnull %0) #22
  br label %48

46:                                               ; preds = %41
  %47 = tail call fastcc ptr @d_unnamed_type(ptr noundef nonnull %0) #22
  br label %48

48:                                               ; preds = %32, %41, %33, %37, %12, %15, %18, %46, %44, %30, %7
  %49 = phi ptr [ %8, %7 ], [ %31, %30 ], [ %47, %46 ], [ %45, %44 ], [ %13, %18 ], [ %13, %15 ], [ null, %12 ], [ null, %33 ], [ %40, %37 ], [ null, %41 ], [ null, %32 ]
  ret ptr %49
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_substitution(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = load i8, ptr %4, align 1, !tbaa !11
  %6 = icmp eq i8 %5, 83
  br i1 %6, label %7, label %114

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %8, ptr %3, align 8, !tbaa !12
  %9 = load i8, ptr %8, align 1, !tbaa !11
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds i8, ptr %4, i64 2
  store ptr %12, ptr %3, align 8, !tbaa !12
  %13 = load i8, ptr %8, align 1, !tbaa !11
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %12, %11 ], [ %8, %7 ]
  %16 = phi i8 [ %13, %11 ], [ 0, %7 ]
  %17 = icmp eq i8 %16, 95
  %18 = add i8 %16, -48
  %19 = icmp ult i8 %18, 10
  %20 = add i8 %16, -65
  %21 = icmp ult i8 %20, 26
  %22 = or i1 %19, %21
  %23 = or i1 %17, %22
  br i1 %23, label %24, label %67

24:                                               ; preds = %14
  br i1 %17, label %53, label %25

25:                                               ; preds = %24, %47
  %26 = phi ptr [ %48, %47 ], [ %15, %24 ]
  %27 = phi i32 [ %39, %47 ], [ 0, %24 ]
  %28 = phi i8 [ %49, %47 ], [ %16, %24 ]
  %29 = sext i8 %28 to i32
  %30 = add i8 %28, -48
  %31 = icmp ult i8 %30, 10
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = add i8 %28, -65
  %34 = icmp ult i8 %33, 26
  br i1 %34, label %35, label %114

35:                                               ; preds = %32, %25
  %36 = phi i32 [ -48, %25 ], [ -55, %32 ]
  %37 = mul i32 %27, 36
  %38 = add i32 %37, %36
  %39 = add i32 %38, %29
  %40 = icmp ult i32 %39, %27
  br i1 %40, label %114, label %41

41:                                               ; preds = %35
  %42 = load i8, ptr %26, align 1, !tbaa !11
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %26, i64 1
  store ptr %45, ptr %3, align 8, !tbaa !12
  %46 = load i8, ptr %26, align 1, !tbaa !11
  br label %47

47:                                               ; preds = %41, %44
  %48 = phi ptr [ %26, %41 ], [ %45, %44 ]
  %49 = phi i8 [ 0, %41 ], [ %46, %44 ]
  %50 = icmp eq i8 %49, 95
  br i1 %50, label %51, label %25, !llvm.loop !31

51:                                               ; preds = %47
  %52 = add i32 %39, 1
  br label %53

53:                                               ; preds = %51, %24
  %54 = phi i32 [ %52, %51 ], [ 0, %24 ]
  %55 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 8
  %56 = load i32, ptr %55, align 8, !tbaa !32
  %57 = icmp ult i32 %54, %56
  br i1 %57, label %58, label %114

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 10
  %60 = load i32, ptr %59, align 8, !tbaa !33
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %59, align 8, !tbaa !33
  %62 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !34
  %64 = zext i32 %54 to i64
  %65 = getelementptr inbounds ptr, ptr %63, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !21
  br label %114

67:                                               ; preds = %14
  %68 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !15
  %70 = lshr i32 %69, 3
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  %73 = icmp ne i32 %1, 0
  %74 = and i1 %73, %72
  br i1 %74, label %75, label %80

75:                                               ; preds = %67
  %76 = load i8, ptr %15, align 1, !tbaa !11
  %77 = add i8 %76, -67
  %78 = icmp ult i8 %77, 2
  %79 = zext i1 %78 to i32
  br label %80

80:                                               ; preds = %75, %67
  %81 = phi i32 [ %79, %75 ], [ %71, %67 ]
  br label %86

82:                                               ; preds = %86
  %83 = add nuw nsw i64 %88, 56
  %84 = getelementptr inbounds i8, ptr @standard_subs, i64 %83
  %85 = icmp ult i64 %88, 336
  br i1 %85, label %86, label %114, !llvm.loop !35

86:                                               ; preds = %80, %82
  %87 = phi ptr [ @standard_subs, %80 ], [ %84, %82 ]
  %88 = phi i64 [ 0, %80 ], [ %83, %82 ]
  %89 = load i8, ptr %87, align 8, !tbaa !36
  %90 = icmp eq i8 %16, %89
  br i1 %90, label %91, label %82

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.d_standard_sub_info, ptr %87, i64 0, i32 5
  %93 = load ptr, ptr %92, align 8, !tbaa !38
  %94 = icmp eq ptr %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.d_standard_sub_info, ptr %87, i64 0, i32 6
  %97 = load i32, ptr %96, align 8, !tbaa !39
  %98 = tail call fastcc ptr @d_make_sub(ptr noundef %0, ptr noundef nonnull %93, i32 noundef %97) #22
  %99 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 11
  store ptr %98, ptr %99, align 8, !tbaa !40
  br label %100

100:                                              ; preds = %95, %91
  %101 = icmp eq i32 %81, 0
  %102 = getelementptr inbounds %struct.d_standard_sub_info, ptr %87, i64 0, i32 3
  %103 = getelementptr inbounds %struct.d_standard_sub_info, ptr %87, i64 0, i32 4
  %104 = getelementptr inbounds %struct.d_standard_sub_info, ptr %87, i64 0, i32 1
  %105 = getelementptr inbounds %struct.d_standard_sub_info, ptr %87, i64 0, i32 2
  %106 = select i1 %101, ptr %104, ptr %102
  %107 = select i1 %101, ptr %105, ptr %103
  %108 = load i32, ptr %107, align 8, !tbaa !41
  %109 = load ptr, ptr %106, align 8, !tbaa !21
  %110 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %111 = load i32, ptr %110, align 8, !tbaa !20
  %112 = add nsw i32 %111, %108
  store i32 %112, ptr %110, align 8, !tbaa !20
  %113 = tail call fastcc ptr @d_make_sub(ptr noundef %0, ptr noundef %109, i32 noundef %108) #22
  br label %114

114:                                              ; preds = %82, %32, %35, %100, %58, %53, %2
  %115 = phi ptr [ null, %2 ], [ %66, %58 ], [ null, %53 ], [ %113, %100 ], [ null, %35 ], [ null, %32 ], [ null, %82 ]
  ret ptr %115
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @d_add_substitution(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !32
  %7 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 4, !tbaa !42
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = sext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  store ptr %1, ptr %14, align 8, !tbaa !21
  %15 = add nsw i32 %6, 1
  store i32 %15, ptr %5, align 8, !tbaa !32
  br label %16

16:                                               ; preds = %4, %2, %10
  %17 = phi i32 [ 1, %10 ], [ 0, %2 ], [ 0, %4 ]
  ret i32 %17
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_template_args(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  %3 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  %7 = load i8, ptr %6, align 1, !tbaa !11
  %8 = icmp eq i8 %7, 73
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %10, ptr %5, align 8, !tbaa !12
  %11 = load i8, ptr %10, align 1, !tbaa !11
  %12 = icmp eq i8 %11, 69
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds i8, ptr %6, i64 2
  store ptr %14, ptr %5, align 8, !tbaa !12
  %15 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 43, ptr noundef null, ptr noundef null) #22
  br label %32

16:                                               ; preds = %9
  store ptr null, ptr %2, align 8, !tbaa !21
  br label %17

17:                                               ; preds = %24, %16
  %18 = phi ptr [ %2, %16 ], [ %25, %24 ]
  %19 = tail call fastcc ptr @d_template_arg(ptr noundef nonnull %0) #22
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 43, ptr noundef nonnull %19, ptr noundef null) #22
  store ptr %22, ptr %18, align 8, !tbaa !21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.demangle_component, ptr %22, i64 0, i32 1, i32 0, i32 1
  %26 = load ptr, ptr %5, align 8, !tbaa !12
  %27 = load i8, ptr %26, align 1, !tbaa !11
  %28 = icmp eq i8 %27, 69
  br i1 %28, label %29, label %17

29:                                               ; preds = %24
  %30 = getelementptr inbounds i8, ptr %26, i64 1
  store ptr %30, ptr %5, align 8, !tbaa !12
  store ptr %4, ptr %3, align 8, !tbaa !40
  %31 = load ptr, ptr %2, align 8, !tbaa !21
  br label %32

32:                                               ; preds = %21, %17, %1, %29, %13
  %33 = phi ptr [ %15, %13 ], [ %31, %29 ], [ null, %1 ], [ null, %17 ], [ null, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  ret ptr %33
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_cv_qualifiers(ptr nocapture noundef %0, ptr noundef writeonly %1, i32 noundef %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %5 = icmp eq i32 %2, 0
  %6 = select i1 %5, i32 24, i32 27
  %7 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %8 = select i1 %5, i32 23, i32 26
  %9 = select i1 %5, i32 25, i32 28
  br label %10

10:                                               ; preds = %19, %3
  %11 = phi ptr [ %1, %3 ], [ %25, %19 ]
  %12 = load ptr, ptr %4, align 8, !tbaa !12
  %13 = load i8, ptr %12, align 1, !tbaa !11
  switch i8 %13, label %26 [
    i8 114, label %14
    i8 86, label %14
    i8 75, label %14
  ]

14:                                               ; preds = %10, %10, %10
  %15 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %15, ptr %4, align 8, !tbaa !12
  %16 = load i32, ptr %7, align 8, !tbaa !20
  switch i8 %13, label %18 [
    i8 114, label %19
    i8 86, label %17
  ]

17:                                               ; preds = %14
  br label %19

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %14, %17, %18
  %20 = phi i32 [ 9, %17 ], [ 6, %18 ], [ 9, %14 ]
  %21 = phi i32 [ %6, %17 ], [ %9, %18 ], [ %8, %14 ]
  %22 = add i32 %16, %20
  store i32 %22, ptr %7, align 8, !tbaa !20
  %23 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef %21, ptr noundef null, ptr noundef null) #22
  store ptr %23, ptr %11, align 8, !tbaa !21
  %24 = icmp eq ptr %23, null
  %25 = getelementptr inbounds %struct.demangle_component, ptr %23, i64 0, i32 1
  br i1 %24, label %26, label %10, !llvm.loop !43

26:                                               ; preds = %19, %10
  %27 = phi ptr [ %11, %10 ], [ null, %19 ]
  ret ptr %27
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_prefix(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = load i8, ptr %3, align 1, !tbaa !11
  %5 = freeze i8 %4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %57, label %7

7:                                                ; preds = %1, %50
  %8 = phi i8 [ %54, %50 ], [ %5, %1 ]
  %9 = phi ptr [ %51, %50 ], [ %3, %1 ]
  %10 = phi ptr [ %52, %50 ], [ null, %1 ]
  %11 = add i8 %8, -48
  %12 = icmp ult i8 %11, 10
  %13 = add i8 %8, -97
  %14 = icmp ult i8 %13, 26
  %15 = or i1 %12, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %7
  switch i8 %8, label %57 [
    i8 85, label %17
    i8 76, label %17
    i8 68, label %17
    i8 67, label %17
    i8 83, label %19
    i8 73, label %21
    i8 84, label %25
    i8 69, label %56
    i8 77, label %27
  ]

17:                                               ; preds = %16, %16, %16, %16, %7
  %18 = tail call fastcc ptr @d_unqualified_name(ptr noundef nonnull %0) #22
  br label %31

19:                                               ; preds = %16
  %20 = tail call fastcc ptr @d_substitution(ptr noundef nonnull %0, i32 noundef 1) #22
  br label %31

21:                                               ; preds = %16
  %22 = icmp eq ptr %10, null
  br i1 %22, label %57, label %23

23:                                               ; preds = %21
  %24 = tail call fastcc ptr @d_template_args(ptr noundef nonnull %0) #22
  br label %34

25:                                               ; preds = %16
  %26 = tail call fastcc ptr @d_template_param(ptr noundef nonnull %0) #22
  br label %31

27:                                               ; preds = %16
  %28 = icmp eq ptr %10, null
  br i1 %28, label %57, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %30, ptr %2, align 8, !tbaa !12
  br label %50

31:                                               ; preds = %19, %25, %17
  %32 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %26, %25 ]
  %33 = icmp eq ptr %10, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %23, %31
  %35 = phi ptr [ %24, %23 ], [ %32, %31 ]
  %36 = phi i32 [ 4, %23 ], [ 1, %31 ]
  %37 = tail call fastcc ptr @d_make_comp(ptr noundef %0, i32 noundef %36, ptr noundef nonnull %10, ptr noundef %35) #22
  br label %38

38:                                               ; preds = %31, %34
  %39 = phi ptr [ %37, %34 ], [ %32, %31 ]
  %40 = icmp eq i8 %8, 83
  %41 = load ptr, ptr %2, align 8, !tbaa !12
  br i1 %40, label %50, label %42

42:                                               ; preds = %38
  %43 = load i8, ptr %41, align 1, !tbaa !11
  %44 = icmp eq i8 %43, 69
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = tail call fastcc i32 @d_add_substitution(ptr noundef nonnull %0, ptr noundef %39) #22, !range !19
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %2, align 8, !tbaa !12
  br label %50

50:                                               ; preds = %48, %38, %42, %29
  %51 = phi ptr [ %30, %29 ], [ %49, %48 ], [ %41, %42 ], [ %41, %38 ]
  %52 = phi ptr [ %10, %29 ], [ %39, %48 ], [ %39, %42 ], [ %39, %38 ]
  %53 = load i8, ptr %51, align 1, !tbaa !11
  %54 = freeze i8 %53
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %57, label %7

56:                                               ; preds = %16
  br label %57

57:                                               ; preds = %45, %27, %21, %50, %16, %56, %1
  %58 = phi ptr [ null, %1 ], [ %10, %56 ], [ null, %16 ], [ null, %50 ], [ null, %21 ], [ null, %27 ], [ null, %45 ]
  ret ptr %58
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_template_param(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = load i8, ptr %3, align 1, !tbaa !11
  %5 = icmp eq i8 %4, 84
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %7, ptr %2, align 8, !tbaa !12
  %8 = tail call fastcc i64 @d_compact_number(ptr noundef nonnull %0) #22
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 10
  %12 = load i32, ptr %11, align 8, !tbaa !33
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %11, align 8, !tbaa !33
  %14 = tail call fastcc ptr @d_make_template_param(ptr noundef nonnull %0, i64 noundef %8) #22
  br label %15

15:                                               ; preds = %6, %1, %10
  %16 = phi ptr [ %14, %10 ], [ null, %1 ], [ null, %6 ]
  ret ptr %16
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @d_compact_number(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = load i8, ptr %3, align 1, !tbaa !11
  switch i8 %4, label %5 [
    i8 95, label %11
    i8 110, label %15
  ]

5:                                                ; preds = %1
  %6 = tail call fastcc i64 @d_number(ptr noundef nonnull %0) #22
  %7 = add nsw i64 %6, 1
  %8 = load ptr, ptr %2, align 8, !tbaa !12
  %9 = load i8, ptr %8, align 1, !tbaa !11
  %10 = icmp eq i8 %9, 95
  br i1 %10, label %11, label %15

11:                                               ; preds = %1, %5
  %12 = phi i64 [ %7, %5 ], [ 0, %1 ]
  %13 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %14 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %14, ptr %2, align 8, !tbaa !12
  br label %15

15:                                               ; preds = %5, %1, %11
  %16 = phi i64 [ %12, %11 ], [ -1, %1 ], [ -1, %5 ]
  ret i64 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_make_template_param(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #3 {
  %3 = tail call fastcc ptr @d_make_empty(ptr noundef %0) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  store i32 5, ptr %3, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.demangle_component, ptr %3, i64 0, i32 1
  store i64 %1, ptr %6, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %5, %2
  ret ptr %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @d_discriminator(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = load i8, ptr %3, align 1, !tbaa !11
  %5 = icmp eq i8 %4, 95
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %7, ptr %2, align 8, !tbaa !12
  %8 = tail call fastcc i64 @d_number(ptr noundef nonnull %0) #22
  %9 = icmp sgt i64 %8, -1
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i32 [ 1, %1 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_make_default_arg(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 {
  %4 = tail call fastcc ptr @d_make_empty(ptr noundef %0) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  store i32 63, ptr %4, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.demangle_component, ptr %4, i64 0, i32 1
  %8 = getelementptr inbounds %struct.demangle_component, ptr %4, i64 0, i32 1, i32 0, i32 1
  store i32 %1, ptr %8, align 8, !tbaa !11
  store ptr %2, ptr %7, align 8, !tbaa !11
  br label %9

9:                                                ; preds = %6, %3
  ret ptr %4
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @d_source_name(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i64 @d_number(ptr noundef %0) #22
  %3 = icmp slt i64 %2, 1
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = trunc i64 %2 to i32
  %6 = tail call fastcc ptr @d_identifier(ptr noundef %0, i32 noundef %5) #22
  %7 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 11
  store ptr %6, ptr %7, align 8, !tbaa !40
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_operator_name(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = load i8, ptr %3, align 1, !tbaa !11
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %29, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %7, ptr %2, align 8, !tbaa !12
  %8 = load i8, ptr %3, align 1, !tbaa !11
  %9 = sext i8 %8 to i32
  %10 = load i8, ptr %7, align 1, !tbaa !11
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %13, ptr %2, align 8, !tbaa !12
  %14 = load i8, ptr %7, align 1, !tbaa !11
  %15 = sext i8 %14 to i32
  %16 = icmp eq i8 %8, 118
  %17 = icmp sgt i8 %14, 47
  %18 = select i1 %16, i1 %17, i1 false
  %19 = icmp slt i8 %14, 58
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %25

21:                                               ; preds = %12
  %22 = add nsw i32 %15, -48
  %23 = tail call fastcc ptr @d_source_name(ptr noundef nonnull %0) #22
  %24 = tail call fastcc ptr @d_make_extended_operator(ptr noundef nonnull %0, i32 noundef %22, ptr noundef %23) #22
  br label %64

25:                                               ; preds = %12
  %26 = icmp eq i8 %8, 99
  %27 = icmp eq i8 %14, 118
  %28 = select i1 %26, i1 %27, i1 false
  br i1 %28, label %32, label %29

29:                                               ; preds = %1, %6, %25
  %30 = phi i32 [ %15, %25 ], [ 0, %6 ], [ 0, %1 ]
  %31 = phi i32 [ %9, %25 ], [ %9, %6 ], [ 0, %1 ]
  br label %35

32:                                               ; preds = %25
  %33 = tail call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  %34 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 46, ptr noundef %33, ptr noundef null) #22
  br label %64

35:                                               ; preds = %29, %60
  %36 = phi i32 [ %61, %60 ], [ 0, %29 ]
  %37 = phi i32 [ %62, %60 ], [ 52, %29 ]
  %38 = sub nsw i32 %37, %36
  %39 = sdiv i32 %38, 2
  %40 = add nsw i32 %39, %36
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.demangle_operator_info, ptr @cplus_demangle_operators, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !44
  %44 = load i8, ptr %43, align 1, !tbaa !11
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %31, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %35
  %48 = getelementptr inbounds i8, ptr %43, i64 1
  %49 = load i8, ptr %48, align 1, !tbaa !11
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %30, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = tail call fastcc ptr @d_make_operator(ptr noundef %0, ptr noundef nonnull %42) #22
  br label %64

54:                                               ; preds = %35
  %55 = icmp slt i32 %31, %45
  br i1 %55, label %60, label %58

56:                                               ; preds = %47
  %57 = icmp slt i32 %30, %50
  br i1 %57, label %60, label %58

58:                                               ; preds = %54, %56
  %59 = add nsw i32 %40, 1
  br label %60

60:                                               ; preds = %58, %56, %54
  %61 = phi i32 [ %59, %58 ], [ %36, %56 ], [ %36, %54 ]
  %62 = phi i32 [ %37, %58 ], [ %40, %56 ], [ %40, %54 ]
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %35

64:                                               ; preds = %60, %52, %32, %21
  %65 = phi ptr [ %24, %21 ], [ %34, %32 ], [ %53, %52 ], [ null, %60 ]
  ret ptr %65
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @d_ctor_dtor_name(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8, !tbaa !6
  switch i32 %6, label %13 [
    i32 0, label %7
    i32 22, label %7
  ]

7:                                                ; preds = %5, %5
  %8 = getelementptr inbounds %struct.demangle_component, ptr %3, i64 0, i32 1, i32 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %11 = load i32, ptr %10, align 8, !tbaa !20
  %12 = add nsw i32 %11, %9
  store i32 %12, ptr %10, align 8, !tbaa !20
  br label %13

13:                                               ; preds = %7, %5, %1
  %14 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !12
  %16 = load i8, ptr %15, align 1, !tbaa !11
  switch i8 %16, label %37 [
    i8 67, label %17
    i8 68, label %27
  ]

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %15, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !11
  %20 = add i8 %19, -49
  %21 = icmp ult i8 %20, 3
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = add nsw i8 %19, -48
  %24 = zext nneg i8 %23 to i32
  %25 = getelementptr inbounds i8, ptr %15, i64 2
  store ptr %25, ptr %14, align 8, !tbaa !12
  %26 = tail call fastcc ptr @d_make_ctor(ptr noundef nonnull %0, i32 noundef %24, ptr noundef %3) #22
  br label %37

27:                                               ; preds = %13
  %28 = getelementptr inbounds i8, ptr %15, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !11
  %30 = add i8 %29, -48
  %31 = icmp ult i8 %30, 3
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = add nsw i8 %29, -47
  %34 = zext nneg i8 %33 to i32
  %35 = getelementptr inbounds i8, ptr %15, i64 2
  store ptr %35, ptr %14, align 8, !tbaa !12
  %36 = tail call fastcc ptr @d_make_dtor(ptr noundef nonnull %0, i32 noundef %34, ptr noundef %3) #22
  br label %37

37:                                               ; preds = %27, %17, %13, %32, %22
  %38 = phi ptr [ %26, %22 ], [ null, %17 ], [ %36, %32 ], [ null, %27 ], [ null, %13 ]
  ret ptr %38
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_lambda(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = load i8, ptr %3, align 1, !tbaa !11
  %5 = icmp eq i8 %4, 85
  br i1 %5, label %6, label %33

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %7, ptr %2, align 8, !tbaa !12
  %8 = load i8, ptr %7, align 1, !tbaa !11
  %9 = icmp eq i8 %8, 108
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %11, ptr %2, align 8, !tbaa !12
  %12 = tail call fastcc ptr @d_parmlist(ptr noundef nonnull %0) #22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 8, !tbaa !12
  %16 = load i8, ptr %15, align 1, !tbaa !11
  %17 = icmp eq i8 %16, 69
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %19, ptr %2, align 8, !tbaa !12
  %20 = tail call fastcc i64 @d_compact_number(ptr noundef nonnull %0) #22
  %21 = trunc i64 %20 to i32
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = tail call fastcc ptr @d_make_empty(ptr noundef nonnull %0) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  store i32 62, ptr %24, align 8, !tbaa !6
  %27 = getelementptr inbounds %struct.demangle_component, ptr %24, i64 0, i32 1
  store ptr %12, ptr %27, align 8, !tbaa !11
  %28 = getelementptr inbounds %struct.demangle_component, ptr %24, i64 0, i32 1, i32 0, i32 1
  store i32 %21, ptr %28, align 8, !tbaa !11
  br label %29

29:                                               ; preds = %26, %23
  %30 = tail call fastcc i32 @d_add_substitution(ptr noundef nonnull %0, ptr noundef %24) #22, !range !19
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, ptr null, ptr %24
  br label %33

33:                                               ; preds = %29, %18, %14, %10, %6, %1
  %34 = phi ptr [ null, %1 ], [ null, %6 ], [ null, %10 ], [ null, %14 ], [ null, %18 ], [ %32, %29 ]
  ret ptr %34
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_unnamed_type(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = load i8, ptr %3, align 1, !tbaa !11
  %5 = icmp eq i8 %4, 85
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %7, ptr %2, align 8, !tbaa !12
  %8 = load i8, ptr %7, align 1, !tbaa !11
  %9 = icmp eq i8 %8, 116
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %11, ptr %2, align 8, !tbaa !12
  %12 = tail call fastcc i64 @d_compact_number(ptr noundef nonnull %0) #22
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = tail call fastcc ptr @d_make_empty(ptr noundef nonnull %0) #22
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  store i32 64, ptr %15, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.demangle_component, ptr %15, i64 0, i32 1
  store i64 %12, ptr %18, align 8, !tbaa !11
  br label %19

19:                                               ; preds = %17, %14
  %20 = tail call fastcc i32 @d_add_substitution(ptr noundef nonnull %0, ptr noundef %15) #22, !range !19
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, ptr null, ptr %15
  br label %23

23:                                               ; preds = %19, %10, %6, %1
  %24 = phi ptr [ null, %1 ], [ null, %6 ], [ null, %10 ], [ %22, %19 ]
  ret ptr %24
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @d_identifier(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = sub i64 %7, %8
  %10 = sext i32 %1 to i64
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %43, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds i8, ptr %4, i64 %10
  store ptr %13, ptr %3, align 8, !tbaa !12
  %14 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !15
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = load i8, ptr %13, align 1, !tbaa !11
  %20 = icmp eq i8 %19, 36
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %22, ptr %3, align 8, !tbaa !12
  br label %23

23:                                               ; preds = %21, %18, %12
  %24 = icmp sgt i32 %1, 9
  br i1 %24, label %25, label %41

25:                                               ; preds = %23
  %26 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %4, ptr noundef nonnull dereferenceable(8) @.str.2, i64 8)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = getelementptr inbounds i8, ptr %4, i64 8
  %30 = load i8, ptr %29, align 1, !tbaa !11
  switch i8 %30, label %41 [
    i8 46, label %31
    i8 95, label %31
    i8 36, label %31
  ]

31:                                               ; preds = %28, %28, %28
  %32 = getelementptr inbounds i8, ptr %4, i64 9
  %33 = load i8, ptr %32, align 1, !tbaa !11
  %34 = icmp eq i8 %33, 78
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %37 = load i32, ptr %36, align 8, !tbaa !20
  %38 = sub i32 %37, %1
  %39 = add i32 %38, 22
  store i32 %39, ptr %36, align 8, !tbaa !20
  %40 = tail call fastcc ptr @d_make_name(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, i32 noundef 21) #22
  br label %43

41:                                               ; preds = %31, %28, %25, %23
  %42 = tail call fastcc ptr @d_make_name(ptr noundef nonnull %0, ptr noundef %4, i32 noundef %1) #22
  br label %43

43:                                               ; preds = %35, %2, %41
  %44 = phi ptr [ %42, %41 ], [ %40, %35 ], [ null, %2 ]
  ret ptr %44
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @d_make_extended_operator(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 {
  %4 = tail call fastcc ptr @d_make_empty(ptr noundef %0) #22
  %5 = tail call i32 @cplus_demangle_fill_extended_operator(ptr noundef %4, i32 noundef %1, ptr noundef %2) #22, !range !19
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, ptr null, ptr %4
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_make_operator(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = tail call fastcc ptr @d_make_empty(ptr noundef %0) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  store i32 44, ptr %3, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.demangle_component, ptr %3, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %5, %2
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @d_make_ctor(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 {
  %4 = tail call fastcc ptr @d_make_empty(ptr noundef %0) #22
  %5 = tail call i32 @cplus_demangle_fill_ctor(ptr noundef %4, i32 noundef %1, ptr noundef %2) #22, !range !19
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, ptr null, ptr %4
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @d_make_dtor(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 {
  %4 = tail call fastcc ptr @d_make_empty(ptr noundef %0) #22
  %5 = tail call i32 @cplus_demangle_fill_dtor(ptr noundef %4, i32 noundef %1, ptr noundef %2) #22, !range !19
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, ptr null, ptr %4
  ret ptr %7
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_parmlist(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store ptr null, ptr %2, align 8, !tbaa !21
  %3 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  br label %4

4:                                                ; preds = %11, %1
  %5 = phi ptr [ %2, %1 ], [ %14, %11 ]
  %6 = load ptr, ptr %3, align 8, !tbaa !12
  %7 = load i8, ptr %6, align 1, !tbaa !11
  switch i8 %7, label %8 [
    i8 69, label %15
    i8 0, label %15
  ]

8:                                                ; preds = %4
  %9 = tail call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %39, label %11

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 42, ptr noundef nonnull %9, ptr noundef null) #22
  store ptr %12, ptr %5, align 8, !tbaa !21
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.demangle_component, ptr %12, i64 0, i32 1, i32 0, i32 1
  br i1 %13, label %39, label %4

15:                                               ; preds = %4, %4
  %16 = load ptr, ptr %2, align 8, !tbaa !21
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.demangle_component, ptr %16, i64 0, i32 1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.demangle_component, ptr %16, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  %25 = load i32, ptr %24, align 8, !tbaa !6
  %26 = icmp eq i32 %25, 35
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.demangle_component, ptr %24, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !11
  %30 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %29, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !46
  %32 = icmp eq i32 %31, 9
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %29, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !22
  %36 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %37 = load i32, ptr %36, align 8, !tbaa !20
  %38 = sub nsw i32 %37, %35
  store i32 %38, ptr %36, align 8, !tbaa !20
  store ptr null, ptr %23, align 8, !tbaa !11
  br label %39

39:                                               ; preds = %11, %8, %18, %22, %27, %33, %15
  %40 = phi ptr [ null, %15 ], [ %16, %33 ], [ %16, %27 ], [ %16, %22 ], [ %16, %18 ], [ null, %8 ], [ null, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  ret ptr %40
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_make_sub(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 {
  %4 = tail call fastcc ptr @d_make_empty(ptr noundef %0) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  store i32 22, ptr %4, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.demangle_component, ptr %4, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !11
  %8 = getelementptr inbounds %struct.demangle_component, ptr %4, i64 0, i32 1, i32 0, i32 1
  store i32 %2, ptr %8, align 8, !tbaa !11
  br label %9

9:                                                ; preds = %6, %3
  ret ptr %4
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_template_arg(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = load i8, ptr %3, align 1, !tbaa !11
  switch i8 %4, label %17 [
    i8 88, label %5
    i8 76, label %13
    i8 73, label %15
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %6, ptr %2, align 8, !tbaa !12
  %7 = tail call fastcc ptr @d_expression(ptr noundef nonnull %0) #22
  %8 = load ptr, ptr %2, align 8, !tbaa !12
  %9 = load i8, ptr %8, align 1, !tbaa !11
  %10 = icmp eq i8 %9, 69
  br i1 %10, label %11, label %19

11:                                               ; preds = %5
  %12 = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %12, ptr %2, align 8, !tbaa !12
  br label %19

13:                                               ; preds = %1
  %14 = tail call fastcc ptr @d_expr_primary(ptr noundef nonnull %0) #22
  br label %19

15:                                               ; preds = %1
  %16 = tail call fastcc ptr @d_template_args(ptr noundef nonnull %0) #22
  br label %19

17:                                               ; preds = %1
  %18 = tail call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  br label %19

19:                                               ; preds = %5, %17, %15, %13, %11
  %20 = phi ptr [ %18, %17 ], [ %16, %15 ], [ %14, %13 ], [ %7, %11 ], [ null, %5 ]
  ret ptr %20
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_expression(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = load i8, ptr %3, align 1, !tbaa !11
  switch i8 %4, label %43 [
    i8 76, label %5
    i8 84, label %7
    i8 115, label %9
    i8 102, label %31
  ]

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @d_expr_primary(ptr noundef nonnull %0) #22
  br label %25

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @d_template_param(ptr noundef nonnull %0) #22
  br label %25

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !11
  switch i8 %11, label %64 [
    i8 114, label %12
    i8 112, label %27
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %13, ptr %2, align 8, !tbaa !12
  %14 = tail call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  %15 = tail call fastcc ptr @d_unqualified_name(ptr noundef nonnull %0) #22
  %16 = load ptr, ptr %2, align 8, !tbaa !12
  %17 = load i8, ptr %16, align 1, !tbaa !11
  %18 = icmp eq i8 %17, 73
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %14, ptr noundef %15) #22
  br label %25

21:                                               ; preds = %12
  %22 = tail call fastcc ptr @d_template_args(ptr noundef nonnull %0) #22
  %23 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 4, ptr noundef %15, ptr noundef %22) #22
  %24 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %14, ptr noundef %23) #22
  br label %25

25:                                               ; preds = %67, %82, %101, %129, %64, %89, %61, %54, %57, %40, %35, %19, %21, %7, %5, %133, %27
  %26 = phi ptr [ %30, %27 ], [ %139, %133 ], [ %6, %5 ], [ %8, %7 ], [ %20, %19 ], [ %24, %21 ], [ %42, %40 ], [ null, %35 ], [ %63, %61 ], [ null, %54 ], [ %55, %57 ], [ %84, %82 ], [ %132, %129 ], [ %103, %101 ], [ null, %64 ], [ null, %89 ], [ null, %67 ]
  ret ptr %26

27:                                               ; preds = %9
  %28 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %28, ptr %2, align 8, !tbaa !12
  %29 = tail call fastcc ptr @d_expression(ptr noundef nonnull %0) #22
  %30 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 65, ptr noundef %29, ptr noundef null) #22
  br label %25

31:                                               ; preds = %1
  %32 = getelementptr inbounds i8, ptr %3, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !11
  %34 = icmp eq i8 %33, 112
  br i1 %34, label %35, label %64

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %36, ptr %2, align 8, !tbaa !12
  %37 = tail call fastcc i64 @d_compact_number(ptr noundef nonnull %0) #22
  %38 = and i64 %37, 2147483648
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %25

40:                                               ; preds = %35
  %41 = and i64 %37, 2147483647
  %42 = tail call fastcc ptr @d_make_function_param(ptr noundef nonnull %0, i64 noundef %41) #22
  br label %25

43:                                               ; preds = %1
  %44 = add i8 %4, -48
  %45 = icmp ult i8 %44, 10
  br i1 %45, label %54, label %46

46:                                               ; preds = %43
  %47 = icmp eq i8 %4, 111
  br i1 %47, label %48, label %64

48:                                               ; preds = %46
  %49 = getelementptr inbounds i8, ptr %3, i64 1
  %50 = load i8, ptr %49, align 1, !tbaa !11
  %51 = icmp eq i8 %50, 110
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %53, ptr %2, align 8, !tbaa !12
  br label %54

54:                                               ; preds = %43, %52
  %55 = tail call fastcc ptr @d_unqualified_name(ptr noundef nonnull %0) #22
  %56 = icmp eq ptr %55, null
  br i1 %56, label %25, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %2, align 8, !tbaa !12
  %59 = load i8, ptr %58, align 1, !tbaa !11
  %60 = icmp eq i8 %59, 73
  br i1 %60, label %61, label %25

61:                                               ; preds = %57
  %62 = tail call fastcc ptr @d_template_args(ptr noundef nonnull %0) #22
  %63 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 4, ptr noundef nonnull %55, ptr noundef %62) #22
  br label %25

64:                                               ; preds = %9, %31, %48, %46
  %65 = tail call fastcc ptr @d_operator_name(ptr noundef nonnull %0) #22
  %66 = icmp eq ptr %65, null
  br i1 %66, label %25, label %67

67:                                               ; preds = %64
  %68 = load i32, ptr %65, align 8, !tbaa !6
  switch i32 %68, label %25 [
    i32 44, label %69
    i32 46, label %92
    i32 45, label %87
  ]

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.demangle_component, ptr %65, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !11
  %72 = getelementptr inbounds %struct.demangle_operator_info, ptr %71, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !29
  %74 = add nsw i32 %73, -2
  %75 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %76 = load i32, ptr %75, align 8, !tbaa !20
  %77 = add nsw i32 %74, %76
  store i32 %77, ptr %75, align 8, !tbaa !20
  %78 = load ptr, ptr %70, align 8, !tbaa !11
  %79 = load ptr, ptr %78, align 8, !tbaa !44
  %80 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %79, ptr noundef nonnull dereferenceable(3) @.str.19) #22
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %69
  %83 = tail call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  %84 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 47, ptr noundef nonnull %65, ptr noundef %83) #22
  br label %25

85:                                               ; preds = %69
  %86 = getelementptr inbounds %struct.demangle_operator_info, ptr %78, i64 0, i32 3
  br label %89

87:                                               ; preds = %67
  %88 = getelementptr inbounds %struct.demangle_component, ptr %65, i64 0, i32 1
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi ptr [ %88, %87 ], [ %86, %85 ]
  %91 = load i32, ptr %90, align 4, !tbaa !11
  switch i32 %91, label %25 [
    i32 1, label %99
    i32 2, label %104
    i32 3, label %133
  ]

92:                                               ; preds = %67
  %93 = load ptr, ptr %2, align 8, !tbaa !12
  %94 = load i8, ptr %93, align 1, !tbaa !11
  %95 = icmp eq i8 %94, 95
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = getelementptr inbounds i8, ptr %93, i64 1
  store ptr %97, ptr %2, align 8, !tbaa !12
  %98 = tail call fastcc ptr @d_exprlist(ptr noundef nonnull %0) #22
  br label %101

99:                                               ; preds = %89, %92
  %100 = tail call fastcc ptr @d_expression(ptr noundef nonnull %0) #22
  br label %101

101:                                              ; preds = %99, %96
  %102 = phi ptr [ %98, %96 ], [ %100, %99 ]
  %103 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 47, ptr noundef nonnull %65, ptr noundef %102) #22
  br label %25

104:                                              ; preds = %89
  %105 = getelementptr inbounds %struct.demangle_component, ptr %65, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !11
  %107 = load ptr, ptr %106, align 8, !tbaa !44
  %108 = tail call fastcc ptr @d_expression(ptr noundef nonnull %0) #22
  %109 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %107, ptr noundef nonnull dereferenceable(3) @.str.20) #22
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = tail call fastcc ptr @d_exprlist(ptr noundef nonnull %0) #22
  br label %129

113:                                              ; preds = %104
  %114 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %107, ptr noundef nonnull dereferenceable(3) @.str.21) #22
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %107, ptr noundef nonnull dereferenceable(3) @.str.22) #22
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %116, %113
  %120 = tail call fastcc ptr @d_unqualified_name(ptr noundef nonnull %0) #22
  %121 = load ptr, ptr %2, align 8, !tbaa !12
  %122 = load i8, ptr %121, align 1, !tbaa !11
  %123 = icmp eq i8 %122, 73
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = tail call fastcc ptr @d_template_args(ptr noundef nonnull %0) #22
  %126 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 4, ptr noundef %120, ptr noundef %125) #22
  br label %129

127:                                              ; preds = %116
  %128 = tail call fastcc ptr @d_expression(ptr noundef nonnull %0) #22
  br label %129

129:                                              ; preds = %127, %124, %119, %111
  %130 = phi ptr [ %128, %127 ], [ %126, %124 ], [ %120, %119 ], [ %112, %111 ]
  %131 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 49, ptr noundef %108, ptr noundef %130) #22
  %132 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull %65, ptr noundef %131) #22
  br label %25

133:                                              ; preds = %89
  %134 = tail call fastcc ptr @d_expression(ptr noundef nonnull %0) #22
  %135 = tail call fastcc ptr @d_expression(ptr noundef nonnull %0) #22
  %136 = tail call fastcc ptr @d_expression(ptr noundef nonnull %0) #22
  %137 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 52, ptr noundef %135, ptr noundef %136) #22
  %138 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 51, ptr noundef %134, ptr noundef %137) #22
  %139 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 50, ptr noundef nonnull %65, ptr noundef %138) #22
  br label %25
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_expr_primary(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = load i8, ptr %3, align 1, !tbaa !11
  %5 = icmp eq i8 %4, 76
  br i1 %5, label %6, label %57

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %7, ptr %2, align 8, !tbaa !12
  %8 = load i8, ptr %7, align 1, !tbaa !11
  switch i8 %8, label %11 [
    i8 95, label %9
    i8 90, label %9
  ]

9:                                                ; preds = %6, %6
  %10 = tail call ptr @cplus_demangle_mangled_name(ptr noundef nonnull %0, i32 noundef 0) #22
  br label %50

11:                                               ; preds = %6
  %12 = tail call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %57, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr %12, align 8, !tbaa !6
  %16 = icmp eq i32 %15, 35
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.demangle_component, ptr %12, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  %20 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %19, i64 0, i32 4
  %21 = load i32, ptr %20, align 4, !tbaa !46
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %19, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !22
  %26 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 12
  %27 = load i32, ptr %26, align 8, !tbaa !20
  %28 = sub nsw i32 %27, %25
  store i32 %28, ptr %26, align 8, !tbaa !20
  br label %29

29:                                               ; preds = %23, %17, %14
  %30 = load ptr, ptr %2, align 8, !tbaa !12
  %31 = load i8, ptr %30, align 1, !tbaa !11
  %32 = icmp eq i8 %31, 110
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %30, i64 1
  store ptr %34, ptr %2, align 8, !tbaa !12
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi ptr [ %34, %33 ], [ %30, %29 ]
  %37 = phi i32 [ 54, %33 ], [ 53, %29 ]
  br label %38

38:                                               ; preds = %41, %35
  %39 = phi ptr [ %42, %41 ], [ %36, %35 ]
  %40 = load i8, ptr %39, align 1, !tbaa !11
  switch i8 %40, label %41 [
    i8 69, label %43
    i8 0, label %57
  ]

41:                                               ; preds = %38
  %42 = getelementptr inbounds i8, ptr %39, i64 1
  store ptr %42, ptr %2, align 8, !tbaa !12
  br label %38, !llvm.loop !47

43:                                               ; preds = %38
  %44 = ptrtoint ptr %39 to i64
  %45 = ptrtoint ptr %36 to i64
  %46 = sub i64 %44, %45
  %47 = trunc i64 %46 to i32
  %48 = tail call fastcc ptr @d_make_name(ptr noundef nonnull %0, ptr noundef nonnull %36, i32 noundef %47) #22
  %49 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef %37, ptr noundef nonnull %12, ptr noundef %48) #22
  br label %50

50:                                               ; preds = %43, %9
  %51 = phi ptr [ %10, %9 ], [ %49, %43 ]
  %52 = load ptr, ptr %2, align 8, !tbaa !12
  %53 = load i8, ptr %52, align 1, !tbaa !11
  %54 = icmp eq i8 %53, 69
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = getelementptr inbounds i8, ptr %52, i64 1
  store ptr %56, ptr %2, align 8, !tbaa !12
  br label %57

57:                                               ; preds = %38, %11, %50, %1, %55
  %58 = phi ptr [ %51, %55 ], [ null, %1 ], [ null, %50 ], [ null, %11 ], [ null, %38 ]
  ret ptr %58
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_make_function_param(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #3 {
  %3 = tail call fastcc ptr @d_make_empty(ptr noundef %0) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  store i32 6, ptr %3, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.demangle_component, ptr %3, i64 0, i32 1
  store i64 %1, ptr %6, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %5, %2
  ret ptr %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_exprlist(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store ptr null, ptr %2, align 8, !tbaa !21
  %3 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = load i8, ptr %4, align 1, !tbaa !11
  %6 = icmp eq i8 %5, 69
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %8, ptr %3, align 8, !tbaa !12
  %9 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 42, ptr noundef null, ptr noundef null) #22
  br label %25

10:                                               ; preds = %1, %17
  %11 = phi ptr [ %18, %17 ], [ %2, %1 ]
  %12 = tail call fastcc ptr @d_expression(ptr noundef nonnull %0) #22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %10
  %15 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 42, ptr noundef nonnull %12, ptr noundef null) #22
  store ptr %15, ptr %11, align 8, !tbaa !21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.demangle_component, ptr %15, i64 0, i32 1, i32 0, i32 1
  %19 = load ptr, ptr %3, align 8, !tbaa !12
  %20 = load i8, ptr %19, align 1, !tbaa !11
  %21 = icmp eq i8 %20, 69
  br i1 %21, label %22, label %10

22:                                               ; preds = %17
  %23 = getelementptr inbounds i8, ptr %19, i64 1
  store ptr %23, ptr %3, align 8, !tbaa !12
  %24 = load ptr, ptr %2, align 8, !tbaa !21
  br label %25

25:                                               ; preds = %14, %10, %22, %7
  %26 = phi ptr [ %9, %7 ], [ %24, %22 ], [ null, %10 ], [ null, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  ret ptr %26
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @is_ctor_dtor_or_conversion(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1, %6
  %4 = phi ptr [ %8, %6 ], [ %0, %1 ]
  %5 = load i32, ptr %4, align 8, !tbaa !6
  switch i32 %5, label %10 [
    i32 1, label %6
    i32 2, label %6
    i32 7, label %11
    i32 8, label %11
    i32 46, label %11
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds %struct.demangle_component, ptr %4, i64 0, i32 1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %3

10:                                               ; preds = %3, %6
  br label %11

11:                                               ; preds = %3, %3, %3, %10, %1
  %12 = phi i32 [ 0, %1 ], [ 0, %10 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ]
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_make_builtin_type(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = tail call fastcc ptr @d_make_empty(ptr noundef %0) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  store i32 35, ptr %5, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.demangle_component, ptr %5, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !11
  br label %9

9:                                                ; preds = %4, %7, %2
  %10 = phi ptr [ null, %2 ], [ %5, %7 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_function_type(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = load i8, ptr %3, align 1, !tbaa !11
  %5 = icmp eq i8 %4, 70
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %7, ptr %2, align 8, !tbaa !12
  %8 = load i8, ptr %7, align 1, !tbaa !11
  %9 = icmp eq i8 %8, 89
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %3, i64 2
  store ptr %11, ptr %2, align 8, !tbaa !12
  br label %12

12:                                               ; preds = %10, %6
  %13 = tail call fastcc ptr @d_bare_function_type(ptr noundef nonnull %0, i32 noundef 1) #22
  %14 = load ptr, ptr %2, align 8, !tbaa !12
  %15 = load i8, ptr %14, align 1, !tbaa !11
  %16 = icmp eq i8 %15, 69
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %18, ptr %2, align 8, !tbaa !12
  br label %19

19:                                               ; preds = %12, %1, %17
  %20 = phi ptr [ %13, %17 ], [ null, %1 ], [ null, %12 ]
  ret ptr %20
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_class_enum_type(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @d_name(ptr noundef %0) #22
  ret ptr %2
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_array_type(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = load i8, ptr %3, align 1, !tbaa !11
  %5 = icmp eq i8 %4, 65
  br i1 %5, label %6, label %38

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %7, ptr %2, align 8, !tbaa !12
  %8 = load i8, ptr %7, align 1, !tbaa !11
  %9 = icmp eq i8 %8, 95
  br i1 %9, label %29, label %10

10:                                               ; preds = %6
  %11 = add i8 %8, -48
  %12 = icmp ult i8 %11, 10
  br i1 %12, label %13, label %26

13:                                               ; preds = %10, %13
  %14 = phi ptr [ %15, %13 ], [ %7, %10 ]
  %15 = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %15, ptr %2, align 8, !tbaa !12
  %16 = load i8, ptr %15, align 1, !tbaa !11
  %17 = add i8 %16, -48
  %18 = icmp ult i8 %17, 10
  br i1 %18, label %13, label %19, !llvm.loop !48

19:                                               ; preds = %13
  %20 = ptrtoint ptr %15 to i64
  %21 = ptrtoint ptr %7 to i64
  %22 = sub i64 %20, %21
  %23 = trunc i64 %22 to i32
  %24 = tail call fastcc ptr @d_make_name(ptr noundef nonnull %0, ptr noundef nonnull %7, i32 noundef %23) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %38, label %29

26:                                               ; preds = %10
  %27 = tail call fastcc ptr @d_expression(ptr noundef nonnull %0) #22
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %6, %19, %26
  %30 = phi ptr [ %24, %19 ], [ %27, %26 ], [ null, %6 ]
  %31 = load ptr, ptr %2, align 8, !tbaa !12
  %32 = load i8, ptr %31, align 1, !tbaa !11
  %33 = icmp eq i8 %32, 95
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = getelementptr inbounds i8, ptr %31, i64 1
  store ptr %35, ptr %2, align 8, !tbaa !12
  %36 = tail call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  %37 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 38, ptr noundef %30, ptr noundef %36) #22
  br label %38

38:                                               ; preds = %29, %26, %1, %19, %34
  %39 = phi ptr [ %37, %34 ], [ null, %19 ], [ null, %1 ], [ null, %26 ], [ null, %29 ]
  ret ptr %39
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_pointer_to_member_type(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  %3 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = load i8, ptr %4, align 1, !tbaa !11
  %6 = icmp eq i8 %5, 77
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %8, ptr %3, align 8, !tbaa !12
  %9 = tail call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  %10 = call fastcc ptr @d_cv_qualifiers(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 1) #22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %7
  %13 = call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  store ptr %13, ptr %10, align 8, !tbaa !21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %12
  %16 = icmp eq ptr %10, %2
  br i1 %16, label %24, label %17

17:                                               ; preds = %15
  %18 = load i32, ptr %13, align 8, !tbaa !6
  %19 = icmp eq i32 %18, 37
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %2, align 8, !tbaa !21
  %22 = call fastcc i32 @d_add_substitution(ptr noundef nonnull %0, ptr noundef %21) #22, !range !19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20, %17, %15
  %25 = load ptr, ptr %2, align 8, !tbaa !21
  %26 = call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 39, ptr noundef %9, ptr noundef %25) #22
  br label %27

27:                                               ; preds = %20, %12, %7, %1, %24
  %28 = phi ptr [ %26, %24 ], [ null, %1 ], [ null, %7 ], [ null, %12 ], [ null, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret ptr %28
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_vector_type(ptr nocapture noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.d_info, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = load i8, ptr %3, align 1, !tbaa !11
  %5 = icmp eq i8 %4, 95
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %7, ptr %2, align 8, !tbaa !12
  %8 = tail call fastcc ptr @d_expression(ptr noundef nonnull %0) #22
  br label %11

9:                                                ; preds = %1
  %10 = tail call fastcc ptr @d_number_component(ptr noundef nonnull %0) #22
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi ptr [ %8, %6 ], [ %10, %9 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %2, align 8, !tbaa !12
  %16 = load i8, ptr %15, align 1, !tbaa !11
  %17 = icmp eq i8 %16, 95
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %19, ptr %2, align 8, !tbaa !12
  %20 = tail call ptr @cplus_demangle_type(ptr noundef nonnull %0) #22
  %21 = tail call fastcc ptr @d_make_comp(ptr noundef nonnull %0, i32 noundef 41, ptr noundef nonnull %12, ptr noundef %20) #22
  br label %22

22:                                               ; preds = %14, %11, %18
  %23 = phi ptr [ %21, %18 ], [ null, %11 ], [ null, %14 ]
  ret ptr %23
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_number_component(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = tail call fastcc ptr @d_make_empty(ptr noundef %0) #22
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  store i32 58, ptr %2, align 8, !tbaa !6
  %5 = tail call fastcc i64 @d_number(ptr noundef %0) #22
  %6 = getelementptr inbounds %struct.demangle_component, ptr %2, i64 0, i32 1
  store i64 %5, ptr %6, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %4, %1
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @cplus_demangle_print_callback(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 {
  %5 = alloca %struct.d_print_info, align 8
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %5) #23
  call fastcc void @d_print_init(ptr noundef nonnull %5, i32 noundef %0, ptr noundef %2, ptr noundef %3) #22
  call fastcc void @d_print_comp(ptr noundef nonnull %5, ptr noundef %1) #22
  call fastcc void @d_print_flush(ptr noundef nonnull %5) #22
  %6 = call fastcc i32 @d_print_saw_error(ptr noundef nonnull %5) #22, !range !19
  %7 = xor i32 %6, 1
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %5) #23
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @d_print_init(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  store i32 %1, ptr %0, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  store i64 0, ptr %5, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 8, !tbaa !53
  %7 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 6
  %8 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  store ptr %2, ptr %8, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  store ptr %3, ptr %9, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 8
  store i32 0, ptr %10, align 8, !tbaa !56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @d_print_comp(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
  %3 = alloca [4 x %struct.d_print_mod], align 16
  %4 = alloca %struct.d_print_template, align 8
  %5 = alloca %struct.d_print_mod, align 8
  %6 = alloca %struct.d_print_mod, align 8
  %7 = alloca [4 x %struct.d_print_mod], align 16
  %8 = alloca %struct.d_print_mod, align 8
  %9 = icmp eq ptr %1, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 7
  br label %13

12:                                               ; preds = %40, %2
  tail call fastcc void @d_print_error(ptr noundef %0) #22
  br label %174

13:                                               ; preds = %10, %40
  %14 = phi ptr [ %1, %10 ], [ %42, %40 ]
  %15 = tail call fastcc i32 @d_print_saw_error(ptr noundef %0) #22, !range !19
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %174

17:                                               ; preds = %13
  %18 = load i32, ptr %14, align 8, !tbaa !6
  switch i32 %18, label %646 [
    i32 0, label %19
    i32 1, label %30
    i32 2, label %30
    i32 3, label %44
    i32 4, label %128
    i32 5, label %162
    i32 7, label %180
    i32 8, label %182
    i32 9, label %184
    i32 10, label %186
    i32 11, label %188
    i32 12, label %192
    i32 13, label %194
    i32 14, label %196
    i32 15, label %198
    i32 16, label %200
    i32 17, label %202
    i32 18, label %204
    i32 19, label %206
    i32 20, label %208
    i32 21, label %210
    i32 22, label %212
    i32 23, label %218
    i32 24, label %218
    i32 25, label %218
    i32 26, label %239
    i32 27, label %239
    i32 28, label %239
    i32 29, label %239
    i32 30, label %239
    i32 31, label %239
    i32 32, label %239
    i32 33, label %239
    i32 34, label %239
    i32 35, label %255
    i32 36, label %272
    i32 37, label %274
    i32 38, label %308
    i32 39, label %362
    i32 41, label %362
    i32 40, label %376
    i32 42, label %394
    i32 43, label %394
    i32 44, label %411
    i32 45, label %429
    i32 46, label %431
    i32 47, label %432
    i32 48, label %443
    i32 49, label %505
    i32 50, label %506
    i32 51, label %532
    i32 52, label %532
    i32 53, label %533
    i32 54, label %533
    i32 58, label %590
    i32 55, label %593
    i32 56, label %595
    i32 57, label %599
    i32 59, label %603
    i32 65, label %606
    i32 6, label %627
    i32 60, label %631
    i32 61, label %633
    i32 62, label %635
    i32 64, label %642
  ]

19:                                               ; preds = %17
  %20 = load i32, ptr %0, align 8, !tbaa !49
  %21 = and i32 %20, 4
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  %25 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !11
  br i1 %22, label %27, label %29

27:                                               ; preds = %19
  %28 = sext i32 %26 to i64
  tail call fastcc void @d_append_buffer(ptr noundef nonnull %0, ptr noundef %24, i64 noundef %28) #22
  br label %174

29:                                               ; preds = %19
  tail call fastcc void @d_print_java_identifier(ptr noundef nonnull %0, ptr noundef %24, i32 noundef %26) #22
  br label %174

30:                                               ; preds = %17, %17
  %31 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !11
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %32) #22
  %33 = load i32, ptr %0, align 8, !tbaa !49
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  tail call fastcc void @d_append_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.147) #22
  br label %38

37:                                               ; preds = %30
  tail call fastcc void @d_append_char(ptr noundef nonnull %0, i8 noundef signext 46) #22
  br label %38

38:                                               ; preds = %37, %36
  %39 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  br label %40

40:                                               ; preds = %38, %180, %182, %184, %186, %188, %192, %194, %196, %198, %200, %202, %204, %206, %208, %210, %237, %272, %429, %588, %593, %595, %631, %633
  %41 = phi ptr [ %39, %38 ], [ %181, %180 ], [ %183, %182 ], [ %185, %184 ], [ %187, %186 ], [ %191, %188 ], [ %193, %192 ], [ %195, %194 ], [ %197, %196 ], [ %199, %198 ], [ %201, %200 ], [ %203, %202 ], [ %205, %204 ], [ %207, %206 ], [ %209, %208 ], [ %211, %210 ], [ %238, %237 ], [ %273, %272 ], [ %430, %429 ], [ %589, %588 ], [ %594, %593 ], [ %598, %595 ], [ %632, %631 ], [ %634, %633 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !11
  %43 = icmp eq ptr %42, null
  br i1 %43, label %12, label %13

44:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #23
  %45 = load ptr, ptr %11, align 8, !tbaa !57
  store ptr null, ptr %11, align 8, !tbaa !57
  %46 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 6
  br label %47

47:                                               ; preds = %58, %44
  %48 = phi ptr [ %59, %58 ], [ null, %44 ]
  %49 = phi i64 [ %68, %58 ], [ 1, %44 ]
  %50 = phi i64 [ %64, %58 ], [ 0, %44 ]
  %51 = phi ptr [ %53, %58 ], [ %14, %44 ]
  %52 = getelementptr inbounds %struct.demangle_component, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !11
  %54 = icmp eq ptr %53, null
  br i1 %54, label %69, label %55

55:                                               ; preds = %47
  %56 = icmp eq i64 %50, 4
  br i1 %56, label %57, label %58

57:                                               ; preds = %55
  call fastcc void @d_print_error(ptr noundef nonnull %0) #22
  br label %127

58:                                               ; preds = %55
  %59 = getelementptr inbounds [4 x %struct.d_print_mod], ptr %3, i64 0, i64 %50
  store ptr %48, ptr %59, align 16, !tbaa !58
  store ptr %59, ptr %11, align 8, !tbaa !57
  %60 = getelementptr inbounds [4 x %struct.d_print_mod], ptr %3, i64 0, i64 %50, i32 1
  store ptr %53, ptr %60, align 8, !tbaa !60
  %61 = getelementptr inbounds [4 x %struct.d_print_mod], ptr %3, i64 0, i64 %50, i32 2
  store i32 0, ptr %61, align 16, !tbaa !61
  %62 = load ptr, ptr %46, align 8, !tbaa !62
  %63 = getelementptr inbounds [4 x %struct.d_print_mod], ptr %3, i64 0, i64 %50, i32 3
  store ptr %62, ptr %63, align 8, !tbaa !63
  %64 = add nuw nsw i64 %50, 1
  %65 = load i32, ptr %53, align 8, !tbaa !6
  %66 = add i32 %65, -26
  %67 = icmp ult i32 %66, 3
  %68 = add nuw nsw i64 %49, 1
  br i1 %67, label %47, label %70, !llvm.loop !64

69:                                               ; preds = %47
  call fastcc void @d_print_error(ptr noundef nonnull %0) #22
  br label %127

70:                                               ; preds = %58
  switch i32 %65, label %105 [
    i32 4, label %71
    i32 2, label %73
  ]

71:                                               ; preds = %70
  store ptr %62, ptr %4, align 8, !tbaa !65
  store ptr %4, ptr %46, align 8, !tbaa !62
  %72 = getelementptr inbounds %struct.d_print_template, ptr %4, i64 0, i32 1
  store ptr %53, ptr %72, align 8, !tbaa !67
  br label %105

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.demangle_component, ptr %53, i64 0, i32 1, i32 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !11
  %76 = load i32, ptr %75, align 8, !tbaa !6
  %77 = icmp eq i32 %76, 63
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.demangle_component, ptr %75, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !11
  %81 = load i32, ptr %80, align 8, !tbaa !6
  br label %82

82:                                               ; preds = %78, %73
  %83 = phi i32 [ %81, %78 ], [ %76, %73 ]
  %84 = phi ptr [ %80, %78 ], [ %75, %73 ]
  %85 = add i32 %83, -26
  %86 = icmp ult i32 %85, 3
  br i1 %86, label %87, label %105

87:                                               ; preds = %82, %92
  %88 = phi i64 [ %99, %92 ], [ %49, %82 ]
  %89 = phi ptr [ %101, %92 ], [ %84, %82 ]
  %90 = icmp ugt i64 %88, 3
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  call fastcc void @d_print_error(ptr noundef %0) #22
  br label %127

92:                                               ; preds = %87
  %93 = getelementptr inbounds [4 x %struct.d_print_mod], ptr %3, i64 0, i64 %88
  %94 = add nsw i64 %88, -1
  %95 = getelementptr inbounds [4 x %struct.d_print_mod], ptr %3, i64 0, i64 %94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %93, ptr noundef nonnull align 16 dereferenceable(32) %95, i64 32, i1 false), !tbaa.struct !68
  store ptr %95, ptr %93, align 16, !tbaa !58
  store ptr %93, ptr %11, align 8, !tbaa !57
  %96 = getelementptr inbounds [4 x %struct.d_print_mod], ptr %3, i64 0, i64 %94, i32 1
  store ptr %89, ptr %96, align 8, !tbaa !60
  %97 = getelementptr inbounds [4 x %struct.d_print_mod], ptr %3, i64 0, i64 %94, i32 2
  store i32 0, ptr %97, align 16, !tbaa !61
  %98 = getelementptr inbounds [4 x %struct.d_print_mod], ptr %3, i64 0, i64 %94, i32 3
  store ptr %62, ptr %98, align 8, !tbaa !63
  %99 = add nuw nsw i64 %88, 1
  %100 = getelementptr inbounds %struct.demangle_component, ptr %89, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !11
  %102 = load i32, ptr %101, align 8, !tbaa !6
  %103 = add i32 %102, -26
  %104 = icmp ult i32 %103, 3
  br i1 %104, label %87, label %105, !llvm.loop !69

105:                                              ; preds = %92, %82, %70, %71
  %106 = phi i64 [ %64, %71 ], [ %64, %70 ], [ %64, %82 ], [ %99, %92 ]
  %107 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !11
  call fastcc void @d_print_comp(ptr noundef nonnull %0, ptr noundef %108) #22
  %109 = load i32, ptr %53, align 8, !tbaa !6
  %110 = icmp eq i32 %109, 4
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load ptr, ptr %4, align 8, !tbaa !65
  store ptr %112, ptr %46, align 8, !tbaa !62
  br label %113

113:                                              ; preds = %111, %105
  %114 = and i64 %106, 4294967295
  br label %115

115:                                              ; preds = %113, %124
  %116 = phi i64 [ %114, %113 ], [ %117, %124 ]
  %117 = add nsw i64 %116, -1
  %118 = getelementptr inbounds [4 x %struct.d_print_mod], ptr %3, i64 0, i64 %117, i32 2
  %119 = load i32, ptr %118, align 16, !tbaa !61
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 32) #22
  %122 = getelementptr inbounds [4 x %struct.d_print_mod], ptr %3, i64 0, i64 %117, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !60
  call fastcc void @d_print_mod(ptr noundef %0, ptr noundef %123) #22
  br label %124

124:                                              ; preds = %121, %115
  %125 = icmp eq i64 %117, 0
  br i1 %125, label %126, label %115, !llvm.loop !70

126:                                              ; preds = %124
  store ptr %45, ptr %11, align 8, !tbaa !57
  br label %127

127:                                              ; preds = %91, %126, %69, %57
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #23
  br label %174

128:                                              ; preds = %17
  %129 = load ptr, ptr %11, align 8, !tbaa !57
  store ptr null, ptr %11, align 8, !tbaa !57
  %130 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !11
  %132 = load i32, ptr %0, align 8, !tbaa !49
  %133 = and i32 %132, 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %150, label %135

135:                                              ; preds = %128
  %136 = load i32, ptr %131, align 8, !tbaa !6
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.demangle_component, ptr %131, i64 0, i32 1, i32 0, i32 1
  %140 = load i32, ptr %139, align 8, !tbaa !11
  %141 = icmp eq i32 %140, 6
  br i1 %141, label %142, label %150

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.demangle_component, ptr %131, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !11
  %145 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %144, ptr noundef nonnull dereferenceable(7) @.str.148, i64 noundef 6) #22
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !11
  tail call fastcc void @d_print_comp(ptr noundef nonnull %0, ptr noundef %149) #22
  tail call fastcc void @d_append_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.59) #22
  br label %161

150:                                              ; preds = %142, %138, %135, %128
  tail call fastcc void @d_print_comp(ptr noundef nonnull %0, ptr noundef %131) #22
  %151 = tail call fastcc signext i8 @d_last_char(ptr noundef nonnull %0) #22
  %152 = icmp eq i8 %151, 60
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  tail call fastcc void @d_append_char(ptr noundef nonnull %0, i8 noundef signext 32) #22
  br label %154

154:                                              ; preds = %153, %150
  tail call fastcc void @d_append_char(ptr noundef nonnull %0, i8 noundef signext 60) #22
  %155 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !11
  tail call fastcc void @d_print_comp(ptr noundef nonnull %0, ptr noundef %156) #22
  %157 = tail call fastcc signext i8 @d_last_char(ptr noundef nonnull %0) #22
  %158 = icmp eq i8 %157, 62
  br i1 %158, label %159, label %160

159:                                              ; preds = %154
  tail call fastcc void @d_append_char(ptr noundef nonnull %0, i8 noundef signext 32) #22
  br label %160

160:                                              ; preds = %159, %154
  tail call fastcc void @d_append_char(ptr noundef nonnull %0, i8 noundef signext 62) #22
  br label %161

161:                                              ; preds = %160, %147
  store ptr %129, ptr %11, align 8, !tbaa !57
  br label %174

162:                                              ; preds = %17
  %163 = tail call fastcc ptr @d_lookup_template_argument(ptr noundef %0, ptr noundef nonnull %14) #22
  %164 = icmp eq ptr %163, null
  br i1 %164, label %173, label %165

165:                                              ; preds = %162
  %166 = load i32, ptr %163, align 8, !tbaa !6
  %167 = icmp eq i32 %166, 43
  br i1 %167, label %168, label %175

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 9
  %170 = load i32, ptr %169, align 4, !tbaa !71
  %171 = tail call fastcc ptr @d_index_template_argument(ptr noundef nonnull %163, i32 noundef %170) #22
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %175

173:                                              ; preds = %162, %168
  tail call fastcc void @d_print_error(ptr noundef %0) #22
  br label %174

174:                                              ; preds = %301, %611, %575, %576, %553, %559, %558, %557, %556, %555, %403, %409, %173, %489, %493, %499, %504, %399, %392, %393, %302, %306, %261, %266, %27, %29, %646, %642, %627, %599, %590, %532, %518, %517, %505, %449, %440, %431, %423, %374, %361, %253, %212, %161, %127, %12, %613, %624, %13, %635, %603, %585, %175
  ret void

175:                                              ; preds = %165, %168
  %176 = phi ptr [ %171, %168 ], [ %163, %165 ]
  %177 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 6
  %178 = load ptr, ptr %177, align 8, !tbaa !62
  %179 = load ptr, ptr %178, align 8, !tbaa !65
  store ptr %179, ptr %177, align 8, !tbaa !62
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef nonnull %176) #22
  store ptr %178, ptr %177, align 8, !tbaa !62
  br label %174

180:                                              ; preds = %17
  %181 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  br label %40

182:                                              ; preds = %17
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 126) #22
  %183 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  br label %40

184:                                              ; preds = %17
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.149) #22
  %185 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  br label %40

186:                                              ; preds = %17
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.150) #22
  %187 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  br label %40

188:                                              ; preds = %17
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.151) #22
  %189 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !11
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %190) #22
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.152) #22
  %191 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  br label %40

192:                                              ; preds = %17
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.153) #22
  %193 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  br label %40

194:                                              ; preds = %17
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.154) #22
  %195 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  br label %40

196:                                              ; preds = %17
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.155) #22
  %197 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  br label %40

198:                                              ; preds = %17
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.156) #22
  %199 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  br label %40

200:                                              ; preds = %17
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.157) #22
  %201 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  br label %40

202:                                              ; preds = %17
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.158) #22
  %203 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  br label %40

204:                                              ; preds = %17
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.159) #22
  %205 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  br label %40

206:                                              ; preds = %17
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.160) #22
  %207 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  br label %40

208:                                              ; preds = %17
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.161) #22
  %209 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  br label %40

210:                                              ; preds = %17
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.162) #22
  %211 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  br label %40

212:                                              ; preds = %17
  %213 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !11
  %215 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %216 = load i32, ptr %215, align 8, !tbaa !11
  %217 = sext i32 %216 to i64
  tail call fastcc void @d_append_buffer(ptr noundef %0, ptr noundef %214, i64 noundef %217) #22
  br label %174

218:                                              ; preds = %17, %17, %17
  %219 = load ptr, ptr %11, align 8, !tbaa !21
  %220 = icmp eq ptr %219, null
  br i1 %220, label %239, label %221

221:                                              ; preds = %218, %234
  %222 = phi ptr [ %235, %234 ], [ %219, %218 ]
  %223 = getelementptr inbounds %struct.d_print_mod, ptr %222, i64 0, i32 2
  %224 = load i32, ptr %223, align 8, !tbaa !61
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.d_print_mod, ptr %222, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !60
  %229 = load i32, ptr %228, align 8, !tbaa !6
  %230 = add i32 %229, -23
  %231 = icmp ult i32 %230, 3
  br i1 %231, label %232, label %241

232:                                              ; preds = %226
  %233 = icmp eq i32 %229, %18
  br i1 %233, label %237, label %234

234:                                              ; preds = %221, %232
  %235 = load ptr, ptr %222, align 8, !tbaa !21
  %236 = icmp eq ptr %235, null
  br i1 %236, label %241, label %221, !llvm.loop !72

237:                                              ; preds = %232
  %238 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  br label %40

239:                                              ; preds = %218, %17, %17, %17, %17, %17, %17, %17, %17, %17
  %240 = load ptr, ptr %11, align 8, !tbaa !57
  br label %241

241:                                              ; preds = %226, %234, %239
  %242 = phi ptr [ %240, %239 ], [ %219, %234 ], [ %219, %226 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  store ptr %242, ptr %5, align 8, !tbaa !58
  store ptr %5, ptr %11, align 8, !tbaa !57
  %243 = getelementptr inbounds %struct.d_print_mod, ptr %5, i64 0, i32 1
  store ptr %14, ptr %243, align 8, !tbaa !60
  %244 = getelementptr inbounds %struct.d_print_mod, ptr %5, i64 0, i32 2
  store i32 0, ptr %244, align 8, !tbaa !61
  %245 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 6
  %246 = load ptr, ptr %245, align 8, !tbaa !62
  %247 = getelementptr inbounds %struct.d_print_mod, ptr %5, i64 0, i32 3
  store ptr %246, ptr %247, align 8, !tbaa !63
  %248 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !11
  call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %249) #22
  %250 = load i32, ptr %244, align 8, !tbaa !61
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %241
  call fastcc void @d_print_mod(ptr noundef nonnull %0, ptr noundef nonnull %14) #22
  br label %253

253:                                              ; preds = %252, %241
  %254 = load ptr, ptr %5, align 8, !tbaa !58
  store ptr %254, ptr %11, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %174

255:                                              ; preds = %17
  %256 = load i32, ptr %0, align 8, !tbaa !49
  %257 = and i32 %256, 4
  %258 = icmp eq i32 %257, 0
  %259 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !11
  br i1 %258, label %261, label %266

261:                                              ; preds = %255
  %262 = load ptr, ptr %260, align 8, !tbaa !73
  %263 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %260, i64 0, i32 1
  %264 = load i32, ptr %263, align 8, !tbaa !22
  %265 = sext i32 %264 to i64
  tail call fastcc void @d_append_buffer(ptr noundef nonnull %0, ptr noundef %262, i64 noundef %265) #22
  br label %174

266:                                              ; preds = %255
  %267 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %260, i64 0, i32 2
  %268 = load ptr, ptr %267, align 8, !tbaa !74
  %269 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %260, i64 0, i32 3
  %270 = load i32, ptr %269, align 8, !tbaa !75
  %271 = sext i32 %270 to i64
  tail call fastcc void @d_append_buffer(ptr noundef nonnull %0, ptr noundef %268, i64 noundef %271) #22
  br label %174

272:                                              ; preds = %17
  %273 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  br label %40

274:                                              ; preds = %17
  %275 = load i32, ptr %0, align 8, !tbaa !49
  %276 = and i32 %275, 32
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %280, label %278

278:                                              ; preds = %274
  %279 = load ptr, ptr %11, align 8, !tbaa !57
  tail call fastcc void @d_print_function_type(ptr noundef nonnull %0, ptr noundef nonnull %14, ptr noundef %279) #22
  br label %280

280:                                              ; preds = %278, %274
  %281 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !11
  %283 = icmp eq ptr %282, null
  br i1 %283, label %302, label %284

284:                                              ; preds = %280
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #23
  %285 = load ptr, ptr %11, align 8, !tbaa !57
  store ptr %285, ptr %6, align 8, !tbaa !58
  store ptr %6, ptr %11, align 8, !tbaa !57
  %286 = getelementptr inbounds %struct.d_print_mod, ptr %6, i64 0, i32 1
  store ptr %14, ptr %286, align 8, !tbaa !60
  %287 = getelementptr inbounds %struct.d_print_mod, ptr %6, i64 0, i32 2
  store i32 0, ptr %287, align 8, !tbaa !61
  %288 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 6
  %289 = load ptr, ptr %288, align 8, !tbaa !62
  %290 = getelementptr inbounds %struct.d_print_mod, ptr %6, i64 0, i32 3
  store ptr %289, ptr %290, align 8, !tbaa !63
  %291 = load ptr, ptr %281, align 8, !tbaa !11
  call fastcc void @d_print_comp(ptr noundef nonnull %0, ptr noundef %291) #22
  %292 = load ptr, ptr %6, align 8, !tbaa !58
  store ptr %292, ptr %11, align 8, !tbaa !57
  %293 = load i32, ptr %287, align 8, !tbaa !61
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %301

295:                                              ; preds = %284
  %296 = load i32, ptr %0, align 8, !tbaa !49
  %297 = and i32 %296, 32
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %295
  call fastcc void @d_append_char(ptr noundef nonnull %0, i8 noundef signext 32) #22
  br label %300

300:                                              ; preds = %295, %299
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #23
  br label %302

301:                                              ; preds = %284
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #23
  br label %174

302:                                              ; preds = %300, %280
  %303 = load i32, ptr %0, align 8, !tbaa !49
  %304 = and i32 %303, 32
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %174

306:                                              ; preds = %302
  %307 = load ptr, ptr %11, align 8, !tbaa !57
  call fastcc void @d_print_function_type(ptr noundef nonnull %0, ptr noundef nonnull %14, ptr noundef %307) #22
  br label %174

308:                                              ; preds = %17
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #23
  %309 = load ptr, ptr %11, align 8, !tbaa !57
  store ptr %309, ptr %7, align 16, !tbaa !58
  store ptr %7, ptr %11, align 8, !tbaa !57
  %310 = getelementptr inbounds %struct.d_print_mod, ptr %7, i64 0, i32 1
  store ptr %14, ptr %310, align 8, !tbaa !60
  %311 = getelementptr inbounds %struct.d_print_mod, ptr %7, i64 0, i32 2
  store i32 0, ptr %311, align 16, !tbaa !61
  %312 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 6
  %313 = load ptr, ptr %312, align 8, !tbaa !62
  %314 = getelementptr inbounds %struct.d_print_mod, ptr %7, i64 0, i32 3
  store ptr %313, ptr %314, align 8, !tbaa !63
  %315 = icmp eq ptr %309, null
  br i1 %315, label %341, label %316

316:                                              ; preds = %308, %336
  %317 = phi ptr [ %337, %336 ], [ %7, %308 ]
  %318 = phi ptr [ %339, %336 ], [ %309, %308 ]
  %319 = phi i32 [ %338, %336 ], [ 1, %308 ]
  %320 = getelementptr inbounds %struct.d_print_mod, ptr %318, i64 0, i32 1
  %321 = load ptr, ptr %320, align 8, !tbaa !60
  %322 = load i32, ptr %321, align 8, !tbaa !6
  %323 = add i32 %322, -23
  %324 = icmp ult i32 %323, 3
  br i1 %324, label %325, label %341

325:                                              ; preds = %316
  %326 = getelementptr inbounds %struct.d_print_mod, ptr %318, i64 0, i32 2
  %327 = load i32, ptr %326, align 8, !tbaa !61
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %336

329:                                              ; preds = %325
  %330 = icmp ugt i32 %319, 3
  br i1 %330, label %331, label %332

331:                                              ; preds = %329
  call fastcc void @d_print_error(ptr noundef %0) #22
  br label %361

332:                                              ; preds = %329
  %333 = zext nneg i32 %319 to i64
  %334 = getelementptr inbounds [4 x %struct.d_print_mod], ptr %7, i64 0, i64 %333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %334, ptr noundef nonnull align 8 dereferenceable(32) %318, i64 32, i1 false), !tbaa.struct !68
  store ptr %317, ptr %334, align 16, !tbaa !58
  store ptr %334, ptr %11, align 8, !tbaa !57
  store i32 1, ptr %326, align 8, !tbaa !61
  %335 = add nuw nsw i32 %319, 1
  br label %336

336:                                              ; preds = %332, %325
  %337 = phi ptr [ %317, %325 ], [ %334, %332 ]
  %338 = phi i32 [ %319, %325 ], [ %335, %332 ]
  %339 = load ptr, ptr %318, align 8, !tbaa !58
  %340 = icmp eq ptr %339, null
  br i1 %340, label %341, label %316, !llvm.loop !76

341:                                              ; preds = %336, %316, %308
  %342 = phi i32 [ 1, %308 ], [ %319, %316 ], [ %338, %336 ]
  %343 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %344 = load ptr, ptr %343, align 8, !tbaa !11
  call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %344) #22
  store ptr %309, ptr %11, align 8, !tbaa !57
  %345 = load i32, ptr %311, align 16, !tbaa !61
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %361

347:                                              ; preds = %341
  %348 = icmp ugt i32 %342, 1
  br i1 %348, label %349, label %359

349:                                              ; preds = %347
  %350 = zext i32 %342 to i64
  br label %351

351:                                              ; preds = %349, %351
  %352 = phi i64 [ %350, %349 ], [ %353, %351 ]
  %353 = add nsw i64 %352, -1
  %354 = getelementptr inbounds [4 x %struct.d_print_mod], ptr %7, i64 0, i64 %353, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !60
  call fastcc void @d_print_mod(ptr noundef %0, ptr noundef %355) #22
  %356 = icmp ugt i64 %353, 1
  br i1 %356, label %351, label %357, !llvm.loop !77

357:                                              ; preds = %351
  %358 = load ptr, ptr %11, align 8, !tbaa !57
  br label %359

359:                                              ; preds = %357, %347
  %360 = phi ptr [ %358, %357 ], [ %309, %347 ]
  call fastcc void @d_print_array_type(ptr noundef nonnull %0, ptr noundef nonnull %14, ptr noundef %360) #22
  br label %361

361:                                              ; preds = %341, %359, %331
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #23
  br label %174

362:                                              ; preds = %17, %17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #23
  %363 = load ptr, ptr %11, align 8, !tbaa !57
  store ptr %363, ptr %8, align 8, !tbaa !58
  store ptr %8, ptr %11, align 8, !tbaa !57
  %364 = getelementptr inbounds %struct.d_print_mod, ptr %8, i64 0, i32 1
  store ptr %14, ptr %364, align 8, !tbaa !60
  %365 = getelementptr inbounds %struct.d_print_mod, ptr %8, i64 0, i32 2
  store i32 0, ptr %365, align 8, !tbaa !61
  %366 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 6
  %367 = load ptr, ptr %366, align 8, !tbaa !62
  %368 = getelementptr inbounds %struct.d_print_mod, ptr %8, i64 0, i32 3
  store ptr %367, ptr %368, align 8, !tbaa !63
  %369 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %370 = load ptr, ptr %369, align 8, !tbaa !11
  call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %370) #22
  %371 = load i32, ptr %365, align 8, !tbaa !61
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %374

373:                                              ; preds = %362
  call fastcc void @d_print_mod(ptr noundef nonnull %0, ptr noundef nonnull %14) #22
  br label %374

374:                                              ; preds = %373, %362
  %375 = load ptr, ptr %8, align 8, !tbaa !58
  store ptr %375, ptr %11, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #23
  br label %174

376:                                              ; preds = %17
  %377 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %378 = getelementptr inbounds i8, ptr %14, i64 18
  %379 = load i16, ptr %378, align 2, !tbaa !11
  %380 = icmp eq i16 %379, 0
  br i1 %380, label %382, label %381

381:                                              ; preds = %376
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.163) #22
  br label %382

382:                                              ; preds = %381, %376
  %383 = load ptr, ptr %377, align 8, !tbaa !11
  %384 = getelementptr inbounds %struct.demangle_component, ptr %383, i64 0, i32 1
  %385 = load ptr, ptr %384, align 8, !tbaa !11
  %386 = icmp eq ptr %385, getelementptr inbounds ([32 x %struct.demangle_builtin_type_info], ptr @cplus_demangle_builtin_types, i64 0, i64 8)
  br i1 %386, label %388, label %387

387:                                              ; preds = %382
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef nonnull %383) #22
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 32) #22
  br label %388

388:                                              ; preds = %387, %382
  %389 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %390 = load i16, ptr %389, align 8, !tbaa !11
  %391 = icmp eq i16 %390, 0
  br i1 %391, label %393, label %392

392:                                              ; preds = %388
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.164) #22
  br label %174

393:                                              ; preds = %388
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.165) #22
  br label %174

394:                                              ; preds = %17, %17
  %395 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %396 = load ptr, ptr %395, align 8, !tbaa !11
  %397 = icmp eq ptr %396, null
  br i1 %397, label %399, label %398

398:                                              ; preds = %394
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef nonnull %396) #22
  br label %399

399:                                              ; preds = %398, %394
  %400 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %401 = load ptr, ptr %400, align 8, !tbaa !11
  %402 = icmp eq ptr %401, null
  br i1 %402, label %174, label %403

403:                                              ; preds = %399
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.166) #22
  %404 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %405 = load i64, ptr %404, align 8, !tbaa !52
  %406 = load ptr, ptr %400, align 8, !tbaa !11
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %406) #22
  %407 = load i64, ptr %404, align 8, !tbaa !52
  %408 = icmp eq i64 %407, %405
  br i1 %408, label %409, label %174

409:                                              ; preds = %403
  %410 = add i64 %405, -2
  store i64 %410, ptr %404, align 8, !tbaa !52
  br label %174

411:                                              ; preds = %17
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.167) #22
  %412 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %413 = load ptr, ptr %412, align 8, !tbaa !11
  %414 = getelementptr inbounds %struct.demangle_operator_info, ptr %413, i64 0, i32 1
  %415 = load ptr, ptr %414, align 8, !tbaa !78
  %416 = load i8, ptr %415, align 1, !tbaa !11
  %417 = add i8 %416, -97
  %418 = icmp ult i8 %417, 26
  br i1 %418, label %419, label %423

419:                                              ; preds = %411
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 32) #22
  %420 = load ptr, ptr %412, align 8, !tbaa !11
  %421 = getelementptr inbounds %struct.demangle_operator_info, ptr %420, i64 0, i32 1
  %422 = load ptr, ptr %421, align 8, !tbaa !78
  br label %423

423:                                              ; preds = %419, %411
  %424 = phi ptr [ %422, %419 ], [ %415, %411 ]
  %425 = phi ptr [ %420, %419 ], [ %413, %411 ]
  %426 = getelementptr inbounds %struct.demangle_operator_info, ptr %425, i64 0, i32 2
  %427 = load i32, ptr %426, align 8, !tbaa !29
  %428 = sext i32 %427 to i64
  tail call fastcc void @d_append_buffer(ptr noundef %0, ptr noundef %424, i64 noundef %428) #22
  br label %174

429:                                              ; preds = %17
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.168) #22
  %430 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  br label %40

431:                                              ; preds = %17
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.168) #22
  tail call fastcc void @d_print_cast(ptr noundef %0, ptr noundef nonnull %14) #22
  br label %174

432:                                              ; preds = %17
  %433 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %434 = load ptr, ptr %433, align 8, !tbaa !11
  %435 = load i32, ptr %434, align 8, !tbaa !6
  %436 = icmp eq i32 %435, 46
  br i1 %436, label %438, label %437

437:                                              ; preds = %432
  tail call fastcc void @d_print_expr_op(ptr noundef %0, ptr noundef nonnull %434) #22
  br label %440

438:                                              ; preds = %432
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 40) #22
  %439 = load ptr, ptr %433, align 8, !tbaa !11
  tail call fastcc void @d_print_cast(ptr noundef %0, ptr noundef %439) #22
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 41) #22
  br label %440

440:                                              ; preds = %438, %437
  %441 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %442 = load ptr, ptr %441, align 8, !tbaa !11
  tail call fastcc void @d_print_subexpr(ptr noundef %0, ptr noundef %442) #22
  br label %174

443:                                              ; preds = %17
  %444 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %445 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %446 = load ptr, ptr %445, align 8, !tbaa !11
  %447 = load i32, ptr %446, align 8, !tbaa !6
  %448 = icmp eq i32 %447, 49
  br i1 %448, label %450, label %449

449:                                              ; preds = %443
  tail call fastcc void @d_print_error(ptr noundef %0) #22
  br label %174

450:                                              ; preds = %443
  %451 = load ptr, ptr %444, align 8, !tbaa !11
  %452 = load i32, ptr %451, align 8, !tbaa !6
  %453 = icmp eq i32 %452, 44
  br i1 %453, label %454, label %467

454:                                              ; preds = %450
  %455 = getelementptr inbounds %struct.demangle_component, ptr %451, i64 0, i32 1
  %456 = load ptr, ptr %455, align 8, !tbaa !11
  %457 = getelementptr inbounds %struct.demangle_operator_info, ptr %456, i64 0, i32 2
  %458 = load i32, ptr %457, align 8, !tbaa !29
  %459 = icmp eq i32 %458, 1
  br i1 %459, label %460, label %467

460:                                              ; preds = %454
  %461 = getelementptr inbounds %struct.demangle_operator_info, ptr %456, i64 0, i32 1
  %462 = load ptr, ptr %461, align 8, !tbaa !78
  %463 = load i8, ptr %462, align 1, !tbaa !11
  %464 = icmp eq i8 %463, 62
  br i1 %464, label %465, label %467

465:                                              ; preds = %460
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 40) #22
  %466 = load ptr, ptr %445, align 8, !tbaa !11
  br label %467

467:                                              ; preds = %465, %460, %454, %450
  %468 = phi ptr [ %466, %465 ], [ %446, %460 ], [ %446, %454 ], [ %446, %450 ]
  %469 = getelementptr inbounds %struct.demangle_component, ptr %468, i64 0, i32 1
  %470 = load ptr, ptr %469, align 8, !tbaa !11
  tail call fastcc void @d_print_subexpr(ptr noundef %0, ptr noundef %470) #22
  %471 = load ptr, ptr %444, align 8, !tbaa !11
  %472 = getelementptr inbounds %struct.demangle_component, ptr %471, i64 0, i32 1
  %473 = load ptr, ptr %472, align 8, !tbaa !11
  %474 = load ptr, ptr %473, align 8, !tbaa !44
  %475 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %474, ptr noundef nonnull dereferenceable(3) @.str.58) #22
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %477, label %481

477:                                              ; preds = %467
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 91) #22
  %478 = load ptr, ptr %445, align 8, !tbaa !11
  %479 = getelementptr inbounds %struct.demangle_component, ptr %478, i64 0, i32 1, i32 0, i32 1
  %480 = load ptr, ptr %479, align 8, !tbaa !11
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %480) #22
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 93) #22
  br label %489

481:                                              ; preds = %467
  %482 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %474, ptr noundef nonnull dereferenceable(3) @.str.20) #22
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %485, label %484

484:                                              ; preds = %481
  tail call fastcc void @d_print_expr_op(ptr noundef %0, ptr noundef nonnull %471) #22
  br label %485

485:                                              ; preds = %484, %481
  %486 = load ptr, ptr %445, align 8, !tbaa !11
  %487 = getelementptr inbounds %struct.demangle_component, ptr %486, i64 0, i32 1, i32 0, i32 1
  %488 = load ptr, ptr %487, align 8, !tbaa !11
  tail call fastcc void @d_print_subexpr(ptr noundef %0, ptr noundef %488) #22
  br label %489

489:                                              ; preds = %485, %477
  %490 = load ptr, ptr %444, align 8, !tbaa !11
  %491 = load i32, ptr %490, align 8, !tbaa !6
  %492 = icmp eq i32 %491, 44
  br i1 %492, label %493, label %174

493:                                              ; preds = %489
  %494 = getelementptr inbounds %struct.demangle_component, ptr %490, i64 0, i32 1
  %495 = load ptr, ptr %494, align 8, !tbaa !11
  %496 = getelementptr inbounds %struct.demangle_operator_info, ptr %495, i64 0, i32 2
  %497 = load i32, ptr %496, align 8, !tbaa !29
  %498 = icmp eq i32 %497, 1
  br i1 %498, label %499, label %174

499:                                              ; preds = %493
  %500 = getelementptr inbounds %struct.demangle_operator_info, ptr %495, i64 0, i32 1
  %501 = load ptr, ptr %500, align 8, !tbaa !78
  %502 = load i8, ptr %501, align 1, !tbaa !11
  %503 = icmp eq i8 %502, 62
  br i1 %503, label %504, label %174

504:                                              ; preds = %499
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 41) #22
  br label %174

505:                                              ; preds = %17
  tail call fastcc void @d_print_error(ptr noundef %0) #22
  br label %174

506:                                              ; preds = %17
  %507 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %508 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %509 = load ptr, ptr %508, align 8, !tbaa !11
  %510 = load i32, ptr %509, align 8, !tbaa !6
  %511 = icmp eq i32 %510, 51
  br i1 %511, label %512, label %517

512:                                              ; preds = %506
  %513 = getelementptr inbounds %struct.demangle_component, ptr %509, i64 0, i32 1, i32 0, i32 1
  %514 = load ptr, ptr %513, align 8, !tbaa !11
  %515 = load i32, ptr %514, align 8, !tbaa !6
  %516 = icmp eq i32 %515, 52
  br i1 %516, label %518, label %517

517:                                              ; preds = %512, %506
  tail call fastcc void @d_print_error(ptr noundef %0) #22
  br label %174

518:                                              ; preds = %512
  %519 = getelementptr inbounds %struct.demangle_component, ptr %509, i64 0, i32 1
  %520 = load ptr, ptr %519, align 8, !tbaa !11
  tail call fastcc void @d_print_subexpr(ptr noundef %0, ptr noundef %520) #22
  %521 = load ptr, ptr %507, align 8, !tbaa !11
  tail call fastcc void @d_print_expr_op(ptr noundef %0, ptr noundef %521) #22
  %522 = load ptr, ptr %508, align 8, !tbaa !11
  %523 = getelementptr inbounds %struct.demangle_component, ptr %522, i64 0, i32 1, i32 0, i32 1
  %524 = load ptr, ptr %523, align 8, !tbaa !11
  %525 = getelementptr inbounds %struct.demangle_component, ptr %524, i64 0, i32 1
  %526 = load ptr, ptr %525, align 8, !tbaa !11
  tail call fastcc void @d_print_subexpr(ptr noundef %0, ptr noundef %526) #22
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.169) #22
  %527 = load ptr, ptr %508, align 8, !tbaa !11
  %528 = getelementptr inbounds %struct.demangle_component, ptr %527, i64 0, i32 1, i32 0, i32 1
  %529 = load ptr, ptr %528, align 8, !tbaa !11
  %530 = getelementptr inbounds %struct.demangle_component, ptr %529, i64 0, i32 1, i32 0, i32 1
  %531 = load ptr, ptr %530, align 8, !tbaa !11
  tail call fastcc void @d_print_subexpr(ptr noundef %0, ptr noundef %531) #22
  br label %174

532:                                              ; preds = %17, %17
  tail call fastcc void @d_print_error(ptr noundef %0) #22
  br label %174

533:                                              ; preds = %17, %17
  %534 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %535 = load ptr, ptr %534, align 8, !tbaa !11
  %536 = load i32, ptr %535, align 8, !tbaa !6
  %537 = icmp eq i32 %536, 35
  br i1 %537, label %538, label %577

538:                                              ; preds = %533
  %539 = getelementptr inbounds %struct.demangle_component, ptr %535, i64 0, i32 1
  %540 = load ptr, ptr %539, align 8, !tbaa !11
  %541 = getelementptr inbounds %struct.demangle_builtin_type_info, ptr %540, i64 0, i32 4
  %542 = load i32, ptr %541, align 4, !tbaa !46
  switch i32 %542, label %577 [
    i32 1, label %543
    i32 2, label %543
    i32 3, label %543
    i32 4, label %543
    i32 5, label %543
    i32 6, label %543
    i32 7, label %560
  ]

543:                                              ; preds = %538, %538, %538, %538, %538, %538
  %544 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %545 = load ptr, ptr %544, align 8, !tbaa !11
  %546 = load i32, ptr %545, align 8, !tbaa !6
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %548, label %577

548:                                              ; preds = %543
  %549 = icmp eq i32 %18, 54
  br i1 %549, label %550, label %553

550:                                              ; preds = %548
  %551 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 45) #22
  %552 = load ptr, ptr %551, align 8, !tbaa !11
  br label %553

553:                                              ; preds = %550, %548
  %554 = phi ptr [ %552, %550 ], [ %545, %548 ]
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %554) #22
  switch i32 %542, label %174 [
    i32 2, label %555
    i32 3, label %556
    i32 4, label %557
    i32 5, label %558
    i32 6, label %559
  ]

555:                                              ; preds = %553
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 117) #22
  br label %174

556:                                              ; preds = %553
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 108) #22
  br label %174

557:                                              ; preds = %553
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.170) #22
  br label %174

558:                                              ; preds = %553
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.171) #22
  br label %174

559:                                              ; preds = %553
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.172) #22
  br label %174

560:                                              ; preds = %538
  %561 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %562 = load ptr, ptr %561, align 8, !tbaa !11
  %563 = load i32, ptr %562, align 8, !tbaa !6
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %565, label %577

565:                                              ; preds = %560
  %566 = getelementptr inbounds %struct.demangle_component, ptr %562, i64 0, i32 1, i32 0, i32 1
  %567 = load i32, ptr %566, align 8, !tbaa !11
  %568 = icmp eq i32 %567, 1
  %569 = icmp eq i32 %18, 53
  %570 = and i1 %569, %568
  br i1 %570, label %571, label %577

571:                                              ; preds = %565
  %572 = getelementptr inbounds %struct.demangle_component, ptr %562, i64 0, i32 1
  %573 = load ptr, ptr %572, align 8, !tbaa !11
  %574 = load i8, ptr %573, align 1, !tbaa !11
  switch i8 %574, label %577 [
    i8 48, label %575
    i8 49, label %576
  ]

575:                                              ; preds = %571
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.173) #22
  br label %174

576:                                              ; preds = %571
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.174) #22
  br label %174

577:                                              ; preds = %543, %571, %565, %560, %538, %533
  %578 = phi i32 [ %542, %538 ], [ 7, %571 ], [ 7, %565 ], [ 7, %560 ], [ %542, %543 ], [ 0, %533 ]
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 40) #22
  %579 = load ptr, ptr %534, align 8, !tbaa !11
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %579) #22
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 41) #22
  %580 = load i32, ptr %14, align 8, !tbaa !6
  %581 = icmp eq i32 %580, 54
  br i1 %581, label %582, label %583

582:                                              ; preds = %577
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 45) #22
  br label %583

583:                                              ; preds = %582, %577
  %584 = icmp eq i32 %578, 8
  br i1 %584, label %585, label %588

585:                                              ; preds = %583
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 91) #22
  %586 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %587 = load ptr, ptr %586, align 8, !tbaa !11
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %587) #22
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 93) #22
  br label %174

588:                                              ; preds = %583
  %589 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  br label %40

590:                                              ; preds = %17
  %591 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %592 = load i64, ptr %591, align 8, !tbaa !11
  tail call fastcc void @d_append_num(ptr noundef %0, i64 noundef %592) #22
  br label %174

593:                                              ; preds = %17
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.175) #22
  %594 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  br label %40

595:                                              ; preds = %17
  %596 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %597 = load ptr, ptr %596, align 8, !tbaa !11
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %597) #22
  %598 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  br label %40

599:                                              ; preds = %17
  %600 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %601 = load i32, ptr %600, align 8, !tbaa !11
  %602 = trunc i32 %601 to i8
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext %602) #22
  br label %174

603:                                              ; preds = %17
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.176) #22
  %604 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %605 = load ptr, ptr %604, align 8, !tbaa !11
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %605) #22
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 41) #22
  br label %174

606:                                              ; preds = %17
  %607 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %608 = load ptr, ptr %607, align 8, !tbaa !11
  %609 = tail call fastcc ptr @d_find_pack(ptr noundef %0, ptr noundef %608) #22
  %610 = icmp eq ptr %609, null
  br i1 %610, label %611, label %613

611:                                              ; preds = %606
  %612 = load ptr, ptr %607, align 8, !tbaa !11
  tail call fastcc void @d_print_subexpr(ptr noundef %0, ptr noundef %612) #22
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.140) #22
  br label %174

613:                                              ; preds = %606
  %614 = tail call fastcc i32 @d_pack_length(ptr noundef nonnull %609) #22
  %615 = load ptr, ptr %607, align 8, !tbaa !11
  %616 = icmp sgt i32 %614, 0
  br i1 %616, label %617, label %174

617:                                              ; preds = %613
  %618 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 9
  %619 = add nsw i32 %614, -1
  br label %620

620:                                              ; preds = %617, %624
  %621 = phi i32 [ 0, %617 ], [ %625, %624 ]
  store i32 %621, ptr %618, align 4, !tbaa !71
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %615) #22
  %622 = icmp slt i32 %621, %619
  br i1 %622, label %623, label %624

623:                                              ; preds = %620
  tail call fastcc void @d_append_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.166) #22
  br label %624

624:                                              ; preds = %620, %623
  %625 = add nuw nsw i32 %621, 1
  %626 = icmp eq i32 %625, %614
  br i1 %626, label %174, label %620, !llvm.loop !79

627:                                              ; preds = %17
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.177) #22
  %628 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %629 = load i64, ptr %628, align 8, !tbaa !11
  %630 = add nsw i64 %629, 1
  tail call fastcc void @d_append_num(ptr noundef %0, i64 noundef %630) #22
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 125) #22
  br label %174

631:                                              ; preds = %17
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.178) #22
  %632 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  br label %40

633:                                              ; preds = %17
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.179) #22
  %634 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  br label %40

635:                                              ; preds = %17
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.180) #22
  %636 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %637 = load ptr, ptr %636, align 8, !tbaa !11
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %637) #22
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.181) #22
  %638 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1, i32 0, i32 1
  %639 = load i32, ptr %638, align 8, !tbaa !11
  %640 = add nsw i32 %639, 1
  %641 = sext i32 %640 to i64
  tail call fastcc void @d_append_num(ptr noundef %0, i64 noundef %641) #22
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 125) #22
  br label %174

642:                                              ; preds = %17
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.182) #22
  %643 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %644 = load i64, ptr %643, align 8, !tbaa !11
  %645 = add nsw i64 %644, 1
  tail call fastcc void @d_append_num(ptr noundef %0, i64 noundef %645) #22
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 125) #22
  br label %174

646:                                              ; preds = %17
  tail call fastcc void @d_print_error(ptr noundef %0) #22
  br label %174
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @d_print_flush(ptr noundef %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %4
  store i8 0, ptr %5, align 1, !tbaa !11
  %6 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = load i64, ptr %3, align 8, !tbaa !52
  %9 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  tail call void %7(ptr noundef nonnull %2, i64 noundef %8, ptr noundef %10) #24
  store i64 0, ptr %3, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @d_print_saw_error(ptr nocapture noundef readonly %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !56
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @d_print_error(ptr nocapture noundef writeonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 8
  store i32 1, ptr %2, align 8, !tbaa !56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @d_append_buffer(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #11 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ %9, %5 ], [ 0, %3 ]
  %7 = getelementptr inbounds i8, ptr %1, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !11
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext %8) #22
  %9 = add nuw i64 %6, 1
  %10 = icmp eq i64 %9, %2
  br i1 %10, label %11, label %5, !llvm.loop !80

11:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @d_print_java_identifier(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #11 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds i8, ptr %1, i64 %4
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %67

7:                                                ; preds = %3
  %8 = ptrtoint ptr %5 to i64
  br label %9

9:                                                ; preds = %7, %62
  %10 = phi ptr [ %1, %7 ], [ %65, %62 ]
  %11 = ptrtoint ptr %10 to i64
  %12 = sub i64 %8, %11
  %13 = icmp sgt i64 %12, 3
  %14 = load i8, ptr %10, align 1, !tbaa !11
  %15 = icmp eq i8 %14, 95
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %17, label %62

17:                                               ; preds = %9
  %18 = getelementptr inbounds i8, ptr %10, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !11
  %20 = icmp eq i8 %19, 95
  br i1 %20, label %21, label %62

21:                                               ; preds = %17
  %22 = getelementptr inbounds i8, ptr %10, i64 2
  %23 = load i8, ptr %22, align 1, !tbaa !11
  %24 = icmp eq i8 %23, 85
  %25 = getelementptr inbounds i8, ptr %10, i64 3
  %26 = icmp ult ptr %25, %5
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %62

28:                                               ; preds = %21, %48
  %29 = phi ptr [ %53, %48 ], [ %25, %21 ]
  %30 = phi i64 [ %52, %48 ], [ 0, %21 ]
  %31 = load i8, ptr %29, align 1, !tbaa !11
  %32 = add i8 %31, -48
  %33 = icmp ult i8 %32, 10
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = zext nneg i8 %32 to i64
  br label %48

36:                                               ; preds = %28
  %37 = add i8 %31, -65
  %38 = icmp ult i8 %37, 6
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = zext nneg i8 %31 to i64
  %41 = add nuw nsw i64 %40, 4294967241
  br label %48

42:                                               ; preds = %36
  %43 = add i8 %31, -97
  %44 = icmp ult i8 %43, 6
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = zext nneg i8 %31 to i64
  %47 = add nuw nsw i64 %46, 4294967209
  br label %48

48:                                               ; preds = %34, %45, %39
  %49 = phi i64 [ %35, %34 ], [ %41, %39 ], [ %47, %45 ]
  %50 = shl i64 %30, 4
  %51 = and i64 %49, 4294967295
  %52 = add i64 %51, %50
  %53 = getelementptr inbounds i8, ptr %29, i64 1
  %54 = icmp ult ptr %53, %5
  br i1 %54, label %28, label %62, !llvm.loop !81

55:                                               ; preds = %42
  %56 = icmp eq i8 %31, 95
  %57 = icmp ult i64 %30, 256
  %58 = select i1 %56, i1 %57, i1 false
  %59 = trunc i64 %30 to i8
  %60 = select i1 %58, i8 %59, i8 %14
  %61 = select i1 %58, ptr %29, ptr %10
  br label %62

62:                                               ; preds = %48, %55, %9, %17, %21
  %63 = phi i8 [ %14, %21 ], [ %14, %17 ], [ %14, %9 ], [ %60, %55 ], [ %14, %48 ]
  %64 = phi ptr [ %10, %21 ], [ %10, %17 ], [ %10, %9 ], [ %61, %55 ], [ %10, %48 ]
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext %63) #22
  %65 = getelementptr inbounds i8, ptr %64, i64 1
  %66 = icmp ult ptr %65, %5
  br i1 %66, label %9, label %67, !llvm.loop !82

67:                                               ; preds = %62, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @d_append_string(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #11 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  tail call fastcc void @d_append_buffer(ptr noundef %0, ptr noundef %1, i64 noundef %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @d_append_char(ptr noundef %0, i8 noundef signext %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !52
  %5 = icmp eq i64 %4, 255
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  tail call fastcc void @d_print_flush(ptr noundef nonnull %0) #22
  %7 = load i64, ptr %3, align 8, !tbaa !52
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i64 [ %7, %6 ], [ %4, %2 ]
  %10 = add i64 %9, 1
  store i64 %10, ptr %3, align 8, !tbaa !52
  %11 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 1, i64 %9
  store i8 %1, ptr %11, align 1, !tbaa !11
  %12 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  store i8 %1, ptr %12, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @d_print_mod(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
  %3 = load i32, ptr %1, align 8, !tbaa !6
  switch i32 %3, label %32 [
    i32 23, label %4
    i32 26, label %4
    i32 24, label %5
    i32 27, label %5
    i32 25, label %6
    i32 28, label %6
    i32 29, label %7
    i32 30, label %10
    i32 31, label %15
    i32 32, label %16
    i32 33, label %17
    i32 34, label %18
    i32 39, label %19
    i32 3, label %26
    i32 41, label %29
  ]

4:                                                ; preds = %2, %2
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.183) #22
  br label %33

5:                                                ; preds = %2, %2
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.184) #22
  br label %33

6:                                                ; preds = %2, %2
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.185) #22
  br label %33

7:                                                ; preds = %2
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 32) #22
  %8 = getelementptr inbounds %struct.demangle_component, ptr %1, i64 0, i32 1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %9) #22
  br label %33

10:                                               ; preds = %2
  %11 = load i32, ptr %0, align 8, !tbaa !49
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  tail call fastcc void @d_append_char(ptr noundef nonnull %0, i8 noundef signext 42) #22
  br label %33

15:                                               ; preds = %2
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 38) #22
  br label %33

16:                                               ; preds = %2
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.28) #22
  br label %33

17:                                               ; preds = %2
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.186) #22
  br label %33

18:                                               ; preds = %2
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.187) #22
  br label %33

19:                                               ; preds = %2
  %20 = tail call fastcc signext i8 @d_last_char(ptr noundef %0) #22
  %21 = icmp eq i8 %20, 40
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 32) #22
  br label %23

23:                                               ; preds = %22, %19
  %24 = getelementptr inbounds %struct.demangle_component, ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !11
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %25) #22
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.188) #22
  br label %33

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.demangle_component, ptr %1, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !11
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %28) #22
  br label %33

29:                                               ; preds = %2
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.189) #22
  %30 = getelementptr inbounds %struct.demangle_component, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %31) #22
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 41) #22
  br label %33

32:                                               ; preds = %2
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef nonnull %1) #22
  br label %33

33:                                               ; preds = %10, %14, %32, %29, %26, %23, %18, %17, %16, %15, %7, %6, %5, %4
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc signext i8 @d_last_char(ptr nocapture noundef readonly %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 8, !tbaa !53
  ret i8 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_lookup_template_argument(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call fastcc void @d_print_error(ptr noundef nonnull %0) #22
  br label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.d_print_template, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.demangle_component, ptr %9, i64 0, i32 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = getelementptr inbounds %struct.demangle_component, ptr %1, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !11
  %14 = trunc i64 %13 to i32
  %15 = tail call fastcc ptr @d_index_template_argument(ptr noundef %11, i32 noundef %14) #22
  br label %16

16:                                               ; preds = %7, %6
  %17 = phi ptr [ null, %6 ], [ %15, %7 ]
  ret ptr %17
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_index_template_argument(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2, %11
  %5 = phi ptr [ %14, %11 ], [ %0, %2 ]
  %6 = phi i32 [ %12, %11 ], [ %1, %2 ]
  %7 = load i32, ptr %5, align 8, !tbaa !6
  %8 = icmp eq i32 %7, 43
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = icmp slt i32 %6, 1
  br i1 %10, label %16, label %11

11:                                               ; preds = %9
  %12 = add nsw i32 %6, -1
  %13 = getelementptr inbounds %struct.demangle_component, ptr %5, i64 0, i32 1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %4, !llvm.loop !83

16:                                               ; preds = %9
  %17 = icmp sgt i32 %1, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.demangle_component, ptr %5, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  br label %21

21:                                               ; preds = %4, %11, %2, %16, %18
  %22 = phi ptr [ %20, %18 ], [ null, %16 ], [ null, %2 ], [ null, %11 ], [ null, %4 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @d_print_function_type(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #11 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.d_print_mod, ptr %2, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !61
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %21

9:                                                ; preds = %18
  %10 = getelementptr inbounds %struct.d_print_mod, ptr %19, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !61
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21, !llvm.loop !84

13:                                               ; preds = %5, %9
  %14 = phi ptr [ %19, %9 ], [ %2, %5 ]
  %15 = getelementptr inbounds %struct.d_print_mod, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !60
  %17 = load i32, ptr %16, align 8, !tbaa !6
  switch i32 %17, label %18 [
    i32 30, label %33
    i32 31, label %33
    i32 32, label %33
    i32 23, label %21
    i32 24, label %21
    i32 25, label %21
    i32 29, label %21
    i32 33, label %21
    i32 34, label %21
    i32 39, label %21
  ]

18:                                               ; preds = %13
  %19 = load ptr, ptr %14, align 8, !tbaa !58
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %9, !llvm.loop !84

21:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %9, %18, %5, %3
  %22 = phi i1 [ false, %3 ], [ %8, %5 ], [ %8, %18 ], [ %8, %9 ], [ %8, %13 ], [ %8, %13 ], [ %8, %13 ], [ %8, %13 ], [ %8, %13 ], [ %8, %13 ], [ %8, %13 ]
  %23 = phi i1 [ true, %3 ], [ true, %5 ], [ false, %13 ], [ false, %13 ], [ false, %13 ], [ false, %13 ], [ false, %13 ], [ false, %13 ], [ false, %13 ], [ true, %9 ], [ true, %18 ]
  %24 = getelementptr inbounds %struct.demangle_component, ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !11
  %26 = icmp eq ptr %25, null
  %27 = or i1 %22, %26
  %28 = and i1 %23, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  store ptr null, ptr %30, align 8, !tbaa !57
  tail call fastcc void @d_print_mod_list(ptr noundef %0, ptr noundef %2, i32 noundef 0) #22
  br label %42

32:                                               ; preds = %21
  br i1 %23, label %33, label %35

33:                                               ; preds = %13, %13, %13, %32
  %34 = tail call fastcc signext i8 @d_last_char(ptr noundef %0) #22
  switch i8 %34, label %35 [
    i8 40, label %39
    i8 42, label %39
  ]

35:                                               ; preds = %33, %32
  %36 = tail call fastcc signext i8 @d_last_char(ptr noundef %0) #22
  %37 = icmp eq i8 %36, 32
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 32) #22
  br label %39

39:                                               ; preds = %33, %33, %38, %35
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 40) #22
  %40 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !57
  store ptr null, ptr %40, align 8, !tbaa !57
  tail call fastcc void @d_print_mod_list(ptr noundef %0, ptr noundef %2, i32 noundef 0) #22
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 41) #22
  br label %42

42:                                               ; preds = %29, %39
  %43 = phi ptr [ %31, %29 ], [ %41, %39 ]
  %44 = phi ptr [ %30, %29 ], [ %40, %39 ]
  tail call fastcc void @d_append_char(ptr noundef nonnull %0, i8 noundef signext 40) #22
  %45 = getelementptr inbounds %struct.demangle_component, ptr %1, i64 0, i32 1, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !11
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  tail call fastcc void @d_print_comp(ptr noundef nonnull %0, ptr noundef nonnull %46) #22
  br label %49

49:                                               ; preds = %48, %42
  tail call fastcc void @d_append_char(ptr noundef nonnull %0, i8 noundef signext 41) #22
  tail call fastcc void @d_print_mod_list(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 1) #22
  store ptr %43, ptr %44, align 8, !tbaa !57
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @d_print_array_type(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #11 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %3, %10
  %6 = phi ptr [ %11, %10 ], [ %2, %3 ]
  %7 = getelementptr inbounds %struct.d_print_mod, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !61
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %6, align 8, !tbaa !58
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %5, !llvm.loop !85

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.d_print_mod, ptr %6, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !60
  %16 = load i32, ptr %15, align 8, !tbaa !6
  %17 = icmp eq i32 %16, 38
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call fastcc void @d_print_mod_list(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0) #22
  br label %22

19:                                               ; preds = %13
  tail call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull @.str.192) #22
  tail call fastcc void @d_print_mod_list(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0) #22
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 41) #22
  br label %21

20:                                               ; preds = %10
  tail call fastcc void @d_print_mod_list(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 0) #22
  br label %21

21:                                               ; preds = %20, %19, %3
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 32) #22
  br label %22

22:                                               ; preds = %18, %21
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 91) #22
  %23 = getelementptr inbounds %struct.demangle_component, ptr %1, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef nonnull %24) #22
  br label %27

27:                                               ; preds = %26, %22
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 93) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @d_print_cast(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #11 {
  %3 = alloca %struct.d_print_template, align 8
  %4 = getelementptr inbounds %struct.demangle_component, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = load i32, ptr %5, align 8, !tbaa !6
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef nonnull %5) #22
  br label %30

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  %10 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  store ptr null, ptr %10, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  store ptr %13, ptr %3, align 8, !tbaa !65
  store ptr %3, ptr %12, align 8, !tbaa !62
  %14 = load ptr, ptr %4, align 8, !tbaa !11
  %15 = getelementptr inbounds %struct.d_print_template, ptr %3, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.demangle_component, ptr %14, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  call fastcc void @d_print_comp(ptr noundef %0, ptr noundef %17) #22
  %18 = load ptr, ptr %3, align 8, !tbaa !65
  store ptr %18, ptr %12, align 8, !tbaa !62
  %19 = call fastcc signext i8 @d_last_char(ptr noundef %0) #22
  %20 = icmp eq i8 %19, 60
  br i1 %20, label %21, label %22

21:                                               ; preds = %9
  call fastcc void @d_append_char(ptr noundef nonnull %0, i8 noundef signext 32) #22
  br label %22

22:                                               ; preds = %21, %9
  call fastcc void @d_append_char(ptr noundef nonnull %0, i8 noundef signext 60) #22
  %23 = load ptr, ptr %4, align 8, !tbaa !11
  %24 = getelementptr inbounds %struct.demangle_component, ptr %23, i64 0, i32 1, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !11
  call fastcc void @d_print_comp(ptr noundef nonnull %0, ptr noundef %25) #22
  %26 = call fastcc signext i8 @d_last_char(ptr noundef nonnull %0) #22
  %27 = icmp eq i8 %26, 62
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  call fastcc void @d_append_char(ptr noundef nonnull %0, i8 noundef signext 32) #22
  br label %29

29:                                               ; preds = %28, %22
  call fastcc void @d_append_char(ptr noundef nonnull %0, i8 noundef signext 62) #22
  store ptr %11, ptr %10, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  br label %30

30:                                               ; preds = %29, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @d_print_expr_op(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
  %3 = load i32, ptr %1, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 44
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.demangle_component, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  %8 = getelementptr inbounds %struct.demangle_operator_info, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !78
  %10 = getelementptr inbounds %struct.demangle_operator_info, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !29
  %12 = sext i32 %11 to i64
  tail call fastcc void @d_append_buffer(ptr noundef %0, ptr noundef %9, i64 noundef %12) #22
  br label %14

13:                                               ; preds = %2
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef nonnull %1) #22
  br label %14

14:                                               ; preds = %13, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @d_print_subexpr(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
  %3 = load i32, ptr %1, align 8, !tbaa !6
  switch i32 %3, label %4 [
    i32 6, label %5
    i32 0, label %5
  ]

4:                                                ; preds = %2
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 40) #22
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef nonnull %1) #22
  tail call fastcc void @d_append_char(ptr noundef %0, i8 noundef signext 41) #22
  br label %6

5:                                                ; preds = %2, %2
  tail call fastcc void @d_print_comp(ptr noundef %0, ptr noundef nonnull %1) #22
  br label %6

6:                                                ; preds = %5, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @d_append_num(ptr noundef %0, i64 noundef %1) unnamed_addr #11 {
  %3 = alloca [25 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %3) #23
  %4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.193, i64 noundef %1) #22
  call fastcc void @d_append_string(ptr noundef %0, ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %3) #23
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @d_find_pack(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #14 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %2, %14
  %5 = phi ptr [ %16, %14 ], [ %1, %2 ]
  %6 = load i32, ptr %5, align 8, !tbaa !6
  switch i32 %6, label %18 [
    i32 5, label %7
    i32 65, label %23
    i32 0, label %23
    i32 44, label %23
    i32 35, label %23
    i32 22, label %23
    i32 57, label %23
    i32 6, label %23
    i32 45, label %14
    i32 7, label %14
    i32 8, label %14
  ]

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @d_lookup_template_argument(ptr noundef %0, ptr noundef nonnull %5) #22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr %8, align 8, !tbaa !6
  %12 = icmp eq i32 %11, 43
  br i1 %12, label %23, label %13

13:                                               ; preds = %10, %7
  br label %23

14:                                               ; preds = %18, %4, %4, %4
  %15 = getelementptr inbounds %struct.demangle_component, ptr %5, i64 0, i32 1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %4

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.demangle_component, ptr %5, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  %21 = tail call fastcc ptr @d_find_pack(ptr noundef %0, ptr noundef %20) #22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %14, label %23

23:                                               ; preds = %14, %4, %4, %4, %4, %4, %4, %4, %18, %2, %10, %13
  %24 = phi ptr [ null, %13 ], [ %8, %10 ], [ null, %2 ], [ null, %14 ], [ null, %4 ], [ null, %4 ], [ null, %4 ], [ null, %4 ], [ null, %4 ], [ null, %4 ], [ null, %4 ], [ %21, %18 ]
  ret ptr %24
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @d_pack_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1, %12
  %4 = phi i32 [ %13, %12 ], [ 0, %1 ]
  %5 = phi ptr [ %15, %12 ], [ %0, %1 ]
  %6 = load i32, ptr %5, align 8, !tbaa !6
  %7 = icmp eq i32 %6, 43
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.demangle_component, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = add nuw nsw i32 %4, 1
  %14 = getelementptr inbounds %struct.demangle_component, ptr %5, i64 0, i32 1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %3, !llvm.loop !86

17:                                               ; preds = %8, %12, %3, %1
  %18 = phi i32 [ 0, %1 ], [ %4, %3 ], [ %13, %12 ], [ %4, %8 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @d_print_mod_list(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #11 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %75, label %5

5:                                                ; preds = %3
  %6 = icmp eq i32 %2, 0
  %7 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 6
  br label %8

8:                                                ; preds = %5, %23
  %9 = phi ptr [ %1, %5 ], [ %24, %23 ]
  %10 = tail call fastcc i32 @d_print_saw_error(ptr noundef %0) #22, !range !19
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %75

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.d_print_mod, ptr %9, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !61
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.d_print_mod, ptr %9, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !60
  %19 = load i32, ptr %18, align 8, !tbaa !6
  %20 = add i32 %19, -26
  %21 = icmp ult i32 %20, 3
  %22 = select i1 %6, i1 %21, i1 false
  br i1 %22, label %23, label %26

23:                                               ; preds = %16, %12, %73
  %24 = load ptr, ptr %9, align 8, !tbaa !58
  %25 = icmp eq ptr %24, null
  br i1 %25, label %75, label %8

26:                                               ; preds = %16
  store i32 1, ptr %13, align 8, !tbaa !61
  %27 = load ptr, ptr %7, align 8, !tbaa !62
  %28 = getelementptr inbounds %struct.d_print_mod, ptr %9, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !63
  store ptr %29, ptr %7, align 8, !tbaa !62
  switch i32 %19, label %73 [
    i32 37, label %30
    i32 38, label %32
    i32 2, label %34
  ]

30:                                               ; preds = %26
  %31 = load ptr, ptr %9, align 8, !tbaa !58
  tail call fastcc void @d_print_function_type(ptr noundef nonnull %0, ptr noundef nonnull %18, ptr noundef %31) #22
  br label %74

32:                                               ; preds = %26
  %33 = load ptr, ptr %9, align 8, !tbaa !58
  tail call fastcc void @d_print_array_type(ptr noundef nonnull %0, ptr noundef nonnull %18, ptr noundef %33) #22
  br label %74

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.d_print_mod, ptr %9, i64 0, i32 1
  %36 = getelementptr inbounds %struct.d_print_info, ptr %0, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !57
  store ptr null, ptr %36, align 8, !tbaa !57
  %38 = getelementptr inbounds %struct.demangle_component, ptr %18, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !11
  tail call fastcc void @d_print_comp(ptr noundef nonnull %0, ptr noundef %39) #22
  store ptr %37, ptr %36, align 8, !tbaa !57
  %40 = load i32, ptr %0, align 8, !tbaa !49
  %41 = and i32 %40, 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  tail call fastcc void @d_append_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.147) #22
  br label %45

44:                                               ; preds = %34
  tail call fastcc void @d_append_char(ptr noundef nonnull %0, i8 noundef signext 46) #22
  br label %45

45:                                               ; preds = %44, %43
  %46 = load ptr, ptr %35, align 8, !tbaa !60
  %47 = getelementptr inbounds %struct.demangle_component, ptr %46, i64 0, i32 1, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !11
  %49 = load i32, ptr %48, align 8, !tbaa !6
  %50 = icmp eq i32 %49, 63
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  tail call fastcc void @d_append_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.190) #22
  %52 = getelementptr inbounds %struct.demangle_component, ptr %48, i64 0, i32 1
  %53 = getelementptr inbounds %struct.demangle_component, ptr %48, i64 0, i32 1, i32 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !11
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  tail call fastcc void @d_append_num(ptr noundef nonnull %0, i64 noundef %56) #22
  tail call fastcc void @d_append_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.191) #22
  %57 = load ptr, ptr %52, align 8, !tbaa !11
  %58 = load i32, ptr %57, align 8, !tbaa !6
  br label %59

59:                                               ; preds = %51, %45
  %60 = phi i32 [ %58, %51 ], [ %49, %45 ]
  %61 = phi ptr [ %57, %51 ], [ %48, %45 ]
  %62 = add i32 %60, -26
  %63 = icmp ult i32 %62, 3
  br i1 %63, label %64, label %71

64:                                               ; preds = %59, %64
  %65 = phi ptr [ %67, %64 ], [ %61, %59 ]
  %66 = getelementptr inbounds %struct.demangle_component, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !11
  %68 = load i32, ptr %67, align 8, !tbaa !6
  %69 = add i32 %68, -26
  %70 = icmp ult i32 %69, 3
  br i1 %70, label %64, label %71, !llvm.loop !87

71:                                               ; preds = %64, %59
  %72 = phi ptr [ %61, %59 ], [ %67, %64 ]
  tail call fastcc void @d_print_comp(ptr noundef nonnull %0, ptr noundef nonnull %72) #22
  br label %74

73:                                               ; preds = %26
  tail call fastcc void @d_print_mod(ptr noundef nonnull %0, ptr noundef nonnull %18) #22
  store ptr %27, ptr %7, align 8, !tbaa !62
  br label %23

74:                                               ; preds = %30, %32, %71
  store ptr %27, ptr %7, align 8, !tbaa !62
  br label %75

75:                                               ; preds = %8, %23, %74, %3
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cplus_demangle_print(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #11 {
  %5 = alloca %struct.d_growable_string, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  %6 = sext i32 %2 to i64
  call fastcc void @d_growable_string_init(ptr noundef nonnull %5, i64 noundef %6) #22
  %7 = call i32 @cplus_demangle_print_callback(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @d_growable_string_callback_adapter, ptr noundef nonnull %5) #22, !range !19
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8, !tbaa !88
  call void @free(ptr noundef %10) #22
  br label %19

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.d_growable_string, ptr %5, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !90
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.d_growable_string, ptr %5, i64 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = select i1 %14, i64 %16, i64 1
  %18 = load ptr, ptr %5, align 8, !tbaa !88
  br label %19

19:                                               ; preds = %11, %9
  %20 = phi i64 [ 0, %9 ], [ %17, %11 ]
  %21 = phi ptr [ null, %9 ], [ %18, %11 ]
  store i64 %20, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @d_growable_string_init(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #11 {
  %3 = icmp eq i64 %1, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 28, i1 false)
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call fastcc void @d_growable_string_resize(ptr noundef nonnull %0, i64 noundef %1) #22
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @d_growable_string_callback_adapter(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef %2) #11 {
  tail call fastcc void @d_growable_string_append_buffer(ptr noundef %2, ptr noundef %0, i64 noundef %1) #22
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @d_growable_string_resize(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.d_growable_string, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !90
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.d_growable_string, ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !91
  %9 = icmp eq i64 %8, 0
  %10 = select i1 %9, i64 2, i64 %8
  br label %11

11:                                               ; preds = %11, %6
  %12 = phi i64 [ %10, %6 ], [ %14, %11 ]
  %13 = icmp ult i64 %12, %1
  %14 = shl i64 %12, 1
  br i1 %13, label %11, label %15, !llvm.loop !92

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !88
  %17 = tail call ptr @realloc(ptr noundef %16, i64 noundef %12) #25
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load ptr, ptr %0, align 8, !tbaa !88
  tail call void @free(ptr noundef %20) #22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store i32 1, ptr %3, align 8, !tbaa !90
  br label %22

21:                                               ; preds = %15
  store ptr %17, ptr %0, align 8, !tbaa !88
  store i64 %12, ptr %7, align 8, !tbaa !91
  br label %22

22:                                               ; preds = %2, %21, %19
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @d_growable_string_append_buffer(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #11 {
  %4 = getelementptr inbounds %struct.d_growable_string, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !93
  %6 = add i64 %2, 1
  %7 = add i64 %6, %5
  %8 = getelementptr inbounds %struct.d_growable_string, ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !91
  %10 = icmp ugt i64 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call fastcc void @d_growable_string_resize(ptr noundef nonnull %0, i64 noundef %7) #22
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %struct.d_growable_string, ptr %0, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !90
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load ptr, ptr %0, align 8, !tbaa !88
  %18 = load i64, ptr %4, align 8, !tbaa !93
  %19 = getelementptr inbounds i8, ptr %17, i64 %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %19, ptr align 1 %1, i64 %2, i1 false)
  %20 = load ptr, ptr %0, align 8, !tbaa !88
  %21 = load i64, ptr %4, align 8, !tbaa !93
  %22 = getelementptr i8, ptr %20, i64 %21
  %23 = getelementptr i8, ptr %22, i64 %2
  store i8 0, ptr %23, align 1, !tbaa !11
  %24 = load i64, ptr %4, align 8, !tbaa !93
  %25 = add i64 %24, %2
  store i64 %25, ptr %4, align 8, !tbaa !93
  br label %26

26:                                               ; preds = %12, %16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @cplus_demangle_init_info(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  store ptr %0, ptr %3, align 8, !tbaa !94
  %5 = getelementptr inbounds i8, ptr %0, i64 %2
  %6 = getelementptr inbounds %struct.d_info, ptr %3, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.d_info, ptr %3, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.d_info, ptr %3, i64 0, i32 3
  store ptr %0, ptr %8, align 8, !tbaa !12
  %9 = trunc i64 %2 to i32
  %10 = shl i32 %9, 1
  %11 = getelementptr inbounds %struct.d_info, ptr %3, i64 0, i32 6
  store i32 %10, ptr %11, align 4, !tbaa !27
  %12 = getelementptr inbounds %struct.d_info, ptr %3, i64 0, i32 5
  store i32 0, ptr %12, align 8, !tbaa !26
  %13 = getelementptr inbounds %struct.d_info, ptr %3, i64 0, i32 9
  store i32 %9, ptr %13, align 4, !tbaa !42
  %14 = getelementptr inbounds %struct.d_info, ptr %3, i64 0, i32 8
  store i32 0, ptr %14, align 8, !tbaa !32
  %15 = getelementptr inbounds %struct.d_info, ptr %3, i64 0, i32 10
  store i32 0, ptr %15, align 8, !tbaa !33
  %16 = getelementptr inbounds %struct.d_info, ptr %3, i64 0, i32 11
  store ptr null, ptr %16, align 8, !tbaa !40
  %17 = getelementptr inbounds %struct.d_info, ptr %3, i64 0, i32 12
  store i32 0, ptr %17, align 8, !tbaa !20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @cplus_demangle_v3(ptr noundef %0, i32 noundef %1) local_unnamed_addr #11 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  %4 = call fastcc ptr @d_demangle(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @d_demangle(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = alloca %struct.d_growable_string, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  call fastcc void @d_growable_string_init(ptr noundef nonnull %4, i64 noundef 0) #22
  %5 = call fastcc i32 @d_demangle_callback(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @d_growable_string_callback_adapter, ptr noundef nonnull %4) #22, !range !19
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 8, !tbaa !88
  call void @free(ptr noundef %8) #22
  br label %17

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.d_growable_string, ptr %4, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !90
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.d_growable_string, ptr %4, i64 0, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = select i1 %12, i64 %14, i64 1
  %16 = load ptr, ptr %4, align 8, !tbaa !88
  br label %17

17:                                               ; preds = %9, %7
  %18 = phi i64 [ 0, %7 ], [ %15, %9 ]
  %19 = phi ptr [ null, %7 ], [ %16, %9 ]
  store i64 %18, ptr %2, align 8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @d_demangle_callback(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #11 {
  %5 = alloca %struct.d_info, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #23
  %6 = load i8, ptr %0, align 1, !tbaa !11
  %7 = icmp eq i8 %6, 95
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, ptr %0, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !11
  %11 = icmp eq i8 %10, 90
  br i1 %11, label %31, label %12

12:                                               ; preds = %8, %4
  %13 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.2, i64 noundef 8) #22
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, ptr %0, i64 8
  %17 = load i8, ptr %16, align 1, !tbaa !11
  switch i8 %17, label %28 [
    i8 46, label %18
    i8 95, label %18
    i8 36, label %18
  ]

18:                                               ; preds = %15, %15, %15
  %19 = getelementptr inbounds i8, ptr %0, i64 9
  %20 = load i8, ptr %19, align 1, !tbaa !11
  switch i8 %20, label %28 [
    i8 68, label %21
    i8 73, label %21
  ]

21:                                               ; preds = %18, %18
  %22 = getelementptr inbounds i8, ptr %0, i64 10
  %23 = load i8, ptr %22, align 1, !tbaa !11
  %24 = icmp eq i8 %23, 95
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = icmp eq i8 %20, 73
  %27 = select i1 %26, i32 2, i32 3
  br label %31

28:                                               ; preds = %18, %15, %21, %12
  %29 = and i32 %1, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %80, label %31

31:                                               ; preds = %25, %28, %8
  %32 = phi i32 [ 1, %8 ], [ 0, %28 ], [ %27, %25 ]
  %33 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  call void @cplus_demangle_init_info(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %33, ptr noundef nonnull %5) #22
  %34 = getelementptr inbounds %struct.d_info, ptr %5, i64 0, i32 6
  %35 = load i32, ptr %34, align 4, !tbaa !27
  %36 = zext i32 %35 to i64
  %37 = tail call ptr @llvm.stacksave.p0()
  %38 = alloca %struct.demangle_component, i64 %36, align 16
  %39 = getelementptr inbounds %struct.d_info, ptr %5, i64 0, i32 9
  %40 = load i32, ptr %39, align 4, !tbaa !42
  %41 = zext i32 %40 to i64
  %42 = alloca ptr, i64 %41, align 16
  %43 = getelementptr inbounds %struct.d_info, ptr %5, i64 0, i32 4
  store ptr %38, ptr %43, align 8, !tbaa !28
  %44 = getelementptr inbounds %struct.d_info, ptr %5, i64 0, i32 7
  store ptr %42, ptr %44, align 8, !tbaa !34
  switch i32 %32, label %62 [
    i32 0, label %45
    i32 1, label %47
    i32 2, label %49
    i32 3, label %49
  ]

45:                                               ; preds = %31
  %46 = call ptr @cplus_demangle_type(ptr noundef nonnull %5) #22
  br label %63

47:                                               ; preds = %31
  %48 = call ptr @cplus_demangle_mangled_name(ptr noundef nonnull %5, i32 noundef 1) #22
  br label %63

49:                                               ; preds = %31, %31
  %50 = getelementptr inbounds %struct.d_info, ptr %5, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !12
  %52 = getelementptr inbounds i8, ptr %51, i64 11
  store ptr %52, ptr %50, align 8, !tbaa !12
  %53 = icmp eq i32 %32, 2
  %54 = select i1 %53, i32 60, i32 61
  %55 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %52) #22
  %56 = trunc i64 %55 to i32
  %57 = call fastcc ptr @d_make_name(ptr noundef nonnull %5, ptr noundef nonnull %52, i32 noundef %56) #22
  %58 = call fastcc ptr @d_make_comp(ptr noundef nonnull %5, i32 noundef %54, ptr noundef %57, ptr noundef null) #22
  %59 = load ptr, ptr %50, align 8, !tbaa !12
  %60 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %59) #22
  %61 = getelementptr inbounds i8, ptr %59, i64 %60
  store ptr %61, ptr %50, align 8, !tbaa !12
  br label %63

62:                                               ; preds = %31
  unreachable

63:                                               ; preds = %49, %47, %45
  %64 = phi ptr [ %58, %49 ], [ %48, %47 ], [ %46, %45 ]
  %65 = and i32 %1, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.d_info, ptr %5, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !12
  %70 = load i8, ptr %69, align 1, !tbaa !11
  %71 = icmp ne i8 %70, 0
  %72 = icmp eq ptr %64, null
  %73 = select i1 %71, i1 true, i1 %72
  br i1 %73, label %78, label %76

74:                                               ; preds = %63
  %75 = icmp eq ptr %64, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %67, %74
  %77 = call i32 @cplus_demangle_print_callback(i32 noundef %1, ptr noundef nonnull %64, ptr noundef %2, ptr noundef %3) #22, !range !19
  br label %78

78:                                               ; preds = %67, %74, %76
  %79 = phi i32 [ %77, %76 ], [ 0, %74 ], [ 0, %67 ]
  call void @llvm.stackrestore.p0(ptr %37)
  br label %80

80:                                               ; preds = %28, %78
  %81 = phi i32 [ %79, %78 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #23
  ret i32 %81
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #18

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @cplus_demangle_v3_callback(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 {
  %5 = tail call fastcc i32 @d_demangle_callback(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #22, !range !19
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @java_demangle_v3(ptr noundef %0) local_unnamed_addr #11 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  %3 = call fastcc ptr @d_demangle(ptr noundef %0, i32 noundef 37, ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @java_demangle_v3_callback(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 {
  %4 = tail call fastcc i32 @d_demangle_callback(ptr noundef %0, i32 noundef 37, ptr noundef %1, ptr noundef %2) #22, !range !19
  ret i32 %4
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i32 @is_gnu_v3_mangled_ctor(ptr noundef %0) local_unnamed_addr #19 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  %4 = call fastcc i32 @is_ctor_or_dtor(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #22, !range !19
  %5 = icmp eq i32 %4, 0
  %6 = load i32, ptr %2, align 4
  %7 = select i1 %5, i32 0, i32 %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #23
  ret i32 %7
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef i32 @is_ctor_or_dtor(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #19 {
  %4 = alloca %struct.d_info, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #23
  store i32 0, ptr %1, align 4, !tbaa !41
  store i32 0, ptr %2, align 4, !tbaa !41
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  call void @cplus_demangle_init_info(ptr noundef %0, i32 noundef 16384, i64 noundef %5, ptr noundef nonnull %4) #22
  %6 = getelementptr inbounds %struct.d_info, ptr %4, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !27
  %8 = zext i32 %7 to i64
  %9 = tail call ptr @llvm.stacksave.p0()
  %10 = alloca %struct.demangle_component, i64 %8, align 16
  %11 = getelementptr inbounds %struct.d_info, ptr %4, i64 0, i32 9
  %12 = load i32, ptr %11, align 4, !tbaa !42
  %13 = zext i32 %12 to i64
  %14 = alloca ptr, i64 %13, align 16
  %15 = getelementptr inbounds %struct.d_info, ptr %4, i64 0, i32 4
  store ptr %10, ptr %15, align 8, !tbaa !28
  %16 = getelementptr inbounds %struct.d_info, ptr %4, i64 0, i32 7
  store ptr %14, ptr %16, align 8, !tbaa !34
  %17 = call ptr @cplus_demangle_mangled_name(ptr noundef nonnull %4, i32 noundef 1) #22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %3, %26
  %20 = phi ptr [ %28, %26 ], [ %17, %3 ]
  %21 = load i32, ptr %20, align 8, !tbaa !6
  switch i32 %21, label %35 [
    i32 3, label %22
    i32 4, label %22
    i32 26, label %22
    i32 27, label %22
    i32 28, label %22
    i32 1, label %24
    i32 2, label %24
    i32 7, label %31
    i32 8, label %30
  ]

22:                                               ; preds = %19, %19, %19, %19, %19
  %23 = getelementptr inbounds %struct.demangle_component, ptr %20, i64 0, i32 1
  br label %26

24:                                               ; preds = %19, %19
  %25 = getelementptr inbounds %struct.demangle_component, ptr %20, i64 0, i32 1, i32 0, i32 1
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi ptr [ %25, %24 ], [ %23, %22 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %19, !llvm.loop !95

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %19, %30
  %32 = phi ptr [ %2, %30 ], [ %1, %19 ]
  %33 = getelementptr inbounds %struct.demangle_component, ptr %20, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !11
  store i32 %34, ptr %32, align 4, !tbaa !41
  br label %35

35:                                               ; preds = %19, %26, %31, %3
  %36 = phi i32 [ 0, %3 ], [ 1, %31 ], [ 0, %26 ], [ 0, %19 ]
  call void @llvm.stackrestore.p0(ptr %9)
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #23
  ret i32 %36
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i32 @is_gnu_v3_mangled_dtor(ptr noundef %0) local_unnamed_addr #19 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  %4 = call fastcc i32 @is_ctor_or_dtor(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #22, !range !19
  %5 = icmp eq i32 %4, 0
  %6 = load i32, ptr %3, align 4
  %7 = select i1 %5, i32 0, i32 %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #23
  ret i32 %7
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #21

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #19 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { optsize }
attributes #23 = { nounwind }
attributes #24 = { nounwind optsize }
attributes #25 = { optsize allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"demangle_component", !8, i64 0, !9, i64 8}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = !{!13, !14, i64 24}
!13 = !{!"d_info", !14, i64 0, !14, i64 8, !8, i64 16, !14, i64 24, !14, i64 32, !8, i64 40, !8, i64 44, !14, i64 48, !8, i64 56, !8, i64 60, !8, i64 64, !14, i64 72, !8, i64 80}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!13, !8, i64 16}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = !{i32 0, i32 2}
!20 = !{!13, !8, i64 80}
!21 = !{!14, !14, i64 0}
!22 = !{!23, !8, i64 8}
!23 = !{!"demangle_builtin_type_info", !14, i64 0, !8, i64 8, !14, i64 16, !8, i64 24, !8, i64 28}
!24 = distinct !{!24, !17}
!25 = distinct !{!25, !17}
!26 = !{!13, !8, i64 40}
!27 = !{!13, !8, i64 44}
!28 = !{!13, !14, i64 32}
!29 = !{!30, !8, i64 16}
!30 = !{!"demangle_operator_info", !14, i64 0, !14, i64 8, !8, i64 16, !8, i64 20}
!31 = distinct !{!31, !17}
!32 = !{!13, !8, i64 56}
!33 = !{!13, !8, i64 64}
!34 = !{!13, !14, i64 48}
!35 = distinct !{!35, !17}
!36 = !{!37, !9, i64 0}
!37 = !{!"d_standard_sub_info", !9, i64 0, !14, i64 8, !8, i64 16, !14, i64 24, !8, i64 32, !14, i64 40, !8, i64 48}
!38 = !{!37, !14, i64 40}
!39 = !{!37, !8, i64 48}
!40 = !{!13, !14, i64 72}
!41 = !{!8, !8, i64 0}
!42 = !{!13, !8, i64 60}
!43 = distinct !{!43, !17}
!44 = !{!30, !14, i64 0}
!45 = !{!13, !14, i64 8}
!46 = !{!23, !8, i64 28}
!47 = distinct !{!47, !17}
!48 = distinct !{!48, !17}
!49 = !{!50, !8, i64 0}
!50 = !{!"d_print_info", !8, i64 0, !9, i64 4, !51, i64 264, !9, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !8, i64 312, !8, i64 316}
!51 = !{!"long", !9, i64 0}
!52 = !{!50, !51, i64 264}
!53 = !{!50, !9, i64 272}
!54 = !{!50, !14, i64 280}
!55 = !{!50, !14, i64 288}
!56 = !{!50, !8, i64 312}
!57 = !{!50, !14, i64 304}
!58 = !{!59, !14, i64 0}
!59 = !{!"d_print_mod", !14, i64 0, !14, i64 8, !8, i64 16, !14, i64 24}
!60 = !{!59, !14, i64 8}
!61 = !{!59, !8, i64 16}
!62 = !{!50, !14, i64 296}
!63 = !{!59, !14, i64 24}
!64 = distinct !{!64, !17}
!65 = !{!66, !14, i64 0}
!66 = !{!"d_print_template", !14, i64 0, !14, i64 8}
!67 = !{!66, !14, i64 8}
!68 = !{i64 0, i64 8, !21, i64 8, i64 8, !21, i64 16, i64 4, !41, i64 24, i64 8, !21}
!69 = distinct !{!69, !17}
!70 = distinct !{!70, !17}
!71 = !{!50, !8, i64 316}
!72 = distinct !{!72, !17}
!73 = !{!23, !14, i64 0}
!74 = !{!23, !14, i64 16}
!75 = !{!23, !8, i64 24}
!76 = distinct !{!76, !17}
!77 = distinct !{!77, !17}
!78 = !{!30, !14, i64 8}
!79 = distinct !{!79, !17}
!80 = distinct !{!80, !17}
!81 = distinct !{!81, !17}
!82 = distinct !{!82, !17}
!83 = distinct !{!83, !17}
!84 = distinct !{!84, !17}
!85 = distinct !{!85, !17}
!86 = distinct !{!86, !17}
!87 = distinct !{!87, !17}
!88 = !{!89, !14, i64 0}
!89 = !{!"d_growable_string", !14, i64 0, !51, i64 8, !51, i64 16, !8, i64 24}
!90 = !{!89, !8, i64 24}
!91 = !{!89, !51, i64 16}
!92 = distinct !{!92, !17}
!93 = !{!89, !51, i64 8}
!94 = !{!13, !14, i64 0}
!95 = distinct !{!95, !17}
