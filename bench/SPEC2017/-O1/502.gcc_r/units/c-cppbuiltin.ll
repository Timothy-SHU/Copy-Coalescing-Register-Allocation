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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_optimization_option = type { %struct.tree_common, %struct.cl_optimization }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.cl_optimization = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.real_value = type { i32, [3 x i64] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
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

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !80 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !81
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !80 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !81
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !80 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !91

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !85
  %11 = load i8, ptr %3, align 1, !tbaa !92
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !80 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !91

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !85
  %11 = load i8, ptr %3, align 1, !tbaa !92
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !80 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !81
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !91

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #16
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !85
  %11 = load i8, ptr %3, align 1, !tbaa !92
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !80 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !81
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !80 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !91

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !93
  store i8 %12, ptr %4, align 1, !tbaa !92
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !80 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !91

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !93
  store i8 %12, ptr %4, align 1, !tbaa !92
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !80 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !81
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !91

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !93
  store i8 %12, ptr %4, align 1, !tbaa !92
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !80 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #16
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !80 {
  %2 = load i32, ptr %0, align 8, !tbaa !95
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !80 {
  %2 = load i32, ptr %0, align 8, !tbaa !95
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !80 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !96
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !80 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !96
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !80 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !80 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !80 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !80 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #16
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
  br i1 %23, label %7, label %24, !llvm.loop !97

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !80 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @c_cpp_builtins_optimize_pragma(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !80 {
  %4 = getelementptr inbounds %struct.tree_optimization_option, ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %struct.tree_optimization_option, ptr %2, i64 0, i32 1
  %6 = load i32, ptr @flag_undef, align 4, !tbaa !96
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %78

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tree_optimization_option, ptr %1, i64 0, i32 1, i32 7
  %10 = load i8, ptr %9, align 1, !tbaa !100
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_optimization_option, ptr %2, i64 0, i32 1, i32 7
  %14 = load i8, ptr %13, align 1, !tbaa !100
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str) #16
  br label %23

17:                                               ; preds = %12
  br i1 %11, label %23, label %18

18:                                               ; preds = %8, %17
  %19 = getelementptr inbounds %struct.tree_optimization_option, ptr %2, i64 0, i32 1, i32 7
  %20 = load i8, ptr %19, align 1, !tbaa !100
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @cpp_undef(ptr noundef %0, ptr noundef nonnull @.str) #16
  br label %23

23:                                               ; preds = %17, %18, %22, %16
  %24 = getelementptr inbounds %struct.tree_optimization_option, ptr %1, i64 0, i32 1, i32 6
  %25 = load i8, ptr %24, align 4, !tbaa !102
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.tree_optimization_option, ptr %2, i64 0, i32 1, i32 6
  %29 = load i8, ptr %28, align 4, !tbaa !102
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.1) #16
  br label %38

32:                                               ; preds = %27
  br i1 %26, label %38, label %33

33:                                               ; preds = %23, %32
  %34 = getelementptr inbounds %struct.tree_optimization_option, ptr %2, i64 0, i32 1, i32 6
  %35 = load i8, ptr %34, align 4, !tbaa !102
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  tail call void @cpp_undef(ptr noundef %0, ptr noundef nonnull @.str.1) #16
  br label %38

38:                                               ; preds = %32, %33, %37, %31
  %39 = tail call zeroext i8 @fast_math_flags_struct_set_p(ptr noundef nonnull %4) #16
  %40 = tail call zeroext i8 @fast_math_flags_struct_set_p(ptr noundef nonnull %5) #16
  %41 = icmp eq i8 %39, 0
  %42 = icmp ne i8 %40, 0
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.2) #16
  br label %48

45:                                               ; preds = %38
  %46 = select i1 %41, i1 true, i1 %42
  br i1 %46, label %48, label %47

47:                                               ; preds = %45
  tail call void @cpp_undef(ptr noundef %0, ptr noundef nonnull @.str.2) #16
  br label %48

48:                                               ; preds = %45, %47, %44
  %49 = getelementptr inbounds %struct.tree_optimization_option, ptr %1, i64 0, i32 1, i32 105
  %50 = load i8, ptr %49, align 1, !tbaa !103
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tree_optimization_option, ptr %2, i64 0, i32 1, i32 105
  %54 = load i8, ptr %53, align 1, !tbaa !103
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.3) #16
  br label %63

57:                                               ; preds = %52
  br i1 %51, label %63, label %58

58:                                               ; preds = %48, %57
  %59 = getelementptr inbounds %struct.tree_optimization_option, ptr %2, i64 0, i32 1, i32 105
  %60 = load i8, ptr %59, align 1, !tbaa !103
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  tail call void @cpp_undef(ptr noundef %0, ptr noundef nonnull @.str.3) #16
  br label %63

63:                                               ; preds = %57, %58, %62, %56
  %64 = getelementptr inbounds %struct.tree_optimization_option, ptr %1, i64 0, i32 1, i32 32
  %65 = load i8, ptr %64, align 2, !tbaa !104
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.tree_optimization_option, ptr %2, i64 0, i32 1, i32 32
  %69 = load i8, ptr %68, align 2, !tbaa !104
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  br i1 %66, label %72, label %78

72:                                               ; preds = %71
  %73 = getelementptr inbounds %struct.tree_optimization_option, ptr %2, i64 0, i32 1, i32 32
  %74 = load i8, ptr %73, align 2, !tbaa !104
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72, %67
  %77 = phi ptr [ @.str.5, %67 ], [ @.str.6, %72 ]
  tail call void @cpp_undef(ptr noundef %0, ptr noundef nonnull @.str.4) #16
  tail call void @cpp_define(ptr noundef %0, ptr noundef nonnull %77) #16
  br label %78

78:                                               ; preds = %76, %63, %72, %71, %3
  ret void
}

declare void @cpp_define(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cpp_undef(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @fast_math_flags_struct_set_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @c_cpp_builtins(ptr noundef %0) local_unnamed_addr #9 !prof !105 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, ptr @flag_undef, align 4, !tbaa !96
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %393, !prof !106

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %8 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.142, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %12, label %10, !prof !106

10:                                               ; preds = %7
  %11 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.143, ptr noundef nonnull %2, ptr noundef nonnull %3)
  store i32 0, ptr %4, align 4, !tbaa !96
  br label %12

12:                                               ; preds = %10, %7
  %13 = load ptr, ptr @parse_in, align 8, !tbaa !81
  %14 = load i32, ptr %2, align 4, !tbaa !96
  call void (ptr, ptr, ...) @cpp_define_formatted(ptr noundef %13, ptr noundef nonnull @.str.144, i32 noundef %14) #16
  %15 = load ptr, ptr @parse_in, align 8, !tbaa !81
  %16 = load i32, ptr %3, align 4, !tbaa !96
  call void (ptr, ptr, ...) @cpp_define_formatted(ptr noundef %15, ptr noundef nonnull @.str.145, i32 noundef %16) #16
  %17 = load ptr, ptr @parse_in, align 8, !tbaa !81
  %18 = load i32, ptr %4, align 4, !tbaa !96
  call void (ptr, ptr, ...) @cpp_define_formatted(ptr noundef %17, ptr noundef nonnull @.str.146, i32 noundef %18) #16
  %19 = load i32, ptr @c_language, align 4, !tbaa !96
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22, !prof !106

22:                                               ; preds = %12
  %23 = load ptr, ptr @parse_in, align 8, !tbaa !81
  %24 = load i32, ptr %2, align 4, !tbaa !96
  call void (ptr, ptr, ...) @cpp_define_formatted(ptr noundef %23, ptr noundef nonnull @.str.147, i32 noundef %24) #16
  br label %25

25:                                               ; preds = %12, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  call void @c_stddef_cpp_builtins() #16
  %26 = load i32, ptr @c_language, align 4, !tbaa !96
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %44, label %29, !prof !106

29:                                               ; preds = %25
  %30 = load i32, ptr @flag_weak, align 4, !tbaa !96
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, ptr @.str.8, ptr @.str.7
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull %32) #16
  %33 = load i32, ptr @warn_deprecated, align 4, !tbaa !96
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.9) #16
  br label %36

36:                                               ; preds = %35, %29
  %37 = load i32, ptr @flag_rtti, align 4, !tbaa !96
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.10) #16
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, ptr @cxx_dialect, align 4, !tbaa !96
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.11) #16
  br label %44

44:                                               ; preds = %40, %43, %25
  %45 = load i32, ptr @flag_exceptions, align 4, !tbaa !96
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47, !prof !106

47:                                               ; preds = %44
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.12) #16
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, ptr @flag_abi_version, align 4, !tbaa !96
  switch i32 %49, label %51 [
    i32 0, label %54
    i32 1, label %50
  ], !prof !107

50:                                               ; preds = %48
  br label %54

51:                                               ; preds = %48
  %52 = add nsw i32 %49, 1000
  %53 = sext i32 %52 to i64
  br label %54

54:                                               ; preds = %48, %50, %51
  %55 = phi i64 [ 102, %50 ], [ %53, %51 ], [ 999999, %48 ]
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.13, i64 noundef %55)
  %56 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 1), align 8, !tbaa !81
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef %56)
  %57 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 3), align 8, !tbaa !81
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef %57)
  %58 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !81
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef %58)
  %59 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !81
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef %59)
  %60 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !81
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef %60)
  %61 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 3), align 8, !tbaa !81
  call fastcc void @builtin_define_type_minmax(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef %61)
  %62 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 4), align 16, !tbaa !81
  call fastcc void @builtin_define_type_minmax(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef %62)
  %63 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 43), align 8, !tbaa !81
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef %63)
  %64 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !81
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef %64)
  %65 = load ptr, ptr @integer_types, align 16, !tbaa !81
  %66 = getelementptr inbounds %struct.tree_type, ptr %65, i64 0, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = and i32 %67, 1023
  %69 = zext nneg i32 %68 to i64
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.25, i64 noundef %69)
  %70 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 7), align 8, !tbaa !81
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.148, ptr noundef %70)
  %71 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 7), align 8, !tbaa !81
  call fastcc void @builtin_define_constants(ptr noundef nonnull @.str.149, ptr noundef %71)
  %72 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 8), align 16, !tbaa !81
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.150, ptr noundef %72)
  %73 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 8), align 16, !tbaa !81
  call fastcc void @builtin_define_constants(ptr noundef nonnull @.str.151, ptr noundef %73)
  %74 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 11), align 8, !tbaa !81
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76, !prof !108

76:                                               ; preds = %54
  call fastcc void @builtin_define_type_minmax(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.153, ptr noundef nonnull %74)
  br label %77

77:                                               ; preds = %76, %54
  %78 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 12), align 16, !tbaa !81
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80, !prof !108

80:                                               ; preds = %77
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.154, ptr noundef nonnull %78)
  br label %81

81:                                               ; preds = %80, %77
  %82 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 13), align 8, !tbaa !81
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84, !prof !108

84:                                               ; preds = %81
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.155, ptr noundef nonnull %82)
  br label %85

85:                                               ; preds = %84, %81
  %86 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 14), align 16, !tbaa !81
  %87 = icmp eq ptr %86, null
  br i1 %87, label %89, label %88, !prof !108

88:                                               ; preds = %85
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.156, ptr noundef nonnull %86)
  br label %89

89:                                               ; preds = %88, %85
  %90 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 15), align 8, !tbaa !81
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92, !prof !108

92:                                               ; preds = %89
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.157, ptr noundef nonnull %90)
  br label %93

93:                                               ; preds = %92, %89
  %94 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 16), align 16, !tbaa !81
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96, !prof !108

96:                                               ; preds = %93
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.158, ptr noundef nonnull %94)
  br label %97

97:                                               ; preds = %96, %93
  %98 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 17), align 8, !tbaa !81
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100, !prof !108

100:                                              ; preds = %97
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.159, ptr noundef nonnull %98)
  br label %101

101:                                              ; preds = %100, %97
  %102 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 18), align 16, !tbaa !81
  %103 = icmp eq ptr %102, null
  br i1 %103, label %105, label %104, !prof !108

104:                                              ; preds = %101
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.160, ptr noundef nonnull %102)
  br label %105

105:                                              ; preds = %104, %101
  %106 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 19), align 8, !tbaa !81
  %107 = icmp eq ptr %106, null
  br i1 %107, label %109, label %108, !prof !108

108:                                              ; preds = %105
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.161, ptr noundef nonnull %106)
  br label %109

109:                                              ; preds = %108, %105
  %110 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 20), align 16, !tbaa !81
  %111 = icmp eq ptr %110, null
  br i1 %111, label %114, label %112, !prof !108

112:                                              ; preds = %109
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.162, ptr noundef nonnull %110)
  %113 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 20), align 16, !tbaa !81
  call fastcc void @builtin_define_constants(ptr noundef nonnull @.str.163, ptr noundef %113)
  br label %114

114:                                              ; preds = %112, %109
  %115 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 21), align 8, !tbaa !81
  %116 = icmp eq ptr %115, null
  br i1 %116, label %119, label %117, !prof !108

117:                                              ; preds = %114
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.164, ptr noundef nonnull %115)
  %118 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 21), align 8, !tbaa !81
  call fastcc void @builtin_define_constants(ptr noundef nonnull @.str.165, ptr noundef %118)
  br label %119

119:                                              ; preds = %117, %114
  %120 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 22), align 16, !tbaa !81
  %121 = icmp eq ptr %120, null
  br i1 %121, label %124, label %122, !prof !108

122:                                              ; preds = %119
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.166, ptr noundef nonnull %120)
  %123 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 22), align 16, !tbaa !81
  call fastcc void @builtin_define_constants(ptr noundef nonnull @.str.167, ptr noundef %123)
  br label %124

124:                                              ; preds = %122, %119
  %125 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 23), align 8, !tbaa !81
  %126 = icmp eq ptr %125, null
  br i1 %126, label %129, label %127, !prof !108

127:                                              ; preds = %124
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.168, ptr noundef nonnull %125)
  %128 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 23), align 8, !tbaa !81
  call fastcc void @builtin_define_constants(ptr noundef nonnull @.str.169, ptr noundef %128)
  br label %129

