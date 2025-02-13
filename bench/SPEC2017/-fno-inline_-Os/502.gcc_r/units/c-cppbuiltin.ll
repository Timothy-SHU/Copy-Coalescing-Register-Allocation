; ModuleID = 'c-cppbuiltin.c'
source_filename = "c-cppbuiltin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_optimization_option = type { %struct.tree_common, %struct.cl_optimization }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.cl_optimization = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.real_value = type { i32, [3 x i64] }

@flag_undef = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [18 x i8] c"__OPTIMIZE_SIZE__\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"__OPTIMIZE__\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"__FAST_MATH__\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"__SUPPORT_SNAN__\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"__FINITE_MATH_ONLY__\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"__FINITE_MATH_ONLY__=1\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"__FINITE_MATH_ONLY__=0\00", align 1
@c_language = external local_unnamed_addr global i32, align 4
@flag_weak = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"__GXX_WEAK__=1\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"__GXX_WEAK__=0\00", align 1
@warn_deprecated = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"__DEPRECATED\00", align 1
@flag_rtti = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"__GXX_RTTI\00", align 1
@cxx_dialect = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"__GXX_EXPERIMENTAL_CXX0X__\00", align 1
@flag_exceptions = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"__EXCEPTIONS\00", align 1
@flag_abi_version = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"__GXX_ABI_VERSION\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"__SCHAR_MAX__\00", align 1
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@.str.15 = private unnamed_addr constant [13 x i8] c"__SHRT_MAX__\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"__INT_MAX__\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"__LONG_MAX__\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"__LONG_LONG_MAX__\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"__WCHAR_MIN__\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"__WCHAR_MAX__\00", align 1
@c_global_trees = external local_unnamed_addr global [55 x ptr], align 16
@.str.21 = private unnamed_addr constant [13 x i8] c"__WINT_MIN__\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"__WINT_MAX__\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"__PTRDIFF_MAX__\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.24 = private unnamed_addr constant [13 x i8] c"__SIZE_MAX__\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"__CHAR_BIT__\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"__FLT_EVAL_METHOD__\00", align 1
@ix86_fpmath = external local_unnamed_addr global i32, align 4
@.str.27 = private unnamed_addr constant [20 x i8] c"__DEC_EVAL_METHOD__\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"FLT\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"DBL\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"((double)%s)\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"LDBL\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"DEC32\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"DF\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"DEC64\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"DD\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"DEC128\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"DL\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.41 = private unnamed_addr constant [7 x i8] c"SFRACT\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"HR\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"USFRACT\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"UHR\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"FRACT\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"UFRACT\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"UR\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"LFRACT\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"LR\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"ULFRACT\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"ULR\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"LLFRACT\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"LLR\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"ULLFRACT\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"ULLR\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"SACCUM\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"HK\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"USACCUM\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"UHK\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"ACCUM\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"UACCUM\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"UK\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"LACCUM\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"LK\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"ULACCUM\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"ULK\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"LLACCUM\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"LLK\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"ULLACCUM\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"ULLK\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"QQ\00", align 1
@.str.74 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"HQ\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"SQ\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"DQ\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"TQ\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"UQQ\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"UHQ\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"USQ\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"UDQ\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"UTQ\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"HA\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"SA\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"DA\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"TA\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"UHA\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"USA\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"UDA\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"UTA\00", align 1
@.str.92 = private unnamed_addr constant [20 x i8] c"__REGISTER_PREFIX__\00", align 1
@.str.93 = private unnamed_addr constant [22 x i8] c"__USER_LABEL_PREFIX__\00", align 1
@user_label_prefix = external local_unnamed_addr global ptr, align 8
@.str.94 = private unnamed_addr constant [12 x i8] c"__VERSION__\00", align 1
@version_string = external constant [0 x i8], align 1
@flag_gnu89_inline = external local_unnamed_addr global i32, align 4
@.str.95 = private unnamed_addr constant [20 x i8] c"__GNUC_GNU_INLINE__\00", align 1
@.str.96 = private unnamed_addr constant [21 x i8] c"__GNUC_STDC_INLINE__\00", align 1
@optimize_size = external local_unnamed_addr global i32, align 4
@optimize = external local_unnamed_addr global i32, align 4
@flag_no_inline = external local_unnamed_addr global i32, align 4
@.str.99 = private unnamed_addr constant [14 x i8] c"__NO_INLINE__\00", align 1
@flag_signaling_nans = external local_unnamed_addr global i32, align 4
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@flag_pic = external local_unnamed_addr global i32, align 4
@.str.100 = private unnamed_addr constant [8 x i8] c"__pic__\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"__PIC__\00", align 1
@flag_pie = external local_unnamed_addr global i32, align 4
@.str.102 = private unnamed_addr constant [8 x i8] c"__pie__\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c"__PIE__\00", align 1
@flag_iso = external local_unnamed_addr global i32, align 4
@.str.104 = private unnamed_addr constant [16 x i8] c"__STRICT_ANSI__\00", align 1
@flag_signed_char = external local_unnamed_addr global i32, align 4
@.str.105 = private unnamed_addr constant [18 x i8] c"__CHAR_UNSIGNED__\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"__WCHAR_UNSIGNED__\00", align 1
@ix86_arch_features = external local_unnamed_addr global [5 x i8], align 1
@.str.107 = private unnamed_addr constant [35 x i8] c"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1\00", align 1
@.str.108 = private unnamed_addr constant [35 x i8] c"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2\00", align 1
@.str.109 = private unnamed_addr constant [35 x i8] c"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4\00", align 1
@.str.110 = private unnamed_addr constant [35 x i8] c"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8\00", align 1
@.str.111 = private unnamed_addr constant [26 x i8] c"__GCC_HAVE_DWARF2_CFI_ASM\00", align 1
@flag_next_runtime = external local_unnamed_addr global i32, align 4
@.str.112 = private unnamed_addr constant [17 x i8] c"__NEXT_RUNTIME__\00", align 1
@.str.113 = private unnamed_addr constant [26 x i8] c"__PRAGMA_REDEFINE_EXTNAME\00", align 1
@.str.114 = private unnamed_addr constant [23 x i8] c"__PRAGMA_EXTERN_PREFIX\00", align 1
@flag_stack_protect = external local_unnamed_addr global i32, align 4
@.str.115 = private unnamed_addr constant [14 x i8] c"__SSP_ALL__=2\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"__SSP__=1\00", align 1
@flag_openmp = external local_unnamed_addr global i32, align 4
@.str.117 = private unnamed_addr constant [15 x i8] c"_OPENMP=200805\00", align 1
@.str.118 = private unnamed_addr constant [15 x i8] c"__SIZEOF_INT__\00", align 1
@.str.119 = private unnamed_addr constant [16 x i8] c"__SIZEOF_LONG__\00", align 1
@.str.120 = private unnamed_addr constant [21 x i8] c"__SIZEOF_LONG_LONG__\00", align 1
@.str.121 = private unnamed_addr constant [17 x i8] c"__SIZEOF_SHORT__\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"__SIZEOF_FLOAT__\00", align 1
@.str.123 = private unnamed_addr constant [18 x i8] c"__SIZEOF_DOUBLE__\00", align 1
@.str.124 = private unnamed_addr constant [23 x i8] c"__SIZEOF_LONG_DOUBLE__\00", align 1
@.str.125 = private unnamed_addr constant [18 x i8] c"__SIZEOF_SIZE_T__\00", align 1
@.str.126 = private unnamed_addr constant [19 x i8] c"__SIZEOF_WCHAR_T__\00", align 1
@.str.127 = private unnamed_addr constant [18 x i8] c"__SIZEOF_WINT_T__\00", align 1
@.str.128 = private unnamed_addr constant [21 x i8] c"__SIZEOF_PTRDIFF_T__\00", align 1
@.str.129 = private unnamed_addr constant [19 x i8] c"__SIZEOF_POINTER__\00", align 1
@.str.130 = private unnamed_addr constant [14 x i8] c"__gnu_linux__\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"linux\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"system=linux\00", align 1
@.str.134 = private unnamed_addr constant [12 x i8] c"system=unix\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"system=posix\00", align 1
@.str.136 = private unnamed_addr constant [8 x i8] c"__ELF__\00", align 1
@.str.137 = private unnamed_addr constant [23 x i8] c"__DECIMAL_BID_FORMAT__\00", align 1
@.str.138 = private unnamed_addr constant [22 x i8] c"__BIGGEST_ALIGNMENT__\00", align 1
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@parse_in = external local_unnamed_addr global ptr, align 8
@.str.139 = private unnamed_addr constant [8 x i8] c"%s=\22%s\22\00", align 1
@.str.140 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"4.5.0\00", align 1
@.str.142 = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@.str.143 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@.str.144 = private unnamed_addr constant [12 x i8] c"__GNUC__=%d\00", align 1
@.str.145 = private unnamed_addr constant [18 x i8] c"__GNUC_MINOR__=%d\00", align 1
@.str.146 = private unnamed_addr constant [23 x i8] c"__GNUC_PATCHLEVEL__=%d\00", align 1
@.str.147 = private unnamed_addr constant [12 x i8] c"__GNUG__=%d\00", align 1
@.str.148 = private unnamed_addr constant [15 x i8] c"__INTMAX_MAX__\00", align 1
@.str.149 = private unnamed_addr constant [11 x i8] c"__INTMAX_C\00", align 1
@.str.150 = private unnamed_addr constant [16 x i8] c"__UINTMAX_MAX__\00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"__UINTMAX_C\00", align 1
@.str.152 = private unnamed_addr constant [19 x i8] c"__SIG_ATOMIC_MIN__\00", align 1
@.str.153 = private unnamed_addr constant [19 x i8] c"__SIG_ATOMIC_MAX__\00", align 1
@.str.154 = private unnamed_addr constant [13 x i8] c"__INT8_MAX__\00", align 1
@.str.155 = private unnamed_addr constant [14 x i8] c"__INT16_MAX__\00", align 1
@.str.156 = private unnamed_addr constant [14 x i8] c"__INT32_MAX__\00", align 1
@.str.157 = private unnamed_addr constant [14 x i8] c"__INT64_MAX__\00", align 1
@.str.158 = private unnamed_addr constant [14 x i8] c"__UINT8_MAX__\00", align 1
@.str.159 = private unnamed_addr constant [15 x i8] c"__UINT16_MAX__\00", align 1
@.str.160 = private unnamed_addr constant [15 x i8] c"__UINT32_MAX__\00", align 1
@.str.161 = private unnamed_addr constant [15 x i8] c"__UINT64_MAX__\00", align 1
@.str.162 = private unnamed_addr constant [19 x i8] c"__INT_LEAST8_MAX__\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"__INT8_C\00", align 1
@.str.164 = private unnamed_addr constant [20 x i8] c"__INT_LEAST16_MAX__\00", align 1
@.str.165 = private unnamed_addr constant [10 x i8] c"__INT16_C\00", align 1
@.str.166 = private unnamed_addr constant [20 x i8] c"__INT_LEAST32_MAX__\00", align 1
@.str.167 = private unnamed_addr constant [10 x i8] c"__INT32_C\00", align 1
@.str.168 = private unnamed_addr constant [20 x i8] c"__INT_LEAST64_MAX__\00", align 1
@.str.169 = private unnamed_addr constant [10 x i8] c"__INT64_C\00", align 1
@.str.170 = private unnamed_addr constant [20 x i8] c"__UINT_LEAST8_MAX__\00", align 1
@.str.171 = private unnamed_addr constant [10 x i8] c"__UINT8_C\00", align 1
@.str.172 = private unnamed_addr constant [21 x i8] c"__UINT_LEAST16_MAX__\00", align 1
@.str.173 = private unnamed_addr constant [11 x i8] c"__UINT16_C\00", align 1
@.str.174 = private unnamed_addr constant [21 x i8] c"__UINT_LEAST32_MAX__\00", align 1
@.str.175 = private unnamed_addr constant [11 x i8] c"__UINT32_C\00", align 1
@.str.176 = private unnamed_addr constant [21 x i8] c"__UINT_LEAST64_MAX__\00", align 1
@.str.177 = private unnamed_addr constant [11 x i8] c"__UINT64_C\00", align 1
@.str.178 = private unnamed_addr constant [18 x i8] c"__INT_FAST8_MAX__\00", align 1
@.str.179 = private unnamed_addr constant [19 x i8] c"__INT_FAST16_MAX__\00", align 1
@.str.180 = private unnamed_addr constant [19 x i8] c"__INT_FAST32_MAX__\00", align 1
@.str.181 = private unnamed_addr constant [19 x i8] c"__INT_FAST64_MAX__\00", align 1
@.str.182 = private unnamed_addr constant [19 x i8] c"__UINT_FAST8_MAX__\00", align 1
@.str.183 = private unnamed_addr constant [20 x i8] c"__UINT_FAST16_MAX__\00", align 1
@.str.184 = private unnamed_addr constant [20 x i8] c"__UINT_FAST32_MAX__\00", align 1
@.str.185 = private unnamed_addr constant [20 x i8] c"__UINT_FAST64_MAX__\00", align 1
@.str.186 = private unnamed_addr constant [15 x i8] c"__INTPTR_MAX__\00", align 1
@.str.187 = private unnamed_addr constant [16 x i8] c"__UINTPTR_MAX__\00", align 1
@.str.188 = private unnamed_addr constant [8 x i8] c"%s(c)=c\00", align 1
@.str.189 = private unnamed_addr constant [14 x i8] c"%s(c)=c ## %s\00", align 1
@reltable.type_suffix = internal unnamed_addr constant [6 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.74 to i64), i64 ptrtoint (ptr @reltable.type_suffix to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.190 to i64), i64 ptrtoint (ptr @reltable.type_suffix to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.32 to i64), i64 ptrtoint (ptr @reltable.type_suffix to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.191 to i64), i64 ptrtoint (ptr @reltable.type_suffix to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.192 to i64), i64 ptrtoint (ptr @reltable.type_suffix to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.193 to i64), i64 ptrtoint (ptr @reltable.type_suffix to i64)) to i32)], align 4
@.str.190 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.191 = private unnamed_addr constant [3 x i8] c"UL\00", align 1
@.str.192 = private unnamed_addr constant [3 x i8] c"LL\00", align 1
@.str.193 = private unnamed_addr constant [4 x i8] c"ULL\00", align 1
@.str.194 = private unnamed_addr constant [15 x i8] c"c-cppbuiltin.c\00", align 1
@.str.195 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str.196 = private unnamed_addr constant [14 x i8] c"__FLT_RADIX__\00", align 1
@.str.197 = private unnamed_addr constant [16 x i8] c"__%s_MANT_DIG__\00", align 1
@.str.198 = private unnamed_addr constant [11 x i8] c"__%s_DIG__\00", align 1
@.str.199 = private unnamed_addr constant [15 x i8] c"__%s_MIN_EXP__\00", align 1
@.str.200 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@.str.201 = private unnamed_addr constant [18 x i8] c"__%s_MIN_10_EXP__\00", align 1
@.str.202 = private unnamed_addr constant [15 x i8] c"__%s_MAX_EXP__\00", align 1
@.str.203 = private unnamed_addr constant [18 x i8] c"__%s_MAX_10_EXP__\00", align 1
@.str.204 = private unnamed_addr constant [16 x i8] c"__DECIMAL_DIG__\00", align 1
@.str.205 = private unnamed_addr constant [11 x i8] c"__%s_MAX__\00", align 1
@.str.206 = private unnamed_addr constant [11 x i8] c"__%s_MIN__\00", align 1
@.str.207 = private unnamed_addr constant [7 x i8] c"0x1p%d\00", align 1
@.str.208 = private unnamed_addr constant [15 x i8] c"__%s_EPSILON__\00", align 1
@.str.209 = private unnamed_addr constant [18 x i8] c"__%s_DENORM_MIN__\00", align 1
@.str.210 = private unnamed_addr constant [6 x i8] c"0.0%s\00", align 1
@.str.211 = private unnamed_addr constant [18 x i8] c"__%s_HAS_DENORM__\00", align 1
@.str.212 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.213 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.214 = private unnamed_addr constant [20 x i8] c"__%s_HAS_INFINITY__\00", align 1
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@.str.215 = private unnamed_addr constant [21 x i8] c"__%s_HAS_QUIET_NAN__\00", align 1
@.str.216 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.217 = private unnamed_addr constant [7 x i8] c"1E%d%s\00", align 1
@.str.218 = private unnamed_addr constant [6 x i8] c"E%d%s\00", align 1
@.str.219 = private unnamed_addr constant [8 x i8] c"1E-%d%s\00", align 1
@.str.220 = private unnamed_addr constant [21 x i8] c"__%s_SUBNORMAL_MIN__\00", align 1
@.str.221 = private unnamed_addr constant [12 x i8] c"__%s_FBIT__\00", align 1
@mode_fbit = external local_unnamed_addr constant [87 x i8], align 16
@.str.222 = private unnamed_addr constant [12 x i8] c"__%s_IBIT__\00", align 1
@mode_ibit = external local_unnamed_addr constant [87 x i8], align 16
@.str.223 = private unnamed_addr constant [21 x i8] c"(-0X1P%d%s-0X1P%d%s)\00", align 1
@.str.224 = private unnamed_addr constant [15 x i8] c"(-0.5%s-0.5%s)\00", align 1
@.str.225 = private unnamed_addr constant [3 x i8] c"0X\00", align 1
@.str.226 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.227 = private unnamed_addr constant [7 x i8] c"P-%d%s\00", align 1
@.str.228 = private unnamed_addr constant [10 x i8] c"0x1P-%d%s\00", align 1
@.str.229 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@builtin_define_type_minmax.values = internal unnamed_addr constant [10 x ptr] [ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239], align 16
@.str.230 = private unnamed_addr constant [4 x i8] c"127\00", align 1
@.str.231 = private unnamed_addr constant [4 x i8] c"255\00", align 1
@.str.232 = private unnamed_addr constant [6 x i8] c"32767\00", align 1
@.str.233 = private unnamed_addr constant [6 x i8] c"65535\00", align 1
@.str.234 = private unnamed_addr constant [11 x i8] c"2147483647\00", align 1
@.str.235 = private unnamed_addr constant [11 x i8] c"4294967295\00", align 1
@.str.236 = private unnamed_addr constant [20 x i8] c"9223372036854775807\00", align 1
@.str.237 = private unnamed_addr constant [21 x i8] c"18446744073709551615\00", align 1
@.str.238 = private unnamed_addr constant [40 x i8] c"170141183460469231731687303715884105727\00", align 1
@.str.239 = private unnamed_addr constant [40 x i8] c"340282366920938463463374607431768211455\00", align 1
@.str.240 = private unnamed_addr constant [8 x i8] c"%s=%s%s\00", align 1
@.str.241 = private unnamed_addr constant [7 x i8] c"%s=0%s\00", align 1
@.str.242 = private unnamed_addr constant [13 x i8] c"%s=(-%s - 1)\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @c_cpp_builtins_optimize_pragma(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !95 {
  %4 = getelementptr inbounds %struct.tree_optimization_option, ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %struct.tree_optimization_option, ptr %2, i64 0, i32 1
  %6 = load i32, ptr @flag_undef, align 4, !tbaa !96
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %60

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tree_optimization_option, ptr %1, i64 0, i32 1, i32 7
  %10 = load i8, ptr %9, align 1, !tbaa !100
  %11 = icmp eq i8 %10, 0
  %12 = getelementptr inbounds %struct.tree_optimization_option, ptr %2, i64 0, i32 1, i32 7
  %13 = load i8, ptr %12, align 1, !tbaa !100
  %14 = icmp eq i8 %13, 0
  br i1 %11, label %15, label %17

