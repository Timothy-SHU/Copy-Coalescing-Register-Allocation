; ModuleID = 'rtl.c'
source_filename = "rtl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@rtx_length = dso_local local_unnamed_addr constant [139 x i8] c"\01\01\01\02\02\01\01\08\08\09\09\08\08\07\02\01\02\07\02\02\01\05\03\02\01\01\02\00\00\02\01\03\04\01\01\01\00\03\01\02\01\02\01\02\01\03\00\03\02\02\02\01\02\02\02\02\02\02\02\02\02\02\02\02\01\02\02\02\02\02\02\02\02\02\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\03\03\01\02\03\02\02\01\02\02\02\01\01\01\02\02\02\01\01\03", align 16
@.str = private unnamed_addr constant [8 x i8] c"UnKnown\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"debug_expr\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"expr_list\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"insn_list\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"sequence\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"debug_insn\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"insn\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"jump_insn\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"call_insn\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"barrier\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"code_label\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"note\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"cond_exec\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"parallel\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"asm_input\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"asm_operands\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"unspec\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"unspec_volatile\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"addr_vec\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"addr_diff_vec\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"prefetch\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"use\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"clobber\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"eh_return\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"trap_if\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"const_int\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"const_fixed\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"const_double\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"const_vector\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"const_string\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"scratch\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"subreg\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"strict_low_part\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"concat\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"concatn\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"label_ref\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"symbol_ref\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"cc0\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"if_then_else\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"compare\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"plus\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"minus\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"neg\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"mult\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"ss_mult\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"us_mult\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"ss_div\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"us_div\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"udiv\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"umod\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"ior\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"ashift\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"rotate\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"ashiftrt\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"lshiftrt\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"rotatert\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"smin\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"smax\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"umin\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"umax\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"pre_dec\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"pre_inc\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"post_dec\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"post_inc\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"pre_modify\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"post_modify\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"geu\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"gtu\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"leu\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"ltu\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"unordered\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"ordered\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"uneq\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"unge\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"ungt\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"unle\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"unlt\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"ltgt\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"sign_extend\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"zero_extend\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"float_extend\00", align 1
@.str.102 = private unnamed_addr constant [15 x i8] c"float_truncate\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"fix\00", align 1
@.str.105 = private unnamed_addr constant [15 x i8] c"unsigned_float\00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"unsigned_fix\00", align 1
@.str.107 = private unnamed_addr constant [14 x i8] c"fract_convert\00", align 1
@.str.108 = private unnamed_addr constant [23 x i8] c"unsigned_fract_convert\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"sat_fract\00", align 1
@.str.110 = private unnamed_addr constant [19 x i8] c"unsigned_sat_fract\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"bswap\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"ffs\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"clz\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c"ctz\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"popcount\00", align 1
@.str.118 = private unnamed_addr constant [7 x i8] c"parity\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"sign_extract\00", align 1
@.str.120 = private unnamed_addr constant [13 x i8] c"zero_extract\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.122 = private unnamed_addr constant [7 x i8] c"lo_sum\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"vec_merge\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"vec_select\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c"vec_concat\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"vec_duplicate\00", align 1
@.str.127 = private unnamed_addr constant [8 x i8] c"ss_plus\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"us_plus\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"ss_minus\00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c"ss_neg\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"us_neg\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"ss_abs\00", align 1
@.str.133 = private unnamed_addr constant [10 x i8] c"ss_ashift\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"us_ashift\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"us_minus\00", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c"ss_truncate\00", align 1
@.str.137 = private unnamed_addr constant [12 x i8] c"us_truncate\00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"var_location\00", align 1
@rtx_name = dso_local local_unnamed_addr constant [139 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138], align 16
@.str.139 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.140 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.141 = private unnamed_addr constant [3 x i8] c"ee\00", align 1
@.str.142 = private unnamed_addr constant [3 x i8] c"ue\00", align 1
@.str.143 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.144 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"iuuBieie\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"iuuBieie0\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"iuuBieiee\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"iuu00000\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"iuuB00is\00", align 1
@.str.150 = private unnamed_addr constant [8 x i8] c"iuuB0ni\00", align 1
@.str.151 = private unnamed_addr constant [3 x i8] c"si\00", align 1
@.str.152 = private unnamed_addr constant [8 x i8] c"ssiEEEi\00", align 1
@.str.153 = private unnamed_addr constant [3 x i8] c"Ei\00", align 1
@.str.154 = private unnamed_addr constant [6 x i8] c"eEee0\00", align 1
@.str.155 = private unnamed_addr constant [4 x i8] c"eee\00", align 1
@.str.156 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.157 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.158 = private unnamed_addr constant [4 x i8] c"www\00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c"wwww\00", align 1
@.str.160 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.161 = private unnamed_addr constant [4 x i8] c"i00\00", align 1
@.str.162 = private unnamed_addr constant [3 x i8] c"ei\00", align 1
@.str.163 = private unnamed_addr constant [3 x i8] c"e0\00", align 1
@.str.164 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.165 = private unnamed_addr constant [4 x i8] c"s00\00", align 1
@.str.166 = private unnamed_addr constant [4 x i8] c"tei\00", align 1
@rtx_format = dso_local local_unnamed_addr constant [139 x ptr] [ptr @.str.139, ptr @.str.140, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.141, ptr @.str.143, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.153, ptr @.str.143, ptr @.str.154, ptr @.str.155, ptr @.str.141, ptr @.str.144, ptr @.str.144, ptr @.str.141, ptr @.str.156, ptr @.str.156, ptr @.str.141, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.143, ptr @.str.160, ptr @.str.144, ptr @.str.156, ptr @.str.161, ptr @.str.140, ptr @.str.162, ptr @.str.144, ptr @.str.141, ptr @.str.143, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.156, ptr @.str.155, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.144, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.144, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.155, ptr @.str.155, ptr @.str.144, ptr @.str.141, ptr @.str.155, ptr @.str.141, ptr @.str.141, ptr @.str.144, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.144, ptr @.str.144, ptr @.str.166], align 16
@rtx_class = dso_local local_unnamed_addr constant [139 x i32] [i32 5, i32 8, i32 8, i32 5, i32 5, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 9, i32 9, i32 9, i32 9, i32 8, i32 9, i32 8, i32 8, i32 8, i32 5, i32 5, i32 8, i32 8, i32 8, i32 9, i32 9, i32 8, i32 10, i32 2, i32 3, i32 2, i32 4, i32 3, i32 3, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 4, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 11, i32 11, i32 9, i32 8, i32 10, i32 2, i32 2, i32 4, i32 3, i32 3, i32 2, i32 4, i32 4, i32 4, i32 2, i32 2, i32 2, i32 4, i32 4, i32 5], align 16
@rtx_code_size = dso_local local_unnamed_addr constant [139 x i8] c"\10\10\10\18\18\10\10HHPPHH@\18\10\18@\18\18\100 \18\10\10\18\08\08\18\10 (\10\10\10\08 \10\18\10\18\10\18\10 \08 \18\18\18\10\18\18\18\18\18\18\18\18\18\18\18\18\10\18\18\18\18\18\18\18\18\18\10\10\10\10\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10  \10\18 \18\18\10\18\18\18\10\10\10\18\18\18\10\10 ", align 16
@.str.167 = private unnamed_addr constant [18 x i8] c"NOTE_INSN_DELETED\00", align 1
@.str.168 = private unnamed_addr constant [24 x i8] c"NOTE_INSN_DELETED_LABEL\00", align 1
@.str.169 = private unnamed_addr constant [20 x i8] c"NOTE_INSN_BLOCK_BEG\00", align 1
@.str.170 = private unnamed_addr constant [20 x i8] c"NOTE_INSN_BLOCK_END\00", align 1
@.str.171 = private unnamed_addr constant [23 x i8] c"NOTE_INSN_FUNCTION_BEG\00", align 1
@.str.172 = private unnamed_addr constant [23 x i8] c"NOTE_INSN_PROLOGUE_END\00", align 1
@.str.173 = private unnamed_addr constant [23 x i8] c"NOTE_INSN_EPILOGUE_BEG\00", align 1
@.str.174 = private unnamed_addr constant [24 x i8] c"NOTE_INSN_EH_REGION_BEG\00", align 1
@.str.175 = private unnamed_addr constant [24 x i8] c"NOTE_INSN_EH_REGION_END\00", align 1
@.str.176 = private unnamed_addr constant [23 x i8] c"NOTE_INSN_VAR_LOCATION\00", align 1
@.str.177 = private unnamed_addr constant [22 x i8] c"NOTE_INSN_BASIC_BLOCK\00", align 1
@.str.178 = private unnamed_addr constant [31 x i8] c"NOTE_INSN_SWITCH_TEXT_SECTIONS\00", align 1
@.str.179 = private unnamed_addr constant [28 x i8] c"NOTE_INSN_CFA_RESTORE_STATE\00", align 1
@note_insn_name = dso_local local_unnamed_addr constant [13 x ptr] [ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179], align 16
@.str.180 = private unnamed_addr constant [13 x i8] c"REG_DEP_TRUE\00", align 1
@.str.181 = private unnamed_addr constant [9 x i8] c"REG_DEAD\00", align 1
@.str.182 = private unnamed_addr constant [8 x i8] c"REG_INC\00", align 1
@.str.183 = private unnamed_addr constant [10 x i8] c"REG_EQUIV\00", align 1
@.str.184 = private unnamed_addr constant [10 x i8] c"REG_EQUAL\00", align 1
@.str.185 = private unnamed_addr constant [11 x i8] c"REG_NONNEG\00", align 1
@.str.186 = private unnamed_addr constant [11 x i8] c"REG_UNUSED\00", align 1
@.str.187 = private unnamed_addr constant [14 x i8] c"REG_CC_SETTER\00", align 1
@.str.188 = private unnamed_addr constant [12 x i8] c"REG_CC_USER\00", align 1
@.str.189 = private unnamed_addr constant [17 x i8] c"REG_LABEL_TARGET\00", align 1
@.str.190 = private unnamed_addr constant [18 x i8] c"REG_LABEL_OPERAND\00", align 1
@.str.191 = private unnamed_addr constant [15 x i8] c"REG_DEP_OUTPUT\00", align 1
@.str.192 = private unnamed_addr constant [13 x i8] c"REG_DEP_ANTI\00", align 1
@.str.193 = private unnamed_addr constant [12 x i8] c"REG_BR_PROB\00", align 1
@.str.194 = private unnamed_addr constant [18 x i8] c"REG_VALUE_PROFILE\00", align 1
@.str.195 = private unnamed_addr constant [12 x i8] c"REG_NOALIAS\00", align 1
@.str.196 = private unnamed_addr constant [12 x i8] c"REG_BR_PRED\00", align 1
@.str.197 = private unnamed_addr constant [23 x i8] c"REG_FRAME_RELATED_EXPR\00", align 1
@.str.198 = private unnamed_addr constant [16 x i8] c"REG_CFA_DEF_CFA\00", align 1
@.str.199 = private unnamed_addr constant [19 x i8] c"REG_CFA_ADJUST_CFA\00", align 1
@.str.200 = private unnamed_addr constant [15 x i8] c"REG_CFA_OFFSET\00", align 1
@.str.201 = private unnamed_addr constant [17 x i8] c"REG_CFA_REGISTER\00", align 1
@.str.202 = private unnamed_addr constant [16 x i8] c"REG_CFA_RESTORE\00", align 1
@.str.203 = private unnamed_addr constant [18 x i8] c"REG_CFA_SET_VDRAP\00", align 1
@.str.204 = private unnamed_addr constant [15 x i8] c"REG_EH_CONTEXT\00", align 1
@.str.205 = private unnamed_addr constant [14 x i8] c"REG_EH_REGION\00", align 1
@.str.206 = private unnamed_addr constant [14 x i8] c"REG_SAVE_NOTE\00", align 1
@.str.207 = private unnamed_addr constant [13 x i8] c"REG_NORETURN\00", align 1
@.str.208 = private unnamed_addr constant [19 x i8] c"REG_NON_LOCAL_GOTO\00", align 1
@.str.209 = private unnamed_addr constant [18 x i8] c"REG_CROSSING_JUMP\00", align 1
@.str.210 = private unnamed_addr constant [11 x i8] c"REG_SETJMP\00", align 1
@reg_note_name = dso_local local_unnamed_addr constant [31 x ptr] [ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210], align 16
@.str.211 = private unnamed_addr constant [6 x i8] c"rtl.c\00", align 1
@.str.212 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@generating_concat_p = dso_local local_unnamed_addr global i32 0, align 4
@currently_expanding_to_rtl = dso_local local_unnamed_addr global i32 0, align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !43 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !44
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !43 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !44
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !43 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !54

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !48
  %11 = load i8, ptr %3, align 1, !tbaa !55
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !43 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !54

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !48
  %11 = load i8, ptr %3, align 1, !tbaa !55
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !43 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !54

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !48
  %11 = load i8, ptr %3, align 1, !tbaa !55
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !43 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !44
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !43 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !54

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !56
  store i8 %12, ptr %4, align 1, !tbaa !55
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !43 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !54

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !56
  store i8 %12, ptr %4, align 1, !tbaa !55
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !43 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !44
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !54

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !56
  store i8 %12, ptr %4, align 1, !tbaa !55
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !43 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !43 {
  %2 = load i32, ptr %0, align 8, !tbaa !58
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !43 {
  %2 = load i32, ptr %0, align 8, !tbaa !58
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !43 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !59
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !43 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !59
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !43 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #17
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
  br i1 %23, label %7, label %24, !llvm.loop !60

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @rtvec_alloc(i32 noundef %0) local_unnamed_addr #9 !prof !63 {
  %2 = add nsw i32 %0, -1
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 3
  %5 = add nsw i64 %4, 16
  %6 = tail call ptr @ggc_alloc_stat(i64 noundef %5) #17
  %7 = getelementptr inbounds %struct.rtvec_def, ptr %6, i64 0, i32 1
  %8 = sext i32 %0 to i64
  %9 = shl nsw i64 %8, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %7, i8 0, i64 %9, i1 false), !prof !64
  store i32 %0, ptr %6, align 8, !tbaa !65
  ret ptr %6
}

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @shallow_copy_rtvec(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !43 {
  %2 = load i32, ptr %0, align 8, !tbaa !65
  %3 = add nsw i32 %2, -1
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 3
  %6 = add nsw i64 %5, 16
  %7 = tail call ptr @ggc_alloc_stat(i64 noundef %6) #17
  %8 = getelementptr inbounds %struct.rtvec_def, ptr %7, i64 0, i32 1
  %9 = sext i32 %2 to i64
  %10 = shl nsw i64 %9, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %8, i8 0, i64 %10, i1 false)
  store i32 %2, ptr %7, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.rtvec_def, ptr %0, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %8, ptr nonnull align 8 %11, i64 %10, i1 false)
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @rtx_size(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !43 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 45
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load i32, ptr %6, align 8, !tbaa !55
  %8 = and i32 %7, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5, %1
  %11 = zext nneg i32 %3 to i64
  %12 = getelementptr inbounds [139 x i8], ptr @rtx_code_size, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !55
  %14 = zext i8 %13 to i32
  br label %15

15:                                               ; preds = %5, %10
  %16 = phi i32 [ %14, %10 ], [ 48, %5 ]
  ret i32 %16
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @rtx_alloc_stat(i32 noundef %0) local_unnamed_addr #9 !prof !67 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [139 x i8], ptr @rtx_code_size, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !55
  %5 = zext i8 %4 to i64
  %6 = tail call ptr @ggc_alloc_stat(i64 noundef %5) #17
  store i64 0, ptr %6, align 8
  %7 = and i32 %0, 65535
  store i32 %7, ptr %6, align 8
  ret ptr %6
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local zeroext i8 @shared_const_p(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !68 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 35
  br i1 %4, label %6, label %5, !prof !69

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.211, i32 noundef 222, ptr noundef nonnull @.str.212) #17
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 49
  br i1 %11, label %12, label %25, !prof !69

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 45
  br i1 %17, label %18, label %25, !prof !69

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !55
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 30
  %24 = zext i1 %23 to i8
  br label %25

25:                                               ; preds = %18, %12, %6
  %26 = phi i8 [ 0, %12 ], [ 0, %6 ], [ %24, %18 ]
  ret i8 %26
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef ptr @copy_rtx(ptr noundef readonly %0) local_unnamed_addr #9 !prof !70 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %36 [
    i16 37, label %137
    i16 2, label %137
    i16 1, label %137
    i16 30, label %137
    i16 32, label %137
    i16 31, label %137
    i16 33, label %137
    i16 45, label %137
    i16 12, label %137
    i16 36, label %137
    i16 46, label %137
    i16 38, label %137
    i16 25, label %4
    i16 35, label %14
  ], !prof !71

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 37
  br i1 %9, label %10, label %36

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !55
  %13 = icmp ult i32 %12, 53
  br i1 %13, label %137, label %36