129:                                              ; preds = %127, %124
  %130 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 24), align 16, !tbaa !81
  %131 = icmp eq ptr %130, null
  br i1 %131, label %134, label %132, !prof !108

132:                                              ; preds = %129
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.170, ptr noundef nonnull %130)
  %133 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 24), align 16, !tbaa !81
  call fastcc void @builtin_define_constants(ptr noundef nonnull @.str.171, ptr noundef %133)
  br label %134

134:                                              ; preds = %132, %129
  %135 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 25), align 8, !tbaa !81
  %136 = icmp eq ptr %135, null
  br i1 %136, label %139, label %137, !prof !108

137:                                              ; preds = %134
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.172, ptr noundef nonnull %135)
  %138 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 25), align 8, !tbaa !81
  call fastcc void @builtin_define_constants(ptr noundef nonnull @.str.173, ptr noundef %138)
  br label %139

139:                                              ; preds = %137, %134
  %140 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 26), align 16, !tbaa !81
  %141 = icmp eq ptr %140, null
  br i1 %141, label %144, label %142, !prof !108

142:                                              ; preds = %139
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.174, ptr noundef nonnull %140)
  %143 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 26), align 16, !tbaa !81
  call fastcc void @builtin_define_constants(ptr noundef nonnull @.str.175, ptr noundef %143)
  br label %144

144:                                              ; preds = %142, %139
  %145 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 27), align 8, !tbaa !81
  %146 = icmp eq ptr %145, null
  br i1 %146, label %149, label %147, !prof !108

147:                                              ; preds = %144
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.176, ptr noundef nonnull %145)
  %148 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 27), align 8, !tbaa !81
  call fastcc void @builtin_define_constants(ptr noundef nonnull @.str.177, ptr noundef %148)
  br label %149

149:                                              ; preds = %147, %144
  %150 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 28), align 16, !tbaa !81
  %151 = icmp eq ptr %150, null
  br i1 %151, label %153, label %152, !prof !108

152:                                              ; preds = %149
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.178, ptr noundef nonnull %150)
  br label %153

153:                                              ; preds = %152, %149
  %154 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 29), align 8, !tbaa !81
  %155 = icmp eq ptr %154, null
  br i1 %155, label %157, label %156, !prof !108

156:                                              ; preds = %153
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.179, ptr noundef nonnull %154)
  br label %157

157:                                              ; preds = %156, %153
  %158 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 30), align 16, !tbaa !81
  %159 = icmp eq ptr %158, null
  br i1 %159, label %161, label %160, !prof !108

160:                                              ; preds = %157
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.180, ptr noundef nonnull %158)
  br label %161

161:                                              ; preds = %160, %157
  %162 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 31), align 8, !tbaa !81
  %163 = icmp eq ptr %162, null
  br i1 %163, label %165, label %164, !prof !108

164:                                              ; preds = %161
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.181, ptr noundef nonnull %162)
  br label %165

165:                                              ; preds = %164, %161
  %166 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 32), align 16, !tbaa !81
  %167 = icmp eq ptr %166, null
  br i1 %167, label %169, label %168, !prof !108

168:                                              ; preds = %165
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef nonnull %166)
  br label %169

169:                                              ; preds = %168, %165
  %170 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 33), align 8, !tbaa !81
  %171 = icmp eq ptr %170, null
  br i1 %171, label %173, label %172, !prof !108

172:                                              ; preds = %169
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.183, ptr noundef nonnull %170)
  br label %173

173:                                              ; preds = %172, %169
  %174 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 34), align 16, !tbaa !81
  %175 = icmp eq ptr %174, null
  br i1 %175, label %177, label %176, !prof !108

176:                                              ; preds = %173
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.184, ptr noundef nonnull %174)
  br label %177

177:                                              ; preds = %176, %173
  %178 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 35), align 8, !tbaa !81
  %179 = icmp eq ptr %178, null
  br i1 %179, label %181, label %180, !prof !108

180:                                              ; preds = %177
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.185, ptr noundef nonnull %178)
  br label %181

181:                                              ; preds = %180, %177
  %182 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 36), align 16, !tbaa !81
  %183 = icmp eq ptr %182, null
  br i1 %183, label %185, label %184, !prof !108

184:                                              ; preds = %181
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.186, ptr noundef nonnull %182)
  br label %185

185:                                              ; preds = %184, %181
  %186 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 37), align 8, !tbaa !81
  %187 = icmp eq ptr %186, null
  br i1 %187, label %189, label %188, !prof !108

188:                                              ; preds = %185
  call fastcc void @builtin_define_type_minmax(ptr noundef null, ptr noundef nonnull @.str.187, ptr noundef nonnull %186)
  br label %189

189:                                              ; preds = %185, %188
  %190 = load i32, ptr @ix86_fpmath, align 4, !tbaa !96
  %191 = and i32 %190, 3
  %192 = icmp eq i32 %191, 3
  %193 = and i32 %190, 2
  %194 = xor i32 %193, 2
  %195 = select i1 %192, i32 -1, i32 %194, !prof !108
  %196 = sext i32 %195 to i64
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.26, i64 noundef %196)
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.27, i64 noundef 2)
  %197 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !81
  call fastcc void @builtin_define_float_constants(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef %197)
  %198 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !81
  call fastcc void @builtin_define_float_constants(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef %198)
  %199 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !81
  call fastcc void @builtin_define_float_constants(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, ptr noundef %199)
  %200 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 49), align 8, !tbaa !81
  call fastcc void @builtin_define_decimal_float_constants(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef %200)
  %201 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 50), align 16, !tbaa !81
  call fastcc void @builtin_define_decimal_float_constants(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef %201)
  %202 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 51), align 8, !tbaa !81
  call fastcc void @builtin_define_decimal_float_constants(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef %202)
  %203 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 20), align 8, !tbaa !109
  %204 = call zeroext i8 %203() #16, !prof !121
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %241, label %206, !prof !106

206:                                              ; preds = %189
  %207 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 65), align 8, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, ptr noundef %207)
  %208 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 69), align 8, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef %208)
  %209 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 66), align 16, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef %209)
  %210 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 70), align 16, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, ptr noundef %210)
  %211 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 67), align 8, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, ptr noundef %211)
  %212 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 71), align 8, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef %212)
  %213 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 68), align 16, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr noundef %213)
  %214 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 72), align 16, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, ptr noundef %214)
  %215 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 81), align 8, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, ptr noundef %215)
  %216 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 85), align 8, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, ptr noundef %216)
  %217 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 82), align 16, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62, ptr noundef %217)
  %218 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 86), align 16, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.64, ptr noundef %218)
  %219 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 83), align 8, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, ptr noundef %219)
  %220 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 87), align 8, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, ptr noundef %220)
  %221 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 84), align 16, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, ptr noundef %221)
  %222 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 88), align 16, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, ptr noundef %222)
  %223 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 89), align 8, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74, ptr noundef %223)
  %224 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 90), align 16, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.74, ptr noundef %224)
  %225 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 91), align 8, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.74, ptr noundef %225)
  %226 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 92), align 16, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.74, ptr noundef %226)
  %227 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 93), align 8, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.74, ptr noundef %227)
  %228 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 94), align 16, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.74, ptr noundef %228)
  %229 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 95), align 8, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.74, ptr noundef %229)
  %230 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 96), align 16, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.74, ptr noundef %230)
  %231 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 97), align 8, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.74, ptr noundef %231)
  %232 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 98), align 16, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.74, ptr noundef %232)
  %233 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 109), align 8, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.74, ptr noundef %233)
  %234 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 110), align 16, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.74, ptr noundef %234)
  %235 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 111), align 8, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.74, ptr noundef %235)
  %236 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 112), align 16, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.74, ptr noundef %236)
  %237 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 113), align 8, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.74, ptr noundef %237)
  %238 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 114), align 16, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.74, ptr noundef %238)
  %239 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 115), align 8, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.74, ptr noundef %239)
  %240 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 116), align 16, !tbaa !81
  call fastcc void @builtin_define_fixed_point_constants(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.74, ptr noundef %240)
  br label %241

241:                                              ; preds = %206, %189
  call void @builtin_define_with_value(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.74, i32 noundef 0)
  %242 = load ptr, ptr @user_label_prefix, align 8, !tbaa !81
  call void @builtin_define_with_value(ptr noundef nonnull @.str.93, ptr noundef %242, i32 noundef 0)
  call void @builtin_define_with_value(ptr noundef nonnull @.str.94, ptr noundef nonnull @version_string, i32 noundef 1)
  %243 = load i32, ptr @flag_gnu89_inline, align 4, !tbaa !96
  %244 = icmp eq i32 %243, 0
  %245 = select i1 %244, ptr @.str.96, ptr @.str.95, !prof !108
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull %245) #16
  %246 = load i32, ptr @optimize_size, align 4, !tbaa !96
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %249, label %248, !prof !106

248:                                              ; preds = %241
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str) #16
  br label %249

249:                                              ; preds = %248, %241
  %250 = load i32, ptr @optimize, align 4, !tbaa !96
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %253, label %252, !prof !108

252:                                              ; preds = %249
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.1) #16
  br label %253

253:                                              ; preds = %252, %249
  %254 = call zeroext i8 @fast_math_flags_set_p() #16
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %257, label %256, !prof !106

256:                                              ; preds = %253
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.2) #16
  br label %257

257:                                              ; preds = %256, %253
  %258 = load i32, ptr @flag_no_inline, align 4, !tbaa !96
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %261, label %260, !prof !106

260:                                              ; preds = %257
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.99) #16
  br label %261

261:                                              ; preds = %260, %257
  %262 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !96
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %265, label %264, !prof !106

264:                                              ; preds = %261
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.3) #16
  br label %265

265:                                              ; preds = %264, %261
  %266 = load i32, ptr @flag_finite_math_only, align 4, !tbaa !96
  %267 = icmp eq i32 %266, 0
  %268 = select i1 %267, ptr @.str.6, ptr @.str.5, !prof !106
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull %268) #16
  %269 = load i32, ptr @flag_pic, align 4, !tbaa !96
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %275, label %271, !prof !106

271:                                              ; preds = %265
  %272 = sext i32 %269 to i64
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.100, i64 noundef %272)
  %273 = load i32, ptr @flag_pic, align 4, !tbaa !96
  %274 = sext i32 %273 to i64
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.101, i64 noundef %274)
  br label %275

275:                                              ; preds = %271, %265
  %276 = load i32, ptr @flag_pie, align 4, !tbaa !96
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %282, label %278, !prof !106

278:                                              ; preds = %275
  %279 = sext i32 %276 to i64
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.102, i64 noundef %279)
  %280 = load i32, ptr @flag_pie, align 4, !tbaa !96
  %281 = sext i32 %280 to i64
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.103, i64 noundef %281)
  br label %282

282:                                              ; preds = %278, %275
  %283 = load i32, ptr @flag_iso, align 4, !tbaa !96
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %286, label %285, !prof !106

285:                                              ; preds = %282
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.104) #16
  br label %286

286:                                              ; preds = %285, %282
  %287 = load i32, ptr @flag_signed_char, align 4, !tbaa !96
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %290, !prof !108

289:                                              ; preds = %286
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.105) #16
  br label %290

290:                                              ; preds = %289, %286
  %291 = load i32, ptr @c_language, align 4, !tbaa !96
  %292 = and i32 %291, 2
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %300, label %294, !prof !106

294:                                              ; preds = %290
  %295 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 2), align 16, !tbaa !81
  %296 = load i64, ptr %295, align 8
  %297 = and i64 %296, 2097152
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %300, label %299

299:                                              ; preds = %294
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.106) #16
  br label %300

300:                                              ; preds = %299, %294, %290
  %301 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @ix86_arch_features, i64 0, i64 1), align 1, !tbaa !92
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %304, label %303, !prof !106

303:                                              ; preds = %300
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.107) #16
  br label %304

304:                                              ; preds = %303, %300
  %305 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @ix86_arch_features, i64 0, i64 1), align 1, !tbaa !92
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %308, label %307, !prof !106

307:                                              ; preds = %304
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.108) #16
  br label %308

308:                                              ; preds = %307, %304
  %309 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @ix86_arch_features, i64 0, i64 1), align 1, !tbaa !92
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %312, label %311, !prof !106

311:                                              ; preds = %308
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.109) #16
  br label %312

312:                                              ; preds = %311, %308
  %313 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @ix86_arch_features, i64 0, i64 1), align 1, !tbaa !92
  %314 = icmp ne i8 %313, 0
  %315 = load i8, ptr getelementptr inbounds ([5 x i8], ptr @ix86_arch_features, i64 0, i64 2), align 1
  %316 = icmp ne i8 %315, 0
  %317 = select i1 %314, i1 %316, i1 false, !prof !108
  br i1 %317, label %318, label %319, !prof !108

318:                                              ; preds = %312
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.110) #16
  br label %319

319:                                              ; preds = %318, %312
  %320 = call i32 @dwarf2out_do_cfi_asm() #16
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %323, label %322, !prof !106

322:                                              ; preds = %319
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.111) #16
  br label %323

323:                                              ; preds = %322, %319
  %324 = load i32, ptr @c_language, align 4, !tbaa !96
  %325 = and i32 %324, 1
  %326 = icmp ne i32 %325, 0
  %327 = load i32, ptr @flag_next_runtime, align 4
  %328 = icmp ne i32 %327, 0
  %329 = select i1 %326, i1 %328, i1 false, !prof !108
  br i1 %329, label %330, label %331, !prof !108

330:                                              ; preds = %323
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.112) #16
  br label %331

331:                                              ; preds = %330, %323
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.113) #16
  %332 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 118), align 1, !tbaa !122
  %333 = icmp eq i8 %332, 0
  br i1 %333, label %335, label %334, !prof !106

334:                                              ; preds = %331
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.114) #16
  br label %335

335:                                              ; preds = %334, %331
  %336 = load i32, ptr @flag_stack_protect, align 4, !tbaa !96
  switch i32 %336, label %340 [
    i32 2, label %338
    i32 1, label %337
  ], !prof !107

337:                                              ; preds = %335
  br label %338

338:                                              ; preds = %335, %337
  %339 = phi ptr [ @.str.116, %337 ], [ @.str.115, %335 ]
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull %339) #16
  br label %340