15:                                               ; preds = %8
  br i1 %14, label %19, label %16

16:                                               ; preds = %15
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str) #9
  br label %19

17:                                               ; preds = %8
  br i1 %14, label %18, label %19

18:                                               ; preds = %17
  tail call void @cpp_undef(ptr noundef %0, ptr noundef nonnull @.str) #9
  br label %19

19:                                               ; preds = %15, %17, %18, %16
  %20 = getelementptr inbounds %struct.tree_optimization_option, ptr %1, i64 0, i32 1, i32 6
  %21 = load i8, ptr %20, align 4, !tbaa !102
  %22 = icmp eq i8 %21, 0
  %23 = getelementptr inbounds %struct.tree_optimization_option, ptr %2, i64 0, i32 1, i32 6
  %24 = load i8, ptr %23, align 4, !tbaa !102
  %25 = icmp eq i8 %24, 0
  br i1 %22, label %26, label %28

26:                                               ; preds = %19
  br i1 %25, label %30, label %27

27:                                               ; preds = %26
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.1) #9
  br label %30

28:                                               ; preds = %19
  br i1 %25, label %29, label %30

29:                                               ; preds = %28
  tail call void @cpp_undef(ptr noundef %0, ptr noundef nonnull @.str.1) #9
  br label %30

30:                                               ; preds = %26, %28, %29, %27
  %31 = tail call zeroext i8 @fast_math_flags_struct_set_p(ptr noundef nonnull %4) #9
  %32 = tail call zeroext i8 @fast_math_flags_struct_set_p(ptr noundef nonnull %5) #9
  %33 = icmp eq i8 %31, 0
  %34 = icmp ne i8 %32, 0
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.2) #9
  br label %40

37:                                               ; preds = %30
  %38 = select i1 %33, i1 true, i1 %34
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  tail call void @cpp_undef(ptr noundef %0, ptr noundef nonnull @.str.2) #9
  br label %40

40:                                               ; preds = %37, %39, %36
  %41 = getelementptr inbounds %struct.tree_optimization_option, ptr %1, i64 0, i32 1, i32 105
  %42 = load i8, ptr %41, align 1, !tbaa !103
  %43 = icmp eq i8 %42, 0
  %44 = getelementptr inbounds %struct.tree_optimization_option, ptr %2, i64 0, i32 1, i32 105
  %45 = load i8, ptr %44, align 1, !tbaa !103
  %46 = icmp eq i8 %45, 0
  br i1 %43, label %47, label %49

47:                                               ; preds = %40
  br i1 %46, label %51, label %48

48:                                               ; preds = %47
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.3) #9
  br label %51

49:                                               ; preds = %40
  br i1 %46, label %50, label %51

50:                                               ; preds = %49
  tail call void @cpp_undef(ptr noundef %0, ptr noundef nonnull @.str.3) #9
  br label %51

51:                                               ; preds = %47, %49, %50, %48
  %52 = getelementptr inbounds %struct.tree_optimization_option, ptr %1, i64 0, i32 1, i32 32
  %53 = load i8, ptr %52, align 2, !tbaa !104
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.tree_optimization_option, ptr %2, i64 0, i32 1, i32 32
  %57 = load i8, ptr %56, align 2, !tbaa !104
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void @cpp_undef(ptr noundef %0, ptr noundef nonnull @.str.4) #9
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.5) #9
  br label %60

60:                                               ; preds = %55, %51, %59, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @cpp_define(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cpp_undef(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @fast_math_flags_struct_set_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @c_cpp_builtins(ptr noundef %0) local_unnamed_addr #0 !prof !105 {
  %2 = load i32, ptr @flag_undef, align 4, !tbaa !96
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %212, !prof !106

4:                                                ; preds = %1
  tail call fastcc void @define__GNUC__() #10
  tail call void @c_stddef_cpp_builtins() #9
  %5 = load i32, ptr @c_language, align 4, !tbaa !96
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %23, label %8, !prof !106

8:                                                ; preds = %4
  %9 = load i32, ptr @flag_weak, align 4, !tbaa !96
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, ptr @.str.8, ptr @.str.7
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull %11) #9
  %12 = load i32, ptr @warn_deprecated, align 4, !tbaa !96
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.9) #9
  br label %15

15:                                               ; preds = %14, %8
  %16 = load i32, ptr @flag_rtti, align 4, !tbaa !96
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.10) #9
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32, ptr @cxx_dialect, align 4, !tbaa !96
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.11) #9
  br label %23

23:                                               ; preds = %19, %22, %4
  %24 = load i32, ptr @flag_exceptions, align 4, !tbaa !96
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !106

26:                                               ; preds = %23
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.12) #9
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32, ptr @flag_abi_version, align 4, !tbaa !96
  switch i32 %28, label %30 [
    i32 0, label %33
    i32 1, label %29
  ], !prof !107

29:                                               ; preds = %27
  br label %33

30:                                               ; preds = %27
  %31 = add nsw i32 %28, 1000
  %32 = sext i32 %31 to i64
  br label %33

33:                                               ; preds = %27, %29, %30
  %34 = phi i64 [ 102, %29 ], [ %32, %30 ], [ 999999, %27 ]
  tail call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.13, i64 noundef %34) #10
  %35 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 1), align 8, !tbaa !108
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.14, ptr noundef %35) #10
  %36 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 3), align 8, !tbaa !108
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.15, ptr noundef %36) #10
  %37 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !108
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.16, ptr noundef %37) #10
  %38 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !108
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.17, ptr noundef %38) #10
  %39 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !108
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.18, ptr noundef %39) #10
  %40 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 3), align 8, !tbaa !108
  tail call fastcc void @builtin_define_type_minmax(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef %40) #10
  %41 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 4), align 16, !tbaa !108
  tail call fastcc void @builtin_define_type_minmax(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef %41) #10
  %42 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 43), align 8, !tbaa !108
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.23, ptr noundef %42) #10
  %43 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !108
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.24, ptr noundef %43) #10
  %44 = load ptr, ptr @integer_types, align 16, !tbaa !108
  tail call fastcc void @builtin_define_type_precision(ptr noundef %44) #10
  tail call fastcc void @builtin_define_stdint_macros() #10
  %45 = load i32, ptr @ix86_fpmath, align 4, !tbaa !96
  %46 = and i32 %45, 3
  %47 = icmp eq i32 %46, 3
  %48 = and i32 %45, 2
  %49 = xor i32 %48, 2
  %50 = select i1 %47, i32 -1, i32 %49, !prof !110
  %51 = sext i32 %50 to i64
  tail call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.26, i64 noundef %51) #10
  tail call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.27, i64 noundef 2) #10
  %52 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !108
  tail call fastcc void @builtin_define_float_constants(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef %52) #10
  %53 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !108
  tail call fastcc void @builtin_define_float_constants(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef %53) #10
  %54 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !108
  tail call fastcc void @builtin_define_float_constants(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, ptr noundef %54) #10
  %55 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 49), align 8, !tbaa !108
  tail call fastcc void @builtin_define_decimal_float_constants(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef %55) #10
  %56 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 50), align 16, !tbaa !108
  tail call fastcc void @builtin_define_decimal_float_constants(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef %56) #10
  %57 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 51), align 8, !tbaa !108
  tail call fastcc void @builtin_define_decimal_float_constants(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef %57) #10
  %58 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 20), align 8, !tbaa !111
  %59 = tail call zeroext i8 %58() #9
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %96, label %61, !prof !106

61:                                               ; preds = %33
  %62 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 65), align 8, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef %62) #10
  %63 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 69), align 8, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef %63) #10
  %64 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 66), align 16, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef %64) #10
  %65 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 70), align 16, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, ptr noundef %65) #10
  %66 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 67), align 8, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, ptr noundef %66) #10
  %67 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 71), align 8, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef %67) #10
  %68 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 68), align 16, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr noundef %68) #10
  %69 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 72), align 16, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, ptr noundef %69) #10
  %70 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 81), align 8, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, ptr noundef %70) #10
  %71 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 85), align 8, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, ptr noundef %71) #10
  %72 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 82), align 16, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, ptr noundef %72) #10
  %73 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 86), align 16, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, ptr noundef %73) #10
  %74 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 83), align 8, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, ptr noundef %74) #10
  %75 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 87), align 8, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, ptr noundef %75) #10
  %76 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 84), align 16, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, ptr noundef %76) #10
  %77 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 88), align 16, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, ptr noundef %77) #10
  %78 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 89), align 8, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74, ptr noundef %78) #10
  %79 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 90), align 16, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.74, ptr noundef %79) #10
  %80 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 91), align 8, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.74, ptr noundef %80) #10
  %81 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 92), align 16, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.74, ptr noundef %81) #10
  %82 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 93), align 8, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.74, ptr noundef %82) #10
  %83 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 94), align 16, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.74, ptr noundef %83) #10
  %84 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 95), align 8, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.74, ptr noundef %84) #10
  %85 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 96), align 16, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.74, ptr noundef %85) #10
  %86 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 97), align 8, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.74, ptr noundef %86) #10
  %87 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 98), align 16, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.74, ptr noundef %87) #10
  %88 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 109), align 8, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.74, ptr noundef %88) #10
  %89 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 110), align 16, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.74, ptr noundef %89) #10
  %90 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 111), align 8, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.74, ptr noundef %90) #10
  %91 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 112), align 16, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.74, ptr noundef %91) #10
  %92 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 113), align 8, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.74, ptr noundef %92) #10
  %93 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 114), align 16, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.74, ptr noundef %93) #10
  %94 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 115), align 8, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.74, ptr noundef %94) #10
  %95 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 116), align 16, !tbaa !108
  tail call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.74, ptr noundef %95) #10
  br label %96

96:                                               ; preds = %61, %33
  tail call void @builtin_define_with_value(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.74, i32 noundef 0) #10
  %97 = load ptr, ptr @user_label_prefix, align 8, !tbaa !108
  tail call void @builtin_define_with_value(ptr noundef nonnull @.str.93, ptr noundef %97, i32 noundef 0) #10
  tail call void @builtin_define_with_value(ptr noundef nonnull @.str.94, ptr noundef nonnull @version_string, i32 noundef 1) #10
  %98 = load i32, ptr @flag_gnu89_inline, align 4, !tbaa !96
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %99, ptr @.str.96, ptr @.str.95, !prof !110
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull %100) #9
  %101 = load i32, ptr @optimize_size, align 4, !tbaa !96
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %103, !prof !106

103:                                              ; preds = %96
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str) #9
  br label %104

104:                                              ; preds = %103, %96
  %105 = load i32, ptr @optimize, align 4, !tbaa !96
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %108, label %107, !prof !110

107:                                              ; preds = %104
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.1) #9
  br label %108

108:                                              ; preds = %107, %104
  %109 = tail call zeroext i8 @fast_math_flags_set_p() #9
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %112, label %111, !prof !106

111:                                              ; preds = %108
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.2) #9
  br label %112

112:                                              ; preds = %111, %108
  %113 = load i32, ptr @flag_no_inline, align 4, !tbaa !96
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115, !prof !106

115:                                              ; preds = %112
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.99) #9
  br label %116

116:                                              ; preds = %115, %112
  %117 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !96
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %120, label %119, !prof !106

119:                                              ; preds = %116
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.3) #9
  br label %120

120:                                              ; preds = %119, %116
  %121 = load i32, ptr @flag_finite_math_only, align 4, !tbaa !96
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %122, ptr @.str.6, ptr @.str.5, !prof !106
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull %123) #9
  %124 = load i32, ptr @flag_pic, align 4, !tbaa !96
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %130, label %126, !prof !106

126:                                              ; preds = %120
  %127 = sext i32 %124 to i64
  tail call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.100, i64 noundef %127) #10
  %128 = load i32, ptr @flag_pic, align 4, !tbaa !96
  %129 = sext i32 %128 to i64
  tail call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.101, i64 noundef %129) #10
  br label %130

130:                                              ; preds = %126, %120
  %131 = load i32, ptr @flag_pie, align 4, !tbaa !96
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %137, label %133, !prof !106

133:                                              ; preds = %130
  %134 = sext i32 %131 to i64
  tail call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.102, i64 noundef %134) #10
  %135 = load i32, ptr @flag_pie, align 4, !tbaa !96
  %136 = sext i32 %135 to i64
  tail call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.103, i64 noundef %136) #10
  br label %137

137:                                              ; preds = %133, %130
  %138 = load i32, ptr @flag_iso, align 4, !tbaa !96
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %141, label %140, !prof !106

140:                                              ; preds = %137
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.104) #9
  br label %141

141:                                              ; preds = %140, %137
  %142 = load i32, ptr @flag_signed_char, align 4, !tbaa !96
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145, !prof !110

144:                                              ; preds = %141
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.105) #9
  br label %145

145:                                              ; preds = %144, %141
  %146 = load i32, ptr @c_language, align 4, !tbaa !96
  %147 = and i32 %146, 2
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %155, label %149, !prof !106

149:                                              ; preds = %145
  %150 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 2), align 16, !tbaa !108
  %151 = load i64, ptr %150, align 8
  %152 = and i64 %151, 2097152
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %149
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.106) #9
  br label %155

155:                                              ; preds = %154, %149, %145
  %156 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @ix86_arch_features, i64 0, i64 1), align 1, !tbaa !124
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %171, label %158, !prof !106

158:                                              ; preds = %155
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.107) #9
  %159 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @ix86_arch_features, i64 0, i64 1), align 1, !tbaa !124
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %171, label %161, !prof !125

161:                                              ; preds = %158
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.108) #9
  %162 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @ix86_arch_features, i64 0, i64 1), align 1, !tbaa !124
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %171, label %164, !prof !125

