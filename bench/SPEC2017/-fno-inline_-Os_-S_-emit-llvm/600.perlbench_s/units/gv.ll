; ModuleID = 'gv.c'
source_filename = "gv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.gv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.1, %union._xivu, %union._xnvu }
%union._xmgu = type { ptr }
%union.anon.1 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.9 }
%union.anon.9 = type { i64 }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.2, ptr, %union.anon.3, %union.anon.4, %union.anon.5, ptr, %union.anon.6, ptr, i32, i32, i32 }
%union.anon.2 = type { i64 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%union.anon.6 = type { ptr }
%struct.cv = type { ptr, i32, i32, %union.anon.7 }
%union.anon.7 = type { ptr }
%struct.hv = type { ptr, i32, i32, %union.anon.8 }
%union.anon.8 = type { ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.mro_meta = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.he = type { ptr, ptr, %union.anon.10 }
%union.anon.10 = type { ptr }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.av = type { ptr, i32, i32, %union.anon.11 }
%union.anon.11 = type { ptr }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.12, %union._xivu }
%union.anon.12 = type { i64 }
%struct.xpvio = type { ptr, %union._xmgu, i64, %union.anon.13, %union._xivu, ptr, %union.anon.14, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%union.anon.13 = type { i64 }
%union.anon.14 = type { ptr }
%struct.io = type { ptr, i32, i32, %union.anon.15 }
%union.anon.15 = type { ptr }
%struct.magic = type { ptr, ptr, i16, i8, i8, i64, ptr, ptr }
%struct.am_table = type { i8, i8, i16, i32, [75 x ptr] }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.16, %union._xivu, %union._xnvu }
%union.anon.16 = type { i64 }
%struct.binop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr }
%struct.jmpenv = type { [1 x %struct.__jmp_buf_tag], ptr, i32, i8 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.stackinfo = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.17, %union._xivu, %union._xnvu }
%union.anon.17 = type { i64 }

@PL_op = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"dirhandle\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"filehandle\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"scalar\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Bad symbol for %s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ISA\00", align 1
@PL_defstash = external local_unnamed_addr global ptr, align 8
@PL_perldb = external local_unnamed_addr global i32, align 4
@PL_curcop = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Cannot convert a reference to %s to typeglob\00", align 1
@PL_curstash = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [10 x i8] c"UNIVERSAL\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"Can't use anonymous symbol table for method lookup\00", align 1
@PL_sub_generation = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"CORE\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"Can't locate package %-p for @%2p::ISA\00", align 1
@S_maybe_add_coresub.file = internal constant [5 x i8] c"gv.c\00", align 1
@PL_parser = external local_unnamed_addr global ptr, align 8
@PL_compcv = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [36 x i8] c"&CORE::%s cannot be called directly\00", align 1
@S_autoload = internal constant [9 x i8] c"AUTOLOAD\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"SUPER\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"::SUPER\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"unimport\00", align 1
@PL_sv_yes = external global %struct.sv, align 8
@.str.19 = private unnamed_addr constant [9 x i8] c"IO::File\00", align 1
@PL_incgv = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [11 x i8] c"IO/File.pm\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"Can't locate object method \22%d%lu%4p\22 via package \22%2p\22\00", align 1
@.str.22 = private unnamed_addr constant [92 x i8] c"Can't locate object method \22%d%lu%4p\22 via package \22%-p\22 (perhaps you forgot to load \22%-p\22?)\00", align 1
@.str.23 = private unnamed_addr constant [71 x i8] c"Use of inherited AUTOLOAD for non-method %-p::%d%lu%4p() is deprecated\00", align 1
@PL_tainting = external local_unnamed_addr global i8, align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@PL_stashcache = external local_unnamed_addr global ptr, align 8
@PL_sv_undef = external global %struct.sv, align 8
@.str.25 = private unnamed_addr constant [36 x i8] c"Had to create %d%lu%4p unexpectedly\00", align 1
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@.str.26 = private unnamed_addr constant [7 x i8] c"main::\00", align 1
@PL_compiling = external global %struct.cop, align 8
@.str.27 = private unnamed_addr constant [38 x i8] c"Variable \22%c%d%lu%4p\22 is not imported\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"\09(Did you mean &%d%lu%4p instead?)\0A\00", align 1
@PL_in_clean_all = external local_unnamed_addr global i8, align 1
@.str.29 = private unnamed_addr constant [103 x i8] c"Global symbol \22%s%d%lu%4p\22 requires explicit package name (did you forget to declare \22my %s%d%lu%4p\22?)\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"<none>::\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"Errno\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"TIEHASH\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"Tie::Hash::NamedCapture\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"$%c is no longer supported\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"arybase\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"FETCH\00", align 1
@.str.41 = private unnamed_addr constant [51 x i8] c"panic: Can't use %c%c because %-p is not available\00", align 1
@.str.42 = private unnamed_addr constant [61 x i8] c"panic: Can't use %c%c because %-p does not support method %s\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"XPORT\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"SA\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"ERSION\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"RGV\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"RGVOUT\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"IG\00", align 1
@PL_psig_name = external local_unnamed_addr global ptr, align 8
@PL_psig_pend = external local_unnamed_addr global ptr, align 8
@PL_psig_ptr = external local_unnamed_addr global ptr, align 8
@PL_sig_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.49 = private unnamed_addr constant [18 x i8] c"HILD_ERROR_NATIVE\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"NCODING\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"LOBAL_PHASE\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"AST_FH\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"ATCH\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"PEN\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"REMATCH\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"OSTMATCH\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"AINT\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"NICODE\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"TF8LOCALE\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"TF8CACHE\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"ARNING_BITS\00", align 1
@PL_chopset = external local_unnamed_addr global ptr, align 8
@.str.62 = private unnamed_addr constant [2 x i8] c"\0C\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"\1C\00", align 1
@PL_patchlevel = external local_unnamed_addr global ptr, align 8
@.str.64 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"__ANON__::\00", align 1
@.str.67 = private unnamed_addr constant [46 x i8] c"Name \22%2p::%2p\22 used only once: possible typo\00", align 1
@.str.68 = private unnamed_addr constant [19 x i8] c"%d%lu%4p::_GEN_%ld\00", align 1
@PL_gensym = external local_unnamed_addr global i32, align 4
@.str.69 = private unnamed_addr constant [43 x i8] c"Attempt to free unreferenced glob pointers\00", align 1
@.str.70 = private unnamed_addr constant [89 x i8] c"panic: gp_free failed to free glob pointer - something is repeatedly re-creating entries\00", align 1
@PL_AMG_names = internal unnamed_addr constant [75 x ptr] [ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152], align 16
@.str.71 = private unnamed_addr constant [3 x i8] c"((\00", align 1
@PL_AMG_namelens = internal unnamed_addr constant [75 x i8] c"\02\04\04\04\04\04\03\03\05\03\03\02\02\04\04\03\04\02\03\02\03\03\03\03\03\03\03\03\03\09\02\03\02\03\02\03\02\03\02\03\03\04\03\04\03\04\02\03\03\04\02\03\03\04\02\03\03\04\04\04\02\03\06\04\04\04\04\05\02\03\02\03\03\03\03", align 16
@.str.72 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"overload\00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.75 = private unnamed_addr constant [53 x i8] c"%s method \22%-256p\22 overloading \22%s\22 in package \22%3p\22\00", align 1
@.str.76 = private unnamed_addr constant [27 x i8] c"Stub found while resolving\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"Can't resolve\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"(${}\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"(@{}\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"(%{}\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"(*{}\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"(&{}\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"(++\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"(--\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"(bool\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"(0+\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"(\22\22\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"(!\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"(=\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"(abs\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"(neg\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"(<>\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"(int\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"(<\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"(<=\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"(>\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"(>=\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"(==\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"(!=\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"(lt\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"(le\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"(gt\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"(ge\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"(eq\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"(ne\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"(nomethod\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"(+\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"(+=\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"(-\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"(-=\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"(*\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"(*=\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"(/\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"(/=\00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"(%\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"(%=\00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c"(**\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"(**=\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"(<<\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"(<<=\00", align 1
@.str.122 = private unnamed_addr constant [4 x i8] c"(>>\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"(>>=\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"(&\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"(&=\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"(&.\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"(&.=\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"(|\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"(|=\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"(|.\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"(|.=\00", align 1
@.str.132 = private unnamed_addr constant [3 x i8] c"(^\00", align 1
@.str.133 = private unnamed_addr constant [4 x i8] c"(^=\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"(^.\00", align 1
@.str.135 = private unnamed_addr constant [5 x i8] c"(^.=\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c"(<=>\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"(cmp\00", align 1
@.str.138 = private unnamed_addr constant [3 x i8] c"(~\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"(~.\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"(atan2\00", align 1
@.str.141 = private unnamed_addr constant [5 x i8] c"(cos\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"(sin\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"(exp\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"(log\00", align 1
@.str.145 = private unnamed_addr constant [6 x i8] c"(sqrt\00", align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"(x\00", align 1
@.str.147 = private unnamed_addr constant [4 x i8] c"(x=\00", align 1
@.str.148 = private unnamed_addr constant [3 x i8] c"(.\00", align 1
@.str.149 = private unnamed_addr constant [4 x i8] c"(.=\00", align 1
@.str.150 = private unnamed_addr constant [4 x i8] c"(~~\00", align 1
@.str.151 = private unnamed_addr constant [4 x i8] c"(-X\00", align 1
@.str.152 = private unnamed_addr constant [4 x i8] c"(qr\00", align 1
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@PL_sv_no = external global %struct.sv, align 8
@.str.153 = private unnamed_addr constant [50 x i8] c"Overloaded dereference did not return a reference\00", align 1
@.str.154 = private unnamed_addr constant [12 x i8] c"overloading\00", align 1
@.str.155 = private unnamed_addr constant [54 x i8] c"Operation \22%s\22: no method found,%sargument %s%-p%s%-p\00", align 1
@.str.156 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.157 = private unnamed_addr constant [8 x i8] c"\0A\09left \00", align 1
@.str.158 = private unnamed_addr constant [23 x i8] c"in overloaded package \00", align 1
@.str.159 = private unnamed_addr constant [24 x i8] c"has no overloaded magic\00", align 1
@.str.160 = private unnamed_addr constant [41 x i8] c",\0A\09right argument in overloaded package \00", align 1
@.str.161 = private unnamed_addr constant [42 x i8] c",\0A\09right argument has no overloaded magic\00", align 1
@.str.162 = private unnamed_addr constant [4 x i8] c"%-p\00", align 1
@PL_top_env = external local_unnamed_addr global ptr, align 8
@PL_curstackinfo = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_curstack = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_debstash = external local_unnamed_addr global ptr, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_ppaddr = external local_unnamed_addr global [0 x ptr], align 8
@PL_runops = external local_unnamed_addr global ptr, align 8
@.str.163 = private unnamed_addr constant [39 x i8] c"Copy method did not return a reference\00", align 1
@.str.164 = private unnamed_addr constant [30 x i8] c"panic: gv name too long (%lu)\00", align 1
@PL_phase = external local_unnamed_addr global i32, align 4
@PL_statgv = external local_unnamed_addr global ptr, align 8
@PL_last_in_gv = external local_unnamed_addr global ptr, align 8
@PL_stderrgv = external local_unnamed_addr global ptr, align 8
@PL_globalstash = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @Perl_gv_add_by_type(ptr noundef returned %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !6
  %7 = and i32 %6, 255
  %8 = add nsw i32 %7, -9
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %24, label %10

10:                                               ; preds = %4, %2
  switch i32 %1, label %19 [
    i32 15, label %11
    i32 12, label %22
  ]

11:                                               ; preds = %10
  %12 = load ptr, ptr @PL_op, align 8, !tbaa !12
  %13 = getelementptr inbounds %struct.op, ptr %12, i64 0, i32 4
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 511
  %16 = add nsw i16 %15, -306
  %17 = icmp ult i16 %16, 5
  %18 = select i1 %17, ptr @.str, ptr @.str.1
  br label %22

19:                                               ; preds = %10
  %20 = icmp eq i32 %1, 11
  %21 = select i1 %20, ptr @.str.3, ptr @.str.4
  br label %22

22:                                               ; preds = %10, %19, %11
  %23 = phi ptr [ %18, %11 ], [ %21, %19 ], [ @.str.2, %10 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5, ptr noundef nonnull %23) #11
  br label %24

24:                                               ; preds = %4, %22
  %25 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !13
  switch i32 %1, label %33 [
    i32 12, label %27
    i32 11, label %29
    i32 15, label %31
  ]

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.gp, ptr %26, i64 0, i32 5
  br label %33

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.gp, ptr %26, i64 0, i32 6
  br label %33

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.gp, ptr %26, i64 0, i32 1
  br label %33

33:                                               ; preds = %24, %29, %31, %27
  %34 = phi ptr [ %28, %27 ], [ %30, %29 ], [ %32, %31 ], [ %26, %24 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !12
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = tail call ptr @Perl_newSV_type(i32 noundef %1) #11
  store ptr %38, ptr %34, align 8, !tbaa !12
  %39 = icmp eq i32 %1, 11
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load ptr, ptr %0, align 8, !tbaa !14
  %42 = getelementptr inbounds %struct.xpvgv, ptr %41, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !13
  %44 = getelementptr inbounds %struct.hek, ptr %43, i64 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !16
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.hek, ptr %43, i64 0, i32 2
  %49 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(4) @.str.6, i64 noundef 3) #12
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  tail call void @Perl_sv_magic(ptr noundef %38, ptr noundef nonnull %0, i32 noundef 73, ptr noundef null, i32 noundef 0) #11
  br label %52

52:                                               ; preds = %37, %40, %47, %51, %33
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchfile(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %3 = tail call ptr @Perl_gv_fetchfile_flags(ptr noundef %0, i64 noundef %2, i32 poison) #13
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchfile_flags(ptr noundef %0, i64 noundef %1, i32 %2) local_unnamed_addr #0 {
  %4 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #14
  %5 = add i64 %1, 2
  %6 = load ptr, ptr @PL_defstash, align 8, !tbaa !12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %67, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %4, i64 1
  %10 = getelementptr inbounds i8, ptr %4, i64 2
  %11 = icmp ult i64 %5, 129
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @Perl_safesysmalloc(i64 noundef %5) #11
  %14 = getelementptr inbounds i8, ptr %13, i64 2
  %15 = getelementptr inbounds i8, ptr %13, i64 1
  br label %16

16:                                               ; preds = %8, %12
  %17 = phi ptr [ %13, %12 ], [ %4, %8 ]
  %18 = phi ptr [ %15, %12 ], [ %9, %8 ]
  %19 = phi ptr [ %14, %12 ], [ %10, %8 ]
  store i8 95, ptr %17, align 1, !tbaa !13
  store i8 60, ptr %18, align 1, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr align 1 %0, i64 %1, i1 false)
  %20 = load ptr, ptr @PL_defstash, align 8, !tbaa !12
  %21 = trunc i64 %5 to i32
  %22 = call ptr @Perl_hv_common_key_len(ptr noundef %20, ptr noundef nonnull %17, i32 noundef %21, i32 noundef 48, ptr noundef null, i32 noundef 0) #11
  %23 = load ptr, ptr %22, align 8, !tbaa !12
  %24 = getelementptr inbounds %struct.gv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !18
  %26 = and i32 %25, 255
  %27 = icmp eq i32 %26, 9
  br i1 %27, label %33, label %28

28:                                               ; preds = %16
  %29 = load ptr, ptr @PL_defstash, align 8, !tbaa !12
  call void @Perl_gv_init_pvn(ptr noundef nonnull %23, ptr noundef %29, ptr noundef nonnull %17, i64 noundef %5, i32 noundef 0) #13
  %30 = call ptr @Perl_newSVpvn(ptr noundef %0, i64 noundef %1) #11
  %31 = getelementptr inbounds %struct.gv, ptr %23, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !13
  store ptr %30, ptr %32, align 8, !tbaa !19
  br label %33

33:                                               ; preds = %28, %16
  %34 = load i32, ptr @PL_perldb, align 4, !tbaa !21
  %35 = and i32 %34, 1026
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %64, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.gv, ptr %23, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !13
  %40 = getelementptr inbounds %struct.gp, ptr %39, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !22
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %64

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.gp, ptr %39, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !23
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %23, i32 noundef 12) #13
  %49 = load ptr, ptr %38, align 8, !tbaa !13
  %50 = getelementptr inbounds %struct.gp, ptr %49, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !23
  %52 = getelementptr inbounds %struct.gp, ptr %49, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !22
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %43, %47
  %56 = phi ptr [ %51, %47 ], [ %45, %43 ]
  %57 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %23, i32 noundef 11) #13
  %58 = load ptr, ptr %38, align 8, !tbaa !13
  %59 = getelementptr inbounds %struct.gp, ptr %58, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !22
  br label %61

61:                                               ; preds = %47, %55
  %62 = phi ptr [ %56, %55 ], [ %51, %47 ]
  %63 = phi ptr [ %60, %55 ], [ %53, %47 ]
  call void @Perl_sv_magic(ptr noundef %62, ptr noundef %63, i32 noundef 76, ptr noundef null, i32 noundef 0) #11
  br label %64

64:                                               ; preds = %33, %61, %37
  %65 = icmp eq ptr %17, %4
  br i1 %65, label %67, label %66

66:                                               ; preds = %64
  call void @Perl_safesysfree(ptr noundef nonnull %17) #11
  br label %67

67:                                               ; preds = %64, %66, %3
  %68 = phi ptr [ null, %3 ], [ %23, %66 ], [ %23, %64 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #14
  ret ptr %68
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_gv_init_pvn(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !18
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %7, 1024
  %11 = icmp eq i32 %10, 0
  %12 = or i1 %9, %11
  br i1 %12, label %28, label %13

13:                                               ; preds = %5
  %14 = and i32 %7, 268435456
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  tail call void @Perl_sv_force_normal_flags(ptr noundef nonnull %0, i32 noundef 0) #11
  %17 = load i32, ptr %6, align 4, !tbaa !18
  br label %18

18:                                               ; preds = %13, %16
  %19 = phi i32 [ %7, %13 ], [ %17, %16 ]
  %20 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %0, align 8, !tbaa !14
  %25 = getelementptr inbounds %struct.xpv, ptr %24, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !24
  %27 = and i32 %19, 536870912
  br label %29

28:                                               ; preds = %5
  br i1 %9, label %64, label %29

29:                                               ; preds = %18, %23, %28
  %30 = phi i32 [ %19, %23 ], [ %7, %28 ], [ %19, %18 ]
  %31 = phi i32 [ %27, %23 ], [ 0, %28 ], [ 0, %18 ]
  %32 = phi i1 [ false, %23 ], [ true, %28 ], [ true, %18 ]
  %33 = phi ptr [ %21, %23 ], [ null, %28 ], [ null, %18 ]
  %34 = phi i64 [ %26, %23 ], [ 0, %28 ], [ 0, %18 ]
  %35 = and i32 %30, 2048
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !13
  %40 = icmp eq ptr %39, null
  br i1 %40, label %54, label %41

41:                                               ; preds = %37
  %42 = and i32 %30, 34816
  %43 = icmp eq i32 %42, 34816
  %44 = zext i1 %43 to i32
  %45 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !6
  %47 = trunc i32 %46 to i8
  switch i8 %47, label %51 [
    i8 12, label %48
    i8 14, label %48
    i8 15, label %48
  ]

48:                                               ; preds = %41, %41, %41
  %49 = tail call ptr @Perl_sv_reftype(ptr noundef nonnull %39, i32 noundef 0) #11
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.9, ptr noundef %49) #11
  %50 = load i32, ptr %6, align 4, !tbaa !18
  br label %51

51:                                               ; preds = %41, %48
  %52 = phi i32 [ %30, %41 ], [ %50, %48 ]
  store ptr null, ptr %38, align 8, !tbaa !13
  %53 = and i32 %52, -2049
  store i32 %53, ptr %6, align 4, !tbaa !18
  br label %54

54:                                               ; preds = %29, %37, %51
  %55 = phi i32 [ %44, %51 ], [ 0, %37 ], [ 0, %29 ]
  %56 = phi i1 [ false, %51 ], [ true, %37 ], [ true, %29 ]
  %57 = phi ptr [ %39, %51 ], [ null, %37 ], [ null, %29 ]
  %58 = icmp ult i32 %8, 9
  br i1 %58, label %59, label %72

59:                                               ; preds = %54
  %60 = icmp ugt i32 %8, 2
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = load ptr, ptr %0, align 8, !tbaa !14
  %63 = getelementptr inbounds %struct.xpv, ptr %62, i64 0, i32 2
  store i64 0, ptr %63, align 8, !tbaa !24
  br label %64

64:                                               ; preds = %28, %61, %59
  %65 = phi i32 [ %55, %61 ], [ %55, %59 ], [ 0, %28 ]
  %66 = phi i32 [ %31, %61 ], [ %31, %59 ], [ 0, %28 ]
  %67 = phi i1 [ %32, %61 ], [ %32, %59 ], [ true, %28 ]
  %68 = phi ptr [ %33, %61 ], [ %33, %59 ], [ null, %28 ]
  %69 = phi i64 [ %34, %61 ], [ %34, %59 ], [ 0, %28 ]
  %70 = phi i1 [ %56, %61 ], [ %56, %59 ], [ true, %28 ]
  %71 = phi ptr [ %57, %61 ], [ %57, %59 ], [ null, %28 ]
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %0, i32 noundef 9) #11
  br label %72

72:                                               ; preds = %64, %54
  %73 = phi ptr [ %71, %64 ], [ %57, %54 ]
  %74 = phi i1 [ %70, %64 ], [ %56, %54 ]
  %75 = phi i64 [ %69, %64 ], [ %34, %54 ]
  %76 = phi ptr [ %68, %64 ], [ %33, %54 ]
  %77 = phi i1 [ %67, %64 ], [ %32, %54 ]
  %78 = phi i32 [ %66, %64 ], [ %31, %54 ]
  %79 = phi i32 [ %65, %64 ], [ %55, %54 ]
  %80 = load ptr, ptr %0, align 8, !tbaa !14
  %81 = getelementptr inbounds %struct.xpv, ptr %80, i64 0, i32 3
  %82 = load i64, ptr %81, align 8, !tbaa !13
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %72
  %85 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  br i1 %77, label %89, label %86

86:                                               ; preds = %84
  store ptr null, ptr %85, align 8, !tbaa !13
  store i64 0, ptr %81, align 8, !tbaa !13
  %87 = load i32, ptr %6, align 4, !tbaa !18
  %88 = and i32 %87, -17409
  store i32 %88, ptr %6, align 4, !tbaa !18
  br label %91

89:                                               ; preds = %84
  %90 = load ptr, ptr %85, align 8, !tbaa !13
  tail call void @Perl_safesysfree(ptr noundef %90) #11
  br label %91

91:                                               ; preds = %86, %89, %72
  %92 = load i32, ptr %6, align 4, !tbaa !18
  %93 = and i32 %92, 2147446527
  %94 = or disjoint i32 %93, 32768
  store i32 %94, ptr %6, align 4, !tbaa !18
  %95 = tail call ptr @Perl_newGP(ptr noundef nonnull %0) #13
  %96 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  store ptr %95, ptr %96, align 8, !tbaa !13
  %97 = load ptr, ptr %0, align 8, !tbaa !14
  %98 = getelementptr inbounds %struct.xpvgv, ptr %97, i64 0, i32 5
  store ptr %1, ptr %98, align 8, !tbaa !13
  %99 = icmp eq ptr %1, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %91
  tail call void @Perl_sv_add_backref(ptr noundef nonnull %1, ptr noundef nonnull %0) #11
  br label %101

101:                                              ; preds = %100, %91
  %102 = trunc i64 %3 to i32
  %103 = and i32 %4, 536870912
  %104 = or disjoint i32 %103, 1
  tail call void @Perl_gv_name_set(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %102, i32 noundef %104) #13
  %105 = and i32 %4, 2
  %106 = or i32 %8, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %101
  %109 = load ptr, ptr %0, align 8, !tbaa !14
  %110 = getelementptr inbounds %struct.xpvgv, ptr %109, i64 0, i32 2
  %111 = load i64, ptr %110, align 8, !tbaa !27
  %112 = or i64 %111, 2
  store i64 %112, ptr %110, align 8, !tbaa !27
  br label %113

113:                                              ; preds = %101, %108
  br i1 %74, label %157, label %114

114:                                              ; preds = %113
  %115 = getelementptr inbounds %struct.sv, ptr %73, i64 0, i32 2
  %116 = load i32, ptr %115, align 4, !tbaa !6
  %117 = and i32 %116, 255
  %118 = icmp eq i32 %117, 13
  br i1 %118, label %119, label %158

119:                                              ; preds = %114
  %120 = load ptr, ptr %96, align 8, !tbaa !13
  %121 = getelementptr inbounds %struct.gp, ptr %120, i64 0, i32 2
  store ptr %73, ptr %121, align 8, !tbaa !29
  %122 = load ptr, ptr %73, align 8, !tbaa !30
  %123 = getelementptr inbounds %struct.xpvcv, ptr %122, i64 0, i32 4
  %124 = load ptr, ptr %123, align 8, !tbaa !32
  %125 = icmp eq ptr %124, %1
  br i1 %125, label %126, label %190

126:                                              ; preds = %119
  %127 = tail call fastcc ptr @CvNAME_HEK(ptr noundef nonnull %73) #13
  %128 = load ptr, ptr %0, align 8, !tbaa !14
  %129 = getelementptr inbounds %struct.xpvgv, ptr %128, i64 0, i32 4
  %130 = load ptr, ptr %129, align 8, !tbaa !13
  %131 = icmp eq ptr %127, %130
  br i1 %131, label %156, label %132

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.hek, ptr %127, i64 0, i32 1
  %134 = load i32, ptr %133, align 4, !tbaa !16
  %135 = getelementptr inbounds %struct.hek, ptr %130, i64 0, i32 1
  %136 = load i32, ptr %135, align 4, !tbaa !16
  %137 = icmp eq i32 %134, %136
  br i1 %137, label %138, label %190

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.hek, ptr %127, i64 0, i32 2
  %140 = sext i32 %134 to i64
  %141 = getelementptr inbounds i8, ptr %139, i64 %140
  %142 = getelementptr inbounds i8, ptr %141, i64 1
  %143 = load i8, ptr %142, align 1, !tbaa !13
  %144 = getelementptr inbounds %struct.hek, ptr %130, i64 0, i32 2
  %145 = getelementptr inbounds i8, ptr %144, i64 %140
  %146 = getelementptr inbounds i8, ptr %145, i64 1
  %147 = load i8, ptr %146, align 1, !tbaa !13
  %148 = icmp eq i8 %143, %147
  br i1 %148, label %190, label %149

149:                                              ; preds = %138
  %150 = xor i8 %147, %143
  %151 = and i8 %150, 1
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %190

153:                                              ; preds = %149
  %154 = tail call i32 @bcmp(ptr nonnull %139, ptr nonnull %144, i64 %140)
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %190

156:                                              ; preds = %153, %126
  tail call void @Perl_cvgv_set(ptr noundef nonnull %73, ptr noundef nonnull %0) #13
  br label %190

157:                                              ; preds = %113
  br i1 %9, label %190, label %180

158:                                              ; preds = %114
  br i1 %9, label %190, label %159

159:                                              ; preds = %158
  %160 = tail call ptr @Perl_newCONSTSUB_flags(ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef nonnull %73) #11
  %161 = load ptr, ptr %96, align 8, !tbaa !13
  %162 = getelementptr inbounds %struct.gp, ptr %161, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !29
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %171

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.cv, ptr %160, i64 0, i32 1
  %167 = load i32, ptr %166, align 8, !tbaa !34
  %168 = add i32 %167, 1
  store i32 %168, ptr %166, align 8, !tbaa !34
  %169 = load ptr, ptr %96, align 8, !tbaa !13
  %170 = getelementptr inbounds %struct.gp, ptr %169, i64 0, i32 2
  store ptr %160, ptr %170, align 8, !tbaa !29
  br label %171

171:                                              ; preds = %165, %159
  %172 = icmp eq i32 %79, 0
  br i1 %172, label %178, label %173

173:                                              ; preds = %171
  %174 = load ptr, ptr %0, align 8, !tbaa !14
  %175 = getelementptr inbounds %struct.xpvgv, ptr %174, i64 0, i32 2
  %176 = load i64, ptr %175, align 8, !tbaa !27
  %177 = or i64 %176, 128
  store i64 %177, ptr %175, align 8, !tbaa !27
  br label %178

178:                                              ; preds = %173, %171
  %179 = load ptr, ptr @PL_curstash, align 8, !tbaa !12
  tail call void @Perl_cvstash_set(ptr noundef %160, ptr noundef %179) #13
  br label %182

180:                                              ; preds = %157
  %181 = tail call ptr @Perl_newSTUB(ptr noundef nonnull %0, i1 noundef zeroext true) #11
  br label %182

182:                                              ; preds = %180, %178
  %183 = phi ptr [ %160, %178 ], [ %181, %180 ]
  br i1 %77, label %190, label %184

184:                                              ; preds = %182
  tail call void @Perl_sv_usepvn_flags(ptr noundef %183, ptr noundef nonnull %76, i64 noundef %75, i32 noundef 256) #11
  %185 = icmp eq i32 %78, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %184
  %187 = getelementptr inbounds %struct.sv, ptr %183, i64 0, i32 2
  %188 = load i32, ptr %187, align 4, !tbaa !6
  %189 = or i32 %188, 536870912
  store i32 %189, ptr %187, align 4, !tbaa !6
  br label %190

190:                                              ; preds = %158, %182, %186, %184, %119, %132, %138, %149, %153, %156, %157
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_const_sv(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !18
  %4 = and i32 %3, 255
  %5 = icmp eq i32 %4, 9
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct.gp, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !35
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.gp, ptr %8, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !29
  br label %15

15:                                               ; preds = %6, %12
  %16 = phi ptr [ %14, %12 ], [ null, %6 ]
  %17 = tail call ptr @Perl_cv_const_sv(ptr noundef %16) #11
  br label %28

18:                                               ; preds = %1
  %19 = and i32 %3, 2048
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !13
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !6
  %26 = trunc i32 %25 to i8
  switch i8 %26, label %27 [
    i8 11, label %28
    i8 13, label %28
  ]

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %18, %21, %21, %15
  %29 = phi ptr [ %17, %15 ], [ %23, %27 ], [ null, %21 ], [ null, %18 ], [ null, %21 ]
  ret ptr %29
}

; Function Attrs: optsize
declare ptr @Perl_cv_const_sv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_newGP(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 80) #11
  %3 = getelementptr inbounds %struct.gp, ptr %2, i64 0, i32 8
  store ptr %0, ptr %3, align 8, !tbaa !36
  %4 = load ptr, ptr @PL_curcop, align 8, !tbaa !12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cop, ptr %4, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !37
  %9 = getelementptr inbounds %struct.gp, ptr %2, i64 0, i32 9
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %8, 2147483647
  %12 = and i32 %10, -2147483648
  %13 = or disjoint i32 %12, %11
  store i32 %13, ptr %9, align 8
  %14 = getelementptr inbounds %struct.cop, ptr %4, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %6
  %18 = load ptr, ptr %15, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.xpvgv, ptr %18, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !13
  %21 = getelementptr inbounds %struct.hek, ptr %20, i64 0, i32 2, i64 2
  %22 = getelementptr inbounds %struct.hek, ptr %20, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !16
  %24 = add nsw i32 %23, -2
  %25 = sext i32 %24 to i64
  br label %26

26:                                               ; preds = %6, %1, %17
  %27 = phi i64 [ %25, %17 ], [ 0, %1 ], [ 0, %6 ]
  %28 = phi ptr [ %21, %17 ], [ @.str.7, %1 ], [ @.str.7, %6 ]
  %29 = tail call fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef nonnull %28, i64 noundef %27) #13
  %30 = trunc i64 %27 to i32
  %31 = tail call ptr @Perl_share_hek(ptr noundef nonnull %28, i32 noundef %30, i32 noundef %29) #11
  %32 = getelementptr inbounds %struct.gp, ptr %2, i64 0, i32 10
  store ptr %31, ptr %32, align 8, !tbaa !40
  %33 = getelementptr inbounds %struct.gp, ptr %2, i64 0, i32 4
  store i32 1, ptr %33, align 4, !tbaa !41
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef readonly %0, i64 noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds i8, ptr %0, i64 %1
  %4 = trunc i64 %1 to i32
  %5 = add i32 %4, 544173908
  %6 = icmp sgt i64 %1, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2, %7
  %8 = phi i32 [ %16, %7 ], [ %5, %2 ]
  %9 = phi ptr [ %13, %7 ], [ %0, %2 ]
  %10 = mul i32 %8, 1025
  %11 = lshr i32 %10, 6
  %12 = xor i32 %11, %10
  %13 = getelementptr inbounds i8, ptr %9, i64 1
  %14 = load i8, ptr %9, align 1, !tbaa !13
  %15 = zext i8 %14 to i32
  %16 = add i32 %12, %15
  %17 = icmp ult ptr %13, %3
  br i1 %17, label %7, label %18, !llvm.loop !42

18:                                               ; preds = %7, %2
  %19 = phi i32 [ %5, %2 ], [ %16, %7 ]
  %20 = mul i32 %19, 1025
  %21 = lshr i32 %20, 6
  %22 = xor i32 %21, %20
  %23 = mul i32 %22, 1025
  %24 = add i32 %23, 73800
  %25 = lshr i32 %24, 6
  %26 = xor i32 %25, %24
  %27 = mul i32 %26, 1025
  %28 = add i32 %27, 113775
  %29 = lshr i32 %28, 6
  %30 = xor i32 %29, %28
  %31 = mul i32 %30, 1025
  %32 = add i32 %31, 118900
  %33 = lshr i32 %32, 6
  %34 = xor i32 %33, %32
  %35 = mul i32 %34, 1025
  %36 = add i32 %35, 32800
  %37 = lshr i32 %36, 6
  %38 = xor i32 %37, %36
  %39 = mul i32 %38, 9
  %40 = lshr i32 %39, 11
  %41 = xor i32 %40, %39
  %42 = mul i32 %41, 32769
  ret i32 %42
}

; Function Attrs: optsize
declare ptr @Perl_share_hek(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_cvgv_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !30
  %4 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 4, !tbaa !44
  %6 = and i32 %5, 32768
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %73, label %14

12:                                               ; preds = %2
  %13 = icmp eq ptr %1, null
  br i1 %13, label %73, label %28

14:                                               ; preds = %8
  %15 = icmp eq ptr %10, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %14
  %17 = and i32 %5, 1024
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %10) #13
  %20 = load ptr, ptr %0, align 8, !tbaa !30
  %21 = getelementptr inbounds %struct.xpvcv, ptr %20, i64 0, i32 12
  %22 = load i32, ptr %21, align 4, !tbaa !44
  %23 = and i32 %22, -1025
  store i32 %23, ptr %21, align 4, !tbaa !44
  br label %36

24:                                               ; preds = %16
  tail call void @Perl_sv_del_backref(ptr noundef nonnull %10, ptr noundef nonnull %0) #11
  %25 = load ptr, ptr %0, align 8, !tbaa !30
  %26 = getelementptr inbounds %struct.xpvcv, ptr %25, i64 0, i32 12
  %27 = load i32, ptr %26, align 4, !tbaa !44
  br label %36

28:                                               ; preds = %12, %14
  %29 = tail call fastcc ptr @CvNAME_HEK(ptr noundef nonnull %0) #13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  tail call void @Perl_unshare_hek(ptr noundef nonnull %29) #11
  %32 = load ptr, ptr %0, align 8, !tbaa !30
  %33 = getelementptr inbounds %struct.xpvcv, ptr %32, i64 0, i32 12
  %34 = load i32, ptr %33, align 4, !tbaa !44
  %35 = and i32 %34, -65537
  store i32 %35, ptr %33, align 4, !tbaa !44
  br label %36

36:                                               ; preds = %28, %31, %19, %24
  %37 = phi i32 [ %5, %28 ], [ %35, %31 ], [ %23, %19 ], [ %27, %24 ]
  %38 = phi ptr [ %3, %28 ], [ %32, %31 ], [ %20, %19 ], [ %25, %24 ]
  %39 = getelementptr inbounds %struct.xpvcv, ptr %38, i64 0, i32 12
  %40 = and i32 %37, -32769
  store i32 %40, ptr %39, align 4, !tbaa !44
  %41 = getelementptr inbounds %struct.xpvcv, ptr %38, i64 0, i32 7
  store ptr %1, ptr %41, align 8, !tbaa !13
  %42 = icmp eq ptr %1, null
  br i1 %42, label %73, label %43

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.gv, ptr %1, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !18
  %46 = and i32 %45, 49152
  %47 = icmp eq i32 %46, 32768
  br i1 %47, label %48, label %65

48:                                               ; preds = %43
  %49 = and i32 %45, 255
  %50 = add nsw i32 %49, -9
  %51 = icmp ult i32 %50, 2
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.gv, ptr %1, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !13
  %55 = icmp eq ptr %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.gp, ptr %54, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !29
  %59 = icmp eq ptr %58, %0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.gp, ptr %54, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !45
  %63 = icmp eq ptr %62, %0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60, %56
  tail call void @Perl_sv_add_backref(ptr noundef nonnull %1, ptr noundef nonnull %0) #11
  br label %73

65:                                               ; preds = %48, %60, %52, %43
  %66 = load ptr, ptr %0, align 8, !tbaa !30
  %67 = getelementptr inbounds %struct.xpvcv, ptr %66, i64 0, i32 12
  %68 = load i32, ptr %67, align 4, !tbaa !44
  %69 = or i32 %68, 1024
  store i32 %69, ptr %67, align 4, !tbaa !44
  %70 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 1
  %71 = load i32, ptr %70, align 8, !tbaa !46
  %72 = add i32 %71, 1
  store i32 %72, ptr %70, align 8, !tbaa !46
  br label %73

73:                                               ; preds = %12, %64, %65, %36, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec_NN(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !46
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 8, !tbaa !46
  br label %8

7:                                                ; preds = %1
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %3) #11
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_del_backref(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @CvNAME_HEK(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !44
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: optsize
declare void @Perl_unshare_hek(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_add_backref(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_cvgv_from_hek(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !32
  %5 = icmp eq ptr %4, null
  br i1 %5, label %71, label %6

6:                                                ; preds = %1
  %7 = tail call fastcc ptr @CvNAME_HEK(ptr noundef nonnull %0) #13
  %8 = getelementptr inbounds %struct.hek, ptr %7, i64 0, i32 2
  %9 = getelementptr inbounds %struct.hek, ptr %7, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !16
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %8, i64 %11
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !13
  %15 = and i8 %14, 1
  %16 = zext nneg i8 %15 to i32
  %17 = load i32, ptr %7, align 4, !tbaa !47
  %18 = tail call ptr @Perl_hv_common(ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %8, i64 noundef %11, i32 noundef %16, i32 noundef 32, ptr noundef null, i32 noundef %17) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load ptr, ptr %18, align 8, !tbaa !12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %6
  %24 = tail call ptr @Perl_newSV(i64 noundef 0) #11
  br label %25

25:                                               ; preds = %20, %23
  %26 = phi ptr [ %24, %23 ], [ %21, %20 ]
  %27 = getelementptr inbounds %struct.gv, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !18
  %29 = and i32 %28, 255
  %30 = icmp eq i32 %29, 9
  br i1 %30, label %46, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %0, align 8, !tbaa !30
  %33 = getelementptr inbounds %struct.xpvcv, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !32
  %35 = tail call fastcc ptr @CvNAME_HEK(ptr noundef nonnull %0) #13
  %36 = getelementptr inbounds %struct.hek, ptr %35, i64 0, i32 2
  %37 = getelementptr inbounds %struct.hek, ptr %35, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !16
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %36, i64 %39
  %41 = getelementptr inbounds i8, ptr %40, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !13
  %43 = and i8 %42, 1
  %44 = zext nneg i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 29
  tail call void @Perl_gv_init_pvn(ptr noundef nonnull %26, ptr noundef %34, ptr noundef nonnull %36, i64 noundef %39, i32 noundef %45) #13
  br label %46

46:                                               ; preds = %31, %25
  %47 = load ptr, ptr %0, align 8, !tbaa !30
  %48 = getelementptr inbounds %struct.xpvcv, ptr %47, i64 0, i32 12
  %49 = load i32, ptr %48, align 4, !tbaa !44
  %50 = and i32 %49, 32768
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %71, label %52

52:                                               ; preds = %46
  %53 = tail call fastcc ptr @CvNAME_HEK(ptr noundef nonnull %0) #13
  tail call void @Perl_unshare_hek(ptr noundef %53) #11
  %54 = load ptr, ptr %0, align 8, !tbaa !30
  %55 = getelementptr inbounds %struct.xpvcv, ptr %54, i64 0, i32 12
  %56 = load i32, ptr %55, align 4, !tbaa !44
  %57 = and i32 %56, -32769
  store i32 %57, ptr %55, align 4, !tbaa !44
  %58 = getelementptr inbounds %struct.xpvcv, ptr %54, i64 0, i32 7
  store ptr %26, ptr %58, align 8, !tbaa !13
  br i1 %19, label %66, label %59

59:                                               ; preds = %52
  %60 = load ptr, ptr %18, align 8, !tbaa !12
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !46
  %65 = add i32 %64, 1
  store i32 %65, ptr %63, align 8, !tbaa !46
  br label %66

66:                                               ; preds = %62, %59, %52
  %67 = load ptr, ptr %0, align 8, !tbaa !30
  %68 = getelementptr inbounds %struct.xpvcv, ptr %67, i64 0, i32 12
  %69 = load i32, ptr %68, align 4, !tbaa !44
  %70 = or i32 %69, 1024
  store i32 %70, ptr %68, align 4, !tbaa !44
  br label %71

71:                                               ; preds = %46, %1, %66
  %72 = phi ptr [ %26, %66 ], [ null, %1 ], [ %26, %46 ]
  ret ptr %72
}

; Function Attrs: optsize
declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_cvstash_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !30
  %4 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !32
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = icmp eq ptr %5, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  tail call void @Perl_sv_del_backref(ptr noundef nonnull %5, ptr noundef nonnull %0) #11
  %10 = load ptr, ptr %0, align 8, !tbaa !30
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %10, %9 ], [ %3, %7 ]
  %13 = getelementptr inbounds %struct.xpvcv, ptr %12, i64 0, i32 4
  store ptr %1, ptr %13, align 8, !tbaa !32
  %14 = icmp eq ptr %1, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @Perl_sv_add_backref(ptr noundef nonnull %1, ptr noundef nonnull %0) #11
  br label %16

16:                                               ; preds = %11, %15, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_gv_init_sv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !6
  %8 = and i32 %7, 2098176
  %9 = icmp eq i32 %8, 1024
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = load ptr, ptr %2, align 8, !tbaa !48
  %12 = getelementptr inbounds %struct.xpv, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !24
  store i64 %13, ptr %5, align 8, !tbaa !49
  %14 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  br label %20

16:                                               ; preds = %4
  %17 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %2, ptr noundef nonnull %5, i32 noundef 2) #11
  %18 = load i32, ptr %6, align 4, !tbaa !6
  %19 = load i64, ptr %5, align 8, !tbaa !49
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi i64 [ %13, %10 ], [ %19, %16 ]
  %22 = phi i32 [ %7, %10 ], [ %18, %16 ]
  %23 = phi ptr [ %15, %10 ], [ %17, %16 ]
  %24 = and i32 %22, 536870912
  %25 = or i32 %24, %3
  call void @Perl_gv_init_pvn(ptr noundef %0, ptr noundef %1, ptr noundef %23, i64 noundef %21, i32 noundef %25) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_gv_init_pv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #12
  tail call void @Perl_gv_init_pvn(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %5, i32 noundef %3) #13
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_force_normal_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_reftype(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_gv_name_set(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp slt i32 %2, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = zext i32 %2 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.164, i64 noundef %7) #11
  br label %8

8:                                                ; preds = %6, %4
  %9 = and i32 %3, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load ptr, ptr %0, align 8, !tbaa !14
  %13 = getelementptr inbounds %struct.xpvgv, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void @Perl_unshare_hek(ptr noundef nonnull %14) #11
  br label %17

17:                                               ; preds = %16, %11, %8
  %18 = zext i32 %2 to i64
  %19 = tail call fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef %1, i64 noundef %18) #13
  %20 = and i32 %3, 536870912
  %21 = icmp eq i32 %20, 0
  %22 = sub nsw i32 0, %2
  %23 = select i1 %21, i32 %2, i32 %22
  %24 = tail call ptr @Perl_share_hek(ptr noundef %1, i32 noundef %23, i32 noundef %19) #11
  %25 = load ptr, ptr %0, align 8, !tbaa !14
  %26 = getelementptr inbounds %struct.xpvgv, ptr %25, i64 0, i32 4
  store ptr %24, ptr %26, align 8, !tbaa !13
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newCONSTSUB_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSTUB(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_usepvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchmeth_sv(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !6
  %8 = and i32 %7, 2098176
  %9 = icmp eq i32 %8, 1024
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call fastcc ptr @S_gv_fetchmeth_internal(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, i64 noundef 0, i32 noundef %2, i32 noundef %3) #13
  br label %19

12:                                               ; preds = %4
  %13 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef 2) #11
  %14 = load i32, ptr %6, align 4, !tbaa !6
  %15 = and i32 %14, 536870912
  %16 = or i32 %15, %3
  %17 = load i64, ptr %5, align 8, !tbaa !49
  %18 = call ptr @Perl_gv_fetchmeth_pvn(ptr noundef %0, ptr noundef %13, i64 noundef %17, i32 noundef %2, i32 noundef %16) #13
  br label %19

19:                                               ; preds = %12, %10
  %20 = phi ptr [ %11, %10 ], [ %18, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_gv_fetchmeth_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca i64, align 8
  store i64 %3, ptr %7, align 8, !tbaa !49
  %8 = lshr i32 %4, 27
  %9 = and i32 %8, 16
  %10 = xor i32 %9, 16
  %11 = and i32 %5, 536870912
  %12 = icmp eq ptr %0, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %6
  %14 = tail call ptr @Perl_gv_stashpvn(ptr noundef nonnull @.str.10, i32 noundef 9, i32 noundef 0) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %365, label %16

16:                                               ; preds = %13, %6
  %17 = phi i32 [ %10, %6 ], [ 0, %13 ]
  %18 = phi ptr [ %0, %6 ], [ %14, %13 ]
  %19 = getelementptr inbounds %struct.hv, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !50
  %21 = and i32 %20, 33554432
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %43, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.hv, ptr %18, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !13
  %26 = load ptr, ptr %18, align 8, !tbaa !52
  %27 = getelementptr inbounds %struct.xpvhv, ptr %26, i64 0, i32 3
  %28 = load i64, ptr %27, align 8, !tbaa !53
  %29 = getelementptr ptr, ptr %25, i64 %28
  %30 = getelementptr ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !13
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %23
  %34 = getelementptr i8, ptr %29, i64 36
  %35 = load i32, ptr %34, align 4, !tbaa !55
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %31, align 8, !tbaa !13
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33, %37
  %41 = phi ptr [ %38, %37 ], [ %31, %33 ]
  %42 = getelementptr inbounds %struct.hek, ptr %41, i64 0, i32 2
  br label %49

43:                                               ; preds = %37, %23, %16
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.11) #11
  %44 = getelementptr inbounds %struct.hv, ptr %18, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !13
  %46 = load ptr, ptr %18, align 8, !tbaa !52
  %47 = getelementptr inbounds %struct.xpvhv, ptr %46, i64 0, i32 3
  %48 = load i64, ptr %47, align 8, !tbaa !53
  br label %49

49:                                               ; preds = %40, %43
  %50 = phi i64 [ %48, %43 ], [ %28, %40 ]
  %51 = phi ptr [ %45, %43 ], [ %25, %40 ]
  %52 = phi ptr [ null, %43 ], [ %42, %40 ]
  %53 = getelementptr inbounds %struct.hv, ptr %18, i64 0, i32 3
  %54 = getelementptr ptr, ptr %51, i64 %50
  %55 = getelementptr ptr, ptr %54, i64 5
  %56 = load ptr, ptr %55, align 8, !tbaa !57
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %18) #11
  br label %60

60:                                               ; preds = %49, %58
  %61 = phi ptr [ %59, %58 ], [ %56, %49 ]
  %62 = getelementptr inbounds %struct.mro_meta, ptr %61, i64 0, i32 3
  %63 = load i32, ptr %62, align 8, !tbaa !58
  %64 = load i32, ptr @PL_sub_generation, align 4, !tbaa !21
  %65 = add i32 %64, %63
  %66 = and i32 %5, 4096
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %95, label %68

68:                                               ; preds = %60
  %69 = load ptr, ptr %53, align 8, !tbaa !13
  %70 = load ptr, ptr %18, align 8, !tbaa !52
  %71 = getelementptr inbounds %struct.xpvhv, ptr %70, i64 0, i32 3
  %72 = load i64, ptr %71, align 8, !tbaa !53
  %73 = getelementptr ptr, ptr %69, i64 %72
  %74 = getelementptr ptr, ptr %73, i64 5
  %75 = load ptr, ptr %74, align 8, !tbaa !57
  %76 = getelementptr inbounds %struct.mro_meta, ptr %75, i64 0, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !60
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %95

79:                                               ; preds = %68
  %80 = tail call ptr @Perl_newSV_type(i32 noundef 12) #11
  %81 = load ptr, ptr %53, align 8, !tbaa !13
  %82 = load ptr, ptr %18, align 8, !tbaa !52
  %83 = getelementptr inbounds %struct.xpvhv, ptr %82, i64 0, i32 3
  %84 = load i64, ptr %83, align 8, !tbaa !53
  %85 = getelementptr ptr, ptr %81, i64 %84
  %86 = getelementptr ptr, ptr %85, i64 5
  %87 = load ptr, ptr %86, align 8, !tbaa !57
  %88 = getelementptr inbounds %struct.mro_meta, ptr %87, i64 0, i32 7
  store ptr %80, ptr %88, align 8, !tbaa !60
  %89 = load ptr, ptr %53, align 8, !tbaa !13
  %90 = getelementptr ptr, ptr %89, i64 %84
  %91 = getelementptr ptr, ptr %90, i64 5
  %92 = load ptr, ptr %91, align 8, !tbaa !57
  %93 = getelementptr inbounds %struct.mro_meta, ptr %92, i64 0, i32 7
  %94 = load ptr, ptr %93, align 8, !tbaa !60
  br label %95

95:                                               ; preds = %68, %79, %60
  %96 = phi ptr [ %18, %60 ], [ %94, %79 ], [ %77, %68 ]
  %97 = icmp eq i32 %11, 0
  %98 = lshr exact i32 %11, 29
  %99 = tail call ptr @Perl_hv_common(ptr noundef %96, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %98, i32 noundef %17, ptr noundef null, i32 noundef 0) #11
  %100 = icmp eq ptr %99, null
  br i1 %100, label %185, label %101

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.he, ptr %99, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !12
  %104 = getelementptr inbounds %struct.gv, ptr %103, i64 0, i32 2
  %105 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %106 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %107 = or disjoint i32 %11, 2
  %108 = getelementptr inbounds %struct.gv, ptr %103, i64 0, i32 3
  %109 = icmp eq ptr %18, %96
  br label %110

110:                                              ; preds = %182, %101
  %111 = phi ptr [ %2, %101 ], [ %132, %182 ]
  %112 = load i32, ptr %104, align 4, !tbaa !18
  %113 = and i32 %112, 255
  %114 = icmp eq i32 %113, 9
  br i1 %114, label %131, label %115

115:                                              ; preds = %110
  %116 = icmp eq ptr %111, null
  br i1 %116, label %117, label %128

117:                                              ; preds = %115
  %118 = load i32, ptr %105, align 4, !tbaa !6
  %119 = and i32 %118, 2098176
  %120 = icmp eq i32 %119, 1024
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load ptr, ptr %1, align 8, !tbaa !48
  %123 = getelementptr inbounds %struct.xpv, ptr %122, i64 0, i32 2
  %124 = load i64, ptr %123, align 8, !tbaa !24
  store i64 %124, ptr %7, align 8, !tbaa !49
  %125 = load ptr, ptr %106, align 8, !tbaa !13
  br label %128

126:                                              ; preds = %117
  %127 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %7, i32 noundef 0) #11
  br label %128

128:                                              ; preds = %121, %126, %115
  %129 = phi ptr [ %111, %115 ], [ %125, %121 ], [ %127, %126 ]
  %130 = load i64, ptr %7, align 8, !tbaa !49
  call void @Perl_gv_init_pvn(ptr noundef nonnull %103, ptr noundef nonnull %18, ptr noundef %129, i64 noundef %130, i32 noundef %107) #13
  br label %131

131:                                              ; preds = %128, %110
  %132 = phi ptr [ %129, %128 ], [ %111, %110 ]
  %133 = load ptr, ptr %108, align 8, !tbaa !13
  %134 = getelementptr inbounds %struct.gp, ptr %133, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !29
  %136 = icmp eq ptr %135, null
  %137 = getelementptr inbounds %struct.gp, ptr %133, i64 0, i32 3
  %138 = load i32, ptr %137, align 8, !tbaa !35
  br i1 %136, label %148, label %139

139:                                              ; preds = %131
  %140 = icmp eq i32 %138, 0
  %141 = icmp eq i32 %138, %65
  %142 = select i1 %140, i1 true, i1 %141
  br i1 %142, label %365, label %143

143:                                              ; preds = %139
  call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %135) #13
  %144 = load ptr, ptr %108, align 8, !tbaa !13
  %145 = getelementptr inbounds %struct.gp, ptr %144, i64 0, i32 2
  store ptr null, ptr %145, align 8, !tbaa !29
  %146 = load ptr, ptr %108, align 8, !tbaa !13
  %147 = getelementptr inbounds %struct.gp, ptr %146, i64 0, i32 3
  store i32 0, ptr %147, align 8, !tbaa !35
  br label %185

148:                                              ; preds = %131
  %149 = icmp eq i32 %138, %65
  br i1 %149, label %365, label %150

150:                                              ; preds = %148
  %151 = load i64, ptr %7, align 8
  %152 = icmp ugt i64 %151, 1
  %153 = select i1 %109, i1 %152, i1 false
  br i1 %153, label %154, label %185

154:                                              ; preds = %150
  %155 = load i32, ptr %19, align 4, !tbaa !50
  %156 = and i32 %155, 33554432
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %185, label %158

158:                                              ; preds = %154
  %159 = load ptr, ptr %53, align 8, !tbaa !13
  %160 = load ptr, ptr %18, align 8, !tbaa !52
  %161 = getelementptr inbounds %struct.xpvhv, ptr %160, i64 0, i32 3
  %162 = load i64, ptr %161, align 8, !tbaa !53
  %163 = getelementptr ptr, ptr %159, i64 %162
  %164 = getelementptr ptr, ptr %163, i64 1
  %165 = load ptr, ptr %164, align 8, !tbaa !13
  %166 = icmp eq ptr %165, null
  br i1 %166, label %185, label %167

167:                                              ; preds = %158
  %168 = getelementptr i8, ptr %163, i64 36
  %169 = load i32, ptr %168, align 4, !tbaa !55
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %167
  %172 = load ptr, ptr %165, align 8, !tbaa !13
  %173 = icmp eq ptr %172, null
  br i1 %173, label %185, label %174

174:                                              ; preds = %167, %171
  %175 = phi ptr [ %172, %171 ], [ %165, %167 ]
  %176 = getelementptr inbounds %struct.hek, ptr %175, i64 0, i32 1
  %177 = load i32, ptr %176, align 4, !tbaa !16
  %178 = icmp eq i32 %177, 4
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %52, ptr noundef nonnull dereferenceable(5) @.str.12, i64 noundef 4) #12
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = call fastcc ptr @S_maybe_add_coresub(ptr noundef null, ptr noundef %103, ptr noundef %132, i64 noundef %151) #13
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %110

185:                                              ; preds = %154, %158, %171, %150, %174, %179, %182, %143, %95
  %186 = phi ptr [ %103, %143 ], [ null, %95 ], [ %103, %182 ], [ %103, %179 ], [ %103, %174 ], [ %103, %150 ], [ %103, %171 ], [ %103, %158 ], [ %103, %154 ]
  %187 = phi ptr [ %132, %143 ], [ %2, %95 ], [ %132, %182 ], [ %132, %179 ], [ %132, %174 ], [ %132, %150 ], [ %132, %171 ], [ %132, %158 ], [ %132, %154 ]
  %188 = call ptr @Perl_mro_get_linear_isa(ptr noundef nonnull %18) #11
  %189 = load ptr, ptr %188, align 8, !tbaa !61
  %190 = getelementptr inbounds %struct.xpvav, ptr %189, i64 0, i32 2
  %191 = load i64, ptr %190, align 8, !tbaa !63
  %192 = trunc i64 %191 to i32
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %315, label %194

194:                                              ; preds = %185
  %195 = getelementptr inbounds %struct.av, ptr %188, i64 0, i32 3
  %196 = load ptr, ptr %195, align 8, !tbaa !13
  %197 = or disjoint i32 %11, 2
  br label %198

198:                                              ; preds = %228, %194
  %199 = phi i32 [ %192, %194 ], [ %202, %228 ]
  %200 = phi ptr [ %196, %194 ], [ %201, %228 ]
  %201 = getelementptr inbounds ptr, ptr %200, i64 1
  %202 = add nsw i32 %199, -1
  %203 = load ptr, ptr %201, align 8, !tbaa !12
  %204 = call ptr @Perl_gv_stashsv(ptr noundef %203, i32 noundef 0) #13
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %229

206:                                              ; preds = %198
  %207 = load i32, ptr %19, align 4, !tbaa !50
  %208 = and i32 %207, 33554432
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %225, label %210

210:                                              ; preds = %206
  %211 = load ptr, ptr %53, align 8, !tbaa !13
  %212 = load ptr, ptr %18, align 8, !tbaa !52
  %213 = getelementptr inbounds %struct.xpvhv, ptr %212, i64 0, i32 3
  %214 = load i64, ptr %213, align 8, !tbaa !53
  %215 = getelementptr ptr, ptr %211, i64 %214
  %216 = getelementptr ptr, ptr %215, i64 1
  %217 = load ptr, ptr %216, align 8, !tbaa !13
  %218 = icmp eq ptr %217, null
  br i1 %218, label %225, label %219

219:                                              ; preds = %210
  %220 = getelementptr i8, ptr %215, i64 36
  %221 = load i32, ptr %220, align 4, !tbaa !55
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %225, label %223

223:                                              ; preds = %219
  %224 = load ptr, ptr %217, align 8, !tbaa !12
  br label %225

225:                                              ; preds = %219, %206, %210, %223
  %226 = phi ptr [ %224, %223 ], [ null, %210 ], [ null, %206 ], [ %217, %219 ]
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 28, ptr noundef nonnull @.str.13, ptr noundef %203, ptr noundef %226) #11
  %227 = icmp eq i32 %202, 0
  br i1 %227, label %315, label %228

228:                                              ; preds = %225, %313
  br label %198, !llvm.loop !65

229:                                              ; preds = %198
  %230 = load i64, ptr %7, align 8
  %231 = trunc i64 %230 to i32
  %232 = sub nsw i32 0, %231
  %233 = select i1 %97, i32 %231, i32 %232
  %234 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %204, ptr noundef %187, i32 noundef %233, i32 noundef 32, ptr noundef null, i32 noundef 0) #11
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %275

236:                                              ; preds = %229
  %237 = load i64, ptr %7, align 8, !tbaa !49
  %238 = icmp ugt i64 %237, 1
  br i1 %238, label %239, label %313

239:                                              ; preds = %236
  %240 = getelementptr inbounds %struct.hv, ptr %204, i64 0, i32 2
  %241 = load i32, ptr %240, align 4, !tbaa !50
  %242 = and i32 %241, 33554432
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %313, label %244

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.hv, ptr %204, i64 0, i32 3
  %246 = load ptr, ptr %245, align 8, !tbaa !13
  %247 = load ptr, ptr %204, align 8, !tbaa !52
  %248 = getelementptr inbounds %struct.xpvhv, ptr %247, i64 0, i32 3
  %249 = load i64, ptr %248, align 8, !tbaa !53
  %250 = getelementptr ptr, ptr %246, i64 %249
  %251 = getelementptr ptr, ptr %250, i64 1
  %252 = load ptr, ptr %251, align 8, !tbaa !13
  %253 = icmp eq ptr %252, null
  br i1 %253, label %313, label %254

254:                                              ; preds = %244
  %255 = getelementptr i8, ptr %250, i64 36
  %256 = load i32, ptr %255, align 4, !tbaa !55
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %261, label %258

258:                                              ; preds = %254
  %259 = load ptr, ptr %252, align 8, !tbaa !13
  %260 = icmp eq ptr %259, null
  br i1 %260, label %313, label %261

261:                                              ; preds = %254, %258
  %262 = phi ptr [ %259, %258 ], [ %252, %254 ]
  %263 = getelementptr inbounds %struct.hek, ptr %262, i64 0, i32 1
  %264 = load i32, ptr %263, align 4, !tbaa !16
  %265 = icmp eq i32 %264, 4
  br i1 %265, label %266, label %313

266:                                              ; preds = %261
  %267 = select i1 %257, ptr %251, ptr %252
  %268 = load ptr, ptr %267, align 8, !tbaa !13
  %269 = getelementptr inbounds %struct.hek, ptr %268, i64 0, i32 2
  %270 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %269, ptr noundef nonnull dereferenceable(5) @.str.12, i64 noundef 4) #12
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %313

272:                                              ; preds = %266
  %273 = call fastcc ptr @S_maybe_add_coresub(ptr noundef nonnull %204, ptr noundef null, ptr noundef %187, i64 noundef %237) #13
  %274 = icmp eq ptr %273, null
  br i1 %274, label %313, label %277

275:                                              ; preds = %229
  %276 = load ptr, ptr %234, align 8, !tbaa !12
  br label %277

277:                                              ; preds = %272, %275
  %278 = phi ptr [ %276, %275 ], [ %273, %272 ]
  %279 = getelementptr inbounds %struct.gv, ptr %278, i64 0, i32 2
  %280 = load i32, ptr %279, align 4, !tbaa !18
  %281 = and i32 %280, 255
  %282 = icmp eq i32 %281, 9
  br i1 %282, label %286, label %283

283:                                              ; preds = %277
  %284 = load i64, ptr %7, align 8, !tbaa !49
  call void @Perl_gv_init_pvn(ptr noundef nonnull %278, ptr noundef nonnull %204, ptr noundef %187, i64 noundef %284, i32 noundef %197) #13
  %285 = load i32, ptr %279, align 4, !tbaa !18
  br label %286

286:                                              ; preds = %283, %277
  %287 = phi i32 [ %285, %283 ], [ %280, %277 ]
  %288 = and i32 %287, 255
  %289 = icmp eq i32 %288, 9
  br i1 %289, label %290, label %313

290:                                              ; preds = %286
  %291 = getelementptr inbounds %struct.gv, ptr %278, i64 0, i32 3
  %292 = load ptr, ptr %291, align 8, !tbaa !13
  %293 = getelementptr inbounds %struct.gp, ptr %292, i64 0, i32 2
  %294 = load ptr, ptr %293, align 8, !tbaa !29
  %295 = icmp eq ptr %294, null
  br i1 %295, label %313, label %296

296:                                              ; preds = %290
  %297 = getelementptr inbounds %struct.gp, ptr %292, i64 0, i32 3
  %298 = load i32, ptr %297, align 8, !tbaa !35
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %313

300:                                              ; preds = %296
  %301 = icmp eq ptr %186, null
  br i1 %301, label %365, label %302

302:                                              ; preds = %300
  %303 = getelementptr inbounds %struct.gv, ptr %186, i64 0, i32 3
  %304 = load ptr, ptr %303, align 8, !tbaa !13
  %305 = getelementptr inbounds %struct.gp, ptr %304, i64 0, i32 4
  %306 = load i32, ptr %305, align 4, !tbaa !41
  %307 = icmp eq i32 %306, 1
  br i1 %307, label %308, label %365

308:                                              ; preds = %302
  %309 = load ptr, ptr %294, align 8, !tbaa !30
  %310 = getelementptr inbounds %struct.xpvcv, ptr %309, i64 0, i32 6
  %311 = load ptr, ptr %310, align 8, !tbaa !13
  %312 = icmp eq ptr %311, null
  br i1 %312, label %365, label %348

313:                                              ; preds = %286, %290, %296, %236, %261, %258, %244, %239, %266, %272
  %314 = icmp eq i32 %202, 0
  br i1 %314, label %315, label %228

315:                                              ; preds = %313, %225, %185
  %316 = add i32 %4, 1
  %317 = icmp ult i32 %316, 2
  br i1 %317, label %318, label %340

318:                                              ; preds = %315
  %319 = load i64, ptr %7, align 8, !tbaa !49
  %320 = and i32 %5, -4097
  %321 = call fastcc ptr @S_gv_fetchmeth_internal(ptr noundef null, ptr noundef %1, ptr noundef %187, i64 noundef %319, i32 noundef 1, i32 noundef %320) #13
  %322 = icmp eq ptr %321, null
  br i1 %322, label %340, label %323

323:                                              ; preds = %318
  %324 = getelementptr inbounds %struct.gv, ptr %321, i64 0, i32 3
  %325 = load ptr, ptr %324, align 8, !tbaa !13
  %326 = getelementptr inbounds %struct.gp, ptr %325, i64 0, i32 2
  %327 = load ptr, ptr %326, align 8, !tbaa !29
  %328 = icmp eq ptr %186, null
  br i1 %328, label %365, label %329

329:                                              ; preds = %323
  %330 = getelementptr inbounds %struct.gv, ptr %186, i64 0, i32 3
  %331 = load ptr, ptr %330, align 8, !tbaa !13
  %332 = getelementptr inbounds %struct.gp, ptr %331, i64 0, i32 4
  %333 = load i32, ptr %332, align 4, !tbaa !41
  %334 = icmp eq i32 %333, 1
  br i1 %334, label %335, label %365

335:                                              ; preds = %329
  %336 = load ptr, ptr %327, align 8, !tbaa !30
  %337 = getelementptr inbounds %struct.xpvcv, ptr %336, i64 0, i32 6
  %338 = load ptr, ptr %337, align 8, !tbaa !13
  %339 = icmp eq ptr %338, null
  br i1 %339, label %365, label %348

340:                                              ; preds = %318, %315
  %341 = icmp eq ptr %186, null
  br i1 %341, label %365, label %342

342:                                              ; preds = %340
  %343 = getelementptr inbounds %struct.gv, ptr %186, i64 0, i32 3
  %344 = load ptr, ptr %343, align 8, !tbaa !13
  %345 = getelementptr inbounds %struct.gp, ptr %344, i64 0, i32 4
  %346 = load i32, ptr %345, align 4, !tbaa !41
  %347 = icmp eq i32 %346, 1
  br i1 %347, label %361, label %365

348:                                              ; preds = %335, %308
  %349 = phi ptr [ %304, %308 ], [ %331, %335 ]
  %350 = phi ptr [ %294, %308 ], [ %327, %335 ]
  %351 = phi ptr [ %303, %308 ], [ %330, %335 ]
  %352 = phi ptr [ %278, %308 ], [ %321, %335 ]
  %353 = getelementptr inbounds %struct.gp, ptr %349, i64 0, i32 2
  %354 = load ptr, ptr %353, align 8, !tbaa !29
  call fastcc void @S_SvREFCNT_dec(ptr noundef %354) #13
  %355 = getelementptr inbounds %struct.sv, ptr %350, i64 0, i32 1
  %356 = load i32, ptr %355, align 8, !tbaa !46
  %357 = add i32 %356, 1
  store i32 %357, ptr %355, align 8, !tbaa !46
  %358 = load ptr, ptr %351, align 8, !tbaa !13
  %359 = getelementptr inbounds %struct.gp, ptr %358, i64 0, i32 2
  store ptr %350, ptr %359, align 8, !tbaa !29
  %360 = load ptr, ptr %351, align 8, !tbaa !13
  br label %361

361:                                              ; preds = %348, %342
  %362 = phi ptr [ %344, %342 ], [ %360, %348 ]
  %363 = phi ptr [ null, %342 ], [ %352, %348 ]
  %364 = getelementptr inbounds %struct.gp, ptr %362, i64 0, i32 3
  store i32 %65, ptr %364, align 8, !tbaa !35
  br label %365

365:                                              ; preds = %148, %361, %340, %342, %323, %329, %335, %300, %302, %308, %139, %13
  %366 = phi ptr [ null, %13 ], [ %103, %139 ], [ %278, %308 ], [ %278, %302 ], [ %278, %300 ], [ %321, %335 ], [ %321, %329 ], [ %321, %323 ], [ null, %342 ], [ null, %340 ], [ %363, %361 ], [ null, %148 ]
  ret ptr %366
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchmeth_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc ptr @S_gv_fetchmeth_internal(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) #13
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_stashpvn(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @S_gv_stashsvpvn_cached(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %2) #13
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @Perl_mro_meta_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @S_maybe_add_coresub(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = trunc i64 %3 to i32
  %7 = tail call i32 @Perl_keyword(ptr noundef %2, i32 noundef %6, i1 noundef zeroext true) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !tbaa !21
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %93, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @llvm.abs.i32(i32 %7, i1 true)
  switch i32 %10, label %12 [
    i32 4, label %93
    i32 5, label %93
    i32 17, label %93
    i32 7, label %93
    i32 8, label %93
    i32 13, label %93
    i32 33, label %93
    i32 40, label %93
    i32 10, label %93
    i32 44, label %93
    i32 45, label %93
    i32 47, label %93
    i32 48, label %93
    i32 11, label %93
    i32 56, label %93
    i32 57, label %93
    i32 67, label %93
    i32 68, label %93
    i32 70, label %93
    i32 72, label %93
    i32 99, label %93
    i32 102, label %93
    i32 103, label %93
    i32 104, label %93
    i32 106, label %93
    i32 12, label %93
    i32 113, label %93
    i32 116, label %93
    i32 120, label %93
    i32 125, label %93
    i32 126, label %93
    i32 127, label %93
    i32 133, label %93
    i32 134, label %93
    i32 135, label %93
    i32 136, label %93
    i32 141, label %93
    i32 143, label %93
    i32 145, label %93
    i32 149, label %93
    i32 150, label %93
    i32 153, label %93
    i32 154, label %93
    i32 155, label %93
    i32 157, label %93
    i32 158, label %93
    i32 166, label %93
    i32 169, label %93
    i32 171, label %93
    i32 176, label %93
    i32 177, label %93
    i32 205, label %93
    i32 212, label %93
    i32 214, label %93
    i32 229, label %93
    i32 9, label %93
    i32 235, label %93
    i32 240, label %93
    i32 241, label %93
    i32 249, label %93
    i32 250, label %93
    i32 252, label %93
    i32 253, label %93
    i32 254, label %93
    i32 24, label %11
    i32 26, label %11
    i32 27, label %11
    i32 41, label %11
    i32 42, label %11
    i32 46, label %11
    i32 55, label %11
    i32 59, label %11
    i32 60, label %11
    i32 111, label %11
    i32 124, label %11
    i32 147, label %11
    i32 152, label %11
    i32 195, label %11
    i32 206, label %11
    i32 207, label %11
    i32 211, label %11
    i32 221, label %11
    i32 230, label %11
    i32 236, label %11
    i32 238, label %11
    i32 243, label %11
  ]

11:                                               ; preds = %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i1 [ true, %9 ], [ false, %11 ]
  %14 = icmp eq ptr %1, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call ptr @Perl_newSV(i64 noundef 0) #11
  tail call void @Perl_gv_init_pvn(ptr noundef %16, ptr noundef %0, ptr noundef %2, i64 noundef %3, i32 noundef 2) #13
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi ptr [ %1, %12 ], [ %16, %15 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !14
  %20 = getelementptr inbounds %struct.xpvgv, ptr %19, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !27
  %22 = or i64 %21, 2
  store i64 %22, ptr %20, align 8, !tbaa !27
  br i1 %13, label %23, label %29

23:                                               ; preds = %17
  tail call void @Perl_push_scope() #11
  %24 = load ptr, ptr @PL_curcop, align 8, !tbaa !12
  %25 = load ptr, ptr @PL_parser, align 8, !tbaa !12
  tail call void @Perl_lex_start(ptr noundef null, ptr noundef null, i32 noundef 0) #11
  %26 = load ptr, ptr @PL_compcv, align 8, !tbaa !12
  store ptr null, ptr @PL_compcv, align 8, !tbaa !12
  %27 = tail call i32 @Perl_start_subparse(i32 noundef 0, i32 noundef 0) #11
  %28 = load ptr, ptr @PL_compcv, align 8, !tbaa !12
  br label %41

29:                                               ; preds = %17
  %30 = tail call ptr @Perl_newSV_type(i32 noundef 13) #11
  %31 = getelementptr inbounds %struct.gv, ptr %18, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !13
  %33 = getelementptr inbounds %struct.gp, ptr %32, i64 0, i32 2
  store ptr %30, ptr %33, align 8, !tbaa !29
  %34 = load ptr, ptr %31, align 8, !tbaa !13
  %35 = getelementptr inbounds %struct.gp, ptr %34, i64 0, i32 3
  store i32 0, ptr %35, align 8, !tbaa !35
  %36 = load ptr, ptr %30, align 8, !tbaa !30
  %37 = getelementptr inbounds %struct.xpvcv, ptr %36, i64 0, i32 12
  %38 = load i32, ptr %37, align 4, !tbaa !44
  %39 = or i32 %38, 8
  store i32 %39, ptr %37, align 4, !tbaa !44
  %40 = getelementptr inbounds %struct.xpvcv, ptr %36, i64 0, i32 6
  store ptr @core_xsub, ptr %40, align 8, !tbaa !13
  br label %41

41:                                               ; preds = %29, %23
  %42 = phi ptr [ %28, %23 ], [ %30, %29 ]
  %43 = phi ptr [ %26, %23 ], [ null, %29 ]
  %44 = phi ptr [ %24, %23 ], [ null, %29 ]
  %45 = phi ptr [ %25, %23 ], [ null, %29 ]
  %46 = phi i32 [ %27, %23 ], [ 0, %29 ]
  tail call void @Perl_cvgv_set(ptr noundef %42, ptr noundef nonnull %18) #13
  %47 = tail call ptr @Perl_gv_fetchfile(ptr noundef nonnull @S_maybe_add_coresub.file) #13
  %48 = load ptr, ptr %42, align 8, !tbaa !30
  %49 = getelementptr inbounds %struct.xpvcv, ptr %48, i64 0, i32 8
  store ptr @S_maybe_add_coresub.file, ptr %49, align 8, !tbaa !66
  %50 = call ptr @Perl_core_prototype(ptr noundef nonnull %42, ptr noundef %2, i32 noundef %7, ptr noundef nonnull %5) #11
  %51 = icmp eq ptr %0, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  %53 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %6, i32 noundef 36, ptr noundef nonnull %18, i32 noundef 0) #11
  br label %54

54:                                               ; preds = %52, %41
  br i1 %13, label %55, label %81

55:                                               ; preds = %54
  %56 = load ptr, ptr %42, align 8, !tbaa !30
  %57 = getelementptr inbounds %struct.xpvcv, ptr %56, i64 0, i32 12
  %58 = load i32, ptr %57, align 4, !tbaa !44
  %59 = or i32 %58, 2
  store i32 %59, ptr %57, align 4, !tbaa !44
  %60 = load i32, ptr %5, align 4, !tbaa !21
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = sext i32 %60 to i64
  %64 = call ptr @Perl_newSVuv(i64 noundef %63) #11
  br label %67

65:                                               ; preds = %55
  %66 = call ptr @Perl_newSVpvn(ptr noundef %2, i64 noundef %3) #11
  br label %67

67:                                               ; preds = %65, %62
  %68 = phi ptr [ %64, %62 ], [ %66, %65 ]
  %69 = load i32, ptr %5, align 4, !tbaa !21
  %70 = call ptr @Perl_coresub_op(ptr noundef %68, i32 noundef %7, i32 noundef %69) #11
  %71 = call ptr @Perl_newATTRSUB_x(i32 noundef %46, ptr noundef nonnull %18, ptr noundef null, ptr noundef null, ptr noundef %70, i1 noundef zeroext true) #11
  %72 = icmp eq ptr %71, null
  br i1 %72, label %92, label %73

73:                                               ; preds = %67
  %74 = load i32, ptr %5, align 4
  switch i32 %74, label %75 [
    i32 122, label %80
    i32 121, label %80
    i32 46, label %80
    i32 44, label %80
  ]

75:                                               ; preds = %73
  %76 = load ptr, ptr %71, align 8, !tbaa !30
  %77 = getelementptr inbounds %struct.xpvcv, ptr %76, i64 0, i32 12
  %78 = load i32, ptr %77, align 4, !tbaa !44
  %79 = and i32 %78, -3
  store i32 %79, ptr %77, align 4, !tbaa !44
  br label %80

80:                                               ; preds = %75, %73, %73, %73, %73
  call void @Perl_pop_scope() #11
  store ptr %45, ptr @PL_parser, align 8, !tbaa !12
  store ptr %44, ptr @PL_curcop, align 8, !tbaa !12
  store ptr %43, ptr @PL_compcv, align 8, !tbaa !12
  br i1 %72, label %93, label %81

81:                                               ; preds = %54, %80
  %82 = phi ptr [ %71, %80 ], [ %42, %54 ]
  %83 = load i32, ptr %5, align 4, !tbaa !21
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = sext i32 %83 to i64
  %87 = call ptr @Perl_newSVuv(i64 noundef %86) #11
  br label %88

88:                                               ; preds = %81, %85
  %89 = phi ptr [ %87, %85 ], [ null, %81 ]
  %90 = icmp eq ptr %89, null
  %91 = select i1 %90, ptr %82, ptr %89
  call void @Perl_cv_set_call_checker(ptr noundef nonnull %82, ptr noundef nonnull @Perl_ck_entersub_args_core, ptr noundef nonnull %91) #11
  call fastcc void @S_SvREFCNT_dec(ptr noundef %89) #13
  br label %93

92:                                               ; preds = %67
  call void @Perl_pop_scope() #11
  store ptr %45, ptr @PL_parser, align 8, !tbaa !12
  store ptr %44, ptr @PL_curcop, align 8, !tbaa !12
  store ptr %43, ptr @PL_compcv, align 8, !tbaa !12
  br label %93

93:                                               ; preds = %92, %80, %88, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %4
  %94 = phi ptr [ null, %4 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ %18, %88 ], [ %18, %80 ], [ %18, %92 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret ptr %94
}

; Function Attrs: optsize
declare ptr @Perl_mro_get_linear_isa(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_stashsv(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @S_gv_stashsvpvn_cached(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef %1) #13
  ret ptr %3
}

; Function Attrs: optsize
declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !46
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !46
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #11
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_keyword(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_push_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_lex_start(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_start_subparse(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @core_xsub(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc ptr @S_CvGV(ptr noundef %0) #13
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.xpvgv, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.hek, ptr %5, i64 0, i32 2
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.14, ptr noundef nonnull %6) #11
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_core_prototype(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newATTRSUB_x(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_coresub_op(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_pop_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_cv_set_call_checker(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_ck_entersub_args_core(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_CvGV(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !44
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %0) #13
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchmeth_pv(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %6 = tail call fastcc ptr @S_gv_fetchmeth_internal(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %5, i32 noundef %2, i32 noundef %3) #13
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchmeth_sv_autoload(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !6
  %8 = and i32 %7, 2098176
  %9 = icmp eq i32 %8, 1024
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = load ptr, ptr %1, align 8, !tbaa !48
  %12 = getelementptr inbounds %struct.xpv, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !24
  store i64 %13, ptr %5, align 8, !tbaa !49
  %14 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  br label %20

16:                                               ; preds = %4
  %17 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef 2) #11
  %18 = load i32, ptr %6, align 4, !tbaa !6
  %19 = load i64, ptr %5, align 8, !tbaa !49
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi i64 [ %13, %10 ], [ %19, %16 ]
  %22 = phi i32 [ %7, %10 ], [ %18, %16 ]
  %23 = phi ptr [ %15, %10 ], [ %17, %16 ]
  %24 = and i32 %22, 536870912
  %25 = or i32 %24, %3
  %26 = call ptr @Perl_gv_fetchmeth_pvn_autoload(ptr noundef %0, ptr noundef %23, i64 noundef %21, i32 noundef %2, i32 noundef %25) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchmeth_pvn_autoload(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call ptr @Perl_gv_fetchmeth_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %43

8:                                                ; preds = %5
  %9 = icmp eq ptr %0, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %8
  %11 = icmp eq i64 %2, 8
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %1, ptr noundef nonnull dereferenceable(8) @S_autoload, i64 8)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %43, label %15

15:                                               ; preds = %12, %10
  %16 = tail call ptr @Perl_gv_fetchmeth_pvn(ptr noundef nonnull %0, ptr noundef nonnull @S_autoload, i64 noundef 8, i32 noundef 0, i32 noundef %4) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %43, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !13
  %21 = getelementptr inbounds %struct.gp, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !29
  %23 = load ptr, ptr %22, align 8, !tbaa !30
  %24 = getelementptr inbounds %struct.xpvcv, ptr %23, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %43, label %27

27:                                               ; preds = %18
  %28 = icmp slt i32 %3, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = tail call ptr @Perl_gv_fetchmeth_pvn(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i32 noundef 0, i32 noundef %4) #13
  br label %31

31:                                               ; preds = %29, %27
  %32 = and i32 %4, 536870912
  %33 = icmp eq i32 %32, 0
  %34 = trunc i64 %2 to i32
  %35 = sub nsw i32 0, %34
  %36 = select i1 %33, i32 %34, i32 %35
  %37 = icmp sgt i32 %3, -1
  %38 = select i1 %37, i32 48, i32 32
  %39 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %36, i32 noundef %38, ptr noundef null, i32 noundef 0) #11
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %31
  %42 = load ptr, ptr %39, align 8, !tbaa !12
  br label %43

43:                                               ; preds = %5, %41, %8, %12, %15, %18, %31
  %44 = phi ptr [ %42, %41 ], [ null, %8 ], [ null, %12 ], [ null, %15 ], [ null, %18 ], [ null, %31 ], [ %6, %5 ]
  ret ptr %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchmeth_pv_autoload(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %6 = tail call ptr @Perl_gv_fetchmeth_pvn_autoload(ptr noundef %0, ptr noundef %1, i64 noundef %5, i32 noundef %2, i32 noundef %3) #13
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchmethod_autoload(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  %5 = select i1 %4, i32 0, i32 256
  %6 = tail call ptr @Perl_gv_fetchmethod_pv_flags(ptr noundef %0, ptr noundef %1, i32 noundef %5) #13
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchmethod_pv_flags(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %5 = tail call ptr @Perl_gv_fetchmethod_pvn_flags(ptr noundef %0, ptr noundef %1, i64 noundef %4, i32 noundef %2) #13
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !6
  %7 = and i32 %6, 2098176
  %8 = icmp eq i32 %7, 1024
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.xpv, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !24
  store i64 %12, ptr %4, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  br label %19

15:                                               ; preds = %3
  %16 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef 2) #11
  %17 = load i32, ptr %5, align 4, !tbaa !6
  %18 = load i64, ptr %4, align 8, !tbaa !49
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi i64 [ %12, %9 ], [ %18, %15 ]
  %21 = phi i32 [ %6, %9 ], [ %17, %15 ]
  %22 = phi ptr [ %14, %9 ], [ %16, %15 ]
  %23 = and i32 %21, 536870912
  %24 = or i32 %23, %2
  %25 = call ptr @Perl_gv_fetchmethod_pvn_flags(ptr noundef %0, ptr noundef %22, i64 noundef %20, i32 noundef %24) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchmethod_pvn_flags(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = and i32 %3, 256
  %6 = and i32 %3, 512
  %7 = and i32 %3, 536870912
  %8 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !50
  %10 = and i32 %9, 252
  %11 = icmp ult i32 %10, 12
  %12 = select i1 %11, ptr null, ptr %0
  %13 = getelementptr inbounds i8, ptr %1, i64 %2
  %14 = load i8, ptr %1, align 1, !tbaa !13
  %15 = icmp ne i8 %14, 0
  %16 = icmp ne i64 %2, 0
  %17 = or i1 %15, %16
  br i1 %17, label %18, label %71

18:                                               ; preds = %4, %31
  %19 = phi i8 [ %36, %31 ], [ %14, %4 ]
  %20 = phi ptr [ %34, %31 ], [ %1, %4 ]
  %21 = phi ptr [ %35, %31 ], [ %1, %4 ]
  %22 = phi ptr [ %32, %31 ], [ null, %4 ]
  switch i8 %19, label %31 [
    i8 39, label %23
    i8 58, label %25
  ]

23:                                               ; preds = %18
  %24 = getelementptr inbounds i8, ptr %21, i64 1
  br label %31

25:                                               ; preds = %18
  %26 = getelementptr inbounds i8, ptr %21, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !13
  %28 = icmp eq i8 %27, 58
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = getelementptr inbounds i8, ptr %21, i64 2
  br label %31

31:                                               ; preds = %18, %23, %29, %25
  %32 = phi ptr [ %21, %23 ], [ %21, %29 ], [ %22, %25 ], [ %22, %18 ]
  %33 = phi ptr [ %21, %23 ], [ %26, %29 ], [ %21, %25 ], [ %21, %18 ]
  %34 = phi ptr [ %24, %23 ], [ %30, %29 ], [ %20, %25 ], [ %20, %18 ]
  %35 = getelementptr inbounds i8, ptr %33, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !13
  %37 = icmp ne i8 %36, 0
  %38 = icmp ne ptr %35, %13
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %18, label %40, !llvm.loop !67

40:                                               ; preds = %31
  %41 = icmp eq ptr %32, null
  br i1 %41, label %71, label %42

42:                                               ; preds = %40
  %43 = ptrtoint ptr %32 to i64
  %44 = ptrtoint ptr %1 to i64
  %45 = sub i64 %43, %44
  %46 = icmp eq i64 %45, 5
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %1, ptr noundef nonnull dereferenceable(5) @.str.15, i64 5)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %47
  %51 = load ptr, ptr @PL_curcop, align 8, !tbaa !12
  %52 = getelementptr inbounds %struct.cop, ptr %51, i64 0, i32 8
  %53 = load ptr, ptr %52, align 8, !tbaa !68
  %54 = or i32 %3, 4096
  br label %71

55:                                               ; preds = %42
  %56 = icmp sgt i64 %45, 6
  br i1 %56, label %57, label %68

57:                                               ; preds = %55
  %58 = getelementptr inbounds i8, ptr %32, i64 -7
  %59 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %58, ptr noundef nonnull dereferenceable(8) @.str.16, i64 noundef 7) #12
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = trunc i64 %45 to i32
  %63 = add i32 %62, -7
  %64 = tail call ptr @Perl_gv_stashpvn(ptr noundef nonnull %1, i32 noundef %63, i32 noundef %7) #13
  %65 = icmp eq ptr %64, null
  %66 = or i32 %3, 4096
  %67 = select i1 %65, i32 %3, i32 %66
  br label %71

68:                                               ; preds = %47, %57, %55
  %69 = trunc i64 %45 to i32
  %70 = tail call ptr @Perl_gv_stashpvn(ptr noundef nonnull %1, i32 noundef %69, i32 noundef %7) #13
  br label %71

71:                                               ; preds = %4, %61, %50, %68, %40
  %72 = phi i1 [ true, %40 ], [ false, %68 ], [ false, %50 ], [ false, %61 ], [ true, %4 ]
  %73 = phi ptr [ %34, %40 ], [ %34, %68 ], [ %34, %50 ], [ %34, %61 ], [ %1, %4 ]
  %74 = phi ptr [ %13, %40 ], [ %13, %68 ], [ %13, %50 ], [ %13, %61 ], [ %1, %4 ]
  %75 = phi ptr [ null, %40 ], [ %32, %68 ], [ %32, %50 ], [ %32, %61 ], [ null, %4 ]
  %76 = phi ptr [ %0, %40 ], [ %70, %68 ], [ %53, %50 ], [ %64, %61 ], [ %0, %4 ]
  %77 = phi i32 [ %3, %40 ], [ %3, %68 ], [ %54, %50 ], [ %67, %61 ], [ %3, %4 ]
  %78 = phi ptr [ %12, %40 ], [ %70, %68 ], [ %53, %50 ], [ %64, %61 ], [ %12, %4 ]
  %79 = ptrtoint ptr %74 to i64
  %80 = ptrtoint ptr %73 to i64
  %81 = sub i64 %79, %80
  %82 = tail call ptr @Perl_gv_fetchmeth_pvn(ptr noundef %78, ptr noundef %73, i64 noundef %81, i32 noundef 0, i32 noundef %77) #13
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %189

84:                                               ; preds = %71
  %85 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %73, ptr noundef nonnull dereferenceable(7) @.str.17) #12
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %234, label %87

87:                                               ; preds = %84
  %88 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %73, ptr noundef nonnull dereferenceable(9) @.str.18) #12
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %234, label %90

90:                                               ; preds = %87
  %91 = icmp eq i32 %5, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %90
  %93 = or i32 %77, 1
  %94 = tail call ptr @Perl_gv_autoload_pvn(ptr noundef %76, ptr noundef %73, i64 noundef %81, i32 noundef %93) #13
  br label %95

95:                                               ; preds = %90, %92
  %96 = phi ptr [ %94, %92 ], [ null, %90 ]
  %97 = icmp eq ptr %96, null
  %98 = icmp ne i32 %6, 0
  %99 = and i1 %98, %97
  br i1 %99, label %100, label %234

100:                                              ; preds = %95
  %101 = icmp eq ptr %78, null
  br i1 %101, label %179, label %102

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.hv, ptr %78, i64 0, i32 2
  %104 = load i32, ptr %103, align 4, !tbaa !50
  %105 = and i32 %104, 33554432
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %156, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.hv, ptr %78, i64 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !13
  %110 = load ptr, ptr %78, align 8, !tbaa !52
  %111 = getelementptr inbounds %struct.xpvhv, ptr %110, i64 0, i32 3
  %112 = load i64, ptr %111, align 8, !tbaa !53
  %113 = getelementptr ptr, ptr %109, i64 %112
  %114 = getelementptr ptr, ptr %113, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !13
  %116 = icmp eq ptr %115, null
  br i1 %116, label %156, label %117

117:                                              ; preds = %107
  %118 = getelementptr i8, ptr %113, i64 36
  %119 = load i32, ptr %118, align 4, !tbaa !55
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %117
  %122 = load ptr, ptr %115, align 8, !tbaa !13
  %123 = icmp eq ptr %122, null
  br i1 %123, label %156, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr %115, align 8, !tbaa !13
  %126 = icmp eq ptr %125, null
  br i1 %126, label %156, label %127

127:                                              ; preds = %117, %124
  %128 = phi ptr [ %122, %124 ], [ %115, %117 ]
  %129 = phi ptr [ %125, %124 ], [ %115, %117 ]
  %130 = getelementptr inbounds %struct.hek, ptr %129, i64 0, i32 1
  %131 = load i32, ptr %130, align 4, !tbaa !16
  %132 = icmp eq i32 %131, 8
  br i1 %132, label %133, label %156

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.hek, ptr %128, i64 0, i32 2
  %135 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %134, ptr noundef nonnull dereferenceable(8) @.str.19, i64 8)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %156

137:                                              ; preds = %133
  %138 = load ptr, ptr @PL_incgv, align 8, !tbaa !12
  %139 = getelementptr inbounds %struct.gv, ptr %138, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !13
  %141 = getelementptr inbounds %struct.gp, ptr %140, i64 0, i32 5
  %142 = load ptr, ptr %141, align 8, !tbaa !23
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %138, i32 noundef 12) #13
  %146 = load ptr, ptr %139, align 8, !tbaa !13
  %147 = getelementptr inbounds %struct.gp, ptr %146, i64 0, i32 5
  %148 = load ptr, ptr %147, align 8, !tbaa !23
  br label %149

149:                                              ; preds = %137, %144
  %150 = phi ptr [ %148, %144 ], [ %142, %137 ]
  %151 = tail call ptr @Perl_hv_common(ptr noundef %150, ptr noundef null, ptr noundef nonnull @.str.20, i64 noundef 10, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef 0) #11
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  tail call void @Perl_require_pv(ptr noundef nonnull @.str.20) #11
  %154 = tail call ptr @Perl_gv_fetchmeth_pvn(ptr noundef nonnull %78, ptr noundef %73, i64 noundef %81, i32 noundef 0, i32 noundef %77) #13
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %234

156:                                              ; preds = %102, %107, %121, %124, %153, %149, %133, %127
  %157 = lshr exact i32 %7, 29
  %158 = load i32, ptr %103, align 4, !tbaa !50
  %159 = and i32 %158, 33554432
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %177, label %161

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.hv, ptr %78, i64 0, i32 3
  %163 = load ptr, ptr %162, align 8, !tbaa !13
  %164 = load ptr, ptr %78, align 8, !tbaa !52
  %165 = getelementptr inbounds %struct.xpvhv, ptr %164, i64 0, i32 3
  %166 = load i64, ptr %165, align 8, !tbaa !53
  %167 = getelementptr ptr, ptr %163, i64 %166
  %168 = getelementptr ptr, ptr %167, i64 1
  %169 = load ptr, ptr %168, align 8, !tbaa !13
  %170 = icmp eq ptr %169, null
  br i1 %170, label %177, label %171

171:                                              ; preds = %161
  %172 = getelementptr i8, ptr %167, i64 36
  %173 = load i32, ptr %172, align 4, !tbaa !55
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %171
  %176 = load ptr, ptr %169, align 8, !tbaa !12
  br label %177

177:                                              ; preds = %175, %161, %156, %171
  %178 = phi ptr [ %176, %175 ], [ null, %161 ], [ null, %156 ], [ %169, %171 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.21, i32 noundef %157, i64 noundef %81, ptr noundef %73, ptr noundef %178) #11
  br label %234

179:                                              ; preds = %100
  br i1 %72, label %186, label %180

180:                                              ; preds = %179
  %181 = ptrtoint ptr %75 to i64
  %182 = ptrtoint ptr %1 to i64
  %183 = sub i64 %181, %182
  %184 = or disjoint i32 %7, 524288
  %185 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %1, i64 noundef %183, i32 noundef %184) #11
  br label %186

186:                                              ; preds = %179, %180
  %187 = phi ptr [ %185, %180 ], [ %0, %179 ]
  %188 = lshr exact i32 %7, 29
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.22, i32 noundef %188, i64 noundef %81, ptr noundef %73, ptr noundef %187, ptr noundef %187) #11
  br label %234

189:                                              ; preds = %71
  %190 = icmp eq i32 %5, 0
  br i1 %190, label %234, label %191

191:                                              ; preds = %189
  %192 = getelementptr inbounds %struct.gv, ptr %82, i64 0, i32 3
  %193 = load ptr, ptr %192, align 8, !tbaa !13
  %194 = getelementptr inbounds %struct.gp, ptr %193, i64 0, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !29
  %196 = load ptr, ptr %195, align 8, !tbaa !30
  %197 = getelementptr inbounds %struct.xpvcv, ptr %196, i64 0, i32 6
  %198 = load ptr, ptr %197, align 8, !tbaa !13
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %234

200:                                              ; preds = %191
  %201 = getelementptr inbounds %struct.xpvcv, ptr %196, i64 0, i32 12
  %202 = load i32, ptr %201, align 4, !tbaa !44
  %203 = and i32 %202, 65664
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %200
  %206 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %195) #13
  %207 = getelementptr inbounds %struct.gv, ptr %206, i64 0, i32 3
  %208 = load ptr, ptr %207, align 8, !tbaa !13
  %209 = getelementptr inbounds %struct.gp, ptr %208, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !29
  %211 = icmp eq ptr %210, %195
  %212 = select i1 %211, ptr %206, ptr %82
  br label %213

213:                                              ; preds = %205, %200
  %214 = phi ptr [ %82, %200 ], [ %212, %205 ]
  %215 = load ptr, ptr %214, align 8, !tbaa !14
  %216 = getelementptr inbounds %struct.xpvgv, ptr %215, i64 0, i32 5
  %217 = load ptr, ptr %216, align 8, !tbaa !13
  %218 = getelementptr inbounds %struct.xpvgv, ptr %215, i64 0, i32 4
  %219 = load ptr, ptr %218, align 8, !tbaa !13
  %220 = getelementptr inbounds %struct.hek, ptr %219, i64 0, i32 2
  %221 = getelementptr inbounds %struct.hek, ptr %219, i64 0, i32 1
  %222 = load i32, ptr %221, align 4, !tbaa !16
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, ptr %220, i64 %223
  %225 = getelementptr inbounds i8, ptr %224, i64 1
  %226 = load i8, ptr %225, align 1, !tbaa !13
  %227 = and i8 %226, 1
  %228 = zext nneg i8 %227 to i32
  %229 = shl nuw nsw i32 %228, 29
  %230 = or disjoint i32 %229, 1
  %231 = tail call ptr @Perl_gv_autoload_pvn(ptr noundef %217, ptr noundef nonnull %220, i64 noundef %223, i32 noundef %230) #13
  %232 = icmp eq ptr %231, null
  %233 = select i1 %232, ptr %82, ptr %231
  br label %234

234:                                              ; preds = %84, %87, %177, %153, %186, %95, %189, %213, %191
  %235 = phi ptr [ %82, %189 ], [ null, %186 ], [ %96, %95 ], [ %82, %191 ], [ %233, %213 ], [ null, %177 ], [ %154, %153 ], [ @PL_sv_yes, %87 ], [ @PL_sv_yes, %84 ]
  ret ptr %235
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_autoload_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = and i32 %3, 536870912
  %7 = icmp eq i32 %6, 0
  %8 = icmp eq i64 %2, 8
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %1, ptr noundef nonnull dereferenceable(8) @S_autoload, i64 8)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %283, label %12

12:                                               ; preds = %9, %4
  %13 = icmp eq ptr %0, null
  br i1 %13, label %68, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !21
  %17 = and i32 %16, 252
  %18 = icmp ult i32 %17, 12
  br i1 %18, label %19, label %39

19:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  store i64 0, ptr %5, align 8, !tbaa !49
  %20 = and i32 %16, 2098176
  %21 = icmp eq i32 %20, 1024
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load ptr, ptr %0, align 8, !tbaa !48
  %24 = getelementptr inbounds %struct.xpv, ptr %23, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !24
  store i64 %25, ptr %5, align 8, !tbaa !49
  %26 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !13
  br label %32

28:                                               ; preds = %19
  %29 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 34) #11
  %30 = load i64, ptr %5, align 8, !tbaa !49
  %31 = load i32, ptr %15, align 4, !tbaa !50
  br label %32

32:                                               ; preds = %28, %22
  %33 = phi i32 [ %16, %22 ], [ %31, %28 ]
  %34 = phi i64 [ %25, %22 ], [ %30, %28 ]
  %35 = phi ptr [ %27, %22 ], [ %29, %28 ]
  %36 = and i32 %33, 536870912
  %37 = or disjoint i32 %36, 524288
  %38 = call ptr @Perl_newSVpvn_flags(ptr noundef %35, i64 noundef %34, i32 noundef %37) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  br label %62

39:                                               ; preds = %14
  %40 = and i32 %16, 33554432
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !13
  %45 = load ptr, ptr %0, align 8, !tbaa !52
  %46 = getelementptr inbounds %struct.xpvhv, ptr %45, i64 0, i32 3
  %47 = load i64, ptr %46, align 8, !tbaa !53
  %48 = getelementptr ptr, ptr %44, i64 %47
  %49 = getelementptr ptr, ptr %48, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !13
  %51 = icmp eq ptr %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %42
  %53 = getelementptr i8, ptr %48, i64 36
  %54 = load i32, ptr %53, align 4, !tbaa !55
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %50, align 8, !tbaa !12
  br label %58

58:                                               ; preds = %52, %39, %42, %56
  %59 = phi ptr [ %57, %56 ], [ null, %42 ], [ null, %39 ], [ %50, %52 ]
  %60 = tail call ptr @Perl_newSVhek(ptr noundef %59) #11
  %61 = tail call ptr @Perl_sv_2mortal(ptr noundef %60) #11
  br label %62

62:                                               ; preds = %58, %32
  %63 = phi ptr [ %38, %32 ], [ %61, %58 ]
  %64 = phi ptr [ null, %32 ], [ %0, %58 ]
  %65 = and i32 %3, 4096
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  call void @Perl_sv_catpvn_flags(ptr noundef %63, ptr noundef nonnull @.str.16, i64 noundef 7, i32 noundef 2) #11
  br label %68

68:                                               ; preds = %62, %67, %12
  %69 = phi ptr [ %63, %67 ], [ %63, %62 ], [ null, %12 ]
  %70 = phi ptr [ %64, %67 ], [ %64, %62 ], [ null, %12 ]
  %71 = and i32 %3, 536875008
  %72 = call ptr @Perl_gv_fetchmeth_pvn(ptr noundef %70, ptr noundef nonnull @S_autoload, i64 noundef 8, i32 noundef 0, i32 noundef %71) #13
  %73 = icmp eq ptr %72, null
  br i1 %73, label %283, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.gv, ptr %72, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !13
  %77 = getelementptr inbounds %struct.gp, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !29
  %79 = load ptr, ptr %78, align 8, !tbaa !30
  %80 = getelementptr inbounds %struct.xpvcv, ptr %79, i64 0, i32 6
  %81 = load ptr, ptr %80, align 8, !tbaa !13
  %82 = icmp eq ptr %81, null
  br i1 %82, label %283, label %83

83:                                               ; preds = %74
  %84 = and i32 %3, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.gp, ptr %76, i64 0, i32 3
  %88 = load i32, ptr %87, align 8, !tbaa !35
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load ptr, ptr %72, align 8, !tbaa !14
  %92 = getelementptr inbounds %struct.xpvgv, ptr %91, i64 0, i32 5
  %93 = load ptr, ptr %92, align 8, !tbaa !13
  %94 = icmp eq ptr %93, %70
  br i1 %94, label %98, label %95

95:                                               ; preds = %90, %86
  %96 = lshr exact i32 %6, 29
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 2, ptr noundef nonnull @.str.23, ptr noundef %69, i32 noundef %96, i64 noundef %2, ptr noundef %1) #11
  %97 = load ptr, ptr %78, align 8, !tbaa !30
  br label %98

98:                                               ; preds = %95, %90, %83
  %99 = phi ptr [ %97, %95 ], [ %79, %90 ], [ %79, %83 ]
  %100 = getelementptr inbounds %struct.xpvcv, ptr %99, i64 0, i32 12
  %101 = load i32, ptr %100, align 4, !tbaa !44
  %102 = and i32 %101, 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %239, label %104

104:                                              ; preds = %98
  call void @Perl_cvstash_set(ptr noundef nonnull %78, ptr noundef %70) #13
  %105 = getelementptr inbounds %struct.cv, ptr %78, i64 0, i32 2
  %106 = load i32, ptr %105, align 4, !tbaa !69
  %107 = and i32 %106, 1024
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %228, label %109

109:                                              ; preds = %104
  %110 = call ptr @Perl_newSVpvn_flags(ptr noundef %1, i64 noundef %2, i32 noundef %6) #11
  %111 = load i32, ptr %105, align 4, !tbaa !69
  %112 = and i32 %111, 1024
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %142, label %114

114:                                              ; preds = %109
  %115 = and i32 %111, 255
  %116 = icmp eq i32 %115, 13
  br i1 %116, label %117, label %128

117:                                              ; preds = %114
  %118 = load ptr, ptr %78, align 8, !tbaa !30
  %119 = getelementptr inbounds %struct.xpvcv, ptr %118, i64 0, i32 12
  %120 = load i32, ptr %119, align 4, !tbaa !44
  %121 = and i32 %120, 8192
  %122 = icmp eq i32 %121, 0
  %123 = getelementptr inbounds %struct.cv, ptr %78, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !13
  br i1 %122, label %125, label %135

125:                                              ; preds = %117
  %126 = and i32 %111, 536870912
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %169, label %150

128:                                              ; preds = %114
  %129 = getelementptr inbounds %struct.cv, ptr %78, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !13
  %131 = and i32 %111, 536870912
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %169, label %133

133:                                              ; preds = %128
  %134 = load ptr, ptr %78, align 8, !tbaa !30
  br label %163

135:                                              ; preds = %117
  %136 = getelementptr inbounds %struct.xpv, ptr %118, i64 0, i32 2
  %137 = load i64, ptr %136, align 8, !tbaa !24
  %138 = getelementptr inbounds i8, ptr %124, i64 %137
  %139 = getelementptr inbounds i8, ptr %138, i64 1
  %140 = and i32 %111, 536870912
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %169, label %150

142:                                              ; preds = %109
  %143 = and i32 %111, 536870912
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %175

145:                                              ; preds = %142
  %146 = load ptr, ptr %110, align 8, !tbaa !48
  %147 = getelementptr inbounds %struct.xpv, ptr %146, i64 0, i32 2
  %148 = load i64, ptr %147, align 8, !tbaa !24
  %149 = add i64 %148, 1
  store i64 %149, ptr %147, align 8, !tbaa !24
  br label %208

150:                                              ; preds = %125, %135
  %151 = phi ptr [ %139, %135 ], [ %124, %125 ]
  %152 = load ptr, ptr %78, align 8, !tbaa !30
  %153 = getelementptr inbounds %struct.xpvcv, ptr %152, i64 0, i32 12
  %154 = load i32, ptr %153, align 4, !tbaa !44
  %155 = and i32 %154, 8192
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %150
  %158 = getelementptr inbounds %struct.xpv, ptr %152, i64 0, i32 3
  %159 = load i64, ptr %158, align 8, !tbaa !13
  %160 = getelementptr inbounds %struct.xpv, ptr %152, i64 0, i32 2
  %161 = load i64, ptr %160, align 8, !tbaa !24
  %162 = sub i64 %159, %161
  br label %175

163:                                              ; preds = %133, %150
  %164 = phi ptr [ %152, %150 ], [ %134, %133 ]
  %165 = phi ptr [ %151, %150 ], [ %130, %133 ]
  %166 = getelementptr inbounds %struct.xpv, ptr %164, i64 0, i32 2
  %167 = load i64, ptr %166, align 8, !tbaa !24
  %168 = add i64 %167, 2
  br label %175

169:                                              ; preds = %125, %135, %128
  %170 = phi ptr [ %139, %135 ], [ %124, %125 ], [ %130, %128 ]
  %171 = load ptr, ptr %110, align 8, !tbaa !48
  %172 = getelementptr inbounds %struct.xpv, ptr %171, i64 0, i32 2
  %173 = load i64, ptr %172, align 8, !tbaa !24
  %174 = add i64 %173, 1
  store i64 %174, ptr %172, align 8, !tbaa !24
  br label %186

175:                                              ; preds = %163, %157, %142
  %176 = phi ptr [ %151, %157 ], [ %165, %163 ], [ null, %142 ]
  %177 = phi i64 [ %162, %157 ], [ %168, %163 ], [ 2, %142 ]
  %178 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %110, i32 noundef 0, i64 noundef %177) #11
  %179 = load i32, ptr %105, align 4, !tbaa !69
  %180 = and i32 %179, 1024
  %181 = icmp eq i32 %180, 0
  %182 = load ptr, ptr %110, align 8, !tbaa !48
  %183 = getelementptr inbounds %struct.xpv, ptr %182, i64 0, i32 2
  %184 = load i64, ptr %183, align 8, !tbaa !24
  %185 = add i64 %184, 1
  store i64 %185, ptr %183, align 8, !tbaa !24
  br i1 %181, label %208, label %186

186:                                              ; preds = %169, %175
  %187 = phi i64 [ %173, %169 ], [ %184, %175 ]
  %188 = phi ptr [ %170, %169 ], [ %176, %175 ]
  %189 = phi i32 [ %111, %169 ], [ %179, %175 ]
  %190 = and i32 %189, 255
  %191 = icmp eq i32 %190, 13
  %192 = load ptr, ptr %78, align 8, !tbaa !30
  br i1 %191, label %193, label %205

193:                                              ; preds = %186
  %194 = getelementptr inbounds %struct.xpvcv, ptr %192, i64 0, i32 12
  %195 = load i32, ptr %194, align 4, !tbaa !44
  %196 = and i32 %195, 8192
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %205, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.xpv, ptr %192, i64 0, i32 3
  %200 = load i64, ptr %199, align 8, !tbaa !13
  %201 = getelementptr inbounds %struct.xpv, ptr %192, i64 0, i32 2
  %202 = load i64, ptr %201, align 8, !tbaa !24
  %203 = add i64 %200, -2
  %204 = sub i64 %203, %202
  br label %208

205:                                              ; preds = %193, %186
  %206 = getelementptr inbounds %struct.xpv, ptr %192, i64 0, i32 2
  %207 = load i64, ptr %206, align 8, !tbaa !24
  br label %208

208:                                              ; preds = %145, %175, %198, %205
  %209 = phi i64 [ %187, %198 ], [ %187, %205 ], [ %184, %175 ], [ %148, %145 ]
  %210 = phi ptr [ %188, %198 ], [ %188, %205 ], [ %176, %175 ], [ null, %145 ]
  %211 = phi i32 [ %189, %198 ], [ %189, %205 ], [ %179, %175 ], [ %111, %145 ]
  %212 = phi i64 [ %204, %198 ], [ %207, %205 ], [ 0, %175 ], [ 0, %145 ]
  %213 = lshr i32 %211, 15
  %214 = and i32 %213, 16384
  %215 = xor i32 %214, 16384
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %110, ptr noundef %210, i64 noundef %212, i32 noundef %215) #11
  %216 = getelementptr inbounds %struct.sv, ptr %110, i64 0, i32 2
  %217 = load i32, ptr %216, align 4, !tbaa !6
  %218 = or i32 %217, 524288
  store i32 %218, ptr %216, align 4, !tbaa !6
  call void @Perl_sv_setsv_flags(ptr noundef nonnull %78, ptr noundef nonnull %110, i32 noundef 1536) #11
  %219 = load i32, ptr %216, align 4, !tbaa !6
  %220 = and i32 %219, -524289
  store i32 %220, ptr %216, align 4, !tbaa !6
  call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %110) #13
  %221 = load ptr, ptr %78, align 8, !tbaa !30
  %222 = getelementptr inbounds %struct.xpv, ptr %221, i64 0, i32 2
  %223 = load i64, ptr %222, align 8, !tbaa !24
  %224 = add i64 %223, 1
  %225 = getelementptr inbounds %struct.xpv, ptr %221, i64 0, i32 3
  store i64 %224, ptr %225, align 8, !tbaa !13
  %226 = load ptr, ptr %78, align 8, !tbaa !30
  %227 = getelementptr inbounds %struct.xpv, ptr %226, i64 0, i32 2
  store i64 %209, ptr %227, align 8, !tbaa !24
  br label %234

228:                                              ; preds = %104
  call void @Perl_sv_setpvn(ptr noundef nonnull %78, ptr noundef %1, i64 noundef %2) #11
  %229 = load i32, ptr %105, align 4, !tbaa !69
  %230 = and i32 %229, -536888321
  br i1 %7, label %233, label %231

231:                                              ; preds = %228
  %232 = or disjoint i32 %230, 536870912
  store i32 %232, ptr %105, align 4, !tbaa !69
  br label %234

233:                                              ; preds = %228
  store i32 %230, ptr %105, align 4, !tbaa !69
  br label %234

234:                                              ; preds = %231, %233, %208
  %235 = load ptr, ptr %78, align 8, !tbaa !30
  %236 = getelementptr inbounds %struct.xpvcv, ptr %235, i64 0, i32 12
  %237 = load i32, ptr %236, align 4, !tbaa !44
  %238 = or i32 %237, 8192
  store i32 %238, ptr %236, align 4, !tbaa !44
  br label %239

239:                                              ; preds = %234, %98
  %240 = phi i32 [ %238, %234 ], [ %101, %98 ]
  %241 = phi ptr [ %235, %234 ], [ %99, %98 ]
  %242 = and i32 %240, 32768
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %246, label %244

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.xpvcv, ptr %241, i64 0, i32 4
  br label %250

246:                                              ; preds = %239
  %247 = call fastcc ptr @S_CvGV(ptr noundef nonnull %78) #13
  %248 = load ptr, ptr %247, align 8, !tbaa !14
  %249 = getelementptr inbounds %struct.xpvgv, ptr %248, i64 0, i32 5
  br label %250

250:                                              ; preds = %246, %244
  %251 = phi ptr [ %245, %244 ], [ %249, %246 ]
  %252 = load ptr, ptr %251, align 8, !tbaa !13
  %253 = call ptr @Perl_hv_common_key_len(ptr noundef %252, ptr noundef nonnull @S_autoload, i32 noundef 8, i32 noundef 48, ptr noundef null, i32 noundef 0) #11
  %254 = load ptr, ptr %253, align 8, !tbaa !12
  call void @Perl_push_scope() #11
  %255 = getelementptr inbounds %struct.gv, ptr %254, i64 0, i32 2
  %256 = load i32, ptr %255, align 4, !tbaa !18
  %257 = and i32 %256, 255
  %258 = icmp eq i32 %257, 9
  br i1 %258, label %263, label %259

259:                                              ; preds = %250
  call void @Perl_gv_init_pvn(ptr noundef nonnull %254, ptr noundef %252, ptr noundef nonnull @S_autoload, i64 noundef 8, i32 noundef 0) #13
  %260 = call ptr @Perl_newSV(i64 noundef 0) #11
  %261 = getelementptr inbounds %struct.gv, ptr %254, i64 0, i32 3
  %262 = load ptr, ptr %261, align 8, !tbaa !13
  store ptr %260, ptr %262, align 8, !tbaa !19
  br label %263

263:                                              ; preds = %259, %250
  call void @Perl_pop_scope() #11
  %264 = getelementptr inbounds %struct.gv, ptr %254, i64 0, i32 3
  %265 = load ptr, ptr %264, align 8, !tbaa !13
  %266 = load ptr, ptr %265, align 8, !tbaa !12
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %272

268:                                              ; preds = %263
  %269 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %254, i32 noundef 0) #13
  %270 = load ptr, ptr %264, align 8, !tbaa !13
  %271 = load ptr, ptr %270, align 8, !tbaa !12
  br label %272

272:                                              ; preds = %263, %268
  %273 = phi ptr [ %271, %268 ], [ %266, %263 ]
  %274 = load i8, ptr @PL_tainting, align 1, !tbaa !70, !range !72, !noundef !73
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %272
  call void @Perl_sv_untaint(ptr noundef %273) #11
  br label %277

277:                                              ; preds = %272, %276
  call void @Perl_sv_setsv_flags(ptr noundef %273, ptr noundef %69, i32 noundef 1538) #11
  call void @Perl_sv_catpvn_flags(ptr noundef %273, ptr noundef nonnull @.str.24, i64 noundef 2, i32 noundef 2) #11
  %278 = select i1 %7, i32 16512, i32 32896
  call void @Perl_sv_catpvn_flags(ptr noundef %273, ptr noundef %1, i64 noundef %2, i32 noundef %278) #11
  br i1 %7, label %283, label %279

279:                                              ; preds = %277
  %280 = getelementptr inbounds %struct.sv, ptr %273, i64 0, i32 2
  %281 = load i32, ptr %280, align 4, !tbaa !6
  %282 = or i32 %281, 536870912
  store i32 %282, ptr %280, align 4, !tbaa !6
  br label %283

283:                                              ; preds = %277, %279, %74, %68, %9
  %284 = phi ptr [ null, %9 ], [ null, %68 ], [ null, %74 ], [ %72, %279 ], [ %72, %277 ]
  ret ptr %284
}

; Function Attrs: optsize
declare void @Perl_require_pv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_autoload_sv(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !6
  %7 = and i32 %6, 2098176
  %8 = icmp eq i32 %7, 1024
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.xpv, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !24
  store i64 %12, ptr %4, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  br label %19

15:                                               ; preds = %3
  %16 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef 2) #11
  %17 = load i32, ptr %5, align 4, !tbaa !6
  %18 = load i64, ptr %4, align 8, !tbaa !49
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi i64 [ %12, %9 ], [ %18, %15 ]
  %21 = phi i32 [ %6, %9 ], [ %17, %15 ]
  %22 = phi ptr [ %14, %9 ], [ %16, %15 ]
  %23 = and i32 %21, 536870912
  %24 = or i32 %23, %2
  %25 = call ptr @Perl_gv_autoload_pvn(ptr noundef %0, ptr noundef %22, i64 noundef %20, i32 noundef %24) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_autoload_pv(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %5 = tail call ptr @Perl_gv_autoload_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %4, i32 noundef %2) #13
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVhek(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_untaint(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_stashpv(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %4 = trunc i64 %3 to i32
  %5 = tail call ptr @Perl_gv_stashpvn(ptr noundef %0, i32 noundef %4, i32 noundef %1) #13
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_gv_stashsvpvn_cached(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = load ptr, ptr @PL_stashcache, align 8, !tbaa !12
  %7 = zext i32 %2 to i64
  %8 = lshr i32 %3, 29
  %9 = and i32 %8, 1
  %10 = tail call ptr @Perl_hv_common(ptr noundef %6, ptr noundef %0, ptr noundef %1, i64 noundef %7, i32 noundef %9, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.he, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = getelementptr inbounds %struct.xpviv, ptr %15, i64 0, i32 4
  %17 = load i64, ptr %16, align 8, !tbaa !13
  %18 = inttoptr i64 %17 to ptr
  br label %71

19:                                               ; preds = %4
  %20 = and i32 %3, 4096
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %71

22:                                               ; preds = %19
  %23 = icmp eq ptr %0, null
  br i1 %23, label %54, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !6
  %27 = and i32 %26, 65280
  %28 = icmp ne i32 %27, 0
  %29 = and i32 %26, 255
  %30 = icmp eq i32 %29, 8
  %31 = or i1 %28, %30
  %32 = and i32 %26, 16777471
  %33 = icmp eq i32 %32, 16777226
  %34 = or i1 %33, %31
  br i1 %34, label %35, label %54

35:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %36 = and i32 %26, 2098176
  %37 = icmp eq i32 %36, 1024
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load ptr, ptr %0, align 8, !tbaa !48
  %40 = getelementptr inbounds %struct.xpv, ptr %39, i64 0, i32 2
  %41 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !13
  br label %46

43:                                               ; preds = %35
  %44 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 34) #11
  %45 = load i32, ptr %25, align 4, !tbaa !6
  br label %46

46:                                               ; preds = %43, %38
  %47 = phi i32 [ %26, %38 ], [ %45, %43 ]
  %48 = phi ptr [ %40, %38 ], [ %5, %43 ]
  %49 = phi ptr [ %42, %38 ], [ %44, %43 ]
  %50 = load i64, ptr %48, align 8, !tbaa !49
  %51 = trunc i64 %50 to i32
  %52 = and i32 %47, 536870912
  %53 = or i32 %52, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  br label %54

54:                                               ; preds = %24, %46, %22
  %55 = phi i32 [ %53, %46 ], [ %3, %22 ], [ %3, %24 ]
  %56 = phi i32 [ %51, %46 ], [ %2, %22 ], [ 0, %24 ]
  %57 = phi ptr [ %49, %46 ], [ %1, %22 ], [ @.str.7, %24 ]
  %58 = call fastcc ptr @S_gv_stashpvn_internal(ptr noundef %57, i32 noundef %56, i32 noundef %55) #13
  %59 = icmp ne ptr %58, null
  %60 = icmp ne i32 %56, 0
  %61 = and i1 %60, %59
  br i1 %61, label %62, label %71

62:                                               ; preds = %54
  %63 = ptrtoint ptr %58 to i64
  %64 = call ptr @Perl_newSViv(i64 noundef %63) #11
  %65 = load ptr, ptr @PL_stashcache, align 8, !tbaa !12
  %66 = and i32 %55, 536870912
  %67 = icmp eq i32 %66, 0
  %68 = sub nsw i32 0, %56
  %69 = select i1 %67, i32 %56, i32 %68
  %70 = call ptr @Perl_hv_common_key_len(ptr noundef %65, ptr noundef %57, i32 noundef %69, i32 noundef 36, ptr noundef %64, i32 noundef 0) #11
  br label %71

71:                                               ; preds = %54, %62, %19, %12
  %72 = phi ptr [ %18, %12 ], [ null, %19 ], [ %58, %62 ], [ %58, %54 ]
  ret ptr %72
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_gv_stashpvn_internal(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #14
  %5 = add i32 %1, 2
  %6 = zext i32 %5 to i64
  %7 = icmp ult i32 %5, 129
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @Perl_safesysmalloc(i64 noundef %6) #11
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi ptr [ %9, %8 ], [ %4, %3 ]
  %12 = zext i32 %1 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %0, i64 %12, i1 false)
  %13 = getelementptr inbounds i8, ptr %11, i64 %12
  store i8 58, ptr %13, align 1, !tbaa !13
  %14 = add i32 %1, 1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %11, i64 %15
  store i8 58, ptr %16, align 1, !tbaa !13
  %17 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef %11, i64 noundef %6, i32 noundef %2, i32 noundef 12) #13
  %18 = icmp eq ptr %11, %4
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  call void @Perl_safesysfree(ptr noundef nonnull %11) #11
  br label %20

20:                                               ; preds = %19, %10
  %21 = icmp eq ptr %17, null
  br i1 %21, label %77, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.gv, ptr %17, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !18
  %25 = and i32 %24, 49152
  %26 = icmp eq i32 %25, 32768
  br i1 %26, label %27, label %77

27:                                               ; preds = %22
  %28 = and i32 %24, 255
  %29 = add nsw i32 %28, -9
  %30 = icmp ult i32 %29, 2
  br i1 %30, label %31, label %77

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.gv, ptr %17, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !13
  %34 = getelementptr inbounds %struct.gp, ptr %33, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !23
  %36 = and i32 %2, -536874209
  %37 = icmp ne i32 %36, 0
  %38 = icmp ne ptr %35, null
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %40, label %77

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.hv, ptr %35, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !50
  %43 = and i32 %42, 33554432
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %62, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.hv, ptr %35, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !13
  %48 = load ptr, ptr %35, align 8, !tbaa !52
  %49 = getelementptr inbounds %struct.xpvhv, ptr %48, i64 0, i32 3
  %50 = load i64, ptr %49, align 8, !tbaa !53
  %51 = getelementptr ptr, ptr %47, i64 %50
  %52 = getelementptr ptr, ptr %51, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !13
  %54 = icmp eq ptr %53, null
  br i1 %54, label %62, label %55

55:                                               ; preds = %45
  %56 = getelementptr i8, ptr %51, i64 36
  %57 = load i32, ptr %56, align 4, !tbaa !55
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %77, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %53, align 8, !tbaa !12
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %77

62:                                               ; preds = %40, %45, %59
  %63 = and i32 %2, 536870912
  call void @Perl_hv_name_set(ptr noundef nonnull %35, ptr noundef %0, i32 noundef %1, i32 noundef %63) #11
  %64 = load ptr, ptr %17, align 8, !tbaa !14
  %65 = getelementptr inbounds %struct.xpvgv, ptr %64, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !13
  %67 = getelementptr inbounds %struct.hv, ptr %66, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !13
  %69 = load ptr, ptr %66, align 8, !tbaa !52
  %70 = getelementptr inbounds %struct.xpvhv, ptr %69, i64 0, i32 3
  %71 = load i64, ptr %70, align 8, !tbaa !53
  %72 = getelementptr ptr, ptr %68, i64 %71
  %73 = getelementptr i8, ptr %72, i64 36
  %74 = load i32, ptr %73, align 4, !tbaa !55
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %62
  call void @Perl_mro_package_moved(ptr noundef nonnull %35, ptr noundef null, ptr noundef nonnull %17, i32 noundef 1) #11
  br label %77

77:                                               ; preds = %27, %76, %62, %59, %55, %31, %20, %22
  %78 = phi ptr [ null, %27 ], [ null, %22 ], [ null, %20 ], [ null, %31 ], [ %35, %55 ], [ %35, %59 ], [ %35, %62 ], [ %35, %76 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #14
  ret ptr %78
}

; Function Attrs: optsize
declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchpvn_flags(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  store ptr %0, ptr %5, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  store ptr null, ptr %6, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  store ptr null, ptr %8, align 8, !tbaa !12
  %9 = and i32 %2, 48
  %10 = and i32 %2, 64
  %11 = and i32 %2, -536874209
  %12 = and i32 %2, 536870912
  %13 = and i32 %2, 1024
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds i8, ptr %0, i64 %1
  %16 = and i32 %2, 128
  %17 = icmp eq i32 %16, 0
  %18 = icmp ne i64 %1, 0
  %19 = and i1 %18, %17
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i64 %1, ptr %7, align 8, !tbaa !49
  br label %31

21:                                               ; preds = %4
  %22 = call fastcc zeroext i1 @S_parse_gv_stash_name(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %11) #13
  br i1 %22, label %23, label %248

23:                                               ; preds = %21
  %24 = load ptr, ptr %5, align 8, !tbaa !12
  %25 = icmp eq ptr %24, %15
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load ptr, ptr %6, align 8, !tbaa !12
  br label %248

28:                                               ; preds = %23
  %29 = load ptr, ptr %8, align 8, !tbaa !12
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %20, %28
  %32 = phi ptr [ %0, %20 ], [ %24, %28 ]
  %33 = load i64, ptr %7, align 8
  %34 = call fastcc zeroext i1 @S_find_default_stash(ptr noundef nonnull %8, ptr noundef %32, i64 noundef %33, i32 noundef %12, i32 noundef %11, i32 noundef %3) #13
  br i1 %34, label %35, label %248

35:                                               ; preds = %31
  %36 = load ptr, ptr %8, align 8, !tbaa !12
  br label %39

37:                                               ; preds = %28
  %38 = load i64, ptr %7, align 8
  br label %39

39:                                               ; preds = %35, %37
  %40 = phi ptr [ %24, %37 ], [ %32, %35 ]
  %41 = phi ptr [ %29, %37 ], [ %36, %35 ]
  %42 = phi i64 [ %38, %37 ], [ %33, %35 ]
  %43 = icmp ne i32 %12, 0
  %44 = trunc i64 %42 to i32
  %45 = sub nsw i32 0, %44
  %46 = select i1 %43, i32 %45, i32 %44
  %47 = icmp eq i32 %11, 0
  %48 = select i1 %47, i32 32, i32 48
  %49 = tail call ptr @Perl_hv_common_key_len(ptr noundef %41, ptr noundef %40, i32 noundef %46, i32 noundef %48, ptr noundef null, i32 noundef 0) #11
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %39
  %52 = load ptr, ptr %49, align 8, !tbaa !12
  %53 = icmp eq ptr %52, @PL_sv_undef
  br i1 %53, label %54, label %57

54:                                               ; preds = %51, %39
  br i1 %14, label %248, label %55

55:                                               ; preds = %54
  %56 = tail call ptr @Perl_newSV(i64 noundef 0) #11
  br label %57

57:                                               ; preds = %51, %55
  %58 = phi ptr [ %56, %55 ], [ %52, %51 ]
  %59 = phi i1 [ true, %55 ], [ false, %51 ]
  store ptr %58, ptr %6, align 8, !tbaa !12
  %60 = getelementptr inbounds %struct.gv, ptr %58, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !18
  %62 = and i32 %61, 255
  %63 = icmp eq i32 %62, 9
  br i1 %63, label %64, label %94

64:                                               ; preds = %57
  br i1 %47, label %248, label %65

65:                                               ; preds = %64
  %66 = load ptr, ptr %58, align 8, !tbaa !14
  %67 = getelementptr inbounds %struct.xpvgv, ptr %66, i64 0, i32 2
  %68 = load i64, ptr %67, align 8, !tbaa !27
  %69 = or i64 %68, 2
  store i64 %69, ptr %67, align 8, !tbaa !27
  tail call fastcc void @S_gv_init_svtype(ptr noundef nonnull %58, i32 noundef %3) #13
  %70 = icmp eq i64 %42, 1
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load ptr, ptr @PL_defstash, align 8, !tbaa !12
  %73 = icmp eq ptr %41, %72
  br i1 %73, label %74, label %248

74:                                               ; preds = %71
  tail call fastcc void @S_maybe_multimagic_gv(ptr noundef nonnull %58, ptr noundef %40, i32 noundef %3) #13
  br label %248

75:                                               ; preds = %65
  %76 = icmp eq i64 %42, 3
  %77 = icmp eq i32 %3, 11
  %78 = and i1 %77, %76
  br i1 %78, label %79, label %248

79:                                               ; preds = %75
  %80 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %40, ptr noundef nonnull dereferenceable(4) @.str.6, i64 noundef 3) #12
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %248

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.gv, ptr %58, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !13
  %85 = getelementptr inbounds %struct.gp, ptr %84, i64 0, i32 6
  %86 = load ptr, ptr %85, align 8, !tbaa !22
  %87 = icmp eq ptr %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.av, ptr %86, i64 0, i32 2
  %90 = load i32, ptr %89, align 4, !tbaa !74
  %91 = and i32 %90, 4194304
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %248

93:                                               ; preds = %88, %82
  tail call fastcc void @S_gv_magicalize_isa(ptr noundef nonnull %58) #13
  br label %248

94:                                               ; preds = %57
  %95 = icmp eq i32 %9, 0
  br i1 %95, label %96, label %248

96:                                               ; preds = %94
  %97 = icmp eq i32 %10, 0
  %98 = and i32 %61, 2048
  %99 = icmp eq i32 %98, 0
  %100 = or i1 %97, %99
  br i1 %100, label %101, label %248

101:                                              ; preds = %96
  %102 = and i32 %61, 65280
  %103 = icmp ne i32 %102, 0
  %104 = icmp eq i32 %62, 8
  %105 = or i1 %103, %104
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = and i32 %61, 16777471
  %108 = icmp eq i32 %107, 16777226
  br label %109

109:                                              ; preds = %106, %101
  %110 = phi i1 [ true, %101 ], [ %108, %106 ]
  %111 = and i32 %2, 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %109
  %114 = lshr exact i32 %12, 29
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 24, ptr noundef nonnull @.str.25, i32 noundef %114, i64 noundef %1, ptr noundef %0) #11
  br label %115

115:                                              ; preds = %113, %109
  %116 = and i32 %2, 536870914
  tail call void @Perl_gv_init_pvn(ptr noundef nonnull %58, ptr noundef %41, ptr noundef %40, i64 noundef %42, i32 noundef %116) #13
  %117 = load ptr, ptr @PL_curcop, align 8, !tbaa !12
  %118 = getelementptr inbounds %struct.cop, ptr %117, i64 0, i32 10
  %119 = load i32, ptr %118, align 8, !tbaa !75
  %120 = and i32 %119, 8
  %121 = icmp eq i32 %120, 0
  %122 = and i1 %43, %121
  %123 = load i8, ptr %40, align 1, !tbaa !13
  br i1 %122, label %130, label %124

124:                                              ; preds = %115
  %125 = zext i8 %123 to i64
  %126 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !21
  %128 = and i32 %127, 81920
  %129 = icmp eq i32 %128, 81920
  br i1 %129, label %154, label %161

130:                                              ; preds = %115
  %131 = icmp sgt i8 %123, -1
  br i1 %131, label %132, label %138

132:                                              ; preds = %130
  %133 = zext nneg i8 %123 to i64
  %134 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !21
  %136 = and i32 %135, 65536
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %161, label %154

138:                                              ; preds = %130
  %139 = and i8 %123, -2
  %140 = icmp eq i8 %139, -62
  br i1 %140, label %141, label %152

141:                                              ; preds = %138
  %142 = shl i8 %123, 6
  %143 = getelementptr inbounds i8, ptr %40, i64 1
  %144 = load i8, ptr %143, align 1, !tbaa !13
  %145 = and i8 %144, 63
  %146 = or disjoint i8 %145, %142
  %147 = zext i8 %146 to i64
  %148 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !21
  %150 = and i32 %149, 65536
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %161, label %154

152:                                              ; preds = %138
  %153 = tail call zeroext i1 @Perl__is_utf8_perl_idstart(ptr noundef nonnull %40) #11
  br i1 %153, label %154, label %161

154:                                              ; preds = %141, %132, %152, %124
  %155 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 14) #11
  br i1 %155, label %161, label %156

156:                                              ; preds = %154
  %157 = load ptr, ptr %58, align 8, !tbaa !14
  %158 = getelementptr inbounds %struct.xpvgv, ptr %157, i64 0, i32 2
  %159 = load i64, ptr %158, align 8, !tbaa !27
  %160 = or i64 %159, 2
  store i64 %160, ptr %158, align 8, !tbaa !27
  br label %161

161:                                              ; preds = %141, %132, %156, %154, %152, %124
  br i1 %59, label %162, label %201

162:                                              ; preds = %161
  %163 = getelementptr inbounds %struct.gv, ptr %58, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !13
  %165 = getelementptr inbounds %struct.gp, ptr %164, i64 0, i32 6
  %166 = load ptr, ptr %165, align 8, !tbaa !22
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %199

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.gp, ptr %164, i64 0, i32 5
  %170 = load ptr, ptr %169, align 8, !tbaa !23
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %199

172:                                              ; preds = %168
  %173 = load i32, ptr %60, align 4, !tbaa !6
  %174 = and i32 %173, 255
  %175 = add nsw i32 %174, -9
  %176 = icmp ult i32 %175, 2
  br i1 %176, label %177, label %181

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.gp, ptr %164, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !76
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %199

181:                                              ; preds = %172, %177
  %182 = getelementptr inbounds %struct.gp, ptr %164, i64 0, i32 2
  %183 = load ptr, ptr %182, align 8, !tbaa !29
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %199

185:                                              ; preds = %181
  %186 = load ptr, ptr %164, align 8, !tbaa !19
  %187 = icmp eq ptr %186, null
  br i1 %187, label %201, label %188

188:                                              ; preds = %185
  %189 = getelementptr inbounds %struct.sv, ptr %186, i64 0, i32 2
  %190 = load i32, ptr %189, align 4, !tbaa !6
  %191 = and i32 %190, 65280
  %192 = icmp ne i32 %191, 0
  %193 = and i32 %190, 255
  %194 = icmp eq i32 %193, 8
  %195 = or i1 %192, %194
  %196 = and i32 %190, 16777471
  %197 = icmp eq i32 %196, 16777226
  %198 = or i1 %197, %195
  br i1 %198, label %199, label %201

199:                                              ; preds = %188, %181, %177, %168, %162
  %200 = tail call ptr @Perl_hv_common_key_len(ptr noundef %41, ptr noundef nonnull %40, i32 noundef %44, i32 noundef 36, ptr noundef nonnull %58, i32 noundef 0) #11
  br label %201

201:                                              ; preds = %188, %199, %185, %161
  %202 = tail call fastcc zeroext i1 @S_gv_magicalize(ptr noundef nonnull %58, ptr noundef %41, ptr noundef nonnull %40, i64 noundef %42, i1 noundef zeroext %59, i32 noundef %3) #13
  br i1 %202, label %203, label %246

203:                                              ; preds = %201
  %204 = getelementptr inbounds %struct.gv, ptr %58, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !13
  %206 = getelementptr inbounds %struct.gp, ptr %205, i64 0, i32 6
  %207 = load ptr, ptr %206, align 8, !tbaa !22
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %246

209:                                              ; preds = %203
  %210 = getelementptr inbounds %struct.gp, ptr %205, i64 0, i32 5
  %211 = load ptr, ptr %210, align 8, !tbaa !23
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %246

213:                                              ; preds = %209
  %214 = load i32, ptr %60, align 4, !tbaa !6
  %215 = and i32 %214, 255
  %216 = add nsw i32 %215, -9
  %217 = icmp ult i32 %216, 2
  br i1 %217, label %218, label %222

218:                                              ; preds = %213
  %219 = getelementptr inbounds %struct.gp, ptr %205, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !76
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %246

222:                                              ; preds = %213, %218
  %223 = getelementptr inbounds %struct.gp, ptr %205, i64 0, i32 2
  %224 = load ptr, ptr %223, align 8, !tbaa !29
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %246

226:                                              ; preds = %222
  %227 = load ptr, ptr %205, align 8, !tbaa !19
  %228 = icmp eq ptr %227, null
  br i1 %228, label %245, label %229

229:                                              ; preds = %226
  %230 = getelementptr inbounds %struct.sv, ptr %227, i64 0, i32 2
  %231 = load i32, ptr %230, align 4, !tbaa !6
  %232 = and i32 %231, 65280
  %233 = icmp ne i32 %232, 0
  %234 = and i32 %231, 255
  %235 = icmp eq i32 %234, 8
  %236 = or i1 %233, %235
  %237 = and i32 %231, 16777471
  %238 = icmp eq i32 %237, 16777226
  %239 = or i1 %238, %236
  br i1 %239, label %246, label %240

240:                                              ; preds = %229
  %241 = and i32 %231, 14680064
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %240
  %244 = tail call ptr @Perl_hv_common_key_len(ptr noundef %41, ptr noundef nonnull %40, i32 noundef %44, i32 noundef 36, ptr noundef nonnull %58, i32 noundef 0) #11
  br label %246

245:                                              ; preds = %240, %226
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %58) #13
  br label %248

246:                                              ; preds = %201, %243, %229, %222, %218, %209, %203
  %247 = select i1 %110, i32 13, i32 %3
  tail call fastcc void @S_gv_init_svtype(ptr noundef nonnull %58, i32 noundef %247) #13
  br label %248

248:                                              ; preds = %71, %246, %245, %64, %75, %79, %88, %93, %74, %96, %94, %54, %31, %21, %26
  %249 = phi ptr [ %27, %26 ], [ null, %21 ], [ null, %31 ], [ null, %54 ], [ %58, %94 ], [ %58, %96 ], [ %58, %74 ], [ %58, %93 ], [ %58, %88 ], [ %58, %79 ], [ %58, %75 ], [ %58, %64 ], [ null, %245 ], [ %58, %246 ], [ %58, %71 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret ptr %249
}

; Function Attrs: optsize
declare void @Perl_hv_name_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_mro_package_moved(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchpv(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %5 = tail call ptr @Perl_gv_fetchpvn_flags(ptr noundef %0, i64 noundef %4, i32 noundef %1, i32 noundef %2) #13
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchsv(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !6
  %7 = and i32 %6, 2098176
  %8 = icmp eq i32 %7, 1024
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.xpv, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !24
  store i64 %12, ptr %4, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  br label %22

15:                                               ; preds = %3
  %16 = and i32 %1, 2048
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 34, i32 0
  %19 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %18) #11
  %20 = load i64, ptr %4, align 8, !tbaa !49
  %21 = load i32, ptr %5, align 4, !tbaa !6
  br label %22

22:                                               ; preds = %15, %9
  %23 = phi i32 [ %6, %9 ], [ %21, %15 ]
  %24 = phi i64 [ %12, %9 ], [ %20, %15 ]
  %25 = phi ptr [ %14, %9 ], [ %19, %15 ]
  %26 = and i32 %23, 536870912
  %27 = or i32 %26, %1
  %28 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef %25, i64 noundef %24, i32 noundef %27, i32 noundef %2) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @S_parse_gv_stash_name(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = getelementptr inbounds i8, ptr %4, i64 %5
  %10 = getelementptr inbounds i8, ptr %9, i64 -1
  %11 = icmp ugt i64 %5, 2
  %12 = load ptr, ptr %2, align 8, !tbaa !12
  br i1 %11, label %13, label %60

13:                                               ; preds = %8
  %14 = load i8, ptr %12, align 1, !tbaa !13
  %15 = icmp eq i8 %14, 42
  br i1 %15, label %16, label %60

16:                                               ; preds = %13
  %17 = load ptr, ptr @PL_curcop, align 8, !tbaa !12
  %18 = getelementptr inbounds %struct.cop, ptr %17, i64 0, i32 10
  %19 = load i32, ptr %18, align 8, !tbaa !75
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  %22 = icmp ne i32 %6, 0
  %23 = and i1 %22, %21
  %24 = getelementptr inbounds i8, ptr %12, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !13
  br i1 %23, label %32, label %26

26:                                               ; preds = %16
  %27 = zext i8 %25 to i64
  %28 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !21
  %30 = and i32 %29, 81920
  %31 = icmp eq i32 %30, 81920
  br i1 %31, label %57, label %60

32:                                               ; preds = %16
  %33 = icmp sgt i8 %25, -1
  br i1 %33, label %34, label %40

34:                                               ; preds = %32
  %35 = zext nneg i8 %25 to i64
  %36 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !21
  %38 = and i32 %37, 65536
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %60, label %57

40:                                               ; preds = %32
  %41 = and i8 %25, -2
  %42 = icmp eq i8 %41, -62
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = shl i8 %25, 6
  %45 = getelementptr inbounds i8, ptr %12, i64 2
  %46 = load i8, ptr %45, align 1, !tbaa !13
  %47 = and i8 %46, 63
  %48 = or disjoint i8 %47, %44
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !21
  %52 = and i32 %51, 65536
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %60, label %57

54:                                               ; preds = %40
  %55 = tail call zeroext i1 @Perl__is_utf8_perl_idstart(ptr noundef nonnull %24) #11
  %56 = load ptr, ptr %2, align 8, !tbaa !12
  br i1 %55, label %57, label %60

57:                                               ; preds = %54, %43, %34, %26
  %58 = phi ptr [ %12, %43 ], [ %12, %34 ], [ %12, %26 ], [ %56, %54 ]
  %59 = getelementptr inbounds i8, ptr %58, i64 1
  store ptr %59, ptr %2, align 8, !tbaa !12
  br label %60

60:                                               ; preds = %43, %34, %57, %54, %26, %13, %8
  %61 = phi ptr [ %12, %43 ], [ %12, %34 ], [ %59, %57 ], [ %56, %54 ], [ %12, %26 ], [ %12, %13 ], [ %12, %8 ]
  %62 = icmp ult ptr %61, %9
  br i1 %62, label %63, label %261

63:                                               ; preds = %60
  %64 = icmp eq i32 %6, 0
  %65 = icmp eq i32 %7, 0
  %66 = select i1 %65, i32 32, i32 48
  %67 = and i32 %7, 2
  %68 = or i32 %67, %6
  %69 = ptrtoint ptr %4 to i64
  br label %70

70:                                               ; preds = %63, %256
  %71 = phi ptr [ %61, %63 ], [ %257, %256 ]
  %72 = phi ptr [ %61, %63 ], [ %259, %256 ]
  %73 = icmp ult ptr %72, %10
  br i1 %73, label %74, label %256

74:                                               ; preds = %70
  %75 = load i8, ptr %72, align 1, !tbaa !13
  switch i8 %75, label %256 [
    i8 58, label %76
    i8 39, label %80
  ]

76:                                               ; preds = %74
  %77 = getelementptr inbounds i8, ptr %72, i64 1
  %78 = load i8, ptr %77, align 1, !tbaa !13
  %79 = icmp eq i8 %78, 58
  br i1 %79, label %80, label %256

80:                                               ; preds = %74, %76
  %81 = load ptr, ptr %0, align 8, !tbaa !12
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load ptr, ptr @PL_defstash, align 8, !tbaa !12
  store ptr %84, ptr %0, align 8, !tbaa !12
  %85 = icmp eq ptr %84, null
  br i1 %85, label %267, label %86

86:                                               ; preds = %80, %83
  %87 = phi ptr [ %84, %83 ], [ %81, %80 ]
  %88 = getelementptr inbounds %struct.hv, ptr %87, i64 0, i32 1
  %89 = load i32, ptr %88, align 8, !tbaa !77
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %267, label %91

91:                                               ; preds = %86
  %92 = load ptr, ptr %2, align 8, !tbaa !12
  %93 = ptrtoint ptr %72 to i64
  %94 = ptrtoint ptr %92 to i64
  %95 = sub i64 %93, %94
  store i64 %95, ptr %3, align 8, !tbaa !49
  %96 = icmp ugt ptr %72, %4
  br i1 %96, label %97, label %242

97:                                               ; preds = %91
  %98 = load i8, ptr %72, align 1, !tbaa !13
  %99 = icmp eq i8 %98, 58
  %100 = add i64 %95, 2
  br i1 %99, label %101, label %102

101:                                              ; preds = %97
  store i64 %100, ptr %3, align 8, !tbaa !49
  br label %113

102:                                              ; preds = %97
  %103 = tail call ptr @Perl_safesysmalloc(i64 noundef %100) #11
  %104 = load ptr, ptr %2, align 8, !tbaa !12
  %105 = load i64, ptr %3, align 8, !tbaa !49
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %103, ptr align 1 %104, i64 %105, i1 false)
  %106 = load i64, ptr %3, align 8, !tbaa !49
  %107 = add i64 %106, 1
  store i64 %107, ptr %3, align 8, !tbaa !49
  %108 = getelementptr inbounds i8, ptr %103, i64 %106
  store i8 58, ptr %108, align 1, !tbaa !13
  %109 = load i64, ptr %3, align 8, !tbaa !49
  %110 = add i64 %109, 1
  store i64 %110, ptr %3, align 8, !tbaa !49
  %111 = getelementptr inbounds i8, ptr %103, i64 %109
  store i8 58, ptr %111, align 1, !tbaa !13
  %112 = load ptr, ptr %0, align 8, !tbaa !12
  br label %113

113:                                              ; preds = %102, %101
  %114 = phi ptr [ %87, %101 ], [ %112, %102 ]
  %115 = phi ptr [ %92, %101 ], [ %103, %102 ]
  %116 = load i64, ptr %3, align 8, !tbaa !49
  %117 = trunc i64 %116 to i32
  %118 = sub nsw i32 0, %117
  %119 = select i1 %64, i32 %117, i32 %118
  %120 = tail call ptr @Perl_hv_common_key_len(ptr noundef %114, ptr noundef %115, i32 noundef %119, i32 noundef %66, ptr noundef null, i32 noundef 0) #11
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %113
  store ptr null, ptr %1, align 8, !tbaa !12
  br label %141

123:                                              ; preds = %113
  %124 = load ptr, ptr %120, align 8, !tbaa !12
  store ptr %124, ptr %1, align 8, !tbaa !12
  %125 = icmp eq ptr %124, null
  %126 = icmp eq ptr %124, @PL_sv_undef
  %127 = or i1 %125, %126
  br i1 %127, label %141, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.gv, ptr %124, i64 0, i32 2
  %130 = load i32, ptr %129, align 4, !tbaa !18
  %131 = and i32 %130, 255
  %132 = icmp eq i32 %131, 9
  br i1 %132, label %136, label %133

133:                                              ; preds = %128
  %134 = load ptr, ptr %0, align 8, !tbaa !12
  %135 = load i64, ptr %3, align 8, !tbaa !49
  tail call void @Perl_gv_init_pvn(ptr noundef nonnull %124, ptr noundef %134, ptr noundef %115, i64 noundef %135, i32 noundef %68) #13
  br label %141

136:                                              ; preds = %128
  %137 = load ptr, ptr %124, align 8, !tbaa !14
  %138 = getelementptr inbounds %struct.xpvgv, ptr %137, i64 0, i32 2
  %139 = load i64, ptr %138, align 8, !tbaa !27
  %140 = or i64 %139, 2
  store i64 %140, ptr %138, align 8, !tbaa !27
  br label %141

141:                                              ; preds = %122, %133, %136, %123
  %142 = load ptr, ptr %2, align 8, !tbaa !12
  %143 = icmp eq ptr %115, %142
  br i1 %143, label %145, label %144

144:                                              ; preds = %141
  tail call void @Perl_safesysfree(ptr noundef %115) #11
  br label %145

145:                                              ; preds = %144, %141
  %146 = load ptr, ptr %1, align 8, !tbaa !12
  %147 = icmp eq ptr %146, null
  %148 = icmp eq ptr %146, @PL_sv_undef
  %149 = or i1 %147, %148
  br i1 %149, label %267, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.gv, ptr %146, i64 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !13
  %153 = getelementptr inbounds %struct.gp, ptr %152, i64 0, i32 5
  %154 = load ptr, ptr %153, align 8, !tbaa !23
  store ptr %154, ptr %0, align 8, !tbaa !12
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %217

156:                                              ; preds = %150
  %157 = tail call ptr @Perl_newSV_type(i32 noundef 12) #11
  %158 = load ptr, ptr %1, align 8, !tbaa !12
  %159 = getelementptr inbounds %struct.gv, ptr %158, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !13
  %161 = getelementptr inbounds %struct.gp, ptr %160, i64 0, i32 5
  store ptr %157, ptr %161, align 8, !tbaa !23
  store ptr %157, ptr %0, align 8, !tbaa !12
  %162 = getelementptr inbounds %struct.hv, ptr %157, i64 0, i32 2
  %163 = load i32, ptr %162, align 4, !tbaa !50
  %164 = and i32 %163, 33554432
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %183, label %166

166:                                              ; preds = %156
  %167 = getelementptr inbounds %struct.hv, ptr %157, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !13
  %169 = load ptr, ptr %157, align 8, !tbaa !52
  %170 = getelementptr inbounds %struct.xpvhv, ptr %169, i64 0, i32 3
  %171 = load i64, ptr %170, align 8, !tbaa !53
  %172 = getelementptr ptr, ptr %168, i64 %171
  %173 = getelementptr ptr, ptr %172, i64 1
  %174 = load ptr, ptr %173, align 8, !tbaa !13
  %175 = icmp eq ptr %174, null
  br i1 %175, label %183, label %176

176:                                              ; preds = %166
  %177 = getelementptr i8, ptr %172, i64 36
  %178 = load i32, ptr %177, align 4, !tbaa !55
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %242, label %180

180:                                              ; preds = %176
  %181 = load ptr, ptr %174, align 8, !tbaa !12
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %242

183:                                              ; preds = %156, %166, %180
  %184 = load ptr, ptr %1, align 8, !tbaa !12
  %185 = load ptr, ptr %184, align 8, !tbaa !14
  %186 = getelementptr inbounds %struct.xpvgv, ptr %185, i64 0, i32 5
  %187 = load ptr, ptr %186, align 8, !tbaa !13
  %188 = load ptr, ptr @PL_defstash, align 8, !tbaa !12
  %189 = icmp eq ptr %187, %188
  br i1 %189, label %190, label %198

190:                                              ; preds = %183
  %191 = load i64, ptr %3, align 8, !tbaa !49
  %192 = icmp eq i64 %191, 6
  br i1 %192, label %193, label %198

193:                                              ; preds = %190
  %194 = load ptr, ptr %2, align 8, !tbaa !12
  %195 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %194, ptr noundef nonnull dereferenceable(5) @.str.12, i64 noundef 4) #12
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  tail call void @Perl_hv_name_set(ptr noundef nonnull %157, ptr noundef nonnull @.str.12, i32 noundef 4, i32 noundef 0) #11
  br label %201

198:                                              ; preds = %193, %190, %183
  %199 = sub i64 %93, %69
  %200 = trunc i64 %199 to i32
  tail call void @Perl_hv_name_set(ptr noundef nonnull %157, ptr noundef %4, i32 noundef %200, i32 noundef %6) #11
  br label %201

201:                                              ; preds = %198, %197
  %202 = load ptr, ptr %1, align 8, !tbaa !12
  %203 = load ptr, ptr %202, align 8, !tbaa !14
  %204 = getelementptr inbounds %struct.xpvgv, ptr %203, i64 0, i32 5
  %205 = load ptr, ptr %204, align 8, !tbaa !13
  %206 = getelementptr inbounds %struct.hv, ptr %205, i64 0, i32 3
  %207 = load ptr, ptr %206, align 8, !tbaa !13
  %208 = load ptr, ptr %205, align 8, !tbaa !52
  %209 = getelementptr inbounds %struct.xpvhv, ptr %208, i64 0, i32 3
  %210 = load i64, ptr %209, align 8, !tbaa !53
  %211 = getelementptr ptr, ptr %207, i64 %210
  %212 = getelementptr i8, ptr %211, i64 36
  %213 = load i32, ptr %212, align 4, !tbaa !55
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %242, label %215

215:                                              ; preds = %201
  %216 = load ptr, ptr %0, align 8, !tbaa !12
  tail call void @Perl_mro_package_moved(ptr noundef %216, ptr noundef null, ptr noundef nonnull %202, i32 noundef 1) #11
  br label %242

217:                                              ; preds = %150
  %218 = getelementptr inbounds %struct.hv, ptr %154, i64 0, i32 2
  %219 = load i32, ptr %218, align 4, !tbaa !50
  %220 = and i32 %219, 33554432
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %239, label %222

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.hv, ptr %154, i64 0, i32 3
  %224 = load ptr, ptr %223, align 8, !tbaa !13
  %225 = load ptr, ptr %154, align 8, !tbaa !52
  %226 = getelementptr inbounds %struct.xpvhv, ptr %225, i64 0, i32 3
  %227 = load i64, ptr %226, align 8, !tbaa !53
  %228 = getelementptr ptr, ptr %224, i64 %227
  %229 = getelementptr ptr, ptr %228, i64 1
  %230 = load ptr, ptr %229, align 8, !tbaa !13
  %231 = icmp eq ptr %230, null
  br i1 %231, label %239, label %232

232:                                              ; preds = %222
  %233 = getelementptr i8, ptr %228, i64 36
  %234 = load i32, ptr %233, align 4, !tbaa !55
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %242, label %236

236:                                              ; preds = %232
  %237 = load ptr, ptr %230, align 8, !tbaa !12
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %242

239:                                              ; preds = %217, %222, %236
  %240 = sub i64 %93, %69
  %241 = trunc i64 %240 to i32
  tail call void @Perl_hv_name_set(ptr noundef nonnull %154, ptr noundef %4, i32 noundef %241, i32 noundef %6) #11
  br label %242

242:                                              ; preds = %232, %236, %176, %180, %239, %215, %201, %91
  %243 = load i8, ptr %72, align 1, !tbaa !13
  %244 = icmp eq i8 %243, 58
  %245 = zext i1 %244 to i64
  %246 = getelementptr inbounds i8, ptr %72, i64 %245
  %247 = getelementptr inbounds i8, ptr %246, i64 1
  store ptr %247, ptr %2, align 8, !tbaa !12
  %248 = icmp eq ptr %247, %9
  br i1 %248, label %249, label %256

249:                                              ; preds = %242
  %250 = load ptr, ptr %1, align 8, !tbaa !12
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %267

252:                                              ; preds = %249
  %253 = load ptr, ptr @PL_defstash, align 8, !tbaa !12
  %254 = tail call ptr @Perl_hv_common(ptr noundef %253, ptr noundef null, ptr noundef nonnull @.str.26, i64 noundef 6, i32 noundef 0, i32 noundef 48, ptr noundef null, i32 noundef 0) #11
  %255 = load ptr, ptr %254, align 8, !tbaa !12
  store ptr %255, ptr %1, align 8, !tbaa !12
  br label %267

256:                                              ; preds = %74, %76, %70, %242
  %257 = phi ptr [ %247, %242 ], [ %71, %70 ], [ %71, %76 ], [ %71, %74 ]
  %258 = phi ptr [ %246, %242 ], [ %72, %70 ], [ %72, %76 ], [ %72, %74 ]
  %259 = getelementptr inbounds i8, ptr %258, i64 1
  %260 = icmp ult ptr %259, %9
  br i1 %260, label %70, label %261, !llvm.loop !78

261:                                              ; preds = %256, %60
  %262 = phi ptr [ %61, %60 ], [ %257, %256 ]
  %263 = phi ptr [ %61, %60 ], [ %259, %256 ]
  %264 = ptrtoint ptr %263 to i64
  %265 = ptrtoint ptr %262 to i64
  %266 = sub i64 %264, %265
  store i64 %266, ptr %3, align 8, !tbaa !49
  br label %267

267:                                              ; preds = %145, %83, %86, %249, %252, %261
  %268 = phi i1 [ true, %261 ], [ true, %252 ], [ true, %249 ], [ false, %86 ], [ false, %83 ], [ false, %145 ]
  ret i1 %268
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i1 @S_find_default_stash(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = tail call fastcc zeroext i1 @S_gv_is_in_main(ptr noundef %1, i64 noundef %2, i32 noundef %3) #13
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = load ptr, ptr @PL_defstash, align 8, !tbaa !12
  store ptr %9, ptr %0, align 8, !tbaa !12
  br label %87

10:                                               ; preds = %6
  %11 = load ptr, ptr @PL_curcop, align 8, !tbaa !12
  %12 = icmp eq ptr %11, @PL_compiling
  br i1 %12, label %13, label %82

13:                                               ; preds = %10
  %14 = load ptr, ptr @PL_curstash, align 8, !tbaa !12
  store ptr %14, ptr %0, align 8, !tbaa !12
  %15 = icmp eq i32 %4, 0
  br i1 %15, label %87, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !75
  %18 = freeze i32 %17
  %19 = and i32 %18, 1024
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %85, label %21

21:                                               ; preds = %16
  switch i32 %5, label %22 [
    i32 15, label %85
    i32 14, label %85
    i32 13, label %85
    i32 9, label %85
  ]

22:                                               ; preds = %21
  %23 = icmp eq i64 %2, 1
  %24 = icmp eq i32 %5, 3
  %25 = and i1 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i8, ptr %1, align 1, !tbaa !13
  %28 = add i8 %27, -97
  %29 = icmp ult i8 %28, 2
  br i1 %29, label %85, label %30

30:                                               ; preds = %26, %22
  %31 = icmp ne i32 %3, 0
  %32 = trunc i64 %2 to i32
  %33 = sub nsw i32 0, %32
  %34 = select i1 %31, i32 %33, i32 %32
  %35 = tail call ptr @Perl_hv_common_key_len(ptr noundef %14, ptr noundef %1, i32 noundef %34, i32 noundef 32, ptr noundef null, i32 noundef 0) #11
  %36 = icmp eq ptr %35, null
  br i1 %36, label %90, label %37

37:                                               ; preds = %30
  %38 = load ptr, ptr %35, align 8, !tbaa !12
  %39 = icmp eq ptr %38, @PL_sv_undef
  br i1 %39, label %90, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.gv, ptr %38, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !18
  %43 = and i32 %42, 255
  %44 = icmp eq i32 %43, 9
  br i1 %44, label %45, label %90

45:                                               ; preds = %40
  br i1 %24, label %46, label %52

46:                                               ; preds = %45
  %47 = load ptr, ptr %38, align 8, !tbaa !14
  %48 = getelementptr inbounds %struct.xpvgv, ptr %47, i64 0, i32 2
  %49 = load i64, ptr %48, align 8, !tbaa !27
  %50 = and i64 %49, 16
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %65, label %85

52:                                               ; preds = %45
  switch i32 %5, label %85 [
    i32 11, label %53
    i32 12, label %59
  ]

53:                                               ; preds = %52
  %54 = load ptr, ptr %38, align 8, !tbaa !14
  %55 = getelementptr inbounds %struct.xpvgv, ptr %54, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !27
  %57 = and i64 %56, 32
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %65, label %85

59:                                               ; preds = %52
  %60 = load ptr, ptr %38, align 8, !tbaa !14
  %61 = getelementptr inbounds %struct.xpvgv, ptr %60, i64 0, i32 2
  %62 = load i64, ptr %61, align 8, !tbaa !27
  %63 = and i64 %62, 64
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %59, %53, %46
  %66 = icmp eq i32 %5, 11
  %67 = icmp eq i32 %5, 12
  %68 = select i1 %67, i32 37, i32 36
  %69 = select i1 %66, i32 64, i32 %68
  %70 = zext i1 %31 to i32
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 12, ptr noundef nonnull @.str.27, i32 noundef %69, i32 noundef %70, i64 noundef %2, ptr noundef %1) #11
  %71 = load ptr, ptr %35, align 8, !tbaa !12
  %72 = getelementptr inbounds %struct.gv, ptr %71, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !13
  %74 = getelementptr inbounds %struct.gp, ptr %73, i64 0, i32 3
  %75 = load i32, ptr %74, align 8, !tbaa !35
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %65
  %78 = getelementptr inbounds %struct.gp, ptr %73, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !29
  %80 = icmp eq ptr %79, null
  br i1 %80, label %90, label %81

81:                                               ; preds = %77
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 12, ptr noundef nonnull @.str.28, i32 noundef %70, i64 noundef %2, ptr noundef %1) #11
  br label %90

82:                                               ; preds = %10
  %83 = getelementptr inbounds %struct.cop, ptr %11, i64 0, i32 8
  %84 = load ptr, ptr %83, align 8, !tbaa !68
  store ptr %84, ptr %0, align 8, !tbaa !12
  br label %87

85:                                               ; preds = %21, %21, %21, %21, %16, %46, %52, %59, %26, %53
  %86 = load ptr, ptr %0, align 8, !tbaa !12
  br label %87

87:                                               ; preds = %85, %82, %13, %8
  %88 = phi ptr [ %86, %85 ], [ %84, %82 ], [ %14, %13 ], [ %9, %8 ]
  %89 = icmp eq ptr %88, null
  br i1 %89, label %91, label %113

90:                                               ; preds = %77, %81, %65, %30, %37, %40
  store ptr null, ptr %0, align 8, !tbaa !12
  br label %91

91:                                               ; preds = %90, %87
  %92 = icmp ne i32 %4, 0
  %93 = load i8, ptr @PL_in_clean_all, align 1, !range !72
  %94 = icmp eq i8 %93, 0
  %95 = select i1 %92, i1 %94, i1 false
  br i1 %95, label %96, label %118

96:                                               ; preds = %91
  switch i32 %5, label %98 [
    i32 3, label %97
    i32 11, label %101
  ]

97:                                               ; preds = %96
  br label %101

98:                                               ; preds = %96
  %99 = icmp eq i32 %5, 12
  %100 = select i1 %99, ptr @.str.32, ptr @.str.7
  br label %101

101:                                              ; preds = %96, %97, %98
  %102 = phi ptr [ @.str.30, %97 ], [ %100, %98 ], [ @.str.31, %96 ]
  %103 = icmp ne i32 %3, 0
  %104 = zext i1 %103 to i32
  %105 = tail call ptr (ptr, ...) @Perl_mess(ptr noundef nonnull @.str.29, ptr noundef nonnull %102, i32 noundef %104, i64 noundef %2, ptr noundef %1, ptr noundef nonnull %102, i32 noundef %104, i64 noundef %2, ptr noundef %1) #11
  tail call void @Perl_qerror(ptr noundef %105) #11
  %106 = tail call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.33, i64 noundef 8, i32 noundef 2, i32 noundef 12) #13
  %107 = icmp eq ptr %106, null
  br i1 %107, label %118, label %108

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.gv, ptr %106, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !13
  %111 = getelementptr inbounds %struct.gp, ptr %110, i64 0, i32 5
  %112 = load ptr, ptr %111, align 8, !tbaa !23
  store ptr %112, ptr %0, align 8, !tbaa !12
  br label %113

113:                                              ; preds = %108, %87
  %114 = phi ptr [ %112, %108 ], [ %88, %87 ]
  %115 = getelementptr inbounds %struct.hv, ptr %114, i64 0, i32 1
  %116 = load i32, ptr %115, align 8, !tbaa !77
  %117 = icmp ne i32 %116, 0
  br label %118

118:                                              ; preds = %101, %113, %91
  %119 = phi i1 [ false, %91 ], [ %117, %113 ], [ false, %101 ]
  ret i1 %119
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_gv_init_svtype(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  switch i32 %1, label %37 [
    i32 15, label %3
    i32 11, label %21
    i32 12, label %29
    i32 0, label %44
    i32 13, label %44
    i32 14, label %44
    i32 9, label %44
  ]

3:                                                ; preds = %2
  %4 = icmp eq ptr %0, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !6
  %8 = and i32 %7, 255
  %9 = add nsw i32 %8, -9
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %19

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gp, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !76
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %44

19:                                               ; preds = %5, %3, %11, %15
  %20 = tail call ptr @Perl_gv_add_by_type(ptr noundef %0, i32 noundef 15) #13
  br label %44

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !13
  %24 = getelementptr inbounds %struct.gp, ptr %23, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !22
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 11) #13
  br label %44

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !13
  %32 = getelementptr inbounds %struct.gp, ptr %31, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !23
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 12) #13
  br label %44

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !13
  %40 = load ptr, ptr %39, align 8, !tbaa !19
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 0) #13
  br label %44

44:                                               ; preds = %42, %37, %29, %21, %15, %2, %2, %2, %2, %35, %27, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_maybe_multimagic_gv(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  switch i32 %2, label %23 [
    i32 12, label %4
    i32 9, label %4
    i32 3, label %10
  ]

4:                                                ; preds = %3, %3
  %5 = load i8, ptr %1, align 1, !tbaa !13
  switch i8 %5, label %14 [
    i8 33, label %6
    i8 45, label %8
    i8 43, label %8
  ]

6:                                                ; preds = %4
  %7 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.35, i64 noundef 5) #11
  tail call fastcc void @S_require_tie_mod(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef %7, ptr noundef nonnull @.str.36, i32 noundef 1) #13
  br label %14

8:                                                ; preds = %4, %4
  %9 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.37, i64 noundef 23) #11
  tail call fastcc void @S_require_tie_mod(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %9, ptr noundef nonnull @.str.36, i32 noundef 0) #13
  br label %14

10:                                               ; preds = %3
  %11 = load i8, ptr %1, align 1, !tbaa !13
  switch i8 %11, label %18 [
    i8 42, label %12
    i8 35, label %12
  ]

12:                                               ; preds = %10, %10
  %13 = zext nneg i8 %11 to i32
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 7170, ptr noundef nonnull @.str.38, i32 noundef %13) #11
  br label %16

14:                                               ; preds = %4, %6, %8
  %15 = icmp eq i32 %2, 9
  br i1 %15, label %16, label %23

16:                                               ; preds = %14, %12
  %17 = load i8, ptr %1, align 1, !tbaa !13
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi i8 [ %17, %16 ], [ %11, %10 ]
  %20 = icmp eq i8 %19, 91
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.39, i64 noundef 7) #11
  tail call fastcc void @S_require_tie_mod(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %22, ptr noundef nonnull @.str.40, i32 noundef 0) #13
  br label %23

23:                                               ; preds = %14, %3, %21, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_gv_magicalize_isa(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.gp, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 11) #13
  %9 = load ptr, ptr %2, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.gp, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  br label %12

12:                                               ; preds = %1, %7
  %13 = phi ptr [ %11, %7 ], [ %5, %1 ]
  %14 = load ptr, ptr %0, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct.xpvgv, ptr %14, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !27
  %17 = or i64 %16, 2
  store i64 %17, ptr %15, align 8, !tbaa !27
  tail call void @Perl_sv_magic(ptr noundef %13, ptr noundef nonnull %0, i32 noundef 73, ptr noundef null, i32 noundef 0) #11
  ret void
}

; Function Attrs: optsize
declare zeroext i1 @Perl__is_utf8_perl_idstart(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @S_gv_magicalize(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca i64, align 8
  %8 = load ptr, ptr @PL_defstash, align 8, !tbaa !12
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %83, label %10

10:                                               ; preds = %6
  %11 = icmp eq i64 %3, 0
  br i1 %11, label %455, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds i8, ptr %2, i64 1
  %14 = load i8, ptr %2, align 1, !tbaa !13
  switch i8 %14, label %44 [
    i8 69, label %15
    i8 73, label %23
    i8 86, label %27
    i8 97, label %35
    i8 98, label %35
  ]

15:                                               ; preds = %12
  %16 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(6) @.str.43, i64 noundef 5) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %455

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !14
  %20 = getelementptr inbounds %struct.xpvgv, ptr %19, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !27
  %22 = or i64 %21, 2
  store i64 %22, ptr %20, align 8, !tbaa !27
  br label %455

23:                                               ; preds = %12
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(3) @.str.44) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %455

26:                                               ; preds = %23
  tail call fastcc void @S_gv_magicalize_isa(ptr noundef %0) #13
  br label %455

27:                                               ; preds = %12
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(7) @.str.45) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %455

30:                                               ; preds = %27
  %31 = load ptr, ptr %0, align 8, !tbaa !14
  %32 = getelementptr inbounds %struct.xpvgv, ptr %31, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !27
  %34 = or i64 %33, 2
  store i64 %34, ptr %32, align 8, !tbaa !27
  br label %455

35:                                               ; preds = %12, %12
  %36 = icmp eq i64 %3, 1
  %37 = icmp eq i32 %5, 3
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load ptr, ptr %0, align 8, !tbaa !14
  %41 = getelementptr inbounds %struct.xpvgv, ptr %40, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !27
  %43 = or i64 %42, 2
  store i64 %43, ptr %41, align 8, !tbaa !27
  br label %455

44:                                               ; preds = %35, %12
  %45 = icmp eq i64 %3, 1
  br i1 %45, label %455, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !50
  %49 = and i32 %48, 33554432
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %455, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !13
  %54 = load ptr, ptr %1, align 8, !tbaa !52
  %55 = getelementptr inbounds %struct.xpvhv, ptr %54, i64 0, i32 3
  %56 = load i64, ptr %55, align 8, !tbaa !53
  %57 = getelementptr ptr, ptr %53, i64 %56
  %58 = getelementptr ptr, ptr %57, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !13
  %60 = icmp eq ptr %59, null
  br i1 %60, label %455, label %61

61:                                               ; preds = %51
  %62 = getelementptr i8, ptr %57, i64 36
  %63 = load i32, ptr %62, align 4, !tbaa !55
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %59, align 8, !tbaa !13
  %67 = icmp eq ptr %66, null
  br i1 %67, label %455, label %72

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.hek, ptr %59, i64 0, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !16
  %71 = icmp eq i32 %70, 4
  br i1 %71, label %76, label %455

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.hek, ptr %66, i64 0, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !16
  %75 = icmp eq i32 %74, 4
  br i1 %75, label %76, label %455

76:                                               ; preds = %72, %68
  %77 = phi ptr [ %59, %68 ], [ %66, %72 ]
  %78 = getelementptr inbounds %struct.hek, ptr %77, i64 0, i32 2
  %79 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %78, ptr noundef nonnull dereferenceable(5) @.str.12, i64 noundef 4) #12
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %455

81:                                               ; preds = %76
  %82 = tail call fastcc ptr @S_maybe_add_coresub(ptr noundef null, ptr noundef %0, ptr noundef nonnull %2, i64 noundef %3) #13
  br label %455

83:                                               ; preds = %6
  %84 = icmp ugt i64 %3, 1
  %85 = load i8, ptr %2, align 1, !tbaa !13
  br i1 %84, label %86, label %240

86:                                               ; preds = %83
  %87 = icmp sgt i8 %85, 86
  br i1 %87, label %455, label %88

88:                                               ; preds = %86
  %89 = getelementptr inbounds i8, ptr %2, i64 1
  switch i8 %85, label %455 [
    i8 65, label %90
    i8 69, label %129
    i8 73, label %137
    i8 83, label %141
    i8 86, label %184
    i8 3, label %192
    i8 5, label %195
    i8 7, label %202
    i8 12, label %205
    i8 13, label %208
    i8 15, label %211
    i8 16, label %214
    i8 20, label %220
    i8 21, label %223
    i8 23, label %232
    i8 49, label %235
    i8 50, label %235
    i8 51, label %235
    i8 52, label %235
    i8 53, label %235
    i8 54, label %235
    i8 55, label %235
    i8 56, label %235
    i8 57, label %235
  ]

90:                                               ; preds = %88
  %91 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(4) @.str.46) #12
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %121

93:                                               ; preds = %90
  %94 = icmp eq ptr %0, null
  br i1 %94, label %109, label %95

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %97 = load i32, ptr %96, align 4, !tbaa !6
  %98 = and i32 %97, 255
  %99 = add nsw i32 %98, -9
  %100 = icmp ult i32 %99, 2
  br i1 %100, label %101, label %109

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !13
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.gp, ptr %103, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !76
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %95, %93, %101, %105
  %110 = tail call ptr @Perl_gv_add_by_type(ptr noundef %0, i32 noundef 15) #13
  %111 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !13
  %113 = getelementptr inbounds %struct.gp, ptr %112, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !76
  br label %115

115:                                              ; preds = %105, %109
  %116 = phi ptr [ %114, %109 ], [ %107, %105 ]
  %117 = load ptr, ptr %116, align 8, !tbaa !79
  %118 = getelementptr inbounds %struct.xpvio, ptr %117, i64 0, i32 17
  %119 = load i8, ptr %118, align 1, !tbaa !81
  %120 = or i8 %119, 3
  store i8 %120, ptr %118, align 1, !tbaa !81
  br label %455

121:                                              ; preds = %90
  %122 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(7) @.str.47) #12
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %455

124:                                              ; preds = %121
  %125 = load ptr, ptr %0, align 8, !tbaa !14
  %126 = getelementptr inbounds %struct.xpvgv, ptr %125, i64 0, i32 2
  %127 = load i64, ptr %126, align 8, !tbaa !27
  %128 = or i64 %127, 2
  store i64 %128, ptr %126, align 8, !tbaa !27
  br label %455

129:                                              ; preds = %88
  %130 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(6) @.str.43, i64 noundef 5) #12
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %455

132:                                              ; preds = %129
  %133 = load ptr, ptr %0, align 8, !tbaa !14
  %134 = getelementptr inbounds %struct.xpvgv, ptr %133, i64 0, i32 2
  %135 = load i64, ptr %134, align 8, !tbaa !27
  %136 = or i64 %135, 2
  store i64 %136, ptr %134, align 8, !tbaa !27
  br label %455

137:                                              ; preds = %88
  %138 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(3) @.str.44) #12
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %455

140:                                              ; preds = %137
  tail call fastcc void @S_gv_magicalize_isa(ptr noundef %0) #13
  br label %455

141:                                              ; preds = %88
  %142 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(3) @.str.48) #12
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %455

144:                                              ; preds = %141
  %145 = load ptr, ptr @PL_psig_name, align 8, !tbaa !12
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = tail call ptr @Perl_safesyscalloc(i64 noundef 32, i64 noundef 8) #11
  store ptr %148, ptr @PL_psig_name, align 8, !tbaa !12
  %149 = tail call ptr @Perl_safesyscalloc(i64 noundef 16, i64 noundef 4) #11
  store ptr %149, ptr @PL_psig_pend, align 8, !tbaa !12
  %150 = load ptr, ptr @PL_psig_name, align 8, !tbaa !12
  %151 = getelementptr inbounds ptr, ptr %150, i64 16
  store ptr %151, ptr @PL_psig_ptr, align 8, !tbaa !12
  br label %154

152:                                              ; preds = %144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %145, i8 0, i64 256, i1 false)
  %153 = load ptr, ptr @PL_psig_pend, align 8, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %153, i8 0, i64 64, i1 false)
  br label %154

154:                                              ; preds = %152, %147
  %155 = load ptr, ptr %0, align 8, !tbaa !14
  %156 = getelementptr inbounds %struct.xpvgv, ptr %155, i64 0, i32 2
  %157 = load i64, ptr %156, align 8, !tbaa !27
  %158 = or i64 %157, 2
  store i64 %158, ptr %156, align 8, !tbaa !27
  %159 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !13
  %161 = getelementptr inbounds %struct.gp, ptr %160, i64 0, i32 5
  %162 = load ptr, ptr %161, align 8, !tbaa !23
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %169

164:                                              ; preds = %154
  %165 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 12) #13
  %166 = load ptr, ptr %159, align 8, !tbaa !13
  %167 = getelementptr inbounds %struct.gp, ptr %166, i64 0, i32 5
  %168 = load ptr, ptr %167, align 8, !tbaa !23
  br label %169

169:                                              ; preds = %154, %164
  %170 = phi ptr [ %168, %164 ], [ %162, %154 ]
  tail call void @Perl_sv_magic(ptr noundef %170, ptr noundef null, i32 noundef 83, ptr noundef null, i32 noundef 0) #11
  br label %171

171:                                              ; preds = %169, %181
  %172 = phi i64 [ 1, %169 ], [ %182, %181 ]
  %173 = getelementptr inbounds [0 x ptr], ptr @PL_sig_name, i64 0, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !12
  %175 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %174) #12
  %176 = trunc i64 %175 to i32
  %177 = tail call ptr @Perl_hv_common_key_len(ptr noundef %170, ptr noundef %174, i32 noundef %176, i32 noundef 48, ptr noundef null, i32 noundef 0) #11
  %178 = icmp eq ptr %177, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %171
  %180 = load ptr, ptr %177, align 8, !tbaa !12
  tail call void @Perl_sv_setsv_flags(ptr noundef %180, ptr noundef nonnull @PL_sv_undef, i32 noundef 1538) #11
  br label %181

181:                                              ; preds = %179, %171
  %182 = add nuw nsw i64 %172, 1
  %183 = icmp eq i64 %182, 16
  br i1 %183, label %455, label %171, !llvm.loop !83

184:                                              ; preds = %88
  %185 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(7) @.str.45) #12
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %455

187:                                              ; preds = %184
  %188 = load ptr, ptr %0, align 8, !tbaa !14
  %189 = getelementptr inbounds %struct.xpvgv, ptr %188, i64 0, i32 2
  %190 = load i64, ptr %189, align 8, !tbaa !27
  %191 = or i64 %190, 2
  store i64 %191, ptr %189, align 8, !tbaa !27
  br label %455

192:                                              ; preds = %88
  %193 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(18) @.str.49) #12
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %384, label %455

195:                                              ; preds = %88
  %196 = load i8, ptr %89, align 1, !tbaa !13
  %197 = icmp eq i8 %196, 95
  %198 = getelementptr inbounds i8, ptr %2, i64 2
  %199 = select i1 %197, ptr %198, ptr %89
  %200 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %199, ptr noundef nonnull dereferenceable(8) @.str.50) #12
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %384, label %455

202:                                              ; preds = %88
  %203 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(12) @.str.51) #12
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %370, label %455

205:                                              ; preds = %88
  %206 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(7) @.str.52) #12
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %370, label %455

208:                                              ; preds = %88
  %209 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(5) @.str.53) #12
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %246, label %455

211:                                              ; preds = %88
  %212 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(4) @.str.54) #12
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %384, label %455

214:                                              ; preds = %88
  %215 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(8) @.str.55) #12
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %246, label %217

217:                                              ; preds = %214
  %218 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(9) @.str.56) #12
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %246, label %455

220:                                              ; preds = %88
  %221 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(5) @.str.57) #12
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %370, label %455

223:                                              ; preds = %88
  %224 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(7) @.str.58) #12
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %370, label %226

226:                                              ; preds = %223
  %227 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(10) @.str.59) #12
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %370, label %229

229:                                              ; preds = %226
  %230 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(9) @.str.60) #12
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %384, label %455

232:                                              ; preds = %88
  %233 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(12) @.str.61) #12
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %384, label %455

235:                                              ; preds = %88, %88, %88, %88, %88, %88, %88, %88, %88
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  %236 = call zeroext i1 @Perl_grok_atoUV(ptr noundef nonnull %2, ptr noundef nonnull %7, ptr noundef null) #11
  %237 = load i64, ptr %7, align 8
  %238 = icmp ult i64 %237, 2147483648
  %239 = select i1 %236, i1 %238, i1 false
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  br i1 %239, label %246, label %455

240:                                              ; preds = %83
  switch i8 %85, label %455 [
    i8 38, label %246
    i8 96, label %241
    i8 39, label %242
    i8 49, label %243
    i8 50, label %243
    i8 51, label %243
    i8 52, label %243
    i8 53, label %243
    i8 54, label %243
    i8 55, label %243
    i8 56, label %243
    i8 57, label %243
    i8 58, label %259
    i8 63, label %384
    i8 33, label %271
    i8 45, label %289
    i8 43, label %289
    i8 42, label %339
    i8 35, label %339
    i8 8, label %343
    i8 91, label %356
    i8 19, label %370
    i8 48, label %384
    i8 94, label %384
    i8 126, label %384
    i8 61, label %384
    i8 37, label %384
    i8 46, label %384
    i8 40, label %384
    i8 41, label %384
    i8 60, label %384
    i8 62, label %384
    i8 92, label %384
    i8 47, label %384
    i8 124, label %384
    i8 36, label %384
    i8 1, label %384
    i8 3, label %384
    i8 4, label %384
    i8 5, label %384
    i8 6, label %384
    i8 9, label %384
    i8 14, label %384
    i8 15, label %384
    i8 16, label %384
    i8 20, label %384
    i8 23, label %384
    i8 12, label %396
    i8 59, label %407
    i8 93, label %418
    i8 22, label %436
    i8 97, label %448
    i8 98, label %448
  ]

241:                                              ; preds = %240
  br label %246

242:                                              ; preds = %240
  br label %246

243:                                              ; preds = %240, %240, %240, %240, %240, %240, %240, %240, %240
  %244 = zext nneg i8 %85 to i64
  %245 = add nsw i64 %244, -48
  br label %246

246:                                              ; preds = %235, %217, %214, %208, %240, %241, %242, %243
  %247 = phi i64 [ %245, %243 ], [ -1, %242 ], [ -2, %241 ], [ 0, %240 ], [ -4, %217 ], [ -5, %214 ], [ -3, %208 ], [ %237, %235 ]
  %248 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %249 = load ptr, ptr %248, align 8, !tbaa !13
  %250 = load ptr, ptr %249, align 8, !tbaa !12
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %256

252:                                              ; preds = %246
  %253 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 0) #13
  %254 = load ptr, ptr %248, align 8, !tbaa !13
  %255 = load ptr, ptr %254, align 8, !tbaa !12
  br label %256

256:                                              ; preds = %246, %252
  %257 = phi ptr [ %255, %252 ], [ %250, %246 ]
  %258 = trunc i64 %247 to i32
  call void @Perl_sv_magic(ptr noundef %257, ptr noundef nonnull %0, i32 noundef 0, ptr noundef null, i32 noundef %258) #11
  br label %455

259:                                              ; preds = %240
  %260 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %261 = load ptr, ptr %260, align 8, !tbaa !13
  %262 = load ptr, ptr %261, align 8, !tbaa !12
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %268

264:                                              ; preds = %259
  %265 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 0) #13
  %266 = load ptr, ptr %260, align 8, !tbaa !13
  %267 = load ptr, ptr %266, align 8, !tbaa !12
  br label %268

268:                                              ; preds = %259, %264
  %269 = phi ptr [ %267, %264 ], [ %262, %259 ]
  %270 = load ptr, ptr @PL_chopset, align 8, !tbaa !12
  tail call void @Perl_sv_setpv(ptr noundef %269, ptr noundef %270) #11
  br label %384

271:                                              ; preds = %240
  %272 = load ptr, ptr %0, align 8, !tbaa !14
  %273 = getelementptr inbounds %struct.xpvgv, ptr %272, i64 0, i32 2
  %274 = load i64, ptr %273, align 8, !tbaa !27
  %275 = or i64 %274, 2
  store i64 %275, ptr %273, align 8, !tbaa !27
  %276 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %277 = load ptr, ptr %276, align 8, !tbaa !13
  %278 = load ptr, ptr %277, align 8, !tbaa !12
  %279 = icmp eq ptr %278, null
  br i1 %279, label %280, label %284

280:                                              ; preds = %271
  %281 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 0) #13
  %282 = load ptr, ptr %276, align 8, !tbaa !13
  %283 = load ptr, ptr %282, align 8, !tbaa !12
  br label %284

284:                                              ; preds = %271, %280
  %285 = phi ptr [ %283, %280 ], [ %278, %271 ]
  %286 = trunc i64 %3 to i32
  tail call void @Perl_sv_magic(ptr noundef %285, ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %2, i32 noundef %286) #11
  switch i32 %5, label %455 [
    i32 12, label %287
    i32 9, label %287
  ]

287:                                              ; preds = %284, %284
  %288 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.35, i64 noundef 5) #11
  tail call fastcc void @S_require_tie_mod(ptr noundef nonnull %0, ptr noundef nonnull @.str.34, ptr noundef %288, ptr noundef nonnull @.str.36, i32 noundef 1) #13
  br label %455

289:                                              ; preds = %240, %240
  %290 = load ptr, ptr %0, align 8, !tbaa !14
  %291 = getelementptr inbounds %struct.xpvgv, ptr %290, i64 0, i32 2
  %292 = load i64, ptr %291, align 8, !tbaa !27
  %293 = or i64 %292, 2
  store i64 %293, ptr %291, align 8, !tbaa !27
  %294 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %295 = load ptr, ptr %294, align 8, !tbaa !13
  %296 = getelementptr inbounds %struct.gp, ptr %295, i64 0, i32 6
  %297 = load ptr, ptr %296, align 8, !tbaa !22
  %298 = icmp eq ptr %297, null
  br i1 %298, label %299, label %304

299:                                              ; preds = %289
  %300 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 11) #13
  %301 = load ptr, ptr %294, align 8, !tbaa !13
  %302 = getelementptr inbounds %struct.gp, ptr %301, i64 0, i32 6
  %303 = load ptr, ptr %302, align 8, !tbaa !22
  br label %304

304:                                              ; preds = %289, %299
  %305 = phi ptr [ %303, %299 ], [ %297, %289 ]
  %306 = load i8, ptr %2, align 1, !tbaa !13
  %307 = icmp eq i8 %306, 43
  %308 = select i1 %307, ptr %305, ptr null
  tail call void @Perl_sv_magic(ptr noundef %305, ptr noundef %308, i32 noundef 68, ptr noundef null, i32 noundef 0) #11
  %309 = load ptr, ptr %294, align 8, !tbaa !13
  %310 = load ptr, ptr %309, align 8, !tbaa !12
  %311 = icmp eq ptr %310, null
  br i1 %311, label %312, label %316

312:                                              ; preds = %304
  %313 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 0) #13
  %314 = load ptr, ptr %294, align 8, !tbaa !13
  %315 = load ptr, ptr %314, align 8, !tbaa !12
  br label %316

316:                                              ; preds = %304, %312
  %317 = phi ptr [ %315, %312 ], [ %310, %304 ]
  %318 = trunc i64 %3 to i32
  tail call void @Perl_sv_magic(ptr noundef %317, ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %2, i32 noundef %318) #11
  %319 = icmp eq ptr %308, null
  br i1 %319, label %333, label %320

320:                                              ; preds = %316
  %321 = load ptr, ptr %294, align 8, !tbaa !13
  %322 = load ptr, ptr %321, align 8, !tbaa !12
  %323 = icmp eq ptr %322, null
  br i1 %323, label %324, label %328

324:                                              ; preds = %320
  %325 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 0) #13
  %326 = load ptr, ptr %294, align 8, !tbaa !13
  %327 = load ptr, ptr %326, align 8, !tbaa !12
  br label %328

328:                                              ; preds = %320, %324
  %329 = phi ptr [ %327, %324 ], [ %322, %320 ]
  %330 = getelementptr inbounds %struct.sv, ptr %329, i64 0, i32 2
  %331 = load i32, ptr %330, align 4, !tbaa !6
  %332 = or i32 %331, 134217728
  store i32 %332, ptr %330, align 4, !tbaa !6
  br label %333

333:                                              ; preds = %328, %316
  %334 = getelementptr inbounds %struct.av, ptr %305, i64 0, i32 2
  %335 = load i32, ptr %334, align 4, !tbaa !74
  %336 = or i32 %335, 134217728
  store i32 %336, ptr %334, align 4, !tbaa !74
  switch i32 %5, label %455 [
    i32 12, label %337
    i32 9, label %337
  ]

337:                                              ; preds = %333, %333
  %338 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.37, i64 noundef 23) #11
  tail call fastcc void @S_require_tie_mod(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %338, ptr noundef nonnull @.str.36, i32 noundef 0) #13
  br label %455

339:                                              ; preds = %240, %240
  %340 = icmp eq i32 %5, 3
  br i1 %340, label %341, label %455

341:                                              ; preds = %339
  %342 = zext nneg i8 %85 to i32
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 7170, ptr noundef nonnull @.str.38, i32 noundef %342) #11
  br label %455

343:                                              ; preds = %240
  %344 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %345 = load ptr, ptr %344, align 8, !tbaa !13
  %346 = getelementptr inbounds %struct.gp, ptr %345, i64 0, i32 5
  %347 = load ptr, ptr %346, align 8, !tbaa !23
  %348 = icmp eq ptr %347, null
  br i1 %348, label %349, label %354

349:                                              ; preds = %343
  %350 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 12) #13
  %351 = load ptr, ptr %344, align 8, !tbaa !13
  %352 = getelementptr inbounds %struct.gp, ptr %351, i64 0, i32 5
  %353 = load ptr, ptr %352, align 8, !tbaa !23
  br label %354

354:                                              ; preds = %343, %349
  %355 = phi ptr [ %353, %349 ], [ %347, %343 ]
  tail call void @Perl_sv_magic(ptr noundef %355, ptr noundef null, i32 noundef 72, ptr noundef null, i32 noundef 0) #11
  br label %384

356:                                              ; preds = %240
  switch i32 %5, label %384 [
    i32 9, label %357
    i32 3, label %357
  ]

357:                                              ; preds = %356, %356
  %358 = load ptr, ptr @PL_curcop, align 8, !tbaa !12
  %359 = getelementptr %struct.cop, ptr %358, i64 0, i32 10
  %360 = load i32, ptr %359, align 8, !tbaa !75
  %361 = and i32 %360, 469762048
  %362 = icmp ult i32 %361, 201326592
  br i1 %362, label %368, label %363

363:                                              ; preds = %357
  %364 = and i32 %360, 469893120
  %365 = icmp eq i32 %364, 469893120
  br i1 %365, label %366, label %384

366:                                              ; preds = %363
  %367 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.39, i64 noundef 7) #11
  br i1 %367, label %368, label %384

368:                                              ; preds = %366, %357
  %369 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.39, i64 noundef 7) #11
  tail call fastcc void @S_require_tie_mod(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %369, ptr noundef nonnull @.str.40, i32 noundef 0) #13
  br label %455

370:                                              ; preds = %226, %223, %220, %205, %202, %240
  %371 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %372 = load ptr, ptr %371, align 8, !tbaa !13
  %373 = load ptr, ptr %372, align 8, !tbaa !12
  %374 = icmp eq ptr %373, null
  br i1 %374, label %375, label %379

375:                                              ; preds = %370
  %376 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 0) #13
  %377 = load ptr, ptr %371, align 8, !tbaa !13
  %378 = load ptr, ptr %377, align 8, !tbaa !12
  br label %379

379:                                              ; preds = %370, %375
  %380 = phi ptr [ %378, %375 ], [ %373, %370 ]
  %381 = getelementptr inbounds %struct.sv, ptr %380, i64 0, i32 2
  %382 = load i32, ptr %381, align 4, !tbaa !6
  %383 = or i32 %382, 134217728
  store i32 %383, ptr %381, align 4, !tbaa !6
  br label %384

384:                                              ; preds = %232, %229, %211, %195, %192, %356, %379, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %363, %366, %240, %354, %268
  %385 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %386 = load ptr, ptr %385, align 8, !tbaa !13
  %387 = load ptr, ptr %386, align 8, !tbaa !12
  %388 = icmp eq ptr %387, null
  br i1 %388, label %389, label %393

389:                                              ; preds = %384
  %390 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 0) #13
  %391 = load ptr, ptr %385, align 8, !tbaa !13
  %392 = load ptr, ptr %391, align 8, !tbaa !12
  br label %393

393:                                              ; preds = %384, %389
  %394 = phi ptr [ %392, %389 ], [ %387, %384 ]
  %395 = trunc i64 %3 to i32
  tail call void @Perl_sv_magic(ptr noundef %394, ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %2, i32 noundef %395) #11
  br label %455

396:                                              ; preds = %240
  %397 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %398 = load ptr, ptr %397, align 8, !tbaa !13
  %399 = load ptr, ptr %398, align 8, !tbaa !12
  %400 = icmp eq ptr %399, null
  br i1 %400, label %401, label %405

401:                                              ; preds = %396
  %402 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 0) #13
  %403 = load ptr, ptr %397, align 8, !tbaa !13
  %404 = load ptr, ptr %403, align 8, !tbaa !12
  br label %405

405:                                              ; preds = %396, %401
  %406 = phi ptr [ %404, %401 ], [ %399, %396 ]
  tail call void @Perl_sv_setpvn(ptr noundef %406, ptr noundef nonnull @.str.62, i64 noundef 1) #11
  br label %455

407:                                              ; preds = %240
  %408 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %409 = load ptr, ptr %408, align 8, !tbaa !13
  %410 = load ptr, ptr %409, align 8, !tbaa !12
  %411 = icmp eq ptr %410, null
  br i1 %411, label %412, label %416

412:                                              ; preds = %407
  %413 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 0) #13
  %414 = load ptr, ptr %408, align 8, !tbaa !13
  %415 = load ptr, ptr %414, align 8, !tbaa !12
  br label %416

416:                                              ; preds = %407, %412
  %417 = phi ptr [ %415, %412 ], [ %410, %407 ]
  tail call void @Perl_sv_setpvn(ptr noundef %417, ptr noundef nonnull @.str.63, i64 noundef 1) #11
  br label %455

418:                                              ; preds = %240
  %419 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %420 = load ptr, ptr %419, align 8, !tbaa !13
  %421 = load ptr, ptr %420, align 8, !tbaa !19
  %422 = load ptr, ptr @PL_patchlevel, align 8, !tbaa !12
  %423 = tail call zeroext i1 @Perl_sv_derived_from(ptr noundef %422, ptr noundef nonnull @.str.64) #11
  br i1 %423, label %427, label %424

424:                                              ; preds = %418
  %425 = load ptr, ptr @PL_patchlevel, align 8, !tbaa !12
  %426 = tail call ptr @Perl_upg_version(ptr noundef %425, i1 noundef zeroext true) #11
  br label %427

427:                                              ; preds = %424, %418
  %428 = load ptr, ptr @PL_patchlevel, align 8, !tbaa !12
  %429 = tail call ptr @Perl_vnumify(ptr noundef %428) #11
  %430 = load ptr, ptr %419, align 8, !tbaa !13
  store ptr %429, ptr %430, align 8, !tbaa !19
  %431 = load ptr, ptr %419, align 8, !tbaa !13
  %432 = load ptr, ptr %431, align 8, !tbaa !19
  %433 = getelementptr inbounds %struct.sv, ptr %432, i64 0, i32 2
  %434 = load i32, ptr %433, align 4, !tbaa !6
  %435 = or i32 %434, 134217728
  store i32 %435, ptr %433, align 4, !tbaa !6
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %421) #13
  br label %455

436:                                              ; preds = %240
  %437 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %438 = load ptr, ptr %437, align 8, !tbaa !13
  %439 = load ptr, ptr %438, align 8, !tbaa !19
  %440 = load ptr, ptr @PL_patchlevel, align 8, !tbaa !12
  %441 = tail call ptr @Perl_new_version(ptr noundef %440) #11
  %442 = load ptr, ptr %437, align 8, !tbaa !13
  store ptr %441, ptr %442, align 8, !tbaa !19
  %443 = load ptr, ptr %437, align 8, !tbaa !13
  %444 = load ptr, ptr %443, align 8, !tbaa !19
  %445 = getelementptr inbounds %struct.sv, ptr %444, i64 0, i32 2
  %446 = load i32, ptr %445, align 4, !tbaa !6
  %447 = or i32 %446, 134217728
  store i32 %447, ptr %445, align 4, !tbaa !6
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %439) #13
  br label %455

448:                                              ; preds = %240, %240
  %449 = icmp eq i32 %5, 3
  br i1 %449, label %450, label %455

450:                                              ; preds = %448
  %451 = load ptr, ptr %0, align 8, !tbaa !14
  %452 = getelementptr inbounds %struct.xpvgv, ptr %451, i64 0, i32 2
  %453 = load i64, ptr %452, align 8, !tbaa !27
  %454 = or i64 %453, 2
  store i64 %454, ptr %452, align 8, !tbaa !27
  br label %455

455:                                              ; preds = %181, %88, %121, %124, %115, %132, %129, %140, %137, %141, %187, %184, %192, %195, %202, %205, %208, %211, %217, %220, %229, %232, %10, %39, %235, %72, %68, %44, %256, %368, %393, %405, %416, %427, %436, %240, %287, %341, %339, %450, %448, %86, %81, %76, %284, %333, %337, %46, %51, %65, %27, %30, %23, %26, %15, %18
  %456 = phi i1 [ %4, %18 ], [ %4, %15 ], [ %4, %26 ], [ %4, %23 ], [ %4, %30 ], [ %4, %27 ], [ %4, %68 ], [ %4, %44 ], [ %4, %86 ], [ %4, %393 ], [ %4, %256 ], [ %4, %240 ], [ %4, %450 ], [ %4, %448 ], [ %4, %436 ], [ %4, %427 ], [ %4, %416 ], [ %4, %405 ], [ false, %368 ], [ %4, %341 ], [ %4, %339 ], [ false, %287 ], [ %4, %284 ], [ %4, %81 ], [ %4, %76 ], [ false, %337 ], [ %4, %333 ], [ %4, %46 ], [ %4, %51 ], [ %4, %65 ], [ %4, %72 ], [ %4, %235 ], [ %4, %39 ], [ %4, %10 ], [ %4, %232 ], [ %4, %229 ], [ %4, %220 ], [ %4, %217 ], [ %4, %211 ], [ %4, %208 ], [ %4, %205 ], [ %4, %202 ], [ %4, %195 ], [ %4, %192 ], [ %4, %184 ], [ %4, %187 ], [ %4, %141 ], [ %4, %137 ], [ %4, %140 ], [ %4, %129 ], [ %4, %132 ], [ %4, %115 ], [ %4, %124 ], [ %4, %121 ], [ %4, %88 ], [ %4, %181 ]
  ret i1 %456
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @S_gv_is_in_main(ptr noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %166, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr @PL_curcop, align 8, !tbaa !12
  %7 = getelementptr inbounds %struct.cop, ptr %6, i64 0, i32 10
  %8 = load i32, ptr %7, align 8, !tbaa !75
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  %11 = icmp ne i32 %2, 0
  %12 = and i1 %11, %10
  %13 = load i8, ptr %0, align 1, !tbaa !13
  br i1 %12, label %20, label %14

14:                                               ; preds = %5
  %15 = zext i8 %13 to i64
  %16 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !21
  %18 = and i32 %17, 81920
  %19 = icmp eq i32 %18, 81920
  br i1 %19, label %44, label %166

20:                                               ; preds = %5
  %21 = icmp sgt i8 %13, -1
  br i1 %21, label %22, label %28

22:                                               ; preds = %20
  %23 = zext nneg i8 %13 to i64
  %24 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !21
  %26 = and i32 %25, 65536
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %166, label %44

28:                                               ; preds = %20
  %29 = and i8 %13, -2
  %30 = icmp eq i8 %29, -62
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = shl i8 %13, 6
  %33 = getelementptr inbounds i8, ptr %0, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !13
  %35 = and i8 %34, 63
  %36 = or disjoint i8 %35, %32
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !21
  %40 = and i32 %39, 65536
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %166, label %44

42:                                               ; preds = %28
  %43 = tail call zeroext i1 @Perl__is_utf8_perl_idstart(ptr noundef nonnull %0) #11
  br i1 %43, label %44, label %166

44:                                               ; preds = %31, %22, %42, %14
  switch i64 %1, label %165 [
    i64 1, label %45
    i64 3, label %48
    i64 4, label %74
    i64 5, label %89
    i64 6, label %108
    i64 7, label %138
  ]

45:                                               ; preds = %44
  %46 = load i8, ptr %0, align 1, !tbaa !13
  %47 = icmp eq i8 %46, 95
  br i1 %47, label %166, label %165

48:                                               ; preds = %44
  %49 = load i8, ptr %0, align 1, !tbaa !13
  switch i8 %49, label %165 [
    i8 73, label %50
    i8 69, label %58
    i8 83, label %66
  ]

50:                                               ; preds = %48
  %51 = getelementptr inbounds i8, ptr %0, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !13
  %53 = icmp eq i8 %52, 78
  br i1 %53, label %54, label %165

54:                                               ; preds = %50
  %55 = getelementptr inbounds i8, ptr %0, i64 2
  %56 = load i8, ptr %55, align 1, !tbaa !13
  %57 = icmp eq i8 %56, 67
  br i1 %57, label %166, label %165

58:                                               ; preds = %48
  %59 = getelementptr inbounds i8, ptr %0, i64 1
  %60 = load i8, ptr %59, align 1, !tbaa !13
  %61 = icmp eq i8 %60, 78
  br i1 %61, label %62, label %165

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %0, i64 2
  %64 = load i8, ptr %63, align 1, !tbaa !13
  %65 = icmp eq i8 %64, 86
  br i1 %65, label %166, label %165

66:                                               ; preds = %48
  %67 = getelementptr inbounds i8, ptr %0, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !13
  %69 = icmp eq i8 %68, 73
  br i1 %69, label %70, label %165

70:                                               ; preds = %66
  %71 = getelementptr inbounds i8, ptr %0, i64 2
  %72 = load i8, ptr %71, align 1, !tbaa !13
  %73 = icmp eq i8 %72, 71
  br i1 %73, label %166, label %165

74:                                               ; preds = %44
  %75 = load i8, ptr %0, align 1, !tbaa !13
  %76 = icmp eq i8 %75, 65
  br i1 %76, label %77, label %165

77:                                               ; preds = %74
  %78 = getelementptr inbounds i8, ptr %0, i64 1
  %79 = load i8, ptr %78, align 1, !tbaa !13
  %80 = icmp eq i8 %79, 82
  br i1 %80, label %81, label %165

81:                                               ; preds = %77
  %82 = getelementptr inbounds i8, ptr %0, i64 2
  %83 = load i8, ptr %82, align 1, !tbaa !13
  %84 = icmp eq i8 %83, 71
  br i1 %84, label %85, label %165

85:                                               ; preds = %81
  %86 = getelementptr inbounds i8, ptr %0, i64 3
  %87 = load i8, ptr %86, align 1, !tbaa !13
  %88 = icmp eq i8 %87, 86
  br i1 %88, label %166, label %165

89:                                               ; preds = %44
  %90 = load i8, ptr %0, align 1, !tbaa !13
  %91 = icmp eq i8 %90, 83
  br i1 %91, label %92, label %165

92:                                               ; preds = %89
  %93 = getelementptr inbounds i8, ptr %0, i64 1
  %94 = load i8, ptr %93, align 1, !tbaa !13
  %95 = icmp eq i8 %94, 84
  br i1 %95, label %96, label %165

96:                                               ; preds = %92
  %97 = getelementptr inbounds i8, ptr %0, i64 2
  %98 = load i8, ptr %97, align 1, !tbaa !13
  %99 = icmp eq i8 %98, 68
  br i1 %99, label %100, label %165

100:                                              ; preds = %96
  %101 = getelementptr inbounds i8, ptr %0, i64 3
  %102 = load i8, ptr %101, align 1, !tbaa !13
  %103 = icmp eq i8 %102, 73
  br i1 %103, label %104, label %165

104:                                              ; preds = %100
  %105 = getelementptr inbounds i8, ptr %0, i64 4
  %106 = load i8, ptr %105, align 1, !tbaa !13
  %107 = icmp eq i8 %106, 78
  br i1 %107, label %166, label %165

108:                                              ; preds = %44
  %109 = load i8, ptr %0, align 1, !tbaa !13
  %110 = icmp eq i8 %109, 83
  br i1 %110, label %111, label %165

111:                                              ; preds = %108
  %112 = getelementptr inbounds i8, ptr %0, i64 1
  %113 = load i8, ptr %112, align 1, !tbaa !13
  %114 = icmp eq i8 %113, 84
  br i1 %114, label %115, label %165

115:                                              ; preds = %111
  %116 = getelementptr inbounds i8, ptr %0, i64 2
  %117 = load i8, ptr %116, align 1, !tbaa !13
  %118 = icmp eq i8 %117, 68
  br i1 %118, label %119, label %165

119:                                              ; preds = %115
  %120 = getelementptr inbounds i8, ptr %0, i64 3
  %121 = load i8, ptr %120, align 1, !tbaa !13
  switch i8 %121, label %165 [
    i8 79, label %122
    i8 69, label %130
  ]

122:                                              ; preds = %119
  %123 = getelementptr inbounds i8, ptr %0, i64 4
  %124 = load i8, ptr %123, align 1, !tbaa !13
  %125 = icmp eq i8 %124, 85
  br i1 %125, label %126, label %165

126:                                              ; preds = %122
  %127 = getelementptr inbounds i8, ptr %0, i64 5
  %128 = load i8, ptr %127, align 1, !tbaa !13
  %129 = icmp eq i8 %128, 84
  br i1 %129, label %166, label %165

130:                                              ; preds = %119
  %131 = getelementptr inbounds i8, ptr %0, i64 4
  %132 = load i8, ptr %131, align 1, !tbaa !13
  %133 = icmp eq i8 %132, 82
  br i1 %133, label %134, label %165

134:                                              ; preds = %130
  %135 = getelementptr inbounds i8, ptr %0, i64 5
  %136 = load i8, ptr %135, align 1, !tbaa !13
  %137 = icmp eq i8 %136, 82
  br i1 %137, label %166, label %165

138:                                              ; preds = %44
  %139 = load i8, ptr %0, align 1, !tbaa !13
  %140 = icmp eq i8 %139, 65
  br i1 %140, label %141, label %165

141:                                              ; preds = %138
  %142 = getelementptr inbounds i8, ptr %0, i64 1
  %143 = load i8, ptr %142, align 1, !tbaa !13
  %144 = icmp eq i8 %143, 82
  br i1 %144, label %145, label %165

145:                                              ; preds = %141
  %146 = getelementptr inbounds i8, ptr %0, i64 2
  %147 = load i8, ptr %146, align 1, !tbaa !13
  %148 = icmp eq i8 %147, 71
  br i1 %148, label %149, label %165

149:                                              ; preds = %145
  %150 = getelementptr inbounds i8, ptr %0, i64 3
  %151 = load i8, ptr %150, align 1, !tbaa !13
  %152 = icmp eq i8 %151, 86
  br i1 %152, label %153, label %165

153:                                              ; preds = %149
  %154 = getelementptr inbounds i8, ptr %0, i64 4
  %155 = load i8, ptr %154, align 1, !tbaa !13
  %156 = icmp eq i8 %155, 79
  br i1 %156, label %157, label %165

157:                                              ; preds = %153
  %158 = getelementptr inbounds i8, ptr %0, i64 5
  %159 = load i8, ptr %158, align 1, !tbaa !13
  %160 = icmp eq i8 %159, 85
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = getelementptr inbounds i8, ptr %0, i64 6
  %163 = load i8, ptr %162, align 1, !tbaa !13
  %164 = icmp eq i8 %163, 84
  br i1 %164, label %166, label %165

165:                                              ; preds = %119, %48, %122, %126, %50, %54, %58, %62, %44, %45, %70, %66, %85, %81, %77, %74, %104, %100, %96, %92, %89, %134, %130, %115, %111, %108, %161, %157, %153, %149, %145, %141, %138
  br label %166

166:                                              ; preds = %3, %14, %42, %22, %31, %161, %126, %134, %104, %85, %54, %62, %70, %45, %165
  %167 = phi i1 [ false, %165 ], [ true, %45 ], [ true, %70 ], [ true, %62 ], [ true, %54 ], [ true, %85 ], [ true, %104 ], [ true, %134 ], [ true, %126 ], [ true, %161 ], [ true, %31 ], [ true, %22 ], [ true, %42 ], [ true, %14 ], [ true, %3 ]
  ret i1 %167
}

; Function Attrs: optsize
declare void @Perl_qerror(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_mess(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_require_tie_mod(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = tail call ptr @Perl_gv_stashsv(ptr noundef %2, i32 noundef 0) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %6, ptr noundef %3, i32 noundef 0) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %32

11:                                               ; preds = %8, %5
  %12 = tail call ptr @Perl_newSVsv(ptr noundef %2) #11
  %13 = load i8, ptr %1, align 1, !tbaa !13
  %14 = sext i8 %13 to i32
  %15 = icmp eq i8 %13, 91
  %16 = select i1 %15, i8 36, i8 37
  tail call void @Perl_push_scope() #11
  tail call void @Perl_save_pushptr(ptr noundef %2, i32 noundef 11) #11
  %17 = and i32 %4, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %11
  %20 = tail call ptr @Perl_save_scalar(ptr noundef %0) #11
  br label %21

21:                                               ; preds = %19, %11
  tail call void (i32, ptr, ptr, ...) @Perl_load_module(i32 noundef 2, ptr noundef %12, ptr noundef null) #11
  %22 = tail call ptr @Perl_gv_stashsv(ptr noundef %2, i32 noundef 0) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = zext nneg i8 %16 to i32
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.41, i32 noundef %25, i32 noundef %14, ptr noundef %2) #11
  br label %31

26:                                               ; preds = %21
  %27 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %22, ptr noundef %3, i32 noundef 1) #13
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = zext nneg i8 %16 to i32
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.42, i32 noundef %30, i32 noundef %14, ptr noundef %2, ptr noundef %3) #11
  br label %31

31:                                               ; preds = %26, %29, %24
  tail call void @Perl_pop_scope() #11
  br label %33

32:                                               ; preds = %8
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %2) #13
  br label %33

33:                                               ; preds = %32, %31
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_save_scalar(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_load_module(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: optsize
declare zeroext i1 @Perl_grok_atoUV(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setpv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_feature_is_enabled(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_derived_from(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_upg_version(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_vnumify(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_new_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_gv_fullname4(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %1, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.xpvgv, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  %8 = icmp eq ptr %2, null
  %9 = select i1 %8, ptr @.str.7, ptr %2
  tail call void @Perl_sv_setpv(ptr noundef %0, ptr noundef nonnull %9) #11
  %10 = icmp eq ptr %7, null
  br i1 %10, label %69, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !50
  %14 = and i32 %13, 33554432
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %69, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !13
  %19 = load ptr, ptr %7, align 8, !tbaa !52
  %20 = getelementptr inbounds %struct.xpvhv, ptr %19, i64 0, i32 3
  %21 = load i64, ptr %20, align 8, !tbaa !53
  %22 = getelementptr ptr, ptr %18, i64 %21
  %23 = getelementptr ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %69, label %26

26:                                               ; preds = %16
  %27 = getelementptr i8, ptr %22, i64 36
  %28 = load i32, ptr %27, align 4, !tbaa !55
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.hek, ptr %24, i64 0, i32 2
  br label %39

32:                                               ; preds = %26
  %33 = load ptr, ptr %24, align 8, !tbaa !13
  %34 = icmp eq ptr %33, null
  br i1 %34, label %69, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.hek, ptr %33, i64 0, i32 2
  %37 = load ptr, ptr %24, align 8, !tbaa !13
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %30, %35
  %40 = phi ptr [ %36, %35 ], [ %31, %30 ]
  %41 = phi ptr [ %37, %35 ], [ %24, %30 ]
  %42 = getelementptr inbounds %struct.hek, ptr %41, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !16
  %44 = sext i32 %43 to i64
  br label %45

45:                                               ; preds = %35, %39
  %46 = phi ptr [ %40, %39 ], [ %36, %35 ]
  %47 = phi i64 [ %44, %39 ], [ 0, %35 ]
  br i1 %3, label %51, label %48

48:                                               ; preds = %45
  %49 = tail call i32 @strncmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.65, i64 noundef %47) #12
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %70, label %51

51:                                               ; preds = %48, %45
  br i1 %29, label %55, label %52

52:                                               ; preds = %51
  %53 = load ptr, ptr %24, align 8, !tbaa !13
  %54 = icmp eq ptr %53, null
  br i1 %54, label %67, label %55

55:                                               ; preds = %52, %51
  %56 = phi ptr [ %24, %51 ], [ %53, %52 ]
  %57 = getelementptr inbounds %struct.hek, ptr %56, i64 0, i32 2
  %58 = getelementptr inbounds %struct.hek, ptr %56, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !16
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %57, i64 %60
  %62 = getelementptr inbounds i8, ptr %61, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !13
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  %66 = select i1 %65, i32 16384, i32 32768
  br label %67

67:                                               ; preds = %52, %55
  %68 = phi i32 [ %66, %55 ], [ 16384, %52 ]
  tail call void @Perl_sv_catpvn_flags(ptr noundef %0, ptr noundef nonnull %46, i64 noundef %47, i32 noundef %68) #11
  tail call void @Perl_sv_catpvn_flags(ptr noundef %0, ptr noundef nonnull @.str.24, i64 noundef 2, i32 noundef 2) #11
  br label %70

69:                                               ; preds = %11, %16, %32, %4
  tail call void @Perl_sv_catpvn_flags(ptr noundef %0, ptr noundef nonnull @.str.66, i64 noundef 10, i32 noundef 2) #11
  br label %70

70:                                               ; preds = %48, %67, %69
  %71 = load ptr, ptr %1, align 8, !tbaa !14
  %72 = getelementptr inbounds %struct.xpvgv, ptr %71, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !13
  %74 = tail call ptr @Perl_newSVhek(ptr noundef %73) #11
  %75 = tail call ptr @Perl_sv_2mortal(ptr noundef %74) #11
  tail call void @Perl_sv_catsv_flags(ptr noundef %0, ptr noundef %75, i32 noundef 2) #11
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_gv_efullname4(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.gv, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !18
  %7 = and i32 %6, 49152
  %8 = icmp eq i32 %7, 32768
  br i1 %8, label %9, label %18

9:                                                ; preds = %4
  %10 = and i32 %6, 255
  %11 = add nsw i32 %10, -9
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gv, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = getelementptr inbounds %struct.gp, ptr %15, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !36
  br label %18

18:                                               ; preds = %9, %4, %13
  %19 = phi ptr [ %17, %13 ], [ null, %4 ], [ null, %9 ]
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr %1, ptr %19
  tail call void @Perl_gv_fullname4(ptr noundef %0, ptr noundef %21, ptr noundef %2, i1 noundef zeroext %3) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_gv_check(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %206, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.xpvhv, ptr %6, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !53
  %9 = and i64 %8, 2147483648
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %206

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  br label %13

13:                                               ; preds = %11, %193
  %14 = phi ptr [ %6, %11 ], [ %194, %193 ]
  %15 = phi i64 [ 0, %11 ], [ %202, %193 ]
  %16 = phi i64 [ %8, %11 ], [ %197, %193 ]
  %17 = load ptr, ptr %2, align 8, !tbaa !13
  %18 = getelementptr ptr, ptr %17, i64 %16
  %19 = getelementptr i8, ptr %18, i64 60
  %20 = load i32, ptr %19, align 4, !tbaa !84
  %21 = or i32 %20, 1
  store i32 %21, ptr %19, align 4, !tbaa !84
  %22 = load ptr, ptr %2, align 8, !tbaa !13
  %23 = getelementptr inbounds ptr, ptr %22, i64 %15
  %24 = load ptr, ptr %23, align 8, !tbaa !12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %193, label %26

26:                                               ; preds = %13, %187
  %27 = phi ptr [ %188, %187 ], [ %24, %13 ]
  %28 = getelementptr inbounds %struct.he, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !85
  %30 = getelementptr inbounds %struct.hek, ptr %29, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !16
  %32 = add nsw i32 %31, -1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.hek, ptr %29, i64 0, i32 2, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !13
  %36 = icmp eq i8 %35, 58
  br i1 %36, label %37, label %74

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.he, ptr %27, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !13
  %40 = icmp eq ptr %39, null
  br i1 %40, label %74, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.gv, ptr %39, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !18
  %44 = and i32 %43, 255
  %45 = icmp eq i32 %44, 9
  br i1 %45, label %46, label %74

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.gv, ptr %39, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !13
  %49 = getelementptr inbounds %struct.gp, ptr %48, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !23
  %51 = icmp eq ptr %50, null
  br i1 %51, label %74, label %52

52:                                               ; preds = %46
  %53 = load ptr, ptr @PL_defstash, align 8, !tbaa !12
  %54 = icmp eq ptr %50, %53
  %55 = icmp eq ptr %50, %0
  %56 = or i1 %55, %54
  br i1 %56, label %187, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.hv, ptr %50, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !50
  %60 = and i32 %59, 33554432
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.hv, ptr %50, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !13
  %65 = load ptr, ptr %50, align 8, !tbaa !52
  %66 = getelementptr inbounds %struct.xpvhv, ptr %65, i64 0, i32 3
  %67 = load i64, ptr %66, align 8, !tbaa !53
  %68 = getelementptr ptr, ptr %64, i64 %67
  %69 = getelementptr i8, ptr %68, i64 60
  %70 = load i32, ptr %69, align 4, !tbaa !84
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %187

73:                                               ; preds = %62, %57
  tail call void @Perl_gv_check(ptr noundef nonnull %50) #13
  br label %187

74:                                               ; preds = %46, %41, %37, %26
  %75 = getelementptr inbounds %struct.hek, ptr %29, i64 0, i32 2
  %76 = load i8, ptr %75, align 4, !tbaa !13
  %77 = icmp eq i8 %76, 95
  br i1 %77, label %187, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr @PL_curcop, align 8, !tbaa !12
  %80 = getelementptr inbounds %struct.cop, ptr %79, i64 0, i32 10
  %81 = load i32, ptr %80, align 8, !tbaa !75
  %82 = and i32 %81, 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %78
  %85 = icmp eq i32 %31, -2
  br i1 %85, label %86, label %92

86:                                               ; preds = %84
  %87 = load ptr, ptr %75, align 4, !tbaa !12
  %88 = getelementptr inbounds %struct.sv, ptr %87, i64 0, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !6
  %90 = and i32 %89, 536870912
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %99, label %105

92:                                               ; preds = %84
  %93 = sext i32 %31 to i64
  %94 = getelementptr inbounds i8, ptr %75, i64 %93
  %95 = getelementptr inbounds i8, ptr %94, i64 1
  %96 = load i8, ptr %95, align 1, !tbaa !13
  %97 = and i8 %96, 1
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %92, %86, %78
  %100 = zext i8 %76 to i64
  %101 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !21
  %103 = and i32 %102, 81920
  %104 = icmp eq i32 %103, 81920
  br i1 %104, label %129, label %187

105:                                              ; preds = %92, %86
  %106 = icmp sgt i8 %76, -1
  br i1 %106, label %107, label %113

107:                                              ; preds = %105
  %108 = zext nneg i8 %76 to i64
  %109 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !21
  %111 = and i32 %110, 65536
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %187, label %129

113:                                              ; preds = %105
  %114 = and i8 %76, -2
  %115 = icmp eq i8 %114, -62
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = shl i8 %76, 6
  %118 = getelementptr inbounds %struct.hek, ptr %29, i64 0, i32 2, i64 1
  %119 = load i8, ptr %118, align 1, !tbaa !13
  %120 = and i8 %119, 63
  %121 = or disjoint i8 %120, %117
  %122 = zext i8 %121 to i64
  %123 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !21
  %125 = and i32 %124, 65536
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %187, label %129

127:                                              ; preds = %113
  %128 = tail call zeroext i1 @Perl__is_utf8_perl_idstart(ptr noundef nonnull %75) #11
  br i1 %128, label %129, label %187

129:                                              ; preds = %116, %107, %127, %99
  %130 = getelementptr inbounds %struct.he, ptr %27, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !13
  %132 = getelementptr inbounds %struct.gv, ptr %131, i64 0, i32 2
  %133 = load i32, ptr %132, align 4, !tbaa !18
  %134 = and i32 %133, 255
  %135 = icmp eq i32 %134, 9
  br i1 %135, label %136, label %187

136:                                              ; preds = %129
  %137 = load ptr, ptr %131, align 8, !tbaa !14
  %138 = getelementptr inbounds %struct.xpvgv, ptr %137, i64 0, i32 2
  %139 = load i64, ptr %138, align 8, !tbaa !27
  %140 = and i64 %139, 2
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %187

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.gv, ptr %131, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !13
  %145 = getelementptr inbounds %struct.gp, ptr %144, i64 0, i32 10
  %146 = load ptr, ptr %145, align 8, !tbaa !40
  %147 = icmp eq ptr %146, null
  %148 = getelementptr inbounds %struct.hek, ptr %146, i64 0, i32 2
  %149 = select i1 %147, ptr null, ptr %148
  %150 = getelementptr inbounds %struct.gp, ptr %144, i64 0, i32 9
  %151 = load i32, ptr %150, align 8
  %152 = and i32 %151, 2147483647
  %153 = load ptr, ptr @PL_curcop, align 8, !tbaa !12
  %154 = getelementptr inbounds %struct.cop, ptr %153, i64 0, i32 7
  store i32 %152, ptr %154, align 4, !tbaa !37
  %155 = load ptr, ptr %143, align 8, !tbaa !13
  %156 = getelementptr inbounds %struct.gp, ptr %155, i64 0, i32 10
  %157 = load ptr, ptr %156, align 8, !tbaa !40
  %158 = getelementptr inbounds %struct.hek, ptr %157, i64 0, i32 1
  %159 = load i32, ptr %158, align 4, !tbaa !16
  %160 = sext i32 %159 to i64
  %161 = tail call ptr @Perl_gv_fetchfile_flags(ptr noundef %149, i64 noundef %160, i32 poison) #13
  %162 = load ptr, ptr @PL_curcop, align 8, !tbaa !12
  %163 = getelementptr inbounds %struct.cop, ptr %162, i64 0, i32 9
  store ptr %161, ptr %163, align 8, !tbaa !39
  %164 = load i32, ptr %12, align 4, !tbaa !50
  %165 = and i32 %164, 33554432
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %182, label %167

167:                                              ; preds = %142
  %168 = load ptr, ptr %2, align 8, !tbaa !13
  %169 = load ptr, ptr %0, align 8, !tbaa !52
  %170 = getelementptr inbounds %struct.xpvhv, ptr %169, i64 0, i32 3
  %171 = load i64, ptr %170, align 8, !tbaa !53
  %172 = getelementptr ptr, ptr %168, i64 %171
  %173 = getelementptr ptr, ptr %172, i64 1
  %174 = load ptr, ptr %173, align 8, !tbaa !13
  %175 = icmp eq ptr %174, null
  br i1 %175, label %182, label %176

176:                                              ; preds = %167
  %177 = getelementptr i8, ptr %172, i64 36
  %178 = load i32, ptr %177, align 4, !tbaa !55
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %176
  %181 = load ptr, ptr %174, align 8, !tbaa !12
  br label %182

182:                                              ; preds = %176, %142, %167, %180
  %183 = phi ptr [ %181, %180 ], [ null, %167 ], [ null, %142 ], [ %174, %176 ]
  %184 = load ptr, ptr %131, align 8, !tbaa !14
  %185 = getelementptr inbounds %struct.xpvgv, ptr %184, i64 0, i32 4
  %186 = load ptr, ptr %185, align 8, !tbaa !13
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 14, ptr noundef nonnull @.str.67, ptr noundef %183, ptr noundef %186) #11
  br label %187

187:                                              ; preds = %73, %62, %52, %116, %107, %127, %99, %74, %182, %136, %129
  %188 = load ptr, ptr %27, align 8, !tbaa !12
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %26, !llvm.loop !87

190:                                              ; preds = %187
  %191 = load ptr, ptr %2, align 8, !tbaa !13
  %192 = load ptr, ptr %0, align 8, !tbaa !52
  br label %193

193:                                              ; preds = %190, %13
  %194 = phi ptr [ %192, %190 ], [ %14, %13 ]
  %195 = phi ptr [ %191, %190 ], [ %22, %13 ]
  %196 = getelementptr inbounds %struct.xpvhv, ptr %194, i64 0, i32 3
  %197 = load i64, ptr %196, align 8, !tbaa !53
  %198 = getelementptr ptr, ptr %195, i64 %197
  %199 = getelementptr i8, ptr %198, i64 60
  %200 = load i32, ptr %199, align 4, !tbaa !84
  %201 = and i32 %200, -2
  store i32 %201, ptr %199, align 4, !tbaa !84
  %202 = add nuw nsw i64 %15, 1
  %203 = shl i64 %197, 32
  %204 = ashr exact i64 %203, 32
  %205 = icmp slt i64 %15, %204
  br i1 %205, label %13, label %206, !llvm.loop !88

206:                                              ; preds = %193, %5, %1
  ret void
}

; Function Attrs: optsize
declare void @Perl_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_newGVgen_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne i32 %1, 0
  %4 = zext i1 %3 to i32
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %6 = load i32, ptr @PL_gensym, align 4, !tbaa !21
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @PL_gensym, align 4, !tbaa !21
  %8 = sext i32 %6 to i64
  %9 = tail call ptr (ptr, ...) @Perl_form(ptr noundef nonnull @.str.68, i32 noundef %4, i64 noundef %5, ptr noundef %0, i64 noundef %8) #11
  %10 = tail call ptr @Perl_gv_fetchpv(ptr noundef %9, i32 noundef 1, i32 noundef 9) #13
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @Perl_form(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @Perl_gp_ref(ptr noundef returned %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gp, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !41
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 4, !tbaa !41
  %7 = getelementptr inbounds %struct.gp, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.gp, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !35
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %8) #13
  store ptr null, ptr %7, align 8, !tbaa !29
  store i32 0, ptr %11, align 8, !tbaa !35
  br label %15

15:                                               ; preds = %3, %14, %10, %1
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_gp_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %168, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !18
  %6 = and i32 %5, 49152
  %7 = icmp eq i32 %6, 32768
  br i1 %7, label %8, label %168

8:                                                ; preds = %3
  %9 = and i32 %5, 255
  %10 = add nsw i32 %9, -9
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %168

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %168, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.gp, ptr %14, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !41
  switch i32 %18, label %20 [
    i32 0, label %19
    i32 1, label %30
  ]

19:                                               ; preds = %16
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 24, ptr noundef nonnull @.str.69) #11
  br label %168

20:                                               ; preds = %16, %163
  %21 = phi i32 [ %165, %163 ], [ %18, %16 ]
  %22 = phi ptr [ %130, %163 ], [ %14, %16 ]
  %23 = getelementptr inbounds %struct.gp, ptr %22, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !36
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store ptr null, ptr %23, align 8, !tbaa !36
  br label %27

27:                                               ; preds = %26, %20
  %28 = getelementptr inbounds %struct.gp, ptr %22, i64 0, i32 4
  %29 = add i32 %21, -1
  store i32 %29, ptr %28, align 4, !tbaa !41
  store ptr null, ptr %13, align 8, !tbaa !13
  br label %168

30:                                               ; preds = %16, %160
  %31 = phi i32 [ %158, %160 ], [ 100, %16 ]
  %32 = phi ptr [ %130, %160 ], [ %14, %16 ]
  %33 = getelementptr inbounds %struct.gp, ptr %32, i64 0, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !40
  %35 = load ptr, ptr %32, align 8, !tbaa !19
  %36 = getelementptr inbounds %struct.gp, ptr %32, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !22
  %38 = getelementptr inbounds %struct.gp, ptr %32, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !23
  %40 = getelementptr inbounds %struct.gp, ptr %32, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !76
  %42 = getelementptr inbounds %struct.gp, ptr %32, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !29
  %44 = getelementptr inbounds %struct.gp, ptr %32, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !45
  store ptr null, ptr %33, align 8, !tbaa !40
  %46 = icmp eq ptr %34, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, i8 0, i64 24, i1 false)
  br i1 %46, label %48, label %47

47:                                               ; preds = %30
  tail call void @Perl_unshare_hek(ptr noundef nonnull %34) #11
  br label %48

48:                                               ; preds = %47, %30
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %35) #13
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %37) #13
  %49 = icmp eq ptr %39, null
  br i1 %49, label %93, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.hv, ptr %39, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !50
  %53 = and i32 %52, 255
  %54 = icmp eq i32 %53, 12
  br i1 %54, label %55, label %93

55:                                               ; preds = %50
  %56 = and i32 %52, 33554432
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %92, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.hv, ptr %39, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !13
  %61 = load ptr, ptr %39, align 8, !tbaa !52
  %62 = getelementptr inbounds %struct.xpvhv, ptr %61, i64 0, i32 3
  %63 = load i64, ptr %62, align 8, !tbaa !53
  %64 = getelementptr ptr, ptr %60, i64 %63
  %65 = getelementptr ptr, ptr %64, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !13
  %67 = icmp eq ptr %66, null
  br i1 %67, label %92, label %68

68:                                               ; preds = %58
  %69 = getelementptr i8, ptr %64, i64 36
  %70 = load i32, ptr %69, align 4, !tbaa !55
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %66, align 8, !tbaa !12
  br label %74

74:                                               ; preds = %68, %72
  %75 = phi ptr [ %73, %72 ], [ %66, %68 ]
  %76 = load ptr, ptr @PL_stashcache, align 8, !tbaa !12
  %77 = icmp ne ptr %76, null
  %78 = icmp ne ptr %75, null
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %80, label %92

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.hek, ptr %75, i64 0, i32 2
  %82 = getelementptr inbounds %struct.hek, ptr %75, i64 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !16
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %81, i64 %84
  %86 = getelementptr inbounds i8, ptr %85, i64 1
  %87 = load i8, ptr %86, align 1, !tbaa !13
  %88 = and i8 %87, 1
  %89 = zext nneg i8 %88 to i32
  %90 = load i32, ptr %75, align 4, !tbaa !47
  %91 = tail call ptr @Perl_hv_common(ptr noundef nonnull %76, ptr noundef null, ptr noundef nonnull %81, i64 noundef %84, i32 noundef %89, i32 noundef 68, ptr noundef null, i32 noundef %90) #11
  br label %92

92:                                               ; preds = %55, %58, %80, %74
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %39) #13
  br label %93

93:                                               ; preds = %92, %50, %48
  %94 = icmp eq ptr %41, null
  br i1 %94, label %129, label %95

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.io, ptr %41, i64 0, i32 1
  %97 = load i32, ptr %96, align 8, !tbaa !89
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %129

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.io, ptr %41, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !13
  %102 = icmp eq ptr %101, null
  br i1 %102, label %129, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr %41, align 8, !tbaa !79
  %105 = getelementptr inbounds %struct.xpvio, ptr %104, i64 0, i32 16
  %106 = load i8, ptr %105, align 8, !tbaa !90
  switch i8 %106, label %129 [
    i8 62, label %107
    i8 43, label %107
    i8 97, label %107
  ]

107:                                              ; preds = %103, %103, %103
  %108 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 5) #11
  br i1 %108, label %109, label %129

109:                                              ; preds = %107
  %110 = load ptr, ptr %100, align 8, !tbaa !13
  %111 = tail call ptr @Perl_PerlIO_stdin() #11
  %112 = icmp eq ptr %110, %111
  br i1 %112, label %129, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr %100, align 8, !tbaa !13
  %115 = tail call ptr @Perl_PerlIO_stdout() #11
  %116 = icmp eq ptr %114, %115
  br i1 %116, label %129, label %117

117:                                              ; preds = %113
  %118 = load ptr, ptr %100, align 8, !tbaa !13
  %119 = tail call ptr @Perl_PerlIO_stderr() #11
  %120 = icmp eq ptr %118, %119
  br i1 %120, label %129, label %121

121:                                              ; preds = %117
  %122 = load ptr, ptr %41, align 8, !tbaa !79
  %123 = getelementptr inbounds %struct.xpvio, ptr %122, i64 0, i32 17
  %124 = load i8, ptr %123, align 1, !tbaa !81
  %125 = and i8 %124, 64
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = tail call zeroext i1 @Perl_io_close(ptr noundef nonnull %41, ptr noundef nonnull %0, i1 noundef zeroext false, i1 noundef zeroext true) #11
  br label %129

129:                                              ; preds = %103, %127, %121, %117, %113, %109, %107, %99, %95, %93
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %41) #13
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %43) #13
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %45) #13
  %130 = load ptr, ptr %13, align 8, !tbaa !13
  %131 = getelementptr inbounds %struct.gp, ptr %130, i64 0, i32 10
  %132 = load ptr, ptr %131, align 8, !tbaa !40
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %157

134:                                              ; preds = %129
  %135 = load ptr, ptr %130, align 8, !tbaa !19
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %157

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.gp, ptr %130, i64 0, i32 6
  %139 = load ptr, ptr %138, align 8, !tbaa !22
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %157

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.gp, ptr %130, i64 0, i32 5
  %143 = load ptr, ptr %142, align 8, !tbaa !23
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %157

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.gp, ptr %130, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !76
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %157

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.gp, ptr %130, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !29
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.gp, ptr %130, i64 0, i32 7
  %155 = load ptr, ptr %154, align 8, !tbaa !45
  %156 = icmp eq ptr %155, null
  br i1 %156, label %163, label %157

157:                                              ; preds = %153, %149, %145, %141, %137, %134, %129
  %158 = add nsw i32 %31, -1
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %157, %161
  br label %30

161:                                              ; preds = %157
  %162 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.70) #11
  br label %160

163:                                              ; preds = %153
  %164 = getelementptr inbounds %struct.gp, ptr %130, i64 0, i32 4
  %165 = load i32, ptr %164, align 4, !tbaa !41
  %166 = icmp ugt i32 %165, 1
  br i1 %166, label %20, label %167

167:                                              ; preds = %163
  tail call void @Perl_safesysfree(ptr noundef nonnull %130) #11
  store ptr null, ptr %13, align 8, !tbaa !13
  br label %168

168:                                              ; preds = %8, %1, %3, %12, %167, %27, %19
  ret void
}

; Function Attrs: optsize
declare zeroext i1 @Perl_ckwarn_d(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_PerlIO_stdin() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_PerlIO_stdout() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_PerlIO_stderr() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_io_close(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_die(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_magic_freeovrld(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %4, align 8, !tbaa !94
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 1, %6 ]
  %12 = getelementptr inbounds %struct.am_table, ptr %4, i64 0, i32 4, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %13) #13
  store ptr null, ptr %12, align 8, !tbaa !12
  br label %16

16:                                               ; preds = %15, %10
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, 75
  br i1 %18, label %19, label %10, !llvm.loop !96

19:                                               ; preds = %16, %6, %2
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_Gv_AMupdate(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.am_table, align 8
  %4 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 99) #11
  call void @llvm.lifetime.start.p0(i64 608, ptr nonnull %3) #14
  %5 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = load ptr, ptr %0, align 8, !tbaa !52
  %8 = getelementptr inbounds %struct.xpvhv, ptr %7, i64 0, i32 3
  %9 = load i64, ptr %8, align 8, !tbaa !53
  %10 = getelementptr ptr, ptr %6, i64 %9
  %11 = getelementptr ptr, ptr %10, i64 5
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %0) #11
  br label %16

16:                                               ; preds = %2, %14
  %17 = phi ptr [ %15, %14 ], [ %12, %2 ]
  %18 = load i32, ptr @PL_sub_generation, align 4, !tbaa !21
  %19 = getelementptr inbounds %struct.mro_meta, ptr %17, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !97
  %21 = add i32 %20, %18
  %22 = getelementptr inbounds %struct.mro_meta, ptr %17, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !58
  %24 = add i32 %21, %23
  %25 = icmp eq ptr %4, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.magic, ptr %4, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !91
  %29 = getelementptr inbounds %struct.am_table, ptr %28, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !98
  %31 = icmp eq i32 %30, %24
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i8, ptr %28, align 8, !tbaa !94
  %34 = and i8 %33, 1
  %35 = zext nneg i8 %34 to i32
  br label %443

36:                                               ; preds = %26
  %37 = tail call i32 @Perl_sv_unmagic(ptr noundef nonnull %0, i32 noundef 99) #11
  br label %38

38:                                               ; preds = %36, %16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(608) %3, i8 0, i64 608, i1 false)
  %39 = getelementptr inbounds %struct.am_table, ptr %3, i64 0, i32 3
  store i32 %24, ptr %39, align 4, !tbaa !98
  %40 = getelementptr inbounds %struct.am_table, ptr %3, i64 0, i32 1
  store i8 2, ptr %40, align 1, !tbaa !99
  %41 = tail call ptr @Perl_gv_fetchmeth_pvn(ptr noundef nonnull %0, ptr noundef nonnull @.str.78, i64 noundef 2, i32 noundef -1, i32 noundef 0) #13
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = tail call ptr @Perl_gv_fetchmeth_pvn(ptr noundef nonnull %0, ptr noundef nonnull @.str.71, i64 noundef 2, i32 noundef -1, i32 noundef 0) #13
  %45 = icmp eq ptr %44, null
  br i1 %45, label %442, label %118

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.gv, ptr %41, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !13
  %49 = load ptr, ptr %48, align 8, !tbaa !19
  %50 = icmp eq ptr %49, null
  br i1 %50, label %118, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !6
  %54 = and i32 %53, 2097152
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %49, i32 noundef 2) #11
  br i1 %57, label %115, label %105

58:                                               ; preds = %51
  %59 = and i32 %53, 65280
  %60 = icmp ne i32 %59, 0
  %61 = and i32 %53, 255
  %62 = icmp eq i32 %61, 8
  %63 = or i1 %60, %62
  %64 = and i32 %53, 16777471
  %65 = icmp eq i32 %64, 16777226
  %66 = or i1 %65, %63
  br i1 %66, label %67, label %105

67:                                               ; preds = %58
  %68 = and i32 %53, 1024
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr %49, align 8, !tbaa !48
  %72 = icmp eq ptr %71, null
  br i1 %72, label %105, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.xpv, ptr %71, i64 0, i32 2
  %75 = load i64, ptr %74, align 8, !tbaa !24
  %76 = icmp ugt i64 %75, 1
  br i1 %76, label %115, label %77

77:                                               ; preds = %73
  %78 = icmp eq i64 %75, 0
  br i1 %78, label %105, label %79

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !13
  %82 = load i8, ptr %81, align 1, !tbaa !13
  %83 = icmp eq i8 %82, 48
  br i1 %83, label %105, label %115

84:                                               ; preds = %67
  %85 = and i32 %53, 768
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %103, label %87

87:                                               ; preds = %84
  %88 = and i32 %53, 256
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr %49, align 8, !tbaa !48
  %92 = getelementptr inbounds %struct.xpviv, ptr %91, i64 0, i32 4
  %93 = load i64, ptr %92, align 8, !tbaa !13
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %115

95:                                               ; preds = %90, %87
  %96 = and i32 %53, 512
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr %49, align 8, !tbaa !48
  %100 = getelementptr inbounds %struct.xpvnv, ptr %99, i64 0, i32 5
  %101 = load double, ptr %100, align 8, !tbaa !13
  %102 = fcmp une double %101, 0.000000e+00
  br i1 %102, label %115, label %105

103:                                              ; preds = %84
  %104 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %49, i32 noundef 0) #11
  br i1 %104, label %115, label %105

105:                                              ; preds = %98, %58, %103, %95, %79, %77, %70, %56
  %106 = load i32, ptr %52, align 4, !tbaa !6
  %107 = and i32 %106, 65280
  %108 = icmp ne i32 %107, 0
  %109 = and i32 %106, 255
  %110 = icmp eq i32 %109, 8
  %111 = or i1 %108, %110
  %112 = and i32 %106, 16777471
  %113 = icmp eq i32 %112, 16777226
  %114 = or i1 %113, %111
  br i1 %114, label %115, label %118

115:                                              ; preds = %105, %56, %73, %79, %90, %98, %103
  %116 = phi i8 [ 3, %103 ], [ 3, %98 ], [ 3, %90 ], [ 3, %79 ], [ 3, %73 ], [ 3, %56 ], [ 1, %105 ]
  %117 = phi i32 [ 0, %103 ], [ 0, %98 ], [ 0, %90 ], [ 0, %79 ], [ 0, %73 ], [ 0, %56 ], [ 1, %105 ]
  store i8 %116, ptr %40, align 1, !tbaa !99
  br label %118

118:                                              ; preds = %115, %105, %46, %43
  %119 = phi i32 [ 0, %46 ], [ 0, %43 ], [ 1, %105 ], [ %117, %115 ]
  %120 = load ptr, ptr %5, align 8, !tbaa !13
  %121 = load ptr, ptr %0, align 8, !tbaa !52
  %122 = getelementptr inbounds %struct.xpvhv, ptr %121, i64 0, i32 3
  %123 = load i64, ptr %122, align 8, !tbaa !53
  %124 = getelementptr ptr, ptr %120, i64 %123
  %125 = getelementptr i8, ptr %124, i64 60
  %126 = load i32, ptr %125, align 4, !tbaa !84
  %127 = and i32 %126, -3
  store i32 %127, ptr %125, align 4, !tbaa !84
  br label %128

128:                                              ; preds = %118, %422
  %129 = phi i64 [ 1, %118 ], [ %425, %422 ]
  %130 = phi i32 [ %119, %118 ], [ %424, %422 ]
  %131 = phi i8 [ 0, %118 ], [ %423, %422 ]
  %132 = getelementptr inbounds [75 x ptr], ptr @PL_AMG_names, i64 0, i64 %129
  %133 = load ptr, ptr %132, align 8, !tbaa !12
  %134 = getelementptr inbounds [75 x i8], ptr @PL_AMG_namelens, i64 0, i64 %129
  %135 = load i8, ptr %134, align 1, !tbaa !13
  %136 = zext i8 %135 to i64
  %137 = tail call ptr @Perl_gv_fetchmeth_pvn(ptr noundef nonnull %0, ptr noundef %133, i64 noundef %136, i32 noundef -1, i32 noundef 0) #13
  %138 = icmp eq ptr %137, null
  br i1 %138, label %413, label %139

139:                                              ; preds = %128
  %140 = getelementptr inbounds %struct.gv, ptr %137, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !13
  %142 = getelementptr inbounds %struct.gp, ptr %141, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !29
  %144 = icmp eq ptr %143, null
  br i1 %144, label %416, label %145

145:                                              ; preds = %139
  %146 = load ptr, ptr %143, align 8, !tbaa !30
  %147 = getelementptr inbounds %struct.xpvcv, ptr %146, i64 0, i32 7
  %148 = load ptr, ptr %147, align 8, !tbaa !13
  %149 = icmp eq ptr %148, null
  br i1 %149, label %416, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.xpvcv, ptr %146, i64 0, i32 12
  %152 = load i32, ptr %151, align 4, !tbaa !44
  %153 = and i32 %152, 32768
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %150
  %156 = tail call fastcc ptr @CvNAME_HEK(ptr noundef nonnull %143) #13
  br label %165

157:                                              ; preds = %150
  %158 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %143) #13
  %159 = load ptr, ptr %158, align 8, !tbaa !14
  %160 = getelementptr inbounds %struct.xpvgv, ptr %159, i64 0, i32 4
  %161 = load ptr, ptr %160, align 8, !tbaa !13
  %162 = load ptr, ptr %143, align 8, !tbaa !30
  %163 = getelementptr inbounds %struct.xpvcv, ptr %162, i64 0, i32 12
  %164 = load i32, ptr %163, align 4, !tbaa !44
  br label %165

165:                                              ; preds = %157, %155
  %166 = phi i32 [ %152, %155 ], [ %164, %157 ]
  %167 = phi ptr [ %146, %155 ], [ %162, %157 ]
  %168 = phi ptr [ %156, %155 ], [ %161, %157 ]
  %169 = and i32 %166, 32768
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.xpvcv, ptr %167, i64 0, i32 4
  br label %177

173:                                              ; preds = %165
  %174 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %143) #13
  %175 = load ptr, ptr %174, align 8, !tbaa !14
  %176 = getelementptr inbounds %struct.xpvgv, ptr %175, i64 0, i32 5
  br label %177

177:                                              ; preds = %173, %171
  %178 = phi ptr [ %172, %171 ], [ %176, %173 ]
  %179 = load ptr, ptr %178, align 8, !tbaa !13
  %180 = getelementptr inbounds %struct.hv, ptr %179, i64 0, i32 2
  %181 = load i32, ptr %180, align 4, !tbaa !50
  %182 = and i32 %181, 33554432
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %339, label %184

184:                                              ; preds = %177
  %185 = load ptr, ptr %143, align 8, !tbaa !30
  %186 = getelementptr inbounds %struct.xpvcv, ptr %185, i64 0, i32 12
  %187 = load i32, ptr %186, align 4, !tbaa !44
  %188 = and i32 %187, 32768
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.xpvcv, ptr %185, i64 0, i32 4
  br label %199

192:                                              ; preds = %184
  %193 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %143) #13
  %194 = load ptr, ptr %193, align 8, !tbaa !14
  %195 = getelementptr inbounds %struct.xpvgv, ptr %194, i64 0, i32 5
  %196 = load ptr, ptr %143, align 8, !tbaa !30
  %197 = getelementptr inbounds %struct.xpvcv, ptr %196, i64 0, i32 12
  %198 = load i32, ptr %197, align 4, !tbaa !44
  br label %199

199:                                              ; preds = %192, %190
  %200 = phi i32 [ %187, %190 ], [ %198, %192 ]
  %201 = phi ptr [ %185, %190 ], [ %196, %192 ]
  %202 = phi ptr [ %191, %190 ], [ %195, %192 ]
  %203 = load ptr, ptr %202, align 8, !tbaa !13
  %204 = getelementptr inbounds %struct.hv, ptr %203, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !13
  %206 = and i32 %200, 32768
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %199
  %209 = getelementptr inbounds %struct.xpvcv, ptr %201, i64 0, i32 4
  br label %214

210:                                              ; preds = %199
  %211 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %143) #13
  %212 = load ptr, ptr %211, align 8, !tbaa !14
  %213 = getelementptr inbounds %struct.xpvgv, ptr %212, i64 0, i32 5
  br label %214

214:                                              ; preds = %210, %208
  %215 = phi ptr [ %209, %208 ], [ %213, %210 ]
  %216 = load ptr, ptr %215, align 8, !tbaa !13
  %217 = load ptr, ptr %216, align 8, !tbaa !52
  %218 = getelementptr inbounds %struct.xpvhv, ptr %217, i64 0, i32 3
  %219 = load i64, ptr %218, align 8, !tbaa !53
  %220 = getelementptr ptr, ptr %205, i64 %219
  %221 = getelementptr ptr, ptr %220, i64 1
  %222 = load ptr, ptr %221, align 8, !tbaa !13
  %223 = icmp eq ptr %222, null
  br i1 %223, label %339, label %224

224:                                              ; preds = %214
  %225 = load ptr, ptr %143, align 8, !tbaa !30
  %226 = getelementptr inbounds %struct.xpvcv, ptr %225, i64 0, i32 12
  %227 = load i32, ptr %226, align 4, !tbaa !44
  %228 = and i32 %227, 32768
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.xpvcv, ptr %225, i64 0, i32 4
  br label %239

232:                                              ; preds = %224
  %233 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %143) #13
  %234 = load ptr, ptr %233, align 8, !tbaa !14
  %235 = getelementptr inbounds %struct.xpvgv, ptr %234, i64 0, i32 5
  %236 = load ptr, ptr %143, align 8, !tbaa !30
  %237 = getelementptr inbounds %struct.xpvcv, ptr %236, i64 0, i32 12
  %238 = load i32, ptr %237, align 4, !tbaa !44
  br label %239

239:                                              ; preds = %232, %230
  %240 = phi i32 [ %227, %230 ], [ %238, %232 ]
  %241 = phi ptr [ %225, %230 ], [ %236, %232 ]
  %242 = phi ptr [ %231, %230 ], [ %235, %232 ]
  %243 = load ptr, ptr %242, align 8, !tbaa !13
  %244 = getelementptr inbounds %struct.hv, ptr %243, i64 0, i32 3
  %245 = load ptr, ptr %244, align 8, !tbaa !13
  %246 = and i32 %240, 32768
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %250, label %248

248:                                              ; preds = %239
  %249 = getelementptr inbounds %struct.xpvcv, ptr %241, i64 0, i32 4
  br label %254

250:                                              ; preds = %239
  %251 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %143) #13
  %252 = load ptr, ptr %251, align 8, !tbaa !14
  %253 = getelementptr inbounds %struct.xpvgv, ptr %252, i64 0, i32 5
  br label %254

254:                                              ; preds = %250, %248
  %255 = phi ptr [ %249, %248 ], [ %253, %250 ]
  %256 = load ptr, ptr %255, align 8, !tbaa !13
  %257 = load ptr, ptr %256, align 8, !tbaa !52
  %258 = getelementptr inbounds %struct.xpvhv, ptr %257, i64 0, i32 3
  %259 = load i64, ptr %258, align 8, !tbaa !53
  %260 = getelementptr ptr, ptr %245, i64 %259
  %261 = getelementptr i8, ptr %260, i64 36
  %262 = load i32, ptr %261, align 4, !tbaa !55
  %263 = icmp eq i32 %262, 0
  %264 = load ptr, ptr %143, align 8, !tbaa !30
  %265 = getelementptr inbounds %struct.xpvcv, ptr %264, i64 0, i32 12
  %266 = load i32, ptr %265, align 4, !tbaa !44
  %267 = and i32 %266, 32768
  %268 = icmp eq i32 %267, 0
  br i1 %263, label %303, label %269

269:                                              ; preds = %254
  br i1 %268, label %272, label %270

270:                                              ; preds = %269
  %271 = getelementptr inbounds %struct.xpvcv, ptr %264, i64 0, i32 4
  br label %279

272:                                              ; preds = %269
  %273 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %143) #13
  %274 = load ptr, ptr %273, align 8, !tbaa !14
  %275 = getelementptr inbounds %struct.xpvgv, ptr %274, i64 0, i32 5
  %276 = load ptr, ptr %143, align 8, !tbaa !30
  %277 = getelementptr inbounds %struct.xpvcv, ptr %276, i64 0, i32 12
  %278 = load i32, ptr %277, align 4, !tbaa !44
  br label %279

279:                                              ; preds = %272, %270
  %280 = phi i32 [ %266, %270 ], [ %278, %272 ]
  %281 = phi ptr [ %264, %270 ], [ %276, %272 ]
  %282 = phi ptr [ %271, %270 ], [ %275, %272 ]
  %283 = load ptr, ptr %282, align 8, !tbaa !13
  %284 = getelementptr inbounds %struct.hv, ptr %283, i64 0, i32 3
  %285 = load ptr, ptr %284, align 8, !tbaa !13
  %286 = and i32 %280, 32768
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %279
  %289 = getelementptr inbounds %struct.xpvcv, ptr %281, i64 0, i32 4
  br label %294

290:                                              ; preds = %279
  %291 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %143) #13
  %292 = load ptr, ptr %291, align 8, !tbaa !14
  %293 = getelementptr inbounds %struct.xpvgv, ptr %292, i64 0, i32 5
  br label %294

294:                                              ; preds = %290, %288
  %295 = phi ptr [ %289, %288 ], [ %293, %290 ]
  %296 = load ptr, ptr %295, align 8, !tbaa !13
  %297 = load ptr, ptr %296, align 8, !tbaa !52
  %298 = getelementptr inbounds %struct.xpvhv, ptr %297, i64 0, i32 3
  %299 = load i64, ptr %298, align 8, !tbaa !53
  %300 = getelementptr ptr, ptr %285, i64 %299
  %301 = getelementptr ptr, ptr %300, i64 1
  %302 = load ptr, ptr %301, align 8, !tbaa !13
  br label %336

303:                                              ; preds = %254
  br i1 %268, label %306, label %304

304:                                              ; preds = %303
  %305 = getelementptr inbounds %struct.xpvcv, ptr %264, i64 0, i32 4
  br label %313

306:                                              ; preds = %303
  %307 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %143) #13
  %308 = load ptr, ptr %307, align 8, !tbaa !14
  %309 = getelementptr inbounds %struct.xpvgv, ptr %308, i64 0, i32 5
  %310 = load ptr, ptr %143, align 8, !tbaa !30
  %311 = getelementptr inbounds %struct.xpvcv, ptr %310, i64 0, i32 12
  %312 = load i32, ptr %311, align 4, !tbaa !44
  br label %313

313:                                              ; preds = %306, %304
  %314 = phi i32 [ %266, %304 ], [ %312, %306 ]
  %315 = phi ptr [ %264, %304 ], [ %310, %306 ]
  %316 = phi ptr [ %305, %304 ], [ %309, %306 ]
  %317 = load ptr, ptr %316, align 8, !tbaa !13
  %318 = getelementptr inbounds %struct.hv, ptr %317, i64 0, i32 3
  %319 = load ptr, ptr %318, align 8, !tbaa !13
  %320 = and i32 %314, 32768
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %324, label %322

322:                                              ; preds = %313
  %323 = getelementptr inbounds %struct.xpvcv, ptr %315, i64 0, i32 4
  br label %328

324:                                              ; preds = %313
  %325 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %143) #13
  %326 = load ptr, ptr %325, align 8, !tbaa !14
  %327 = getelementptr inbounds %struct.xpvgv, ptr %326, i64 0, i32 5
  br label %328

328:                                              ; preds = %324, %322
  %329 = phi ptr [ %323, %322 ], [ %327, %324 ]
  %330 = load ptr, ptr %329, align 8, !tbaa !13
  %331 = load ptr, ptr %330, align 8, !tbaa !52
  %332 = getelementptr inbounds %struct.xpvhv, ptr %331, i64 0, i32 3
  %333 = load i64, ptr %332, align 8, !tbaa !53
  %334 = getelementptr ptr, ptr %319, i64 %333
  %335 = getelementptr ptr, ptr %334, i64 1
  br label %336

336:                                              ; preds = %328, %294
  %337 = phi ptr [ %302, %294 ], [ %335, %328 ]
  %338 = load ptr, ptr %337, align 8, !tbaa !13
  br label %339

339:                                              ; preds = %336, %177, %214
  %340 = phi ptr [ null, %214 ], [ null, %177 ], [ %338, %336 ]
  %341 = getelementptr inbounds %struct.hek, ptr %168, i64 0, i32 1
  %342 = load i32, ptr %341, align 4, !tbaa !16
  %343 = icmp eq i32 %342, 3
  br i1 %343, label %344, label %416

344:                                              ; preds = %339
  %345 = getelementptr inbounds %struct.hek, ptr %168, i64 0, i32 2
  %346 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %345, ptr noundef nonnull dereferenceable(4) @.str.72) #12
  %347 = icmp eq i32 %346, 0
  %348 = icmp ne ptr %340, null
  %349 = select i1 %347, i1 %348, i1 false
  br i1 %349, label %350, label %416

350:                                              ; preds = %344
  %351 = getelementptr inbounds %struct.hek, ptr %340, i64 0, i32 1
  %352 = load i32, ptr %351, align 4, !tbaa !16
  %353 = icmp eq i32 %352, 8
  br i1 %353, label %354, label %416

354:                                              ; preds = %350
  %355 = getelementptr inbounds %struct.hek, ptr %340, i64 0, i32 2
  %356 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %355, ptr noundef nonnull dereferenceable(9) @.str.73) #12
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %416

358:                                              ; preds = %354
  %359 = load ptr, ptr %140, align 8, !tbaa !13
  %360 = load ptr, ptr %359, align 8, !tbaa !19
  %361 = icmp eq ptr %360, null
  br i1 %361, label %371, label %362

362:                                              ; preds = %358
  %363 = getelementptr inbounds %struct.sv, ptr %360, i64 0, i32 2
  %364 = load i32, ptr %363, align 4, !tbaa !6
  %365 = and i32 %364, 1024
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %370, label %367

367:                                              ; preds = %362
  %368 = tail call ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef nonnull %0, ptr noundef nonnull %360, i32 noundef 0) #13
  %369 = icmp eq ptr %368, null
  br i1 %369, label %370, label %408

370:                                              ; preds = %367, %362
  br i1 %1, label %443, label %372

371:                                              ; preds = %358
  br i1 %1, label %443, label %377

372:                                              ; preds = %370
  %373 = getelementptr inbounds %struct.sv, ptr %360, i64 0, i32 2
  %374 = load i32, ptr %373, align 4, !tbaa !6
  %375 = and i32 %374, 1024
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %379

377:                                              ; preds = %371, %372
  %378 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.74, i64 noundef 3, i32 noundef 524288) #11
  br label %379

379:                                              ; preds = %372, %377
  %380 = phi ptr [ %378, %377 ], [ %360, %372 ]
  %381 = load ptr, ptr %140, align 8, !tbaa !13
  %382 = getelementptr inbounds %struct.gp, ptr %381, i64 0, i32 3
  %383 = load i32, ptr %382, align 8, !tbaa !35
  %384 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %385 = load i32, ptr %384, align 4, !tbaa !50
  %386 = and i32 %385, 33554432
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %403, label %388

388:                                              ; preds = %379
  %389 = load ptr, ptr %5, align 8, !tbaa !13
  %390 = load ptr, ptr %0, align 8, !tbaa !52
  %391 = getelementptr inbounds %struct.xpvhv, ptr %390, i64 0, i32 3
  %392 = load i64, ptr %391, align 8, !tbaa !53
  %393 = getelementptr ptr, ptr %389, i64 %392
  %394 = getelementptr ptr, ptr %393, i64 1
  %395 = load ptr, ptr %394, align 8, !tbaa !13
  %396 = icmp eq ptr %395, null
  br i1 %396, label %403, label %397

397:                                              ; preds = %388
  %398 = getelementptr i8, ptr %393, i64 36
  %399 = load i32, ptr %398, align 4, !tbaa !55
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %403, label %401

401:                                              ; preds = %397
  %402 = load ptr, ptr %395, align 8, !tbaa !12
  br label %403

403:                                              ; preds = %397, %379, %388, %401
  %404 = phi ptr [ %402, %401 ], [ null, %388 ], [ null, %379 ], [ %395, %397 ]
  %405 = icmp eq i32 %383, 0
  %406 = select i1 %405, ptr @.str.77, ptr @.str.76
  %407 = getelementptr inbounds i8, ptr %133, i64 1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.75, ptr noundef nonnull %406, ptr noundef %380, ptr noundef nonnull %407, ptr noundef %404) #11
  unreachable

408:                                              ; preds = %367
  %409 = getelementptr inbounds %struct.gv, ptr %368, i64 0, i32 3
  %410 = load ptr, ptr %409, align 8, !tbaa !13
  %411 = getelementptr inbounds %struct.gp, ptr %410, i64 0, i32 2
  %412 = load ptr, ptr %411, align 8, !tbaa !29
  br label %416

413:                                              ; preds = %128
  %414 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef null) #13
  %415 = getelementptr inbounds %struct.am_table, ptr %3, i64 0, i32 4, i64 %129
  store ptr null, ptr %415, align 8, !tbaa !12
  br label %422

416:                                              ; preds = %408, %339, %344, %350, %354, %145, %139
  %417 = phi ptr [ %137, %139 ], [ %137, %145 ], [ %412, %408 ], [ %143, %339 ], [ %143, %344 ], [ %143, %350 ], [ %143, %354 ]
  %418 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %417) #13
  %419 = getelementptr inbounds %struct.am_table, ptr %3, i64 0, i32 4, i64 %129
  store ptr %417, ptr %419, align 8, !tbaa !12
  %420 = trunc i64 %129 to i32
  switch i32 %420, label %422 [
    i32 1, label %421
    i32 2, label %421
    i32 3, label %421
    i32 4, label %421
    i32 5, label %421
    i32 29, label %421
  ]

421:                                              ; preds = %416, %416, %416, %416, %416, %416
  br label %422

422:                                              ; preds = %421, %416, %413
  %423 = phi i8 [ %131, %413 ], [ 1, %421 ], [ %131, %416 ]
  %424 = phi i32 [ %130, %413 ], [ 1, %421 ], [ 1, %416 ]
  %425 = add nuw nsw i64 %129, 1
  %426 = icmp eq i64 %425, 75
  br i1 %426, label %427, label %128, !llvm.loop !100

427:                                              ; preds = %422
  %428 = and i8 %423, 1
  %429 = icmp eq i8 %428, 0
  br i1 %429, label %430, label %439

430:                                              ; preds = %427
  %431 = load ptr, ptr %5, align 8, !tbaa !13
  %432 = load ptr, ptr %0, align 8, !tbaa !52
  %433 = getelementptr inbounds %struct.xpvhv, ptr %432, i64 0, i32 3
  %434 = load i64, ptr %433, align 8, !tbaa !53
  %435 = getelementptr ptr, ptr %431, i64 %434
  %436 = getelementptr i8, ptr %435, i64 60
  %437 = load i32, ptr %436, align 4, !tbaa !84
  %438 = or i32 %437, 2
  store i32 %438, ptr %436, align 4, !tbaa !84
  br label %439

439:                                              ; preds = %430, %427
  %440 = icmp eq i32 %424, 0
  br i1 %440, label %442, label %441

441:                                              ; preds = %439
  store i8 1, ptr %3, align 8, !tbaa !94
  call void @Perl_sv_magic(ptr noundef nonnull %0, ptr noundef null, i32 noundef 99, ptr noundef nonnull %3, i32 noundef 608) #11
  br label %443

442:                                              ; preds = %43, %439
  store i8 0, ptr %3, align 8, !tbaa !94
  call void @Perl_sv_magic(ptr noundef nonnull %0, ptr noundef null, i32 noundef 99, ptr noundef nonnull %3, i32 noundef 8) #11
  br label %443

443:                                              ; preds = %370, %371, %441, %32, %442
  %444 = phi i32 [ 0, %442 ], [ %35, %32 ], [ -1, %371 ], [ -1, %370 ], [ 1, %441 ]
  call void @llvm.lifetime.end.p0(i64 608, ptr nonnull %3) #14
  ret i32 %444
}

; Function Attrs: optsize
declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_sv_unmagic(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !46
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !46
  br label %7

7:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_handler(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %81, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !50
  %7 = and i32 %6, 33554432
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %81, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = load ptr, ptr %0, align 8, !tbaa !52
  %13 = getelementptr inbounds %struct.xpvhv, ptr %12, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !53
  %15 = getelementptr ptr, ptr %11, i64 %14
  %16 = getelementptr ptr, ptr %15, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %81, label %19

19:                                               ; preds = %9
  %20 = getelementptr i8, ptr %15, i64 36
  %21 = load i32, ptr %20, align 4, !tbaa !55
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %17, align 8, !tbaa !12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %81, label %26

26:                                               ; preds = %19, %23
  %27 = getelementptr ptr, ptr %15, i64 5
  %28 = load ptr, ptr %27, align 8, !tbaa !57
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %0) #11
  br label %32

32:                                               ; preds = %26, %30
  %33 = phi ptr [ %31, %30 ], [ %28, %26 ]
  %34 = load i32, ptr @PL_sub_generation, align 4, !tbaa !21
  %35 = getelementptr inbounds %struct.mro_meta, ptr %33, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !97
  %37 = add i32 %36, %34
  %38 = getelementptr inbounds %struct.mro_meta, ptr %33, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !58
  %40 = add i32 %37, %39
  %41 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 99) #11
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %48, %32
  %44 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %0, i1 noundef zeroext false) #13
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %81, label %46

46:                                               ; preds = %43
  %47 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 99) #11
  br label %48

48:                                               ; preds = %46, %32
  %49 = phi ptr [ %41, %32 ], [ %47, %46 ]
  %50 = getelementptr inbounds %struct.magic, ptr %49, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !91
  %52 = getelementptr inbounds %struct.am_table, ptr %51, i64 0, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !98
  %54 = icmp eq i32 %53, %40
  br i1 %54, label %55, label %43

55:                                               ; preds = %48
  %56 = load i8, ptr %51, align 8, !tbaa !94
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %81, label %59

59:                                               ; preds = %55
  %60 = sext i32 %1 to i64
  %61 = getelementptr inbounds %struct.am_table, ptr %51, i64 0, i32 4, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !12
  %63 = icmp eq ptr %62, null
  br i1 %63, label %81, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.cv, ptr %62, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !69
  %67 = and i32 %66, 255
  %68 = icmp eq i32 %67, 9
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = getelementptr inbounds [75 x ptr], ptr @PL_AMG_names, i64 0, i64 %60
  %71 = load ptr, ptr %70, align 8, !tbaa !12
  %72 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %0, ptr noundef %71, i32 noundef 1) #13
  %73 = icmp eq ptr %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.gv, ptr %72, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !13
  %77 = getelementptr inbounds %struct.gp, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !29
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %69, %74
  br label %81

81:                                               ; preds = %59, %64, %80, %74, %55, %43, %2, %23, %9, %4
  %82 = phi ptr [ null, %4 ], [ null, %9 ], [ null, %23 ], [ null, %2 ], [ null, %43 ], [ null, %55 ], [ %78, %74 ], [ %62, %80 ], [ %62, %64 ], [ null, %59 ]
  ret ptr %82
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @Perl_try_amagic_un(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !6
  %7 = and i32 %6, 2097152
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @Perl_mg_get(ptr noundef nonnull %4) #11
  %11 = load i32, ptr %5, align 4, !tbaa !6
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi i32 [ %6, %2 ], [ %11, %9 ]
  %14 = and i32 %13, 2048
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %57, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !13
  %19 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !6
  %21 = and i32 %20, 1048576
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %57, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr %18, align 8, !tbaa !48
  %25 = load ptr, ptr %24, align 8, !tbaa !101
  %26 = getelementptr inbounds %struct.hv, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !50
  %28 = and i32 %27, 268435456
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %57, label %30

30:                                               ; preds = %23
  %31 = and i32 %1, 128
  %32 = or disjoint i32 %31, 9
  %33 = tail call ptr @Perl_amagic_call(ptr noundef nonnull %4, ptr noundef nonnull @PL_sv_undef, i32 noundef %0, i32 noundef %32) #13
  %34 = icmp eq ptr %33, null
  br i1 %34, label %57, label %35

35:                                               ; preds = %30
  %36 = and i32 %1, 32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = load ptr, ptr @PL_curpad, align 8, !tbaa !12
  %40 = load ptr, ptr @PL_op, align 8, !tbaa !12
  %41 = getelementptr inbounds %struct.op, ptr %40, i64 0, i32 3
  %42 = load i64, ptr %41, align 8, !tbaa !103
  %43 = getelementptr inbounds ptr, ptr %39, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !12
  %45 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !6
  %47 = and i32 %46, 131072
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %38
  tail call void @Perl_sv_setsv_flags(ptr noundef nonnull %44, ptr noundef nonnull %33, i32 noundef 1538) #11
  %50 = load i32, ptr %45, align 4, !tbaa !6
  %51 = and i32 %50, 4194304
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = tail call i32 @Perl_mg_set(ptr noundef nonnull %44) #11
  br label %55

55:                                               ; preds = %49, %53, %38, %35
  %56 = phi ptr [ %33, %35 ], [ %44, %49 ], [ %44, %53 ], [ %33, %38 ]
  store ptr %56, ptr %3, align 8, !tbaa !12
  store ptr %3, ptr @PL_stack_sp, align 8, !tbaa !12
  br label %66

57:                                               ; preds = %30, %23, %16, %12
  %58 = and i32 %1, 16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = load i32, ptr %5, align 4, !tbaa !6
  %62 = and i32 %61, 2048
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = tail call ptr @Perl_sv_2num(ptr noundef nonnull %4) #11
  store ptr %65, ptr %3, align 8, !tbaa !12
  br label %66

66:                                               ; preds = %57, %60, %64, %55
  %67 = phi i1 [ true, %55 ], [ false, %64 ], [ false, %60 ], [ false, %57 ]
  ret i1 %67
}

; Function Attrs: optsize
declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_amagic_call(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.binop, align 8
  %6 = and i32 %3, 4
  %7 = icmp eq i32 %6, 0
  %8 = lshr exact i32 %6, 2
  %9 = load ptr, ptr @PL_curcop, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.cop, ptr %9, i64 0, i32 10
  %11 = load i32, ptr %10, align 8, !tbaa !75
  %12 = and i32 %11, 16777216
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = tail call zeroext i1 @Perl_amagic_is_enabled(i32 noundef %2) #13
  br i1 %15, label %16, label %1103

16:                                               ; preds = %14, %4
  %17 = and i32 %3, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %289

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !6
  %22 = and i32 %21, 2048
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %289, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !13
  %27 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !6
  %29 = and i32 %28, 1048576
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %289, label %31

31:                                               ; preds = %24
  %32 = load ptr, ptr %26, align 8, !tbaa !48
  %33 = load ptr, ptr %32, align 8, !tbaa !101
  %34 = getelementptr inbounds %struct.hv, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !50
  %36 = and i32 %35, 268435456
  %37 = icmp eq i32 %36, 0
  %38 = icmp eq ptr %33, null
  %39 = or i1 %38, %37
  br i1 %39, label %289, label %40

40:                                               ; preds = %31
  %41 = and i32 %35, 33554432
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %65, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.hv, ptr %33, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !13
  %46 = load ptr, ptr %33, align 8, !tbaa !52
  %47 = getelementptr inbounds %struct.xpvhv, ptr %46, i64 0, i32 3
  %48 = load i64, ptr %47, align 8, !tbaa !53
  %49 = getelementptr ptr, ptr %45, i64 %48
  %50 = getelementptr ptr, ptr %49, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !13
  %52 = icmp eq ptr %51, null
  br i1 %52, label %65, label %53

53:                                               ; preds = %43
  %54 = getelementptr i8, ptr %49, i64 36
  %55 = load i32, ptr %54, align 4, !tbaa !55
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %51, align 8, !tbaa !12
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %53, %57
  %61 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %33, i1 noundef zeroext false) #13
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32, ptr %34, align 4, !tbaa !50
  br label %65

65:                                               ; preds = %63, %40, %43, %57
  %66 = phi i32 [ %64, %63 ], [ %35, %40 ], [ %35, %43 ], [ %35, %57 ]
  %67 = and i32 %66, -268435457
  store i32 %67, ptr %34, align 4, !tbaa !50
  br label %289

68:                                               ; preds = %60
  %69 = tail call ptr @Perl_mg_find(ptr noundef nonnull %33, i32 noundef 99) #11
  %70 = icmp eq ptr %69, null
  br i1 %70, label %289, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.magic, ptr %69, i64 0, i32 7
  %73 = load ptr, ptr %72, align 8, !tbaa !91
  %74 = load i8, ptr %73, align 8, !tbaa !94
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  %77 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4
  br i1 %76, label %289, label %78

78:                                               ; preds = %71
  %79 = add nsw i32 %8, %2
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds ptr, ptr %77, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !12
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %592

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 1
  %86 = load i8, ptr %85, align 1, !tbaa !99
  br i1 %7, label %94, label %87

87:                                               ; preds = %84
  %88 = icmp ugt i8 %86, 1
  br i1 %88, label %89, label %289

89:                                               ; preds = %87
  %90 = sext i32 %2 to i64
  %91 = getelementptr inbounds ptr, ptr %77, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !12
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %592

94:                                               ; preds = %84, %89
  %95 = phi i32 [ %2, %89 ], [ %79, %84 ]
  %96 = icmp ult i8 %86, 2
  %97 = and i32 %3, 8
  %98 = icmp eq i32 %97, 0
  %99 = or i1 %98, %96
  br i1 %99, label %289, label %100

100:                                              ; preds = %94
  switch i32 %2, label %418 [
    i32 6, label %101
    i32 7, label %109
    i32 8, label %117
    i32 9, label %124
    i32 10, label %131
    i32 11, label %138
    i32 12, label %154
    i32 13, label %169
    i32 14, label %276
    i32 16, label %1103
    i32 15, label %1103
    i32 73, label %1103
    i32 74, label %1103
    i32 1, label %283
    i32 2, label %283
    i32 3, label %283
    i32 4, label %283
    i32 5, label %283
  ]

101:                                              ; preds = %100
  %102 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 31
  %103 = load ptr, ptr %102, align 8, !tbaa !12
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %630

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 30
  %107 = load ptr, ptr %106, align 8, !tbaa !12
  %108 = icmp eq ptr %107, null
  br i1 %108, label %431, label %630

109:                                              ; preds = %100
  %110 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 33
  %111 = load ptr, ptr %110, align 8, !tbaa !12
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %630

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 32
  %115 = load ptr, ptr %114, align 8, !tbaa !12
  %116 = icmp eq ptr %115, null
  br i1 %116, label %431, label %630

117:                                              ; preds = %100
  %118 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 9
  %119 = load ptr, ptr %118, align 8, !tbaa !12
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %619

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 10
  %123 = load ptr, ptr %122, align 8, !tbaa !12
  br label %284

124:                                              ; preds = %100
  %125 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 10
  %126 = load ptr, ptr %125, align 8, !tbaa !12
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %619

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 8
  %130 = load ptr, ptr %129, align 8, !tbaa !12
  br label %284

131:                                              ; preds = %100
  %132 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 9
  %133 = load ptr, ptr %132, align 8, !tbaa !12
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %619

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 8
  %137 = load ptr, ptr %136, align 8, !tbaa !12
  br label %284

138:                                              ; preds = %100
  %139 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 8
  %140 = load ptr, ptr %139, align 8, !tbaa !12
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %149

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 9
  %144 = load ptr, ptr %143, align 8, !tbaa !12
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 10
  %148 = load ptr, ptr %147, align 8, !tbaa !12
  br label %149

149:                                              ; preds = %146, %142, %138
  %150 = phi i32 [ 8, %138 ], [ 9, %142 ], [ 10, %146 ]
  %151 = phi ptr [ %140, %138 ], [ %144, %142 ], [ %148, %146 ]
  %152 = icmp ne ptr %151, null
  %153 = zext i1 %152 to i32
  br label %284

154:                                              ; preds = %100
  %155 = load ptr, ptr %25, align 8, !tbaa !13
  %156 = getelementptr inbounds %struct.sv, ptr %155, i64 0, i32 2
  %157 = load i32, ptr %156, align 4, !tbaa !6
  %158 = and i32 %157, 2296
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %431

160:                                              ; preds = %154
  %161 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %155) #11
  %162 = getelementptr inbounds %struct.sv, ptr %161, i64 0, i32 2
  %163 = load i32, ptr %162, align 4, !tbaa !6
  %164 = or i32 %163, 1048576
  store i32 %164, ptr %162, align 4, !tbaa !6
  %165 = load ptr, ptr %155, align 8, !tbaa !48
  %166 = load ptr, ptr %165, align 8, !tbaa !101
  %167 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %166) #13
  %168 = load ptr, ptr %161, align 8, !tbaa !48
  store ptr %166, ptr %168, align 8, !tbaa !101
  br label %1103

169:                                              ; preds = %100
  %170 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 17
  %171 = load ptr, ptr %170, align 8, !tbaa !12
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 58
  %175 = load ptr, ptr %174, align 8, !tbaa !12
  %176 = icmp eq ptr %175, null
  br i1 %176, label %431, label %177

177:                                              ; preds = %173, %169
  %178 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 14
  %179 = load ptr, ptr %178, align 8, !tbaa !12
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 32
  %183 = load ptr, ptr %182, align 8, !tbaa !12
  %184 = icmp eq ptr %183, null
  br i1 %184, label %431, label %185

185:                                              ; preds = %181, %177
  %186 = phi ptr [ %179, %177 ], [ %183, %181 ]
  %187 = tail call ptr @Perl_newSViv(i64 noundef 0) #11
  %188 = tail call ptr @Perl_sv_2mortal(ptr noundef %187) #11
  br i1 %172, label %252, label %189

189:                                              ; preds = %185
  %190 = tail call ptr @Perl_amagic_call(ptr noundef nonnull %0, ptr noundef %188, i32 noundef 17, i32 noundef 1) #13
  %191 = icmp eq ptr %190, null
  br i1 %191, label %1103, label %192

192:                                              ; preds = %189
  %193 = getelementptr inbounds %struct.sv, ptr %190, i64 0, i32 2
  %194 = load i32, ptr %193, align 4, !tbaa !6
  %195 = and i32 %194, 2097152
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %192
  %198 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %190, i32 noundef 2) #11
  %199 = select i1 %180, ptr %0, ptr %1
  %200 = select i1 %180, ptr %188, ptr %0
  br i1 %198, label %609, label %1103

201:                                              ; preds = %192
  %202 = and i32 %194, 65280
  %203 = icmp ne i32 %202, 0
  %204 = and i32 %194, 255
  %205 = icmp eq i32 %204, 8
  %206 = or i1 %203, %205
  %207 = and i32 %194, 16777471
  %208 = icmp eq i32 %207, 16777226
  %209 = or i1 %208, %206
  br i1 %209, label %210, label %1103

210:                                              ; preds = %201
  %211 = and i32 %194, 1024
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %229, label %213

213:                                              ; preds = %210
  %214 = load ptr, ptr %190, align 8, !tbaa !48
  %215 = icmp eq ptr %214, null
  br i1 %215, label %1103, label %216

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.xpv, ptr %214, i64 0, i32 2
  %218 = load i64, ptr %217, align 8, !tbaa !24
  %219 = icmp ugt i64 %218, 1
  br i1 %219, label %269, label %220

220:                                              ; preds = %216
  %221 = icmp eq i64 %218, 0
  br i1 %221, label %1103, label %222

222:                                              ; preds = %220
  %223 = getelementptr inbounds %struct.sv, ptr %190, i64 0, i32 3
  %224 = load ptr, ptr %223, align 8, !tbaa !13
  %225 = load i8, ptr %224, align 1, !tbaa !13
  %226 = icmp eq i8 %225, 48
  %227 = select i1 %180, ptr %0, ptr %1
  %228 = select i1 %180, ptr %188, ptr %0
  br i1 %226, label %1103, label %609

229:                                              ; preds = %210
  %230 = and i32 %194, 768
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %248, label %232

232:                                              ; preds = %229
  %233 = and i32 %194, 256
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %240, label %235

235:                                              ; preds = %232
  %236 = load ptr, ptr %190, align 8, !tbaa !48
  %237 = getelementptr inbounds %struct.xpviv, ptr %236, i64 0, i32 4
  %238 = load i64, ptr %237, align 8, !tbaa !13
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %269

240:                                              ; preds = %235, %232
  %241 = and i32 %194, 512
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %1103, label %243

243:                                              ; preds = %240
  %244 = load ptr, ptr %190, align 8, !tbaa !48
  %245 = getelementptr inbounds %struct.xpvnv, ptr %244, i64 0, i32 5
  %246 = load double, ptr %245, align 8, !tbaa !13
  %247 = fcmp uno double %246, 0.000000e+00
  br i1 %247, label %269, label %272

248:                                              ; preds = %229
  %249 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %190, i32 noundef 0) #11
  %250 = select i1 %180, ptr %0, ptr %1
  %251 = select i1 %180, ptr %188, ptr %0
  br i1 %249, label %609, label %1103

252:                                              ; preds = %185
  %253 = tail call ptr @Perl_amagic_call(ptr noundef nonnull %0, ptr noundef %188, i32 noundef 58, i32 noundef 1) #13
  %254 = getelementptr inbounds %struct.sv, ptr %253, i64 0, i32 2
  %255 = load i32, ptr %254, align 4, !tbaa !6
  %256 = and i32 %255, 2097664
  %257 = icmp eq i32 %256, 512
  br i1 %257, label %258, label %262

258:                                              ; preds = %252
  %259 = load ptr, ptr %253, align 8, !tbaa !48
  %260 = getelementptr inbounds %struct.xpvnv, ptr %259, i64 0, i32 5
  %261 = load double, ptr %260, align 8, !tbaa !13
  br label %264

262:                                              ; preds = %252
  %263 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %253, i32 noundef 2) #11
  br label %264

264:                                              ; preds = %262, %258
  %265 = phi double [ %261, %258 ], [ %263, %262 ]
  %266 = fcmp olt double %265, 0.000000e+00
  %267 = select i1 %180, ptr %0, ptr %1
  %268 = select i1 %180, ptr %188, ptr %0
  br i1 %266, label %609, label %1103

269:                                              ; preds = %216, %235, %243
  %270 = select i1 %180, ptr %0, ptr %1
  %271 = select i1 %180, ptr %188, ptr %0
  br label %609

272:                                              ; preds = %243
  %273 = fcmp une double %246, 0.000000e+00
  %274 = select i1 %180, ptr %0, ptr %1
  %275 = select i1 %180, ptr %188, ptr %0
  br i1 %273, label %609, label %1103

276:                                              ; preds = %100
  %277 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 32
  %278 = load ptr, ptr %277, align 8, !tbaa !12
  %279 = icmp eq ptr %278, null
  br i1 %279, label %431, label %280

280:                                              ; preds = %276
  %281 = tail call ptr @Perl_newSViv(i64 noundef 0) #11
  %282 = tail call ptr @Perl_sv_2mortal(ptr noundef %281) #11
  br label %609

283:                                              ; preds = %100, %100, %100, %100, %100
  br label %1103

284:                                              ; preds = %149, %135, %128, %121
  %285 = phi i32 [ 0, %121 ], [ 0, %128 ], [ 0, %135 ], [ %153, %149 ]
  %286 = phi i32 [ 10, %121 ], [ 8, %128 ], [ 8, %135 ], [ %150, %149 ]
  %287 = phi ptr [ %123, %121 ], [ %130, %128 ], [ %137, %135 ], [ %151, %149 ]
  %288 = icmp eq ptr %287, null
  br i1 %288, label %431, label %592

289:                                              ; preds = %87, %19, %24, %31, %65, %68, %71, %16, %94
  %290 = phi i1 [ false, %94 ], [ true, %16 ], [ true, %71 ], [ true, %68 ], [ true, %65 ], [ true, %31 ], [ true, %24 ], [ true, %19 ], [ false, %87 ]
  %291 = phi ptr [ %77, %94 ], [ null, %16 ], [ null, %71 ], [ null, %68 ], [ null, %65 ], [ null, %31 ], [ null, %24 ], [ null, %19 ], [ %77, %87 ]
  %292 = phi ptr [ %73, %94 ], [ null, %16 ], [ null, %71 ], [ null, %68 ], [ null, %65 ], [ null, %31 ], [ null, %24 ], [ null, %19 ], [ %73, %87 ]
  %293 = phi i32 [ %95, %94 ], [ 0, %16 ], [ 0, %71 ], [ 0, %68 ], [ 0, %65 ], [ 0, %31 ], [ 0, %24 ], [ 0, %19 ], [ %79, %87 ]
  %294 = and i32 %3, 1
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %360

296:                                              ; preds = %289
  %297 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %298 = load i32, ptr %297, align 4, !tbaa !6
  %299 = and i32 %298, 2048
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %360, label %301

301:                                              ; preds = %296
  %302 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %303 = load ptr, ptr %302, align 8, !tbaa !13
  %304 = getelementptr inbounds %struct.sv, ptr %303, i64 0, i32 2
  %305 = load i32, ptr %304, align 4, !tbaa !6
  %306 = and i32 %305, 1048576
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %360, label %308

308:                                              ; preds = %301
  %309 = load ptr, ptr %303, align 8, !tbaa !48
  %310 = load ptr, ptr %309, align 8, !tbaa !101
  %311 = getelementptr inbounds %struct.hv, ptr %310, i64 0, i32 2
  %312 = load i32, ptr %311, align 4, !tbaa !50
  %313 = and i32 %312, 268435456
  %314 = icmp eq i32 %313, 0
  %315 = icmp eq ptr %310, null
  %316 = or i1 %315, %314
  br i1 %316, label %360, label %317

317:                                              ; preds = %308
  %318 = and i32 %312, 33554432
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %342, label %320

320:                                              ; preds = %317
  %321 = getelementptr inbounds %struct.hv, ptr %310, i64 0, i32 3
  %322 = load ptr, ptr %321, align 8, !tbaa !13
  %323 = load ptr, ptr %310, align 8, !tbaa !52
  %324 = getelementptr inbounds %struct.xpvhv, ptr %323, i64 0, i32 3
  %325 = load i64, ptr %324, align 8, !tbaa !53
  %326 = getelementptr ptr, ptr %322, i64 %325
  %327 = getelementptr ptr, ptr %326, i64 1
  %328 = load ptr, ptr %327, align 8, !tbaa !13
  %329 = icmp eq ptr %328, null
  br i1 %329, label %342, label %330

330:                                              ; preds = %320
  %331 = getelementptr i8, ptr %326, i64 36
  %332 = load i32, ptr %331, align 4, !tbaa !55
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %337, label %334

334:                                              ; preds = %330
  %335 = load ptr, ptr %328, align 8, !tbaa !12
  %336 = icmp eq ptr %335, null
  br i1 %336, label %342, label %337

337:                                              ; preds = %330, %334
  %338 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %310, i1 noundef zeroext false) #13
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %345

340:                                              ; preds = %337
  %341 = load i32, ptr %311, align 4, !tbaa !50
  br label %342

342:                                              ; preds = %340, %317, %320, %334
  %343 = phi i32 [ %341, %340 ], [ %312, %317 ], [ %312, %320 ], [ %312, %334 ]
  %344 = and i32 %343, -268435457
  store i32 %344, ptr %311, align 4, !tbaa !50
  br label %360

345:                                              ; preds = %337
  %346 = tail call ptr @Perl_mg_find(ptr noundef nonnull %310, i32 noundef 99) #11
  %347 = icmp eq ptr %346, null
  br i1 %347, label %360, label %348

348:                                              ; preds = %345
  %349 = getelementptr inbounds %struct.magic, ptr %346, i64 0, i32 7
  %350 = load ptr, ptr %349, align 8, !tbaa !91
  %351 = load i8, ptr %350, align 8, !tbaa !94
  %352 = and i8 %351, 1
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %369, label %354

354:                                              ; preds = %348
  %355 = getelementptr inbounds %struct.am_table, ptr %350, i64 0, i32 4
  %356 = sext i32 %2 to i64
  %357 = getelementptr inbounds ptr, ptr %355, i64 %356
  %358 = load ptr, ptr %357, align 8, !tbaa !12
  %359 = icmp eq ptr %358, null
  br i1 %359, label %362, label %592

360:                                              ; preds = %342, %345, %308, %301, %296, %289
  %361 = icmp eq ptr %291, null
  br i1 %361, label %369, label %362

362:                                              ; preds = %354, %360
  %363 = phi ptr [ %291, %360 ], [ %355, %354 ]
  %364 = phi ptr [ %292, %360 ], [ %350, %354 ]
  %365 = phi i32 [ %293, %360 ], [ %2, %354 ]
  %366 = getelementptr inbounds %struct.am_table, ptr %364, i64 0, i32 1
  %367 = load i8, ptr %366, align 1, !tbaa !99
  %368 = icmp ugt i8 %367, 1
  br i1 %368, label %381, label %369

369:                                              ; preds = %348, %362, %360
  %370 = phi i1 [ true, %362 ], [ false, %360 ], [ false, %348 ]
  %371 = phi ptr [ %363, %362 ], [ null, %360 ], [ null, %348 ]
  %372 = phi ptr [ %364, %362 ], [ %292, %360 ], [ %292, %348 ]
  %373 = phi i32 [ %365, %362 ], [ %293, %360 ], [ %293, %348 ]
  br i1 %290, label %427, label %374

374:                                              ; preds = %369
  %375 = getelementptr inbounds %struct.am_table, ptr %292, i64 0, i32 1
  %376 = load i8, ptr %375, align 1, !tbaa !99
  %377 = icmp ugt i8 %376, 1
  %378 = and i32 %3, 8
  %379 = icmp eq i32 %378, 0
  %380 = and i1 %379, %377
  br i1 %380, label %384, label %418

381:                                              ; preds = %362
  %382 = and i32 %3, 8
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %418

384:                                              ; preds = %374, %381
  %385 = phi i1 [ %370, %374 ], [ true, %381 ]
  %386 = phi ptr [ %371, %374 ], [ %363, %381 ]
  %387 = phi ptr [ %372, %374 ], [ %364, %381 ]
  switch i32 %2, label %418 [
    i32 71, label %1103
    i32 70, label %1103
    i32 69, label %1103
    i32 68, label %1103
    i32 17, label %389
    i32 18, label %389
    i32 19, label %389
    i32 20, label %389
    i32 21, label %389
    i32 22, label %389
    i32 23, label %388
    i32 24, label %388
    i32 25, label %388
    i32 26, label %388
    i32 27, label %388
    i32 28, label %388
  ]

388:                                              ; preds = %384, %384, %384, %384, %384, %384
  br label %389

389:                                              ; preds = %384, %384, %384, %384, %384, %384, %388
  %390 = phi i32 [ 59, %388 ], [ 58, %384 ], [ 58, %384 ], [ 58, %384 ], [ 58, %384 ], [ 58, %384 ], [ 58, %384 ]
  br i1 %290, label %399, label %391

391:                                              ; preds = %389
  %392 = getelementptr inbounds %struct.am_table, ptr %292, i64 0, i32 1
  %393 = load i8, ptr %392, align 1, !tbaa !99
  %394 = icmp ugt i8 %393, 1
  br i1 %394, label %395, label %399

395:                                              ; preds = %391
  %396 = zext nneg i32 %390 to i64
  %397 = getelementptr inbounds ptr, ptr %291, i64 %396
  %398 = load ptr, ptr %397, align 8, !tbaa !12
  br label %399

399:                                              ; preds = %395, %391, %389
  %400 = phi i32 [ -1, %395 ], [ 0, %391 ], [ 0, %389 ]
  %401 = phi ptr [ %398, %395 ], [ null, %391 ], [ null, %389 ]
  %402 = icmp eq ptr %401, null
  %403 = and i1 %385, %402
  br i1 %403, label %404, label %412

404:                                              ; preds = %399
  %405 = getelementptr inbounds %struct.am_table, ptr %387, i64 0, i32 1
  %406 = load i8, ptr %405, align 1, !tbaa !99
  %407 = icmp ugt i8 %406, 1
  br i1 %407, label %408, label %417

408:                                              ; preds = %404
  %409 = zext nneg i32 %390 to i64
  %410 = getelementptr inbounds ptr, ptr %386, i64 %409
  %411 = load ptr, ptr %410, align 8, !tbaa !12
  br label %412

412:                                              ; preds = %399, %408
  %413 = phi i32 [ 1, %408 ], [ %400, %399 ]
  %414 = phi ptr [ %411, %408 ], [ %401, %399 ]
  %415 = icmp eq ptr %414, null
  br i1 %415, label %416, label %592

416:                                              ; preds = %412
  br i1 %290, label %442, label %431

417:                                              ; preds = %404
  br i1 %290, label %442, label %431

418:                                              ; preds = %384, %100, %374, %381
  %419 = phi i1 [ %290, %381 ], [ false, %374 ], [ false, %100 ], [ %290, %384 ]
  %420 = phi ptr [ %291, %381 ], [ %291, %374 ], [ %77, %100 ], [ %291, %384 ]
  %421 = phi ptr [ %292, %381 ], [ %292, %374 ], [ %73, %100 ], [ %292, %384 ]
  %422 = phi i32 [ %365, %381 ], [ %373, %374 ], [ %95, %100 ], [ -1, %384 ]
  %423 = phi ptr [ %364, %381 ], [ %372, %374 ], [ %73, %100 ], [ %387, %384 ]
  %424 = phi ptr [ %363, %381 ], [ %371, %374 ], [ %77, %100 ], [ %386, %384 ]
  %425 = add i32 %2, -1
  %426 = icmp ult i32 %425, 5
  br i1 %426, label %1103, label %430

427:                                              ; preds = %369
  %428 = add i32 %2, -1
  %429 = icmp ult i32 %428, 5
  br i1 %429, label %1103, label %442

430:                                              ; preds = %418
  br i1 %419, label %442, label %431

431:                                              ; preds = %154, %105, %113, %173, %181, %276, %284, %417, %416, %430
  %432 = phi ptr [ %291, %416 ], [ %420, %430 ], [ %291, %417 ], [ %77, %284 ], [ %77, %276 ], [ %77, %181 ], [ %77, %173 ], [ %77, %113 ], [ %77, %105 ], [ %77, %154 ]
  %433 = phi ptr [ %292, %416 ], [ %421, %430 ], [ %292, %417 ], [ %73, %284 ], [ %73, %276 ], [ %73, %181 ], [ %73, %173 ], [ %73, %113 ], [ %73, %105 ], [ %73, %154 ]
  %434 = phi i32 [ 0, %416 ], [ 0, %430 ], [ 0, %417 ], [ %285, %284 ], [ 0, %276 ], [ 0, %181 ], [ 0, %173 ], [ 0, %113 ], [ 0, %105 ], [ 0, %154 ]
  %435 = phi i32 [ 0, %416 ], [ 0, %430 ], [ 0, %417 ], [ 0, %284 ], [ 0, %276 ], [ 0, %181 ], [ 0, %173 ], [ 1, %113 ], [ 1, %105 ], [ 0, %154 ]
  %436 = phi i32 [ %390, %416 ], [ %422, %430 ], [ %390, %417 ], [ %286, %284 ], [ 32, %276 ], [ 32, %181 ], [ %95, %173 ], [ 32, %113 ], [ 30, %105 ], [ %95, %154 ]
  %437 = phi ptr [ %387, %416 ], [ %423, %430 ], [ %387, %417 ], [ %73, %284 ], [ %73, %276 ], [ %73, %181 ], [ %73, %173 ], [ %73, %113 ], [ %73, %105 ], [ %73, %154 ]
  %438 = phi ptr [ %386, %416 ], [ %424, %430 ], [ %386, %417 ], [ %77, %284 ], [ %77, %276 ], [ %77, %181 ], [ %77, %173 ], [ %77, %113 ], [ %77, %105 ], [ %77, %154 ]
  %439 = getelementptr inbounds ptr, ptr %432, i64 29
  %440 = load ptr, ptr %439, align 8, !tbaa !12
  %441 = icmp eq ptr %440, null
  br i1 %441, label %442, label %583

442:                                              ; preds = %427, %417, %416, %431, %430
  %443 = phi i1 [ true, %416 ], [ false, %431 ], [ true, %430 ], [ true, %417 ], [ true, %427 ]
  %444 = phi ptr [ %292, %416 ], [ %433, %431 ], [ %421, %430 ], [ %292, %417 ], [ %292, %427 ]
  %445 = phi i32 [ 0, %416 ], [ %434, %431 ], [ 0, %430 ], [ 0, %417 ], [ 0, %427 ]
  %446 = phi i32 [ 0, %416 ], [ %435, %431 ], [ 0, %430 ], [ 0, %417 ], [ 0, %427 ]
  %447 = phi i32 [ %390, %416 ], [ %436, %431 ], [ %422, %430 ], [ %390, %417 ], [ %373, %427 ]
  %448 = phi ptr [ %387, %416 ], [ %437, %431 ], [ %423, %430 ], [ %387, %417 ], [ %372, %427 ]
  %449 = phi ptr [ %386, %416 ], [ %438, %431 ], [ %424, %430 ], [ %386, %417 ], [ %371, %427 ]
  %450 = icmp eq ptr %449, null
  br i1 %450, label %455, label %451

451:                                              ; preds = %442
  %452 = getelementptr inbounds ptr, ptr %449, i64 29
  %453 = load ptr, ptr %452, align 8, !tbaa !12
  %454 = icmp eq ptr %453, null
  br i1 %454, label %455, label %583

455:                                              ; preds = %451, %442
  br i1 %443, label %460, label %456

456:                                              ; preds = %455
  %457 = getelementptr inbounds %struct.am_table, ptr %444, i64 0, i32 1
  %458 = load i8, ptr %457, align 1, !tbaa !99
  %459 = icmp ugt i8 %458, 2
  br i1 %459, label %460, label %465

460:                                              ; preds = %456, %455
  br i1 %450, label %1103, label %461

461:                                              ; preds = %460
  %462 = getelementptr inbounds %struct.am_table, ptr %448, i64 0, i32 1
  %463 = load i8, ptr %462, align 1, !tbaa !99
  %464 = icmp ugt i8 %463, 2
  br i1 %464, label %1103, label %465

465:                                              ; preds = %456, %461
  %466 = add nsw i32 %8, %2
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds [75 x ptr], ptr @PL_AMG_names, i64 0, i64 %467
  %469 = load ptr, ptr %468, align 8, !tbaa !12
  %470 = getelementptr inbounds i8, ptr %469, i64 1
  %471 = and i32 %3, 8
  %472 = icmp eq i32 %471, 0
  %473 = select i1 %472, ptr @.str.157, ptr @.str.156
  %474 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %475 = load i32, ptr %474, align 4, !tbaa !6
  %476 = and i32 %475, 2048
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %522, label %478

478:                                              ; preds = %465
  %479 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %480 = load ptr, ptr %479, align 8, !tbaa !13
  %481 = getelementptr inbounds %struct.sv, ptr %480, i64 0, i32 2
  %482 = load i32, ptr %481, align 4, !tbaa !6
  %483 = and i32 %482, 1048576
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %522, label %485

485:                                              ; preds = %478
  %486 = load ptr, ptr %480, align 8, !tbaa !48
  %487 = load ptr, ptr %486, align 8, !tbaa !101
  %488 = getelementptr inbounds %struct.hv, ptr %487, i64 0, i32 2
  %489 = load i32, ptr %488, align 4, !tbaa !50
  %490 = and i32 %489, 268435456
  %491 = icmp eq i32 %490, 0
  %492 = select i1 %491, ptr @.str.159, ptr @.str.158
  %493 = load ptr, ptr %480, align 8, !tbaa !48
  %494 = load ptr, ptr %493, align 8, !tbaa !101
  %495 = getelementptr inbounds %struct.hv, ptr %494, i64 0, i32 2
  %496 = load i32, ptr %495, align 4, !tbaa !50
  %497 = and i32 %496, 268435456
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %522, label %499

499:                                              ; preds = %485
  %500 = and i32 %496, 33554432
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %518, label %502

502:                                              ; preds = %499
  %503 = getelementptr inbounds %struct.hv, ptr %494, i64 0, i32 3
  %504 = load ptr, ptr %503, align 8, !tbaa !13
  %505 = load ptr, ptr %494, align 8, !tbaa !52
  %506 = getelementptr inbounds %struct.xpvhv, ptr %505, i64 0, i32 3
  %507 = load i64, ptr %506, align 8, !tbaa !53
  %508 = getelementptr ptr, ptr %504, i64 %507
  %509 = getelementptr ptr, ptr %508, i64 1
  %510 = load ptr, ptr %509, align 8, !tbaa !13
  %511 = icmp eq ptr %510, null
  br i1 %511, label %518, label %512

512:                                              ; preds = %502
  %513 = getelementptr i8, ptr %508, i64 36
  %514 = load i32, ptr %513, align 4, !tbaa !55
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %518, label %516

516:                                              ; preds = %512
  %517 = load ptr, ptr %510, align 8, !tbaa !12
  br label %518

518:                                              ; preds = %512, %499, %502, %516
  %519 = phi ptr [ %517, %516 ], [ null, %502 ], [ null, %499 ], [ %510, %512 ]
  %520 = tail call ptr @Perl_newSVhek(ptr noundef %519) #11
  %521 = tail call ptr @Perl_sv_2mortal(ptr noundef %520) #11
  br label %522

522:                                              ; preds = %478, %465, %485, %518
  %523 = phi ptr [ %492, %518 ], [ %492, %485 ], [ @.str.159, %465 ], [ @.str.159, %478 ]
  %524 = phi ptr [ %521, %518 ], [ @PL_sv_no, %485 ], [ @PL_sv_no, %465 ], [ @PL_sv_no, %478 ]
  %525 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %526 = load i32, ptr %525, align 4, !tbaa !6
  %527 = and i32 %526, 2048
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %553, label %529

529:                                              ; preds = %522
  %530 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %531 = load ptr, ptr %530, align 8, !tbaa !13
  %532 = getelementptr inbounds %struct.sv, ptr %531, i64 0, i32 2
  %533 = load i32, ptr %532, align 4, !tbaa !6
  %534 = and i32 %533, 1048576
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %536, label %538

536:                                              ; preds = %529
  %537 = select i1 %472, ptr @.str.161, ptr @.str.7
  br label %578

538:                                              ; preds = %529
  %539 = load ptr, ptr %531, align 8, !tbaa !48
  %540 = load ptr, ptr %539, align 8, !tbaa !101
  %541 = getelementptr inbounds %struct.hv, ptr %540, i64 0, i32 2
  %542 = load i32, ptr %541, align 4, !tbaa !50
  %543 = and i32 %542, 268435456
  %544 = icmp eq i32 %543, 0
  %545 = select i1 %472, ptr @.str.161, ptr @.str.7
  %546 = select i1 %544, ptr %545, ptr @.str.160
  %547 = load ptr, ptr %531, align 8, !tbaa !48
  %548 = load ptr, ptr %547, align 8, !tbaa !101
  %549 = getelementptr inbounds %struct.hv, ptr %548, i64 0, i32 2
  %550 = load i32, ptr %549, align 4, !tbaa !50
  %551 = and i32 %550, 268435456
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %578, label %555

553:                                              ; preds = %522
  %554 = select i1 %472, ptr @.str.161, ptr @.str.7
  br label %578

555:                                              ; preds = %538
  %556 = and i32 %550, 33554432
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %574, label %558

558:                                              ; preds = %555
  %559 = getelementptr inbounds %struct.hv, ptr %548, i64 0, i32 3
  %560 = load ptr, ptr %559, align 8, !tbaa !13
  %561 = load ptr, ptr %548, align 8, !tbaa !52
  %562 = getelementptr inbounds %struct.xpvhv, ptr %561, i64 0, i32 3
  %563 = load i64, ptr %562, align 8, !tbaa !53
  %564 = getelementptr ptr, ptr %560, i64 %563
  %565 = getelementptr ptr, ptr %564, i64 1
  %566 = load ptr, ptr %565, align 8, !tbaa !13
  %567 = icmp eq ptr %566, null
  br i1 %567, label %574, label %568

568:                                              ; preds = %558
  %569 = getelementptr i8, ptr %564, i64 36
  %570 = load i32, ptr %569, align 4, !tbaa !55
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %574, label %572

572:                                              ; preds = %568
  %573 = load ptr, ptr %566, align 8, !tbaa !12
  br label %574

574:                                              ; preds = %568, %555, %558, %572
  %575 = phi ptr [ %573, %572 ], [ null, %558 ], [ null, %555 ], [ %566, %568 ]
  %576 = tail call ptr @Perl_newSVhek(ptr noundef %575) #11
  %577 = tail call ptr @Perl_sv_2mortal(ptr noundef %576) #11
  br label %578

578:                                              ; preds = %536, %574, %538, %553
  %579 = phi ptr [ %546, %574 ], [ %546, %538 ], [ %554, %553 ], [ %537, %536 ]
  %580 = phi ptr [ %577, %574 ], [ @PL_sv_no, %538 ], [ @PL_sv_no, %553 ], [ @PL_sv_no, %536 ]
  %581 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.155, ptr noundef nonnull %470, ptr noundef nonnull %473, ptr noundef nonnull %523, ptr noundef %524, ptr noundef nonnull %579, ptr noundef %580) #11
  %582 = tail call ptr @Perl_sv_2mortal(ptr noundef %581) #11
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.162, ptr noundef %582) #11
  br label %1103

583:                                              ; preds = %451, %431
  %584 = phi i32 [ %434, %431 ], [ %445, %451 ]
  %585 = phi i32 [ %435, %431 ], [ %446, %451 ]
  %586 = phi i32 [ %436, %431 ], [ %447, %451 ]
  %587 = phi i32 [ -1, %431 ], [ 1, %451 ]
  %588 = phi ptr [ %440, %431 ], [ %453, %451 ]
  %589 = or i32 %585, %6
  %590 = icmp ne i32 %589, 0
  %591 = zext i1 %590 to i32
  br label %592

592:                                              ; preds = %284, %412, %354, %78, %89, %583
  %593 = phi i32 [ %584, %583 ], [ 0, %89 ], [ 0, %78 ], [ 0, %354 ], [ 1, %412 ], [ %285, %284 ]
  %594 = phi i32 [ %591, %583 ], [ 0, %89 ], [ 0, %78 ], [ 0, %354 ], [ 0, %412 ], [ 0, %284 ]
  %595 = phi i1 [ false, %583 ], [ true, %89 ], [ true, %78 ], [ true, %354 ], [ true, %412 ], [ true, %284 ]
  %596 = phi i64 [ 6, %583 ], [ 5, %89 ], [ 5, %78 ], [ 5, %354 ], [ 5, %412 ], [ 5, %284 ]
  %597 = phi i32 [ %587, %583 ], [ -1, %89 ], [ -1, %78 ], [ 1, %354 ], [ %413, %412 ], [ 0, %284 ]
  %598 = phi i32 [ %586, %583 ], [ %2, %89 ], [ %79, %78 ], [ %2, %354 ], [ %390, %412 ], [ %286, %284 ]
  %599 = phi ptr [ %588, %583 ], [ %92, %89 ], [ %82, %78 ], [ %358, %354 ], [ %414, %412 ], [ %287, %284 ]
  %600 = freeze i32 %598
  switch i32 %2, label %625 [
    i32 6, label %601
    i32 7, label %603
    i32 30, label %605
    i32 32, label %605
    i32 34, label %605
    i32 36, label %605
    i32 38, label %605
    i32 40, label %605
    i32 42, label %605
    i32 44, label %605
    i32 68, label %605
    i32 70, label %605
    i32 46, label %605
    i32 50, label %605
    i32 54, label %605
    i32 48, label %605
    i32 52, label %605
    i32 56, label %605
    i32 12, label %606
    i32 1, label %607
    i32 2, label %607
    i32 3, label %607
    i32 4, label %607
    i32 5, label %607
    i32 8, label %608
    i32 9, label %608
    i32 10, label %608
  ]

601:                                              ; preds = %592
  %602 = icmp ne i32 %600, 30
  br label %625

603:                                              ; preds = %592
  %604 = icmp ne i32 %600, 32
  br label %625

605:                                              ; preds = %592, %592, %592, %592, %592, %592, %592, %592, %592, %592, %592, %592, %592, %592, %592, %592
  br label %625

606:                                              ; preds = %592
  br label %625

607:                                              ; preds = %592, %592, %592, %592, %592
  br label %625

608:                                              ; preds = %592, %592, %592
  br label %625

609:                                              ; preds = %222, %248, %197, %264, %269, %272, %280
  %610 = phi ptr [ %271, %269 ], [ %275, %272 ], [ %268, %264 ], [ %200, %197 ], [ %251, %248 ], [ %228, %222 ], [ %282, %280 ]
  %611 = phi ptr [ %270, %269 ], [ %274, %272 ], [ %267, %264 ], [ %199, %197 ], [ %250, %248 ], [ %227, %222 ], [ %0, %280 ]
  %612 = phi ptr [ %186, %269 ], [ %186, %272 ], [ %186, %264 ], [ %186, %197 ], [ %186, %248 ], [ %186, %222 ], [ %278, %280 ]
  %613 = phi i1 [ %180, %269 ], [ %180, %272 ], [ %180, %264 ], [ %180, %197 ], [ %180, %248 ], [ %180, %222 ], [ true, %280 ]
  %614 = zext i1 %613 to i32
  %615 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #14
  %616 = load ptr, ptr @PL_top_env, align 8, !tbaa !12
  %617 = getelementptr inbounds %struct.jmpenv, ptr %616, i64 0, i32 3
  %618 = load i8, ptr %617, align 4, !tbaa !105, !range !72, !noundef !73
  br label %700

619:                                              ; preds = %131, %124, %117
  %620 = phi ptr [ %119, %117 ], [ %126, %124 ], [ %133, %131 ]
  %621 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #14
  %622 = load ptr, ptr @PL_top_env, align 8, !tbaa !12
  %623 = getelementptr inbounds %struct.jmpenv, ptr %622, i64 0, i32 3
  %624 = load i8, ptr %623, align 4, !tbaa !105, !range !72, !noundef !73
  br label %685

625:                                              ; preds = %603, %601, %605, %592, %608, %607, %606
  %626 = phi i1 [ true, %592 ], [ false, %607 ], [ false, %606 ], [ %7, %605 ], [ false, %608 ], [ %602, %601 ], [ %604, %603 ]
  %627 = icmp eq i32 %597, -1
  br i1 %627, label %628, label %672

628:                                              ; preds = %625
  %629 = add nsw i32 %8, %2
  br label %630

630:                                              ; preds = %628, %113, %109, %105, %101
  %631 = phi i32 [ %629, %628 ], [ %79, %113 ], [ %79, %109 ], [ %79, %105 ], [ %79, %101 ]
  %632 = phi i1 [ %626, %628 ], [ false, %113 ], [ true, %109 ], [ false, %105 ], [ true, %101 ]
  %633 = phi i32 [ %593, %628 ], [ 1, %113 ], [ 0, %109 ], [ 1, %105 ], [ 0, %101 ]
  %634 = phi i32 [ %594, %628 ], [ 0, %113 ], [ 1, %109 ], [ 0, %105 ], [ 1, %101 ]
  %635 = phi i32 [ %6, %628 ], [ 1, %113 ], [ 1, %109 ], [ 1, %105 ], [ 1, %101 ]
  %636 = phi i1 [ %595, %628 ], [ true, %113 ], [ true, %109 ], [ true, %105 ], [ true, %101 ]
  %637 = phi i64 [ %596, %628 ], [ 5, %113 ], [ 5, %109 ], [ 5, %105 ], [ 5, %101 ]
  %638 = phi i32 [ %600, %628 ], [ 32, %113 ], [ 33, %109 ], [ 30, %105 ], [ 31, %101 ]
  %639 = phi ptr [ %599, %628 ], [ %115, %113 ], [ %111, %109 ], [ %107, %105 ], [ %103, %101 ]
  %640 = phi ptr [ %1, %628 ], [ @PL_sv_yes, %113 ], [ @PL_sv_yes, %109 ], [ @PL_sv_yes, %105 ], [ @PL_sv_yes, %101 ]
  %641 = icmp eq i32 %631, %638
  br i1 %641, label %642, label %649

642:                                              ; preds = %630
  %643 = icmp ne i32 %635, 0
  %644 = and i32 %2, -2
  %645 = icmp eq i32 %644, 6
  %646 = or i1 %645, %643
  %647 = icmp ne i32 %634, 0
  %648 = select i1 %646, i1 true, i1 %647
  br i1 %648, label %651, label %672

649:                                              ; preds = %630
  %650 = icmp eq i32 %634, 0
  br i1 %650, label %672, label %651

651:                                              ; preds = %649, %642
  %652 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %653 = load ptr, ptr %652, align 8, !tbaa !13
  %654 = getelementptr inbounds %struct.sv, ptr %653, i64 0, i32 1
  %655 = load i32, ptr %654, align 8, !tbaa !46
  %656 = icmp ugt i32 %655, 1
  br i1 %656, label %657, label %672

657:                                              ; preds = %651
  %658 = tail call ptr @Perl_amagic_call(ptr noundef nonnull %0, ptr noundef nonnull @PL_sv_undef, i32 noundef 12, i32 noundef 9) #13
  %659 = icmp eq ptr %658, null
  br i1 %659, label %672, label %660

660:                                              ; preds = %657
  store ptr %658, ptr %652, align 8, !tbaa !13
  %661 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %662 = load i32, ptr %661, align 4, !tbaa !6
  %663 = and i32 %662, 4194304
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %667, label %665

665:                                              ; preds = %660
  %666 = tail call i32 @Perl_mg_set(ptr noundef nonnull %0) #11
  br label %667

667:                                              ; preds = %660, %665
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %653) #13
  %668 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #14
  %669 = load ptr, ptr @PL_top_env, align 8, !tbaa !12
  %670 = getelementptr inbounds %struct.jmpenv, ptr %669, i64 0, i32 3
  %671 = load i8, ptr %670, align 4, !tbaa !105, !range !72, !noundef !73
  br i1 %632, label %700, label %685

672:                                              ; preds = %651, %657, %642, %649, %625
  %673 = phi i1 [ %632, %651 ], [ %632, %657 ], [ %632, %642 ], [ %632, %649 ], [ %626, %625 ]
  %674 = phi i32 [ %633, %651 ], [ %633, %657 ], [ %633, %642 ], [ %633, %649 ], [ %593, %625 ]
  %675 = phi i1 [ %636, %651 ], [ %636, %657 ], [ %636, %642 ], [ %636, %649 ], [ %595, %625 ]
  %676 = phi i64 [ %637, %651 ], [ %637, %657 ], [ %637, %642 ], [ %637, %649 ], [ %596, %625 ]
  %677 = phi i32 [ -1, %651 ], [ -1, %657 ], [ -1, %642 ], [ -1, %649 ], [ %597, %625 ]
  %678 = phi ptr [ %639, %651 ], [ %639, %657 ], [ %639, %642 ], [ %639, %649 ], [ %599, %625 ]
  %679 = phi ptr [ %640, %651 ], [ %640, %657 ], [ %640, %642 ], [ %640, %649 ], [ %1, %625 ]
  %680 = phi i32 [ %635, %651 ], [ %635, %657 ], [ 0, %642 ], [ %635, %649 ], [ %6, %625 ]
  %681 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #14
  %682 = load ptr, ptr @PL_top_env, align 8, !tbaa !12
  %683 = getelementptr inbounds %struct.jmpenv, ptr %682, i64 0, i32 3
  %684 = load i8, ptr %683, align 4, !tbaa !105, !range !72, !noundef !73
  br i1 %673, label %700, label %685

685:                                              ; preds = %619, %667, %672
  %686 = phi ptr [ %669, %667 ], [ %682, %672 ], [ %622, %619 ]
  %687 = phi i8 [ %671, %667 ], [ %684, %672 ], [ %624, %619 ]
  %688 = phi ptr [ %668, %667 ], [ %681, %672 ], [ %621, %619 ]
  %689 = phi i32 [ %635, %667 ], [ %680, %672 ], [ %6, %619 ]
  %690 = phi ptr [ %640, %667 ], [ %679, %672 ], [ %1, %619 ]
  %691 = phi ptr [ %639, %667 ], [ %678, %672 ], [ %620, %619 ]
  %692 = phi i32 [ -1, %667 ], [ %677, %672 ], [ 0, %619 ]
  %693 = phi i64 [ %637, %667 ], [ %676, %672 ], [ 5, %619 ]
  %694 = phi i1 [ %636, %667 ], [ %675, %672 ], [ true, %619 ]
  %695 = phi i32 [ %633, %667 ], [ %674, %672 ], [ 0, %619 ]
  %696 = getelementptr inbounds %struct.jmpenv, ptr %686, i64 0, i32 3
  store i8 1, ptr %696, align 4, !tbaa !105
  %697 = getelementptr inbounds i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %697, i8 0, i64 40, i1 false)
  %698 = getelementptr inbounds %struct.binop, ptr %5, i64 0, i32 8
  store ptr %5, ptr %698, align 8, !tbaa !107
  store ptr null, ptr %5, align 8, !tbaa !109
  %699 = getelementptr inbounds %struct.binop, ptr %5, i64 0, i32 5
  br label %734

700:                                              ; preds = %609, %667, %672
  %701 = phi ptr [ %669, %667 ], [ %682, %672 ], [ %616, %609 ]
  %702 = phi i8 [ %671, %667 ], [ %684, %672 ], [ %618, %609 ]
  %703 = phi ptr [ %668, %667 ], [ %681, %672 ], [ %615, %609 ]
  %704 = phi i32 [ %635, %667 ], [ %680, %672 ], [ %6, %609 ]
  %705 = phi ptr [ %0, %667 ], [ %0, %672 ], [ %610, %609 ]
  %706 = phi ptr [ %640, %667 ], [ %679, %672 ], [ %611, %609 ]
  %707 = phi ptr [ %639, %667 ], [ %678, %672 ], [ %612, %609 ]
  %708 = phi i32 [ -1, %667 ], [ %677, %672 ], [ %614, %609 ]
  %709 = phi i64 [ %637, %667 ], [ %676, %672 ], [ 5, %609 ]
  %710 = phi i1 [ %636, %667 ], [ %675, %672 ], [ true, %609 ]
  %711 = phi i32 [ %633, %667 ], [ %674, %672 ], [ 0, %609 ]
  %712 = load ptr, ptr @PL_op, align 8, !tbaa !12
  %713 = getelementptr inbounds %struct.op, ptr %712, i64 0, i32 5
  %714 = load i8, ptr %713, align 2, !tbaa !110
  %715 = and i8 %714, 3
  %716 = icmp eq i8 %715, 0
  br i1 %716, label %719, label %717

717:                                              ; preds = %700
  %718 = zext nneg i8 %715 to i32
  br label %722

719:                                              ; preds = %700
  %720 = tail call i32 @Perl_block_gimme() #11
  %721 = load ptr, ptr @PL_top_env, align 8, !tbaa !12
  br label %722

722:                                              ; preds = %717, %719
  %723 = phi ptr [ %701, %717 ], [ %721, %719 ]
  %724 = phi i32 [ %718, %717 ], [ %720, %719 ]
  %725 = getelementptr inbounds %struct.jmpenv, ptr %723, i64 0, i32 3
  store i8 1, ptr %725, align 4, !tbaa !105
  %726 = getelementptr inbounds i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %726, i8 0, i64 40, i1 false)
  %727 = getelementptr inbounds %struct.binop, ptr %5, i64 0, i32 8
  store ptr %5, ptr %727, align 8, !tbaa !107
  store ptr null, ptr %5, align 8, !tbaa !109
  %728 = getelementptr inbounds %struct.binop, ptr %5, i64 0, i32 5
  switch i32 %724, label %734 [
    i32 1, label %729
    i32 3, label %730
  ]

729:                                              ; preds = %722
  store i8 65, ptr %728, align 2, !tbaa !111
  br label %747

730:                                              ; preds = %722
  %731 = and i32 %3, 64
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %734, label %733

733:                                              ; preds = %730
  store i8 67, ptr %728, align 2, !tbaa !111
  br label %747

734:                                              ; preds = %685, %730, %722
  %735 = phi i8 [ %687, %685 ], [ %702, %730 ], [ %702, %722 ]
  %736 = phi ptr [ %688, %685 ], [ %703, %730 ], [ %703, %722 ]
  %737 = phi i32 [ %689, %685 ], [ %704, %730 ], [ %704, %722 ]
  %738 = phi ptr [ %0, %685 ], [ %705, %730 ], [ %705, %722 ]
  %739 = phi ptr [ %690, %685 ], [ %706, %730 ], [ %706, %722 ]
  %740 = phi ptr [ %691, %685 ], [ %707, %730 ], [ %707, %722 ]
  %741 = phi i32 [ %692, %685 ], [ %708, %730 ], [ %708, %722 ]
  %742 = phi i64 [ %693, %685 ], [ %709, %730 ], [ %709, %722 ]
  %743 = phi i1 [ %694, %685 ], [ %710, %730 ], [ %710, %722 ]
  %744 = phi i32 [ %695, %685 ], [ %711, %730 ], [ %711, %722 ]
  %745 = phi ptr [ %699, %685 ], [ %728, %730 ], [ %728, %722 ]
  %746 = phi i32 [ 2, %685 ], [ 3, %730 ], [ %724, %722 ]
  store i8 66, ptr %745, align 2, !tbaa !111
  br label %747

747:                                              ; preds = %729, %733, %734
  %748 = phi i8 [ %702, %729 ], [ %702, %733 ], [ %735, %734 ]
  %749 = phi ptr [ %703, %729 ], [ %703, %733 ], [ %736, %734 ]
  %750 = phi i32 [ %704, %729 ], [ %704, %733 ], [ %737, %734 ]
  %751 = phi ptr [ %705, %729 ], [ %705, %733 ], [ %738, %734 ]
  %752 = phi ptr [ %706, %729 ], [ %706, %733 ], [ %739, %734 ]
  %753 = phi ptr [ %707, %729 ], [ %707, %733 ], [ %740, %734 ]
  %754 = phi i32 [ %708, %729 ], [ %708, %733 ], [ %741, %734 ]
  %755 = phi i64 [ %709, %729 ], [ %709, %733 ], [ %742, %734 ]
  %756 = phi i1 [ %710, %729 ], [ %710, %733 ], [ %743, %734 ]
  %757 = phi i32 [ %711, %729 ], [ %711, %733 ], [ %744, %734 ]
  %758 = phi i32 [ 1, %729 ], [ 3, %733 ], [ %746, %734 ]
  %759 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !12
  %760 = getelementptr inbounds %struct.stackinfo, ptr %759, i64 0, i32 3
  %761 = load ptr, ptr %760, align 8, !tbaa !112
  %762 = icmp eq ptr %761, null
  br i1 %762, label %763, label %768

763:                                              ; preds = %747
  %764 = call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #11
  %765 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !12
  %766 = getelementptr inbounds %struct.stackinfo, ptr %764, i64 0, i32 2
  store ptr %765, ptr %766, align 8, !tbaa !114
  %767 = getelementptr inbounds %struct.stackinfo, ptr %765, i64 0, i32 3
  store ptr %764, ptr %767, align 8, !tbaa !112
  br label %768

768:                                              ; preds = %763, %747
  %769 = phi ptr [ %761, %747 ], [ %764, %763 ]
  %770 = getelementptr inbounds %struct.stackinfo, ptr %769, i64 0, i32 6
  store i32 5, ptr %770, align 8, !tbaa !115
  %771 = getelementptr inbounds %struct.stackinfo, ptr %769, i64 0, i32 4
  store i32 -1, ptr %771, align 8, !tbaa !116
  %772 = load ptr, ptr %769, align 8, !tbaa !117
  %773 = load ptr, ptr %772, align 8, !tbaa !61
  %774 = getelementptr inbounds %struct.xpvav, ptr %773, i64 0, i32 2
  store i64 0, ptr %774, align 8, !tbaa !63
  %775 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %776 = ptrtoint ptr %749 to i64
  %777 = ptrtoint ptr %775 to i64
  %778 = sub i64 %776, %777
  %779 = ashr exact i64 %778, 3
  %780 = load ptr, ptr @PL_curstack, align 8, !tbaa !12
  %781 = load ptr, ptr %780, align 8, !tbaa !61
  %782 = getelementptr inbounds %struct.xpvav, ptr %781, i64 0, i32 2
  store i64 %779, ptr %782, align 8, !tbaa !63
  %783 = getelementptr inbounds %struct.av, ptr %772, i64 0, i32 3
  %784 = load ptr, ptr %783, align 8, !tbaa !13
  store ptr %784, ptr @PL_stack_base, align 8, !tbaa !12
  %785 = load ptr, ptr %769, align 8, !tbaa !117
  %786 = load ptr, ptr %785, align 8, !tbaa !61
  %787 = getelementptr inbounds %struct.xpvav, ptr %786, i64 0, i32 3
  %788 = load i64, ptr %787, align 8, !tbaa !118
  %789 = getelementptr inbounds ptr, ptr %784, i64 %788
  store ptr %789, ptr @PL_stack_max, align 8, !tbaa !12
  %790 = load ptr, ptr %769, align 8, !tbaa !117
  %791 = load ptr, ptr %790, align 8, !tbaa !61
  %792 = getelementptr inbounds %struct.xpvav, ptr %791, i64 0, i32 2
  %793 = load i64, ptr %792, align 8, !tbaa !63
  %794 = getelementptr inbounds ptr, ptr %784, i64 %793
  store ptr %794, ptr @PL_stack_sp, align 8, !tbaa !12
  %795 = load ptr, ptr %769, align 8, !tbaa !117
  store ptr %795, ptr @PL_curstack, align 8, !tbaa !12
  store ptr %769, ptr @PL_curstackinfo, align 8, !tbaa !12
  call void @Perl_push_scope() #11
  %796 = load ptr, ptr @PL_op, align 8, !tbaa !12
  call void @Perl_save_pushptr(ptr noundef %796, i32 noundef 18) #11
  store ptr %5, ptr @PL_op, align 8, !tbaa !12
  %797 = load i32, ptr @PL_perldb, align 4, !tbaa !21
  %798 = and i32 %797, 1
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %808, label %800

800:                                              ; preds = %768
  %801 = load ptr, ptr @PL_curstash, align 8, !tbaa !12
  %802 = load ptr, ptr @PL_debstash, align 8, !tbaa !12
  %803 = icmp eq ptr %801, %802
  br i1 %803, label %808, label %804

804:                                              ; preds = %800
  %805 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 6
  %806 = load i8, ptr %805, align 1, !tbaa !119
  %807 = or i8 %806, 64
  store i8 %807, ptr %805, align 1, !tbaa !119
  br label %808

808:                                              ; preds = %804, %800, %768
  %809 = call ptr @Perl_pp_pushmark() #11
  %810 = load ptr, ptr @PL_stack_max, align 8, !tbaa !12
  %811 = ptrtoint ptr %810 to i64
  %812 = ptrtoint ptr %794 to i64
  %813 = sub i64 %811, %812
  %814 = ashr exact i64 %813, 3
  %815 = icmp slt i64 %814, %755
  br i1 %815, label %816, label %818

816:                                              ; preds = %808
  %817 = call ptr @Perl_stack_grow(ptr noundef %794, ptr noundef %794, i64 noundef %755) #11
  br label %818

818:                                              ; preds = %808, %816
  %819 = phi ptr [ %817, %816 ], [ %794, %808 ]
  %820 = icmp sgt i32 %754, 0
  %821 = select i1 %820, ptr %752, ptr %751
  %822 = getelementptr inbounds ptr, ptr %819, i64 1
  store ptr %821, ptr %822, align 8, !tbaa !12
  %823 = select i1 %820, ptr %751, ptr %752
  %824 = getelementptr inbounds ptr, ptr %819, i64 2
  store ptr %823, ptr %824, align 8, !tbaa !12
  %825 = icmp eq i32 %750, 0
  %826 = select i1 %825, ptr @PL_sv_no, ptr @PL_sv_undef
  %827 = select i1 %820, ptr @PL_sv_yes, ptr %826
  %828 = getelementptr inbounds ptr, ptr %819, i64 3
  store ptr %827, ptr %828, align 8, !tbaa !12
  br i1 %756, label %829, label %834

829:                                              ; preds = %818
  %830 = and i32 %3, 128
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %850, label %832

832:                                              ; preds = %829
  %833 = getelementptr inbounds ptr, ptr %819, i64 4
  store ptr @PL_sv_undef, ptr %833, align 8, !tbaa !12
  br label %848

834:                                              ; preds = %818
  %835 = add nsw i32 %8, %2
  %836 = sext i32 %835 to i64
  %837 = getelementptr inbounds [75 x ptr], ptr @PL_AMG_names, i64 0, i64 %836
  %838 = load ptr, ptr %837, align 8, !tbaa !12
  %839 = getelementptr inbounds i8, ptr %838, i64 1
  %840 = getelementptr inbounds [75 x i8], ptr @PL_AMG_namelens, i64 0, i64 %836
  %841 = load i8, ptr %840, align 1, !tbaa !13
  %842 = zext i8 %841 to i64
  %843 = add nsw i64 %842, -1
  %844 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %839, i64 noundef %843, i32 noundef 524288) #11
  %845 = getelementptr inbounds ptr, ptr %819, i64 4
  store ptr %844, ptr %845, align 8, !tbaa !12
  %846 = and i32 %3, 128
  %847 = icmp eq i32 %846, 0
  br i1 %847, label %850, label %848

848:                                              ; preds = %832, %834
  %849 = getelementptr inbounds ptr, ptr %819, i64 5
  store ptr @PL_sv_yes, ptr %849, align 8, !tbaa !12
  br label %850

850:                                              ; preds = %829, %848, %834
  %851 = phi ptr [ %849, %848 ], [ %845, %834 ], [ %828, %829 ]
  %852 = getelementptr inbounds ptr, ptr %851, i64 1
  store ptr %753, ptr %852, align 8, !tbaa !12
  store ptr %852, ptr @PL_stack_sp, align 8, !tbaa !12
  %853 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %854 = load i32, ptr %853, align 4, !tbaa !21
  %855 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_ppaddr, i64 0, i64 185), align 8, !tbaa !12
  %856 = call ptr %855() #11
  store ptr %856, ptr @PL_op, align 8, !tbaa !12
  %857 = icmp eq ptr %856, null
  br i1 %857, label %861, label %858

858:                                              ; preds = %850
  %859 = load ptr, ptr @PL_runops, align 8, !tbaa !12
  %860 = call i32 %859() #11
  br label %861

861:                                              ; preds = %858, %850
  call void @Perl_pop_scope() #11
  %862 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  %863 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %864 = sext i32 %854 to i64
  %865 = getelementptr ptr, ptr %863, i64 %864
  %866 = ptrtoint ptr %862 to i64
  %867 = ptrtoint ptr %865 to i64
  %868 = sub i64 %866, %867
  switch i32 %758, label %891 [
    i32 1, label %894
    i32 3, label %869
  ]

869:                                              ; preds = %861
  %870 = and i32 %3, 64
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %891, label %872

872:                                              ; preds = %869
  %873 = call ptr @Perl_newSV_type(i32 noundef 11) #11
  %874 = call ptr @Perl_sv_2mortal(ptr noundef %873) #11
  %875 = shl i64 %868, 29
  %876 = ashr i64 %875, 32
  call void @Perl_av_extend(ptr noundef %874, i64 noundef %876) #11
  %877 = and i64 %868, 34359738360
  %878 = icmp eq i64 %877, 0
  br i1 %878, label %894, label %879

879:                                              ; preds = %872
  %880 = shl i64 %868, 29
  %881 = ashr i64 %880, 32
  br label %882

882:                                              ; preds = %879, %882
  %883 = phi i64 [ %881, %879 ], [ %885, %882 ]
  %884 = phi ptr [ %862, %879 ], [ %886, %882 ]
  %885 = add nsw i64 %883, -1
  %886 = getelementptr inbounds ptr, ptr %884, i64 -1
  %887 = load ptr, ptr %884, align 8, !tbaa !12
  %888 = call ptr @Perl_av_store(ptr noundef %874, i64 noundef %885, ptr noundef %887) #11
  %889 = and i64 %885, 4294967295
  %890 = icmp eq i64 %889, 0
  br i1 %890, label %894, label %882, !llvm.loop !120

891:                                              ; preds = %869, %861
  %892 = getelementptr inbounds ptr, ptr %862, i64 -1
  %893 = load ptr, ptr %862, align 8, !tbaa !12
  br label %894

894:                                              ; preds = %882, %872, %861, %891
  %895 = phi ptr [ %892, %891 ], [ %865, %861 ], [ %862, %872 ], [ %886, %882 ]
  %896 = phi ptr [ %893, %891 ], [ @PL_sv_undef, %861 ], [ %874, %872 ], [ %874, %882 ]
  store ptr %895, ptr @PL_stack_sp, align 8, !tbaa !12
  %897 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !12
  %898 = getelementptr inbounds %struct.stackinfo, ptr %897, i64 0, i32 2
  %899 = load ptr, ptr %898, align 8, !tbaa !114
  %900 = icmp eq ptr %899, null
  br i1 %900, label %901, label %902

901:                                              ; preds = %894
  call void @Perl_croak_popstack() #11
  br label %902

902:                                              ; preds = %894, %901
  %903 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %904 = ptrtoint ptr %895 to i64
  %905 = ptrtoint ptr %903 to i64
  %906 = sub i64 %904, %905
  %907 = ashr exact i64 %906, 3
  %908 = load ptr, ptr @PL_curstack, align 8, !tbaa !12
  %909 = load ptr, ptr %908, align 8, !tbaa !61
  %910 = getelementptr inbounds %struct.xpvav, ptr %909, i64 0, i32 2
  store i64 %907, ptr %910, align 8, !tbaa !63
  %911 = load ptr, ptr %899, align 8, !tbaa !117
  %912 = getelementptr inbounds %struct.av, ptr %911, i64 0, i32 3
  %913 = load ptr, ptr %912, align 8, !tbaa !13
  store ptr %913, ptr @PL_stack_base, align 8, !tbaa !12
  %914 = load ptr, ptr %899, align 8, !tbaa !117
  %915 = load ptr, ptr %914, align 8, !tbaa !61
  %916 = getelementptr inbounds %struct.xpvav, ptr %915, i64 0, i32 3
  %917 = load i64, ptr %916, align 8, !tbaa !118
  %918 = getelementptr inbounds ptr, ptr %913, i64 %917
  store ptr %918, ptr @PL_stack_max, align 8, !tbaa !12
  %919 = load ptr, ptr %899, align 8, !tbaa !117
  %920 = load ptr, ptr %919, align 8, !tbaa !61
  %921 = getelementptr inbounds %struct.xpvav, ptr %920, i64 0, i32 2
  %922 = load i64, ptr %921, align 8, !tbaa !63
  %923 = getelementptr inbounds ptr, ptr %913, i64 %922
  store ptr %923, ptr @PL_stack_sp, align 8, !tbaa !12
  %924 = load ptr, ptr %899, align 8, !tbaa !117
  store ptr %924, ptr @PL_curstack, align 8, !tbaa !12
  store ptr %899, ptr @PL_curstackinfo, align 8, !tbaa !12
  %925 = load ptr, ptr @PL_top_env, align 8, !tbaa !12
  %926 = getelementptr inbounds %struct.jmpenv, ptr %925, i64 0, i32 3
  store i8 %748, ptr %926, align 4, !tbaa !105
  %927 = icmp eq i32 %757, 0
  br i1 %927, label %1089, label %928

928:                                              ; preds = %902
  switch i32 %2, label %1088 [
    i32 18, label %929
    i32 24, label %929
    i32 17, label %944
    i32 23, label %944
    i32 20, label %959
    i32 26, label %959
    i32 19, label %974
    i32 25, label %974
    i32 21, label %989
    i32 27, label %989
    i32 22, label %1004
    i32 28, label %1004
    i32 6, label %1019
    i32 7, label %1019
    i32 11, label %1022
  ]

929:                                              ; preds = %928, %928
  %930 = getelementptr inbounds %struct.sv, ptr %896, i64 0, i32 2
  %931 = load i32, ptr %930, align 4, !tbaa !6
  %932 = and i32 %931, 2097408
  %933 = icmp eq i32 %932, 256
  br i1 %933, label %934, label %938

934:                                              ; preds = %929
  %935 = load ptr, ptr %896, align 8, !tbaa !48
  %936 = getelementptr inbounds %struct.xpviv, ptr %935, i64 0, i32 4
  %937 = load i64, ptr %936, align 8, !tbaa !13
  br label %940

938:                                              ; preds = %929
  %939 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %896, i32 noundef 2) #11
  br label %940

940:                                              ; preds = %938, %934
  %941 = phi i64 [ %937, %934 ], [ %939, %938 ]
  %942 = icmp slt i64 %941, 1
  %943 = zext i1 %942 to i32
  br label %1084

944:                                              ; preds = %928, %928
  %945 = getelementptr inbounds %struct.sv, ptr %896, i64 0, i32 2
  %946 = load i32, ptr %945, align 4, !tbaa !6
  %947 = and i32 %946, 2097408
  %948 = icmp eq i32 %947, 256
  br i1 %948, label %949, label %953

949:                                              ; preds = %944
  %950 = load ptr, ptr %896, align 8, !tbaa !48
  %951 = getelementptr inbounds %struct.xpviv, ptr %950, i64 0, i32 4
  %952 = load i64, ptr %951, align 8, !tbaa !13
  br label %955

953:                                              ; preds = %944
  %954 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %896, i32 noundef 2) #11
  br label %955

955:                                              ; preds = %953, %949
  %956 = phi i64 [ %952, %949 ], [ %954, %953 ]
  %957 = lshr i64 %956, 63
  %958 = trunc i64 %957 to i32
  br label %1084

959:                                              ; preds = %928, %928
  %960 = getelementptr inbounds %struct.sv, ptr %896, i64 0, i32 2
  %961 = load i32, ptr %960, align 4, !tbaa !6
  %962 = and i32 %961, 2097408
  %963 = icmp eq i32 %962, 256
  br i1 %963, label %964, label %968

964:                                              ; preds = %959
  %965 = load ptr, ptr %896, align 8, !tbaa !48
  %966 = getelementptr inbounds %struct.xpviv, ptr %965, i64 0, i32 4
  %967 = load i64, ptr %966, align 8, !tbaa !13
  br label %970

968:                                              ; preds = %959
  %969 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %896, i32 noundef 2) #11
  br label %970

970:                                              ; preds = %968, %964
  %971 = phi i64 [ %967, %964 ], [ %969, %968 ]
  %972 = icmp sgt i64 %971, -1
  %973 = zext i1 %972 to i32
  br label %1084

974:                                              ; preds = %928, %928
  %975 = getelementptr inbounds %struct.sv, ptr %896, i64 0, i32 2
  %976 = load i32, ptr %975, align 4, !tbaa !6
  %977 = and i32 %976, 2097408
  %978 = icmp eq i32 %977, 256
  br i1 %978, label %979, label %983

979:                                              ; preds = %974
  %980 = load ptr, ptr %896, align 8, !tbaa !48
  %981 = getelementptr inbounds %struct.xpviv, ptr %980, i64 0, i32 4
  %982 = load i64, ptr %981, align 8, !tbaa !13
  br label %985

983:                                              ; preds = %974
  %984 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %896, i32 noundef 2) #11
  br label %985

985:                                              ; preds = %983, %979
  %986 = phi i64 [ %982, %979 ], [ %984, %983 ]
  %987 = icmp sgt i64 %986, 0
  %988 = zext i1 %987 to i32
  br label %1084

989:                                              ; preds = %928, %928
  %990 = getelementptr inbounds %struct.sv, ptr %896, i64 0, i32 2
  %991 = load i32, ptr %990, align 4, !tbaa !6
  %992 = and i32 %991, 2097408
  %993 = icmp eq i32 %992, 256
  br i1 %993, label %994, label %998

994:                                              ; preds = %989
  %995 = load ptr, ptr %896, align 8, !tbaa !48
  %996 = getelementptr inbounds %struct.xpviv, ptr %995, i64 0, i32 4
  %997 = load i64, ptr %996, align 8, !tbaa !13
  br label %1000

998:                                              ; preds = %989
  %999 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %896, i32 noundef 2) #11
  br label %1000

1000:                                             ; preds = %998, %994
  %1001 = phi i64 [ %997, %994 ], [ %999, %998 ]
  %1002 = icmp eq i64 %1001, 0
  %1003 = zext i1 %1002 to i32
  br label %1084

1004:                                             ; preds = %928, %928
  %1005 = getelementptr inbounds %struct.sv, ptr %896, i64 0, i32 2
  %1006 = load i32, ptr %1005, align 4, !tbaa !6
  %1007 = and i32 %1006, 2097408
  %1008 = icmp eq i32 %1007, 256
  br i1 %1008, label %1009, label %1013

1009:                                             ; preds = %1004
  %1010 = load ptr, ptr %896, align 8, !tbaa !48
  %1011 = getelementptr inbounds %struct.xpviv, ptr %1010, i64 0, i32 4
  %1012 = load i64, ptr %1011, align 8, !tbaa !13
  br label %1015

1013:                                             ; preds = %1004
  %1014 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %896, i32 noundef 2) #11
  br label %1015

1015:                                             ; preds = %1013, %1009
  %1016 = phi i64 [ %1012, %1009 ], [ %1014, %1013 ]
  %1017 = icmp ne i64 %1016, 0
  %1018 = zext i1 %1017 to i32
  br label %1084

1019:                                             ; preds = %928, %928
  %1020 = icmp eq ptr %751, %896
  br i1 %1020, label %1101, label %1021

1021:                                             ; preds = %1019
  call void @Perl_sv_setsv_flags(ptr noundef %751, ptr noundef %896, i32 noundef 1538) #11
  br label %1101

1022:                                             ; preds = %928
  %1023 = icmp eq ptr %896, null
  br i1 %1023, label %1101, label %1024

1024:                                             ; preds = %1022
  %1025 = getelementptr inbounds %struct.sv, ptr %896, i64 0, i32 2
  %1026 = load i32, ptr %1025, align 4, !tbaa !6
  %1027 = and i32 %1026, 2097152
  %1028 = icmp eq i32 %1027, 0
  br i1 %1028, label %1031, label %1029

1029:                                             ; preds = %1024
  %1030 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %896, i32 noundef 2) #11
  br label %1080

1031:                                             ; preds = %1024
  %1032 = and i32 %1026, 65280
  %1033 = icmp ne i32 %1032, 0
  %1034 = and i32 %1026, 255
  %1035 = icmp eq i32 %1034, 8
  %1036 = or i1 %1033, %1035
  %1037 = and i32 %1026, 16777471
  %1038 = icmp eq i32 %1037, 16777226
  %1039 = or i1 %1038, %1036
  br i1 %1039, label %1040, label %1080

1040:                                             ; preds = %1031
  %1041 = and i32 %1026, 1024
  %1042 = icmp eq i32 %1041, 0
  br i1 %1042, label %1057, label %1043

1043:                                             ; preds = %1040
  %1044 = load ptr, ptr %896, align 8, !tbaa !48
  %1045 = icmp eq ptr %1044, null
  br i1 %1045, label %1080, label %1046

1046:                                             ; preds = %1043
  %1047 = getelementptr inbounds %struct.xpv, ptr %1044, i64 0, i32 2
  %1048 = load i64, ptr %1047, align 8, !tbaa !24
  %1049 = icmp ugt i64 %1048, 1
  br i1 %1049, label %1080, label %1050

1050:                                             ; preds = %1046
  %1051 = icmp eq i64 %1048, 0
  br i1 %1051, label %1080, label %1052

1052:                                             ; preds = %1050
  %1053 = getelementptr inbounds %struct.sv, ptr %896, i64 0, i32 3
  %1054 = load ptr, ptr %1053, align 8, !tbaa !13
  %1055 = load i8, ptr %1054, align 1, !tbaa !13
  %1056 = icmp ne i8 %1055, 48
  br label %1080

1057:                                             ; preds = %1040
  %1058 = and i32 %1026, 768
  %1059 = icmp eq i32 %1058, 0
  br i1 %1059, label %1078, label %1060

1060:                                             ; preds = %1057
  %1061 = and i32 %1026, 256
  %1062 = icmp eq i32 %1061, 0
  br i1 %1062, label %1068, label %1063

1063:                                             ; preds = %1060
  %1064 = load ptr, ptr %896, align 8, !tbaa !48
  %1065 = getelementptr inbounds %struct.xpviv, ptr %1064, i64 0, i32 4
  %1066 = load i64, ptr %1065, align 8, !tbaa !13
  %1067 = icmp eq i64 %1066, 0
  br i1 %1067, label %1068, label %1080

1068:                                             ; preds = %1063, %1060
  %1069 = and i32 %1026, 512
  %1070 = icmp eq i32 %1069, 0
  br i1 %1070, label %1080, label %1071

1071:                                             ; preds = %1068
  %1072 = load ptr, ptr %896, align 8, !tbaa !48
  %1073 = getelementptr inbounds %struct.xpvnv, ptr %1072, i64 0, i32 5
  %1074 = load double, ptr %1073, align 8, !tbaa !13
  %1075 = fcmp uno double %1074, 0.000000e+00
  br i1 %1075, label %1080, label %1076

1076:                                             ; preds = %1071
  %1077 = fcmp une double %1074, 0.000000e+00
  br label %1080

1078:                                             ; preds = %1057
  %1079 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %896, i32 noundef 0) #11
  br label %1080

1080:                                             ; preds = %1063, %1071, %1076, %1068, %1043, %1050, %1052, %1046, %1031, %1078, %1029
  %1081 = phi i1 [ %1030, %1029 ], [ %1079, %1078 ], [ false, %1031 ], [ false, %1043 ], [ true, %1046 ], [ false, %1050 ], [ %1056, %1052 ], [ true, %1063 ], [ false, %1068 ], [ true, %1071 ], [ %1077, %1076 ]
  %1082 = xor i1 %1081, true
  %1083 = zext i1 %1082 to i32
  br label %1084

1084:                                             ; preds = %1080, %1015, %1000, %985, %970, %955, %940
  %1085 = phi i32 [ %1018, %1015 ], [ %1003, %1000 ], [ %988, %985 ], [ %973, %970 ], [ %958, %955 ], [ %943, %940 ], [ %1083, %1080 ]
  %1086 = freeze i32 %1085
  %1087 = icmp eq i32 %1086, 0
  br i1 %1087, label %1088, label %1101

1088:                                             ; preds = %928, %1084
  br label %1101

1089:                                             ; preds = %902
  %1090 = icmp eq i32 %2, 12
  br i1 %1090, label %1091, label %1101

1091:                                             ; preds = %1089
  %1092 = getelementptr inbounds %struct.sv, ptr %896, i64 0, i32 2
  %1093 = load i32, ptr %1092, align 4, !tbaa !6
  %1094 = and i32 %1093, 2048
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %1096, label %1097

1096:                                             ; preds = %1091
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.163) #11
  br label %1097

1097:                                             ; preds = %1096, %1091
  %1098 = getelementptr inbounds %struct.sv, ptr %896, i64 0, i32 3
  %1099 = load ptr, ptr %1098, align 8, !tbaa !13
  %1100 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %1099) #13
  br label %1101

1101:                                             ; preds = %1022, %1088, %1084, %1089, %1019, %1021, %1097
  %1102 = phi ptr [ %1099, %1097 ], [ %751, %1019 ], [ %751, %1021 ], [ %896, %1089 ], [ @PL_sv_no, %1088 ], [ @PL_sv_yes, %1084 ], [ @PL_sv_yes, %1022 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #14
  br label %1103

1103:                                             ; preds = %427, %240, %220, %213, %201, %189, %222, %248, %197, %264, %272, %100, %100, %100, %100, %160, %283, %578, %461, %460, %418, %384, %384, %384, %384, %14, %1101
  %1104 = phi ptr [ %1102, %1101 ], [ null, %14 ], [ null, %384 ], [ null, %384 ], [ null, %384 ], [ null, %384 ], [ %0, %418 ], [ null, %460 ], [ null, %461 ], [ null, %578 ], [ null, %100 ], [ null, %100 ], [ null, %100 ], [ null, %100 ], [ %161, %160 ], [ %0, %283 ], [ %0, %272 ], [ %0, %264 ], [ %0, %197 ], [ %0, %248 ], [ %0, %222 ], [ %0, %189 ], [ %0, %201 ], [ %0, %213 ], [ %0, %220 ], [ %0, %240 ], [ %0, %427 ]
  ret ptr %1104
}

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2num(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @Perl_try_amagic_bin(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  %4 = getelementptr inbounds ptr, ptr %3, i64 -1
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  %6 = load ptr, ptr %3, align 8, !tbaa !12
  %7 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !6
  %9 = and i32 %8, 2097152
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call i32 @Perl_mg_get(ptr noundef nonnull %5) #11
  br label %13

13:                                               ; preds = %2, %11
  %14 = icmp eq ptr %5, %6
  br i1 %14, label %22, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !6
  %18 = and i32 %17, 2097152
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = tail call i32 @Perl_mg_get(ptr noundef nonnull %6) #11
  br label %22

22:                                               ; preds = %20, %15, %13
  %23 = load i32, ptr %7, align 4, !tbaa !6
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !13
  %29 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !6
  %31 = and i32 %30, 1048576
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %28, align 8, !tbaa !48
  %35 = load ptr, ptr %34, align 8, !tbaa !101
  %36 = getelementptr inbounds %struct.hv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !50
  %38 = and i32 %37, 268435456
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %33, %26, %22
  %41 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !6
  %43 = and i32 %42, 2048
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %107, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !13
  %48 = getelementptr inbounds %struct.sv, ptr %47, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !6
  %50 = and i32 %49, 1048576
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %107, label %52

52:                                               ; preds = %45
  %53 = load ptr, ptr %47, align 8, !tbaa !48
  %54 = load ptr, ptr %53, align 8, !tbaa !101
  %55 = getelementptr inbounds %struct.hv, ptr %54, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !50
  %57 = and i32 %56, 268435456
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %107, label %59

59:                                               ; preds = %52, %33
  %60 = and i32 %1, 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr @PL_op, align 8, !tbaa !12
  %64 = getelementptr inbounds %struct.op, ptr %63, i64 0, i32 5
  %65 = load i8, ptr %64, align 2, !tbaa !110
  %66 = freeze i8 %65
  %67 = lshr i8 %66, 4
  %68 = and i8 %67, 4
  %69 = zext nneg i8 %68 to i32
  br label %70

70:                                               ; preds = %62, %59
  %71 = phi i32 [ 0, %59 ], [ %69, %62 ]
  %72 = and i32 %1, 128
  %73 = or disjoint i32 %71, %72
  %74 = tail call ptr @Perl_amagic_call(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %0, i32 noundef %73) #13
  %75 = icmp eq ptr %74, null
  br i1 %75, label %107, label %76

76:                                               ; preds = %70
  %77 = and i32 %1, 32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %105

79:                                               ; preds = %76
  %80 = load ptr, ptr @PL_op, align 8, !tbaa !12
  %81 = getelementptr inbounds %struct.op, ptr %80, i64 0, i32 5
  %82 = load i8, ptr %81, align 2, !tbaa !110
  %83 = and i8 %82, 64
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %79
  %86 = load ptr, ptr %4, align 8, !tbaa !12
  br label %97

87:                                               ; preds = %79
  %88 = load ptr, ptr @PL_curpad, align 8, !tbaa !12
  %89 = getelementptr inbounds %struct.op, ptr %80, i64 0, i32 3
  %90 = load i64, ptr %89, align 8, !tbaa !103
  %91 = getelementptr inbounds ptr, ptr %88, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !12
  %93 = getelementptr inbounds %struct.sv, ptr %92, i64 0, i32 2
  %94 = load i32, ptr %93, align 4, !tbaa !6
  %95 = and i32 %94, 131072
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %85, %87
  %98 = phi ptr [ %92, %87 ], [ %86, %85 ]
  tail call void @Perl_sv_setsv_flags(ptr noundef %98, ptr noundef nonnull %74, i32 noundef 1538) #11
  %99 = getelementptr inbounds %struct.sv, ptr %98, i64 0, i32 2
  %100 = load i32, ptr %99, align 4, !tbaa !6
  %101 = and i32 %100, 4194304
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %97
  %104 = tail call i32 @Perl_mg_set(ptr noundef nonnull %98) #11
  br label %105

105:                                              ; preds = %76, %87, %103, %97
  %106 = phi ptr [ %74, %76 ], [ %98, %97 ], [ %98, %103 ], [ %74, %87 ]
  store ptr %106, ptr %4, align 8, !tbaa !12
  store ptr %4, ptr @PL_stack_sp, align 8, !tbaa !12
  br label %151

107:                                              ; preds = %70, %52, %45, %40
  br i1 %14, label %108, label %133

108:                                              ; preds = %107
  %109 = load i32, ptr %7, align 4, !tbaa !6
  %110 = and i32 %109, 2097152
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %133, label %112

112:                                              ; preds = %108
  %113 = tail call ptr @Perl_sv_newmortal() #11
  store ptr %113, ptr %4, align 8, !tbaa !12
  %114 = load i32, ptr %7, align 4, !tbaa !6
  %115 = and i32 %114, 65280
  %116 = icmp ne i32 %115, 0
  %117 = and i32 %114, 255
  %118 = icmp eq i32 %117, 8
  %119 = or i1 %116, %118
  %120 = and i32 %114, 16777471
  %121 = icmp eq i32 %120, 16777226
  %122 = or i1 %121, %119
  br i1 %122, label %126, label %123

123:                                              ; preds = %112
  %124 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 41) #11
  br i1 %124, label %125, label %126

125:                                              ; preds = %123
  tail call void @Perl_report_uninit(ptr noundef nonnull %5) #11
  br label %126

126:                                              ; preds = %112, %123, %125
  %127 = phi ptr [ @PL_sv_no, %125 ], [ @PL_sv_no, %123 ], [ %5, %112 ]
  tail call void @Perl_sv_setsv_flags(ptr noundef %113, ptr noundef nonnull %127, i32 noundef 0) #11
  %128 = load i32, ptr %7, align 4, !tbaa !6
  %129 = and i32 %128, 2097152
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %126
  %132 = tail call i32 @Perl_mg_get(ptr noundef nonnull %5) #11
  br label %133

133:                                              ; preds = %131, %126, %108, %107
  %134 = and i32 %1, 16
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %151, label %136

136:                                              ; preds = %133
  %137 = load ptr, ptr %4, align 8, !tbaa !12
  %138 = getelementptr inbounds %struct.sv, ptr %137, i64 0, i32 2
  %139 = load i32, ptr %138, align 4, !tbaa !6
  %140 = and i32 %139, 2048
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %136
  %143 = tail call ptr @Perl_sv_2num(ptr noundef nonnull %137) #11
  store ptr %143, ptr %4, align 8, !tbaa !12
  br label %144

144:                                              ; preds = %142, %136
  %145 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %146 = load i32, ptr %145, align 4, !tbaa !6
  %147 = and i32 %146, 2048
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %144
  %150 = tail call ptr @Perl_sv_2num(ptr noundef nonnull %6) #11
  store ptr %150, ptr %3, align 8, !tbaa !12
  br label %151

151:                                              ; preds = %105, %133, %149, %144
  %152 = phi i1 [ true, %105 ], [ false, %144 ], [ false, %149 ], [ false, %133 ]
  ret i1 %152
}

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_report_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_amagic_deref_call(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !6
  %5 = and i32 %4, 2048
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %66, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !6
  %12 = and i32 %11, 1048576
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %66, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr %9, align 8, !tbaa !48
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  %17 = getelementptr inbounds %struct.hv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !50
  %19 = and i32 %18, 268435456
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %66, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.hv, ptr %16, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !13
  %24 = load ptr, ptr %16, align 8, !tbaa !52
  %25 = getelementptr inbounds %struct.xpvhv, ptr %24, i64 0, i32 3
  %26 = load i64, ptr %25, align 8, !tbaa !53
  %27 = getelementptr ptr, ptr %23, i64 %26
  %28 = getelementptr i8, ptr %27, i64 60
  %29 = load i32, ptr %28, align 4, !tbaa !84
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %66

32:                                               ; preds = %21, %59
  %33 = phi ptr [ %34, %59 ], [ %0, %21 ]
  %34 = tail call ptr @Perl_amagic_call(ptr noundef nonnull %33, ptr noundef nonnull @PL_sv_undef, i32 noundef %1, i32 noundef 9) #13
  %35 = icmp eq ptr %34, null
  br i1 %35, label %66, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !6
  %39 = and i32 %38, 2048
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.153) #11
  br label %42

42:                                               ; preds = %41, %36
  %43 = icmp eq ptr %34, %33
  br i1 %43, label %66, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !13
  %47 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !13
  %49 = icmp eq ptr %46, %48
  br i1 %49, label %66, label %50

50:                                               ; preds = %44
  %51 = load i32, ptr %37, align 4, !tbaa !6
  %52 = and i32 %51, 2048
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !6
  %57 = and i32 %56, 1048576
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %54
  %60 = load ptr, ptr %46, align 8, !tbaa !48
  %61 = load ptr, ptr %60, align 8, !tbaa !101
  %62 = getelementptr inbounds %struct.hv, ptr %61, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !50
  %64 = and i32 %63, 268435456
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %32, !llvm.loop !121

66:                                               ; preds = %32, %59, %54, %50, %42, %44, %21, %2, %7, %14
  %67 = phi ptr [ %0, %14 ], [ %0, %7 ], [ %0, %2 ], [ %0, %21 ], [ %33, %32 ], [ %34, %50 ], [ %34, %54 ], [ %34, %59 ], [ %33, %42 ], [ %34, %44 ]
  ret ptr %67
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @Perl_amagic_is_enabled(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_curcop, align 8, !tbaa !12
  %4 = getelementptr inbounds %struct.cop, ptr %3, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !122
  %6 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %5, ptr noundef nonnull @.str.154, i64 noundef 11, i32 noundef 0, i32 noundef 0) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %50, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !6
  %11 = and i32 %10, 65280
  %12 = icmp ne i32 %11, 0
  %13 = and i32 %10, 255
  %14 = icmp eq i32 %13, 8
  %15 = or i1 %12, %14
  %16 = and i32 %10, 16777471
  %17 = icmp eq i32 %16, 16777226
  %18 = or i1 %17, %15
  br i1 %18, label %19, label %50

19:                                               ; preds = %8
  %20 = and i32 %10, 1024
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %50, label %22

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %23 = sdiv i32 %0, 8
  %24 = and i32 %10, 2098176
  %25 = icmp eq i32 %24, 1024
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load ptr, ptr %6, align 8, !tbaa !48
  %28 = getelementptr inbounds %struct.xpv, ptr %27, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !24
  store i64 %29, ptr %2, align 8, !tbaa !49
  %30 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !13
  br label %35

32:                                               ; preds = %22
  %33 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %6, ptr noundef nonnull %2, i32 noundef 2) #11
  %34 = load i64, ptr %2, align 8, !tbaa !49
  br label %35

35:                                               ; preds = %32, %26
  %36 = phi i64 [ %29, %26 ], [ %34, %32 ]
  %37 = phi ptr [ %31, %26 ], [ %33, %32 ]
  %38 = sext i32 %23 to i64
  %39 = icmp ugt i64 %36, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = getelementptr inbounds i8, ptr %37, i64 %38
  %42 = load i8, ptr %41, align 1, !tbaa !13
  %43 = zext i8 %42 to i32
  %44 = and i32 %0, 7
  %45 = shl nuw nsw i32 1, %44
  %46 = and i32 %45, %43
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40, %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  br label %50

49:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  br label %50

50:                                               ; preds = %19, %48, %49, %1, %8
  %51 = phi i1 [ false, %49 ], [ false, %8 ], [ false, %1 ], [ true, %48 ], [ true, %19 ]
  ret i1 %51
}

; Function Attrs: optsize
declare ptr @Perl_refcounted_he_fetch_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare double @Perl_sv_2nv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_block_gimme() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_new_stackinfo(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_pp_pushmark() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_av_extend(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_av_store(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak_popstack() local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_gv_try_downgrade(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @PL_phase, align 4, !tbaa !21
  %3 = icmp eq i32 %2, 6
  br i1 %3, label %162, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !123
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %162

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !18
  %11 = and i32 %10, 152158463
  %12 = icmp eq i32 %11, 32777
  br i1 %12, label %13, label %162

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %162, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.xpvgv, ptr %18, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !27
  %21 = and i64 %20, 1
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %162

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.gp, ptr %15, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !41
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %162

27:                                               ; preds = %23
  %28 = load ptr, ptr %15, align 8, !tbaa !19
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %162

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.gp, ptr %15, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !22
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %162

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.gp, ptr %15, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !23
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %162

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.gp, ptr %15, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !76
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %162

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.gp, ptr %15, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !45
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %162

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.gp, ptr %15, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !36
  %49 = icmp eq ptr %48, %0
  br i1 %49, label %50, label %162

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.xpvgv, ptr %18, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !13
  %53 = icmp eq ptr %52, null
  br i1 %53, label %162, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr @PL_statgv, align 8, !tbaa !12
  %56 = icmp eq ptr %55, %0
  %57 = load ptr, ptr @PL_last_in_gv, align 8
  %58 = icmp eq ptr %57, %0
  %59 = select i1 %56, i1 true, i1 %58
  %60 = load ptr, ptr @PL_stderrgv, align 8
  %61 = icmp eq ptr %60, %0
  %62 = select i1 %59, i1 true, i1 %61
  br i1 %62, label %162, label %63

63:                                               ; preds = %54
  %64 = and i32 %10, 14680064
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %63
  %67 = and i32 %10, 6291456
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %162

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.xpvmg, ptr %18, i64 0, i32 1
  br label %71

71:                                               ; preds = %75, %69
  %72 = phi ptr [ %70, %69 ], [ %73, %75 ]
  %73 = load ptr, ptr %72, align 8, !tbaa !13
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.magic, ptr %73, i64 0, i32 3
  %77 = load i8, ptr %76, align 2, !tbaa !124
  %78 = icmp eq i8 %77, 60
  br i1 %78, label %71, label %162, !llvm.loop !125

79:                                               ; preds = %71, %63
  %80 = getelementptr inbounds %struct.gp, ptr %15, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !29
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %97

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.xpvgv, ptr %18, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !13
  %86 = getelementptr inbounds %struct.hek, ptr %85, i64 0, i32 2
  %87 = getelementptr inbounds %struct.hek, ptr %85, i64 0, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !16
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, ptr %86, i64 %89
  %91 = getelementptr inbounds i8, ptr %90, i64 1
  %92 = load i8, ptr %91, align 1, !tbaa !13
  %93 = and i8 %92, 1
  %94 = zext nneg i8 %93 to i32
  %95 = load i32, ptr %85, align 4, !tbaa !47
  %96 = tail call ptr @Perl_hv_common(ptr noundef nonnull %52, ptr noundef null, ptr noundef nonnull %86, i64 noundef %89, i32 noundef %94, i32 noundef 68, ptr noundef null, i32 noundef %95) #11
  br label %162

97:                                               ; preds = %79
  %98 = and i64 %20, 2
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %162, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.cv, ptr %81, i64 0, i32 1
  %102 = load i32, ptr %101, align 8, !tbaa !34
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %162

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.cv, ptr %81, i64 0, i32 2
  %106 = load i32, ptr %105, align 4, !tbaa !69
  %107 = and i32 %106, 150011904
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %162

109:                                              ; preds = %104
  %110 = load ptr, ptr %81, align 8, !tbaa !30
  %111 = getelementptr inbounds %struct.xpvcv, ptr %110, i64 0, i32 4
  %112 = load ptr, ptr %111, align 8, !tbaa !32
  %113 = icmp eq ptr %112, %52
  br i1 %113, label %114, label %162

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.xpvcv, ptr %110, i64 0, i32 12
  %116 = load i32, ptr %115, align 4, !tbaa !44
  %117 = and i32 %116, 32768
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %162

119:                                              ; preds = %114
  %120 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %81) #13
  %121 = icmp eq ptr %120, %0
  br i1 %121, label %122, label %162

122:                                              ; preds = %119
  %123 = load ptr, ptr %81, align 8, !tbaa !30
  %124 = getelementptr inbounds %struct.xpvcv, ptr %123, i64 0, i32 12
  %125 = load i32, ptr %124, align 4, !tbaa !44
  %126 = and i32 %125, 999
  %127 = icmp eq i32 %126, 4
  br i1 %127, label %128, label %162

128:                                              ; preds = %122
  %129 = load ptr, ptr %0, align 8, !tbaa !14
  %130 = getelementptr inbounds %struct.xpvgv, ptr %129, i64 0, i32 4
  %131 = load ptr, ptr %130, align 8, !tbaa !13
  %132 = icmp eq ptr %131, null
  br i1 %132, label %162, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.hek, ptr %131, i64 0, i32 2
  %135 = getelementptr inbounds %struct.hek, ptr %131, i64 0, i32 1
  %136 = load i32, ptr %135, align 4, !tbaa !16
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, ptr %134, i64 %137
  %139 = getelementptr inbounds i8, ptr %138, i64 1
  %140 = load i8, ptr %139, align 1, !tbaa !13
  %141 = and i8 %140, 1
  %142 = zext nneg i8 %141 to i32
  %143 = load i32, ptr %131, align 4, !tbaa !47
  %144 = tail call ptr @Perl_hv_common(ptr noundef nonnull %52, ptr noundef null, ptr noundef nonnull %134, i64 noundef %137, i32 noundef %142, i32 noundef 32, ptr noundef null, i32 noundef %143) #11
  %145 = icmp eq ptr %144, null
  br i1 %145, label %162, label %146

146:                                              ; preds = %133
  %147 = load ptr, ptr %144, align 8, !tbaa !12
  %148 = icmp eq ptr %147, %0
  br i1 %148, label %149, label %162

149:                                              ; preds = %146
  %150 = load ptr, ptr %81, align 8, !tbaa !30
  %151 = getelementptr inbounds %struct.xpvcv, ptr %150, i64 0, i32 5
  %152 = load ptr, ptr %151, align 8, !tbaa !13
  %153 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %152) #13
  %154 = load ptr, ptr %0, align 8, !tbaa !14
  %155 = getelementptr inbounds %struct.xpvgv, ptr %154, i64 0, i32 2
  %156 = load i64, ptr %155, align 8, !tbaa !27
  store i32 0, ptr %5, align 8, !tbaa !123
  tail call void @Perl_sv_clear(ptr noundef nonnull %0) #11
  store i32 1, ptr %5, align 8, !tbaa !123
  %157 = trunc i64 %156 to i32
  %158 = shl i32 %157, 8
  %159 = and i32 %158, 32768
  %160 = or disjoint i32 %159, 2049
  store i32 %160, ptr %9, align 4, !tbaa !18
  %161 = getelementptr %struct.gv, ptr %0, i64 -1, i32 1
  store ptr %161, ptr %0, align 8, !tbaa !14
  store ptr %152, ptr %14, align 8, !tbaa !13
  br label %162

162:                                              ; preds = %75, %66, %83, %149, %146, %133, %128, %122, %119, %114, %109, %104, %100, %97, %54, %4, %8, %13, %17, %23, %27, %30, %34, %38, %42, %46, %50, %1
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_override(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @Perl_gv_fetchpvn_flags(ptr noundef %0, i64 noundef %1, i32 noundef 128, i32 noundef 13) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.gv, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.gp, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !35
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.gp, ptr %7, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !29
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %3, align 8, !tbaa !14
  %17 = getelementptr inbounds %struct.xpvgv, ptr %16, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !27
  %19 = and i64 %18, 128
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %5, %15, %11, %2
  %22 = load ptr, ptr @PL_globalstash, align 8, !tbaa !12
  %23 = trunc i64 %1 to i32
  %24 = tail call ptr @Perl_hv_common_key_len(ptr noundef %22, ptr noundef %0, i32 noundef %23, i32 noundef 32, ptr noundef null, i32 noundef 0) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %56, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %24, align 8, !tbaa !12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %56, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.gv, ptr %27, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !18
  %32 = and i32 %31, 255
  %33 = icmp eq i32 %32, 9
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = and i32 %31, 34816
  %36 = icmp eq i32 %35, 34816
  br i1 %36, label %37, label %56

37:                                               ; preds = %34
  %38 = load ptr, ptr @PL_globalstash, align 8, !tbaa !12
  tail call void @Perl_gv_init_pvn(ptr noundef nonnull %27, ptr noundef %38, ptr noundef %0, i64 noundef %1, i32 noundef 0) #13
  br label %56

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.gv, ptr %27, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !13
  %42 = getelementptr inbounds %struct.gp, ptr %41, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !35
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.gp, ptr %41, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !29
  %48 = icmp eq ptr %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %27, align 8, !tbaa !14
  %51 = getelementptr inbounds %struct.xpvgv, ptr %50, i64 0, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !27
  %53 = and i64 %52, 128
  %54 = icmp eq i64 %53, 0
  %55 = select i1 %54, ptr null, ptr %27
  br label %56

56:                                               ; preds = %21, %39, %45, %49, %26, %34, %15, %37
  %57 = phi ptr [ %27, %37 ], [ %3, %15 ], [ null, %34 ], [ null, %39 ], [ null, %45 ], [ %55, %49 ], [ null, %26 ], [ null, %21 ]
  ret ptr %57
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind optsize willreturn memory(read) }
attributes #13 = { optsize }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !11, i64 12}
!7 = !{!"sv", !8, i64 0, !11, i64 8, !11, i64 12, !9, i64 16}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!9, !9, i64 0}
!14 = !{!15, !8, i64 0}
!15 = !{!"gv", !8, i64 0, !11, i64 8, !11, i64 12, !9, i64 16}
!16 = !{!17, !11, i64 4}
!17 = !{!"hek", !11, i64 0, !11, i64 4, !9, i64 8}
!18 = !{!15, !11, i64 12}
!19 = !{!20, !8, i64 0}
!20 = !{!"gp", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !11, i64 28, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !11, i64 64, !11, i64 67, !8, i64 72}
!21 = !{!11, !11, i64 0}
!22 = !{!20, !8, i64 40}
!23 = !{!20, !8, i64 32}
!24 = !{!25, !26, i64 16}
!25 = !{!"xpv", !8, i64 0, !9, i64 8, !26, i64 16, !9, i64 24}
!26 = !{!"long", !9, i64 0}
!27 = !{!28, !26, i64 16}
!28 = !{!"xpvgv", !8, i64 0, !9, i64 8, !26, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!29 = !{!20, !8, i64 16}
!30 = !{!31, !8, i64 0}
!31 = !{!"cv", !8, i64 0, !11, i64 8, !11, i64 12, !9, i64 16}
!32 = !{!33, !8, i64 32}
!33 = !{!"xpvcv", !8, i64 0, !9, i64 8, !26, i64 16, !9, i64 24, !8, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !8, i64 64, !9, i64 72, !8, i64 80, !11, i64 88, !11, i64 92, !11, i64 96}
!34 = !{!31, !11, i64 8}
!35 = !{!20, !11, i64 24}
!36 = !{!20, !8, i64 56}
!37 = !{!38, !11, i64 36}
!38 = !{!"cop", !8, i64 0, !8, i64 8, !8, i64 16, !26, i64 24, !11, i64 32, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !9, i64 34, !9, i64 35, !11, i64 36, !8, i64 40, !8, i64 48, !11, i64 56, !11, i64 60, !8, i64 64, !8, i64 72}
!39 = !{!38, !8, i64 48}
!40 = !{!20, !8, i64 72}
!41 = !{!20, !11, i64 28}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!33, !11, i64 92}
!45 = !{!20, !8, i64 48}
!46 = !{!7, !11, i64 8}
!47 = !{!17, !11, i64 0}
!48 = !{!7, !8, i64 0}
!49 = !{!26, !26, i64 0}
!50 = !{!51, !11, i64 12}
!51 = !{!"hv", !8, i64 0, !11, i64 8, !11, i64 12, !9, i64 16}
!52 = !{!51, !8, i64 0}
!53 = !{!54, !26, i64 24}
!54 = !{!"xpvhv", !8, i64 0, !9, i64 8, !26, i64 16, !26, i64 24}
!55 = !{!56, !11, i64 28}
!56 = !{!"xpvhv_aux", !9, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !11, i64 28, !8, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52}
!57 = !{!56, !8, i64 32}
!58 = !{!59, !11, i64 24}
!59 = !{!"mro_meta", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !11, i64 28, !8, i64 32, !8, i64 40, !8, i64 48, !11, i64 56}
!60 = !{!59, !8, i64 48}
!61 = !{!62, !8, i64 0}
!62 = !{!"av", !8, i64 0, !11, i64 8, !11, i64 12, !9, i64 16}
!63 = !{!64, !26, i64 16}
!64 = !{!"xpvav", !8, i64 0, !9, i64 8, !26, i64 16, !26, i64 24, !8, i64 32}
!65 = distinct !{!65, !43}
!66 = !{!33, !8, i64 64}
!67 = distinct !{!67, !43}
!68 = !{!38, !8, i64 40}
!69 = !{!31, !11, i64 12}
!70 = !{!71, !71, i64 0}
!71 = !{!"_Bool", !9, i64 0}
!72 = !{i8 0, i8 2}
!73 = !{}
!74 = !{!62, !11, i64 12}
!75 = !{!38, !11, i64 56}
!76 = !{!20, !8, i64 8}
!77 = !{!51, !11, i64 8}
!78 = distinct !{!78, !43}
!79 = !{!80, !8, i64 0}
!80 = !{!"io", !8, i64 0, !11, i64 8, !11, i64 12, !9, i64 16}
!81 = !{!82, !9, i64 129}
!82 = !{!"xpvio", !8, i64 0, !9, i64 8, !26, i64 16, !9, i64 24, !9, i64 32, !8, i64 40, !9, i64 48, !26, i64 56, !26, i64 64, !26, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !9, i64 128, !9, i64 129}
!83 = distinct !{!83, !43}
!84 = !{!56, !11, i64 52}
!85 = !{!86, !8, i64 8}
!86 = !{!"he", !8, i64 0, !8, i64 8, !9, i64 16}
!87 = distinct !{!87, !43}
!88 = distinct !{!88, !43}
!89 = !{!80, !11, i64 8}
!90 = !{!82, !9, i64 128}
!91 = !{!92, !8, i64 40}
!92 = !{!"magic", !8, i64 0, !8, i64 8, !93, i64 16, !9, i64 18, !9, i64 19, !26, i64 24, !8, i64 32, !8, i64 40}
!93 = !{!"short", !9, i64 0}
!94 = !{!95, !9, i64 0}
!95 = !{!"am_table", !9, i64 0, !9, i64 1, !93, i64 2, !11, i64 4, !9, i64 8}
!96 = distinct !{!96, !43}
!97 = !{!59, !11, i64 28}
!98 = !{!95, !11, i64 4}
!99 = !{!95, !9, i64 1}
!100 = distinct !{!100, !43}
!101 = !{!102, !8, i64 0}
!102 = !{!"xpvmg", !8, i64 0, !9, i64 8, !26, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!103 = !{!104, !26, i64 24}
!104 = !{!"op", !8, i64 0, !8, i64 8, !8, i64 16, !26, i64 24, !11, i64 32, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !9, i64 34, !9, i64 35}
!105 = !{!106, !71, i64 212}
!106 = !{!"jmpenv", !9, i64 0, !8, i64 200, !11, i64 208, !71, i64 212}
!107 = !{!108, !8, i64 48}
!108 = !{!"binop", !8, i64 0, !8, i64 8, !8, i64 16, !26, i64 24, !11, i64 32, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !11, i64 33, !9, i64 34, !9, i64 35, !8, i64 40, !8, i64 48}
!109 = !{!108, !8, i64 0}
!110 = !{!104, !9, i64 34}
!111 = !{!108, !9, i64 34}
!112 = !{!113, !8, i64 24}
!113 = !{!"stackinfo", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44}
!114 = !{!113, !8, i64 16}
!115 = !{!113, !11, i64 40}
!116 = !{!113, !11, i64 32}
!117 = !{!113, !8, i64 0}
!118 = !{!64, !26, i64 24}
!119 = !{!104, !9, i64 35}
!120 = distinct !{!120, !43}
!121 = distinct !{!121, !43}
!122 = !{!38, !8, i64 72}
!123 = !{!15, !11, i64 8}
!124 = !{!92, !9, i64 18}
!125 = distinct !{!125, !43}