340:                                              ; preds = %338, %335
  %341 = load i32, ptr @flag_openmp, align 4, !tbaa !96
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %344, label %343, !prof !106

343:                                              ; preds = %340
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.117) #16
  br label %344

344:                                              ; preds = %343, %340
  %345 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !81
  %346 = getelementptr inbounds %struct.tree_type, ptr %345, i64 0, i32 3
  %347 = load ptr, ptr %346, align 8, !tbaa !92
  %348 = call i64 @tree_low_cst(ptr noundef %347, i32 noundef 1) #16
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.118, i64 noundef %348)
  %349 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !81
  %350 = getelementptr inbounds %struct.tree_type, ptr %349, i64 0, i32 3
  %351 = load ptr, ptr %350, align 8, !tbaa !92
  %352 = call i64 @tree_low_cst(ptr noundef %351, i32 noundef 1) #16
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.119, i64 noundef %352)
  %353 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !81
  %354 = getelementptr inbounds %struct.tree_type, ptr %353, i64 0, i32 3
  %355 = load ptr, ptr %354, align 8, !tbaa !92
  %356 = call i64 @tree_low_cst(ptr noundef %355, i32 noundef 1) #16
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.120, i64 noundef %356)
  %357 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 3), align 8, !tbaa !81
  %358 = getelementptr inbounds %struct.tree_type, ptr %357, i64 0, i32 3
  %359 = load ptr, ptr %358, align 8, !tbaa !92
  %360 = call i64 @tree_low_cst(ptr noundef %359, i32 noundef 1) #16
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.121, i64 noundef %360)
  %361 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !81
  %362 = getelementptr inbounds %struct.tree_type, ptr %361, i64 0, i32 3
  %363 = load ptr, ptr %362, align 8, !tbaa !92
  %364 = call i64 @tree_low_cst(ptr noundef %363, i32 noundef 1) #16
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.122, i64 noundef %364)
  %365 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !81
  %366 = getelementptr inbounds %struct.tree_type, ptr %365, i64 0, i32 3
  %367 = load ptr, ptr %366, align 8, !tbaa !92
  %368 = call i64 @tree_low_cst(ptr noundef %367, i32 noundef 1) #16
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.123, i64 noundef %368)
  %369 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !81
  %370 = getelementptr inbounds %struct.tree_type, ptr %369, i64 0, i32 3
  %371 = load ptr, ptr %370, align 8, !tbaa !92
  %372 = call i64 @tree_low_cst(ptr noundef %371, i32 noundef 1) #16
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.124, i64 noundef %372)
  %373 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !81
  %374 = getelementptr inbounds %struct.tree_type, ptr %373, i64 0, i32 3
  %375 = load ptr, ptr %374, align 8, !tbaa !92
  %376 = call i64 @tree_low_cst(ptr noundef %375, i32 noundef 1) #16
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.125, i64 noundef %376)
  %377 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 2), align 16, !tbaa !81
  %378 = getelementptr inbounds %struct.tree_type, ptr %377, i64 0, i32 3
  %379 = load ptr, ptr %378, align 8, !tbaa !92
  %380 = call i64 @tree_low_cst(ptr noundef %379, i32 noundef 1) #16
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.126, i64 noundef %380)
  %381 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 4), align 16, !tbaa !81
  %382 = getelementptr inbounds %struct.tree_type, ptr %381, i64 0, i32 3
  %383 = load ptr, ptr %382, align 8, !tbaa !92
  %384 = call i64 @tree_low_cst(ptr noundef %383, i32 noundef 1) #16
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.127, i64 noundef %384)
  %385 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 6), align 16, !tbaa !81
  %386 = getelementptr inbounds %struct.tree_type, ptr %385, i64 0, i32 3
  %387 = load ptr, ptr %386, align 8, !tbaa !92
  %388 = call i64 @tree_low_cst(ptr noundef %387, i32 noundef 1) #16
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.128, i64 noundef %388)
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.129, i64 noundef 4)
  call void @ix86_target_macros() #16
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.130) #16
  call void @builtin_define_std(ptr noundef nonnull @.str.131)
  call void @builtin_define_std(ptr noundef nonnull @.str.132)
  call void @cpp_assert(ptr noundef %0, ptr noundef nonnull @.str.133) #16
  call void @cpp_assert(ptr noundef %0, ptr noundef nonnull @.str.134) #16
  call void @cpp_assert(ptr noundef %0, ptr noundef nonnull @.str.135) #16
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.136) #16
  call void @cpp_define(ptr noundef %0, ptr noundef nonnull @.str.137) #16
  %389 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !96
  %390 = and i32 %389, 32
  %391 = icmp eq i32 %390, 0
  %392 = select i1 %391, i64 16, i64 32, !prof !106
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.138, i64 noundef %392)
  br label %393

393:                                              ; preds = %1, %344
  ret void
}

declare void @c_stddef_cpp_builtins() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @builtin_define_with_int_value(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #10 !prof !123 !PGOFuncName !124 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %4 = add i64 %3, 20
  %5 = alloca i8, i64 %4, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr align 1 %0, i64 %3, i1 false), !prof !125
  %6 = getelementptr inbounds i8, ptr %5, i64 %3
  store i8 61, ptr %6, align 1, !tbaa !92
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.229, i64 noundef %1)
  %9 = load ptr, ptr @parse_in, align 8, !tbaa !81
  call void @cpp_define(ptr noundef %9, ptr noundef nonnull %5) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @builtin_define_type_minmax(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 !prof !126 !PGOFuncName !127 {
  %4 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1023
  switch i32 %6, label %11 [
    i32 8, label %12
    i32 16, label %7
    i32 32, label %8
    i32 64, label %9
    i32 128, label %10
  ], !prof !128

7:                                                ; preds = %3
  br label %12

8:                                                ; preds = %3
  br label %12

9:                                                ; preds = %3
  br label %12

10:                                               ; preds = %3
  br label %12

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.194, i32 noundef 1066, ptr noundef nonnull @.str.195) #16
  br label %12

12:                                               ; preds = %3, %11, %10, %9, %8, %7
  %13 = phi i64 [ undef, %11 ], [ 8, %10 ], [ 6, %9 ], [ 4, %8 ], [ 2, %7 ], [ 0, %3 ]
  %14 = load i64, ptr %2, align 8
  %15 = lshr i64 %14, 21
  %16 = and i64 %15, 1
  %17 = add i64 %16, %13
  %18 = getelementptr inbounds [10 x ptr], ptr @builtin_define_type_minmax.values, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !81
  %20 = tail call fastcc ptr @type_suffix(ptr noundef nonnull %2)
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  %22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %19)
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20)
  %24 = add i64 %21, 2
  %25 = add i64 %24, %22
  %26 = add i64 %25, %23
  %27 = alloca i8, i64 %26, align 16
  %28 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(1) @.str.240, ptr noundef %1, ptr noundef %19, ptr noundef %20)
  %29 = load ptr, ptr @parse_in, align 8, !tbaa !81
  call void @cpp_define(ptr noundef %29, ptr noundef nonnull %27) #16
  %30 = icmp eq ptr %0, null
  br i1 %30, label %51, label %31, !prof !129

31:                                               ; preds = %12
  %32 = load i64, ptr %2, align 8
  %33 = and i64 %32, 2097152
  %34 = icmp eq i64 %33, 0
  %35 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  br i1 %34, label %42, label %36, !prof !130

36:                                               ; preds = %31
  %37 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20)
  %38 = add i64 %35, 3
  %39 = add i64 %38, %37
  %40 = alloca i8, i64 %39, align 16
  %41 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %40, ptr noundef nonnull dereferenceable(1) @.str.241, ptr noundef nonnull %0, ptr noundef %20)
  br label %48

42:                                               ; preds = %31
  %43 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  %44 = add i64 %35, 9
  %45 = add i64 %44, %43
  %46 = alloca i8, i64 %45, align 16
  %47 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %46, ptr noundef nonnull dereferenceable(1) @.str.242, ptr noundef nonnull %0, ptr noundef %1)
  br label %48

48:                                               ; preds = %42, %36
  %49 = phi ptr [ %40, %36 ], [ %46, %42 ]
  %50 = load ptr, ptr @parse_in, align 8, !tbaa !81
  call void @cpp_define(ptr noundef %50, ptr noundef nonnull %49) #16
  br label %51

51:                                               ; preds = %48, %12
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @builtin_define_float_constants(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #9 !prof !131 !PGOFuncName !132 {
  %5 = alloca [64 x i8], align 16
  %6 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #16
  %7 = load i64, ptr %3, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 14
  br i1 %9, label %10, label %12, !prof !133

10:                                               ; preds = %4
  %11 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #16
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
  %21 = load i8, ptr %20, align 1, !tbaa !92
  %22 = icmp eq i8 %21, 9
  %23 = load i64, ptr %3, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 14
  br i1 %22, label %26, label %34, !prof !133

26:                                               ; preds = %17
  br i1 %25, label %27, label %29

27:                                               ; preds = %26
  %28 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %42

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  br label %42

34:                                               ; preds = %17
  br i1 %25, label %35, label %37, !prof !133

35:                                               ; preds = %34
  %36 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #16
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
  %47 = load ptr, ptr %46, align 8, !tbaa !81
  %48 = getelementptr inbounds %struct.real_format, ptr %47, i64 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !134
  %50 = icmp eq i32 %49, 10
  br i1 %50, label %51, label %52, !prof !133

51:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str.194, i32 noundef 111, ptr noundef nonnull @.str.195) #16
  br label %52

52:                                               ; preds = %42, %51
  %53 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !81
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 14
  br i1 %56, label %57, label %59, !prof !133

57:                                               ; preds = %52
  %58 = tail call i32 @vector_type_mode(ptr noundef nonnull %53) #16
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
  %68 = load i8, ptr %67, align 1, !tbaa !92
  %69 = icmp eq i8 %68, 9
  %70 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !81
  %71 = load i64, ptr %70, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 14
  br i1 %69, label %74, label %82, !prof !133

74:                                               ; preds = %64
  br i1 %73, label %75, label %77

75:                                               ; preds = %74
  %76 = tail call i32 @vector_type_mode(ptr noundef nonnull %70) #16
  br label %90

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.tree_type, ptr %70, i64 0, i32 6
  %79 = load i32, ptr %78, align 4
  %80 = lshr i32 %79, 16
  %81 = and i32 %80, 255
  br label %90

82:                                               ; preds = %64
  br i1 %73, label %83, label %85, !prof !133

83:                                               ; preds = %82
  %84 = tail call i32 @vector_type_mode(ptr noundef nonnull %70) #16
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
  %95 = load ptr, ptr %94, align 8, !tbaa !81
  %96 = getelementptr inbounds %struct.real_format, ptr %95, i64 0, i32 2
  %97 = load i32, ptr %96, align 8, !tbaa !134
  %98 = icmp eq i32 %97, 10
  br i1 %98, label %99, label %100, !prof !133

99:                                               ; preds = %90
  tail call void @fancy_abort(ptr noundef nonnull @.str.194, i32 noundef 113, ptr noundef nonnull @.str.195) #16
  br label %100

100:                                              ; preds = %90, %99
  %101 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !81
  %102 = icmp eq ptr %101, %3
  br i1 %102, label %103, label %106, !prof !136

103:                                              ; preds = %100
  %104 = load i32, ptr %48, align 8, !tbaa !134
  %105 = sext i32 %104 to i64
  tail call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.196, i64 noundef %105)
  br label %106

106:                                              ; preds = %103, %100
  %107 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.197, ptr noundef %0)
  %108 = getelementptr inbounds %struct.real_format, ptr %47, i64 0, i32 3
  %109 = load i32, ptr %108, align 4, !tbaa !137
  %110 = sext i32 %109 to i64
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull %5, i64 noundef %110)
  %111 = load i32, ptr %108, align 4, !tbaa !137
  %112 = add nsw i32 %111, -1
  %113 = sitofp i32 %112 to double
  %114 = fmul double %113, 0x3FD34413509F79FF
  %115 = fptosi double %114 to i32
  %116 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.198, ptr noundef %0)
  %117 = sext i32 %115 to i64
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull %5, i64 noundef %117)
  %118 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.199, ptr noundef %0)
  %119 = getelementptr inbounds %struct.real_format, ptr %47, i64 0, i32 5
  %120 = load i32, ptr %119, align 4, !tbaa !138
  %121 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.200, i32 noundef %120)
  call void @builtin_define_with_value(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0)
  %122 = load i32, ptr %119, align 4, !tbaa !138
  %123 = add nsw i32 %122, -1
  %124 = sitofp i32 %123 to double
  %125 = fmul double %124, 0x3FD34413509F79FF
  %126 = fptosi double %125 to i32
  %127 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.201, ptr noundef %0)
  %128 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.200, i32 noundef %126)
  call void @builtin_define_with_value(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0)
  %129 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.202, ptr noundef %0)
  %130 = getelementptr inbounds %struct.real_format, ptr %47, i64 0, i32 6
  %131 = load i32, ptr %130, align 8, !tbaa !139
  %132 = sext i32 %131 to i64
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull %5, i64 noundef %132)
  %133 = load i32, ptr %130, align 8, !tbaa !139
  %134 = sitofp i32 %133 to double
  %135 = fmul double %134, 0x3FD34413509F79FF
  %136 = fptosi double %135 to i32
  %137 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.203, ptr noundef %0)
  %138 = sext i32 %136 to i64
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull %5, i64 noundef %138)
  %139 = load i32, ptr %108, align 4, !tbaa !137
  %140 = getelementptr inbounds %struct.real_format, ptr %95, i64 0, i32 3
  %141 = load i32, ptr %140, align 4, !tbaa !137
  %142 = call i32 @llvm.smax.i32(i32 %139, i32 %141)
  %143 = sitofp i32 %142 to double
  %144 = call double @llvm.fmuladd.f64(double %143, double 0x3FD34413509F79FF, double 1.000000e+00)
  %145 = fptosi double %144 to i32
  %146 = sitofp i32 %145 to double
  %147 = fcmp ogt double %144, %146
  %148 = zext i1 %147 to i32
  %149 = add nsw i32 %148, %145
  %150 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !81
  %151 = icmp eq ptr %150, %3
  br i1 %151, label %152, label %154, !prof !136

