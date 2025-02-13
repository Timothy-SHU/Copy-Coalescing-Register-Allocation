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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @Perl_gv_add_by_type(ptr noundef returned %0, i32 noundef %1) local_unnamed_addr #0 !prof !212 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !213

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !214
  %7 = and i32 %6, 255
  %8 = add nsw i32 %7, -9
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %24, label %10, !prof !220

10:                                               ; preds = %4, %2
  switch i32 %1, label %19 [
    i32 15, label %11
    i32 12, label %22
  ]

11:                                               ; preds = %10
  %12 = load ptr, ptr @PL_op, align 8, !tbaa !221
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
  %26 = load ptr, ptr %25, align 8, !tbaa !222
  switch i32 %1, label %33 [
    i32 12, label %27
    i32 11, label %29
    i32 15, label %31
  ], !prof !223

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
  %35 = load ptr, ptr %34, align 8, !tbaa !221
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %52, !prof !224

37:                                               ; preds = %33
  %38 = tail call ptr @Perl_newSV_type(i32 noundef %1) #11
  store ptr %38, ptr %34, align 8, !tbaa !221
  %39 = icmp eq i32 %1, 11
  br i1 %39, label %40, label %52, !prof !225

40:                                               ; preds = %37
  %41 = load ptr, ptr %0, align 8, !tbaa !226
  %42 = getelementptr inbounds %struct.xpvgv, ptr %41, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !222
  %44 = getelementptr inbounds %struct.hek, ptr %43, i64 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !228
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %47, label %52, !prof !230

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.hek, ptr %43, i64 0, i32 2
  %49 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(4) @.str.6, i64 noundef 3) #12
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52, !prof !231

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
define dso_local ptr @Perl_gv_fetchfile(ptr noundef %0) local_unnamed_addr #0 !prof !232 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %3 = tail call ptr @Perl_gv_fetchfile_flags(ptr noundef %0, i64 noundef %2, i32 poison) #13
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchfile_flags(ptr noundef %0, i64 noundef %1, i32 %2) local_unnamed_addr #0 !prof !232 {
  %4 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #14
  %5 = add i64 %1, 2
  %6 = load ptr, ptr @PL_defstash, align 8, !tbaa !221
  %7 = icmp eq ptr %6, null
  br i1 %7, label %67, label %8, !prof !233

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %4, i64 1
  %10 = getelementptr inbounds i8, ptr %4, i64 2
  %11 = icmp ult i64 %5, 129
  br i1 %11, label %16, label %12, !prof !234

12:                                               ; preds = %8
  %13 = tail call ptr @Perl_safesysmalloc(i64 noundef %5) #11
  %14 = getelementptr inbounds i8, ptr %13, i64 2
  %15 = getelementptr inbounds i8, ptr %13, i64 1
  br label %16

16:                                               ; preds = %8, %12
  %17 = phi ptr [ %13, %12 ], [ %4, %8 ]
  %18 = phi ptr [ %15, %12 ], [ %9, %8 ]
  %19 = phi ptr [ %14, %12 ], [ %10, %8 ]
  store i8 95, ptr %17, align 1, !tbaa !222
  store i8 60, ptr %18, align 1, !tbaa !222
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr align 1 %0, i64 %1, i1 false)
  %20 = load ptr, ptr @PL_defstash, align 8, !tbaa !221
  %21 = trunc i64 %5 to i32
  %22 = call ptr @Perl_hv_common_key_len(ptr noundef %20, ptr noundef nonnull %17, i32 noundef %21, i32 noundef 48, ptr noundef null, i32 noundef 0) #11
  %23 = load ptr, ptr %22, align 8, !tbaa !221
  %24 = getelementptr inbounds %struct.gv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !235
  %26 = and i32 %25, 255
  %27 = icmp eq i32 %26, 9
  br i1 %27, label %33, label %28, !prof !236

28:                                               ; preds = %16
  %29 = load ptr, ptr @PL_defstash, align 8, !tbaa !221
  call void @Perl_gv_init_pvn(ptr noundef nonnull %23, ptr noundef %29, ptr noundef nonnull %17, i64 noundef %5, i32 noundef 0) #13
  %30 = call ptr @Perl_newSVpvn(ptr noundef %0, i64 noundef %1) #11
  %31 = getelementptr inbounds %struct.gv, ptr %23, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !222
  store ptr %30, ptr %32, align 8, !tbaa !237
  br label %33

33:                                               ; preds = %28, %16
  %34 = load i32, ptr @PL_perldb, align 4, !tbaa !239
  %35 = and i32 %34, 1026
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %64, label %37, !prof !240

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.gv, ptr %23, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !222
  %40 = getelementptr inbounds %struct.gp, ptr %39, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !241
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %64

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.gp, ptr %39, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !242
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %23, i32 noundef 12) #13
  %49 = load ptr, ptr %38, align 8, !tbaa !222
  %50 = getelementptr inbounds %struct.gp, ptr %49, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !242
  %52 = getelementptr inbounds %struct.gp, ptr %49, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !241
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %43, %47
  %56 = phi ptr [ %51, %47 ], [ %45, %43 ]
  %57 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %23, i32 noundef 11) #13
  %58 = load ptr, ptr %38, align 8, !tbaa !222
  %59 = getelementptr inbounds %struct.gp, ptr %58, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !241
  br label %61

61:                                               ; preds = %47, %55
  %62 = phi ptr [ %56, %55 ], [ %51, %47 ]
  %63 = phi ptr [ %60, %55 ], [ %53, %47 ]
  call void @Perl_sv_magic(ptr noundef %62, ptr noundef %63, i32 noundef 76, ptr noundef null, i32 noundef 0) #11
  br label %64

64:                                               ; preds = %33, %61, %37
  %65 = icmp eq ptr %17, %4
  br i1 %65, label %67, label %66, !prof !234

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
define dso_local void @Perl_gv_init_pvn(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !243 {
  %6 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !235
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %63, label %10, !prof !244

10:                                               ; preds = %5
  %11 = and i32 %7, 1024
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %28, label %13, !prof !245

13:                                               ; preds = %10
  %14 = and i32 %7, 268435456
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !246

16:                                               ; preds = %13
  tail call void @Perl_sv_force_normal_flags(ptr noundef nonnull %0, i32 noundef 0) #11
  %17 = load i32, ptr %6, align 4, !tbaa !235
  br label %18

18:                                               ; preds = %13, %16
  %19 = phi i32 [ %7, %13 ], [ %17, %16 ]
  %20 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !222
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23, !prof !247

23:                                               ; preds = %18
  %24 = load ptr, ptr %0, align 8, !tbaa !226
  %25 = getelementptr inbounds %struct.xpv, ptr %24, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !248
  %27 = and i32 %19, 536870912
  br label %28

28:                                               ; preds = %18, %10, %23
  %29 = phi i32 [ %19, %23 ], [ %7, %10 ], [ %19, %18 ]
  %30 = phi i32 [ %27, %23 ], [ 0, %10 ], [ 0, %18 ]
  %31 = phi i1 [ false, %23 ], [ true, %10 ], [ true, %18 ]
  %32 = phi ptr [ %21, %23 ], [ null, %10 ], [ null, %18 ]
  %33 = phi i64 [ %26, %23 ], [ 0, %10 ], [ 0, %18 ]
  %34 = and i32 %29, 2048
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %53, label %36, !prof !251

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !222
  %39 = icmp eq ptr %38, null
  br i1 %39, label %53, label %40, !prof !247

40:                                               ; preds = %36
  %41 = and i32 %29, 34816
  %42 = icmp eq i32 %41, 34816
  %43 = zext i1 %42 to i32
  %44 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !214
  %46 = trunc i32 %45 to i8
  switch i8 %46, label %50 [
    i8 12, label %47
    i8 14, label %47
    i8 15, label %47
  ], !prof !252

47:                                               ; preds = %40, %40, %40
  %48 = tail call ptr @Perl_sv_reftype(ptr noundef nonnull %38, i32 noundef 0) #11
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.9, ptr noundef %48) #11
  %49 = load i32, ptr %6, align 4, !tbaa !235
  br label %50

50:                                               ; preds = %40, %47
  %51 = phi i32 [ %29, %40 ], [ %49, %47 ]
  store ptr null, ptr %37, align 8, !tbaa !222
  %52 = and i32 %51, -2049
  store i32 %52, ptr %6, align 4, !tbaa !235
  br label %53

53:                                               ; preds = %28, %36, %50
  %54 = phi i32 [ %43, %50 ], [ 0, %36 ], [ 0, %28 ]
  %55 = phi i1 [ false, %50 ], [ true, %36 ], [ true, %28 ]
  %56 = phi ptr [ %38, %50 ], [ null, %36 ], [ null, %28 ]
  %57 = icmp ult i32 %8, 9
  br i1 %57, label %58, label %71, !prof !253

58:                                               ; preds = %53
  %59 = icmp ugt i32 %8, 2
  br i1 %59, label %60, label %63, !prof !254

60:                                               ; preds = %58
  %61 = load ptr, ptr %0, align 8, !tbaa !226
  %62 = getelementptr inbounds %struct.xpv, ptr %61, i64 0, i32 2
  store i64 0, ptr %62, align 8, !tbaa !248
  br label %63

63:                                               ; preds = %5, %60, %58
  %64 = phi i32 [ %54, %60 ], [ %54, %58 ], [ 0, %5 ]
  %65 = phi i32 [ %30, %60 ], [ %30, %58 ], [ 0, %5 ]
  %66 = phi i1 [ %31, %60 ], [ %31, %58 ], [ true, %5 ]
  %67 = phi ptr [ %32, %60 ], [ %32, %58 ], [ null, %5 ]
  %68 = phi i64 [ %33, %60 ], [ %33, %58 ], [ 0, %5 ]
  %69 = phi i1 [ %55, %60 ], [ %55, %58 ], [ true, %5 ]
  %70 = phi ptr [ %56, %60 ], [ %56, %58 ], [ null, %5 ]
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %0, i32 noundef 9) #11
  br label %71

71:                                               ; preds = %63, %53
  %72 = phi ptr [ %70, %63 ], [ %56, %53 ]
  %73 = phi i1 [ %69, %63 ], [ %55, %53 ]
  %74 = phi i64 [ %68, %63 ], [ %33, %53 ]
  %75 = phi ptr [ %67, %63 ], [ %32, %53 ]
  %76 = phi i1 [ %66, %63 ], [ %31, %53 ]
  %77 = phi i32 [ %65, %63 ], [ %30, %53 ]
  %78 = phi i32 [ %64, %63 ], [ %54, %53 ]
  %79 = load ptr, ptr %0, align 8, !tbaa !226
  %80 = getelementptr inbounds %struct.xpv, ptr %79, i64 0, i32 3
  %81 = load i64, ptr %80, align 8, !tbaa !222
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %90, label %83, !prof !255

83:                                               ; preds = %71
  %84 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  br i1 %76, label %88, label %85, !prof !256

85:                                               ; preds = %83
  store ptr null, ptr %84, align 8, !tbaa !222
  store i64 0, ptr %80, align 8, !tbaa !222
  %86 = load i32, ptr %6, align 4, !tbaa !235
  %87 = and i32 %86, -17409
  store i32 %87, ptr %6, align 4, !tbaa !235
  br label %90

88:                                               ; preds = %83
  %89 = load ptr, ptr %84, align 8, !tbaa !222
  tail call void @Perl_safesysfree(ptr noundef %89) #11
  br label %90

90:                                               ; preds = %85, %88, %71
  %91 = load i32, ptr %6, align 4, !tbaa !235
  %92 = and i32 %91, 2147446527
  %93 = or disjoint i32 %92, 32768
  store i32 %93, ptr %6, align 4, !tbaa !235
  %94 = tail call ptr @Perl_newGP(ptr noundef nonnull %0) #13
  %95 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  store ptr %94, ptr %95, align 8, !tbaa !222
  %96 = load ptr, ptr %0, align 8, !tbaa !226
  %97 = getelementptr inbounds %struct.xpvgv, ptr %96, i64 0, i32 5
  store ptr %1, ptr %97, align 8, !tbaa !222
  %98 = icmp eq ptr %1, null
  br i1 %98, label %100, label %99, !prof !257

99:                                               ; preds = %90
  tail call void @Perl_sv_add_backref(ptr noundef nonnull %1, ptr noundef nonnull %0) #11
  br label %100

100:                                              ; preds = %99, %90
  %101 = trunc i64 %3 to i32
  %102 = and i32 %4, 536870912
  %103 = or disjoint i32 %102, 1
  tail call void @Perl_gv_name_set(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %101, i32 noundef %103) #13
  %104 = and i32 %4, 2
  %105 = or i32 %8, %104
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %112, label %107, !prof !258

107:                                              ; preds = %100
  %108 = load ptr, ptr %0, align 8, !tbaa !226
  %109 = getelementptr inbounds %struct.xpvgv, ptr %108, i64 0, i32 2
  %110 = load i64, ptr %109, align 8, !tbaa !259
  %111 = or i64 %110, 2
  store i64 %111, ptr %109, align 8, !tbaa !259
  br label %112

112:                                              ; preds = %100, %107
  br i1 %73, label %156, label %113, !prof !261

113:                                              ; preds = %112
  %114 = getelementptr inbounds %struct.sv, ptr %72, i64 0, i32 2
  %115 = load i32, ptr %114, align 4, !tbaa !214
  %116 = and i32 %115, 255
  %117 = icmp eq i32 %116, 13
  br i1 %117, label %118, label %157, !prof !262

118:                                              ; preds = %113
  %119 = load ptr, ptr %95, align 8, !tbaa !222
  %120 = getelementptr inbounds %struct.gp, ptr %119, i64 0, i32 2
  store ptr %72, ptr %120, align 8, !tbaa !263
  %121 = load ptr, ptr %72, align 8, !tbaa !264
  %122 = getelementptr inbounds %struct.xpvcv, ptr %121, i64 0, i32 4
  %123 = load ptr, ptr %122, align 8, !tbaa !266
  %124 = icmp eq ptr %123, %1
  br i1 %124, label %125, label %189, !prof !262

125:                                              ; preds = %118
  %126 = tail call fastcc ptr @CvNAME_HEK(ptr noundef nonnull %72) #13
  %127 = load ptr, ptr %0, align 8, !tbaa !226
  %128 = getelementptr inbounds %struct.xpvgv, ptr %127, i64 0, i32 4
  %129 = load ptr, ptr %128, align 8, !tbaa !222
  %130 = icmp eq ptr %126, %129
  br i1 %130, label %155, label %131, !prof !262

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.hek, ptr %126, i64 0, i32 1
  %133 = load i32, ptr %132, align 4, !tbaa !228
  %134 = getelementptr inbounds %struct.hek, ptr %129, i64 0, i32 1
  %135 = load i32, ptr %134, align 4, !tbaa !228
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %137, label %189

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.hek, ptr %126, i64 0, i32 2
  %139 = sext i32 %133 to i64
  %140 = getelementptr inbounds i8, ptr %138, i64 %139
  %141 = getelementptr inbounds i8, ptr %140, i64 1
  %142 = load i8, ptr %141, align 1, !tbaa !222
  %143 = getelementptr inbounds %struct.hek, ptr %129, i64 0, i32 2
  %144 = getelementptr inbounds i8, ptr %143, i64 %139
  %145 = getelementptr inbounds i8, ptr %144, i64 1
  %146 = load i8, ptr %145, align 1, !tbaa !222
  %147 = icmp eq i8 %142, %146
  br i1 %147, label %189, label %148

148:                                              ; preds = %137
  %149 = xor i8 %146, %142
  %150 = and i8 %149, 1
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %152, label %189

152:                                              ; preds = %148
  %153 = tail call i32 @bcmp(ptr nonnull %138, ptr nonnull %143, i64 %139)
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %189

155:                                              ; preds = %152, %125
  tail call void @Perl_cvgv_set(ptr noundef nonnull %72, ptr noundef nonnull %0) #13
  br label %189

156:                                              ; preds = %112
  br i1 %9, label %189, label %179, !prof !268

157:                                              ; preds = %113
  br i1 %9, label %189, label %158, !prof !268

158:                                              ; preds = %157
  %159 = tail call ptr @Perl_newCONSTSUB_flags(ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef nonnull %72) #11
  %160 = load ptr, ptr %95, align 8, !tbaa !222
  %161 = getelementptr inbounds %struct.gp, ptr %160, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !263
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %170

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.cv, ptr %159, i64 0, i32 1
  %166 = load i32, ptr %165, align 8, !tbaa !269
  %167 = add i32 %166, 1
  store i32 %167, ptr %165, align 8, !tbaa !269
  %168 = load ptr, ptr %95, align 8, !tbaa !222
  %169 = getelementptr inbounds %struct.gp, ptr %168, i64 0, i32 2
  store ptr %159, ptr %169, align 8, !tbaa !263
  br label %170

170:                                              ; preds = %164, %158
  %171 = icmp eq i32 %78, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %170
  %173 = load ptr, ptr %0, align 8, !tbaa !226
  %174 = getelementptr inbounds %struct.xpvgv, ptr %173, i64 0, i32 2
  %175 = load i64, ptr %174, align 8, !tbaa !259
  %176 = or i64 %175, 128
  store i64 %176, ptr %174, align 8, !tbaa !259
  br label %177

177:                                              ; preds = %172, %170
  %178 = load ptr, ptr @PL_curstash, align 8, !tbaa !221
  tail call void @Perl_cvstash_set(ptr noundef %159, ptr noundef %178) #13
  br label %181

179:                                              ; preds = %156
  %180 = tail call ptr @Perl_newSTUB(ptr noundef nonnull %0, i1 noundef zeroext true) #11
  br label %181

181:                                              ; preds = %179, %177
  %182 = phi ptr [ %159, %177 ], [ %180, %179 ]
  br i1 %76, label %189, label %183, !prof !270

183:                                              ; preds = %181
  tail call void @Perl_sv_usepvn_flags(ptr noundef %182, ptr noundef nonnull %75, i64 noundef %74, i32 noundef 256) #11
  %184 = icmp eq i32 %77, 0
  br i1 %184, label %189, label %185, !prof !271

185:                                              ; preds = %183
  %186 = getelementptr inbounds %struct.sv, ptr %182, i64 0, i32 2
  %187 = load i32, ptr %186, align 4, !tbaa !214
  %188 = or i32 %187, 536870912
  store i32 %188, ptr %186, align 4, !tbaa !214
  br label %189

189:                                              ; preds = %157, %181, %185, %183, %118, %131, %137, %148, %152, %155, %156
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_const_sv(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !272 {
  %2 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !235
  %4 = and i32 %3, 255
  %5 = icmp eq i32 %4, 9
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !222
  %9 = getelementptr inbounds %struct.gp, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !273
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.gp, ptr %8, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !263
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
  %23 = load ptr, ptr %22, align 8, !tbaa !222
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !214
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
define dso_local ptr @Perl_newGP(ptr noundef %0) local_unnamed_addr #0 !prof !272 {
  %2 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 80) #11
  %3 = getelementptr inbounds %struct.gp, ptr %2, i64 0, i32 8
  store ptr %0, ptr %3, align 8, !tbaa !274
  %4 = load ptr, ptr @PL_curcop, align 8, !tbaa !221
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6, !prof !275

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cop, ptr %4, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !276
  %9 = getelementptr inbounds %struct.gp, ptr %2, i64 0, i32 9
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %8, 2147483647
  %12 = and i32 %10, -2147483648
  %13 = or disjoint i32 %12, %11
  store i32 %13, ptr %9, align 8
  %14 = getelementptr inbounds %struct.cop, ptr %4, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !278
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17, !prof !279

17:                                               ; preds = %6
  %18 = load ptr, ptr %15, align 8, !tbaa !226
  %19 = getelementptr inbounds %struct.xpvgv, ptr %18, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !222
  %21 = getelementptr inbounds %struct.hek, ptr %20, i64 0, i32 2, i64 2
  %22 = getelementptr inbounds %struct.hek, ptr %20, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !228
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
  store ptr %31, ptr %32, align 8, !tbaa !280
  %33 = getelementptr inbounds %struct.gp, ptr %2, i64 0, i32 4
  store i32 1, ptr %33, align 4, !tbaa !281
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef readonly %0, i64 noundef %1) unnamed_addr #5 !prof !282 !PGOFuncName !283 {
  %3 = getelementptr inbounds i8, ptr %0, i64 %1
  %4 = trunc i64 %1 to i32
  %5 = add i32 %4, 544173908
  %6 = icmp sgt i64 %1, 0
  br i1 %6, label %7, label %18, !prof !284

7:                                                ; preds = %2, %7
  %8 = phi i32 [ %16, %7 ], [ %5, %2 ]
  %9 = phi ptr [ %13, %7 ], [ %0, %2 ]
  %10 = mul i32 %8, 1025
  %11 = lshr i32 %10, 6
  %12 = xor i32 %11, %10
  %13 = getelementptr inbounds i8, ptr %9, i64 1
  %14 = load i8, ptr %9, align 1, !tbaa !222
  %15 = zext i8 %14 to i32
  %16 = add i32 %12, %15
  %17 = icmp ult ptr %13, %3
  br i1 %17, label %7, label %18, !prof !285, !llvm.loop !286

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
define dso_local void @Perl_cvgv_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !288 {
  %3 = load ptr, ptr %0, align 8, !tbaa !264
  %4 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 4, !tbaa !289
  %6 = and i32 %5, 32768
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12, !prof !290

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !222
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %73, label %14, !prof !291

12:                                               ; preds = %2
  %13 = icmp eq ptr %1, null
  br i1 %13, label %73, label %28, !prof !291

14:                                               ; preds = %8
  %15 = icmp eq ptr %10, null
  br i1 %15, label %28, label %16, !prof !292

16:                                               ; preds = %14
  %17 = and i32 %5, 1024
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19, !prof !293

19:                                               ; preds = %16
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %10) #13
  %20 = load ptr, ptr %0, align 8, !tbaa !264
  %21 = getelementptr inbounds %struct.xpvcv, ptr %20, i64 0, i32 12
  %22 = load i32, ptr %21, align 4, !tbaa !289
  %23 = and i32 %22, -1025
  store i32 %23, ptr %21, align 4, !tbaa !289
  br label %36

24:                                               ; preds = %16
  tail call void @Perl_sv_del_backref(ptr noundef nonnull %10, ptr noundef nonnull %0) #11
  %25 = load ptr, ptr %0, align 8, !tbaa !264
  %26 = getelementptr inbounds %struct.xpvcv, ptr %25, i64 0, i32 12
  %27 = load i32, ptr %26, align 4, !tbaa !289
  br label %36

28:                                               ; preds = %12, %14
  %29 = tail call fastcc ptr @CvNAME_HEK(ptr noundef nonnull %0) #13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31, !prof !294

31:                                               ; preds = %28
  tail call void @Perl_unshare_hek(ptr noundef nonnull %29) #11
  %32 = load ptr, ptr %0, align 8, !tbaa !264
  %33 = getelementptr inbounds %struct.xpvcv, ptr %32, i64 0, i32 12
  %34 = load i32, ptr %33, align 4, !tbaa !289
  %35 = and i32 %34, -65537
  store i32 %35, ptr %33, align 4, !tbaa !289
  br label %36

36:                                               ; preds = %28, %31, %19, %24
  %37 = phi i32 [ %5, %28 ], [ %35, %31 ], [ %23, %19 ], [ %27, %24 ]
  %38 = phi ptr [ %3, %28 ], [ %32, %31 ], [ %20, %19 ], [ %25, %24 ]
  %39 = getelementptr inbounds %struct.xpvcv, ptr %38, i64 0, i32 12
  %40 = and i32 %37, -32769
  store i32 %40, ptr %39, align 4, !tbaa !289
  %41 = getelementptr inbounds %struct.xpvcv, ptr %38, i64 0, i32 7
  store ptr %1, ptr %41, align 8, !tbaa !222
  %42 = icmp eq ptr %1, null
  br i1 %42, label %73, label %43, !prof !295

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.gv, ptr %1, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !235
  %46 = and i32 %45, 49152
  %47 = icmp eq i32 %46, 32768
  br i1 %47, label %48, label %65, !prof !296

48:                                               ; preds = %43
  %49 = and i32 %45, 255
  %50 = add nsw i32 %49, -9
  %51 = icmp ult i32 %50, 2
  br i1 %51, label %52, label %65, !prof !297

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.gv, ptr %1, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !222
  %55 = icmp eq ptr %54, null
  br i1 %55, label %65, label %56, !prof !298

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.gp, ptr %54, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !263
  %59 = icmp eq ptr %58, %0
  br i1 %59, label %64, label %60, !prof !299

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.gp, ptr %54, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !300
  %63 = icmp eq ptr %62, %0
  br i1 %63, label %64, label %65, !prof !301

64:                                               ; preds = %60, %56
  tail call void @Perl_sv_add_backref(ptr noundef nonnull %1, ptr noundef nonnull %0) #11
  br label %73

65:                                               ; preds = %48, %60, %52, %43
  %66 = load ptr, ptr %0, align 8, !tbaa !264
  %67 = getelementptr inbounds %struct.xpvcv, ptr %66, i64 0, i32 12
  %68 = load i32, ptr %67, align 4, !tbaa !289
  %69 = or i32 %68, 1024
  store i32 %69, ptr %67, align 4, !tbaa !289
  %70 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 1
  %71 = load i32, ptr %70, align 8, !tbaa !302
  %72 = add i32 %71, 1
  store i32 %72, ptr %70, align 8, !tbaa !302
  br label %73

73:                                               ; preds = %12, %64, %65, %36, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec_NN(ptr noundef %0) unnamed_addr #0 !prof !303 !PGOFuncName !304 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !302
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %7, !prof !305

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 8, !tbaa !302
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
define internal fastcc ptr @CvNAME_HEK(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !306 !PGOFuncName !307 {
  %2 = load ptr, ptr %0, align 8, !tbaa !264
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !289
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !308

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !222
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: optsize
declare void @Perl_unshare_hek(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_add_backref(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_cvgv_from_hek(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !309 {
  %2 = load ptr, ptr %0, align 8, !tbaa !264
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !266
  %5 = icmp eq ptr %4, null
  br i1 %5, label %71, label %6, !prof !310

6:                                                ; preds = %1
  %7 = tail call fastcc ptr @CvNAME_HEK(ptr noundef nonnull %0) #13
  %8 = getelementptr inbounds %struct.hek, ptr %7, i64 0, i32 2
  %9 = getelementptr inbounds %struct.hek, ptr %7, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !228
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %8, i64 %11
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !222
  %15 = and i8 %14, 1
  %16 = zext nneg i8 %15 to i32
  %17 = load i32, ptr %7, align 4, !tbaa !311
  %18 = tail call ptr @Perl_hv_common(ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %8, i64 noundef %11, i32 noundef %16, i32 noundef 32, ptr noundef null, i32 noundef %17) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20, !prof !310

20:                                               ; preds = %6
  %21 = load ptr, ptr %18, align 8, !tbaa !221
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25, !prof !310

23:                                               ; preds = %20, %6
  %24 = tail call ptr @Perl_newSV(i64 noundef 0) #11
  br label %25

25:                                               ; preds = %20, %23
  %26 = phi ptr [ %24, %23 ], [ %21, %20 ]
  %27 = getelementptr inbounds %struct.gv, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !235
  %29 = and i32 %28, 255
  %30 = icmp eq i32 %29, 9
  br i1 %30, label %46, label %31, !prof !310

31:                                               ; preds = %25
  %32 = load ptr, ptr %0, align 8, !tbaa !264
  %33 = getelementptr inbounds %struct.xpvcv, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !266
  %35 = tail call fastcc ptr @CvNAME_HEK(ptr noundef nonnull %0) #13
  %36 = getelementptr inbounds %struct.hek, ptr %35, i64 0, i32 2
  %37 = getelementptr inbounds %struct.hek, ptr %35, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !228
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %36, i64 %39
  %41 = getelementptr inbounds i8, ptr %40, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !222
  %43 = and i8 %42, 1
  %44 = zext nneg i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 29
  tail call void @Perl_gv_init_pvn(ptr noundef nonnull %26, ptr noundef %34, ptr noundef nonnull %36, i64 noundef %39, i32 noundef %45) #13
  br label %46

46:                                               ; preds = %31, %25
  %47 = load ptr, ptr %0, align 8, !tbaa !264
  %48 = getelementptr inbounds %struct.xpvcv, ptr %47, i64 0, i32 12
  %49 = load i32, ptr %48, align 4, !tbaa !289
  %50 = and i32 %49, 32768
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %71, label %52, !prof !262

52:                                               ; preds = %46
  %53 = tail call fastcc ptr @CvNAME_HEK(ptr noundef nonnull %0) #13
  tail call void @Perl_unshare_hek(ptr noundef %53) #11
  %54 = load ptr, ptr %0, align 8, !tbaa !264
  %55 = getelementptr inbounds %struct.xpvcv, ptr %54, i64 0, i32 12
  %56 = load i32, ptr %55, align 4, !tbaa !289
  %57 = and i32 %56, -32769
  store i32 %57, ptr %55, align 4, !tbaa !289
  %58 = getelementptr inbounds %struct.xpvcv, ptr %54, i64 0, i32 7
  store ptr %26, ptr %58, align 8, !tbaa !222
  br i1 %19, label %66, label %59

59:                                               ; preds = %52
  %60 = load ptr, ptr %18, align 8, !tbaa !221
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !302
  %65 = add i32 %64, 1
  store i32 %65, ptr %63, align 8, !tbaa !302
  br label %66

66:                                               ; preds = %62, %59, %52
  %67 = load ptr, ptr %0, align 8, !tbaa !264
  %68 = getelementptr inbounds %struct.xpvcv, ptr %67, i64 0, i32 12
  %69 = load i32, ptr %68, align 4, !tbaa !289
  %70 = or i32 %69, 1024
  store i32 %70, ptr %68, align 4, !tbaa !289
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
define dso_local void @Perl_cvstash_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !312 {
  %3 = load ptr, ptr %0, align 8, !tbaa !264
  %4 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !266
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %16, label %7, !prof !313

7:                                                ; preds = %2
  %8 = icmp eq ptr %5, null
  br i1 %8, label %11, label %9, !prof !314

9:                                                ; preds = %7
  tail call void @Perl_sv_del_backref(ptr noundef nonnull %5, ptr noundef nonnull %0) #11
  %10 = load ptr, ptr %0, align 8, !tbaa !264
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %10, %9 ], [ %3, %7 ]
  %13 = getelementptr inbounds %struct.xpvcv, ptr %12, i64 0, i32 4
  store ptr %1, ptr %13, align 8, !tbaa !266
  %14 = icmp eq ptr %1, null
  br i1 %14, label %16, label %15, !prof !315

15:                                               ; preds = %11
  tail call void @Perl_sv_add_backref(ptr noundef nonnull %1, ptr noundef nonnull %0) #11
  br label %16

16:                                               ; preds = %11, %15, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_gv_init_sv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !272 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !214
  %8 = and i32 %7, 2098176
  %9 = icmp eq i32 %8, 1024
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = load ptr, ptr %2, align 8, !tbaa !316
  %12 = getelementptr inbounds %struct.xpv, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !248
  store i64 %13, ptr %5, align 8, !tbaa !317
  %14 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !222
  br label %20

16:                                               ; preds = %4
  %17 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %2, ptr noundef nonnull %5, i32 noundef 2) #11
  %18 = load i32, ptr %6, align 4, !tbaa !214
  %19 = load i64, ptr %5, align 8, !tbaa !317
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
define dso_local void @Perl_gv_init_pv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !272 {
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
define dso_local void @Perl_gv_name_set(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !272 {
  %5 = icmp slt i32 %2, 0
  br i1 %5, label %6, label %8, !prof !257

6:                                                ; preds = %4
  %7 = zext i32 %2 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.45, i64 noundef %7) #11
  br label %8

8:                                                ; preds = %6, %4
  %9 = and i32 %3, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17, !prof !257

11:                                               ; preds = %8
  %12 = load ptr, ptr %0, align 8, !tbaa !226
  %13 = getelementptr inbounds %struct.xpvgv, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !222
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
  br i1 %21, label %24, label %22, !prof !318

22:                                               ; preds = %17
  %23 = sub nsw i32 0, %2
  br label %24

24:                                               ; preds = %17, %22
  %25 = phi i32 [ %23, %22 ], [ %2, %17 ]
  %26 = tail call ptr @Perl_share_hek(ptr noundef %1, i32 noundef %25, i32 noundef %19) #11
  %27 = load ptr, ptr %0, align 8, !tbaa !226
  %28 = getelementptr inbounds %struct.xpvgv, ptr %27, i64 0, i32 4
  store ptr %26, ptr %28, align 8, !tbaa !222
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newCONSTSUB_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSTUB(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_usepvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchmeth_sv(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !272 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !214
  %8 = and i32 %7, 2098176
  %9 = icmp eq i32 %8, 1024
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call fastcc ptr @S_gv_fetchmeth_internal(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, i64 noundef 0, i32 noundef %2, i32 noundef %3) #13
  br label %19

12:                                               ; preds = %4
  %13 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef 2) #11
  %14 = load i32, ptr %6, align 4, !tbaa !214
  %15 = and i32 %14, 536870912
  %16 = or i32 %15, %3
  %17 = load i64, ptr %5, align 8, !tbaa !317
  %18 = call ptr @Perl_gv_fetchmeth_pvn(ptr noundef %0, ptr noundef %13, i64 noundef %17, i32 noundef %2, i32 noundef %16) #13
  br label %19

19:                                               ; preds = %12, %10
  %20 = phi ptr [ %11, %10 ], [ %18, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_gv_fetchmeth_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 !prof !319 !PGOFuncName !320 {
  %7 = alloca i64, align 8
  store i64 %3, ptr %7, align 8, !tbaa !317
  %8 = lshr i32 %4, 27
  %9 = and i32 %8, 16
  %10 = xor i32 %9, 16
  %11 = and i32 %5, 536870912
  %12 = icmp eq ptr %0, null
  br i1 %12, label %13, label %16, !prof !321

13:                                               ; preds = %6
  %14 = tail call ptr @Perl_gv_stashpvn(ptr noundef nonnull @.str.46, i32 noundef 9, i32 noundef 0) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %365, label %16, !prof !322

16:                                               ; preds = %13, %6
  %17 = phi i32 [ %10, %6 ], [ 0, %13 ]
  %18 = phi ptr [ %0, %6 ], [ %14, %13 ]
  %19 = getelementptr inbounds %struct.hv, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !323
  %21 = and i32 %20, 33554432
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %43, label %23, !prof !325

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.hv, ptr %18, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !222
  %26 = load ptr, ptr %18, align 8, !tbaa !326
  %27 = getelementptr inbounds %struct.xpvhv, ptr %26, i64 0, i32 3
  %28 = load i64, ptr %27, align 8, !tbaa !327
  %29 = getelementptr ptr, ptr %25, i64 %28
  %30 = getelementptr ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !222
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33, !prof !325

33:                                               ; preds = %23
  %34 = getelementptr i8, ptr %29, i64 36
  %35 = load i32, ptr %34, align 4, !tbaa !329
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37, !prof !331

37:                                               ; preds = %33
  %38 = load ptr, ptr %31, align 8, !tbaa !222
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33, %37
  %41 = phi ptr [ %38, %37 ], [ %31, %33 ]
  %42 = getelementptr inbounds %struct.hek, ptr %41, i64 0, i32 2
  br label %49

43:                                               ; preds = %37, %23, %16
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47) #11
  %44 = getelementptr inbounds %struct.hv, ptr %18, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !222
  %46 = load ptr, ptr %18, align 8, !tbaa !326
  %47 = getelementptr inbounds %struct.xpvhv, ptr %46, i64 0, i32 3
  %48 = load i64, ptr %47, align 8, !tbaa !327
  br label %49

49:                                               ; preds = %40, %43
  %50 = phi i64 [ %48, %43 ], [ %28, %40 ]
  %51 = phi ptr [ %45, %43 ], [ %25, %40 ]
  %52 = phi ptr [ null, %43 ], [ %42, %40 ]
  %53 = getelementptr inbounds %struct.hv, ptr %18, i64 0, i32 3
  %54 = getelementptr ptr, ptr %51, i64 %50
  %55 = getelementptr ptr, ptr %54, i64 5
  %56 = load ptr, ptr %55, align 8, !tbaa !332
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60, !prof !325

58:                                               ; preds = %49
  %59 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %18) #11
  br label %60

60:                                               ; preds = %49, %58
  %61 = phi ptr [ %59, %58 ], [ %56, %49 ]
  %62 = getelementptr inbounds %struct.mro_meta, ptr %61, i64 0, i32 3
  %63 = load i32, ptr %62, align 8, !tbaa !333
  %64 = load i32, ptr @PL_sub_generation, align 4, !tbaa !239
  %65 = add i32 %64, %63
  %66 = and i32 %5, 4096
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %95, label %68, !prof !335

68:                                               ; preds = %60
  %69 = load ptr, ptr %53, align 8, !tbaa !222
  %70 = load ptr, ptr %18, align 8, !tbaa !326
  %71 = getelementptr inbounds %struct.xpvhv, ptr %70, i64 0, i32 3
  %72 = load i64, ptr %71, align 8, !tbaa !327
  %73 = getelementptr ptr, ptr %69, i64 %72
  %74 = getelementptr ptr, ptr %73, i64 5
  %75 = load ptr, ptr %74, align 8, !tbaa !332
  %76 = getelementptr inbounds %struct.mro_meta, ptr %75, i64 0, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !336
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %95, !prof !262

79:                                               ; preds = %68
  %80 = tail call ptr @Perl_newSV_type(i32 noundef 12) #11
  %81 = load ptr, ptr %53, align 8, !tbaa !222
  %82 = load ptr, ptr %18, align 8, !tbaa !326
  %83 = getelementptr inbounds %struct.xpvhv, ptr %82, i64 0, i32 3
  %84 = load i64, ptr %83, align 8, !tbaa !327
  %85 = getelementptr ptr, ptr %81, i64 %84
  %86 = getelementptr ptr, ptr %85, i64 5
  %87 = load ptr, ptr %86, align 8, !tbaa !332
  %88 = getelementptr inbounds %struct.mro_meta, ptr %87, i64 0, i32 7
  store ptr %80, ptr %88, align 8, !tbaa !336
  %89 = load ptr, ptr %53, align 8, !tbaa !222
  %90 = getelementptr ptr, ptr %89, i64 %84
  %91 = getelementptr ptr, ptr %90, i64 5
  %92 = load ptr, ptr %91, align 8, !tbaa !332
  %93 = getelementptr inbounds %struct.mro_meta, ptr %92, i64 0, i32 7
  %94 = load ptr, ptr %93, align 8, !tbaa !336
  br label %95

95:                                               ; preds = %68, %79, %60
  %96 = phi ptr [ %18, %60 ], [ %94, %79 ], [ %77, %68 ]
  %97 = icmp eq i32 %11, 0
  %98 = lshr exact i32 %11, 29
  %99 = tail call ptr @Perl_hv_common(ptr noundef %96, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %98, i32 noundef %17, ptr noundef null, i32 noundef 0) #11
  %100 = icmp eq ptr %99, null
  br i1 %100, label %185, label %101, !prof !337

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.he, ptr %99, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !221
  %104 = getelementptr inbounds %struct.gv, ptr %103, i64 0, i32 2
  %105 = getelementptr inbounds %struct.gv, ptr %103, i64 0, i32 3
  br label %106

106:                                              ; preds = %182, %101
  %107 = phi ptr [ %2, %101 ], [ %131, %182 ]
  %108 = load i32, ptr %104, align 4, !tbaa !235
  %109 = and i32 %108, 255
  %110 = icmp eq i32 %109, 9
  br i1 %110, label %130, label %111, !prof !338

111:                                              ; preds = %106
  %112 = icmp eq ptr %107, null
  br i1 %112, label %113, label %126, !prof !339

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %115 = load i32, ptr %114, align 4, !tbaa !214
  %116 = and i32 %115, 2098176
  %117 = icmp eq i32 %116, 1024
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %120 = load ptr, ptr %1, align 8, !tbaa !316
  %121 = getelementptr inbounds %struct.xpv, ptr %120, i64 0, i32 2
  %122 = load i64, ptr %121, align 8, !tbaa !248
  store i64 %122, ptr %7, align 8, !tbaa !317
  %123 = load ptr, ptr %119, align 8, !tbaa !222
  br label %126

124:                                              ; preds = %113
  %125 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %7, i32 noundef 0) #11
  br label %126

126:                                              ; preds = %118, %124, %111
  %127 = phi ptr [ %107, %111 ], [ %123, %118 ], [ %125, %124 ]
  %128 = or disjoint i32 %11, 2
  %129 = load i64, ptr %7, align 8, !tbaa !317
  call void @Perl_gv_init_pvn(ptr noundef nonnull %103, ptr noundef nonnull %18, ptr noundef %127, i64 noundef %129, i32 noundef %128) #13
  br label %130

130:                                              ; preds = %126, %106
  %131 = phi ptr [ %127, %126 ], [ %107, %106 ]
  %132 = load ptr, ptr %105, align 8, !tbaa !222
  %133 = getelementptr inbounds %struct.gp, ptr %132, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !263
  %135 = icmp eq ptr %134, null
  %136 = getelementptr inbounds %struct.gp, ptr %132, i64 0, i32 3
  %137 = load i32, ptr %136, align 8, !tbaa !273
  br i1 %135, label %147, label %138, !prof !340

138:                                              ; preds = %130
  %139 = icmp eq i32 %137, 0
  br i1 %139, label %365, label %140, !prof !341

140:                                              ; preds = %138
  %141 = icmp eq i32 %137, %65
  br i1 %141, label %365, label %142

142:                                              ; preds = %140
  call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %134) #13
  %143 = load ptr, ptr %105, align 8, !tbaa !222
  %144 = getelementptr inbounds %struct.gp, ptr %143, i64 0, i32 2
  store ptr null, ptr %144, align 8, !tbaa !263
  %145 = load ptr, ptr %105, align 8, !tbaa !222
  %146 = getelementptr inbounds %struct.gp, ptr %145, i64 0, i32 3
  store i32 0, ptr %146, align 8, !tbaa !273
  br label %185

147:                                              ; preds = %130
  %148 = icmp eq i32 %137, %65
  br i1 %148, label %365, label %149, !prof !342

149:                                              ; preds = %147
  %150 = icmp eq ptr %18, %96
  %151 = load i64, ptr %7, align 8
  %152 = icmp ugt i64 %151, 1
  %153 = select i1 %150, i1 %152, i1 false
  br i1 %153, label %154, label %185, !prof !343

154:                                              ; preds = %149
  %155 = load i32, ptr %19, align 4, !tbaa !323
  %156 = and i32 %155, 33554432
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %185, label %158, !prof !344

158:                                              ; preds = %154
  %159 = load ptr, ptr %53, align 8, !tbaa !222
  %160 = load ptr, ptr %18, align 8, !tbaa !326
  %161 = getelementptr inbounds %struct.xpvhv, ptr %160, i64 0, i32 3
  %162 = load i64, ptr %161, align 8, !tbaa !327
  %163 = getelementptr ptr, ptr %159, i64 %162
  %164 = getelementptr ptr, ptr %163, i64 1
  %165 = load ptr, ptr %164, align 8, !tbaa !222
  %166 = icmp eq ptr %165, null
  br i1 %166, label %185, label %167, !prof !344

167:                                              ; preds = %158
  %168 = getelementptr i8, ptr %163, i64 36
  %169 = load i32, ptr %168, align 4, !tbaa !329
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %174, label %171, !prof !345

171:                                              ; preds = %167
  %172 = load ptr, ptr %165, align 8, !tbaa !222
  %173 = icmp eq ptr %172, null
  br i1 %173, label %185, label %174

174:                                              ; preds = %167, %171
  %175 = phi ptr [ %172, %171 ], [ %165, %167 ]
  %176 = getelementptr inbounds %struct.hek, ptr %175, i64 0, i32 1
  %177 = load i32, ptr %176, align 4, !tbaa !228
  %178 = icmp eq i32 %177, 4
  br i1 %178, label %179, label %185, !prof !346

179:                                              ; preds = %174
  %180 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %52, ptr noundef nonnull dereferenceable(5) @.str.48, i64 noundef 4) #12
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %185, !prof !310

182:                                              ; preds = %179
  %183 = call fastcc ptr @S_maybe_add_coresub(ptr noundef null, ptr noundef %103, ptr noundef %131, i64 noundef %151) #13
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %106

185:                                              ; preds = %154, %158, %171, %149, %174, %179, %182, %142, %95
  %186 = phi ptr [ %103, %142 ], [ null, %95 ], [ %103, %182 ], [ %103, %179 ], [ %103, %174 ], [ %103, %149 ], [ %103, %171 ], [ %103, %158 ], [ %103, %154 ]
  %187 = phi ptr [ %131, %142 ], [ %2, %95 ], [ %131, %182 ], [ %131, %179 ], [ %131, %174 ], [ %131, %149 ], [ %131, %171 ], [ %131, %158 ], [ %131, %154 ]
  %188 = call ptr @Perl_mro_get_linear_isa(ptr noundef nonnull %18) #11
  %189 = load ptr, ptr %188, align 8, !tbaa !347
  %190 = getelementptr inbounds %struct.xpvav, ptr %189, i64 0, i32 2
  %191 = load i64, ptr %190, align 8, !tbaa !349
  %192 = trunc i64 %191 to i32
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %315, label %194, !prof !351

194:                                              ; preds = %185
  %195 = getelementptr inbounds %struct.av, ptr %188, i64 0, i32 3
  %196 = load ptr, ptr %195, align 8, !tbaa !222
  br label %197

197:                                              ; preds = %227, %194
  %198 = phi i32 [ %192, %194 ], [ %201, %227 ]
  %199 = phi ptr [ %196, %194 ], [ %200, %227 ]
  %200 = getelementptr inbounds ptr, ptr %199, i64 1
  %201 = add nsw i32 %198, -1
  %202 = load ptr, ptr %200, align 8, !tbaa !221
  %203 = call ptr @Perl_gv_stashsv(ptr noundef %202, i32 noundef 0) #13
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %228, !prof !352

205:                                              ; preds = %197
  %206 = load i32, ptr %19, align 4, !tbaa !323
  %207 = and i32 %206, 33554432
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %224, label %209

209:                                              ; preds = %205
  %210 = load ptr, ptr %53, align 8, !tbaa !222
  %211 = load ptr, ptr %18, align 8, !tbaa !326
  %212 = getelementptr inbounds %struct.xpvhv, ptr %211, i64 0, i32 3
  %213 = load i64, ptr %212, align 8, !tbaa !327
  %214 = getelementptr ptr, ptr %210, i64 %213
  %215 = getelementptr ptr, ptr %214, i64 1
  %216 = load ptr, ptr %215, align 8, !tbaa !222
  %217 = icmp eq ptr %216, null
  br i1 %217, label %224, label %218

218:                                              ; preds = %209
  %219 = getelementptr i8, ptr %214, i64 36
  %220 = load i32, ptr %219, align 4, !tbaa !329
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %218
  %223 = load ptr, ptr %216, align 8, !tbaa !221
  br label %224

224:                                              ; preds = %218, %205, %209, %222
  %225 = phi ptr [ %223, %222 ], [ null, %209 ], [ null, %205 ], [ %216, %218 ]
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 28, ptr noundef nonnull @.str.49, ptr noundef %202, ptr noundef %225) #11
  %226 = icmp eq i32 %201, 0
  br i1 %226, label %315, label %227, !prof !353

227:                                              ; preds = %224, %313
  br label %197, !llvm.loop !354

228:                                              ; preds = %197
  %229 = load i64, ptr %7, align 8
  %230 = trunc i64 %229 to i32
  %231 = sub nsw i32 0, %230
  %232 = select i1 %97, i32 %230, i32 %231, !prof !355
  %233 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %203, ptr noundef %187, i32 noundef %232, i32 noundef 32, ptr noundef null, i32 noundef 0) #11
  %234 = icmp eq ptr %233, null
  br i1 %234, label %235, label %274, !prof !356

235:                                              ; preds = %228
  %236 = load i64, ptr %7, align 8, !tbaa !317
  %237 = icmp ugt i64 %236, 1
  br i1 %237, label %238, label %313, !prof !357

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.hv, ptr %203, i64 0, i32 2
  %240 = load i32, ptr %239, align 4, !tbaa !323
  %241 = and i32 %240, 33554432
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %313, label %243, !prof !358

243:                                              ; preds = %238
  %244 = getelementptr inbounds %struct.hv, ptr %203, i64 0, i32 3
  %245 = load ptr, ptr %244, align 8, !tbaa !222
  %246 = load ptr, ptr %203, align 8, !tbaa !326
  %247 = getelementptr inbounds %struct.xpvhv, ptr %246, i64 0, i32 3
  %248 = load i64, ptr %247, align 8, !tbaa !327
  %249 = getelementptr ptr, ptr %245, i64 %248
  %250 = getelementptr ptr, ptr %249, i64 1
  %251 = load ptr, ptr %250, align 8, !tbaa !222
  %252 = icmp eq ptr %251, null
  br i1 %252, label %313, label %253, !prof !358

253:                                              ; preds = %243
  %254 = getelementptr i8, ptr %249, i64 36
  %255 = load i32, ptr %254, align 4, !tbaa !329
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %260, label %257, !prof !357

257:                                              ; preds = %253
  %258 = load ptr, ptr %251, align 8, !tbaa !222
  %259 = icmp eq ptr %258, null
  br i1 %259, label %313, label %260

260:                                              ; preds = %253, %257
  %261 = phi ptr [ %258, %257 ], [ %251, %253 ]
  %262 = getelementptr inbounds %struct.hek, ptr %261, i64 0, i32 1
  %263 = load i32, ptr %262, align 4, !tbaa !228
  %264 = icmp eq i32 %263, 4
  br i1 %264, label %265, label %313, !prof !359

265:                                              ; preds = %260
  %266 = select i1 %256, ptr %250, ptr %251
  %267 = load ptr, ptr %266, align 8, !tbaa !222
  %268 = getelementptr inbounds %struct.hek, ptr %267, i64 0, i32 2
  %269 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %268, ptr noundef nonnull dereferenceable(5) @.str.48, i64 noundef 4) #12
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %313

271:                                              ; preds = %265
  %272 = call fastcc ptr @S_maybe_add_coresub(ptr noundef nonnull %203, ptr noundef null, ptr noundef %187, i64 noundef %236) #13
  %273 = icmp eq ptr %272, null
  br i1 %273, label %313, label %276

274:                                              ; preds = %228
  %275 = load ptr, ptr %233, align 8, !tbaa !221
  br label %276

276:                                              ; preds = %271, %274
  %277 = phi ptr [ %275, %274 ], [ %272, %271 ]
  %278 = getelementptr inbounds %struct.gv, ptr %277, i64 0, i32 2
  %279 = load i32, ptr %278, align 4, !tbaa !235
  %280 = and i32 %279, 255
  %281 = icmp eq i32 %280, 9
  br i1 %281, label %286, label %282, !prof !360

282:                                              ; preds = %276
  %283 = or disjoint i32 %11, 2
  %284 = load i64, ptr %7, align 8, !tbaa !317
  call void @Perl_gv_init_pvn(ptr noundef nonnull %277, ptr noundef nonnull %203, ptr noundef %187, i64 noundef %284, i32 noundef %283) #13
  %285 = load i32, ptr %278, align 4, !tbaa !235
  br label %286

286:                                              ; preds = %282, %276
  %287 = phi i32 [ %285, %282 ], [ %279, %276 ]
  %288 = and i32 %287, 255
  %289 = icmp eq i32 %288, 9
  br i1 %289, label %290, label %313, !prof !360

290:                                              ; preds = %286
  %291 = getelementptr inbounds %struct.gv, ptr %277, i64 0, i32 3
  %292 = load ptr, ptr %291, align 8, !tbaa !222
  %293 = getelementptr inbounds %struct.gp, ptr %292, i64 0, i32 2
  %294 = load ptr, ptr %293, align 8, !tbaa !263
  %295 = icmp eq ptr %294, null
  br i1 %295, label %313, label %296, !prof !361

296:                                              ; preds = %290
  %297 = getelementptr inbounds %struct.gp, ptr %292, i64 0, i32 3
  %298 = load i32, ptr %297, align 8, !tbaa !273
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %313, !prof !362

300:                                              ; preds = %296
  %301 = icmp eq ptr %186, null
  br i1 %301, label %365, label %302, !prof !363

302:                                              ; preds = %300
  %303 = getelementptr inbounds %struct.gv, ptr %186, i64 0, i32 3
  %304 = load ptr, ptr %303, align 8, !tbaa !222
  %305 = getelementptr inbounds %struct.gp, ptr %304, i64 0, i32 4
  %306 = load i32, ptr %305, align 4, !tbaa !281
  %307 = icmp eq i32 %306, 1
  br i1 %307, label %308, label %365, !prof !362

308:                                              ; preds = %302
  %309 = load ptr, ptr %294, align 8, !tbaa !264
  %310 = getelementptr inbounds %struct.xpvcv, ptr %309, i64 0, i32 6
  %311 = load ptr, ptr %310, align 8, !tbaa !222
  %312 = icmp eq ptr %311, null
  br i1 %312, label %365, label %348, !prof !363

313:                                              ; preds = %286, %290, %296, %235, %260, %257, %243, %238, %265, %271
  %314 = icmp eq i32 %201, 0
  br i1 %314, label %315, label %227, !prof !353

315:                                              ; preds = %313, %224, %185
  %316 = add i32 %4, 1
  %317 = icmp ult i32 %316, 2
  br i1 %317, label %318, label %340, !prof !364

318:                                              ; preds = %315
  %319 = load i64, ptr %7, align 8, !tbaa !317
  %320 = and i32 %5, -4097
  %321 = call fastcc ptr @S_gv_fetchmeth_internal(ptr noundef null, ptr noundef %1, ptr noundef %187, i64 noundef %319, i32 noundef 1, i32 noundef %320) #13
  %322 = icmp eq ptr %321, null
  br i1 %322, label %340, label %323, !prof !365

323:                                              ; preds = %318
  %324 = getelementptr inbounds %struct.gv, ptr %321, i64 0, i32 3
  %325 = load ptr, ptr %324, align 8, !tbaa !222
  %326 = getelementptr inbounds %struct.gp, ptr %325, i64 0, i32 2
  %327 = load ptr, ptr %326, align 8, !tbaa !263
  %328 = icmp eq ptr %186, null
  br i1 %328, label %365, label %329, !prof !366

329:                                              ; preds = %323
  %330 = getelementptr inbounds %struct.gv, ptr %186, i64 0, i32 3
  %331 = load ptr, ptr %330, align 8, !tbaa !222
  %332 = getelementptr inbounds %struct.gp, ptr %331, i64 0, i32 4
  %333 = load i32, ptr %332, align 4, !tbaa !281
  %334 = icmp eq i32 %333, 1
  br i1 %334, label %335, label %365, !prof !367

335:                                              ; preds = %329
  %336 = load ptr, ptr %327, align 8, !tbaa !264
  %337 = getelementptr inbounds %struct.xpvcv, ptr %336, i64 0, i32 6
  %338 = load ptr, ptr %337, align 8, !tbaa !222
  %339 = icmp eq ptr %338, null
  br i1 %339, label %365, label %348, !prof !366

340:                                              ; preds = %318, %315
  %341 = icmp eq ptr %186, null
  br i1 %341, label %365, label %342, !prof !368

342:                                              ; preds = %340
  %343 = getelementptr inbounds %struct.gv, ptr %186, i64 0, i32 3
  %344 = load ptr, ptr %343, align 8, !tbaa !222
  %345 = getelementptr inbounds %struct.gp, ptr %344, i64 0, i32 4
  %346 = load i32, ptr %345, align 4, !tbaa !281
  %347 = icmp eq i32 %346, 1
  br i1 %347, label %361, label %365, !prof !369

348:                                              ; preds = %335, %308
  %349 = phi ptr [ %304, %308 ], [ %331, %335 ]
  %350 = phi ptr [ %294, %308 ], [ %327, %335 ]
  %351 = phi ptr [ %303, %308 ], [ %330, %335 ]
  %352 = phi ptr [ %277, %308 ], [ %321, %335 ]
  %353 = getelementptr inbounds %struct.gp, ptr %349, i64 0, i32 2
  %354 = load ptr, ptr %353, align 8, !tbaa !263
  call fastcc void @S_SvREFCNT_dec(ptr noundef %354) #13
  %355 = getelementptr inbounds %struct.sv, ptr %350, i64 0, i32 1
  %356 = load i32, ptr %355, align 8, !tbaa !302
  %357 = add i32 %356, 1
  store i32 %357, ptr %355, align 8, !tbaa !302
  %358 = load ptr, ptr %351, align 8, !tbaa !222
  %359 = getelementptr inbounds %struct.gp, ptr %358, i64 0, i32 2
  store ptr %350, ptr %359, align 8, !tbaa !263
  %360 = load ptr, ptr %351, align 8, !tbaa !222
  br label %361

361:                                              ; preds = %348, %342
  %362 = phi ptr [ %344, %342 ], [ %360, %348 ]
  %363 = phi ptr [ null, %342 ], [ %352, %348 ]
  %364 = getelementptr inbounds %struct.gp, ptr %362, i64 0, i32 3
  store i32 %65, ptr %364, align 8, !tbaa !273
  br label %365

365:                                              ; preds = %147, %361, %340, %342, %323, %329, %335, %300, %302, %308, %138, %140, %13
  %366 = phi ptr [ null, %13 ], [ %103, %140 ], [ %103, %138 ], [ %277, %308 ], [ %277, %302 ], [ %277, %300 ], [ %321, %335 ], [ %321, %329 ], [ %321, %323 ], [ null, %342 ], [ null, %340 ], [ %363, %361 ], [ null, %147 ]
  ret ptr %366
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchmeth_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !370 {
  %6 = tail call fastcc ptr @S_gv_fetchmeth_internal(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) #13
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchmeth_pv(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !272 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %6 = tail call fastcc ptr @S_gv_fetchmeth_internal(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef %5, i32 noundef %2, i32 noundef %3) #13
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchmeth_sv_autoload(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !272 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !214
  %8 = and i32 %7, 2098176
  %9 = icmp eq i32 %8, 1024
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = load ptr, ptr %1, align 8, !tbaa !316
  %12 = getelementptr inbounds %struct.xpv, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !248
  store i64 %13, ptr %5, align 8, !tbaa !317
  %14 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !222
  br label %20

16:                                               ; preds = %4
  %17 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %5, i32 noundef 2) #11
  %18 = load i32, ptr %6, align 4, !tbaa !214
  %19 = load i64, ptr %5, align 8, !tbaa !317
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
define dso_local ptr @Perl_gv_fetchmeth_pvn_autoload(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !371 {
  %6 = tail call ptr @Perl_gv_fetchmeth_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %43, !prof !372

8:                                                ; preds = %5
  %9 = icmp eq ptr %0, null
  br i1 %9, label %43, label %10, !prof !358

10:                                               ; preds = %8
  %11 = icmp eq i64 %2, 8
  br i1 %11, label %12, label %15, !prof !358

12:                                               ; preds = %10
  %13 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %1, ptr noundef nonnull dereferenceable(8) @S_autoload, i64 8)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %43, label %15

15:                                               ; preds = %12, %10
  %16 = tail call ptr @Perl_gv_fetchmeth_pvn(ptr noundef nonnull %0, ptr noundef nonnull @S_autoload, i64 noundef 8, i32 noundef 0, i32 noundef %4) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %43, label %18, !prof !357

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.gv, ptr %16, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !222
  %21 = getelementptr inbounds %struct.gp, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !263
  %23 = load ptr, ptr %22, align 8, !tbaa !264
  %24 = getelementptr inbounds %struct.xpvcv, ptr %23, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !222
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
  %42 = load ptr, ptr %39, align 8, !tbaa !221
  br label %43

43:                                               ; preds = %5, %41, %8, %12, %15, %18, %31
  %44 = phi ptr [ %42, %41 ], [ null, %8 ], [ null, %12 ], [ null, %15 ], [ null, %18 ], [ null, %31 ], [ %6, %5 ]
  ret ptr %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchmeth_pv_autoload(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !272 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %6 = tail call ptr @Perl_gv_fetchmeth_pvn_autoload(ptr noundef %0, ptr noundef %1, i64 noundef %5, i32 noundef %2, i32 noundef %3) #13
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchmethod_autoload(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !373 {
  %4 = icmp eq i32 %2, 0
  %5 = select i1 %4, i32 0, i32 256
  %6 = tail call ptr @Perl_gv_fetchmethod_pv_flags(ptr noundef %0, ptr noundef %1, i32 noundef %5) #13
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchmethod_pv_flags(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !373 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %5 = tail call ptr @Perl_gv_fetchmethod_pvn_flags(ptr noundef %0, ptr noundef %1, i64 noundef %4, i32 noundef %2) #13
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !374 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !214
  %7 = and i32 %6, 2098176
  %8 = icmp eq i32 %7, 1024
  br i1 %8, label %9, label %15, !prof !375

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 8, !tbaa !316
  %11 = getelementptr inbounds %struct.xpv, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !248
  store i64 %12, ptr %4, align 8, !tbaa !317
  %13 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !222
  br label %18

15:                                               ; preds = %3
  %16 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef 2) #11
  %17 = load i32, ptr %5, align 4, !tbaa !214
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi i32 [ %6, %9 ], [ %17, %15 ]
  %20 = phi ptr [ %14, %9 ], [ %16, %15 ]
  %21 = and i32 %19, 536870912
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !375

23:                                               ; preds = %18
  %24 = or i32 %2, 536870912
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi i32 [ %24, %23 ], [ %2, %18 ]
  %27 = load i64, ptr %4, align 8, !tbaa !317
  %28 = call ptr @Perl_gv_fetchmethod_pvn_flags(ptr noundef %0, ptr noundef %20, i64 noundef %27, i32 noundef %26) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchmethod_pvn_flags(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !376 {
  %5 = and i32 %3, 256
  %6 = and i32 %3, 512
  %7 = and i32 %3, 536870912
  %8 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !323
  %10 = and i32 %9, 252
  %11 = icmp ult i32 %10, 12
  br i1 %11, label %12, label %13, !prof !377

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %4, %12
  %14 = phi ptr [ null, %12 ], [ %0, %4 ]
  %15 = getelementptr inbounds i8, ptr %1, i64 %2
  %16 = load i8, ptr %1, align 1, !tbaa !222
  %17 = icmp ne i8 %16, 0
  %18 = icmp ne i64 %2, 0
  %19 = or i1 %17, %18
  br i1 %19, label %20, label %73, !prof !378

20:                                               ; preds = %13, %33
  %21 = phi i8 [ %38, %33 ], [ %16, %13 ]
  %22 = phi ptr [ %36, %33 ], [ %1, %13 ]
  %23 = phi ptr [ %37, %33 ], [ %1, %13 ]
  %24 = phi ptr [ %34, %33 ], [ null, %13 ]
  switch i8 %21, label %33 [
    i8 39, label %25
    i8 58, label %27
  ], !prof !379

25:                                               ; preds = %20
  %26 = getelementptr inbounds i8, ptr %23, i64 1
  br label %33

27:                                               ; preds = %20
  %28 = getelementptr inbounds i8, ptr %23, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !222
  %30 = icmp eq i8 %29, 58
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %23, i64 2
  br label %33

33:                                               ; preds = %20, %25, %31, %27
  %34 = phi ptr [ %23, %25 ], [ %23, %31 ], [ %24, %27 ], [ %24, %20 ]
  %35 = phi ptr [ %23, %25 ], [ %28, %31 ], [ %23, %27 ], [ %23, %20 ]
  %36 = phi ptr [ %26, %25 ], [ %32, %31 ], [ %22, %27 ], [ %22, %20 ]
  %37 = getelementptr inbounds i8, ptr %35, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !222
  %39 = icmp ne i8 %38, 0
  %40 = icmp ne ptr %37, %15
  %41 = select i1 %39, i1 true, i1 %40, !prof !380
  br i1 %41, label %20, label %42, !prof !381, !llvm.loop !382

42:                                               ; preds = %33
  %43 = icmp eq ptr %34, null
  br i1 %43, label %73, label %44, !prof !383

44:                                               ; preds = %42
  %45 = ptrtoint ptr %34 to i64
  %46 = ptrtoint ptr %1 to i64
  %47 = sub i64 %45, %46
  %48 = icmp eq i64 %47, 5
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %1, ptr noundef nonnull dereferenceable(5) @.str.10, i64 5)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %49
  %53 = load ptr, ptr @PL_curcop, align 8, !tbaa !221
  %54 = getelementptr inbounds %struct.cop, ptr %53, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !384
  %56 = or i32 %3, 4096
  br label %73

57:                                               ; preds = %44
  %58 = icmp sgt i64 %47, 6
  br i1 %58, label %59, label %70

59:                                               ; preds = %57
  %60 = getelementptr inbounds i8, ptr %34, i64 -7
  %61 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(8) @.str.11, i64 noundef 7) #12
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = trunc i64 %47 to i32
  %65 = add i32 %64, -7
  %66 = tail call ptr @Perl_gv_stashpvn(ptr noundef nonnull %1, i32 noundef %65, i32 noundef %7) #13
  %67 = icmp eq ptr %66, null
  %68 = or i32 %3, 4096
  %69 = select i1 %67, i32 %3, i32 %68
  br label %73

70:                                               ; preds = %49, %59, %57
  %71 = trunc i64 %47 to i32
  %72 = tail call ptr @Perl_gv_stashpvn(ptr noundef nonnull %1, i32 noundef %71, i32 noundef %7) #13
  br label %73

73:                                               ; preds = %13, %63, %52, %70, %42
  %74 = phi i1 [ true, %42 ], [ false, %70 ], [ false, %52 ], [ false, %63 ], [ true, %13 ]
  %75 = phi ptr [ %36, %42 ], [ %36, %70 ], [ %36, %52 ], [ %36, %63 ], [ %1, %13 ]
  %76 = phi ptr [ %15, %42 ], [ %15, %70 ], [ %15, %52 ], [ %15, %63 ], [ %1, %13 ]
  %77 = phi ptr [ null, %42 ], [ %34, %70 ], [ %34, %52 ], [ %34, %63 ], [ null, %13 ]
  %78 = phi ptr [ %0, %42 ], [ %72, %70 ], [ %55, %52 ], [ %66, %63 ], [ %0, %13 ]
  %79 = phi i32 [ %3, %42 ], [ %3, %70 ], [ %56, %52 ], [ %69, %63 ], [ %3, %13 ]
  %80 = phi ptr [ %14, %42 ], [ %72, %70 ], [ %55, %52 ], [ %66, %63 ], [ %14, %13 ]
  %81 = ptrtoint ptr %76 to i64
  %82 = ptrtoint ptr %75 to i64
  %83 = sub i64 %81, %82
  %84 = tail call ptr @Perl_gv_fetchmeth_pvn(ptr noundef %80, ptr noundef %75, i64 noundef %83, i32 noundef 0, i32 noundef %79) #13
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %191, !prof !385

86:                                               ; preds = %73
  %87 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(7) @.str.12) #12
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %236, label %89, !prof !386

89:                                               ; preds = %86
  %90 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(9) @.str.13) #12
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %236, label %92, !prof !310

92:                                               ; preds = %89
  %93 = icmp eq i32 %5, 0
  br i1 %93, label %97, label %94, !prof !262

94:                                               ; preds = %92
  %95 = or i32 %79, 1
  %96 = tail call ptr @Perl_gv_autoload_pvn(ptr noundef %78, ptr noundef %75, i64 noundef %83, i32 noundef %95) #13
  br label %97

97:                                               ; preds = %92, %94
  %98 = phi ptr [ %96, %94 ], [ null, %92 ]
  %99 = icmp eq ptr %98, null
  %100 = icmp ne i32 %6, 0
  %101 = and i1 %100, %99
  br i1 %101, label %102, label %236, !prof !387

102:                                              ; preds = %97
  %103 = icmp eq ptr %80, null
  br i1 %103, label %181, label %104

104:                                              ; preds = %102
  %105 = getelementptr inbounds %struct.hv, ptr %80, i64 0, i32 2
  %106 = load i32, ptr %105, align 4, !tbaa !323
  %107 = and i32 %106, 33554432
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %158, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.hv, ptr %80, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !222
  %112 = load ptr, ptr %80, align 8, !tbaa !326
  %113 = getelementptr inbounds %struct.xpvhv, ptr %112, i64 0, i32 3
  %114 = load i64, ptr %113, align 8, !tbaa !327
  %115 = getelementptr ptr, ptr %111, i64 %114
  %116 = getelementptr ptr, ptr %115, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !222
  %118 = icmp eq ptr %117, null
  br i1 %118, label %158, label %119

119:                                              ; preds = %109
  %120 = getelementptr i8, ptr %115, i64 36
  %121 = load i32, ptr %120, align 4, !tbaa !329
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %119
  %124 = load ptr, ptr %117, align 8, !tbaa !222
  %125 = icmp eq ptr %124, null
  br i1 %125, label %158, label %126

126:                                              ; preds = %123
  %127 = load ptr, ptr %117, align 8, !tbaa !222
  %128 = icmp eq ptr %127, null
  br i1 %128, label %158, label %129

129:                                              ; preds = %119, %126
  %130 = phi ptr [ %124, %126 ], [ %117, %119 ]
  %131 = phi ptr [ %127, %126 ], [ %117, %119 ]
  %132 = getelementptr inbounds %struct.hek, ptr %131, i64 0, i32 1
  %133 = load i32, ptr %132, align 4, !tbaa !228
  %134 = icmp eq i32 %133, 8
  br i1 %134, label %135, label %158

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.hek, ptr %130, i64 0, i32 2
  %137 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %136, ptr noundef nonnull dereferenceable(8) @.str.14, i64 8)
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %158

139:                                              ; preds = %135
  %140 = load ptr, ptr @PL_incgv, align 8, !tbaa !221
  %141 = getelementptr inbounds %struct.gv, ptr %140, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !222
  %143 = getelementptr inbounds %struct.gp, ptr %142, i64 0, i32 5
  %144 = load ptr, ptr %143, align 8, !tbaa !242
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %139
  %147 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %140, i32 noundef 12) #13
  %148 = load ptr, ptr %141, align 8, !tbaa !222
  %149 = getelementptr inbounds %struct.gp, ptr %148, i64 0, i32 5
  %150 = load ptr, ptr %149, align 8, !tbaa !242
  br label %151

151:                                              ; preds = %139, %146
  %152 = phi ptr [ %150, %146 ], [ %144, %139 ]
  %153 = tail call ptr @Perl_hv_common(ptr noundef %152, ptr noundef null, ptr noundef nonnull @.str.15, i64 noundef 10, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef 0) #11
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  tail call void @Perl_require_pv(ptr noundef nonnull @.str.15) #11
  %156 = tail call ptr @Perl_gv_fetchmeth_pvn(ptr noundef nonnull %80, ptr noundef %75, i64 noundef %83, i32 noundef 0, i32 noundef %79) #13
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %236

158:                                              ; preds = %104, %109, %123, %126, %155, %151, %135, %129
  %159 = lshr exact i32 %7, 29
  %160 = load i32, ptr %105, align 4, !tbaa !323
  %161 = and i32 %160, 33554432
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %179, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.hv, ptr %80, i64 0, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !222
  %166 = load ptr, ptr %80, align 8, !tbaa !326
  %167 = getelementptr inbounds %struct.xpvhv, ptr %166, i64 0, i32 3
  %168 = load i64, ptr %167, align 8, !tbaa !327
  %169 = getelementptr ptr, ptr %165, i64 %168
  %170 = getelementptr ptr, ptr %169, i64 1
  %171 = load ptr, ptr %170, align 8, !tbaa !222
  %172 = icmp eq ptr %171, null
  br i1 %172, label %179, label %173

173:                                              ; preds = %163
  %174 = getelementptr i8, ptr %169, i64 36
  %175 = load i32, ptr %174, align 4, !tbaa !329
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %173
  %178 = load ptr, ptr %171, align 8, !tbaa !221
  br label %179

179:                                              ; preds = %177, %163, %158, %173
  %180 = phi ptr [ %178, %177 ], [ null, %163 ], [ null, %158 ], [ %171, %173 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.16, i32 noundef %159, i64 noundef %83, ptr noundef %75, ptr noundef %180) #11
  br label %236

181:                                              ; preds = %102
  br i1 %74, label %188, label %182

182:                                              ; preds = %181
  %183 = ptrtoint ptr %77 to i64
  %184 = ptrtoint ptr %1 to i64
  %185 = sub i64 %183, %184
  %186 = or disjoint i32 %7, 524288
  %187 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %1, i64 noundef %185, i32 noundef %186) #11
  br label %188

188:                                              ; preds = %181, %182
  %189 = phi ptr [ %187, %182 ], [ %0, %181 ]
  %190 = lshr exact i32 %7, 29
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.17, i32 noundef %190, i64 noundef %83, ptr noundef %75, ptr noundef %189, ptr noundef %189) #11
  br label %236

191:                                              ; preds = %73
  %192 = icmp eq i32 %5, 0
  br i1 %192, label %236, label %193, !prof !388

193:                                              ; preds = %191
  %194 = getelementptr inbounds %struct.gv, ptr %84, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !222
  %196 = getelementptr inbounds %struct.gp, ptr %195, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !263
  %198 = load ptr, ptr %197, align 8, !tbaa !264
  %199 = getelementptr inbounds %struct.xpvcv, ptr %198, i64 0, i32 6
  %200 = load ptr, ptr %199, align 8, !tbaa !222
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %236, !prof !389

202:                                              ; preds = %193
  %203 = getelementptr inbounds %struct.xpvcv, ptr %198, i64 0, i32 12
  %204 = load i32, ptr %203, align 4, !tbaa !289
  %205 = and i32 %204, 65664
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %202
  %208 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %197) #13
  %209 = getelementptr inbounds %struct.gv, ptr %208, i64 0, i32 3
  %210 = load ptr, ptr %209, align 8, !tbaa !222
  %211 = getelementptr inbounds %struct.gp, ptr %210, i64 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !263
  %213 = icmp eq ptr %212, %197
  %214 = select i1 %213, ptr %208, ptr %84
  br label %215

215:                                              ; preds = %207, %202
  %216 = phi ptr [ %84, %202 ], [ %214, %207 ]
  %217 = load ptr, ptr %216, align 8, !tbaa !226
  %218 = getelementptr inbounds %struct.xpvgv, ptr %217, i64 0, i32 5
  %219 = load ptr, ptr %218, align 8, !tbaa !222
  %220 = getelementptr inbounds %struct.xpvgv, ptr %217, i64 0, i32 4
  %221 = load ptr, ptr %220, align 8, !tbaa !222
  %222 = getelementptr inbounds %struct.hek, ptr %221, i64 0, i32 2
  %223 = getelementptr inbounds %struct.hek, ptr %221, i64 0, i32 1
  %224 = load i32, ptr %223, align 4, !tbaa !228
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, ptr %222, i64 %225
  %227 = getelementptr inbounds i8, ptr %226, i64 1
  %228 = load i8, ptr %227, align 1, !tbaa !222
  %229 = and i8 %228, 1
  %230 = zext nneg i8 %229 to i32
  %231 = shl nuw nsw i32 %230, 29
  %232 = or disjoint i32 %231, 1
  %233 = tail call ptr @Perl_gv_autoload_pvn(ptr noundef %219, ptr noundef nonnull %222, i64 noundef %225, i32 noundef %232) #13
  %234 = icmp eq ptr %233, null
  %235 = select i1 %234, ptr %84, ptr %233
  br label %236

236:                                              ; preds = %86, %89, %179, %155, %188, %97, %191, %215, %193
  %237 = phi ptr [ %84, %191 ], [ null, %188 ], [ %98, %97 ], [ %84, %193 ], [ %235, %215 ], [ null, %179 ], [ %156, %155 ], [ @PL_sv_yes, %89 ], [ @PL_sv_yes, %86 ]
  ret ptr %237
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_stashpvn(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !390 {
  %4 = tail call fastcc ptr @S_gv_stashsvpvn_cached(ptr noundef null, ptr noundef %0, i32 noundef %1, i32 noundef %2) #13
  ret ptr %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_autoload_pvn(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !272 {
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
  %16 = load i32, ptr %15, align 4, !tbaa !239
  %17 = and i32 %16, 252
  %18 = icmp ult i32 %17, 12
  br i1 %18, label %19, label %39

19:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  store i64 0, ptr %5, align 8, !tbaa !317
  %20 = and i32 %16, 2098176
  %21 = icmp eq i32 %20, 1024
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load ptr, ptr %0, align 8, !tbaa !316
  %24 = getelementptr inbounds %struct.xpv, ptr %23, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !248
  store i64 %25, ptr %5, align 8, !tbaa !317
  %26 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !222
  br label %32

28:                                               ; preds = %19
  %29 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 34) #11
  %30 = load i64, ptr %5, align 8, !tbaa !317
  %31 = load i32, ptr %15, align 4, !tbaa !323
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
  %44 = load ptr, ptr %43, align 8, !tbaa !222
  %45 = load ptr, ptr %0, align 8, !tbaa !326
  %46 = getelementptr inbounds %struct.xpvhv, ptr %45, i64 0, i32 3
  %47 = load i64, ptr %46, align 8, !tbaa !327
  %48 = getelementptr ptr, ptr %44, i64 %47
  %49 = getelementptr ptr, ptr %48, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !222
  %51 = icmp eq ptr %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %42
  %53 = getelementptr i8, ptr %48, i64 36
  %54 = load i32, ptr %53, align 4, !tbaa !329
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %50, align 8, !tbaa !221
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
  call void @Perl_sv_catpvn_flags(ptr noundef %63, ptr noundef nonnull @.str.11, i64 noundef 7, i32 noundef 2) #11
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
  %76 = load ptr, ptr %75, align 8, !tbaa !222
  %77 = getelementptr inbounds %struct.gp, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !263
  %79 = load ptr, ptr %78, align 8, !tbaa !264
  %80 = getelementptr inbounds %struct.xpvcv, ptr %79, i64 0, i32 6
  %81 = load ptr, ptr %80, align 8, !tbaa !222
  %82 = icmp eq ptr %81, null
  br i1 %82, label %283, label %83

83:                                               ; preds = %74
  %84 = and i32 %3, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.gp, ptr %76, i64 0, i32 3
  %88 = load i32, ptr %87, align 8, !tbaa !273
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load ptr, ptr %72, align 8, !tbaa !226
  %92 = getelementptr inbounds %struct.xpvgv, ptr %91, i64 0, i32 5
  %93 = load ptr, ptr %92, align 8, !tbaa !222
  %94 = icmp eq ptr %93, %70
  br i1 %94, label %98, label %95

95:                                               ; preds = %90, %86
  %96 = lshr exact i32 %6, 29
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef %69, i32 noundef %96, i64 noundef %2, ptr noundef %1) #11
  %97 = load ptr, ptr %78, align 8, !tbaa !264
  br label %98

98:                                               ; preds = %95, %90, %83
  %99 = phi ptr [ %97, %95 ], [ %79, %90 ], [ %79, %83 ]
  %100 = getelementptr inbounds %struct.xpvcv, ptr %99, i64 0, i32 12
  %101 = load i32, ptr %100, align 4, !tbaa !289
  %102 = and i32 %101, 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %239, label %104

104:                                              ; preds = %98
  call void @Perl_cvstash_set(ptr noundef nonnull %78, ptr noundef %70) #13
  %105 = getelementptr inbounds %struct.cv, ptr %78, i64 0, i32 2
  %106 = load i32, ptr %105, align 4, !tbaa !391
  %107 = and i32 %106, 1024
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %228, label %109

109:                                              ; preds = %104
  %110 = call ptr @Perl_newSVpvn_flags(ptr noundef %1, i64 noundef %2, i32 noundef %6) #11
  %111 = load i32, ptr %105, align 4, !tbaa !391
  %112 = and i32 %111, 1024
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %142, label %114

114:                                              ; preds = %109
  %115 = and i32 %111, 255
  %116 = icmp eq i32 %115, 13
  br i1 %116, label %117, label %128

117:                                              ; preds = %114
  %118 = load ptr, ptr %78, align 8, !tbaa !264
  %119 = getelementptr inbounds %struct.xpvcv, ptr %118, i64 0, i32 12
  %120 = load i32, ptr %119, align 4, !tbaa !289
  %121 = and i32 %120, 8192
  %122 = icmp eq i32 %121, 0
  %123 = getelementptr inbounds %struct.cv, ptr %78, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !222
  br i1 %122, label %125, label %135

125:                                              ; preds = %117
  %126 = and i32 %111, 536870912
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %169, label %150

128:                                              ; preds = %114
  %129 = getelementptr inbounds %struct.cv, ptr %78, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !222
  %131 = and i32 %111, 536870912
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %169, label %133

133:                                              ; preds = %128
  %134 = load ptr, ptr %78, align 8, !tbaa !264
  br label %163

135:                                              ; preds = %117
  %136 = getelementptr inbounds %struct.xpv, ptr %118, i64 0, i32 2
  %137 = load i64, ptr %136, align 8, !tbaa !248
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
  %146 = load ptr, ptr %110, align 8, !tbaa !316
  %147 = getelementptr inbounds %struct.xpv, ptr %146, i64 0, i32 2
  %148 = load i64, ptr %147, align 8, !tbaa !248
  %149 = add i64 %148, 1
  store i64 %149, ptr %147, align 8, !tbaa !248
  br label %208

150:                                              ; preds = %125, %135
  %151 = phi ptr [ %139, %135 ], [ %124, %125 ]
  %152 = load ptr, ptr %78, align 8, !tbaa !264
  %153 = getelementptr inbounds %struct.xpvcv, ptr %152, i64 0, i32 12
  %154 = load i32, ptr %153, align 4, !tbaa !289
  %155 = and i32 %154, 8192
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %150
  %158 = getelementptr inbounds %struct.xpv, ptr %152, i64 0, i32 3
  %159 = load i64, ptr %158, align 8, !tbaa !222
  %160 = getelementptr inbounds %struct.xpv, ptr %152, i64 0, i32 2
  %161 = load i64, ptr %160, align 8, !tbaa !248
  %162 = sub i64 %159, %161
  br label %175

163:                                              ; preds = %133, %150
  %164 = phi ptr [ %152, %150 ], [ %134, %133 ]
  %165 = phi ptr [ %151, %150 ], [ %130, %133 ]
  %166 = getelementptr inbounds %struct.xpv, ptr %164, i64 0, i32 2
  %167 = load i64, ptr %166, align 8, !tbaa !248
  %168 = add i64 %167, 2
  br label %175

169:                                              ; preds = %125, %135, %128
  %170 = phi ptr [ %139, %135 ], [ %124, %125 ], [ %130, %128 ]
  %171 = load ptr, ptr %110, align 8, !tbaa !316
  %172 = getelementptr inbounds %struct.xpv, ptr %171, i64 0, i32 2
  %173 = load i64, ptr %172, align 8, !tbaa !248
  %174 = add i64 %173, 1
  store i64 %174, ptr %172, align 8, !tbaa !248
  br label %186

175:                                              ; preds = %163, %157, %142
  %176 = phi ptr [ %151, %157 ], [ %165, %163 ], [ null, %142 ]
  %177 = phi i64 [ %162, %157 ], [ %168, %163 ], [ 2, %142 ]
  %178 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %110, i32 noundef 0, i64 noundef %177) #11
  %179 = load i32, ptr %105, align 4, !tbaa !391
  %180 = and i32 %179, 1024
  %181 = icmp eq i32 %180, 0
  %182 = load ptr, ptr %110, align 8, !tbaa !316
  %183 = getelementptr inbounds %struct.xpv, ptr %182, i64 0, i32 2
  %184 = load i64, ptr %183, align 8, !tbaa !248
  %185 = add i64 %184, 1
  store i64 %185, ptr %183, align 8, !tbaa !248
  br i1 %181, label %208, label %186

186:                                              ; preds = %169, %175
  %187 = phi i64 [ %173, %169 ], [ %184, %175 ]
  %188 = phi ptr [ %170, %169 ], [ %176, %175 ]
  %189 = phi i32 [ %111, %169 ], [ %179, %175 ]
  %190 = and i32 %189, 255
  %191 = icmp eq i32 %190, 13
  %192 = load ptr, ptr %78, align 8, !tbaa !264
  br i1 %191, label %193, label %205

193:                                              ; preds = %186
  %194 = getelementptr inbounds %struct.xpvcv, ptr %192, i64 0, i32 12
  %195 = load i32, ptr %194, align 4, !tbaa !289
  %196 = and i32 %195, 8192
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %205, label %198

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.xpv, ptr %192, i64 0, i32 3
  %200 = load i64, ptr %199, align 8, !tbaa !222
  %201 = getelementptr inbounds %struct.xpv, ptr %192, i64 0, i32 2
  %202 = load i64, ptr %201, align 8, !tbaa !248
  %203 = add i64 %200, -2
  %204 = sub i64 %203, %202
  br label %208

205:                                              ; preds = %193, %186
  %206 = getelementptr inbounds %struct.xpv, ptr %192, i64 0, i32 2
  %207 = load i64, ptr %206, align 8, !tbaa !248
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
  %217 = load i32, ptr %216, align 4, !tbaa !214
  %218 = or i32 %217, 524288
  store i32 %218, ptr %216, align 4, !tbaa !214
  call void @Perl_sv_setsv_flags(ptr noundef nonnull %78, ptr noundef nonnull %110, i32 noundef 1536) #11
  %219 = load i32, ptr %216, align 4, !tbaa !214
  %220 = and i32 %219, -524289
  store i32 %220, ptr %216, align 4, !tbaa !214
  call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %110) #13
  %221 = load ptr, ptr %78, align 8, !tbaa !264
  %222 = getelementptr inbounds %struct.xpv, ptr %221, i64 0, i32 2
  %223 = load i64, ptr %222, align 8, !tbaa !248
  %224 = add i64 %223, 1
  %225 = getelementptr inbounds %struct.xpv, ptr %221, i64 0, i32 3
  store i64 %224, ptr %225, align 8, !tbaa !222
  %226 = load ptr, ptr %78, align 8, !tbaa !264
  %227 = getelementptr inbounds %struct.xpv, ptr %226, i64 0, i32 2
  store i64 %209, ptr %227, align 8, !tbaa !248
  br label %234

228:                                              ; preds = %104
  call void @Perl_sv_setpvn(ptr noundef nonnull %78, ptr noundef %1, i64 noundef %2) #11
  %229 = load i32, ptr %105, align 4, !tbaa !391
  %230 = and i32 %229, -536888321
  br i1 %7, label %233, label %231

231:                                              ; preds = %228
  %232 = or disjoint i32 %230, 536870912
  store i32 %232, ptr %105, align 4, !tbaa !391
  br label %234

233:                                              ; preds = %228
  store i32 %230, ptr %105, align 4, !tbaa !391
  br label %234

234:                                              ; preds = %231, %233, %208
  %235 = load ptr, ptr %78, align 8, !tbaa !264
  %236 = getelementptr inbounds %struct.xpvcv, ptr %235, i64 0, i32 12
  %237 = load i32, ptr %236, align 4, !tbaa !289
  %238 = or i32 %237, 8192
  store i32 %238, ptr %236, align 4, !tbaa !289
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
  %248 = load ptr, ptr %247, align 8, !tbaa !226
  %249 = getelementptr inbounds %struct.xpvgv, ptr %248, i64 0, i32 5
  br label %250

250:                                              ; preds = %246, %244
  %251 = phi ptr [ %245, %244 ], [ %249, %246 ]
  %252 = load ptr, ptr %251, align 8, !tbaa !222
  %253 = call ptr @Perl_hv_common_key_len(ptr noundef %252, ptr noundef nonnull @S_autoload, i32 noundef 8, i32 noundef 48, ptr noundef null, i32 noundef 0) #11
  %254 = load ptr, ptr %253, align 8, !tbaa !221
  call void @Perl_push_scope() #11
  %255 = getelementptr inbounds %struct.gv, ptr %254, i64 0, i32 2
  %256 = load i32, ptr %255, align 4, !tbaa !235
  %257 = and i32 %256, 255
  %258 = icmp eq i32 %257, 9
  br i1 %258, label %263, label %259

259:                                              ; preds = %250
  call void @Perl_gv_init_pvn(ptr noundef nonnull %254, ptr noundef %252, ptr noundef nonnull @S_autoload, i64 noundef 8, i32 noundef 0) #13
  %260 = call ptr @Perl_newSV(i64 noundef 0) #11
  %261 = getelementptr inbounds %struct.gv, ptr %254, i64 0, i32 3
  %262 = load ptr, ptr %261, align 8, !tbaa !222
  store ptr %260, ptr %262, align 8, !tbaa !237
  br label %263

263:                                              ; preds = %259, %250
  call void @Perl_pop_scope() #11
  %264 = getelementptr inbounds %struct.gv, ptr %254, i64 0, i32 3
  %265 = load ptr, ptr %264, align 8, !tbaa !222
  %266 = load ptr, ptr %265, align 8, !tbaa !221
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %272

268:                                              ; preds = %263
  %269 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %254, i32 noundef 0) #13
  %270 = load ptr, ptr %264, align 8, !tbaa !222
  %271 = load ptr, ptr %270, align 8, !tbaa !221
  br label %272

272:                                              ; preds = %263, %268
  %273 = phi ptr [ %271, %268 ], [ %266, %263 ]
  %274 = load i8, ptr @PL_tainting, align 1, !tbaa !392, !range !394, !noundef !395
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %272
  call void @Perl_sv_untaint(ptr noundef %273) #11
  br label %277

277:                                              ; preds = %272, %276
  call void @Perl_sv_setsv_flags(ptr noundef %273, ptr noundef %69, i32 noundef 1538) #11
  call void @Perl_sv_catpvn_flags(ptr noundef %273, ptr noundef nonnull @.str.19, i64 noundef 2, i32 noundef 2) #11
  %278 = select i1 %7, i32 16512, i32 32896
  call void @Perl_sv_catpvn_flags(ptr noundef %273, ptr noundef %1, i64 noundef %2, i32 noundef %278) #11
  br i1 %7, label %283, label %279

279:                                              ; preds = %277
  %280 = getelementptr inbounds %struct.sv, ptr %273, i64 0, i32 2
  %281 = load i32, ptr %280, align 4, !tbaa !214
  %282 = or i32 %281, 536870912
  store i32 %282, ptr %280, align 4, !tbaa !214
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
define internal fastcc ptr @S_CvGV(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !396 !PGOFuncName !397 {
  %2 = load ptr, ptr %0, align 8, !tbaa !264
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !289
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !398

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %0) #13
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !222
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_autoload_sv(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !272 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !214
  %7 = and i32 %6, 2098176
  %8 = icmp eq i32 %7, 1024
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 8, !tbaa !316
  %11 = getelementptr inbounds %struct.xpv, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !248
  store i64 %12, ptr %4, align 8, !tbaa !317
  %13 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !222
  br label %19

15:                                               ; preds = %3
  %16 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef 2) #11
  %17 = load i32, ptr %5, align 4, !tbaa !214
  %18 = load i64, ptr %4, align 8, !tbaa !317
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
define dso_local ptr @Perl_gv_autoload_pv(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !272 {
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
declare void @Perl_push_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_pop_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_untaint(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_stashpv(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !399 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %4 = trunc i64 %3 to i32
  %5 = tail call ptr @Perl_gv_stashpvn(ptr noundef %0, i32 noundef %4, i32 noundef %1) #13
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_gv_stashsvpvn_cached(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !400 !PGOFuncName !401 {
  %5 = alloca i64, align 8
  %6 = load ptr, ptr @PL_stashcache, align 8, !tbaa !221
  %7 = zext i32 %2 to i64
  %8 = lshr i32 %3, 29
  %9 = and i32 %8, 1
  %10 = tail call ptr @Perl_hv_common(ptr noundef %6, ptr noundef %0, ptr noundef %1, i64 noundef %7, i32 noundef %9, i32 noundef 0, ptr noundef null, i32 noundef 0) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12, !prof !402

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.he, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !222
  %15 = load ptr, ptr %14, align 8, !tbaa !316
  %16 = getelementptr inbounds %struct.xpviv, ptr %15, i64 0, i32 4
  %17 = load i64, ptr %16, align 8, !tbaa !222
  %18 = inttoptr i64 %17 to ptr
  br label %73

19:                                               ; preds = %4
  %20 = and i32 %3, 4096
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %73, !prof !403

22:                                               ; preds = %19
  %23 = icmp eq ptr %0, null
  br i1 %23, label %54, label %24, !prof !404

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !214
  %27 = and i32 %26, 65280
  %28 = icmp ne i32 %27, 0
  %29 = and i32 %26, 255
  %30 = icmp eq i32 %29, 8
  %31 = or i1 %28, %30
  br i1 %31, label %35, label %32, !prof !405

32:                                               ; preds = %24
  %33 = and i32 %26, 16777471
  %34 = icmp eq i32 %33, 16777226
  br i1 %34, label %35, label %54

35:                                               ; preds = %32, %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %36 = and i32 %26, 2098176
  %37 = icmp eq i32 %36, 1024
  br i1 %37, label %38, label %43, !prof !406

38:                                               ; preds = %35
  %39 = load ptr, ptr %0, align 8, !tbaa !316
  %40 = getelementptr inbounds %struct.xpv, ptr %39, i64 0, i32 2
  %41 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !222
  br label %46

43:                                               ; preds = %35
  %44 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 34) #11
  %45 = load i32, ptr %25, align 4, !tbaa !214
  br label %46

46:                                               ; preds = %43, %38
  %47 = phi i32 [ %26, %38 ], [ %45, %43 ]
  %48 = phi ptr [ %40, %38 ], [ %5, %43 ]
  %49 = phi ptr [ %42, %38 ], [ %44, %43 ]
  %50 = load i64, ptr %48, align 8, !tbaa !317
  %51 = trunc i64 %50 to i32
  %52 = and i32 %47, 536870912
  %53 = or i32 %52, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  br label %54

54:                                               ; preds = %32, %46, %22
  %55 = phi i32 [ %53, %46 ], [ %3, %22 ], [ %3, %32 ]
  %56 = phi i32 [ %51, %46 ], [ %2, %22 ], [ 0, %32 ]
  %57 = phi ptr [ %49, %46 ], [ %1, %22 ], [ @.str.7, %32 ]
  %58 = call fastcc ptr @S_gv_stashpvn_internal(ptr noundef %57, i32 noundef %56, i32 noundef %55) #13
  %59 = icmp ne ptr %58, null
  %60 = icmp ne i32 %56, 0
  %61 = and i1 %60, %59
  br i1 %61, label %62, label %73, !prof !407

62:                                               ; preds = %54
  %63 = ptrtoint ptr %58 to i64
  %64 = call ptr @Perl_newSViv(i64 noundef %63) #11
  %65 = load ptr, ptr @PL_stashcache, align 8, !tbaa !221
  %66 = and i32 %55, 536870912
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68, !prof !408

68:                                               ; preds = %62
  %69 = sub nsw i32 0, %56
  br label %70

70:                                               ; preds = %62, %68
  %71 = phi i32 [ %69, %68 ], [ %56, %62 ]
  %72 = call ptr @Perl_hv_common_key_len(ptr noundef %65, ptr noundef %57, i32 noundef %71, i32 noundef 36, ptr noundef %64, i32 noundef 0) #11
  br label %73

73:                                               ; preds = %54, %70, %19, %12
  %74 = phi ptr [ %18, %12 ], [ null, %19 ], [ %58, %70 ], [ %58, %54 ]
  ret ptr %74
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_stashsv(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !409 {
  %3 = tail call fastcc ptr @S_gv_stashsvpvn_cached(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef %1) #13
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchpv(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !410 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %5 = tail call ptr @Perl_gv_fetchpvn_flags(ptr noundef %0, i64 noundef %4, i32 noundef %1, i32 noundef %2) #13
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchpvn_flags(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !411 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  store ptr %0, ptr %5, align 8, !tbaa !221
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  store ptr null, ptr %6, align 8, !tbaa !221
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  store ptr null, ptr %8, align 8, !tbaa !221
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
  br i1 %19, label %21, label %20, !prof !412

20:                                               ; preds = %4
  store i64 %1, ptr %7, align 8, !tbaa !317
  br label %31

21:                                               ; preds = %4
  %22 = call fastcc zeroext i1 @S_parse_gv_stash_name(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %11) #13
  br i1 %22, label %23, label %247, !prof !413

23:                                               ; preds = %21
  %24 = load ptr, ptr %5, align 8, !tbaa !221
  %25 = icmp eq ptr %24, %15
  br i1 %25, label %26, label %28, !prof !414

26:                                               ; preds = %23
  %27 = load ptr, ptr %6, align 8, !tbaa !221
  br label %247

28:                                               ; preds = %23
  %29 = load ptr, ptr %8, align 8, !tbaa !221
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %37, !prof !415

31:                                               ; preds = %20, %28
  %32 = phi ptr [ %0, %20 ], [ %24, %28 ]
  %33 = load i64, ptr %7, align 8, !tbaa !317
  %34 = call fastcc zeroext i1 @S_find_default_stash(ptr noundef nonnull %8, ptr noundef %32, i64 noundef %33, i32 noundef %12, i32 noundef %11, i32 noundef %3) #13
  br i1 %34, label %35, label %247, !prof !416

35:                                               ; preds = %31
  %36 = load ptr, ptr %8, align 8, !tbaa !221
  br label %37

37:                                               ; preds = %35, %28
  %38 = phi ptr [ %32, %35 ], [ %24, %28 ]
  %39 = phi ptr [ %36, %35 ], [ %29, %28 ]
  %40 = icmp ne i32 %12, 0
  %41 = load i64, ptr %7, align 8, !tbaa !317
  %42 = trunc i64 %41 to i32
  br i1 %40, label %43, label %45, !prof !417

43:                                               ; preds = %37
  %44 = sub nsw i32 0, %42
  br label %45

45:                                               ; preds = %37, %43
  %46 = phi i32 [ %44, %43 ], [ %42, %37 ]
  %47 = icmp eq i32 %11, 0
  %48 = select i1 %47, i32 32, i32 48
  %49 = tail call ptr @Perl_hv_common_key_len(ptr noundef %39, ptr noundef %38, i32 noundef %46, i32 noundef %48, ptr noundef null, i32 noundef 0) #11
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51, !prof !418

51:                                               ; preds = %45
  %52 = load ptr, ptr %49, align 8, !tbaa !221
  %53 = icmp eq ptr %52, @PL_sv_undef
  br i1 %53, label %54, label %57, !prof !419

54:                                               ; preds = %51, %45
  br i1 %14, label %247, label %55, !prof !420

55:                                               ; preds = %54
  %56 = tail call ptr @Perl_newSV(i64 noundef 0) #11
  br label %57

57:                                               ; preds = %51, %55
  %58 = phi ptr [ %56, %55 ], [ %52, %51 ]
  %59 = phi i1 [ true, %55 ], [ false, %51 ]
  store ptr %58, ptr %6, align 8, !tbaa !221
  %60 = getelementptr inbounds %struct.gv, ptr %58, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !235
  %62 = and i32 %61, 255
  %63 = icmp eq i32 %62, 9
  br i1 %63, label %64, label %91, !prof !421

64:                                               ; preds = %57
  br i1 %47, label %247, label %65, !prof !422

65:                                               ; preds = %64
  %66 = load ptr, ptr %58, align 8, !tbaa !226
  %67 = getelementptr inbounds %struct.xpvgv, ptr %66, i64 0, i32 2
  %68 = load i64, ptr %67, align 8, !tbaa !259
  %69 = or i64 %68, 2
  store i64 %69, ptr %67, align 8, !tbaa !259
  tail call fastcc void @S_gv_init_svtype(ptr noundef nonnull %58, i32 noundef %3) #13
  switch i64 %41, label %247 [
    i64 1, label %70
    i64 3, label %74
  ], !prof !423

70:                                               ; preds = %65
  %71 = load ptr, ptr @PL_defstash, align 8, !tbaa !221
  %72 = icmp eq ptr %39, %71
  br i1 %72, label %73, label %247, !prof !424

73:                                               ; preds = %70
  tail call fastcc void @S_maybe_multimagic_gv(ptr noundef nonnull %58, ptr noundef %38, i32 noundef %3) #13
  br label %247

74:                                               ; preds = %65
  %75 = icmp eq i32 %3, 11
  br i1 %75, label %76, label %247, !prof !425

76:                                               ; preds = %74
  %77 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(4) @.str.6, i64 noundef 3) #12
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %247, !prof !426

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.gv, ptr %58, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !222
  %82 = getelementptr inbounds %struct.gp, ptr %81, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !241
  %84 = icmp eq ptr %83, null
  br i1 %84, label %90, label %85, !prof !427

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.av, ptr %83, i64 0, i32 2
  %87 = load i32, ptr %86, align 4, !tbaa !428
  %88 = and i32 %87, 4194304
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %247, !prof !427

90:                                               ; preds = %85, %79
  tail call fastcc void @S_gv_magicalize_isa(ptr noundef nonnull %58) #13
  br label %247

91:                                               ; preds = %57
  %92 = icmp eq i32 %9, 0
  br i1 %92, label %93, label %247, !prof !429

93:                                               ; preds = %91
  %94 = icmp eq i32 %10, 0
  %95 = and i32 %61, 2048
  %96 = icmp eq i32 %95, 0
  %97 = or i1 %94, %96
  br i1 %97, label %98, label %247, !prof !430

98:                                               ; preds = %93
  %99 = and i32 %61, 65280
  %100 = icmp ne i32 %99, 0
  %101 = icmp eq i32 %62, 8
  %102 = or i1 %100, %101
  br i1 %102, label %106, label %103, !prof !431

103:                                              ; preds = %98
  %104 = and i32 %61, 16777471
  %105 = icmp eq i32 %104, 16777226
  br label %106

106:                                              ; preds = %103, %98
  %107 = phi i1 [ true, %98 ], [ %105, %103 ]
  %108 = and i32 %2, 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110, !prof !432

110:                                              ; preds = %106
  %111 = lshr exact i32 %12, 29
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 24, ptr noundef nonnull @.str.20, i32 noundef %111, i64 noundef %1, ptr noundef %0) #11
  br label %112

112:                                              ; preds = %110, %106
  %113 = and i32 %2, 536870914
  tail call void @Perl_gv_init_pvn(ptr noundef nonnull %58, ptr noundef %39, ptr noundef %38, i64 noundef %41, i32 noundef %113) #13
  %114 = load ptr, ptr @PL_curcop, align 8, !tbaa !221
  %115 = getelementptr inbounds %struct.cop, ptr %114, i64 0, i32 10
  %116 = load i32, ptr %115, align 8, !tbaa !433
  %117 = and i32 %116, 8
  %118 = icmp eq i32 %117, 0
  %119 = and i1 %40, %118
  %120 = load i8, ptr %38, align 1, !tbaa !222
  br i1 %119, label %127, label %121, !prof !434

121:                                              ; preds = %112
  %122 = zext i8 %120 to i64
  %123 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !239
  %125 = and i32 %124, 81920
  %126 = icmp eq i32 %125, 81920
  br i1 %126, label %151, label %158, !prof !435

127:                                              ; preds = %112
  %128 = icmp sgt i8 %120, -1
  br i1 %128, label %129, label %135, !prof !435

129:                                              ; preds = %127
  %130 = zext nneg i8 %120 to i64
  %131 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !239
  %133 = and i32 %132, 65536
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %158, label %151, !prof !432

135:                                              ; preds = %127
  %136 = and i8 %120, -2
  %137 = icmp eq i8 %136, -62
  br i1 %137, label %138, label %149

138:                                              ; preds = %135
  %139 = shl i8 %120, 6
  %140 = getelementptr inbounds i8, ptr %38, i64 1
  %141 = load i8, ptr %140, align 1, !tbaa !222
  %142 = and i8 %141, 63
  %143 = or disjoint i8 %142, %139
  %144 = zext i8 %143 to i64
  %145 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !239
  %147 = and i32 %146, 65536
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %158, label %151

149:                                              ; preds = %135
  %150 = tail call zeroext i1 @Perl__is_utf8_perl_idstart(ptr noundef nonnull %38) #11
  br i1 %150, label %151, label %158, !prof !436

151:                                              ; preds = %138, %129, %149, %121
  %152 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 14) #11
  br i1 %152, label %158, label %153, !prof !437

153:                                              ; preds = %151
  %154 = load ptr, ptr %58, align 8, !tbaa !226
  %155 = getelementptr inbounds %struct.xpvgv, ptr %154, i64 0, i32 2
  %156 = load i64, ptr %155, align 8, !tbaa !259
  %157 = or i64 %156, 2
  store i64 %157, ptr %155, align 8, !tbaa !259
  br label %158

158:                                              ; preds = %138, %129, %153, %151, %149, %121
  br i1 %59, label %159, label %199, !prof !435

159:                                              ; preds = %158
  %160 = getelementptr inbounds %struct.gv, ptr %58, i64 0, i32 3
  %161 = load ptr, ptr %160, align 8, !tbaa !222
  %162 = getelementptr inbounds %struct.gp, ptr %161, i64 0, i32 6
  %163 = load ptr, ptr %162, align 8, !tbaa !241
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %196

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.gp, ptr %161, i64 0, i32 5
  %167 = load ptr, ptr %166, align 8, !tbaa !242
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %196

169:                                              ; preds = %165
  %170 = load i32, ptr %60, align 4, !tbaa !214
  %171 = and i32 %170, 255
  %172 = add nsw i32 %171, -9
  %173 = icmp ult i32 %172, 2
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.gp, ptr %161, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !438
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %196

178:                                              ; preds = %169, %174
  %179 = getelementptr inbounds %struct.gp, ptr %161, i64 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !263
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %196

182:                                              ; preds = %178
  %183 = load ptr, ptr %161, align 8, !tbaa !237
  %184 = icmp eq ptr %183, null
  br i1 %184, label %199, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.sv, ptr %183, i64 0, i32 2
  %187 = load i32, ptr %186, align 4, !tbaa !214
  %188 = and i32 %187, 65280
  %189 = icmp ne i32 %188, 0
  %190 = and i32 %187, 255
  %191 = icmp eq i32 %190, 8
  %192 = or i1 %189, %191
  %193 = and i32 %187, 16777471
  %194 = icmp eq i32 %193, 16777226
  %195 = or i1 %194, %192
  br i1 %195, label %196, label %199

196:                                              ; preds = %185, %178, %174, %165, %159
  %197 = trunc i64 %41 to i32
  %198 = tail call ptr @Perl_hv_common_key_len(ptr noundef %39, ptr noundef nonnull %38, i32 noundef %197, i32 noundef 36, ptr noundef nonnull %58, i32 noundef 0) #11
  br label %199

199:                                              ; preds = %185, %196, %182, %158
  %200 = tail call fastcc zeroext i1 @S_gv_magicalize(ptr noundef nonnull %58, ptr noundef %39, ptr noundef nonnull %38, i64 noundef %41, i1 noundef zeroext %59, i32 noundef %3) #13
  br i1 %200, label %201, label %245, !prof !435

201:                                              ; preds = %199
  %202 = getelementptr inbounds %struct.gv, ptr %58, i64 0, i32 3
  %203 = load ptr, ptr %202, align 8, !tbaa !222
  %204 = getelementptr inbounds %struct.gp, ptr %203, i64 0, i32 6
  %205 = load ptr, ptr %204, align 8, !tbaa !241
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %245

207:                                              ; preds = %201
  %208 = getelementptr inbounds %struct.gp, ptr %203, i64 0, i32 5
  %209 = load ptr, ptr %208, align 8, !tbaa !242
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %245

211:                                              ; preds = %207
  %212 = load i32, ptr %60, align 4, !tbaa !214
  %213 = and i32 %212, 255
  %214 = add nsw i32 %213, -9
  %215 = icmp ult i32 %214, 2
  br i1 %215, label %216, label %220

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.gp, ptr %203, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !438
  %219 = icmp eq ptr %218, null
  br i1 %219, label %220, label %245

220:                                              ; preds = %211, %216
  %221 = getelementptr inbounds %struct.gp, ptr %203, i64 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !263
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %245

224:                                              ; preds = %220
  %225 = load ptr, ptr %203, align 8, !tbaa !237
  %226 = icmp eq ptr %225, null
  br i1 %226, label %244, label %227

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.sv, ptr %225, i64 0, i32 2
  %229 = load i32, ptr %228, align 4, !tbaa !214
  %230 = and i32 %229, 65280
  %231 = icmp ne i32 %230, 0
  %232 = and i32 %229, 255
  %233 = icmp eq i32 %232, 8
  %234 = or i1 %231, %233
  %235 = and i32 %229, 16777471
  %236 = icmp eq i32 %235, 16777226
  %237 = or i1 %236, %234
  br i1 %237, label %245, label %238

238:                                              ; preds = %227
  %239 = and i32 %229, 14680064
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %244, label %241

241:                                              ; preds = %238
  %242 = trunc i64 %41 to i32
  %243 = tail call ptr @Perl_hv_common_key_len(ptr noundef %39, ptr noundef nonnull %38, i32 noundef %242, i32 noundef 36, ptr noundef nonnull %58, i32 noundef 0) #11
  br label %245

244:                                              ; preds = %238, %224
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %58) #13
  br label %247

245:                                              ; preds = %199, %241, %227, %220, %216, %207, %201
  %246 = select i1 %107, i32 13, i32 %3, !prof !439
  tail call fastcc void @S_gv_init_svtype(ptr noundef nonnull %58, i32 noundef %246) #13
  br label %247

247:                                              ; preds = %65, %70, %245, %244, %64, %74, %76, %85, %90, %73, %93, %91, %54, %31, %21, %26
  %248 = phi ptr [ %27, %26 ], [ null, %21 ], [ null, %31 ], [ null, %54 ], [ %58, %91 ], [ %58, %93 ], [ %58, %73 ], [ %58, %90 ], [ %58, %85 ], [ %58, %76 ], [ %58, %74 ], [ %58, %64 ], [ null, %244 ], [ %58, %245 ], [ %58, %70 ], [ %58, %65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret ptr %248
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_fetchsv(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !440 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !214
  %7 = and i32 %6, 2098176
  %8 = icmp eq i32 %7, 1024
  br i1 %8, label %9, label %15, !prof !441

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !316
  %11 = getelementptr inbounds %struct.xpv, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !248
  store i64 %12, ptr %4, align 8, !tbaa !317
  %13 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !222
  br label %22

15:                                               ; preds = %3
  %16 = and i32 %1, 2048
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 34, i32 0
  %19 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %18) #11
  %20 = load i64, ptr %4, align 8, !tbaa !317
  %21 = load i32, ptr %5, align 4, !tbaa !214
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
define internal fastcc noundef zeroext i1 @S_parse_gv_stash_name(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 !prof !442 !PGOFuncName !443 {
  %9 = getelementptr inbounds i8, ptr %4, i64 %5
  %10 = getelementptr inbounds i8, ptr %9, i64 -1
  %11 = icmp ugt i64 %5, 2
  %12 = load ptr, ptr %2, align 8, !tbaa !221
  br i1 %11, label %13, label %60, !prof !444

13:                                               ; preds = %8
  %14 = load i8, ptr %12, align 1, !tbaa !222
  %15 = icmp eq i8 %14, 42
  br i1 %15, label %16, label %60, !prof !445

16:                                               ; preds = %13
  %17 = load ptr, ptr @PL_curcop, align 8, !tbaa !221
  %18 = getelementptr inbounds %struct.cop, ptr %17, i64 0, i32 10
  %19 = load i32, ptr %18, align 8, !tbaa !433
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  %22 = icmp ne i32 %6, 0
  %23 = and i1 %22, %21
  %24 = getelementptr inbounds i8, ptr %12, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !222
  br i1 %23, label %32, label %26

26:                                               ; preds = %16
  %27 = zext i8 %25 to i64
  %28 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !239
  %30 = and i32 %29, 81920
  %31 = icmp eq i32 %30, 81920
  br i1 %31, label %57, label %60

32:                                               ; preds = %16
  %33 = icmp sgt i8 %25, -1
  br i1 %33, label %34, label %40

34:                                               ; preds = %32
  %35 = zext nneg i8 %25 to i64
  %36 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !239
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
  %46 = load i8, ptr %45, align 1, !tbaa !222
  %47 = and i8 %46, 63
  %48 = or disjoint i8 %47, %44
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !239
  %52 = and i32 %51, 65536
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %60, label %57

54:                                               ; preds = %40
  %55 = tail call zeroext i1 @Perl__is_utf8_perl_idstart(ptr noundef nonnull %24) #11
  %56 = load ptr, ptr %2, align 8, !tbaa !221
  br i1 %55, label %57, label %60

57:                                               ; preds = %54, %43, %34, %26
  %58 = phi ptr [ %12, %43 ], [ %12, %34 ], [ %12, %26 ], [ %56, %54 ]
  %59 = getelementptr inbounds i8, ptr %58, i64 1
  store ptr %59, ptr %2, align 8, !tbaa !221
  br label %60

60:                                               ; preds = %43, %34, %57, %54, %26, %13, %8
  %61 = phi ptr [ %12, %43 ], [ %12, %34 ], [ %59, %57 ], [ %56, %54 ], [ %12, %26 ], [ %12, %13 ], [ %12, %8 ]
  %62 = icmp ult ptr %61, %9
  br i1 %62, label %63, label %263, !prof !446

63:                                               ; preds = %60, %258
  %64 = phi ptr [ %259, %258 ], [ %61, %60 ]
  %65 = phi ptr [ %261, %258 ], [ %61, %60 ]
  %66 = icmp ult ptr %65, %10
  br i1 %66, label %67, label %258, !prof !447

67:                                               ; preds = %63
  %68 = load i8, ptr %65, align 1, !tbaa !222
  switch i8 %68, label %258 [
    i8 58, label %69
    i8 39, label %73
  ], !prof !448

69:                                               ; preds = %67
  %70 = getelementptr inbounds i8, ptr %65, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !222
  %72 = icmp eq i8 %71, 58
  br i1 %72, label %73, label %258, !prof !449

73:                                               ; preds = %67, %69
  %74 = load ptr, ptr %0, align 8, !tbaa !221
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %79, !prof !450

76:                                               ; preds = %73
  %77 = load ptr, ptr @PL_defstash, align 8, !tbaa !221
  store ptr %77, ptr %0, align 8, !tbaa !221
  %78 = icmp eq ptr %77, null
  br i1 %78, label %269, label %79, !prof !451

79:                                               ; preds = %73, %76
  %80 = phi ptr [ %77, %76 ], [ %74, %73 ]
  %81 = getelementptr inbounds %struct.hv, ptr %80, i64 0, i32 1
  %82 = load i32, ptr %81, align 8, !tbaa !452
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %269, label %84, !prof !453

84:                                               ; preds = %79
  %85 = load ptr, ptr %2, align 8, !tbaa !221
  %86 = ptrtoint ptr %65 to i64
  %87 = ptrtoint ptr %85 to i64
  %88 = sub i64 %86, %87
  store i64 %88, ptr %3, align 8, !tbaa !317
  %89 = icmp ugt ptr %65, %4
  br i1 %89, label %90, label %244, !prof !454

90:                                               ; preds = %84
  %91 = load i8, ptr %65, align 1, !tbaa !222
  %92 = icmp eq i8 %91, 58
  %93 = add i64 %88, 2
  br i1 %92, label %94, label %95, !prof !455

94:                                               ; preds = %90
  store i64 %93, ptr %3, align 8, !tbaa !317
  br label %106

95:                                               ; preds = %90
  %96 = tail call ptr @Perl_safesysmalloc(i64 noundef %93) #11
  %97 = load ptr, ptr %2, align 8, !tbaa !221
  %98 = load i64, ptr %3, align 8, !tbaa !317
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %96, ptr align 1 %97, i64 %98, i1 false)
  %99 = load i64, ptr %3, align 8, !tbaa !317
  %100 = add i64 %99, 1
  store i64 %100, ptr %3, align 8, !tbaa !317
  %101 = getelementptr inbounds i8, ptr %96, i64 %99
  store i8 58, ptr %101, align 1, !tbaa !222
  %102 = load i64, ptr %3, align 8, !tbaa !317
  %103 = add i64 %102, 1
  store i64 %103, ptr %3, align 8, !tbaa !317
  %104 = getelementptr inbounds i8, ptr %96, i64 %102
  store i8 58, ptr %104, align 1, !tbaa !222
  %105 = load ptr, ptr %0, align 8, !tbaa !221
  br label %106

106:                                              ; preds = %95, %94
  %107 = phi ptr [ %80, %94 ], [ %105, %95 ]
  %108 = phi ptr [ %85, %94 ], [ %96, %95 ]
  %109 = icmp eq i32 %6, 0
  %110 = load i64, ptr %3, align 8, !tbaa !317
  %111 = trunc i64 %110 to i32
  br i1 %109, label %114, label %112, !prof !455

112:                                              ; preds = %106
  %113 = sub nsw i32 0, %111
  br label %114

114:                                              ; preds = %106, %112
  %115 = phi i32 [ %113, %112 ], [ %111, %106 ]
  %116 = icmp eq i32 %7, 0
  %117 = select i1 %116, i32 32, i32 48
  %118 = tail call ptr @Perl_hv_common_key_len(ptr noundef %107, ptr noundef %108, i32 noundef %115, i32 noundef %117, ptr noundef null, i32 noundef 0) #11
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %121, !prof !456

120:                                              ; preds = %114
  store ptr null, ptr %1, align 8, !tbaa !221
  br label %141

121:                                              ; preds = %114
  %122 = load ptr, ptr %118, align 8, !tbaa !221
  store ptr %122, ptr %1, align 8, !tbaa !221
  %123 = icmp eq ptr %122, null
  %124 = icmp eq ptr %122, @PL_sv_undef
  %125 = or i1 %123, %124
  br i1 %125, label %141, label %126, !prof !457

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.gv, ptr %122, i64 0, i32 2
  %128 = load i32, ptr %127, align 4, !tbaa !235
  %129 = and i32 %128, 255
  %130 = icmp eq i32 %129, 9
  br i1 %130, label %136, label %131, !prof !458

131:                                              ; preds = %126
  %132 = and i32 %7, 2
  %133 = or i32 %132, %6
  %134 = load ptr, ptr %0, align 8, !tbaa !221
  %135 = load i64, ptr %3, align 8, !tbaa !317
  tail call void @Perl_gv_init_pvn(ptr noundef nonnull %122, ptr noundef %134, ptr noundef %108, i64 noundef %135, i32 noundef %133) #13
  br label %141

136:                                              ; preds = %126
  %137 = load ptr, ptr %122, align 8, !tbaa !226
  %138 = getelementptr inbounds %struct.xpvgv, ptr %137, i64 0, i32 2
  %139 = load i64, ptr %138, align 8, !tbaa !259
  %140 = or i64 %139, 2
  store i64 %140, ptr %138, align 8, !tbaa !259
  br label %141

141:                                              ; preds = %120, %131, %136, %121
  %142 = load ptr, ptr %2, align 8, !tbaa !221
  %143 = icmp eq ptr %108, %142
  br i1 %143, label %145, label %144, !prof !455

144:                                              ; preds = %141
  tail call void @Perl_safesysfree(ptr noundef %108) #11
  br label %145

145:                                              ; preds = %144, %141
  %146 = load ptr, ptr %1, align 8, !tbaa !221
  %147 = icmp eq ptr %146, null
  %148 = icmp eq ptr %146, @PL_sv_undef
  %149 = or i1 %147, %148
  br i1 %149, label %269, label %150, !prof !459

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.gv, ptr %146, i64 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !222
  %153 = getelementptr inbounds %struct.gp, ptr %152, i64 0, i32 5
  %154 = load ptr, ptr %153, align 8, !tbaa !242
  store ptr %154, ptr %0, align 8, !tbaa !221
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %218, !prof !460

156:                                              ; preds = %150
  %157 = tail call ptr @Perl_newSV_type(i32 noundef 12) #11
  %158 = load ptr, ptr %1, align 8, !tbaa !221
  %159 = getelementptr inbounds %struct.gv, ptr %158, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !222
  %161 = getelementptr inbounds %struct.gp, ptr %160, i64 0, i32 5
  store ptr %157, ptr %161, align 8, !tbaa !242
  store ptr %157, ptr %0, align 8, !tbaa !221
  %162 = getelementptr inbounds %struct.hv, ptr %157, i64 0, i32 2
  %163 = load i32, ptr %162, align 4, !tbaa !323
  %164 = and i32 %163, 33554432
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %183, label %166, !prof !461

166:                                              ; preds = %156
  %167 = getelementptr inbounds %struct.hv, ptr %157, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !222
  %169 = load ptr, ptr %157, align 8, !tbaa !326
  %170 = getelementptr inbounds %struct.xpvhv, ptr %169, i64 0, i32 3
  %171 = load i64, ptr %170, align 8, !tbaa !327
  %172 = getelementptr ptr, ptr %168, i64 %171
  %173 = getelementptr ptr, ptr %172, i64 1
  %174 = load ptr, ptr %173, align 8, !tbaa !222
  %175 = icmp eq ptr %174, null
  br i1 %175, label %183, label %176

176:                                              ; preds = %166
  %177 = getelementptr i8, ptr %172, i64 36
  %178 = load i32, ptr %177, align 4, !tbaa !329
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %244, label %180

180:                                              ; preds = %176
  %181 = load ptr, ptr %174, align 8, !tbaa !221
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %244

183:                                              ; preds = %156, %166, %180
  %184 = load ptr, ptr %1, align 8, !tbaa !221
  %185 = load ptr, ptr %184, align 8, !tbaa !226
  %186 = getelementptr inbounds %struct.xpvgv, ptr %185, i64 0, i32 5
  %187 = load ptr, ptr %186, align 8, !tbaa !222
  %188 = load ptr, ptr @PL_defstash, align 8, !tbaa !221
  %189 = icmp eq ptr %187, %188
  br i1 %189, label %190, label %198, !prof !462

190:                                              ; preds = %183
  %191 = load i64, ptr %3, align 8, !tbaa !317
  %192 = icmp eq i64 %191, 6
  br i1 %192, label %193, label %198, !prof !463

193:                                              ; preds = %190
  %194 = load ptr, ptr %2, align 8, !tbaa !221
  %195 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %194, ptr noundef nonnull dereferenceable(5) @.str.48, i64 noundef 4) #12
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %198, !prof !464

197:                                              ; preds = %193
  tail call void @Perl_hv_name_set(ptr noundef nonnull %157, ptr noundef nonnull @.str.48, i32 noundef 4, i32 noundef 0) #11
  br label %202

198:                                              ; preds = %193, %190, %183
  %199 = ptrtoint ptr %4 to i64
  %200 = sub i64 %86, %199
  %201 = trunc i64 %200 to i32
  tail call void @Perl_hv_name_set(ptr noundef nonnull %157, ptr noundef %4, i32 noundef %201, i32 noundef %6) #11
  br label %202

202:                                              ; preds = %198, %197
  %203 = load ptr, ptr %1, align 8, !tbaa !221
  %204 = load ptr, ptr %203, align 8, !tbaa !226
  %205 = getelementptr inbounds %struct.xpvgv, ptr %204, i64 0, i32 5
  %206 = load ptr, ptr %205, align 8, !tbaa !222
  %207 = getelementptr inbounds %struct.hv, ptr %206, i64 0, i32 3
  %208 = load ptr, ptr %207, align 8, !tbaa !222
  %209 = load ptr, ptr %206, align 8, !tbaa !326
  %210 = getelementptr inbounds %struct.xpvhv, ptr %209, i64 0, i32 3
  %211 = load i64, ptr %210, align 8, !tbaa !327
  %212 = getelementptr ptr, ptr %208, i64 %211
  %213 = getelementptr i8, ptr %212, i64 36
  %214 = load i32, ptr %213, align 4, !tbaa !329
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %244, label %216, !prof !461

216:                                              ; preds = %202
  %217 = load ptr, ptr %0, align 8, !tbaa !221
  tail call void @Perl_mro_package_moved(ptr noundef %217, ptr noundef null, ptr noundef nonnull %203, i32 noundef 1) #11
  br label %244

218:                                              ; preds = %150
  %219 = getelementptr inbounds %struct.hv, ptr %154, i64 0, i32 2
  %220 = load i32, ptr %219, align 4, !tbaa !323
  %221 = and i32 %220, 33554432
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %240, label %223, !prof !465

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.hv, ptr %154, i64 0, i32 3
  %225 = load ptr, ptr %224, align 8, !tbaa !222
  %226 = load ptr, ptr %154, align 8, !tbaa !326
  %227 = getelementptr inbounds %struct.xpvhv, ptr %226, i64 0, i32 3
  %228 = load i64, ptr %227, align 8, !tbaa !327
  %229 = getelementptr ptr, ptr %225, i64 %228
  %230 = getelementptr ptr, ptr %229, i64 1
  %231 = load ptr, ptr %230, align 8, !tbaa !222
  %232 = icmp eq ptr %231, null
  br i1 %232, label %240, label %233, !prof !465

233:                                              ; preds = %223
  %234 = getelementptr i8, ptr %229, i64 36
  %235 = load i32, ptr %234, align 4, !tbaa !329
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %244, label %237, !prof !466

237:                                              ; preds = %233
  %238 = load ptr, ptr %231, align 8, !tbaa !221
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %244

240:                                              ; preds = %218, %223, %237
  %241 = ptrtoint ptr %4 to i64
  %242 = sub i64 %86, %241
  %243 = trunc i64 %242 to i32
  tail call void @Perl_hv_name_set(ptr noundef nonnull %154, ptr noundef %4, i32 noundef %243, i32 noundef %6) #11
  br label %244

244:                                              ; preds = %233, %237, %176, %180, %240, %216, %202, %84
  %245 = load i8, ptr %65, align 1, !tbaa !222
  %246 = icmp eq i8 %245, 58
  %247 = zext i1 %246 to i64
  %248 = getelementptr inbounds i8, ptr %65, i64 %247
  %249 = getelementptr inbounds i8, ptr %248, i64 1
  store ptr %249, ptr %2, align 8, !tbaa !221
  %250 = icmp eq ptr %249, %9
  br i1 %250, label %251, label %258, !prof !467

251:                                              ; preds = %244
  %252 = load ptr, ptr %1, align 8, !tbaa !221
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %269, !prof !468

254:                                              ; preds = %251
  %255 = load ptr, ptr @PL_defstash, align 8, !tbaa !221
  %256 = tail call ptr @Perl_hv_common(ptr noundef %255, ptr noundef null, ptr noundef nonnull @.str.51, i64 noundef 6, i32 noundef 0, i32 noundef 48, ptr noundef null, i32 noundef 0) #11
  %257 = load ptr, ptr %256, align 8, !tbaa !221
  store ptr %257, ptr %1, align 8, !tbaa !221
  br label %269

258:                                              ; preds = %67, %69, %63, %244
  %259 = phi ptr [ %249, %244 ], [ %64, %63 ], [ %64, %69 ], [ %64, %67 ]
  %260 = phi ptr [ %248, %244 ], [ %65, %63 ], [ %65, %69 ], [ %65, %67 ]
  %261 = getelementptr inbounds i8, ptr %260, i64 1
  %262 = icmp ult ptr %261, %9
  br i1 %262, label %63, label %263, !prof !469, !llvm.loop !470

263:                                              ; preds = %258, %60
  %264 = phi ptr [ %61, %60 ], [ %259, %258 ]
  %265 = phi ptr [ %61, %60 ], [ %261, %258 ]
  %266 = ptrtoint ptr %265 to i64
  %267 = ptrtoint ptr %264 to i64
  %268 = sub i64 %266, %267
  store i64 %268, ptr %3, align 8, !tbaa !317
  br label %269

269:                                              ; preds = %145, %76, %79, %251, %254, %263
  %270 = phi i1 [ true, %263 ], [ true, %254 ], [ true, %251 ], [ false, %79 ], [ false, %76 ], [ false, %145 ]
  ret i1 %270
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i1 @S_find_default_stash(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 !prof !471 !PGOFuncName !472 {
  %7 = tail call fastcc zeroext i1 @S_gv_is_in_main(ptr noundef %1, i64 noundef %2, i32 noundef %3) #13
  br i1 %7, label %8, label %10, !prof !473

8:                                                ; preds = %6
  %9 = load ptr, ptr @PL_defstash, align 8, !tbaa !221
  store ptr %9, ptr %0, align 8, !tbaa !221
  br label %88

10:                                               ; preds = %6
  %11 = load ptr, ptr @PL_curcop, align 8, !tbaa !221
  %12 = icmp eq ptr %11, @PL_compiling
  br i1 %12, label %13, label %83, !prof !474

13:                                               ; preds = %10
  %14 = load ptr, ptr @PL_curstash, align 8, !tbaa !221
  store ptr %14, ptr %0, align 8, !tbaa !221
  %15 = icmp eq i32 %4, 0
  br i1 %15, label %88, label %16, !prof !475

16:                                               ; preds = %13
  %17 = load i32, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !433
  %18 = freeze i32 %17
  %19 = and i32 %18, 1024
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %86, label %21

21:                                               ; preds = %16
  switch i32 %5, label %22 [
    i32 15, label %86
    i32 14, label %86
    i32 13, label %86
    i32 9, label %86
  ]

22:                                               ; preds = %21
  %23 = icmp eq i64 %2, 1
  br i1 %23, label %24, label %30, !prof !476

24:                                               ; preds = %22
  %25 = icmp eq i32 %5, 3
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = load i8, ptr %1, align 1, !tbaa !222
  %28 = add i8 %27, -97
  %29 = icmp ult i8 %28, 2
  br i1 %29, label %86, label %30

30:                                               ; preds = %26, %24, %22
  %31 = icmp ne i32 %3, 0
  %32 = trunc i64 %2 to i32
  br i1 %31, label %33, label %35, !prof !476

33:                                               ; preds = %30
  %34 = sub nsw i32 0, %32
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi i32 [ %34, %33 ], [ %32, %30 ]
  %37 = tail call ptr @Perl_hv_common_key_len(ptr noundef %14, ptr noundef %1, i32 noundef %36, i32 noundef 32, ptr noundef null, i32 noundef 0) #11
  %38 = icmp eq ptr %37, null
  br i1 %38, label %91, label %39, !prof !476

39:                                               ; preds = %35
  %40 = load ptr, ptr %37, align 8, !tbaa !221
  %41 = icmp eq ptr %40, @PL_sv_undef
  br i1 %41, label %91, label %42, !prof !476

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.gv, ptr %40, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !235
  %45 = and i32 %44, 255
  %46 = icmp eq i32 %45, 9
  br i1 %46, label %47, label %91, !prof !477

47:                                               ; preds = %42
  switch i32 %5, label %86 [
    i32 3, label %48
    i32 11, label %54
    i32 12, label %60
  ], !prof !478

48:                                               ; preds = %47
  %49 = load ptr, ptr %40, align 8, !tbaa !226
  %50 = getelementptr inbounds %struct.xpvgv, ptr %49, i64 0, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !259
  %52 = and i64 %51, 16
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %66, label %86, !prof !479

54:                                               ; preds = %47
  %55 = load ptr, ptr %40, align 8, !tbaa !226
  %56 = getelementptr inbounds %struct.xpvgv, ptr %55, i64 0, i32 2
  %57 = load i64, ptr %56, align 8, !tbaa !259
  %58 = and i64 %57, 32
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %66, label %86, !prof !339

60:                                               ; preds = %47
  %61 = load ptr, ptr %40, align 8, !tbaa !226
  %62 = getelementptr inbounds %struct.xpvgv, ptr %61, i64 0, i32 2
  %63 = load i64, ptr %62, align 8, !tbaa !259
  %64 = and i64 %63, 64
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %86, !prof !389

66:                                               ; preds = %60, %54, %48
  %67 = icmp eq i32 %5, 11
  %68 = icmp eq i32 %5, 12
  %69 = select i1 %68, i32 37, i32 36
  %70 = select i1 %67, i32 64, i32 %69
  %71 = zext i1 %31 to i32
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 12, ptr noundef nonnull @.str.52, i32 noundef %70, i32 noundef %71, i64 noundef %2, ptr noundef %1) #11
  %72 = load ptr, ptr %37, align 8, !tbaa !221
  %73 = getelementptr inbounds %struct.gv, ptr %72, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !222
  %75 = getelementptr inbounds %struct.gp, ptr %74, i64 0, i32 3
  %76 = load i32, ptr %75, align 8, !tbaa !273
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %66
  %79 = getelementptr inbounds %struct.gp, ptr %74, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !263
  %81 = icmp eq ptr %80, null
  br i1 %81, label %91, label %82

82:                                               ; preds = %78
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 12, ptr noundef nonnull @.str.53, i32 noundef %71, i64 noundef %2, ptr noundef %1) #11
  br label %91

83:                                               ; preds = %10
  %84 = getelementptr inbounds %struct.cop, ptr %11, i64 0, i32 8
  %85 = load ptr, ptr %84, align 8, !tbaa !384
  store ptr %85, ptr %0, align 8, !tbaa !221
  br label %88

86:                                               ; preds = %21, %21, %21, %21, %16, %47, %60, %26, %48, %54
  %87 = load ptr, ptr %0, align 8, !tbaa !221
  br label %88

88:                                               ; preds = %86, %83, %13, %8
  %89 = phi ptr [ %87, %86 ], [ %85, %83 ], [ %14, %13 ], [ %9, %8 ]
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %114, !prof !247

91:                                               ; preds = %78, %82, %66, %35, %39, %42
  store ptr null, ptr %0, align 8, !tbaa !221
  br label %92

92:                                               ; preds = %91, %88
  %93 = icmp ne i32 %4, 0
  %94 = load i8, ptr @PL_in_clean_all, align 1, !range !394
  %95 = icmp eq i8 %94, 0
  %96 = select i1 %93, i1 %95, i1 false
  br i1 %96, label %97, label %119

97:                                               ; preds = %92
  switch i32 %5, label %99 [
    i32 3, label %98
    i32 11, label %102
  ]

98:                                               ; preds = %97
  br label %102

99:                                               ; preds = %97
  %100 = icmp eq i32 %5, 12
  %101 = select i1 %100, ptr @.str.57, ptr @.str.7
  br label %102

102:                                              ; preds = %97, %98, %99
  %103 = phi ptr [ @.str.55, %98 ], [ %101, %99 ], [ @.str.56, %97 ]
  %104 = icmp ne i32 %3, 0
  %105 = zext i1 %104 to i32
  %106 = tail call ptr (ptr, ...) @Perl_mess(ptr noundef nonnull @.str.54, ptr noundef nonnull %103, i32 noundef %105, i64 noundef %2, ptr noundef %1, ptr noundef nonnull %103, i32 noundef %105, i64 noundef %2, ptr noundef %1) #11
  tail call void @Perl_qerror(ptr noundef %106) #11
  %107 = tail call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.58, i64 noundef 8, i32 noundef 2, i32 noundef 12) #13
  %108 = icmp eq ptr %107, null
  br i1 %108, label %119, label %109

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.gv, ptr %107, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !222
  %112 = getelementptr inbounds %struct.gp, ptr %111, i64 0, i32 5
  %113 = load ptr, ptr %112, align 8, !tbaa !242
  store ptr %113, ptr %0, align 8, !tbaa !221
  br label %114

114:                                              ; preds = %109, %88
  %115 = phi ptr [ %113, %109 ], [ %89, %88 ]
  %116 = getelementptr inbounds %struct.hv, ptr %115, i64 0, i32 1
  %117 = load i32, ptr %116, align 8, !tbaa !452
  %118 = icmp ne i32 %117, 0
  br label %119

119:                                              ; preds = %102, %114, %92
  %120 = phi i1 [ false, %92 ], [ %118, %114 ], [ false, %102 ]
  ret i1 %120
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_gv_init_svtype(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !480 !PGOFuncName !481 {
  switch i32 %1, label %37 [
    i32 15, label %3
    i32 11, label %21
    i32 12, label %29
    i32 0, label %44
    i32 13, label %44
    i32 14, label %44
    i32 9, label %44
  ], !prof !482

3:                                                ; preds = %2
  %4 = icmp eq ptr %0, null
  br i1 %4, label %19, label %5, !prof !483

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !214
  %8 = and i32 %7, 255
  %9 = add nsw i32 %8, -9
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %19, !prof !484

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !222
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15, !prof !485

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gp, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !438
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %44, !prof !485

19:                                               ; preds = %5, %3, %11, %15
  %20 = tail call ptr @Perl_gv_add_by_type(ptr noundef %0, i32 noundef 15) #13
  br label %44

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !222
  %24 = getelementptr inbounds %struct.gp, ptr %23, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !241
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %44, !prof !486

27:                                               ; preds = %21
  %28 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 11) #13
  br label %44

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !222
  %32 = getelementptr inbounds %struct.gp, ptr %31, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !242
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %44, !prof !487

35:                                               ; preds = %29
  %36 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 12) #13
  br label %44

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !222
  %40 = load ptr, ptr %39, align 8, !tbaa !237
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44, !prof !488

42:                                               ; preds = %37
  %43 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 0) #13
  br label %44

44:                                               ; preds = %42, %37, %29, %21, %15, %2, %2, %2, %2, %35, %27, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_maybe_multimagic_gv(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !489 !PGOFuncName !490 {
  switch i32 %2, label %23 [
    i32 12, label %4
    i32 9, label %4
    i32 3, label %10
  ], !prof !491

4:                                                ; preds = %3, %3
  %5 = load i8, ptr %1, align 1, !tbaa !222
  switch i8 %5, label %14 [
    i8 33, label %6
    i8 45, label %8
    i8 43, label %8
  ], !prof !492

6:                                                ; preds = %4
  %7 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.60, i64 noundef 5) #11
  tail call fastcc void @S_require_tie_mod(ptr noundef %0, ptr noundef nonnull @.str.59, ptr noundef %7, ptr noundef nonnull @.str.61, i32 noundef 1) #13
  br label %14

8:                                                ; preds = %4, %4
  %9 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.62, i64 noundef 23) #11
  tail call fastcc void @S_require_tie_mod(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %9, ptr noundef nonnull @.str.61, i32 noundef 0) #13
  br label %14

10:                                               ; preds = %3
  %11 = load i8, ptr %1, align 1, !tbaa !222
  switch i8 %11, label %18 [
    i8 42, label %12
    i8 35, label %12
  ], !prof !493

12:                                               ; preds = %10, %10
  %13 = zext nneg i8 %11 to i32
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 7170, ptr noundef nonnull @.str.63, i32 noundef %13) #11
  br label %16

14:                                               ; preds = %4, %6, %8
  %15 = icmp eq i32 %2, 9
  br i1 %15, label %16, label %23

16:                                               ; preds = %14, %12
  %17 = load i8, ptr %1, align 1, !tbaa !222
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi i8 [ %17, %16 ], [ %11, %10 ]
  %20 = icmp eq i8 %19, 91
  br i1 %20, label %21, label %23, !prof !369

21:                                               ; preds = %18
  %22 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.64, i64 noundef 7) #11
  tail call fastcc void @S_require_tie_mod(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %22, ptr noundef nonnull @.str.65, i32 noundef 0) #13
  br label %23

23:                                               ; preds = %14, %3, %21, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_gv_magicalize_isa(ptr noundef %0) unnamed_addr #0 !prof !494 !PGOFuncName !495 {
  %2 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !222
  %4 = getelementptr inbounds %struct.gp, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !241
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12, !prof !496

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 11) #13
  %9 = load ptr, ptr %2, align 8, !tbaa !222
  %10 = getelementptr inbounds %struct.gp, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !241
  br label %12

12:                                               ; preds = %1, %7
  %13 = phi ptr [ %11, %7 ], [ %5, %1 ]
  %14 = load ptr, ptr %0, align 8, !tbaa !226
  %15 = getelementptr inbounds %struct.xpvgv, ptr %14, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !259
  %17 = or i64 %16, 2
  store i64 %17, ptr %15, align 8, !tbaa !259
  tail call void @Perl_sv_magic(ptr noundef %13, ptr noundef nonnull %0, i32 noundef 73, ptr noundef null, i32 noundef 0) #11
  ret void
}

; Function Attrs: optsize
declare zeroext i1 @Perl__is_utf8_perl_idstart(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @S_gv_magicalize(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4, i32 noundef %5) unnamed_addr #0 !prof !497 !PGOFuncName !498 {
  %7 = alloca i64, align 8
  %8 = load ptr, ptr @PL_defstash, align 8, !tbaa !221
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %83, label %10, !prof !499

10:                                               ; preds = %6
  %11 = icmp eq i64 %3, 0
  br i1 %11, label %455, label %12, !prof !500

12:                                               ; preds = %10
  %13 = getelementptr inbounds i8, ptr %2, i64 1
  %14 = load i8, ptr %2, align 1, !tbaa !222
  switch i8 %14, label %44 [
    i8 69, label %15
    i8 73, label %23
    i8 86, label %27
    i8 97, label %35
    i8 98, label %35
  ], !prof !501

15:                                               ; preds = %12
  %16 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(6) @.str.68, i64 noundef 5) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %455, !prof !502

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !226
  %20 = getelementptr inbounds %struct.xpvgv, ptr %19, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !259
  %22 = or i64 %21, 2
  store i64 %22, ptr %20, align 8, !tbaa !259
  br label %455

23:                                               ; preds = %12
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(3) @.str.69) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %455, !prof !503

26:                                               ; preds = %23
  tail call fastcc void @S_gv_magicalize_isa(ptr noundef %0) #13
  br label %455

27:                                               ; preds = %12
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(7) @.str.70) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %455, !prof !504

30:                                               ; preds = %27
  %31 = load ptr, ptr %0, align 8, !tbaa !226
  %32 = getelementptr inbounds %struct.xpvgv, ptr %31, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !259
  %34 = or i64 %33, 2
  store i64 %34, ptr %32, align 8, !tbaa !259
  br label %455

35:                                               ; preds = %12, %12
  %36 = icmp eq i64 %3, 1
  %37 = icmp eq i32 %5, 3
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %44, !prof !505

39:                                               ; preds = %35
  %40 = load ptr, ptr %0, align 8, !tbaa !226
  %41 = getelementptr inbounds %struct.xpvgv, ptr %40, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !259
  %43 = or i64 %42, 2
  store i64 %43, ptr %41, align 8, !tbaa !259
  br label %455

44:                                               ; preds = %35, %12
  %45 = icmp eq i64 %3, 1
  br i1 %45, label %455, label %46, !prof !506

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !323
  %49 = and i32 %48, 33554432
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %455, label %51, !prof !507

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !222
  %54 = load ptr, ptr %1, align 8, !tbaa !326
  %55 = getelementptr inbounds %struct.xpvhv, ptr %54, i64 0, i32 3
  %56 = load i64, ptr %55, align 8, !tbaa !327
  %57 = getelementptr ptr, ptr %53, i64 %56
  %58 = getelementptr ptr, ptr %57, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !222
  %60 = icmp eq ptr %59, null
  br i1 %60, label %455, label %61, !prof !507

61:                                               ; preds = %51
  %62 = getelementptr i8, ptr %57, i64 36
  %63 = load i32, ptr %62, align 4, !tbaa !329
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65, !prof !508

65:                                               ; preds = %61
  %66 = load ptr, ptr %59, align 8, !tbaa !222
  %67 = icmp eq ptr %66, null
  br i1 %67, label %455, label %72

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.hek, ptr %59, i64 0, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !228
  %71 = icmp eq i32 %70, 4
  br i1 %71, label %76, label %455, !prof !509

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.hek, ptr %66, i64 0, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !228
  %75 = icmp eq i32 %74, 4
  br i1 %75, label %76, label %455, !prof !509

76:                                               ; preds = %72, %68
  %77 = phi ptr [ %59, %68 ], [ %66, %72 ]
  %78 = getelementptr inbounds %struct.hek, ptr %77, i64 0, i32 2
  %79 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %78, ptr noundef nonnull dereferenceable(5) @.str.48, i64 noundef 4) #12
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %455, !prof !510

81:                                               ; preds = %76
  %82 = tail call fastcc ptr @S_maybe_add_coresub(ptr noundef null, ptr noundef %0, ptr noundef nonnull %2, i64 noundef %3) #13
  br label %455

83:                                               ; preds = %6
  %84 = icmp ugt i64 %3, 1
  %85 = load i8, ptr %2, align 1, !tbaa !222
  br i1 %84, label %86, label %240, !prof !511

86:                                               ; preds = %83
  %87 = icmp sgt i8 %85, 86
  br i1 %87, label %455, label %88, !prof !512

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
  ], !prof !513

90:                                               ; preds = %88
  %91 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(4) @.str.71) #12
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %121, !prof !262

93:                                               ; preds = %90
  %94 = icmp eq ptr %0, null
  br i1 %94, label %109, label %95, !prof !310

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %97 = load i32, ptr %96, align 4, !tbaa !214
  %98 = and i32 %97, 255
  %99 = add nsw i32 %98, -9
  %100 = icmp ult i32 %99, 2
  br i1 %100, label %101, label %109, !prof !514

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !222
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105, !prof !262

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.gp, ptr %103, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !438
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %115, !prof !262

109:                                              ; preds = %95, %93, %101, %105
  %110 = tail call ptr @Perl_gv_add_by_type(ptr noundef %0, i32 noundef 15) #13
  %111 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !222
  %113 = getelementptr inbounds %struct.gp, ptr %112, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !438
  br label %115

115:                                              ; preds = %105, %109
  %116 = phi ptr [ %114, %109 ], [ %107, %105 ]
  %117 = load ptr, ptr %116, align 8, !tbaa !515
  %118 = getelementptr inbounds %struct.xpvio, ptr %117, i64 0, i32 17
  %119 = load i8, ptr %118, align 1, !tbaa !517
  %120 = or i8 %119, 3
  store i8 %120, ptr %118, align 1, !tbaa !517
  br label %455

121:                                              ; preds = %90
  %122 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(7) @.str.72) #12
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %455

124:                                              ; preds = %121
  %125 = load ptr, ptr %0, align 8, !tbaa !226
  %126 = getelementptr inbounds %struct.xpvgv, ptr %125, i64 0, i32 2
  %127 = load i64, ptr %126, align 8, !tbaa !259
  %128 = or i64 %127, 2
  store i64 %128, ptr %126, align 8, !tbaa !259
  br label %455

129:                                              ; preds = %88
  %130 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(6) @.str.68, i64 noundef 5) #12
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %455, !prof !310

132:                                              ; preds = %129
  %133 = load ptr, ptr %0, align 8, !tbaa !226
  %134 = getelementptr inbounds %struct.xpvgv, ptr %133, i64 0, i32 2
  %135 = load i64, ptr %134, align 8, !tbaa !259
  %136 = or i64 %135, 2
  store i64 %136, ptr %134, align 8, !tbaa !259
  br label %455

137:                                              ; preds = %88
  %138 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(3) @.str.69) #12
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %455, !prof !310

140:                                              ; preds = %137
  tail call fastcc void @S_gv_magicalize_isa(ptr noundef %0) #13
  br label %455

141:                                              ; preds = %88
  %142 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(3) @.str.73) #12
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %455, !prof !519

144:                                              ; preds = %141
  %145 = load ptr, ptr @PL_psig_name, align 8, !tbaa !221
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %152, !prof !262

147:                                              ; preds = %144
  %148 = tail call ptr @Perl_safesyscalloc(i64 noundef 32, i64 noundef 8) #11
  store ptr %148, ptr @PL_psig_name, align 8, !tbaa !221
  %149 = tail call ptr @Perl_safesyscalloc(i64 noundef 16, i64 noundef 4) #11
  store ptr %149, ptr @PL_psig_pend, align 8, !tbaa !221
  %150 = load ptr, ptr @PL_psig_name, align 8, !tbaa !221
  %151 = getelementptr inbounds ptr, ptr %150, i64 16
  store ptr %151, ptr @PL_psig_ptr, align 8, !tbaa !221
  br label %154

152:                                              ; preds = %144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %145, i8 0, i64 256, i1 false)
  %153 = load ptr, ptr @PL_psig_pend, align 8, !tbaa !221
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %153, i8 0, i64 64, i1 false)
  br label %154

154:                                              ; preds = %152, %147
  %155 = load ptr, ptr %0, align 8, !tbaa !226
  %156 = getelementptr inbounds %struct.xpvgv, ptr %155, i64 0, i32 2
  %157 = load i64, ptr %156, align 8, !tbaa !259
  %158 = or i64 %157, 2
  store i64 %158, ptr %156, align 8, !tbaa !259
  %159 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !222
  %161 = getelementptr inbounds %struct.gp, ptr %160, i64 0, i32 5
  %162 = load ptr, ptr %161, align 8, !tbaa !242
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %169, !prof !262

164:                                              ; preds = %154
  %165 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 12) #13
  %166 = load ptr, ptr %159, align 8, !tbaa !222
  %167 = getelementptr inbounds %struct.gp, ptr %166, i64 0, i32 5
  %168 = load ptr, ptr %167, align 8, !tbaa !242
  br label %169

169:                                              ; preds = %154, %164
  %170 = phi ptr [ %168, %164 ], [ %162, %154 ]
  tail call void @Perl_sv_magic(ptr noundef %170, ptr noundef null, i32 noundef 83, ptr noundef null, i32 noundef 0) #11
  br label %171

171:                                              ; preds = %169, %181
  %172 = phi i64 [ 1, %169 ], [ %182, %181 ]
  %173 = getelementptr inbounds [0 x ptr], ptr @PL_sig_name, i64 0, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !221
  %175 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %174) #12
  %176 = trunc i64 %175 to i32
  %177 = tail call ptr @Perl_hv_common_key_len(ptr noundef %170, ptr noundef %174, i32 noundef %176, i32 noundef 48, ptr noundef null, i32 noundef 0) #11
  %178 = icmp eq ptr %177, null
  br i1 %178, label %181, label %179, !prof !520

179:                                              ; preds = %171
  %180 = load ptr, ptr %177, align 8, !tbaa !221
  tail call void @Perl_sv_setsv_flags(ptr noundef %180, ptr noundef nonnull @PL_sv_undef, i32 noundef 1538) #11
  br label %181

181:                                              ; preds = %179, %171
  %182 = add nuw nsw i64 %172, 1
  %183 = icmp eq i64 %182, 16
  br i1 %183, label %455, label %171, !prof !521, !llvm.loop !522

184:                                              ; preds = %88
  %185 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(7) @.str.70) #12
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %455, !prof !262

187:                                              ; preds = %184
  %188 = load ptr, ptr %0, align 8, !tbaa !226
  %189 = getelementptr inbounds %struct.xpvgv, ptr %188, i64 0, i32 2
  %190 = load i64, ptr %189, align 8, !tbaa !259
  %191 = or i64 %190, 2
  store i64 %191, ptr %189, align 8, !tbaa !259
  br label %455

192:                                              ; preds = %88
  %193 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(18) @.str.74) #12
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %384, label %455

195:                                              ; preds = %88
  %196 = load i8, ptr %89, align 1, !tbaa !222
  %197 = icmp eq i8 %196, 95
  %198 = getelementptr inbounds i8, ptr %2, i64 2
  %199 = select i1 %197, ptr %198, ptr %89
  %200 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %199, ptr noundef nonnull dereferenceable(8) @.str.75) #12
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %384, label %455

202:                                              ; preds = %88
  %203 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(12) @.str.76) #12
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %370, label %455

205:                                              ; preds = %88
  %206 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(7) @.str.77) #12
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %370, label %455

208:                                              ; preds = %88
  %209 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(5) @.str.78) #12
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %246, label %455

211:                                              ; preds = %88
  %212 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(4) @.str.79) #12
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %384, label %455

214:                                              ; preds = %88
  %215 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(8) @.str.80) #12
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %246, label %217

217:                                              ; preds = %214
  %218 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(9) @.str.81) #12
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %246, label %455

220:                                              ; preds = %88
  %221 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(5) @.str.82) #12
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %370, label %455, !prof !262

223:                                              ; preds = %88
  %224 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(7) @.str.83) #12
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %370, label %226

226:                                              ; preds = %223
  %227 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(10) @.str.84) #12
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %370, label %229

229:                                              ; preds = %226
  %230 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(9) @.str.85) #12
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %384, label %455

232:                                              ; preds = %88
  %233 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %89, ptr noundef nonnull dereferenceable(12) @.str.86) #12
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %384, label %455, !prof !262

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
  ], !prof !523

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
  %249 = load ptr, ptr %248, align 8, !tbaa !222
  %250 = load ptr, ptr %249, align 8, !tbaa !221
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %256, !prof !524

252:                                              ; preds = %246
  %253 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 0) #13
  %254 = load ptr, ptr %248, align 8, !tbaa !222
  %255 = load ptr, ptr %254, align 8, !tbaa !221
  br label %256

256:                                              ; preds = %246, %252
  %257 = phi ptr [ %255, %252 ], [ %250, %246 ]
  %258 = trunc i64 %247 to i32
  call void @Perl_sv_magic(ptr noundef %257, ptr noundef nonnull %0, i32 noundef 0, ptr noundef null, i32 noundef %258) #11
  br label %455

259:                                              ; preds = %240
  %260 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %261 = load ptr, ptr %260, align 8, !tbaa !222
  %262 = load ptr, ptr %261, align 8, !tbaa !221
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %268, !prof !262

264:                                              ; preds = %259
  %265 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 0) #13
  %266 = load ptr, ptr %260, align 8, !tbaa !222
  %267 = load ptr, ptr %266, align 8, !tbaa !221
  br label %268

268:                                              ; preds = %259, %264
  %269 = phi ptr [ %267, %264 ], [ %262, %259 ]
  %270 = load ptr, ptr @PL_chopset, align 8, !tbaa !221
  tail call void @Perl_sv_setpv(ptr noundef %269, ptr noundef %270) #11
  br label %384

271:                                              ; preds = %240
  %272 = load ptr, ptr %0, align 8, !tbaa !226
  %273 = getelementptr inbounds %struct.xpvgv, ptr %272, i64 0, i32 2
  %274 = load i64, ptr %273, align 8, !tbaa !259
  %275 = or i64 %274, 2
  store i64 %275, ptr %273, align 8, !tbaa !259
  %276 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %277 = load ptr, ptr %276, align 8, !tbaa !222
  %278 = load ptr, ptr %277, align 8, !tbaa !221
  %279 = icmp eq ptr %278, null
  br i1 %279, label %280, label %284, !prof !262

280:                                              ; preds = %271
  %281 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 0) #13
  %282 = load ptr, ptr %276, align 8, !tbaa !222
  %283 = load ptr, ptr %282, align 8, !tbaa !221
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
  %288 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.60, i64 noundef 5) #11
  tail call fastcc void @S_require_tie_mod(ptr noundef nonnull %0, ptr noundef nonnull @.str.59, ptr noundef %288, ptr noundef nonnull @.str.61, i32 noundef 1) #13
  br label %455

289:                                              ; preds = %240, %240
  %290 = load ptr, ptr %0, align 8, !tbaa !226
  %291 = getelementptr inbounds %struct.xpvgv, ptr %290, i64 0, i32 2
  %292 = load i64, ptr %291, align 8, !tbaa !259
  %293 = or i64 %292, 2
  store i64 %293, ptr %291, align 8, !tbaa !259
  %294 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %295 = load ptr, ptr %294, align 8, !tbaa !222
  %296 = getelementptr inbounds %struct.gp, ptr %295, i64 0, i32 6
  %297 = load ptr, ptr %296, align 8, !tbaa !241
  %298 = icmp eq ptr %297, null
  br i1 %298, label %299, label %304, !prof !525

299:                                              ; preds = %289
  %300 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 11) #13
  %301 = load ptr, ptr %294, align 8, !tbaa !222
  %302 = getelementptr inbounds %struct.gp, ptr %301, i64 0, i32 6
  %303 = load ptr, ptr %302, align 8, !tbaa !241
  br label %304

304:                                              ; preds = %289, %299
  %305 = phi ptr [ %303, %299 ], [ %297, %289 ]
  %306 = load i8, ptr %2, align 1, !tbaa !222
  %307 = icmp eq i8 %306, 43
  %308 = select i1 %307, ptr %305, ptr null, !prof !526
  tail call void @Perl_sv_magic(ptr noundef %305, ptr noundef %308, i32 noundef 68, ptr noundef null, i32 noundef 0) #11
  %309 = load ptr, ptr %294, align 8, !tbaa !222
  %310 = load ptr, ptr %309, align 8, !tbaa !221
  %311 = icmp eq ptr %310, null
  br i1 %311, label %312, label %316, !prof !525

312:                                              ; preds = %304
  %313 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 0) #13
  %314 = load ptr, ptr %294, align 8, !tbaa !222
  %315 = load ptr, ptr %314, align 8, !tbaa !221
  br label %316

316:                                              ; preds = %304, %312
  %317 = phi ptr [ %315, %312 ], [ %310, %304 ]
  %318 = trunc i64 %3 to i32
  tail call void @Perl_sv_magic(ptr noundef %317, ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %2, i32 noundef %318) #11
  %319 = icmp eq ptr %308, null
  br i1 %319, label %333, label %320, !prof !526

320:                                              ; preds = %316
  %321 = load ptr, ptr %294, align 8, !tbaa !222
  %322 = load ptr, ptr %321, align 8, !tbaa !221
  %323 = icmp eq ptr %322, null
  br i1 %323, label %324, label %328, !prof !310

324:                                              ; preds = %320
  %325 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 0) #13
  %326 = load ptr, ptr %294, align 8, !tbaa !222
  %327 = load ptr, ptr %326, align 8, !tbaa !221
  br label %328

328:                                              ; preds = %320, %324
  %329 = phi ptr [ %327, %324 ], [ %322, %320 ]
  %330 = getelementptr inbounds %struct.sv, ptr %329, i64 0, i32 2
  %331 = load i32, ptr %330, align 4, !tbaa !214
  %332 = or i32 %331, 134217728
  store i32 %332, ptr %330, align 4, !tbaa !214
  br label %333

333:                                              ; preds = %328, %316
  %334 = getelementptr inbounds %struct.av, ptr %305, i64 0, i32 2
  %335 = load i32, ptr %334, align 4, !tbaa !428
  %336 = or i32 %335, 134217728
  store i32 %336, ptr %334, align 4, !tbaa !428
  switch i32 %5, label %455 [
    i32 12, label %337
    i32 9, label %337
  ]

337:                                              ; preds = %333, %333
  %338 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.62, i64 noundef 23) #11
  tail call fastcc void @S_require_tie_mod(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef %338, ptr noundef nonnull @.str.61, i32 noundef 0) #13
  br label %455

339:                                              ; preds = %240, %240
  %340 = icmp eq i32 %5, 3
  br i1 %340, label %341, label %455

341:                                              ; preds = %339
  %342 = zext nneg i8 %85 to i32
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 7170, ptr noundef nonnull @.str.63, i32 noundef %342) #11
  br label %455

343:                                              ; preds = %240
  %344 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %345 = load ptr, ptr %344, align 8, !tbaa !222
  %346 = getelementptr inbounds %struct.gp, ptr %345, i64 0, i32 5
  %347 = load ptr, ptr %346, align 8, !tbaa !242
  %348 = icmp eq ptr %347, null
  br i1 %348, label %349, label %354, !prof !262

349:                                              ; preds = %343
  %350 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 12) #13
  %351 = load ptr, ptr %344, align 8, !tbaa !222
  %352 = getelementptr inbounds %struct.gp, ptr %351, i64 0, i32 5
  %353 = load ptr, ptr %352, align 8, !tbaa !242
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
  %358 = load ptr, ptr @PL_curcop, align 8, !tbaa !221
  %359 = getelementptr %struct.cop, ptr %358, i64 0, i32 10
  %360 = load i32, ptr %359, align 8, !tbaa !433
  %361 = and i32 %360, 469762048
  %362 = icmp ult i32 %361, 201326592
  br i1 %362, label %368, label %363, !prof !262

363:                                              ; preds = %357
  %364 = and i32 %360, 469893120
  %365 = icmp eq i32 %364, 469893120
  br i1 %365, label %366, label %384

366:                                              ; preds = %363
  %367 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.64, i64 noundef 7) #11
  br i1 %367, label %368, label %384

368:                                              ; preds = %366, %357
  %369 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.64, i64 noundef 7) #11
  tail call fastcc void @S_require_tie_mod(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %369, ptr noundef nonnull @.str.65, i32 noundef 0) #13
  br label %455

370:                                              ; preds = %226, %223, %220, %205, %202, %240
  %371 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %372 = load ptr, ptr %371, align 8, !tbaa !222
  %373 = load ptr, ptr %372, align 8, !tbaa !221
  %374 = icmp eq ptr %373, null
  br i1 %374, label %375, label %379, !prof !262

375:                                              ; preds = %370
  %376 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 0) #13
  %377 = load ptr, ptr %371, align 8, !tbaa !222
  %378 = load ptr, ptr %377, align 8, !tbaa !221
  br label %379

379:                                              ; preds = %370, %375
  %380 = phi ptr [ %378, %375 ], [ %373, %370 ]
  %381 = getelementptr inbounds %struct.sv, ptr %380, i64 0, i32 2
  %382 = load i32, ptr %381, align 4, !tbaa !214
  %383 = or i32 %382, 134217728
  store i32 %383, ptr %381, align 4, !tbaa !214
  br label %384

384:                                              ; preds = %232, %229, %211, %195, %192, %356, %379, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %240, %363, %366, %240, %354, %268
  %385 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %386 = load ptr, ptr %385, align 8, !tbaa !222
  %387 = load ptr, ptr %386, align 8, !tbaa !221
  %388 = icmp eq ptr %387, null
  br i1 %388, label %389, label %393, !prof !231

389:                                              ; preds = %384
  %390 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 0) #13
  %391 = load ptr, ptr %385, align 8, !tbaa !222
  %392 = load ptr, ptr %391, align 8, !tbaa !221
  br label %393

393:                                              ; preds = %384, %389
  %394 = phi ptr [ %392, %389 ], [ %387, %384 ]
  %395 = trunc i64 %3 to i32
  tail call void @Perl_sv_magic(ptr noundef %394, ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %2, i32 noundef %395) #11
  br label %455

396:                                              ; preds = %240
  %397 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %398 = load ptr, ptr %397, align 8, !tbaa !222
  %399 = load ptr, ptr %398, align 8, !tbaa !221
  %400 = icmp eq ptr %399, null
  br i1 %400, label %401, label %405, !prof !262

401:                                              ; preds = %396
  %402 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 0) #13
  %403 = load ptr, ptr %397, align 8, !tbaa !222
  %404 = load ptr, ptr %403, align 8, !tbaa !221
  br label %405

405:                                              ; preds = %396, %401
  %406 = phi ptr [ %404, %401 ], [ %399, %396 ]
  tail call void @Perl_sv_setpvn(ptr noundef %406, ptr noundef nonnull @.str.87, i64 noundef 1) #11
  br label %455

407:                                              ; preds = %240
  %408 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %409 = load ptr, ptr %408, align 8, !tbaa !222
  %410 = load ptr, ptr %409, align 8, !tbaa !221
  %411 = icmp eq ptr %410, null
  br i1 %411, label %412, label %416

412:                                              ; preds = %407
  %413 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 0) #13
  %414 = load ptr, ptr %408, align 8, !tbaa !222
  %415 = load ptr, ptr %414, align 8, !tbaa !221
  br label %416

416:                                              ; preds = %407, %412
  %417 = phi ptr [ %415, %412 ], [ %410, %407 ]
  tail call void @Perl_sv_setpvn(ptr noundef %417, ptr noundef nonnull @.str.88, i64 noundef 1) #11
  br label %455

418:                                              ; preds = %240
  %419 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %420 = load ptr, ptr %419, align 8, !tbaa !222
  %421 = load ptr, ptr %420, align 8, !tbaa !237
  %422 = load ptr, ptr @PL_patchlevel, align 8, !tbaa !221
  %423 = tail call zeroext i1 @Perl_sv_derived_from(ptr noundef %422, ptr noundef nonnull @.str.89) #11
  br i1 %423, label %427, label %424, !prof !262

424:                                              ; preds = %418
  %425 = load ptr, ptr @PL_patchlevel, align 8, !tbaa !221
  %426 = tail call ptr @Perl_upg_version(ptr noundef %425, i1 noundef zeroext true) #11
  br label %427

427:                                              ; preds = %424, %418
  %428 = load ptr, ptr @PL_patchlevel, align 8, !tbaa !221
  %429 = tail call ptr @Perl_vnumify(ptr noundef %428) #11
  %430 = load ptr, ptr %419, align 8, !tbaa !222
  store ptr %429, ptr %430, align 8, !tbaa !237
  %431 = load ptr, ptr %419, align 8, !tbaa !222
  %432 = load ptr, ptr %431, align 8, !tbaa !237
  %433 = getelementptr inbounds %struct.sv, ptr %432, i64 0, i32 2
  %434 = load i32, ptr %433, align 4, !tbaa !214
  %435 = or i32 %434, 134217728
  store i32 %435, ptr %433, align 4, !tbaa !214
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %421) #13
  br label %455

436:                                              ; preds = %240
  %437 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %438 = load ptr, ptr %437, align 8, !tbaa !222
  %439 = load ptr, ptr %438, align 8, !tbaa !237
  %440 = load ptr, ptr @PL_patchlevel, align 8, !tbaa !221
  %441 = tail call ptr @Perl_new_version(ptr noundef %440) #11
  %442 = load ptr, ptr %437, align 8, !tbaa !222
  store ptr %441, ptr %442, align 8, !tbaa !237
  %443 = load ptr, ptr %437, align 8, !tbaa !222
  %444 = load ptr, ptr %443, align 8, !tbaa !237
  %445 = getelementptr inbounds %struct.sv, ptr %444, i64 0, i32 2
  %446 = load i32, ptr %445, align 4, !tbaa !214
  %447 = or i32 %446, 134217728
  store i32 %447, ptr %445, align 4, !tbaa !214
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %439) #13
  br label %455

448:                                              ; preds = %240, %240
  %449 = icmp eq i32 %5, 3
  br i1 %449, label %450, label %455, !prof !525

450:                                              ; preds = %448
  %451 = load ptr, ptr %0, align 8, !tbaa !226
  %452 = getelementptr inbounds %struct.xpvgv, ptr %451, i64 0, i32 2
  %453 = load i64, ptr %452, align 8, !tbaa !259
  %454 = or i64 %453, 2
  store i64 %454, ptr %452, align 8, !tbaa !259
  br label %455

455:                                              ; preds = %181, %88, %121, %124, %115, %132, %129, %140, %137, %141, %187, %184, %192, %195, %202, %205, %208, %211, %217, %220, %229, %232, %10, %39, %235, %72, %68, %44, %256, %368, %393, %405, %416, %427, %436, %240, %287, %341, %339, %450, %448, %86, %81, %76, %284, %333, %337, %46, %51, %65, %27, %30, %23, %26, %15, %18
  %456 = phi i1 [ %4, %18 ], [ %4, %15 ], [ %4, %26 ], [ %4, %23 ], [ %4, %30 ], [ %4, %27 ], [ %4, %68 ], [ %4, %44 ], [ %4, %86 ], [ %4, %393 ], [ %4, %256 ], [ %4, %240 ], [ %4, %450 ], [ %4, %448 ], [ %4, %436 ], [ %4, %427 ], [ %4, %416 ], [ %4, %405 ], [ false, %368 ], [ %4, %341 ], [ %4, %339 ], [ false, %287 ], [ %4, %284 ], [ %4, %81 ], [ %4, %76 ], [ false, %337 ], [ %4, %333 ], [ %4, %46 ], [ %4, %51 ], [ %4, %65 ], [ %4, %72 ], [ %4, %235 ], [ %4, %39 ], [ %4, %10 ], [ %4, %232 ], [ %4, %229 ], [ %4, %220 ], [ %4, %217 ], [ %4, %211 ], [ %4, %208 ], [ %4, %205 ], [ %4, %202 ], [ %4, %195 ], [ %4, %192 ], [ %4, %184 ], [ %4, %187 ], [ %4, %141 ], [ %4, %137 ], [ %4, %140 ], [ %4, %129 ], [ %4, %132 ], [ %4, %115 ], [ %4, %124 ], [ %4, %121 ], [ %4, %88 ], [ %4, %181 ]
  ret i1 %456
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_gv_fullname4(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 !prof !527 {
  %5 = load ptr, ptr %1, align 8, !tbaa !226
  %6 = getelementptr inbounds %struct.xpvgv, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !222
  %8 = icmp eq ptr %2, null
  %9 = select i1 %8, ptr @.str.7, ptr %2, !prof !528
  tail call void @Perl_sv_setpv(ptr noundef %0, ptr noundef nonnull %9) #11
  %10 = icmp eq ptr %7, null
  br i1 %10, label %69, label %11, !prof !529

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !323
  %14 = and i32 %13, 33554432
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %69, label %16, !prof !529

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !222
  %19 = load ptr, ptr %7, align 8, !tbaa !326
  %20 = getelementptr inbounds %struct.xpvhv, ptr %19, i64 0, i32 3
  %21 = load i64, ptr %20, align 8, !tbaa !327
  %22 = getelementptr ptr, ptr %18, i64 %21
  %23 = getelementptr ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !222
  %25 = icmp eq ptr %24, null
  br i1 %25, label %69, label %26, !prof !529

26:                                               ; preds = %16
  %27 = getelementptr i8, ptr %22, i64 36
  %28 = load i32, ptr %27, align 4, !tbaa !329
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32, !prof !528

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.hek, ptr %24, i64 0, i32 2
  br label %39

32:                                               ; preds = %26
  %33 = load ptr, ptr %24, align 8, !tbaa !222
  %34 = icmp eq ptr %33, null
  br i1 %34, label %69, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.hek, ptr %33, i64 0, i32 2
  %37 = load ptr, ptr %24, align 8, !tbaa !222
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %30, %35
  %40 = phi ptr [ %36, %35 ], [ %31, %30 ]
  %41 = phi ptr [ %37, %35 ], [ %24, %30 ]
  %42 = getelementptr inbounds %struct.hek, ptr %41, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !228
  %44 = sext i32 %43 to i64
  br label %45

45:                                               ; preds = %35, %39
  %46 = phi ptr [ %40, %39 ], [ %36, %35 ]
  %47 = phi i64 [ %44, %39 ], [ 0, %35 ]
  br i1 %3, label %51, label %48, !prof !528

48:                                               ; preds = %45
  %49 = tail call i32 @strncmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.21, i64 noundef %47) #12
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %70, label %51

51:                                               ; preds = %48, %45
  br i1 %29, label %55, label %52, !prof !528

52:                                               ; preds = %51
  %53 = load ptr, ptr %24, align 8, !tbaa !222
  %54 = icmp eq ptr %53, null
  br i1 %54, label %67, label %55

55:                                               ; preds = %52, %51
  %56 = phi ptr [ %24, %51 ], [ %53, %52 ]
  %57 = getelementptr inbounds %struct.hek, ptr %56, i64 0, i32 2
  %58 = getelementptr inbounds %struct.hek, ptr %56, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !228
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %57, i64 %60
  %62 = getelementptr inbounds i8, ptr %61, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !222
  %64 = and i8 %63, 1
  %65 = icmp eq i8 %64, 0
  %66 = select i1 %65, i32 16384, i32 32768
  br label %67

67:                                               ; preds = %52, %55
  %68 = phi i32 [ %66, %55 ], [ 16384, %52 ]
  tail call void @Perl_sv_catpvn_flags(ptr noundef %0, ptr noundef nonnull %46, i64 noundef %47, i32 noundef %68) #11
  tail call void @Perl_sv_catpvn_flags(ptr noundef %0, ptr noundef nonnull @.str.19, i64 noundef 2, i32 noundef 2) #11
  br label %70

69:                                               ; preds = %11, %16, %32, %4
  tail call void @Perl_sv_catpvn_flags(ptr noundef %0, ptr noundef nonnull @.str.22, i64 noundef 10, i32 noundef 2) #11
  br label %70

70:                                               ; preds = %48, %67, %69
  %71 = load ptr, ptr %1, align 8, !tbaa !226
  %72 = getelementptr inbounds %struct.xpvgv, ptr %71, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !222
  %74 = tail call ptr @Perl_newSVhek(ptr noundef %73) #11
  %75 = tail call ptr @Perl_sv_2mortal(ptr noundef %74) #11
  tail call void @Perl_sv_catsv_flags(ptr noundef %0, ptr noundef %75, i32 noundef 2) #11
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_setpv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_gv_efullname4(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 !prof !527 {
  %5 = getelementptr inbounds %struct.gv, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !235
  %7 = and i32 %6, 49152
  %8 = icmp eq i32 %7, 32768
  br i1 %8, label %9, label %18, !prof !528

9:                                                ; preds = %4
  %10 = and i32 %6, 255
  %11 = add nsw i32 %10, -9
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %13, label %18, !prof !530

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gv, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !222
  %16 = getelementptr inbounds %struct.gp, ptr %15, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !274
  br label %18

18:                                               ; preds = %9, %4, %13
  %19 = phi ptr [ %17, %13 ], [ null, %4 ], [ null, %9 ]
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr %1, ptr %19, !prof !529
  tail call void @Perl_gv_fullname4(ptr noundef %0, ptr noundef %21, ptr noundef %2, i1 noundef zeroext %3) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_gv_check(ptr noundef readonly %0) local_unnamed_addr #0 !prof !531 {
  %2 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !222
  %4 = icmp eq ptr %3, null
  br i1 %4, label %205, label %5, !prof !532

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !326
  %7 = getelementptr inbounds %struct.xpvhv, ptr %6, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !327
  %9 = and i64 %8, 2147483648
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %205, !prof !533

11:                                               ; preds = %5, %192
  %12 = phi ptr [ %193, %192 ], [ %6, %5 ]
  %13 = phi i64 [ %201, %192 ], [ 0, %5 ]
  %14 = phi i64 [ %196, %192 ], [ %8, %5 ]
  %15 = load ptr, ptr %2, align 8, !tbaa !222
  %16 = getelementptr ptr, ptr %15, i64 %14
  %17 = getelementptr i8, ptr %16, i64 60
  %18 = load i32, ptr %17, align 4, !tbaa !534
  %19 = or i32 %18, 1
  store i32 %19, ptr %17, align 4, !tbaa !534
  %20 = load ptr, ptr %2, align 8, !tbaa !222
  %21 = getelementptr inbounds ptr, ptr %20, i64 %13
  %22 = load ptr, ptr %21, align 8, !tbaa !221
  %23 = icmp eq ptr %22, null
  br i1 %23, label %192, label %24, !prof !535

24:                                               ; preds = %11, %186
  %25 = phi ptr [ %187, %186 ], [ %22, %11 ]
  %26 = getelementptr inbounds %struct.he, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !536
  %28 = getelementptr inbounds %struct.hek, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !228
  %30 = add nsw i32 %29, -1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.hek, ptr %27, i64 0, i32 2, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !222
  %34 = icmp eq i8 %33, 58
  br i1 %34, label %35, label %72, !prof !538

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.he, ptr %25, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !222
  %38 = icmp eq ptr %37, null
  br i1 %38, label %72, label %39, !prof !532

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.gv, ptr %37, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !235
  %42 = and i32 %41, 255
  %43 = icmp eq i32 %42, 9
  br i1 %43, label %44, label %72, !prof !539

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.gv, ptr %37, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !222
  %47 = getelementptr inbounds %struct.gp, ptr %46, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !242
  %49 = icmp eq ptr %48, null
  br i1 %49, label %72, label %50, !prof !532

50:                                               ; preds = %44
  %51 = load ptr, ptr @PL_defstash, align 8, !tbaa !221
  %52 = icmp eq ptr %48, %51
  %53 = icmp eq ptr %48, %0
  %54 = or i1 %53, %52
  br i1 %54, label %186, label %55, !prof !540

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.hv, ptr %48, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !323
  %58 = and i32 %57, 33554432
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %71, label %60, !prof !541

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.hv, ptr %48, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !222
  %63 = load ptr, ptr %48, align 8, !tbaa !326
  %64 = getelementptr inbounds %struct.xpvhv, ptr %63, i64 0, i32 3
  %65 = load i64, ptr %64, align 8, !tbaa !327
  %66 = getelementptr ptr, ptr %62, i64 %65
  %67 = getelementptr i8, ptr %66, i64 60
  %68 = load i32, ptr %67, align 4, !tbaa !534
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %186, !prof !542

71:                                               ; preds = %60, %55
  tail call void @Perl_gv_check(ptr noundef nonnull %48) #13
  br label %186

72:                                               ; preds = %44, %39, %35, %24
  %73 = getelementptr inbounds %struct.hek, ptr %27, i64 0, i32 2
  %74 = load i8, ptr %73, align 4, !tbaa !222
  %75 = icmp eq i8 %74, 95
  br i1 %75, label %186, label %76, !prof !543

76:                                               ; preds = %72
  %77 = load ptr, ptr @PL_curcop, align 8, !tbaa !221
  %78 = getelementptr inbounds %struct.cop, ptr %77, i64 0, i32 10
  %79 = load i32, ptr %78, align 8, !tbaa !433
  %80 = and i32 %79, 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %97, !prof !544

82:                                               ; preds = %76
  %83 = icmp eq i32 %29, -2
  br i1 %83, label %84, label %90, !prof !545

84:                                               ; preds = %82
  %85 = load ptr, ptr %73, align 4, !tbaa !221
  %86 = getelementptr inbounds %struct.sv, ptr %85, i64 0, i32 2
  %87 = load i32, ptr %86, align 4, !tbaa !214
  %88 = and i32 %87, 536870912
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %103, !prof !544

90:                                               ; preds = %82
  %91 = sext i32 %29 to i64
  %92 = getelementptr inbounds i8, ptr %73, i64 %91
  %93 = getelementptr inbounds i8, ptr %92, i64 1
  %94 = load i8, ptr %93, align 1, !tbaa !222
  %95 = and i8 %94, 1
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %103, !prof !545

97:                                               ; preds = %90, %84, %76
  %98 = zext i8 %74 to i64
  %99 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !239
  %101 = and i32 %100, 81920
  %102 = icmp eq i32 %101, 81920
  br i1 %102, label %127, label %186, !prof !545

103:                                              ; preds = %90, %84
  %104 = icmp sgt i8 %74, -1
  br i1 %104, label %105, label %111, !prof !545

105:                                              ; preds = %103
  %106 = zext nneg i8 %74 to i64
  %107 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !239
  %109 = and i32 %108, 65536
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %186, label %127, !prof !544

111:                                              ; preds = %103
  %112 = and i8 %74, -2
  %113 = icmp eq i8 %112, -62
  br i1 %113, label %114, label %125

114:                                              ; preds = %111
  %115 = shl i8 %74, 6
  %116 = getelementptr inbounds %struct.hek, ptr %27, i64 0, i32 2, i64 1
  %117 = load i8, ptr %116, align 1, !tbaa !222
  %118 = and i8 %117, 63
  %119 = or disjoint i8 %118, %115
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !239
  %123 = and i32 %122, 65536
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %186, label %127

125:                                              ; preds = %111
  %126 = tail call zeroext i1 @Perl__is_utf8_perl_idstart(ptr noundef nonnull %73) #11
  br i1 %126, label %127, label %186, !prof !436

127:                                              ; preds = %114, %105, %125, %97
  %128 = getelementptr inbounds %struct.he, ptr %25, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !222
  %130 = getelementptr inbounds %struct.gv, ptr %129, i64 0, i32 2
  %131 = load i32, ptr %130, align 4, !tbaa !235
  %132 = and i32 %131, 255
  %133 = icmp eq i32 %132, 9
  br i1 %133, label %134, label %186, !prof !546

134:                                              ; preds = %127
  %135 = load ptr, ptr %129, align 8, !tbaa !226
  %136 = getelementptr inbounds %struct.xpvgv, ptr %135, i64 0, i32 2
  %137 = load i64, ptr %136, align 8, !tbaa !259
  %138 = and i64 %137, 2
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %186, !prof !547

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %142 = getelementptr inbounds %struct.gv, ptr %129, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !222
  %144 = getelementptr inbounds %struct.gp, ptr %143, i64 0, i32 10
  %145 = load ptr, ptr %144, align 8, !tbaa !280
  %146 = icmp eq ptr %145, null
  %147 = getelementptr inbounds %struct.hek, ptr %145, i64 0, i32 2
  %148 = select i1 %146, ptr null, ptr %147
  %149 = getelementptr inbounds %struct.gp, ptr %143, i64 0, i32 9
  %150 = load i32, ptr %149, align 8
  %151 = and i32 %150, 2147483647
  %152 = load ptr, ptr @PL_curcop, align 8, !tbaa !221
  %153 = getelementptr inbounds %struct.cop, ptr %152, i64 0, i32 7
  store i32 %151, ptr %153, align 4, !tbaa !276
  %154 = load ptr, ptr %142, align 8, !tbaa !222
  %155 = getelementptr inbounds %struct.gp, ptr %154, i64 0, i32 10
  %156 = load ptr, ptr %155, align 8, !tbaa !280
  %157 = getelementptr inbounds %struct.hek, ptr %156, i64 0, i32 1
  %158 = load i32, ptr %157, align 4, !tbaa !228
  %159 = sext i32 %158 to i64
  %160 = tail call ptr @Perl_gv_fetchfile_flags(ptr noundef %148, i64 noundef %159, i32 poison) #13
  %161 = load ptr, ptr @PL_curcop, align 8, !tbaa !221
  %162 = getelementptr inbounds %struct.cop, ptr %161, i64 0, i32 9
  store ptr %160, ptr %162, align 8, !tbaa !278
  %163 = load i32, ptr %141, align 4, !tbaa !323
  %164 = and i32 %163, 33554432
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %181, label %166

166:                                              ; preds = %140
  %167 = load ptr, ptr %2, align 8, !tbaa !222
  %168 = load ptr, ptr %0, align 8, !tbaa !326
  %169 = getelementptr inbounds %struct.xpvhv, ptr %168, i64 0, i32 3
  %170 = load i64, ptr %169, align 8, !tbaa !327
  %171 = getelementptr ptr, ptr %167, i64 %170
  %172 = getelementptr ptr, ptr %171, i64 1
  %173 = load ptr, ptr %172, align 8, !tbaa !222
  %174 = icmp eq ptr %173, null
  br i1 %174, label %181, label %175

175:                                              ; preds = %166
  %176 = getelementptr i8, ptr %171, i64 36
  %177 = load i32, ptr %176, align 4, !tbaa !329
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %175
  %180 = load ptr, ptr %173, align 8, !tbaa !221
  br label %181

181:                                              ; preds = %175, %140, %166, %179
  %182 = phi ptr [ %180, %179 ], [ null, %166 ], [ null, %140 ], [ %173, %175 ]
  %183 = load ptr, ptr %129, align 8, !tbaa !226
  %184 = getelementptr inbounds %struct.xpvgv, ptr %183, i64 0, i32 4
  %185 = load ptr, ptr %184, align 8, !tbaa !222
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 14, ptr noundef nonnull @.str.23, ptr noundef %182, ptr noundef %185) #11
  br label %186

186:                                              ; preds = %71, %60, %50, %114, %105, %125, %97, %72, %181, %134, %127
  %187 = load ptr, ptr %25, align 8, !tbaa !221
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %24, !prof !548, !llvm.loop !549

189:                                              ; preds = %186
  %190 = load ptr, ptr %2, align 8, !tbaa !222
  %191 = load ptr, ptr %0, align 8, !tbaa !326
  br label %192

192:                                              ; preds = %189, %11
  %193 = phi ptr [ %191, %189 ], [ %12, %11 ]
  %194 = phi ptr [ %190, %189 ], [ %20, %11 ]
  %195 = getelementptr inbounds %struct.xpvhv, ptr %193, i64 0, i32 3
  %196 = load i64, ptr %195, align 8, !tbaa !327
  %197 = getelementptr ptr, ptr %194, i64 %196
  %198 = getelementptr i8, ptr %197, i64 60
  %199 = load i32, ptr %198, align 4, !tbaa !534
  %200 = and i32 %199, -2
  store i32 %200, ptr %198, align 4, !tbaa !534
  %201 = add nuw nsw i64 %13, 1
  %202 = shl i64 %196, 32
  %203 = ashr exact i64 %202, 32
  %204 = icmp slt i64 %13, %203
  br i1 %204, label %11, label %205, !prof !550, !llvm.loop !551

205:                                              ; preds = %192, %5, %1
  ret void
}

; Function Attrs: optsize
declare void @Perl_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_newGVgen_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !272 {
  %3 = icmp ne i32 %1, 0
  %4 = zext i1 %3 to i32
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %6 = load i32, ptr @PL_gensym, align 4, !tbaa !239
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @PL_gensym, align 4, !tbaa !239
  %8 = sext i32 %6 to i64
  %9 = tail call ptr (ptr, ...) @Perl_form(ptr noundef nonnull @.str.24, i32 noundef %4, i64 noundef %5, ptr noundef %0, i64 noundef %8) #11
  %10 = tail call ptr @Perl_gv_fetchpv(ptr noundef %9, i32 noundef 1, i32 noundef 9) #13
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @Perl_form(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @Perl_gp_ref(ptr noundef returned %0) local_unnamed_addr #0 !prof !552 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3, !prof !553

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gp, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !281
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 4, !tbaa !281
  %7 = getelementptr inbounds %struct.gp, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !263
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !prof !554

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.gp, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !273
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14, !prof !357

14:                                               ; preds = %10
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %8) #13
  store ptr null, ptr %7, align 8, !tbaa !263
  store i32 0, ptr %11, align 8, !tbaa !273
  br label %15

15:                                               ; preds = %3, %14, %10, %1
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_gp_free(ptr noundef %0) local_unnamed_addr #0 !prof !555 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %168, label %3, !prof !556

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !235
  %6 = and i32 %5, 49152
  %7 = icmp eq i32 %6, 32768
  br i1 %7, label %8, label %168, !prof !557

8:                                                ; preds = %3
  %9 = and i32 %5, 255
  %10 = add nsw i32 %9, -9
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %168, !prof !558

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !222
  %15 = icmp eq ptr %14, null
  br i1 %15, label %168, label %16, !prof !556

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.gp, ptr %14, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !281
  switch i32 %18, label %20 [
    i32 0, label %19
    i32 1, label %30
  ], !prof !559

19:                                               ; preds = %16
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 24, ptr noundef nonnull @.str.25) #11
  br label %168

20:                                               ; preds = %16, %163
  %21 = phi i32 [ %165, %163 ], [ %18, %16 ]
  %22 = phi ptr [ %130, %163 ], [ %14, %16 ]
  %23 = getelementptr inbounds %struct.gp, ptr %22, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !274
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %27, !prof !560

26:                                               ; preds = %20
  store ptr null, ptr %23, align 8, !tbaa !274
  br label %27

27:                                               ; preds = %26, %20
  %28 = getelementptr inbounds %struct.gp, ptr %22, i64 0, i32 4
  %29 = add i32 %21, -1
  store i32 %29, ptr %28, align 4, !tbaa !281
  store ptr null, ptr %13, align 8, !tbaa !222
  br label %168

30:                                               ; preds = %16, %160
  %31 = phi i32 [ %158, %160 ], [ 100, %16 ]
  %32 = phi ptr [ %130, %160 ], [ %14, %16 ]
  %33 = getelementptr inbounds %struct.gp, ptr %32, i64 0, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !280
  %35 = load ptr, ptr %32, align 8, !tbaa !237
  %36 = getelementptr inbounds %struct.gp, ptr %32, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !241
  %38 = getelementptr inbounds %struct.gp, ptr %32, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !242
  %40 = getelementptr inbounds %struct.gp, ptr %32, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !438
  %42 = getelementptr inbounds %struct.gp, ptr %32, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !263
  %44 = getelementptr inbounds %struct.gp, ptr %32, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !300
  store ptr null, ptr %33, align 8, !tbaa !280
  %46 = icmp eq ptr %34, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, i8 0, i64 24, i1 false)
  br i1 %46, label %48, label %47, !prof !561

47:                                               ; preds = %30
  tail call void @Perl_unshare_hek(ptr noundef nonnull %34) #11
  br label %48

48:                                               ; preds = %47, %30
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %35) #13
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %37) #13
  %49 = icmp eq ptr %39, null
  br i1 %49, label %93, label %50, !prof !562

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.hv, ptr %39, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !323
  %53 = and i32 %52, 255
  %54 = icmp eq i32 %53, 12
  br i1 %54, label %55, label %93

55:                                               ; preds = %50
  %56 = and i32 %52, 33554432
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %92, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.hv, ptr %39, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !222
  %61 = load ptr, ptr %39, align 8, !tbaa !326
  %62 = getelementptr inbounds %struct.xpvhv, ptr %61, i64 0, i32 3
  %63 = load i64, ptr %62, align 8, !tbaa !327
  %64 = getelementptr ptr, ptr %60, i64 %63
  %65 = getelementptr ptr, ptr %64, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !222
  %67 = icmp eq ptr %66, null
  br i1 %67, label %92, label %68

68:                                               ; preds = %58
  %69 = getelementptr i8, ptr %64, i64 36
  %70 = load i32, ptr %69, align 4, !tbaa !329
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %66, align 8, !tbaa !221
  br label %74

74:                                               ; preds = %68, %72
  %75 = phi ptr [ %73, %72 ], [ %66, %68 ]
  %76 = load ptr, ptr @PL_stashcache, align 8, !tbaa !221
  %77 = icmp ne ptr %76, null
  %78 = icmp ne ptr %75, null
  %79 = select i1 %77, i1 %78, i1 false
  br i1 %79, label %80, label %92

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.hek, ptr %75, i64 0, i32 2
  %82 = getelementptr inbounds %struct.hek, ptr %75, i64 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !228
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %81, i64 %84
  %86 = getelementptr inbounds i8, ptr %85, i64 1
  %87 = load i8, ptr %86, align 1, !tbaa !222
  %88 = and i8 %87, 1
  %89 = zext nneg i8 %88 to i32
  %90 = load i32, ptr %75, align 4, !tbaa !311
  %91 = tail call ptr @Perl_hv_common(ptr noundef nonnull %76, ptr noundef null, ptr noundef nonnull %81, i64 noundef %84, i32 noundef %89, i32 noundef 68, ptr noundef null, i32 noundef %90) #11
  br label %92

92:                                               ; preds = %55, %58, %80, %74
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %39) #13
  br label %93

93:                                               ; preds = %92, %50, %48
  %94 = icmp eq ptr %41, null
  br i1 %94, label %129, label %95, !prof !562

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.io, ptr %41, i64 0, i32 1
  %97 = load i32, ptr %96, align 8, !tbaa !563
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %129

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.io, ptr %41, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !222
  %102 = icmp eq ptr %101, null
  br i1 %102, label %129, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr %41, align 8, !tbaa !515
  %105 = getelementptr inbounds %struct.xpvio, ptr %104, i64 0, i32 16
  %106 = load i8, ptr %105, align 8, !tbaa !564
  switch i8 %106, label %129 [
    i8 62, label %107
    i8 43, label %107
    i8 97, label %107
  ]

107:                                              ; preds = %103, %103, %103
  %108 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef 5) #11
  br i1 %108, label %109, label %129

109:                                              ; preds = %107
  %110 = load ptr, ptr %100, align 8, !tbaa !222
  %111 = tail call ptr @Perl_PerlIO_stdin() #11
  %112 = icmp eq ptr %110, %111
  br i1 %112, label %129, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr %100, align 8, !tbaa !222
  %115 = tail call ptr @Perl_PerlIO_stdout() #11
  %116 = icmp eq ptr %114, %115
  br i1 %116, label %129, label %117

117:                                              ; preds = %113
  %118 = load ptr, ptr %100, align 8, !tbaa !222
  %119 = tail call ptr @Perl_PerlIO_stderr() #11
  %120 = icmp eq ptr %118, %119
  br i1 %120, label %129, label %121

121:                                              ; preds = %117
  %122 = load ptr, ptr %41, align 8, !tbaa !515
  %123 = getelementptr inbounds %struct.xpvio, ptr %122, i64 0, i32 17
  %124 = load i8, ptr %123, align 1, !tbaa !517
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
  %130 = load ptr, ptr %13, align 8, !tbaa !222
  %131 = getelementptr inbounds %struct.gp, ptr %130, i64 0, i32 10
  %132 = load ptr, ptr %131, align 8, !tbaa !280
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %157, !prof !562

134:                                              ; preds = %129
  %135 = load ptr, ptr %130, align 8, !tbaa !237
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %157, !prof !562

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.gp, ptr %130, i64 0, i32 6
  %139 = load ptr, ptr %138, align 8, !tbaa !241
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %157, !prof !562

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.gp, ptr %130, i64 0, i32 5
  %143 = load ptr, ptr %142, align 8, !tbaa !242
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %157, !prof !562

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.gp, ptr %130, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !438
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %157, !prof !562

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.gp, ptr %130, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !263
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %157, !prof !562

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.gp, ptr %130, i64 0, i32 7
  %155 = load ptr, ptr %154, align 8, !tbaa !300
  %156 = icmp eq ptr %155, null
  br i1 %156, label %163, label %157, !prof !562

157:                                              ; preds = %153, %149, %145, %141, %137, %134, %129
  %158 = add nsw i32 %31, -1
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %157, %161
  br label %30

161:                                              ; preds = %157
  %162 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.26) #11
  br label %160

163:                                              ; preds = %153
  %164 = getelementptr inbounds %struct.gp, ptr %130, i64 0, i32 4
  %165 = load i32, ptr %164, align 4, !tbaa !281
  %166 = icmp ugt i32 %165, 1
  br i1 %166, label %20, label %167, !prof !561

167:                                              ; preds = %163
  tail call void @Perl_safesysfree(ptr noundef nonnull %130) #11
  store ptr null, ptr %13, align 8, !tbaa !222
  br label %168

168:                                              ; preds = %8, %1, %3, %12, %167, %27, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 !prof !565 !PGOFuncName !566 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3, !prof !567

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !302
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9, !prof !568

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !302
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #11
  br label %10

10:                                               ; preds = %7, %9, %1
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
define dso_local noundef i32 @Perl_magic_freeovrld(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !272 {
  %3 = getelementptr inbounds %struct.magic, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !569
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %4, align 8, !tbaa !572
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6, %16
  %11 = phi i64 [ %17, %16 ], [ 1, %6 ]
  %12 = getelementptr inbounds %struct.am_table, ptr %4, i64 0, i32 4, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !221
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %13) #13
  store ptr null, ptr %12, align 8, !tbaa !221
  br label %16

16:                                               ; preds = %15, %10
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, 75
  br i1 %18, label %19, label %10, !llvm.loop !574

19:                                               ; preds = %16, %6, %2
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_Gv_AMupdate(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 !prof !575 {
  %3 = alloca %struct.am_table, align 8
  %4 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 99) #11
  call void @llvm.lifetime.start.p0(i64 608, ptr nonnull %3) #14
  %5 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !222
  %7 = load ptr, ptr %0, align 8, !tbaa !326
  %8 = getelementptr inbounds %struct.xpvhv, ptr %7, i64 0, i32 3
  %9 = load i64, ptr %8, align 8, !tbaa !327
  %10 = getelementptr ptr, ptr %6, i64 %9
  %11 = getelementptr ptr, ptr %10, i64 5
  %12 = load ptr, ptr %11, align 8, !tbaa !332
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16, !prof !366

14:                                               ; preds = %2
  %15 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %0) #11
  br label %16

16:                                               ; preds = %2, %14
  %17 = phi ptr [ %15, %14 ], [ %12, %2 ]
  %18 = load i32, ptr @PL_sub_generation, align 4, !tbaa !239
  %19 = getelementptr inbounds %struct.mro_meta, ptr %17, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !576
  %21 = add i32 %20, %18
  %22 = getelementptr inbounds %struct.mro_meta, ptr %17, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !333
  %24 = add i32 %21, %23
  %25 = icmp eq ptr %4, null
  br i1 %25, label %38, label %26, !prof !577

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.magic, ptr %4, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !569
  %29 = getelementptr inbounds %struct.am_table, ptr %28, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !578
  %31 = icmp eq i32 %30, %24
  br i1 %31, label %32, label %36, !prof !262

32:                                               ; preds = %26
  %33 = load i8, ptr %28, align 8, !tbaa !572
  %34 = and i8 %33, 1
  %35 = zext nneg i8 %34 to i32
  br label %443

36:                                               ; preds = %26
  %37 = tail call i32 @Perl_sv_unmagic(ptr noundef nonnull %0, i32 noundef 99) #11
  br label %38

38:                                               ; preds = %36, %16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(608) %3, i8 0, i64 608, i1 false)
  %39 = getelementptr inbounds %struct.am_table, ptr %3, i64 0, i32 3
  store i32 %24, ptr %39, align 4, !tbaa !578
  %40 = getelementptr inbounds %struct.am_table, ptr %3, i64 0, i32 1
  store i8 2, ptr %40, align 1, !tbaa !579
  %41 = tail call ptr @Perl_gv_fetchmeth_pvn(ptr noundef nonnull %0, ptr noundef nonnull @.str.90, i64 noundef 2, i32 noundef -1, i32 noundef 0) #13
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46, !prof !580

43:                                               ; preds = %38
  %44 = tail call ptr @Perl_gv_fetchmeth_pvn(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, i64 noundef 2, i32 noundef -1, i32 noundef 0) #13
  %45 = icmp eq ptr %44, null
  br i1 %45, label %442, label %118, !prof !357

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.gv, ptr %41, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !222
  %49 = load ptr, ptr %48, align 8, !tbaa !237
  %50 = icmp eq ptr %49, null
  br i1 %50, label %118, label %51, !prof !262

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !214
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
  %71 = load ptr, ptr %49, align 8, !tbaa !316
  %72 = icmp eq ptr %71, null
  br i1 %72, label %105, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.xpv, ptr %71, i64 0, i32 2
  %75 = load i64, ptr %74, align 8, !tbaa !248
  %76 = icmp ugt i64 %75, 1
  br i1 %76, label %115, label %77

77:                                               ; preds = %73
  %78 = icmp eq i64 %75, 0
  br i1 %78, label %105, label %79

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !222
  %82 = load i8, ptr %81, align 1, !tbaa !222
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
  %91 = load ptr, ptr %49, align 8, !tbaa !316
  %92 = getelementptr inbounds %struct.xpviv, ptr %91, i64 0, i32 4
  %93 = load i64, ptr %92, align 8, !tbaa !222
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %115

95:                                               ; preds = %90, %87
  %96 = and i32 %53, 512
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr %49, align 8, !tbaa !316
  %100 = getelementptr inbounds %struct.xpvnv, ptr %99, i64 0, i32 5
  %101 = load double, ptr %100, align 8, !tbaa !222
  %102 = fcmp une double %101, 0.000000e+00
  br i1 %102, label %115, label %105

103:                                              ; preds = %84
  %104 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %49, i32 noundef 0) #11
  br i1 %104, label %115, label %105

105:                                              ; preds = %98, %58, %103, %95, %79, %77, %70, %56
  %106 = load i32, ptr %52, align 4, !tbaa !214
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
  store i8 %116, ptr %40, align 1, !tbaa !579
  br label %118

118:                                              ; preds = %115, %105, %46, %43
  %119 = phi i32 [ 0, %46 ], [ 0, %43 ], [ 1, %105 ], [ %117, %115 ]
  %120 = load ptr, ptr %5, align 8, !tbaa !222
  %121 = load ptr, ptr %0, align 8, !tbaa !326
  %122 = getelementptr inbounds %struct.xpvhv, ptr %121, i64 0, i32 3
  %123 = load i64, ptr %122, align 8, !tbaa !327
  %124 = getelementptr ptr, ptr %120, i64 %123
  %125 = getelementptr i8, ptr %124, i64 60
  %126 = load i32, ptr %125, align 4, !tbaa !534
  %127 = and i32 %126, -3
  store i32 %127, ptr %125, align 4, !tbaa !534
  br label %128

128:                                              ; preds = %118, %422
  %129 = phi i64 [ 1, %118 ], [ %425, %422 ]
  %130 = phi i32 [ %119, %118 ], [ %424, %422 ]
  %131 = phi i8 [ 0, %118 ], [ %423, %422 ]
  %132 = getelementptr inbounds [75 x ptr], ptr @PL_AMG_names, i64 0, i64 %129
  %133 = load ptr, ptr %132, align 8, !tbaa !221
  %134 = getelementptr inbounds [75 x i8], ptr @PL_AMG_namelens, i64 0, i64 %129
  %135 = load i8, ptr %134, align 1, !tbaa !222
  %136 = zext i8 %135 to i64
  %137 = tail call ptr @Perl_gv_fetchmeth_pvn(ptr noundef nonnull %0, ptr noundef %133, i64 noundef %136, i32 noundef -1, i32 noundef 0) #13
  %138 = icmp eq ptr %137, null
  br i1 %138, label %413, label %139, !prof !581

139:                                              ; preds = %128
  %140 = getelementptr inbounds %struct.gv, ptr %137, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !222
  %142 = getelementptr inbounds %struct.gp, ptr %141, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !263
  %144 = icmp eq ptr %143, null
  br i1 %144, label %416, label %145, !prof !520

145:                                              ; preds = %139
  %146 = load ptr, ptr %143, align 8, !tbaa !264
  %147 = getelementptr inbounds %struct.xpvcv, ptr %146, i64 0, i32 7
  %148 = load ptr, ptr %147, align 8, !tbaa !222
  %149 = icmp eq ptr %148, null
  br i1 %149, label %416, label %150, !prof !582

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.xpvcv, ptr %146, i64 0, i32 12
  %152 = load i32, ptr %151, align 4, !tbaa !289
  %153 = and i32 %152, 32768
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %157, label %155, !prof !582

155:                                              ; preds = %150
  %156 = tail call fastcc ptr @CvNAME_HEK(ptr noundef nonnull %143) #13
  br label %165

157:                                              ; preds = %150
  %158 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %143) #13
  %159 = load ptr, ptr %158, align 8, !tbaa !226
  %160 = getelementptr inbounds %struct.xpvgv, ptr %159, i64 0, i32 4
  %161 = load ptr, ptr %160, align 8, !tbaa !222
  %162 = load ptr, ptr %143, align 8, !tbaa !264
  %163 = getelementptr inbounds %struct.xpvcv, ptr %162, i64 0, i32 12
  %164 = load i32, ptr %163, align 4, !tbaa !289
  br label %165

165:                                              ; preds = %157, %155
  %166 = phi i32 [ %152, %155 ], [ %164, %157 ]
  %167 = phi ptr [ %146, %155 ], [ %162, %157 ]
  %168 = phi ptr [ %156, %155 ], [ %161, %157 ]
  %169 = and i32 %166, 32768
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %173, label %171, !prof !582

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.xpvcv, ptr %167, i64 0, i32 4
  br label %177

173:                                              ; preds = %165
  %174 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %143) #13
  %175 = load ptr, ptr %174, align 8, !tbaa !226
  %176 = getelementptr inbounds %struct.xpvgv, ptr %175, i64 0, i32 5
  br label %177

177:                                              ; preds = %173, %171
  %178 = phi ptr [ %172, %171 ], [ %176, %173 ]
  %179 = load ptr, ptr %178, align 8, !tbaa !222
  %180 = getelementptr inbounds %struct.hv, ptr %179, i64 0, i32 2
  %181 = load i32, ptr %180, align 4, !tbaa !323
  %182 = and i32 %181, 33554432
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %339, label %184, !prof !520

184:                                              ; preds = %177
  %185 = load ptr, ptr %143, align 8, !tbaa !264
  %186 = getelementptr inbounds %struct.xpvcv, ptr %185, i64 0, i32 12
  %187 = load i32, ptr %186, align 4, !tbaa !289
  %188 = and i32 %187, 32768
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %192, label %190, !prof !582

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.xpvcv, ptr %185, i64 0, i32 4
  br label %199

192:                                              ; preds = %184
  %193 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %143) #13
  %194 = load ptr, ptr %193, align 8, !tbaa !226
  %195 = getelementptr inbounds %struct.xpvgv, ptr %194, i64 0, i32 5
  %196 = load ptr, ptr %143, align 8, !tbaa !264
  %197 = getelementptr inbounds %struct.xpvcv, ptr %196, i64 0, i32 12
  %198 = load i32, ptr %197, align 4, !tbaa !289
  br label %199

199:                                              ; preds = %192, %190
  %200 = phi i32 [ %187, %190 ], [ %198, %192 ]
  %201 = phi ptr [ %185, %190 ], [ %196, %192 ]
  %202 = phi ptr [ %191, %190 ], [ %195, %192 ]
  %203 = load ptr, ptr %202, align 8, !tbaa !222
  %204 = getelementptr inbounds %struct.hv, ptr %203, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !222
  %206 = and i32 %200, 32768
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %210, label %208, !prof !582

208:                                              ; preds = %199
  %209 = getelementptr inbounds %struct.xpvcv, ptr %201, i64 0, i32 4
  br label %214

210:                                              ; preds = %199
  %211 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %143) #13
  %212 = load ptr, ptr %211, align 8, !tbaa !226
  %213 = getelementptr inbounds %struct.xpvgv, ptr %212, i64 0, i32 5
  br label %214

214:                                              ; preds = %210, %208
  %215 = phi ptr [ %209, %208 ], [ %213, %210 ]
  %216 = load ptr, ptr %215, align 8, !tbaa !222
  %217 = load ptr, ptr %216, align 8, !tbaa !326
  %218 = getelementptr inbounds %struct.xpvhv, ptr %217, i64 0, i32 3
  %219 = load i64, ptr %218, align 8, !tbaa !327
  %220 = getelementptr ptr, ptr %205, i64 %219
  %221 = getelementptr ptr, ptr %220, i64 1
  %222 = load ptr, ptr %221, align 8, !tbaa !222
  %223 = icmp eq ptr %222, null
  br i1 %223, label %339, label %224, !prof !520

224:                                              ; preds = %214
  %225 = load ptr, ptr %143, align 8, !tbaa !264
  %226 = getelementptr inbounds %struct.xpvcv, ptr %225, i64 0, i32 12
  %227 = load i32, ptr %226, align 4, !tbaa !289
  %228 = and i32 %227, 32768
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %232, label %230, !prof !582

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.xpvcv, ptr %225, i64 0, i32 4
  br label %239

232:                                              ; preds = %224
  %233 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %143) #13
  %234 = load ptr, ptr %233, align 8, !tbaa !226
  %235 = getelementptr inbounds %struct.xpvgv, ptr %234, i64 0, i32 5
  %236 = load ptr, ptr %143, align 8, !tbaa !264
  %237 = getelementptr inbounds %struct.xpvcv, ptr %236, i64 0, i32 12
  %238 = load i32, ptr %237, align 4, !tbaa !289
  br label %239

239:                                              ; preds = %232, %230
  %240 = phi i32 [ %227, %230 ], [ %238, %232 ]
  %241 = phi ptr [ %225, %230 ], [ %236, %232 ]
  %242 = phi ptr [ %231, %230 ], [ %235, %232 ]
  %243 = load ptr, ptr %242, align 8, !tbaa !222
  %244 = getelementptr inbounds %struct.hv, ptr %243, i64 0, i32 3
  %245 = load ptr, ptr %244, align 8, !tbaa !222
  %246 = and i32 %240, 32768
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %250, label %248, !prof !582

248:                                              ; preds = %239
  %249 = getelementptr inbounds %struct.xpvcv, ptr %241, i64 0, i32 4
  br label %254

250:                                              ; preds = %239
  %251 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %143) #13
  %252 = load ptr, ptr %251, align 8, !tbaa !226
  %253 = getelementptr inbounds %struct.xpvgv, ptr %252, i64 0, i32 5
  br label %254

254:                                              ; preds = %250, %248
  %255 = phi ptr [ %249, %248 ], [ %253, %250 ]
  %256 = load ptr, ptr %255, align 8, !tbaa !222
  %257 = load ptr, ptr %256, align 8, !tbaa !326
  %258 = getelementptr inbounds %struct.xpvhv, ptr %257, i64 0, i32 3
  %259 = load i64, ptr %258, align 8, !tbaa !327
  %260 = getelementptr ptr, ptr %245, i64 %259
  %261 = getelementptr i8, ptr %260, i64 36
  %262 = load i32, ptr %261, align 4, !tbaa !329
  %263 = icmp eq i32 %262, 0
  %264 = load ptr, ptr %143, align 8, !tbaa !264
  %265 = getelementptr inbounds %struct.xpvcv, ptr %264, i64 0, i32 12
  %266 = load i32, ptr %265, align 4, !tbaa !289
  %267 = and i32 %266, 32768
  %268 = icmp eq i32 %267, 0
  br i1 %263, label %303, label %269, !prof !582

269:                                              ; preds = %254
  br i1 %268, label %272, label %270, !prof !582

270:                                              ; preds = %269
  %271 = getelementptr inbounds %struct.xpvcv, ptr %264, i64 0, i32 4
  br label %279

272:                                              ; preds = %269
  %273 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %143) #13
  %274 = load ptr, ptr %273, align 8, !tbaa !226
  %275 = getelementptr inbounds %struct.xpvgv, ptr %274, i64 0, i32 5
  %276 = load ptr, ptr %143, align 8, !tbaa !264
  %277 = getelementptr inbounds %struct.xpvcv, ptr %276, i64 0, i32 12
  %278 = load i32, ptr %277, align 4, !tbaa !289
  br label %279

279:                                              ; preds = %272, %270
  %280 = phi i32 [ %266, %270 ], [ %278, %272 ]
  %281 = phi ptr [ %264, %270 ], [ %276, %272 ]
  %282 = phi ptr [ %271, %270 ], [ %275, %272 ]
  %283 = load ptr, ptr %282, align 8, !tbaa !222
  %284 = getelementptr inbounds %struct.hv, ptr %283, i64 0, i32 3
  %285 = load ptr, ptr %284, align 8, !tbaa !222
  %286 = and i32 %280, 32768
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %290, label %288, !prof !582

288:                                              ; preds = %279
  %289 = getelementptr inbounds %struct.xpvcv, ptr %281, i64 0, i32 4
  br label %294

290:                                              ; preds = %279
  %291 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %143) #13
  %292 = load ptr, ptr %291, align 8, !tbaa !226
  %293 = getelementptr inbounds %struct.xpvgv, ptr %292, i64 0, i32 5
  br label %294

294:                                              ; preds = %290, %288
  %295 = phi ptr [ %289, %288 ], [ %293, %290 ]
  %296 = load ptr, ptr %295, align 8, !tbaa !222
  %297 = load ptr, ptr %296, align 8, !tbaa !326
  %298 = getelementptr inbounds %struct.xpvhv, ptr %297, i64 0, i32 3
  %299 = load i64, ptr %298, align 8, !tbaa !327
  %300 = getelementptr ptr, ptr %285, i64 %299
  %301 = getelementptr ptr, ptr %300, i64 1
  %302 = load ptr, ptr %301, align 8, !tbaa !222
  br label %336

303:                                              ; preds = %254
  br i1 %268, label %306, label %304, !prof !582

304:                                              ; preds = %303
  %305 = getelementptr inbounds %struct.xpvcv, ptr %264, i64 0, i32 4
  br label %313

306:                                              ; preds = %303
  %307 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %143) #13
  %308 = load ptr, ptr %307, align 8, !tbaa !226
  %309 = getelementptr inbounds %struct.xpvgv, ptr %308, i64 0, i32 5
  %310 = load ptr, ptr %143, align 8, !tbaa !264
  %311 = getelementptr inbounds %struct.xpvcv, ptr %310, i64 0, i32 12
  %312 = load i32, ptr %311, align 4, !tbaa !289
  br label %313

313:                                              ; preds = %306, %304
  %314 = phi i32 [ %266, %304 ], [ %312, %306 ]
  %315 = phi ptr [ %264, %304 ], [ %310, %306 ]
  %316 = phi ptr [ %305, %304 ], [ %309, %306 ]
  %317 = load ptr, ptr %316, align 8, !tbaa !222
  %318 = getelementptr inbounds %struct.hv, ptr %317, i64 0, i32 3
  %319 = load ptr, ptr %318, align 8, !tbaa !222
  %320 = and i32 %314, 32768
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %324, label %322, !prof !582

322:                                              ; preds = %313
  %323 = getelementptr inbounds %struct.xpvcv, ptr %315, i64 0, i32 4
  br label %328

324:                                              ; preds = %313
  %325 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %143) #13
  %326 = load ptr, ptr %325, align 8, !tbaa !226
  %327 = getelementptr inbounds %struct.xpvgv, ptr %326, i64 0, i32 5
  br label %328

328:                                              ; preds = %324, %322
  %329 = phi ptr [ %323, %322 ], [ %327, %324 ]
  %330 = load ptr, ptr %329, align 8, !tbaa !222
  %331 = load ptr, ptr %330, align 8, !tbaa !326
  %332 = getelementptr inbounds %struct.xpvhv, ptr %331, i64 0, i32 3
  %333 = load i64, ptr %332, align 8, !tbaa !327
  %334 = getelementptr ptr, ptr %319, i64 %333
  %335 = getelementptr ptr, ptr %334, i64 1
  br label %336

336:                                              ; preds = %328, %294
  %337 = phi ptr [ %302, %294 ], [ %335, %328 ]
  %338 = load ptr, ptr %337, align 8, !tbaa !222
  br label %339

339:                                              ; preds = %336, %177, %214
  %340 = phi ptr [ null, %214 ], [ null, %177 ], [ %338, %336 ]
  %341 = getelementptr inbounds %struct.hek, ptr %168, i64 0, i32 1
  %342 = load i32, ptr %341, align 4, !tbaa !228
  %343 = icmp eq i32 %342, 3
  br i1 %343, label %344, label %416, !prof !583

344:                                              ; preds = %339
  %345 = getelementptr inbounds %struct.hek, ptr %168, i64 0, i32 2
  %346 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %345, ptr noundef nonnull dereferenceable(4) @.str.28) #12
  %347 = icmp eq i32 %346, 0
  %348 = icmp ne ptr %340, null
  %349 = select i1 %347, i1 %348, i1 false
  br i1 %349, label %350, label %416, !prof !584

350:                                              ; preds = %344
  %351 = getelementptr inbounds %struct.hek, ptr %340, i64 0, i32 1
  %352 = load i32, ptr %351, align 4, !tbaa !228
  %353 = icmp eq i32 %352, 8
  br i1 %353, label %354, label %416

354:                                              ; preds = %350
  %355 = getelementptr inbounds %struct.hek, ptr %340, i64 0, i32 2
  %356 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %355, ptr noundef nonnull dereferenceable(9) @.str.29) #12
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %416

358:                                              ; preds = %354
  %359 = load ptr, ptr %140, align 8, !tbaa !222
  %360 = load ptr, ptr %359, align 8, !tbaa !237
  %361 = icmp eq ptr %360, null
  br i1 %361, label %371, label %362

362:                                              ; preds = %358
  %363 = getelementptr inbounds %struct.sv, ptr %360, i64 0, i32 2
  %364 = load i32, ptr %363, align 4, !tbaa !214
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
  %374 = load i32, ptr %373, align 4, !tbaa !214
  %375 = and i32 %374, 1024
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %379

377:                                              ; preds = %371, %372
  %378 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.30, i64 noundef 3, i32 noundef 524288) #11
  br label %379

379:                                              ; preds = %372, %377
  %380 = phi ptr [ %378, %377 ], [ %360, %372 ]
  %381 = load ptr, ptr %140, align 8, !tbaa !222
  %382 = getelementptr inbounds %struct.gp, ptr %381, i64 0, i32 3
  %383 = load i32, ptr %382, align 8, !tbaa !273
  %384 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %385 = load i32, ptr %384, align 4, !tbaa !323
  %386 = and i32 %385, 33554432
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %403, label %388

388:                                              ; preds = %379
  %389 = load ptr, ptr %5, align 8, !tbaa !222
  %390 = load ptr, ptr %0, align 8, !tbaa !326
  %391 = getelementptr inbounds %struct.xpvhv, ptr %390, i64 0, i32 3
  %392 = load i64, ptr %391, align 8, !tbaa !327
  %393 = getelementptr ptr, ptr %389, i64 %392
  %394 = getelementptr ptr, ptr %393, i64 1
  %395 = load ptr, ptr %394, align 8, !tbaa !222
  %396 = icmp eq ptr %395, null
  br i1 %396, label %403, label %397

397:                                              ; preds = %388
  %398 = getelementptr i8, ptr %393, i64 36
  %399 = load i32, ptr %398, align 4, !tbaa !329
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %403, label %401

401:                                              ; preds = %397
  %402 = load ptr, ptr %395, align 8, !tbaa !221
  br label %403

403:                                              ; preds = %397, %379, %388, %401
  %404 = phi ptr [ %402, %401 ], [ null, %388 ], [ null, %379 ], [ %395, %397 ]
  %405 = icmp eq i32 %383, 0
  %406 = select i1 %405, ptr @.str.33, ptr @.str.32
  %407 = getelementptr inbounds i8, ptr %133, i64 1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.31, ptr noundef nonnull %406, ptr noundef %380, ptr noundef nonnull %407, ptr noundef %404) #11
  unreachable

408:                                              ; preds = %367
  %409 = getelementptr inbounds %struct.gv, ptr %368, i64 0, i32 3
  %410 = load ptr, ptr %409, align 8, !tbaa !222
  %411 = getelementptr inbounds %struct.gp, ptr %410, i64 0, i32 2
  %412 = load ptr, ptr %411, align 8, !tbaa !263
  br label %416

413:                                              ; preds = %128
  %414 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef null) #13
  %415 = getelementptr inbounds %struct.am_table, ptr %3, i64 0, i32 4, i64 %129
  store ptr null, ptr %415, align 8, !tbaa !221
  br label %422

416:                                              ; preds = %408, %339, %344, %350, %354, %145, %139
  %417 = phi ptr [ %137, %139 ], [ %137, %145 ], [ %412, %408 ], [ %143, %339 ], [ %143, %344 ], [ %143, %350 ], [ %143, %354 ]
  %418 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %417) #13
  %419 = getelementptr inbounds %struct.am_table, ptr %3, i64 0, i32 4, i64 %129
  store ptr %417, ptr %419, align 8, !tbaa !221
  %420 = trunc i64 %129 to i32
  switch i32 %420, label %422 [
    i32 1, label %421
    i32 2, label %421
    i32 3, label %421
    i32 4, label %421
    i32 5, label %421
    i32 29, label %421
  ], !prof !585

421:                                              ; preds = %416, %416, %416, %416, %416, %416
  br label %422

422:                                              ; preds = %421, %416, %413
  %423 = phi i8 [ %131, %413 ], [ 1, %421 ], [ %131, %416 ]
  %424 = phi i32 [ %130, %413 ], [ 1, %421 ], [ 1, %416 ]
  %425 = add nuw nsw i64 %129, 1
  %426 = icmp eq i64 %425, 75
  br i1 %426, label %427, label %128, !prof !586, !llvm.loop !587

427:                                              ; preds = %422
  %428 = and i8 %423, 1
  %429 = icmp eq i8 %428, 0
  br i1 %429, label %430, label %439, !prof !310

430:                                              ; preds = %427
  %431 = load ptr, ptr %5, align 8, !tbaa !222
  %432 = load ptr, ptr %0, align 8, !tbaa !326
  %433 = getelementptr inbounds %struct.xpvhv, ptr %432, i64 0, i32 3
  %434 = load i64, ptr %433, align 8, !tbaa !327
  %435 = getelementptr ptr, ptr %431, i64 %434
  %436 = getelementptr i8, ptr %435, i64 60
  %437 = load i32, ptr %436, align 4, !tbaa !534
  %438 = or i32 %437, 2
  store i32 %438, ptr %436, align 4, !tbaa !534
  br label %439

439:                                              ; preds = %430, %427
  %440 = icmp eq i32 %424, 0
  br i1 %440, label %442, label %441, !prof !310

441:                                              ; preds = %439
  store i8 1, ptr %3, align 8, !tbaa !572
  call void @Perl_sv_magic(ptr noundef nonnull %0, ptr noundef null, i32 noundef 99, ptr noundef nonnull %3, i32 noundef 608) #11
  br label %443

442:                                              ; preds = %43, %439
  store i8 0, ptr %3, align 8, !tbaa !572
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
declare ptr @Perl_mro_meta_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_sv_unmagic(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #8 !prof !588 !PGOFuncName !589 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !590

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !302
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !302
  br label %7

7:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_handler(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !272 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %81, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !323
  %7 = and i32 %6, 33554432
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %81, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !222
  %12 = load ptr, ptr %0, align 8, !tbaa !326
  %13 = getelementptr inbounds %struct.xpvhv, ptr %12, i64 0, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !327
  %15 = getelementptr ptr, ptr %11, i64 %14
  %16 = getelementptr ptr, ptr %15, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !222
  %18 = icmp eq ptr %17, null
  br i1 %18, label %81, label %19

19:                                               ; preds = %9
  %20 = getelementptr i8, ptr %15, i64 36
  %21 = load i32, ptr %20, align 4, !tbaa !329
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %17, align 8, !tbaa !221
  %25 = icmp eq ptr %24, null
  br i1 %25, label %81, label %26

26:                                               ; preds = %19, %23
  %27 = getelementptr ptr, ptr %15, i64 5
  %28 = load ptr, ptr %27, align 8, !tbaa !332
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %0) #11
  br label %32

32:                                               ; preds = %26, %30
  %33 = phi ptr [ %31, %30 ], [ %28, %26 ]
  %34 = load i32, ptr @PL_sub_generation, align 4, !tbaa !239
  %35 = getelementptr inbounds %struct.mro_meta, ptr %33, i64 0, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !576
  %37 = add i32 %36, %34
  %38 = getelementptr inbounds %struct.mro_meta, ptr %33, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !333
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
  %51 = load ptr, ptr %50, align 8, !tbaa !569
  %52 = getelementptr inbounds %struct.am_table, ptr %51, i64 0, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !578
  %54 = icmp eq i32 %53, %40
  br i1 %54, label %55, label %43

55:                                               ; preds = %48
  %56 = load i8, ptr %51, align 8, !tbaa !572
  %57 = and i8 %56, 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %81, label %59

59:                                               ; preds = %55
  %60 = sext i32 %1 to i64
  %61 = getelementptr inbounds %struct.am_table, ptr %51, i64 0, i32 4, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !221
  %63 = icmp eq ptr %62, null
  br i1 %63, label %81, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.cv, ptr %62, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !391
  %67 = and i32 %66, 255
  %68 = icmp eq i32 %67, 9
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = getelementptr inbounds [75 x ptr], ptr @PL_AMG_names, i64 0, i64 %60
  %71 = load ptr, ptr %70, align 8, !tbaa !221
  %72 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %0, ptr noundef %71, i32 noundef 1) #13
  %73 = icmp eq ptr %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.gv, ptr %72, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !222
  %77 = getelementptr inbounds %struct.gp, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !263
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %69, %74
  br label %81

81:                                               ; preds = %59, %64, %80, %74, %55, %43, %2, %23, %9, %4
  %82 = phi ptr [ null, %4 ], [ null, %9 ], [ null, %23 ], [ null, %2 ], [ null, %43 ], [ null, %55 ], [ %78, %74 ], [ %62, %80 ], [ %62, %64 ], [ null, %59 ]
  ret ptr %82
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @Perl_try_amagic_un(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !272 {
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !221
  %4 = load ptr, ptr %3, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !214
  %7 = and i32 %6, 2097152
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @Perl_mg_get(ptr noundef nonnull %4) #11
  %11 = load i32, ptr %5, align 4, !tbaa !214
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi i32 [ %6, %2 ], [ %11, %9 ]
  %14 = and i32 %13, 2048
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %57, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !222
  %19 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !214
  %21 = and i32 %20, 1048576
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %57, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr %18, align 8, !tbaa !316
  %25 = load ptr, ptr %24, align 8, !tbaa !591
  %26 = getelementptr inbounds %struct.hv, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !323
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
  %39 = load ptr, ptr @PL_curpad, align 8, !tbaa !221
  %40 = load ptr, ptr @PL_op, align 8, !tbaa !221
  %41 = getelementptr inbounds %struct.op, ptr %40, i64 0, i32 3
  %42 = load i64, ptr %41, align 8, !tbaa !593
  %43 = getelementptr inbounds ptr, ptr %39, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !221
  %45 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !214
  %47 = and i32 %46, 131072
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %38
  tail call void @Perl_sv_setsv_flags(ptr noundef nonnull %44, ptr noundef nonnull %33, i32 noundef 1538) #11
  %50 = load i32, ptr %45, align 4, !tbaa !214
  %51 = and i32 %50, 4194304
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = tail call i32 @Perl_mg_set(ptr noundef nonnull %44) #11
  br label %55

55:                                               ; preds = %49, %53, %38, %35
  %56 = phi ptr [ %33, %35 ], [ %44, %49 ], [ %44, %53 ], [ %33, %38 ]
  store ptr %56, ptr %3, align 8, !tbaa !221
  store ptr %3, ptr @PL_stack_sp, align 8, !tbaa !221
  br label %66

57:                                               ; preds = %30, %23, %16, %12
  %58 = and i32 %1, 16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = load i32, ptr %5, align 4, !tbaa !214
  %62 = and i32 %61, 2048
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = tail call ptr @Perl_sv_2num(ptr noundef nonnull %4) #11
  store ptr %65, ptr %3, align 8, !tbaa !221
  br label %66

66:                                               ; preds = %57, %60, %64, %55
  %67 = phi i1 [ true, %55 ], [ false, %64 ], [ false, %60 ], [ false, %57 ]
  ret i1 %67
}

; Function Attrs: optsize
declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_amagic_call(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !272 {
  %5 = alloca %struct.binop, align 8
  %6 = and i32 %3, 4
  %7 = icmp eq i32 %6, 0
  %8 = lshr exact i32 %6, 2
  %9 = load ptr, ptr @PL_curcop, align 8, !tbaa !221
  %10 = getelementptr inbounds %struct.cop, ptr %9, i64 0, i32 10
  %11 = load i32, ptr %10, align 8, !tbaa !433
  %12 = and i32 %11, 16777216
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14, !prof !367

14:                                               ; preds = %4
  %15 = tail call zeroext i1 @Perl_amagic_is_enabled(i32 noundef %2) #13
  br i1 %15, label %16, label %1103

16:                                               ; preds = %14, %4
  %17 = and i32 %3, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %289, !prof !367

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !214
  %22 = and i32 %21, 2048
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %289, label %24, !prof !366

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !222
  %27 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !214
  %29 = and i32 %28, 1048576
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %289, label %31, !prof !366

31:                                               ; preds = %24
  %32 = load ptr, ptr %26, align 8, !tbaa !316
  %33 = load ptr, ptr %32, align 8, !tbaa !591
  %34 = getelementptr inbounds %struct.hv, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !323
  %36 = and i32 %35, 268435456
  %37 = icmp eq i32 %36, 0
  %38 = icmp eq ptr %33, null
  %39 = or i1 %38, %37
  br i1 %39, label %289, label %40, !prof !595

40:                                               ; preds = %31
  %41 = and i32 %35, 33554432
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %65, label %43, !prof !366

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.hv, ptr %33, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !222
  %46 = load ptr, ptr %33, align 8, !tbaa !326
  %47 = getelementptr inbounds %struct.xpvhv, ptr %46, i64 0, i32 3
  %48 = load i64, ptr %47, align 8, !tbaa !327
  %49 = getelementptr ptr, ptr %45, i64 %48
  %50 = getelementptr ptr, ptr %49, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !222
  %52 = icmp eq ptr %51, null
  br i1 %52, label %65, label %53, !prof !366

53:                                               ; preds = %43
  %54 = getelementptr i8, ptr %49, i64 36
  %55 = load i32, ptr %54, align 4, !tbaa !329
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57, !prof !367

57:                                               ; preds = %53
  %58 = load ptr, ptr %51, align 8, !tbaa !221
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %53, %57
  %61 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %33, i1 noundef zeroext false) #13
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68, !prof !367

63:                                               ; preds = %60
  %64 = load i32, ptr %34, align 4, !tbaa !323
  br label %65

65:                                               ; preds = %63, %40, %43, %57
  %66 = phi i32 [ %64, %63 ], [ %35, %40 ], [ %35, %43 ], [ %35, %57 ]
  %67 = and i32 %66, -268435457
  store i32 %67, ptr %34, align 4, !tbaa !323
  br label %289

68:                                               ; preds = %60
  %69 = tail call ptr @Perl_mg_find(ptr noundef nonnull %33, i32 noundef 99) #11
  %70 = icmp eq ptr %69, null
  br i1 %70, label %289, label %71, !prof !596

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.magic, ptr %69, i64 0, i32 7
  %73 = load ptr, ptr %72, align 8, !tbaa !569
  %74 = load i8, ptr %73, align 8, !tbaa !572
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  %77 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4
  br i1 %76, label %289, label %78, !prof !596

78:                                               ; preds = %71
  %79 = add nsw i32 %8, %2
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds ptr, ptr %77, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !221
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %592, !prof !526

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 1
  %86 = load i8, ptr %85, align 1, !tbaa !579
  br i1 %7, label %94, label %87, !prof !262

87:                                               ; preds = %84
  %88 = icmp ugt i8 %86, 1
  br i1 %88, label %89, label %289

89:                                               ; preds = %87
  %90 = sext i32 %2 to i64
  %91 = getelementptr inbounds ptr, ptr %77, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !221
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %592

94:                                               ; preds = %84, %89
  %95 = phi i32 [ %2, %89 ], [ %79, %84 ]
  %96 = icmp ult i8 %86, 2
  %97 = and i32 %3, 8
  %98 = icmp eq i32 %97, 0
  %99 = or i1 %98, %96
  br i1 %99, label %289, label %100, !prof !597

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
  %103 = load ptr, ptr %102, align 8, !tbaa !221
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %630

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 30
  %107 = load ptr, ptr %106, align 8, !tbaa !221
  %108 = icmp eq ptr %107, null
  br i1 %108, label %431, label %630, !prof !598

109:                                              ; preds = %100
  %110 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 33
  %111 = load ptr, ptr %110, align 8, !tbaa !221
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %630

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 32
  %115 = load ptr, ptr %114, align 8, !tbaa !221
  %116 = icmp eq ptr %115, null
  br i1 %116, label %431, label %630, !prof !598

117:                                              ; preds = %100
  %118 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 9
  %119 = load ptr, ptr %118, align 8, !tbaa !221
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %619

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 10
  %123 = load ptr, ptr %122, align 8, !tbaa !221
  br label %284

124:                                              ; preds = %100
  %125 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 10
  %126 = load ptr, ptr %125, align 8, !tbaa !221
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %619

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 8
  %130 = load ptr, ptr %129, align 8, !tbaa !221
  br label %284

131:                                              ; preds = %100
  %132 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 9
  %133 = load ptr, ptr %132, align 8, !tbaa !221
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %619

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 8
  %137 = load ptr, ptr %136, align 8, !tbaa !221
  br label %284

138:                                              ; preds = %100
  %139 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 8
  %140 = load ptr, ptr %139, align 8, !tbaa !221
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %149

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 9
  %144 = load ptr, ptr %143, align 8, !tbaa !221
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 10
  %148 = load ptr, ptr %147, align 8, !tbaa !221
  br label %149

149:                                              ; preds = %146, %142, %138
  %150 = phi i32 [ 8, %138 ], [ 9, %142 ], [ 10, %146 ]
  %151 = phi ptr [ %140, %138 ], [ %144, %142 ], [ %148, %146 ]
  %152 = icmp ne ptr %151, null
  %153 = zext i1 %152 to i32
  br label %284

154:                                              ; preds = %100
  %155 = load ptr, ptr %25, align 8, !tbaa !222
  %156 = getelementptr inbounds %struct.sv, ptr %155, i64 0, i32 2
  %157 = load i32, ptr %156, align 4, !tbaa !214
  %158 = and i32 %157, 2296
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %431, !prof !599

160:                                              ; preds = %154
  %161 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %155) #11
  %162 = getelementptr inbounds %struct.sv, ptr %161, i64 0, i32 2
  %163 = load i32, ptr %162, align 4, !tbaa !214
  %164 = or i32 %163, 1048576
  store i32 %164, ptr %162, align 4, !tbaa !214
  %165 = load ptr, ptr %155, align 8, !tbaa !316
  %166 = load ptr, ptr %165, align 8, !tbaa !591
  %167 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %166) #13
  %168 = load ptr, ptr %161, align 8, !tbaa !316
  store ptr %166, ptr %168, align 8, !tbaa !591
  br label %1103

169:                                              ; preds = %100
  %170 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 17
  %171 = load ptr, ptr %170, align 8, !tbaa !221
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 58
  %175 = load ptr, ptr %174, align 8, !tbaa !221
  %176 = icmp eq ptr %175, null
  br i1 %176, label %431, label %177, !prof !598

177:                                              ; preds = %173, %169
  %178 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 14
  %179 = load ptr, ptr %178, align 8, !tbaa !221
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.am_table, ptr %73, i64 0, i32 4, i64 32
  %183 = load ptr, ptr %182, align 8, !tbaa !221
  %184 = icmp eq ptr %183, null
  br i1 %184, label %431, label %185, !prof !598

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
  %194 = load i32, ptr %193, align 4, !tbaa !214
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
  %214 = load ptr, ptr %190, align 8, !tbaa !316
  %215 = icmp eq ptr %214, null
  br i1 %215, label %1103, label %216

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.xpv, ptr %214, i64 0, i32 2
  %218 = load i64, ptr %217, align 8, !tbaa !248
  %219 = icmp ugt i64 %218, 1
  br i1 %219, label %269, label %220

220:                                              ; preds = %216
  %221 = icmp eq i64 %218, 0
  br i1 %221, label %1103, label %222

222:                                              ; preds = %220
  %223 = getelementptr inbounds %struct.sv, ptr %190, i64 0, i32 3
  %224 = load ptr, ptr %223, align 8, !tbaa !222
  %225 = load i8, ptr %224, align 1, !tbaa !222
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
  %236 = load ptr, ptr %190, align 8, !tbaa !316
  %237 = getelementptr inbounds %struct.xpviv, ptr %236, i64 0, i32 4
  %238 = load i64, ptr %237, align 8, !tbaa !222
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %269

240:                                              ; preds = %235, %232
  %241 = and i32 %194, 512
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %1103, label %243

243:                                              ; preds = %240
  %244 = load ptr, ptr %190, align 8, !tbaa !316
  %245 = getelementptr inbounds %struct.xpvnv, ptr %244, i64 0, i32 5
  %246 = load double, ptr %245, align 8, !tbaa !222
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
  %255 = load i32, ptr %254, align 4, !tbaa !214
  %256 = and i32 %255, 2097664
  %257 = icmp eq i32 %256, 512
  br i1 %257, label %258, label %262

258:                                              ; preds = %252
  %259 = load ptr, ptr %253, align 8, !tbaa !316
  %260 = getelementptr inbounds %struct.xpvnv, ptr %259, i64 0, i32 5
  %261 = load double, ptr %260, align 8, !tbaa !222
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
  %278 = load ptr, ptr %277, align 8, !tbaa !221
  %279 = icmp eq ptr %278, null
  br i1 %279, label %431, label %280, !prof !598

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
  br i1 %288, label %431, label %592, !prof !598

289:                                              ; preds = %87, %19, %24, %31, %65, %68, %71, %16, %94
  %290 = phi i1 [ false, %94 ], [ true, %16 ], [ true, %71 ], [ true, %68 ], [ true, %65 ], [ true, %31 ], [ true, %24 ], [ true, %19 ], [ false, %87 ]
  %291 = phi ptr [ %77, %94 ], [ null, %16 ], [ null, %71 ], [ null, %68 ], [ null, %65 ], [ null, %31 ], [ null, %24 ], [ null, %19 ], [ %77, %87 ]
  %292 = phi ptr [ %73, %94 ], [ null, %16 ], [ null, %71 ], [ null, %68 ], [ null, %65 ], [ null, %31 ], [ null, %24 ], [ null, %19 ], [ %73, %87 ]
  %293 = phi i32 [ %95, %94 ], [ 0, %16 ], [ 0, %71 ], [ 0, %68 ], [ 0, %65 ], [ 0, %31 ], [ 0, %24 ], [ 0, %19 ], [ %79, %87 ]
  %294 = and i32 %3, 1
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %360, !prof !600

296:                                              ; preds = %289
  %297 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %298 = load i32, ptr %297, align 4, !tbaa !214
  %299 = and i32 %298, 2048
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %360, label %301, !prof !262

301:                                              ; preds = %296
  %302 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %303 = load ptr, ptr %302, align 8, !tbaa !222
  %304 = getelementptr inbounds %struct.sv, ptr %303, i64 0, i32 2
  %305 = load i32, ptr %304, align 4, !tbaa !214
  %306 = and i32 %305, 1048576
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %360, label %308

308:                                              ; preds = %301
  %309 = load ptr, ptr %303, align 8, !tbaa !316
  %310 = load ptr, ptr %309, align 8, !tbaa !591
  %311 = getelementptr inbounds %struct.hv, ptr %310, i64 0, i32 2
  %312 = load i32, ptr %311, align 4, !tbaa !323
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
  %322 = load ptr, ptr %321, align 8, !tbaa !222
  %323 = load ptr, ptr %310, align 8, !tbaa !326
  %324 = getelementptr inbounds %struct.xpvhv, ptr %323, i64 0, i32 3
  %325 = load i64, ptr %324, align 8, !tbaa !327
  %326 = getelementptr ptr, ptr %322, i64 %325
  %327 = getelementptr ptr, ptr %326, i64 1
  %328 = load ptr, ptr %327, align 8, !tbaa !222
  %329 = icmp eq ptr %328, null
  br i1 %329, label %342, label %330

330:                                              ; preds = %320
  %331 = getelementptr i8, ptr %326, i64 36
  %332 = load i32, ptr %331, align 4, !tbaa !329
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %337, label %334

334:                                              ; preds = %330
  %335 = load ptr, ptr %328, align 8, !tbaa !221
  %336 = icmp eq ptr %335, null
  br i1 %336, label %342, label %337

337:                                              ; preds = %330, %334
  %338 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %310, i1 noundef zeroext false) #13
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %345

340:                                              ; preds = %337
  %341 = load i32, ptr %311, align 4, !tbaa !323
  br label %342

342:                                              ; preds = %340, %317, %320, %334
  %343 = phi i32 [ %341, %340 ], [ %312, %317 ], [ %312, %320 ], [ %312, %334 ]
  %344 = and i32 %343, -268435457
  store i32 %344, ptr %311, align 4, !tbaa !323
  br label %360

345:                                              ; preds = %337
  %346 = tail call ptr @Perl_mg_find(ptr noundef nonnull %310, i32 noundef 99) #11
  %347 = icmp eq ptr %346, null
  br i1 %347, label %360, label %348

348:                                              ; preds = %345
  %349 = getelementptr inbounds %struct.magic, ptr %346, i64 0, i32 7
  %350 = load ptr, ptr %349, align 8, !tbaa !569
  %351 = load i8, ptr %350, align 8, !tbaa !572
  %352 = and i8 %351, 1
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %369, label %354

354:                                              ; preds = %348
  %355 = getelementptr inbounds %struct.am_table, ptr %350, i64 0, i32 4
  %356 = sext i32 %2 to i64
  %357 = getelementptr inbounds ptr, ptr %355, i64 %356
  %358 = load ptr, ptr %357, align 8, !tbaa !221
  %359 = icmp eq ptr %358, null
  br i1 %359, label %362, label %592

360:                                              ; preds = %342, %345, %308, %301, %296, %289
  %361 = icmp eq ptr %291, null
  br i1 %361, label %369, label %362, !prof !601

362:                                              ; preds = %354, %360
  %363 = phi ptr [ %291, %360 ], [ %355, %354 ]
  %364 = phi ptr [ %292, %360 ], [ %350, %354 ]
  %365 = phi i32 [ %293, %360 ], [ %2, %354 ]
  %366 = getelementptr inbounds %struct.am_table, ptr %364, i64 0, i32 1
  %367 = load i8, ptr %366, align 1, !tbaa !579
  %368 = icmp ugt i8 %367, 1
  br i1 %368, label %381, label %369, !prof !262

369:                                              ; preds = %348, %362, %360
  %370 = phi i1 [ true, %362 ], [ false, %360 ], [ false, %348 ]
  %371 = phi ptr [ %363, %362 ], [ null, %360 ], [ null, %348 ]
  %372 = phi ptr [ %364, %362 ], [ %292, %360 ], [ %292, %348 ]
  %373 = phi i32 [ %365, %362 ], [ %293, %360 ], [ %293, %348 ]
  br i1 %290, label %427, label %374, !prof !357

374:                                              ; preds = %369
  %375 = getelementptr inbounds %struct.am_table, ptr %292, i64 0, i32 1
  %376 = load i8, ptr %375, align 1, !tbaa !579
  %377 = icmp ugt i8 %376, 1
  %378 = and i32 %3, 8
  %379 = icmp eq i32 %378, 0
  %380 = and i1 %379, %377
  br i1 %380, label %384, label %418, !prof !519

381:                                              ; preds = %362
  %382 = and i32 %3, 8
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %418, !prof !262

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
  ], !prof !602

388:                                              ; preds = %384, %384, %384, %384, %384, %384
  br label %389

389:                                              ; preds = %384, %384, %384, %384, %384, %384, %388
  %390 = phi i32 [ 59, %388 ], [ 58, %384 ], [ 58, %384 ], [ 58, %384 ], [ 58, %384 ], [ 58, %384 ], [ 58, %384 ]
  br i1 %290, label %399, label %391, !prof !310

391:                                              ; preds = %389
  %392 = getelementptr inbounds %struct.am_table, ptr %292, i64 0, i32 1
  %393 = load i8, ptr %392, align 1, !tbaa !579
  %394 = icmp ugt i8 %393, 1
  br i1 %394, label %395, label %399, !prof !262

395:                                              ; preds = %391
  %396 = zext nneg i32 %390 to i64
  %397 = getelementptr inbounds ptr, ptr %291, i64 %396
  %398 = load ptr, ptr %397, align 8, !tbaa !221
  br label %399

399:                                              ; preds = %395, %391, %389
  %400 = phi i32 [ -1, %395 ], [ 0, %391 ], [ 0, %389 ]
  %401 = phi ptr [ %398, %395 ], [ null, %391 ], [ null, %389 ]
  %402 = icmp eq ptr %401, null
  %403 = and i1 %385, %402
  br i1 %403, label %404, label %412, !prof !603

404:                                              ; preds = %399
  %405 = getelementptr inbounds %struct.am_table, ptr %387, i64 0, i32 1
  %406 = load i8, ptr %405, align 1, !tbaa !579
  %407 = icmp ugt i8 %406, 1
  br i1 %407, label %408, label %417

408:                                              ; preds = %404
  %409 = zext nneg i32 %390 to i64
  %410 = getelementptr inbounds ptr, ptr %386, i64 %409
  %411 = load ptr, ptr %410, align 8, !tbaa !221
  br label %412

412:                                              ; preds = %399, %408
  %413 = phi i32 [ 1, %408 ], [ %400, %399 ]
  %414 = phi ptr [ %411, %408 ], [ %401, %399 ]
  %415 = icmp eq ptr %414, null
  br i1 %415, label %416, label %592, !prof !604

416:                                              ; preds = %412
  br i1 %290, label %442, label %431, !prof !525

417:                                              ; preds = %404
  br i1 %290, label %442, label %431, !prof !605

418:                                              ; preds = %384, %100, %374, %381
  %419 = phi i1 [ %290, %381 ], [ false, %374 ], [ false, %100 ], [ %290, %384 ]
  %420 = phi ptr [ %291, %381 ], [ %291, %374 ], [ %77, %100 ], [ %291, %384 ]
  %421 = phi ptr [ %292, %381 ], [ %292, %374 ], [ %73, %100 ], [ %292, %384 ]
  %422 = phi i32 [ %365, %381 ], [ %373, %374 ], [ %95, %100 ], [ -1, %384 ]
  %423 = phi ptr [ %364, %381 ], [ %372, %374 ], [ %73, %100 ], [ %387, %384 ]
  %424 = phi ptr [ %363, %381 ], [ %371, %374 ], [ %77, %100 ], [ %386, %384 ]
  %425 = add i32 %2, -1
  %426 = icmp ult i32 %425, 5
  br i1 %426, label %1103, label %430, !prof !606

427:                                              ; preds = %369
  %428 = add i32 %2, -1
  %429 = icmp ult i32 %428, 5
  br i1 %429, label %1103, label %442, !prof !606

430:                                              ; preds = %418
  br i1 %419, label %442, label %431, !prof !247

431:                                              ; preds = %154, %105, %113, %173, %181, %276, %284, %417, %416, %430
  %432 = phi ptr [ %291, %416 ], [ %420, %430 ], [ %291, %417 ], [ %77, %284 ], [ %77, %276 ], [ %77, %181 ], [ %77, %173 ], [ %77, %113 ], [ %77, %105 ], [ %77, %154 ]
  %433 = phi ptr [ %292, %416 ], [ %421, %430 ], [ %292, %417 ], [ %73, %284 ], [ %73, %276 ], [ %73, %181 ], [ %73, %173 ], [ %73, %113 ], [ %73, %105 ], [ %73, %154 ]
  %434 = phi i32 [ 0, %416 ], [ 0, %430 ], [ 0, %417 ], [ %285, %284 ], [ 0, %276 ], [ 0, %181 ], [ 0, %173 ], [ 0, %113 ], [ 0, %105 ], [ 0, %154 ]
  %435 = phi i32 [ 0, %416 ], [ 0, %430 ], [ 0, %417 ], [ 0, %284 ], [ 0, %276 ], [ 0, %181 ], [ 0, %173 ], [ 1, %113 ], [ 1, %105 ], [ 0, %154 ]
  %436 = phi i32 [ %390, %416 ], [ %422, %430 ], [ %390, %417 ], [ %286, %284 ], [ 32, %276 ], [ 32, %181 ], [ %95, %173 ], [ 32, %113 ], [ 30, %105 ], [ %95, %154 ]
  %437 = phi ptr [ %387, %416 ], [ %423, %430 ], [ %387, %417 ], [ %73, %284 ], [ %73, %276 ], [ %73, %181 ], [ %73, %173 ], [ %73, %113 ], [ %73, %105 ], [ %73, %154 ]
  %438 = phi ptr [ %386, %416 ], [ %424, %430 ], [ %386, %417 ], [ %77, %284 ], [ %77, %276 ], [ %77, %181 ], [ %77, %173 ], [ %77, %113 ], [ %77, %105 ], [ %77, %154 ]
  %439 = getelementptr inbounds ptr, ptr %432, i64 29
  %440 = load ptr, ptr %439, align 8, !tbaa !221
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
  br i1 %450, label %455, label %451, !prof !525

451:                                              ; preds = %442
  %452 = getelementptr inbounds ptr, ptr %449, i64 29
  %453 = load ptr, ptr %452, align 8, !tbaa !221
  %454 = icmp eq ptr %453, null
  br i1 %454, label %455, label %583

455:                                              ; preds = %451, %442
  br i1 %443, label %460, label %456, !prof !525

456:                                              ; preds = %455
  %457 = getelementptr inbounds %struct.am_table, ptr %444, i64 0, i32 1
  %458 = load i8, ptr %457, align 1, !tbaa !579
  %459 = icmp ugt i8 %458, 2
  br i1 %459, label %460, label %465

460:                                              ; preds = %456, %455
  br i1 %450, label %1103, label %461, !prof !525

461:                                              ; preds = %460
  %462 = getelementptr inbounds %struct.am_table, ptr %448, i64 0, i32 1
  %463 = load i8, ptr %462, align 1, !tbaa !579
  %464 = icmp ugt i8 %463, 2
  br i1 %464, label %1103, label %465, !prof !525

465:                                              ; preds = %456, %461
  %466 = add nsw i32 %8, %2
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds [75 x ptr], ptr @PL_AMG_names, i64 0, i64 %467
  %469 = load ptr, ptr %468, align 8, !tbaa !221
  %470 = getelementptr inbounds i8, ptr %469, i64 1
  %471 = and i32 %3, 8
  %472 = icmp eq i32 %471, 0
  %473 = select i1 %472, ptr @.str.38, ptr @.str.37
  %474 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %475 = load i32, ptr %474, align 4, !tbaa !214
  %476 = and i32 %475, 2048
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %522, label %478

478:                                              ; preds = %465
  %479 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %480 = load ptr, ptr %479, align 8, !tbaa !222
  %481 = getelementptr inbounds %struct.sv, ptr %480, i64 0, i32 2
  %482 = load i32, ptr %481, align 4, !tbaa !214
  %483 = and i32 %482, 1048576
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %522, label %485

485:                                              ; preds = %478
  %486 = load ptr, ptr %480, align 8, !tbaa !316
  %487 = load ptr, ptr %486, align 8, !tbaa !591
  %488 = getelementptr inbounds %struct.hv, ptr %487, i64 0, i32 2
  %489 = load i32, ptr %488, align 4, !tbaa !323
  %490 = and i32 %489, 268435456
  %491 = icmp eq i32 %490, 0
  %492 = select i1 %491, ptr @.str.40, ptr @.str.39
  %493 = load ptr, ptr %480, align 8, !tbaa !316
  %494 = load ptr, ptr %493, align 8, !tbaa !591
  %495 = getelementptr inbounds %struct.hv, ptr %494, i64 0, i32 2
  %496 = load i32, ptr %495, align 4, !tbaa !323
  %497 = and i32 %496, 268435456
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %522, label %499

499:                                              ; preds = %485
  %500 = and i32 %496, 33554432
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %518, label %502

502:                                              ; preds = %499
  %503 = getelementptr inbounds %struct.hv, ptr %494, i64 0, i32 3
  %504 = load ptr, ptr %503, align 8, !tbaa !222
  %505 = load ptr, ptr %494, align 8, !tbaa !326
  %506 = getelementptr inbounds %struct.xpvhv, ptr %505, i64 0, i32 3
  %507 = load i64, ptr %506, align 8, !tbaa !327
  %508 = getelementptr ptr, ptr %504, i64 %507
  %509 = getelementptr ptr, ptr %508, i64 1
  %510 = load ptr, ptr %509, align 8, !tbaa !222
  %511 = icmp eq ptr %510, null
  br i1 %511, label %518, label %512

512:                                              ; preds = %502
  %513 = getelementptr i8, ptr %508, i64 36
  %514 = load i32, ptr %513, align 4, !tbaa !329
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %518, label %516

516:                                              ; preds = %512
  %517 = load ptr, ptr %510, align 8, !tbaa !221
  br label %518

518:                                              ; preds = %512, %499, %502, %516
  %519 = phi ptr [ %517, %516 ], [ null, %502 ], [ null, %499 ], [ %510, %512 ]
  %520 = tail call ptr @Perl_newSVhek(ptr noundef %519) #11
  %521 = tail call ptr @Perl_sv_2mortal(ptr noundef %520) #11
  br label %522

522:                                              ; preds = %478, %465, %485, %518
  %523 = phi ptr [ %492, %518 ], [ %492, %485 ], [ @.str.40, %465 ], [ @.str.40, %478 ]
  %524 = phi ptr [ %521, %518 ], [ @PL_sv_no, %485 ], [ @PL_sv_no, %465 ], [ @PL_sv_no, %478 ]
  %525 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %526 = load i32, ptr %525, align 4, !tbaa !214
  %527 = and i32 %526, 2048
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %553, label %529

529:                                              ; preds = %522
  %530 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %531 = load ptr, ptr %530, align 8, !tbaa !222
  %532 = getelementptr inbounds %struct.sv, ptr %531, i64 0, i32 2
  %533 = load i32, ptr %532, align 4, !tbaa !214
  %534 = and i32 %533, 1048576
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %536, label %538

536:                                              ; preds = %529
  %537 = select i1 %472, ptr @.str.42, ptr @.str.7
  br label %578

538:                                              ; preds = %529
  %539 = load ptr, ptr %531, align 8, !tbaa !316
  %540 = load ptr, ptr %539, align 8, !tbaa !591
  %541 = getelementptr inbounds %struct.hv, ptr %540, i64 0, i32 2
  %542 = load i32, ptr %541, align 4, !tbaa !323
  %543 = and i32 %542, 268435456
  %544 = icmp eq i32 %543, 0
  %545 = select i1 %472, ptr @.str.42, ptr @.str.7
  %546 = select i1 %544, ptr %545, ptr @.str.41
  %547 = load ptr, ptr %531, align 8, !tbaa !316
  %548 = load ptr, ptr %547, align 8, !tbaa !591
  %549 = getelementptr inbounds %struct.hv, ptr %548, i64 0, i32 2
  %550 = load i32, ptr %549, align 4, !tbaa !323
  %551 = and i32 %550, 268435456
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %578, label %555

553:                                              ; preds = %522
  %554 = select i1 %472, ptr @.str.42, ptr @.str.7
  br label %578

555:                                              ; preds = %538
  %556 = and i32 %550, 33554432
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %574, label %558

558:                                              ; preds = %555
  %559 = getelementptr inbounds %struct.hv, ptr %548, i64 0, i32 3
  %560 = load ptr, ptr %559, align 8, !tbaa !222
  %561 = load ptr, ptr %548, align 8, !tbaa !326
  %562 = getelementptr inbounds %struct.xpvhv, ptr %561, i64 0, i32 3
  %563 = load i64, ptr %562, align 8, !tbaa !327
  %564 = getelementptr ptr, ptr %560, i64 %563
  %565 = getelementptr ptr, ptr %564, i64 1
  %566 = load ptr, ptr %565, align 8, !tbaa !222
  %567 = icmp eq ptr %566, null
  br i1 %567, label %574, label %568

568:                                              ; preds = %558
  %569 = getelementptr i8, ptr %564, i64 36
  %570 = load i32, ptr %569, align 4, !tbaa !329
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %574, label %572

572:                                              ; preds = %568
  %573 = load ptr, ptr %566, align 8, !tbaa !221
  br label %574

574:                                              ; preds = %568, %555, %558, %572
  %575 = phi ptr [ %573, %572 ], [ null, %558 ], [ null, %555 ], [ %566, %568 ]
  %576 = tail call ptr @Perl_newSVhek(ptr noundef %575) #11
  %577 = tail call ptr @Perl_sv_2mortal(ptr noundef %576) #11
  br label %578

578:                                              ; preds = %536, %574, %538, %553
  %579 = phi ptr [ %546, %574 ], [ %546, %538 ], [ %554, %553 ], [ %537, %536 ]
  %580 = phi ptr [ %577, %574 ], [ @PL_sv_no, %538 ], [ @PL_sv_no, %553 ], [ @PL_sv_no, %536 ]
  %581 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.36, ptr noundef nonnull %470, ptr noundef nonnull %473, ptr noundef nonnull %523, ptr noundef %524, ptr noundef nonnull %579, ptr noundef %580) #11
  %582 = tail call ptr @Perl_sv_2mortal(ptr noundef %581) #11
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.43, ptr noundef %582) #11
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
  ], !prof !607

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
  %615 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !221
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #14
  %616 = load ptr, ptr @PL_top_env, align 8, !tbaa !221
  %617 = getelementptr inbounds %struct.jmpenv, ptr %616, i64 0, i32 3
  %618 = load i8, ptr %617, align 4, !tbaa !608, !range !394, !noundef !395
  br label %700

619:                                              ; preds = %131, %124, %117
  %620 = phi ptr [ %119, %117 ], [ %126, %124 ], [ %133, %131 ]
  %621 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !221
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #14
  %622 = load ptr, ptr @PL_top_env, align 8, !tbaa !221
  %623 = getelementptr inbounds %struct.jmpenv, ptr %622, i64 0, i32 3
  %624 = load i8, ptr %623, align 4, !tbaa !608, !range !394, !noundef !395
  br label %685

625:                                              ; preds = %603, %601, %605, %592, %608, %607, %606
  %626 = phi i1 [ true, %592 ], [ false, %607 ], [ false, %606 ], [ %7, %605 ], [ false, %608 ], [ %602, %601 ], [ %604, %603 ]
  %627 = icmp eq i32 %597, -1
  br i1 %627, label %628, label %672, !prof !610

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
  br i1 %641, label %642, label %649, !prof !526

642:                                              ; preds = %630
  %643 = icmp ne i32 %635, 0
  %644 = and i32 %2, -2
  %645 = icmp eq i32 %644, 6
  %646 = or i1 %645, %643
  %647 = icmp ne i32 %634, 0
  %648 = select i1 %646, i1 true, i1 %647
  br i1 %648, label %651, label %672, !prof !611

649:                                              ; preds = %630
  %650 = icmp eq i32 %634, 0
  br i1 %650, label %672, label %651, !prof !525

651:                                              ; preds = %649, %642
  %652 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %653 = load ptr, ptr %652, align 8, !tbaa !222
  %654 = getelementptr inbounds %struct.sv, ptr %653, i64 0, i32 1
  %655 = load i32, ptr %654, align 8, !tbaa !302
  %656 = icmp ugt i32 %655, 1
  br i1 %656, label %657, label %672

657:                                              ; preds = %651
  %658 = tail call ptr @Perl_amagic_call(ptr noundef nonnull %0, ptr noundef nonnull @PL_sv_undef, i32 noundef 12, i32 noundef 9) #13
  %659 = icmp eq ptr %658, null
  br i1 %659, label %672, label %660

660:                                              ; preds = %657
  store ptr %658, ptr %652, align 8, !tbaa !222
  %661 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %662 = load i32, ptr %661, align 4, !tbaa !214
  %663 = and i32 %662, 4194304
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %667, label %665

665:                                              ; preds = %660
  %666 = tail call i32 @Perl_mg_set(ptr noundef nonnull %0) #11
  br label %667

667:                                              ; preds = %660, %665
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %653) #13
  %668 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !221
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #14
  %669 = load ptr, ptr @PL_top_env, align 8, !tbaa !221
  %670 = getelementptr inbounds %struct.jmpenv, ptr %669, i64 0, i32 3
  %671 = load i8, ptr %670, align 4, !tbaa !608, !range !394, !noundef !395
  br i1 %632, label %700, label %685, !prof !526

672:                                              ; preds = %651, %657, %642, %649, %625
  %673 = phi i1 [ %632, %651 ], [ %632, %657 ], [ %632, %642 ], [ %632, %649 ], [ %626, %625 ]
  %674 = phi i32 [ %633, %651 ], [ %633, %657 ], [ %633, %642 ], [ %633, %649 ], [ %593, %625 ]
  %675 = phi i1 [ %636, %651 ], [ %636, %657 ], [ %636, %642 ], [ %636, %649 ], [ %595, %625 ]
  %676 = phi i64 [ %637, %651 ], [ %637, %657 ], [ %637, %642 ], [ %637, %649 ], [ %596, %625 ]
  %677 = phi i32 [ -1, %651 ], [ -1, %657 ], [ -1, %642 ], [ -1, %649 ], [ %597, %625 ]
  %678 = phi ptr [ %639, %651 ], [ %639, %657 ], [ %639, %642 ], [ %639, %649 ], [ %599, %625 ]
  %679 = phi ptr [ %640, %651 ], [ %640, %657 ], [ %640, %642 ], [ %640, %649 ], [ %1, %625 ]
  %680 = phi i32 [ %635, %651 ], [ %635, %657 ], [ 0, %642 ], [ %635, %649 ], [ %6, %625 ]
  %681 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !221
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #14
  %682 = load ptr, ptr @PL_top_env, align 8, !tbaa !221
  %683 = getelementptr inbounds %struct.jmpenv, ptr %682, i64 0, i32 3
  %684 = load i8, ptr %683, align 4, !tbaa !608, !range !394, !noundef !395
  br i1 %673, label %700, label %685, !prof !526

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
  store i8 1, ptr %696, align 4, !tbaa !608
  %697 = getelementptr inbounds i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %697, i8 0, i64 40, i1 false)
  %698 = getelementptr inbounds %struct.binop, ptr %5, i64 0, i32 8
  store ptr %5, ptr %698, align 8, !tbaa !612
  store ptr null, ptr %5, align 8, !tbaa !614
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
  %712 = load ptr, ptr @PL_op, align 8, !tbaa !221
  %713 = getelementptr inbounds %struct.op, ptr %712, i64 0, i32 5
  %714 = load i8, ptr %713, align 2, !tbaa !615
  %715 = and i8 %714, 3
  %716 = icmp eq i8 %715, 0
  br i1 %716, label %719, label %717, !prof !526

717:                                              ; preds = %700
  %718 = zext nneg i8 %715 to i32
  br label %722

719:                                              ; preds = %700
  %720 = tail call i32 @Perl_block_gimme() #11
  %721 = load ptr, ptr @PL_top_env, align 8, !tbaa !221
  br label %722

722:                                              ; preds = %717, %719
  %723 = phi ptr [ %701, %717 ], [ %721, %719 ]
  %724 = phi i32 [ %718, %717 ], [ %720, %719 ]
  %725 = getelementptr inbounds %struct.jmpenv, ptr %723, i64 0, i32 3
  store i8 1, ptr %725, align 4, !tbaa !608
  %726 = getelementptr inbounds i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %726, i8 0, i64 40, i1 false)
  %727 = getelementptr inbounds %struct.binop, ptr %5, i64 0, i32 8
  store ptr %5, ptr %727, align 8, !tbaa !612
  store ptr null, ptr %5, align 8, !tbaa !614
  %728 = getelementptr inbounds %struct.binop, ptr %5, i64 0, i32 5
  switch i32 %724, label %734 [
    i32 1, label %729
    i32 3, label %730
  ], !prof !616

729:                                              ; preds = %722
  store i8 65, ptr %728, align 2, !tbaa !617
  br label %747

730:                                              ; preds = %722
  %731 = and i32 %3, 64
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %734, label %733

733:                                              ; preds = %730
  store i8 67, ptr %728, align 2, !tbaa !617
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
  store i8 66, ptr %745, align 2, !tbaa !617
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
  %759 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !221
  %760 = getelementptr inbounds %struct.stackinfo, ptr %759, i64 0, i32 3
  %761 = load ptr, ptr %760, align 8, !tbaa !618
  %762 = icmp eq ptr %761, null
  br i1 %762, label %763, label %768, !prof !596

763:                                              ; preds = %747
  %764 = call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #11
  %765 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !221
  %766 = getelementptr inbounds %struct.stackinfo, ptr %764, i64 0, i32 2
  store ptr %765, ptr %766, align 8, !tbaa !620
  %767 = getelementptr inbounds %struct.stackinfo, ptr %765, i64 0, i32 3
  store ptr %764, ptr %767, align 8, !tbaa !618
  br label %768

768:                                              ; preds = %763, %747
  %769 = phi ptr [ %761, %747 ], [ %764, %763 ]
  %770 = getelementptr inbounds %struct.stackinfo, ptr %769, i64 0, i32 6
  store i32 5, ptr %770, align 8, !tbaa !621
  %771 = getelementptr inbounds %struct.stackinfo, ptr %769, i64 0, i32 4
  store i32 -1, ptr %771, align 8, !tbaa !622
  %772 = load ptr, ptr %769, align 8, !tbaa !623
  %773 = load ptr, ptr %772, align 8, !tbaa !347
  %774 = getelementptr inbounds %struct.xpvav, ptr %773, i64 0, i32 2
  store i64 0, ptr %774, align 8, !tbaa !349
  %775 = load ptr, ptr @PL_stack_base, align 8, !tbaa !221
  %776 = ptrtoint ptr %749 to i64
  %777 = ptrtoint ptr %775 to i64
  %778 = sub i64 %776, %777
  %779 = ashr exact i64 %778, 3
  %780 = load ptr, ptr @PL_curstack, align 8, !tbaa !221
  %781 = load ptr, ptr %780, align 8, !tbaa !347
  %782 = getelementptr inbounds %struct.xpvav, ptr %781, i64 0, i32 2
  store i64 %779, ptr %782, align 8, !tbaa !349
  %783 = getelementptr inbounds %struct.av, ptr %772, i64 0, i32 3
  %784 = load ptr, ptr %783, align 8, !tbaa !222
  store ptr %784, ptr @PL_stack_base, align 8, !tbaa !221
  %785 = load ptr, ptr %769, align 8, !tbaa !623
  %786 = load ptr, ptr %785, align 8, !tbaa !347
  %787 = getelementptr inbounds %struct.xpvav, ptr %786, i64 0, i32 3
  %788 = load i64, ptr %787, align 8, !tbaa !624
  %789 = getelementptr inbounds ptr, ptr %784, i64 %788
  store ptr %789, ptr @PL_stack_max, align 8, !tbaa !221
  %790 = load ptr, ptr %769, align 8, !tbaa !623
  %791 = load ptr, ptr %790, align 8, !tbaa !347
  %792 = getelementptr inbounds %struct.xpvav, ptr %791, i64 0, i32 2
  %793 = load i64, ptr %792, align 8, !tbaa !349
  %794 = getelementptr inbounds ptr, ptr %784, i64 %793
  store ptr %794, ptr @PL_stack_sp, align 8, !tbaa !221
  %795 = load ptr, ptr %769, align 8, !tbaa !623
  store ptr %795, ptr @PL_curstack, align 8, !tbaa !221
  store ptr %769, ptr @PL_curstackinfo, align 8, !tbaa !221
  call void @Perl_push_scope() #11
  %796 = load ptr, ptr @PL_op, align 8, !tbaa !221
  call void @Perl_save_pushptr(ptr noundef %796, i32 noundef 18) #11
  store ptr %5, ptr @PL_op, align 8, !tbaa !221
  %797 = load i32, ptr @PL_perldb, align 4, !tbaa !239
  %798 = and i32 %797, 1
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %808, label %800, !prof !525

800:                                              ; preds = %768
  %801 = load ptr, ptr @PL_curstash, align 8, !tbaa !221
  %802 = load ptr, ptr @PL_debstash, align 8, !tbaa !221
  %803 = icmp eq ptr %801, %802
  br i1 %803, label %808, label %804

804:                                              ; preds = %800
  %805 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 6
  %806 = load i8, ptr %805, align 1, !tbaa !625
  %807 = or i8 %806, 64
  store i8 %807, ptr %805, align 1, !tbaa !625
  br label %808

808:                                              ; preds = %804, %800, %768
  %809 = call ptr @Perl_pp_pushmark() #11
  %810 = load ptr, ptr @PL_stack_max, align 8, !tbaa !221
  %811 = ptrtoint ptr %810 to i64
  %812 = ptrtoint ptr %794 to i64
  %813 = sub i64 %811, %812
  %814 = ashr exact i64 %813, 3
  %815 = icmp slt i64 %814, %755
  br i1 %815, label %816, label %818, !prof !596

816:                                              ; preds = %808
  %817 = call ptr @Perl_stack_grow(ptr noundef %794, ptr noundef %794, i64 noundef %755) #11
  br label %818

818:                                              ; preds = %808, %816
  %819 = phi ptr [ %817, %816 ], [ %794, %808 ]
  %820 = icmp sgt i32 %754, 0
  %821 = select i1 %820, ptr %752, ptr %751, !prof !596
  %822 = getelementptr inbounds ptr, ptr %819, i64 1
  store ptr %821, ptr %822, align 8, !tbaa !221
  %823 = select i1 %820, ptr %751, ptr %752, !prof !596
  %824 = getelementptr inbounds ptr, ptr %819, i64 2
  store ptr %823, ptr %824, align 8, !tbaa !221
  %825 = icmp eq i32 %750, 0
  %826 = select i1 %825, ptr @PL_sv_no, ptr @PL_sv_undef
  %827 = select i1 %820, ptr @PL_sv_yes, ptr %826, !prof !596
  %828 = getelementptr inbounds ptr, ptr %819, i64 3
  store ptr %827, ptr %828, align 8, !tbaa !221
  br i1 %756, label %829, label %834, !prof !525

829:                                              ; preds = %818
  %830 = and i32 %3, 128
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %850, label %832, !prof !525

832:                                              ; preds = %829
  %833 = getelementptr inbounds ptr, ptr %819, i64 4
  store ptr @PL_sv_undef, ptr %833, align 8, !tbaa !221
  br label %848

834:                                              ; preds = %818
  %835 = add nsw i32 %8, %2
  %836 = sext i32 %835 to i64
  %837 = getelementptr inbounds [75 x ptr], ptr @PL_AMG_names, i64 0, i64 %836
  %838 = load ptr, ptr %837, align 8, !tbaa !221
  %839 = getelementptr inbounds i8, ptr %838, i64 1
  %840 = getelementptr inbounds [75 x i8], ptr @PL_AMG_namelens, i64 0, i64 %836
  %841 = load i8, ptr %840, align 1, !tbaa !222
  %842 = zext i8 %841 to i64
  %843 = add nsw i64 %842, -1
  %844 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %839, i64 noundef %843, i32 noundef 524288) #11
  %845 = getelementptr inbounds ptr, ptr %819, i64 4
  store ptr %844, ptr %845, align 8, !tbaa !221
  %846 = and i32 %3, 128
  %847 = icmp eq i32 %846, 0
  br i1 %847, label %850, label %848, !prof !599

848:                                              ; preds = %832, %834
  %849 = getelementptr inbounds ptr, ptr %819, i64 5
  store ptr @PL_sv_yes, ptr %849, align 8, !tbaa !221
  br label %850

850:                                              ; preds = %829, %848, %834
  %851 = phi ptr [ %849, %848 ], [ %845, %834 ], [ %828, %829 ]
  %852 = getelementptr inbounds ptr, ptr %851, i64 1
  store ptr %753, ptr %852, align 8, !tbaa !221
  store ptr %852, ptr @PL_stack_sp, align 8, !tbaa !221
  %853 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !221
  %854 = load i32, ptr %853, align 4, !tbaa !239
  %855 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @PL_ppaddr, i64 0, i64 185), align 8, !tbaa !221
  %856 = call ptr %855() #11
  store ptr %856, ptr @PL_op, align 8, !tbaa !221
  %857 = icmp eq ptr %856, null
  br i1 %857, label %861, label %858, !prof !525

858:                                              ; preds = %850
  %859 = load ptr, ptr @PL_runops, align 8, !tbaa !221
  %860 = call i32 %859() #11
  br label %861

861:                                              ; preds = %858, %850
  call void @Perl_pop_scope() #11
  %862 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !221
  %863 = load ptr, ptr @PL_stack_base, align 8, !tbaa !221
  %864 = sext i32 %854 to i64
  %865 = getelementptr ptr, ptr %863, i64 %864
  %866 = ptrtoint ptr %862 to i64
  %867 = ptrtoint ptr %865 to i64
  %868 = sub i64 %866, %867
  switch i32 %758, label %891 [
    i32 1, label %894
    i32 3, label %869
  ], !prof !626

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
  %887 = load ptr, ptr %884, align 8, !tbaa !221
  %888 = call ptr @Perl_av_store(ptr noundef %874, i64 noundef %885, ptr noundef %887) #11
  %889 = and i64 %885, 4294967295
  %890 = icmp eq i64 %889, 0
  br i1 %890, label %894, label %882, !llvm.loop !627

891:                                              ; preds = %869, %861
  %892 = getelementptr inbounds ptr, ptr %862, i64 -1
  %893 = load ptr, ptr %862, align 8, !tbaa !221
  br label %894

894:                                              ; preds = %882, %872, %861, %891
  %895 = phi ptr [ %892, %891 ], [ %865, %861 ], [ %862, %872 ], [ %886, %882 ]
  %896 = phi ptr [ %893, %891 ], [ @PL_sv_undef, %861 ], [ %874, %872 ], [ %874, %882 ]
  store ptr %895, ptr @PL_stack_sp, align 8, !tbaa !221
  %897 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !221
  %898 = getelementptr inbounds %struct.stackinfo, ptr %897, i64 0, i32 2
  %899 = load ptr, ptr %898, align 8, !tbaa !620
  %900 = icmp eq ptr %899, null
  br i1 %900, label %901, label %902, !prof !596

901:                                              ; preds = %894
  call void @Perl_croak_popstack() #11
  br label %902

902:                                              ; preds = %894, %901
  %903 = load ptr, ptr @PL_stack_base, align 8, !tbaa !221
  %904 = ptrtoint ptr %895 to i64
  %905 = ptrtoint ptr %903 to i64
  %906 = sub i64 %904, %905
  %907 = ashr exact i64 %906, 3
  %908 = load ptr, ptr @PL_curstack, align 8, !tbaa !221
  %909 = load ptr, ptr %908, align 8, !tbaa !347
  %910 = getelementptr inbounds %struct.xpvav, ptr %909, i64 0, i32 2
  store i64 %907, ptr %910, align 8, !tbaa !349
  %911 = load ptr, ptr %899, align 8, !tbaa !623
  %912 = getelementptr inbounds %struct.av, ptr %911, i64 0, i32 3
  %913 = load ptr, ptr %912, align 8, !tbaa !222
  store ptr %913, ptr @PL_stack_base, align 8, !tbaa !221
  %914 = load ptr, ptr %899, align 8, !tbaa !623
  %915 = load ptr, ptr %914, align 8, !tbaa !347
  %916 = getelementptr inbounds %struct.xpvav, ptr %915, i64 0, i32 3
  %917 = load i64, ptr %916, align 8, !tbaa !624
  %918 = getelementptr inbounds ptr, ptr %913, i64 %917
  store ptr %918, ptr @PL_stack_max, align 8, !tbaa !221
  %919 = load ptr, ptr %899, align 8, !tbaa !623
  %920 = load ptr, ptr %919, align 8, !tbaa !347
  %921 = getelementptr inbounds %struct.xpvav, ptr %920, i64 0, i32 2
  %922 = load i64, ptr %921, align 8, !tbaa !349
  %923 = getelementptr inbounds ptr, ptr %913, i64 %922
  store ptr %923, ptr @PL_stack_sp, align 8, !tbaa !221
  %924 = load ptr, ptr %899, align 8, !tbaa !623
  store ptr %924, ptr @PL_curstack, align 8, !tbaa !221
  store ptr %899, ptr @PL_curstackinfo, align 8, !tbaa !221
  %925 = load ptr, ptr @PL_top_env, align 8, !tbaa !221
  %926 = getelementptr inbounds %struct.jmpenv, ptr %925, i64 0, i32 3
  store i8 %748, ptr %926, align 4, !tbaa !608
  %927 = icmp eq i32 %757, 0
  br i1 %927, label %1089, label %928, !prof !526

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
  ], !prof !628

929:                                              ; preds = %928, %928
  %930 = getelementptr inbounds %struct.sv, ptr %896, i64 0, i32 2
  %931 = load i32, ptr %930, align 4, !tbaa !214
  %932 = and i32 %931, 2097408
  %933 = icmp eq i32 %932, 256
  br i1 %933, label %934, label %938

934:                                              ; preds = %929
  %935 = load ptr, ptr %896, align 8, !tbaa !316
  %936 = getelementptr inbounds %struct.xpviv, ptr %935, i64 0, i32 4
  %937 = load i64, ptr %936, align 8, !tbaa !222
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
  %946 = load i32, ptr %945, align 4, !tbaa !214
  %947 = and i32 %946, 2097408
  %948 = icmp eq i32 %947, 256
  br i1 %948, label %949, label %953

949:                                              ; preds = %944
  %950 = load ptr, ptr %896, align 8, !tbaa !316
  %951 = getelementptr inbounds %struct.xpviv, ptr %950, i64 0, i32 4
  %952 = load i64, ptr %951, align 8, !tbaa !222
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
  %961 = load i32, ptr %960, align 4, !tbaa !214
  %962 = and i32 %961, 2097408
  %963 = icmp eq i32 %962, 256
  br i1 %963, label %964, label %968

964:                                              ; preds = %959
  %965 = load ptr, ptr %896, align 8, !tbaa !316
  %966 = getelementptr inbounds %struct.xpviv, ptr %965, i64 0, i32 4
  %967 = load i64, ptr %966, align 8, !tbaa !222
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
  %976 = load i32, ptr %975, align 4, !tbaa !214
  %977 = and i32 %976, 2097408
  %978 = icmp eq i32 %977, 256
  br i1 %978, label %979, label %983

979:                                              ; preds = %974
  %980 = load ptr, ptr %896, align 8, !tbaa !316
  %981 = getelementptr inbounds %struct.xpviv, ptr %980, i64 0, i32 4
  %982 = load i64, ptr %981, align 8, !tbaa !222
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
  %991 = load i32, ptr %990, align 4, !tbaa !214
  %992 = and i32 %991, 2097408
  %993 = icmp eq i32 %992, 256
  br i1 %993, label %994, label %998, !prof !262

994:                                              ; preds = %989
  %995 = load ptr, ptr %896, align 8, !tbaa !316
  %996 = getelementptr inbounds %struct.xpviv, ptr %995, i64 0, i32 4
  %997 = load i64, ptr %996, align 8, !tbaa !222
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
  %1006 = load i32, ptr %1005, align 4, !tbaa !214
  %1007 = and i32 %1006, 2097408
  %1008 = icmp eq i32 %1007, 256
  br i1 %1008, label %1009, label %1013

1009:                                             ; preds = %1004
  %1010 = load ptr, ptr %896, align 8, !tbaa !316
  %1011 = getelementptr inbounds %struct.xpviv, ptr %1010, i64 0, i32 4
  %1012 = load i64, ptr %1011, align 8, !tbaa !222
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
  %1026 = load i32, ptr %1025, align 4, !tbaa !214
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
  %1044 = load ptr, ptr %896, align 8, !tbaa !316
  %1045 = icmp eq ptr %1044, null
  br i1 %1045, label %1080, label %1046

1046:                                             ; preds = %1043
  %1047 = getelementptr inbounds %struct.xpv, ptr %1044, i64 0, i32 2
  %1048 = load i64, ptr %1047, align 8, !tbaa !248
  %1049 = icmp ugt i64 %1048, 1
  br i1 %1049, label %1080, label %1050

1050:                                             ; preds = %1046
  %1051 = icmp eq i64 %1048, 0
  br i1 %1051, label %1080, label %1052

1052:                                             ; preds = %1050
  %1053 = getelementptr inbounds %struct.sv, ptr %896, i64 0, i32 3
  %1054 = load ptr, ptr %1053, align 8, !tbaa !222
  %1055 = load i8, ptr %1054, align 1, !tbaa !222
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
  %1064 = load ptr, ptr %896, align 8, !tbaa !316
  %1065 = getelementptr inbounds %struct.xpviv, ptr %1064, i64 0, i32 4
  %1066 = load i64, ptr %1065, align 8, !tbaa !222
  %1067 = icmp eq i64 %1066, 0
  br i1 %1067, label %1068, label %1080

1068:                                             ; preds = %1063, %1060
  %1069 = and i32 %1026, 512
  %1070 = icmp eq i32 %1069, 0
  br i1 %1070, label %1080, label %1071

1071:                                             ; preds = %1068
  %1072 = load ptr, ptr %896, align 8, !tbaa !316
  %1073 = getelementptr inbounds %struct.xpvnv, ptr %1072, i64 0, i32 5
  %1074 = load double, ptr %1073, align 8, !tbaa !222
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
  br i1 %1090, label %1091, label %1101, !prof !310

1091:                                             ; preds = %1089
  %1092 = getelementptr inbounds %struct.sv, ptr %896, i64 0, i32 2
  %1093 = load i32, ptr %1092, align 4, !tbaa !214
  %1094 = and i32 %1093, 2048
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %1096, label %1097

1096:                                             ; preds = %1091
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.44) #11
  br label %1097

1097:                                             ; preds = %1096, %1091
  %1098 = getelementptr inbounds %struct.sv, ptr %896, i64 0, i32 3
  %1099 = load ptr, ptr %1098, align 8, !tbaa !222
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
define dso_local noundef zeroext i1 @Perl_try_amagic_bin(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !629 {
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !221
  %4 = getelementptr inbounds ptr, ptr %3, i64 -1
  %5 = load ptr, ptr %4, align 8, !tbaa !221
  %6 = load ptr, ptr %3, align 8, !tbaa !221
  %7 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !214
  %9 = and i32 %8, 2097152
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11, !prof !630

11:                                               ; preds = %2
  %12 = tail call i32 @Perl_mg_get(ptr noundef nonnull %5) #11
  br label %13

13:                                               ; preds = %2, %11
  %14 = icmp eq ptr %5, %6
  br i1 %14, label %22, label %15, !prof !631

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !214
  %18 = and i32 %17, 2097152
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !630

20:                                               ; preds = %15
  %21 = tail call i32 @Perl_mg_get(ptr noundef nonnull %6) #11
  br label %22

22:                                               ; preds = %20, %15, %13
  %23 = load i32, ptr %7, align 4, !tbaa !214
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %40, label %26, !prof !632

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !222
  %29 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !214
  %31 = and i32 %30, 1048576
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33, !prof !310

33:                                               ; preds = %26
  %34 = load ptr, ptr %28, align 8, !tbaa !316
  %35 = load ptr, ptr %34, align 8, !tbaa !591
  %36 = getelementptr inbounds %struct.hv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !323
  %38 = and i32 %37, 268435456
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %59, !prof !310

40:                                               ; preds = %33, %26, %22
  %41 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !214
  %43 = and i32 %42, 2048
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %107, label %45, !prof !633

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !222
  %48 = getelementptr inbounds %struct.sv, ptr %47, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !214
  %50 = and i32 %49, 1048576
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %107, label %52

52:                                               ; preds = %45
  %53 = load ptr, ptr %47, align 8, !tbaa !316
  %54 = load ptr, ptr %53, align 8, !tbaa !591
  %55 = getelementptr inbounds %struct.hv, ptr %54, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !323
  %57 = and i32 %56, 268435456
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %107, label %59

59:                                               ; preds = %52, %33
  %60 = and i32 %1, 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %70, label %62, !prof !262

62:                                               ; preds = %59
  %63 = load ptr, ptr @PL_op, align 8, !tbaa !221
  %64 = getelementptr inbounds %struct.op, ptr %63, i64 0, i32 5
  %65 = load i8, ptr %64, align 2, !tbaa !615
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
  br i1 %75, label %107, label %76, !prof !310

76:                                               ; preds = %70
  %77 = and i32 %1, 32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %105, !prof !310

79:                                               ; preds = %76
  %80 = load ptr, ptr @PL_op, align 8, !tbaa !221
  %81 = getelementptr inbounds %struct.op, ptr %80, i64 0, i32 5
  %82 = load i8, ptr %81, align 2, !tbaa !615
  %83 = and i8 %82, 64
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %79
  %86 = load ptr, ptr %4, align 8, !tbaa !221
  br label %97

87:                                               ; preds = %79
  %88 = load ptr, ptr @PL_curpad, align 8, !tbaa !221
  %89 = getelementptr inbounds %struct.op, ptr %80, i64 0, i32 3
  %90 = load i64, ptr %89, align 8, !tbaa !593
  %91 = getelementptr inbounds ptr, ptr %88, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !221
  %93 = getelementptr inbounds %struct.sv, ptr %92, i64 0, i32 2
  %94 = load i32, ptr %93, align 4, !tbaa !214
  %95 = and i32 %94, 131072
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %85, %87
  %98 = phi ptr [ %92, %87 ], [ %86, %85 ]
  tail call void @Perl_sv_setsv_flags(ptr noundef %98, ptr noundef nonnull %74, i32 noundef 1538) #11
  %99 = getelementptr inbounds %struct.sv, ptr %98, i64 0, i32 2
  %100 = load i32, ptr %99, align 4, !tbaa !214
  %101 = and i32 %100, 4194304
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %97
  %104 = tail call i32 @Perl_mg_set(ptr noundef nonnull %98) #11
  br label %105

105:                                              ; preds = %76, %87, %103, %97
  %106 = phi ptr [ %74, %76 ], [ %98, %97 ], [ %98, %103 ], [ %74, %87 ]
  store ptr %106, ptr %4, align 8, !tbaa !221
  store ptr %4, ptr @PL_stack_sp, align 8, !tbaa !221
  br label %151

107:                                              ; preds = %70, %52, %45, %40
  br i1 %14, label %108, label %133, !prof !634

108:                                              ; preds = %107
  %109 = load i32, ptr %7, align 4, !tbaa !214
  %110 = and i32 %109, 2097152
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %133, label %112

112:                                              ; preds = %108
  %113 = tail call ptr @Perl_sv_newmortal() #11
  store ptr %113, ptr %4, align 8, !tbaa !221
  %114 = load i32, ptr %7, align 4, !tbaa !214
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
  %128 = load i32, ptr %7, align 4, !tbaa !214
  %129 = and i32 %128, 2097152
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %126
  %132 = tail call i32 @Perl_mg_get(ptr noundef nonnull %5) #11
  br label %133

133:                                              ; preds = %131, %126, %108, %107
  %134 = and i32 %1, 16
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %151, label %136, !prof !635

136:                                              ; preds = %133
  %137 = load ptr, ptr %4, align 8, !tbaa !221
  %138 = getelementptr inbounds %struct.sv, ptr %137, i64 0, i32 2
  %139 = load i32, ptr %138, align 4, !tbaa !214
  %140 = and i32 %139, 2048
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142, !prof !525

142:                                              ; preds = %136
  %143 = tail call ptr @Perl_sv_2num(ptr noundef nonnull %137) #11
  store ptr %143, ptr %4, align 8, !tbaa !221
  br label %144

144:                                              ; preds = %142, %136
  %145 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %146 = load i32, ptr %145, align 4, !tbaa !214
  %147 = and i32 %146, 2048
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %151, label %149, !prof !525

149:                                              ; preds = %144
  %150 = tail call ptr @Perl_sv_2num(ptr noundef nonnull %6) #11
  store ptr %150, ptr %3, align 8, !tbaa !221
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
define dso_local ptr @Perl_amagic_deref_call(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !636 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !214
  %5 = and i32 %4, 2048
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %66, label %7, !prof !637

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !222
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !214
  %12 = and i32 %11, 1048576
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %66, label %14, !prof !637

14:                                               ; preds = %7
  %15 = load ptr, ptr %9, align 8, !tbaa !316
  %16 = load ptr, ptr %15, align 8, !tbaa !591
  %17 = getelementptr inbounds %struct.hv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !323
  %19 = and i32 %18, 268435456
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %66, label %21, !prof !637

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.hv, ptr %16, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !222
  %24 = load ptr, ptr %16, align 8, !tbaa !326
  %25 = getelementptr inbounds %struct.xpvhv, ptr %24, i64 0, i32 3
  %26 = load i64, ptr %25, align 8, !tbaa !327
  %27 = getelementptr ptr, ptr %23, i64 %26
  %28 = getelementptr i8, ptr %27, i64 60
  %29 = load i32, ptr %28, align 4, !tbaa !534
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %66, !prof !638

32:                                               ; preds = %21, %59
  %33 = phi ptr [ %34, %59 ], [ %0, %21 ]
  %34 = tail call ptr @Perl_amagic_call(ptr noundef nonnull %33, ptr noundef nonnull @PL_sv_undef, i32 noundef %1, i32 noundef 9) #13
  %35 = icmp eq ptr %34, null
  br i1 %35, label %66, label %36, !prof !637

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !214
  %39 = and i32 %38, 2048
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42, !prof !637

41:                                               ; preds = %36
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.34) #11
  br label %42

42:                                               ; preds = %41, %36
  %43 = icmp eq ptr %34, %33
  br i1 %43, label %66, label %44, !prof !638

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !222
  %47 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !222
  %49 = icmp eq ptr %46, %48
  br i1 %49, label %66, label %50

50:                                               ; preds = %44
  %51 = load i32, ptr %37, align 4, !tbaa !214
  %52 = and i32 %51, 2048
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !214
  %57 = and i32 %56, 1048576
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %54
  %60 = load ptr, ptr %46, align 8, !tbaa !316
  %61 = load ptr, ptr %60, align 8, !tbaa !591
  %62 = getelementptr inbounds %struct.hv, ptr %61, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !323
  %64 = and i32 %63, 268435456
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %32, !llvm.loop !639

66:                                               ; preds = %32, %59, %54, %50, %42, %44, %21, %2, %7, %14
  %67 = phi ptr [ %0, %14 ], [ %0, %7 ], [ %0, %2 ], [ %0, %21 ], [ %33, %32 ], [ %34, %50 ], [ %34, %54 ], [ %34, %59 ], [ %33, %42 ], [ %34, %44 ]
  ret ptr %67
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @Perl_amagic_is_enabled(i32 noundef %0) local_unnamed_addr #0 !prof !272 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_curcop, align 8, !tbaa !221
  %4 = getelementptr inbounds %struct.cop, ptr %3, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !640
  %6 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %5, ptr noundef nonnull @.str.35, i64 noundef 11, i32 noundef 0, i32 noundef 0) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %50, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !214
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
  %27 = load ptr, ptr %6, align 8, !tbaa !316
  %28 = getelementptr inbounds %struct.xpv, ptr %27, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !248
  store i64 %29, ptr %2, align 8, !tbaa !317
  %30 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !222
  br label %35

32:                                               ; preds = %22
  %33 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %6, ptr noundef nonnull %2, i32 noundef 2) #11
  %34 = load i64, ptr %2, align 8, !tbaa !317
  br label %35

35:                                               ; preds = %32, %26
  %36 = phi i64 [ %29, %26 ], [ %34, %32 ]
  %37 = phi ptr [ %31, %26 ], [ %33, %32 ]
  %38 = sext i32 %23 to i64
  %39 = icmp ugt i64 %36, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = getelementptr inbounds i8, ptr %37, i64 %38
  %42 = load i8, ptr %41, align 1, !tbaa !222
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
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare double @Perl_sv_2nv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_block_gimme() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_new_stackinfo(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

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
define dso_local void @Perl_gv_try_downgrade(ptr noundef %0) local_unnamed_addr #0 !prof !641 {
  %2 = load i32, ptr @PL_phase, align 4, !tbaa !239
  %3 = icmp eq i32 %2, 6
  br i1 %3, label %165, label %4, !prof !642

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !643
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %165, !prof !644

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !235
  %11 = and i32 %10, 152158463
  %12 = icmp eq i32 %11, 32777
  br i1 %12, label %13, label %165, !prof !645

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !222
  %16 = icmp eq ptr %15, null
  br i1 %16, label %165, label %17, !prof !646

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !226
  %19 = getelementptr inbounds %struct.xpvgv, ptr %18, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !259
  %21 = and i64 %20, 1
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %165, !prof !647

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.gp, ptr %15, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !281
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %165, !prof !648

27:                                               ; preds = %23
  %28 = load ptr, ptr %15, align 8, !tbaa !237
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %165, !prof !649

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.gp, ptr %15, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !241
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %165, !prof !650

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.gp, ptr %15, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !242
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %165, !prof !651

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.gp, ptr %15, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !438
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %165, !prof !652

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.gp, ptr %15, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !300
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %165, !prof !653

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.gp, ptr %15, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !274
  %49 = icmp eq ptr %48, %0
  br i1 %49, label %50, label %165, !prof !653

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.xpvgv, ptr %18, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !222
  %53 = icmp eq ptr %52, null
  br i1 %53, label %165, label %54, !prof !654

54:                                               ; preds = %50
  %55 = load ptr, ptr @PL_statgv, align 8, !tbaa !221
  %56 = icmp eq ptr %55, %0
  %57 = load ptr, ptr @PL_last_in_gv, align 8
  %58 = icmp eq ptr %57, %0
  %59 = select i1 %56, i1 true, i1 %58
  %60 = load ptr, ptr @PL_stderrgv, align 8
  %61 = icmp eq ptr %60, %0
  %62 = select i1 %59, i1 true, i1 %61
  br i1 %62, label %165, label %63, !prof !655

63:                                               ; preds = %54
  %64 = and i32 %10, 14680064
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %79, label %66, !prof !656

66:                                               ; preds = %63
  %67 = and i32 %10, 6291456
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %165, !prof !657

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.xpvmg, ptr %18, i64 0, i32 1
  br label %71

71:                                               ; preds = %75, %69
  %72 = phi ptr [ %70, %69 ], [ %73, %75 ]
  %73 = load ptr, ptr %72, align 8, !tbaa !222
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75, !prof !658

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.magic, ptr %73, i64 0, i32 3
  %77 = load i8, ptr %76, align 2, !tbaa !659
  %78 = icmp eq i8 %77, 60
  br i1 %78, label %71, label %165, !prof !660, !llvm.loop !661

79:                                               ; preds = %71, %63
  %80 = getelementptr inbounds %struct.gp, ptr %15, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !263
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %97, !prof !662

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.xpvgv, ptr %18, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !222
  %86 = getelementptr inbounds %struct.hek, ptr %85, i64 0, i32 2
  %87 = getelementptr inbounds %struct.hek, ptr %85, i64 0, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !228
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, ptr %86, i64 %89
  %91 = getelementptr inbounds i8, ptr %90, i64 1
  %92 = load i8, ptr %91, align 1, !tbaa !222
  %93 = and i8 %92, 1
  %94 = zext nneg i8 %93 to i32
  %95 = load i32, ptr %85, align 4, !tbaa !311
  %96 = tail call ptr @Perl_hv_common(ptr noundef nonnull %52, ptr noundef null, ptr noundef nonnull %86, i64 noundef %89, i32 noundef %94, i32 noundef 68, ptr noundef null, i32 noundef %95) #11
  br label %165

97:                                               ; preds = %79
  %98 = and i64 %20, 2
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %165, label %100, !prof !663

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.cv, ptr %81, i64 0, i32 1
  %102 = load i32, ptr %101, align 8, !tbaa !269
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %165, !prof !664

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.cv, ptr %81, i64 0, i32 2
  %106 = load i32, ptr %105, align 4, !tbaa !391
  %107 = and i32 %106, 150011904
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %165, !prof !665

109:                                              ; preds = %104
  %110 = load ptr, ptr %81, align 8, !tbaa !264
  %111 = getelementptr inbounds %struct.xpvcv, ptr %110, i64 0, i32 4
  %112 = load ptr, ptr %111, align 8, !tbaa !266
  %113 = icmp eq ptr %112, %52
  br i1 %113, label %114, label %165, !prof !666

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.xpvcv, ptr %110, i64 0, i32 12
  %116 = load i32, ptr %115, align 4, !tbaa !289
  %117 = and i32 %116, 32768
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %165, !prof !667

119:                                              ; preds = %114
  %120 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %81) #13
  %121 = icmp eq ptr %120, %0
  br i1 %121, label %122, label %165, !prof !667

122:                                              ; preds = %119
  %123 = load ptr, ptr %81, align 8, !tbaa !264
  %124 = getelementptr inbounds %struct.xpvcv, ptr %123, i64 0, i32 12
  %125 = load i32, ptr %124, align 4, !tbaa !289
  %126 = and i32 %125, 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %165, label %128, !prof !667

128:                                              ; preds = %122
  %129 = and i32 %125, 995
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %165

131:                                              ; preds = %128
  %132 = load ptr, ptr %0, align 8, !tbaa !226
  %133 = getelementptr inbounds %struct.xpvgv, ptr %132, i64 0, i32 4
  %134 = load ptr, ptr %133, align 8, !tbaa !222
  %135 = icmp eq ptr %134, null
  br i1 %135, label %165, label %136

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.hek, ptr %134, i64 0, i32 2
  %138 = getelementptr inbounds %struct.hek, ptr %134, i64 0, i32 1
  %139 = load i32, ptr %138, align 4, !tbaa !228
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, ptr %137, i64 %140
  %142 = getelementptr inbounds i8, ptr %141, i64 1
  %143 = load i8, ptr %142, align 1, !tbaa !222
  %144 = and i8 %143, 1
  %145 = zext nneg i8 %144 to i32
  %146 = load i32, ptr %134, align 4, !tbaa !311
  %147 = tail call ptr @Perl_hv_common(ptr noundef nonnull %52, ptr noundef null, ptr noundef nonnull %137, i64 noundef %140, i32 noundef %145, i32 noundef 32, ptr noundef null, i32 noundef %146) #11
  %148 = icmp eq ptr %147, null
  br i1 %148, label %165, label %149

149:                                              ; preds = %136
  %150 = load ptr, ptr %147, align 8, !tbaa !221
  %151 = icmp eq ptr %150, %0
  br i1 %151, label %152, label %165

152:                                              ; preds = %149
  %153 = load ptr, ptr %81, align 8, !tbaa !264
  %154 = getelementptr inbounds %struct.xpvcv, ptr %153, i64 0, i32 5
  %155 = load ptr, ptr %154, align 8, !tbaa !222
  %156 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %155) #13
  %157 = load ptr, ptr %0, align 8, !tbaa !226
  %158 = getelementptr inbounds %struct.xpvgv, ptr %157, i64 0, i32 2
  %159 = load i64, ptr %158, align 8, !tbaa !259
  store i32 0, ptr %5, align 8, !tbaa !643
  tail call void @Perl_sv_clear(ptr noundef nonnull %0) #11
  store i32 1, ptr %5, align 8, !tbaa !643
  %160 = trunc i64 %159 to i32
  %161 = shl i32 %160, 8
  %162 = and i32 %161, 32768
  %163 = or disjoint i32 %162, 2049
  store i32 %163, ptr %9, align 4, !tbaa !235
  %164 = getelementptr %struct.gv, ptr %0, i64 -1, i32 1
  store ptr %164, ptr %0, align 8, !tbaa !226
  store ptr %155, ptr %14, align 8, !tbaa !222
  br label %165

165:                                              ; preds = %75, %66, %83, %152, %149, %136, %131, %128, %122, %119, %114, %109, %104, %100, %97, %54, %4, %8, %13, %17, %23, %27, %30, %34, %38, %42, %46, %50, %1
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_gv_override(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !668 {
  %3 = tail call ptr @Perl_gv_fetchpvn_flags(ptr noundef %0, i64 noundef %1, i32 noundef 128, i32 noundef 13) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5, !prof !669

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.gv, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !222
  %8 = getelementptr inbounds %struct.gp, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !273
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.gp, ptr %7, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !263
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %3, align 8, !tbaa !226
  %17 = getelementptr inbounds %struct.xpvgv, ptr %16, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !259
  %19 = and i64 %18, 128
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %5, %15, %11, %2
  %22 = load ptr, ptr @PL_globalstash, align 8, !tbaa !221
  %23 = trunc i64 %1 to i32
  %24 = tail call ptr @Perl_hv_common_key_len(ptr noundef %22, ptr noundef %0, i32 noundef %23, i32 noundef 32, ptr noundef null, i32 noundef 0) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %56, label %26, !prof !669

26:                                               ; preds = %21
  %27 = load ptr, ptr %24, align 8, !tbaa !221
  %28 = icmp eq ptr %27, null
  br i1 %28, label %56, label %29, !prof !247

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.gv, ptr %27, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !235
  %32 = and i32 %31, 255
  %33 = icmp eq i32 %32, 9
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = and i32 %31, 34816
  %36 = icmp eq i32 %35, 34816
  br i1 %36, label %37, label %56

37:                                               ; preds = %34
  %38 = load ptr, ptr @PL_globalstash, align 8, !tbaa !221
  tail call void @Perl_gv_init_pvn(ptr noundef nonnull %27, ptr noundef %38, ptr noundef %0, i64 noundef %1, i32 noundef 0) #13
  br label %56

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.gv, ptr %27, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !222
  %42 = getelementptr inbounds %struct.gp, ptr %41, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !273
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.gp, ptr %41, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !263
  %48 = icmp eq ptr %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %27, align 8, !tbaa !226
  %51 = getelementptr inbounds %struct.xpvgv, ptr %50, i64 0, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !259
  %53 = and i64 %52, 128
  %54 = icmp eq i64 %53, 0
  %55 = select i1 %54, ptr null, ptr %27
  br label %56

56:                                               ; preds = %21, %39, %45, %49, %26, %34, %15, %37
  %57 = phi ptr [ %27, %37 ], [ %3, %15 ], [ null, %34 ], [ null, %39 ], [ null, %45 ], [ %55, %49 ], [ null, %26 ], [ null, %21 ]
  ret ptr %57
}

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @S_maybe_add_coresub(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 !prof !272 !PGOFuncName !670 {
  %5 = alloca i32, align 4
  %6 = trunc i64 %3 to i32
  %7 = tail call i32 @Perl_keyword(ptr noundef %2, i32 noundef %6, i1 noundef zeroext true) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !tbaa !239
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
  %19 = load ptr, ptr %18, align 8, !tbaa !226
  %20 = getelementptr inbounds %struct.xpvgv, ptr %19, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !259
  %22 = or i64 %21, 2
  store i64 %22, ptr %20, align 8, !tbaa !259
  br i1 %13, label %23, label %29

23:                                               ; preds = %17
  tail call void @Perl_push_scope() #11
  %24 = load ptr, ptr @PL_curcop, align 8, !tbaa !221
  %25 = load ptr, ptr @PL_parser, align 8, !tbaa !221
  tail call void @Perl_lex_start(ptr noundef null, ptr noundef null, i32 noundef 0) #11
  %26 = load ptr, ptr @PL_compcv, align 8, !tbaa !221
  store ptr null, ptr @PL_compcv, align 8, !tbaa !221
  %27 = tail call i32 @Perl_start_subparse(i32 noundef 0, i32 noundef 0) #11
  %28 = load ptr, ptr @PL_compcv, align 8, !tbaa !221
  br label %41

29:                                               ; preds = %17
  %30 = tail call ptr @Perl_newSV_type(i32 noundef 13) #11
  %31 = getelementptr inbounds %struct.gv, ptr %18, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !222
  %33 = getelementptr inbounds %struct.gp, ptr %32, i64 0, i32 2
  store ptr %30, ptr %33, align 8, !tbaa !263
  %34 = load ptr, ptr %31, align 8, !tbaa !222
  %35 = getelementptr inbounds %struct.gp, ptr %34, i64 0, i32 3
  store i32 0, ptr %35, align 8, !tbaa !273
  %36 = load ptr, ptr %30, align 8, !tbaa !264
  %37 = getelementptr inbounds %struct.xpvcv, ptr %36, i64 0, i32 12
  %38 = load i32, ptr %37, align 4, !tbaa !289
  %39 = or i32 %38, 8
  store i32 %39, ptr %37, align 4, !tbaa !289
  %40 = getelementptr inbounds %struct.xpvcv, ptr %36, i64 0, i32 6
  store ptr @core_xsub, ptr %40, align 8, !tbaa !222
  br label %41

41:                                               ; preds = %29, %23
  %42 = phi ptr [ %28, %23 ], [ %30, %29 ]
  %43 = phi ptr [ %26, %23 ], [ null, %29 ]
  %44 = phi ptr [ %24, %23 ], [ null, %29 ]
  %45 = phi ptr [ %25, %23 ], [ null, %29 ]
  %46 = phi i32 [ %27, %23 ], [ 0, %29 ]
  tail call void @Perl_cvgv_set(ptr noundef %42, ptr noundef nonnull %18) #13
  %47 = tail call ptr @Perl_gv_fetchfile(ptr noundef nonnull @S_maybe_add_coresub.file) #13
  %48 = load ptr, ptr %42, align 8, !tbaa !264
  %49 = getelementptr inbounds %struct.xpvcv, ptr %48, i64 0, i32 8
  store ptr @S_maybe_add_coresub.file, ptr %49, align 8, !tbaa !671
  %50 = call ptr @Perl_core_prototype(ptr noundef nonnull %42, ptr noundef %2, i32 noundef %7, ptr noundef nonnull %5) #11
  %51 = icmp eq ptr %0, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %41
  %53 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %6, i32 noundef 36, ptr noundef nonnull %18, i32 noundef 0) #11
  br label %54

54:                                               ; preds = %52, %41
  br i1 %13, label %55, label %81

55:                                               ; preds = %54
  %56 = load ptr, ptr %42, align 8, !tbaa !264
  %57 = getelementptr inbounds %struct.xpvcv, ptr %56, i64 0, i32 12
  %58 = load i32, ptr %57, align 4, !tbaa !289
  %59 = or i32 %58, 2
  store i32 %59, ptr %57, align 4, !tbaa !289
  %60 = load i32, ptr %5, align 4, !tbaa !239
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
  %69 = load i32, ptr %5, align 4, !tbaa !239
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
  %76 = load ptr, ptr %71, align 8, !tbaa !264
  %77 = getelementptr inbounds %struct.xpvcv, ptr %76, i64 0, i32 12
  %78 = load i32, ptr %77, align 4, !tbaa !289
  %79 = and i32 %78, -3
  store i32 %79, ptr %77, align 4, !tbaa !289
  br label %80

80:                                               ; preds = %75, %73, %73, %73, %73
  call void @Perl_pop_scope() #11
  store ptr %45, ptr @PL_parser, align 8, !tbaa !221
  store ptr %44, ptr @PL_curcop, align 8, !tbaa !221
  store ptr %43, ptr @PL_compcv, align 8, !tbaa !221
  br i1 %72, label %93, label %81

81:                                               ; preds = %54, %80
  %82 = phi ptr [ %71, %80 ], [ %42, %54 ]
  %83 = load i32, ptr %5, align 4, !tbaa !239
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
  store ptr %45, ptr @PL_parser, align 8, !tbaa !221
  store ptr %44, ptr @PL_curcop, align 8, !tbaa !221
  store ptr %43, ptr @PL_compcv, align 8, !tbaa !221
  br label %93

93:                                               ; preds = %92, %80, %88, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %9, %4
  %94 = phi ptr [ null, %4 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ null, %9 ], [ %18, %88 ], [ %18, %80 ], [ %18, %92 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret ptr %94
}

; Function Attrs: optsize
declare ptr @Perl_mro_get_linear_isa(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_keyword(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_lex_start(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_start_subparse(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @core_xsub(ptr nocapture noundef readonly %0) #0 !prof !272 !PGOFuncName !672 {
  %2 = tail call fastcc ptr @S_CvGV(ptr noundef %0) #13
  %3 = load ptr, ptr %2, align 8, !tbaa !226
  %4 = getelementptr inbounds %struct.xpvgv, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !222
  %6 = getelementptr inbounds %struct.hek, ptr %5, i64 0, i32 2
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.50, ptr noundef nonnull %6) #11
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
declare void @Perl_cv_set_call_checker(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_ck_entersub_args_core(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_gv_stashpvn_internal(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !673 !PGOFuncName !674 {
  %4 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #14
  %5 = add i32 %1, 2
  %6 = zext i32 %5 to i64
  %7 = icmp ult i32 %5, 129
  br i1 %7, label %10, label %8, !prof !675

8:                                                ; preds = %3
  %9 = tail call ptr @Perl_safesysmalloc(i64 noundef %6) #11
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi ptr [ %9, %8 ], [ %4, %3 ]
  %12 = zext i32 %1 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %0, i64 %12, i1 false)
  %13 = getelementptr inbounds i8, ptr %11, i64 %12
  store i8 58, ptr %13, align 1, !tbaa !222
  %14 = add i32 %1, 1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %11, i64 %15
  store i8 58, ptr %16, align 1, !tbaa !222
  %17 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef %11, i64 noundef %6, i32 noundef %2, i32 noundef 12) #13
  %18 = icmp eq ptr %11, %4
  br i1 %18, label %20, label %19, !prof !675

19:                                               ; preds = %10
  call void @Perl_safesysfree(ptr noundef nonnull %11) #11
  br label %20

20:                                               ; preds = %19, %10
  %21 = icmp eq ptr %17, null
  br i1 %21, label %77, label %22, !prof !676

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.gv, ptr %17, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !235
  %25 = and i32 %24, 49152
  %26 = icmp eq i32 %25, 32768
  br i1 %26, label %27, label %77, !prof !408

27:                                               ; preds = %22
  %28 = and i32 %24, 255
  %29 = add nsw i32 %28, -9
  %30 = icmp ult i32 %29, 2
  br i1 %30, label %31, label %77, !prof !677

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.gv, ptr %17, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !222
  %34 = getelementptr inbounds %struct.gp, ptr %33, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !242
  %36 = and i32 %2, -536874209
  %37 = icmp ne i32 %36, 0
  %38 = icmp ne ptr %35, null
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %40, label %77, !prof !678

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.hv, ptr %35, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !323
  %43 = and i32 %42, 33554432
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %62, label %45, !prof !679

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.hv, ptr %35, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !222
  %48 = load ptr, ptr %35, align 8, !tbaa !326
  %49 = getelementptr inbounds %struct.xpvhv, ptr %48, i64 0, i32 3
  %50 = load i64, ptr %49, align 8, !tbaa !327
  %51 = getelementptr ptr, ptr %47, i64 %50
  %52 = getelementptr ptr, ptr %51, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !222
  %54 = icmp eq ptr %53, null
  br i1 %54, label %62, label %55, !prof !679

55:                                               ; preds = %45
  %56 = getelementptr i8, ptr %51, i64 36
  %57 = load i32, ptr %56, align 4, !tbaa !329
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %77, label %59, !prof !408

59:                                               ; preds = %55
  %60 = load ptr, ptr %53, align 8, !tbaa !221
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %77

62:                                               ; preds = %40, %45, %59
  %63 = and i32 %2, 536870912
  call void @Perl_hv_name_set(ptr noundef nonnull %35, ptr noundef %0, i32 noundef %1, i32 noundef %63) #11
  %64 = load ptr, ptr %17, align 8, !tbaa !226
  %65 = getelementptr inbounds %struct.xpvgv, ptr %64, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !222
  %67 = getelementptr inbounds %struct.hv, ptr %66, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !222
  %69 = load ptr, ptr %66, align 8, !tbaa !326
  %70 = getelementptr inbounds %struct.xpvhv, ptr %69, i64 0, i32 3
  %71 = load i64, ptr %70, align 8, !tbaa !327
  %72 = getelementptr ptr, ptr %68, i64 %71
  %73 = getelementptr i8, ptr %72, i64 36
  %74 = load i32, ptr %73, align 4, !tbaa !329
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
declare void @Perl_hv_name_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_mro_package_moved(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @S_gv_is_in_main(ptr noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !471 !PGOFuncName !680 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %166, label %5, !prof !681

5:                                                ; preds = %3
  %6 = load ptr, ptr @PL_curcop, align 8, !tbaa !221
  %7 = getelementptr inbounds %struct.cop, ptr %6, i64 0, i32 10
  %8 = load i32, ptr %7, align 8, !tbaa !433
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  %11 = icmp ne i32 %2, 0
  %12 = and i1 %11, %10
  %13 = load i8, ptr %0, align 1, !tbaa !222
  br i1 %12, label %20, label %14, !prof !682

14:                                               ; preds = %5
  %15 = zext i8 %13 to i64
  %16 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !239
  %18 = and i32 %17, 81920
  %19 = icmp eq i32 %18, 81920
  br i1 %19, label %44, label %166, !prof !681

20:                                               ; preds = %5
  %21 = icmp sgt i8 %13, -1
  br i1 %21, label %22, label %28, !prof !681

22:                                               ; preds = %20
  %23 = zext nneg i8 %13 to i64
  %24 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !239
  %26 = and i32 %25, 65536
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %166, label %44, !prof !416

28:                                               ; preds = %20
  %29 = and i8 %13, -2
  %30 = icmp eq i8 %29, -62
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = shl i8 %13, 6
  %33 = getelementptr inbounds i8, ptr %0, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !222
  %35 = and i8 %34, 63
  %36 = or disjoint i8 %35, %32
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !239
  %40 = and i32 %39, 65536
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %166, label %44

42:                                               ; preds = %28
  %43 = tail call zeroext i1 @Perl__is_utf8_perl_idstart(ptr noundef nonnull %0) #11
  br i1 %43, label %44, label %166, !prof !436

44:                                               ; preds = %31, %22, %42, %14
  switch i64 %1, label %165 [
    i64 1, label %45
    i64 3, label %48
    i64 4, label %74
    i64 5, label %89
    i64 6, label %108
    i64 7, label %138
  ], !prof !683

45:                                               ; preds = %44
  %46 = load i8, ptr %0, align 1, !tbaa !222
  %47 = icmp eq i8 %46, 95
  br i1 %47, label %166, label %165, !prof !684

48:                                               ; preds = %44
  %49 = load i8, ptr %0, align 1, !tbaa !222
  switch i8 %49, label %165 [
    i8 73, label %50
    i8 69, label %58
    i8 83, label %66
  ], !prof !685

50:                                               ; preds = %48
  %51 = getelementptr inbounds i8, ptr %0, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !222
  %53 = icmp eq i8 %52, 78
  br i1 %53, label %54, label %165, !prof !686

54:                                               ; preds = %50
  %55 = getelementptr inbounds i8, ptr %0, i64 2
  %56 = load i8, ptr %55, align 1, !tbaa !222
  %57 = icmp eq i8 %56, 67
  br i1 %57, label %166, label %165, !prof !687

58:                                               ; preds = %48
  %59 = getelementptr inbounds i8, ptr %0, i64 1
  %60 = load i8, ptr %59, align 1, !tbaa !222
  %61 = icmp eq i8 %60, 78
  br i1 %61, label %62, label %165, !prof !688

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %0, i64 2
  %64 = load i8, ptr %63, align 1, !tbaa !222
  %65 = icmp eq i8 %64, 86
  br i1 %65, label %166, label %165, !prof !689

66:                                               ; preds = %48
  %67 = getelementptr inbounds i8, ptr %0, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !222
  %69 = icmp eq i8 %68, 73
  br i1 %69, label %70, label %165, !prof !690

70:                                               ; preds = %66
  %71 = getelementptr inbounds i8, ptr %0, i64 2
  %72 = load i8, ptr %71, align 1, !tbaa !222
  %73 = icmp eq i8 %72, 71
  br i1 %73, label %166, label %165, !prof !691

74:                                               ; preds = %44
  %75 = load i8, ptr %0, align 1, !tbaa !222
  %76 = icmp eq i8 %75, 65
  br i1 %76, label %77, label %165, !prof !692

77:                                               ; preds = %74
  %78 = getelementptr inbounds i8, ptr %0, i64 1
  %79 = load i8, ptr %78, align 1, !tbaa !222
  %80 = icmp eq i8 %79, 82
  br i1 %80, label %81, label %165, !prof !693

81:                                               ; preds = %77
  %82 = getelementptr inbounds i8, ptr %0, i64 2
  %83 = load i8, ptr %82, align 1, !tbaa !222
  %84 = icmp eq i8 %83, 71
  br i1 %84, label %85, label %165, !prof !693

85:                                               ; preds = %81
  %86 = getelementptr inbounds i8, ptr %0, i64 3
  %87 = load i8, ptr %86, align 1, !tbaa !222
  %88 = icmp eq i8 %87, 86
  br i1 %88, label %166, label %165, !prof !693

89:                                               ; preds = %44
  %90 = load i8, ptr %0, align 1, !tbaa !222
  %91 = icmp eq i8 %90, 83
  br i1 %91, label %92, label %165, !prof !694

92:                                               ; preds = %89
  %93 = getelementptr inbounds i8, ptr %0, i64 1
  %94 = load i8, ptr %93, align 1, !tbaa !222
  %95 = icmp eq i8 %94, 84
  br i1 %95, label %96, label %165, !prof !695

96:                                               ; preds = %92
  %97 = getelementptr inbounds i8, ptr %0, i64 2
  %98 = load i8, ptr %97, align 1, !tbaa !222
  %99 = icmp eq i8 %98, 68
  br i1 %99, label %100, label %165, !prof !696

100:                                              ; preds = %96
  %101 = getelementptr inbounds i8, ptr %0, i64 3
  %102 = load i8, ptr %101, align 1, !tbaa !222
  %103 = icmp eq i8 %102, 73
  br i1 %103, label %104, label %165, !prof !367

104:                                              ; preds = %100
  %105 = getelementptr inbounds i8, ptr %0, i64 4
  %106 = load i8, ptr %105, align 1, !tbaa !222
  %107 = icmp eq i8 %106, 78
  br i1 %107, label %166, label %165, !prof !367

108:                                              ; preds = %44
  %109 = load i8, ptr %0, align 1, !tbaa !222
  %110 = icmp eq i8 %109, 83
  br i1 %110, label %111, label %165, !prof !697

111:                                              ; preds = %108
  %112 = getelementptr inbounds i8, ptr %0, i64 1
  %113 = load i8, ptr %112, align 1, !tbaa !222
  %114 = icmp eq i8 %113, 84
  br i1 %114, label %115, label %165, !prof !698

115:                                              ; preds = %111
  %116 = getelementptr inbounds i8, ptr %0, i64 2
  %117 = load i8, ptr %116, align 1, !tbaa !222
  %118 = icmp eq i8 %117, 68
  br i1 %118, label %119, label %165, !prof !699

119:                                              ; preds = %115
  %120 = getelementptr inbounds i8, ptr %0, i64 3
  %121 = load i8, ptr %120, align 1, !tbaa !222
  switch i8 %121, label %165 [
    i8 79, label %122
    i8 69, label %130
  ], !prof !700

122:                                              ; preds = %119
  %123 = getelementptr inbounds i8, ptr %0, i64 4
  %124 = load i8, ptr %123, align 1, !tbaa !222
  %125 = icmp eq i8 %124, 85
  br i1 %125, label %126, label %165, !prof !701

126:                                              ; preds = %122
  %127 = getelementptr inbounds i8, ptr %0, i64 5
  %128 = load i8, ptr %127, align 1, !tbaa !222
  %129 = icmp eq i8 %128, 84
  br i1 %129, label %166, label %165, !prof !701

130:                                              ; preds = %119
  %131 = getelementptr inbounds i8, ptr %0, i64 4
  %132 = load i8, ptr %131, align 1, !tbaa !222
  %133 = icmp eq i8 %132, 82
  br i1 %133, label %134, label %165, !prof !702

134:                                              ; preds = %130
  %135 = getelementptr inbounds i8, ptr %0, i64 5
  %136 = load i8, ptr %135, align 1, !tbaa !222
  %137 = icmp eq i8 %136, 82
  br i1 %137, label %166, label %165, !prof !702

138:                                              ; preds = %44
  %139 = load i8, ptr %0, align 1, !tbaa !222
  %140 = icmp eq i8 %139, 65
  br i1 %140, label %141, label %165, !prof !703

141:                                              ; preds = %138
  %142 = getelementptr inbounds i8, ptr %0, i64 1
  %143 = load i8, ptr %142, align 1, !tbaa !222
  %144 = icmp eq i8 %143, 82
  br i1 %144, label %145, label %165, !prof !704

145:                                              ; preds = %141
  %146 = getelementptr inbounds i8, ptr %0, i64 2
  %147 = load i8, ptr %146, align 1, !tbaa !222
  %148 = icmp eq i8 %147, 71
  br i1 %148, label %149, label %165

149:                                              ; preds = %145
  %150 = getelementptr inbounds i8, ptr %0, i64 3
  %151 = load i8, ptr %150, align 1, !tbaa !222
  %152 = icmp eq i8 %151, 86
  br i1 %152, label %153, label %165

153:                                              ; preds = %149
  %154 = getelementptr inbounds i8, ptr %0, i64 4
  %155 = load i8, ptr %154, align 1, !tbaa !222
  %156 = icmp eq i8 %155, 79
  br i1 %156, label %157, label %165

157:                                              ; preds = %153
  %158 = getelementptr inbounds i8, ptr %0, i64 5
  %159 = load i8, ptr %158, align 1, !tbaa !222
  %160 = icmp eq i8 %159, 85
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = getelementptr inbounds i8, ptr %0, i64 6
  %163 = load i8, ptr %162, align 1, !tbaa !222
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
define internal fastcc void @S_require_tie_mod(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !prof !705 !PGOFuncName !706 {
  %6 = tail call ptr @Perl_gv_stashsv(ptr noundef %2, i32 noundef 0) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8, !prof !363

8:                                                ; preds = %5
  %9 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %6, ptr noundef %3, i32 noundef 0) #13
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %32, !prof !707

11:                                               ; preds = %8, %5
  %12 = tail call ptr @Perl_newSVsv(ptr noundef %2) #11
  %13 = load i8, ptr %1, align 1, !tbaa !222
  %14 = sext i8 %13 to i32
  %15 = icmp eq i8 %13, 91
  %16 = select i1 %15, i8 36, i8 37
  tail call void @Perl_push_scope() #11
  tail call void @Perl_save_pushptr(ptr noundef %2, i32 noundef 11) #11
  %17 = and i32 %4, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19, !prof !262

19:                                               ; preds = %11
  %20 = tail call ptr @Perl_save_scalar(ptr noundef %0) #11
  br label %21

21:                                               ; preds = %19, %11
  tail call void (i32, ptr, ptr, ...) @Perl_load_module(i32 noundef 2, ptr noundef %12, ptr noundef null) #11
  %22 = tail call ptr @Perl_gv_stashsv(ptr noundef %2, i32 noundef 0) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26, !prof !310

24:                                               ; preds = %21
  %25 = zext nneg i8 %16 to i32
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.66, i32 noundef %25, i32 noundef %14, ptr noundef %2) #11
  br label %31

26:                                               ; preds = %21
  %27 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %22, ptr noundef %3, i32 noundef 1) #13
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31, !prof !310

29:                                               ; preds = %26
  %30 = zext nneg i8 %16 to i32
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.67, i32 noundef %30, i32 noundef %14, ptr noundef %2, ptr noundef %3) #11
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
declare ptr @Perl_save_scalar(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_load_module(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_grok_atoUV(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!211}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 43491971510}
!4 = !{!"MaxCount", i64 4342352624}
!5 = !{!"MaxInternalCount", i64 4342352624}
!6 = !{!"MaxFunctionCount", i64 3033009960}
!7 = !{!"NumCounts", i64 40262}
!8 = !{!"NumFunctions", i64 2170}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 4342352624, i32 1}
!14 = !{i32 100000, i64 3033009960, i32 2}
!15 = !{i32 200000, i64 2317897115, i32 3}
!16 = !{i32 300000, i64 528717179, i32 7}
!17 = !{i32 400000, i64 462639867, i32 16}
!18 = !{i32 500000, i64 457545339, i32 26}
!19 = !{i32 600000, i64 423510107, i32 35}
!20 = !{i32 700000, i64 420555191, i32 45}
!21 = !{i32 800000, i64 220071415, i32 59}
!22 = !{i32 900000, i64 40456743, i32 99}
!23 = !{i32 950000, i64 21523442, i32 170}
!24 = !{i32 990000, i64 1957094, i32 384}
!25 = !{i32 999000, i64 104162, i32 1106}
!26 = !{i32 999900, i64 11423, i32 2014}
!27 = !{i32 999990, i64 757, i32 3020}
!28 = !{i32 999999, i64 63, i32 4652}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210}
!35 = !{ptr @Perl_gv_add_by_type, ptr @Perl_croak, i64 1}
!36 = !{ptr @Perl_gv_add_by_type, ptr @Perl_newSV_type, i64 11981}
!37 = !{ptr @Perl_gv_add_by_type, ptr @strncmp, i64 25}
!38 = !{ptr @Perl_gv_add_by_type, ptr @Perl_sv_magic, i64 22}
!39 = !{ptr @Perl_gv_fetchfile, ptr @strlen, i64 405}
!40 = !{ptr @Perl_gv_fetchfile, ptr @Perl_gv_fetchfile_flags, i64 405}
!41 = !{ptr @Perl_gv_fetchfile_flags, ptr @Perl_safesysmalloc, i64 1}
!42 = !{ptr @Perl_gv_fetchfile_flags, ptr @Perl_hv_common_key_len, i64 404}
!43 = !{ptr @Perl_gv_fetchfile_flags, ptr @Perl_gv_init_pvn, i64 196}
!44 = !{ptr @Perl_gv_fetchfile_flags, ptr @Perl_newSVpvn, i64 196}
!45 = !{ptr @Perl_gv_fetchfile_flags, ptr @Perl_gv_add_by_type, i64 1}
!46 = !{ptr @Perl_gv_fetchfile_flags, ptr @Perl_sv_magic, i64 1}
!47 = !{ptr @Perl_gv_fetchfile_flags, ptr @Perl_safesysfree, i64 1}
!48 = !{ptr @Perl_gv_init_pvn, ptr @Perl_sv_reftype, i64 1}
!49 = !{ptr @Perl_gv_init_pvn, ptr @Perl_croak, i64 1}
!50 = !{ptr @Perl_gv_init_pvn, ptr @Perl_sv_upgrade, i64 14039}
!51 = !{ptr @Perl_gv_init_pvn, ptr @Perl_safesysfree, i64 1}
!52 = !{ptr @Perl_gv_init_pvn, ptr @Perl_newGP, i64 14040}
!53 = !{ptr @Perl_gv_init_pvn, ptr @Perl_sv_add_backref, i64 14039}
!54 = !{ptr @Perl_gv_init_pvn, ptr @Perl_gv_name_set, i64 14040}
!55 = !{ptr @Perl_gv_init_pvn, ptr @CvNAME_HEK, i64 1}
!56 = !{ptr @Perl_gv_init_pvn, ptr @Perl_cvgv_set, i64 1}
!57 = !{ptr @Perl_gv_init_pvn, ptr @Perl_newSTUB, i64 24}
!58 = !{ptr @Perl_gv_init_pvn, ptr @Perl_sv_usepvn_flags, i64 12}
!59 = !{ptr @Perl_cvgv_set, ptr @S_SvREFCNT_dec_NN, i64 15}
!60 = !{ptr @Perl_cvgv_set, ptr @Perl_sv_del_backref, i64 324}
!61 = !{ptr @Perl_cvgv_set, ptr @CvNAME_HEK, i64 1346}
!62 = !{ptr @Perl_cvgv_set, ptr @Perl_unshare_hek, i64 2}
!63 = !{ptr @Perl_cvgv_set, ptr @Perl_sv_add_backref, i64 1186}
!64 = !{ptr @S_SvREFCNT_dec_NN, ptr @Perl_sv_free2, i64 30}
!65 = !{ptr @Perl_cvgv_from_hek, ptr @CvNAME_HEK, i64 1}
!66 = !{ptr @Perl_cvgv_from_hek, ptr @Perl_hv_common, i64 1}
!67 = !{ptr @Perl_cvstash_set, ptr @Perl_sv_del_backref, i64 1}
!68 = !{ptr @Perl_cvstash_set, ptr @Perl_sv_add_backref, i64 1100}
!69 = !{ptr @S_gv_fetchmeth_internal, ptr @Perl_gv_stashpvn, i64 91}
!70 = !{ptr @S_gv_fetchmeth_internal, ptr @Perl_croak, i64 2}
!71 = !{ptr @S_gv_fetchmeth_internal, ptr @Perl_mro_meta_init, i64 1}
!72 = !{ptr @S_gv_fetchmeth_internal, ptr @Perl_newSV_type, i64 1}
!73 = !{ptr @S_gv_fetchmeth_internal, ptr @Perl_hv_common, i64 13035}
!74 = !{ptr @S_gv_fetchmeth_internal, ptr @Perl_gv_init_pvn, i64 36}
!75 = !{ptr @S_gv_fetchmeth_internal, ptr @strncmp, i64 3}
!76 = !{ptr @S_gv_fetchmeth_internal, ptr @S_maybe_add_coresub, i64 1}
!77 = !{ptr @S_gv_fetchmeth_internal, ptr @Perl_mro_get_linear_isa, i64 192}
!78 = !{ptr @S_gv_fetchmeth_internal, ptr @Perl_gv_stashsv, i64 35}
!79 = !{ptr @S_gv_fetchmeth_internal, ptr @Perl_ck_warner, i64 1}
!80 = !{ptr @S_gv_fetchmeth_internal, ptr @Perl_hv_common_key_len, i64 34}
!81 = !{ptr @S_gv_fetchmeth_internal, ptr @S_gv_fetchmeth_internal, i64 90}
!82 = !{ptr @S_gv_fetchmeth_internal, ptr @S_SvREFCNT_dec, i64 23}
!83 = !{ptr @Perl_gv_fetchmeth_pvn, ptr @S_gv_fetchmeth_internal, i64 12946}
!84 = !{ptr @Perl_gv_fetchmeth_pvn_autoload, ptr @Perl_gv_fetchmeth_pvn, i64 12}
!85 = !{ptr @Perl_gv_fetchmeth_pvn_autoload, ptr @bcmp, i64 1}
!86 = !{ptr @Perl_gv_fetchmethod_autoload, ptr @Perl_gv_fetchmethod_pv_flags, i64 21}
!87 = !{ptr @Perl_gv_fetchmethod_pv_flags, ptr @strlen, i64 21}
!88 = !{ptr @Perl_gv_fetchmethod_pv_flags, ptr @Perl_gv_fetchmethod_pvn_flags, i64 21}
!89 = !{ptr @Perl_gv_fetchmethod_sv_flags, ptr @Perl_sv_2pv_flags, i64 1}
!90 = !{ptr @Perl_gv_fetchmethod_sv_flags, ptr @Perl_gv_fetchmethod_pvn_flags, i64 12827}
!91 = !{ptr @Perl_gv_fetchmethod_pvn_flags, ptr @Perl_gv_stashpvn, i64 1}
!92 = !{ptr @Perl_gv_fetchmethod_pvn_flags, ptr @Perl_gv_fetchmeth_pvn, i64 12848}
!93 = !{ptr @Perl_gv_fetchmethod_pvn_flags, ptr @strcmp, i64 7}
!94 = !{ptr @Perl_gv_fetchmethod_pvn_flags, ptr @Perl_gv_autoload_pvn, i64 1}
!95 = !{ptr @Perl_gv_stashpvn, ptr @S_gv_stashsvpvn_cached, i64 13195}
!96 = !{ptr @S_CvGV, ptr @Perl_cvgv_from_hek, i64 1}
!97 = !{ptr @Perl_gv_stashpv, ptr @strlen, i64 77}
!98 = !{ptr @Perl_gv_stashpv, ptr @Perl_gv_stashpvn, i64 77}
!99 = !{ptr @S_gv_stashsvpvn_cached, ptr @Perl_hv_common, i64 38563}
!100 = !{ptr @S_gv_stashsvpvn_cached, ptr @Perl_sv_2pv_flags, i64 1}
!101 = !{ptr @S_gv_stashsvpvn_cached, ptr @S_gv_stashpvn_internal, i64 182}
!102 = !{ptr @S_gv_stashsvpvn_cached, ptr @Perl_newSViv, i64 170}
!103 = !{ptr @S_gv_stashsvpvn_cached, ptr @Perl_hv_common_key_len, i64 170}
!104 = !{ptr @Perl_gv_stashsv, ptr @S_gv_stashsvpvn_cached, i64 25368}
!105 = !{ptr @Perl_gv_fetchpv, ptr @strlen, i64 118}
!106 = !{ptr @Perl_gv_fetchpv, ptr @Perl_gv_fetchpvn_flags, i64 118}
!107 = !{ptr @Perl_gv_fetchpvn_flags, ptr @S_parse_gv_stash_name, i64 318165}
!108 = !{ptr @Perl_gv_fetchpvn_flags, ptr @S_find_default_stash, i64 22197}
!109 = !{ptr @Perl_gv_fetchpvn_flags, ptr @Perl_hv_common_key_len, i64 309300}
!110 = !{ptr @Perl_gv_fetchpvn_flags, ptr @Perl_newSV, i64 1}
!111 = !{ptr @Perl_gv_fetchpvn_flags, ptr @S_gv_init_svtype, i64 115663}
!112 = !{ptr @Perl_gv_fetchpvn_flags, ptr @S_maybe_multimagic_gv, i64 2026}
!113 = !{ptr @Perl_gv_fetchpvn_flags, ptr @strncmp, i64 27}
!114 = !{ptr @Perl_gv_fetchpvn_flags, ptr @S_gv_magicalize_isa, i64 2}
!115 = !{ptr @Perl_gv_fetchpvn_flags, ptr @Perl_ck_warner_d, i64 1}
!116 = !{ptr @Perl_gv_fetchpvn_flags, ptr @Perl_gv_init_pvn, i64 13676}
!117 = !{ptr @Perl_gv_fetchpvn_flags, ptr @Perl__is_utf8_perl_idstart, i64 6837}
!118 = !{ptr @Perl_gv_fetchpvn_flags, ptr @Perl_ckwarn, i64 10255}
!119 = !{ptr @Perl_gv_fetchpvn_flags, ptr @S_gv_magicalize, i64 13676}
!120 = !{ptr @Perl_gv_fetchsv, ptr @Perl_sv_2pv_flags, i64 1}
!121 = !{ptr @Perl_gv_fetchsv, ptr @Perl_gv_fetchpvn_flags, i64 219130}
!122 = !{ptr @S_parse_gv_stash_name, ptr @Perl_safesysmalloc, i64 1}
!123 = !{ptr @S_parse_gv_stash_name, ptr @Perl_hv_common_key_len, i64 300543}
!124 = !{ptr @S_parse_gv_stash_name, ptr @Perl_gv_init_pvn, i64 132}
!125 = !{ptr @S_parse_gv_stash_name, ptr @Perl_safesysfree, i64 1}
!126 = !{ptr @S_parse_gv_stash_name, ptr @Perl_newSV_type, i64 132}
!127 = !{ptr @S_parse_gv_stash_name, ptr @strncmp, i64 17}
!128 = !{ptr @S_parse_gv_stash_name, ptr @Perl_hv_name_set, i64 134}
!129 = !{ptr @S_parse_gv_stash_name, ptr @Perl_mro_package_moved, i64 1}
!130 = !{ptr @S_parse_gv_stash_name, ptr @Perl_hv_common, i64 5}
!131 = !{ptr @S_find_default_stash, ptr @S_gv_is_in_main, i64 22196}
!132 = !{ptr @S_find_default_stash, ptr @Perl_hv_common_key_len, i64 745}
!133 = !{ptr @S_find_default_stash, ptr @Perl_ck_warner_d, i64 4}
!134 = !{ptr @S_find_default_stash, ptr @Perl_mess, i64 5}
!135 = !{ptr @S_find_default_stash, ptr @Perl_qerror, i64 5}
!136 = !{ptr @S_find_default_stash, ptr @Perl_gv_fetchpvn_flags, i64 5}
!137 = !{ptr @S_gv_init_svtype, ptr @Perl_gv_add_by_type, i64 749}
!138 = !{ptr @S_maybe_multimagic_gv, ptr @Perl_newSVpvn, i64 1366}
!139 = !{ptr @S_maybe_multimagic_gv, ptr @S_require_tie_mod, i64 1366}
!140 = !{ptr @S_maybe_multimagic_gv, ptr @Perl_ck_warner_d, i64 1}
!141 = !{ptr @S_gv_magicalize_isa, ptr @Perl_gv_add_by_type, i64 21}
!142 = !{ptr @S_gv_magicalize_isa, ptr @Perl_sv_magic, i64 22}
!143 = !{ptr @S_gv_magicalize, ptr @strncmp, i64 122}
!144 = !{ptr @S_gv_magicalize, ptr @strcmp, i64 113}
!145 = !{ptr @S_gv_magicalize, ptr @S_gv_magicalize_isa, i64 23}
!146 = !{ptr @S_gv_magicalize, ptr @S_maybe_add_coresub, i64 1}
!147 = !{ptr @S_gv_magicalize, ptr @Perl_sv_magic, i64 49}
!148 = !{ptr @S_gv_magicalize, ptr @strlen, i64 5}
!149 = !{ptr @S_gv_magicalize, ptr @Perl_hv_common_key_len, i64 5}
!150 = !{ptr @S_gv_magicalize, ptr @Perl_sv_setsv_flags, i64 5}
!151 = !{ptr @S_gv_magicalize, ptr @Perl_grok_atoUV, i64 3}
!152 = !{ptr @S_gv_magicalize, ptr @Perl_gv_add_by_type, i64 47}
!153 = !{ptr @S_gv_magicalize, ptr @Perl_sv_setpv, i64 1}
!154 = !{ptr @S_gv_magicalize, ptr @Perl_newSVpvn, i64 3}
!155 = !{ptr @S_gv_magicalize, ptr @S_require_tie_mod, i64 3}
!156 = !{ptr @S_gv_magicalize, ptr @Perl_ck_warner_d, i64 1}
!157 = !{ptr @S_gv_magicalize, ptr @Perl_sv_setpvn, i64 2}
!158 = !{ptr @S_gv_magicalize, ptr @Perl_sv_derived_from, i64 1}
!159 = !{ptr @S_gv_magicalize, ptr @Perl_vnumify, i64 1}
!160 = !{ptr @S_gv_magicalize, ptr @S_SvREFCNT_dec, i64 2}
!161 = !{ptr @S_gv_magicalize, ptr @Perl_new_version, i64 1}
!162 = !{ptr @Perl_gv_fullname4, ptr @Perl_sv_setpv, i64 86}
!163 = !{ptr @Perl_gv_fullname4, ptr @strncmp, i64 1}
!164 = !{ptr @Perl_gv_fullname4, ptr @Perl_sv_catpvn_flags, i64 167}
!165 = !{ptr @Perl_gv_fullname4, ptr @Perl_newSVhek, i64 86}
!166 = !{ptr @Perl_gv_fullname4, ptr @Perl_sv_2mortal, i64 86}
!167 = !{ptr @Perl_gv_fullname4, ptr @Perl_sv_catsv_flags, i64 86}
!168 = !{ptr @Perl_gv_efullname4, ptr @Perl_gv_fullname4, i64 86}
!169 = !{ptr @Perl_gv_check, ptr @Perl_gv_check, i64 72}
!170 = !{ptr @Perl_gv_check, ptr @Perl__is_utf8_perl_idstart, i64 446}
!171 = !{ptr @Perl_gv_check, ptr @Perl_gv_fetchfile_flags, i64 1}
!172 = !{ptr @Perl_gv_check, ptr @Perl_warner, i64 1}
!173 = !{ptr @Perl_gp_ref, ptr @S_SvREFCNT_dec_NN, i64 1}
!174 = !{ptr @Perl_gp_free, ptr @Perl_ck_warner_d, i64 1}
!175 = !{ptr @Perl_gp_free, ptr @Perl_unshare_hek, i64 11430}
!176 = !{ptr @Perl_gp_free, ptr @S_SvREFCNT_dec, i64 57156}
!177 = !{ptr @Perl_gp_free, ptr @Perl_die, i64 3}
!178 = !{ptr @Perl_gp_free, ptr @Perl_safesysfree, i64 11423}
!179 = !{ptr @S_SvREFCNT_dec, ptr @Perl_sv_free2, i64 1}
!180 = !{ptr @Perl_Gv_AMupdate, ptr @Perl_mg_find, i64 7}
!181 = !{ptr @Perl_Gv_AMupdate, ptr @Perl_mro_meta_init, i64 1}
!182 = !{ptr @Perl_Gv_AMupdate, ptr @Perl_sv_unmagic, i64 1}
!183 = !{ptr @Perl_Gv_AMupdate, ptr @Perl_gv_fetchmeth_pvn, i64 90}
!184 = !{ptr @Perl_Gv_AMupdate, ptr @S_CvGV, i64 8}
!185 = !{ptr @Perl_Gv_AMupdate, ptr @S_SvREFCNT_inc, i64 80}
!186 = !{ptr @Perl_Gv_AMupdate, ptr @Perl_sv_magic, i64 6}
!187 = !{ptr @Perl_try_amagic_bin, ptr @Perl_mg_get, i64 2}
!188 = !{ptr @Perl_try_amagic_bin, ptr @Perl_amagic_call, i64 1}
!189 = !{ptr @Perl_try_amagic_bin, ptr @Perl_sv_2num, i64 2}
!190 = !{ptr @Perl_amagic_deref_call, ptr @Perl_amagic_call, i64 1}
!191 = !{ptr @Perl_gv_try_downgrade, ptr @Perl_hv_common, i64 4}
!192 = !{ptr @Perl_gv_try_downgrade, ptr @S_CvGV, i64 111}
!193 = !{ptr @Perl_gv_override, ptr @Perl_gv_fetchpvn_flags, i64 374}
!194 = !{ptr @Perl_gv_override, ptr @Perl_hv_common_key_len, i64 374}
!195 = !{ptr @S_gv_stashpvn_internal, ptr @Perl_safesysmalloc, i64 1}
!196 = !{ptr @S_gv_stashpvn_internal, ptr @Perl_gv_fetchpvn_flags, i64 182}
!197 = !{ptr @S_gv_stashpvn_internal, ptr @Perl_safesysfree, i64 1}
!198 = !{ptr @S_gv_stashpvn_internal, ptr @Perl_hv_name_set, i64 2}
!199 = !{ptr @S_gv_stashpvn_internal, ptr @Perl_mro_package_moved, i64 1}
!200 = !{ptr @S_gv_is_in_main, ptr @Perl__is_utf8_perl_idstart, i64 11096}
!201 = !{ptr @S_require_tie_mod, ptr @Perl_gv_stashsv, i64 21}
!202 = !{ptr @S_require_tie_mod, ptr @Perl_gv_fetchmethod_autoload, i64 19}
!203 = !{ptr @S_require_tie_mod, ptr @Perl_newSVsv, i64 3}
!204 = !{ptr @S_require_tie_mod, ptr @Perl_push_scope, i64 3}
!205 = !{ptr @S_require_tie_mod, ptr @Perl_save_pushptr, i64 3}
!206 = !{ptr @S_require_tie_mod, ptr @Perl_save_scalar, i64 1}
!207 = !{ptr @S_require_tie_mod, ptr @Perl_load_module, i64 3}
!208 = !{ptr @S_require_tie_mod, ptr @Perl_croak, i64 2}
!209 = !{ptr @S_require_tie_mod, ptr @Perl_pop_scope, i64 3}
!210 = !{ptr @S_require_tie_mod, ptr @S_SvREFCNT_dec_NN, i64 15}
!211 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!212 = !{!"function_entry_count", i64 11984}
!213 = !{!"branch_weights", i32 1, i32 11985}
!214 = !{!215, !219, i64 12}
!215 = !{!"sv", !216, i64 0, !219, i64 8, !219, i64 12, !217, i64 16}
!216 = !{!"any pointer", !217, i64 0}
!217 = !{!"omnipotent char", !218, i64 0}
!218 = !{!"Simple C/C++ TBAA"}
!219 = !{!"int", !217, i64 0}
!220 = !{!"branch_weights", i32 23971, i32 1}
!221 = !{!216, !216, i64 0}
!222 = !{!217, !217, i64 0}
!223 = !{!"branch_weights", i32 112736877, i32 34257939, i32 -1957112611, i32 3730264}
!224 = !{!"branch_weights", i32 11983, i32 3}
!225 = !{!"branch_weights", i32 11260, i32 724}
!226 = !{!227, !216, i64 0}
!227 = !{!"gv", !216, i64 0, !219, i64 8, !219, i64 12, !217, i64 16}
!228 = !{!229, !219, i64 4}
!229 = !{!"hek", !219, i64 0, !219, i64 4, !217, i64 8}
!230 = !{!"branch_weights", i32 25, i32 11236}
!231 = !{!"branch_weights", i32 23, i32 3}
!232 = !{!"function_entry_count", i64 405}
!233 = !{!"branch_weights", i32 1, i32 406}
!234 = !{!"branch_weights", i32 406, i32 1}
!235 = !{!227, !219, i64 12}
!236 = !{!"branch_weights", i32 210, i32 197}
!237 = !{!238, !216, i64 0}
!238 = !{!"gp", !216, i64 0, !216, i64 8, !216, i64 16, !219, i64 24, !219, i64 28, !216, i64 32, !216, i64 40, !216, i64 48, !216, i64 56, !219, i64 64, !219, i64 67, !216, i64 72}
!239 = !{!219, !219, i64 0}
!240 = !{!"branch_weights", i32 164836, i32 813}
!241 = !{!238, !216, i64 40}
!242 = !{!238, !216, i64 32}
!243 = !{!"function_entry_count", i64 14040}
!244 = !{!"branch_weights", i32 14017, i32 25}
!245 = !{!"branch_weights", i32 13, i32 13}
!246 = !{!"branch_weights", i32 25, i32 1}
!247 = !{!"branch_weights", i32 0, i32 -2147483648}
!248 = !{!249, !250, i64 16}
!249 = !{!"xpv", !216, i64 0, !217, i64 8, !250, i64 16, !217, i64 24}
!250 = !{!"long", !217, i64 0}
!251 = !{!"branch_weights", i32 24, i32 2}
!252 = !{!"branch_weights", i32 2, i32 1, i32 1, i32 1}
!253 = !{!"branch_weights", i32 2061584235, i32 85899413}
!254 = !{!"branch_weights", i32 1163137836, i32 984345812}
!255 = !{!"branch_weights", i32 14029, i32 13}
!256 = !{!"branch_weights", i32 1, i32 13}
!257 = !{!"branch_weights", i32 1, i32 14041}
!258 = !{!"branch_weights", i32 150160480, i32 22008482}
!259 = !{!260, !250, i64 16}
!260 = !{!"xpvgv", !216, i64 0, !217, i64 8, !250, i64 16, !217, i64 24, !217, i64 32, !217, i64 40}
!261 = !{!"branch_weights", i32 14040, i32 2}
!262 = !{!"branch_weights", i32 2, i32 1}
!263 = !{!238, !216, i64 16}
!264 = !{!265, !216, i64 0}
!265 = !{!"cv", !216, i64 0, !219, i64 8, !219, i64 12, !217, i64 16}
!266 = !{!267, !216, i64 32}
!267 = !{!"xpvcv", !216, i64 0, !217, i64 8, !250, i64 16, !217, i64 24, !216, i64 32, !217, i64 40, !217, i64 48, !217, i64 56, !216, i64 64, !217, i64 72, !216, i64 80, !219, i64 88, !219, i64 92, !219, i64 96}
!268 = !{!"branch_weights", i32 14017, i32 24}
!269 = !{!265, !219, i64 8}
!270 = !{!"branch_weights", i32 12, i32 13}
!271 = !{!"branch_weights", i32 13, i32 1}
!272 = !{!"function_entry_count", i64 0}
!273 = !{!238, !219, i64 24}
!274 = !{!238, !216, i64 56}
!275 = !{!"branch_weights", i32 1, i32 14073}
!276 = !{!277, !219, i64 36}
!277 = !{!"cop", !216, i64 0, !216, i64 8, !216, i64 16, !250, i64 24, !219, i64 32, !219, i64 33, !219, i64 33, !219, i64 33, !219, i64 33, !219, i64 33, !219, i64 33, !219, i64 33, !217, i64 34, !217, i64 35, !219, i64 36, !216, i64 40, !216, i64 48, !219, i64 56, !219, i64 60, !216, i64 64, !216, i64 72}
!278 = !{!277, !216, i64 48}
!279 = !{!"branch_weights", i32 13, i32 14061}
!280 = !{!238, !216, i64 72}
!281 = !{!238, !219, i64 28}
!282 = !{!"function_entry_count", i64 28112}
!283 = !{!"gv.c:S_perl_hash_one_at_a_time_hard"}
!284 = !{!"branch_weights", i32 28112, i32 1}
!285 = !{!"branch_weights", i32 261926, i32 28112}
!286 = distinct !{!286, !287}
!287 = !{!"llvm.loop.mustprogress"}
!288 = !{!"function_entry_count", i64 1900}
!289 = !{!267, !219, i64 92}
!290 = !{!"branch_weights", i32 1900, i32 2}
!291 = !{!"branch_weights", i32 216, i32 1686}
!292 = !{!"branch_weights", i32 1715495936, i32 431987712}
!293 = !{!"branch_weights", i32 325, i32 15}
!294 = !{!"branch_weights", i32 1347, i32 2}
!295 = !{!"branch_weights", i32 339, i32 1348}
!296 = !{!"branch_weights", i32 1348, i32 1}
!297 = !{!"branch_weights", i32 2697, i32 1}
!298 = !{!"branch_weights", i32 1, i32 1348}
!299 = !{!"branch_weights", i32 1190, i32 159}
!300 = !{!238, !216, i64 48}
!301 = !{!"branch_weights", i32 1, i32 159}
!302 = !{!215, !219, i64 8}
!303 = !{!"function_entry_count", i64 31}
!304 = !{!"gv.c:S_SvREFCNT_dec_NN"}
!305 = !{!"branch_weights", i32 1, i32 32}
!306 = !{!"function_entry_count", i64 1357}
!307 = !{!"gv.c:CvNAME_HEK"}
!308 = !{!"branch_weights", i32 1347, i32 12}
!309 = !{!"function_entry_count", i64 1}
!310 = !{!"branch_weights", i32 1, i32 2}
!311 = !{!229, !219, i64 0}
!312 = !{!"function_entry_count", i64 1125}
!313 = !{!"branch_weights", i32 24, i32 1103}
!314 = !{!"branch_weights", i32 1103, i32 1}
!315 = !{!"branch_weights", i32 1, i32 1103}
!316 = !{!215, !216, i64 0}
!317 = !{!250, !250, i64 0}
!318 = !{!"branch_weights", i32 14041, i32 1}
!319 = !{!"function_entry_count", i64 13036}
!320 = !{!"gv.c:S_gv_fetchmeth_internal"}
!321 = !{!"branch_weights", i32 91, i32 12947}
!322 = !{!"branch_weights", i32 1, i32 91}
!323 = !{!324, !219, i64 12}
!324 = !{!"hv", !216, i64 0, !219, i64 8, !219, i64 12, !217, i64 16}
!325 = !{!"branch_weights", i32 1, i32 13037}
!326 = !{!324, !216, i64 0}
!327 = !{!328, !250, i64 24}
!328 = !{!"xpvhv", !216, i64 0, !217, i64 8, !250, i64 16, !250, i64 24}
!329 = !{!330, !219, i64 28}
!330 = !{!"xpvhv_aux", !217, i64 0, !216, i64 8, !216, i64 16, !219, i64 24, !219, i64 28, !216, i64 32, !219, i64 40, !219, i64 44, !219, i64 48, !219, i64 52}
!331 = !{!"branch_weights", i32 13037, i32 1}
!332 = !{!330, !216, i64 32}
!333 = !{!334, !219, i64 24}
!334 = !{!"mro_meta", !216, i64 0, !216, i64 8, !216, i64 16, !219, i64 24, !219, i64 28, !216, i64 32, !216, i64 40, !216, i64 48, !219, i64 56}
!335 = !{!"branch_weights", i32 13036, i32 2}
!336 = !{!334, !216, i64 48}
!337 = !{!"branch_weights", i32 153, i32 12885}
!338 = !{!"branch_weights", i32 12851, i32 35}
!339 = !{!"branch_weights", i32 1, i32 35}
!340 = !{!"branch_weights", i32 40, i32 12846}
!341 = !{!"branch_weights", i32 12846, i32 1}
!342 = !{!"branch_weights", i32 1, i32 40}
!343 = !{!"branch_weights", i32 1521, i32 119}
!344 = !{!"branch_weights", i32 1, i32 39}
!345 = !{!"branch_weights", i32 39, i32 1}
!346 = !{!"branch_weights", i32 114020082, i32 2033463566}
!347 = !{!348, !216, i64 0}
!348 = !{!"av", !216, i64 0, !219, i64 8, !219, i64 12, !217, i64 16}
!349 = !{!350, !250, i64 16}
!350 = !{!"xpvav", !216, i64 0, !217, i64 8, !250, i64 16, !250, i64 24, !216, i64 32}
!351 = !{!"branch_weights", i32 120, i32 27}
!352 = !{!"branch_weights", i32 1, i32 27}
!353 = !{!"branch_weights", i32 27, i32 0}
!354 = distinct !{!354, !287}
!355 = !{!"branch_weights", i32 27, i32 1}
!356 = !{!"branch_weights", i32 6, i32 22}
!357 = !{!"branch_weights", i32 6, i32 1}
!358 = !{!"branch_weights", i32 1, i32 6}
!359 = !{!"branch_weights", i32 441202090, i32 1706281558}
!360 = !{!"branch_weights", i32 22, i32 1}
!361 = !{!"branch_weights", i32 4, i32 19}
!362 = !{!"branch_weights", i32 19, i32 1}
!363 = !{!"branch_weights", i32 1, i32 19}
!364 = !{!"branch_weights", i32 14098, i32 12852}
!365 = !{!"branch_weights", i32 84, i32 8}
!366 = !{!"branch_weights", i32 1, i32 8}
!367 = !{!"branch_weights", i32 8, i32 1}
!368 = !{!"branch_weights", i32 153, i32 15}
!369 = !{!"branch_weights", i32 15, i32 1}
!370 = !{!"function_entry_count", i64 12946}
!371 = !{!"function_entry_count", i64 8}
!372 = !{!"branch_weights", i32 6, i32 4}
!373 = !{!"function_entry_count", i64 21}
!374 = !{!"function_entry_count", i64 12827}
!375 = !{!"branch_weights", i32 12828, i32 1}
!376 = !{!"function_entry_count", i64 12848}
!377 = !{!"branch_weights", i32 1, i32 12849}
!378 = !{!"branch_weights", i32 12848, i32 1}
!379 = !{!"branch_weights", i32 -1659325714, i32 25669, i32 25669}
!380 = !{!"branch_weights", i32 102677, i32 12849}
!381 = !{!"branch_weights", i32 89829, i32 12848}
!382 = distinct !{!382, !287}
!383 = !{!"branch_weights", i32 2147316516, i32 167132}
!384 = !{!277, !216, i64 40}
!385 = !{!"branch_weights", i32 5, i32 12845}
!386 = !{!"branch_weights", i32 4, i32 2}
!387 = !{!"branch_weights", i32 1073741823, i32 1073741825}
!388 = !{!"branch_weights", i32 12818, i32 28}
!389 = !{!"branch_weights", i32 1, i32 28}
!390 = !{!"function_entry_count", i64 13195}
!391 = !{!265, !219, i64 12}
!392 = !{!393, !393, i64 0}
!393 = !{!"_Bool", !217, i64 0}
!394 = !{i8 0, i8 2}
!395 = !{}
!396 = !{!"function_entry_count", i64 240}
!397 = !{!"gv.c:S_CvGV"}
!398 = !{!"branch_weights", i32 241, i32 1}
!399 = !{!"function_entry_count", i64 77}
!400 = !{!"function_entry_count", i64 38563}
!401 = !{!"gv.c:S_gv_stashsvpvn_cached"}
!402 = !{!"branch_weights", i32 287, i32 38278}
!403 = !{!"branch_weights", i32 183, i32 105}
!404 = !{!"branch_weights", i32 116, i32 68}
!405 = !{!"branch_weights", i32 137, i32 1}
!406 = !{!"branch_weights", i32 68, i32 1}
!407 = !{!"branch_weights", i32 29929, i32 2087}
!408 = !{!"branch_weights", i32 173, i32 1}
!409 = !{!"function_entry_count", i64 25368}
!410 = !{!"function_entry_count", i64 118}
!411 = !{!"function_entry_count", i64 320873}
!412 = !{!"branch_weights", i32 -1131502414, i32 26925051}
!413 = !{!"branch_weights", i32 318151, i32 18}
!414 = !{!"branch_weights", i32 11555, i32 306597}
!415 = !{!"branch_weights", i32 136506268, i32 2010977380}
!416 = !{!"branch_weights", i32 22197, i32 1}
!417 = !{!"branch_weights", i32 1, i32 309303}
!418 = !{!"branch_weights", i32 2704, i32 306600}
!419 = !{!"branch_weights", i32 1, i32 306600}
!420 = !{!"branch_weights", i32 2704, i32 1}
!421 = !{!"branch_weights", i32 292775, i32 13826}
!422 = !{!"branch_weights", i32 190787, i32 101989}
!423 = !{!"branch_weights", i32 -1042677744, i32 75890688, i32 13828079}
!424 = !{!"branch_weights", i32 2027, i32 290}
!425 = !{!"branch_weights", i32 27, i32 396}
!426 = !{!"branch_weights", i32 17, i32 11}
!427 = !{!"branch_weights", i32 1, i32 17}
!428 = !{!348, !219, i64 12}
!429 = !{!"branch_weights", i32 13798, i32 29}
!430 = !{!"branch_weights", i32 5484999, i32 48400}
!431 = !{!"branch_weights", i32 341399, i32 186459025}
!432 = !{!"branch_weights", i32 13678, i32 1}
!433 = !{!277, !219, i64 56}
!434 = !{!"branch_weights", i32 187087684, i32 27357}
!435 = !{!"branch_weights", i32 1, i32 13678}
!436 = !{!"branch_weights", i32 -1, i32 1}
!437 = !{!"branch_weights", i32 194, i32 13412}
!438 = !{!238, !216, i64 8}
!439 = !{!"branch_weights", i32 24, i32 13655}
!440 = !{!"function_entry_count", i64 219130}
!441 = !{!"branch_weights", i32 219131, i32 1}
!442 = !{!"function_entry_count", i64 318167}
!443 = !{!"gv.c:S_parse_gv_stash_name"}
!444 = !{!"branch_weights", i32 313898, i32 4271}
!445 = !{!"branch_weights", i32 1, i32 313898}
!446 = !{!"branch_weights", i32 306596, i32 1}
!447 = !{!"branch_weights", i32 4320346, i32 306597}
!448 = !{!"branch_weights", i32 -177961984, i32 307028992, i32 1023}
!449 = !{!"branch_weights", i32 299833, i32 1}
!450 = !{!"branch_weights", i32 298678, i32 1156}
!451 = !{!"branch_weights", i32 7189, i32 2147476459}
!452 = !{!324, !219, i64 8}
!453 = !{!"branch_weights", i32 1, i32 299833}
!454 = !{!"branch_weights", i32 299827, i32 7}
!455 = !{!"branch_weights", i32 299827, i32 1}
!456 = !{!"branch_weights", i32 18, i32 299810}
!457 = !{!"branch_weights", i32 7162, i32 2147476486}
!458 = !{!"branch_weights", i32 299679, i32 132}
!459 = !{!"branch_weights", i32 178012, i32 -1486028668}
!460 = !{!"branch_weights", i32 132, i32 299679}
!461 = !{!"branch_weights", i32 132, i32 1}
!462 = !{!"branch_weights", i32 72, i32 61}
!463 = !{!"branch_weights", i32 17, i32 56}
!464 = !{!"branch_weights", i32 2, i32 16}
!465 = !{!"branch_weights", i32 1, i32 299679}
!466 = !{!"branch_weights", i32 299679, i32 1}
!467 = !{!"branch_weights", i32 11555, i32 288262}
!468 = !{!"branch_weights", i32 5, i32 11551}
!469 = !{!"branch_weights", i32 4320346, i32 306596}
!470 = distinct !{!470, !287}
!471 = !{!"function_entry_count", i64 22196}
!472 = !{!"gv.c:S_find_default_stash"}
!473 = !{!"branch_weights", i32 4867, i32 17331}
!474 = !{!"branch_weights", i32 16025, i32 1307}
!475 = !{!"branch_weights", i32 8573, i32 7453}
!476 = !{!"branch_weights", i32 1, i32 354}
!477 = !{!"branch_weights", i32 354, i32 1}
!478 = !{!"branch_weights", i32 6487680, i32 36925325, i32 770350, i32 555520}
!479 = !{!"branch_weights", i32 1, i32 293}
!480 = !{!"function_entry_count", i64 115665}
!481 = !{!"gv.c:S_gv_init_svtype"}
!482 = !{!"branch_weights", i32 5229, i32 69, i32 1154, i32 1444, i32 1, i32 95534, i32 1, i32 12241}
!483 = !{!"branch_weights", i32 1, i32 69}
!484 = !{!"branch_weights", i32 139, i32 1}
!485 = !{!"branch_weights", i32 69, i32 1}
!486 = !{!"branch_weights", i32 80, i32 1075}
!487 = !{!"branch_weights", i32 98, i32 1347}
!488 = !{!"branch_weights", i32 502, i32 4728}
!489 = !{!"function_entry_count", i64 2026}
!490 = !{!"gv.c:S_maybe_multimagic_gv"}
!491 = !{!"branch_weights", i32 730, i32 2006, i32 2006, i32 1276}
!492 = !{!"branch_weights", i32 8000, i32 1764, i32 420, i32 400}
!493 = !{!"branch_weights", i32 1628176, i32 1277, i32 1276}
!494 = !{!"function_entry_count", i64 22}
!495 = !{!"gv.c:S_gv_magicalize_isa"}
!496 = !{!"branch_weights", i32 23, i32 1}
!497 = !{!"function_entry_count", i64 13677}
!498 = !{!"gv.c:S_gv_magicalize"}
!499 = !{!"branch_weights", i32 92, i32 13587}
!500 = !{!"branch_weights", i32 1, i32 13587}
!501 = !{!"branch_weights", i32 13352, i32 60, i32 48, i32 58, i32 30, i32 44}
!502 = !{!"branch_weights", i32 44, i32 17}
!503 = !{!"branch_weights", i32 23, i32 26}
!504 = !{!"branch_weights", i32 47, i32 12}
!505 = !{!"branch_weights", i32 9, i32 287}
!506 = !{!"branch_weights", i32 280018, i32 2147203630}
!507 = !{!"branch_weights", i32 1, i32 13420}
!508 = !{!"branch_weights", i32 13420, i32 1}
!509 = !{!"branch_weights", i32 61, i32 13360}
!510 = !{!"branch_weights", i32 1, i32 61}
!511 = !{!"branch_weights", i32 44, i32 49}
!512 = !{!"branch_weights", i32 31, i32 14}
!513 = !{!"branch_weights", i32 1, i32 2, i32 2, i32 2, i32 5, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!514 = !{!"branch_weights", i32 5, i32 1}
!515 = !{!516, !216, i64 0}
!516 = !{!"io", !216, i64 0, !219, i64 8, !219, i64 12, !217, i64 16}
!517 = !{!518, !217, i64 129}
!518 = !{!"xpvio", !216, i64 0, !217, i64 8, !250, i64 16, !217, i64 24, !217, i64 32, !216, i64 40, !217, i64 48, !250, i64 56, !250, i64 64, !250, i64 72, !216, i64 80, !216, i64 88, !216, i64 96, !216, i64 104, !216, i64 112, !216, i64 120, !217, i64 128, !217, i64 129}
!519 = !{!"branch_weights", i32 2, i32 4}
!520 = !{!"branch_weights", i32 1, i32 16}
!521 = !{!"branch_weights", i32 2, i32 14}
!522 = distinct !{!522, !287}
!523 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1, i32 2, i32 2, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1, i32 2, i32 2, i32 1, i32 1, i32 2, i32 1, i32 1, i32 2, i32 2, i32 1, i32 2, i32 2, i32 2, i32 2}
!524 = !{!"branch_weights", i32 10, i32 1}
!525 = !{!"branch_weights", i32 3, i32 1}
!526 = !{!"branch_weights", i32 2, i32 2}
!527 = !{!"function_entry_count", i64 86}
!528 = !{!"branch_weights", i32 87, i32 1}
!529 = !{!"branch_weights", i32 1, i32 87}
!530 = !{!"branch_weights", i32 175, i32 1}
!531 = !{!"function_entry_count", i64 80}
!532 = !{!"branch_weights", i32 1, i32 81}
!533 = !{!"branch_weights", i32 161, i32 1}
!534 = !{!330, !219, i64 52}
!535 = !{!"branch_weights", i32 883, i32 1070}
!536 = !{!537, !216, i64 8}
!537 = !{!"he", !216, i64 0, !216, i64 8, !217, i64 16}
!538 = !{!"branch_weights", i32 81, i32 990}
!539 = !{!"branch_weights", i32 81, i32 1}
!540 = !{!"branch_weights", i32 242, i32 6400}
!541 = !{!"branch_weights", i32 1, i32 80}
!542 = !{!"branch_weights", i32 80, i32 1}
!543 = !{!"branch_weights", i32 74, i32 917}
!544 = !{!"branch_weights", i32 917, i32 1}
!545 = !{!"branch_weights", i32 1, i32 917}
!546 = !{!"branch_weights", i32 866, i32 8}
!547 = !{!"branch_weights", i32 1, i32 866}
!548 = !{!"branch_weights", i32 1070, i32 0}
!549 = distinct !{!549, !287}
!550 = !{!"branch_weights", i32 3745, i32 161}
!551 = distinct !{!551, !287}
!552 = !{!"function_entry_count", i64 227683}
!553 = !{!"branch_weights", i32 1, i32 227684}
!554 = !{!"branch_weights", i32 227679, i32 6}
!555 = !{!"function_entry_count", i64 218126}
!556 = !{!"branch_weights", i32 1, i32 218127}
!557 = !{!"branch_weights", i32 218127, i32 1}
!558 = !{!"branch_weights", i32 436255, i32 1}
!559 = !{!"branch_weights", i32 -1476984583, i32 13633, i32 155742678}
!560 = !{!"branch_weights", i32 2, i32 206703}
!561 = !{!"branch_weights", i32 1, i32 11424}
!562 = !{!"branch_weights", i32 11424, i32 1}
!563 = !{!516, !219, i64 8}
!564 = !{!518, !217, i64 128}
!565 = !{!"function_entry_count", i64 57142}
!566 = !{!"gv.c:S_SvREFCNT_dec"}
!567 = !{!"branch_weights", i32 57143, i32 1}
!568 = !{!"branch_weights", i32 1, i32 116}
!569 = !{!570, !216, i64 40}
!570 = !{!"magic", !216, i64 0, !216, i64 8, !571, i64 16, !217, i64 18, !217, i64 19, !250, i64 24, !216, i64 32, !216, i64 40}
!571 = !{!"short", !217, i64 0}
!572 = !{!573, !217, i64 0}
!573 = !{!"am_table", !217, i64 0, !217, i64 1, !571, i64 2, !219, i64 4, !217, i64 8}
!574 = distinct !{!574, !287}
!575 = !{!"function_entry_count", i64 7}
!576 = !{!334, !219, i64 28}
!577 = !{!"branch_weights", i32 7, i32 2}
!578 = !{!573, !219, i64 4}
!579 = !{!573, !217, i64 1}
!580 = !{!"branch_weights", i32 6, i32 2}
!581 = !{!"branch_weights", i32 60, i32 16}
!582 = !{!"branch_weights", i32 16, i32 1}
!583 = !{!"branch_weights", i32 7, i32 10}
!584 = !{!"branch_weights", i32 1, i32 15}
!585 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2}
!586 = !{!"branch_weights", i32 2, i32 73}
!587 = distinct !{!587, !287}
!588 = !{!"function_entry_count", i64 74}
!589 = !{!"gv.c:S_SvREFCNT_inc"}
!590 = !{!"branch_weights", i32 75, i32 1}
!591 = !{!592, !216, i64 0}
!592 = !{!"xpvmg", !216, i64 0, !217, i64 8, !250, i64 16, !217, i64 24, !217, i64 32, !217, i64 40}
!593 = !{!594, !250, i64 24}
!594 = !{!"op", !216, i64 0, !216, i64 8, !216, i64 16, !250, i64 24, !219, i64 32, !219, i64 33, !219, i64 33, !219, i64 33, !219, i64 33, !219, i64 33, !219, i64 33, !219, i64 33, !217, i64 34, !217, i64 35}
!595 = !{!"branch_weights", i32 17, i32 64}
!596 = !{!"branch_weights", i32 1, i32 3}
!597 = !{!"branch_weights", i32 1561186526, i32 586297122}
!598 = !{!"branch_weights", i32 536870912, i32 1610612736}
!599 = !{!"branch_weights", i32 1610612736, i32 536870912}
!600 = !{!"branch_weights", i32 2, i32 6}
!601 = !{!"branch_weights", i32 1610678197, i32 536805451}
!602 = !{!"branch_weights", i32 1, i32 14, i32 14, i32 14, i32 14, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1}
!603 = !{!"branch_weights", i32 1, i32 5}
!604 = !{!"branch_weights", i32 507587044, i32 1639896604}
!605 = !{!"branch_weights", i32 -2147483648, i32 0}
!606 = !{!"branch_weights", i32 1948345697, i32 199137951}
!607 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 133818789, i32 133818789, i32 133818789, i32 133818789, i32 133818789, i32 133818789, i32 133818789, i32 133818789, i32 133818789, i32 133818789, i32 133818789, i32 133818789, i32 133818789, i32 133818789, i32 133818789, i32 133818789, i32 2042, i32 1276195, i32 1276195, i32 1276195, i32 1276195, i32 1276195, i32 0, i32 0, i32 0}
!608 = !{!609, !393, i64 212}
!609 = !{!"jmpenv", !217, i64 0, !216, i64 200, !219, i64 208, !393, i64 212}
!610 = !{!"branch_weights", i32 1802235453, i32 345248195}
!611 = !{!"branch_weights", i32 84, i32 24}
!612 = !{!613, !216, i64 48}
!613 = !{!"binop", !216, i64 0, !216, i64 8, !216, i64 16, !250, i64 24, !219, i64 32, !219, i64 33, !219, i64 33, !219, i64 33, !219, i64 33, !219, i64 33, !219, i64 33, !219, i64 33, !217, i64 34, !217, i64 35, !216, i64 40, !216, i64 48}
!614 = !{!613, !216, i64 0}
!615 = !{!594, !217, i64 34}
!616 = !{!"branch_weights", i32 429496730, i32 858993459, i32 858993459}
!617 = !{!613, !217, i64 34}
!618 = !{!619, !216, i64 24}
!619 = !{!"stackinfo", !216, i64 0, !216, i64 8, !216, i64 16, !216, i64 24, !219, i64 32, !219, i64 36, !219, i64 40, !219, i64 44}
!620 = !{!619, !216, i64 16}
!621 = !{!619, !219, i64 40}
!622 = !{!619, !219, i64 32}
!623 = !{!619, !216, i64 0}
!624 = !{!350, !250, i64 24}
!625 = !{!594, !217, i64 35}
!626 = !{!"branch_weights", i32 3, i32 1, i32 1}
!627 = distinct !{!627, !287}
!628 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1}
!629 = !{!"function_entry_count", i64 57829}
!630 = !{!"branch_weights", i32 57830, i32 1}
!631 = !{!"branch_weights", i32 1, i32 57830}
!632 = !{!"branch_weights", i32 57829, i32 2}
!633 = !{!"branch_weights", i32 57829, i32 1}
!634 = !{!"branch_weights", i32 1, i32 57829}
!635 = !{!"branch_weights", i32 57827, i32 3}
!636 = !{!"function_entry_count", i64 3}
!637 = !{!"branch_weights", i32 1, i32 4}
!638 = !{!"branch_weights", i32 4, i32 1}
!639 = distinct !{!639, !287}
!640 = !{!277, !216, i64 72}
!641 = !{!"function_entry_count", i64 664}
!642 = !{!"branch_weights", i32 1, i32 665}
!643 = !{!227, !219, i64 8}
!644 = !{!"branch_weights", i32 665, i32 1}
!645 = !{!"branch_weights", i32 -1360275000, i32 677949153}
!646 = !{!"branch_weights", i32 1, i32 545}
!647 = !{!"branch_weights", i32 545, i32 1}
!648 = !{!"branch_weights", i32 537, i32 9}
!649 = !{!"branch_weights", i32 453, i32 85}
!650 = !{!"branch_weights", i32 399, i32 55}
!651 = !{!"branch_weights", i32 383, i32 17}
!652 = !{!"branch_weights", i32 381, i32 3}
!653 = !{!"branch_weights", i32 381, i32 1}
!654 = !{!"branch_weights", i32 1, i32 381}
!655 = !{!"branch_weights", i32 436627, i32 55306341}
!656 = !{!"branch_weights", i32 169, i32 213}
!657 = !{!"branch_weights", i32 45369, i32 427}
!658 = !{!"branch_weights", i32 213, i32 213}
!659 = !{!570, !217, i64 18}
!660 = !{!"branch_weights", i32 213, i32 1}
!661 = distinct !{!661, !287}
!662 = !{!"branch_weights", i32 4, i32 378}
!663 = !{!"branch_weights", i32 757, i32 142884}
!664 = !{!"branch_weights", i32 211, i32 168}
!665 = !{!"branch_weights", i32 7941196, i32 822884}
!666 = !{!"branch_weights", i32 121, i32 74}
!667 = !{!"branch_weights", i32 121, i32 1}
!668 = !{!"function_entry_count", i64 374}
!669 = !{!"branch_weights", i32 375, i32 1}
!670 = !{!"gv.c:S_maybe_add_coresub"}
!671 = !{!267, !216, i64 64}
!672 = !{!"gv.c:core_xsub"}
!673 = !{!"function_entry_count", i64 182}
!674 = !{!"gv.c:S_gv_stashpvn_internal"}
!675 = !{!"branch_weights", i32 183, i32 1}
!676 = !{!"branch_weights", i32 11, i32 173}
!677 = !{!"branch_weights", i32 347, i32 1}
!678 = !{!"branch_weights", i32 12803, i32 73}
!679 = !{!"branch_weights", i32 1, i32 173}
!680 = !{!"gv.c:S_gv_is_in_main"}
!681 = !{!"branch_weights", i32 1, i32 22197}
!682 = !{!"branch_weights", i32 492706809, i32 44395}
!683 = !{!"branch_weights", i32 1, i32 2773, i32 1148, i32 1206, i32 1849, i32 1787, i32 1836}
!684 = !{!"branch_weights", i32 2296, i32 478}
!685 = !{!"branch_weights", i32 -1863494339, i32 218103808, i32 1909147503, i32 260531026}
!686 = !{!"branch_weights", i32 26, i32 27}
!687 = !{!"branch_weights", i32 26, i32 1}
!688 = !{!"branch_weights", i32 455, i32 1}
!689 = !{!"branch_weights", i32 454, i32 2}
!690 = !{!"branch_weights", i32 57, i32 6}
!691 = !{!"branch_weights", i32 57, i32 1}
!692 = !{!"branch_weights", i32 28, i32 1179}
!693 = !{!"branch_weights", i32 28, i32 1}
!694 = !{!"branch_weights", i32 14, i32 1836}
!695 = !{!"branch_weights", i32 14, i32 1}
!696 = !{!"branch_weights", i32 8, i32 7}
!697 = !{!"branch_weights", i32 235, i32 1553}
!698 = !{!"branch_weights", i32 205, i32 31}
!699 = !{!"branch_weights", i32 205, i32 1}
!700 = !{!"branch_weights", i32 0, i32 1275068416, i32 -2113929216}
!701 = !{!"branch_weights", i32 76, i32 1}
!702 = !{!"branch_weights", i32 130, i32 1}
!703 = !{!"branch_weights", i32 38, i32 1799}
!704 = !{!"branch_weights", i32 1, i32 38}
!705 = !{!"function_entry_count", i64 18}
!706 = !{!"gv.c:S_require_tie_mod"}
!707 = !{!"branch_weights", i32 2, i32 18}