164:                                              ; preds = %161
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.109) #9
  %165 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @ix86_arch_features, i64 0, i64 1), align 1, !tbaa !124
  %166 = icmp ne i8 %165, 0
  %167 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @ix86_arch_features, i64 0, i64 2), align 1
  %168 = icmp ne i8 %167, 0
  %169 = select i1 %166, i1 %168, i1 false
  br i1 %169, label %170, label %171, !prof !126

170:                                              ; preds = %164
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.110) #9
  br label %171

171:                                              ; preds = %161, %158, %155, %170, %164
  %172 = tail call i32 @dwarf2out_do_cfi_asm() #9
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %175, label %174, !prof !106

174:                                              ; preds = %171
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.111) #9
  br label %175

175:                                              ; preds = %174, %171
  %176 = load i32, ptr @c_language, align 4, !tbaa !96
  %177 = and i32 %176, 1
  %178 = icmp ne i32 %177, 0
  %179 = load i32, ptr @flag_next_runtime, align 4
  %180 = icmp ne i32 %179, 0
  %181 = select i1 %178, i1 %180, i1 false
  br i1 %181, label %182, label %183, !prof !127

182:                                              ; preds = %175
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.112) #9
  br label %183

183:                                              ; preds = %182, %175
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.113) #9
  %184 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 118), align 1, !tbaa !128
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %187, label %186, !prof !106

186:                                              ; preds = %183
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.114) #9
  br label %187

187:                                              ; preds = %186, %183
  %188 = load i32, ptr @flag_stack_protect, align 4, !tbaa !96
  switch i32 %188, label %192 [
    i32 2, label %190
    i32 1, label %189
  ], !prof !107

189:                                              ; preds = %187
  br label %190

190:                                              ; preds = %187, %189
  %191 = phi ptr [ @.str.116, %189 ], [ @.str.115, %187 ]
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull %191) #9
  br label %192

192:                                              ; preds = %190, %187
  %193 = load i32, ptr @flag_openmp, align 4, !tbaa !96
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %196, label %195, !prof !106

195:                                              ; preds = %192
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.117) #9
  br label %196

196:                                              ; preds = %195, %192
  %197 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !108
  tail call fastcc void @builtin_define_type_sizeof(ptr noundef nonnull @.str.118, ptr noundef %197) #10
  %198 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !108
  tail call fastcc void @builtin_define_type_sizeof(ptr noundef nonnull @.str.119, ptr noundef %198) #10
  %199 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !108
  tail call fastcc void @builtin_define_type_sizeof(ptr noundef nonnull @.str.120, ptr noundef %199) #10
  %200 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 3), align 8, !tbaa !108
  tail call fastcc void @builtin_define_type_sizeof(ptr noundef nonnull @.str.121, ptr noundef %200) #10
  %201 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !108
  tail call fastcc void @builtin_define_type_sizeof(ptr noundef nonnull @.str.122, ptr noundef %201) #10
  %202 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !108
  tail call fastcc void @builtin_define_type_sizeof(ptr noundef nonnull @.str.123, ptr noundef %202) #10
  %203 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !108
  tail call fastcc void @builtin_define_type_sizeof(ptr noundef nonnull @.str.124, ptr noundef %203) #10
  %204 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !108
  tail call fastcc void @builtin_define_type_sizeof(ptr noundef nonnull @.str.125, ptr noundef %204) #10
  %205 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 2), align 16, !tbaa !108
  tail call fastcc void @builtin_define_type_sizeof(ptr noundef nonnull @.str.126, ptr noundef %205) #10
  %206 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 4), align 16, !tbaa !108
  tail call fastcc void @builtin_define_type_sizeof(ptr noundef nonnull @.str.127, ptr noundef %206) #10
  %207 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 6), align 16, !tbaa !108
  tail call fastcc void @builtin_define_type_sizeof(ptr noundef nonnull @.str.128, ptr noundef %207) #10
  tail call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.129, i64 noundef 4) #10
  tail call void @ix86_target_macros() #9
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.130) #9
  tail call void @builtin_define_std(ptr noundef nonnull @.str.131) #10
  tail call void @builtin_define_std(ptr noundef nonnull @.str.132) #10
  tail call void @cpp_assert(ptr noundef %0, ptr noundef nonnull @.str.133) #9
  tail call void @cpp_assert(ptr noundef %0, ptr noundef nonnull @.str.134) #9
  tail call void @cpp_assert(ptr noundef %0, ptr noundef nonnull @.str.135) #9
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.136) #9
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.137) #9
  %208 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !96
  %209 = and i32 %208, 32
  %210 = icmp eq i32 %209, 0
  %211 = select i1 %210, i64 16, i64 32
  tail call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.138, i64 noundef %211) #10
  br label %212

212:                                              ; preds = %1, %196
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @define__GNUC__() unnamed_addr #0 !prof !105 !PGOFuncName !129 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.142, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #10
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %8, label %6, !prof !106

6:                                                ; preds = %0
  %7 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.143, ptr noundef nonnull %1, ptr noundef nonnull %2) #10
  store i32 0, ptr %3, align 4, !tbaa !96
  br label %8

8:                                                ; preds = %6, %0
  %9 = load ptr, ptr @parse_in, align 8, !tbaa !108
  %10 = load i32, ptr %1, align 4, !tbaa !96
  call void (ptr, ptr, ...) @cpp_define_formatted(ptr noundef %9, ptr noundef nonnull @.str.144, i32 noundef %10) #9
  %11 = load ptr, ptr @parse_in, align 8, !tbaa !108
  %12 = load i32, ptr %2, align 4, !tbaa !96
  call void (ptr, ptr, ...) @cpp_define_formatted(ptr noundef %11, ptr noundef nonnull @.str.145, i32 noundef %12) #9
  %13 = load ptr, ptr @parse_in, align 8, !tbaa !108
  %14 = load i32, ptr %3, align 4, !tbaa !96
  call void (ptr, ptr, ...) @cpp_define_formatted(ptr noundef %13, ptr noundef nonnull @.str.146, i32 noundef %14) #9
  %15 = load i32, ptr @c_language, align 4, !tbaa !96
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18, !prof !106

18:                                               ; preds = %8
  %19 = load ptr, ptr @parse_in, align 8, !tbaa !108
  %20 = load i32, ptr %1, align 4, !tbaa !96
  call void (ptr, ptr, ...) @cpp_define_formatted(ptr noundef %19, ptr noundef nonnull @.str.147, i32 noundef %20) #9
  br label %21

21:                                               ; preds = %18, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #11
  ret void
}

; Function Attrs: optsize
declare void @c_stddef_cpp_builtins() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @builtin_define_with_int_value(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 !prof !130 !PGOFuncName !131 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  %4 = add i64 %3, 20
  %5 = alloca i8, i64 %4, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr align 1 %0, i64 %3, i1 false)
  %6 = getelementptr inbounds i8, ptr %5, i64 %3
  store i8 61, ptr %6, align 1, !tbaa !124
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.229, i64 noundef %1) #10
  %9 = load ptr, ptr @parse_in, align 8, !tbaa !108
  call void @cpp_define(ptr noundef %9, ptr noundef nonnull %5) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @builtin_define_type_max(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !132 !PGOFuncName !133 {
  tail call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @builtin_define_type_minmax(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !134 !PGOFuncName !135 {
  %4 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1023
  switch i32 %6, label %11 [
    i32 8, label %12
    i32 16, label %7
    i32 32, label %8
    i32 64, label %9
    i32 128, label %10
  ], !prof !136

7:                                                ; preds = %3
  br label %12

8:                                                ; preds = %3
  br label %12

9:                                                ; preds = %3
  br label %12

10:                                               ; preds = %3
  br label %12

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.194, i32 noundef 1066, ptr noundef nonnull @.str.195) #9
  br label %12

12:                                               ; preds = %3, %11, %10, %9, %8, %7
  %13 = phi i64 [ undef, %11 ], [ 8, %10 ], [ 6, %9 ], [ 4, %8 ], [ 2, %7 ], [ 0, %3 ]
  %14 = load i64, ptr %2, align 8
  %15 = lshr i64 %14, 21
  %16 = and i64 %15, 1
  %17 = add i64 %16, %13
  %18 = getelementptr inbounds [10 x ptr], ptr @builtin_define_type_minmax.values, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !108
  %20 = tail call fastcc ptr @type_suffix(ptr noundef nonnull %2) #10
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  %22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #10
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #10
  %24 = add i64 %21, 2
  %25 = add i64 %24, %22
  %26 = add i64 %25, %23
  %27 = alloca i8, i64 %26, align 16
  %28 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(1) @.str.240, ptr noundef %1, ptr noundef %19, ptr noundef %20) #10
  %29 = load ptr, ptr @parse_in, align 8, !tbaa !108
  call void @cpp_define(ptr noundef %29, ptr noundef nonnull %27) #9
  %30 = icmp eq ptr %0, null
  br i1 %30, label %51, label %31, !prof !137

31:                                               ; preds = %12
  %32 = load i64, ptr %2, align 8
  %33 = and i64 %32, 2097152
  %34 = icmp eq i64 %33, 0
  %35 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  br i1 %34, label %42, label %36, !prof !138

36:                                               ; preds = %31
  %37 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #10
  %38 = add i64 %35, 3
  %39 = add i64 %38, %37
  %40 = alloca i8, i64 %39, align 16
  %41 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %40, ptr noundef nonnull dereferenceable(1) @.str.241, ptr noundef nonnull %0, ptr noundef %20) #10
  br label %48

42:                                               ; preds = %31
  %43 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  %44 = add i64 %35, 9
  %45 = add i64 %44, %43
  %46 = alloca i8, i64 %45, align 16
  %47 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %46, ptr noundef nonnull dereferenceable(1) @.str.242, ptr noundef nonnull %0, ptr noundef %1) #10
  br label %48

48:                                               ; preds = %42, %36
  %49 = phi ptr [ %40, %36 ], [ %46, %42 ]
  %50 = load ptr, ptr @parse_in, align 8, !tbaa !108
  call void @cpp_define(ptr noundef %50, ptr noundef nonnull %49) #9
  br label %51

51:                                               ; preds = %48, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @builtin_define_type_precision(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !105 !PGOFuncName !139 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1023
  %5 = zext nneg i32 %4 to i64
  tail call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.25, i64 noundef %5) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @builtin_define_stdint_macros() unnamed_addr #0 !prof !105 !PGOFuncName !140 {
  %1 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 7), align 8, !tbaa !108
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.148, ptr noundef %1) #10
  %2 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 7), align 8, !tbaa !108
  tail call fastcc void @builtin_define_constants(ptr noundef nonnull @.str.149, ptr noundef %2) #10
  %3 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 8), align 16, !tbaa !108
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.150, ptr noundef %3) #10
  %4 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 8), align 16, !tbaa !108
  tail call fastcc void @builtin_define_constants(ptr noundef nonnull @.str.151, ptr noundef %4) #10
  %5 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 11), align 8, !tbaa !108
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !110

7:                                                ; preds = %0
  tail call fastcc void @builtin_define_type_minmax(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.153, ptr noundef nonnull %5) #10
  br label %8

8:                                                ; preds = %7, %0
  %9 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 12), align 16, !tbaa !108
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !110

11:                                               ; preds = %8
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.154, ptr noundef nonnull %9) #10
  br label %12

12:                                               ; preds = %11, %8
  %13 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 13), align 8, !tbaa !108
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !110

15:                                               ; preds = %12
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.155, ptr noundef nonnull %13) #10
  br label %16

16:                                               ; preds = %15, %12
  %17 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 14), align 16, !tbaa !108
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19, !prof !110

19:                                               ; preds = %16
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.156, ptr noundef nonnull %17) #10
  br label %20

20:                                               ; preds = %19, %16
  %21 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 15), align 8, !tbaa !108
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23, !prof !110

23:                                               ; preds = %20
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.157, ptr noundef nonnull %21) #10
  br label %24

24:                                               ; preds = %23, %20
  %25 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 16), align 16, !tbaa !108
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27, !prof !110

27:                                               ; preds = %24
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.158, ptr noundef nonnull %25) #10
  br label %28

28:                                               ; preds = %27, %24
  %29 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 17), align 8, !tbaa !108
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31, !prof !110

31:                                               ; preds = %28
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.159, ptr noundef nonnull %29) #10
  br label %32

32:                                               ; preds = %31, %28
  %33 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 18), align 16, !tbaa !108
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35, !prof !110

35:                                               ; preds = %32
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.160, ptr noundef nonnull %33) #10
  br label %36

36:                                               ; preds = %35, %32
  %37 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 19), align 8, !tbaa !108
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39, !prof !110

39:                                               ; preds = %36
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.161, ptr noundef nonnull %37) #10
  br label %40

40:                                               ; preds = %39, %36
  %41 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 20), align 16, !tbaa !108
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43, !prof !110

43:                                               ; preds = %40
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.162, ptr noundef nonnull %41) #10
  %44 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 20), align 16, !tbaa !108
  tail call fastcc void @builtin_define_constants(ptr noundef nonnull @.str.163, ptr noundef %44) #10
  br label %45

45:                                               ; preds = %43, %40
  %46 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 21), align 8, !tbaa !108
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48, !prof !110

48:                                               ; preds = %45
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.164, ptr noundef nonnull %46) #10
  %49 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 21), align 8, !tbaa !108
  tail call fastcc void @builtin_define_constants(ptr noundef nonnull @.str.165, ptr noundef %49) #10
  br label %50

50:                                               ; preds = %48, %45
  %51 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 22), align 16, !tbaa !108
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53, !prof !110

53:                                               ; preds = %50
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.166, ptr noundef nonnull %51) #10
  %54 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 22), align 16, !tbaa !108
  tail call fastcc void @builtin_define_constants(ptr noundef nonnull @.str.167, ptr noundef %54) #10
  br label %55

55:                                               ; preds = %53, %50
  %56 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 23), align 8, !tbaa !108
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58, !prof !110

58:                                               ; preds = %55
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.168, ptr noundef nonnull %56) #10
  %59 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 23), align 8, !tbaa !108
  tail call fastcc void @builtin_define_constants(ptr noundef nonnull @.str.169, ptr noundef %59) #10
  br label %60

60:                                               ; preds = %58, %55
  %61 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 24), align 16, !tbaa !108
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63, !prof !110

63:                                               ; preds = %60
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.170, ptr noundef nonnull %61) #10
  %64 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 24), align 16, !tbaa !108
  tail call fastcc void @builtin_define_constants(ptr noundef nonnull @.str.171, ptr noundef %64) #10
  br label %65

65:                                               ; preds = %63, %60
  %66 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 25), align 8, !tbaa !108
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68, !prof !110

68:                                               ; preds = %65
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.172, ptr noundef nonnull %66) #10
  %69 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 25), align 8, !tbaa !108
  tail call fastcc void @builtin_define_constants(ptr noundef nonnull @.str.173, ptr noundef %69) #10
  br label %70

70:                                               ; preds = %68, %65
  %71 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 26), align 16, !tbaa !108
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73, !prof !110

73:                                               ; preds = %70
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.174, ptr noundef nonnull %71) #10
  %74 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 26), align 16, !tbaa !108
  tail call fastcc void @builtin_define_constants(ptr noundef nonnull @.str.175, ptr noundef %74) #10
  br label %75

75:                                               ; preds = %73, %70
  %76 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 27), align 8, !tbaa !108
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78, !prof !110

78:                                               ; preds = %75
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.176, ptr noundef nonnull %76) #10
  %79 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 27), align 8, !tbaa !108
  tail call fastcc void @builtin_define_constants(ptr noundef nonnull @.str.177, ptr noundef %79) #10
  br label %80

80:                                               ; preds = %78, %75
  %81 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 28), align 16, !tbaa !108
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83, !prof !110

83:                                               ; preds = %80
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.178, ptr noundef nonnull %81) #10
  br label %84

84:                                               ; preds = %83, %80
  %85 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 29), align 8, !tbaa !108
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %87, !prof !110

87:                                               ; preds = %84
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.179, ptr noundef nonnull %85) #10
  br label %88

88:                                               ; preds = %87, %84
  %89 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 30), align 16, !tbaa !108
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91, !prof !110

91:                                               ; preds = %88
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.180, ptr noundef nonnull %89) #10
  br label %92

92:                                               ; preds = %91, %88
  %93 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 31), align 8, !tbaa !108
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95, !prof !110

95:                                               ; preds = %92
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.181, ptr noundef nonnull %93) #10
  br label %96

96:                                               ; preds = %95, %92
  %97 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 32), align 16, !tbaa !108
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %99, !prof !110