152:                                              ; preds = %106
  %153 = sext i32 %149 to i64
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull @.str.204, i64 noundef %153)
  br label %154

154:                                              ; preds = %152, %106
  call void @get_max_float(ptr noundef %47, ptr noundef nonnull %6, i64 noundef 128) #16
  %155 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.205, ptr noundef %0)
  call fastcc void @builtin_define_with_hex_fp_value(ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef %149, ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2)
  %156 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef %0)
  %157 = load i32, ptr %119, align 4, !tbaa !138
  %158 = add nsw i32 %157, -1
  %159 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.207, i32 noundef %158)
  call fastcc void @builtin_define_with_hex_fp_value(ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef %149, ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2)
  %160 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.208, ptr noundef %0)
  %161 = getelementptr inbounds %struct.real_format, ptr %47, i64 0, i32 4
  %162 = load i32, ptr %161, align 8, !tbaa !140
  %163 = load i32, ptr %108, align 4, !tbaa !137
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %167, !prof !133

165:                                              ; preds = %154
  %166 = load i32, ptr %119, align 4, !tbaa !138
  br label %167

167:                                              ; preds = %154, %165
  %168 = phi i32 [ %166, %165 ], [ 1, %154 ]
  %169 = sub nsw i32 %168, %163
  %170 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.207, i32 noundef %169)
  call fastcc void @builtin_define_with_hex_fp_value(ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef %149, ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2)
  %171 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.209, ptr noundef %0)
  %172 = getelementptr inbounds %struct.real_format, ptr %47, i64 0, i32 13
  %173 = load i8, ptr %172, align 8, !tbaa !141
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %180, label %175, !prof !133

175:                                              ; preds = %167
  %176 = load i32, ptr %119, align 4, !tbaa !138
  %177 = load i32, ptr %108, align 4, !tbaa !137
  %178 = sub nsw i32 %176, %177
  %179 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.207, i32 noundef %178)
  call fastcc void @builtin_define_with_hex_fp_value(ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef %149, ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2)
  br label %182

180:                                              ; preds = %167
  %181 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.210, ptr noundef %1)
  call void @builtin_define_with_value(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0)
  br label %182

182:                                              ; preds = %180, %175
  %183 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.211, ptr noundef %0)
  %184 = load i8, ptr %172, align 8, !tbaa !141
  %185 = icmp eq i8 %184, 0
  %186 = select i1 %185, ptr @.str.213, ptr @.str.212, !prof !133
  call void @builtin_define_with_value(ptr noundef nonnull %5, ptr noundef nonnull %186, i32 noundef 0)
  %187 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.214, ptr noundef %0)
  %188 = load i64, ptr %3, align 8
  %189 = and i64 %188, 65535
  %190 = icmp eq i64 %189, 14
  br i1 %190, label %191, label %193, !prof !133

191:                                              ; preds = %182
  %192 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %198

193:                                              ; preds = %182
  %194 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %195 = load i32, ptr %194, align 4
  %196 = lshr i32 %195, 16
  %197 = and i32 %196, 255
  br label %198

198:                                              ; preds = %193, %191
  %199 = phi i32 [ %192, %191 ], [ %197, %193 ]
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !92
  %203 = icmp eq i8 %202, 8
  br i1 %203, label %255, label %204, !prof !142

204:                                              ; preds = %198
  %205 = load i64, ptr %3, align 8
  %206 = and i64 %205, 65535
  %207 = icmp eq i64 %206, 14
  br i1 %207, label %208, label %210

208:                                              ; preds = %204
  %209 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %215

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %212 = load i32, ptr %211, align 4
  %213 = lshr i32 %212, 16
  %214 = and i32 %213, 255
  br label %215

215:                                              ; preds = %210, %208
  %216 = phi i32 [ %209, %208 ], [ %214, %210 ]
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %217
  %219 = load i8, ptr %218, align 1, !tbaa !92
  %220 = icmp eq i8 %219, 9
  br i1 %220, label %255, label %221

221:                                              ; preds = %215
  %222 = load i64, ptr %3, align 8
  %223 = and i64 %222, 65535
  %224 = icmp eq i64 %223, 14
  br i1 %224, label %225, label %227

225:                                              ; preds = %221
  %226 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %232

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %229 = load i32, ptr %228, align 4
  %230 = lshr i32 %229, 16
  %231 = and i32 %230, 255
  br label %232

232:                                              ; preds = %227, %225
  %233 = phi i32 [ %226, %225 ], [ %231, %227 ]
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %234
  %236 = load i8, ptr %235, align 1, !tbaa !92
  %237 = icmp eq i8 %236, 11
  br i1 %237, label %255, label %238

238:                                              ; preds = %232
  %239 = load i64, ptr %3, align 8
  %240 = and i64 %239, 65535
  %241 = icmp eq i64 %240, 14
  br i1 %241, label %242, label %244

242:                                              ; preds = %238
  %243 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %249

244:                                              ; preds = %238
  %245 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %246 = load i32, ptr %245, align 4
  %247 = lshr i32 %246, 16
  %248 = and i32 %247, 255
  br label %249

249:                                              ; preds = %244, %242
  %250 = phi i32 [ %243, %242 ], [ %248, %244 ]
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %251
  %253 = load i8, ptr %252, align 1, !tbaa !92
  %254 = icmp eq i8 %253, 17
  br i1 %254, label %255, label %453

255:                                              ; preds = %249, %232, %215, %198
  %256 = load i64, ptr %3, align 8
  %257 = and i64 %256, 65535
  %258 = icmp eq i64 %257, 14
  br i1 %258, label %259, label %261, !prof !133

259:                                              ; preds = %255
  %260 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %266

261:                                              ; preds = %255
  %262 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %263 = load i32, ptr %262, align 4
  %264 = lshr i32 %263, 16
  %265 = and i32 %264, 255
  br label %266

266:                                              ; preds = %261, %259
  %267 = phi i32 [ %260, %259 ], [ %265, %261 ]
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %268
  %270 = load i8, ptr %269, align 1, !tbaa !92
  %271 = icmp eq i8 %270, 8
  br i1 %271, label %289, label %272, !prof !142

272:                                              ; preds = %266
  %273 = load i64, ptr %3, align 8
  %274 = and i64 %273, 65535
  %275 = icmp eq i64 %274, 14
  br i1 %275, label %276, label %278

276:                                              ; preds = %272
  %277 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %283

278:                                              ; preds = %272
  %279 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %280 = load i32, ptr %279, align 4
  %281 = lshr i32 %280, 16
  %282 = and i32 %281, 255
  br label %283

283:                                              ; preds = %278, %276
  %284 = phi i32 [ %277, %276 ], [ %282, %278 ]
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %285
  %287 = load i8, ptr %286, align 1, !tbaa !92
  %288 = icmp eq i8 %287, 9
  br i1 %288, label %289, label %300

289:                                              ; preds = %283, %266
  %290 = load i64, ptr %3, align 8
  %291 = and i64 %290, 65535
  %292 = icmp eq i64 %291, 14
  br i1 %292, label %293, label %295, !prof !133

293:                                              ; preds = %289
  %294 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %317

295:                                              ; preds = %289
  %296 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %297 = load i32, ptr %296, align 4
  %298 = lshr i32 %297, 16
  %299 = and i32 %298, 255
  br label %317

300:                                              ; preds = %283
  %301 = load i64, ptr %3, align 8
  %302 = and i64 %301, 65535
  %303 = icmp eq i64 %302, 14
  br i1 %303, label %304, label %306

304:                                              ; preds = %300
  %305 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %311

306:                                              ; preds = %300
  %307 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %308 = load i32, ptr %307, align 4
  %309 = lshr i32 %308, 16
  %310 = and i32 %309, 255
  br label %311

311:                                              ; preds = %306, %304
  %312 = phi i32 [ %305, %304 ], [ %310, %306 ]
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %313
  %315 = load i8, ptr %314, align 1, !tbaa !92
  %316 = zext i8 %315 to i32
  br label %317

317:                                              ; preds = %293, %295, %311
  %318 = phi i32 [ %316, %311 ], [ %294, %293 ], [ %299, %295 ]
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %319
  %321 = load i8, ptr %320, align 1, !tbaa !92
  %322 = icmp eq i8 %321, 9
  %323 = load i64, ptr %3, align 8
  %324 = and i64 %323, 65535
  %325 = icmp eq i64 %324, 14
  br i1 %322, label %326, label %385, !prof !133

326:                                              ; preds = %317
  br i1 %325, label %327, label %329

327:                                              ; preds = %326
  %328 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %334

329:                                              ; preds = %326
  %330 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %331 = load i32, ptr %330, align 4
  %332 = lshr i32 %331, 16
  %333 = and i32 %332, 255
  br label %334

334:                                              ; preds = %329, %327
  %335 = phi i32 [ %328, %327 ], [ %333, %329 ]
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %336
  %338 = load i8, ptr %337, align 1, !tbaa !92
  %339 = icmp eq i8 %338, 8
  br i1 %339, label %357, label %340

340:                                              ; preds = %334
  %341 = load i64, ptr %3, align 8
  %342 = and i64 %341, 65535
  %343 = icmp eq i64 %342, 14
  br i1 %343, label %344, label %346

344:                                              ; preds = %340
  %345 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %351

346:                                              ; preds = %340
  %347 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %348 = load i32, ptr %347, align 4
  %349 = lshr i32 %348, 16
  %350 = and i32 %349, 255
  br label %351

351:                                              ; preds = %346, %344
  %352 = phi i32 [ %345, %344 ], [ %350, %346 ]
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %353
  %355 = load i8, ptr %354, align 1, !tbaa !92
  %356 = icmp eq i8 %355, 9
  br i1 %356, label %357, label %368

357:                                              ; preds = %351, %334
  %358 = load i64, ptr %3, align 8
  %359 = and i64 %358, 65535
  %360 = icmp eq i64 %359, 14
  br i1 %360, label %361, label %363

361:                                              ; preds = %357
  %362 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %444

363:                                              ; preds = %357
  %364 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %365 = load i32, ptr %364, align 4
  %366 = lshr i32 %365, 16
  %367 = and i32 %366, 255
  br label %444

368:                                              ; preds = %351
  %369 = load i64, ptr %3, align 8
  %370 = and i64 %369, 65535
  %371 = icmp eq i64 %370, 14
  br i1 %371, label %372, label %374

372:                                              ; preds = %368
  %373 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %379

374:                                              ; preds = %368
  %375 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %376 = load i32, ptr %375, align 4
  %377 = lshr i32 %376, 16
  %378 = and i32 %377, 255
  br label %379

379:                                              ; preds = %374, %372
  %380 = phi i32 [ %373, %372 ], [ %378, %374 ]
  %381 = zext i32 %380 to i64
  %382 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %381
  %383 = load i8, ptr %382, align 1, !tbaa !92
  %384 = zext i8 %383 to i32
  br label %444

385:                                              ; preds = %317
  br i1 %325, label %386, label %388, !prof !133

386:                                              ; preds = %385
  %387 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %393

388:                                              ; preds = %385
  %389 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %390 = load i32, ptr %389, align 4
  %391 = lshr i32 %390, 16
  %392 = and i32 %391, 255
  br label %393

393:                                              ; preds = %388, %386
  %394 = phi i32 [ %387, %386 ], [ %392, %388 ]
  %395 = zext i32 %394 to i64
  %396 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %395
  %397 = load i8, ptr %396, align 1, !tbaa !92
  %398 = icmp eq i8 %397, 8
  br i1 %398, label %416, label %399, !prof !142

399:                                              ; preds = %393
  %400 = load i64, ptr %3, align 8
  %401 = and i64 %400, 65535
  %402 = icmp eq i64 %401, 14
  br i1 %402, label %403, label %405

403:                                              ; preds = %399
  %404 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %410

405:                                              ; preds = %399
  %406 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %407 = load i32, ptr %406, align 4
  %408 = lshr i32 %407, 16
  %409 = and i32 %408, 255
  br label %410

410:                                              ; preds = %405, %403
  %411 = phi i32 [ %404, %403 ], [ %409, %405 ]
  %412 = zext i32 %411 to i64
  %413 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %412
  %414 = load i8, ptr %413, align 1, !tbaa !92
  %415 = icmp eq i8 %414, 9
  br i1 %415, label %416, label %427

416:                                              ; preds = %410, %393
  %417 = load i64, ptr %3, align 8
  %418 = and i64 %417, 65535
  %419 = icmp eq i64 %418, 14
  br i1 %419, label %420, label %422, !prof !133

420:                                              ; preds = %416
  %421 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %444

422:                                              ; preds = %416
  %423 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %424 = load i32, ptr %423, align 4
  %425 = lshr i32 %424, 16
  %426 = and i32 %425, 255
  br label %444

427:                                              ; preds = %410
  %428 = load i64, ptr %3, align 8
  %429 = and i64 %428, 65535
  %430 = icmp eq i64 %429, 14
  br i1 %430, label %431, label %433

431:                                              ; preds = %427
  %432 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %438

433:                                              ; preds = %427
  %434 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %435 = load i32, ptr %434, align 4
  %436 = lshr i32 %435, 16
  %437 = and i32 %436, 255
  br label %438

438:                                              ; preds = %433, %431
  %439 = phi i32 [ %432, %431 ], [ %437, %433 ]
  %440 = zext i32 %439 to i64
  %441 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %440
  %442 = load i8, ptr %441, align 1, !tbaa !92
  %443 = zext i8 %442 to i32
  br label %444

444:                                              ; preds = %438, %422, %420, %379, %363, %361
  %445 = phi i32 [ %384, %379 ], [ %362, %361 ], [ %367, %363 ], [ %443, %438 ], [ %421, %420 ], [ %426, %422 ]
  %446 = add i32 %445, -38
  %447 = zext i32 %446 to i64
  %448 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %447
  %449 = load ptr, ptr %448, align 8, !tbaa !81
  %450 = getelementptr inbounds %struct.real_format, ptr %449, i64 0, i32 12
  %451 = load i8, ptr %450, align 1, !tbaa !143
  %452 = icmp ne i8 %451, 0
  br label %453