14:                                               ; preds = %1
  %15 = and i32 %2, 65535
  %16 = icmp eq i32 %15, 35
  br i1 %16, label %18, label %17, !prof !69

17:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.211, i32 noundef 222, ptr noundef nonnull @.str.212) #17
  br label %18

18:                                               ; preds = %17, %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !55
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 49
  br i1 %23, label %24, label %36, !prof !69

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !55
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 45
  br i1 %29, label %30, label %36, !prof !69

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !55
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 30
  br i1 %35, label %137, label %36, !prof !72

36:                                               ; preds = %24, %18, %30, %10, %1, %4
  %37 = load i32, ptr %0, align 8
  %38 = and i32 %37, 65535
  %39 = icmp eq i32 %38, 45
  br i1 %39, label %40, label %45, !prof !73

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load i32, ptr %41, align 8, !tbaa !55
  %43 = and i32 %42, 128
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40, %36
  %46 = zext nneg i32 %38 to i64
  %47 = getelementptr inbounds [139 x i8], ptr @rtx_code_size, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !55
  %49 = zext i8 %48 to i64
  br label %50

50:                                               ; preds = %40, %45
  %51 = phi i64 [ %49, %45 ], [ 48, %40 ]
  %52 = tail call ptr @ggc_alloc_stat(i64 noundef %51) #17
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %52, ptr nonnull align 8 %0, i64 %51, i1 false), !prof !74
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, -536870913
  store i32 %54, ptr %52, align 8
  %55 = load i32, ptr %0, align 8
  %56 = and i32 %55, 65535
  %57 = add nsw i32 %56, -7
  %58 = icmp ult i32 %57, 4
  br i1 %58, label %59, label %61, !prof !73

