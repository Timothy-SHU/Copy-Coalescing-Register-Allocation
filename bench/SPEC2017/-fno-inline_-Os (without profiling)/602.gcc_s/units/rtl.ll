; ModuleID = 'rtl.c'
source_filename = "rtl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }

@generating_concat_p = dso_local local_unnamed_addr global i32 0, align 4
@currently_expanding_to_rtl = dso_local local_unnamed_addr global i32 0, align 4
@rtx_length = dso_local local_unnamed_addr constant [139 x i8] c"\01\01\01\02\02\01\01\08\08\09\09\08\08\07\02\01\02\07\02\02\01\05\03\02\01\01\02\00\00\02\01\03\04\01\01\01\00\03\01\02\01\02\01\02\01\03\00\03\02\02\02\01\02\02\02\02\02\02\02\02\02\02\02\02\01\02\02\02\02\02\02\02\02\02\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\03\03\01\02\03\02\02\01\02\02\02\01\01\01\02\02\02\01\01\03", align 16
@rtx_name = dso_local local_unnamed_addr constant [139 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138], align 16
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
@rtx_format = dso_local local_unnamed_addr constant [139 x ptr] [ptr @.str.139, ptr @.str.140, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.141, ptr @.str.143, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.153, ptr @.str.143, ptr @.str.154, ptr @.str.155, ptr @.str.141, ptr @.str.144, ptr @.str.144, ptr @.str.141, ptr @.str.156, ptr @.str.156, ptr @.str.141, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.143, ptr @.str.160, ptr @.str.144, ptr @.str.156, ptr @.str.161, ptr @.str.140, ptr @.str.162, ptr @.str.144, ptr @.str.141, ptr @.str.143, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.156, ptr @.str.155, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.144, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.144, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.155, ptr @.str.155, ptr @.str.144, ptr @.str.141, ptr @.str.155, ptr @.str.141, ptr @.str.141, ptr @.str.144, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.144, ptr @.str.144, ptr @.str.144, ptr @.str.141, ptr @.str.141, ptr @.str.141, ptr @.str.144, ptr @.str.144, ptr @.str.166], align 16
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
@rtx_class = dso_local local_unnamed_addr constant [139 x i32] [i32 5, i32 8, i32 8, i32 5, i32 5, i32 5, i32 6, i32 7, i32 7, i32 7, i32 7, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 9, i32 9, i32 9, i32 9, i32 8, i32 9, i32 8, i32 8, i32 8, i32 5, i32 5, i32 8, i32 8, i32 8, i32 9, i32 9, i32 8, i32 10, i32 2, i32 3, i32 2, i32 4, i32 3, i32 3, i32 3, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 4, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 12, i32 12, i32 12, i32 12, i32 12, i32 12, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 11, i32 11, i32 9, i32 8, i32 10, i32 2, i32 2, i32 4, i32 3, i32 3, i32 2, i32 4, i32 4, i32 4, i32 2, i32 2, i32 2, i32 4, i32 4, i32 5], align 16
@rtx_code_size = dso_local local_unnamed_addr constant [139 x i8] c"\10\10\10\18\18\10\10HHPPHH@\18\10\18@\18\18\100 \18\10\10\18\08\08\18\10 (\10\10\10\08 \10\18\10\18\10\18\10 \08 \18\18\18\10\18\18\18\18\18\18\18\18\18\18\18\18\10\18\18\18\18\18\18\18\18\18\10\10\10\10\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10  \10\18 \18\18\10\18\18\18\10\10\10\18\18\18\10\10 ", align 16
@note_insn_name = dso_local local_unnamed_addr constant [13 x ptr] [ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179], align 16
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
@reg_note_name = dso_local local_unnamed_addr constant [31 x ptr] [ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210], align 16
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
@.str.211 = private unnamed_addr constant [6 x i8] c"rtl.c\00", align 1
@.str.212 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @rtvec_alloc(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add nsw i32 %0, -1
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 3
  %5 = add nsw i64 %4, 16
  %6 = tail call ptr @ggc_alloc_stat(i64 noundef %5) #8
  %7 = getelementptr inbounds %struct.rtvec_def, ptr %6, i64 0, i32 1
  %8 = sext i32 %0 to i64
  %9 = shl nsw i64 %8, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %7, i8 0, i64 %9, i1 false)
  store i32 %0, ptr %6, align 8, !tbaa !6
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @shallow_copy_rtvec(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !6
  %3 = tail call ptr @rtvec_alloc(i32 noundef %2) #9
  %4 = getelementptr inbounds %struct.rtvec_def, ptr %3, i64 0, i32 1
  %5 = getelementptr inbounds %struct.rtvec_def, ptr %0, i64 0, i32 1
  %6 = sext i32 %2 to i64
  %7 = shl nsw i64 %6, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4, ptr nonnull align 8 %5, i64 %7, i1 false)
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @rtx_size(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 45
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load i32, ptr %6, align 8, !tbaa !11
  %8 = and i32 %7, 128
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5, %1
  %11 = zext nneg i32 %3 to i64
  %12 = getelementptr inbounds [139 x i8], ptr @rtx_code_size, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !11
  %14 = zext i8 %13 to i32
  br label %15

15:                                               ; preds = %5, %10
  %16 = phi i32 [ %14, %10 ], [ 48, %5 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @rtx_alloc_stat(i32 noundef %0) local_unnamed_addr #0 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [139 x i8], ptr @rtx_code_size, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !11
  %5 = zext i8 %4 to i64
  %6 = tail call ptr @ggc_alloc_stat(i64 noundef %5) #8
  store i64 0, ptr %6, align 8
  %7 = and i32 %0, 65535
  store i32 %7, ptr %6, align 8
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @shared_const_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 35
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.211, i32 noundef 222, ptr noundef nonnull @.str.212) #8
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 49
  br i1 %11, label %12, label %25

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !11
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 45
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 30
  %24 = zext i1 %23 to i8
  br label %25

25:                                               ; preds = %18, %12, %6
  %26 = phi i8 [ 0, %12 ], [ 0, %6 ], [ %24, %18 ]
  ret i8 %26
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @copy_rtx(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %16 [
    i16 37, label %92
    i16 2, label %92
    i16 1, label %92
    i16 30, label %92
    i16 32, label %92
    i16 31, label %92
    i16 33, label %92
    i16 45, label %92
    i16 12, label %92
    i16 36, label %92
    i16 46, label %92
    i16 38, label %92
    i16 25, label %4
    i16 35, label %13
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 37
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %6) #9
  %12 = icmp ult i32 %11, 53
  br i1 %12, label %92, label %16

13:                                               ; preds = %1
  %14 = tail call zeroext i8 @shared_const_p(ptr noundef nonnull %0) #9, !range !12
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %92

16:                                               ; preds = %1, %13, %4, %10
  %17 = tail call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %0) #9
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, -536870913
  store i32 %19, ptr %17, align 8
  %20 = load i32, ptr %0, align 8
  %21 = and i32 %20, 65535
  %22 = add nsw i32 %21, -7
  %23 = icmp ult i32 %22, 4
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = and i32 %18, -1610612737
  store i32 %25, ptr %17, align 8
  %26 = load i32, ptr %0, align 8
  br label %27

27:                                               ; preds = %16, %24
  %28 = phi i32 [ %19, %16 ], [ %25, %24 ]
  %29 = phi i32 [ %20, %16 ], [ %26, %24 ]
  %30 = and i32 %29, 16777216
  %31 = and i32 %28, -553648129
  %32 = or disjoint i32 %31, %30
  store i32 %32, ptr %17, align 8
  %33 = load i32, ptr %0, align 8
  %34 = and i32 %33, 33554432
  %35 = and i32 %32, -570425345
  %36 = or disjoint i32 %35, %34
  store i32 %36, ptr %17, align 8
  %37 = and i32 %28, 65535
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !11
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %92, label %42

42:                                               ; preds = %27
  %43 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %38
  %44 = load ptr, ptr %43, align 8, !tbaa !13
  %45 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %46 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  br label %47

47:                                               ; preds = %42, %83
  %48 = phi i64 [ 0, %42 ], [ %84, %83 ]
  %49 = phi ptr [ %44, %42 ], [ %50, %83 ]
  %50 = getelementptr inbounds i8, ptr %49, i64 1
  %51 = load i8, ptr %49, align 1, !tbaa !11
  switch i8 %51, label %82 [
    i8 101, label %52
    i8 69, label %59
    i8 86, label %59
    i8 116, label %83
    i8 119, label %83
    i8 105, label %83
    i8 115, label %83
    i8 83, label %83
    i8 84, label %83
    i8 117, label %83
    i8 66, label %83
    i8 48, label %83
  ]

52:                                               ; preds = %47
  %53 = getelementptr inbounds [1 x %union.rtunion_def], ptr %45, i64 0, i64 %48
  %54 = load ptr, ptr %53, align 8, !tbaa !11
  %55 = icmp eq ptr %54, null
  br i1 %55, label %83, label %56

56:                                               ; preds = %52
  %57 = tail call ptr @copy_rtx(ptr noundef nonnull %54) #9
  %58 = getelementptr inbounds [1 x %union.rtunion_def], ptr %46, i64 0, i64 %48
  store ptr %57, ptr %58, align 8, !tbaa !11
  br label %83

59:                                               ; preds = %47, %47
  %60 = getelementptr inbounds [1 x %union.rtunion_def], ptr %45, i64 0, i64 %48
  %61 = load ptr, ptr %60, align 8, !tbaa !11
  %62 = icmp eq ptr %61, null
  br i1 %62, label %83, label %63

63:                                               ; preds = %59
  %64 = load i32, ptr %61, align 8, !tbaa !6
  %65 = tail call ptr @rtvec_alloc(i32 noundef %64) #9
  %66 = getelementptr inbounds [1 x %union.rtunion_def], ptr %46, i64 0, i64 %48
  store ptr %65, ptr %66, align 8, !tbaa !11
  %67 = load i32, ptr %65, align 8, !tbaa !6
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %63, %69
  %70 = phi i64 [ %77, %69 ], [ 0, %63 ]
  %71 = load ptr, ptr %60, align 8, !tbaa !11
  %72 = getelementptr inbounds %struct.rtvec_def, ptr %71, i64 0, i32 1, i64 %70
  %73 = load ptr, ptr %72, align 8, !tbaa !13
  %74 = tail call ptr @copy_rtx(ptr noundef %73) #9
  %75 = load ptr, ptr %66, align 8, !tbaa !11
  %76 = getelementptr inbounds %struct.rtvec_def, ptr %75, i64 0, i32 1, i64 %70
  store ptr %74, ptr %76, align 8, !tbaa !13
  %77 = add nuw nsw i64 %70, 1
  %78 = load ptr, ptr %66, align 8, !tbaa !11
  %79 = load i32, ptr %78, align 8, !tbaa !6
  %80 = sext i32 %79 to i64
  %81 = icmp slt i64 %77, %80
  br i1 %81, label %69, label %83, !llvm.loop !15

82:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str.211, i32 noundef 330, ptr noundef nonnull @.str.212) #8
  br label %83

