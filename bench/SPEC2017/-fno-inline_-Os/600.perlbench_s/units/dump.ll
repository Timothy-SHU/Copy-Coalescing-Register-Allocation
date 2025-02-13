; ModuleID = 'dump.c'
source_filename = "dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.flag_to_name = type { i32, ptr }
%struct.mgvtbl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.18 = type { i8, ptr }
%struct.regexp_engine = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.0 }
%union._xmgu = type { ptr }
%union.anon.0 = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.1, %union._xivu, %union._xnvu }
%union.anon.1 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.2, %union._xivu, %union._xnvu }
%union.anon.2 = type { i64 }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.4, %union._xivu }
%union.anon.4 = type { i64 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.5, %union._xivu }
%union.anon.5 = type { i64 }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.6, ptr, %union.anon.7, %union.anon.8, %union.anon.9, ptr, %union.anon.10, ptr, i32, i32, i32 }
%union.anon.6 = type { i64 }
%union.anon.7 = type { ptr }
%union.anon.8 = type { ptr }
%union.anon.9 = type { ptr }
%union.anon.10 = type { ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.hv = type { ptr, i32, i32, %union.anon.12 }
%union.anon.12 = type { ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.he = type { ptr, ptr, %union.anon.13 }
%union.anon.13 = type { ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.3 }
%union.anon.3 = type { ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.pmop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr, ptr, i32, %union.anon.14, %union.anon.15, ptr }
%union.anon.14 = type { ptr }
%union.anon.15 = type { ptr }
%struct.regexp = type { ptr, %union._xmgu, i64, %union.anon.16, ptr, ptr, ptr, i32, i64, i64, i64, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i64, i64, i64, i64, i16, ptr }
%union.anon.16 = type { i64 }
%struct.reg_substr_data = type { i8, [3 x %struct.reg_substr_datum] }
%struct.reg_substr_datum = type { i64, i64, ptr, ptr, i64 }
%struct.p5rx = type { ptr, i32, i32, %union.anon.17 }
%union.anon.17 = type { ptr }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.svop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }
%struct.unop_aux = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr }
%union.UNOP_AUX_item = type { i64 }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.loop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.logop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr }
%struct.unop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }
%struct.magic = type { ptr, ptr, i16, i8, i8, i64, ptr, ptr }
%struct.xpvio = type { ptr, %union._xmgu, i64, %union.anon.19, %union._xivu, ptr, %union.anon.20, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%union.anon.19 = type { i64 }
%union.anon.20 = type { ptr }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.21, %union._xivu, %union._xnvu }
%union.anon.21 = type { i64 }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.mro_meta = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.mro_alg = type { ptr, ptr, i16, i16, i32 }
%struct.xpvlv = type { ptr, %union._xmgu, i64, %union.anon.22, %union._xivu, %union._xnvu, %union.anon.23, i64, ptr, i8, i8 }
%union.anon.22 = type { i64 }
%union.anon.23 = type { i64 }
%struct.stackinfo = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.padlist = type { i64, ptr, i32, i32 }
%struct.padname = type { ptr, ptr, %union.anon.25, i32, i32, i32, i32, i8, i8 }
%union.anon.25 = type { ptr }
%struct.context = type { %union.anon.26 }
%union.anon.26 = type { %struct.subst }
%struct.subst = type { i8, i8, i16, i32, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.block = type { i8, i8, i16, i32, ptr, i32, i32, ptr, %union.anon.27 }
%union.anon.27 = type { %struct.block_sub }
%struct.block_sub = type { ptr, ptr, ptr, ptr, i32, ptr }

@__const.Perl_pv_escape.octbuf = private unnamed_addr constant [32 x i8] c"%123456789ABCDF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%cx%02lx\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%cx{%02lx}\00", align 1
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"%c%03o\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%c%o\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\\0\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"VOID\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"WILD\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@PL_sv_no = external global %struct.sv, align 8
@PL_sv_yes = external global %struct.sv, align 8
@PL_sv_placeholder = external global %struct.sv, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"SV_UNDEF\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"SV_NO\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"SV_YES\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"SV_PLACEHOLDER\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@PL_debug = external global i32, align 4
@PL_tmps_ix = external local_unnamed_addr global i64, align 8
@PL_tmps_stack = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [8 x i8] c"<%lu%s>\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"<T>\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"CV(%s)\00", align 1
@reltable.Perl_sv_peek = internal unnamed_addr constant [16 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.36 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.37 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.38 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.39 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.40 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.41 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.42 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.43 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.44 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.45 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.46 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.47 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.48 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.49 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.50 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.51 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32)], align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"FREED\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"%s)\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c" [UTF8 \22%s\22]\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"(%g)\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"(%lu)\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"(%ld)\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c")\00", align 1
@PL_tainting = external local_unnamed_addr global i8, align 1
@.str.35 = private unnamed_addr constant [11 x i8] c" [tainted]\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"UNDEF\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"IV\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"NV\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"PV\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"INVLST\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"PVIV\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"PVNV\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"PVMG\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"REGEXP\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"GV\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"PVLV\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"AV\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"HV\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"CV\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"FM\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@PL_dumpindent = external local_unnamed_addr global i16, align 2
@PL_main_root = external local_unnamed_addr global ptr, align 8
@PL_defstash = external local_unnamed_addr global ptr, align 8
@.str.53 = private unnamed_addr constant [11 x i8] c"\0ASUB %s = \00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"(xsub 0x%lx %d)\0A\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"<undef>\0A\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"\0AFORMAT %s = \00", align 1
@PL_eval_root = external local_unnamed_addr global ptr, align 8
@.str.57 = private unnamed_addr constant [4 x i8] c"{}\0A\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"PMf_PRE %c%.*s%c%s\0A\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c" (RUNTIME)\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"PMf_PRE (RUNTIME)\0A\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"PMf_REPL = \00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"CODE_LIST =\0A\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"CODE_LIST = 0x%lx\0A\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"PMFLAGS = (%s)\0A\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c",ONCE\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c":USED\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c",TAINTED\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c",SCANFIRST\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c",ALL\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c",SKIPWHITE\00", align 1
@pmflags_flags_names = dso_local constant [10 x %struct.flag_to_name] [%struct.flag_to_name { i32 4194304, ptr @.str.73 }, %struct.flag_to_name { i32 8388608, ptr @.str.74 }, %struct.flag_to_name { i32 16777216, ptr @.str.75 }, %struct.flag_to_name { i32 33554432, ptr @.str.76 }, %struct.flag_to_name { i32 524288, ptr @.str.77 }, %struct.flag_to_name { i32 67108864, ptr @.str.78 }, %struct.flag_to_name { i32 134217728, ptr @.str.79 }, %struct.flag_to_name { i32 268435456, ptr @.str.80 }, %struct.flag_to_name { i32 536870912, ptr @.str.81 }, %struct.flag_to_name { i32 1073741824, ptr @.str.82 }], align 16
@.str.73 = private unnamed_addr constant [7 x i8] c",CONST\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c",KEEP\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c",GLOBAL\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c",CONTINUE\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c",RETAINT\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c",EVAL\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c",NONDESTRUCT\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c",HAS_CV\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c",CODELIST_PRIVATE\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c",IS_QR\00", align 1
@op_flags_names = dso_local constant [6 x %struct.flag_to_name] [%struct.flag_to_name { i32 4, ptr @.str.83 }, %struct.flag_to_name { i32 8, ptr @.str.84 }, %struct.flag_to_name { i32 16, ptr @.str.85 }, %struct.flag_to_name { i32 32, ptr @.str.86 }, %struct.flag_to_name { i32 64, ptr @.str.87 }, %struct.flag_to_name { i32 128, ptr @.str.88 }], align 16
@.str.83 = private unnamed_addr constant [6 x i8] c",KIDS\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c",PARENS\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c",REF\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c",MOD\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c",STACKED\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c",SPECIAL\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"%-4lu\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"????\00", align 1
@.str.91 = private unnamed_addr constant [20 x i8] c"%*sTYPE = %s  ===> \00", align 1
@PL_op_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.92 = private unnamed_addr constant [7 x i8] c"(%lu)\0A\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"  (was %s)\0A\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"TARG = %ld\0A\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c",VOID\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c",SCALAR\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c",LIST\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c",UNKNOWN\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c",SLABBED\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c",SAVEFREE\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c",STATIC\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c",FOLDED\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c",MORESIB\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c"FLAGS = (%s)\0A\00", align 1
@PL_op_private_bitdef_ix = external local_unnamed_addr constant [0 x i16], align 2
@PL_op_private_bitdefs = external local_unnamed_addr constant [0 x i16], align 2
@PL_op_private_bitfields = external local_unnamed_addr constant [0 x i16], align 2
@PL_op_private_labels = external constant [0 x i8], align 1
@.str.107 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.108 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@.str.110 = private unnamed_addr constant [16 x i8] c"PRIVATE = (%s)\0A\00", align 1
@.str.111 = private unnamed_addr constant [19 x i8] c"PRIVATE = (0x%lx)\0A\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"GV = %s\0A\00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"GV = NULL\0A\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"ARGS = \0A\00", align 1
@.str.115 = private unnamed_addr constant [14 x i8] c"%lu => 0x%lx\0A\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"SV = %s\0A\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"LINE = %lu\0A\00", align 1
@.str.118 = private unnamed_addr constant [16 x i8] c"PACKAGE = \22%s\22\0A\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"LABEL = \22%s\22\0A\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"SEQ = %u\0A\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"REDO ===> \00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"DONE\0A\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"NEXT ===> \00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"LAST ===> \00", align 1
@.str.125 = private unnamed_addr constant [12 x i8] c"OTHER ===> \00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"REFCNT = %lu\0A\00", align 1
@PL_op_sequence = external local_unnamed_addr global ptr, align 8
@PL_op_seq = external local_unnamed_addr global i64, align 8
@.str.127 = private unnamed_addr constant [13 x i8] c"GV_NAME = %s\00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"-> %s\00", align 1
@.str.129 = private unnamed_addr constant [17 x i8] c"  MAGIC = 0x%lx\0A\00", align 1
@PL_magic_vtables = external constant [31 x %struct.mgvtbl], align 16
@.str.130 = private unnamed_addr constant [30 x i8] c"    MG_VIRTUAL = &PL_vtbl_%s\0A\00", align 1
@PL_magic_vtable_names = external local_unnamed_addr constant [31 x ptr], align 16
@.str.131 = private unnamed_addr constant [24 x i8] c"    MG_VIRTUAL = 0x%lx\0A\00", align 1
@.str.132 = private unnamed_addr constant [20 x i8] c"    MG_VIRTUAL = 0\0A\00", align 1
@.str.133 = private unnamed_addr constant [21 x i8] c"    MG_PRIVATE = %d\0A\00", align 1
@magic_names = internal unnamed_addr constant [44 x %struct.anon.18] [%struct.anon.18 { i8 0, ptr @.str.154 }, %struct.anon.18 { i8 35, ptr @.str.155 }, %struct.anon.18 { i8 37, ptr @.str.156 }, %struct.anon.18 { i8 42, ptr @.str.157 }, %struct.anon.18 { i8 46, ptr @.str.158 }, %struct.anon.18 { i8 58, ptr @.str.159 }, %struct.anon.18 { i8 60, ptr @.str.160 }, %struct.anon.18 { i8 64, ptr @.str.161 }, %struct.anon.18 { i8 66, ptr @.str.162 }, %struct.anon.18 { i8 99, ptr @.str.163 }, %struct.anon.18 { i8 68, ptr @.str.164 }, %struct.anon.18 { i8 100, ptr @.str.165 }, %struct.anon.18 { i8 69, ptr @.str.166 }, %struct.anon.18 { i8 101, ptr @.str.167 }, %struct.anon.18 { i8 102, ptr @.str.168 }, %struct.anon.18 { i8 103, ptr @.str.169 }, %struct.anon.18 { i8 72, ptr @.str.170 }, %struct.anon.18 { i8 104, ptr @.str.171 }, %struct.anon.18 { i8 73, ptr @.str.172 }, %struct.anon.18 { i8 105, ptr @.str.173 }, %struct.anon.18 { i8 107, ptr @.str.174 }, %struct.anon.18 { i8 76, ptr @.str.175 }, %struct.anon.18 { i8 108, ptr @.str.176 }, %struct.anon.18 { i8 78, ptr @.str.177 }, %struct.anon.18 { i8 110, ptr @.str.178 }, %struct.anon.18 { i8 111, ptr @.str.179 }, %struct.anon.18 { i8 80, ptr @.str.180 }, %struct.anon.18 { i8 112, ptr @.str.181 }, %struct.anon.18 { i8 113, ptr @.str.182 }, %struct.anon.18 { i8 114, ptr @.str.183 }, %struct.anon.18 { i8 83, ptr @.str.184 }, %struct.anon.18 { i8 115, ptr @.str.185 }, %struct.anon.18 { i8 116, ptr @.str.186 }, %struct.anon.18 { i8 85, ptr @.str.187 }, %struct.anon.18 { i8 117, ptr @.str.188 }, %struct.anon.18 { i8 86, ptr @.str.189 }, %struct.anon.18 { i8 118, ptr @.str.190 }, %struct.anon.18 { i8 119, ptr @.str.191 }, %struct.anon.18 { i8 120, ptr @.str.192 }, %struct.anon.18 { i8 121, ptr @.str.193 }, %struct.anon.18 { i8 92, ptr @.str.194 }, %struct.anon.18 { i8 93, ptr @.str.195 }, %struct.anon.18 { i8 126, ptr @.str.196 }, %struct.anon.18 zeroinitializer], align 16
@.str.134 = private unnamed_addr constant [29 x i8] c"    MG_TYPE = PERL_MAGIC_%s\0A\00", align 1
@.str.135 = private unnamed_addr constant [28 x i8] c"    MG_TYPE = UNKNOWN(\\%o)\0A\00", align 1
@.str.136 = private unnamed_addr constant [23 x i8] c"    MG_FLAGS = 0x%02X\0A\00", align 1
@.str.137 = private unnamed_addr constant [18 x i8] c"      TAINTEDDIR\0A\00", align 1
@.str.138 = private unnamed_addr constant [16 x i8] c"      MINMATCH\0A\00", align 1
@.str.139 = private unnamed_addr constant [18 x i8] c"      REFCOUNTED\0A\00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"      GSKIP\0A\00", align 1
@.str.141 = private unnamed_addr constant [12 x i8] c"      COPY\0A\00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"      DUP\0A\00", align 1
@.str.143 = private unnamed_addr constant [13 x i8] c"      LOCAL\0A\00", align 1
@.str.144 = private unnamed_addr constant [13 x i8] c"      BYTES\0A\00", align 1
@.str.145 = private unnamed_addr constant [20 x i8] c"    MG_OBJ = 0x%lx\0A\00", align 1
@.str.146 = private unnamed_addr constant [14 x i8] c"    PAT = %s\0A\00", align 1
@.str.147 = private unnamed_addr constant [18 x i8] c"    REFCNT = %ld\0A\00", align 1
@.str.148 = private unnamed_addr constant [18 x i8] c"    MG_LEN = %ld\0A\00", align 1
@.str.149 = private unnamed_addr constant [19 x i8] c"    MG_PTR = 0x%lx\00", align 1
@.str.150 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.151 = private unnamed_addr constant [15 x i8] c" => HEf_SVKEY\0A\00", align 1
@.str.152 = private unnamed_addr constant [55 x i8] c" ???? - dump.c does not know how to handle this MG_LEN\00", align 1
@.str.153 = private unnamed_addr constant [24 x i8] c"      %2ld: %lu -> %lu\0A\00", align 1
@.str.154 = private unnamed_addr constant [7 x i8] c"sv(\\0)\00", align 1
@.str.155 = private unnamed_addr constant [10 x i8] c"arylen(#)\00", align 1
@.str.156 = private unnamed_addr constant [9 x i8] c"rhash(%)\00", align 1
@.str.157 = private unnamed_addr constant [12 x i8] c"debugvar(*)\00", align 1
@.str.158 = private unnamed_addr constant [7 x i8] c"pos(.)\00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"symtab(:)\00", align 1
@.str.160 = private unnamed_addr constant [11 x i8] c"backref(<)\00", align 1
@.str.161 = private unnamed_addr constant [12 x i8] c"arylen_p(@)\00", align 1
@.str.162 = private unnamed_addr constant [6 x i8] c"bm(B)\00", align 1
@.str.163 = private unnamed_addr constant [18 x i8] c"overload_table(c)\00", align 1
@.str.164 = private unnamed_addr constant [11 x i8] c"regdata(D)\00", align 1
@.str.165 = private unnamed_addr constant [12 x i8] c"regdatum(d)\00", align 1
@.str.166 = private unnamed_addr constant [7 x i8] c"env(E)\00", align 1
@.str.167 = private unnamed_addr constant [11 x i8] c"envelem(e)\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"fm(f)\00", align 1
@.str.169 = private unnamed_addr constant [16 x i8] c"regex_global(g)\00", align 1
@.str.170 = private unnamed_addr constant [9 x i8] c"hints(H)\00", align 1
@.str.171 = private unnamed_addr constant [13 x i8] c"hintselem(h)\00", align 1
@.str.172 = private unnamed_addr constant [7 x i8] c"isa(I)\00", align 1
@.str.173 = private unnamed_addr constant [11 x i8] c"isaelem(i)\00", align 1
@.str.174 = private unnamed_addr constant [9 x i8] c"nkeys(k)\00", align 1
@.str.175 = private unnamed_addr constant [10 x i8] c"dbfile(L)\00", align 1
@.str.176 = private unnamed_addr constant [10 x i8] c"dbline(l)\00", align 1
@.str.177 = private unnamed_addr constant [10 x i8] c"shared(N)\00", align 1
@.str.178 = private unnamed_addr constant [17 x i8] c"shared_scalar(n)\00", align 1
@.str.179 = private unnamed_addr constant [12 x i8] c"collxfrm(o)\00", align 1
@.str.180 = private unnamed_addr constant [8 x i8] c"tied(P)\00", align 1
@.str.181 = private unnamed_addr constant [12 x i8] c"tiedelem(p)\00", align 1
@.str.182 = private unnamed_addr constant [14 x i8] c"tiedscalar(q)\00", align 1
@.str.183 = private unnamed_addr constant [6 x i8] c"qr(r)\00", align 1
@.str.184 = private unnamed_addr constant [7 x i8] c"sig(S)\00", align 1
@.str.185 = private unnamed_addr constant [11 x i8] c"sigelem(s)\00", align 1
@.str.186 = private unnamed_addr constant [9 x i8] c"taint(t)\00", align 1
@.str.187 = private unnamed_addr constant [8 x i8] c"uvar(U)\00", align 1
@.str.188 = private unnamed_addr constant [13 x i8] c"uvar_elem(u)\00", align 1
@.str.189 = private unnamed_addr constant [11 x i8] c"vstring(V)\00", align 1
@.str.190 = private unnamed_addr constant [7 x i8] c"vec(v)\00", align 1
@.str.191 = private unnamed_addr constant [8 x i8] c"utf8(w)\00", align 1
@.str.192 = private unnamed_addr constant [10 x i8] c"substr(x)\00", align 1
@.str.193 = private unnamed_addr constant [11 x i8] c"defelem(y)\00", align 1
@.str.194 = private unnamed_addr constant [9 x i8] c"lvref(\\)\00", align 1
@.str.195 = private unnamed_addr constant [13 x i8] c"checkcall(])\00", align 1
@.str.196 = private unnamed_addr constant [7 x i8] c"ext(~)\00", align 1
@.str.197 = private unnamed_addr constant [11 x i8] c"%s = 0x%lx\00", align 1
@.str.198 = private unnamed_addr constant [7 x i8] c"\09\22%s\22\0A\00", align 1
@.str.199 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.200 = private unnamed_addr constant [10 x i8] c"\22%s\22 :: \22\00", align 1
@.str.201 = private unnamed_addr constant [5 x i8] c"%s\22\0A\00", align 1
@first_sv_flags_names = dso_local constant [8 x %struct.flag_to_name] [%struct.flag_to_name { i32 524288, ptr @.str.202 }, %struct.flag_to_name { i32 1048576, ptr @.str.203 }, %struct.flag_to_name { i32 2097152, ptr @.str.204 }, %struct.flag_to_name { i32 4194304, ptr @.str.205 }, %struct.flag_to_name { i32 8388608, ptr @.str.206 }, %struct.flag_to_name { i32 256, ptr @.str.207 }, %struct.flag_to_name { i32 512, ptr @.str.208 }, %struct.flag_to_name { i32 1024, ptr @.str.209 }], align 16
@.str.202 = private unnamed_addr constant [6 x i8] c"TEMP,\00", align 1
@.str.203 = private unnamed_addr constant [8 x i8] c"OBJECT,\00", align 1
@.str.204 = private unnamed_addr constant [5 x i8] c"GMG,\00", align 1
@.str.205 = private unnamed_addr constant [5 x i8] c"SMG,\00", align 1
@.str.206 = private unnamed_addr constant [5 x i8] c"RMG,\00", align 1
@.str.207 = private unnamed_addr constant [5 x i8] c"IOK,\00", align 1
@.str.208 = private unnamed_addr constant [5 x i8] c"NOK,\00", align 1
@.str.209 = private unnamed_addr constant [5 x i8] c"POK,\00", align 1
@second_sv_flags_names = dso_local constant [8 x %struct.flag_to_name] [%struct.flag_to_name { i32 33554432, ptr @.str.210 }, %struct.flag_to_name { i32 16777216, ptr @.str.211 }, %struct.flag_to_name { i32 134217728, ptr @.str.212 }, %struct.flag_to_name { i32 65536, ptr @.str.213 }, %struct.flag_to_name { i32 67108864, ptr @.str.214 }, %struct.flag_to_name { i32 4096, ptr @.str.215 }, %struct.flag_to_name { i32 8192, ptr @.str.216 }, %struct.flag_to_name { i32 16384, ptr @.str.217 }], align 16
@.str.210 = private unnamed_addr constant [5 x i8] c"OOK,\00", align 1
@.str.211 = private unnamed_addr constant [6 x i8] c"FAKE,\00", align 1
@.str.212 = private unnamed_addr constant [10 x i8] c"READONLY,\00", align 1
@.str.213 = private unnamed_addr constant [9 x i8] c"PROTECT,\00", align 1
@.str.214 = private unnamed_addr constant [7 x i8] c"BREAK,\00", align 1
@.str.215 = private unnamed_addr constant [6 x i8] c"pIOK,\00", align 1
@.str.216 = private unnamed_addr constant [6 x i8] c"pNOK,\00", align 1
@.str.217 = private unnamed_addr constant [6 x i8] c"pPOK,\00", align 1
@cv_flags_names = dso_local constant [17 x %struct.flag_to_name] [%struct.flag_to_name { i32 128, ptr @.str.218 }, %struct.flag_to_name { i32 256, ptr @.str.219 }, %struct.flag_to_name { i32 32, ptr @.str.220 }, %struct.flag_to_name { i32 64, ptr @.str.221 }, %struct.flag_to_name { i32 4, ptr @.str.222 }, %struct.flag_to_name { i32 512, ptr @.str.223 }, %struct.flag_to_name { i32 2, ptr @.str.224 }, %struct.flag_to_name { i32 1, ptr @.str.225 }, %struct.flag_to_name { i32 16, ptr @.str.226 }, %struct.flag_to_name { i32 1024, ptr @.str.227 }, %struct.flag_to_name { i32 4096, ptr @.str.228 }, %struct.flag_to_name { i32 8192, ptr @.str.229 }, %struct.flag_to_name { i32 16384, ptr @.str.230 }, %struct.flag_to_name { i32 2048, ptr @.str.231 }, %struct.flag_to_name { i32 32768, ptr @.str.232 }, %struct.flag_to_name { i32 65536, ptr @.str.233 }, %struct.flag_to_name { i32 8, ptr @.str.234 }], align 16
@.str.218 = private unnamed_addr constant [6 x i8] c"ANON,\00", align 1
@.str.219 = private unnamed_addr constant [8 x i8] c"UNIQUE,\00", align 1
@.str.220 = private unnamed_addr constant [7 x i8] c"CLONE,\00", align 1
@.str.221 = private unnamed_addr constant [8 x i8] c"CLONED,\00", align 1
@.str.222 = private unnamed_addr constant [7 x i8] c"CONST,\00", align 1
@.str.223 = private unnamed_addr constant [9 x i8] c"NODEBUG,\00", align 1
@.str.224 = private unnamed_addr constant [8 x i8] c"LVALUE,\00", align 1
@.str.225 = private unnamed_addr constant [8 x i8] c"METHOD,\00", align 1
@.str.226 = private unnamed_addr constant [13 x i8] c"WEAKOUTSIDE,\00", align 1
@.str.227 = private unnamed_addr constant [9 x i8] c"CVGV_RC,\00", align 1
@.str.228 = private unnamed_addr constant [9 x i8] c"DYNFILE,\00", align 1
@.str.229 = private unnamed_addr constant [10 x i8] c"AUTOLOAD,\00", align 1
@.str.230 = private unnamed_addr constant [9 x i8] c"HASEVAL,\00", align 1
@.str.231 = private unnamed_addr constant [9 x i8] c"SLABBED,\00", align 1
@.str.232 = private unnamed_addr constant [7 x i8] c"NAMED,\00", align 1
@.str.233 = private unnamed_addr constant [9 x i8] c"LEXICAL,\00", align 1
@.str.234 = private unnamed_addr constant [8 x i8] c"ISXSUB,\00", align 1
@hv_flags_names = dso_local constant [5 x %struct.flag_to_name] [%struct.flag_to_name { i32 536870912, ptr @.str.235 }, %struct.flag_to_name { i32 1073741824, ptr @.str.236 }, %struct.flag_to_name { i32 -2147483648, ptr @.str.237 }, %struct.flag_to_name { i32 268435456, ptr @.str.238 }, %struct.flag_to_name { i32 32768, ptr @.str.239 }], align 16
@.str.235 = private unnamed_addr constant [11 x i8] c"SHAREKEYS,\00", align 1
@.str.236 = private unnamed_addr constant [9 x i8] c"LAZYDEL,\00", align 1
@.str.237 = private unnamed_addr constant [11 x i8] c"HASKFLAGS,\00", align 1
@.str.238 = private unnamed_addr constant [10 x i8] c"OVERLOAD,\00", align 1
@.str.239 = private unnamed_addr constant [11 x i8] c"CLONEABLE,\00", align 1
@gp_flags_names = dso_local constant [3 x %struct.flag_to_name] [%struct.flag_to_name { i32 1, ptr @.str.240 }, %struct.flag_to_name { i32 2, ptr @.str.241 }, %struct.flag_to_name { i32 4, ptr @.str.242 }], align 16
@.str.240 = private unnamed_addr constant [7 x i8] c"INTRO,\00", align 1
@.str.241 = private unnamed_addr constant [7 x i8] c"MULTI,\00", align 1
@.str.242 = private unnamed_addr constant [10 x i8] c"ASSUMECV,\00", align 1
@gp_flags_imported_names = dso_local constant [4 x %struct.flag_to_name] [%struct.flag_to_name { i32 16, ptr @.str.243 }, %struct.flag_to_name { i32 32, ptr @.str.244 }, %struct.flag_to_name { i32 64, ptr @.str.245 }, %struct.flag_to_name { i32 128, ptr @.str.246 }], align 16
@.str.243 = private unnamed_addr constant [4 x i8] c" SV\00", align 1
@.str.244 = private unnamed_addr constant [4 x i8] c" AV\00", align 1
@.str.245 = private unnamed_addr constant [4 x i8] c" HV\00", align 1
@.str.246 = private unnamed_addr constant [4 x i8] c" CV\00", align 1
@regexp_extflags_names = dso_local constant [23 x %struct.flag_to_name] [%struct.flag_to_name { i32 1, ptr @.str.247 }, %struct.flag_to_name { i32 2, ptr @.str.248 }, %struct.flag_to_name { i32 4, ptr @.str.249 }, %struct.flag_to_name { i32 8, ptr @.str.250 }, %struct.flag_to_name { i32 16, ptr @.str.251 }, %struct.flag_to_name { i32 64, ptr @.str.252 }, %struct.flag_to_name { i32 32, ptr @.str.253 }, %struct.flag_to_name { i32 16777216, ptr @.str.254 }, %struct.flag_to_name { i32 65536, ptr @.str.255 }, %struct.flag_to_name { i32 131072, ptr @.str.256 }, %struct.flag_to_name { i32 524288, ptr @.str.257 }, %struct.flag_to_name { i32 1048576, ptr @.str.258 }, %struct.flag_to_name { i32 2097152, ptr @.str.259 }, %struct.flag_to_name { i32 4194304, ptr @.str.260 }, %struct.flag_to_name { i32 8388608, ptr @.str.261 }, %struct.flag_to_name { i32 2048, ptr @.str.262 }, %struct.flag_to_name { i32 33554432, ptr @.str.263 }, %struct.flag_to_name { i32 67108864, ptr @.str.264 }, %struct.flag_to_name { i32 134217728, ptr @.str.265 }, %struct.flag_to_name { i32 268435456, ptr @.str.266 }, %struct.flag_to_name { i32 536870912, ptr @.str.267 }, %struct.flag_to_name { i32 1073741824, ptr @.str.268 }, %struct.flag_to_name { i32 -2147483648, ptr @.str.269 }], align 16
@.str.247 = private unnamed_addr constant [15 x i8] c"PMf_MULTILINE,\00", align 1
@.str.248 = private unnamed_addr constant [16 x i8] c"PMf_SINGLELINE,\00", align 1
@.str.249 = private unnamed_addr constant [10 x i8] c"PMf_FOLD,\00", align 1
@.str.250 = private unnamed_addr constant [14 x i8] c"PMf_EXTENDED,\00", align 1
@.str.251 = private unnamed_addr constant [19 x i8] c"PMf_EXTENDED_MORE,\00", align 1
@.str.252 = private unnamed_addr constant [14 x i8] c"PMf_KEEPCOPY,\00", align 1
@.str.253 = private unnamed_addr constant [14 x i8] c"PMf_NOCAPURE,\00", align 1
@.str.254 = private unnamed_addr constant [13 x i8] c"IS_ANCHORED,\00", align 1
@.str.255 = private unnamed_addr constant [18 x i8] c"NO_INPLACE_SUBST,\00", align 1
@.str.256 = private unnamed_addr constant [11 x i8] c"EVAL_SEEN,\00", align 1
@.str.257 = private unnamed_addr constant [11 x i8] c"CHECK_ALL,\00", align 1
@.str.258 = private unnamed_addr constant [12 x i8] c"MATCH_UTF8,\00", align 1
@.str.259 = private unnamed_addr constant [17 x i8] c"USE_INTUIT_NOML,\00", align 1
@.str.260 = private unnamed_addr constant [15 x i8] c"USE_INTUIT_ML,\00", align 1
@.str.261 = private unnamed_addr constant [13 x i8] c"INTUIT_TAIL,\00", align 1
@.str.262 = private unnamed_addr constant [7 x i8] c"SPLIT,\00", align 1
@.str.263 = private unnamed_addr constant [11 x i8] c"COPY_DONE,\00", align 1
@.str.264 = private unnamed_addr constant [14 x i8] c"TAINTED_SEEN,\00", align 1
@.str.265 = private unnamed_addr constant [9 x i8] c"TAINTED,\00", align 1
@.str.266 = private unnamed_addr constant [12 x i8] c"START_ONLY,\00", align 1
@.str.267 = private unnamed_addr constant [11 x i8] c"SKIPWHITE,\00", align 1
@.str.268 = private unnamed_addr constant [7 x i8] c"WHITE,\00", align 1
@.str.269 = private unnamed_addr constant [6 x i8] c"NULL,\00", align 1
@regexp_core_intflags_names = dso_local constant [13 x %struct.flag_to_name] [%struct.flag_to_name { i32 1, ptr @.str.270 }, %struct.flag_to_name { i32 2, ptr @.str.271 }, %struct.flag_to_name { i32 4, ptr @.str.272 }, %struct.flag_to_name { i32 8, ptr @.str.273 }, %struct.flag_to_name { i32 16, ptr @.str.274 }, %struct.flag_to_name { i32 32, ptr @.str.275 }, %struct.flag_to_name { i32 64, ptr @.str.276 }, %struct.flag_to_name { i32 128, ptr @.str.277 }, %struct.flag_to_name { i32 256, ptr @.str.278 }, %struct.flag_to_name { i32 512, ptr @.str.279 }, %struct.flag_to_name { i32 1024, ptr @.str.280 }, %struct.flag_to_name { i32 2048, ptr @.str.281 }, %struct.flag_to_name { i32 4096, ptr @.str.282 }], align 16
@.str.270 = private unnamed_addr constant [6 x i8] c"SKIP,\00", align 1
@.str.271 = private unnamed_addr constant [10 x i8] c"IMPLICIT,\00", align 1
@.str.272 = private unnamed_addr constant [9 x i8] c"NAUGHTY,\00", align 1
@.str.273 = private unnamed_addr constant [14 x i8] c"VERBARG_SEEN,\00", align 1
@.str.274 = private unnamed_addr constant [15 x i8] c"CUTGROUP_SEEN,\00", align 1
@.str.275 = private unnamed_addr constant [13 x i8] c"USE_RE_EVAL,\00", align 1
@.str.276 = private unnamed_addr constant [8 x i8] c"NOSCAN,\00", align 1
@.str.277 = private unnamed_addr constant [11 x i8] c"CANY_SEEN,\00", align 1
@.str.278 = private unnamed_addr constant [11 x i8] c"GPOS_SEEN,\00", align 1
@.str.279 = private unnamed_addr constant [12 x i8] c"GPOS_FLOAT,\00", align 1
@.str.280 = private unnamed_addr constant [11 x i8] c"ANCH_MBOL,\00", align 1
@.str.281 = private unnamed_addr constant [11 x i8] c"ANCH_SBOL,\00", align 1
@.str.282 = private unnamed_addr constant [11 x i8] c"ANCH_GPOS,\00", align 1
@.str.283 = private unnamed_addr constant [8 x i8] c"SV = 0\0A\00", align 1
@.str.284 = private unnamed_addr constant [50 x i8] c"(0x%lx) at 0x%lx\0A%*s  REFCNT = %ld\0A%*s  FLAGS = (\00", align 1
@.str.285 = private unnamed_addr constant [10 x i8] c"PADSTALE,\00", align 1
@.str.286 = private unnamed_addr constant [8 x i8] c"PADTMP,\00", align 1
@.str.287 = private unnamed_addr constant [5 x i8] c"ROK,\00", align 1
@.str.288 = private unnamed_addr constant [9 x i8] c"WEAKREF,\00", align 1
@.str.289 = private unnamed_addr constant [7 x i8] c"IsCOW,\00", align 1
@.str.290 = private unnamed_addr constant [14 x i8] c"PCS_IMPORTED,\00", align 1
@.str.291 = private unnamed_addr constant [8 x i8] c"SCREAM,\00", align 1
@.str.292 = private unnamed_addr constant [7 x i8] c"IMPORT\00", align 1
@.str.293 = private unnamed_addr constant [5 x i8] c"ALL,\00", align 1
@.str.294 = private unnamed_addr constant [4 x i8] c" ),\00", align 1
@.str.295 = private unnamed_addr constant [8 x i8] c"EVALED,\00", align 1
@.str.296 = private unnamed_addr constant [6 x i8] c"IsUV,\00", align 1
@.str.297 = private unnamed_addr constant [6 x i8] c"TAIL,\00", align 1
@.str.298 = private unnamed_addr constant [7 x i8] c"VALID,\00", align 1
@.str.299 = private unnamed_addr constant [5 x i8] c"UTF8\00", align 1
@.str.300 = private unnamed_addr constant [6 x i8] c"SV = \00", align 1
@.str.301 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@reltable.Perl_do_sv_dump = internal unnamed_addr constant [16 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.446 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.37 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.38 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.39 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.447 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.41 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.42 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.43 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.44 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.448 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.46 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.449 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.450 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.451 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.452 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.453 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32)], align 4
@.str.302 = private unnamed_addr constant [19 x i8] c"UNKNOWN(0x%lx) %s\0A\00", align 1
@.str.303 = private unnamed_addr constant [11 x i8] c"  UV = %lu\00", align 1
@.str.304 = private unnamed_addr constant [11 x i8] c"  IV = %ld\00", align 1
@.str.305 = private unnamed_addr constant [13 x i8] c"  NV = %.*g\0A\00", align 1
@.str.306 = private unnamed_addr constant [14 x i8] c"  RV = 0x%lx\0A\00", align 1
@.str.307 = private unnamed_addr constant [16 x i8] c"  OFFSET = %lu\0A\00", align 1
@.str.308 = private unnamed_addr constant [14 x i8] c"  PV = 0x%lx \00", align 1
@.str.309 = private unnamed_addr constant [10 x i8] c"( %s . ) \00", align 1
@.str.310 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.311 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.312 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.313 = private unnamed_addr constant [13 x i8] c"  CUR = %ld\0A\00", align 1
@.str.314 = private unnamed_addr constant [13 x i8] c"  LEN = %ld\0A\00", align 1
@.str.315 = private unnamed_addr constant [19 x i8] c"  COW_REFCNT = %d\0A\00", align 1
@.str.316 = private unnamed_addr constant [10 x i8] c"  PV = 0\0A\00", align 1
@.str.317 = private unnamed_addr constant [8 x i8] c"  STASH\00", align 1
@.str.318 = private unnamed_addr constant [16 x i8] c"  USEFUL = %ld\0A\00", align 1
@.str.319 = private unnamed_addr constant [16 x i8] c"  ARRAY = 0x%lx\00", align 1
@.str.320 = private unnamed_addr constant [15 x i8] c" (offset=%ld)\0A\00", align 1
@.str.321 = private unnamed_addr constant [17 x i8] c"  ALLOC = 0x%lx\0A\00", align 1
@.str.322 = private unnamed_addr constant [14 x i8] c"  FILL = %ld\0A\00", align 1
@.str.323 = private unnamed_addr constant [13 x i8] c"  MAX = %ld\0A\00", align 1
@.str.324 = private unnamed_addr constant [18 x i8] c"  ARYLEN = 0x%lx\0A\00", align 1
@.str.325 = private unnamed_addr constant [6 x i8] c",REAL\00", align 1
@.str.326 = private unnamed_addr constant [7 x i8] c",REIFY\00", align 1
@.str.327 = private unnamed_addr constant [16 x i8] c"  FLAGS = (%s)\0A\00", align 1
@.str.328 = private unnamed_addr constant [13 x i8] c"Elt No. %ld\0A\00", align 1
@.str.329 = private unnamed_addr constant [19 x i8] c"  AUX_FLAGS = %lu\0A\00", align 1
@.str.330 = private unnamed_addr constant [4 x i8] c"  (\00", align 1
@.str.331 = private unnamed_addr constant [8 x i8] c"%d%s:%d\00", align 1
@.str.332 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.333 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.334 = private unnamed_addr constant [24 x i8] c"  hash quality = %.1f%%\00", align 1
@.str.335 = private unnamed_addr constant [14 x i8] c"  KEYS = %ld\0A\00", align 1
@.str.336 = private unnamed_addr constant [29 x i8] c"  FILL = %lu (cached = %lu)\0A\00", align 1
@.str.337 = private unnamed_addr constant [14 x i8] c"  FILL = %lu\0A\00", align 1
@.str.338 = private unnamed_addr constant [15 x i8] c"  RITER = %ld\0A\00", align 1
@.str.339 = private unnamed_addr constant [17 x i8] c"  EITER = 0x%lx\0A\00", align 1
@.str.340 = private unnamed_addr constant [15 x i8] c"  RAND = 0x%lx\00", align 1
@.str.341 = private unnamed_addr constant [16 x i8] c" (LAST = 0x%lx)\00", align 1
@.str.342 = private unnamed_addr constant [18 x i8] c"  PMROOT = 0x%lx\0A\00", align 1
@.str.343 = private unnamed_addr constant [15 x i8] c"  NAME = \22%s\22\0A\00", align 1
@.str.344 = private unnamed_addr constant [19 x i8] c"  NAMECOUNT = %ld\0A\00", align 1
@.str.345 = private unnamed_addr constant [7 x i8] c", \22%s\22\00", align 1
@.str.346 = private unnamed_addr constant [9 x i8] c", (null)\00", align 1
@.str.347 = private unnamed_addr constant [14 x i8] c"  ENAME = %s\0A\00", align 1
@.str.348 = private unnamed_addr constant [16 x i8] c"  ENAME = \22%s\22\0A\00", align 1
@.str.349 = private unnamed_addr constant [20 x i8] c"  BACKREFS = 0x%lx\0A\00", align 1
@.str.350 = private unnamed_addr constant [28 x i8] c"  MRO_WHICH = \22%s\22 (0x%lx)\0A\00", align 1
@.str.351 = private unnamed_addr constant [21 x i8] c"  CACHE_GEN = 0x%lx\0A\00", align 1
@.str.352 = private unnamed_addr constant [19 x i8] c"  PKG_GEN = 0x%lx\0A\00", align 1
@.str.353 = private unnamed_addr constant [26 x i8] c"  MRO_LINEAR_ALL = 0x%lx\0A\00", align 1
@.str.354 = private unnamed_addr constant [30 x i8] c"  MRO_LINEAR_CURRENT = 0x%lx\0A\00", align 1
@.str.355 = private unnamed_addr constant [26 x i8] c"  MRO_NEXTMETHOD = 0x%lx\0A\00", align 1
@.str.356 = private unnamed_addr constant [15 x i8] c"  ISA = 0x%lx\0A\00", align 1
@.str.357 = private unnamed_addr constant [8 x i8] c"Elt %s \00", align 1
@.str.358 = private unnamed_addr constant [13 x i8] c"[UTF8 \22%s\22] \00", align 1
@.str.359 = private unnamed_addr constant [11 x i8] c"[CURRENT] \00", align 1
@.str.360 = private unnamed_addr constant [14 x i8] c"HASH = 0x%lx\0A\00", align 1
@.str.361 = private unnamed_addr constant [19 x i8] c"  AUTOLOAD = \22%s\22\0A\00", align 1
@.str.362 = private unnamed_addr constant [20 x i8] c"  PROTOTYPE = \22%s\22\0A\00", align 1
@.str.363 = private unnamed_addr constant [13 x i8] c"  COMP_STASH\00", align 1
@.str.364 = private unnamed_addr constant [26 x i8] c"  START = 0x%lx ===> %ld\0A\00", align 1
@.str.365 = private unnamed_addr constant [16 x i8] c"  ROOT = 0x%lx\0A\00", align 1
@.str.366 = private unnamed_addr constant [16 x i8] c"  XSUB = 0x%lx\0A\00", align 1
@.str.367 = private unnamed_addr constant [30 x i8] c"  XSUBANY = 0x%lx (CONST SV)\0A\00", align 1
@.str.368 = private unnamed_addr constant [17 x i8] c"  XSUBANY = %ld\0A\00", align 1
@.str.369 = private unnamed_addr constant [11 x i8] c"  GVGV::GV\00", align 1
@.str.370 = private unnamed_addr constant [15 x i8] c"  FILE = \22%s\22\0A\00", align 1
@.str.371 = private unnamed_addr constant [15 x i8] c"  DEPTH = %ld\0A\00", align 1
@.str.372 = private unnamed_addr constant [17 x i8] c"  FLAGS = 0x%lx\0A\00", align 1
@.str.373 = private unnamed_addr constant [21 x i8] c"  OUTSIDE_SEQ = %lu\0A\00", align 1
@.str.374 = private unnamed_addr constant [19 x i8] c"  PADLIST = 0x%lx\0A\00", align 1
@.str.375 = private unnamed_addr constant [16 x i8] c"  HSCXT = 0x%p\0A\00", align 1
@.str.376 = private unnamed_addr constant [24 x i8] c"  OUTSIDE = 0x%lx (%s)\0A\00", align 1
@.str.377 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.378 = private unnamed_addr constant [5 x i8] c"ANON\00", align 1
@PL_main_cv = external local_unnamed_addr global ptr, align 8
@.str.379 = private unnamed_addr constant [5 x i8] c"MAIN\00", align 1
@.str.380 = private unnamed_addr constant [7 x i8] c"UNIQUE\00", align 1
@.str.381 = private unnamed_addr constant [10 x i8] c"UNDEFINED\00", align 1
@.str.382 = private unnamed_addr constant [13 x i8] c"  TYPE = %c\0A\00", align 1
@.str.383 = private unnamed_addr constant [17 x i8] c"  TARGOFF = %ld\0A\00", align 1
@.str.384 = private unnamed_addr constant [17 x i8] c"  TARGLEN = %ld\0A\00", align 1
@.str.385 = private unnamed_addr constant [16 x i8] c"  TARG = 0x%lx\0A\00", align 1
@.str.386 = private unnamed_addr constant [15 x i8] c"  FLAGS = %ld\0A\00", align 1
@.str.387 = private unnamed_addr constant [17 x i8] c"  NAMELEN = %ld\0A\00", align 1
@.str.388 = private unnamed_addr constant [10 x i8] c"  GvSTASH\00", align 1
@.str.389 = private unnamed_addr constant [14 x i8] c"  GP = 0x%lx\0A\00", align 1
@.str.390 = private unnamed_addr constant [16 x i8] c"    SV = 0x%lx\0A\00", align 1
@.str.391 = private unnamed_addr constant [16 x i8] c"    IO = 0x%lx\0A\00", align 1
@.str.392 = private unnamed_addr constant [20 x i8] c"    FORM = 0x%lx  \0A\00", align 1
@.str.393 = private unnamed_addr constant [16 x i8] c"    AV = 0x%lx\0A\00", align 1
@.str.394 = private unnamed_addr constant [16 x i8] c"    HV = 0x%lx\0A\00", align 1
@.str.395 = private unnamed_addr constant [16 x i8] c"    CV = 0x%lx\0A\00", align 1
@.str.396 = private unnamed_addr constant [19 x i8] c"    CVGEN = 0x%lx\0A\00", align 1
@.str.397 = private unnamed_addr constant [26 x i8] c"    GPFLAGS = 0x%lx (%s)\0A\00", align 1
@.str.398 = private unnamed_addr constant [11 x i8] c"ALIASED_SV\00", align 1
@.str.399 = private unnamed_addr constant [16 x i8] c"    LINE = %ld\0A\00", align 1
@.str.400 = private unnamed_addr constant [17 x i8] c"    FILE = \22%s\22\0A\00", align 1
@.str.401 = private unnamed_addr constant [8 x i8] c"    EGV\00", align 1
@.str.402 = private unnamed_addr constant [15 x i8] c"  IFP = 0x%lx\0A\00", align 1
@.str.403 = private unnamed_addr constant [15 x i8] c"  OFP = 0x%lx\0A\00", align 1
@.str.404 = private unnamed_addr constant [16 x i8] c"  DIRP = 0x%lx\0A\00", align 1
@.str.405 = private unnamed_addr constant [15 x i8] c"  LINES = %ld\0A\00", align 1
@.str.406 = private unnamed_addr constant [14 x i8] c"  PAGE = %ld\0A\00", align 1
@.str.407 = private unnamed_addr constant [18 x i8] c"  PAGE_LEN = %ld\0A\00", align 1
@.str.408 = private unnamed_addr constant [20 x i8] c"  LINES_LEFT = %ld\0A\00", align 1
@.str.409 = private unnamed_addr constant [19 x i8] c"  TOP_NAME = \22%s\22\0A\00", align 1
@.str.410 = private unnamed_addr constant [9 x i8] c"  TOP_GV\00", align 1
@.str.411 = private unnamed_addr constant [18 x i8] c"  TOP_GV = 0x%lx\0A\00", align 1
@.str.412 = private unnamed_addr constant [19 x i8] c"  FMT_NAME = \22%s\22\0A\00", align 1
@.str.413 = private unnamed_addr constant [9 x i8] c"  FMT_GV\00", align 1
@.str.414 = private unnamed_addr constant [18 x i8] c"  FMT_GV = 0x%lx\0A\00", align 1
@.str.415 = private unnamed_addr constant [22 x i8] c"  BOTTOM_NAME = \22%s\22\0A\00", align 1
@.str.416 = private unnamed_addr constant [12 x i8] c"  BOTTOM_GV\00", align 1
@.str.417 = private unnamed_addr constant [21 x i8] c"  BOTTOM_GV = 0x%lx\0A\00", align 1
@.str.418 = private unnamed_addr constant [15 x i8] c"  TYPE = '%c'\0A\00", align 1
@.str.419 = private unnamed_addr constant [16 x i8] c"  TYPE = '\\%o'\0A\00", align 1
@.str.420 = private unnamed_addr constant [26 x i8] c"  COMPFLAGS = 0x%lx (%s)\0A\00", align 1
@.str.421 = private unnamed_addr constant [25 x i8] c"  EXTFLAGS = 0x%lx (%s)\0A\00", align 1
@.str.422 = private unnamed_addr constant [23 x i8] c"  ENGINE = 0x%lx (%s)\0A\00", align 1
@PL_core_reg_engine = external constant %struct.regexp_engine, align 8
@.str.423 = private unnamed_addr constant [9 x i8] c"STANDARD\00", align 1
@.str.424 = private unnamed_addr constant [8 x i8] c"PLUG-IN\00", align 1
@.str.425 = private unnamed_addr constant [25 x i8] c"  INTFLAGS = 0x%lx (%s)\0A\00", align 1
@.str.426 = private unnamed_addr constant [20 x i8] c"  INTFLAGS = 0x%lx\0A\00", align 1
@.str.427 = private unnamed_addr constant [17 x i8] c"  NPARENS = %lu\0A\00", align 1
@.str.428 = private unnamed_addr constant [19 x i8] c"  LASTPAREN = %lu\0A\00", align 1
@.str.429 = private unnamed_addr constant [24 x i8] c"  LASTCLOSEPAREN = %lu\0A\00", align 1
@.str.430 = private unnamed_addr constant [16 x i8] c"  MINLEN = %ld\0A\00", align 1
@.str.431 = private unnamed_addr constant [19 x i8] c"  MINLENRET = %ld\0A\00", align 1
@.str.432 = private unnamed_addr constant [14 x i8] c"  GOFS = %lu\0A\00", align 1
@.str.433 = private unnamed_addr constant [20 x i8] c"  PRE_PREFIX = %lu\0A\00", align 1
@.str.434 = private unnamed_addr constant [16 x i8] c"  SUBLEN = %ld\0A\00", align 1
@.str.435 = private unnamed_addr constant [19 x i8] c"  SUBOFFSET = %ld\0A\00", align 1
@.str.436 = private unnamed_addr constant [20 x i8] c"  SUBCOFFSET = %ld\0A\00", align 1
@.str.437 = private unnamed_addr constant [21 x i8] c"  SUBBEG = 0x%lx %s\0A\00", align 1
@.str.438 = private unnamed_addr constant [16 x i8] c"  SUBBEG = 0x0\0A\00", align 1
@.str.439 = private unnamed_addr constant [21 x i8] c"  MOTHER_RE = 0x%lx\0A\00", align 1
@.str.440 = private unnamed_addr constant [23 x i8] c"  PAREN_NAMES = 0x%lx\0A\00", align 1
@.str.441 = private unnamed_addr constant [19 x i8] c"  SUBSTRS = 0x%lx\0A\00", align 1
@.str.442 = private unnamed_addr constant [20 x i8] c"  PPRIVATE = 0x%lx\0A\00", align 1
@.str.443 = private unnamed_addr constant [16 x i8] c"  OFFS = 0x%lx\0A\00", align 1
@.str.444 = private unnamed_addr constant [21 x i8] c"  QR_ANONCV = 0x%lx\0A\00", align 1
@.str.445 = private unnamed_addr constant [22 x i8] c"  SAVED_COPY = 0x%lx\0A\00", align 1
@.str.446 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.447 = private unnamed_addr constant [8 x i8] c"INVLIST\00", align 1
@.str.448 = private unnamed_addr constant [5 x i8] c"PVGV\00", align 1
@.str.449 = private unnamed_addr constant [5 x i8] c"PVAV\00", align 1
@.str.450 = private unnamed_addr constant [5 x i8] c"PVHV\00", align 1
@.str.451 = private unnamed_addr constant [5 x i8] c"PVCV\00", align 1
@.str.452 = private unnamed_addr constant [5 x i8] c"PVFM\00", align 1
@.str.453 = private unnamed_addr constant [5 x i8] c"PVIO\00", align 1
@PL_op = external local_unnamed_addr global ptr, align 8
@.str.454 = private unnamed_addr constant [15 x i8] c"NULL OP IN RUN\00", align 1
@PL_watchaddr = external local_unnamed_addr global ptr, align 8
@PL_watchok = external local_unnamed_addr global ptr, align 8
@.str.455 = private unnamed_addr constant [38 x i8] c"WARNING: %lx changed from %lx to %lx\0A\00", align 1
@PL_sig_pending = external local_unnamed_addr global i32, align 4
@PL_signalhook = external local_unnamed_addr global ptr, align 8
@PL_tainted = external local_unnamed_addr global i8, align 1
@PL_curcop = external local_unnamed_addr global ptr, align 8
@PL_debstash = external local_unnamed_addr global ptr, align 8
@PL_profiledata = external local_unnamed_addr global ptr, align 8
@PL_curstackinfo = external local_unnamed_addr global ptr, align 8
@.str.456 = private unnamed_addr constant [9 x i8] c"%d%lu%4p\00", align 1
@.str.457 = private unnamed_addr constant [6 x i8] c"[%lu]\00", align 1
@.str.458 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.459 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.460 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.461 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.462 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.463 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.464 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.465 = private unnamed_addr constant [12 x i8] c"UNKNOWN(%d)\00", align 1
@.str.466 = private unnamed_addr constant [10 x i8] c"[%d%lu%4p\00", align 1
@.str.467 = private unnamed_addr constant [9 x i8] c"<NULLGV>\00", align 1
@.str.468 = private unnamed_addr constant [6 x i8] c"%c%-p\00", align 1
@.str.469 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.470 = private unnamed_addr constant [13 x i8] c"(cv ref: %s)\00", align 1
@.str.471 = private unnamed_addr constant [7 x i8] c"(NULL)\00", align 1
@.str.472 = private unnamed_addr constant [6 x i8] c"(%-p)\00", align 1
@.str.473 = private unnamed_addr constant [32 x i8] c"WATCHING, %lx is currently %lx\0A\00", align 1
@.str.474 = private unnamed_addr constant [9 x i8] c"%5lu %s\0A\00", align 1
@reltable.Perl_do_op_dump = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.97 to i64), i64 ptrtoint (ptr @reltable.Perl_do_op_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.98 to i64), i64 ptrtoint (ptr @reltable.Perl_do_op_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.99 to i64), i64 ptrtoint (ptr @reltable.Perl_do_op_dump to i64)) to i32)], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pv_escape(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef writeonly %4, i32 noundef %5) local_unnamed_addr #0 !prof !44 {
  %7 = alloca [32 x i8], align 16
  %8 = alloca i64, align 8
  %9 = and i32 %5, 32768
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i8 92, i8 37
  %12 = and i32 %5, 1
  %13 = icmp eq i32 %12, 0
  %14 = zext nneg i8 %11 to i32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 16 dereferenceable(32) @__const.Perl_pv_escape.octbuf, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  store i64 1, ptr %8, align 8, !tbaa !45
  %15 = lshr i32 %5, 8
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = getelementptr inbounds i8, ptr %1, i64 %2
  store i8 %11, ptr %7, align 16, !tbaa !49
  %19 = icmp ne ptr %0, null
  %20 = and i32 %5, 16384
  %21 = icmp eq i32 %20, 0
  %22 = and i1 %19, %21
  br i1 %22, label %23, label %24, !prof !50

23:                                               ; preds = %6
  tail call void @Perl_sv_setpvn(ptr noundef nonnull %0, ptr noundef nonnull @.str, i64 noundef 0) #12
  br label %24

24:                                               ; preds = %23, %6
  %25 = and i32 %5, 512
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27, !prof !51

27:                                               ; preds = %24
  %28 = tail call zeroext i1 @Perl_is_utf8_string(ptr noundef %1, i64 noundef %2) #12
  %29 = select i1 %28, i8 1, i8 %17
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i8 [ %17, %24 ], [ %29, %27 ]
  %32 = icmp ne i64 %3, 0
  %33 = add i64 %3, -1
  %34 = icmp sgt i64 %2, 0
  br i1 %34, label %35, label %154, !prof !52

35:                                               ; preds = %30
  %36 = icmp eq i8 %31, 0
  %37 = and i32 %5, 4096
  %38 = icmp eq i32 %37, 0
  %39 = and i32 %5, 66560
  %40 = icmp eq i32 %39, 0
  %41 = and i32 %5, 2048
  %42 = icmp eq i32 %41, 0
  br label %43

43:                                               ; preds = %35, %146
  %44 = phi i64 [ 0, %35 ], [ %148, %146 ]
  %45 = phi ptr [ %1, %35 ], [ %150, %146 ]
  br i1 %36, label %53, label %46

46:                                               ; preds = %43
  %47 = ptrtoint ptr %18 to i64
  %48 = ptrtoint ptr %45 to i64
  %49 = sub i64 %47, %48
  %50 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #12
  %51 = select i1 %50, i32 0, i32 -8161
  %52 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %45, i64 noundef %49, ptr noundef nonnull %8, i32 noundef %51) #12
  br label %56

53:                                               ; preds = %43
  %54 = load i8, ptr %45, align 1, !tbaa !49
  %55 = zext i8 %54 to i64
  br label %56

56:                                               ; preds = %53, %46
  %57 = phi i64 [ %52, %46 ], [ %55, %53 ]
  %58 = trunc i64 %57 to i32
  %59 = icmp ult i64 %57, 256
  %60 = and i1 %38, %59
  %61 = icmp ult i64 %57, 128
  %62 = or i1 %40, %61
  %63 = and i1 %60, %62
  br i1 %63, label %75, label %64

64:                                               ; preds = %56
  br i1 %42, label %68, label %65

65:                                               ; preds = %64
  %66 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef nonnull %7, i64 noundef 32, ptr noundef nonnull @.str.1, i64 noundef %57) #12
  %67 = sext i32 %66 to i64
  br label %132

68:                                               ; preds = %64
  %69 = and i32 %5, 65536
  %70 = icmp ne i32 %69, 0
  %71 = and i1 %70, %36
  %72 = select i1 %71, ptr @.str.2, ptr @.str.3
  %73 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef nonnull %7, i64 noundef 32, ptr noundef nonnull %72, i32 noundef %14, i64 noundef %57) #12
  %74 = sext i32 %73 to i64
  br label %132

75:                                               ; preds = %56
  %76 = and i32 %5, 8192
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %132

78:                                               ; preds = %75
  %79 = select i1 %13, i32 %14, i32 34
  %80 = icmp eq i32 %79, %58
  %81 = icmp eq i32 %58, %14
  %82 = select i1 %80, i1 true, i1 %81
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %57
  %85 = load i32, ptr %84, align 4, !tbaa !53
  %86 = and i32 %85, 16448
  %87 = icmp eq i32 %86, 16448
  br i1 %87, label %132, label %88

88:                                               ; preds = %83, %78
  %89 = trunc i64 %57 to i8
  switch i8 %89, label %106 [
    i8 92, label %90
    i8 37, label %90
    i8 11, label %93
    i8 9, label %95
    i8 13, label %97
    i8 10, label %99
    i8 12, label %101
    i8 34, label %103
  ]

90:                                               ; preds = %88, %88
  br i1 %81, label %91, label %132

91:                                               ; preds = %90
  %92 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 1
  store i8 %11, ptr %92, align 1, !tbaa !49
  br label %132

93:                                               ; preds = %88
  %94 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 1
  store i8 118, ptr %94, align 1, !tbaa !49
  br label %132

95:                                               ; preds = %88
  %96 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 1
  store i8 116, ptr %96, align 1, !tbaa !49
  br label %132

97:                                               ; preds = %88
  %98 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 1
  store i8 114, ptr %98, align 1, !tbaa !49
  br label %132

99:                                               ; preds = %88
  %100 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 1
  store i8 110, ptr %100, align 1, !tbaa !49
  br label %132

101:                                              ; preds = %88
  %102 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 1
  store i8 102, ptr %102, align 1, !tbaa !49
  br label %132

103:                                              ; preds = %88
  br i1 %13, label %132, label %104

104:                                              ; preds = %103
  %105 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 1
  store i8 34, ptr %105, align 1, !tbaa !49
  br label %132

106:                                              ; preds = %88
  %107 = and i32 %5, 65536
  %108 = icmp ne i32 %107, 0
  %109 = icmp ne i32 %58, 0
  %110 = and i1 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = select i1 %36, ptr @.str.2, ptr @.str.3
  %113 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef nonnull %7, i64 noundef 32, ptr noundef nonnull %112, i32 noundef %14, i64 noundef %57) #12
  %114 = sext i32 %113 to i64
  br label %132

115:                                              ; preds = %106
  %116 = load i64, ptr %8, align 8, !tbaa !45
  %117 = getelementptr inbounds i8, ptr %45, i64 %116
  %118 = icmp ult ptr %117, %18
  br i1 %118, label %119, label %129

119:                                              ; preds = %115
  %120 = load i8, ptr %117, align 1, !tbaa !49
  %121 = zext i8 %120 to i64
  %122 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !53
  %124 = and i32 %123, 2
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %119
  %127 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef nonnull %7, i64 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %14, i32 noundef %58) #12
  %128 = sext i32 %127 to i64
  br label %132

129:                                              ; preds = %119, %115
  %130 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef nonnull %7, i64 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %14, i32 noundef %58) #12
  %131 = sext i32 %130 to i64
  br label %132

132:                                              ; preds = %83, %103, %90, %75, %93, %95, %97, %99, %101, %91, %104, %126, %129, %111, %65, %68
  %133 = phi i64 [ %67, %65 ], [ %74, %68 ], [ %114, %111 ], [ %128, %126 ], [ %131, %129 ], [ 2, %104 ], [ 2, %101 ], [ 2, %99 ], [ 2, %97 ], [ 2, %95 ], [ 2, %93 ], [ 2, %91 ], [ 1, %75 ], [ 1, %90 ], [ 1, %103 ], [ 1, %83 ]
  %134 = add i64 %133, %44
  %135 = icmp ugt i64 %134, %3
  %136 = select i1 %32, i1 %135, i1 false
  br i1 %136, label %154, label %137

137:                                              ; preds = %132
  %138 = icmp ugt i64 %133, 1
  br i1 %138, label %139, label %141

139:                                              ; preds = %137
  br i1 %19, label %140, label %144

140:                                              ; preds = %139
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %0, ptr noundef nonnull %7, i64 noundef %133, i32 noundef 2) #12
  br label %144

141:                                              ; preds = %137
  br i1 %19, label %142, label %144

142:                                              ; preds = %141
  %143 = and i32 %58, 255
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i32 noundef %143) #12
  br label %144

144:                                              ; preds = %141, %142, %139, %140
  %145 = phi i64 [ %133, %140 ], [ %133, %139 ], [ 1, %142 ], [ 1, %141 ]
  br i1 %42, label %146, label %154

146:                                              ; preds = %144
  %147 = freeze i64 %145
  %148 = add i64 %147, %44
  %149 = load i64, ptr %8, align 8, !tbaa !45
  %150 = getelementptr inbounds i8, ptr %45, i64 %149
  %151 = icmp uge ptr %150, %18
  %152 = icmp ult i64 %33, %148
  %153 = or i1 %151, %152
  br i1 %153, label %154, label %43, !prof !55, !llvm.loop !56

154:                                              ; preds = %146, %132, %144, %30
  %155 = phi ptr [ %1, %30 ], [ %1, %144 ], [ %45, %132 ], [ %150, %146 ]
  %156 = icmp eq ptr %4, null
  br i1 %156, label %161, label %157, !prof !58

157:                                              ; preds = %154
  %158 = ptrtoint ptr %155 to i64
  %159 = ptrtoint ptr %1 to i64
  %160 = sub i64 %158, %159
  store i64 %160, ptr %4, align 8, !tbaa !45
  br label %161

161:                                              ; preds = %157, %154
  br i1 %19, label %162, label %165, !prof !51

162:                                              ; preds = %161
  %163 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !49
  br label %165

165:                                              ; preds = %161, %162
  %166 = phi ptr [ %164, %162 ], [ null, %161 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #11
  ret ptr %166
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: optsize
declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i1 @Perl_is_utf8_string(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @Perl_utf8n_to_uvchr(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i1 @Perl_ckwarn_d(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @Perl_my_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_sv_catpvf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pv_pretty(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 !prof !44 {
  %8 = alloca i64, align 8
  %9 = and i32 %6, 1
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %6, 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, ptr null, ptr @.str.8
  %14 = select i1 %10, ptr %13, ptr @.str.7, !prof !51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %15 = and i32 %6, 16384
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18, !prof !51

17:                                               ; preds = %7
  tail call void @Perl_sv_setpvn(ptr noundef %0, ptr noundef nonnull @.str, i64 noundef 0) #12
  br label %18

18:                                               ; preds = %17, %7
  %19 = load ptr, ptr %0, align 8, !tbaa !59
  %20 = getelementptr inbounds %struct.xpv, ptr %19, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !62
  %22 = and i32 %6, 5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24, !prof !51

24:                                               ; preds = %18
  %25 = load i8, ptr %14, align 1, !tbaa !49
  %26 = zext i8 %25 to i32
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i32 noundef %26) #12
  br label %27

27:                                               ; preds = %24, %18
  %28 = icmp eq ptr %4, null
  br i1 %28, label %30, label %29, !prof !51

29:                                               ; preds = %27
  tail call void @Perl_sv_catpv(ptr noundef nonnull %0, ptr noundef nonnull %4) #12
  br label %30

30:                                               ; preds = %29, %27
  %31 = and i32 %6, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %44, label %33, !prof !51

33:                                               ; preds = %30
  %34 = select i1 %23, i64 0, i64 2
  %35 = sub i64 %3, %34
  %36 = call ptr @Perl_pv_escape(ptr noundef null, ptr noundef %1, i64 noundef %2, i64 noundef %35, ptr noundef nonnull %8, i32 noundef %6) #13
  %37 = and i32 %6, 2
  %38 = icmp ne i32 %37, 0
  %39 = load i64, ptr %8, align 8
  %40 = icmp ult i64 %39, %2
  %41 = select i1 %38, i1 %40, i1 false
  %42 = add nuw nsw i64 %34, 3
  %43 = select i1 %41, i64 %42, i64 %34
  br label %44

44:                                               ; preds = %33, %30
  %45 = phi i64 [ 0, %30 ], [ %43, %33 ]
  %46 = sub i64 %3, %45
  %47 = or i32 %6, 16384
  %48 = call ptr @Perl_pv_escape(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i64 noundef %46, ptr noundef nonnull %8, i32 noundef %47) #13
  %49 = icmp eq ptr %5, null
  br i1 %49, label %51, label %50, !prof !51

50:                                               ; preds = %44
  call void @Perl_sv_catpv(ptr noundef nonnull %0, ptr noundef nonnull %5) #12
  br label %51

51:                                               ; preds = %50, %44
  br i1 %23, label %56, label %52, !prof !51

52:                                               ; preds = %51
  %53 = getelementptr inbounds i8, ptr %14, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !49
  %55 = zext i8 %54 to i32
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i32 noundef %55) #12
  br label %56

56:                                               ; preds = %52, %51
  %57 = and i32 %6, 2
  %58 = icmp ne i32 %57, 0
  %59 = load i64, ptr %8, align 8
  %60 = icmp ult i64 %59, %2
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %62, label %63, !prof !64

62:                                               ; preds = %56
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i64 noundef 3, i32 noundef 2) #12
  br label %63

63:                                               ; preds = %62, %56
  br i1 %32, label %76, label %64, !prof !51

64:                                               ; preds = %63
  %65 = load ptr, ptr %0, align 8, !tbaa !59
  %66 = getelementptr inbounds %struct.xpv, ptr %65, i64 0, i32 2
  %67 = load i64, ptr %66, align 8, !tbaa !62
  %68 = sub i64 %67, %21
  %69 = icmp ult i64 %68, %3
  br i1 %69, label %70, label %76

70:                                               ; preds = %64, %70
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %0, ptr noundef nonnull @.str.10, i64 noundef 1, i32 noundef 2) #12
  %71 = load ptr, ptr %0, align 8, !tbaa !59
  %72 = getelementptr inbounds %struct.xpv, ptr %71, i64 0, i32 2
  %73 = load i64, ptr %72, align 8, !tbaa !62
  %74 = sub i64 %73, %21
  %75 = icmp ult i64 %74, %3
  br i1 %75, label %70, label %76, !llvm.loop !65

76:                                               ; preds = %70, %64, %63
  %77 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  ret ptr %78
}

; Function Attrs: optsize
declare void @Perl_sv_catpv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pv_display(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 !prof !66 {
  %6 = tail call ptr @Perl_pv_pretty(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %4, ptr noundef null, ptr noundef null, i32 noundef 3) #13
  %7 = icmp ugt i64 %3, %2
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, ptr %1, i64 %2
  %10 = load i8, ptr %9, align 1, !tbaa !49
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @Perl_sv_catpvn_flags(ptr noundef %0, ptr noundef nonnull @.str.11, i64 noundef 2, i32 noundef 2) #12
  br label %13

13:                                               ; preds = %12, %8, %5
  %14 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_sv_peek(ptr noundef %0) local_unnamed_addr #0 !prof !66 {
  %2 = tail call ptr @Perl_sv_newmortal() #12
  tail call void @Perl_sv_setpvn(ptr noundef %2, ptr noundef nonnull @.str, i64 noundef 0) #12
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %124, %1
  %5 = phi i32 [ 0, %1 ], [ %106, %124 ]
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.12) #12
  br label %230

6:                                                ; preds = %1, %124
  %7 = phi ptr [ %126, %124 ], [ %0, %1 ]
  %8 = phi i32 [ %106, %124 ], [ 0, %1 ]
  %9 = icmp eq ptr %7, inttoptr (i64 1431655765 to ptr)
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !67
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, 85
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %6
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.13) #12
  br label %230

16:                                               ; preds = %10
  %17 = icmp eq ptr %7, @PL_sv_undef
  %18 = icmp eq ptr %7, @PL_sv_no
  %19 = icmp eq ptr %7, @PL_sv_yes
  %20 = icmp eq ptr %7, @PL_sv_placeholder
  %21 = or i1 %18, %20
  %22 = or i1 %17, %21
  %23 = or i1 %19, %22
  br i1 %23, label %24, label %74

24:                                               ; preds = %16
  br i1 %17, label %25, label %32

25:                                               ; preds = %24
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.14) #12
  %26 = load i32, ptr %11, align 4, !tbaa !67
  %27 = and i32 %26, 49348352
  %28 = icmp ne i32 %27, 0
  %29 = and i32 %26, 134283264
  %30 = icmp eq i32 %29, 0
  %31 = or i1 %28, %30
  br i1 %31, label %73, label %230

32:                                               ; preds = %24
  br i1 %18, label %33, label %46

33:                                               ; preds = %32
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.15) #12
  %34 = load i32, ptr %11, align 4, !tbaa !67
  %35 = and i32 %34, 183528960
  %36 = icmp eq i32 %35, 134243840
  br i1 %36, label %37, label %73

37:                                               ; preds = %33
  %38 = load ptr, ptr @PL_sv_no, align 8, !tbaa !59
  %39 = getelementptr inbounds %struct.xpv, ptr %38, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !62
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.xpvnv, ptr %38, i64 0, i32 5
  %44 = load double, ptr %43, align 8, !tbaa !49
  %45 = fcmp oeq double %44, 0.000000e+00
  br i1 %45, label %230, label %73

46:                                               ; preds = %32
  br i1 %19, label %47, label %66

47:                                               ; preds = %46
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.16) #12
  %48 = load i32, ptr %11, align 4, !tbaa !67
  %49 = and i32 %48, 183528960
  %50 = icmp eq i32 %49, 134243840
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = load ptr, ptr @PL_sv_yes, align 8, !tbaa !59
  %53 = getelementptr inbounds %struct.xpv, ptr %52, i64 0, i32 2
  %54 = load i64, ptr %53, align 8, !tbaa !62
  %55 = icmp eq i64 %54, 1
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = load ptr, ptr getelementptr inbounds (%struct.sv, ptr @PL_sv_yes, i64 0, i32 3), align 8, !tbaa !49
  %58 = icmp eq ptr %57, null
  br i1 %58, label %73, label %59

59:                                               ; preds = %56
  %60 = load i8, ptr %57, align 1, !tbaa !49
  %61 = icmp eq i8 %60, 49
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.xpvnv, ptr %52, i64 0, i32 5
  %64 = load double, ptr %63, align 8, !tbaa !49
  %65 = fcmp oeq double %64, 1.000000e+00
  br i1 %65, label %230, label %73

66:                                               ; preds = %46
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.17) #12
  %67 = load i32, ptr %11, align 4, !tbaa !67
  %68 = and i32 %67, 49348352
  %69 = icmp ne i32 %68, 0
  %70 = and i32 %67, 134283264
  %71 = icmp eq i32 %70, 0
  %72 = or i1 %69, %71
  br i1 %72, label %73, label %230

73:                                               ; preds = %42, %37, %33, %66, %47, %51, %56, %59, %62, %25
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.18) #12
  br label %105

74:                                               ; preds = %16
  %75 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !68
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.19) #12
  %79 = add nsw i32 %8, 1
  br label %105

80:                                               ; preds = %74
  %81 = load volatile i32, ptr @PL_debug, align 4, !tbaa !53
  %82 = and i32 %81, 262144
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %105, label %84

84:                                               ; preds = %80
  %85 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !45
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr @PL_tmps_stack, align 8, !tbaa !69
  br label %92

89:                                               ; preds = %92
  %90 = add nsw i64 %93, -1
  %91 = icmp slt i64 %93, 1
  br i1 %91, label %97, label %92, !llvm.loop !70

92:                                               ; preds = %87, %89
  %93 = phi i64 [ %85, %87 ], [ %90, %89 ]
  %94 = getelementptr inbounds ptr, ptr %88, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !69
  %96 = icmp eq ptr %95, %7
  br i1 %96, label %99, label %89

97:                                               ; preds = %89, %84
  %98 = icmp eq i32 %76, 1
  br i1 %98, label %105, label %101

99:                                               ; preds = %92
  %100 = icmp eq i32 %76, 1
  br i1 %100, label %104, label %101

101:                                              ; preds = %99, %97
  %102 = phi ptr [ @.str.21, %99 ], [ @.str, %97 ]
  %103 = zext i32 %76 to i64
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %2, ptr noundef nonnull @.str.20, i64 noundef %103, ptr noundef nonnull %102) #12
  br label %105

104:                                              ; preds = %99
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.22) #12
  br label %105

105:                                              ; preds = %97, %101, %104, %78, %80, %73
  %106 = phi i32 [ %8, %73 ], [ %79, %78 ], [ %8, %80 ], [ %8, %104 ], [ %8, %101 ], [ %8, %97 ]
  %107 = load i32, ptr %11, align 4, !tbaa !67
  %108 = and i32 %107, 2048
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %128, label %110

110:                                              ; preds = %105
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.23) #12
  %111 = load ptr, ptr %2, align 8, !tbaa !59
  %112 = getelementptr inbounds %struct.xpv, ptr %111, i64 0, i32 2
  %113 = load i64, ptr %112, align 8, !tbaa !62
  %114 = sext i32 %106 to i64
  %115 = add i64 %113, %114
  %116 = icmp ugt i64 %115, 10
  br i1 %116, label %117, label %124

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.xpv, ptr %111, i64 0, i32 2
  %119 = add nsw i32 %106, 3
  %120 = sext i32 %119 to i64
  store i64 %120, ptr %118, align 8, !tbaa !62
  %121 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !49
  %123 = getelementptr inbounds i8, ptr %122, i64 %120
  store i8 0, ptr %123, align 1, !tbaa !49
  tail call void @Perl_sv_catpv(ptr noundef nonnull %2, ptr noundef nonnull @.str.9) #12
  br label %230

124:                                              ; preds = %110
  %125 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !49
  %127 = icmp eq ptr %126, null
  br i1 %127, label %4, label %6

128:                                              ; preds = %105
  %129 = and i32 %107, 255
  %130 = icmp eq i32 %129, 13
  br i1 %130, label %131, label %156

131:                                              ; preds = %128
  %132 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #12
  %133 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %7) #13
  %134 = icmp eq ptr %133, null
  br i1 %134, label %154, label %135

135:                                              ; preds = %131
  %136 = load ptr, ptr %133, align 8, !tbaa !71
  %137 = getelementptr inbounds %struct.xpvgv, ptr %136, i64 0, i32 4
  %138 = load ptr, ptr %137, align 8, !tbaa !49
  %139 = getelementptr inbounds %struct.hek, ptr %138, i64 0, i32 2
  %140 = getelementptr inbounds %struct.hek, ptr %138, i64 0, i32 1
  %141 = load i32, ptr %140, align 4, !tbaa !73
  %142 = sext i32 %141 to i64
  %143 = mul nsw i32 %141, 17
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, ptr %139, i64 %142
  %147 = getelementptr inbounds i8, ptr %146, i64 1
  %148 = load i8, ptr %147, align 1, !tbaa !49
  %149 = and i8 %148, 1
  %150 = zext nneg i8 %149 to i32
  %151 = shl nuw nsw i32 %150, 8
  %152 = or disjoint i32 %151, 66560
  %153 = tail call ptr @Perl_pv_escape(ptr noundef %132, ptr noundef nonnull %139, i64 noundef %142, i64 noundef %145, ptr noundef null, i32 noundef %152) #13
  br label %154

154:                                              ; preds = %131, %135
  %155 = phi ptr [ %153, %135 ], [ @.str, %131 ]
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %2, ptr noundef nonnull @.str.24, ptr noundef %155) #12
  br label %230

156:                                              ; preds = %128
  %157 = icmp ult i32 %129, 16
  br i1 %157, label %158, label %163

158:                                              ; preds = %156
  %159 = zext nneg i32 %129 to i64
  %160 = shl i64 %159, 2
  %161 = call ptr @llvm.load.relative.i64(ptr @reltable.Perl_sv_peek, i64 %160)
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef %161) #12
  %162 = icmp eq i32 %129, 0
  br i1 %162, label %230, label %164

163:                                              ; preds = %156
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.25) #12
  br label %230

164:                                              ; preds = %158
  %165 = load i32, ptr %11, align 4, !tbaa !67
  %166 = and i32 %165, 16384
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %210, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !49
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.26) #12
  br label %230

173:                                              ; preds = %168
  %174 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str, i64 noundef 0) #12
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.19) #12
  %175 = load i32, ptr %11, align 4, !tbaa !67
  %176 = and i32 %175, 33554432
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %192, label %178

178:                                              ; preds = %173
  %179 = load ptr, ptr %169, align 8, !tbaa !49
  %180 = getelementptr inbounds i8, ptr %179, i64 -1
  %181 = load i8, ptr %180, align 1, !tbaa !49
  %182 = zext i8 %181 to i64
  %183 = icmp eq i8 %181, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %178
  %185 = getelementptr inbounds i8, ptr %179, i64 -9
  %186 = load i64, ptr %185, align 1
  br label %187

187:                                              ; preds = %178, %184
  %188 = phi i64 [ %182, %178 ], [ %186, %184 ]
  %189 = sub i64 0, %188
  %190 = getelementptr inbounds i8, ptr %179, i64 %189
  %191 = tail call ptr @Perl_pv_display(ptr noundef %174, ptr noundef %190, i64 noundef %188, i64 noundef 0, i64 noundef 127) #13
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %2, ptr noundef nonnull @.str.27, ptr noundef %191) #12
  br label %192

192:                                              ; preds = %187, %173
  %193 = load ptr, ptr %169, align 8, !tbaa !49
  %194 = load ptr, ptr %7, align 8, !tbaa !59
  %195 = getelementptr inbounds %struct.xpv, ptr %194, i64 0, i32 2
  %196 = load i64, ptr %195, align 8, !tbaa !62
  %197 = getelementptr inbounds %struct.xpv, ptr %194, i64 0, i32 3
  %198 = load i64, ptr %197, align 8, !tbaa !49
  %199 = tail call ptr @Perl_pv_display(ptr noundef %174, ptr noundef %193, i64 noundef %196, i64 noundef %198, i64 noundef 127) #13
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %2, ptr noundef nonnull @.str.28, ptr noundef %199) #12
  %200 = load i32, ptr %11, align 4, !tbaa !67
  %201 = and i32 %200, 536870912
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %209, label %203

203:                                              ; preds = %192
  %204 = load ptr, ptr %7, align 8, !tbaa !59
  %205 = getelementptr inbounds %struct.xpv, ptr %204, i64 0, i32 2
  %206 = load i64, ptr %205, align 8, !tbaa !62
  %207 = mul i64 %206, 6
  %208 = tail call ptr @Perl_sv_uni_display(ptr noundef %174, ptr noundef nonnull %7, i64 noundef %207, i64 noundef 3) #12
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %2, ptr noundef nonnull @.str.29, ptr noundef %208) #12
  br label %209

209:                                              ; preds = %203, %192
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %174) #13
  br label %230

210:                                              ; preds = %164
  %211 = and i32 %165, 8192
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %210
  %214 = load ptr, ptr %7, align 8, !tbaa !59
  %215 = getelementptr inbounds %struct.xpvnv, ptr %214, i64 0, i32 5
  %216 = load double, ptr %215, align 8, !tbaa !49
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %2, ptr noundef nonnull @.str.30, double noundef %216) #12
  br label %230

217:                                              ; preds = %210
  %218 = and i32 %165, 4096
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %229, label %220

220:                                              ; preds = %217
  %221 = icmp sgt i32 %165, -1
  %222 = load ptr, ptr %7, align 8, !tbaa !59
  br i1 %221, label %226, label %223

223:                                              ; preds = %220
  %224 = getelementptr inbounds %struct.xpvuv, ptr %222, i64 0, i32 4
  %225 = load i64, ptr %224, align 8, !tbaa !49
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %2, ptr noundef nonnull @.str.31, i64 noundef %225) #12
  br label %230

226:                                              ; preds = %220
  %227 = getelementptr inbounds %struct.xpviv, ptr %222, i64 0, i32 4
  %228 = load i64, ptr %227, align 8, !tbaa !49
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %2, ptr noundef nonnull @.str.32, i64 noundef %228) #12
  br label %230

229:                                              ; preds = %217
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.33) #12
  br label %230

230:                                              ; preds = %66, %25, %62, %42, %154, %209, %172, %229, %226, %223, %213, %158, %163, %117, %15, %4
  %231 = phi ptr [ %7, %15 ], [ %7, %117 ], [ %7, %154 ], [ %7, %158 ], [ %7, %209 ], [ %7, %172 ], [ %7, %213 ], [ %7, %223 ], [ %7, %226 ], [ %7, %229 ], [ %7, %163 ], [ null, %4 ], [ %7, %66 ], [ @PL_sv_undef, %25 ], [ @PL_sv_yes, %62 ], [ @PL_sv_no, %42 ]
  %232 = phi i1 [ true, %15 ], [ true, %117 ], [ true, %154 ], [ true, %158 ], [ true, %209 ], [ true, %172 ], [ true, %213 ], [ true, %223 ], [ true, %226 ], [ true, %229 ], [ true, %163 ], [ false, %4 ], [ true, %42 ], [ true, %62 ], [ true, %25 ], [ true, %66 ]
  %233 = phi i32 [ %8, %15 ], [ %106, %117 ], [ %106, %154 ], [ %106, %158 ], [ %106, %209 ], [ %106, %172 ], [ %106, %213 ], [ %106, %223 ], [ %106, %226 ], [ %106, %229 ], [ %106, %163 ], [ %5, %4 ], [ %8, %42 ], [ %8, %62 ], [ %8, %25 ], [ %8, %66 ]
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %239, label %235

235:                                              ; preds = %230, %235
  %236 = phi i32 [ %237, %235 ], [ %233, %230 ]
  %237 = add nsw i32 %236, -1
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.34) #12
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %235, !llvm.loop !75

239:                                              ; preds = %235, %230
  %240 = load i8, ptr @PL_tainting, align 1, !tbaa !76, !range !78, !noundef !79
  %241 = icmp ne i8 %240, 0
  %242 = and i1 %232, %241
  br i1 %242, label %243, label %251

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.sv, ptr %231, i64 0, i32 2
  %245 = load i32, ptr %244, align 4, !tbaa !67
  %246 = and i32 %245, 14680064
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %243
  %249 = tail call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %231) #12
  br i1 %249, label %250, label %251

250:                                              ; preds = %248
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.35) #12
  br label %251

251:                                              ; preds = %250, %248, %243, %239
  %252 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %253 = load i32, ptr %252, align 4, !tbaa !67
  %254 = and i32 %253, 2098176
  %255 = icmp eq i32 %254, 1024
  br i1 %255, label %256, label %259

256:                                              ; preds = %251
  %257 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %258 = load ptr, ptr %257, align 8, !tbaa !49
  br label %261

259:                                              ; preds = %251
  %260 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %2, ptr noundef null, i32 noundef 2) #12
  br label %261

261:                                              ; preds = %256, %259
  %262 = phi ptr [ %258, %256 ], [ %260, %259 ]
  ret ptr %262
}

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_CvGV(ptr noundef %0) unnamed_addr #0 !prof !66 !PGOFuncName !80 {
  %2 = load ptr, ptr %0, align 8, !tbaa !81
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !83
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %0) #12
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_sv_uni_display(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec_NN(ptr noundef %0) unnamed_addr #0 !prof !66 !PGOFuncName !85 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !68
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 8, !tbaa !68
  br label %8

7:                                                ; preds = %1
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %3) #12
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_tainted(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 !prof !66 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.va_start(ptr nonnull %4)
  call void @Perl_dump_vindent(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) #13
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_dump_vindent(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !66 {
  %5 = load i16, ptr @PL_dumpindent, align 2, !tbaa !86
  %6 = zext i16 %5 to i32
  %7 = mul nsw i32 %6, %0
  %8 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.52, i32 noundef %7, ptr noundef nonnull @.str) #12
  %9 = tail call i32 @PerlIO_vprintf(ptr noundef %1, ptr noundef %2, ptr noundef %3) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: optsize
declare i32 @PerlIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @PerlIO_vprintf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_dump_all() local_unnamed_addr #0 !prof !66 {
  tail call void @Perl_dump_all_perl(i1 noundef zeroext false) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_dump_all_perl(i1 noundef zeroext %0) local_unnamed_addr #0 !prof !66 {
  %2 = tail call ptr @Perl_PerlIO_stderr() #12
  tail call void @Perl_PerlIO_setlinebuf(ptr noundef %2) #12
  %3 = load ptr, ptr @PL_main_root, align 8, !tbaa !69
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @Perl_op_dump(ptr noundef nonnull %3) #13
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr @PL_defstash, align 8, !tbaa !69
  tail call void @Perl_dump_packsubs_perl(ptr noundef %7, i1 noundef zeroext %0) #13
  ret void
}

; Function Attrs: optsize
declare void @Perl_PerlIO_setlinebuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_PerlIO_stderr() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_op_dump(ptr noundef %0) local_unnamed_addr #0 !prof !66 {
  %2 = tail call ptr @Perl_PerlIO_stderr() #12
  tail call void @Perl_do_op_dump(i32 noundef 0, ptr noundef %2, ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_dump_packsubs_perl(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 !prof !66 {
  %3 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = icmp eq ptr %4, null
  br i1 %5, label %93, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !88
  %8 = getelementptr inbounds %struct.xpvhv, ptr %7, i64 0, i32 3
  %9 = load i64, ptr %8, align 8, !tbaa !90
  %10 = and i64 %9, 2147483648
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %93

12:                                               ; preds = %6, %85
  %13 = phi ptr [ %86, %85 ], [ %7, %6 ]
  %14 = phi i64 [ %87, %85 ], [ 0, %6 ]
  %15 = load ptr, ptr %3, align 8, !tbaa !49
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !69
  %18 = icmp eq ptr %17, null
  br i1 %18, label %85, label %19

19:                                               ; preds = %12, %80
  %20 = phi ptr [ %81, %80 ], [ %17, %12 ]
  %21 = getelementptr inbounds %struct.he, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  %23 = getelementptr inbounds %struct.gv, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !92
  %25 = and i32 %24, 2048
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.gv, ptr %22, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !49
  %30 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !67
  %32 = and i32 %31, 255
  %33 = icmp eq i32 %32, 13
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %29) #13
  %36 = load i32, ptr %23, align 4, !tbaa !92
  br label %37

37:                                               ; preds = %34, %27, %19
  %38 = phi i32 [ %36, %34 ], [ %24, %27 ], [ %24, %19 ]
  %39 = and i32 %38, 255
  %40 = icmp eq i32 %39, 9
  br i1 %40, label %41, label %80

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.gv, ptr %22, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !49
  %44 = icmp eq ptr %43, null
  br i1 %44, label %80, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.gp, ptr %43, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !93
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.gp, ptr %43, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !95
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  tail call void @Perl_dump_sub_perl(ptr noundef nonnull %22, i1 noundef zeroext %1) #13
  %54 = load ptr, ptr %42, align 8, !tbaa !49
  br label %55

55:                                               ; preds = %45, %53, %49
  %56 = phi ptr [ %43, %45 ], [ %54, %53 ], [ %43, %49 ]
  %57 = getelementptr inbounds %struct.gp, ptr %56, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !96
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  tail call void @Perl_dump_form(ptr noundef nonnull %22) #13
  br label %61

61:                                               ; preds = %60, %55
  %62 = getelementptr inbounds %struct.he, ptr %20, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !97
  %64 = getelementptr inbounds %struct.hek, ptr %63, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !73
  %66 = add nsw i32 %65, -1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.hek, ptr %63, i64 0, i32 2, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !49
  %70 = icmp eq i8 %69, 58
  br i1 %70, label %71, label %80

71:                                               ; preds = %61
  %72 = load ptr, ptr %42, align 8, !tbaa !49
  %73 = getelementptr inbounds %struct.gp, ptr %72, i64 0, i32 5
  %74 = load ptr, ptr %73, align 8, !tbaa !99
  %75 = icmp eq ptr %74, null
  %76 = load ptr, ptr @PL_defstash, align 8
  %77 = icmp eq ptr %74, %76
  %78 = select i1 %75, i1 true, i1 %77
  br i1 %78, label %80, label %79

79:                                               ; preds = %71
  tail call void @Perl_dump_packsubs_perl(ptr noundef nonnull %74, i1 noundef zeroext %1) #13
  br label %80

80:                                               ; preds = %61, %79, %71, %37, %41
  %81 = load ptr, ptr %20, align 8, !tbaa !69
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %19, !llvm.loop !100

83:                                               ; preds = %80
  %84 = load ptr, ptr %0, align 8, !tbaa !88
  br label %85

85:                                               ; preds = %83, %12
  %86 = phi ptr [ %84, %83 ], [ %13, %12 ]
  %87 = add nuw nsw i64 %14, 1
  %88 = getelementptr inbounds %struct.xpvhv, ptr %86, i64 0, i32 3
  %89 = load i64, ptr %88, align 8, !tbaa !90
  %90 = shl i64 %89, 32
  %91 = ashr exact i64 %90, 32
  %92 = icmp slt i64 %14, %91
  br i1 %92, label %12, label %93, !llvm.loop !101

93:                                               ; preds = %85, %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_dump_packsubs(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !66 {
  tail call void @Perl_dump_packsubs_perl(ptr noundef %0, i1 noundef zeroext false) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_dump_sub_perl(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 !prof !66 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %4 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #12
  br i1 %1, label %5, label %19

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.gp, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  %10 = load ptr, ptr %9, align 8, !tbaa !81
  %11 = getelementptr inbounds %struct.xpvcv, ptr %10, i64 0, i32 12
  %12 = load i32, ptr %11, align 4, !tbaa !83
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %71

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.xpvcv, ptr %10, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = icmp eq ptr %17, null
  br i1 %18, label %71, label %19

19:                                               ; preds = %15, %2
  %20 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #12
  tail call void @Perl_gv_fullname4(ptr noundef %4, ptr noundef %0, ptr noundef null, i1 noundef zeroext true) #12
  %21 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !67
  %23 = and i32 %22, 2098176
  %24 = icmp eq i32 %23, 1024
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load ptr, ptr %4, align 8, !tbaa !59
  %27 = getelementptr inbounds %struct.xpv, ptr %26, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !62
  store i64 %28, ptr %3, align 8, !tbaa !45
  %29 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !49
  br label %33

31:                                               ; preds = %19
  %32 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 34) #12
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi ptr [ %30, %25 ], [ %32, %31 ]
  %35 = call ptr @Perl_PerlIO_stderr() #12
  %36 = load i64, ptr %3, align 8, !tbaa !45
  %37 = mul i64 %36, 17
  %38 = add i64 %37, 1
  %39 = load i32, ptr %21, align 4, !tbaa !67
  %40 = lshr i32 %39, 21
  %41 = and i32 %40, 256
  %42 = or disjoint i32 %41, 66560
  %43 = call ptr @Perl_pv_escape(ptr noundef %20, ptr noundef %34, i64 noundef %36, i64 noundef %38, ptr noundef null, i32 noundef %42) #13
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef 0, ptr noundef %35, ptr noundef nonnull @.str.53, ptr noundef %43) #13
  %44 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !49
  %46 = getelementptr inbounds %struct.gp, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !95
  %48 = load ptr, ptr %47, align 8, !tbaa !81
  %49 = getelementptr inbounds %struct.xpvcv, ptr %48, i64 0, i32 12
  %50 = load i32, ptr %49, align 4, !tbaa !83
  %51 = and i32 %50, 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %33
  %54 = call ptr @Perl_PerlIO_stderr() #12
  %55 = load ptr, ptr %44, align 8, !tbaa !49
  %56 = getelementptr inbounds %struct.gp, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !95
  %58 = load ptr, ptr %57, align 8, !tbaa !81
  %59 = getelementptr inbounds %struct.xpvcv, ptr %58, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !49
  %61 = ptrtoint ptr %60 to i64
  %62 = getelementptr inbounds %struct.xpvcv, ptr %58, i64 0, i32 5
  %63 = load i32, ptr %62, align 8, !tbaa !49
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef 0, ptr noundef %54, ptr noundef nonnull @.str.54, i64 noundef %61, i32 noundef %63) #13
  br label %71

64:                                               ; preds = %33
  %65 = getelementptr inbounds %struct.xpvcv, ptr %48, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !49
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  call void @Perl_op_dump(ptr noundef nonnull %66) #13
  br label %71

69:                                               ; preds = %64
  %70 = call ptr @Perl_PerlIO_stderr() #12
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef 0, ptr noundef %70, ptr noundef nonnull @.str.55) #13
  br label %71

71:                                               ; preds = %53, %69, %68, %5, %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_dump_form(ptr noundef %0) local_unnamed_addr #0 !prof !66 {
  %2 = tail call ptr @Perl_sv_newmortal() #12
  tail call void @Perl_gv_fullname4(ptr noundef %2, ptr noundef %0, ptr noundef null, i1 noundef zeroext true) #12
  %3 = tail call ptr @Perl_PerlIO_stderr() #12
  %4 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef 0, ptr noundef %3, ptr noundef nonnull @.str.56, ptr noundef %5) #13
  %6 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.gp, ptr %7, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !96
  %10 = load ptr, ptr %9, align 8, !tbaa !81
  %11 = getelementptr inbounds %struct.xpvcv, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_op_dump(ptr noundef nonnull %12) #13
  br label %17

15:                                               ; preds = %1
  %16 = tail call ptr @Perl_PerlIO_stderr() #12
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef 0, ptr noundef %16, ptr noundef nonnull @.str.55) #13
  br label %17

17:                                               ; preds = %15, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_dump_sub(ptr noundef %0) local_unnamed_addr #0 !prof !66 {
  tail call void @Perl_dump_sub_perl(ptr noundef %0, i1 noundef zeroext false) #13
  ret void
}

; Function Attrs: optsize
declare void @Perl_gv_fullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_dump_eval() local_unnamed_addr #0 !prof !66 {
  %1 = load ptr, ptr @PL_eval_root, align 8, !tbaa !69
  tail call void @Perl_op_dump(ptr noundef %1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_do_pmop_dump(i32 noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 !prof !66 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %89, label %5

5:                                                ; preds = %3
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.58) #13
  %6 = add nsw i32 %0, 1
  %7 = getelementptr inbounds %struct.pmop, ptr %2, i64 0, i32 10
  %8 = getelementptr inbounds %struct.pmop, ptr %2, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  %10 = icmp eq ptr %9, null
  br i1 %10, label %40, label %11

11:                                               ; preds = %5
  %12 = load i32, ptr %7, align 8, !tbaa !104
  %13 = and i32 %12, 1048576
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 47, i32 63
  %16 = load ptr, ptr %9, align 8, !tbaa !105
  %17 = getelementptr inbounds %struct.xpv, ptr %16, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !62
  %19 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %9) #13
  %20 = getelementptr inbounds %struct.regexp, ptr %19, i64 0, i32 24
  %21 = load i16, ptr %20, align 8
  %22 = and i16 %21, 15
  %23 = zext nneg i16 %22 to i64
  %24 = xor i64 %23, -1
  %25 = add i64 %18, %24
  %26 = trunc i64 %25 to i32
  %27 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %9) #13
  %28 = getelementptr inbounds %struct.regexp, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !49
  %30 = getelementptr inbounds %struct.regexp, ptr %27, i64 0, i32 24
  %31 = load i16, ptr %30, align 8
  %32 = and i16 %31, 15
  %33 = zext nneg i16 %32 to i64
  %34 = getelementptr inbounds i8, ptr %29, i64 %33
  %35 = getelementptr inbounds %struct.pmop, ptr %2, i64 0, i32 6
  %36 = load i8, ptr %35, align 1, !tbaa !107
  %37 = and i8 %36, 64
  %38 = icmp eq i8 %37, 0
  %39 = select i1 %38, ptr @.str, ptr @.str.60
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %6, ptr noundef %1, ptr noundef nonnull @.str.59, i32 noundef %15, i32 noundef %26, ptr noundef %34, i32 noundef %15, ptr noundef nonnull %39) #13
  br label %41

40:                                               ; preds = %5
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %6, ptr noundef %1, ptr noundef nonnull @.str.61) #13
  br label %41

41:                                               ; preds = %40, %11
  %42 = getelementptr inbounds %struct.pmop, ptr %2, i64 0, i32 4
  %43 = load i16, ptr %42, align 8
  %44 = and i16 %43, 511
  %45 = icmp eq i16 %44, 13
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.pmop, ptr %2, i64 0, i32 11
  %48 = load ptr, ptr %47, align 8, !tbaa !49
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %6, ptr noundef %1, ptr noundef nonnull @.str.62) #13
  %51 = load ptr, ptr %47, align 8, !tbaa !49
  tail call void @Perl_op_dump(ptr noundef %51) #13
  br label %52

52:                                               ; preds = %50, %46, %41
  %53 = getelementptr inbounds %struct.pmop, ptr %2, i64 0, i32 13
  %54 = load ptr, ptr %53, align 8, !tbaa !108
  %55 = icmp eq ptr %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load i32, ptr %7, align 8, !tbaa !104
  %58 = and i32 %57, 536870912
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %6, ptr noundef %1, ptr noundef nonnull @.str.63) #13
  %61 = load ptr, ptr %53, align 8, !tbaa !108
  tail call void @Perl_do_op_dump(i32 noundef %6, ptr noundef %1, ptr noundef %61) #13
  br label %64

62:                                               ; preds = %56
  %63 = ptrtoint ptr %54 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %6, ptr noundef %1, ptr noundef nonnull @.str.64, i64 noundef %63) #13
  br label %64

64:                                               ; preds = %60, %62, %52
  %65 = load i32, ptr %7, align 8, !tbaa !104
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load ptr, ptr %8, align 8, !tbaa !102
  %69 = icmp eq ptr %68, null
  br i1 %69, label %89, label %70

70:                                               ; preds = %67
  %71 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %68) #13
  %72 = getelementptr inbounds %struct.regexp, ptr %71, i64 0, i32 11
  %73 = load ptr, ptr %72, align 8, !tbaa !109
  %74 = getelementptr inbounds %struct.reg_substr_data, ptr %73, i64 0, i32 1, i64 2, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !111
  %76 = icmp eq ptr %75, null
  br i1 %76, label %89, label %77

77:                                               ; preds = %70, %64
  %78 = tail call fastcc ptr @S_pm_description(ptr noundef nonnull %2) #13
  %79 = load ptr, ptr %78, align 8, !tbaa !59
  %80 = getelementptr inbounds %struct.xpv, ptr %79, i64 0, i32 2
  %81 = load i64, ptr %80, align 8, !tbaa !62
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.sv, ptr %78, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !49
  %86 = getelementptr inbounds i8, ptr %85, i64 1
  br label %87

87:                                               ; preds = %77, %83
  %88 = phi ptr [ %86, %83 ], [ @.str, %77 ]
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %6, ptr noundef %1, ptr noundef nonnull @.str.65, ptr noundef nonnull %88) #13
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %78) #13
  br label %89

89:                                               ; preds = %67, %70, %87, %3
  %90 = phi ptr [ @.str.57, %3 ], [ @.str.66, %87 ], [ @.str.66, %70 ], [ @.str.66, %67 ]
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %90) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @S_ReANY(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !66 !PGOFuncName !113 {
  %2 = getelementptr inbounds %struct.p5rx, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_do_op_dump(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !66 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 4
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 511
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.58) #13
  %10 = add nsw i32 %0, 1
  %11 = tail call fastcc i64 @S_sequence_num(ptr noundef %2) #13
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.89, i64 noundef %11) #12
  br label %17

15:                                               ; preds = %3
  %16 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.90) #12
  br label %17

17:                                               ; preds = %15, %13
  %18 = load i16, ptr @PL_dumpindent, align 2, !tbaa !86
  %19 = zext i16 %18 to i32
  %20 = mul nsw i32 %10, %19
  %21 = add nsw i32 %20, -4
  %22 = load i16, ptr %7, align 8
  %23 = and i16 %22, 511
  %24 = icmp eq i16 %23, 380
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = tail call ptr @Perl_custom_op_get_field(ptr noundef nonnull %2, i32 noundef 1) #12
  br label %31

27:                                               ; preds = %17
  %28 = zext nneg i16 %23 to i64
  %29 = getelementptr inbounds [0 x ptr], ptr @PL_op_name, i64 0, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !69
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi ptr [ %26, %25 ], [ %30, %27 ]
  %33 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.91, i32 noundef %21, ptr noundef nonnull @.str, ptr noundef %32) #12
  %34 = load ptr, ptr %2, align 8, !tbaa !114
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = load i16, ptr %7, align 8
  %38 = and i16 %37, 511
  %39 = icmp eq i16 %38, 0
  %40 = select i1 %39, ptr @.str.92, ptr @.str.93
  %41 = tail call fastcc i64 @S_sequence_num(ptr noundef nonnull %34) #13
  %42 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull %40, i64 noundef %41) #12
  br label %45

43:                                               ; preds = %31
  %44 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.94) #12
  br label %45

45:                                               ; preds = %43, %36
  %46 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 3
  %47 = load i64, ptr %46, align 8, !tbaa !116
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = icmp eq i16 %9, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = getelementptr inbounds [0 x ptr], ptr @PL_op_name, i64 0, i64 %47
  %53 = load ptr, ptr %52, align 8, !tbaa !69
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.95, ptr noundef %53) #13
  br label %55

54:                                               ; preds = %49
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.96, i64 noundef %47) #13
  br label %55

55:                                               ; preds = %51, %54, %45
  %56 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5
  %57 = load i8, ptr %56, align 2, !tbaa !117
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i16, ptr %7, align 8
  %61 = and i16 %60, 7168
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %116, label %63

63:                                               ; preds = %59, %55
  %64 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str, i64 noundef 0) #12
  %65 = load i8, ptr %56, align 2, !tbaa !117
  %66 = and i8 %65, 3
  %67 = add nsw i8 %66, -1
  %68 = icmp ult i8 %67, 3
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = zext nneg i8 %67 to i64
  %71 = shl i64 %70, 2
  %72 = call ptr @llvm.load.relative.i64(ptr @reltable.Perl_do_op_dump, i64 %71)
  br label %73

73:                                               ; preds = %63, %69
  %74 = phi ptr [ %72, %69 ], [ @.str.100, %63 ]
  tail call void @Perl_sv_catpv(ptr noundef %64, ptr noundef nonnull %74) #12
  %75 = load i8, ptr %56, align 2, !tbaa !117
  %76 = zext i8 %75 to i32
  tail call fastcc void @S_append_flags(ptr noundef %64, i32 noundef %76, ptr noundef nonnull @op_flags_names, ptr noundef nonnull getelementptr inbounds ([6 x %struct.flag_to_name], ptr @op_flags_names, i64 1, i64 0)) #13
  %77 = load i16, ptr %7, align 8
  %78 = and i16 %77, 1024
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %73
  tail call void @Perl_sv_catpvn_flags(ptr noundef %64, ptr noundef nonnull @.str.101, i64 noundef 8, i32 noundef 2) #12
  %81 = load i16, ptr %7, align 8
  br label %82

82:                                               ; preds = %80, %73
  %83 = phi i16 [ %81, %80 ], [ %77, %73 ]
  %84 = and i16 %83, 2048
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  tail call void @Perl_sv_catpvn_flags(ptr noundef %64, ptr noundef nonnull @.str.102, i64 noundef 9, i32 noundef 2) #12
  %87 = load i16, ptr %7, align 8
  br label %88

88:                                               ; preds = %86, %82
  %89 = phi i16 [ %87, %86 ], [ %83, %82 ]
  %90 = and i16 %89, 4096
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  tail call void @Perl_sv_catpvn_flags(ptr noundef %64, ptr noundef nonnull @.str.103, i64 noundef 7, i32 noundef 2) #12
  %93 = load i16, ptr %7, align 8
  br label %94

94:                                               ; preds = %92, %88
  %95 = phi i16 [ %93, %92 ], [ %89, %88 ]
  %96 = and i16 %95, 8192
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  tail call void @Perl_sv_catpvn_flags(ptr noundef %64, ptr noundef nonnull @.str.104, i64 noundef 7, i32 noundef 2) #12
  %99 = load i16, ptr %7, align 8
  br label %100

100:                                              ; preds = %98, %94
  %101 = phi i16 [ %99, %98 ], [ %95, %94 ]
  %102 = and i16 %101, 16384
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  tail call void @Perl_sv_catpvn_flags(ptr noundef %64, ptr noundef nonnull @.str.105, i64 noundef 8, i32 noundef 2) #12
  br label %105

105:                                              ; preds = %104, %100
  %106 = load ptr, ptr %64, align 8, !tbaa !59
  %107 = getelementptr inbounds %struct.xpv, ptr %106, i64 0, i32 2
  %108 = load i64, ptr %107, align 8, !tbaa !62
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.sv, ptr %64, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !49
  %113 = getelementptr inbounds i8, ptr %112, i64 1
  br label %114

114:                                              ; preds = %105, %110
  %115 = phi ptr [ %113, %110 ], [ @.str, %105 ]
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.106, ptr noundef nonnull %115) #13
  br label %116

116:                                              ; preds = %59, %114
  %117 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 6
  %118 = load i8, ptr %117, align 1, !tbaa !118
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %247, label %120

120:                                              ; preds = %116
  %121 = zext i8 %118 to i16
  %122 = load i16, ptr %7, align 8
  %123 = and i16 %122, 511
  %124 = zext nneg i16 %123 to i64
  %125 = getelementptr inbounds [0 x i16], ptr @PL_op_private_bitdef_ix, i64 0, i64 %124
  %126 = load i16, ptr %125, align 2, !tbaa !86
  %127 = icmp eq i16 %126, -1
  br i1 %127, label %244, label %128

128:                                              ; preds = %120
  %129 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str, i64 noundef 0) #12
  br label %130

130:                                              ; preds = %128, %225
  %131 = phi i16 [ %121, %128 ], [ %226, %225 ]
  %132 = phi i16 [ %126, %128 ], [ %227, %225 ]
  %133 = sext i16 %132 to i64
  %134 = getelementptr inbounds [0 x i16], ptr @PL_op_private_bitdefs, i64 0, i64 %133
  %135 = load i16, ptr %134, align 2, !tbaa !86
  %136 = lshr i16 %135, 2
  %137 = and i16 %136, 7
  %138 = lshr i16 %135, 5
  %139 = and i16 %135, 1
  %140 = and i16 %135, 2
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %205, label %142

142:                                              ; preds = %130
  %143 = zext nneg i16 %138 to i64
  %144 = getelementptr inbounds [0 x i16], ptr @PL_op_private_bitfields, i64 0, i64 %143
  %145 = getelementptr inbounds i16, ptr %144, i64 1
  %146 = load i16, ptr %144, align 2, !tbaa !86
  %147 = load i16, ptr %145, align 2, !tbaa !86
  %148 = icmp ugt i16 %146, %137
  br i1 %148, label %161, label %149

149:                                              ; preds = %142
  %150 = zext nneg i16 %146 to i32
  %151 = add nuw nsw i16 %137, 1
  %152 = zext nneg i16 %151 to i32
  br label %153

153:                                              ; preds = %149, %153
  %154 = phi i32 [ %150, %149 ], [ %159, %153 ]
  %155 = phi i16 [ 0, %149 ], [ %158, %153 ]
  %156 = shl nuw nsw i32 1, %154
  %157 = trunc i32 %156 to i16
  %158 = or i16 %155, %157
  %159 = add nuw nsw i32 %154, 1
  %160 = icmp eq i32 %159, %152
  br i1 %160, label %161, label %153, !llvm.loop !119

161:                                              ; preds = %153, %142
  %162 = phi i16 [ 0, %142 ], [ %158, %153 ]
  %163 = and i16 %162, %131
  %164 = sext i16 %147 to i64
  %165 = icmp eq i16 %147, -1
  br i1 %165, label %175, label %166

166:                                              ; preds = %161
  %167 = getelementptr inbounds [0 x i8], ptr @PL_op_private_labels, i64 0, i64 %164
  %168 = load i8, ptr %167, align 1, !tbaa !49
  %169 = icmp eq i8 %168, 45
  br i1 %169, label %170, label %175

170:                                              ; preds = %166
  %171 = add nsw i64 %164, 1
  %172 = getelementptr inbounds [0 x i8], ptr @PL_op_private_labels, i64 0, i64 %171
  %173 = load i8, ptr %172, align 1, !tbaa !49
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %225, label %175

175:                                              ; preds = %170, %166, %161
  %176 = zext nneg i16 %163 to i32
  %177 = sub i16 %131, %163
  %178 = zext nneg i16 %146 to i32
  %179 = lshr i32 %176, %178
  %180 = zext nneg i32 %179 to i64
  br label %181

181:                                              ; preds = %186, %175
  %182 = phi ptr [ %144, %175 ], [ %183, %186 ]
  %183 = getelementptr inbounds i16, ptr %182, i64 2
  %184 = load i16, ptr %183, align 2, !tbaa !86
  %185 = icmp eq i16 %184, -1
  br i1 %185, label %192, label %186

186:                                              ; preds = %181
  %187 = sext i16 %184 to i32
  %188 = icmp eq i32 %179, %187
  br i1 %188, label %189, label %181, !llvm.loop !120

189:                                              ; preds = %186
  %190 = getelementptr inbounds i16, ptr %182, i64 3
  %191 = load i16, ptr %190, align 2, !tbaa !86
  br label %192

192:                                              ; preds = %181, %189
  %193 = phi i16 [ %191, %189 ], [ -1, %181 ]
  %194 = icmp eq i32 %179, 0
  %195 = icmp eq i16 %193, -1
  %196 = select i1 %194, i1 %195, i1 false
  br i1 %196, label %225, label %197

197:                                              ; preds = %192
  tail call void @Perl_sv_catpv(ptr noundef %129, ptr noundef nonnull @.str.107) #12
  br i1 %165, label %200, label %198

198:                                              ; preds = %197
  %199 = getelementptr inbounds [0 x i8], ptr @PL_op_private_labels, i64 0, i64 %164
  tail call void @Perl_sv_catpv(ptr noundef %129, ptr noundef nonnull %199) #12
  tail call void @Perl_sv_catpv(ptr noundef %129, ptr noundef nonnull @.str.108) #12
  br label %200

200:                                              ; preds = %198, %197
  br i1 %195, label %201, label %202

201:                                              ; preds = %200
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %129, ptr noundef nonnull @.str.109, i64 noundef %180) #12
  br label %225

202:                                              ; preds = %200
  %203 = sext i16 %193 to i64
  %204 = getelementptr inbounds [0 x i8], ptr @PL_op_private_labels, i64 0, i64 %203
  tail call void @Perl_sv_catpv(ptr noundef %129, ptr noundef nonnull %204) #12
  br label %225

205:                                              ; preds = %130
  %206 = zext i16 %131 to i32
  %207 = zext nneg i16 %137 to i32
  %208 = shl nuw nsw i32 1, %207
  %209 = and i32 %208, %206
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %225, label %211

211:                                              ; preds = %205
  %212 = zext nneg i16 %138 to i64
  %213 = getelementptr inbounds [0 x i8], ptr @PL_op_private_labels, i64 0, i64 %212
  %214 = load i8, ptr %213, align 1, !tbaa !49
  %215 = icmp eq i8 %214, 45
  br i1 %215, label %216, label %222

216:                                              ; preds = %211
  %217 = add nuw nsw i16 %138, 1
  %218 = zext nneg i16 %217 to i64
  %219 = getelementptr inbounds [0 x i8], ptr @PL_op_private_labels, i64 0, i64 %218
  %220 = load i8, ptr %219, align 1, !tbaa !49
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %216, %211
  %223 = trunc i32 %208 to i16
  %224 = sub i16 %131, %223
  tail call void @Perl_sv_catpv(ptr noundef %129, ptr noundef nonnull @.str.107) #12
  tail call void @Perl_sv_catpv(ptr noundef %129, ptr noundef nonnull %213) #12
  br label %225

225:                                              ; preds = %170, %192, %202, %201, %222, %216, %205
  %226 = phi i16 [ %131, %216 ], [ %224, %222 ], [ %131, %205 ], [ %131, %170 ], [ %177, %192 ], [ %177, %202 ], [ %177, %201 ]
  %227 = add i16 %132, 1
  %228 = icmp eq i16 %139, 0
  br i1 %228, label %130, label %229, !llvm.loop !121

229:                                              ; preds = %225
  %230 = icmp eq i16 %226, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %229
  tail call void @Perl_sv_catpv(ptr noundef %129, ptr noundef nonnull @.str.107) #12
  %232 = zext i16 %226 to i64
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %129, ptr noundef nonnull @.str.109, i64 noundef %232) #12
  br label %233

233:                                              ; preds = %229, %231
  %234 = icmp eq ptr %129, null
  br i1 %234, label %244, label %235

235:                                              ; preds = %233
  %236 = load ptr, ptr %129, align 8, !tbaa !59
  %237 = getelementptr inbounds %struct.xpv, ptr %236, i64 0, i32 2
  %238 = load i64, ptr %237, align 8, !tbaa !62
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %244, label %240

240:                                              ; preds = %235
  %241 = getelementptr inbounds %struct.sv, ptr %129, i64 0, i32 3
  %242 = load ptr, ptr %241, align 8, !tbaa !49
  %243 = getelementptr inbounds i8, ptr %242, i64 1
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.110, ptr noundef nonnull %243) #13
  br label %247

244:                                              ; preds = %120, %235, %233
  %245 = phi i16 [ %226, %235 ], [ %226, %233 ], [ %121, %120 ]
  %246 = zext i16 %245 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.111, i64 noundef %246) #13
  br label %247

247:                                              ; preds = %240, %244, %116
  switch i16 %9, label %480 [
    i16 136, label %248
    i16 6, label %248
    i16 7, label %248
    i16 153, label %284
    i16 5, label %298
    i16 341, label %298
    i16 210, label %298
    i16 211, label %298
    i16 212, label %298
    i16 213, label %298
    i16 0, label %302
    i16 193, label %306
    i16 194, label %306
    i16 201, label %437
    i16 180, label %464
    i16 173, label %464
    i16 172, label %464
    i16 170, label %464
    i16 177, label %464
    i16 176, label %464
    i16 13, label %473
    i16 31, label %473
    i16 32, label %473
    i16 33, label %473
    i16 197, label %474
    i16 343, label %474
    i16 186, label %474
    i16 187, label %474
    i16 236, label %474
    i16 198, label %474
  ]

248:                                              ; preds = %247, %247, %247
  %249 = load i8, ptr %56, align 2, !tbaa !117
  %250 = icmp sgt i8 %249, -1
  br i1 %250, label %251, label %480

251:                                              ; preds = %248
  %252 = getelementptr inbounds %struct.svop, ptr %2, i64 0, i32 7
  %253 = load ptr, ptr %252, align 8, !tbaa !122
  %254 = icmp eq ptr %253, null
  br i1 %254, label %283, label %255

255:                                              ; preds = %251
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %256 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #12
  %257 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #12
  %258 = load ptr, ptr %252, align 8, !tbaa !122
  tail call void @Perl_gv_fullname4(ptr noundef %256, ptr noundef %258, ptr noundef null, i1 noundef zeroext true) #12
  %259 = getelementptr inbounds %struct.sv, ptr %256, i64 0, i32 2
  %260 = load i32, ptr %259, align 4, !tbaa !67
  %261 = and i32 %260, 2098176
  %262 = icmp eq i32 %261, 1024
  br i1 %262, label %263, label %269

263:                                              ; preds = %255
  %264 = load ptr, ptr %256, align 8, !tbaa !59
  %265 = getelementptr inbounds %struct.xpv, ptr %264, i64 0, i32 2
  %266 = load i64, ptr %265, align 8, !tbaa !62
  store i64 %266, ptr %4, align 8, !tbaa !45
  %267 = getelementptr inbounds %struct.sv, ptr %256, i64 0, i32 3
  %268 = load ptr, ptr %267, align 8, !tbaa !49
  br label %273

269:                                              ; preds = %255
  %270 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %256, ptr noundef nonnull %4, i32 noundef 34) #12
  %271 = load i64, ptr %4, align 8, !tbaa !45
  %272 = load i32, ptr %259, align 4, !tbaa !67
  br label %273

273:                                              ; preds = %269, %263
  %274 = phi i32 [ %260, %263 ], [ %272, %269 ]
  %275 = phi i64 [ %266, %263 ], [ %271, %269 ]
  %276 = phi ptr [ %268, %263 ], [ %270, %269 ]
  %277 = mul i64 %275, 17
  %278 = add i64 %277, 1
  %279 = lshr i32 %274, 21
  %280 = and i32 %279, 256
  %281 = or disjoint i32 %280, 66560
  %282 = call ptr @Perl_pv_escape(ptr noundef %257, ptr noundef %276, i64 noundef %275, i64 noundef %278, ptr noundef null, i32 noundef %281) #13
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.112, ptr noundef %282) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %480

283:                                              ; preds = %251
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.113) #13
  br label %480

284:                                              ; preds = %247
  %285 = getelementptr inbounds %struct.unop_aux, ptr %2, i64 0, i32 8
  %286 = load ptr, ptr %285, align 8, !tbaa !124
  %287 = getelementptr inbounds %union.UNOP_AUX_item, ptr %286, i64 -1
  %288 = load i64, ptr %287, align 8, !tbaa !49
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.114) #13
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %298, label %290

290:                                              ; preds = %284
  %291 = add nsw i32 %0, 2
  br label %292

292:                                              ; preds = %290, %292
  %293 = phi i64 [ 0, %290 ], [ %296, %292 ]
  %294 = getelementptr inbounds %union.UNOP_AUX_item, ptr %286, i64 %293
  %295 = load i64, ptr %294, align 8, !tbaa !49
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %291, ptr noundef %1, ptr noundef nonnull @.str.115, i64 noundef %293, i64 noundef %295) #13
  %296 = add nuw i64 %293, 1
  %297 = icmp eq i64 %296, %288
  br i1 %297, label %298, label %292, !llvm.loop !126

298:                                              ; preds = %292, %284, %247, %247, %247, %247, %247, %247
  %299 = getelementptr inbounds %struct.svop, ptr %2, i64 0, i32 7
  %300 = load ptr, ptr %299, align 8, !tbaa !122
  %301 = tail call ptr @Perl_sv_peek(ptr noundef %300) #13
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.116, ptr noundef %301) #13
  br label %480

302:                                              ; preds = %247
  %303 = load i64, ptr %46, align 8, !tbaa !116
  %304 = add i64 %303, -193
  %305 = icmp ult i64 %304, 2
  br i1 %305, label %306, label %480

306:                                              ; preds = %302, %247, %247
  %307 = getelementptr inbounds %struct.cop, ptr %2, i64 0, i32 7
  %308 = load i32, ptr %307, align 4, !tbaa !127
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %312, label %310

310:                                              ; preds = %306
  %311 = zext i32 %308 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.117, i64 noundef %311) #13
  br label %312

312:                                              ; preds = %310, %306
  %313 = getelementptr inbounds %struct.cop, ptr %2, i64 0, i32 8
  %314 = load ptr, ptr %313, align 8, !tbaa !129
  %315 = icmp eq ptr %314, null
  br i1 %315, label %420, label %316

316:                                              ; preds = %312
  %317 = getelementptr inbounds %struct.hv, ptr %314, i64 0, i32 2
  %318 = load i32, ptr %317, align 4, !tbaa !130
  %319 = and i32 %318, 33554432
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %420, label %321

321:                                              ; preds = %316
  %322 = getelementptr inbounds %struct.hv, ptr %314, i64 0, i32 3
  %323 = load ptr, ptr %322, align 8, !tbaa !49
  %324 = load ptr, ptr %314, align 8, !tbaa !88
  %325 = getelementptr inbounds %struct.xpvhv, ptr %324, i64 0, i32 3
  %326 = load i64, ptr %325, align 8, !tbaa !90
  %327 = getelementptr ptr, ptr %323, i64 %326
  %328 = getelementptr ptr, ptr %327, i64 1
  %329 = load ptr, ptr %328, align 8, !tbaa !49
  %330 = icmp eq ptr %329, null
  br i1 %330, label %420, label %331

331:                                              ; preds = %321
  %332 = getelementptr i8, ptr %327, i64 36
  %333 = load i32, ptr %332, align 4, !tbaa !131
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %338, label %335

335:                                              ; preds = %331
  %336 = load ptr, ptr %329, align 8, !tbaa !69
  %337 = icmp eq ptr %336, null
  br i1 %337, label %420, label %338

338:                                              ; preds = %331, %335
  %339 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #12
  %340 = load ptr, ptr %313, align 8, !tbaa !129
  %341 = getelementptr inbounds %struct.hv, ptr %340, i64 0, i32 2
  %342 = load i32, ptr %341, align 4, !tbaa !130
  %343 = and i32 %342, 33554432
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %414, label %345

345:                                              ; preds = %338
  %346 = getelementptr inbounds %struct.hv, ptr %340, i64 0, i32 3
  %347 = load ptr, ptr %346, align 8, !tbaa !49
  %348 = load ptr, ptr %340, align 8, !tbaa !88
  %349 = getelementptr inbounds %struct.xpvhv, ptr %348, i64 0, i32 3
  %350 = load i64, ptr %349, align 8, !tbaa !90
  %351 = getelementptr ptr, ptr %347, i64 %350
  %352 = getelementptr ptr, ptr %351, i64 1
  %353 = load ptr, ptr %352, align 8, !tbaa !49
  %354 = icmp eq ptr %353, null
  br i1 %354, label %414, label %355

355:                                              ; preds = %345
  %356 = getelementptr i8, ptr %351, i64 36
  %357 = load i32, ptr %356, align 4, !tbaa !131
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %362, label %359

359:                                              ; preds = %355
  %360 = load ptr, ptr %353, align 8, !tbaa !49
  %361 = icmp eq ptr %360, null
  br i1 %361, label %365, label %362

362:                                              ; preds = %355, %359
  %363 = phi ptr [ %360, %359 ], [ %353, %355 ]
  %364 = getelementptr inbounds %struct.hek, ptr %363, i64 0, i32 2
  br label %365

365:                                              ; preds = %359, %362
  %366 = phi ptr [ %364, %362 ], [ null, %359 ]
  %367 = getelementptr i8, ptr %351, i64 36
  %368 = load i32, ptr %367, align 4, !tbaa !131
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %373, label %370

370:                                              ; preds = %365
  %371 = load ptr, ptr %353, align 8, !tbaa !49
  %372 = icmp eq ptr %371, null
  br i1 %372, label %378, label %373

373:                                              ; preds = %365, %370
  %374 = phi ptr [ %371, %370 ], [ %353, %365 ]
  %375 = getelementptr inbounds %struct.hek, ptr %374, i64 0, i32 1
  %376 = load i32, ptr %375, align 4, !tbaa !73
  %377 = sext i32 %376 to i64
  br label %378

378:                                              ; preds = %370, %373
  %379 = phi i64 [ %377, %373 ], [ 0, %370 ]
  %380 = getelementptr i8, ptr %351, i64 36
  %381 = load i32, ptr %380, align 4, !tbaa !131
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %386, label %383

383:                                              ; preds = %378
  %384 = load ptr, ptr %353, align 8, !tbaa !49
  %385 = icmp eq ptr %384, null
  br i1 %385, label %393, label %386

386:                                              ; preds = %378, %383
  %387 = phi ptr [ %384, %383 ], [ %353, %378 ]
  %388 = getelementptr inbounds %struct.hek, ptr %387, i64 0, i32 1
  %389 = load i32, ptr %388, align 4, !tbaa !73
  %390 = mul nsw i32 %389, 17
  %391 = add nsw i32 %390, 1
  %392 = sext i32 %391 to i64
  br label %393

393:                                              ; preds = %383, %386
  %394 = phi i64 [ %392, %386 ], [ 1, %383 ]
  %395 = getelementptr i8, ptr %351, i64 36
  %396 = load i32, ptr %395, align 4, !tbaa !131
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %401, label %398

398:                                              ; preds = %393
  %399 = load ptr, ptr %353, align 8, !tbaa !49
  %400 = icmp eq ptr %399, null
  br i1 %400, label %414, label %401

401:                                              ; preds = %398, %393
  %402 = phi ptr [ %353, %393 ], [ %399, %398 ]
  %403 = getelementptr inbounds %struct.hek, ptr %402, i64 0, i32 2
  %404 = getelementptr inbounds %struct.hek, ptr %402, i64 0, i32 1
  %405 = load i32, ptr %404, align 4, !tbaa !73
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i8, ptr %403, i64 %406
  %408 = getelementptr inbounds i8, ptr %407, i64 1
  %409 = load i8, ptr %408, align 1, !tbaa !49
  %410 = and i8 %409, 1
  %411 = zext nneg i8 %410 to i32
  %412 = shl nuw nsw i32 %411, 8
  %413 = or disjoint i32 %412, 66560
  br label %414

414:                                              ; preds = %345, %338, %398, %401
  %415 = phi i64 [ %394, %401 ], [ %394, %398 ], [ 1, %338 ], [ 1, %345 ]
  %416 = phi ptr [ %366, %401 ], [ %366, %398 ], [ null, %338 ], [ null, %345 ]
  %417 = phi i64 [ %379, %401 ], [ %379, %398 ], [ 0, %338 ], [ 0, %345 ]
  %418 = phi i32 [ %413, %401 ], [ 66560, %398 ], [ 66560, %338 ], [ 66560, %345 ]
  %419 = tail call ptr @Perl_pv_escape(ptr noundef %339, ptr noundef %416, i64 noundef %417, i64 noundef %415, ptr noundef null, i32 noundef %418) #13
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.118, ptr noundef %419) #13
  br label %420

420:                                              ; preds = %312, %316, %321, %335, %414
  %421 = tail call ptr @Perl_cop_fetch_label(ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #12
  %422 = icmp eq ptr %421, null
  br i1 %422, label %434, label %423

423:                                              ; preds = %420
  %424 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %425 = call ptr @Perl_cop_fetch_label(ptr noundef nonnull %2, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %426 = load i64, ptr %5, align 8, !tbaa !45
  %427 = mul i64 %426, 17
  %428 = add i64 %427, 1
  %429 = load i32, ptr %6, align 4, !tbaa !53
  %430 = lshr i32 %429, 21
  %431 = and i32 %430, 256
  %432 = or disjoint i32 %431, 66560
  %433 = call ptr @Perl_pv_escape(ptr noundef %424, ptr noundef %425, i64 noundef %426, i64 noundef %428, ptr noundef null, i32 noundef %432) #13
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.119, ptr noundef %433) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %434

434:                                              ; preds = %423, %420
  %435 = getelementptr inbounds %struct.cop, ptr %2, i64 0, i32 11
  %436 = load i32, ptr %435, align 4, !tbaa !133
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.120, i32 noundef %436) #13
  br label %480

437:                                              ; preds = %247
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.121) #13
  %438 = getelementptr inbounds %struct.loop, ptr %2, i64 0, i32 9
  %439 = load ptr, ptr %438, align 8, !tbaa !134
  %440 = icmp eq ptr %439, null
  br i1 %440, label %444, label %441

441:                                              ; preds = %437
  %442 = tail call fastcc i64 @S_sequence_num(ptr noundef nonnull %439) #13
  %443 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.93, i64 noundef %442) #12
  br label %446

444:                                              ; preds = %437
  %445 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.122) #12
  br label %446

446:                                              ; preds = %444, %441
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.123) #13
  %447 = getelementptr inbounds %struct.loop, ptr %2, i64 0, i32 10
  %448 = load ptr, ptr %447, align 8, !tbaa !136
  %449 = icmp eq ptr %448, null
  br i1 %449, label %453, label %450

450:                                              ; preds = %446
  %451 = tail call fastcc i64 @S_sequence_num(ptr noundef nonnull %448) #13
  %452 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.93, i64 noundef %451) #12
  br label %455

453:                                              ; preds = %446
  %454 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.122) #12
  br label %455

455:                                              ; preds = %453, %450
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.124) #13
  %456 = getelementptr inbounds %struct.loop, ptr %2, i64 0, i32 11
  %457 = load ptr, ptr %456, align 8, !tbaa !137
  %458 = icmp eq ptr %457, null
  br i1 %458, label %462, label %459

459:                                              ; preds = %455
  %460 = tail call fastcc i64 @S_sequence_num(ptr noundef nonnull %457) #13
  %461 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.93, i64 noundef %460) #12
  br label %480

462:                                              ; preds = %455
  %463 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.122) #12
  br label %480

464:                                              ; preds = %247, %247, %247, %247, %247, %247
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.125) #13
  %465 = getelementptr inbounds %struct.logop, ptr %2, i64 0, i32 8
  %466 = load ptr, ptr %465, align 8, !tbaa !138
  %467 = icmp eq ptr %466, null
  br i1 %467, label %471, label %468

468:                                              ; preds = %464
  %469 = tail call fastcc i64 @S_sequence_num(ptr noundef nonnull %466) #13
  %470 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.93, i64 noundef %469) #12
  br label %480

471:                                              ; preds = %464
  %472 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.122) #12
  br label %480

473:                                              ; preds = %247, %247, %247, %247
  tail call void @Perl_do_pmop_dump(i32 noundef %10, ptr noundef %1, ptr noundef nonnull %2) #13
  br label %480

474:                                              ; preds = %247, %247, %247, %247, %247, %247
  %475 = load i8, ptr %117, align 1, !tbaa !118
  %476 = and i8 %475, 64
  %477 = icmp eq i8 %476, 0
  br i1 %477, label %480, label %478

478:                                              ; preds = %474
  %479 = load i64, ptr %46, align 8, !tbaa !116
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.126, i64 noundef %479) #13
  br label %480

480:                                              ; preds = %302, %247, %474, %478, %468, %471, %459, %462, %248, %283, %273, %473, %434, %298
  %481 = load i8, ptr %56, align 2, !tbaa !117
  %482 = and i8 %481, 4
  %483 = icmp eq i8 %482, 0
  br i1 %483, label %493, label %484

484:                                              ; preds = %480
  %485 = getelementptr inbounds %struct.unop, ptr %2, i64 0, i32 7
  %486 = load ptr, ptr %485, align 8, !tbaa !69
  %487 = icmp eq ptr %486, null
  br i1 %487, label %493, label %488

488:                                              ; preds = %484, %488
  %489 = phi ptr [ %491, %488 ], [ %486, %484 ]
  call void @Perl_do_op_dump(i32 noundef %10, ptr noundef %1, ptr noundef nonnull %489) #13
  %490 = getelementptr inbounds %struct.op, ptr %489, i64 0, i32 1
  %491 = load ptr, ptr %490, align 8, !tbaa !69
  %492 = icmp eq ptr %491, null
  br i1 %492, label %493, label %488, !llvm.loop !140

493:                                              ; preds = %488, %484, %480
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.66) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_pm_description(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !66 !PGOFuncName !141 {
  %2 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str, i64 noundef 0) #12
  %3 = getelementptr inbounds %struct.pmop, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !102
  %5 = getelementptr inbounds %struct.pmop, ptr %0, i64 0, i32 10
  %6 = load i32, ptr %5, align 8, !tbaa !104
  %7 = and i32 %6, 1048576
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.67) #12
  br label %10

10:                                               ; preds = %9, %1
  %11 = and i32 %6, 2097152
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.68) #12
  br label %14

14:                                               ; preds = %13, %10
  %15 = icmp eq ptr %4, null
  br i1 %15, label %50, label %16

16:                                               ; preds = %14
  %17 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %4) #13
  %18 = getelementptr inbounds %struct.regexp, ptr %17, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !142
  %20 = and i32 %19, 134217728
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.69) #12
  br label %23

23:                                               ; preds = %22, %16
  %24 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %4) #13
  %25 = getelementptr inbounds %struct.regexp, ptr %24, i64 0, i32 11
  %26 = load ptr, ptr %25, align 8, !tbaa !109
  %27 = getelementptr inbounds %struct.reg_substr_data, ptr %26, i64 0, i32 1, i64 2, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !111
  %29 = icmp eq ptr %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.regexp, ptr %24, i64 0, i32 13
  %32 = load i32, ptr %31, align 4, !tbaa !143
  %33 = and i32 %32, 64
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.70) #12
  br label %36

36:                                               ; preds = %35, %30
  %37 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %4) #13
  %38 = getelementptr inbounds %struct.regexp, ptr %37, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !142
  %40 = and i32 %39, 524288
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.71) #12
  br label %43

43:                                               ; preds = %36, %42, %23
  %44 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %4) #13
  %45 = getelementptr inbounds %struct.regexp, ptr %44, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !142
  %47 = and i32 %46, 536870912
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.72) #12
  br label %50

50:                                               ; preds = %43, %49, %14
  tail call fastcc void @S_append_flags(ptr noundef %2, i32 noundef %6, ptr noundef nonnull @pmflags_flags_names, ptr noundef nonnull getelementptr inbounds ([10 x %struct.flag_to_name], ptr @pmflags_flags_names, i64 1, i64 0)) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_append_flags(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef readnone %3) unnamed_addr #0 !prof !66 !PGOFuncName !144 {
  br label %5

5:                                                ; preds = %13, %4
  %6 = phi ptr [ %2, %4 ], [ %14, %13 ]
  %7 = load i32, ptr %6, align 8, !tbaa !145
  %8 = and i32 %7, %1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.flag_to_name, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !147
  tail call void @Perl_sv_catpv(ptr noundef %0, ptr noundef %12) #12
  br label %13

13:                                               ; preds = %5, %10
  %14 = getelementptr inbounds %struct.flag_to_name, ptr %6, i64 1
  %15 = icmp ult ptr %14, %3
  br i1 %15, label %5, label %16, !llvm.loop !148

16:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_pmop_dump(ptr noundef %0) local_unnamed_addr #0 !prof !66 {
  %2 = tail call ptr @Perl_PerlIO_stderr() #12
  tail call void @Perl_do_pmop_dump(i32 noundef 0, ptr noundef %2, ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @S_sequence_num(ptr noundef %0) unnamed_addr #0 !prof !66 !PGOFuncName !149 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %3 = icmp eq ptr %0, null
  br i1 %3, label %53, label %4

4:                                                ; preds = %1
  %5 = ptrtoint ptr %0 to i64
  %6 = tail call ptr @Perl_newSVuv(i64 noundef %5) #12
  %7 = tail call ptr @Perl_sv_2mortal(ptr noundef %6) #12
  %8 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !67
  %10 = and i32 %9, 2098176
  %11 = icmp eq i32 %10, 1024
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load ptr, ptr %6, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.xpv, ptr %13, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !62
  store i64 %15, ptr %2, align 8, !tbaa !45
  %16 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  br label %20

18:                                               ; preds = %4
  %19 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %6, ptr noundef nonnull %2, i32 noundef 34) #12
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi ptr [ %17, %12 ], [ %19, %18 ]
  %22 = load ptr, ptr @PL_op_sequence, align 8, !tbaa !69
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call ptr @Perl_newSV_type(i32 noundef 12) #12
  store ptr %25, ptr @PL_op_sequence, align 8, !tbaa !69
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi ptr [ %25, %24 ], [ %22, %20 ]
  %28 = load i64, ptr %2, align 8, !tbaa !45
  %29 = trunc i64 %28 to i32
  %30 = call ptr @Perl_hv_common_key_len(ptr noundef %27, ptr noundef %21, i32 noundef %29, i32 noundef 32, ptr noundef null, i32 noundef 0) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %30, align 8, !tbaa !69
  %34 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !67
  %36 = and i32 %35, -2145386240
  %37 = icmp eq i32 %36, -2147483392
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load ptr, ptr %33, align 8, !tbaa !59
  %40 = getelementptr inbounds %struct.xpvuv, ptr %39, i64 0, i32 4
  %41 = load i64, ptr %40, align 8, !tbaa !49
  br label %53

42:                                               ; preds = %32
  %43 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %33, i32 noundef 2) #12
  br label %53

44:                                               ; preds = %26
  %45 = load ptr, ptr @PL_op_sequence, align 8, !tbaa !69
  %46 = load i64, ptr %2, align 8, !tbaa !45
  %47 = trunc i64 %46 to i32
  %48 = load i64, ptr @PL_op_seq, align 8, !tbaa !45
  %49 = add i64 %48, 1
  store i64 %49, ptr @PL_op_seq, align 8, !tbaa !45
  %50 = call ptr @Perl_newSVuv(i64 noundef %49) #12
  %51 = call ptr @Perl_hv_common_key_len(ptr noundef %45, ptr noundef %21, i32 noundef %47, i32 noundef 36, ptr noundef %50, i32 noundef 0) #12
  %52 = load i64, ptr @PL_op_seq, align 8, !tbaa !45
  br label %53

53:                                               ; preds = %38, %42, %1, %44
  %54 = phi i64 [ %52, %44 ], [ 0, %1 ], [ %41, %38 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret i64 %54
}

; Function Attrs: optsize
declare ptr @Perl_custom_op_get_field(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_cop_fetch_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_gv_dump(ptr noundef %0) local_unnamed_addr #0 !prof !66 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %3 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #12
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call ptr @Perl_PerlIO_stderr() #12
  %7 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %6, ptr noundef nonnull @.str.57) #12
  br label %67

8:                                                ; preds = %1
  %9 = tail call ptr @Perl_sv_newmortal() #12
  %10 = tail call ptr @Perl_PerlIO_stderr() #12
  %11 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %10, ptr noundef nonnull @.str.58) #12
  tail call void @Perl_gv_fullname4(ptr noundef %9, ptr noundef nonnull %0, ptr noundef null, i1 noundef zeroext true) #12
  %12 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !67
  %14 = and i32 %13, 2098176
  %15 = icmp eq i32 %14, 1024
  br i1 %15, label %16, label %22

16:                                               ; preds = %8
  %17 = load ptr, ptr %9, align 8, !tbaa !59
  %18 = getelementptr inbounds %struct.xpv, ptr %17, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !62
  store i64 %19, ptr %2, align 8, !tbaa !45
  %20 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !49
  br label %24

22:                                               ; preds = %8
  %23 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %9, ptr noundef nonnull %2, i32 noundef 34) #12
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %21, %16 ], [ %23, %22 ]
  %26 = call ptr @Perl_PerlIO_stderr() #12
  %27 = load i64, ptr %2, align 8, !tbaa !45
  %28 = mul i64 %27, 17
  %29 = add i64 %28, 1
  %30 = load i32, ptr %12, align 4, !tbaa !67
  %31 = lshr i32 %30, 21
  %32 = and i32 %31, 256
  %33 = or disjoint i32 %32, 66560
  %34 = call ptr @Perl_pv_escape(ptr noundef %3, ptr noundef %25, i64 noundef %27, i64 noundef %29, ptr noundef null, i32 noundef %33) #13
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef 1, ptr noundef %26, ptr noundef nonnull @.str.127, ptr noundef %34) #13
  %35 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !49
  %37 = getelementptr inbounds %struct.gp, ptr %36, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !150
  %39 = icmp eq ptr %38, %0
  br i1 %39, label %63, label %40

40:                                               ; preds = %24
  call void @Perl_gv_efullname4(ptr noundef nonnull %9, ptr noundef %38, ptr noundef null, i1 noundef zeroext true) #12
  %41 = load i32, ptr %12, align 4, !tbaa !67
  %42 = and i32 %41, 2098176
  %43 = icmp eq i32 %42, 1024
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load ptr, ptr %9, align 8, !tbaa !59
  %46 = getelementptr inbounds %struct.xpv, ptr %45, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !62
  store i64 %47, ptr %2, align 8, !tbaa !45
  %48 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !49
  br label %52

50:                                               ; preds = %40
  %51 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %9, ptr noundef nonnull %2, i32 noundef 34) #12
  br label %52

52:                                               ; preds = %50, %44
  %53 = phi ptr [ %49, %44 ], [ %51, %50 ]
  %54 = call ptr @Perl_PerlIO_stderr() #12
  %55 = load i64, ptr %2, align 8, !tbaa !45
  %56 = mul i64 %55, 17
  %57 = add i64 %56, 1
  %58 = load i32, ptr %12, align 4, !tbaa !67
  %59 = lshr i32 %58, 21
  %60 = and i32 %59, 256
  %61 = or disjoint i32 %60, 66560
  %62 = call ptr @Perl_pv_escape(ptr noundef %3, ptr noundef %53, i64 noundef %55, i64 noundef %57, ptr noundef null, i32 noundef %61) #13
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef 1, ptr noundef %54, ptr noundef nonnull @.str.128, ptr noundef %62) #13
  br label %63

63:                                               ; preds = %52, %24
  %64 = call ptr @Perl_PerlIO_stderr() #12
  %65 = call i32 @PerlIO_putc(ptr noundef %64, i32 noundef 10) #12
  %66 = call ptr @Perl_PerlIO_stderr() #12
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef 0, ptr noundef %66, ptr noundef nonnull @.str.66) #13
  br label %67

67:                                               ; preds = %63, %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret void
}

; Function Attrs: optsize
declare void @Perl_gv_efullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @PerlIO_putc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_do_magic_dump(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6) local_unnamed_addr #0 !prof !66 {
  %8 = icmp eq ptr %2, null
  br i1 %8, label %197, label %9

9:                                                ; preds = %7
  %10 = add nsw i32 %0, 1
  %11 = add nsw i32 %0, 2
  %12 = add nsw i32 %3, 1
  br label %13

13:                                               ; preds = %9, %194
  %14 = phi ptr [ %2, %9 ], [ %195, %194 ]
  %15 = ptrtoint ptr %14 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.129, i64 noundef %15) #13
  %16 = getelementptr inbounds %struct.magic, ptr %14, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !151
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %13
  %20 = icmp uge ptr %17, @PL_magic_vtables
  %21 = icmp ult ptr %17, getelementptr inbounds ([31 x %struct.mgvtbl], ptr @PL_magic_vtables, i64 1, i64 0)
  %22 = select i1 %20, i1 %21, i1 false
  %23 = ptrtoint ptr %17 to i64
  br i1 %22, label %24, label %30

24:                                               ; preds = %19
  %25 = sub i64 %23, ptrtoint (ptr @PL_magic_vtables to i64)
  %26 = lshr exact i64 %25, 6
  %27 = and i64 %26, 4294967295
  %28 = getelementptr inbounds [31 x ptr], ptr @PL_magic_vtable_names, i64 0, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !69
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.130, ptr noundef %29) #13
  br label %32

30:                                               ; preds = %19
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.131, i64 noundef %23) #13
  br label %32

31:                                               ; preds = %13
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.132) #13
  br label %32

32:                                               ; preds = %24, %30, %31
  %33 = getelementptr inbounds %struct.magic, ptr %14, i64 0, i32 2
  %34 = load i16, ptr %33, align 8, !tbaa !153
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = zext i16 %34 to i32
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.133, i32 noundef %37) #13
  br label %38

38:                                               ; preds = %36, %32
  %39 = getelementptr inbounds %struct.magic, ptr %14, i64 0, i32 3
  %40 = load i8, ptr %39, align 2, !tbaa !154
  br label %44

41:                                               ; preds = %44
  %42 = add nuw nsw i64 %45, 1
  %43 = icmp eq i64 %42, 43
  br i1 %43, label %52, label %44, !llvm.loop !155

44:                                               ; preds = %38, %41
  %45 = phi i64 [ 0, %38 ], [ %42, %41 ]
  %46 = getelementptr inbounds [44 x %struct.anon.18], ptr @magic_names, i64 0, i64 %45
  %47 = load i8, ptr %46, align 16, !tbaa !156
  %48 = icmp eq i8 %40, %47
  br i1 %48, label %49, label %41

49:                                               ; preds = %44
  %50 = getelementptr inbounds [44 x %struct.anon.18], ptr @magic_names, i64 0, i64 %45, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !158
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.134, ptr noundef nonnull %51) #13
  br label %54

52:                                               ; preds = %41
  %53 = sext i8 %40 to i32
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.135, i32 noundef %53) #13
  br label %54

54:                                               ; preds = %52, %49
  %55 = getelementptr inbounds %struct.magic, ptr %14, i64 0, i32 4
  %56 = load i8, ptr %55, align 1, !tbaa !159
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %115, label %58

58:                                               ; preds = %54
  %59 = zext i8 %56 to i32
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.136, i32 noundef %59) #13
  %60 = load i8, ptr %39, align 2, !tbaa !154
  %61 = icmp eq i8 %60, 101
  %62 = load i8, ptr %55, align 1, !tbaa !159
  br i1 %61, label %63, label %69

63:                                               ; preds = %58
  %64 = and i8 %62, 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %63
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.137) #13
  %67 = load i8, ptr %39, align 2, !tbaa !154
  %68 = load i8, ptr %55, align 1, !tbaa !159
  br label %69

69:                                               ; preds = %66, %58
  %70 = phi i8 [ %62, %58 ], [ %68, %66 ]
  %71 = phi i8 [ %60, %58 ], [ %67, %66 ]
  %72 = icmp ne i8 %71, 103
  %73 = and i8 %70, 1
  %74 = icmp eq i8 %73, 0
  %75 = select i1 %72, i1 true, i1 %74
  br i1 %75, label %78, label %76

76:                                               ; preds = %69
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.138) #13
  %77 = load i8, ptr %55, align 1, !tbaa !159
  br label %78

78:                                               ; preds = %63, %76, %69
  %79 = phi i8 [ %77, %76 ], [ %70, %69 ], [ %62, %63 ]
  %80 = and i8 %79, 2
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.139) #13
  %83 = load i8, ptr %55, align 1, !tbaa !159
  br label %84

84:                                               ; preds = %82, %78
  %85 = phi i8 [ %83, %82 ], [ %79, %78 ]
  %86 = and i8 %85, 4
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.140) #13
  %89 = load i8, ptr %55, align 1, !tbaa !159
  br label %90

90:                                               ; preds = %88, %84
  %91 = phi i8 [ %89, %88 ], [ %85, %84 ]
  %92 = and i8 %91, 8
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.141) #13
  %95 = load i8, ptr %55, align 1, !tbaa !159
  br label %96

96:                                               ; preds = %94, %90
  %97 = phi i8 [ %95, %94 ], [ %91, %90 ]
  %98 = and i8 %97, 16
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %96
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.142) #13
  %101 = load i8, ptr %55, align 1, !tbaa !159
  br label %102

102:                                              ; preds = %100, %96
  %103 = phi i8 [ %101, %100 ], [ %97, %96 ]
  %104 = and i8 %103, 32
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.143) #13
  br label %107

107:                                              ; preds = %106, %102
  %108 = load i8, ptr %39, align 2, !tbaa !154
  %109 = icmp eq i8 %108, 103
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i8, ptr %55, align 1, !tbaa !159
  %112 = and i8 %111, 64
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.144) #13
  br label %115

115:                                              ; preds = %107, %110, %114, %54
  %116 = getelementptr inbounds %struct.magic, ptr %14, i64 0, i32 6
  %117 = load ptr, ptr %116, align 8, !tbaa !160
  %118 = icmp eq ptr %117, null
  br i1 %118, label %147, label %119

119:                                              ; preds = %115
  %120 = ptrtoint ptr %117 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.145, i64 noundef %120) #13
  %121 = load i8, ptr %39, align 2, !tbaa !154
  %122 = icmp eq i8 %121, 114
  br i1 %122, label %123, label %141

123:                                              ; preds = %119
  %124 = load ptr, ptr %116, align 8, !tbaa !160
  %125 = tail call ptr @Perl_sv_newmortal() #12
  %126 = tail call fastcc ptr @S_ReANY(ptr noundef %124) #13
  %127 = getelementptr inbounds %struct.regexp, ptr %126, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !49
  %129 = load ptr, ptr %124, align 8, !tbaa !105
  %130 = getelementptr inbounds %struct.xpv, ptr %129, i64 0, i32 2
  %131 = load i64, ptr %130, align 8, !tbaa !62
  %132 = getelementptr inbounds %struct.p5rx, ptr %124, i64 0, i32 2
  %133 = load i32, ptr %132, align 4, !tbaa !161
  %134 = lshr i32 %133, 21
  %135 = and i32 %134, 256
  %136 = or disjoint i32 %135, 32771
  %137 = tail call ptr @Perl_pv_pretty(ptr noundef %125, ptr noundef %128, i64 noundef %131, i64 noundef 60, ptr noundef null, ptr noundef null, i32 noundef %136) #13
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.146, ptr noundef %137) #13
  %138 = getelementptr inbounds %struct.p5rx, ptr %124, i64 0, i32 1
  %139 = load i32, ptr %138, align 8, !tbaa !162
  %140 = zext i32 %139 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.147, i64 noundef %140) #13
  br label %141

141:                                              ; preds = %123, %119
  %142 = load i8, ptr %55, align 1, !tbaa !159
  %143 = and i8 %142, 2
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %141
  %146 = load ptr, ptr %116, align 8, !tbaa !160
  tail call void @Perl_do_sv_dump(i32 noundef %11, ptr noundef %1, ptr noundef %146, i32 noundef %12, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6) #13
  br label %147

147:                                              ; preds = %141, %145, %115
  %148 = getelementptr inbounds %struct.magic, ptr %14, i64 0, i32 5
  %149 = load i64, ptr %148, align 8, !tbaa !163
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %147
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.148, i64 noundef %149) #13
  br label %152

152:                                              ; preds = %151, %147
  %153 = getelementptr inbounds %struct.magic, ptr %14, i64 0, i32 7
  %154 = load ptr, ptr %153, align 8, !tbaa !164
  %155 = icmp eq ptr %154, null
  br i1 %155, label %180, label %156

156:                                              ; preds = %152
  %157 = ptrtoint ptr %154 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.149, i64 noundef %157) #13
  %158 = load i64, ptr %148, align 8, !tbaa !163
  %159 = icmp sgt i64 %158, -1
  br i1 %159, label %160, label %169

160:                                              ; preds = %156
  %161 = load i8, ptr %39, align 2, !tbaa !154
  %162 = icmp eq i8 %161, 119
  br i1 %162, label %178, label %163

163:                                              ; preds = %160
  %164 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str, i64 noundef 0) #12
  %165 = load ptr, ptr %153, align 8, !tbaa !164
  %166 = load i64, ptr %148, align 8, !tbaa !163
  %167 = tail call ptr @Perl_pv_display(ptr noundef %164, ptr noundef %165, i64 noundef %166, i64 noundef 0, i64 noundef %6) #13
  %168 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.150, ptr noundef %167) #12
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %164) #13
  br label %178

169:                                              ; preds = %156
  switch i64 %158, label %176 [
    i64 -2, label %170
    i64 -1, label %173
  ]

170:                                              ; preds = %169
  %171 = tail call i32 @PerlIO_puts(ptr noundef %1, ptr noundef nonnull @.str.151) #12
  %172 = load ptr, ptr %153, align 8, !tbaa !164
  tail call void @Perl_do_sv_dump(i32 noundef %11, ptr noundef %1, ptr noundef %172, i32 noundef %12, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6) #13
  br label %194

173:                                              ; preds = %169
  %174 = load i8, ptr %39, align 2, !tbaa !154
  %175 = icmp eq i8 %174, 119
  br i1 %175, label %178, label %176

176:                                              ; preds = %169, %173
  %177 = tail call i32 @PerlIO_puts(ptr noundef %1, ptr noundef nonnull @.str.152) #12
  br label %178

178:                                              ; preds = %173, %176, %160, %163
  %179 = tail call i32 @PerlIO_putc(ptr noundef %1, i32 noundef 10) #12
  br label %180

180:                                              ; preds = %178, %152
  %181 = load i8, ptr %39, align 2, !tbaa !154
  %182 = icmp eq i8 %181, 119
  br i1 %182, label %183, label %194

183:                                              ; preds = %180
  %184 = load ptr, ptr %153, align 8, !tbaa !164
  %185 = icmp eq ptr %184, null
  br i1 %185, label %194, label %186

186:                                              ; preds = %183
  %187 = load i64, ptr %184, align 8, !tbaa !45
  %188 = getelementptr inbounds i64, ptr %184, i64 1
  %189 = load i64, ptr %188, align 8, !tbaa !45
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.153, i64 noundef 0, i64 noundef %187, i64 noundef %189) #13
  %190 = getelementptr inbounds i64, ptr %184, i64 2
  %191 = load i64, ptr %190, align 8, !tbaa !45
  %192 = getelementptr inbounds i64, ptr %184, i64 3
  %193 = load i64, ptr %192, align 8, !tbaa !45
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.153, i64 noundef 1, i64 noundef %191, i64 noundef %193) #13
  br label %194

194:                                              ; preds = %186, %183, %180, %170
  %195 = load ptr, ptr %14, align 8, !tbaa !165
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %13, !llvm.loop !166

197:                                              ; preds = %194, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_do_sv_dump(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6) local_unnamed_addr #0 !prof !66 {
  %8 = alloca [200 x i32], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = icmp eq ptr %2, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.283) #13
  br label %1800

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !67
  %16 = freeze i32 %15
  %17 = and i32 %16, 255
  %18 = load ptr, ptr %2, align 8, !tbaa !59
  %19 = ptrtoint ptr %18 to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = load i16, ptr @PL_dumpindent, align 2, !tbaa !86
  %22 = zext i16 %21 to i32
  %23 = mul nsw i32 %22, %0
  %24 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !68
  %26 = zext i32 %25 to i64
  %27 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.284, i64 noundef %19, i64 noundef %20, i32 noundef %23, ptr noundef nonnull @.str, i64 noundef %26, i32 noundef %23, ptr noundef nonnull @.str) #12
  %28 = and i32 %16, 262144
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %13
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef nonnull @.str.285) #12
  br label %31

31:                                               ; preds = %30, %13
  %32 = and i32 %16, 131072
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef nonnull @.str.286) #12
  br label %35

35:                                               ; preds = %34, %31
  tail call fastcc void @S_append_flags(ptr noundef %27, i32 noundef %16, ptr noundef nonnull @first_sv_flags_names, ptr noundef nonnull getelementptr inbounds ([8 x %struct.flag_to_name], ptr @first_sv_flags_names, i64 1, i64 0)) #13
  %36 = and i32 %16, 2048
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef nonnull @.str.287) #12
  %39 = load i32, ptr %14, align 4, !tbaa !67
  %40 = and i32 %39, -2147481600
  %41 = icmp eq i32 %40, -2147481600
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef nonnull @.str.288) #12
  br label %43

43:                                               ; preds = %38, %42, %35
  %44 = and i32 %16, 268435456
  %45 = icmp ne i32 %44, 0
  %46 = icmp ne i32 %17, 12
  %47 = and i1 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  tail call void @Perl_sv_catpvn_flags(ptr noundef %27, ptr noundef nonnull @.str.289, i64 noundef 6, i32 noundef 2) #12
  br label %49

49:                                               ; preds = %48, %43
  tail call fastcc void @S_append_flags(ptr noundef %27, i32 noundef %16, ptr noundef nonnull @second_sv_flags_names, ptr noundef nonnull getelementptr inbounds ([8 x %struct.flag_to_name], ptr @second_sv_flags_names, i64 1, i64 0)) #13
  %50 = and i32 %16, 32768
  %51 = icmp ne i32 %50, 0
  %52 = and i1 %51, %46
  br i1 %52, label %53, label %70

53:                                               ; preds = %49
  %54 = load i32, ptr %14, align 4, !tbaa !67
  %55 = and i32 %54, 49152
  %56 = icmp eq i32 %55, 32768
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = and i32 %54, 255
  %59 = icmp eq i32 %58, 9
  br i1 %59, label %70, label %60

60:                                               ; preds = %57
  %61 = icmp ne i32 %58, 10
  %62 = icmp ne i32 %17, 11
  %63 = and i1 %61, %62
  br i1 %63, label %66, label %70

64:                                               ; preds = %53
  %65 = icmp eq i32 %17, 11
  br i1 %65, label %70, label %66

66:                                               ; preds = %60, %64
  %67 = and i32 %54, 34816
  %68 = icmp eq i32 %67, 34816
  %69 = select i1 %68, ptr @.str.290, ptr @.str.291
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef nonnull %69) #12
  br label %70

70:                                               ; preds = %66, %64, %60, %57, %49
  %71 = trunc i32 %16 to i8
  switch i8 %71, label %118 [
    i8 13, label %72
    i8 14, label %72
    i8 12, label %76
    i8 9, label %77
    i8 10, label %77
    i8 7, label %129
    i8 11, label %141
  ]

72:                                               ; preds = %70, %70
  %73 = load ptr, ptr %2, align 8, !tbaa !59
  %74 = getelementptr inbounds %struct.xpvcv, ptr %73, i64 0, i32 12
  %75 = load i32, ptr %74, align 4, !tbaa !83
  tail call fastcc void @S_append_flags(ptr noundef %27, i32 noundef %75, ptr noundef nonnull @cv_flags_names, ptr noundef nonnull getelementptr inbounds ([17 x %struct.flag_to_name], ptr @cv_flags_names, i64 1, i64 0)) #13
  br label %141

76:                                               ; preds = %70
  tail call fastcc void @S_append_flags(ptr noundef %27, i32 noundef %16, ptr noundef nonnull @hv_flags_names, ptr noundef nonnull getelementptr inbounds ([5 x %struct.flag_to_name], ptr @hv_flags_names, i64 1, i64 0)) #13
  br label %141

77:                                               ; preds = %70, %70
  %78 = load i32, ptr %14, align 4, !tbaa !67
  %79 = and i32 %78, 49152
  %80 = icmp eq i32 %79, 32768
  br i1 %80, label %81, label %91

81:                                               ; preds = %77
  %82 = and i32 %78, 255
  %83 = add nsw i32 %82, -9
  %84 = icmp ult i32 %83, 2
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load ptr, ptr %2, align 8, !tbaa !59
  %87 = getelementptr inbounds %struct.xpvgv, ptr %86, i64 0, i32 2
  %88 = load i64, ptr %87, align 8, !tbaa !167
  %89 = trunc i64 %88 to i32
  tail call fastcc void @S_append_flags(ptr noundef %27, i32 noundef %89, ptr noundef nonnull @gp_flags_names, ptr noundef nonnull getelementptr inbounds ([3 x %struct.flag_to_name], ptr @gp_flags_names, i64 1, i64 0)) #13
  %90 = load i32, ptr %14, align 4, !tbaa !67
  br label %91

91:                                               ; preds = %81, %85, %77
  %92 = phi i32 [ %78, %81 ], [ %90, %85 ], [ %78, %77 ]
  %93 = and i32 %92, 49152
  %94 = icmp eq i32 %93, 32768
  br i1 %94, label %95, label %118

95:                                               ; preds = %91
  %96 = and i32 %92, 255
  %97 = add nsw i32 %96, -9
  %98 = icmp ult i32 %97, 2
  br i1 %98, label %99, label %118

99:                                               ; preds = %95
  %100 = load ptr, ptr %2, align 8, !tbaa !59
  %101 = getelementptr inbounds %struct.xpvgv, ptr %100, i64 0, i32 2
  %102 = load i64, ptr %101, align 8, !tbaa !167
  %103 = and i64 %102, 240
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %99
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef nonnull @.str.292) #12
  %106 = load ptr, ptr %2, align 8, !tbaa !59
  %107 = getelementptr inbounds %struct.xpvgv, ptr %106, i64 0, i32 2
  %108 = load i64, ptr %107, align 8, !tbaa !167
  %109 = and i64 %108, 240
  %110 = icmp eq i64 %109, 240
  br i1 %110, label %116, label %111

111:                                              ; preds = %105
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef nonnull @.str.19) #12
  %112 = load ptr, ptr %2, align 8, !tbaa !59
  %113 = getelementptr inbounds %struct.xpvgv, ptr %112, i64 0, i32 2
  %114 = load i64, ptr %113, align 8, !tbaa !167
  %115 = trunc i64 %114 to i32
  tail call fastcc void @S_append_flags(ptr noundef %27, i32 noundef %115, ptr noundef nonnull @gp_flags_imported_names, ptr noundef nonnull getelementptr inbounds ([4 x %struct.flag_to_name], ptr @gp_flags_imported_names, i64 1, i64 0)) #13
  br label %116

116:                                              ; preds = %105, %134, %111
  %117 = phi ptr [ @.str.294, %111 ], [ @.str.298, %134 ], [ @.str.293, %105 ]
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef nonnull %117) #12
  br label %118

118:                                              ; preds = %116, %95, %134, %70, %99, %91
  %119 = load i32, ptr %14, align 4, !tbaa !67
  %120 = and i32 %119, 1073741824
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef nonnull @.str.295) #12
  %123 = load i32, ptr %14, align 4, !tbaa !67
  br label %124

124:                                              ; preds = %122, %118
  %125 = phi i32 [ %123, %122 ], [ %119, %118 ]
  %126 = icmp sgt i32 %125, -1
  %127 = or i1 %37, %126
  br i1 %127, label %141, label %128

128:                                              ; preds = %124
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef nonnull @.str.296) #12
  br label %141

129:                                              ; preds = %70
  %130 = load i32, ptr %14, align 4, !tbaa !67
  %131 = icmp ugt i32 %130, -1073741825
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef nonnull @.str.297) #12
  %133 = load i32, ptr %14, align 4, !tbaa !67
  br label %134

134:                                              ; preds = %132, %129
  %135 = phi i32 [ %133, %132 ], [ %130, %129 ]
  %136 = and i32 %135, 1073741824
  %137 = icmp eq i32 %136, 0
  %138 = and i32 %135, 49152
  %139 = icmp eq i32 %138, 49152
  %140 = or i1 %137, %139
  br i1 %140, label %118, label %116

141:                                              ; preds = %124, %128, %70, %76, %72
  br i1 %46, label %142, label %147

142:                                              ; preds = %141
  %143 = load i32, ptr %14, align 4, !tbaa !67
  %144 = and i32 %143, 536870912
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %142
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef nonnull @.str.299) #12
  br label %147

147:                                              ; preds = %146, %142, %141
  %148 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 3
  %149 = load ptr, ptr %148, align 8, !tbaa !49
  %150 = load ptr, ptr %27, align 8, !tbaa !59
  %151 = getelementptr inbounds %struct.xpv, ptr %150, i64 0, i32 2
  %152 = load i64, ptr %151, align 8, !tbaa !62
  %153 = getelementptr inbounds i8, ptr %149, i64 %152
  %154 = getelementptr inbounds i8, ptr %153, i64 -1
  %155 = load i8, ptr %154, align 1, !tbaa !49
  %156 = icmp eq i8 %155, 44
  br i1 %156, label %157, label %161

157:                                              ; preds = %147
  %158 = add i64 %152, -1
  store i64 %158, ptr %151, align 8, !tbaa !62
  %159 = load ptr, ptr %148, align 8, !tbaa !49
  %160 = getelementptr inbounds i8, ptr %159, i64 %158
  store i8 0, ptr %160, align 1, !tbaa !49
  br label %161

161:                                              ; preds = %157, %147
  tail call void @Perl_sv_catpv(ptr noundef nonnull %27, ptr noundef nonnull @.str.34) #12
  %162 = load ptr, ptr %148, align 8, !tbaa !49
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.300) #13
  %163 = icmp ult i32 %17, 16
  %164 = zext nneg i32 %17 to i64
  br i1 %163, label %165, label %171

165:                                              ; preds = %161
  %166 = shl i64 %164, 2
  %167 = call ptr @llvm.load.relative.i64(ptr @reltable.Perl_do_sv_dump, i64 %166)
  %168 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.301, ptr noundef %167, ptr noundef %162) #12
  %169 = icmp eq i32 %17, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %27) #13
  br label %1800

171:                                              ; preds = %161
  %172 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.302, i64 noundef %164, ptr noundef %162) #12
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %27) #13
  br label %1800

173:                                              ; preds = %165
  %174 = or i32 %16, -16
  %175 = icmp ult i32 %174, -5
  br i1 %175, label %176, label %190

176:                                              ; preds = %173
  switch i32 %17, label %177 [
    i32 1, label %191
    i32 2, label %222
    i32 8, label %226
    i32 3, label %226
    i32 4, label %226
  ]

177:                                              ; preds = %176
  %178 = load i32, ptr %14, align 4, !tbaa !67
  %179 = and i32 %178, 49152
  %180 = icmp eq i32 %179, 32768
  br i1 %180, label %181, label %185

181:                                              ; preds = %177
  %182 = and i32 %178, 255
  %183 = add nsw i32 %182, -9
  %184 = icmp ult i32 %183, 2
  br i1 %184, label %206, label %185

185:                                              ; preds = %181, %177
  %186 = and i32 %178, 1073741824
  %187 = icmp eq i32 %186, 0
  %188 = icmp eq i32 %179, 49152
  %189 = or i1 %187, %188
  br i1 %189, label %195, label %206

190:                                              ; preds = %173
  switch i32 %17, label %226 [
    i32 1, label %191
    i32 2, label %222
  ]

191:                                              ; preds = %190, %176
  %192 = load i32, ptr %14, align 4, !tbaa !67
  %193 = and i32 %192, 2048
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %185, %191
  %196 = phi i32 [ %192, %191 ], [ %178, %185 ]
  %197 = icmp sgt i32 %196, -1
  %198 = load ptr, ptr %2, align 8, !tbaa !59
  %199 = getelementptr inbounds %struct.xpviv, ptr %198, i64 0, i32 4
  %200 = getelementptr inbounds %struct.xpvuv, ptr %198, i64 0, i32 4
  %201 = select i1 %197, ptr %199, ptr %200
  %202 = select i1 %197, ptr @.str.304, ptr @.str.303
  %203 = load i64, ptr %201, align 8, !tbaa !49
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %202, i64 noundef %203) #13
  %204 = tail call i32 @PerlIO_putc(ptr noundef %1, i32 noundef 10) #12
  br label %205

205:                                              ; preds = %195, %191
  br i1 %175, label %206, label %220

206:                                              ; preds = %185, %181, %205
  switch i32 %17, label %207 [
    i32 2, label %222
    i32 8, label %226
    i32 1, label %226
    i32 3, label %226
    i32 4, label %226
    i32 5, label %226
  ]

207:                                              ; preds = %206
  %208 = load i32, ptr %14, align 4, !tbaa !67
  %209 = and i32 %208, 49152
  %210 = icmp eq i32 %209, 32768
  br i1 %210, label %211, label %215

211:                                              ; preds = %207
  %212 = and i32 %208, 255
  %213 = add nsw i32 %212, -9
  %214 = icmp ult i32 %213, 2
  br i1 %214, label %220, label %215

215:                                              ; preds = %211, %207
  %216 = and i32 %208, 1073741824
  %217 = icmp eq i32 %216, 0
  %218 = icmp eq i32 %209, 49152
  %219 = or i1 %217, %218
  br i1 %219, label %222, label %226

220:                                              ; preds = %211, %205
  %221 = icmp eq i32 %17, 2
  br i1 %221, label %222, label %226

222:                                              ; preds = %190, %176, %206, %220, %215
  %223 = load ptr, ptr %2, align 8, !tbaa !59
  %224 = getelementptr inbounds %struct.xpvnv, ptr %223, i64 0, i32 5
  %225 = load double, ptr %224, align 8, !tbaa !49
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.305, i32 noundef 15, double noundef %225) #13
  br label %226

226:                                              ; preds = %190, %176, %176, %176, %206, %206, %206, %206, %206, %215, %222, %220
  %227 = load i32, ptr %14, align 4, !tbaa !67
  %228 = and i32 %227, 2048
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %239, label %230

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %232 = load ptr, ptr %231, align 8, !tbaa !49
  %233 = ptrtoint ptr %232 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.306, i64 noundef %233) #13
  %234 = icmp slt i32 %3, %4
  br i1 %234, label %235, label %239

235:                                              ; preds = %230
  %236 = add nsw i32 %0, 1
  %237 = load ptr, ptr %231, align 8, !tbaa !49
  %238 = add nsw i32 %3, 1
  tail call void @Perl_do_sv_dump(i32 noundef %236, ptr noundef %1, ptr noundef %237, i32 noundef %238, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6) #13
  br label %239

239:                                              ; preds = %230, %235, %226
  %240 = icmp ult i32 %17, 3
  br i1 %240, label %241, label %242

241:                                              ; preds = %239
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %27) #13
  br label %1800

242:                                              ; preds = %239
  %243 = icmp ult i32 %17, 11
  br i1 %243, label %244, label %252

244:                                              ; preds = %242
  %245 = load i32, ptr %14, align 4, !tbaa !67
  %246 = and i32 %245, 49152
  %247 = icmp eq i32 %246, 32768
  br i1 %247, label %248, label %262

248:                                              ; preds = %244
  %249 = and i32 %245, 255
  %250 = add nsw i32 %249, -9
  %251 = icmp ult i32 %250, 2
  br i1 %251, label %356, label %262

252:                                              ; preds = %242
  %253 = icmp eq i32 %17, 15
  %254 = load ptr, ptr %2, align 8, !tbaa !59
  br i1 %253, label %255, label %360

255:                                              ; preds = %252
  %256 = getelementptr inbounds %struct.xpvio, ptr %254, i64 0, i32 17
  %257 = load i8, ptr %256, align 1, !tbaa !169
  %258 = and i8 %257, 64
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %360, label %260

260:                                              ; preds = %255
  %261 = load i32, ptr %14, align 4, !tbaa !67
  br label %262

262:                                              ; preds = %260, %248, %244
  %263 = phi i32 [ %261, %260 ], [ %245, %248 ], [ %245, %244 ]
  %264 = and i32 %263, 255
  %265 = icmp eq i32 %264, 8
  %266 = and i32 %263, 16826623
  %267 = icmp eq i32 %266, 16777226
  %268 = or i1 %265, %267
  br i1 %268, label %269, label %272

269:                                              ; preds = %262
  %270 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %2) #13
  %271 = getelementptr inbounds %struct.regexp, ptr %270, i64 0, i32 3
  br label %274

272:                                              ; preds = %262
  %273 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  br label %274

274:                                              ; preds = %272, %269
  %275 = phi ptr [ %271, %269 ], [ %273, %272 ]
  %276 = load ptr, ptr %275, align 8, !tbaa !49
  %277 = icmp eq ptr %276, null
  br i1 %277, label %355, label %278

278:                                              ; preds = %274
  %279 = and i32 %263, 33554432
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %293, label %281

281:                                              ; preds = %278
  %282 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %283 = load ptr, ptr %282, align 8, !tbaa !49
  %284 = getelementptr inbounds i8, ptr %283, i64 -1
  %285 = load i8, ptr %284, align 1, !tbaa !49
  %286 = zext i8 %285 to i64
  %287 = icmp eq i8 %285, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %281
  %289 = getelementptr inbounds i8, ptr %283, i64 -9
  %290 = load i64, ptr %289, align 1
  br label %291

291:                                              ; preds = %281, %288
  %292 = phi i64 [ %286, %281 ], [ %290, %288 ]
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.307, i64 noundef %292) #13
  br label %293

293:                                              ; preds = %278, %291
  %294 = phi i64 [ %292, %291 ], [ 0, %278 ]
  %295 = ptrtoint ptr %276 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.308, i64 noundef %295) #13
  %296 = load i32, ptr %14, align 4, !tbaa !67
  %297 = and i32 %296, 33554432
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %304, label %299

299:                                              ; preds = %293
  %300 = sub i64 0, %294
  %301 = getelementptr inbounds i8, ptr %276, i64 %300
  %302 = tail call ptr @Perl_pv_display(ptr noundef nonnull %27, ptr noundef nonnull %301, i64 noundef %294, i64 noundef 0, i64 noundef %6) #13
  %303 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.309, ptr noundef %302) #12
  br label %304

304:                                              ; preds = %299, %293
  %305 = icmp eq i32 %17, 4
  br i1 %305, label %306, label %308

306:                                              ; preds = %304
  %307 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.310) #12
  tail call void @Perl__invlist_dump(ptr noundef %1, i32 noundef %0, ptr noundef nonnull @.str.311, ptr noundef nonnull %2) #12
  br label %331

308:                                              ; preds = %304
  %309 = load ptr, ptr %2, align 8, !tbaa !59
  %310 = getelementptr inbounds %struct.xpv, ptr %309, i64 0, i32 2
  %311 = load i64, ptr %310, align 8, !tbaa !62
  br i1 %268, label %315, label %312

312:                                              ; preds = %308
  %313 = getelementptr inbounds %struct.xpv, ptr %309, i64 0, i32 3
  %314 = load i64, ptr %313, align 8, !tbaa !49
  br label %315

315:                                              ; preds = %308, %312
  %316 = phi i64 [ %314, %312 ], [ 0, %308 ]
  %317 = tail call ptr @Perl_pv_display(ptr noundef nonnull %27, ptr noundef nonnull %276, i64 noundef %311, i64 noundef %316, i64 noundef %6) #13
  %318 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.312, ptr noundef %317) #12
  %319 = load i32, ptr %14, align 4, !tbaa !67
  %320 = and i32 %319, 536870912
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %329, label %322

322:                                              ; preds = %315
  %323 = load ptr, ptr %2, align 8, !tbaa !59
  %324 = getelementptr inbounds %struct.xpv, ptr %323, i64 0, i32 2
  %325 = load i64, ptr %324, align 8, !tbaa !62
  %326 = mul i64 %325, 6
  %327 = tail call ptr @Perl_sv_uni_display(ptr noundef nonnull %27, ptr noundef nonnull %2, i64 noundef %326, i64 noundef 3) #12
  %328 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef %327) #12
  br label %329

329:                                              ; preds = %322, %315
  %330 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.310) #12
  br label %331

331:                                              ; preds = %329, %306
  %332 = load ptr, ptr %2, align 8, !tbaa !59
  %333 = getelementptr inbounds %struct.xpv, ptr %332, i64 0, i32 2
  %334 = load i64, ptr %333, align 8, !tbaa !62
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.313, i64 noundef %334) #13
  br i1 %268, label %339, label %335

335:                                              ; preds = %331
  %336 = load ptr, ptr %2, align 8, !tbaa !59
  %337 = getelementptr inbounds %struct.xpv, ptr %336, i64 0, i32 3
  %338 = load i64, ptr %337, align 8, !tbaa !49
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.314, i64 noundef %338) #13
  br label %339

339:                                              ; preds = %335, %331
  %340 = load i32, ptr %14, align 4, !tbaa !67
  %341 = and i32 %340, 268435456
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %356, label %343

343:                                              ; preds = %339
  %344 = load ptr, ptr %2, align 8, !tbaa !59
  %345 = getelementptr inbounds %struct.xpv, ptr %344, i64 0, i32 3
  %346 = load i64, ptr %345, align 8, !tbaa !49
  %347 = icmp eq i64 %346, 0
  br i1 %347, label %356, label %348

348:                                              ; preds = %343
  %349 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %350 = load ptr, ptr %349, align 8, !tbaa !49
  %351 = getelementptr inbounds i8, ptr %350, i64 %346
  %352 = getelementptr inbounds i8, ptr %351, i64 -1
  %353 = load i8, ptr %352, align 1, !tbaa !49
  %354 = zext i8 %353 to i32
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.315, i32 noundef %354) #13
  br label %356

355:                                              ; preds = %274
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.316) #13
  br label %356

356:                                              ; preds = %248, %355, %348, %343, %339
  %357 = icmp ugt i32 %17, 6
  br i1 %357, label %358, label %385

358:                                              ; preds = %356
  %359 = load ptr, ptr %2, align 8, !tbaa !59
  br label %360

360:                                              ; preds = %358, %252, %255
  %361 = phi ptr [ %359, %358 ], [ %254, %252 ], [ %254, %255 ]
  %362 = getelementptr inbounds %struct.xpvmg, ptr %361, i64 0, i32 1
  %363 = load ptr, ptr %362, align 8, !tbaa !49
  %364 = icmp eq ptr %363, null
  br i1 %364, label %368, label %365

365:                                              ; preds = %360
  %366 = add nsw i32 %3, 1
  tail call void @Perl_do_magic_dump(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %363, i32 noundef %366, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6) #13
  %367 = load ptr, ptr %2, align 8, !tbaa !59
  br label %368

368:                                              ; preds = %365, %360
  %369 = phi ptr [ %367, %365 ], [ %361, %360 ]
  %370 = load ptr, ptr %369, align 8, !tbaa !171
  %371 = icmp eq ptr %370, null
  br i1 %371, label %373, label %372

372:                                              ; preds = %368
  tail call void @Perl_do_hv_dump(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.317, ptr noundef nonnull %370) #13
  br label %373

373:                                              ; preds = %372, %368
  switch i32 %17, label %1799 [
    i32 10, label %374
    i32 7, label %374
    i32 11, label %386
    i32 12, label %468
    i32 13, label %1143
    i32 14, label %1242
    i32 8, label %1654
    i32 15, label %1541
    i32 9, label %1439
  ]

374:                                              ; preds = %373, %373
  %375 = load i32, ptr %14, align 4, !tbaa !67
  %376 = and i32 %375, 1073741824
  %377 = icmp eq i32 %376, 0
  %378 = and i32 %375, 49152
  %379 = icmp eq i32 %378, 49152
  %380 = or i1 %377, %379
  br i1 %380, label %385, label %381

381:                                              ; preds = %374
  %382 = load ptr, ptr %2, align 8, !tbaa !59
  %383 = getelementptr inbounds %struct.xpviv, ptr %382, i64 0, i32 4
  %384 = load i64, ptr %383, align 8, !tbaa !49
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.318, i64 noundef %384) #13
  br label %385

385:                                              ; preds = %374, %381, %356
  switch i32 %17, label %1799 [
    i32 9, label %1439
    i32 10, label %1410
    i32 8, label %1654
  ]

386:                                              ; preds = %373
  %387 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %388 = load ptr, ptr %387, align 8, !tbaa !49
  %389 = ptrtoint ptr %388 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.319, i64 noundef %389) #13
  %390 = load ptr, ptr %387, align 8, !tbaa !49
  %391 = load ptr, ptr %2, align 8, !tbaa !59
  %392 = getelementptr inbounds %struct.xpvav, ptr %391, i64 0, i32 4
  %393 = load ptr, ptr %392, align 8, !tbaa !173
  %394 = icmp eq ptr %390, %393
  br i1 %394, label %405, label %395

395:                                              ; preds = %386
  %396 = ptrtoint ptr %390 to i64
  %397 = ptrtoint ptr %393 to i64
  %398 = sub i64 %396, %397
  %399 = ashr exact i64 %398, 3
  %400 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.320, i64 noundef %399) #12
  %401 = load ptr, ptr %2, align 8, !tbaa !59
  %402 = getelementptr inbounds %struct.xpvav, ptr %401, i64 0, i32 4
  %403 = load ptr, ptr %402, align 8, !tbaa !173
  %404 = ptrtoint ptr %403 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.321, i64 noundef %404) #13
  br label %407

405:                                              ; preds = %386
  %406 = tail call i32 @PerlIO_putc(ptr noundef %1, i32 noundef 10) #12
  br label %407

407:                                              ; preds = %405, %395
  %408 = load ptr, ptr %2, align 8, !tbaa !59
  %409 = getelementptr inbounds %struct.xpvav, ptr %408, i64 0, i32 2
  %410 = load i64, ptr %409, align 8, !tbaa !175
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.322, i64 noundef %410) #13
  %411 = load ptr, ptr %2, align 8, !tbaa !59
  %412 = getelementptr inbounds %struct.xpvav, ptr %411, i64 0, i32 3
  %413 = load i64, ptr %412, align 8, !tbaa !176
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.323, i64 noundef %413) #13
  %414 = load ptr, ptr %2, align 8, !tbaa !59
  %415 = getelementptr inbounds %struct.xpvmg, ptr %414, i64 0, i32 1
  %416 = load ptr, ptr %415, align 8, !tbaa !49
  %417 = icmp eq ptr %416, null
  br i1 %417, label %422, label %418

418:                                              ; preds = %407
  %419 = tail call ptr @Perl_av_arylen_p(ptr noundef nonnull %2) #12
  %420 = load ptr, ptr %419, align 8, !tbaa !69
  %421 = ptrtoint ptr %420 to i64
  br label %422

422:                                              ; preds = %407, %418
  %423 = phi i64 [ %421, %418 ], [ 0, %407 ]
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.324, i64 noundef %423) #13
  tail call void @Perl_sv_setpvn(ptr noundef nonnull %27, ptr noundef nonnull @.str, i64 noundef 0) #12
  %424 = load i32, ptr %14, align 4, !tbaa !67
  %425 = and i32 %424, 1073741824
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %429, label %427

427:                                              ; preds = %422
  tail call void @Perl_sv_catpv(ptr noundef nonnull %27, ptr noundef nonnull @.str.325) #12
  %428 = load i32, ptr %14, align 4, !tbaa !67
  br label %429

429:                                              ; preds = %427, %422
  %430 = phi i32 [ %428, %427 ], [ %424, %422 ]
  %431 = icmp sgt i32 %430, -1
  br i1 %431, label %433, label %432

432:                                              ; preds = %429
  tail call void @Perl_sv_catpv(ptr noundef nonnull %27, ptr noundef nonnull @.str.326) #12
  br label %433

433:                                              ; preds = %432, %429
  %434 = load ptr, ptr %27, align 8, !tbaa !59
  %435 = getelementptr inbounds %struct.xpv, ptr %434, i64 0, i32 2
  %436 = load i64, ptr %435, align 8, !tbaa !62
  %437 = icmp eq i64 %436, 0
  br i1 %437, label %441, label %438

438:                                              ; preds = %433
  %439 = load ptr, ptr %148, align 8, !tbaa !49
  %440 = getelementptr inbounds i8, ptr %439, i64 1
  br label %441

441:                                              ; preds = %433, %438
  %442 = phi ptr [ %440, %438 ], [ @.str, %433 ]
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.327, ptr noundef nonnull %442) #13
  %443 = icmp slt i32 %3, %4
  br i1 %443, label %444, label %1799

444:                                              ; preds = %441
  %445 = tail call fastcc i64 @S_av_top_index(ptr noundef nonnull %2) #13
  %446 = icmp sgt i64 %445, -1
  br i1 %446, label %447, label %1799

447:                                              ; preds = %444
  %448 = tail call fastcc i64 @S_av_top_index(ptr noundef nonnull %2) #13
  %449 = icmp sgt i64 %448, -1
  %450 = sext i32 %4 to i64
  %451 = icmp sgt i32 %4, 0
  %452 = and i1 %451, %449
  br i1 %452, label %453, label %1799

453:                                              ; preds = %447
  %454 = add nsw i32 %0, 1
  %455 = add nsw i32 %3, 1
  br label %456

456:                                              ; preds = %453, %462
  %457 = phi i64 [ 0, %453 ], [ %463, %462 ]
  %458 = tail call ptr @Perl_av_fetch(ptr noundef nonnull %2, i64 noundef %457, i32 noundef 0) #12
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %454, ptr noundef %1, ptr noundef nonnull @.str.328, i64 noundef %457) #13
  %459 = icmp eq ptr %458, null
  br i1 %459, label %462, label %460

460:                                              ; preds = %456
  %461 = load ptr, ptr %458, align 8, !tbaa !69
  tail call void @Perl_do_sv_dump(i32 noundef %454, ptr noundef %1, ptr noundef %461, i32 noundef %455, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6) #13
  br label %462

462:                                              ; preds = %460, %456
  %463 = add nuw nsw i64 %457, 1
  %464 = tail call fastcc i64 @S_av_top_index(ptr noundef nonnull %2) #13
  %465 = icmp slt i64 %457, %464
  %466 = icmp slt i64 %463, %450
  %467 = and i1 %466, %465
  br i1 %467, label %456, label %1799, !llvm.loop !177

468:                                              ; preds = %373
  %469 = load i32, ptr %14, align 4, !tbaa !67
  %470 = and i32 %469, 33554432
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %482, label %472

472:                                              ; preds = %468
  %473 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %474 = load ptr, ptr %473, align 8, !tbaa !49
  %475 = load ptr, ptr %2, align 8, !tbaa !59
  %476 = getelementptr inbounds %struct.xpvhv, ptr %475, i64 0, i32 3
  %477 = load i64, ptr %476, align 8, !tbaa !90
  %478 = getelementptr ptr, ptr %474, i64 %477
  %479 = getelementptr i8, ptr %478, i64 60
  %480 = load i32, ptr %479, align 4, !tbaa !178
  %481 = zext i32 %480 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.329, i64 noundef %481) #13
  br label %482

482:                                              ; preds = %472, %468
  %483 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %484 = load ptr, ptr %483, align 8, !tbaa !49
  %485 = ptrtoint ptr %484 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.319, i64 noundef %485) #13
  %486 = load ptr, ptr %2, align 8, !tbaa !59
  %487 = getelementptr inbounds %struct.xpvhv, ptr %486, i64 0, i32 2
  %488 = load i64, ptr %487, align 8, !tbaa !179
  %489 = getelementptr inbounds %struct.xpvmg, ptr %486, i64 0, i32 1
  %490 = load ptr, ptr %489, align 8, !tbaa !49
  %491 = icmp eq ptr %490, null
  br i1 %491, label %494, label %492

492:                                              ; preds = %482
  %493 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %2) #12
  br label %494

494:                                              ; preds = %482, %492
  %495 = phi i32 [ %493, %492 ], [ 0, %482 ]
  %496 = trunc i64 %488 to i32
  %497 = sub i32 %496, %495
  %498 = load ptr, ptr %483, align 8, !tbaa !49
  %499 = icmp ne ptr %498, null
  %500 = icmp ne i32 %497, 0
  %501 = select i1 %499, i1 %500, i1 false
  br i1 %501, label %502, label %582

502:                                              ; preds = %494
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %8) #11
  %503 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.330) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(800) %8, i8 0, i64 800, i1 false)
  %504 = load ptr, ptr %2, align 8, !tbaa !59
  %505 = getelementptr inbounds %struct.xpvhv, ptr %504, i64 0, i32 3
  %506 = load i64, ptr %505, align 8, !tbaa !90
  %507 = load ptr, ptr %483, align 8, !tbaa !49
  br label %512

508:                                              ; preds = %522
  %509 = zext nneg i32 %528 to i64
  %510 = add nuw i32 %528, 1
  %511 = zext i32 %510 to i64
  br label %531

512:                                              ; preds = %502, %522
  %513 = phi i64 [ 0, %502 ], [ %529, %522 ]
  %514 = phi i32 [ 0, %502 ], [ %528, %522 ]
  %515 = getelementptr inbounds ptr, ptr %507, i64 %513
  br label %516

516:                                              ; preds = %516, %512
  %517 = phi i32 [ 0, %512 ], [ %521, %516 ]
  %518 = phi ptr [ %515, %512 ], [ %519, %516 ]
  %519 = load ptr, ptr %518, align 8, !tbaa !69
  %520 = icmp eq ptr %519, null
  %521 = add nuw nsw i32 %517, 1
  br i1 %520, label %522, label %516, !llvm.loop !180

522:                                              ; preds = %516
  %523 = tail call i32 @llvm.umin.i32(i32 %517, i32 199)
  %524 = zext nneg i32 %523 to i64
  %525 = getelementptr inbounds [200 x i32], ptr %8, i64 0, i64 %524
  %526 = load i32, ptr %525, align 4, !tbaa !53
  %527 = add nsw i32 %526, 1
  store i32 %527, ptr %525, align 4, !tbaa !53
  %528 = tail call i32 @llvm.smax.i32(i32 %514, i32 %523)
  %529 = add nuw nsw i64 %513, 1
  %530 = icmp eq i64 %513, %506
  br i1 %530, label %508, label %512, !llvm.loop !181

531:                                              ; preds = %508, %544
  %532 = phi i64 [ 0, %508 ], [ %545, %544 ]
  %533 = getelementptr inbounds [200 x i32], ptr %8, i64 0, i64 %532
  %534 = load i32, ptr %533, align 4, !tbaa !53
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %544, label %536

536:                                              ; preds = %531
  %537 = icmp eq i64 %532, 199
  %538 = select i1 %537, ptr @.str.332, ptr @.str
  %539 = trunc i64 %532 to i32
  %540 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.331, i32 noundef %539, ptr noundef nonnull %538, i32 noundef %534) #12
  %541 = icmp eq i64 %532, %509
  br i1 %541, label %544, label %542

542:                                              ; preds = %536
  %543 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.333) #12
  br label %544

544:                                              ; preds = %531, %542, %536
  %545 = add nuw nsw i64 %532, 1
  %546 = icmp eq i64 %545, %511
  br i1 %546, label %547, label %531, !llvm.loop !182

547:                                              ; preds = %544
  %548 = tail call i32 @PerlIO_putc(ptr noundef %1, i32 noundef 41) #12
  %549 = icmp eq i32 %528, 0
  br i1 %549, label %550, label %553

550:                                              ; preds = %553, %547
  %551 = phi double [ 0.000000e+00, %547 ], [ %562, %553 ]
  %552 = icmp ult i32 %497, 2
  br i1 %552, label %571, label %565

553:                                              ; preds = %547, %553
  %554 = phi i64 [ %563, %553 ], [ %509, %547 ]
  %555 = phi double [ %562, %553 ], [ 0.000000e+00, %547 ]
  %556 = getelementptr inbounds [200 x i32], ptr %8, i64 0, i64 %554
  %557 = load i32, ptr %556, align 4, !tbaa !53
  %558 = trunc i64 %554 to i32
  %559 = mul i32 %558, %558
  %560 = mul i32 %559, %557
  %561 = sitofp i32 %560 to double
  %562 = fadd double %555, %561
  %563 = add nsw i64 %554, -1
  %564 = icmp sgt i64 %554, 1
  br i1 %564, label %553, label %550, !llvm.loop !183

565:                                              ; preds = %550, %565
  %566 = phi i32 [ %569, %565 ], [ 2, %550 ]
  %567 = phi i32 [ %568, %565 ], [ %497, %550 ]
  %568 = lshr i32 %567, 1
  %569 = shl i32 %566, 1
  %570 = icmp ult i32 %567, 4
  br i1 %570, label %571, label %565, !llvm.loop !184

571:                                              ; preds = %565, %550
  %572 = phi i32 [ 2, %550 ], [ %569, %565 ]
  %573 = uitofp i32 %497 to double
  %574 = fadd double %573, -1.000000e+00
  %575 = fmul double %574, %573
  %576 = uitofp i32 %572 to double
  %577 = fdiv double %575, %576
  %578 = fadd double %577, %573
  %579 = tail call i32 @PerlIO_putc(ptr noundef %1, i32 noundef 10) #12
  %580 = fdiv double %578, %551
  %581 = fmul double %580, 1.000000e+02
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.334, double noundef %581) #13
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %8) #11
  br label %582

582:                                              ; preds = %571, %494
  %583 = tail call i32 @PerlIO_putc(ptr noundef %1, i32 noundef 10) #12
  %584 = zext i32 %497 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.335, i64 noundef %584) #13
  %585 = load ptr, ptr %483, align 8, !tbaa !49
  %586 = icmp eq ptr %585, null
  br i1 %586, label %606, label %587

587:                                              ; preds = %582
  %588 = load ptr, ptr %2, align 8, !tbaa !59
  %589 = getelementptr inbounds %struct.xpvhv, ptr %588, i64 0, i32 3
  %590 = load i64, ptr %589, align 8, !tbaa !90
  %591 = getelementptr inbounds ptr, ptr %585, i64 %590
  %592 = getelementptr inbounds ptr, ptr %591, i64 1
  %593 = ptrtoint ptr %592 to i64
  %594 = ptrtoint ptr %585 to i64
  %595 = sub i64 %593, %594
  %596 = ashr exact i64 %595, 3
  br label %597

597:                                              ; preds = %597, %587
  %598 = phi ptr [ %585, %587 ], [ %604, %597 ]
  %599 = phi i64 [ %596, %587 ], [ %603, %597 ]
  %600 = load ptr, ptr %598, align 8, !tbaa !69
  %601 = icmp eq ptr %600, null
  %602 = sext i1 %601 to i64
  %603 = add i64 %599, %602
  %604 = getelementptr inbounds ptr, ptr %598, i64 1
  %605 = icmp ugt ptr %604, %591
  br i1 %605, label %606, label %597, !llvm.loop !185

606:                                              ; preds = %597, %582
  %607 = phi i64 [ 0, %582 ], [ %603, %597 ]
  %608 = load i32, ptr %14, align 4, !tbaa !67
  %609 = and i32 %608, 33554432
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %619, label %611

611:                                              ; preds = %606
  %612 = load ptr, ptr %2, align 8, !tbaa !59
  %613 = getelementptr inbounds %struct.xpvhv, ptr %612, i64 0, i32 3
  %614 = load i64, ptr %613, align 8, !tbaa !90
  %615 = getelementptr ptr, ptr %585, i64 %614
  %616 = getelementptr ptr, ptr %615, i64 7
  %617 = load i32, ptr %616, align 8, !tbaa !186
  %618 = zext i32 %617 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.336, i64 noundef %607, i64 noundef %618) #13
  br label %620

619:                                              ; preds = %606
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.337, i64 noundef %607) #13
  br label %620

620:                                              ; preds = %619, %611
  %621 = load ptr, ptr %2, align 8, !tbaa !59
  %622 = getelementptr inbounds %struct.xpvhv, ptr %621, i64 0, i32 3
  %623 = load i64, ptr %622, align 8, !tbaa !90
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.323, i64 noundef %623) #13
  %624 = load i32, ptr %14, align 4, !tbaa !67
  %625 = and i32 %624, 33554432
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %687, label %627

627:                                              ; preds = %620
  %628 = load ptr, ptr %483, align 8, !tbaa !49
  %629 = load ptr, ptr %2, align 8, !tbaa !59
  %630 = getelementptr inbounds %struct.xpvhv, ptr %629, i64 0, i32 3
  %631 = load i64, ptr %630, align 8, !tbaa !90
  %632 = getelementptr ptr, ptr %628, i64 %631
  %633 = getelementptr ptr, ptr %632, i64 4
  %634 = load i32, ptr %633, align 8, !tbaa !187
  %635 = sext i32 %634 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.338, i64 noundef %635) #13
  %636 = load i32, ptr %14, align 4, !tbaa !67
  %637 = and i32 %636, 33554432
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %647, label %639

639:                                              ; preds = %627
  %640 = load ptr, ptr %483, align 8, !tbaa !49
  %641 = load ptr, ptr %2, align 8, !tbaa !59
  %642 = getelementptr inbounds %struct.xpvhv, ptr %641, i64 0, i32 3
  %643 = load i64, ptr %642, align 8, !tbaa !90
  %644 = getelementptr ptr, ptr %640, i64 %643
  %645 = getelementptr ptr, ptr %644, i64 3
  %646 = load ptr, ptr %645, align 8, !tbaa !188
  br label %647

647:                                              ; preds = %627, %639
  %648 = phi ptr [ %646, %639 ], [ null, %627 ]
  %649 = ptrtoint ptr %648 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.339, i64 noundef %649) #13
  %650 = load i32, ptr %14, align 4, !tbaa !67
  %651 = and i32 %650, 33554432
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %661, label %653

653:                                              ; preds = %647
  %654 = load ptr, ptr %483, align 8, !tbaa !49
  %655 = load ptr, ptr %2, align 8, !tbaa !59
  %656 = getelementptr inbounds %struct.xpvhv, ptr %655, i64 0, i32 3
  %657 = load i64, ptr %656, align 8, !tbaa !90
  %658 = getelementptr ptr, ptr %654, i64 %657
  %659 = getelementptr ptr, ptr %658, i64 6
  %660 = load i32, ptr %659, align 8, !tbaa !189
  br label %661

661:                                              ; preds = %647, %653
  %662 = phi i32 [ %660, %653 ], [ 0, %647 ]
  %663 = zext i32 %662 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.340, i64 noundef %663) #13
  %664 = load i32, ptr %14, align 4, !tbaa !67
  %665 = and i32 %664, 33554432
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %685, label %667

667:                                              ; preds = %661
  %668 = load ptr, ptr %483, align 8, !tbaa !49
  %669 = load ptr, ptr %2, align 8, !tbaa !59
  %670 = getelementptr inbounds %struct.xpvhv, ptr %669, i64 0, i32 3
  %671 = load i64, ptr %670, align 8, !tbaa !90
  %672 = getelementptr ptr, ptr %668, i64 %671
  %673 = getelementptr ptr, ptr %672, i64 6
  %674 = load i32, ptr %673, align 8, !tbaa !189
  %675 = getelementptr i8, ptr %672, i64 52
  %676 = load i32, ptr %675, align 4, !tbaa !190
  %677 = icmp eq i32 %674, %676
  br i1 %677, label %685, label %678

678:                                              ; preds = %667
  %679 = getelementptr ptr, ptr %672, i64 4
  %680 = load i32, ptr %679, align 8, !tbaa !187
  %681 = icmp eq i32 %680, -1
  br i1 %681, label %685, label %682

682:                                              ; preds = %678
  %683 = zext i32 %676 to i64
  %684 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.341, i64 noundef %683) #12
  br label %685

685:                                              ; preds = %661, %682, %678, %667
  %686 = tail call i32 @PerlIO_putc(ptr noundef %1, i32 noundef 10) #12
  br label %687

687:                                              ; preds = %685, %620
  %688 = tail call ptr @Perl_mg_find(ptr noundef nonnull %2, i32 noundef 58) #12
  %689 = icmp eq ptr %688, null
  br i1 %689, label %696, label %690

690:                                              ; preds = %687
  %691 = getelementptr inbounds %struct.magic, ptr %688, i64 0, i32 6
  %692 = load ptr, ptr %691, align 8, !tbaa !160
  %693 = icmp eq ptr %692, null
  br i1 %693, label %696, label %694

694:                                              ; preds = %690
  %695 = ptrtoint ptr %692 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.342, i64 noundef %695) #13
  br label %696

696:                                              ; preds = %694, %690, %687
  %697 = load i32, ptr %14, align 4, !tbaa !67
  %698 = and i32 %697, 33554432
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %1058, label %700

700:                                              ; preds = %696
  %701 = load ptr, ptr %483, align 8, !tbaa !49
  %702 = load ptr, ptr %2, align 8, !tbaa !59
  %703 = getelementptr inbounds %struct.xpvhv, ptr %702, i64 0, i32 3
  %704 = load i64, ptr %703, align 8, !tbaa !90
  %705 = getelementptr ptr, ptr %701, i64 %704
  %706 = getelementptr ptr, ptr %705, i64 1
  %707 = load ptr, ptr %706, align 8, !tbaa !49
  %708 = icmp eq ptr %707, null
  br i1 %708, label %788, label %709

709:                                              ; preds = %700
  %710 = getelementptr i8, ptr %705, i64 36
  %711 = load i32, ptr %710, align 4, !tbaa !131
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %716, label %713

713:                                              ; preds = %709
  %714 = load ptr, ptr %707, align 8, !tbaa !49
  %715 = icmp eq ptr %714, null
  br i1 %715, label %788, label %716

716:                                              ; preds = %709, %713
  %717 = phi ptr [ %714, %713 ], [ %707, %709 ]
  %718 = getelementptr inbounds %struct.hek, ptr %717, i64 0, i32 2
  %719 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #12
  %720 = load i32, ptr %14, align 4, !tbaa !67
  %721 = and i32 %720, 33554432
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %780, label %723

723:                                              ; preds = %716
  %724 = load ptr, ptr %483, align 8, !tbaa !49
  %725 = load ptr, ptr %2, align 8, !tbaa !59
  %726 = getelementptr inbounds %struct.xpvhv, ptr %725, i64 0, i32 3
  %727 = load i64, ptr %726, align 8, !tbaa !90
  %728 = getelementptr ptr, ptr %724, i64 %727
  %729 = getelementptr ptr, ptr %728, i64 1
  %730 = load ptr, ptr %729, align 8, !tbaa !49
  %731 = icmp eq ptr %730, null
  br i1 %731, label %780, label %732

732:                                              ; preds = %723
  %733 = getelementptr i8, ptr %728, i64 36
  %734 = load i32, ptr %733, align 4, !tbaa !131
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %739, label %736

736:                                              ; preds = %732
  %737 = load ptr, ptr %730, align 8, !tbaa !49
  %738 = icmp eq ptr %737, null
  br i1 %738, label %743, label %739

739:                                              ; preds = %732, %736
  %740 = phi ptr [ %737, %736 ], [ %730, %732 ]
  %741 = getelementptr inbounds %struct.hek, ptr %740, i64 0, i32 1
  %742 = load i32, ptr %741, align 4, !tbaa !73
  br label %743

743:                                              ; preds = %736, %739
  %744 = phi i32 [ %742, %739 ], [ 0, %736 ]
  %745 = sext i32 %744 to i64
  %746 = getelementptr i8, ptr %728, i64 36
  %747 = load i32, ptr %746, align 4, !tbaa !131
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %752, label %749

749:                                              ; preds = %743
  %750 = load ptr, ptr %730, align 8, !tbaa !49
  %751 = icmp eq ptr %750, null
  br i1 %751, label %756, label %752

752:                                              ; preds = %743, %749
  %753 = phi ptr [ %750, %749 ], [ %730, %743 ]
  %754 = getelementptr inbounds %struct.hek, ptr %753, i64 0, i32 1
  %755 = load i32, ptr %754, align 4, !tbaa !73
  br label %756

756:                                              ; preds = %749, %752
  %757 = phi i32 [ %755, %752 ], [ 0, %749 ]
  %758 = mul nsw i32 %757, 17
  %759 = add nsw i32 %758, 1
  %760 = sext i32 %759 to i64
  %761 = getelementptr i8, ptr %728, i64 36
  %762 = load i32, ptr %761, align 4, !tbaa !131
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %767, label %764

764:                                              ; preds = %756
  %765 = load ptr, ptr %730, align 8, !tbaa !49
  %766 = icmp eq ptr %765, null
  br i1 %766, label %780, label %767

767:                                              ; preds = %764, %756
  %768 = phi ptr [ %730, %756 ], [ %765, %764 ]
  %769 = getelementptr inbounds %struct.hek, ptr %768, i64 0, i32 2
  %770 = getelementptr inbounds %struct.hek, ptr %768, i64 0, i32 1
  %771 = load i32, ptr %770, align 4, !tbaa !73
  %772 = sext i32 %771 to i64
  %773 = getelementptr inbounds i8, ptr %769, i64 %772
  %774 = getelementptr inbounds i8, ptr %773, i64 1
  %775 = load i8, ptr %774, align 1, !tbaa !49
  %776 = freeze i8 %775
  %777 = and i8 %776, 1
  %778 = icmp eq i8 %777, 0
  %779 = select i1 %778, i32 66560, i32 66816
  br label %780

780:                                              ; preds = %723, %764, %767, %716
  %781 = phi i64 [ %745, %764 ], [ %745, %767 ], [ 0, %716 ], [ 0, %723 ]
  %782 = phi i64 [ %760, %764 ], [ %760, %767 ], [ 1, %716 ], [ 1, %723 ]
  %783 = phi i32 [ 66560, %764 ], [ %779, %767 ], [ 66560, %716 ], [ 66560, %723 ]
  %784 = tail call ptr @Perl_pv_escape(ptr noundef %719, ptr noundef nonnull %718, i64 noundef %781, i64 noundef %782, ptr noundef null, i32 noundef %783) #13
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.343, ptr noundef %784) #13
  %785 = load i32, ptr %14, align 4, !tbaa !67
  %786 = and i32 %785, 33554432
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %1058, label %788

788:                                              ; preds = %713, %700, %780
  %789 = tail call ptr @Perl_hv_backreferences_p(ptr noundef nonnull %2) #12
  %790 = load ptr, ptr %789, align 8, !tbaa !69
  %791 = load ptr, ptr %483, align 8, !tbaa !49
  %792 = load ptr, ptr %2, align 8, !tbaa !59
  %793 = getelementptr inbounds %struct.xpvhv, ptr %792, i64 0, i32 3
  %794 = load i64, ptr %793, align 8, !tbaa !90
  %795 = getelementptr ptr, ptr %791, i64 %794
  %796 = getelementptr ptr, ptr %795, i64 5
  %797 = load ptr, ptr %796, align 8, !tbaa !191
  %798 = getelementptr i8, ptr %795, i64 36
  %799 = load i32, ptr %798, align 4, !tbaa !131
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %807, label %801

801:                                              ; preds = %788
  %802 = sext i32 %799 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.344, i64 noundef %802) #13
  %803 = load ptr, ptr %483, align 8, !tbaa !49
  %804 = load ptr, ptr %2, align 8, !tbaa !59
  %805 = getelementptr inbounds %struct.xpvhv, ptr %804, i64 0, i32 3
  %806 = load i64, ptr %805, align 8, !tbaa !90
  br label %807

807:                                              ; preds = %801, %788
  %808 = phi i64 [ %806, %801 ], [ %794, %788 ]
  %809 = phi ptr [ %803, %801 ], [ %791, %788 ]
  %810 = getelementptr ptr, ptr %809, i64 %808
  %811 = getelementptr ptr, ptr %810, i64 1
  %812 = load ptr, ptr %811, align 8, !tbaa !49
  %813 = icmp eq ptr %812, null
  br i1 %813, label %990, label %814

814:                                              ; preds = %807
  %815 = getelementptr i8, ptr %810, i64 36
  %816 = load i32, ptr %815, align 4, !tbaa !131
  %817 = icmp sgt i32 %816, 0
  br i1 %817, label %818, label %821

818:                                              ; preds = %814
  %819 = load ptr, ptr %812, align 8, !tbaa !69
  %820 = icmp eq ptr %819, null
  br i1 %820, label %990, label %829

821:                                              ; preds = %814
  %822 = icmp slt i32 %816, -1
  br i1 %822, label %823, label %827

823:                                              ; preds = %821
  %824 = getelementptr inbounds ptr, ptr %812, i64 1
  %825 = load ptr, ptr %824, align 8, !tbaa !69
  %826 = icmp eq ptr %825, null
  br i1 %826, label %990, label %829

827:                                              ; preds = %821
  %828 = icmp eq i32 %816, -1
  br i1 %828, label %990, label %887

829:                                              ; preds = %823, %818
  %830 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #12
  %831 = load ptr, ptr %483, align 8, !tbaa !49
  %832 = load ptr, ptr %2, align 8, !tbaa !59
  %833 = getelementptr inbounds %struct.xpvhv, ptr %832, i64 0, i32 3
  %834 = load i64, ptr %833, align 8, !tbaa !90
  %835 = getelementptr ptr, ptr %831, i64 %834
  %836 = getelementptr ptr, ptr %835, i64 1
  %837 = load ptr, ptr %836, align 8, !tbaa !49
  %838 = lshr i32 %816, 31
  %839 = tail call i32 @llvm.abs.i32(i32 %816, i1 true)
  %840 = zext nneg i32 %839 to i64
  %841 = getelementptr inbounds ptr, ptr %837, i64 %840
  %842 = icmp ult i32 %838, %839
  br i1 %842, label %843, label %874

843:                                              ; preds = %829
  %844 = zext nneg i32 %838 to i64
  %845 = getelementptr inbounds ptr, ptr %837, i64 %844
  br label %846

846:                                              ; preds = %843, %871
  %847 = phi ptr [ %872, %871 ], [ %845, %843 ]
  %848 = load ptr, ptr %847, align 8, !tbaa !69
  %849 = getelementptr inbounds %struct.hek, ptr %848, i64 0, i32 1
  %850 = load i32, ptr %849, align 4, !tbaa !73
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %870, label %852

852:                                              ; preds = %846
  %853 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #12
  %854 = load ptr, ptr %847, align 8, !tbaa !69
  %855 = getelementptr inbounds %struct.hek, ptr %854, i64 0, i32 2
  %856 = getelementptr inbounds %struct.hek, ptr %854, i64 0, i32 1
  %857 = load i32, ptr %856, align 4, !tbaa !73
  %858 = sext i32 %857 to i64
  %859 = mul nsw i32 %857, 17
  %860 = add nsw i32 %859, 1
  %861 = sext i32 %860 to i64
  %862 = getelementptr inbounds i8, ptr %855, i64 %858
  %863 = getelementptr inbounds i8, ptr %862, i64 1
  %864 = load i8, ptr %863, align 1, !tbaa !49
  %865 = and i8 %864, 1
  %866 = zext nneg i8 %865 to i32
  %867 = shl nuw nsw i32 %866, 8
  %868 = or disjoint i32 %867, 66560
  %869 = tail call ptr @Perl_pv_escape(ptr noundef %853, ptr noundef nonnull %855, i64 noundef %858, i64 noundef %861, ptr noundef null, i32 noundef %868) #13
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %830, ptr noundef nonnull @.str.345, ptr noundef %869) #12
  br label %871

870:                                              ; preds = %846
  tail call void @Perl_sv_catpvn_flags(ptr noundef %830, ptr noundef nonnull @.str.346, i64 noundef 8, i32 noundef 2) #12
  br label %871

871:                                              ; preds = %870, %852
  %872 = getelementptr inbounds ptr, ptr %847, i64 1
  %873 = icmp ult ptr %872, %841
  br i1 %873, label %846, label %874, !llvm.loop !192

874:                                              ; preds = %871, %829
  %875 = getelementptr inbounds %struct.sv, ptr %830, i64 0, i32 2
  %876 = load i32, ptr %875, align 4, !tbaa !67
  %877 = and i32 %876, 2098176
  %878 = icmp eq i32 %877, 1024
  br i1 %878, label %879, label %882

879:                                              ; preds = %874
  %880 = getelementptr inbounds %struct.sv, ptr %830, i64 0, i32 3
  %881 = load ptr, ptr %880, align 8, !tbaa !49
  br label %884

882:                                              ; preds = %874
  %883 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %830, ptr noundef null, i32 noundef 2) #12
  br label %884

884:                                              ; preds = %882, %879
  %885 = phi ptr [ %881, %879 ], [ %883, %882 ]
  %886 = getelementptr inbounds i8, ptr %885, i64 2
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.347, ptr noundef nonnull %886) #13
  br label %990

887:                                              ; preds = %827
  %888 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #12
  %889 = load i32, ptr %14, align 4, !tbaa !67
  %890 = and i32 %889, 33554432
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %984, label %892

892:                                              ; preds = %887
  %893 = load ptr, ptr %483, align 8, !tbaa !49
  %894 = load ptr, ptr %2, align 8, !tbaa !59
  %895 = getelementptr inbounds %struct.xpvhv, ptr %894, i64 0, i32 3
  %896 = load i64, ptr %895, align 8, !tbaa !90
  %897 = getelementptr ptr, ptr %893, i64 %896
  %898 = getelementptr ptr, ptr %897, i64 1
  %899 = load ptr, ptr %898, align 8, !tbaa !49
  %900 = icmp eq ptr %899, null
  br i1 %900, label %984, label %901

901:                                              ; preds = %892
  %902 = getelementptr i8, ptr %897, i64 36
  %903 = load i32, ptr %902, align 4, !tbaa !131
  %904 = icmp eq i32 %903, -1
  br i1 %904, label %917, label %905

905:                                              ; preds = %901
  %906 = icmp sgt i32 %903, 0
  br i1 %906, label %911, label %907

907:                                              ; preds = %905
  %908 = icmp slt i32 %903, -1
  br i1 %908, label %909, label %914

909:                                              ; preds = %907
  %910 = getelementptr inbounds ptr, ptr %899, i64 1
  br label %911

911:                                              ; preds = %905, %909
  %912 = phi ptr [ %910, %909 ], [ %899, %905 ]
  %913 = load ptr, ptr %912, align 8, !tbaa !69
  br label %914

914:                                              ; preds = %911, %907
  %915 = phi ptr [ %899, %907 ], [ %913, %911 ]
  %916 = getelementptr inbounds %struct.hek, ptr %915, i64 0, i32 2
  br label %917

917:                                              ; preds = %901, %914
  %918 = phi ptr [ %916, %914 ], [ null, %901 ]
  %919 = getelementptr i8, ptr %897, i64 36
  %920 = load i32, ptr %919, align 4, !tbaa !131
  %921 = icmp eq i32 %920, -1
  br i1 %921, label %936, label %922

922:                                              ; preds = %917
  %923 = icmp sgt i32 %920, 0
  br i1 %923, label %928, label %924

924:                                              ; preds = %922
  %925 = icmp slt i32 %920, -1
  br i1 %925, label %926, label %931

926:                                              ; preds = %924
  %927 = getelementptr inbounds ptr, ptr %899, i64 1
  br label %928

928:                                              ; preds = %922, %926
  %929 = phi ptr [ %927, %926 ], [ %899, %922 ]
  %930 = load ptr, ptr %929, align 8, !tbaa !69
  br label %931

931:                                              ; preds = %928, %924
  %932 = phi ptr [ %899, %924 ], [ %930, %928 ]
  %933 = getelementptr inbounds %struct.hek, ptr %932, i64 0, i32 1
  %934 = load i32, ptr %933, align 4, !tbaa !73
  %935 = sext i32 %934 to i64
  br label %936

936:                                              ; preds = %917, %931
  %937 = phi i64 [ %935, %931 ], [ 0, %917 ]
  %938 = getelementptr i8, ptr %897, i64 36
  %939 = load i32, ptr %938, align 4, !tbaa !131
  %940 = icmp eq i32 %939, -1
  br i1 %940, label %957, label %941

941:                                              ; preds = %936
  %942 = icmp sgt i32 %939, 0
  br i1 %942, label %947, label %943

943:                                              ; preds = %941
  %944 = icmp slt i32 %939, -1
  br i1 %944, label %945, label %950

945:                                              ; preds = %943
  %946 = getelementptr inbounds ptr, ptr %899, i64 1
  br label %947

947:                                              ; preds = %941, %945
  %948 = phi ptr [ %946, %945 ], [ %899, %941 ]
  %949 = load ptr, ptr %948, align 8, !tbaa !69
  br label %950

950:                                              ; preds = %947, %943
  %951 = phi ptr [ %899, %943 ], [ %949, %947 ]
  %952 = getelementptr inbounds %struct.hek, ptr %951, i64 0, i32 1
  %953 = load i32, ptr %952, align 4, !tbaa !73
  %954 = mul nsw i32 %953, 17
  %955 = add nsw i32 %954, 1
  %956 = sext i32 %955 to i64
  br label %957

957:                                              ; preds = %936, %950
  %958 = phi i64 [ %956, %950 ], [ 1, %936 ]
  %959 = getelementptr i8, ptr %897, i64 36
  %960 = load i32, ptr %959, align 4, !tbaa !131
  %961 = icmp eq i32 %960, -1
  br i1 %961, label %984, label %962

962:                                              ; preds = %957
  %963 = icmp sgt i32 %960, 0
  br i1 %963, label %968, label %964

964:                                              ; preds = %962
  %965 = icmp slt i32 %960, -1
  br i1 %965, label %966, label %971

966:                                              ; preds = %964
  %967 = getelementptr inbounds ptr, ptr %899, i64 1
  br label %968

968:                                              ; preds = %962, %966
  %969 = phi ptr [ %967, %966 ], [ %899, %962 ]
  %970 = load ptr, ptr %969, align 8, !tbaa !49
  br label %971

971:                                              ; preds = %968, %964
  %972 = phi ptr [ %899, %964 ], [ %970, %968 ]
  %973 = getelementptr inbounds %struct.hek, ptr %972, i64 0, i32 2
  %974 = getelementptr inbounds %struct.hek, ptr %972, i64 0, i32 1
  %975 = load i32, ptr %974, align 4, !tbaa !73
  %976 = sext i32 %975 to i64
  %977 = getelementptr inbounds i8, ptr %973, i64 %976
  %978 = getelementptr inbounds i8, ptr %977, i64 1
  %979 = load i8, ptr %978, align 1, !tbaa !49
  %980 = freeze i8 %979
  %981 = and i8 %980, 1
  %982 = icmp eq i8 %981, 0
  %983 = select i1 %982, i32 66560, i32 66816
  br label %984

984:                                              ; preds = %892, %887, %971, %957
  %985 = phi i64 [ %937, %957 ], [ %937, %971 ], [ 0, %887 ], [ 0, %892 ]
  %986 = phi ptr [ %918, %957 ], [ %918, %971 ], [ null, %887 ], [ null, %892 ]
  %987 = phi i64 [ %958, %957 ], [ %958, %971 ], [ 1, %887 ], [ 1, %892 ]
  %988 = phi i32 [ 66560, %957 ], [ %983, %971 ], [ 66560, %887 ], [ 66560, %892 ]
  %989 = tail call ptr @Perl_pv_escape(ptr noundef %888, ptr noundef %986, i64 noundef %985, i64 noundef %987, ptr noundef null, i32 noundef %988) #13
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.348, ptr noundef %989) #13
  br label %990

990:                                              ; preds = %884, %984, %827, %823, %818, %807
  %991 = icmp eq ptr %790, null
  br i1 %991, label %996, label %992

992:                                              ; preds = %990
  %993 = ptrtoint ptr %790 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.349, i64 noundef %993) #13
  %994 = add nsw i32 %0, 1
  %995 = add nsw i32 %3, 1
  tail call void @Perl_do_sv_dump(i32 noundef %994, ptr noundef %1, ptr noundef nonnull %790, i32 noundef %995, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6) #13
  br label %996

996:                                              ; preds = %992, %990
  %997 = icmp eq ptr %797, null
  br i1 %997, label %1058, label %998

998:                                              ; preds = %996
  %999 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #12
  %1000 = getelementptr inbounds %struct.mro_meta, ptr %797, i64 0, i32 5
  %1001 = load ptr, ptr %1000, align 8, !tbaa !193
  %1002 = getelementptr inbounds %struct.mro_alg, ptr %1001, i64 0, i32 1
  %1003 = load ptr, ptr %1002, align 8, !tbaa !195
  %1004 = getelementptr inbounds %struct.mro_alg, ptr %1001, i64 0, i32 2
  %1005 = load i16, ptr %1004, align 8, !tbaa !197
  %1006 = zext i16 %1005 to i64
  %1007 = mul nuw nsw i64 %1006, 17
  %1008 = add nuw nsw i64 %1007, 1
  %1009 = getelementptr inbounds %struct.mro_alg, ptr %1001, i64 0, i32 3
  %1010 = load i16, ptr %1009, align 2, !tbaa !198
  %1011 = shl i16 %1010, 8
  %1012 = and i16 %1011, 256
  %1013 = zext nneg i16 %1012 to i32
  %1014 = or disjoint i32 %1013, 66560
  %1015 = tail call ptr @Perl_pv_escape(ptr noundef %999, ptr noundef %1003, i64 noundef %1006, i64 noundef %1008, ptr noundef null, i32 noundef %1014) #13
  %1016 = load ptr, ptr %1000, align 8, !tbaa !193
  %1017 = ptrtoint ptr %1016 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.350, ptr noundef %1015, i64 noundef %1017) #13
  %1018 = getelementptr inbounds %struct.mro_meta, ptr %797, i64 0, i32 3
  %1019 = load i32, ptr %1018, align 8, !tbaa !199
  %1020 = zext i32 %1019 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.351, i64 noundef %1020) #13
  %1021 = getelementptr inbounds %struct.mro_meta, ptr %797, i64 0, i32 4
  %1022 = load i32, ptr %1021, align 4, !tbaa !200
  %1023 = zext i32 %1022 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.352, i64 noundef %1023) #13
  %1024 = load ptr, ptr %797, align 8, !tbaa !201
  %1025 = icmp eq ptr %1024, null
  br i1 %1025, label %1031, label %1026

1026:                                             ; preds = %998
  %1027 = ptrtoint ptr %1024 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.353, i64 noundef %1027) #13
  %1028 = add nsw i32 %0, 1
  %1029 = load ptr, ptr %797, align 8, !tbaa !201
  %1030 = add nsw i32 %3, 1
  tail call void @Perl_do_sv_dump(i32 noundef %1028, ptr noundef %1, ptr noundef %1029, i32 noundef %1030, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6) #13
  br label %1031

1031:                                             ; preds = %1026, %998
  %1032 = getelementptr inbounds %struct.mro_meta, ptr %797, i64 0, i32 1
  %1033 = load ptr, ptr %1032, align 8, !tbaa !202
  %1034 = icmp eq ptr %1033, null
  br i1 %1034, label %1040, label %1035

1035:                                             ; preds = %1031
  %1036 = ptrtoint ptr %1033 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.354, i64 noundef %1036) #13
  %1037 = add nsw i32 %0, 1
  %1038 = load ptr, ptr %1032, align 8, !tbaa !202
  %1039 = add nsw i32 %3, 1
  tail call void @Perl_do_sv_dump(i32 noundef %1037, ptr noundef %1, ptr noundef %1038, i32 noundef %1039, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6) #13
  br label %1040

1040:                                             ; preds = %1035, %1031
  %1041 = getelementptr inbounds %struct.mro_meta, ptr %797, i64 0, i32 2
  %1042 = load ptr, ptr %1041, align 8, !tbaa !203
  %1043 = icmp eq ptr %1042, null
  br i1 %1043, label %1049, label %1044

1044:                                             ; preds = %1040
  %1045 = ptrtoint ptr %1042 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.355, i64 noundef %1045) #13
  %1046 = add nsw i32 %0, 1
  %1047 = load ptr, ptr %1041, align 8, !tbaa !203
  %1048 = add nsw i32 %3, 1
  tail call void @Perl_do_sv_dump(i32 noundef %1046, ptr noundef %1, ptr noundef %1047, i32 noundef %1048, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6) #13
  br label %1049

1049:                                             ; preds = %1044, %1040
  %1050 = getelementptr inbounds %struct.mro_meta, ptr %797, i64 0, i32 6
  %1051 = load ptr, ptr %1050, align 8, !tbaa !204
  %1052 = icmp eq ptr %1051, null
  br i1 %1052, label %1058, label %1053

1053:                                             ; preds = %1049
  %1054 = ptrtoint ptr %1051 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.356, i64 noundef %1054) #13
  %1055 = add nsw i32 %0, 1
  %1056 = load ptr, ptr %1050, align 8, !tbaa !204
  %1057 = add nsw i32 %3, 1
  tail call void @Perl_do_sv_dump(i32 noundef %1055, ptr noundef %1, ptr noundef %1056, i32 noundef %1057, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6) #13
  br label %1058

1058:                                             ; preds = %696, %996, %1053, %1049, %780
  %1059 = icmp slt i32 %3, %4
  br i1 %1059, label %1060, label %1799

1060:                                             ; preds = %1058
  %1061 = load ptr, ptr %483, align 8, !tbaa !49
  %1062 = icmp eq ptr %1061, null
  br i1 %1062, label %1799, label %1063

1063:                                             ; preds = %1060
  %1064 = sub nsw i32 %4, %3
  %1065 = add nsw i32 %0, 1
  %1066 = add nsw i32 %3, 1
  br label %1067

1067:                                             ; preds = %1063, %1136
  %1068 = phi i32 [ %1064, %1063 ], [ %1137, %1136 ]
  %1069 = phi i64 [ 0, %1063 ], [ %1138, %1136 ]
  %1070 = load ptr, ptr %483, align 8, !tbaa !49
  %1071 = getelementptr inbounds ptr, ptr %1070, i64 %1069
  %1072 = load ptr, ptr %1071, align 8, !tbaa !69
  %1073 = icmp eq ptr %1072, null
  br i1 %1073, label %1136, label %1074

1074:                                             ; preds = %1067, %1131
  %1075 = phi ptr [ %1134, %1131 ], [ %1072, %1067 ]
  %1076 = phi i32 [ %1077, %1131 ], [ %1068, %1067 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  %1077 = add nsw i32 %1076, -1
  %1078 = icmp slt i32 %1076, 1
  br i1 %1078, label %1079, label %1080

1079:                                             ; preds = %1074
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  br label %1799

1080:                                             ; preds = %1074
  %1081 = getelementptr inbounds %struct.he, ptr %1075, i64 0, i32 1
  %1082 = load ptr, ptr %1081, align 8, !tbaa !97
  %1083 = load i32, ptr %1082, align 4, !tbaa !205
  %1084 = call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %1075) #12
  %1085 = getelementptr inbounds %struct.sv, ptr %1084, i64 0, i32 2
  %1086 = load i32, ptr %1085, align 4, !tbaa !67
  %1087 = and i32 %1086, 2098176
  %1088 = icmp eq i32 %1087, 1024
  br i1 %1088, label %1089, label %1095

1089:                                             ; preds = %1080
  %1090 = load ptr, ptr %1084, align 8, !tbaa !59
  %1091 = getelementptr inbounds %struct.xpv, ptr %1090, i64 0, i32 2
  %1092 = load i64, ptr %1091, align 8, !tbaa !62
  store i64 %1092, ptr %9, align 8, !tbaa !45
  %1093 = getelementptr inbounds %struct.sv, ptr %1084, i64 0, i32 3
  %1094 = load ptr, ptr %1093, align 8, !tbaa !49
  br label %1098

1095:                                             ; preds = %1080
  %1096 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1084, ptr noundef nonnull %9, i32 noundef 34) #12
  %1097 = load i64, ptr %9, align 8, !tbaa !45
  br label %1098

1098:                                             ; preds = %1095, %1089
  %1099 = phi i64 [ %1092, %1089 ], [ %1097, %1095 ]
  %1100 = phi ptr [ %1094, %1089 ], [ %1096, %1095 ]
  %1101 = getelementptr inbounds %struct.he, ptr %1075, i64 0, i32 2
  %1102 = load ptr, ptr %1101, align 8, !tbaa !49
  %1103 = call ptr @Perl_pv_display(ptr noundef nonnull %27, ptr noundef %1100, i64 noundef %1099, i64 noundef 0, i64 noundef %6) #13
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %1065, ptr noundef %1, ptr noundef nonnull @.str.357, ptr noundef %1103) #13
  %1104 = load i32, ptr %1085, align 4, !tbaa !67
  %1105 = and i32 %1104, 536870912
  %1106 = icmp eq i32 %1105, 0
  br i1 %1106, label %1114, label %1107

1107:                                             ; preds = %1098
  %1108 = load ptr, ptr %1084, align 8, !tbaa !59
  %1109 = getelementptr inbounds %struct.xpv, ptr %1108, i64 0, i32 2
  %1110 = load i64, ptr %1109, align 8, !tbaa !62
  %1111 = mul i64 %1110, 6
  %1112 = call ptr @Perl_sv_uni_display(ptr noundef nonnull %27, ptr noundef nonnull %1084, i64 noundef %1111, i64 noundef 3) #12
  %1113 = call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.358, ptr noundef %1112) #12
  br label %1114

1114:                                             ; preds = %1107, %1098
  %1115 = load i32, ptr %14, align 4, !tbaa !130
  %1116 = and i32 %1115, 33554432
  %1117 = icmp eq i32 %1116, 0
  br i1 %1117, label %1126, label %1118

1118:                                             ; preds = %1114
  %1119 = load ptr, ptr %483, align 8, !tbaa !49
  %1120 = load ptr, ptr %2, align 8, !tbaa !88
  %1121 = getelementptr inbounds %struct.xpvhv, ptr %1120, i64 0, i32 3
  %1122 = load i64, ptr %1121, align 8, !tbaa !90
  %1123 = getelementptr ptr, ptr %1119, i64 %1122
  %1124 = getelementptr ptr, ptr %1123, i64 3
  %1125 = load ptr, ptr %1124, align 8, !tbaa !188
  br label %1126

1126:                                             ; preds = %1114, %1118
  %1127 = phi ptr [ %1125, %1118 ], [ null, %1114 ]
  %1128 = icmp eq ptr %1127, %1075
  br i1 %1128, label %1129, label %1131

1129:                                             ; preds = %1126
  %1130 = call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.359) #12
  br label %1131

1131:                                             ; preds = %1126, %1129
  %1132 = zext i32 %1083 to i64
  %1133 = call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.360, i64 noundef %1132) #12
  call void @Perl_do_sv_dump(i32 noundef %1065, ptr noundef %1, ptr noundef %1102, i32 noundef %1066, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  %1134 = load ptr, ptr %1075, align 8, !tbaa !69
  %1135 = icmp eq ptr %1134, null
  br i1 %1135, label %1136, label %1074, !llvm.loop !206

1136:                                             ; preds = %1131, %1067
  %1137 = phi i32 [ %1068, %1067 ], [ %1077, %1131 ]
  %1138 = add i64 %1069, 1
  %1139 = load ptr, ptr %2, align 8, !tbaa !88
  %1140 = getelementptr inbounds %struct.xpvhv, ptr %1139, i64 0, i32 3
  %1141 = load i64, ptr %1140, align 8, !tbaa !90
  %1142 = icmp ugt i64 %1138, %1141
  br i1 %1142, label %1799, label %1067, !llvm.loop !207

1143:                                             ; preds = %373
  %1144 = load ptr, ptr %2, align 8, !tbaa !59
  %1145 = getelementptr inbounds %struct.xpvcv, ptr %1144, i64 0, i32 12
  %1146 = load i32, ptr %1145, align 4, !tbaa !83
  %1147 = and i32 %1146, 8192
  %1148 = icmp eq i32 %1147, 0
  br i1 %1148, label %1174, label %1149

1149:                                             ; preds = %1143
  %1150 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  %1151 = load i32, ptr %14, align 4, !tbaa !67
  %1152 = and i32 %1151, 2098176
  %1153 = icmp eq i32 %1152, 1024
  br i1 %1153, label %1154, label %1160

1154:                                             ; preds = %1149
  %1155 = load ptr, ptr %2, align 8, !tbaa !59
  %1156 = getelementptr inbounds %struct.xpv, ptr %1155, i64 0, i32 2
  %1157 = load i64, ptr %1156, align 8, !tbaa !62
  store i64 %1157, ptr %10, align 8, !tbaa !45
  %1158 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %1159 = load ptr, ptr %1158, align 8, !tbaa !49
  br label %1164

1160:                                             ; preds = %1149
  %1161 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %2, ptr noundef nonnull %10, i32 noundef 34) #12
  %1162 = load i64, ptr %10, align 8, !tbaa !45
  %1163 = load i32, ptr %14, align 4, !tbaa !67
  br label %1164

1164:                                             ; preds = %1160, %1154
  %1165 = phi i32 [ %1151, %1154 ], [ %1163, %1160 ]
  %1166 = phi i64 [ %1157, %1154 ], [ %1162, %1160 ]
  %1167 = phi ptr [ %1159, %1154 ], [ %1161, %1160 ]
  %1168 = mul i64 %1166, 17
  %1169 = add i64 %1168, 1
  %1170 = lshr i32 %1165, 21
  %1171 = and i32 %1170, 256
  %1172 = or disjoint i32 %1171, 66560
  %1173 = call ptr @Perl_pv_escape(ptr noundef %1150, ptr noundef %1167, i64 noundef %1166, i64 noundef %1169, ptr noundef null, i32 noundef %1172) #13
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.361, ptr noundef %1173) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %1174

1174:                                             ; preds = %1164, %1143
  %1175 = load i32, ptr %14, align 4, !tbaa !67
  %1176 = and i32 %1175, 1024
  %1177 = icmp eq i32 %1176, 0
  br i1 %1177, label %1242, label %1178

1178:                                             ; preds = %1174
  %1179 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #12
  %1180 = load i32, ptr %14, align 4, !tbaa !67
  %1181 = and i32 %1180, 1024
  %1182 = icmp eq i32 %1181, 0
  br i1 %1182, label %1232, label %1183

1183:                                             ; preds = %1178
  %1184 = and i32 %1180, 255
  %1185 = icmp eq i32 %1184, 13
  %1186 = load ptr, ptr %2, align 8, !tbaa !59
  br i1 %1185, label %1187, label %1215

1187:                                             ; preds = %1183
  %1188 = getelementptr inbounds %struct.xpvcv, ptr %1186, i64 0, i32 12
  %1189 = load i32, ptr %1188, align 4, !tbaa !83
  %1190 = and i32 %1189, 8192
  %1191 = icmp eq i32 %1190, 0
  %1192 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %1193 = load ptr, ptr %1192, align 8, !tbaa !49
  br i1 %1191, label %1199, label %1194

1194:                                             ; preds = %1187
  %1195 = getelementptr inbounds %struct.xpv, ptr %1186, i64 0, i32 2
  %1196 = load i64, ptr %1195, align 8, !tbaa !62
  %1197 = getelementptr inbounds i8, ptr %1193, i64 %1196
  %1198 = getelementptr inbounds i8, ptr %1197, i64 1
  br label %1199

1199:                                             ; preds = %1187, %1194
  %1200 = phi ptr [ %1198, %1194 ], [ %1193, %1187 ]
  %1201 = getelementptr inbounds %struct.xpvcv, ptr %1186, i64 0, i32 12
  %1202 = load i32, ptr %1201, align 4, !tbaa !83
  %1203 = and i32 %1202, 8192
  %1204 = icmp eq i32 %1203, 0
  br i1 %1204, label %1205, label %1208

1205:                                             ; preds = %1199
  %1206 = getelementptr inbounds %struct.xpv, ptr %1186, i64 0, i32 2
  %1207 = load i64, ptr %1206, align 8, !tbaa !62
  br label %1220

1208:                                             ; preds = %1199
  %1209 = getelementptr inbounds %struct.xpv, ptr %1186, i64 0, i32 3
  %1210 = load i64, ptr %1209, align 8, !tbaa !49
  %1211 = getelementptr inbounds %struct.xpv, ptr %1186, i64 0, i32 2
  %1212 = load i64, ptr %1211, align 8, !tbaa !62
  %1213 = add i64 %1210, -2
  %1214 = sub i64 %1213, %1212
  br label %1220

1215:                                             ; preds = %1183
  %1216 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %1217 = load ptr, ptr %1216, align 8, !tbaa !49
  %1218 = getelementptr inbounds %struct.xpv, ptr %1186, i64 0, i32 2
  %1219 = load i64, ptr %1218, align 8, !tbaa !62
  br label %1232

1220:                                             ; preds = %1205, %1208
  %1221 = phi i64 [ %1214, %1208 ], [ %1207, %1205 ]
  %1222 = phi i64 [ %1212, %1208 ], [ %1207, %1205 ]
  %1223 = getelementptr inbounds %struct.xpvcv, ptr %1186, i64 0, i32 12
  %1224 = load i32, ptr %1223, align 4, !tbaa !83
  %1225 = and i32 %1224, 8192
  %1226 = icmp eq i32 %1225, 0
  br i1 %1226, label %1232, label %1227

1227:                                             ; preds = %1220
  %1228 = getelementptr inbounds %struct.xpv, ptr %1186, i64 0, i32 3
  %1229 = load i64, ptr %1228, align 8, !tbaa !49
  %1230 = add i64 %1229, -2
  %1231 = sub i64 %1230, %1222
  br label %1232

1232:                                             ; preds = %1220, %1215, %1178, %1227
  %1233 = phi i64 [ %1221, %1227 ], [ 0, %1178 ], [ %1221, %1220 ], [ %1219, %1215 ]
  %1234 = phi ptr [ %1200, %1227 ], [ null, %1178 ], [ %1200, %1220 ], [ %1217, %1215 ]
  %1235 = phi i64 [ %1231, %1227 ], [ 0, %1178 ], [ %1222, %1220 ], [ %1219, %1215 ]
  %1236 = mul i64 %1235, 17
  %1237 = add i64 %1236, 1
  %1238 = lshr i32 %1180, 21
  %1239 = and i32 %1238, 256
  %1240 = or disjoint i32 %1239, 66560
  %1241 = call ptr @Perl_pv_escape(ptr noundef %1179, ptr noundef %1234, i64 noundef %1233, i64 noundef %1237, ptr noundef null, i32 noundef %1240) #13
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.362, ptr noundef %1241) #13
  br label %1242

1242:                                             ; preds = %373, %1174, %1232
  %1243 = load ptr, ptr %2, align 8, !tbaa !59
  %1244 = getelementptr inbounds %struct.xpvcv, ptr %1243, i64 0, i32 4
  %1245 = load ptr, ptr %1244, align 8, !tbaa !208
  call void @Perl_do_hv_dump(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.363, ptr noundef %1245) #13
  %1246 = load ptr, ptr %2, align 8, !tbaa !59
  %1247 = getelementptr inbounds %struct.xpvcv, ptr %1246, i64 0, i32 12
  %1248 = load i32, ptr %1247, align 4, !tbaa !83
  %1249 = and i32 %1248, 8
  %1250 = icmp eq i32 %1249, 0
  br i1 %1250, label %1251, label %1271

1251:                                             ; preds = %1242
  %1252 = getelementptr inbounds %struct.xpvcv, ptr %1246, i64 0, i32 5
  %1253 = load ptr, ptr %1252, align 8, !tbaa !49
  %1254 = icmp eq ptr %1253, null
  br i1 %1254, label %1259, label %1255

1255:                                             ; preds = %1251
  %1256 = ptrtoint ptr %1253 to i64
  %1257 = call fastcc i64 @S_sequence_num(ptr noundef nonnull %1253) #13
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.364, i64 noundef %1256, i64 noundef %1257) #13
  %1258 = load ptr, ptr %2, align 8, !tbaa !59
  br label %1259

1259:                                             ; preds = %1255, %1251
  %1260 = phi ptr [ %1258, %1255 ], [ %1246, %1251 ]
  %1261 = getelementptr inbounds %struct.xpvcv, ptr %1260, i64 0, i32 6
  %1262 = load ptr, ptr %1261, align 8, !tbaa !49
  %1263 = ptrtoint ptr %1262 to i64
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.365, i64 noundef %1263) #13
  %1264 = load ptr, ptr %2, align 8, !tbaa !59
  %1265 = getelementptr inbounds %struct.xpvcv, ptr %1264, i64 0, i32 6
  %1266 = load ptr, ptr %1265, align 8, !tbaa !49
  %1267 = icmp ne ptr %1266, null
  %1268 = and i1 %1267, %5
  br i1 %1268, label %1269, label %1288

1269:                                             ; preds = %1259
  %1270 = add nsw i32 %0, 1
  call void @Perl_do_op_dump(i32 noundef %1270, ptr noundef %1, ptr noundef nonnull %1266) #13
  br label %1288

1271:                                             ; preds = %1242
  %1272 = call ptr @Perl_cv_const_sv(ptr noundef nonnull %2) #12
  %1273 = load ptr, ptr %2, align 8, !tbaa !59
  %1274 = getelementptr inbounds %struct.xpvcv, ptr %1273, i64 0, i32 6
  %1275 = load ptr, ptr %1274, align 8, !tbaa !49
  %1276 = ptrtoint ptr %1275 to i64
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.366, i64 noundef %1276) #13
  %1277 = icmp eq ptr %1272, null
  %1278 = load ptr, ptr %2, align 8, !tbaa !59
  %1279 = getelementptr inbounds %struct.xpvcv, ptr %1278, i64 0, i32 5
  br i1 %1277, label %1285, label %1280

1280:                                             ; preds = %1271
  %1281 = load ptr, ptr %1279, align 8, !tbaa !49
  %1282 = ptrtoint ptr %1281 to i64
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.367, i64 noundef %1282) #13
  %1283 = add nsw i32 %0, 1
  %1284 = add nsw i32 %3, 1
  call void @Perl_do_sv_dump(i32 noundef %1283, ptr noundef %1, ptr noundef nonnull %1272, i32 noundef %1284, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6) #13
  br label %1288

1285:                                             ; preds = %1271
  %1286 = load i32, ptr %1279, align 8, !tbaa !49
  %1287 = sext i32 %1286 to i64
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.368, i64 noundef %1287) #13
  br label %1288

1288:                                             ; preds = %1280, %1285, %1259, %1269
  %1289 = load ptr, ptr %2, align 8, !tbaa !59
  %1290 = getelementptr inbounds %struct.xpvcv, ptr %1289, i64 0, i32 12
  %1291 = load i32, ptr %1290, align 4, !tbaa !83
  %1292 = and i32 %1291, 32768
  %1293 = icmp eq i32 %1292, 0
  br i1 %1293, label %1297, label %1294

1294:                                             ; preds = %1288
  %1295 = call fastcc ptr @CvNAME_HEK(ptr noundef nonnull %2) #13
  %1296 = getelementptr inbounds %struct.hek, ptr %1295, i64 0, i32 2
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.343, ptr noundef nonnull %1296) #13
  br label %1299

1297:                                             ; preds = %1288
  %1298 = call fastcc ptr @S_CvGV(ptr noundef nonnull %2) #13
  call void @Perl_do_gvgv_dump(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.369, ptr noundef %1298) #13
  br label %1299

1299:                                             ; preds = %1297, %1294
  %1300 = load ptr, ptr %2, align 8, !tbaa !59
  %1301 = getelementptr inbounds %struct.xpvcv, ptr %1300, i64 0, i32 8
  %1302 = load ptr, ptr %1301, align 8, !tbaa !209
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.370, ptr noundef %1302) #13
  %1303 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %2) #13
  %1304 = load i32, ptr %1303, align 4, !tbaa !53
  %1305 = sext i32 %1304 to i64
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.371, i64 noundef %1305) #13
  %1306 = load ptr, ptr %2, align 8, !tbaa !59
  %1307 = getelementptr inbounds %struct.xpvcv, ptr %1306, i64 0, i32 12
  %1308 = load i32, ptr %1307, align 4, !tbaa !83
  %1309 = zext i32 %1308 to i64
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.372, i64 noundef %1309) #13
  %1310 = load ptr, ptr %2, align 8, !tbaa !59
  %1311 = getelementptr inbounds %struct.xpvcv, ptr %1310, i64 0, i32 11
  %1312 = load i32, ptr %1311, align 8, !tbaa !210
  %1313 = zext i32 %1312 to i64
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.373, i64 noundef %1313) #13
  %1314 = load ptr, ptr %2, align 8, !tbaa !59
  %1315 = getelementptr inbounds %struct.xpvcv, ptr %1314, i64 0, i32 12
  %1316 = load i32, ptr %1315, align 4, !tbaa !83
  %1317 = and i32 %1316, 8
  %1318 = icmp eq i32 %1317, 0
  %1319 = getelementptr inbounds %struct.xpvcv, ptr %1314, i64 0, i32 9
  %1320 = load ptr, ptr %1319, align 8, !tbaa !49
  br i1 %1318, label %1321, label %1329

1321:                                             ; preds = %1299
  %1322 = ptrtoint ptr %1320 to i64
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.374, i64 noundef %1322) #13
  %1323 = icmp slt i32 %3, %4
  br i1 %1323, label %1324, label %1330

1324:                                             ; preds = %1321
  %1325 = add nsw i32 %0, 1
  %1326 = load ptr, ptr %2, align 8, !tbaa !59
  %1327 = getelementptr inbounds %struct.xpvcv, ptr %1326, i64 0, i32 9
  %1328 = load ptr, ptr %1327, align 8, !tbaa !49
  call void @Perl_do_dump_pad(i32 noundef %1325, ptr noundef %1, ptr noundef %1328, i32 noundef 0) #12
  br label %1330

1329:                                             ; preds = %1299
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.375, ptr noundef %1320) #13
  br label %1330

1330:                                             ; preds = %1321, %1324, %1329
  %1331 = load ptr, ptr %2, align 8, !tbaa !59
  %1332 = getelementptr inbounds %struct.xpvcv, ptr %1331, i64 0, i32 10
  %1333 = load ptr, ptr %1332, align 8, !tbaa !211
  %1334 = ptrtoint ptr %1333 to i64
  %1335 = icmp eq ptr %1333, null
  br i1 %1335, label %1394, label %1336

1336:                                             ; preds = %1330
  %1337 = load ptr, ptr %1333, align 8, !tbaa !81
  %1338 = getelementptr inbounds %struct.xpvcv, ptr %1337, i64 0, i32 12
  %1339 = load i32, ptr %1338, align 4, !tbaa !83
  %1340 = and i32 %1339, 128
  %1341 = icmp eq i32 %1340, 0
  br i1 %1341, label %1342, label %1394

1342:                                             ; preds = %1336
  %1343 = load ptr, ptr @PL_main_cv, align 8, !tbaa !69
  %1344 = icmp eq ptr %1333, %1343
  br i1 %1344, label %1394, label %1345

1345:                                             ; preds = %1342
  %1346 = and i32 %1339, 256
  %1347 = icmp eq i32 %1346, 0
  br i1 %1347, label %1348, label %1394

1348:                                             ; preds = %1345
  %1349 = call fastcc ptr @S_CvGV(ptr noundef nonnull %1333) #13
  %1350 = icmp eq ptr %1349, null
  br i1 %1350, label %1394, label %1351

1351:                                             ; preds = %1348
  %1352 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #12
  %1353 = call fastcc ptr @S_CvGV(ptr noundef nonnull %1333) #13
  %1354 = load ptr, ptr %1353, align 8, !tbaa !71
  %1355 = getelementptr inbounds %struct.xpvgv, ptr %1354, i64 0, i32 4
  %1356 = load ptr, ptr %1355, align 8, !tbaa !49
  %1357 = getelementptr inbounds %struct.hek, ptr %1356, i64 0, i32 2
  %1358 = call fastcc ptr @S_CvGV(ptr noundef nonnull %1333) #13
  %1359 = load ptr, ptr %1358, align 8, !tbaa !71
  %1360 = getelementptr inbounds %struct.xpvgv, ptr %1359, i64 0, i32 4
  %1361 = load ptr, ptr %1360, align 8, !tbaa !49
  %1362 = getelementptr inbounds %struct.hek, ptr %1361, i64 0, i32 1
  %1363 = load i32, ptr %1362, align 4, !tbaa !73
  %1364 = sext i32 %1363 to i64
  %1365 = call fastcc ptr @S_CvGV(ptr noundef nonnull %1333) #13
  %1366 = load ptr, ptr %1365, align 8, !tbaa !71
  %1367 = getelementptr inbounds %struct.xpvgv, ptr %1366, i64 0, i32 4
  %1368 = load ptr, ptr %1367, align 8, !tbaa !49
  %1369 = getelementptr inbounds %struct.hek, ptr %1368, i64 0, i32 1
  %1370 = load i32, ptr %1369, align 4, !tbaa !73
  %1371 = mul nsw i32 %1370, 17
  %1372 = add nsw i32 %1371, 1
  %1373 = sext i32 %1372 to i64
  %1374 = call fastcc ptr @S_CvGV(ptr noundef nonnull %1333) #13
  %1375 = load ptr, ptr %1374, align 8, !tbaa !71
  %1376 = getelementptr inbounds %struct.xpvgv, ptr %1375, i64 0, i32 4
  %1377 = load ptr, ptr %1376, align 8, !tbaa !49
  %1378 = getelementptr inbounds %struct.hek, ptr %1377, i64 0, i32 2
  %1379 = call fastcc ptr @S_CvGV(ptr noundef nonnull %1333) #13
  %1380 = load ptr, ptr %1379, align 8, !tbaa !71
  %1381 = getelementptr inbounds %struct.xpvgv, ptr %1380, i64 0, i32 4
  %1382 = load ptr, ptr %1381, align 8, !tbaa !49
  %1383 = getelementptr inbounds %struct.hek, ptr %1382, i64 0, i32 1
  %1384 = load i32, ptr %1383, align 4, !tbaa !73
  %1385 = sext i32 %1384 to i64
  %1386 = getelementptr inbounds i8, ptr %1378, i64 %1385
  %1387 = getelementptr inbounds i8, ptr %1386, i64 1
  %1388 = load i8, ptr %1387, align 1, !tbaa !49
  %1389 = and i8 %1388, 1
  %1390 = zext nneg i8 %1389 to i32
  %1391 = shl nuw nsw i32 %1390, 8
  %1392 = or disjoint i32 %1391, 66560
  %1393 = call ptr @Perl_pv_escape(ptr noundef %1352, ptr noundef nonnull %1357, i64 noundef %1364, i64 noundef %1373, ptr noundef null, i32 noundef %1392) #13
  br label %1394

1394:                                             ; preds = %1336, %1345, %1348, %1351, %1342, %1330
  %1395 = phi ptr [ @.str.377, %1330 ], [ @.str.378, %1336 ], [ @.str.379, %1342 ], [ @.str.380, %1345 ], [ %1393, %1351 ], [ @.str.381, %1348 ]
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.376, i64 noundef %1334, ptr noundef %1395) #13
  %1396 = load ptr, ptr %2, align 8, !tbaa !59
  %1397 = getelementptr inbounds %struct.xpvcv, ptr %1396, i64 0, i32 10
  %1398 = load ptr, ptr %1397, align 8, !tbaa !211
  %1399 = icmp ne ptr %1398, null
  %1400 = icmp slt i32 %3, %4
  %1401 = and i1 %1400, %1399
  br i1 %1401, label %1402, label %1799

1402:                                             ; preds = %1394
  %1403 = getelementptr inbounds %struct.xpvcv, ptr %1396, i64 0, i32 12
  %1404 = load i32, ptr %1403, align 4, !tbaa !83
  %1405 = and i32 %1404, 96
  %1406 = icmp eq i32 %1405, 0
  br i1 %1406, label %1799, label %1407

1407:                                             ; preds = %1402
  %1408 = add nsw i32 %0, 1
  %1409 = add nsw i32 %3, 1
  call void @Perl_do_sv_dump(i32 noundef %1408, ptr noundef %1, ptr noundef nonnull %1398, i32 noundef %1409, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6) #13
  br label %1799

1410:                                             ; preds = %385
  %1411 = load ptr, ptr %2, align 8, !tbaa !59
  %1412 = getelementptr inbounds %struct.xpvlv, ptr %1411, i64 0, i32 9
  %1413 = load i8, ptr %1412, align 8, !tbaa !212
  %1414 = sext i8 %1413 to i32
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.382, i32 noundef %1414) #13
  %1415 = load ptr, ptr %2, align 8, !tbaa !59
  %1416 = getelementptr inbounds %struct.xpvlv, ptr %1415, i64 0, i32 6
  %1417 = load i64, ptr %1416, align 8, !tbaa !49
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.383, i64 noundef %1417) #13
  %1418 = load ptr, ptr %2, align 8, !tbaa !59
  %1419 = getelementptr inbounds %struct.xpvlv, ptr %1418, i64 0, i32 7
  %1420 = load i64, ptr %1419, align 8, !tbaa !214
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.384, i64 noundef %1420) #13
  %1421 = load ptr, ptr %2, align 8, !tbaa !59
  %1422 = getelementptr inbounds %struct.xpvlv, ptr %1421, i64 0, i32 8
  %1423 = load ptr, ptr %1422, align 8, !tbaa !215
  %1424 = ptrtoint ptr %1423 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.385, i64 noundef %1424) #13
  %1425 = load ptr, ptr %2, align 8, !tbaa !59
  %1426 = getelementptr inbounds %struct.xpvlv, ptr %1425, i64 0, i32 10
  %1427 = load i8, ptr %1426, align 1, !tbaa !216
  %1428 = sext i8 %1427 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.386, i64 noundef %1428) #13
  %1429 = load ptr, ptr %2, align 8, !tbaa !59
  %1430 = getelementptr inbounds %struct.xpvlv, ptr %1429, i64 0, i32 9
  %1431 = load i8, ptr %1430, align 8, !tbaa !212
  %1432 = and i8 %1431, -33
  %1433 = icmp eq i8 %1432, 84
  br i1 %1433, label %1439, label %1434

1434:                                             ; preds = %1410
  %1435 = add nsw i32 %0, 1
  %1436 = getelementptr inbounds %struct.xpvlv, ptr %1429, i64 0, i32 8
  %1437 = load ptr, ptr %1436, align 8, !tbaa !215
  %1438 = add nsw i32 %3, 1
  tail call void @Perl_do_sv_dump(i32 noundef %1435, ptr noundef %1, ptr noundef %1437, i32 noundef %1438, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6) #13
  br label %1439

1439:                                             ; preds = %385, %373, %1410, %1434
  %1440 = load i32, ptr %14, align 4, !tbaa !67
  %1441 = and i32 %1440, 255
  %1442 = icmp eq i32 %1441, 8
  %1443 = and i32 %1440, 16826623
  %1444 = icmp eq i32 %1443, 16777226
  %1445 = or i1 %1442, %1444
  br i1 %1445, label %1654, label %1446

1446:                                             ; preds = %1439
  %1447 = and i32 %1440, 49152
  %1448 = icmp eq i32 %1447, 32768
  %1449 = add nsw i32 %1441, -9
  %1450 = icmp ult i32 %1449, 2
  %1451 = and i1 %1448, %1450
  br i1 %1451, label %1452, label %1799

1452:                                             ; preds = %1446
  %1453 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #12
  %1454 = load ptr, ptr %2, align 8, !tbaa !59
  %1455 = getelementptr inbounds %struct.xpvgv, ptr %1454, i64 0, i32 4
  %1456 = load ptr, ptr %1455, align 8, !tbaa !49
  %1457 = getelementptr inbounds %struct.hek, ptr %1456, i64 0, i32 2
  %1458 = getelementptr inbounds %struct.hek, ptr %1456, i64 0, i32 1
  %1459 = load i32, ptr %1458, align 4, !tbaa !73
  %1460 = sext i32 %1459 to i64
  %1461 = mul nsw i32 %1459, 17
  %1462 = add nsw i32 %1461, 1
  %1463 = sext i32 %1462 to i64
  %1464 = getelementptr inbounds i8, ptr %1457, i64 %1460
  %1465 = getelementptr inbounds i8, ptr %1464, i64 1
  %1466 = load i8, ptr %1465, align 1, !tbaa !49
  %1467 = and i8 %1466, 1
  %1468 = zext nneg i8 %1467 to i32
  %1469 = shl nuw nsw i32 %1468, 8
  %1470 = or disjoint i32 %1469, 66560
  %1471 = tail call ptr @Perl_pv_escape(ptr noundef %1453, ptr noundef nonnull %1457, i64 noundef %1460, i64 noundef %1463, ptr noundef null, i32 noundef %1470) #13
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.343, ptr noundef %1471) #13
  %1472 = load ptr, ptr %2, align 8, !tbaa !59
  %1473 = getelementptr inbounds %struct.xpvgv, ptr %1472, i64 0, i32 4
  %1474 = load ptr, ptr %1473, align 8, !tbaa !49
  %1475 = getelementptr inbounds %struct.hek, ptr %1474, i64 0, i32 1
  %1476 = load i32, ptr %1475, align 4, !tbaa !73
  %1477 = sext i32 %1476 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.387, i64 noundef %1477) #13
  %1478 = load ptr, ptr %2, align 8, !tbaa !59
  %1479 = getelementptr inbounds %struct.xpvgv, ptr %1478, i64 0, i32 5
  %1480 = load ptr, ptr %1479, align 8, !tbaa !49
  tail call void @Perl_do_hv_dump(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.388, ptr noundef %1480) #13
  %1481 = load ptr, ptr %2, align 8, !tbaa !59
  %1482 = getelementptr inbounds %struct.xpvgv, ptr %1481, i64 0, i32 2
  %1483 = load i64, ptr %1482, align 8, !tbaa !167
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.372, i64 noundef %1483) #13
  %1484 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %1485 = load ptr, ptr %1484, align 8, !tbaa !49
  %1486 = ptrtoint ptr %1485 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.389, i64 noundef %1486) #13
  %1487 = load ptr, ptr %1484, align 8, !tbaa !49
  %1488 = icmp eq ptr %1487, null
  br i1 %1488, label %1799, label %1489

1489:                                             ; preds = %1452
  %1490 = load ptr, ptr %1487, align 8, !tbaa !217
  %1491 = ptrtoint ptr %1490 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.390, i64 noundef %1491) #13
  %1492 = load ptr, ptr %1484, align 8, !tbaa !49
  %1493 = getelementptr inbounds %struct.gp, ptr %1492, i64 0, i32 4
  %1494 = load i32, ptr %1493, align 4, !tbaa !218
  %1495 = zext i32 %1494 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.147, i64 noundef %1495) #13
  %1496 = load ptr, ptr %1484, align 8, !tbaa !49
  %1497 = getelementptr inbounds %struct.gp, ptr %1496, i64 0, i32 1
  %1498 = load ptr, ptr %1497, align 8, !tbaa !219
  %1499 = ptrtoint ptr %1498 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.391, i64 noundef %1499) #13
  %1500 = load ptr, ptr %1484, align 8, !tbaa !49
  %1501 = getelementptr inbounds %struct.gp, ptr %1500, i64 0, i32 7
  %1502 = load ptr, ptr %1501, align 8, !tbaa !96
  %1503 = ptrtoint ptr %1502 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.392, i64 noundef %1503) #13
  %1504 = load ptr, ptr %1484, align 8, !tbaa !49
  %1505 = getelementptr inbounds %struct.gp, ptr %1504, i64 0, i32 6
  %1506 = load ptr, ptr %1505, align 8, !tbaa !220
  %1507 = ptrtoint ptr %1506 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.393, i64 noundef %1507) #13
  %1508 = load ptr, ptr %1484, align 8, !tbaa !49
  %1509 = getelementptr inbounds %struct.gp, ptr %1508, i64 0, i32 5
  %1510 = load ptr, ptr %1509, align 8, !tbaa !99
  %1511 = ptrtoint ptr %1510 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.394, i64 noundef %1511) #13
  %1512 = load ptr, ptr %1484, align 8, !tbaa !49
  %1513 = getelementptr inbounds %struct.gp, ptr %1512, i64 0, i32 2
  %1514 = load ptr, ptr %1513, align 8, !tbaa !95
  %1515 = ptrtoint ptr %1514 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.395, i64 noundef %1515) #13
  %1516 = load ptr, ptr %1484, align 8, !tbaa !49
  %1517 = getelementptr inbounds %struct.gp, ptr %1516, i64 0, i32 3
  %1518 = load i32, ptr %1517, align 8, !tbaa !93
  %1519 = zext i32 %1518 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.396, i64 noundef %1519) #13
  %1520 = load ptr, ptr %1484, align 8, !tbaa !49
  %1521 = getelementptr inbounds %struct.gp, ptr %1520, i64 0, i32 9
  %1522 = load i32, ptr %1521, align 8
  %1523 = lshr i32 %1522, 31
  %1524 = zext nneg i32 %1523 to i64
  %1525 = icmp sgt i32 %1522, -1
  %1526 = select i1 %1525, ptr @.str, ptr @.str.398
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.397, i64 noundef %1524, ptr noundef nonnull %1526) #13
  %1527 = load ptr, ptr %1484, align 8, !tbaa !49
  %1528 = getelementptr inbounds %struct.gp, ptr %1527, i64 0, i32 9
  %1529 = load i32, ptr %1528, align 8
  %1530 = and i32 %1529, 2147483647
  %1531 = zext nneg i32 %1530 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.399, i64 noundef %1531) #13
  %1532 = load ptr, ptr %1484, align 8, !tbaa !49
  %1533 = getelementptr inbounds %struct.gp, ptr %1532, i64 0, i32 10
  %1534 = load ptr, ptr %1533, align 8, !tbaa !221
  %1535 = icmp eq ptr %1534, null
  %1536 = getelementptr inbounds %struct.hek, ptr %1534, i64 0, i32 2
  %1537 = select i1 %1535, ptr null, ptr %1536
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.400, ptr noundef %1537) #13
  %1538 = load ptr, ptr %1484, align 8, !tbaa !49
  %1539 = getelementptr inbounds %struct.gp, ptr %1538, i64 0, i32 8
  %1540 = load ptr, ptr %1539, align 8, !tbaa !150
  tail call void @Perl_do_gv_dump(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.401, ptr noundef %1540) #13
  br label %1799

1541:                                             ; preds = %373
  %1542 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %1543 = load ptr, ptr %1542, align 8, !tbaa !49
  %1544 = ptrtoint ptr %1543 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.402, i64 noundef %1544) #13
  %1545 = load ptr, ptr %2, align 8, !tbaa !59
  %1546 = getelementptr inbounds %struct.xpvio, ptr %1545, i64 0, i32 5
  %1547 = load ptr, ptr %1546, align 8, !tbaa !222
  %1548 = ptrtoint ptr %1547 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.403, i64 noundef %1548) #13
  %1549 = load ptr, ptr %2, align 8, !tbaa !59
  %1550 = getelementptr inbounds %struct.xpvio, ptr %1549, i64 0, i32 6
  %1551 = load ptr, ptr %1550, align 8, !tbaa !49
  %1552 = ptrtoint ptr %1551 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.404, i64 noundef %1552) #13
  %1553 = load ptr, ptr %2, align 8, !tbaa !59
  %1554 = getelementptr inbounds %struct.xpvio, ptr %1553, i64 0, i32 4
  %1555 = load i64, ptr %1554, align 8, !tbaa !49
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.405, i64 noundef %1555) #13
  %1556 = load ptr, ptr %2, align 8, !tbaa !59
  %1557 = getelementptr inbounds %struct.xpvio, ptr %1556, i64 0, i32 7
  %1558 = load i64, ptr %1557, align 8, !tbaa !223
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.406, i64 noundef %1558) #13
  %1559 = load ptr, ptr %2, align 8, !tbaa !59
  %1560 = getelementptr inbounds %struct.xpvio, ptr %1559, i64 0, i32 8
  %1561 = load i64, ptr %1560, align 8, !tbaa !224
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.407, i64 noundef %1561) #13
  %1562 = load ptr, ptr %2, align 8, !tbaa !59
  %1563 = getelementptr inbounds %struct.xpvio, ptr %1562, i64 0, i32 9
  %1564 = load i64, ptr %1563, align 8, !tbaa !225
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.408, i64 noundef %1564) #13
  %1565 = load ptr, ptr %2, align 8, !tbaa !59
  %1566 = getelementptr inbounds %struct.xpvio, ptr %1565, i64 0, i32 10
  %1567 = load ptr, ptr %1566, align 8, !tbaa !226
  %1568 = icmp eq ptr %1567, null
  br i1 %1568, label %1571, label %1569

1569:                                             ; preds = %1541
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.409, ptr noundef nonnull %1567) #13
  %1570 = load ptr, ptr %2, align 8, !tbaa !59
  br label %1571

1571:                                             ; preds = %1569, %1541
  %1572 = phi ptr [ %1570, %1569 ], [ %1565, %1541 ]
  %1573 = getelementptr inbounds %struct.xpvio, ptr %1572, i64 0, i32 11
  %1574 = load ptr, ptr %1573, align 8, !tbaa !227
  %1575 = icmp eq ptr %1574, null
  br i1 %1575, label %1581, label %1576

1576:                                             ; preds = %1571
  %1577 = getelementptr inbounds %struct.gv, ptr %1574, i64 0, i32 2
  %1578 = load i32, ptr %1577, align 4, !tbaa !92
  %1579 = and i32 %1578, 255
  %1580 = icmp eq i32 %1579, 9
  br i1 %1580, label %1581, label %1582

1581:                                             ; preds = %1576, %1571
  tail call void @Perl_do_gv_dump(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.410, ptr noundef %1574) #13
  br label %1589

1582:                                             ; preds = %1576
  %1583 = ptrtoint ptr %1574 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.411, i64 noundef %1583) #13
  %1584 = add nsw i32 %0, 1
  %1585 = load ptr, ptr %2, align 8, !tbaa !59
  %1586 = getelementptr inbounds %struct.xpvio, ptr %1585, i64 0, i32 11
  %1587 = load ptr, ptr %1586, align 8, !tbaa !227
  %1588 = add nsw i32 %3, 1
  tail call void @Perl_do_sv_dump(i32 noundef %1584, ptr noundef %1, ptr noundef %1587, i32 noundef %1588, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6) #13
  br label %1589

1589:                                             ; preds = %1582, %1581
  %1590 = load ptr, ptr %2, align 8, !tbaa !59
  %1591 = getelementptr inbounds %struct.xpvio, ptr %1590, i64 0, i32 12
  %1592 = load ptr, ptr %1591, align 8, !tbaa !228
  %1593 = icmp eq ptr %1592, null
  br i1 %1593, label %1596, label %1594

1594:                                             ; preds = %1589
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.412, ptr noundef nonnull %1592) #13
  %1595 = load ptr, ptr %2, align 8, !tbaa !59
  br label %1596

1596:                                             ; preds = %1594, %1589
  %1597 = phi ptr [ %1595, %1594 ], [ %1590, %1589 ]
  %1598 = getelementptr inbounds %struct.xpvio, ptr %1597, i64 0, i32 13
  %1599 = load ptr, ptr %1598, align 8, !tbaa !229
  %1600 = icmp eq ptr %1599, null
  br i1 %1600, label %1606, label %1601

1601:                                             ; preds = %1596
  %1602 = getelementptr inbounds %struct.gv, ptr %1599, i64 0, i32 2
  %1603 = load i32, ptr %1602, align 4, !tbaa !92
  %1604 = and i32 %1603, 255
  %1605 = icmp eq i32 %1604, 9
  br i1 %1605, label %1606, label %1607

1606:                                             ; preds = %1601, %1596
  tail call void @Perl_do_gv_dump(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.413, ptr noundef %1599) #13
  br label %1614

1607:                                             ; preds = %1601
  %1608 = ptrtoint ptr %1599 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.414, i64 noundef %1608) #13
  %1609 = add nsw i32 %0, 1
  %1610 = load ptr, ptr %2, align 8, !tbaa !59
  %1611 = getelementptr inbounds %struct.xpvio, ptr %1610, i64 0, i32 13
  %1612 = load ptr, ptr %1611, align 8, !tbaa !229
  %1613 = add nsw i32 %3, 1
  tail call void @Perl_do_sv_dump(i32 noundef %1609, ptr noundef %1, ptr noundef %1612, i32 noundef %1613, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6) #13
  br label %1614

1614:                                             ; preds = %1607, %1606
  %1615 = load ptr, ptr %2, align 8, !tbaa !59
  %1616 = getelementptr inbounds %struct.xpvio, ptr %1615, i64 0, i32 14
  %1617 = load ptr, ptr %1616, align 8, !tbaa !230
  %1618 = icmp eq ptr %1617, null
  br i1 %1618, label %1621, label %1619

1619:                                             ; preds = %1614
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.415, ptr noundef nonnull %1617) #13
  %1620 = load ptr, ptr %2, align 8, !tbaa !59
  br label %1621

1621:                                             ; preds = %1619, %1614
  %1622 = phi ptr [ %1620, %1619 ], [ %1615, %1614 ]
  %1623 = getelementptr inbounds %struct.xpvio, ptr %1622, i64 0, i32 15
  %1624 = load ptr, ptr %1623, align 8, !tbaa !231
  %1625 = icmp eq ptr %1624, null
  br i1 %1625, label %1631, label %1626

1626:                                             ; preds = %1621
  %1627 = getelementptr inbounds %struct.gv, ptr %1624, i64 0, i32 2
  %1628 = load i32, ptr %1627, align 4, !tbaa !92
  %1629 = and i32 %1628, 255
  %1630 = icmp eq i32 %1629, 9
  br i1 %1630, label %1631, label %1632

1631:                                             ; preds = %1626, %1621
  tail call void @Perl_do_gv_dump(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.416, ptr noundef %1624) #13
  br label %1639

1632:                                             ; preds = %1626
  %1633 = ptrtoint ptr %1624 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.417, i64 noundef %1633) #13
  %1634 = add nsw i32 %0, 1
  %1635 = load ptr, ptr %2, align 8, !tbaa !59
  %1636 = getelementptr inbounds %struct.xpvio, ptr %1635, i64 0, i32 15
  %1637 = load ptr, ptr %1636, align 8, !tbaa !231
  %1638 = add nsw i32 %3, 1
  tail call void @Perl_do_sv_dump(i32 noundef %1634, ptr noundef %1, ptr noundef %1637, i32 noundef %1638, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6) #13
  br label %1639

1639:                                             ; preds = %1632, %1631
  %1640 = load ptr, ptr %2, align 8, !tbaa !59
  %1641 = getelementptr inbounds %struct.xpvio, ptr %1640, i64 0, i32 16
  %1642 = load i8, ptr %1641, align 8, !tbaa !232
  %1643 = zext i8 %1642 to i64
  %1644 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %1643
  %1645 = load i32, ptr %1644, align 4, !tbaa !53
  %1646 = and i32 %1645, 16448
  %1647 = icmp eq i32 %1646, 16448
  %1648 = sext i8 %1642 to i32
  %1649 = select i1 %1647, ptr @.str.418, ptr @.str.419
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %1649, i32 noundef %1648) #13
  %1650 = load ptr, ptr %2, align 8, !tbaa !59
  %1651 = getelementptr inbounds %struct.xpvio, ptr %1650, i64 0, i32 17
  %1652 = load i8, ptr %1651, align 1, !tbaa !169
  %1653 = zext i8 %1652 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.372, i64 noundef %1653) #13
  br label %1799

1654:                                             ; preds = %385, %373, %1439
  %1655 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %2) #13
  tail call void @Perl_sv_setpv(ptr noundef nonnull %27, ptr noundef nonnull @.str) #12
  %1656 = getelementptr inbounds %struct.regexp, ptr %1655, i64 0, i32 24
  %1657 = load i16, ptr %1656, align 8
  %1658 = lshr i16 %1657, 4
  %1659 = and i16 %1658, 511
  %1660 = zext nneg i16 %1659 to i32
  tail call fastcc void @S_append_flags(ptr noundef nonnull %27, i32 noundef %1660, ptr noundef nonnull @regexp_extflags_names, ptr noundef nonnull getelementptr inbounds ([23 x %struct.flag_to_name], ptr @regexp_extflags_names, i64 1, i64 0)) #13
  %1661 = load ptr, ptr %27, align 8, !tbaa !59
  %1662 = getelementptr inbounds %struct.xpv, ptr %1661, i64 0, i32 2
  %1663 = load i64, ptr %1662, align 8, !tbaa !62
  %1664 = icmp eq i64 %1663, 0
  %1665 = load ptr, ptr %148, align 8, !tbaa !49
  br i1 %1664, label %1676, label %1666

1666:                                             ; preds = %1654
  %1667 = getelementptr inbounds i8, ptr %1665, i64 %1663
  %1668 = getelementptr inbounds i8, ptr %1667, i64 -1
  %1669 = load i8, ptr %1668, align 1, !tbaa !49
  %1670 = icmp eq i8 %1669, 44
  br i1 %1670, label %1671, label %1676

1671:                                             ; preds = %1666
  %1672 = add i64 %1663, -1
  store i64 %1672, ptr %1662, align 8, !tbaa !62
  %1673 = load ptr, ptr %148, align 8, !tbaa !49
  %1674 = getelementptr inbounds i8, ptr %1673, i64 %1672
  store i8 0, ptr %1674, align 1, !tbaa !49
  %1675 = load ptr, ptr %148, align 8, !tbaa !49
  br label %1676

1676:                                             ; preds = %1671, %1666, %1654
  %1677 = phi ptr [ %1675, %1671 ], [ %1665, %1666 ], [ %1665, %1654 ]
  %1678 = load i16, ptr %1656, align 8
  %1679 = lshr i16 %1678, 4
  %1680 = and i16 %1679, 511
  %1681 = zext nneg i16 %1680 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.420, i64 noundef %1681, ptr noundef %1677) #13
  tail call void @Perl_sv_setpv(ptr noundef nonnull %27, ptr noundef nonnull @.str) #12
  %1682 = getelementptr inbounds %struct.regexp, ptr %1655, i64 0, i32 7
  %1683 = load i32, ptr %1682, align 8, !tbaa !142
  tail call fastcc void @S_append_flags(ptr noundef nonnull %27, i32 noundef %1683, ptr noundef nonnull @regexp_extflags_names, ptr noundef nonnull getelementptr inbounds ([23 x %struct.flag_to_name], ptr @regexp_extflags_names, i64 1, i64 0)) #13
  %1684 = load ptr, ptr %27, align 8, !tbaa !59
  %1685 = getelementptr inbounds %struct.xpv, ptr %1684, i64 0, i32 2
  %1686 = load i64, ptr %1685, align 8, !tbaa !62
  %1687 = icmp eq i64 %1686, 0
  %1688 = load ptr, ptr %148, align 8, !tbaa !49
  br i1 %1687, label %1699, label %1689

1689:                                             ; preds = %1676
  %1690 = getelementptr inbounds i8, ptr %1688, i64 %1686
  %1691 = getelementptr inbounds i8, ptr %1690, i64 -1
  %1692 = load i8, ptr %1691, align 1, !tbaa !49
  %1693 = icmp eq i8 %1692, 44
  br i1 %1693, label %1694, label %1699

1694:                                             ; preds = %1689
  %1695 = add i64 %1686, -1
  store i64 %1695, ptr %1685, align 8, !tbaa !62
  %1696 = load ptr, ptr %148, align 8, !tbaa !49
  %1697 = getelementptr inbounds i8, ptr %1696, i64 %1695
  store i8 0, ptr %1697, align 1, !tbaa !49
  %1698 = load ptr, ptr %148, align 8, !tbaa !49
  br label %1699

1699:                                             ; preds = %1694, %1689, %1676
  %1700 = phi ptr [ %1698, %1694 ], [ %1688, %1689 ], [ %1688, %1676 ]
  %1701 = load i32, ptr %1682, align 8, !tbaa !142
  %1702 = zext i32 %1701 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.421, i64 noundef %1702, ptr noundef %1700) #13
  %1703 = getelementptr inbounds %struct.regexp, ptr %1655, i64 0, i32 4
  %1704 = load ptr, ptr %1703, align 8, !tbaa !233
  %1705 = ptrtoint ptr %1704 to i64
  %1706 = icmp eq ptr %1704, @PL_core_reg_engine
  %1707 = select i1 %1706, ptr @.str.423, ptr @.str.424
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.422, i64 noundef %1705, ptr noundef nonnull %1707) #13
  %1708 = load ptr, ptr %1703, align 8, !tbaa !233
  %1709 = icmp eq ptr %1708, @PL_core_reg_engine
  br i1 %1709, label %1710, label %1732

1710:                                             ; preds = %1699
  tail call void @Perl_sv_setpv(ptr noundef nonnull %27, ptr noundef nonnull @.str) #12
  %1711 = getelementptr inbounds %struct.regexp, ptr %1655, i64 0, i32 13
  %1712 = load i32, ptr %1711, align 4, !tbaa !143
  tail call fastcc void @S_append_flags(ptr noundef nonnull %27, i32 noundef %1712, ptr noundef nonnull @regexp_core_intflags_names, ptr noundef nonnull getelementptr inbounds ([13 x %struct.flag_to_name], ptr @regexp_core_intflags_names, i64 1, i64 0)) #13
  %1713 = load ptr, ptr %27, align 8, !tbaa !59
  %1714 = getelementptr inbounds %struct.xpv, ptr %1713, i64 0, i32 2
  %1715 = load i64, ptr %1714, align 8, !tbaa !62
  %1716 = icmp eq i64 %1715, 0
  %1717 = load ptr, ptr %148, align 8, !tbaa !49
  br i1 %1716, label %1728, label %1718

1718:                                             ; preds = %1710
  %1719 = getelementptr inbounds i8, ptr %1717, i64 %1715
  %1720 = getelementptr inbounds i8, ptr %1719, i64 -1
  %1721 = load i8, ptr %1720, align 1, !tbaa !49
  %1722 = icmp eq i8 %1721, 44
  br i1 %1722, label %1723, label %1728

1723:                                             ; preds = %1718
  %1724 = add i64 %1715, -1
  store i64 %1724, ptr %1714, align 8, !tbaa !62
  %1725 = load ptr, ptr %148, align 8, !tbaa !49
  %1726 = getelementptr inbounds i8, ptr %1725, i64 %1724
  store i8 0, ptr %1726, align 1, !tbaa !49
  %1727 = load ptr, ptr %148, align 8, !tbaa !49
  br label %1728

1728:                                             ; preds = %1723, %1718, %1710
  %1729 = phi ptr [ %1727, %1723 ], [ %1717, %1718 ], [ %1717, %1710 ]
  %1730 = load i32, ptr %1711, align 4, !tbaa !143
  %1731 = zext i32 %1730 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.425, i64 noundef %1731, ptr noundef %1729) #13
  br label %1736

1732:                                             ; preds = %1699
  %1733 = getelementptr inbounds %struct.regexp, ptr %1655, i64 0, i32 13
  %1734 = load i32, ptr %1733, align 4, !tbaa !143
  %1735 = zext i32 %1734 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.426, i64 noundef %1735) #13
  br label %1736

1736:                                             ; preds = %1732, %1728
  %1737 = getelementptr inbounds %struct.regexp, ptr %1655, i64 0, i32 12
  %1738 = load i32, ptr %1737, align 8, !tbaa !234
  %1739 = zext i32 %1738 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.427, i64 noundef %1739) #13
  %1740 = getelementptr inbounds %struct.regexp, ptr %1655, i64 0, i32 15
  %1741 = load i32, ptr %1740, align 8, !tbaa !235
  %1742 = zext i32 %1741 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.428, i64 noundef %1742) #13
  %1743 = getelementptr inbounds %struct.regexp, ptr %1655, i64 0, i32 16
  %1744 = load i32, ptr %1743, align 4, !tbaa !236
  %1745 = zext i32 %1744 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.429, i64 noundef %1745) #13
  %1746 = getelementptr inbounds %struct.regexp, ptr %1655, i64 0, i32 8
  %1747 = load i64, ptr %1746, align 8, !tbaa !237
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.430, i64 noundef %1747) #13
  %1748 = getelementptr inbounds %struct.regexp, ptr %1655, i64 0, i32 9
  %1749 = load i64, ptr %1748, align 8, !tbaa !238
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.431, i64 noundef %1749) #13
  %1750 = getelementptr inbounds %struct.regexp, ptr %1655, i64 0, i32 10
  %1751 = load i64, ptr %1750, align 8, !tbaa !239
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.432, i64 noundef %1751) #13
  %1752 = load i16, ptr %1656, align 8
  %1753 = and i16 %1752, 15
  %1754 = zext nneg i16 %1753 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.433, i64 noundef %1754) #13
  %1755 = getelementptr inbounds %struct.regexp, ptr %1655, i64 0, i32 20
  %1756 = load i64, ptr %1755, align 8, !tbaa !240
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.434, i64 noundef %1756) #13
  %1757 = getelementptr inbounds %struct.regexp, ptr %1655, i64 0, i32 21
  %1758 = load i64, ptr %1757, align 8, !tbaa !241
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.435, i64 noundef %1758) #13
  %1759 = getelementptr inbounds %struct.regexp, ptr %1655, i64 0, i32 22
  %1760 = load i64, ptr %1759, align 8, !tbaa !242
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.436, i64 noundef %1760) #13
  %1761 = getelementptr inbounds %struct.regexp, ptr %1655, i64 0, i32 18
  %1762 = load ptr, ptr %1761, align 8, !tbaa !243
  %1763 = icmp eq ptr %1762, null
  br i1 %1763, label %1768, label %1764

1764:                                             ; preds = %1736
  %1765 = ptrtoint ptr %1762 to i64
  %1766 = load i64, ptr %1755, align 8, !tbaa !240
  %1767 = tail call ptr @Perl_pv_display(ptr noundef nonnull %27, ptr noundef nonnull %1762, i64 noundef %1766, i64 noundef 50, i64 noundef %6) #13
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.437, i64 noundef %1765, ptr noundef %1767) #13
  br label %1769

1768:                                             ; preds = %1736
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.438) #13
  br label %1769

1769:                                             ; preds = %1768, %1764
  %1770 = getelementptr inbounds %struct.regexp, ptr %1655, i64 0, i32 5
  %1771 = load ptr, ptr %1770, align 8, !tbaa !244
  %1772 = ptrtoint ptr %1771 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.439, i64 noundef %1772) #13
  %1773 = icmp slt i32 %3, %4
  br i1 %1773, label %1774, label %1780

1774:                                             ; preds = %1769
  %1775 = load ptr, ptr %1770, align 8, !tbaa !244
  %1776 = icmp eq ptr %1775, null
  br i1 %1776, label %1780, label %1777

1777:                                             ; preds = %1774
  %1778 = add nsw i32 %0, 1
  %1779 = add nsw i32 %3, 1
  tail call void @Perl_do_sv_dump(i32 noundef %1778, ptr noundef %1, ptr noundef nonnull %1775, i32 noundef %1779, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6) #13
  br label %1780

1780:                                             ; preds = %1777, %1774, %1769
  %1781 = getelementptr inbounds %struct.regexp, ptr %1655, i64 0, i32 6
  %1782 = load ptr, ptr %1781, align 8, !tbaa !245
  %1783 = ptrtoint ptr %1782 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.440, i64 noundef %1783) #13
  %1784 = getelementptr inbounds %struct.regexp, ptr %1655, i64 0, i32 11
  %1785 = load ptr, ptr %1784, align 8, !tbaa !109
  %1786 = ptrtoint ptr %1785 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.441, i64 noundef %1786) #13
  %1787 = getelementptr inbounds %struct.regexp, ptr %1655, i64 0, i32 14
  %1788 = load ptr, ptr %1787, align 8, !tbaa !246
  %1789 = ptrtoint ptr %1788 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.442, i64 noundef %1789) #13
  %1790 = getelementptr inbounds %struct.regexp, ptr %1655, i64 0, i32 17
  %1791 = load ptr, ptr %1790, align 8, !tbaa !247
  %1792 = ptrtoint ptr %1791 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.443, i64 noundef %1792) #13
  %1793 = getelementptr inbounds %struct.regexp, ptr %1655, i64 0, i32 25
  %1794 = load ptr, ptr %1793, align 8, !tbaa !248
  %1795 = ptrtoint ptr %1794 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.444, i64 noundef %1795) #13
  %1796 = getelementptr inbounds %struct.regexp, ptr %1655, i64 0, i32 19
  %1797 = load ptr, ptr %1796, align 8, !tbaa !249
  %1798 = ptrtoint ptr %1797 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.445, i64 noundef %1798) #13
  br label %1799

1799:                                             ; preds = %1136, %462, %447, %1079, %373, %385, %1402, %1058, %1060, %1452, %1446, %1394, %1407, %441, %444, %1780, %1639, %1489
  call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %27) #13
  br label %1800

1800:                                             ; preds = %1799, %241, %171, %170, %12
  ret void
}

; Function Attrs: optsize
declare i32 @PerlIO_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_magic_dump(ptr noundef %0) local_unnamed_addr #0 !prof !66 {
  %2 = tail call ptr @Perl_PerlIO_stderr() #12
  tail call void @Perl_do_magic_dump(i32 noundef 0, ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false, i64 noundef 0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_do_hv_dump(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !66 {
  %5 = ptrtoint ptr %3 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.197, ptr noundef %2, i64 noundef %5) #13
  %6 = icmp eq ptr %3, null
  br i1 %6, label %99, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.hv, ptr %3, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !130
  %10 = and i32 %9, 33554432
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %99, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.hv, ptr %3, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = load ptr, ptr %3, align 8, !tbaa !88
  %16 = getelementptr inbounds %struct.xpvhv, ptr %15, i64 0, i32 3
  %17 = load i64, ptr %16, align 8, !tbaa !90
  %18 = getelementptr ptr, ptr %14, i64 %17
  %19 = getelementptr ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = icmp eq ptr %20, null
  br i1 %21, label %99, label %22

22:                                               ; preds = %12
  %23 = getelementptr i8, ptr %18, i64 36
  %24 = load i32, ptr %23, align 4, !tbaa !131
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %20, align 8, !tbaa !49
  %28 = icmp eq ptr %27, null
  br i1 %28, label %99, label %29

29:                                               ; preds = %22, %26
  %30 = phi ptr [ %27, %26 ], [ %20, %22 ]
  %31 = getelementptr inbounds %struct.hek, ptr %30, i64 0, i32 2
  %32 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #12
  %33 = load i32, ptr %8, align 4, !tbaa !130
  %34 = and i32 %33, 33554432
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %93, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr %13, align 8, !tbaa !49
  %38 = load ptr, ptr %3, align 8, !tbaa !88
  %39 = getelementptr inbounds %struct.xpvhv, ptr %38, i64 0, i32 3
  %40 = load i64, ptr %39, align 8, !tbaa !90
  %41 = getelementptr ptr, ptr %37, i64 %40
  %42 = getelementptr ptr, ptr %41, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !49
  %44 = icmp eq ptr %43, null
  br i1 %44, label %93, label %45

45:                                               ; preds = %36
  %46 = getelementptr i8, ptr %41, i64 36
  %47 = load i32, ptr %46, align 4, !tbaa !131
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %43, align 8, !tbaa !49
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %45, %49
  %53 = phi ptr [ %50, %49 ], [ %43, %45 ]
  %54 = getelementptr inbounds %struct.hek, ptr %53, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !73
  %56 = sext i32 %55 to i64
  br label %57

57:                                               ; preds = %49, %52
  %58 = phi i64 [ %56, %52 ], [ 0, %49 ]
  %59 = getelementptr i8, ptr %41, i64 36
  %60 = load i32, ptr %59, align 4, !tbaa !131
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr %43, align 8, !tbaa !49
  %64 = icmp eq ptr %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %57, %62
  %66 = phi ptr [ %63, %62 ], [ %43, %57 ]
  %67 = getelementptr inbounds %struct.hek, ptr %66, i64 0, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !73
  %69 = mul nsw i32 %68, 17
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  br label %72

72:                                               ; preds = %62, %65
  %73 = phi i64 [ %71, %65 ], [ 1, %62 ]
  %74 = getelementptr i8, ptr %41, i64 36
  %75 = load i32, ptr %74, align 4, !tbaa !131
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load ptr, ptr %43, align 8, !tbaa !49
  %79 = icmp eq ptr %78, null
  br i1 %79, label %93, label %80

80:                                               ; preds = %77, %72
  %81 = phi ptr [ %43, %72 ], [ %78, %77 ]
  %82 = getelementptr inbounds %struct.hek, ptr %81, i64 0, i32 2
  %83 = getelementptr inbounds %struct.hek, ptr %81, i64 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !73
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, ptr %82, i64 %85
  %87 = getelementptr inbounds i8, ptr %86, i64 1
  %88 = load i8, ptr %87, align 1, !tbaa !49
  %89 = and i8 %88, 1
  %90 = zext nneg i8 %89 to i32
  %91 = shl nuw nsw i32 %90, 8
  %92 = or disjoint i32 %91, 66560
  br label %93

93:                                               ; preds = %36, %29, %77, %80
  %94 = phi i64 [ %73, %80 ], [ %73, %77 ], [ 1, %29 ], [ 1, %36 ]
  %95 = phi i64 [ %58, %80 ], [ %58, %77 ], [ 0, %29 ], [ 0, %36 ]
  %96 = phi i32 [ %92, %80 ], [ 66560, %77 ], [ 66560, %29 ], [ 66560, %36 ]
  %97 = tail call ptr @Perl_pv_escape(ptr noundef %32, ptr noundef nonnull %31, i64 noundef %95, i64 noundef %94, ptr noundef null, i32 noundef %96) #13
  %98 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.198, ptr noundef %97) #12
  br label %101

99:                                               ; preds = %7, %12, %26, %4
  %100 = tail call i32 @PerlIO_putc(ptr noundef %1, i32 noundef 10) #12
  br label %101

101:                                              ; preds = %99, %93
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_do_gv_dump(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !66 {
  %5 = ptrtoint ptr %3 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.197, ptr noundef %2, i64 noundef %5) #13
  %6 = icmp eq ptr %3, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str, i64 noundef 0) #12
  %9 = load ptr, ptr %3, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.xpvgv, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = getelementptr inbounds %struct.hek, ptr %11, i64 0, i32 2
  %13 = getelementptr inbounds %struct.hek, ptr %11, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !73
  %15 = sext i32 %14 to i64
  %16 = mul nsw i32 %14, 17
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %12, i64 %15
  %20 = getelementptr inbounds i8, ptr %19, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !49
  %22 = and i8 %21, 1
  %23 = zext nneg i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 8
  %25 = or disjoint i32 %24, 66560
  %26 = tail call ptr @Perl_pv_escape(ptr noundef %8, ptr noundef nonnull %12, i64 noundef %15, i64 noundef %18, ptr noundef null, i32 noundef %25) #13
  %27 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.198, ptr noundef %26) #12
  br label %30

28:                                               ; preds = %4
  %29 = tail call i32 @PerlIO_putc(ptr noundef %1, i32 noundef 10) #12
  br label %30

30:                                               ; preds = %28, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_do_gvgv_dump(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !66 {
  %5 = ptrtoint ptr %3 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.197, ptr noundef %2, i64 noundef %5) #13
  %6 = icmp eq ptr %3, null
  br i1 %6, label %105, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #12
  %9 = load ptr, ptr %3, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.xpvgv, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.199) #12
  %13 = icmp eq ptr %11, null
  br i1 %13, label %85, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.hv, ptr %11, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !130
  %17 = and i32 %16, 33554432
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %85, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.hv, ptr %11, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !49
  %22 = load ptr, ptr %11, align 8, !tbaa !88
  %23 = getelementptr inbounds %struct.xpvhv, ptr %22, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !90
  %25 = getelementptr ptr, ptr %21, i64 %24
  %26 = getelementptr ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = icmp eq ptr %27, null
  br i1 %28, label %85, label %29

29:                                               ; preds = %19
  %30 = getelementptr i8, ptr %25, i64 36
  %31 = load i32, ptr %30, align 4, !tbaa !131
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.hek, ptr %27, i64 0, i32 2
  %35 = getelementptr inbounds %struct.hek, ptr %27, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !73
  %37 = sext i32 %36 to i64
  %38 = mul nsw i32 %36, 17
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  br label %62

41:                                               ; preds = %29
  %42 = load ptr, ptr %27, align 8, !tbaa !49
  %43 = icmp eq ptr %42, null
  br i1 %43, label %85, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.hek, ptr %42, i64 0, i32 2
  %46 = load ptr, ptr %27, align 8, !tbaa !49
  %47 = icmp eq ptr %46, null
  br i1 %47, label %78, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.hek, ptr %46, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !73
  %51 = sext i32 %50 to i64
  %52 = load ptr, ptr %27, align 8, !tbaa !49
  %53 = icmp eq ptr %52, null
  br i1 %53, label %78, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.hek, ptr %52, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !73
  %57 = mul nsw i32 %56, 17
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = load ptr, ptr %27, align 8, !tbaa !49
  %61 = icmp eq ptr %60, null
  br i1 %61, label %78, label %62

62:                                               ; preds = %33, %54
  %63 = phi i64 [ %59, %54 ], [ %40, %33 ]
  %64 = phi ptr [ %45, %54 ], [ %34, %33 ]
  %65 = phi i64 [ %51, %54 ], [ %37, %33 ]
  %66 = phi ptr [ %60, %54 ], [ %27, %33 ]
  %67 = getelementptr inbounds %struct.hek, ptr %66, i64 0, i32 2
  %68 = getelementptr inbounds %struct.hek, ptr %66, i64 0, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !73
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, ptr %67, i64 %70
  %72 = getelementptr inbounds i8, ptr %71, i64 1
  %73 = load i8, ptr %72, align 1, !tbaa !49
  %74 = and i8 %73, 1
  %75 = zext nneg i8 %74 to i32
  %76 = shl nuw nsw i32 %75, 8
  %77 = or disjoint i32 %76, 66560
  br label %78

78:                                               ; preds = %48, %44, %54, %62
  %79 = phi i64 [ %63, %62 ], [ %59, %54 ], [ 1, %44 ], [ 1, %48 ]
  %80 = phi ptr [ %64, %62 ], [ %45, %54 ], [ %45, %44 ], [ %45, %48 ]
  %81 = phi i64 [ %65, %62 ], [ %51, %54 ], [ 0, %44 ], [ %51, %48 ]
  %82 = phi i32 [ %77, %62 ], [ 66560, %54 ], [ 66560, %44 ], [ 66560, %48 ]
  %83 = tail call ptr @Perl_pv_escape(ptr noundef %8, ptr noundef nonnull %80, i64 noundef %81, i64 noundef %79, ptr noundef null, i32 noundef %82) #13
  %84 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.200, ptr noundef %83) #12
  br label %85

85:                                               ; preds = %14, %19, %41, %78, %7
  %86 = load ptr, ptr %3, align 8, !tbaa !71
  %87 = getelementptr inbounds %struct.xpvgv, ptr %86, i64 0, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !49
  %89 = getelementptr inbounds %struct.hek, ptr %88, i64 0, i32 2
  %90 = getelementptr inbounds %struct.hek, ptr %88, i64 0, i32 1
  %91 = load i32, ptr %90, align 4, !tbaa !73
  %92 = sext i32 %91 to i64
  %93 = mul nsw i32 %91, 17
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, ptr %89, i64 %92
  %97 = getelementptr inbounds i8, ptr %96, i64 1
  %98 = load i8, ptr %97, align 1, !tbaa !49
  %99 = and i8 %98, 1
  %100 = zext nneg i8 %99 to i32
  %101 = shl nuw nsw i32 %100, 8
  %102 = or disjoint i32 %101, 66560
  %103 = tail call ptr @Perl_pv_escape(ptr noundef %8, ptr noundef nonnull %89, i64 noundef %92, i64 noundef %95, ptr noundef null, i32 noundef %102) #13
  %104 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.201, ptr noundef %103) #12
  br label %107

105:                                              ; preds = %4
  %106 = tail call i32 @PerlIO_putc(ptr noundef %1, i32 noundef 10) #12
  br label %107

107:                                              ; preds = %105, %85
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl__invlist_dump(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_av_arylen_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @S_av_top_index(ptr noundef %0) unnamed_addr #0 !prof !66 !PGOFuncName !250 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !67
  %4 = and i32 %3, 8388608
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @Perl_mg_size(ptr noundef nonnull %0) #12
  %8 = sext i32 %7 to i64
  br label %13

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8, !tbaa !251
  %11 = getelementptr inbounds %struct.xpvav, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !175
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i64 [ %8, %6 ], [ %12, %9 ]
  ret i64 %14
}

; Function Attrs: optsize
declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @Perl_hv_placeholders_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: optsize
declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_hv_backreferences_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_hv_iterkeysv(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_cv_const_sv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @CvNAME_HEK(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !66 !PGOFuncName !253 {
  %2 = load ptr, ptr %0, align 8, !tbaa !81
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !83
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @S_CvDEPTHp(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !66 !PGOFuncName !254 {
  %2 = load ptr, ptr %0, align 8, !tbaa !81
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 13
  ret ptr %3
}

; Function Attrs: optsize
declare void @Perl_do_dump_pad(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_sv_setpv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_sv_dump(ptr noundef %0) local_unnamed_addr #0 !prof !66 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !67
  %4 = tail call ptr @Perl_PerlIO_stderr() #12
  %5 = lshr i32 %3, 9
  %6 = and i32 %5, 4
  tail call void @Perl_do_sv_dump(i32 noundef 0, ptr noundef %4, ptr noundef nonnull %0, i32 noundef 0, i32 noundef %6, i1 noundef zeroext false, i64 noundef 0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_runops_debug() local_unnamed_addr #0 !prof !66 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !69
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 22, ptr noundef nonnull @.str.454) #12
  br label %64

4:                                                ; preds = %0, %52
  %5 = phi ptr [ %56, %52 ], [ %1, %0 ]
  %6 = load volatile i32, ptr @PL_debug, align 4, !tbaa !53
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %52, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @PL_watchaddr, align 8, !tbaa !69
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %9, align 8, !tbaa !69
  %13 = load ptr, ptr @PL_watchok, align 8, !tbaa !69
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @Perl_PerlIO_stderr() #12
  %17 = load ptr, ptr @PL_watchaddr, align 8, !tbaa !69
  %18 = ptrtoint ptr %17 to i64
  %19 = load ptr, ptr @PL_watchok, align 8, !tbaa !69
  %20 = ptrtoint ptr %19 to i64
  %21 = load ptr, ptr %17, align 8, !tbaa !69
  %22 = ptrtoint ptr %21 to i64
  %23 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %16, ptr noundef nonnull @.str.455, i64 noundef %18, i64 noundef %20, i64 noundef %22) #12
  br label %24

24:                                               ; preds = %15, %11, %8
  %25 = load volatile i32, ptr @PL_debug, align 4, !tbaa !53
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %24
  %29 = load volatile i32, ptr @PL_debug, align 4, !tbaa !53
  %30 = and i32 %29, 1048576
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @Perl_PerlIO_stderr() #12
  %34 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %33, ptr noundef nonnull @.str.310) #12
  tail call void @Perl_deb_stack_all() #12
  br label %37

35:                                               ; preds = %28
  %36 = tail call i32 @Perl_debstack() #12
  br label %37

37:                                               ; preds = %32, %35, %24
  %38 = load volatile i32, ptr @PL_debug, align 4, !tbaa !53
  %39 = and i32 %38, 8
  %40 = icmp eq i32 %39, 0
  %41 = load ptr, ptr @PL_op, align 8, !tbaa !69
  br i1 %40, label %45, label %42

42:                                               ; preds = %37
  %43 = tail call i32 @Perl_debop(ptr noundef %41) #13
  %44 = load ptr, ptr @PL_op, align 8, !tbaa !69
  br label %45

45:                                               ; preds = %42, %37
  %46 = phi ptr [ %44, %42 ], [ %41, %37 ]
  %47 = load volatile i32, ptr @PL_debug, align 4, !tbaa !53
  %48 = and i32 %47, 64
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  tail call fastcc void @S_debprof(ptr noundef %46) #13
  %51 = load ptr, ptr @PL_op, align 8, !tbaa !69
  br label %52

52:                                               ; preds = %4, %50, %45
  %53 = phi ptr [ %5, %4 ], [ %51, %50 ], [ %46, %45 ]
  %54 = getelementptr inbounds %struct.op, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !255
  %56 = tail call ptr %55() #12
  store ptr %56, ptr @PL_op, align 8, !tbaa !69
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %4, !llvm.loop !256

58:                                               ; preds = %52
  %59 = load i32, ptr @PL_sig_pending, align 4, !tbaa !53
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr @PL_signalhook, align 8, !tbaa !69
  tail call void %62() #12
  br label %63

63:                                               ; preds = %58, %61
  store i8 0, ptr @PL_tainted, align 1, !tbaa !76
  br label %64

64:                                               ; preds = %63, %3
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_deb_stack_all() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @Perl_debstack() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_debop(ptr noundef %0) local_unnamed_addr #0 !prof !66 {
  %2 = load ptr, ptr @PL_curcop, align 8, !tbaa !69
  %3 = getelementptr inbounds %struct.cop, ptr %2, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !129
  %5 = load ptr, ptr @PL_debstash, align 8, !tbaa !69
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load volatile i32, ptr @PL_debug, align 4, !tbaa !53
  %9 = and i32 %8, 524288
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %103, label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.op, ptr %0, i64 0, i32 4
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 511
  %15 = icmp eq i16 %14, 380
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = tail call ptr @Perl_custom_op_get_field(ptr noundef nonnull %0, i32 noundef 1) #12
  br label %22

18:                                               ; preds = %11
  %19 = zext nneg i16 %14 to i64
  %20 = getelementptr inbounds [0 x ptr], ptr @PL_op_name, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !69
  br label %22

22:                                               ; preds = %18, %16
  %23 = phi ptr [ %17, %16 ], [ %21, %18 ]
  tail call void (ptr, ...) @Perl_deb(ptr noundef nonnull @.str.312, ptr noundef %23) #12
  %24 = load i16, ptr %12, align 8
  %25 = and i16 %24, 511
  switch i16 %25, label %100 [
    i16 5, label %26
    i16 341, label %26
    i16 6, label %32
    i16 7, label %32
    i16 9, label %82
    i16 10, label %82
    i16 11, label %82
    i16 390, label %85
    i16 153, label %92
  ]

26:                                               ; preds = %22, %22
  %27 = tail call ptr @Perl_PerlIO_stderr() #12
  %28 = getelementptr inbounds %struct.svop, ptr %0, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !122
  %30 = tail call ptr @Perl_sv_peek(ptr noundef %29) #13
  %31 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %27, ptr noundef nonnull @.str.469, ptr noundef %30) #12
  br label %100

32:                                               ; preds = %22, %22
  %33 = getelementptr inbounds %struct.svop, ptr %0, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !122
  %35 = icmp eq ptr %34, null
  br i1 %35, label %79, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.gv, ptr %34, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !92
  %39 = and i32 %38, 255
  %40 = icmp eq i32 %39, 9
  %41 = tail call ptr @Perl_newSV(i64 noundef 0) #12
  br i1 %40, label %42, label %57

42:                                               ; preds = %36
  %43 = load ptr, ptr %33, align 8, !tbaa !122
  tail call void @Perl_gv_fullname4(ptr noundef %41, ptr noundef %43, ptr noundef null, i1 noundef zeroext true) #12
  %44 = tail call ptr @Perl_PerlIO_stderr() #12
  %45 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !67
  %47 = and i32 %46, 2098176
  %48 = icmp eq i32 %47, 1024
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !49
  br label %54

52:                                               ; preds = %42
  %53 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %41, ptr noundef null, i32 noundef 34) #12
  br label %54

54:                                               ; preds = %52, %49
  %55 = phi ptr [ %51, %49 ], [ %53, %52 ]
  %56 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %44, ptr noundef nonnull @.str.469, ptr noundef %55) #12
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %41) #13
  br label %100

57:                                               ; preds = %36
  %58 = tail call ptr @Perl_PerlIO_stderr() #12
  %59 = load ptr, ptr %33, align 8, !tbaa !122
  %60 = getelementptr inbounds %struct.gv, ptr %59, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !49
  %62 = tail call ptr @Perl_cv_name(ptr noundef %61, ptr noundef %41, i32 noundef 0) #12
  %63 = getelementptr inbounds %struct.sv, ptr %62, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !67
  %65 = and i32 %64, 2098176
  %66 = icmp eq i32 %65, 1024
  %67 = load ptr, ptr %33, align 8, !tbaa !122
  %68 = getelementptr inbounds %struct.gv, ptr %67, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !49
  %70 = tail call ptr @Perl_cv_name(ptr noundef %69, ptr noundef %41, i32 noundef 0) #12
  br i1 %66, label %71, label %74

71:                                               ; preds = %57
  %72 = getelementptr inbounds %struct.sv, ptr %70, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !49
  br label %76

74:                                               ; preds = %57
  %75 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %70, ptr noundef null, i32 noundef 34) #12
  br label %76

76:                                               ; preds = %74, %71
  %77 = phi ptr [ %73, %71 ], [ %75, %74 ]
  %78 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %58, ptr noundef nonnull @.str.470, ptr noundef %77) #12
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %41) #13
  br label %100

79:                                               ; preds = %32
  %80 = tail call ptr @Perl_PerlIO_stderr() #12
  %81 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %80, ptr noundef nonnull @.str.471) #12
  br label %100

82:                                               ; preds = %22, %22, %22
  %83 = getelementptr inbounds %struct.op, ptr %0, i64 0, i32 3
  %84 = load i64, ptr %83, align 8, !tbaa !116
  tail call void @S_deb_padvar(i64 noundef %84, i32 noundef 1, i1 noundef zeroext true) #13
  br label %100

85:                                               ; preds = %22
  %86 = getelementptr inbounds %struct.op, ptr %0, i64 0, i32 3
  %87 = load i64, ptr %86, align 8, !tbaa !116
  %88 = getelementptr inbounds %struct.op, ptr %0, i64 0, i32 6
  %89 = load i8, ptr %88, align 1, !tbaa !118
  %90 = and i8 %89, 127
  %91 = zext nneg i8 %90 to i32
  tail call void @S_deb_padvar(i64 noundef %87, i32 noundef %91, i1 noundef zeroext true) #13
  br label %100

92:                                               ; preds = %22
  %93 = tail call ptr @Perl_PerlIO_stderr() #12
  %94 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !69
  %95 = getelementptr inbounds %struct.stackinfo, ptr %94, i64 0, i32 4
  %96 = load i32, ptr %95, align 8, !tbaa !257
  %97 = tail call fastcc ptr @S_deb_curcv(i32 noundef %96) #13
  %98 = tail call ptr @Perl_multideref_stringify(ptr noundef nonnull %0, ptr noundef %97) #13
  %99 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %93, ptr noundef nonnull @.str.472, ptr noundef %98) #12
  br label %100

100:                                              ; preds = %22, %54, %79, %76, %92, %85, %82, %26
  %101 = tail call ptr @Perl_PerlIO_stderr() #12
  %102 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %101, ptr noundef nonnull @.str.310) #12
  br label %103

103:                                              ; preds = %7, %100
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_debprof(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !66 !PGOFuncName !259 {
  %2 = load volatile i32, ptr @PL_debug, align 4, !tbaa !53
  %3 = and i32 %2, 524288
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load ptr, ptr @PL_curcop, align 8, !tbaa !69
  %7 = getelementptr inbounds %struct.cop, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !129
  %9 = load ptr, ptr @PL_debstash, align 8, !tbaa !69
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %25, label %11

11:                                               ; preds = %5, %1
  %12 = load ptr, ptr @PL_profiledata, align 8, !tbaa !69
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call ptr @Perl_safesyscalloc(i64 noundef 396, i64 noundef 4) #12
  store ptr %15, ptr @PL_profiledata, align 8, !tbaa !69
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi ptr [ %15, %14 ], [ %12, %11 ]
  %18 = getelementptr inbounds %struct.op, ptr %0, i64 0, i32 4
  %19 = load i16, ptr %18, align 8
  %20 = and i16 %19, 511
  %21 = zext nneg i16 %20 to i64
  %22 = getelementptr inbounds i32, ptr %17, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !53
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4, !tbaa !53
  br label %25

25:                                               ; preds = %5, %16
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @S_deb_padvar(i64 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 !prof !66 {
  %4 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct.stackinfo, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !257
  %7 = tail call fastcc ptr @S_deb_curcv(i32 noundef %6) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %7, align 8, !tbaa !81
  %11 = getelementptr inbounds %struct.xpvcv, ptr %10, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.padlist, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !260
  %15 = load ptr, ptr %14, align 8, !tbaa !69
  br label %16

16:                                               ; preds = %9, %3
  %17 = phi ptr [ %15, %9 ], [ null, %3 ]
  br i1 %2, label %18, label %21

18:                                               ; preds = %16
  %19 = tail call ptr @Perl_PerlIO_stderr() #12
  %20 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %19, ptr noundef nonnull @.str.19) #12
  br label %21

21:                                               ; preds = %18, %16
  %22 = icmp sgt i32 %1, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %21
  %24 = icmp eq ptr %17, null
  %25 = add nsw i32 %1, -1
  %26 = zext nneg i32 %25 to i64
  %27 = zext nneg i32 %1 to i64
  br label %28

28:                                               ; preds = %23, %49
  %29 = phi i64 [ 0, %23 ], [ %50, %49 ]
  %30 = add i64 %29, %0
  br i1 %24, label %41, label %31

31:                                               ; preds = %28
  %32 = tail call ptr @Perl_padnamelist_fetch(ptr noundef nonnull %17, i64 noundef %30) #12
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = tail call ptr @Perl_PerlIO_stderr() #12
  %36 = getelementptr inbounds %struct.padname, ptr %32, i64 0, i32 7
  %37 = load i8, ptr %36, align 8, !tbaa !262
  %38 = zext i8 %37 to i64
  %39 = load ptr, ptr %32, align 8, !tbaa !264
  %40 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %35, ptr noundef nonnull @.str.456, i32 noundef 1, i64 noundef %38, ptr noundef %39) #12
  br label %44

41:                                               ; preds = %28, %31
  %42 = tail call ptr @Perl_PerlIO_stderr() #12
  %43 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %42, ptr noundef nonnull @.str.457, i64 noundef %30) #12
  br label %44

44:                                               ; preds = %41, %34
  %45 = icmp ult i64 %29, %26
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = tail call ptr @Perl_PerlIO_stderr() #12
  %48 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %47, ptr noundef nonnull @.str.107) #12
  br label %49

49:                                               ; preds = %44, %46
  %50 = add nuw nsw i64 %29, 1
  %51 = icmp eq i64 %50, %27
  br i1 %51, label %52, label %28, !llvm.loop !265

52:                                               ; preds = %49, %21
  br i1 %2, label %53, label %56

53:                                               ; preds = %52
  %54 = tail call ptr @Perl_PerlIO_stderr() #12
  %55 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %54, ptr noundef nonnull @.str.34) #12
  br label %56

56:                                               ; preds = %53, %52
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @S_deb_curcv(i32 noundef %0) unnamed_addr #8 !prof !66 !PGOFuncName !266 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %47

3:                                                ; preds = %1
  %4 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !69
  br label %5

5:                                                ; preds = %3, %39
  %6 = phi ptr [ %41, %39 ], [ %4, %3 ]
  %7 = phi i32 [ %42, %39 ], [ %0, %3 ]
  %8 = getelementptr inbounds %struct.stackinfo, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !267
  %10 = zext nneg i32 %7 to i64
  %11 = getelementptr inbounds %struct.context, ptr %9, i64 %10
  %12 = load i8, ptr %11, align 8, !tbaa !49
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, 15
  switch i32 %14, label %22 [
    i32 8, label %15
    i32 9, label %15
    i32 10, label %17
  ]

15:                                               ; preds = %5, %5
  %16 = getelementptr inbounds %struct.block, ptr %11, i64 0, i32 8, i32 0, i32 1
  br label %44

17:                                               ; preds = %5
  %18 = and i32 %13, 74
  %19 = icmp eq i32 %18, 74
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.block, ptr %11, i64 0, i32 8, i32 0, i32 4
  br label %44

22:                                               ; preds = %5, %17
  %23 = icmp eq i32 %7, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.stackinfo, ptr %6, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !268
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %44, label %28

28:                                               ; preds = %24
  %29 = and i8 %12, 15
  %30 = icmp eq i8 %29, 0
  %31 = icmp eq i32 %26, 3
  %32 = and i1 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.stackinfo, ptr %6, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !269
  %36 = getelementptr inbounds %struct.stackinfo, ptr %35, i64 0, i32 4
  %37 = load i32, ptr %36, align 8, !tbaa !257
  %38 = add nsw i32 %37, 1
  br label %39

39:                                               ; preds = %22, %33
  %40 = phi i32 [ %7, %22 ], [ %38, %33 ]
  %41 = phi ptr [ %6, %22 ], [ %35, %33 ]
  %42 = add nsw i32 %40, -1
  %43 = icmp sgt i32 %40, 0
  br i1 %43, label %5, label %47, !llvm.loop !270

44:                                               ; preds = %24, %20, %15
  %45 = phi ptr [ %16, %15 ], [ %21, %20 ], [ @PL_main_cv, %24 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !49
  br label %47

47:                                               ; preds = %28, %39, %44, %1
  %48 = phi ptr [ null, %1 ], [ %46, %44 ], [ null, %39 ], [ null, %28 ]
  ret ptr %48
}

; Function Attrs: optsize
declare ptr @Perl_padnamelist_fetch(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_multideref_stringify(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !66 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.unop_aux, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = load i64, ptr %5, align 8, !tbaa !49
  %7 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #12
  br label %8

8:                                                ; preds = %2, %94
  %9 = phi ptr [ %5, %2 ], [ %95, %94 ]
  %10 = phi i64 [ %6, %2 ], [ %100, %94 ]
  %11 = phi i32 [ 0, %2 ], [ %49, %94 ]
  %12 = phi i8 [ 0, %2 ], [ %99, %94 ]
  br label %13

13:                                               ; preds = %17, %8
  %14 = phi ptr [ %9, %8 ], [ %18, %17 ]
  %15 = phi i64 [ %10, %8 ], [ %19, %17 ]
  %16 = and i64 %15, 15
  switch i64 %16, label %90 [
    i64 0, label %17
    i64 12, label %21
    i64 5, label %20
    i64 13, label %26
    i64 6, label %25
    i64 9, label %31
    i64 2, label %30
    i64 10, label %36
    i64 3, label %35
    i64 8, label %41
    i64 11, label %41
    i64 1, label %40
    i64 4, label %40
  ]

17:                                               ; preds = %13
  %18 = getelementptr inbounds %union.UNOP_AUX_item, ptr %14, i64 1
  %19 = load i64, ptr %18, align 8, !tbaa !49
  br label %13

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %13, %20
  %22 = phi i8 [ 0, %20 ], [ 1, %13 ]
  %23 = getelementptr inbounds %union.UNOP_AUX_item, ptr %14, i64 1
  %24 = load i64, ptr %23, align 8, !tbaa !49
  call fastcc void @S_append_padvar(i64 noundef %24, ptr noundef %1, ptr noundef %7) #13
  br label %47

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %13, %25
  %27 = phi i8 [ 0, %25 ], [ 1, %13 ]
  %28 = getelementptr inbounds %union.UNOP_AUX_item, ptr %14, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !49
  call fastcc void @S_append_gv_name(ptr noundef %29, ptr noundef %7) #13
  br label %47

30:                                               ; preds = %13
  br label %31

31:                                               ; preds = %13, %30
  %32 = phi i8 [ 0, %30 ], [ 1, %13 ]
  %33 = getelementptr inbounds %union.UNOP_AUX_item, ptr %14, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !49
  call fastcc void @S_append_gv_name(ptr noundef %34, ptr noundef %7) #13
  br label %41

35:                                               ; preds = %13
  br label %36

36:                                               ; preds = %13, %35
  %37 = phi i8 [ 0, %35 ], [ 1, %13 ]
  %38 = getelementptr inbounds %union.UNOP_AUX_item, ptr %14, i64 1
  %39 = load i64, ptr %38, align 8, !tbaa !49
  call fastcc void @S_append_padvar(i64 noundef %39, ptr noundef %1, ptr noundef %7) #13
  br label %41

40:                                               ; preds = %13, %13
  br label %41

41:                                               ; preds = %13, %13, %40, %31, %36
  %42 = phi i8 [ %37, %36 ], [ %32, %31 ], [ 0, %40 ], [ 1, %13 ], [ 1, %13 ]
  %43 = phi ptr [ %38, %36 ], [ %33, %31 ], [ %14, %40 ], [ %14, %13 ], [ %14, %13 ]
  %44 = add nsw i32 %11, 1
  %45 = icmp eq i32 %11, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  call void @Perl_sv_catpvn_flags(ptr noundef %7, ptr noundef nonnull @.str.458, i64 noundef 2, i32 noundef 0) #12
  br label %47

47:                                               ; preds = %41, %46, %26, %21
  %48 = phi i8 [ %42, %41 ], [ %42, %46 ], [ %27, %26 ], [ %22, %21 ]
  %49 = phi i32 [ %44, %41 ], [ 1, %46 ], [ 1, %26 ], [ 1, %21 ]
  %50 = phi ptr [ %43, %41 ], [ %43, %46 ], [ %28, %26 ], [ %23, %21 ]
  %51 = and i64 %15, 48
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  call void @Perl_sv_catpvn_flags(ptr noundef %7, ptr noundef nonnull @.str.458, i64 noundef 2, i32 noundef 0) #12
  br label %103

54:                                               ; preds = %47
  %55 = and i8 %48, 1
  %56 = icmp eq i8 %55, 0
  %57 = select i1 %56, ptr @.str.460, ptr @.str.459
  call void @Perl_sv_catpvn_flags(ptr noundef %7, ptr noundef nonnull %57, i64 noundef 1, i32 noundef 0) #12
  switch i64 %51, label %94 [
    i64 16, label %58
    i64 32, label %84
    i64 48, label %87
  ]

58:                                               ; preds = %54
  %59 = getelementptr inbounds %union.UNOP_AUX_item, ptr %50, i64 1
  br i1 %56, label %82, label %60

60:                                               ; preds = %58
  %61 = load ptr, ptr %59, align 8, !tbaa !49
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  call void @Perl_sv_catpvn_flags(ptr noundef %7, ptr noundef nonnull @.str.461, i64 noundef 3, i32 noundef 0) #12
  br label %94

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %65 = getelementptr inbounds %struct.sv, ptr %61, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !67
  %67 = and i32 %66, 2098176
  %68 = icmp eq i32 %67, 1024
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load ptr, ptr %61, align 8, !tbaa !59
  %71 = getelementptr inbounds %struct.xpv, ptr %70, i64 0, i32 2
  %72 = load i64, ptr %71, align 8, !tbaa !62
  store i64 %72, ptr %3, align 8, !tbaa !45
  %73 = getelementptr inbounds %struct.sv, ptr %61, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !49
  br label %78

75:                                               ; preds = %64
  %76 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %61, ptr noundef nonnull %3, i32 noundef 2) #12
  %77 = load i64, ptr %3, align 8, !tbaa !45
  br label %78

78:                                               ; preds = %75, %69
  %79 = phi i64 [ %72, %69 ], [ %77, %75 ]
  %80 = phi ptr [ %74, %69 ], [ %76, %75 ]
  %81 = call ptr @Perl_pv_pretty(ptr noundef %7, ptr noundef %80, i64 noundef %79, i64 noundef 30, ptr noundef null, ptr noundef null, i32 noundef 16387) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %94

82:                                               ; preds = %58
  %83 = load i64, ptr %59, align 8, !tbaa !49
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %7, ptr noundef nonnull @.str.462, i64 noundef %83) #12
  br label %94

84:                                               ; preds = %54
  %85 = getelementptr inbounds %union.UNOP_AUX_item, ptr %50, i64 1
  %86 = load i64, ptr %85, align 8, !tbaa !49
  call fastcc void @S_append_padvar(i64 noundef %86, ptr noundef %1, ptr noundef %7) #13
  br label %94

87:                                               ; preds = %54
  %88 = getelementptr inbounds %union.UNOP_AUX_item, ptr %50, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !49
  call fastcc void @S_append_gv_name(ptr noundef %89, ptr noundef %7) #13
  br label %94

90:                                               ; preds = %13
  %91 = call ptr @Perl_PerlIO_stderr() #12
  %92 = trunc i64 %16 to i32
  %93 = call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %91, ptr noundef nonnull @.str.465, i32 noundef %92) #12
  br label %103

94:                                               ; preds = %84, %87, %54, %63, %78, %82
  %95 = phi ptr [ %50, %54 ], [ %88, %87 ], [ %85, %84 ], [ %59, %78 ], [ %59, %63 ], [ %59, %82 ]
  %96 = select i1 %56, ptr @.str.464, ptr @.str.463
  call void @Perl_sv_catpvn_flags(ptr noundef %7, ptr noundef nonnull %96, i64 noundef 1, i32 noundef 0) #12
  %97 = and i64 %15, 64
  %98 = icmp eq i64 %97, 0
  %99 = select i1 %98, i8 %12, i8 1
  %100 = lshr i64 %15, 7
  %101 = and i8 %99, 1
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %8, label %103, !llvm.loop !271

103:                                              ; preds = %94, %53, %90
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_append_padvar(i64 noundef %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !66 !PGOFuncName !272 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 8, !tbaa !81
  %7 = getelementptr inbounds %struct.xpvcv, ptr %6, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.padlist, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !260
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %5
  %14 = tail call ptr @Perl_padnamelist_fetch(ptr noundef nonnull %11, i64 noundef %0) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %2, align 8, !tbaa !59
  %18 = getelementptr inbounds %struct.xpv, ptr %17, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !62
  %20 = getelementptr inbounds %struct.padname, ptr %14, i64 0, i32 7
  %21 = load i8, ptr %20, align 8, !tbaa !262
  %22 = zext i8 %21 to i64
  %23 = add nsw i64 %22, -1
  %24 = load ptr, ptr %14, align 8, !tbaa !264
  %25 = getelementptr inbounds i8, ptr %24, i64 1
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef nonnull %2, ptr noundef nonnull @.str.466, i32 noundef 1, i64 noundef %23, ptr noundef nonnull %25) #12
  %26 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = getelementptr inbounds i8, ptr %27, i64 %19
  store i8 36, ptr %28, align 1, !tbaa !49
  br label %30

29:                                               ; preds = %3, %13, %5
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %2, ptr noundef nonnull @.str.457, i64 noundef %0) #12
  br label %30

30:                                               ; preds = %16, %29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_append_gv_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !66 !PGOFuncName !273 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @Perl_sv_catpvn_flags(ptr noundef %1, ptr noundef nonnull @.str.467, i64 noundef 8, i32 noundef 0) #12
  br label %7

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_newSV(i64 noundef 0) #12
  tail call void @Perl_gv_fullname4(ptr noundef %6, ptr noundef nonnull %0, ptr noundef null, i1 noundef zeroext false) #12
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %1, ptr noundef nonnull @.str.468, i32 noundef 36, ptr noundef %6) #12
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %6) #13
  br label %7

7:                                                ; preds = %5, %4
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_deb(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @Perl_cv_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_watch(ptr noundef %0) local_unnamed_addr #0 !prof !66 {
  store ptr %0, ptr @PL_watchaddr, align 8, !tbaa !69
  %2 = load ptr, ptr %0, align 8, !tbaa !69
  store ptr %2, ptr @PL_watchok, align 8, !tbaa !69
  %3 = tail call ptr @Perl_PerlIO_stderr() #12
  %4 = load ptr, ptr @PL_watchaddr, align 8, !tbaa !69
  %5 = ptrtoint ptr %4 to i64
  %6 = load ptr, ptr @PL_watchok, align 8, !tbaa !69
  %7 = ptrtoint ptr %6 to i64
  %8 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %3, ptr noundef nonnull @.str.473, i64 noundef %5, i64 noundef %7) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_debprofdump() local_unnamed_addr #0 !prof !66 {
  %1 = load ptr, ptr @PL_profiledata, align 8, !tbaa !69
  %2 = icmp eq ptr %1, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %0, %19
  %4 = phi ptr [ %20, %19 ], [ %1, %0 ]
  %5 = phi i64 [ %21, %19 ], [ 0, %0 ]
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @Perl_PerlIO_stderr() #12
  %11 = load ptr, ptr @PL_profiledata, align 8, !tbaa !69
  %12 = getelementptr inbounds i32, ptr %11, i64 %5
  %13 = load i32, ptr %12, align 4, !tbaa !53
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [0 x ptr], ptr @PL_op_name, i64 0, i64 %5
  %16 = load ptr, ptr %15, align 8, !tbaa !69
  %17 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %10, ptr noundef nonnull @.str.474, i64 noundef %14, ptr noundef %16) #12
  %18 = load ptr, ptr @PL_profiledata, align 8, !tbaa !69
  br label %19

19:                                               ; preds = %3, %9
  %20 = phi ptr [ %4, %3 ], [ %18, %9 ]
  %21 = add nuw nsw i64 %5, 1
  %22 = icmp eq i64 %21, 396
  br i1 %22, label %23, label %3, !llvm.loop !274

23:                                               ; preds = %19, %0
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!43}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 43491972207}
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
!23 = !{i32 950000, i64 21523500, i32 170}
!24 = !{i32 990000, i64 1957094, i32 384}
!25 = !{i32 999000, i64 104162, i32 1106}
!26 = !{i32 999900, i64 11423, i32 2014}
!27 = !{i32 999990, i64 757, i32 3020}
!28 = !{i32 999999, i64 64, i32 4611}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42}
!36 = !{ptr @Perl_pv_escape, ptr @Perl_sv_setpvn, i64 1}
!37 = !{ptr @Perl_pv_escape, ptr @Perl_is_utf8_string, i64 1}
!38 = !{ptr @Perl_pv_pretty, ptr @Perl_sv_setpvn, i64 3}
!39 = !{ptr @Perl_pv_pretty, ptr @Perl_sv_catpvf, i64 2}
!40 = !{ptr @Perl_pv_pretty, ptr @Perl_sv_catpv, i64 2}
!41 = !{ptr @Perl_pv_pretty, ptr @Perl_pv_escape, i64 5}
!42 = !{ptr @Perl_pv_pretty, ptr @Perl_sv_catpvn_flags, i64 11}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 4}
!45 = !{!46, !46, i64 0}
!46 = !{!"long", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !{!47, !47, i64 0}
!50 = !{!"branch_weights", i32 5, i32 31}
!51 = !{!"branch_weights", i32 5, i32 1}
!52 = !{!"branch_weights", i32 1, i32 34}
!53 = !{!54, !54, i64 0}
!54 = !{!"int", !47, i64 0}
!55 = !{!"branch_weights", i32 1, i32 0}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"branch_weights", i32 1, i32 5}
!59 = !{!60, !61, i64 0}
!60 = !{!"sv", !61, i64 0, !54, i64 8, !54, i64 12, !47, i64 16}
!61 = !{!"any pointer", !47, i64 0}
!62 = !{!63, !46, i64 16}
!63 = !{!"xpv", !61, i64 0, !47, i64 8, !46, i64 16, !47, i64 24}
!64 = !{!"branch_weights", i32 1, i32 11}
!65 = distinct !{!65, !57}
!66 = !{!"function_entry_count", i64 0}
!67 = !{!60, !54, i64 12}
!68 = !{!60, !54, i64 8}
!69 = !{!61, !61, i64 0}
!70 = distinct !{!70, !57}
!71 = !{!72, !61, i64 0}
!72 = !{!"gv", !61, i64 0, !54, i64 8, !54, i64 12, !47, i64 16}
!73 = !{!74, !54, i64 4}
!74 = !{!"hek", !54, i64 0, !54, i64 4, !47, i64 8}
!75 = distinct !{!75, !57}
!76 = !{!77, !77, i64 0}
!77 = !{!"_Bool", !47, i64 0}
!78 = !{i8 0, i8 2}
!79 = !{}
!80 = !{!"dump.c:S_CvGV"}
!81 = !{!82, !61, i64 0}
!82 = !{!"cv", !61, i64 0, !54, i64 8, !54, i64 12, !47, i64 16}
!83 = !{!84, !54, i64 92}
!84 = !{!"xpvcv", !61, i64 0, !47, i64 8, !46, i64 16, !47, i64 24, !61, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !61, i64 64, !47, i64 72, !61, i64 80, !54, i64 88, !54, i64 92, !54, i64 96}
!85 = !{!"dump.c:S_SvREFCNT_dec_NN"}
!86 = !{!87, !87, i64 0}
!87 = !{!"short", !47, i64 0}
!88 = !{!89, !61, i64 0}
!89 = !{!"hv", !61, i64 0, !54, i64 8, !54, i64 12, !47, i64 16}
!90 = !{!91, !46, i64 24}
!91 = !{!"xpvhv", !61, i64 0, !47, i64 8, !46, i64 16, !46, i64 24}
!92 = !{!72, !54, i64 12}
!93 = !{!94, !54, i64 24}
!94 = !{!"gp", !61, i64 0, !61, i64 8, !61, i64 16, !54, i64 24, !54, i64 28, !61, i64 32, !61, i64 40, !61, i64 48, !61, i64 56, !54, i64 64, !54, i64 67, !61, i64 72}
!95 = !{!94, !61, i64 16}
!96 = !{!94, !61, i64 48}
!97 = !{!98, !61, i64 8}
!98 = !{!"he", !61, i64 0, !61, i64 8, !47, i64 16}
!99 = !{!94, !61, i64 32}
!100 = distinct !{!100, !57}
!101 = distinct !{!101, !57}
!102 = !{!103, !61, i64 56}
!103 = !{!"pmop", !61, i64 0, !61, i64 8, !61, i64 16, !46, i64 24, !54, i64 32, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !47, i64 34, !47, i64 35, !61, i64 40, !61, i64 48, !61, i64 56, !54, i64 64, !47, i64 72, !47, i64 80, !61, i64 88}
!104 = !{!103, !54, i64 64}
!105 = !{!106, !61, i64 0}
!106 = !{!"p5rx", !61, i64 0, !54, i64 8, !54, i64 12, !47, i64 16}
!107 = !{!103, !47, i64 35}
!108 = !{!103, !61, i64 88}
!109 = !{!110, !61, i64 88}
!110 = !{!"regexp", !61, i64 0, !47, i64 8, !46, i64 16, !47, i64 24, !61, i64 32, !61, i64 40, !61, i64 48, !54, i64 56, !46, i64 64, !46, i64 72, !46, i64 80, !61, i64 88, !54, i64 96, !54, i64 100, !61, i64 104, !54, i64 112, !54, i64 116, !61, i64 120, !61, i64 128, !61, i64 136, !46, i64 144, !46, i64 152, !46, i64 160, !46, i64 168, !54, i64 176, !54, i64 176, !61, i64 184}
!111 = !{!112, !61, i64 16}
!112 = !{!"reg_substr_datum", !46, i64 0, !46, i64 8, !61, i64 16, !61, i64 24, !46, i64 32}
!113 = !{!"dump.c:S_ReANY"}
!114 = !{!115, !61, i64 0}
!115 = !{!"op", !61, i64 0, !61, i64 8, !61, i64 16, !46, i64 24, !54, i64 32, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !47, i64 34, !47, i64 35}
!116 = !{!115, !46, i64 24}
!117 = !{!115, !47, i64 34}
!118 = !{!115, !47, i64 35}
!119 = distinct !{!119, !57}
!120 = distinct !{!120, !57}
!121 = distinct !{!121, !57}
!122 = !{!123, !61, i64 40}
!123 = !{!"svop", !61, i64 0, !61, i64 8, !61, i64 16, !46, i64 24, !54, i64 32, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !47, i64 34, !47, i64 35, !61, i64 40}
!124 = !{!125, !61, i64 48}
!125 = !{!"unop_aux", !61, i64 0, !61, i64 8, !61, i64 16, !46, i64 24, !54, i64 32, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !47, i64 34, !47, i64 35, !61, i64 40, !61, i64 48}
!126 = distinct !{!126, !57}
!127 = !{!128, !54, i64 36}
!128 = !{!"cop", !61, i64 0, !61, i64 8, !61, i64 16, !46, i64 24, !54, i64 32, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !47, i64 34, !47, i64 35, !54, i64 36, !61, i64 40, !61, i64 48, !54, i64 56, !54, i64 60, !61, i64 64, !61, i64 72}
!129 = !{!128, !61, i64 40}
!130 = !{!89, !54, i64 12}
!131 = !{!132, !54, i64 28}
!132 = !{!"xpvhv_aux", !47, i64 0, !61, i64 8, !61, i64 16, !54, i64 24, !54, i64 28, !61, i64 32, !54, i64 40, !54, i64 44, !54, i64 48, !54, i64 52}
!133 = !{!128, !54, i64 60}
!134 = !{!135, !61, i64 56}
!135 = !{!"loop", !61, i64 0, !61, i64 8, !61, i64 16, !46, i64 24, !54, i64 32, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !47, i64 34, !47, i64 35, !61, i64 40, !61, i64 48, !61, i64 56, !61, i64 64, !61, i64 72}
!136 = !{!135, !61, i64 64}
!137 = !{!135, !61, i64 72}
!138 = !{!139, !61, i64 48}
!139 = !{!"logop", !61, i64 0, !61, i64 8, !61, i64 16, !46, i64 24, !54, i64 32, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !54, i64 33, !47, i64 34, !47, i64 35, !61, i64 40, !61, i64 48}
!140 = distinct !{!140, !57}
!141 = !{!"dump.c:S_pm_description"}
!142 = !{!110, !54, i64 56}
!143 = !{!110, !54, i64 100}
!144 = !{!"dump.c:S_append_flags"}
!145 = !{!146, !54, i64 0}
!146 = !{!"flag_to_name", !54, i64 0, !61, i64 8}
!147 = !{!146, !61, i64 8}
!148 = distinct !{!148, !57}
!149 = !{!"dump.c:S_sequence_num"}
!150 = !{!94, !61, i64 56}
!151 = !{!152, !61, i64 8}
!152 = !{!"magic", !61, i64 0, !61, i64 8, !87, i64 16, !47, i64 18, !47, i64 19, !46, i64 24, !61, i64 32, !61, i64 40}
!153 = !{!152, !87, i64 16}
!154 = !{!152, !47, i64 18}
!155 = distinct !{!155, !57}
!156 = !{!157, !47, i64 0}
!157 = !{!"", !47, i64 0, !61, i64 8}
!158 = !{!157, !61, i64 8}
!159 = !{!152, !47, i64 19}
!160 = !{!152, !61, i64 32}
!161 = !{!106, !54, i64 12}
!162 = !{!106, !54, i64 8}
!163 = !{!152, !46, i64 24}
!164 = !{!152, !61, i64 40}
!165 = !{!152, !61, i64 0}
!166 = distinct !{!166, !57}
!167 = !{!168, !46, i64 16}
!168 = !{!"xpvgv", !61, i64 0, !47, i64 8, !46, i64 16, !47, i64 24, !47, i64 32, !47, i64 40}
!169 = !{!170, !47, i64 129}
!170 = !{!"xpvio", !61, i64 0, !47, i64 8, !46, i64 16, !47, i64 24, !47, i64 32, !61, i64 40, !47, i64 48, !46, i64 56, !46, i64 64, !46, i64 72, !61, i64 80, !61, i64 88, !61, i64 96, !61, i64 104, !61, i64 112, !61, i64 120, !47, i64 128, !47, i64 129}
!171 = !{!172, !61, i64 0}
!172 = !{!"xpvmg", !61, i64 0, !47, i64 8, !46, i64 16, !47, i64 24, !47, i64 32, !47, i64 40}
!173 = !{!174, !61, i64 32}
!174 = !{!"xpvav", !61, i64 0, !47, i64 8, !46, i64 16, !46, i64 24, !61, i64 32}
!175 = !{!174, !46, i64 16}
!176 = !{!174, !46, i64 24}
!177 = distinct !{!177, !57}
!178 = !{!132, !54, i64 52}
!179 = !{!91, !46, i64 16}
!180 = distinct !{!180, !57}
!181 = distinct !{!181, !57}
!182 = distinct !{!182, !57}
!183 = distinct !{!183, !57}
!184 = distinct !{!184, !57}
!185 = distinct !{!185, !57}
!186 = !{!132, !54, i64 48}
!187 = !{!132, !54, i64 24}
!188 = !{!132, !61, i64 16}
!189 = !{!132, !54, i64 40}
!190 = !{!132, !54, i64 44}
!191 = !{!132, !61, i64 32}
!192 = distinct !{!192, !57}
!193 = !{!194, !61, i64 32}
!194 = !{!"mro_meta", !61, i64 0, !61, i64 8, !61, i64 16, !54, i64 24, !54, i64 28, !61, i64 32, !61, i64 40, !61, i64 48, !54, i64 56}
!195 = !{!196, !61, i64 8}
!196 = !{!"mro_alg", !61, i64 0, !61, i64 8, !87, i64 16, !87, i64 18, !54, i64 20}
!197 = !{!196, !87, i64 16}
!198 = !{!196, !87, i64 18}
!199 = !{!194, !54, i64 24}
!200 = !{!194, !54, i64 28}
!201 = !{!194, !61, i64 0}
!202 = !{!194, !61, i64 8}
!203 = !{!194, !61, i64 16}
!204 = !{!194, !61, i64 40}
!205 = !{!74, !54, i64 0}
!206 = distinct !{!206, !57}
!207 = distinct !{!207, !57}
!208 = !{!84, !61, i64 32}
!209 = !{!84, !61, i64 64}
!210 = !{!84, !54, i64 88}
!211 = !{!84, !61, i64 80}
!212 = !{!213, !47, i64 72}
!213 = !{!"xpvlv", !61, i64 0, !47, i64 8, !46, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !46, i64 56, !61, i64 64, !47, i64 72, !47, i64 73}
!214 = !{!213, !46, i64 56}
!215 = !{!213, !61, i64 64}
!216 = !{!213, !47, i64 73}
!217 = !{!94, !61, i64 0}
!218 = !{!94, !54, i64 28}
!219 = !{!94, !61, i64 8}
!220 = !{!94, !61, i64 40}
!221 = !{!94, !61, i64 72}
!222 = !{!170, !61, i64 40}
!223 = !{!170, !46, i64 56}
!224 = !{!170, !46, i64 64}
!225 = !{!170, !46, i64 72}
!226 = !{!170, !61, i64 80}
!227 = !{!170, !61, i64 88}
!228 = !{!170, !61, i64 96}
!229 = !{!170, !61, i64 104}
!230 = !{!170, !61, i64 112}
!231 = !{!170, !61, i64 120}
!232 = !{!170, !47, i64 128}
!233 = !{!110, !61, i64 32}
!234 = !{!110, !54, i64 96}
!235 = !{!110, !54, i64 112}
!236 = !{!110, !54, i64 116}
!237 = !{!110, !46, i64 64}
!238 = !{!110, !46, i64 72}
!239 = !{!110, !46, i64 80}
!240 = !{!110, !46, i64 144}
!241 = !{!110, !46, i64 152}
!242 = !{!110, !46, i64 160}
!243 = !{!110, !61, i64 128}
!244 = !{!110, !61, i64 40}
!245 = !{!110, !61, i64 48}
!246 = !{!110, !61, i64 104}
!247 = !{!110, !61, i64 120}
!248 = !{!110, !61, i64 184}
!249 = !{!110, !61, i64 136}
!250 = !{!"dump.c:S_av_top_index"}
!251 = !{!252, !61, i64 0}
!252 = !{!"av", !61, i64 0, !54, i64 8, !54, i64 12, !47, i64 16}
!253 = !{!"dump.c:CvNAME_HEK"}
!254 = !{!"dump.c:S_CvDEPTHp"}
!255 = !{!115, !61, i64 16}
!256 = distinct !{!256, !57}
!257 = !{!258, !54, i64 32}
!258 = !{!"stackinfo", !61, i64 0, !61, i64 8, !61, i64 16, !61, i64 24, !54, i64 32, !54, i64 36, !54, i64 40, !54, i64 44}
!259 = !{!"dump.c:S_debprof"}
!260 = !{!261, !61, i64 8}
!261 = !{!"padlist", !46, i64 0, !61, i64 8, !54, i64 16, !54, i64 20}
!262 = !{!263, !47, i64 40}
!263 = !{!"padname", !61, i64 0, !61, i64 8, !47, i64 16, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36, !47, i64 40, !47, i64 41}
!264 = !{!263, !61, i64 0}
!265 = distinct !{!265, !57}
!266 = !{!"dump.c:S_deb_curcv"}
!267 = !{!258, !61, i64 8}
!268 = !{!258, !54, i64 40}
!269 = !{!258, !61, i64 16}
!270 = distinct !{!270, !57}
!271 = distinct !{!271, !57}
!272 = !{!"dump.c:S_append_padvar"}
!273 = !{!"dump.c:S_append_gv_name"}
!274 = distinct !{!274, !57}