59:                                               ; preds = %50
  %60 = and i32 %53, -1610612737
  store i32 %60, ptr %52, align 8
  br label %61

61:                                               ; preds = %50, %59
  %62 = load i32, ptr %0, align 8
  %63 = and i32 %62, 16777216
  %64 = load i32, ptr %52, align 8
  %65 = and i32 %64, -16777217
  %66 = or disjoint i32 %65, %63
  store i32 %66, ptr %52, align 8
  %67 = load i32, ptr %0, align 8
  %68 = and i32 %67, 33554432
  %69 = and i32 %66, -33554433
  %70 = or disjoint i32 %69, %68
  store i32 %70, ptr %52, align 8
  %71 = and i32 %64, 65535
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !55
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %137, label %76, !prof !75

76:                                               ; preds = %61
  %77 = and i32 %64, 65535
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !44
  %81 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %82 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  br label %83

83:                                               ; preds = %76, %128
  %84 = phi i64 [ 0, %76 ], [ %129, %128 ]
  %85 = phi ptr [ %80, %76 ], [ %86, %128 ]
  %86 = getelementptr inbounds i8, ptr %85, i64 1
  %87 = load i8, ptr %85, align 1, !tbaa !55
  switch i8 %87, label %127 [
    i8 101, label %88
    i8 69, label %95
    i8 86, label %95
    i8 116, label %128
    i8 119, label %128
    i8 105, label %128
    i8 115, label %128
    i8 83, label %128
    i8 84, label %128
    i8 117, label %128
    i8 66, label %128
    i8 48, label %128
  ], !prof !76