99:                                               ; preds = %96
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.182, ptr noundef nonnull %97) #10
  br label %100

100:                                              ; preds = %99, %96
  %101 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 33), align 8, !tbaa !108
  %102 = icmp eq ptr %101, null
  br i1 %102, label %104, label %103, !prof !110

103:                                              ; preds = %100
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.183, ptr noundef nonnull %101) #10
  br label %104

104:                                              ; preds = %103, %100
  %105 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 34), align 16, !tbaa !108
  %106 = icmp eq ptr %105, null
  br i1 %106, label %108, label %107, !prof !110

107:                                              ; preds = %104
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.184, ptr noundef nonnull %105) #10
  br label %108

108:                                              ; preds = %107, %104
  %109 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 35), align 8, !tbaa !108
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111, !prof !110

111:                                              ; preds = %108
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.185, ptr noundef nonnull %109) #10
  br label %112

112:                                              ; preds = %111, %108
  %113 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 36), align 16, !tbaa !108
  %114 = icmp eq ptr %113, null
  br i1 %114, label %116, label %115, !prof !110

115:                                              ; preds = %112
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.186, ptr noundef nonnull %113) #10
  br label %116

116:                                              ; preds = %115, %112
  %117 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 37), align 8, !tbaa !108
  %118 = icmp eq ptr %117, null
  br i1 %118, label %120, label %119, !prof !110

119:                                              ; preds = %116
  tail call fastcc void @builtin_define_type_max(ptr noundef nonnull @.str.187, ptr noundef nonnull %117) #10
  br label %120

120:                                              ; preds = %119, %116
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @builtin_define_float_constants(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 !prof !141 !PGOFuncName !142 {
  %5 = alloca [64 x i8], align 16
  %6 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #11
  %7 = load i64, ptr %3, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 14
  br i1 %9, label %10, label %12, !prof !143

10:                                               ; preds = %4
  %11 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  br label %17

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  br label %17

17:                                               ; preds = %12, %10
  %18 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !124
  %22 = icmp eq i8 %21, 9
  %23 = load i64, ptr %3, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 14
  br i1 %22, label %26, label %34, !prof !143

26:                                               ; preds = %17
  br i1 %25, label %27, label %29, !prof !143

27:                                               ; preds = %26
  %28 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  br label %42

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  br label %42

34:                                               ; preds = %17
  br i1 %25, label %35, label %37, !prof !143

35:                                               ; preds = %34
  %36 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  br label %42

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  br label %42

42:                                               ; preds = %35, %37, %27, %29
  %43 = phi i32 [ %28, %27 ], [ %33, %29 ], [ %36, %35 ], [ %41, %37 ]
  %44 = add i32 %43, -38
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !108
  %48 = getelementptr inbounds %struct.real_format, ptr %47, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !144
  %50 = icmp eq i32 %49, 10
  br i1 %50, label %51, label %52, !prof !143

51:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str.194, i32 noundef 111, ptr noundef nonnull @.str.195) #9
  br label %52

52:                                               ; preds = %42, %51
  %53 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !108
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 14
  br i1 %56, label %57, label %59, !prof !143

57:                                               ; preds = %52
  %58 = tail call i32 @vector_type_mode(ptr noundef nonnull %53) #9
  br label %64

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.tree_type, ptr %53, i64 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = lshr i32 %61, 16
  %63 = and i32 %62, 255
  br label %64

64:                                               ; preds = %59, %57
  %65 = phi i32 [ %58, %57 ], [ %63, %59 ]
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !124
  %69 = icmp eq i8 %68, 9
  %70 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !108
  %71 = load i64, ptr %70, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 14
  br i1 %69, label %74, label %82, !prof !143

74:                                               ; preds = %64
  br i1 %73, label %75, label %77, !prof !143

75:                                               ; preds = %74
  %76 = tail call i32 @vector_type_mode(ptr noundef nonnull %70) #9
  br label %90

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.tree_type, ptr %70, i64 0, i32 6
  %79 = load i32, ptr %78, align 4
  %80 = lshr i32 %79, 16
  %81 = and i32 %80, 255
  br label %90

82:                                               ; preds = %64
  br i1 %73, label %83, label %85, !prof !143

83:                                               ; preds = %82
  %84 = tail call i32 @vector_type_mode(ptr noundef nonnull %70) #9
  br label %90

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.tree_type, ptr %70, i64 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = lshr i32 %87, 16
  %89 = and i32 %88, 255
  br label %90

90:                                               ; preds = %83, %85, %75, %77
  %91 = phi i32 [ %76, %75 ], [ %81, %77 ], [ %84, %83 ], [ %89, %85 ]
  %92 = add i32 %91, -38
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !108
  %96 = getelementptr inbounds %struct.real_format, ptr %95, i64 0, i32 2
  %97 = load i32, ptr %96, align 8, !tbaa !144
  %98 = icmp eq i32 %97, 10
  br i1 %98, label %99, label %100, !prof !143

99:                                               ; preds = %90
  tail call void @fancy_abort(ptr noundef nonnull @.str.194, i32 noundef 113, ptr noundef nonnull @.str.195) #9
  br label %100

100:                                              ; preds = %90, %99
  %101 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !108
  %102 = icmp eq ptr %101, %3
  br i1 %102, label %103, label %106, !prof !146

103:                                              ; preds = %100
  %104 = load i32, ptr %48, align 8, !tbaa !144
  %105 = sext i32 %104 to i64
  tail call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.196, i64 noundef %105) #10
  br label %106

106:                                              ; preds = %103, %100
  %107 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.197, ptr noundef %0) #10
  %108 = getelementptr inbounds %struct.real_format, ptr %47, i64 0, i32 3
  %109 = load i32, ptr %108, align 4, !tbaa !147
  %110 = sext i32 %109 to i64
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull %5, i64 noundef %110) #10
  %111 = load i32, ptr %108, align 4, !tbaa !147
  %112 = add nsw i32 %111, -1
  %113 = sitofp i32 %112 to double
  %114 = fmul double %113, 0x3FD34413509F79FF
  %115 = fptosi double %114 to i32
  %116 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.198, ptr noundef %0) #10
  %117 = sext i32 %115 to i64
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull %5, i64 noundef %117) #10
  %118 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.199, ptr noundef %0) #10
  %119 = getelementptr inbounds %struct.real_format, ptr %47, i64 0, i32 5
  %120 = load i32, ptr %119, align 4, !tbaa !148
  %121 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.200, i32 noundef %120) #10
  call void @builtin_define_with_value(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #10
  %122 = load i32, ptr %119, align 4, !tbaa !148
  %123 = add nsw i32 %122, -1
  %124 = sitofp i32 %123 to double
  %125 = fmul double %124, 0x3FD34413509F79FF
  %126 = fptosi double %125 to i32
  %127 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.201, ptr noundef %0) #10
  %128 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.200, i32 noundef %126) #10
  call void @builtin_define_with_value(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #10
  %129 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.202, ptr noundef %0) #10
  %130 = getelementptr inbounds %struct.real_format, ptr %47, i64 0, i32 6
  %131 = load i32, ptr %130, align 8, !tbaa !149
  %132 = sext i32 %131 to i64
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull %5, i64 noundef %132) #10
  %133 = load i32, ptr %130, align 8, !tbaa !149
  %134 = sitofp i32 %133 to double
  %135 = fmul double %134, 0x3FD34413509F79FF
  %136 = fptosi double %135 to i32
  %137 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.203, ptr noundef %0) #10
  %138 = sext i32 %136 to i64
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull %5, i64 noundef %138) #10
  %139 = load i32, ptr %108, align 4, !tbaa !147
  %140 = getelementptr inbounds %struct.real_format, ptr %95, i64 0, i32 3
  %141 = load i32, ptr %140, align 4, !tbaa !147
  %142 = call i32 @llvm.smax.i32(i32 %139, i32 %141)
  %143 = sitofp i32 %142 to double
  %144 = call double @llvm.fmuladd.f64(double %143, double 0x3FD34413509F79FF, double 1.000000e+00)
  %145 = fptosi double %144 to i32
  %146 = sitofp i32 %145 to double
  %147 = fcmp ogt double %144, %146
  %148 = zext i1 %147 to i32
  %149 = add nsw i32 %148, %145
  %150 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !108
  %151 = icmp eq ptr %150, %3
  br i1 %151, label %152, label %154, !prof !146

152:                                              ; preds = %106
  %153 = sext i32 %149 to i64
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.204, i64 noundef %153) #10
  br label %154

154:                                              ; preds = %152, %106
  call void @get_max_float(ptr noundef nonnull %47, ptr noundef nonnull %6, i64 noundef 128) #9
  %155 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.205, ptr noundef %0) #10
  call fastcc void @builtin_define_with_hex_fp_value(ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef %149, ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2) #10
  %156 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef %0) #10
  %157 = load i32, ptr %119, align 4, !tbaa !148
  %158 = add nsw i32 %157, -1
  %159 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.207, i32 noundef %158) #10
  call fastcc void @builtin_define_with_hex_fp_value(ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef %149, ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2) #10
  %160 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.208, ptr noundef %0) #10
  %161 = getelementptr inbounds %struct.real_format, ptr %47, i64 0, i32 4
  %162 = load i32, ptr %161, align 8, !tbaa !150
  %163 = load i32, ptr %108, align 4, !tbaa !147
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %167, !prof !143

165:                                              ; preds = %154
  %166 = load i32, ptr %119, align 4, !tbaa !148
  br label %167

167:                                              ; preds = %154, %165
  %168 = phi i32 [ %166, %165 ], [ 1, %154 ]
  %169 = sub nsw i32 %168, %163
  %170 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.207, i32 noundef %169) #10
  call fastcc void @builtin_define_with_hex_fp_value(ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef %149, ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2) #10
  %171 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.209, ptr noundef %0) #10
  %172 = getelementptr inbounds %struct.real_format, ptr %47, i64 0, i32 13
  %173 = load i8, ptr %172, align 8, !tbaa !151
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %180, label %175, !prof !143

175:                                              ; preds = %167
  %176 = load i32, ptr %119, align 4, !tbaa !148
  %177 = load i32, ptr %108, align 4, !tbaa !147
  %178 = sub nsw i32 %176, %177
  %179 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.207, i32 noundef %178) #10
  call fastcc void @builtin_define_with_hex_fp_value(ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef %149, ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2) #10
  br label %182

180:                                              ; preds = %167
  %181 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.210, ptr noundef %1) #10
  call void @builtin_define_with_value(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #10
  br label %182

182:                                              ; preds = %180, %175
  %183 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.211, ptr noundef %0) #10
  %184 = load i8, ptr %172, align 8, !tbaa !151
  %185 = icmp eq i8 %184, 0
  %186 = select i1 %185, ptr @.str.213, ptr @.str.212
  call void @builtin_define_with_value(ptr noundef nonnull %5, ptr noundef nonnull %186, i32 noundef 0) #10
  %187 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.214, ptr noundef %0) #10
  %188 = load i64, ptr %3, align 8
  %189 = and i64 %188, 65535
  %190 = icmp eq i64 %189, 14
  br i1 %190, label %191, label %194, !prof !143

191:                                              ; preds = %182
  %192 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  %193 = load i64, ptr %3, align 8
  br label %199

194:                                              ; preds = %182
  %195 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %196 = load i32, ptr %195, align 4
  %197 = lshr i32 %196, 16
  %198 = and i32 %197, 255
  br label %199

199:                                              ; preds = %194, %191
  %200 = phi i64 [ %193, %191 ], [ %188, %194 ]
  %201 = phi i32 [ %192, %191 ], [ %198, %194 ]
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %202
  %204 = load i8, ptr %203, align 1, !tbaa !124
  %205 = icmp eq i8 %204, 8
  br i1 %205, label %260, label %206, !prof !152

206:                                              ; preds = %199
  %207 = and i64 %200, 65535
  %208 = icmp eq i64 %207, 14
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  %211 = load i64, ptr %3, align 8
  br label %217

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %214 = load i32, ptr %213, align 4
  %215 = lshr i32 %214, 16
  %216 = and i32 %215, 255
  br label %217

217:                                              ; preds = %212, %209
  %218 = phi i64 [ %211, %209 ], [ %200, %212 ]
  %219 = phi i32 [ %210, %209 ], [ %216, %212 ]
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !124
  %223 = icmp eq i8 %222, 9
  br i1 %223, label %260, label %224

224:                                              ; preds = %217
  %225 = and i64 %218, 65535
  %226 = icmp eq i64 %225, 14
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  %229 = load i64, ptr %3, align 8
  br label %235

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %232 = load i32, ptr %231, align 4
  %233 = lshr i32 %232, 16
  %234 = and i32 %233, 255
  br label %235

235:                                              ; preds = %230, %227
  %236 = phi i64 [ %229, %227 ], [ %218, %230 ]
  %237 = phi i32 [ %228, %227 ], [ %234, %230 ]
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %238
  %240 = load i8, ptr %239, align 1, !tbaa !124
  %241 = icmp eq i8 %240, 11
  br i1 %241, label %260, label %242

242:                                              ; preds = %235
  %243 = and i64 %236, 65535
  %244 = icmp eq i64 %243, 14
  br i1 %244, label %245, label %247

245:                                              ; preds = %242
  %246 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  br label %252

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %249 = load i32, ptr %248, align 4
  %250 = lshr i32 %249, 16
  %251 = and i32 %250, 255
  br label %252

252:                                              ; preds = %247, %245
  %253 = phi i32 [ %246, %245 ], [ %251, %247 ]
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %254
  %256 = load i8, ptr %255, align 1, !tbaa !124
  %257 = icmp eq i8 %256, 17
  br i1 %257, label %258, label %464

258:                                              ; preds = %252
  %259 = load i64, ptr %3, align 8
  br label %260

260:                                              ; preds = %258, %235, %217, %199
  %261 = phi i64 [ %259, %258 ], [ %236, %235 ], [ %218, %217 ], [ %200, %199 ]
  %262 = and i64 %261, 65535
  %263 = icmp eq i64 %262, 14
  br i1 %263, label %264, label %267, !prof !143

264:                                              ; preds = %260
  %265 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  %266 = load i64, ptr %3, align 8
  br label %272

267:                                              ; preds = %260
  %268 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %269 = load i32, ptr %268, align 4
  %270 = lshr i32 %269, 16
  %271 = and i32 %270, 255
  br label %272

272:                                              ; preds = %267, %264
  %273 = phi i64 [ %266, %264 ], [ %261, %267 ]
  %274 = phi i32 [ %265, %264 ], [ %271, %267 ]
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %275
  %277 = load i8, ptr %276, align 1, !tbaa !124
  %278 = icmp eq i8 %277, 8
  br i1 %278, label %297, label %279, !prof !152

279:                                              ; preds = %272
  %280 = and i64 %273, 65535
  %281 = icmp eq i64 %280, 14
  br i1 %281, label %282, label %285

282:                                              ; preds = %279
  %283 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  %284 = load i64, ptr %3, align 8
  br label %290

285:                                              ; preds = %279
  %286 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %287 = load i32, ptr %286, align 4
  %288 = lshr i32 %287, 16
  %289 = and i32 %288, 255
  br label %290

290:                                              ; preds = %285, %282
  %291 = phi i64 [ %284, %282 ], [ %273, %285 ]
  %292 = phi i32 [ %283, %282 ], [ %289, %285 ]
  %293 = zext i32 %292 to i64
  %294 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %293
  %295 = load i8, ptr %294, align 1, !tbaa !124
  %296 = icmp eq i8 %295, 9
  br i1 %296, label %297, label %308

297:                                              ; preds = %290, %272
  %298 = phi i64 [ %291, %290 ], [ %273, %272 ]
  %299 = and i64 %298, 65535
  %300 = icmp eq i64 %299, 14
  br i1 %300, label %301, label %303

301:                                              ; preds = %297
  %302 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  br label %324

303:                                              ; preds = %297
  %304 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %305 = load i32, ptr %304, align 4
  %306 = lshr i32 %305, 16
  %307 = and i32 %306, 255
  br label %324

308:                                              ; preds = %290
  %309 = and i64 %291, 65535
  %310 = icmp eq i64 %309, 14
  br i1 %310, label %311, label %313

311:                                              ; preds = %308
  %312 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  br label %318

313:                                              ; preds = %308
  %314 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %315 = load i32, ptr %314, align 4
  %316 = lshr i32 %315, 16
  %317 = and i32 %316, 255
  br label %318

318:                                              ; preds = %313, %311
  %319 = phi i32 [ %312, %311 ], [ %317, %313 ]
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %320
  %322 = load i8, ptr %321, align 1, !tbaa !124
  %323 = zext i8 %322 to i32
  br label %324