83:                                               ; preds = %69, %63, %82, %56, %52, %59, %47, %47, %47, %47, %47, %47, %47, %47, %47
  %84 = add nuw nsw i64 %48, 1
  %85 = load i32, ptr %17, align 8
  %86 = and i32 %85, 65535
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !11
  %90 = zext i8 %89 to i64
  %91 = icmp ult i64 %84, %90
  br i1 %91, label %47, label %92, !llvm.loop !17

92:                                               ; preds = %83, %27, %13, %10, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %93 = phi ptr [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %1 ], [ %0, %10 ], [ %0, %13 ], [ %17, %27 ], [ %17, %83 ]
  ret ptr %93
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !11
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @shallow_copy_rtx_stat(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 @rtx_size(ptr noundef %0) #9, !range !18
  %3 = zext nneg i32 %2 to i64
  %4 = tail call ptr @ggc_alloc_stat(i64 noundef %3) #8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %0, i64 %3, i1 false)
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @rtx_equal_p_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !13
  store ptr %1, ptr %5, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  %8 = icmp eq ptr %0, %1
  br i1 %8, label %180, label %9

9:                                                ; preds = %3
  %10 = icmp eq ptr %0, null
  %11 = icmp eq ptr %1, null
  %12 = or i1 %10, %11
  br i1 %12, label %180, label %13

13:                                               ; preds = %9
  %14 = icmp eq ptr %2, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %13
  %16 = call i32 %2(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load ptr, ptr %4, align 8, !tbaa !13
  %20 = load ptr, ptr %5, align 8, !tbaa !13
  br label %25

21:                                               ; preds = %15
  %22 = load ptr, ptr %6, align 8, !tbaa !13
  %23 = load ptr, ptr %7, align 8, !tbaa !13
  %24 = call i32 @rtx_equal_p_cb(ptr noundef %22, ptr noundef %23, ptr noundef nonnull %2) #9, !range !19
  br label %180

25:                                               ; preds = %18, %13
  %26 = phi ptr [ %20, %18 ], [ %1, %13 ]
  %27 = phi ptr [ %19, %18 ], [ %0, %13 ]
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = load i32, ptr %26, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %180

33:                                               ; preds = %25
  %34 = xor i32 %30, %28
  %35 = and i32 %34, 16711680
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %180

37:                                               ; preds = %33
  %38 = icmp eq i32 %29, 43
  br i1 %38, label %39, label %59

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1, i32 0, i32 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !11
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.mem_attrs, ptr %41, i64 0, i32 5
  %45 = load i8, ptr %44, align 8, !tbaa !20
  %46 = zext i8 %45 to i32
  br label %47

47:                                               ; preds = %39, %43
  %48 = phi i32 [ %46, %43 ], [ 0, %39 ]
  %49 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !11
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.mem_attrs, ptr %50, i64 0, i32 5
  %54 = load i8, ptr %53, align 8, !tbaa !20
  %55 = zext i8 %54 to i32
  br label %56

56:                                               ; preds = %47, %52
  %57 = phi i32 [ %55, %52 ], [ 0, %47 ]
  %58 = icmp eq i32 %48, %57
  br i1 %58, label %59, label %180

59:                                               ; preds = %56, %37
  %60 = trunc i32 %28 to i16
  switch i16 %60, label %80 [
    i16 37, label %61
    i16 44, label %66
    i16 45, label %73
    i16 2, label %180
    i16 1, label %180
    i16 38, label %180
    i16 32, label %180
    i16 30, label %180
    i16 31, label %180
  ]

61:                                               ; preds = %59
  %62 = call fastcc i32 @rhs_regno(ptr noundef nonnull %27) #9
  %63 = call fastcc i32 @rhs_regno(ptr noundef nonnull %26) #9
  %64 = icmp eq i32 %62, %63
  %65 = zext i1 %64 to i32
  br label %180

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !11
  %69 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !11
  %71 = icmp eq ptr %68, %70
  %72 = zext i1 %71 to i32
  br label %180

73:                                               ; preds = %59
  %74 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !11
  %76 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !11
  %78 = icmp eq ptr %75, %77
  %79 = zext i1 %78 to i32
  br label %180

80:                                               ; preds = %59
  %81 = zext nneg i32 %29 to i64
  %82 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !13
  %84 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %81
  %85 = load i8, ptr %84, align 1, !tbaa !11
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %180, label %87

87:                                               ; preds = %80
  %88 = zext i8 %85 to i64
  br label %89

89:                                               ; preds = %87, %178
  %90 = phi i64 [ %88, %87 ], [ %91, %178 ]
  %91 = add nsw i64 %90, -1
  %92 = getelementptr inbounds i8, ptr %83, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !11
  switch i8 %93, label %177 [
    i8 119, label %94
    i8 110, label %104
    i8 105, label %104
    i8 86, label %114
    i8 69, label %114
    i8 101, label %150
    i8 83, label %161
    i8 115, label %161
    i8 117, label %178
    i8 48, label %178
    i8 116, label %178
  ]

94:                                               ; preds = %89
  %95 = load ptr, ptr %4, align 8, !tbaa !13
  %96 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1
  %97 = getelementptr inbounds [1 x i64], ptr %96, i64 0, i64 %91
  %98 = load i64, ptr %97, align 8, !tbaa !11
  %99 = load ptr, ptr %5, align 8, !tbaa !13
  %100 = getelementptr inbounds %struct.rtx_def, ptr %99, i64 0, i32 1
  %101 = getelementptr inbounds [1 x i64], ptr %100, i64 0, i64 %91
  %102 = load i64, ptr %101, align 8, !tbaa !11
  %103 = icmp eq i64 %98, %102
  br i1 %103, label %178, label %180

104:                                              ; preds = %89, %89
  %105 = load ptr, ptr %4, align 8, !tbaa !13
  %106 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1
  %107 = getelementptr inbounds [1 x %union.rtunion_def], ptr %106, i64 0, i64 %91
  %108 = load i32, ptr %107, align 8, !tbaa !11
  %109 = load ptr, ptr %5, align 8, !tbaa !13
  %110 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1
  %111 = getelementptr inbounds [1 x %union.rtunion_def], ptr %110, i64 0, i64 %91
  %112 = load i32, ptr %111, align 8, !tbaa !11
  %113 = icmp eq i32 %108, %112
  br i1 %113, label %178, label %180

114:                                              ; preds = %89, %89
  %115 = load ptr, ptr %4, align 8, !tbaa !13
  %116 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 0, i32 1
  %117 = getelementptr inbounds [1 x %union.rtunion_def], ptr %116, i64 0, i64 %91
  %118 = load ptr, ptr %117, align 8, !tbaa !11
  %119 = load i32, ptr %118, align 8, !tbaa !6
  %120 = load ptr, ptr %5, align 8, !tbaa !13
  %121 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1
  %122 = getelementptr inbounds [1 x %union.rtunion_def], ptr %121, i64 0, i64 %91
  %123 = load ptr, ptr %122, align 8, !tbaa !11
  %124 = load i32, ptr %123, align 8, !tbaa !6
  %125 = icmp eq i32 %119, %124
  br i1 %125, label %126, label %180

126:                                              ; preds = %114
  %127 = icmp sgt i32 %119, 0
  br i1 %127, label %137, label %178

128:                                              ; preds = %137
  %129 = add nuw nsw i64 %138, 1
  %130 = load ptr, ptr %4, align 8, !tbaa !13
  %131 = getelementptr inbounds %struct.rtx_def, ptr %130, i64 0, i32 1
  %132 = getelementptr inbounds [1 x %union.rtunion_def], ptr %131, i64 0, i64 %91
  %133 = load ptr, ptr %132, align 8, !tbaa !11
  %134 = load i32, ptr %133, align 8, !tbaa !6
  %135 = sext i32 %134 to i64
  %136 = icmp slt i64 %129, %135
  br i1 %136, label %137, label %178, !llvm.loop !22

137:                                              ; preds = %126, %128
  %138 = phi i64 [ %129, %128 ], [ 0, %126 ]
  %139 = phi ptr [ %133, %128 ], [ %118, %126 ]
  %140 = getelementptr inbounds %struct.rtvec_def, ptr %139, i64 0, i32 1, i64 %138
  %141 = load ptr, ptr %140, align 8, !tbaa !13
  %142 = load ptr, ptr %5, align 8, !tbaa !13
  %143 = getelementptr inbounds %struct.rtx_def, ptr %142, i64 0, i32 1
  %144 = getelementptr inbounds [1 x %union.rtunion_def], ptr %143, i64 0, i64 %91
  %145 = load ptr, ptr %144, align 8, !tbaa !11
  %146 = getelementptr inbounds %struct.rtvec_def, ptr %145, i64 0, i32 1, i64 %138
  %147 = load ptr, ptr %146, align 8, !tbaa !13
  %148 = call i32 @rtx_equal_p_cb(ptr noundef %141, ptr noundef %147, ptr noundef %2) #9, !range !19
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %180, label %128

150:                                              ; preds = %89
  %151 = load ptr, ptr %4, align 8, !tbaa !13
  %152 = getelementptr inbounds %struct.rtx_def, ptr %151, i64 0, i32 1
  %153 = getelementptr inbounds [1 x %union.rtunion_def], ptr %152, i64 0, i64 %91
  %154 = load ptr, ptr %153, align 8, !tbaa !11
  %155 = load ptr, ptr %5, align 8, !tbaa !13
  %156 = getelementptr inbounds %struct.rtx_def, ptr %155, i64 0, i32 1
  %157 = getelementptr inbounds [1 x %union.rtunion_def], ptr %156, i64 0, i64 %91
  %158 = load ptr, ptr %157, align 8, !tbaa !11
  %159 = call i32 @rtx_equal_p_cb(ptr noundef %154, ptr noundef %158, ptr noundef %2) #9, !range !19
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %180, label %178

161:                                              ; preds = %89, %89
  %162 = load ptr, ptr %4, align 8, !tbaa !13
  %163 = getelementptr inbounds %struct.rtx_def, ptr %162, i64 0, i32 1
  %164 = getelementptr inbounds [1 x %union.rtunion_def], ptr %163, i64 0, i64 %91
  %165 = load ptr, ptr %164, align 8, !tbaa !11
  %166 = icmp eq ptr %165, null
  %167 = load ptr, ptr %5, align 8, !tbaa !13
  %168 = getelementptr inbounds %struct.rtx_def, ptr %167, i64 0, i32 1
  %169 = getelementptr inbounds [1 x %union.rtunion_def], ptr %168, i64 0, i64 %91
  %170 = load ptr, ptr %169, align 8, !tbaa !11
  %171 = icmp eq ptr %170, null
  br i1 %166, label %172, label %173

172:                                              ; preds = %161
  br i1 %171, label %178, label %180

173:                                              ; preds = %161
  br i1 %171, label %180, label %174

174:                                              ; preds = %173
  %175 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %165, ptr noundef nonnull dereferenceable(1) %170) #9
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %178, label %180

177:                                              ; preds = %89
  call void @fancy_abort(ptr noundef nonnull @.str.211, i32 noundef 473, ptr noundef nonnull @.str.212) #8
  br label %178

178:                                              ; preds = %128, %126, %89, %177, %94, %104, %150, %174, %172, %89, %89
  %179 = icmp sgt i64 %90, 1
  br i1 %179, label %89, label %180, !llvm.loop !23

180:                                              ; preds = %94, %104, %114, %150, %174, %173, %178, %172, %137, %80, %59, %59, %59, %59, %59, %59, %56, %33, %25, %9, %3, %73, %66, %61, %21
  %181 = phi i32 [ %24, %21 ], [ %79, %73 ], [ %72, %66 ], [ %65, %61 ], [ 1, %3 ], [ 0, %9 ], [ 0, %25 ], [ 0, %33 ], [ 0, %56 ], [ 0, %59 ], [ 0, %59 ], [ 0, %59 ], [ 0, %59 ], [ 0, %59 ], [ 0, %59 ], [ 1, %80 ], [ 0, %137 ], [ 0, %94 ], [ 0, %104 ], [ 0, %114 ], [ 0, %150 ], [ 0, %174 ], [ 0, %173 ], [ 1, %178 ], [ 0, %172 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  ret i32 %181
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @rtx_equal_p(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %134, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %134, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = load i32, ptr %1, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %134

14:                                               ; preds = %8
  %15 = xor i32 %11, %9
  %16 = and i32 %15, 16711680
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %134

18:                                               ; preds = %14
  %19 = icmp eq i32 %10, 43
  br i1 %19, label %20, label %40

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.mem_attrs, ptr %22, i64 0, i32 5
  %26 = load i8, ptr %25, align 8, !tbaa !20
  %27 = zext i8 %26 to i32
  br label %28

28:                                               ; preds = %20, %24
  %29 = phi i32 [ %27, %24 ], [ 0, %20 ]
  %30 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.mem_attrs, ptr %31, i64 0, i32 5
  %35 = load i8, ptr %34, align 8, !tbaa !20
  %36 = zext i8 %35 to i32
  br label %37

37:                                               ; preds = %28, %33
  %38 = phi i32 [ %36, %33 ], [ 0, %28 ]
  %39 = icmp eq i32 %29, %38
  br i1 %39, label %40, label %134

40:                                               ; preds = %37, %18
  %41 = trunc i32 %9 to i16
  switch i16 %41, label %58 [
    i16 37, label %42
    i16 44, label %46
    i16 45, label %52
    i16 2, label %134
    i16 1, label %134
    i16 38, label %134
    i16 32, label %134
    i16 30, label %134
    i16 31, label %134
  ]

42:                                               ; preds = %40
  %43 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #9
  %44 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #9
  %45 = icmp eq i32 %43, %44
  br label %134

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !11
  %49 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !11
  %51 = icmp eq ptr %48, %50
  br label %134

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !11
  %55 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !11
  %57 = icmp eq ptr %54, %56
  br label %134

58:                                               ; preds = %40
  %59 = zext nneg i32 %10 to i64
  %60 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !13
  %62 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %59
  %63 = load i8, ptr %62, align 1, !tbaa !11
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %134, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %67 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %68 = zext i8 %63 to i64
  br label %69

69:                                               ; preds = %65, %132
  %70 = phi i64 [ %68, %65 ], [ %71, %132 ]
  %71 = add nsw i64 %70, -1
  %72 = getelementptr inbounds i8, ptr %61, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !11
  switch i8 %73, label %131 [
    i8 119, label %74
    i8 110, label %80
    i8 105, label %80
    i8 86, label %86
    i8 69, label %86
    i8 101, label %112
    i8 83, label %119
    i8 115, label %119
    i8 117, label %132
    i8 48, label %132
    i8 116, label %132
  ]

74:                                               ; preds = %69
  %75 = getelementptr inbounds [1 x i64], ptr %66, i64 0, i64 %71
  %76 = load i64, ptr %75, align 8, !tbaa !11
  %77 = getelementptr inbounds [1 x i64], ptr %67, i64 0, i64 %71
  %78 = load i64, ptr %77, align 8, !tbaa !11
  %79 = icmp eq i64 %76, %78
  br i1 %79, label %132, label %134

80:                                               ; preds = %69, %69
  %81 = getelementptr inbounds [1 x %union.rtunion_def], ptr %66, i64 0, i64 %71
  %82 = load i32, ptr %81, align 8, !tbaa !11
  %83 = getelementptr inbounds [1 x %union.rtunion_def], ptr %67, i64 0, i64 %71
  %84 = load i32, ptr %83, align 8, !tbaa !11
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %132, label %134

86:                                               ; preds = %69, %69
  %87 = getelementptr inbounds [1 x %union.rtunion_def], ptr %66, i64 0, i64 %71
  %88 = load ptr, ptr %87, align 8, !tbaa !11
  %89 = load i32, ptr %88, align 8, !tbaa !6
  %90 = getelementptr inbounds [1 x %union.rtunion_def], ptr %67, i64 0, i64 %71
  %91 = load ptr, ptr %90, align 8, !tbaa !11
  %92 = load i32, ptr %91, align 8, !tbaa !6
  %93 = icmp eq i32 %89, %92
  br i1 %93, label %94, label %134

94:                                               ; preds = %86
  %95 = icmp sgt i32 %89, 0
  br i1 %95, label %102, label %132

96:                                               ; preds = %102
  %97 = add nuw nsw i64 %103, 1
  %98 = load ptr, ptr %87, align 8, !tbaa !11
  %99 = load i32, ptr %98, align 8, !tbaa !6
  %100 = sext i32 %99 to i64
  %101 = icmp slt i64 %97, %100
  br i1 %101, label %102, label %132, !llvm.loop !24

102:                                              ; preds = %94, %96
  %103 = phi i64 [ %97, %96 ], [ 0, %94 ]
  %104 = phi ptr [ %98, %96 ], [ %88, %94 ]
  %105 = getelementptr inbounds %struct.rtvec_def, ptr %104, i64 0, i32 1, i64 %103
  %106 = load ptr, ptr %105, align 8, !tbaa !13
  %107 = load ptr, ptr %90, align 8, !tbaa !11
  %108 = getelementptr inbounds %struct.rtvec_def, ptr %107, i64 0, i32 1, i64 %103
  %109 = load ptr, ptr %108, align 8, !tbaa !13
  %110 = tail call i32 @rtx_equal_p(ptr noundef %106, ptr noundef %109) #9, !range !19
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %134, label %96

112:                                              ; preds = %69
  %113 = getelementptr inbounds [1 x %union.rtunion_def], ptr %66, i64 0, i64 %71
  %114 = load ptr, ptr %113, align 8, !tbaa !11
  %115 = getelementptr inbounds [1 x %union.rtunion_def], ptr %67, i64 0, i64 %71
  %116 = load ptr, ptr %115, align 8, !tbaa !11
  %117 = tail call i32 @rtx_equal_p(ptr noundef %114, ptr noundef %116) #9, !range !19
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %134, label %132

119:                                              ; preds = %69, %69
  %120 = getelementptr inbounds [1 x %union.rtunion_def], ptr %66, i64 0, i64 %71
  %121 = load ptr, ptr %120, align 8, !tbaa !11
  %122 = icmp eq ptr %121, null
  %123 = getelementptr inbounds [1 x %union.rtunion_def], ptr %67, i64 0, i64 %71
  %124 = load ptr, ptr %123, align 8, !tbaa !11
  %125 = icmp eq ptr %124, null
  br i1 %122, label %126, label %127

126:                                              ; preds = %119
  br i1 %125, label %132, label %134

127:                                              ; preds = %119
  br i1 %125, label %134, label %128

128:                                              ; preds = %127
  %129 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %121, ptr noundef nonnull dereferenceable(1) %124) #9
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %132, label %134

131:                                              ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.211, i32 noundef 592, ptr noundef nonnull @.str.212) #8
  br label %132

132:                                              ; preds = %96, %94, %69, %131, %74, %80, %112, %128, %126, %69, %69
  %133 = icmp sgt i64 %70, 1
  br i1 %133, label %69, label %134, !llvm.loop !25

134:                                              ; preds = %74, %80, %86, %112, %128, %127, %132, %126, %102, %58, %40, %40, %40, %40, %40, %40, %37, %14, %8, %4, %2, %52, %46, %42
  %135 = phi i1 [ %57, %52 ], [ %51, %46 ], [ %45, %42 ], [ true, %2 ], [ false, %4 ], [ false, %8 ], [ false, %14 ], [ false, %37 ], [ false, %40 ], [ false, %40 ], [ false, %40 ], [ false, %40 ], [ false, %40 ], [ false, %40 ], [ true, %58 ], [ false, %102 ], [ false, %74 ], [ false, %80 ], [ false, %86 ], [ false, %112 ], [ false, %128 ], [ false, %127 ], [ true, %132 ], [ false, %126 ]
  %136 = zext i1 %135 to i32
  ret i32 %136
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @dump_rtx_statistics() local_unnamed_addr #7 {
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"rtvec_def", !8, i64 0, !9, i64 8}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = !{i8 0, i8 2}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{i32 0, i32 256}
!19 = !{i32 0, i32 2}
!20 = !{!21, !9, i64 32}
!21 = !{!"mem_attrs", !14, i64 0, !14, i64 8, !14, i64 16, !8, i64 24, !8, i64 28, !9, i64 32}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