88:                                               ; preds = %83
  %89 = getelementptr inbounds [1 x %union.rtunion_def], ptr %81, i64 0, i64 %84
  %90 = load ptr, ptr %89, align 8, !tbaa !55
  %91 = icmp eq ptr %90, null
  br i1 %91, label %128, label %92, !prof !77

92:                                               ; preds = %88
  %93 = tail call ptr @copy_rtx(ptr noundef nonnull %90)
  %94 = getelementptr inbounds [1 x %union.rtunion_def], ptr %82, i64 0, i64 %84
  store ptr %93, ptr %94, align 8, !tbaa !55
  br label %128

95:                                               ; preds = %83, %83
  %96 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %97 = getelementptr inbounds [1 x %union.rtunion_def], ptr %96, i64 0, i64 %84
  %98 = load ptr, ptr %97, align 8, !tbaa !55
  %99 = icmp eq ptr %98, null
  br i1 %99, label %128, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %102 = load i32, ptr %98, align 8, !tbaa !65
  %103 = add nsw i32 %102, -1
  %104 = sext i32 %103 to i64
  %105 = shl nsw i64 %104, 3
  %106 = add nsw i64 %105, 16
  %107 = tail call ptr @ggc_alloc_stat(i64 noundef %106) #17
  %108 = getelementptr inbounds %struct.rtvec_def, ptr %107, i64 0, i32 1
  %109 = sext i32 %102 to i64
  %110 = shl nsw i64 %109, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %108, i8 0, i64 %110, i1 false)
  store i32 %102, ptr %107, align 8, !tbaa !65
  %111 = getelementptr inbounds [1 x %union.rtunion_def], ptr %101, i64 0, i64 %84
  store ptr %107, ptr %111, align 8, !tbaa !55
  %112 = load i32, ptr %107, align 8, !tbaa !65
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %100, %114
  %115 = phi i64 [ %122, %114 ], [ 0, %100 ]
  %116 = load ptr, ptr %97, align 8, !tbaa !55
  %117 = getelementptr inbounds %struct.rtvec_def, ptr %116, i64 0, i32 1, i64 %115
  %118 = load ptr, ptr %117, align 8, !tbaa !44
  %119 = tail call ptr @copy_rtx(ptr noundef %118)
  %120 = load ptr, ptr %111, align 8, !tbaa !55
  %121 = getelementptr inbounds %struct.rtvec_def, ptr %120, i64 0, i32 1, i64 %115
  store ptr %119, ptr %121, align 8, !tbaa !44
  %122 = add nuw nsw i64 %115, 1
  %123 = load ptr, ptr %111, align 8, !tbaa !55
  %124 = load i32, ptr %123, align 8, !tbaa !65
  %125 = sext i32 %124 to i64
  %126 = icmp slt i64 %122, %125
  br i1 %126, label %114, label %128, !llvm.loop !78

127:                                              ; preds = %83
  tail call void @fancy_abort(ptr noundef nonnull @.str.211, i32 noundef 330, ptr noundef nonnull @.str.212) #17
  br label %128

128:                                              ; preds = %114, %100, %95, %83, %83, %83, %83, %83, %83, %83, %83, %127, %92, %88, %83
  %129 = add nuw nsw i64 %84, 1
  %130 = load i32, ptr %52, align 8
  %131 = and i32 %130, 65535
  %132 = zext nneg i32 %131 to i64
  %133 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %132
  %134 = load i8, ptr %133, align 1, !tbaa !55
  %135 = zext i8 %134 to i64
  %136 = icmp ult i64 %129, %135
  br i1 %136, label %83, label %137, !prof !79, !llvm.loop !80

137:                                              ; preds = %128, %61, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %30, %10, %1
  %138 = phi ptr [ %0, %1 ], [ %0, %10 ], [ %0, %30 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %52, %61 ], [ %52, %128 ]
  ret ptr %138
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @shallow_copy_rtx_stat(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !81 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 45
  br i1 %4, label %5, label %10, !prof !82

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load i32, ptr %6, align 8, !tbaa !55
  %8 = and i32 %7, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5, %1
  %11 = zext nneg i32 %3 to i64
  %12 = getelementptr inbounds [139 x i8], ptr @rtx_code_size, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !55
  %14 = zext i8 %13 to i64
  br label %15

15:                                               ; preds = %5, %10
  %16 = phi i64 [ %14, %10 ], [ 48, %5 ]
  %17 = tail call ptr @ggc_alloc_stat(i64 noundef %16) #17
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %17, ptr nonnull align 8 %0, i64 %16, i1 false), !prof !83
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rtx_equal_p_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #14 !prof !84 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !44
  store ptr %1, ptr %5, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  %8 = icmp eq ptr %0, %1
  br i1 %8, label %190, label %9, !prof !85

9:                                                ; preds = %3
  %10 = icmp eq ptr %0, null
  %11 = icmp eq ptr %1, null
  %12 = or i1 %10, %11
  br i1 %12, label %190, label %13, !prof !86

13:                                               ; preds = %9
  %14 = icmp eq ptr %2, null
  br i1 %14, label %22, label %15, !prof !87