324:                                              ; preds = %301, %303, %318
  %325 = phi i32 [ %323, %318 ], [ %302, %301 ], [ %307, %303 ]
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %326
  %328 = load i8, ptr %327, align 1, !tbaa !124
  %329 = icmp eq i8 %328, 9
  %330 = load i64, ptr %3, align 8
  %331 = and i64 %330, 65535
  %332 = icmp eq i64 %331, 14
  br i1 %329, label %333, label %394

333:                                              ; preds = %324
  br i1 %332, label %334, label %337

334:                                              ; preds = %333
  %335 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  %336 = load i64, ptr %3, align 8
  br label %342

337:                                              ; preds = %333
  %338 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %339 = load i32, ptr %338, align 4
  %340 = lshr i32 %339, 16
  %341 = and i32 %340, 255
  br label %342

342:                                              ; preds = %337, %334
  %343 = phi i64 [ %336, %334 ], [ %330, %337 ]
  %344 = phi i32 [ %335, %334 ], [ %341, %337 ]
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %345
  %347 = load i8, ptr %346, align 1, !tbaa !124
  %348 = icmp eq i8 %347, 8
  br i1 %348, label %367, label %349

349:                                              ; preds = %342
  %350 = and i64 %343, 65535
  %351 = icmp eq i64 %350, 14
  br i1 %351, label %352, label %355

352:                                              ; preds = %349
  %353 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  %354 = load i64, ptr %3, align 8
  br label %360

355:                                              ; preds = %349
  %356 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %357 = load i32, ptr %356, align 4
  %358 = lshr i32 %357, 16
  %359 = and i32 %358, 255
  br label %360

360:                                              ; preds = %355, %352
  %361 = phi i64 [ %354, %352 ], [ %343, %355 ]
  %362 = phi i32 [ %353, %352 ], [ %359, %355 ]
  %363 = zext i32 %362 to i64
  %364 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %363
  %365 = load i8, ptr %364, align 1, !tbaa !124
  %366 = icmp eq i8 %365, 9
  br i1 %366, label %367, label %378

367:                                              ; preds = %360, %342
  %368 = phi i64 [ %361, %360 ], [ %343, %342 ]
  %369 = and i64 %368, 65535
  %370 = icmp eq i64 %369, 14
  br i1 %370, label %371, label %373

371:                                              ; preds = %367
  %372 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  br label %455

373:                                              ; preds = %367
  %374 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %375 = load i32, ptr %374, align 4
  %376 = lshr i32 %375, 16
  %377 = and i32 %376, 255
  br label %455

378:                                              ; preds = %360
  %379 = and i64 %361, 65535
  %380 = icmp eq i64 %379, 14
  br i1 %380, label %381, label %383

381:                                              ; preds = %378
  %382 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  br label %388

383:                                              ; preds = %378
  %384 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %385 = load i32, ptr %384, align 4
  %386 = lshr i32 %385, 16
  %387 = and i32 %386, 255
  br label %388

388:                                              ; preds = %383, %381
  %389 = phi i32 [ %382, %381 ], [ %387, %383 ]
  %390 = zext i32 %389 to i64
  %391 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %390
  %392 = load i8, ptr %391, align 1, !tbaa !124
  %393 = zext i8 %392 to i32
  br label %455

394:                                              ; preds = %324
  br i1 %332, label %395, label %398

395:                                              ; preds = %394
  %396 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  %397 = load i64, ptr %3, align 8
  br label %403

398:                                              ; preds = %394
  %399 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %400 = load i32, ptr %399, align 4
  %401 = lshr i32 %400, 16
  %402 = and i32 %401, 255
  br label %403

403:                                              ; preds = %398, %395
  %404 = phi i64 [ %397, %395 ], [ %330, %398 ]
  %405 = phi i32 [ %396, %395 ], [ %402, %398 ]
  %406 = zext i32 %405 to i64
  %407 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %406
  %408 = load i8, ptr %407, align 1, !tbaa !124
  %409 = icmp eq i8 %408, 8
  br i1 %409, label %428, label %410

410:                                              ; preds = %403
  %411 = and i64 %404, 65535
  %412 = icmp eq i64 %411, 14
  br i1 %412, label %413, label %416

413:                                              ; preds = %410
  %414 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  %415 = load i64, ptr %3, align 8
  br label %421

416:                                              ; preds = %410
  %417 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %418 = load i32, ptr %417, align 4
  %419 = lshr i32 %418, 16
  %420 = and i32 %419, 255
  br label %421

421:                                              ; preds = %416, %413
  %422 = phi i64 [ %415, %413 ], [ %404, %416 ]
  %423 = phi i32 [ %414, %413 ], [ %420, %416 ]
  %424 = zext i32 %423 to i64
  %425 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %424
  %426 = load i8, ptr %425, align 1, !tbaa !124
  %427 = icmp eq i8 %426, 9
  br i1 %427, label %428, label %439, !prof !152

428:                                              ; preds = %421, %403
  %429 = phi i64 [ %422, %421 ], [ %404, %403 ]
  %430 = and i64 %429, 65535
  %431 = icmp eq i64 %430, 14
  br i1 %431, label %432, label %434

432:                                              ; preds = %428
  %433 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  br label %455

434:                                              ; preds = %428
  %435 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %436 = load i32, ptr %435, align 4
  %437 = lshr i32 %436, 16
  %438 = and i32 %437, 255
  br label %455

439:                                              ; preds = %421
  %440 = and i64 %422, 65535
  %441 = icmp eq i64 %440, 14
  br i1 %441, label %442, label %444

442:                                              ; preds = %439
  %443 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  br label %449

444:                                              ; preds = %439
  %445 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %446 = load i32, ptr %445, align 4
  %447 = lshr i32 %446, 16
  %448 = and i32 %447, 255
  br label %449

449:                                              ; preds = %444, %442
  %450 = phi i32 [ %443, %442 ], [ %448, %444 ]
  %451 = zext i32 %450 to i64
  %452 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %451
  %453 = load i8, ptr %452, align 1, !tbaa !124
  %454 = zext i8 %453 to i32
  br label %455

455:                                              ; preds = %449, %434, %432, %388, %373, %371
  %456 = phi i32 [ %393, %388 ], [ %372, %371 ], [ %377, %373 ], [ %454, %449 ], [ %433, %432 ], [ %438, %434 ]
  %457 = add i32 %456, -38
  %458 = zext i32 %457 to i64
  %459 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %458
  %460 = load ptr, ptr %459, align 8, !tbaa !108
  %461 = getelementptr inbounds %struct.real_format, ptr %460, i64 0, i32 12
  %462 = load i8, ptr %461, align 1, !tbaa !153
  %463 = icmp ne i8 %462, 0
  br label %464

464:                                              ; preds = %455, %252
  %465 = phi i1 [ false, %252 ], [ %463, %455 ]
  %466 = zext i1 %465 to i64
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull %5, i64 noundef %466) #10
  %467 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.215, ptr noundef %0) #10
  %468 = load i64, ptr %3, align 8
  %469 = and i64 %468, 65535
  %470 = icmp eq i64 %469, 14
  br i1 %470, label %471, label %474, !prof !143

471:                                              ; preds = %464
  %472 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  %473 = load i64, ptr %3, align 8
  br label %479

474:                                              ; preds = %464
  %475 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %476 = load i32, ptr %475, align 4
  %477 = lshr i32 %476, 16
  %478 = and i32 %477, 255
  br label %479

479:                                              ; preds = %474, %471
  %480 = phi i64 [ %473, %471 ], [ %468, %474 ]
  %481 = phi i32 [ %472, %471 ], [ %478, %474 ]
  %482 = zext i32 %481 to i64
  %483 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %482
  %484 = load i8, ptr %483, align 1, !tbaa !124
  %485 = icmp eq i8 %484, 8
  br i1 %485, label %540, label %486, !prof !152

486:                                              ; preds = %479
  %487 = and i64 %480, 65535
  %488 = icmp eq i64 %487, 14
  br i1 %488, label %489, label %492

489:                                              ; preds = %486
  %490 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  %491 = load i64, ptr %3, align 8
  br label %497

492:                                              ; preds = %486
  %493 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %494 = load i32, ptr %493, align 4
  %495 = lshr i32 %494, 16
  %496 = and i32 %495, 255
  br label %497

497:                                              ; preds = %492, %489
  %498 = phi i64 [ %491, %489 ], [ %480, %492 ]
  %499 = phi i32 [ %490, %489 ], [ %496, %492 ]
  %500 = zext i32 %499 to i64
  %501 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %500
  %502 = load i8, ptr %501, align 1, !tbaa !124
  %503 = icmp eq i8 %502, 9
  br i1 %503, label %540, label %504

504:                                              ; preds = %497
  %505 = and i64 %498, 65535
  %506 = icmp eq i64 %505, 14
  br i1 %506, label %507, label %510

507:                                              ; preds = %504
  %508 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  %509 = load i64, ptr %3, align 8
  br label %515

510:                                              ; preds = %504
  %511 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %512 = load i32, ptr %511, align 4
  %513 = lshr i32 %512, 16
  %514 = and i32 %513, 255
  br label %515

515:                                              ; preds = %510, %507
  %516 = phi i64 [ %509, %507 ], [ %498, %510 ]
  %517 = phi i32 [ %508, %507 ], [ %514, %510 ]
  %518 = zext i32 %517 to i64
  %519 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %518
  %520 = load i8, ptr %519, align 1, !tbaa !124
  %521 = icmp eq i8 %520, 11
  br i1 %521, label %540, label %522

522:                                              ; preds = %515
  %523 = and i64 %516, 65535
  %524 = icmp eq i64 %523, 14
  br i1 %524, label %525, label %527

525:                                              ; preds = %522
  %526 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  br label %532

527:                                              ; preds = %522
  %528 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %529 = load i32, ptr %528, align 4
  %530 = lshr i32 %529, 16
  %531 = and i32 %530, 255
  br label %532

532:                                              ; preds = %527, %525
  %533 = phi i32 [ %526, %525 ], [ %531, %527 ]
  %534 = zext i32 %533 to i64
  %535 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %534
  %536 = load i8, ptr %535, align 1, !tbaa !124
  %537 = icmp eq i8 %536, 17
  br i1 %537, label %538, label %745

538:                                              ; preds = %532
  %539 = load i64, ptr %3, align 8
  br label %540

540:                                              ; preds = %538, %515, %497, %479
  %541 = phi i64 [ %539, %538 ], [ %516, %515 ], [ %498, %497 ], [ %480, %479 ]
  %542 = and i64 %541, 65535
  %543 = icmp eq i64 %542, 14
  br i1 %543, label %544, label %547, !prof !143

544:                                              ; preds = %540
  %545 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  %546 = load i64, ptr %3, align 8
  br label %552

547:                                              ; preds = %540
  %548 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %549 = load i32, ptr %548, align 4
  %550 = lshr i32 %549, 16
  %551 = and i32 %550, 255
  br label %552

552:                                              ; preds = %547, %544
  %553 = phi i64 [ %546, %544 ], [ %541, %547 ]
  %554 = phi i32 [ %545, %544 ], [ %551, %547 ]
  %555 = zext i32 %554 to i64
  %556 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %555
  %557 = load i8, ptr %556, align 1, !tbaa !124
  %558 = icmp eq i8 %557, 8
  br i1 %558, label %577, label %559, !prof !152

559:                                              ; preds = %552
  %560 = and i64 %553, 65535
  %561 = icmp eq i64 %560, 14
  br i1 %561, label %562, label %565

562:                                              ; preds = %559
  %563 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  %564 = load i64, ptr %3, align 8
  br label %570

565:                                              ; preds = %559
  %566 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %567 = load i32, ptr %566, align 4
  %568 = lshr i32 %567, 16
  %569 = and i32 %568, 255
  br label %570

570:                                              ; preds = %565, %562
  %571 = phi i64 [ %564, %562 ], [ %553, %565 ]
  %572 = phi i32 [ %563, %562 ], [ %569, %565 ]
  %573 = zext i32 %572 to i64
  %574 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %573
  %575 = load i8, ptr %574, align 1, !tbaa !124
  %576 = icmp eq i8 %575, 9
  br i1 %576, label %577, label %588

577:                                              ; preds = %570, %552
  %578 = phi i64 [ %571, %570 ], [ %553, %552 ]
  %579 = and i64 %578, 65535
  %580 = icmp eq i64 %579, 14
  br i1 %580, label %581, label %583

581:                                              ; preds = %577
  %582 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  br label %604

583:                                              ; preds = %577
  %584 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %585 = load i32, ptr %584, align 4
  %586 = lshr i32 %585, 16
  %587 = and i32 %586, 255
  br label %604

588:                                              ; preds = %570
  %589 = and i64 %571, 65535
  %590 = icmp eq i64 %589, 14
  br i1 %590, label %591, label %593

591:                                              ; preds = %588
  %592 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  br label %598

593:                                              ; preds = %588
  %594 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %595 = load i32, ptr %594, align 4
  %596 = lshr i32 %595, 16
  %597 = and i32 %596, 255
  br label %598

598:                                              ; preds = %593, %591
  %599 = phi i32 [ %592, %591 ], [ %597, %593 ]
  %600 = zext i32 %599 to i64
  %601 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %600
  %602 = load i8, ptr %601, align 1, !tbaa !124
  %603 = zext i8 %602 to i32
  br label %604

604:                                              ; preds = %581, %583, %598
  %605 = phi i32 [ %603, %598 ], [ %582, %581 ], [ %587, %583 ]
  %606 = zext i32 %605 to i64
  %607 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %606
  %608 = load i8, ptr %607, align 1, !tbaa !124
  %609 = icmp eq i8 %608, 9
  %610 = load i64, ptr %3, align 8
  %611 = and i64 %610, 65535
  %612 = icmp eq i64 %611, 14
  br i1 %609, label %613, label %674

613:                                              ; preds = %604
  br i1 %612, label %614, label %617

614:                                              ; preds = %613
  %615 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  %616 = load i64, ptr %3, align 8
  br label %622

617:                                              ; preds = %613
  %618 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %619 = load i32, ptr %618, align 4
  %620 = lshr i32 %619, 16
  %621 = and i32 %620, 255
  br label %622

622:                                              ; preds = %617, %614
  %623 = phi i64 [ %616, %614 ], [ %610, %617 ]
  %624 = phi i32 [ %615, %614 ], [ %621, %617 ]
  %625 = zext i32 %624 to i64
  %626 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %625
  %627 = load i8, ptr %626, align 1, !tbaa !124
  %628 = icmp eq i8 %627, 8
  br i1 %628, label %647, label %629

629:                                              ; preds = %622
  %630 = and i64 %623, 65535
  %631 = icmp eq i64 %630, 14
  br i1 %631, label %632, label %635

632:                                              ; preds = %629
  %633 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  %634 = load i64, ptr %3, align 8
  br label %640

635:                                              ; preds = %629
  %636 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %637 = load i32, ptr %636, align 4
  %638 = lshr i32 %637, 16
  %639 = and i32 %638, 255
  br label %640

640:                                              ; preds = %635, %632
  %641 = phi i64 [ %634, %632 ], [ %623, %635 ]
  %642 = phi i32 [ %633, %632 ], [ %639, %635 ]
  %643 = zext i32 %642 to i64
  %644 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %643
  %645 = load i8, ptr %644, align 1, !tbaa !124
  %646 = icmp eq i8 %645, 9
  br i1 %646, label %647, label %658

647:                                              ; preds = %640, %622
  %648 = phi i64 [ %641, %640 ], [ %623, %622 ]
  %649 = and i64 %648, 65535
  %650 = icmp eq i64 %649, 14
  br i1 %650, label %651, label %653

651:                                              ; preds = %647
  %652 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  br label %735

653:                                              ; preds = %647
  %654 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %655 = load i32, ptr %654, align 4
  %656 = lshr i32 %655, 16
  %657 = and i32 %656, 255
  br label %735

658:                                              ; preds = %640
  %659 = and i64 %641, 65535
  %660 = icmp eq i64 %659, 14
  br i1 %660, label %661, label %663

661:                                              ; preds = %658
  %662 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  br label %668

663:                                              ; preds = %658
  %664 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %665 = load i32, ptr %664, align 4
  %666 = lshr i32 %665, 16
  %667 = and i32 %666, 255
  br label %668

668:                                              ; preds = %663, %661
  %669 = phi i32 [ %662, %661 ], [ %667, %663 ]
  %670 = zext i32 %669 to i64
  %671 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %670
  %672 = load i8, ptr %671, align 1, !tbaa !124
  %673 = zext i8 %672 to i32
  br label %735