453:                                              ; preds = %444, %249
  %454 = phi i1 [ false, %249 ], [ %452, %444 ]
  %455 = zext i1 %454 to i64
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull %5, i64 noundef %455)
  %456 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.215, ptr noundef %0)
  %457 = load i64, ptr %3, align 8
  %458 = and i64 %457, 65535
  %459 = icmp eq i64 %458, 14
  br i1 %459, label %460, label %462, !prof !133

460:                                              ; preds = %453
  %461 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %467

462:                                              ; preds = %453
  %463 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %464 = load i32, ptr %463, align 4
  %465 = lshr i32 %464, 16
  %466 = and i32 %465, 255
  br label %467

467:                                              ; preds = %462, %460
  %468 = phi i32 [ %461, %460 ], [ %466, %462 ]
  %469 = zext i32 %468 to i64
  %470 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %469
  %471 = load i8, ptr %470, align 1, !tbaa !92
  %472 = icmp eq i8 %471, 8
  br i1 %472, label %524, label %473, !prof !142

473:                                              ; preds = %467
  %474 = load i64, ptr %3, align 8
  %475 = and i64 %474, 65535
  %476 = icmp eq i64 %475, 14
  br i1 %476, label %477, label %479

477:                                              ; preds = %473
  %478 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %484

479:                                              ; preds = %473
  %480 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %481 = load i32, ptr %480, align 4
  %482 = lshr i32 %481, 16
  %483 = and i32 %482, 255
  br label %484

484:                                              ; preds = %479, %477
  %485 = phi i32 [ %478, %477 ], [ %483, %479 ]
  %486 = zext i32 %485 to i64
  %487 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %486
  %488 = load i8, ptr %487, align 1, !tbaa !92
  %489 = icmp eq i8 %488, 9
  br i1 %489, label %524, label %490

490:                                              ; preds = %484
  %491 = load i64, ptr %3, align 8
  %492 = and i64 %491, 65535
  %493 = icmp eq i64 %492, 14
  br i1 %493, label %494, label %496

494:                                              ; preds = %490
  %495 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %501

496:                                              ; preds = %490
  %497 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %498 = load i32, ptr %497, align 4
  %499 = lshr i32 %498, 16
  %500 = and i32 %499, 255
  br label %501

501:                                              ; preds = %496, %494
  %502 = phi i32 [ %495, %494 ], [ %500, %496 ]
  %503 = zext i32 %502 to i64
  %504 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %503
  %505 = load i8, ptr %504, align 1, !tbaa !92
  %506 = icmp eq i8 %505, 11
  br i1 %506, label %524, label %507

507:                                              ; preds = %501
  %508 = load i64, ptr %3, align 8
  %509 = and i64 %508, 65535
  %510 = icmp eq i64 %509, 14
  br i1 %510, label %511, label %513

511:                                              ; preds = %507
  %512 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %518

513:                                              ; preds = %507
  %514 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %515 = load i32, ptr %514, align 4
  %516 = lshr i32 %515, 16
  %517 = and i32 %516, 255
  br label %518

518:                                              ; preds = %513, %511
  %519 = phi i32 [ %512, %511 ], [ %517, %513 ]
  %520 = zext i32 %519 to i64
  %521 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %520
  %522 = load i8, ptr %521, align 1, !tbaa !92
  %523 = icmp eq i8 %522, 17
  br i1 %523, label %524, label %723

524:                                              ; preds = %518, %501, %484, %467
  %525 = load i64, ptr %3, align 8
  %526 = and i64 %525, 65535
  %527 = icmp eq i64 %526, 14
  br i1 %527, label %528, label %530, !prof !133

528:                                              ; preds = %524
  %529 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %535

530:                                              ; preds = %524
  %531 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %532 = load i32, ptr %531, align 4
  %533 = lshr i32 %532, 16
  %534 = and i32 %533, 255
  br label %535

535:                                              ; preds = %530, %528
  %536 = phi i32 [ %529, %528 ], [ %534, %530 ]
  %537 = zext i32 %536 to i64
  %538 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %537
  %539 = load i8, ptr %538, align 1, !tbaa !92
  %540 = icmp eq i8 %539, 8
  br i1 %540, label %558, label %541, !prof !142

541:                                              ; preds = %535
  %542 = load i64, ptr %3, align 8
  %543 = and i64 %542, 65535
  %544 = icmp eq i64 %543, 14
  br i1 %544, label %545, label %547

545:                                              ; preds = %541
  %546 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %552

547:                                              ; preds = %541
  %548 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %549 = load i32, ptr %548, align 4
  %550 = lshr i32 %549, 16
  %551 = and i32 %550, 255
  br label %552

552:                                              ; preds = %547, %545
  %553 = phi i32 [ %546, %545 ], [ %551, %547 ]
  %554 = zext i32 %553 to i64
  %555 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %554
  %556 = load i8, ptr %555, align 1, !tbaa !92
  %557 = icmp eq i8 %556, 9
  br i1 %557, label %558, label %569

558:                                              ; preds = %552, %535
  %559 = load i64, ptr %3, align 8
  %560 = and i64 %559, 65535
  %561 = icmp eq i64 %560, 14
  br i1 %561, label %562, label %564, !prof !133

562:                                              ; preds = %558
  %563 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %586

564:                                              ; preds = %558
  %565 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %566 = load i32, ptr %565, align 4
  %567 = lshr i32 %566, 16
  %568 = and i32 %567, 255
  br label %586

569:                                              ; preds = %552
  %570 = load i64, ptr %3, align 8
  %571 = and i64 %570, 65535
  %572 = icmp eq i64 %571, 14
  br i1 %572, label %573, label %575

573:                                              ; preds = %569
  %574 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %580

575:                                              ; preds = %569
  %576 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %577 = load i32, ptr %576, align 4
  %578 = lshr i32 %577, 16
  %579 = and i32 %578, 255
  br label %580

580:                                              ; preds = %575, %573
  %581 = phi i32 [ %574, %573 ], [ %579, %575 ]
  %582 = zext i32 %581 to i64
  %583 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %582
  %584 = load i8, ptr %583, align 1, !tbaa !92
  %585 = zext i8 %584 to i32
  br label %586

586:                                              ; preds = %562, %564, %580
  %587 = phi i32 [ %585, %580 ], [ %563, %562 ], [ %568, %564 ]
  %588 = zext i32 %587 to i64
  %589 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %588
  %590 = load i8, ptr %589, align 1, !tbaa !92
  %591 = icmp eq i8 %590, 9
  %592 = load i64, ptr %3, align 8
  %593 = and i64 %592, 65535
  %594 = icmp eq i64 %593, 14
  br i1 %591, label %595, label %654, !prof !133

595:                                              ; preds = %586
  br i1 %594, label %596, label %598

596:                                              ; preds = %595
  %597 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %603

598:                                              ; preds = %595
  %599 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %600 = load i32, ptr %599, align 4
  %601 = lshr i32 %600, 16
  %602 = and i32 %601, 255
  br label %603

603:                                              ; preds = %598, %596
  %604 = phi i32 [ %597, %596 ], [ %602, %598 ]
  %605 = zext i32 %604 to i64
  %606 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %605
  %607 = load i8, ptr %606, align 1, !tbaa !92
  %608 = icmp eq i8 %607, 8
  br i1 %608, label %626, label %609

609:                                              ; preds = %603
  %610 = load i64, ptr %3, align 8
  %611 = and i64 %610, 65535
  %612 = icmp eq i64 %611, 14
  br i1 %612, label %613, label %615

613:                                              ; preds = %609
  %614 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %620

615:                                              ; preds = %609
  %616 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %617 = load i32, ptr %616, align 4
  %618 = lshr i32 %617, 16
  %619 = and i32 %618, 255
  br label %620

620:                                              ; preds = %615, %613
  %621 = phi i32 [ %614, %613 ], [ %619, %615 ]
  %622 = zext i32 %621 to i64
  %623 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %622
  %624 = load i8, ptr %623, align 1, !tbaa !92
  %625 = icmp eq i8 %624, 9
  br i1 %625, label %626, label %637

626:                                              ; preds = %620, %603
  %627 = load i64, ptr %3, align 8
  %628 = and i64 %627, 65535
  %629 = icmp eq i64 %628, 14
  br i1 %629, label %630, label %632

630:                                              ; preds = %626
  %631 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %713

632:                                              ; preds = %626
  %633 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %634 = load i32, ptr %633, align 4
  %635 = lshr i32 %634, 16
  %636 = and i32 %635, 255
  br label %713

637:                                              ; preds = %620
  %638 = load i64, ptr %3, align 8
  %639 = and i64 %638, 65535
  %640 = icmp eq i64 %639, 14
  br i1 %640, label %641, label %643

641:                                              ; preds = %637
  %642 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %648

643:                                              ; preds = %637
  %644 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %645 = load i32, ptr %644, align 4
  %646 = lshr i32 %645, 16
  %647 = and i32 %646, 255
  br label %648

648:                                              ; preds = %643, %641
  %649 = phi i32 [ %642, %641 ], [ %647, %643 ]
  %650 = zext i32 %649 to i64
  %651 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %650
  %652 = load i8, ptr %651, align 1, !tbaa !92
  %653 = zext i8 %652 to i32
  br label %713

654:                                              ; preds = %586
  br i1 %594, label %655, label %657, !prof !133

655:                                              ; preds = %654
  %656 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %662

657:                                              ; preds = %654
  %658 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %659 = load i32, ptr %658, align 4
  %660 = lshr i32 %659, 16
  %661 = and i32 %660, 255
  br label %662

662:                                              ; preds = %657, %655
  %663 = phi i32 [ %656, %655 ], [ %661, %657 ]
  %664 = zext i32 %663 to i64
  %665 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %664
  %666 = load i8, ptr %665, align 1, !tbaa !92
  %667 = icmp eq i8 %666, 8
  br i1 %667, label %685, label %668, !prof !142

668:                                              ; preds = %662
  %669 = load i64, ptr %3, align 8
  %670 = and i64 %669, 65535
  %671 = icmp eq i64 %670, 14
  br i1 %671, label %672, label %674

672:                                              ; preds = %668
  %673 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %679

674:                                              ; preds = %668
  %675 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %676 = load i32, ptr %675, align 4
  %677 = lshr i32 %676, 16
  %678 = and i32 %677, 255
  br label %679

679:                                              ; preds = %674, %672
  %680 = phi i32 [ %673, %672 ], [ %678, %674 ]
  %681 = zext i32 %680 to i64
  %682 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %681
  %683 = load i8, ptr %682, align 1, !tbaa !92
  %684 = icmp eq i8 %683, 9
  br i1 %684, label %685, label %696

685:                                              ; preds = %679, %662
  %686 = load i64, ptr %3, align 8
  %687 = and i64 %686, 65535
  %688 = icmp eq i64 %687, 14
  br i1 %688, label %689, label %691, !prof !133

689:                                              ; preds = %685
  %690 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %713

691:                                              ; preds = %685
  %692 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %693 = load i32, ptr %692, align 4
  %694 = lshr i32 %693, 16
  %695 = and i32 %694, 255
  br label %713

696:                                              ; preds = %679
  %697 = load i64, ptr %3, align 8
  %698 = and i64 %697, 65535
  %699 = icmp eq i64 %698, 14
  br i1 %699, label %700, label %702

700:                                              ; preds = %696
  %701 = call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %707

702:                                              ; preds = %696
  %703 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %704 = load i32, ptr %703, align 4
  %705 = lshr i32 %704, 16
  %706 = and i32 %705, 255
  br label %707

707:                                              ; preds = %702, %700
  %708 = phi i32 [ %701, %700 ], [ %706, %702 ]
  %709 = zext i32 %708 to i64
  %710 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %709
  %711 = load i8, ptr %710, align 1, !tbaa !92
  %712 = zext i8 %711 to i32
  br label %713

713:                                              ; preds = %707, %691, %689, %648, %632, %630
  %714 = phi i32 [ %653, %648 ], [ %631, %630 ], [ %636, %632 ], [ %712, %707 ], [ %690, %689 ], [ %695, %691 ]
  %715 = add i32 %714, -38
  %716 = zext i32 %715 to i64
  %717 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %716
  %718 = load ptr, ptr %717, align 8, !tbaa !81
  %719 = getelementptr inbounds %struct.real_format, ptr %718, i64 0, i32 11
  %720 = load i8, ptr %719, align 2, !tbaa !144
  %721 = icmp ne i8 %720, 0
  %722 = zext i1 %721 to i64
  br label %723

723:                                              ; preds = %713, %518
  %724 = phi i64 [ 0, %518 ], [ %722, %713 ]
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull %5, i64 noundef %724)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @builtin_define_decimal_float_constants(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 !prof !131 !PGOFuncName !145 {
  %4 = alloca [64 x i8], align 16
  %5 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #16
  %6 = load i64, ptr %2, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 14
  br i1 %8, label %9, label %11, !prof !133

9:                                                ; preds = %3
  %10 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #16
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
  %20 = load i8, ptr %19, align 1, !tbaa !92
  %21 = icmp eq i8 %20, 9
  %22 = load i64, ptr %2, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 14
  br i1 %21, label %25, label %33, !prof !142

25:                                               ; preds = %16
  br i1 %24, label %26, label %28, !prof !133

26:                                               ; preds = %25
  %27 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #16
  br label %41

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  br label %41

33:                                               ; preds = %16
  br i1 %24, label %34, label %36

34:                                               ; preds = %33
  %35 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #16
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
  %46 = load ptr, ptr %45, align 8, !tbaa !81
  %47 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.197, ptr noundef %0)
  %48 = getelementptr inbounds %struct.real_format, ptr %46, i64 0, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !137
  %50 = sext i32 %49 to i64
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull %4, i64 noundef %50)
  %51 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.199, ptr noundef %0)
  %52 = getelementptr inbounds %struct.real_format, ptr %46, i64 0, i32 5
  %53 = load i32, ptr %52, align 4, !tbaa !138
  %54 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.200, i32 noundef %53)
  call void @builtin_define_with_value(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0)
  %55 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.202, ptr noundef %0)
  %56 = getelementptr inbounds %struct.real_format, ptr %46, i64 0, i32 6
  %57 = load i32, ptr %56, align 8, !tbaa !139
  %58 = sext i32 %57 to i64
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull %4, i64 noundef %58)
  %59 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef %0)
  %60 = load i32, ptr %52, align 4, !tbaa !138
  %61 = add nsw i32 %60, -1
  %62 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.217, i32 noundef %61, ptr noundef %1)
  call void @builtin_define_with_value(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0)
  %63 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.205, ptr noundef %0)
  %64 = load i32, ptr %48, align 4, !tbaa !137
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %78, label %66, !prof !146