15:                                               ; preds = %13
  %16 = call i32 %2(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %6, align 8, !tbaa !44
  %20 = load ptr, ptr %7, align 8, !tbaa !44
  %21 = call i32 @rtx_equal_p_cb(ptr noundef %19, ptr noundef %20, ptr noundef nonnull %2), !range !88
  br label %190

22:                                               ; preds = %15, %13
  %23 = load ptr, ptr %4, align 8, !tbaa !44
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = load ptr, ptr %5, align 8, !tbaa !44
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %190, !prof !89

30:                                               ; preds = %22
  %31 = xor i32 %27, %24
  %32 = and i32 %31, 16711680
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %190, !prof !90

34:                                               ; preds = %30
  %35 = icmp eq i32 %25, 43
  br i1 %35, label %36, label %56, !prof !91

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !55
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40, !prof !92

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.mem_attrs, ptr %38, i64 0, i32 5
  %42 = load i8, ptr %41, align 8, !tbaa !93
  %43 = zext i8 %42 to i32
  br label %44

44:                                               ; preds = %36, %40
  %45 = phi i32 [ %43, %40 ], [ 0, %36 ]
  %46 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !55
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49, !prof !92

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.mem_attrs, ptr %47, i64 0, i32 5
  %51 = load i8, ptr %50, align 8, !tbaa !93
  %52 = zext i8 %51 to i32
  br label %53

53:                                               ; preds = %44, %49
  %54 = phi i32 [ %52, %49 ], [ 0, %44 ]
  %55 = icmp eq i32 %45, %54
  br i1 %55, label %56, label %190, !prof !95

56:                                               ; preds = %53, %34
  %57 = trunc i32 %24 to i16
  switch i16 %57, label %79 [
    i16 37, label %58
    i16 44, label %65
    i16 45, label %72
    i16 2, label %190
    i16 1, label %190
    i16 38, label %190
    i16 32, label %190
    i16 30, label %190
    i16 31, label %190
  ], !prof !96

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %60 = load i32, ptr %59, align 8, !tbaa !55
  %61 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !55
  %63 = icmp eq i32 %60, %62
  %64 = zext i1 %63 to i32
  br label %190

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !55
  %68 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !55
  %70 = icmp eq ptr %67, %69
  %71 = zext i1 %70 to i32
  br label %190

72:                                               ; preds = %56
  %73 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !55
  %75 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !55
  %77 = icmp eq ptr %74, %76
  %78 = zext i1 %77 to i32
  br label %190

79:                                               ; preds = %56
  %80 = zext nneg i32 %25 to i64
  %81 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !44
  %83 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %80
  %84 = load i8, ptr %83, align 1, !tbaa !55
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %190, label %86, !prof !97

86:                                               ; preds = %79
  %87 = zext i8 %84 to i64
  br label %88

88:                                               ; preds = %86, %188
  %89 = phi i64 [ %87, %86 ], [ %90, %188 ]
  %90 = add nsw i64 %89, -1
  %91 = getelementptr inbounds i8, ptr %82, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !55
  switch i8 %92, label %187 [
    i8 119, label %93
    i8 110, label %103
    i8 105, label %103
    i8 86, label %113
    i8 69, label %113
    i8 101, label %154
    i8 83, label %165
    i8 115, label %165
    i8 117, label %188
    i8 48, label %188
    i8 116, label %188
  ], !prof !98

93:                                               ; preds = %88
  %94 = load ptr, ptr %4, align 8, !tbaa !44
  %95 = getelementptr inbounds %struct.rtx_def, ptr %94, i64 0, i32 1
  %96 = getelementptr inbounds [1 x i64], ptr %95, i64 0, i64 %90
  %97 = load i64, ptr %96, align 8, !tbaa !55
  %98 = load ptr, ptr %5, align 8, !tbaa !44
  %99 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1
  %100 = getelementptr inbounds [1 x i64], ptr %99, i64 0, i64 %90
  %101 = load i64, ptr %100, align 8, !tbaa !55
  %102 = icmp eq i64 %97, %101
  br i1 %102, label %188, label %190

103:                                              ; preds = %88, %88
  %104 = load ptr, ptr %4, align 8, !tbaa !44
  %105 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1
  %106 = getelementptr inbounds [1 x %union.rtunion_def], ptr %105, i64 0, i64 %90
  %107 = load i32, ptr %106, align 8, !tbaa !55
  %108 = load ptr, ptr %5, align 8, !tbaa !44
  %109 = getelementptr inbounds %struct.rtx_def, ptr %108, i64 0, i32 1
  %110 = getelementptr inbounds [1 x %union.rtunion_def], ptr %109, i64 0, i64 %90
  %111 = load i32, ptr %110, align 8, !tbaa !55
  %112 = icmp eq i32 %107, %111
  br i1 %112, label %188, label %190

113:                                              ; preds = %88, %88
  %114 = load ptr, ptr %4, align 8, !tbaa !44
  %115 = getelementptr inbounds %struct.rtx_def, ptr %114, i64 0, i32 1
  %116 = getelementptr inbounds [1 x %union.rtunion_def], ptr %115, i64 0, i64 %90
  %117 = load ptr, ptr %116, align 8, !tbaa !55
  %118 = load i32, ptr %117, align 8, !tbaa !65
  %119 = load ptr, ptr %5, align 8, !tbaa !44
  %120 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1
  %121 = getelementptr inbounds [1 x %union.rtunion_def], ptr %120, i64 0, i64 %90
  %122 = load ptr, ptr %121, align 8, !tbaa !55
  %123 = load i32, ptr %122, align 8, !tbaa !65
  %124 = icmp eq i32 %118, %123
  br i1 %124, label %125, label %190

125:                                              ; preds = %113
  %126 = load ptr, ptr %4, align 8, !tbaa !44
  %127 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1
  %128 = getelementptr inbounds [1 x %union.rtunion_def], ptr %127, i64 0, i64 %90
  %129 = load ptr, ptr %128, align 8, !tbaa !55
  %130 = load i32, ptr %129, align 8, !tbaa !65
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %141, label %188

132:                                              ; preds = %141
  %133 = add nuw nsw i64 %142, 1
  %134 = load ptr, ptr %4, align 8, !tbaa !44
  %135 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1
  %136 = getelementptr inbounds [1 x %union.rtunion_def], ptr %135, i64 0, i64 %90
  %137 = load ptr, ptr %136, align 8, !tbaa !55
  %138 = load i32, ptr %137, align 8, !tbaa !65
  %139 = sext i32 %138 to i64
  %140 = icmp slt i64 %133, %139
  br i1 %140, label %141, label %188, !llvm.loop !99

141:                                              ; preds = %125, %132
  %142 = phi i64 [ %133, %132 ], [ 0, %125 ]
  %143 = phi ptr [ %137, %132 ], [ %129, %125 ]
  %144 = getelementptr inbounds %struct.rtvec_def, ptr %143, i64 0, i32 1, i64 %142
  %145 = load ptr, ptr %144, align 8, !tbaa !44
  %146 = load ptr, ptr %5, align 8, !tbaa !44
  %147 = getelementptr inbounds %struct.rtx_def, ptr %146, i64 0, i32 1
  %148 = getelementptr inbounds [1 x %union.rtunion_def], ptr %147, i64 0, i64 %90
  %149 = load ptr, ptr %148, align 8, !tbaa !55
  %150 = getelementptr inbounds %struct.rtvec_def, ptr %149, i64 0, i32 1, i64 %142
  %151 = load ptr, ptr %150, align 8, !tbaa !44
  %152 = call i32 @rtx_equal_p_cb(ptr noundef %145, ptr noundef %151, ptr noundef %2), !range !88
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %190, label %132

154:                                              ; preds = %88
  %155 = load ptr, ptr %4, align 8, !tbaa !44
  %156 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1
  %157 = getelementptr inbounds [1 x %union.rtunion_def], ptr %156, i64 0, i64 %90
  %158 = load ptr, ptr %157, align 8, !tbaa !55
  %159 = load ptr, ptr %5, align 8, !tbaa !44
  %160 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 0, i32 1
  %161 = getelementptr inbounds [1 x %union.rtunion_def], ptr %160, i64 0, i64 %90
  %162 = load ptr, ptr %161, align 8, !tbaa !55
  %163 = call i32 @rtx_equal_p_cb(ptr noundef %158, ptr noundef %162, ptr noundef %2), !range !88
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %190, label %188, !prof !100

165:                                              ; preds = %88, %88
  %166 = load ptr, ptr %4, align 8, !tbaa !44
  %167 = getelementptr inbounds %struct.rtx_def, ptr %166, i64 0, i32 1
  %168 = getelementptr inbounds [1 x %union.rtunion_def], ptr %167, i64 0, i64 %90
  %169 = load ptr, ptr %168, align 8, !tbaa !55
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %178

171:                                              ; preds = %165
  %172 = load ptr, ptr %5, align 8, !tbaa !44
  %173 = getelementptr inbounds %struct.rtx_def, ptr %172, i64 0, i32 1
  %174 = getelementptr inbounds [1 x %union.rtunion_def], ptr %173, i64 0, i64 %90
  %175 = load ptr, ptr %174, align 8, !tbaa !55
  %176 = icmp eq ptr %175, null
  br i1 %176, label %188, label %177

177:                                              ; preds = %171
  br i1 %170, label %190, label %178

178:                                              ; preds = %165, %177
  %179 = load ptr, ptr %5, align 8, !tbaa !44
  %180 = getelementptr inbounds %struct.rtx_def, ptr %179, i64 0, i32 1
  %181 = getelementptr inbounds [1 x %union.rtunion_def], ptr %180, i64 0, i64 %90
  %182 = load ptr, ptr %181, align 8, !tbaa !55
  %183 = icmp eq ptr %182, null
  br i1 %183, label %190, label %184

184:                                              ; preds = %178
  %185 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %169, ptr noundef nonnull dereferenceable(1) %182)
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %188, label %190

