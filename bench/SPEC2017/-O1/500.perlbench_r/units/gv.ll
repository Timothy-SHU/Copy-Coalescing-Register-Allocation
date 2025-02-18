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
%struct.he = type { ptr, ptr, %union.anon.11 }
%union.anon.11 = type { ptr }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.av = type { ptr, i32, i32, %union.anon.10 }
%union.anon.10 = type { ptr }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.15, %union._xivu }
%union.anon.15 = type { i64 }
%struct.xpvio = type { ptr, %union._xmgu, i64, %union.anon.13, %union._xivu, ptr, %union.anon.14, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%union.anon.13 = type { i64 }
%union.anon.14 = type { ptr }
%struct.io = type { ptr, i32, i32, %union.anon.12 }
%union.anon.12 = type { ptr }
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
@S_autoload = internal constant [9 x i8] c"AUTOLOAD\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"SUPER\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"::SUPER\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"unimport\00", align 1
@PL_sv_yes = external global %struct.sv, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"IO::File\00", align 1
@PL_incgv = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [11 x i8] c"IO/File.pm\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"Can't locate object method \22%d%lu%4p\22 via package \22%2p\22\00", align 1
@.str.17 = private unnamed_addr constant [92 x i8] c"Can't locate object method \22%d%lu%4p\22 via package \22%-p\22 (perhaps you forgot to load \22%-p\22?)\00", align 1
@.str.18 = private unnamed_addr constant [71 x i8] c"Use of inherited AUTOLOAD for non-method %-p::%d%lu%4p() is deprecated\00", align 1
@PL_tainting = external local_unnamed_addr global i8, align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@.str.20 = private unnamed_addr constant [36 x i8] c"Had to create %d%lu%4p unexpectedly\00", align 1
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@.str.21 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"__ANON__::\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"Name \22%2p::%2p\22 used only once: possible typo\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"%d%lu%4p::_GEN_%ld\00", align 1
@PL_gensym = external local_unnamed_addr global i32, align 4
@.str.25 = private unnamed_addr constant [43 x i8] c"Attempt to free unreferenced glob pointers\00", align 1
@PL_stashcache = external local_unnamed_addr global ptr, align 8
@.str.26 = private unnamed_addr constant [89 x i8] c"panic: gp_free failed to free glob pointer - something is repeatedly re-creating entries\00", align 1
@PL_sub_generation = external local_unnamed_addr global i32, align 4
@PL_AMG_names = internal unnamed_addr constant [75 x ptr] [ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164], align 16
@.str.27 = private unnamed_addr constant [3 x i8] c"((\00", align 1
@PL_AMG_namelens = internal unnamed_addr constant [75 x i8] c"\02\04\04\04\04\04\03\03\05\03\03\02\02\04\04\03\04\02\03\02\03\03\03\03\03\03\03\03\03\09\02\03\02\03\02\03\02\03\02\03\03\04\03\04\03\04\02\03\03\04\02\03\03\04\02\03\03\04\04\04\02\03\06\04\04\04\04\05\02\03\02\03\03\03\03", align 16
@.str.28 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"overload\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.31 = private unnamed_addr constant [53 x i8] c"%s method \22%-256p\22 overloading \22%s\22 in package \22%3p\22\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"Stub found while resolving\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"Can't resolve\00", align 1
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@PL_sv_no = external global %struct.sv, align 8
@.str.34 = private unnamed_addr constant [50 x i8] c"Overloaded dereference did not return a reference\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"overloading\00", align 1
@.str.36 = private unnamed_addr constant [54 x i8] c"Operation \22%s\22: no method found,%sargument %s%-p%s%-p\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"\0A\09left \00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"in overloaded package \00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"has no overloaded magic\00", align 1
@.str.41 = private unnamed_addr constant [41 x i8] c",\0A\09right argument in overloaded package \00", align 1
@.str.42 = private unnamed_addr constant [42 x i8] c",\0A\09right argument has no overloaded magic\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"%-p\00", align 1
@PL_top_env = external local_unnamed_addr global ptr, align 8
@PL_curstackinfo = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_curstack = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_debstash = external local_unnamed_addr global ptr, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_ppaddr = external local_unnamed_addr global [0 x ptr], align 8
@PL_runops = external local_unnamed_addr global ptr, align 8
@.str.44 = private unnamed_addr constant [39 x i8] c"Copy method did not return a reference\00", align 1
@.str.45 = private unnamed_addr constant [30 x i8] c"panic: gv name too long (%lu)\00", align 1
@PL_phase = external local_unnamed_addr global i32, align 4
@PL_statgv = external local_unnamed_addr global ptr, align 8
@PL_last_in_gv = external local_unnamed_addr global ptr, align 8
@PL_stderrgv = external local_unnamed_addr global ptr, align 8
@PL_globalstash = external local_unnamed_addr global ptr, align 8
@.str.46 = private unnamed_addr constant [10 x i8] c"UNIVERSAL\00", align 1
@.str.47 = private unnamed_addr constant [51 x i8] c"Can't use anonymous symbol table for method lookup\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"CORE\00", align 1
@.str.49 = private unnamed_addr constant [39 x i8] c"Can't locate package %-p for @%2p::ISA\00", align 1
@S_maybe_add_coresub.file = internal constant [5 x i8] c"gv.c\00", align 1
@PL_parser = external local_unnamed_addr global ptr, align 8
@PL_compcv = external local_unnamed_addr global ptr, align 8
@.str.50 = private unnamed_addr constant [36 x i8] c"&CORE::%s cannot be called directly\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"main::\00", align 1
@PL_compiling = external global %struct.cop, align 8
@.str.52 = private unnamed_addr constant [38 x i8] c"Variable \22%c%d%lu%4p\22 is not imported\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c"\09(Did you mean &%d%lu%4p instead?)\0A\00", align 1
@PL_in_clean_all = external local_unnamed_addr global i8, align 1
@.str.54 = private unnamed_addr constant [103 x i8] c"Global symbol \22%s%d%lu%4p\22 requires explicit package name (did you forget to declare \22my %s%d%lu%4p\22?)\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"<none>::\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"Errno\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"TIEHASH\00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c"Tie::Hash::NamedCapture\00", align 1
@.str.63 = private unnamed_addr constant [27 x i8] c"$%c is no longer supported\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"arybase\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"FETCH\00", align 1
@.str.66 = private unnamed_addr constant [51 x i8] c"panic: Can't use %c%c because %-p is not available\00", align 1
@.str.67 = private unnamed_addr constant [61 x i8] c"panic: Can't use %c%c because %-p does not support method %s\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"XPORT\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"SA\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"ERSION\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"RGV\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"RGVOUT\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"IG\00", align 1
@PL_psig_name = external local_unnamed_addr global ptr, align 8
@PL_psig_pend = external local_unnamed_addr global ptr, align 8
@PL_psig_ptr = external local_unnamed_addr global ptr, align 8
@PL_sig_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.74 = private unnamed_addr constant [18 x i8] c"HILD_ERROR_NATIVE\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"NCODING\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"LOBAL_PHASE\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"AST_FH\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"ATCH\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"PEN\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"REMATCH\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"OSTMATCH\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"AINT\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"NICODE\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"TF8LOCALE\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"TF8CACHE\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"ARNING_BITS\00", align 1
@PL_chopset = external local_unnamed_addr global ptr, align 8
@.str.87 = private unnamed_addr constant [2 x i8] c"\0C\00", align 1
@.str.88 = private unnamed_addr constant [2 x i8] c"\1C\00", align 1
@PL_patchlevel = external local_unnamed_addr global ptr, align 8
@.str.89 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"(${}\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"(@{}\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"(%{}\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"(*{}\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"(&{}\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"(++\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"(--\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"(bool\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"(0+\00", align 1
@.str.100 = private unnamed_addr constant [4 x i8] c"(\22\22\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"(!\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"(=\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"(abs\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"(neg\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"(<>\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"(int\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"(<\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"(<=\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"(>\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"(>=\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"(==\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"(!=\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"(lt\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"(le\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"(gt\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c"(ge\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"(eq\00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c"(ne\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"(nomethod\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"(+\00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c"(+=\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c"(-\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"(-=\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"(*\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"(*=\00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c"(/\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"(/=\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"(%\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"(%=\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"(**\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"(**=\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"(<<\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"(<<=\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"(>>\00", align 1
@.str.135 = private unnamed_addr constant [5 x i8] c"(>>=\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"(&\00", align 1
@.str.137 = private unnamed_addr constant [4 x i8] c"(&=\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"(&.\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"(&.=\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"(|\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"(|=\00", align 1
@.str.142 = private unnamed_addr constant [4 x i8] c"(|.\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"(|.=\00", align 1
@.str.144 = private unnamed_addr constant [3 x i8] c"(^\00", align 1
@.str.145 = private unnamed_addr constant [4 x i8] c"(^=\00", align 1
@.str.146 = private unnamed_addr constant [4 x i8] c"(^.\00", align 1
@.str.147 = private unnamed_addr constant [5 x i8] c"(^.=\00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c"(<=>\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"(cmp\00", align 1
@.str.150 = private unnamed_addr constant [3 x i8] c"(~\00", align 1
@.str.151 = private unnamed_addr constant [4 x i8] c"(~.\00", align 1
@.str.152 = private unnamed_addr constant [7 x i8] c"(atan2\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"(cos\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c"(sin\00", align 1
@.str.155 = private unnamed_addr constant [5 x i8] c"(exp\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c"(log\00", align 1
@.str.157 = private unnamed_addr constant [6 x i8] c"(sqrt\00", align 1
@.str.158 = private unnamed_addr constant [3 x i8] c"(x\00", align 1
@.str.159 = private unnamed_addr constant [4 x i8] c"(x=\00", align 1
@.str.160 = private unnamed_addr constant [3 x i8] c"(.\00", align 1
@.str.161 = private unnamed_addr constant [4 x i8] c"(.=\00", align 1
@.str.162 = private unnamed_addr constant [4 x i8] c"(~~\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"(-X\00", align 1
@.str.164 = private unnamed_addr constant [4 x i8] c"(qr\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @Perl_gv_add_by_type(ptr noundef returned %0, i32 noundef %1) local_unnamed_addr #0 !prof !146 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !147

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !148
  %7 = and i32 %6, 255
  %8 = add nsw i32 %7, -9
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %24, label %10, !prof !154

10:                                               ; preds = %4, %2
  switch i32 %1, label %19 [
    i32 15, label %11
    i32 12, label %22
  ]

11:                                               ; preds = %10
  %12 = load ptr, ptr @PL_op, align 8, !tbaa !155
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
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5, ptr noundef nonnull %23) #10
  br label %24

24:                                               ; preds = %4, %22
  %25 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !156
  switch i32 %1, label %33 [
    i32 12, label %27
    i32 11, label %29
    i32 15, label %31
  ], !prof !157

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
  %35 = load ptr, ptr %34, align 8, !tbaa !155
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %52, !prof !158

37:                                               ; preds = %33
  %38 = tail call ptr @Perl_newSV_type(i32 noundef %1) #10
  store ptr %38, ptr %34, align 8, !tbaa !155
  %39 = icmp eq i32 %1, 11
  br i1 %39, label %40, label %52, !prof !159

40:                                               ; preds = %37
  %41 = load ptr, ptr %0, align 8, !tbaa !160
  %42 = getelementptr inbounds %struct.xpvgv, ptr %41, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !156
  %44 = getelementptr inbounds %struct.hek, ptr %43, i64 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !162
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %47, label %52, !prof !164

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.hek, ptr %43, i64 0, i32 2
  %49 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(4) @.str.6, i64 noundef 3) #11
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52, !prof !165

51:                                               ; preds = %47
  tail call void @Perl_sv_magic(ptr noundef %38, ptr noundef nonnull %0, i32 noundef 73, ptr noundef null, i32 noundef 0) #10
  br label %52

52:                                               ; preds = %37, %40, %47, %51, %33
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #3

declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_gv_fetchfile(ptr noundef %0) local_unnamed_addr #0 !prof !166 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  %3 = tail call ptr @Perl_gv_fetchfile_flags(ptr noundef %0, i64 noundef %2, i32 poison)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_gv_fetchfile_flags(ptr noundef %0, i64 noundef %1, i32 %2) local_unnamed_addr #0 !prof !166 {
  %4 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #10
  %5 = add i64 %1, 2
  %6 = load ptr, ptr @PL_defstash, align 8, !tbaa !155
  %7 = icmp eq ptr %6, null
  br i1 %7, label %70, label %8, !prof !167

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %4, i64 1
  %10 = getelementptr inbounds i8, ptr %4, i64 2
  %11 = icmp ult i64 %5, 129
  br i1 %11, label %16, label %12, !prof !168

12:                                               ; preds = %8
  %13 = tail call ptr @Perl_safesysmalloc(i64 noundef %5) #10
  %14 = getelementptr inbounds i8, ptr %13, i64 2
  %15 = getelementptr inbounds i8, ptr %13, i64 1
  br label %16

16:                                               ; preds = %8, %12
  %17 = phi ptr [ %13, %12 ], [ %4, %8 ]
  %18 = phi ptr [ %15, %12 ], [ %9, %8 ]
  %19 = phi ptr [ %14, %12 ], [ %10, %8 ]
  store i8 95, ptr %17, align 1, !tbaa !156
  store i8 60, ptr %18, align 1, !tbaa !156
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr align 1 %0, i64 %1, i1 false), !prof !169
  %20 = load ptr, ptr @PL_defstash, align 8, !tbaa !155
  %21 = trunc i64 %5 to i32
  %22 = call ptr @Perl_hv_common_key_len(ptr noundef %20, ptr noundef nonnull %17, i32 noundef %21, i32 noundef 48, ptr noundef null, i32 noundef 0) #10
  %23 = load ptr, ptr %22, align 8, !tbaa !155
  %24 = getelementptr inbounds %struct.gv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !170
  %26 = and i32 %25, 255
  %27 = icmp eq i32 %26, 9
  br i1 %27, label %33, label %28, !prof !171

28:                                               ; preds = %16
  %29 = load ptr, ptr @PL_defstash, align 8, !tbaa !155
  call void @Perl_gv_init_pvn(ptr noundef %23, ptr noundef %29, ptr noundef nonnull %17, i64 noundef %5, i32 noundef 0)
  %30 = call ptr @Perl_newSVpvn(ptr noundef %0, i64 noundef %1) #10
  %31 = getelementptr inbounds %struct.gv, ptr %23, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !156
  store ptr %30, ptr %32, align 8, !tbaa !172
  br label %33

33:                                               ; preds = %28, %16
  %34 = load i32, ptr @PL_perldb, align 4, !tbaa !174
  %35 = and i32 %34, 1026
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %67, label %37, !prof !168

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.gv, ptr %23, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !156
  %40 = getelementptr inbounds %struct.gp, ptr %39, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !175
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %67

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.gp, ptr %39, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !176
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = call ptr @Perl_gv_add_by_type(ptr noundef %23, i32 noundef 12)
  %49 = getelementptr inbounds %struct.gv, ptr %23, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !156
  %51 = getelementptr inbounds %struct.gp, ptr %50, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !176
  br label %53

53:                                               ; preds = %43, %47
  %54 = phi ptr [ %52, %47 ], [ %45, %43 ]
  %55 = load ptr, ptr %38, align 8, !tbaa !156
  %56 = getelementptr inbounds %struct.gp, ptr %55, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !175
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = call ptr @Perl_gv_add_by_type(ptr noundef %23, i32 noundef 11)
  %61 = getelementptr inbounds %struct.gv, ptr %23, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !156
  %63 = getelementptr inbounds %struct.gp, ptr %62, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !175
  br label %65

65:                                               ; preds = %53, %59
  %66 = phi ptr [ %64, %59 ], [ %57, %53 ]
  call void @Perl_sv_magic(ptr noundef %54, ptr noundef %66, i32 noundef 76, ptr noundef null, i32 noundef 0) #10
  br label %67

67:                                               ; preds = %33, %65, %37
  %68 = icmp eq ptr %17, %4
  br i1 %68, label %70, label %69, !prof !168

69:                                               ; preds = %67
  call void @Perl_safesysfree(ptr noundef nonnull %17) #10
  br label %70

70:                                               ; preds = %67, %69, %3
  %71 = phi ptr [ null, %3 ], [ %23, %69 ], [ %23, %67 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #10
  ret ptr %71
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_gv_init_pvn(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !177 {
  %6 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !170
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %7, 1024
  %11 = icmp eq i32 %10, 0
  %12 = or i1 %9, %11
  br i1 %12, label %20, label %13, !prof !178

13:                                               ; preds = %5
  %14 = and i32 %7, 268435456
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !179

16:                                               ; preds = %13
  tail call void @Perl_sv_force_normal_flags(ptr noundef %0, i32 noundef 0) #10
  br label %17

17:                                               ; preds = %16, %13
  %18 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !156
  br label %20

20:                                               ; preds = %5, %17
  %21 = phi ptr [ %19, %17 ], [ null, %5 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23, !prof !178

23:                                               ; preds = %20
  %24 = load ptr, ptr %0, align 8, !tbaa !160
  %25 = getelementptr inbounds %struct.xpv, ptr %24, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !180
  br label %27

27:                                               ; preds = %20, %23
  %28 = phi i64 [ %26, %23 ], [ 0, %20 ]
  br i1 %22, label %32, label %29, !prof !178

29:                                               ; preds = %27
  %30 = load i32, ptr %6, align 4, !tbaa !170
  %31 = and i32 %30, 536870912
  br label %32

32:                                               ; preds = %27, %29
  %33 = phi i32 [ %31, %29 ], [ 0, %27 ]
  br i1 %9, label %41, label %34, !prof !183

34:                                               ; preds = %32
  %35 = load i32, ptr %6, align 4, !tbaa !170
  %36 = and i32 %35, 2048
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38, !prof !184

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !156
  br label %41

41:                                               ; preds = %32, %34, %38
  %42 = phi ptr [ %40, %38 ], [ null, %34 ], [ null, %32 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44, !prof !185

44:                                               ; preds = %41
  %45 = load i32, ptr %6, align 4, !tbaa !170
  %46 = and i32 %45, 34816
  %47 = icmp eq i32 %46, 34816
  %48 = zext i1 %47 to i32
  br label %49

49:                                               ; preds = %41, %44
  %50 = phi i32 [ %48, %44 ], [ 0, %41 ]
  br i1 %43, label %61, label %51, !prof !185

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !148
  %54 = trunc i32 %53 to i8
  switch i8 %54, label %57 [
    i8 12, label %55
    i8 14, label %55
    i8 15, label %55
  ], !prof !186

55:                                               ; preds = %51, %51, %51
  %56 = tail call ptr @Perl_sv_reftype(ptr noundef nonnull %42, i32 noundef 0) #10
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.9, ptr noundef %56) #10
  br label %57

57:                                               ; preds = %51, %55
  %58 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  store ptr null, ptr %58, align 8, !tbaa !156
  %59 = load i32, ptr %6, align 4, !tbaa !170
  %60 = and i32 %59, -2049
  store i32 %60, ptr %6, align 4, !tbaa !170
  br label %61

61:                                               ; preds = %57, %49
  %62 = icmp ult i32 %8, 9
  br i1 %62, label %63, label %69, !prof !187

63:                                               ; preds = %61
  %64 = icmp ugt i32 %8, 2
  br i1 %64, label %65, label %68, !prof !188

65:                                               ; preds = %63
  %66 = load ptr, ptr %0, align 8, !tbaa !160
  %67 = getelementptr inbounds %struct.xpv, ptr %66, i64 0, i32 2
  store i64 0, ptr %67, align 8, !tbaa !180
  br label %68

68:                                               ; preds = %65, %63
  tail call void @Perl_sv_upgrade(ptr noundef %0, i32 noundef 9) #10
  br label %69

69:                                               ; preds = %68, %61
  %70 = load ptr, ptr %0, align 8, !tbaa !160
  %71 = getelementptr inbounds %struct.xpv, ptr %70, i64 0, i32 3
  %72 = load i64, ptr %71, align 8, !tbaa !156
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %81, label %74, !prof !178

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  br i1 %22, label %79, label %76, !prof !189

76:                                               ; preds = %74
  store ptr null, ptr %75, align 8, !tbaa !156
  store i64 0, ptr %71, align 8, !tbaa !156
  %77 = load i32, ptr %6, align 4, !tbaa !170
  %78 = and i32 %77, -17409
  store i32 %78, ptr %6, align 4, !tbaa !170
  br label %81

79:                                               ; preds = %74
  %80 = load ptr, ptr %75, align 8, !tbaa !156
  tail call void @Perl_safesysfree(ptr noundef %80) #10
  br label %81

81:                                               ; preds = %76, %79, %69
  %82 = load i32, ptr %6, align 4, !tbaa !170
  %83 = and i32 %82, 2147446527
  %84 = or disjoint i32 %83, 32768
  store i32 %84, ptr %6, align 4, !tbaa !170
  %85 = tail call ptr @Perl_newGP(ptr noundef nonnull %0)
  %86 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  store ptr %85, ptr %86, align 8, !tbaa !156
  %87 = load ptr, ptr %0, align 8, !tbaa !160
  %88 = getelementptr inbounds %struct.xpvgv, ptr %87, i64 0, i32 5
  store ptr %1, ptr %88, align 8, !tbaa !156
  %89 = icmp eq ptr %1, null
  br i1 %89, label %91, label %90, !prof !190

90:                                               ; preds = %81
  tail call void @Perl_sv_add_backref(ptr noundef nonnull %1, ptr noundef nonnull %0) #10
  br label %91

91:                                               ; preds = %90, %81
  %92 = trunc i64 %3 to i32
  %93 = and i32 %4, 536870912
  %94 = or disjoint i32 %93, 1
  tail call void @Perl_gv_name_set(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %92, i32 noundef %94)
  %95 = and i32 %4, 2
  %96 = or i32 %8, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %103, label %98, !prof !191

98:                                               ; preds = %91
  %99 = load ptr, ptr %0, align 8, !tbaa !160
  %100 = getelementptr inbounds %struct.xpvgv, ptr %99, i64 0, i32 2
  %101 = load i64, ptr %100, align 8, !tbaa !192
  %102 = or i64 %101, 2
  store i64 %102, ptr %100, align 8, !tbaa !192
  br label %103

103:                                              ; preds = %91, %98
  br i1 %43, label %160, label %104, !prof !185

104:                                              ; preds = %103
  %105 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 2
  %106 = load i32, ptr %105, align 4, !tbaa !148
  %107 = and i32 %106, 255
  %108 = icmp eq i32 %107, 13
  br i1 %108, label %109, label %160, !prof !194

109:                                              ; preds = %104
  %110 = load ptr, ptr %86, align 8, !tbaa !156
  %111 = getelementptr inbounds %struct.gp, ptr %110, i64 0, i32 2
  store ptr %42, ptr %111, align 8, !tbaa !195
  %112 = load ptr, ptr %42, align 8, !tbaa !196
  %113 = getelementptr inbounds %struct.xpvcv, ptr %112, i64 0, i32 4
  %114 = load ptr, ptr %113, align 8, !tbaa !198
  %115 = icmp eq ptr %114, %1
  br i1 %115, label %116, label %193, !prof !194

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.xpvcv, ptr %112, i64 0, i32 12
  %118 = load i32, ptr %117, align 4, !tbaa !200
  %119 = and i32 %118, 32768
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %124, label %121, !prof !201

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.xpvcv, ptr %112, i64 0, i32 7
  %123 = load ptr, ptr %122, align 8, !tbaa !156
  br label %124

124:                                              ; preds = %116, %121
  %125 = phi ptr [ %123, %121 ], [ null, %116 ]
  %126 = load ptr, ptr %0, align 8, !tbaa !160
  %127 = getelementptr inbounds %struct.xpvgv, ptr %126, i64 0, i32 4
  %128 = load ptr, ptr %127, align 8, !tbaa !156
  %129 = icmp eq ptr %125, %128
  br i1 %129, label %159, label %130, !prof !194

130:                                              ; preds = %124
  %131 = icmp ne i32 %119, 0
  tail call void @llvm.assume(i1 %131)
  %132 = getelementptr inbounds %struct.xpvcv, ptr %112, i64 0, i32 7
  %133 = load ptr, ptr %132, align 8, !tbaa !156
  %134 = getelementptr inbounds %struct.hek, ptr %133, i64 0, i32 1
  %135 = load i32, ptr %134, align 4, !tbaa !162
  %136 = getelementptr inbounds %struct.hek, ptr %128, i64 0, i32 1
  %137 = load i32, ptr %136, align 4, !tbaa !162
  %138 = icmp eq i32 %135, %137
  br i1 %138, label %139, label %193

139:                                              ; preds = %130
  %140 = getelementptr inbounds %struct.hek, ptr %133, i64 0, i32 2
  %141 = sext i32 %135 to i64
  %142 = getelementptr inbounds i8, ptr %140, i64 %141
  %143 = getelementptr inbounds i8, ptr %142, i64 1
  %144 = load i8, ptr %143, align 1, !tbaa !156
  %145 = getelementptr inbounds %struct.hek, ptr %128, i64 0, i32 2
  %146 = sext i32 %137 to i64
  %147 = getelementptr inbounds i8, ptr %145, i64 %146
  %148 = getelementptr inbounds i8, ptr %147, i64 1
  %149 = load i8, ptr %148, align 1, !tbaa !156
  %150 = icmp eq i8 %144, %149
  br i1 %150, label %193, label %151

151:                                              ; preds = %139
  %152 = xor i8 %149, %144
  %153 = and i8 %152, 1
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %193

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.hek, ptr %133, i64 0, i32 2
  %157 = tail call i32 @bcmp(ptr nonnull %156, ptr nonnull %145, i64 %146)
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %193

159:                                              ; preds = %155, %124
  tail call void @Perl_cvgv_set(ptr noundef nonnull %42, ptr noundef nonnull %0)
  br label %193

160:                                              ; preds = %104, %103
  br i1 %9, label %193, label %161, !prof !202

161:                                              ; preds = %160
  br i1 %43, label %183, label %162, !prof !203

162:                                              ; preds = %161
  %163 = tail call ptr @Perl_newCONSTSUB_flags(ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef nonnull %42) #10
  %164 = load ptr, ptr %86, align 8, !tbaa !156
  %165 = getelementptr inbounds %struct.gp, ptr %164, i64 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !195
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.cv, ptr %163, i64 0, i32 1
  %170 = load i32, ptr %169, align 8, !tbaa !204
  %171 = add i32 %170, 1
  store i32 %171, ptr %169, align 8, !tbaa !204
  %172 = load ptr, ptr %86, align 8, !tbaa !156
  %173 = getelementptr inbounds %struct.gp, ptr %172, i64 0, i32 2
  store ptr %163, ptr %173, align 8, !tbaa !195
  br label %174

174:                                              ; preds = %168, %162
  %175 = icmp eq i32 %50, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %174
  %177 = load ptr, ptr %0, align 8, !tbaa !160
  %178 = getelementptr inbounds %struct.xpvgv, ptr %177, i64 0, i32 2
  %179 = load i64, ptr %178, align 8, !tbaa !192
  %180 = or i64 %179, 128
  store i64 %180, ptr %178, align 8, !tbaa !192
  br label %181

181:                                              ; preds = %176, %174
  %182 = load ptr, ptr @PL_curstash, align 8, !tbaa !155
  tail call void @Perl_cvstash_set(ptr noundef %163, ptr noundef %182)
  br label %185

183:                                              ; preds = %161
  %184 = tail call ptr @Perl_newSTUB(ptr noundef nonnull %0, i1 noundef zeroext true) #10
  br label %185

185:                                              ; preds = %183, %181
  %186 = phi ptr [ %163, %181 ], [ %184, %183 ]
  br i1 %22, label %193, label %187, !prof !205

187:                                              ; preds = %185
  tail call void @Perl_sv_usepvn_flags(ptr noundef %186, ptr noundef nonnull %21, i64 noundef %28, i32 noundef 256) #10
  %188 = icmp eq i32 %33, 0
  br i1 %188, label %193, label %189, !prof !179

189:                                              ; preds = %187
  %190 = getelementptr inbounds %struct.sv, ptr %186, i64 0, i32 2
  %191 = load i32, ptr %190, align 4, !tbaa !148
  %192 = or i32 %191, 536870912
  store i32 %192, ptr %190, align 4, !tbaa !148
  br label %193

193:                                              ; preds = %185, %189, %187, %109, %130, %139, %151, %155, %159, %160
  ret void
}

declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_gv_const_sv(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !206 {
  %2 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !170
  %4 = and i32 %3, 255
  %5 = icmp eq i32 %4, 9
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = getelementptr inbounds %struct.gp, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !207
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.gp, ptr %8, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !195
  br label %15

15:                                               ; preds = %6, %12
  %16 = phi ptr [ %14, %12 ], [ null, %6 ]
  %17 = tail call ptr @Perl_cv_const_sv(ptr noundef %16) #10
  br label %28

18:                                               ; preds = %1
  %19 = and i32 %3, 2048
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !156
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !148
  %26 = trunc i32 %25 to i8
  switch i8 %26, label %27 [
    i8 11, label %28
    i8 13, label %28
  ]

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %21, %27, %18, %21, %15
  %29 = phi ptr [ %17, %15 ], [ %23, %27 ], [ null, %18 ], [ null, %21 ], [ null, %21 ]
  ret ptr %29
}

declare ptr @Perl_cv_const_sv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_newGP(ptr noundef %0) local_unnamed_addr #0 !prof !208 {
  %2 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 80) #10
  %3 = getelementptr inbounds %struct.gp, ptr %2, i64 0, i32 8
  store ptr %0, ptr %3, align 8, !tbaa !209
  %4 = load ptr, ptr @PL_curcop, align 8, !tbaa !155
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6, !prof !210

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cop, ptr %4, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !211
  %9 = getelementptr inbounds %struct.gp, ptr %2, i64 0, i32 9
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %8, 2147483647
  %12 = and i32 %10, -2147483648
  %13 = or disjoint i32 %12, %11
  store i32 %13, ptr %9, align 8
  %14 = getelementptr inbounds %struct.cop, ptr %4, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !213
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17, !prof !214

17:                                               ; preds = %6
  %18 = load ptr, ptr %15, align 8, !tbaa !160
  %19 = getelementptr inbounds %struct.xpvgv, ptr %18, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !156
  %21 = getelementptr inbounds %struct.hek, ptr %20, i64 0, i32 2, i64 2
  %22 = getelementptr inbounds %struct.hek, ptr %20, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !162
  %24 = add nsw i32 %23, -2
  %25 = sext i32 %24 to i64
  br label %26

26:                                               ; preds = %6, %1, %17
  %27 = phi i64 [ %25, %17 ], [ 0, %1 ], [ 0, %6 ]
  %28 = phi ptr [ %21, %17 ], [ @.str.7, %1 ], [ @.str.7, %6 ]
  %29 = getelementptr inbounds i8, ptr %28, i64 %27
  %30 = trunc i64 %27 to i32
  %31 = add i32 %30, 544173908
  %32 = icmp sgt i64 %27, 0
  br i1 %32, label %33, label %44, !prof !215

33:                                               ; preds = %26, %33
  %34 = phi i32 [ %42, %33 ], [ %31, %26 ]
  %35 = phi ptr [ %39, %33 ], [ %28, %26 ]
  %36 = mul i32 %34, 1025
  %37 = lshr i32 %36, 6
  %38 = xor i32 %37, %36
  %39 = getelementptr inbounds i8, ptr %35, i64 1
  %40 = load i8, ptr %35, align 1, !tbaa !156
  %41 = zext i8 %40 to i32
  %42 = add i32 %38, %41
  %43 = icmp ult ptr %39, %29
  br i1 %43, label %33, label %44, !prof !216, !llvm.loop !217

44:                                               ; preds = %33, %26
  %45 = phi i32 [ %31, %26 ], [ %42, %33 ]
  %46 = mul i32 %45, 1025
  %47 = lshr i32 %46, 6
  %48 = xor i32 %47, %46
  %49 = mul i32 %48, 1025
  %50 = add i32 %49, 73800
  %51 = lshr i32 %50, 6
  %52 = xor i32 %51, %50
  %53 = mul i32 %52, 1025
  %54 = add i32 %53, 113775
  %55 = lshr i32 %54, 6
  %56 = xor i32 %55, %54
  %57 = mul i32 %56, 1025
  %58 = add i32 %57, 118900
  %59 = lshr i32 %58, 6
  %60 = xor i32 %59, %58
  %61 = mul i32 %60, 1025
  %62 = add i32 %61, 32800
  %63 = lshr i32 %62, 6
  %64 = xor i32 %63, %62
  %65 = mul i32 %64, 9
  %66 = lshr i32 %65, 11
  %67 = xor i32 %66, %65
  %68 = mul i32 %67, 32769
  %69 = tail call ptr @Perl_share_hek(ptr noundef nonnull %28, i32 noundef %30, i32 noundef %68) #10
  %70 = getelementptr inbounds %struct.gp, ptr %2, i64 0, i32 10
  store ptr %69, ptr %70, align 8, !tbaa !220
  %71 = getelementptr inbounds %struct.gp, ptr %2, i64 0, i32 4
  store i32 1, ptr %71, align 4, !tbaa !221
  ret ptr %2
}

declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_share_hek(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_cvgv_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !222 {
  %3 = load ptr, ptr %0, align 8, !tbaa !196
  %4 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 4, !tbaa !200
  %6 = and i32 %5, 32768
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11, !prof !223

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !156
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi ptr [ %10, %8 ], [ null, %2 ]
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %81, label %14, !prof !224

14:                                               ; preds = %11
  %15 = icmp eq ptr %12, null
  br i1 %15, label %32, label %16, !prof !225

16:                                               ; preds = %14
  %17 = and i32 %5, 1024
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19, !prof !226

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !227
  %22 = icmp ugt i32 %21, 1
  br i1 %22, label %23, label %25, !prof !228

23:                                               ; preds = %19
  %24 = add i32 %21, -1
  store i32 %24, ptr %20, align 8, !tbaa !227
  br label %26

25:                                               ; preds = %19
  tail call void @Perl_sv_free2(ptr noundef nonnull %12, i32 noundef %21) #10
  br label %26

26:                                               ; preds = %23, %25
  %27 = load ptr, ptr %0, align 8, !tbaa !196
  %28 = getelementptr inbounds %struct.xpvcv, ptr %27, i64 0, i32 12
  %29 = load i32, ptr %28, align 4, !tbaa !200
  %30 = and i32 %29, -1025
  store i32 %30, ptr %28, align 4, !tbaa !200
  br label %44

31:                                               ; preds = %16
  tail call void @Perl_sv_del_backref(ptr noundef nonnull %12, ptr noundef nonnull %0) #10
  br label %44

32:                                               ; preds = %14
  br i1 %7, label %36, label %33, !prof !229

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !156
  br label %36

36:                                               ; preds = %32, %33
  %37 = phi ptr [ %35, %33 ], [ null, %32 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39, !prof !229

39:                                               ; preds = %36
  tail call void @Perl_unshare_hek(ptr noundef nonnull %37) #10
  %40 = load ptr, ptr %0, align 8, !tbaa !196
  %41 = getelementptr inbounds %struct.xpvcv, ptr %40, i64 0, i32 12
  %42 = load i32, ptr %41, align 4, !tbaa !200
  %43 = and i32 %42, -65537
  store i32 %43, ptr %41, align 4, !tbaa !200
  br label %44

44:                                               ; preds = %36, %39, %26, %31
  %45 = load ptr, ptr %0, align 8, !tbaa !196
  %46 = getelementptr inbounds %struct.xpvcv, ptr %45, i64 0, i32 12
  %47 = load i32, ptr %46, align 4, !tbaa !200
  %48 = and i32 %47, -32769
  store i32 %48, ptr %46, align 4, !tbaa !200
  %49 = getelementptr inbounds %struct.xpvcv, ptr %45, i64 0, i32 7
  store ptr %1, ptr %49, align 8, !tbaa !156
  %50 = icmp eq ptr %1, null
  br i1 %50, label %81, label %51, !prof !230

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.gv, ptr %1, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !170
  %54 = and i32 %53, 49152
  %55 = icmp eq i32 %54, 32768
  br i1 %55, label %56, label %73, !prof !231

56:                                               ; preds = %51
  %57 = and i32 %53, 255
  %58 = add nsw i32 %57, -9
  %59 = icmp ult i32 %58, 2
  br i1 %59, label %60, label %73, !prof !231

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.gv, ptr %1, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !156
  %63 = icmp eq ptr %62, null
  br i1 %63, label %73, label %64, !prof !232

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.gp, ptr %62, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !195
  %67 = icmp eq ptr %66, %0
  br i1 %67, label %72, label %68, !prof !233

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.gp, ptr %62, i64 0, i32 7
  %70 = load ptr, ptr %69, align 8, !tbaa !234
  %71 = icmp eq ptr %70, %0
  br i1 %71, label %72, label %73, !prof !235

72:                                               ; preds = %68, %64
  tail call void @Perl_sv_add_backref(ptr noundef nonnull %1, ptr noundef nonnull %0) #10
  br label %81

73:                                               ; preds = %56, %68, %60, %51
  %74 = load ptr, ptr %0, align 8, !tbaa !196
  %75 = getelementptr inbounds %struct.xpvcv, ptr %74, i64 0, i32 12
  %76 = load i32, ptr %75, align 4, !tbaa !200
  %77 = or i32 %76, 1024
  store i32 %77, ptr %75, align 4, !tbaa !200
  %78 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !227
  %80 = add i32 %79, 1
  store i32 %80, ptr %78, align 8, !tbaa !227
  br label %81

81:                                               ; preds = %72, %73, %44, %11
  ret void
}

declare void @Perl_sv_del_backref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_unshare_hek(ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_add_backref(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_cvgv_from_hek(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !236 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !198
  %5 = icmp eq ptr %4, null
  br i1 %5, label %96, label %6, !prof !201

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %8 = load i32, ptr %7, align 4, !tbaa !200
  %9 = and i32 %8, 32768
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11, !prof !201

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !156
  br label %14

14:                                               ; preds = %6, %11
  %15 = phi ptr [ %13, %11 ], [ null, %6 ]
  %16 = getelementptr inbounds %struct.hek, ptr %15, i64 0, i32 2
  %17 = icmp ne i32 %9, 0
  tail call void @llvm.assume(i1 %17)
  %18 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !156
  %20 = getelementptr inbounds %struct.hek, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !162
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.hek, ptr %19, i64 0, i32 2
  %24 = getelementptr inbounds i8, ptr %23, i64 %22
  %25 = getelementptr inbounds i8, ptr %24, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !156
  %27 = and i8 %26, 1
  %28 = zext nneg i8 %27 to i32
  %29 = load i32, ptr %19, align 4, !tbaa !237
  %30 = tail call ptr @Perl_hv_common(ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %16, i64 noundef %22, i32 noundef %28, i32 noundef 32, ptr noundef null, i32 noundef %29) #10
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32, !prof !201

32:                                               ; preds = %14
  %33 = load ptr, ptr %30, align 8, !tbaa !155
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37, !prof !201

35:                                               ; preds = %32, %14
  %36 = tail call ptr @Perl_newSV(i64 noundef 0) #10
  br label %37

37:                                               ; preds = %32, %35
  %38 = phi ptr [ %36, %35 ], [ %33, %32 ]
  %39 = getelementptr inbounds %struct.gv, ptr %38, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !170
  %41 = and i32 %40, 255
  %42 = icmp eq i32 %41, 9
  br i1 %42, label %70, label %43, !prof !201

43:                                               ; preds = %37
  %44 = load ptr, ptr %0, align 8, !tbaa !196
  %45 = getelementptr inbounds %struct.xpvcv, ptr %44, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !198
  %47 = getelementptr inbounds %struct.xpvcv, ptr %44, i64 0, i32 12
  %48 = load i32, ptr %47, align 4, !tbaa !200
  %49 = and i32 %48, 32768
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51, !prof !201

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.xpvcv, ptr %44, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !156
  br label %54

54:                                               ; preds = %43, %51
  %55 = phi ptr [ %53, %51 ], [ null, %43 ]
  %56 = getelementptr inbounds %struct.hek, ptr %55, i64 0, i32 2
  %57 = icmp ne i32 %49, 0
  tail call void @llvm.assume(i1 %57)
  %58 = getelementptr inbounds %struct.xpvcv, ptr %44, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !156
  %60 = getelementptr inbounds %struct.hek, ptr %59, i64 0, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !162
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.hek, ptr %59, i64 0, i32 2
  %64 = getelementptr inbounds i8, ptr %63, i64 %62
  %65 = getelementptr inbounds i8, ptr %64, i64 1
  %66 = load i8, ptr %65, align 1, !tbaa !156
  %67 = and i8 %66, 1
  %68 = zext nneg i8 %67 to i32
  %69 = shl nuw nsw i32 %68, 29
  tail call void @Perl_gv_init_pvn(ptr noundef %38, ptr noundef %46, ptr noundef nonnull %56, i64 noundef %62, i32 noundef %69)
  br label %70

70:                                               ; preds = %54, %37
  %71 = load ptr, ptr %0, align 8, !tbaa !196
  %72 = getelementptr inbounds %struct.xpvcv, ptr %71, i64 0, i32 12
  %73 = load i32, ptr %72, align 4, !tbaa !200
  %74 = and i32 %73, 32768
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %96, label %76, !prof !194

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.xpvcv, ptr %71, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !156
  tail call void @Perl_unshare_hek(ptr noundef %78) #10
  %79 = load ptr, ptr %0, align 8, !tbaa !196
  %80 = getelementptr inbounds %struct.xpvcv, ptr %79, i64 0, i32 12
  %81 = load i32, ptr %80, align 4, !tbaa !200
  %82 = and i32 %81, -32769
  store i32 %82, ptr %80, align 4, !tbaa !200
  %83 = getelementptr inbounds %struct.xpvcv, ptr %79, i64 0, i32 7
  store ptr %38, ptr %83, align 8, !tbaa !156
  br i1 %31, label %91, label %84

84:                                               ; preds = %76
  %85 = load ptr, ptr %30, align 8, !tbaa !155
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 1
  %89 = load i32, ptr %88, align 8, !tbaa !227
  %90 = add i32 %89, 1
  store i32 %90, ptr %88, align 8, !tbaa !227
  br label %91

91:                                               ; preds = %87, %84, %76
  %92 = load ptr, ptr %0, align 8, !tbaa !196
  %93 = getelementptr inbounds %struct.xpvcv, ptr %92, i64 0, i32 12
  %94 = load i32, ptr %93, align 4, !tbaa !200
  %95 = or i32 %94, 1024
  store i32 %95, ptr %93, align 4, !tbaa !200
  br label %96

96:                                               ; preds = %70, %1, %91
  %97 = phi ptr [ %38, %91 ], [ null, %1 ], [ %38, %70 ]
  ret ptr %97
}

declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_cvstash_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !238 {
  %3 = load ptr, ptr %0, align 8, !tbaa !196
  %4 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !198
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %15, label %7, !prof !239

7:                                                ; preds = %2
  %8 = icmp eq ptr %5, null
  br i1 %8, label %10, label %9, !prof !240

9:                                                ; preds = %7
  tail call void @Perl_sv_del_backref(ptr noundef nonnull %5, ptr noundef nonnull %0) #10
  br label %10

10:                                               ; preds = %9, %7
  %11 = load ptr, ptr %0, align 8, !tbaa !196
  %12 = getelementptr inbounds %struct.xpvcv, ptr %11, i64 0, i32 4
  store ptr %1, ptr %12, align 8, !tbaa !198
  %13 = icmp eq ptr %1, null
  br i1 %13, label %15, label %14, !prof !241

14:                                               ; preds = %10
  tail call void @Perl_sv_add_backref(ptr noundef nonnull %1, ptr noundef nonnull %0) #10
  br label %15

15:                                               ; preds = %10, %14, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_gv_init_sv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 !prof !206 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %6 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !148
  %8 = and i32 %7, 2098176
  %9 = icmp eq i32 %8, 1024
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = load ptr, ptr %2, align 8, !tbaa !242
  %12 = getelementptr inbounds %struct.xpv, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !180
  store i64 %13, ptr %5, align 8, !tbaa !243
  %14 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !156
  br label %18

16:                                               ; preds = %4
  %17 = call ptr @Perl_sv_2pv_flags(ptr noundef %2, ptr noundef nonnull %5, i32 noundef 2) #10
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi ptr [ %15, %10 ], [ %17, %16 ]
  %20 = load i32, ptr %6, align 4, !tbaa !148
  %21 = and i32 %20, 536870912
  %22 = or i32 %21, %3
  %23 = load i64, ptr %5, align 8, !tbaa !243
  call void @Perl_gv_init_pvn(ptr noundef %0, ptr noundef %1, ptr noundef %19, i64 noundef %23, i32 noundef %22)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret void
}

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_gv_init_pv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 !prof !206 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #11
  tail call void @Perl_gv_init_pvn(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %5, i32 noundef %3)
  ret void
}

declare void @Perl_sv_force_normal_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_reftype(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_gv_name_set(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !177 {
  %5 = icmp slt i32 %2, 0
  br i1 %5, label %6, label %8, !prof !190

6:                                                ; preds = %4
  %7 = zext i32 %2 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.45, i64 noundef %7) #10
  br label %8

8:                                                ; preds = %6, %4
  %9 = and i32 %3, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17, !prof !190

11:                                               ; preds = %8
  %12 = load ptr, ptr %0, align 8, !tbaa !160
  %13 = getelementptr inbounds %struct.xpvgv, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !156
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void @Perl_unshare_hek(ptr noundef nonnull %14) #10
  br label %17

17:                                               ; preds = %16, %11, %8
  %18 = zext i32 %2 to i64
  %19 = getelementptr inbounds i8, ptr %1, i64 %18
  %20 = add i32 %2, 544173908
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %33, label %22, !prof !244

22:                                               ; preds = %17, %22
  %23 = phi i32 [ %31, %22 ], [ %20, %17 ]
  %24 = phi ptr [ %28, %22 ], [ %1, %17 ]
  %25 = mul i32 %23, 1025
  %26 = lshr i32 %25, 6
  %27 = xor i32 %26, %25
  %28 = getelementptr inbounds i8, ptr %24, i64 1
  %29 = load i8, ptr %24, align 1, !tbaa !156
  %30 = zext i8 %29 to i32
  %31 = add i32 %27, %30
  %32 = icmp ult ptr %28, %19
  br i1 %32, label %22, label %33, !prof !216, !llvm.loop !217

33:                                               ; preds = %22, %17
  %34 = phi i32 [ %20, %17 ], [ %31, %22 ]
  %35 = mul i32 %34, 1025
  %36 = lshr i32 %35, 6
  %37 = xor i32 %36, %35
  %38 = mul i32 %37, 1025
  %39 = add i32 %38, 73800
  %40 = lshr i32 %39, 6
  %41 = xor i32 %40, %39
  %42 = mul i32 %41, 1025
  %43 = add i32 %42, 113775
  %44 = lshr i32 %43, 6
  %45 = xor i32 %44, %43
  %46 = mul i32 %45, 1025
  %47 = add i32 %46, 118900
  %48 = lshr i32 %47, 6
  %49 = xor i32 %48, %47
  %50 = mul i32 %49, 1025
  %51 = add i32 %50, 32800
  %52 = lshr i32 %51, 6
  %53 = xor i32 %52, %51
  %54 = mul i32 %53, 9
  %55 = lshr i32 %54, 11
  %56 = xor i32 %55, %54
  %57 = mul i32 %56, 32769
  %58 = and i32 %3, 536870912
  %59 = icmp eq i32 %58, 0
  %60 = sub nsw i32 0, %2
  %61 = select i1 %59, i32 %2, i32 %60, !prof !187
  %62 = tail call ptr @Perl_share_hek(ptr noundef %1, i32 noundef %61, i32 noundef %57) #10
  %63 = load ptr, ptr %0, align 8, !tbaa !160
  %64 = getelementptr inbounds %struct.xpvgv, ptr %63, i64 0, i32 4
  store ptr %62, ptr %64, align 8, !tbaa !156
  ret void
}

declare ptr @Perl_newCONSTSUB_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSTUB(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @Perl_sv_usepvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_gv_fetchmeth_sv(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 !prof !206 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %6 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !148
  %8 = and i32 %7, 2098176
  %9 = icmp eq i32 %8, 1024
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call fastcc ptr @S_gv_fetchmeth_internal(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef 0, i32 noundef %2, i32 noundef %3)
  br label %19

12:                                               ; preds = %4
  %13 = call ptr @Perl_sv_2pv_flags(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 2) #10
  %14 = load i32, ptr %6, align 4, !tbaa !148
  %15 = and i32 %14, 536870912
  %16 = or i32 %15, %3
  %17 = load i64, ptr %5, align 8, !tbaa !243
  %18 = call fastcc ptr @S_gv_fetchmeth_internal(ptr noundef %0, ptr noundef null, ptr noundef %13, i64 noundef %17, i32 noundef %2, i32 noundef %16)
  br label %19

19:                                               ; preds = %12, %10
  %20 = phi ptr [ %11, %10 ], [ %18, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret ptr %20
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @S_gv_fetchmeth_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 !prof !245 !PGOFuncName !246 {
  %7 = alloca i64, align 8
  store i64 %3, ptr %7, align 8, !tbaa !243
  %8 = lshr i32 %4, 27
  %9 = and i32 %8, 16
  %10 = xor i32 %9, 16
  %11 = and i32 %5, 536870912
  %12 = icmp eq ptr %0, null
  br i1 %12, label %13, label %16, !prof !247

13:                                               ; preds = %6
  %14 = tail call fastcc ptr @S_gv_stashsvpvn_cached(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 9, i32 noundef 0)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %439, label %16, !prof !248

16:                                               ; preds = %13, %6
  %17 = phi i32 [ %10, %6 ], [ 0, %13 ]
  %18 = phi ptr [ %0, %6 ], [ %14, %13 ]
  %19 = getelementptr inbounds %struct.hv, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !249
  %21 = and i32 %20, 33554432
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %46, label %23, !prof !251

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.hv, ptr %18, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !156
  %26 = load ptr, ptr %18, align 8, !tbaa !252
  %27 = getelementptr inbounds %struct.xpvhv, ptr %26, i64 0, i32 3
  %28 = load i64, ptr %27, align 8, !tbaa !253
  %29 = getelementptr ptr, ptr %25, i64 %28
  %30 = getelementptr ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !156
  %32 = icmp eq ptr %31, null
  br i1 %32, label %46, label %33, !prof !251

33:                                               ; preds = %23
  %34 = getelementptr i8, ptr %29, i64 36
  %35 = load i32, ptr %34, align 4, !tbaa !255
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37, !prof !257

37:                                               ; preds = %33
  %38 = load ptr, ptr %31, align 8, !tbaa !155
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  br i1 %36, label %42, label %41, !prof !257

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %33, %40, %41
  %43 = phi ptr [ %31, %41 ], [ %30, %40 ], [ %30, %33 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !156
  %45 = getelementptr inbounds %struct.hek, ptr %44, i64 0, i32 2
  br label %46

46:                                               ; preds = %16, %23, %37, %42
  %47 = phi ptr [ %45, %42 ], [ null, %37 ], [ null, %23 ], [ null, %16 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50, !prof !251

49:                                               ; preds = %46
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47) #10
  br label %50

50:                                               ; preds = %49, %46
  %51 = getelementptr inbounds %struct.hv, ptr %18, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !156
  %53 = load ptr, ptr %18, align 8, !tbaa !252
  %54 = getelementptr inbounds %struct.xpvhv, ptr %53, i64 0, i32 3
  %55 = load i64, ptr %54, align 8, !tbaa !253
  %56 = getelementptr ptr, ptr %52, i64 %55
  %57 = getelementptr ptr, ptr %56, i64 5
  %58 = load ptr, ptr %57, align 8, !tbaa !258
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %62, !prof !251

60:                                               ; preds = %50
  %61 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %18) #10
  br label %62

62:                                               ; preds = %50, %60
  %63 = phi ptr [ %61, %60 ], [ %58, %50 ]
  %64 = getelementptr inbounds %struct.mro_meta, ptr %63, i64 0, i32 3
  %65 = load i32, ptr %64, align 8, !tbaa !259
  %66 = load i32, ptr @PL_sub_generation, align 4, !tbaa !174
  %67 = add i32 %66, %65
  %68 = and i32 %5, 4096
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %101, label %70, !prof !261

70:                                               ; preds = %62
  %71 = load ptr, ptr %51, align 8, !tbaa !156
  %72 = load ptr, ptr %18, align 8, !tbaa !252
  %73 = getelementptr inbounds %struct.xpvhv, ptr %72, i64 0, i32 3
  %74 = load i64, ptr %73, align 8, !tbaa !253
  %75 = getelementptr ptr, ptr %71, i64 %74
  %76 = getelementptr ptr, ptr %75, i64 5
  %77 = load ptr, ptr %76, align 8, !tbaa !258
  %78 = getelementptr inbounds %struct.mro_meta, ptr %77, i64 0, i32 7
  %79 = load ptr, ptr %78, align 8, !tbaa !262
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %91, !prof !194

81:                                               ; preds = %70
  %82 = tail call ptr @Perl_newSV_type(i32 noundef 12) #10
  %83 = load ptr, ptr %51, align 8, !tbaa !156
  %84 = load ptr, ptr %18, align 8, !tbaa !252
  %85 = getelementptr inbounds %struct.xpvhv, ptr %84, i64 0, i32 3
  %86 = load i64, ptr %85, align 8, !tbaa !253
  %87 = getelementptr ptr, ptr %83, i64 %86
  %88 = getelementptr ptr, ptr %87, i64 5
  %89 = load ptr, ptr %88, align 8, !tbaa !258
  %90 = getelementptr inbounds %struct.mro_meta, ptr %89, i64 0, i32 7
  store ptr %82, ptr %90, align 8, !tbaa !262
  br label %91

91:                                               ; preds = %81, %70
  %92 = load ptr, ptr %51, align 8, !tbaa !156
  %93 = load ptr, ptr %18, align 8, !tbaa !252
  %94 = getelementptr inbounds %struct.xpvhv, ptr %93, i64 0, i32 3
  %95 = load i64, ptr %94, align 8, !tbaa !253
  %96 = getelementptr ptr, ptr %92, i64 %95
  %97 = getelementptr ptr, ptr %96, i64 5
  %98 = load ptr, ptr %97, align 8, !tbaa !258
  %99 = getelementptr inbounds %struct.mro_meta, ptr %98, i64 0, i32 7
  %100 = load ptr, ptr %99, align 8, !tbaa !262
  br label %101

101:                                              ; preds = %62, %91
  %102 = phi ptr [ %100, %91 ], [ %18, %62 ]
  %103 = load i64, ptr %7, align 8, !tbaa !243
  %104 = icmp eq i32 %11, 0
  %105 = lshr exact i32 %11, 29
  %106 = tail call ptr @Perl_hv_common(ptr noundef %102, ptr noundef %1, ptr noundef %2, i64 noundef %103, i32 noundef %105, i32 noundef %17, ptr noundef null, i32 noundef 0) #10
  %107 = icmp eq ptr %106, null
  br i1 %107, label %207, label %108, !prof !263

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.he, ptr %106, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !155
  %111 = getelementptr inbounds %struct.gv, ptr %110, i64 0, i32 2
  %112 = getelementptr inbounds %struct.gv, ptr %110, i64 0, i32 3
  br label %113

113:                                              ; preds = %204, %108
  %114 = phi ptr [ %2, %108 ], [ %138, %204 ]
  %115 = load i32, ptr %111, align 4, !tbaa !170
  %116 = and i32 %115, 255
  %117 = icmp eq i32 %116, 9
  br i1 %117, label %137, label %118, !prof !264

118:                                              ; preds = %113
  %119 = icmp eq ptr %114, null
  br i1 %119, label %120, label %133, !prof !265

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %122 = load i32, ptr %121, align 4, !tbaa !148
  %123 = and i32 %122, 2098176
  %124 = icmp eq i32 %123, 1024
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %127 = load ptr, ptr %1, align 8, !tbaa !242
  %128 = getelementptr inbounds %struct.xpv, ptr %127, i64 0, i32 2
  %129 = load i64, ptr %128, align 8, !tbaa !180
  store i64 %129, ptr %7, align 8, !tbaa !243
  %130 = load ptr, ptr %126, align 8, !tbaa !156
  br label %133

131:                                              ; preds = %120
  %132 = call ptr @Perl_sv_2pv_flags(ptr noundef %1, ptr noundef nonnull %7, i32 noundef 0) #10
  br label %133

133:                                              ; preds = %125, %131, %118
  %134 = phi ptr [ %114, %118 ], [ %130, %125 ], [ %132, %131 ]
  %135 = or disjoint i32 %11, 2
  %136 = load i64, ptr %7, align 8, !tbaa !243
  call void @Perl_gv_init_pvn(ptr noundef %110, ptr noundef nonnull %18, ptr noundef %134, i64 noundef %136, i32 noundef %135)
  br label %137

137:                                              ; preds = %133, %113
  %138 = phi ptr [ %134, %133 ], [ %114, %113 ]
  %139 = load ptr, ptr %112, align 8, !tbaa !156
  %140 = getelementptr inbounds %struct.gp, ptr %139, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !195
  %142 = icmp eq ptr %141, null
  br i1 %142, label %162, label %143, !prof !266

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.gv, ptr %110, i64 0, i32 3
  %145 = getelementptr inbounds %struct.gp, ptr %139, i64 0, i32 3
  %146 = load i32, ptr %145, align 8, !tbaa !207
  %147 = icmp eq i32 %146, 0
  %148 = icmp eq i32 %146, %67
  %149 = select i1 %147, i1 true, i1 %148, !prof !267
  br i1 %149, label %439, label %150, !prof !267

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.sv, ptr %141, i64 0, i32 1
  %152 = load i32, ptr %151, align 8, !tbaa !227
  %153 = icmp ugt i32 %152, 1
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = add i32 %152, -1
  store i32 %155, ptr %151, align 8, !tbaa !227
  br label %157

156:                                              ; preds = %150
  call void @Perl_sv_free2(ptr noundef nonnull %141, i32 noundef %152) #10
  br label %157

157:                                              ; preds = %154, %156
  %158 = load ptr, ptr %144, align 8, !tbaa !156
  %159 = getelementptr inbounds %struct.gp, ptr %158, i64 0, i32 2
  store ptr null, ptr %159, align 8, !tbaa !195
  %160 = load ptr, ptr %144, align 8, !tbaa !156
  %161 = getelementptr inbounds %struct.gp, ptr %160, i64 0, i32 3
  store i32 0, ptr %161, align 8, !tbaa !207
  br label %207

162:                                              ; preds = %137
  %163 = getelementptr inbounds %struct.gp, ptr %139, i64 0, i32 3
  %164 = load i32, ptr %163, align 8, !tbaa !207
  %165 = icmp eq i32 %164, %67
  br i1 %165, label %439, label %166, !prof !268

166:                                              ; preds = %162
  %167 = icmp eq ptr %18, %102
  %168 = load i64, ptr %7, align 8
  %169 = icmp ugt i64 %168, 1
  %170 = select i1 %167, i1 %169, i1 false, !prof !269
  br i1 %170, label %171, label %207, !prof !269

171:                                              ; preds = %166
  %172 = load i32, ptr %19, align 4, !tbaa !249
  %173 = and i32 %172, 33554432
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %198, label %175, !prof !270

175:                                              ; preds = %171
  %176 = load ptr, ptr %51, align 8, !tbaa !156
  %177 = load ptr, ptr %18, align 8, !tbaa !252
  %178 = getelementptr inbounds %struct.xpvhv, ptr %177, i64 0, i32 3
  %179 = load i64, ptr %178, align 8, !tbaa !253
  %180 = getelementptr ptr, ptr %176, i64 %179
  %181 = getelementptr ptr, ptr %180, i64 1
  %182 = load ptr, ptr %181, align 8, !tbaa !156
  %183 = icmp eq ptr %182, null
  br i1 %183, label %198, label %184, !prof !270

184:                                              ; preds = %175
  %185 = getelementptr i8, ptr %180, i64 36
  %186 = load i32, ptr %185, align 4, !tbaa !255
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %193, label %188, !prof !271

188:                                              ; preds = %184
  %189 = load ptr, ptr %182, align 8, !tbaa !155
  %190 = icmp eq ptr %189, null
  br i1 %190, label %198, label %191

191:                                              ; preds = %188
  br i1 %187, label %193, label %192, !prof !271

192:                                              ; preds = %191
  br label %193

193:                                              ; preds = %184, %191, %192
  %194 = phi ptr [ %182, %192 ], [ %181, %191 ], [ %181, %184 ]
  %195 = load ptr, ptr %194, align 8, !tbaa !156
  %196 = getelementptr inbounds %struct.hek, ptr %195, i64 0, i32 1
  %197 = load i32, ptr %196, align 4, !tbaa !162
  br label %198

198:                                              ; preds = %171, %175, %188, %193
  %199 = phi i32 [ %197, %193 ], [ 0, %188 ], [ 0, %175 ], [ 0, %171 ]
  %200 = icmp eq i32 %199, 4
  br i1 %200, label %201, label %207, !prof !272

201:                                              ; preds = %198
  %202 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %47, ptr noundef nonnull dereferenceable(5) @.str.48, i64 noundef 4) #11
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %207, !prof !201

204:                                              ; preds = %201
  %205 = call fastcc ptr @S_maybe_add_coresub(ptr noundef null, ptr noundef %110, ptr noundef %138, i64 noundef %168)
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %113

207:                                              ; preds = %166, %198, %201, %204, %157, %101
  %208 = phi ptr [ %110, %157 ], [ null, %101 ], [ %110, %204 ], [ %110, %201 ], [ %110, %198 ], [ %110, %166 ]
  %209 = phi ptr [ %138, %157 ], [ %2, %101 ], [ %138, %204 ], [ %138, %201 ], [ %138, %198 ], [ %138, %166 ]
  %210 = call ptr @Perl_mro_get_linear_isa(ptr noundef nonnull %18) #10
  %211 = load ptr, ptr %210, align 8, !tbaa !273
  %212 = getelementptr inbounds %struct.xpvav, ptr %211, i64 0, i32 2
  %213 = load i64, ptr %212, align 8, !tbaa !275
  %214 = trunc i64 %213 to i32
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %381, label %216, !prof !277

216:                                              ; preds = %207
  %217 = getelementptr inbounds %struct.av, ptr %210, i64 0, i32 3
  %218 = load ptr, ptr %217, align 8, !tbaa !156
  %219 = getelementptr inbounds ptr, ptr %218, i64 1
  br label %220

220:                                              ; preds = %216, %378
  %221 = phi i32 [ %214, %216 ], [ %227, %378 ]
  %222 = phi ptr [ %219, %216 ], [ %228, %378 ]
  %223 = phi ptr [ null, %216 ], [ %379, %378 ]
  br label %224

224:                                              ; preds = %220, %251
  %225 = phi i32 [ %221, %220 ], [ %227, %251 ]
  %226 = phi ptr [ %222, %220 ], [ %228, %251 ]
  %227 = add nsw i32 %225, -1
  %228 = getelementptr inbounds ptr, ptr %226, i64 1
  %229 = load ptr, ptr %226, align 8, !tbaa !155
  %230 = call fastcc ptr @S_gv_stashsvpvn_cached(ptr noundef %229, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %254, !prof !278

232:                                              ; preds = %224
  %233 = load i32, ptr %19, align 4, !tbaa !249
  %234 = and i32 %233, 33554432
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %251, label %236

236:                                              ; preds = %232
  %237 = load ptr, ptr %51, align 8, !tbaa !156
  %238 = load ptr, ptr %18, align 8, !tbaa !252
  %239 = getelementptr inbounds %struct.xpvhv, ptr %238, i64 0, i32 3
  %240 = load i64, ptr %239, align 8, !tbaa !253
  %241 = getelementptr ptr, ptr %237, i64 %240
  %242 = getelementptr ptr, ptr %241, i64 1
  %243 = load ptr, ptr %242, align 8, !tbaa !156
  %244 = icmp eq ptr %243, null
  br i1 %244, label %251, label %245

245:                                              ; preds = %236
  %246 = getelementptr i8, ptr %241, i64 36
  %247 = load i32, ptr %246, align 4, !tbaa !255
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %251, label %249

249:                                              ; preds = %245
  %250 = load ptr, ptr %243, align 8, !tbaa !155
  br label %251

251:                                              ; preds = %245, %232, %236, %249
  %252 = phi ptr [ %250, %249 ], [ null, %236 ], [ null, %232 ], [ %243, %245 ]
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 28, ptr noundef nonnull @.str.49, ptr noundef %229, ptr noundef %252) #10
  %253 = icmp eq i32 %227, 0
  br i1 %253, label %381, label %224, !prof !279, !llvm.loop !280

254:                                              ; preds = %224
  %255 = load i64, ptr %7, align 8
  %256 = trunc i64 %255 to i32
  %257 = sub nsw i32 0, %256
  %258 = select i1 %104, i32 %256, i32 %257, !prof !279
  %259 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %230, ptr noundef %209, i32 noundef %258, i32 noundef 32, ptr noundef null, i32 noundef 0) #10
  %260 = icmp eq ptr %259, null
  br i1 %260, label %261, label %329, !prof !281

261:                                              ; preds = %254
  %262 = load i64, ptr %7, align 8, !tbaa !243
  %263 = icmp ugt i64 %262, 1
  br i1 %263, label %264, label %378, !prof !282

264:                                              ; preds = %261
  %265 = getelementptr inbounds %struct.hv, ptr %230, i64 0, i32 2
  %266 = load i32, ptr %265, align 4, !tbaa !249
  %267 = and i32 %266, 33554432
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %293, label %269, !prof !283

269:                                              ; preds = %264
  %270 = getelementptr inbounds %struct.hv, ptr %230, i64 0, i32 3
  %271 = load ptr, ptr %270, align 8, !tbaa !156
  %272 = load ptr, ptr %230, align 8, !tbaa !252
  %273 = getelementptr inbounds %struct.xpvhv, ptr %272, i64 0, i32 3
  %274 = load i64, ptr %273, align 8, !tbaa !253
  %275 = getelementptr ptr, ptr %271, i64 %274
  %276 = getelementptr ptr, ptr %275, i64 1
  %277 = load ptr, ptr %276, align 8, !tbaa !156
  %278 = icmp eq ptr %277, null
  br i1 %278, label %293, label %279, !prof !283

279:                                              ; preds = %269
  %280 = getelementptr i8, ptr %275, i64 36
  %281 = load i32, ptr %280, align 4, !tbaa !255
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %288, label %283, !prof !282

283:                                              ; preds = %279
  %284 = load ptr, ptr %277, align 8, !tbaa !155
  %285 = icmp eq ptr %284, null
  br i1 %285, label %293, label %286

286:                                              ; preds = %283
  br i1 %282, label %288, label %287, !prof !282

287:                                              ; preds = %286
  br label %288

288:                                              ; preds = %279, %286, %287
  %289 = phi ptr [ %277, %287 ], [ %276, %286 ], [ %276, %279 ]
  %290 = load ptr, ptr %289, align 8, !tbaa !156
  %291 = getelementptr inbounds %struct.hek, ptr %290, i64 0, i32 1
  %292 = load i32, ptr %291, align 4, !tbaa !162
  br label %293

293:                                              ; preds = %264, %269, %283, %288
  %294 = phi i32 [ %292, %288 ], [ 0, %283 ], [ 0, %269 ], [ 0, %264 ]
  %295 = icmp eq i32 %294, 4
  br i1 %295, label %296, label %378, !prof !283

296:                                              ; preds = %293
  %297 = icmp ne i32 %267, 0
  call void @llvm.assume(i1 %297)
  %298 = getelementptr inbounds %struct.hv, ptr %230, i64 0, i32 3
  %299 = load ptr, ptr %298, align 8, !tbaa !156
  %300 = load ptr, ptr %230, align 8, !tbaa !252
  %301 = getelementptr inbounds %struct.xpvhv, ptr %300, i64 0, i32 3
  %302 = load i64, ptr %301, align 8, !tbaa !253
  %303 = getelementptr ptr, ptr %299, i64 %302
  %304 = getelementptr i8, ptr %303, i64 36
  %305 = load i32, ptr %304, align 4, !tbaa !255
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %312, label %307

307:                                              ; preds = %296
  %308 = getelementptr ptr, ptr %303, i64 1
  %309 = load ptr, ptr %308, align 8, !tbaa !156, !nonnull !284, !noundef !284
  %310 = load ptr, ptr %309, align 8, !tbaa !155
  %311 = icmp ne ptr %310, null
  call void @llvm.assume(i1 %311)
  br label %312

312:                                              ; preds = %307, %296
  %313 = getelementptr ptr, ptr %303, i64 1
  br i1 %306, label %316, label %314

314:                                              ; preds = %312
  %315 = load ptr, ptr %313, align 8, !tbaa !156
  br label %316

316:                                              ; preds = %312, %314
  %317 = phi ptr [ %315, %314 ], [ %313, %312 ]
  %318 = load ptr, ptr %317, align 8, !tbaa !156
  %319 = getelementptr inbounds %struct.hek, ptr %318, i64 0, i32 2
  %320 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %319, ptr noundef nonnull dereferenceable(5) @.str.48, i64 noundef 4) #11
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %316
  %323 = call fastcc ptr @S_maybe_add_coresub(ptr noundef nonnull %230, ptr noundef null, ptr noundef %209, i64 noundef %262)
  %324 = icmp eq ptr %323, null
  %325 = select i1 %324, i32 0, i32 5
  br label %326

326:                                              ; preds = %322, %316
  %327 = phi ptr [ %223, %316 ], [ %323, %322 ]
  %328 = phi i32 [ 0, %316 ], [ %325, %322 ]
  switch i32 %328, label %439 [
    i32 0, label %378
    i32 5, label %331
  ]

329:                                              ; preds = %254
  %330 = load ptr, ptr %259, align 8, !tbaa !155
  br label %331

331:                                              ; preds = %329, %326
  %332 = phi ptr [ %330, %329 ], [ %327, %326 ]
  %333 = getelementptr inbounds %struct.gv, ptr %332, i64 0, i32 2
  %334 = load i32, ptr %333, align 4, !tbaa !170
  %335 = and i32 %334, 255
  %336 = icmp eq i32 %335, 9
  br i1 %336, label %340, label %337, !prof !285

337:                                              ; preds = %331
  %338 = or disjoint i32 %11, 2
  %339 = load i64, ptr %7, align 8, !tbaa !243
  call void @Perl_gv_init_pvn(ptr noundef %332, ptr noundef nonnull %230, ptr noundef %209, i64 noundef %339, i32 noundef %338)
  br label %340

340:                                              ; preds = %337, %331
  %341 = load i32, ptr %333, align 4, !tbaa !170
  %342 = and i32 %341, 255
  %343 = icmp eq i32 %342, 9
  br i1 %343, label %344, label %378, !prof !285

344:                                              ; preds = %340
  %345 = getelementptr inbounds %struct.gv, ptr %332, i64 0, i32 3
  %346 = load ptr, ptr %345, align 8, !tbaa !156
  %347 = getelementptr inbounds %struct.gp, ptr %346, i64 0, i32 2
  %348 = load ptr, ptr %347, align 8, !tbaa !195
  %349 = icmp eq ptr %348, null
  br i1 %349, label %378, label %350, !prof !286

350:                                              ; preds = %344
  %351 = getelementptr inbounds %struct.gp, ptr %346, i64 0, i32 3
  %352 = load i32, ptr %351, align 8, !tbaa !207
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %378, !prof !287

354:                                              ; preds = %350
  %355 = icmp eq ptr %208, null
  br i1 %355, label %439, label %356, !prof !288

356:                                              ; preds = %354
  %357 = getelementptr inbounds %struct.gv, ptr %208, i64 0, i32 3
  %358 = load ptr, ptr %357, align 8, !tbaa !156
  %359 = getelementptr inbounds %struct.gp, ptr %358, i64 0, i32 4
  %360 = load i32, ptr %359, align 4, !tbaa !221
  %361 = icmp eq i32 %360, 1
  br i1 %361, label %362, label %439, !prof !287

362:                                              ; preds = %356
  %363 = load ptr, ptr %348, align 8, !tbaa !196
  %364 = getelementptr inbounds %struct.xpvcv, ptr %363, i64 0, i32 6
  %365 = load ptr, ptr %364, align 8, !tbaa !156
  %366 = icmp eq ptr %365, null
  br i1 %366, label %439, label %367, !prof !288

367:                                              ; preds = %362
  %368 = getelementptr inbounds %struct.gp, ptr %358, i64 0, i32 2
  %369 = load ptr, ptr %368, align 8, !tbaa !195
  %370 = icmp eq ptr %369, null
  br i1 %370, label %425, label %371, !prof !287

371:                                              ; preds = %367
  %372 = getelementptr inbounds %struct.sv, ptr %369, i64 0, i32 1
  %373 = load i32, ptr %372, align 8, !tbaa !227
  %374 = icmp ugt i32 %373, 1
  br i1 %374, label %375, label %377

375:                                              ; preds = %371
  %376 = add i32 %373, -1
  store i32 %376, ptr %372, align 8, !tbaa !227
  br label %425

377:                                              ; preds = %371
  call void @Perl_sv_free2(ptr noundef nonnull %369, i32 noundef %373) #10
  br label %425

378:                                              ; preds = %340, %344, %350, %261, %293, %326
  %379 = phi ptr [ %327, %326 ], [ %223, %293 ], [ %223, %261 ], [ %332, %350 ], [ %332, %344 ], [ %332, %340 ]
  %380 = icmp eq i32 %227, 0
  br i1 %380, label %381, label %220, !prof !279, !llvm.loop !280

381:                                              ; preds = %378, %251, %207
  %382 = add i32 %4, 1
  %383 = icmp ult i32 %382, 2
  br i1 %383, label %384, label %417, !prof !289

384:                                              ; preds = %381
  %385 = load i64, ptr %7, align 8, !tbaa !243
  %386 = and i32 %5, -4097
  %387 = call fastcc ptr @S_gv_fetchmeth_internal(ptr noundef null, ptr noundef %1, ptr noundef %209, i64 noundef %385, i32 noundef 1, i32 noundef %386)
  %388 = icmp eq ptr %387, null
  br i1 %388, label %417, label %389, !prof !290

389:                                              ; preds = %384
  %390 = getelementptr inbounds %struct.gv, ptr %387, i64 0, i32 3
  %391 = load ptr, ptr %390, align 8, !tbaa !156
  %392 = getelementptr inbounds %struct.gp, ptr %391, i64 0, i32 2
  %393 = load ptr, ptr %392, align 8, !tbaa !195
  %394 = icmp eq ptr %208, null
  br i1 %394, label %439, label %395, !prof !291

395:                                              ; preds = %389
  %396 = getelementptr inbounds %struct.gv, ptr %208, i64 0, i32 3
  %397 = load ptr, ptr %396, align 8, !tbaa !156
  %398 = getelementptr inbounds %struct.gp, ptr %397, i64 0, i32 4
  %399 = load i32, ptr %398, align 4, !tbaa !221
  %400 = icmp eq i32 %399, 1
  br i1 %400, label %401, label %439, !prof !292

401:                                              ; preds = %395
  %402 = load ptr, ptr %393, align 8, !tbaa !196
  %403 = getelementptr inbounds %struct.xpvcv, ptr %402, i64 0, i32 6
  %404 = load ptr, ptr %403, align 8, !tbaa !156
  %405 = icmp eq ptr %404, null
  br i1 %405, label %439, label %406, !prof !291

406:                                              ; preds = %401
  %407 = getelementptr inbounds %struct.gp, ptr %397, i64 0, i32 2
  %408 = load ptr, ptr %407, align 8, !tbaa !195
  %409 = icmp eq ptr %408, null
  br i1 %409, label %425, label %410, !prof !292

410:                                              ; preds = %406
  %411 = getelementptr inbounds %struct.sv, ptr %408, i64 0, i32 1
  %412 = load i32, ptr %411, align 8, !tbaa !227
  %413 = icmp ugt i32 %412, 1
  br i1 %413, label %414, label %416

414:                                              ; preds = %410
  %415 = add i32 %412, -1
  store i32 %415, ptr %411, align 8, !tbaa !227
  br label %425

416:                                              ; preds = %410
  call void @Perl_sv_free2(ptr noundef nonnull %408, i32 noundef %412) #10
  br label %425

417:                                              ; preds = %384, %381
  %418 = icmp eq ptr %208, null
  br i1 %418, label %439, label %419, !prof !293

419:                                              ; preds = %417
  %420 = getelementptr inbounds %struct.gv, ptr %208, i64 0, i32 3
  %421 = load ptr, ptr %420, align 8, !tbaa !156
  %422 = getelementptr inbounds %struct.gp, ptr %421, i64 0, i32 4
  %423 = load i32, ptr %422, align 4, !tbaa !221
  %424 = icmp eq i32 %423, 1
  br i1 %424, label %435, label %439, !prof !228

425:                                              ; preds = %416, %414, %406, %377, %375, %367
  %426 = phi ptr [ %348, %367 ], [ %348, %375 ], [ %348, %377 ], [ %393, %406 ], [ %393, %414 ], [ %393, %416 ]
  %427 = phi ptr [ %357, %367 ], [ %357, %375 ], [ %357, %377 ], [ %396, %406 ], [ %396, %414 ], [ %396, %416 ]
  %428 = phi ptr [ %332, %367 ], [ %332, %375 ], [ %332, %377 ], [ %387, %406 ], [ %387, %414 ], [ %387, %416 ]
  %429 = getelementptr inbounds %struct.sv, ptr %426, i64 0, i32 1
  %430 = load i32, ptr %429, align 8, !tbaa !227
  %431 = add i32 %430, 1
  store i32 %431, ptr %429, align 8, !tbaa !227
  %432 = load ptr, ptr %427, align 8, !tbaa !156
  %433 = getelementptr inbounds %struct.gp, ptr %432, i64 0, i32 2
  store ptr %426, ptr %433, align 8, !tbaa !195
  %434 = load ptr, ptr %427, align 8, !tbaa !156
  br label %435

435:                                              ; preds = %425, %419
  %436 = phi ptr [ %421, %419 ], [ %434, %425 ]
  %437 = phi ptr [ null, %419 ], [ %428, %425 ]
  %438 = getelementptr inbounds %struct.gp, ptr %436, i64 0, i32 3
  store i32 %67, ptr %438, align 8, !tbaa !207
  br label %439

439:                                              ; preds = %162, %326, %435, %417, %419, %389, %395, %401, %354, %356, %362, %143, %13
  %440 = phi ptr [ null, %13 ], [ %110, %143 ], [ %332, %362 ], [ %332, %356 ], [ %332, %354 ], [ %387, %401 ], [ %387, %395 ], [ %387, %389 ], [ null, %419 ], [ null, %417 ], [ %437, %435 ], [ undef, %326 ], [ null, %162 ]
  ret ptr %440
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_gv_fetchmeth_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 !prof !206 {
  %6 = tail call fastcc ptr @S_gv_fetchmeth_internal(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4)
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_gv_fetchmeth_pv(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 !prof !206 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  %6 = tail call fastcc ptr @S_gv_fetchmeth_internal(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %5, i32 noundef %2, i32 noundef %3)
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_gv_fetchmeth_sv_autoload(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 !prof !206 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %6 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !148
  %8 = and i32 %7, 2098176
  %9 = icmp eq i32 %8, 1024
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = load ptr, ptr %1, align 8, !tbaa !242
  %12 = getelementptr inbounds %struct.xpv, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !180
  store i64 %13, ptr %5, align 8, !tbaa !243
  %14 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !156
  br label %18

16:                                               ; preds = %4
  %17 = call ptr @Perl_sv_2pv_flags(ptr noundef %1, ptr noundef nonnull %5, i32 noundef 2) #10
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi ptr [ %15, %10 ], [ %17, %16 ]
  %20 = load i32, ptr %6, align 4, !tbaa !148
  %21 = and i32 %20, 536870912
  %22 = or i32 %21, %3
  %23 = load i64, ptr %5, align 8, !tbaa !243
  %24 = call ptr @Perl_gv_fetchmeth_pvn_autoload(ptr noundef %0, ptr noundef %19, i64 noundef %23, i32 noundef %2, i32 noundef %22)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret ptr %24
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_gv_fetchmeth_pvn_autoload(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 !prof !294 {
  %6 = tail call fastcc ptr @S_gv_fetchmeth_internal(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %43, !prof !295

8:                                                ; preds = %5
  %9 = icmp eq ptr %0, null
  br i1 %9, label %43, label %10, !prof !283

10:                                               ; preds = %8
  %11 = icmp eq i64 %2, 8
  br i1 %11, label %12, label %15, !prof !283

12:                                               ; preds = %10
  %13 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %1, ptr noundef nonnull dereferenceable(8) @S_autoload, i64 8)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %43, label %15

15:                                               ; preds = %12, %10
  %16 = tail call fastcc ptr @S_gv_fetchmeth_internal(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @S_autoload, i64 noundef 8, i32 noundef 0, i32 noundef %4)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %43, label %18, !prof !282

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !156
  %21 = getelementptr inbounds %struct.gp, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !195
  %23 = load ptr, ptr %22, align 8, !tbaa !196
  %24 = getelementptr inbounds %struct.xpvcv, ptr %23, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !156
  %26 = icmp eq ptr %25, null
  br i1 %26, label %43, label %27

27:                                               ; preds = %18
  %28 = icmp slt i32 %3, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = tail call fastcc ptr @S_gv_fetchmeth_internal(ptr noundef nonnull %0, ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef 0, i32 noundef %4)
  br label %31

31:                                               ; preds = %29, %27
  %32 = and i32 %4, 536870912
  %33 = icmp eq i32 %32, 0
  %34 = trunc i64 %2 to i32
  %35 = sub nsw i32 0, %34
  %36 = select i1 %33, i32 %34, i32 %35
  %37 = icmp sgt i32 %3, -1
  %38 = select i1 %37, i32 48, i32 32
  %39 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %36, i32 noundef %38, ptr noundef null, i32 noundef 0) #10
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %31
  %42 = load ptr, ptr %39, align 8, !tbaa !155
  br label %43

43:                                               ; preds = %12, %5, %41, %8, %15, %18, %31
  %44 = phi ptr [ %42, %41 ], [ null, %8 ], [ null, %15 ], [ null, %18 ], [ null, %31 ], [ %6, %5 ], [ null, %12 ]
  ret ptr %44
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_gv_fetchmeth_pv_autoload(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 !prof !206 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  %6 = tail call ptr @Perl_gv_fetchmeth_pvn_autoload(ptr noundef %0, ptr noundef %1, i64 noundef %5, i32 noundef %2, i32 noundef %3)
  ret ptr %6
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_gv_fetchmethod_autoload(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 !prof !296 {
  %4 = icmp eq i32 %2, 0
  %5 = select i1 %4, i32 0, i32 256, !prof !297
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  %7 = tail call ptr @Perl_gv_fetchmethod_pvn_flags(ptr noundef %0, ptr noundef %1, i64 noundef %6, i32 noundef %5)
  ret ptr %7
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_gv_fetchmethod_pv_flags(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 !prof !206 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  %5 = tail call ptr @Perl_gv_fetchmethod_pvn_flags(ptr noundef %0, ptr noundef %1, i64 noundef %4, i32 noundef %2)
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !298 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %5 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !148
  %7 = and i32 %6, 2098176
  %8 = icmp eq i32 %7, 1024
  br i1 %8, label %9, label %15, !prof !299

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 8, !tbaa !242
  %11 = getelementptr inbounds %struct.xpv, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !180
  store i64 %12, ptr %4, align 8, !tbaa !243
  %13 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !156
  br label %17

15:                                               ; preds = %3
  %16 = call ptr @Perl_sv_2pv_flags(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 2) #10
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi ptr [ %14, %9 ], [ %16, %15 ]
  %19 = load i32, ptr %5, align 4, !tbaa !148
  %20 = and i32 %19, 536870912
  %21 = or i32 %20, %2
  %22 = load i64, ptr %4, align 8, !tbaa !243
  %23 = call ptr @Perl_gv_fetchmethod_pvn_flags(ptr noundef %0, ptr noundef %18, i64 noundef %22, i32 noundef %21)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret ptr %23
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_gv_fetchmethod_pvn_flags(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !300 {
  %5 = and i32 %3, 256
  %6 = and i32 %3, 512
  %7 = and i32 %3, 536870912
  %8 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !249
  %10 = and i32 %9, 252
  %11 = icmp ult i32 %10, 12
  %12 = select i1 %11, ptr null, ptr %0, !prof !301
  %13 = getelementptr inbounds i8, ptr %1, i64 %2
  %14 = load i8, ptr %1, align 1, !tbaa !156
  %15 = icmp ne i8 %14, 0
  %16 = icmp ne i64 %2, 0
  %17 = or i1 %15, %16
  br i1 %17, label %18, label %40, !prof !302

18:                                               ; preds = %4, %31
  %19 = phi i8 [ %36, %31 ], [ %14, %4 ]
  %20 = phi ptr [ %34, %31 ], [ %1, %4 ]
  %21 = phi ptr [ %35, %31 ], [ %1, %4 ]
  %22 = phi ptr [ %32, %31 ], [ null, %4 ]
  switch i8 %19, label %31 [
    i8 39, label %23
    i8 58, label %25
  ], !prof !303

23:                                               ; preds = %18
  %24 = getelementptr inbounds i8, ptr %21, i64 1
  br label %31

25:                                               ; preds = %18
  %26 = getelementptr inbounds i8, ptr %21, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !156
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
  %36 = load i8, ptr %35, align 1, !tbaa !156
  %37 = icmp ne i8 %36, 0
  %38 = icmp ne ptr %35, %13
  %39 = select i1 %37, i1 true, i1 %38, !prof !304
  br i1 %39, label %18, label %40, !prof !305, !llvm.loop !306

40:                                               ; preds = %31, %4
  %41 = phi ptr [ null, %4 ], [ %32, %31 ]
  %42 = phi ptr [ %1, %4 ], [ %35, %31 ]
  %43 = phi ptr [ %1, %4 ], [ %34, %31 ]
  %44 = icmp eq ptr %41, null
  br i1 %44, label %74, label %45, !prof !307

45:                                               ; preds = %40
  %46 = ptrtoint ptr %41 to i64
  %47 = ptrtoint ptr %1 to i64
  %48 = sub i64 %46, %47
  %49 = icmp eq i64 %48, 5
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %1, ptr noundef nonnull dereferenceable(5) @.str.10, i64 5)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load ptr, ptr @PL_curcop, align 8, !tbaa !155
  %55 = getelementptr inbounds %struct.cop, ptr %54, i64 0, i32 8
  %56 = load ptr, ptr %55, align 8, !tbaa !308
  %57 = or i32 %3, 4096
  br label %74

58:                                               ; preds = %50, %45
  %59 = icmp sgt i64 %48, 6
  br i1 %59, label %60, label %71

60:                                               ; preds = %58
  %61 = getelementptr inbounds i8, ptr %41, i64 -7
  %62 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %61, ptr noundef nonnull dereferenceable(8) @.str.11, i64 noundef 7) #11
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = trunc i64 %48 to i32
  %66 = add i32 %65, -7
  %67 = tail call fastcc ptr @S_gv_stashsvpvn_cached(ptr noundef null, ptr noundef nonnull %1, i32 noundef %66, i32 noundef %7)
  %68 = icmp eq ptr %67, null
  %69 = or i32 %3, 4096
  %70 = select i1 %68, i32 %3, i32 %69
  br label %74

71:                                               ; preds = %60, %58
  %72 = trunc i64 %48 to i32
  %73 = tail call fastcc ptr @S_gv_stashsvpvn_cached(ptr noundef null, ptr noundef nonnull %1, i32 noundef %72, i32 noundef %7)
  br label %74

74:                                               ; preds = %64, %53, %71, %40
  %75 = phi ptr [ %0, %40 ], [ %73, %71 ], [ %56, %53 ], [ %67, %64 ]
  %76 = phi i32 [ %3, %40 ], [ %3, %71 ], [ %57, %53 ], [ %70, %64 ]
  %77 = phi ptr [ %12, %40 ], [ %73, %71 ], [ %56, %53 ], [ %67, %64 ]
  %78 = ptrtoint ptr %42 to i64
  %79 = ptrtoint ptr %43 to i64
  %80 = sub i64 %78, %79
  %81 = tail call fastcc ptr @S_gv_fetchmeth_internal(ptr noundef %77, ptr noundef null, ptr noundef %43, i64 noundef %80, i32 noundef 0, i32 noundef %76)
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %210, !prof !309

83:                                               ; preds = %74
  %84 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(7) @.str.12) #11
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %94, label %86, !prof !310

86:                                               ; preds = %83
  %87 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(9) @.str.13) #11
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %94, label %89, !prof !201

89:                                               ; preds = %86
  %90 = icmp eq i32 %5, 0
  br i1 %90, label %94, label %91, !prof !194

91:                                               ; preds = %89
  %92 = or i32 %76, 1
  %93 = tail call ptr @Perl_gv_autoload_pvn(ptr noundef %75, ptr noundef %43, i64 noundef %80, i32 noundef %92)
  br label %94

94:                                               ; preds = %83, %86, %89, %91
  %95 = phi ptr [ %93, %91 ], [ null, %89 ], [ @PL_sv_yes, %86 ], [ @PL_sv_yes, %83 ]
  %96 = icmp eq ptr %95, null
  %97 = icmp ne i32 %6, 0
  %98 = and i1 %97, %96
  br i1 %98, label %99, label %263, !prof !311

99:                                               ; preds = %94
  %100 = icmp eq ptr %77, null
  br i1 %100, label %200, label %101

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.hv, ptr %77, i64 0, i32 2
  %103 = load i32, ptr %102, align 4, !tbaa !249
  %104 = and i32 %103, 33554432
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %127, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.hv, ptr %77, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !156
  %109 = load ptr, ptr %77, align 8, !tbaa !252
  %110 = getelementptr inbounds %struct.xpvhv, ptr %109, i64 0, i32 3
  %111 = load i64, ptr %110, align 8, !tbaa !253
  %112 = getelementptr ptr, ptr %108, i64 %111
  %113 = getelementptr ptr, ptr %112, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !156
  %115 = icmp eq ptr %114, null
  br i1 %115, label %127, label %116

116:                                              ; preds = %106
  %117 = getelementptr i8, ptr %112, i64 36
  %118 = load i32, ptr %117, align 4, !tbaa !255
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = load ptr, ptr %114, align 8, !tbaa !155
  %122 = icmp eq ptr %121, null
  br i1 %122, label %127, label %123

123:                                              ; preds = %116, %120
  %124 = phi ptr [ %113, %116 ], [ %114, %120 ]
  %125 = load ptr, ptr %124, align 8, !tbaa !156
  %126 = getelementptr inbounds %struct.hek, ptr %125, i64 0, i32 2
  br label %127

127:                                              ; preds = %101, %106, %120, %123
  %128 = phi ptr [ %126, %123 ], [ null, %120 ], [ null, %106 ], [ null, %101 ]
  %129 = icmp eq ptr %128, null
  %130 = or i1 %105, %129
  br i1 %130, label %177, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.hv, ptr %77, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !156
  %134 = load ptr, ptr %77, align 8, !tbaa !252
  %135 = getelementptr inbounds %struct.xpvhv, ptr %134, i64 0, i32 3
  %136 = load i64, ptr %135, align 8, !tbaa !253
  %137 = getelementptr ptr, ptr %133, i64 %136
  %138 = getelementptr ptr, ptr %137, i64 1
  %139 = load ptr, ptr %138, align 8, !tbaa !156
  %140 = icmp eq ptr %139, null
  br i1 %140, label %177, label %141

141:                                              ; preds = %131
  %142 = getelementptr i8, ptr %137, i64 36
  %143 = load i32, ptr %142, align 4, !tbaa !255
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %141
  %146 = load ptr, ptr %139, align 8, !tbaa !155
  %147 = icmp eq ptr %146, null
  br i1 %147, label %177, label %148

148:                                              ; preds = %141, %145
  %149 = phi ptr [ %138, %141 ], [ %139, %145 ]
  %150 = load ptr, ptr %149, align 8, !tbaa !156
  %151 = getelementptr inbounds %struct.hek, ptr %150, i64 0, i32 1
  %152 = load i32, ptr %151, align 4, !tbaa !162
  %153 = icmp eq i32 %152, 8
  br i1 %153, label %154, label %177

154:                                              ; preds = %148
  %155 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %128, ptr noundef nonnull dereferenceable(8) @.str.14, i64 8)
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %177

157:                                              ; preds = %154
  %158 = load ptr, ptr @PL_incgv, align 8, !tbaa !155
  %159 = getelementptr inbounds %struct.gv, ptr %158, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !156
  %161 = getelementptr inbounds %struct.gp, ptr %160, i64 0, i32 5
  %162 = load ptr, ptr %161, align 8, !tbaa !176
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %170

164:                                              ; preds = %157
  %165 = tail call ptr @Perl_gv_add_by_type(ptr noundef %158, i32 noundef 12)
  %166 = getelementptr inbounds %struct.gv, ptr %158, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !156
  %168 = getelementptr inbounds %struct.gp, ptr %167, i64 0, i32 5
  %169 = load ptr, ptr %168, align 8, !tbaa !176
  br label %170

170:                                              ; preds = %157, %164
  %171 = phi ptr [ %169, %164 ], [ %162, %157 ]
  %172 = tail call ptr @Perl_hv_common(ptr noundef %171, ptr noundef null, ptr noundef nonnull @.str.15, i64 noundef 10, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef 0) #10
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  tail call void @Perl_require_pv(ptr noundef nonnull @.str.15) #10
  %175 = tail call fastcc ptr @S_gv_fetchmeth_internal(ptr noundef nonnull %77, ptr noundef null, ptr noundef %43, i64 noundef %80, i32 noundef 0, i32 noundef %76)
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %263

177:                                              ; preds = %145, %127, %131, %174, %170, %154, %148
  %178 = lshr exact i32 %7, 29
  %179 = load i32, ptr %102, align 4, !tbaa !249
  %180 = and i32 %179, 33554432
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %198, label %182

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.hv, ptr %77, i64 0, i32 3
  %184 = load ptr, ptr %183, align 8, !tbaa !156
  %185 = load ptr, ptr %77, align 8, !tbaa !252
  %186 = getelementptr inbounds %struct.xpvhv, ptr %185, i64 0, i32 3
  %187 = load i64, ptr %186, align 8, !tbaa !253
  %188 = getelementptr ptr, ptr %184, i64 %187
  %189 = getelementptr ptr, ptr %188, i64 1
  %190 = load ptr, ptr %189, align 8, !tbaa !156
  %191 = icmp eq ptr %190, null
  br i1 %191, label %198, label %192

192:                                              ; preds = %182
  %193 = getelementptr i8, ptr %188, i64 36
  %194 = load i32, ptr %193, align 4, !tbaa !255
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %192
  %197 = load ptr, ptr %190, align 8, !tbaa !155
  br label %198

198:                                              ; preds = %192, %177, %182, %196
  %199 = phi ptr [ %197, %196 ], [ null, %182 ], [ null, %177 ], [ %190, %192 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.16, i32 noundef %178, i64 noundef %80, ptr noundef %43, ptr noundef %199) #10
  br label %263

200:                                              ; preds = %99
  br i1 %44, label %207, label %201

201:                                              ; preds = %200
  %202 = ptrtoint ptr %41 to i64
  %203 = ptrtoint ptr %1 to i64
  %204 = sub i64 %202, %203
  %205 = or disjoint i32 %7, 524288
  %206 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %1, i64 noundef %204, i32 noundef %205) #10
  br label %207

207:                                              ; preds = %200, %201
  %208 = phi ptr [ %206, %201 ], [ %0, %200 ]
  %209 = lshr exact i32 %7, 29
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.17, i32 noundef %209, i64 noundef %80, ptr noundef %43, ptr noundef %208, ptr noundef %208) #10
  br label %263

210:                                              ; preds = %74
  %211 = icmp eq i32 %5, 0
  br i1 %211, label %263, label %212, !prof !312

212:                                              ; preds = %210
  %213 = getelementptr inbounds %struct.gv, ptr %81, i64 0, i32 3
  %214 = load ptr, ptr %213, align 8, !tbaa !156
  %215 = getelementptr inbounds %struct.gp, ptr %214, i64 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !195
  %217 = load ptr, ptr %216, align 8, !tbaa !196
  %218 = getelementptr inbounds %struct.xpvcv, ptr %217, i64 0, i32 6
  %219 = load ptr, ptr %218, align 8, !tbaa !156
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %263, !prof !313

221:                                              ; preds = %212
  %222 = getelementptr inbounds %struct.xpvcv, ptr %217, i64 0, i32 12
  %223 = load i32, ptr %222, align 4, !tbaa !200
  %224 = and i32 %223, 65664
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %242

226:                                              ; preds = %221
  %227 = and i32 %223, 32768
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %226
  %230 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %216)
  br label %234

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.xpvcv, ptr %217, i64 0, i32 7
  %233 = load ptr, ptr %232, align 8, !tbaa !156
  br label %234

234:                                              ; preds = %229, %231
  %235 = phi ptr [ %230, %229 ], [ %233, %231 ]
  %236 = getelementptr inbounds %struct.gv, ptr %235, i64 0, i32 3
  %237 = load ptr, ptr %236, align 8, !tbaa !156
  %238 = getelementptr inbounds %struct.gp, ptr %237, i64 0, i32 2
  %239 = load ptr, ptr %238, align 8, !tbaa !195
  %240 = icmp eq ptr %239, %216
  %241 = select i1 %240, ptr %235, ptr %81
  br label %242

242:                                              ; preds = %234, %221
  %243 = phi ptr [ %81, %221 ], [ %241, %234 ]
  %244 = load ptr, ptr %243, align 8, !tbaa !160
  %245 = getelementptr inbounds %struct.xpvgv, ptr %244, i64 0, i32 5
  %246 = load ptr, ptr %245, align 8, !tbaa !156
  %247 = getelementptr inbounds %struct.xpvgv, ptr %244, i64 0, i32 4
  %248 = load ptr, ptr %247, align 8, !tbaa !156
  %249 = getelementptr inbounds %struct.hek, ptr %248, i64 0, i32 2
  %250 = getelementptr inbounds %struct.hek, ptr %248, i64 0, i32 1
  %251 = load i32, ptr %250, align 4, !tbaa !162
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, ptr %249, i64 %252
  %254 = getelementptr inbounds i8, ptr %253, i64 1
  %255 = load i8, ptr %254, align 1, !tbaa !156
  %256 = and i8 %255, 1
  %257 = zext nneg i8 %256 to i32
  %258 = shl nuw nsw i32 %257, 29
  %259 = or disjoint i32 %258, 1
  %260 = tail call ptr @Perl_gv_autoload_pvn(ptr noundef %246, ptr noundef nonnull %249, i64 noundef %252, i32 noundef %259)
  %261 = icmp eq ptr %260, null
  %262 = select i1 %261, ptr %81, ptr %260
  br label %263

263:                                              ; preds = %198, %174, %207, %94, %210, %242, %212
  %264 = phi ptr [ %81, %210 ], [ null, %207 ], [ %95, %94 ], [ %81, %212 ], [ %262, %242 ], [ null, %198 ], [ %175, %174 ]
  ret ptr %264
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_gv_stashpvn(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !314 {
  %4 = tail call fastcc ptr @S_gv_stashsvpvn_cached(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %2)
  ret ptr %4
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_gv_autoload_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #5 !prof !206 {
  %5 = alloca i64, align 8
  %6 = and i32 %3, 536870912
  %7 = icmp eq i32 %6, 0
  %8 = icmp eq i64 %2, 8
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %1, ptr noundef nonnull dereferenceable(8) @S_autoload, i64 8)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %269, label %12

12:                                               ; preds = %9, %4
  %13 = icmp eq ptr %0, null
  br i1 %13, label %66, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !174
  %17 = and i32 %16, 252
  %18 = icmp ult i32 %17, 12
  br i1 %18, label %19, label %37

19:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  store i64 0, ptr %5, align 8, !tbaa !243
  %20 = and i32 %16, 2098176
  %21 = icmp eq i32 %20, 1024
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load ptr, ptr %0, align 8, !tbaa !242
  %24 = getelementptr inbounds %struct.xpv, ptr %23, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !180
  store i64 %25, ptr %5, align 8, !tbaa !243
  %26 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !156
  br label %30

28:                                               ; preds = %19
  %29 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 34) #10
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi ptr [ %27, %22 ], [ %29, %28 ]
  %32 = load i64, ptr %5, align 8, !tbaa !243
  %33 = load i32, ptr %15, align 4, !tbaa !249
  %34 = and i32 %33, 536870912
  %35 = or disjoint i32 %34, 524288
  %36 = call ptr @Perl_newSVpvn_flags(ptr noundef %31, i64 noundef %32, i32 noundef %35) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %60

37:                                               ; preds = %14
  %38 = and i32 %16, 33554432
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !156
  %43 = load ptr, ptr %0, align 8, !tbaa !252
  %44 = getelementptr inbounds %struct.xpvhv, ptr %43, i64 0, i32 3
  %45 = load i64, ptr %44, align 8, !tbaa !253
  %46 = getelementptr ptr, ptr %42, i64 %45
  %47 = getelementptr ptr, ptr %46, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !156
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %40
  %51 = getelementptr i8, ptr %46, i64 36
  %52 = load i32, ptr %51, align 4, !tbaa !255
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %48, align 8, !tbaa !155
  br label %56

56:                                               ; preds = %50, %37, %40, %54
  %57 = phi ptr [ %55, %54 ], [ null, %40 ], [ null, %37 ], [ %48, %50 ]
  %58 = tail call ptr @Perl_newSVhek(ptr noundef %57) #10
  %59 = tail call ptr @Perl_sv_2mortal(ptr noundef %58) #10
  br label %60

60:                                               ; preds = %56, %30
  %61 = phi ptr [ %36, %30 ], [ %59, %56 ]
  %62 = phi ptr [ null, %30 ], [ %0, %56 ]
  %63 = and i32 %3, 4096
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  call void @Perl_sv_catpvn_flags(ptr noundef %61, ptr noundef nonnull @.str.11, i64 noundef 7, i32 noundef 2) #10
  br label %66

66:                                               ; preds = %60, %65, %12
  %67 = phi ptr [ %61, %65 ], [ %61, %60 ], [ null, %12 ]
  %68 = phi ptr [ %62, %65 ], [ %62, %60 ], [ null, %12 ]
  %69 = and i32 %3, 536875008
  %70 = call fastcc ptr @S_gv_fetchmeth_internal(ptr noundef %68, ptr noundef null, ptr noundef nonnull @S_autoload, i64 noundef 8, i32 noundef 0, i32 noundef %69)
  %71 = icmp eq ptr %70, null
  br i1 %71, label %269, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.gv, ptr %70, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !156
  %75 = getelementptr inbounds %struct.gp, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !195
  %77 = load ptr, ptr %76, align 8, !tbaa !196
  %78 = getelementptr inbounds %struct.xpvcv, ptr %77, i64 0, i32 6
  %79 = load ptr, ptr %78, align 8, !tbaa !156
  %80 = icmp eq ptr %79, null
  br i1 %80, label %269, label %81

81:                                               ; preds = %72
  %82 = and i32 %3, 1
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.gp, ptr %74, i64 0, i32 3
  %86 = load i32, ptr %85, align 8, !tbaa !207
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load ptr, ptr %70, align 8, !tbaa !160
  %90 = getelementptr inbounds %struct.xpvgv, ptr %89, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !156
  %92 = icmp eq ptr %91, %68
  br i1 %92, label %95, label %93

93:                                               ; preds = %88, %84
  %94 = lshr exact i32 %6, 29
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef %67, i32 noundef %94, i64 noundef %2, ptr noundef %1) #10
  br label %95

95:                                               ; preds = %93, %88, %81
  %96 = load ptr, ptr %76, align 8, !tbaa !196
  %97 = getelementptr inbounds %struct.xpvcv, ptr %96, i64 0, i32 12
  %98 = load i32, ptr %97, align 4, !tbaa !200
  %99 = and i32 %98, 8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %222, label %101

101:                                              ; preds = %95
  call void @Perl_cvstash_set(ptr noundef nonnull %76, ptr noundef %68)
  %102 = getelementptr inbounds %struct.cv, ptr %76, i64 0, i32 2
  %103 = load i32, ptr %102, align 4, !tbaa !315
  %104 = and i32 %103, 1024
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %210, label %106

106:                                              ; preds = %101
  %107 = call ptr @Perl_newSVpvn_flags(ptr noundef %1, i64 noundef %2, i32 noundef %6) #10
  %108 = load i32, ptr %102, align 4, !tbaa !315
  %109 = and i32 %108, 1024
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %130, label %111

111:                                              ; preds = %106
  %112 = and i32 %108, 255
  %113 = icmp eq i32 %112, 13
  br i1 %113, label %114, label %127

114:                                              ; preds = %111
  %115 = load ptr, ptr %76, align 8, !tbaa !196
  %116 = getelementptr inbounds %struct.xpvcv, ptr %115, i64 0, i32 12
  %117 = load i32, ptr %116, align 4, !tbaa !200
  %118 = and i32 %117, 8192
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.cv, ptr %76, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !156
  %123 = getelementptr inbounds %struct.xpv, ptr %115, i64 0, i32 2
  %124 = load i64, ptr %123, align 8, !tbaa !180
  %125 = getelementptr inbounds i8, ptr %122, i64 %124
  %126 = getelementptr inbounds i8, ptr %125, i64 1
  br label %130

127:                                              ; preds = %114, %111
  %128 = getelementptr inbounds %struct.cv, ptr %76, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !156
  br label %130

130:                                              ; preds = %106, %120, %127
  %131 = phi ptr [ %126, %120 ], [ %129, %127 ], [ null, %106 ]
  %132 = and i32 %108, 536870912
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %158, label %134

134:                                              ; preds = %130
  br i1 %110, label %155, label %135

135:                                              ; preds = %134
  %136 = and i32 %108, 255
  %137 = icmp eq i32 %136, 13
  br i1 %137, label %138, label %150

138:                                              ; preds = %135
  %139 = load ptr, ptr %76, align 8, !tbaa !196
  %140 = getelementptr inbounds %struct.xpvcv, ptr %139, i64 0, i32 12
  %141 = load i32, ptr %140, align 4, !tbaa !200
  %142 = and i32 %141, 8192
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.xpv, ptr %139, i64 0, i32 3
  %146 = load i64, ptr %145, align 8, !tbaa !156
  %147 = getelementptr inbounds %struct.xpv, ptr %139, i64 0, i32 2
  %148 = load i64, ptr %147, align 8, !tbaa !180
  %149 = sub i64 %146, %148
  br label %155

150:                                              ; preds = %138, %135
  %151 = load ptr, ptr %76, align 8, !tbaa !196
  %152 = getelementptr inbounds %struct.xpv, ptr %151, i64 0, i32 2
  %153 = load i64, ptr %152, align 8, !tbaa !180
  %154 = add i64 %153, 2
  br label %155

155:                                              ; preds = %134, %144, %150
  %156 = phi i64 [ %149, %144 ], [ %154, %150 ], [ 2, %134 ]
  %157 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %107, i32 noundef 0, i64 noundef %156) #10
  br label %158

158:                                              ; preds = %155, %130
  %159 = load ptr, ptr %107, align 8, !tbaa !242
  %160 = getelementptr inbounds %struct.xpv, ptr %159, i64 0, i32 2
  %161 = load i64, ptr %160, align 8, !tbaa !180
  %162 = add i64 %161, 1
  store i64 %162, ptr %160, align 8, !tbaa !180
  %163 = load i32, ptr %102, align 4, !tbaa !315
  %164 = and i32 %163, 1024
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %186, label %166

166:                                              ; preds = %158
  %167 = and i32 %163, 255
  %168 = icmp eq i32 %167, 13
  br i1 %168, label %169, label %182

169:                                              ; preds = %166
  %170 = load ptr, ptr %76, align 8, !tbaa !196
  %171 = getelementptr inbounds %struct.xpvcv, ptr %170, i64 0, i32 12
  %172 = load i32, ptr %171, align 4, !tbaa !200
  %173 = and i32 %172, 8192
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %182, label %175

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.xpv, ptr %170, i64 0, i32 3
  %177 = load i64, ptr %176, align 8, !tbaa !156
  %178 = getelementptr inbounds %struct.xpv, ptr %170, i64 0, i32 2
  %179 = load i64, ptr %178, align 8, !tbaa !180
  %180 = add i64 %177, -2
  %181 = sub i64 %180, %179
  br label %186

182:                                              ; preds = %169, %166
  %183 = load ptr, ptr %76, align 8, !tbaa !196
  %184 = getelementptr inbounds %struct.xpv, ptr %183, i64 0, i32 2
  %185 = load i64, ptr %184, align 8, !tbaa !180
  br label %186

186:                                              ; preds = %158, %175, %182
  %187 = phi i64 [ %181, %175 ], [ %185, %182 ], [ 0, %158 ]
  %188 = lshr i32 %163, 15
  %189 = and i32 %188, 16384
  %190 = xor i32 %189, 16384
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %107, ptr noundef %131, i64 noundef %187, i32 noundef %190) #10
  %191 = getelementptr inbounds %struct.sv, ptr %107, i64 0, i32 2
  %192 = load i32, ptr %191, align 4, !tbaa !148
  %193 = or i32 %192, 524288
  store i32 %193, ptr %191, align 4, !tbaa !148
  call void @Perl_sv_setsv_flags(ptr noundef nonnull %76, ptr noundef nonnull %107, i32 noundef 1536) #10
  %194 = load i32, ptr %191, align 4, !tbaa !148
  %195 = and i32 %194, -524289
  store i32 %195, ptr %191, align 4, !tbaa !148
  %196 = getelementptr inbounds %struct.sv, ptr %107, i64 0, i32 1
  %197 = load i32, ptr %196, align 8, !tbaa !227
  %198 = icmp ugt i32 %197, 1
  br i1 %198, label %199, label %201

199:                                              ; preds = %186
  %200 = add i32 %197, -1
  store i32 %200, ptr %196, align 8, !tbaa !227
  br label %202

201:                                              ; preds = %186
  call void @Perl_sv_free2(ptr noundef nonnull %107, i32 noundef %197) #10
  br label %202

202:                                              ; preds = %199, %201
  %203 = load ptr, ptr %76, align 8, !tbaa !196
  %204 = getelementptr inbounds %struct.xpv, ptr %203, i64 0, i32 2
  %205 = load i64, ptr %204, align 8, !tbaa !180
  %206 = add i64 %205, 1
  %207 = getelementptr inbounds %struct.xpv, ptr %203, i64 0, i32 3
  store i64 %206, ptr %207, align 8, !tbaa !156
  %208 = load ptr, ptr %76, align 8, !tbaa !196
  %209 = getelementptr inbounds %struct.xpv, ptr %208, i64 0, i32 2
  store i64 %161, ptr %209, align 8, !tbaa !180
  br label %217

210:                                              ; preds = %101
  call void @Perl_sv_setpvn(ptr noundef nonnull %76, ptr noundef %1, i64 noundef %2) #10
  %211 = load i32, ptr %102, align 4, !tbaa !315
  %212 = and i32 %211, -17409
  store i32 %212, ptr %102, align 4, !tbaa !315
  br i1 %7, label %215, label %213

213:                                              ; preds = %210
  %214 = or i32 %212, 536870912
  store i32 %214, ptr %102, align 4, !tbaa !315
  br label %217

215:                                              ; preds = %210
  %216 = and i32 %211, -536888321
  store i32 %216, ptr %102, align 4, !tbaa !315
  br label %217

217:                                              ; preds = %213, %215, %202
  %218 = load ptr, ptr %76, align 8, !tbaa !196
  %219 = getelementptr inbounds %struct.xpvcv, ptr %218, i64 0, i32 12
  %220 = load i32, ptr %219, align 4, !tbaa !200
  %221 = or i32 %220, 8192
  store i32 %221, ptr %219, align 4, !tbaa !200
  br label %222

222:                                              ; preds = %217, %95
  %223 = load ptr, ptr %76, align 8, !tbaa !196
  %224 = getelementptr inbounds %struct.xpvcv, ptr %223, i64 0, i32 12
  %225 = load i32, ptr %224, align 4, !tbaa !200
  %226 = and i32 %225, 32768
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %222
  %229 = getelementptr inbounds %struct.xpvcv, ptr %223, i64 0, i32 4
  br label %235

230:                                              ; preds = %222
  %231 = getelementptr inbounds %struct.xpvcv, ptr %223, i64 0, i32 7
  %232 = load ptr, ptr %231, align 8, !tbaa !156
  %233 = load ptr, ptr %232, align 8, !tbaa !160
  %234 = getelementptr inbounds %struct.xpvgv, ptr %233, i64 0, i32 5
  br label %235

235:                                              ; preds = %230, %228
  %236 = phi ptr [ %229, %228 ], [ %234, %230 ]
  %237 = load ptr, ptr %236, align 8, !tbaa !156
  %238 = call ptr @Perl_hv_common_key_len(ptr noundef %237, ptr noundef nonnull @S_autoload, i32 noundef 8, i32 noundef 48, ptr noundef null, i32 noundef 0) #10
  %239 = load ptr, ptr %238, align 8, !tbaa !155
  call void @Perl_push_scope() #10
  %240 = getelementptr inbounds %struct.gv, ptr %239, i64 0, i32 2
  %241 = load i32, ptr %240, align 4, !tbaa !170
  %242 = and i32 %241, 255
  %243 = icmp eq i32 %242, 9
  br i1 %243, label %248, label %244

244:                                              ; preds = %235
  call void @Perl_gv_init_pvn(ptr noundef %239, ptr noundef %237, ptr noundef nonnull @S_autoload, i64 noundef 8, i32 noundef 0)
  %245 = call ptr @Perl_newSV(i64 noundef 0) #10
  %246 = getelementptr inbounds %struct.gv, ptr %239, i64 0, i32 3
  %247 = load ptr, ptr %246, align 8, !tbaa !156
  store ptr %245, ptr %247, align 8, !tbaa !172
  br label %248

248:                                              ; preds = %244, %235
  call void @Perl_pop_scope() #10
  %249 = getelementptr inbounds %struct.gv, ptr %239, i64 0, i32 3
  %250 = load ptr, ptr %249, align 8, !tbaa !156
  %251 = load ptr, ptr %250, align 8, !tbaa !172
  %252 = icmp eq ptr %251, null
  br i1 %252, label %253, label %257

253:                                              ; preds = %248
  %254 = call ptr @Perl_gv_add_by_type(ptr noundef %239, i32 noundef 0)
  %255 = getelementptr inbounds %struct.gv, ptr %239, i64 0, i32 3
  %256 = load ptr, ptr %255, align 8, !tbaa !156
  br label %257

257:                                              ; preds = %248, %253
  %258 = phi ptr [ %256, %253 ], [ %250, %248 ]
  %259 = load ptr, ptr %258, align 8, !tbaa !155
  %260 = load i8, ptr @PL_tainting, align 1, !tbaa !316, !range !318, !noundef !284
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %257
  call void @Perl_sv_untaint(ptr noundef %259) #10
  br label %263

263:                                              ; preds = %257, %262
  call void @Perl_sv_setsv_flags(ptr noundef %259, ptr noundef %67, i32 noundef 1538) #10
  call void @Perl_sv_catpvn_flags(ptr noundef %259, ptr noundef nonnull @.str.19, i64 noundef 2, i32 noundef 2) #10
  %264 = select i1 %7, i32 16512, i32 32896
  call void @Perl_sv_catpvn_flags(ptr noundef %259, ptr noundef %1, i64 noundef %2, i32 noundef %264) #10
  br i1 %7, label %269, label %265

265:                                              ; preds = %263
  %266 = getelementptr inbounds %struct.sv, ptr %259, i64 0, i32 2
  %267 = load i32, ptr %266, align 4, !tbaa !148
  %268 = or i32 %267, 536870912
  store i32 %268, ptr %266, align 4, !tbaa !148
  br label %269

269:                                              ; preds = %9, %263, %265, %72, %66
  %270 = phi ptr [ null, %66 ], [ null, %72 ], [ %70, %265 ], [ %70, %263 ], [ null, %9 ]
  ret ptr %270
}

declare void @Perl_require_pv(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_gv_autoload_sv(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 !prof !206 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %5 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !148
  %7 = and i32 %6, 2098176
  %8 = icmp eq i32 %7, 1024
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 8, !tbaa !242
  %11 = getelementptr inbounds %struct.xpv, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !180
  store i64 %12, ptr %4, align 8, !tbaa !243
  %13 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !156
  br label %17

15:                                               ; preds = %3
  %16 = call ptr @Perl_sv_2pv_flags(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 2) #10
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi ptr [ %14, %9 ], [ %16, %15 ]
  %19 = load i32, ptr %5, align 4, !tbaa !148
  %20 = and i32 %19, 536870912
  %21 = or i32 %20, %2
  %22 = load i64, ptr %4, align 8, !tbaa !243
  %23 = call ptr @Perl_gv_autoload_pvn(ptr noundef %0, ptr noundef %18, i64 noundef %22, i32 noundef %21)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret ptr %23
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_gv_autoload_pv(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 !prof !206 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  %5 = tail call ptr @Perl_gv_autoload_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %4, i32 noundef %2)
  ret ptr %5
}

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSVhek(ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_push_scope() local_unnamed_addr #2

declare void @Perl_pop_scope() local_unnamed_addr #2

declare void @Perl_sv_untaint(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_gv_stashpv(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !319 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  %4 = trunc i64 %3 to i32
  %5 = tail call fastcc ptr @S_gv_stashsvpvn_cached(ptr noundef null, ptr noundef %0, i32 noundef %4, i32 noundef %1)
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @S_gv_stashsvpvn_cached(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !320 !PGOFuncName !321 {
  %5 = alloca [128 x i8], align 16
  %6 = alloca i64, align 8
  %7 = load ptr, ptr @PL_stashcache, align 8, !tbaa !155
  %8 = zext i32 %2 to i64
  %9 = lshr i32 %3, 29
  %10 = and i32 %9, 1
  %11 = tail call ptr @Perl_hv_common(ptr noundef %7, ptr noundef %0, ptr noundef %1, i64 noundef %8, i32 noundef %10, i32 noundef 0, ptr noundef null, i32 noundef 0) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13, !prof !322

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.he, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !156
  %16 = load ptr, ptr %15, align 8, !tbaa !242
  %17 = getelementptr inbounds %struct.xpviv, ptr %16, i64 0, i32 4
  %18 = load i64, ptr %17, align 8, !tbaa !156
  %19 = inttoptr i64 %18 to ptr
  br label %144

20:                                               ; preds = %4
  %21 = and i32 %3, 4096
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %144, !prof !323

23:                                               ; preds = %20
  %24 = icmp eq ptr %0, null
  br i1 %24, label %54, label %25, !prof !324

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !148
  %28 = and i32 %27, 65280
  %29 = icmp ne i32 %28, 0
  %30 = and i32 %27, 255
  %31 = icmp eq i32 %30, 8
  %32 = or i1 %29, %31
  %33 = and i32 %27, 16777471
  %34 = icmp eq i32 %33, 16777226
  %35 = or i1 %34, %32
  br i1 %35, label %36, label %54, !prof !325

36:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  %37 = and i32 %27, 2098176
  %38 = icmp eq i32 %37, 1024
  br i1 %38, label %39, label %45, !prof !325

39:                                               ; preds = %36
  %40 = load ptr, ptr %0, align 8, !tbaa !242
  %41 = getelementptr inbounds %struct.xpv, ptr %40, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !180
  store i64 %42, ptr %6, align 8, !tbaa !243
  %43 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !156
  br label %47

45:                                               ; preds = %36
  %46 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef 34) #10
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi ptr [ %44, %39 ], [ %46, %45 ]
  %49 = load i64, ptr %6, align 8, !tbaa !243
  %50 = trunc i64 %49 to i32
  %51 = load i32, ptr %26, align 4, !tbaa !148
  %52 = and i32 %51, 536870912
  %53 = or i32 %52, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  br label %54

54:                                               ; preds = %25, %47, %23
  %55 = phi i32 [ %53, %47 ], [ %3, %23 ], [ %3, %25 ]
  %56 = phi i32 [ %50, %47 ], [ %2, %23 ], [ 0, %25 ]
  %57 = phi ptr [ %48, %47 ], [ %1, %23 ], [ @.str.7, %25 ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #10
  %58 = add i32 %56, 2
  %59 = zext i32 %58 to i64
  %60 = icmp ult i32 %58, 129
  br i1 %60, label %63, label %61, !prof !326

61:                                               ; preds = %54
  %62 = call ptr @Perl_safesysmalloc(i64 noundef %59) #10
  br label %63

63:                                               ; preds = %61, %54
  %64 = phi ptr [ %62, %61 ], [ %5, %54 ]
  %65 = zext i32 %56 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %64, ptr align 1 %57, i64 %65, i1 false), !prof !327
  %66 = getelementptr inbounds i8, ptr %64, i64 %65
  store i8 58, ptr %66, align 1, !tbaa !156
  %67 = add i32 %56, 1
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, ptr %64, i64 %68
  store i8 58, ptr %69, align 1, !tbaa !156
  %70 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef %64, i64 noundef %59, i32 noundef %55, i32 noundef 12)
  %71 = icmp eq ptr %64, %5
  br i1 %71, label %73, label %72, !prof !326

72:                                               ; preds = %63
  call void @Perl_safesysfree(ptr noundef %64) #10
  br label %73

73:                                               ; preds = %72, %63
  %74 = icmp eq ptr %70, null
  br i1 %74, label %130, label %75, !prof !328

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.gv, ptr %70, i64 0, i32 2
  %77 = load i32, ptr %76, align 4, !tbaa !170
  %78 = and i32 %77, 49152
  %79 = icmp eq i32 %78, 32768
  br i1 %79, label %80, label %130, !prof !329

80:                                               ; preds = %75
  %81 = and i32 %77, 255
  %82 = add nsw i32 %81, -9
  %83 = icmp ult i32 %82, 2
  br i1 %83, label %84, label %130, !prof !329

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.gv, ptr %70, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !156
  %87 = getelementptr inbounds %struct.gp, ptr %86, i64 0, i32 5
  %88 = load ptr, ptr %87, align 8, !tbaa !176
  %89 = and i32 %55, -536874209
  %90 = icmp ne i32 %89, 0
  %91 = icmp ne ptr %88, null
  %92 = select i1 %90, i1 true, i1 %91, !prof !330
  br i1 %92, label %93, label %130, !prof !329

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.hv, ptr %88, i64 0, i32 2
  %95 = load i32, ptr %94, align 4, !tbaa !249
  %96 = and i32 %95, 33554432
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %115, label %98, !prof !331

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.hv, ptr %88, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !156
  %101 = load ptr, ptr %88, align 8, !tbaa !252
  %102 = getelementptr inbounds %struct.xpvhv, ptr %101, i64 0, i32 3
  %103 = load i64, ptr %102, align 8, !tbaa !253
  %104 = getelementptr ptr, ptr %100, i64 %103
  %105 = getelementptr ptr, ptr %104, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !156
  %107 = icmp eq ptr %106, null
  br i1 %107, label %115, label %108, !prof !331

108:                                              ; preds = %98
  %109 = getelementptr i8, ptr %104, i64 36
  %110 = load i32, ptr %109, align 4, !tbaa !255
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %130, label %112, !prof !329

112:                                              ; preds = %108
  %113 = load ptr, ptr %106, align 8, !tbaa !155
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %130

115:                                              ; preds = %112, %98, %93
  %116 = and i32 %55, 536870912
  call void @Perl_hv_name_set(ptr noundef %88, ptr noundef %57, i32 noundef %56, i32 noundef %116) #10
  %117 = load ptr, ptr %70, align 8, !tbaa !160
  %118 = getelementptr inbounds %struct.xpvgv, ptr %117, i64 0, i32 5
  %119 = load ptr, ptr %118, align 8, !tbaa !156
  %120 = getelementptr inbounds %struct.hv, ptr %119, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !156
  %122 = load ptr, ptr %119, align 8, !tbaa !252
  %123 = getelementptr inbounds %struct.xpvhv, ptr %122, i64 0, i32 3
  %124 = load i64, ptr %123, align 8, !tbaa !253
  %125 = getelementptr ptr, ptr %121, i64 %124
  %126 = getelementptr i8, ptr %125, i64 36
  %127 = load i32, ptr %126, align 4, !tbaa !255
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %115
  call void @Perl_mro_package_moved(ptr noundef %88, ptr noundef null, ptr noundef nonnull %70, i32 noundef 1) #10
  br label %130

130:                                              ; preds = %73, %75, %80, %84, %108, %112, %115, %129
  %131 = phi ptr [ null, %80 ], [ null, %75 ], [ null, %73 ], [ null, %84 ], [ %88, %108 ], [ %88, %112 ], [ %88, %115 ], [ %88, %129 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #10
  %132 = icmp ne ptr %131, null
  %133 = icmp ne i32 %56, 0
  %134 = and i1 %133, %132
  br i1 %134, label %135, label %144, !prof !332

135:                                              ; preds = %130
  %136 = ptrtoint ptr %131 to i64
  %137 = call ptr @Perl_newSViv(i64 noundef %136) #10
  %138 = load ptr, ptr @PL_stashcache, align 8, !tbaa !155
  %139 = and i32 %55, 536870912
  %140 = icmp eq i32 %139, 0
  %141 = sub nsw i32 0, %56
  %142 = select i1 %140, i32 %56, i32 %141, !prof !329
  %143 = call ptr @Perl_hv_common_key_len(ptr noundef %138, ptr noundef %57, i32 noundef %142, i32 noundef 36, ptr noundef %137, i32 noundef 0) #10
  br label %144

144:                                              ; preds = %130, %135, %20, %13
  %145 = phi ptr [ %19, %13 ], [ null, %20 ], [ %131, %135 ], [ %131, %130 ]
  ret ptr %145
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_gv_stashsv(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !333 {
  %3 = tail call fastcc ptr @S_gv_stashsvpvn_cached(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef %1)
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_gv_fetchpv(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !334 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  %5 = tail call ptr @Perl_gv_fetchpvn_flags(ptr noundef %0, i64 noundef %4, i32 noundef %1, i32 noundef %2)
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_gv_fetchpvn_flags(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !335 {
  %5 = alloca i64, align 8
  %6 = and i32 %2, 48
  %7 = and i32 %2, 64
  %8 = and i32 %2, -536874209
  %9 = and i32 %2, 536870912
  %10 = and i32 %2, 1024
  %11 = icmp eq i32 %10, 0
  %12 = icmp ne i32 %10, 0
  %13 = getelementptr inbounds i8, ptr %0, i64 %1
  %14 = and i32 %2, 128
  %15 = icmp eq i32 %14, 0
  %16 = icmp ne i64 %1, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %266, !prof !336

18:                                               ; preds = %4
  %19 = getelementptr inbounds i8, ptr %13, i64 -1
  %20 = icmp ugt i64 %1, 2
  br i1 %20, label %21, label %66, !prof !337

21:                                               ; preds = %18
  %22 = load i8, ptr %0, align 1, !tbaa !156
  %23 = icmp eq i8 %22, 42
  br i1 %23, label %24, label %66, !prof !338

24:                                               ; preds = %21
  %25 = load ptr, ptr @PL_curcop, align 8, !tbaa !155
  %26 = getelementptr inbounds %struct.cop, ptr %25, i64 0, i32 10
  %27 = load i32, ptr %26, align 8, !tbaa !339
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  %30 = icmp ne i32 %9, 0
  %31 = and i1 %30, %29
  %32 = getelementptr inbounds i8, ptr %0, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !156
  br i1 %31, label %40, label %34

34:                                               ; preds = %24
  %35 = zext i8 %33 to i64
  %36 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !174
  %38 = and i32 %37, 81920
  %39 = icmp eq i32 %38, 81920
  br i1 %39, label %64, label %66

40:                                               ; preds = %24
  %41 = icmp sgt i8 %33, -1
  br i1 %41, label %42, label %48

42:                                               ; preds = %40
  %43 = zext nneg i8 %33 to i64
  %44 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !174
  %46 = and i32 %45, 65536
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %66, label %64

48:                                               ; preds = %40
  %49 = and i8 %33, -2
  %50 = icmp eq i8 %49, -62
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = shl i8 %33, 6
  %53 = getelementptr inbounds i8, ptr %0, i64 2
  %54 = load i8, ptr %53, align 1, !tbaa !156
  %55 = and i8 %54, 63
  %56 = or disjoint i8 %55, %52
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !174
  %60 = and i32 %59, 65536
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %64

62:                                               ; preds = %48
  %63 = tail call zeroext i1 @Perl__is_utf8_perl_idstart(ptr noundef nonnull %32) #10
  br i1 %63, label %64, label %66

64:                                               ; preds = %51, %42, %62, %34
  %65 = getelementptr inbounds i8, ptr %0, i64 1
  br label %66

66:                                               ; preds = %62, %64, %51, %42, %34, %21, %18
  %67 = phi ptr [ %0, %42 ], [ %65, %64 ], [ %0, %51 ], [ %0, %34 ], [ %0, %21 ], [ %0, %18 ], [ %0, %62 ]
  %68 = icmp ult ptr %67, %13
  br i1 %68, label %69, label %250, !prof !340

69:                                               ; preds = %66, %242
  %70 = phi ptr [ %248, %242 ], [ %67, %66 ]
  %71 = phi ptr [ %246, %242 ], [ null, %66 ]
  %72 = phi i64 [ %245, %242 ], [ undef, %66 ]
  %73 = phi ptr [ %244, %242 ], [ null, %66 ]
  %74 = phi ptr [ %243, %242 ], [ %67, %66 ]
  %75 = icmp ult ptr %70, %19
  br i1 %75, label %76, label %242, !prof !341

76:                                               ; preds = %69
  %77 = load i8, ptr %70, align 1, !tbaa !156
  %78 = icmp eq i8 %77, 58
  br i1 %78, label %79, label %83, !prof !342

79:                                               ; preds = %76
  %80 = getelementptr inbounds i8, ptr %70, i64 1
  %81 = load i8, ptr %80, align 1, !tbaa !156
  %82 = icmp eq i8 %81, 58
  br i1 %82, label %85, label %83, !prof !343

83:                                               ; preds = %79, %76
  %84 = icmp eq i8 %77, 39
  br i1 %84, label %85, label %242, !prof !344

85:                                               ; preds = %83, %79
  %86 = icmp eq ptr %71, null
  %87 = load ptr, ptr @PL_defstash, align 8
  %88 = select i1 %86, ptr %87, ptr %71, !prof !345
  %89 = icmp eq ptr %88, null
  br i1 %89, label %258, label %90, !prof !346

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.hv, ptr %88, i64 0, i32 1
  %92 = load i32, ptr %91, align 8, !tbaa !347
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %258, label %94, !prof !346

94:                                               ; preds = %90
  %95 = ptrtoint ptr %70 to i64
  %96 = ptrtoint ptr %74 to i64
  %97 = sub i64 %95, %96
  %98 = icmp ugt ptr %70, %0
  br i1 %98, label %99, label %226, !prof !348

99:                                               ; preds = %94
  br i1 %78, label %105, label %100, !prof !349

100:                                              ; preds = %99
  %101 = add i64 %97, 2
  %102 = tail call ptr @Perl_safesysmalloc(i64 noundef %101) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %102, ptr align 1 %74, i64 %97, i1 false)
  %103 = getelementptr inbounds i8, ptr %102, i64 %97
  store i8 58, ptr %103, align 1, !tbaa !156
  %104 = getelementptr i8, ptr %103, i64 1
  store i8 58, ptr %104, align 1, !tbaa !156
  br label %105

105:                                              ; preds = %99, %100
  %106 = phi ptr [ %102, %100 ], [ %74, %99 ]
  %107 = icmp eq i32 %9, 0
  %108 = icmp eq i32 %8, 0
  %109 = select i1 %108, i32 32, i32 48
  %110 = add i64 %97, 2
  %111 = trunc i64 %110 to i32
  %112 = sub nsw i32 0, %111
  %113 = select i1 %107, i32 %111, i32 %112, !prof !349
  %114 = tail call ptr @Perl_hv_common_key_len(ptr noundef nonnull %88, ptr noundef %106, i32 noundef %113, i32 noundef %109, ptr noundef null, i32 noundef 0) #10
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116, !prof !350

116:                                              ; preds = %105
  %117 = load ptr, ptr %114, align 8, !tbaa !155
  br label %118

118:                                              ; preds = %116, %105
  %119 = phi ptr [ %117, %116 ], [ null, %105 ]
  %120 = icmp eq ptr %119, null
  %121 = icmp eq ptr %119, @PL_sv_undef
  %122 = or i1 %120, %121
  br i1 %122, label %135, label %123, !prof !350

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.gv, ptr %119, i64 0, i32 2
  %125 = load i32, ptr %124, align 4, !tbaa !170
  %126 = and i32 %125, 255
  %127 = icmp eq i32 %126, 9
  br i1 %127, label %130, label %128, !prof !351

128:                                              ; preds = %123
  %129 = and i32 %2, 536870914
  tail call void @Perl_gv_init_pvn(ptr noundef nonnull %119, ptr noundef nonnull %88, ptr noundef %106, i64 noundef %110, i32 noundef %129)
  br label %135

130:                                              ; preds = %123
  %131 = load ptr, ptr %119, align 8, !tbaa !160
  %132 = getelementptr inbounds %struct.xpvgv, ptr %131, i64 0, i32 2
  %133 = load i64, ptr %132, align 8, !tbaa !192
  %134 = or i64 %133, 2
  store i64 %134, ptr %132, align 8, !tbaa !192
  br label %135

135:                                              ; preds = %130, %128, %118
  %136 = icmp eq ptr %106, %74
  br i1 %136, label %138, label %137, !prof !349

137:                                              ; preds = %135
  tail call void @Perl_safesysfree(ptr noundef %106) #10
  br label %138

138:                                              ; preds = %137, %135
  br i1 %122, label %258, label %139, !prof !350

139:                                              ; preds = %138
  %140 = getelementptr inbounds %struct.gv, ptr %119, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !156
  %142 = getelementptr inbounds %struct.gp, ptr %141, i64 0, i32 5
  %143 = load ptr, ptr %142, align 8, !tbaa !176
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %200, !prof !352

145:                                              ; preds = %139
  %146 = tail call ptr @Perl_newSV_type(i32 noundef 12) #10
  %147 = load ptr, ptr %140, align 8, !tbaa !156
  %148 = getelementptr inbounds %struct.gp, ptr %147, i64 0, i32 5
  store ptr %146, ptr %148, align 8, !tbaa !176
  %149 = getelementptr inbounds %struct.hv, ptr %146, i64 0, i32 2
  %150 = load i32, ptr %149, align 4, !tbaa !249
  %151 = and i32 %150, 33554432
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %170, label %153, !prof !353

153:                                              ; preds = %145
  %154 = getelementptr inbounds %struct.hv, ptr %146, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !156
  %156 = load ptr, ptr %146, align 8, !tbaa !252
  %157 = getelementptr inbounds %struct.xpvhv, ptr %156, i64 0, i32 3
  %158 = load i64, ptr %157, align 8, !tbaa !253
  %159 = getelementptr ptr, ptr %155, i64 %158
  %160 = getelementptr ptr, ptr %159, i64 1
  %161 = load ptr, ptr %160, align 8, !tbaa !156
  %162 = icmp eq ptr %161, null
  br i1 %162, label %170, label %163

163:                                              ; preds = %153
  %164 = getelementptr i8, ptr %159, i64 36
  %165 = load i32, ptr %164, align 4, !tbaa !255
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %226, label %167

167:                                              ; preds = %163
  %168 = load ptr, ptr %161, align 8, !tbaa !155
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %226

170:                                              ; preds = %167, %153, %145
  %171 = load ptr, ptr %119, align 8, !tbaa !160
  %172 = getelementptr inbounds %struct.xpvgv, ptr %171, i64 0, i32 5
  %173 = load ptr, ptr %172, align 8, !tbaa !156
  %174 = load ptr, ptr @PL_defstash, align 8, !tbaa !155
  %175 = icmp eq ptr %173, %174
  %176 = icmp eq i64 %110, 6
  %177 = and i1 %176, %175
  br i1 %177, label %178, label %182, !prof !354

178:                                              ; preds = %170
  %179 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %74, ptr noundef nonnull dereferenceable(5) @.str.48, i64 noundef 4) #11
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %182, !prof !355

181:                                              ; preds = %178
  tail call void @Perl_hv_name_set(ptr noundef %146, ptr noundef nonnull @.str.48, i32 noundef 4, i32 noundef 0) #10
  br label %186

182:                                              ; preds = %178, %170
  %183 = ptrtoint ptr %0 to i64
  %184 = sub i64 %95, %183
  %185 = trunc i64 %184 to i32
  tail call void @Perl_hv_name_set(ptr noundef %146, ptr noundef %0, i32 noundef %185, i32 noundef %9) #10
  br label %186

186:                                              ; preds = %182, %181
  %187 = load ptr, ptr %119, align 8, !tbaa !160
  %188 = getelementptr inbounds %struct.xpvgv, ptr %187, i64 0, i32 5
  %189 = load ptr, ptr %188, align 8, !tbaa !156
  %190 = getelementptr inbounds %struct.hv, ptr %189, i64 0, i32 3
  %191 = load ptr, ptr %190, align 8, !tbaa !156
  %192 = load ptr, ptr %189, align 8, !tbaa !252
  %193 = getelementptr inbounds %struct.xpvhv, ptr %192, i64 0, i32 3
  %194 = load i64, ptr %193, align 8, !tbaa !253
  %195 = getelementptr ptr, ptr %191, i64 %194
  %196 = getelementptr i8, ptr %195, i64 36
  %197 = load i32, ptr %196, align 4, !tbaa !255
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %226, label %199, !prof !353

199:                                              ; preds = %186
  tail call void @Perl_mro_package_moved(ptr noundef %146, ptr noundef null, ptr noundef nonnull %119, i32 noundef 1) #10
  br label %226

200:                                              ; preds = %139
  %201 = getelementptr inbounds %struct.hv, ptr %143, i64 0, i32 2
  %202 = load i32, ptr %201, align 4, !tbaa !249
  %203 = and i32 %202, 33554432
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %222, label %205, !prof !356

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.hv, ptr %143, i64 0, i32 3
  %207 = load ptr, ptr %206, align 8, !tbaa !156
  %208 = load ptr, ptr %143, align 8, !tbaa !252
  %209 = getelementptr inbounds %struct.xpvhv, ptr %208, i64 0, i32 3
  %210 = load i64, ptr %209, align 8, !tbaa !253
  %211 = getelementptr ptr, ptr %207, i64 %210
  %212 = getelementptr ptr, ptr %211, i64 1
  %213 = load ptr, ptr %212, align 8, !tbaa !156
  %214 = icmp eq ptr %213, null
  br i1 %214, label %222, label %215, !prof !356

215:                                              ; preds = %205
  %216 = getelementptr i8, ptr %211, i64 36
  %217 = load i32, ptr %216, align 4, !tbaa !255
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %226, label %219, !prof !357

219:                                              ; preds = %215
  %220 = load ptr, ptr %213, align 8, !tbaa !155
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %226

222:                                              ; preds = %219, %205, %200
  %223 = ptrtoint ptr %0 to i64
  %224 = sub i64 %95, %223
  %225 = trunc i64 %224 to i32
  tail call void @Perl_hv_name_set(ptr noundef nonnull %143, ptr noundef %0, i32 noundef %225, i32 noundef %9) #10
  br label %226

226:                                              ; preds = %222, %219, %215, %199, %186, %167, %163, %94
  %227 = phi ptr [ %119, %186 ], [ %119, %199 ], [ %119, %163 ], [ %119, %167 ], [ %119, %222 ], [ %119, %215 ], [ %119, %219 ], [ %73, %94 ]
  %228 = phi i64 [ %110, %186 ], [ %110, %199 ], [ %110, %163 ], [ %110, %167 ], [ %110, %222 ], [ %110, %215 ], [ %110, %219 ], [ %97, %94 ]
  %229 = phi ptr [ %146, %186 ], [ %146, %199 ], [ %146, %163 ], [ %146, %167 ], [ %143, %222 ], [ %143, %215 ], [ %143, %219 ], [ %88, %94 ]
  %230 = load i8, ptr %70, align 1, !tbaa !156
  %231 = icmp eq i8 %230, 58
  %232 = zext i1 %231 to i64
  %233 = getelementptr inbounds i8, ptr %70, i64 %232
  %234 = getelementptr inbounds i8, ptr %233, i64 1
  %235 = icmp eq ptr %234, %13
  br i1 %235, label %236, label %242, !prof !358

236:                                              ; preds = %226
  %237 = icmp eq ptr %227, null
  br i1 %237, label %238, label %258, !prof !359

238:                                              ; preds = %236
  %239 = load ptr, ptr @PL_defstash, align 8, !tbaa !155
  %240 = tail call ptr @Perl_hv_common(ptr noundef %239, ptr noundef null, ptr noundef nonnull @.str.51, i64 noundef 6, i32 noundef 0, i32 noundef 48, ptr noundef null, i32 noundef 0) #10
  %241 = load ptr, ptr %240, align 8, !tbaa !155
  br label %258

242:                                              ; preds = %226, %83, %69
  %243 = phi ptr [ %234, %226 ], [ %74, %83 ], [ %74, %69 ]
  %244 = phi ptr [ %227, %226 ], [ %73, %83 ], [ %73, %69 ]
  %245 = phi i64 [ %228, %226 ], [ %72, %83 ], [ %72, %69 ]
  %246 = phi ptr [ %229, %226 ], [ %71, %83 ], [ %71, %69 ]
  %247 = phi ptr [ %233, %226 ], [ %70, %83 ], [ %70, %69 ]
  %248 = getelementptr inbounds i8, ptr %247, i64 1
  %249 = icmp ult ptr %248, %13
  br i1 %249, label %69, label %250, !prof !360, !llvm.loop !361

250:                                              ; preds = %242, %66
  %251 = phi ptr [ %67, %66 ], [ %243, %242 ]
  %252 = phi ptr [ null, %66 ], [ %244, %242 ]
  %253 = phi ptr [ null, %66 ], [ %246, %242 ]
  %254 = phi ptr [ %67, %66 ], [ %248, %242 ]
  %255 = ptrtoint ptr %254 to i64
  %256 = ptrtoint ptr %251 to i64
  %257 = sub i64 %255, %256
  br label %258

258:                                              ; preds = %85, %90, %138, %236, %238, %250
  %259 = phi ptr [ %234, %238 ], [ %234, %236 ], [ %251, %250 ], [ %74, %138 ], [ %74, %90 ], [ %74, %85 ]
  %260 = phi ptr [ %241, %238 ], [ %227, %236 ], [ %252, %250 ], [ %73, %85 ], [ %73, %90 ], [ %119, %138 ]
  %261 = phi i64 [ %228, %238 ], [ %228, %236 ], [ %257, %250 ], [ %72, %85 ], [ %72, %90 ], [ %110, %138 ]
  %262 = phi ptr [ %229, %238 ], [ %229, %236 ], [ %253, %250 ], [ %88, %138 ], [ %88, %90 ], [ %88, %85 ]
  %263 = phi i1 [ true, %238 ], [ true, %236 ], [ true, %250 ], [ false, %138 ], [ false, %90 ], [ false, %85 ]
  br i1 %263, label %264, label %1286, !prof !362

264:                                              ; preds = %258
  %265 = icmp eq ptr %259, %13
  br i1 %265, label %1286, label %266, !prof !363

266:                                              ; preds = %4, %264
  %267 = phi ptr [ %259, %264 ], [ %0, %4 ]
  %268 = phi i64 [ %261, %264 ], [ %1, %4 ]
  %269 = phi ptr [ %262, %264 ], [ null, %4 ]
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %560, !prof !364

271:                                              ; preds = %266
  %272 = icmp eq i64 %268, 0
  br i1 %272, label %441, label %273, !prof !365

273:                                              ; preds = %271
  %274 = load ptr, ptr @PL_curcop, align 8, !tbaa !155
  %275 = getelementptr inbounds %struct.cop, ptr %274, i64 0, i32 10
  %276 = load i32, ptr %275, align 8, !tbaa !339
  %277 = and i32 %276, 8
  %278 = icmp eq i32 %277, 0
  %279 = icmp ne i32 %9, 0
  %280 = and i1 %279, %278
  %281 = load i8, ptr %267, align 1, !tbaa !156
  br i1 %280, label %288, label %282, !prof !365

282:                                              ; preds = %273
  %283 = zext i8 %281 to i64
  %284 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %283
  %285 = load i32, ptr %284, align 4, !tbaa !174
  %286 = and i32 %285, 81920
  %287 = icmp eq i32 %286, 81920
  br i1 %287, label %312, label %441, !prof !366

288:                                              ; preds = %273
  %289 = icmp sgt i8 %281, -1
  br i1 %289, label %290, label %296

290:                                              ; preds = %288
  %291 = zext nneg i8 %281 to i64
  %292 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %291
  %293 = load i32, ptr %292, align 4, !tbaa !174
  %294 = and i32 %293, 65536
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %441, label %312

296:                                              ; preds = %288
  %297 = and i8 %281, -2
  %298 = icmp eq i8 %297, -62
  br i1 %298, label %299, label %310

299:                                              ; preds = %296
  %300 = shl i8 %281, 6
  %301 = getelementptr inbounds i8, ptr %267, i64 1
  %302 = load i8, ptr %301, align 1, !tbaa !156
  %303 = and i8 %302, 63
  %304 = or disjoint i8 %303, %300
  %305 = zext i8 %304 to i64
  %306 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %305
  %307 = load i32, ptr %306, align 4, !tbaa !174
  %308 = and i32 %307, 65536
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %441, label %312

310:                                              ; preds = %296
  %311 = tail call zeroext i1 @Perl__is_utf8_perl_idstart(ptr noundef nonnull %267) #10
  br i1 %311, label %312, label %441

312:                                              ; preds = %299, %290, %310, %282
  switch i64 %268, label %438 [
    i64 1, label %313
    i64 3, label %316
    i64 4, label %345
    i64 5, label %360
    i64 6, label %379
    i64 7, label %411
  ], !prof !367

313:                                              ; preds = %312
  %314 = load i8, ptr %267, align 1, !tbaa !156
  %315 = icmp eq i8 %314, 95
  br i1 %315, label %441, label %438, !prof !368

316:                                              ; preds = %312
  %317 = load i8, ptr %267, align 1, !tbaa !156
  switch i8 %317, label %438 [
    i8 73, label %318
    i8 69, label %327
    i8 83, label %337
  ], !prof !369

318:                                              ; preds = %316
  %319 = getelementptr inbounds i8, ptr %267, i64 1
  %320 = load i8, ptr %319, align 1, !tbaa !156
  %321 = icmp eq i8 %320, 78
  br i1 %321, label %322, label %326, !prof !370

322:                                              ; preds = %318
  %323 = getelementptr inbounds i8, ptr %267, i64 2
  %324 = load i8, ptr %323, align 1, !tbaa !156
  %325 = icmp eq i8 %324, 67
  br i1 %325, label %441, label %326, !prof !371

326:                                              ; preds = %322, %318
  switch i8 %317, label %438 [
    i8 69, label %327
    i8 83, label %337
  ], !prof !372

327:                                              ; preds = %316, %326
  %328 = getelementptr inbounds i8, ptr %267, i64 1
  %329 = load i8, ptr %328, align 1, !tbaa !156
  %330 = icmp eq i8 %329, 78
  br i1 %330, label %331, label %335, !prof !373

331:                                              ; preds = %327
  %332 = getelementptr inbounds i8, ptr %267, i64 2
  %333 = load i8, ptr %332, align 1, !tbaa !156
  %334 = icmp eq i8 %333, 86
  br i1 %334, label %441, label %335, !prof !374

335:                                              ; preds = %331, %327
  %336 = icmp eq i8 %317, 83
  br i1 %336, label %337, label %438, !prof !375

337:                                              ; preds = %316, %326, %335
  %338 = getelementptr inbounds i8, ptr %267, i64 1
  %339 = load i8, ptr %338, align 1, !tbaa !156
  %340 = icmp eq i8 %339, 73
  br i1 %340, label %341, label %438, !prof !376

341:                                              ; preds = %337
  %342 = getelementptr inbounds i8, ptr %267, i64 2
  %343 = load i8, ptr %342, align 1, !tbaa !156
  %344 = icmp eq i8 %343, 71
  br i1 %344, label %441, label %438, !prof !377

345:                                              ; preds = %312
  %346 = load i8, ptr %267, align 1, !tbaa !156
  %347 = icmp eq i8 %346, 65
  br i1 %347, label %348, label %438, !prof !378

348:                                              ; preds = %345
  %349 = getelementptr inbounds i8, ptr %267, i64 1
  %350 = load i8, ptr %349, align 1, !tbaa !156
  %351 = icmp eq i8 %350, 82
  br i1 %351, label %352, label %438, !prof !379

352:                                              ; preds = %348
  %353 = getelementptr inbounds i8, ptr %267, i64 2
  %354 = load i8, ptr %353, align 1, !tbaa !156
  %355 = icmp eq i8 %354, 71
  br i1 %355, label %356, label %438, !prof !379

356:                                              ; preds = %352
  %357 = getelementptr inbounds i8, ptr %267, i64 3
  %358 = load i8, ptr %357, align 1, !tbaa !156
  %359 = icmp eq i8 %358, 86
  br i1 %359, label %441, label %438, !prof !379

360:                                              ; preds = %312
  %361 = load i8, ptr %267, align 1, !tbaa !156
  %362 = icmp eq i8 %361, 83
  br i1 %362, label %363, label %438, !prof !380

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %267, i64 1
  %365 = load i8, ptr %364, align 1, !tbaa !156
  %366 = icmp eq i8 %365, 84
  br i1 %366, label %367, label %438, !prof !381

367:                                              ; preds = %363
  %368 = getelementptr inbounds i8, ptr %267, i64 2
  %369 = load i8, ptr %368, align 1, !tbaa !156
  %370 = icmp eq i8 %369, 68
  br i1 %370, label %371, label %438, !prof !382

371:                                              ; preds = %367
  %372 = getelementptr inbounds i8, ptr %267, i64 3
  %373 = load i8, ptr %372, align 1, !tbaa !156
  %374 = icmp eq i8 %373, 73
  br i1 %374, label %375, label %438, !prof !292

375:                                              ; preds = %371
  %376 = getelementptr inbounds i8, ptr %267, i64 4
  %377 = load i8, ptr %376, align 1, !tbaa !156
  %378 = icmp eq i8 %377, 78
  br i1 %378, label %441, label %438, !prof !292

379:                                              ; preds = %312
  %380 = load i8, ptr %267, align 1, !tbaa !156
  %381 = icmp eq i8 %380, 83
  br i1 %381, label %382, label %438, !prof !383

382:                                              ; preds = %379
  %383 = getelementptr inbounds i8, ptr %267, i64 1
  %384 = load i8, ptr %383, align 1, !tbaa !156
  %385 = icmp eq i8 %384, 84
  br i1 %385, label %386, label %438, !prof !384

386:                                              ; preds = %382
  %387 = getelementptr inbounds i8, ptr %267, i64 2
  %388 = load i8, ptr %387, align 1, !tbaa !156
  %389 = icmp eq i8 %388, 68
  br i1 %389, label %390, label %438, !prof !385

390:                                              ; preds = %386
  %391 = getelementptr inbounds i8, ptr %267, i64 3
  %392 = load i8, ptr %391, align 1, !tbaa !156
  switch i8 %392, label %438 [
    i8 79, label %393
    i8 69, label %403
  ], !prof !386

393:                                              ; preds = %390
  %394 = getelementptr inbounds i8, ptr %267, i64 4
  %395 = load i8, ptr %394, align 1, !tbaa !156
  %396 = icmp eq i8 %395, 85
  br i1 %396, label %397, label %401, !prof !387

397:                                              ; preds = %393
  %398 = getelementptr inbounds i8, ptr %267, i64 5
  %399 = load i8, ptr %398, align 1, !tbaa !156
  %400 = icmp eq i8 %399, 84
  br i1 %400, label %441, label %401, !prof !387

401:                                              ; preds = %397, %393
  %402 = icmp eq i8 %392, 69
  br i1 %402, label %403, label %438, !prof !388

403:                                              ; preds = %390, %401
  %404 = getelementptr inbounds i8, ptr %267, i64 4
  %405 = load i8, ptr %404, align 1, !tbaa !156
  %406 = icmp eq i8 %405, 82
  br i1 %406, label %407, label %438, !prof !388

407:                                              ; preds = %403
  %408 = getelementptr inbounds i8, ptr %267, i64 5
  %409 = load i8, ptr %408, align 1, !tbaa !156
  %410 = icmp eq i8 %409, 82
  br i1 %410, label %441, label %438, !prof !388

411:                                              ; preds = %312
  %412 = load i8, ptr %267, align 1, !tbaa !156
  %413 = icmp eq i8 %412, 65
  br i1 %413, label %414, label %438, !prof !389

414:                                              ; preds = %411
  %415 = getelementptr inbounds i8, ptr %267, i64 1
  %416 = load i8, ptr %415, align 1, !tbaa !156
  %417 = icmp eq i8 %416, 82
  br i1 %417, label %418, label %438, !prof !390

418:                                              ; preds = %414
  %419 = getelementptr inbounds i8, ptr %267, i64 2
  %420 = load i8, ptr %419, align 1, !tbaa !156
  %421 = icmp eq i8 %420, 71
  br i1 %421, label %422, label %438

422:                                              ; preds = %418
  %423 = getelementptr inbounds i8, ptr %267, i64 3
  %424 = load i8, ptr %423, align 1, !tbaa !156
  %425 = icmp eq i8 %424, 86
  br i1 %425, label %426, label %438

426:                                              ; preds = %422
  %427 = getelementptr inbounds i8, ptr %267, i64 4
  %428 = load i8, ptr %427, align 1, !tbaa !156
  %429 = icmp eq i8 %428, 79
  br i1 %429, label %430, label %438

430:                                              ; preds = %426
  %431 = getelementptr inbounds i8, ptr %267, i64 5
  %432 = load i8, ptr %431, align 1, !tbaa !156
  %433 = icmp eq i8 %432, 85
  br i1 %433, label %434, label %438

434:                                              ; preds = %430
  %435 = getelementptr inbounds i8, ptr %267, i64 6
  %436 = load i8, ptr %435, align 1, !tbaa !156
  %437 = icmp eq i8 %436, 84
  br i1 %437, label %441, label %438

438:                                              ; preds = %434, %407, %390, %375, %356, %341, %316, %326, %313, %430, %426, %422, %418, %414, %411, %403, %401, %386, %382, %379, %371, %367, %363, %360, %352, %348, %345, %337, %335, %312
  %439 = load ptr, ptr @PL_curcop, align 8, !tbaa !155
  %440 = icmp eq ptr %439, @PL_compiling
  br i1 %440, label %443, label %514, !prof !391

441:                                              ; preds = %310, %434, %407, %397, %375, %356, %341, %331, %322, %313, %299, %290, %282, %271
  %442 = load ptr, ptr @PL_defstash, align 8, !tbaa !155
  br label %517

443:                                              ; preds = %438
  %444 = load ptr, ptr @PL_curstash, align 8, !tbaa !155
  %445 = icmp eq i32 %8, 0
  br i1 %445, label %517, label %446, !prof !392

446:                                              ; preds = %443
  %447 = load i32, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !339
  %448 = freeze i32 %447
  %449 = and i32 %448, 1024
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %517, label %451

451:                                              ; preds = %446
  switch i32 %3, label %452 [
    i32 15, label %517
    i32 14, label %517
    i32 13, label %517
    i32 9, label %517
  ]

452:                                              ; preds = %451
  %453 = icmp eq i64 %268, 1
  %454 = icmp eq i32 %3, 3
  %455 = and i1 %454, %453
  br i1 %455, label %456, label %460, !prof !393

456:                                              ; preds = %452
  %457 = load i8, ptr %267, align 1, !tbaa !156
  %458 = add i8 %457, -97
  %459 = icmp ult i8 %458, 2
  br i1 %459, label %517, label %460

460:                                              ; preds = %456, %452
  %461 = icmp eq i32 %9, 0
  %462 = trunc i64 %268 to i32
  %463 = sub nsw i32 0, %462
  %464 = select i1 %461, i32 %462, i32 %463, !prof !394
  %465 = tail call ptr @Perl_hv_common_key_len(ptr noundef %444, ptr noundef %267, i32 noundef %464, i32 noundef 32, ptr noundef null, i32 noundef 0) #10
  %466 = icmp eq ptr %465, null
  br i1 %466, label %517, label %467, !prof !393

467:                                              ; preds = %460
  %468 = load ptr, ptr %465, align 8, !tbaa !155
  %469 = icmp eq ptr %468, @PL_sv_undef
  br i1 %469, label %517, label %470, !prof !393

470:                                              ; preds = %467
  %471 = getelementptr inbounds %struct.gv, ptr %468, i64 0, i32 2
  %472 = load i32, ptr %471, align 4, !tbaa !170
  %473 = and i32 %472, 255
  %474 = icmp eq i32 %473, 9
  br i1 %474, label %475, label %517, !prof !394

475:                                              ; preds = %470
  br i1 %454, label %476, label %482, !prof !395

476:                                              ; preds = %475
  %477 = load ptr, ptr %468, align 8, !tbaa !160
  %478 = getelementptr inbounds %struct.xpvgv, ptr %477, i64 0, i32 2
  %479 = load i64, ptr %478, align 8, !tbaa !192
  %480 = and i64 %479, 16
  %481 = icmp eq i64 %480, 0
  br i1 %481, label %497, label %482, !prof !396

482:                                              ; preds = %476, %475
  switch i32 %3, label %517 [
    i32 11, label %483
    i32 12, label %491
  ], !prof !397

483:                                              ; preds = %482
  %484 = load ptr, ptr %468, align 8, !tbaa !160
  %485 = getelementptr inbounds %struct.xpvgv, ptr %484, i64 0, i32 2
  %486 = load i64, ptr %485, align 8, !tbaa !192
  %487 = and i64 %486, 32
  %488 = icmp eq i64 %487, 0
  br i1 %488, label %497, label %489, !prof !265

489:                                              ; preds = %483
  %490 = icmp eq i32 %3, 12
  br i1 %490, label %491, label %517, !prof !265

491:                                              ; preds = %489, %482
  %492 = load ptr, ptr %468, align 8, !tbaa !160
  %493 = getelementptr inbounds %struct.xpvgv, ptr %492, i64 0, i32 2
  %494 = load i64, ptr %493, align 8, !tbaa !192
  %495 = and i64 %494, 64
  %496 = icmp eq i64 %495, 0
  br i1 %496, label %497, label %517, !prof !313

497:                                              ; preds = %491, %483, %476
  %498 = icmp eq i32 %3, 11
  %499 = icmp eq i32 %3, 12
  %500 = select i1 %499, i32 37, i32 36
  %501 = select i1 %498, i32 64, i32 %500
  %502 = lshr exact i32 %9, 29
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 12, ptr noundef nonnull @.str.52, i32 noundef %501, i32 noundef %502, i64 noundef %268, ptr noundef %267) #10
  %503 = load ptr, ptr %465, align 8, !tbaa !155
  %504 = getelementptr inbounds %struct.gv, ptr %503, i64 0, i32 3
  %505 = load ptr, ptr %504, align 8, !tbaa !156
  %506 = getelementptr inbounds %struct.gp, ptr %505, i64 0, i32 3
  %507 = load i32, ptr %506, align 8, !tbaa !207
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %509, label %517

509:                                              ; preds = %497
  %510 = getelementptr inbounds %struct.gp, ptr %505, i64 0, i32 2
  %511 = load ptr, ptr %510, align 8, !tbaa !195
  %512 = icmp eq ptr %511, null
  br i1 %512, label %517, label %513

513:                                              ; preds = %509
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 12, ptr noundef nonnull @.str.53, i32 noundef %502, i64 noundef %268, ptr noundef %267) #10
  br label %517

514:                                              ; preds = %438
  %515 = getelementptr inbounds %struct.cop, ptr %439, i64 0, i32 8
  %516 = load ptr, ptr %515, align 8, !tbaa !308
  br label %517

517:                                              ; preds = %451, %451, %451, %451, %446, %491, %489, %497, %509, %513, %460, %467, %470, %514, %482, %456, %443, %441
  %518 = phi ptr [ %442, %441 ], [ %444, %443 ], [ %444, %456 ], [ %444, %482 ], [ %444, %451 ], [ %516, %514 ], [ null, %470 ], [ null, %467 ], [ null, %460 ], [ null, %513 ], [ null, %509 ], [ null, %497 ], [ %444, %489 ], [ %444, %491 ], [ %444, %446 ], [ %444, %451 ], [ %444, %451 ], [ %444, %451 ]
  %519 = icmp eq ptr %518, null
  br i1 %519, label %520, label %552, !prof !365

520:                                              ; preds = %517
  %521 = icmp ne i32 %8, 0
  %522 = load i8, ptr @PL_in_clean_all, align 1, !range !318
  %523 = icmp eq i8 %522, 0
  %524 = select i1 %521, i1 %523, i1 false
  br i1 %524, label %525, label %557

525:                                              ; preds = %520
  %526 = icmp eq i32 %3, 3
  br i1 %526, label %532, label %527

527:                                              ; preds = %525
  %528 = icmp eq i32 %3, 11
  br i1 %528, label %532, label %529

529:                                              ; preds = %527
  %530 = icmp eq i32 %3, 12
  %531 = select i1 %530, ptr @.str.57, ptr @.str.7
  br label %532

532:                                              ; preds = %529, %527, %525
  %533 = phi ptr [ @.str.55, %525 ], [ %531, %529 ], [ @.str.56, %527 ]
  %534 = lshr exact i32 %9, 29
  br i1 %526, label %540, label %535

535:                                              ; preds = %532
  %536 = icmp eq i32 %3, 11
  br i1 %536, label %540, label %537

537:                                              ; preds = %535
  %538 = icmp eq i32 %3, 12
  %539 = select i1 %538, ptr @.str.57, ptr @.str.7
  br label %540

540:                                              ; preds = %537, %535, %532
  %541 = phi ptr [ @.str.55, %532 ], [ %539, %537 ], [ @.str.56, %535 ]
  %542 = tail call ptr (ptr, ...) @Perl_mess(ptr noundef nonnull @.str.54, ptr noundef nonnull %533, i32 noundef %534, i64 noundef %268, ptr noundef %267, ptr noundef nonnull %541, i32 noundef %534, i64 noundef %268, ptr noundef %267) #10
  tail call void @Perl_qerror(ptr noundef %542) #10
  %543 = tail call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.58, i64 noundef 8, i32 noundef 2, i32 noundef 12)
  %544 = icmp eq ptr %543, null
  br i1 %544, label %550, label %545

545:                                              ; preds = %540
  %546 = getelementptr inbounds %struct.gv, ptr %543, i64 0, i32 3
  %547 = load ptr, ptr %546, align 8, !tbaa !156
  %548 = getelementptr inbounds %struct.gp, ptr %547, i64 0, i32 5
  %549 = load ptr, ptr %548, align 8, !tbaa !176
  br label %550

550:                                              ; preds = %545, %540
  %551 = phi ptr [ %518, %540 ], [ %549, %545 ]
  br i1 %544, label %557, label %552

552:                                              ; preds = %550, %517
  %553 = phi ptr [ %551, %550 ], [ %518, %517 ]
  %554 = getelementptr inbounds %struct.hv, ptr %553, i64 0, i32 1
  %555 = load i32, ptr %554, align 8, !tbaa !347
  %556 = icmp ne i32 %555, 0
  br label %557

557:                                              ; preds = %520, %550, %552
  %558 = phi ptr [ %553, %552 ], [ %551, %550 ], [ %518, %520 ]
  %559 = phi i1 [ %556, %552 ], [ false, %550 ], [ false, %520 ]
  br i1 %559, label %560, label %1286, !prof !398

560:                                              ; preds = %557, %266
  %561 = phi ptr [ %558, %557 ], [ %269, %266 ]
  %562 = icmp ne i32 %9, 0
  %563 = trunc i64 %268 to i32
  %564 = sub nsw i32 0, %563
  %565 = select i1 %562, i32 %564, i32 %563, !prof !399
  %566 = icmp eq i32 %8, 0
  %567 = select i1 %566, i32 32, i32 48, !prof !400
  %568 = tail call ptr @Perl_hv_common_key_len(ptr noundef %561, ptr noundef %267, i32 noundef %565, i32 noundef %567, ptr noundef null, i32 noundef 0) #10
  %569 = icmp eq ptr %568, null
  br i1 %569, label %573, label %570, !prof !401

570:                                              ; preds = %560
  %571 = load ptr, ptr %568, align 8, !tbaa !155
  %572 = icmp eq ptr %571, @PL_sv_undef
  br i1 %572, label %573, label %576, !prof !402

573:                                              ; preds = %570, %560
  br i1 %11, label %1286, label %574, !prof !403

574:                                              ; preds = %573
  %575 = tail call ptr @Perl_newSV(i64 noundef 0) #10
  br label %576

576:                                              ; preds = %570, %574
  %577 = phi ptr [ %575, %574 ], [ %571, %570 ]
  %578 = phi i1 [ %12, %574 ], [ false, %570 ]
  %579 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 2
  %580 = load i32, ptr %579, align 4, !tbaa !170
  %581 = and i32 %580, 255
  %582 = icmp eq i32 %581, 9
  br i1 %582, label %583, label %629, !prof !404

583:                                              ; preds = %576
  br i1 %566, label %1286, label %584, !prof !405

584:                                              ; preds = %583
  %585 = load ptr, ptr %577, align 8, !tbaa !160
  %586 = getelementptr inbounds %struct.xpvgv, ptr %585, i64 0, i32 2
  %587 = load i64, ptr %586, align 8, !tbaa !192
  %588 = or i64 %587, 2
  store i64 %588, ptr %586, align 8, !tbaa !192
  tail call fastcc void @S_gv_init_svtype(ptr noundef %577, i32 noundef %3)
  %589 = icmp eq i64 %268, 1
  %590 = load ptr, ptr @PL_defstash, align 8
  %591 = icmp eq ptr %561, %590
  %592 = select i1 %589, i1 %591, i1 false, !prof !406
  br i1 %592, label %593, label %610, !prof !407

593:                                              ; preds = %584
  switch i32 %3, label %1286 [
    i32 12, label %594
    i32 9, label %594
    i32 3, label %600
  ], !prof !408

594:                                              ; preds = %593, %593
  %595 = load i8, ptr %267, align 1, !tbaa !156
  switch i8 %595, label %604 [
    i8 33, label %596
    i8 45, label %598
    i8 43, label %598
  ], !prof !409

596:                                              ; preds = %594
  %597 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.60, i64 noundef 5) #10
  tail call fastcc void @S_require_tie_mod(ptr noundef %577, ptr noundef nonnull @.str.59, ptr noundef %597, ptr noundef nonnull @.str.61, i32 noundef 1)
  br label %604

598:                                              ; preds = %594, %594
  %599 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.62, i64 noundef 23) #10
  tail call fastcc void @S_require_tie_mod(ptr noundef %577, ptr noundef nonnull %267, ptr noundef %599, ptr noundef nonnull @.str.61, i32 noundef 0)
  br label %604

600:                                              ; preds = %593
  %601 = load i8, ptr %267, align 1, !tbaa !156
  switch i8 %601, label %604 [
    i8 42, label %602
    i8 35, label %602
  ], !prof !410

602:                                              ; preds = %600, %600
  %603 = sext i8 %601 to i32
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 7170, ptr noundef nonnull @.str.63, i32 noundef %603) #10
  br label %604

604:                                              ; preds = %594, %602, %600, %598, %596
  switch i32 %3, label %1286 [
    i32 9, label %605
    i32 3, label %605
  ], !prof !411

605:                                              ; preds = %604, %604
  %606 = load i8, ptr %267, align 1, !tbaa !156
  %607 = icmp eq i8 %606, 91
  br i1 %607, label %608, label %1286, !prof !412

608:                                              ; preds = %605
  %609 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.64, i64 noundef 7) #10
  tail call fastcc void @S_require_tie_mod(ptr noundef %577, ptr noundef nonnull %267, ptr noundef %609, ptr noundef nonnull @.str.65, i32 noundef 0)
  br label %1286

610:                                              ; preds = %584
  %611 = icmp eq i64 %268, 3
  %612 = icmp eq i32 %3, 11
  %613 = and i1 %612, %611
  br i1 %613, label %614, label %1286, !prof !413

614:                                              ; preds = %610
  %615 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %267, ptr noundef nonnull dereferenceable(4) @.str.6, i64 noundef 3) #11
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %617, label %1286, !prof !414

617:                                              ; preds = %614
  %618 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %619 = load ptr, ptr %618, align 8, !tbaa !156
  %620 = getelementptr inbounds %struct.gp, ptr %619, i64 0, i32 6
  %621 = load ptr, ptr %620, align 8, !tbaa !175
  %622 = icmp eq ptr %621, null
  br i1 %622, label %628, label %623, !prof !415

623:                                              ; preds = %617
  %624 = getelementptr inbounds %struct.av, ptr %621, i64 0, i32 2
  %625 = load i32, ptr %624, align 4, !tbaa !416
  %626 = and i32 %625, 4194304
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %628, label %1286, !prof !415

628:                                              ; preds = %623, %617
  tail call fastcc void @S_gv_magicalize_isa(ptr noundef %577)
  br label %1286

629:                                              ; preds = %576
  %630 = icmp eq i32 %6, 0
  br i1 %630, label %631, label %1286, !prof !417

631:                                              ; preds = %629
  %632 = icmp eq i32 %7, 0
  %633 = and i32 %580, 2048
  %634 = icmp eq i32 %633, 0
  %635 = or i1 %632, %634
  br i1 %635, label %636, label %1286, !prof !418

636:                                              ; preds = %631
  %637 = and i32 %580, 65280
  %638 = icmp ne i32 %637, 0
  %639 = icmp eq i32 %581, 8
  %640 = or i1 %638, %639
  br i1 %640, label %644, label %641, !prof !419

641:                                              ; preds = %636
  %642 = and i32 %580, 16777471
  %643 = icmp eq i32 %642, 16777226
  br label %644

644:                                              ; preds = %641, %636
  %645 = phi i1 [ true, %636 ], [ %643, %641 ]
  %646 = and i32 %2, 4
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %650, label %648, !prof !420

648:                                              ; preds = %644
  %649 = lshr exact i32 %9, 29
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 24, ptr noundef nonnull @.str.20, i32 noundef %649, i64 noundef %1, ptr noundef %0) #10
  br label %650

650:                                              ; preds = %648, %644
  %651 = and i32 %2, 536870914
  tail call void @Perl_gv_init_pvn(ptr noundef %577, ptr noundef %561, ptr noundef %267, i64 noundef %268, i32 noundef %651)
  %652 = load ptr, ptr @PL_curcop, align 8, !tbaa !155
  %653 = getelementptr inbounds %struct.cop, ptr %652, i64 0, i32 10
  %654 = load i32, ptr %653, align 8, !tbaa !339
  %655 = and i32 %654, 8
  %656 = icmp eq i32 %655, 0
  %657 = and i1 %562, %656
  %658 = load i8, ptr %267, align 1, !tbaa !156
  br i1 %657, label %665, label %659, !prof !421

659:                                              ; preds = %650
  %660 = zext i8 %658 to i64
  %661 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %660
  %662 = load i32, ptr %661, align 4, !tbaa !174
  %663 = and i32 %662, 81920
  %664 = icmp eq i32 %663, 81920
  br i1 %664, label %689, label %696, !prof !422

665:                                              ; preds = %650
  %666 = icmp sgt i8 %658, -1
  br i1 %666, label %667, label %673

667:                                              ; preds = %665
  %668 = zext nneg i8 %658 to i64
  %669 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %668
  %670 = load i32, ptr %669, align 4, !tbaa !174
  %671 = and i32 %670, 65536
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %696, label %689

673:                                              ; preds = %665
  %674 = and i8 %658, -2
  %675 = icmp eq i8 %674, -62
  br i1 %675, label %676, label %687

676:                                              ; preds = %673
  %677 = shl i8 %658, 6
  %678 = getelementptr inbounds i8, ptr %267, i64 1
  %679 = load i8, ptr %678, align 1, !tbaa !156
  %680 = and i8 %679, 63
  %681 = or disjoint i8 %680, %677
  %682 = zext i8 %681 to i64
  %683 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %682
  %684 = load i32, ptr %683, align 4, !tbaa !174
  %685 = and i32 %684, 65536
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %696, label %689

687:                                              ; preds = %673
  %688 = tail call zeroext i1 @Perl__is_utf8_perl_idstart(ptr noundef nonnull %267) #10
  br i1 %688, label %689, label %696

689:                                              ; preds = %676, %667, %687, %659
  %690 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 14) #10
  br i1 %690, label %696, label %691, !prof !423

691:                                              ; preds = %689
  %692 = load ptr, ptr %577, align 8, !tbaa !160
  %693 = getelementptr inbounds %struct.xpvgv, ptr %692, i64 0, i32 2
  %694 = load i64, ptr %693, align 8, !tbaa !192
  %695 = or i64 %694, 2
  store i64 %695, ptr %693, align 8, !tbaa !192
  br label %696

696:                                              ; preds = %689, %687, %676, %667, %691, %659
  br i1 %578, label %697, label %740, !prof !421

697:                                              ; preds = %696
  %698 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %699 = load ptr, ptr %698, align 8, !tbaa !156
  %700 = getelementptr inbounds %struct.gp, ptr %699, i64 0, i32 6
  %701 = load ptr, ptr %700, align 8, !tbaa !175
  %702 = icmp eq ptr %701, null
  br i1 %702, label %703, label %738

703:                                              ; preds = %697
  %704 = getelementptr inbounds %struct.gp, ptr %699, i64 0, i32 5
  %705 = load ptr, ptr %704, align 8, !tbaa !176
  %706 = icmp eq ptr %705, null
  br i1 %706, label %707, label %738

707:                                              ; preds = %703
  %708 = icmp eq ptr %577, null
  br i1 %708, label %720, label %709

709:                                              ; preds = %707
  %710 = load i32, ptr %579, align 4, !tbaa !148
  %711 = and i32 %710, 255
  %712 = add nsw i32 %711, -11
  %713 = icmp ult i32 %712, -2
  %714 = icmp eq ptr %699, null
  %715 = or i1 %714, %713
  br i1 %715, label %720, label %716

716:                                              ; preds = %709
  %717 = getelementptr inbounds %struct.gp, ptr %699, i64 0, i32 1
  %718 = load ptr, ptr %717, align 8, !tbaa !424
  %719 = icmp eq ptr %718, null
  br i1 %719, label %720, label %738

720:                                              ; preds = %716, %709, %707
  %721 = getelementptr inbounds %struct.gp, ptr %699, i64 0, i32 2
  %722 = load ptr, ptr %721, align 8, !tbaa !195
  %723 = icmp eq ptr %722, null
  br i1 %723, label %724, label %738

724:                                              ; preds = %720
  %725 = load ptr, ptr %699, align 8, !tbaa !172
  %726 = icmp eq ptr %725, null
  br i1 %726, label %740, label %727

727:                                              ; preds = %724
  %728 = getelementptr inbounds %struct.sv, ptr %725, i64 0, i32 2
  %729 = load i32, ptr %728, align 4, !tbaa !148
  %730 = and i32 %729, 65280
  %731 = icmp ne i32 %730, 0
  %732 = and i32 %729, 255
  %733 = icmp eq i32 %732, 8
  %734 = or i1 %731, %733
  %735 = and i32 %729, 16777471
  %736 = icmp eq i32 %735, 16777226
  %737 = or i1 %736, %734
  br i1 %737, label %738, label %740

738:                                              ; preds = %727, %720, %716, %703, %697
  %739 = tail call ptr @Perl_hv_common_key_len(ptr noundef %561, ptr noundef nonnull %267, i32 noundef %563, i32 noundef 36, ptr noundef %577, i32 noundef 0) #10
  br label %740

740:                                              ; preds = %727, %738, %724, %696
  %741 = load ptr, ptr @PL_defstash, align 8, !tbaa !155
  %742 = icmp eq ptr %741, %561
  br i1 %742, label %821, label %743, !prof !425

743:                                              ; preds = %740
  %744 = icmp eq i64 %268, 0
  br i1 %744, label %777, label %745, !prof !426

745:                                              ; preds = %743
  %746 = getelementptr inbounds i8, ptr %267, i64 1
  %747 = load i8, ptr %267, align 1, !tbaa !156
  switch i8 %747, label %777 [
    i8 69, label %748
    i8 73, label %756
    i8 86, label %760
    i8 97, label %768
    i8 98, label %768
  ], !prof !427

748:                                              ; preds = %745
  %749 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %746, ptr noundef nonnull dereferenceable(6) @.str.68, i64 noundef 5) #11
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %751, label %1224, !prof !428

751:                                              ; preds = %748
  %752 = load ptr, ptr %577, align 8, !tbaa !160
  %753 = getelementptr inbounds %struct.xpvgv, ptr %752, i64 0, i32 2
  %754 = load i64, ptr %753, align 8, !tbaa !192
  %755 = or i64 %754, 2
  store i64 %755, ptr %753, align 8, !tbaa !192
  br label %1224

756:                                              ; preds = %745
  %757 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %746, ptr noundef nonnull dereferenceable(3) @.str.69) #11
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %759, label %1224, !prof !429

759:                                              ; preds = %756
  tail call fastcc void @S_gv_magicalize_isa(ptr noundef %577)
  br label %1224

760:                                              ; preds = %745
  %761 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %746, ptr noundef nonnull dereferenceable(7) @.str.70) #11
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %763, label %1224, !prof !430

763:                                              ; preds = %760
  %764 = load ptr, ptr %577, align 8, !tbaa !160
  %765 = getelementptr inbounds %struct.xpvgv, ptr %764, i64 0, i32 2
  %766 = load i64, ptr %765, align 8, !tbaa !192
  %767 = or i64 %766, 2
  store i64 %767, ptr %765, align 8, !tbaa !192
  br label %1224

768:                                              ; preds = %745, %745
  %769 = icmp eq i64 %268, 1
  %770 = icmp eq i32 %3, 3
  %771 = and i1 %770, %769
  br i1 %771, label %772, label %777, !prof !431

772:                                              ; preds = %768
  %773 = load ptr, ptr %577, align 8, !tbaa !160
  %774 = getelementptr inbounds %struct.xpvgv, ptr %773, i64 0, i32 2
  %775 = load i64, ptr %774, align 8, !tbaa !192
  %776 = or i64 %775, 2
  store i64 %776, ptr %774, align 8, !tbaa !192
  br label %777

777:                                              ; preds = %745, %772, %768, %743
  %778 = icmp ugt i64 %268, 1
  br i1 %778, label %779, label %1224, !prof !432

779:                                              ; preds = %777
  %780 = getelementptr inbounds %struct.hv, ptr %561, i64 0, i32 2
  %781 = load i32, ptr %780, align 4, !tbaa !249
  %782 = and i32 %781, 33554432
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %1224, label %784, !prof !433

784:                                              ; preds = %779
  %785 = getelementptr inbounds %struct.hv, ptr %561, i64 0, i32 3
  %786 = load ptr, ptr %785, align 8, !tbaa !156
  %787 = load ptr, ptr %561, align 8, !tbaa !252
  %788 = getelementptr inbounds %struct.xpvhv, ptr %787, i64 0, i32 3
  %789 = load i64, ptr %788, align 8, !tbaa !253
  %790 = getelementptr ptr, ptr %786, i64 %789
  %791 = getelementptr ptr, ptr %790, i64 1
  %792 = load ptr, ptr %791, align 8, !tbaa !156
  %793 = icmp eq ptr %792, null
  br i1 %793, label %1224, label %794, !prof !433

794:                                              ; preds = %784
  %795 = getelementptr i8, ptr %790, i64 36
  %796 = load i32, ptr %795, align 4, !tbaa !255
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %803, label %798, !prof !434

798:                                              ; preds = %794
  %799 = load ptr, ptr %792, align 8, !tbaa !155
  %800 = icmp eq ptr %799, null
  br i1 %800, label %1224, label %801

801:                                              ; preds = %798
  br i1 %797, label %803, label %802, !prof !434

802:                                              ; preds = %801
  br label %803

803:                                              ; preds = %794, %802, %801
  %804 = phi ptr [ %792, %802 ], [ %791, %801 ], [ %791, %794 ]
  %805 = load ptr, ptr %804, align 8, !tbaa !156
  %806 = getelementptr inbounds %struct.hek, ptr %805, i64 0, i32 1
  %807 = load i32, ptr %806, align 4, !tbaa !162
  %808 = icmp eq i32 %807, 4
  br i1 %808, label %809, label %1224, !prof !435

809:                                              ; preds = %803
  br i1 %797, label %813, label %810, !prof !436

810:                                              ; preds = %809
  %811 = load ptr, ptr %792, align 8, !tbaa !155
  %812 = icmp ne ptr %811, null
  tail call void @llvm.assume(i1 %812)
  br label %813

813:                                              ; preds = %809, %810
  %814 = phi ptr [ %792, %810 ], [ %791, %809 ]
  %815 = load ptr, ptr %814, align 8, !tbaa !156
  %816 = getelementptr inbounds %struct.hek, ptr %815, i64 0, i32 2
  %817 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %816, ptr noundef nonnull dereferenceable(5) @.str.48, i64 noundef 4) #11
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %819, label %1224, !prof !437

819:                                              ; preds = %813
  %820 = tail call fastcc ptr @S_maybe_add_coresub(ptr noundef null, ptr noundef %577, ptr noundef nonnull %267, i64 noundef %268)
  br label %1224

821:                                              ; preds = %740
  %822 = icmp ugt i64 %268, 1
  %823 = load i8, ptr %267, align 1, !tbaa !156
  br i1 %822, label %824, label %985, !prof !438

824:                                              ; preds = %821
  %825 = icmp sgt i8 %823, 86
  br i1 %825, label %1224, label %826, !prof !439

826:                                              ; preds = %824
  %827 = getelementptr inbounds i8, ptr %267, i64 1
  switch i8 %823, label %981 [
    i8 65, label %828
    i8 69, label %866
    i8 73, label %874
    i8 83, label %878
    i8 86, label %922
    i8 3, label %930
    i8 5, label %933
    i8 7, label %940
    i8 12, label %943
    i8 13, label %946
    i8 15, label %949
    i8 16, label %952
    i8 20, label %958
    i8 21, label %961
    i8 23, label %970
    i8 49, label %973
    i8 50, label %973
    i8 51, label %973
    i8 52, label %973
    i8 53, label %973
    i8 54, label %973
    i8 55, label %973
    i8 56, label %973
    i8 57, label %973
  ], !prof !440

828:                                              ; preds = %826
  %829 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %827, ptr noundef nonnull dereferenceable(4) @.str.71) #11
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %831, label %858, !prof !194

831:                                              ; preds = %828
  %832 = icmp eq ptr %577, null
  br i1 %832, label %846, label %833, !prof !201

833:                                              ; preds = %831
  %834 = load i32, ptr %579, align 4, !tbaa !148
  %835 = and i32 %834, 255
  %836 = add nsw i32 %835, -9
  %837 = icmp ult i32 %836, 2
  br i1 %837, label %838, label %846, !prof !194

838:                                              ; preds = %833
  %839 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %840 = load ptr, ptr %839, align 8, !tbaa !156
  %841 = icmp eq ptr %840, null
  br i1 %841, label %846, label %842, !prof !201

842:                                              ; preds = %838
  %843 = getelementptr inbounds %struct.gp, ptr %840, i64 0, i32 1
  %844 = load ptr, ptr %843, align 8, !tbaa !424
  %845 = icmp eq ptr %844, null
  br i1 %845, label %846, label %852, !prof !194

846:                                              ; preds = %842, %838, %833, %831
  %847 = tail call ptr @Perl_gv_add_by_type(ptr noundef %577, i32 noundef 15)
  %848 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %849 = load ptr, ptr %848, align 8, !tbaa !156
  %850 = getelementptr inbounds %struct.gp, ptr %849, i64 0, i32 1
  %851 = load ptr, ptr %850, align 8, !tbaa !424
  br label %852

852:                                              ; preds = %846, %842
  %853 = phi ptr [ %851, %846 ], [ %844, %842 ]
  %854 = load ptr, ptr %853, align 8, !tbaa !441
  %855 = getelementptr inbounds %struct.xpvio, ptr %854, i64 0, i32 17
  %856 = load i8, ptr %855, align 1, !tbaa !443
  %857 = or i8 %856, 3
  store i8 %857, ptr %855, align 1, !tbaa !443
  br label %981

858:                                              ; preds = %828
  %859 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %827, ptr noundef nonnull dereferenceable(7) @.str.72) #11
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %861, label %981

861:                                              ; preds = %858
  %862 = load ptr, ptr %577, align 8, !tbaa !160
  %863 = getelementptr inbounds %struct.xpvgv, ptr %862, i64 0, i32 2
  %864 = load i64, ptr %863, align 8, !tbaa !192
  %865 = or i64 %864, 2
  store i64 %865, ptr %863, align 8, !tbaa !192
  br label %981

866:                                              ; preds = %826
  %867 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %827, ptr noundef nonnull dereferenceable(6) @.str.68, i64 noundef 5) #11
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %869, label %981, !prof !201

869:                                              ; preds = %866
  %870 = load ptr, ptr %577, align 8, !tbaa !160
  %871 = getelementptr inbounds %struct.xpvgv, ptr %870, i64 0, i32 2
  %872 = load i64, ptr %871, align 8, !tbaa !192
  %873 = or i64 %872, 2
  store i64 %873, ptr %871, align 8, !tbaa !192
  br label %981

874:                                              ; preds = %826
  %875 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %827, ptr noundef nonnull dereferenceable(3) @.str.69) #11
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %877, label %981, !prof !201

877:                                              ; preds = %874
  tail call fastcc void @S_gv_magicalize_isa(ptr noundef %577)
  br label %981

878:                                              ; preds = %826
  %879 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %827, ptr noundef nonnull dereferenceable(3) @.str.73) #11
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %881, label %981, !prof !445

881:                                              ; preds = %878
  %882 = load ptr, ptr @PL_psig_name, align 8, !tbaa !155
  %883 = icmp eq ptr %882, null
  br i1 %883, label %884, label %889, !prof !194

884:                                              ; preds = %881
  %885 = tail call ptr @Perl_safesyscalloc(i64 noundef 32, i64 noundef 8) #10
  store ptr %885, ptr @PL_psig_name, align 8, !tbaa !155
  %886 = tail call ptr @Perl_safesyscalloc(i64 noundef 16, i64 noundef 4) #10
  store ptr %886, ptr @PL_psig_pend, align 8, !tbaa !155
  %887 = load ptr, ptr @PL_psig_name, align 8, !tbaa !155
  %888 = getelementptr inbounds ptr, ptr %887, i64 16
  store ptr %888, ptr @PL_psig_ptr, align 8, !tbaa !155
  br label %891

889:                                              ; preds = %881
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %882, i8 0, i64 256, i1 false)
  %890 = load ptr, ptr @PL_psig_pend, align 8, !tbaa !155
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %890, i8 0, i64 64, i1 false)
  br label %891

891:                                              ; preds = %889, %884
  %892 = load ptr, ptr %577, align 8, !tbaa !160
  %893 = getelementptr inbounds %struct.xpvgv, ptr %892, i64 0, i32 2
  %894 = load i64, ptr %893, align 8, !tbaa !192
  %895 = or i64 %894, 2
  store i64 %895, ptr %893, align 8, !tbaa !192
  %896 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %897 = load ptr, ptr %896, align 8, !tbaa !156
  %898 = getelementptr inbounds %struct.gp, ptr %897, i64 0, i32 5
  %899 = load ptr, ptr %898, align 8, !tbaa !176
  %900 = icmp eq ptr %899, null
  br i1 %900, label %901, label %907, !prof !194

901:                                              ; preds = %891
  %902 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %577, i32 noundef 12)
  %903 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %904 = load ptr, ptr %903, align 8, !tbaa !156
  %905 = getelementptr inbounds %struct.gp, ptr %904, i64 0, i32 5
  %906 = load ptr, ptr %905, align 8, !tbaa !176
  br label %907

907:                                              ; preds = %901, %891
  %908 = phi ptr [ %906, %901 ], [ %899, %891 ]
  tail call void @Perl_sv_magic(ptr noundef %908, ptr noundef null, i32 noundef 83, ptr noundef null, i32 noundef 0) #10
  br label %909

909:                                              ; preds = %907, %919
  %910 = phi i64 [ 1, %907 ], [ %920, %919 ]
  %911 = getelementptr inbounds [0 x ptr], ptr @PL_sig_name, i64 0, i64 %910
  %912 = load ptr, ptr %911, align 8, !tbaa !155
  %913 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %912) #11
  %914 = trunc i64 %913 to i32
  %915 = tail call ptr @Perl_hv_common_key_len(ptr noundef %908, ptr noundef %912, i32 noundef %914, i32 noundef 48, ptr noundef null, i32 noundef 0) #10
  %916 = icmp eq ptr %915, null
  br i1 %916, label %919, label %917, !prof !446

917:                                              ; preds = %909
  %918 = load ptr, ptr %915, align 8, !tbaa !155
  tail call void @Perl_sv_setsv_flags(ptr noundef %918, ptr noundef nonnull @PL_sv_undef, i32 noundef 1538) #10
  br label %919

919:                                              ; preds = %917, %909
  %920 = add nuw nsw i64 %910, 1
  %921 = icmp eq i64 %920, 16
  br i1 %921, label %981, label %909, !prof !447, !llvm.loop !448

922:                                              ; preds = %826
  %923 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %827, ptr noundef nonnull dereferenceable(7) @.str.70) #11
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %925, label %981, !prof !194

925:                                              ; preds = %922
  %926 = load ptr, ptr %577, align 8, !tbaa !160
  %927 = getelementptr inbounds %struct.xpvgv, ptr %926, i64 0, i32 2
  %928 = load i64, ptr %927, align 8, !tbaa !192
  %929 = or i64 %928, 2
  store i64 %929, ptr %927, align 8, !tbaa !192
  br label %981

930:                                              ; preds = %826
  %931 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %827, ptr noundef nonnull dereferenceable(18) @.str.74) #11
  %932 = icmp eq i32 %931, 0
  br i1 %932, label %982, label %981

933:                                              ; preds = %826
  %934 = load i8, ptr %827, align 1, !tbaa !156
  %935 = icmp eq i8 %934, 95
  %936 = getelementptr inbounds i8, ptr %267, i64 2
  %937 = select i1 %935, ptr %936, ptr %827
  %938 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %937, ptr noundef nonnull dereferenceable(8) @.str.75) #11
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %982, label %981

940:                                              ; preds = %826
  %941 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %827, ptr noundef nonnull dereferenceable(12) @.str.76) #11
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %982, label %981

943:                                              ; preds = %826
  %944 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %827, ptr noundef nonnull dereferenceable(7) @.str.77) #11
  %945 = icmp eq i32 %944, 0
  br i1 %945, label %982, label %981

946:                                              ; preds = %826
  %947 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %827, ptr noundef nonnull dereferenceable(5) @.str.78) #11
  %948 = icmp eq i32 %947, 0
  br i1 %948, label %982, label %981

949:                                              ; preds = %826
  %950 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %827, ptr noundef nonnull dereferenceable(4) @.str.79) #11
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %982, label %981

952:                                              ; preds = %826
  %953 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %827, ptr noundef nonnull dereferenceable(8) @.str.80) #11
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %982, label %955

955:                                              ; preds = %952
  %956 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %827, ptr noundef nonnull dereferenceable(9) @.str.81) #11
  %957 = icmp eq i32 %956, 0
  br i1 %957, label %982, label %981

958:                                              ; preds = %826
  %959 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %827, ptr noundef nonnull dereferenceable(5) @.str.82) #11
  %960 = icmp eq i32 %959, 0
  br i1 %960, label %982, label %981, !prof !194

961:                                              ; preds = %826
  %962 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %827, ptr noundef nonnull dereferenceable(7) @.str.83) #11
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %982, label %964

964:                                              ; preds = %961
  %965 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %827, ptr noundef nonnull dereferenceable(10) @.str.84) #11
  %966 = icmp eq i32 %965, 0
  br i1 %966, label %982, label %967

967:                                              ; preds = %964
  %968 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %827, ptr noundef nonnull dereferenceable(9) @.str.85) #11
  %969 = icmp eq i32 %968, 0
  br i1 %969, label %982, label %981

970:                                              ; preds = %826
  %971 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %827, ptr noundef nonnull dereferenceable(12) @.str.86) #11
  %972 = icmp eq i32 %971, 0
  br i1 %972, label %982, label %981, !prof !194

973:                                              ; preds = %826, %826, %826, %826, %826, %826, %826, %826, %826
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %974 = call zeroext i1 @Perl_grok_atoUV(ptr noundef nonnull %267, ptr noundef nonnull %5, ptr noundef null) #10
  %975 = load i64, ptr %5, align 8
  %976 = icmp ult i64 %975, 2147483648
  %977 = select i1 %974, i1 %976, i1 false
  %978 = and i64 %975, 4294967295
  %979 = select i1 %977, i32 10, i32 1
  %980 = select i1 %974, i64 %978, i64 undef
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  br label %982

981:                                              ; preds = %919, %970, %967, %958, %955, %949, %946, %943, %940, %933, %930, %925, %922, %878, %877, %874, %869, %866, %861, %858, %852, %826
  br label %982

982:                                              ; preds = %970, %967, %958, %955, %946, %943, %940, %933, %930, %981, %973, %964, %961, %952, %949
  %983 = phi i32 [ 0, %981 ], [ %979, %973 ], [ 8, %949 ], [ 10, %952 ], [ 9, %961 ], [ 9, %964 ], [ 8, %930 ], [ 8, %933 ], [ 9, %940 ], [ 9, %943 ], [ 10, %946 ], [ 10, %955 ], [ 9, %958 ], [ 8, %967 ], [ 8, %970 ]
  %984 = phi i64 [ undef, %981 ], [ %980, %973 ], [ undef, %949 ], [ -5, %952 ], [ undef, %961 ], [ undef, %964 ], [ undef, %930 ], [ undef, %933 ], [ undef, %940 ], [ undef, %943 ], [ -3, %946 ], [ -4, %955 ], [ undef, %958 ], [ undef, %967 ], [ undef, %970 ]
  switch i32 %983, label %1224 [
    i32 8, label %1135
    i32 10, label %991
    i32 9, label %1120
  ], !prof !449

985:                                              ; preds = %821
  switch i8 %823, label %1224 [
    i8 38, label %991
    i8 96, label %986
    i8 39, label %987
    i8 49, label %988
    i8 50, label %988
    i8 51, label %988
    i8 52, label %988
    i8 53, label %988
    i8 54, label %988
    i8 55, label %988
    i8 56, label %988
    i8 57, label %988
    i8 58, label %1005
    i8 63, label %1135
    i8 33, label %1018
    i8 45, label %1036
    i8 43, label %1036
    i8 42, label %1088
    i8 35, label %1088
    i8 8, label %1092
    i8 91, label %1106
    i8 19, label %1120
    i8 48, label %1135
    i8 94, label %1135
    i8 126, label %1135
    i8 61, label %1135
    i8 37, label %1135
    i8 46, label %1135
    i8 40, label %1135
    i8 41, label %1135
    i8 60, label %1135
    i8 62, label %1135
    i8 92, label %1135
    i8 47, label %1135
    i8 124, label %1135
    i8 36, label %1135
    i8 1, label %1135
    i8 3, label %1135
    i8 4, label %1135
    i8 5, label %1135
    i8 6, label %1135
    i8 9, label %1135
    i8 14, label %1135
    i8 15, label %1135
    i8 16, label %1135
    i8 20, label %1135
    i8 23, label %1135
    i8 12, label %1147
    i8 59, label %1159
    i8 93, label %1171
    i8 22, label %1197
    i8 97, label %1217
    i8 98, label %1217
  ], !prof !450

986:                                              ; preds = %985
  br label %991

987:                                              ; preds = %985
  br label %991

988:                                              ; preds = %985, %985, %985, %985, %985, %985, %985, %985, %985
  %989 = sext i8 %823 to i64
  %990 = add nsw i64 %989, -48
  br label %991

991:                                              ; preds = %985, %988, %987, %986, %982
  %992 = phi i64 [ %984, %982 ], [ %990, %988 ], [ -1, %987 ], [ -2, %986 ], [ 0, %985 ]
  %993 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %994 = load ptr, ptr %993, align 8, !tbaa !156
  %995 = load ptr, ptr %994, align 8, !tbaa !172
  %996 = icmp eq ptr %995, null
  br i1 %996, label %997, label %1001, !prof !451

997:                                              ; preds = %991
  %998 = call ptr @Perl_gv_add_by_type(ptr noundef %577, i32 noundef 0)
  %999 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %1000 = load ptr, ptr %999, align 8, !tbaa !156
  br label %1001

1001:                                             ; preds = %997, %991
  %1002 = phi ptr [ %1000, %997 ], [ %994, %991 ]
  %1003 = load ptr, ptr %1002, align 8, !tbaa !155
  %1004 = trunc i64 %992 to i32
  call void @Perl_sv_magic(ptr noundef %1003, ptr noundef %577, i32 noundef 0, ptr noundef null, i32 noundef %1004) #10
  br label %1224

1005:                                             ; preds = %985
  %1006 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %1007 = load ptr, ptr %1006, align 8, !tbaa !156
  %1008 = load ptr, ptr %1007, align 8, !tbaa !172
  %1009 = icmp eq ptr %1008, null
  br i1 %1009, label %1010, label %1014, !prof !194

1010:                                             ; preds = %1005
  %1011 = tail call ptr @Perl_gv_add_by_type(ptr noundef %577, i32 noundef 0)
  %1012 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %1013 = load ptr, ptr %1012, align 8, !tbaa !156
  br label %1014

1014:                                             ; preds = %1010, %1005
  %1015 = phi ptr [ %1013, %1010 ], [ %1007, %1005 ]
  %1016 = load ptr, ptr %1015, align 8, !tbaa !155
  %1017 = load ptr, ptr @PL_chopset, align 8, !tbaa !155
  tail call void @Perl_sv_setpv(ptr noundef %1016, ptr noundef %1017) #10
  br label %1135

1018:                                             ; preds = %985
  %1019 = load ptr, ptr %577, align 8, !tbaa !160
  %1020 = getelementptr inbounds %struct.xpvgv, ptr %1019, i64 0, i32 2
  %1021 = load i64, ptr %1020, align 8, !tbaa !192
  %1022 = or i64 %1021, 2
  store i64 %1022, ptr %1020, align 8, !tbaa !192
  %1023 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %1024 = load ptr, ptr %1023, align 8, !tbaa !156
  %1025 = load ptr, ptr %1024, align 8, !tbaa !172
  %1026 = icmp eq ptr %1025, null
  br i1 %1026, label %1027, label %1031, !prof !194

1027:                                             ; preds = %1018
  %1028 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %577, i32 noundef 0)
  %1029 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %1030 = load ptr, ptr %1029, align 8, !tbaa !156
  br label %1031

1031:                                             ; preds = %1027, %1018
  %1032 = phi ptr [ %1030, %1027 ], [ %1024, %1018 ]
  %1033 = load ptr, ptr %1032, align 8, !tbaa !155
  tail call void @Perl_sv_magic(ptr noundef %1033, ptr noundef nonnull %577, i32 noundef 0, ptr noundef nonnull %267, i32 noundef %563) #10
  switch i32 %3, label %1224 [
    i32 12, label %1034
    i32 9, label %1034
  ], !prof !452

1034:                                             ; preds = %1031, %1031
  %1035 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.60, i64 noundef 5) #10
  tail call fastcc void @S_require_tie_mod(ptr noundef nonnull %577, ptr noundef nonnull @.str.59, ptr noundef %1035, ptr noundef nonnull @.str.61, i32 noundef 1)
  br label %1281

1036:                                             ; preds = %985, %985
  %1037 = load ptr, ptr %577, align 8, !tbaa !160
  %1038 = getelementptr inbounds %struct.xpvgv, ptr %1037, i64 0, i32 2
  %1039 = load i64, ptr %1038, align 8, !tbaa !192
  %1040 = or i64 %1039, 2
  store i64 %1040, ptr %1038, align 8, !tbaa !192
  %1041 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %1042 = load ptr, ptr %1041, align 8, !tbaa !156
  %1043 = getelementptr inbounds %struct.gp, ptr %1042, i64 0, i32 6
  %1044 = load ptr, ptr %1043, align 8, !tbaa !175
  %1045 = icmp eq ptr %1044, null
  br i1 %1045, label %1046, label %1052, !prof !453

1046:                                             ; preds = %1036
  %1047 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %577, i32 noundef 11)
  %1048 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %1049 = load ptr, ptr %1048, align 8, !tbaa !156
  %1050 = getelementptr inbounds %struct.gp, ptr %1049, i64 0, i32 6
  %1051 = load ptr, ptr %1050, align 8, !tbaa !175
  br label %1052

1052:                                             ; preds = %1046, %1036
  %1053 = phi ptr [ %1051, %1046 ], [ %1044, %1036 ]
  %1054 = load i8, ptr %267, align 1, !tbaa !156
  %1055 = icmp eq i8 %1054, 43
  %1056 = select i1 %1055, ptr %1053, ptr null, !prof !454
  tail call void @Perl_sv_magic(ptr noundef %1053, ptr noundef %1056, i32 noundef 68, ptr noundef null, i32 noundef 0) #10
  %1057 = load ptr, ptr %1041, align 8, !tbaa !156
  %1058 = load ptr, ptr %1057, align 8, !tbaa !172
  %1059 = icmp eq ptr %1058, null
  br i1 %1059, label %1060, label %1064, !prof !453

1060:                                             ; preds = %1052
  %1061 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %577, i32 noundef 0)
  %1062 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %1063 = load ptr, ptr %1062, align 8, !tbaa !156
  br label %1064

1064:                                             ; preds = %1060, %1052
  %1065 = phi ptr [ %1063, %1060 ], [ %1057, %1052 ]
  %1066 = load ptr, ptr %1065, align 8, !tbaa !155
  tail call void @Perl_sv_magic(ptr noundef %1066, ptr noundef nonnull %577, i32 noundef 0, ptr noundef nonnull %267, i32 noundef %563) #10
  %1067 = icmp eq ptr %1056, null
  br i1 %1067, label %1082, label %1068, !prof !454

1068:                                             ; preds = %1064
  %1069 = load ptr, ptr %1041, align 8, !tbaa !156
  %1070 = load ptr, ptr %1069, align 8, !tbaa !172
  %1071 = icmp eq ptr %1070, null
  br i1 %1071, label %1072, label %1076, !prof !201

1072:                                             ; preds = %1068
  %1073 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %577, i32 noundef 0)
  %1074 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %1075 = load ptr, ptr %1074, align 8, !tbaa !156
  br label %1076

1076:                                             ; preds = %1072, %1068
  %1077 = phi ptr [ %1075, %1072 ], [ %1069, %1068 ]
  %1078 = load ptr, ptr %1077, align 8, !tbaa !155
  %1079 = getelementptr inbounds %struct.sv, ptr %1078, i64 0, i32 2
  %1080 = load i32, ptr %1079, align 4, !tbaa !148
  %1081 = or i32 %1080, 134217728
  store i32 %1081, ptr %1079, align 4, !tbaa !148
  br label %1082

1082:                                             ; preds = %1076, %1064
  %1083 = getelementptr inbounds %struct.av, ptr %1053, i64 0, i32 2
  %1084 = load i32, ptr %1083, align 4, !tbaa !416
  %1085 = or i32 %1084, 134217728
  store i32 %1085, ptr %1083, align 4, !tbaa !416
  switch i32 %3, label %1224 [
    i32 12, label %1086
    i32 9, label %1086
  ], !prof !455

1086:                                             ; preds = %1082, %1082
  %1087 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.62, i64 noundef 23) #10
  tail call fastcc void @S_require_tie_mod(ptr noundef nonnull %577, ptr noundef nonnull %267, ptr noundef %1087, ptr noundef nonnull @.str.61, i32 noundef 0)
  br label %1281

1088:                                             ; preds = %985, %985
  %1089 = icmp eq i32 %3, 3
  br i1 %1089, label %1090, label %1224

1090:                                             ; preds = %1088
  %1091 = sext i8 %823 to i32
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 7170, ptr noundef nonnull @.str.63, i32 noundef %1091) #10
  br label %1224

1092:                                             ; preds = %985
  %1093 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %1094 = load ptr, ptr %1093, align 8, !tbaa !156
  %1095 = getelementptr inbounds %struct.gp, ptr %1094, i64 0, i32 5
  %1096 = load ptr, ptr %1095, align 8, !tbaa !176
  %1097 = icmp eq ptr %1096, null
  br i1 %1097, label %1098, label %1104, !prof !194

1098:                                             ; preds = %1092
  %1099 = tail call ptr @Perl_gv_add_by_type(ptr noundef %577, i32 noundef 12)
  %1100 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %1101 = load ptr, ptr %1100, align 8, !tbaa !156
  %1102 = getelementptr inbounds %struct.gp, ptr %1101, i64 0, i32 5
  %1103 = load ptr, ptr %1102, align 8, !tbaa !176
  br label %1104

1104:                                             ; preds = %1098, %1092
  %1105 = phi ptr [ %1103, %1098 ], [ %1096, %1092 ]
  tail call void @Perl_sv_magic(ptr noundef %1105, ptr noundef null, i32 noundef 72, ptr noundef null, i32 noundef 0) #10
  br label %1135

1106:                                             ; preds = %985
  switch i32 %3, label %1135 [
    i32 9, label %1107
    i32 3, label %1107
  ], !prof !456

1107:                                             ; preds = %1106, %1106
  %1108 = load ptr, ptr @PL_curcop, align 8, !tbaa !155
  %1109 = getelementptr %struct.cop, ptr %1108, i64 0, i32 10
  %1110 = load i32, ptr %1109, align 8, !tbaa !339
  %1111 = and i32 %1110, 469762048
  %1112 = icmp ult i32 %1111, 201326592
  br i1 %1112, label %1118, label %1113, !prof !194

1113:                                             ; preds = %1107
  %1114 = and i32 %1110, 469893120
  %1115 = icmp eq i32 %1114, 469893120
  br i1 %1115, label %1116, label %1135

1116:                                             ; preds = %1113
  %1117 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.64, i64 noundef 7) #10
  br i1 %1117, label %1118, label %1135

1118:                                             ; preds = %1116, %1107
  %1119 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.64, i64 noundef 7) #10
  tail call fastcc void @S_require_tie_mod(ptr noundef %577, ptr noundef nonnull %267, ptr noundef %1119, ptr noundef nonnull @.str.65, i32 noundef 0)
  br label %1281

1120:                                             ; preds = %985, %982
  %1121 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %1122 = load ptr, ptr %1121, align 8, !tbaa !156
  %1123 = load ptr, ptr %1122, align 8, !tbaa !172
  %1124 = icmp eq ptr %1123, null
  br i1 %1124, label %1125, label %1129, !prof !194

1125:                                             ; preds = %1120
  %1126 = call ptr @Perl_gv_add_by_type(ptr noundef %577, i32 noundef 0)
  %1127 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %1128 = load ptr, ptr %1127, align 8, !tbaa !156
  br label %1129

1129:                                             ; preds = %1125, %1120
  %1130 = phi ptr [ %1128, %1125 ], [ %1122, %1120 ]
  %1131 = load ptr, ptr %1130, align 8, !tbaa !155
  %1132 = getelementptr inbounds %struct.sv, ptr %1131, i64 0, i32 2
  %1133 = load i32, ptr %1132, align 4, !tbaa !148
  %1134 = or i32 %1133, 134217728
  store i32 %1134, ptr %1132, align 4, !tbaa !148
  br label %1135

1135:                                             ; preds = %1116, %985, %985, %985, %985, %985, %985, %985, %985, %985, %985, %985, %985, %985, %985, %985, %985, %985, %985, %985, %985, %985, %985, %985, %985, %985, %1129, %1113, %1106, %1104, %1014, %985, %982
  %1136 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %1137 = load ptr, ptr %1136, align 8, !tbaa !156
  %1138 = load ptr, ptr %1137, align 8, !tbaa !172
  %1139 = icmp eq ptr %1138, null
  br i1 %1139, label %1140, label %1144, !prof !165

1140:                                             ; preds = %1135
  %1141 = call ptr @Perl_gv_add_by_type(ptr noundef %577, i32 noundef 0)
  %1142 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %1143 = load ptr, ptr %1142, align 8, !tbaa !156
  br label %1144

1144:                                             ; preds = %1140, %1135
  %1145 = phi ptr [ %1143, %1140 ], [ %1137, %1135 ]
  %1146 = load ptr, ptr %1145, align 8, !tbaa !155
  call void @Perl_sv_magic(ptr noundef %1146, ptr noundef %577, i32 noundef 0, ptr noundef nonnull %267, i32 noundef %563) #10
  br label %1224

1147:                                             ; preds = %985
  %1148 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %1149 = load ptr, ptr %1148, align 8, !tbaa !156
  %1150 = load ptr, ptr %1149, align 8, !tbaa !172
  %1151 = icmp eq ptr %1150, null
  br i1 %1151, label %1152, label %1156, !prof !194

1152:                                             ; preds = %1147
  %1153 = tail call ptr @Perl_gv_add_by_type(ptr noundef %577, i32 noundef 0)
  %1154 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %1155 = load ptr, ptr %1154, align 8, !tbaa !156
  br label %1156

1156:                                             ; preds = %1152, %1147
  %1157 = phi ptr [ %1155, %1152 ], [ %1149, %1147 ]
  %1158 = load ptr, ptr %1157, align 8, !tbaa !155
  tail call void @Perl_sv_setpvn(ptr noundef %1158, ptr noundef nonnull @.str.87, i64 noundef 1) #10
  br label %1224

1159:                                             ; preds = %985
  %1160 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %1161 = load ptr, ptr %1160, align 8, !tbaa !156
  %1162 = load ptr, ptr %1161, align 8, !tbaa !172
  %1163 = icmp eq ptr %1162, null
  br i1 %1163, label %1164, label %1168

1164:                                             ; preds = %1159
  %1165 = tail call ptr @Perl_gv_add_by_type(ptr noundef %577, i32 noundef 0)
  %1166 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %1167 = load ptr, ptr %1166, align 8, !tbaa !156
  br label %1168

1168:                                             ; preds = %1164, %1159
  %1169 = phi ptr [ %1167, %1164 ], [ %1161, %1159 ]
  %1170 = load ptr, ptr %1169, align 8, !tbaa !155
  tail call void @Perl_sv_setpvn(ptr noundef %1170, ptr noundef nonnull @.str.88, i64 noundef 1) #10
  br label %1224

1171:                                             ; preds = %985
  %1172 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %1173 = load ptr, ptr %1172, align 8, !tbaa !156
  %1174 = load ptr, ptr %1173, align 8, !tbaa !172
  %1175 = load ptr, ptr @PL_patchlevel, align 8, !tbaa !155
  %1176 = tail call zeroext i1 @Perl_sv_derived_from(ptr noundef %1175, ptr noundef nonnull @.str.89) #10
  br i1 %1176, label %1180, label %1177, !prof !194

1177:                                             ; preds = %1171
  %1178 = load ptr, ptr @PL_patchlevel, align 8, !tbaa !155
  %1179 = tail call ptr @Perl_upg_version(ptr noundef %1178, i1 noundef zeroext true) #10
  br label %1180

1180:                                             ; preds = %1177, %1171
  %1181 = load ptr, ptr @PL_patchlevel, align 8, !tbaa !155
  %1182 = tail call ptr @Perl_vnumify(ptr noundef %1181) #10
  %1183 = load ptr, ptr %1172, align 8, !tbaa !156
  store ptr %1182, ptr %1183, align 8, !tbaa !172
  %1184 = load ptr, ptr %1172, align 8, !tbaa !156
  %1185 = load ptr, ptr %1184, align 8, !tbaa !172
  %1186 = getelementptr inbounds %struct.sv, ptr %1185, i64 0, i32 2
  %1187 = load i32, ptr %1186, align 4, !tbaa !148
  %1188 = or i32 %1187, 134217728
  store i32 %1188, ptr %1186, align 4, !tbaa !148
  %1189 = icmp eq ptr %1174, null
  br i1 %1189, label %1224, label %1190, !prof !194

1190:                                             ; preds = %1180
  %1191 = getelementptr inbounds %struct.sv, ptr %1174, i64 0, i32 1
  %1192 = load i32, ptr %1191, align 8, !tbaa !227
  %1193 = icmp ugt i32 %1192, 1
  br i1 %1193, label %1194, label %1196

1194:                                             ; preds = %1190
  %1195 = add i32 %1192, -1
  store i32 %1195, ptr %1191, align 8, !tbaa !227
  br label %1224

1196:                                             ; preds = %1190
  tail call void @Perl_sv_free2(ptr noundef nonnull %1174, i32 noundef %1192) #10
  br label %1224

1197:                                             ; preds = %985
  %1198 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %1199 = load ptr, ptr %1198, align 8, !tbaa !156
  %1200 = load ptr, ptr %1199, align 8, !tbaa !172
  %1201 = load ptr, ptr @PL_patchlevel, align 8, !tbaa !155
  %1202 = tail call ptr @Perl_new_version(ptr noundef %1201) #10
  %1203 = load ptr, ptr %1198, align 8, !tbaa !156
  store ptr %1202, ptr %1203, align 8, !tbaa !172
  %1204 = load ptr, ptr %1198, align 8, !tbaa !156
  %1205 = load ptr, ptr %1204, align 8, !tbaa !172
  %1206 = getelementptr inbounds %struct.sv, ptr %1205, i64 0, i32 2
  %1207 = load i32, ptr %1206, align 4, !tbaa !148
  %1208 = or i32 %1207, 134217728
  store i32 %1208, ptr %1206, align 4, !tbaa !148
  %1209 = icmp eq ptr %1200, null
  br i1 %1209, label %1224, label %1210, !prof !194

1210:                                             ; preds = %1197
  %1211 = getelementptr inbounds %struct.sv, ptr %1200, i64 0, i32 1
  %1212 = load i32, ptr %1211, align 8, !tbaa !227
  %1213 = icmp ugt i32 %1212, 1
  br i1 %1213, label %1214, label %1216

1214:                                             ; preds = %1210
  %1215 = add i32 %1212, -1
  store i32 %1215, ptr %1211, align 8, !tbaa !227
  br label %1224

1216:                                             ; preds = %1210
  tail call void @Perl_sv_free2(ptr noundef nonnull %1200, i32 noundef %1212) #10
  br label %1224

1217:                                             ; preds = %985, %985
  %1218 = icmp eq i32 %3, 3
  br i1 %1218, label %1219, label %1224, !prof !453

1219:                                             ; preds = %1217
  %1220 = load ptr, ptr %577, align 8, !tbaa !160
  %1221 = getelementptr inbounds %struct.xpvgv, ptr %1220, i64 0, i32 2
  %1222 = load i64, ptr %1221, align 8, !tbaa !192
  %1223 = or i64 %1222, 2
  store i64 %1223, ptr %1221, align 8, !tbaa !192
  br label %1224

1224:                                             ; preds = %1217, %1088, %1082, %985, %798, %1216, %1214, %1197, %1196, %1194, %1180, %748, %751, %756, %759, %760, %763, %777, %779, %784, %803, %813, %819, %824, %982, %1001, %1031, %1090, %1144, %1156, %1168, %1219
  br i1 %578, label %1225, label %1281, !prof !457

1225:                                             ; preds = %1224
  %1226 = getelementptr inbounds %struct.gv, ptr %577, i64 0, i32 3
  %1227 = load ptr, ptr %1226, align 8, !tbaa !156
  %1228 = getelementptr inbounds %struct.gp, ptr %1227, i64 0, i32 6
  %1229 = load ptr, ptr %1228, align 8, !tbaa !175
  %1230 = icmp eq ptr %1229, null
  br i1 %1230, label %1231, label %1281

1231:                                             ; preds = %1225
  %1232 = getelementptr inbounds %struct.gp, ptr %1227, i64 0, i32 5
  %1233 = load ptr, ptr %1232, align 8, !tbaa !176
  %1234 = icmp eq ptr %1233, null
  br i1 %1234, label %1235, label %1281

1235:                                             ; preds = %1231
  %1236 = icmp eq ptr %577, null
  br i1 %1236, label %1248, label %1237

1237:                                             ; preds = %1235
  %1238 = load i32, ptr %579, align 4, !tbaa !148
  %1239 = and i32 %1238, 255
  %1240 = add nsw i32 %1239, -11
  %1241 = icmp ult i32 %1240, -2
  %1242 = icmp eq ptr %1227, null
  %1243 = or i1 %1242, %1241
  br i1 %1243, label %1248, label %1244

1244:                                             ; preds = %1237
  %1245 = getelementptr inbounds %struct.gp, ptr %1227, i64 0, i32 1
  %1246 = load ptr, ptr %1245, align 8, !tbaa !424
  %1247 = icmp eq ptr %1246, null
  br i1 %1247, label %1248, label %1281

1248:                                             ; preds = %1244, %1237, %1235
  %1249 = getelementptr inbounds %struct.gp, ptr %1227, i64 0, i32 2
  %1250 = load ptr, ptr %1249, align 8, !tbaa !195
  %1251 = icmp eq ptr %1250, null
  br i1 %1251, label %1252, label %1281

1252:                                             ; preds = %1248
  %1253 = load ptr, ptr %1227, align 8, !tbaa !172
  %1254 = icmp eq ptr %1253, null
  br i1 %1254, label %1274, label %1255

1255:                                             ; preds = %1252
  %1256 = getelementptr inbounds %struct.sv, ptr %1253, i64 0, i32 2
  %1257 = load i32, ptr %1256, align 4, !tbaa !148
  %1258 = and i32 %1257, 65280
  %1259 = icmp ne i32 %1258, 0
  %1260 = and i32 %1257, 255
  %1261 = icmp eq i32 %1260, 8
  %1262 = or i1 %1259, %1261
  %1263 = and i32 %1257, 16777471
  %1264 = icmp eq i32 %1263, 16777226
  %1265 = or i1 %1264, %1262
  br i1 %1265, label %1281, label %1266

1266:                                             ; preds = %1255
  br i1 %1254, label %1274, label %1267

1267:                                             ; preds = %1266
  %1268 = getelementptr inbounds %struct.sv, ptr %1253, i64 0, i32 2
  %1269 = load i32, ptr %1268, align 4, !tbaa !148
  %1270 = and i32 %1269, 14680064
  %1271 = icmp eq i32 %1270, 0
  br i1 %1271, label %1274, label %1272

1272:                                             ; preds = %1267
  %1273 = call ptr @Perl_hv_common_key_len(ptr noundef %561, ptr noundef nonnull %267, i32 noundef %563, i32 noundef 36, ptr noundef %577, i32 noundef 0) #10
  br label %1281

1274:                                             ; preds = %1252, %1267, %1266
  %1275 = getelementptr inbounds %struct.sv, ptr %577, i64 0, i32 1
  %1276 = load i32, ptr %1275, align 8, !tbaa !227
  %1277 = icmp ugt i32 %1276, 1
  br i1 %1277, label %1278, label %1280

1278:                                             ; preds = %1274
  %1279 = add i32 %1276, -1
  store i32 %1279, ptr %1275, align 8, !tbaa !227
  br label %1281

1280:                                             ; preds = %1274
  call void @Perl_sv_free2(ptr noundef %577, i32 noundef %1276) #10
  br label %1281

1281:                                             ; preds = %1118, %1034, %1086, %1280, %1278, %1225, %1231, %1244, %1248, %1255, %1272, %1224
  %1282 = phi ptr [ %577, %1272 ], [ %577, %1255 ], [ %577, %1248 ], [ %577, %1244 ], [ %577, %1231 ], [ %577, %1225 ], [ %577, %1224 ], [ null, %1278 ], [ null, %1280 ], [ %577, %1086 ], [ %577, %1034 ], [ %577, %1118 ]
  %1283 = icmp eq ptr %1282, null
  br i1 %1283, label %1286, label %1284, !prof !421

1284:                                             ; preds = %1281
  %1285 = select i1 %645, i32 13, i32 %3, !prof !419
  call fastcc void @S_gv_init_svtype(ptr noundef nonnull %1282, i32 noundef %1285)
  br label %1286

1286:                                             ; preds = %605, %557, %264, %1281, %1284, %583, %610, %614, %623, %628, %593, %604, %608, %631, %629, %573, %258
  %1287 = phi ptr [ null, %258 ], [ null, %573 ], [ %577, %629 ], [ %577, %631 ], [ %577, %608 ], [ %577, %604 ], [ %577, %593 ], [ %577, %628 ], [ %577, %623 ], [ %577, %614 ], [ %577, %610 ], [ %577, %583 ], [ %1282, %1284 ], [ %1282, %1281 ], [ %260, %264 ], [ null, %557 ], [ %577, %605 ]
  ret ptr %1287
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_gv_fetchsv(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !458 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %5 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !148
  %7 = and i32 %6, 2098176
  %8 = icmp eq i32 %7, 1024
  br i1 %8, label %9, label %15, !prof !459

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !242
  %11 = getelementptr inbounds %struct.xpv, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !180
  store i64 %12, ptr %4, align 8, !tbaa !243
  %13 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !156
  br label %20

15:                                               ; preds = %3
  %16 = and i32 %1, 2048
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 34, i32 0
  %19 = call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %18) #10
  br label %20

20:                                               ; preds = %15, %9
  %21 = phi ptr [ %14, %9 ], [ %19, %15 ]
  %22 = load i64, ptr %4, align 8, !tbaa !243
  %23 = load i32, ptr %5, align 4, !tbaa !148
  %24 = and i32 %23, 536870912
  %25 = or i32 %24, %1
  %26 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef %21, i64 noundef %22, i32 noundef %25, i32 noundef %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret ptr %26
}

; Function Attrs: nounwind uwtable
define internal fastcc void @S_gv_init_svtype(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !460 !PGOFuncName !461 {
  switch i32 %1, label %51 [
    i32 15, label %3
    i32 11, label %21
    i32 12, label %29
    i32 0, label %71
    i32 13, label %71
    i32 14, label %71
    i32 9, label %71
  ], !prof !462

3:                                                ; preds = %2
  %4 = icmp eq ptr %0, null
  br i1 %4, label %19, label %5, !prof !463

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !148
  %8 = and i32 %7, 255
  %9 = add nsw i32 %8, -9
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %19, !prof !464

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !156
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15, !prof !463

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gp, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !424
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %71, !prof !465

19:                                               ; preds = %5, %3, %11, %15
  %20 = tail call ptr @Perl_gv_add_by_type(ptr noundef %0, i32 noundef 15)
  br label %71

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !156
  %24 = getelementptr inbounds %struct.gp, ptr %23, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !175
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %71, !prof !466

27:                                               ; preds = %21
  %28 = tail call ptr @Perl_gv_add_by_type(ptr noundef %0, i32 noundef 11)
  br label %71

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !156
  %32 = getelementptr inbounds %struct.gp, ptr %31, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !176
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %71, !prof !467

35:                                               ; preds = %29
  %36 = icmp eq ptr %0, null
  br i1 %36, label %43, label %37, !prof !147

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !148
  %40 = and i32 %39, 255
  %41 = add nsw i32 %40, -9
  %42 = icmp ult i32 %41, 2
  br i1 %42, label %44, label %43, !prof !154

43:                                               ; preds = %37, %35
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2) #10
  br label %44

44:                                               ; preds = %43, %37
  %45 = load ptr, ptr %30, align 8, !tbaa !156
  %46 = getelementptr inbounds %struct.gp, ptr %45, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !155
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %71, !prof !158

49:                                               ; preds = %44
  %50 = tail call ptr @Perl_newSV_type(i32 noundef 12) #10
  store ptr %50, ptr %46, align 8, !tbaa !155
  br label %71

51:                                               ; preds = %2
  %52 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !156
  %54 = load ptr, ptr %53, align 8, !tbaa !172
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %71, !prof !468

56:                                               ; preds = %51
  %57 = icmp eq ptr %0, null
  br i1 %57, label %64, label %58, !prof !147

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !148
  %61 = and i32 %60, 255
  %62 = add nsw i32 %61, -9
  %63 = icmp ult i32 %62, 2
  br i1 %63, label %65, label %64, !prof !154

64:                                               ; preds = %58, %56
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #10
  br label %65

65:                                               ; preds = %64, %58
  %66 = load ptr, ptr %52, align 8, !tbaa !156
  %67 = load ptr, ptr %66, align 8, !tbaa !155
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71, !prof !158

69:                                               ; preds = %65
  %70 = tail call ptr @Perl_newSV_type(i32 noundef 0) #10
  store ptr %70, ptr %66, align 8, !tbaa !155
  br label %71

71:                                               ; preds = %69, %65, %49, %44, %2, %2, %2, %51, %29, %21, %15, %2, %27, %19
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @S_gv_magicalize_isa(ptr noundef %0) unnamed_addr #5 !prof !469 !PGOFuncName !470 {
  %2 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !156
  %4 = getelementptr inbounds %struct.gp, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !175
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %13, !prof !471

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_gv_add_by_type(ptr noundef %0, i32 noundef 11)
  %9 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !156
  %11 = getelementptr inbounds %struct.gp, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !175
  br label %13

13:                                               ; preds = %1, %7
  %14 = phi ptr [ %12, %7 ], [ %5, %1 ]
  %15 = load ptr, ptr %0, align 8, !tbaa !160
  %16 = getelementptr inbounds %struct.xpvgv, ptr %15, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !192
  %18 = or i64 %17, 2
  store i64 %18, ptr %16, align 8, !tbaa !192
  tail call void @Perl_sv_magic(ptr noundef %14, ptr noundef nonnull %0, i32 noundef 73, ptr noundef null, i32 noundef 0) #10
  ret void
}

declare zeroext i1 @Perl__is_utf8_perl_idstart(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_gv_fullname4(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 !prof !472 {
  %5 = load ptr, ptr %1, align 8, !tbaa !160
  %6 = getelementptr inbounds %struct.xpvgv, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !156
  %8 = icmp eq ptr %2, null
  %9 = select i1 %8, ptr @.str.7, ptr %2, !prof !473
  tail call void @Perl_sv_setpv(ptr noundef %0, ptr noundef nonnull %9) #10
  %10 = icmp eq ptr %7, null
  br i1 %10, label %112, label %11, !prof !474

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !249
  %14 = and i32 %13, 33554432
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %39, label %16, !prof !474

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !156
  %19 = load ptr, ptr %7, align 8, !tbaa !252
  %20 = getelementptr inbounds %struct.xpvhv, ptr %19, i64 0, i32 3
  %21 = load i64, ptr %20, align 8, !tbaa !253
  %22 = getelementptr ptr, ptr %18, i64 %21
  %23 = getelementptr ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !156
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26, !prof !474

26:                                               ; preds = %16
  %27 = getelementptr i8, ptr %22, i64 36
  %28 = load i32, ptr %27, align 4, !tbaa !255
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30, !prof !473

30:                                               ; preds = %26
  %31 = load ptr, ptr %24, align 8, !tbaa !155
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  br i1 %29, label %35, label %34, !prof !473

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %26, %33, %34
  %36 = phi ptr [ %24, %34 ], [ %23, %33 ], [ %23, %26 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !156
  %38 = getelementptr inbounds %struct.hek, ptr %37, i64 0, i32 2
  br label %39

39:                                               ; preds = %11, %16, %30, %35
  %40 = phi ptr [ %38, %35 ], [ null, %30 ], [ null, %16 ], [ null, %11 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %112, label %42, !prof !474

42:                                               ; preds = %39
  br i1 %15, label %68, label %43, !prof !474

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !156
  %46 = load ptr, ptr %7, align 8, !tbaa !252
  %47 = getelementptr inbounds %struct.xpvhv, ptr %46, i64 0, i32 3
  %48 = load i64, ptr %47, align 8, !tbaa !253
  %49 = getelementptr ptr, ptr %45, i64 %48
  %50 = getelementptr ptr, ptr %49, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !156
  %52 = icmp eq ptr %51, null
  br i1 %52, label %68, label %53, !prof !474

53:                                               ; preds = %43
  %54 = getelementptr i8, ptr %49, i64 36
  %55 = load i32, ptr %54, align 4, !tbaa !255
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57, !prof !473

57:                                               ; preds = %53
  %58 = load ptr, ptr %51, align 8, !tbaa !155
  %59 = icmp eq ptr %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %57
  br i1 %56, label %62, label %61, !prof !473

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %53, %60, %61
  %63 = phi ptr [ %51, %61 ], [ %50, %60 ], [ %50, %53 ]
  %64 = load ptr, ptr %63, align 8, !tbaa !156
  %65 = getelementptr inbounds %struct.hek, ptr %64, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !162
  %67 = sext i32 %66 to i64
  br label %68

68:                                               ; preds = %42, %43, %57, %62
  %69 = phi i64 [ %67, %62 ], [ 0, %57 ], [ 0, %43 ], [ 0, %42 ]
  br i1 %3, label %73, label %70, !prof !473

70:                                               ; preds = %68
  %71 = tail call i32 @strncmp(ptr noundef nonnull %40, ptr noundef nonnull @.str.21, i64 noundef %69) #11
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %113, label %73

73:                                               ; preds = %70, %68
  br i1 %15, label %110, label %74, !prof !474

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !156
  %77 = load ptr, ptr %7, align 8, !tbaa !252
  %78 = getelementptr inbounds %struct.xpvhv, ptr %77, i64 0, i32 3
  %79 = load i64, ptr %78, align 8, !tbaa !253
  %80 = getelementptr ptr, ptr %76, i64 %79
  %81 = getelementptr ptr, ptr %80, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !156
  %83 = icmp eq ptr %82, null
  br i1 %83, label %110, label %84, !prof !474

84:                                               ; preds = %74
  %85 = getelementptr i8, ptr %80, i64 36
  %86 = load i32, ptr %85, align 4, !tbaa !255
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %93, label %88, !prof !473

88:                                               ; preds = %84
  %89 = load ptr, ptr %82, align 8, !tbaa !155
  %90 = icmp eq ptr %89, null
  br i1 %90, label %110, label %91

91:                                               ; preds = %88
  br i1 %87, label %93, label %92, !prof !473

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %84, %91, %92
  %94 = phi ptr [ %82, %92 ], [ %81, %91 ], [ %81, %84 ]
  %95 = load ptr, ptr %94, align 8, !tbaa !156
  %96 = getelementptr inbounds %struct.hek, ptr %95, i64 0, i32 2
  br i1 %87, label %98, label %97, !prof !473

97:                                               ; preds = %93
  br label %98

98:                                               ; preds = %93, %97
  %99 = phi ptr [ %82, %97 ], [ %81, %93 ]
  %100 = load ptr, ptr %99, align 8, !tbaa !156
  %101 = getelementptr inbounds %struct.hek, ptr %100, i64 0, i32 1
  %102 = load i32, ptr %101, align 4, !tbaa !162
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, ptr %96, i64 %103
  %105 = getelementptr inbounds i8, ptr %104, i64 1
  %106 = load i8, ptr %105, align 1, !tbaa !156
  %107 = and i8 %106, 1
  %108 = icmp eq i8 %107, 0
  %109 = select i1 %108, i32 16384, i32 32768, !prof !473
  br label %110

110:                                              ; preds = %73, %74, %88, %98
  %111 = phi i32 [ %109, %98 ], [ 16384, %88 ], [ 16384, %74 ], [ 16384, %73 ]
  tail call void @Perl_sv_catpvn_flags(ptr noundef %0, ptr noundef nonnull %40, i64 noundef %69, i32 noundef %111) #10
  tail call void @Perl_sv_catpvn_flags(ptr noundef %0, ptr noundef nonnull @.str.19, i64 noundef 2, i32 noundef 2) #10
  br label %113

112:                                              ; preds = %39, %4
  tail call void @Perl_sv_catpvn_flags(ptr noundef %0, ptr noundef nonnull @.str.22, i64 noundef 10, i32 noundef 2) #10
  br label %113

113:                                              ; preds = %70, %110, %112
  %114 = load ptr, ptr %1, align 8, !tbaa !160
  %115 = getelementptr inbounds %struct.xpvgv, ptr %114, i64 0, i32 4
  %116 = load ptr, ptr %115, align 8, !tbaa !156
  %117 = tail call ptr @Perl_newSVhek(ptr noundef %116) #10
  %118 = tail call ptr @Perl_sv_2mortal(ptr noundef %117) #10
  tail call void @Perl_sv_catsv_flags(ptr noundef %0, ptr noundef %118, i32 noundef 2) #10
  ret void
}

declare void @Perl_sv_setpv(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_gv_efullname4(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 !prof !472 {
  %5 = getelementptr inbounds %struct.gv, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !170
  %7 = and i32 %6, 49152
  %8 = icmp eq i32 %7, 32768
  br i1 %8, label %9, label %18, !prof !473

9:                                                ; preds = %4
  %10 = and i32 %6, 255
  %11 = add nsw i32 %10, -9
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %13, label %18, !prof !473

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gv, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !156
  %16 = getelementptr inbounds %struct.gp, ptr %15, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !209
  br label %18

18:                                               ; preds = %9, %4, %13
  %19 = phi ptr [ %17, %13 ], [ null, %4 ], [ null, %9 ]
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr %1, ptr %19, !prof !474
  tail call void @Perl_gv_fullname4(ptr noundef %0, ptr noundef %21, ptr noundef %2, i1 noundef zeroext %3)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_gv_check(ptr noundef readonly %0) local_unnamed_addr #0 !prof !475 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !156
  %4 = icmp eq ptr %3, null
  br i1 %4, label %204, label %5, !prof !476

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !252
  %7 = getelementptr inbounds %struct.xpvhv, ptr %6, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !253
  %9 = and i64 %8, 2147483648
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %204, !prof !477

11:                                               ; preds = %5, %188
  %12 = phi i64 [ %197, %188 ], [ 0, %5 ]
  %13 = phi i64 [ %200, %188 ], [ %8, %5 ]
  %14 = load ptr, ptr %2, align 8, !tbaa !156
  %15 = getelementptr ptr, ptr %14, i64 %13
  %16 = getelementptr i8, ptr %15, i64 60
  %17 = load i32, ptr %16, align 4, !tbaa !478
  %18 = or i32 %17, 1
  store i32 %18, ptr %16, align 4, !tbaa !478
  %19 = load ptr, ptr %2, align 8, !tbaa !156
  %20 = getelementptr inbounds ptr, ptr %19, i64 %12
  %21 = load ptr, ptr %20, align 8, !tbaa !155
  %22 = icmp eq ptr %21, null
  br i1 %22, label %188, label %23, !prof !479

23:                                               ; preds = %11, %185
  %24 = phi ptr [ %186, %185 ], [ %21, %11 ]
  %25 = getelementptr inbounds %struct.he, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !480
  %27 = getelementptr inbounds %struct.hek, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !162
  %29 = add nsw i32 %28, -1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.hek, ptr %26, i64 0, i32 2, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !156
  %33 = icmp eq i8 %32, 58
  br i1 %33, label %34, label %71, !prof !482

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.he, ptr %24, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !156
  %37 = icmp eq ptr %36, null
  br i1 %37, label %71, label %38, !prof !476

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.gv, ptr %36, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !170
  %41 = and i32 %40, 255
  %42 = icmp eq i32 %41, 9
  br i1 %42, label %43, label %71, !prof !483

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.gv, ptr %36, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !156
  %46 = getelementptr inbounds %struct.gp, ptr %45, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !176
  %48 = icmp eq ptr %47, null
  br i1 %48, label %71, label %49, !prof !476

49:                                               ; preds = %43
  %50 = load ptr, ptr @PL_defstash, align 8, !tbaa !155
  %51 = icmp eq ptr %47, %50
  %52 = icmp eq ptr %47, %0
  %53 = or i1 %52, %51
  br i1 %53, label %185, label %54, !prof !484

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.hv, ptr %47, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !249
  %57 = and i32 %56, 33554432
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %70, label %59, !prof !485

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.hv, ptr %47, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !156
  %62 = load ptr, ptr %47, align 8, !tbaa !252
  %63 = getelementptr inbounds %struct.xpvhv, ptr %62, i64 0, i32 3
  %64 = load i64, ptr %63, align 8, !tbaa !253
  %65 = getelementptr ptr, ptr %61, i64 %64
  %66 = getelementptr i8, ptr %65, i64 60
  %67 = load i32, ptr %66, align 4, !tbaa !478
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %185, !prof !486

70:                                               ; preds = %59, %54
  tail call void @Perl_gv_check(ptr noundef nonnull %47)
  br label %185

71:                                               ; preds = %43, %38, %34, %23
  %72 = getelementptr inbounds %struct.hek, ptr %26, i64 0, i32 2
  %73 = load i8, ptr %72, align 4, !tbaa !156
  %74 = icmp eq i8 %73, 95
  br i1 %74, label %185, label %75, !prof !487

75:                                               ; preds = %71
  %76 = load ptr, ptr @PL_curcop, align 8, !tbaa !155
  %77 = getelementptr inbounds %struct.cop, ptr %76, i64 0, i32 10
  %78 = load i32, ptr %77, align 8, !tbaa !339
  %79 = and i32 %78, 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %96, !prof !488

81:                                               ; preds = %75
  %82 = icmp eq i32 %28, -2
  br i1 %82, label %83, label %89, !prof !489

83:                                               ; preds = %81
  %84 = load ptr, ptr %72, align 4, !tbaa !155
  %85 = getelementptr inbounds %struct.sv, ptr %84, i64 0, i32 2
  %86 = load i32, ptr %85, align 4, !tbaa !148
  %87 = and i32 %86, 536870912
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %96, label %102

89:                                               ; preds = %81
  %90 = sext i32 %28 to i64
  %91 = getelementptr inbounds i8, ptr %72, i64 %90
  %92 = getelementptr inbounds i8, ptr %91, i64 1
  %93 = load i8, ptr %92, align 1, !tbaa !156
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %102, !prof !488

96:                                               ; preds = %89, %83, %75
  %97 = zext i8 %73 to i64
  %98 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !174
  %100 = and i32 %99, 81920
  %101 = icmp eq i32 %100, 81920
  br i1 %101, label %126, label %185, !prof !490

102:                                              ; preds = %89, %83
  %103 = icmp sgt i8 %73, -1
  br i1 %103, label %104, label %110

104:                                              ; preds = %102
  %105 = zext nneg i8 %73 to i64
  %106 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !174
  %108 = and i32 %107, 65536
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %185, label %126

110:                                              ; preds = %102
  %111 = and i8 %73, -2
  %112 = icmp eq i8 %111, -62
  br i1 %112, label %113, label %124

113:                                              ; preds = %110
  %114 = shl i8 %73, 6
  %115 = getelementptr inbounds %struct.hek, ptr %26, i64 0, i32 2, i64 1
  %116 = load i8, ptr %115, align 1, !tbaa !156
  %117 = and i8 %116, 63
  %118 = or disjoint i8 %117, %114
  %119 = zext i8 %118 to i64
  %120 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !174
  %122 = and i32 %121, 65536
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %185, label %126

124:                                              ; preds = %110
  %125 = tail call zeroext i1 @Perl__is_utf8_perl_idstart(ptr noundef nonnull %72) #10
  br i1 %125, label %126, label %185

126:                                              ; preds = %113, %104, %124, %96
  %127 = getelementptr inbounds %struct.he, ptr %24, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !156
  %129 = getelementptr inbounds %struct.gv, ptr %128, i64 0, i32 2
  %130 = load i32, ptr %129, align 4, !tbaa !170
  %131 = and i32 %130, 255
  %132 = icmp eq i32 %131, 9
  br i1 %132, label %133, label %185, !prof !491

133:                                              ; preds = %126
  %134 = load ptr, ptr %128, align 8, !tbaa !160
  %135 = getelementptr inbounds %struct.xpvgv, ptr %134, i64 0, i32 2
  %136 = load i64, ptr %135, align 8, !tbaa !192
  %137 = and i64 %136, 2
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %185, !prof !492

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %141 = getelementptr inbounds %struct.gv, ptr %128, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !156
  %143 = getelementptr inbounds %struct.gp, ptr %142, i64 0, i32 10
  %144 = load ptr, ptr %143, align 8, !tbaa !220
  %145 = icmp eq ptr %144, null
  %146 = getelementptr inbounds %struct.hek, ptr %144, i64 0, i32 2
  %147 = select i1 %145, ptr null, ptr %146
  %148 = getelementptr inbounds %struct.gp, ptr %142, i64 0, i32 9
  %149 = load i32, ptr %148, align 8
  %150 = and i32 %149, 2147483647
  %151 = load ptr, ptr @PL_curcop, align 8, !tbaa !155
  %152 = getelementptr inbounds %struct.cop, ptr %151, i64 0, i32 7
  store i32 %150, ptr %152, align 4, !tbaa !211
  %153 = load ptr, ptr %141, align 8, !tbaa !156
  %154 = getelementptr inbounds %struct.gp, ptr %153, i64 0, i32 10
  %155 = load ptr, ptr %154, align 8, !tbaa !220
  %156 = getelementptr inbounds %struct.hek, ptr %155, i64 0, i32 1
  %157 = load i32, ptr %156, align 4, !tbaa !162
  %158 = sext i32 %157 to i64
  %159 = tail call ptr @Perl_gv_fetchfile_flags(ptr noundef %147, i64 noundef %158, i32 poison)
  %160 = load ptr, ptr @PL_curcop, align 8, !tbaa !155
  %161 = getelementptr inbounds %struct.cop, ptr %160, i64 0, i32 9
  store ptr %159, ptr %161, align 8, !tbaa !213
  %162 = load i32, ptr %140, align 4, !tbaa !249
  %163 = and i32 %162, 33554432
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %180, label %165

165:                                              ; preds = %139
  %166 = load ptr, ptr %2, align 8, !tbaa !156
  %167 = load ptr, ptr %0, align 8, !tbaa !252
  %168 = getelementptr inbounds %struct.xpvhv, ptr %167, i64 0, i32 3
  %169 = load i64, ptr %168, align 8, !tbaa !253
  %170 = getelementptr ptr, ptr %166, i64 %169
  %171 = getelementptr ptr, ptr %170, i64 1
  %172 = load ptr, ptr %171, align 8, !tbaa !156
  %173 = icmp eq ptr %172, null
  br i1 %173, label %180, label %174

174:                                              ; preds = %165
  %175 = getelementptr i8, ptr %170, i64 36
  %176 = load i32, ptr %175, align 4, !tbaa !255
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %174
  %179 = load ptr, ptr %172, align 8, !tbaa !155
  br label %180

180:                                              ; preds = %174, %139, %165, %178
  %181 = phi ptr [ %179, %178 ], [ null, %165 ], [ null, %139 ], [ %172, %174 ]
  %182 = load ptr, ptr %128, align 8, !tbaa !160
  %183 = getelementptr inbounds %struct.xpvgv, ptr %182, i64 0, i32 4
  %184 = load ptr, ptr %183, align 8, !tbaa !156
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 14, ptr noundef nonnull @.str.23, ptr noundef %181, ptr noundef %184) #10
  br label %185

185:                                              ; preds = %126, %124, %70, %59, %49, %113, %104, %96, %71, %180, %133
  %186 = load ptr, ptr %24, align 8, !tbaa !155
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %23, !prof !493, !llvm.loop !494

188:                                              ; preds = %185, %11
  %189 = load ptr, ptr %2, align 8, !tbaa !156
  %190 = load ptr, ptr %0, align 8, !tbaa !252
  %191 = getelementptr inbounds %struct.xpvhv, ptr %190, i64 0, i32 3
  %192 = load i64, ptr %191, align 8, !tbaa !253
  %193 = getelementptr ptr, ptr %189, i64 %192
  %194 = getelementptr i8, ptr %193, i64 60
  %195 = load i32, ptr %194, align 4, !tbaa !478
  %196 = and i32 %195, -2
  store i32 %196, ptr %194, align 4, !tbaa !478
  %197 = add nuw nsw i64 %12, 1
  %198 = load ptr, ptr %0, align 8, !tbaa !252
  %199 = getelementptr inbounds %struct.xpvhv, ptr %198, i64 0, i32 3
  %200 = load i64, ptr %199, align 8, !tbaa !253
  %201 = shl i64 %200, 32
  %202 = ashr exact i64 %201, 32
  %203 = icmp slt i64 %12, %202
  br i1 %203, label %11, label %204, !prof !495, !llvm.loop !496

204:                                              ; preds = %188, %5, %1
  ret void
}

declare void @Perl_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_newGVgen_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 !prof !206 {
  %3 = icmp ne i32 %1, 0
  %4 = zext i1 %3 to i32
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  %6 = load i32, ptr @PL_gensym, align 4, !tbaa !174
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @PL_gensym, align 4, !tbaa !174
  %8 = sext i32 %6 to i64
  %9 = tail call ptr (ptr, ...) @Perl_form(ptr noundef nonnull @.str.24, i32 noundef %4, i64 noundef %5, ptr noundef %0, i64 noundef %8) #10
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #11
  %11 = tail call ptr @Perl_gv_fetchpvn_flags(ptr noundef %9, i64 noundef %10, i32 noundef 1, i32 noundef 9)
  ret ptr %11
}

declare ptr @Perl_form(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @Perl_gp_ref(ptr noundef %0) local_unnamed_addr #0 !prof !497 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3, !prof !498

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gp, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !221
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 4, !tbaa !221
  %7 = getelementptr inbounds %struct.gp, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !195
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10, !prof !499

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.gp, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !207
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14, !prof !282

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !227
  %17 = icmp ugt i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = add i32 %16, -1
  store i32 %19, ptr %15, align 8, !tbaa !227
  br label %21

20:                                               ; preds = %14
  tail call void @Perl_sv_free2(ptr noundef nonnull %8, i32 noundef %16) #10
  br label %21

21:                                               ; preds = %18, %20
  store ptr null, ptr %7, align 8, !tbaa !195
  store i32 0, ptr %11, align 8, !tbaa !207
  br label %22

22:                                               ; preds = %3, %21, %10, %1
  %23 = phi ptr [ null, %1 ], [ %0, %10 ], [ %0, %21 ], [ %0, %3 ]
  ret ptr %23
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_gp_free(ptr noundef %0) local_unnamed_addr #0 !prof !500 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %218, label %3, !prof !501

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !170
  %6 = and i32 %5, 49152
  %7 = icmp eq i32 %6, 32768
  br i1 %7, label %8, label %218, !prof !502

8:                                                ; preds = %3
  %9 = and i32 %5, 255
  %10 = add nsw i32 %9, -9
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %218, !prof !502

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !156
  %15 = icmp eq ptr %14, null
  br i1 %15, label %218, label %16, !prof !501

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.gp, ptr %14, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !221
  switch i32 %18, label %20 [
    i32 0, label %19
    i32 1, label %30
  ], !prof !503

19:                                               ; preds = %16
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 24, ptr noundef nonnull @.str.25) #10
  br label %218

20:                                               ; preds = %16, %213
  %21 = phi ptr [ %178, %213 ], [ %14, %16 ]
  %22 = getelementptr inbounds %struct.gp, ptr %21, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !209
  %24 = icmp eq ptr %23, %0
  br i1 %24, label %25, label %26, !prof !504

25:                                               ; preds = %20
  store ptr null, ptr %22, align 8, !tbaa !209
  br label %26

26:                                               ; preds = %25, %20
  %27 = getelementptr inbounds %struct.gp, ptr %21, i64 0, i32 4
  %28 = load i32, ptr %27, align 4, !tbaa !221
  %29 = add i32 %28, -1
  store i32 %29, ptr %27, align 4, !tbaa !221
  store ptr null, ptr %13, align 8, !tbaa !156
  br label %218

30:                                               ; preds = %16, %210
  %31 = phi i32 [ %212, %210 ], [ 100, %16 ]
  %32 = phi ptr [ %178, %210 ], [ %14, %16 ]
  %33 = getelementptr inbounds %struct.gp, ptr %32, i64 0, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !220
  %35 = load ptr, ptr %32, align 8, !tbaa !172
  %36 = getelementptr inbounds %struct.gp, ptr %32, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !175
  %38 = getelementptr inbounds %struct.gp, ptr %32, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !176
  %40 = getelementptr inbounds %struct.gp, ptr %32, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !424
  %42 = getelementptr inbounds %struct.gp, ptr %32, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !195
  %44 = getelementptr inbounds %struct.gp, ptr %32, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !234
  store ptr null, ptr %33, align 8, !tbaa !220
  %46 = icmp eq ptr %34, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, i8 0, i64 24, i1 false)
  br i1 %46, label %48, label %47, !prof !505

47:                                               ; preds = %30
  tail call void @Perl_unshare_hek(ptr noundef nonnull %34) #10
  br label %48

48:                                               ; preds = %47, %30
  %49 = icmp eq ptr %35, null
  br i1 %49, label %57, label %50, !prof !506

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !227
  %53 = icmp ugt i32 %52, 1
  br i1 %53, label %54, label %56, !prof !507

54:                                               ; preds = %50
  %55 = add i32 %52, -1
  store i32 %55, ptr %51, align 8, !tbaa !227
  br label %57

56:                                               ; preds = %50
  tail call void @Perl_sv_free2(ptr noundef nonnull %35, i32 noundef %52) #10
  br label %57

57:                                               ; preds = %48, %54, %56
  %58 = icmp eq ptr %37, null
  br i1 %58, label %66, label %59, !prof !508

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !227
  %62 = icmp ugt i32 %61, 1
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = add i32 %61, -1
  store i32 %64, ptr %60, align 8, !tbaa !227
  br label %66

65:                                               ; preds = %59
  tail call void @Perl_sv_free2(ptr noundef nonnull %37, i32 noundef %61) #10
  br label %66

66:                                               ; preds = %57, %63, %65
  %67 = icmp eq ptr %39, null
  br i1 %67, label %117, label %68, !prof !508

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.hv, ptr %39, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !249
  %71 = and i32 %70, 255
  %72 = icmp eq i32 %71, 12
  br i1 %72, label %73, label %117

73:                                               ; preds = %68
  %74 = and i32 %70, 33554432
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %92, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.hv, ptr %39, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !156
  %79 = load ptr, ptr %39, align 8, !tbaa !252
  %80 = getelementptr inbounds %struct.xpvhv, ptr %79, i64 0, i32 3
  %81 = load i64, ptr %80, align 8, !tbaa !253
  %82 = getelementptr ptr, ptr %78, i64 %81
  %83 = getelementptr ptr, ptr %82, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !156
  %85 = icmp eq ptr %84, null
  br i1 %85, label %92, label %86

86:                                               ; preds = %76
  %87 = getelementptr i8, ptr %82, i64 36
  %88 = load i32, ptr %87, align 4, !tbaa !255
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %84, align 8, !tbaa !155
  br label %92

92:                                               ; preds = %86, %73, %76, %90
  %93 = phi ptr [ %91, %90 ], [ null, %76 ], [ null, %73 ], [ %84, %86 ]
  %94 = load ptr, ptr @PL_stashcache, align 8, !tbaa !155
  %95 = icmp ne ptr %94, null
  %96 = icmp ne ptr %93, null
  %97 = select i1 %95, i1 %96, i1 false
  br i1 %97, label %98, label %110

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.hek, ptr %93, i64 0, i32 2
  %100 = getelementptr inbounds %struct.hek, ptr %93, i64 0, i32 1
  %101 = load i32, ptr %100, align 4, !tbaa !162
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, ptr %99, i64 %102
  %104 = getelementptr inbounds i8, ptr %103, i64 1
  %105 = load i8, ptr %104, align 1, !tbaa !156
  %106 = and i8 %105, 1
  %107 = zext nneg i8 %106 to i32
  %108 = load i32, ptr %93, align 4, !tbaa !237
  %109 = tail call ptr @Perl_hv_common(ptr noundef nonnull %94, ptr noundef null, ptr noundef nonnull %99, i64 noundef %102, i32 noundef %107, i32 noundef 68, ptr noundef null, i32 noundef %108) #10
  br label %110

110:                                              ; preds = %92, %98
  %111 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 1
  %112 = load i32, ptr %111, align 8, !tbaa !227
  %113 = icmp ugt i32 %112, 1
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = add i32 %112, -1
  store i32 %115, ptr %111, align 8, !tbaa !227
  br label %117

116:                                              ; preds = %110
  tail call void @Perl_sv_free2(ptr noundef nonnull %39, i32 noundef %112) #10
  br label %117

117:                                              ; preds = %116, %114, %68, %66
  %118 = icmp eq ptr %41, null
  br i1 %118, label %159, label %119, !prof !508

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.io, ptr %41, i64 0, i32 1
  %121 = load i32, ptr %120, align 8, !tbaa !509
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %153

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.io, ptr %41, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !156
  %126 = icmp eq ptr %125, null
  br i1 %126, label %153, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr %41, align 8, !tbaa !441
  %129 = getelementptr inbounds %struct.xpvio, ptr %128, i64 0, i32 16
  %130 = load i8, ptr %129, align 8, !tbaa !510
  switch i8 %130, label %153 [
    i8 62, label %131
    i8 43, label %131
    i8 97, label %131
  ]

131:                                              ; preds = %127, %127, %127
  %132 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 5) #10
  br i1 %132, label %133, label %153

133:                                              ; preds = %131
  %134 = load ptr, ptr %124, align 8, !tbaa !156
  %135 = tail call ptr @Perl_PerlIO_stdin() #10
  %136 = icmp eq ptr %134, %135
  br i1 %136, label %153, label %137

137:                                              ; preds = %133
  %138 = load ptr, ptr %124, align 8, !tbaa !156
  %139 = tail call ptr @Perl_PerlIO_stdout() #10
  %140 = icmp eq ptr %138, %139
  br i1 %140, label %153, label %141

141:                                              ; preds = %137
  %142 = load ptr, ptr %124, align 8, !tbaa !156
  %143 = tail call ptr @Perl_PerlIO_stderr() #10
  %144 = icmp eq ptr %142, %143
  br i1 %144, label %153, label %145

145:                                              ; preds = %141
  %146 = load ptr, ptr %41, align 8, !tbaa !441
  %147 = getelementptr inbounds %struct.xpvio, ptr %146, i64 0, i32 17
  %148 = load i8, ptr %147, align 1, !tbaa !443
  %149 = and i8 %148, 64
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = tail call zeroext i1 @Perl_io_close(ptr noundef nonnull %41, ptr noundef nonnull %0, i1 noundef zeroext false, i1 noundef zeroext true) #10
  br label %153

153:                                              ; preds = %119, %123, %131, %133, %137, %141, %145, %151, %127
  %154 = load i32, ptr %120, align 8, !tbaa !227
  %155 = icmp ugt i32 %154, 1
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = add i32 %154, -1
  store i32 %157, ptr %120, align 8, !tbaa !227
  br label %159

158:                                              ; preds = %153
  tail call void @Perl_sv_free2(ptr noundef nonnull %41, i32 noundef %154) #10
  br label %159

159:                                              ; preds = %117, %156, %158
  %160 = icmp eq ptr %43, null
  br i1 %160, label %168, label %161, !prof !511

161:                                              ; preds = %159
  %162 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 1
  %163 = load i32, ptr %162, align 8, !tbaa !227
  %164 = icmp ugt i32 %163, 1
  br i1 %164, label %165, label %167, !prof !512

165:                                              ; preds = %161
  %166 = add i32 %163, -1
  store i32 %166, ptr %162, align 8, !tbaa !227
  br label %168

167:                                              ; preds = %161
  tail call void @Perl_sv_free2(ptr noundef nonnull %43, i32 noundef %163) #10
  br label %168

168:                                              ; preds = %159, %165, %167
  %169 = icmp eq ptr %45, null
  br i1 %169, label %177, label %170, !prof !508

170:                                              ; preds = %168
  %171 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 1
  %172 = load i32, ptr %171, align 8, !tbaa !227
  %173 = icmp ugt i32 %172, 1
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = add i32 %172, -1
  store i32 %175, ptr %171, align 8, !tbaa !227
  br label %177

176:                                              ; preds = %170
  tail call void @Perl_sv_free2(ptr noundef nonnull %45, i32 noundef %172) #10
  br label %177

177:                                              ; preds = %168, %174, %176
  %178 = load ptr, ptr %13, align 8, !tbaa !156
  %179 = getelementptr inbounds %struct.gp, ptr %178, i64 0, i32 10
  %180 = load ptr, ptr %179, align 8, !tbaa !220
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %205, !prof !508

182:                                              ; preds = %177
  %183 = load ptr, ptr %178, align 8, !tbaa !172
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %205, !prof !508

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.gp, ptr %178, i64 0, i32 6
  %187 = load ptr, ptr %186, align 8, !tbaa !175
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %205, !prof !508

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.gp, ptr %178, i64 0, i32 5
  %191 = load ptr, ptr %190, align 8, !tbaa !176
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %205, !prof !508

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.gp, ptr %178, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !424
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %205, !prof !508

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.gp, ptr %178, i64 0, i32 2
  %199 = load ptr, ptr %198, align 8, !tbaa !195
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %205, !prof !508

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.gp, ptr %178, i64 0, i32 7
  %203 = load ptr, ptr %202, align 8, !tbaa !234
  %204 = icmp eq ptr %203, null
  br i1 %204, label %210, label %205, !prof !508

205:                                              ; preds = %201, %197, %193, %189, %185, %182, %177
  %206 = add nsw i32 %31, -1
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %205
  %209 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.26) #10
  br label %210

210:                                              ; preds = %201, %205, %208
  %211 = phi i1 [ true, %208 ], [ true, %205 ], [ false, %201 ]
  %212 = phi i32 [ %206, %208 ], [ %206, %205 ], [ %31, %201 ]
  br i1 %211, label %30, label %213, !prof !505

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.gp, ptr %178, i64 0, i32 4
  %215 = load i32, ptr %214, align 4, !tbaa !221
  %216 = icmp ugt i32 %215, 1
  br i1 %216, label %20, label %217, !prof !505

217:                                              ; preds = %213
  tail call void @Perl_safesysfree(ptr noundef %178) #10
  store ptr null, ptr %13, align 8, !tbaa !156
  br label %218

218:                                              ; preds = %8, %1, %3, %12, %217, %26, %19
  ret void
}

declare zeroext i1 @Perl_ckwarn_d(i32 noundef) local_unnamed_addr #2

declare ptr @Perl_PerlIO_stdin() local_unnamed_addr #2

declare ptr @Perl_PerlIO_stdout() local_unnamed_addr #2

declare ptr @Perl_PerlIO_stderr() local_unnamed_addr #2

declare zeroext i1 @Perl_io_close(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @Perl_die(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_magic_freeovrld(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 !prof !206 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !513
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %4, align 8, !tbaa !516
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %6, %23
  %11 = phi i64 [ %24, %23 ], [ 1, %6 ]
  %12 = getelementptr inbounds %struct.am_table, ptr %4, i64 0, i32 4, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !155
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !227
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = add i32 %17, -1
  store i32 %20, ptr %16, align 8, !tbaa !227
  br label %22

21:                                               ; preds = %15
  tail call void @Perl_sv_free2(ptr noundef nonnull %13, i32 noundef %17) #10
  br label %22

22:                                               ; preds = %19, %21
  store ptr null, ptr %12, align 8, !tbaa !155
  br label %23

23:                                               ; preds = %22, %10
  %24 = add nuw nsw i64 %11, 1
  %25 = icmp eq i64 %24, 75
  br i1 %25, label %26, label %10, !llvm.loop !518

26:                                               ; preds = %23, %6, %2
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_Gv_AMupdate(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 !prof !519 {
  %3 = alloca %struct.am_table, align 8
  %4 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 99) #10
  call void @llvm.lifetime.start.p0(i64 608, ptr nonnull %3) #10
  %5 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !156
  %7 = load ptr, ptr %0, align 8, !tbaa !252
  %8 = getelementptr inbounds %struct.xpvhv, ptr %7, i64 0, i32 3
  %9 = load i64, ptr %8, align 8, !tbaa !253
  %10 = getelementptr ptr, ptr %6, i64 %9
  %11 = getelementptr ptr, ptr %10, i64 5
  %12 = load ptr, ptr %11, align 8, !tbaa !258
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16, !prof !291

14:                                               ; preds = %2
  %15 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %0) #10
  br label %16

16:                                               ; preds = %2, %14
  %17 = phi ptr [ %15, %14 ], [ %12, %2 ]
  %18 = load i32, ptr @PL_sub_generation, align 4, !tbaa !174
  %19 = getelementptr inbounds %struct.mro_meta, ptr %17, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !520
  %21 = add i32 %20, %18
  %22 = getelementptr inbounds %struct.mro_meta, ptr %17, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !259
  %24 = add i32 %21, %23
  %25 = icmp eq ptr %4, null
  br i1 %25, label %40, label %26, !prof !521

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.magic, ptr %4, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !513
  %29 = getelementptr inbounds %struct.am_table, ptr %28, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !522
  %31 = icmp eq i32 %30, %24
  br i1 %31, label %32, label %36, !prof !194

32:                                               ; preds = %26
  %33 = load i8, ptr %28, align 8, !tbaa !516
  %34 = and i8 %33, 1
  %35 = zext nneg i8 %34 to i32
  br label %38

36:                                               ; preds = %26
  %37 = tail call i32 @Perl_sv_unmagic(ptr noundef nonnull %0, i32 noundef 99) #10
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i32 [ %35, %32 ], [ undef, %36 ]
  br i1 %31, label %420, label %40, !prof !194

40:                                               ; preds = %38, %16
  %41 = phi i32 [ %39, %38 ], [ undef, %16 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(608) %3, i8 0, i64 608, i1 false)
  %42 = getelementptr inbounds %struct.am_table, ptr %3, i64 0, i32 3
  store i32 %24, ptr %42, align 4, !tbaa !522
  %43 = getelementptr inbounds %struct.am_table, ptr %3, i64 0, i32 1
  store i8 2, ptr %43, align 1, !tbaa !523
  store i8 0, ptr %3, align 8, !tbaa !516
  %44 = tail call fastcc ptr @S_gv_fetchmeth_internal(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.90, i64 noundef 2, i32 noundef -1, i32 noundef 0)
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46, !prof !524

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.gv, ptr %44, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !156
  %49 = load ptr, ptr %48, align 8, !tbaa !172
  br label %50

50:                                               ; preds = %40, %46
  %51 = phi ptr [ %49, %46 ], [ null, %40 ]
  br i1 %45, label %52, label %55, !prof !524

52:                                               ; preds = %50
  %53 = tail call fastcc ptr @S_gv_fetchmeth_internal(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.27, i64 noundef 2, i32 noundef -1, i32 noundef 0)
  %54 = icmp eq ptr %53, null
  br i1 %54, label %414, label %124, !prof !282

55:                                               ; preds = %50
  %56 = icmp eq ptr %51, null
  br i1 %56, label %124, label %57, !prof !194

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !148
  %60 = and i32 %59, 2097152
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %51, i32 noundef 2) #10
  br i1 %63, label %121, label %111

64:                                               ; preds = %57
  %65 = and i32 %59, 65280
  %66 = icmp ne i32 %65, 0
  %67 = and i32 %59, 255
  %68 = icmp eq i32 %67, 8
  %69 = or i1 %66, %68
  %70 = and i32 %59, 16777471
  %71 = icmp eq i32 %70, 16777226
  %72 = or i1 %71, %69
  br i1 %72, label %73, label %111

73:                                               ; preds = %64
  %74 = and i32 %59, 1024
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %51, align 8, !tbaa !242
  %78 = icmp eq ptr %77, null
  br i1 %78, label %111, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.xpv, ptr %77, i64 0, i32 2
  %81 = load i64, ptr %80, align 8, !tbaa !180
  %82 = icmp ugt i64 %81, 1
  br i1 %82, label %121, label %83

83:                                               ; preds = %79
  %84 = icmp eq i64 %81, 0
  br i1 %84, label %111, label %85

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !156
  %88 = load i8, ptr %87, align 1, !tbaa !156
  %89 = icmp eq i8 %88, 48
  br i1 %89, label %111, label %121

90:                                               ; preds = %73
  %91 = and i32 %59, 768
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %109, label %93

93:                                               ; preds = %90
  %94 = and i32 %59, 256
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %93
  %97 = load ptr, ptr %51, align 8, !tbaa !242
  %98 = getelementptr inbounds %struct.xpviv, ptr %97, i64 0, i32 4
  %99 = load i64, ptr %98, align 8, !tbaa !156
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %121

101:                                              ; preds = %96, %93
  %102 = and i32 %59, 512
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr %51, align 8, !tbaa !242
  %106 = getelementptr inbounds %struct.xpvnv, ptr %105, i64 0, i32 5
  %107 = load double, ptr %106, align 8, !tbaa !156
  %108 = fcmp une double %107, 0.000000e+00
  br i1 %108, label %121, label %111

109:                                              ; preds = %90
  %110 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %51, i32 noundef 0) #10
  br i1 %110, label %121, label %111

111:                                              ; preds = %109, %104, %64, %101, %85, %83, %76, %62
  %112 = load i32, ptr %58, align 4, !tbaa !148
  %113 = and i32 %112, 65280
  %114 = icmp ne i32 %113, 0
  %115 = and i32 %112, 255
  %116 = icmp eq i32 %115, 8
  %117 = or i1 %114, %116
  %118 = and i32 %112, 16777471
  %119 = icmp eq i32 %118, 16777226
  %120 = or i1 %119, %117
  br i1 %120, label %121, label %124

121:                                              ; preds = %111, %62, %79, %96, %104, %109, %85
  %122 = phi i8 [ 3, %85 ], [ 3, %109 ], [ 3, %104 ], [ 3, %96 ], [ 3, %79 ], [ 3, %62 ], [ 1, %111 ]
  %123 = phi i32 [ 0, %85 ], [ 0, %109 ], [ 0, %104 ], [ 0, %96 ], [ 0, %79 ], [ 0, %62 ], [ 1, %111 ]
  store i8 %122, ptr %43, align 1, !tbaa !523
  br label %124

124:                                              ; preds = %121, %111, %55, %52
  %125 = phi i32 [ 0, %55 ], [ 0, %52 ], [ 1, %111 ], [ %123, %121 ]
  %126 = load ptr, ptr %5, align 8, !tbaa !156
  %127 = load ptr, ptr %0, align 8, !tbaa !252
  %128 = getelementptr inbounds %struct.xpvhv, ptr %127, i64 0, i32 3
  %129 = load i64, ptr %128, align 8, !tbaa !253
  %130 = getelementptr ptr, ptr %126, i64 %129
  %131 = getelementptr i8, ptr %130, i64 60
  %132 = load i32, ptr %131, align 4, !tbaa !478
  %133 = and i32 %132, -3
  store i32 %133, ptr %131, align 4, !tbaa !478
  br label %137

134:                                              ; preds = %392
  %135 = add nuw nsw i64 %138, 1
  %136 = icmp eq i64 %135, 75
  br i1 %136, label %397, label %137, !prof !525, !llvm.loop !526

137:                                              ; preds = %124, %134
  %138 = phi i64 [ 1, %124 ], [ %135, %134 ]
  %139 = phi i32 [ %41, %124 ], [ %396, %134 ]
  %140 = phi i32 [ %125, %124 ], [ %394, %134 ]
  %141 = phi i8 [ 0, %124 ], [ %393, %134 ]
  %142 = getelementptr inbounds [75 x ptr], ptr @PL_AMG_names, i64 0, i64 %138
  %143 = load ptr, ptr %142, align 8, !tbaa !155
  %144 = getelementptr inbounds i8, ptr %143, i64 1
  %145 = getelementptr inbounds [75 x i8], ptr @PL_AMG_namelens, i64 0, i64 %138
  %146 = load i8, ptr %145, align 1, !tbaa !156
  %147 = zext i8 %146 to i64
  %148 = tail call fastcc ptr @S_gv_fetchmeth_internal(ptr noundef nonnull %0, ptr noundef null, ptr noundef %143, i64 noundef %147, i32 noundef -1, i32 noundef 0)
  %149 = icmp eq ptr %148, null
  br i1 %149, label %373, label %150, !prof !527

150:                                              ; preds = %137
  %151 = getelementptr inbounds %struct.gv, ptr %148, i64 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !156
  %153 = getelementptr inbounds %struct.gp, ptr %152, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !195
  %155 = icmp eq ptr %154, null
  br i1 %155, label %373, label %156, !prof !446

156:                                              ; preds = %150
  %157 = load ptr, ptr %154, align 8, !tbaa !196
  %158 = getelementptr inbounds %struct.xpvcv, ptr %157, i64 0, i32 7
  %159 = load ptr, ptr %158, align 8, !tbaa !156
  %160 = icmp eq ptr %159, null
  br i1 %160, label %373, label %161, !prof !446

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.xpvcv, ptr %157, i64 0, i32 12
  %163 = load i32, ptr %162, align 4, !tbaa !200
  %164 = and i32 %163, 32768
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %170, !prof !528

166:                                              ; preds = %161
  %167 = load ptr, ptr %159, align 8, !tbaa !160
  %168 = getelementptr inbounds %struct.xpvgv, ptr %167, i64 0, i32 4
  %169 = load ptr, ptr %168, align 8, !tbaa !156
  br label %170

170:                                              ; preds = %161, %166
  %171 = phi ptr [ %169, %166 ], [ %159, %161 ]
  br i1 %165, label %174, label %172, !prof !528

172:                                              ; preds = %170
  %173 = getelementptr inbounds %struct.xpvcv, ptr %157, i64 0, i32 4
  br label %177

174:                                              ; preds = %170
  %175 = load ptr, ptr %159, align 8, !tbaa !160
  %176 = getelementptr inbounds %struct.xpvgv, ptr %175, i64 0, i32 5
  br label %177

177:                                              ; preds = %174, %172
  %178 = phi ptr [ %173, %172 ], [ %176, %174 ]
  %179 = load ptr, ptr %178, align 8, !tbaa !156
  %180 = getelementptr inbounds %struct.hv, ptr %179, i64 0, i32 2
  %181 = load i32, ptr %180, align 4, !tbaa !249
  %182 = and i32 %181, 33554432
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %288, label %184, !prof !446

184:                                              ; preds = %177
  br i1 %165, label %187, label %185, !prof !528

185:                                              ; preds = %184
  %186 = getelementptr inbounds %struct.xpvcv, ptr %157, i64 0, i32 4
  br label %190

187:                                              ; preds = %184
  %188 = load ptr, ptr %159, align 8, !tbaa !160
  %189 = getelementptr inbounds %struct.xpvgv, ptr %188, i64 0, i32 5
  br label %190

190:                                              ; preds = %187, %185
  %191 = phi ptr [ %186, %185 ], [ %189, %187 ]
  %192 = load ptr, ptr %191, align 8, !tbaa !156
  %193 = getelementptr inbounds %struct.hv, ptr %192, i64 0, i32 3
  %194 = load ptr, ptr %193, align 8, !tbaa !156
  br i1 %165, label %197, label %195, !prof !528

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.xpvcv, ptr %157, i64 0, i32 4
  br label %200

197:                                              ; preds = %190
  %198 = load ptr, ptr %159, align 8, !tbaa !160
  %199 = getelementptr inbounds %struct.xpvgv, ptr %198, i64 0, i32 5
  br label %200

200:                                              ; preds = %197, %195
  %201 = phi ptr [ %196, %195 ], [ %199, %197 ]
  %202 = load ptr, ptr %201, align 8, !tbaa !156
  %203 = load ptr, ptr %202, align 8, !tbaa !252
  %204 = getelementptr inbounds %struct.xpvhv, ptr %203, i64 0, i32 3
  %205 = load i64, ptr %204, align 8, !tbaa !253
  %206 = getelementptr ptr, ptr %194, i64 %205
  %207 = getelementptr ptr, ptr %206, i64 1
  %208 = load ptr, ptr %207, align 8, !tbaa !156
  %209 = icmp eq ptr %208, null
  br i1 %209, label %288, label %210, !prof !446

210:                                              ; preds = %200
  br i1 %165, label %213, label %211, !prof !528

211:                                              ; preds = %210
  %212 = getelementptr inbounds %struct.xpvcv, ptr %157, i64 0, i32 4
  br label %216

213:                                              ; preds = %210
  %214 = load ptr, ptr %159, align 8, !tbaa !160
  %215 = getelementptr inbounds %struct.xpvgv, ptr %214, i64 0, i32 5
  br label %216

216:                                              ; preds = %213, %211
  %217 = phi ptr [ %212, %211 ], [ %215, %213 ]
  %218 = load ptr, ptr %217, align 8, !tbaa !156
  %219 = getelementptr inbounds %struct.hv, ptr %218, i64 0, i32 3
  %220 = load ptr, ptr %219, align 8, !tbaa !156
  br i1 %165, label %223, label %221, !prof !528

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.xpvcv, ptr %157, i64 0, i32 4
  br label %226

223:                                              ; preds = %216
  %224 = load ptr, ptr %159, align 8, !tbaa !160
  %225 = getelementptr inbounds %struct.xpvgv, ptr %224, i64 0, i32 5
  br label %226

226:                                              ; preds = %223, %221
  %227 = phi ptr [ %222, %221 ], [ %225, %223 ]
  %228 = load ptr, ptr %227, align 8, !tbaa !156
  %229 = load ptr, ptr %228, align 8, !tbaa !252
  %230 = getelementptr inbounds %struct.xpvhv, ptr %229, i64 0, i32 3
  %231 = load i64, ptr %230, align 8, !tbaa !253
  %232 = getelementptr ptr, ptr %220, i64 %231
  %233 = getelementptr i8, ptr %232, i64 36
  %234 = load i32, ptr %233, align 4, !tbaa !255
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %261, label %236, !prof !528

236:                                              ; preds = %226
  br i1 %165, label %239, label %237

237:                                              ; preds = %236
  %238 = getelementptr inbounds %struct.xpvcv, ptr %157, i64 0, i32 4
  br label %242

239:                                              ; preds = %236
  %240 = load ptr, ptr %159, align 8, !tbaa !160
  %241 = getelementptr inbounds %struct.xpvgv, ptr %240, i64 0, i32 5
  br label %242

242:                                              ; preds = %239, %237
  %243 = phi ptr [ %238, %237 ], [ %241, %239 ]
  %244 = load ptr, ptr %243, align 8, !tbaa !156
  %245 = getelementptr inbounds %struct.hv, ptr %244, i64 0, i32 3
  %246 = load ptr, ptr %245, align 8, !tbaa !156
  br i1 %165, label %249, label %247

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.xpvcv, ptr %157, i64 0, i32 4
  br label %252

249:                                              ; preds = %242
  %250 = load ptr, ptr %159, align 8, !tbaa !160
  %251 = getelementptr inbounds %struct.xpvgv, ptr %250, i64 0, i32 5
  br label %252

252:                                              ; preds = %249, %247
  %253 = phi ptr [ %248, %247 ], [ %251, %249 ]
  %254 = load ptr, ptr %253, align 8, !tbaa !156
  %255 = load ptr, ptr %254, align 8, !tbaa !252
  %256 = getelementptr inbounds %struct.xpvhv, ptr %255, i64 0, i32 3
  %257 = load i64, ptr %256, align 8, !tbaa !253
  %258 = getelementptr ptr, ptr %246, i64 %257
  %259 = getelementptr ptr, ptr %258, i64 1
  %260 = load ptr, ptr %259, align 8, !tbaa !156
  br label %285

261:                                              ; preds = %226
  br i1 %165, label %264, label %262, !prof !528

262:                                              ; preds = %261
  %263 = getelementptr inbounds %struct.xpvcv, ptr %157, i64 0, i32 4
  br label %267

264:                                              ; preds = %261
  %265 = load ptr, ptr %159, align 8, !tbaa !160
  %266 = getelementptr inbounds %struct.xpvgv, ptr %265, i64 0, i32 5
  br label %267

267:                                              ; preds = %264, %262
  %268 = phi ptr [ %263, %262 ], [ %266, %264 ]
  %269 = load ptr, ptr %268, align 8, !tbaa !156
  %270 = getelementptr inbounds %struct.hv, ptr %269, i64 0, i32 3
  %271 = load ptr, ptr %270, align 8, !tbaa !156
  br i1 %165, label %274, label %272, !prof !528

272:                                              ; preds = %267
  %273 = getelementptr inbounds %struct.xpvcv, ptr %157, i64 0, i32 4
  br label %277

274:                                              ; preds = %267
  %275 = load ptr, ptr %159, align 8, !tbaa !160
  %276 = getelementptr inbounds %struct.xpvgv, ptr %275, i64 0, i32 5
  br label %277

277:                                              ; preds = %274, %272
  %278 = phi ptr [ %273, %272 ], [ %276, %274 ]
  %279 = load ptr, ptr %278, align 8, !tbaa !156
  %280 = load ptr, ptr %279, align 8, !tbaa !252
  %281 = getelementptr inbounds %struct.xpvhv, ptr %280, i64 0, i32 3
  %282 = load i64, ptr %281, align 8, !tbaa !253
  %283 = getelementptr ptr, ptr %271, i64 %282
  %284 = getelementptr ptr, ptr %283, i64 1
  br label %285

285:                                              ; preds = %277, %252
  %286 = phi ptr [ %260, %252 ], [ %284, %277 ]
  %287 = load ptr, ptr %286, align 8, !tbaa !156
  br label %288

288:                                              ; preds = %285, %177, %200
  %289 = phi ptr [ null, %200 ], [ null, %177 ], [ %287, %285 ]
  %290 = getelementptr inbounds %struct.hek, ptr %171, i64 0, i32 1
  %291 = load i32, ptr %290, align 4, !tbaa !162
  %292 = icmp eq i32 %291, 3
  br i1 %292, label %293, label %367, !prof !529

293:                                              ; preds = %288
  %294 = getelementptr inbounds %struct.hek, ptr %171, i64 0, i32 2
  %295 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %294, ptr noundef nonnull dereferenceable(4) @.str.28) #11
  %296 = icmp eq i32 %295, 0
  %297 = icmp ne ptr %289, null
  %298 = select i1 %296, i1 %297, i1 false, !prof !530
  br i1 %298, label %299, label %367, !prof !530

299:                                              ; preds = %293
  %300 = getelementptr inbounds %struct.hek, ptr %289, i64 0, i32 1
  %301 = load i32, ptr %300, align 4, !tbaa !162
  %302 = icmp eq i32 %301, 8
  br i1 %302, label %303, label %367

303:                                              ; preds = %299
  %304 = getelementptr inbounds %struct.hek, ptr %289, i64 0, i32 2
  %305 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %304, ptr noundef nonnull dereferenceable(9) @.str.29) #11
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %367

307:                                              ; preds = %303
  %308 = load ptr, ptr %152, align 8, !tbaa !172
  %309 = icmp eq ptr %308, null
  br i1 %309, label %318, label %310

310:                                              ; preds = %307
  %311 = getelementptr inbounds %struct.sv, ptr %308, i64 0, i32 2
  %312 = load i32, ptr %311, align 4, !tbaa !148
  %313 = and i32 %312, 1024
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %318, label %315

315:                                              ; preds = %310
  %316 = tail call ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef nonnull %0, ptr noundef nonnull %308, i32 noundef 0)
  %317 = icmp eq ptr %316, null
  br i1 %317, label %318, label %355

318:                                              ; preds = %315, %310, %307
  br i1 %1, label %361, label %319

319:                                              ; preds = %318
  br i1 %309, label %325, label %320

320:                                              ; preds = %319
  %321 = getelementptr inbounds %struct.sv, ptr %308, i64 0, i32 2
  %322 = load i32, ptr %321, align 4, !tbaa !148
  %323 = and i32 %322, 1024
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %327

325:                                              ; preds = %320, %319
  %326 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.30, i64 noundef 3, i32 noundef 524288) #10
  br label %327

327:                                              ; preds = %320, %325
  %328 = phi ptr [ %326, %325 ], [ %308, %320 ]
  %329 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %330 = load ptr, ptr %151, align 8, !tbaa !156
  %331 = getelementptr inbounds %struct.gp, ptr %330, i64 0, i32 3
  %332 = load i32, ptr %331, align 8, !tbaa !207
  %333 = icmp eq i32 %332, 0
  %334 = select i1 %333, ptr @.str.33, ptr @.str.32
  %335 = load i32, ptr %329, align 4, !tbaa !249
  %336 = and i32 %335, 33554432
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %353, label %338

338:                                              ; preds = %327
  %339 = load ptr, ptr %5, align 8, !tbaa !156
  %340 = load ptr, ptr %0, align 8, !tbaa !252
  %341 = getelementptr inbounds %struct.xpvhv, ptr %340, i64 0, i32 3
  %342 = load i64, ptr %341, align 8, !tbaa !253
  %343 = getelementptr ptr, ptr %339, i64 %342
  %344 = getelementptr ptr, ptr %343, i64 1
  %345 = load ptr, ptr %344, align 8, !tbaa !156
  %346 = icmp eq ptr %345, null
  br i1 %346, label %353, label %347

347:                                              ; preds = %338
  %348 = getelementptr i8, ptr %343, i64 36
  %349 = load i32, ptr %348, align 4, !tbaa !255
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %353, label %351

351:                                              ; preds = %347
  %352 = load ptr, ptr %345, align 8, !tbaa !155
  br label %353

353:                                              ; preds = %347, %327, %338, %351
  %354 = phi ptr [ %352, %351 ], [ null, %338 ], [ null, %327 ], [ %345, %347 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.31, ptr noundef nonnull %334, ptr noundef %328, ptr noundef nonnull %144, ptr noundef %354) #10
  br label %355

355:                                              ; preds = %353, %315
  %356 = phi ptr [ %316, %315 ], [ null, %353 ]
  %357 = getelementptr inbounds %struct.gv, ptr %356, i64 0, i32 3
  %358 = load ptr, ptr %357, align 8, !tbaa !156
  %359 = getelementptr inbounds %struct.gp, ptr %358, i64 0, i32 2
  %360 = load ptr, ptr %359, align 8, !tbaa !195
  br label %361

361:                                              ; preds = %318, %355
  %362 = phi ptr [ %360, %355 ], [ %154, %318 ]
  %363 = phi ptr [ %356, %355 ], [ %148, %318 ]
  %364 = phi i1 [ true, %355 ], [ false, %318 ]
  %365 = phi i32 [ %139, %355 ], [ -1, %318 ]
  %366 = select i1 %364, i32 1, i32 %140
  br label %367

367:                                              ; preds = %361, %288, %293, %299, %303
  %368 = phi ptr [ %154, %303 ], [ %154, %299 ], [ %154, %293 ], [ %154, %288 ], [ %362, %361 ]
  %369 = phi ptr [ %148, %303 ], [ %148, %299 ], [ %148, %293 ], [ %148, %288 ], [ %363, %361 ]
  %370 = phi i32 [ 1, %303 ], [ 1, %299 ], [ 1, %293 ], [ 1, %288 ], [ %366, %361 ]
  %371 = phi i1 [ true, %303 ], [ true, %299 ], [ true, %293 ], [ true, %288 ], [ %364, %361 ]
  %372 = phi i32 [ %139, %303 ], [ %139, %299 ], [ %139, %293 ], [ %139, %288 ], [ %365, %361 ]
  br i1 %371, label %376, label %392, !prof !528

373:                                              ; preds = %156, %150, %137
  %374 = phi ptr [ %154, %156 ], [ null, %150 ], [ null, %137 ]
  br i1 %149, label %376, label %375, !prof !531

375:                                              ; preds = %373
  br label %376

376:                                              ; preds = %373, %375, %367
  %377 = phi ptr [ %368, %367 ], [ %148, %375 ], [ %374, %373 ]
  %378 = phi ptr [ %369, %367 ], [ %148, %375 ], [ null, %373 ]
  %379 = phi i32 [ %370, %367 ], [ 1, %375 ], [ %140, %373 ]
  %380 = phi i32 [ %372, %367 ], [ %139, %375 ], [ %139, %373 ]
  %381 = icmp eq ptr %377, null
  br i1 %381, label %386, label %382, !prof !527

382:                                              ; preds = %376
  %383 = getelementptr inbounds %struct.sv, ptr %377, i64 0, i32 1
  %384 = load i32, ptr %383, align 8, !tbaa !227
  %385 = add i32 %384, 1
  store i32 %385, ptr %383, align 8, !tbaa !227
  br label %386

386:                                              ; preds = %376, %382
  %387 = getelementptr inbounds %struct.am_table, ptr %3, i64 0, i32 4, i64 %138
  store ptr %377, ptr %387, align 8, !tbaa !155
  %388 = icmp eq ptr %378, null
  br i1 %388, label %392, label %389, !prof !527

389:                                              ; preds = %386
  %390 = trunc i64 %138 to i32
  switch i32 %390, label %392 [
    i32 1, label %391
    i32 2, label %391
    i32 3, label %391
    i32 4, label %391
    i32 5, label %391
    i32 29, label %391
  ], !prof !532

391:                                              ; preds = %389, %389, %389, %389, %389, %389
  br label %392

392:                                              ; preds = %367, %386, %389, %391
  %393 = phi i8 [ %141, %389 ], [ 1, %391 ], [ %141, %386 ], [ %141, %367 ]
  %394 = phi i32 [ %379, %389 ], [ %379, %391 ], [ %379, %386 ], [ %370, %367 ]
  %395 = phi i1 [ true, %389 ], [ true, %391 ], [ true, %386 ], [ false, %367 ]
  %396 = phi i32 [ %380, %389 ], [ %380, %391 ], [ %380, %386 ], [ %372, %367 ]
  br i1 %395, label %134, label %414, !prof !533

397:                                              ; preds = %134
  %398 = and i8 %393, 1
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %400, label %409, !prof !201

400:                                              ; preds = %397
  %401 = load ptr, ptr %5, align 8, !tbaa !156
  %402 = load ptr, ptr %0, align 8, !tbaa !252
  %403 = getelementptr inbounds %struct.xpvhv, ptr %402, i64 0, i32 3
  %404 = load i64, ptr %403, align 8, !tbaa !253
  %405 = getelementptr ptr, ptr %401, i64 %404
  %406 = getelementptr i8, ptr %405, i64 60
  %407 = load i32, ptr %406, align 4, !tbaa !478
  %408 = or i32 %407, 2
  store i32 %408, ptr %406, align 4, !tbaa !478
  br label %409

409:                                              ; preds = %400, %397
  %410 = icmp eq i32 %394, 0
  br i1 %410, label %414, label %411, !prof !201

411:                                              ; preds = %409
  %412 = load i8, ptr %3, align 8, !tbaa !516
  %413 = or i8 %412, 1
  store i8 %413, ptr %3, align 8, !tbaa !516
  call void @Perl_sv_magic(ptr noundef nonnull %0, ptr noundef null, i32 noundef 99, ptr noundef nonnull %3, i32 noundef 608) #10
  br label %414

414:                                              ; preds = %392, %409, %52, %411
  %415 = phi i32 [ 1, %411 ], [ 2, %52 ], [ 0, %409 ], [ 1, %392 ]
  %416 = phi i32 [ 1, %411 ], [ %41, %52 ], [ %396, %409 ], [ %396, %392 ]
  switch i32 %415, label %420 [
    i32 0, label %417
    i32 2, label %417
  ], !prof !534

417:                                              ; preds = %414, %414
  %418 = load i8, ptr %3, align 8, !tbaa !516
  %419 = and i8 %418, -2
  store i8 %419, ptr %3, align 8, !tbaa !516
  call void @Perl_sv_magic(ptr noundef nonnull %0, ptr noundef null, i32 noundef 99, ptr noundef nonnull %3, i32 noundef 8) #10
  br label %420

420:                                              ; preds = %38, %417, %414
  %421 = phi i32 [ %416, %414 ], [ 0, %417 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 608, ptr nonnull %3) #10
  ret i32 %421
}

declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_mro_meta_init(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_sv_unmagic(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_gv_handler(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 !prof !206 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %86, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !249
  %7 = and i32 %6, 33554432
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %86, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !156
  %12 = load ptr, ptr %0, align 8, !tbaa !252
  %13 = getelementptr inbounds %struct.xpvhv, ptr %12, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !253
  %15 = getelementptr ptr, ptr %11, i64 %14
  %16 = getelementptr ptr, ptr %15, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !156
  %18 = icmp eq ptr %17, null
  br i1 %18, label %86, label %19

19:                                               ; preds = %9
  %20 = getelementptr i8, ptr %15, i64 36
  %21 = load i32, ptr %20, align 4, !tbaa !255
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %17, align 8, !tbaa !155
  %25 = icmp eq ptr %24, null
  br i1 %25, label %86, label %26

26:                                               ; preds = %19, %23
  %27 = getelementptr ptr, ptr %15, i64 5
  %28 = load ptr, ptr %27, align 8, !tbaa !258
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %0) #10
  br label %32

32:                                               ; preds = %26, %30
  %33 = phi ptr [ %31, %30 ], [ %28, %26 ]
  %34 = load i32, ptr @PL_sub_generation, align 4, !tbaa !174
  %35 = getelementptr inbounds %struct.mro_meta, ptr %33, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !520
  %37 = add i32 %36, %34
  %38 = getelementptr inbounds %struct.mro_meta, ptr %33, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !259
  %40 = add i32 %37, %39
  %41 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 99) #10
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %32, %48
  %44 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %0, i1 noundef zeroext false)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %86, label %46

46:                                               ; preds = %43
  %47 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 99) #10
  br label %48

48:                                               ; preds = %46, %32
  %49 = phi ptr [ %41, %32 ], [ %47, %46 ]
  %50 = getelementptr inbounds %struct.magic, ptr %49, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !513
  %52 = getelementptr inbounds %struct.am_table, ptr %51, i64 0, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !522
  %54 = icmp eq i32 %53, %40
  br i1 %54, label %55, label %43

55:                                               ; preds = %48
  %56 = load i8, ptr %51, align 8, !tbaa !516
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %86, label %59

59:                                               ; preds = %55
  %60 = sext i32 %1 to i64
  %61 = getelementptr inbounds %struct.am_table, ptr %51, i64 0, i32 4, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !155
  %63 = icmp eq ptr %62, null
  br i1 %63, label %85, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.cv, ptr %62, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !315
  %67 = and i32 %66, 255
  %68 = icmp eq i32 %67, 9
  br i1 %68, label %69, label %85

69:                                               ; preds = %64
  %70 = getelementptr inbounds [75 x ptr], ptr @PL_AMG_names, i64 0, i64 %60
  %71 = load ptr, ptr %70, align 8, !tbaa !155
  %72 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %71) #11
  %73 = tail call ptr @Perl_gv_fetchmethod_pvn_flags(ptr noundef nonnull %0, ptr noundef %71, i64 noundef %72, i32 noundef 256)
  %74 = icmp eq ptr %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.gv, ptr %73, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !156
  %78 = getelementptr inbounds %struct.gp, ptr %77, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !195
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %75, %69
  br label %82

82:                                               ; preds = %75, %81
  %83 = phi i1 [ true, %81 ], [ false, %75 ]
  %84 = phi ptr [ undef, %81 ], [ %79, %75 ]
  br i1 %83, label %85, label %86

85:                                               ; preds = %82, %64, %59
  br label %86

86:                                               ; preds = %23, %55, %85, %82, %43, %2, %9, %4
  %87 = phi ptr [ null, %4 ], [ null, %9 ], [ null, %2 ], [ null, %43 ], [ %62, %85 ], [ %84, %82 ], [ null, %55 ], [ null, %23 ]
  ret ptr %87
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i1 @Perl_try_amagic_un(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 !prof !206 {
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !155
  %4 = load ptr, ptr %3, align 8, !tbaa !155
  %5 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !148
  %7 = and i32 %6, 2097152
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @Perl_mg_get(ptr noundef %4) #10
  br label %11

11:                                               ; preds = %2, %9
  %12 = load i32, ptr %5, align 4, !tbaa !148
  %13 = and i32 %12, 2048
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %56, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !156
  %18 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !148
  %20 = and i32 %19, 1048576
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %56, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %17, align 8, !tbaa !242
  %24 = load ptr, ptr %23, align 8, !tbaa !535
  %25 = getelementptr inbounds %struct.hv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !249
  %27 = and i32 %26, 268435456
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %56, label %29

29:                                               ; preds = %22
  %30 = and i32 %1, 128
  %31 = or disjoint i32 %30, 9
  %32 = tail call ptr @Perl_amagic_call(ptr noundef %4, ptr noundef nonnull @PL_sv_undef, i32 noundef %0, i32 noundef %31)
  %33 = icmp eq ptr %32, null
  br i1 %33, label %56, label %34

34:                                               ; preds = %29
  %35 = and i32 %1, 32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = load ptr, ptr @PL_curpad, align 8, !tbaa !155
  %39 = load ptr, ptr @PL_op, align 8, !tbaa !155
  %40 = getelementptr inbounds %struct.op, ptr %39, i64 0, i32 3
  %41 = load i64, ptr %40, align 8, !tbaa !537
  %42 = getelementptr inbounds ptr, ptr %38, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !155
  %44 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !148
  %46 = and i32 %45, 131072
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  tail call void @Perl_sv_setsv_flags(ptr noundef %43, ptr noundef nonnull %32, i32 noundef 1538) #10
  %49 = load i32, ptr %44, align 4, !tbaa !148
  %50 = and i32 %49, 4194304
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = tail call i32 @Perl_mg_set(ptr noundef %43) #10
  br label %54

54:                                               ; preds = %48, %52, %37, %34
  %55 = phi ptr [ %32, %34 ], [ %43, %48 ], [ %43, %52 ], [ %32, %37 ]
  store ptr %55, ptr %3, align 8, !tbaa !155
  store ptr %3, ptr @PL_stack_sp, align 8, !tbaa !155
  br label %65

56:                                               ; preds = %29, %22, %15, %11
  %57 = and i32 %1, 16
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load i32, ptr %5, align 4, !tbaa !148
  %61 = and i32 %60, 2048
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = tail call ptr @Perl_sv_2num(ptr noundef %4) #10
  store ptr %64, ptr %3, align 8, !tbaa !155
  br label %65

65:                                               ; preds = %56, %59, %63, %54
  %66 = phi i1 [ true, %54 ], [ false, %63 ], [ false, %59 ], [ false, %56 ]
  ret i1 %66
}

declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_amagic_call(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 !prof !519 {
  %5 = alloca %struct.binop, align 8
  %6 = and i32 %3, 4
  %7 = icmp eq i32 %6, 0
  %8 = lshr exact i32 %6, 2
  %9 = load ptr, ptr @PL_curcop, align 8, !tbaa !155
  %10 = getelementptr inbounds %struct.cop, ptr %9, i64 0, i32 10
  %11 = load i32, ptr %10, align 8, !tbaa !339
  %12 = and i32 %11, 16777216
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14, !prof !292

14:                                               ; preds = %4
  %15 = tail call zeroext i1 @Perl_amagic_is_enabled(i32 noundef %2)
  br i1 %15, label %16, label %1043

16:                                               ; preds = %14, %4
  %17 = and i32 %3, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %94, !prof !292

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !148
  %22 = and i32 %21, 2048
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %94, label %24, !prof !291

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !156
  %27 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !148
  %29 = and i32 %28, 1048576
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %94, label %31, !prof !291

31:                                               ; preds = %24
  %32 = load ptr, ptr %26, align 8, !tbaa !242
  %33 = load ptr, ptr %32, align 8, !tbaa !535
  %34 = getelementptr inbounds %struct.hv, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !249
  %36 = and i32 %35, 268435456
  %37 = icmp eq i32 %36, 0
  %38 = icmp eq ptr %33, null
  %39 = or i1 %38, %37
  br i1 %39, label %94, label %40, !prof !291

40:                                               ; preds = %31
  %41 = and i32 %35, 33554432
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %63, label %43, !prof !291

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.hv, ptr %33, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !156
  %46 = load ptr, ptr %33, align 8, !tbaa !252
  %47 = getelementptr inbounds %struct.xpvhv, ptr %46, i64 0, i32 3
  %48 = load i64, ptr %47, align 8, !tbaa !253
  %49 = getelementptr ptr, ptr %45, i64 %48
  %50 = getelementptr ptr, ptr %49, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !156
  %52 = icmp eq ptr %51, null
  br i1 %52, label %63, label %53, !prof !291

53:                                               ; preds = %43
  %54 = getelementptr i8, ptr %49, i64 36
  %55 = load i32, ptr %54, align 4, !tbaa !255
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57, !prof !292

57:                                               ; preds = %53
  %58 = load ptr, ptr %51, align 8, !tbaa !155
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %53, %57
  %61 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %33, i1 noundef zeroext false)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66, !prof !539

63:                                               ; preds = %57, %40, %43, %60
  %64 = load i32, ptr %34, align 4, !tbaa !249
  %65 = and i32 %64, -268435457
  store i32 %65, ptr %34, align 4, !tbaa !249
  br label %94

66:                                               ; preds = %60
  %67 = tail call ptr @Perl_mg_find(ptr noundef nonnull %33, i32 noundef 99) #10
  %68 = icmp eq ptr %67, null
  br i1 %68, label %94, label %69, !prof !297

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.magic, ptr %67, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !513
  %72 = load i8, ptr %71, align 8, !tbaa !516
  %73 = and i8 %72, 1
  %74 = icmp eq i8 %73, 0
  %75 = getelementptr inbounds %struct.am_table, ptr %71, i64 0, i32 4
  %76 = select i1 %74, ptr null, ptr %71, !prof !297
  %77 = select i1 %74, ptr null, ptr %75, !prof !297
  br i1 %74, label %94, label %78, !prof !297

78:                                               ; preds = %69
  %79 = add nsw i32 %8, %2
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds ptr, ptr %77, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !155
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %610, !prof !454

84:                                               ; preds = %78
  br i1 %7, label %94, label %85, !prof !194

85:                                               ; preds = %84
  %86 = getelementptr inbounds %struct.am_table, ptr %76, i64 0, i32 1
  %87 = load i8, ptr %86, align 1, !tbaa !523
  %88 = icmp ugt i8 %87, 1
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = sext i32 %2 to i64
  %91 = getelementptr inbounds ptr, ptr %77, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !155
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %610

94:                                               ; preds = %89, %63, %85, %84, %69, %66, %31, %24, %19, %16
  %95 = phi i32 [ 0, %16 ], [ %79, %85 ], [ %79, %84 ], [ 0, %69 ], [ 0, %66 ], [ 0, %63 ], [ 0, %31 ], [ 0, %24 ], [ 0, %19 ], [ %2, %89 ]
  %96 = phi ptr [ null, %16 ], [ %76, %85 ], [ %76, %84 ], [ %76, %69 ], [ null, %66 ], [ null, %63 ], [ null, %31 ], [ null, %24 ], [ null, %19 ], [ %76, %89 ]
  %97 = phi ptr [ null, %16 ], [ %77, %85 ], [ %77, %84 ], [ null, %69 ], [ null, %66 ], [ null, %63 ], [ null, %31 ], [ null, %24 ], [ null, %19 ], [ %77, %89 ]
  %98 = icmp eq ptr %97, null
  br i1 %98, label %318, label %99, !prof !524

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.am_table, ptr %96, i64 0, i32 1
  %101 = load i8, ptr %100, align 1, !tbaa !523
  %102 = icmp ult i8 %101, 2
  %103 = and i32 %3, 8
  %104 = icmp eq i32 %103, 0
  %105 = or i1 %104, %102
  br i1 %105, label %318, label %106, !prof !194

106:                                              ; preds = %99
  switch i32 %2, label %294 [
    i32 6, label %107
    i32 7, label %116
    i32 8, label %125
    i32 9, label %132
    i32 10, label %139
    i32 11, label %146
    i32 12, label %162
    i32 13, label %185
    i32 14, label %286
    i32 16, label %307
    i32 15, label %307
    i32 73, label %307
    i32 74, label %307
    i32 1, label %293
    i32 2, label %293
    i32 3, label %293
    i32 4, label %293
    i32 5, label %293
  ]

107:                                              ; preds = %106
  %108 = getelementptr inbounds ptr, ptr %97, i64 31
  %109 = load ptr, ptr %108, align 8, !tbaa !155
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %295

111:                                              ; preds = %107
  %112 = getelementptr inbounds ptr, ptr %97, i64 30
  %113 = load ptr, ptr %112, align 8, !tbaa !155
  %114 = icmp eq ptr %113, null
  br i1 %114, label %295, label %115

115:                                              ; preds = %111
  br label %295

116:                                              ; preds = %106
  %117 = getelementptr inbounds ptr, ptr %97, i64 33
  %118 = load ptr, ptr %117, align 8, !tbaa !155
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %295

120:                                              ; preds = %116
  %121 = getelementptr inbounds ptr, ptr %97, i64 32
  %122 = load ptr, ptr %121, align 8, !tbaa !155
  %123 = icmp eq ptr %122, null
  br i1 %123, label %295, label %124

124:                                              ; preds = %120
  br label %295

125:                                              ; preds = %106
  %126 = getelementptr inbounds ptr, ptr %97, i64 9
  %127 = load ptr, ptr %126, align 8, !tbaa !155
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %295

129:                                              ; preds = %125
  %130 = getelementptr inbounds ptr, ptr %97, i64 10
  %131 = load ptr, ptr %130, align 8, !tbaa !155
  br label %295

132:                                              ; preds = %106
  %133 = getelementptr inbounds ptr, ptr %97, i64 10
  %134 = load ptr, ptr %133, align 8, !tbaa !155
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %295

136:                                              ; preds = %132
  %137 = getelementptr inbounds ptr, ptr %97, i64 8
  %138 = load ptr, ptr %137, align 8, !tbaa !155
  br label %295

139:                                              ; preds = %106
  %140 = getelementptr inbounds ptr, ptr %97, i64 9
  %141 = load ptr, ptr %140, align 8, !tbaa !155
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %295

143:                                              ; preds = %139
  %144 = getelementptr inbounds ptr, ptr %97, i64 8
  %145 = load ptr, ptr %144, align 8, !tbaa !155
  br label %295

146:                                              ; preds = %106
  %147 = getelementptr inbounds ptr, ptr %97, i64 8
  %148 = load ptr, ptr %147, align 8, !tbaa !155
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %157

150:                                              ; preds = %146
  %151 = getelementptr inbounds ptr, ptr %97, i64 9
  %152 = load ptr, ptr %151, align 8, !tbaa !155
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = getelementptr inbounds ptr, ptr %97, i64 10
  %156 = load ptr, ptr %155, align 8, !tbaa !155
  br label %157

157:                                              ; preds = %154, %150, %146
  %158 = phi i32 [ 8, %146 ], [ 9, %150 ], [ 10, %154 ]
  %159 = phi ptr [ %148, %146 ], [ %152, %150 ], [ %156, %154 ]
  %160 = icmp ne ptr %159, null
  %161 = zext i1 %160 to i32
  br label %295

162:                                              ; preds = %106
  %163 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !156
  %165 = getelementptr inbounds %struct.sv, ptr %164, i64 0, i32 2
  %166 = load i32, ptr %165, align 4, !tbaa !148
  %167 = and i32 %166, 2296
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %183

169:                                              ; preds = %162
  %170 = tail call ptr @Perl_newSVsv(ptr noundef %164) #10
  %171 = getelementptr inbounds %struct.sv, ptr %170, i64 0, i32 2
  %172 = load i32, ptr %171, align 4, !tbaa !148
  %173 = or i32 %172, 1048576
  store i32 %173, ptr %171, align 4, !tbaa !148
  %174 = load ptr, ptr %164, align 8, !tbaa !242
  %175 = load ptr, ptr %174, align 8, !tbaa !535
  %176 = icmp eq ptr %175, null
  br i1 %176, label %181, label %177

177:                                              ; preds = %169
  %178 = getelementptr inbounds %struct.sv, ptr %175, i64 0, i32 1
  %179 = load i32, ptr %178, align 8, !tbaa !227
  %180 = add i32 %179, 1
  store i32 %180, ptr %178, align 8, !tbaa !227
  br label %181

181:                                              ; preds = %169, %177
  %182 = load ptr, ptr %170, align 8, !tbaa !242
  store ptr %175, ptr %182, align 8, !tbaa !535
  br label %183

183:                                              ; preds = %162, %181
  %184 = phi ptr [ %170, %181 ], [ undef, %162 ]
  br i1 %168, label %307, label %295

185:                                              ; preds = %106
  %186 = getelementptr inbounds ptr, ptr %97, i64 17
  %187 = load ptr, ptr %186, align 8, !tbaa !155
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %193

189:                                              ; preds = %185
  %190 = getelementptr inbounds ptr, ptr %97, i64 58
  %191 = load ptr, ptr %190, align 8, !tbaa !155
  %192 = icmp eq ptr %191, null
  br i1 %192, label %295, label %193

193:                                              ; preds = %189, %185
  %194 = getelementptr inbounds ptr, ptr %97, i64 14
  %195 = load ptr, ptr %194, align 8, !tbaa !155
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %201

197:                                              ; preds = %193
  %198 = getelementptr inbounds ptr, ptr %97, i64 32
  %199 = load ptr, ptr %198, align 8, !tbaa !155
  %200 = icmp eq ptr %199, null
  br i1 %200, label %295, label %201

201:                                              ; preds = %197, %193
  %202 = phi i32 [ 14, %193 ], [ 32, %197 ]
  %203 = phi ptr [ %195, %193 ], [ %199, %197 ]
  %204 = tail call ptr @Perl_newSViv(i64 noundef 0) #10
  %205 = tail call ptr @Perl_sv_2mortal(ptr noundef %204) #10
  br i1 %188, label %265, label %206

206:                                              ; preds = %201
  %207 = tail call ptr @Perl_amagic_call(ptr noundef %0, ptr noundef %205, i32 noundef 17, i32 noundef 1)
  %208 = icmp eq ptr %207, null
  br i1 %208, label %280, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.sv, ptr %207, i64 0, i32 2
  %211 = load i32, ptr %210, align 4, !tbaa !148
  %212 = and i32 %211, 2097152
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %209
  %215 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %207, i32 noundef 2) #10
  br label %280

216:                                              ; preds = %209
  %217 = and i32 %211, 65280
  %218 = icmp ne i32 %217, 0
  %219 = and i32 %211, 255
  %220 = icmp eq i32 %219, 8
  %221 = or i1 %218, %220
  %222 = and i32 %211, 16777471
  %223 = icmp eq i32 %222, 16777226
  %224 = or i1 %223, %221
  br i1 %224, label %225, label %280

225:                                              ; preds = %216
  %226 = and i32 %211, 1024
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %242, label %228

228:                                              ; preds = %225
  %229 = load ptr, ptr %207, align 8, !tbaa !242
  %230 = icmp eq ptr %229, null
  br i1 %230, label %280, label %231

231:                                              ; preds = %228
  %232 = getelementptr inbounds %struct.xpv, ptr %229, i64 0, i32 2
  %233 = load i64, ptr %232, align 8, !tbaa !180
  %234 = icmp ugt i64 %233, 1
  br i1 %234, label %280, label %235

235:                                              ; preds = %231
  %236 = icmp eq i64 %233, 0
  br i1 %236, label %280, label %237

237:                                              ; preds = %235
  %238 = getelementptr inbounds %struct.sv, ptr %207, i64 0, i32 3
  %239 = load ptr, ptr %238, align 8, !tbaa !156
  %240 = load i8, ptr %239, align 1, !tbaa !156
  %241 = icmp ne i8 %240, 48
  br label %280

242:                                              ; preds = %225
  %243 = and i32 %211, 768
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %263, label %245

245:                                              ; preds = %242
  %246 = and i32 %211, 256
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %253, label %248

248:                                              ; preds = %245
  %249 = load ptr, ptr %207, align 8, !tbaa !242
  %250 = getelementptr inbounds %struct.xpviv, ptr %249, i64 0, i32 4
  %251 = load i64, ptr %250, align 8, !tbaa !156
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %280

253:                                              ; preds = %248, %245
  %254 = and i32 %211, 512
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %280, label %256

256:                                              ; preds = %253
  %257 = load ptr, ptr %207, align 8, !tbaa !242
  %258 = getelementptr inbounds %struct.xpvnv, ptr %257, i64 0, i32 5
  %259 = load double, ptr %258, align 8, !tbaa !156
  %260 = fcmp uno double %259, 0.000000e+00
  br i1 %260, label %280, label %261

261:                                              ; preds = %256
  %262 = fcmp une double %259, 0.000000e+00
  br label %280

263:                                              ; preds = %242
  %264 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %207, i32 noundef 0) #10
  br label %280

265:                                              ; preds = %201
  %266 = tail call ptr @Perl_amagic_call(ptr noundef %0, ptr noundef %205, i32 noundef 58, i32 noundef 1)
  %267 = getelementptr inbounds %struct.sv, ptr %266, i64 0, i32 2
  %268 = load i32, ptr %267, align 4, !tbaa !148
  %269 = and i32 %268, 2097664
  %270 = icmp eq i32 %269, 512
  br i1 %270, label %271, label %275

271:                                              ; preds = %265
  %272 = load ptr, ptr %266, align 8, !tbaa !242
  %273 = getelementptr inbounds %struct.xpvnv, ptr %272, i64 0, i32 5
  %274 = load double, ptr %273, align 8, !tbaa !156
  br label %277

275:                                              ; preds = %265
  %276 = tail call double @Perl_sv_2nv_flags(ptr noundef %266, i32 noundef 2) #10
  br label %277

277:                                              ; preds = %275, %271
  %278 = phi double [ %274, %271 ], [ %276, %275 ]
  %279 = fcmp olt double %278, 0.000000e+00
  br label %280

280:                                              ; preds = %256, %206, %248, %261, %253, %228, %235, %237, %231, %216, %263, %214, %277
  %281 = phi i1 [ %279, %277 ], [ false, %206 ], [ %215, %214 ], [ %264, %263 ], [ false, %216 ], [ false, %228 ], [ true, %231 ], [ false, %235 ], [ %241, %237 ], [ true, %248 ], [ false, %253 ], [ %262, %261 ], [ true, %256 ]
  %282 = and i1 %196, %281
  %283 = zext i1 %282 to i32
  %284 = select i1 %282, ptr %0, ptr %1
  %285 = select i1 %282, ptr %205, ptr %0
  br i1 %281, label %295, label %307

286:                                              ; preds = %106
  %287 = getelementptr inbounds ptr, ptr %97, i64 32
  %288 = load ptr, ptr %287, align 8, !tbaa !155
  %289 = icmp eq ptr %288, null
  br i1 %289, label %295, label %290

290:                                              ; preds = %286
  %291 = tail call ptr @Perl_newSViv(i64 noundef 0) #10
  %292 = tail call ptr @Perl_sv_2mortal(ptr noundef %291) #10
  br label %295

293:                                              ; preds = %106, %106, %106, %106, %106
  br label %307

294:                                              ; preds = %106
  br label %307

295:                                              ; preds = %197, %157, %139, %143, %132, %136, %125, %129, %116, %107, %286, %290, %189, %280, %183, %120, %124, %111, %115
  %296 = phi i32 [ 0, %290 ], [ 0, %286 ], [ 0, %280 ], [ 0, %189 ], [ 0, %183 ], [ 0, %120 ], [ 0, %111 ], [ 0, %107 ], [ 1, %115 ], [ 0, %116 ], [ 1, %124 ], [ 0, %129 ], [ 0, %125 ], [ 0, %136 ], [ 0, %132 ], [ 0, %143 ], [ 0, %139 ], [ %161, %157 ], [ 0, %197 ]
  %297 = phi i32 [ 0, %290 ], [ 0, %286 ], [ 0, %280 ], [ 0, %189 ], [ 0, %183 ], [ 1, %120 ], [ 1, %111 ], [ 1, %107 ], [ 0, %115 ], [ 1, %116 ], [ 0, %124 ], [ 0, %129 ], [ 0, %125 ], [ 0, %136 ], [ 0, %132 ], [ 0, %143 ], [ 0, %139 ], [ 0, %157 ], [ 0, %197 ]
  %298 = phi i32 [ %6, %290 ], [ %6, %286 ], [ %6, %280 ], [ %6, %189 ], [ %6, %183 ], [ %6, %120 ], [ %6, %111 ], [ 1, %107 ], [ 1, %115 ], [ 1, %116 ], [ 1, %124 ], [ %6, %129 ], [ %6, %125 ], [ %6, %136 ], [ %6, %132 ], [ %6, %143 ], [ %6, %139 ], [ %6, %157 ], [ %6, %197 ]
  %299 = phi i32 [ 1, %290 ], [ 0, %286 ], [ %283, %280 ], [ 0, %189 ], [ 0, %183 ], [ 0, %120 ], [ 0, %111 ], [ -1, %107 ], [ -1, %115 ], [ -1, %116 ], [ -1, %124 ], [ 0, %129 ], [ 0, %125 ], [ 0, %136 ], [ 0, %132 ], [ 0, %143 ], [ 0, %139 ], [ 0, %157 ], [ 0, %197 ]
  %300 = phi i32 [ 32, %290 ], [ 32, %286 ], [ %202, %280 ], [ %95, %189 ], [ %95, %183 ], [ 32, %120 ], [ 30, %111 ], [ 31, %107 ], [ 30, %115 ], [ 33, %116 ], [ 32, %124 ], [ 10, %129 ], [ 9, %125 ], [ 8, %136 ], [ 10, %132 ], [ 8, %143 ], [ 9, %139 ], [ %158, %157 ], [ 32, %197 ]
  %301 = phi ptr [ %288, %290 ], [ null, %286 ], [ %203, %280 ], [ null, %189 ], [ null, %183 ], [ null, %120 ], [ null, %111 ], [ %109, %107 ], [ %113, %115 ], [ %118, %116 ], [ %122, %124 ], [ %131, %129 ], [ %127, %125 ], [ %138, %136 ], [ %134, %132 ], [ %145, %143 ], [ %141, %139 ], [ %159, %157 ], [ null, %197 ]
  %302 = phi ptr [ %0, %290 ], [ %1, %286 ], [ %284, %280 ], [ %1, %189 ], [ %1, %183 ], [ %1, %120 ], [ %1, %111 ], [ @PL_sv_yes, %107 ], [ @PL_sv_yes, %115 ], [ @PL_sv_yes, %116 ], [ @PL_sv_yes, %124 ], [ %1, %129 ], [ %1, %125 ], [ %1, %136 ], [ %1, %132 ], [ %1, %143 ], [ %1, %139 ], [ %1, %157 ], [ %1, %197 ]
  %303 = phi ptr [ %292, %290 ], [ %0, %286 ], [ %285, %280 ], [ %0, %189 ], [ %0, %183 ], [ %0, %120 ], [ %0, %111 ], [ %0, %107 ], [ %0, %115 ], [ %0, %116 ], [ %0, %124 ], [ %0, %129 ], [ %0, %125 ], [ %0, %136 ], [ %0, %132 ], [ %0, %143 ], [ %0, %139 ], [ %0, %157 ], [ %0, %197 ]
  %304 = phi ptr [ undef, %290 ], [ undef, %286 ], [ %0, %280 ], [ undef, %189 ], [ %184, %183 ], [ undef, %120 ], [ undef, %111 ], [ undef, %107 ], [ undef, %115 ], [ undef, %116 ], [ undef, %124 ], [ undef, %129 ], [ undef, %125 ], [ undef, %136 ], [ undef, %132 ], [ undef, %143 ], [ undef, %139 ], [ undef, %157 ], [ undef, %197 ]
  %305 = icmp eq ptr %301, null
  %306 = select i1 %305, i32 5, i32 0
  br label %307

307:                                              ; preds = %280, %106, %106, %106, %295, %106, %183, %294, %293
  %308 = phi i32 [ 0, %294 ], [ 0, %293 ], [ 0, %183 ], [ 0, %106 ], [ %296, %295 ], [ 0, %106 ], [ 0, %106 ], [ 0, %106 ], [ 0, %280 ]
  %309 = phi i32 [ 0, %294 ], [ 0, %293 ], [ 0, %183 ], [ 0, %106 ], [ %297, %295 ], [ 0, %106 ], [ 0, %106 ], [ 0, %106 ], [ 0, %280 ]
  %310 = phi i32 [ %6, %294 ], [ %6, %293 ], [ %6, %183 ], [ %6, %106 ], [ %298, %295 ], [ %6, %106 ], [ %6, %106 ], [ %6, %106 ], [ %6, %280 ]
  %311 = phi i32 [ 5, %294 ], [ 1, %293 ], [ 1, %183 ], [ 1, %106 ], [ %306, %295 ], [ 1, %106 ], [ 1, %106 ], [ 1, %106 ], [ 1, %280 ]
  %312 = phi i32 [ 0, %294 ], [ 0, %293 ], [ 0, %183 ], [ 0, %106 ], [ %299, %295 ], [ 0, %106 ], [ 0, %106 ], [ 0, %106 ], [ %283, %280 ]
  %313 = phi i32 [ %95, %294 ], [ %95, %293 ], [ %95, %183 ], [ %95, %106 ], [ %300, %295 ], [ %95, %106 ], [ %95, %106 ], [ %95, %106 ], [ %202, %280 ]
  %314 = phi ptr [ null, %294 ], [ null, %293 ], [ null, %183 ], [ null, %106 ], [ %301, %295 ], [ null, %106 ], [ null, %106 ], [ null, %106 ], [ %203, %280 ]
  %315 = phi ptr [ %1, %294 ], [ %1, %293 ], [ %1, %183 ], [ %1, %106 ], [ %302, %295 ], [ %1, %106 ], [ %1, %106 ], [ %1, %106 ], [ %284, %280 ]
  %316 = phi ptr [ %0, %294 ], [ %0, %293 ], [ %0, %183 ], [ %0, %106 ], [ %303, %295 ], [ %0, %106 ], [ %0, %106 ], [ %0, %106 ], [ %285, %280 ]
  %317 = phi ptr [ undef, %294 ], [ %0, %293 ], [ %184, %183 ], [ null, %106 ], [ %304, %295 ], [ null, %106 ], [ null, %106 ], [ null, %106 ], [ %0, %280 ]
  switch i32 %311, label %1043 [
    i32 0, label %610
    i32 5, label %436
  ]

318:                                              ; preds = %99, %94
  %319 = and i32 %3, 1
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %384, !prof !540

321:                                              ; preds = %318
  %322 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %323 = load i32, ptr %322, align 4, !tbaa !148
  %324 = and i32 %323, 2048
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %384, label %326, !prof !194

326:                                              ; preds = %321
  %327 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %328 = load ptr, ptr %327, align 8, !tbaa !156
  %329 = getelementptr inbounds %struct.sv, ptr %328, i64 0, i32 2
  %330 = load i32, ptr %329, align 4, !tbaa !148
  %331 = and i32 %330, 1048576
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %384, label %333

333:                                              ; preds = %326
  %334 = load ptr, ptr %328, align 8, !tbaa !242
  %335 = load ptr, ptr %334, align 8, !tbaa !535
  %336 = getelementptr inbounds %struct.hv, ptr %335, i64 0, i32 2
  %337 = load i32, ptr %336, align 4, !tbaa !249
  %338 = and i32 %337, 268435456
  %339 = icmp eq i32 %338, 0
  %340 = icmp eq ptr %335, null
  %341 = or i1 %340, %339
  br i1 %341, label %384, label %342

342:                                              ; preds = %333
  %343 = and i32 %337, 33554432
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %365, label %345

345:                                              ; preds = %342
  %346 = getelementptr inbounds %struct.hv, ptr %335, i64 0, i32 3
  %347 = load ptr, ptr %346, align 8, !tbaa !156
  %348 = load ptr, ptr %335, align 8, !tbaa !252
  %349 = getelementptr inbounds %struct.xpvhv, ptr %348, i64 0, i32 3
  %350 = load i64, ptr %349, align 8, !tbaa !253
  %351 = getelementptr ptr, ptr %347, i64 %350
  %352 = getelementptr ptr, ptr %351, i64 1
  %353 = load ptr, ptr %352, align 8, !tbaa !156
  %354 = icmp eq ptr %353, null
  br i1 %354, label %365, label %355

355:                                              ; preds = %345
  %356 = getelementptr i8, ptr %351, i64 36
  %357 = load i32, ptr %356, align 4, !tbaa !255
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %362, label %359

359:                                              ; preds = %355
  %360 = load ptr, ptr %353, align 8, !tbaa !155
  %361 = icmp eq ptr %360, null
  br i1 %361, label %365, label %362

362:                                              ; preds = %355, %359
  %363 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %335, i1 noundef zeroext false)
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %359, %342, %345, %362
  %366 = load i32, ptr %336, align 4, !tbaa !249
  %367 = and i32 %366, -268435457
  store i32 %367, ptr %336, align 4, !tbaa !249
  br label %384

368:                                              ; preds = %362
  %369 = tail call ptr @Perl_mg_find(ptr noundef nonnull %335, i32 noundef 99) #10
  %370 = icmp eq ptr %369, null
  br i1 %370, label %384, label %371

371:                                              ; preds = %368
  %372 = getelementptr inbounds %struct.magic, ptr %369, i64 0, i32 7
  %373 = load ptr, ptr %372, align 8, !tbaa !513
  %374 = load i8, ptr %373, align 8, !tbaa !516
  %375 = and i8 %374, 1
  %376 = icmp eq i8 %375, 0
  %377 = select i1 %376, ptr %96, ptr %373
  br i1 %376, label %384, label %378

378:                                              ; preds = %371
  %379 = getelementptr inbounds %struct.am_table, ptr %373, i64 0, i32 4
  %380 = sext i32 %2 to i64
  %381 = getelementptr inbounds ptr, ptr %379, i64 %380
  %382 = load ptr, ptr %381, align 8, !tbaa !155
  %383 = icmp eq ptr %382, null
  br i1 %383, label %384, label %610

384:                                              ; preds = %378, %365, %371, %368, %333, %326, %321, %318
  %385 = phi i32 [ %95, %318 ], [ %95, %371 ], [ %95, %368 ], [ %95, %365 ], [ %95, %333 ], [ %95, %326 ], [ %95, %321 ], [ %2, %378 ]
  %386 = phi ptr [ %96, %318 ], [ %377, %371 ], [ %96, %368 ], [ %96, %365 ], [ %96, %333 ], [ %96, %326 ], [ %96, %321 ], [ %377, %378 ]
  %387 = phi ptr [ %97, %318 ], [ null, %371 ], [ %97, %368 ], [ %97, %365 ], [ %97, %333 ], [ %97, %326 ], [ %97, %321 ], [ %379, %378 ]
  %388 = icmp ne ptr %387, null
  br i1 %388, label %389, label %393, !prof !540

389:                                              ; preds = %384
  %390 = getelementptr inbounds %struct.am_table, ptr %386, i64 0, i32 1
  %391 = load i8, ptr %390, align 1, !tbaa !523
  %392 = icmp ugt i8 %391, 1
  br i1 %392, label %401, label %393, !prof !194

393:                                              ; preds = %389, %384
  br i1 %98, label %436, label %394, !prof !282

394:                                              ; preds = %393
  %395 = getelementptr inbounds %struct.am_table, ptr %96, i64 0, i32 1
  %396 = load i8, ptr %395, align 1, !tbaa !523
  %397 = icmp ugt i8 %396, 1
  %398 = and i32 %3, 8
  %399 = icmp eq i32 %398, 0
  %400 = and i1 %399, %397
  br i1 %400, label %404, label %436

401:                                              ; preds = %389
  %402 = and i32 %3, 8
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %404, label %436, !prof !194

404:                                              ; preds = %394, %401
  switch i32 %2, label %407 [
    i32 71, label %1043
    i32 70, label %1043
    i32 69, label %1043
    i32 68, label %1043
    i32 17, label %405
    i32 18, label %405
    i32 19, label %405
    i32 20, label %405
    i32 21, label %405
    i32 22, label %405
    i32 23, label %406
    i32 24, label %406
    i32 25, label %406
    i32 26, label %406
    i32 27, label %406
    i32 28, label %406
  ], !prof !541

405:                                              ; preds = %404, %404, %404, %404, %404, %404
  br label %407

406:                                              ; preds = %404, %404, %404, %404, %404, %404
  br label %407

407:                                              ; preds = %404, %406, %405
  %408 = phi i1 [ false, %406 ], [ false, %405 ], [ true, %404 ]
  %409 = phi i32 [ 59, %406 ], [ 58, %405 ], [ -1, %404 ]
  br i1 %408, label %432, label %410, !prof !201

410:                                              ; preds = %407
  br i1 %98, label %419, label %411, !prof !201

411:                                              ; preds = %410
  %412 = getelementptr inbounds %struct.am_table, ptr %96, i64 0, i32 1
  %413 = load i8, ptr %412, align 1, !tbaa !523
  %414 = icmp ugt i8 %413, 1
  br i1 %414, label %415, label %419, !prof !194

415:                                              ; preds = %411
  %416 = zext nneg i32 %409 to i64
  %417 = getelementptr inbounds ptr, ptr %97, i64 %416
  %418 = load ptr, ptr %417, align 8, !tbaa !155
  br label %419

419:                                              ; preds = %415, %411, %410
  %420 = phi i32 [ -1, %415 ], [ 0, %411 ], [ 0, %410 ]
  %421 = phi ptr [ %418, %415 ], [ null, %411 ], [ null, %410 ]
  %422 = icmp eq ptr %421, null
  %423 = and i1 %388, %422
  br i1 %423, label %424, label %432, !prof !201

424:                                              ; preds = %419
  %425 = getelementptr inbounds %struct.am_table, ptr %386, i64 0, i32 1
  %426 = load i8, ptr %425, align 1, !tbaa !523
  %427 = icmp ugt i8 %426, 1
  br i1 %427, label %428, label %432

428:                                              ; preds = %424
  %429 = zext nneg i32 %409 to i64
  %430 = getelementptr inbounds ptr, ptr %387, i64 %429
  %431 = load ptr, ptr %430, align 8, !tbaa !155
  br label %432

432:                                              ; preds = %419, %424, %428, %407
  %433 = phi i32 [ 1, %428 ], [ %420, %424 ], [ %420, %419 ], [ 0, %407 ]
  %434 = phi ptr [ %431, %428 ], [ null, %424 ], [ %421, %419 ], [ null, %407 ]
  %435 = icmp eq ptr %434, null
  br i1 %435, label %436, label %610, !prof !201

436:                                              ; preds = %432, %401, %393, %307, %394
  %437 = phi i32 [ 0, %394 ], [ %308, %307 ], [ 0, %393 ], [ 0, %401 ], [ 0, %432 ]
  %438 = phi i32 [ 0, %394 ], [ %309, %307 ], [ 0, %393 ], [ 0, %401 ], [ 0, %432 ]
  %439 = phi i32 [ %6, %394 ], [ %310, %307 ], [ %6, %393 ], [ %6, %401 ], [ %6, %432 ]
  %440 = phi i32 [ %385, %394 ], [ %313, %307 ], [ %385, %393 ], [ %385, %401 ], [ %409, %432 ]
  %441 = phi ptr [ %386, %394 ], [ %96, %307 ], [ %386, %393 ], [ %386, %401 ], [ %386, %432 ]
  %442 = phi ptr [ %387, %394 ], [ %97, %307 ], [ %387, %393 ], [ %387, %401 ], [ %387, %432 ]
  %443 = phi ptr [ %1, %394 ], [ %315, %307 ], [ %1, %393 ], [ %1, %401 ], [ %1, %432 ]
  %444 = phi ptr [ %0, %394 ], [ %316, %307 ], [ %0, %393 ], [ %0, %401 ], [ %0, %432 ]
  %445 = add i32 %2, -1
  %446 = icmp ult i32 %445, 5
  br i1 %446, label %1043, label %447, !prof !542

447:                                              ; preds = %436
  br i1 %98, label %452, label %448, !prof !453

448:                                              ; preds = %447
  %449 = getelementptr inbounds ptr, ptr %97, i64 29
  %450 = load ptr, ptr %449, align 8, !tbaa !155
  %451 = icmp eq ptr %450, null
  br i1 %451, label %452, label %604

452:                                              ; preds = %448, %447
  %453 = icmp eq ptr %442, null
  br i1 %453, label %458, label %454, !prof !453

454:                                              ; preds = %452
  %455 = getelementptr inbounds ptr, ptr %442, i64 29
  %456 = load ptr, ptr %455, align 8, !tbaa !155
  %457 = icmp eq ptr %456, null
  br i1 %457, label %458, label %604

458:                                              ; preds = %454, %452
  br i1 %98, label %463, label %459, !prof !453

459:                                              ; preds = %458
  %460 = getelementptr inbounds %struct.am_table, ptr %96, i64 0, i32 1
  %461 = load i8, ptr %460, align 1, !tbaa !523
  %462 = icmp ugt i8 %461, 2
  br i1 %462, label %463, label %469

463:                                              ; preds = %459, %458
  br i1 %453, label %1043, label %464, !prof !453

464:                                              ; preds = %463
  %465 = getelementptr inbounds %struct.am_table, ptr %441, i64 0, i32 1
  %466 = load i8, ptr %465, align 1, !tbaa !523
  %467 = icmp ugt i8 %466, 2
  %468 = zext i1 %467 to i32
  br i1 %467, label %1043, label %469

469:                                              ; preds = %464, %459
  %470 = phi i32 [ 0, %459 ], [ %468, %464 ]
  %471 = add nsw i32 %8, %2
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds [75 x ptr], ptr @PL_AMG_names, i64 0, i64 %472
  %474 = load ptr, ptr %473, align 8, !tbaa !155
  %475 = getelementptr inbounds i8, ptr %474, i64 1
  %476 = and i32 %3, 8
  %477 = icmp eq i32 %476, 0
  %478 = select i1 %477, ptr @.str.38, ptr @.str.37
  %479 = getelementptr inbounds %struct.sv, ptr %444, i64 0, i32 2
  %480 = load i32, ptr %479, align 4, !tbaa !148
  %481 = and i32 %480, 2048
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %498, label %483

483:                                              ; preds = %469
  %484 = getelementptr inbounds %struct.sv, ptr %444, i64 0, i32 3
  %485 = load ptr, ptr %484, align 8, !tbaa !156
  %486 = getelementptr inbounds %struct.sv, ptr %485, i64 0, i32 2
  %487 = load i32, ptr %486, align 4, !tbaa !148
  %488 = and i32 %487, 1048576
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %498, label %490

490:                                              ; preds = %483
  %491 = load ptr, ptr %485, align 8, !tbaa !242
  %492 = load ptr, ptr %491, align 8, !tbaa !535
  %493 = getelementptr inbounds %struct.hv, ptr %492, i64 0, i32 2
  %494 = load i32, ptr %493, align 4, !tbaa !249
  %495 = and i32 %494, 268435456
  %496 = icmp eq i32 %495, 0
  %497 = select i1 %496, ptr @.str.40, ptr @.str.39
  br label %498

498:                                              ; preds = %490, %483, %469
  %499 = phi ptr [ @.str.40, %483 ], [ @.str.40, %469 ], [ %497, %490 ]
  br i1 %482, label %537, label %500

500:                                              ; preds = %498
  %501 = getelementptr inbounds %struct.sv, ptr %444, i64 0, i32 3
  %502 = load ptr, ptr %501, align 8, !tbaa !156
  %503 = getelementptr inbounds %struct.sv, ptr %502, i64 0, i32 2
  %504 = load i32, ptr %503, align 4, !tbaa !148
  %505 = and i32 %504, 1048576
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %537, label %507

507:                                              ; preds = %500
  %508 = load ptr, ptr %502, align 8, !tbaa !242
  %509 = load ptr, ptr %508, align 8, !tbaa !535
  %510 = getelementptr inbounds %struct.hv, ptr %509, i64 0, i32 2
  %511 = load i32, ptr %510, align 4, !tbaa !249
  %512 = and i32 %511, 268435456
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %537, label %514

514:                                              ; preds = %507
  %515 = and i32 %511, 33554432
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %533, label %517

517:                                              ; preds = %514
  %518 = getelementptr inbounds %struct.hv, ptr %509, i64 0, i32 3
  %519 = load ptr, ptr %518, align 8, !tbaa !156
  %520 = load ptr, ptr %509, align 8, !tbaa !252
  %521 = getelementptr inbounds %struct.xpvhv, ptr %520, i64 0, i32 3
  %522 = load i64, ptr %521, align 8, !tbaa !253
  %523 = getelementptr ptr, ptr %519, i64 %522
  %524 = getelementptr ptr, ptr %523, i64 1
  %525 = load ptr, ptr %524, align 8, !tbaa !156
  %526 = icmp eq ptr %525, null
  br i1 %526, label %533, label %527

527:                                              ; preds = %517
  %528 = getelementptr i8, ptr %523, i64 36
  %529 = load i32, ptr %528, align 4, !tbaa !255
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %533, label %531

531:                                              ; preds = %527
  %532 = load ptr, ptr %525, align 8, !tbaa !155
  br label %533

533:                                              ; preds = %527, %514, %517, %531
  %534 = phi ptr [ %532, %531 ], [ null, %517 ], [ null, %514 ], [ %525, %527 ]
  %535 = tail call ptr @Perl_newSVhek(ptr noundef %534) #10
  %536 = tail call ptr @Perl_sv_2mortal(ptr noundef %535) #10
  br label %537

537:                                              ; preds = %498, %500, %507, %533
  %538 = phi ptr [ %536, %533 ], [ @PL_sv_no, %507 ], [ @PL_sv_no, %500 ], [ @PL_sv_no, %498 ]
  %539 = getelementptr inbounds %struct.sv, ptr %443, i64 0, i32 2
  %540 = load i32, ptr %539, align 4, !tbaa !148
  %541 = and i32 %540, 2048
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %557, label %543

543:                                              ; preds = %537
  %544 = getelementptr inbounds %struct.sv, ptr %443, i64 0, i32 3
  %545 = load ptr, ptr %544, align 8, !tbaa !156
  %546 = getelementptr inbounds %struct.sv, ptr %545, i64 0, i32 2
  %547 = load i32, ptr %546, align 4, !tbaa !148
  %548 = and i32 %547, 1048576
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %557, label %550

550:                                              ; preds = %543
  %551 = load ptr, ptr %545, align 8, !tbaa !242
  %552 = load ptr, ptr %551, align 8, !tbaa !535
  %553 = getelementptr inbounds %struct.hv, ptr %552, i64 0, i32 2
  %554 = load i32, ptr %553, align 4, !tbaa !249
  %555 = and i32 %554, 268435456
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %557, label %559

557:                                              ; preds = %550, %543, %537
  %558 = select i1 %477, ptr @.str.42, ptr @.str.7
  br label %559

559:                                              ; preds = %550, %557
  %560 = phi ptr [ %558, %557 ], [ @.str.41, %550 ]
  br i1 %542, label %598, label %561

561:                                              ; preds = %559
  %562 = getelementptr inbounds %struct.sv, ptr %443, i64 0, i32 3
  %563 = load ptr, ptr %562, align 8, !tbaa !156
  %564 = getelementptr inbounds %struct.sv, ptr %563, i64 0, i32 2
  %565 = load i32, ptr %564, align 4, !tbaa !148
  %566 = and i32 %565, 1048576
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %598, label %568

568:                                              ; preds = %561
  %569 = load ptr, ptr %563, align 8, !tbaa !242
  %570 = load ptr, ptr %569, align 8, !tbaa !535
  %571 = getelementptr inbounds %struct.hv, ptr %570, i64 0, i32 2
  %572 = load i32, ptr %571, align 4, !tbaa !249
  %573 = and i32 %572, 268435456
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %598, label %575

575:                                              ; preds = %568
  %576 = and i32 %572, 33554432
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %594, label %578

578:                                              ; preds = %575
  %579 = getelementptr inbounds %struct.hv, ptr %570, i64 0, i32 3
  %580 = load ptr, ptr %579, align 8, !tbaa !156
  %581 = load ptr, ptr %570, align 8, !tbaa !252
  %582 = getelementptr inbounds %struct.xpvhv, ptr %581, i64 0, i32 3
  %583 = load i64, ptr %582, align 8, !tbaa !253
  %584 = getelementptr ptr, ptr %580, i64 %583
  %585 = getelementptr ptr, ptr %584, i64 1
  %586 = load ptr, ptr %585, align 8, !tbaa !156
  %587 = icmp eq ptr %586, null
  br i1 %587, label %594, label %588

588:                                              ; preds = %578
  %589 = getelementptr i8, ptr %584, i64 36
  %590 = load i32, ptr %589, align 4, !tbaa !255
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %594, label %592

592:                                              ; preds = %588
  %593 = load ptr, ptr %586, align 8, !tbaa !155
  br label %594

594:                                              ; preds = %588, %575, %578, %592
  %595 = phi ptr [ %593, %592 ], [ null, %578 ], [ null, %575 ], [ %586, %588 ]
  %596 = tail call ptr @Perl_newSVhek(ptr noundef %595) #10
  %597 = tail call ptr @Perl_sv_2mortal(ptr noundef %596) #10
  br label %598

598:                                              ; preds = %559, %561, %568, %594
  %599 = phi ptr [ %597, %594 ], [ @PL_sv_no, %568 ], [ @PL_sv_no, %561 ], [ @PL_sv_no, %559 ]
  %600 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.36, ptr noundef nonnull %475, ptr noundef nonnull %478, ptr noundef nonnull %499, ptr noundef %538, ptr noundef nonnull %560, ptr noundef %599) #10
  %601 = tail call ptr @Perl_sv_2mortal(ptr noundef %600) #10
  %602 = icmp eq i32 %470, 0
  br i1 %602, label %603, label %1043

603:                                              ; preds = %598
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.43, ptr noundef %601) #10
  br label %1043

604:                                              ; preds = %454, %448
  %605 = phi i32 [ -1, %448 ], [ 1, %454 ]
  %606 = phi ptr [ %450, %448 ], [ %456, %454 ]
  %607 = or i32 %439, %438
  %608 = icmp ne i32 %607, 0
  %609 = zext i1 %608 to i32
  br label %610

610:                                              ; preds = %432, %378, %78, %89, %307, %604
  %611 = phi i32 [ %437, %604 ], [ %308, %307 ], [ 0, %89 ], [ 0, %78 ], [ 0, %378 ], [ 1, %432 ]
  %612 = phi i32 [ %609, %604 ], [ %309, %307 ], [ 0, %89 ], [ 0, %78 ], [ 0, %378 ], [ 0, %432 ]
  %613 = phi i32 [ %439, %604 ], [ %310, %307 ], [ %6, %89 ], [ %6, %78 ], [ %6, %378 ], [ %6, %432 ]
  %614 = phi i1 [ false, %604 ], [ true, %307 ], [ true, %89 ], [ true, %78 ], [ true, %378 ], [ true, %432 ]
  %615 = phi i64 [ 6, %604 ], [ 5, %307 ], [ 5, %89 ], [ 5, %78 ], [ 5, %378 ], [ 5, %432 ]
  %616 = phi i32 [ %605, %604 ], [ %312, %307 ], [ -1, %89 ], [ -1, %78 ], [ 1, %378 ], [ %433, %432 ]
  %617 = phi i32 [ %440, %604 ], [ %313, %307 ], [ %2, %89 ], [ %79, %78 ], [ %2, %378 ], [ %409, %432 ]
  %618 = phi ptr [ %606, %604 ], [ %314, %307 ], [ %92, %89 ], [ %82, %78 ], [ %382, %378 ], [ %434, %432 ]
  %619 = phi ptr [ %443, %604 ], [ %315, %307 ], [ %1, %89 ], [ %1, %78 ], [ %1, %378 ], [ %1, %432 ]
  %620 = phi ptr [ %444, %604 ], [ %316, %307 ], [ %0, %89 ], [ %0, %78 ], [ %0, %378 ], [ %0, %432 ]
  switch i32 %2, label %630 [
    i32 6, label %621
    i32 7, label %623
    i32 30, label %625
    i32 32, label %625
    i32 34, label %625
    i32 36, label %625
    i32 38, label %625
    i32 40, label %625
    i32 42, label %625
    i32 44, label %625
    i32 68, label %625
    i32 70, label %625
    i32 46, label %625
    i32 50, label %625
    i32 54, label %625
    i32 48, label %625
    i32 52, label %625
    i32 56, label %625
    i32 12, label %627
    i32 1, label %628
    i32 2, label %628
    i32 3, label %628
    i32 4, label %628
    i32 5, label %628
    i32 8, label %629
    i32 9, label %629
    i32 10, label %629
  ], !prof !543

621:                                              ; preds = %610
  %622 = icmp ne i32 %617, 30
  br label %630

623:                                              ; preds = %610
  %624 = icmp ne i32 %617, 32
  br label %630

625:                                              ; preds = %610, %610, %610, %610, %610, %610, %610, %610, %610, %610, %610, %610, %610, %610, %610, %610
  %626 = icmp eq i32 %613, 0
  br label %630

627:                                              ; preds = %610
  br label %630

628:                                              ; preds = %610, %610, %610, %610, %610
  br label %630

629:                                              ; preds = %610, %610, %610
  br label %630

630:                                              ; preds = %625, %623, %621, %610, %629, %628, %627
  %631 = phi i1 [ true, %610 ], [ false, %629 ], [ false, %628 ], [ false, %627 ], [ %622, %621 ], [ %624, %623 ], [ %626, %625 ]
  %632 = icmp eq i32 %616, -1
  br i1 %632, label %633, label %667, !prof !453

633:                                              ; preds = %630
  %634 = add nsw i32 %8, %2
  %635 = icmp eq i32 %634, %617
  br i1 %635, label %636, label %643, !prof !454

636:                                              ; preds = %633
  %637 = icmp ne i32 %613, 0
  %638 = and i32 %2, -2
  %639 = icmp eq i32 %638, 6
  %640 = or i1 %639, %637
  %641 = icmp ne i32 %612, 0
  %642 = select i1 %640, i1 true, i1 %641, !prof !201
  br i1 %642, label %645, label %667, !prof !201

643:                                              ; preds = %633
  %644 = icmp eq i32 %612, 0
  br i1 %644, label %667, label %645, !prof !194

645:                                              ; preds = %643, %636
  %646 = getelementptr inbounds %struct.sv, ptr %620, i64 0, i32 3
  %647 = load ptr, ptr %646, align 8, !tbaa !156
  %648 = getelementptr inbounds %struct.sv, ptr %647, i64 0, i32 1
  %649 = load i32, ptr %648, align 8, !tbaa !227
  %650 = icmp ugt i32 %649, 1
  br i1 %650, label %651, label %667

651:                                              ; preds = %645
  %652 = tail call ptr @Perl_amagic_call(ptr noundef %620, ptr noundef nonnull @PL_sv_undef, i32 noundef 12, i32 noundef 9)
  %653 = icmp eq ptr %652, null
  br i1 %653, label %667, label %654

654:                                              ; preds = %651
  store ptr %652, ptr %646, align 8, !tbaa !156
  %655 = getelementptr inbounds %struct.sv, ptr %620, i64 0, i32 2
  %656 = load i32, ptr %655, align 4, !tbaa !148
  %657 = and i32 %656, 4194304
  %658 = icmp eq i32 %657, 0
  br i1 %658, label %661, label %659

659:                                              ; preds = %654
  %660 = tail call i32 @Perl_mg_set(ptr noundef %620) #10
  br label %661

661:                                              ; preds = %654, %659
  %662 = load i32, ptr %648, align 8, !tbaa !227
  %663 = icmp ugt i32 %662, 1
  br i1 %663, label %664, label %666

664:                                              ; preds = %661
  %665 = add i32 %662, -1
  store i32 %665, ptr %648, align 8, !tbaa !227
  br label %667

666:                                              ; preds = %661
  tail call void @Perl_sv_free2(ptr noundef %647, i32 noundef %662) #10
  br label %667

667:                                              ; preds = %643, %636, %666, %664, %645, %651, %630
  %668 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #10
  %669 = load ptr, ptr @PL_top_env, align 8, !tbaa !155
  %670 = getelementptr inbounds %struct.jmpenv, ptr %669, i64 0, i32 3
  %671 = load i8, ptr %670, align 4, !tbaa !544, !range !318, !noundef !284
  br i1 %631, label %672, label %682, !prof !454

672:                                              ; preds = %667
  %673 = load ptr, ptr @PL_op, align 8, !tbaa !155
  %674 = getelementptr inbounds %struct.op, ptr %673, i64 0, i32 5
  %675 = load i8, ptr %674, align 2, !tbaa !546
  %676 = and i8 %675, 3
  %677 = icmp eq i8 %676, 0
  br i1 %677, label %680, label %678, !prof !201

678:                                              ; preds = %672
  %679 = zext nneg i8 %676 to i32
  br label %682

680:                                              ; preds = %672
  %681 = tail call i32 @Perl_block_gimme() #10
  br label %682

682:                                              ; preds = %678, %680, %667
  %683 = phi i32 [ 2, %667 ], [ %679, %678 ], [ %681, %680 ]
  %684 = load ptr, ptr @PL_top_env, align 8, !tbaa !155
  %685 = getelementptr inbounds %struct.jmpenv, ptr %684, i64 0, i32 3
  store i8 1, ptr %685, align 4, !tbaa !544
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %686 = getelementptr inbounds %struct.binop, ptr %5, i64 0, i32 8
  store ptr %5, ptr %686, align 8, !tbaa !547
  store ptr null, ptr %5, align 8, !tbaa !549
  %687 = getelementptr inbounds %struct.binop, ptr %5, i64 0, i32 5
  store i8 64, ptr %687, align 2, !tbaa !550
  switch i32 %683, label %691 [
    i32 1, label %692
    i32 3, label %688
  ], !prof !455

688:                                              ; preds = %682
  %689 = and i32 %3, 64
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %691, label %692

691:                                              ; preds = %688, %682
  br label %692

692:                                              ; preds = %688, %682, %691
  %693 = phi i8 [ 66, %691 ], [ 65, %682 ], [ 67, %688 ]
  store i8 %693, ptr %687, align 2, !tbaa !550
  %694 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !155
  %695 = getelementptr inbounds %struct.stackinfo, ptr %694, i64 0, i32 3
  %696 = load ptr, ptr %695, align 8, !tbaa !551
  %697 = icmp eq ptr %696, null
  br i1 %697, label %698, label %703, !prof !297

698:                                              ; preds = %692
  %699 = call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #10
  %700 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !155
  %701 = getelementptr inbounds %struct.stackinfo, ptr %699, i64 0, i32 2
  store ptr %700, ptr %701, align 8, !tbaa !553
  %702 = getelementptr inbounds %struct.stackinfo, ptr %700, i64 0, i32 3
  store ptr %699, ptr %702, align 8, !tbaa !551
  br label %703

703:                                              ; preds = %698, %692
  %704 = phi ptr [ %696, %692 ], [ %699, %698 ]
  %705 = getelementptr inbounds %struct.stackinfo, ptr %704, i64 0, i32 6
  store i32 5, ptr %705, align 8, !tbaa !554
  %706 = getelementptr inbounds %struct.stackinfo, ptr %704, i64 0, i32 4
  store i32 -1, ptr %706, align 8, !tbaa !555
  %707 = load ptr, ptr %704, align 8, !tbaa !556
  %708 = load ptr, ptr %707, align 8, !tbaa !273
  %709 = getelementptr inbounds %struct.xpvav, ptr %708, i64 0, i32 2
  store i64 0, ptr %709, align 8, !tbaa !275
  %710 = load ptr, ptr @PL_stack_base, align 8, !tbaa !155
  %711 = ptrtoint ptr %668 to i64
  %712 = ptrtoint ptr %710 to i64
  %713 = sub i64 %711, %712
  %714 = ashr exact i64 %713, 3
  %715 = load ptr, ptr @PL_curstack, align 8, !tbaa !155
  %716 = load ptr, ptr %715, align 8, !tbaa !273
  %717 = getelementptr inbounds %struct.xpvav, ptr %716, i64 0, i32 2
  store i64 %714, ptr %717, align 8, !tbaa !275
  %718 = getelementptr inbounds %struct.av, ptr %707, i64 0, i32 3
  %719 = load ptr, ptr %718, align 8, !tbaa !156
  store ptr %719, ptr @PL_stack_base, align 8, !tbaa !155
  %720 = load ptr, ptr %704, align 8, !tbaa !556
  %721 = load ptr, ptr %720, align 8, !tbaa !273
  %722 = getelementptr inbounds %struct.xpvav, ptr %721, i64 0, i32 3
  %723 = load i64, ptr %722, align 8, !tbaa !557
  %724 = getelementptr inbounds ptr, ptr %719, i64 %723
  store ptr %724, ptr @PL_stack_max, align 8, !tbaa !155
  %725 = load ptr, ptr %704, align 8, !tbaa !556
  %726 = load ptr, ptr %725, align 8, !tbaa !273
  %727 = getelementptr inbounds %struct.xpvav, ptr %726, i64 0, i32 2
  %728 = load i64, ptr %727, align 8, !tbaa !275
  %729 = getelementptr inbounds ptr, ptr %719, i64 %728
  store ptr %729, ptr @PL_stack_sp, align 8, !tbaa !155
  %730 = load ptr, ptr %704, align 8, !tbaa !556
  store ptr %730, ptr @PL_curstack, align 8, !tbaa !155
  store ptr %704, ptr @PL_curstackinfo, align 8, !tbaa !155
  call void @Perl_push_scope() #10
  %731 = load ptr, ptr @PL_op, align 8, !tbaa !155
  call void @Perl_save_pushptr(ptr noundef %731, i32 noundef 18) #10
  store ptr %5, ptr @PL_op, align 8, !tbaa !155
  %732 = load i32, ptr @PL_perldb, align 4, !tbaa !174
  %733 = and i32 %732, 1
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %743, label %735, !prof !453

735:                                              ; preds = %703
  %736 = load ptr, ptr @PL_curstash, align 8, !tbaa !155
  %737 = load ptr, ptr @PL_debstash, align 8, !tbaa !155
  %738 = icmp eq ptr %736, %737
  br i1 %738, label %743, label %739

739:                                              ; preds = %735
  %740 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 6
  %741 = load i8, ptr %740, align 1, !tbaa !558
  %742 = or i8 %741, 64
  store i8 %742, ptr %740, align 1, !tbaa !558
  br label %743

743:                                              ; preds = %739, %735, %703
  %744 = call ptr @Perl_pp_pushmark() #10
  %745 = load ptr, ptr @PL_stack_max, align 8, !tbaa !155
  %746 = ptrtoint ptr %745 to i64
  %747 = ptrtoint ptr %729 to i64
  %748 = sub i64 %746, %747
  %749 = ashr exact i64 %748, 3
  %750 = icmp slt i64 %749, %615
  br i1 %750, label %751, label %753, !prof !297

751:                                              ; preds = %743
  %752 = call ptr @Perl_stack_grow(ptr noundef %729, ptr noundef %729, i64 noundef %615) #10
  br label %753

753:                                              ; preds = %743, %751
  %754 = phi ptr [ %752, %751 ], [ %729, %743 ]
  %755 = icmp sgt i32 %616, 0
  %756 = select i1 %755, ptr %619, ptr %620, !prof !297
  %757 = getelementptr inbounds ptr, ptr %754, i64 1
  store ptr %756, ptr %757, align 8, !tbaa !155
  %758 = select i1 %755, ptr %620, ptr %619, !prof !297
  %759 = getelementptr inbounds ptr, ptr %754, i64 2
  store ptr %758, ptr %759, align 8, !tbaa !155
  %760 = icmp eq i32 %613, 0
  %761 = select i1 %760, ptr @PL_sv_no, ptr @PL_sv_undef, !prof !453
  %762 = select i1 %755, ptr @PL_sv_yes, ptr %761, !prof !297
  %763 = getelementptr inbounds ptr, ptr %754, i64 3
  store ptr %762, ptr %763, align 8, !tbaa !155
  br i1 %614, label %776, label %764, !prof !453

764:                                              ; preds = %753
  %765 = add nsw i32 %8, %2
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds [75 x ptr], ptr @PL_AMG_names, i64 0, i64 %766
  %768 = load ptr, ptr %767, align 8, !tbaa !155
  %769 = getelementptr inbounds i8, ptr %768, i64 1
  %770 = getelementptr inbounds [75 x i8], ptr @PL_AMG_namelens, i64 0, i64 %766
  %771 = load i8, ptr %770, align 1, !tbaa !156
  %772 = zext i8 %771 to i64
  %773 = add nsw i64 %772, -1
  %774 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %769, i64 noundef %773, i32 noundef 524288) #10
  %775 = getelementptr inbounds ptr, ptr %754, i64 4
  store ptr %774, ptr %775, align 8, !tbaa !155
  br label %781

776:                                              ; preds = %753
  %777 = and i32 %3, 128
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %781, label %779, !prof !453

779:                                              ; preds = %776
  %780 = getelementptr inbounds ptr, ptr %754, i64 4
  store ptr @PL_sv_undef, ptr %780, align 8, !tbaa !155
  br label %781

781:                                              ; preds = %776, %779, %764
  %782 = phi ptr [ %775, %764 ], [ %780, %779 ], [ %763, %776 ]
  %783 = and i32 %3, 128
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %787, label %785, !prof !453

785:                                              ; preds = %781
  %786 = getelementptr inbounds ptr, ptr %782, i64 1
  store ptr @PL_sv_yes, ptr %786, align 8, !tbaa !155
  br label %787

787:                                              ; preds = %785, %781
  %788 = phi ptr [ %786, %785 ], [ %782, %781 ]
  %789 = getelementptr inbounds ptr, ptr %788, i64 1
  store ptr %618, ptr %789, align 8, !tbaa !155
  store ptr %789, ptr @PL_stack_sp, align 8, !tbaa !155
  %790 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !155
  %791 = load i32, ptr %790, align 4, !tbaa !174
  %792 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_ppaddr, i64 0, i64 185), align 8, !tbaa !155
  %793 = call ptr %792() #10, !prof !559
  store ptr %793, ptr @PL_op, align 8, !tbaa !155
  %794 = icmp eq ptr %793, null
  br i1 %794, label %798, label %795, !prof !453

795:                                              ; preds = %787
  %796 = load ptr, ptr @PL_runops, align 8, !tbaa !155
  %797 = call i32 %796() #10
  br label %798

798:                                              ; preds = %795, %787
  call void @Perl_pop_scope() #10
  %799 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !155
  %800 = load ptr, ptr @PL_stack_base, align 8, !tbaa !155
  %801 = sext i32 %791 to i64
  %802 = getelementptr ptr, ptr %800, i64 %801
  %803 = ptrtoint ptr %799 to i64
  %804 = ptrtoint ptr %802 to i64
  %805 = sub i64 %803, %804
  switch i32 %683, label %828 [
    i32 1, label %831
    i32 3, label %806
  ], !prof !455

806:                                              ; preds = %798
  %807 = and i32 %3, 64
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %828, label %809

809:                                              ; preds = %806
  %810 = call ptr @Perl_newSV_type(i32 noundef 11) #10
  %811 = call ptr @Perl_sv_2mortal(ptr noundef %810) #10
  %812 = shl i64 %805, 29
  %813 = ashr i64 %812, 32
  call void @Perl_av_extend(ptr noundef %811, i64 noundef %813) #10
  %814 = and i64 %805, 34359738360
  %815 = icmp eq i64 %814, 0
  br i1 %815, label %831, label %816

816:                                              ; preds = %809
  %817 = shl i64 %805, 29
  %818 = ashr i64 %817, 32
  br label %819

819:                                              ; preds = %816, %819
  %820 = phi i64 [ %818, %816 ], [ %822, %819 ]
  %821 = phi ptr [ %799, %816 ], [ %823, %819 ]
  %822 = add nsw i64 %820, -1
  %823 = getelementptr inbounds ptr, ptr %821, i64 -1
  %824 = load ptr, ptr %821, align 8, !tbaa !155
  %825 = call ptr @Perl_av_store(ptr noundef %811, i64 noundef %822, ptr noundef %824) #10
  %826 = and i64 %822, 4294967295
  %827 = icmp eq i64 %826, 0
  br i1 %827, label %831, label %819, !llvm.loop !560

828:                                              ; preds = %806, %798
  %829 = getelementptr inbounds ptr, ptr %799, i64 -1
  %830 = load ptr, ptr %799, align 8, !tbaa !155
  br label %831

831:                                              ; preds = %819, %809, %798, %828
  %832 = phi ptr [ %829, %828 ], [ %802, %798 ], [ %799, %809 ], [ %823, %819 ]
  %833 = phi ptr [ %830, %828 ], [ @PL_sv_undef, %798 ], [ %811, %809 ], [ %811, %819 ]
  store ptr %832, ptr @PL_stack_sp, align 8, !tbaa !155
  %834 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !155
  %835 = getelementptr inbounds %struct.stackinfo, ptr %834, i64 0, i32 2
  %836 = load ptr, ptr %835, align 8, !tbaa !553
  %837 = icmp eq ptr %836, null
  br i1 %837, label %838, label %839, !prof !297

838:                                              ; preds = %831
  call void @Perl_croak_popstack() #10
  br label %839

839:                                              ; preds = %831, %838
  %840 = load ptr, ptr @PL_stack_base, align 8, !tbaa !155
  %841 = ptrtoint ptr %832 to i64
  %842 = ptrtoint ptr %840 to i64
  %843 = sub i64 %841, %842
  %844 = ashr exact i64 %843, 3
  %845 = load ptr, ptr @PL_curstack, align 8, !tbaa !155
  %846 = load ptr, ptr %845, align 8, !tbaa !273
  %847 = getelementptr inbounds %struct.xpvav, ptr %846, i64 0, i32 2
  store i64 %844, ptr %847, align 8, !tbaa !275
  %848 = load ptr, ptr %836, align 8, !tbaa !556
  %849 = getelementptr inbounds %struct.av, ptr %848, i64 0, i32 3
  %850 = load ptr, ptr %849, align 8, !tbaa !156
  store ptr %850, ptr @PL_stack_base, align 8, !tbaa !155
  %851 = load ptr, ptr %836, align 8, !tbaa !556
  %852 = load ptr, ptr %851, align 8, !tbaa !273
  %853 = getelementptr inbounds %struct.xpvav, ptr %852, i64 0, i32 3
  %854 = load i64, ptr %853, align 8, !tbaa !557
  %855 = getelementptr inbounds ptr, ptr %850, i64 %854
  store ptr %855, ptr @PL_stack_max, align 8, !tbaa !155
  %856 = load ptr, ptr %836, align 8, !tbaa !556
  %857 = load ptr, ptr %856, align 8, !tbaa !273
  %858 = getelementptr inbounds %struct.xpvav, ptr %857, i64 0, i32 2
  %859 = load i64, ptr %858, align 8, !tbaa !275
  %860 = getelementptr inbounds ptr, ptr %850, i64 %859
  store ptr %860, ptr @PL_stack_sp, align 8, !tbaa !155
  %861 = load ptr, ptr %836, align 8, !tbaa !556
  store ptr %861, ptr @PL_curstack, align 8, !tbaa !155
  store ptr %836, ptr @PL_curstackinfo, align 8, !tbaa !155
  %862 = load ptr, ptr @PL_top_env, align 8, !tbaa !155
  %863 = getelementptr inbounds %struct.jmpenv, ptr %862, i64 0, i32 3
  store i8 %671, ptr %863, align 4, !tbaa !544
  %864 = icmp eq i32 %611, 0
  br i1 %864, label %1025, label %865, !prof !454

865:                                              ; preds = %839
  switch i32 %2, label %1021 [
    i32 18, label %866
    i32 24, label %866
    i32 17, label %881
    i32 23, label %881
    i32 20, label %896
    i32 26, label %896
    i32 19, label %911
    i32 25, label %911
    i32 21, label %926
    i32 27, label %926
    i32 22, label %941
    i32 28, label %941
    i32 6, label %956
    i32 7, label %956
    i32 11, label %959
  ], !prof !561

866:                                              ; preds = %865, %865
  %867 = getelementptr inbounds %struct.sv, ptr %833, i64 0, i32 2
  %868 = load i32, ptr %867, align 4, !tbaa !148
  %869 = and i32 %868, 2097408
  %870 = icmp eq i32 %869, 256
  br i1 %870, label %871, label %875

871:                                              ; preds = %866
  %872 = load ptr, ptr %833, align 8, !tbaa !242
  %873 = getelementptr inbounds %struct.xpviv, ptr %872, i64 0, i32 4
  %874 = load i64, ptr %873, align 8, !tbaa !156
  br label %877

875:                                              ; preds = %866
  %876 = call i64 @Perl_sv_2iv_flags(ptr noundef %833, i32 noundef 2) #10
  br label %877

877:                                              ; preds = %875, %871
  %878 = phi i64 [ %874, %871 ], [ %876, %875 ]
  %879 = icmp slt i64 %878, 1
  %880 = zext i1 %879 to i32
  br label %1021

881:                                              ; preds = %865, %865
  %882 = getelementptr inbounds %struct.sv, ptr %833, i64 0, i32 2
  %883 = load i32, ptr %882, align 4, !tbaa !148
  %884 = and i32 %883, 2097408
  %885 = icmp eq i32 %884, 256
  br i1 %885, label %886, label %890

886:                                              ; preds = %881
  %887 = load ptr, ptr %833, align 8, !tbaa !242
  %888 = getelementptr inbounds %struct.xpviv, ptr %887, i64 0, i32 4
  %889 = load i64, ptr %888, align 8, !tbaa !156
  br label %892

890:                                              ; preds = %881
  %891 = call i64 @Perl_sv_2iv_flags(ptr noundef %833, i32 noundef 2) #10
  br label %892

892:                                              ; preds = %890, %886
  %893 = phi i64 [ %889, %886 ], [ %891, %890 ]
  %894 = lshr i64 %893, 63
  %895 = trunc i64 %894 to i32
  br label %1021

896:                                              ; preds = %865, %865
  %897 = getelementptr inbounds %struct.sv, ptr %833, i64 0, i32 2
  %898 = load i32, ptr %897, align 4, !tbaa !148
  %899 = and i32 %898, 2097408
  %900 = icmp eq i32 %899, 256
  br i1 %900, label %901, label %905

901:                                              ; preds = %896
  %902 = load ptr, ptr %833, align 8, !tbaa !242
  %903 = getelementptr inbounds %struct.xpviv, ptr %902, i64 0, i32 4
  %904 = load i64, ptr %903, align 8, !tbaa !156
  br label %907

905:                                              ; preds = %896
  %906 = call i64 @Perl_sv_2iv_flags(ptr noundef %833, i32 noundef 2) #10
  br label %907

907:                                              ; preds = %905, %901
  %908 = phi i64 [ %904, %901 ], [ %906, %905 ]
  %909 = icmp sgt i64 %908, -1
  %910 = zext i1 %909 to i32
  br label %1021

911:                                              ; preds = %865, %865
  %912 = getelementptr inbounds %struct.sv, ptr %833, i64 0, i32 2
  %913 = load i32, ptr %912, align 4, !tbaa !148
  %914 = and i32 %913, 2097408
  %915 = icmp eq i32 %914, 256
  br i1 %915, label %916, label %920

916:                                              ; preds = %911
  %917 = load ptr, ptr %833, align 8, !tbaa !242
  %918 = getelementptr inbounds %struct.xpviv, ptr %917, i64 0, i32 4
  %919 = load i64, ptr %918, align 8, !tbaa !156
  br label %922

920:                                              ; preds = %911
  %921 = call i64 @Perl_sv_2iv_flags(ptr noundef %833, i32 noundef 2) #10
  br label %922

922:                                              ; preds = %920, %916
  %923 = phi i64 [ %919, %916 ], [ %921, %920 ]
  %924 = icmp sgt i64 %923, 0
  %925 = zext i1 %924 to i32
  br label %1021

926:                                              ; preds = %865, %865
  %927 = getelementptr inbounds %struct.sv, ptr %833, i64 0, i32 2
  %928 = load i32, ptr %927, align 4, !tbaa !148
  %929 = and i32 %928, 2097408
  %930 = icmp eq i32 %929, 256
  br i1 %930, label %931, label %935, !prof !194

931:                                              ; preds = %926
  %932 = load ptr, ptr %833, align 8, !tbaa !242
  %933 = getelementptr inbounds %struct.xpviv, ptr %932, i64 0, i32 4
  %934 = load i64, ptr %933, align 8, !tbaa !156
  br label %937

935:                                              ; preds = %926
  %936 = call i64 @Perl_sv_2iv_flags(ptr noundef %833, i32 noundef 2) #10
  br label %937

937:                                              ; preds = %935, %931
  %938 = phi i64 [ %934, %931 ], [ %936, %935 ]
  %939 = icmp eq i64 %938, 0
  %940 = zext i1 %939 to i32
  br label %1021

941:                                              ; preds = %865, %865
  %942 = getelementptr inbounds %struct.sv, ptr %833, i64 0, i32 2
  %943 = load i32, ptr %942, align 4, !tbaa !148
  %944 = and i32 %943, 2097408
  %945 = icmp eq i32 %944, 256
  br i1 %945, label %946, label %950

946:                                              ; preds = %941
  %947 = load ptr, ptr %833, align 8, !tbaa !242
  %948 = getelementptr inbounds %struct.xpviv, ptr %947, i64 0, i32 4
  %949 = load i64, ptr %948, align 8, !tbaa !156
  br label %952

950:                                              ; preds = %941
  %951 = call i64 @Perl_sv_2iv_flags(ptr noundef %833, i32 noundef 2) #10
  br label %952

952:                                              ; preds = %950, %946
  %953 = phi i64 [ %949, %946 ], [ %951, %950 ]
  %954 = icmp ne i64 %953, 0
  %955 = zext i1 %954 to i32
  br label %1021

956:                                              ; preds = %865, %865
  %957 = icmp eq ptr %620, %833
  br i1 %957, label %1041, label %958

958:                                              ; preds = %956
  call void @Perl_sv_setsv_flags(ptr noundef %620, ptr noundef %833, i32 noundef 1538) #10
  br label %1041

959:                                              ; preds = %865
  %960 = icmp eq ptr %833, null
  br i1 %960, label %1021, label %961

961:                                              ; preds = %959
  %962 = getelementptr inbounds %struct.sv, ptr %833, i64 0, i32 2
  %963 = load i32, ptr %962, align 4, !tbaa !148
  %964 = and i32 %963, 2097152
  %965 = icmp eq i32 %964, 0
  br i1 %965, label %968, label %966

966:                                              ; preds = %961
  %967 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %833, i32 noundef 2) #10
  br label %1017

968:                                              ; preds = %961
  %969 = and i32 %963, 65280
  %970 = icmp ne i32 %969, 0
  %971 = and i32 %963, 255
  %972 = icmp eq i32 %971, 8
  %973 = or i1 %970, %972
  %974 = and i32 %963, 16777471
  %975 = icmp eq i32 %974, 16777226
  %976 = or i1 %975, %973
  br i1 %976, label %977, label %1017

977:                                              ; preds = %968
  %978 = and i32 %963, 1024
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %994, label %980

980:                                              ; preds = %977
  %981 = load ptr, ptr %833, align 8, !tbaa !242
  %982 = icmp eq ptr %981, null
  br i1 %982, label %1017, label %983

983:                                              ; preds = %980
  %984 = getelementptr inbounds %struct.xpv, ptr %981, i64 0, i32 2
  %985 = load i64, ptr %984, align 8, !tbaa !180
  %986 = icmp ugt i64 %985, 1
  br i1 %986, label %1017, label %987

987:                                              ; preds = %983
  %988 = icmp eq i64 %985, 0
  br i1 %988, label %1017, label %989

989:                                              ; preds = %987
  %990 = getelementptr inbounds %struct.sv, ptr %833, i64 0, i32 3
  %991 = load ptr, ptr %990, align 8, !tbaa !156
  %992 = load i8, ptr %991, align 1, !tbaa !156
  %993 = icmp ne i8 %992, 48
  br label %1017

994:                                              ; preds = %977
  %995 = and i32 %963, 768
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %1015, label %997

997:                                              ; preds = %994
  %998 = and i32 %963, 256
  %999 = icmp eq i32 %998, 0
  br i1 %999, label %1005, label %1000

1000:                                             ; preds = %997
  %1001 = load ptr, ptr %833, align 8, !tbaa !242
  %1002 = getelementptr inbounds %struct.xpviv, ptr %1001, i64 0, i32 4
  %1003 = load i64, ptr %1002, align 8, !tbaa !156
  %1004 = icmp eq i64 %1003, 0
  br i1 %1004, label %1005, label %1017

1005:                                             ; preds = %1000, %997
  %1006 = and i32 %963, 512
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1017, label %1008

1008:                                             ; preds = %1005
  %1009 = load ptr, ptr %833, align 8, !tbaa !242
  %1010 = getelementptr inbounds %struct.xpvnv, ptr %1009, i64 0, i32 5
  %1011 = load double, ptr %1010, align 8, !tbaa !156
  %1012 = fcmp uno double %1011, 0.000000e+00
  br i1 %1012, label %1017, label %1013

1013:                                             ; preds = %1008
  %1014 = fcmp une double %1011, 0.000000e+00
  br label %1017

1015:                                             ; preds = %994
  %1016 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %833, i32 noundef 0) #10
  br label %1017

1017:                                             ; preds = %1008, %1000, %1013, %1005, %980, %987, %989, %983, %968, %1015, %966
  %1018 = phi i1 [ %967, %966 ], [ %1016, %1015 ], [ false, %968 ], [ false, %980 ], [ true, %983 ], [ false, %987 ], [ %993, %989 ], [ true, %1000 ], [ false, %1005 ], [ %1014, %1013 ], [ true, %1008 ]
  %1019 = xor i1 %1018, true
  %1020 = zext i1 %1019 to i32
  br label %1021

1021:                                             ; preds = %865, %1017, %959, %952, %937, %922, %907, %892, %877
  %1022 = phi i32 [ %955, %952 ], [ %940, %937 ], [ %925, %922 ], [ %910, %907 ], [ %895, %892 ], [ %880, %877 ], [ %1020, %1017 ], [ 1, %959 ], [ 0, %865 ]
  %1023 = icmp eq i32 %1022, 0
  %1024 = select i1 %1023, ptr @PL_sv_no, ptr @PL_sv_yes, !prof !201
  br label %1041

1025:                                             ; preds = %839
  %1026 = icmp eq i32 %2, 12
  br i1 %1026, label %1027, label %1041, !prof !201

1027:                                             ; preds = %1025
  %1028 = getelementptr inbounds %struct.sv, ptr %833, i64 0, i32 2
  %1029 = load i32, ptr %1028, align 4, !tbaa !148
  %1030 = and i32 %1029, 2048
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1032, label %1033

1032:                                             ; preds = %1027
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.44) #10
  br label %1033

1033:                                             ; preds = %1032, %1027
  %1034 = getelementptr inbounds %struct.sv, ptr %833, i64 0, i32 3
  %1035 = load ptr, ptr %1034, align 8, !tbaa !156
  %1036 = icmp eq ptr %1035, null
  br i1 %1036, label %1041, label %1037

1037:                                             ; preds = %1033
  %1038 = getelementptr inbounds %struct.sv, ptr %1035, i64 0, i32 1
  %1039 = load i32, ptr %1038, align 8, !tbaa !227
  %1040 = add i32 %1039, 1
  store i32 %1040, ptr %1038, align 8, !tbaa !227
  br label %1041

1041:                                             ; preds = %1037, %1033, %1025, %1021, %956, %958
  %1042 = phi ptr [ %1024, %1021 ], [ %620, %956 ], [ %620, %958 ], [ %833, %1025 ], [ %1035, %1033 ], [ %1035, %1037 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #10
  br label %1043

1043:                                             ; preds = %404, %404, %404, %404, %603, %598, %464, %463, %436, %14, %1041, %307
  %1044 = phi ptr [ %317, %307 ], [ %1042, %1041 ], [ null, %14 ], [ %444, %436 ], [ null, %463 ], [ null, %464 ], [ null, %598 ], [ null, %603 ], [ null, %404 ], [ null, %404 ], [ null, %404 ], [ null, %404 ]
  ret ptr %1044
}

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2num(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @Perl_try_amagic_bin(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !562 {
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !155
  %4 = getelementptr inbounds ptr, ptr %3, i64 -1
  %5 = load ptr, ptr %4, align 8, !tbaa !155
  %6 = load ptr, ptr %3, align 8, !tbaa !155
  %7 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !148
  %9 = and i32 %8, 2097152
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11, !prof !563

11:                                               ; preds = %2
  %12 = tail call i32 @Perl_mg_get(ptr noundef %5) #10
  br label %13

13:                                               ; preds = %2, %11
  %14 = icmp eq ptr %5, %6
  br i1 %14, label %22, label %15, !prof !564

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !148
  %18 = and i32 %17, 2097152
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !565

20:                                               ; preds = %15
  %21 = tail call i32 @Perl_mg_get(ptr noundef %6) #10
  br label %22

22:                                               ; preds = %20, %15, %13
  %23 = load i32, ptr %7, align 4, !tbaa !148
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %40, label %26, !prof !566

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !156
  %29 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !148
  %31 = and i32 %30, 1048576
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33, !prof !201

33:                                               ; preds = %26
  %34 = load ptr, ptr %28, align 8, !tbaa !242
  %35 = load ptr, ptr %34, align 8, !tbaa !535
  %36 = getelementptr inbounds %struct.hv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !249
  %38 = and i32 %37, 268435456
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %59, !prof !201

40:                                               ; preds = %33, %26, %22
  %41 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !148
  %43 = and i32 %42, 2048
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %108, label %45, !prof !567

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !156
  %48 = getelementptr inbounds %struct.sv, ptr %47, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !148
  %50 = and i32 %49, 1048576
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %108, label %52

52:                                               ; preds = %45
  %53 = load ptr, ptr %47, align 8, !tbaa !242
  %54 = load ptr, ptr %53, align 8, !tbaa !535
  %55 = getelementptr inbounds %struct.hv, ptr %54, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !249
  %57 = and i32 %56, 268435456
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %108, label %59

59:                                               ; preds = %52, %33
  %60 = and i32 %1, 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %69, label %62, !prof !194

62:                                               ; preds = %59
  %63 = load ptr, ptr @PL_op, align 8, !tbaa !155
  %64 = getelementptr inbounds %struct.op, ptr %63, i64 0, i32 5
  %65 = load i8, ptr %64, align 2, !tbaa !546
  %66 = lshr i8 %65, 4
  %67 = and i8 %66, 4
  %68 = zext nneg i8 %67 to i32
  br label %69

69:                                               ; preds = %62, %59
  %70 = phi i32 [ 0, %59 ], [ %68, %62 ]
  %71 = and i32 %1, 128
  %72 = or disjoint i32 %70, %71
  %73 = tail call ptr @Perl_amagic_call(ptr noundef %5, ptr noundef %6, i32 noundef %0, i32 noundef %72)
  %74 = icmp eq ptr %73, null
  br i1 %74, label %106, label %75, !prof !201

75:                                               ; preds = %69
  %76 = and i32 %1, 32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %104, !prof !201

78:                                               ; preds = %75
  %79 = load ptr, ptr @PL_op, align 8, !tbaa !155
  %80 = getelementptr inbounds %struct.op, ptr %79, i64 0, i32 5
  %81 = load i8, ptr %80, align 2, !tbaa !546
  %82 = and i8 %81, 64
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load ptr, ptr @PL_curpad, align 8, !tbaa !155
  %86 = getelementptr inbounds %struct.op, ptr %79, i64 0, i32 3
  %87 = load i64, ptr %86, align 8, !tbaa !537
  %88 = getelementptr inbounds ptr, ptr %85, i64 %87
  br label %89

89:                                               ; preds = %78, %84
  %90 = phi ptr [ %88, %84 ], [ %4, %78 ]
  %91 = load ptr, ptr %90, align 8, !tbaa !155
  br i1 %83, label %92, label %97

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.sv, ptr %91, i64 0, i32 2
  %94 = load i32, ptr %93, align 4, !tbaa !148
  %95 = and i32 %94, 131072
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %92, %89
  tail call void @Perl_sv_setsv_flags(ptr noundef %91, ptr noundef nonnull %73, i32 noundef 1538) #10
  %98 = getelementptr inbounds %struct.sv, ptr %91, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !148
  %100 = and i32 %99, 4194304
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %97
  %103 = tail call i32 @Perl_mg_set(ptr noundef %91) #10
  br label %104

104:                                              ; preds = %92, %97, %102, %75
  %105 = phi ptr [ %73, %75 ], [ %91, %97 ], [ %91, %102 ], [ %73, %92 ]
  store ptr %105, ptr %4, align 8, !tbaa !155
  store ptr %4, ptr @PL_stack_sp, align 8, !tbaa !155
  br label %106

106:                                              ; preds = %69, %104
  %107 = phi ptr [ %4, %104 ], [ %3, %69 ]
  br i1 %74, label %108, label %157, !prof !201

108:                                              ; preds = %106, %52, %45, %40
  %109 = phi ptr [ %3, %52 ], [ %3, %45 ], [ %3, %40 ], [ %107, %106 ]
  br i1 %14, label %110, label %138, !prof !568

110:                                              ; preds = %108
  %111 = load i32, ptr %7, align 4, !tbaa !148
  %112 = and i32 %111, 2097152
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %138, label %114

114:                                              ; preds = %110
  %115 = tail call ptr @Perl_sv_newmortal() #10
  %116 = getelementptr inbounds ptr, ptr %109, i64 -1
  store ptr %115, ptr %116, align 8, !tbaa !155
  %117 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %118 = load i32, ptr %117, align 4, !tbaa !148
  %119 = and i32 %118, 65280
  %120 = icmp ne i32 %119, 0
  %121 = and i32 %118, 255
  %122 = icmp eq i32 %121, 8
  %123 = or i1 %120, %122
  %124 = and i32 %118, 16777471
  %125 = icmp eq i32 %124, 16777226
  %126 = or i1 %125, %123
  br i1 %126, label %131, label %127

127:                                              ; preds = %114
  %128 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 41) #10
  br i1 %128, label %129, label %130

129:                                              ; preds = %127
  tail call void @Perl_report_uninit(ptr noundef %6) #10
  br label %130

130:                                              ; preds = %129, %127
  tail call void @Perl_sv_setsv_flags(ptr noundef %115, ptr noundef nonnull @PL_sv_no, i32 noundef 0) #10
  br label %132

131:                                              ; preds = %114
  tail call void @Perl_sv_setsv_flags(ptr noundef %115, ptr noundef %6, i32 noundef 0) #10
  br label %132

132:                                              ; preds = %131, %130
  %133 = load i32, ptr %117, align 4, !tbaa !148
  %134 = and i32 %133, 2097152
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %132
  %137 = tail call i32 @Perl_mg_get(ptr noundef %6) #10
  br label %138

138:                                              ; preds = %136, %132, %110, %108
  %139 = and i32 %1, 16
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %157, label %141, !prof !569

141:                                              ; preds = %138
  %142 = getelementptr inbounds ptr, ptr %109, i64 -1
  %143 = load ptr, ptr %142, align 8, !tbaa !155
  %144 = getelementptr inbounds %struct.sv, ptr %143, i64 0, i32 2
  %145 = load i32, ptr %144, align 4, !tbaa !148
  %146 = and i32 %145, 2048
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %150, label %148, !prof !453

148:                                              ; preds = %141
  %149 = tail call ptr @Perl_sv_2num(ptr noundef %143) #10
  store ptr %149, ptr %142, align 8, !tbaa !155
  br label %150

150:                                              ; preds = %148, %141
  %151 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %152 = load i32, ptr %151, align 4, !tbaa !148
  %153 = and i32 %152, 2048
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %157, label %155, !prof !453

155:                                              ; preds = %150
  %156 = tail call ptr @Perl_sv_2num(ptr noundef %6) #10
  store ptr %156, ptr %109, align 8, !tbaa !155
  br label %157

157:                                              ; preds = %138, %155, %150, %106
  %158 = phi i1 [ true, %106 ], [ false, %150 ], [ false, %155 ], [ false, %138 ]
  ret i1 %158
}

declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

declare void @Perl_report_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_amagic_deref_call(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 !prof !570 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !148
  %5 = and i32 %4, 2048
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %66, label %7, !prof !512

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !156
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !148
  %12 = and i32 %11, 1048576
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %66, label %14, !prof !512

14:                                               ; preds = %7
  %15 = load ptr, ptr %9, align 8, !tbaa !242
  %16 = load ptr, ptr %15, align 8, !tbaa !535
  %17 = getelementptr inbounds %struct.hv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !249
  %19 = and i32 %18, 268435456
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %66, label %21, !prof !512

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.hv, ptr %16, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !156
  %24 = load ptr, ptr %16, align 8, !tbaa !252
  %25 = getelementptr inbounds %struct.xpvhv, ptr %24, i64 0, i32 3
  %26 = load i64, ptr %25, align 8, !tbaa !253
  %27 = getelementptr ptr, ptr %23, i64 %26
  %28 = getelementptr i8, ptr %27, i64 60
  %29 = load i32, ptr %28, align 4, !tbaa !478
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %66, !prof !571

32:                                               ; preds = %21, %59
  %33 = phi ptr [ %34, %59 ], [ %0, %21 ]
  %34 = tail call ptr @Perl_amagic_call(ptr noundef %33, ptr noundef nonnull @PL_sv_undef, i32 noundef %1, i32 noundef 9)
  %35 = icmp eq ptr %34, null
  br i1 %35, label %66, label %36, !prof !512

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !148
  %39 = and i32 %38, 2048
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42, !prof !512

41:                                               ; preds = %36
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.34) #10
  br label %42

42:                                               ; preds = %41, %36
  %43 = icmp eq ptr %34, %33
  br i1 %43, label %66, label %44, !prof !571

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !156
  %47 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !156
  %49 = icmp eq ptr %46, %48
  br i1 %49, label %66, label %50

50:                                               ; preds = %44
  %51 = load i32, ptr %37, align 4, !tbaa !148
  %52 = and i32 %51, 2048
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !148
  %57 = and i32 %56, 1048576
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %54
  %60 = load ptr, ptr %46, align 8, !tbaa !242
  %61 = load ptr, ptr %60, align 8, !tbaa !535
  %62 = getelementptr inbounds %struct.hv, ptr %61, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !249
  %64 = and i32 %63, 268435456
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %32, !llvm.loop !572

66:                                               ; preds = %59, %32, %54, %50, %42, %44, %21, %2, %7, %14
  %67 = phi ptr [ %0, %14 ], [ %0, %7 ], [ %0, %2 ], [ %0, %21 ], [ %34, %44 ], [ %34, %42 ], [ %34, %54 ], [ %34, %50 ], [ %33, %32 ], [ %34, %59 ]
  ret ptr %67
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i1 @Perl_amagic_is_enabled(i32 noundef %0) local_unnamed_addr #5 !prof !206 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_curcop, align 8, !tbaa !155
  %4 = getelementptr inbounds %struct.cop, ptr %3, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !573
  %6 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %5, ptr noundef nonnull @.str.35, i64 noundef 11, i32 noundef 0, i32 noundef 0) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %49, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !148
  %11 = and i32 %10, 65280
  %12 = icmp ne i32 %11, 0
  %13 = and i32 %10, 255
  %14 = icmp eq i32 %13, 8
  %15 = or i1 %12, %14
  %16 = and i32 %10, 16777471
  %17 = icmp eq i32 %16, 16777226
  %18 = or i1 %17, %15
  br i1 %18, label %19, label %49

19:                                               ; preds = %8
  %20 = and i32 %10, 1024
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %49, label %22

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %23 = sdiv i32 %0, 8
  %24 = and i32 %10, 2098176
  %25 = icmp eq i32 %24, 1024
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load ptr, ptr %6, align 8, !tbaa !242
  %28 = getelementptr inbounds %struct.xpv, ptr %27, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !180
  store i64 %29, ptr %2, align 8, !tbaa !243
  %30 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !156
  br label %34

32:                                               ; preds = %22
  %33 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %6, ptr noundef nonnull %2, i32 noundef 2) #10
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi ptr [ %31, %26 ], [ %33, %32 ]
  %36 = sext i32 %23 to i64
  %37 = load i64, ptr %2, align 8, !tbaa !243
  %38 = icmp ugt i64 %37, %36
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = getelementptr inbounds i8, ptr %35, i64 %36
  %41 = load i8, ptr %40, align 1, !tbaa !156
  %42 = zext i8 %41 to i32
  %43 = and i32 %0, 7
  %44 = shl nuw nsw i32 1, %43
  %45 = and i32 %44, %42
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39, %34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  br label %49

48:                                               ; preds = %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  br label %49

49:                                               ; preds = %19, %47, %48, %1, %8
  %50 = phi i1 [ false, %48 ], [ false, %8 ], [ false, %1 ], [ true, %47 ], [ true, %19 ]
  ret i1 %50
}

declare ptr @Perl_refcounted_he_fetch_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

declare double @Perl_sv_2nv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @Perl_block_gimme() local_unnamed_addr #2

declare ptr @Perl_new_stackinfo(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_pp_pushmark() local_unnamed_addr #2

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_av_extend(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_av_store(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @Perl_croak_popstack() local_unnamed_addr #2

declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_gv_try_downgrade(ptr noundef %0) local_unnamed_addr #0 !prof !574 {
  %2 = load i32, ptr @PL_phase, align 4, !tbaa !174
  %3 = icmp eq i32 %2, 6
  br i1 %3, label %170, label %4, !prof !575

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !576
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %170, !prof !577

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !170
  %11 = and i32 %10, 255
  %12 = and i32 %10, 152158463
  %13 = icmp eq i32 %12, 32777
  br i1 %13, label %14, label %170, !prof !578

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !156
  %17 = icmp eq ptr %16, null
  br i1 %17, label %170, label %18, !prof !579

18:                                               ; preds = %14
  %19 = load ptr, ptr %0, align 8, !tbaa !160
  %20 = getelementptr inbounds %struct.xpvgv, ptr %19, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !192
  %22 = and i64 %21, 1
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %170, !prof !580

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.gp, ptr %16, i64 0, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !221
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %170, !prof !581

28:                                               ; preds = %24
  %29 = load ptr, ptr %16, align 8, !tbaa !172
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %170, !prof !582

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.gp, ptr %16, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !175
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %170, !prof !583

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.gp, ptr %16, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !176
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %170, !prof !584

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.gp, ptr %16, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !424
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %170, !prof !585

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.gp, ptr %16, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !234
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %170, !prof !586

47:                                               ; preds = %43
  %48 = add nsw i32 %11, -9
  %49 = icmp ult i32 %48, 2
  br i1 %49, label %50, label %53, !prof !586

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.gp, ptr %16, i64 0, i32 8
  %52 = load ptr, ptr %51, align 8, !tbaa !209
  br label %53

53:                                               ; preds = %47, %50
  %54 = phi ptr [ %52, %50 ], [ null, %47 ]
  %55 = icmp eq ptr %54, %0
  br i1 %55, label %56, label %170, !prof !586

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.xpvgv, ptr %19, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !156
  %59 = icmp eq ptr %58, null
  br i1 %59, label %170, label %60, !prof !587

60:                                               ; preds = %56
  %61 = load ptr, ptr @PL_statgv, align 8, !tbaa !155
  %62 = icmp eq ptr %61, %0
  %63 = load ptr, ptr @PL_last_in_gv, align 8
  %64 = icmp eq ptr %63, %0
  %65 = select i1 %62, i1 true, i1 %64, !prof !587
  %66 = load ptr, ptr @PL_stderrgv, align 8
  %67 = icmp eq ptr %66, %0
  %68 = select i1 %65, i1 true, i1 %67, !prof !587
  br i1 %68, label %170, label %69, !prof !587

69:                                               ; preds = %60
  %70 = and i32 %10, 14680064
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %85, label %72, !prof !588

72:                                               ; preds = %69
  %73 = and i32 %10, 6291456
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %170, !prof !589

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.xpvmg, ptr %19, i64 0, i32 1
  br label %77

77:                                               ; preds = %81, %75
  %78 = phi ptr [ %76, %75 ], [ %79, %81 ]
  %79 = load ptr, ptr %78, align 8, !tbaa !156
  %80 = icmp eq ptr %79, null
  br i1 %80, label %85, label %81, !prof !590

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.magic, ptr %79, i64 0, i32 3
  %83 = load i8, ptr %82, align 2, !tbaa !591
  %84 = icmp eq i8 %83, 60
  br i1 %84, label %77, label %170, !prof !589, !llvm.loop !592

85:                                               ; preds = %77, %69
  %86 = getelementptr inbounds %struct.gp, ptr %16, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !195
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %103, !prof !593

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.xpvgv, ptr %19, i64 0, i32 4
  %91 = load ptr, ptr %90, align 8, !tbaa !156
  %92 = getelementptr inbounds %struct.hek, ptr %91, i64 0, i32 2
  %93 = getelementptr inbounds %struct.hek, ptr %91, i64 0, i32 1
  %94 = load i32, ptr %93, align 4, !tbaa !162
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, ptr %92, i64 %95
  %97 = getelementptr inbounds i8, ptr %96, i64 1
  %98 = load i8, ptr %97, align 1, !tbaa !156
  %99 = and i8 %98, 1
  %100 = zext nneg i8 %99 to i32
  %101 = load i32, ptr %91, align 4, !tbaa !237
  %102 = tail call ptr @Perl_hv_common(ptr noundef nonnull %58, ptr noundef null, ptr noundef nonnull %92, i64 noundef %95, i32 noundef %100, i32 noundef 68, ptr noundef null, i32 noundef %101) #10
  br label %170

103:                                              ; preds = %85
  %104 = and i64 %21, 2
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %170, label %106, !prof !594

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.cv, ptr %87, i64 0, i32 1
  %108 = load i32, ptr %107, align 8, !tbaa !204
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %170, !prof !595

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.cv, ptr %87, i64 0, i32 2
  %112 = load i32, ptr %111, align 4, !tbaa !315
  %113 = and i32 %112, 150011904
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %170, !prof !596

115:                                              ; preds = %110
  %116 = load ptr, ptr %87, align 8, !tbaa !196
  %117 = getelementptr inbounds %struct.xpvcv, ptr %116, i64 0, i32 4
  %118 = load ptr, ptr %117, align 8, !tbaa !198
  %119 = icmp eq ptr %118, %58
  br i1 %119, label %120, label %170, !prof !597

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.xpvcv, ptr %116, i64 0, i32 12
  %122 = load i32, ptr %121, align 4, !tbaa !200
  %123 = and i32 %122, 32768
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %170, !prof !598

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.xpvcv, ptr %116, i64 0, i32 7
  %127 = load ptr, ptr %126, align 8, !tbaa !156
  %128 = icmp eq ptr %127, %0
  %129 = and i32 %122, 999
  %130 = icmp eq i32 %129, 4
  %131 = and i1 %130, %128
  br i1 %131, label %132, label %170, !prof !599

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct.xpvgv, ptr %19, i64 0, i32 4
  %134 = load ptr, ptr %133, align 8, !tbaa !156
  %135 = icmp eq ptr %134, null
  br i1 %135, label %170, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.hek, ptr %134, i64 0, i32 2
  %138 = getelementptr inbounds %struct.hek, ptr %134, i64 0, i32 1
  %139 = load i32, ptr %138, align 4, !tbaa !162
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, ptr %137, i64 %140
  %142 = getelementptr inbounds i8, ptr %141, i64 1
  %143 = load i8, ptr %142, align 1, !tbaa !156
  %144 = and i8 %143, 1
  %145 = zext nneg i8 %144 to i32
  %146 = load i32, ptr %134, align 4, !tbaa !237
  %147 = tail call ptr @Perl_hv_common(ptr noundef nonnull %58, ptr noundef null, ptr noundef nonnull %137, i64 noundef %140, i32 noundef %145, i32 noundef 32, ptr noundef null, i32 noundef %146) #10
  %148 = icmp eq ptr %147, null
  br i1 %148, label %170, label %149

149:                                              ; preds = %136
  %150 = load ptr, ptr %147, align 8, !tbaa !155
  %151 = icmp eq ptr %150, %0
  br i1 %151, label %152, label %170

152:                                              ; preds = %149
  %153 = load ptr, ptr %87, align 8, !tbaa !196
  %154 = getelementptr inbounds %struct.xpvcv, ptr %153, i64 0, i32 5
  %155 = load ptr, ptr %154, align 8, !tbaa !156
  %156 = icmp eq ptr %155, null
  br i1 %156, label %161, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.sv, ptr %155, i64 0, i32 1
  %159 = load i32, ptr %158, align 8, !tbaa !227
  %160 = add i32 %159, 1
  store i32 %160, ptr %158, align 8, !tbaa !227
  br label %161

161:                                              ; preds = %152, %157
  %162 = load ptr, ptr %0, align 8, !tbaa !160
  %163 = getelementptr inbounds %struct.xpvgv, ptr %162, i64 0, i32 2
  %164 = load i64, ptr %163, align 8, !tbaa !192
  store i32 0, ptr %5, align 8, !tbaa !576
  tail call void @Perl_sv_clear(ptr noundef nonnull %0) #10
  store i32 1, ptr %5, align 8, !tbaa !576
  %165 = trunc i64 %164 to i32
  %166 = shl i32 %165, 8
  %167 = and i32 %166, 32768
  %168 = or disjoint i32 %167, 2049
  store i32 %168, ptr %9, align 4, !tbaa !170
  %169 = getelementptr %struct.gv, ptr %0, i64 -1, i32 1
  store ptr %169, ptr %0, align 8, !tbaa !160
  store ptr %155, ptr %15, align 8, !tbaa !156
  br label %170

170:                                              ; preds = %81, %72, %89, %161, %149, %136, %132, %125, %120, %115, %110, %106, %103, %60, %4, %8, %14, %18, %24, %28, %31, %35, %39, %43, %53, %56, %1
  ret void
}

declare void @Perl_sv_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_gv_override(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !600 {
  %3 = tail call ptr @Perl_gv_fetchpvn_flags(ptr noundef %0, i64 noundef %1, i32 noundef 128, i32 noundef 13)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5, !prof !601

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.gv, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !156
  %8 = getelementptr inbounds %struct.gp, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !207
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.gp, ptr %7, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !195
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %3, align 8, !tbaa !160
  %17 = getelementptr inbounds %struct.xpvgv, ptr %16, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !192
  %19 = and i64 %18, 128
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %5, %15, %11, %2
  %22 = load ptr, ptr @PL_globalstash, align 8, !tbaa !155
  %23 = trunc i64 %1 to i32
  %24 = tail call ptr @Perl_hv_common_key_len(ptr noundef %22, ptr noundef %0, i32 noundef %23, i32 noundef 32, ptr noundef null, i32 noundef 0) #10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26, !prof !601

26:                                               ; preds = %21
  %27 = load ptr, ptr %24, align 8, !tbaa !155
  br label %28

28:                                               ; preds = %21, %26
  %29 = phi ptr [ %27, %26 ], [ null, %21 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %58, label %31, !prof !601

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.gv, ptr %29, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !170
  %34 = and i32 %33, 255
  %35 = icmp eq i32 %34, 9
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = and i32 %33, 34816
  %38 = icmp eq i32 %37, 34816
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  %40 = load ptr, ptr @PL_globalstash, align 8, !tbaa !155
  tail call void @Perl_gv_init_pvn(ptr noundef nonnull %29, ptr noundef %40, ptr noundef %0, i64 noundef %1, i32 noundef 0)
  br label %58

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.gv, ptr %29, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !156
  %44 = getelementptr inbounds %struct.gp, ptr %43, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !207
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.gp, ptr %43, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !195
  %50 = icmp eq ptr %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %29, align 8, !tbaa !160
  %53 = getelementptr inbounds %struct.xpvgv, ptr %52, i64 0, i32 2
  %54 = load i64, ptr %53, align 8, !tbaa !192
  %55 = and i64 %54, 128
  %56 = icmp eq i64 %55, 0
  %57 = select i1 %56, ptr null, ptr %29
  br label %58

58:                                               ; preds = %15, %41, %47, %51, %28, %36, %39
  %59 = phi ptr [ %29, %39 ], [ null, %36 ], [ null, %41 ], [ null, %47 ], [ %57, %51 ], [ null, %28 ], [ %3, %15 ]
  ret ptr %59
}

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @S_maybe_add_coresub(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #5 !prof !206 {
  %5 = alloca i32, align 4
  %6 = trunc i64 %3 to i32
  %7 = tail call i32 @Perl_keyword(ptr noundef %2, i32 noundef %6, i1 noundef zeroext true) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !tbaa !174
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %101, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @llvm.abs.i32(i32 %7, i1 true)
  switch i32 %10, label %12 [
    i32 4, label %101
    i32 5, label %101
    i32 17, label %101
    i32 7, label %101
    i32 8, label %101
    i32 13, label %101
    i32 33, label %101
    i32 40, label %101
    i32 10, label %101
    i32 44, label %101
    i32 45, label %101
    i32 47, label %101
    i32 48, label %101
    i32 11, label %101
    i32 56, label %101
    i32 57, label %101
    i32 67, label %101
    i32 68, label %101
    i32 70, label %101
    i32 72, label %101
    i32 99, label %101
    i32 102, label %101
    i32 103, label %101
    i32 104, label %101
    i32 106, label %101
    i32 12, label %101
    i32 113, label %101
    i32 116, label %101
    i32 120, label %101
    i32 125, label %101
    i32 126, label %101
    i32 127, label %101
    i32 133, label %101
    i32 134, label %101
    i32 135, label %101
    i32 136, label %101
    i32 141, label %101
    i32 143, label %101
    i32 145, label %101
    i32 149, label %101
    i32 150, label %101
    i32 153, label %101
    i32 154, label %101
    i32 155, label %101
    i32 157, label %101
    i32 158, label %101
    i32 166, label %101
    i32 169, label %101
    i32 171, label %101
    i32 176, label %101
    i32 177, label %101
    i32 205, label %101
    i32 212, label %101
    i32 214, label %101
    i32 229, label %101
    i32 9, label %101
    i32 235, label %101
    i32 240, label %101
    i32 241, label %101
    i32 249, label %101
    i32 250, label %101
    i32 252, label %101
    i32 253, label %101
    i32 254, label %101
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
  %16 = tail call ptr @Perl_newSV(i64 noundef 0) #10
  tail call void @Perl_gv_init_pvn(ptr noundef %16, ptr noundef %0, ptr noundef %2, i64 noundef %3, i32 noundef 2)
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi ptr [ %1, %12 ], [ %16, %15 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !160
  %20 = getelementptr inbounds %struct.xpvgv, ptr %19, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !192
  %22 = or i64 %21, 2
  store i64 %22, ptr %20, align 8, !tbaa !192
  br i1 %13, label %23, label %29

23:                                               ; preds = %17
  tail call void @Perl_push_scope() #10
  %24 = load ptr, ptr @PL_curcop, align 8, !tbaa !155
  %25 = load ptr, ptr @PL_parser, align 8, !tbaa !155
  tail call void @Perl_lex_start(ptr noundef null, ptr noundef null, i32 noundef 0) #10
  %26 = load ptr, ptr @PL_compcv, align 8, !tbaa !155
  store ptr null, ptr @PL_compcv, align 8, !tbaa !155
  %27 = tail call i32 @Perl_start_subparse(i32 noundef 0, i32 noundef 0) #10
  %28 = load ptr, ptr @PL_compcv, align 8, !tbaa !155
  br label %41

29:                                               ; preds = %17
  %30 = tail call ptr @Perl_newSV_type(i32 noundef 13) #10
  %31 = getelementptr inbounds %struct.gv, ptr %18, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !156
  %33 = getelementptr inbounds %struct.gp, ptr %32, i64 0, i32 2
  store ptr %30, ptr %33, align 8, !tbaa !195
  %34 = load ptr, ptr %31, align 8, !tbaa !156
  %35 = getelementptr inbounds %struct.gp, ptr %34, i64 0, i32 3
  store i32 0, ptr %35, align 8, !tbaa !207
  %36 = load ptr, ptr %30, align 8, !tbaa !196
  %37 = getelementptr inbounds %struct.xpvcv, ptr %36, i64 0, i32 12
  %38 = load i32, ptr %37, align 4, !tbaa !200
  %39 = or i32 %38, 8
  store i32 %39, ptr %37, align 4, !tbaa !200
  %40 = getelementptr inbounds %struct.xpvcv, ptr %36, i64 0, i32 6
  store ptr @core_xsub, ptr %40, align 8, !tbaa !156
  br label %41

41:                                               ; preds = %29, %23
  %42 = phi ptr [ %28, %23 ], [ %30, %29 ]
  %43 = phi ptr [ %26, %23 ], [ null, %29 ]
  %44 = phi ptr [ %24, %23 ], [ null, %29 ]
  %45 = phi ptr [ %25, %23 ], [ null, %29 ]
  %46 = phi i32 [ %27, %23 ], [ 0, %29 ]
  tail call void @Perl_cvgv_set(ptr noundef %42, ptr noundef nonnull %18)
  %47 = tail call ptr @Perl_gv_fetchfile_flags(ptr noundef nonnull @S_maybe_add_coresub.file, i64 noundef 4, i32 poison)
  %48 = load ptr, ptr %42, align 8, !tbaa !196
  %49 = getelementptr inbounds %struct.xpvcv, ptr %48, i64 0, i32 8
  store ptr @S_maybe_add_coresub.file, ptr %49, align 8, !tbaa !602
  %50 = call ptr @Perl_core_prototype(ptr noundef nonnull %42, ptr noundef %2, i32 noundef %7, ptr noundef nonnull %5) #10
  %51 = icmp eq ptr %0, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  %53 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %6, i32 noundef 36, ptr noundef nonnull %18, i32 noundef 0) #10
  br label %54

54:                                               ; preds = %52, %41
  br i1 %13, label %55, label %81

55:                                               ; preds = %54
  %56 = load ptr, ptr %42, align 8, !tbaa !196
  %57 = getelementptr inbounds %struct.xpvcv, ptr %56, i64 0, i32 12
  %58 = load i32, ptr %57, align 4, !tbaa !200
  %59 = or i32 %58, 2
  store i32 %59, ptr %57, align 4, !tbaa !200
  %60 = load i32, ptr %5, align 4, !tbaa !174
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = sext i32 %60 to i64
  %64 = call ptr @Perl_newSVuv(i64 noundef %63) #10
  br label %67

65:                                               ; preds = %55
  %66 = call ptr @Perl_newSVpvn(ptr noundef %2, i64 noundef %3) #10
  br label %67

67:                                               ; preds = %65, %62
  %68 = phi ptr [ %64, %62 ], [ %66, %65 ]
  %69 = load i32, ptr %5, align 4, !tbaa !174
  %70 = call ptr @Perl_coresub_op(ptr noundef %68, i32 noundef %7, i32 noundef %69) #10
  %71 = call ptr @Perl_newATTRSUB_x(i32 noundef %46, ptr noundef nonnull %18, ptr noundef null, ptr noundef null, ptr noundef %70, i1 noundef zeroext true) #10
  %72 = icmp eq ptr %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %67
  %74 = load i32, ptr %5, align 4
  switch i32 %74, label %75 [
    i32 122, label %80
    i32 121, label %80
    i32 46, label %80
    i32 44, label %80
  ]

75:                                               ; preds = %73
  %76 = load ptr, ptr %71, align 8, !tbaa !196
  %77 = getelementptr inbounds %struct.xpvcv, ptr %76, i64 0, i32 12
  %78 = load i32, ptr %77, align 4, !tbaa !200
  %79 = and i32 %78, -3
  store i32 %79, ptr %77, align 4, !tbaa !200
  br label %80

80:                                               ; preds = %73, %73, %73, %73, %75, %67
  call void @Perl_pop_scope() #10
  store ptr %45, ptr @PL_parser, align 8, !tbaa !155
  store ptr %44, ptr @PL_curcop, align 8, !tbaa !155
  store ptr %43, ptr @PL_compcv, align 8, !tbaa !155
  br label %81

81:                                               ; preds = %80, %54
  %82 = phi ptr [ %71, %80 ], [ %42, %54 ]
  %83 = icmp eq ptr %82, null
  br i1 %83, label %101, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %5, align 4, !tbaa !174
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = sext i32 %85 to i64
  %89 = call ptr @Perl_newSVuv(i64 noundef %88) #10
  br label %90

90:                                               ; preds = %84, %87
  %91 = phi ptr [ %89, %87 ], [ null, %84 ]
  %92 = icmp eq ptr %91, null
  %93 = select i1 %92, ptr %82, ptr %91
  call void @Perl_cv_set_call_checker(ptr noundef nonnull %82, ptr noundef nonnull @Perl_ck_entersub_args_core, ptr noundef nonnull %93) #10
  br i1 %92, label %101, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.sv, ptr %91, i64 0, i32 1
  %96 = load i32, ptr %95, align 8, !tbaa !227
  %97 = icmp ugt i32 %96, 1
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = add i32 %96, -1
  store i32 %99, ptr %95, align 8, !tbaa !227
  br label %101

100:                                              ; preds = %94
  call void @Perl_sv_free2(ptr noundef nonnull %91, i32 noundef %96) #10
  br label %101

101:                                              ; preds = %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %100, %98, %90, %81, %9, %4
  %102 = phi ptr [ null, %4 ], [ null, %9 ], [ %18, %81 ], [ %18, %90 ], [ %18, %98 ], [ %18, %100 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret ptr %102
}

declare ptr @Perl_mro_get_linear_isa(ptr noundef) local_unnamed_addr #2

declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @Perl_keyword(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @Perl_lex_start(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_start_subparse(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal void @core_xsub(ptr nocapture noundef readonly %0) #5 !prof !206 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !200
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %0)
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !156
  br label %12

12:                                               ; preds = %7, %9
  %13 = phi ptr [ %8, %7 ], [ %11, %9 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !160
  %15 = getelementptr inbounds %struct.xpvgv, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !156
  %17 = getelementptr inbounds %struct.hek, ptr %16, i64 0, i32 2
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.50, ptr noundef nonnull %17) #10
  ret void
}

declare ptr @Perl_core_prototype(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newATTRSUB_x(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @Perl_coresub_op(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #2

declare void @Perl_cv_set_call_checker(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_ck_entersub_args_core(ptr noundef, ptr noundef, ptr noundef) #2

declare void @Perl_hv_name_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_mro_package_moved(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_qerror(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_mess(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc void @S_require_tie_mod(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #5 !prof !603 !PGOFuncName !604 {
  %6 = tail call fastcc ptr @S_gv_stashsvpvn_cached(ptr noundef %2, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !288

8:                                                ; preds = %5
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #11
  %10 = tail call ptr @Perl_gv_fetchmethod_pvn_flags(ptr noundef nonnull %6, ptr noundef %3, i64 noundef %9, i32 noundef 0)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %34, !prof !605

12:                                               ; preds = %8, %5
  %13 = tail call ptr @Perl_newSVsv(ptr noundef %2) #10
  %14 = load i8, ptr %1, align 1, !tbaa !156
  %15 = sext i8 %14 to i32
  %16 = icmp eq i8 %14, 91
  %17 = select i1 %16, i8 36, i8 37, !prof !194
  tail call void @Perl_push_scope() #10
  tail call void @Perl_save_pushptr(ptr noundef %2, i32 noundef 11) #10
  %18 = and i32 %4, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !194

20:                                               ; preds = %12
  %21 = tail call ptr @Perl_save_scalar(ptr noundef %0) #10
  br label %22

22:                                               ; preds = %20, %12
  tail call void (i32, ptr, ptr, ...) @Perl_load_module(i32 noundef 2, ptr noundef %13, ptr noundef null) #10
  %23 = tail call fastcc ptr @S_gv_stashsvpvn_cached(ptr noundef %2, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27, !prof !201

25:                                               ; preds = %22
  %26 = zext nneg i8 %17 to i32
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.66, i32 noundef %26, i32 noundef %15, ptr noundef %2) #10
  br label %33

27:                                               ; preds = %22
  %28 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #11
  %29 = tail call ptr @Perl_gv_fetchmethod_pvn_flags(ptr noundef nonnull %23, ptr noundef %3, i64 noundef %28, i32 noundef 256)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33, !prof !201

31:                                               ; preds = %27
  %32 = zext nneg i8 %17 to i32
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.67, i32 noundef %32, i32 noundef %15, ptr noundef %2, ptr noundef %3) #10
  br label %33

33:                                               ; preds = %27, %31, %25
  tail call void @Perl_pop_scope() #10
  br label %41

34:                                               ; preds = %8
  %35 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !227
  %37 = icmp ugt i32 %36, 1
  br i1 %37, label %38, label %40, !prof !606

38:                                               ; preds = %34
  %39 = add i32 %36, -1
  store i32 %39, ptr %35, align 8, !tbaa !227
  br label %41

40:                                               ; preds = %34
  tail call void @Perl_sv_free2(ptr noundef %2, i32 noundef %36) #10
  br label %41

41:                                               ; preds = %40, %38, %33
  ret void
}

declare ptr @Perl_save_scalar(ptr noundef) local_unnamed_addr #2

declare void @Perl_load_module(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare zeroext i1 @Perl_grok_atoUV(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_feature_is_enabled(ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @Perl_sv_derived_from(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_upg_version(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @Perl_vnumify(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_new_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!145}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 53336217263}
!8 = !{!"MaxCount", i64 1126593358}
!9 = !{!"MaxInternalCount", i64 1126593358}
!10 = !{!"MaxFunctionCount", i64 465576726}
!11 = !{!"NumCounts", i64 53216}
!12 = !{!"NumFunctions", i64 2490}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1126593358, i32 1}
!18 = !{i32 100000, i64 852534058, i32 6}
!19 = !{i32 200000, i64 504831111, i32 16}
!20 = !{i32 300000, i64 482068791, i32 26}
!21 = !{i32 400000, i64 459921484, i32 39}
!22 = !{i32 500000, i64 444801476, i32 50}
!23 = !{i32 600000, i64 426267029, i32 64}
!24 = !{i32 700000, i64 422040304, i32 74}
!25 = !{i32 800000, i64 220037356, i32 89}
!26 = !{i32 900000, i64 39885265, i32 162}
!27 = !{i32 950000, i64 20973884, i32 262}
!28 = !{i32 990000, i64 1545742, i32 632}
!29 = !{i32 999000, i64 97988, i32 1692}
!30 = !{i32 999900, i64 9981, i32 2885}
!31 = !{i32 999990, i64 671, i32 4392}
!32 = !{i32 999999, i64 57, i32 6648}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144}
!35 = !{ptr @Perl_gv_add_by_type, ptr @Perl_newSV_type, i64 11384}
!36 = !{ptr @Perl_gv_add_by_type, ptr @strncmp, i64 23}
!37 = !{ptr @Perl_gv_add_by_type, ptr @Perl_sv_magic, i64 21}
!38 = !{ptr @Perl_gv_fetchfile, ptr @strlen, i64 405}
!39 = !{ptr @Perl_gv_fetchfile, ptr @Perl_gv_fetchfile_flags, i64 405}
!40 = !{ptr @Perl_gv_fetchfile_flags, ptr @Perl_hv_common_key_len, i64 405}
!41 = !{ptr @Perl_gv_fetchfile_flags, ptr @Perl_gv_init_pvn, i64 196}
!42 = !{ptr @Perl_gv_fetchfile_flags, ptr @Perl_newSVpvn, i64 196}
!43 = !{ptr @Perl_gv_init_pvn, ptr @Perl_sv_upgrade, i64 14040}
!44 = !{ptr @Perl_gv_init_pvn, ptr @Perl_newGP, i64 14040}
!45 = !{ptr @Perl_gv_init_pvn, ptr @Perl_sv_add_backref, i64 14040}
!46 = !{ptr @Perl_gv_init_pvn, ptr @Perl_gv_name_set, i64 14040}
!47 = !{ptr @Perl_gv_init_pvn, ptr @Perl_cvgv_set, i64 1}
!48 = !{ptr @Perl_gv_init_pvn, ptr @Perl_newSTUB, i64 23}
!49 = !{ptr @Perl_gv_init_pvn, ptr @Perl_sv_usepvn_flags, i64 12}
!50 = !{ptr @Perl_newGP, ptr @Perl_safesyscalloc, i64 14072}
!51 = !{ptr @Perl_newGP, ptr @Perl_share_hek, i64 14072}
!52 = !{ptr @Perl_cvgv_set, ptr @Perl_sv_del_backref, i64 324}
!53 = !{ptr @Perl_cvgv_set, ptr @Perl_unshare_hek, i64 1}
!54 = !{ptr @Perl_cvgv_set, ptr @Perl_sv_add_backref, i64 1189}
!55 = !{ptr @Perl_cvgv_from_hek, ptr @Perl_hv_common, i64 1}
!56 = !{ptr @Perl_cvgv_from_hek, ptr @Perl_gv_init_pvn, i64 1}
!57 = !{ptr @Perl_cvstash_set, ptr @Perl_sv_add_backref, i64 1102}
!58 = !{ptr @Perl_gv_name_set, ptr @Perl_share_hek, i64 14040}
!59 = !{ptr @S_gv_fetchmeth_internal, ptr @S_gv_stashsvpvn_cached, i64 124}
!60 = !{ptr @S_gv_fetchmeth_internal, ptr @Perl_newSV_type, i64 1}
!61 = !{ptr @S_gv_fetchmeth_internal, ptr @Perl_hv_common, i64 13036}
!62 = !{ptr @S_gv_fetchmeth_internal, ptr @Perl_gv_init_pvn, i64 34}
!63 = !{ptr @S_gv_fetchmeth_internal, ptr @strncmp, i64 1}
!64 = !{ptr @S_gv_fetchmeth_internal, ptr @Perl_mro_get_linear_isa, i64 191}
!65 = !{ptr @S_gv_fetchmeth_internal, ptr @Perl_hv_common_key_len, i64 34}
!66 = !{ptr @S_gv_fetchmeth_internal, ptr @S_gv_fetchmeth_internal, i64 87}
!67 = !{ptr @Perl_gv_fetchmeth_pvn_autoload, ptr @S_gv_fetchmeth_internal, i64 13}
!68 = !{ptr @Perl_gv_fetchmethod_autoload, ptr @strlen, i64 2}
!69 = !{ptr @Perl_gv_fetchmethod_autoload, ptr @Perl_gv_fetchmethod_pvn_flags, i64 2}
!70 = !{ptr @Perl_gv_fetchmethod_sv_flags, ptr @Perl_gv_fetchmethod_pvn_flags, i64 12827}
!71 = !{ptr @Perl_gv_fetchmethod_pvn_flags, ptr @S_gv_fetchmeth_internal, i64 12848}
!72 = !{ptr @Perl_gv_fetchmethod_pvn_flags, ptr @strcmp, i64 5}
!73 = !{ptr @Perl_gv_stashpvn, ptr @S_gv_stashsvpvn_cached, i64 13028}
!74 = !{ptr @Perl_gv_stashpv, ptr @strlen, i64 77}
!75 = !{ptr @Perl_gv_stashpv, ptr @S_gv_stashsvpvn_cached, i64 77}
!76 = !{ptr @S_gv_stashsvpvn_cached, ptr @Perl_hv_common, i64 38563}
!77 = !{ptr @S_gv_stashsvpvn_cached, ptr @Perl_gv_fetchpvn_flags, i64 182}
!78 = !{ptr @S_gv_stashsvpvn_cached, ptr @Perl_newSViv, i64 172}
!79 = !{ptr @S_gv_stashsvpvn_cached, ptr @Perl_hv_common_key_len, i64 172}
!80 = !{ptr @Perl_gv_stashsv, ptr @S_gv_stashsvpvn_cached, i64 25323}
!81 = !{ptr @Perl_gv_fetchpv, ptr @strlen, i64 118}
!82 = !{ptr @Perl_gv_fetchpv, ptr @Perl_gv_fetchpvn_flags, i64 118}
!83 = !{ptr @Perl_gv_fetchpvn_flags, ptr @Perl_hv_common_key_len, i64 610612}
!84 = !{ptr @Perl_gv_fetchpvn_flags, ptr @Perl_gv_init_pvn, i64 13808}
!85 = !{ptr @Perl_gv_fetchpvn_flags, ptr @Perl_newSV_type, i64 131}
!86 = !{ptr @Perl_gv_fetchpvn_flags, ptr @strncmp, i64 162}
!87 = !{ptr @Perl_gv_fetchpvn_flags, ptr @Perl_hv_name_set, i64 131}
!88 = !{ptr @Perl_gv_fetchpvn_flags, ptr @Perl_hv_common, i64 4}
!89 = !{ptr @Perl_gv_fetchpvn_flags, ptr @S_gv_init_svtype, i64 115665}
!90 = !{ptr @Perl_gv_fetchpvn_flags, ptr @Perl_newSVpvn, i64 18}
!91 = !{ptr @Perl_gv_fetchpvn_flags, ptr @S_require_tie_mod, i64 18}
!92 = !{ptr @Perl_gv_fetchpvn_flags, ptr @Perl_ckwarn, i64 13604}
!93 = !{ptr @Perl_gv_fetchpvn_flags, ptr @strcmp, i64 113}
!94 = !{ptr @Perl_gv_fetchpvn_flags, ptr @S_gv_magicalize_isa, i64 22}
!95 = !{ptr @Perl_gv_fetchpvn_flags, ptr @Perl_gv_add_by_type, i64 42}
!96 = !{ptr @Perl_gv_fetchpvn_flags, ptr @Perl_safesyscalloc, i64 2}
!97 = !{ptr @Perl_gv_fetchpvn_flags, ptr @Perl_sv_magic, i64 40}
!98 = !{ptr @Perl_gv_fetchpvn_flags, ptr @strlen, i64 15}
!99 = !{ptr @Perl_gv_fetchpvn_flags, ptr @Perl_sv_setsv_flags, i64 15}
!100 = !{ptr @Perl_gv_fetchpvn_flags, ptr @Perl_sv_setpv, i64 1}
!101 = !{ptr @Perl_gv_fetchpvn_flags, ptr @Perl_sv_setpvn, i64 1}
!102 = !{ptr @Perl_gv_fetchpvn_flags, ptr @Perl_sv_derived_from, i64 1}
!103 = !{ptr @Perl_gv_fetchpvn_flags, ptr @Perl_vnumify, i64 1}
!104 = !{ptr @Perl_gv_fetchpvn_flags, ptr @Perl_new_version, i64 1}
!105 = !{ptr @Perl_gv_fetchsv, ptr @Perl_gv_fetchpvn_flags, i64 219130}
!106 = !{ptr @S_gv_init_svtype, ptr @Perl_gv_add_by_type, i64 95}
!107 = !{ptr @S_gv_init_svtype, ptr @Perl_newSV_type, i64 598}
!108 = !{ptr @S_gv_magicalize_isa, ptr @Perl_gv_add_by_type, i64 22}
!109 = !{ptr @S_gv_magicalize_isa, ptr @Perl_sv_magic, i64 22}
!110 = !{ptr @Perl_gv_fullname4, ptr @Perl_sv_setpv, i64 86}
!111 = !{ptr @Perl_gv_fullname4, ptr @Perl_sv_catpvn_flags, i64 172}
!112 = !{ptr @Perl_gv_fullname4, ptr @Perl_newSVhek, i64 86}
!113 = !{ptr @Perl_gv_fullname4, ptr @Perl_sv_2mortal, i64 86}
!114 = !{ptr @Perl_gv_fullname4, ptr @Perl_sv_catsv_flags, i64 86}
!115 = !{ptr @Perl_gv_efullname4, ptr @Perl_gv_fullname4, i64 86}
!116 = !{ptr @Perl_gv_check, ptr @Perl_gv_check, i64 79}
!117 = !{ptr @Perl_gp_free, ptr @Perl_unshare_hek, i64 11423}
!118 = !{ptr @Perl_gp_free, ptr @Perl_sv_free2, i64 115}
!119 = !{ptr @Perl_gp_free, ptr @Perl_safesysfree, i64 11423}
!120 = !{ptr @Perl_Gv_AMupdate, ptr @Perl_mg_find, i64 7}
!121 = !{ptr @Perl_Gv_AMupdate, ptr @S_gv_fetchmeth_internal, i64 85}
!122 = !{ptr @Perl_Gv_AMupdate, ptr @strcmp, i64 6}
!123 = !{ptr @Perl_Gv_AMupdate, ptr @Perl_sv_magic, i64 6}
!124 = !{ptr @Perl_amagic_call, ptr @Perl_Gv_AMupdate, i64 7}
!125 = !{ptr @Perl_amagic_call, ptr @Perl_mg_find, i64 2}
!126 = !{ptr @Perl_amagic_call, ptr @Perl_push_scope, i64 2}
!127 = !{ptr @Perl_amagic_call, ptr @Perl_save_pushptr, i64 2}
!128 = !{ptr @Perl_amagic_call, ptr @Perl_pp_pushmark, i64 2}
!129 = !{ptr @Perl_amagic_call, ptr @Perl_pop_scope, i64 2}
!130 = !{ptr @Perl_try_amagic_bin, ptr @Perl_mg_get, i64 68757}
!131 = !{ptr @Perl_try_amagic_bin, ptr @Perl_amagic_call, i64 1}
!132 = !{ptr @Perl_amagic_deref_call, ptr @Perl_amagic_call, i64 3}
!133 = !{ptr @Perl_gv_try_downgrade, ptr @Perl_hv_common, i64 3}
!134 = !{ptr @Perl_gv_override, ptr @Perl_gv_fetchpvn_flags, i64 374}
!135 = !{ptr @Perl_gv_override, ptr @Perl_hv_common_key_len, i64 374}
!136 = !{ptr @S_require_tie_mod, ptr @S_gv_stashsvpvn_cached, i64 19}
!137 = !{ptr @S_require_tie_mod, ptr @strlen, i64 19}
!138 = !{ptr @S_require_tie_mod, ptr @Perl_gv_fetchmethod_pvn_flags, i64 19}
!139 = !{ptr @S_require_tie_mod, ptr @Perl_newSVsv, i64 1}
!140 = !{ptr @S_require_tie_mod, ptr @Perl_push_scope, i64 1}
!141 = !{ptr @S_require_tie_mod, ptr @Perl_save_pushptr, i64 1}
!142 = !{ptr @S_require_tie_mod, ptr @Perl_load_module, i64 1}
!143 = !{ptr @S_require_tie_mod, ptr @Perl_pop_scope, i64 1}
!144 = !{ptr @S_require_tie_mod, ptr @Perl_sv_free2, i64 17}
!145 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!146 = !{!"function_entry_count", i64 11386}
!147 = !{!"branch_weights", i32 0, i32 11984}
!148 = !{!149, !153, i64 12}
!149 = !{!"sv", !150, i64 0, !153, i64 8, !153, i64 12, !151, i64 16}
!150 = !{!"any pointer", !151, i64 0}
!151 = !{!"omnipotent char", !152, i64 0}
!152 = !{!"Simple C/C++ TBAA"}
!153 = !{!"int", !151, i64 0}
!154 = !{!"branch_weights", i32 11984, i32 0}
!155 = !{!150, !150, i64 0}
!156 = !{!151, !151, i64 0}
!157 = !{!"branch_weights", i32 543, i32 164, i32 11260, i32 17}
!158 = !{!"branch_weights", i32 11982, i32 2}
!159 = !{!"branch_weights", i32 11259, i32 723}
!160 = !{!161, !150, i64 0}
!161 = !{!"gv", !150, i64 0, !153, i64 8, !153, i64 12, !151, i64 16}
!162 = !{!163, !153, i64 4}
!163 = !{!"hek", !153, i64 0, !153, i64 4, !151, i64 8}
!164 = !{!"branch_weights", i32 24, i32 11235}
!165 = !{!"branch_weights", i32 22, i32 2}
!166 = !{!"function_entry_count", i64 405}
!167 = !{!"branch_weights", i32 0, i32 405}
!168 = !{!"branch_weights", i32 405, i32 0}
!169 = !{!"VP", i32 1, i64 405, i64 9, i64 268, i64 17, i64 84, i64 33, i64 34, i64 8, i64 11}
!170 = !{!161, !153, i64 12}
!171 = !{!"branch_weights", i32 209, i32 196}
!172 = !{!173, !150, i64 0}
!173 = !{!"gp", !150, i64 0, !150, i64 8, !150, i64 16, !153, i64 24, !153, i64 28, !150, i64 32, !150, i64 40, !150, i64 48, !150, i64 56, !153, i64 64, !153, i64 67, !150, i64 72}
!174 = !{!153, !153, i64 0}
!175 = !{!173, !150, i64 40}
!176 = !{!173, !150, i64 32}
!177 = !{!"function_entry_count", i64 14040}
!178 = !{!"branch_weights", i32 14028, i32 12}
!179 = !{!"branch_weights", i32 12, i32 0}
!180 = !{!181, !182, i64 16}
!181 = !{!"xpv", !150, i64 0, !151, i64 8, !182, i64 16, !151, i64 24}
!182 = !{!"long", !151, i64 0}
!183 = !{!"branch_weights", i32 14016, i32 24}
!184 = !{!"branch_weights", i32 23, i32 1}
!185 = !{!"branch_weights", i32 14039, i32 1}
!186 = !{!"branch_weights", i32 1, i32 0, i32 0, i32 0}
!187 = !{!"branch_weights", i32 14040, i32 0}
!188 = !{!"branch_weights", i32 12, i32 14028}
!189 = !{!"branch_weights", i32 0, i32 12}
!190 = !{!"branch_weights", i32 0, i32 14040}
!191 = !{!"branch_weights", i32 12247, i32 1793}
!192 = !{!193, !182, i64 16}
!193 = !{!"xpvgv", !150, i64 0, !151, i64 8, !182, i64 16, !151, i64 24, !151, i64 32, !151, i64 40}
!194 = !{!"branch_weights", i32 1, i32 0}
!195 = !{!173, !150, i64 16}
!196 = !{!197, !150, i64 0}
!197 = !{!"cv", !150, i64 0, !153, i64 8, !153, i64 12, !151, i64 16}
!198 = !{!199, !150, i64 32}
!199 = !{!"xpvcv", !150, i64 0, !151, i64 8, !182, i64 16, !151, i64 24, !150, i64 32, !151, i64 40, !151, i64 48, !151, i64 56, !150, i64 64, !151, i64 72, !150, i64 80, !153, i64 88, !153, i64 92, !153, i64 96}
!200 = !{!199, !153, i64 92}
!201 = !{!"branch_weights", i32 0, i32 1}
!202 = !{!"branch_weights", i32 14016, i32 23}
!203 = !{!"branch_weights", i32 23, i32 0}
!204 = !{!197, !153, i64 8}
!205 = !{!"branch_weights", i32 11, i32 12}
!206 = !{!"function_entry_count", i64 0}
!207 = !{!173, !153, i64 24}
!208 = !{!"function_entry_count", i64 14072}
!209 = !{!173, !150, i64 56}
!210 = !{!"branch_weights", i32 0, i32 14072}
!211 = !{!212, !153, i64 36}
!212 = !{!"cop", !150, i64 0, !150, i64 8, !150, i64 16, !182, i64 24, !153, i64 32, !153, i64 33, !153, i64 33, !153, i64 33, !153, i64 33, !153, i64 33, !153, i64 33, !153, i64 33, !151, i64 34, !151, i64 35, !153, i64 36, !150, i64 40, !150, i64 48, !153, i64 56, !153, i64 60, !150, i64 64, !150, i64 72}
!213 = !{!212, !150, i64 48}
!214 = !{!"branch_weights", i32 12, i32 14060}
!215 = !{!"branch_weights", i32 28111, i32 1}
!216 = !{!"branch_weights", i32 261926, i32 28111}
!217 = distinct !{!217, !218, !219}
!218 = !{!"llvm.loop.mustprogress"}
!219 = !{!"llvm.loop.unroll.disable"}
!220 = !{!173, !150, i64 72}
!221 = !{!173, !153, i64 28}
!222 = !{!"function_entry_count", i64 1900}
!223 = !{!"branch_weights", i32 1899, i32 1}
!224 = !{!"branch_weights", i32 215, i32 1685}
!225 = !{!"branch_weights", i32 1347, i32 338}
!226 = !{!"branch_weights", i32 324, i32 14}
!227 = !{!149, !153, i64 8}
!228 = !{!"branch_weights", i32 14, i32 0}
!229 = !{!"branch_weights", i32 1346, i32 1}
!230 = !{!"branch_weights", i32 338, i32 1347}
!231 = !{!"branch_weights", i32 1347, i32 0}
!232 = !{!"branch_weights", i32 0, i32 1347}
!233 = !{!"branch_weights", i32 1189, i32 158}
!234 = !{!173, !150, i64 48}
!235 = !{!"branch_weights", i32 0, i32 158}
!236 = !{!"function_entry_count", i64 1}
!237 = !{!163, !153, i64 0}
!238 = !{!"function_entry_count", i64 1125}
!239 = !{!"branch_weights", i32 23, i32 1102}
!240 = !{!"branch_weights", i32 1102, i32 0}
!241 = !{!"branch_weights", i32 0, i32 1102}
!242 = !{!149, !150, i64 0}
!243 = !{!182, !182, i64 0}
!244 = !{!"branch_weights", i32 1, i32 28111}
!245 = !{!"function_entry_count", i64 13036}
!246 = !{!"gv.c;S_gv_fetchmeth_internal"}
!247 = !{!"branch_weights", i32 90, i32 12946}
!248 = !{!"branch_weights", i32 0, i32 90}
!249 = !{!250, !153, i64 12}
!250 = !{!"hv", !150, i64 0, !153, i64 8, !153, i64 12, !151, i64 16}
!251 = !{!"branch_weights", i32 0, i32 13036}
!252 = !{!250, !150, i64 0}
!253 = !{!254, !182, i64 24}
!254 = !{!"xpvhv", !150, i64 0, !151, i64 8, !182, i64 16, !182, i64 24}
!255 = !{!256, !153, i64 28}
!256 = !{!"xpvhv_aux", !151, i64 0, !150, i64 8, !150, i64 16, !153, i64 24, !153, i64 28, !150, i64 32, !153, i64 40, !153, i64 44, !153, i64 48, !153, i64 52}
!257 = !{!"branch_weights", i32 13036, i32 0}
!258 = !{!256, !150, i64 32}
!259 = !{!260, !153, i64 24}
!260 = !{!"mro_meta", !150, i64 0, !150, i64 8, !150, i64 16, !153, i64 24, !153, i64 28, !150, i64 32, !150, i64 40, !150, i64 48, !153, i64 56}
!261 = !{!"branch_weights", i32 13035, i32 1}
!262 = !{!260, !150, i64 48}
!263 = !{!"branch_weights", i32 152, i32 12884}
!264 = !{!"branch_weights", i32 12850, i32 34}
!265 = !{!"branch_weights", i32 0, i32 34}
!266 = !{!"branch_weights", i32 39, i32 12845}
!267 = !{!"branch_weights", i32 12845, i32 0}
!268 = !{!"branch_weights", i32 0, i32 39}
!269 = !{!"branch_weights", i32 38, i32 1}
!270 = !{!"branch_weights", i32 0, i32 38}
!271 = !{!"branch_weights", i32 38, i32 0}
!272 = !{!"branch_weights", i32 1, i32 37}
!273 = !{!274, !150, i64 0}
!274 = !{!"av", !150, i64 0, !153, i64 8, !153, i64 12, !151, i64 16}
!275 = !{!276, !182, i64 16}
!276 = !{!"xpvav", !150, i64 0, !151, i64 8, !182, i64 16, !182, i64 24, !150, i64 32}
!277 = !{!"branch_weights", i32 121, i32 26}
!278 = !{!"branch_weights", i32 0, i32 26}
!279 = !{!"branch_weights", i32 26, i32 0}
!280 = distinct !{!280, !218, !219}
!281 = !{!"branch_weights", i32 5, i32 21}
!282 = !{!"branch_weights", i32 5, i32 0}
!283 = !{!"branch_weights", i32 0, i32 5}
!284 = !{}
!285 = !{!"branch_weights", i32 21, i32 0}
!286 = !{!"branch_weights", i32 3, i32 18}
!287 = !{!"branch_weights", i32 18, i32 0}
!288 = !{!"branch_weights", i32 0, i32 18}
!289 = !{!"branch_weights", i32 90, i32 83}
!290 = !{!"branch_weights", i32 83, i32 7}
!291 = !{!"branch_weights", i32 0, i32 7}
!292 = !{!"branch_weights", i32 7, i32 0}
!293 = !{!"branch_weights", i32 152, i32 14}
!294 = !{!"function_entry_count", i64 8}
!295 = !{!"branch_weights", i32 5, i32 3}
!296 = !{!"function_entry_count", i64 2}
!297 = !{!"branch_weights", i32 0, i32 2}
!298 = !{!"function_entry_count", i64 12827}
!299 = !{!"branch_weights", i32 12827, i32 0}
!300 = !{!"function_entry_count", i64 12848}
!301 = !{!"branch_weights", i32 0, i32 12848}
!302 = !{!"branch_weights", i32 12847, i32 1}
!303 = !{!"branch_weights", i32 102676, i32 0, i32 0}
!304 = !{!"branch_weights", i32 102676, i32 12848}
!305 = !{!"branch_weights", i32 89829, i32 12847}
!306 = distinct !{!306, !218, !219}
!307 = !{!"branch_weights", i32 12848, i32 0}
!308 = !{!212, !150, i64 40}
!309 = !{!"branch_weights", i32 4, i32 12844}
!310 = !{!"branch_weights", i32 3, i32 1}
!311 = !{!"branch_weights", i32 0, i32 4}
!312 = !{!"branch_weights", i32 12817, i32 27}
!313 = !{!"branch_weights", i32 0, i32 27}
!314 = !{!"function_entry_count", i64 13028}
!315 = !{!197, !153, i64 12}
!316 = !{!317, !317, i64 0}
!317 = !{!"_Bool", !151, i64 0}
!318 = !{i8 0, i8 2}
!319 = !{!"function_entry_count", i64 77}
!320 = !{!"function_entry_count", i64 38563}
!321 = !{!"gv.c;S_gv_stashsvpvn_cached"}
!322 = !{!"branch_weights", i32 286, i32 38277}
!323 = !{!"branch_weights", i32 182, i32 104}
!324 = !{!"branch_weights", i32 115, i32 67}
!325 = !{!"branch_weights", i32 67, i32 0}
!326 = !{!"branch_weights", i32 182, i32 0}
!327 = !{!"VP", i32 1, i64 182, i64 9, i64 63, i64 8, i64 32, i64 6, i64 20, i64 4, i64 19}
!328 = !{!"branch_weights", i32 10, i32 172}
!329 = !{!"branch_weights", i32 172, i32 0}
!330 = !{!"branch_weights", i32 100, i32 72}
!331 = !{!"branch_weights", i32 0, i32 172}
!332 = !{!"branch_weights", i32 172, i32 10}
!333 = !{!"function_entry_count", i64 25323}
!334 = !{!"function_entry_count", i64 118}
!335 = !{!"function_entry_count", i64 320873}
!336 = !{!"branch_weights", i32 318167, i32 2706}
!337 = !{!"branch_weights", i32 313897, i32 4270}
!338 = !{!"branch_weights", i32 0, i32 313897}
!339 = !{!212, !153, i64 56}
!340 = !{!"branch_weights", i32 306595, i32 1}
!341 = !{!"branch_weights", i32 4320345, i32 306596}
!342 = !{!"branch_weights", i32 299832, i32 4020513}
!343 = !{!"branch_weights", i32 299832, i32 0}
!344 = !{!"branch_weights", i32 0, i32 4020513}
!345 = !{!"branch_weights", i32 298677, i32 1155}
!346 = !{!"branch_weights", i32 0, i32 299832}
!347 = !{!250, !153, i64 8}
!348 = !{!"branch_weights", i32 299826, i32 6}
!349 = !{!"branch_weights", i32 299826, i32 0}
!350 = !{!"branch_weights", i32 17, i32 299809}
!351 = !{!"branch_weights", i32 299678, i32 131}
!352 = !{!"branch_weights", i32 131, i32 299678}
!353 = !{!"branch_weights", i32 131, i32 0}
!354 = !{!"branch_weights", i32 16, i32 115}
!355 = !{!"branch_weights", i32 1, i32 15}
!356 = !{!"branch_weights", i32 0, i32 299678}
!357 = !{!"branch_weights", i32 299678, i32 0}
!358 = !{!"branch_weights", i32 11554, i32 288261}
!359 = !{!"branch_weights", i32 4, i32 11550}
!360 = !{!"branch_weights", i32 4320346, i32 306595}
!361 = distinct !{!361, !218, !219}
!362 = !{!"branch_weights", i32 318150, i32 17}
!363 = !{!"branch_weights", i32 11554, i32 306596}
!364 = !{!"branch_weights", i32 22196, i32 287106}
!365 = !{!"branch_weights", i32 0, i32 22196}
!366 = !{!"branch_weights", i32 20397, i32 1799}
!367 = !{!"branch_weights", i32 9804, i32 2772, i32 1147, i32 1205, i32 1848, i32 1786, i32 1835}
!368 = !{!"branch_weights", i32 2295, i32 477}
!369 = !{!"branch_weights", i32 445133824, i32 38281518, i32 332883696, i32 44659808}
!370 = !{!"branch_weights", i32 25, i32 26}
!371 = !{!"branch_weights", i32 25, i32 0}
!372 = !{!"branch_weights", i32 406144, i32 303726, i32 40748}
!373 = !{!"branch_weights", i32 454, i32 0}
!374 = !{!"branch_weights", i32 453, i32 1}
!375 = !{!"branch_weights", i32 61, i32 608}
!376 = !{!"branch_weights", i32 56, i32 5}
!377 = !{!"branch_weights", i32 56, i32 0}
!378 = !{!"branch_weights", i32 27, i32 1178}
!379 = !{!"branch_weights", i32 27, i32 0}
!380 = !{!"branch_weights", i32 13, i32 1835}
!381 = !{!"branch_weights", i32 13, i32 0}
!382 = !{!"branch_weights", i32 7, i32 6}
!383 = !{!"branch_weights", i32 234, i32 1552}
!384 = !{!"branch_weights", i32 204, i32 30}
!385 = !{!"branch_weights", i32 204, i32 0}
!386 = !{!"branch_weights", i32 0, i32 9675, i32 16641}
!387 = !{!"branch_weights", i32 75, i32 0}
!388 = !{!"branch_weights", i32 129, i32 0}
!389 = !{!"branch_weights", i32 37, i32 1798}
!390 = !{!"branch_weights", i32 0, i32 37}
!391 = !{!"branch_weights", i32 16024, i32 1306}
!392 = !{!"branch_weights", i32 8572, i32 7452}
!393 = !{!"branch_weights", i32 0, i32 353}
!394 = !{!"branch_weights", i32 353, i32 0}
!395 = !{!"branch_weights", i32 292, i32 61}
!396 = !{!"branch_weights", i32 0, i32 292}
!397 = !{!"branch_weights", i32 292, i32 34, i32 27}
!398 = !{!"branch_weights", i32 22196, i32 0}
!399 = !{!"branch_weights", i32 0, i32 309302}
!400 = !{!"branch_weights", i32 193614, i32 115688}
!401 = !{!"branch_weights", i32 2703, i32 306599}
!402 = !{!"branch_weights", i32 0, i32 306599}
!403 = !{!"branch_weights", i32 2703, i32 0}
!404 = !{!"branch_weights", i32 292774, i32 13825}
!405 = !{!"branch_weights", i32 190786, i32 101988}
!406 = !{!"branch_weights", i32 2315, i32 99673}
!407 = !{!"branch_weights", i32 2026, i32 99962}
!408 = !{!"branch_weights", i32 729, i32 21, i32 1, i32 1275}
!409 = !{!"branch_weights", i32 19, i32 3, i32 0, i32 0}
!410 = !{!"branch_weights", i32 1275, i32 0, i32 0}
!411 = !{!"branch_weights", i32 21, i32 1, i32 1275}
!412 = !{!"branch_weights", i32 14, i32 1262}
!413 = !{!"branch_weights", i32 26, i32 99936}
!414 = !{!"branch_weights", i32 16, i32 10}
!415 = !{!"branch_weights", i32 0, i32 16}
!416 = !{!274, !153, i64 12}
!417 = !{!"branch_weights", i32 13797, i32 28}
!418 = !{!"branch_weights", i32 13677, i32 120}
!419 = !{!"branch_weights", i32 23, i32 13654}
!420 = !{!"branch_weights", i32 13677, i32 0}
!421 = !{!"branch_weights", i32 0, i32 13677}
!422 = !{!"branch_weights", i32 13604, i32 73}
!423 = !{!"branch_weights", i32 193, i32 13411}
!424 = !{!173, !150, i64 8}
!425 = !{!"branch_weights", i32 91, i32 13586}
!426 = !{!"branch_weights", i32 0, i32 13586}
!427 = !{!"branch_weights", i32 13351, i32 59, i32 47, i32 57, i32 29, i32 43}
!428 = !{!"branch_weights", i32 43, i32 16}
!429 = !{!"branch_weights", i32 22, i32 25}
!430 = !{!"branch_weights", i32 46, i32 11}
!431 = !{!"branch_weights", i32 2, i32 70}
!432 = !{!"branch_weights", i32 13419, i32 4}
!433 = !{!"branch_weights", i32 0, i32 13419}
!434 = !{!"branch_weights", i32 13419, i32 0}
!435 = !{!"branch_weights", i32 60, i32 13359}
!436 = !{!"branch_weights", i32 60, i32 0}
!437 = !{!"branch_weights", i32 0, i32 60}
!438 = !{!"branch_weights", i32 43, i32 48}
!439 = !{!"branch_weights", i32 30, i32 13}
!440 = !{!"branch_weights", i32 3, i32 1, i32 1, i32 1, i32 4, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!441 = !{!442, !150, i64 0}
!442 = !{!"io", !150, i64 0, !153, i64 8, !153, i64 12, !151, i64 16}
!443 = !{!444, !151, i64 129}
!444 = !{!"xpvio", !150, i64 0, !151, i64 8, !182, i64 16, !151, i64 24, !151, i64 32, !150, i64 40, !151, i64 48, !182, i64 56, !182, i64 64, !182, i64 72, !150, i64 80, !150, i64 88, !150, i64 96, !150, i64 104, !150, i64 112, !150, i64 120, !151, i64 128, !151, i64 129}
!445 = !{!"branch_weights", i32 1, i32 3}
!446 = !{!"branch_weights", i32 0, i32 15}
!447 = !{!"branch_weights", i32 1, i32 14}
!448 = distinct !{!448, !218, !219}
!449 = !{!"branch_weights", i32 11, i32 1, i32 0, i32 1}
!450 = !{!"branch_weights", i32 8, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1}
!451 = !{!"branch_weights", i32 9, i32 0}
!452 = !{!"branch_weights", i32 1, i32 0, i32 0}
!453 = !{!"branch_weights", i32 2, i32 0}
!454 = !{!"branch_weights", i32 1, i32 1}
!455 = !{!"branch_weights", i32 2, i32 0, i32 0}
!456 = !{!"branch_weights", i32 0, i32 0, i32 1}
!457 = !{!"branch_weights", i32 0, i32 13676}
!458 = !{!"function_entry_count", i64 219130}
!459 = !{!"branch_weights", i32 219130, i32 0}
!460 = !{!"function_entry_count", i64 115665}
!461 = !{!"gv.c;S_gv_init_svtype"}
!462 = !{!"branch_weights", i32 5228, i32 68, i32 1153, i32 1443, i32 0, i32 95533, i32 0, i32 12240}
!463 = !{!"branch_weights", i32 0, i32 68}
!464 = !{!"branch_weights", i32 68, i32 0}
!465 = !{!"branch_weights", i32 16, i32 52}
!466 = !{!"branch_weights", i32 79, i32 1074}
!467 = !{!"branch_weights", i32 97, i32 1346}
!468 = !{!"branch_weights", i32 501, i32 4727}
!469 = !{!"function_entry_count", i64 22}
!470 = !{!"gv.c;S_gv_magicalize_isa"}
!471 = !{!"branch_weights", i32 22, i32 0}
!472 = !{!"function_entry_count", i64 86}
!473 = !{!"branch_weights", i32 86, i32 0}
!474 = !{!"branch_weights", i32 0, i32 86}
!475 = !{!"function_entry_count", i64 80}
!476 = !{!"branch_weights", i32 0, i32 80}
!477 = !{!"branch_weights", i32 159, i32 1}
!478 = !{!256, !153, i64 52}
!479 = !{!"branch_weights", i32 883, i32 1069}
!480 = !{!481, !150, i64 8}
!481 = !{!"he", !150, i64 0, !150, i64 8, !151, i64 16}
!482 = !{!"branch_weights", i32 80, i32 989}
!483 = !{!"branch_weights", i32 80, i32 0}
!484 = !{!"branch_weights", i32 1, i32 79}
!485 = !{!"branch_weights", i32 0, i32 79}
!486 = !{!"branch_weights", i32 79, i32 0}
!487 = !{!"branch_weights", i32 73, i32 916}
!488 = !{!"branch_weights", i32 916, i32 0}
!489 = !{!"branch_weights", i32 0, i32 916}
!490 = !{!"branch_weights", i32 872, i32 44}
!491 = !{!"branch_weights", i32 865, i32 7}
!492 = !{!"branch_weights", i32 0, i32 865}
!493 = !{!"branch_weights", i32 1069, i32 0}
!494 = distinct !{!494, !218, !219}
!495 = !{!"branch_weights", i32 3745, i32 159}
!496 = distinct !{!496, !218, !219}
!497 = !{!"function_entry_count", i64 227683}
!498 = !{!"branch_weights", i32 0, i32 227683}
!499 = !{!"branch_weights", i32 227678, i32 5}
!500 = !{!"function_entry_count", i64 218126}
!501 = !{!"branch_weights", i32 0, i32 218126}
!502 = !{!"branch_weights", i32 218126, i32 0}
!503 = !{!"branch_weights", i32 206703, i32 0, i32 11423}
!504 = !{!"branch_weights", i32 1, i32 206702}
!505 = !{!"branch_weights", i32 0, i32 11423}
!506 = !{!"branch_weights", i32 11311, i32 112}
!507 = !{!"branch_weights", i32 0, i32 112}
!508 = !{!"branch_weights", i32 11423, i32 0}
!509 = !{!442, !153, i64 8}
!510 = !{!444, !151, i64 128}
!511 = !{!"branch_weights", i32 11420, i32 3}
!512 = !{!"branch_weights", i32 0, i32 3}
!513 = !{!514, !150, i64 40}
!514 = !{!"magic", !150, i64 0, !150, i64 8, !515, i64 16, !151, i64 18, !151, i64 19, !182, i64 24, !150, i64 32, !150, i64 40}
!515 = !{!"short", !151, i64 0}
!516 = !{!517, !151, i64 0}
!517 = !{!"am_table", !151, i64 0, !151, i64 1, !515, i64 2, !153, i64 4, !151, i64 8}
!518 = distinct !{!518, !218, !219}
!519 = !{!"function_entry_count", i64 7}
!520 = !{!260, !153, i64 28}
!521 = !{!"branch_weights", i32 6, i32 1}
!522 = !{!517, !153, i64 4}
!523 = !{!517, !151, i64 1}
!524 = !{!"branch_weights", i32 5, i32 1}
!525 = !{!"branch_weights", i32 1, i32 73}
!526 = distinct !{!526, !218, !219}
!527 = !{!"branch_weights", i32 59, i32 15}
!528 = !{!"branch_weights", i32 15, i32 0}
!529 = !{!"branch_weights", i32 6, i32 9}
!530 = !{!"branch_weights", i32 0, i32 6}
!531 = !{!"branch_weights", i32 59, i32 0}
!532 = !{!"branch_weights", i32 14, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1}
!533 = !{!"branch_weights", i32 74, i32 0}
!534 = !{!"branch_weights", i32 1, i32 0, i32 5}
!535 = !{!536, !150, i64 0}
!536 = !{!"xpvmg", !150, i64 0, !151, i64 8, !182, i64 16, !151, i64 24, !151, i64 32, !151, i64 40}
!537 = !{!538, !182, i64 24}
!538 = !{!"op", !150, i64 0, !150, i64 8, !150, i64 16, !182, i64 24, !153, i64 32, !153, i64 33, !153, i64 33, !153, i64 33, !153, i64 33, !153, i64 33, !153, i64 33, !153, i64 33, !151, i64 34, !151, i64 35}
!539 = !{!"branch_weights", i32 5, i32 2}
!540 = !{!"branch_weights", i32 1, i32 5}
!541 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0}
!542 = !{!"branch_weights", i32 3, i32 2}
!543 = !{!"branch_weights", i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0}
!544 = !{!545, !317, i64 212}
!545 = !{!"jmpenv", !151, i64 0, !150, i64 200, !153, i64 208, !317, i64 212}
!546 = !{!538, !151, i64 34}
!547 = !{!548, !150, i64 48}
!548 = !{!"binop", !150, i64 0, !150, i64 8, !150, i64 16, !182, i64 24, !153, i64 32, !153, i64 33, !153, i64 33, !153, i64 33, !153, i64 33, !153, i64 33, !153, i64 33, !153, i64 33, !151, i64 34, !151, i64 35, !150, i64 40, !150, i64 48}
!549 = !{!548, !150, i64 0}
!550 = !{!548, !151, i64 34}
!551 = !{!552, !150, i64 24}
!552 = !{!"stackinfo", !150, i64 0, !150, i64 8, !150, i64 16, !150, i64 24, !153, i64 32, !153, i64 36, !153, i64 40, !153, i64 44}
!553 = !{!552, !150, i64 16}
!554 = !{!552, !153, i64 40}
!555 = !{!552, !153, i64 32}
!556 = !{!552, !150, i64 0}
!557 = !{!276, !182, i64 24}
!558 = !{!538, !151, i64 35}
!559 = !{!"VP", i32 0, i64 2, i64 -5666957817396558376, i64 2}
!560 = distinct !{!560, !218, !219}
!561 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0}
!562 = !{!"function_entry_count", i64 57829}
!563 = !{!"branch_weights", i32 40629, i32 17200}
!564 = !{!"branch_weights", i32 0, i32 57829}
!565 = !{!"branch_weights", i32 6272, i32 51557}
!566 = !{!"branch_weights", i32 57828, i32 1}
!567 = !{!"branch_weights", i32 57828, i32 0}
!568 = !{!"branch_weights", i32 0, i32 57828}
!569 = !{!"branch_weights", i32 57826, i32 2}
!570 = !{!"function_entry_count", i64 3}
!571 = !{!"branch_weights", i32 3, i32 0}
!572 = distinct !{!572, !218, !219}
!573 = !{!212, !150, i64 72}
!574 = !{!"function_entry_count", i64 664}
!575 = !{!"branch_weights", i32 0, i32 664}
!576 = !{!161, !153, i64 8}
!577 = !{!"branch_weights", i32 664, i32 0}
!578 = !{!"branch_weights", i32 544, i32 120}
!579 = !{!"branch_weights", i32 0, i32 544}
!580 = !{!"branch_weights", i32 544, i32 0}
!581 = !{!"branch_weights", i32 536, i32 8}
!582 = !{!"branch_weights", i32 452, i32 84}
!583 = !{!"branch_weights", i32 398, i32 54}
!584 = !{!"branch_weights", i32 382, i32 16}
!585 = !{!"branch_weights", i32 380, i32 2}
!586 = !{!"branch_weights", i32 380, i32 0}
!587 = !{!"branch_weights", i32 0, i32 380}
!588 = !{!"branch_weights", i32 168, i32 212}
!589 = !{!"branch_weights", i32 212, i32 0}
!590 = !{!"branch_weights", i32 212, i32 212}
!591 = !{!514, !151, i64 18}
!592 = distinct !{!592, !218, !219}
!593 = !{!"branch_weights", i32 3, i32 377}
!594 = !{!"branch_weights", i32 0, i32 377}
!595 = !{!"branch_weights", i32 210, i32 167}
!596 = !{!"branch_weights", i32 193, i32 17}
!597 = !{!"branch_weights", i32 120, i32 73}
!598 = !{!"branch_weights", i32 120, i32 0}
!599 = !{!"branch_weights", i32 0, i32 14400}
!600 = !{!"function_entry_count", i64 374}
!601 = !{!"branch_weights", i32 374, i32 0}
!602 = !{!199, !150, i64 64}
!603 = !{!"function_entry_count", i64 18}
!604 = !{!"gv.c;S_require_tie_mod"}
!605 = !{!"branch_weights", i32 1, i32 17}
!606 = !{!"branch_weights", i32 0, i32 17}