66:                                               ; preds = %41, %74
  %67 = phi i32 [ %76, %74 ], [ %64, %41 ]
  %68 = phi ptr [ %75, %74 ], [ %5, %41 ]
  %69 = getelementptr inbounds i8, ptr %68, i64 1
  store i8 57, ptr %68, align 1, !tbaa !92
  %70 = load i32, ptr %48, align 4, !tbaa !137
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %72, label %74, !prof !147

72:                                               ; preds = %66
  %73 = getelementptr inbounds i8, ptr %68, i64 2
  store i8 46, ptr %69, align 1, !tbaa !92
  br label %74

74:                                               ; preds = %66, %72
  %75 = phi ptr [ %73, %72 ], [ %69, %66 ]
  %76 = add nsw i32 %67, -1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %66, !prof !148, !llvm.loop !149

78:                                               ; preds = %74, %41
  %79 = phi ptr [ %5, %41 ], [ %75, %74 ]
  store i8 0, ptr %79, align 1, !tbaa !92
  %80 = load i32, ptr %48, align 4, !tbaa !137
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [128 x i8], ptr %5, i64 0, i64 %82
  %84 = load i32, ptr %56, align 8, !tbaa !139
  %85 = add nsw i32 %84, -1
  %86 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %83, ptr noundef nonnull dereferenceable(1) @.str.218, i32 noundef %85, ptr noundef %1)
  call void @builtin_define_with_value(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0)
  %87 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.208, ptr noundef %0)
  %88 = load i32, ptr %48, align 4, !tbaa !137
  %89 = add nsw i32 %88, -1
  %90 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.219, i32 noundef %89, ptr noundef %1)
  call void @builtin_define_with_value(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0)
  %91 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.220, ptr noundef %0)
  %92 = load i32, ptr %48, align 4, !tbaa !137
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %106, !prof !150

94:                                               ; preds = %78, %102
  %95 = phi i32 [ %104, %102 ], [ %92, %78 ]
  %96 = phi ptr [ %103, %102 ], [ %5, %78 ]
  %97 = getelementptr inbounds i8, ptr %96, i64 1
  store i8 48, ptr %96, align 1, !tbaa !92
  %98 = load i32, ptr %48, align 4, !tbaa !137
  %99 = icmp eq i32 %95, %98
  br i1 %99, label %100, label %102, !prof !151

100:                                              ; preds = %94
  %101 = getelementptr inbounds i8, ptr %96, i64 2
  store i8 46, ptr %97, align 1, !tbaa !92
  br label %102

102:                                              ; preds = %94, %100
  %103 = phi ptr [ %101, %100 ], [ %97, %94 ]
  %104 = add nsw i32 %95, -1
  %105 = icmp sgt i32 %95, 2
  br i1 %105, label %94, label %106, !prof !152, !llvm.loop !153

106:                                              ; preds = %102, %78
  %107 = phi ptr [ %5, %78 ], [ %103, %102 ]
  store i8 0, ptr %107, align 1, !tbaa !92
  %108 = load i32, ptr %48, align 4, !tbaa !137
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [128 x i8], ptr %5, i64 0, i64 %109
  %111 = load i32, ptr %52, align 4, !tbaa !138
  %112 = add nsw i32 %111, -1
  %113 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %110, ptr noundef nonnull dereferenceable(1) @.str.217, i32 noundef %112, ptr noundef %1)
  call void @builtin_define_with_value(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #16
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @builtin_define_fixed_point_constants(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !80 {
  %4 = alloca [64 x i8], align 16
  %5 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #16
  %6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.221, ptr noundef %0)
  %7 = load i64, ptr %2, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 14
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #16
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
  %21 = load i8, ptr %20, align 1, !tbaa !92
  %22 = zext i8 %21 to i64
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull %4, i64 noundef %22)
  %23 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.222, ptr noundef %0)
  %24 = load i64, ptr %2, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 14
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #16
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
  %38 = load i8, ptr %37, align 1, !tbaa !92
  %39 = zext i8 %38 to i64
  call fastcc void @builtin_define_with_int_value(ptr noundef nonnull %4, i64 noundef %39)
  %40 = load i8, ptr %1, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %277, label %42

42:                                               ; preds = %34
  %43 = load i64, ptr %2, align 8
  %44 = and i64 %43, 2097152
  %45 = icmp eq i64 %44, 0
  %46 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.206, ptr noundef %0)
  br i1 %45, label %49, label %47

47:                                               ; preds = %42
  %48 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.210, ptr noundef nonnull %1)
  br label %155

49:                                               ; preds = %42
  %50 = load i64, ptr %2, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 14
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #16
  br label %60

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = lshr i32 %57, 16
  %59 = and i32 %58, 255
  br label %60

60:                                               ; preds = %55, %53
  %61 = phi i32 [ %54, %53 ], [ %59, %55 ]
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !92
  %65 = icmp eq i8 %64, 6
  br i1 %65, label %117, label %66

66:                                               ; preds = %60
  %67 = load i64, ptr %2, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 14
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #16
  br label %77

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %74 = load i32, ptr %73, align 4
  %75 = lshr i32 %74, 16
  %76 = and i32 %75, 255
  br label %77

77:                                               ; preds = %72, %70
  %78 = phi i32 [ %71, %70 ], [ %76, %72 ]
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !92
  %82 = icmp eq i8 %81, 15
  br i1 %82, label %117, label %83

83:                                               ; preds = %77
  %84 = load i64, ptr %2, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 14
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #16
  br label %94

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %91 = load i32, ptr %90, align 4
  %92 = lshr i32 %91, 16
  %93 = and i32 %92, 255
  br label %94

94:                                               ; preds = %89, %87
  %95 = phi i32 [ %88, %87 ], [ %93, %89 ]
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !92
  %99 = icmp eq i8 %98, 7
  br i1 %99, label %117, label %100

100:                                              ; preds = %94
  %101 = load i64, ptr %2, align 8
  %102 = and i64 %101, 65535
  %103 = icmp eq i64 %102, 14
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #16
  br label %111

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %108 = load i32, ptr %107, align 4
  %109 = lshr i32 %108, 16
  %110 = and i32 %109, 255
  br label %111

111:                                              ; preds = %106, %104
  %112 = phi i32 [ %105, %104 ], [ %110, %106 ]
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !92
  %116 = icmp eq i8 %115, 16
  br i1 %116, label %117, label %153

117:                                              ; preds = %111, %94, %77, %60
  %118 = load i64, ptr %2, align 8
  %119 = and i64 %118, 65535
  %120 = icmp eq i64 %119, 14
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #16
  br label %128

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %125 = load i32, ptr %124, align 4
  %126 = lshr i32 %125, 16
  %127 = and i32 %126, 255
  br label %128

128:                                              ; preds = %123, %121
  %129 = phi i32 [ %122, %121 ], [ %127, %123 ]
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !92
  %133 = zext i8 %132 to i32
  %134 = add nsw i32 %133, -1
  %135 = load i64, ptr %2, align 8
  %136 = and i64 %135, 65535
  %137 = icmp eq i64 %136, 14
  br i1 %137, label %138, label %140

138:                                              ; preds = %128
  %139 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #16
  br label %145

140:                                              ; preds = %128
  %141 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %142 = load i32, ptr %141, align 4
  %143 = lshr i32 %142, 16
  %144 = and i32 %143, 255
  br label %145

145:                                              ; preds = %140, %138
  %146 = phi i32 [ %139, %138 ], [ %144, %140 ]
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !92
  %150 = zext i8 %149 to i32
  %151 = add nsw i32 %150, -1
  %152 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.223, i32 noundef %134, ptr noundef nonnull %1, i32 noundef %151, ptr noundef nonnull %1)
  br label %155

153:                                              ; preds = %111
  %154 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.224, ptr noundef nonnull %1, ptr noundef nonnull %1)
  br label %155

155:                                              ; preds = %145, %153, %47
  call void @builtin_define_with_value(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0)
  %156 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.205, ptr noundef %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %5, ptr noundef nonnull align 1 dereferenceable(3) @.str.225, i64 3, i1 false)
  %157 = getelementptr inbounds i8, ptr %5, i64 2
  %158 = load i64, ptr %2, align 8
  %159 = and i64 %158, 65535
  %160 = icmp eq i64 %159, 14
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = call i32 @vector_type_mode(ptr noundef nonnull %2) #16
  br label %168

163:                                              ; preds = %155
  %164 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %165 = load i32, ptr %164, align 4
  %166 = lshr i32 %165, 16
  %167 = and i32 %166, 255
  br label %168

168:                                              ; preds = %163, %161
  %169 = phi i32 [ %162, %161 ], [ %167, %163 ]
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !92
  %173 = zext i8 %172 to i32
  %174 = load i64, ptr %2, align 8
  %175 = and i64 %174, 65535
  %176 = icmp eq i64 %175, 14
  br i1 %176, label %177, label %179

177:                                              ; preds = %168
  %178 = call i32 @vector_type_mode(ptr noundef nonnull %2) #16
  br label %184

179:                                              ; preds = %168
  %180 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %181 = load i32, ptr %180, align 4
  %182 = lshr i32 %181, 16
  %183 = and i32 %182, 255
  br label %184

184:                                              ; preds = %179, %177
  %185 = phi i32 [ %178, %177 ], [ %183, %179 ]
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %186
  %188 = load i8, ptr %187, align 1, !tbaa !92
  %189 = zext i8 %188 to i32
  %190 = add nuw nsw i32 %189, %173
  %191 = and i32 %190, 3
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %184
  %194 = getelementptr inbounds i8, ptr %5, i64 3
  %195 = shl nsw i32 -1, %191
  %196 = xor i32 %195, -1
  %197 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %157, ptr noundef nonnull dereferenceable(1) @.str.226, i32 noundef %196)
  br label %198

198:                                              ; preds = %193, %184
  %199 = phi ptr [ %194, %193 ], [ %157, %184 ]
  %200 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %201 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  br label %202

202:                                              ; preds = %238, %198
  %203 = phi i32 [ 0, %198 ], [ %240, %238 ]
  %204 = phi ptr [ %199, %198 ], [ %239, %238 ]
  %205 = load i64, ptr %2, align 8
  %206 = and i64 %205, 65535
  %207 = icmp eq i64 %206, 14
  br i1 %207, label %208, label %210

208:                                              ; preds = %202
  %209 = call i32 @vector_type_mode(ptr noundef nonnull %2) #16
  br label %214

210:                                              ; preds = %202
  %211 = load i32, ptr %200, align 4
  %212 = lshr i32 %211, 16
  %213 = and i32 %212, 255
  br label %214

214:                                              ; preds = %210, %208
  %215 = phi i32 [ %209, %208 ], [ %213, %210 ]
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %216
  %218 = load i8, ptr %217, align 1, !tbaa !92
  %219 = zext i8 %218 to i32
  %220 = load i64, ptr %2, align 8
  %221 = and i64 %220, 65535
  %222 = icmp eq i64 %221, 14
  br i1 %222, label %223, label %225

223:                                              ; preds = %214
  %224 = call i32 @vector_type_mode(ptr noundef nonnull %2) #16
  br label %229

225:                                              ; preds = %214
  %226 = load i32, ptr %201, align 4
  %227 = lshr i32 %226, 16
  %228 = and i32 %227, 255
  br label %229

229:                                              ; preds = %225, %223
  %230 = phi i32 [ %224, %223 ], [ %228, %225 ]
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %231
  %233 = load i8, ptr %232, align 1, !tbaa !92
  %234 = zext i8 %233 to i32
  %235 = add nuw nsw i32 %234, %219
  %236 = lshr i32 %235, 2
  %237 = icmp ult i32 %203, %236
  br i1 %237, label %238, label %241

238:                                              ; preds = %229
  %239 = getelementptr inbounds i8, ptr %204, i64 1
  store i16 70, ptr %204, align 1
  %240 = add nuw nsw i32 %203, 1
  br label %202, !llvm.loop !154

241:                                              ; preds = %229
  %242 = load i64, ptr %2, align 8
  %243 = and i64 %242, 65535
  %244 = icmp eq i64 %243, 14
  br i1 %244, label %245, label %247

245:                                              ; preds = %241
  %246 = call i32 @vector_type_mode(ptr noundef nonnull %2) #16
  br label %252

247:                                              ; preds = %241
  %248 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %249 = load i32, ptr %248, align 4
  %250 = lshr i32 %249, 16
  %251 = and i32 %250, 255
  br label %252

252:                                              ; preds = %247, %245
  %253 = phi i32 [ %246, %245 ], [ %251, %247 ]
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %254
  %256 = load i8, ptr %255, align 1, !tbaa !92
  %257 = zext i8 %256 to i32
  %258 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %204, ptr noundef nonnull dereferenceable(1) @.str.227, i32 noundef %257, ptr noundef nonnull %1)
  call void @builtin_define_with_value(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0)
  %259 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.208, ptr noundef %0)
  %260 = load i64, ptr %2, align 8
  %261 = and i64 %260, 65535
  %262 = icmp eq i64 %261, 14
  br i1 %262, label %263, label %265

263:                                              ; preds = %252
  %264 = call i32 @vector_type_mode(ptr noundef nonnull %2) #16
  br label %270

265:                                              ; preds = %252
  %266 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %267 = load i32, ptr %266, align 4
  %268 = lshr i32 %267, 16
  %269 = and i32 %268, 255
  br label %270

270:                                              ; preds = %265, %263
  %271 = phi i32 [ %264, %263 ], [ %269, %265 ]
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %272
  %274 = load i8, ptr %273, align 1, !tbaa !92
  %275 = zext i8 %274 to i32
  %276 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.228, i32 noundef %275, ptr noundef nonnull %1)
  call void @builtin_define_with_value(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef 0)
  br label %277