187:                                              ; preds = %88
  call void @fancy_abort(ptr noundef nonnull @.str.211, i32 noundef 473, ptr noundef nonnull @.str.212) #17
  br label %188

188:                                              ; preds = %132, %125, %171, %103, %88, %88, %187, %93, %154, %184, %88
  %189 = icmp sgt i64 %89, 1
  br i1 %189, label %88, label %190, !prof !101, !llvm.loop !102

190:                                              ; preds = %103, %178, %188, %93, %113, %154, %177, %184, %141, %79, %56, %56, %56, %56, %56, %53, %56, %30, %22, %9, %3, %72, %65, %58, %18
  %191 = phi i32 [ %21, %18 ], [ %78, %72 ], [ %71, %65 ], [ %64, %58 ], [ 1, %3 ], [ 0, %9 ], [ 0, %22 ], [ 0, %30 ], [ 0, %56 ], [ 0, %53 ], [ 0, %56 ], [ 0, %56 ], [ 0, %56 ], [ 0, %56 ], [ 0, %56 ], [ 1, %79 ], [ 0, %141 ], [ 0, %184 ], [ 0, %177 ], [ 0, %154 ], [ 0, %113 ], [ 0, %93 ], [ 1, %188 ], [ 0, %178 ], [ 0, %103 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  ret i32 %191
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @rtx_equal_p(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !103 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %151, label %4, !prof !104

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %151, label %8, !prof !105

8:                                                ; preds = %4
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = load i32, ptr %1, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %151, !prof !106

14:                                               ; preds = %8
  %15 = xor i32 %11, %9
  %16 = and i32 %15, 16711680
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %151, !prof !107

18:                                               ; preds = %14
  %19 = icmp eq i32 %10, 43
  br i1 %19, label %20, label %40, !prof !108

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !55
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24, !prof !109

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.mem_attrs, ptr %22, i64 0, i32 5
  %26 = load i8, ptr %25, align 8, !tbaa !93
  %27 = zext i8 %26 to i32
  br label %28

28:                                               ; preds = %20, %24
  %29 = phi i32 [ %27, %24 ], [ 0, %20 ]
  %30 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !55
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33, !prof !109

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.mem_attrs, ptr %31, i64 0, i32 5
  %35 = load i8, ptr %34, align 8, !tbaa !93
  %36 = zext i8 %35 to i32
  br label %37

37:                                               ; preds = %28, %33
  %38 = phi i32 [ %36, %33 ], [ 0, %28 ]
  %39 = icmp eq i32 %29, %38
  br i1 %39, label %40, label %151, !prof !110

40:                                               ; preds = %37, %18
  %41 = trunc i32 %9 to i16
  switch i16 %41, label %60 [
    i16 37, label %42
    i16 44, label %48
    i16 45, label %54
    i16 2, label %151
    i16 1, label %151
    i16 38, label %151
    i16 32, label %151
    i16 30, label %151
    i16 31, label %151
  ], !prof !111

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !55
  %45 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !55
  %47 = icmp eq i32 %44, %46
  br label %151

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !55
  %51 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !55
  %53 = icmp eq ptr %50, %52
  br label %151

54:                                               ; preds = %40
  %55 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !55
  %57 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !55
  %59 = icmp eq ptr %56, %58
  br label %151

60:                                               ; preds = %40
  %61 = zext nneg i32 %10 to i64
  %62 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !44
  %64 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %61
  %65 = load i8, ptr %64, align 1, !tbaa !55
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %151, label %67, !prof !112

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %69 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %70 = zext i8 %65 to i64
  br label %71

71:                                               ; preds = %67, %149
  %72 = phi i64 [ %70, %67 ], [ %73, %149 ]
  %73 = add nsw i64 %72, -1
  %74 = getelementptr inbounds i8, ptr %63, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !55
  switch i8 %75, label %148 [
    i8 119, label %76
    i8 110, label %84
    i8 105, label %84
    i8 86, label %92
    i8 69, label %92
    i8 101, label %122
    i8 83, label %129
    i8 115, label %129
    i8 117, label %149
    i8 48, label %149
    i8 116, label %149
  ], !prof !113

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %78 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %79 = getelementptr inbounds [1 x i64], ptr %77, i64 0, i64 %73
  %80 = load i64, ptr %79, align 8, !tbaa !55
  %81 = getelementptr inbounds [1 x i64], ptr %78, i64 0, i64 %73
  %82 = load i64, ptr %81, align 8, !tbaa !55
  %83 = icmp eq i64 %80, %82
  br i1 %83, label %149, label %151

84:                                               ; preds = %71, %71
  %85 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %86 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %87 = getelementptr inbounds [1 x %union.rtunion_def], ptr %85, i64 0, i64 %73
  %88 = load i32, ptr %87, align 8, !tbaa !55
  %89 = getelementptr inbounds [1 x %union.rtunion_def], ptr %86, i64 0, i64 %73
  %90 = load i32, ptr %89, align 8, !tbaa !55
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %149, label %151, !prof !114

92:                                               ; preds = %71, %71
  %93 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %94 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %95 = getelementptr inbounds [1 x %union.rtunion_def], ptr %93, i64 0, i64 %73
  %96 = load ptr, ptr %95, align 8, !tbaa !55
  %97 = load i32, ptr %96, align 8, !tbaa !65
  %98 = getelementptr inbounds [1 x %union.rtunion_def], ptr %94, i64 0, i64 %73
  %99 = load ptr, ptr %98, align 8, !tbaa !55
  %100 = load i32, ptr %99, align 8, !tbaa !65
  %101 = icmp eq i32 %97, %100
  br i1 %101, label %102, label %151, !prof !115

102:                                              ; preds = %92
  %103 = load ptr, ptr %95, align 8, !tbaa !55
  %104 = load i32, ptr %103, align 8, !tbaa !65
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %112, label %149, !prof !116

106:                                              ; preds = %112
  %107 = add nuw nsw i64 %113, 1
  %108 = load ptr, ptr %95, align 8, !tbaa !55
  %109 = load i32, ptr %108, align 8, !tbaa !65
  %110 = sext i32 %109 to i64
  %111 = icmp slt i64 %107, %110
  br i1 %111, label %112, label %149, !prof !115, !llvm.loop !117

112:                                              ; preds = %102, %106
  %113 = phi i64 [ %107, %106 ], [ 0, %102 ]
  %114 = phi ptr [ %108, %106 ], [ %103, %102 ]
  %115 = getelementptr inbounds %struct.rtvec_def, ptr %114, i64 0, i32 1, i64 %113
  %116 = load ptr, ptr %115, align 8, !tbaa !44
  %117 = load ptr, ptr %98, align 8, !tbaa !55
  %118 = getelementptr inbounds %struct.rtvec_def, ptr %117, i64 0, i32 1, i64 %113
  %119 = load ptr, ptr %118, align 8, !tbaa !44
  %120 = tail call i32 @rtx_equal_p(ptr noundef %116, ptr noundef %119), !range !88
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %151, label %106, !prof !115

122:                                              ; preds = %71
  %123 = getelementptr inbounds [1 x %union.rtunion_def], ptr %68, i64 0, i64 %73
  %124 = load ptr, ptr %123, align 8, !tbaa !55
  %125 = getelementptr inbounds [1 x %union.rtunion_def], ptr %69, i64 0, i64 %73
  %126 = load ptr, ptr %125, align 8, !tbaa !55
  %127 = tail call i32 @rtx_equal_p(ptr noundef %124, ptr noundef %126), !range !88
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %151, label %149, !prof !118

129:                                              ; preds = %71, %71
  %130 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %131 = getelementptr inbounds [1 x %union.rtunion_def], ptr %130, i64 0, i64 %73
  %132 = load ptr, ptr %131, align 8, !tbaa !55
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %136 = getelementptr inbounds [1 x %union.rtunion_def], ptr %135, i64 0, i64 %73
  %137 = load ptr, ptr %136, align 8, !tbaa !55
  %138 = icmp eq ptr %137, null
  br i1 %138, label %149, label %139

139:                                              ; preds = %134
  br i1 %133, label %151, label %140

140:                                              ; preds = %129, %139
  %141 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %142 = getelementptr inbounds [1 x %union.rtunion_def], ptr %141, i64 0, i64 %73
  %143 = load ptr, ptr %142, align 8, !tbaa !55
  %144 = icmp eq ptr %143, null
  br i1 %144, label %151, label %145

145:                                              ; preds = %140
  %146 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %132, ptr noundef nonnull dereferenceable(1) %143)
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %149, label %151

148:                                              ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str.211, i32 noundef 592, ptr noundef nonnull @.str.212) #17
  br label %149

