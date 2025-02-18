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
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.8, ptr, %union.anon.9, %union.anon.10, %union.anon.11, ptr, %union.anon.12, ptr, i32, i32, i32 }
%union.anon.8 = type { i64 }
%union.anon.9 = type { ptr }
%union.anon.10 = type { ptr }
%union.anon.11 = type { ptr }
%union.anon.12 = type { ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.2, %union._xivu, %union._xnvu }
%union.anon.2 = type { i64 }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.4, %union._xivu }
%union.anon.4 = type { i64 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.5, %union._xivu }
%union.anon.5 = type { i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.hv = type { ptr, i32, i32, %union.anon.6 }
%union.anon.6 = type { ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.he = type { ptr, ptr, %union.anon.7 }
%union.anon.7 = type { ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.3 }
%union.anon.3 = type { ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.pmop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr, ptr, i32, %union.anon.14, %union.anon.15, ptr }
%union.anon.14 = type { ptr }
%union.anon.15 = type { ptr }
%struct.p5rx = type { ptr, i32, i32, %union.anon.17 }
%union.anon.17 = type { ptr }
%struct.regexp = type { ptr, %union._xmgu, i64, %union.anon.16, ptr, ptr, ptr, i32, i64, i64, i64, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i64, i64, i64, i64, i16, ptr }
%union.anon.16 = type { i64 }
%struct.reg_substr_data = type { i8, [3 x %struct.reg_substr_datum] }
%struct.reg_substr_datum = type { i64, i64, ptr, ptr, i64 }
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
%struct.padname = type { ptr, ptr, %union.anon.24, i32, i32, i32, i32, i8, i8 }
%union.anon.24 = type { ptr }
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
@reltable.Perl_sv_peek = internal unnamed_addr constant [16 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.399 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.400 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.401 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.402 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.403 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.404 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.405 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.406 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.407 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.408 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.409 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.410 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.411 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.412 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.413 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.414 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32)], align 4
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
@.str.36 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@PL_dumpindent = external local_unnamed_addr global i16, align 2
@PL_main_root = external local_unnamed_addr global ptr, align 8
@PL_defstash = external local_unnamed_addr global ptr, align 8
@.str.37 = private unnamed_addr constant [11 x i8] c"\0ASUB %s = \00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"(xsub 0x%lx %d)\0A\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"<undef>\0A\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"\0AFORMAT %s = \00", align 1
@PL_eval_root = external local_unnamed_addr global ptr, align 8
@.str.41 = private unnamed_addr constant [4 x i8] c"{}\0A\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"PMf_PRE %c%.*s%c%s\0A\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c" (RUNTIME)\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"PMf_PRE (RUNTIME)\0A\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"PMf_REPL = \00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"CODE_LIST =\0A\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"CODE_LIST = 0x%lx\0A\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"PMFLAGS = (%s)\0A\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c",CONST\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c",KEEP\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c",GLOBAL\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c",CONTINUE\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c",RETAINT\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c",EVAL\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c",NONDESTRUCT\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c",HAS_CV\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c",CODELIST_PRIVATE\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c",IS_QR\00", align 1
@pmflags_flags_names = dso_local local_unnamed_addr constant [10 x %struct.flag_to_name] [%struct.flag_to_name { i32 4194304, ptr @.str.51 }, %struct.flag_to_name { i32 8388608, ptr @.str.52 }, %struct.flag_to_name { i32 16777216, ptr @.str.53 }, %struct.flag_to_name { i32 33554432, ptr @.str.54 }, %struct.flag_to_name { i32 524288, ptr @.str.55 }, %struct.flag_to_name { i32 67108864, ptr @.str.56 }, %struct.flag_to_name { i32 134217728, ptr @.str.57 }, %struct.flag_to_name { i32 268435456, ptr @.str.58 }, %struct.flag_to_name { i32 536870912, ptr @.str.59 }, %struct.flag_to_name { i32 1073741824, ptr @.str.60 }], align 16
@.str.61 = private unnamed_addr constant [6 x i8] c",KIDS\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c",PARENS\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c",REF\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c",MOD\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c",STACKED\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c",SPECIAL\00", align 1
@op_flags_names = dso_local local_unnamed_addr constant [6 x %struct.flag_to_name] [%struct.flag_to_name { i32 4, ptr @.str.61 }, %struct.flag_to_name { i32 8, ptr @.str.62 }, %struct.flag_to_name { i32 16, ptr @.str.63 }, %struct.flag_to_name { i32 32, ptr @.str.64 }, %struct.flag_to_name { i32 64, ptr @.str.65 }, %struct.flag_to_name { i32 128, ptr @.str.66 }], align 16
@.str.67 = private unnamed_addr constant [6 x i8] c"%-4lu\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"????\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"%*sTYPE = %s  ===> \00", align 1
@PL_op_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.70 = private unnamed_addr constant [7 x i8] c"(%lu)\0A\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"  (was %s)\0A\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"TARG = %ld\0A\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c",VOID\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c",SCALAR\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c",LIST\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c",UNKNOWN\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c",SLABBED\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c",SAVEFREE\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c",STATIC\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c",FOLDED\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c",MORESIB\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"FLAGS = (%s)\0A\00", align 1
@PL_op_private_bitdef_ix = external local_unnamed_addr constant [0 x i16], align 2
@PL_op_private_bitdefs = external local_unnamed_addr constant [0 x i16], align 2
@PL_op_private_bitfields = external local_unnamed_addr constant [0 x i16], align 2
@PL_op_private_labels = external constant [0 x i8], align 1
@.str.85 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"PRIVATE = (%s)\0A\00", align 1
@.str.89 = private unnamed_addr constant [19 x i8] c"PRIVATE = (0x%lx)\0A\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"GV = %s\0A\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"GV = NULL\0A\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"ARGS = \0A\00", align 1
@.str.93 = private unnamed_addr constant [14 x i8] c"%lu => 0x%lx\0A\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"SV = %s\0A\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"LINE = %lu\0A\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"PACKAGE = \22%s\22\0A\00", align 1
@.str.97 = private unnamed_addr constant [14 x i8] c"LABEL = \22%s\22\0A\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"SEQ = %u\0A\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"REDO ===> \00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"DONE\0A\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"NEXT ===> \00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"LAST ===> \00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"OTHER ===> \00", align 1
@.str.104 = private unnamed_addr constant [14 x i8] c"REFCNT = %lu\0A\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"GV_NAME = %s\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"-> %s\00", align 1
@.str.107 = private unnamed_addr constant [17 x i8] c"  MAGIC = 0x%lx\0A\00", align 1
@PL_magic_vtables = external constant [31 x %struct.mgvtbl], align 16
@.str.108 = private unnamed_addr constant [30 x i8] c"    MG_VIRTUAL = &PL_vtbl_%s\0A\00", align 1
@PL_magic_vtable_names = external local_unnamed_addr constant [31 x ptr], align 16
@.str.109 = private unnamed_addr constant [24 x i8] c"    MG_VIRTUAL = 0x%lx\0A\00", align 1
@.str.110 = private unnamed_addr constant [20 x i8] c"    MG_VIRTUAL = 0\0A\00", align 1
@.str.111 = private unnamed_addr constant [21 x i8] c"    MG_PRIVATE = %d\0A\00", align 1
@magic_names = internal unnamed_addr constant [44 x %struct.anon.18] [%struct.anon.18 { i8 0, ptr @.str.421 }, %struct.anon.18 { i8 35, ptr @.str.422 }, %struct.anon.18 { i8 37, ptr @.str.423 }, %struct.anon.18 { i8 42, ptr @.str.424 }, %struct.anon.18 { i8 46, ptr @.str.425 }, %struct.anon.18 { i8 58, ptr @.str.426 }, %struct.anon.18 { i8 60, ptr @.str.427 }, %struct.anon.18 { i8 64, ptr @.str.428 }, %struct.anon.18 { i8 66, ptr @.str.429 }, %struct.anon.18 { i8 99, ptr @.str.430 }, %struct.anon.18 { i8 68, ptr @.str.431 }, %struct.anon.18 { i8 100, ptr @.str.432 }, %struct.anon.18 { i8 69, ptr @.str.433 }, %struct.anon.18 { i8 101, ptr @.str.434 }, %struct.anon.18 { i8 102, ptr @.str.435 }, %struct.anon.18 { i8 103, ptr @.str.436 }, %struct.anon.18 { i8 72, ptr @.str.437 }, %struct.anon.18 { i8 104, ptr @.str.438 }, %struct.anon.18 { i8 73, ptr @.str.439 }, %struct.anon.18 { i8 105, ptr @.str.440 }, %struct.anon.18 { i8 107, ptr @.str.441 }, %struct.anon.18 { i8 76, ptr @.str.442 }, %struct.anon.18 { i8 108, ptr @.str.443 }, %struct.anon.18 { i8 78, ptr @.str.444 }, %struct.anon.18 { i8 110, ptr @.str.445 }, %struct.anon.18 { i8 111, ptr @.str.446 }, %struct.anon.18 { i8 80, ptr @.str.447 }, %struct.anon.18 { i8 112, ptr @.str.448 }, %struct.anon.18 { i8 113, ptr @.str.449 }, %struct.anon.18 { i8 114, ptr @.str.450 }, %struct.anon.18 { i8 83, ptr @.str.451 }, %struct.anon.18 { i8 115, ptr @.str.452 }, %struct.anon.18 { i8 116, ptr @.str.453 }, %struct.anon.18 { i8 85, ptr @.str.454 }, %struct.anon.18 { i8 117, ptr @.str.455 }, %struct.anon.18 { i8 86, ptr @.str.456 }, %struct.anon.18 { i8 118, ptr @.str.457 }, %struct.anon.18 { i8 119, ptr @.str.458 }, %struct.anon.18 { i8 120, ptr @.str.459 }, %struct.anon.18 { i8 121, ptr @.str.460 }, %struct.anon.18 { i8 92, ptr @.str.461 }, %struct.anon.18 { i8 93, ptr @.str.462 }, %struct.anon.18 { i8 126, ptr @.str.463 }, %struct.anon.18 zeroinitializer], align 16
@.str.112 = private unnamed_addr constant [29 x i8] c"    MG_TYPE = PERL_MAGIC_%s\0A\00", align 1
@.str.113 = private unnamed_addr constant [28 x i8] c"    MG_TYPE = UNKNOWN(\\%o)\0A\00", align 1
@.str.114 = private unnamed_addr constant [23 x i8] c"    MG_FLAGS = 0x%02X\0A\00", align 1
@.str.115 = private unnamed_addr constant [18 x i8] c"      TAINTEDDIR\0A\00", align 1
@.str.116 = private unnamed_addr constant [16 x i8] c"      MINMATCH\0A\00", align 1
@.str.117 = private unnamed_addr constant [18 x i8] c"      REFCOUNTED\0A\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"      GSKIP\0A\00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c"      COPY\0A\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"      DUP\0A\00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c"      LOCAL\0A\00", align 1
@.str.122 = private unnamed_addr constant [13 x i8] c"      BYTES\0A\00", align 1
@.str.123 = private unnamed_addr constant [20 x i8] c"    MG_OBJ = 0x%lx\0A\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c"    PAT = %s\0A\00", align 1
@.str.125 = private unnamed_addr constant [18 x i8] c"    REFCNT = %ld\0A\00", align 1
@.str.126 = private unnamed_addr constant [18 x i8] c"    MG_LEN = %ld\0A\00", align 1
@.str.127 = private unnamed_addr constant [19 x i8] c"    MG_PTR = 0x%lx\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.129 = private unnamed_addr constant [15 x i8] c" => HEf_SVKEY\0A\00", align 1
@.str.130 = private unnamed_addr constant [55 x i8] c" ???? - dump.c does not know how to handle this MG_LEN\00", align 1
@.str.131 = private unnamed_addr constant [24 x i8] c"      %2ld: %lu -> %lu\0A\00", align 1
@.str.132 = private unnamed_addr constant [11 x i8] c"%s = 0x%lx\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"\09\22%s\22\0A\00", align 1
@.str.134 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"\22%s\22 :: \22\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c"%s\22\0A\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c"TEMP,\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"OBJECT,\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"GMG,\00", align 1
@.str.140 = private unnamed_addr constant [5 x i8] c"SMG,\00", align 1
@.str.141 = private unnamed_addr constant [5 x i8] c"RMG,\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"IOK,\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"NOK,\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"POK,\00", align 1
@first_sv_flags_names = dso_local local_unnamed_addr constant [8 x %struct.flag_to_name] [%struct.flag_to_name { i32 524288, ptr @.str.137 }, %struct.flag_to_name { i32 1048576, ptr @.str.138 }, %struct.flag_to_name { i32 2097152, ptr @.str.139 }, %struct.flag_to_name { i32 4194304, ptr @.str.140 }, %struct.flag_to_name { i32 8388608, ptr @.str.141 }, %struct.flag_to_name { i32 256, ptr @.str.142 }, %struct.flag_to_name { i32 512, ptr @.str.143 }, %struct.flag_to_name { i32 1024, ptr @.str.144 }], align 16
@.str.145 = private unnamed_addr constant [5 x i8] c"OOK,\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"FAKE,\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"READONLY,\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"PROTECT,\00", align 1
@.str.149 = private unnamed_addr constant [7 x i8] c"BREAK,\00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c"pIOK,\00", align 1
@.str.151 = private unnamed_addr constant [6 x i8] c"pNOK,\00", align 1
@.str.152 = private unnamed_addr constant [6 x i8] c"pPOK,\00", align 1
@second_sv_flags_names = dso_local local_unnamed_addr constant [8 x %struct.flag_to_name] [%struct.flag_to_name { i32 33554432, ptr @.str.145 }, %struct.flag_to_name { i32 16777216, ptr @.str.146 }, %struct.flag_to_name { i32 134217728, ptr @.str.147 }, %struct.flag_to_name { i32 65536, ptr @.str.148 }, %struct.flag_to_name { i32 67108864, ptr @.str.149 }, %struct.flag_to_name { i32 4096, ptr @.str.150 }, %struct.flag_to_name { i32 8192, ptr @.str.151 }, %struct.flag_to_name { i32 16384, ptr @.str.152 }], align 16
@.str.153 = private unnamed_addr constant [6 x i8] c"ANON,\00", align 1
@.str.154 = private unnamed_addr constant [8 x i8] c"UNIQUE,\00", align 1
@.str.155 = private unnamed_addr constant [7 x i8] c"CLONE,\00", align 1
@.str.156 = private unnamed_addr constant [8 x i8] c"CLONED,\00", align 1
@.str.157 = private unnamed_addr constant [7 x i8] c"CONST,\00", align 1
@.str.158 = private unnamed_addr constant [9 x i8] c"NODEBUG,\00", align 1
@.str.159 = private unnamed_addr constant [8 x i8] c"LVALUE,\00", align 1
@.str.160 = private unnamed_addr constant [8 x i8] c"METHOD,\00", align 1
@.str.161 = private unnamed_addr constant [13 x i8] c"WEAKOUTSIDE,\00", align 1
@.str.162 = private unnamed_addr constant [9 x i8] c"CVGV_RC,\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"DYNFILE,\00", align 1
@.str.164 = private unnamed_addr constant [10 x i8] c"AUTOLOAD,\00", align 1
@.str.165 = private unnamed_addr constant [9 x i8] c"HASEVAL,\00", align 1
@.str.166 = private unnamed_addr constant [9 x i8] c"SLABBED,\00", align 1
@.str.167 = private unnamed_addr constant [7 x i8] c"NAMED,\00", align 1
@.str.168 = private unnamed_addr constant [9 x i8] c"LEXICAL,\00", align 1
@.str.169 = private unnamed_addr constant [8 x i8] c"ISXSUB,\00", align 1
@cv_flags_names = dso_local local_unnamed_addr constant [17 x %struct.flag_to_name] [%struct.flag_to_name { i32 128, ptr @.str.153 }, %struct.flag_to_name { i32 256, ptr @.str.154 }, %struct.flag_to_name { i32 32, ptr @.str.155 }, %struct.flag_to_name { i32 64, ptr @.str.156 }, %struct.flag_to_name { i32 4, ptr @.str.157 }, %struct.flag_to_name { i32 512, ptr @.str.158 }, %struct.flag_to_name { i32 2, ptr @.str.159 }, %struct.flag_to_name { i32 1, ptr @.str.160 }, %struct.flag_to_name { i32 16, ptr @.str.161 }, %struct.flag_to_name { i32 1024, ptr @.str.162 }, %struct.flag_to_name { i32 4096, ptr @.str.163 }, %struct.flag_to_name { i32 8192, ptr @.str.164 }, %struct.flag_to_name { i32 16384, ptr @.str.165 }, %struct.flag_to_name { i32 2048, ptr @.str.166 }, %struct.flag_to_name { i32 32768, ptr @.str.167 }, %struct.flag_to_name { i32 65536, ptr @.str.168 }, %struct.flag_to_name { i32 8, ptr @.str.169 }], align 16
@.str.170 = private unnamed_addr constant [11 x i8] c"SHAREKEYS,\00", align 1
@.str.171 = private unnamed_addr constant [9 x i8] c"LAZYDEL,\00", align 1
@.str.172 = private unnamed_addr constant [11 x i8] c"HASKFLAGS,\00", align 1
@.str.173 = private unnamed_addr constant [10 x i8] c"OVERLOAD,\00", align 1
@.str.174 = private unnamed_addr constant [11 x i8] c"CLONEABLE,\00", align 1
@hv_flags_names = dso_local local_unnamed_addr constant [5 x %struct.flag_to_name] [%struct.flag_to_name { i32 536870912, ptr @.str.170 }, %struct.flag_to_name { i32 1073741824, ptr @.str.171 }, %struct.flag_to_name { i32 -2147483648, ptr @.str.172 }, %struct.flag_to_name { i32 268435456, ptr @.str.173 }, %struct.flag_to_name { i32 32768, ptr @.str.174 }], align 16
@.str.175 = private unnamed_addr constant [7 x i8] c"INTRO,\00", align 1
@.str.176 = private unnamed_addr constant [7 x i8] c"MULTI,\00", align 1
@.str.177 = private unnamed_addr constant [10 x i8] c"ASSUMECV,\00", align 1
@gp_flags_names = dso_local local_unnamed_addr constant [3 x %struct.flag_to_name] [%struct.flag_to_name { i32 1, ptr @.str.175 }, %struct.flag_to_name { i32 2, ptr @.str.176 }, %struct.flag_to_name { i32 4, ptr @.str.177 }], align 16
@.str.178 = private unnamed_addr constant [4 x i8] c" SV\00", align 1
@.str.179 = private unnamed_addr constant [4 x i8] c" AV\00", align 1
@.str.180 = private unnamed_addr constant [4 x i8] c" HV\00", align 1
@.str.181 = private unnamed_addr constant [4 x i8] c" CV\00", align 1
@gp_flags_imported_names = dso_local local_unnamed_addr constant [4 x %struct.flag_to_name] [%struct.flag_to_name { i32 16, ptr @.str.178 }, %struct.flag_to_name { i32 32, ptr @.str.179 }, %struct.flag_to_name { i32 64, ptr @.str.180 }, %struct.flag_to_name { i32 128, ptr @.str.181 }], align 16
@.str.182 = private unnamed_addr constant [15 x i8] c"PMf_MULTILINE,\00", align 1
@.str.183 = private unnamed_addr constant [16 x i8] c"PMf_SINGLELINE,\00", align 1
@.str.184 = private unnamed_addr constant [10 x i8] c"PMf_FOLD,\00", align 1
@.str.185 = private unnamed_addr constant [14 x i8] c"PMf_EXTENDED,\00", align 1
@.str.186 = private unnamed_addr constant [19 x i8] c"PMf_EXTENDED_MORE,\00", align 1
@.str.187 = private unnamed_addr constant [14 x i8] c"PMf_KEEPCOPY,\00", align 1
@.str.188 = private unnamed_addr constant [14 x i8] c"PMf_NOCAPURE,\00", align 1
@.str.189 = private unnamed_addr constant [13 x i8] c"IS_ANCHORED,\00", align 1
@.str.190 = private unnamed_addr constant [18 x i8] c"NO_INPLACE_SUBST,\00", align 1
@.str.191 = private unnamed_addr constant [11 x i8] c"EVAL_SEEN,\00", align 1
@.str.192 = private unnamed_addr constant [11 x i8] c"CHECK_ALL,\00", align 1
@.str.193 = private unnamed_addr constant [12 x i8] c"MATCH_UTF8,\00", align 1
@.str.194 = private unnamed_addr constant [17 x i8] c"USE_INTUIT_NOML,\00", align 1
@.str.195 = private unnamed_addr constant [15 x i8] c"USE_INTUIT_ML,\00", align 1
@.str.196 = private unnamed_addr constant [13 x i8] c"INTUIT_TAIL,\00", align 1
@.str.197 = private unnamed_addr constant [7 x i8] c"SPLIT,\00", align 1
@.str.198 = private unnamed_addr constant [11 x i8] c"COPY_DONE,\00", align 1
@.str.199 = private unnamed_addr constant [14 x i8] c"TAINTED_SEEN,\00", align 1
@.str.200 = private unnamed_addr constant [9 x i8] c"TAINTED,\00", align 1
@.str.201 = private unnamed_addr constant [12 x i8] c"START_ONLY,\00", align 1
@.str.202 = private unnamed_addr constant [11 x i8] c"SKIPWHITE,\00", align 1
@.str.203 = private unnamed_addr constant [7 x i8] c"WHITE,\00", align 1
@.str.204 = private unnamed_addr constant [6 x i8] c"NULL,\00", align 1
@regexp_extflags_names = dso_local local_unnamed_addr constant [23 x %struct.flag_to_name] [%struct.flag_to_name { i32 1, ptr @.str.182 }, %struct.flag_to_name { i32 2, ptr @.str.183 }, %struct.flag_to_name { i32 4, ptr @.str.184 }, %struct.flag_to_name { i32 8, ptr @.str.185 }, %struct.flag_to_name { i32 16, ptr @.str.186 }, %struct.flag_to_name { i32 64, ptr @.str.187 }, %struct.flag_to_name { i32 32, ptr @.str.188 }, %struct.flag_to_name { i32 16777216, ptr @.str.189 }, %struct.flag_to_name { i32 65536, ptr @.str.190 }, %struct.flag_to_name { i32 131072, ptr @.str.191 }, %struct.flag_to_name { i32 524288, ptr @.str.192 }, %struct.flag_to_name { i32 1048576, ptr @.str.193 }, %struct.flag_to_name { i32 2097152, ptr @.str.194 }, %struct.flag_to_name { i32 4194304, ptr @.str.195 }, %struct.flag_to_name { i32 8388608, ptr @.str.196 }, %struct.flag_to_name { i32 2048, ptr @.str.197 }, %struct.flag_to_name { i32 33554432, ptr @.str.198 }, %struct.flag_to_name { i32 67108864, ptr @.str.199 }, %struct.flag_to_name { i32 134217728, ptr @.str.200 }, %struct.flag_to_name { i32 268435456, ptr @.str.201 }, %struct.flag_to_name { i32 536870912, ptr @.str.202 }, %struct.flag_to_name { i32 1073741824, ptr @.str.203 }, %struct.flag_to_name { i32 -2147483648, ptr @.str.204 }], align 16
@.str.205 = private unnamed_addr constant [6 x i8] c"SKIP,\00", align 1
@.str.206 = private unnamed_addr constant [10 x i8] c"IMPLICIT,\00", align 1
@.str.207 = private unnamed_addr constant [9 x i8] c"NAUGHTY,\00", align 1
@.str.208 = private unnamed_addr constant [14 x i8] c"VERBARG_SEEN,\00", align 1
@.str.209 = private unnamed_addr constant [15 x i8] c"CUTGROUP_SEEN,\00", align 1
@.str.210 = private unnamed_addr constant [13 x i8] c"USE_RE_EVAL,\00", align 1
@.str.211 = private unnamed_addr constant [8 x i8] c"NOSCAN,\00", align 1
@.str.212 = private unnamed_addr constant [11 x i8] c"CANY_SEEN,\00", align 1
@.str.213 = private unnamed_addr constant [11 x i8] c"GPOS_SEEN,\00", align 1
@.str.214 = private unnamed_addr constant [12 x i8] c"GPOS_FLOAT,\00", align 1
@.str.215 = private unnamed_addr constant [11 x i8] c"ANCH_MBOL,\00", align 1
@.str.216 = private unnamed_addr constant [11 x i8] c"ANCH_SBOL,\00", align 1
@.str.217 = private unnamed_addr constant [11 x i8] c"ANCH_GPOS,\00", align 1
@regexp_core_intflags_names = dso_local local_unnamed_addr constant [13 x %struct.flag_to_name] [%struct.flag_to_name { i32 1, ptr @.str.205 }, %struct.flag_to_name { i32 2, ptr @.str.206 }, %struct.flag_to_name { i32 4, ptr @.str.207 }, %struct.flag_to_name { i32 8, ptr @.str.208 }, %struct.flag_to_name { i32 16, ptr @.str.209 }, %struct.flag_to_name { i32 32, ptr @.str.210 }, %struct.flag_to_name { i32 64, ptr @.str.211 }, %struct.flag_to_name { i32 128, ptr @.str.212 }, %struct.flag_to_name { i32 256, ptr @.str.213 }, %struct.flag_to_name { i32 512, ptr @.str.214 }, %struct.flag_to_name { i32 1024, ptr @.str.215 }, %struct.flag_to_name { i32 2048, ptr @.str.216 }, %struct.flag_to_name { i32 4096, ptr @.str.217 }], align 16
@.str.218 = private unnamed_addr constant [8 x i8] c"SV = 0\0A\00", align 1
@.str.219 = private unnamed_addr constant [50 x i8] c"(0x%lx) at 0x%lx\0A%*s  REFCNT = %ld\0A%*s  FLAGS = (\00", align 1
@.str.220 = private unnamed_addr constant [10 x i8] c"PADSTALE,\00", align 1
@.str.221 = private unnamed_addr constant [8 x i8] c"PADTMP,\00", align 1
@.str.222 = private unnamed_addr constant [5 x i8] c"ROK,\00", align 1
@.str.223 = private unnamed_addr constant [9 x i8] c"WEAKREF,\00", align 1
@.str.224 = private unnamed_addr constant [7 x i8] c"IsCOW,\00", align 1
@.str.225 = private unnamed_addr constant [14 x i8] c"PCS_IMPORTED,\00", align 1
@.str.226 = private unnamed_addr constant [8 x i8] c"SCREAM,\00", align 1
@.str.227 = private unnamed_addr constant [7 x i8] c"IMPORT\00", align 1
@.str.228 = private unnamed_addr constant [5 x i8] c"ALL,\00", align 1
@.str.229 = private unnamed_addr constant [4 x i8] c" ),\00", align 1
@.str.230 = private unnamed_addr constant [8 x i8] c"EVALED,\00", align 1
@.str.231 = private unnamed_addr constant [6 x i8] c"IsUV,\00", align 1
@.str.232 = private unnamed_addr constant [6 x i8] c"TAIL,\00", align 1
@.str.233 = private unnamed_addr constant [7 x i8] c"VALID,\00", align 1
@.str.234 = private unnamed_addr constant [5 x i8] c"UTF8\00", align 1
@.str.235 = private unnamed_addr constant [6 x i8] c"SV = \00", align 1
@.str.236 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@reltable.Perl_do_sv_dump = internal unnamed_addr constant [16 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.464 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.400 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.401 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.402 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.465 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.404 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.405 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.406 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.407 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.466 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.409 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.467 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.468 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.469 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.470 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.471 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32)], align 4
@.str.237 = private unnamed_addr constant [19 x i8] c"UNKNOWN(0x%lx) %s\0A\00", align 1
@.str.238 = private unnamed_addr constant [11 x i8] c"  UV = %lu\00", align 1
@.str.239 = private unnamed_addr constant [11 x i8] c"  IV = %ld\00", align 1
@.str.240 = private unnamed_addr constant [13 x i8] c"  NV = %.*g\0A\00", align 1
@.str.241 = private unnamed_addr constant [14 x i8] c"  RV = 0x%lx\0A\00", align 1
@.str.242 = private unnamed_addr constant [16 x i8] c"  OFFSET = %lu\0A\00", align 1
@.str.243 = private unnamed_addr constant [14 x i8] c"  PV = 0x%lx \00", align 1
@.str.244 = private unnamed_addr constant [10 x i8] c"( %s . ) \00", align 1
@.str.245 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.246 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.247 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.248 = private unnamed_addr constant [13 x i8] c"  CUR = %ld\0A\00", align 1
@.str.249 = private unnamed_addr constant [13 x i8] c"  LEN = %ld\0A\00", align 1
@.str.250 = private unnamed_addr constant [19 x i8] c"  COW_REFCNT = %d\0A\00", align 1
@.str.251 = private unnamed_addr constant [10 x i8] c"  PV = 0\0A\00", align 1
@.str.252 = private unnamed_addr constant [8 x i8] c"  STASH\00", align 1
@.str.253 = private unnamed_addr constant [16 x i8] c"  USEFUL = %ld\0A\00", align 1
@.str.254 = private unnamed_addr constant [16 x i8] c"  ARRAY = 0x%lx\00", align 1
@.str.255 = private unnamed_addr constant [15 x i8] c" (offset=%ld)\0A\00", align 1
@.str.256 = private unnamed_addr constant [17 x i8] c"  ALLOC = 0x%lx\0A\00", align 1
@.str.257 = private unnamed_addr constant [14 x i8] c"  FILL = %ld\0A\00", align 1
@.str.258 = private unnamed_addr constant [13 x i8] c"  MAX = %ld\0A\00", align 1
@.str.259 = private unnamed_addr constant [18 x i8] c"  ARYLEN = 0x%lx\0A\00", align 1
@.str.260 = private unnamed_addr constant [6 x i8] c",REAL\00", align 1
@.str.261 = private unnamed_addr constant [7 x i8] c",REIFY\00", align 1
@.str.262 = private unnamed_addr constant [16 x i8] c"  FLAGS = (%s)\0A\00", align 1
@.str.263 = private unnamed_addr constant [13 x i8] c"Elt No. %ld\0A\00", align 1
@.str.264 = private unnamed_addr constant [19 x i8] c"  AUX_FLAGS = %lu\0A\00", align 1
@.str.265 = private unnamed_addr constant [4 x i8] c"  (\00", align 1
@.str.266 = private unnamed_addr constant [8 x i8] c"%d%s:%d\00", align 1
@.str.267 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.268 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.269 = private unnamed_addr constant [24 x i8] c"  hash quality = %.1f%%\00", align 1
@.str.270 = private unnamed_addr constant [14 x i8] c"  KEYS = %ld\0A\00", align 1
@.str.271 = private unnamed_addr constant [29 x i8] c"  FILL = %lu (cached = %lu)\0A\00", align 1
@.str.272 = private unnamed_addr constant [14 x i8] c"  FILL = %lu\0A\00", align 1
@.str.273 = private unnamed_addr constant [15 x i8] c"  RITER = %ld\0A\00", align 1
@.str.274 = private unnamed_addr constant [17 x i8] c"  EITER = 0x%lx\0A\00", align 1
@.str.275 = private unnamed_addr constant [15 x i8] c"  RAND = 0x%lx\00", align 1
@.str.276 = private unnamed_addr constant [16 x i8] c" (LAST = 0x%lx)\00", align 1
@.str.277 = private unnamed_addr constant [18 x i8] c"  PMROOT = 0x%lx\0A\00", align 1
@.str.278 = private unnamed_addr constant [15 x i8] c"  NAME = \22%s\22\0A\00", align 1
@.str.279 = private unnamed_addr constant [19 x i8] c"  NAMECOUNT = %ld\0A\00", align 1
@.str.280 = private unnamed_addr constant [7 x i8] c", \22%s\22\00", align 1
@.str.281 = private unnamed_addr constant [9 x i8] c", (null)\00", align 1
@.str.282 = private unnamed_addr constant [14 x i8] c"  ENAME = %s\0A\00", align 1
@.str.283 = private unnamed_addr constant [16 x i8] c"  ENAME = \22%s\22\0A\00", align 1
@.str.284 = private unnamed_addr constant [20 x i8] c"  BACKREFS = 0x%lx\0A\00", align 1
@.str.285 = private unnamed_addr constant [28 x i8] c"  MRO_WHICH = \22%s\22 (0x%lx)\0A\00", align 1
@.str.286 = private unnamed_addr constant [21 x i8] c"  CACHE_GEN = 0x%lx\0A\00", align 1
@.str.287 = private unnamed_addr constant [19 x i8] c"  PKG_GEN = 0x%lx\0A\00", align 1
@.str.288 = private unnamed_addr constant [26 x i8] c"  MRO_LINEAR_ALL = 0x%lx\0A\00", align 1
@.str.289 = private unnamed_addr constant [30 x i8] c"  MRO_LINEAR_CURRENT = 0x%lx\0A\00", align 1
@.str.290 = private unnamed_addr constant [26 x i8] c"  MRO_NEXTMETHOD = 0x%lx\0A\00", align 1
@.str.291 = private unnamed_addr constant [15 x i8] c"  ISA = 0x%lx\0A\00", align 1
@.str.292 = private unnamed_addr constant [8 x i8] c"Elt %s \00", align 1
@.str.293 = private unnamed_addr constant [13 x i8] c"[UTF8 \22%s\22] \00", align 1
@.str.294 = private unnamed_addr constant [11 x i8] c"[CURRENT] \00", align 1
@.str.295 = private unnamed_addr constant [14 x i8] c"HASH = 0x%lx\0A\00", align 1
@.str.296 = private unnamed_addr constant [19 x i8] c"  AUTOLOAD = \22%s\22\0A\00", align 1
@.str.297 = private unnamed_addr constant [20 x i8] c"  PROTOTYPE = \22%s\22\0A\00", align 1
@.str.298 = private unnamed_addr constant [13 x i8] c"  COMP_STASH\00", align 1
@.str.299 = private unnamed_addr constant [26 x i8] c"  START = 0x%lx ===> %ld\0A\00", align 1
@.str.300 = private unnamed_addr constant [16 x i8] c"  ROOT = 0x%lx\0A\00", align 1
@.str.301 = private unnamed_addr constant [16 x i8] c"  XSUB = 0x%lx\0A\00", align 1
@.str.302 = private unnamed_addr constant [30 x i8] c"  XSUBANY = 0x%lx (CONST SV)\0A\00", align 1
@.str.303 = private unnamed_addr constant [17 x i8] c"  XSUBANY = %ld\0A\00", align 1
@.str.304 = private unnamed_addr constant [11 x i8] c"  GVGV::GV\00", align 1
@.str.305 = private unnamed_addr constant [15 x i8] c"  FILE = \22%s\22\0A\00", align 1
@.str.306 = private unnamed_addr constant [15 x i8] c"  DEPTH = %ld\0A\00", align 1
@.str.307 = private unnamed_addr constant [17 x i8] c"  FLAGS = 0x%lx\0A\00", align 1
@.str.308 = private unnamed_addr constant [21 x i8] c"  OUTSIDE_SEQ = %lu\0A\00", align 1
@.str.309 = private unnamed_addr constant [19 x i8] c"  PADLIST = 0x%lx\0A\00", align 1
@.str.310 = private unnamed_addr constant [16 x i8] c"  HSCXT = 0x%p\0A\00", align 1
@.str.311 = private unnamed_addr constant [24 x i8] c"  OUTSIDE = 0x%lx (%s)\0A\00", align 1
@.str.312 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.313 = private unnamed_addr constant [5 x i8] c"ANON\00", align 1
@PL_main_cv = external local_unnamed_addr global ptr, align 8
@.str.314 = private unnamed_addr constant [5 x i8] c"MAIN\00", align 1
@.str.315 = private unnamed_addr constant [7 x i8] c"UNIQUE\00", align 1
@.str.316 = private unnamed_addr constant [10 x i8] c"UNDEFINED\00", align 1
@.str.317 = private unnamed_addr constant [13 x i8] c"  TYPE = %c\0A\00", align 1
@.str.318 = private unnamed_addr constant [17 x i8] c"  TARGOFF = %ld\0A\00", align 1
@.str.319 = private unnamed_addr constant [17 x i8] c"  TARGLEN = %ld\0A\00", align 1
@.str.320 = private unnamed_addr constant [16 x i8] c"  TARG = 0x%lx\0A\00", align 1
@.str.321 = private unnamed_addr constant [15 x i8] c"  FLAGS = %ld\0A\00", align 1
@.str.322 = private unnamed_addr constant [17 x i8] c"  NAMELEN = %ld\0A\00", align 1
@.str.323 = private unnamed_addr constant [10 x i8] c"  GvSTASH\00", align 1
@.str.324 = private unnamed_addr constant [14 x i8] c"  GP = 0x%lx\0A\00", align 1
@.str.325 = private unnamed_addr constant [16 x i8] c"    SV = 0x%lx\0A\00", align 1
@.str.326 = private unnamed_addr constant [16 x i8] c"    IO = 0x%lx\0A\00", align 1
@.str.327 = private unnamed_addr constant [20 x i8] c"    FORM = 0x%lx  \0A\00", align 1
@.str.328 = private unnamed_addr constant [16 x i8] c"    AV = 0x%lx\0A\00", align 1
@.str.329 = private unnamed_addr constant [16 x i8] c"    HV = 0x%lx\0A\00", align 1
@.str.330 = private unnamed_addr constant [16 x i8] c"    CV = 0x%lx\0A\00", align 1
@.str.331 = private unnamed_addr constant [19 x i8] c"    CVGEN = 0x%lx\0A\00", align 1
@.str.332 = private unnamed_addr constant [26 x i8] c"    GPFLAGS = 0x%lx (%s)\0A\00", align 1
@.str.333 = private unnamed_addr constant [11 x i8] c"ALIASED_SV\00", align 1
@.str.334 = private unnamed_addr constant [16 x i8] c"    LINE = %ld\0A\00", align 1
@.str.335 = private unnamed_addr constant [17 x i8] c"    FILE = \22%s\22\0A\00", align 1
@.str.336 = private unnamed_addr constant [8 x i8] c"    EGV\00", align 1
@.str.337 = private unnamed_addr constant [15 x i8] c"  IFP = 0x%lx\0A\00", align 1
@.str.338 = private unnamed_addr constant [15 x i8] c"  OFP = 0x%lx\0A\00", align 1
@.str.339 = private unnamed_addr constant [16 x i8] c"  DIRP = 0x%lx\0A\00", align 1
@.str.340 = private unnamed_addr constant [15 x i8] c"  LINES = %ld\0A\00", align 1
@.str.341 = private unnamed_addr constant [14 x i8] c"  PAGE = %ld\0A\00", align 1
@.str.342 = private unnamed_addr constant [18 x i8] c"  PAGE_LEN = %ld\0A\00", align 1
@.str.343 = private unnamed_addr constant [20 x i8] c"  LINES_LEFT = %ld\0A\00", align 1
@.str.344 = private unnamed_addr constant [19 x i8] c"  TOP_NAME = \22%s\22\0A\00", align 1
@.str.345 = private unnamed_addr constant [9 x i8] c"  TOP_GV\00", align 1
@.str.346 = private unnamed_addr constant [18 x i8] c"  TOP_GV = 0x%lx\0A\00", align 1
@.str.347 = private unnamed_addr constant [19 x i8] c"  FMT_NAME = \22%s\22\0A\00", align 1
@.str.348 = private unnamed_addr constant [9 x i8] c"  FMT_GV\00", align 1
@.str.349 = private unnamed_addr constant [18 x i8] c"  FMT_GV = 0x%lx\0A\00", align 1
@.str.350 = private unnamed_addr constant [22 x i8] c"  BOTTOM_NAME = \22%s\22\0A\00", align 1
@.str.351 = private unnamed_addr constant [12 x i8] c"  BOTTOM_GV\00", align 1
@.str.352 = private unnamed_addr constant [21 x i8] c"  BOTTOM_GV = 0x%lx\0A\00", align 1
@.str.353 = private unnamed_addr constant [15 x i8] c"  TYPE = '%c'\0A\00", align 1
@.str.354 = private unnamed_addr constant [16 x i8] c"  TYPE = '\\%o'\0A\00", align 1
@.str.355 = private unnamed_addr constant [26 x i8] c"  COMPFLAGS = 0x%lx (%s)\0A\00", align 1
@.str.356 = private unnamed_addr constant [25 x i8] c"  EXTFLAGS = 0x%lx (%s)\0A\00", align 1
@.str.357 = private unnamed_addr constant [23 x i8] c"  ENGINE = 0x%lx (%s)\0A\00", align 1
@PL_core_reg_engine = external constant %struct.regexp_engine, align 8
@.str.358 = private unnamed_addr constant [9 x i8] c"STANDARD\00", align 1
@.str.359 = private unnamed_addr constant [8 x i8] c"PLUG-IN\00", align 1
@.str.360 = private unnamed_addr constant [25 x i8] c"  INTFLAGS = 0x%lx (%s)\0A\00", align 1
@.str.361 = private unnamed_addr constant [20 x i8] c"  INTFLAGS = 0x%lx\0A\00", align 1
@.str.362 = private unnamed_addr constant [17 x i8] c"  NPARENS = %lu\0A\00", align 1
@.str.363 = private unnamed_addr constant [19 x i8] c"  LASTPAREN = %lu\0A\00", align 1
@.str.364 = private unnamed_addr constant [24 x i8] c"  LASTCLOSEPAREN = %lu\0A\00", align 1
@.str.365 = private unnamed_addr constant [16 x i8] c"  MINLEN = %ld\0A\00", align 1
@.str.366 = private unnamed_addr constant [19 x i8] c"  MINLENRET = %ld\0A\00", align 1
@.str.367 = private unnamed_addr constant [14 x i8] c"  GOFS = %lu\0A\00", align 1
@.str.368 = private unnamed_addr constant [20 x i8] c"  PRE_PREFIX = %lu\0A\00", align 1
@.str.369 = private unnamed_addr constant [16 x i8] c"  SUBLEN = %ld\0A\00", align 1
@.str.370 = private unnamed_addr constant [19 x i8] c"  SUBOFFSET = %ld\0A\00", align 1
@.str.371 = private unnamed_addr constant [20 x i8] c"  SUBCOFFSET = %ld\0A\00", align 1
@.str.372 = private unnamed_addr constant [21 x i8] c"  SUBBEG = 0x%lx %s\0A\00", align 1
@.str.373 = private unnamed_addr constant [16 x i8] c"  SUBBEG = 0x0\0A\00", align 1
@.str.374 = private unnamed_addr constant [21 x i8] c"  MOTHER_RE = 0x%lx\0A\00", align 1
@.str.375 = private unnamed_addr constant [23 x i8] c"  PAREN_NAMES = 0x%lx\0A\00", align 1
@.str.376 = private unnamed_addr constant [19 x i8] c"  SUBSTRS = 0x%lx\0A\00", align 1
@.str.377 = private unnamed_addr constant [20 x i8] c"  PPRIVATE = 0x%lx\0A\00", align 1
@.str.378 = private unnamed_addr constant [16 x i8] c"  OFFS = 0x%lx\0A\00", align 1
@.str.379 = private unnamed_addr constant [21 x i8] c"  QR_ANONCV = 0x%lx\0A\00", align 1
@.str.380 = private unnamed_addr constant [22 x i8] c"  SAVED_COPY = 0x%lx\0A\00", align 1
@PL_op = external local_unnamed_addr global ptr, align 8
@.str.381 = private unnamed_addr constant [15 x i8] c"NULL OP IN RUN\00", align 1
@PL_watchaddr = external local_unnamed_addr global ptr, align 8
@PL_watchok = external local_unnamed_addr global ptr, align 8
@.str.382 = private unnamed_addr constant [38 x i8] c"WARNING: %lx changed from %lx to %lx\0A\00", align 1
@PL_sig_pending = external local_unnamed_addr global i32, align 4
@PL_signalhook = external local_unnamed_addr global ptr, align 8
@PL_tainted = external local_unnamed_addr global i8, align 1
@PL_curstackinfo = external local_unnamed_addr global ptr, align 8
@.str.383 = private unnamed_addr constant [9 x i8] c"%d%lu%4p\00", align 1
@.str.384 = private unnamed_addr constant [6 x i8] c"[%lu]\00", align 1
@.str.385 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.386 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.387 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.388 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.389 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.390 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.391 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.392 = private unnamed_addr constant [12 x i8] c"UNKNOWN(%d)\00", align 1
@PL_curcop = external local_unnamed_addr global ptr, align 8
@PL_debstash = external local_unnamed_addr global ptr, align 8
@.str.393 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.394 = private unnamed_addr constant [13 x i8] c"(cv ref: %s)\00", align 1
@.str.395 = private unnamed_addr constant [7 x i8] c"(NULL)\00", align 1
@.str.396 = private unnamed_addr constant [6 x i8] c"(%-p)\00", align 1
@.str.397 = private unnamed_addr constant [32 x i8] c"WATCHING, %lx is currently %lx\0A\00", align 1
@PL_profiledata = external local_unnamed_addr global ptr, align 8
@.str.398 = private unnamed_addr constant [9 x i8] c"%5lu %s\0A\00", align 1
@.str.399 = private unnamed_addr constant [6 x i8] c"UNDEF\00", align 1
@.str.400 = private unnamed_addr constant [3 x i8] c"IV\00", align 1
@.str.401 = private unnamed_addr constant [3 x i8] c"NV\00", align 1
@.str.402 = private unnamed_addr constant [3 x i8] c"PV\00", align 1
@.str.403 = private unnamed_addr constant [7 x i8] c"INVLST\00", align 1
@.str.404 = private unnamed_addr constant [5 x i8] c"PVIV\00", align 1
@.str.405 = private unnamed_addr constant [5 x i8] c"PVNV\00", align 1
@.str.406 = private unnamed_addr constant [5 x i8] c"PVMG\00", align 1
@.str.407 = private unnamed_addr constant [7 x i8] c"REGEXP\00", align 1
@.str.408 = private unnamed_addr constant [3 x i8] c"GV\00", align 1
@.str.409 = private unnamed_addr constant [5 x i8] c"PVLV\00", align 1
@.str.410 = private unnamed_addr constant [3 x i8] c"AV\00", align 1
@.str.411 = private unnamed_addr constant [3 x i8] c"HV\00", align 1
@.str.412 = private unnamed_addr constant [3 x i8] c"CV\00", align 1
@.str.413 = private unnamed_addr constant [3 x i8] c"FM\00", align 1
@.str.414 = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@.str.415 = private unnamed_addr constant [6 x i8] c",ONCE\00", align 1
@.str.416 = private unnamed_addr constant [6 x i8] c":USED\00", align 1
@.str.417 = private unnamed_addr constant [9 x i8] c",TAINTED\00", align 1
@.str.418 = private unnamed_addr constant [11 x i8] c",SCANFIRST\00", align 1
@.str.419 = private unnamed_addr constant [5 x i8] c",ALL\00", align 1
@.str.420 = private unnamed_addr constant [11 x i8] c",SKIPWHITE\00", align 1
@PL_op_sequence = external local_unnamed_addr global ptr, align 8
@PL_op_seq = external local_unnamed_addr global i64, align 8
@.str.421 = private unnamed_addr constant [7 x i8] c"sv(\\0)\00", align 1
@.str.422 = private unnamed_addr constant [10 x i8] c"arylen(#)\00", align 1
@.str.423 = private unnamed_addr constant [9 x i8] c"rhash(%)\00", align 1
@.str.424 = private unnamed_addr constant [12 x i8] c"debugvar(*)\00", align 1
@.str.425 = private unnamed_addr constant [7 x i8] c"pos(.)\00", align 1
@.str.426 = private unnamed_addr constant [10 x i8] c"symtab(:)\00", align 1
@.str.427 = private unnamed_addr constant [11 x i8] c"backref(<)\00", align 1
@.str.428 = private unnamed_addr constant [12 x i8] c"arylen_p(@)\00", align 1
@.str.429 = private unnamed_addr constant [6 x i8] c"bm(B)\00", align 1
@.str.430 = private unnamed_addr constant [18 x i8] c"overload_table(c)\00", align 1
@.str.431 = private unnamed_addr constant [11 x i8] c"regdata(D)\00", align 1
@.str.432 = private unnamed_addr constant [12 x i8] c"regdatum(d)\00", align 1
@.str.433 = private unnamed_addr constant [7 x i8] c"env(E)\00", align 1
@.str.434 = private unnamed_addr constant [11 x i8] c"envelem(e)\00", align 1
@.str.435 = private unnamed_addr constant [6 x i8] c"fm(f)\00", align 1
@.str.436 = private unnamed_addr constant [16 x i8] c"regex_global(g)\00", align 1
@.str.437 = private unnamed_addr constant [9 x i8] c"hints(H)\00", align 1
@.str.438 = private unnamed_addr constant [13 x i8] c"hintselem(h)\00", align 1
@.str.439 = private unnamed_addr constant [7 x i8] c"isa(I)\00", align 1
@.str.440 = private unnamed_addr constant [11 x i8] c"isaelem(i)\00", align 1
@.str.441 = private unnamed_addr constant [9 x i8] c"nkeys(k)\00", align 1
@.str.442 = private unnamed_addr constant [10 x i8] c"dbfile(L)\00", align 1
@.str.443 = private unnamed_addr constant [10 x i8] c"dbline(l)\00", align 1
@.str.444 = private unnamed_addr constant [10 x i8] c"shared(N)\00", align 1
@.str.445 = private unnamed_addr constant [17 x i8] c"shared_scalar(n)\00", align 1
@.str.446 = private unnamed_addr constant [12 x i8] c"collxfrm(o)\00", align 1
@.str.447 = private unnamed_addr constant [8 x i8] c"tied(P)\00", align 1
@.str.448 = private unnamed_addr constant [12 x i8] c"tiedelem(p)\00", align 1
@.str.449 = private unnamed_addr constant [14 x i8] c"tiedscalar(q)\00", align 1
@.str.450 = private unnamed_addr constant [6 x i8] c"qr(r)\00", align 1
@.str.451 = private unnamed_addr constant [7 x i8] c"sig(S)\00", align 1
@.str.452 = private unnamed_addr constant [11 x i8] c"sigelem(s)\00", align 1
@.str.453 = private unnamed_addr constant [9 x i8] c"taint(t)\00", align 1
@.str.454 = private unnamed_addr constant [8 x i8] c"uvar(U)\00", align 1
@.str.455 = private unnamed_addr constant [13 x i8] c"uvar_elem(u)\00", align 1
@.str.456 = private unnamed_addr constant [11 x i8] c"vstring(V)\00", align 1
@.str.457 = private unnamed_addr constant [7 x i8] c"vec(v)\00", align 1
@.str.458 = private unnamed_addr constant [8 x i8] c"utf8(w)\00", align 1
@.str.459 = private unnamed_addr constant [10 x i8] c"substr(x)\00", align 1
@.str.460 = private unnamed_addr constant [11 x i8] c"defelem(y)\00", align 1
@.str.461 = private unnamed_addr constant [9 x i8] c"lvref(\\)\00", align 1
@.str.462 = private unnamed_addr constant [13 x i8] c"checkcall(])\00", align 1
@.str.463 = private unnamed_addr constant [7 x i8] c"ext(~)\00", align 1
@.str.464 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.465 = private unnamed_addr constant [8 x i8] c"INVLIST\00", align 1
@.str.466 = private unnamed_addr constant [5 x i8] c"PVGV\00", align 1
@.str.467 = private unnamed_addr constant [5 x i8] c"PVAV\00", align 1
@.str.468 = private unnamed_addr constant [5 x i8] c"PVHV\00", align 1
@.str.469 = private unnamed_addr constant [5 x i8] c"PVCV\00", align 1
@.str.470 = private unnamed_addr constant [5 x i8] c"PVFM\00", align 1
@.str.471 = private unnamed_addr constant [5 x i8] c"PVIO\00", align 1
@.str.472 = private unnamed_addr constant [10 x i8] c"[%d%lu%4p\00", align 1
@.str.473 = private unnamed_addr constant [9 x i8] c"<NULLGV>\00", align 1
@.str.474 = private unnamed_addr constant [6 x i8] c"%c%-p\00", align 1
@reltable.Perl_do_op_dump = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.75 to i64), i64 ptrtoint (ptr @reltable.Perl_do_op_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.76 to i64), i64 ptrtoint (ptr @reltable.Perl_do_op_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.77 to i64), i64 ptrtoint (ptr @reltable.Perl_do_op_dump to i64)) to i32)], align 4

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pv_escape(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef writeonly %4, i32 noundef %5) local_unnamed_addr #0 !prof !38 {
  %7 = alloca [32 x i8], align 16
  %8 = alloca i64, align 8
  %9 = and i32 %5, 32768
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i8 92, i8 37, !prof !39
  %12 = and i32 %5, 1
  %13 = icmp eq i32 %12, 0
  %14 = zext nneg i8 %11 to i32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 16 dereferenceable(32) @__const.Perl_pv_escape.octbuf, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  store i64 1, ptr %8, align 8, !tbaa !40
  %15 = lshr i32 %5, 8
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = getelementptr inbounds i8, ptr %1, i64 %2
  store i8 %11, ptr %7, align 16, !tbaa !44
  %19 = icmp ne ptr %0, null
  %20 = and i32 %5, 16384
  %21 = icmp eq i32 %20, 0
  %22 = and i1 %19, %21
  br i1 %22, label %23, label %24, !prof !45

23:                                               ; preds = %6
  tail call void @Perl_sv_setpvn(ptr noundef nonnull %0, ptr noundef nonnull @.str, i64 noundef 0) #9
  br label %24

24:                                               ; preds = %23, %6
  %25 = and i32 %5, 512
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27, !prof !39

27:                                               ; preds = %24
  %28 = tail call zeroext i1 @Perl_is_utf8_string(ptr noundef %1, i64 noundef %2) #9
  %29 = select i1 %28, i8 1, i8 %17
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i8 [ %17, %24 ], [ %29, %27 ]
  %32 = icmp ne i64 %3, 0
  %33 = add i64 %3, -1
  %34 = icmp sgt i64 %2, 0
  br i1 %34, label %35, label %160, !prof !46

35:                                               ; preds = %30
  %36 = icmp eq i8 %31, 0
  br label %37

37:                                               ; preds = %35, %153
  %38 = phi i64 [ 0, %35 ], [ %156, %153 ]
  %39 = phi ptr [ %1, %35 ], [ %155, %153 ]
  br i1 %36, label %47, label %40

40:                                               ; preds = %37
  %41 = ptrtoint ptr %18 to i64
  %42 = ptrtoint ptr %39 to i64
  %43 = sub i64 %41, %42
  %44 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #9
  %45 = select i1 %44, i32 0, i32 -8161
  %46 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %39, i64 noundef %43, ptr noundef nonnull %8, i32 noundef %45) #9
  br label %50

47:                                               ; preds = %37
  %48 = load i8, ptr %39, align 1, !tbaa !44
  %49 = zext i8 %48 to i64
  br label %50

50:                                               ; preds = %47, %40
  %51 = phi i64 [ %46, %40 ], [ %49, %47 ]
  %52 = and i32 %5, 4096
  %53 = icmp eq i32 %52, 0
  %54 = and i32 %5, 66560
  %55 = icmp eq i32 %54, 0
  %56 = trunc i64 %51 to i32
  %57 = icmp ult i64 %51, 256
  %58 = and i1 %53, %57
  %59 = icmp ult i64 %51, 128
  %60 = or i1 %55, %59
  %61 = and i1 %58, %60
  br i1 %61, label %75, label %62

62:                                               ; preds = %50
  %63 = and i32 %5, 2048
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef nonnull %7, i64 noundef 32, ptr noundef nonnull @.str.1, i64 noundef %51) #9
  %67 = sext i32 %66 to i64
  br label %132

68:                                               ; preds = %62
  %69 = and i32 %5, 65536
  %70 = icmp ne i32 %69, 0
  %71 = and i1 %70, %36
  %72 = select i1 %71, ptr @.str.2, ptr @.str.3
  %73 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef nonnull %7, i64 noundef 32, ptr noundef nonnull %72, i32 noundef %14, i64 noundef %51) #9
  %74 = sext i32 %73 to i64
  br label %132

75:                                               ; preds = %50
  %76 = and i32 %5, 8192
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %132

78:                                               ; preds = %75
  %79 = select i1 %13, i32 %14, i32 34
  %80 = icmp eq i32 %79, %56
  %81 = icmp eq i32 %56, %14
  %82 = select i1 %80, i1 true, i1 %81
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %51
  %85 = load i32, ptr %84, align 4, !tbaa !47
  %86 = and i32 %85, 16448
  %87 = icmp eq i32 %86, 16448
  br i1 %87, label %132, label %88

88:                                               ; preds = %83, %78
  %89 = trunc i64 %51 to i8
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
  store i8 %11, ptr %92, align 1, !tbaa !44
  br label %132

93:                                               ; preds = %88
  %94 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 1
  store i8 118, ptr %94, align 1, !tbaa !44
  br label %132

95:                                               ; preds = %88
  %96 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 1
  store i8 116, ptr %96, align 1, !tbaa !44
  br label %132

97:                                               ; preds = %88
  %98 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 1
  store i8 114, ptr %98, align 1, !tbaa !44
  br label %132

99:                                               ; preds = %88
  %100 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 1
  store i8 110, ptr %100, align 1, !tbaa !44
  br label %132

101:                                              ; preds = %88
  %102 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 1
  store i8 102, ptr %102, align 1, !tbaa !44
  br label %132

103:                                              ; preds = %88
  br i1 %13, label %132, label %104

104:                                              ; preds = %103
  %105 = getelementptr inbounds [32 x i8], ptr %7, i64 0, i64 1
  store i8 34, ptr %105, align 1, !tbaa !44
  br label %132

106:                                              ; preds = %88
  %107 = and i32 %5, 65536
  %108 = icmp ne i32 %107, 0
  %109 = icmp ne i32 %56, 0
  %110 = and i1 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = select i1 %36, ptr @.str.2, ptr @.str.3
  %113 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef nonnull %7, i64 noundef 32, ptr noundef nonnull %112, i32 noundef %14, i64 noundef %51) #9
  %114 = sext i32 %113 to i64
  br label %132

115:                                              ; preds = %106
  %116 = load i64, ptr %8, align 8, !tbaa !40
  %117 = getelementptr inbounds i8, ptr %39, i64 %116
  %118 = icmp ult ptr %117, %18
  br i1 %118, label %119, label %129

119:                                              ; preds = %115
  %120 = load i8, ptr %117, align 1, !tbaa !44
  %121 = zext i8 %120 to i64
  %122 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !47
  %124 = and i32 %123, 2
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %119
  %127 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef nonnull %7, i64 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %14, i32 noundef %56) #9
  %128 = sext i32 %127 to i64
  br label %132

129:                                              ; preds = %119, %115
  %130 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef nonnull %7, i64 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %14, i32 noundef %56) #9
  %131 = sext i32 %130 to i64
  br label %132

132:                                              ; preds = %90, %83, %103, %75, %93, %95, %97, %99, %101, %91, %104, %126, %129, %111, %65, %68
  %133 = phi i64 [ %67, %65 ], [ %74, %68 ], [ %114, %111 ], [ %128, %126 ], [ %131, %129 ], [ 2, %104 ], [ 2, %101 ], [ 2, %99 ], [ 2, %97 ], [ 2, %95 ], [ 2, %93 ], [ 2, %91 ], [ 1, %75 ], [ 1, %103 ], [ 1, %83 ], [ 1, %90 ]
  %134 = add i64 %133, %38
  %135 = icmp ugt i64 %134, %3
  %136 = select i1 %32, i1 %135, i1 false
  br i1 %136, label %149, label %137

137:                                              ; preds = %132
  %138 = icmp ugt i64 %133, 1
  br i1 %138, label %139, label %141

139:                                              ; preds = %137
  br i1 %19, label %140, label %144

140:                                              ; preds = %139
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %0, ptr noundef nonnull %7, i64 noundef %133, i32 noundef 2) #9
  br label %144

141:                                              ; preds = %137
  br i1 %19, label %142, label %144

142:                                              ; preds = %141
  %143 = and i32 %56, 255
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i32 noundef %143) #9
  br label %144

144:                                              ; preds = %141, %142, %139, %140
  %145 = phi i64 [ %133, %140 ], [ %133, %139 ], [ 1, %142 ], [ 1, %141 ]
  %146 = lshr i32 %5, 10
  %147 = and i32 %146, 2
  %148 = add i64 %145, %38
  br label %149

149:                                              ; preds = %144, %132
  %150 = phi i64 [ %38, %132 ], [ %148, %144 ]
  %151 = phi i32 [ 2, %132 ], [ %147, %144 ]
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %149
  %154 = load i64, ptr %8, align 8, !tbaa !40
  %155 = getelementptr inbounds i8, ptr %39, i64 %154
  %156 = freeze i64 %150
  %157 = icmp uge ptr %155, %18
  %158 = icmp ult i64 %33, %156
  %159 = or i1 %157, %158
  br i1 %159, label %160, label %37, !prof !49, !llvm.loop !50

160:                                              ; preds = %153, %149, %30
  %161 = phi ptr [ %1, %30 ], [ %155, %153 ], [ %39, %149 ]
  %162 = icmp eq ptr %4, null
  br i1 %162, label %167, label %163, !prof !45

163:                                              ; preds = %160
  %164 = ptrtoint ptr %161 to i64
  %165 = ptrtoint ptr %1 to i64
  %166 = sub i64 %164, %165
  store i64 %166, ptr %4, align 8, !tbaa !40
  br label %167

167:                                              ; preds = %163, %160
  br i1 %19, label %168, label %171, !prof !39

168:                                              ; preds = %167
  %169 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !44
  br label %171

171:                                              ; preds = %167, %168
  %172 = phi ptr [ %170, %168 ], [ null, %167 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #9
  ret ptr %172
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @Perl_is_utf8_string(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @Perl_utf8n_to_uvchr(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i1 @Perl_ckwarn_d(i32 noundef) local_unnamed_addr #3

declare i32 @Perl_my_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @Perl_sv_catpvf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pv_pretty(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 !prof !38 {
  %8 = alloca i64, align 8
  %9 = and i32 %6, 1
  %10 = icmp eq i32 %9, 0
  %11 = and i32 %6, 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, ptr null, ptr @.str.8, !prof !39
  %14 = select i1 %10, ptr %13, ptr @.str.7, !prof !39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #9
  %15 = and i32 %6, 16384
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18, !prof !39

17:                                               ; preds = %7
  tail call void @Perl_sv_setpvn(ptr noundef %0, ptr noundef nonnull @.str, i64 noundef 0) #9
  br label %18

18:                                               ; preds = %17, %7
  %19 = load ptr, ptr %0, align 8, !tbaa !53
  %20 = getelementptr inbounds %struct.xpv, ptr %19, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !56
  %22 = and i32 %6, 5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24, !prof !39

24:                                               ; preds = %18
  %25 = load i8, ptr %14, align 1, !tbaa !44
  %26 = zext i8 %25 to i32
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i32 noundef %26) #9
  br label %27

27:                                               ; preds = %24, %18
  %28 = icmp eq ptr %4, null
  br i1 %28, label %30, label %29, !prof !39

29:                                               ; preds = %27
  tail call void @Perl_sv_catpv(ptr noundef nonnull %0, ptr noundef nonnull %4) #9
  br label %30

30:                                               ; preds = %29, %27
  %31 = and i32 %6, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %44, label %33, !prof !39

33:                                               ; preds = %30
  %34 = select i1 %23, i64 0, i64 2
  %35 = sub i64 %3, %34
  %36 = call ptr @Perl_pv_escape(ptr noundef null, ptr noundef %1, i64 noundef %2, i64 noundef %35, ptr noundef nonnull %8, i32 noundef %6)
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
  %48 = call ptr @Perl_pv_escape(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i64 noundef %46, ptr noundef nonnull %8, i32 noundef %47)
  %49 = icmp eq ptr %5, null
  br i1 %49, label %51, label %50, !prof !39

50:                                               ; preds = %44
  call void @Perl_sv_catpv(ptr noundef nonnull %0, ptr noundef nonnull %5) #9
  br label %51

51:                                               ; preds = %50, %44
  br i1 %23, label %56, label %52, !prof !39

52:                                               ; preds = %51
  %53 = getelementptr inbounds i8, ptr %14, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !44
  %55 = zext i8 %54 to i32
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef nonnull %0, ptr noundef nonnull @.str.6, i32 noundef %55) #9
  br label %56

56:                                               ; preds = %52, %51
  %57 = and i32 %6, 2
  %58 = icmp ne i32 %57, 0
  %59 = load i64, ptr %8, align 8
  %60 = icmp ult i64 %59, %2
  %61 = select i1 %58, i1 %60, i1 false, !prof !45
  br i1 %61, label %62, label %63, !prof !45

62:                                               ; preds = %56
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %0, ptr noundef nonnull @.str.9, i64 noundef 3, i32 noundef 2) #9
  br label %63

63:                                               ; preds = %62, %56
  br i1 %32, label %76, label %64, !prof !39

64:                                               ; preds = %63
  %65 = load ptr, ptr %0, align 8, !tbaa !53
  %66 = getelementptr inbounds %struct.xpv, ptr %65, i64 0, i32 2
  %67 = load i64, ptr %66, align 8, !tbaa !56
  %68 = sub i64 %67, %21
  %69 = icmp ult i64 %68, %3
  br i1 %69, label %70, label %76

70:                                               ; preds = %64, %70
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %0, ptr noundef nonnull @.str.10, i64 noundef 1, i32 noundef 2) #9
  %71 = load ptr, ptr %0, align 8, !tbaa !53
  %72 = getelementptr inbounds %struct.xpv, ptr %71, i64 0, i32 2
  %73 = load i64, ptr %72, align 8, !tbaa !56
  %74 = sub i64 %73, %21
  %75 = icmp ult i64 %74, %3
  br i1 %75, label %70, label %76, !llvm.loop !58

76:                                               ; preds = %70, %64, %63
  %77 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #9
  ret ptr %78
}

declare void @Perl_sv_catpv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_pv_display(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 !prof !59 {
  %6 = tail call ptr @Perl_pv_pretty(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %4, ptr noundef null, ptr noundef null, i32 noundef 3)
  %7 = icmp ugt i64 %3, %2
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = getelementptr inbounds i8, ptr %1, i64 %2
  %10 = load i8, ptr %9, align 1, !tbaa !44
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @Perl_sv_catpvn_flags(ptr noundef %0, ptr noundef nonnull @.str.11, i64 noundef 2, i32 noundef 2) #9
  br label %13

13:                                               ; preds = %12, %8, %5
  %14 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  ret ptr %15
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_sv_peek(ptr noundef %0) local_unnamed_addr #0 !prof !59 {
  %2 = tail call ptr @Perl_sv_newmortal() #9
  tail call void @Perl_sv_setpvn(ptr noundef %2, ptr noundef nonnull @.str, i64 noundef 0) #9
  %3 = icmp ne ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %131, %1
  %5 = phi i32 [ 0, %1 ], [ %113, %131 ]
  %6 = phi ptr [ %0, %1 ], [ %133, %131 ]
  %7 = phi i1 [ %3, %1 ], [ %134, %131 ]
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.12) #9
  br label %254

8:                                                ; preds = %1, %131
  %9 = phi i1 [ %134, %131 ], [ %3, %1 ]
  %10 = phi ptr [ %133, %131 ], [ %0, %1 ]
  %11 = phi i32 [ %113, %131 ], [ 0, %1 ]
  %12 = icmp eq ptr %10, inttoptr (i64 1431655765 to ptr)
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !60
  %16 = and i32 %15, 255
  %17 = icmp eq i32 %16, 85
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %8
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.13) #9
  br label %254

19:                                               ; preds = %13
  %20 = icmp eq ptr %10, @PL_sv_undef
  %21 = icmp eq ptr %10, @PL_sv_no
  %22 = icmp eq ptr %10, @PL_sv_yes
  %23 = icmp eq ptr %10, @PL_sv_placeholder
  %24 = or i1 %21, %23
  %25 = or i1 %20, %24
  %26 = or i1 %22, %25
  br i1 %26, label %27, label %78

27:                                               ; preds = %19
  br i1 %20, label %28, label %35

28:                                               ; preds = %27
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.14) #9
  %29 = load i32, ptr %14, align 4, !tbaa !60
  %30 = and i32 %29, 49348352
  %31 = icmp ne i32 %30, 0
  %32 = and i32 %29, 134283264
  %33 = icmp eq i32 %32, 0
  %34 = or i1 %31, %33
  br i1 %34, label %77, label %254

35:                                               ; preds = %27
  br i1 %21, label %36, label %49

36:                                               ; preds = %35
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.15) #9
  %37 = load i32, ptr %14, align 4, !tbaa !60
  %38 = and i32 %37, 183528960
  %39 = icmp eq i32 %38, 134243840
  br i1 %39, label %40, label %77

40:                                               ; preds = %36
  %41 = load ptr, ptr @PL_sv_no, align 8, !tbaa !53
  %42 = getelementptr inbounds %struct.xpv, ptr %41, i64 0, i32 2
  %43 = load i64, ptr %42, align 8, !tbaa !56
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %77

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.xpvnv, ptr %41, i64 0, i32 5
  %47 = load double, ptr %46, align 8, !tbaa !44
  %48 = fcmp oeq double %47, 0.000000e+00
  br i1 %48, label %254, label %77

49:                                               ; preds = %35
  br i1 %22, label %50, label %70

50:                                               ; preds = %49
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.16) #9
  %51 = load i32, ptr %14, align 4, !tbaa !60
  %52 = and i32 %51, 183528960
  %53 = icmp eq i32 %52, 134243840
  br i1 %53, label %54, label %77

54:                                               ; preds = %50
  %55 = load ptr, ptr %10, align 8, !tbaa !53
  %56 = getelementptr inbounds %struct.xpv, ptr %55, i64 0, i32 2
  %57 = load i64, ptr %56, align 8, !tbaa !56
  %58 = icmp eq i64 %57, 1
  br i1 %58, label %59, label %77

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !44
  %62 = icmp eq ptr %61, null
  br i1 %62, label %77, label %63

63:                                               ; preds = %59
  %64 = load i8, ptr %61, align 1, !tbaa !44
  %65 = icmp eq i8 %64, 49
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.xpvnv, ptr %55, i64 0, i32 5
  %68 = load double, ptr %67, align 8, !tbaa !44
  %69 = fcmp oeq double %68, 1.000000e+00
  br i1 %69, label %254, label %77

70:                                               ; preds = %49
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.17) #9
  %71 = load i32, ptr %14, align 4, !tbaa !60
  %72 = and i32 %71, 49348352
  %73 = icmp ne i32 %72, 0
  %74 = and i32 %71, 134283264
  %75 = icmp eq i32 %74, 0
  %76 = or i1 %73, %75
  br i1 %76, label %77, label %254

77:                                               ; preds = %45, %40, %36, %70, %50, %54, %59, %63, %66, %28
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.18) #9
  br label %112

78:                                               ; preds = %19
  %79 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 1
  %80 = load i32, ptr %79, align 8, !tbaa !61
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.19) #9
  %83 = add nsw i32 %11, 1
  br label %112

84:                                               ; preds = %78
  %85 = load volatile i32, ptr @PL_debug, align 4, !tbaa !47
  %86 = and i32 %85, 262144
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %112, label %88

88:                                               ; preds = %84
  %89 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !40
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %104, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr @PL_tmps_stack, align 8, !tbaa !62
  %93 = getelementptr inbounds ptr, ptr %92, i64 %89
  %94 = load ptr, ptr %93, align 8, !tbaa !62
  %95 = icmp eq ptr %94, %10
  br i1 %95, label %104, label %96

96:                                               ; preds = %91, %99
  %97 = phi i64 [ %100, %99 ], [ %89, %91 ]
  %98 = icmp slt i64 %97, 1
  br i1 %98, label %104, label %99, !llvm.loop !63

99:                                               ; preds = %96
  %100 = add nsw i64 %97, -1
  %101 = getelementptr inbounds ptr, ptr %92, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !62
  %103 = icmp eq ptr %102, %10
  br i1 %103, label %104, label %96, !llvm.loop !63

104:                                              ; preds = %99, %96, %91, %88
  %105 = phi i1 [ %90, %88 ], [ %90, %91 ], [ %98, %96 ], [ %98, %99 ]
  %106 = icmp eq i32 %80, 1
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = zext i32 %80 to i64
  %109 = select i1 %105, ptr @.str, ptr @.str.21
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %2, ptr noundef nonnull @.str.20, i64 noundef %108, ptr noundef nonnull %109) #9
  br label %112

110:                                              ; preds = %104
  br i1 %105, label %112, label %111

111:                                              ; preds = %110
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.22) #9
  br label %112

112:                                              ; preds = %107, %111, %110, %82, %84, %77
  %113 = phi i32 [ %11, %77 ], [ %83, %82 ], [ %11, %84 ], [ %11, %110 ], [ %11, %111 ], [ %11, %107 ]
  %114 = load i32, ptr %14, align 4, !tbaa !60
  %115 = and i32 %114, 2048
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %135, label %117

117:                                              ; preds = %112
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.23) #9
  %118 = load ptr, ptr %2, align 8, !tbaa !53
  %119 = getelementptr inbounds %struct.xpv, ptr %118, i64 0, i32 2
  %120 = load i64, ptr %119, align 8, !tbaa !56
  %121 = sext i32 %113 to i64
  %122 = add i64 %120, %121
  %123 = icmp ugt i64 %122, 10
  br i1 %123, label %124, label %131

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.xpv, ptr %118, i64 0, i32 2
  %126 = add nsw i32 %113, 3
  %127 = sext i32 %126 to i64
  store i64 %127, ptr %125, align 8, !tbaa !56
  %128 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !44
  %130 = getelementptr inbounds i8, ptr %129, i64 %127
  store i8 0, ptr %130, align 1, !tbaa !44
  tail call void @Perl_sv_catpv(ptr noundef nonnull %2, ptr noundef nonnull @.str.9) #9
  br label %254

131:                                              ; preds = %117
  %132 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !44
  %134 = icmp ne ptr %133, null
  br i1 %134, label %8, label %4

135:                                              ; preds = %112
  %136 = and i32 %114, 255
  %137 = icmp eq i32 %136, 13
  br i1 %137, label %138, label %174

138:                                              ; preds = %135
  %139 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #9
  %140 = load ptr, ptr %10, align 8, !tbaa !64
  %141 = getelementptr inbounds %struct.xpvcv, ptr %140, i64 0, i32 12
  %142 = load i32, ptr %141, align 4, !tbaa !66
  %143 = and i32 %142, 32768
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %138
  %146 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %10) #9
  br label %150

147:                                              ; preds = %138
  %148 = getelementptr inbounds %struct.xpvcv, ptr %140, i64 0, i32 7
  %149 = load ptr, ptr %148, align 8, !tbaa !44
  br label %150

150:                                              ; preds = %145, %147
  %151 = phi ptr [ %146, %145 ], [ %149, %147 ]
  %152 = icmp eq ptr %151, null
  br i1 %152, label %172, label %153

153:                                              ; preds = %150
  %154 = load ptr, ptr %151, align 8, !tbaa !68
  %155 = getelementptr inbounds %struct.xpvgv, ptr %154, i64 0, i32 4
  %156 = load ptr, ptr %155, align 8, !tbaa !44
  %157 = getelementptr inbounds %struct.hek, ptr %156, i64 0, i32 2
  %158 = getelementptr inbounds %struct.hek, ptr %156, i64 0, i32 1
  %159 = load i32, ptr %158, align 4, !tbaa !70
  %160 = sext i32 %159 to i64
  %161 = mul nsw i32 %159, 17
  %162 = add nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, ptr %157, i64 %160
  %165 = getelementptr inbounds i8, ptr %164, i64 1
  %166 = load i8, ptr %165, align 1, !tbaa !44
  %167 = and i8 %166, 1
  %168 = zext nneg i8 %167 to i32
  %169 = shl nuw nsw i32 %168, 8
  %170 = or disjoint i32 %169, 66560
  %171 = tail call ptr @Perl_pv_escape(ptr noundef %139, ptr noundef nonnull %157, i64 noundef %160, i64 noundef %163, ptr noundef null, i32 noundef %170)
  br label %172

172:                                              ; preds = %150, %153
  %173 = phi ptr [ %171, %153 ], [ @.str, %150 ]
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %2, ptr noundef nonnull @.str.24, ptr noundef %173) #9
  br label %254

174:                                              ; preds = %135
  %175 = icmp ult i32 %136, 16
  br i1 %175, label %176, label %181

176:                                              ; preds = %174
  %177 = zext nneg i32 %136 to i64
  %178 = shl i64 %177, 2
  %179 = call ptr @llvm.load.relative.i64(ptr @reltable.Perl_sv_peek, i64 %178)
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef %179) #9
  %180 = icmp eq i32 %136, 0
  br i1 %180, label %254, label %182

181:                                              ; preds = %174
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.25) #9
  br label %254

182:                                              ; preds = %176
  %183 = load i32, ptr %14, align 4, !tbaa !60
  %184 = and i32 %183, 16384
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %234, label %186

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 3
  %188 = load ptr, ptr %187, align 8, !tbaa !44
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.26) #9
  br label %254

191:                                              ; preds = %186
  %192 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str, i64 noundef 0) #9
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.19) #9
  %193 = load i32, ptr %14, align 4, !tbaa !60
  %194 = and i32 %193, 33554432
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %210, label %196

196:                                              ; preds = %191
  %197 = load ptr, ptr %187, align 8, !tbaa !44
  %198 = getelementptr inbounds i8, ptr %197, i64 -1
  %199 = load i8, ptr %198, align 1, !tbaa !44
  %200 = zext i8 %199 to i64
  %201 = icmp eq i8 %199, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = getelementptr inbounds i8, ptr %197, i64 -9
  %204 = load i64, ptr %203, align 1
  br label %205

205:                                              ; preds = %196, %202
  %206 = phi i64 [ %200, %196 ], [ %204, %202 ]
  %207 = sub i64 0, %206
  %208 = getelementptr inbounds i8, ptr %197, i64 %207
  %209 = tail call ptr @Perl_pv_display(ptr noundef %192, ptr noundef %208, i64 noundef %206, i64 noundef 0, i64 noundef 127)
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %2, ptr noundef nonnull @.str.27, ptr noundef %209) #9
  br label %210

210:                                              ; preds = %205, %191
  %211 = load ptr, ptr %187, align 8, !tbaa !44
  %212 = load ptr, ptr %10, align 8, !tbaa !53
  %213 = getelementptr inbounds %struct.xpv, ptr %212, i64 0, i32 2
  %214 = load i64, ptr %213, align 8, !tbaa !56
  %215 = getelementptr inbounds %struct.xpv, ptr %212, i64 0, i32 3
  %216 = load i64, ptr %215, align 8, !tbaa !44
  %217 = tail call ptr @Perl_pv_display(ptr noundef %192, ptr noundef %211, i64 noundef %214, i64 noundef %216, i64 noundef 127)
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %2, ptr noundef nonnull @.str.28, ptr noundef %217) #9
  %218 = load i32, ptr %14, align 4, !tbaa !60
  %219 = and i32 %218, 536870912
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %227, label %221

221:                                              ; preds = %210
  %222 = load ptr, ptr %10, align 8, !tbaa !53
  %223 = getelementptr inbounds %struct.xpv, ptr %222, i64 0, i32 2
  %224 = load i64, ptr %223, align 8, !tbaa !56
  %225 = mul i64 %224, 6
  %226 = tail call ptr @Perl_sv_uni_display(ptr noundef %192, ptr noundef nonnull %10, i64 noundef %225, i64 noundef 3) #9
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %2, ptr noundef nonnull @.str.29, ptr noundef %226) #9
  br label %227

227:                                              ; preds = %221, %210
  %228 = getelementptr inbounds %struct.sv, ptr %192, i64 0, i32 1
  %229 = load i32, ptr %228, align 8, !tbaa !61
  %230 = icmp ugt i32 %229, 1
  br i1 %230, label %231, label %233

231:                                              ; preds = %227
  %232 = add i32 %229, -1
  store i32 %232, ptr %228, align 8, !tbaa !61
  br label %254

233:                                              ; preds = %227
  tail call void @Perl_sv_free2(ptr noundef %192, i32 noundef %229) #9
  br label %254

234:                                              ; preds = %182
  %235 = and i32 %183, 8192
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %241, label %237

237:                                              ; preds = %234
  %238 = load ptr, ptr %10, align 8, !tbaa !53
  %239 = getelementptr inbounds %struct.xpvnv, ptr %238, i64 0, i32 5
  %240 = load double, ptr %239, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %2, ptr noundef nonnull @.str.30, double noundef %240) #9
  br label %254

241:                                              ; preds = %234
  %242 = and i32 %183, 4096
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %253, label %244

244:                                              ; preds = %241
  %245 = icmp sgt i32 %183, -1
  %246 = load ptr, ptr %10, align 8, !tbaa !53
  br i1 %245, label %250, label %247

247:                                              ; preds = %244
  %248 = getelementptr inbounds %struct.xpvuv, ptr %246, i64 0, i32 4
  %249 = load i64, ptr %248, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %2, ptr noundef nonnull @.str.31, i64 noundef %249) #9
  br label %254

250:                                              ; preds = %244
  %251 = getelementptr inbounds %struct.xpviv, ptr %246, i64 0, i32 4
  %252 = load i64, ptr %251, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %2, ptr noundef nonnull @.str.32, i64 noundef %252) #9
  br label %254

253:                                              ; preds = %241
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.33) #9
  br label %254

254:                                              ; preds = %70, %66, %45, %28, %233, %231, %172, %190, %253, %250, %247, %237, %176, %181, %124, %18, %4
  %255 = phi ptr [ %10, %18 ], [ %10, %124 ], [ %10, %172 ], [ %10, %176 ], [ %10, %190 ], [ %10, %237 ], [ %10, %247 ], [ %10, %250 ], [ %10, %253 ], [ %10, %181 ], [ %6, %4 ], [ %10, %231 ], [ %10, %233 ], [ %10, %28 ], [ %10, %45 ], [ %10, %66 ], [ %10, %70 ]
  %256 = phi i1 [ %9, %18 ], [ %9, %124 ], [ %9, %172 ], [ %9, %176 ], [ %9, %190 ], [ %9, %237 ], [ %9, %247 ], [ %9, %250 ], [ %9, %253 ], [ %9, %181 ], [ %7, %4 ], [ %9, %231 ], [ %9, %233 ], [ %9, %28 ], [ %9, %45 ], [ %9, %66 ], [ %9, %70 ]
  %257 = phi i32 [ %11, %18 ], [ %113, %124 ], [ %113, %172 ], [ %113, %176 ], [ %113, %190 ], [ %113, %237 ], [ %113, %247 ], [ %113, %250 ], [ %113, %253 ], [ %113, %181 ], [ %5, %4 ], [ %113, %231 ], [ %113, %233 ], [ %11, %28 ], [ %11, %45 ], [ %11, %66 ], [ %11, %70 ]
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %263, label %259

259:                                              ; preds = %254, %259
  %260 = phi i32 [ %261, %259 ], [ %257, %254 ]
  %261 = add nsw i32 %260, -1
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.34) #9
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %259, !llvm.loop !72

263:                                              ; preds = %259, %254
  %264 = load i8, ptr @PL_tainting, align 1, !tbaa !73, !range !75, !noundef !76
  %265 = icmp ne i8 %264, 0
  %266 = and i1 %256, %265
  br i1 %266, label %267, label %275

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.sv, ptr %255, i64 0, i32 2
  %269 = load i32, ptr %268, align 4, !tbaa !60
  %270 = and i32 %269, 14680064
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %275, label %272

272:                                              ; preds = %267
  %273 = tail call zeroext i1 @Perl_sv_tainted(ptr noundef %255) #9
  br i1 %273, label %274, label %275

274:                                              ; preds = %272
  tail call void @Perl_sv_catpv(ptr noundef %2, ptr noundef nonnull @.str.35) #9
  br label %275

275:                                              ; preds = %274, %272, %267, %263
  %276 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %277 = load i32, ptr %276, align 4, !tbaa !60
  %278 = and i32 %277, 2098176
  %279 = icmp eq i32 %278, 1024
  br i1 %279, label %280, label %283

280:                                              ; preds = %275
  %281 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %282 = load ptr, ptr %281, align 8, !tbaa !44
  br label %285

283:                                              ; preds = %275
  %284 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %2, ptr noundef null, i32 noundef 2) #9
  br label %285

285:                                              ; preds = %280, %283
  %286 = phi ptr [ %282, %280 ], [ %284, %283 ]
  ret ptr %286
}

declare ptr @Perl_sv_newmortal() local_unnamed_addr #3

declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @Perl_sv_uni_display(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i1 @Perl_sv_tainted(ptr noundef) local_unnamed_addr #3

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef %2, ...) local_unnamed_addr #0 !prof !59 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.va_start(ptr nonnull %4)
  %5 = load i16, ptr @PL_dumpindent, align 2, !tbaa !77
  %6 = zext i16 %5 to i32
  %7 = mul nsw i32 %6, %0
  %8 = call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %7, ptr noundef nonnull @.str) #9
  %9 = call i32 @PerlIO_vprintf(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %4) #9
  call void @llvm.va_end(ptr %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_dump_vindent(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !59 {
  %5 = load i16, ptr @PL_dumpindent, align 2, !tbaa !77
  %6 = zext i16 %5 to i32
  %7 = mul nsw i32 %6, %0
  %8 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %7, ptr noundef nonnull @.str) #9
  %9 = tail call i32 @PerlIO_vprintf(ptr noundef %1, ptr noundef %2, ptr noundef %3) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

declare i32 @PerlIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @PerlIO_vprintf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_dump_all() local_unnamed_addr #0 !prof !59 {
  tail call void @Perl_dump_all_perl(i1 noundef zeroext false)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_dump_all_perl(i1 noundef zeroext %0) local_unnamed_addr #0 !prof !59 {
  %2 = tail call ptr @Perl_PerlIO_stderr() #9
  tail call void @Perl_PerlIO_setlinebuf(ptr noundef %2) #9
  %3 = load ptr, ptr @PL_main_root, align 8, !tbaa !62
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @Perl_PerlIO_stderr() #9
  tail call void @Perl_do_op_dump(i32 noundef 0, ptr noundef %6, ptr noundef nonnull %3)
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @PL_defstash, align 8, !tbaa !62
  tail call void @Perl_dump_packsubs_perl(ptr noundef %8, i1 noundef zeroext %0)
  ret void
}

declare void @Perl_PerlIO_setlinebuf(ptr noundef) local_unnamed_addr #3

declare ptr @Perl_PerlIO_stderr() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_op_dump(ptr noundef %0) local_unnamed_addr #0 !prof !59 {
  %2 = tail call ptr @Perl_PerlIO_stderr() #9
  tail call void @Perl_do_op_dump(i32 noundef 0, ptr noundef %2, ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_dump_packsubs_perl(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 !prof !59 {
  %3 = getelementptr inbounds %struct.hv, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %94, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !79
  %8 = getelementptr inbounds %struct.xpvhv, ptr %7, i64 0, i32 3
  %9 = load i64, ptr %8, align 8, !tbaa !81
  %10 = and i64 %9, 2147483648
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %94

12:                                               ; preds = %6, %86
  %13 = phi i64 [ %87, %86 ], [ 0, %6 ]
  %14 = load ptr, ptr %3, align 8, !tbaa !44
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  %17 = icmp eq ptr %16, null
  br i1 %17, label %86, label %18

18:                                               ; preds = %12, %83
  %19 = phi ptr [ %84, %83 ], [ %16, %12 ]
  %20 = getelementptr inbounds %struct.he, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = getelementptr inbounds %struct.gv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !83
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.gv, ptr %21, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  %29 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !60
  %31 = and i32 %30, 255
  %32 = icmp eq i32 %31, 13
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load ptr, ptr %28, align 8, !tbaa !64
  %35 = getelementptr inbounds %struct.xpvcv, ptr %34, i64 0, i32 12
  %36 = load i32, ptr %35, align 4, !tbaa !66
  %37 = and i32 %36, 32768
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %28) #9
  br label %41

41:                                               ; preds = %33, %39, %26, %18
  %42 = load i32, ptr %22, align 4, !tbaa !83
  %43 = and i32 %42, 255
  %44 = icmp eq i32 %43, 9
  br i1 %44, label %45, label %83

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.gv, ptr %21, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !44
  %48 = icmp eq ptr %47, null
  br i1 %48, label %83, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.gp, ptr %47, i64 0, i32 3
  %51 = load i32, ptr %50, align 8, !tbaa !84
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.gp, ptr %47, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !86
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void @Perl_dump_sub_perl(ptr noundef %21, i1 noundef zeroext %1)
  br label %58

58:                                               ; preds = %49, %57, %53
  %59 = load ptr, ptr %46, align 8, !tbaa !44
  %60 = getelementptr inbounds %struct.gp, ptr %59, i64 0, i32 7
  %61 = load ptr, ptr %60, align 8, !tbaa !87
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  tail call void @Perl_dump_form(ptr noundef %21)
  br label %64

64:                                               ; preds = %63, %58
  %65 = getelementptr inbounds %struct.he, ptr %19, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !88
  %67 = getelementptr inbounds %struct.hek, ptr %66, i64 0, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !70
  %69 = add nsw i32 %68, -1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.hek, ptr %66, i64 0, i32 2, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !44
  %73 = icmp eq i8 %72, 58
  br i1 %73, label %74, label %83

74:                                               ; preds = %64
  %75 = load ptr, ptr %46, align 8, !tbaa !44
  %76 = getelementptr inbounds %struct.gp, ptr %75, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !90
  %78 = icmp eq ptr %77, null
  %79 = load ptr, ptr @PL_defstash, align 8
  %80 = icmp eq ptr %77, %79
  %81 = select i1 %78, i1 true, i1 %80
  br i1 %81, label %83, label %82

82:                                               ; preds = %74
  tail call void @Perl_dump_packsubs_perl(ptr noundef nonnull %77, i1 noundef zeroext %1)
  br label %83

83:                                               ; preds = %64, %82, %74, %41, %45
  %84 = load ptr, ptr %19, align 8, !tbaa !62
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %18, !llvm.loop !91

86:                                               ; preds = %83, %12
  %87 = add nuw nsw i64 %13, 1
  %88 = load ptr, ptr %0, align 8, !tbaa !79
  %89 = getelementptr inbounds %struct.xpvhv, ptr %88, i64 0, i32 3
  %90 = load i64, ptr %89, align 8, !tbaa !81
  %91 = shl i64 %90, 32
  %92 = ashr exact i64 %91, 32
  %93 = icmp slt i64 %13, %92
  br i1 %93, label %12, label %94, !llvm.loop !92

94:                                               ; preds = %86, %6, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_dump_packsubs(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !59 {
  tail call void @Perl_dump_packsubs_perl(ptr noundef %0, i1 noundef zeroext false)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_dump_sub_perl(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 !prof !59 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %4 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #9
  br i1 %1, label %5, label %19

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.gp, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.xpvcv, ptr %10, i64 0, i32 12
  %12 = load i32, ptr %11, align 4, !tbaa !66
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %71

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.xpvcv, ptr %10, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  %18 = icmp eq ptr %17, null
  br i1 %18, label %71, label %19

19:                                               ; preds = %15, %2
  %20 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #9
  tail call void @Perl_gv_fullname4(ptr noundef %4, ptr noundef %0, ptr noundef null, i1 noundef zeroext true) #9
  %21 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !60
  %23 = and i32 %22, 2098176
  %24 = icmp eq i32 %23, 1024
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load ptr, ptr %4, align 8, !tbaa !53
  %27 = getelementptr inbounds %struct.xpv, ptr %26, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !56
  store i64 %28, ptr %3, align 8, !tbaa !40
  %29 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !44
  br label %33

31:                                               ; preds = %19
  %32 = call ptr @Perl_sv_2pv_flags(ptr noundef %4, ptr noundef nonnull %3, i32 noundef 34) #9
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi ptr [ %30, %25 ], [ %32, %31 ]
  %35 = call ptr @Perl_PerlIO_stderr() #9
  %36 = load i64, ptr %3, align 8, !tbaa !40
  %37 = mul i64 %36, 17
  %38 = add i64 %37, 1
  %39 = load i32, ptr %21, align 4, !tbaa !60
  %40 = lshr i32 %39, 21
  %41 = and i32 %40, 256
  %42 = or disjoint i32 %41, 66560
  %43 = call ptr @Perl_pv_escape(ptr noundef %20, ptr noundef %34, i64 noundef %36, i64 noundef %38, ptr noundef null, i32 noundef %42)
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef 0, ptr noundef %35, ptr noundef nonnull @.str.37, ptr noundef %43)
  %44 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !44
  %46 = getelementptr inbounds %struct.gp, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !86
  %48 = load ptr, ptr %47, align 8, !tbaa !64
  %49 = getelementptr inbounds %struct.xpvcv, ptr %48, i64 0, i32 12
  %50 = load i32, ptr %49, align 4, !tbaa !66
  %51 = and i32 %50, 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %33
  %54 = call ptr @Perl_PerlIO_stderr() #9
  %55 = load ptr, ptr %44, align 8, !tbaa !44
  %56 = getelementptr inbounds %struct.gp, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !86
  %58 = load ptr, ptr %57, align 8, !tbaa !64
  %59 = getelementptr inbounds %struct.xpvcv, ptr %58, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !44
  %61 = ptrtoint ptr %60 to i64
  %62 = getelementptr inbounds %struct.xpvcv, ptr %58, i64 0, i32 5
  %63 = load i32, ptr %62, align 8, !tbaa !44
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef 0, ptr noundef %54, ptr noundef nonnull @.str.38, i64 noundef %61, i32 noundef %63)
  br label %71

64:                                               ; preds = %33
  %65 = getelementptr inbounds %struct.xpvcv, ptr %48, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !44
  %67 = icmp eq ptr %66, null
  %68 = call ptr @Perl_PerlIO_stderr() #9
  br i1 %67, label %70, label %69

69:                                               ; preds = %64
  call void @Perl_do_op_dump(i32 noundef 0, ptr noundef %68, ptr noundef nonnull %66)
  br label %71

70:                                               ; preds = %64
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef 0, ptr noundef %68, ptr noundef nonnull @.str.39)
  br label %71

71:                                               ; preds = %53, %70, %69, %5, %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_dump_form(ptr noundef %0) local_unnamed_addr #0 !prof !59 {
  %2 = tail call ptr @Perl_sv_newmortal() #9
  tail call void @Perl_gv_fullname4(ptr noundef %2, ptr noundef %0, ptr noundef null, i1 noundef zeroext true) #9
  %3 = tail call ptr @Perl_PerlIO_stderr() #9
  %4 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef 0, ptr noundef %3, ptr noundef nonnull @.str.40, ptr noundef %5)
  %6 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.gp, ptr %7, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !87
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.xpvcv, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = icmp eq ptr %12, null
  %14 = tail call ptr @Perl_PerlIO_stderr() #9
  br i1 %13, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_do_op_dump(i32 noundef 0, ptr noundef %14, ptr noundef nonnull %12)
  br label %17

16:                                               ; preds = %1
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef 0, ptr noundef %14, ptr noundef nonnull @.str.39)
  br label %17

17:                                               ; preds = %16, %15
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_dump_sub(ptr noundef %0) local_unnamed_addr #0 !prof !59 {
  tail call void @Perl_dump_sub_perl(ptr noundef %0, i1 noundef zeroext false)
  ret void
}

declare void @Perl_gv_fullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_dump_eval() local_unnamed_addr #0 !prof !59 {
  %1 = load ptr, ptr @PL_eval_root, align 8, !tbaa !62
  %2 = tail call ptr @Perl_PerlIO_stderr() #9
  tail call void @Perl_do_op_dump(i32 noundef 0, ptr noundef %2, ptr noundef %1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_do_pmop_dump(i32 noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 !prof !59 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %153, label %5

5:                                                ; preds = %3
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.42)
  %6 = add nsw i32 %0, 1
  %7 = getelementptr inbounds %struct.pmop, ptr %2, i64 0, i32 10
  %8 = getelementptr inbounds %struct.pmop, ptr %2, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = icmp eq ptr %9, null
  br i1 %10, label %36, label %11

11:                                               ; preds = %5
  %12 = load i32, ptr %7, align 8, !tbaa !95
  %13 = and i32 %12, 1048576
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 47, i32 63
  %16 = load ptr, ptr %9, align 8, !tbaa !96
  %17 = getelementptr inbounds %struct.xpv, ptr %16, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !56
  %19 = getelementptr inbounds %struct.p5rx, ptr %9, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.regexp, ptr %20, i64 0, i32 24
  %22 = load i16, ptr %21, align 8
  %23 = and i16 %22, 15
  %24 = zext nneg i16 %23 to i64
  %25 = xor i64 %24, -1
  %26 = add i64 %18, %25
  %27 = trunc i64 %26 to i32
  %28 = getelementptr inbounds %struct.regexp, ptr %20, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = getelementptr inbounds i8, ptr %29, i64 %24
  %31 = getelementptr inbounds %struct.pmop, ptr %2, i64 0, i32 6
  %32 = load i8, ptr %31, align 1, !tbaa !98
  %33 = and i8 %32, 64
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %34, ptr @.str, ptr @.str.44
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %6, ptr noundef %1, ptr noundef nonnull @.str.43, i32 noundef %15, i32 noundef %27, ptr noundef %30, i32 noundef %15, ptr noundef nonnull %35)
  br label %37

36:                                               ; preds = %5
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %6, ptr noundef %1, ptr noundef nonnull @.str.45)
  br label %37

37:                                               ; preds = %36, %11
  %38 = getelementptr inbounds %struct.pmop, ptr %2, i64 0, i32 4
  %39 = load i16, ptr %38, align 8
  %40 = and i16 %39, 511
  %41 = icmp eq i16 %40, 13
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.pmop, ptr %2, i64 0, i32 11
  %44 = load ptr, ptr %43, align 8, !tbaa !44
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %6, ptr noundef %1, ptr noundef nonnull @.str.46)
  %47 = load ptr, ptr %43, align 8, !tbaa !44
  %48 = tail call ptr @Perl_PerlIO_stderr() #9
  tail call void @Perl_do_op_dump(i32 noundef 0, ptr noundef %48, ptr noundef %47)
  br label %49

49:                                               ; preds = %46, %42, %37
  %50 = getelementptr inbounds %struct.pmop, ptr %2, i64 0, i32 13
  %51 = load ptr, ptr %50, align 8, !tbaa !99
  %52 = icmp eq ptr %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load i32, ptr %7, align 8, !tbaa !95
  %55 = and i32 %54, 536870912
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %6, ptr noundef %1, ptr noundef nonnull @.str.47)
  %58 = load ptr, ptr %50, align 8, !tbaa !99
  tail call void @Perl_do_op_dump(i32 noundef %6, ptr noundef %1, ptr noundef %58)
  br label %61

59:                                               ; preds = %53
  %60 = ptrtoint ptr %51 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %6, ptr noundef %1, ptr noundef nonnull @.str.48, i64 noundef %60)
  br label %61

61:                                               ; preds = %57, %59, %49
  %62 = load i32, ptr %7, align 8, !tbaa !95
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load ptr, ptr %8, align 8, !tbaa !93
  %66 = icmp eq ptr %65, null
  br i1 %66, label %153, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.p5rx, ptr %65, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !44
  %70 = getelementptr inbounds %struct.regexp, ptr %69, i64 0, i32 11
  %71 = load ptr, ptr %70, align 8, !tbaa !100
  %72 = getelementptr inbounds %struct.reg_substr_data, ptr %71, i64 0, i32 1, i64 2, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !102
  %74 = icmp eq ptr %73, null
  br i1 %74, label %153, label %75

75:                                               ; preds = %67, %61
  %76 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str, i64 noundef 0) #9
  %77 = load ptr, ptr %8, align 8, !tbaa !93
  %78 = load i32, ptr %7, align 8, !tbaa !95
  %79 = and i32 %78, 1048576
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  tail call void @Perl_sv_catpv(ptr noundef %76, ptr noundef nonnull @.str.415) #9
  br label %82

82:                                               ; preds = %81, %75
  %83 = and i32 %78, 2097152
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82
  tail call void @Perl_sv_catpv(ptr noundef %76, ptr noundef nonnull @.str.416) #9
  br label %86

86:                                               ; preds = %85, %82
  %87 = icmp eq ptr %77, null
  br i1 %87, label %123, label %88

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.p5rx, ptr %77, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !44
  %91 = getelementptr inbounds %struct.regexp, ptr %90, i64 0, i32 7
  %92 = load i32, ptr %91, align 8, !tbaa !104
  %93 = and i32 %92, 134217728
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %88
  tail call void @Perl_sv_catpv(ptr noundef %76, ptr noundef nonnull @.str.417) #9
  br label %96

96:                                               ; preds = %95, %88
  %97 = load ptr, ptr %89, align 8, !tbaa !44
  %98 = getelementptr inbounds %struct.regexp, ptr %97, i64 0, i32 11
  %99 = load ptr, ptr %98, align 8, !tbaa !100
  %100 = getelementptr inbounds %struct.reg_substr_data, ptr %99, i64 0, i32 1, i64 2, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !102
  %102 = icmp eq ptr %101, null
  br i1 %102, label %116, label %103

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.regexp, ptr %97, i64 0, i32 13
  %105 = load i32, ptr %104, align 4, !tbaa !105
  %106 = and i32 %105, 64
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  tail call void @Perl_sv_catpv(ptr noundef %76, ptr noundef nonnull @.str.418) #9
  br label %109

109:                                              ; preds = %108, %103
  %110 = load ptr, ptr %89, align 8, !tbaa !44
  %111 = getelementptr inbounds %struct.regexp, ptr %110, i64 0, i32 7
  %112 = load i32, ptr %111, align 8, !tbaa !104
  %113 = and i32 %112, 524288
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  tail call void @Perl_sv_catpv(ptr noundef %76, ptr noundef nonnull @.str.419) #9
  br label %116

116:                                              ; preds = %115, %109, %96
  %117 = load ptr, ptr %89, align 8, !tbaa !44
  %118 = getelementptr inbounds %struct.regexp, ptr %117, i64 0, i32 7
  %119 = load i32, ptr %118, align 8, !tbaa !104
  %120 = and i32 %119, 536870912
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %116
  tail call void @Perl_sv_catpv(ptr noundef %76, ptr noundef nonnull @.str.420) #9
  br label %123

123:                                              ; preds = %122, %116, %86
  br label %124

124:                                              ; preds = %123, %133
  %125 = phi i64 [ %134, %133 ], [ 0, %123 ]
  %126 = getelementptr inbounds i8, ptr @pmflags_flags_names, i64 %125
  %127 = load i32, ptr %126, align 16, !tbaa !106
  %128 = and i32 %127, %78
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.flag_to_name, ptr %126, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !108
  tail call void @Perl_sv_catpv(ptr noundef %76, ptr noundef %132) #9
  br label %133

133:                                              ; preds = %124, %130
  %134 = add nuw nsw i64 %125, 16
  %135 = icmp ult i64 %125, 144
  br i1 %135, label %124, label %136, !llvm.loop !109

136:                                              ; preds = %133
  %137 = load ptr, ptr %76, align 8, !tbaa !53
  %138 = getelementptr inbounds %struct.xpv, ptr %137, i64 0, i32 2
  %139 = load i64, ptr %138, align 8, !tbaa !56
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.sv, ptr %76, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !44
  %144 = getelementptr inbounds i8, ptr %143, i64 1
  br label %145

145:                                              ; preds = %136, %141
  %146 = phi ptr [ %144, %141 ], [ @.str, %136 ]
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %6, ptr noundef %1, ptr noundef nonnull @.str.49, ptr noundef nonnull %146)
  %147 = getelementptr inbounds %struct.sv, ptr %76, i64 0, i32 1
  %148 = load i32, ptr %147, align 8, !tbaa !61
  %149 = icmp ugt i32 %148, 1
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = add i32 %148, -1
  store i32 %151, ptr %147, align 8, !tbaa !61
  br label %153

152:                                              ; preds = %145
  tail call void @Perl_sv_free2(ptr noundef nonnull %76, i32 noundef %148) #9
  br label %153

153:                                              ; preds = %64, %67, %150, %152, %3
  %154 = phi ptr [ @.str.41, %3 ], [ @.str.50, %152 ], [ @.str.50, %150 ], [ @.str.50, %67 ], [ @.str.50, %64 ]
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %154)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_do_op_dump(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !59 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 4
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 511
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.42)
  %10 = add nsw i32 %0, 1
  %11 = tail call fastcc i64 @S_sequence_num(ptr noundef %2)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.67, i64 noundef %11) #9
  br label %17

15:                                               ; preds = %3
  %16 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.68) #9
  br label %17

17:                                               ; preds = %15, %13
  %18 = load i16, ptr @PL_dumpindent, align 2, !tbaa !77
  %19 = zext i16 %18 to i32
  %20 = mul nsw i32 %10, %19
  %21 = add nsw i32 %20, -4
  %22 = load i16, ptr %7, align 8
  %23 = and i16 %22, 511
  %24 = icmp eq i16 %23, 380
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = tail call ptr @Perl_custom_op_get_field(ptr noundef %2, i32 noundef 1) #9
  br label %31

27:                                               ; preds = %17
  %28 = zext nneg i16 %23 to i64
  %29 = getelementptr inbounds [0 x ptr], ptr @PL_op_name, i64 0, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !62
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi ptr [ %26, %25 ], [ %30, %27 ]
  %33 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.69, i32 noundef %21, ptr noundef nonnull @.str, ptr noundef %32) #9
  %34 = load ptr, ptr %2, align 8, !tbaa !110
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = load i16, ptr %7, align 8
  %38 = and i16 %37, 511
  %39 = icmp eq i16 %38, 0
  %40 = select i1 %39, ptr @.str.70, ptr @.str.71
  %41 = tail call fastcc i64 @S_sequence_num(ptr noundef nonnull %34)
  %42 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull %40, i64 noundef %41) #9
  br label %45

43:                                               ; preds = %31
  %44 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.72) #9
  br label %45

45:                                               ; preds = %43, %36
  %46 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 3
  %47 = load i64, ptr %46, align 8, !tbaa !112
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = icmp eq i16 %9, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %49
  %52 = getelementptr inbounds [0 x ptr], ptr @PL_op_name, i64 0, i64 %47
  %53 = load ptr, ptr %52, align 8, !tbaa !62
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.73, ptr noundef %53)
  br label %55

54:                                               ; preds = %49
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.74, i64 noundef %47)
  br label %55

55:                                               ; preds = %51, %54, %45
  %56 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5
  %57 = load i8, ptr %56, align 2, !tbaa !113
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i16, ptr %7, align 8
  %61 = and i16 %60, 7168
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %125, label %63

63:                                               ; preds = %59, %55
  %64 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str, i64 noundef 0) #9
  %65 = load i8, ptr %56, align 2, !tbaa !113
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
  %74 = phi ptr [ %72, %69 ], [ @.str.78, %63 ]
  tail call void @Perl_sv_catpv(ptr noundef %64, ptr noundef nonnull %74) #9
  %75 = load i8, ptr %56, align 2, !tbaa !113
  %76 = zext i8 %75 to i32
  br label %77

77:                                               ; preds = %86, %73
  %78 = phi i64 [ 0, %73 ], [ %87, %86 ]
  %79 = getelementptr inbounds i8, ptr @op_flags_names, i64 %78
  %80 = load i32, ptr %79, align 16, !tbaa !106
  %81 = and i32 %80, %76
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.flag_to_name, ptr %79, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !108
  tail call void @Perl_sv_catpv(ptr noundef %64, ptr noundef %85) #9
  br label %86

86:                                               ; preds = %77, %83
  %87 = add nuw nsw i64 %78, 16
  %88 = icmp ult i64 %78, 80
  br i1 %88, label %77, label %89, !llvm.loop !109

89:                                               ; preds = %86
  %90 = load i16, ptr %7, align 8
  %91 = and i16 %90, 1024
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  tail call void @Perl_sv_catpvn_flags(ptr noundef %64, ptr noundef nonnull @.str.79, i64 noundef 8, i32 noundef 2) #9
  br label %94

94:                                               ; preds = %93, %89
  %95 = load i16, ptr %7, align 8
  %96 = and i16 %95, 2048
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  tail call void @Perl_sv_catpvn_flags(ptr noundef %64, ptr noundef nonnull @.str.80, i64 noundef 9, i32 noundef 2) #9
  br label %99

99:                                               ; preds = %98, %94
  %100 = load i16, ptr %7, align 8
  %101 = and i16 %100, 4096
  %102 = icmp eq i16 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  tail call void @Perl_sv_catpvn_flags(ptr noundef %64, ptr noundef nonnull @.str.81, i64 noundef 7, i32 noundef 2) #9
  br label %104

104:                                              ; preds = %103, %99
  %105 = load i16, ptr %7, align 8
  %106 = and i16 %105, 8192
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  tail call void @Perl_sv_catpvn_flags(ptr noundef %64, ptr noundef nonnull @.str.82, i64 noundef 7, i32 noundef 2) #9
  br label %109

109:                                              ; preds = %108, %104
  %110 = load i16, ptr %7, align 8
  %111 = and i16 %110, 16384
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  tail call void @Perl_sv_catpvn_flags(ptr noundef %64, ptr noundef nonnull @.str.83, i64 noundef 8, i32 noundef 2) #9
  br label %114

114:                                              ; preds = %113, %109
  %115 = load ptr, ptr %64, align 8, !tbaa !53
  %116 = getelementptr inbounds %struct.xpv, ptr %115, i64 0, i32 2
  %117 = load i64, ptr %116, align 8, !tbaa !56
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.sv, ptr %64, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !44
  %122 = getelementptr inbounds i8, ptr %121, i64 1
  br label %123

123:                                              ; preds = %114, %119
  %124 = phi ptr [ %122, %119 ], [ @.str, %114 ]
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.84, ptr noundef nonnull %124)
  br label %125

125:                                              ; preds = %59, %123
  %126 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 6
  %127 = load i8, ptr %126, align 1, !tbaa !114
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %257, label %129

129:                                              ; preds = %125
  %130 = zext i8 %127 to i16
  %131 = load i16, ptr %7, align 8
  %132 = and i16 %131, 511
  %133 = zext nneg i16 %132 to i64
  %134 = getelementptr inbounds [0 x i16], ptr @PL_op_private_bitdef_ix, i64 0, i64 %133
  %135 = load i16, ptr %134, align 2, !tbaa !77
  %136 = icmp eq i16 %135, -1
  br i1 %136, label %242, label %137

137:                                              ; preds = %129
  %138 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str, i64 noundef 0) #9
  br label %139

139:                                              ; preds = %137, %234
  %140 = phi i16 [ %130, %137 ], [ %235, %234 ]
  %141 = phi i16 [ %135, %137 ], [ %236, %234 ]
  %142 = sext i16 %141 to i64
  %143 = getelementptr inbounds [0 x i16], ptr @PL_op_private_bitdefs, i64 0, i64 %142
  %144 = load i16, ptr %143, align 2, !tbaa !77
  %145 = lshr i16 %144, 2
  %146 = and i16 %145, 7
  %147 = lshr i16 %144, 5
  %148 = and i16 %144, 1
  %149 = and i16 %144, 2
  %150 = icmp eq i16 %149, 0
  br i1 %150, label %214, label %151

151:                                              ; preds = %139
  %152 = zext nneg i16 %147 to i64
  %153 = getelementptr inbounds [0 x i16], ptr @PL_op_private_bitfields, i64 0, i64 %152
  %154 = getelementptr inbounds i16, ptr %153, i64 1
  %155 = load i16, ptr %153, align 2, !tbaa !77
  %156 = load i16, ptr %154, align 2, !tbaa !77
  %157 = icmp ugt i16 %155, %146
  br i1 %157, label %170, label %158

158:                                              ; preds = %151
  %159 = zext i16 %155 to i32
  %160 = add nuw nsw i16 %146, 1
  %161 = zext nneg i16 %160 to i32
  br label %162

162:                                              ; preds = %158, %162
  %163 = phi i32 [ %159, %158 ], [ %168, %162 ]
  %164 = phi i16 [ 0, %158 ], [ %167, %162 ]
  %165 = shl nuw nsw i32 1, %163
  %166 = trunc i32 %165 to i16
  %167 = or i16 %164, %166
  %168 = add nuw nsw i32 %163, 1
  %169 = icmp eq i32 %168, %161
  br i1 %169, label %170, label %162, !llvm.loop !115

170:                                              ; preds = %162, %151
  %171 = phi i16 [ 0, %151 ], [ %167, %162 ]
  %172 = and i16 %171, %140
  %173 = sext i16 %156 to i64
  %174 = icmp eq i16 %156, -1
  br i1 %174, label %184, label %175

175:                                              ; preds = %170
  %176 = getelementptr inbounds [0 x i8], ptr @PL_op_private_labels, i64 0, i64 %173
  %177 = load i8, ptr %176, align 1, !tbaa !44
  %178 = icmp eq i8 %177, 45
  br i1 %178, label %179, label %184

179:                                              ; preds = %175
  %180 = add nsw i64 %173, 1
  %181 = getelementptr inbounds [0 x i8], ptr @PL_op_private_labels, i64 0, i64 %180
  %182 = load i8, ptr %181, align 1, !tbaa !44
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %234, label %184

184:                                              ; preds = %179, %175, %170
  %185 = zext nneg i16 %172 to i32
  %186 = sub i16 %140, %172
  %187 = zext nneg i16 %155 to i32
  %188 = lshr i32 %185, %187
  %189 = zext nneg i32 %188 to i64
  br label %190

190:                                              ; preds = %195, %184
  %191 = phi ptr [ %153, %184 ], [ %192, %195 ]
  %192 = getelementptr inbounds i16, ptr %191, i64 2
  %193 = load i16, ptr %192, align 2, !tbaa !77
  %194 = icmp eq i16 %193, -1
  br i1 %194, label %201, label %195

195:                                              ; preds = %190
  %196 = sext i16 %193 to i32
  %197 = icmp eq i32 %188, %196
  br i1 %197, label %198, label %190, !llvm.loop !116

198:                                              ; preds = %195
  %199 = getelementptr inbounds i16, ptr %191, i64 3
  %200 = load i16, ptr %199, align 2, !tbaa !77
  br label %201

201:                                              ; preds = %190, %198
  %202 = phi i16 [ %200, %198 ], [ -1, %190 ]
  %203 = icmp eq i32 %188, 0
  %204 = icmp eq i16 %202, -1
  %205 = select i1 %203, i1 %204, i1 false
  br i1 %205, label %234, label %206

206:                                              ; preds = %201
  tail call void @Perl_sv_catpv(ptr noundef %138, ptr noundef nonnull @.str.85) #9
  br i1 %174, label %209, label %207

207:                                              ; preds = %206
  %208 = getelementptr inbounds [0 x i8], ptr @PL_op_private_labels, i64 0, i64 %173
  tail call void @Perl_sv_catpv(ptr noundef %138, ptr noundef nonnull %208) #9
  tail call void @Perl_sv_catpv(ptr noundef %138, ptr noundef nonnull @.str.86) #9
  br label %209

209:                                              ; preds = %207, %206
  br i1 %204, label %210, label %211

210:                                              ; preds = %209
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %138, ptr noundef nonnull @.str.87, i64 noundef %189) #9
  br label %234

211:                                              ; preds = %209
  %212 = sext i16 %202 to i64
  %213 = getelementptr inbounds [0 x i8], ptr @PL_op_private_labels, i64 0, i64 %212
  tail call void @Perl_sv_catpv(ptr noundef %138, ptr noundef nonnull %213) #9
  br label %234

214:                                              ; preds = %139
  %215 = zext i16 %140 to i32
  %216 = zext nneg i16 %146 to i32
  %217 = shl nuw nsw i32 1, %216
  %218 = and i32 %217, %215
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %234, label %220

220:                                              ; preds = %214
  %221 = zext nneg i16 %147 to i64
  %222 = getelementptr inbounds [0 x i8], ptr @PL_op_private_labels, i64 0, i64 %221
  %223 = load i8, ptr %222, align 1, !tbaa !44
  %224 = icmp eq i8 %223, 45
  br i1 %224, label %225, label %231

225:                                              ; preds = %220
  %226 = add nuw nsw i16 %147, 1
  %227 = zext nneg i16 %226 to i64
  %228 = getelementptr inbounds [0 x i8], ptr @PL_op_private_labels, i64 0, i64 %227
  %229 = load i8, ptr %228, align 1, !tbaa !44
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %234, label %231

231:                                              ; preds = %225, %220
  %232 = trunc i32 %217 to i16
  %233 = sub i16 %140, %232
  tail call void @Perl_sv_catpv(ptr noundef %138, ptr noundef nonnull @.str.85) #9
  tail call void @Perl_sv_catpv(ptr noundef %138, ptr noundef nonnull %222) #9
  br label %234

234:                                              ; preds = %179, %201, %211, %210, %231, %225, %214
  %235 = phi i16 [ %140, %225 ], [ %233, %231 ], [ %140, %214 ], [ %140, %179 ], [ %186, %201 ], [ %186, %211 ], [ %186, %210 ]
  %236 = add i16 %141, 1
  %237 = icmp eq i16 %148, 0
  br i1 %237, label %139, label %238, !llvm.loop !117

238:                                              ; preds = %234
  %239 = icmp eq i16 %235, 0
  br i1 %239, label %242, label %240

240:                                              ; preds = %238
  tail call void @Perl_sv_catpv(ptr noundef %138, ptr noundef nonnull @.str.85) #9
  %241 = zext i16 %235 to i64
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %138, ptr noundef nonnull @.str.87, i64 noundef %241) #9
  br label %242

242:                                              ; preds = %238, %240, %129
  %243 = phi ptr [ null, %129 ], [ %138, %240 ], [ %138, %238 ]
  %244 = phi i16 [ %130, %129 ], [ %235, %240 ], [ %235, %238 ]
  %245 = icmp eq ptr %243, null
  br i1 %245, label %255, label %246

246:                                              ; preds = %242
  %247 = load ptr, ptr %243, align 8, !tbaa !53
  %248 = getelementptr inbounds %struct.xpv, ptr %247, i64 0, i32 2
  %249 = load i64, ptr %248, align 8, !tbaa !56
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %255, label %251

251:                                              ; preds = %246
  %252 = getelementptr inbounds %struct.sv, ptr %243, i64 0, i32 3
  %253 = load ptr, ptr %252, align 8, !tbaa !44
  %254 = getelementptr inbounds i8, ptr %253, i64 1
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.88, ptr noundef nonnull %254)
  br label %257

255:                                              ; preds = %246, %242
  %256 = zext i16 %244 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.89, i64 noundef %256)
  br label %257

257:                                              ; preds = %251, %255, %125
  switch i16 %9, label %522 [
    i16 136, label %258
    i16 6, label %258
    i16 7, label %258
    i16 153, label %292
    i16 5, label %306
    i16 341, label %306
    i16 210, label %306
    i16 211, label %306
    i16 212, label %306
    i16 213, label %306
    i16 0, label %310
    i16 193, label %314
    i16 194, label %314
    i16 201, label %479
    i16 180, label %506
    i16 173, label %506
    i16 172, label %506
    i16 170, label %506
    i16 177, label %506
    i16 176, label %506
    i16 13, label %515
    i16 31, label %515
    i16 32, label %515
    i16 33, label %515
    i16 197, label %516
    i16 343, label %516
    i16 186, label %516
    i16 187, label %516
    i16 236, label %516
    i16 198, label %516
  ]

258:                                              ; preds = %257, %257, %257
  %259 = load i8, ptr %56, align 2, !tbaa !113
  %260 = icmp sgt i8 %259, -1
  br i1 %260, label %261, label %522

261:                                              ; preds = %258
  %262 = getelementptr inbounds %struct.svop, ptr %2, i64 0, i32 7
  %263 = load ptr, ptr %262, align 8, !tbaa !118
  %264 = icmp eq ptr %263, null
  br i1 %264, label %291, label %265

265:                                              ; preds = %261
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #9
  %266 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #9
  %267 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #9
  %268 = load ptr, ptr %262, align 8, !tbaa !118
  tail call void @Perl_gv_fullname4(ptr noundef %266, ptr noundef %268, ptr noundef null, i1 noundef zeroext true) #9
  %269 = getelementptr inbounds %struct.sv, ptr %266, i64 0, i32 2
  %270 = load i32, ptr %269, align 4, !tbaa !60
  %271 = and i32 %270, 2098176
  %272 = icmp eq i32 %271, 1024
  br i1 %272, label %273, label %279

273:                                              ; preds = %265
  %274 = load ptr, ptr %266, align 8, !tbaa !53
  %275 = getelementptr inbounds %struct.xpv, ptr %274, i64 0, i32 2
  %276 = load i64, ptr %275, align 8, !tbaa !56
  store i64 %276, ptr %4, align 8, !tbaa !40
  %277 = getelementptr inbounds %struct.sv, ptr %266, i64 0, i32 3
  %278 = load ptr, ptr %277, align 8, !tbaa !44
  br label %281

279:                                              ; preds = %265
  %280 = call ptr @Perl_sv_2pv_flags(ptr noundef %266, ptr noundef nonnull %4, i32 noundef 34) #9
  br label %281

281:                                              ; preds = %279, %273
  %282 = phi ptr [ %278, %273 ], [ %280, %279 ]
  %283 = load i64, ptr %4, align 8, !tbaa !40
  %284 = mul i64 %283, 17
  %285 = add i64 %284, 1
  %286 = load i32, ptr %269, align 4, !tbaa !60
  %287 = lshr i32 %286, 21
  %288 = and i32 %287, 256
  %289 = or disjoint i32 %288, 66560
  %290 = call ptr @Perl_pv_escape(ptr noundef %267, ptr noundef %282, i64 noundef %283, i64 noundef %285, ptr noundef null, i32 noundef %289)
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.90, ptr noundef %290)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #9
  br label %522

291:                                              ; preds = %261
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.91)
  br label %522

292:                                              ; preds = %257
  %293 = getelementptr inbounds %struct.unop_aux, ptr %2, i64 0, i32 8
  %294 = load ptr, ptr %293, align 8, !tbaa !120
  %295 = getelementptr inbounds %union.UNOP_AUX_item, ptr %294, i64 -1
  %296 = load i64, ptr %295, align 8, !tbaa !44
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.92)
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %306, label %298

298:                                              ; preds = %292
  %299 = add nsw i32 %0, 2
  br label %300

300:                                              ; preds = %298, %300
  %301 = phi i64 [ 0, %298 ], [ %304, %300 ]
  %302 = getelementptr inbounds %union.UNOP_AUX_item, ptr %294, i64 %301
  %303 = load i64, ptr %302, align 8, !tbaa !44
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %299, ptr noundef %1, ptr noundef nonnull @.str.93, i64 noundef %301, i64 noundef %303)
  %304 = add nuw i64 %301, 1
  %305 = icmp eq i64 %304, %296
  br i1 %305, label %306, label %300, !llvm.loop !122

306:                                              ; preds = %300, %292, %257, %257, %257, %257, %257, %257
  %307 = getelementptr inbounds %struct.svop, ptr %2, i64 0, i32 7
  %308 = load ptr, ptr %307, align 8, !tbaa !118
  %309 = tail call ptr @Perl_sv_peek(ptr noundef %308)
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.94, ptr noundef %309)
  br label %522

310:                                              ; preds = %257
  %311 = load i64, ptr %46, align 8, !tbaa !112
  %312 = add i64 %311, -193
  %313 = icmp ult i64 %312, 2
  br i1 %313, label %314, label %522

314:                                              ; preds = %257, %310, %257
  %315 = getelementptr inbounds %struct.cop, ptr %2, i64 0, i32 7
  %316 = load i32, ptr %315, align 4, !tbaa !123
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %320, label %318

318:                                              ; preds = %314
  %319 = zext i32 %316 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.95, i64 noundef %319)
  br label %320

320:                                              ; preds = %318, %314
  %321 = getelementptr inbounds %struct.cop, ptr %2, i64 0, i32 8
  %322 = load ptr, ptr %321, align 8, !tbaa !125
  %323 = icmp eq ptr %322, null
  br i1 %323, label %462, label %324

324:                                              ; preds = %320
  %325 = getelementptr inbounds %struct.hv, ptr %322, i64 0, i32 2
  %326 = load i32, ptr %325, align 4, !tbaa !126
  %327 = and i32 %326, 33554432
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %462, label %329

329:                                              ; preds = %324
  %330 = getelementptr inbounds %struct.hv, ptr %322, i64 0, i32 3
  %331 = load ptr, ptr %330, align 8, !tbaa !44
  %332 = load ptr, ptr %322, align 8, !tbaa !79
  %333 = getelementptr inbounds %struct.xpvhv, ptr %332, i64 0, i32 3
  %334 = load i64, ptr %333, align 8, !tbaa !81
  %335 = getelementptr ptr, ptr %331, i64 %334
  %336 = getelementptr ptr, ptr %335, i64 1
  %337 = load ptr, ptr %336, align 8, !tbaa !44
  %338 = icmp eq ptr %337, null
  br i1 %338, label %462, label %339

339:                                              ; preds = %329
  %340 = getelementptr i8, ptr %335, i64 36
  %341 = load i32, ptr %340, align 4, !tbaa !127
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %346, label %343

343:                                              ; preds = %339
  %344 = load ptr, ptr %337, align 8, !tbaa !62
  %345 = icmp eq ptr %344, null
  br i1 %345, label %462, label %346

346:                                              ; preds = %339, %343
  %347 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #9
  %348 = load ptr, ptr %321, align 8, !tbaa !125
  %349 = getelementptr inbounds %struct.hv, ptr %348, i64 0, i32 2
  %350 = load i32, ptr %349, align 4, !tbaa !126
  %351 = and i32 %350, 33554432
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %374, label %353

353:                                              ; preds = %346
  %354 = getelementptr inbounds %struct.hv, ptr %348, i64 0, i32 3
  %355 = load ptr, ptr %354, align 8, !tbaa !44
  %356 = load ptr, ptr %348, align 8, !tbaa !79
  %357 = getelementptr inbounds %struct.xpvhv, ptr %356, i64 0, i32 3
  %358 = load i64, ptr %357, align 8, !tbaa !81
  %359 = getelementptr ptr, ptr %355, i64 %358
  %360 = getelementptr ptr, ptr %359, i64 1
  %361 = load ptr, ptr %360, align 8, !tbaa !44
  %362 = icmp eq ptr %361, null
  br i1 %362, label %374, label %363

363:                                              ; preds = %353
  %364 = getelementptr i8, ptr %359, i64 36
  %365 = load i32, ptr %364, align 4, !tbaa !127
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %370, label %367

367:                                              ; preds = %363
  %368 = load ptr, ptr %361, align 8, !tbaa !62
  %369 = icmp eq ptr %368, null
  br i1 %369, label %374, label %370

370:                                              ; preds = %363, %367
  %371 = phi ptr [ %360, %363 ], [ %361, %367 ]
  %372 = load ptr, ptr %371, align 8, !tbaa !44
  %373 = getelementptr inbounds %struct.hek, ptr %372, i64 0, i32 2
  br label %374

374:                                              ; preds = %346, %353, %367, %370
  %375 = phi ptr [ %373, %370 ], [ null, %367 ], [ null, %353 ], [ null, %346 ]
  br i1 %352, label %399, label %376

376:                                              ; preds = %374
  %377 = getelementptr inbounds %struct.hv, ptr %348, i64 0, i32 3
  %378 = load ptr, ptr %377, align 8, !tbaa !44
  %379 = load ptr, ptr %348, align 8, !tbaa !79
  %380 = getelementptr inbounds %struct.xpvhv, ptr %379, i64 0, i32 3
  %381 = load i64, ptr %380, align 8, !tbaa !81
  %382 = getelementptr ptr, ptr %378, i64 %381
  %383 = getelementptr ptr, ptr %382, i64 1
  %384 = load ptr, ptr %383, align 8, !tbaa !44
  %385 = icmp eq ptr %384, null
  br i1 %385, label %399, label %386

386:                                              ; preds = %376
  %387 = getelementptr i8, ptr %382, i64 36
  %388 = load i32, ptr %387, align 4, !tbaa !127
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %393, label %390

390:                                              ; preds = %386
  %391 = load ptr, ptr %384, align 8, !tbaa !62
  %392 = icmp eq ptr %391, null
  br i1 %392, label %399, label %393

393:                                              ; preds = %386, %390
  %394 = phi ptr [ %383, %386 ], [ %384, %390 ]
  %395 = load ptr, ptr %394, align 8, !tbaa !44
  %396 = getelementptr inbounds %struct.hek, ptr %395, i64 0, i32 1
  %397 = load i32, ptr %396, align 4, !tbaa !70
  %398 = sext i32 %397 to i64
  br label %399

399:                                              ; preds = %374, %376, %390, %393
  %400 = phi i64 [ %398, %393 ], [ 0, %390 ], [ 0, %376 ], [ 0, %374 ]
  br i1 %352, label %426, label %401

401:                                              ; preds = %399
  %402 = getelementptr inbounds %struct.hv, ptr %348, i64 0, i32 3
  %403 = load ptr, ptr %402, align 8, !tbaa !44
  %404 = load ptr, ptr %348, align 8, !tbaa !79
  %405 = getelementptr inbounds %struct.xpvhv, ptr %404, i64 0, i32 3
  %406 = load i64, ptr %405, align 8, !tbaa !81
  %407 = getelementptr ptr, ptr %403, i64 %406
  %408 = getelementptr ptr, ptr %407, i64 1
  %409 = load ptr, ptr %408, align 8, !tbaa !44
  %410 = icmp eq ptr %409, null
  br i1 %410, label %426, label %411

411:                                              ; preds = %401
  %412 = getelementptr i8, ptr %407, i64 36
  %413 = load i32, ptr %412, align 4, !tbaa !127
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %418, label %415

415:                                              ; preds = %411
  %416 = load ptr, ptr %409, align 8, !tbaa !62
  %417 = icmp eq ptr %416, null
  br i1 %417, label %426, label %418

418:                                              ; preds = %411, %415
  %419 = phi ptr [ %408, %411 ], [ %409, %415 ]
  %420 = load ptr, ptr %419, align 8, !tbaa !44
  %421 = getelementptr inbounds %struct.hek, ptr %420, i64 0, i32 1
  %422 = load i32, ptr %421, align 4, !tbaa !70
  %423 = mul nsw i32 %422, 17
  %424 = add nsw i32 %423, 1
  %425 = sext i32 %424 to i64
  br label %426

426:                                              ; preds = %399, %401, %415, %418
  %427 = phi i64 [ %425, %418 ], [ 1, %415 ], [ 1, %401 ], [ 1, %399 ]
  br i1 %352, label %459, label %428

428:                                              ; preds = %426
  %429 = getelementptr inbounds %struct.hv, ptr %348, i64 0, i32 3
  %430 = load ptr, ptr %429, align 8, !tbaa !44
  %431 = load ptr, ptr %348, align 8, !tbaa !79
  %432 = getelementptr inbounds %struct.xpvhv, ptr %431, i64 0, i32 3
  %433 = load i64, ptr %432, align 8, !tbaa !81
  %434 = getelementptr ptr, ptr %430, i64 %433
  %435 = getelementptr ptr, ptr %434, i64 1
  %436 = load ptr, ptr %435, align 8, !tbaa !44
  %437 = icmp eq ptr %436, null
  br i1 %437, label %459, label %438

438:                                              ; preds = %428
  %439 = getelementptr i8, ptr %434, i64 36
  %440 = load i32, ptr %439, align 4, !tbaa !127
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %445, label %442

442:                                              ; preds = %438
  %443 = load ptr, ptr %436, align 8, !tbaa !62
  %444 = icmp eq ptr %443, null
  br i1 %444, label %459, label %445

445:                                              ; preds = %438, %442
  %446 = phi ptr [ %435, %438 ], [ %436, %442 ]
  %447 = load ptr, ptr %446, align 8, !tbaa !44
  %448 = getelementptr inbounds %struct.hek, ptr %447, i64 0, i32 2
  %449 = getelementptr inbounds %struct.hek, ptr %447, i64 0, i32 1
  %450 = load i32, ptr %449, align 4, !tbaa !70
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i8, ptr %448, i64 %451
  %453 = getelementptr inbounds i8, ptr %452, i64 1
  %454 = load i8, ptr %453, align 1, !tbaa !44
  %455 = and i8 %454, 1
  %456 = zext nneg i8 %455 to i32
  %457 = shl nuw nsw i32 %456, 8
  %458 = or disjoint i32 %457, 66560
  br label %459

459:                                              ; preds = %426, %428, %442, %445
  %460 = phi i32 [ %458, %445 ], [ 66560, %442 ], [ 66560, %428 ], [ 66560, %426 ]
  %461 = tail call ptr @Perl_pv_escape(ptr noundef %347, ptr noundef %375, i64 noundef %400, i64 noundef %427, ptr noundef null, i32 noundef %460)
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.96, ptr noundef %461)
  br label %462

462:                                              ; preds = %320, %324, %329, %343, %459
  %463 = tail call ptr @Perl_cop_fetch_label(ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #9
  %464 = icmp eq ptr %463, null
  br i1 %464, label %476, label %465

465:                                              ; preds = %462
  %466 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  %467 = call ptr @Perl_cop_fetch_label(ptr noundef nonnull %2, ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  %468 = load i64, ptr %5, align 8, !tbaa !40
  %469 = mul i64 %468, 17
  %470 = add i64 %469, 1
  %471 = load i32, ptr %6, align 4, !tbaa !47
  %472 = lshr i32 %471, 21
  %473 = and i32 %472, 256
  %474 = or disjoint i32 %473, 66560
  %475 = call ptr @Perl_pv_escape(ptr noundef %466, ptr noundef %467, i64 noundef %468, i64 noundef %470, ptr noundef null, i32 noundef %474)
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.97, ptr noundef %475)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  br label %476

476:                                              ; preds = %465, %462
  %477 = getelementptr inbounds %struct.cop, ptr %2, i64 0, i32 11
  %478 = load i32, ptr %477, align 4, !tbaa !129
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.98, i32 noundef %478)
  br label %522

479:                                              ; preds = %257
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.99)
  %480 = getelementptr inbounds %struct.loop, ptr %2, i64 0, i32 9
  %481 = load ptr, ptr %480, align 8, !tbaa !130
  %482 = icmp eq ptr %481, null
  br i1 %482, label %486, label %483

483:                                              ; preds = %479
  %484 = tail call fastcc i64 @S_sequence_num(ptr noundef nonnull %481)
  %485 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.71, i64 noundef %484) #9
  br label %488

486:                                              ; preds = %479
  %487 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.100) #9
  br label %488

488:                                              ; preds = %486, %483
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.101)
  %489 = getelementptr inbounds %struct.loop, ptr %2, i64 0, i32 10
  %490 = load ptr, ptr %489, align 8, !tbaa !132
  %491 = icmp eq ptr %490, null
  br i1 %491, label %495, label %492

492:                                              ; preds = %488
  %493 = tail call fastcc i64 @S_sequence_num(ptr noundef nonnull %490)
  %494 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.71, i64 noundef %493) #9
  br label %497

495:                                              ; preds = %488
  %496 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.100) #9
  br label %497

497:                                              ; preds = %495, %492
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.102)
  %498 = getelementptr inbounds %struct.loop, ptr %2, i64 0, i32 11
  %499 = load ptr, ptr %498, align 8, !tbaa !133
  %500 = icmp eq ptr %499, null
  br i1 %500, label %504, label %501

501:                                              ; preds = %497
  %502 = tail call fastcc i64 @S_sequence_num(ptr noundef nonnull %499)
  %503 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.71, i64 noundef %502) #9
  br label %522

504:                                              ; preds = %497
  %505 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.100) #9
  br label %522

506:                                              ; preds = %257, %257, %257, %257, %257, %257
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.103)
  %507 = getelementptr inbounds %struct.logop, ptr %2, i64 0, i32 8
  %508 = load ptr, ptr %507, align 8, !tbaa !134
  %509 = icmp eq ptr %508, null
  br i1 %509, label %513, label %510

510:                                              ; preds = %506
  %511 = tail call fastcc i64 @S_sequence_num(ptr noundef nonnull %508)
  %512 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.71, i64 noundef %511) #9
  br label %522

513:                                              ; preds = %506
  %514 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.100) #9
  br label %522

515:                                              ; preds = %257, %257, %257, %257
  tail call void @Perl_do_pmop_dump(i32 noundef %10, ptr noundef %1, ptr noundef nonnull %2)
  br label %522

516:                                              ; preds = %257, %257, %257, %257, %257, %257
  %517 = load i8, ptr %126, align 1, !tbaa !114
  %518 = and i8 %517, 64
  %519 = icmp eq i8 %518, 0
  br i1 %519, label %522, label %520

520:                                              ; preds = %516
  %521 = load i64, ptr %46, align 8, !tbaa !112
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %10, ptr noundef %1, ptr noundef nonnull @.str.104, i64 noundef %521)
  br label %522

522:                                              ; preds = %310, %258, %257, %516, %520, %510, %513, %501, %504, %291, %281, %515, %476, %306
  %523 = load i8, ptr %56, align 2, !tbaa !113
  %524 = and i8 %523, 4
  %525 = icmp eq i8 %524, 0
  br i1 %525, label %535, label %526

526:                                              ; preds = %522
  %527 = getelementptr inbounds %struct.unop, ptr %2, i64 0, i32 7
  %528 = load ptr, ptr %527, align 8, !tbaa !62
  %529 = icmp eq ptr %528, null
  br i1 %529, label %535, label %530

530:                                              ; preds = %526, %530
  %531 = phi ptr [ %533, %530 ], [ %528, %526 ]
  call void @Perl_do_op_dump(i32 noundef %10, ptr noundef %1, ptr noundef nonnull %531)
  %532 = getelementptr inbounds %struct.op, ptr %531, i64 0, i32 1
  %533 = load ptr, ptr %532, align 8, !tbaa !62
  %534 = icmp eq ptr %533, null
  br i1 %534, label %535, label %530, !llvm.loop !136

535:                                              ; preds = %530, %526, %522
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.50)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_pmop_dump(ptr noundef %0) local_unnamed_addr #0 !prof !59 {
  %2 = tail call ptr @Perl_PerlIO_stderr() #9
  tail call void @Perl_do_pmop_dump(i32 noundef 0, ptr noundef %2, ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i64 @S_sequence_num(ptr noundef %0) unnamed_addr #0 !prof !59 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  %3 = icmp eq ptr %0, null
  br i1 %3, label %53, label %4

4:                                                ; preds = %1
  %5 = ptrtoint ptr %0 to i64
  %6 = tail call ptr @Perl_newSVuv(i64 noundef %5) #9
  %7 = tail call ptr @Perl_sv_2mortal(ptr noundef %6) #9
  %8 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !60
  %10 = and i32 %9, 2098176
  %11 = icmp eq i32 %10, 1024
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load ptr, ptr %6, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.xpv, ptr %13, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !56
  store i64 %15, ptr %2, align 8, !tbaa !40
  %16 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  br label %20

18:                                               ; preds = %4
  %19 = call ptr @Perl_sv_2pv_flags(ptr noundef %6, ptr noundef nonnull %2, i32 noundef 34) #9
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi ptr [ %17, %12 ], [ %19, %18 ]
  %22 = load ptr, ptr @PL_op_sequence, align 8, !tbaa !62
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call ptr @Perl_newSV_type(i32 noundef 12) #9
  store ptr %25, ptr @PL_op_sequence, align 8, !tbaa !62
  br label %26

26:                                               ; preds = %24, %20
  %27 = load ptr, ptr @PL_op_sequence, align 8, !tbaa !62
  %28 = load i64, ptr %2, align 8, !tbaa !40
  %29 = trunc i64 %28 to i32
  %30 = call ptr @Perl_hv_common_key_len(ptr noundef %27, ptr noundef %21, i32 noundef %29, i32 noundef 32, ptr noundef null, i32 noundef 0) #9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %30, align 8, !tbaa !62
  %34 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !60
  %36 = and i32 %35, -2145386240
  %37 = icmp eq i32 %36, -2147483392
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load ptr, ptr %33, align 8, !tbaa !53
  %40 = getelementptr inbounds %struct.xpvuv, ptr %39, i64 0, i32 4
  %41 = load i64, ptr %40, align 8, !tbaa !44
  br label %53

42:                                               ; preds = %32
  %43 = call i64 @Perl_sv_2uv_flags(ptr noundef %33, i32 noundef 2) #9
  br label %53

44:                                               ; preds = %26
  %45 = load ptr, ptr @PL_op_sequence, align 8, !tbaa !62
  %46 = load i64, ptr %2, align 8, !tbaa !40
  %47 = trunc i64 %46 to i32
  %48 = load i64, ptr @PL_op_seq, align 8, !tbaa !40
  %49 = add i64 %48, 1
  store i64 %49, ptr @PL_op_seq, align 8, !tbaa !40
  %50 = call ptr @Perl_newSVuv(i64 noundef %49) #9
  %51 = call ptr @Perl_hv_common_key_len(ptr noundef %45, ptr noundef %21, i32 noundef %47, i32 noundef 36, ptr noundef %50, i32 noundef 0) #9
  %52 = load i64, ptr @PL_op_seq, align 8, !tbaa !40
  br label %53

53:                                               ; preds = %38, %42, %1, %44
  %54 = phi i64 [ %52, %44 ], [ 0, %1 ], [ %41, %38 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret i64 %54
}

declare ptr @Perl_custom_op_get_field(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Perl_cop_fetch_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_gv_dump(ptr noundef %0) local_unnamed_addr #0 !prof !59 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  %3 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #9
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call ptr @Perl_PerlIO_stderr() #9
  %7 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %6, ptr noundef nonnull @.str.41) #9
  br label %67

8:                                                ; preds = %1
  %9 = tail call ptr @Perl_sv_newmortal() #9
  %10 = tail call ptr @Perl_PerlIO_stderr() #9
  %11 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %10, ptr noundef nonnull @.str.42) #9
  tail call void @Perl_gv_fullname4(ptr noundef %9, ptr noundef nonnull %0, ptr noundef null, i1 noundef zeroext true) #9
  %12 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !60
  %14 = and i32 %13, 2098176
  %15 = icmp eq i32 %14, 1024
  br i1 %15, label %16, label %22

16:                                               ; preds = %8
  %17 = load ptr, ptr %9, align 8, !tbaa !53
  %18 = getelementptr inbounds %struct.xpv, ptr %17, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !56
  store i64 %19, ptr %2, align 8, !tbaa !40
  %20 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  br label %24

22:                                               ; preds = %8
  %23 = call ptr @Perl_sv_2pv_flags(ptr noundef %9, ptr noundef nonnull %2, i32 noundef 34) #9
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi ptr [ %21, %16 ], [ %23, %22 ]
  %26 = call ptr @Perl_PerlIO_stderr() #9
  %27 = load i64, ptr %2, align 8, !tbaa !40
  %28 = mul i64 %27, 17
  %29 = add i64 %28, 1
  %30 = load i32, ptr %12, align 4, !tbaa !60
  %31 = lshr i32 %30, 21
  %32 = and i32 %31, 256
  %33 = or disjoint i32 %32, 66560
  %34 = call ptr @Perl_pv_escape(ptr noundef %3, ptr noundef %25, i64 noundef %27, i64 noundef %29, ptr noundef null, i32 noundef %33)
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef 1, ptr noundef %26, ptr noundef nonnull @.str.105, ptr noundef %34)
  %35 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !44
  %37 = getelementptr inbounds %struct.gp, ptr %36, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !137
  %39 = icmp eq ptr %38, %0
  br i1 %39, label %63, label %40

40:                                               ; preds = %24
  call void @Perl_gv_efullname4(ptr noundef %9, ptr noundef %38, ptr noundef null, i1 noundef zeroext true) #9
  %41 = load i32, ptr %12, align 4, !tbaa !60
  %42 = and i32 %41, 2098176
  %43 = icmp eq i32 %42, 1024
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load ptr, ptr %9, align 8, !tbaa !53
  %46 = getelementptr inbounds %struct.xpv, ptr %45, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !56
  store i64 %47, ptr %2, align 8, !tbaa !40
  %48 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !44
  br label %52

50:                                               ; preds = %40
  %51 = call ptr @Perl_sv_2pv_flags(ptr noundef %9, ptr noundef nonnull %2, i32 noundef 34) #9
  br label %52

52:                                               ; preds = %50, %44
  %53 = phi ptr [ %49, %44 ], [ %51, %50 ]
  %54 = call ptr @Perl_PerlIO_stderr() #9
  %55 = load i64, ptr %2, align 8, !tbaa !40
  %56 = mul i64 %55, 17
  %57 = add i64 %56, 1
  %58 = load i32, ptr %12, align 4, !tbaa !60
  %59 = lshr i32 %58, 21
  %60 = and i32 %59, 256
  %61 = or disjoint i32 %60, 66560
  %62 = call ptr @Perl_pv_escape(ptr noundef %3, ptr noundef %53, i64 noundef %55, i64 noundef %57, ptr noundef null, i32 noundef %61)
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef 1, ptr noundef %54, ptr noundef nonnull @.str.106, ptr noundef %62)
  br label %63

63:                                               ; preds = %52, %24
  %64 = call ptr @Perl_PerlIO_stderr() #9
  %65 = call i32 @PerlIO_putc(ptr noundef %64, i32 noundef 10) #9
  %66 = call ptr @Perl_PerlIO_stderr() #9
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef 0, ptr noundef %66, ptr noundef nonnull @.str.50)
  br label %67

67:                                               ; preds = %63, %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret void
}

declare void @Perl_gv_efullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare i32 @PerlIO_putc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_do_magic_dump(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6) local_unnamed_addr #0 !prof !59 {
  %8 = icmp eq ptr %2, null
  br i1 %8, label %211, label %9

9:                                                ; preds = %7, %208
  %10 = phi ptr [ %209, %208 ], [ %2, %7 ]
  %11 = ptrtoint ptr %10 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.107, i64 noundef %11)
  %12 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !138
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %9
  %16 = icmp uge ptr %13, @PL_magic_vtables
  %17 = icmp ult ptr %13, getelementptr inbounds ([31 x %struct.mgvtbl], ptr @PL_magic_vtables, i64 1, i64 0)
  %18 = select i1 %16, i1 %17, i1 false
  %19 = ptrtoint ptr %13 to i64
  br i1 %18, label %20, label %26

20:                                               ; preds = %15
  %21 = sub i64 %19, ptrtoint (ptr @PL_magic_vtables to i64)
  %22 = lshr exact i64 %21, 6
  %23 = and i64 %22, 4294967295
  %24 = getelementptr inbounds [31 x ptr], ptr @PL_magic_vtable_names, i64 0, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !62
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.108, ptr noundef %25)
  br label %28

26:                                               ; preds = %15
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.109, i64 noundef %19)
  br label %28

27:                                               ; preds = %9
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.110)
  br label %28

28:                                               ; preds = %20, %26, %27
  %29 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 2
  %30 = load i16, ptr %29, align 8, !tbaa !140
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = zext i16 %30 to i32
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.111, i32 noundef %33)
  br label %34

34:                                               ; preds = %32, %28
  %35 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 3
  %36 = load i8, ptr %35, align 2, !tbaa !141
  br label %40

37:                                               ; preds = %40
  %38 = add nuw nsw i64 %41, 1
  %39 = icmp eq i64 %38, 43
  br i1 %39, label %48, label %40, !llvm.loop !142

40:                                               ; preds = %34, %37
  %41 = phi i64 [ 0, %34 ], [ %38, %37 ]
  %42 = getelementptr inbounds [44 x %struct.anon.18], ptr @magic_names, i64 0, i64 %41
  %43 = load i8, ptr %42, align 16, !tbaa !143
  %44 = icmp eq i8 %36, %43
  br i1 %44, label %45, label %37

45:                                               ; preds = %40
  %46 = getelementptr inbounds [44 x %struct.anon.18], ptr @magic_names, i64 0, i64 %41, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !145
  br label %48

48:                                               ; preds = %37, %45
  %49 = phi ptr [ %47, %45 ], [ null, %37 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.112, ptr noundef nonnull %49)
  br label %56

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 3
  %54 = load i8, ptr %53, align 2, !tbaa !141
  %55 = sext i8 %54 to i32
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.113, i32 noundef %55)
  br label %56

56:                                               ; preds = %52, %51
  %57 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 4
  %58 = load i8, ptr %57, align 1, !tbaa !146
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %111, label %60

60:                                               ; preds = %56
  %61 = zext i8 %58 to i32
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.114, i32 noundef %61)
  %62 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 3
  %63 = load i8, ptr %62, align 2, !tbaa !141
  %64 = icmp eq i8 %63, 101
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i8, ptr %57, align 1, !tbaa !146
  %67 = and i8 %66, 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.115)
  br label %70

70:                                               ; preds = %69, %65, %60
  %71 = load i8, ptr %62, align 2, !tbaa !141
  %72 = icmp eq i8 %71, 103
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i8, ptr %57, align 1, !tbaa !146
  %75 = and i8 %74, 1
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.116)
  br label %78

78:                                               ; preds = %77, %73, %70
  %79 = load i8, ptr %57, align 1, !tbaa !146
  %80 = and i8 %79, 2
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.117)
  br label %83

83:                                               ; preds = %82, %78
  %84 = load i8, ptr %57, align 1, !tbaa !146
  %85 = and i8 %84, 4
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.118)
  br label %88

88:                                               ; preds = %87, %83
  %89 = load i8, ptr %57, align 1, !tbaa !146
  %90 = and i8 %89, 8
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.119)
  br label %93

93:                                               ; preds = %92, %88
  %94 = load i8, ptr %57, align 1, !tbaa !146
  %95 = and i8 %94, 16
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.120)
  br label %98

98:                                               ; preds = %97, %93
  %99 = load i8, ptr %57, align 1, !tbaa !146
  %100 = and i8 %99, 32
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.121)
  br label %103

103:                                              ; preds = %102, %98
  %104 = load i8, ptr %62, align 2, !tbaa !141
  %105 = icmp eq i8 %104, 103
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i8, ptr %57, align 1, !tbaa !146
  %108 = and i8 %107, 64
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.122)
  br label %111

111:                                              ; preds = %103, %106, %110, %56
  %112 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 6
  %113 = load ptr, ptr %112, align 8, !tbaa !147
  %114 = icmp eq ptr %113, null
  br i1 %114, label %148, label %115

115:                                              ; preds = %111
  %116 = ptrtoint ptr %113 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.123, i64 noundef %116)
  %117 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 3
  %118 = load i8, ptr %117, align 2, !tbaa !141
  %119 = icmp eq i8 %118, 114
  br i1 %119, label %120, label %140

120:                                              ; preds = %115
  %121 = add nsw i32 %0, 1
  %122 = load ptr, ptr %112, align 8, !tbaa !147
  %123 = tail call ptr @Perl_sv_newmortal() #9
  %124 = getelementptr inbounds %struct.p5rx, ptr %122, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !44
  %126 = getelementptr inbounds %struct.regexp, ptr %125, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !44
  %128 = load ptr, ptr %122, align 8, !tbaa !96
  %129 = getelementptr inbounds %struct.xpv, ptr %128, i64 0, i32 2
  %130 = load i64, ptr %129, align 8, !tbaa !56
  %131 = getelementptr inbounds %struct.p5rx, ptr %122, i64 0, i32 2
  %132 = load i32, ptr %131, align 4, !tbaa !148
  %133 = lshr i32 %132, 21
  %134 = and i32 %133, 256
  %135 = or disjoint i32 %134, 32771
  %136 = tail call ptr @Perl_pv_pretty(ptr noundef %123, ptr noundef %127, i64 noundef %130, i64 noundef 60, ptr noundef null, ptr noundef null, i32 noundef %135)
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %121, ptr noundef %1, ptr noundef nonnull @.str.124, ptr noundef %136)
  %137 = getelementptr inbounds %struct.p5rx, ptr %122, i64 0, i32 1
  %138 = load i32, ptr %137, align 8, !tbaa !149
  %139 = zext i32 %138 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %121, ptr noundef %1, ptr noundef nonnull @.str.125, i64 noundef %139)
  br label %140

140:                                              ; preds = %120, %115
  %141 = load i8, ptr %57, align 1, !tbaa !146
  %142 = and i8 %141, 2
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %140
  %145 = add nsw i32 %0, 2
  %146 = add nsw i32 %3, 1
  %147 = load ptr, ptr %112, align 8, !tbaa !147
  tail call void @Perl_do_sv_dump(i32 noundef %145, ptr noundef %1, ptr noundef %147, i32 noundef %146, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6)
  br label %148

148:                                              ; preds = %140, %144, %111
  %149 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 5
  %150 = load i64, ptr %149, align 8, !tbaa !150
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %148
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.126, i64 noundef %150)
  br label %153

153:                                              ; preds = %152, %148
  %154 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 7
  %155 = load ptr, ptr %154, align 8, !tbaa !151
  %156 = icmp eq ptr %155, null
  br i1 %156, label %191, label %157

157:                                              ; preds = %153
  %158 = ptrtoint ptr %155 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.127, i64 noundef %158)
  %159 = load i64, ptr %149, align 8, !tbaa !150
  %160 = icmp sgt i64 %159, -1
  br i1 %160, label %161, label %177

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 3
  %163 = load i8, ptr %162, align 2, !tbaa !141
  %164 = icmp eq i8 %163, 119
  br i1 %164, label %189, label %165

165:                                              ; preds = %161
  %166 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str, i64 noundef 0) #9
  %167 = load ptr, ptr %154, align 8, !tbaa !151
  %168 = load i64, ptr %149, align 8, !tbaa !150
  %169 = tail call ptr @Perl_pv_display(ptr noundef %166, ptr noundef %167, i64 noundef %168, i64 noundef 0, i64 noundef %6)
  %170 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.128, ptr noundef %169) #9
  %171 = getelementptr inbounds %struct.sv, ptr %166, i64 0, i32 1
  %172 = load i32, ptr %171, align 8, !tbaa !61
  %173 = icmp ugt i32 %172, 1
  br i1 %173, label %174, label %176

174:                                              ; preds = %165
  %175 = add i32 %172, -1
  store i32 %175, ptr %171, align 8, !tbaa !61
  br label %189

176:                                              ; preds = %165
  tail call void @Perl_sv_free2(ptr noundef %166, i32 noundef %172) #9
  br label %189

177:                                              ; preds = %157
  switch i64 %159, label %187 [
    i64 -2, label %178
    i64 -1, label %183
  ]

178:                                              ; preds = %177
  %179 = add nsw i32 %0, 2
  %180 = add nsw i32 %3, 1
  %181 = tail call i32 @PerlIO_puts(ptr noundef %1, ptr noundef nonnull @.str.129) #9
  %182 = load ptr, ptr %154, align 8, !tbaa !151
  tail call void @Perl_do_sv_dump(i32 noundef %179, ptr noundef %1, ptr noundef %182, i32 noundef %180, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6)
  br label %208

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 3
  %185 = load i8, ptr %184, align 2, !tbaa !141
  %186 = icmp eq i8 %185, 119
  br i1 %186, label %189, label %187

187:                                              ; preds = %177, %183
  %188 = tail call i32 @PerlIO_puts(ptr noundef %1, ptr noundef nonnull @.str.130) #9
  br label %189

189:                                              ; preds = %176, %174, %183, %187, %161
  %190 = tail call i32 @PerlIO_putc(ptr noundef %1, i32 noundef 10) #9
  br label %191

191:                                              ; preds = %189, %153
  %192 = getelementptr inbounds %struct.magic, ptr %10, i64 0, i32 3
  %193 = load i8, ptr %192, align 2, !tbaa !141
  %194 = icmp eq i8 %193, 119
  br i1 %194, label %195, label %208

195:                                              ; preds = %191
  %196 = load ptr, ptr %154, align 8, !tbaa !151
  %197 = icmp eq ptr %196, null
  br i1 %197, label %208, label %198

198:                                              ; preds = %195, %198
  %199 = phi i64 [ %206, %198 ], [ 0, %195 ]
  %200 = shl nuw nsw i64 %199, 1
  %201 = getelementptr inbounds i64, ptr %196, i64 %200
  %202 = load i64, ptr %201, align 8, !tbaa !40
  %203 = or disjoint i64 %200, 1
  %204 = getelementptr inbounds i64, ptr %196, i64 %203
  %205 = load i64, ptr %204, align 8, !tbaa !40
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.131, i64 noundef %199, i64 noundef %202, i64 noundef %205)
  %206 = add nuw nsw i64 %199, 1
  %207 = icmp eq i64 %199, 0
  br i1 %207, label %198, label %208, !llvm.loop !152

208:                                              ; preds = %198, %195, %191, %178
  %209 = load ptr, ptr %10, align 8, !tbaa !153
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %9, !llvm.loop !154

211:                                              ; preds = %208, %7
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_do_sv_dump(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6) local_unnamed_addr #0 !prof !59 {
  %8 = alloca [200 x i32], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = icmp eq ptr %2, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.218)
  br label %2105

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !60
  %16 = freeze i32 %15
  %17 = and i32 %16, 255
  %18 = load ptr, ptr %2, align 8, !tbaa !53
  %19 = ptrtoint ptr %18 to i64
  %20 = ptrtoint ptr %2 to i64
  %21 = load i16, ptr @PL_dumpindent, align 2, !tbaa !77
  %22 = zext i16 %21 to i32
  %23 = mul nsw i32 %22, %0
  %24 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !61
  %26 = zext i32 %25 to i64
  %27 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.219, i64 noundef %19, i64 noundef %20, i32 noundef %23, ptr noundef nonnull @.str, i64 noundef %26, i32 noundef %23, ptr noundef nonnull @.str) #9
  %28 = and i32 %16, 262144
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %13
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef nonnull @.str.220) #9
  br label %31

31:                                               ; preds = %30, %13
  %32 = and i32 %16, 131072
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef nonnull @.str.221) #9
  br label %35

35:                                               ; preds = %34, %31
  br label %36

36:                                               ; preds = %35, %45
  %37 = phi i64 [ %46, %45 ], [ 0, %35 ]
  %38 = getelementptr inbounds i8, ptr @first_sv_flags_names, i64 %37
  %39 = load i32, ptr %38, align 16, !tbaa !106
  %40 = and i32 %39, %16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.flag_to_name, ptr %38, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !108
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef %44) #9
  br label %45

45:                                               ; preds = %36, %42
  %46 = add nuw nsw i64 %37, 16
  %47 = icmp ult i64 %37, 112
  br i1 %47, label %36, label %48, !llvm.loop !109

48:                                               ; preds = %45
  %49 = and i32 %16, 2048
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef nonnull @.str.222) #9
  %52 = load i32, ptr %14, align 4, !tbaa !60
  %53 = and i32 %52, -2147481600
  %54 = icmp eq i32 %53, -2147481600
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef nonnull @.str.223) #9
  br label %56

56:                                               ; preds = %51, %55, %48
  %57 = and i32 %16, 268435456
  %58 = icmp ne i32 %57, 0
  %59 = icmp ne i32 %17, 12
  %60 = and i1 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  tail call void @Perl_sv_catpvn_flags(ptr noundef %27, ptr noundef nonnull @.str.224, i64 noundef 6, i32 noundef 2) #9
  br label %62

62:                                               ; preds = %61, %56
  br label %63

63:                                               ; preds = %62, %72
  %64 = phi i64 [ %73, %72 ], [ 0, %62 ]
  %65 = getelementptr inbounds i8, ptr @second_sv_flags_names, i64 %64
  %66 = load i32, ptr %65, align 16, !tbaa !106
  %67 = and i32 %66, %16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.flag_to_name, ptr %65, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !108
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef %71) #9
  br label %72

72:                                               ; preds = %63, %69
  %73 = add nuw nsw i64 %64, 16
  %74 = icmp ult i64 %64, 112
  br i1 %74, label %63, label %75, !llvm.loop !109

75:                                               ; preds = %72
  %76 = and i32 %16, 32768
  %77 = icmp ne i32 %76, 0
  %78 = and i1 %77, %59
  br i1 %78, label %79, label %96

79:                                               ; preds = %75
  %80 = load i32, ptr %14, align 4, !tbaa !60
  %81 = and i32 %80, 49152
  %82 = icmp eq i32 %81, 32768
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = and i32 %80, 255
  %85 = icmp eq i32 %84, 9
  br i1 %85, label %96, label %86

86:                                               ; preds = %83
  %87 = icmp ne i32 %84, 10
  %88 = icmp ne i32 %17, 11
  %89 = and i1 %88, %87
  br i1 %89, label %92, label %96

90:                                               ; preds = %79
  %91 = icmp eq i32 %17, 11
  br i1 %91, label %96, label %92

92:                                               ; preds = %86, %90
  %93 = and i32 %80, 34816
  %94 = icmp eq i32 %93, 34816
  %95 = select i1 %94, ptr @.str.225, ptr @.str.226
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef nonnull %95) #9
  br label %96

96:                                               ; preds = %92, %86, %90, %83, %75
  %97 = trunc i32 %16 to i8
  switch i8 %97, label %190 [
    i8 13, label %98
    i8 14, label %98
    i8 12, label %114
    i8 9, label %126
    i8 10, label %126
    i8 7, label %200
    i8 11, label %211
  ]

98:                                               ; preds = %96, %96
  %99 = load ptr, ptr %2, align 8, !tbaa !53
  %100 = getelementptr inbounds %struct.xpvcv, ptr %99, i64 0, i32 12
  %101 = load i32, ptr %100, align 4, !tbaa !66
  br label %102

102:                                              ; preds = %111, %98
  %103 = phi i64 [ 0, %98 ], [ %112, %111 ]
  %104 = getelementptr inbounds i8, ptr @cv_flags_names, i64 %103
  %105 = load i32, ptr %104, align 16, !tbaa !106
  %106 = and i32 %105, %101
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.flag_to_name, ptr %104, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !108
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef %110) #9
  br label %111

111:                                              ; preds = %102, %108
  %112 = add nuw nsw i64 %103, 16
  %113 = icmp ult i64 %103, 256
  br i1 %113, label %102, label %211, !llvm.loop !109

114:                                              ; preds = %96, %123
  %115 = phi i64 [ %124, %123 ], [ 0, %96 ]
  %116 = getelementptr inbounds i8, ptr @hv_flags_names, i64 %115
  %117 = load i32, ptr %116, align 16, !tbaa !106
  %118 = and i32 %117, %16
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.flag_to_name, ptr %116, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !108
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef %122) #9
  br label %123

123:                                              ; preds = %114, %120
  %124 = add nuw nsw i64 %115, 16
  %125 = icmp ult i64 %115, 64
  br i1 %125, label %114, label %211, !llvm.loop !109

126:                                              ; preds = %96, %96
  %127 = load i32, ptr %14, align 4, !tbaa !60
  %128 = and i32 %127, 49152
  %129 = icmp eq i32 %128, 32768
  br i1 %129, label %130, label %151

130:                                              ; preds = %126
  %131 = and i32 %127, 255
  %132 = add nsw i32 %131, -9
  %133 = icmp ult i32 %132, 2
  br i1 %133, label %134, label %151

134:                                              ; preds = %130
  %135 = load ptr, ptr %2, align 8, !tbaa !53
  %136 = getelementptr inbounds %struct.xpvgv, ptr %135, i64 0, i32 2
  %137 = load i64, ptr %136, align 8, !tbaa !155
  %138 = trunc i64 %137 to i32
  br label %139

139:                                              ; preds = %148, %134
  %140 = phi i64 [ 0, %134 ], [ %149, %148 ]
  %141 = getelementptr inbounds i8, ptr @gp_flags_names, i64 %140
  %142 = load i32, ptr %141, align 16, !tbaa !106
  %143 = and i32 %142, %138
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.flag_to_name, ptr %141, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !108
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef %147) #9
  br label %148

148:                                              ; preds = %139, %145
  %149 = add nuw nsw i64 %140, 16
  %150 = icmp ult i64 %140, 32
  br i1 %150, label %139, label %151, !llvm.loop !109

151:                                              ; preds = %148, %130, %126
  %152 = load i32, ptr %14, align 4, !tbaa !60
  %153 = and i32 %152, 49152
  %154 = icmp eq i32 %153, 32768
  br i1 %154, label %155, label %190

155:                                              ; preds = %151
  %156 = and i32 %152, 255
  %157 = add nsw i32 %156, -9
  %158 = icmp ult i32 %157, 2
  br i1 %158, label %159, label %190

159:                                              ; preds = %155
  %160 = load ptr, ptr %2, align 8, !tbaa !53
  %161 = getelementptr inbounds %struct.xpvgv, ptr %160, i64 0, i32 2
  %162 = load i64, ptr %161, align 8, !tbaa !155
  %163 = and i64 %162, 240
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %190, label %165

165:                                              ; preds = %159
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef nonnull @.str.227) #9
  %166 = load ptr, ptr %2, align 8, !tbaa !53
  %167 = getelementptr inbounds %struct.xpvgv, ptr %166, i64 0, i32 2
  %168 = load i64, ptr %167, align 8, !tbaa !155
  %169 = and i64 %168, 240
  %170 = icmp eq i64 %169, 240
  br i1 %170, label %188, label %171

171:                                              ; preds = %165
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef nonnull @.str.19) #9
  %172 = load ptr, ptr %2, align 8, !tbaa !53
  %173 = getelementptr inbounds %struct.xpvgv, ptr %172, i64 0, i32 2
  %174 = load i64, ptr %173, align 8, !tbaa !155
  %175 = trunc i64 %174 to i32
  br label %176

176:                                              ; preds = %185, %171
  %177 = phi i64 [ 0, %171 ], [ %186, %185 ]
  %178 = getelementptr inbounds i8, ptr @gp_flags_imported_names, i64 %177
  %179 = load i32, ptr %178, align 16, !tbaa !106
  %180 = and i32 %179, %175
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %176
  %183 = getelementptr inbounds %struct.flag_to_name, ptr %178, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !108
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef %184) #9
  br label %185

185:                                              ; preds = %176, %182
  %186 = add nuw nsw i64 %177, 16
  %187 = icmp ult i64 %177, 48
  br i1 %187, label %176, label %188, !llvm.loop !109

188:                                              ; preds = %185, %165, %204
  %189 = phi ptr [ @.str.233, %204 ], [ @.str.228, %165 ], [ @.str.229, %185 ]
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef nonnull %189) #9
  br label %190

190:                                              ; preds = %188, %96, %155, %204, %159, %151
  %191 = load i32, ptr %14, align 4, !tbaa !60
  %192 = and i32 %191, 1073741824
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %190
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef nonnull @.str.230) #9
  br label %195

195:                                              ; preds = %194, %190
  %196 = load i32, ptr %14, align 4, !tbaa !60
  %197 = icmp sgt i32 %196, -1
  %198 = or i1 %50, %197
  br i1 %198, label %211, label %199

199:                                              ; preds = %195
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef nonnull @.str.231) #9
  br label %211

200:                                              ; preds = %96
  %201 = load i32, ptr %14, align 4, !tbaa !60
  %202 = icmp ugt i32 %201, -1073741825
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef nonnull @.str.232) #9
  br label %204

204:                                              ; preds = %203, %200
  %205 = load i32, ptr %14, align 4, !tbaa !60
  %206 = and i32 %205, 1073741824
  %207 = icmp eq i32 %206, 0
  %208 = and i32 %205, 49152
  %209 = icmp eq i32 %208, 49152
  %210 = or i1 %207, %209
  br i1 %210, label %190, label %188

211:                                              ; preds = %123, %111, %96, %195, %199
  br i1 %59, label %212, label %217

212:                                              ; preds = %211
  %213 = load i32, ptr %14, align 4, !tbaa !60
  %214 = and i32 %213, 536870912
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %212
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef nonnull @.str.234) #9
  br label %217

217:                                              ; preds = %216, %212, %211
  %218 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !44
  %220 = load ptr, ptr %27, align 8, !tbaa !53
  %221 = getelementptr inbounds %struct.xpv, ptr %220, i64 0, i32 2
  %222 = load i64, ptr %221, align 8, !tbaa !56
  %223 = getelementptr inbounds i8, ptr %219, i64 %222
  %224 = getelementptr inbounds i8, ptr %223, i64 -1
  %225 = load i8, ptr %224, align 1, !tbaa !44
  %226 = icmp eq i8 %225, 44
  br i1 %226, label %227, label %231

227:                                              ; preds = %217
  %228 = add i64 %222, -1
  store i64 %228, ptr %221, align 8, !tbaa !56
  %229 = load ptr, ptr %218, align 8, !tbaa !44
  %230 = getelementptr inbounds i8, ptr %229, i64 %228
  store i8 0, ptr %230, align 1, !tbaa !44
  br label %231

231:                                              ; preds = %227, %217
  tail call void @Perl_sv_catpv(ptr noundef nonnull %27, ptr noundef nonnull @.str.34) #9
  %232 = load ptr, ptr %218, align 8, !tbaa !44
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.235)
  %233 = icmp ult i32 %17, 16
  %234 = zext nneg i32 %17 to i64
  br i1 %233, label %235, label %247

235:                                              ; preds = %231
  %236 = shl i64 %234, 2
  %237 = call ptr @llvm.load.relative.i64(ptr @reltable.Perl_do_sv_dump, i64 %236)
  %238 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.236, ptr noundef %237, ptr noundef %232) #9
  %239 = icmp eq i32 %17, 0
  br i1 %239, label %240, label %255

240:                                              ; preds = %235
  %241 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 1
  %242 = load i32, ptr %241, align 8, !tbaa !61
  %243 = icmp ugt i32 %242, 1
  br i1 %243, label %244, label %246

244:                                              ; preds = %240
  %245 = add i32 %242, -1
  store i32 %245, ptr %241, align 8, !tbaa !61
  br label %2105

246:                                              ; preds = %240
  tail call void @Perl_sv_free2(ptr noundef %27, i32 noundef %242) #9
  br label %2105

247:                                              ; preds = %231
  %248 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.237, i64 noundef %234, ptr noundef %232) #9
  %249 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 1
  %250 = load i32, ptr %249, align 8, !tbaa !61
  %251 = icmp ugt i32 %250, 1
  br i1 %251, label %252, label %254

252:                                              ; preds = %247
  %253 = add i32 %250, -1
  store i32 %253, ptr %249, align 8, !tbaa !61
  br label %2105

254:                                              ; preds = %247
  tail call void @Perl_sv_free2(ptr noundef %27, i32 noundef %250) #9
  br label %2105

255:                                              ; preds = %235
  %256 = or i32 %16, -16
  %257 = icmp ult i32 %256, -5
  br i1 %257, label %258, label %272

258:                                              ; preds = %255
  switch i32 %17, label %259 [
    i32 1, label %274
    i32 0, label %288
    i32 2, label %288
    i32 3, label %288
    i32 4, label %288
    i32 8, label %288
  ]

259:                                              ; preds = %258
  %260 = load i32, ptr %14, align 4, !tbaa !60
  %261 = and i32 %260, 49152
  %262 = icmp eq i32 %261, 32768
  br i1 %262, label %263, label %267

263:                                              ; preds = %259
  %264 = and i32 %260, 255
  %265 = add nsw i32 %264, -9
  %266 = icmp ult i32 %265, 2
  br i1 %266, label %272, label %267

267:                                              ; preds = %263, %259
  %268 = and i32 %260, 1073741824
  %269 = icmp eq i32 %268, 0
  %270 = icmp eq i32 %261, 49152
  %271 = or i1 %269, %270
  br i1 %271, label %278, label %272

272:                                              ; preds = %267, %263, %255
  %273 = icmp eq i32 %17, 1
  br i1 %273, label %274, label %288

274:                                              ; preds = %258, %272
  %275 = load i32, ptr %14, align 4, !tbaa !60
  %276 = and i32 %275, 2048
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %288

278:                                              ; preds = %274, %267
  %279 = load i32, ptr %14, align 4, !tbaa !60
  %280 = icmp sgt i32 %279, -1
  %281 = load ptr, ptr %2, align 8, !tbaa !53
  %282 = getelementptr inbounds %struct.xpviv, ptr %281, i64 0, i32 4
  %283 = getelementptr inbounds %struct.xpvuv, ptr %281, i64 0, i32 4
  %284 = select i1 %280, ptr %282, ptr %283
  %285 = select i1 %280, ptr @.str.239, ptr @.str.238
  %286 = load i64, ptr %284, align 8, !tbaa !44
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %285, i64 noundef %286)
  %287 = tail call i32 @PerlIO_putc(ptr noundef %1, i32 noundef 10) #9
  br label %288

288:                                              ; preds = %274, %258, %258, %258, %258, %258, %278, %272
  br i1 %257, label %289, label %303

289:                                              ; preds = %288
  switch i32 %17, label %290 [
    i32 2, label %305
    i32 0, label %309
    i32 1, label %309
    i32 3, label %309
    i32 4, label %309
    i32 5, label %309
    i32 8, label %309
  ]

290:                                              ; preds = %289
  %291 = load i32, ptr %14, align 4, !tbaa !60
  %292 = and i32 %291, 49152
  %293 = icmp eq i32 %292, 32768
  br i1 %293, label %294, label %298

294:                                              ; preds = %290
  %295 = and i32 %291, 255
  %296 = add nsw i32 %295, -9
  %297 = icmp ult i32 %296, 2
  br i1 %297, label %303, label %298

298:                                              ; preds = %294, %290
  %299 = and i32 %291, 1073741824
  %300 = icmp eq i32 %299, 0
  %301 = icmp eq i32 %292, 49152
  %302 = or i1 %300, %301
  br i1 %302, label %305, label %309

303:                                              ; preds = %294, %288
  %304 = icmp eq i32 %17, 2
  br i1 %304, label %305, label %309

305:                                              ; preds = %289, %303, %298
  %306 = load ptr, ptr %2, align 8, !tbaa !53
  %307 = getelementptr inbounds %struct.xpvnv, ptr %306, i64 0, i32 5
  %308 = load double, ptr %307, align 8, !tbaa !44
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.240, i32 noundef 15, double noundef %308)
  br label %309

309:                                              ; preds = %298, %289, %289, %289, %289, %289, %289, %305, %303
  %310 = load i32, ptr %14, align 4, !tbaa !60
  %311 = and i32 %310, 2048
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %322, label %313

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %315 = load ptr, ptr %314, align 8, !tbaa !44
  %316 = ptrtoint ptr %315 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.241, i64 noundef %316)
  %317 = icmp slt i32 %3, %4
  br i1 %317, label %318, label %322

318:                                              ; preds = %313
  %319 = add nsw i32 %0, 1
  %320 = load ptr, ptr %314, align 8, !tbaa !44
  %321 = add nsw i32 %3, 1
  tail call void @Perl_do_sv_dump(i32 noundef %319, ptr noundef %1, ptr noundef %320, i32 noundef %321, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6)
  br label %322

322:                                              ; preds = %313, %318, %309
  %323 = icmp ult i32 %17, 3
  br i1 %323, label %324, label %331

324:                                              ; preds = %322
  %325 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 1
  %326 = load i32, ptr %325, align 8, !tbaa !61
  %327 = icmp ugt i32 %326, 1
  br i1 %327, label %328, label %330

328:                                              ; preds = %324
  %329 = add i32 %326, -1
  store i32 %329, ptr %325, align 8, !tbaa !61
  br label %2105

330:                                              ; preds = %324
  tail call void @Perl_sv_free2(ptr noundef %27, i32 noundef %326) #9
  br label %2105

331:                                              ; preds = %322
  %332 = icmp ult i32 %17, 11
  br i1 %332, label %333, label %341

333:                                              ; preds = %331
  %334 = load i32, ptr %14, align 4, !tbaa !60
  %335 = and i32 %334, 49152
  %336 = icmp eq i32 %335, 32768
  br i1 %336, label %337, label %349

337:                                              ; preds = %333
  %338 = and i32 %334, 255
  %339 = add nsw i32 %338, -9
  %340 = icmp ult i32 %339, 2
  br i1 %340, label %341, label %349

341:                                              ; preds = %337, %331
  %342 = icmp eq i32 %17, 15
  br i1 %342, label %343, label %444

343:                                              ; preds = %341
  %344 = load ptr, ptr %2, align 8, !tbaa !53
  %345 = getelementptr inbounds %struct.xpvio, ptr %344, i64 0, i32 17
  %346 = load i8, ptr %345, align 1, !tbaa !157
  %347 = and i8 %346, 64
  %348 = icmp eq i8 %347, 0
  br i1 %348, label %444, label %349

349:                                              ; preds = %337, %343, %333
  %350 = load i32, ptr %14, align 4, !tbaa !60
  %351 = and i32 %350, 255
  %352 = icmp eq i32 %351, 8
  %353 = and i32 %350, 16826623
  %354 = icmp eq i32 %353, 16777226
  %355 = or i1 %352, %354
  br i1 %355, label %356, label %360

356:                                              ; preds = %349
  %357 = getelementptr inbounds %struct.p5rx, ptr %2, i64 0, i32 3
  %358 = load ptr, ptr %357, align 8, !tbaa !44
  %359 = getelementptr inbounds %struct.regexp, ptr %358, i64 0, i32 3
  br label %362

360:                                              ; preds = %349
  %361 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  br label %362

362:                                              ; preds = %360, %356
  %363 = phi ptr [ %359, %356 ], [ %361, %360 ]
  %364 = load ptr, ptr %363, align 8, !tbaa !44
  %365 = icmp eq ptr %364, null
  br i1 %365, label %443, label %366

366:                                              ; preds = %362
  %367 = and i32 %350, 33554432
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %381, label %369

369:                                              ; preds = %366
  %370 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %371 = load ptr, ptr %370, align 8, !tbaa !44
  %372 = getelementptr inbounds i8, ptr %371, i64 -1
  %373 = load i8, ptr %372, align 1, !tbaa !44
  %374 = zext i8 %373 to i64
  %375 = icmp eq i8 %373, 0
  br i1 %375, label %376, label %379

376:                                              ; preds = %369
  %377 = getelementptr inbounds i8, ptr %371, i64 -9
  %378 = load i64, ptr %377, align 1
  br label %379

379:                                              ; preds = %369, %376
  %380 = phi i64 [ %374, %369 ], [ %378, %376 ]
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.242, i64 noundef %380)
  br label %381

381:                                              ; preds = %366, %379
  %382 = phi i64 [ %380, %379 ], [ 0, %366 ]
  %383 = ptrtoint ptr %364 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.243, i64 noundef %383)
  %384 = load i32, ptr %14, align 4, !tbaa !60
  %385 = and i32 %384, 33554432
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %392, label %387

387:                                              ; preds = %381
  %388 = sub i64 0, %382
  %389 = getelementptr inbounds i8, ptr %364, i64 %388
  %390 = tail call ptr @Perl_pv_display(ptr noundef nonnull %27, ptr noundef nonnull %389, i64 noundef %382, i64 noundef 0, i64 noundef %6)
  %391 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.244, ptr noundef %390) #9
  br label %392

392:                                              ; preds = %387, %381
  %393 = icmp eq i32 %17, 4
  br i1 %393, label %394, label %396

394:                                              ; preds = %392
  %395 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.245) #9
  tail call void @Perl__invlist_dump(ptr noundef %1, i32 noundef %0, ptr noundef nonnull @.str.246, ptr noundef nonnull %2) #9
  br label %419

396:                                              ; preds = %392
  %397 = load ptr, ptr %2, align 8, !tbaa !53
  %398 = getelementptr inbounds %struct.xpv, ptr %397, i64 0, i32 2
  %399 = load i64, ptr %398, align 8, !tbaa !56
  br i1 %355, label %403, label %400

400:                                              ; preds = %396
  %401 = getelementptr inbounds %struct.xpv, ptr %397, i64 0, i32 3
  %402 = load i64, ptr %401, align 8, !tbaa !44
  br label %403

403:                                              ; preds = %396, %400
  %404 = phi i64 [ %402, %400 ], [ 0, %396 ]
  %405 = tail call ptr @Perl_pv_display(ptr noundef nonnull %27, ptr noundef nonnull %364, i64 noundef %399, i64 noundef %404, i64 noundef %6)
  %406 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.247, ptr noundef %405) #9
  %407 = load i32, ptr %14, align 4, !tbaa !60
  %408 = and i32 %407, 536870912
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %417, label %410

410:                                              ; preds = %403
  %411 = load ptr, ptr %2, align 8, !tbaa !53
  %412 = getelementptr inbounds %struct.xpv, ptr %411, i64 0, i32 2
  %413 = load i64, ptr %412, align 8, !tbaa !56
  %414 = mul i64 %413, 6
  %415 = tail call ptr @Perl_sv_uni_display(ptr noundef nonnull %27, ptr noundef nonnull %2, i64 noundef %414, i64 noundef 3) #9
  %416 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef %415) #9
  br label %417

417:                                              ; preds = %410, %403
  %418 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.245) #9
  br label %419

419:                                              ; preds = %417, %394
  %420 = load ptr, ptr %2, align 8, !tbaa !53
  %421 = getelementptr inbounds %struct.xpv, ptr %420, i64 0, i32 2
  %422 = load i64, ptr %421, align 8, !tbaa !56
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.248, i64 noundef %422)
  br i1 %355, label %427, label %423

423:                                              ; preds = %419
  %424 = load ptr, ptr %2, align 8, !tbaa !53
  %425 = getelementptr inbounds %struct.xpv, ptr %424, i64 0, i32 3
  %426 = load i64, ptr %425, align 8, !tbaa !44
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.249, i64 noundef %426)
  br label %427

427:                                              ; preds = %423, %419
  %428 = load i32, ptr %14, align 4, !tbaa !60
  %429 = and i32 %428, 268435456
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %444, label %431

431:                                              ; preds = %427
  %432 = load ptr, ptr %2, align 8, !tbaa !53
  %433 = getelementptr inbounds %struct.xpv, ptr %432, i64 0, i32 3
  %434 = load i64, ptr %433, align 8, !tbaa !44
  %435 = icmp eq i64 %434, 0
  br i1 %435, label %444, label %436

436:                                              ; preds = %431
  %437 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %438 = load ptr, ptr %437, align 8, !tbaa !44
  %439 = getelementptr inbounds i8, ptr %438, i64 %434
  %440 = getelementptr inbounds i8, ptr %439, i64 -1
  %441 = load i8, ptr %440, align 1, !tbaa !44
  %442 = zext i8 %441 to i32
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.250, i32 noundef %442)
  br label %444

443:                                              ; preds = %362
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.251)
  br label %444

444:                                              ; preds = %443, %436, %431, %427, %343, %341
  %445 = icmp ugt i32 %17, 6
  br i1 %445, label %446, label %470

446:                                              ; preds = %444
  %447 = load ptr, ptr %2, align 8, !tbaa !53
  %448 = getelementptr inbounds %struct.xpvmg, ptr %447, i64 0, i32 1
  %449 = load ptr, ptr %448, align 8, !tbaa !44
  %450 = icmp eq ptr %449, null
  br i1 %450, label %453, label %451

451:                                              ; preds = %446
  %452 = add nsw i32 %3, 1
  tail call void @Perl_do_magic_dump(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %449, i32 noundef %452, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6)
  br label %453

453:                                              ; preds = %451, %446
  %454 = load ptr, ptr %2, align 8, !tbaa !53
  %455 = load ptr, ptr %454, align 8, !tbaa !159
  %456 = icmp eq ptr %455, null
  br i1 %456, label %458, label %457

457:                                              ; preds = %453
  tail call void @Perl_do_hv_dump(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.252, ptr noundef nonnull %455)
  br label %458

458:                                              ; preds = %457, %453
  switch i32 %17, label %2098 [
    i32 10, label %459
    i32 7, label %459
    i32 11, label %471
    i32 12, label %570
    i32 13, label %1334
    i32 14, label %1443
    i32 8, label %1915
    i32 15, label %1805
    i32 9, label %1703
  ]

459:                                              ; preds = %458, %458
  %460 = load i32, ptr %14, align 4, !tbaa !60
  %461 = and i32 %460, 1073741824
  %462 = icmp eq i32 %461, 0
  %463 = and i32 %460, 49152
  %464 = icmp eq i32 %463, 49152
  %465 = or i1 %462, %464
  br i1 %465, label %470, label %466

466:                                              ; preds = %459
  %467 = load ptr, ptr %2, align 8, !tbaa !53
  %468 = getelementptr inbounds %struct.xpviv, ptr %467, i64 0, i32 4
  %469 = load i64, ptr %468, align 8, !tbaa !44
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.253, i64 noundef %469)
  br label %470

470:                                              ; preds = %459, %466, %444
  switch i32 %17, label %2098 [
    i32 11, label %471
    i32 12, label %570
    i32 13, label %1334
    i32 14, label %1443
    i32 8, label %1915
    i32 15, label %1805
    i32 10, label %1674
    i32 9, label %1703
  ]

471:                                              ; preds = %458, %470
  %472 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %473 = load ptr, ptr %472, align 8, !tbaa !44
  %474 = ptrtoint ptr %473 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.254, i64 noundef %474)
  %475 = load ptr, ptr %472, align 8, !tbaa !44
  %476 = load ptr, ptr %2, align 8, !tbaa !53
  %477 = getelementptr inbounds %struct.xpvav, ptr %476, i64 0, i32 4
  %478 = load ptr, ptr %477, align 8, !tbaa !161
  %479 = icmp eq ptr %475, %478
  br i1 %479, label %490, label %480

480:                                              ; preds = %471
  %481 = ptrtoint ptr %475 to i64
  %482 = ptrtoint ptr %478 to i64
  %483 = sub i64 %481, %482
  %484 = ashr exact i64 %483, 3
  %485 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.255, i64 noundef %484) #9
  %486 = load ptr, ptr %2, align 8, !tbaa !53
  %487 = getelementptr inbounds %struct.xpvav, ptr %486, i64 0, i32 4
  %488 = load ptr, ptr %487, align 8, !tbaa !161
  %489 = ptrtoint ptr %488 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.256, i64 noundef %489)
  br label %492

490:                                              ; preds = %471
  %491 = tail call i32 @PerlIO_putc(ptr noundef %1, i32 noundef 10) #9
  br label %492

492:                                              ; preds = %490, %480
  %493 = load ptr, ptr %2, align 8, !tbaa !53
  %494 = getelementptr inbounds %struct.xpvav, ptr %493, i64 0, i32 2
  %495 = load i64, ptr %494, align 8, !tbaa !163
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.257, i64 noundef %495)
  %496 = load ptr, ptr %2, align 8, !tbaa !53
  %497 = getelementptr inbounds %struct.xpvav, ptr %496, i64 0, i32 3
  %498 = load i64, ptr %497, align 8, !tbaa !164
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.258, i64 noundef %498)
  %499 = load ptr, ptr %2, align 8, !tbaa !53
  %500 = getelementptr inbounds %struct.xpvmg, ptr %499, i64 0, i32 1
  %501 = load ptr, ptr %500, align 8, !tbaa !44
  %502 = icmp eq ptr %501, null
  br i1 %502, label %507, label %503

503:                                              ; preds = %492
  %504 = tail call ptr @Perl_av_arylen_p(ptr noundef nonnull %2) #9
  %505 = load ptr, ptr %504, align 8, !tbaa !62
  %506 = ptrtoint ptr %505 to i64
  br label %507

507:                                              ; preds = %492, %503
  %508 = phi i64 [ %506, %503 ], [ 0, %492 ]
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.259, i64 noundef %508)
  tail call void @Perl_sv_setpvn(ptr noundef nonnull %27, ptr noundef nonnull @.str, i64 noundef 0) #9
  %509 = load i32, ptr %14, align 4, !tbaa !60
  %510 = and i32 %509, 1073741824
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %513, label %512

512:                                              ; preds = %507
  tail call void @Perl_sv_catpv(ptr noundef nonnull %27, ptr noundef nonnull @.str.260) #9
  br label %513

513:                                              ; preds = %512, %507
  %514 = load i32, ptr %14, align 4, !tbaa !60
  %515 = icmp sgt i32 %514, -1
  br i1 %515, label %517, label %516

516:                                              ; preds = %513
  tail call void @Perl_sv_catpv(ptr noundef nonnull %27, ptr noundef nonnull @.str.261) #9
  br label %517

517:                                              ; preds = %516, %513
  %518 = load ptr, ptr %27, align 8, !tbaa !53
  %519 = getelementptr inbounds %struct.xpv, ptr %518, i64 0, i32 2
  %520 = load i64, ptr %519, align 8, !tbaa !56
  %521 = icmp eq i64 %520, 0
  br i1 %521, label %525, label %522

522:                                              ; preds = %517
  %523 = load ptr, ptr %218, align 8, !tbaa !44
  %524 = getelementptr inbounds i8, ptr %523, i64 1
  br label %525

525:                                              ; preds = %517, %522
  %526 = phi ptr [ %524, %522 ], [ @.str, %517 ]
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.262, ptr noundef nonnull %526)
  %527 = icmp slt i32 %3, %4
  br i1 %527, label %528, label %2098

528:                                              ; preds = %525
  %529 = load i32, ptr %14, align 4, !tbaa !60
  %530 = and i32 %529, 8388608
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %535, label %532

532:                                              ; preds = %528
  %533 = tail call i32 @Perl_mg_size(ptr noundef nonnull %2) #9
  %534 = sext i32 %533 to i64
  br label %539

535:                                              ; preds = %528
  %536 = load ptr, ptr %2, align 8, !tbaa !165
  %537 = getelementptr inbounds %struct.xpvav, ptr %536, i64 0, i32 2
  %538 = load i64, ptr %537, align 8, !tbaa !163
  br label %539

539:                                              ; preds = %532, %535
  %540 = phi i64 [ %534, %532 ], [ %538, %535 ]
  %541 = icmp sgt i64 %540, -1
  br i1 %541, label %542, label %2098

542:                                              ; preds = %539
  %543 = sext i32 %4 to i64
  %544 = add nsw i32 %0, 1
  br label %545

545:                                              ; preds = %542, %568
  %546 = phi i64 [ %569, %568 ], [ 0, %542 ]
  %547 = load i32, ptr %14, align 4, !tbaa !60
  %548 = and i32 %547, 8388608
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %553, label %550

550:                                              ; preds = %545
  %551 = tail call i32 @Perl_mg_size(ptr noundef nonnull %2) #9
  %552 = sext i32 %551 to i64
  br label %557

553:                                              ; preds = %545
  %554 = load ptr, ptr %2, align 8, !tbaa !165
  %555 = getelementptr inbounds %struct.xpvav, ptr %554, i64 0, i32 2
  %556 = load i64, ptr %555, align 8, !tbaa !163
  br label %557

557:                                              ; preds = %550, %553
  %558 = phi i64 [ %552, %550 ], [ %556, %553 ]
  %559 = icmp sle i64 %546, %558
  %560 = icmp slt i64 %546, %543
  %561 = and i1 %560, %559
  br i1 %561, label %562, label %2098

562:                                              ; preds = %557
  %563 = tail call ptr @Perl_av_fetch(ptr noundef nonnull %2, i64 noundef %546, i32 noundef 0) #9
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %544, ptr noundef %1, ptr noundef nonnull @.str.263, i64 noundef %546)
  %564 = icmp eq ptr %563, null
  br i1 %564, label %568, label %565

565:                                              ; preds = %562
  %566 = add nsw i32 %3, 1
  %567 = load ptr, ptr %563, align 8, !tbaa !62
  tail call void @Perl_do_sv_dump(i32 noundef %544, ptr noundef %1, ptr noundef %567, i32 noundef %566, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6)
  br label %568

568:                                              ; preds = %565, %562
  %569 = add nuw nsw i64 %546, 1
  br label %545, !llvm.loop !167

570:                                              ; preds = %458, %470
  %571 = load i32, ptr %14, align 4, !tbaa !60
  %572 = and i32 %571, 33554432
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %584, label %574

574:                                              ; preds = %570
  %575 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %576 = load ptr, ptr %575, align 8, !tbaa !44
  %577 = load ptr, ptr %2, align 8, !tbaa !53
  %578 = getelementptr inbounds %struct.xpvhv, ptr %577, i64 0, i32 3
  %579 = load i64, ptr %578, align 8, !tbaa !81
  %580 = getelementptr ptr, ptr %576, i64 %579
  %581 = getelementptr i8, ptr %580, i64 60
  %582 = load i32, ptr %581, align 4, !tbaa !168
  %583 = zext i32 %582 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.264, i64 noundef %583)
  br label %584

584:                                              ; preds = %574, %570
  %585 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %586 = load ptr, ptr %585, align 8, !tbaa !44
  %587 = ptrtoint ptr %586 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.254, i64 noundef %587)
  %588 = load ptr, ptr %2, align 8, !tbaa !53
  %589 = getelementptr inbounds %struct.xpvhv, ptr %588, i64 0, i32 2
  %590 = load i64, ptr %589, align 8, !tbaa !169
  %591 = getelementptr inbounds %struct.xpvmg, ptr %588, i64 0, i32 1
  %592 = load ptr, ptr %591, align 8, !tbaa !44
  %593 = icmp eq ptr %592, null
  br i1 %593, label %596, label %594

594:                                              ; preds = %584
  %595 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %2) #9
  br label %596

596:                                              ; preds = %584, %594
  %597 = phi i32 [ %595, %594 ], [ 0, %584 ]
  %598 = trunc i64 %590 to i32
  %599 = sub i32 %598, %597
  %600 = load ptr, ptr %585, align 8, !tbaa !44
  %601 = icmp ne ptr %600, null
  %602 = icmp ne i32 %599, 0
  %603 = select i1 %601, i1 %602, i1 false
  br i1 %603, label %604, label %690

604:                                              ; preds = %596
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %8) #9
  %605 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.265) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(800) %8, i8 0, i64 800, i1 false)
  %606 = load ptr, ptr %2, align 8, !tbaa !53
  %607 = getelementptr inbounds %struct.xpvhv, ptr %606, i64 0, i32 3
  %608 = load i64, ptr %607, align 8, !tbaa !81
  %609 = load ptr, ptr %585, align 8, !tbaa !44
  br label %616

610:                                              ; preds = %626
  %611 = zext nneg i32 %632 to i64
  %612 = tail call i32 @llvm.umin.i32(i32 %621, i32 199)
  %613 = tail call i32 @llvm.smax.i32(i32 %618, i32 %612)
  %614 = add nuw i32 %613, 1
  %615 = zext i32 %614 to i64
  br label %635

616:                                              ; preds = %604, %626
  %617 = phi i64 [ 0, %604 ], [ %633, %626 ]
  %618 = phi i32 [ 0, %604 ], [ %632, %626 ]
  %619 = getelementptr inbounds ptr, ptr %609, i64 %617
  br label %620

620:                                              ; preds = %620, %616
  %621 = phi i32 [ 0, %616 ], [ %625, %620 ]
  %622 = phi ptr [ %619, %616 ], [ %623, %620 ]
  %623 = load ptr, ptr %622, align 8, !tbaa !62
  %624 = icmp eq ptr %623, null
  %625 = add nuw nsw i32 %621, 1
  br i1 %624, label %626, label %620, !llvm.loop !170

626:                                              ; preds = %620
  %627 = tail call i32 @llvm.umin.i32(i32 %621, i32 199)
  %628 = zext nneg i32 %627 to i64
  %629 = getelementptr inbounds [200 x i32], ptr %8, i64 0, i64 %628
  %630 = load i32, ptr %629, align 4, !tbaa !47
  %631 = add nsw i32 %630, 1
  store i32 %631, ptr %629, align 4, !tbaa !47
  %632 = tail call i32 @llvm.smax.i32(i32 %618, i32 %627)
  %633 = add nuw nsw i64 %617, 1
  %634 = icmp eq i64 %617, %608
  br i1 %634, label %610, label %616, !llvm.loop !171

635:                                              ; preds = %610, %648
  %636 = phi i64 [ 0, %610 ], [ %649, %648 ]
  %637 = getelementptr inbounds [200 x i32], ptr %8, i64 0, i64 %636
  %638 = load i32, ptr %637, align 4, !tbaa !47
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %648, label %640

640:                                              ; preds = %635
  %641 = icmp eq i64 %636, 199
  %642 = select i1 %641, ptr @.str.267, ptr @.str
  %643 = trunc i64 %636 to i32
  %644 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.266, i32 noundef %643, ptr noundef nonnull %642, i32 noundef %638) #9
  %645 = icmp eq i64 %636, %611
  br i1 %645, label %648, label %646

646:                                              ; preds = %640
  %647 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.268) #9
  br label %648

648:                                              ; preds = %635, %646, %640
  %649 = add nuw nsw i64 %636, 1
  %650 = icmp eq i64 %649, %615
  br i1 %650, label %651, label %635, !llvm.loop !172

651:                                              ; preds = %648
  %652 = tail call i32 @PerlIO_putc(ptr noundef %1, i32 noundef 41) #9
  %653 = icmp eq i32 %632, 0
  br i1 %653, label %658, label %654

654:                                              ; preds = %651
  %655 = tail call i32 @llvm.umin.i32(i32 %621, i32 199)
  %656 = tail call i32 @llvm.smax.i32(i32 %618, i32 %655)
  %657 = zext nneg i32 %656 to i64
  br label %661

658:                                              ; preds = %661, %651
  %659 = phi double [ 0.000000e+00, %651 ], [ %670, %661 ]
  %660 = icmp ult i32 %599, 2
  br i1 %660, label %679, label %673

661:                                              ; preds = %654, %661
  %662 = phi i64 [ %657, %654 ], [ %671, %661 ]
  %663 = phi double [ 0.000000e+00, %654 ], [ %670, %661 ]
  %664 = getelementptr inbounds [200 x i32], ptr %8, i64 0, i64 %662
  %665 = load i32, ptr %664, align 4, !tbaa !47
  %666 = trunc i64 %662 to i32
  %667 = mul i32 %666, %666
  %668 = mul i32 %667, %665
  %669 = sitofp i32 %668 to double
  %670 = fadd double %663, %669
  %671 = add nsw i64 %662, -1
  %672 = icmp sgt i64 %662, 1
  br i1 %672, label %661, label %658, !llvm.loop !173

673:                                              ; preds = %658, %673
  %674 = phi i32 [ %677, %673 ], [ 2, %658 ]
  %675 = phi i32 [ %676, %673 ], [ %599, %658 ]
  %676 = lshr i32 %675, 1
  %677 = shl i32 %674, 1
  %678 = icmp ult i32 %675, 4
  br i1 %678, label %679, label %673, !llvm.loop !174

679:                                              ; preds = %673, %658
  %680 = phi i32 [ 2, %658 ], [ %677, %673 ]
  %681 = uitofp i32 %599 to double
  %682 = fadd double %681, -1.000000e+00
  %683 = fmul double %682, %681
  %684 = uitofp i32 %680 to double
  %685 = fdiv double %683, %684
  %686 = fadd double %685, %681
  %687 = tail call i32 @PerlIO_putc(ptr noundef %1, i32 noundef 10) #9
  %688 = fdiv double %686, %659
  %689 = fmul double %688, 1.000000e+02
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.269, double noundef %689)
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %8) #9
  br label %690

690:                                              ; preds = %679, %596
  %691 = tail call i32 @PerlIO_putc(ptr noundef %1, i32 noundef 10) #9
  %692 = zext i32 %599 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.270, i64 noundef %692)
  %693 = load ptr, ptr %585, align 8, !tbaa !44
  %694 = icmp eq ptr %693, null
  br i1 %694, label %714, label %695

695:                                              ; preds = %690
  %696 = load ptr, ptr %2, align 8, !tbaa !53
  %697 = getelementptr inbounds %struct.xpvhv, ptr %696, i64 0, i32 3
  %698 = load i64, ptr %697, align 8, !tbaa !81
  %699 = getelementptr inbounds ptr, ptr %693, i64 %698
  %700 = getelementptr inbounds ptr, ptr %699, i64 1
  %701 = ptrtoint ptr %700 to i64
  %702 = ptrtoint ptr %693 to i64
  %703 = sub i64 %701, %702
  %704 = ashr exact i64 %703, 3
  br label %705

705:                                              ; preds = %705, %695
  %706 = phi ptr [ %693, %695 ], [ %712, %705 ]
  %707 = phi i64 [ %704, %695 ], [ %711, %705 ]
  %708 = load ptr, ptr %706, align 8, !tbaa !62
  %709 = icmp eq ptr %708, null
  %710 = sext i1 %709 to i64
  %711 = add i64 %707, %710
  %712 = getelementptr inbounds ptr, ptr %706, i64 1
  %713 = icmp ugt ptr %712, %699
  br i1 %713, label %714, label %705, !llvm.loop !175

714:                                              ; preds = %705, %690
  %715 = phi i64 [ 0, %690 ], [ %711, %705 ]
  %716 = load i32, ptr %14, align 4, !tbaa !60
  %717 = and i32 %716, 33554432
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %727, label %719

719:                                              ; preds = %714
  %720 = load ptr, ptr %2, align 8, !tbaa !53
  %721 = getelementptr inbounds %struct.xpvhv, ptr %720, i64 0, i32 3
  %722 = load i64, ptr %721, align 8, !tbaa !81
  %723 = getelementptr ptr, ptr %693, i64 %722
  %724 = getelementptr ptr, ptr %723, i64 7
  %725 = load i32, ptr %724, align 8, !tbaa !176
  %726 = zext i32 %725 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.271, i64 noundef %715, i64 noundef %726)
  br label %728

727:                                              ; preds = %714
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.272, i64 noundef %715)
  br label %728

728:                                              ; preds = %727, %719
  %729 = load ptr, ptr %2, align 8, !tbaa !53
  %730 = getelementptr inbounds %struct.xpvhv, ptr %729, i64 0, i32 3
  %731 = load i64, ptr %730, align 8, !tbaa !81
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.258, i64 noundef %731)
  %732 = load i32, ptr %14, align 4, !tbaa !60
  %733 = and i32 %732, 33554432
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %823, label %735

735:                                              ; preds = %728
  %736 = load ptr, ptr %585, align 8, !tbaa !44
  %737 = load ptr, ptr %2, align 8, !tbaa !53
  %738 = getelementptr inbounds %struct.xpvhv, ptr %737, i64 0, i32 3
  %739 = load i64, ptr %738, align 8, !tbaa !81
  %740 = getelementptr ptr, ptr %736, i64 %739
  %741 = getelementptr ptr, ptr %740, i64 4
  %742 = load i32, ptr %741, align 8, !tbaa !177
  %743 = sext i32 %742 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.273, i64 noundef %743)
  %744 = load i32, ptr %14, align 4, !tbaa !60
  %745 = and i32 %744, 33554432
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %755, label %747

747:                                              ; preds = %735
  %748 = load ptr, ptr %585, align 8, !tbaa !44
  %749 = load ptr, ptr %2, align 8, !tbaa !53
  %750 = getelementptr inbounds %struct.xpvhv, ptr %749, i64 0, i32 3
  %751 = load i64, ptr %750, align 8, !tbaa !81
  %752 = getelementptr ptr, ptr %748, i64 %751
  %753 = getelementptr ptr, ptr %752, i64 3
  %754 = load ptr, ptr %753, align 8, !tbaa !178
  br label %755

755:                                              ; preds = %735, %747
  %756 = phi ptr [ %754, %747 ], [ null, %735 ]
  %757 = ptrtoint ptr %756 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.274, i64 noundef %757)
  %758 = load i32, ptr %14, align 4, !tbaa !60
  %759 = and i32 %758, 33554432
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %769, label %761

761:                                              ; preds = %755
  %762 = load ptr, ptr %585, align 8, !tbaa !44
  %763 = load ptr, ptr %2, align 8, !tbaa !53
  %764 = getelementptr inbounds %struct.xpvhv, ptr %763, i64 0, i32 3
  %765 = load i64, ptr %764, align 8, !tbaa !81
  %766 = getelementptr ptr, ptr %762, i64 %765
  %767 = getelementptr ptr, ptr %766, i64 6
  %768 = load i32, ptr %767, align 8, !tbaa !179
  br label %769

769:                                              ; preds = %755, %761
  %770 = phi i32 [ %768, %761 ], [ 0, %755 ]
  %771 = zext i32 %770 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.275, i64 noundef %771)
  %772 = load i32, ptr %14, align 4, !tbaa !60
  %773 = and i32 %772, 33554432
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %783, label %775

775:                                              ; preds = %769
  %776 = load ptr, ptr %585, align 8, !tbaa !44
  %777 = load ptr, ptr %2, align 8, !tbaa !53
  %778 = getelementptr inbounds %struct.xpvhv, ptr %777, i64 0, i32 3
  %779 = load i64, ptr %778, align 8, !tbaa !81
  %780 = getelementptr ptr, ptr %776, i64 %779
  %781 = getelementptr ptr, ptr %780, i64 6
  %782 = load i32, ptr %781, align 8, !tbaa !179
  br label %783

783:                                              ; preds = %769, %775
  %784 = phi i32 [ %782, %775 ], [ 0, %769 ]
  br i1 %774, label %793, label %785

785:                                              ; preds = %783
  %786 = load ptr, ptr %585, align 8, !tbaa !44
  %787 = load ptr, ptr %2, align 8, !tbaa !53
  %788 = getelementptr inbounds %struct.xpvhv, ptr %787, i64 0, i32 3
  %789 = load i64, ptr %788, align 8, !tbaa !81
  %790 = getelementptr ptr, ptr %786, i64 %789
  %791 = getelementptr i8, ptr %790, i64 52
  %792 = load i32, ptr %791, align 4, !tbaa !180
  br label %793

793:                                              ; preds = %783, %785
  %794 = phi i32 [ %792, %785 ], [ 0, %783 ]
  %795 = icmp eq i32 %784, %794
  br i1 %795, label %821, label %796

796:                                              ; preds = %793
  br i1 %774, label %805, label %797

797:                                              ; preds = %796
  %798 = load ptr, ptr %585, align 8, !tbaa !44
  %799 = load ptr, ptr %2, align 8, !tbaa !53
  %800 = getelementptr inbounds %struct.xpvhv, ptr %799, i64 0, i32 3
  %801 = load i64, ptr %800, align 8, !tbaa !81
  %802 = getelementptr ptr, ptr %798, i64 %801
  %803 = getelementptr ptr, ptr %802, i64 4
  %804 = load i32, ptr %803, align 8, !tbaa !177
  br label %805

805:                                              ; preds = %796, %797
  %806 = phi i32 [ %804, %797 ], [ -1, %796 ]
  %807 = icmp eq i32 %806, -1
  br i1 %807, label %821, label %808

808:                                              ; preds = %805
  br i1 %774, label %817, label %809

809:                                              ; preds = %808
  %810 = load ptr, ptr %585, align 8, !tbaa !44
  %811 = load ptr, ptr %2, align 8, !tbaa !53
  %812 = getelementptr inbounds %struct.xpvhv, ptr %811, i64 0, i32 3
  %813 = load i64, ptr %812, align 8, !tbaa !81
  %814 = getelementptr ptr, ptr %810, i64 %813
  %815 = getelementptr i8, ptr %814, i64 52
  %816 = load i32, ptr %815, align 4, !tbaa !180
  br label %817

817:                                              ; preds = %808, %809
  %818 = phi i32 [ %816, %809 ], [ 0, %808 ]
  %819 = zext i32 %818 to i64
  %820 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.276, i64 noundef %819) #9
  br label %821

821:                                              ; preds = %817, %805, %793
  %822 = tail call i32 @PerlIO_putc(ptr noundef %1, i32 noundef 10) #9
  br label %823

823:                                              ; preds = %821, %728
  %824 = tail call ptr @Perl_mg_find(ptr noundef nonnull %2, i32 noundef 58) #9
  %825 = icmp eq ptr %824, null
  br i1 %825, label %832, label %826

826:                                              ; preds = %823
  %827 = getelementptr inbounds %struct.magic, ptr %824, i64 0, i32 6
  %828 = load ptr, ptr %827, align 8, !tbaa !147
  %829 = icmp eq ptr %828, null
  br i1 %829, label %832, label %830

830:                                              ; preds = %826
  %831 = ptrtoint ptr %828 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.277, i64 noundef %831)
  br label %832

832:                                              ; preds = %830, %826, %823
  %833 = load i32, ptr %14, align 4, !tbaa !60
  %834 = and i32 %833, 33554432
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %856, label %836

836:                                              ; preds = %832
  %837 = load ptr, ptr %585, align 8, !tbaa !44
  %838 = load ptr, ptr %2, align 8, !tbaa !53
  %839 = getelementptr inbounds %struct.xpvhv, ptr %838, i64 0, i32 3
  %840 = load i64, ptr %839, align 8, !tbaa !81
  %841 = getelementptr ptr, ptr %837, i64 %840
  %842 = getelementptr ptr, ptr %841, i64 1
  %843 = load ptr, ptr %842, align 8, !tbaa !44
  %844 = icmp eq ptr %843, null
  br i1 %844, label %856, label %845

845:                                              ; preds = %836
  %846 = getelementptr i8, ptr %841, i64 36
  %847 = load i32, ptr %846, align 4, !tbaa !127
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %852, label %849

849:                                              ; preds = %845
  %850 = load ptr, ptr %843, align 8, !tbaa !62
  %851 = icmp eq ptr %850, null
  br i1 %851, label %856, label %852

852:                                              ; preds = %845, %849
  %853 = phi ptr [ %842, %845 ], [ %843, %849 ]
  %854 = load ptr, ptr %853, align 8, !tbaa !44
  %855 = getelementptr inbounds %struct.hek, ptr %854, i64 0, i32 2
  br label %856

856:                                              ; preds = %832, %836, %849, %852
  %857 = phi ptr [ %855, %852 ], [ null, %849 ], [ null, %836 ], [ null, %832 ]
  %858 = icmp eq ptr %857, null
  br i1 %858, label %947, label %859

859:                                              ; preds = %856
  %860 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #9
  %861 = load i32, ptr %14, align 4, !tbaa !60
  %862 = and i32 %861, 33554432
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %885, label %864

864:                                              ; preds = %859
  %865 = load ptr, ptr %585, align 8, !tbaa !44
  %866 = load ptr, ptr %2, align 8, !tbaa !53
  %867 = getelementptr inbounds %struct.xpvhv, ptr %866, i64 0, i32 3
  %868 = load i64, ptr %867, align 8, !tbaa !81
  %869 = getelementptr ptr, ptr %865, i64 %868
  %870 = getelementptr ptr, ptr %869, i64 1
  %871 = load ptr, ptr %870, align 8, !tbaa !44
  %872 = icmp eq ptr %871, null
  br i1 %872, label %885, label %873

873:                                              ; preds = %864
  %874 = getelementptr i8, ptr %869, i64 36
  %875 = load i32, ptr %874, align 4, !tbaa !127
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %880, label %877

877:                                              ; preds = %873
  %878 = load ptr, ptr %871, align 8, !tbaa !62
  %879 = icmp eq ptr %878, null
  br i1 %879, label %885, label %880

880:                                              ; preds = %873, %877
  %881 = phi ptr [ %870, %873 ], [ %871, %877 ]
  %882 = load ptr, ptr %881, align 8, !tbaa !44
  %883 = getelementptr inbounds %struct.hek, ptr %882, i64 0, i32 1
  %884 = load i32, ptr %883, align 4, !tbaa !70
  br label %885

885:                                              ; preds = %859, %864, %877, %880
  %886 = phi i32 [ %884, %880 ], [ 0, %877 ], [ 0, %864 ], [ 0, %859 ]
  %887 = sext i32 %886 to i64
  br i1 %863, label %909, label %888

888:                                              ; preds = %885
  %889 = load ptr, ptr %585, align 8, !tbaa !44
  %890 = load ptr, ptr %2, align 8, !tbaa !53
  %891 = getelementptr inbounds %struct.xpvhv, ptr %890, i64 0, i32 3
  %892 = load i64, ptr %891, align 8, !tbaa !81
  %893 = getelementptr ptr, ptr %889, i64 %892
  %894 = getelementptr ptr, ptr %893, i64 1
  %895 = load ptr, ptr %894, align 8, !tbaa !44
  %896 = icmp eq ptr %895, null
  br i1 %896, label %909, label %897

897:                                              ; preds = %888
  %898 = getelementptr i8, ptr %893, i64 36
  %899 = load i32, ptr %898, align 4, !tbaa !127
  %900 = icmp eq i32 %899, 0
  br i1 %900, label %904, label %901

901:                                              ; preds = %897
  %902 = load ptr, ptr %895, align 8, !tbaa !62
  %903 = icmp eq ptr %902, null
  br i1 %903, label %909, label %904

904:                                              ; preds = %897, %901
  %905 = phi ptr [ %894, %897 ], [ %895, %901 ]
  %906 = load ptr, ptr %905, align 8, !tbaa !44
  %907 = getelementptr inbounds %struct.hek, ptr %906, i64 0, i32 1
  %908 = load i32, ptr %907, align 4, !tbaa !70
  br label %909

909:                                              ; preds = %885, %888, %901, %904
  %910 = phi i32 [ %908, %904 ], [ 0, %901 ], [ 0, %888 ], [ 0, %885 ]
  %911 = mul nsw i32 %910, 17
  %912 = add nsw i32 %911, 1
  %913 = sext i32 %912 to i64
  br i1 %863, label %942, label %914

914:                                              ; preds = %909
  %915 = load ptr, ptr %585, align 8, !tbaa !44
  %916 = load ptr, ptr %2, align 8, !tbaa !53
  %917 = getelementptr inbounds %struct.xpvhv, ptr %916, i64 0, i32 3
  %918 = load i64, ptr %917, align 8, !tbaa !81
  %919 = getelementptr ptr, ptr %915, i64 %918
  %920 = getelementptr ptr, ptr %919, i64 1
  %921 = load ptr, ptr %920, align 8, !tbaa !44
  %922 = icmp eq ptr %921, null
  br i1 %922, label %942, label %923

923:                                              ; preds = %914
  %924 = getelementptr i8, ptr %919, i64 36
  %925 = load i32, ptr %924, align 4, !tbaa !127
  %926 = icmp eq i32 %925, 0
  br i1 %926, label %930, label %927

927:                                              ; preds = %923
  %928 = load ptr, ptr %921, align 8, !tbaa !62
  %929 = icmp eq ptr %928, null
  br i1 %929, label %942, label %930

930:                                              ; preds = %923, %927
  %931 = phi ptr [ %920, %923 ], [ %921, %927 ]
  %932 = load ptr, ptr %931, align 8, !tbaa !44
  %933 = getelementptr inbounds %struct.hek, ptr %932, i64 0, i32 2
  %934 = getelementptr inbounds %struct.hek, ptr %932, i64 0, i32 1
  %935 = load i32, ptr %934, align 4, !tbaa !70
  %936 = sext i32 %935 to i64
  %937 = getelementptr inbounds i8, ptr %933, i64 %936
  %938 = getelementptr inbounds i8, ptr %937, i64 1
  %939 = load i8, ptr %938, align 1, !tbaa !44
  %940 = and i8 %939, 1
  %941 = zext nneg i8 %940 to i32
  br label %942

942:                                              ; preds = %909, %914, %927, %930
  %943 = phi i32 [ %941, %930 ], [ 0, %927 ], [ 0, %914 ], [ 0, %909 ]
  %944 = icmp eq i32 %943, 0
  %945 = select i1 %944, i32 66560, i32 66816
  %946 = tail call ptr @Perl_pv_escape(ptr noundef %860, ptr noundef nonnull %857, i64 noundef %887, i64 noundef %913, ptr noundef null, i32 noundef %945)
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.278, ptr noundef %946)
  br label %947

947:                                              ; preds = %942, %856
  %948 = load i32, ptr %14, align 4, !tbaa !60
  %949 = and i32 %948, 33554432
  %950 = icmp eq i32 %949, 0
  br i1 %950, label %1251, label %951

951:                                              ; preds = %947
  %952 = tail call ptr @Perl_hv_backreferences_p(ptr noundef nonnull %2) #9
  %953 = load ptr, ptr %952, align 8, !tbaa !62
  %954 = load ptr, ptr %585, align 8, !tbaa !44
  %955 = load ptr, ptr %2, align 8, !tbaa !53
  %956 = getelementptr inbounds %struct.xpvhv, ptr %955, i64 0, i32 3
  %957 = load i64, ptr %956, align 8, !tbaa !81
  %958 = getelementptr ptr, ptr %954, i64 %957
  %959 = getelementptr ptr, ptr %958, i64 5
  %960 = load ptr, ptr %959, align 8, !tbaa !181
  %961 = getelementptr i8, ptr %958, i64 36
  %962 = load i32, ptr %961, align 4, !tbaa !127
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %966, label %964

964:                                              ; preds = %951
  %965 = sext i32 %962 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.279, i64 noundef %965)
  br label %966

966:                                              ; preds = %964, %951
  %967 = load ptr, ptr %585, align 8, !tbaa !44
  %968 = load ptr, ptr %2, align 8, !tbaa !53
  %969 = getelementptr inbounds %struct.xpvhv, ptr %968, i64 0, i32 3
  %970 = load i64, ptr %969, align 8, !tbaa !81
  %971 = getelementptr ptr, ptr %967, i64 %970
  %972 = getelementptr ptr, ptr %971, i64 1
  %973 = load ptr, ptr %972, align 8, !tbaa !44
  %974 = icmp eq ptr %973, null
  br i1 %974, label %1183, label %975

975:                                              ; preds = %966
  %976 = getelementptr i8, ptr %971, i64 36
  %977 = load i32, ptr %976, align 4, !tbaa !127
  %978 = icmp sgt i32 %977, 0
  br i1 %978, label %979, label %982

979:                                              ; preds = %975
  %980 = load ptr, ptr %973, align 8, !tbaa !62
  %981 = icmp eq ptr %980, null
  br i1 %981, label %1183, label %989

982:                                              ; preds = %975
  %983 = icmp slt i32 %977, -1
  br i1 %983, label %984, label %988

984:                                              ; preds = %982
  %985 = getelementptr inbounds ptr, ptr %973, i64 1
  %986 = load ptr, ptr %985, align 8, !tbaa !62
  %987 = icmp eq ptr %986, null
  br i1 %987, label %1183, label %989

988:                                              ; preds = %982
  switch i32 %977, label %991 [
    i32 -1, label %1183
    i32 0, label %1049
  ]

989:                                              ; preds = %984, %979
  %990 = icmp eq i32 %977, 0
  br i1 %990, label %1049, label %991

991:                                              ; preds = %988, %989
  %992 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #9
  %993 = load ptr, ptr %585, align 8, !tbaa !44
  %994 = load ptr, ptr %2, align 8, !tbaa !53
  %995 = getelementptr inbounds %struct.xpvhv, ptr %994, i64 0, i32 3
  %996 = load i64, ptr %995, align 8, !tbaa !81
  %997 = getelementptr ptr, ptr %993, i64 %996
  %998 = getelementptr ptr, ptr %997, i64 1
  %999 = load ptr, ptr %998, align 8, !tbaa !44
  %1000 = lshr i32 %977, 31
  %1001 = tail call i32 @llvm.abs.i32(i32 %977, i1 true)
  %1002 = zext nneg i32 %1001 to i64
  %1003 = getelementptr inbounds ptr, ptr %999, i64 %1002
  %1004 = icmp ult i32 %1000, %1001
  br i1 %1004, label %1005, label %1036

1005:                                             ; preds = %991
  %1006 = zext nneg i32 %1000 to i64
  %1007 = getelementptr inbounds ptr, ptr %999, i64 %1006
  br label %1008

1008:                                             ; preds = %1005, %1033
  %1009 = phi ptr [ %1034, %1033 ], [ %1007, %1005 ]
  %1010 = load ptr, ptr %1009, align 8, !tbaa !62
  %1011 = getelementptr inbounds %struct.hek, ptr %1010, i64 0, i32 1
  %1012 = load i32, ptr %1011, align 4, !tbaa !70
  %1013 = icmp eq i32 %1012, 0
  br i1 %1013, label %1032, label %1014

1014:                                             ; preds = %1008
  %1015 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #9
  %1016 = load ptr, ptr %1009, align 8, !tbaa !62
  %1017 = getelementptr inbounds %struct.hek, ptr %1016, i64 0, i32 2
  %1018 = getelementptr inbounds %struct.hek, ptr %1016, i64 0, i32 1
  %1019 = load i32, ptr %1018, align 4, !tbaa !70
  %1020 = sext i32 %1019 to i64
  %1021 = mul nsw i32 %1019, 17
  %1022 = add nsw i32 %1021, 1
  %1023 = sext i32 %1022 to i64
  %1024 = getelementptr inbounds i8, ptr %1017, i64 %1020
  %1025 = getelementptr inbounds i8, ptr %1024, i64 1
  %1026 = load i8, ptr %1025, align 1, !tbaa !44
  %1027 = and i8 %1026, 1
  %1028 = zext nneg i8 %1027 to i32
  %1029 = shl nuw nsw i32 %1028, 8
  %1030 = or disjoint i32 %1029, 66560
  %1031 = tail call ptr @Perl_pv_escape(ptr noundef %1015, ptr noundef nonnull %1017, i64 noundef %1020, i64 noundef %1023, ptr noundef null, i32 noundef %1030)
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %992, ptr noundef nonnull @.str.280, ptr noundef %1031) #9
  br label %1033

1032:                                             ; preds = %1008
  tail call void @Perl_sv_catpvn_flags(ptr noundef %992, ptr noundef nonnull @.str.281, i64 noundef 8, i32 noundef 2) #9
  br label %1033

1033:                                             ; preds = %1032, %1014
  %1034 = getelementptr inbounds ptr, ptr %1009, i64 1
  %1035 = icmp ult ptr %1034, %1003
  br i1 %1035, label %1008, label %1036, !llvm.loop !182

1036:                                             ; preds = %1033, %991
  %1037 = getelementptr inbounds %struct.sv, ptr %992, i64 0, i32 2
  %1038 = load i32, ptr %1037, align 4, !tbaa !60
  %1039 = and i32 %1038, 2098176
  %1040 = icmp eq i32 %1039, 1024
  br i1 %1040, label %1041, label %1044

1041:                                             ; preds = %1036
  %1042 = getelementptr inbounds %struct.sv, ptr %992, i64 0, i32 3
  %1043 = load ptr, ptr %1042, align 8, !tbaa !44
  br label %1046

1044:                                             ; preds = %1036
  %1045 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %992, ptr noundef null, i32 noundef 2) #9
  br label %1046

1046:                                             ; preds = %1044, %1041
  %1047 = phi ptr [ %1043, %1041 ], [ %1045, %1044 ]
  %1048 = getelementptr inbounds i8, ptr %1047, i64 2
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.282, ptr noundef nonnull %1048)
  br label %1183

1049:                                             ; preds = %988, %989
  %1050 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #9
  %1051 = load i32, ptr %14, align 4, !tbaa !60
  %1052 = and i32 %1051, 33554432
  %1053 = icmp eq i32 %1052, 0
  br i1 %1053, label %1079, label %1054

1054:                                             ; preds = %1049
  %1055 = load ptr, ptr %585, align 8, !tbaa !44
  %1056 = load ptr, ptr %2, align 8, !tbaa !53
  %1057 = getelementptr inbounds %struct.xpvhv, ptr %1056, i64 0, i32 3
  %1058 = load i64, ptr %1057, align 8, !tbaa !81
  %1059 = getelementptr ptr, ptr %1055, i64 %1058
  %1060 = getelementptr ptr, ptr %1059, i64 1
  %1061 = load ptr, ptr %1060, align 8, !tbaa !44
  %1062 = icmp eq ptr %1061, null
  br i1 %1062, label %1079, label %1063

1063:                                             ; preds = %1054
  %1064 = getelementptr i8, ptr %1059, i64 36
  %1065 = load i32, ptr %1064, align 4, !tbaa !127
  %1066 = icmp eq i32 %1065, -1
  br i1 %1066, label %1079, label %1067

1067:                                             ; preds = %1063
  %1068 = icmp sgt i32 %1065, 0
  br i1 %1068, label %1073, label %1069

1069:                                             ; preds = %1067
  %1070 = icmp slt i32 %1065, -1
  br i1 %1070, label %1071, label %1076

1071:                                             ; preds = %1069
  %1072 = getelementptr inbounds ptr, ptr %1061, i64 1
  br label %1073

1073:                                             ; preds = %1067, %1071
  %1074 = phi ptr [ %1072, %1071 ], [ %1061, %1067 ]
  %1075 = load ptr, ptr %1074, align 8, !tbaa !62
  br label %1076

1076:                                             ; preds = %1073, %1069
  %1077 = phi ptr [ %1061, %1069 ], [ %1075, %1073 ]
  %1078 = getelementptr inbounds %struct.hek, ptr %1077, i64 0, i32 2
  br label %1079

1079:                                             ; preds = %1049, %1054, %1063, %1076
  %1080 = phi ptr [ %1078, %1076 ], [ null, %1063 ], [ null, %1054 ], [ null, %1049 ]
  br i1 %1053, label %1107, label %1081

1081:                                             ; preds = %1079
  %1082 = load ptr, ptr %585, align 8, !tbaa !44
  %1083 = load ptr, ptr %2, align 8, !tbaa !53
  %1084 = getelementptr inbounds %struct.xpvhv, ptr %1083, i64 0, i32 3
  %1085 = load i64, ptr %1084, align 8, !tbaa !81
  %1086 = getelementptr ptr, ptr %1082, i64 %1085
  %1087 = getelementptr ptr, ptr %1086, i64 1
  %1088 = load ptr, ptr %1087, align 8, !tbaa !44
  %1089 = icmp eq ptr %1088, null
  br i1 %1089, label %1107, label %1090

1090:                                             ; preds = %1081
  %1091 = getelementptr i8, ptr %1086, i64 36
  %1092 = load i32, ptr %1091, align 4, !tbaa !127
  %1093 = icmp eq i32 %1092, -1
  br i1 %1093, label %1107, label %1094

1094:                                             ; preds = %1090
  %1095 = icmp sgt i32 %1092, 0
  br i1 %1095, label %1100, label %1096

1096:                                             ; preds = %1094
  %1097 = icmp slt i32 %1092, -1
  br i1 %1097, label %1098, label %1103

1098:                                             ; preds = %1096
  %1099 = getelementptr inbounds ptr, ptr %1088, i64 1
  br label %1100

1100:                                             ; preds = %1094, %1098
  %1101 = phi ptr [ %1099, %1098 ], [ %1088, %1094 ]
  %1102 = load ptr, ptr %1101, align 8, !tbaa !62
  br label %1103

1103:                                             ; preds = %1100, %1096
  %1104 = phi ptr [ %1088, %1096 ], [ %1102, %1100 ]
  %1105 = getelementptr inbounds %struct.hek, ptr %1104, i64 0, i32 1
  %1106 = load i32, ptr %1105, align 4, !tbaa !70
  br label %1107

1107:                                             ; preds = %1079, %1081, %1090, %1103
  %1108 = phi i32 [ %1106, %1103 ], [ 0, %1090 ], [ 0, %1081 ], [ 0, %1079 ]
  %1109 = sext i32 %1108 to i64
  br i1 %1053, label %1139, label %1110

1110:                                             ; preds = %1107
  %1111 = load ptr, ptr %585, align 8, !tbaa !44
  %1112 = load ptr, ptr %2, align 8, !tbaa !53
  %1113 = getelementptr inbounds %struct.xpvhv, ptr %1112, i64 0, i32 3
  %1114 = load i64, ptr %1113, align 8, !tbaa !81
  %1115 = getelementptr ptr, ptr %1111, i64 %1114
  %1116 = getelementptr ptr, ptr %1115, i64 1
  %1117 = load ptr, ptr %1116, align 8, !tbaa !44
  %1118 = icmp eq ptr %1117, null
  br i1 %1118, label %1139, label %1119

1119:                                             ; preds = %1110
  %1120 = getelementptr i8, ptr %1115, i64 36
  %1121 = load i32, ptr %1120, align 4, !tbaa !127
  %1122 = icmp eq i32 %1121, -1
  br i1 %1122, label %1139, label %1123

1123:                                             ; preds = %1119
  %1124 = icmp sgt i32 %1121, 0
  br i1 %1124, label %1129, label %1125

1125:                                             ; preds = %1123
  %1126 = icmp slt i32 %1121, -1
  br i1 %1126, label %1127, label %1132

1127:                                             ; preds = %1125
  %1128 = getelementptr inbounds ptr, ptr %1117, i64 1
  br label %1129

1129:                                             ; preds = %1123, %1127
  %1130 = phi ptr [ %1128, %1127 ], [ %1117, %1123 ]
  %1131 = load ptr, ptr %1130, align 8, !tbaa !62
  br label %1132

1132:                                             ; preds = %1129, %1125
  %1133 = phi ptr [ %1117, %1125 ], [ %1131, %1129 ]
  %1134 = getelementptr inbounds %struct.hek, ptr %1133, i64 0, i32 1
  %1135 = load i32, ptr %1134, align 4, !tbaa !70
  %1136 = mul nsw i32 %1135, 17
  %1137 = add nsw i32 %1136, 1
  %1138 = sext i32 %1137 to i64
  br label %1139

1139:                                             ; preds = %1107, %1110, %1119, %1132
  %1140 = phi i64 [ %1138, %1132 ], [ 1, %1119 ], [ 1, %1110 ], [ 1, %1107 ]
  br i1 %1053, label %1180, label %1141

1141:                                             ; preds = %1139
  %1142 = load ptr, ptr %585, align 8, !tbaa !44
  %1143 = load ptr, ptr %2, align 8, !tbaa !53
  %1144 = getelementptr inbounds %struct.xpvhv, ptr %1143, i64 0, i32 3
  %1145 = load i64, ptr %1144, align 8, !tbaa !81
  %1146 = getelementptr ptr, ptr %1142, i64 %1145
  %1147 = getelementptr ptr, ptr %1146, i64 1
  %1148 = load ptr, ptr %1147, align 8, !tbaa !44
  %1149 = icmp eq ptr %1148, null
  br i1 %1149, label %1180, label %1150

1150:                                             ; preds = %1141
  %1151 = getelementptr i8, ptr %1146, i64 36
  %1152 = load i32, ptr %1151, align 4, !tbaa !127
  %1153 = icmp eq i32 %1152, -1
  br i1 %1153, label %1180, label %1154

1154:                                             ; preds = %1150
  %1155 = icmp sgt i32 %1152, 0
  br i1 %1155, label %1160, label %1156

1156:                                             ; preds = %1154
  %1157 = icmp slt i32 %1152, -1
  br i1 %1157, label %1158, label %1163

1158:                                             ; preds = %1156
  %1159 = getelementptr inbounds ptr, ptr %1148, i64 1
  br label %1160

1160:                                             ; preds = %1154, %1158
  %1161 = phi ptr [ %1159, %1158 ], [ %1148, %1154 ]
  %1162 = load ptr, ptr %1161, align 8, !tbaa !62
  br label %1163

1163:                                             ; preds = %1160, %1156
  %1164 = phi ptr [ %1148, %1156 ], [ %1162, %1160 ]
  %1165 = getelementptr inbounds %struct.hek, ptr %1164, i64 0, i32 2
  %1166 = icmp slt i32 %1152, -1
  %1167 = getelementptr inbounds ptr, ptr %1148, i64 1
  %1168 = select i1 %1166, ptr %1167, ptr %1147
  %1169 = select i1 %1155, ptr %1148, ptr %1168
  %1170 = load ptr, ptr %1169, align 8, !tbaa !44
  %1171 = getelementptr inbounds %struct.hek, ptr %1170, i64 0, i32 1
  %1172 = load i32, ptr %1171, align 4, !tbaa !70
  %1173 = sext i32 %1172 to i64
  %1174 = getelementptr inbounds i8, ptr %1165, i64 %1173
  %1175 = getelementptr inbounds i8, ptr %1174, i64 1
  %1176 = load i8, ptr %1175, align 1, !tbaa !44
  %1177 = and i8 %1176, 1
  %1178 = icmp eq i8 %1177, 0
  %1179 = select i1 %1178, i32 66560, i32 66816
  br label %1180

1180:                                             ; preds = %1139, %1141, %1150, %1163
  %1181 = phi i32 [ %1179, %1163 ], [ 66560, %1150 ], [ 66560, %1141 ], [ 66560, %1139 ]
  %1182 = tail call ptr @Perl_pv_escape(ptr noundef %1050, ptr noundef %1080, i64 noundef %1109, i64 noundef %1140, ptr noundef null, i32 noundef %1181)
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.283, ptr noundef %1182)
  br label %1183

1183:                                             ; preds = %988, %984, %1046, %1180, %979, %966
  %1184 = icmp eq ptr %953, null
  br i1 %1184, label %1189, label %1185

1185:                                             ; preds = %1183
  %1186 = ptrtoint ptr %953 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.284, i64 noundef %1186)
  %1187 = add nsw i32 %0, 1
  %1188 = add nsw i32 %3, 1
  tail call void @Perl_do_sv_dump(i32 noundef %1187, ptr noundef %1, ptr noundef nonnull %953, i32 noundef %1188, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6)
  br label %1189

1189:                                             ; preds = %1185, %1183
  %1190 = icmp eq ptr %960, null
  br i1 %1190, label %1251, label %1191

1191:                                             ; preds = %1189
  %1192 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #9
  %1193 = getelementptr inbounds %struct.mro_meta, ptr %960, i64 0, i32 5
  %1194 = load ptr, ptr %1193, align 8, !tbaa !183
  %1195 = getelementptr inbounds %struct.mro_alg, ptr %1194, i64 0, i32 1
  %1196 = load ptr, ptr %1195, align 8, !tbaa !185
  %1197 = getelementptr inbounds %struct.mro_alg, ptr %1194, i64 0, i32 2
  %1198 = load i16, ptr %1197, align 8, !tbaa !187
  %1199 = zext i16 %1198 to i64
  %1200 = mul nuw nsw i64 %1199, 17
  %1201 = add nuw nsw i64 %1200, 1
  %1202 = getelementptr inbounds %struct.mro_alg, ptr %1194, i64 0, i32 3
  %1203 = load i16, ptr %1202, align 2, !tbaa !188
  %1204 = shl i16 %1203, 8
  %1205 = and i16 %1204, 256
  %1206 = zext nneg i16 %1205 to i32
  %1207 = or disjoint i32 %1206, 66560
  %1208 = tail call ptr @Perl_pv_escape(ptr noundef %1192, ptr noundef %1196, i64 noundef %1199, i64 noundef %1201, ptr noundef null, i32 noundef %1207)
  %1209 = load ptr, ptr %1193, align 8, !tbaa !183
  %1210 = ptrtoint ptr %1209 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.285, ptr noundef %1208, i64 noundef %1210)
  %1211 = getelementptr inbounds %struct.mro_meta, ptr %960, i64 0, i32 3
  %1212 = load i32, ptr %1211, align 8, !tbaa !189
  %1213 = zext i32 %1212 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.286, i64 noundef %1213)
  %1214 = getelementptr inbounds %struct.mro_meta, ptr %960, i64 0, i32 4
  %1215 = load i32, ptr %1214, align 4, !tbaa !190
  %1216 = zext i32 %1215 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.287, i64 noundef %1216)
  %1217 = load ptr, ptr %960, align 8, !tbaa !191
  %1218 = icmp eq ptr %1217, null
  br i1 %1218, label %1224, label %1219

1219:                                             ; preds = %1191
  %1220 = ptrtoint ptr %1217 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.288, i64 noundef %1220)
  %1221 = add nsw i32 %0, 1
  %1222 = load ptr, ptr %960, align 8, !tbaa !191
  %1223 = add nsw i32 %3, 1
  tail call void @Perl_do_sv_dump(i32 noundef %1221, ptr noundef %1, ptr noundef %1222, i32 noundef %1223, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6)
  br label %1224

1224:                                             ; preds = %1219, %1191
  %1225 = getelementptr inbounds %struct.mro_meta, ptr %960, i64 0, i32 1
  %1226 = load ptr, ptr %1225, align 8, !tbaa !192
  %1227 = icmp eq ptr %1226, null
  br i1 %1227, label %1233, label %1228

1228:                                             ; preds = %1224
  %1229 = ptrtoint ptr %1226 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.289, i64 noundef %1229)
  %1230 = add nsw i32 %0, 1
  %1231 = load ptr, ptr %1225, align 8, !tbaa !192
  %1232 = add nsw i32 %3, 1
  tail call void @Perl_do_sv_dump(i32 noundef %1230, ptr noundef %1, ptr noundef %1231, i32 noundef %1232, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6)
  br label %1233

1233:                                             ; preds = %1228, %1224
  %1234 = getelementptr inbounds %struct.mro_meta, ptr %960, i64 0, i32 2
  %1235 = load ptr, ptr %1234, align 8, !tbaa !193
  %1236 = icmp eq ptr %1235, null
  br i1 %1236, label %1242, label %1237

1237:                                             ; preds = %1233
  %1238 = ptrtoint ptr %1235 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.290, i64 noundef %1238)
  %1239 = add nsw i32 %0, 1
  %1240 = load ptr, ptr %1234, align 8, !tbaa !193
  %1241 = add nsw i32 %3, 1
  tail call void @Perl_do_sv_dump(i32 noundef %1239, ptr noundef %1, ptr noundef %1240, i32 noundef %1241, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6)
  br label %1242

1242:                                             ; preds = %1237, %1233
  %1243 = getelementptr inbounds %struct.mro_meta, ptr %960, i64 0, i32 6
  %1244 = load ptr, ptr %1243, align 8, !tbaa !194
  %1245 = icmp eq ptr %1244, null
  br i1 %1245, label %1251, label %1246

1246:                                             ; preds = %1242
  %1247 = ptrtoint ptr %1244 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.291, i64 noundef %1247)
  %1248 = add nsw i32 %0, 1
  %1249 = load ptr, ptr %1243, align 8, !tbaa !194
  %1250 = add nsw i32 %3, 1
  tail call void @Perl_do_sv_dump(i32 noundef %1248, ptr noundef %1, ptr noundef %1249, i32 noundef %1250, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6)
  br label %1251

1251:                                             ; preds = %1189, %1246, %1242, %947
  %1252 = icmp slt i32 %3, %4
  br i1 %1252, label %1253, label %2098

1253:                                             ; preds = %1251
  %1254 = load ptr, ptr %585, align 8, !tbaa !44
  %1255 = icmp eq ptr %1254, null
  br i1 %1255, label %2098, label %1256

1256:                                             ; preds = %1253
  %1257 = sub nsw i32 %4, %3
  %1258 = add nsw i32 %0, 1
  %1259 = add nsw i32 %3, 1
  br label %1260

1260:                                             ; preds = %1256, %1327
  %1261 = phi i32 [ %1257, %1256 ], [ %1328, %1327 ]
  %1262 = phi i64 [ 0, %1256 ], [ %1329, %1327 ]
  %1263 = load ptr, ptr %585, align 8, !tbaa !44
  %1264 = getelementptr inbounds ptr, ptr %1263, i64 %1262
  %1265 = load ptr, ptr %1264, align 8, !tbaa !62
  %1266 = icmp eq ptr %1265, null
  br i1 %1266, label %1327, label %1267

1267:                                             ; preds = %1260, %1322
  %1268 = phi ptr [ %1325, %1322 ], [ %1265, %1260 ]
  %1269 = phi i32 [ %1270, %1322 ], [ %1261, %1260 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #9
  %1270 = add nsw i32 %1269, -1
  %1271 = icmp sgt i32 %1269, 0
  br i1 %1271, label %1272, label %2097

1272:                                             ; preds = %1267
  %1273 = getelementptr inbounds %struct.he, ptr %1268, i64 0, i32 1
  %1274 = load ptr, ptr %1273, align 8, !tbaa !88
  %1275 = load i32, ptr %1274, align 4, !tbaa !195
  %1276 = call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %1268) #9
  %1277 = getelementptr inbounds %struct.sv, ptr %1276, i64 0, i32 2
  %1278 = load i32, ptr %1277, align 4, !tbaa !60
  %1279 = and i32 %1278, 2098176
  %1280 = icmp eq i32 %1279, 1024
  br i1 %1280, label %1281, label %1287

1281:                                             ; preds = %1272
  %1282 = load ptr, ptr %1276, align 8, !tbaa !53
  %1283 = getelementptr inbounds %struct.xpv, ptr %1282, i64 0, i32 2
  %1284 = load i64, ptr %1283, align 8, !tbaa !56
  store i64 %1284, ptr %9, align 8, !tbaa !40
  %1285 = getelementptr inbounds %struct.sv, ptr %1276, i64 0, i32 3
  %1286 = load ptr, ptr %1285, align 8, !tbaa !44
  br label %1289

1287:                                             ; preds = %1272
  %1288 = call ptr @Perl_sv_2pv_flags(ptr noundef %1276, ptr noundef nonnull %9, i32 noundef 34) #9
  br label %1289

1289:                                             ; preds = %1287, %1281
  %1290 = phi ptr [ %1286, %1281 ], [ %1288, %1287 ]
  %1291 = getelementptr inbounds %struct.he, ptr %1268, i64 0, i32 2
  %1292 = load ptr, ptr %1291, align 8, !tbaa !44
  %1293 = load i64, ptr %9, align 8, !tbaa !40
  %1294 = call ptr @Perl_pv_display(ptr noundef nonnull %27, ptr noundef %1290, i64 noundef %1293, i64 noundef 0, i64 noundef %6)
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %1258, ptr noundef %1, ptr noundef nonnull @.str.292, ptr noundef %1294)
  %1295 = load i32, ptr %1277, align 4, !tbaa !60
  %1296 = and i32 %1295, 536870912
  %1297 = icmp eq i32 %1296, 0
  br i1 %1297, label %1305, label %1298

1298:                                             ; preds = %1289
  %1299 = load ptr, ptr %1276, align 8, !tbaa !53
  %1300 = getelementptr inbounds %struct.xpv, ptr %1299, i64 0, i32 2
  %1301 = load i64, ptr %1300, align 8, !tbaa !56
  %1302 = mul i64 %1301, 6
  %1303 = call ptr @Perl_sv_uni_display(ptr noundef nonnull %27, ptr noundef nonnull %1276, i64 noundef %1302, i64 noundef 3) #9
  %1304 = call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.293, ptr noundef %1303) #9
  br label %1305

1305:                                             ; preds = %1298, %1289
  %1306 = load i32, ptr %14, align 4, !tbaa !126
  %1307 = and i32 %1306, 33554432
  %1308 = icmp eq i32 %1307, 0
  br i1 %1308, label %1317, label %1309

1309:                                             ; preds = %1305
  %1310 = load ptr, ptr %585, align 8, !tbaa !44
  %1311 = load ptr, ptr %2, align 8, !tbaa !79
  %1312 = getelementptr inbounds %struct.xpvhv, ptr %1311, i64 0, i32 3
  %1313 = load i64, ptr %1312, align 8, !tbaa !81
  %1314 = getelementptr ptr, ptr %1310, i64 %1313
  %1315 = getelementptr ptr, ptr %1314, i64 3
  %1316 = load ptr, ptr %1315, align 8, !tbaa !178
  br label %1317

1317:                                             ; preds = %1305, %1309
  %1318 = phi ptr [ %1316, %1309 ], [ null, %1305 ]
  %1319 = icmp eq ptr %1318, %1268
  br i1 %1319, label %1320, label %1322

1320:                                             ; preds = %1317
  %1321 = call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.294) #9
  br label %1322

1322:                                             ; preds = %1320, %1317
  %1323 = zext i32 %1275 to i64
  %1324 = call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.295, i64 noundef %1323) #9
  call void @Perl_do_sv_dump(i32 noundef %1258, ptr noundef %1, ptr noundef %1292, i32 noundef %1259, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  %1325 = load ptr, ptr %1268, align 8, !tbaa !62
  %1326 = icmp eq ptr %1325, null
  br i1 %1326, label %1327, label %1267

1327:                                             ; preds = %1322, %1260
  %1328 = phi i32 [ %1261, %1260 ], [ %1270, %1322 ]
  %1329 = add i64 %1262, 1
  %1330 = load ptr, ptr %2, align 8, !tbaa !79
  %1331 = getelementptr inbounds %struct.xpvhv, ptr %1330, i64 0, i32 3
  %1332 = load i64, ptr %1331, align 8, !tbaa !81
  %1333 = icmp ugt i64 %1329, %1332
  br i1 %1333, label %2098, label %1260, !llvm.loop !196

1334:                                             ; preds = %458, %470
  %1335 = load ptr, ptr %2, align 8, !tbaa !53
  %1336 = getelementptr inbounds %struct.xpvcv, ptr %1335, i64 0, i32 12
  %1337 = load i32, ptr %1336, align 4, !tbaa !66
  %1338 = and i32 %1337, 8192
  %1339 = icmp eq i32 %1338, 0
  br i1 %1339, label %1363, label %1340

1340:                                             ; preds = %1334
  %1341 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  %1342 = load i32, ptr %14, align 4, !tbaa !60
  %1343 = and i32 %1342, 2098176
  %1344 = icmp eq i32 %1343, 1024
  br i1 %1344, label %1345, label %1351

1345:                                             ; preds = %1340
  %1346 = load ptr, ptr %2, align 8, !tbaa !53
  %1347 = getelementptr inbounds %struct.xpv, ptr %1346, i64 0, i32 2
  %1348 = load i64, ptr %1347, align 8, !tbaa !56
  store i64 %1348, ptr %10, align 8, !tbaa !40
  %1349 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %1350 = load ptr, ptr %1349, align 8, !tbaa !44
  br label %1353

1351:                                             ; preds = %1340
  %1352 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %2, ptr noundef nonnull %10, i32 noundef 34) #9
  br label %1353

1353:                                             ; preds = %1351, %1345
  %1354 = phi ptr [ %1350, %1345 ], [ %1352, %1351 ]
  %1355 = load i64, ptr %10, align 8, !tbaa !40
  %1356 = mul i64 %1355, 17
  %1357 = add i64 %1356, 1
  %1358 = load i32, ptr %14, align 4, !tbaa !60
  %1359 = lshr i32 %1358, 21
  %1360 = and i32 %1359, 256
  %1361 = or disjoint i32 %1360, 66560
  %1362 = call ptr @Perl_pv_escape(ptr noundef %1341, ptr noundef %1354, i64 noundef %1355, i64 noundef %1357, ptr noundef null, i32 noundef %1361)
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.296, ptr noundef %1362)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  br label %1363

1363:                                             ; preds = %1353, %1334
  %1364 = load i32, ptr %14, align 4, !tbaa !60
  %1365 = and i32 %1364, 1024
  %1366 = icmp eq i32 %1365, 0
  br i1 %1366, label %1443, label %1367

1367:                                             ; preds = %1363
  %1368 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #9
  %1369 = load i32, ptr %14, align 4, !tbaa !60
  %1370 = and i32 %1369, 1024
  %1371 = icmp eq i32 %1370, 0
  br i1 %1371, label %1391, label %1372

1372:                                             ; preds = %1367
  %1373 = and i32 %1369, 255
  %1374 = icmp eq i32 %1373, 13
  br i1 %1374, label %1375, label %1388

1375:                                             ; preds = %1372
  %1376 = load ptr, ptr %2, align 8, !tbaa !53
  %1377 = getelementptr inbounds %struct.xpvcv, ptr %1376, i64 0, i32 12
  %1378 = load i32, ptr %1377, align 4, !tbaa !66
  %1379 = and i32 %1378, 8192
  %1380 = icmp eq i32 %1379, 0
  br i1 %1380, label %1388, label %1381

1381:                                             ; preds = %1375
  %1382 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %1383 = load ptr, ptr %1382, align 8, !tbaa !44
  %1384 = getelementptr inbounds %struct.xpv, ptr %1376, i64 0, i32 2
  %1385 = load i64, ptr %1384, align 8, !tbaa !56
  %1386 = getelementptr inbounds i8, ptr %1383, i64 %1385
  %1387 = getelementptr inbounds i8, ptr %1386, i64 1
  br label %1391

1388:                                             ; preds = %1375, %1372
  %1389 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %1390 = load ptr, ptr %1389, align 8, !tbaa !44
  br label %1391

1391:                                             ; preds = %1367, %1381, %1388
  %1392 = phi ptr [ %1387, %1381 ], [ %1390, %1388 ], [ null, %1367 ]
  br i1 %1371, label %1413, label %1393

1393:                                             ; preds = %1391
  %1394 = and i32 %1369, 255
  %1395 = icmp eq i32 %1394, 13
  br i1 %1395, label %1396, label %1409

1396:                                             ; preds = %1393
  %1397 = load ptr, ptr %2, align 8, !tbaa !53
  %1398 = getelementptr inbounds %struct.xpvcv, ptr %1397, i64 0, i32 12
  %1399 = load i32, ptr %1398, align 4, !tbaa !66
  %1400 = and i32 %1399, 8192
  %1401 = icmp eq i32 %1400, 0
  br i1 %1401, label %1409, label %1402

1402:                                             ; preds = %1396
  %1403 = getelementptr inbounds %struct.xpv, ptr %1397, i64 0, i32 3
  %1404 = load i64, ptr %1403, align 8, !tbaa !44
  %1405 = getelementptr inbounds %struct.xpv, ptr %1397, i64 0, i32 2
  %1406 = load i64, ptr %1405, align 8, !tbaa !56
  %1407 = add i64 %1404, -2
  %1408 = sub i64 %1407, %1406
  br label %1413

1409:                                             ; preds = %1396, %1393
  %1410 = load ptr, ptr %2, align 8, !tbaa !53
  %1411 = getelementptr inbounds %struct.xpv, ptr %1410, i64 0, i32 2
  %1412 = load i64, ptr %1411, align 8, !tbaa !56
  br label %1413

1413:                                             ; preds = %1391, %1402, %1409
  %1414 = phi i64 [ %1408, %1402 ], [ %1412, %1409 ], [ 0, %1391 ]
  br i1 %1371, label %1435, label %1415

1415:                                             ; preds = %1413
  %1416 = and i32 %1369, 255
  %1417 = icmp eq i32 %1416, 13
  br i1 %1417, label %1418, label %1431

1418:                                             ; preds = %1415
  %1419 = load ptr, ptr %2, align 8, !tbaa !53
  %1420 = getelementptr inbounds %struct.xpvcv, ptr %1419, i64 0, i32 12
  %1421 = load i32, ptr %1420, align 4, !tbaa !66
  %1422 = and i32 %1421, 8192
  %1423 = icmp eq i32 %1422, 0
  br i1 %1423, label %1431, label %1424

1424:                                             ; preds = %1418
  %1425 = getelementptr inbounds %struct.xpv, ptr %1419, i64 0, i32 3
  %1426 = load i64, ptr %1425, align 8, !tbaa !44
  %1427 = getelementptr inbounds %struct.xpv, ptr %1419, i64 0, i32 2
  %1428 = load i64, ptr %1427, align 8, !tbaa !56
  %1429 = add i64 %1426, -2
  %1430 = sub i64 %1429, %1428
  br label %1435

1431:                                             ; preds = %1418, %1415
  %1432 = load ptr, ptr %2, align 8, !tbaa !53
  %1433 = getelementptr inbounds %struct.xpv, ptr %1432, i64 0, i32 2
  %1434 = load i64, ptr %1433, align 8, !tbaa !56
  br label %1435

1435:                                             ; preds = %1413, %1424, %1431
  %1436 = phi i64 [ %1430, %1424 ], [ %1434, %1431 ], [ 0, %1413 ]
  %1437 = mul i64 %1436, 17
  %1438 = add i64 %1437, 1
  %1439 = lshr i32 %1369, 21
  %1440 = and i32 %1439, 256
  %1441 = or disjoint i32 %1440, 66560
  %1442 = call ptr @Perl_pv_escape(ptr noundef %1368, ptr noundef %1392, i64 noundef %1414, i64 noundef %1438, ptr noundef null, i32 noundef %1441)
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.297, ptr noundef %1442)
  br label %1443

1443:                                             ; preds = %1363, %458, %470, %1435
  %1444 = load ptr, ptr %2, align 8, !tbaa !53
  %1445 = getelementptr inbounds %struct.xpvcv, ptr %1444, i64 0, i32 4
  %1446 = load ptr, ptr %1445, align 8, !tbaa !197
  call void @Perl_do_hv_dump(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.298, ptr noundef %1446)
  %1447 = load ptr, ptr %2, align 8, !tbaa !53
  %1448 = getelementptr inbounds %struct.xpvcv, ptr %1447, i64 0, i32 12
  %1449 = load i32, ptr %1448, align 4, !tbaa !66
  %1450 = and i32 %1449, 8
  %1451 = icmp eq i32 %1450, 0
  br i1 %1451, label %1452, label %1471

1452:                                             ; preds = %1443
  %1453 = getelementptr inbounds %struct.xpvcv, ptr %1447, i64 0, i32 5
  %1454 = load ptr, ptr %1453, align 8, !tbaa !44
  %1455 = icmp eq ptr %1454, null
  br i1 %1455, label %1459, label %1456

1456:                                             ; preds = %1452
  %1457 = ptrtoint ptr %1454 to i64
  %1458 = call fastcc i64 @S_sequence_num(ptr noundef nonnull %1454)
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.299, i64 noundef %1457, i64 noundef %1458)
  br label %1459

1459:                                             ; preds = %1456, %1452
  %1460 = load ptr, ptr %2, align 8, !tbaa !53
  %1461 = getelementptr inbounds %struct.xpvcv, ptr %1460, i64 0, i32 6
  %1462 = load ptr, ptr %1461, align 8, !tbaa !44
  %1463 = ptrtoint ptr %1462 to i64
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.300, i64 noundef %1463)
  %1464 = load ptr, ptr %2, align 8, !tbaa !53
  %1465 = getelementptr inbounds %struct.xpvcv, ptr %1464, i64 0, i32 6
  %1466 = load ptr, ptr %1465, align 8, !tbaa !44
  %1467 = icmp ne ptr %1466, null
  %1468 = and i1 %1467, %5
  br i1 %1468, label %1469, label %1488

1469:                                             ; preds = %1459
  %1470 = add nsw i32 %0, 1
  call void @Perl_do_op_dump(i32 noundef %1470, ptr noundef %1, ptr noundef nonnull %1466)
  br label %1488

1471:                                             ; preds = %1443
  %1472 = call ptr @Perl_cv_const_sv(ptr noundef nonnull %2) #9
  %1473 = load ptr, ptr %2, align 8, !tbaa !53
  %1474 = getelementptr inbounds %struct.xpvcv, ptr %1473, i64 0, i32 6
  %1475 = load ptr, ptr %1474, align 8, !tbaa !44
  %1476 = ptrtoint ptr %1475 to i64
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.301, i64 noundef %1476)
  %1477 = icmp eq ptr %1472, null
  %1478 = load ptr, ptr %2, align 8, !tbaa !53
  %1479 = getelementptr inbounds %struct.xpvcv, ptr %1478, i64 0, i32 5
  br i1 %1477, label %1485, label %1480

1480:                                             ; preds = %1471
  %1481 = load ptr, ptr %1479, align 8, !tbaa !44
  %1482 = ptrtoint ptr %1481 to i64
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.302, i64 noundef %1482)
  %1483 = add nsw i32 %0, 1
  %1484 = add nsw i32 %3, 1
  call void @Perl_do_sv_dump(i32 noundef %1483, ptr noundef %1, ptr noundef nonnull %1472, i32 noundef %1484, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6)
  br label %1488

1485:                                             ; preds = %1471
  %1486 = load i32, ptr %1479, align 8, !tbaa !44
  %1487 = sext i32 %1486 to i64
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.303, i64 noundef %1487)
  br label %1488

1488:                                             ; preds = %1480, %1485, %1459, %1469
  %1489 = load ptr, ptr %2, align 8, !tbaa !62
  %1490 = getelementptr inbounds %struct.xpvcv, ptr %1489, i64 0, i32 12
  %1491 = load i32, ptr %1490, align 4, !tbaa !66
  %1492 = and i32 %1491, 32768
  %1493 = icmp eq i32 %1492, 0
  %1494 = getelementptr inbounds %struct.xpvcv, ptr %1489, i64 0, i32 7
  %1495 = load ptr, ptr %1494, align 8, !tbaa !44
  br i1 %1493, label %1498, label %1496

1496:                                             ; preds = %1488
  %1497 = getelementptr inbounds %struct.hek, ptr %1495, i64 0, i32 2
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.278, ptr noundef nonnull %1497)
  br label %1499

1498:                                             ; preds = %1488
  call void @Perl_do_gvgv_dump(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.304, ptr noundef %1495)
  br label %1499

1499:                                             ; preds = %1498, %1496
  %1500 = load ptr, ptr %2, align 8, !tbaa !53
  %1501 = getelementptr inbounds %struct.xpvcv, ptr %1500, i64 0, i32 8
  %1502 = load ptr, ptr %1501, align 8, !tbaa !198
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.305, ptr noundef %1502)
  %1503 = load ptr, ptr %2, align 8, !tbaa !64
  %1504 = getelementptr inbounds %struct.xpvcv, ptr %1503, i64 0, i32 13
  %1505 = load i32, ptr %1504, align 4, !tbaa !47
  %1506 = sext i32 %1505 to i64
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.306, i64 noundef %1506)
  %1507 = load ptr, ptr %2, align 8, !tbaa !53
  %1508 = getelementptr inbounds %struct.xpvcv, ptr %1507, i64 0, i32 12
  %1509 = load i32, ptr %1508, align 4, !tbaa !66
  %1510 = zext i32 %1509 to i64
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.307, i64 noundef %1510)
  %1511 = load ptr, ptr %2, align 8, !tbaa !53
  %1512 = getelementptr inbounds %struct.xpvcv, ptr %1511, i64 0, i32 11
  %1513 = load i32, ptr %1512, align 8, !tbaa !199
  %1514 = zext i32 %1513 to i64
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.308, i64 noundef %1514)
  %1515 = load ptr, ptr %2, align 8, !tbaa !53
  %1516 = getelementptr inbounds %struct.xpvcv, ptr %1515, i64 0, i32 12
  %1517 = load i32, ptr %1516, align 4, !tbaa !66
  %1518 = and i32 %1517, 8
  %1519 = icmp eq i32 %1518, 0
  %1520 = getelementptr inbounds %struct.xpvcv, ptr %1515, i64 0, i32 9
  %1521 = load ptr, ptr %1520, align 8, !tbaa !44
  br i1 %1519, label %1522, label %1530

1522:                                             ; preds = %1499
  %1523 = ptrtoint ptr %1521 to i64
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.309, i64 noundef %1523)
  %1524 = icmp slt i32 %3, %4
  br i1 %1524, label %1525, label %1531

1525:                                             ; preds = %1522
  %1526 = add nsw i32 %0, 1
  %1527 = load ptr, ptr %2, align 8, !tbaa !53
  %1528 = getelementptr inbounds %struct.xpvcv, ptr %1527, i64 0, i32 9
  %1529 = load ptr, ptr %1528, align 8, !tbaa !44
  call void @Perl_do_dump_pad(i32 noundef %1526, ptr noundef %1, ptr noundef %1529, i32 noundef 0) #9
  br label %1531

1530:                                             ; preds = %1499
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.310, ptr noundef %1521)
  br label %1531

1531:                                             ; preds = %1522, %1525, %1530
  %1532 = load ptr, ptr %2, align 8, !tbaa !53
  %1533 = getelementptr inbounds %struct.xpvcv, ptr %1532, i64 0, i32 10
  %1534 = load ptr, ptr %1533, align 8, !tbaa !200
  %1535 = ptrtoint ptr %1534 to i64
  %1536 = icmp eq ptr %1534, null
  br i1 %1536, label %1658, label %1537

1537:                                             ; preds = %1531
  %1538 = load ptr, ptr %1534, align 8, !tbaa !64
  %1539 = getelementptr inbounds %struct.xpvcv, ptr %1538, i64 0, i32 12
  %1540 = load i32, ptr %1539, align 4, !tbaa !66
  %1541 = and i32 %1540, 128
  %1542 = icmp eq i32 %1541, 0
  br i1 %1542, label %1543, label %1658

1543:                                             ; preds = %1537
  %1544 = load ptr, ptr @PL_main_cv, align 8, !tbaa !62
  %1545 = icmp eq ptr %1534, %1544
  br i1 %1545, label %1658, label %1546

1546:                                             ; preds = %1543
  %1547 = and i32 %1540, 256
  %1548 = icmp eq i32 %1547, 0
  br i1 %1548, label %1549, label %1658

1549:                                             ; preds = %1546
  %1550 = and i32 %1540, 32768
  %1551 = icmp eq i32 %1550, 0
  br i1 %1551, label %1554, label %1552

1552:                                             ; preds = %1549
  %1553 = call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %1534) #9
  br label %1557

1554:                                             ; preds = %1549
  %1555 = getelementptr inbounds %struct.xpvcv, ptr %1538, i64 0, i32 7
  %1556 = load ptr, ptr %1555, align 8, !tbaa !44
  br label %1557

1557:                                             ; preds = %1552, %1554
  %1558 = phi ptr [ %1553, %1552 ], [ %1556, %1554 ]
  %1559 = icmp eq ptr %1558, null
  br i1 %1559, label %1658, label %1560

1560:                                             ; preds = %1557
  %1561 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #9
  %1562 = load ptr, ptr %1534, align 8, !tbaa !64
  %1563 = getelementptr inbounds %struct.xpvcv, ptr %1562, i64 0, i32 12
  %1564 = load i32, ptr %1563, align 4, !tbaa !66
  %1565 = and i32 %1564, 32768
  %1566 = icmp eq i32 %1565, 0
  br i1 %1566, label %1569, label %1567

1567:                                             ; preds = %1560
  %1568 = call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %1534) #9
  br label %1572

1569:                                             ; preds = %1560
  %1570 = getelementptr inbounds %struct.xpvcv, ptr %1562, i64 0, i32 7
  %1571 = load ptr, ptr %1570, align 8, !tbaa !44
  br label %1572

1572:                                             ; preds = %1567, %1569
  %1573 = phi ptr [ %1568, %1567 ], [ %1571, %1569 ]
  %1574 = load ptr, ptr %1573, align 8, !tbaa !68
  %1575 = getelementptr inbounds %struct.xpvgv, ptr %1574, i64 0, i32 4
  %1576 = load ptr, ptr %1575, align 8, !tbaa !44
  %1577 = getelementptr inbounds %struct.hek, ptr %1576, i64 0, i32 2
  %1578 = load ptr, ptr %1534, align 8, !tbaa !64
  %1579 = getelementptr inbounds %struct.xpvcv, ptr %1578, i64 0, i32 12
  %1580 = load i32, ptr %1579, align 4, !tbaa !66
  %1581 = and i32 %1580, 32768
  %1582 = icmp eq i32 %1581, 0
  br i1 %1582, label %1585, label %1583

1583:                                             ; preds = %1572
  %1584 = call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %1534) #9
  br label %1588

1585:                                             ; preds = %1572
  %1586 = getelementptr inbounds %struct.xpvcv, ptr %1578, i64 0, i32 7
  %1587 = load ptr, ptr %1586, align 8, !tbaa !44
  br label %1588

1588:                                             ; preds = %1583, %1585
  %1589 = phi ptr [ %1584, %1583 ], [ %1587, %1585 ]
  %1590 = load ptr, ptr %1589, align 8, !tbaa !68
  %1591 = getelementptr inbounds %struct.xpvgv, ptr %1590, i64 0, i32 4
  %1592 = load ptr, ptr %1591, align 8, !tbaa !44
  %1593 = getelementptr inbounds %struct.hek, ptr %1592, i64 0, i32 1
  %1594 = load i32, ptr %1593, align 4, !tbaa !70
  %1595 = sext i32 %1594 to i64
  %1596 = load ptr, ptr %1534, align 8, !tbaa !64
  %1597 = getelementptr inbounds %struct.xpvcv, ptr %1596, i64 0, i32 12
  %1598 = load i32, ptr %1597, align 4, !tbaa !66
  %1599 = and i32 %1598, 32768
  %1600 = icmp eq i32 %1599, 0
  br i1 %1600, label %1603, label %1601

1601:                                             ; preds = %1588
  %1602 = call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %1534) #9
  br label %1606

1603:                                             ; preds = %1588
  %1604 = getelementptr inbounds %struct.xpvcv, ptr %1596, i64 0, i32 7
  %1605 = load ptr, ptr %1604, align 8, !tbaa !44
  br label %1606

1606:                                             ; preds = %1601, %1603
  %1607 = phi ptr [ %1602, %1601 ], [ %1605, %1603 ]
  %1608 = load ptr, ptr %1607, align 8, !tbaa !68
  %1609 = getelementptr inbounds %struct.xpvgv, ptr %1608, i64 0, i32 4
  %1610 = load ptr, ptr %1609, align 8, !tbaa !44
  %1611 = getelementptr inbounds %struct.hek, ptr %1610, i64 0, i32 1
  %1612 = load i32, ptr %1611, align 4, !tbaa !70
  %1613 = mul nsw i32 %1612, 17
  %1614 = add nsw i32 %1613, 1
  %1615 = sext i32 %1614 to i64
  %1616 = load ptr, ptr %1534, align 8, !tbaa !64
  %1617 = getelementptr inbounds %struct.xpvcv, ptr %1616, i64 0, i32 12
  %1618 = load i32, ptr %1617, align 4, !tbaa !66
  %1619 = and i32 %1618, 32768
  %1620 = icmp eq i32 %1619, 0
  br i1 %1620, label %1623, label %1621

1621:                                             ; preds = %1606
  %1622 = call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %1534) #9
  br label %1626

1623:                                             ; preds = %1606
  %1624 = getelementptr inbounds %struct.xpvcv, ptr %1616, i64 0, i32 7
  %1625 = load ptr, ptr %1624, align 8, !tbaa !44
  br label %1626

1626:                                             ; preds = %1621, %1623
  %1627 = phi ptr [ %1622, %1621 ], [ %1625, %1623 ]
  %1628 = load ptr, ptr %1627, align 8, !tbaa !68
  %1629 = getelementptr inbounds %struct.xpvgv, ptr %1628, i64 0, i32 4
  %1630 = load ptr, ptr %1629, align 8, !tbaa !44
  %1631 = getelementptr inbounds %struct.hek, ptr %1630, i64 0, i32 2
  %1632 = load ptr, ptr %1534, align 8, !tbaa !64
  %1633 = getelementptr inbounds %struct.xpvcv, ptr %1632, i64 0, i32 12
  %1634 = load i32, ptr %1633, align 4, !tbaa !66
  %1635 = and i32 %1634, 32768
  %1636 = icmp eq i32 %1635, 0
  br i1 %1636, label %1639, label %1637

1637:                                             ; preds = %1626
  %1638 = call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %1534) #9
  br label %1642

1639:                                             ; preds = %1626
  %1640 = getelementptr inbounds %struct.xpvcv, ptr %1632, i64 0, i32 7
  %1641 = load ptr, ptr %1640, align 8, !tbaa !44
  br label %1642

1642:                                             ; preds = %1637, %1639
  %1643 = phi ptr [ %1638, %1637 ], [ %1641, %1639 ]
  %1644 = load ptr, ptr %1643, align 8, !tbaa !68
  %1645 = getelementptr inbounds %struct.xpvgv, ptr %1644, i64 0, i32 4
  %1646 = load ptr, ptr %1645, align 8, !tbaa !44
  %1647 = getelementptr inbounds %struct.hek, ptr %1646, i64 0, i32 1
  %1648 = load i32, ptr %1647, align 4, !tbaa !70
  %1649 = sext i32 %1648 to i64
  %1650 = getelementptr inbounds i8, ptr %1631, i64 %1649
  %1651 = getelementptr inbounds i8, ptr %1650, i64 1
  %1652 = load i8, ptr %1651, align 1, !tbaa !44
  %1653 = and i8 %1652, 1
  %1654 = zext nneg i8 %1653 to i32
  %1655 = shl nuw nsw i32 %1654, 8
  %1656 = or disjoint i32 %1655, 66560
  %1657 = call ptr @Perl_pv_escape(ptr noundef %1561, ptr noundef nonnull %1577, i64 noundef %1595, i64 noundef %1615, ptr noundef null, i32 noundef %1656)
  br label %1658

1658:                                             ; preds = %1537, %1546, %1557, %1642, %1543, %1531
  %1659 = phi ptr [ @.str.312, %1531 ], [ @.str.313, %1537 ], [ @.str.314, %1543 ], [ @.str.315, %1546 ], [ %1657, %1642 ], [ @.str.316, %1557 ]
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.311, i64 noundef %1535, ptr noundef %1659)
  %1660 = load ptr, ptr %2, align 8, !tbaa !53
  %1661 = getelementptr inbounds %struct.xpvcv, ptr %1660, i64 0, i32 10
  %1662 = load ptr, ptr %1661, align 8, !tbaa !200
  %1663 = icmp ne ptr %1662, null
  %1664 = icmp slt i32 %3, %4
  %1665 = and i1 %1664, %1663
  br i1 %1665, label %1666, label %2098

1666:                                             ; preds = %1658
  %1667 = getelementptr inbounds %struct.xpvcv, ptr %1660, i64 0, i32 12
  %1668 = load i32, ptr %1667, align 4, !tbaa !66
  %1669 = and i32 %1668, 96
  %1670 = icmp eq i32 %1669, 0
  br i1 %1670, label %2098, label %1671

1671:                                             ; preds = %1666
  %1672 = add nsw i32 %0, 1
  %1673 = add nsw i32 %3, 1
  call void @Perl_do_sv_dump(i32 noundef %1672, ptr noundef %1, ptr noundef nonnull %1662, i32 noundef %1673, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6)
  br label %2098

1674:                                             ; preds = %470
  %1675 = load ptr, ptr %2, align 8, !tbaa !53
  %1676 = getelementptr inbounds %struct.xpvlv, ptr %1675, i64 0, i32 9
  %1677 = load i8, ptr %1676, align 8, !tbaa !201
  %1678 = sext i8 %1677 to i32
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.317, i32 noundef %1678)
  %1679 = load ptr, ptr %2, align 8, !tbaa !53
  %1680 = getelementptr inbounds %struct.xpvlv, ptr %1679, i64 0, i32 6
  %1681 = load i64, ptr %1680, align 8, !tbaa !44
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.318, i64 noundef %1681)
  %1682 = load ptr, ptr %2, align 8, !tbaa !53
  %1683 = getelementptr inbounds %struct.xpvlv, ptr %1682, i64 0, i32 7
  %1684 = load i64, ptr %1683, align 8, !tbaa !203
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.319, i64 noundef %1684)
  %1685 = load ptr, ptr %2, align 8, !tbaa !53
  %1686 = getelementptr inbounds %struct.xpvlv, ptr %1685, i64 0, i32 8
  %1687 = load ptr, ptr %1686, align 8, !tbaa !204
  %1688 = ptrtoint ptr %1687 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.320, i64 noundef %1688)
  %1689 = load ptr, ptr %2, align 8, !tbaa !53
  %1690 = getelementptr inbounds %struct.xpvlv, ptr %1689, i64 0, i32 10
  %1691 = load i8, ptr %1690, align 1, !tbaa !205
  %1692 = sext i8 %1691 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.321, i64 noundef %1692)
  %1693 = load ptr, ptr %2, align 8, !tbaa !53
  %1694 = getelementptr inbounds %struct.xpvlv, ptr %1693, i64 0, i32 9
  %1695 = load i8, ptr %1694, align 8, !tbaa !201
  %1696 = and i8 %1695, -33
  %1697 = icmp eq i8 %1696, 84
  br i1 %1697, label %1703, label %1698

1698:                                             ; preds = %1674
  %1699 = add nsw i32 %0, 1
  %1700 = getelementptr inbounds %struct.xpvlv, ptr %1693, i64 0, i32 8
  %1701 = load ptr, ptr %1700, align 8, !tbaa !204
  %1702 = add nsw i32 %3, 1
  tail call void @Perl_do_sv_dump(i32 noundef %1699, ptr noundef %1, ptr noundef %1701, i32 noundef %1702, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6)
  br label %1703

1703:                                             ; preds = %470, %458, %1674, %1698
  %1704 = load i32, ptr %14, align 4, !tbaa !60
  %1705 = and i32 %1704, 255
  %1706 = icmp eq i32 %1705, 8
  %1707 = and i32 %1704, 16826623
  %1708 = icmp eq i32 %1707, 16777226
  %1709 = or i1 %1706, %1708
  br i1 %1709, label %1915, label %1710

1710:                                             ; preds = %1703
  %1711 = and i32 %1704, 49152
  %1712 = icmp eq i32 %1711, 32768
  %1713 = add nsw i32 %1705, -9
  %1714 = icmp ult i32 %1713, 2
  %1715 = and i1 %1712, %1714
  br i1 %1715, label %1716, label %2098

1716:                                             ; preds = %1710
  %1717 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #9
  %1718 = load ptr, ptr %2, align 8, !tbaa !53
  %1719 = getelementptr inbounds %struct.xpvgv, ptr %1718, i64 0, i32 4
  %1720 = load ptr, ptr %1719, align 8, !tbaa !44
  %1721 = getelementptr inbounds %struct.hek, ptr %1720, i64 0, i32 2
  %1722 = getelementptr inbounds %struct.hek, ptr %1720, i64 0, i32 1
  %1723 = load i32, ptr %1722, align 4, !tbaa !70
  %1724 = sext i32 %1723 to i64
  %1725 = mul nsw i32 %1723, 17
  %1726 = add nsw i32 %1725, 1
  %1727 = sext i32 %1726 to i64
  %1728 = getelementptr inbounds i8, ptr %1721, i64 %1724
  %1729 = getelementptr inbounds i8, ptr %1728, i64 1
  %1730 = load i8, ptr %1729, align 1, !tbaa !44
  %1731 = and i8 %1730, 1
  %1732 = zext nneg i8 %1731 to i32
  %1733 = shl nuw nsw i32 %1732, 8
  %1734 = or disjoint i32 %1733, 66560
  %1735 = tail call ptr @Perl_pv_escape(ptr noundef %1717, ptr noundef nonnull %1721, i64 noundef %1724, i64 noundef %1727, ptr noundef null, i32 noundef %1734)
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.278, ptr noundef %1735)
  %1736 = load ptr, ptr %2, align 8, !tbaa !53
  %1737 = getelementptr inbounds %struct.xpvgv, ptr %1736, i64 0, i32 4
  %1738 = load ptr, ptr %1737, align 8, !tbaa !44
  %1739 = getelementptr inbounds %struct.hek, ptr %1738, i64 0, i32 1
  %1740 = load i32, ptr %1739, align 4, !tbaa !70
  %1741 = sext i32 %1740 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.322, i64 noundef %1741)
  %1742 = load ptr, ptr %2, align 8, !tbaa !53
  %1743 = getelementptr inbounds %struct.xpvgv, ptr %1742, i64 0, i32 5
  %1744 = load ptr, ptr %1743, align 8, !tbaa !44
  tail call void @Perl_do_hv_dump(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.323, ptr noundef %1744)
  %1745 = load ptr, ptr %2, align 8, !tbaa !53
  %1746 = getelementptr inbounds %struct.xpvgv, ptr %1745, i64 0, i32 2
  %1747 = load i64, ptr %1746, align 8, !tbaa !155
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.307, i64 noundef %1747)
  %1748 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %1749 = load ptr, ptr %1748, align 8, !tbaa !44
  %1750 = ptrtoint ptr %1749 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.324, i64 noundef %1750)
  %1751 = load ptr, ptr %1748, align 8, !tbaa !44
  %1752 = icmp eq ptr %1751, null
  br i1 %1752, label %2098, label %1753

1753:                                             ; preds = %1716
  %1754 = load ptr, ptr %1751, align 8, !tbaa !206
  %1755 = ptrtoint ptr %1754 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.325, i64 noundef %1755)
  %1756 = load ptr, ptr %1748, align 8, !tbaa !44
  %1757 = getelementptr inbounds %struct.gp, ptr %1756, i64 0, i32 4
  %1758 = load i32, ptr %1757, align 4, !tbaa !207
  %1759 = zext i32 %1758 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.125, i64 noundef %1759)
  %1760 = load ptr, ptr %1748, align 8, !tbaa !44
  %1761 = getelementptr inbounds %struct.gp, ptr %1760, i64 0, i32 1
  %1762 = load ptr, ptr %1761, align 8, !tbaa !208
  %1763 = ptrtoint ptr %1762 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.326, i64 noundef %1763)
  %1764 = load ptr, ptr %1748, align 8, !tbaa !44
  %1765 = getelementptr inbounds %struct.gp, ptr %1764, i64 0, i32 7
  %1766 = load ptr, ptr %1765, align 8, !tbaa !87
  %1767 = ptrtoint ptr %1766 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.327, i64 noundef %1767)
  %1768 = load ptr, ptr %1748, align 8, !tbaa !44
  %1769 = getelementptr inbounds %struct.gp, ptr %1768, i64 0, i32 6
  %1770 = load ptr, ptr %1769, align 8, !tbaa !209
  %1771 = ptrtoint ptr %1770 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.328, i64 noundef %1771)
  %1772 = load ptr, ptr %1748, align 8, !tbaa !44
  %1773 = getelementptr inbounds %struct.gp, ptr %1772, i64 0, i32 5
  %1774 = load ptr, ptr %1773, align 8, !tbaa !90
  %1775 = ptrtoint ptr %1774 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.329, i64 noundef %1775)
  %1776 = load ptr, ptr %1748, align 8, !tbaa !44
  %1777 = getelementptr inbounds %struct.gp, ptr %1776, i64 0, i32 2
  %1778 = load ptr, ptr %1777, align 8, !tbaa !86
  %1779 = ptrtoint ptr %1778 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.330, i64 noundef %1779)
  %1780 = load ptr, ptr %1748, align 8, !tbaa !44
  %1781 = getelementptr inbounds %struct.gp, ptr %1780, i64 0, i32 3
  %1782 = load i32, ptr %1781, align 8, !tbaa !84
  %1783 = zext i32 %1782 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.331, i64 noundef %1783)
  %1784 = load ptr, ptr %1748, align 8, !tbaa !44
  %1785 = getelementptr inbounds %struct.gp, ptr %1784, i64 0, i32 9
  %1786 = load i32, ptr %1785, align 8
  %1787 = lshr i32 %1786, 31
  %1788 = zext nneg i32 %1787 to i64
  %1789 = icmp sgt i32 %1786, -1
  %1790 = select i1 %1789, ptr @.str, ptr @.str.333
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.332, i64 noundef %1788, ptr noundef nonnull %1790)
  %1791 = load ptr, ptr %1748, align 8, !tbaa !44
  %1792 = getelementptr inbounds %struct.gp, ptr %1791, i64 0, i32 9
  %1793 = load i32, ptr %1792, align 8
  %1794 = and i32 %1793, 2147483647
  %1795 = zext nneg i32 %1794 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.334, i64 noundef %1795)
  %1796 = load ptr, ptr %1748, align 8, !tbaa !44
  %1797 = getelementptr inbounds %struct.gp, ptr %1796, i64 0, i32 10
  %1798 = load ptr, ptr %1797, align 8, !tbaa !210
  %1799 = icmp eq ptr %1798, null
  %1800 = getelementptr inbounds %struct.hek, ptr %1798, i64 0, i32 2
  %1801 = select i1 %1799, ptr null, ptr %1800
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.335, ptr noundef %1801)
  %1802 = load ptr, ptr %1748, align 8, !tbaa !44
  %1803 = getelementptr inbounds %struct.gp, ptr %1802, i64 0, i32 8
  %1804 = load ptr, ptr %1803, align 8, !tbaa !137
  tail call void @Perl_do_gv_dump(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.336, ptr noundef %1804)
  br label %2098

1805:                                             ; preds = %458, %470
  %1806 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %1807 = load ptr, ptr %1806, align 8, !tbaa !44
  %1808 = ptrtoint ptr %1807 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.337, i64 noundef %1808)
  %1809 = load ptr, ptr %2, align 8, !tbaa !53
  %1810 = getelementptr inbounds %struct.xpvio, ptr %1809, i64 0, i32 5
  %1811 = load ptr, ptr %1810, align 8, !tbaa !211
  %1812 = ptrtoint ptr %1811 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.338, i64 noundef %1812)
  %1813 = load ptr, ptr %2, align 8, !tbaa !53
  %1814 = getelementptr inbounds %struct.xpvio, ptr %1813, i64 0, i32 6
  %1815 = load ptr, ptr %1814, align 8, !tbaa !44
  %1816 = ptrtoint ptr %1815 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.339, i64 noundef %1816)
  %1817 = load ptr, ptr %2, align 8, !tbaa !53
  %1818 = getelementptr inbounds %struct.xpvio, ptr %1817, i64 0, i32 4
  %1819 = load i64, ptr %1818, align 8, !tbaa !44
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.340, i64 noundef %1819)
  %1820 = load ptr, ptr %2, align 8, !tbaa !53
  %1821 = getelementptr inbounds %struct.xpvio, ptr %1820, i64 0, i32 7
  %1822 = load i64, ptr %1821, align 8, !tbaa !212
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.341, i64 noundef %1822)
  %1823 = load ptr, ptr %2, align 8, !tbaa !53
  %1824 = getelementptr inbounds %struct.xpvio, ptr %1823, i64 0, i32 8
  %1825 = load i64, ptr %1824, align 8, !tbaa !213
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.342, i64 noundef %1825)
  %1826 = load ptr, ptr %2, align 8, !tbaa !53
  %1827 = getelementptr inbounds %struct.xpvio, ptr %1826, i64 0, i32 9
  %1828 = load i64, ptr %1827, align 8, !tbaa !214
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.343, i64 noundef %1828)
  %1829 = load ptr, ptr %2, align 8, !tbaa !53
  %1830 = getelementptr inbounds %struct.xpvio, ptr %1829, i64 0, i32 10
  %1831 = load ptr, ptr %1830, align 8, !tbaa !215
  %1832 = icmp eq ptr %1831, null
  br i1 %1832, label %1834, label %1833

1833:                                             ; preds = %1805
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.344, ptr noundef nonnull %1831)
  br label %1834

1834:                                             ; preds = %1833, %1805
  %1835 = load ptr, ptr %2, align 8, !tbaa !53
  %1836 = getelementptr inbounds %struct.xpvio, ptr %1835, i64 0, i32 11
  %1837 = load ptr, ptr %1836, align 8, !tbaa !216
  %1838 = icmp eq ptr %1837, null
  br i1 %1838, label %1844, label %1839

1839:                                             ; preds = %1834
  %1840 = getelementptr inbounds %struct.gv, ptr %1837, i64 0, i32 2
  %1841 = load i32, ptr %1840, align 4, !tbaa !83
  %1842 = and i32 %1841, 255
  %1843 = icmp eq i32 %1842, 9
  br i1 %1843, label %1844, label %1845

1844:                                             ; preds = %1839, %1834
  tail call void @Perl_do_gv_dump(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.345, ptr noundef %1837)
  br label %1852

1845:                                             ; preds = %1839
  %1846 = ptrtoint ptr %1837 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.346, i64 noundef %1846)
  %1847 = add nsw i32 %0, 1
  %1848 = load ptr, ptr %2, align 8, !tbaa !53
  %1849 = getelementptr inbounds %struct.xpvio, ptr %1848, i64 0, i32 11
  %1850 = load ptr, ptr %1849, align 8, !tbaa !216
  %1851 = add nsw i32 %3, 1
  tail call void @Perl_do_sv_dump(i32 noundef %1847, ptr noundef %1, ptr noundef %1850, i32 noundef %1851, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6)
  br label %1852

1852:                                             ; preds = %1845, %1844
  %1853 = load ptr, ptr %2, align 8, !tbaa !53
  %1854 = getelementptr inbounds %struct.xpvio, ptr %1853, i64 0, i32 12
  %1855 = load ptr, ptr %1854, align 8, !tbaa !217
  %1856 = icmp eq ptr %1855, null
  br i1 %1856, label %1858, label %1857

1857:                                             ; preds = %1852
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.347, ptr noundef nonnull %1855)
  br label %1858

1858:                                             ; preds = %1857, %1852
  %1859 = load ptr, ptr %2, align 8, !tbaa !53
  %1860 = getelementptr inbounds %struct.xpvio, ptr %1859, i64 0, i32 13
  %1861 = load ptr, ptr %1860, align 8, !tbaa !218
  %1862 = icmp eq ptr %1861, null
  br i1 %1862, label %1868, label %1863

1863:                                             ; preds = %1858
  %1864 = getelementptr inbounds %struct.gv, ptr %1861, i64 0, i32 2
  %1865 = load i32, ptr %1864, align 4, !tbaa !83
  %1866 = and i32 %1865, 255
  %1867 = icmp eq i32 %1866, 9
  br i1 %1867, label %1868, label %1869

1868:                                             ; preds = %1863, %1858
  tail call void @Perl_do_gv_dump(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.348, ptr noundef %1861)
  br label %1876

1869:                                             ; preds = %1863
  %1870 = ptrtoint ptr %1861 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.349, i64 noundef %1870)
  %1871 = add nsw i32 %0, 1
  %1872 = load ptr, ptr %2, align 8, !tbaa !53
  %1873 = getelementptr inbounds %struct.xpvio, ptr %1872, i64 0, i32 13
  %1874 = load ptr, ptr %1873, align 8, !tbaa !218
  %1875 = add nsw i32 %3, 1
  tail call void @Perl_do_sv_dump(i32 noundef %1871, ptr noundef %1, ptr noundef %1874, i32 noundef %1875, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6)
  br label %1876

1876:                                             ; preds = %1869, %1868
  %1877 = load ptr, ptr %2, align 8, !tbaa !53
  %1878 = getelementptr inbounds %struct.xpvio, ptr %1877, i64 0, i32 14
  %1879 = load ptr, ptr %1878, align 8, !tbaa !219
  %1880 = icmp eq ptr %1879, null
  br i1 %1880, label %1882, label %1881

1881:                                             ; preds = %1876
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.350, ptr noundef nonnull %1879)
  br label %1882

1882:                                             ; preds = %1881, %1876
  %1883 = load ptr, ptr %2, align 8, !tbaa !53
  %1884 = getelementptr inbounds %struct.xpvio, ptr %1883, i64 0, i32 15
  %1885 = load ptr, ptr %1884, align 8, !tbaa !220
  %1886 = icmp eq ptr %1885, null
  br i1 %1886, label %1892, label %1887

1887:                                             ; preds = %1882
  %1888 = getelementptr inbounds %struct.gv, ptr %1885, i64 0, i32 2
  %1889 = load i32, ptr %1888, align 4, !tbaa !83
  %1890 = and i32 %1889, 255
  %1891 = icmp eq i32 %1890, 9
  br i1 %1891, label %1892, label %1893

1892:                                             ; preds = %1887, %1882
  tail call void @Perl_do_gv_dump(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.351, ptr noundef %1885)
  br label %1900

1893:                                             ; preds = %1887
  %1894 = ptrtoint ptr %1885 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.352, i64 noundef %1894)
  %1895 = add nsw i32 %0, 1
  %1896 = load ptr, ptr %2, align 8, !tbaa !53
  %1897 = getelementptr inbounds %struct.xpvio, ptr %1896, i64 0, i32 15
  %1898 = load ptr, ptr %1897, align 8, !tbaa !220
  %1899 = add nsw i32 %3, 1
  tail call void @Perl_do_sv_dump(i32 noundef %1895, ptr noundef %1, ptr noundef %1898, i32 noundef %1899, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6)
  br label %1900

1900:                                             ; preds = %1893, %1892
  %1901 = load ptr, ptr %2, align 8, !tbaa !53
  %1902 = getelementptr inbounds %struct.xpvio, ptr %1901, i64 0, i32 16
  %1903 = load i8, ptr %1902, align 8, !tbaa !221
  %1904 = zext i8 %1903 to i64
  %1905 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %1904
  %1906 = load i32, ptr %1905, align 4, !tbaa !47
  %1907 = and i32 %1906, 16448
  %1908 = icmp eq i32 %1907, 16448
  %1909 = sext i8 %1903 to i32
  %1910 = select i1 %1908, ptr @.str.353, ptr @.str.354
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %1910, i32 noundef %1909)
  %1911 = load ptr, ptr %2, align 8, !tbaa !53
  %1912 = getelementptr inbounds %struct.xpvio, ptr %1911, i64 0, i32 17
  %1913 = load i8, ptr %1912, align 1, !tbaa !157
  %1914 = zext i8 %1913 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.307, i64 noundef %1914)
  br label %2098

1915:                                             ; preds = %458, %470, %1703
  %1916 = getelementptr inbounds %struct.p5rx, ptr %2, i64 0, i32 3
  %1917 = load ptr, ptr %1916, align 8, !tbaa !44
  tail call void @Perl_sv_setpv(ptr noundef nonnull %27, ptr noundef nonnull @.str) #9
  %1918 = getelementptr inbounds %struct.regexp, ptr %1917, i64 0, i32 24
  %1919 = load i16, ptr %1918, align 8
  %1920 = lshr i16 %1919, 4
  %1921 = and i16 %1920, 511
  %1922 = zext nneg i16 %1921 to i32
  br label %1923

1923:                                             ; preds = %1932, %1915
  %1924 = phi i64 [ 0, %1915 ], [ %1933, %1932 ]
  %1925 = getelementptr inbounds i8, ptr @regexp_extflags_names, i64 %1924
  %1926 = load i32, ptr %1925, align 16, !tbaa !106
  %1927 = and i32 %1926, %1922
  %1928 = icmp eq i32 %1927, 0
  br i1 %1928, label %1932, label %1929

1929:                                             ; preds = %1923
  %1930 = getelementptr inbounds %struct.flag_to_name, ptr %1925, i64 0, i32 1
  %1931 = load ptr, ptr %1930, align 8, !tbaa !108
  tail call void @Perl_sv_catpv(ptr noundef %27, ptr noundef %1931) #9
  br label %1932

1932:                                             ; preds = %1923, %1929
  %1933 = add nuw nsw i64 %1924, 16
  %1934 = icmp ult i64 %1924, 352
  br i1 %1934, label %1923, label %1935, !llvm.loop !109

1935:                                             ; preds = %1932
  %1936 = load ptr, ptr %27, align 8, !tbaa !53
  %1937 = getelementptr inbounds %struct.xpv, ptr %1936, i64 0, i32 2
  %1938 = load i64, ptr %1937, align 8, !tbaa !56
  %1939 = icmp eq i64 %1938, 0
  br i1 %1939, label %1950, label %1940

1940:                                             ; preds = %1935
  %1941 = load ptr, ptr %218, align 8, !tbaa !44
  %1942 = getelementptr inbounds i8, ptr %1941, i64 %1938
  %1943 = getelementptr inbounds i8, ptr %1942, i64 -1
  %1944 = load i8, ptr %1943, align 1, !tbaa !44
  %1945 = icmp eq i8 %1944, 44
  br i1 %1945, label %1946, label %1950

1946:                                             ; preds = %1940
  %1947 = add i64 %1938, -1
  store i64 %1947, ptr %1937, align 8, !tbaa !56
  %1948 = load ptr, ptr %218, align 8, !tbaa !44
  %1949 = getelementptr inbounds i8, ptr %1948, i64 %1947
  store i8 0, ptr %1949, align 1, !tbaa !44
  br label %1950

1950:                                             ; preds = %1946, %1940, %1935
  %1951 = load i16, ptr %1918, align 8
  %1952 = lshr i16 %1951, 4
  %1953 = and i16 %1952, 511
  %1954 = zext nneg i16 %1953 to i64
  %1955 = load ptr, ptr %218, align 8, !tbaa !44
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.355, i64 noundef %1954, ptr noundef %1955)
  tail call void @Perl_sv_setpv(ptr noundef nonnull %27, ptr noundef nonnull @.str) #9
  %1956 = getelementptr inbounds %struct.regexp, ptr %1917, i64 0, i32 7
  %1957 = load i32, ptr %1956, align 8, !tbaa !104
  br label %1958

1958:                                             ; preds = %1967, %1950
  %1959 = phi i64 [ 0, %1950 ], [ %1968, %1967 ]
  %1960 = getelementptr inbounds i8, ptr @regexp_extflags_names, i64 %1959
  %1961 = load i32, ptr %1960, align 16, !tbaa !106
  %1962 = and i32 %1961, %1957
  %1963 = icmp eq i32 %1962, 0
  br i1 %1963, label %1967, label %1964

1964:                                             ; preds = %1958
  %1965 = getelementptr inbounds %struct.flag_to_name, ptr %1960, i64 0, i32 1
  %1966 = load ptr, ptr %1965, align 8, !tbaa !108
  tail call void @Perl_sv_catpv(ptr noundef nonnull %27, ptr noundef %1966) #9
  br label %1967

1967:                                             ; preds = %1958, %1964
  %1968 = add nuw nsw i64 %1959, 16
  %1969 = icmp ult i64 %1959, 352
  br i1 %1969, label %1958, label %1970, !llvm.loop !109

1970:                                             ; preds = %1967
  %1971 = load ptr, ptr %27, align 8, !tbaa !53
  %1972 = getelementptr inbounds %struct.xpv, ptr %1971, i64 0, i32 2
  %1973 = load i64, ptr %1972, align 8, !tbaa !56
  %1974 = icmp eq i64 %1973, 0
  br i1 %1974, label %1985, label %1975

1975:                                             ; preds = %1970
  %1976 = load ptr, ptr %218, align 8, !tbaa !44
  %1977 = getelementptr inbounds i8, ptr %1976, i64 %1973
  %1978 = getelementptr inbounds i8, ptr %1977, i64 -1
  %1979 = load i8, ptr %1978, align 1, !tbaa !44
  %1980 = icmp eq i8 %1979, 44
  br i1 %1980, label %1981, label %1985

1981:                                             ; preds = %1975
  %1982 = add i64 %1973, -1
  store i64 %1982, ptr %1972, align 8, !tbaa !56
  %1983 = load ptr, ptr %218, align 8, !tbaa !44
  %1984 = getelementptr inbounds i8, ptr %1983, i64 %1982
  store i8 0, ptr %1984, align 1, !tbaa !44
  br label %1985

1985:                                             ; preds = %1981, %1975, %1970
  %1986 = load i32, ptr %1956, align 8, !tbaa !104
  %1987 = zext i32 %1986 to i64
  %1988 = load ptr, ptr %218, align 8, !tbaa !44
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.356, i64 noundef %1987, ptr noundef %1988)
  %1989 = getelementptr inbounds %struct.regexp, ptr %1917, i64 0, i32 4
  %1990 = load ptr, ptr %1989, align 8, !tbaa !222
  %1991 = ptrtoint ptr %1990 to i64
  %1992 = icmp eq ptr %1990, @PL_core_reg_engine
  %1993 = select i1 %1992, ptr @.str.358, ptr @.str.359
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.357, i64 noundef %1991, ptr noundef nonnull %1993)
  %1994 = load ptr, ptr %1989, align 8, !tbaa !222
  %1995 = icmp eq ptr %1994, @PL_core_reg_engine
  br i1 %1995, label %1996, label %2030

1996:                                             ; preds = %1985
  tail call void @Perl_sv_setpv(ptr noundef nonnull %27, ptr noundef nonnull @.str) #9
  %1997 = getelementptr inbounds %struct.regexp, ptr %1917, i64 0, i32 13
  %1998 = load i32, ptr %1997, align 4, !tbaa !105
  br label %1999

1999:                                             ; preds = %2008, %1996
  %2000 = phi i64 [ 0, %1996 ], [ %2009, %2008 ]
  %2001 = getelementptr inbounds i8, ptr @regexp_core_intflags_names, i64 %2000
  %2002 = load i32, ptr %2001, align 16, !tbaa !106
  %2003 = and i32 %2002, %1998
  %2004 = icmp eq i32 %2003, 0
  br i1 %2004, label %2008, label %2005

2005:                                             ; preds = %1999
  %2006 = getelementptr inbounds %struct.flag_to_name, ptr %2001, i64 0, i32 1
  %2007 = load ptr, ptr %2006, align 8, !tbaa !108
  tail call void @Perl_sv_catpv(ptr noundef nonnull %27, ptr noundef %2007) #9
  br label %2008

2008:                                             ; preds = %1999, %2005
  %2009 = add nuw nsw i64 %2000, 16
  %2010 = icmp ult i64 %2000, 192
  br i1 %2010, label %1999, label %2011, !llvm.loop !109

2011:                                             ; preds = %2008
  %2012 = load ptr, ptr %27, align 8, !tbaa !53
  %2013 = getelementptr inbounds %struct.xpv, ptr %2012, i64 0, i32 2
  %2014 = load i64, ptr %2013, align 8, !tbaa !56
  %2015 = icmp eq i64 %2014, 0
  br i1 %2015, label %2026, label %2016

2016:                                             ; preds = %2011
  %2017 = load ptr, ptr %218, align 8, !tbaa !44
  %2018 = getelementptr inbounds i8, ptr %2017, i64 %2014
  %2019 = getelementptr inbounds i8, ptr %2018, i64 -1
  %2020 = load i8, ptr %2019, align 1, !tbaa !44
  %2021 = icmp eq i8 %2020, 44
  br i1 %2021, label %2022, label %2026

2022:                                             ; preds = %2016
  %2023 = add i64 %2014, -1
  store i64 %2023, ptr %2013, align 8, !tbaa !56
  %2024 = load ptr, ptr %218, align 8, !tbaa !44
  %2025 = getelementptr inbounds i8, ptr %2024, i64 %2023
  store i8 0, ptr %2025, align 1, !tbaa !44
  br label %2026

2026:                                             ; preds = %2022, %2016, %2011
  %2027 = load i32, ptr %1997, align 4, !tbaa !105
  %2028 = zext i32 %2027 to i64
  %2029 = load ptr, ptr %218, align 8, !tbaa !44
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.360, i64 noundef %2028, ptr noundef %2029)
  br label %2034

2030:                                             ; preds = %1985
  %2031 = getelementptr inbounds %struct.regexp, ptr %1917, i64 0, i32 13
  %2032 = load i32, ptr %2031, align 4, !tbaa !105
  %2033 = zext i32 %2032 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.361, i64 noundef %2033)
  br label %2034

2034:                                             ; preds = %2030, %2026
  %2035 = getelementptr inbounds %struct.regexp, ptr %1917, i64 0, i32 12
  %2036 = load i32, ptr %2035, align 8, !tbaa !223
  %2037 = zext i32 %2036 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.362, i64 noundef %2037)
  %2038 = getelementptr inbounds %struct.regexp, ptr %1917, i64 0, i32 15
  %2039 = load i32, ptr %2038, align 8, !tbaa !224
  %2040 = zext i32 %2039 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.363, i64 noundef %2040)
  %2041 = getelementptr inbounds %struct.regexp, ptr %1917, i64 0, i32 16
  %2042 = load i32, ptr %2041, align 4, !tbaa !225
  %2043 = zext i32 %2042 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.364, i64 noundef %2043)
  %2044 = getelementptr inbounds %struct.regexp, ptr %1917, i64 0, i32 8
  %2045 = load i64, ptr %2044, align 8, !tbaa !226
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.365, i64 noundef %2045)
  %2046 = getelementptr inbounds %struct.regexp, ptr %1917, i64 0, i32 9
  %2047 = load i64, ptr %2046, align 8, !tbaa !227
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.366, i64 noundef %2047)
  %2048 = getelementptr inbounds %struct.regexp, ptr %1917, i64 0, i32 10
  %2049 = load i64, ptr %2048, align 8, !tbaa !228
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.367, i64 noundef %2049)
  %2050 = load i16, ptr %1918, align 8
  %2051 = and i16 %2050, 15
  %2052 = zext nneg i16 %2051 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.368, i64 noundef %2052)
  %2053 = getelementptr inbounds %struct.regexp, ptr %1917, i64 0, i32 20
  %2054 = load i64, ptr %2053, align 8, !tbaa !229
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.369, i64 noundef %2054)
  %2055 = getelementptr inbounds %struct.regexp, ptr %1917, i64 0, i32 21
  %2056 = load i64, ptr %2055, align 8, !tbaa !230
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.370, i64 noundef %2056)
  %2057 = getelementptr inbounds %struct.regexp, ptr %1917, i64 0, i32 22
  %2058 = load i64, ptr %2057, align 8, !tbaa !231
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.371, i64 noundef %2058)
  %2059 = getelementptr inbounds %struct.regexp, ptr %1917, i64 0, i32 18
  %2060 = load ptr, ptr %2059, align 8, !tbaa !232
  %2061 = icmp eq ptr %2060, null
  br i1 %2061, label %2066, label %2062

2062:                                             ; preds = %2034
  %2063 = ptrtoint ptr %2060 to i64
  %2064 = load i64, ptr %2053, align 8, !tbaa !229
  %2065 = tail call ptr @Perl_pv_display(ptr noundef nonnull %27, ptr noundef nonnull %2060, i64 noundef %2064, i64 noundef 50, i64 noundef %6)
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.372, i64 noundef %2063, ptr noundef %2065)
  br label %2067

2066:                                             ; preds = %2034
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.373)
  br label %2067

2067:                                             ; preds = %2066, %2062
  %2068 = getelementptr inbounds %struct.regexp, ptr %1917, i64 0, i32 5
  %2069 = load ptr, ptr %2068, align 8, !tbaa !233
  %2070 = ptrtoint ptr %2069 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.374, i64 noundef %2070)
  %2071 = icmp slt i32 %3, %4
  br i1 %2071, label %2072, label %2078

2072:                                             ; preds = %2067
  %2073 = load ptr, ptr %2068, align 8, !tbaa !233
  %2074 = icmp eq ptr %2073, null
  br i1 %2074, label %2078, label %2075

2075:                                             ; preds = %2072
  %2076 = add nsw i32 %0, 1
  %2077 = add nsw i32 %3, 1
  tail call void @Perl_do_sv_dump(i32 noundef %2076, ptr noundef %1, ptr noundef nonnull %2073, i32 noundef %2077, i32 noundef %4, i1 noundef zeroext %5, i64 noundef %6)
  br label %2078

2078:                                             ; preds = %2075, %2072, %2067
  %2079 = getelementptr inbounds %struct.regexp, ptr %1917, i64 0, i32 6
  %2080 = load ptr, ptr %2079, align 8, !tbaa !234
  %2081 = ptrtoint ptr %2080 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.375, i64 noundef %2081)
  %2082 = getelementptr inbounds %struct.regexp, ptr %1917, i64 0, i32 11
  %2083 = load ptr, ptr %2082, align 8, !tbaa !100
  %2084 = ptrtoint ptr %2083 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.376, i64 noundef %2084)
  %2085 = getelementptr inbounds %struct.regexp, ptr %1917, i64 0, i32 14
  %2086 = load ptr, ptr %2085, align 8, !tbaa !235
  %2087 = ptrtoint ptr %2086 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.377, i64 noundef %2087)
  %2088 = getelementptr inbounds %struct.regexp, ptr %1917, i64 0, i32 17
  %2089 = load ptr, ptr %2088, align 8, !tbaa !236
  %2090 = ptrtoint ptr %2089 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.378, i64 noundef %2090)
  %2091 = getelementptr inbounds %struct.regexp, ptr %1917, i64 0, i32 25
  %2092 = load ptr, ptr %2091, align 8, !tbaa !237
  %2093 = ptrtoint ptr %2092 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.379, i64 noundef %2093)
  %2094 = getelementptr inbounds %struct.regexp, ptr %1917, i64 0, i32 19
  %2095 = load ptr, ptr %2094, align 8, !tbaa !238
  %2096 = ptrtoint ptr %2095 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.380, i64 noundef %2096)
  br label %2098

2097:                                             ; preds = %1267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #9
  br label %2098

2098:                                             ; preds = %1327, %557, %2097, %458, %470, %1666, %1251, %1253, %1716, %1710, %1658, %1671, %525, %539, %2078, %1900, %1753
  %2099 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 1
  %2100 = load i32, ptr %2099, align 8, !tbaa !61
  %2101 = icmp ugt i32 %2100, 1
  br i1 %2101, label %2102, label %2104

2102:                                             ; preds = %2098
  %2103 = add i32 %2100, -1
  store i32 %2103, ptr %2099, align 8, !tbaa !61
  br label %2105

2104:                                             ; preds = %2098
  call void @Perl_sv_free2(ptr noundef %27, i32 noundef %2100) #9
  br label %2105

2105:                                             ; preds = %2104, %2102, %330, %328, %254, %252, %246, %244, %12
  ret void
}

declare i32 @PerlIO_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_magic_dump(ptr noundef %0) local_unnamed_addr #0 !prof !59 {
  %2 = tail call ptr @Perl_PerlIO_stderr() #9
  tail call void @Perl_do_magic_dump(i32 noundef 0, ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false, i64 noundef 0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_do_hv_dump(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !59 {
  %5 = ptrtoint ptr %3 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.132, ptr noundef %2, i64 noundef %5)
  %6 = icmp eq ptr %3, null
  br i1 %6, label %128, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.hv, ptr %3, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !126
  %10 = and i32 %9, 33554432
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %33, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.hv, ptr %3, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = load ptr, ptr %3, align 8, !tbaa !79
  %16 = getelementptr inbounds %struct.xpvhv, ptr %15, i64 0, i32 3
  %17 = load i64, ptr %16, align 8, !tbaa !81
  %18 = getelementptr ptr, ptr %14, i64 %17
  %19 = getelementptr ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = icmp eq ptr %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %12
  %23 = getelementptr i8, ptr %18, i64 36
  %24 = load i32, ptr %23, align 4, !tbaa !127
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %20, align 8, !tbaa !62
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %22, %26
  %30 = phi ptr [ %19, %22 ], [ %20, %26 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  %32 = getelementptr inbounds %struct.hek, ptr %31, i64 0, i32 2
  br label %33

33:                                               ; preds = %7, %12, %26, %29
  %34 = phi ptr [ %32, %29 ], [ null, %26 ], [ null, %12 ], [ null, %7 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %128, label %36

36:                                               ; preds = %33
  %37 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #9
  %38 = load i32, ptr %8, align 4, !tbaa !126
  %39 = and i32 %38, 33554432
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %64, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.hv, ptr %3, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !44
  %44 = load ptr, ptr %3, align 8, !tbaa !79
  %45 = getelementptr inbounds %struct.xpvhv, ptr %44, i64 0, i32 3
  %46 = load i64, ptr %45, align 8, !tbaa !81
  %47 = getelementptr ptr, ptr %43, i64 %46
  %48 = getelementptr ptr, ptr %47, i64 1
  %49 = load ptr, ptr %48, align 8, !tbaa !44
  %50 = icmp eq ptr %49, null
  br i1 %50, label %64, label %51

51:                                               ; preds = %41
  %52 = getelementptr i8, ptr %47, i64 36
  %53 = load i32, ptr %52, align 4, !tbaa !127
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %49, align 8, !tbaa !62
  %57 = icmp eq ptr %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %51, %55
  %59 = phi ptr [ %48, %51 ], [ %49, %55 ]
  %60 = load ptr, ptr %59, align 8, !tbaa !44
  %61 = getelementptr inbounds %struct.hek, ptr %60, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !70
  %63 = sext i32 %62 to i64
  br label %64

64:                                               ; preds = %36, %41, %55, %58
  %65 = phi i64 [ %63, %58 ], [ 0, %55 ], [ 0, %41 ], [ 0, %36 ]
  br i1 %40, label %91, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.hv, ptr %3, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !44
  %69 = load ptr, ptr %3, align 8, !tbaa !79
  %70 = getelementptr inbounds %struct.xpvhv, ptr %69, i64 0, i32 3
  %71 = load i64, ptr %70, align 8, !tbaa !81
  %72 = getelementptr ptr, ptr %68, i64 %71
  %73 = getelementptr ptr, ptr %72, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !44
  %75 = icmp eq ptr %74, null
  br i1 %75, label %91, label %76

76:                                               ; preds = %66
  %77 = getelementptr i8, ptr %72, i64 36
  %78 = load i32, ptr %77, align 4, !tbaa !127
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %74, align 8, !tbaa !62
  %82 = icmp eq ptr %81, null
  br i1 %82, label %91, label %83

83:                                               ; preds = %76, %80
  %84 = phi ptr [ %73, %76 ], [ %74, %80 ]
  %85 = load ptr, ptr %84, align 8, !tbaa !44
  %86 = getelementptr inbounds %struct.hek, ptr %85, i64 0, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !70
  %88 = mul nsw i32 %87, 17
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  br label %91

91:                                               ; preds = %64, %66, %80, %83
  %92 = phi i64 [ %90, %83 ], [ 1, %80 ], [ 1, %66 ], [ 1, %64 ]
  br i1 %40, label %124, label %93

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.hv, ptr %3, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !44
  %96 = load ptr, ptr %3, align 8, !tbaa !79
  %97 = getelementptr inbounds %struct.xpvhv, ptr %96, i64 0, i32 3
  %98 = load i64, ptr %97, align 8, !tbaa !81
  %99 = getelementptr ptr, ptr %95, i64 %98
  %100 = getelementptr ptr, ptr %99, i64 1
  %101 = load ptr, ptr %100, align 8, !tbaa !44
  %102 = icmp eq ptr %101, null
  br i1 %102, label %124, label %103

103:                                              ; preds = %93
  %104 = getelementptr i8, ptr %99, i64 36
  %105 = load i32, ptr %104, align 4, !tbaa !127
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %101, align 8, !tbaa !62
  %109 = icmp eq ptr %108, null
  br i1 %109, label %124, label %110

110:                                              ; preds = %103, %107
  %111 = phi ptr [ %100, %103 ], [ %101, %107 ]
  %112 = load ptr, ptr %111, align 8, !tbaa !44
  %113 = getelementptr inbounds %struct.hek, ptr %112, i64 0, i32 2
  %114 = getelementptr inbounds %struct.hek, ptr %112, i64 0, i32 1
  %115 = load i32, ptr %114, align 4, !tbaa !70
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, ptr %113, i64 %116
  %118 = getelementptr inbounds i8, ptr %117, i64 1
  %119 = load i8, ptr %118, align 1, !tbaa !44
  %120 = and i8 %119, 1
  %121 = zext nneg i8 %120 to i32
  %122 = shl nuw nsw i32 %121, 8
  %123 = or disjoint i32 %122, 66560
  br label %124

124:                                              ; preds = %91, %93, %107, %110
  %125 = phi i32 [ %123, %110 ], [ 66560, %107 ], [ 66560, %93 ], [ 66560, %91 ]
  %126 = tail call ptr @Perl_pv_escape(ptr noundef %37, ptr noundef nonnull %34, i64 noundef %65, i64 noundef %92, ptr noundef null, i32 noundef %125)
  %127 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.133, ptr noundef %126) #9
  br label %130

128:                                              ; preds = %33, %4
  %129 = tail call i32 @PerlIO_putc(ptr noundef %1, i32 noundef 10) #9
  br label %130

130:                                              ; preds = %128, %124
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_do_gv_dump(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !59 {
  %5 = ptrtoint ptr %3 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.132, ptr noundef %2, i64 noundef %5)
  %6 = icmp eq ptr %3, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str, i64 noundef 0) #9
  %9 = load ptr, ptr %3, align 8, !tbaa !68
  %10 = getelementptr inbounds %struct.xpvgv, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.hek, ptr %11, i64 0, i32 2
  %13 = getelementptr inbounds %struct.hek, ptr %11, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !70
  %15 = sext i32 %14 to i64
  %16 = mul nsw i32 %14, 17
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %12, i64 %15
  %20 = getelementptr inbounds i8, ptr %19, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !44
  %22 = and i8 %21, 1
  %23 = zext nneg i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 8
  %25 = or disjoint i32 %24, 66560
  %26 = tail call ptr @Perl_pv_escape(ptr noundef %8, ptr noundef nonnull %12, i64 noundef %15, i64 noundef %18, ptr noundef null, i32 noundef %25)
  %27 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.133, ptr noundef %26) #9
  br label %30

28:                                               ; preds = %4
  %29 = tail call i32 @PerlIO_putc(ptr noundef %1, i32 noundef 10) #9
  br label %30

30:                                               ; preds = %28, %7
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_do_gvgv_dump(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !59 {
  %5 = ptrtoint ptr %3 to i64
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.132, ptr noundef %2, i64 noundef %5)
  %6 = icmp eq ptr %3, null
  br i1 %6, label %151, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #9
  %9 = load ptr, ptr %3, align 8, !tbaa !68
  %10 = getelementptr inbounds %struct.xpvgv, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.134) #9
  %13 = icmp eq ptr %11, null
  br i1 %13, label %131, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.hv, ptr %11, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !126
  %17 = and i32 %16, 33554432
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.hv, ptr %11, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = load ptr, ptr %11, align 8, !tbaa !79
  %23 = getelementptr inbounds %struct.xpvhv, ptr %22, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !81
  %25 = getelementptr ptr, ptr %21, i64 %24
  %26 = getelementptr ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %19
  %30 = getelementptr i8, ptr %25, i64 36
  %31 = load i32, ptr %30, align 4, !tbaa !127
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %27, align 8, !tbaa !62
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %29, %33
  %37 = phi ptr [ %26, %29 ], [ %27, %33 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !44
  %39 = getelementptr inbounds %struct.hek, ptr %38, i64 0, i32 2
  br label %40

40:                                               ; preds = %14, %19, %33, %36
  %41 = phi ptr [ %39, %36 ], [ null, %33 ], [ null, %19 ], [ null, %14 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %131, label %43

43:                                               ; preds = %40
  br i1 %18, label %67, label %44

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.hv, ptr %11, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !44
  %47 = load ptr, ptr %11, align 8, !tbaa !79
  %48 = getelementptr inbounds %struct.xpvhv, ptr %47, i64 0, i32 3
  %49 = load i64, ptr %48, align 8, !tbaa !81
  %50 = getelementptr ptr, ptr %46, i64 %49
  %51 = getelementptr ptr, ptr %50, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !44
  %53 = icmp eq ptr %52, null
  br i1 %53, label %67, label %54

54:                                               ; preds = %44
  %55 = getelementptr i8, ptr %50, i64 36
  %56 = load i32, ptr %55, align 4, !tbaa !127
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %52, align 8, !tbaa !62
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %54, %58
  %62 = phi ptr [ %51, %54 ], [ %52, %58 ]
  %63 = load ptr, ptr %62, align 8, !tbaa !44
  %64 = getelementptr inbounds %struct.hek, ptr %63, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !70
  %66 = sext i32 %65 to i64
  br label %67

67:                                               ; preds = %43, %44, %58, %61
  %68 = phi i64 [ %66, %61 ], [ 0, %58 ], [ 0, %44 ], [ 0, %43 ]
  br i1 %18, label %94, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.hv, ptr %11, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !44
  %72 = load ptr, ptr %11, align 8, !tbaa !79
  %73 = getelementptr inbounds %struct.xpvhv, ptr %72, i64 0, i32 3
  %74 = load i64, ptr %73, align 8, !tbaa !81
  %75 = getelementptr ptr, ptr %71, i64 %74
  %76 = getelementptr ptr, ptr %75, i64 1
  %77 = load ptr, ptr %76, align 8, !tbaa !44
  %78 = icmp eq ptr %77, null
  br i1 %78, label %94, label %79

79:                                               ; preds = %69
  %80 = getelementptr i8, ptr %75, i64 36
  %81 = load i32, ptr %80, align 4, !tbaa !127
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %77, align 8, !tbaa !62
  %85 = icmp eq ptr %84, null
  br i1 %85, label %94, label %86

86:                                               ; preds = %79, %83
  %87 = phi ptr [ %76, %79 ], [ %77, %83 ]
  %88 = load ptr, ptr %87, align 8, !tbaa !44
  %89 = getelementptr inbounds %struct.hek, ptr %88, i64 0, i32 1
  %90 = load i32, ptr %89, align 4, !tbaa !70
  %91 = mul nsw i32 %90, 17
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  br label %94

94:                                               ; preds = %67, %69, %83, %86
  %95 = phi i64 [ %93, %86 ], [ 1, %83 ], [ 1, %69 ], [ 1, %67 ]
  br i1 %18, label %127, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.hv, ptr %11, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !44
  %99 = load ptr, ptr %11, align 8, !tbaa !79
  %100 = getelementptr inbounds %struct.xpvhv, ptr %99, i64 0, i32 3
  %101 = load i64, ptr %100, align 8, !tbaa !81
  %102 = getelementptr ptr, ptr %98, i64 %101
  %103 = getelementptr ptr, ptr %102, i64 1
  %104 = load ptr, ptr %103, align 8, !tbaa !44
  %105 = icmp eq ptr %104, null
  br i1 %105, label %127, label %106

106:                                              ; preds = %96
  %107 = getelementptr i8, ptr %102, i64 36
  %108 = load i32, ptr %107, align 4, !tbaa !127
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = load ptr, ptr %104, align 8, !tbaa !62
  %112 = icmp eq ptr %111, null
  br i1 %112, label %127, label %113

113:                                              ; preds = %106, %110
  %114 = phi ptr [ %103, %106 ], [ %104, %110 ]
  %115 = load ptr, ptr %114, align 8, !tbaa !44
  %116 = getelementptr inbounds %struct.hek, ptr %115, i64 0, i32 2
  %117 = getelementptr inbounds %struct.hek, ptr %115, i64 0, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !70
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, ptr %116, i64 %119
  %121 = getelementptr inbounds i8, ptr %120, i64 1
  %122 = load i8, ptr %121, align 1, !tbaa !44
  %123 = and i8 %122, 1
  %124 = zext nneg i8 %123 to i32
  %125 = shl nuw nsw i32 %124, 8
  %126 = or disjoint i32 %125, 66560
  br label %127

127:                                              ; preds = %94, %96, %110, %113
  %128 = phi i32 [ %126, %113 ], [ 66560, %110 ], [ 66560, %96 ], [ 66560, %94 ]
  %129 = tail call ptr @Perl_pv_escape(ptr noundef %8, ptr noundef nonnull %41, i64 noundef %68, i64 noundef %95, ptr noundef null, i32 noundef %128)
  %130 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.135, ptr noundef %129) #9
  br label %131

131:                                              ; preds = %127, %40, %7
  %132 = load ptr, ptr %3, align 8, !tbaa !68
  %133 = getelementptr inbounds %struct.xpvgv, ptr %132, i64 0, i32 4
  %134 = load ptr, ptr %133, align 8, !tbaa !44
  %135 = getelementptr inbounds %struct.hek, ptr %134, i64 0, i32 2
  %136 = getelementptr inbounds %struct.hek, ptr %134, i64 0, i32 1
  %137 = load i32, ptr %136, align 4, !tbaa !70
  %138 = sext i32 %137 to i64
  %139 = mul nsw i32 %137, 17
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, ptr %135, i64 %138
  %143 = getelementptr inbounds i8, ptr %142, i64 1
  %144 = load i8, ptr %143, align 1, !tbaa !44
  %145 = and i8 %144, 1
  %146 = zext nneg i8 %145 to i32
  %147 = shl nuw nsw i32 %146, 8
  %148 = or disjoint i32 %147, 66560
  %149 = tail call ptr @Perl_pv_escape(ptr noundef %8, ptr noundef nonnull %135, i64 noundef %138, i64 noundef %141, ptr noundef null, i32 noundef %148)
  %150 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull @.str.136, ptr noundef %149) #9
  br label %153

151:                                              ; preds = %4
  %152 = tail call i32 @PerlIO_putc(ptr noundef %1, i32 noundef 10) #9
  br label %153

153:                                              ; preds = %151, %131
  ret void
}

declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #3

declare void @Perl__invlist_dump(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @Perl_av_arylen_p(ptr noundef) local_unnamed_addr #3

declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @Perl_hv_placeholders_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Perl_hv_backreferences_p(ptr noundef) local_unnamed_addr #3

declare ptr @Perl_hv_iterkeysv(ptr noundef) local_unnamed_addr #3

declare ptr @Perl_cv_const_sv(ptr noundef) local_unnamed_addr #3

declare void @Perl_do_dump_pad(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @Perl_sv_setpv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_sv_dump(ptr noundef %0) local_unnamed_addr #0 !prof !59 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !60
  %4 = tail call ptr @Perl_PerlIO_stderr() #9
  %5 = lshr i32 %3, 9
  %6 = and i32 %5, 4
  tail call void @Perl_do_sv_dump(i32 noundef 0, ptr noundef %4, ptr noundef %0, i32 noundef 0, i32 noundef %6, i1 noundef zeroext false, i64 noundef 0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_runops_debug() local_unnamed_addr #0 !prof !59 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !62
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 22, ptr noundef nonnull @.str.381) #9
  br label %84

4:                                                ; preds = %0, %72
  %5 = load volatile i32, ptr @PL_debug, align 4, !tbaa !47
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %72, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @PL_watchaddr, align 8, !tbaa !62
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %8, align 8, !tbaa !62
  %12 = load ptr, ptr @PL_watchok, align 8, !tbaa !62
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @Perl_PerlIO_stderr() #9
  %16 = load ptr, ptr @PL_watchaddr, align 8, !tbaa !62
  %17 = ptrtoint ptr %16 to i64
  %18 = load ptr, ptr @PL_watchok, align 8, !tbaa !62
  %19 = ptrtoint ptr %18 to i64
  %20 = load ptr, ptr %16, align 8, !tbaa !62
  %21 = ptrtoint ptr %20 to i64
  %22 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %15, ptr noundef nonnull @.str.382, i64 noundef %17, i64 noundef %19, i64 noundef %21) #9
  br label %23

23:                                               ; preds = %14, %10, %7
  %24 = load volatile i32, ptr @PL_debug, align 4, !tbaa !47
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = load volatile i32, ptr @PL_debug, align 4, !tbaa !47
  %29 = and i32 %28, 1048576
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = tail call ptr @Perl_PerlIO_stderr() #9
  %33 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %32, ptr noundef nonnull @.str.245) #9
  tail call void @Perl_deb_stack_all() #9
  br label %36

34:                                               ; preds = %27
  %35 = tail call i32 @Perl_debstack() #9
  br label %36

36:                                               ; preds = %31, %34, %23
  %37 = load volatile i32, ptr @PL_debug, align 4, !tbaa !47
  %38 = and i32 %37, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr @PL_op, align 8, !tbaa !62
  %42 = tail call i32 @Perl_debop(ptr noundef %41)
  br label %43

43:                                               ; preds = %40, %36
  %44 = load volatile i32, ptr @PL_debug, align 4, !tbaa !47
  %45 = and i32 %44, 64
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %72, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr @PL_op, align 8, !tbaa !62
  %49 = load volatile i32, ptr @PL_debug, align 4, !tbaa !47
  %50 = and i32 %49, 524288
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load ptr, ptr @PL_curcop, align 8, !tbaa !62
  %54 = getelementptr inbounds %struct.cop, ptr %53, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !125
  %56 = load ptr, ptr @PL_debstash, align 8, !tbaa !62
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %72, label %58

58:                                               ; preds = %52, %47
  %59 = load ptr, ptr @PL_profiledata, align 8, !tbaa !62
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = tail call ptr @Perl_safesyscalloc(i64 noundef 396, i64 noundef 4) #9
  store ptr %62, ptr @PL_profiledata, align 8, !tbaa !62
  br label %63

63:                                               ; preds = %61, %58
  %64 = load ptr, ptr @PL_profiledata, align 8, !tbaa !62
  %65 = getelementptr inbounds %struct.op, ptr %48, i64 0, i32 4
  %66 = load i16, ptr %65, align 8
  %67 = and i16 %66, 511
  %68 = zext nneg i16 %67 to i64
  %69 = getelementptr inbounds i32, ptr %64, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !47
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 4, !tbaa !47
  br label %72

72:                                               ; preds = %4, %63, %52, %43
  %73 = load ptr, ptr @PL_op, align 8, !tbaa !62
  %74 = getelementptr inbounds %struct.op, ptr %73, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !239
  %76 = tail call ptr %75() #9
  store ptr %76, ptr @PL_op, align 8, !tbaa !62
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %4, !llvm.loop !240

78:                                               ; preds = %72
  %79 = load i32, ptr @PL_sig_pending, align 4, !tbaa !47
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr @PL_signalhook, align 8, !tbaa !62
  tail call void %82() #9
  br label %83

83:                                               ; preds = %78, %81
  store i8 0, ptr @PL_tainted, align 1, !tbaa !73
  br label %84

84:                                               ; preds = %83, %3
  ret i32 0
}

declare void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @Perl_deb_stack_all() local_unnamed_addr #3

declare i32 @Perl_debstack() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_debop(ptr noundef %0) local_unnamed_addr #0 !prof !59 {
  %2 = load ptr, ptr @PL_curcop, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct.cop, ptr %2, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !125
  %5 = load ptr, ptr @PL_debstash, align 8, !tbaa !62
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load volatile i32, ptr @PL_debug, align 4, !tbaa !47
  %9 = and i32 %8, 524288
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %117, label %11

11:                                               ; preds = %7, %1
  %12 = getelementptr inbounds %struct.op, ptr %0, i64 0, i32 4
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 511
  %15 = icmp eq i16 %14, 380
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = tail call ptr @Perl_custom_op_get_field(ptr noundef %0, i32 noundef 1) #9
  br label %22

18:                                               ; preds = %11
  %19 = zext nneg i16 %14 to i64
  %20 = getelementptr inbounds [0 x ptr], ptr @PL_op_name, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !62
  br label %22

22:                                               ; preds = %18, %16
  %23 = phi ptr [ %17, %16 ], [ %21, %18 ]
  tail call void (ptr, ...) @Perl_deb(ptr noundef nonnull @.str.247, ptr noundef %23) #9
  %24 = load i16, ptr %12, align 8
  %25 = and i16 %24, 511
  switch i16 %25, label %114 [
    i16 5, label %26
    i16 341, label %26
    i16 6, label %32
    i16 7, label %32
    i16 9, label %96
    i16 10, label %96
    i16 11, label %96
    i16 390, label %99
    i16 153, label %106
  ]

26:                                               ; preds = %22, %22
  %27 = tail call ptr @Perl_PerlIO_stderr() #9
  %28 = getelementptr inbounds %struct.svop, ptr %0, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !118
  %30 = tail call ptr @Perl_sv_peek(ptr noundef %29)
  %31 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %27, ptr noundef nonnull @.str.393, ptr noundef %30) #9
  br label %114

32:                                               ; preds = %22, %22
  %33 = getelementptr inbounds %struct.svop, ptr %0, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !118
  %35 = icmp eq ptr %34, null
  br i1 %35, label %93, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.gv, ptr %34, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !83
  %39 = and i32 %38, 255
  %40 = icmp eq i32 %39, 9
  br i1 %40, label %41, label %63

41:                                               ; preds = %36
  %42 = tail call ptr @Perl_newSV(i64 noundef 0) #9
  %43 = load ptr, ptr %33, align 8, !tbaa !118
  tail call void @Perl_gv_fullname4(ptr noundef %42, ptr noundef %43, ptr noundef null, i1 noundef zeroext true) #9
  %44 = tail call ptr @Perl_PerlIO_stderr() #9
  %45 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !60
  %47 = and i32 %46, 2098176
  %48 = icmp eq i32 %47, 1024
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !44
  br label %54

52:                                               ; preds = %41
  %53 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %42, ptr noundef null, i32 noundef 34) #9
  br label %54

54:                                               ; preds = %52, %49
  %55 = phi ptr [ %51, %49 ], [ %53, %52 ]
  %56 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %44, ptr noundef nonnull @.str.393, ptr noundef %55) #9
  %57 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !61
  %59 = icmp ugt i32 %58, 1
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = add i32 %58, -1
  store i32 %61, ptr %57, align 8, !tbaa !61
  br label %114

62:                                               ; preds = %54
  tail call void @Perl_sv_free2(ptr noundef %42, i32 noundef %58) #9
  br label %114

63:                                               ; preds = %36
  br i1 %35, label %93, label %64

64:                                               ; preds = %63
  %65 = tail call ptr @Perl_newSV(i64 noundef 0) #9
  %66 = tail call ptr @Perl_PerlIO_stderr() #9
  %67 = load ptr, ptr %33, align 8, !tbaa !118
  %68 = getelementptr inbounds %struct.gv, ptr %67, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !44
  %70 = tail call ptr @Perl_cv_name(ptr noundef %69, ptr noundef %65, i32 noundef 0) #9
  %71 = getelementptr inbounds %struct.sv, ptr %70, i64 0, i32 2
  %72 = load i32, ptr %71, align 4, !tbaa !60
  %73 = and i32 %72, 2098176
  %74 = icmp eq i32 %73, 1024
  %75 = load ptr, ptr %33, align 8, !tbaa !118
  %76 = getelementptr inbounds %struct.gv, ptr %75, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !44
  %78 = tail call ptr @Perl_cv_name(ptr noundef %77, ptr noundef %65, i32 noundef 0) #9
  br i1 %74, label %79, label %82

79:                                               ; preds = %64
  %80 = getelementptr inbounds %struct.sv, ptr %78, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !44
  br label %84

82:                                               ; preds = %64
  %83 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %78, ptr noundef null, i32 noundef 34) #9
  br label %84

84:                                               ; preds = %82, %79
  %85 = phi ptr [ %81, %79 ], [ %83, %82 ]
  %86 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %66, ptr noundef nonnull @.str.394, ptr noundef %85) #9
  %87 = getelementptr inbounds %struct.sv, ptr %65, i64 0, i32 1
  %88 = load i32, ptr %87, align 8, !tbaa !61
  %89 = icmp ugt i32 %88, 1
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = add i32 %88, -1
  store i32 %91, ptr %87, align 8, !tbaa !61
  br label %114

92:                                               ; preds = %84
  tail call void @Perl_sv_free2(ptr noundef %65, i32 noundef %88) #9
  br label %114

93:                                               ; preds = %32, %63
  %94 = tail call ptr @Perl_PerlIO_stderr() #9
  %95 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %94, ptr noundef nonnull @.str.395) #9
  br label %114

96:                                               ; preds = %22, %22, %22
  %97 = getelementptr inbounds %struct.op, ptr %0, i64 0, i32 3
  %98 = load i64, ptr %97, align 8, !tbaa !112
  tail call void @S_deb_padvar(i64 noundef %98, i32 noundef 1, i1 noundef zeroext true)
  br label %114

99:                                               ; preds = %22
  %100 = getelementptr inbounds %struct.op, ptr %0, i64 0, i32 3
  %101 = load i64, ptr %100, align 8, !tbaa !112
  %102 = getelementptr inbounds %struct.op, ptr %0, i64 0, i32 6
  %103 = load i8, ptr %102, align 1, !tbaa !114
  %104 = and i8 %103, 127
  %105 = zext nneg i8 %104 to i32
  tail call void @S_deb_padvar(i64 noundef %101, i32 noundef %105, i1 noundef zeroext true)
  br label %114

106:                                              ; preds = %22
  %107 = tail call ptr @Perl_PerlIO_stderr() #9
  %108 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !62
  %109 = getelementptr inbounds %struct.stackinfo, ptr %108, i64 0, i32 4
  %110 = load i32, ptr %109, align 8, !tbaa !241
  %111 = tail call fastcc ptr @S_deb_curcv(i32 noundef %110)
  %112 = tail call ptr @Perl_multideref_stringify(ptr noundef %0, ptr noundef %111)
  %113 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %107, ptr noundef nonnull @.str.396, ptr noundef %112) #9
  br label %114

114:                                              ; preds = %92, %90, %62, %60, %22, %93, %106, %99, %96, %26
  %115 = tail call ptr @Perl_PerlIO_stderr() #9
  %116 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %115, ptr noundef nonnull @.str.245) #9
  br label %117

117:                                              ; preds = %7, %114
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define dso_local void @S_deb_padvar(i64 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 !prof !59 {
  %4 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.stackinfo, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !241
  %7 = tail call fastcc ptr @S_deb_curcv(i32 noundef %6)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %7, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.xpvcv, ptr %10, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.padlist, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !243
  %15 = load ptr, ptr %14, align 8, !tbaa !62
  br label %16

16:                                               ; preds = %9, %3
  %17 = phi ptr [ %15, %9 ], [ null, %3 ]
  br i1 %2, label %18, label %21

18:                                               ; preds = %16
  %19 = tail call ptr @Perl_PerlIO_stderr() #9
  %20 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %19, ptr noundef nonnull @.str.19) #9
  br label %21

21:                                               ; preds = %18, %16
  %22 = icmp sgt i32 %1, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %21
  %24 = icmp eq ptr %17, null
  %25 = add nsw i32 %1, -1
  %26 = sext i32 %25 to i64
  %27 = zext nneg i32 %1 to i64
  br label %28

28:                                               ; preds = %23, %50
  %29 = phi i64 [ 0, %23 ], [ %51, %50 ]
  br i1 %24, label %41, label %30

30:                                               ; preds = %28
  %31 = add i64 %29, %0
  %32 = tail call ptr @Perl_padnamelist_fetch(ptr noundef nonnull %17, i64 noundef %31) #9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @Perl_PerlIO_stderr() #9
  %36 = getelementptr inbounds %struct.padname, ptr %32, i64 0, i32 7
  %37 = load i8, ptr %36, align 8, !tbaa !245
  %38 = zext i8 %37 to i64
  %39 = load ptr, ptr %32, align 8, !tbaa !247
  %40 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %35, ptr noundef nonnull @.str.383, i32 noundef 1, i64 noundef %38, ptr noundef %39) #9
  br label %45

41:                                               ; preds = %30, %28
  %42 = tail call ptr @Perl_PerlIO_stderr() #9
  %43 = add i64 %29, %0
  %44 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %42, ptr noundef nonnull @.str.384, i64 noundef %43) #9
  br label %45

45:                                               ; preds = %41, %34
  %46 = icmp slt i64 %29, %26
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = tail call ptr @Perl_PerlIO_stderr() #9
  %49 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %48, ptr noundef nonnull @.str.85) #9
  br label %50

50:                                               ; preds = %45, %47
  %51 = add nuw nsw i64 %29, 1
  %52 = icmp eq i64 %51, %27
  br i1 %52, label %53, label %28, !llvm.loop !248

53:                                               ; preds = %50, %21
  br i1 %2, label %54, label %57

54:                                               ; preds = %53
  %55 = tail call ptr @Perl_PerlIO_stderr() #9
  %56 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %55, ptr noundef nonnull @.str.34) #9
  br label %57

57:                                               ; preds = %54, %53
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @S_deb_curcv(i32 noundef %0) unnamed_addr #6 !prof !59 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %51

3:                                                ; preds = %1
  %4 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !62
  %5 = load ptr, ptr @PL_main_cv, align 8
  br label %9

6:                                                ; preds = %46
  %7 = add nsw i32 %47, -1
  %8 = icmp sgt i32 %47, 0
  br i1 %8, label %9, label %51, !llvm.loop !249

9:                                                ; preds = %3, %6
  %10 = phi ptr [ undef, %3 ], [ %49, %6 ]
  %11 = phi ptr [ %4, %3 ], [ %48, %6 ]
  %12 = phi i32 [ %0, %3 ], [ %7, %6 ]
  %13 = getelementptr inbounds %struct.stackinfo, ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !250
  %15 = zext nneg i32 %12 to i64
  %16 = getelementptr inbounds %struct.context, ptr %14, i64 %15
  %17 = load i8, ptr %16, align 8, !tbaa !44
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 15
  switch i32 %19, label %29 [
    i32 8, label %20
    i32 9, label %20
    i32 10, label %23
  ]

20:                                               ; preds = %9, %9
  %21 = getelementptr inbounds %struct.block, ptr %16, i64 0, i32 8, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  br label %46

23:                                               ; preds = %9
  %24 = and i32 %18, 74
  %25 = icmp eq i32 %24, 74
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.block, ptr %16, i64 0, i32 8, i32 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  br label %46

29:                                               ; preds = %9, %23
  %30 = icmp eq i32 %12, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.stackinfo, ptr %11, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !251
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = and i8 %17, 15
  %37 = icmp eq i8 %36, 0
  %38 = icmp eq i32 %33, 3
  %39 = and i1 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.stackinfo, ptr %11, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !252
  %43 = getelementptr inbounds %struct.stackinfo, ptr %42, i64 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !241
  %45 = add nsw i32 %44, 1
  br label %46

46:                                               ; preds = %31, %40, %35, %29, %26, %20
  %47 = phi i32 [ %12, %20 ], [ %12, %26 ], [ %45, %40 ], [ 0, %35 ], [ %12, %29 ], [ 0, %31 ]
  %48 = phi ptr [ %11, %20 ], [ %11, %26 ], [ %42, %40 ], [ %11, %35 ], [ %11, %29 ], [ %11, %31 ]
  %49 = phi ptr [ %22, %20 ], [ %28, %26 ], [ %10, %40 ], [ %10, %35 ], [ %10, %29 ], [ %5, %31 ]
  %50 = phi i1 [ false, %20 ], [ false, %26 ], [ true, %40 ], [ true, %35 ], [ true, %29 ], [ false, %31 ]
  br i1 %50, label %6, label %51

51:                                               ; preds = %46, %6, %1
  %52 = phi ptr [ null, %1 ], [ %49, %46 ], [ null, %6 ]
  ret ptr %52
}

declare ptr @Perl_padnamelist_fetch(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_multideref_stringify(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !59 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.unop_aux, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = load i64, ptr %5, align 8, !tbaa !44
  %7 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #9
  br label %8

8:                                                ; preds = %2, %101
  %9 = phi i1 [ true, %2 ], [ %108, %101 ]
  %10 = phi ptr [ %5, %2 ], [ %105, %101 ]
  %11 = phi i64 [ %6, %2 ], [ %106, %101 ]
  %12 = phi i32 [ 0, %2 ], [ %104, %101 ]
  %13 = phi i8 [ 0, %2 ], [ %103, %101 ]
  %14 = phi i8 [ 0, %2 ], [ %102, %101 ]
  br label %15

15:                                               ; preds = %8, %19
  %16 = phi ptr [ %10, %8 ], [ %20, %19 ]
  %17 = phi i64 [ %11, %8 ], [ %21, %19 ]
  %18 = and i64 %17, 15
  switch i64 %18, label %97 [
    i64 0, label %19
    i64 12, label %22
    i64 5, label %23
    i64 13, label %27
    i64 6, label %28
    i64 9, label %32
    i64 2, label %33
    i64 10, label %37
    i64 3, label %38
    i64 8, label %42
    i64 11, label %42
    i64 1, label %43
    i64 4, label %43
  ]

19:                                               ; preds = %15
  %20 = getelementptr inbounds %union.UNOP_AUX_item, ptr %16, i64 1
  %21 = load i64, ptr %20, align 8, !tbaa !44
  br i1 %9, label %15, label %109, !llvm.loop !253

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %15, %22
  %24 = phi i8 [ 1, %22 ], [ %13, %15 ]
  %25 = getelementptr inbounds %union.UNOP_AUX_item, ptr %16, i64 1
  %26 = load i64, ptr %25, align 8, !tbaa !44
  call fastcc void @S_append_padvar(i64 noundef %26, ptr noundef %1, ptr noundef %7)
  br label %49

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %15, %27
  %29 = phi i8 [ 1, %27 ], [ %13, %15 ]
  %30 = getelementptr inbounds %union.UNOP_AUX_item, ptr %16, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  call fastcc void @S_append_gv_name(ptr noundef %31, ptr noundef %7)
  br label %49

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %15, %32
  %34 = phi i8 [ 1, %32 ], [ %13, %15 ]
  %35 = getelementptr inbounds %union.UNOP_AUX_item, ptr %16, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !44
  call fastcc void @S_append_gv_name(ptr noundef %36, ptr noundef %7)
  br label %43

37:                                               ; preds = %15
  br label %38

38:                                               ; preds = %15, %37
  %39 = phi i8 [ 1, %37 ], [ %13, %15 ]
  %40 = getelementptr inbounds %union.UNOP_AUX_item, ptr %16, i64 1
  %41 = load i64, ptr %40, align 8, !tbaa !44
  call fastcc void @S_append_padvar(i64 noundef %41, ptr noundef %1, ptr noundef %7)
  br label %43

42:                                               ; preds = %15, %15
  br label %43

43:                                               ; preds = %15, %15, %42, %33, %38
  %44 = phi i8 [ %39, %38 ], [ %34, %33 ], [ 1, %42 ], [ %13, %15 ], [ %13, %15 ]
  %45 = phi ptr [ %40, %38 ], [ %35, %33 ], [ %16, %42 ], [ %16, %15 ], [ %16, %15 ]
  %46 = add nsw i32 %12, 1
  %47 = icmp eq i32 %12, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  call void @Perl_sv_catpvn_flags(ptr noundef %7, ptr noundef nonnull @.str.385, i64 noundef 2, i32 noundef 0) #9
  br label %49

49:                                               ; preds = %43, %48, %28, %23
  %50 = phi i8 [ %44, %43 ], [ %44, %48 ], [ %29, %28 ], [ %24, %23 ]
  %51 = phi i32 [ %46, %43 ], [ %46, %48 ], [ 1, %28 ], [ 1, %23 ]
  %52 = phi ptr [ %45, %43 ], [ %45, %48 ], [ %30, %28 ], [ %25, %23 ]
  %53 = and i64 %17, 48
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  call void @Perl_sv_catpvn_flags(ptr noundef %7, ptr noundef nonnull @.str.385, i64 noundef 2, i32 noundef 0) #9
  br label %101

56:                                               ; preds = %49
  %57 = and i8 %50, 1
  %58 = icmp eq i8 %57, 0
  %59 = select i1 %58, ptr @.str.387, ptr @.str.386
  call void @Perl_sv_catpvn_flags(ptr noundef %7, ptr noundef nonnull %59, i64 noundef 1, i32 noundef 0) #9
  switch i64 %53, label %91 [
    i64 16, label %60
    i64 32, label %85
    i64 48, label %88
  ]

60:                                               ; preds = %56
  %61 = getelementptr inbounds %union.UNOP_AUX_item, ptr %52, i64 1
  br i1 %58, label %83, label %62

62:                                               ; preds = %60
  %63 = load ptr, ptr %61, align 8, !tbaa !44
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  call void @Perl_sv_catpvn_flags(ptr noundef %7, ptr noundef nonnull @.str.388, i64 noundef 3, i32 noundef 0) #9
  br label %91

66:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %67 = getelementptr inbounds %struct.sv, ptr %63, i64 0, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !60
  %69 = and i32 %68, 2098176
  %70 = icmp eq i32 %69, 1024
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load ptr, ptr %63, align 8, !tbaa !53
  %73 = getelementptr inbounds %struct.xpv, ptr %72, i64 0, i32 2
  %74 = load i64, ptr %73, align 8, !tbaa !56
  store i64 %74, ptr %3, align 8, !tbaa !40
  %75 = getelementptr inbounds %struct.sv, ptr %63, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !44
  br label %79

77:                                               ; preds = %66
  %78 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %63, ptr noundef nonnull %3, i32 noundef 2) #9
  br label %79

79:                                               ; preds = %77, %71
  %80 = phi ptr [ %76, %71 ], [ %78, %77 ]
  %81 = load i64, ptr %3, align 8, !tbaa !40
  %82 = call ptr @Perl_pv_pretty(ptr noundef %7, ptr noundef %80, i64 noundef %81, i64 noundef 30, ptr noundef null, ptr noundef null, i32 noundef 16387)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %91

83:                                               ; preds = %60
  %84 = load i64, ptr %61, align 8, !tbaa !44
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %7, ptr noundef nonnull @.str.389, i64 noundef %84) #9
  br label %91

85:                                               ; preds = %56
  %86 = getelementptr inbounds %union.UNOP_AUX_item, ptr %52, i64 1
  %87 = load i64, ptr %86, align 8, !tbaa !44
  call fastcc void @S_append_padvar(i64 noundef %87, ptr noundef %1, ptr noundef %7)
  br label %91

88:                                               ; preds = %56
  %89 = getelementptr inbounds %union.UNOP_AUX_item, ptr %52, i64 1
  %90 = load ptr, ptr %89, align 8, !tbaa !44
  call fastcc void @S_append_gv_name(ptr noundef %90, ptr noundef %7)
  br label %91

91:                                               ; preds = %83, %79, %65, %56, %88, %85
  %92 = phi ptr [ %52, %56 ], [ %89, %88 ], [ %86, %85 ], [ %61, %79 ], [ %61, %65 ], [ %61, %83 ]
  %93 = select i1 %58, ptr @.str.391, ptr @.str.390
  call void @Perl_sv_catpvn_flags(ptr noundef %7, ptr noundef nonnull %93, i64 noundef 1, i32 noundef 0) #9
  %94 = and i64 %17, 64
  %95 = icmp eq i64 %94, 0
  %96 = select i1 %95, i8 %14, i8 1
  br label %101

97:                                               ; preds = %15
  %98 = call ptr @Perl_PerlIO_stderr() #9
  %99 = trunc i64 %18 to i32
  %100 = call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %98, ptr noundef nonnull @.str.392, i32 noundef %99) #9
  br label %101

101:                                              ; preds = %97, %91, %55
  %102 = phi i8 [ 1, %97 ], [ 1, %55 ], [ %96, %91 ]
  %103 = phi i8 [ %13, %97 ], [ %50, %55 ], [ 0, %91 ]
  %104 = phi i32 [ %12, %97 ], [ %51, %55 ], [ %51, %91 ]
  %105 = phi ptr [ %16, %97 ], [ %52, %55 ], [ %92, %91 ]
  %106 = lshr i64 %17, 7
  %107 = and i8 %102, 1
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %8, label %109, !llvm.loop !253

109:                                              ; preds = %101, %19
  ret ptr %7
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @S_append_padvar(i64 noundef %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !59 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.xpvcv, ptr %6, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.padlist, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !243
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  br label %12

12:                                               ; preds = %3, %5
  %13 = phi ptr [ %11, %5 ], [ null, %3 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @Perl_padnamelist_fetch(ptr noundef nonnull %13, i64 noundef %0) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %2, align 8, !tbaa !53
  %20 = getelementptr inbounds %struct.xpv, ptr %19, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !56
  %22 = getelementptr inbounds %struct.padname, ptr %16, i64 0, i32 7
  %23 = load i8, ptr %22, align 8, !tbaa !245
  %24 = zext i8 %23 to i64
  %25 = add nsw i64 %24, -1
  %26 = load ptr, ptr %16, align 8, !tbaa !247
  %27 = getelementptr inbounds i8, ptr %26, i64 1
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef nonnull %2, ptr noundef nonnull @.str.472, i32 noundef 1, i64 noundef %25, ptr noundef nonnull %27) #9
  %28 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = getelementptr inbounds i8, ptr %29, i64 %21
  store i8 36, ptr %30, align 1, !tbaa !44
  br label %32

31:                                               ; preds = %15, %12
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %2, ptr noundef nonnull @.str.384, i64 noundef %0) #9
  br label %32

32:                                               ; preds = %18, %31
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @S_append_gv_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !59 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @Perl_sv_catpvn_flags(ptr noundef %1, ptr noundef nonnull @.str.473, i64 noundef 8, i32 noundef 0) #9
  br label %13

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_newSV(i64 noundef 0) #9
  tail call void @Perl_gv_fullname4(ptr noundef %6, ptr noundef nonnull %0, ptr noundef null, i1 noundef zeroext false) #9
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %1, ptr noundef nonnull @.str.474, i32 noundef 36, ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !61
  %9 = icmp ugt i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = add i32 %8, -1
  store i32 %11, ptr %7, align 8, !tbaa !61
  br label %13

12:                                               ; preds = %5
  tail call void @Perl_sv_free2(ptr noundef %6, i32 noundef %8) #9
  br label %13

13:                                               ; preds = %12, %10, %4
  ret void
}

declare void @Perl_deb(ptr noundef, ...) local_unnamed_addr #3

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #3

declare ptr @Perl_cv_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_watch(ptr noundef %0) local_unnamed_addr #0 !prof !59 {
  store ptr %0, ptr @PL_watchaddr, align 8, !tbaa !62
  %2 = load ptr, ptr %0, align 8, !tbaa !62
  store ptr %2, ptr @PL_watchok, align 8, !tbaa !62
  %3 = tail call ptr @Perl_PerlIO_stderr() #9
  %4 = load ptr, ptr @PL_watchaddr, align 8, !tbaa !62
  %5 = ptrtoint ptr %4 to i64
  %6 = load ptr, ptr @PL_watchok, align 8, !tbaa !62
  %7 = ptrtoint ptr %6 to i64
  %8 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %3, ptr noundef nonnull @.str.397, i64 noundef %5, i64 noundef %7) #9
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_debprofdump() local_unnamed_addr #0 !prof !59 {
  %1 = load ptr, ptr @PL_profiledata, align 8, !tbaa !62
  %2 = icmp eq ptr %1, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %0, %18
  %4 = phi i64 [ %19, %18 ], [ 0, %0 ]
  %5 = load ptr, ptr @PL_profiledata, align 8, !tbaa !62
  %6 = getelementptr inbounds i32, ptr %5, i64 %4
  %7 = load i32, ptr %6, align 4, !tbaa !47
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @Perl_PerlIO_stderr() #9
  %11 = load ptr, ptr @PL_profiledata, align 8, !tbaa !62
  %12 = getelementptr inbounds i32, ptr %11, i64 %4
  %13 = load i32, ptr %12, align 4, !tbaa !47
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds [0 x ptr], ptr @PL_op_name, i64 0, i64 %4
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  %17 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %10, ptr noundef nonnull @.str.398, i64 noundef %14, ptr noundef %16) #9
  br label %18

18:                                               ; preds = %3, %9
  %19 = add nuw nsw i64 %4, 1
  %20 = icmp eq i64 %19, 396
  br i1 %20, label %21, label %3, !llvm.loop !254

21:                                               ; preds = %18, %0
  ret void
}

declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #3

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #3

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #3

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #3

declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #3

declare ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #8

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @Perl_pv_pretty, ptr @Perl_sv_setpvn, i64 4}
!36 = !{ptr @Perl_pv_pretty, ptr @Perl_pv_escape, i64 4}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 4}
!39 = !{!"branch_weights", i32 4, i32 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"long", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!42, !42, i64 0}
!45 = !{!"branch_weights", i32 0, i32 4}
!46 = !{!"branch_weights", i32 0, i32 1}
!47 = !{!48, !48, i64 0}
!48 = !{!"int", !42, i64 0}
!49 = !{!"branch_weights", i32 1, i32 0}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!54, !55, i64 0}
!54 = !{!"sv", !55, i64 0, !48, i64 8, !48, i64 12, !42, i64 16}
!55 = !{!"any pointer", !42, i64 0}
!56 = !{!57, !41, i64 16}
!57 = !{!"xpv", !55, i64 0, !42, i64 8, !41, i64 16, !42, i64 24}
!58 = distinct !{!58, !51, !52}
!59 = !{!"function_entry_count", i64 0}
!60 = !{!54, !48, i64 12}
!61 = !{!54, !48, i64 8}
!62 = !{!55, !55, i64 0}
!63 = distinct !{!63, !51, !52}
!64 = !{!65, !55, i64 0}
!65 = !{!"cv", !55, i64 0, !48, i64 8, !48, i64 12, !42, i64 16}
!66 = !{!67, !48, i64 92}
!67 = !{!"xpvcv", !55, i64 0, !42, i64 8, !41, i64 16, !42, i64 24, !55, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !55, i64 64, !42, i64 72, !55, i64 80, !48, i64 88, !48, i64 92, !48, i64 96}
!68 = !{!69, !55, i64 0}
!69 = !{!"gv", !55, i64 0, !48, i64 8, !48, i64 12, !42, i64 16}
!70 = !{!71, !48, i64 4}
!71 = !{!"hek", !48, i64 0, !48, i64 4, !42, i64 8}
!72 = distinct !{!72, !51, !52}
!73 = !{!74, !74, i64 0}
!74 = !{!"_Bool", !42, i64 0}
!75 = !{i8 0, i8 2}
!76 = !{}
!77 = !{!78, !78, i64 0}
!78 = !{!"short", !42, i64 0}
!79 = !{!80, !55, i64 0}
!80 = !{!"hv", !55, i64 0, !48, i64 8, !48, i64 12, !42, i64 16}
!81 = !{!82, !41, i64 24}
!82 = !{!"xpvhv", !55, i64 0, !42, i64 8, !41, i64 16, !41, i64 24}
!83 = !{!69, !48, i64 12}
!84 = !{!85, !48, i64 24}
!85 = !{!"gp", !55, i64 0, !55, i64 8, !55, i64 16, !48, i64 24, !48, i64 28, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !48, i64 64, !48, i64 67, !55, i64 72}
!86 = !{!85, !55, i64 16}
!87 = !{!85, !55, i64 48}
!88 = !{!89, !55, i64 8}
!89 = !{!"he", !55, i64 0, !55, i64 8, !42, i64 16}
!90 = !{!85, !55, i64 32}
!91 = distinct !{!91, !51, !52}
!92 = distinct !{!92, !51, !52}
!93 = !{!94, !55, i64 56}
!94 = !{!"pmop", !55, i64 0, !55, i64 8, !55, i64 16, !41, i64 24, !48, i64 32, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !42, i64 34, !42, i64 35, !55, i64 40, !55, i64 48, !55, i64 56, !48, i64 64, !42, i64 72, !42, i64 80, !55, i64 88}
!95 = !{!94, !48, i64 64}
!96 = !{!97, !55, i64 0}
!97 = !{!"p5rx", !55, i64 0, !48, i64 8, !48, i64 12, !42, i64 16}
!98 = !{!94, !42, i64 35}
!99 = !{!94, !55, i64 88}
!100 = !{!101, !55, i64 88}
!101 = !{!"regexp", !55, i64 0, !42, i64 8, !41, i64 16, !42, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !48, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !55, i64 88, !48, i64 96, !48, i64 100, !55, i64 104, !48, i64 112, !48, i64 116, !55, i64 120, !55, i64 128, !55, i64 136, !41, i64 144, !41, i64 152, !41, i64 160, !41, i64 168, !48, i64 176, !48, i64 176, !55, i64 184}
!102 = !{!103, !55, i64 16}
!103 = !{!"reg_substr_datum", !41, i64 0, !41, i64 8, !55, i64 16, !55, i64 24, !41, i64 32}
!104 = !{!101, !48, i64 56}
!105 = !{!101, !48, i64 100}
!106 = !{!107, !48, i64 0}
!107 = !{!"flag_to_name", !48, i64 0, !55, i64 8}
!108 = !{!107, !55, i64 8}
!109 = distinct !{!109, !51, !52}
!110 = !{!111, !55, i64 0}
!111 = !{!"op", !55, i64 0, !55, i64 8, !55, i64 16, !41, i64 24, !48, i64 32, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !42, i64 34, !42, i64 35}
!112 = !{!111, !41, i64 24}
!113 = !{!111, !42, i64 34}
!114 = !{!111, !42, i64 35}
!115 = distinct !{!115, !51, !52}
!116 = distinct !{!116, !51, !52}
!117 = distinct !{!117, !51, !52}
!118 = !{!119, !55, i64 40}
!119 = !{!"svop", !55, i64 0, !55, i64 8, !55, i64 16, !41, i64 24, !48, i64 32, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !42, i64 34, !42, i64 35, !55, i64 40}
!120 = !{!121, !55, i64 48}
!121 = !{!"unop_aux", !55, i64 0, !55, i64 8, !55, i64 16, !41, i64 24, !48, i64 32, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !42, i64 34, !42, i64 35, !55, i64 40, !55, i64 48}
!122 = distinct !{!122, !51, !52}
!123 = !{!124, !48, i64 36}
!124 = !{!"cop", !55, i64 0, !55, i64 8, !55, i64 16, !41, i64 24, !48, i64 32, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !42, i64 34, !42, i64 35, !48, i64 36, !55, i64 40, !55, i64 48, !48, i64 56, !48, i64 60, !55, i64 64, !55, i64 72}
!125 = !{!124, !55, i64 40}
!126 = !{!80, !48, i64 12}
!127 = !{!128, !48, i64 28}
!128 = !{!"xpvhv_aux", !42, i64 0, !55, i64 8, !55, i64 16, !48, i64 24, !48, i64 28, !55, i64 32, !48, i64 40, !48, i64 44, !48, i64 48, !48, i64 52}
!129 = !{!124, !48, i64 60}
!130 = !{!131, !55, i64 56}
!131 = !{!"loop", !55, i64 0, !55, i64 8, !55, i64 16, !41, i64 24, !48, i64 32, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !42, i64 34, !42, i64 35, !55, i64 40, !55, i64 48, !55, i64 56, !55, i64 64, !55, i64 72}
!132 = !{!131, !55, i64 64}
!133 = !{!131, !55, i64 72}
!134 = !{!135, !55, i64 48}
!135 = !{!"logop", !55, i64 0, !55, i64 8, !55, i64 16, !41, i64 24, !48, i64 32, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !48, i64 33, !42, i64 34, !42, i64 35, !55, i64 40, !55, i64 48}
!136 = distinct !{!136, !51, !52}
!137 = !{!85, !55, i64 56}
!138 = !{!139, !55, i64 8}
!139 = !{!"magic", !55, i64 0, !55, i64 8, !78, i64 16, !42, i64 18, !42, i64 19, !41, i64 24, !55, i64 32, !55, i64 40}
!140 = !{!139, !78, i64 16}
!141 = !{!139, !42, i64 18}
!142 = distinct !{!142, !51, !52}
!143 = !{!144, !42, i64 0}
!144 = !{!"", !42, i64 0, !55, i64 8}
!145 = !{!144, !55, i64 8}
!146 = !{!139, !42, i64 19}
!147 = !{!139, !55, i64 32}
!148 = !{!97, !48, i64 12}
!149 = !{!97, !48, i64 8}
!150 = !{!139, !41, i64 24}
!151 = !{!139, !55, i64 40}
!152 = distinct !{!152, !51, !52}
!153 = !{!139, !55, i64 0}
!154 = distinct !{!154, !51, !52}
!155 = !{!156, !41, i64 16}
!156 = !{!"xpvgv", !55, i64 0, !42, i64 8, !41, i64 16, !42, i64 24, !42, i64 32, !42, i64 40}
!157 = !{!158, !42, i64 129}
!158 = !{!"xpvio", !55, i64 0, !42, i64 8, !41, i64 16, !42, i64 24, !42, i64 32, !55, i64 40, !42, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !55, i64 80, !55, i64 88, !55, i64 96, !55, i64 104, !55, i64 112, !55, i64 120, !42, i64 128, !42, i64 129}
!159 = !{!160, !55, i64 0}
!160 = !{!"xpvmg", !55, i64 0, !42, i64 8, !41, i64 16, !42, i64 24, !42, i64 32, !42, i64 40}
!161 = !{!162, !55, i64 32}
!162 = !{!"xpvav", !55, i64 0, !42, i64 8, !41, i64 16, !41, i64 24, !55, i64 32}
!163 = !{!162, !41, i64 16}
!164 = !{!162, !41, i64 24}
!165 = !{!166, !55, i64 0}
!166 = !{!"av", !55, i64 0, !48, i64 8, !48, i64 12, !42, i64 16}
!167 = distinct !{!167, !51, !52}
!168 = !{!128, !48, i64 52}
!169 = !{!82, !41, i64 16}
!170 = distinct !{!170, !51, !52}
!171 = distinct !{!171, !51, !52}
!172 = distinct !{!172, !51, !52}
!173 = distinct !{!173, !51, !52}
!174 = distinct !{!174, !51, !52}
!175 = distinct !{!175, !51, !52}
!176 = !{!128, !48, i64 48}
!177 = !{!128, !48, i64 24}
!178 = !{!128, !55, i64 16}
!179 = !{!128, !48, i64 40}
!180 = !{!128, !48, i64 44}
!181 = !{!128, !55, i64 32}
!182 = distinct !{!182, !51, !52}
!183 = !{!184, !55, i64 32}
!184 = !{!"mro_meta", !55, i64 0, !55, i64 8, !55, i64 16, !48, i64 24, !48, i64 28, !55, i64 32, !55, i64 40, !55, i64 48, !48, i64 56}
!185 = !{!186, !55, i64 8}
!186 = !{!"mro_alg", !55, i64 0, !55, i64 8, !78, i64 16, !78, i64 18, !48, i64 20}
!187 = !{!186, !78, i64 16}
!188 = !{!186, !78, i64 18}
!189 = !{!184, !48, i64 24}
!190 = !{!184, !48, i64 28}
!191 = !{!184, !55, i64 0}
!192 = !{!184, !55, i64 8}
!193 = !{!184, !55, i64 16}
!194 = !{!184, !55, i64 40}
!195 = !{!71, !48, i64 0}
!196 = distinct !{!196, !51, !52}
!197 = !{!67, !55, i64 32}
!198 = !{!67, !55, i64 64}
!199 = !{!67, !48, i64 88}
!200 = !{!67, !55, i64 80}
!201 = !{!202, !42, i64 72}
!202 = !{!"xpvlv", !55, i64 0, !42, i64 8, !41, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !41, i64 56, !55, i64 64, !42, i64 72, !42, i64 73}
!203 = !{!202, !41, i64 56}
!204 = !{!202, !55, i64 64}
!205 = !{!202, !42, i64 73}
!206 = !{!85, !55, i64 0}
!207 = !{!85, !48, i64 28}
!208 = !{!85, !55, i64 8}
!209 = !{!85, !55, i64 40}
!210 = !{!85, !55, i64 72}
!211 = !{!158, !55, i64 40}
!212 = !{!158, !41, i64 56}
!213 = !{!158, !41, i64 64}
!214 = !{!158, !41, i64 72}
!215 = !{!158, !55, i64 80}
!216 = !{!158, !55, i64 88}
!217 = !{!158, !55, i64 96}
!218 = !{!158, !55, i64 104}
!219 = !{!158, !55, i64 112}
!220 = !{!158, !55, i64 120}
!221 = !{!158, !42, i64 128}
!222 = !{!101, !55, i64 32}
!223 = !{!101, !48, i64 96}
!224 = !{!101, !48, i64 112}
!225 = !{!101, !48, i64 116}
!226 = !{!101, !41, i64 64}
!227 = !{!101, !41, i64 72}
!228 = !{!101, !41, i64 80}
!229 = !{!101, !41, i64 144}
!230 = !{!101, !41, i64 152}
!231 = !{!101, !41, i64 160}
!232 = !{!101, !55, i64 128}
!233 = !{!101, !55, i64 40}
!234 = !{!101, !55, i64 48}
!235 = !{!101, !55, i64 104}
!236 = !{!101, !55, i64 120}
!237 = !{!101, !55, i64 184}
!238 = !{!101, !55, i64 136}
!239 = !{!111, !55, i64 16}
!240 = distinct !{!240, !51, !52}
!241 = !{!242, !48, i64 32}
!242 = !{!"stackinfo", !55, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !48, i64 32, !48, i64 36, !48, i64 40, !48, i64 44}
!243 = !{!244, !55, i64 8}
!244 = !{!"padlist", !41, i64 0, !55, i64 8, !48, i64 16, !48, i64 20}
!245 = !{!246, !42, i64 40}
!246 = !{!"padname", !55, i64 0, !55, i64 8, !42, i64 16, !48, i64 24, !48, i64 28, !48, i64 32, !48, i64 36, !42, i64 40, !42, i64 41}
!247 = !{!246, !55, i64 0}
!248 = distinct !{!248, !51, !52}
!249 = distinct !{!249, !51, !52}
!250 = !{!242, !55, i64 8}
!251 = !{!242, !48, i64 40}
!252 = !{!242, !55, i64 16}
!253 = distinct !{!253, !51, !52}
!254 = distinct !{!254, !51, !52}