277:                                              ; preds = %34, %270
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @builtin_define_with_value(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !155 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  %6 = icmp eq i32 %2, 0
  %7 = select i1 %6, i64 2, i64 4, !prof !156
  %8 = add i64 %4, %7
  %9 = add i64 %8, %5
  %10 = alloca i8, i64 %9, align 16
  %11 = select i1 %6, ptr @.str.140, ptr @.str.139, !prof !156
  %12 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %11, ptr noundef %0, ptr noundef %1)
  %13 = load ptr, ptr @parse_in, align 8, !tbaa !81
  call void @cpp_define(ptr noundef %13, ptr noundef nonnull %10) #16
  ret void
}

declare zeroext i8 @fast_math_flags_set_p() local_unnamed_addr #3

declare i32 @dwarf2out_do_cfi_asm() local_unnamed_addr #3

declare void @ix86_target_macros() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @builtin_define_std(ptr noundef %0) local_unnamed_addr #9 !prof !131 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %3 = add i64 %2, 5
  %4 = alloca i8, i64 %3, align 16
  %5 = getelementptr inbounds i8, ptr %4, i64 2
  %6 = getelementptr inbounds i8, ptr %5, i64 %2
  %7 = add i64 %2, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %5, ptr align 1 %0, i64 %7, i1 false), !prof !157
  %8 = load i8, ptr %5, align 2, !tbaa !92
  %9 = icmp eq i8 %8, 95
  br i1 %9, label %10, label %21, !prof !133

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %4, i64 3
  %12 = load i8, ptr %11, align 1, !tbaa !92
  %13 = icmp eq i8 %12, 95
  br i1 %13, label %32, label %14

14:                                               ; preds = %10
  %15 = zext i8 %12 to i64
  %16 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !158
  %18 = and i16 %17, 128
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  br i1 %9, label %23, label %21, !prof !133

21:                                               ; preds = %1, %20
  %22 = getelementptr inbounds i8, ptr %4, i64 1
  store i8 95, ptr %22, align 1, !tbaa !92
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi i64 [ 1, %21 ], [ 2, %20 ]
  %25 = getelementptr inbounds i8, ptr %4, i64 %24
  %26 = getelementptr inbounds i8, ptr %25, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !92
  %28 = icmp eq i8 %27, 95
  br i1 %28, label %32, label %29, !prof !133

29:                                               ; preds = %23
  %30 = add nsw i64 %24, -1
  %31 = getelementptr inbounds i8, ptr %4, i64 %30
  store i8 95, ptr %31, align 1, !tbaa !92
  br label %32

32:                                               ; preds = %14, %23, %29, %10
  %33 = phi i64 [ 2, %10 ], [ %30, %29 ], [ %24, %23 ], [ 2, %14 ]
  %34 = getelementptr inbounds i8, ptr %4, i64 %33
  %35 = load ptr, ptr @parse_in, align 8, !tbaa !81
  call void @cpp_define(ptr noundef %35, ptr noundef nonnull %34) #16
  %36 = icmp eq i64 %33, 2
  br i1 %36, label %57, label %37, !prof !133

37:                                               ; preds = %32
  %38 = getelementptr inbounds i8, ptr %6, i64 -1
  %39 = load i8, ptr %38, align 1, !tbaa !92
  %40 = icmp eq i8 %39, 95
  br i1 %40, label %43, label %41, !prof !133

41:                                               ; preds = %37
  %42 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 95, ptr %6, align 1, !tbaa !92
  br label %43

43:                                               ; preds = %41, %37
  %44 = phi ptr [ %42, %41 ], [ %6, %37 ]
  %45 = getelementptr inbounds i8, ptr %44, i64 -2
  %46 = load i8, ptr %45, align 1, !tbaa !92
  %47 = icmp eq i8 %46, 95
  br i1 %47, label %50, label %48, !prof !133

48:                                               ; preds = %43
  %49 = getelementptr inbounds i8, ptr %44, i64 1
  store i8 95, ptr %44, align 1, !tbaa !92
  br label %50

50:                                               ; preds = %48, %43
  %51 = phi ptr [ %49, %48 ], [ %44, %43 ]
  store i8 0, ptr %51, align 1, !tbaa !92
  %52 = load ptr, ptr @parse_in, align 8, !tbaa !81
  call void @cpp_define(ptr noundef %52, ptr noundef nonnull %34) #16
  %53 = load i32, ptr @flag_iso, align 4, !tbaa !96
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57, !prof !142

55:                                               ; preds = %50
  %56 = load ptr, ptr @parse_in, align 8, !tbaa !81
  call void @cpp_define(ptr noundef %56, ptr noundef %0) #16
  br label %57

57:                                               ; preds = %50, %55, %32
  ret void
}

declare void @cpp_assert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @cpp_define_formatted(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @builtin_define_constants(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !159 !PGOFuncName !160 {
  %3 = tail call fastcc ptr @type_suffix(ptr noundef %1)
  %4 = load i8, ptr %3, align 1, !tbaa !92
  %5 = icmp eq i8 %4, 0
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  br i1 %5, label %7, label %11, !prof !161

7:                                                ; preds = %2
  %8 = add i64 %6, 6
  %9 = alloca i8, i64 %8, align 16
  %10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @.str.188, ptr noundef %0)
  br label %17

11:                                               ; preds = %2
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3)
  %13 = add i64 %6, 10
  %14 = add i64 %13, %12
  %15 = alloca i8, i64 %14, align 16
  %16 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) @.str.189, ptr noundef %0, ptr noundef nonnull %3)
  br label %17

17:                                               ; preds = %11, %7
  %18 = phi ptr [ %9, %7 ], [ %15, %11 ]
  %19 = load ptr, ptr @parse_in, align 8, !tbaa !81
  call void @cpp_define(ptr noundef %19, ptr noundef nonnull %18) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @type_suffix(ptr noundef readonly %0) unnamed_addr #10 !prof !162 !PGOFuncName !163 {
  %2 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !81
  %3 = icmp eq ptr %2, %0
  %4 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16
  %5 = icmp eq ptr %4, %0
  %6 = select i1 %3, i1 true, i1 %5, !prof !164
  br i1 %6, label %35, label %7, !prof !165

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !81
  %9 = icmp eq ptr %8, %0
  %10 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 8), align 16
  %11 = icmp eq ptr %10, %0
  %12 = select i1 %9, i1 true, i1 %11, !prof !166
  br i1 %12, label %35, label %13, !prof !166

13:                                               ; preds = %7
  %14 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !81
  %15 = icmp eq ptr %14, %0
  %16 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16
  %17 = icmp eq ptr %16, %0
  %18 = select i1 %15, i1 true, i1 %17, !prof !167
  %19 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 3), align 8
  %20 = icmp eq ptr %19, %0
  %21 = select i1 %18, i1 true, i1 %20, !prof !168
  %22 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 4), align 16
  %23 = icmp eq ptr %22, %0
  %24 = select i1 %21, i1 true, i1 %23, !prof !169
  %25 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 1), align 8
  %26 = icmp eq ptr %25, %0
  %27 = select i1 %24, i1 true, i1 %26, !prof !170
  %28 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16
  %29 = icmp eq ptr %28, %0
  %30 = select i1 %27, i1 true, i1 %29, !prof !171
  %31 = load ptr, ptr @integer_types, align 16
  %32 = icmp eq ptr %31, %0
  %33 = select i1 %30, i1 true, i1 %32, !prof !172
  br i1 %33, label %35, label %34, !prof !172

34:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.194, i32 noundef 998, ptr noundef nonnull @.str.195) #16
  br label %35

35:                                               ; preds = %13, %7, %1, %34
  %36 = phi i64 [ 0, %34 ], [ 4, %1 ], [ 2, %7 ], [ 0, %13 ]
  %37 = load i64, ptr %0, align 8
  %38 = lshr i64 %37, 21
  %39 = and i64 %38, 1
  %40 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 1023
  %43 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !81
  %44 = getelementptr inbounds %struct.tree_type, ptr %43, i64 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 1023
  %47 = icmp ult i32 %42, %46
  %48 = select i1 %47, i64 0, i64 %39, !prof !173
  %49 = or disjoint i64 %48, %36
  %50 = shl i64 %49, 2
  %51 = call ptr @llvm.load.relative.i64(ptr @reltable.type_suffix, i64 %50)
  ret ptr %51
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

declare void @get_max_float(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @builtin_define_with_hex_fp_value(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #9 !prof !174 !PGOFuncName !175 {
  %7 = alloca %struct.real_value, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca [256 x i8], align 16
  %10 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %10) #16
  %11 = call i32 @real_from_string(ptr noundef nonnull %7, ptr noundef %3) #16
  %12 = load i64, ptr %1, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 14
  br i1 %14, label %15, label %17, !prof !176

15:                                               ; preds = %6
  %16 = call i32 @vector_type_mode(ptr noundef nonnull %1) #16
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
  call void @real_to_decimal_for_mode(ptr noundef nonnull %8, ptr noundef nonnull %7, i64 noundef 64, i64 noundef %24, i32 noundef 0, i32 noundef %23) #16
  %25 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @.str.216, ptr noundef nonnull %8, ptr noundef %4)
  %26 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull %9)
  %27 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @.str.140, ptr noundef %0, ptr noundef nonnull %10)
  %28 = load ptr, ptr @parse_in, align 8, !tbaa !81
  call void @cpp_define(ptr noundef %28, ptr noundef nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  ret void
}