674:                                              ; preds = %604
  br i1 %612, label %675, label %678

675:                                              ; preds = %674
  %676 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  %677 = load i64, ptr %3, align 8
  br label %683

678:                                              ; preds = %674
  %679 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %680 = load i32, ptr %679, align 4
  %681 = lshr i32 %680, 16
  %682 = and i32 %681, 255
  br label %683

683:                                              ; preds = %678, %675
  %684 = phi i64 [ %677, %675 ], [ %610, %678 ]
  %685 = phi i32 [ %676, %675 ], [ %682, %678 ]
  %686 = zext i32 %685 to i64
  %687 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %686
  %688 = load i8, ptr %687, align 1, !tbaa !124
  %689 = icmp eq i8 %688, 8
  br i1 %689, label %708, label %690

690:                                              ; preds = %683
  %691 = and i64 %684, 65535
  %692 = icmp eq i64 %691, 14
  br i1 %692, label %693, label %696

693:                                              ; preds = %690
  %694 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  %695 = load i64, ptr %3, align 8
  br label %701

696:                                              ; preds = %690
  %697 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %698 = load i32, ptr %697, align 4
  %699 = lshr i32 %698, 16
  %700 = and i32 %699, 255
  br label %701

701:                                              ; preds = %696, %693
  %702 = phi i64 [ %695, %693 ], [ %684, %696 ]
  %703 = phi i32 [ %694, %693 ], [ %700, %696 ]
  %704 = zext i32 %703 to i64
  %705 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %704
  %706 = load i8, ptr %705, align 1, !tbaa !124
  %707 = icmp eq i8 %706, 9
  br i1 %707, label %708, label %719, !prof !152

708:                                              ; preds = %701, %683
  %709 = phi i64 [ %702, %701 ], [ %684, %683 ]
  %710 = and i64 %709, 65535
  %711 = icmp eq i64 %710, 14
  br i1 %711, label %712, label %714

712:                                              ; preds = %708
  %713 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  br label %735

714:                                              ; preds = %708
  %715 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %716 = load i32, ptr %715, align 4
  %717 = lshr i32 %716, 16
  %718 = and i32 %717, 255
  br label %735

719:                                              ; preds = %701
  %720 = and i64 %702, 65535
  %721 = icmp eq i64 %720, 14
  br i1 %721, label %722, label %724

722:                                              ; preds = %719
  %723 = call i32 @vector_type_mode(ptr noundef nonnull %3) #9
  br label %729

724:                                              ; preds = %719
  %725 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %726 = load i32, ptr %725, align 4
  %727 = lshr i32 %726, 16
  %728 = and i32 %727, 255
  br label %729

729:                                              ; preds = %724, %722
  %730 = phi i32 [ %723, %722 ], [ %728, %724 ]
  %731 = zext i32 %730 to i64
  %732 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %731
  %733 = load i8, ptr %732, align 1, !tbaa !124
  %734 = zext i8 %733 to i32
  br label %735

735:                                              ; preds = %729, %714, %712, %668, %653, %651
  %736 = phi i32 [ %673, %668 ], [ %652, %651 ], [ %657, %653 ], [ %734, %729 ], [ %713, %712 ], [ %718, %714 ]
  %737 = add i32 %736, -38
  %738 = zext i32 %737 to i64
  %739 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %738
  %740 = load ptr, ptr %739, align 8, !tbaa !108
  %741 = getelementptr inbounds %struct.real_format, ptr %740, i64 0, i32 11
  %742 = load i8, ptr %741, align 2, !tbaa !154
  %743 = icmp ne i8 %742, 0
  %744 = zext i1 %743 to i64
  br label %745

745:                                              ; preds = %735, %532
  %746 = phi i64 [ 0, %532 ], [ %744, %735 ]
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull %5, i64 noundef %746) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @builtin_define_decimal_float_constants(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !141 !PGOFuncName !155 {
  %4 = alloca [64 x i8], align 16
  %5 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #11
  %6 = load i64, ptr %2, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 14
  br i1 %8, label %9, label %11, !prof !143

9:                                                ; preds = %3
  %10 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #9
  br label %16

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  br label %16

16:                                               ; preds = %11, %9
  %17 = phi i32 [ %10, %9 ], [ %15, %11 ]
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !124
  %21 = icmp eq i8 %20, 9
  %22 = load i64, ptr %2, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 14
  br i1 %21, label %25, label %33, !prof !152

25:                                               ; preds = %16
  br i1 %24, label %26, label %28, !prof !143

26:                                               ; preds = %25
  %27 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #9
  br label %41

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  br label %41

33:                                               ; preds = %16
  br i1 %24, label %34, label %36, !prof !143

34:                                               ; preds = %33
  %35 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #9
  br label %41

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = lshr i32 %38, 16
  %40 = and i32 %39, 255
  br label %41

41:                                               ; preds = %34, %36, %26, %28
  %42 = phi i32 [ %27, %26 ], [ %32, %28 ], [ %35, %34 ], [ %40, %36 ]
  %43 = add i32 %42, -38
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !108
  %47 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.197, ptr noundef %0) #10
  %48 = getelementptr inbounds %struct.real_format, ptr %46, i64 0, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !147
  %50 = sext i32 %49 to i64
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull %4, i64 noundef %50) #10
  %51 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.199, ptr noundef %0) #10
  %52 = getelementptr inbounds %struct.real_format, ptr %46, i64 0, i32 5
  %53 = load i32, ptr %52, align 4, !tbaa !148
  %54 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.200, i32 noundef %53) #10
  call void @builtin_define_with_value(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0) #10
  %55 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.202, ptr noundef %0) #10
  %56 = getelementptr inbounds %struct.real_format, ptr %46, i64 0, i32 6
  %57 = load i32, ptr %56, align 8, !tbaa !149
  %58 = sext i32 %57 to i64
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull %4, i64 noundef %58) #10
  %59 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef %0) #10
  %60 = load i32, ptr %52, align 4, !tbaa !148
  %61 = add nsw i32 %60, -1
  %62 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.217, i32 noundef %61, ptr noundef %1) #10
  call void @builtin_define_with_value(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0) #10
  %63 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.205, ptr noundef %0) #10
  %64 = load i32, ptr %48, align 4, !tbaa !147
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %78, label %66, !prof !156

66:                                               ; preds = %41, %74
  %67 = phi i32 [ %76, %74 ], [ %64, %41 ]
  %68 = phi ptr [ %75, %74 ], [ %5, %41 ]
  %69 = getelementptr inbounds i8, ptr %68, i64 1
  store i8 57, ptr %68, align 1, !tbaa !124
  %70 = load i32, ptr %48, align 4, !tbaa !147
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %72, label %74, !prof !157

72:                                               ; preds = %66
  %73 = getelementptr inbounds i8, ptr %68, i64 2
  store i8 46, ptr %69, align 1, !tbaa !124
  br label %74

74:                                               ; preds = %66, %72
  %75 = phi ptr [ %73, %72 ], [ %69, %66 ]
  %76 = add nsw i32 %67, -1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %66, !prof !158, !llvm.loop !159

78:                                               ; preds = %74, %41
  %79 = phi ptr [ %5, %41 ], [ %75, %74 ]
  store i8 0, ptr %79, align 1, !tbaa !124
  %80 = load i32, ptr %48, align 4, !tbaa !147
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [128 x i8], ptr %5, i64 0, i64 %82
  %84 = load i32, ptr %56, align 8, !tbaa !149
  %85 = add nsw i32 %84, -1
  %86 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %83, ptr noundef nonnull dereferenceable(1) @.str.218, i32 noundef %85, ptr noundef %1) #10
  call void @builtin_define_with_value(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0) #10
  %87 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.208, ptr noundef %0) #10
  %88 = load i32, ptr %48, align 4, !tbaa !147
  %89 = add nsw i32 %88, -1
  %90 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.219, i32 noundef %89, ptr noundef %1) #10
  call void @builtin_define_with_value(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0) #10
  %91 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.220, ptr noundef %0) #10
  %92 = load i32, ptr %48, align 4, !tbaa !147
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %106, !prof !161

94:                                               ; preds = %78, %102
  %95 = phi i32 [ %104, %102 ], [ %92, %78 ]
  %96 = phi ptr [ %103, %102 ], [ %5, %78 ]
  %97 = getelementptr inbounds i8, ptr %96, i64 1
  store i8 48, ptr %96, align 1, !tbaa !124
  %98 = load i32, ptr %48, align 4, !tbaa !147
  %99 = icmp eq i32 %95, %98
  br i1 %99, label %100, label %102, !prof !162

100:                                              ; preds = %94
  %101 = getelementptr inbounds i8, ptr %96, i64 2
  store i8 46, ptr %97, align 1, !tbaa !124
  br label %102

102:                                              ; preds = %94, %100
  %103 = phi ptr [ %101, %100 ], [ %97, %94 ]
  %104 = add nsw i32 %95, -1
  %105 = icmp sgt i32 %95, 2
  br i1 %105, label %94, label %106, !prof !163, !llvm.loop !164

106:                                              ; preds = %102, %78
  %107 = phi ptr [ %5, %78 ], [ %103, %102 ]
  store i8 0, ptr %107, align 1, !tbaa !124
  %108 = load i32, ptr %48, align 4, !tbaa !147
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [128 x i8], ptr %5, i64 0, i64 %109
  %111 = load i32, ptr %52, align 4, !tbaa !148
  %112 = add nsw i32 %111, -1
  %113 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %110, ptr noundef nonnull dereferenceable(1) @.str.217, i32 noundef %112, ptr noundef %1) #10
  call void @builtin_define_with_value(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @builtin_define_fixed_point_constants(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !95 !PGOFuncName !165 {
  %4 = alloca [64 x i8], align 16
  %5 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #11
  %6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.221, ptr noundef %0) #10
  %7 = load i64, ptr %2, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 14
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #9
  br label %17

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  br label %17

17:                                               ; preds = %12, %10
  %18 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !124
  %22 = zext i8 %21 to i64
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull %4, i64 noundef %22) #10
  %23 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.222, ptr noundef %0) #10
  %24 = load i64, ptr %2, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 14
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #9
  br label %34

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  br label %34

34:                                               ; preds = %29, %27
  %35 = phi i32 [ %28, %27 ], [ %33, %29 ]
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !124
  %39 = zext i8 %38 to i64
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull %4, i64 noundef %39) #10
  %40 = load i8, ptr %1, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %282, label %42

42:                                               ; preds = %34
  %43 = load i64, ptr %2, align 8
  %44 = and i64 %43, 2097152
  %45 = icmp eq i64 %44, 0
  %46 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef %0) #10
  br i1 %45, label %49, label %47

47:                                               ; preds = %42
  %48 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.210, ptr noundef nonnull %1) #10
  br label %161

49:                                               ; preds = %42
  %50 = load i64, ptr %2, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 14
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #9
  %55 = load i64, ptr %2, align 8
  br label %61

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  br label %61

61:                                               ; preds = %56, %53
  %62 = phi i64 [ %55, %53 ], [ %50, %56 ]
  %63 = phi i32 [ %54, %53 ], [ %60, %56 ]
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !124
  %67 = icmp eq i8 %66, 6
  br i1 %67, label %122, label %68

68:                                               ; preds = %61
  %69 = and i64 %62, 65535
  %70 = icmp eq i64 %69, 14
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #9
  %73 = load i64, ptr %2, align 8
  br label %79

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %76 = load i32, ptr %75, align 4
  %77 = lshr i32 %76, 16
  %78 = and i32 %77, 255
  br label %79

79:                                               ; preds = %74, %71
  %80 = phi i64 [ %73, %71 ], [ %62, %74 ]
  %81 = phi i32 [ %72, %71 ], [ %78, %74 ]
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !124
  %85 = icmp eq i8 %84, 15
  br i1 %85, label %122, label %86

86:                                               ; preds = %79
  %87 = and i64 %80, 65535
  %88 = icmp eq i64 %87, 14
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #9
  %91 = load i64, ptr %2, align 8
  br label %97

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %94 = load i32, ptr %93, align 4
  %95 = lshr i32 %94, 16
  %96 = and i32 %95, 255
  br label %97

97:                                               ; preds = %92, %89
  %98 = phi i64 [ %91, %89 ], [ %80, %92 ]
  %99 = phi i32 [ %90, %89 ], [ %96, %92 ]
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !124
  %103 = icmp eq i8 %102, 7
  br i1 %103, label %122, label %104

104:                                              ; preds = %97
  %105 = and i64 %98, 65535
  %106 = icmp eq i64 %105, 14
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #9
  br label %114

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %111 = load i32, ptr %110, align 4
  %112 = lshr i32 %111, 16
  %113 = and i32 %112, 255
  br label %114

114:                                              ; preds = %109, %107
  %115 = phi i32 [ %108, %107 ], [ %113, %109 ]
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %116
  %118 = load i8, ptr %117, align 1, !tbaa !124
  %119 = icmp eq i8 %118, 16
  br i1 %119, label %120, label %159

120:                                              ; preds = %114
  %121 = load i64, ptr %2, align 8
  br label %122

122:                                              ; preds = %120, %97, %79, %61
  %123 = phi i64 [ %121, %120 ], [ %98, %97 ], [ %80, %79 ], [ %62, %61 ]
  %124 = and i64 %123, 65535
  %125 = icmp eq i64 %124, 14
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #9
  %128 = load i64, ptr %2, align 8
  br label %134

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %131 = load i32, ptr %130, align 4
  %132 = lshr i32 %131, 16
  %133 = and i32 %132, 255
  br label %134

134:                                              ; preds = %129, %126
  %135 = phi i64 [ %128, %126 ], [ %123, %129 ]
  %136 = phi i32 [ %127, %126 ], [ %133, %129 ]
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !124
  %140 = zext i8 %139 to i32
  %141 = add nsw i32 %140, -1
  %142 = and i64 %135, 65535
  %143 = icmp eq i64 %142, 14
  br i1 %143, label %144, label %146

144:                                              ; preds = %134
  %145 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #9
  br label %151

146:                                              ; preds = %134
  %147 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %148 = load i32, ptr %147, align 4
  %149 = lshr i32 %148, 16
  %150 = and i32 %149, 255
  br label %151

151:                                              ; preds = %146, %144
  %152 = phi i32 [ %145, %144 ], [ %150, %146 ]
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !124
  %156 = zext i8 %155 to i32
  %157 = add nsw i32 %156, -1
  %158 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.223, i32 noundef %141, ptr noundef nonnull %1, i32 noundef %157, ptr noundef nonnull %1) #10
  br label %161

159:                                              ; preds = %114
  %160 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.224, ptr noundef nonnull %1, ptr noundef nonnull %1) #10
  br label %161

161:                                              ; preds = %151, %159, %47
  call void @builtin_define_with_value(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0) #10
  %162 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.205, ptr noundef %0) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %5, ptr noundef nonnull align 1 dereferenceable(3) @.str.225, i64 3, i1 false)
  %163 = getelementptr inbounds i8, ptr %5, i64 2
  %164 = load i64, ptr %2, align 8
  %165 = and i64 %164, 65535
  %166 = icmp eq i64 %165, 14
  br i1 %166, label %167, label %170

167:                                              ; preds = %161
  %168 = call i32 @vector_type_mode(ptr noundef nonnull %2) #9
  %169 = load i64, ptr %2, align 8
  br label %175

170:                                              ; preds = %161
  %171 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %172 = load i32, ptr %171, align 4
  %173 = lshr i32 %172, 16
  %174 = and i32 %173, 255
  br label %175

175:                                              ; preds = %170, %167
  %176 = phi i64 [ %169, %167 ], [ %164, %170 ]
  %177 = phi i32 [ %168, %167 ], [ %174, %170 ]
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %178
  %180 = load i8, ptr %179, align 1, !tbaa !124
  %181 = zext i8 %180 to i32
  %182 = and i64 %176, 65535
  %183 = icmp eq i64 %182, 14
  br i1 %183, label %184, label %186

184:                                              ; preds = %175
  %185 = call i32 @vector_type_mode(ptr noundef nonnull %2) #9
  br label %191

186:                                              ; preds = %175
  %187 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %188 = load i32, ptr %187, align 4
  %189 = lshr i32 %188, 16
  %190 = and i32 %189, 255
  br label %191

191:                                              ; preds = %186, %184
  %192 = phi i32 [ %185, %184 ], [ %190, %186 ]
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !124
  %196 = zext i8 %195 to i32
  %197 = add nuw nsw i32 %196, %181
  %198 = and i32 %197, 3
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %191
  %201 = getelementptr inbounds i8, ptr %5, i64 3
  %202 = shl nsw i32 -1, %198
  %203 = xor i32 %202, -1
  %204 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %163, ptr noundef nonnull dereferenceable(1) @.str.226, i32 noundef %203) #10
  br label %205