149:                                              ; preds = %106, %102, %134, %84, %71, %71, %148, %76, %122, %145, %71
  %150 = icmp sgt i64 %72, 1
  br i1 %150, label %71, label %151, !prof !119, !llvm.loop !120

151:                                              ; preds = %84, %140, %149, %76, %92, %122, %139, %145, %112, %60, %40, %40, %40, %40, %40, %37, %40, %14, %8, %4, %2, %54, %48, %42
  %152 = phi i1 [ %59, %54 ], [ %53, %48 ], [ %47, %42 ], [ true, %2 ], [ false, %4 ], [ false, %8 ], [ false, %14 ], [ false, %40 ], [ false, %37 ], [ false, %40 ], [ false, %40 ], [ false, %40 ], [ false, %40 ], [ false, %40 ], [ true, %60 ], [ false, %112 ], [ false, %145 ], [ false, %139 ], [ false, %122 ], [ false, %92 ], [ false, %76 ], [ true, %149 ], [ false, %140 ], [ false, %84 ]
  %153 = zext i1 %152 to i32
  ret i32 %153
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @dump_rtx_statistics() local_unnamed_addr #16 !prof !43 {
  ret void
}

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!42}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41}
!35 = !{ptr @rtvec_alloc, ptr @ggc_alloc_stat, i64 209613}
!36 = !{ptr @rtx_alloc_stat, ptr @ggc_alloc_stat, i64 11626003}
!37 = !{ptr @copy_rtx, ptr @ggc_alloc_stat, i64 607864}
!38 = !{ptr @copy_rtx, ptr @copy_rtx, i64 855747}
!39 = !{ptr @shallow_copy_rtx_stat, ptr @ggc_alloc_stat, i64 1082757}
!40 = !{ptr @rtx_equal_p_cb, ptr @rtx_equal_p_cb, i64 8408}
!41 = !{ptr @rtx_equal_p, ptr @rtx_equal_p, i64 356194}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !{!49, !45, i64 8}
!49 = !{!"_IO_FILE", !50, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !50, i64 112, !50, i64 116, !51, i64 120, !52, i64 128, !46, i64 130, !46, i64 131, !45, i64 136, !51, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !51, i64 184, !50, i64 192, !46, i64 196}
!50 = !{!"int", !46, i64 0}
!51 = !{!"long", !46, i64 0}
!52 = !{!"short", !46, i64 0}
!53 = !{!49, !45, i64 16}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{!46, !46, i64 0}
!56 = !{!49, !45, i64 40}
!57 = !{!49, !45, i64 48}
!58 = !{!49, !50, i64 0}
!59 = !{!50, !50, i64 0}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!"function_entry_count", i64 209613}
!64 = !{!"VP", i32 1, i64 209613, i64 16, i64 177825, i64 8, i64 24345, i64 17, i64 7350, i64 32, i64 44}
!65 = !{!66, !50, i64 0}
!66 = !{!"rtvec_def", !50, i64 0, !46, i64 8}
!67 = !{!"function_entry_count", i64 11626003}
!68 = !{!"function_entry_count", i64 33934}
!69 = !{!"branch_weights", i32 82201, i32 0}
!70 = !{!"function_entry_count", i64 2309107}
!71 = !{!"branch_weights", i32 607864, i32 609842, i32 0, i32 0, i32 661658, i32 0, i32 0, i32 0, i32 381476, i32 0, i32 0, i32 0, i32 0, i32 0, i32 48267}
!72 = !{!"branch_weights", i32 48267, i32 0}
!73 = !{!"branch_weights", i32 0, i32 607864}
!74 = !{!"VP", i32 1, i64 607864, i64 17, i64 606322, i64 16, i64 933, i64 32, i64 609}
!75 = !{!"branch_weights", i32 1, i32 607863}
!76 = !{!"branch_weights", i32 0, i32 855747, i32 0, i32 0, i32 0, i32 0, i32 48927, i32 0, i32 0, i32 0, i32 46, i32 0, i32 310684}
!77 = !{!"branch_weights", i32 0, i32 855747}
!78 = distinct !{!78, !61, !62}
!79 = !{!"branch_weights", i32 607541, i32 607863}
!80 = distinct !{!80, !61, !62}
!81 = !{!"function_entry_count", i64 1082757}
!82 = !{!"branch_weights", i32 0, i32 1082757}
!83 = !{!"VP", i32 1, i64 1082757, i64 17, i64 1051835, i64 32, i64 25279, i64 16, i64 5614, i64 8, i64 29}
!84 = !{!"function_entry_count", i64 15508}
!85 = !{!"branch_weights", i32 6260, i32 9248}
!86 = !{!"branch_weights", i32 0, i32 9248}
!87 = !{!"branch_weights", i32 9248, i32 0}
!88 = !{i32 0, i32 2}
!89 = !{!"branch_weights", i32 9144, i32 104}
!90 = !{!"branch_weights", i32 9144, i32 0}
!91 = !{!"branch_weights", i32 6260, i32 2884}
!92 = !{!"branch_weights", i32 0, i32 6260}
!93 = !{!94, !46, i64 32}
!94 = !{!"mem_attrs", !45, i64 0, !45, i64 8, !45, i64 16, !50, i64 24, !50, i64 28, !46, i64 32}
!95 = !{!"branch_weights", i32 6260, i32 0}
!96 = !{!"branch_weights", i32 7702, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1442, i32 0}
!97 = !{!"branch_weights", i32 1, i32 6259}
!98 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7702, i32 0, i32 0, i32 0, i32 6260, i32 0}
!99 = distinct !{!99, !61, !62}
!100 = !{!"branch_weights", i32 1442, i32 6260}
!101 = !{!"branch_weights", i32 7703, i32 6259}
!102 = distinct !{!102, !61, !62}
!103 = !{!"function_entry_count", i64 16361793}
!104 = !{!"branch_weights", i32 2093257, i32 14268536}
!105 = !{!"branch_weights", i32 126523, i32 14142013}
!106 = !{!"branch_weights", i32 2399359, i32 11742654}
!107 = !{!"branch_weights", i32 1780619, i32 618740}
!108 = !{!"branch_weights", i32 83178, i32 1697441}
!109 = !{!"branch_weights", i32 23, i32 83155}
!110 = !{!"branch_weights", i32 83178, i32 0}
!111 = !{!"branch_weights", i32 241068, i32 1138307, i32 95310, i32 180006, i32 0, i32 0, i32 0, i32 0, i32 125928, i32 0}
!112 = !{!"branch_weights", i32 1, i32 47538}
!113 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 24714, i32 0, i32 149, i32 324633, i32 0, i32 0, i32 0, i32 83178, i32 0}
!114 = !{!"branch_weights", i32 24714, i32 0}
!115 = !{!"branch_weights", i32 149, i32 0}
!116 = !{!"branch_weights", i32 1, i32 0}
!117 = distinct !{!117, !61, !62}
!118 = !{!"branch_weights", i32 193380, i32 131253}
!119 = !{!"branch_weights", i32 385136, i32 47538}
!120 = distinct !{!120, !61, !62}