declare i32 @real_from_string(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @real_to_decimal_for_mode(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #15

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!79}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!35 = !{ptr @c_cpp_builtins, ptr @__isoc99_sscanf, i64 1}
!36 = !{ptr @c_cpp_builtins, ptr @cpp_define_formatted, i64 3}
!37 = !{ptr @c_cpp_builtins, ptr @c_stddef_cpp_builtins, i64 1}
!38 = !{ptr @c_cpp_builtins, ptr @builtin_define_with_int_value, i64 17}
!39 = !{ptr @c_cpp_builtins, ptr @builtin_define_type_minmax, i64 38}
!40 = !{ptr @c_cpp_builtins, ptr @builtin_define_constants, i64 10}
!41 = !{ptr @c_cpp_builtins, ptr @builtin_define_float_constants, i64 3}
!42 = !{ptr @c_cpp_builtins, ptr @builtin_define_decimal_float_constants, i64 3}
!43 = !{ptr @c_cpp_builtins, ptr @builtin_define_with_value, i64 3}
!44 = !{ptr @c_cpp_builtins, ptr @cpp_define, i64 7}
!45 = !{ptr @c_cpp_builtins, ptr @fast_math_flags_set_p, i64 1}
!46 = !{ptr @c_cpp_builtins, ptr @dwarf2out_do_cfi_asm, i64 1}
!47 = !{ptr @c_cpp_builtins, ptr @tree_low_cst, i64 11}
!48 = !{ptr @c_cpp_builtins, ptr @ix86_target_macros, i64 1}
!49 = !{ptr @c_cpp_builtins, ptr @builtin_define_std, i64 2}
!50 = !{ptr @c_cpp_builtins, ptr @cpp_assert, i64 3}
!51 = !{ptr @builtin_define_with_int_value, ptr @strlen, i64 43}
!52 = !{ptr @builtin_define_with_int_value, ptr @sprintf, i64 43}
!53 = !{ptr @builtin_define_with_int_value, ptr @cpp_define, i64 43}
!54 = !{ptr @builtin_define_type_minmax, ptr @type_suffix, i64 38}
!55 = !{ptr @builtin_define_type_minmax, ptr @strlen, i64 120}
!56 = !{ptr @builtin_define_type_minmax, ptr @sprintf, i64 41}
!57 = !{ptr @builtin_define_type_minmax, ptr @cpp_define, i64 41}
!58 = !{ptr @builtin_define_float_constants, ptr @builtin_define_with_int_value, i64 20}
!59 = !{ptr @builtin_define_float_constants, ptr @sprintf, i64 54}
!60 = !{ptr @builtin_define_float_constants, ptr @builtin_define_with_value, i64 9}
!61 = !{ptr @builtin_define_float_constants, ptr @get_max_float, i64 3}
!62 = !{ptr @builtin_define_float_constants, ptr @builtin_define_with_hex_fp_value, i64 12}
!63 = !{ptr @builtin_define_decimal_float_constants, ptr @sprintf, i64 36}
!64 = !{ptr @builtin_define_decimal_float_constants, ptr @builtin_define_with_int_value, i64 6}
!65 = !{ptr @builtin_define_decimal_float_constants, ptr @builtin_define_with_value, i64 15}
!66 = !{ptr @builtin_define_with_value, ptr @strlen, i64 124}
!67 = !{ptr @builtin_define_with_value, ptr @sprintf, i64 62}
!68 = !{ptr @builtin_define_with_value, ptr @cpp_define, i64 62}
!69 = !{ptr @builtin_define_std, ptr @strlen, i64 3}
!70 = !{ptr @builtin_define_std, ptr @cpp_define, i64 9}
!71 = !{ptr @builtin_define_constants, ptr @type_suffix, i64 10}
!72 = !{ptr @builtin_define_constants, ptr @strlen, i64 15}
!73 = !{ptr @builtin_define_constants, ptr @sprintf, i64 10}
!74 = !{ptr @builtin_define_constants, ptr @cpp_define, i64 10}
!75 = !{ptr @builtin_define_with_hex_fp_value, ptr @real_from_string, i64 12}
!76 = !{ptr @builtin_define_with_hex_fp_value, ptr @real_to_decimal_for_mode, i64 12}
!77 = !{ptr @builtin_define_with_hex_fp_value, ptr @sprintf, i64 36}
!78 = !{ptr @builtin_define_with_hex_fp_value, ptr @cpp_define, i64 12}
!79 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!80 = !{!"function_entry_count", i64 0}
!81 = !{!82, !82, i64 0}
!82 = !{!"any pointer", !83, i64 0}
!83 = !{!"omnipotent char", !84, i64 0}
!84 = !{!"Simple C/C++ TBAA"}
!85 = !{!86, !82, i64 8}
!86 = !{!"_IO_FILE", !87, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !82, i64 32, !82, i64 40, !82, i64 48, !82, i64 56, !82, i64 64, !82, i64 72, !82, i64 80, !82, i64 88, !82, i64 96, !82, i64 104, !87, i64 112, !87, i64 116, !88, i64 120, !89, i64 128, !83, i64 130, !83, i64 131, !82, i64 136, !88, i64 144, !82, i64 152, !82, i64 160, !82, i64 168, !82, i64 176, !88, i64 184, !87, i64 192, !83, i64 196}
!87 = !{!"int", !83, i64 0}
!88 = !{!"long", !83, i64 0}
!89 = !{!"short", !83, i64 0}
!90 = !{!86, !82, i64 16}
!91 = !{!"branch_weights", i32 2000, i32 1}
!92 = !{!83, !83, i64 0}
!93 = !{!86, !82, i64 40}
!94 = !{!86, !82, i64 48}
!95 = !{!86, !87, i64 0}
!96 = !{!87, !87, i64 0}
!97 = distinct !{!97, !98, !99}
!98 = !{!"llvm.loop.mustprogress"}
!99 = !{!"llvm.loop.unroll.disable"}
!100 = !{!101, !83, i64 25}
!101 = !{!"cl_optimization", !87, i64 0, !87, i64 4, !87, i64 8, !87, i64 12, !87, i64 16, !87, i64 20, !83, i64 24, !83, i64 25, !83, i64 26, !83, i64 27, !83, i64 28, !83, i64 29, !83, i64 30, !83, i64 31, !83, i64 32, !83, i64 33, !83, i64 34, !83, i64 35, !83, i64 36, !83, i64 37, !83, i64 38, !83, i64 39, !83, i64 40, !83, i64 41, !83, i64 42, !83, i64 43, !83, i64 44, !83, i64 45, !83, i64 46, !83, i64 47, !83, i64 48, !83, i64 49, !83, i64 50, !83, i64 51, !83, i64 52, !83, i64 53, !83, i64 54, !83, i64 55, !83, i64 56, !83, i64 57, !83, i64 58, !83, i64 59, !83, i64 60, !83, i64 61, !83, i64 62, !83, i64 63, !83, i64 64, !83, i64 65, !83, i64 66, !83, i64 67, !83, i64 68, !83, i64 69, !83, i64 70, !83, i64 71, !83, i64 72, !83, i64 73, !83, i64 74, !83, i64 75, !83, i64 76, !83, i64 77, !83, i64 78, !83, i64 79, !83, i64 80, !83, i64 81, !83, i64 82, !83, i64 83, !83, i64 84, !83, i64 85, !83, i64 86, !83, i64 87, !83, i64 88, !83, i64 89, !83, i64 90, !83, i64 91, !83, i64 92, !83, i64 93, !83, i64 94, !83, i64 95, !83, i64 96, !83, i64 97, !83, i64 98, !83, i64 99, !83, i64 100, !83, i64 101, !83, i64 102, !83, i64 103, !83, i64 104, !83, i64 105, !83, i64 106, !83, i64 107, !83, i64 108, !83, i64 109, !83, i64 110, !83, i64 111, !83, i64 112, !83, i64 113, !83, i64 114, !83, i64 115, !83, i64 116, !83, i64 117, !83, i64 118, !83, i64 119, !83, i64 120, !83, i64 121, !83, i64 122, !83, i64 123, !83, i64 124, !83, i64 125, !83, i64 126, !83, i64 127, !83, i64 128, !83, i64 129, !83, i64 130, !83, i64 131, !83, i64 132, !83, i64 133, !83, i64 134, !83, i64 135, !83, i64 136, !83, i64 137, !83, i64 138, !83, i64 139, !83, i64 140, !83, i64 141, !83, i64 142, !83, i64 143, !83, i64 144, !83, i64 145, !83, i64 146, !83, i64 147, !83, i64 148, !83, i64 149, !83, i64 150, !83, i64 151, !83, i64 152, !83, i64 153, !83, i64 154, !83, i64 155, !83, i64 156, !83, i64 157, !83, i64 158, !83, i64 159, !83, i64 160, !83, i64 161, !83, i64 162, !83, i64 163, !83, i64 164, !83, i64 165, !83, i64 166, !83, i64 167, !83, i64 168, !83, i64 169, !83, i64 170, !83, i64 171, !83, i64 172, !83, i64 173, !83, i64 174, !83, i64 175, !83, i64 176, !83, i64 177, !83, i64 178, !83, i64 179, !83, i64 180}
!102 = !{!101, !83, i64 24}
!103 = !{!101, !83, i64 123}
!104 = !{!101, !83, i64 50}
!105 = !{!"function_entry_count", i64 1}
!106 = !{!"branch_weights", i32 1, i32 0}
!107 = !{!"branch_weights", i32 1, i32 0, i32 0}
!108 = !{!"branch_weights", i32 0, i32 1}
!109 = !{!110, !82, i64 880}
!110 = !{!"gcc_target", !111, i64 0, !113, i64 368, !114, i64 664, !87, i64 744, !82, i64 752, !82, i64 760, !82, i64 768, !82, i64 776, !82, i64 784, !82, i64 792, !82, i64 800, !82, i64 808, !82, i64 816, !82, i64 824, !82, i64 832, !82, i64 840, !82, i64 848, !82, i64 856, !82, i64 864, !82, i64 872, !82, i64 880, !82, i64 888, !82, i64 896, !82, i64 904, !82, i64 912, !82, i64 920, !82, i64 928, !82, i64 936, !82, i64 944, !82, i64 952, !82, i64 960, !82, i64 968, !82, i64 976, !82, i64 984, !82, i64 992, !82, i64 1000, !82, i64 1008, !82, i64 1016, !82, i64 1024, !82, i64 1032, !82, i64 1040, !82, i64 1048, !82, i64 1056, !88, i64 1064, !88, i64 1072, !82, i64 1080, !82, i64 1088, !82, i64 1096, !82, i64 1104, !82, i64 1112, !82, i64 1120, !82, i64 1128, !82, i64 1136, !82, i64 1144, !82, i64 1152, !82, i64 1160, !82, i64 1168, !115, i64 1176, !82, i64 1232, !82, i64 1240, !82, i64 1248, !82, i64 1256, !82, i64 1264, !82, i64 1272, !82, i64 1280, !82, i64 1288, !82, i64 1296, !82, i64 1304, !82, i64 1312, !82, i64 1320, !82, i64 1328, !82, i64 1336, !82, i64 1344, !82, i64 1352, !82, i64 1360, !82, i64 1368, !82, i64 1376, !82, i64 1384, !82, i64 1392, !82, i64 1400, !82, i64 1408, !82, i64 1416, !82, i64 1424, !82, i64 1432, !82, i64 1440, !82, i64 1448, !82, i64 1456, !88, i64 1464, !116, i64 1472, !82, i64 1664, !82, i64 1672, !82, i64 1680, !82, i64 1688, !82, i64 1696, !82, i64 1704, !82, i64 1712, !82, i64 1720, !82, i64 1728, !82, i64 1736, !82, i64 1744, !82, i64 1752, !82, i64 1760, !82, i64 1768, !82, i64 1776, !117, i64 1784, !118, i64 1792, !119, i64 1896, !120, i64 1968, !82, i64 2016, !83, i64 2024, !83, i64 2025, !83, i64 2026, !83, i64 2027, !83, i64 2028, !83, i64 2029, !83, i64 2030, !83, i64 2031, !83, i64 2032, !83, i64 2033, !83, i64 2034, !83, i64 2035}
!111 = !{!"asm_out", !82, i64 0, !82, i64 8, !82, i64 16, !112, i64 24, !112, i64 56, !82, i64 88, !82, i64 96, !82, i64 104, !82, i64 112, !82, i64 120, !82, i64 128, !82, i64 136, !82, i64 144, !82, i64 152, !82, i64 160, !82, i64 168, !82, i64 176, !82, i64 184, !82, i64 192, !82, i64 200, !82, i64 208, !82, i64 216, !82, i64 224, !82, i64 232, !82, i64 240, !82, i64 248, !82, i64 256, !82, i64 264, !82, i64 272, !82, i64 280, !82, i64 288, !82, i64 296, !82, i64 304, !82, i64 312, !82, i64 320, !82, i64 328, !82, i64 336, !82, i64 344, !82, i64 352, !82, i64 360}
!112 = !{!"asm_int_op", !82, i64 0, !82, i64 8, !82, i64 16, !82, i64 24}
!113 = !{!"sched", !82, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !82, i64 32, !82, i64 40, !82, i64 48, !82, i64 56, !82, i64 64, !82, i64 72, !82, i64 80, !82, i64 88, !82, i64 96, !82, i64 104, !82, i64 112, !82, i64 120, !82, i64 128, !82, i64 136, !82, i64 144, !82, i64 152, !82, i64 160, !82, i64 168, !82, i64 176, !82, i64 184, !82, i64 192, !82, i64 200, !82, i64 208, !82, i64 216, !82, i64 224, !82, i64 232, !82, i64 240, !82, i64 248, !82, i64 256, !82, i64 264, !82, i64 272, !82, i64 280, !82, i64 288}
!114 = !{!"vectorize", !82, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !82, i64 32, !82, i64 40, !82, i64 48, !82, i64 56, !82, i64 64, !82, i64 72}
!115 = !{!"addr_space", !82, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !82, i64 32, !82, i64 40, !82, i64 48}
!116 = !{!"calls", !82, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !82, i64 32, !82, i64 40, !82, i64 48, !82, i64 56, !82, i64 64, !82, i64 72, !82, i64 80, !82, i64 88, !82, i64 96, !82, i64 104, !82, i64 112, !82, i64 120, !82, i64 128, !82, i64 136, !82, i64 144, !82, i64 152, !82, i64 160, !82, i64 168, !82, i64 176, !82, i64 184}
!117 = !{!"c", !82, i64 0}
!118 = !{!"cxx", !82, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !82, i64 32, !82, i64 40, !82, i64 48, !82, i64 56, !82, i64 64, !82, i64 72, !82, i64 80, !82, i64 88, !82, i64 96}
!119 = !{!"emutls", !82, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !82, i64 32, !82, i64 40, !82, i64 48, !82, i64 56, !83, i64 64, !83, i64 65}
!120 = !{!"target_option_hooks", !82, i64 0, !82, i64 8, !82, i64 16, !82, i64 24, !82, i64 32, !82, i64 40}
!121 = !{!"VP", i32 0, i64 1, i64 2733191042336519196, i64 1}
!122 = !{!110, !83, i64 2033}
!123 = !{!"function_entry_count", i64 43}
!124 = !{!"c-cppbuiltin.c;builtin_define_with_int_value"}
!125 = !{!"VP", i32 1, i64 43, i64 17, i64 28, i64 9, i64 10, i64 16, i64 5}
!126 = !{!"function_entry_count", i64 38}
!127 = !{!"c-cppbuiltin.c;builtin_define_type_minmax"}
!128 = !{!"branch_weights", i32 0, i32 7, i32 5, i32 17, i32 9, i32 0}
!129 = !{!"branch_weights", i32 35, i32 3}
!130 = !{!"branch_weights", i32 2, i32 1}
!131 = !{!"function_entry_count", i64 3}
!132 = !{!"c-cppbuiltin.c;builtin_define_float_constants"}
!133 = !{!"branch_weights", i32 0, i32 3}
!134 = !{!135, !87, i64 16}
!135 = !{!"real_format", !82, i64 0, !82, i64 8, !87, i64 16, !87, i64 20, !87, i64 24, !87, i64 28, !87, i64 32, !87, i64 36, !87, i64 40, !83, i64 44, !83, i64 45, !83, i64 46, !83, i64 47, !83, i64 48, !83, i64 49, !83, i64 50, !83, i64 51}
!136 = !{!"branch_weights", i32 1, i32 2}
!137 = !{!135, !87, i64 20}
!138 = !{!135, !87, i64 28}
!139 = !{!135, !87, i64 32}
!140 = !{!135, !87, i64 24}
!141 = !{!135, !83, i64 48}
!142 = !{!"branch_weights", i32 3, i32 0}
!143 = !{!135, !83, i64 47}
!144 = !{!135, !83, i64 46}
!145 = !{!"c-cppbuiltin.c;builtin_define_decimal_float_constants"}
!146 = !{!"branch_weights", i32 1, i32 191}
!147 = !{!"branch_weights", i32 3, i32 54}
!148 = !{!"branch_weights", i32 191, i32 3457}
!149 = distinct !{!149, !98, !99}
!150 = !{!"branch_weights", i32 191, i32 1}
!151 = !{!"branch_weights", i32 3, i32 51}
!152 = !{!"branch_weights", i32 3265, i32 191}
!153 = distinct !{!153, !98, !99}
!154 = distinct !{!154, !98, !99}
!155 = !{!"function_entry_count", i64 62}
!156 = !{!"branch_weights", i32 61, i32 1}
!157 = !{!"VP", i32 1, i64 3, i64 5, i64 2, i64 6, i64 1}
!158 = !{!89, !89, i64 0}
!159 = !{!"function_entry_count", i64 10}
!160 = !{!"c-cppbuiltin.c;builtin_define_constants"}
!161 = !{!"branch_weights", i32 5, i32 5}
!162 = !{!"function_entry_count", i64 48}
!163 = !{!"c-cppbuiltin.c;type_suffix"}
!164 = !{!"branch_weights", i32 7, i32 41}
!165 = !{!"branch_weights", i32 13, i32 35}
!166 = !{!"branch_weights", i32 2, i32 33}
!167 = !{!"branch_weights", i32 9, i32 24}
!168 = !{!"branch_weights", i32 17, i32 16}
!169 = !{!"branch_weights", i32 21, i32 12}
!170 = !{!"branch_weights", i32 24, i32 9}
!171 = !{!"branch_weights", i32 29, i32 4}
!172 = !{!"branch_weights", i32 33, i32 0}
!173 = !{!"branch_weights", i32 16, i32 32}
!174 = !{!"function_entry_count", i64 12}
!175 = !{!"c-cppbuiltin.c;builtin_define_with_hex_fp_value"}
!176 = !{!"branch_weights", i32 0, i32 12}