205:                                              ; preds = %200, %191
  %206 = phi ptr [ %201, %200 ], [ %163, %191 ]
  %207 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  br label %208

208:                                              ; preds = %245, %205
  %209 = phi i32 [ 0, %205 ], [ %247, %245 ]
  %210 = phi ptr [ %206, %205 ], [ %246, %245 ]
  %211 = load i64, ptr %2, align 8
  %212 = and i64 %211, 65535
  %213 = icmp eq i64 %212, 14
  br i1 %213, label %214, label %217

214:                                              ; preds = %208
  %215 = call i32 @vector_type_mode(ptr noundef nonnull %2) #9
  %216 = load i64, ptr %2, align 8
  br label %221

217:                                              ; preds = %208
  %218 = load i32, ptr %207, align 4
  %219 = lshr i32 %218, 16
  %220 = and i32 %219, 255
  br label %221

221:                                              ; preds = %217, %214
  %222 = phi i64 [ %216, %214 ], [ %211, %217 ]
  %223 = phi i32 [ %215, %214 ], [ %220, %217 ]
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %224
  %226 = load i8, ptr %225, align 1, !tbaa !124
  %227 = zext i8 %226 to i32
  %228 = and i64 %222, 65535
  %229 = icmp eq i64 %228, 14
  br i1 %229, label %230, label %232

230:                                              ; preds = %221
  %231 = call i32 @vector_type_mode(ptr noundef nonnull %2) #9
  br label %236

232:                                              ; preds = %221
  %233 = load i32, ptr %207, align 4
  %234 = lshr i32 %233, 16
  %235 = and i32 %234, 255
  br label %236

236:                                              ; preds = %232, %230
  %237 = phi i32 [ %231, %230 ], [ %235, %232 ]
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %238
  %240 = load i8, ptr %239, align 1, !tbaa !124
  %241 = zext i8 %240 to i32
  %242 = add nuw nsw i32 %241, %227
  %243 = lshr i32 %242, 2
  %244 = icmp ult i32 %209, %243
  br i1 %244, label %245, label %248

245:                                              ; preds = %236
  %246 = getelementptr inbounds i8, ptr %210, i64 1
  store i16 70, ptr %210, align 1
  %247 = add nuw nsw i32 %209, 1
  br label %208, !llvm.loop !166

248:                                              ; preds = %236
  %249 = load i64, ptr %2, align 8
  %250 = and i64 %249, 65535
  %251 = icmp eq i64 %250, 14
  br i1 %251, label %252, label %254

252:                                              ; preds = %248
  %253 = call i32 @vector_type_mode(ptr noundef nonnull %2) #9
  br label %258

254:                                              ; preds = %248
  %255 = load i32, ptr %207, align 4
  %256 = lshr i32 %255, 16
  %257 = and i32 %256, 255
  br label %258

258:                                              ; preds = %254, %252
  %259 = phi i32 [ %253, %252 ], [ %257, %254 ]
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %260
  %262 = load i8, ptr %261, align 1, !tbaa !124
  %263 = zext i8 %262 to i32
  %264 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %210, ptr noundef nonnull dereferenceable(1) @.str.227, i32 noundef %263, ptr noundef nonnull %1) #10
  call void @builtin_define_with_value(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0) #10
  %265 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.208, ptr noundef %0) #10
  %266 = load i64, ptr %2, align 8
  %267 = and i64 %266, 65535
  %268 = icmp eq i64 %267, 14
  br i1 %268, label %269, label %271

269:                                              ; preds = %258
  %270 = call i32 @vector_type_mode(ptr noundef nonnull %2) #9
  br label %275

271:                                              ; preds = %258
  %272 = load i32, ptr %207, align 4
  %273 = lshr i32 %272, 16
  %274 = and i32 %273, 255
  br label %275

275:                                              ; preds = %271, %269
  %276 = phi i32 [ %270, %269 ], [ %274, %271 ]
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %277
  %279 = load i8, ptr %278, align 1, !tbaa !124
  %280 = zext i8 %279 to i32
  %281 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.228, i32 noundef %280, ptr noundef nonnull %1) #10
  call void @builtin_define_with_value(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0) #10
  br label %282

282:                                              ; preds = %34, %275
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @builtin_define_with_value(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !167 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  %6 = icmp eq i32 %2, 0
  %7 = select i1 %6, i64 2, i64 4, !prof !168
  %8 = add i64 %4, %7
  %9 = add i64 %8, %5
  %10 = alloca i8, i64 %9, align 16
  %11 = select i1 %6, ptr @.str.140, ptr @.str.139, !prof !168
  %12 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %11, ptr noundef %0, ptr noundef %1) #10
  %13 = load ptr, ptr @parse_in, align 8, !tbaa !108
  call void @cpp_define(ptr noundef %13, ptr noundef nonnull %10) #9
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @fast_math_flags_set_p() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @dwarf2out_do_cfi_asm() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @builtin_define_type_sizeof(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !169 !PGOFuncName !170 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = tail call i64 @tree_low_cst(ptr noundef %4, i32 noundef 1) #9
  tail call fastcc void @builtin_define_with_int_value(ptr noundef %0, i64 noundef %5) #10
  ret void
}

; Function Attrs: optsize
declare void @ix86_target_macros() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @builtin_define_std(ptr noundef %0) local_unnamed_addr #0 !prof !141 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  %3 = add i64 %2, 5
  %4 = alloca i8, i64 %3, align 16
  %5 = getelementptr inbounds i8, ptr %4, i64 2
  %6 = getelementptr inbounds i8, ptr %5, i64 %2
  %7 = add i64 %2, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %5, ptr align 1 %0, i64 %7, i1 false)
  %8 = load i8, ptr %5, align 2, !tbaa !124
  %9 = icmp eq i8 %8, 95
  br i1 %9, label %10, label %20, !prof !143

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %4, i64 3
  %12 = load i8, ptr %11, align 1, !tbaa !124
  %13 = icmp eq i8 %12, 95
  br i1 %13, label %32, label %14

14:                                               ; preds = %10
  %15 = zext i8 %12 to i64
  %16 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !171
  %18 = and i16 %17, 128
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %22, label %32

20:                                               ; preds = %1
  %21 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 95, ptr %21, align 1, !tbaa !124
  br label %22

22:                                               ; preds = %14, %20
  %23 = phi i64 [ 1, %20 ], [ 2, %14 ]
  %24 = getelementptr inbounds i8, ptr %4, i64 %23
  %25 = getelementptr inbounds i8, ptr %24, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !124
  %27 = icmp eq i8 %26, 95
  br i1 %27, label %34, label %28, !prof !143

28:                                               ; preds = %22
  %29 = getelementptr i8, ptr %4, i64 %23
  %30 = getelementptr i8, ptr %29, i64 -1
  store i8 95, ptr %30, align 1, !tbaa !124
  %31 = load ptr, ptr @parse_in, align 8, !tbaa !108
  call void @cpp_define(ptr noundef %31, ptr noundef nonnull %30) #9
  br label %36

32:                                               ; preds = %10, %14
  %33 = load ptr, ptr @parse_in, align 8, !tbaa !108
  call void @cpp_define(ptr noundef %33, ptr noundef nonnull %5) #9
  br label %57

34:                                               ; preds = %22
  %35 = load ptr, ptr @parse_in, align 8, !tbaa !108
  call void @cpp_define(ptr noundef %35, ptr noundef nonnull %24) #9
  br i1 %9, label %57, label %36, !prof !173

36:                                               ; preds = %28, %34
  %37 = phi ptr [ %30, %28 ], [ %24, %34 ]
  %38 = getelementptr inbounds i8, ptr %6, i64 -1
  %39 = load i8, ptr %38, align 1, !tbaa !124
  %40 = icmp eq i8 %39, 95
  br i1 %40, label %43, label %41, !prof !143

41:                                               ; preds = %36
  %42 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 95, ptr %6, align 1, !tbaa !124
  br label %43

43:                                               ; preds = %41, %36
  %44 = phi ptr [ %42, %41 ], [ %6, %36 ]
  %45 = getelementptr inbounds i8, ptr %44, i64 -2
  %46 = load i8, ptr %45, align 1, !tbaa !124
  %47 = icmp eq i8 %46, 95
  br i1 %47, label %50, label %48, !prof !143

48:                                               ; preds = %43
  %49 = getelementptr inbounds i8, ptr %44, i64 1
  store i8 95, ptr %44, align 1, !tbaa !124
  br label %50

50:                                               ; preds = %48, %43
  %51 = phi ptr [ %49, %48 ], [ %44, %43 ]
  store i8 0, ptr %51, align 1, !tbaa !124
  %52 = load ptr, ptr @parse_in, align 8, !tbaa !108
  call void @cpp_define(ptr noundef %52, ptr noundef nonnull %37) #9
  %53 = load i32, ptr @flag_iso, align 4, !tbaa !96
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57, !prof !152

55:                                               ; preds = %50
  %56 = load ptr, ptr @parse_in, align 8, !tbaa !108
  call void @cpp_define(ptr noundef %56, ptr noundef %0) #9
  br label %57

57:                                               ; preds = %32, %50, %55, %34
  ret void
}

; Function Attrs: optsize
declare void @cpp_assert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare void @cpp_define_formatted(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @builtin_define_constants(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !174 !PGOFuncName !175 {
  %3 = tail call fastcc ptr @type_suffix(ptr noundef %1) #10
  %4 = load i8, ptr %3, align 1, !tbaa !124
  %5 = icmp eq i8 %4, 0
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  br i1 %5, label %7, label %11, !prof !176

7:                                                ; preds = %2
  %8 = add i64 %6, 6
  %9 = alloca i8, i64 %8, align 16
  %10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @.str.188, ptr noundef %0) #10
  br label %17

11:                                               ; preds = %2
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #10
  %13 = add i64 %6, 10
  %14 = add i64 %13, %12
  %15 = alloca i8, i64 %14, align 16
  %16 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) @.str.189, ptr noundef %0, ptr noundef nonnull %3) #10
  br label %17

17:                                               ; preds = %11, %7
  %18 = phi ptr [ %9, %7 ], [ %15, %11 ]
  %19 = load ptr, ptr @parse_in, align 8, !tbaa !108
  call void @cpp_define(ptr noundef %19, ptr noundef nonnull %18) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @type_suffix(ptr noundef readonly %0) unnamed_addr #0 !prof !177 !PGOFuncName !178 {
  %2 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !108
  %3 = icmp eq ptr %2, %0
  %4 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16
  %5 = icmp eq ptr %4, %0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %33, label %7, !prof !179

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !108
  %9 = icmp eq ptr %8, %0
  %10 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 8), align 16
  %11 = icmp eq ptr %10, %0
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %33, label %13, !prof !180

13:                                               ; preds = %7
  %14 = load <4 x ptr>, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 3), align 8
  %15 = insertelement <4 x ptr> poison, ptr %0, i64 0
  %16 = shufflevector <4 x ptr> %15, <4 x ptr> poison, <4 x i32> zeroinitializer
  %17 = icmp eq <4 x ptr> %14, %16
  %18 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 1), align 8
  %19 = freeze ptr %18
  %20 = icmp eq ptr %19, %0
  %21 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16
  %22 = freeze ptr %21
  %23 = icmp eq ptr %22, %0
  %24 = load ptr, ptr @integer_types, align 16
  %25 = icmp eq ptr %24, %0
  %26 = freeze <4 x i1> %17
  %27 = bitcast <4 x i1> %26 to i4
  %28 = icmp ne i4 %27, 0
  %29 = or i1 %28, %20
  %30 = or i1 %29, %23
  %31 = select i1 %30, i1 true, i1 %25
  br i1 %31, label %33, label %32, !prof !181

32:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.194, i32 noundef 998, ptr noundef nonnull @.str.195) #9
  br label %33

33:                                               ; preds = %13, %7, %1, %32
  %34 = phi i64 [ 0, %32 ], [ 4, %1 ], [ 2, %7 ], [ 0, %13 ]
  %35 = load i64, ptr %0, align 8
  %36 = lshr i64 %35, 21
  %37 = and i64 %36, 1
  %38 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 1023
  %41 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !108
  %42 = getelementptr inbounds %struct.tree_type, ptr %41, i64 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = and i32 %43, 1023
  %45 = icmp ult i32 %40, %44
  %46 = select i1 %45, i64 0, i64 %37, !prof !182
  %47 = or disjoint i64 %46, %34
  %48 = shl i64 %47, 2
  %49 = call ptr @llvm.load.relative.i64(ptr @reltable.type_suffix, i64 %48)
  ret ptr %49
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: optsize
declare void @get_max_float(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @builtin_define_with_hex_fp_value(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #0 !prof !183 !PGOFuncName !184 {
  %7 = alloca %struct.real_value, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca [256 x i8], align 16
  %10 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %10) #11
  %11 = call i32 @real_from_string(ptr noundef nonnull %7, ptr noundef %3) #9
  %12 = load i64, ptr %1, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 14
  br i1 %14, label %15, label %17, !prof !185

15:                                               ; preds = %6
  %16 = call i32 @vector_type_mode(ptr noundef nonnull %1) #9
  br label %22

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  br label %22

22:                                               ; preds = %17, %15
  %23 = phi i32 [ %16, %15 ], [ %21, %17 ]
  %24 = sext i32 %2 to i64
  call void @real_to_decimal_for_mode(ptr noundef nonnull %8, ptr noundef nonnull %7, i64 noundef 64, i64 noundef %24, i32 noundef 0, i32 noundef %23) #9
  %25 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @.str.216, ptr noundef nonnull %8, ptr noundef %4) #10
  %26 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull %9) #10
  %27 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @.str.140, ptr noundef %0, ptr noundef nonnull %10) #10
  %28 = load ptr, ptr @parse_in, align 8, !tbaa !108
  call void @cpp_define(ptr noundef %28, ptr noundef nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #11
  ret void
}

; Function Attrs: optsize
declare i32 @real_from_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @real_to_decimal_for_mode(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!94}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!35 = !{ptr @c_cpp_builtins, ptr @define__GNUC__, i64 1}
!36 = !{ptr @c_cpp_builtins, ptr @c_stddef_cpp_builtins, i64 1}
!37 = !{ptr @c_cpp_builtins, ptr @builtin_define_with_int_value, i64 5}
!38 = !{ptr @c_cpp_builtins, ptr @builtin_define_type_max, i64 7}
!39 = !{ptr @c_cpp_builtins, ptr @builtin_define_type_minmax, i64 2}
!40 = !{ptr @c_cpp_builtins, ptr @builtin_define_type_precision, i64 1}
!41 = !{ptr @c_cpp_builtins, ptr @builtin_define_stdint_macros, i64 1}
!42 = !{ptr @c_cpp_builtins, ptr @builtin_define_float_constants, i64 3}
!43 = !{ptr @c_cpp_builtins, ptr @builtin_define_decimal_float_constants, i64 3}
!44 = !{ptr @c_cpp_builtins, ptr @builtin_define_with_value, i64 3}
!45 = !{ptr @c_cpp_builtins, ptr @cpp_define, i64 6}
!46 = !{ptr @c_cpp_builtins, ptr @fast_math_flags_set_p, i64 1}
!47 = !{ptr @c_cpp_builtins, ptr @dwarf2out_do_cfi_asm, i64 1}
!48 = !{ptr @c_cpp_builtins, ptr @builtin_define_type_sizeof, i64 11}
!49 = !{ptr @c_cpp_builtins, ptr @ix86_target_macros, i64 1}
!50 = !{ptr @c_cpp_builtins, ptr @builtin_define_std, i64 2}
!51 = !{ptr @c_cpp_builtins, ptr @cpp_assert, i64 3}
!52 = !{ptr @define__GNUC__, ptr @__isoc99_sscanf, i64 1}
!53 = !{ptr @define__GNUC__, ptr @cpp_define_formatted, i64 3}
!54 = !{ptr @builtin_define_with_int_value, ptr @strlen, i64 43}
!55 = !{ptr @builtin_define_with_int_value, ptr @sprintf, i64 43}
!56 = !{ptr @builtin_define_with_int_value, ptr @cpp_define, i64 43}
!57 = !{ptr @builtin_define_type_max, ptr @builtin_define_type_minmax, i64 35}
!58 = !{ptr @builtin_define_type_minmax, ptr @fancy_abort, i64 1}
!59 = !{ptr @builtin_define_type_minmax, ptr @type_suffix, i64 38}
!60 = !{ptr @builtin_define_type_minmax, ptr @strlen, i64 122}
!61 = !{ptr @builtin_define_type_minmax, ptr @sprintf, i64 42}
!62 = !{ptr @builtin_define_type_minmax, ptr @cpp_define, i64 42}
!63 = !{ptr @builtin_define_type_precision, ptr @builtin_define_with_int_value, i64 1}
!64 = !{ptr @builtin_define_stdint_macros, ptr @builtin_define_type_max, i64 28}
!65 = !{ptr @builtin_define_stdint_macros, ptr @builtin_define_constants, i64 10}
!66 = !{ptr @builtin_define_stdint_macros, ptr @builtin_define_type_minmax, i64 1}
!67 = !{ptr @builtin_define_float_constants, ptr @vector_type_mode, i64 16}
!68 = !{ptr @builtin_define_float_constants, ptr @fancy_abort, i64 2}
!69 = !{ptr @builtin_define_float_constants, ptr @builtin_define_with_int_value, i64 20}
!70 = !{ptr @builtin_define_float_constants, ptr @sprintf, i64 54}
!71 = !{ptr @builtin_define_float_constants, ptr @builtin_define_with_value, i64 10}
!72 = !{ptr @builtin_define_float_constants, ptr @get_max_float, i64 3}
!73 = !{ptr @builtin_define_float_constants, ptr @builtin_define_with_hex_fp_value, i64 11}
!74 = !{ptr @builtin_define_decimal_float_constants, ptr @vector_type_mode, i64 1}
!75 = !{ptr @builtin_define_decimal_float_constants, ptr @sprintf, i64 36}
!76 = !{ptr @builtin_define_decimal_float_constants, ptr @builtin_define_with_int_value, i64 6}
!77 = !{ptr @builtin_define_decimal_float_constants, ptr @builtin_define_with_value, i64 15}
!78 = !{ptr @builtin_define_with_value, ptr @strlen, i64 124}
!79 = !{ptr @builtin_define_with_value, ptr @sprintf, i64 62}
!80 = !{ptr @builtin_define_with_value, ptr @cpp_define, i64 62}
!81 = !{ptr @builtin_define_type_sizeof, ptr @tree_low_cst, i64 11}
!82 = !{ptr @builtin_define_type_sizeof, ptr @builtin_define_with_int_value, i64 11}
!83 = !{ptr @builtin_define_std, ptr @strlen, i64 3}
!84 = !{ptr @builtin_define_std, ptr @cpp_define, i64 7}
!85 = !{ptr @builtin_define_constants, ptr @type_suffix, i64 10}
!86 = !{ptr @builtin_define_constants, ptr @strlen, i64 15}
!87 = !{ptr @builtin_define_constants, ptr @sprintf, i64 10}
!88 = !{ptr @builtin_define_constants, ptr @cpp_define, i64 10}
!89 = !{ptr @builtin_define_with_hex_fp_value, ptr @real_from_string, i64 12}
!90 = !{ptr @builtin_define_with_hex_fp_value, ptr @vector_type_mode, i64 1}
!91 = !{ptr @builtin_define_with_hex_fp_value, ptr @real_to_decimal_for_mode, i64 12}
!92 = !{ptr @builtin_define_with_hex_fp_value, ptr @sprintf, i64 36}
!93 = !{ptr @builtin_define_with_hex_fp_value, ptr @cpp_define, i64 12}
!94 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!95 = !{!"function_entry_count", i64 0}
!96 = !{!97, !97, i64 0}
!97 = !{!"int", !98, i64 0}
!98 = !{!"omnipotent char", !99, i64 0}
!99 = !{!"Simple C/C++ TBAA"}
!100 = !{!101, !98, i64 25}
!101 = !{!"cl_optimization", !97, i64 0, !97, i64 4, !97, i64 8, !97, i64 12, !97, i64 16, !97, i64 20, !98, i64 24, !98, i64 25, !98, i64 26, !98, i64 27, !98, i64 28, !98, i64 29, !98, i64 30, !98, i64 31, !98, i64 32, !98, i64 33, !98, i64 34, !98, i64 35, !98, i64 36, !98, i64 37, !98, i64 38, !98, i64 39, !98, i64 40, !98, i64 41, !98, i64 42, !98, i64 43, !98, i64 44, !98, i64 45, !98, i64 46, !98, i64 47, !98, i64 48, !98, i64 49, !98, i64 50, !98, i64 51, !98, i64 52, !98, i64 53, !98, i64 54, !98, i64 55, !98, i64 56, !98, i64 57, !98, i64 58, !98, i64 59, !98, i64 60, !98, i64 61, !98, i64 62, !98, i64 63, !98, i64 64, !98, i64 65, !98, i64 66, !98, i64 67, !98, i64 68, !98, i64 69, !98, i64 70, !98, i64 71, !98, i64 72, !98, i64 73, !98, i64 74, !98, i64 75, !98, i64 76, !98, i64 77, !98, i64 78, !98, i64 79, !98, i64 80, !98, i64 81, !98, i64 82, !98, i64 83, !98, i64 84, !98, i64 85, !98, i64 86, !98, i64 87, !98, i64 88, !98, i64 89, !98, i64 90, !98, i64 91, !98, i64 92, !98, i64 93, !98, i64 94, !98, i64 95, !98, i64 96, !98, i64 97, !98, i64 98, !98, i64 99, !98, i64 100, !98, i64 101, !98, i64 102, !98, i64 103, !98, i64 104, !98, i64 105, !98, i64 106, !98, i64 107, !98, i64 108, !98, i64 109, !98, i64 110, !98, i64 111, !98, i64 112, !98, i64 113, !98, i64 114, !98, i64 115, !98, i64 116, !98, i64 117, !98, i64 118, !98, i64 119, !98, i64 120, !98, i64 121, !98, i64 122, !98, i64 123, !98, i64 124, !98, i64 125, !98, i64 126, !98, i64 127, !98, i64 128, !98, i64 129, !98, i64 130, !98, i64 131, !98, i64 132, !98, i64 133, !98, i64 134, !98, i64 135, !98, i64 136, !98, i64 137, !98, i64 138, !98, i64 139, !98, i64 140, !98, i64 141, !98, i64 142, !98, i64 143, !98, i64 144, !98, i64 145, !98, i64 146, !98, i64 147, !98, i64 148, !98, i64 149, !98, i64 150, !98, i64 151, !98, i64 152, !98, i64 153, !98, i64 154, !98, i64 155, !98, i64 156, !98, i64 157, !98, i64 158, !98, i64 159, !98, i64 160, !98, i64 161, !98, i64 162, !98, i64 163, !98, i64 164, !98, i64 165, !98, i64 166, !98, i64 167, !98, i64 168, !98, i64 169, !98, i64 170, !98, i64 171, !98, i64 172, !98, i64 173, !98, i64 174, !98, i64 175, !98, i64 176, !98, i64 177, !98, i64 178, !98, i64 179, !98, i64 180}
!102 = !{!101, !98, i64 24}
!103 = !{!101, !98, i64 123}
!104 = !{!101, !98, i64 50}
!105 = !{!"function_entry_count", i64 1}
!106 = !{!"branch_weights", i32 2, i32 1}
!107 = !{!"branch_weights", i32 4, i32 3, i32 2}
!108 = !{!109, !109, i64 0}
!109 = !{!"any pointer", !98, i64 0}
!110 = !{!"branch_weights", i32 1, i32 2}
!111 = !{!112, !109, i64 880}
!112 = !{!"gcc_target", !113, i64 0, !115, i64 368, !116, i64 664, !97, i64 744, !109, i64 752, !109, i64 760, !109, i64 768, !109, i64 776, !109, i64 784, !109, i64 792, !109, i64 800, !109, i64 808, !109, i64 816, !109, i64 824, !109, i64 832, !109, i64 840, !109, i64 848, !109, i64 856, !109, i64 864, !109, i64 872, !109, i64 880, !109, i64 888, !109, i64 896, !109, i64 904, !109, i64 912, !109, i64 920, !109, i64 928, !109, i64 936, !109, i64 944, !109, i64 952, !109, i64 960, !109, i64 968, !109, i64 976, !109, i64 984, !109, i64 992, !109, i64 1000, !109, i64 1008, !109, i64 1016, !109, i64 1024, !109, i64 1032, !109, i64 1040, !109, i64 1048, !109, i64 1056, !117, i64 1064, !117, i64 1072, !109, i64 1080, !109, i64 1088, !109, i64 1096, !109, i64 1104, !109, i64 1112, !109, i64 1120, !109, i64 1128, !109, i64 1136, !109, i64 1144, !109, i64 1152, !109, i64 1160, !109, i64 1168, !118, i64 1176, !109, i64 1232, !109, i64 1240, !109, i64 1248, !109, i64 1256, !109, i64 1264, !109, i64 1272, !109, i64 1280, !109, i64 1288, !109, i64 1296, !109, i64 1304, !109, i64 1312, !109, i64 1320, !109, i64 1328, !109, i64 1336, !109, i64 1344, !109, i64 1352, !109, i64 1360, !109, i64 1368, !109, i64 1376, !109, i64 1384, !109, i64 1392, !109, i64 1400, !109, i64 1408, !109, i64 1416, !109, i64 1424, !109, i64 1432, !109, i64 1440, !109, i64 1448, !109, i64 1456, !117, i64 1464, !119, i64 1472, !109, i64 1664, !109, i64 1672, !109, i64 1680, !109, i64 1688, !109, i64 1696, !109, i64 1704, !109, i64 1712, !109, i64 1720, !109, i64 1728, !109, i64 1736, !109, i64 1744, !109, i64 1752, !109, i64 1760, !109, i64 1768, !109, i64 1776, !120, i64 1784, !121, i64 1792, !122, i64 1896, !123, i64 1968, !109, i64 2016, !98, i64 2024, !98, i64 2025, !98, i64 2026, !98, i64 2027, !98, i64 2028, !98, i64 2029, !98, i64 2030, !98, i64 2031, !98, i64 2032, !98, i64 2033, !98, i64 2034, !98, i64 2035}
!113 = !{!"asm_out", !109, i64 0, !109, i64 8, !109, i64 16, !114, i64 24, !114, i64 56, !109, i64 88, !109, i64 96, !109, i64 104, !109, i64 112, !109, i64 120, !109, i64 128, !109, i64 136, !109, i64 144, !109, i64 152, !109, i64 160, !109, i64 168, !109, i64 176, !109, i64 184, !109, i64 192, !109, i64 200, !109, i64 208, !109, i64 216, !109, i64 224, !109, i64 232, !109, i64 240, !109, i64 248, !109, i64 256, !109, i64 264, !109, i64 272, !109, i64 280, !109, i64 288, !109, i64 296, !109, i64 304, !109, i64 312, !109, i64 320, !109, i64 328, !109, i64 336, !109, i64 344, !109, i64 352, !109, i64 360}
!114 = !{!"asm_int_op", !109, i64 0, !109, i64 8, !109, i64 16, !109, i64 24}
!115 = !{!"sched", !109, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !109, i64 48, !109, i64 56, !109, i64 64, !109, i64 72, !109, i64 80, !109, i64 88, !109, i64 96, !109, i64 104, !109, i64 112, !109, i64 120, !109, i64 128, !109, i64 136, !109, i64 144, !109, i64 152, !109, i64 160, !109, i64 168, !109, i64 176, !109, i64 184, !109, i64 192, !109, i64 200, !109, i64 208, !109, i64 216, !109, i64 224, !109, i64 232, !109, i64 240, !109, i64 248, !109, i64 256, !109, i64 264, !109, i64 272, !109, i64 280, !109, i64 288}
!116 = !{!"vectorize", !109, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !109, i64 48, !109, i64 56, !109, i64 64, !109, i64 72}
!117 = !{!"long", !98, i64 0}
!118 = !{!"addr_space", !109, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !109, i64 48}
!119 = !{!"calls", !109, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !109, i64 48, !109, i64 56, !109, i64 64, !109, i64 72, !109, i64 80, !109, i64 88, !109, i64 96, !109, i64 104, !109, i64 112, !109, i64 120, !109, i64 128, !109, i64 136, !109, i64 144, !109, i64 152, !109, i64 160, !109, i64 168, !109, i64 176, !109, i64 184}
!120 = !{!"c", !109, i64 0}
!121 = !{!"cxx", !109, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !109, i64 48, !109, i64 56, !109, i64 64, !109, i64 72, !109, i64 80, !109, i64 88, !109, i64 96}
!122 = !{!"emutls", !109, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !109, i64 48, !109, i64 56, !98, i64 64, !98, i64 65}
!123 = !{!"target_option_hooks", !109, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40}
!124 = !{!98, !98, i64 0}
!125 = !{!"branch_weights", i32 0, i32 -2147483648}
!126 = !{!"branch_weights", i32 1073741822, i32 1073741826}
!127 = !{!"branch_weights", i32 1, i32 5}
!128 = !{!112, !98, i64 2033}
!129 = !{!"c-cppbuiltin.c:define__GNUC__"}
!130 = !{!"function_entry_count", i64 43}
!131 = !{!"c-cppbuiltin.c:builtin_define_with_int_value"}
!132 = !{!"function_entry_count", i64 35}
!133 = !{!"c-cppbuiltin.c:builtin_define_type_max"}
!134 = !{!"function_entry_count", i64 38}
!135 = !{!"c-cppbuiltin.c:builtin_define_type_minmax"}
!136 = !{!"branch_weights", i32 1, i32 8, i32 6, i32 18, i32 10, i32 1}
!137 = !{!"branch_weights", i32 36, i32 4}
!138 = !{!"branch_weights", i32 3, i32 2}
!139 = !{!"c-cppbuiltin.c:builtin_define_type_precision"}
!140 = !{!"c-cppbuiltin.c:builtin_define_stdint_macros"}
!141 = !{!"function_entry_count", i64 3}
!142 = !{!"c-cppbuiltin.c:builtin_define_float_constants"}
!143 = !{!"branch_weights", i32 1, i32 4}
!144 = !{!145, !97, i64 16}
!145 = !{!"real_format", !109, i64 0, !109, i64 8, !97, i64 16, !97, i64 20, !97, i64 24, !97, i64 28, !97, i64 32, !97, i64 36, !97, i64 40, !98, i64 44, !98, i64 45, !98, i64 46, !98, i64 47, !98, i64 48, !98, i64 49, !98, i64 50, !98, i64 51}
!146 = !{!"branch_weights", i32 2, i32 3}
!147 = !{!145, !97, i64 20}
!148 = !{!145, !97, i64 28}
!149 = !{!145, !97, i64 32}
!150 = !{!145, !97, i64 24}
!151 = !{!145, !98, i64 48}
!152 = !{!"branch_weights", i32 4, i32 1}
!153 = !{!145, !98, i64 47}
!154 = !{!145, !98, i64 46}
!155 = !{!"c-cppbuiltin.c:builtin_define_decimal_float_constants"}
!156 = !{!"branch_weights", i32 1, i32 127}
!157 = !{!"branch_weights", i32 4, i32 55}
!158 = !{!"branch_weights", i32 127, i32 1729}
!159 = distinct !{!159, !160}
!160 = !{!"llvm.loop.mustprogress"}
!161 = !{!"branch_weights", i32 127, i32 1}
!162 = !{!"branch_weights", i32 4, i32 52}
!163 = !{!"branch_weights", i32 1633, i32 127}
!164 = distinct !{!164, !160}
!165 = !{!"c-cppbuiltin.c:builtin_define_fixed_point_constants"}
!166 = distinct !{!166, !160}
!167 = !{!"function_entry_count", i64 62}
!168 = !{!"branch_weights", i32 62, i32 2}
!169 = !{!"function_entry_count", i64 11}
!170 = !{!"c-cppbuiltin.c:builtin_define_type_sizeof"}
!171 = !{!172, !172, i64 0}
!172 = !{!"short", !98, i64 0}
!173 = !{!"branch_weights", i32 631612839, i32 1515870809}
!174 = !{!"function_entry_count", i64 10}
!175 = !{!"c-cppbuiltin.c:builtin_define_constants"}
!176 = !{!"branch_weights", i32 6, i32 6}
!177 = !{!"function_entry_count", i64 48}
!178 = !{!"c-cppbuiltin.c:type_suffix"}
!179 = !{!"branch_weights", i32 638, i32 1512}
!180 = !{!"branch_weights", i32 139, i32 1156}
!181 = !{!"branch_weights", i32 29993990, i32 276250}
!182 = !{!"branch_weights", i32 17, i32 33}
!183 = !{!"function_entry_count", i64 12}
!184 = !{!"c-cppbuiltin.c:builtin_define_with_hex_fp_value"}
!185 = !{!"branch_weights", i32 1, i32 13}
