; ModuleID = 'pp_ctl.c'
source_filename = "pp_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.mgvtbl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.stackinfo = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.context = type { %union.anon.0 }
%union.anon.0 = type { %struct.subst }
%struct.subst = type { i8, i8, i16, i32, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.block = type { i8, i8, i16, i32, ptr, i32, i32, ptr, %union.anon.1 }
%union.anon.1 = type { %struct.block_sub }
%struct.block_sub = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.9 }
%union.anon.9 = type { ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.logop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr }
%struct.pmop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr, ptr, i32, %union.anon.6, %union.anon.7, ptr }
%union.anon.6 = type { ptr }
%union.anon.7 = type { ptr }
%struct.regexp = type { ptr, %union._xmgu, i64, %union.anon.8, ptr, ptr, ptr, i32, i64, i64, i64, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i64, i64, i64, i64, i16, ptr }
%union._xmgu = type { ptr }
%union.anon.8 = type { i64 }
%struct.regexp_engine = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.11 }
%union.anon.11 = type { i64 }
%struct.p5rx = type { ptr, i32, i32, %union.anon.10 }
%union.anon.10 = type { ptr }
%struct.regexp_paren_pair = type { i64, i64, i64 }
%struct.magic = type { ptr, ptr, i16, i8, i8, i64, ptr, ptr }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.28, %union._xivu, %union._xnvu }
%union.anon.28 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.12, %union._xivu, %union._xnvu }
%union.anon.12 = type { i64 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.14, %union._xivu }
%union.anon.14 = type { i64 }
%struct.listop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.15, %union._xivu, %union._xnvu }
%union.anon.15 = type { i64 }
%struct.unop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }
%struct.xpvio = type { ptr, %union._xmgu, i64, %union.anon.16, %union._xivu, ptr, %union.anon.17, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%union.anon.16 = type { i64 }
%union.anon.17 = type { ptr }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.19, %union._xivu }
%union.anon.19 = type { i64 }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.20, ptr, %union.anon.21, %union.anon.22, %union.anon.23, ptr, %union.anon.24, ptr, i32, i32, i32 }
%union.anon.20 = type { i64 }
%union.anon.21 = type { ptr }
%union.anon.22 = type { ptr }
%union.anon.23 = type { ptr }
%union.anon.24 = type { ptr }
%struct.av = type { ptr, i32, i32, %union.anon.26 }
%union.anon.26 = type { ptr }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.yy_parser = type { ptr, %union.YYSTYPE, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i8, i8, i8, i8, i32, ptr, ptr, ptr, i16, i16, i32, ptr, i32, i32, i8, i8, i8, i8, i32, %struct._sublex_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8, ptr, ptr, ptr, i8, [5 x %union.YYSTYPE], [5 x i32], i32, ptr, [256 x i8], i32, i32, i8, i8, i8 }
%union.YYSTYPE = type { ptr }
%struct._sublex_info = type { i8, i16, ptr, ptr }
%struct.jmpenv = type { [1 x %struct.__jmp_buf_tag], ptr, i32, i8 }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.hv = type { ptr, i32, i32, %union.anon.27 }
%union.anon.27 = type { ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.hek = type { i32, i32, [1 x i8] }
%union.any = type { ptr }
%struct.padlist = type { i64, ptr, i32, i32 }
%struct.loop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.pvop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }
%struct.cv = type { ptr, i32, i32, %union.anon.25 }
%union.anon.25 = type { ptr }
%struct.io = type { ptr, i32, i32, %union.anon.18 }
%union.anon.18 = type { ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.block_hooks = type { i32, ptr, ptr, ptr, ptr }
%struct.svop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }

@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_sv_undef = external global %struct.sv, align 8
@PL_curstackinfo = external local_unnamed_addr global ptr, align 8
@PL_sv_yes = external global %struct.sv, align 8
@PL_sv_no = external global %struct.sv, align 8
@PL_tainted = external local_unnamed_addr global i8, align 1
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@PL_defgv = external local_unnamed_addr global ptr, align 8
@PL_tainting = external local_unnamed_addr global i8, align 1
@PL_curpm = external global ptr, align 8
@PL_sig_pending = external local_unnamed_addr global i32, align 4
@PL_signalhook = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"Substitution loop\00", align 1
@PL_curcop = external local_unnamed_addr global ptr, align 8
@PL_savestack_ix = external local_unnamed_addr global i32, align 4
@PL_chopset = external local_unnamed_addr global ptr, align 8
@PL_formtarget = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Not enough format arguments\00", align 1
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@PL_utf8skip = external local_unnamed_addr constant [0 x i8], align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%#0*.*f\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%0*.*f\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%#*.*f\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%*.*f\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@PL_tmps_floor = external global i64, align 8
@PL_tmps_ix = external local_unnamed_addr global i64, align 8
@PL_tmps_max = external local_unnamed_addr global i64, align 8
@PL_tmps_stack = external local_unnamed_addr global ptr, align 8
@PL_Sv = external local_unnamed_addr global ptr, align 8
@PL_last_in_gv = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Range iterator outside integer range\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Out of memory during list extend\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"E0\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"panic: bad gimme: %d\0A\00", align 1
@PL_scopestack = external local_unnamed_addr global ptr, align 8
@PL_in_eval = external local_unnamed_addr global i8, align 1
@PL_eval_root = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [18 x i8] c"\09(in cleanup) %-p\00", align 1
@PL_errgv = external local_unnamed_addr global ptr, align 8
@PL_errors = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [4 x i8] c"%-p\00", align 1
@PL_parser = external local_unnamed_addr global ptr, align 8
@PL_curstack = external local_unnamed_addr global ptr, align 8
@PL_markstack = external local_unnamed_addr global ptr, align 8
@PL_scopestack_ix = external local_unnamed_addr global i32, align 4
@PL_stderrgv = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [12 x i8] c"panic: die \00", align 1
@PL_incgv = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [33 x i8] c"%-pCompilation failed in require\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Unknown error\0A\00", align 1
@PL_restartjmpenv = external local_unnamed_addr global ptr, align 8
@PL_restartop = external local_unnamed_addr global ptr, align 8
@PL_top_env = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [22 x i8] c"panic: top_env, v=%d\0A\00", align 1
@PL_DBsub = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"(eval)\00", align 1
@PL_debstash = external local_unnamed_addr global ptr, align 8
@PL_dbargs = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [18 x i8] zeroinitializer, align 1
@PL_dowarn = external local_unnamed_addr global i8, align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"warnings::Bits\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"UUUUUUUUUUUUUUUUU\00", align 1
@PL_DBcontrol = external local_unnamed_addr global [3 x i64], align 16
@PL_DBgv = external local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [26 x i8] c"No DB::DB routine defined\00", align 1
@PL_debug = external global i32, align 4
@PL_savestack = external local_unnamed_addr global ptr, align 8
@PL_savestack_max = external local_unnamed_addr global i32, align 4
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@PL_comppad = external local_unnamed_addr global ptr, align 8
@.str.26 = private unnamed_addr constant [34 x i8] c"Assigned value is not a reference\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"Can't return outside a subroutine\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"%-p did not return a true value\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"panic: return, type=%u\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"panic: last, type=%u\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"redo\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"goto must have label\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"Goto undefined subroutine &%-p\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"Goto undefined subroutine\00", align 1
@.str.37 = private unnamed_addr constant [43 x i8] c"Can't goto subroutine outside a subroutine\00", align 1
@.str.38 = private unnamed_addr constant [42 x i8] c"Can't goto subroutine from an eval-string\00", align 1
@.str.39 = private unnamed_addr constant [41 x i8] c"Can't goto subroutine from an eval-block\00", align 1
@.str.40 = private unnamed_addr constant [60 x i8] c"Can't goto subroutine from a sort sub (or similar callback)\00", align 1
@PL_perldb = external local_unnamed_addr global i32, align 4
@.str.41 = private unnamed_addr constant [9 x i8] c"DB::goto\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PL_lastgotoprobe = external local_unnamed_addr global ptr, align 8
@PL_main_root = external local_unnamed_addr global ptr, align 8
@.str.43 = private unnamed_addr constant [35 x i8] c"Can't \22goto\22 out of a pseudo block\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"panic: goto, type=%u, ix=%ld\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"Can't find label %d%lu%4p\00", align 1
@.str.46 = private unnamed_addr constant [47 x i8] c"Can't \22goto\22 into the middle of a foreach loop\00", align 1
@.str.47 = private unnamed_addr constant [53 x i8] c"Use of \22goto\22 to jump into a construct is deprecated\00", align 1
@PL_do_undump = external local_unnamed_addr global i8, align 1
@PL_exit_flags = external local_unnamed_addr global i8, align 1
@PL_compiling = external global %struct.cop, align 8
@PL_cop_seqmax = external local_unnamed_addr global i32, align 4
@PL_main_cv = external local_unnamed_addr global ptr, align 8
@PL_patchlevel = external local_unnamed_addr global ptr, align 8
@.str.49 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.50 = private unnamed_addr constant [49 x i8] c"Perls since %-p too modern--this is %-p, stopped\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"original\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"qv\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c".0\00", align 1
@.str.54 = private unnamed_addr constant [45 x i8] c"Perl %-p required--this is only %-p, stopped\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"v%d.%d.0\00", align 1
@.str.56 = private unnamed_addr constant [65 x i8] c"Perl %-p required (did you mean %-p?)--this is only %-p, stopped\00", align 1
@.str.57 = private unnamed_addr constant [41 x i8] c"Missing or undefined argument to require\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"pathname\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"require\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"Can't locate %s:   %s\00", align 1
@.str.61 = private unnamed_addr constant [60 x i8] c"Attempt to reload %s aborted.\0ACompilation failed in require\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"/loader/0x%lx/%s\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"INC\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"@INC entry\00", align 1
@.str.67 = private unnamed_addr constant [26 x i8] c"Can't locate %s:   %s: %s\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c".pm\00", align 1
@.str.70 = private unnamed_addr constant [31 x i8] c" (you may need to install the \00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c" module)\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c".h\00", align 1
@.str.74 = private unnamed_addr constant [47 x i8] c" (change .h to .ph maybe?) (did you run h2ph?)\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c".ph\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c" (did you run h2ph?)\00", align 1
@.str.77 = private unnamed_addr constant [47 x i8] c"Can't locate %s in @INC%-p (@INC contains:%-p)\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"Can't locate %s\00", align 1
@PL_eval_start = external local_unnamed_addr global ptr, align 8
@PL_breakable_sub_gen = external local_unnamed_addr global i32, align 4
@.str.79 = private unnamed_addr constant [5 x i8] c"eval\00", align 1
@.str.80 = private unnamed_addr constant [21 x i8] c"_<(eval %lu)[%s:%ld]\00", align 1
@PL_evalseq = external local_unnamed_addr global i32, align 4
@.str.81 = private unnamed_addr constant [13 x i8] c"_<(eval %lu)\00", align 1
@PL_curstash = external global ptr, align 8
@PL_defstash = external local_unnamed_addr global ptr, align 8
@.str.82 = private unnamed_addr constant [33 x i8] c"Can't \22%s\22 outside a topicalizer\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"when\00", align 1
@.str.85 = private unnamed_addr constant [38 x i8] c"Can't \22continue\22 outside a when block\00", align 1
@.str.86 = private unnamed_addr constant [36 x i8] c"Can't \22break\22 outside a given block\00", align 1
@.str.87 = private unnamed_addr constant [36 x i8] c"Can't \22break\22 in a loop topicalizer\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"a readonly value\00", align 1
@.str.90 = private unnamed_addr constant [12 x i8] c"a temporary\00", align 1
@.str.91 = private unnamed_addr constant [39 x i8] c"Can't return %s from lvalue subroutine\00", align 1
@.str.92 = private unnamed_addr constant [41 x i8] c"Can't return a %s from lvalue subroutine\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"readonly value\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"temporary\00", align 1
@.str.95 = private unnamed_addr constant [32 x i8] c"Can't \22%s\22 outside a loop block\00", align 1
@.str.96 = private unnamed_addr constant [29 x i8] c"Label not found for \22%s %-p\22\00", align 1
@.str.97 = private unnamed_addr constant [18 x i8] c"Exiting %s via %s\00", align 1
@context_name = internal unnamed_addr constant [12 x ptr] [ptr @.str.98, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.99, ptr @.str.100, ptr @.str.79, ptr @.str.101], align 16
@PL_op_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.98 = private unnamed_addr constant [13 x i8] c"pseudo-block\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"subroutine\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"substitution\00", align 1
@.str.102 = private unnamed_addr constant [36 x i8] c"Target of goto is too deeply nested\00", align 1
@.str.103 = private unnamed_addr constant [42 x i8] c"Invalid \\0 character in %s for %s: %s\\0%s\00", align 1
@.str.104 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.105 = private unnamed_addr constant [2 x i8] c":\00", align 1
@PL_beginav = external global ptr, align 8
@PL_unitcheckav = external global ptr, align 8
@PL_compcv = external global ptr, align 8
@PL_hintgv = external local_unnamed_addr global ptr, align 8
@PL_blockhooks = external local_unnamed_addr global ptr, align 8
@.str.106 = private unnamed_addr constant [18 x i8] c"Compilation error\00", align 1
@.str.107 = private unnamed_addr constant [14 x i8] c"DB::postponed\00", align 1
@PL_statusvalue = external local_unnamed_addr global i32, align 4
@PL_runops = external local_unnamed_addr global ptr, align 8
@.str.108 = private unnamed_addr constant [60 x i8] c"Smart matching a non-overloaded object breaks encapsulation\00", align 1
@.str.109 = private unnamed_addr constant [25 x i8] c"Null picture in formline\00", align 1
@PL_magic_vtables = external constant [31 x %struct.mgvtbl], align 16
@.str.110 = private unnamed_addr constant [54 x i8] c"Repeated format line will never terminate (~~ and @#)\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_wantarray() local_unnamed_addr #0 !prof !384 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %2 = load ptr, ptr @PL_stack_max, align 8, !tbaa !385
  %3 = ptrtoint ptr %2 to i64
  %4 = ptrtoint ptr %1 to i64
  %5 = sub i64 %3, %4
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9, !prof !389

7:                                                ; preds = %0
  %8 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #21
  br label %9

9:                                                ; preds = %0, %7
  %10 = phi ptr [ %8, %7 ], [ %1, %0 ]
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %12 = getelementptr inbounds %struct.op, ptr %11, i64 0, i32 6
  %13 = load i8, ptr %12, align 1, !tbaa !390
  %14 = icmp sgt i8 %13, -1
  br i1 %14, label %20, label %15, !prof !394

15:                                               ; preds = %9
  %16 = tail call ptr @Perl_caller_cx(i32 noundef 1, ptr noundef null) #22
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr @PL_sv_undef, ptr %19, align 8, !tbaa !385
  br label %41

20:                                               ; preds = %9
  %21 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %22 = getelementptr inbounds %struct.stackinfo, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !395
  %24 = getelementptr inbounds %struct.stackinfo, ptr %21, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !397
  %26 = tail call fastcc i32 @S_dopoptosub_at(ptr noundef %23, i32 noundef %25) #22
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30, !prof !389

28:                                               ; preds = %20
  %29 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr @PL_sv_undef, ptr %29, align 8, !tbaa !385
  br label %41

30:                                               ; preds = %20
  %31 = zext nneg i32 %26 to i64
  %32 = getelementptr inbounds %struct.context, ptr %23, i64 %31
  br label %33

33:                                               ; preds = %15, %30
  %34 = phi ptr [ %16, %15 ], [ %32, %30 ]
  %35 = getelementptr inbounds %struct.block, ptr %34, i64 0, i32 1
  %36 = load i8, ptr %35, align 1, !tbaa !398
  %37 = getelementptr inbounds ptr, ptr %10, i64 1
  switch i8 %36, label %40 [
    i8 3, label %38
    i8 2, label %39
  ], !prof !399

38:                                               ; preds = %33
  store ptr @PL_sv_yes, ptr %37, align 8, !tbaa !385
  br label %41

39:                                               ; preds = %33
  store ptr @PL_sv_no, ptr %37, align 8, !tbaa !385
  br label %41

40:                                               ; preds = %33
  store ptr @PL_sv_undef, ptr %37, align 8, !tbaa !385
  br label %41

41:                                               ; preds = %40, %39, %38, %28, %18
  %42 = phi ptr [ %37, %40 ], [ %37, %39 ], [ %37, %38 ], [ %29, %28 ], [ %19, %18 ]
  store ptr %42, ptr @PL_stack_sp, align 8, !tbaa !385
  %43 = load ptr, ptr %11, align 8, !tbaa !400
  ret ptr %43
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @Perl_caller_cx(i32 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #3 !prof !401 {
  %3 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %4 = getelementptr inbounds %struct.stackinfo, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !395
  %6 = getelementptr inbounds %struct.stackinfo, ptr %3, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !397
  %8 = tail call fastcc i32 @S_dopoptosub_at(ptr noundef %5, i32 noundef %7) #22
  %9 = load ptr, ptr @PL_DBsub, align 8
  %10 = icmp eq ptr %9, null
  br label %11

11:                                               ; preds = %51, %2
  %12 = phi i32 [ %0, %2 ], [ %52, %51 ]
  %13 = phi i32 [ %8, %2 ], [ %54, %51 ]
  %14 = phi ptr [ %5, %2 ], [ %33, %51 ]
  %15 = phi ptr [ %3, %2 ], [ %34, %51 ]
  %16 = icmp slt i32 %13, 0
  br i1 %16, label %17, label %31, !prof !402

17:                                               ; preds = %11, %22
  %18 = phi ptr [ %24, %22 ], [ %15, %11 ]
  %19 = getelementptr inbounds %struct.stackinfo, ptr %18, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !403
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %84, label %22, !prof !404

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.stackinfo, ptr %18, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !405
  %25 = getelementptr inbounds %struct.stackinfo, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !395
  %27 = getelementptr inbounds %struct.stackinfo, ptr %24, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !397
  %29 = tail call fastcc i32 @S_dopoptosub_at(ptr noundef %26, i32 noundef %28) #22
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %17, label %31, !prof !406, !llvm.loop !407

31:                                               ; preds = %22, %11
  %32 = phi i32 [ %13, %11 ], [ %29, %22 ]
  %33 = phi ptr [ %14, %11 ], [ %26, %22 ]
  %34 = phi ptr [ %15, %11 ], [ %24, %22 ]
  br i1 %10, label %48, label %35, !prof !404

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.gv, ptr %9, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !398
  %38 = getelementptr inbounds %struct.gp, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !409
  %40 = icmp eq ptr %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %35
  %42 = zext nneg i32 %32 to i64
  %43 = getelementptr inbounds %struct.context, ptr %33, i64 %42, i32 0, i32 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !398
  %45 = icmp eq ptr %44, %39
  %46 = zext i1 %45 to i32
  %47 = add nsw i32 %12, %46
  br label %48

48:                                               ; preds = %41, %35, %31
  %49 = phi i32 [ %12, %35 ], [ %12, %31 ], [ %47, %41 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51, !prof !411

51:                                               ; preds = %48
  %52 = add nsw i32 %49, -1
  %53 = add nsw i32 %32, -1
  %54 = tail call fastcc i32 @S_dopoptosub_at(ptr noundef %33, i32 noundef %53) #22
  br label %11

55:                                               ; preds = %48
  %56 = zext nneg i32 %32 to i64
  %57 = getelementptr inbounds %struct.context, ptr %33, i64 %56
  %58 = icmp eq ptr %1, null
  br i1 %58, label %60, label %59, !prof !412

59:                                               ; preds = %55
  store ptr %57, ptr %1, align 8, !tbaa !385
  br label %60

60:                                               ; preds = %59, %55
  %61 = load i8, ptr %57, align 8, !tbaa !398
  %62 = and i8 %61, 14
  %63 = icmp eq i8 %62, 8
  br i1 %63, label %64, label %84, !prof !413

64:                                               ; preds = %60
  %65 = add nsw i32 %32, -1
  %66 = tail call fastcc i32 @S_dopoptosub_at(ptr noundef nonnull %33, i32 noundef %65) #22
  %67 = load ptr, ptr @PL_DBsub, align 8, !tbaa !385
  %68 = icmp eq ptr %67, null
  br i1 %68, label %84, label %69, !prof !414

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.gv, ptr %67, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !398
  %72 = getelementptr inbounds %struct.gp, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !409
  %74 = icmp ne ptr %73, null
  %75 = icmp sgt i32 %66, -1
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %77, label %84

77:                                               ; preds = %69
  %78 = zext nneg i32 %66 to i64
  %79 = getelementptr inbounds %struct.context, ptr %33, i64 %78
  %80 = getelementptr inbounds %struct.block, ptr %79, i64 0, i32 8, i32 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !398
  %82 = icmp eq ptr %81, %73
  %83 = select i1 %82, ptr %79, ptr %57
  br label %84

84:                                               ; preds = %17, %77, %60, %69, %64
  %85 = phi ptr [ %57, %60 ], [ %57, %69 ], [ %57, %64 ], [ %83, %77 ], [ null, %17 ]
  ret ptr %85
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @S_dopoptosub_at(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !415 !PGOFuncName !416 {
  %3 = icmp sgt i32 %1, -1
  br i1 %3, label %4, label %20, !prof !417

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %13
  %7 = phi i64 [ %5, %4 ], [ %14, %13 ]
  %8 = getelementptr inbounds %struct.context, ptr %0, i64 %7
  %9 = load i8, ptr %8, align 8, !tbaa !398
  %10 = and i8 %9, 15
  switch i8 %10, label %13 [
    i8 8, label %11
    i8 10, label %18
    i8 9, label %18
  ], !prof !418

11:                                               ; preds = %6
  %12 = icmp sgt i8 %9, -1
  br i1 %12, label %16, label %13, !prof !419

13:                                               ; preds = %6, %11
  %14 = add nsw i64 %7, -1
  %15 = icmp sgt i64 %7, 0
  br i1 %15, label %6, label %20, !prof !420, !llvm.loop !421

16:                                               ; preds = %11
  %17 = trunc i64 %7 to i32
  br label %20

18:                                               ; preds = %6, %6
  %19 = trunc i64 %7 to i32
  br label %20

20:                                               ; preds = %13, %16, %18, %2
  %21 = phi i32 [ %1, %2 ], [ %17, %16 ], [ %19, %18 ], [ -1, %13 ]
  ret i32 %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local ptr @Perl_pp_regcreset() local_unnamed_addr #5 !prof !422 {
  store i8 0, ptr @PL_tainted, align 1, !tbaa !423
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %2 = load ptr, ptr %1, align 8, !tbaa !400
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_regcomp() local_unnamed_addr #0 !prof !425 {
  %1 = alloca i8, align 1
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %4 = getelementptr inbounds %struct.logop, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !426
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #23
  store i8 0, ptr %1, align 1, !tbaa !423
  %6 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 5
  %7 = load i8, ptr %6, align 2, !tbaa !428
  %8 = and i8 %7, 64
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10, !prof !429

10:                                               ; preds = %0
  %11 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %12 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %13 = getelementptr inbounds i32, ptr %12, i64 -1
  store ptr %13, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %14 = load i32, ptr %12, align 4, !tbaa !430
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds ptr, ptr %11, i64 %15
  %17 = ptrtoint ptr %2 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 3
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds ptr, ptr %16, i64 1
  br label %23

23:                                               ; preds = %0, %10
  %24 = phi i32 [ %21, %10 ], [ 1, %0 ]
  %25 = phi ptr [ %22, %10 ], [ %2, %0 ]
  %26 = getelementptr inbounds %struct.pmop, ptr %5, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !431
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29, !prof !433

29:                                               ; preds = %23
  %30 = tail call fastcc ptr @S_ReANY(ptr noundef nonnull %27) #22
  %31 = getelementptr inbounds %struct.regexp, ptr %30, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !434
  br label %38

33:                                               ; preds = %23
  %34 = tail call ptr @Perl_current_re_engine() #21
  %35 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %36 = getelementptr inbounds %struct.op, ptr %35, i64 0, i32 5
  %37 = load i8, ptr %36, align 2, !tbaa !428
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i8 [ %7, %29 ], [ %37, %33 ]
  %40 = phi ptr [ %32, %29 ], [ %34, %33 ]
  %41 = getelementptr inbounds %struct.regexp_engine, ptr %40, i64 0, i32 11
  %42 = load ptr, ptr %41, align 8, !tbaa !436
  %43 = icmp eq ptr %42, null
  %44 = select i1 %43, ptr @Perl_re_op_compile, ptr %42, !prof !438
  %45 = getelementptr inbounds %struct.pmop, ptr %5, i64 0, i32 13
  %46 = load ptr, ptr %45, align 8, !tbaa !439
  %47 = getelementptr inbounds %struct.pmop, ptr %5, i64 0, i32 10
  %48 = load i32, ptr %47, align 8, !tbaa !440
  %49 = and i32 %48, 4095
  %50 = and i8 %39, -128
  %51 = zext i8 %50 to i32
  %52 = shl nuw i32 %51, 24
  %53 = or i32 %52, %48
  %54 = call ptr %44(ptr noundef %25, i32 noundef %24, ptr noundef %46, ptr noundef %40, ptr noundef %27, ptr noundef nonnull %1, i32 noundef %49, i32 noundef %53) #21
  %55 = load i32, ptr %47, align 8, !tbaa !440
  %56 = and i32 %55, 268435456
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %68, label %58, !prof !441

58:                                               ; preds = %38
  %59 = load ptr, ptr @PL_curpad, align 8, !tbaa !385
  %60 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %61 = getelementptr inbounds %struct.op, ptr %60, i64 0, i32 3
  %62 = load i64, ptr %61, align 8, !tbaa !442
  %63 = getelementptr inbounds ptr, ptr %59, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !385
  %65 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %64) #22
  %66 = call fastcc ptr @S_ReANY(ptr noundef %54) #22
  %67 = getelementptr inbounds %struct.regexp, ptr %66, i64 0, i32 25
  store ptr %64, ptr %67, align 8, !tbaa !443
  br label %68

68:                                               ; preds = %58, %38
  %69 = load i8, ptr %1, align 1, !tbaa !423, !range !444, !noundef !445
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %113, label %71, !prof !446

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.pmop, ptr %5, i64 0, i32 4
  %73 = load i16, ptr %72, align 8
  %74 = and i16 %73, 511
  %75 = icmp eq i16 %74, 31
  br i1 %75, label %76, label %111, !prof !447

76:                                               ; preds = %71
  %77 = load i8, ptr @PL_tainted, align 1, !tbaa !423, !range !444, !noundef !445
  %78 = getelementptr inbounds %struct.pmop, ptr %5, i64 0, i32 5
  %79 = load i8, ptr %78, align 2, !tbaa !448
  %80 = and i8 %79, 64
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %84, label %82, !prof !447

82:                                               ; preds = %76
  %83 = getelementptr inbounds ptr, ptr %25, i64 -1
  br label %101

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.pmop, ptr %5, i64 0, i32 3
  %86 = load i64, ptr %85, align 8, !tbaa !449
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %91, label %88, !prof !450

88:                                               ; preds = %84
  %89 = load ptr, ptr @PL_curpad, align 8, !tbaa !385
  %90 = getelementptr inbounds ptr, ptr %89, i64 %86
  br label %101

91:                                               ; preds = %84
  %92 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %93 = getelementptr inbounds %struct.gv, ptr %92, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !398
  %95 = load ptr, ptr %94, align 8, !tbaa !451
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %92, i32 noundef 0) #21
  %99 = getelementptr inbounds %struct.gv, ptr %98, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !398
  br label %101

101:                                              ; preds = %97, %91, %88, %82
  %102 = phi ptr [ %83, %82 ], [ %90, %88 ], [ %100, %97 ], [ %94, %91 ]
  %103 = load ptr, ptr %102, align 8, !tbaa !385
  %104 = getelementptr inbounds %struct.sv, ptr %103, i64 0, i32 2
  %105 = load i32, ptr %104, align 4, !tbaa !452
  %106 = and i32 %105, 2097152
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108, !prof !447

108:                                              ; preds = %101
  %109 = call i32 @Perl_mg_get(ptr noundef nonnull %103) #21
  br label %110

110:                                              ; preds = %101, %108
  store i8 %77, ptr @PL_tainted, align 1, !tbaa !423
  br label %111

111:                                              ; preds = %110, %71
  %112 = call ptr @Perl_reg_temp_copy(ptr noundef null, ptr noundef %54) #21
  call fastcc void @S_SvREFCNT_dec(ptr noundef %54) #22
  br label %113

113:                                              ; preds = %111, %68
  %114 = phi ptr [ %112, %111 ], [ %54, %68 ]
  %115 = icmp eq ptr %27, %114
  br i1 %115, label %117, label %116, !prof !454

116:                                              ; preds = %113
  call fastcc void @S_SvREFCNT_dec(ptr noundef %27) #22
  store ptr %114, ptr %26, align 8, !tbaa !431
  br label %117

117:                                              ; preds = %116, %113
  %118 = load i8, ptr @PL_tainting, align 1, !tbaa !423, !range !444, !noundef !445
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %128, label %120, !prof !441

120:                                              ; preds = %117
  %121 = load i8, ptr @PL_tainted, align 1, !tbaa !423, !range !444, !noundef !445
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %120
  call void @Perl_sv_magic(ptr noundef %114, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #21
  %124 = call fastcc ptr @S_ReANY(ptr noundef %114) #22
  %125 = getelementptr inbounds %struct.regexp, ptr %124, i64 0, i32 7
  %126 = load i32, ptr %125, align 8, !tbaa !455
  %127 = or i32 %126, 134217728
  store i32 %127, ptr %125, align 8, !tbaa !455
  br label %128

128:                                              ; preds = %123, %120, %117
  %129 = load ptr, ptr %26, align 8, !tbaa !431
  %130 = load ptr, ptr %129, align 8, !tbaa !456
  %131 = getelementptr inbounds %struct.xpv, ptr %130, i64 0, i32 2
  %132 = load i64, ptr %131, align 8, !tbaa !458
  %133 = call fastcc ptr @S_ReANY(ptr noundef nonnull %129) #22
  %134 = getelementptr inbounds %struct.regexp, ptr %133, i64 0, i32 24
  %135 = load i16, ptr %134, align 8
  %136 = and i16 %135, 15
  %137 = add nuw nsw i16 %136, 1
  %138 = zext nneg i16 %137 to i64
  %139 = icmp eq i64 %132, %138
  br i1 %139, label %140, label %144, !prof !438

140:                                              ; preds = %128
  %141 = load ptr, ptr @PL_curpm, align 8, !tbaa !385
  %142 = icmp eq ptr %141, null
  %143 = select i1 %142, ptr %5, ptr %141
  br label %144

144:                                              ; preds = %140, %128
  %145 = phi ptr [ %5, %128 ], [ %143, %140 ]
  %146 = getelementptr inbounds %struct.pmop, ptr %145, i64 0, i32 10
  %147 = load i32, ptr %146, align 8, !tbaa !440
  %148 = and i32 %147, 8388608
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %158, label %150, !prof !460

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.pmop, ptr %145, i64 0, i32 6
  %152 = load i8, ptr %151, align 1, !tbaa !461
  %153 = and i8 %152, -65
  store i8 %153, ptr %151, align 1, !tbaa !461
  %154 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %155 = load ptr, ptr %154, align 8, !tbaa !400
  %156 = getelementptr inbounds %struct.logop, ptr %154, i64 0, i32 7
  %157 = load ptr, ptr %156, align 8, !tbaa !462
  store ptr %155, ptr %157, align 8, !tbaa !400
  br label %158

158:                                              ; preds = %150, %144
  %159 = getelementptr inbounds ptr, ptr %25, i64 -1
  store ptr %159, ptr @PL_stack_sp, align 8, !tbaa !385
  %160 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %161 = load ptr, ptr %160, align 8, !tbaa !400
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #23
  ret ptr %161
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @S_ReANY(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !463 !PGOFuncName !464 {
  %2 = getelementptr inbounds %struct.p5rx, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !398
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @Perl_current_re_engine() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_re_op_compile(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #7 !prof !465 !PGOFuncName !466 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !467

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !468
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !468
  br label %7

7:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: optsize
declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_reg_temp_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 !prof !469 !PGOFuncName !470 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3, !prof !471

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !468
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9, !prof !472

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !468
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #21
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_substcont() local_unnamed_addr #0 !prof !473 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %2 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %3 = getelementptr inbounds %struct.stackinfo, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !395
  %5 = getelementptr inbounds %struct.stackinfo, ptr %2, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !397
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.context, ptr %4, i64 %7
  %9 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %10 = getelementptr inbounds %struct.logop, ptr %9, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !426
  %12 = getelementptr inbounds %struct.subst, ptr %8, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !398
  %14 = getelementptr inbounds %struct.subst, ptr %8, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !398
  %16 = getelementptr inbounds %struct.subst, ptr %8, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !398
  %18 = getelementptr inbounds %struct.subst, ptr %8, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !398
  %20 = getelementptr inbounds %struct.subst, ptr %8, i64 0, i32 13
  %21 = load ptr, ptr %20, align 8, !tbaa !398
  %22 = getelementptr inbounds %struct.pmop, ptr %11, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !431
  %24 = load i32, ptr @PL_sig_pending, align 4, !tbaa !430
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26, !prof !474

26:                                               ; preds = %0
  %27 = load ptr, ptr @PL_signalhook, align 8, !tbaa !385
  tail call void %27() #21
  br label %28

28:                                               ; preds = %0, %26
  %29 = icmp eq ptr %23, %21
  br i1 %29, label %35, label %30, !prof !474

30:                                               ; preds = %28
  %31 = icmp eq ptr %23, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %30
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %23) #22
  br label %33

33:                                               ; preds = %32, %30
  %34 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %21) #22
  store ptr %21, ptr %22, align 8, !tbaa !431
  br label %35

35:                                               ; preds = %33, %28
  %36 = getelementptr inbounds %struct.subst, ptr %8, i64 0, i32 12
  tail call fastcc void @S_rxres_restore(ptr noundef nonnull %36, ptr noundef %21) #22
  %37 = getelementptr inbounds %struct.subst, ptr %8, i64 0, i32 4
  %38 = load i64, ptr %37, align 8, !tbaa !398
  %39 = add nsw i64 %38, 1
  store i64 %39, ptr %37, align 8, !tbaa !398
  %40 = icmp eq i64 %38, 0
  br i1 %40, label %284, label %41, !prof !475

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.subst, ptr %8, i64 0, i32 5
  %43 = load i64, ptr %42, align 8, !tbaa !398
  %44 = icmp slt i64 %38, %43
  br i1 %44, label %47, label %45, !prof !476

45:                                               ; preds = %41
  %46 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str) #21
  br label %453

47:                                               ; preds = %41
  %48 = load ptr, ptr %1, align 8, !tbaa !385
  %49 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !452
  %51 = and i32 %50, 2097152
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53, !prof !476

53:                                               ; preds = %47
  %54 = tail call i32 @Perl_mg_get(ptr noundef nonnull %48) #21
  %55 = load ptr, ptr %1, align 8, !tbaa !385
  %56 = getelementptr inbounds %struct.sv, ptr %55, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !452
  br label %58

58:                                               ; preds = %47, %53
  %59 = phi i32 [ %50, %47 ], [ %57, %53 ]
  %60 = phi ptr [ %48, %47 ], [ %55, %53 ]
  %61 = and i32 %59, 14680064
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63, !prof !476

63:                                               ; preds = %58
  %64 = tail call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %60) #21
  br i1 %64, label %65, label %69

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.subst, ptr %8, i64 0, i32 2
  %67 = load i16, ptr %66, align 2, !tbaa !398
  %68 = or i16 %67, 4
  store i16 %68, ptr %66, align 2, !tbaa !398
  br label %69

69:                                               ; preds = %65, %63, %58
  %70 = getelementptr inbounds ptr, ptr %1, i64 -1
  %71 = load ptr, ptr %1, align 8, !tbaa !385
  tail call void @Perl_sv_catsv_flags(ptr noundef %13, ptr noundef %71, i32 noundef 0) #21
  %72 = load i8, ptr %8, align 8, !tbaa !398
  %73 = and i8 %72, 16
  %74 = icmp ne i8 %73, 0
  %75 = icmp ult ptr %15, %19
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %91, label %77, !prof !477

77:                                               ; preds = %69
  %78 = tail call fastcc ptr @S_ReANY(ptr noundef %21) #22
  %79 = getelementptr inbounds %struct.regexp, ptr %78, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !434
  %81 = getelementptr inbounds %struct.regexp_engine, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !478
  %83 = getelementptr inbounds %struct.subst, ptr %8, i64 0, i32 11
  %84 = load ptr, ptr %83, align 8, !tbaa !398
  %85 = icmp eq ptr %15, %17
  %86 = zext i1 %85 to i64
  %87 = getelementptr inbounds %struct.subst, ptr %8, i64 0, i32 8
  %88 = load ptr, ptr %87, align 8, !tbaa !398
  %89 = tail call i32 %82(ptr noundef %21, ptr noundef %15, ptr noundef %84, ptr noundef %19, i64 noundef %86, ptr noundef %88, ptr noundef null, i32 noundef 152) #21
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %283, !prof !479

91:                                               ; preds = %77, %69
  %92 = getelementptr inbounds %struct.subst, ptr %8, i64 0, i32 8
  %93 = load ptr, ptr %92, align 8, !tbaa !398
  %94 = getelementptr inbounds %struct.subst, ptr %8, i64 0, i32 11
  %95 = load ptr, ptr %94, align 8, !tbaa !398
  %96 = icmp ugt ptr %95, %15
  br i1 %96, label %97, label %126, !prof !480

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !452
  %100 = and i32 %99, 536870912
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %122, label %102, !prof !481

102:                                              ; preds = %97
  %103 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %104 = getelementptr inbounds %struct.cop, ptr %103, i64 0, i32 10
  %105 = load i32, ptr %104, align 8, !tbaa !482
  %106 = and i32 %105, 8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.sv, ptr %93, i64 0, i32 2
  %110 = load i32, ptr %109, align 4, !tbaa !452
  %111 = and i32 %110, 536870912
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = ptrtoint ptr %95 to i64
  %115 = ptrtoint ptr %15 to i64
  %116 = sub i64 %114, %115
  %117 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %15, i64 noundef %116, i32 noundef 524288) #21
  %118 = getelementptr inbounds %struct.sv, ptr %117, i64 0, i32 2
  %119 = load i32, ptr %118, align 4, !tbaa !452
  %120 = and i32 %119, -536870913
  store i32 %120, ptr %118, align 4, !tbaa !452
  %121 = tail call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %117, i32 noundef 2, i64 noundef 0) #21
  tail call void @Perl_sv_catsv_flags(ptr noundef nonnull %13, ptr noundef %117, i32 noundef 0) #21
  br label %126

122:                                              ; preds = %108, %102, %97
  %123 = ptrtoint ptr %95 to i64
  %124 = ptrtoint ptr %15 to i64
  %125 = sub i64 %123, %124
  tail call void @Perl_sv_catpvn_flags(ptr noundef nonnull %13, ptr noundef %15, i64 noundef %125, i32 noundef 0) #21
  br label %126

126:                                              ; preds = %113, %122, %91
  %127 = tail call fastcc ptr @S_ReANY(ptr noundef %21) #22
  %128 = getelementptr inbounds %struct.regexp, ptr %127, i64 0, i32 7
  %129 = load i32, ptr %128, align 8, !tbaa !455
  %130 = and i32 %129, 67108864
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %136, label %132, !prof !484

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.subst, ptr %8, i64 0, i32 2
  %134 = load i16, ptr %133, align 2, !tbaa !398
  %135 = or i16 %134, 2
  store i16 %135, ptr %133, align 2, !tbaa !398
  br label %136

136:                                              ; preds = %132, %126
  %137 = getelementptr inbounds %struct.pmop, ptr %11, i64 0, i32 10
  %138 = load i32, ptr %137, align 8, !tbaa !440
  %139 = and i32 %138, 134217728
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %142, label %141, !prof !484

141:                                              ; preds = %136
  store ptr %13, ptr %1, align 8, !tbaa !385
  br label %211

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.sv, ptr %93, i64 0, i32 2
  %144 = load i32, ptr %143, align 4, !tbaa !452
  %145 = and i32 %144, 427886592
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %149, label %147, !prof !485

147:                                              ; preds = %142
  tail call void @Perl_sv_force_normal_flags(ptr noundef nonnull %93, i32 noundef 4) #21
  %148 = load i32, ptr %143, align 4, !tbaa !452
  br label %149

149:                                              ; preds = %147, %142
  %150 = phi i32 [ %148, %147 ], [ %144, %142 ]
  %151 = and i32 %150, 255
  %152 = icmp eq i32 %151, 9
  br i1 %152, label %153, label %154, !prof !486

153:                                              ; preds = %149
  tail call void @Perl_croak_no_modify() #21
  br label %154

154:                                              ; preds = %149, %153
  %155 = load ptr, ptr %93, align 8, !tbaa !487
  %156 = getelementptr inbounds %struct.xpv, ptr %155, i64 0, i32 3
  %157 = load i64, ptr %156, align 8, !tbaa !398
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %181, label %159, !prof !488

159:                                              ; preds = %154
  %160 = load i32, ptr %143, align 4, !tbaa !452
  %161 = and i32 %160, 33554432
  %162 = icmp eq i32 %161, 0
  %163 = getelementptr inbounds %struct.sv, ptr %93, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !398
  br i1 %162, label %178, label %165, !prof !489

165:                                              ; preds = %159
  %166 = getelementptr inbounds i8, ptr %164, i64 -1
  %167 = load i8, ptr %166, align 1, !tbaa !398
  %168 = zext i8 %167 to i64
  %169 = icmp eq i8 %167, 0
  br i1 %169, label %170, label %173, !prof !490

170:                                              ; preds = %165
  %171 = getelementptr inbounds i8, ptr %164, i64 -9
  %172 = load i64, ptr %171, align 1
  br label %173

173:                                              ; preds = %170, %165
  %174 = phi i64 [ %168, %165 ], [ %172, %170 ]
  %175 = sub i64 0, %174
  %176 = getelementptr inbounds i8, ptr %164, i64 %175
  store ptr %176, ptr %163, align 8, !tbaa !398
  %177 = and i32 %160, -33554433
  store i32 %177, ptr %143, align 4, !tbaa !452
  br label %178

178:                                              ; preds = %159, %173
  %179 = phi ptr [ %176, %173 ], [ %164, %159 ]
  tail call void @Perl_safesysfree(ptr noundef %179) #21
  %180 = load ptr, ptr %93, align 8, !tbaa !487
  br label %181

181:                                              ; preds = %154, %178
  %182 = phi ptr [ %155, %154 ], [ %180, %178 ]
  %183 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 3
  %184 = load ptr, ptr %183, align 8, !tbaa !398
  %185 = getelementptr inbounds %struct.sv, ptr %93, i64 0, i32 3
  store ptr %184, ptr %185, align 8, !tbaa !398
  %186 = load ptr, ptr %13, align 8, !tbaa !487
  %187 = getelementptr inbounds %struct.xpv, ptr %186, i64 0, i32 2
  %188 = load i64, ptr %187, align 8, !tbaa !458
  %189 = getelementptr inbounds %struct.xpv, ptr %182, i64 0, i32 2
  store i64 %188, ptr %189, align 8, !tbaa !458
  %190 = getelementptr inbounds %struct.xpv, ptr %186, i64 0, i32 3
  %191 = load i64, ptr %190, align 8, !tbaa !398
  %192 = getelementptr inbounds %struct.xpv, ptr %182, i64 0, i32 3
  store i64 %191, ptr %192, align 8, !tbaa !398
  %193 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2
  %194 = load i32, ptr %193, align 4, !tbaa !452
  %195 = and i32 %194, 536870912
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %206, label %197, !prof !484

197:                                              ; preds = %181
  %198 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %199 = getelementptr inbounds %struct.cop, ptr %198, i64 0, i32 10
  %200 = load i32, ptr %199, align 8, !tbaa !482
  %201 = and i32 %200, 8
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %197
  %204 = load i32, ptr %143, align 4, !tbaa !452
  %205 = or i32 %204, 536870912
  store i32 %205, ptr %143, align 4, !tbaa !452
  br label %206

206:                                              ; preds = %181, %197, %203
  store ptr null, ptr %183, align 8, !tbaa !398
  store i8 0, ptr @PL_tainted, align 1, !tbaa !423
  %207 = tail call ptr @Perl_sv_newmortal() #21
  store ptr %207, ptr %1, align 8, !tbaa !385
  tail call void @Perl_sv_setiv(ptr noundef %207, i64 noundef %38) #21
  %208 = load i32, ptr %143, align 4, !tbaa !452
  %209 = and i32 %208, 2147418367
  %210 = or disjoint i32 %209, 17408
  store i32 %210, ptr %143, align 4, !tbaa !452
  br label %211

211:                                              ; preds = %206, %141
  %212 = phi ptr [ %13, %141 ], [ %93, %206 ]
  %213 = load i8, ptr @PL_tainting, align 1, !range !444, !noundef !445
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %252, label %215, !prof !484

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.subst, ptr %8, i64 0, i32 2
  %217 = load i16, ptr %216, align 2, !tbaa !398
  %218 = zext i16 %217 to i32
  %219 = and i32 %218, 2
  %220 = icmp ne i32 %219, 0
  %221 = and i32 %218, 9
  %222 = icmp eq i32 %221, 9
  %223 = or i1 %220, %222
  br i1 %223, label %224, label %231

224:                                              ; preds = %215
  %225 = tail call fastcc ptr @S_ReANY(ptr noundef %21) #22
  %226 = getelementptr inbounds %struct.regexp, ptr %225, i64 0, i32 7
  %227 = load i32, ptr %226, align 8, !tbaa !455
  %228 = or i32 %227, 67108864
  store i32 %228, ptr %226, align 8, !tbaa !455
  %229 = load i16, ptr %216, align 2, !tbaa !398
  %230 = zext i16 %229 to i32
  br label %231

231:                                              ; preds = %215, %224
  %232 = phi i32 [ %218, %215 ], [ %230, %224 ]
  %233 = phi i16 [ %217, %215 ], [ %229, %224 ]
  %234 = and i32 %232, 16
  %235 = icmp ne i32 %234, 0
  %236 = and i32 %232, 3
  %237 = icmp eq i32 %236, 0
  %238 = or i1 %235, %237
  br i1 %238, label %244, label %239

239:                                              ; preds = %231
  %240 = load ptr, ptr %1, align 8, !tbaa !385
  tail call void @Perl_sv_magic(ptr noundef %240, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #21
  %241 = load i16, ptr %216, align 2, !tbaa !398
  %242 = load i8, ptr @PL_tainting, align 1, !tbaa !423, !range !444
  %243 = icmp ne i8 %242, 0
  br label %244

244:                                              ; preds = %239, %231
  %245 = phi i1 [ %243, %239 ], [ true, %231 ]
  %246 = phi i16 [ %241, %239 ], [ %233, %231 ]
  %247 = and i16 %246, 7
  %248 = icmp ne i16 %247, 0
  %249 = zext i1 %248 to i8
  store i8 %249, ptr @PL_tainted, align 1, !tbaa !423
  %250 = select i1 %245, i1 %248, i1 false
  br i1 %250, label %251, label %252

251:                                              ; preds = %244
  tail call void @Perl_sv_magic(ptr noundef %212, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #21
  br label %252

252:                                              ; preds = %244, %211, %251
  %253 = getelementptr inbounds %struct.sv, ptr %212, i64 0, i32 2
  %254 = load i32, ptr %253, align 4, !tbaa !452
  %255 = and i32 %254, 4194304
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %259, label %257, !prof !484

257:                                              ; preds = %252
  %258 = tail call i32 @Perl_mg_set(ptr noundef nonnull %212) #21
  br label %259

259:                                              ; preds = %252, %257
  store i8 0, ptr @PL_tainted, align 1, !tbaa !423
  %260 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !430
  %261 = getelementptr inbounds %struct.subst, ptr %8, i64 0, i32 3
  %262 = load i32, ptr %261, align 4, !tbaa !398
  %263 = icmp sgt i32 %260, %262
  br i1 %263, label %264, label %265, !prof !486

264:                                              ; preds = %259
  tail call void @Perl_leave_scope(i32 noundef %262) #21
  br label %265

265:                                              ; preds = %264, %259
  %266 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %267 = getelementptr inbounds %struct.stackinfo, ptr %266, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !395
  %269 = getelementptr inbounds %struct.stackinfo, ptr %266, i64 0, i32 4
  %270 = load i32, ptr %269, align 8, !tbaa !397
  %271 = add nsw i32 %270, -1
  store i32 %271, ptr %269, align 8, !tbaa !397
  %272 = sext i32 %270 to i64
  %273 = getelementptr inbounds %struct.context, ptr %268, i64 %272
  %274 = getelementptr inbounds %struct.subst, ptr %273, i64 0, i32 12
  tail call fastcc void @S_rxres_free(ptr noundef nonnull %274) #22
  %275 = getelementptr inbounds %struct.subst, ptr %273, i64 0, i32 13
  %276 = load ptr, ptr %275, align 8, !tbaa !398
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %276) #22
  %277 = load i32, ptr @PL_sig_pending, align 4, !tbaa !430
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %281, label %279, !prof !484

279:                                              ; preds = %265
  %280 = load ptr, ptr @PL_signalhook, align 8, !tbaa !385
  tail call void %280() #21
  br label %281

281:                                              ; preds = %265, %279
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !385
  %282 = load ptr, ptr %11, align 8, !tbaa !491
  br label %453

283:                                              ; preds = %77
  store i64 %39, ptr %37, align 8, !tbaa !398
  br label %284

284:                                              ; preds = %283, %35
  %285 = phi ptr [ %70, %283 ], [ %1, %35 ]
  %286 = tail call fastcc ptr @S_ReANY(ptr noundef %21) #22
  %287 = getelementptr inbounds %struct.regexp, ptr %286, i64 0, i32 7
  %288 = load i32, ptr %287, align 8, !tbaa !455
  %289 = and i32 %288, 33554432
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %305, label %291, !prof !492

291:                                              ; preds = %284
  %292 = getelementptr inbounds %struct.regexp, ptr %286, i64 0, i32 18
  %293 = load ptr, ptr %292, align 8, !tbaa !493
  %294 = icmp eq ptr %293, %19
  br i1 %294, label %305, label %295, !prof !494

295:                                              ; preds = %291
  store ptr %293, ptr %18, align 8, !tbaa !398
  %296 = ptrtoint ptr %15 to i64
  %297 = ptrtoint ptr %19 to i64
  %298 = sub i64 %296, %297
  %299 = getelementptr inbounds i8, ptr %293, i64 %298
  %300 = getelementptr inbounds %struct.subst, ptr %8, i64 0, i32 11
  %301 = load ptr, ptr %300, align 8, !tbaa !398
  %302 = ptrtoint ptr %301 to i64
  %303 = sub i64 %302, %296
  %304 = getelementptr inbounds i8, ptr %299, i64 %303
  store ptr %304, ptr %300, align 8, !tbaa !398
  br label %305

305:                                              ; preds = %295, %291, %284
  %306 = phi ptr [ %293, %295 ], [ %19, %291 ], [ %19, %284 ]
  %307 = phi ptr [ %299, %295 ], [ %15, %291 ], [ %15, %284 ]
  %308 = tail call fastcc ptr @S_ReANY(ptr noundef %21) #22
  %309 = getelementptr inbounds %struct.regexp, ptr %308, i64 0, i32 17
  %310 = load ptr, ptr %309, align 8, !tbaa !495
  %311 = load i64, ptr %310, align 8, !tbaa !496
  %312 = getelementptr inbounds i8, ptr %306, i64 %311
  store ptr %312, ptr %16, align 8, !tbaa !398
  %313 = icmp ugt ptr %312, %307
  br i1 %313, label %314, label %345, !prof !498

314:                                              ; preds = %305
  %315 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2
  %316 = load i32, ptr %315, align 4, !tbaa !452
  %317 = and i32 %316, 536870912
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %341, label %319, !prof !499

319:                                              ; preds = %314
  %320 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %321 = getelementptr inbounds %struct.cop, ptr %320, i64 0, i32 10
  %322 = load i32, ptr %321, align 8, !tbaa !482
  %323 = and i32 %322, 8
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %341

325:                                              ; preds = %319
  %326 = getelementptr inbounds %struct.subst, ptr %8, i64 0, i32 8
  %327 = load ptr, ptr %326, align 8, !tbaa !398
  %328 = getelementptr inbounds %struct.sv, ptr %327, i64 0, i32 2
  %329 = load i32, ptr %328, align 4, !tbaa !452
  %330 = and i32 %329, 536870912
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %341

332:                                              ; preds = %325
  %333 = ptrtoint ptr %312 to i64
  %334 = ptrtoint ptr %307 to i64
  %335 = sub i64 %333, %334
  %336 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %307, i64 noundef %335, i32 noundef 524288) #21
  %337 = getelementptr inbounds %struct.sv, ptr %336, i64 0, i32 2
  %338 = load i32, ptr %337, align 4, !tbaa !452
  %339 = and i32 %338, -536870913
  store i32 %339, ptr %337, align 4, !tbaa !452
  %340 = tail call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %336, i32 noundef 2, i64 noundef 0) #21
  tail call void @Perl_sv_catsv_flags(ptr noundef nonnull %13, ptr noundef %336, i32 noundef 0) #21
  br label %345

341:                                              ; preds = %325, %319, %314
  %342 = ptrtoint ptr %312 to i64
  %343 = ptrtoint ptr %307 to i64
  %344 = sub i64 %342, %343
  tail call void @Perl_sv_catpvn_flags(ptr noundef nonnull %13, ptr noundef %307, i64 noundef %344, i32 noundef 0) #21
  br label %345

345:                                              ; preds = %332, %341, %305
  %346 = tail call fastcc ptr @S_ReANY(ptr noundef %21) #22
  %347 = getelementptr inbounds %struct.regexp, ptr %346, i64 0, i32 17
  %348 = load ptr, ptr %347, align 8, !tbaa !495
  %349 = getelementptr inbounds %struct.regexp_paren_pair, ptr %348, i64 0, i32 1
  %350 = load i64, ptr %349, align 8, !tbaa !500
  %351 = getelementptr inbounds i8, ptr %306, i64 %350
  store ptr %351, ptr %14, align 8, !tbaa !398
  %352 = getelementptr inbounds %struct.pmop, ptr %11, i64 0, i32 10
  %353 = load i32, ptr %352, align 8, !tbaa !440
  %354 = and i32 %353, 134217728
  %355 = icmp eq i32 %354, 0
  %356 = getelementptr inbounds %struct.subst, ptr %8, i64 0, i32 8
  %357 = select i1 %355, ptr %356, ptr %12, !prof !476
  %358 = load ptr, ptr %357, align 8, !tbaa !398
  %359 = getelementptr inbounds %struct.sv, ptr %358, i64 0, i32 2
  %360 = load i32, ptr %359, align 4, !tbaa !452
  %361 = and i32 %360, 1024
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %365, !prof !501

363:                                              ; preds = %345
  %364 = tail call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %358, ptr noundef null, i32 noundef 0) #21
  br label %365

365:                                              ; preds = %363, %345
  %366 = tail call ptr @Perl_mg_find_mglob(ptr noundef nonnull %358) #21
  %367 = icmp eq ptr %366, null
  br i1 %367, label %368, label %370, !prof !502

368:                                              ; preds = %365
  %369 = tail call ptr @Perl_sv_magicext_mglob(ptr noundef nonnull %358) #21
  br label %370

370:                                              ; preds = %368, %365
  %371 = phi ptr [ %366, %365 ], [ %369, %368 ]
  %372 = load i32, ptr %359, align 4, !tbaa !452
  %373 = and i32 %372, 1024
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %385, label %375, !prof !501

375:                                              ; preds = %370
  %376 = and i32 %372, 2097152
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %380, label %378, !prof !476

378:                                              ; preds = %375
  %379 = tail call fastcc zeroext i1 @S_sv_only_taint_gmagic(ptr noundef nonnull %358) #22
  br i1 %379, label %380, label %385

380:                                              ; preds = %378, %375
  %381 = getelementptr inbounds %struct.magic, ptr %371, i64 0, i32 5
  store i64 %311, ptr %381, align 8, !tbaa !503
  %382 = getelementptr inbounds %struct.magic, ptr %371, i64 0, i32 4
  %383 = load i8, ptr %382, align 1, !tbaa !506
  %384 = or i8 %383, 64
  store i8 %384, ptr %382, align 1, !tbaa !506
  br label %405

385:                                              ; preds = %378, %370
  %386 = and i32 %372, 536870912
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %399, label %388

388:                                              ; preds = %385
  %389 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %390 = getelementptr inbounds %struct.cop, ptr %389, i64 0, i32 10
  %391 = load i32, ptr %390, align 8, !tbaa !482
  %392 = and i32 %391, 8
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %399

394:                                              ; preds = %388
  %395 = getelementptr inbounds %struct.sv, ptr %358, i64 0, i32 3
  %396 = load ptr, ptr %395, align 8, !tbaa !398
  %397 = getelementptr inbounds i8, ptr %396, i64 %311
  %398 = tail call i64 @Perl_utf8_length(ptr noundef %396, ptr noundef %397) #21
  br label %399

399:                                              ; preds = %385, %388, %394
  %400 = phi i64 [ %398, %394 ], [ %311, %388 ], [ %311, %385 ]
  %401 = getelementptr inbounds %struct.magic, ptr %371, i64 0, i32 5
  store i64 %400, ptr %401, align 8, !tbaa !503
  %402 = getelementptr inbounds %struct.magic, ptr %371, i64 0, i32 4
  %403 = load i8, ptr %402, align 1, !tbaa !506
  %404 = and i8 %403, -65
  store i8 %404, ptr %402, align 1, !tbaa !506
  br label %405

405:                                              ; preds = %399, %380
  br i1 %29, label %408, label %406, !prof !476

406:                                              ; preds = %405
  %407 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %21) #22
  br label %408

408:                                              ; preds = %406, %405
  %409 = load i8, ptr @PL_tainting, align 1, !range !444, !noundef !445
  %410 = icmp eq i8 %409, 0
  br i1 %410, label %450, label %411, !prof !476

411:                                              ; preds = %408
  %412 = tail call fastcc ptr @S_ReANY(ptr noundef %21) #22
  %413 = getelementptr inbounds %struct.regexp, ptr %412, i64 0, i32 7
  %414 = load i32, ptr %413, align 8, !tbaa !455
  %415 = and i32 %414, 67108864
  %416 = icmp eq i32 %415, 0
  %417 = getelementptr inbounds %struct.subst, ptr %8, i64 0, i32 2
  %418 = load i16, ptr %417, align 2, !tbaa !398
  br i1 %416, label %421, label %419

419:                                              ; preds = %411
  %420 = or i16 %418, 2
  store i16 %420, ptr %417, align 2, !tbaa !398
  br label %421

421:                                              ; preds = %411, %419
  %422 = phi i16 [ %420, %419 ], [ %418, %411 ]
  %423 = getelementptr inbounds %struct.subst, ptr %8, i64 0, i32 2
  %424 = zext i16 %422 to i32
  %425 = and i32 %424, 2
  %426 = icmp ne i32 %425, 0
  %427 = and i32 %424, 9
  %428 = icmp eq i32 %427, 9
  %429 = or i1 %426, %428
  br i1 %429, label %430, label %435

430:                                              ; preds = %421
  %431 = tail call fastcc ptr @S_ReANY(ptr noundef %21) #22
  %432 = getelementptr inbounds %struct.regexp, ptr %431, i64 0, i32 7
  %433 = load i32, ptr %432, align 8, !tbaa !455
  %434 = or i32 %433, 67108864
  store i32 %434, ptr %432, align 8, !tbaa !455
  br label %435

435:                                              ; preds = %421, %430
  %436 = load i64, ptr %37, align 8, !tbaa !398
  %437 = icmp sgt i64 %436, 1
  br i1 %437, label %438, label %449

438:                                              ; preds = %435
  %439 = load i16, ptr %423, align 2, !tbaa !398
  %440 = and i16 %439, 7
  %441 = icmp eq i16 %440, 0
  br i1 %441, label %449, label %442

442:                                              ; preds = %438
  %443 = load i32, ptr %352, align 8, !tbaa !440
  %444 = and i32 %443, 134217728
  %445 = icmp eq i32 %444, 0
  %446 = getelementptr inbounds %struct.subst, ptr %8, i64 0, i32 8
  %447 = select i1 %445, ptr %446, ptr %12
  %448 = load ptr, ptr %447, align 8, !tbaa !398
  tail call void @Perl_sv_magic(ptr noundef %448, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #21
  br label %449

449:                                              ; preds = %442, %438, %435
  store i8 0, ptr @PL_tainted, align 1, !tbaa !423
  br label %450

450:                                              ; preds = %449, %408
  tail call void @Perl_rxres_save(ptr noundef nonnull %36, ptr noundef %21) #22
  store ptr %11, ptr @PL_curpm, align 8, !tbaa !385
  store ptr %285, ptr @PL_stack_sp, align 8, !tbaa !385
  %451 = getelementptr inbounds %struct.pmop, ptr %11, i64 0, i32 12
  %452 = load ptr, ptr %451, align 8, !tbaa !398
  br label %453

453:                                              ; preds = %281, %45, %450
  %454 = phi ptr [ %452, %450 ], [ %282, %281 ], [ %46, %45 ]
  ret ptr %454
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_rxres_restore(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !473 !PGOFuncName !507 {
  %3 = load ptr, ptr %0, align 8, !tbaa !385
  %4 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  %5 = getelementptr inbounds %struct.regexp, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !508
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8, !prof !474

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !452
  %11 = and i32 %10, 427886592
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @Perl_sv_force_normal_flags(ptr noundef nonnull %6, i32 noundef 4) #21
  br label %14

14:                                               ; preds = %8, %13, %2
  %15 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  %16 = getelementptr inbounds %struct.regexp, ptr %15, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !455
  %18 = and i32 %17, 33554432
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20, !prof !474

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.regexp, ptr %15, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !493
  tail call void @Perl_safesysfree(ptr noundef %22) #21
  %23 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  %24 = getelementptr inbounds %struct.regexp, ptr %23, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !455
  %26 = and i32 %25, -33554433
  store i32 %26, ptr %24, align 8, !tbaa !455
  br label %27

27:                                               ; preds = %20, %14
  %28 = load i64, ptr %3, align 8, !tbaa !509
  %29 = icmp eq i64 %28, 0
  %30 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  %31 = getelementptr inbounds %struct.regexp, ptr %30, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !455
  %33 = and i32 %32, -33554433
  %34 = select i1 %29, i32 0, i32 33554432, !prof !510
  %35 = or disjoint i32 %33, %34
  store i32 %35, ptr %31, align 8, !tbaa !455
  %36 = getelementptr inbounds i64, ptr %3, i64 1
  store i64 0, ptr %3, align 8, !tbaa !509
  %37 = getelementptr inbounds i64, ptr %3, i64 2
  %38 = load i64, ptr %36, align 8, !tbaa !509
  %39 = trunc i64 %38 to i32
  %40 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  %41 = getelementptr inbounds %struct.regexp, ptr %40, i64 0, i32 12
  store i32 %39, ptr %41, align 8, !tbaa !511
  %42 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  %43 = getelementptr inbounds %struct.regexp, ptr %42, i64 0, i32 19
  %44 = load ptr, ptr %43, align 8, !tbaa !508
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46, !prof !474

46:                                               ; preds = %27
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %44) #22
  br label %47

47:                                               ; preds = %46, %27
  %48 = load i64, ptr %37, align 8, !tbaa !509
  %49 = inttoptr i64 %48 to ptr
  %50 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  %51 = getelementptr inbounds %struct.regexp, ptr %50, i64 0, i32 19
  store ptr %49, ptr %51, align 8, !tbaa !508
  %52 = getelementptr inbounds i64, ptr %3, i64 3
  store i64 0, ptr %37, align 8, !tbaa !509
  %53 = getelementptr inbounds i64, ptr %3, i64 4
  %54 = load i64, ptr %52, align 8, !tbaa !509
  %55 = inttoptr i64 %54 to ptr
  %56 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  %57 = getelementptr inbounds %struct.regexp, ptr %56, i64 0, i32 18
  store ptr %55, ptr %57, align 8, !tbaa !493
  %58 = getelementptr inbounds i64, ptr %3, i64 5
  %59 = load i64, ptr %53, align 8, !tbaa !509
  %60 = shl i64 %59, 32
  %61 = ashr exact i64 %60, 32
  %62 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  %63 = getelementptr inbounds %struct.regexp, ptr %62, i64 0, i32 20
  store i64 %61, ptr %63, align 8, !tbaa !512
  %64 = getelementptr inbounds i64, ptr %3, i64 6
  %65 = load i64, ptr %58, align 8, !tbaa !509
  %66 = shl i64 %65, 32
  %67 = ashr exact i64 %66, 32
  %68 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  %69 = getelementptr inbounds %struct.regexp, ptr %68, i64 0, i32 21
  store i64 %67, ptr %69, align 8, !tbaa !513
  %70 = getelementptr inbounds i64, ptr %3, i64 7
  %71 = load i64, ptr %64, align 8, !tbaa !509
  %72 = shl i64 %71, 32
  %73 = ashr exact i64 %72, 32
  %74 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  %75 = getelementptr inbounds %struct.regexp, ptr %74, i64 0, i32 22
  store i64 %73, ptr %75, align 8, !tbaa !514
  %76 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  br label %77

77:                                               ; preds = %47, %77
  %78 = phi ptr [ %76, %47 ], [ %98, %77 ]
  %79 = phi i32 [ 0, %47 ], [ %97, %77 ]
  %80 = phi ptr [ %70, %47 ], [ %89, %77 ]
  %81 = getelementptr inbounds i64, ptr %80, i64 1
  %82 = load i64, ptr %80, align 8, !tbaa !509
  %83 = shl i64 %82, 32
  %84 = ashr exact i64 %83, 32
  %85 = getelementptr inbounds %struct.regexp, ptr %78, i64 0, i32 17
  %86 = load ptr, ptr %85, align 8, !tbaa !495
  %87 = zext i32 %79 to i64
  %88 = getelementptr inbounds %struct.regexp_paren_pair, ptr %86, i64 %87
  store i64 %84, ptr %88, align 8, !tbaa !496
  %89 = getelementptr inbounds i64, ptr %80, i64 2
  %90 = load i64, ptr %81, align 8, !tbaa !509
  %91 = shl i64 %90, 32
  %92 = ashr exact i64 %91, 32
  %93 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  %94 = getelementptr inbounds %struct.regexp, ptr %93, i64 0, i32 17
  %95 = load ptr, ptr %94, align 8, !tbaa !495
  %96 = getelementptr inbounds %struct.regexp_paren_pair, ptr %95, i64 %87, i32 1
  store i64 %92, ptr %96, align 8, !tbaa !500
  %97 = add i32 %79, 1
  %98 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  %99 = getelementptr inbounds %struct.regexp, ptr %98, i64 0, i32 12
  %100 = load i32, ptr %99, align 8, !tbaa !511
  %101 = icmp ugt i32 %97, %100
  br i1 %101, label %102, label %77, !prof !515, !llvm.loop !516

102:                                              ; preds = %77
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_die(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_tainted(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_force_normal_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak_no_modify() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_leave_scope(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_rxres_free(ptr nocapture noundef %0) unnamed_addr #0 !prof !517 !PGOFuncName !518 {
  %2 = load ptr, ptr %0, align 8, !tbaa !385
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4, !prof !486

4:                                                ; preds = %1
  %5 = load i64, ptr %2, align 8, !tbaa !509
  %6 = inttoptr i64 %5 to ptr
  %7 = getelementptr inbounds i64, ptr %2, i64 2
  %8 = load i64, ptr %7, align 8, !tbaa !509
  %9 = inttoptr i64 %8 to ptr
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %9) #22
  tail call void @Perl_safesysfree(ptr noundef %6) #21
  tail call void @Perl_safesysfree(ptr noundef nonnull %2) #21
  store ptr null, ptr %0, align 8, !tbaa !385
  br label %10

10:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_sv_pvn_force_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_mg_find_mglob(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_magicext_mglob(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i1 @S_sv_only_taint_gmagic(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !422 !PGOFuncName !519 {
  %2 = load ptr, ptr %0, align 8, !tbaa !487
  %3 = getelementptr inbounds %struct.xpvmg, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !398
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %1, %21
  %7 = phi ptr [ %22, %21 ], [ %4, %1 ]
  %8 = getelementptr inbounds %struct.magic, ptr %7, i64 0, i32 3
  %9 = load i8, ptr %8, align 2, !tbaa !520
  %10 = icmp eq i8 %9, 116
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.magic, ptr %7, i64 0, i32 4
  %13 = load i8, ptr %12, align 1, !tbaa !506
  %14 = and i8 %13, 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.magic, ptr %7, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !521
  %19 = load ptr, ptr %18, align 8, !tbaa !522
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16, %11, %6
  %22 = load ptr, ptr %7, align 8, !tbaa !398
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %6, !llvm.loop !524

24:                                               ; preds = %16, %21, %1
  %25 = phi i1 [ true, %1 ], [ true, %21 ], [ false, %16 ]
  ret i1 %25
}

; Function Attrs: optsize
declare i64 @Perl_utf8_length(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_rxres_save(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !473 {
  %3 = load ptr, ptr %0, align 8, !tbaa !385
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5, !prof !475

5:                                                ; preds = %2
  %6 = getelementptr inbounds i64, ptr %3, i64 1
  %7 = load i64, ptr %6, align 8, !tbaa !509
  %8 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  %9 = getelementptr inbounds %struct.regexp, ptr %8, i64 0, i32 12
  %10 = load i32, ptr %9, align 8, !tbaa !511
  %11 = zext i32 %10 to i64
  %12 = icmp ult i64 %7, %11
  br i1 %12, label %13, label %27, !prof !501

13:                                               ; preds = %5, %2
  %14 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  %15 = getelementptr inbounds %struct.regexp, ptr %14, i64 0, i32 12
  %16 = load i32, ptr %15, align 8, !tbaa !511
  %17 = shl i32 %16, 1
  %18 = add i32 %17, 9
  %19 = zext i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 3
  br i1 %4, label %21, label %23, !prof !484

21:                                               ; preds = %13
  %22 = tail call ptr @Perl_safesysmalloc(i64 noundef %20) #21
  br label %25

23:                                               ; preds = %13
  %24 = tail call ptr @Perl_safesysrealloc(ptr noundef nonnull %3, i64 noundef %20) #21
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi ptr [ %24, %23 ], [ %22, %21 ]
  store ptr %26, ptr %0, align 8, !tbaa !385
  br label %27

27:                                               ; preds = %25, %5
  %28 = phi ptr [ %26, %25 ], [ %3, %5 ]
  %29 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  %30 = getelementptr inbounds %struct.regexp, ptr %29, i64 0, i32 7
  %31 = load i32, ptr %30, align 8, !tbaa !455
  %32 = and i32 %31, 33554432
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34, !prof !510

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.regexp, ptr %29, i64 0, i32 18
  %36 = load ptr, ptr %35, align 8, !tbaa !493
  %37 = ptrtoint ptr %36 to i64
  br label %38

38:                                               ; preds = %27, %34
  %39 = phi i64 [ %37, %34 ], [ 0, %27 ]
  %40 = getelementptr inbounds i64, ptr %28, i64 1
  store i64 %39, ptr %28, align 8, !tbaa !509
  %41 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  %42 = getelementptr inbounds %struct.regexp, ptr %41, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !455
  %44 = and i32 %43, -33554433
  store i32 %44, ptr %42, align 8, !tbaa !455
  %45 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  %46 = getelementptr inbounds %struct.regexp, ptr %45, i64 0, i32 12
  %47 = load i32, ptr %46, align 8, !tbaa !511
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i64, ptr %28, i64 2
  store i64 %48, ptr %40, align 8, !tbaa !509
  %50 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  %51 = getelementptr inbounds %struct.regexp, ptr %50, i64 0, i32 19
  %52 = load ptr, ptr %51, align 8, !tbaa !508
  %53 = ptrtoint ptr %52 to i64
  %54 = getelementptr inbounds i64, ptr %28, i64 3
  store i64 %53, ptr %49, align 8, !tbaa !509
  %55 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  %56 = getelementptr inbounds %struct.regexp, ptr %55, i64 0, i32 19
  store ptr null, ptr %56, align 8, !tbaa !508
  %57 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  %58 = getelementptr inbounds %struct.regexp, ptr %57, i64 0, i32 18
  %59 = load ptr, ptr %58, align 8, !tbaa !493
  %60 = ptrtoint ptr %59 to i64
  %61 = getelementptr inbounds i64, ptr %28, i64 4
  store i64 %60, ptr %54, align 8, !tbaa !509
  %62 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  %63 = getelementptr inbounds %struct.regexp, ptr %62, i64 0, i32 20
  %64 = load i64, ptr %63, align 8, !tbaa !512
  %65 = getelementptr inbounds i64, ptr %28, i64 5
  store i64 %64, ptr %61, align 8, !tbaa !509
  %66 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  %67 = getelementptr inbounds %struct.regexp, ptr %66, i64 0, i32 21
  %68 = load i64, ptr %67, align 8, !tbaa !513
  %69 = getelementptr inbounds i64, ptr %28, i64 6
  store i64 %68, ptr %65, align 8, !tbaa !509
  %70 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  %71 = getelementptr inbounds %struct.regexp, ptr %70, i64 0, i32 22
  %72 = load i64, ptr %71, align 8, !tbaa !514
  %73 = getelementptr inbounds i64, ptr %28, i64 7
  store i64 %72, ptr %69, align 8, !tbaa !509
  %74 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  br label %75

75:                                               ; preds = %38, %75
  %76 = phi ptr [ %74, %38 ], [ %92, %75 ]
  %77 = phi i32 [ 0, %38 ], [ %91, %75 ]
  %78 = phi ptr [ %73, %38 ], [ %90, %75 ]
  %79 = getelementptr inbounds %struct.regexp, ptr %76, i64 0, i32 17
  %80 = load ptr, ptr %79, align 8, !tbaa !495
  %81 = zext i32 %77 to i64
  %82 = getelementptr inbounds %struct.regexp_paren_pair, ptr %80, i64 %81
  %83 = load i64, ptr %82, align 8, !tbaa !496
  %84 = getelementptr inbounds i64, ptr %78, i64 1
  store i64 %83, ptr %78, align 8, !tbaa !509
  %85 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  %86 = getelementptr inbounds %struct.regexp, ptr %85, i64 0, i32 17
  %87 = load ptr, ptr %86, align 8, !tbaa !495
  %88 = getelementptr inbounds %struct.regexp_paren_pair, ptr %87, i64 %81, i32 1
  %89 = load i64, ptr %88, align 8, !tbaa !500
  %90 = getelementptr inbounds i64, ptr %78, i64 2
  store i64 %89, ptr %84, align 8, !tbaa !509
  %91 = add i32 %77, 1
  %92 = tail call fastcc ptr @S_ReANY(ptr noundef %1) #22
  %93 = getelementptr inbounds %struct.regexp, ptr %92, i64 0, i32 12
  %94 = load i32, ptr %93, align 8, !tbaa !511
  %95 = icmp ugt i32 %91, %94
  br i1 %95, label %96, label %75, !prof !515, !llvm.loop !525

96:                                               ; preds = %75
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_formline() local_unnamed_addr #0 !prof !422 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %4 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %7 = load i32, ptr %5, align 4, !tbaa !430
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %4, i64 %8
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !385
  %12 = load ptr, ptr @PL_chopset, align 8, !tbaa !385
  %13 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %12, i32 noundef 32) #24
  %14 = icmp ne ptr %13, null
  %15 = zext i1 %14 to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  %16 = tail call fastcc ptr @S_doparseform(ptr noundef %11) #22
  %17 = getelementptr inbounds %struct.magic, ptr %16, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !526
  %19 = getelementptr inbounds %struct.magic, ptr %16, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !527
  %21 = load ptr, ptr @PL_formtarget, align 8, !tbaa !385
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !452
  %24 = and i32 %23, 430018304
  %25 = icmp eq i32 %24, 1024
  br i1 %25, label %26, label %30

26:                                               ; preds = %0
  %27 = load ptr, ptr %21, align 8, !tbaa !487
  %28 = getelementptr inbounds %struct.xpv, ptr %27, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !458
  store i64 %29, ptr %1, align 8, !tbaa !509
  br label %32

30:                                               ; preds = %0
  %31 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %21, ptr noundef nonnull %1, i32 noundef 2) #21
  br label %32

32:                                               ; preds = %30, %26
  %33 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !452
  %35 = and i32 %34, 14680064
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %11) #21
  br i1 %38, label %49, label %39

39:                                               ; preds = %37, %32
  %40 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !452
  %42 = and i32 %41, 14680064
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %20) #21
  %46 = load i8, ptr @PL_tainting, align 1, !range !444
  %47 = icmp ne i8 %46, 0
  %48 = select i1 %45, i1 %47, i1 false
  br i1 %48, label %52, label %54

49:                                               ; preds = %37
  %50 = load i8, ptr @PL_tainting, align 1, !tbaa !423, !range !444, !noundef !445
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %44, %49
  %53 = load ptr, ptr @PL_formtarget, align 8, !tbaa !385
  call void @Perl_sv_magic(ptr noundef %53, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #21
  br label %54

54:                                               ; preds = %52, %49, %44, %39
  %55 = load ptr, ptr @PL_formtarget, align 8, !tbaa !385
  %56 = getelementptr inbounds %struct.sv, ptr %55, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !452
  %58 = and i32 %57, 536870912
  %59 = icmp ne i32 %58, 0
  %60 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %61 = getelementptr inbounds %struct.cop, ptr %60, i64 0, i32 10
  %62 = load i32, ptr %61, align 8, !tbaa !482
  %63 = and i32 %62, 8
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %59, i1 %64, i1 false
  %66 = zext i1 %65 to i8
  %67 = load ptr, ptr %20, align 8, !tbaa !487
  %68 = getelementptr inbounds %struct.xpv, ptr %67, i64 0, i32 2
  %69 = load i64, ptr %68, align 8, !tbaa !458
  %70 = icmp eq i32 %63, 0
  %71 = select i1 %70, i64 3, i64 1
  %72 = mul i64 %71, %69
  %73 = add i64 %72, 1
  %74 = and i32 %57, 268435456
  %75 = icmp eq i32 %74, 0
  %76 = load i64, ptr %1, align 8, !tbaa !509
  br i1 %75, label %80, label %77

77:                                               ; preds = %54
  %78 = add i64 %72, 2
  %79 = add i64 %78, %76
  br label %87

80:                                               ; preds = %54
  %81 = load ptr, ptr %55, align 8, !tbaa !487
  %82 = getelementptr inbounds %struct.xpv, ptr %81, i64 0, i32 3
  %83 = load i64, ptr %82, align 8, !tbaa !398
  %84 = add i64 %72, 2
  %85 = add i64 %84, %76
  %86 = icmp ult i64 %83, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %77, %80
  %88 = phi i64 [ %79, %77 ], [ %85, %80 ]
  %89 = call ptr @Perl_sv_grow(ptr noundef nonnull %55, i64 noundef %88) #21
  %90 = load i64, ptr %1, align 8, !tbaa !509
  br label %94

91:                                               ; preds = %80
  %92 = getelementptr inbounds %struct.sv, ptr %55, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !398
  br label %94

94:                                               ; preds = %91, %87
  %95 = phi i64 [ %90, %87 ], [ %76, %91 ]
  %96 = phi ptr [ %89, %87 ], [ %93, %91 ]
  %97 = getelementptr inbounds i8, ptr %96, i64 %95
  %98 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !452
  %100 = and i32 %99, 2098176
  %101 = icmp eq i32 %100, 1024
  br i1 %101, label %102, label %108

102:                                              ; preds = %94
  %103 = load ptr, ptr %20, align 8, !tbaa !487
  %104 = getelementptr inbounds %struct.xpv, ptr %103, i64 0, i32 2
  %105 = load i64, ptr %104, align 8, !tbaa !458
  store i64 %105, ptr %1, align 8, !tbaa !509
  %106 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !398
  br label %110

108:                                              ; preds = %94
  %109 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %20, ptr noundef nonnull %1, i32 noundef 34) #21
  br label %110

110:                                              ; preds = %108, %102
  %111 = phi ptr [ %107, %102 ], [ %109, %108 ]
  br label %112

112:                                              ; preds = %633, %110
  %113 = phi i32 [ 0, %110 ], [ %634, %633 ]
  %114 = phi i8 [ %15, %110 ], [ %635, %633 ]
  %115 = phi ptr [ null, %110 ], [ %636, %633 ]
  %116 = phi i64 [ 0, %110 ], [ %637, %633 ]
  %117 = phi i32 [ 0, %110 ], [ %638, %633 ]
  %118 = phi i8 [ 0, %110 ], [ %639, %633 ]
  %119 = phi i32 [ 0, %110 ], [ %640, %633 ]
  %120 = phi i8 [ 0, %110 ], [ %641, %633 ]
  %121 = phi i8 [ %66, %110 ], [ %642, %633 ]
  %122 = phi i32 [ 0, %110 ], [ %643, %633 ]
  %123 = phi ptr [ null, %110 ], [ %644, %633 ]
  %124 = phi ptr [ null, %110 ], [ %645, %633 ]
  %125 = phi ptr [ %111, %110 ], [ %646, %633 ]
  %126 = phi ptr [ %97, %110 ], [ %647, %633 ]
  %127 = phi ptr [ %18, %110 ], [ %648, %633 ]
  %128 = phi ptr [ %10, %110 ], [ %649, %633 ]
  %129 = getelementptr inbounds i32, ptr %127, i64 1
  %130 = load i32, ptr %127, align 4, !tbaa !430
  switch i32 %130, label %633 [
    i32 1, label %131
    i32 2, label %139
    i32 3, label %165
    i32 4, label %170
    i32 5, label %194
    i32 6, label %258
    i32 7, label %352
    i32 8, label %363
    i32 9, label %376
    i32 10, label %378
    i32 17, label %411
    i32 11, label %412
    i32 16, label %598
    i32 12, label %603
    i32 13, label %685
    i32 14, label %700
    i32 15, label %713
    i32 0, label %768
  ]

131:                                              ; preds = %112
  %132 = load ptr, ptr @PL_formtarget, align 8, !tbaa !385
  %133 = getelementptr inbounds %struct.sv, ptr %132, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !398
  %135 = ptrtoint ptr %126 to i64
  %136 = ptrtoint ptr %134 to i64
  %137 = sub i64 %135, %136
  %138 = add nsw i32 %113, 1
  br label %633

139:                                              ; preds = %112
  %140 = getelementptr inbounds i32, ptr %127, i64 2
  %141 = load i32, ptr %129, align 4, !tbaa !430
  %142 = zext i32 %141 to i64
  store i64 %142, ptr %2, align 8, !tbaa !509
  %143 = getelementptr inbounds i8, ptr %125, i64 %142
  %144 = and i8 %121, 1
  %145 = icmp eq i8 %144, 0
  %146 = load i32, ptr %98, align 4, !tbaa !452
  br i1 %145, label %159, label %147

147:                                              ; preds = %139
  %148 = and i32 %146, 536870912
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %147
  %151 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %152 = getelementptr inbounds %struct.cop, ptr %151, i64 0, i32 10
  %153 = load i32, ptr %152, align 8, !tbaa !482
  %154 = and i32 %153, 8
  %155 = icmp eq i32 %154, 0
  br label %156

156:                                              ; preds = %150, %147
  %157 = phi i1 [ false, %147 ], [ %155, %150 ]
  %158 = zext i1 %157 to i32
  br label %162

159:                                              ; preds = %139
  %160 = lshr i32 %146, 29
  %161 = and i32 %160, 1
  br label %162

162:                                              ; preds = %159, %156
  %163 = phi i32 [ %158, %156 ], [ %161, %159 ]
  %164 = trunc i32 %163 to i8
  br label %471

165:                                              ; preds = %112
  %166 = getelementptr inbounds i32, ptr %127, i64 2
  %167 = load i32, ptr %129, align 4, !tbaa !430
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i8, ptr %125, i64 %168
  br label %633

170:                                              ; preds = %112
  %171 = getelementptr inbounds i32, ptr %127, i64 2
  %172 = load i32, ptr %129, align 4, !tbaa !430
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, ptr %125, i64 %173
  %175 = icmp ult ptr %128, %3
  br i1 %175, label %176, label %179

176:                                              ; preds = %170
  %177 = getelementptr inbounds ptr, ptr %128, i64 1
  %178 = load ptr, ptr %177, align 8, !tbaa !385
  br label %180

179:                                              ; preds = %170
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 28, ptr noundef nonnull @.str.1) #21
  br label %180

180:                                              ; preds = %179, %176
  %181 = phi ptr [ %178, %176 ], [ @PL_sv_no, %179 ]
  %182 = phi ptr [ %177, %176 ], [ %128, %179 ]
  %183 = getelementptr inbounds %struct.sv, ptr %181, i64 0, i32 2
  %184 = load i32, ptr %183, align 4, !tbaa !452
  %185 = and i32 %184, 14680064
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %633, label %187

187:                                              ; preds = %180
  %188 = call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %181) #21
  %189 = load i8, ptr @PL_tainting, align 1, !range !444
  %190 = icmp ne i8 %189, 0
  %191 = select i1 %188, i1 %190, i1 false
  br i1 %191, label %192, label %633

192:                                              ; preds = %187
  %193 = load ptr, ptr @PL_formtarget, align 8, !tbaa !385
  call void @Perl_sv_magic(ptr noundef %193, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #21
  br label %633

194:                                              ; preds = %112
  %195 = getelementptr inbounds %struct.sv, ptr %124, i64 0, i32 2
  %196 = load i32, ptr %195, align 4, !tbaa !452
  %197 = and i32 %196, 2098176
  %198 = icmp eq i32 %197, 1024
  br i1 %198, label %199, label %205

199:                                              ; preds = %194
  %200 = load ptr, ptr %124, align 8, !tbaa !487
  %201 = getelementptr inbounds %struct.xpv, ptr %200, i64 0, i32 2
  %202 = load i64, ptr %201, align 8, !tbaa !458
  store i64 %202, ptr %1, align 8, !tbaa !509
  %203 = getelementptr inbounds %struct.sv, ptr %124, i64 0, i32 3
  %204 = load ptr, ptr %203, align 8, !tbaa !398
  br label %209

205:                                              ; preds = %194
  %206 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %124, ptr noundef nonnull %1, i32 noundef 34) #21
  %207 = load i64, ptr %1, align 8, !tbaa !509
  %208 = load i32, ptr %195, align 4, !tbaa !452
  br label %209

209:                                              ; preds = %205, %199
  %210 = phi i32 [ %196, %199 ], [ %208, %205 ]
  %211 = phi i64 [ %202, %199 ], [ %207, %205 ]
  %212 = phi ptr [ %204, %199 ], [ %206, %205 ]
  %213 = getelementptr inbounds i8, ptr %212, i64 %211
  %214 = and i32 %210, 536870912
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %222, label %216

216:                                              ; preds = %209
  %217 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %218 = getelementptr inbounds %struct.cop, ptr %217, i64 0, i32 10
  %219 = load i32, ptr %218, align 8, !tbaa !482
  %220 = and i32 %219, 8
  %221 = icmp eq i32 %220, 0
  br label %222

222:                                              ; preds = %216, %209
  %223 = phi i1 [ false, %209 ], [ %221, %216 ]
  %224 = zext i1 %223 to i8
  br label %225

225:                                              ; preds = %245, %222
  %226 = phi i8 [ %118, %222 ], [ %240, %245 ]
  %227 = phi i32 [ 0, %222 ], [ %248, %245 ]
  %228 = phi ptr [ %212, %222 ], [ %247, %245 ]
  %229 = icmp ult ptr %228, %213
  br i1 %229, label %230, label %250

230:                                              ; preds = %225
  %231 = load i8, ptr %228, align 1, !tbaa !398
  %232 = zext i8 %231 to i64
  %233 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !430
  %235 = and i32 %234, 24576
  %236 = icmp eq i32 %235, 24576
  br i1 %236, label %237, label %239

237:                                              ; preds = %230
  %238 = icmp eq i8 %231, 10
  br i1 %238, label %250, label %239

239:                                              ; preds = %230, %237
  %240 = phi i8 [ %226, %237 ], [ 1, %230 ]
  br i1 %223, label %241, label %245

241:                                              ; preds = %239
  %242 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %232
  %243 = load i8, ptr %242, align 1, !tbaa !398
  %244 = zext i8 %243 to i64
  br label %245

245:                                              ; preds = %239, %241
  %246 = phi i64 [ %244, %241 ], [ 1, %239 ]
  %247 = getelementptr inbounds i8, ptr %228, i64 %246
  %248 = add nuw nsw i32 %227, 1
  %249 = icmp eq i32 %248, %117
  br i1 %249, label %250, label %225, !llvm.loop !528

250:                                              ; preds = %245, %237, %225
  %251 = phi i8 [ %226, %237 ], [ %240, %245 ], [ %226, %225 ]
  %252 = phi i32 [ %227, %237 ], [ %117, %245 ], [ %227, %225 ]
  %253 = phi ptr [ %228, %237 ], [ %247, %245 ], [ %228, %225 ]
  %254 = ptrtoint ptr %253 to i64
  %255 = ptrtoint ptr %212 to i64
  %256 = sub i64 %254, %255
  %257 = trunc i64 %256 to i32
  br label %633

258:                                              ; preds = %112
  %259 = getelementptr inbounds %struct.sv, ptr %124, i64 0, i32 2
  %260 = load i32, ptr %259, align 4, !tbaa !452
  %261 = and i32 %260, 2098176
  %262 = icmp eq i32 %261, 1024
  br i1 %262, label %263, label %269

263:                                              ; preds = %258
  %264 = load ptr, ptr %124, align 8, !tbaa !487
  %265 = getelementptr inbounds %struct.xpv, ptr %264, i64 0, i32 2
  %266 = load i64, ptr %265, align 8, !tbaa !458
  store i64 %266, ptr %1, align 8, !tbaa !509
  %267 = getelementptr inbounds %struct.sv, ptr %124, i64 0, i32 3
  %268 = load ptr, ptr %267, align 8, !tbaa !398
  br label %273

269:                                              ; preds = %258
  %270 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %124, ptr noundef nonnull %1, i32 noundef 34) #21
  %271 = load i64, ptr %1, align 8, !tbaa !509
  %272 = load i32, ptr %259, align 4, !tbaa !452
  br label %273

273:                                              ; preds = %269, %263
  %274 = phi i32 [ %260, %263 ], [ %272, %269 ]
  %275 = phi i64 [ %266, %263 ], [ %271, %269 ]
  %276 = phi ptr [ %268, %263 ], [ %270, %269 ]
  %277 = getelementptr inbounds i8, ptr %276, i64 %275
  %278 = and i32 %274, 536870912
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %286, label %280

280:                                              ; preds = %273
  %281 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %282 = getelementptr inbounds %struct.cop, ptr %281, i64 0, i32 10
  %283 = load i32, ptr %282, align 8, !tbaa !482
  %284 = and i32 %283, 8
  %285 = icmp eq i32 %284, 0
  br label %286

286:                                              ; preds = %280, %273
  %287 = phi i1 [ false, %273 ], [ %285, %280 ]
  %288 = zext i1 %287 to i8
  %289 = and i8 %114, 1
  %290 = icmp eq i8 %289, 0
  %291 = icmp sgt i64 %275, 0
  br i1 %291, label %292, label %337

292:                                              ; preds = %286
  %293 = load ptr, ptr @PL_chopset, align 8
  br label %294

294:                                              ; preds = %292, %332
  %295 = phi i32 [ 0, %292 ], [ %335, %332 ]
  %296 = phi ptr [ %276, %292 ], [ %334, %332 ]
  %297 = phi i32 [ %122, %292 ], [ %327, %332 ]
  %298 = phi i8 [ %118, %292 ], [ %326, %332 ]
  %299 = phi ptr [ null, %292 ], [ %325, %332 ]
  %300 = load i8, ptr %296, align 1, !tbaa !398
  %301 = zext i8 %300 to i64
  %302 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %301
  %303 = load i32, ptr %302, align 4, !tbaa !430
  %304 = and i32 %303, 17408
  %305 = icmp eq i32 %304, 17408
  br i1 %305, label %306, label %312

306:                                              ; preds = %294
  %307 = icmp eq i8 %300, 13
  br i1 %307, label %337, label %308

308:                                              ; preds = %306
  %309 = select i1 %290, ptr %299, ptr %296
  %310 = select i1 %290, i32 %297, i32 %295
  %311 = icmp eq i32 %295, %117
  br i1 %311, label %337, label %324

312:                                              ; preds = %294
  %313 = sext i8 %300 to i32
  %314 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %293, i32 noundef %313) #24
  %315 = icmp eq ptr %314, null
  %316 = getelementptr inbounds i8, ptr %296, i64 1
  %317 = select i1 %315, ptr %299, ptr %316
  %318 = select i1 %315, i32 %297, i32 %295
  %319 = icmp eq i32 %295, %117
  br i1 %319, label %337, label %320

320:                                              ; preds = %312
  %321 = and i32 %303, 24576
  %322 = icmp eq i32 %321, 24576
  %323 = select i1 %322, i8 %298, i8 1
  br label %324

324:                                              ; preds = %320, %308
  %325 = phi ptr [ %309, %308 ], [ %317, %320 ]
  %326 = phi i8 [ %298, %308 ], [ %323, %320 ]
  %327 = phi i32 [ %310, %308 ], [ %318, %320 ]
  br i1 %287, label %328, label %332

328:                                              ; preds = %324
  %329 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %301
  %330 = load i8, ptr %329, align 1, !tbaa !398
  %331 = zext i8 %330 to i64
  br label %332

332:                                              ; preds = %324, %328
  %333 = phi i64 [ %331, %328 ], [ 1, %324 ]
  %334 = getelementptr inbounds i8, ptr %296, i64 %333
  %335 = add nuw nsw i32 %295, 1
  %336 = icmp ult ptr %334, %277
  br i1 %336, label %294, label %337, !llvm.loop !529

337:                                              ; preds = %332, %308, %312, %306, %286
  %338 = phi i8 [ %118, %286 ], [ %298, %306 ], [ %298, %312 ], [ %298, %308 ], [ %326, %332 ]
  %339 = phi ptr [ %276, %286 ], [ %296, %306 ], [ %296, %312 ], [ %296, %308 ], [ %334, %332 ]
  %340 = phi i32 [ 0, %286 ], [ %295, %306 ], [ %117, %312 ], [ %117, %308 ], [ %335, %332 ]
  %341 = phi ptr [ null, %286 ], [ %296, %306 ], [ %317, %312 ], [ %309, %308 ], [ %325, %332 ]
  %342 = phi i32 [ %122, %286 ], [ %295, %306 ], [ %318, %312 ], [ %310, %308 ], [ %327, %332 ]
  %343 = icmp eq ptr %341, null
  %344 = icmp eq ptr %339, %277
  %345 = select i1 %343, i1 true, i1 %344
  %346 = select i1 %345, ptr %339, ptr %341
  %347 = select i1 %345, i32 %340, i32 %342
  %348 = ptrtoint ptr %346 to i64
  %349 = ptrtoint ptr %276 to i64
  %350 = sub i64 %348, %349
  %351 = trunc i64 %350 to i32
  br label %633

352:                                              ; preds = %112
  %353 = icmp eq i32 %117, %122
  br i1 %353, label %633, label %354

354:                                              ; preds = %352
  %355 = icmp sgt i32 %117, %122
  br i1 %355, label %356, label %633

356:                                              ; preds = %354
  %357 = xor i32 %122, -1
  %358 = add i32 %117, %357
  %359 = zext i32 %358 to i64
  %360 = add nuw nsw i64 %359, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %126, i8 32, i64 %360, i1 false), !tbaa !398
  %361 = getelementptr i8, ptr %126, i64 1
  %362 = getelementptr i8, ptr %361, i64 %359
  br label %633

363:                                              ; preds = %112
  %364 = icmp eq i32 %117, %122
  br i1 %364, label %633, label %365

365:                                              ; preds = %363
  %366 = sub nsw i32 %117, %122
  %367 = sdiv i32 %366, 2
  %368 = sub nsw i32 %117, %367
  %369 = icmp sgt i32 %366, 1
  br i1 %369, label %370, label %633

370:                                              ; preds = %365
  %371 = add nsw i32 %367, -1
  %372 = zext i32 %371 to i64
  %373 = add nuw nsw i64 %372, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %126, i8 32, i64 %373, i1 false), !tbaa !398
  %374 = getelementptr i8, ptr %126, i64 1
  %375 = getelementptr i8, ptr %374, i64 %372
  br label %633

376:                                              ; preds = %112
  %377 = sext i32 %119 to i64
  store i64 %377, ptr %2, align 8, !tbaa !509
  br label %471

378:                                              ; preds = %112
  %379 = icmp eq ptr %124, @PL_sv_no
  br i1 %379, label %411, label %380

380:                                              ; preds = %378
  %381 = and i8 %114, 1
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %392, label %383

383:                                              ; preds = %380, %383
  %384 = phi ptr [ %391, %383 ], [ %115, %380 ]
  %385 = load i8, ptr %384, align 1, !tbaa !398
  %386 = zext i8 %385 to i64
  %387 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %386
  %388 = load i32, ptr %387, align 4, !tbaa !430
  %389 = and i32 %388, 17408
  %390 = icmp eq i32 %389, 17408
  %391 = getelementptr inbounds i8, ptr %384, i64 1
  br i1 %390, label %383, label %392, !llvm.loop !530

392:                                              ; preds = %383, %380
  %393 = phi ptr [ %115, %380 ], [ %384, %383 ]
  %394 = getelementptr inbounds %struct.sv, ptr %124, i64 0, i32 2
  %395 = load i32, ptr %394, align 4, !tbaa !452
  %396 = and i32 %395, 16384
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %399, label %398

398:                                              ; preds = %392
  call void @Perl_sv_chop(ptr noundef nonnull %124, ptr noundef %393) #21
  br label %405

399:                                              ; preds = %392
  %400 = load i64, ptr %1, align 8, !tbaa !509
  %401 = ptrtoint ptr %393 to i64
  %402 = ptrtoint ptr %123 to i64
  %403 = sub i64 %402, %401
  %404 = add i64 %403, %400
  call void @Perl_sv_setpvn(ptr noundef nonnull %124, ptr noundef %393, i64 noundef %404) #21
  br label %405

405:                                              ; preds = %398, %399
  %406 = load i32, ptr %394, align 4, !tbaa !452
  %407 = and i32 %406, 4194304
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %633, label %409

409:                                              ; preds = %405
  %410 = call i32 @Perl_mg_set(ptr noundef nonnull %124) #21
  br label %633

411:                                              ; preds = %378, %112
  br label %412

412:                                              ; preds = %112, %411
  %413 = phi i8 [ %114, %112 ], [ 0, %411 ]
  %414 = icmp eq i32 %130, 17
  %415 = getelementptr inbounds %struct.sv, ptr %124, i64 0, i32 2
  %416 = load i32, ptr %415, align 4, !tbaa !452
  %417 = and i32 %416, 2098176
  %418 = icmp eq i32 %417, 1024
  br i1 %418, label %419, label %425

419:                                              ; preds = %412
  %420 = load ptr, ptr %124, align 8, !tbaa !487
  %421 = getelementptr inbounds %struct.xpv, ptr %420, i64 0, i32 2
  %422 = load i64, ptr %421, align 8, !tbaa !458
  store i64 %422, ptr %1, align 8, !tbaa !509
  %423 = getelementptr inbounds %struct.sv, ptr %124, i64 0, i32 3
  %424 = load ptr, ptr %423, align 8, !tbaa !398
  br label %429

425:                                              ; preds = %412
  %426 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %124, ptr noundef nonnull %1, i32 noundef 34) #21
  %427 = load i64, ptr %1, align 8, !tbaa !509
  %428 = load i32, ptr %415, align 4, !tbaa !452
  br label %429

429:                                              ; preds = %425, %419
  %430 = phi i32 [ %428, %425 ], [ %416, %419 ]
  %431 = phi i64 [ %427, %425 ], [ %422, %419 ]
  %432 = phi ptr [ %426, %425 ], [ %424, %419 ]
  %433 = getelementptr inbounds i8, ptr %432, i64 %431
  %434 = and i32 %430, 536870912
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %442, label %436

436:                                              ; preds = %429
  %437 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %438 = getelementptr inbounds %struct.cop, ptr %437, i64 0, i32 10
  %439 = load i32, ptr %438, align 8, !tbaa !482
  %440 = and i32 %439, 8
  %441 = icmp eq i32 %440, 0
  br label %442

442:                                              ; preds = %436, %429
  %443 = phi i1 [ false, %429 ], [ %441, %436 ]
  %444 = zext i1 %443 to i8
  %445 = icmp eq i64 %431, 0
  br i1 %445, label %633, label %446

446:                                              ; preds = %442
  store i64 %431, ptr %2, align 8, !tbaa !509
  %447 = icmp sgt i64 %431, 0
  br i1 %447, label %448, label %471

448:                                              ; preds = %446, %467
  %449 = phi ptr [ %452, %467 ], [ %432, %446 ]
  %450 = phi i32 [ %469, %467 ], [ %113, %446 ]
  %451 = phi i64 [ %468, %467 ], [ %431, %446 ]
  %452 = getelementptr inbounds i8, ptr %449, i64 1
  %453 = load i8, ptr %449, align 1, !tbaa !398
  %454 = icmp eq i8 %453, 10
  br i1 %454, label %455, label %467

455:                                              ; preds = %448
  br i1 %414, label %456, label %461

456:                                              ; preds = %455
  %457 = ptrtoint ptr %452 to i64
  %458 = ptrtoint ptr %432 to i64
  %459 = xor i64 %458, -1
  %460 = add i64 %457, %459
  store i64 %460, ptr %2, align 8, !tbaa !509
  br label %471

461:                                              ; preds = %455
  %462 = icmp eq ptr %452, %433
  br i1 %462, label %463, label %465

463:                                              ; preds = %461
  %464 = add i64 %451, -1
  store i64 %464, ptr %2, align 8, !tbaa !509
  br label %467

465:                                              ; preds = %461
  %466 = add nsw i32 %450, 1
  br label %467

467:                                              ; preds = %465, %463, %448
  %468 = phi i64 [ %464, %463 ], [ %451, %465 ], [ %451, %448 ]
  %469 = phi i32 [ %450, %463 ], [ %466, %465 ], [ %450, %448 ]
  %470 = icmp ult ptr %452, %433
  br i1 %470, label %448, label %471, !llvm.loop !531

471:                                              ; preds = %467, %446, %456, %376, %162
  %472 = phi i32 [ %113, %376 ], [ %113, %162 ], [ %450, %456 ], [ %113, %446 ], [ %469, %467 ]
  %473 = phi i8 [ %114, %376 ], [ %114, %162 ], [ %413, %456 ], [ %413, %446 ], [ %413, %467 ]
  %474 = phi ptr [ %115, %376 ], [ %115, %162 ], [ %452, %456 ], [ %433, %446 ], [ %433, %467 ]
  %475 = phi i8 [ %118, %376 ], [ %118, %162 ], [ 1, %456 ], [ 1, %446 ], [ 1, %467 ]
  %476 = phi i8 [ %120, %376 ], [ %164, %162 ], [ %444, %456 ], [ %444, %446 ], [ %444, %467 ]
  %477 = phi ptr [ %123, %376 ], [ %125, %162 ], [ %432, %456 ], [ %432, %446 ], [ %432, %467 ]
  %478 = phi i1 [ false, %376 ], [ false, %162 ], [ true, %456 ], [ true, %446 ], [ true, %467 ]
  %479 = phi i1 [ false, %376 ], [ true, %162 ], [ false, %456 ], [ false, %446 ], [ false, %467 ]
  %480 = phi ptr [ %123, %376 ], [ %123, %162 ], [ %432, %456 ], [ %432, %446 ], [ %432, %467 ]
  %481 = phi ptr [ %125, %376 ], [ %143, %162 ], [ %125, %456 ], [ %125, %446 ], [ %125, %467 ]
  %482 = phi ptr [ %129, %376 ], [ %140, %162 ], [ %129, %456 ], [ %129, %446 ], [ %129, %467 ]
  %483 = load ptr, ptr @PL_formtarget, align 8, !tbaa !385
  %484 = getelementptr inbounds %struct.sv, ptr %483, i64 0, i32 3
  %485 = load ptr, ptr %484, align 8, !tbaa !398
  %486 = ptrtoint ptr %126 to i64
  %487 = ptrtoint ptr %485 to i64
  %488 = sub i64 %486, %487
  %489 = load ptr, ptr %483, align 8, !tbaa !487
  %490 = getelementptr inbounds %struct.xpv, ptr %489, i64 0, i32 2
  store i64 %488, ptr %490, align 8, !tbaa !458
  %491 = and i8 %121, 1
  %492 = icmp ne i8 %491, 0
  %493 = and i8 %476, 1
  %494 = icmp eq i8 %493, 0
  %495 = select i1 %492, i1 %494, i1 false
  br i1 %495, label %496, label %499

496:                                              ; preds = %471
  %497 = call ptr @Perl_bytes_to_utf8(ptr noundef %477, ptr noundef nonnull %2) #21
  %498 = load ptr, ptr @PL_formtarget, align 8, !tbaa !385
  br label %523

499:                                              ; preds = %471
  br i1 %494, label %523, label %500

500:                                              ; preds = %499
  br i1 %492, label %523, label %501

501:                                              ; preds = %500
  %502 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef nonnull %483, i32 noundef 0, i64 noundef 0) #21
  %503 = load ptr, ptr @PL_formtarget, align 8, !tbaa !385
  %504 = getelementptr inbounds %struct.sv, ptr %503, i64 0, i32 3
  %505 = load ptr, ptr %504, align 8, !tbaa !398
  %506 = icmp eq i64 %116, 0
  br i1 %506, label %518, label %507

507:                                              ; preds = %501, %507
  %508 = phi ptr [ %516, %507 ], [ %505, %501 ]
  %509 = phi i64 [ %510, %507 ], [ %116, %501 ]
  %510 = add i64 %509, -1
  %511 = load i8, ptr %508, align 1, !tbaa !398
  %512 = zext i8 %511 to i64
  %513 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %512
  %514 = load i8, ptr %513, align 1, !tbaa !398
  %515 = zext i8 %514 to i64
  %516 = getelementptr inbounds i8, ptr %508, i64 %515
  %517 = icmp eq i64 %510, 0
  br i1 %517, label %518, label %507, !llvm.loop !532

518:                                              ; preds = %507, %501
  %519 = phi ptr [ %505, %501 ], [ %516, %507 ]
  %520 = ptrtoint ptr %519 to i64
  %521 = ptrtoint ptr %505 to i64
  %522 = sub i64 %520, %521
  br label %523

523:                                              ; preds = %499, %500, %518, %496
  %524 = phi ptr [ %483, %500 ], [ %503, %518 ], [ %483, %499 ], [ %498, %496 ]
  %525 = phi i64 [ %116, %500 ], [ %522, %518 ], [ %116, %499 ], [ %116, %496 ]
  %526 = phi i8 [ %121, %500 ], [ 1, %518 ], [ %121, %499 ], [ %121, %496 ]
  %527 = phi ptr [ %477, %500 ], [ %477, %518 ], [ %477, %499 ], [ %497, %496 ]
  %528 = phi ptr [ null, %500 ], [ null, %518 ], [ null, %499 ], [ %497, %496 ]
  %529 = phi i64 [ 0, %500 ], [ %73, %518 ], [ 0, %499 ], [ 0, %496 ]
  %530 = load i64, ptr %2, align 8
  %531 = add i64 %530, %73
  %532 = select i1 %478, i64 %531, i64 %529
  %533 = icmp eq i64 %532, 0
  br i1 %533, label %558, label %534

534:                                              ; preds = %523
  %535 = getelementptr inbounds %struct.sv, ptr %524, i64 0, i32 2
  %536 = load i32, ptr %535, align 4, !tbaa !452
  %537 = and i32 %536, 268435456
  %538 = icmp eq i32 %537, 0
  %539 = load ptr, ptr %524, align 8, !tbaa !487
  br i1 %538, label %545, label %540

540:                                              ; preds = %534
  %541 = getelementptr inbounds %struct.xpv, ptr %539, i64 0, i32 2
  %542 = load i64, ptr %541, align 8, !tbaa !458
  %543 = add i64 %532, 1
  %544 = add i64 %543, %542
  br label %553

545:                                              ; preds = %534
  %546 = getelementptr inbounds %struct.xpv, ptr %539, i64 0, i32 3
  %547 = load i64, ptr %546, align 8, !tbaa !398
  %548 = getelementptr inbounds %struct.xpv, ptr %539, i64 0, i32 2
  %549 = load i64, ptr %548, align 8, !tbaa !458
  %550 = add i64 %532, 1
  %551 = add i64 %550, %549
  %552 = icmp ult i64 %547, %551
  br i1 %552, label %553, label %558

553:                                              ; preds = %540, %545
  %554 = phi i64 [ %544, %540 ], [ %551, %545 ]
  %555 = call ptr @Perl_sv_grow(ptr noundef nonnull %524, i64 noundef %554) #21
  %556 = load ptr, ptr @PL_formtarget, align 8, !tbaa !385
  %557 = load i64, ptr %2, align 8, !tbaa !509
  br label %558

558:                                              ; preds = %545, %553, %523
  %559 = phi i64 [ %530, %545 ], [ %557, %553 ], [ %530, %523 ]
  %560 = phi ptr [ %524, %545 ], [ %556, %553 ], [ %524, %523 ]
  %561 = getelementptr inbounds %struct.sv, ptr %560, i64 0, i32 3
  %562 = load ptr, ptr %561, align 8, !tbaa !398
  %563 = load ptr, ptr %560, align 8, !tbaa !487
  %564 = getelementptr inbounds %struct.xpv, ptr %563, i64 0, i32 2
  %565 = load i64, ptr %564, align 8, !tbaa !458
  %566 = getelementptr inbounds i8, ptr %562, i64 %565
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %566, ptr align 1 %527, i64 %559, i1 false)
  %567 = load i64, ptr %2, align 8, !tbaa !509
  br i1 %478, label %588, label %568

568:                                              ; preds = %558
  %569 = getelementptr inbounds i8, ptr %566, i64 %567
  %570 = icmp sgt i64 %567, 0
  br i1 %570, label %571, label %588

571:                                              ; preds = %568, %583
  %572 = phi ptr [ %584, %583 ], [ %566, %568 ]
  %573 = load i8, ptr %572, align 1, !tbaa !398
  br i1 %479, label %574, label %576

574:                                              ; preds = %571
  %575 = icmp eq i8 %573, 126
  br i1 %575, label %582, label %583

576:                                              ; preds = %571
  %577 = zext i8 %573 to i64
  %578 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %577
  %579 = load i32, ptr %578, align 4, !tbaa !430
  %580 = and i32 %579, 24576
  %581 = icmp eq i32 %580, 24576
  br i1 %581, label %582, label %583

582:                                              ; preds = %576, %574
  store i8 32, ptr %572, align 1, !tbaa !398
  br label %583

583:                                              ; preds = %582, %576, %574
  %584 = getelementptr inbounds i8, ptr %572, i64 1
  %585 = icmp ult ptr %584, %569
  br i1 %585, label %571, label %586, !llvm.loop !533

586:                                              ; preds = %583
  %587 = load i64, ptr %2, align 8, !tbaa !509
  br label %588

588:                                              ; preds = %586, %568, %558
  %589 = phi i64 [ %587, %586 ], [ %567, %568 ], [ %567, %558 ]
  %590 = getelementptr inbounds i8, ptr %566, i64 %589
  %591 = load ptr, ptr @PL_formtarget, align 8, !tbaa !385
  %592 = load ptr, ptr %591, align 8, !tbaa !487
  %593 = getelementptr inbounds %struct.xpv, ptr %592, i64 0, i32 2
  %594 = load i64, ptr %593, align 8, !tbaa !458
  %595 = add i64 %594, %589
  store i64 %595, ptr %593, align 8, !tbaa !458
  %596 = icmp eq ptr %528, null
  br i1 %596, label %633, label %597

597:                                              ; preds = %588
  call void @Perl_safesysfree(ptr noundef nonnull %528) #21
  br label %633

598:                                              ; preds = %112
  %599 = load i32, ptr %129, align 4, !tbaa !430
  %600 = and i32 %599, 536870912
  %601 = icmp eq i32 %600, 0
  %602 = select i1 %601, ptr @.str.3, ptr @.str.2
  br label %608

603:                                              ; preds = %112
  %604 = load i32, ptr %129, align 4, !tbaa !430
  %605 = and i32 %604, 536870912
  %606 = icmp eq i32 %605, 0
  %607 = select i1 %606, ptr @.str.5, ptr @.str.4
  br label %608

608:                                              ; preds = %603, %598
  %609 = phi ptr [ %607, %603 ], [ %602, %598 ]
  %610 = phi i32 [ %604, %603 ], [ %599, %598 ]
  %611 = getelementptr inbounds i32, ptr %127, i64 2
  %612 = and i32 %610, 1073741824
  %613 = icmp eq i32 %612, 0
  %614 = getelementptr inbounds %struct.sv, ptr %124, i64 0, i32 2
  %615 = load i32, ptr %614, align 4, !tbaa !452
  br i1 %613, label %650, label %616

616:                                              ; preds = %608
  %617 = and i32 %615, 65280
  %618 = icmp ne i32 %617, 0
  %619 = and i32 %615, 255
  %620 = icmp eq i32 %619, 8
  %621 = or i1 %618, %620
  %622 = and i32 %615, 16777471
  %623 = icmp eq i32 %622, 16777226
  %624 = or i1 %623, %621
  br i1 %624, label %650, label %625

625:                                              ; preds = %616
  %626 = icmp eq i32 %117, 0
  br i1 %626, label %633, label %627

627:                                              ; preds = %625
  %628 = zext i32 %117 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %126, i8 32, i64 %628, i1 false), !tbaa !398
  %629 = add i32 %117, -1
  %630 = zext i32 %629 to i64
  %631 = getelementptr i8, ptr %126, i64 1
  %632 = getelementptr i8, ptr %631, i64 %630
  br label %633

633:                                              ; preds = %627, %664, %370, %356, %625, %662, %365, %354, %442, %729, %764, %588, %597, %409, %405, %707, %704, %363, %352, %180, %187, %192, %112, %698, %670, %337, %250, %165, %131
  %634 = phi i32 [ %113, %112 ], [ %113, %704 ], [ %712, %707 ], [ %113, %698 ], [ %113, %670 ], [ %113, %363 ], [ %113, %352 ], [ %113, %337 ], [ %113, %250 ], [ %113, %192 ], [ %113, %187 ], [ %113, %180 ], [ %113, %165 ], [ %138, %131 ], [ %113, %405 ], [ %113, %409 ], [ %472, %597 ], [ %472, %588 ], [ %113, %764 ], [ %113, %729 ], [ %113, %442 ], [ %113, %354 ], [ %113, %365 ], [ %113, %662 ], [ %113, %625 ], [ %113, %356 ], [ %113, %370 ], [ %113, %664 ], [ %113, %627 ]
  %635 = phi i8 [ %114, %112 ], [ %114, %704 ], [ %114, %707 ], [ %114, %698 ], [ %114, %670 ], [ %114, %363 ], [ %114, %352 ], [ %114, %337 ], [ %114, %250 ], [ %114, %192 ], [ %114, %187 ], [ %114, %180 ], [ %114, %165 ], [ %114, %131 ], [ %114, %405 ], [ %114, %409 ], [ %473, %597 ], [ %473, %588 ], [ %114, %764 ], [ %114, %729 ], [ %413, %442 ], [ %114, %354 ], [ %114, %365 ], [ %114, %662 ], [ %114, %625 ], [ %114, %356 ], [ %114, %370 ], [ %114, %664 ], [ %114, %627 ]
  %636 = phi ptr [ %115, %112 ], [ %115, %704 ], [ %115, %707 ], [ %115, %698 ], [ %115, %670 ], [ %115, %363 ], [ %115, %352 ], [ %346, %337 ], [ %253, %250 ], [ %115, %192 ], [ %115, %187 ], [ %115, %180 ], [ %115, %165 ], [ %115, %131 ], [ %115, %405 ], [ %115, %409 ], [ %474, %597 ], [ %474, %588 ], [ %115, %764 ], [ %115, %729 ], [ %433, %442 ], [ %115, %354 ], [ %115, %365 ], [ %115, %662 ], [ %115, %625 ], [ %115, %356 ], [ %115, %370 ], [ %115, %664 ], [ %115, %627 ]
  %637 = phi i64 [ %116, %112 ], [ %116, %704 ], [ %116, %707 ], [ %116, %698 ], [ %116, %670 ], [ %116, %363 ], [ %116, %352 ], [ %116, %337 ], [ %116, %250 ], [ %116, %192 ], [ %116, %187 ], [ %116, %180 ], [ %116, %165 ], [ %137, %131 ], [ %116, %405 ], [ %116, %409 ], [ %525, %597 ], [ %525, %588 ], [ %116, %764 ], [ %116, %729 ], [ %116, %442 ], [ %116, %354 ], [ %116, %365 ], [ %116, %662 ], [ %116, %625 ], [ %116, %356 ], [ %116, %370 ], [ %116, %664 ], [ %116, %627 ]
  %638 = phi i32 [ %117, %112 ], [ %117, %704 ], [ %117, %707 ], [ %117, %698 ], [ %117, %670 ], [ %117, %363 ], [ %117, %352 ], [ %117, %337 ], [ %117, %250 ], [ %172, %192 ], [ %172, %187 ], [ %172, %180 ], [ %117, %165 ], [ %117, %131 ], [ %117, %405 ], [ %117, %409 ], [ %117, %597 ], [ %117, %588 ], [ %744, %764 ], [ %117, %729 ], [ %117, %442 ], [ %122, %354 ], [ %368, %365 ], [ 0, %662 ], [ 0, %625 ], [ %122, %356 ], [ %368, %370 ], [ %117, %664 ], [ %117, %627 ]
  %639 = phi i8 [ %118, %112 ], [ %118, %704 ], [ %118, %707 ], [ %118, %698 ], [ 1, %670 ], [ %118, %363 ], [ %118, %352 ], [ %338, %337 ], [ %251, %250 ], [ %118, %192 ], [ %118, %187 ], [ %118, %180 ], [ %118, %165 ], [ 0, %131 ], [ %118, %405 ], [ %118, %409 ], [ %475, %597 ], [ %475, %588 ], [ %118, %764 ], [ %118, %729 ], [ %118, %442 ], [ %118, %354 ], [ %118, %365 ], [ 1, %662 ], [ %118, %625 ], [ %118, %356 ], [ %118, %370 ], [ 1, %664 ], [ %118, %627 ]
  %640 = phi i32 [ %119, %112 ], [ %119, %704 ], [ %119, %707 ], [ %119, %698 ], [ %119, %670 ], [ %119, %363 ], [ %119, %352 ], [ %351, %337 ], [ %257, %250 ], [ %119, %192 ], [ %119, %187 ], [ %119, %180 ], [ %119, %165 ], [ %119, %131 ], [ %119, %405 ], [ %119, %409 ], [ %119, %597 ], [ %119, %588 ], [ %119, %764 ], [ %119, %729 ], [ %119, %442 ], [ %119, %354 ], [ %119, %365 ], [ %119, %662 ], [ %119, %625 ], [ %119, %356 ], [ %119, %370 ], [ %119, %664 ], [ %119, %627 ]
  %641 = phi i8 [ %120, %112 ], [ %120, %704 ], [ %120, %707 ], [ %120, %698 ], [ %120, %670 ], [ %120, %363 ], [ %120, %352 ], [ %288, %337 ], [ %224, %250 ], [ %120, %192 ], [ %120, %187 ], [ %120, %180 ], [ %120, %165 ], [ %120, %131 ], [ %120, %405 ], [ %120, %409 ], [ %476, %597 ], [ %476, %588 ], [ %120, %764 ], [ %120, %729 ], [ %444, %442 ], [ %120, %354 ], [ %120, %365 ], [ %120, %662 ], [ %120, %625 ], [ %120, %356 ], [ %120, %370 ], [ %120, %664 ], [ %120, %627 ]
  %642 = phi i8 [ %121, %112 ], [ %121, %704 ], [ %121, %707 ], [ %121, %698 ], [ %121, %670 ], [ %121, %363 ], [ %121, %352 ], [ %121, %337 ], [ %121, %250 ], [ %121, %192 ], [ %121, %187 ], [ %121, %180 ], [ %121, %165 ], [ %121, %131 ], [ %121, %405 ], [ %121, %409 ], [ %526, %597 ], [ %526, %588 ], [ %121, %764 ], [ %121, %729 ], [ %121, %442 ], [ %121, %354 ], [ %121, %365 ], [ %121, %662 ], [ %121, %625 ], [ %121, %356 ], [ %121, %370 ], [ %121, %664 ], [ %121, %627 ]
  %643 = phi i32 [ %122, %112 ], [ %122, %704 ], [ %122, %707 ], [ %122, %698 ], [ %122, %670 ], [ %117, %363 ], [ %122, %352 ], [ %347, %337 ], [ %252, %250 ], [ %122, %192 ], [ %122, %187 ], [ %122, %180 ], [ %122, %165 ], [ %122, %131 ], [ %122, %405 ], [ %122, %409 ], [ %122, %597 ], [ %122, %588 ], [ %122, %764 ], [ %122, %729 ], [ %122, %442 ], [ %122, %354 ], [ %122, %365 ], [ %122, %662 ], [ %122, %625 ], [ %122, %356 ], [ %122, %370 ], [ %122, %664 ], [ %122, %627 ]
  %644 = phi ptr [ %123, %112 ], [ %123, %704 ], [ %123, %707 ], [ %123, %698 ], [ %123, %670 ], [ %123, %363 ], [ %123, %352 ], [ %276, %337 ], [ %212, %250 ], [ %123, %192 ], [ %123, %187 ], [ %123, %180 ], [ %123, %165 ], [ %123, %131 ], [ %123, %405 ], [ %123, %409 ], [ %480, %597 ], [ %480, %588 ], [ %123, %764 ], [ %123, %729 ], [ %432, %442 ], [ %123, %354 ], [ %123, %365 ], [ %123, %662 ], [ %123, %625 ], [ %123, %356 ], [ %123, %370 ], [ %123, %664 ], [ %123, %627 ]
  %645 = phi ptr [ %124, %112 ], [ %124, %704 ], [ %124, %707 ], [ %124, %698 ], [ %124, %670 ], [ %124, %363 ], [ %124, %352 ], [ %124, %337 ], [ %124, %250 ], [ %181, %192 ], [ %181, %187 ], [ %181, %180 ], [ %124, %165 ], [ %124, %131 ], [ %124, %405 ], [ %124, %409 ], [ %124, %597 ], [ %124, %588 ], [ %124, %764 ], [ %124, %729 ], [ %124, %442 ], [ %124, %354 ], [ %124, %365 ], [ %124, %662 ], [ %124, %625 ], [ %124, %356 ], [ %124, %370 ], [ %124, %664 ], [ %124, %627 ]
  %646 = phi ptr [ %125, %112 ], [ %125, %704 ], [ %125, %707 ], [ %686, %698 ], [ %125, %670 ], [ %125, %363 ], [ %125, %352 ], [ %125, %337 ], [ %125, %250 ], [ %174, %192 ], [ %174, %187 ], [ %174, %180 ], [ %169, %165 ], [ %125, %131 ], [ %125, %405 ], [ %125, %409 ], [ %481, %597 ], [ %481, %588 ], [ %125, %764 ], [ %125, %729 ], [ %125, %442 ], [ %125, %354 ], [ %125, %365 ], [ %125, %662 ], [ %125, %625 ], [ %125, %356 ], [ %125, %370 ], [ %125, %664 ], [ %125, %627 ]
  %647 = phi ptr [ %126, %112 ], [ %126, %704 ], [ %711, %707 ], [ %699, %698 ], [ %684, %670 ], [ %126, %363 ], [ %126, %352 ], [ %126, %337 ], [ %126, %250 ], [ %126, %192 ], [ %126, %187 ], [ %126, %180 ], [ %126, %165 ], [ %126, %131 ], [ %126, %405 ], [ %126, %409 ], [ %590, %597 ], [ %590, %588 ], [ %745, %764 ], [ %126, %729 ], [ %126, %442 ], [ %126, %354 ], [ %126, %365 ], [ %126, %662 ], [ %126, %625 ], [ %362, %356 ], [ %375, %370 ], [ %669, %664 ], [ %632, %627 ]
  %648 = phi ptr [ %129, %112 ], [ %701, %704 ], [ %701, %707 ], [ %129, %698 ], [ %611, %670 ], [ %129, %363 ], [ %129, %352 ], [ %129, %337 ], [ %129, %250 ], [ %171, %192 ], [ %171, %187 ], [ %171, %180 ], [ %166, %165 ], [ %129, %131 ], [ %129, %405 ], [ %129, %409 ], [ %482, %597 ], [ %482, %588 ], [ %129, %764 ], [ %129, %729 ], [ %129, %442 ], [ %129, %354 ], [ %129, %365 ], [ %611, %662 ], [ %611, %625 ], [ %129, %356 ], [ %129, %370 ], [ %611, %664 ], [ %611, %627 ]
  %649 = phi ptr [ %128, %112 ], [ %128, %704 ], [ %128, %707 ], [ %128, %698 ], [ %128, %670 ], [ %128, %363 ], [ %128, %352 ], [ %128, %337 ], [ %128, %250 ], [ %182, %192 ], [ %182, %187 ], [ %182, %180 ], [ %128, %165 ], [ %128, %131 ], [ %128, %405 ], [ %128, %409 ], [ %128, %597 ], [ %128, %588 ], [ %128, %764 ], [ %128, %729 ], [ %128, %442 ], [ %128, %354 ], [ %128, %365 ], [ %128, %662 ], [ %128, %625 ], [ %128, %356 ], [ %128, %370 ], [ %128, %664 ], [ %128, %627 ]
  br label %112

650:                                              ; preds = %608, %616
  %651 = and i32 %615, 2097664
  %652 = icmp eq i32 %651, 512
  br i1 %652, label %653, label %657

653:                                              ; preds = %650
  %654 = load ptr, ptr %124, align 8, !tbaa !487
  %655 = getelementptr inbounds %struct.xpvnv, ptr %654, i64 0, i32 5
  %656 = load double, ptr %655, align 8, !tbaa !398
  br label %659

657:                                              ; preds = %650
  %658 = call double @Perl_sv_2nv_flags(ptr noundef nonnull %124, i32 noundef 2) #21
  br label %659

659:                                              ; preds = %657, %653
  %660 = phi double [ %656, %653 ], [ %658, %657 ]
  %661 = call fastcc zeroext i1 @S_num_overflow(double noundef %660, i32 noundef %117, i32 noundef %610) #22
  br i1 %661, label %662, label %670

662:                                              ; preds = %659
  %663 = icmp eq i32 %117, 0
  br i1 %663, label %633, label %664

664:                                              ; preds = %662
  %665 = zext i32 %117 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %126, i8 35, i64 %665, i1 false), !tbaa !398
  %666 = add i32 %117, -1
  %667 = zext i32 %666 to i64
  %668 = getelementptr i8, ptr %126, i64 1
  %669 = getelementptr i8, ptr %668, i64 %667
  br label %633

670:                                              ; preds = %659
  %671 = load ptr, ptr @PL_formtarget, align 8, !tbaa !385
  %672 = load ptr, ptr %671, align 8, !tbaa !487
  %673 = getelementptr inbounds %struct.xpv, ptr %672, i64 0, i32 3
  %674 = load i64, ptr %673, align 8, !tbaa !398
  %675 = getelementptr inbounds %struct.sv, ptr %671, i64 0, i32 3
  %676 = load ptr, ptr %675, align 8, !tbaa !398
  %677 = ptrtoint ptr %126 to i64
  %678 = ptrtoint ptr %676 to i64
  %679 = sub i64 %674, %677
  %680 = add i64 %679, %678
  %681 = and i32 %610, -1610612737
  %682 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef %126, i64 noundef %680, ptr noundef nonnull %609, i32 noundef %117, i32 noundef %681, double noundef %660) #21
  %683 = sext i32 %117 to i64
  %684 = getelementptr inbounds i8, ptr %126, i64 %683
  br label %633

685:                                              ; preds = %112
  %686 = getelementptr inbounds i8, ptr %125, i64 1
  %687 = load ptr, ptr @PL_formtarget, align 8, !tbaa !385
  %688 = getelementptr inbounds %struct.sv, ptr %687, i64 0, i32 3
  %689 = load ptr, ptr %688, align 8, !tbaa !398
  %690 = getelementptr inbounds i8, ptr %689, i64 %116
  br label %691

691:                                              ; preds = %694, %685
  %692 = phi ptr [ %126, %685 ], [ %695, %694 ]
  %693 = icmp ugt ptr %692, %690
  br i1 %693, label %694, label %698

694:                                              ; preds = %691
  %695 = getelementptr inbounds i8, ptr %692, i64 -1
  %696 = load i8, ptr %695, align 1, !tbaa !398
  %697 = icmp eq i8 %696, 32
  br i1 %697, label %691, label %698, !llvm.loop !534

698:                                              ; preds = %691, %694
  %699 = getelementptr inbounds i8, ptr %692, i64 1
  store i8 10, ptr %692, align 1, !tbaa !398
  br label %633

700:                                              ; preds = %112
  %701 = getelementptr inbounds i32, ptr %127, i64 2
  %702 = and i8 %118, 1
  %703 = icmp eq i8 %702, 0
  br i1 %703, label %707, label %704

704:                                              ; preds = %700
  %705 = load i32, ptr %129, align 4, !tbaa !430
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %633, label %768

707:                                              ; preds = %700
  %708 = load ptr, ptr @PL_formtarget, align 8, !tbaa !385
  %709 = getelementptr inbounds %struct.sv, ptr %708, i64 0, i32 3
  %710 = load ptr, ptr %709, align 8, !tbaa !398
  %711 = getelementptr inbounds i8, ptr %710, i64 %116
  %712 = add nsw i32 %113, -1
  br label %633

713:                                              ; preds = %112
  %714 = load i64, ptr %1, align 8, !tbaa !509
  %715 = getelementptr inbounds i8, ptr %123, i64 %714
  %716 = and i8 %114, 1
  %717 = icmp eq i8 %716, 0
  br i1 %717, label %729, label %718

718:                                              ; preds = %713, %718
  %719 = phi ptr [ %728, %718 ], [ %115, %713 ]
  %720 = load i8, ptr %719, align 1, !tbaa !398
  %721 = zext i8 %720 to i64
  %722 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %721
  %723 = load i32, ptr %722, align 4, !tbaa !430
  %724 = and i32 %723, 17408
  %725 = icmp eq i32 %724, 17408
  %726 = icmp ult ptr %719, %715
  %727 = select i1 %725, i1 %726, i1 false
  %728 = getelementptr inbounds i8, ptr %719, i64 1
  br i1 %727, label %718, label %729, !llvm.loop !535

729:                                              ; preds = %718, %713
  %730 = phi ptr [ %115, %713 ], [ %719, %718 ]
  %731 = icmp ult ptr %730, %715
  br i1 %731, label %732, label %633

732:                                              ; preds = %729
  %733 = icmp eq i32 %117, %122
  br i1 %733, label %743, label %734

734:                                              ; preds = %732
  %735 = icmp sgt i32 %117, %122
  br i1 %735, label %736, label %743

736:                                              ; preds = %734
  %737 = xor i32 %122, -1
  %738 = add i32 %117, %737
  %739 = zext i32 %738 to i64
  %740 = add nuw nsw i64 %739, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %126, i8 32, i64 %740, i1 false), !tbaa !398
  %741 = getelementptr i8, ptr %126, i64 1
  %742 = getelementptr i8, ptr %741, i64 %739
  br label %743

743:                                              ; preds = %736, %734, %732
  %744 = phi i32 [ %117, %732 ], [ %122, %734 ], [ %122, %736 ]
  %745 = phi ptr [ %126, %732 ], [ %126, %734 ], [ %742, %736 ]
  %746 = getelementptr inbounds i8, ptr %745, i64 -3
  %747 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %746, ptr noundef nonnull dereferenceable(4) @.str.6, i64 noundef 3) #24
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %749, label %764

749:                                              ; preds = %743
  %750 = load ptr, ptr @PL_formtarget, align 8, !tbaa !385
  %751 = getelementptr inbounds %struct.sv, ptr %750, i64 0, i32 3
  %752 = load ptr, ptr %751, align 8, !tbaa !398
  br label %753

753:                                              ; preds = %749, %756
  %754 = phi ptr [ %757, %756 ], [ %746, %749 ]
  %755 = icmp ugt ptr %754, %752
  br i1 %755, label %756, label %764

756:                                              ; preds = %753
  %757 = getelementptr inbounds i8, ptr %754, i64 -1
  %758 = load i8, ptr %757, align 1, !tbaa !398
  %759 = zext i8 %758 to i64
  %760 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %759
  %761 = load i32, ptr %760, align 4, !tbaa !430
  %762 = and i32 %761, 17408
  %763 = icmp eq i32 %762, 17408
  br i1 %763, label %753, label %764, !llvm.loop !536

764:                                              ; preds = %756, %753, %743
  %765 = phi ptr [ %746, %743 ], [ %754, %753 ], [ %754, %756 ]
  %766 = getelementptr inbounds i8, ptr %765, i64 1
  store i8 46, ptr %765, align 1, !tbaa !398
  %767 = getelementptr inbounds i8, ptr %765, i64 2
  store i8 46, ptr %766, align 1, !tbaa !398
  store i8 46, ptr %767, align 1, !tbaa !398
  br label %633

768:                                              ; preds = %704, %112
  store i8 0, ptr %126, align 1, !tbaa !398
  %769 = load ptr, ptr @PL_formtarget, align 8, !tbaa !385
  %770 = getelementptr inbounds %struct.sv, ptr %769, i64 0, i32 3
  %771 = load ptr, ptr %770, align 8, !tbaa !398
  %772 = ptrtoint ptr %126 to i64
  %773 = ptrtoint ptr %771 to i64
  %774 = sub i64 %772, %773
  %775 = load ptr, ptr %769, align 8, !tbaa !487
  %776 = getelementptr inbounds %struct.xpv, ptr %775, i64 0, i32 2
  store i64 %774, ptr %776, align 8, !tbaa !458
  %777 = and i8 %121, 1
  %778 = icmp eq i8 %777, 0
  br i1 %778, label %783, label %779

779:                                              ; preds = %768
  %780 = getelementptr inbounds %struct.sv, ptr %769, i64 0, i32 2
  %781 = load i32, ptr %780, align 4, !tbaa !452
  %782 = or i32 %781, 536870912
  store i32 %782, ptr %780, align 4, !tbaa !452
  br label %783

783:                                              ; preds = %779, %768
  %784 = sext i32 %113 to i64
  %785 = getelementptr inbounds %struct.xpviv, ptr %775, i64 0, i32 4
  %786 = load i64, ptr %785, align 8, !tbaa !398
  %787 = add nsw i64 %786, %784
  store i64 %787, ptr %785, align 8, !tbaa !398
  %788 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %789 = getelementptr inbounds ptr, ptr %788, i64 %8
  %790 = load i32, ptr %127, align 4, !tbaa !430
  %791 = icmp eq i32 %790, 14
  br i1 %791, label %792, label %795

792:                                              ; preds = %783
  %793 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %794 = getelementptr inbounds %struct.listop, ptr %793, i64 0, i32 7
  br label %798

795:                                              ; preds = %783
  %796 = getelementptr inbounds ptr, ptr %789, i64 1
  store ptr @PL_sv_yes, ptr %796, align 8, !tbaa !385
  %797 = load ptr, ptr @PL_op, align 8, !tbaa !385
  br label %798

798:                                              ; preds = %795, %792
  %799 = phi ptr [ %789, %792 ], [ %796, %795 ]
  %800 = phi ptr [ %794, %792 ], [ %797, %795 ]
  store ptr %799, ptr @PL_stack_sp, align 8
  %801 = load ptr, ptr %800, align 8, !tbaa !385
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #23
  ret ptr %801
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_doparseform(ptr noundef %0) unnamed_addr #0 !prof !422 !PGOFuncName !537 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !452
  %5 = and i32 %4, 2098176
  %6 = icmp eq i32 %5, 1024
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !487
  %9 = getelementptr inbounds %struct.xpv, ptr %8, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !458
  store i64 %10, ptr %2, align 8, !tbaa !509
  %11 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !398
  br label %16

13:                                               ; preds = %1
  %14 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 2) #21
  %15 = load i64, ptr %2, align 8, !tbaa !509
  br label %16

16:                                               ; preds = %13, %7
  %17 = phi i64 [ %15, %13 ], [ %10, %7 ]
  %18 = phi ptr [ %14, %13 ], [ %12, %7 ]
  %19 = icmp eq i64 %17, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.109) #21
  br label %21

21:                                               ; preds = %20, %16
  %22 = load i32, ptr %3, align 4, !tbaa !452
  %23 = and i32 %22, 255
  %24 = icmp ugt i32 %23, 6
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  call void @Perl_sv_upgrade(ptr noundef nonnull %0, i32 noundef 7) #21
  br label %54

26:                                               ; preds = %21
  %27 = call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 102) #21
  %28 = icmp eq ptr %27, null
  br i1 %28, label %54, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.magic, ptr %27, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !527
  %32 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !452
  %34 = load i32, ptr %3, align 4, !tbaa !452
  %35 = xor i32 %34, %33
  %36 = and i32 %35, 536870912
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %29
  %39 = load i64, ptr %2, align 8, !tbaa !509
  %40 = load ptr, ptr %31, align 8, !tbaa !487
  %41 = getelementptr inbounds %struct.xpv, ptr %40, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !458
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !398
  %47 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !398
  %49 = call i32 @strncmp(ptr noundef %46, ptr noundef %48, i64 noundef %39) #24
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %432, label %51

51:                                               ; preds = %44, %38, %29
  %52 = getelementptr inbounds %struct.magic, ptr %27, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !526
  call void @Perl_safesysfree(ptr noundef %53) #21
  store ptr null, ptr %52, align 8, !tbaa !526
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %31) #22
  store ptr null, ptr %30, align 8, !tbaa !527
  br label %56

54:                                               ; preds = %25, %26
  %55 = call ptr @Perl_sv_magicext(ptr noundef nonnull %0, ptr noundef null, i32 noundef 102, ptr noundef nonnull getelementptr inbounds ([31 x %struct.mgvtbl], ptr @PL_magic_vtables, i64 0, i64 23), ptr noundef null, i32 noundef 0) #21
  br label %56

56:                                               ; preds = %51, %54
  %57 = phi ptr [ %55, %54 ], [ %27, %51 ]
  %58 = load i64, ptr %2, align 8, !tbaa !509
  %59 = load i32, ptr %3, align 4, !tbaa !452
  %60 = and i32 %59, 536870912
  %61 = call ptr @Perl_newSVpvn_flags(ptr noundef %18, i64 noundef %58, i32 noundef %60) #21
  %62 = getelementptr inbounds %struct.sv, ptr %61, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !452
  %64 = and i32 %63, 2098176
  %65 = icmp eq i32 %64, 1024
  br i1 %65, label %66, label %72

66:                                               ; preds = %56
  %67 = load ptr, ptr %61, align 8, !tbaa !487
  %68 = getelementptr inbounds %struct.xpv, ptr %67, i64 0, i32 2
  %69 = load i64, ptr %68, align 8, !tbaa !458
  store i64 %69, ptr %2, align 8, !tbaa !509
  %70 = getelementptr inbounds %struct.sv, ptr %61, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !398
  br label %75

72:                                               ; preds = %56
  %73 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %61, ptr noundef nonnull %2, i32 noundef 2) #21
  %74 = load i64, ptr %2, align 8, !tbaa !509
  br label %75

75:                                               ; preds = %72, %66
  %76 = phi i64 [ %74, %72 ], [ %69, %66 ]
  %77 = phi ptr [ %73, %72 ], [ %71, %66 ]
  %78 = getelementptr inbounds i8, ptr %77, i64 %76
  %79 = icmp slt i64 %76, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = call ptr @Perl_safesysmalloc(i64 noundef 48) #21
  br label %407

82:                                               ; preds = %75, %88
  %83 = phi ptr [ %90, %88 ], [ %77, %75 ]
  %84 = phi i32 [ %89, %88 ], [ 12, %75 ]
  %85 = load i8, ptr %83, align 1, !tbaa !398
  switch i8 %85, label %88 [
    i8 10, label %86
    i8 64, label %86
    i8 94, label %86
  ]

86:                                               ; preds = %82, %82, %82
  %87 = add nsw i32 %84, 10
  br label %88

88:                                               ; preds = %82, %86
  %89 = phi i32 [ %87, %86 ], [ %84, %82 ]
  %90 = getelementptr inbounds i8, ptr %83, i64 1
  %91 = icmp ugt ptr %90, %78
  br i1 %91, label %92, label %82, !llvm.loop !538

92:                                               ; preds = %88
  %93 = sext i32 %89 to i64
  %94 = shl nsw i64 %93, 2
  %95 = call ptr @Perl_safesysmalloc(i64 noundef %94) #21
  %96 = icmp eq i64 %76, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds i32, ptr %95, i64 1
  store i32 1, ptr %95, align 4, !tbaa !430
  br label %99

99:                                               ; preds = %92, %97
  %100 = phi ptr [ %77, %97 ], [ null, %92 ]
  %101 = phi ptr [ %95, %97 ], [ null, %92 ]
  %102 = phi ptr [ %98, %97 ], [ %95, %92 ]
  br label %103

103:                                              ; preds = %99, %200
  %104 = phi ptr [ %206, %200 ], [ %77, %99 ]
  %105 = phi ptr [ %205, %200 ], [ %100, %99 ]
  %106 = phi i8 [ %114, %200 ], [ 0, %99 ]
  %107 = phi i8 [ %204, %200 ], [ 0, %99 ]
  %108 = phi ptr [ %203, %200 ], [ %101, %99 ]
  %109 = phi ptr [ %202, %200 ], [ %102, %99 ]
  %110 = phi i8 [ %201, %200 ], [ 0, %99 ]
  br label %111

111:                                              ; preds = %103, %401
  %112 = phi ptr [ %104, %103 ], [ %405, %401 ]
  %113 = phi ptr [ %105, %103 ], [ %405, %401 ]
  %114 = phi i8 [ %106, %103 ], [ %404, %401 ]
  %115 = phi i8 [ %107, %103 ], [ %122, %401 ]
  %116 = phi ptr [ %109, %103 ], [ %403, %401 ]
  %117 = phi i8 [ %110, %103 ], [ %123, %401 ]
  %118 = phi i8 [ 0, %103 ], [ %402, %401 ]
  br label %119

119:                                              ; preds = %111, %139
  %120 = phi ptr [ %112, %111 ], [ %143, %139 ]
  %121 = phi i32 [ 0, %111 ], [ %144, %139 ]
  %122 = phi i8 [ %115, %111 ], [ %141, %139 ]
  %123 = phi i8 [ %117, %111 ], [ %140, %139 ]
  br label %124

124:                                              ; preds = %119, %129
  %125 = phi ptr [ %120, %119 ], [ %127, %129 ]
  %126 = phi i32 [ %121, %119 ], [ 0, %129 ]
  %127 = getelementptr inbounds i8, ptr %125, i64 1
  %128 = load i8, ptr %125, align 1, !tbaa !398
  switch i8 %128, label %129 [
    i8 126, label %131
    i8 32, label %139
    i8 9, label %139
    i8 0, label %146
    i8 10, label %148
    i8 64, label %208
    i8 94, label %208
  ]

129:                                              ; preds = %124, %146
  %130 = icmp ugt ptr %127, %78
  br i1 %130, label %407, label %124, !llvm.loop !539

131:                                              ; preds = %124
  %132 = load i8, ptr %127, align 1, !tbaa !398
  %133 = icmp eq i8 %132, 126
  %134 = getelementptr inbounds i8, ptr %125, i64 2
  %135 = select i1 %133, i8 1, i8 %123
  %136 = zext i1 %133 to i32
  %137 = add nsw i32 %126, %136
  %138 = select i1 %133, ptr %134, ptr %127
  br label %139

139:                                              ; preds = %124, %124, %131
  %140 = phi i8 [ %135, %131 ], [ %123, %124 ], [ %123, %124 ]
  %141 = phi i8 [ 1, %131 ], [ %122, %124 ], [ %122, %124 ]
  %142 = phi i32 [ %137, %131 ], [ %126, %124 ], [ %126, %124 ]
  %143 = phi ptr [ %138, %131 ], [ %127, %124 ], [ %127, %124 ]
  %144 = add nsw i32 %142, 1
  %145 = icmp ugt ptr %143, %78
  br i1 %145, label %407, label %119, !llvm.loop !539

146:                                              ; preds = %124
  %147 = icmp ult ptr %127, %78
  br i1 %147, label %129, label %148

148:                                              ; preds = %146, %124
  %149 = ptrtoint ptr %127 to i64
  %150 = ptrtoint ptr %113 to i64
  %151 = sub i64 %149, %150
  %152 = trunc i64 %151 to i32
  %153 = add nsw i32 %126, 1
  %154 = sub nsw i32 %152, %153
  %155 = icmp eq i32 %153, %152
  br i1 %155, label %165, label %156

156:                                              ; preds = %148
  %157 = and i8 %118, 1
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %156
  %160 = getelementptr inbounds i32, ptr %116, i64 1
  store i32 7, ptr %116, align 4, !tbaa !430
  br label %161

161:                                              ; preds = %159, %156
  %162 = phi ptr [ %160, %159 ], [ %116, %156 ]
  %163 = getelementptr inbounds i32, ptr %162, i64 1
  store i32 2, ptr %162, align 4, !tbaa !430
  %164 = getelementptr inbounds i32, ptr %162, i64 2
  store i32 %154, ptr %163, align 4, !tbaa !430
  br label %165

165:                                              ; preds = %161, %148
  %166 = phi ptr [ %164, %161 ], [ %116, %148 ]
  %167 = icmp ugt ptr %127, %78
  %168 = select i1 %167, i32 %153, i32 %126
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %165
  %171 = getelementptr inbounds i32, ptr %166, i64 1
  store i32 3, ptr %166, align 4, !tbaa !430
  %172 = getelementptr inbounds i32, ptr %166, i64 2
  store i32 %168, ptr %171, align 4, !tbaa !430
  br label %173

173:                                              ; preds = %170, %165
  %174 = phi ptr [ %172, %170 ], [ %166, %165 ]
  br i1 %167, label %177, label %175

175:                                              ; preds = %173
  %176 = getelementptr inbounds i32, ptr %174, i64 1
  store i32 13, ptr %174, align 4, !tbaa !430
  br label %177

177:                                              ; preds = %175, %173
  %178 = phi ptr [ %176, %175 ], [ %174, %173 ]
  %179 = and i8 %122, 1
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %193, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds i32, ptr %178, i64 1
  store i32 14, ptr %178, align 4, !tbaa !430
  %183 = and i8 %123, 1
  %184 = icmp eq i8 %183, 0
  %185 = ptrtoint ptr %182 to i64
  %186 = ptrtoint ptr %108 to i64
  %187 = sub i64 %185, %186
  %188 = lshr exact i64 %187, 2
  %189 = trunc i64 %188 to i32
  %190 = add i32 %189, 1
  %191 = select i1 %184, i32 0, i32 %190
  %192 = getelementptr inbounds i32, ptr %178, i64 2
  store i32 %191, ptr %182, align 4, !tbaa !430
  br label %193

193:                                              ; preds = %181, %177
  %194 = phi ptr [ %192, %181 ], [ %178, %177 ]
  %195 = icmp ult ptr %127, %78
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = getelementptr inbounds i32, ptr %194, i64 1
  store i32 1, ptr %194, align 4, !tbaa !430
  br label %200

198:                                              ; preds = %193
  %199 = getelementptr inbounds i8, ptr %125, i64 2
  br label %200

200:                                              ; preds = %198, %196
  %201 = phi i8 [ 0, %196 ], [ %123, %198 ]
  %202 = phi ptr [ %197, %196 ], [ %194, %198 ]
  %203 = phi ptr [ %194, %196 ], [ %108, %198 ]
  %204 = phi i8 [ 0, %196 ], [ %122, %198 ]
  %205 = phi ptr [ %127, %196 ], [ %113, %198 ]
  %206 = phi ptr [ %127, %196 ], [ %199, %198 ]
  %207 = icmp ugt ptr %206, %78
  br i1 %207, label %407, label %103, !llvm.loop !539

208:                                              ; preds = %124, %124
  %209 = icmp ne i8 %128, 94
  %210 = and i8 %118, 1
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %208
  %213 = getelementptr inbounds i32, ptr %116, i64 1
  store i32 7, ptr %116, align 4, !tbaa !430
  br label %214

214:                                              ; preds = %212, %208
  %215 = phi i8 [ 0, %212 ], [ %118, %208 ]
  %216 = phi ptr [ %213, %212 ], [ %116, %208 ]
  %217 = ptrtoint ptr %127 to i64
  %218 = ptrtoint ptr %113 to i64
  %219 = xor i64 %218, -1
  %220 = add i64 %217, %219
  %221 = trunc i64 %220 to i32
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %214
  %224 = getelementptr inbounds i32, ptr %216, i64 1
  store i32 2, ptr %216, align 4, !tbaa !430
  %225 = getelementptr inbounds i32, ptr %216, i64 2
  store i32 %221, ptr %224, align 4, !tbaa !430
  br label %226

226:                                              ; preds = %223, %214
  %227 = phi ptr [ %225, %223 ], [ %216, %214 ]
  %228 = getelementptr inbounds i32, ptr %227, i64 1
  store i32 4, ptr %227, align 4, !tbaa !430
  %229 = load i8, ptr %127, align 1, !tbaa !398
  switch i8 %229, label %380 [
    i8 42, label %230
    i8 35, label %241
    i8 46, label %237
    i8 48, label %278
    i8 62, label %319
    i8 124, label %324
    i8 60, label %329
  ]

230:                                              ; preds = %226
  %231 = getelementptr inbounds i8, ptr %125, i64 2
  %232 = getelementptr inbounds i32, ptr %227, i64 2
  store i32 2, ptr %228, align 4, !tbaa !430
  %233 = getelementptr inbounds i32, ptr %227, i64 3
  br i1 %209, label %236, label %234

234:                                              ; preds = %230
  store i32 17, ptr %232, align 4, !tbaa !430
  %235 = getelementptr inbounds i32, ptr %227, i64 4
  store i32 10, ptr %233, align 4, !tbaa !430
  br label %401

236:                                              ; preds = %230
  store i32 11, ptr %232, align 4, !tbaa !430
  br label %401

237:                                              ; preds = %226
  %238 = getelementptr inbounds i8, ptr %125, i64 2
  %239 = load i8, ptr %238, align 1, !tbaa !398
  %240 = icmp eq i8 %239, 35
  br i1 %240, label %241, label %341

241:                                              ; preds = %226, %237
  %242 = select i1 %209, i32 0, i32 1073741824
  br label %243

243:                                              ; preds = %246, %241
  %244 = phi i8 [ %229, %241 ], [ %248, %246 ]
  %245 = phi ptr [ %127, %241 ], [ %247, %246 ]
  switch i8 %244, label %263 [
    i8 35, label %246
    i8 46, label %249
  ]

246:                                              ; preds = %243
  %247 = getelementptr inbounds i8, ptr %245, i64 1
  %248 = load i8, ptr %247, align 1, !tbaa !398
  br label %243, !llvm.loop !540

249:                                              ; preds = %243
  %250 = getelementptr inbounds i8, ptr %245, i64 1
  br label %251

251:                                              ; preds = %251, %249
  %252 = phi ptr [ %250, %249 ], [ %255, %251 ]
  %253 = load i8, ptr %252, align 1, !tbaa !398
  %254 = icmp eq i8 %253, 35
  %255 = getelementptr inbounds i8, ptr %252, i64 1
  br i1 %254, label %251, label %256, !llvm.loop !541

256:                                              ; preds = %251
  %257 = ptrtoint ptr %252 to i64
  %258 = ptrtoint ptr %250 to i64
  %259 = sub i64 %257, %258
  %260 = trunc i64 %259 to i32
  %261 = add i32 %260, 536870912
  %262 = or i32 %261, %242
  br label %265

263:                                              ; preds = %243
  %264 = ptrtoint ptr %245 to i64
  br label %265

265:                                              ; preds = %263, %256
  %266 = phi i64 [ %264, %263 ], [ %257, %256 ]
  %267 = phi i32 [ %242, %263 ], [ %262, %256 ]
  %268 = phi ptr [ %245, %263 ], [ %252, %256 ]
  %269 = ptrtoint ptr %125 to i64
  %270 = sub i64 %266, %269
  %271 = trunc i64 %270 to i32
  %272 = getelementptr inbounds i32, ptr %227, i64 2
  store i32 %271, ptr %228, align 4, !tbaa !430
  %273 = getelementptr inbounds i32, ptr %227, i64 3
  store i32 12, ptr %272, align 4, !tbaa !430
  %274 = getelementptr inbounds i32, ptr %227, i64 4
  store i32 %267, ptr %273, align 4, !tbaa !430
  %275 = and i8 %114, 1
  %276 = zext i1 %209 to i8
  %277 = or i8 %275, %276
  br label %401

278:                                              ; preds = %226
  %279 = getelementptr inbounds i8, ptr %125, i64 2
  %280 = load i8, ptr %279, align 1, !tbaa !398
  %281 = icmp eq i8 %280, 35
  br i1 %281, label %282, label %380

282:                                              ; preds = %278
  %283 = select i1 %209, i32 0, i32 1073741824
  br label %284

284:                                              ; preds = %287, %282
  %285 = phi i8 [ %289, %287 ], [ 35, %282 ]
  %286 = phi ptr [ %288, %287 ], [ %279, %282 ]
  switch i8 %285, label %304 [
    i8 35, label %287
    i8 46, label %290
  ]

287:                                              ; preds = %284
  %288 = getelementptr inbounds i8, ptr %286, i64 1
  %289 = load i8, ptr %288, align 1, !tbaa !398
  br label %284, !llvm.loop !542

290:                                              ; preds = %284
  %291 = getelementptr inbounds i8, ptr %286, i64 1
  br label %292

292:                                              ; preds = %292, %290
  %293 = phi ptr [ %291, %290 ], [ %296, %292 ]
  %294 = load i8, ptr %293, align 1, !tbaa !398
  %295 = icmp eq i8 %294, 35
  %296 = getelementptr inbounds i8, ptr %293, i64 1
  br i1 %295, label %292, label %297, !llvm.loop !543

297:                                              ; preds = %292
  %298 = ptrtoint ptr %293 to i64
  %299 = ptrtoint ptr %291 to i64
  %300 = sub i64 %298, %299
  %301 = trunc i64 %300 to i32
  %302 = add i32 %301, 536870912
  %303 = or i32 %302, %283
  br label %306

304:                                              ; preds = %284
  %305 = ptrtoint ptr %286 to i64
  br label %306

306:                                              ; preds = %304, %297
  %307 = phi i64 [ %305, %304 ], [ %298, %297 ]
  %308 = phi i32 [ %283, %304 ], [ %303, %297 ]
  %309 = phi ptr [ %286, %304 ], [ %293, %297 ]
  %310 = ptrtoint ptr %125 to i64
  %311 = sub i64 %307, %310
  %312 = trunc i64 %311 to i32
  %313 = getelementptr inbounds i32, ptr %227, i64 2
  store i32 %312, ptr %228, align 4, !tbaa !430
  %314 = getelementptr inbounds i32, ptr %227, i64 3
  store i32 16, ptr %313, align 4, !tbaa !430
  %315 = getelementptr inbounds i32, ptr %227, i64 4
  store i32 %308, ptr %314, align 4, !tbaa !430
  %316 = and i8 %114, 1
  %317 = zext i1 %209 to i8
  %318 = or i8 %316, %317
  br label %401

319:                                              ; preds = %226, %319
  %320 = phi ptr [ %321, %319 ], [ %127, %226 ]
  %321 = getelementptr inbounds i8, ptr %320, i64 1
  %322 = load i8, ptr %321, align 1, !tbaa !398
  %323 = icmp eq i8 %322, 62
  br i1 %323, label %319, label %334, !llvm.loop !544

324:                                              ; preds = %226, %324
  %325 = phi ptr [ %326, %324 ], [ %127, %226 ]
  %326 = getelementptr inbounds i8, ptr %325, i64 1
  %327 = load i8, ptr %326, align 1, !tbaa !398
  %328 = icmp eq i8 %327, 124
  br i1 %328, label %324, label %334, !llvm.loop !545

329:                                              ; preds = %226, %329
  %330 = phi ptr [ %331, %329 ], [ %127, %226 ]
  %331 = getelementptr inbounds i8, ptr %330, i64 1
  %332 = load i8, ptr %331, align 1, !tbaa !398
  %333 = icmp eq i8 %332, 60
  br i1 %333, label %329, label %334, !llvm.loop !546

334:                                              ; preds = %329, %324, %319
  %335 = phi i8 [ %322, %319 ], [ %327, %324 ], [ %332, %329 ]
  %336 = phi i8 [ %215, %319 ], [ 1, %324 ], [ 1, %329 ]
  %337 = phi ptr [ %321, %319 ], [ %326, %324 ], [ %331, %329 ]
  %338 = phi i1 [ false, %319 ], [ false, %324 ], [ true, %329 ]
  %339 = phi i32 [ 7, %319 ], [ 8, %324 ], [ 0, %329 ]
  %340 = icmp eq i8 %335, 46
  br i1 %340, label %341, label %363

341:                                              ; preds = %237, %334
  %342 = phi i32 [ %339, %334 ], [ 0, %237 ]
  %343 = phi i1 [ %338, %334 ], [ true, %237 ]
  %344 = phi ptr [ %337, %334 ], [ %127, %237 ]
  %345 = phi i8 [ %336, %334 ], [ 1, %237 ]
  %346 = getelementptr inbounds i8, ptr %344, i64 1
  %347 = load i8, ptr %346, align 1, !tbaa !398
  %348 = icmp eq i8 %347, 46
  br i1 %348, label %349, label %363

349:                                              ; preds = %341
  %350 = getelementptr inbounds i8, ptr %344, i64 2
  %351 = load i8, ptr %350, align 1, !tbaa !398
  %352 = icmp eq i8 %351, 46
  %353 = getelementptr inbounds i8, ptr %344, i64 3
  %354 = select i1 %352, ptr %353, ptr %344
  %355 = ptrtoint ptr %354 to i64
  %356 = ptrtoint ptr %125 to i64
  %357 = sub i64 %355, %356
  %358 = trunc i64 %357 to i32
  %359 = getelementptr inbounds i32, ptr %227, i64 2
  store i32 %358, ptr %228, align 4, !tbaa !430
  %360 = select i1 %209, i32 5, i32 6
  %361 = getelementptr inbounds i32, ptr %227, i64 3
  store i32 %360, ptr %359, align 4, !tbaa !430
  %362 = getelementptr inbounds i32, ptr %227, i64 4
  br i1 %343, label %389, label %378

363:                                              ; preds = %341, %334
  %364 = phi i32 [ %342, %341 ], [ %339, %334 ]
  %365 = phi i1 [ %343, %341 ], [ %338, %334 ]
  %366 = phi ptr [ %344, %341 ], [ %337, %334 ]
  %367 = phi i8 [ %345, %341 ], [ %336, %334 ]
  %368 = ptrtoint ptr %366 to i64
  %369 = ptrtoint ptr %125 to i64
  %370 = sub i64 %368, %369
  %371 = trunc i64 %370 to i32
  %372 = getelementptr inbounds i32, ptr %227, i64 2
  store i32 %371, ptr %228, align 4, !tbaa !430
  %373 = select i1 %209, i32 5, i32 6
  %374 = getelementptr inbounds i32, ptr %227, i64 3
  store i32 %373, ptr %372, align 4, !tbaa !430
  br i1 %365, label %384, label %375

375:                                              ; preds = %363
  %376 = getelementptr inbounds i32, ptr %227, i64 4
  store i32 %364, ptr %374, align 4, !tbaa !430
  %377 = getelementptr inbounds i32, ptr %227, i64 5
  store i32 9, ptr %376, align 4, !tbaa !430
  br label %395

378:                                              ; preds = %349
  store i32 %342, ptr %361, align 4, !tbaa !430
  %379 = getelementptr inbounds i32, ptr %227, i64 5
  store i32 9, ptr %362, align 4, !tbaa !430
  br i1 %352, label %390, label %395

380:                                              ; preds = %226, %278
  %381 = getelementptr inbounds i32, ptr %227, i64 2
  store i32 1, ptr %228, align 4, !tbaa !430
  %382 = select i1 %209, i32 5, i32 6
  %383 = getelementptr inbounds i32, ptr %227, i64 3
  store i32 %382, ptr %381, align 4, !tbaa !430
  br label %384

384:                                              ; preds = %380, %363
  %385 = phi ptr [ %366, %363 ], [ %127, %380 ]
  %386 = phi i8 [ %367, %363 ], [ 1, %380 ]
  %387 = phi ptr [ %374, %363 ], [ %383, %380 ]
  %388 = getelementptr inbounds i32, ptr %227, i64 4
  store i32 9, ptr %387, align 4, !tbaa !430
  br label %395

389:                                              ; preds = %349
  store i32 9, ptr %361, align 4, !tbaa !430
  br i1 %352, label %390, label %395

390:                                              ; preds = %378, %389
  %391 = phi ptr [ %379, %378 ], [ %362, %389 ]
  %392 = phi i64 [ 4, %378 ], [ 3, %389 ]
  %393 = getelementptr inbounds i32, ptr %227, i64 %392
  %394 = getelementptr inbounds i32, ptr %393, i64 2
  store i32 15, ptr %391, align 4, !tbaa !430
  br label %395

395:                                              ; preds = %375, %378, %384, %390, %389
  %396 = phi i8 [ %345, %390 ], [ %345, %389 ], [ %386, %384 ], [ %345, %378 ], [ %367, %375 ]
  %397 = phi ptr [ %353, %390 ], [ %344, %389 ], [ %385, %384 ], [ %344, %378 ], [ %366, %375 ]
  %398 = phi ptr [ %394, %390 ], [ %362, %389 ], [ %388, %384 ], [ %379, %378 ], [ %377, %375 ]
  br i1 %209, label %401, label %399

399:                                              ; preds = %395
  %400 = getelementptr inbounds i32, ptr %398, i64 1
  store i32 10, ptr %398, align 4, !tbaa !430
  br label %401

401:                                              ; preds = %395, %399, %265, %306, %234, %236
  %402 = phi i8 [ %215, %234 ], [ %215, %236 ], [ %215, %265 ], [ %215, %306 ], [ %396, %399 ], [ %396, %395 ]
  %403 = phi ptr [ %235, %234 ], [ %233, %236 ], [ %274, %265 ], [ %315, %306 ], [ %400, %399 ], [ %398, %395 ]
  %404 = phi i8 [ %114, %234 ], [ %114, %236 ], [ %277, %265 ], [ %318, %306 ], [ %114, %399 ], [ %114, %395 ]
  %405 = phi ptr [ %231, %234 ], [ %231, %236 ], [ %268, %265 ], [ %309, %306 ], [ %397, %399 ], [ %397, %395 ]
  %406 = icmp ugt ptr %405, %78
  br i1 %406, label %407, label %111, !llvm.loop !539

407:                                              ; preds = %200, %401, %139, %129, %80
  %408 = phi ptr [ %81, %80 ], [ %95, %129 ], [ %95, %139 ], [ %95, %401 ], [ %95, %200 ]
  %409 = phi ptr [ %81, %80 ], [ %116, %129 ], [ %116, %139 ], [ %403, %401 ], [ %202, %200 ]
  %410 = phi i8 [ 0, %80 ], [ %114, %129 ], [ %114, %139 ], [ %404, %401 ], [ %114, %200 ]
  %411 = phi i8 [ 0, %80 ], [ %123, %129 ], [ %140, %139 ], [ %123, %401 ], [ %201, %200 ]
  %412 = getelementptr inbounds i32, ptr %409, i64 1
  store i32 0, ptr %409, align 4, !tbaa !430
  %413 = ptrtoint ptr %412 to i64
  %414 = ptrtoint ptr %408 to i64
  %415 = sub i64 %413, %414
  %416 = getelementptr inbounds %struct.magic, ptr %57, i64 0, i32 7
  store ptr %408, ptr %416, align 8, !tbaa !526
  %417 = shl i64 %415, 30
  %418 = ashr exact i64 %417, 30
  %419 = and i64 %418, -4
  %420 = getelementptr inbounds %struct.magic, ptr %57, i64 0, i32 5
  store i64 %419, ptr %420, align 8, !tbaa !503
  %421 = getelementptr inbounds %struct.magic, ptr %57, i64 0, i32 6
  store ptr %61, ptr %421, align 8, !tbaa !527
  %422 = getelementptr inbounds %struct.magic, ptr %57, i64 0, i32 4
  %423 = load i8, ptr %422, align 1, !tbaa !506
  %424 = or i8 %423, 2
  store i8 %424, ptr %422, align 1, !tbaa !506
  %425 = and i8 %410, 1
  %426 = icmp eq i8 %425, 0
  %427 = and i8 %411, 1
  %428 = icmp eq i8 %427, 0
  %429 = select i1 %426, i1 true, i1 %428
  br i1 %429, label %432, label %430

430:                                              ; preds = %407
  %431 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.110) #21
  br label %432

432:                                              ; preds = %407, %430, %44
  %433 = phi ptr [ %27, %44 ], [ %57, %430 ], [ %57, %407 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret ptr %433
}

; Function Attrs: optsize
declare ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_chop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_bytes_to_utf8(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare double @Perl_sv_2nv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc noundef zeroext i1 @S_num_overflow(double noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #11 !prof !422 !PGOFuncName !547 {
  %4 = fcmp olt double %0, 0.000000e+00
  %5 = sext i1 %4 to i32
  %6 = add i32 %5, %1
  %7 = shl i32 %2, 2
  %8 = ashr i32 %7, 31
  %9 = and i32 %2, -1610612737
  %10 = sub i32 %6, %9
  %11 = add i32 %10, %8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %16, %3
  %14 = phi double [ 1.000000e+00, %3 ], [ %20, %16 ]
  %15 = icmp eq i32 %9, 0
  br i1 %15, label %28, label %22

16:                                               ; preds = %3, %16
  %17 = phi i32 [ %19, %16 ], [ %11, %3 ]
  %18 = phi double [ %20, %16 ], [ 1.000000e+00, %3 ]
  %19 = add nsw i32 %17, -1
  %20 = fmul double %18, 1.000000e+01
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %13, label %16, !llvm.loop !548

22:                                               ; preds = %13, %22
  %23 = phi double [ %26, %22 ], [ 5.000000e-01, %13 ]
  %24 = phi i32 [ %25, %22 ], [ %9, %13 ]
  %25 = add nsw i32 %24, -1
  %26 = fdiv double %23, 1.000000e+01
  %27 = icmp eq i32 %25, 0
  br i1 %27, label %28, label %22, !llvm.loop !549

28:                                               ; preds = %22, %13
  %29 = phi double [ 5.000000e-01, %13 ], [ %26, %22 ]
  %30 = fcmp ult double %0, 0.000000e+00
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = fadd double %29, %0
  %33 = fcmp ult double %32, %14
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  br label %40

35:                                               ; preds = %28
  %36 = fsub double %0, %29
  %37 = fneg double %14
  %38 = fcmp ugt double %36, %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %35, %39, %31, %34
  %41 = phi i1 [ true, %34 ], [ false, %31 ], [ true, %39 ], [ false, %35 ]
  ret i1 %41
}

; Function Attrs: optsize
declare i32 @Perl_my_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_grepstart() local_unnamed_addr #0 !prof !550 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %2 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %4 = load i32, ptr %3, align 4, !tbaa !430
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %38, !prof !551

8:                                                ; preds = %0
  %9 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %9, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %10 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %11 = getelementptr inbounds %struct.op, ptr %10, i64 0, i32 5
  %12 = load i8, ptr %11, align 2, !tbaa !428
  %13 = and i8 %12, 3
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15, !prof !552

15:                                               ; preds = %8
  %16 = zext nneg i8 %13 to i32
  br label %19

17:                                               ; preds = %8
  %18 = tail call i32 @Perl_block_gimme() #22, !range !553
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %34, !prof !552

22:                                               ; preds = %19
  %23 = load ptr, ptr @PL_stack_max, align 8, !tbaa !385
  %24 = ptrtoint ptr %23 to i64
  %25 = ptrtoint ptr %1 to i64
  %26 = sub i64 %24, %25
  %27 = icmp slt i64 %26, 8
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #21
  br label %30

30:                                               ; preds = %22, %28
  %31 = phi ptr [ %29, %28 ], [ %1, %22 ]
  %32 = tail call ptr @Perl_sv_newmortal() #21
  %33 = getelementptr inbounds ptr, ptr %31, i64 1
  store ptr %32, ptr %33, align 8, !tbaa !385
  tail call void @Perl_sv_setiv(ptr noundef %32, i64 noundef 0) #21
  br label %34

34:                                               ; preds = %30, %19
  %35 = phi ptr [ %33, %30 ], [ %1, %19 ]
  store ptr %35, ptr @PL_stack_sp, align 8, !tbaa !385
  %36 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %37 = load ptr, ptr %36, align 8, !tbaa !400
  br label %125

38:                                               ; preds = %0
  %39 = getelementptr inbounds ptr, ptr %6, i64 1
  store ptr %39, ptr @PL_stack_sp, align 8, !tbaa !385
  %40 = tail call ptr @Perl_pp_pushmark() #21
  %41 = tail call ptr @Perl_pp_pushmark() #21
  tail call void @Perl_push_scope() #21
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #21
  %42 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  store i64 %42, ptr @PL_tmps_floor, align 8, !tbaa !509
  %43 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %44 = getelementptr inbounds %struct.op, ptr %43, i64 0, i32 6
  %45 = load i8, ptr %44, align 1, !tbaa !390
  %46 = and i8 %45, 2
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %53, label %48, !prof !554

48:                                               ; preds = %38
  %49 = load ptr, ptr @PL_curpad, align 8, !tbaa !385
  %50 = getelementptr inbounds %struct.op, ptr %43, i64 0, i32 3
  %51 = load i64, ptr %50, align 8, !tbaa !442
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  tail call void @Perl_save_sptr(ptr noundef %52) #21
  br label %65

53:                                               ; preds = %38
  %54 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  tail call void @Perl_save_gp(ptr noundef %54, i32 noundef 0) #21
  %55 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %56 = load ptr, ptr %55, align 8, !tbaa !555
  %57 = getelementptr inbounds %struct.xpvgv, ptr %56, i64 0, i32 2
  %58 = load i64, ptr %57, align 8, !tbaa !557
  %59 = and i64 %58, -2
  store i64 %59, ptr %57, align 8, !tbaa !557
  %60 = getelementptr inbounds %struct.gv, ptr %55, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !398
  tail call void @Perl_save_generic_svref(ptr noundef %61) #21
  %62 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %63 = getelementptr inbounds %struct.gv, ptr %62, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !398
  store ptr null, ptr %64, align 8, !tbaa !451
  br label %65

65:                                               ; preds = %53, %48
  tail call void @Perl_push_scope() #21
  tail call void @Perl_save_vptr(ptr noundef nonnull @PL_curpm) #21
  %66 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %67 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %68 = load i32, ptr %67, align 4, !tbaa !430
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %66, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !385
  %72 = getelementptr inbounds %struct.sv, ptr %71, i64 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !452
  %74 = and i32 %73, 131072
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %87, label %76, !prof !554

76:                                               ; preds = %65
  %77 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %71, i32 noundef 1538) #21
  %78 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %79 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %80 = load i32, ptr %79, align 4, !tbaa !430
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds ptr, ptr %78, i64 %81
  store ptr %77, ptr %82, align 8, !tbaa !385
  %83 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !509
  %84 = add nsw i64 %83, 1
  store i64 %84, ptr @PL_tmps_floor, align 8, !tbaa !509
  %85 = getelementptr inbounds %struct.sv, ptr %77, i64 0, i32 2
  %86 = load i32, ptr %85, align 4, !tbaa !452
  br label %87

87:                                               ; preds = %76, %65
  %88 = phi i32 [ %86, %76 ], [ %73, %65 ]
  %89 = phi ptr [ %77, %76 ], [ %71, %65 ]
  %90 = getelementptr inbounds %struct.sv, ptr %89, i64 0, i32 2
  %91 = and i32 %88, -524289
  store i32 %91, ptr %90, align 4, !tbaa !452
  %92 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %93 = getelementptr inbounds %struct.op, ptr %92, i64 0, i32 6
  %94 = load i8, ptr %93, align 1, !tbaa !390
  %95 = and i8 %94, 2
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %102, label %97, !prof !554

97:                                               ; preds = %87
  %98 = load ptr, ptr @PL_curpad, align 8, !tbaa !385
  %99 = getelementptr inbounds %struct.op, ptr %92, i64 0, i32 3
  %100 = load i64, ptr %99, align 8, !tbaa !442
  %101 = getelementptr inbounds ptr, ptr %98, i64 %100
  br label %111

102:                                              ; preds = %87
  %103 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %104 = getelementptr inbounds %struct.gv, ptr %103, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !398
  %106 = load ptr, ptr %105, align 8, !tbaa !451
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %106) #22
  %107 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %89) #22
  %108 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %109 = getelementptr inbounds %struct.gv, ptr %108, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !398
  br label %111

111:                                              ; preds = %102, %97
  %112 = phi ptr [ %110, %102 ], [ %101, %97 ]
  store ptr %89, ptr %112, align 8, !tbaa !385
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !385
  %113 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %114 = getelementptr inbounds %struct.op, ptr %113, i64 0, i32 4
  %115 = load i16, ptr %114, align 8
  %116 = and i16 %115, 511
  %117 = icmp eq i16 %116, 171
  br i1 %117, label %118, label %121, !prof !559

118:                                              ; preds = %111
  %119 = tail call ptr @Perl_pp_pushmark() #21
  %120 = load ptr, ptr @PL_op, align 8, !tbaa !385
  br label %121

121:                                              ; preds = %118, %111
  %122 = phi ptr [ %120, %118 ], [ %113, %111 ]
  %123 = load ptr, ptr %122, align 8, !tbaa !400
  %124 = getelementptr inbounds %struct.logop, ptr %123, i64 0, i32 8
  br label %125

125:                                              ; preds = %121, %34
  %126 = phi ptr [ %37, %34 ], [ %124, %121 ]
  %127 = load ptr, ptr %126, align 8, !tbaa !385
  ret ptr %127
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_block_gimme() local_unnamed_addr #0 !prof !560 {
  %1 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %2 = getelementptr inbounds %struct.stackinfo, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !395
  %4 = getelementptr inbounds %struct.stackinfo, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !397
  %6 = tail call fastcc i32 @S_dopoptosub_at(ptr noundef %3, i32 noundef %5) #22
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %18, label %8, !prof !561

8:                                                ; preds = %0
  %9 = zext nneg i32 %6 to i64
  %10 = getelementptr inbounds %struct.context, ptr %3, i64 %9, i32 0, i32 0, i32 1
  %11 = load i8, ptr %10, align 1, !tbaa !398
  %12 = add i8 %11, -1
  %13 = icmp ult i8 %12, 3
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = zext i8 %11 to i32
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.12, i32 noundef %15) #21
  br label %18

16:                                               ; preds = %8
  %17 = zext nneg i8 %11 to i32
  br label %18

18:                                               ; preds = %16, %0, %14
  %19 = phi i32 [ 0, %14 ], [ 1, %0 ], [ %17, %16 ]
  ret i32 %19
}

; Function Attrs: optsize
declare ptr @Perl_pp_pushmark() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_push_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_sptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_gp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_generic_svref(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_vptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_mortalcopy_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_mapwhile() local_unnamed_addr #0 !prof !562 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5
  %4 = load i8, ptr %3, align 2, !tbaa !428
  %5 = and i8 %4, 3
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7, !prof !563

7:                                                ; preds = %0
  %8 = zext nneg i8 %5 to i32
  br label %11

9:                                                ; preds = %0
  %10 = tail call i32 @Perl_block_gimme() #22, !range !553
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %14 = ptrtoint ptr %1 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = lshr exact i64 %16, 3
  %18 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %19 = load i32, ptr %18, align 4, !tbaa !430
  %20 = trunc i64 %17 to i32
  %21 = sub i32 %20, %19
  %22 = getelementptr inbounds i32, ptr %18, i64 -1
  %23 = load i32, ptr %22, align 4, !tbaa !430
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %22, align 4, !tbaa !430
  %25 = icmp ne i32 %21, 0
  %26 = icmp ne i32 %12, 1
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %167, !prof !564

28:                                               ; preds = %11
  %29 = getelementptr inbounds i32, ptr %18, i64 -2
  %30 = load i32, ptr %29, align 4, !tbaa !430
  %31 = sub nsw i32 %24, %30
  %32 = icmp sgt i32 %21, %31
  br i1 %32, label %33, label %70, !prof !565

33:                                               ; preds = %28
  %34 = sub nsw i32 %21, %31
  %35 = sub i32 %20, %23
  %36 = tail call i32 @llvm.smax.i32(i32 %34, i32 %35)
  %37 = load ptr, ptr @PL_stack_max, align 8, !tbaa !385
  %38 = ptrtoint ptr %37 to i64
  %39 = sub i64 %38, %14
  %40 = ashr exact i64 %39, 3
  %41 = sext i32 %36 to i64
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %49, !prof !566

43:                                               ; preds = %33
  %44 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef %41) #21
  %45 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %46 = getelementptr inbounds i32, ptr %45, i64 -1
  %47 = load i32, ptr %46, align 4, !tbaa !430
  %48 = load i32, ptr %45, align 4, !tbaa !430
  br label %49

49:                                               ; preds = %33, %43
  %50 = phi i32 [ %48, %43 ], [ %19, %33 ]
  %51 = phi i32 [ %47, %43 ], [ %24, %33 ]
  %52 = phi ptr [ %45, %43 ], [ %18, %33 ]
  %53 = phi ptr [ %44, %43 ], [ %1, %33 ]
  %54 = getelementptr inbounds ptr, ptr %53, i64 %41
  %55 = getelementptr inbounds i32, ptr %52, i64 -1
  %56 = add nsw i32 %51, %36
  store i32 %56, ptr %55, align 4, !tbaa !430
  %57 = add nsw i32 %50, %36
  store i32 %57, ptr %52, align 4, !tbaa !430
  %58 = icmp eq i32 %35, 0
  br i1 %58, label %70, label %59, !prof !567

59:                                               ; preds = %49, %59
  %60 = phi ptr [ %66, %59 ], [ %54, %49 ]
  %61 = phi ptr [ %64, %59 ], [ %53, %49 ]
  %62 = phi i32 [ %63, %59 ], [ %35, %49 ]
  %63 = add nsw i32 %62, -1
  %64 = getelementptr inbounds ptr, ptr %61, i64 -1
  %65 = load ptr, ptr %61, align 8, !tbaa !385
  %66 = getelementptr inbounds ptr, ptr %60, i64 -1
  store ptr %65, ptr %60, align 8, !tbaa !385
  %67 = icmp eq i32 %63, 0
  br i1 %67, label %68, label %59, !prof !568, !llvm.loop !569

68:                                               ; preds = %59
  %69 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  br label %70

70:                                               ; preds = %68, %49, %28
  %71 = phi ptr [ %18, %28 ], [ %52, %49 ], [ %69, %68 ]
  %72 = phi ptr [ %1, %28 ], [ %54, %49 ], [ %54, %68 ]
  %73 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %74 = getelementptr inbounds i32, ptr %71, i64 -2
  %75 = load i32, ptr %74, align 4, !tbaa !430
  %76 = add nsw i32 %75, %21
  store i32 %76, ptr %74, align 4, !tbaa !430
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds ptr, ptr %73, i64 %77
  %79 = getelementptr inbounds ptr, ptr %78, i64 -1
  %80 = icmp eq i32 %12, 3
  br i1 %80, label %83, label %81, !prof !570

81:                                               ; preds = %70
  %82 = icmp sgt i32 %21, 0
  br i1 %82, label %154, label %162

83:                                               ; preds = %70
  %84 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  %85 = sext i32 %21 to i64
  %86 = add nsw i64 %84, %85
  %87 = load i64, ptr @PL_tmps_max, align 8, !tbaa !509
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %92, label %89, !prof !570

89:                                               ; preds = %83
  %90 = tail call i64 @Perl_tmps_grow_p(i64 noundef %86) #21
  %91 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  br label %92

92:                                               ; preds = %83, %89
  %93 = phi i64 [ %84, %83 ], [ %91, %89 ]
  %94 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !509
  %95 = trunc i64 %94 to i32
  %96 = add i32 %95, 1
  %97 = load ptr, ptr @PL_tmps_stack, align 8, !tbaa !385
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds ptr, ptr %97, i64 %98
  %100 = getelementptr inbounds ptr, ptr %99, i64 %85
  %101 = sub nsw i64 %93, %94
  %102 = shl i64 %101, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %100, ptr align 1 %99, i64 %102, i1 false)
  %103 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  %104 = add nsw i64 %103, %85
  store i64 %104, ptr @PL_tmps_ix, align 8, !tbaa !509
  %105 = icmp sgt i32 %21, 0
  br i1 %105, label %106, label %131, !prof !571

106:                                              ; preds = %92, %120
  %107 = phi i64 [ %125, %120 ], [ %98, %92 ]
  %108 = phi i32 [ %111, %120 ], [ %21, %92 ]
  %109 = phi ptr [ %112, %120 ], [ %72, %92 ]
  %110 = phi ptr [ %122, %120 ], [ %79, %92 ]
  %111 = add nsw i32 %108, -1
  %112 = getelementptr inbounds ptr, ptr %109, i64 -1
  %113 = load ptr, ptr %109, align 8, !tbaa !385
  %114 = getelementptr inbounds %struct.sv, ptr %113, i64 0, i32 2
  %115 = load i32, ptr %114, align 4, !tbaa !452
  %116 = and i32 %115, 524288
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %120, !prof !572

118:                                              ; preds = %106
  %119 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %113, i32 noundef 1538) #21
  br label %120

120:                                              ; preds = %118, %106
  %121 = phi ptr [ %113, %106 ], [ %119, %118 ]
  %122 = getelementptr inbounds ptr, ptr %110, i64 -1
  store ptr %121, ptr %110, align 8, !tbaa !385
  %123 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %121) #22
  %124 = load ptr, ptr @PL_tmps_stack, align 8, !tbaa !385
  %125 = add nsw i64 %107, 1
  %126 = getelementptr inbounds ptr, ptr %124, i64 %107
  store ptr %121, ptr %126, align 8, !tbaa !385
  %127 = icmp ugt i32 %108, 1
  br i1 %127, label %106, label %128, !prof !573, !llvm.loop !574

128:                                              ; preds = %120
  %129 = trunc i64 %125 to i32
  %130 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  br label %131

131:                                              ; preds = %128, %92
  %132 = phi i64 [ %104, %92 ], [ %130, %128 ]
  %133 = phi i32 [ %96, %92 ], [ %129, %128 ]
  %134 = phi ptr [ %72, %92 ], [ %112, %128 ]
  %135 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !509
  %136 = add nsw i64 %135, %85
  store i64 %136, ptr @PL_tmps_floor, align 8, !tbaa !509
  %137 = icmp sgt i64 %132, %136
  br i1 %137, label %138, label %139, !prof !570

138:                                              ; preds = %131
  tail call void @Perl_free_tmps() #21
  br label %139

139:                                              ; preds = %138, %131
  br i1 %105, label %140, label %173, !prof !571

140:                                              ; preds = %139
  %141 = load ptr, ptr @PL_tmps_stack, align 8, !tbaa !385
  %142 = sext i32 %133 to i64
  br label %143

143:                                              ; preds = %140, %143
  %144 = phi i64 [ %142, %140 ], [ %147, %143 ]
  %145 = phi i32 [ %21, %140 ], [ %146, %143 ]
  %146 = add nsw i32 %145, -1
  %147 = add nsw i64 %144, -1
  %148 = getelementptr inbounds ptr, ptr %141, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !385
  %150 = getelementptr inbounds %struct.sv, ptr %149, i64 0, i32 2
  %151 = load i32, ptr %150, align 4, !tbaa !452
  %152 = or i32 %151, 524288
  store i32 %152, ptr %150, align 4, !tbaa !452
  %153 = icmp ugt i32 %145, 1
  br i1 %153, label %143, label %173, !prof !573, !llvm.loop !575

154:                                              ; preds = %81, %154
  %155 = phi ptr [ %159, %154 ], [ %72, %81 ]
  %156 = phi i32 [ %158, %154 ], [ %21, %81 ]
  %157 = phi ptr [ %160, %154 ], [ %79, %81 ]
  %158 = add nsw i32 %156, -1
  %159 = getelementptr inbounds ptr, ptr %155, i64 -1
  %160 = getelementptr inbounds ptr, ptr %157, i64 -1
  store ptr @PL_sv_undef, ptr %157, align 8, !tbaa !385
  %161 = icmp ugt i32 %156, 1
  br i1 %161, label %154, label %162, !llvm.loop !576

162:                                              ; preds = %154, %81
  %163 = phi ptr [ %72, %81 ], [ %159, %154 ]
  %164 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  %165 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !509
  %166 = icmp sgt i64 %164, %165
  br i1 %166, label %171, label %173

167:                                              ; preds = %11
  %168 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  %169 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !509
  %170 = icmp sgt i64 %168, %169
  br i1 %170, label %171, label %173, !prof !577

171:                                              ; preds = %167, %162
  %172 = phi ptr [ %163, %162 ], [ %1, %167 ]
  tail call void @Perl_free_tmps() #21
  br label %173

173:                                              ; preds = %143, %171, %139, %167, %162
  %174 = phi ptr [ %163, %162 ], [ %1, %167 ], [ %134, %139 ], [ %172, %171 ], [ %134, %143 ]
  tail call void @Perl_pop_scope() #21
  %175 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %176 = getelementptr inbounds i32, ptr %175, i64 -1
  %177 = load i32, ptr %176, align 4, !tbaa !430
  %178 = load i32, ptr %175, align 4, !tbaa !430
  %179 = icmp sgt i32 %177, %178
  br i1 %179, label %180, label %232, !prof !578

180:                                              ; preds = %173
  store ptr %176, ptr @PL_markstack_ptr, align 8, !tbaa !385
  tail call void @Perl_pop_scope() #21
  %181 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %182 = getelementptr inbounds i32, ptr %181, i64 -1
  %183 = load i32, ptr %182, align 4, !tbaa !430
  %184 = add nsw i32 %183, -1
  store i32 %184, ptr %182, align 4, !tbaa !430
  %185 = getelementptr inbounds i32, ptr %181, i64 -2
  %186 = load i32, ptr %185, align 4, !tbaa !430
  %187 = sub nsw i32 %184, %186
  %188 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %189 = getelementptr inbounds i32, ptr %181, i64 -3
  store ptr %189, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %190 = sext i32 %186 to i64
  %191 = getelementptr inbounds ptr, ptr %188, i64 %190
  switch i32 %12, label %229 [
    i32 2, label %192
    i32 3, label %226
  ], !prof !579

192:                                              ; preds = %180
  %193 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %194 = getelementptr inbounds %struct.op, ptr %193, i64 0, i32 6
  %195 = load i8, ptr %194, align 1, !tbaa !390
  %196 = and i8 %195, 2
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %192
  %199 = tail call ptr @Perl_sv_newmortal() #21
  %200 = sext i32 %187 to i64
  tail call void @Perl_sv_setiv(ptr noundef %199, i64 noundef %200) #21
  %201 = getelementptr inbounds ptr, ptr %191, i64 1
  store ptr %199, ptr %201, align 8, !tbaa !385
  br label %229

202:                                              ; preds = %192
  %203 = load ptr, ptr @PL_curpad, align 8, !tbaa !385
  %204 = getelementptr inbounds %struct.op, ptr %193, i64 0, i32 3
  %205 = load i64, ptr %204, align 8, !tbaa !442
  %206 = getelementptr inbounds ptr, ptr %203, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !385
  %208 = sext i32 %187 to i64
  tail call void @Perl_sv_setiv(ptr noundef %207, i64 noundef %208) #21
  %209 = getelementptr inbounds %struct.sv, ptr %207, i64 0, i32 2
  %210 = load i32, ptr %209, align 4, !tbaa !452
  %211 = and i32 %210, 4194304
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %202
  %214 = tail call i32 @Perl_mg_set(ptr noundef nonnull %207) #21
  br label %215

215:                                              ; preds = %202, %213
  %216 = load ptr, ptr @PL_stack_max, align 8, !tbaa !385
  %217 = ptrtoint ptr %216 to i64
  %218 = ptrtoint ptr %191 to i64
  %219 = sub i64 %217, %218
  %220 = icmp slt i64 %219, 8
  br i1 %220, label %221, label %223

221:                                              ; preds = %215
  %222 = tail call ptr @Perl_stack_grow(ptr noundef %191, ptr noundef %191, i64 noundef 1) #21
  br label %223

223:                                              ; preds = %215, %221
  %224 = phi ptr [ %222, %221 ], [ %191, %215 ]
  %225 = getelementptr inbounds ptr, ptr %224, i64 1
  store ptr %207, ptr %225, align 8, !tbaa !385
  br label %229

226:                                              ; preds = %180
  %227 = sext i32 %187 to i64
  %228 = getelementptr inbounds ptr, ptr %191, i64 %227
  br label %229

229:                                              ; preds = %180, %226, %198, %223
  %230 = phi ptr [ %201, %198 ], [ %225, %223 ], [ %228, %226 ], [ %191, %180 ]
  store ptr %230, ptr @PL_stack_sp, align 8, !tbaa !385
  %231 = load ptr, ptr @PL_op, align 8, !tbaa !385
  br label %276

232:                                              ; preds = %173
  tail call void @Perl_push_scope() #21
  tail call void @Perl_save_vptr(ptr noundef nonnull @PL_curpm) #21
  %233 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %234 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %235 = getelementptr inbounds i32, ptr %234, i64 -1
  %236 = load i32, ptr %235, align 4, !tbaa !430
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds ptr, ptr %233, i64 %237
  %239 = load ptr, ptr %238, align 8, !tbaa !385
  %240 = getelementptr inbounds %struct.sv, ptr %239, i64 0, i32 2
  %241 = load i32, ptr %240, align 4, !tbaa !452
  %242 = and i32 %241, 131072
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %248, label %244, !prof !580

244:                                              ; preds = %232
  %245 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %239, i32 noundef 1538) #21
  %246 = getelementptr inbounds %struct.sv, ptr %245, i64 0, i32 2
  %247 = load i32, ptr %246, align 4, !tbaa !452
  br label %248

248:                                              ; preds = %244, %232
  %249 = phi i32 [ %247, %244 ], [ %241, %232 ]
  %250 = phi ptr [ %245, %244 ], [ %239, %232 ]
  %251 = getelementptr inbounds %struct.sv, ptr %250, i64 0, i32 2
  %252 = and i32 %249, -524289
  store i32 %252, ptr %251, align 4, !tbaa !452
  %253 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %254 = getelementptr inbounds %struct.op, ptr %253, i64 0, i32 6
  %255 = load i8, ptr %254, align 1, !tbaa !390
  %256 = and i8 %255, 2
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %263, label %258, !prof !580

258:                                              ; preds = %248
  %259 = load ptr, ptr @PL_curpad, align 8, !tbaa !385
  %260 = getelementptr inbounds %struct.op, ptr %253, i64 0, i32 3
  %261 = load i64, ptr %260, align 8, !tbaa !442
  %262 = getelementptr inbounds ptr, ptr %259, i64 %261
  br label %272

263:                                              ; preds = %248
  %264 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %265 = getelementptr inbounds %struct.gv, ptr %264, i64 0, i32 3
  %266 = load ptr, ptr %265, align 8, !tbaa !398
  %267 = load ptr, ptr %266, align 8, !tbaa !451
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %267) #22
  %268 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %250) #22
  %269 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %270 = getelementptr inbounds %struct.gv, ptr %269, i64 0, i32 3
  %271 = load ptr, ptr %270, align 8, !tbaa !398
  br label %272

272:                                              ; preds = %263, %258
  %273 = phi ptr [ %271, %263 ], [ %262, %258 ]
  store ptr %250, ptr %273, align 8, !tbaa !385
  store ptr %174, ptr @PL_stack_sp, align 8, !tbaa !385
  %274 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %275 = getelementptr inbounds %struct.logop, ptr %274, i64 0, i32 8
  br label %276

276:                                              ; preds = %272, %229
  %277 = phi ptr [ %231, %229 ], [ %275, %272 ]
  %278 = load ptr, ptr %277, align 8, !tbaa !385
  ret ptr %278
}

; Function Attrs: optsize
declare i64 @Perl_tmps_grow_p(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

; Function Attrs: optsize
declare void @Perl_free_tmps() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_pop_scope() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_range() local_unnamed_addr #0 !prof !581 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %2 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 5
  %3 = load i8, ptr %2, align 2, !tbaa !428
  %4 = and i8 %3, 3
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6, !prof !582

6:                                                ; preds = %0
  %7 = zext nneg i8 %4 to i32
  br label %10

8:                                                ; preds = %0
  %9 = tail call i32 @Perl_block_gimme() #22, !range !553
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i32 [ %7, %6 ], [ %9, %8 ]
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %15, !prof !583

13:                                               ; preds = %10
  %14 = load ptr, ptr @PL_op, align 8, !tbaa !385
  br label %86

15:                                               ; preds = %10
  %16 = load ptr, ptr @PL_curpad, align 8, !tbaa !385
  %17 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %18 = getelementptr inbounds %struct.op, ptr %17, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !442
  %20 = getelementptr inbounds ptr, ptr %16, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !385
  store ptr %21, ptr @PL_Sv, align 8, !tbaa !385
  %22 = icmp eq ptr %21, null
  br i1 %22, label %86, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !452
  %26 = and i32 %25, 2097152
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %21, i32 noundef 2) #21
  %30 = load ptr, ptr @PL_op, align 8, !tbaa !385
  br i1 %29, label %83, label %86

31:                                               ; preds = %23
  %32 = and i32 %25, 65280
  %33 = icmp ne i32 %32, 0
  %34 = and i32 %25, 255
  %35 = icmp eq i32 %34, 8
  %36 = or i1 %33, %35
  %37 = and i32 %25, 16777471
  %38 = icmp eq i32 %37, 16777226
  %39 = or i1 %38, %36
  br i1 %39, label %40, label %86

40:                                               ; preds = %31
  %41 = and i32 %25, 1024
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %21, align 8, !tbaa !487
  %45 = icmp eq ptr %44, null
  br i1 %45, label %86, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.xpv, ptr %44, i64 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !458
  %49 = icmp ugt i64 %48, 1
  br i1 %49, label %83, label %50

50:                                               ; preds = %46
  %51 = icmp eq i64 %48, 0
  br i1 %51, label %86, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !398
  %55 = load i8, ptr %54, align 1, !tbaa !398
  %56 = icmp eq i8 %55, 48
  %57 = load ptr, ptr @PL_op, align 8, !tbaa !385
  br i1 %56, label %86, label %83

58:                                               ; preds = %40
  %59 = and i32 %25, 768
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %77, label %61

61:                                               ; preds = %58
  %62 = and i32 %25, 256
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %21, align 8, !tbaa !487
  %66 = getelementptr inbounds %struct.xpviv, ptr %65, i64 0, i32 4
  %67 = load i64, ptr %66, align 8, !tbaa !398
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %64, %61
  %70 = and i32 %25, 512
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %21, align 8, !tbaa !487
  %74 = getelementptr inbounds %struct.xpvnv, ptr %73, i64 0, i32 5
  %75 = load double, ptr %74, align 8, !tbaa !398
  %76 = fcmp uno double %75, 0.000000e+00
  br i1 %76, label %83, label %80

77:                                               ; preds = %58
  %78 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %21, i32 noundef 0) #21
  %79 = load ptr, ptr @PL_op, align 8, !tbaa !385
  br i1 %78, label %83, label %86

80:                                               ; preds = %72
  %81 = fcmp une double %75, 0.000000e+00
  %82 = load ptr, ptr @PL_op, align 8, !tbaa !385
  br i1 %81, label %83, label %86

83:                                               ; preds = %80, %28, %77, %52, %72, %64, %46
  %84 = phi ptr [ %17, %72 ], [ %17, %64 ], [ %17, %46 ], [ %30, %28 ], [ %82, %80 ], [ %79, %77 ], [ %57, %52 ]
  %85 = getelementptr inbounds %struct.logop, ptr %84, i64 0, i32 8
  br label %86

86:                                               ; preds = %80, %15, %31, %43, %50, %69, %28, %77, %52, %83, %13
  %87 = phi ptr [ %14, %13 ], [ %85, %83 ], [ %17, %69 ], [ %17, %50 ], [ %17, %43 ], [ %17, %31 ], [ %17, %15 ], [ %82, %80 ], [ %30, %28 ], [ %79, %77 ], [ %57, %52 ]
  %88 = load ptr, ptr %87, align 8, !tbaa !385
  ret ptr %88
}

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_flip() local_unnamed_addr #0 !prof !581 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5
  %4 = load i8, ptr %3, align 2, !tbaa !428
  %5 = and i8 %4, 3
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7, !prof !582

7:                                                ; preds = %0
  %8 = zext nneg i8 %5 to i32
  br label %11

9:                                                ; preds = %0
  %10 = tail call i32 @Perl_block_gimme() #22, !range !553
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %19, !prof !583

14:                                               ; preds = %11
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !385
  %15 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %16 = getelementptr inbounds %struct.unop, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !584
  %18 = getelementptr inbounds %struct.logop, ptr %17, i64 0, i32 8
  br label %192

19:                                               ; preds = %11
  %20 = load ptr, ptr %1, align 8, !tbaa !385
  %21 = load ptr, ptr @PL_curpad, align 8, !tbaa !385
  %22 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %23 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !442
  %25 = getelementptr inbounds ptr, ptr %21, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !385
  %27 = getelementptr inbounds %struct.op, ptr %22, i64 0, i32 6
  %28 = load i8, ptr %27, align 1, !tbaa !390
  %29 = and i8 %28, 64
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %108, label %31

31:                                               ; preds = %19
  %32 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !385
  %33 = icmp eq ptr %32, null
  br i1 %33, label %71, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !452
  %37 = and i32 %36, 255
  %38 = add nsw i32 %37, -9
  %39 = icmp ult i32 %38, 2
  br i1 %39, label %40, label %71

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.gv, ptr %32, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !398
  %43 = icmp eq ptr %42, null
  br i1 %43, label %71, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.gp, ptr %42, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !586
  %47 = icmp eq ptr %46, null
  br i1 %47, label %71, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !452
  %51 = and i32 %50, 2097408
  %52 = icmp eq i32 %51, 256
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load ptr, ptr %20, align 8, !tbaa !487
  %55 = getelementptr inbounds %struct.xpviv, ptr %54, i64 0, i32 4
  %56 = load i64, ptr %55, align 8, !tbaa !398
  br label %64

57:                                               ; preds = %48
  %58 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %20, i32 noundef 2) #21
  %59 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !385
  %60 = getelementptr inbounds %struct.gv, ptr %59, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !398
  %62 = getelementptr inbounds %struct.gp, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !586
  br label %64

64:                                               ; preds = %57, %53
  %65 = phi ptr [ %46, %53 ], [ %63, %57 ]
  %66 = phi i64 [ %56, %53 ], [ %58, %57 ]
  %67 = load ptr, ptr %65, align 8, !tbaa !587
  %68 = getelementptr inbounds %struct.xpvio, ptr %67, i64 0, i32 4
  %69 = load i64, ptr %68, align 8, !tbaa !398
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %166, label %190

71:                                               ; preds = %34, %31, %40, %44
  %72 = tail call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.7, i64 noundef 1, i32 noundef 129, i32 noundef 3) #21
  %73 = icmp eq ptr %72, null
  br i1 %73, label %190, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.gv, ptr %72, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !398
  %77 = load ptr, ptr %76, align 8, !tbaa !451
  %78 = icmp eq ptr %77, null
  br i1 %78, label %190, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %81 = load i32, ptr %80, align 4, !tbaa !452
  %82 = and i32 %81, 2097408
  %83 = icmp eq i32 %82, 256
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load ptr, ptr %20, align 8, !tbaa !487
  %86 = getelementptr inbounds %struct.xpviv, ptr %85, i64 0, i32 4
  %87 = load i64, ptr %86, align 8, !tbaa !398
  br label %92

88:                                               ; preds = %79
  %89 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %20, i32 noundef 2) #21
  %90 = load ptr, ptr %75, align 8, !tbaa !398
  %91 = load ptr, ptr %90, align 8, !tbaa !451
  br label %92

92:                                               ; preds = %88, %84
  %93 = phi ptr [ %77, %84 ], [ %91, %88 ]
  %94 = phi i64 [ %87, %84 ], [ %89, %88 ]
  %95 = getelementptr inbounds %struct.sv, ptr %93, i64 0, i32 2
  %96 = load i32, ptr %95, align 4, !tbaa !452
  %97 = and i32 %96, 2097408
  %98 = icmp eq i32 %97, 256
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load ptr, ptr %93, align 8, !tbaa !487
  %101 = getelementptr inbounds %struct.xpviv, ptr %100, i64 0, i32 4
  %102 = load i64, ptr %101, align 8, !tbaa !398
  br label %105

103:                                              ; preds = %92
  %104 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %93, i32 noundef 2) #21
  br label %105

105:                                              ; preds = %103, %99
  %106 = phi i64 [ %102, %99 ], [ %104, %103 ]
  %107 = icmp eq i64 %94, %106
  br i1 %107, label %166, label %190

108:                                              ; preds = %19
  %109 = icmp eq ptr %20, null
  br i1 %109, label %190, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %112 = load i32, ptr %111, align 4, !tbaa !452
  %113 = and i32 %112, 2097152
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %110
  %116 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %20, i32 noundef 2) #21
  br i1 %116, label %166, label %190

117:                                              ; preds = %110
  %118 = and i32 %112, 65280
  %119 = icmp ne i32 %118, 0
  %120 = and i32 %112, 255
  %121 = icmp eq i32 %120, 8
  %122 = or i1 %119, %121
  %123 = and i32 %112, 16777471
  %124 = icmp eq i32 %123, 16777226
  %125 = or i1 %124, %122
  br i1 %125, label %126, label %190

126:                                              ; preds = %117
  %127 = and i32 %112, 1024
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %143, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr %20, align 8, !tbaa !487
  %131 = icmp eq ptr %130, null
  br i1 %131, label %190, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.xpv, ptr %130, i64 0, i32 2
  %134 = load i64, ptr %133, align 8, !tbaa !458
  %135 = icmp ugt i64 %134, 1
  br i1 %135, label %169, label %136

136:                                              ; preds = %132
  %137 = icmp eq i64 %134, 0
  br i1 %137, label %190, label %138

138:                                              ; preds = %136
  %139 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !398
  %141 = load i8, ptr %140, align 1, !tbaa !398
  %142 = icmp eq i8 %141, 48
  br i1 %142, label %190, label %166

143:                                              ; preds = %126
  %144 = and i32 %112, 768
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %162, label %146

146:                                              ; preds = %143
  %147 = and i32 %112, 256
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %146
  %150 = load ptr, ptr %20, align 8, !tbaa !487
  %151 = getelementptr inbounds %struct.xpviv, ptr %150, i64 0, i32 4
  %152 = load i64, ptr %151, align 8, !tbaa !398
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %169

154:                                              ; preds = %149, %146
  %155 = and i32 %112, 512
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %190, label %157

157:                                              ; preds = %154
  %158 = load ptr, ptr %20, align 8, !tbaa !487
  %159 = getelementptr inbounds %struct.xpvnv, ptr %158, i64 0, i32 5
  %160 = load double, ptr %159, align 8, !tbaa !398
  %161 = fcmp uno double %160, 0.000000e+00
  br i1 %161, label %169, label %164

162:                                              ; preds = %143
  %163 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %20, i32 noundef 0) #21
  br i1 %163, label %166, label %190

164:                                              ; preds = %157
  %165 = fcmp une double %160, 0.000000e+00
  br i1 %165, label %166, label %190

166:                                              ; preds = %138, %162, %115, %105, %64, %164
  %167 = load ptr, ptr @PL_curpad, align 8, !tbaa !385
  %168 = load ptr, ptr @PL_op, align 8, !tbaa !385
  br label %169

169:                                              ; preds = %166, %132, %149, %157
  %170 = phi ptr [ %168, %166 ], [ %22, %132 ], [ %22, %149 ], [ %22, %157 ]
  %171 = phi ptr [ %167, %166 ], [ %21, %132 ], [ %21, %149 ], [ %21, %157 ]
  %172 = getelementptr inbounds %struct.unop, ptr %170, i64 0, i32 7
  %173 = load ptr, ptr %172, align 8, !tbaa !584
  %174 = getelementptr inbounds %struct.op, ptr %173, i64 0, i32 3
  %175 = load i64, ptr %174, align 8, !tbaa !442
  %176 = getelementptr inbounds ptr, ptr %171, i64 %175
  %177 = load ptr, ptr %176, align 8, !tbaa !385
  tail call void @Perl_sv_setiv(ptr noundef %177, i64 noundef 1) #21
  %178 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %179 = getelementptr inbounds %struct.op, ptr %178, i64 0, i32 5
  %180 = load i8, ptr %179, align 2, !tbaa !428
  %181 = icmp sgt i8 %180, -1
  br i1 %181, label %184, label %182

182:                                              ; preds = %169
  tail call void @Perl_sv_setiv(ptr noundef %26, i64 noundef 1) #21
  store ptr %26, ptr %1, align 8, !tbaa !385
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !385
  %183 = load ptr, ptr @PL_op, align 8, !tbaa !385
  br label %192

184:                                              ; preds = %169
  tail call void @Perl_sv_setiv(ptr noundef %26, i64 noundef 0) #21
  %185 = getelementptr inbounds ptr, ptr %1, i64 -1
  store ptr %185, ptr @PL_stack_sp, align 8, !tbaa !385
  %186 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %187 = getelementptr inbounds %struct.unop, ptr %186, i64 0, i32 7
  %188 = load ptr, ptr %187, align 8, !tbaa !584
  %189 = getelementptr inbounds %struct.logop, ptr %188, i64 0, i32 8
  br label %192

190:                                              ; preds = %138, %162, %115, %105, %64, %117, %129, %136, %154, %108, %71, %74, %164
  tail call void @Perl_sv_setpvn(ptr noundef %26, ptr noundef nonnull @.str.8, i64 noundef 0) #21
  store ptr %26, ptr %1, align 8, !tbaa !385
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !385
  %191 = load ptr, ptr @PL_op, align 8, !tbaa !385
  br label %192

192:                                              ; preds = %182, %184, %190, %14
  %193 = phi ptr [ %18, %14 ], [ %183, %182 ], [ %189, %184 ], [ %191, %190 ]
  %194 = load ptr, ptr %193, align 8, !tbaa !385
  ret ptr %194
}

; Function Attrs: optsize
declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_fetchpvn_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_flop() local_unnamed_addr #0 !prof !581 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 5
  %6 = load i8, ptr %5, align 2, !tbaa !428
  %7 = and i8 %6, 3
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9, !prof !582

9:                                                ; preds = %0
  %10 = zext nneg i8 %7 to i32
  br label %13

11:                                               ; preds = %0
  %12 = tail call i32 @Perl_block_gimme() #22, !range !553
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %303, !prof !583

16:                                               ; preds = %13
  %17 = getelementptr inbounds ptr, ptr %3, i64 -1
  %18 = load ptr, ptr %3, align 8, !tbaa !385
  %19 = getelementptr inbounds ptr, ptr %3, i64 -2
  %20 = load ptr, ptr %17, align 8, !tbaa !385
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !452
  %23 = and i32 %22, 2097152
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !583

25:                                               ; preds = %16
  %26 = tail call i32 @Perl_mg_get(ptr noundef nonnull %20) #21
  br label %27

27:                                               ; preds = %16, %25
  %28 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !452
  %30 = and i32 %29, 2097152
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32, !prof !583

32:                                               ; preds = %27
  %33 = tail call i32 @Perl_mg_get(ptr noundef nonnull %18) #21
  br label %34

34:                                               ; preds = %27, %32
  %35 = load i32, ptr %21, align 4, !tbaa !452
  %36 = and i32 %35, 12288
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %102, !prof !582

38:                                               ; preds = %34
  %39 = and i32 %35, 52992
  %40 = icmp ne i32 %39, 0
  %41 = and i32 %35, 255
  %42 = icmp eq i32 %41, 8
  %43 = or i1 %40, %42
  %44 = and i32 %35, 16777471
  %45 = icmp eq i32 %44, 16777226
  %46 = or i1 %45, %43
  %47 = and i32 %35, 16384
  %48 = icmp eq i32 %47, 0
  %49 = and i1 %48, %46
  br i1 %49, label %102, label %50

50:                                               ; preds = %38
  %51 = load i32, ptr %28, align 4, !tbaa !452
  %52 = and i32 %51, 12288
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %102

54:                                               ; preds = %50
  %55 = and i32 %51, 52992
  %56 = icmp ne i32 %55, 0
  %57 = and i32 %51, 255
  %58 = icmp eq i32 %57, 8
  %59 = or i1 %56, %58
  %60 = and i32 %51, 16777471
  %61 = icmp eq i32 %60, 16777226
  %62 = or i1 %61, %59
  %63 = and i32 %51, 16384
  %64 = icmp eq i32 %63, 0
  %65 = and i1 %64, %62
  br i1 %65, label %102, label %66

66:                                               ; preds = %54
  br i1 %46, label %68, label %67

67:                                               ; preds = %66
  br i1 %62, label %87, label %74

68:                                               ; preds = %66
  %69 = tail call i32 @Perl_looks_like_number(ptr noundef nonnull %20) #21
  %70 = icmp eq i32 %69, 0
  %71 = load i32, ptr %21, align 4, !tbaa !452
  br i1 %70, label %233, label %72

72:                                               ; preds = %68
  %73 = and i32 %71, 16384
  br label %74

74:                                               ; preds = %72, %67
  %75 = phi i32 [ %73, %72 ], [ %47, %67 ]
  %76 = phi i32 [ %71, %72 ], [ %35, %67 ]
  %77 = icmp eq i32 %75, 0
  br i1 %77, label %233, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !398
  %81 = load i8, ptr %80, align 1, !tbaa !398
  %82 = icmp eq i8 %81, 48
  br i1 %82, label %233, label %83

83:                                               ; preds = %78
  %84 = load i32, ptr %28, align 4, !tbaa !452
  %85 = and i32 %84, 255
  %86 = and i32 %84, 16777471
  br label %87

87:                                               ; preds = %83, %67
  %88 = phi i32 [ %86, %83 ], [ %60, %67 ]
  %89 = phi i32 [ %85, %83 ], [ %57, %67 ]
  %90 = phi i32 [ %76, %83 ], [ %35, %67 ]
  %91 = phi i32 [ %84, %83 ], [ %51, %67 ]
  %92 = and i32 %91, 65280
  %93 = icmp ne i32 %92, 0
  %94 = icmp eq i32 %89, 8
  %95 = or i1 %93, %94
  %96 = icmp eq i32 %88, 16777226
  %97 = or i1 %96, %95
  br i1 %97, label %98, label %102

98:                                               ; preds = %87
  %99 = tail call i32 @Perl_looks_like_number(ptr noundef nonnull %18) #21
  %100 = icmp eq i32 %99, 0
  %101 = load i32, ptr %21, align 4, !tbaa !452
  br i1 %100, label %233, label %102

102:                                              ; preds = %54, %38, %87, %98, %50, %34
  %103 = phi i32 [ %35, %54 ], [ %35, %38 ], [ %90, %87 ], [ %101, %98 ], [ %35, %50 ], [ %35, %34 ]
  %104 = and i32 %103, 65280
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %112, !prof !582

106:                                              ; preds = %102
  %107 = and i32 %103, 255
  %108 = icmp eq i32 %107, 8
  %109 = and i32 %103, 16777471
  %110 = icmp eq i32 %109, 16777226
  %111 = or i1 %108, %110
  br i1 %111, label %115, label %127, !prof !589

112:                                              ; preds = %102
  %113 = and i32 %103, 256
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %127, !prof !582

115:                                              ; preds = %106, %112
  %116 = and i32 %103, 512
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %20, align 8, !tbaa !487
  %120 = getelementptr inbounds %struct.xpvnv, ptr %119, i64 0, i32 5
  %121 = load double, ptr %120, align 8, !tbaa !398
  br label %124

122:                                              ; preds = %115
  %123 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %20, i32 noundef 0) #21
  br label %124

124:                                              ; preds = %122, %118
  %125 = phi double [ %121, %118 ], [ %123, %122 ]
  %126 = fcmp olt double %125, 0xC3E0000000000000
  br i1 %126, label %301, label %127

127:                                              ; preds = %106, %124, %112
  %128 = load i32, ptr %28, align 4, !tbaa !452
  %129 = and i32 %128, 65280
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %137, !prof !582

131:                                              ; preds = %127
  %132 = and i32 %128, 255
  %133 = icmp eq i32 %132, 8
  %134 = and i32 %128, 16777471
  %135 = icmp eq i32 %134, 16777226
  %136 = or i1 %133, %135
  br i1 %136, label %137, label %166

137:                                              ; preds = %131, %127
  %138 = and i32 %128, 256
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %154, label %140, !prof !583

140:                                              ; preds = %137
  %141 = icmp sgt i32 %128, -1
  br i1 %141, label %166, label %142, !prof !583

142:                                              ; preds = %140
  %143 = and i32 %128, -2145386240
  %144 = icmp eq i32 %143, -2147483392
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load ptr, ptr %18, align 8, !tbaa !487
  %147 = getelementptr inbounds %struct.xpvuv, ptr %146, i64 0, i32 4
  %148 = load i64, ptr %147, align 8, !tbaa !398
  br label %151

149:                                              ; preds = %142
  %150 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %18, i32 noundef 2) #21
  br label %151

151:                                              ; preds = %149, %145
  %152 = phi i64 [ %148, %145 ], [ %150, %149 ]
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %301, label %166

154:                                              ; preds = %137
  %155 = and i32 %128, 512
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %154
  %158 = load ptr, ptr %18, align 8, !tbaa !487
  %159 = getelementptr inbounds %struct.xpvnv, ptr %158, i64 0, i32 5
  %160 = load double, ptr %159, align 8, !tbaa !398
  br label %163

161:                                              ; preds = %154
  %162 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %18, i32 noundef 0) #21
  br label %163

163:                                              ; preds = %161, %157
  %164 = phi double [ %160, %157 ], [ %162, %161 ]
  %165 = fcmp ogt double %164, 0x43E0000000000000
  br i1 %165, label %301, label %166

166:                                              ; preds = %131, %163, %151, %140
  %167 = load i32, ptr %21, align 4, !tbaa !452
  %168 = and i32 %167, 256
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %174, label %170, !prof !582

170:                                              ; preds = %166
  %171 = load ptr, ptr %20, align 8, !tbaa !487
  %172 = getelementptr inbounds %struct.xpviv, ptr %171, i64 0, i32 4
  %173 = load i64, ptr %172, align 8, !tbaa !398
  br label %176

174:                                              ; preds = %166
  %175 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %20, i32 noundef 0) #21
  br label %176

176:                                              ; preds = %174, %170
  %177 = phi i64 [ %173, %170 ], [ %175, %174 ]
  %178 = load i32, ptr %28, align 4, !tbaa !452
  %179 = and i32 %178, 256
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %185, label %181, !prof !582

181:                                              ; preds = %176
  %182 = load ptr, ptr %18, align 8, !tbaa !487
  %183 = getelementptr inbounds %struct.xpviv, ptr %182, i64 0, i32 4
  %184 = load i64, ptr %183, align 8, !tbaa !398
  br label %187

185:                                              ; preds = %176
  %186 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %18, i32 noundef 0) #21
  br label %187

187:                                              ; preds = %185, %181
  %188 = phi i64 [ %184, %181 ], [ %186, %185 ]
  %189 = icmp slt i64 %188, %177
  br i1 %189, label %467, label %190, !prof !582

190:                                              ; preds = %187
  %191 = icmp slt i64 %177, 1
  %192 = add nsw i64 %177, 9223372036854775806
  %193 = icmp sgt i64 %188, %192
  %194 = select i1 %191, i1 %193, i1 false, !prof !590
  br i1 %194, label %199, label %195, !prof !582

195:                                              ; preds = %190
  %196 = sub nsw i64 %188, %177
  %197 = add nsw i64 %196, 1
  %198 = icmp slt i64 %196, 0
  br i1 %198, label %199, label %201, !prof !582

199:                                              ; preds = %195, %190
  %200 = phi i64 [ undef, %190 ], [ %197, %195 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.10) #21
  br label %201

201:                                              ; preds = %195, %199
  %202 = phi i64 [ %200, %199 ], [ %197, %195 ]
  %203 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  %204 = add nsw i64 %203, %202
  %205 = load i64, ptr @PL_tmps_max, align 8, !tbaa !509
  %206 = icmp slt i64 %204, %205
  br i1 %206, label %209, label %207, !prof !583

207:                                              ; preds = %201
  %208 = tail call i64 @Perl_tmps_grow_p(i64 noundef %204) #21
  br label %209

209:                                              ; preds = %201, %207
  %210 = load ptr, ptr @PL_stack_max, align 8, !tbaa !385
  %211 = ptrtoint ptr %210 to i64
  %212 = ptrtoint ptr %19 to i64
  %213 = sub i64 %211, %212
  %214 = ashr exact i64 %213, 3
  %215 = icmp slt i64 %214, %202
  br i1 %215, label %216, label %218, !prof !582

216:                                              ; preds = %209
  %217 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %19, ptr noundef nonnull %19, i64 noundef %202) #21
  br label %218

218:                                              ; preds = %216, %209
  %219 = phi ptr [ %19, %209 ], [ %217, %216 ]
  %220 = icmp eq i64 %202, 0
  br i1 %220, label %467, label %221, !prof !591

221:                                              ; preds = %218, %221
  %222 = phi ptr [ %228, %221 ], [ %219, %218 ]
  %223 = phi i64 [ %231, %221 ], [ %177, %218 ]
  %224 = phi i64 [ %225, %221 ], [ %202, %218 ]
  %225 = add nsw i64 %224, -1
  %226 = tail call ptr @Perl_newSViv(i64 noundef %223) #21
  %227 = tail call ptr @Perl_sv_2mortal(ptr noundef %226) #21
  %228 = getelementptr inbounds ptr, ptr %222, i64 1
  store ptr %227, ptr %228, align 8, !tbaa !385
  %229 = icmp ne i64 %225, 0
  %230 = zext i1 %229 to i64
  %231 = add nsw i64 %223, %230
  %232 = icmp eq i64 %225, 0
  br i1 %232, label %467, label %221, !prof !592, !llvm.loop !593

233:                                              ; preds = %98, %78, %74, %68
  %234 = phi i32 [ %76, %78 ], [ %76, %74 ], [ %71, %68 ], [ %101, %98 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  %235 = and i32 %234, 2098176
  %236 = icmp eq i32 %235, 1024
  br i1 %236, label %237, label %243

237:                                              ; preds = %233
  %238 = load ptr, ptr %20, align 8, !tbaa !487
  %239 = getelementptr inbounds %struct.xpv, ptr %238, i64 0, i32 2
  %240 = load i64, ptr %239, align 8, !tbaa !458
  store i64 %240, ptr %2, align 8, !tbaa !509
  %241 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %242 = load ptr, ptr %241, align 8, !tbaa !398
  br label %245

243:                                              ; preds = %233
  %244 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %20, ptr noundef nonnull %2, i32 noundef 32) #21
  br label %245

245:                                              ; preds = %243, %237
  %246 = phi ptr [ %242, %237 ], [ %244, %243 ]
  %247 = load i32, ptr %28, align 4, !tbaa !452
  %248 = and i32 %247, 2098176
  %249 = icmp eq i32 %248, 1024
  br i1 %249, label %250, label %256

250:                                              ; preds = %245
  %251 = load ptr, ptr %18, align 8, !tbaa !487
  %252 = getelementptr inbounds %struct.xpv, ptr %251, i64 0, i32 2
  %253 = load i64, ptr %252, align 8, !tbaa !458
  store i64 %253, ptr %1, align 8, !tbaa !509
  %254 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  %255 = load ptr, ptr %254, align 8, !tbaa !398
  br label %258

256:                                              ; preds = %245
  %257 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %18, ptr noundef nonnull %1, i32 noundef 32) #21
  br label %258

258:                                              ; preds = %256, %250
  %259 = phi ptr [ %255, %250 ], [ %257, %256 ]
  %260 = load i64, ptr %2, align 8, !tbaa !509
  %261 = load i32, ptr %21, align 4, !tbaa !452
  %262 = and i32 %261, 536870912
  %263 = or disjoint i32 %262, 524288
  %264 = call ptr @Perl_newSVpvn_flags(ptr noundef %246, i64 noundef %260, i32 noundef %263) #21
  %265 = getelementptr inbounds %struct.sv, ptr %264, i64 0, i32 2
  %266 = load i32, ptr %265, align 4, !tbaa !452
  %267 = and i32 %266, 12288
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %299

269:                                              ; preds = %258, %292
  %270 = phi ptr [ %287, %292 ], [ %19, %258 ]
  %271 = phi ptr [ %294, %292 ], [ %264, %258 ]
  %272 = load ptr, ptr %271, align 8, !tbaa !487
  %273 = getelementptr inbounds %struct.xpv, ptr %272, i64 0, i32 2
  %274 = load i64, ptr %273, align 8, !tbaa !458
  %275 = load i64, ptr %1, align 8, !tbaa !509
  %276 = icmp ugt i64 %274, %275
  br i1 %276, label %299, label %277

277:                                              ; preds = %269
  %278 = load ptr, ptr @PL_stack_max, align 8, !tbaa !385
  %279 = ptrtoint ptr %278 to i64
  %280 = ptrtoint ptr %270 to i64
  %281 = sub i64 %279, %280
  %282 = icmp slt i64 %281, 8
  br i1 %282, label %283, label %285

283:                                              ; preds = %277
  %284 = call ptr @Perl_stack_grow(ptr noundef nonnull %270, ptr noundef nonnull %270, i64 noundef 1) #21
  br label %285

285:                                              ; preds = %277, %283
  %286 = phi ptr [ %284, %283 ], [ %270, %277 ]
  %287 = getelementptr inbounds ptr, ptr %286, i64 1
  store ptr %271, ptr %287, align 8, !tbaa !385
  %288 = getelementptr inbounds %struct.sv, ptr %271, i64 0, i32 3
  %289 = load ptr, ptr %288, align 8, !tbaa !398
  %290 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %289, ptr noundef nonnull dereferenceable(1) %259) #24
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %299, label %292

292:                                              ; preds = %285
  %293 = call ptr @Perl_newSVsv(ptr noundef nonnull %271) #21
  %294 = call ptr @Perl_sv_2mortal(ptr noundef %293) #21
  call void @Perl_sv_inc(ptr noundef %294) #21
  %295 = getelementptr inbounds %struct.sv, ptr %294, i64 0, i32 2
  %296 = load i32, ptr %295, align 4, !tbaa !452
  %297 = and i32 %296, 12288
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %269, label %299, !llvm.loop !594

299:                                              ; preds = %269, %285, %292, %258
  %300 = phi ptr [ %19, %258 ], [ %287, %292 ], [ %287, %285 ], [ %270, %269 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #23
  br label %467

301:                                              ; preds = %124, %151, %163
  %302 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.9) #21
  br label %471

303:                                              ; preds = %13
  %304 = load ptr, ptr %3, align 8, !tbaa !385
  %305 = load ptr, ptr @PL_curpad, align 8, !tbaa !385
  %306 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %307 = getelementptr inbounds %struct.unop, ptr %306, i64 0, i32 7
  %308 = load ptr, ptr %307, align 8, !tbaa !584
  %309 = getelementptr inbounds %struct.op, ptr %308, i64 0, i32 3
  %310 = load i64, ptr %309, align 8, !tbaa !442
  %311 = getelementptr inbounds ptr, ptr %305, i64 %310
  %312 = load ptr, ptr %311, align 8, !tbaa !385
  tail call void @Perl_sv_inc(ptr noundef %312) #21
  %313 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %314 = getelementptr inbounds %struct.op, ptr %313, i64 0, i32 6
  %315 = load i8, ptr %314, align 1, !tbaa !390
  %316 = and i8 %315, 64
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %395, label %318

318:                                              ; preds = %303
  %319 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !385
  %320 = icmp eq ptr %319, null
  br i1 %320, label %358, label %321

321:                                              ; preds = %318
  %322 = getelementptr inbounds %struct.sv, ptr %319, i64 0, i32 2
  %323 = load i32, ptr %322, align 4, !tbaa !452
  %324 = and i32 %323, 255
  %325 = add nsw i32 %324, -9
  %326 = icmp ult i32 %325, 2
  br i1 %326, label %327, label %358

327:                                              ; preds = %321
  %328 = getelementptr inbounds %struct.gv, ptr %319, i64 0, i32 3
  %329 = load ptr, ptr %328, align 8, !tbaa !398
  %330 = icmp eq ptr %329, null
  br i1 %330, label %358, label %331

331:                                              ; preds = %327
  %332 = getelementptr inbounds %struct.gp, ptr %329, i64 0, i32 1
  %333 = load ptr, ptr %332, align 8, !tbaa !586
  %334 = icmp eq ptr %333, null
  br i1 %334, label %358, label %335

335:                                              ; preds = %331
  %336 = getelementptr inbounds %struct.sv, ptr %304, i64 0, i32 2
  %337 = load i32, ptr %336, align 4, !tbaa !452
  %338 = and i32 %337, 2097408
  %339 = icmp eq i32 %338, 256
  br i1 %339, label %340, label %344

340:                                              ; preds = %335
  %341 = load ptr, ptr %304, align 8, !tbaa !487
  %342 = getelementptr inbounds %struct.xpviv, ptr %341, i64 0, i32 4
  %343 = load i64, ptr %342, align 8, !tbaa !398
  br label %351

344:                                              ; preds = %335
  %345 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %304, i32 noundef 2) #21
  %346 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !385
  %347 = getelementptr inbounds %struct.gv, ptr %346, i64 0, i32 3
  %348 = load ptr, ptr %347, align 8, !tbaa !398
  %349 = getelementptr inbounds %struct.gp, ptr %348, i64 0, i32 1
  %350 = load ptr, ptr %349, align 8, !tbaa !586
  br label %351

351:                                              ; preds = %344, %340
  %352 = phi ptr [ %333, %340 ], [ %350, %344 ]
  %353 = phi i64 [ %343, %340 ], [ %345, %344 ]
  %354 = load ptr, ptr %352, align 8, !tbaa !587
  %355 = getelementptr inbounds %struct.xpvio, ptr %354, i64 0, i32 4
  %356 = load i64, ptr %355, align 8, !tbaa !398
  %357 = icmp eq i64 %353, %356
  br i1 %357, label %453, label %466

358:                                              ; preds = %321, %318, %327, %331
  %359 = tail call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.7, i64 noundef 1, i32 noundef 129, i32 noundef 3) #21
  %360 = icmp eq ptr %359, null
  br i1 %360, label %466, label %361

361:                                              ; preds = %358
  %362 = getelementptr inbounds %struct.gv, ptr %359, i64 0, i32 3
  %363 = load ptr, ptr %362, align 8, !tbaa !398
  %364 = load ptr, ptr %363, align 8, !tbaa !451
  %365 = icmp eq ptr %364, null
  br i1 %365, label %466, label %366

366:                                              ; preds = %361
  %367 = getelementptr inbounds %struct.sv, ptr %304, i64 0, i32 2
  %368 = load i32, ptr %367, align 4, !tbaa !452
  %369 = and i32 %368, 2097408
  %370 = icmp eq i32 %369, 256
  br i1 %370, label %371, label %375

371:                                              ; preds = %366
  %372 = load ptr, ptr %304, align 8, !tbaa !487
  %373 = getelementptr inbounds %struct.xpviv, ptr %372, i64 0, i32 4
  %374 = load i64, ptr %373, align 8, !tbaa !398
  br label %379

375:                                              ; preds = %366
  %376 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %304, i32 noundef 2) #21
  %377 = load ptr, ptr %362, align 8, !tbaa !398
  %378 = load ptr, ptr %377, align 8, !tbaa !451
  br label %379

379:                                              ; preds = %375, %371
  %380 = phi ptr [ %364, %371 ], [ %378, %375 ]
  %381 = phi i64 [ %374, %371 ], [ %376, %375 ]
  %382 = getelementptr inbounds %struct.sv, ptr %380, i64 0, i32 2
  %383 = load i32, ptr %382, align 4, !tbaa !452
  %384 = and i32 %383, 2097408
  %385 = icmp eq i32 %384, 256
  br i1 %385, label %386, label %390

386:                                              ; preds = %379
  %387 = load ptr, ptr %380, align 8, !tbaa !487
  %388 = getelementptr inbounds %struct.xpviv, ptr %387, i64 0, i32 4
  %389 = load i64, ptr %388, align 8, !tbaa !398
  br label %392

390:                                              ; preds = %379
  %391 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %380, i32 noundef 2) #21
  br label %392

392:                                              ; preds = %390, %386
  %393 = phi i64 [ %389, %386 ], [ %391, %390 ]
  %394 = icmp eq i64 %381, %393
  br i1 %394, label %453, label %466

395:                                              ; preds = %303
  %396 = icmp eq ptr %304, null
  br i1 %396, label %466, label %397

397:                                              ; preds = %395
  %398 = getelementptr inbounds %struct.sv, ptr %304, i64 0, i32 2
  %399 = load i32, ptr %398, align 4, !tbaa !452
  %400 = and i32 %399, 2097152
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %404, label %402

402:                                              ; preds = %397
  %403 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %304, i32 noundef 2) #21
  br i1 %403, label %453, label %466

404:                                              ; preds = %397
  %405 = and i32 %399, 65280
  %406 = icmp ne i32 %405, 0
  %407 = and i32 %399, 255
  %408 = icmp eq i32 %407, 8
  %409 = or i1 %406, %408
  %410 = and i32 %399, 16777471
  %411 = icmp eq i32 %410, 16777226
  %412 = or i1 %411, %409
  br i1 %412, label %413, label %466

413:                                              ; preds = %404
  %414 = and i32 %399, 1024
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %430, label %416

416:                                              ; preds = %413
  %417 = load ptr, ptr %304, align 8, !tbaa !487
  %418 = icmp eq ptr %417, null
  br i1 %418, label %466, label %419

419:                                              ; preds = %416
  %420 = getelementptr inbounds %struct.xpv, ptr %417, i64 0, i32 2
  %421 = load i64, ptr %420, align 8, !tbaa !458
  %422 = icmp ugt i64 %421, 1
  br i1 %422, label %455, label %423

423:                                              ; preds = %419
  %424 = icmp eq i64 %421, 0
  br i1 %424, label %466, label %425

425:                                              ; preds = %423
  %426 = getelementptr inbounds %struct.sv, ptr %304, i64 0, i32 3
  %427 = load ptr, ptr %426, align 8, !tbaa !398
  %428 = load i8, ptr %427, align 1, !tbaa !398
  %429 = icmp eq i8 %428, 48
  br i1 %429, label %466, label %453

430:                                              ; preds = %413
  %431 = and i32 %399, 768
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %449, label %433

433:                                              ; preds = %430
  %434 = and i32 %399, 256
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %441, label %436

436:                                              ; preds = %433
  %437 = load ptr, ptr %304, align 8, !tbaa !487
  %438 = getelementptr inbounds %struct.xpviv, ptr %437, i64 0, i32 4
  %439 = load i64, ptr %438, align 8, !tbaa !398
  %440 = icmp eq i64 %439, 0
  br i1 %440, label %441, label %455

441:                                              ; preds = %436, %433
  %442 = and i32 %399, 512
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %466, label %444

444:                                              ; preds = %441
  %445 = load ptr, ptr %304, align 8, !tbaa !487
  %446 = getelementptr inbounds %struct.xpvnv, ptr %445, i64 0, i32 5
  %447 = load double, ptr %446, align 8, !tbaa !398
  %448 = fcmp uno double %447, 0.000000e+00
  br i1 %448, label %455, label %451

449:                                              ; preds = %430
  %450 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %304, i32 noundef 0) #21
  br i1 %450, label %453, label %466

451:                                              ; preds = %444
  %452 = fcmp une double %447, 0.000000e+00
  br i1 %452, label %453, label %466

453:                                              ; preds = %425, %449, %402, %392, %351, %451
  %454 = load ptr, ptr @PL_op, align 8, !tbaa !385
  br label %455

455:                                              ; preds = %453, %419, %436, %444
  %456 = phi ptr [ %454, %453 ], [ %313, %419 ], [ %313, %436 ], [ %313, %444 ]
  %457 = load ptr, ptr @PL_curpad, align 8, !tbaa !385
  %458 = getelementptr inbounds %struct.unop, ptr %456, i64 0, i32 7
  %459 = load ptr, ptr %458, align 8, !tbaa !584
  %460 = getelementptr inbounds %struct.unop, ptr %459, i64 0, i32 7
  %461 = load ptr, ptr %460, align 8, !tbaa !584
  %462 = getelementptr inbounds %struct.op, ptr %461, i64 0, i32 3
  %463 = load i64, ptr %462, align 8, !tbaa !442
  %464 = getelementptr inbounds ptr, ptr %457, i64 %463
  %465 = load ptr, ptr %464, align 8, !tbaa !385
  tail call void @Perl_sv_setiv(ptr noundef %465, i64 noundef 0) #21
  tail call void @Perl_sv_catpvn_flags(ptr noundef %312, ptr noundef nonnull @.str.11, i64 noundef 2, i32 noundef 2) #21
  br label %466

466:                                              ; preds = %425, %449, %402, %392, %351, %404, %416, %423, %441, %395, %358, %361, %455, %451
  store ptr %312, ptr %3, align 8, !tbaa !385
  br label %467

467:                                              ; preds = %221, %187, %218, %299, %466
  %468 = phi ptr [ %3, %466 ], [ %300, %299 ], [ %219, %218 ], [ %19, %187 ], [ %228, %221 ]
  store ptr %468, ptr @PL_stack_sp, align 8, !tbaa !385
  %469 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %470 = load ptr, ptr %469, align 8, !tbaa !400
  br label %471

471:                                              ; preds = %301, %467
  %472 = phi ptr [ %470, %467 ], [ %302, %301 ]
  ret ptr %472
}

; Function Attrs: optsize
declare i32 @Perl_looks_like_number(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_inc(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_dowantarray() local_unnamed_addr #0 !prof !422 {
  %1 = tail call i32 @Perl_block_gimme() #22, !range !553
  %2 = icmp eq i32 %1, 1
  %3 = select i1 %2, i32 2, i32 %1
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Perl_is_lvalue_sub() local_unnamed_addr #9 !prof !422 {
  %1 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %2 = getelementptr inbounds %struct.stackinfo, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !395
  %4 = getelementptr inbounds %struct.stackinfo, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !397
  %6 = tail call fastcc i32 @S_dopoptosub_at(ptr noundef %3, i32 noundef %5) #22
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.context, ptr %3, i64 %7
  %9 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 2
  %10 = load i16, ptr %9, align 2, !tbaa !398
  %11 = and i16 %10, 255
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %0
  %14 = zext nneg i16 %11 to i32
  %15 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 8, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !398
  %17 = load ptr, ptr %16, align 8, !tbaa !595
  %18 = getelementptr inbounds %struct.xpvcv, ptr %17, i64 0, i32 12
  %19 = load i32, ptr %18, align 4, !tbaa !597
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13, %0
  br label %23

23:                                               ; preds = %13, %22
  %24 = phi i32 [ 0, %22 ], [ %14, %13 ]
  ret i32 %24
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Perl_was_lvalue_sub() local_unnamed_addr #9 !prof !422 {
  %1 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %2 = getelementptr inbounds %struct.stackinfo, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !395
  %4 = getelementptr inbounds %struct.stackinfo, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !397
  %6 = add nsw i32 %5, -1
  %7 = tail call fastcc i32 @S_dopoptosub_at(ptr noundef %3, i32 noundef %6) #22
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.context, ptr %3, i64 %8
  %10 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 2
  %11 = load i16, ptr %10, align 2, !tbaa !398
  %12 = and i16 %11, 255
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %0
  %15 = zext nneg i16 %12 to i32
  %16 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 8, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !398
  %18 = load ptr, ptr %17, align 8, !tbaa !595
  %19 = getelementptr inbounds %struct.xpvcv, ptr %18, i64 0, i32 12
  %20 = load i32, ptr %19, align 4, !tbaa !597
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14, %0
  br label %24

24:                                               ; preds = %14, %23
  %25 = phi i32 [ 0, %23 ], [ %15, %14 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_dounwind(i32 noundef %0) local_unnamed_addr #0 !prof !599 {
  %2 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %3 = icmp eq ptr %2, null
  br i1 %3, label %189, label %4, !prof !600

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.stackinfo, ptr %2, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !397
  %7 = icmp sgt i32 %6, %0
  br i1 %7, label %8, label %189, !prof !601

8:                                                ; preds = %4, %184
  %9 = phi i32 [ %185, %184 ], [ %6, %4 ]
  %10 = phi ptr [ %187, %184 ], [ %5, %4 ]
  %11 = phi ptr [ %186, %184 ], [ %2, %4 ]
  %12 = getelementptr inbounds %struct.stackinfo, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !395
  %14 = sext i32 %9 to i64
  %15 = getelementptr inbounds %struct.context, ptr %13, i64 %14
  %16 = load i8, ptr %15, align 8, !tbaa !398
  %17 = and i8 %16, 15
  switch i8 %17, label %179 [
    i8 11, label %18
    i8 8, label %26
    i8 10, label %115
    i8 9, label %150
    i8 6, label %137
    i8 4, label %143
    i8 5, label %143
    i8 7, label %143
  ], !prof !602

18:                                               ; preds = %8
  %19 = add nsw i32 %9, -1
  store i32 %19, ptr %10, align 8, !tbaa !397
  %20 = getelementptr inbounds %struct.subst, ptr %15, i64 0, i32 12
  tail call fastcc void @S_rxres_free(ptr noundef nonnull %20) #22
  %21 = getelementptr inbounds %struct.subst, ptr %15, i64 0, i32 13
  %22 = load ptr, ptr %21, align 8, !tbaa !398
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %22) #22
  %23 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %24 = getelementptr inbounds %struct.stackinfo, ptr %23, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !397
  br label %184, !llvm.loop !603

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.block, ptr %15, i64 0, i32 8, i32 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !398
  %29 = getelementptr inbounds %struct.block, ptr %15, i64 0, i32 2
  %30 = load i16, ptr %29, align 2, !tbaa !398
  %31 = and i16 %30, 256
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %94

33:                                               ; preds = %26
  %34 = or disjoint i16 %30, 256
  store i16 %34, ptr %29, align 2, !tbaa !398
  %35 = and i8 %16, 32
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %94, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %39 = getelementptr inbounds %struct.gv, ptr %38, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !398
  %41 = getelementptr inbounds %struct.gp, ptr %40, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !604
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %42) #22
  %43 = getelementptr inbounds %struct.block, ptr %15, i64 0, i32 8, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !398
  %45 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %46 = getelementptr inbounds %struct.gv, ptr %45, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !398
  %48 = getelementptr inbounds %struct.gp, ptr %47, i64 0, i32 6
  store ptr %44, ptr %48, align 8, !tbaa !604
  %49 = getelementptr inbounds %struct.block, ptr %15, i64 0, i32 8, i32 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !398
  %51 = getelementptr inbounds %struct.av, ptr %50, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !605
  %53 = and i32 %52, 1073741824
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %73, label %55

55:                                               ; preds = %37
  %56 = load ptr, ptr %50, align 8, !tbaa !607
  %57 = getelementptr inbounds %struct.xpvav, ptr %56, i64 0, i32 2
  %58 = load i64, ptr %57, align 8, !tbaa !608
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %50) #22
  %59 = tail call ptr @Perl_newSV_type(i32 noundef 11) #21
  store ptr %59, ptr %49, align 8, !tbaa !398
  tail call void @Perl_av_extend(ptr noundef %59, i64 noundef %58) #21
  %60 = load ptr, ptr %49, align 8, !tbaa !398
  %61 = getelementptr inbounds %struct.av, ptr %60, i64 0, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !605
  %63 = and i32 %62, -1073741825
  store i32 %63, ptr %61, align 4, !tbaa !605
  %64 = load ptr, ptr %49, align 8, !tbaa !398
  %65 = getelementptr inbounds %struct.av, ptr %64, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !605
  %67 = or i32 %66, -2147483648
  store i32 %67, ptr %65, align 4, !tbaa !605
  %68 = load ptr, ptr %49, align 8, !tbaa !398
  %69 = getelementptr inbounds %struct.block, ptr %15, i64 0, i32 8, i32 0, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !398
  %71 = getelementptr inbounds %struct.av, ptr %70, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !398
  store ptr %68, ptr %72, align 8, !tbaa !385
  br label %94

73:                                               ; preds = %37
  %74 = getelementptr inbounds %struct.av, ptr %50, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !398
  %76 = load ptr, ptr %50, align 8, !tbaa !607
  %77 = getelementptr inbounds %struct.xpvav, ptr %76, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !610
  %79 = ptrtoint ptr %75 to i64
  %80 = ptrtoint ptr %78 to i64
  %81 = sub i64 %79, %80
  %82 = ashr exact i64 %81, 3
  %83 = getelementptr inbounds %struct.xpvav, ptr %76, i64 0, i32 3
  %84 = load i64, ptr %83, align 8, !tbaa !611
  %85 = add nsw i64 %82, %84
  store i64 %85, ptr %83, align 8, !tbaa !611
  %86 = load ptr, ptr %49, align 8, !tbaa !398
  %87 = load ptr, ptr %86, align 8, !tbaa !607
  %88 = getelementptr inbounds %struct.xpvav, ptr %87, i64 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !610
  %90 = getelementptr inbounds %struct.av, ptr %86, i64 0, i32 3
  store ptr %89, ptr %90, align 8, !tbaa !398
  %91 = load ptr, ptr %49, align 8, !tbaa !398
  %92 = load ptr, ptr %91, align 8, !tbaa !607
  %93 = getelementptr inbounds %struct.xpvav, ptr %92, i64 0, i32 2
  store i64 -1, ptr %93, align 8, !tbaa !608
  br label %94

94:                                               ; preds = %33, %73, %55, %26
  %95 = getelementptr inbounds %struct.block, ptr %15, i64 0, i32 8, i32 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !398
  %97 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !430
  %98 = load ptr, ptr @PL_scopestack, align 8, !tbaa !385
  %99 = getelementptr inbounds %struct.block, ptr %15, i64 0, i32 6
  %100 = load i32, ptr %99, align 4, !tbaa !398
  %101 = sext i32 %100 to i64
  %102 = getelementptr i32, ptr %98, i64 %101
  %103 = getelementptr i32, ptr %102, i64 -1
  %104 = load i32, ptr %103, align 4, !tbaa !430
  %105 = icmp sgt i32 %97, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %94
  tail call void @Perl_leave_scope(i32 noundef %104) #21
  br label %107

107:                                              ; preds = %106, %94
  %108 = icmp eq ptr %96, null
  br i1 %108, label %113, label %109

109:                                              ; preds = %107
  %110 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %96) #22
  store i32 %28, ptr %110, align 4, !tbaa !430
  %111 = icmp eq i32 %28, 0
  %112 = select i1 %111, ptr %96, ptr null
  br label %113

113:                                              ; preds = %109, %107
  %114 = phi ptr [ null, %107 ], [ %112, %109 ]
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %114) #22
  br label %179

115:                                              ; preds = %8
  %116 = getelementptr inbounds %struct.block, ptr %15, i64 0, i32 2
  %117 = load i16, ptr %116, align 2, !tbaa !398
  %118 = trunc i16 %117 to i8
  %119 = and i8 %118, 127
  store i8 %119, ptr @PL_in_eval, align 1, !tbaa !398
  %120 = getelementptr inbounds %struct.block, ptr %15, i64 0, i32 8, i32 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !398
  store ptr %121, ptr @PL_eval_root, align 8, !tbaa !385
  %122 = getelementptr inbounds %struct.block, ptr %15, i64 0, i32 8, i32 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !398
  %124 = icmp eq ptr %123, null
  br i1 %124, label %131, label %125

125:                                              ; preds = %115
  %126 = getelementptr inbounds %struct.sv, ptr %123, i64 0, i32 2
  %127 = load i32, ptr %126, align 4, !tbaa !452
  %128 = and i32 %127, 49152
  %129 = icmp eq i32 %128, 49152
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %123) #22
  br label %131

131:                                              ; preds = %130, %125, %115
  %132 = getelementptr inbounds %struct.block, ptr %15, i64 0, i32 8, i32 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !398
  %134 = icmp eq ptr %133, null
  br i1 %134, label %179, label %135

135:                                              ; preds = %131
  %136 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %133) #21
  br label %179

137:                                              ; preds = %8
  %138 = getelementptr inbounds %struct.block, ptr %15, i64 0, i32 8, i32 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !398
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %139) #22
  %140 = getelementptr inbounds %struct.block, ptr %15, i64 0, i32 8, i32 0, i32 4
  %141 = load ptr, ptr %140, align 8, !tbaa !398
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %141) #22
  %142 = load i8, ptr %15, align 8, !tbaa !398
  br label %143

143:                                              ; preds = %8, %8, %8, %137
  %144 = phi i8 [ %16, %8 ], [ %16, %8 ], [ %16, %8 ], [ %142, %137 ]
  %145 = and i8 %144, 15
  %146 = icmp eq i8 %145, 4
  br i1 %146, label %147, label %179, !prof !612

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.block, ptr %15, i64 0, i32 8, i32 0, i32 3
  %149 = load ptr, ptr %148, align 8, !tbaa !398
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %149) #22
  br label %179

150:                                              ; preds = %8
  %151 = getelementptr inbounds %struct.block, ptr %15, i64 0, i32 2
  %152 = load i16, ptr %151, align 2, !tbaa !398
  %153 = and i16 %152, 256
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %155, label %179

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.block, ptr %15, i64 0, i32 8, i32 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !398
  %158 = getelementptr inbounds %struct.block, ptr %15, i64 0, i32 8, i32 0, i32 3
  %159 = load ptr, ptr %158, align 8, !tbaa !398
  %160 = or disjoint i16 %152, 256
  store i16 %160, ptr %151, align 2, !tbaa !398
  tail call void @Perl_setdefout(ptr noundef %159) #21
  %161 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !430
  %162 = load ptr, ptr @PL_scopestack, align 8, !tbaa !385
  %163 = getelementptr inbounds %struct.block, ptr %15, i64 0, i32 6
  %164 = load i32, ptr %163, align 4, !tbaa !398
  %165 = sext i32 %164 to i64
  %166 = getelementptr i32, ptr %162, i64 %165
  %167 = getelementptr i32, ptr %166, i64 -1
  %168 = load i32, ptr %167, align 4, !tbaa !430
  %169 = icmp sgt i32 %161, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %155
  tail call void @Perl_leave_scope(i32 noundef %168) #21
  br label %171

171:                                              ; preds = %170, %155
  %172 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef %157) #22
  %173 = load i32, ptr %172, align 4, !tbaa !430
  %174 = add nsw i32 %173, -1
  store i32 %174, ptr %172, align 4, !tbaa !430
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = load ptr, ptr %156, align 8, !tbaa !398
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %177) #22
  br label %178

178:                                              ; preds = %176, %171
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %159) #22
  br label %179

179:                                              ; preds = %8, %150, %178, %143, %147, %131, %135, %113
  %180 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %181 = getelementptr inbounds %struct.stackinfo, ptr %180, i64 0, i32 4
  %182 = load i32, ptr %181, align 8, !tbaa !397
  %183 = add nsw i32 %182, -1
  store i32 %183, ptr %181, align 8, !tbaa !397
  br label %184

184:                                              ; preds = %179, %18
  %185 = phi i32 [ %183, %179 ], [ %25, %18 ]
  %186 = phi ptr [ %180, %179 ], [ %23, %18 ]
  %187 = getelementptr inbounds %struct.stackinfo, ptr %186, i64 0, i32 4
  %188 = icmp sgt i32 %185, %0
  br i1 %188, label %8, label %189, !prof !613

189:                                              ; preds = %184, %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec_NN(ptr noundef %0) unnamed_addr #0 !prof !614 !PGOFuncName !615 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !468
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %7, !prof !616

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 8, !tbaa !468
  br label %8

7:                                                ; preds = %1
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %3) #21
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_av_extend(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @S_CvDEPTHp(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !617 !PGOFuncName !618 {
  %2 = load ptr, ptr %0, align 8, !tbaa !595
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 13
  ret ptr %3
}

; Function Attrs: optsize
declare void @Perl_setdefout(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_qerror(ptr noundef %0) local_unnamed_addr #0 !prof !422 {
  %2 = load i8, ptr @PL_in_eval, align 1, !tbaa !398
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = and i8 %2, 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 12, ptr noundef nonnull @.str.13, ptr noundef %0) #21
  br label %26

8:                                                ; preds = %4
  %9 = load ptr, ptr @PL_errgv, align 8, !tbaa !385
  %10 = getelementptr inbounds %struct.gv, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !398
  %12 = load ptr, ptr %11, align 8, !tbaa !385
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %9, i32 noundef 0) #21
  %16 = getelementptr inbounds %struct.gv, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !398
  %18 = load ptr, ptr %17, align 8, !tbaa !385
  br label %19

19:                                               ; preds = %8, %14
  %20 = phi ptr [ %18, %14 ], [ %12, %8 ]
  tail call void @Perl_sv_catsv_flags(ptr noundef %20, ptr noundef %0, i32 noundef 2) #21
  br label %26

21:                                               ; preds = %1
  %22 = load ptr, ptr @PL_errors, align 8, !tbaa !385
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @Perl_sv_catsv_flags(ptr noundef nonnull %22, ptr noundef %0, i32 noundef 2) #21
  br label %26

25:                                               ; preds = %21
  tail call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.14, ptr noundef %0) #21
  br label %26

26:                                               ; preds = %24, %25, %7, %19
  %27 = load ptr, ptr @PL_parser, align 8, !tbaa !385
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.yy_parser, ptr %27, i64 0, i32 44
  %31 = load i8, ptr %30, align 1, !tbaa !619
  %32 = add i8 %31, 1
  store i8 %32, ptr %30, align 1, !tbaa !619
  br label %33

33:                                               ; preds = %29, %26
  ret void
}

; Function Attrs: optsize
declare void @Perl_warn(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_die_unwind(ptr noundef %0) local_unnamed_addr #0 !prof !622 {
  %2 = alloca i64, align 8
  %3 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef %0, i32 noundef 1538) #21
  %4 = load i8, ptr @PL_in_eval, align 1, !tbaa !398
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %263, label %6, !prof !623

6:                                                ; preds = %1
  %7 = and i8 %4, 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %25, !prof !624

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !452
  %12 = and i32 %11, -524289
  store i32 %12, ptr %10, align 4, !tbaa !452
  %13 = load ptr, ptr @PL_errgv, align 8, !tbaa !385
  %14 = getelementptr inbounds %struct.gv, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !398
  %16 = load ptr, ptr %15, align 8, !tbaa !385
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %23, !prof !623

18:                                               ; preds = %9
  %19 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %13, i32 noundef 0) #21
  %20 = getelementptr inbounds %struct.gv, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !398
  %22 = load ptr, ptr %21, align 8, !tbaa !385
  br label %23

23:                                               ; preds = %9, %18
  %24 = phi ptr [ %22, %18 ], [ %16, %9 ]
  tail call void @Perl_sv_setsv_flags(ptr noundef %24, ptr noundef nonnull %3, i32 noundef 1538) #21
  br label %26

25:                                               ; preds = %6
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 12, ptr noundef nonnull @.str.13, ptr noundef %3) #21
  br label %26

26:                                               ; preds = %23, %25
  %27 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %28 = getelementptr inbounds %struct.stackinfo, ptr %27, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !397
  %30 = tail call fastcc i32 @S_dopoptoeval(i32 noundef %29) #22
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %71, !prof !625

32:                                               ; preds = %26, %44
  %33 = phi ptr [ %41, %44 ], [ %27, %26 ]
  %34 = getelementptr inbounds %struct.stackinfo, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !405
  %36 = icmp eq ptr %35, null
  br i1 %36, label %263, label %37, !prof !624

37:                                               ; preds = %32
  tail call void @Perl_dounwind(i32 noundef -1) #22
  %38 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %39 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %40 = getelementptr inbounds %struct.stackinfo, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !405
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  tail call void @Perl_croak_popstack() #21
  br label %44

44:                                               ; preds = %37, %43
  %45 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %46 = ptrtoint ptr %38 to i64
  %47 = ptrtoint ptr %45 to i64
  %48 = sub i64 %46, %47
  %49 = ashr exact i64 %48, 3
  %50 = load ptr, ptr @PL_curstack, align 8, !tbaa !385
  %51 = load ptr, ptr %50, align 8, !tbaa !607
  %52 = getelementptr inbounds %struct.xpvav, ptr %51, i64 0, i32 2
  store i64 %49, ptr %52, align 8, !tbaa !608
  %53 = load ptr, ptr %41, align 8, !tbaa !626
  %54 = getelementptr inbounds %struct.av, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !398
  store ptr %55, ptr @PL_stack_base, align 8, !tbaa !385
  %56 = load ptr, ptr %41, align 8, !tbaa !626
  %57 = load ptr, ptr %56, align 8, !tbaa !607
  %58 = getelementptr inbounds %struct.xpvav, ptr %57, i64 0, i32 3
  %59 = load i64, ptr %58, align 8, !tbaa !611
  %60 = getelementptr inbounds ptr, ptr %55, i64 %59
  store ptr %60, ptr @PL_stack_max, align 8, !tbaa !385
  %61 = load ptr, ptr %41, align 8, !tbaa !626
  %62 = load ptr, ptr %61, align 8, !tbaa !607
  %63 = getelementptr inbounds %struct.xpvav, ptr %62, i64 0, i32 2
  %64 = load i64, ptr %63, align 8, !tbaa !608
  %65 = getelementptr inbounds ptr, ptr %55, i64 %64
  store ptr %65, ptr @PL_stack_sp, align 8, !tbaa !385
  %66 = load ptr, ptr %41, align 8, !tbaa !626
  store ptr %66, ptr @PL_curstack, align 8, !tbaa !385
  store ptr %41, ptr @PL_curstackinfo, align 8, !tbaa !385
  %67 = getelementptr inbounds %struct.stackinfo, ptr %41, i64 0, i32 4
  %68 = load i32, ptr %67, align 8, !tbaa !397
  %69 = tail call fastcc i32 @S_dopoptoeval(i32 noundef %68) #22
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %32, label %71, !prof !406, !llvm.loop !627

71:                                               ; preds = %44, %26
  %72 = phi ptr [ %27, %26 ], [ %41, %44 ]
  %73 = phi i32 [ %29, %26 ], [ %68, %44 ]
  %74 = phi i32 [ %30, %26 ], [ %69, %44 ]
  %75 = icmp slt i32 %74, %73
  br i1 %75, label %76, label %78, !prof !623

76:                                               ; preds = %71
  tail call void @Perl_dounwind(i32 noundef %74) #22
  %77 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  br label %78

78:                                               ; preds = %76, %71
  %79 = phi ptr [ %77, %76 ], [ %72, %71 ]
  %80 = getelementptr inbounds %struct.stackinfo, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !395
  %82 = getelementptr inbounds %struct.stackinfo, ptr %79, i64 0, i32 4
  %83 = load i32, ptr %82, align 8, !tbaa !397
  %84 = add nsw i32 %83, -1
  store i32 %84, ptr %82, align 8, !tbaa !397
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds %struct.context, ptr %81, i64 %85
  %87 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %88 = getelementptr inbounds %struct.block, ptr %86, i64 0, i32 3
  %89 = load i32, ptr %88, align 4, !tbaa !398
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds ptr, ptr %87, i64 %90
  %92 = getelementptr inbounds %struct.block, ptr %86, i64 0, i32 4
  %93 = load ptr, ptr %92, align 8, !tbaa !398
  store ptr %93, ptr @PL_curcop, align 8, !tbaa !385
  %94 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %95 = getelementptr inbounds %struct.block, ptr %86, i64 0, i32 5
  %96 = load i32, ptr %95, align 8, !tbaa !398
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, ptr %94, i64 %97
  store ptr %98, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %99 = getelementptr inbounds %struct.block, ptr %86, i64 0, i32 6
  %100 = load i32, ptr %99, align 4, !tbaa !398
  store i32 %100, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %101 = getelementptr inbounds %struct.block, ptr %86, i64 0, i32 7
  %102 = load ptr, ptr %101, align 8, !tbaa !398
  store ptr %102, ptr @PL_curpm, align 8, !tbaa !385
  %103 = getelementptr inbounds %struct.block, ptr %86, i64 0, i32 1
  %104 = load i8, ptr %103, align 1, !tbaa !398
  %105 = load i8, ptr %86, align 8, !tbaa !398
  %106 = and i8 %105, 15
  %107 = icmp eq i8 %106, 10
  br i1 %107, label %170, label %108, !prof !624

108:                                              ; preds = %78
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  store ptr %3, ptr @PL_Sv, align 8, !tbaa !385
  %109 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %110 = load i32, ptr %109, align 4, !tbaa !452
  %111 = and i32 %110, 2098176
  %112 = icmp eq i32 %111, 1024
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load ptr, ptr %3, align 8, !tbaa !487
  %115 = getelementptr inbounds %struct.xpv, ptr %114, i64 0, i32 2
  %116 = load i64, ptr %115, align 8, !tbaa !458
  store i64 %116, ptr %2, align 8, !tbaa !509
  %117 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !398
  br label %121

119:                                              ; preds = %108
  %120 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 34) #21
  br label %121

121:                                              ; preds = %119, %113
  %122 = phi ptr [ %118, %113 ], [ %120, %119 ]
  %123 = load ptr, ptr @PL_stderrgv, align 8, !tbaa !385
  %124 = icmp eq ptr %123, null
  br i1 %124, label %141, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.gv, ptr %123, i64 0, i32 2
  %127 = load i32, ptr %126, align 4, !tbaa !628
  %128 = and i32 %127, 255
  %129 = icmp eq i32 %128, 9
  br i1 %129, label %130, label %141

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.gv, ptr %123, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !398
  %133 = getelementptr inbounds %struct.gp, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !586
  %135 = icmp eq ptr %134, null
  br i1 %135, label %141, label %136

136:                                              ; preds = %130
  %137 = load ptr, ptr %134, align 8, !tbaa !587
  %138 = getelementptr inbounds %struct.xpvio, ptr %137, i64 0, i32 5
  %139 = load ptr, ptr %138, align 8, !tbaa !629
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %143

141:                                              ; preds = %136, %130, %125, %121
  %142 = call ptr @Perl_PerlIO_stderr() #21
  br label %143

143:                                              ; preds = %136, %141
  %144 = phi ptr [ %142, %141 ], [ %139, %136 ]
  %145 = call i64 @Perl_PerlIO_write(ptr noundef %144, ptr noundef nonnull @.str.15, i64 noundef 11) #21
  %146 = load ptr, ptr @PL_stderrgv, align 8, !tbaa !385
  %147 = icmp eq ptr %146, null
  br i1 %147, label %164, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.gv, ptr %146, i64 0, i32 2
  %150 = load i32, ptr %149, align 4, !tbaa !628
  %151 = and i32 %150, 255
  %152 = icmp eq i32 %151, 9
  br i1 %152, label %153, label %164

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.gv, ptr %146, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !398
  %156 = getelementptr inbounds %struct.gp, ptr %155, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !586
  %158 = icmp eq ptr %157, null
  br i1 %158, label %164, label %159

159:                                              ; preds = %153
  %160 = load ptr, ptr %157, align 8, !tbaa !587
  %161 = getelementptr inbounds %struct.xpvio, ptr %160, i64 0, i32 5
  %162 = load ptr, ptr %161, align 8, !tbaa !629
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %166

164:                                              ; preds = %159, %153, %148, %143
  %165 = call ptr @Perl_PerlIO_stderr() #21
  br label %166

166:                                              ; preds = %159, %164
  %167 = phi ptr [ %165, %164 ], [ %162, %159 ]
  %168 = load i64, ptr %2, align 8, !tbaa !509
  %169 = call i64 @Perl_PerlIO_write(ptr noundef %167, ptr noundef %122, i64 noundef %168) #21
  call void @Perl_my_exit(i32 noundef 1) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  br label %170

170:                                              ; preds = %78, %166
  %171 = getelementptr inbounds %struct.block, ptr %86, i64 0, i32 2
  %172 = load i16, ptr %171, align 2, !tbaa !398
  %173 = trunc i16 %172 to i8
  %174 = and i8 %173, 127
  store i8 %174, ptr @PL_in_eval, align 1, !tbaa !398
  %175 = load i16, ptr %171, align 2, !tbaa !398
  %176 = getelementptr inbounds %struct.block, ptr %86, i64 0, i32 8
  %177 = getelementptr inbounds %struct.block, ptr %86, i64 0, i32 8, i32 0, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !398
  store ptr %178, ptr @PL_eval_root, align 8, !tbaa !385
  %179 = getelementptr inbounds %struct.block, ptr %86, i64 0, i32 8, i32 0, i32 3
  %180 = load ptr, ptr %179, align 8, !tbaa !398
  %181 = icmp eq ptr %180, null
  br i1 %181, label %188, label %182, !prof !624

182:                                              ; preds = %170
  %183 = getelementptr inbounds %struct.sv, ptr %180, i64 0, i32 2
  %184 = load i32, ptr %183, align 4, !tbaa !452
  %185 = and i32 %184, 49152
  %186 = icmp eq i32 %185, 49152
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %180) #22
  br label %188

188:                                              ; preds = %187, %182, %170
  %189 = getelementptr inbounds %struct.block, ptr %86, i64 0, i32 8, i32 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !398
  %191 = icmp eq ptr %190, null
  br i1 %191, label %195, label %192, !prof !624

192:                                              ; preds = %188
  %193 = call ptr @Perl_sv_2mortal(ptr noundef nonnull %190) #21
  %194 = load ptr, ptr %189, align 8, !tbaa !398
  br label %195

195:                                              ; preds = %192, %188
  %196 = phi ptr [ %194, %192 ], [ null, %188 ]
  %197 = getelementptr inbounds %struct.block, ptr %86, i64 0, i32 8, i32 0, i32 5
  %198 = load ptr, ptr %197, align 8, !tbaa !398
  %199 = load ptr, ptr %176, align 8, !tbaa !398
  %200 = icmp eq i8 %104, 2
  br i1 %200, label %201, label %203, !prof !623

201:                                              ; preds = %195
  %202 = getelementptr inbounds ptr, ptr %91, i64 1
  store ptr @PL_sv_undef, ptr %202, align 8, !tbaa !385
  br label %203

203:                                              ; preds = %201, %195
  %204 = phi ptr [ %202, %201 ], [ %91, %195 ]
  store ptr %204, ptr @PL_stack_sp, align 8, !tbaa !385
  call void @Perl_pop_scope() #21
  %205 = and i16 %175, -128
  %206 = icmp eq i16 %205, -22144
  br i1 %206, label %207, label %240, !prof !623

207:                                              ; preds = %203
  %208 = load ptr, ptr @PL_incgv, align 8, !tbaa !385
  %209 = getelementptr inbounds %struct.gv, ptr %208, i64 0, i32 3
  %210 = load ptr, ptr %209, align 8, !tbaa !398
  %211 = getelementptr inbounds %struct.gp, ptr %210, i64 0, i32 5
  %212 = load ptr, ptr %211, align 8, !tbaa !631
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %220

214:                                              ; preds = %207
  %215 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %208, i32 noundef 12) #21
  %216 = getelementptr inbounds %struct.gv, ptr %215, i64 0, i32 3
  %217 = load ptr, ptr %216, align 8, !tbaa !398
  %218 = getelementptr inbounds %struct.gp, ptr %217, i64 0, i32 5
  %219 = load ptr, ptr %218, align 8, !tbaa !631
  br label %220

220:                                              ; preds = %207, %214
  %221 = phi ptr [ %219, %214 ], [ %212, %207 ]
  %222 = getelementptr inbounds %struct.sv, ptr %196, i64 0, i32 3
  %223 = load ptr, ptr %222, align 8, !tbaa !398
  %224 = getelementptr inbounds %struct.sv, ptr %196, i64 0, i32 2
  %225 = load i32, ptr %224, align 4, !tbaa !452
  %226 = and i32 %225, 536870912
  %227 = icmp eq i32 %226, 0
  %228 = load ptr, ptr %196, align 8, !tbaa !487
  %229 = getelementptr inbounds %struct.xpv, ptr %228, i64 0, i32 2
  %230 = load i64, ptr %229, align 8, !tbaa !458
  %231 = trunc i64 %230 to i32
  %232 = sub nsw i32 0, %231
  %233 = select i1 %227, i32 %231, i32 %232
  %234 = call ptr @Perl_hv_common_key_len(ptr noundef %221, ptr noundef %223, i32 noundef %233, i32 noundef 36, ptr noundef nonnull @PL_sv_undef, i32 noundef 0) #21
  %235 = icmp eq ptr %3, null
  br i1 %235, label %236, label %238

236:                                              ; preds = %220
  %237 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.17, i64 noundef 14, i32 noundef 524288) #21
  br label %238

238:                                              ; preds = %220, %236
  %239 = phi ptr [ %237, %236 ], [ %3, %220 ]
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.16, ptr noundef %239) #21
  br label %240

240:                                              ; preds = %238, %203
  br i1 %8, label %241, label %254, !prof !624

241:                                              ; preds = %240
  %242 = load ptr, ptr @PL_errgv, align 8, !tbaa !385
  %243 = getelementptr inbounds %struct.gv, ptr %242, i64 0, i32 3
  %244 = load ptr, ptr %243, align 8, !tbaa !398
  %245 = load ptr, ptr %244, align 8, !tbaa !385
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %252, !prof !623

247:                                              ; preds = %241
  %248 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %242, i32 noundef 0) #21
  %249 = getelementptr inbounds %struct.gv, ptr %248, i64 0, i32 3
  %250 = load ptr, ptr %249, align 8, !tbaa !398
  %251 = load ptr, ptr %250, align 8, !tbaa !385
  br label %252

252:                                              ; preds = %241, %247
  %253 = phi ptr [ %251, %247 ], [ %245, %241 ]
  call void @Perl_sv_setsv_flags(ptr noundef %253, ptr noundef %3, i32 noundef 1538) #21
  br label %254

254:                                              ; preds = %252, %240
  store ptr %198, ptr @PL_restartjmpenv, align 8, !tbaa !385
  store ptr %199, ptr @PL_restartop, align 8, !tbaa !385
  %255 = load ptr, ptr @PL_top_env, align 8, !tbaa !385
  %256 = getelementptr inbounds %struct.jmpenv, ptr %255, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !632
  %258 = icmp eq ptr %257, null
  br i1 %258, label %260, label %259, !prof !623

259:                                              ; preds = %254
  call void @siglongjmp(ptr noundef nonnull %255, i32 noundef 3) #25
  unreachable

260:                                              ; preds = %254
  %261 = call ptr @Perl_PerlIO_stderr() #21
  %262 = call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %261, ptr noundef nonnull @.str.18, i32 noundef 3) #21
  call void @exit(i32 noundef 1) #25
  unreachable

263:                                              ; preds = %32, %1
  tail call void @Perl_write_to_stderr(ptr noundef %3) #21
  tail call void @Perl_my_failure_exit() #21
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @S_dopoptoeval(i32 noundef %0) unnamed_addr #9 !prof !622 !PGOFuncName !634 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %17, !prof !417

3:                                                ; preds = %1
  %4 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %5 = getelementptr inbounds %struct.stackinfo, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !395
  br label %7

7:                                                ; preds = %3, %14
  %8 = phi i32 [ %0, %3 ], [ %15, %14 ]
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.context, ptr %6, i64 %9
  %11 = load i8, ptr %10, align 8, !tbaa !398
  %12 = and i8 %11, 15
  %13 = icmp eq i8 %12, 10
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = add nsw i32 %8, -1
  %16 = icmp sgt i32 %8, 0
  br i1 %16, label %7, label %17, !prof !635, !llvm.loop !636

17:                                               ; preds = %7, %14, %1
  %18 = phi i32 [ %0, %1 ], [ -1, %14 ], [ %8, %7 ]
  ret i32 %18
}

; Function Attrs: optsize
declare void @Perl_croak_popstack() local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_PerlIO_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_PerlIO_stderr() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_my_exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize
declare void @siglongjmp(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare i32 @PerlIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare void @Perl_write_to_stderr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_my_failure_exit() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_xor() local_unnamed_addr #0 !prof !422 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %2 = getelementptr inbounds ptr, ptr %1, i64 -1
  %3 = load ptr, ptr %1, align 8, !tbaa !385
  %4 = load ptr, ptr %2, align 8, !tbaa !385
  %5 = icmp eq ptr %4, null
  br i1 %5, label %65, label %6

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !452
  %9 = and i32 %8, 2097152
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %4, i32 noundef 2) #21
  br label %62

13:                                               ; preds = %6
  %14 = and i32 %8, 65280
  %15 = icmp ne i32 %14, 0
  %16 = and i32 %8, 255
  %17 = icmp eq i32 %16, 8
  %18 = or i1 %15, %17
  %19 = and i32 %8, 16777471
  %20 = icmp eq i32 %19, 16777226
  %21 = or i1 %20, %18
  br i1 %21, label %22, label %62

22:                                               ; preds = %13
  %23 = and i32 %8, 1024
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %4, align 8, !tbaa !487
  %27 = icmp eq ptr %26, null
  br i1 %27, label %62, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.xpv, ptr %26, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !458
  %31 = icmp ugt i64 %30, 1
  br i1 %31, label %62, label %32

32:                                               ; preds = %28
  %33 = icmp eq i64 %30, 0
  br i1 %33, label %62, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !398
  %37 = load i8, ptr %36, align 1, !tbaa !398
  %38 = icmp ne i8 %37, 48
  br label %62

39:                                               ; preds = %22
  %40 = and i32 %8, 768
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %39
  %43 = and i32 %8, 256
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %4, align 8, !tbaa !487
  %47 = getelementptr inbounds %struct.xpviv, ptr %46, i64 0, i32 4
  %48 = load i64, ptr %47, align 8, !tbaa !398
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45, %42
  %51 = and i32 %8, 512
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %4, align 8, !tbaa !487
  %55 = getelementptr inbounds %struct.xpvnv, ptr %54, i64 0, i32 5
  %56 = load double, ptr %55, align 8, !tbaa !398
  %57 = fcmp uno double %56, 0.000000e+00
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = fcmp une double %56, 0.000000e+00
  br label %62

60:                                               ; preds = %39
  %61 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %4, i32 noundef 0) #21
  br label %62

62:                                               ; preds = %45, %53, %58, %50, %25, %32, %34, %28, %13, %60, %11
  %63 = phi i1 [ %12, %11 ], [ %61, %60 ], [ false, %13 ], [ false, %25 ], [ true, %28 ], [ false, %32 ], [ %38, %34 ], [ true, %45 ], [ false, %50 ], [ true, %53 ], [ %59, %58 ]
  %64 = zext i1 %63 to i32
  br label %65

65:                                               ; preds = %0, %62
  %66 = phi i32 [ %64, %62 ], [ 0, %0 ]
  %67 = icmp eq ptr %3, null
  br i1 %67, label %127, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !452
  %71 = and i32 %70, 2097152
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %3, i32 noundef 2) #21
  br label %124

75:                                               ; preds = %68
  %76 = and i32 %70, 65280
  %77 = icmp ne i32 %76, 0
  %78 = and i32 %70, 255
  %79 = icmp eq i32 %78, 8
  %80 = or i1 %77, %79
  %81 = and i32 %70, 16777471
  %82 = icmp eq i32 %81, 16777226
  %83 = or i1 %82, %80
  br i1 %83, label %84, label %124

84:                                               ; preds = %75
  %85 = and i32 %70, 1024
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %101, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %3, align 8, !tbaa !487
  %89 = icmp eq ptr %88, null
  br i1 %89, label %124, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.xpv, ptr %88, i64 0, i32 2
  %92 = load i64, ptr %91, align 8, !tbaa !458
  %93 = icmp ugt i64 %92, 1
  br i1 %93, label %124, label %94

94:                                               ; preds = %90
  %95 = icmp eq i64 %92, 0
  br i1 %95, label %124, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !398
  %99 = load i8, ptr %98, align 1, !tbaa !398
  %100 = icmp ne i8 %99, 48
  br label %124

101:                                              ; preds = %84
  %102 = and i32 %70, 768
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %122, label %104

104:                                              ; preds = %101
  %105 = and i32 %70, 256
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr %3, align 8, !tbaa !487
  %109 = getelementptr inbounds %struct.xpviv, ptr %108, i64 0, i32 4
  %110 = load i64, ptr %109, align 8, !tbaa !398
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %107, %104
  %113 = and i32 %70, 512
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %112
  %116 = load ptr, ptr %3, align 8, !tbaa !487
  %117 = getelementptr inbounds %struct.xpvnv, ptr %116, i64 0, i32 5
  %118 = load double, ptr %117, align 8, !tbaa !398
  %119 = fcmp uno double %118, 0.000000e+00
  br i1 %119, label %124, label %120

120:                                              ; preds = %115
  %121 = fcmp une double %118, 0.000000e+00
  br label %124

122:                                              ; preds = %101
  %123 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %3, i32 noundef 0) #21
  br label %124

124:                                              ; preds = %107, %115, %120, %112, %87, %94, %96, %90, %75, %122, %73
  %125 = phi i1 [ %74, %73 ], [ %123, %122 ], [ false, %75 ], [ false, %87 ], [ true, %90 ], [ false, %94 ], [ %100, %96 ], [ true, %107 ], [ false, %112 ], [ true, %115 ], [ %121, %120 ]
  %126 = zext i1 %125 to i32
  br label %127

127:                                              ; preds = %65, %124
  %128 = phi i32 [ %126, %124 ], [ 0, %65 ]
  %129 = icmp eq i32 %66, %128
  %130 = select i1 %129, ptr @PL_sv_no, ptr @PL_sv_yes
  store ptr %130, ptr %2, align 8, !tbaa !385
  store ptr %2, ptr @PL_stack_sp, align 8, !tbaa !385
  %131 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %132 = load ptr, ptr %131, align 8, !tbaa !400
  ret ptr %132
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_caller() local_unnamed_addr #0 !prof !401 {
  %1 = alloca ptr, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #23
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 5
  %5 = load i8, ptr %4, align 2, !tbaa !428
  %6 = and i8 %5, 3
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8, !prof !412

8:                                                ; preds = %0
  %9 = zext nneg i8 %6 to i32
  br label %13

10:                                               ; preds = %0
  %11 = tail call i32 @Perl_block_gimme() #22, !range !553
  %12 = load ptr, ptr @PL_op, align 8, !tbaa !385
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi ptr [ %3, %8 ], [ %12, %10 ]
  %15 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %16 = getelementptr inbounds %struct.op, ptr %14, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !390
  %18 = and i8 %17, 15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %42, label %20, !prof !637

20:                                               ; preds = %13
  %21 = load ptr, ptr %2, align 8, !tbaa !385
  %22 = icmp eq ptr %21, null
  %23 = getelementptr inbounds ptr, ptr %2, i64 -1
  br i1 %22, label %42, label %24, !prof !638

24:                                               ; preds = %20
  store ptr %21, ptr @PL_Sv, align 8, !tbaa !385
  %25 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !452
  %27 = and i32 %26, 2097408
  %28 = icmp eq i32 %27, 256
  br i1 %28, label %29, label %33, !prof !639

29:                                               ; preds = %24
  %30 = load ptr, ptr %21, align 8, !tbaa !487
  %31 = getelementptr inbounds %struct.xpviv, ptr %30, i64 0, i32 4
  %32 = load i64, ptr %31, align 8, !tbaa !398
  br label %38

33:                                               ; preds = %24
  %34 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %21, i32 noundef 2) #21
  %35 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %36 = getelementptr inbounds %struct.op, ptr %35, i64 0, i32 6
  %37 = load i8, ptr %36, align 1, !tbaa !390
  br label %38

38:                                               ; preds = %33, %29
  %39 = phi i8 [ %17, %29 ], [ %37, %33 ]
  %40 = phi i64 [ %32, %29 ], [ %34, %33 ]
  %41 = trunc i64 %40 to i32
  br label %42

42:                                               ; preds = %20, %13, %38
  %43 = phi i8 [ %39, %38 ], [ %17, %13 ], [ %17, %20 ]
  %44 = phi i1 [ true, %38 ], [ false, %13 ], [ false, %20 ]
  %45 = phi i32 [ %41, %38 ], [ 0, %13 ], [ 0, %20 ]
  %46 = phi ptr [ %23, %38 ], [ %2, %13 ], [ %23, %20 ]
  %47 = lshr i8 %43, 7
  %48 = zext nneg i8 %47 to i32
  %49 = add nsw i32 %45, %48
  %50 = call ptr @Perl_caller_cx(i32 noundef %49, ptr noundef nonnull %1) #22
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %65, !prof !412

52:                                               ; preds = %42
  %53 = icmp eq i32 %15, 3
  br i1 %53, label %346, label %54

54:                                               ; preds = %52
  %55 = load ptr, ptr @PL_stack_max, align 8, !tbaa !385
  %56 = ptrtoint ptr %55 to i64
  %57 = ptrtoint ptr %46 to i64
  %58 = sub i64 %56, %57
  %59 = icmp slt i64 %58, 8
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = call ptr @Perl_stack_grow(ptr noundef %46, ptr noundef %46, i64 noundef 1) #21
  br label %62

62:                                               ; preds = %54, %60
  %63 = phi ptr [ %61, %60 ], [ %46, %54 ]
  %64 = getelementptr inbounds ptr, ptr %63, i64 1
  store ptr @PL_sv_undef, ptr %64, align 8, !tbaa !385
  br label %346

65:                                               ; preds = %42
  %66 = getelementptr inbounds %struct.block, ptr %50, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !398
  %68 = getelementptr inbounds %struct.cop, ptr %67, i64 0, i32 8
  %69 = load ptr, ptr %68, align 8, !tbaa !640
  %70 = getelementptr inbounds %struct.hv, ptr %69, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !641
  %72 = and i32 %71, 33554687
  %73 = icmp eq i32 %72, 33554444
  br i1 %73, label %74, label %90, !prof !643

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.hv, ptr %69, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !398
  %77 = load ptr, ptr %69, align 8, !tbaa !644
  %78 = getelementptr inbounds %struct.xpvhv, ptr %77, i64 0, i32 3
  %79 = load i64, ptr %78, align 8, !tbaa !645
  %80 = getelementptr ptr, ptr %76, i64 %79
  %81 = getelementptr ptr, ptr %80, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !398
  %83 = icmp eq ptr %82, null
  br i1 %83, label %90, label %84, !prof !412

84:                                               ; preds = %74
  %85 = getelementptr i8, ptr %80, i64 36
  %86 = load i32, ptr %85, align 4, !tbaa !647
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %90, label %88, !prof !414

88:                                               ; preds = %84
  %89 = load ptr, ptr %82, align 8, !tbaa !385
  br label %90

90:                                               ; preds = %84, %65, %88, %74
  %91 = phi ptr [ %89, %88 ], [ null, %74 ], [ null, %65 ], [ %82, %84 ]
  %92 = icmp eq i32 %15, 3
  %93 = load ptr, ptr @PL_stack_max, align 8, !tbaa !385
  %94 = ptrtoint ptr %93 to i64
  %95 = ptrtoint ptr %46 to i64
  %96 = sub i64 %94, %95
  br i1 %92, label %114, label %97, !prof !649

97:                                               ; preds = %90
  %98 = icmp slt i64 %96, 8
  br i1 %98, label %99, label %101, !prof !650

99:                                               ; preds = %97
  %100 = call ptr @Perl_stack_grow(ptr noundef %46, ptr noundef %46, i64 noundef 1) #21
  br label %101

101:                                              ; preds = %97, %99
  %102 = phi ptr [ %100, %99 ], [ %46, %97 ]
  %103 = icmp eq ptr %91, null
  br i1 %103, label %104, label %106, !prof !650

104:                                              ; preds = %101
  %105 = getelementptr inbounds ptr, ptr %102, i64 1
  store ptr @PL_sv_undef, ptr %105, align 8, !tbaa !385
  br label %346

106:                                              ; preds = %101
  %107 = load ptr, ptr @PL_curpad, align 8, !tbaa !385
  %108 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %109 = getelementptr inbounds %struct.op, ptr %108, i64 0, i32 3
  %110 = load i64, ptr %109, align 8, !tbaa !442
  %111 = getelementptr inbounds ptr, ptr %107, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !385
  call void @Perl_sv_sethek(ptr noundef %112, ptr noundef nonnull %91) #21
  %113 = getelementptr inbounds ptr, ptr %102, i64 1
  store ptr %112, ptr %113, align 8, !tbaa !385
  br label %346

114:                                              ; preds = %90
  %115 = icmp slt i64 %96, 88
  br i1 %115, label %116, label %118, !prof !651

116:                                              ; preds = %114
  %117 = call ptr @Perl_stack_grow(ptr noundef %46, ptr noundef %46, i64 noundef 11) #21
  br label %118

118:                                              ; preds = %114, %116
  %119 = phi ptr [ %117, %116 ], [ %46, %114 ]
  %120 = icmp eq ptr %91, null
  br i1 %120, label %134, label %121, !prof !651

121:                                              ; preds = %118
  %122 = load ptr, ptr @PL_curpad, align 8, !tbaa !385
  %123 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %124 = getelementptr inbounds %struct.op, ptr %123, i64 0, i32 3
  %125 = load i64, ptr %124, align 8, !tbaa !442
  %126 = getelementptr inbounds ptr, ptr %122, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !385
  call void @Perl_sv_sethek(ptr noundef %127, ptr noundef nonnull %91) #21
  %128 = getelementptr inbounds %struct.sv, ptr %127, i64 0, i32 2
  %129 = load i32, ptr %128, align 4, !tbaa !452
  %130 = and i32 %129, 4194304
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %134, label %132, !prof !652

132:                                              ; preds = %121
  %133 = call i32 @Perl_mg_set(ptr noundef nonnull %127) #21
  br label %134

134:                                              ; preds = %132, %121, %118
  %135 = phi ptr [ @PL_sv_undef, %118 ], [ %127, %121 ], [ %127, %132 ]
  %136 = getelementptr inbounds ptr, ptr %119, i64 1
  store ptr %135, ptr %136, align 8, !tbaa !385
  %137 = load ptr, ptr %66, align 8, !tbaa !398
  %138 = getelementptr inbounds %struct.cop, ptr %137, i64 0, i32 9
  %139 = load ptr, ptr %138, align 8, !tbaa !653
  %140 = icmp eq ptr %139, null
  br i1 %140, label %146, label %141, !prof !651

141:                                              ; preds = %134
  %142 = load ptr, ptr %139, align 8, !tbaa !555
  %143 = getelementptr inbounds %struct.xpvgv, ptr %142, i64 0, i32 4
  %144 = load ptr, ptr %143, align 8, !tbaa !398
  %145 = getelementptr inbounds %struct.hek, ptr %144, i64 0, i32 2, i64 2
  br label %146

146:                                              ; preds = %134, %141
  %147 = phi ptr [ %145, %141 ], [ null, %134 ]
  %148 = call ptr @Perl_newSVpv(ptr noundef %147, i64 noundef 0) #21
  %149 = call ptr @Perl_sv_2mortal(ptr noundef %148) #21
  %150 = getelementptr inbounds ptr, ptr %119, i64 2
  store ptr %149, ptr %150, align 8, !tbaa !385
  %151 = load ptr, ptr %66, align 8, !tbaa !398
  %152 = getelementptr inbounds %struct.cop, ptr %151, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !654
  %154 = getelementptr inbounds %struct.block, ptr %50, i64 0, i32 8
  %155 = load ptr, ptr %154, align 8, !tbaa !398
  %156 = call ptr @Perl_closest_cop(ptr noundef %151, ptr noundef %153, ptr noundef %155, i1 noundef zeroext true) #21
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %160, !prof !651

158:                                              ; preds = %146
  %159 = load ptr, ptr %66, align 8, !tbaa !398
  br label %160

160:                                              ; preds = %158, %146
  %161 = phi ptr [ %156, %146 ], [ %159, %158 ]
  %162 = call ptr @Perl_sv_newmortal() #21
  %163 = getelementptr inbounds ptr, ptr %119, i64 3
  store ptr %162, ptr %163, align 8, !tbaa !385
  %164 = getelementptr inbounds %struct.cop, ptr %161, i64 0, i32 7
  %165 = load i32, ptr %164, align 4, !tbaa !655
  %166 = sext i32 %165 to i64
  call void @Perl_sv_setiv(ptr noundef %162, i64 noundef %166) #21
  br i1 %44, label %167, label %346, !prof !656

167:                                              ; preds = %160
  %168 = load i8, ptr %50, align 8, !tbaa !398
  %169 = and i8 %168, 14
  %170 = icmp eq i8 %169, 8
  br i1 %170, label %171, label %193, !prof !657

171:                                              ; preds = %167
  %172 = load ptr, ptr %1, align 8, !tbaa !385
  %173 = getelementptr inbounds %struct.block, ptr %172, i64 0, i32 8, i32 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !398
  %175 = load ptr, ptr %174, align 8, !tbaa !595
  %176 = getelementptr inbounds %struct.xpvcv, ptr %175, i64 0, i32 7
  %177 = load ptr, ptr %176, align 8, !tbaa !398
  %178 = icmp eq ptr %177, null
  %179 = getelementptr inbounds ptr, ptr %119, i64 4
  %180 = getelementptr inbounds ptr, ptr %119, i64 5
  br i1 %178, label %187, label %181, !prof !658

181:                                              ; preds = %171
  %182 = call ptr @Perl_cv_name(ptr noundef nonnull %174, ptr noundef null, i32 noundef 0) #21
  store ptr %182, ptr %179, align 8, !tbaa !385
  %183 = load i8, ptr %50, align 8, !tbaa !398
  %184 = and i8 %183, 32
  %185 = icmp eq i8 %184, 0
  %186 = select i1 %185, ptr @PL_sv_no, ptr @PL_sv_yes
  store ptr %186, ptr %180, align 8, !tbaa !385
  br label %198

187:                                              ; preds = %171
  %188 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.19, i64 noundef 9, i32 noundef 524288) #21
  store ptr %188, ptr %179, align 8, !tbaa !385
  %189 = load i8, ptr %50, align 8, !tbaa !398
  %190 = and i8 %189, 32
  %191 = icmp eq i8 %190, 0
  %192 = select i1 %191, ptr @PL_sv_no, ptr @PL_sv_yes
  store ptr %192, ptr %180, align 8, !tbaa !385
  br label %198

193:                                              ; preds = %167
  %194 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.20, i64 noundef 6, i32 noundef 524288) #21
  %195 = getelementptr inbounds ptr, ptr %119, i64 4
  store ptr %194, ptr %195, align 8, !tbaa !385
  %196 = call ptr @Perl_sv_newmortal() #21
  %197 = getelementptr inbounds ptr, ptr %119, i64 5
  store ptr %196, ptr %197, align 8, !tbaa !385
  call void @Perl_sv_setiv(ptr noundef %196, i64 noundef 0) #21
  br label %198

198:                                              ; preds = %181, %187, %193
  %199 = getelementptr inbounds %struct.block, ptr %50, i64 0, i32 1
  %200 = load i8, ptr %199, align 1, !tbaa !398
  %201 = icmp eq i8 %200, 1
  %202 = and i8 %200, 3
  %203 = icmp eq i8 %202, 3
  %204 = select i1 %203, ptr @PL_sv_yes, ptr @PL_sv_no
  %205 = select i1 %201, ptr @PL_sv_undef, ptr %204, !prof !658
  %206 = getelementptr inbounds ptr, ptr %119, i64 6
  store ptr %205, ptr %206, align 8
  %207 = load i8, ptr %50, align 8, !tbaa !398
  %208 = and i8 %207, 15
  %209 = icmp eq i8 %208, 10
  br i1 %209, label %210, label %241, !prof !616

210:                                              ; preds = %198
  %211 = getelementptr inbounds %struct.block, ptr %50, i64 0, i32 2
  %212 = load i16, ptr %211, align 2, !tbaa !398
  %213 = and i16 %212, -128
  %214 = icmp eq i16 %213, -21760
  br i1 %214, label %215, label %234

215:                                              ; preds = %210
  %216 = getelementptr inbounds %struct.block, ptr %50, i64 0, i32 8, i32 0, i32 3
  %217 = load ptr, ptr %216, align 8, !tbaa !398
  %218 = load ptr, ptr %217, align 8, !tbaa !487
  %219 = getelementptr inbounds %struct.xpv, ptr %218, i64 0, i32 2
  %220 = load i64, ptr %219, align 8, !tbaa !458
  %221 = icmp ugt i64 %220, 1
  br i1 %221, label %222, label %231

222:                                              ; preds = %215
  %223 = getelementptr inbounds %struct.sv, ptr %217, i64 0, i32 3
  %224 = load ptr, ptr %223, align 8, !tbaa !398
  %225 = add i64 %220, -2
  %226 = getelementptr inbounds %struct.sv, ptr %217, i64 0, i32 2
  %227 = load i32, ptr %226, align 4, !tbaa !452
  %228 = and i32 %227, 536870912
  %229 = or disjoint i32 %228, 524288
  %230 = call ptr @Perl_newSVpvn_flags(ptr noundef %224, i64 noundef %225, i32 noundef %229) #21
  br label %241

231:                                              ; preds = %215
  %232 = call ptr @Perl_newSVsv(ptr noundef nonnull %217) #21
  %233 = call ptr @Perl_sv_2mortal(ptr noundef %232) #21
  br label %241

234:                                              ; preds = %210
  %235 = getelementptr inbounds %struct.block, ptr %50, i64 0, i32 8, i32 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !398
  %237 = icmp eq ptr %236, null
  br i1 %237, label %241, label %238

238:                                              ; preds = %234
  %239 = call ptr @Perl_newSVsv(ptr noundef nonnull %236) #21
  %240 = call ptr @Perl_sv_2mortal(ptr noundef %239) #21
  br label %241

241:                                              ; preds = %198, %234, %222, %231, %238
  %242 = phi ptr [ %240, %238 ], [ %230, %222 ], [ %233, %231 ], [ @PL_sv_undef, %234 ], [ @PL_sv_undef, %198 ]
  %243 = phi ptr [ @PL_sv_yes, %238 ], [ @PL_sv_no, %222 ], [ @PL_sv_no, %231 ], [ @PL_sv_undef, %234 ], [ @PL_sv_undef, %198 ]
  %244 = getelementptr inbounds ptr, ptr %119, i64 7
  store ptr %242, ptr %244, align 8
  %245 = getelementptr inbounds ptr, ptr %119, i64 8
  store ptr %243, ptr %245, align 8, !tbaa !385
  %246 = load i8, ptr %50, align 8, !tbaa !398
  %247 = and i8 %246, 47
  %248 = icmp eq i8 %247, 40
  br i1 %248, label %249, label %299, !prof !659

249:                                              ; preds = %241
  %250 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %251 = getelementptr inbounds %struct.cop, ptr %250, i64 0, i32 8
  %252 = load ptr, ptr %251, align 8, !tbaa !640
  %253 = load ptr, ptr @PL_debstash, align 8, !tbaa !385
  %254 = icmp eq ptr %252, %253
  br i1 %254, label %255, label %299, !prof !616

255:                                              ; preds = %249
  %256 = getelementptr inbounds %struct.block, ptr %50, i64 0, i32 8, i32 0, i32 3
  %257 = load ptr, ptr %256, align 8, !tbaa !398
  %258 = getelementptr inbounds %struct.av, ptr %257, i64 0, i32 3
  %259 = load ptr, ptr %258, align 8, !tbaa !398
  %260 = load ptr, ptr %257, align 8, !tbaa !607
  %261 = getelementptr inbounds %struct.xpvav, ptr %260, i64 0, i32 4
  %262 = load ptr, ptr %261, align 8, !tbaa !610
  %263 = ptrtoint ptr %259 to i64
  %264 = ptrtoint ptr %262 to i64
  %265 = sub i64 %263, %264
  %266 = ashr exact i64 %265, 3
  call void @Perl_init_dbargs() #21
  %267 = load ptr, ptr @PL_dbargs, align 8, !tbaa !385
  %268 = load ptr, ptr %267, align 8, !tbaa !607
  %269 = getelementptr inbounds %struct.xpvav, ptr %268, i64 0, i32 3
  %270 = load i64, ptr %269, align 8, !tbaa !611
  %271 = load ptr, ptr %257, align 8, !tbaa !607
  %272 = getelementptr inbounds %struct.xpvav, ptr %271, i64 0, i32 2
  %273 = load i64, ptr %272, align 8, !tbaa !608
  %274 = add nsw i64 %273, %266
  %275 = icmp slt i64 %270, %274
  br i1 %275, label %276, label %281

276:                                              ; preds = %255
  call void @Perl_av_extend(ptr noundef nonnull %267, i64 noundef %274) #21
  %277 = load ptr, ptr @PL_dbargs, align 8, !tbaa !385
  %278 = load ptr, ptr %257, align 8, !tbaa !607
  %279 = getelementptr inbounds %struct.xpvav, ptr %278, i64 0, i32 2
  %280 = load i64, ptr %279, align 8, !tbaa !608
  br label %281

281:                                              ; preds = %276, %255
  %282 = phi i64 [ %280, %276 ], [ %273, %255 ]
  %283 = phi ptr [ %278, %276 ], [ %271, %255 ]
  %284 = phi ptr [ %277, %276 ], [ %267, %255 ]
  %285 = getelementptr inbounds %struct.av, ptr %284, i64 0, i32 3
  %286 = load ptr, ptr %285, align 8, !tbaa !398
  %287 = getelementptr inbounds %struct.xpvav, ptr %283, i64 0, i32 4
  %288 = load ptr, ptr %287, align 8, !tbaa !610
  %289 = add nsw i64 %266, 1
  %290 = add i64 %289, %282
  %291 = shl i64 %290, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %286, ptr align 1 %288, i64 %291, i1 false)
  %292 = load ptr, ptr %257, align 8, !tbaa !607
  %293 = getelementptr inbounds %struct.xpvav, ptr %292, i64 0, i32 2
  %294 = load i64, ptr %293, align 8, !tbaa !608
  %295 = add nsw i64 %294, %266
  %296 = load ptr, ptr @PL_dbargs, align 8, !tbaa !385
  %297 = load ptr, ptr %296, align 8, !tbaa !607
  %298 = getelementptr inbounds %struct.xpvav, ptr %297, i64 0, i32 2
  store i64 %295, ptr %298, align 8, !tbaa !608
  br label %299

299:                                              ; preds = %281, %249, %241
  %300 = call ptr @Perl_sv_newmortal() #21
  %301 = getelementptr inbounds ptr, ptr %119, i64 9
  store ptr %300, ptr %301, align 8, !tbaa !385
  %302 = load ptr, ptr %66, align 8, !tbaa !398
  %303 = getelementptr inbounds %struct.cop, ptr %302, i64 0, i32 10
  %304 = load i32, ptr %303, align 8, !tbaa !482
  %305 = zext i32 %304 to i64
  call void @Perl_sv_setiv(ptr noundef %300, i64 noundef %305) #21
  %306 = load ptr, ptr %66, align 8, !tbaa !398
  %307 = getelementptr inbounds %struct.cop, ptr %306, i64 0, i32 12
  %308 = load ptr, ptr %307, align 8, !tbaa !660
  %309 = ptrtoint ptr %308 to i64
  switch i64 %309, label %327 [
    i64 16, label %310
    i64 0, label %312
    i64 8, label %316
  ], !prof !661

310:                                              ; preds = %299
  %311 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.21, i64 noundef 17) #21
  br label %331

312:                                              ; preds = %299
  %313 = load i8, ptr @PL_dowarn, align 1, !tbaa !398
  %314 = and i8 %313, 1
  %315 = icmp eq i8 %314, 0
  br i1 %315, label %331, label %316, !prof !658

316:                                              ; preds = %312, %299
  %317 = call ptr @Perl_get_hv(ptr noundef nonnull @.str.22, i32 noundef 0) #21
  %318 = icmp eq ptr %317, null
  br i1 %318, label %325, label %319

319:                                              ; preds = %316
  %320 = call ptr @Perl_hv_common(ptr noundef nonnull %317, ptr noundef null, ptr noundef nonnull @.str.23, i64 noundef 3, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #21
  %321 = icmp eq ptr %320, null
  br i1 %321, label %325, label %322

322:                                              ; preds = %319
  %323 = load ptr, ptr %320, align 8, !tbaa !385
  %324 = call ptr @Perl_newSVsv(ptr noundef %323) #21
  br label %331

325:                                              ; preds = %319, %316
  %326 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.24, i64 noundef 17) #21
  br label %331

327:                                              ; preds = %299
  %328 = getelementptr inbounds i64, ptr %308, i64 1
  %329 = load i64, ptr %308, align 8, !tbaa !509
  %330 = call ptr @Perl_newSVpvn(ptr noundef nonnull %328, i64 noundef %329) #21
  br label %331

331:                                              ; preds = %322, %325, %312, %327, %310
  %332 = phi ptr [ %311, %310 ], [ %330, %327 ], [ @PL_sv_undef, %312 ], [ %324, %322 ], [ %326, %325 ]
  %333 = call ptr @Perl_sv_2mortal(ptr noundef %332) #21
  %334 = getelementptr inbounds ptr, ptr %119, i64 10
  store ptr %333, ptr %334, align 8, !tbaa !385
  %335 = load ptr, ptr %66, align 8, !tbaa !398
  %336 = getelementptr inbounds %struct.cop, ptr %335, i64 0, i32 13
  %337 = load ptr, ptr %336, align 8, !tbaa !662
  %338 = icmp eq ptr %337, null
  br i1 %338, label %343, label %339, !prof !658

339:                                              ; preds = %331
  %340 = call ptr @Perl_refcounted_he_chain_2hv(ptr noundef nonnull %337, i32 noundef 0) #21
  %341 = call ptr @Perl_newRV_noinc(ptr noundef %340) #21
  %342 = call ptr @Perl_sv_2mortal(ptr noundef %341) #21
  br label %343

343:                                              ; preds = %331, %339
  %344 = phi ptr [ %342, %339 ], [ @PL_sv_undef, %331 ]
  %345 = getelementptr inbounds ptr, ptr %119, i64 11
  store ptr %344, ptr %345, align 8, !tbaa !385
  br label %346

346:                                              ; preds = %160, %104, %106, %52, %343, %62
  %347 = phi ptr [ %345, %343 ], [ %64, %62 ], [ %46, %52 ], [ %113, %106 ], [ %105, %104 ], [ %163, %160 ]
  store ptr %347, ptr @PL_stack_sp, align 8, !tbaa !385
  %348 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %349 = load ptr, ptr %348, align 8, !tbaa !400
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #23
  ret ptr %349
}

; Function Attrs: optsize
declare void @Perl_sv_sethek(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_closest_cop(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_cv_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_init_dbargs() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_get_hv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newRV_noinc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_refcounted_he_chain_2hv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_reset() local_unnamed_addr #0 !prof !422 {
  %1 = alloca i64, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #23
  store i64 0, ptr %1, align 8, !tbaa !509
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 1, !tbaa !390
  %6 = and i8 %5, 15
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %0
  %9 = load ptr, ptr %2, align 8, !tbaa !385
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds ptr, ptr %2, i64 -1
  br i1 %10, label %26, label %12

12:                                               ; preds = %8
  store ptr %9, ptr @PL_Sv, align 8, !tbaa !385
  %13 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !452
  %15 = and i32 %14, 2098176
  %16 = icmp eq i32 %15, 1024
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load ptr, ptr %9, align 8, !tbaa !487
  %19 = getelementptr inbounds %struct.xpv, ptr %18, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !458
  store i64 %20, ptr %1, align 8, !tbaa !509
  %21 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !398
  br label %26

23:                                               ; preds = %12
  %24 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %9, ptr noundef nonnull %1, i32 noundef 34) #21
  %25 = load i64, ptr %1, align 8, !tbaa !509
  br label %26

26:                                               ; preds = %0, %8, %17, %23
  %27 = phi i64 [ %25, %23 ], [ %20, %17 ], [ 0, %8 ], [ 0, %0 ]
  %28 = phi ptr [ %11, %23 ], [ %11, %17 ], [ %11, %8 ], [ %2, %0 ]
  %29 = phi ptr [ %24, %23 ], [ %22, %17 ], [ null, %8 ], [ null, %0 ]
  %30 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %31 = getelementptr inbounds %struct.cop, ptr %30, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !640
  call void @Perl_sv_resetpvn(ptr noundef %29, i64 noundef %27, ptr noundef %32) #21
  %33 = getelementptr inbounds ptr, ptr %28, i64 1
  store ptr @PL_sv_yes, ptr %33, align 8, !tbaa !385
  store ptr %33, ptr @PL_stack_sp, align 8, !tbaa !385
  %34 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %35 = load ptr, ptr %34, align 8, !tbaa !400
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #23
  ret ptr %35
}

; Function Attrs: optsize
declare void @Perl_sv_resetpvn(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_dbstate() local_unnamed_addr #0 !prof !422 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !385
  store ptr %1, ptr @PL_curcop, align 8, !tbaa !385
  store i8 0, ptr @PL_tainted, align 1, !tbaa !423
  %2 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %3 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %4 = getelementptr inbounds %struct.stackinfo, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !395
  %6 = getelementptr inbounds %struct.stackinfo, ptr %3, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !397
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.context, ptr %5, i64 %8, i32 0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !398
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %2, i64 %11
  store ptr %12, ptr @PL_stack_sp, align 8, !tbaa !385
  %13 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  %14 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !509
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  tail call void @Perl_free_tmps() #21
  br label %17

17:                                               ; preds = %16, %0
  %18 = load i32, ptr @PL_sig_pending, align 4, !tbaa !430
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @PL_signalhook, align 8, !tbaa !385
  tail call void %21() #21
  br label %22

22:                                               ; preds = %17, %20
  %23 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %24 = getelementptr inbounds %struct.op, ptr %23, i64 0, i32 5
  %25 = load i8, ptr %24, align 2, !tbaa !428
  %26 = icmp slt i8 %25, 0
  %27 = load i64, ptr @PL_DBcontrol, align 16
  %28 = icmp ne i64 %27, 0
  %29 = select i1 %26, i1 true, i1 %28
  %30 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @PL_DBcontrol, i64 0, i64 2), align 16
  %31 = icmp ne i64 %30, 0
  %32 = select i1 %29, i1 true, i1 %31
  %33 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @PL_DBcontrol, i64 0, i64 1), align 8
  %34 = icmp ne i64 %33, 0
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %36, label %207

36:                                               ; preds = %22
  %37 = load ptr, ptr @PL_DBgv, align 8, !tbaa !385
  %38 = icmp eq ptr %37, null
  br i1 %38, label %59, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.gv, ptr %37, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !628
  %42 = and i32 %41, 49152
  %43 = icmp eq i32 %42, 32768
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = and i32 %41, 255
  %46 = add nsw i32 %45, -9
  %47 = icmp ult i32 %46, 2
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.gv, ptr %37, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !398
  %51 = getelementptr inbounds %struct.gp, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !409
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %48
  %55 = load ptr, ptr %52, align 8, !tbaa !595
  %56 = getelementptr inbounds %struct.xpvcv, ptr %55, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !398
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %44, %36, %39, %54, %48
  %60 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.25) #21
  br label %209

61:                                               ; preds = %54
  %62 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %52) #22
  %63 = load i32, ptr %62, align 4, !tbaa !430
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load volatile i32, ptr @PL_debug, align 4, !tbaa !430
  %67 = and i32 %66, 1073741824
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load ptr, ptr %23, align 8, !tbaa !400
  br label %209

71:                                               ; preds = %65, %61
  tail call void @Perl_push_scope() #21
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #21
  %72 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  store i64 %72, ptr @PL_tmps_floor, align 8, !tbaa !509
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_debug) #21
  %73 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !430
  %74 = load ptr, ptr @PL_savestack, align 8, !tbaa !385
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds %union.any, ptr %74, i64 %75
  %77 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %78 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %79 = ptrtoint ptr %77 to i64
  %80 = ptrtoint ptr %78 to i64
  %81 = sub i64 %79, %80
  %82 = lshr exact i64 %81, 3
  %83 = trunc i64 %82 to i32
  %84 = getelementptr inbounds %union.any, ptr %76, i64 1
  store i32 %83, ptr %76, align 8, !tbaa !398
  store i64 20, ptr %84, align 8, !tbaa !398
  %85 = add nsw i32 %73, 2
  store i32 %85, ptr @PL_savestack_ix, align 4, !tbaa !430
  %86 = add nsw i32 %73, 6
  %87 = load i32, ptr @PL_savestack_max, align 4, !tbaa !430
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %71
  tail call void @Perl_savestack_grow() #21
  br label %90

90:                                               ; preds = %71, %89
  store volatile i32 0, ptr @PL_debug, align 4, !tbaa !430
  %91 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %92 = load ptr, ptr %52, align 8, !tbaa !595
  %93 = getelementptr inbounds %struct.xpvcv, ptr %92, i64 0, i32 12
  %94 = load i32, ptr %93, align 4, !tbaa !597
  %95 = and i32 %94, 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %122, label %97

97:                                               ; preds = %90
  %98 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %99 = getelementptr inbounds i32, ptr %98, i64 1
  store ptr %99, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %100 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !385
  %101 = icmp eq ptr %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = tail call ptr @Perl_markstack_grow() #21
  br label %104

104:                                              ; preds = %97, %102
  %105 = phi ptr [ %103, %102 ], [ %99, %97 ]
  %106 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %107 = ptrtoint ptr %91 to i64
  %108 = ptrtoint ptr %106 to i64
  %109 = sub i64 %107, %108
  %110 = lshr exact i64 %109, 3
  %111 = trunc i64 %110 to i32
  store i32 %111, ptr %105, align 4, !tbaa !430
  %112 = load ptr, ptr %52, align 8, !tbaa !595
  %113 = getelementptr inbounds %struct.xpvcv, ptr %112, i64 0, i32 6
  %114 = load ptr, ptr %113, align 8, !tbaa !398
  tail call void %114(ptr noundef nonnull %52) #21
  %115 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  %116 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !509
  %117 = icmp sgt i64 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %104
  tail call void @Perl_free_tmps() #21
  br label %119

119:                                              ; preds = %118, %104
  tail call void @Perl_pop_scope() #21
  %120 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %121 = load ptr, ptr %120, align 8, !tbaa !400
  br label %209

122:                                              ; preds = %90
  %123 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %124 = getelementptr inbounds %struct.stackinfo, ptr %123, i64 0, i32 4
  %125 = load i32, ptr %124, align 8, !tbaa !397
  %126 = getelementptr inbounds %struct.stackinfo, ptr %123, i64 0, i32 5
  %127 = load i32, ptr %126, align 4, !tbaa !663
  %128 = icmp slt i32 %125, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = add nsw i32 %125, 1
  store i32 %130, ptr %124, align 8, !tbaa !397
  br label %135

131:                                              ; preds = %122
  %132 = tail call i32 @Perl_cxinc() #21
  %133 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %134 = getelementptr inbounds %struct.stackinfo, ptr %133, i64 0, i32 4
  store i32 %132, ptr %134, align 8, !tbaa !397
  br label %135

135:                                              ; preds = %131, %129
  %136 = phi i32 [ %132, %131 ], [ %130, %129 ]
  %137 = phi ptr [ %133, %131 ], [ %123, %129 ]
  %138 = getelementptr inbounds %struct.stackinfo, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !395
  %140 = sext i32 %136 to i64
  %141 = getelementptr inbounds %struct.context, ptr %139, i64 %140
  store i8 8, ptr %141, align 8, !tbaa !398
  %142 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %143 = ptrtoint ptr %91 to i64
  %144 = ptrtoint ptr %142 to i64
  %145 = sub i64 %143, %144
  %146 = lshr exact i64 %145, 3
  %147 = trunc i64 %146 to i32
  %148 = getelementptr inbounds %struct.block, ptr %141, i64 0, i32 3
  store i32 %147, ptr %148, align 4, !tbaa !398
  %149 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %150 = getelementptr inbounds %struct.block, ptr %141, i64 0, i32 4
  store ptr %149, ptr %150, align 8, !tbaa !398
  %151 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %152 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %153 = ptrtoint ptr %151 to i64
  %154 = ptrtoint ptr %152 to i64
  %155 = sub i64 %153, %154
  %156 = lshr exact i64 %155, 2
  %157 = trunc i64 %156 to i32
  %158 = getelementptr inbounds %struct.block, ptr %141, i64 0, i32 5
  store i32 %157, ptr %158, align 8, !tbaa !398
  %159 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %160 = getelementptr inbounds %struct.block, ptr %141, i64 0, i32 6
  store i32 %159, ptr %160, align 4, !tbaa !398
  %161 = load ptr, ptr @PL_curpm, align 8, !tbaa !385
  %162 = getelementptr inbounds %struct.block, ptr %141, i64 0, i32 7
  store ptr %161, ptr %162, align 8, !tbaa !398
  %163 = getelementptr inbounds %struct.block, ptr %141, i64 0, i32 1
  store i8 3, ptr %163, align 1, !tbaa !398
  %164 = getelementptr inbounds %struct.block, ptr %141, i64 0, i32 8
  %165 = getelementptr inbounds %struct.block, ptr %141, i64 0, i32 8, i32 0, i32 1
  store ptr %52, ptr %165, align 8, !tbaa !398
  %166 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %52) #22
  %167 = load i32, ptr %166, align 4, !tbaa !430
  %168 = getelementptr inbounds %struct.block, ptr %141, i64 0, i32 8, i32 0, i32 4
  store i32 %167, ptr %168, align 8, !tbaa !398
  store ptr null, ptr %164, align 8, !tbaa !398
  %169 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %52) #22
  %170 = load i32, ptr %169, align 4, !tbaa !430
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %135
  %173 = getelementptr inbounds %struct.sv, ptr %52, i64 0, i32 1
  %174 = load i32, ptr %173, align 8, !tbaa !468
  %175 = add i32 %174, 2
  store i32 %175, ptr %173, align 8, !tbaa !468
  tail call void @Perl_save_pushptr(ptr noundef nonnull %52, i32 noundef 11) #21
  br label %176

176:                                              ; preds = %172, %135
  %177 = getelementptr inbounds %struct.block, ptr %141, i64 0, i32 2
  store i16 0, ptr %177, align 2, !tbaa !398
  %178 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %179 = load ptr, ptr %178, align 8, !tbaa !400
  store ptr %179, ptr %164, align 8, !tbaa !398
  %180 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %52) #22
  %181 = load i32, ptr %180, align 4, !tbaa !430
  %182 = add nsw i32 %181, 1
  store i32 %182, ptr %180, align 4, !tbaa !430
  %183 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %52) #22
  %184 = load i32, ptr %183, align 4, !tbaa !430
  %185 = icmp sgt i32 %184, 1
  br i1 %185, label %186, label %190

186:                                              ; preds = %176
  %187 = load ptr, ptr %52, align 8, !tbaa !595
  %188 = getelementptr inbounds %struct.xpvcv, ptr %187, i64 0, i32 9
  %189 = load ptr, ptr %188, align 8, !tbaa !398
  tail call void @Perl_pad_push(ptr noundef %189, i32 noundef %184) #21
  br label %190

190:                                              ; preds = %186, %176
  %191 = load ptr, ptr @PL_comppad, align 8, !tbaa !385
  tail call void @Perl_save_pushptr(ptr noundef %191, i32 noundef 7) #21
  %192 = load ptr, ptr %52, align 8, !tbaa !595
  %193 = getelementptr inbounds %struct.xpvcv, ptr %192, i64 0, i32 9
  %194 = load ptr, ptr %193, align 8, !tbaa !398
  %195 = getelementptr inbounds %struct.padlist, ptr %194, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !664
  %197 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %52) #22
  %198 = load i32, ptr %197, align 4, !tbaa !430
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds ptr, ptr %196, i64 %199
  %201 = load ptr, ptr %200, align 8, !tbaa !385
  store ptr %201, ptr @PL_comppad, align 8, !tbaa !385
  %202 = getelementptr inbounds %struct.av, ptr %201, i64 0, i32 3
  %203 = load ptr, ptr %202, align 8, !tbaa !398
  store ptr %203, ptr @PL_curpad, align 8, !tbaa !385
  store ptr %91, ptr @PL_stack_sp, align 8, !tbaa !385
  %204 = load ptr, ptr %52, align 8, !tbaa !595
  %205 = getelementptr inbounds %struct.xpvcv, ptr %204, i64 0, i32 5
  %206 = load ptr, ptr %205, align 8, !tbaa !398
  br label %209

207:                                              ; preds = %22
  %208 = load ptr, ptr %23, align 8, !tbaa !400
  br label %209

209:                                              ; preds = %59, %69, %119, %190, %207
  %210 = phi ptr [ %208, %207 ], [ %121, %119 ], [ %206, %190 ], [ %70, %69 ], [ %60, %59 ]
  ret ptr %210
}

; Function Attrs: optsize
declare void @Perl_save_I32(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_savestack_grow() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_markstack_grow() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_cxinc() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_pad_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_enter() local_unnamed_addr #0 !prof !666 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5
  %4 = load i8, ptr %3, align 2, !tbaa !428
  %5 = and i8 %4, 3
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10, !prof !667

7:                                                ; preds = %0
  %8 = tail call i32 @Perl_block_gimme() #22, !range !553
  %9 = trunc i32 %8 to i8
  br label %10

10:                                               ; preds = %0, %7
  %11 = phi i8 [ %9, %7 ], [ %5, %0 ]
  tail call void @Perl_push_scope() #21
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #21
  %12 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  store i64 %12, ptr @PL_tmps_floor, align 8, !tbaa !509
  %13 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %14 = getelementptr inbounds %struct.stackinfo, ptr %13, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !397
  %16 = getelementptr inbounds %struct.stackinfo, ptr %13, i64 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !663
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %21, !prof !668

19:                                               ; preds = %10
  %20 = add nsw i32 %15, 1
  store i32 %20, ptr %14, align 8, !tbaa !397
  br label %25

21:                                               ; preds = %10
  %22 = tail call i32 @Perl_cxinc() #21
  %23 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %24 = getelementptr inbounds %struct.stackinfo, ptr %23, i64 0, i32 4
  store i32 %22, ptr %24, align 8, !tbaa !397
  br label %25

25:                                               ; preds = %21, %19
  %26 = phi i32 [ %22, %21 ], [ %20, %19 ]
  %27 = phi ptr [ %23, %21 ], [ %13, %19 ]
  %28 = getelementptr inbounds %struct.stackinfo, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !395
  %30 = sext i32 %26 to i64
  %31 = getelementptr inbounds %struct.context, ptr %29, i64 %30
  store i8 2, ptr %31, align 8, !tbaa !398
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %33 = ptrtoint ptr %1 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  %36 = lshr exact i64 %35, 3
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 3
  store i32 %37, ptr %38, align 4, !tbaa !398
  %39 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %40 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 4
  store ptr %39, ptr %40, align 8, !tbaa !398
  %41 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %42 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %43 = ptrtoint ptr %41 to i64
  %44 = ptrtoint ptr %42 to i64
  %45 = sub i64 %43, %44
  %46 = lshr exact i64 %45, 2
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 5
  store i32 %47, ptr %48, align 8, !tbaa !398
  %49 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %50 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 6
  store i32 %49, ptr %50, align 4, !tbaa !398
  %51 = load ptr, ptr @PL_curpm, align 8, !tbaa !385
  %52 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 7
  store ptr %51, ptr %52, align 8, !tbaa !398
  %53 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 1
  store i8 %11, ptr %53, align 1, !tbaa !398
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !385
  %54 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %55 = load ptr, ptr %54, align 8, !tbaa !400
  ret ptr %55
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_leave() local_unnamed_addr #0 !prof !669 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5
  %4 = load i8, ptr %3, align 2, !tbaa !428
  %5 = icmp sgt i8 %4, -1
  br i1 %5, label %18, label %6, !prof !670

6:                                                ; preds = %0
  %7 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %8 = getelementptr inbounds %struct.stackinfo, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !395
  %10 = getelementptr inbounds %struct.stackinfo, ptr %7, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !397
  %12 = sext i32 %11 to i64
  %13 = load ptr, ptr @PL_curpm, align 8, !tbaa !385
  %14 = getelementptr inbounds %struct.context, ptr %9, i64 %12, i32 0, i32 0, i32 6
  store ptr %13, ptr %14, align 8, !tbaa !398
  %15 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %16 = getelementptr inbounds %struct.op, ptr %15, i64 0, i32 5
  %17 = load i8, ptr %16, align 2, !tbaa !428
  br label %18

18:                                               ; preds = %6, %0
  %19 = phi i8 [ %17, %6 ], [ %4, %0 ]
  %20 = phi ptr [ %15, %6 ], [ %2, %0 ]
  %21 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %22 = getelementptr inbounds %struct.stackinfo, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !395
  %24 = getelementptr inbounds %struct.stackinfo, ptr %21, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !397
  %26 = add nsw i32 %25, -1
  store i32 %26, ptr %24, align 8, !tbaa !397
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds %struct.context, ptr %23, i64 %27
  %29 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %30 = getelementptr inbounds %struct.block, ptr %28, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !398
  %32 = getelementptr inbounds %struct.block, ptr %28, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !398
  store ptr %33, ptr @PL_curcop, align 8, !tbaa !385
  %34 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %35 = getelementptr inbounds %struct.block, ptr %28, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !398
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, ptr %34, i64 %37
  store ptr %38, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %39 = getelementptr inbounds %struct.block, ptr %28, i64 0, i32 6
  %40 = load i32, ptr %39, align 4, !tbaa !398
  store i32 %40, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %41 = getelementptr inbounds %struct.block, ptr %28, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !398
  %43 = and i8 %19, 3
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %47, label %45, !prof !671

45:                                               ; preds = %18
  %46 = zext nneg i8 %43 to i32
  br label %53

47:                                               ; preds = %18
  %48 = getelementptr inbounds %struct.block, ptr %28, i64 0, i32 1
  %49 = load i8, ptr %48, align 1, !tbaa !398
  %50 = zext i8 %49 to i32
  %51 = icmp sgt i32 %25, 0
  %52 = select i1 %51, i32 %50, i32 2, !prof !671
  br label %53

53:                                               ; preds = %47, %45
  %54 = phi i32 [ %46, %45 ], [ %52, %47 ]
  %55 = sext i32 %31 to i64
  %56 = getelementptr inbounds ptr, ptr %29, i64 %55
  %57 = getelementptr inbounds %struct.op, ptr %20, i64 0, i32 6
  %58 = load i8, ptr %57, align 1, !tbaa !390
  %59 = icmp slt i8 %58, 0
  %60 = tail call fastcc ptr @S_leave_common(ptr noundef %56, ptr noundef %1, ptr noundef %56, i32 noundef %54, i32 noundef 655360, i1 noundef zeroext %59) #22
  store ptr %42, ptr @PL_curpm, align 8, !tbaa !385
  tail call void @Perl_pop_scope() #21
  store ptr %60, ptr @PL_stack_sp, align 8, !tbaa !385
  %61 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %62 = load ptr, ptr %61, align 8, !tbaa !400
  ret ptr %62
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @S_leave_common(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 !prof !672 !PGOFuncName !673 {
  store i8 0, ptr @PL_tainted, align 1, !tbaa !423
  %7 = and i32 %4, -131073
  switch i32 %3, label %75 [
    i32 2, label %11
    i32 3, label %8
  ], !prof !674

8:                                                ; preds = %6
  %9 = getelementptr inbounds ptr, ptr %2, i64 1
  %10 = icmp ugt ptr %9, %1
  br i1 %10, label %75, label %50, !prof !675

11:                                               ; preds = %6
  %12 = icmp ult ptr %2, %1
  br i1 %12, label %13, label %34, !prof !676

13:                                               ; preds = %11
  %14 = load ptr, ptr %1, align 8, !tbaa !385
  %15 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !452
  %17 = and i32 %16, %7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %31, !prof !677

19:                                               ; preds = %13
  %20 = and i32 %4, 131072
  %21 = and i32 %20, %16
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31, !prof !678

23:                                               ; preds = %19
  br i1 %5, label %24, label %29, !prof !679

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !468
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 8, !tbaa !468
  %28 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %14) #21
  br label %31

29:                                               ; preds = %23
  %30 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %14, i32 noundef 1538) #21
  br label %31

31:                                               ; preds = %13, %19, %24, %29
  %32 = phi ptr [ %28, %24 ], [ %30, %29 ], [ %14, %19 ], [ %14, %13 ]
  %33 = getelementptr inbounds ptr, ptr %0, i64 1
  store ptr %32, ptr %33, align 8, !tbaa !385
  br label %75

34:                                               ; preds = %11
  %35 = load ptr, ptr @PL_stack_max, align 8, !tbaa !385
  %36 = ptrtoint ptr %35 to i64
  %37 = ptrtoint ptr %0 to i64
  %38 = sub i64 %36, %37
  %39 = icmp slt i64 %38, 8
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %42 = ptrtoint ptr %41 to i64
  %43 = sub i64 %37, %42
  %44 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %0, i64 noundef 1) #21
  %45 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %46 = getelementptr inbounds i8, ptr %45, i64 %43
  br label %47

47:                                               ; preds = %34, %40
  %48 = phi ptr [ %46, %40 ], [ %0, %34 ]
  %49 = getelementptr inbounds ptr, ptr %48, i64 1
  store ptr @PL_sv_undef, ptr %49, align 8, !tbaa !385
  br label %75

50:                                               ; preds = %8, %71
  %51 = phi ptr [ %73, %71 ], [ %9, %8 ]
  %52 = phi ptr [ %72, %71 ], [ %0, %8 ]
  %53 = load ptr, ptr %51, align 8, !tbaa !385
  %54 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !452
  %56 = and i32 %55, %4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58, !prof !680

58:                                               ; preds = %50
  %59 = getelementptr inbounds ptr, ptr %52, i64 1
  store ptr %53, ptr %59, align 8, !tbaa !385
  br label %71

60:                                               ; preds = %50
  br i1 %5, label %61, label %66, !prof !681

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 1
  %63 = load i32, ptr %62, align 8, !tbaa !468
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 8, !tbaa !468
  %65 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %53) #21
  br label %68

66:                                               ; preds = %60
  %67 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %53, i32 noundef 1538) #21
  br label %68

68:                                               ; preds = %66, %61
  %69 = phi ptr [ %65, %61 ], [ %67, %66 ]
  %70 = getelementptr inbounds ptr, ptr %52, i64 1
  store ptr %69, ptr %70, align 8, !tbaa !385
  store i8 0, ptr @PL_tainted, align 1, !tbaa !423
  br label %71

71:                                               ; preds = %68, %58
  %72 = phi ptr [ %59, %58 ], [ %70, %68 ]
  %73 = getelementptr inbounds ptr, ptr %51, i64 1
  %74 = icmp ugt ptr %73, %1
  br i1 %74, label %75, label %50, !prof !682, !llvm.loop !683

75:                                               ; preds = %71, %8, %31, %6, %47
  %76 = phi ptr [ %49, %47 ], [ %33, %31 ], [ %0, %6 ], [ %0, %8 ], [ %72, %71 ]
  ret ptr %76
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_enteriter() local_unnamed_addr #0 !prof !684 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %2 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %5 = load i32, ptr %3, align 4, !tbaa !430
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %2, i64 %6
  %8 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %9 = getelementptr inbounds %struct.op, ptr %8, i64 0, i32 5
  %10 = load i8, ptr %9, align 2, !tbaa !428
  %11 = and i8 %10, 3
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13, !prof !685

13:                                               ; preds = %0
  %14 = zext nneg i8 %11 to i32
  br label %17

15:                                               ; preds = %0
  %16 = tail call i32 @Perl_block_gimme() #22, !range !553
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  tail call void @Perl_push_scope() #21
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #21
  %19 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  store i64 %19, ptr @PL_tmps_floor, align 8, !tbaa !509
  %20 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %21 = getelementptr inbounds %struct.op, ptr %20, i64 0, i32 3
  %22 = load i64, ptr %21, align 8, !tbaa !442
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %48, label %24, !prof !686

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.op, ptr %20, i64 0, i32 6
  %26 = load i8, ptr %25, align 1, !tbaa !390
  %27 = icmp sgt i8 %26, -1
  br i1 %27, label %41, label %28, !prof !687

28:                                               ; preds = %24
  %29 = load ptr, ptr @PL_curpad, align 8, !tbaa !385
  %30 = getelementptr inbounds ptr, ptr %29, i64 %22
  %31 = load ptr, ptr %30, align 8, !tbaa !385
  tail call fastcc void @S_SvPADSTALE_off(ptr noundef %31) #22
  %32 = load ptr, ptr @PL_curpad, align 8, !tbaa !385
  %33 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %34 = getelementptr inbounds %struct.op, ptr %33, i64 0, i32 3
  %35 = load i64, ptr %34, align 8, !tbaa !442
  %36 = getelementptr inbounds ptr, ptr %32, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !385
  tail call void @Perl_save_set_svflags(ptr noundef %37, i32 noundef 262144, i32 noundef 262144) #21
  %38 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %39 = getelementptr inbounds %struct.op, ptr %38, i64 0, i32 3
  %40 = load i64, ptr %39, align 8, !tbaa !442
  br label %41

41:                                               ; preds = %28, %24
  %42 = phi i64 [ %40, %28 ], [ %22, %24 ]
  tail call void @Perl_save_padsv_and_mortalize(i64 noundef %42) #21
  %43 = load ptr, ptr @PL_curpad, align 8, !tbaa !385
  %44 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %45 = getelementptr inbounds %struct.op, ptr %44, i64 0, i32 3
  %46 = load i64, ptr %45, align 8, !tbaa !442
  %47 = getelementptr inbounds ptr, ptr %43, i64 %46
  br label %62

48:                                               ; preds = %17
  %49 = load ptr, ptr %1, align 8, !tbaa !385
  %50 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !452
  %52 = and i32 %51, 255
  %53 = icmp eq i32 %52, 9
  %54 = getelementptr inbounds ptr, ptr %1, i64 -1
  br i1 %53, label %55, label %62, !prof !688

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.gv, ptr %49, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !398
  %58 = load ptr, ptr %57, align 8, !tbaa !385
  %59 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %58) #22
  tail call void @Perl_save_pushptrptr(ptr noundef nonnull %49, ptr noundef %58, i32 noundef 29) #21
  %60 = tail call ptr @Perl_newSV(i64 noundef 0) #21
  store ptr %60, ptr %57, align 8, !tbaa !385
  tail call void @Perl_save_aliased_sv(ptr noundef nonnull %49) #21
  %61 = load ptr, ptr @PL_op, align 8, !tbaa !385
  br label %62

62:                                               ; preds = %48, %55, %41
  %63 = phi ptr [ %44, %41 ], [ %61, %55 ], [ %20, %48 ]
  %64 = phi i1 [ true, %41 ], [ true, %55 ], [ false, %48 ]
  %65 = phi i8 [ 4, %41 ], [ 4, %55 ], [ 36, %48 ]
  %66 = phi ptr [ %47, %41 ], [ %49, %55 ], [ %49, %48 ]
  %67 = phi ptr [ %1, %41 ], [ %54, %55 ], [ %54, %48 ]
  %68 = getelementptr inbounds %struct.op, ptr %63, i64 0, i32 6
  %69 = load i8, ptr %68, align 1, !tbaa !390
  %70 = shl i8 %69, 1
  %71 = and i8 %70, 16
  %72 = or disjoint i8 %71, %65
  tail call void @Perl_push_scope() #21
  %73 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %74 = getelementptr inbounds %struct.stackinfo, ptr %73, i64 0, i32 4
  %75 = load i32, ptr %74, align 8, !tbaa !397
  %76 = getelementptr inbounds %struct.stackinfo, ptr %73, i64 0, i32 5
  %77 = load i32, ptr %76, align 4, !tbaa !663
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %81, !prof !689

79:                                               ; preds = %62
  %80 = add nsw i32 %75, 1
  store i32 %80, ptr %74, align 8, !tbaa !397
  br label %85

81:                                               ; preds = %62
  %82 = tail call i32 @Perl_cxinc() #21
  %83 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %84 = getelementptr inbounds %struct.stackinfo, ptr %83, i64 0, i32 4
  store i32 %82, ptr %84, align 8, !tbaa !397
  br label %85

85:                                               ; preds = %81, %79
  %86 = phi i32 [ %82, %81 ], [ %80, %79 ]
  %87 = phi ptr [ %83, %81 ], [ %73, %79 ]
  %88 = getelementptr inbounds %struct.stackinfo, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !395
  %90 = sext i32 %86 to i64
  %91 = getelementptr inbounds %struct.context, ptr %89, i64 %90
  store i8 %72, ptr %91, align 8, !tbaa !398
  %92 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %93 = ptrtoint ptr %67 to i64
  %94 = ptrtoint ptr %92 to i64
  %95 = sub i64 %93, %94
  %96 = lshr exact i64 %95, 3
  %97 = trunc i64 %96 to i32
  %98 = getelementptr inbounds %struct.block, ptr %91, i64 0, i32 3
  store i32 %97, ptr %98, align 4, !tbaa !398
  %99 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %100 = getelementptr inbounds %struct.block, ptr %91, i64 0, i32 4
  store ptr %99, ptr %100, align 8, !tbaa !398
  %101 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %102 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %103 = ptrtoint ptr %101 to i64
  %104 = ptrtoint ptr %102 to i64
  %105 = sub i64 %103, %104
  %106 = lshr exact i64 %105, 2
  %107 = trunc i64 %106 to i32
  %108 = getelementptr inbounds %struct.block, ptr %91, i64 0, i32 5
  store i32 %107, ptr %108, align 8, !tbaa !398
  %109 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %110 = getelementptr inbounds %struct.block, ptr %91, i64 0, i32 6
  store i32 %109, ptr %110, align 4, !tbaa !398
  %111 = load ptr, ptr @PL_curpm, align 8, !tbaa !385
  %112 = getelementptr inbounds %struct.block, ptr %91, i64 0, i32 7
  store ptr %111, ptr %112, align 8, !tbaa !398
  %113 = trunc i32 %18 to i8
  %114 = getelementptr inbounds %struct.block, ptr %91, i64 0, i32 1
  store i8 %113, ptr %114, align 1, !tbaa !398
  %115 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %116 = ptrtoint ptr %7 to i64
  %117 = ptrtoint ptr %115 to i64
  %118 = sub i64 %116, %117
  %119 = lshr exact i64 %118, 3
  %120 = trunc i64 %119 to i32
  %121 = getelementptr inbounds %struct.block, ptr %91, i64 0, i32 8
  store i32 %120, ptr %121, align 8, !tbaa !398
  %122 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %123 = getelementptr inbounds %struct.block, ptr %91, i64 0, i32 8, i32 0, i32 1
  store ptr %122, ptr %123, align 8, !tbaa !398
  %124 = getelementptr inbounds %struct.block, ptr %91, i64 0, i32 8, i32 0, i32 3
  %125 = getelementptr inbounds %struct.block, ptr %91, i64 0, i32 8, i32 0, i32 4
  %126 = getelementptr inbounds %struct.block, ptr %91, i64 0, i32 8, i32 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %124, i8 0, i64 16, i1 false)
  store ptr %66, ptr %126, align 8, !tbaa !398
  %127 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %128 = getelementptr inbounds %struct.op, ptr %127, i64 0, i32 5
  %129 = load i8, ptr %128, align 2, !tbaa !428
  %130 = and i8 %129, 64
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %311, label %132, !prof !690

132:                                              ; preds = %85
  %133 = getelementptr inbounds ptr, ptr %67, i64 -1
  %134 = load ptr, ptr %67, align 8, !tbaa !385
  %135 = getelementptr inbounds %struct.sv, ptr %134, i64 0, i32 2
  %136 = load i32, ptr %135, align 4, !tbaa !452
  %137 = and i32 %136, 255
  %138 = icmp eq i32 %137, 11
  br i1 %138, label %286, label %139, !prof !691

139:                                              ; preds = %132
  %140 = getelementptr inbounds ptr, ptr %67, i64 -2
  %141 = load ptr, ptr %133, align 8, !tbaa !385
  br i1 %64, label %144, label %142

142:                                              ; preds = %139
  %143 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.26) #21
  br label %330

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.sv, ptr %141, i64 0, i32 2
  %146 = load i32, ptr %145, align 4, !tbaa !452
  %147 = and i32 %146, 2097152
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %144
  %150 = tail call i32 @Perl_mg_get(ptr noundef nonnull %141) #21
  %151 = load i32, ptr %135, align 4, !tbaa !452
  br label %152

152:                                              ; preds = %144, %149
  %153 = phi i32 [ %136, %144 ], [ %151, %149 ]
  %154 = and i32 %153, 2097152
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %152
  %157 = tail call i32 @Perl_mg_get(ptr noundef nonnull %134) #21
  br label %158

158:                                              ; preds = %152, %156
  %159 = load i32, ptr %145, align 4, !tbaa !452
  %160 = and i32 %159, 12288
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %223

162:                                              ; preds = %158
  %163 = and i32 %159, 52992
  %164 = icmp ne i32 %163, 0
  %165 = and i32 %159, 255
  %166 = icmp eq i32 %165, 8
  %167 = or i1 %164, %166
  %168 = and i32 %159, 16777471
  %169 = icmp eq i32 %168, 16777226
  %170 = or i1 %169, %167
  %171 = and i32 %159, 16384
  %172 = icmp eq i32 %171, 0
  %173 = and i1 %172, %170
  br i1 %173, label %223, label %174

174:                                              ; preds = %162
  %175 = load i32, ptr %135, align 4, !tbaa !452
  %176 = and i32 %175, 12288
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %223

178:                                              ; preds = %174
  %179 = and i32 %175, 52992
  %180 = icmp ne i32 %179, 0
  %181 = and i32 %175, 255
  %182 = icmp eq i32 %181, 8
  %183 = or i1 %180, %182
  %184 = and i32 %175, 16777471
  %185 = icmp eq i32 %184, 16777226
  %186 = or i1 %185, %183
  %187 = and i32 %175, 16384
  %188 = icmp eq i32 %187, 0
  %189 = and i1 %188, %186
  br i1 %189, label %223, label %190

190:                                              ; preds = %178
  br i1 %170, label %192, label %191

191:                                              ; preds = %190
  br i1 %186, label %210, label %198

192:                                              ; preds = %190
  %193 = tail call i32 @Perl_looks_like_number(ptr noundef nonnull %141) #21
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %255, label %195

195:                                              ; preds = %192
  %196 = load i32, ptr %145, align 4, !tbaa !452
  %197 = and i32 %196, 16384
  br label %198

198:                                              ; preds = %195, %191
  %199 = phi i32 [ %197, %195 ], [ %171, %191 ]
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %255, label %201

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.sv, ptr %141, i64 0, i32 3
  %203 = load ptr, ptr %202, align 8, !tbaa !398
  %204 = load i8, ptr %203, align 1, !tbaa !398
  %205 = icmp eq i8 %204, 48
  br i1 %205, label %255, label %206

206:                                              ; preds = %201
  %207 = load i32, ptr %135, align 4, !tbaa !452
  %208 = and i32 %207, 255
  %209 = and i32 %207, 16777471
  br label %210

210:                                              ; preds = %206, %191
  %211 = phi i32 [ %209, %206 ], [ %184, %191 ]
  %212 = phi i32 [ %208, %206 ], [ %181, %191 ]
  %213 = phi i32 [ %207, %206 ], [ %175, %191 ]
  %214 = and i32 %213, 65280
  %215 = icmp ne i32 %214, 0
  %216 = icmp eq i32 %212, 8
  %217 = or i1 %215, %216
  %218 = icmp eq i32 %211, 16777226
  %219 = or i1 %218, %217
  br i1 %219, label %220, label %223

220:                                              ; preds = %210
  %221 = tail call i32 @Perl_looks_like_number(ptr noundef nonnull %134) #21
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %255, label %223

223:                                              ; preds = %178, %162, %210, %220, %174, %158
  %224 = load i8, ptr %91, align 8, !tbaa !398
  %225 = and i8 %224, -16
  %226 = or disjoint i8 %225, 7
  store i8 %226, ptr %91, align 8, !tbaa !398
  %227 = tail call fastcc zeroext i1 @S_outside_integer(ptr noundef nonnull %141) #22
  br i1 %227, label %230, label %228

228:                                              ; preds = %223
  %229 = tail call fastcc zeroext i1 @S_outside_integer(ptr noundef nonnull %134) #22
  br i1 %229, label %230, label %232

230:                                              ; preds = %228, %223
  %231 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.9) #21
  br label %330

232:                                              ; preds = %228
  %233 = load i32, ptr %145, align 4, !tbaa !452
  %234 = and i32 %233, 256
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %240, label %236

236:                                              ; preds = %232
  %237 = load ptr, ptr %141, align 8, !tbaa !487
  %238 = getelementptr inbounds %struct.xpviv, ptr %237, i64 0, i32 4
  %239 = load i64, ptr %238, align 8, !tbaa !398
  br label %242

240:                                              ; preds = %232
  %241 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %141, i32 noundef 0) #21
  br label %242

242:                                              ; preds = %240, %236
  %243 = phi i64 [ %239, %236 ], [ %241, %240 ]
  store i64 %243, ptr %124, align 8, !tbaa !398
  %244 = load i32, ptr %135, align 4, !tbaa !452
  %245 = and i32 %244, 256
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %251, label %247

247:                                              ; preds = %242
  %248 = load ptr, ptr %134, align 8, !tbaa !487
  %249 = getelementptr inbounds %struct.xpviv, ptr %248, i64 0, i32 4
  %250 = load i64, ptr %249, align 8, !tbaa !398
  br label %253

251:                                              ; preds = %242
  %252 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %134, i32 noundef 0) #21
  br label %253

253:                                              ; preds = %251, %247
  %254 = phi i64 [ %250, %247 ], [ %252, %251 ]
  store i64 %254, ptr %125, align 8, !tbaa !398
  br label %326

255:                                              ; preds = %220, %201, %198, %192
  %256 = load i8, ptr %91, align 8, !tbaa !398
  %257 = and i8 %256, -16
  %258 = or disjoint i8 %257, 6
  store i8 %258, ptr %91, align 8, !tbaa !398
  %259 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %141) #21
  store ptr %259, ptr %124, align 8, !tbaa !398
  store ptr %134, ptr %125, align 8, !tbaa !398
  %260 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %134) #22
  %261 = load ptr, ptr %124, align 8, !tbaa !398
  %262 = getelementptr inbounds %struct.sv, ptr %261, i64 0, i32 2
  %263 = load i32, ptr %262, align 4, !tbaa !452
  %264 = and i32 %263, 430018304
  %265 = icmp eq i32 %264, 1024
  br i1 %265, label %268, label %266

266:                                              ; preds = %255
  %267 = tail call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %261, ptr noundef null, i32 noundef 2) #21
  br label %268

268:                                              ; preds = %255, %266
  %269 = load i32, ptr %135, align 4, !tbaa !452
  %270 = and i32 %269, 2098176
  %271 = icmp eq i32 %270, 1024
  br i1 %271, label %275, label %272

272:                                              ; preds = %268
  %273 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %134, ptr noundef null, i32 noundef 34) #21
  %274 = load i32, ptr %135, align 4, !tbaa !452
  br label %275

275:                                              ; preds = %268, %272
  %276 = phi i32 [ %269, %268 ], [ %274, %272 ]
  %277 = and i32 %276, 65280
  %278 = icmp ne i32 %277, 0
  %279 = and i32 %276, 255
  %280 = icmp eq i32 %279, 8
  %281 = or i1 %278, %280
  %282 = and i32 %276, 16777471
  %283 = icmp eq i32 %282, 16777226
  %284 = or i1 %283, %281
  br i1 %284, label %326, label %285

285:                                              ; preds = %275
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %134) #22
  store ptr @PL_sv_no, ptr %125, align 8, !tbaa !398
  br label %326

286:                                              ; preds = %132
  store ptr %134, ptr %124, align 8, !tbaa !398
  %287 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %134) #22
  %288 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %289 = getelementptr inbounds %struct.op, ptr %288, i64 0, i32 6
  %290 = load i8, ptr %289, align 1, !tbaa !390
  %291 = and i8 %290, 4
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %309, label %293, !prof !691

293:                                              ; preds = %286
  %294 = load ptr, ptr %124, align 8, !tbaa !398
  %295 = getelementptr inbounds %struct.sv, ptr %294, i64 0, i32 2
  %296 = load i32, ptr %295, align 4, !tbaa !452
  %297 = and i32 %296, 8388608
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %302, label %299, !prof !691

299:                                              ; preds = %293
  %300 = tail call i32 @Perl_mg_size(ptr noundef nonnull %294) #21
  %301 = sext i32 %300 to i64
  br label %306

302:                                              ; preds = %293
  %303 = load ptr, ptr %294, align 8, !tbaa !607
  %304 = getelementptr inbounds %struct.xpvav, ptr %303, i64 0, i32 2
  %305 = load i64, ptr %304, align 8, !tbaa !608
  br label %306

306:                                              ; preds = %302, %299
  %307 = phi i64 [ %301, %299 ], [ %305, %302 ]
  %308 = add nsw i64 %307, 1
  br label %309

309:                                              ; preds = %286, %306
  %310 = phi i64 [ %308, %306 ], [ -1, %286 ]
  store i64 %310, ptr %125, align 8, !tbaa !398
  br label %326

311:                                              ; preds = %85
  %312 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %313 = getelementptr inbounds %struct.op, ptr %312, i64 0, i32 6
  %314 = load i8, ptr %313, align 1, !tbaa !390
  %315 = and i8 %314, 4
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %321, label %317, !prof !692

317:                                              ; preds = %311
  %318 = shl i64 %95, 29
  %319 = add i64 %318, 4294967296
  %320 = ashr i64 %319, 32
  store i64 %320, ptr %125, align 8, !tbaa !398
  br label %326

321:                                              ; preds = %311
  %322 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %323 = ptrtoint ptr %322 to i64
  %324 = sub i64 %116, %323
  %325 = ashr exact i64 %324, 3
  store i64 %325, ptr %125, align 8, !tbaa !398
  br label %326

326:                                              ; preds = %253, %285, %275, %309, %317, %321
  %327 = phi ptr [ %67, %317 ], [ %67, %321 ], [ %140, %275 ], [ %140, %285 ], [ %140, %253 ], [ %133, %309 ]
  store ptr %327, ptr @PL_stack_sp, align 8, !tbaa !385
  %328 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %329 = load ptr, ptr %328, align 8, !tbaa !400
  br label %330

330:                                              ; preds = %230, %142, %326
  %331 = phi ptr [ %329, %326 ], [ %143, %142 ], [ %231, %230 ]
  ret ptr %331
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @S_SvPADSTALE_off(ptr nocapture noundef %0) unnamed_addr #7 !prof !693 !PGOFuncName !694 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !452
  %4 = and i32 %3, -262145
  store i32 %4, ptr %2, align 4, !tbaa !452
  ret void
}

; Function Attrs: optsize
declare void @Perl_save_set_svflags(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_padsv_and_mortalize(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_pushptrptr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_aliased_sv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @S_outside_integer(ptr noundef %0) unnamed_addr #0 !prof !422 !PGOFuncName !695 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !452
  %4 = and i32 %3, 65280
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %3, 255
  %7 = icmp eq i32 %6, 8
  %8 = or i1 %5, %7
  %9 = and i32 %3, 16777471
  %10 = icmp eq i32 %9, 16777226
  %11 = or i1 %10, %8
  br i1 %11, label %12, label %44

12:                                               ; preds = %1
  %13 = and i32 %3, 512
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %0, align 8, !tbaa !487
  %17 = getelementptr inbounds %struct.xpvnv, ptr %16, i64 0, i32 5
  %18 = load double, ptr %17, align 8, !tbaa !398
  br label %21

19:                                               ; preds = %12
  %20 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %0, i32 noundef 0) #21
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi double [ %18, %15 ], [ %20, %19 ]
  %23 = tail call zeroext i1 @Perl_isinfnan(double noundef %22) #21
  %24 = fcmp ole double %22, 0xC3E0000000000000
  %25 = or i1 %24, %23
  br i1 %25, label %43, label %26

26:                                               ; preds = %21
  %27 = fcmp ogt double %22, 0.000000e+00
  br i1 %27, label %28, label %44

28:                                               ; preds = %26
  %29 = fcmp ogt double %22, 0x43F0000000000000
  br i1 %29, label %43, label %30

30:                                               ; preds = %28
  %31 = load i32, ptr %2, align 4, !tbaa !452
  %32 = and i32 %31, 256
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 8, !tbaa !487
  %36 = getelementptr inbounds %struct.xpvuv, ptr %35, i64 0, i32 4
  %37 = load i64, ptr %36, align 8, !tbaa !398
  br label %40

38:                                               ; preds = %30
  %39 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %0, i32 noundef 0) #21
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi i64 [ %37, %34 ], [ %39, %38 ]
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %21, %40, %28
  br label %44

44:                                               ; preds = %1, %26, %40, %43
  %45 = phi i1 [ true, %43 ], [ false, %40 ], [ false, %26 ], [ false, %1 ]
  ret i1 %45
}

; Function Attrs: optsize
declare i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_enterloop() local_unnamed_addr #0 !prof !696 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5
  %4 = load i8, ptr %3, align 2, !tbaa !428
  %5 = and i8 %4, 3
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10, !prof !697

7:                                                ; preds = %0
  %8 = tail call i32 @Perl_block_gimme() #22, !range !553
  %9 = trunc i32 %8 to i8
  br label %10

10:                                               ; preds = %0, %7
  %11 = phi i8 [ %9, %7 ], [ %5, %0 ]
  tail call void @Perl_push_scope() #21
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #21
  %12 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  store i64 %12, ptr @PL_tmps_floor, align 8, !tbaa !509
  tail call void @Perl_push_scope() #21
  %13 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %14 = getelementptr inbounds %struct.stackinfo, ptr %13, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !397
  %16 = getelementptr inbounds %struct.stackinfo, ptr %13, i64 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !663
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %21, !prof !698

19:                                               ; preds = %10
  %20 = add nsw i32 %15, 1
  store i32 %20, ptr %14, align 8, !tbaa !397
  br label %25

21:                                               ; preds = %10
  %22 = tail call i32 @Perl_cxinc() #21
  %23 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %24 = getelementptr inbounds %struct.stackinfo, ptr %23, i64 0, i32 4
  store i32 %22, ptr %24, align 8, !tbaa !397
  br label %25

25:                                               ; preds = %21, %19
  %26 = phi i32 [ %22, %21 ], [ %20, %19 ]
  %27 = phi ptr [ %23, %21 ], [ %13, %19 ]
  %28 = getelementptr inbounds %struct.stackinfo, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !395
  %30 = sext i32 %26 to i64
  %31 = getelementptr inbounds %struct.context, ptr %29, i64 %30
  store i8 5, ptr %31, align 8, !tbaa !398
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %33 = ptrtoint ptr %1 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  %36 = lshr exact i64 %35, 3
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 3
  store i32 %37, ptr %38, align 4, !tbaa !398
  %39 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %40 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 4
  store ptr %39, ptr %40, align 8, !tbaa !398
  %41 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %42 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %43 = ptrtoint ptr %41 to i64
  %44 = ptrtoint ptr %42 to i64
  %45 = sub i64 %43, %44
  %46 = lshr exact i64 %45, 2
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 5
  store i32 %47, ptr %48, align 8, !tbaa !398
  %49 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %50 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 6
  store i32 %49, ptr %50, align 4, !tbaa !398
  %51 = load ptr, ptr @PL_curpm, align 8, !tbaa !385
  %52 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 7
  store ptr %51, ptr %52, align 8, !tbaa !398
  %53 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 1
  store i8 %11, ptr %53, align 1, !tbaa !398
  %54 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %55 = ptrtoint ptr %54 to i64
  %56 = sub i64 %33, %55
  %57 = lshr exact i64 %56, 3
  %58 = trunc i64 %57 to i32
  %59 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 8
  store i32 %58, ptr %59, align 8, !tbaa !398
  %60 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %61 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 8, i32 0, i32 1
  store ptr %60, ptr %61, align 8, !tbaa !398
  %62 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 8, i32 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %62, i8 0, i64 24, i1 false)
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !385
  %63 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %64 = load ptr, ptr %63, align 8, !tbaa !400
  ret ptr %64
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_leaveloop() local_unnamed_addr #0 !prof !699 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %2 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %3 = getelementptr inbounds %struct.stackinfo, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !395
  %5 = getelementptr inbounds %struct.stackinfo, ptr %2, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !397
  %7 = add nsw i32 %6, -1
  store i32 %7, ptr %5, align 8, !tbaa !397
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds %struct.context, ptr %4, i64 %8
  %10 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %11 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !398
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  %15 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !398
  store ptr %16, ptr @PL_curcop, align 8, !tbaa !385
  %17 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %18 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !398
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %17, i64 %20
  store ptr %21, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %22 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !398
  store i32 %23, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %24 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !398
  %26 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 1
  %27 = load i8, ptr %26, align 1, !tbaa !398
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 8
  %30 = load i32, ptr %29, align 8, !tbaa !398
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds ptr, ptr %10, i64 %31
  %33 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %34 = getelementptr inbounds %struct.op, ptr %33, i64 0, i32 6
  %35 = load i8, ptr %34, align 1, !tbaa !390
  %36 = icmp slt i8 %35, 0
  %37 = tail call fastcc ptr @S_leave_common(ptr noundef %32, ptr noundef %1, ptr noundef %14, i32 noundef %28, i32 noundef 0, i1 noundef zeroext %36) #22
  store ptr %37, ptr @PL_stack_sp, align 8, !tbaa !385
  %38 = load i8, ptr %9, align 8, !tbaa !398
  %39 = and i8 %38, 15
  %40 = icmp eq i8 %39, 6
  br i1 %40, label %41, label %47, !prof !700

41:                                               ; preds = %0
  %42 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 8, i32 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !398
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %43) #22
  %44 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 8, i32 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !398
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %45) #22
  %46 = load i8, ptr %9, align 8, !tbaa !398
  br label %47

47:                                               ; preds = %41, %0
  %48 = phi i8 [ %46, %41 ], [ %38, %0 ]
  %49 = and i8 %48, 15
  %50 = icmp eq i8 %49, 4
  br i1 %50, label %51, label %54, !prof !701

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 8, i32 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !398
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %53) #22
  br label %54

54:                                               ; preds = %51, %47
  store ptr %25, ptr @PL_curpm, align 8, !tbaa !385
  tail call void @Perl_pop_scope() #21
  tail call void @Perl_pop_scope() #21
  %55 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %56 = load ptr, ptr %55, align 8, !tbaa !400
  ret ptr %56
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_return() local_unnamed_addr #0 !prof !702 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %2 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %5 = load i32, ptr %3, align 4, !tbaa !430
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds ptr, ptr %2, i64 %6
  %8 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %9 = getelementptr inbounds %struct.stackinfo, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !395
  %11 = getelementptr inbounds %struct.stackinfo, ptr %8, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !397
  %13 = tail call fastcc i32 @S_dopoptosub_at(ptr noundef %10, i32 noundef %12) #22
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %26, !prof !703

15:                                               ; preds = %0
  %16 = load i8, ptr %10, align 8, !tbaa !398
  %17 = and i8 %16, 16
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  tail call void @Perl_dounwind(i32 noundef 0) #22
  %20 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %21 = load ptr, ptr %20, align 8, !tbaa !385
  %22 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  store ptr %21, ptr %23, align 8, !tbaa !385
  store ptr %23, ptr @PL_stack_sp, align 8, !tbaa !385
  br label %480

24:                                               ; preds = %15
  %25 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.27) #21
  br label %480

26:                                               ; preds = %0
  %27 = icmp slt i32 %13, %12
  br i1 %27, label %28, label %32, !prof !704

28:                                               ; preds = %26
  tail call void @Perl_dounwind(i32 noundef %13) #22
  %29 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %30 = getelementptr inbounds %struct.stackinfo, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !395
  br label %32

32:                                               ; preds = %28, %26
  %33 = phi ptr [ %31, %28 ], [ %10, %26 ]
  %34 = phi ptr [ %29, %28 ], [ %8, %26 ]
  %35 = zext nneg i32 %13 to i64
  %36 = getelementptr inbounds %struct.context, ptr %33, i64 %35
  %37 = load i8, ptr %36, align 8, !tbaa !398
  %38 = and i8 %37, 16
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %50, label %40, !prof !705

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.block, ptr %36, i64 0, i32 1
  %42 = load i8, ptr %41, align 1, !tbaa !398
  switch i8 %42, label %480 [
    i8 1, label %43
    i8 2, label %45
  ]

43:                                               ; preds = %40
  %44 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  store ptr %44, ptr @PL_stack_sp, align 8, !tbaa !385
  br label %480

45:                                               ; preds = %40
  %46 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %47 = load ptr, ptr %46, align 8, !tbaa !385
  %48 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %49 = getelementptr inbounds ptr, ptr %48, i64 1
  store ptr %47, ptr %49, align 8, !tbaa !385
  store ptr %49, ptr @PL_stack_sp, align 8, !tbaa !385
  br label %480

50:                                               ; preds = %32
  %51 = getelementptr inbounds %struct.stackinfo, ptr %34, i64 0, i32 4
  %52 = load i32, ptr %51, align 8, !tbaa !397
  %53 = add nsw i32 %52, -1
  store i32 %53, ptr %51, align 8, !tbaa !397
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds %struct.context, ptr %33, i64 %54
  %56 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %57 = getelementptr inbounds %struct.block, ptr %55, i64 0, i32 3
  %58 = load i32, ptr %57, align 4, !tbaa !398
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds ptr, ptr %56, i64 %59
  %61 = getelementptr inbounds %struct.block, ptr %55, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !398
  store ptr %62, ptr @PL_curcop, align 8, !tbaa !385
  %63 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %64 = getelementptr inbounds %struct.block, ptr %55, i64 0, i32 5
  %65 = load i32, ptr %64, align 8, !tbaa !398
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, ptr %63, i64 %66
  store ptr %67, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %68 = getelementptr inbounds %struct.block, ptr %55, i64 0, i32 6
  %69 = load i32, ptr %68, align 4, !tbaa !398
  store i32 %69, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %70 = getelementptr inbounds %struct.block, ptr %55, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !398
  %72 = getelementptr inbounds %struct.block, ptr %55, i64 0, i32 1
  %73 = load i8, ptr %72, align 1, !tbaa !398
  %74 = zext i8 %73 to i32
  %75 = load i8, ptr %55, align 8, !tbaa !398
  %76 = and i8 %75, 15
  switch i8 %76, label %235 [
    i8 8, label %241
    i8 10, label %77
    i8 9, label %205
  ], !prof !706

77:                                               ; preds = %50
  %78 = load i8, ptr @PL_in_eval, align 1, !tbaa !398
  %79 = lshr i8 %78, 2
  %80 = and i8 %79, 1
  %81 = xor i8 %80, 1
  %82 = getelementptr inbounds %struct.block, ptr %55, i64 0, i32 2
  %83 = load i16, ptr %82, align 2, !tbaa !398
  %84 = trunc i16 %83 to i8
  %85 = and i8 %84, 127
  store i8 %85, ptr @PL_in_eval, align 1, !tbaa !398
  %86 = load i16, ptr %82, align 2, !tbaa !398
  %87 = getelementptr inbounds %struct.block, ptr %55, i64 0, i32 8
  %88 = getelementptr inbounds %struct.block, ptr %55, i64 0, i32 8, i32 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !398
  store ptr %89, ptr @PL_eval_root, align 8, !tbaa !385
  %90 = getelementptr inbounds %struct.block, ptr %55, i64 0, i32 8, i32 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !398
  %92 = icmp eq ptr %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %77
  %94 = getelementptr inbounds %struct.sv, ptr %91, i64 0, i32 2
  %95 = load i32, ptr %94, align 4, !tbaa !452
  %96 = and i32 %95, 49152
  %97 = icmp eq i32 %96, 49152
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %91) #22
  br label %99

99:                                               ; preds = %98, %93, %77
  %100 = getelementptr inbounds %struct.block, ptr %55, i64 0, i32 8, i32 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !398
  %102 = icmp eq ptr %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %101) #21
  %105 = load ptr, ptr %100, align 8, !tbaa !398
  br label %106

106:                                              ; preds = %103, %99
  %107 = phi ptr [ %105, %103 ], [ null, %99 ]
  %108 = load ptr, ptr %87, align 8, !tbaa !398
  %109 = load i8, ptr %55, align 8, !tbaa !398
  %110 = and i8 %109, 79
  %111 = icmp ne i8 %110, 74
  %112 = and i16 %86, -128
  %113 = icmp eq i16 %112, -22144
  %114 = select i1 %111, i1 %113, i1 false
  br i1 %114, label %115, label %238

115:                                              ; preds = %106
  %116 = icmp eq ptr %7, %1
  br i1 %116, label %176, label %117

117:                                              ; preds = %115
  %118 = icmp eq i8 %73, 2
  br i1 %118, label %119, label %238

119:                                              ; preds = %117
  %120 = load ptr, ptr %1, align 8, !tbaa !385
  %121 = icmp eq ptr %120, null
  br i1 %121, label %176, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.sv, ptr %120, i64 0, i32 2
  %124 = load i32, ptr %123, align 4, !tbaa !452
  %125 = and i32 %124, 2097152
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %122
  %128 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %120, i32 noundef 2) #21
  br i1 %128, label %238, label %176

129:                                              ; preds = %122
  %130 = and i32 %124, 65280
  %131 = icmp ne i32 %130, 0
  %132 = and i32 %124, 255
  %133 = icmp eq i32 %132, 8
  %134 = or i1 %131, %133
  %135 = and i32 %124, 16777471
  %136 = icmp eq i32 %135, 16777226
  %137 = or i1 %136, %134
  br i1 %137, label %138, label %176

138:                                              ; preds = %129
  %139 = and i32 %124, 1024
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %155, label %141

141:                                              ; preds = %138
  %142 = load ptr, ptr %120, align 8, !tbaa !487
  %143 = icmp eq ptr %142, null
  br i1 %143, label %176, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.xpv, ptr %142, i64 0, i32 2
  %146 = load i64, ptr %145, align 8, !tbaa !458
  %147 = icmp ugt i64 %146, 1
  br i1 %147, label %238, label %148

148:                                              ; preds = %144
  %149 = icmp eq i64 %146, 0
  br i1 %149, label %176, label %150

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.sv, ptr %120, i64 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !398
  %153 = load i8, ptr %152, align 1, !tbaa !398
  %154 = icmp eq i8 %153, 48
  br i1 %154, label %176, label %238

155:                                              ; preds = %138
  %156 = and i32 %124, 768
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %174, label %158

158:                                              ; preds = %155
  %159 = and i32 %124, 256
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %158
  %162 = load ptr, ptr %120, align 8, !tbaa !487
  %163 = getelementptr inbounds %struct.xpviv, ptr %162, i64 0, i32 4
  %164 = load i64, ptr %163, align 8, !tbaa !398
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %238

166:                                              ; preds = %161, %158
  %167 = and i32 %124, 512
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %176, label %169

169:                                              ; preds = %166
  %170 = load ptr, ptr %120, align 8, !tbaa !487
  %171 = getelementptr inbounds %struct.xpvnv, ptr %170, i64 0, i32 5
  %172 = load double, ptr %171, align 8, !tbaa !398
  %173 = fcmp une double %172, 0.000000e+00
  br i1 %173, label %238, label %176

174:                                              ; preds = %155
  %175 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %120, i32 noundef 0) #21
  br i1 %175, label %238, label %176

176:                                              ; preds = %169, %129, %119, %174, %166, %150, %148, %141, %127, %115
  %177 = load ptr, ptr @PL_incgv, align 8, !tbaa !385
  %178 = getelementptr inbounds %struct.gv, ptr %177, i64 0, i32 3
  %179 = load ptr, ptr %178, align 8, !tbaa !398
  %180 = getelementptr inbounds %struct.gp, ptr %179, i64 0, i32 5
  %181 = load ptr, ptr %180, align 8, !tbaa !631
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %189

183:                                              ; preds = %176
  %184 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %177, i32 noundef 12) #21
  %185 = getelementptr inbounds %struct.gv, ptr %184, i64 0, i32 3
  %186 = load ptr, ptr %185, align 8, !tbaa !398
  %187 = getelementptr inbounds %struct.gp, ptr %186, i64 0, i32 5
  %188 = load ptr, ptr %187, align 8, !tbaa !631
  br label %189

189:                                              ; preds = %176, %183
  %190 = phi ptr [ %188, %183 ], [ %181, %176 ]
  %191 = getelementptr inbounds %struct.sv, ptr %107, i64 0, i32 3
  %192 = load ptr, ptr %191, align 8, !tbaa !398
  %193 = getelementptr inbounds %struct.sv, ptr %107, i64 0, i32 2
  %194 = load i32, ptr %193, align 4, !tbaa !452
  %195 = and i32 %194, 536870912
  %196 = icmp eq i32 %195, 0
  %197 = load ptr, ptr %107, align 8, !tbaa !487
  %198 = getelementptr inbounds %struct.xpv, ptr %197, i64 0, i32 2
  %199 = load i64, ptr %198, align 8, !tbaa !458
  %200 = trunc i64 %199 to i32
  %201 = sub nsw i32 0, %200
  %202 = select i1 %196, i32 %200, i32 %201
  %203 = tail call ptr @Perl_hv_common_key_len(ptr noundef %190, ptr noundef %192, i32 noundef %202, i32 noundef 68, ptr noundef null, i32 noundef 0) #21
  %204 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.28, ptr noundef nonnull %107) #21
  br label %480

205:                                              ; preds = %50
  %206 = getelementptr inbounds %struct.block, ptr %55, i64 0, i32 8
  %207 = load ptr, ptr %206, align 8, !tbaa !398
  %208 = getelementptr inbounds %struct.block, ptr %55, i64 0, i32 2
  %209 = load i16, ptr %208, align 2, !tbaa !398
  %210 = and i16 %209, 256
  %211 = icmp eq i16 %210, 0
  br i1 %211, label %212, label %238

212:                                              ; preds = %205
  %213 = getelementptr inbounds %struct.block, ptr %55, i64 0, i32 8, i32 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !398
  %215 = getelementptr inbounds %struct.block, ptr %55, i64 0, i32 8, i32 0, i32 3
  %216 = load ptr, ptr %215, align 8, !tbaa !398
  %217 = or disjoint i16 %209, 256
  store i16 %217, ptr %208, align 2, !tbaa !398
  tail call void @Perl_setdefout(ptr noundef %216) #21
  %218 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !430
  %219 = load ptr, ptr @PL_scopestack, align 8, !tbaa !385
  %220 = load i32, ptr %68, align 4, !tbaa !398
  %221 = sext i32 %220 to i64
  %222 = getelementptr i32, ptr %219, i64 %221
  %223 = getelementptr i32, ptr %222, i64 -1
  %224 = load i32, ptr %223, align 4, !tbaa !430
  %225 = icmp sgt i32 %218, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %212
  tail call void @Perl_leave_scope(i32 noundef %224) #21
  br label %227

227:                                              ; preds = %226, %212
  %228 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef %214) #22
  %229 = load i32, ptr %228, align 4, !tbaa !430
  %230 = add nsw i32 %229, -1
  store i32 %230, ptr %228, align 4, !tbaa !430
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %227
  %233 = load ptr, ptr %213, align 8, !tbaa !398
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %233) #22
  br label %234

234:                                              ; preds = %232, %227
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %216) #22
  br label %238

235:                                              ; preds = %50
  %236 = zext nneg i8 %76 to i32
  %237 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.29, i32 noundef %236) #21
  br label %480

238:                                              ; preds = %205, %234, %127, %144, %150, %161, %169, %174, %117, %106
  %239 = phi ptr [ %108, %106 ], [ %108, %117 ], [ %108, %174 ], [ %108, %169 ], [ %108, %161 ], [ %108, %150 ], [ %108, %144 ], [ %108, %127 ], [ %207, %234 ], [ %207, %205 ]
  %240 = phi i8 [ %81, %106 ], [ %81, %117 ], [ %81, %174 ], [ %81, %169 ], [ %81, %161 ], [ %81, %150 ], [ %81, %144 ], [ %81, %127 ], [ 0, %234 ], [ 0, %205 ]
  store i8 0, ptr @PL_tainted, align 1, !tbaa !423
  br label %252

241:                                              ; preds = %50
  %242 = getelementptr inbounds %struct.block, ptr %55, i64 0, i32 8
  %243 = getelementptr inbounds %struct.block, ptr %55, i64 0, i32 8, i32 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !398
  %245 = load ptr, ptr %244, align 8, !tbaa !595
  %246 = getelementptr inbounds %struct.xpvcv, ptr %245, i64 0, i32 12
  %247 = load i32, ptr %246, align 4, !tbaa !597
  %248 = load ptr, ptr %242, align 8, !tbaa !398
  store i32 %52, ptr %51, align 8, !tbaa !397
  store i8 0, ptr @PL_tainted, align 1, !tbaa !423
  %249 = and i32 %247, 2
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %252, label %251, !prof !707

251:                                              ; preds = %241
  tail call fastcc void @S_return_lvalues(ptr noundef %7, ptr noundef %1, ptr noundef %60, i32 noundef %74, ptr noundef nonnull %55, ptr noundef %71) #22
  br label %356

252:                                              ; preds = %238, %241
  %253 = phi i1 [ false, %238 ], [ true, %241 ]
  %254 = phi i8 [ %240, %238 ], [ 0, %241 ]
  %255 = phi ptr [ %239, %238 ], [ %248, %241 ]
  switch i8 %73, label %354 [
    i8 2, label %259
    i8 3, label %256
  ], !prof !708

256:                                              ; preds = %252
  %257 = getelementptr inbounds ptr, ptr %7, i64 1
  %258 = icmp ugt ptr %257, %1
  br i1 %258, label %354, label %329, !prof !709

259:                                              ; preds = %252
  %260 = icmp ult ptr %7, %1
  br i1 %260, label %261, label %327, !prof !710

261:                                              ; preds = %259
  br i1 %253, label %262, label %323, !prof !710

262:                                              ; preds = %261
  %263 = getelementptr inbounds %struct.block, ptr %55, i64 0, i32 8, i32 0, i32 1
  %264 = load ptr, ptr %263, align 8, !tbaa !398
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %268, !prof !711

266:                                              ; preds = %262
  %267 = load ptr, ptr %1, align 8, !tbaa !385
  br label %305

268:                                              ; preds = %262
  %269 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %264) #22
  %270 = load i32, ptr %269, align 4, !tbaa !430
  %271 = icmp sgt i32 %270, 1
  %272 = load ptr, ptr %1, align 8, !tbaa !385
  br i1 %271, label %273, label %305, !prof !712

273:                                              ; preds = %268
  %274 = getelementptr inbounds %struct.sv, ptr %272, i64 0, i32 2
  %275 = load i32, ptr %274, align 4, !tbaa !452
  %276 = and i32 %275, 524288
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %296, label %278, !prof !713

278:                                              ; preds = %273
  %279 = getelementptr inbounds %struct.sv, ptr %272, i64 0, i32 1
  %280 = load i32, ptr %279, align 8, !tbaa !468
  %281 = icmp eq i32 %280, 1
  %282 = and i32 %275, 14680064
  %283 = icmp eq i32 %282, 0
  %284 = and i1 %283, %281
  br i1 %284, label %285, label %296

285:                                              ; preds = %278
  %286 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %272) #22
  %287 = getelementptr inbounds ptr, ptr %60, i64 1
  store ptr %272, ptr %287, align 8, !tbaa !385
  %288 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  %289 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !509
  %290 = icmp sgt i64 %288, %289
  br i1 %290, label %291, label %293

291:                                              ; preds = %285
  tail call void @Perl_free_tmps() #21
  %292 = load ptr, ptr %287, align 8, !tbaa !385
  br label %293

293:                                              ; preds = %291, %285
  %294 = phi ptr [ %292, %291 ], [ %272, %285 ]
  %295 = tail call ptr @Perl_sv_2mortal(ptr noundef %294) #21
  br label %352

296:                                              ; preds = %278, %273
  %297 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %272) #22
  %298 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  %299 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !509
  %300 = icmp sgt i64 %298, %299
  br i1 %300, label %301, label %302, !prof !681

301:                                              ; preds = %296
  tail call void @Perl_free_tmps() #21
  br label %302

302:                                              ; preds = %301, %296
  %303 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %272, i32 noundef 1538) #21
  %304 = getelementptr inbounds ptr, ptr %60, i64 1
  store ptr %303, ptr %304, align 8, !tbaa !385
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %272) #22
  br label %352

305:                                              ; preds = %266, %268
  %306 = phi ptr [ %267, %266 ], [ %272, %268 ]
  %307 = getelementptr inbounds %struct.sv, ptr %306, i64 0, i32 2
  %308 = load i32, ptr %307, align 4, !tbaa !452
  %309 = and i32 %308, 524288
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %320, label %311, !prof !714

311:                                              ; preds = %305
  %312 = getelementptr inbounds %struct.sv, ptr %306, i64 0, i32 1
  %313 = load i32, ptr %312, align 8, !tbaa !468
  %314 = icmp eq i32 %313, 1
  %315 = and i32 %308, 14680064
  %316 = icmp eq i32 %315, 0
  %317 = and i1 %316, %314
  br i1 %317, label %318, label %320, !prof !715

318:                                              ; preds = %311
  %319 = getelementptr inbounds ptr, ptr %60, i64 1
  store ptr %306, ptr %319, align 8, !tbaa !385
  br label %352

320:                                              ; preds = %311, %305
  %321 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %306, i32 noundef 1538) #21
  %322 = getelementptr inbounds ptr, ptr %60, i64 1
  store ptr %321, ptr %322, align 8, !tbaa !385
  br label %352

323:                                              ; preds = %261
  %324 = load ptr, ptr %1, align 8, !tbaa !385
  %325 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef %324, i32 noundef 1538) #21
  %326 = getelementptr inbounds ptr, ptr %60, i64 1
  store ptr %325, ptr %326, align 8, !tbaa !385
  store ptr %326, ptr @PL_stack_sp, align 8, !tbaa !385
  tail call void @Perl_pop_scope() #21
  br label %452

327:                                              ; preds = %259
  %328 = getelementptr inbounds ptr, ptr %60, i64 1
  store ptr @PL_sv_undef, ptr %328, align 8, !tbaa !385
  br label %354

329:                                              ; preds = %256, %347
  %330 = phi ptr [ %350, %347 ], [ %257, %256 ]
  %331 = phi ptr [ %349, %347 ], [ %60, %256 ]
  %332 = load ptr, ptr %330, align 8, !tbaa !385
  br i1 %253, label %333, label %345, !prof !716

333:                                              ; preds = %329
  %334 = getelementptr inbounds %struct.sv, ptr %332, i64 0, i32 2
  %335 = load i32, ptr %334, align 4, !tbaa !452
  %336 = and i32 %335, 524288
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %345, label %338, !prof !716

338:                                              ; preds = %333
  %339 = getelementptr inbounds %struct.sv, ptr %332, i64 0, i32 1
  %340 = load i32, ptr %339, align 8, !tbaa !468
  %341 = icmp eq i32 %340, 1
  %342 = and i32 %335, 2097152
  %343 = icmp eq i32 %342, 0
  %344 = and i1 %343, %341
  br i1 %344, label %347, label %345

345:                                              ; preds = %338, %333, %329
  %346 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef %332, i32 noundef 1538) #21
  br label %347

347:                                              ; preds = %338, %345
  %348 = phi ptr [ %346, %345 ], [ %332, %338 ]
  %349 = getelementptr inbounds ptr, ptr %331, i64 1
  store ptr %348, ptr %349, align 8, !tbaa !385
  store i8 0, ptr @PL_tainted, align 1, !tbaa !423
  %350 = getelementptr inbounds ptr, ptr %330, i64 1
  %351 = icmp ugt ptr %350, %1
  br i1 %351, label %354, label %329, !prof !717, !llvm.loop !718

352:                                              ; preds = %318, %320, %293, %302
  %353 = phi ptr [ %319, %318 ], [ %322, %320 ], [ %287, %293 ], [ %304, %302 ]
  store ptr %353, ptr @PL_stack_sp, align 8, !tbaa !385
  br label %356

354:                                              ; preds = %347, %256, %327, %252
  %355 = phi ptr [ %328, %327 ], [ %60, %252 ], [ %60, %256 ], [ %349, %347 ]
  store ptr %355, ptr @PL_stack_sp, align 8, !tbaa !385
  tail call void @Perl_pop_scope() #21
  br i1 %253, label %359, label %452, !prof !719

356:                                              ; preds = %251, %352
  %357 = phi ptr [ %255, %352 ], [ %248, %251 ]
  %358 = phi i8 [ %254, %352 ], [ 0, %251 ]
  tail call void @Perl_pop_scope() #21
  br label %359

359:                                              ; preds = %356, %354
  %360 = phi ptr [ %255, %354 ], [ %357, %356 ]
  %361 = phi i8 [ %254, %354 ], [ %358, %356 ]
  %362 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %363 = getelementptr inbounds %struct.stackinfo, ptr %362, i64 0, i32 4
  %364 = load i32, ptr %363, align 8, !tbaa !397
  %365 = add nsw i32 %364, -1
  store i32 %365, ptr %363, align 8, !tbaa !397
  %366 = getelementptr inbounds %struct.block, ptr %55, i64 0, i32 8, i32 0, i32 4
  %367 = load i32, ptr %366, align 8, !tbaa !398
  %368 = getelementptr inbounds %struct.block, ptr %55, i64 0, i32 2
  %369 = load i16, ptr %368, align 2, !tbaa !398
  %370 = and i16 %369, 256
  %371 = icmp eq i16 %370, 0
  br i1 %371, label %372, label %434, !prof !705

372:                                              ; preds = %359
  %373 = or disjoint i16 %369, 256
  store i16 %373, ptr %368, align 2, !tbaa !398
  %374 = load i8, ptr %55, align 8, !tbaa !398
  %375 = and i8 %374, 32
  %376 = icmp eq i8 %375, 0
  br i1 %376, label %434, label %377, !prof !720

377:                                              ; preds = %372
  %378 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %379 = getelementptr inbounds %struct.gv, ptr %378, i64 0, i32 3
  %380 = load ptr, ptr %379, align 8, !tbaa !398
  %381 = getelementptr inbounds %struct.gp, ptr %380, i64 0, i32 6
  %382 = load ptr, ptr %381, align 8, !tbaa !604
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %382) #22
  %383 = getelementptr inbounds %struct.block, ptr %55, i64 0, i32 8, i32 0, i32 2
  %384 = load ptr, ptr %383, align 8, !tbaa !398
  %385 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %386 = getelementptr inbounds %struct.gv, ptr %385, i64 0, i32 3
  %387 = load ptr, ptr %386, align 8, !tbaa !398
  %388 = getelementptr inbounds %struct.gp, ptr %387, i64 0, i32 6
  store ptr %384, ptr %388, align 8, !tbaa !604
  %389 = getelementptr inbounds %struct.block, ptr %55, i64 0, i32 8, i32 0, i32 3
  %390 = load ptr, ptr %389, align 8, !tbaa !398
  %391 = getelementptr inbounds %struct.av, ptr %390, i64 0, i32 2
  %392 = load i32, ptr %391, align 4, !tbaa !605
  %393 = and i32 %392, 1073741824
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %413, label %395, !prof !721

395:                                              ; preds = %377
  %396 = load ptr, ptr %390, align 8, !tbaa !607
  %397 = getelementptr inbounds %struct.xpvav, ptr %396, i64 0, i32 2
  %398 = load i64, ptr %397, align 8, !tbaa !608
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %390) #22
  %399 = tail call ptr @Perl_newSV_type(i32 noundef 11) #21
  store ptr %399, ptr %389, align 8, !tbaa !398
  tail call void @Perl_av_extend(ptr noundef %399, i64 noundef %398) #21
  %400 = load ptr, ptr %389, align 8, !tbaa !398
  %401 = getelementptr inbounds %struct.av, ptr %400, i64 0, i32 2
  %402 = load i32, ptr %401, align 4, !tbaa !605
  %403 = and i32 %402, -1073741825
  store i32 %403, ptr %401, align 4, !tbaa !605
  %404 = load ptr, ptr %389, align 8, !tbaa !398
  %405 = getelementptr inbounds %struct.av, ptr %404, i64 0, i32 2
  %406 = load i32, ptr %405, align 4, !tbaa !605
  %407 = or i32 %406, -2147483648
  store i32 %407, ptr %405, align 4, !tbaa !605
  %408 = load ptr, ptr %389, align 8, !tbaa !398
  %409 = getelementptr inbounds %struct.block, ptr %55, i64 0, i32 8, i32 0, i32 5
  %410 = load ptr, ptr %409, align 8, !tbaa !398
  %411 = getelementptr inbounds %struct.av, ptr %410, i64 0, i32 3
  %412 = load ptr, ptr %411, align 8, !tbaa !398
  store ptr %408, ptr %412, align 8, !tbaa !385
  br label %434

413:                                              ; preds = %377
  %414 = getelementptr inbounds %struct.av, ptr %390, i64 0, i32 3
  %415 = load ptr, ptr %414, align 8, !tbaa !398
  %416 = load ptr, ptr %390, align 8, !tbaa !607
  %417 = getelementptr inbounds %struct.xpvav, ptr %416, i64 0, i32 4
  %418 = load ptr, ptr %417, align 8, !tbaa !610
  %419 = ptrtoint ptr %415 to i64
  %420 = ptrtoint ptr %418 to i64
  %421 = sub i64 %419, %420
  %422 = ashr exact i64 %421, 3
  %423 = getelementptr inbounds %struct.xpvav, ptr %416, i64 0, i32 3
  %424 = load i64, ptr %423, align 8, !tbaa !611
  %425 = add nsw i64 %422, %424
  store i64 %425, ptr %423, align 8, !tbaa !611
  %426 = load ptr, ptr %389, align 8, !tbaa !398
  %427 = load ptr, ptr %426, align 8, !tbaa !607
  %428 = getelementptr inbounds %struct.xpvav, ptr %427, i64 0, i32 4
  %429 = load ptr, ptr %428, align 8, !tbaa !610
  %430 = getelementptr inbounds %struct.av, ptr %426, i64 0, i32 3
  store ptr %429, ptr %430, align 8, !tbaa !398
  %431 = load ptr, ptr %389, align 8, !tbaa !398
  %432 = load ptr, ptr %431, align 8, !tbaa !607
  %433 = getelementptr inbounds %struct.xpvav, ptr %432, i64 0, i32 2
  store i64 -1, ptr %433, align 8, !tbaa !608
  br label %434

434:                                              ; preds = %372, %413, %395, %359
  %435 = getelementptr inbounds %struct.block, ptr %55, i64 0, i32 8, i32 0, i32 1
  %436 = load ptr, ptr %435, align 8, !tbaa !398
  %437 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !430
  %438 = load ptr, ptr @PL_scopestack, align 8, !tbaa !385
  %439 = load i32, ptr %68, align 4, !tbaa !398
  %440 = sext i32 %439 to i64
  %441 = getelementptr i32, ptr %438, i64 %440
  %442 = getelementptr i32, ptr %441, i64 -1
  %443 = load i32, ptr %442, align 4, !tbaa !430
  %444 = icmp sgt i32 %437, %443
  br i1 %444, label %445, label %446, !prof !703

445:                                              ; preds = %434
  tail call void @Perl_leave_scope(i32 noundef %443) #21
  br label %446

446:                                              ; preds = %445, %434
  %447 = icmp eq ptr %436, null
  br i1 %447, label %452, label %448, !prof !703

448:                                              ; preds = %446
  %449 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %436) #22
  store i32 %367, ptr %449, align 4, !tbaa !430
  %450 = icmp eq i32 %367, 0
  %451 = select i1 %450, ptr %436, ptr null, !prof !722
  br label %452

452:                                              ; preds = %323, %448, %354, %446
  %453 = phi ptr [ %360, %446 ], [ %360, %448 ], [ %255, %354 ], [ %255, %323 ]
  %454 = phi i8 [ %361, %446 ], [ %361, %448 ], [ %254, %354 ], [ %254, %323 ]
  %455 = phi ptr [ null, %446 ], [ %451, %448 ], [ null, %354 ], [ null, %323 ]
  store ptr %71, ptr @PL_curpm, align 8, !tbaa !385
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %455) #22
  %456 = and i8 %454, 1
  %457 = icmp eq i8 %456, 0
  br i1 %457, label %480, label %458, !prof !705

458:                                              ; preds = %452
  %459 = load ptr, ptr @PL_errgv, align 8, !tbaa !385
  %460 = getelementptr inbounds %struct.gv, ptr %459, i64 0, i32 3
  %461 = load ptr, ptr %460, align 8, !tbaa !398
  %462 = load ptr, ptr %461, align 8, !tbaa !385
  %463 = icmp eq ptr %462, null
  br i1 %463, label %470, label %464

464:                                              ; preds = %458
  %465 = getelementptr inbounds %struct.sv, ptr %462, i64 0, i32 2
  %466 = load i32, ptr %465, align 4, !tbaa !452
  %467 = and i32 %466, 134283264
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %472, label %469

469:                                              ; preds = %464
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %462) #22
  br label %470

470:                                              ; preds = %458, %469
  %471 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.8, i64 noundef 0) #21
  store ptr %471, ptr %461, align 8, !tbaa !385
  br label %480

472:                                              ; preds = %464
  tail call void @Perl_sv_setpvn(ptr noundef nonnull %462, ptr noundef nonnull @.str.8, i64 noundef 0) #21
  %473 = load i32, ptr %465, align 4, !tbaa !452
  %474 = and i32 %473, 1610547455
  %475 = or disjoint i32 %474, 17408
  store i32 %475, ptr %465, align 4, !tbaa !452
  %476 = and i32 %473, 14680064
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %480, label %478

478:                                              ; preds = %472
  %479 = tail call i32 @Perl_mg_free(ptr noundef nonnull %462) #21
  br label %480

480:                                              ; preds = %452, %472, %478, %470, %43, %45, %40, %235, %189, %24, %19
  %481 = phi ptr [ null, %19 ], [ %25, %24 ], [ %237, %235 ], [ %204, %189 ], [ null, %40 ], [ null, %45 ], [ null, %43 ], [ %453, %470 ], [ %453, %478 ], [ %453, %472 ], [ %453, %452 ]
  ret ptr %481
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_return_lvalues(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef %4, ptr noundef %5) unnamed_addr #0 !prof !422 !PGOFuncName !723 {
  %7 = getelementptr inbounds %struct.block, ptr %4, i64 0, i32 2
  %8 = load i16, ptr %7, align 2, !tbaa !398
  %9 = and i16 %8, 255
  %10 = and i16 %8, 1
  %11 = icmp ne i16 %10, 0
  switch i32 %3, label %380 [
    i32 2, label %12
    i32 3, label %225
  ]

12:                                               ; preds = %6
  %13 = icmp eq i16 %9, 0
  %14 = or i1 %13, %11
  %15 = icmp ult ptr %0, %1
  br i1 %14, label %126, label %16

16:                                               ; preds = %12
  br i1 %15, label %17, label %32

17:                                               ; preds = %16
  %18 = load ptr, ptr %1, align 8, !tbaa !385
  %19 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !452
  %21 = and i32 %20, 134414336
  %22 = icmp ne i32 %21, 0
  %23 = and i32 %20, 4194304
  %24 = icmp eq i32 %23, 0
  %25 = and i1 %22, %24
  br i1 %25, label %26, label %127

26:                                               ; preds = %17
  %27 = and i32 %20, 134283264
  %28 = icmp eq i32 %27, 0
  %29 = icmp eq ptr %18, @PL_sv_undef
  %30 = select i1 %29, ptr @.str.88, ptr @.str.89
  %31 = select i1 %28, ptr @.str.90, ptr %30
  br label %32

32:                                               ; preds = %16, %26
  %33 = phi ptr [ %31, %26 ], [ @.str.88, %16 ]
  tail call void @Perl_pop_scope() #21
  %34 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %35 = getelementptr inbounds %struct.stackinfo, ptr %34, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !397
  %37 = add nsw i32 %36, -1
  store i32 %37, ptr %35, align 8, !tbaa !397
  %38 = getelementptr inbounds %struct.block, ptr %4, i64 0, i32 8, i32 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !398
  %40 = load i16, ptr %7, align 2, !tbaa !398
  %41 = and i16 %40, 256
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %105

43:                                               ; preds = %32
  %44 = or disjoint i16 %40, 256
  store i16 %44, ptr %7, align 2, !tbaa !398
  %45 = load i8, ptr %4, align 8, !tbaa !398
  %46 = and i8 %45, 32
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %105, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %50 = getelementptr inbounds %struct.gv, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !398
  %52 = getelementptr inbounds %struct.gp, ptr %51, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !604
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %53) #22
  %54 = getelementptr inbounds %struct.block, ptr %4, i64 0, i32 8, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !398
  %56 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %57 = getelementptr inbounds %struct.gv, ptr %56, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !398
  %59 = getelementptr inbounds %struct.gp, ptr %58, i64 0, i32 6
  store ptr %55, ptr %59, align 8, !tbaa !604
  %60 = getelementptr inbounds %struct.block, ptr %4, i64 0, i32 8, i32 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !398
  %62 = getelementptr inbounds %struct.av, ptr %61, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !605
  %64 = and i32 %63, 1073741824
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %84, label %66

66:                                               ; preds = %48
  %67 = load ptr, ptr %61, align 8, !tbaa !607
  %68 = getelementptr inbounds %struct.xpvav, ptr %67, i64 0, i32 2
  %69 = load i64, ptr %68, align 8, !tbaa !608
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %61) #22
  %70 = tail call ptr @Perl_newSV_type(i32 noundef 11) #21
  store ptr %70, ptr %60, align 8, !tbaa !398
  tail call void @Perl_av_extend(ptr noundef %70, i64 noundef %69) #21
  %71 = load ptr, ptr %60, align 8, !tbaa !398
  %72 = getelementptr inbounds %struct.av, ptr %71, i64 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !605
  %74 = and i32 %73, -1073741825
  store i32 %74, ptr %72, align 4, !tbaa !605
  %75 = load ptr, ptr %60, align 8, !tbaa !398
  %76 = getelementptr inbounds %struct.av, ptr %75, i64 0, i32 2
  %77 = load i32, ptr %76, align 4, !tbaa !605
  %78 = or i32 %77, -2147483648
  store i32 %78, ptr %76, align 4, !tbaa !605
  %79 = load ptr, ptr %60, align 8, !tbaa !398
  %80 = getelementptr inbounds %struct.block, ptr %4, i64 0, i32 8, i32 0, i32 5
  %81 = load ptr, ptr %80, align 8, !tbaa !398
  %82 = getelementptr inbounds %struct.av, ptr %81, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !398
  store ptr %79, ptr %83, align 8, !tbaa !385
  br label %105

84:                                               ; preds = %48
  %85 = getelementptr inbounds %struct.av, ptr %61, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !398
  %87 = load ptr, ptr %61, align 8, !tbaa !607
  %88 = getelementptr inbounds %struct.xpvav, ptr %87, i64 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !610
  %90 = ptrtoint ptr %86 to i64
  %91 = ptrtoint ptr %89 to i64
  %92 = sub i64 %90, %91
  %93 = ashr exact i64 %92, 3
  %94 = getelementptr inbounds %struct.xpvav, ptr %87, i64 0, i32 3
  %95 = load i64, ptr %94, align 8, !tbaa !611
  %96 = add nsw i64 %93, %95
  store i64 %96, ptr %94, align 8, !tbaa !611
  %97 = load ptr, ptr %60, align 8, !tbaa !398
  %98 = load ptr, ptr %97, align 8, !tbaa !607
  %99 = getelementptr inbounds %struct.xpvav, ptr %98, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !610
  %101 = getelementptr inbounds %struct.av, ptr %97, i64 0, i32 3
  store ptr %100, ptr %101, align 8, !tbaa !398
  %102 = load ptr, ptr %60, align 8, !tbaa !398
  %103 = load ptr, ptr %102, align 8, !tbaa !607
  %104 = getelementptr inbounds %struct.xpvav, ptr %103, i64 0, i32 2
  store i64 -1, ptr %104, align 8, !tbaa !608
  br label %105

105:                                              ; preds = %43, %84, %66, %32
  %106 = getelementptr inbounds %struct.block, ptr %4, i64 0, i32 8, i32 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !398
  %108 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !430
  %109 = load ptr, ptr @PL_scopestack, align 8, !tbaa !385
  %110 = getelementptr inbounds %struct.block, ptr %4, i64 0, i32 6
  %111 = load i32, ptr %110, align 4, !tbaa !398
  %112 = sext i32 %111 to i64
  %113 = getelementptr i32, ptr %109, i64 %112
  %114 = getelementptr i32, ptr %113, i64 -1
  %115 = load i32, ptr %114, align 4, !tbaa !430
  %116 = icmp sgt i32 %108, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %105
  tail call void @Perl_leave_scope(i32 noundef %115) #21
  br label %118

118:                                              ; preds = %117, %105
  %119 = icmp eq ptr %107, null
  br i1 %119, label %124, label %120

120:                                              ; preds = %118
  %121 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %107) #22
  store i32 %39, ptr %121, align 4, !tbaa !430
  %122 = icmp eq i32 %39, 0
  %123 = select i1 %122, ptr %107, ptr null
  br label %124

124:                                              ; preds = %118, %120
  %125 = phi ptr [ null, %118 ], [ %123, %120 ]
  store ptr %5, ptr @PL_curpm, align 8, !tbaa !385
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %125) #22
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.91, ptr noundef %33) #21
  br i1 %15, label %127, label %181

126:                                              ; preds = %12
  br i1 %15, label %127, label %181

127:                                              ; preds = %17, %124, %126
  %128 = getelementptr inbounds %struct.block, ptr %4, i64 0, i32 8, i32 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !398
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = load ptr, ptr %1, align 8, !tbaa !385
  br label %162

133:                                              ; preds = %127
  %134 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %129) #22
  %135 = load i32, ptr %134, align 4, !tbaa !430
  %136 = icmp sgt i32 %135, 1
  %137 = load ptr, ptr %1, align 8, !tbaa !385
  br i1 %136, label %138, label %162

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.sv, ptr %137, i64 0, i32 2
  %140 = load i32, ptr %139, align 4, !tbaa !452
  %141 = and i32 %140, 131072
  %142 = icmp eq i32 %141, 0
  %143 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %137) #22
  br i1 %142, label %144, label %154

144:                                              ; preds = %138
  %145 = getelementptr inbounds ptr, ptr %2, i64 1
  store ptr %137, ptr %145, align 8, !tbaa !385
  %146 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  %147 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !509
  %148 = icmp sgt i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  tail call void @Perl_free_tmps() #21
  %150 = load ptr, ptr %145, align 8, !tbaa !385
  br label %151

151:                                              ; preds = %149, %144
  %152 = phi ptr [ %150, %149 ], [ %137, %144 ]
  %153 = tail call ptr @Perl_sv_2mortal(ptr noundef %152) #21
  br label %192

154:                                              ; preds = %138
  %155 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  %156 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !509
  %157 = icmp sgt i64 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  tail call void @Perl_free_tmps() #21
  br label %159

159:                                              ; preds = %158, %154
  %160 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %137, i32 noundef 1538) #21
  %161 = getelementptr inbounds ptr, ptr %2, i64 1
  store ptr %160, ptr %161, align 8, !tbaa !385
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %137) #22
  br label %192

162:                                              ; preds = %131, %133
  %163 = phi ptr [ %132, %131 ], [ %137, %133 ]
  %164 = getelementptr inbounds %struct.sv, ptr %163, i64 0, i32 2
  %165 = load i32, ptr %164, align 4, !tbaa !452
  %166 = and i32 %165, 131072
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %162
  %169 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %163, i32 noundef 1538) #21
  br label %178

170:                                              ; preds = %162
  %171 = and i32 %165, 524288
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.sv, ptr %163, i64 0, i32 1
  %175 = load i32, ptr %174, align 8, !tbaa !468
  %176 = add i32 %175, 1
  store i32 %176, ptr %174, align 8, !tbaa !468
  %177 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %163) #21
  br label %178

178:                                              ; preds = %170, %173, %168
  %179 = phi ptr [ %169, %168 ], [ %177, %173 ], [ %163, %170 ]
  %180 = getelementptr inbounds ptr, ptr %2, i64 1
  store ptr %179, ptr %180, align 8, !tbaa !385
  br label %192

181:                                              ; preds = %124, %126
  %182 = load ptr, ptr @PL_stack_max, align 8, !tbaa !385
  %183 = ptrtoint ptr %182 to i64
  %184 = ptrtoint ptr %2 to i64
  %185 = sub i64 %183, %184
  %186 = icmp slt i64 %185, 8
  br i1 %186, label %187, label %189

187:                                              ; preds = %181
  %188 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %2, i64 noundef 1) #21
  br label %189

189:                                              ; preds = %181, %187
  %190 = phi ptr [ %188, %187 ], [ %1, %181 ]
  %191 = getelementptr inbounds ptr, ptr %2, i64 1
  store ptr @PL_sv_undef, ptr %191, align 8, !tbaa !385
  br label %192

192:                                              ; preds = %178, %159, %151, %189
  %193 = phi ptr [ %161, %159 ], [ %145, %151 ], [ %180, %178 ], [ %191, %189 ]
  %194 = phi ptr [ %1, %159 ], [ %1, %151 ], [ %1, %178 ], [ %190, %189 ]
  %195 = load i16, ptr %7, align 2, !tbaa !398
  %196 = and i16 %195, 48
  %197 = icmp eq i16 %196, 0
  br i1 %197, label %380, label %198

198:                                              ; preds = %192
  %199 = load ptr, ptr %194, align 8, !tbaa !385
  %200 = getelementptr inbounds %struct.sv, ptr %199, i64 0, i32 2
  %201 = load i32, ptr %200, align 4, !tbaa !452
  %202 = and i32 %201, 2097152
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %209, label %204

204:                                              ; preds = %198
  %205 = tail call i32 @Perl_mg_get(ptr noundef nonnull %199) #21
  %206 = load ptr, ptr %194, align 8, !tbaa !385
  %207 = getelementptr inbounds %struct.sv, ptr %206, i64 0, i32 2
  %208 = load i32, ptr %207, align 4, !tbaa !452
  br label %209

209:                                              ; preds = %198, %204
  %210 = phi i32 [ %201, %198 ], [ %208, %204 ]
  %211 = phi ptr [ %199, %198 ], [ %206, %204 ]
  %212 = and i32 %210, 65280
  %213 = icmp ne i32 %212, 0
  %214 = and i32 %210, 255
  %215 = icmp eq i32 %214, 8
  %216 = or i1 %213, %215
  %217 = and i32 %210, 16777471
  %218 = icmp eq i32 %217, 16777226
  %219 = or i1 %218, %216
  br i1 %219, label %380, label %220

220:                                              ; preds = %209
  %221 = load i16, ptr %7, align 2, !tbaa !398
  %222 = and i16 %221, 48
  %223 = zext nneg i16 %222 to i32
  %224 = tail call ptr @Perl_vivify_ref(ptr noundef nonnull %211, i32 noundef %223) #21
  store ptr %224, ptr %194, align 8, !tbaa !385
  br label %380

225:                                              ; preds = %6
  %226 = icmp eq i16 %9, 0
  %227 = or i1 %11, %226
  %228 = getelementptr inbounds ptr, ptr %0, i64 1
  %229 = icmp ugt ptr %228, %1
  br i1 %227, label %238, label %230

230:                                              ; preds = %225
  br i1 %229, label %380, label %231

231:                                              ; preds = %230
  %232 = getelementptr inbounds %struct.block, ptr %4, i64 0, i32 8, i32 0, i32 4
  %233 = getelementptr inbounds %struct.block, ptr %4, i64 0, i32 8, i32 0, i32 2
  %234 = getelementptr inbounds %struct.block, ptr %4, i64 0, i32 8, i32 0, i32 3
  %235 = getelementptr inbounds %struct.block, ptr %4, i64 0, i32 8, i32 0, i32 5
  %236 = getelementptr inbounds %struct.block, ptr %4, i64 0, i32 8, i32 0, i32 1
  %237 = getelementptr inbounds %struct.block, ptr %4, i64 0, i32 6
  br label %262

238:                                              ; preds = %225
  br i1 %229, label %380, label %239

239:                                              ; preds = %238, %257
  %240 = phi ptr [ %260, %257 ], [ %228, %238 ]
  %241 = phi ptr [ %259, %257 ], [ %2, %238 ]
  %242 = load ptr, ptr %240, align 8, !tbaa !385
  %243 = getelementptr inbounds %struct.sv, ptr %242, i64 0, i32 2
  %244 = load i32, ptr %243, align 4, !tbaa !452
  %245 = and i32 %244, 131072
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %249, label %247

247:                                              ; preds = %239
  %248 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %242, i32 noundef 1538) #21
  br label %257

249:                                              ; preds = %239
  %250 = and i32 %244, 524288
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.sv, ptr %242, i64 0, i32 1
  %254 = load i32, ptr %253, align 8, !tbaa !468
  %255 = add i32 %254, 1
  store i32 %255, ptr %253, align 8, !tbaa !468
  %256 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %242) #21
  br label %257

257:                                              ; preds = %249, %252, %247
  %258 = phi ptr [ %248, %247 ], [ %256, %252 ], [ %242, %249 ]
  %259 = getelementptr inbounds ptr, ptr %241, i64 1
  store ptr %258, ptr %259, align 8, !tbaa !385
  %260 = getelementptr inbounds ptr, ptr %240, i64 1
  %261 = icmp ugt ptr %260, %1
  br i1 %261, label %380, label %239, !llvm.loop !724

262:                                              ; preds = %231, %376
  %263 = phi ptr [ %228, %231 ], [ %378, %376 ]
  %264 = phi ptr [ %2, %231 ], [ %377, %376 ]
  %265 = load ptr, ptr %263, align 8, !tbaa !385
  %266 = icmp eq ptr %265, @PL_sv_undef
  br i1 %266, label %267, label %269

267:                                              ; preds = %262
  %268 = load i32, ptr getelementptr inbounds (%struct.sv, ptr @PL_sv_undef, i64 0, i32 2), align 4, !tbaa !452
  br label %364

269:                                              ; preds = %262
  %270 = getelementptr inbounds %struct.sv, ptr %265, i64 0, i32 2
  %271 = load i32, ptr %270, align 4, !tbaa !452
  %272 = and i32 %271, 134283264
  %273 = icmp eq i32 %272, 0
  %274 = and i32 %271, 134414336
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %364, label %276

276:                                              ; preds = %269
  store ptr %1, ptr @PL_stack_sp, align 8, !tbaa !385
  tail call void @Perl_pop_scope() #21
  %277 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %278 = getelementptr inbounds %struct.stackinfo, ptr %277, i64 0, i32 4
  %279 = load i32, ptr %278, align 8, !tbaa !397
  %280 = add nsw i32 %279, -1
  store i32 %280, ptr %278, align 8, !tbaa !397
  %281 = load i32, ptr %232, align 8, !tbaa !398
  %282 = load i16, ptr %7, align 2, !tbaa !398
  %283 = and i16 %282, 256
  %284 = icmp eq i16 %283, 0
  br i1 %284, label %285, label %344

285:                                              ; preds = %276
  %286 = or disjoint i16 %282, 256
  store i16 %286, ptr %7, align 2, !tbaa !398
  %287 = load i8, ptr %4, align 8, !tbaa !398
  %288 = and i8 %287, 32
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %344, label %290

290:                                              ; preds = %285
  %291 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %292 = getelementptr inbounds %struct.gv, ptr %291, i64 0, i32 3
  %293 = load ptr, ptr %292, align 8, !tbaa !398
  %294 = getelementptr inbounds %struct.gp, ptr %293, i64 0, i32 6
  %295 = load ptr, ptr %294, align 8, !tbaa !604
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %295) #22
  %296 = load ptr, ptr %233, align 8, !tbaa !398
  %297 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %298 = getelementptr inbounds %struct.gv, ptr %297, i64 0, i32 3
  %299 = load ptr, ptr %298, align 8, !tbaa !398
  %300 = getelementptr inbounds %struct.gp, ptr %299, i64 0, i32 6
  store ptr %296, ptr %300, align 8, !tbaa !604
  %301 = load ptr, ptr %234, align 8, !tbaa !398
  %302 = getelementptr inbounds %struct.av, ptr %301, i64 0, i32 2
  %303 = load i32, ptr %302, align 4, !tbaa !605
  %304 = and i32 %303, 1073741824
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %323, label %306

306:                                              ; preds = %290
  %307 = load ptr, ptr %301, align 8, !tbaa !607
  %308 = getelementptr inbounds %struct.xpvav, ptr %307, i64 0, i32 2
  %309 = load i64, ptr %308, align 8, !tbaa !608
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %301) #22
  %310 = tail call ptr @Perl_newSV_type(i32 noundef 11) #21
  store ptr %310, ptr %234, align 8, !tbaa !398
  tail call void @Perl_av_extend(ptr noundef %310, i64 noundef %309) #21
  %311 = load ptr, ptr %234, align 8, !tbaa !398
  %312 = getelementptr inbounds %struct.av, ptr %311, i64 0, i32 2
  %313 = load i32, ptr %312, align 4, !tbaa !605
  %314 = and i32 %313, -1073741825
  store i32 %314, ptr %312, align 4, !tbaa !605
  %315 = load ptr, ptr %234, align 8, !tbaa !398
  %316 = getelementptr inbounds %struct.av, ptr %315, i64 0, i32 2
  %317 = load i32, ptr %316, align 4, !tbaa !605
  %318 = or i32 %317, -2147483648
  store i32 %318, ptr %316, align 4, !tbaa !605
  %319 = load ptr, ptr %234, align 8, !tbaa !398
  %320 = load ptr, ptr %235, align 8, !tbaa !398
  %321 = getelementptr inbounds %struct.av, ptr %320, i64 0, i32 3
  %322 = load ptr, ptr %321, align 8, !tbaa !398
  store ptr %319, ptr %322, align 8, !tbaa !385
  br label %344

323:                                              ; preds = %290
  %324 = getelementptr inbounds %struct.av, ptr %301, i64 0, i32 3
  %325 = load ptr, ptr %324, align 8, !tbaa !398
  %326 = load ptr, ptr %301, align 8, !tbaa !607
  %327 = getelementptr inbounds %struct.xpvav, ptr %326, i64 0, i32 4
  %328 = load ptr, ptr %327, align 8, !tbaa !610
  %329 = ptrtoint ptr %325 to i64
  %330 = ptrtoint ptr %328 to i64
  %331 = sub i64 %329, %330
  %332 = ashr exact i64 %331, 3
  %333 = getelementptr inbounds %struct.xpvav, ptr %326, i64 0, i32 3
  %334 = load i64, ptr %333, align 8, !tbaa !611
  %335 = add nsw i64 %332, %334
  store i64 %335, ptr %333, align 8, !tbaa !611
  %336 = load ptr, ptr %234, align 8, !tbaa !398
  %337 = load ptr, ptr %336, align 8, !tbaa !607
  %338 = getelementptr inbounds %struct.xpvav, ptr %337, i64 0, i32 4
  %339 = load ptr, ptr %338, align 8, !tbaa !610
  %340 = getelementptr inbounds %struct.av, ptr %336, i64 0, i32 3
  store ptr %339, ptr %340, align 8, !tbaa !398
  %341 = load ptr, ptr %234, align 8, !tbaa !398
  %342 = load ptr, ptr %341, align 8, !tbaa !607
  %343 = getelementptr inbounds %struct.xpvav, ptr %342, i64 0, i32 2
  store i64 -1, ptr %343, align 8, !tbaa !608
  br label %344

344:                                              ; preds = %285, %323, %306, %276
  %345 = load ptr, ptr %236, align 8, !tbaa !398
  %346 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !430
  %347 = load ptr, ptr @PL_scopestack, align 8, !tbaa !385
  %348 = load i32, ptr %237, align 4, !tbaa !398
  %349 = sext i32 %348 to i64
  %350 = getelementptr i32, ptr %347, i64 %349
  %351 = getelementptr i32, ptr %350, i64 -1
  %352 = load i32, ptr %351, align 4, !tbaa !430
  %353 = icmp sgt i32 %346, %352
  br i1 %353, label %354, label %355

354:                                              ; preds = %344
  tail call void @Perl_leave_scope(i32 noundef %352) #21
  br label %355

355:                                              ; preds = %354, %344
  %356 = icmp eq ptr %345, null
  br i1 %356, label %361, label %357

357:                                              ; preds = %355
  %358 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %345) #22
  store i32 %281, ptr %358, align 4, !tbaa !430
  %359 = icmp eq i32 %281, 0
  %360 = select i1 %359, ptr %345, ptr null
  br label %361

361:                                              ; preds = %357, %355
  %362 = phi ptr [ null, %355 ], [ %360, %357 ]
  store ptr %5, ptr @PL_curpm, align 8, !tbaa !385
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %362) #22
  %363 = select i1 %273, ptr @.str.94, ptr @.str.93
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.92, ptr noundef nonnull %363) #21
  br label %376

364:                                              ; preds = %267, %269
  %365 = phi i32 [ %268, %267 ], [ %271, %269 ]
  %366 = and i32 %365, 524288
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %373

368:                                              ; preds = %364
  %369 = getelementptr inbounds %struct.sv, ptr %265, i64 0, i32 1
  %370 = load i32, ptr %369, align 8, !tbaa !468
  %371 = add i32 %370, 1
  store i32 %371, ptr %369, align 8, !tbaa !468
  %372 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %265) #21
  br label %373

373:                                              ; preds = %364, %368
  %374 = phi ptr [ %372, %368 ], [ %265, %364 ]
  %375 = getelementptr inbounds ptr, ptr %264, i64 1
  store ptr %374, ptr %375, align 8, !tbaa !385
  br label %376

376:                                              ; preds = %373, %361
  %377 = phi ptr [ %264, %361 ], [ %375, %373 ]
  %378 = getelementptr inbounds ptr, ptr %263, i64 1
  %379 = icmp ugt ptr %378, %1
  br i1 %379, label %380, label %262, !llvm.loop !725

380:                                              ; preds = %376, %257, %230, %238, %6, %192, %220, %209
  %381 = phi ptr [ %193, %209 ], [ %193, %220 ], [ %193, %192 ], [ %2, %6 ], [ %2, %238 ], [ %2, %230 ], [ %259, %257 ], [ %377, %376 ]
  store ptr %381, ptr @PL_stack_sp, align 8, !tbaa !385
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_mg_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_leavesublv() local_unnamed_addr #0 !prof !422 {
  %1 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %2 = getelementptr inbounds %struct.stackinfo, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !395
  %4 = getelementptr inbounds %struct.stackinfo, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !397
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.context, ptr %3, i64 %6
  %8 = load i8, ptr %7, align 8, !tbaa !398
  %9 = and i8 %8, 16
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %127

11:                                               ; preds = %0
  %12 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %13 = add nsw i32 %5, -1
  store i32 %13, ptr %4, align 8, !tbaa !397
  %14 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %15 = getelementptr inbounds %struct.block, ptr %7, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !398
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %14, i64 %17
  %19 = getelementptr inbounds %struct.block, ptr %7, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !398
  store ptr %20, ptr @PL_curcop, align 8, !tbaa !385
  %21 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %22 = getelementptr inbounds %struct.block, ptr %7, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !398
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %21, i64 %24
  store ptr %25, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %26 = getelementptr inbounds %struct.block, ptr %7, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !398
  store i32 %27, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %28 = getelementptr inbounds %struct.block, ptr %7, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !398
  %30 = getelementptr inbounds %struct.block, ptr %7, i64 0, i32 1
  %31 = load i8, ptr %30, align 1, !tbaa !398
  %32 = zext i8 %31 to i32
  store i32 %5, ptr %4, align 8, !tbaa !397
  store i8 0, ptr @PL_tainted, align 1, !tbaa !423
  tail call fastcc void @S_return_lvalues(ptr noundef %18, ptr noundef %12, ptr noundef %18, i32 noundef %32, ptr noundef nonnull %7, ptr noundef %29) #22
  tail call void @Perl_pop_scope() #21
  %33 = getelementptr inbounds %struct.block, ptr %7, i64 0, i32 8
  %34 = getelementptr inbounds %struct.block, ptr %7, i64 0, i32 8, i32 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !398
  %36 = getelementptr inbounds %struct.block, ptr %7, i64 0, i32 2
  %37 = load i16, ptr %36, align 2, !tbaa !398
  %38 = and i16 %37, 256
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %102

40:                                               ; preds = %11
  %41 = or disjoint i16 %37, 256
  store i16 %41, ptr %36, align 2, !tbaa !398
  %42 = load i8, ptr %7, align 8, !tbaa !398
  %43 = and i8 %42, 32
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %102, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %47 = getelementptr inbounds %struct.gv, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !398
  %49 = getelementptr inbounds %struct.gp, ptr %48, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !604
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %50) #22
  %51 = getelementptr inbounds %struct.block, ptr %7, i64 0, i32 8, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !398
  %53 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %54 = getelementptr inbounds %struct.gv, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !398
  %56 = getelementptr inbounds %struct.gp, ptr %55, i64 0, i32 6
  store ptr %52, ptr %56, align 8, !tbaa !604
  %57 = getelementptr inbounds %struct.block, ptr %7, i64 0, i32 8, i32 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !398
  %59 = getelementptr inbounds %struct.av, ptr %58, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !605
  %61 = and i32 %60, 1073741824
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %81, label %63

63:                                               ; preds = %45
  %64 = load ptr, ptr %58, align 8, !tbaa !607
  %65 = getelementptr inbounds %struct.xpvav, ptr %64, i64 0, i32 2
  %66 = load i64, ptr %65, align 8, !tbaa !608
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %58) #22
  %67 = tail call ptr @Perl_newSV_type(i32 noundef 11) #21
  store ptr %67, ptr %57, align 8, !tbaa !398
  tail call void @Perl_av_extend(ptr noundef %67, i64 noundef %66) #21
  %68 = load ptr, ptr %57, align 8, !tbaa !398
  %69 = getelementptr inbounds %struct.av, ptr %68, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !605
  %71 = and i32 %70, -1073741825
  store i32 %71, ptr %69, align 4, !tbaa !605
  %72 = load ptr, ptr %57, align 8, !tbaa !398
  %73 = getelementptr inbounds %struct.av, ptr %72, i64 0, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !605
  %75 = or i32 %74, -2147483648
  store i32 %75, ptr %73, align 4, !tbaa !605
  %76 = load ptr, ptr %57, align 8, !tbaa !398
  %77 = getelementptr inbounds %struct.block, ptr %7, i64 0, i32 8, i32 0, i32 5
  %78 = load ptr, ptr %77, align 8, !tbaa !398
  %79 = getelementptr inbounds %struct.av, ptr %78, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !398
  store ptr %76, ptr %80, align 8, !tbaa !385
  br label %102

81:                                               ; preds = %45
  %82 = getelementptr inbounds %struct.av, ptr %58, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !398
  %84 = load ptr, ptr %58, align 8, !tbaa !607
  %85 = getelementptr inbounds %struct.xpvav, ptr %84, i64 0, i32 4
  %86 = load ptr, ptr %85, align 8, !tbaa !610
  %87 = ptrtoint ptr %83 to i64
  %88 = ptrtoint ptr %86 to i64
  %89 = sub i64 %87, %88
  %90 = ashr exact i64 %89, 3
  %91 = getelementptr inbounds %struct.xpvav, ptr %84, i64 0, i32 3
  %92 = load i64, ptr %91, align 8, !tbaa !611
  %93 = add nsw i64 %90, %92
  store i64 %93, ptr %91, align 8, !tbaa !611
  %94 = load ptr, ptr %57, align 8, !tbaa !398
  %95 = load ptr, ptr %94, align 8, !tbaa !607
  %96 = getelementptr inbounds %struct.xpvav, ptr %95, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !610
  %98 = getelementptr inbounds %struct.av, ptr %94, i64 0, i32 3
  store ptr %97, ptr %98, align 8, !tbaa !398
  %99 = load ptr, ptr %57, align 8, !tbaa !398
  %100 = load ptr, ptr %99, align 8, !tbaa !607
  %101 = getelementptr inbounds %struct.xpvav, ptr %100, i64 0, i32 2
  store i64 -1, ptr %101, align 8, !tbaa !608
  br label %102

102:                                              ; preds = %40, %81, %63, %11
  %103 = getelementptr inbounds %struct.block, ptr %7, i64 0, i32 8, i32 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !398
  %105 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !430
  %106 = load ptr, ptr @PL_scopestack, align 8, !tbaa !385
  %107 = load i32, ptr %26, align 4, !tbaa !398
  %108 = sext i32 %107 to i64
  %109 = getelementptr i32, ptr %106, i64 %108
  %110 = getelementptr i32, ptr %109, i64 -1
  %111 = load i32, ptr %110, align 4, !tbaa !430
  %112 = icmp sgt i32 %105, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %102
  tail call void @Perl_leave_scope(i32 noundef %111) #21
  br label %114

114:                                              ; preds = %113, %102
  %115 = icmp eq ptr %104, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %114
  %117 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %104) #22
  store i32 %35, ptr %117, align 4, !tbaa !430
  %118 = icmp eq i32 %35, 0
  %119 = select i1 %118, ptr %104, ptr null
  br label %120

120:                                              ; preds = %116, %114
  %121 = phi ptr [ null, %114 ], [ %119, %116 ]
  %122 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %123 = getelementptr inbounds %struct.stackinfo, ptr %122, i64 0, i32 4
  %124 = load i32, ptr %123, align 8, !tbaa !397
  %125 = add nsw i32 %124, -1
  store i32 %125, ptr %123, align 8, !tbaa !397
  store ptr %29, ptr @PL_curpm, align 8, !tbaa !385
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %121) #22
  %126 = load ptr, ptr %33, align 8, !tbaa !398
  br label %127

127:                                              ; preds = %0, %120
  %128 = phi ptr [ %126, %120 ], [ null, %0 ]
  ret ptr %128
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_last() local_unnamed_addr #0 !prof !726 {
  %1 = tail call fastcc i32 @S_unwind_loop(ptr noundef nonnull @.str.30) #22
  %2 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %3 = getelementptr inbounds %struct.stackinfo, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !395
  %5 = getelementptr inbounds %struct.stackinfo, ptr %2, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !397
  %7 = add nsw i32 %6, -1
  store i32 %7, ptr %5, align 8, !tbaa !397
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds %struct.context, ptr %4, i64 %8
  %10 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %11 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !398
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  %15 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !398
  store ptr %16, ptr @PL_curcop, align 8, !tbaa !385
  %17 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %18 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !398
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %17, i64 %20
  store ptr %21, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %22 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !398
  store i32 %23, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %24 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !398
  store i32 %6, ptr %5, align 8, !tbaa !397
  %26 = load i8, ptr %9, align 8, !tbaa !398
  %27 = and i8 %26, 15
  switch i8 %27, label %91 [
    i8 7, label %101
    i8 6, label %101
    i8 4, label %101
    i8 5, label %101
    i8 8, label %28
    i8 10, label %41
    i8 9, label %63
  ], !prof !727

28:                                               ; preds = %0
  %29 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !398
  store i8 0, ptr @PL_tainted, align 1, !tbaa !423
  store ptr %14, ptr @PL_stack_sp, align 8, !tbaa !385
  tail call void @Perl_pop_scope() #21
  %31 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %32 = getelementptr inbounds %struct.stackinfo, ptr %31, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !397
  %34 = add nsw i32 %33, -1
  store i32 %34, ptr %32, align 8, !tbaa !397
  %35 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 8, i32 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !398
  %37 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 2
  %38 = load i16, ptr %37, align 2, !tbaa !398
  %39 = and i16 %38, 256
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %135, label %197

41:                                               ; preds = %0
  %42 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 2
  %43 = load i16, ptr %42, align 2, !tbaa !398
  %44 = trunc i16 %43 to i8
  %45 = and i8 %44, 127
  store i8 %45, ptr @PL_in_eval, align 1, !tbaa !398
  %46 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 8, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !398
  store ptr %47, ptr @PL_eval_root, align 8, !tbaa !385
  %48 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 8, i32 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !398
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !452
  %54 = and i32 %53, 49152
  %55 = icmp eq i32 %54, 49152
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %49) #22
  br label %57

57:                                               ; preds = %56, %51, %41
  %58 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 8, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !398
  %60 = icmp eq ptr %59, null
  br i1 %60, label %94, label %61

61:                                               ; preds = %57
  %62 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %59) #21
  br label %94

63:                                               ; preds = %0
  %64 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 2
  %65 = load i16, ptr %64, align 2, !tbaa !398
  %66 = and i16 %65, 256
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %94

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 8, i32 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !398
  %71 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 8, i32 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !398
  %73 = or disjoint i16 %65, 256
  store i16 %73, ptr %64, align 2, !tbaa !398
  tail call void @Perl_setdefout(ptr noundef %72) #21
  %74 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !430
  %75 = load ptr, ptr @PL_scopestack, align 8, !tbaa !385
  %76 = load i32, ptr %22, align 4, !tbaa !398
  %77 = sext i32 %76 to i64
  %78 = getelementptr i32, ptr %75, i64 %77
  %79 = getelementptr i32, ptr %78, i64 -1
  %80 = load i32, ptr %79, align 4, !tbaa !430
  %81 = icmp sgt i32 %74, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %68
  tail call void @Perl_leave_scope(i32 noundef %80) #21
  br label %83

83:                                               ; preds = %82, %68
  %84 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef %70) #22
  %85 = load i32, ptr %84, align 4, !tbaa !430
  %86 = add nsw i32 %85, -1
  store i32 %86, ptr %84, align 4, !tbaa !430
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load ptr, ptr %69, align 8, !tbaa !398
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %89) #22
  br label %90

90:                                               ; preds = %88, %83
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %72) #22
  br label %94

91:                                               ; preds = %0
  %92 = zext nneg i8 %27 to i32
  %93 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.31, i32 noundef %92) #21
  br label %218

94:                                               ; preds = %63, %90, %61, %57
  %95 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 8
  %96 = load ptr, ptr %95, align 8, !tbaa !398
  store i8 0, ptr @PL_tainted, align 1, !tbaa !423
  store ptr %14, ptr @PL_stack_sp, align 8, !tbaa !385
  tail call void @Perl_pop_scope() #21
  %97 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %98 = getelementptr inbounds %struct.stackinfo, ptr %97, i64 0, i32 4
  %99 = load i32, ptr %98, align 8, !tbaa !397
  %100 = add nsw i32 %99, -1
  store i32 %100, ptr %98, align 8, !tbaa !397
  br label %215

101:                                              ; preds = %0, %0, %0, %0
  %102 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 8
  %103 = load i32, ptr %102, align 8, !tbaa !398
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds ptr, ptr %10, i64 %104
  %106 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 8, i32 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !398
  %108 = getelementptr inbounds %struct.loop, ptr %107, i64 0, i32 11
  %109 = load ptr, ptr %108, align 8, !tbaa !728
  %110 = load ptr, ptr %109, align 8, !tbaa !398
  store i8 0, ptr @PL_tainted, align 1, !tbaa !423
  store ptr %105, ptr @PL_stack_sp, align 8, !tbaa !385
  tail call void @Perl_pop_scope() #21
  %111 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %112 = getelementptr inbounds %struct.stackinfo, ptr %111, i64 0, i32 4
  %113 = load i32, ptr %112, align 8, !tbaa !397
  %114 = add nsw i32 %113, -1
  store i32 %114, ptr %112, align 8, !tbaa !397
  %115 = and i8 %26, 12
  %116 = icmp eq i8 %115, 4
  br i1 %116, label %117, label %215, !prof !719

117:                                              ; preds = %101
  %118 = load i8, ptr %9, align 8, !tbaa !398
  %119 = and i8 %118, 15
  %120 = icmp eq i8 %119, 6
  br i1 %120, label %121, label %127, !prof !730

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 8, i32 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !398
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %123) #22
  %124 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 8, i32 0, i32 4
  %125 = load ptr, ptr %124, align 8, !tbaa !398
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %125) #22
  %126 = load i8, ptr %9, align 8, !tbaa !398
  br label %127

127:                                              ; preds = %121, %117
  %128 = phi i8 [ %126, %121 ], [ %118, %117 ]
  %129 = and i8 %128, 15
  %130 = icmp eq i8 %129, 4
  br i1 %130, label %131, label %134, !prof !731

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 8, i32 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !398
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %133) #22
  br label %134

134:                                              ; preds = %131, %127
  tail call void @Perl_pop_scope() #21
  br label %215

135:                                              ; preds = %28
  %136 = or disjoint i16 %38, 256
  store i16 %136, ptr %37, align 2, !tbaa !398
  %137 = load i8, ptr %9, align 8, !tbaa !398
  %138 = and i8 %137, 32
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %197, label %140

140:                                              ; preds = %135
  %141 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %142 = getelementptr inbounds %struct.gv, ptr %141, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !398
  %144 = getelementptr inbounds %struct.gp, ptr %143, i64 0, i32 6
  %145 = load ptr, ptr %144, align 8, !tbaa !604
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %145) #22
  %146 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 8, i32 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !398
  %148 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %149 = getelementptr inbounds %struct.gv, ptr %148, i64 0, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !398
  %151 = getelementptr inbounds %struct.gp, ptr %150, i64 0, i32 6
  store ptr %147, ptr %151, align 8, !tbaa !604
  %152 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 8, i32 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !398
  %154 = getelementptr inbounds %struct.av, ptr %153, i64 0, i32 2
  %155 = load i32, ptr %154, align 4, !tbaa !605
  %156 = and i32 %155, 1073741824
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %176, label %158

158:                                              ; preds = %140
  %159 = load ptr, ptr %153, align 8, !tbaa !607
  %160 = getelementptr inbounds %struct.xpvav, ptr %159, i64 0, i32 2
  %161 = load i64, ptr %160, align 8, !tbaa !608
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %153) #22
  %162 = tail call ptr @Perl_newSV_type(i32 noundef 11) #21
  store ptr %162, ptr %152, align 8, !tbaa !398
  tail call void @Perl_av_extend(ptr noundef %162, i64 noundef %161) #21
  %163 = load ptr, ptr %152, align 8, !tbaa !398
  %164 = getelementptr inbounds %struct.av, ptr %163, i64 0, i32 2
  %165 = load i32, ptr %164, align 4, !tbaa !605
  %166 = and i32 %165, -1073741825
  store i32 %166, ptr %164, align 4, !tbaa !605
  %167 = load ptr, ptr %152, align 8, !tbaa !398
  %168 = getelementptr inbounds %struct.av, ptr %167, i64 0, i32 2
  %169 = load i32, ptr %168, align 4, !tbaa !605
  %170 = or i32 %169, -2147483648
  store i32 %170, ptr %168, align 4, !tbaa !605
  %171 = load ptr, ptr %152, align 8, !tbaa !398
  %172 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 8, i32 0, i32 5
  %173 = load ptr, ptr %172, align 8, !tbaa !398
  %174 = getelementptr inbounds %struct.av, ptr %173, i64 0, i32 3
  %175 = load ptr, ptr %174, align 8, !tbaa !398
  store ptr %171, ptr %175, align 8, !tbaa !385
  br label %197

176:                                              ; preds = %140
  %177 = getelementptr inbounds %struct.av, ptr %153, i64 0, i32 3
  %178 = load ptr, ptr %177, align 8, !tbaa !398
  %179 = load ptr, ptr %153, align 8, !tbaa !607
  %180 = getelementptr inbounds %struct.xpvav, ptr %179, i64 0, i32 4
  %181 = load ptr, ptr %180, align 8, !tbaa !610
  %182 = ptrtoint ptr %178 to i64
  %183 = ptrtoint ptr %181 to i64
  %184 = sub i64 %182, %183
  %185 = ashr exact i64 %184, 3
  %186 = getelementptr inbounds %struct.xpvav, ptr %179, i64 0, i32 3
  %187 = load i64, ptr %186, align 8, !tbaa !611
  %188 = add nsw i64 %185, %187
  store i64 %188, ptr %186, align 8, !tbaa !611
  %189 = load ptr, ptr %152, align 8, !tbaa !398
  %190 = load ptr, ptr %189, align 8, !tbaa !607
  %191 = getelementptr inbounds %struct.xpvav, ptr %190, i64 0, i32 4
  %192 = load ptr, ptr %191, align 8, !tbaa !610
  %193 = getelementptr inbounds %struct.av, ptr %189, i64 0, i32 3
  store ptr %192, ptr %193, align 8, !tbaa !398
  %194 = load ptr, ptr %152, align 8, !tbaa !398
  %195 = load ptr, ptr %194, align 8, !tbaa !607
  %196 = getelementptr inbounds %struct.xpvav, ptr %195, i64 0, i32 2
  store i64 -1, ptr %196, align 8, !tbaa !608
  br label %197

197:                                              ; preds = %135, %176, %158, %28
  %198 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 8, i32 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !398
  %200 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !430
  %201 = load ptr, ptr @PL_scopestack, align 8, !tbaa !385
  %202 = load i32, ptr %22, align 4, !tbaa !398
  %203 = sext i32 %202 to i64
  %204 = getelementptr i32, ptr %201, i64 %203
  %205 = getelementptr i32, ptr %204, i64 -1
  %206 = load i32, ptr %205, align 4, !tbaa !430
  %207 = icmp sgt i32 %200, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %197
  tail call void @Perl_leave_scope(i32 noundef %206) #21
  br label %209

209:                                              ; preds = %208, %197
  %210 = icmp eq ptr %199, null
  br i1 %210, label %215, label %211

211:                                              ; preds = %209
  %212 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %199) #22
  store i32 %36, ptr %212, align 4, !tbaa !430
  %213 = icmp eq i32 %36, 0
  %214 = select i1 %213, ptr %199, ptr null
  br label %215

215:                                              ; preds = %101, %94, %211, %209, %134
  %216 = phi ptr [ %110, %101 ], [ %110, %134 ], [ %30, %209 ], [ %30, %211 ], [ %96, %94 ]
  %217 = phi ptr [ null, %101 ], [ null, %134 ], [ null, %209 ], [ %214, %211 ], [ null, %94 ]
  store ptr %25, ptr @PL_curpm, align 8, !tbaa !385
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %217) #22
  br label %218

218:                                              ; preds = %215, %91
  %219 = phi ptr [ %93, %91 ], [ %216, %215 ]
  ret ptr %219
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @S_unwind_loop(ptr noundef %0) unnamed_addr #0 !prof !732 !PGOFuncName !733 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 5
  %5 = load i8, ptr %4, align 2, !tbaa !428
  %6 = icmp sgt i8 %5, -1
  br i1 %6, label %14, label %7, !prof !734

7:                                                ; preds = %1
  %8 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %9 = getelementptr inbounds %struct.stackinfo, ptr %8, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !397
  %11 = tail call fastcc i32 @S_dopoptoloop(i32 noundef %10) #22
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %82, !prof !735

13:                                               ; preds = %7
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.95, ptr noundef %0) #21
  br label %82

14:                                               ; preds = %1
  %15 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  %16 = icmp ult i8 %5, 64
  br i1 %16, label %34, label %17, !prof !736

17:                                               ; preds = %14
  %18 = load ptr, ptr %15, align 8, !tbaa !385
  %19 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !452
  %21 = and i32 %20, 2098176
  %22 = icmp eq i32 %21, 1024
  br i1 %22, label %23, label %29, !prof !737

23:                                               ; preds = %17
  %24 = load ptr, ptr %18, align 8, !tbaa !487
  %25 = getelementptr inbounds %struct.xpv, ptr %24, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !458
  store i64 %26, ptr %2, align 8, !tbaa !509
  %27 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !398
  br label %38

29:                                               ; preds = %17
  %30 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %18, ptr noundef nonnull %2, i32 noundef 2) #21
  %31 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %32 = getelementptr inbounds %struct.op, ptr %31, i64 0, i32 5
  %33 = load i8, ptr %32, align 2, !tbaa !428
  br label %38

34:                                               ; preds = %14
  %35 = getelementptr inbounds %struct.pvop, ptr %3, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !738
  %37 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %36) #24
  store i64 %37, ptr %2, align 8, !tbaa !509
  br label %38

38:                                               ; preds = %23, %29, %34
  %39 = phi i8 [ %5, %34 ], [ %5, %23 ], [ %33, %29 ]
  %40 = phi ptr [ %3, %34 ], [ %3, %23 ], [ %31, %29 ]
  %41 = phi ptr [ %36, %34 ], [ %28, %23 ], [ %30, %29 ]
  %42 = and i8 %39, 64
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %50, label %44, !prof !736

44:                                               ; preds = %38
  %45 = getelementptr inbounds ptr, ptr %15, i64 -1
  %46 = load ptr, ptr %15, align 8, !tbaa !385
  %47 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !452
  %49 = and i32 %48, 536870912
  br label %56

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.pvop, ptr %40, i64 0, i32 6
  %52 = load i8, ptr %51, align 1, !tbaa !740
  %53 = and i8 %52, -128
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 22
  br label %56

56:                                               ; preds = %50, %44
  %57 = phi ptr [ %45, %44 ], [ %15, %50 ]
  %58 = phi i32 [ %49, %44 ], [ %55, %50 ]
  store ptr %57, ptr @PL_stack_sp, align 8, !tbaa !385
  %59 = load i64, ptr %2, align 8, !tbaa !509
  %60 = call fastcc i32 @S_dopoptolabel(ptr noundef %41, i64 noundef %59, i32 noundef %58) #22
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %81, !prof !737

62:                                               ; preds = %56
  %63 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %64 = getelementptr inbounds %struct.op, ptr %63, i64 0, i32 5
  %65 = load i8, ptr %64, align 2, !tbaa !428
  %66 = and i8 %65, 64
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds ptr, ptr %57, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !385
  %71 = getelementptr inbounds %struct.sv, ptr %70, i64 0, i32 2
  %72 = load i32, ptr %71, align 4, !tbaa !452
  %73 = and i32 %72, 2097152
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %68, %62
  %76 = load i64, ptr %2, align 8, !tbaa !509
  %77 = or disjoint i32 %58, 524288
  %78 = call ptr @Perl_newSVpvn_flags(ptr noundef %41, i64 noundef %76, i32 noundef %77) #21
  br label %79

79:                                               ; preds = %68, %75
  %80 = phi ptr [ %78, %75 ], [ %70, %68 ]
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.96, ptr noundef %0, ptr noundef %80) #21
  br label %81

81:                                               ; preds = %79, %56
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  br label %82

82:                                               ; preds = %7, %13, %81
  %83 = phi i32 [ %11, %13 ], [ %11, %7 ], [ %60, %81 ]
  %84 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %85 = getelementptr inbounds %struct.stackinfo, ptr %84, i64 0, i32 4
  %86 = load i32, ptr %85, align 8, !tbaa !397
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %89, !prof !741

88:                                               ; preds = %82
  call void @Perl_dounwind(i32 noundef %83) #22
  br label %89

89:                                               ; preds = %88, %82
  ret i32 %83
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_next() local_unnamed_addr #0 !prof !742 {
  %1 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %2 = tail call fastcc i32 @S_unwind_loop(ptr noundef nonnull @.str.32) #22
  %3 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %4 = getelementptr inbounds %struct.stackinfo, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !395
  %6 = getelementptr inbounds %struct.stackinfo, ptr %3, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !397
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.context, ptr %5, i64 %8
  %10 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %11 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !398
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  store ptr %14, ptr @PL_stack_sp, align 8, !tbaa !385
  %15 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %16 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !398
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, ptr %15, i64 %18
  store ptr %19, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %20 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !398
  store i32 %21, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %22 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !398
  store ptr %23, ptr @PL_curpm, align 8, !tbaa !385
  %24 = icmp slt i32 %21, %1
  br i1 %24, label %25, label %30, !prof !743

25:                                               ; preds = %0
  %26 = load ptr, ptr @PL_scopestack, align 8, !tbaa !385
  %27 = sext i32 %21 to i64
  %28 = getelementptr inbounds i32, ptr %26, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !430
  tail call void @Perl_leave_scope(i32 noundef %29) #21
  br label %30

30:                                               ; preds = %25, %0
  %31 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !398
  store ptr %32, ptr @PL_curcop, align 8, !tbaa !385
  %33 = load i32, ptr @PL_sig_pending, align 4, !tbaa !430
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35, !prof !744

35:                                               ; preds = %30
  %36 = load ptr, ptr @PL_signalhook, align 8, !tbaa !385
  tail call void %36() #21
  br label %37

37:                                               ; preds = %30, %35
  %38 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 8, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !398
  %40 = getelementptr inbounds %struct.loop, ptr %39, i64 0, i32 10
  %41 = load ptr, ptr %40, align 8, !tbaa !745
  ret ptr %41
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_redo() local_unnamed_addr #0 !prof !422 {
  %1 = tail call fastcc i32 @S_unwind_loop(ptr noundef nonnull @.str.33) #22
  %2 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %3 = getelementptr inbounds %struct.stackinfo, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !395
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.context, ptr %4, i64 %5, i32 0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !398
  %8 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !746
  %10 = getelementptr inbounds %struct.op, ptr %9, i64 0, i32 4
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 511
  %13 = icmp eq i16 %12, 196
  %14 = getelementptr inbounds %struct.stackinfo, ptr %2, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !397
  br i1 %13, label %16, label %19

16:                                               ; preds = %0
  %17 = add nsw i32 %15, 1
  store i32 %17, ptr %14, align 8, !tbaa !397
  %18 = load ptr, ptr %9, align 8, !tbaa !400
  br label %19

19:                                               ; preds = %0, %16
  %20 = phi i32 [ %17, %16 ], [ %15, %0 ]
  %21 = phi ptr [ %18, %16 ], [ %9, %0 ]
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds %struct.context, ptr %4, i64 %22
  %24 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %25 = getelementptr inbounds %struct.block, ptr %23, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !398
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %24, i64 %27
  store ptr %28, ptr @PL_stack_sp, align 8, !tbaa !385
  %29 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %30 = getelementptr inbounds %struct.block, ptr %23, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !398
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %29, i64 %32
  store ptr %33, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %34 = getelementptr inbounds %struct.block, ptr %23, i64 0, i32 6
  %35 = load i32, ptr %34, align 4, !tbaa !398
  store i32 %35, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %36 = getelementptr inbounds %struct.block, ptr %23, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !398
  store ptr %37, ptr @PL_curpm, align 8, !tbaa !385
  %38 = load ptr, ptr @PL_scopestack, align 8, !tbaa !385
  %39 = sext i32 %35 to i64
  %40 = getelementptr i32, ptr %38, i64 %39
  %41 = getelementptr i32, ptr %40, i64 -1
  %42 = load i32, ptr %41, align 4, !tbaa !430
  %43 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !430
  %44 = icmp sgt i32 %43, %42
  br i1 %44, label %45, label %46

45:                                               ; preds = %19
  tail call void @Perl_leave_scope(i32 noundef %42) #21
  br label %46

46:                                               ; preds = %45, %19
  %47 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  %48 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !509
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call void @Perl_free_tmps() #21
  br label %51

51:                                               ; preds = %50, %46
  %52 = getelementptr inbounds %struct.block, ptr %23, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !398
  store ptr %53, ptr @PL_curcop, align 8, !tbaa !385
  %54 = load i32, ptr @PL_sig_pending, align 4, !tbaa !430
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr @PL_signalhook, align 8, !tbaa !385
  tail call void %57() #21
  br label %58

58:                                               ; preds = %51, %56
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_goto() local_unnamed_addr #0 !prof !422 {
  %1 = alloca [64 x ptr], align 16
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  store i64 0, ptr %2, align 8, !tbaa !509
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 4
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, 511
  %8 = icmp eq i16 %7, 207
  %9 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 5
  %10 = load i8, ptr %9, align 2, !tbaa !428
  %11 = and i8 %10, 64
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %467, label %13, !prof !747

13:                                               ; preds = %0
  %14 = getelementptr inbounds ptr, ptr %3, i64 -1
  %15 = load ptr, ptr %3, align 8, !tbaa !385
  %16 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !452
  %18 = and i32 %17, 2097152
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20, !prof !748

20:                                               ; preds = %13
  %21 = tail call i32 @Perl_mg_get(ptr noundef nonnull %15) #21
  %22 = load i32, ptr %16, align 4, !tbaa !452
  br label %23

23:                                               ; preds = %13, %20
  %24 = phi i32 [ %17, %13 ], [ %22, %20 ]
  %25 = and i32 %24, 2048
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %438, label %27, !prof !747

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !398
  %30 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !452
  %32 = and i32 %31, 255
  %33 = icmp eq i32 %32, 13
  br i1 %33, label %34, label %438, !prof !748

34:                                               ; preds = %27
  %35 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %36 = getelementptr inbounds %struct.gv, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !398
  %38 = getelementptr inbounds %struct.gp, ptr %37, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !604
  %40 = load ptr, ptr %29, align 8, !tbaa !595
  %41 = getelementptr inbounds %struct.xpvcv, ptr %40, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !398
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %91, !prof !749

44:                                               ; preds = %34, %85
  %45 = phi ptr [ %86, %85 ], [ %29, %34 ]
  %46 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %45) #22
  %47 = icmp eq ptr %46, null
  br i1 %47, label %83, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.gv, ptr %46, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !398
  %51 = getelementptr inbounds %struct.gp, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !409
  %53 = icmp eq ptr %45, %52
  %54 = icmp eq ptr %52, null
  %55 = or i1 %53, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %48
  %57 = load ptr, ptr %46, align 8, !tbaa !555
  %58 = getelementptr inbounds %struct.xpvgv, ptr %57, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !398
  %60 = getelementptr inbounds %struct.xpvgv, ptr %57, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !398
  %62 = getelementptr inbounds %struct.hek, ptr %61, i64 0, i32 2
  %63 = getelementptr inbounds %struct.hek, ptr %61, i64 0, i32 1
  %64 = load i32, ptr %63, align 4, !tbaa !750
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %62, i64 %65
  %67 = getelementptr inbounds i8, ptr %66, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !398
  %69 = and i8 %68, 1
  %70 = zext nneg i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 29
  %72 = tail call ptr @Perl_gv_autoload_pvn(ptr noundef %59, ptr noundef nonnull %62, i64 noundef %65, i32 noundef %71) #21
  %73 = icmp eq ptr %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %56
  %75 = getelementptr inbounds %struct.gv, ptr %72, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !398
  %77 = getelementptr inbounds %struct.gp, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !409
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %74, %56
  %81 = tail call ptr @Perl_sv_newmortal() #21
  tail call void @Perl_gv_efullname4(ptr noundef %81, ptr noundef nonnull %46, ptr noundef null, i1 noundef zeroext true) #21
  %82 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.35, ptr noundef %81) #21
  br label %720

83:                                               ; preds = %44
  %84 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.36) #21
  br label %720

85:                                               ; preds = %48, %74
  %86 = phi ptr [ %78, %74 ], [ %52, %48 ]
  %87 = load ptr, ptr %86, align 8, !tbaa !595
  %88 = getelementptr inbounds %struct.xpvcv, ptr %87, i64 0, i32 6
  %89 = load ptr, ptr %88, align 8, !tbaa !398
  %90 = icmp eq ptr %89, null
  br i1 %90, label %44, label %91, !prof !406

91:                                               ; preds = %85, %34
  %92 = phi ptr [ %29, %34 ], [ %86, %85 ]
  %93 = getelementptr inbounds %struct.cv, ptr %92, i64 0, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !752
  %95 = add i32 %94, 1
  store i32 %95, ptr %93, align 8, !tbaa !752
  %96 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  %97 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !509
  %98 = icmp sgt i64 %96, %97
  br i1 %98, label %99, label %100, !prof !748

99:                                               ; preds = %91
  tail call void @Perl_free_tmps() #21
  br label %100

100:                                              ; preds = %99, %91
  %101 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %102 = getelementptr inbounds %struct.stackinfo, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !395
  %104 = getelementptr inbounds %struct.stackinfo, ptr %101, i64 0, i32 4
  %105 = load i32, ptr %104, align 8, !tbaa !397
  %106 = tail call fastcc i32 @S_dopoptosub_at(ptr noundef %103, i32 noundef %105) #22
  %107 = icmp slt i32 %106, %105
  br i1 %107, label %108, label %118, !prof !747

108:                                              ; preds = %100
  %109 = icmp slt i32 %106, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %108
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %92) #22
  %111 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.37) #21
  br label %720

112:                                              ; preds = %108
  tail call void @Perl_dounwind(i32 noundef %106) #22
  %113 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %114 = getelementptr inbounds %struct.stackinfo, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !395
  %116 = getelementptr inbounds %struct.stackinfo, ptr %113, i64 0, i32 4
  %117 = load i32, ptr %116, align 8, !tbaa !397
  br label %118

118:                                              ; preds = %112, %100
  %119 = phi i32 [ %117, %112 ], [ %105, %100 ]
  %120 = phi ptr [ %115, %112 ], [ %103, %100 ]
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds %struct.context, ptr %120, i64 %121
  %123 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %124 = getelementptr inbounds %struct.block, ptr %122, i64 0, i32 3
  %125 = load i32, ptr %124, align 4, !tbaa !398
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds ptr, ptr %123, i64 %126
  store ptr %127, ptr @PL_stack_sp, align 8, !tbaa !385
  %128 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %129 = getelementptr inbounds %struct.block, ptr %122, i64 0, i32 5
  %130 = load i32, ptr %129, align 8, !tbaa !398
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, ptr %128, i64 %131
  store ptr %132, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %133 = getelementptr inbounds %struct.block, ptr %122, i64 0, i32 6
  %134 = load i32, ptr %133, align 4, !tbaa !398
  store i32 %134, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %135 = getelementptr inbounds %struct.block, ptr %122, i64 0, i32 7
  %136 = load ptr, ptr %135, align 8, !tbaa !398
  store ptr %136, ptr @PL_curpm, align 8, !tbaa !385
  %137 = load i8, ptr %122, align 8, !tbaa !398
  %138 = zext i8 %137 to i32
  %139 = and i32 %138, 15
  %140 = icmp eq i32 %139, 10
  br i1 %140, label %141, label %149, !prof !747

141:                                              ; preds = %118
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %92) #22
  %142 = load i8, ptr %122, align 8, !tbaa !398
  %143 = and i8 %142, 47
  %144 = icmp eq i8 %143, 42
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.38) #21
  br label %720

147:                                              ; preds = %141
  %148 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.39) #21
  br label %720

149:                                              ; preds = %118
  %150 = and i32 %138, 16
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %154, label %152, !prof !748

152:                                              ; preds = %149
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %92) #22
  %153 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.40) #21
  br label %720

154:                                              ; preds = %149
  %155 = and i32 %138, 47
  %156 = icmp eq i32 %155, 40
  br i1 %156, label %157, label %187, !prof !753

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.block, ptr %122, i64 0, i32 8, i32 0, i32 3
  %159 = load ptr, ptr %158, align 8, !tbaa !398
  %160 = getelementptr inbounds %struct.av, ptr %159, i64 0, i32 2
  %161 = load i32, ptr %160, align 4, !tbaa !605
  %162 = and i32 %161, 1073741824
  %163 = icmp ne i32 %162, 0
  %164 = icmp eq ptr %159, %39
  %165 = select i1 %163, i1 true, i1 %164
  br i1 %165, label %166, label %173, !prof !754

166:                                              ; preds = %157
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %159) #22
  %167 = tail call ptr @Perl_newSV_type(i32 noundef 11) #21
  %168 = getelementptr inbounds %struct.av, ptr %167, i64 0, i32 2
  %169 = load i32, ptr %168, align 4, !tbaa !605
  %170 = and i32 %169, 1073741823
  %171 = or disjoint i32 %170, -2147483648
  store i32 %171, ptr %168, align 4, !tbaa !605
  store ptr %167, ptr %158, align 8, !tbaa !398
  %172 = load ptr, ptr @PL_curpad, align 8, !tbaa !385
  store ptr %167, ptr %172, align 8, !tbaa !385
  br label %187

173:                                              ; preds = %157
  %174 = getelementptr inbounds %struct.av, ptr %159, i64 0, i32 3
  %175 = load ptr, ptr %174, align 8, !tbaa !398
  %176 = load ptr, ptr %159, align 8, !tbaa !607
  %177 = getelementptr inbounds %struct.xpvav, ptr %176, i64 0, i32 4
  %178 = load ptr, ptr %177, align 8, !tbaa !610
  %179 = ptrtoint ptr %175 to i64
  %180 = ptrtoint ptr %178 to i64
  %181 = sub i64 %179, %180
  %182 = ashr exact i64 %181, 3
  %183 = getelementptr inbounds %struct.xpvav, ptr %176, i64 0, i32 3
  %184 = load i64, ptr %183, align 8, !tbaa !611
  %185 = add nsw i64 %182, %184
  store i64 %185, ptr %183, align 8, !tbaa !611
  store ptr %178, ptr %174, align 8, !tbaa !398
  %186 = getelementptr inbounds %struct.xpvav, ptr %176, i64 0, i32 2
  store i64 -1, ptr %186, align 8, !tbaa !608
  br label %187

187:                                              ; preds = %166, %173, %154
  %188 = icmp eq ptr %39, null
  br i1 %188, label %193, label %189, !prof !747

189:                                              ; preds = %187
  %190 = getelementptr inbounds %struct.av, ptr %39, i64 0, i32 1
  %191 = load i32, ptr %190, align 8, !tbaa !755
  %192 = add i32 %191, 1
  store i32 %192, ptr %190, align 8, !tbaa !755
  br label %193

193:                                              ; preds = %189, %187
  %194 = load i8, ptr %122, align 8, !tbaa !398
  %195 = and i8 %194, 15
  %196 = icmp eq i8 %195, 8
  br i1 %196, label %197, label %206, !prof !748

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.block, ptr %122, i64 0, i32 8, i32 0, i32 4
  %199 = load i32, ptr %198, align 8, !tbaa !398
  %200 = getelementptr inbounds %struct.block, ptr %122, i64 0, i32 8, i32 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !398
  %202 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef %201) #22
  store i32 %199, ptr %202, align 4, !tbaa !430
  %203 = icmp eq i32 %199, 0
  br i1 %203, label %204, label %206, !prof !748

204:                                              ; preds = %197
  %205 = load ptr, ptr %200, align 8, !tbaa !398
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %205) #22
  br label %206

206:                                              ; preds = %204, %197, %193
  %207 = load ptr, ptr @PL_scopestack, align 8, !tbaa !385
  %208 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %209 = sext i32 %208 to i64
  %210 = getelementptr i32, ptr %207, i64 %209
  %211 = getelementptr i32, ptr %210, i64 -1
  %212 = load i32, ptr %211, align 4, !tbaa !430
  %213 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !430
  %214 = icmp sgt i32 %213, %212
  br i1 %214, label %215, label %216, !prof !748

215:                                              ; preds = %206
  tail call void @Perl_leave_scope(i32 noundef %212) #21
  br label %216

216:                                              ; preds = %215, %206
  %217 = load ptr, ptr %92, align 8, !tbaa !595
  %218 = getelementptr inbounds %struct.xpvcv, ptr %217, i64 0, i32 6
  %219 = load ptr, ptr %218, align 8, !tbaa !398
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %229, !prof !747

221:                                              ; preds = %216
  %222 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %92) #22
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %39) #22
  %223 = icmp eq ptr %222, null
  br i1 %223, label %227, label %224

224:                                              ; preds = %221
  %225 = tail call ptr @Perl_sv_newmortal() #21
  tail call void @Perl_gv_efullname4(ptr noundef %225, ptr noundef nonnull %222, ptr noundef null, i1 noundef zeroext true) #21
  %226 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.35, ptr noundef %225) #21
  br label %720

227:                                              ; preds = %221
  %228 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.36) #21
  br label %720

229:                                              ; preds = %216
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #21
  %230 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  store i64 %230, ptr @PL_tmps_floor, align 8, !tbaa !509
  tail call void @Perl_save_pushptr(ptr noundef nonnull %92, i32 noundef 11) #21
  %231 = load ptr, ptr %92, align 8, !tbaa !595
  %232 = getelementptr inbounds %struct.xpvcv, ptr %231, i64 0, i32 12
  %233 = load i32, ptr %232, align 4, !tbaa !597
  %234 = and i32 %233, 8
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %342, label %236, !prof !756

236:                                              ; preds = %229
  br i1 %188, label %300, label %237, !prof !757

237:                                              ; preds = %236
  %238 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 2
  %239 = load i32, ptr %238, align 4, !tbaa !430
  %240 = and i32 %239, 8388608
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %246, label %242, !prof !612

242:                                              ; preds = %237
  %243 = tail call i32 @Perl_mg_size(ptr noundef nonnull %39) #21
  %244 = sext i32 %243 to i64
  %245 = load i32, ptr %238, align 4, !tbaa !605
  br label %250

246:                                              ; preds = %237
  %247 = load ptr, ptr %39, align 8, !tbaa !607
  %248 = getelementptr inbounds %struct.xpvav, ptr %247, i64 0, i32 2
  %249 = load i64, ptr %248, align 8, !tbaa !608
  br label %250

250:                                              ; preds = %242, %246
  %251 = phi i32 [ %245, %242 ], [ %239, %246 ]
  %252 = phi i64 [ %244, %242 ], [ %249, %246 ]
  %253 = add i64 %252, 1
  %254 = and i32 %251, 8388608
  %255 = icmp eq i32 %254, 0
  %256 = icmp eq i64 %253, 0
  br i1 %256, label %300, label %257, !prof !758

257:                                              ; preds = %250
  %258 = load ptr, ptr @PL_stack_max, align 8, !tbaa !385
  %259 = ptrtoint ptr %258 to i64
  %260 = ptrtoint ptr %127 to i64
  %261 = sub i64 %259, %260
  %262 = ashr exact i64 %261, 3
  %263 = icmp sgt i64 %262, %253
  br i1 %263, label %268, label %264, !prof !612

264:                                              ; preds = %257
  %265 = add nsw i64 %252, 2
  %266 = tail call ptr @Perl_stack_grow(ptr noundef %127, ptr noundef %127, i64 noundef %265) #21
  %267 = load i32, ptr %238, align 4, !tbaa !605
  br label %268

268:                                              ; preds = %257, %264
  %269 = phi i32 [ %267, %264 ], [ %251, %257 ]
  %270 = phi ptr [ %266, %264 ], [ %127, %257 ]
  %271 = and i32 %269, 1073741824
  %272 = icmp eq i32 %271, 0
  %273 = icmp slt i64 %252, 0
  br i1 %273, label %300, label %274, !prof !759

274:                                              ; preds = %268
  %275 = getelementptr inbounds %struct.av, ptr %39, i64 0, i32 3
  br label %276

276:                                              ; preds = %274, %295
  %277 = phi i64 [ 0, %274 ], [ %297, %295 ]
  br i1 %255, label %281, label %278, !prof !760

278:                                              ; preds = %276
  %279 = tail call ptr @Perl_av_fetch(ptr noundef nonnull %39, i64 noundef %277, i32 noundef 0) #21
  %280 = icmp eq ptr %279, null
  br i1 %280, label %292, label %284

281:                                              ; preds = %276
  %282 = load ptr, ptr %275, align 8, !tbaa !398
  %283 = getelementptr inbounds ptr, ptr %282, i64 %277
  br label %284

284:                                              ; preds = %278, %281
  %285 = phi ptr [ %283, %281 ], [ %279, %278 ]
  %286 = load ptr, ptr %285, align 8, !tbaa !385
  %287 = icmp eq ptr %286, null
  br i1 %287, label %292, label %288, !prof !761

288:                                              ; preds = %284
  br i1 %272, label %295, label %289, !prof !762

289:                                              ; preds = %288
  %290 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %286) #21
  %291 = tail call fastcc ptr @S_SvREFCNT_inc_NN(ptr noundef %290) #22
  br label %295

292:                                              ; preds = %278, %284
  %293 = tail call ptr @Perl_newSVavdefelem(ptr noundef nonnull %39, i64 noundef %277, i1 noundef zeroext true) #21
  %294 = tail call ptr @Perl_sv_2mortal(ptr noundef %293) #21
  br label %295

295:                                              ; preds = %288, %289, %292
  %296 = phi ptr [ %294, %292 ], [ %290, %289 ], [ %286, %288 ]
  %297 = add nuw i64 %277, 1
  %298 = getelementptr inbounds ptr, ptr %270, i64 %297
  store ptr %296, ptr %298, align 8, !tbaa !385
  %299 = icmp eq i64 %277, %252
  br i1 %299, label %300, label %276, !prof !763, !llvm.loop !764

300:                                              ; preds = %295, %268, %236, %250
  %301 = phi ptr [ %127, %250 ], [ %127, %236 ], [ %270, %268 ], [ %270, %295 ]
  %302 = phi i64 [ 0, %250 ], [ 0, %236 ], [ %253, %268 ], [ %253, %295 ]
  %303 = getelementptr inbounds ptr, ptr %301, i64 %302
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %39) #22
  %304 = load i8, ptr %122, align 8, !tbaa !398
  %305 = and i8 %304, 47
  %306 = icmp eq i8 %305, 40
  br i1 %306, label %307, label %315, !prof !765

307:                                              ; preds = %300
  %308 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %309 = getelementptr inbounds %struct.gv, ptr %308, i64 0, i32 3
  %310 = load ptr, ptr %309, align 8, !tbaa !398
  %311 = getelementptr inbounds %struct.gp, ptr %310, i64 0, i32 6
  %312 = load ptr, ptr %311, align 8, !tbaa !604
  %313 = getelementptr inbounds %struct.block, ptr %122, i64 0, i32 8, i32 0, i32 2
  %314 = load ptr, ptr %313, align 8, !tbaa !398
  store ptr %314, ptr %311, align 8, !tbaa !604
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %312) #22
  br label %315

315:                                              ; preds = %307, %300
  %316 = getelementptr inbounds %struct.block, ptr %122, i64 0, i32 8
  %317 = load ptr, ptr %316, align 8, !tbaa !398
  %318 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %319 = getelementptr inbounds %struct.stackinfo, ptr %318, i64 0, i32 1
  %320 = load ptr, ptr %319, align 8, !tbaa !395
  %321 = getelementptr inbounds %struct.stackinfo, ptr %318, i64 0, i32 4
  %322 = load i32, ptr %321, align 8, !tbaa !397
  %323 = add nsw i32 %322, -1
  store i32 %323, ptr %321, align 8, !tbaa !397
  %324 = sext i32 %322 to i64
  %325 = getelementptr inbounds %struct.context, ptr %320, i64 %324
  %326 = getelementptr inbounds %struct.block, ptr %325, i64 0, i32 4
  %327 = load ptr, ptr %326, align 8, !tbaa !398
  store ptr %327, ptr @PL_curcop, align 8, !tbaa !385
  %328 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %329 = getelementptr inbounds %struct.block, ptr %325, i64 0, i32 5
  %330 = load i32, ptr %329, align 8, !tbaa !398
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, ptr %328, i64 %331
  store ptr %332, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %333 = getelementptr inbounds %struct.block, ptr %325, i64 0, i32 6
  %334 = load i32, ptr %333, align 4, !tbaa !398
  store i32 %334, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %335 = getelementptr inbounds %struct.block, ptr %325, i64 0, i32 7
  %336 = load ptr, ptr %335, align 8, !tbaa !398
  store ptr %336, ptr @PL_curpm, align 8, !tbaa !385
  %337 = getelementptr inbounds i32, ptr %332, i64 1
  store ptr %337, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %338 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !385
  %339 = icmp eq ptr %337, %338
  br i1 %339, label %340, label %456, !prof !757

340:                                              ; preds = %315
  %341 = tail call ptr @Perl_markstack_grow() #21
  br label %456

342:                                              ; preds = %229
  %343 = getelementptr inbounds %struct.xpvcv, ptr %231, i64 0, i32 9
  %344 = load ptr, ptr %343, align 8, !tbaa !398
  %345 = getelementptr inbounds %struct.block, ptr %122, i64 0, i32 8, i32 0, i32 1
  store ptr %92, ptr %345, align 8, !tbaa !398
  %346 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %92) #22
  %347 = load i32, ptr %346, align 4, !tbaa !430
  %348 = getelementptr inbounds %struct.block, ptr %122, i64 0, i32 8, i32 0, i32 4
  store i32 %347, ptr %348, align 8, !tbaa !398
  %349 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %92) #22
  %350 = load i32, ptr %349, align 4, !tbaa !430
  %351 = add nsw i32 %350, 1
  store i32 %351, ptr %349, align 4, !tbaa !430
  %352 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %92) #22
  %353 = load i32, ptr %352, align 4, !tbaa !430
  %354 = icmp slt i32 %353, 2
  br i1 %354, label %355, label %358, !prof !766

355:                                              ; preds = %342
  %356 = load i32, ptr %93, align 8, !tbaa !468
  %357 = add i32 %356, 1
  store i32 %357, ptr %93, align 8, !tbaa !468
  br label %366

358:                                              ; preds = %342
  %359 = icmp eq i32 %353, 100
  br i1 %359, label %360, label %363

360:                                              ; preds = %358
  %361 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 18) #21
  br i1 %361, label %362, label %363

362:                                              ; preds = %360
  tail call void @Perl_sub_crush_depth(ptr noundef nonnull %92) #21
  br label %363

363:                                              ; preds = %362, %360, %358
  %364 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %92) #22
  %365 = load i32, ptr %364, align 4, !tbaa !430
  tail call void @Perl_pad_push(ptr noundef %344, i32 noundef %365) #21
  br label %366

366:                                              ; preds = %363, %355
  %367 = getelementptr inbounds %struct.block, ptr %122, i64 0, i32 4
  %368 = load ptr, ptr %367, align 8, !tbaa !398
  store ptr %368, ptr @PL_curcop, align 8, !tbaa !385
  %369 = load ptr, ptr @PL_comppad, align 8, !tbaa !385
  tail call void @Perl_save_pushptr(ptr noundef %369, i32 noundef 7) #21
  %370 = getelementptr inbounds %struct.padlist, ptr %344, i64 0, i32 1
  %371 = load ptr, ptr %370, align 8, !tbaa !664
  %372 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %92) #22
  %373 = load i32, ptr %372, align 4, !tbaa !430
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds ptr, ptr %371, i64 %374
  %376 = load ptr, ptr %375, align 8, !tbaa !385
  store ptr %376, ptr @PL_comppad, align 8, !tbaa !385
  %377 = getelementptr inbounds %struct.av, ptr %376, i64 0, i32 3
  %378 = load ptr, ptr %377, align 8, !tbaa !398
  store ptr %378, ptr @PL_curpad, align 8, !tbaa !385
  %379 = load i8, ptr %122, align 8, !tbaa !398
  %380 = and i8 %379, 32
  %381 = icmp eq i8 %380, 0
  br i1 %381, label %402, label %382, !prof !767

382:                                              ; preds = %366
  %383 = getelementptr inbounds %struct.block, ptr %122, i64 0, i32 8, i32 0, i32 5
  store ptr %376, ptr %383, align 8, !tbaa !398
  br i1 %188, label %389, label %384, !prof !767

384:                                              ; preds = %382
  %385 = load ptr, ptr @PL_curpad, align 8, !tbaa !385
  %386 = load ptr, ptr %385, align 8, !tbaa !385
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %386) #22
  %387 = getelementptr inbounds %struct.block, ptr %122, i64 0, i32 8, i32 0, i32 3
  store ptr %39, ptr %387, align 8, !tbaa !398
  %388 = load ptr, ptr @PL_curpad, align 8, !tbaa !385
  store ptr %39, ptr %388, align 8, !tbaa !385
  br label %389

389:                                              ; preds = %384, %382
  %390 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %391 = getelementptr inbounds %struct.gv, ptr %390, i64 0, i32 3
  %392 = load ptr, ptr %391, align 8, !tbaa !398
  %393 = getelementptr inbounds %struct.gp, ptr %392, i64 0, i32 6
  %394 = load ptr, ptr %393, align 8, !tbaa !604
  %395 = icmp eq ptr %39, %394
  br i1 %395, label %404, label %396, !prof !766

396:                                              ; preds = %389
  %397 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %39) #22
  %398 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %399 = getelementptr inbounds %struct.gv, ptr %398, i64 0, i32 3
  %400 = load ptr, ptr %399, align 8, !tbaa !398
  %401 = getelementptr inbounds %struct.gp, ptr %400, i64 0, i32 6
  store ptr %39, ptr %401, align 8, !tbaa !604
  br label %402

402:                                              ; preds = %366, %396
  %403 = phi ptr [ %394, %396 ], [ %39, %366 ]
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %403) #22
  br label %404

404:                                              ; preds = %402, %389
  %405 = load i32, ptr @PL_perldb, align 4, !tbaa !430
  %406 = and i32 %405, 1
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %434, label %408, !prof !766

408:                                              ; preds = %404
  tail call void @Perl_get_db_sub(ptr noundef null, ptr noundef nonnull %92) #21
  %409 = load i32, ptr @PL_perldb, align 4, !tbaa !430
  %410 = and i32 %409, 128
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %434, label %412

412:                                              ; preds = %408
  %413 = tail call ptr @Perl_get_cvn_flags(ptr noundef nonnull @.str.41, i64 noundef 8, i32 noundef 0) #21
  %414 = icmp eq ptr %413, null
  br i1 %414, label %434, label %415

415:                                              ; preds = %412
  %416 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %417 = getelementptr inbounds i32, ptr %416, i64 1
  store ptr %417, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %418 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !385
  %419 = icmp eq ptr %417, %418
  br i1 %419, label %420, label %422

420:                                              ; preds = %415
  %421 = tail call ptr @Perl_markstack_grow() #21
  br label %422

422:                                              ; preds = %415, %420
  %423 = phi ptr [ %421, %420 ], [ %417, %415 ]
  %424 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %425 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %426 = ptrtoint ptr %424 to i64
  %427 = ptrtoint ptr %425 to i64
  %428 = sub i64 %426, %427
  %429 = lshr exact i64 %428, 3
  %430 = trunc i64 %429 to i32
  store i32 %430, ptr %423, align 4, !tbaa !430
  %431 = tail call i32 @Perl_call_sv(ptr noundef nonnull %413, i32 noundef 66) #21
  %432 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %433 = getelementptr inbounds ptr, ptr %432, i64 -1
  store ptr %433, ptr @PL_stack_sp, align 8, !tbaa !385
  br label %434

434:                                              ; preds = %404, %408, %422, %412
  %435 = load ptr, ptr %92, align 8, !tbaa !595
  %436 = getelementptr inbounds %struct.xpvcv, ptr %435, i64 0, i32 5
  %437 = load ptr, ptr %436, align 8, !tbaa !398
  br label %711

438:                                              ; preds = %27, %23
  %439 = and i32 %24, 2098176
  %440 = icmp eq i32 %439, 1024
  br i1 %440, label %441, label %447

441:                                              ; preds = %438
  %442 = load ptr, ptr %15, align 8, !tbaa !487
  %443 = getelementptr inbounds %struct.xpv, ptr %442, i64 0, i32 2
  %444 = load i64, ptr %443, align 8, !tbaa !458
  store i64 %444, ptr %2, align 8, !tbaa !509
  %445 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 3
  %446 = load ptr, ptr %445, align 8, !tbaa !398
  br label %451

447:                                              ; preds = %438
  %448 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %15, ptr noundef nonnull %2, i32 noundef 32) #21
  %449 = load i32, ptr %16, align 4, !tbaa !452
  %450 = load i64, ptr %2, align 8
  br label %451

451:                                              ; preds = %441, %447
  %452 = phi i64 [ %444, %441 ], [ %450, %447 ]
  %453 = phi i32 [ %24, %441 ], [ %449, %447 ]
  %454 = phi ptr [ %446, %441 ], [ %448, %447 ]
  %455 = and i32 %453, 536870912
  br label %478

456:                                              ; preds = %340, %315
  %457 = phi ptr [ %341, %340 ], [ %337, %315 ]
  %458 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %459 = ptrtoint ptr %301 to i64
  %460 = ptrtoint ptr %458 to i64
  %461 = sub i64 %459, %460
  %462 = lshr exact i64 %461, 3
  %463 = trunc i64 %462 to i32
  store i32 %463, ptr %457, align 4, !tbaa !430
  store ptr %303, ptr @PL_stack_sp, align 8, !tbaa !385
  %464 = load ptr, ptr %92, align 8, !tbaa !595
  %465 = getelementptr inbounds %struct.xpvcv, ptr %464, i64 0, i32 6
  %466 = load ptr, ptr %465, align 8, !tbaa !398
  tail call void %466(ptr noundef nonnull %92) #21
  tail call void @Perl_pop_scope() #21
  br label %714

467:                                              ; preds = %0
  %468 = icmp sgt i8 %10, -1
  br i1 %468, label %469, label %478

469:                                              ; preds = %467
  %470 = getelementptr inbounds %struct.pvop, ptr %4, i64 0, i32 7
  %471 = load ptr, ptr %470, align 8, !tbaa !738
  %472 = getelementptr inbounds %struct.pvop, ptr %4, i64 0, i32 6
  %473 = load i8, ptr %472, align 1, !tbaa !740
  %474 = and i8 %473, -128
  %475 = zext i8 %474 to i32
  %476 = shl nuw nsw i32 %475, 22
  %477 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %471) #24
  store i64 %477, ptr %2, align 8, !tbaa !509
  br label %478

478:                                              ; preds = %451, %467, %469
  %479 = phi i64 [ 0, %467 ], [ %477, %469 ], [ %452, %451 ]
  %480 = phi i32 [ 0, %467 ], [ %476, %469 ], [ %455, %451 ]
  %481 = phi ptr [ null, %467 ], [ %471, %469 ], [ %454, %451 ]
  %482 = phi ptr [ %3, %467 ], [ %3, %469 ], [ %14, %451 ]
  %483 = icmp ne i64 %479, 0
  %484 = select i1 %8, i1 true, i1 %483
  br i1 %484, label %487, label %485

485:                                              ; preds = %478
  %486 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.34) #21
  br label %720

487:                                              ; preds = %478
  %488 = load i32, ptr @PL_sig_pending, align 4, !tbaa !430
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %493, label %490

490:                                              ; preds = %487
  %491 = load ptr, ptr @PL_signalhook, align 8, !tbaa !385
  call void %491() #21
  %492 = load i64, ptr %2, align 8, !tbaa !509
  br label %493

493:                                              ; preds = %487, %490
  %494 = phi i64 [ %479, %487 ], [ %492, %490 ]
  %495 = icmp eq i64 %494, 0
  br i1 %495, label %708, label %496

496:                                              ; preds = %493
  store ptr null, ptr @PL_lastgotoprobe, align 8, !tbaa !385
  store ptr null, ptr %1, align 16, !tbaa !385
  %497 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %498 = getelementptr inbounds %struct.stackinfo, ptr %497, i64 0, i32 4
  %499 = load i32, ptr %498, align 8, !tbaa !397
  %500 = icmp sgt i32 %499, -1
  br i1 %500, label %501, label %589

501:                                              ; preds = %496
  %502 = getelementptr inbounds ptr, ptr %1, i64 64
  %503 = zext nneg i32 %499 to i64
  br label %504

504:                                              ; preds = %501, %581
  %505 = phi i64 [ %503, %501 ], [ %585, %581 ]
  %506 = phi ptr [ null, %501 ], [ %584, %581 ]
  %507 = phi i8 [ 0, %501 ], [ %583, %581 ]
  %508 = phi i8 [ 0, %501 ], [ %582, %581 ]
  %509 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %510 = getelementptr inbounds %struct.stackinfo, ptr %509, i64 0, i32 1
  %511 = load ptr, ptr %510, align 8, !tbaa !395
  %512 = getelementptr inbounds %struct.context, ptr %511, i64 %505
  %513 = load i8, ptr %512, align 8, !tbaa !398
  %514 = zext i8 %513 to i32
  %515 = and i32 %514, 15
  switch i32 %515, label %548 [
    i32 10, label %516
    i32 7, label %523
    i32 6, label %523
    i32 4, label %523
    i32 5, label %523
    i32 3, label %523
    i32 1, label %523
    i32 11, label %581
    i32 2, label %528
    i32 8, label %534
    i32 9, label %546
    i32 0, label %546
  ]

516:                                              ; preds = %504
  %517 = and i32 %514, 79
  %518 = icmp eq i32 %517, 74
  br i1 %518, label %523, label %519

519:                                              ; preds = %516
  %520 = icmp eq ptr %506, null
  %521 = getelementptr inbounds %struct.block, ptr %506, i64 0, i32 8, i32 0, i32 2
  %522 = select i1 %520, ptr @PL_eval_root, ptr %521
  br label %552

523:                                              ; preds = %516, %504, %504, %504, %504, %504, %504
  %524 = phi i8 [ %508, %504 ], [ %508, %504 ], [ %508, %504 ], [ %508, %504 ], [ %508, %504 ], [ %508, %504 ], [ 1, %516 ]
  %525 = getelementptr inbounds %struct.block, ptr %512, i64 0, i32 4
  %526 = load ptr, ptr %525, align 8, !tbaa !398
  %527 = getelementptr inbounds %struct.cop, ptr %526, i64 0, i32 1
  br label %552

528:                                              ; preds = %504
  %529 = icmp eq i64 %505, 0
  br i1 %529, label %552, label %530

530:                                              ; preds = %528
  %531 = getelementptr inbounds %struct.block, ptr %512, i64 0, i32 4
  %532 = load ptr, ptr %531, align 8, !tbaa !398
  %533 = getelementptr inbounds %struct.cop, ptr %532, i64 0, i32 1
  br label %552

534:                                              ; preds = %504
  %535 = getelementptr inbounds %struct.block, ptr %512, i64 0, i32 8, i32 0, i32 1
  %536 = load ptr, ptr %535, align 8, !tbaa !398
  %537 = call fastcc ptr @S_CvDEPTHp(ptr noundef %536) #22
  %538 = load i32, ptr %537, align 4, !tbaa !430
  %539 = icmp ne i32 %538, 0
  %540 = and i8 %513, 16
  %541 = icmp eq i8 %540, 0
  %542 = and i1 %541, %539
  br i1 %542, label %543, label %546

543:                                              ; preds = %534
  %544 = load ptr, ptr %536, align 8, !tbaa !595
  %545 = getelementptr inbounds %struct.xpvcv, ptr %544, i64 0, i32 6
  br label %552

546:                                              ; preds = %534, %504, %504
  %547 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.43) #21
  br label %720

548:                                              ; preds = %504
  %549 = icmp eq i64 %505, 0
  br i1 %549, label %552, label %550

550:                                              ; preds = %548
  %551 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.44, i32 noundef %515, i64 noundef %505) #21
  br label %720

552:                                              ; preds = %548, %528, %530, %543, %523, %519
  %553 = phi ptr [ %545, %543 ], [ %533, %530 ], [ %527, %523 ], [ %522, %519 ], [ @PL_main_root, %528 ], [ @PL_main_root, %548 ]
  %554 = phi i8 [ %508, %543 ], [ %508, %530 ], [ %524, %523 ], [ 1, %519 ], [ %508, %528 ], [ %508, %548 ]
  %555 = phi i8 [ %507, %543 ], [ 1, %530 ], [ %507, %523 ], [ %507, %519 ], [ %507, %528 ], [ %507, %548 ]
  %556 = phi ptr [ %506, %543 ], [ %506, %530 ], [ %506, %523 ], [ %512, %519 ], [ %506, %528 ], [ %506, %548 ]
  %557 = load ptr, ptr %553, align 8, !tbaa !398
  %558 = icmp eq ptr %557, null
  br i1 %558, label %580, label %559

559:                                              ; preds = %552
  %560 = load i64, ptr %2, align 8, !tbaa !509
  %561 = call fastcc ptr @S_dofindlabel(ptr noundef nonnull %557, ptr noundef %481, i64 noundef %560, i32 noundef %480, ptr noundef nonnull %1, ptr noundef nonnull %502) #22
  %562 = icmp eq ptr %561, null
  br i1 %562, label %563, label %594

563:                                              ; preds = %559
  %564 = getelementptr inbounds %struct.op, ptr %557, i64 0, i32 1
  %565 = load ptr, ptr %564, align 8, !tbaa !768
  %566 = icmp eq ptr %565, null
  br i1 %566, label %580, label %567

567:                                              ; preds = %563
  %568 = getelementptr inbounds %struct.op, ptr %565, i64 0, i32 4
  %569 = load i16, ptr %568, align 8
  %570 = and i16 %569, 511
  %571 = icmp eq i16 %570, 195
  br i1 %571, label %572, label %580

572:                                              ; preds = %567
  %573 = getelementptr inbounds %struct.op, ptr %565, i64 0, i32 1
  %574 = load ptr, ptr %573, align 8, !tbaa !768
  %575 = icmp eq ptr %574, null
  br i1 %575, label %580, label %576

576:                                              ; preds = %572
  %577 = load i64, ptr %2, align 8, !tbaa !509
  %578 = call fastcc ptr @S_dofindlabel(ptr noundef nonnull %574, ptr noundef %481, i64 noundef %577, i32 noundef %480, ptr noundef nonnull %1, ptr noundef nonnull %502) #22
  %579 = icmp eq ptr %578, null
  br i1 %579, label %580, label %594

580:                                              ; preds = %576, %572, %567, %563, %552
  store ptr %557, ptr @PL_lastgotoprobe, align 8, !tbaa !385
  br label %581

581:                                              ; preds = %504, %580
  %582 = phi i8 [ %554, %580 ], [ %508, %504 ]
  %583 = phi i8 [ %555, %580 ], [ %507, %504 ]
  %584 = phi ptr [ %556, %580 ], [ %506, %504 ]
  %585 = add nsw i64 %505, -1
  %586 = icmp sgt i64 %505, 0
  br i1 %586, label %504, label %587, !llvm.loop !769

587:                                              ; preds = %581
  %588 = load i64, ptr %2, align 8, !tbaa !509
  br label %589

589:                                              ; preds = %587, %496
  %590 = phi i64 [ %588, %587 ], [ %494, %496 ]
  %591 = icmp ne i32 %480, 0
  %592 = zext i1 %591 to i32
  %593 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.45, i32 noundef %592, i64 noundef %590, ptr noundef %481) #21
  br label %720

594:                                              ; preds = %559, %576
  %595 = phi ptr [ %578, %576 ], [ %561, %559 ]
  %596 = trunc i64 %505 to i32
  %597 = and i8 %554, 1
  %598 = icmp eq i8 %597, 0
  %599 = load ptr, ptr %1, align 16
  %600 = icmp eq ptr %599, null
  %601 = select i1 %598, i1 true, i1 %600
  %602 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 1
  %603 = load ptr, ptr %602, align 8
  %604 = icmp eq ptr %603, null
  %605 = select i1 %601, i1 true, i1 %604
  br i1 %605, label %620, label %611

606:                                              ; preds = %611
  %607 = add nuw i64 %612, 1
  %608 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %607
  %609 = load ptr, ptr %608, align 8, !tbaa !385
  %610 = icmp eq ptr %609, null
  br i1 %610, label %620, label %611, !llvm.loop !770

611:                                              ; preds = %594, %606
  %612 = phi i64 [ %607, %606 ], [ 1, %594 ]
  %613 = phi ptr [ %609, %606 ], [ %603, %594 ]
  %614 = getelementptr inbounds %struct.op, ptr %613, i64 0, i32 4
  %615 = load i16, ptr %614, align 8
  %616 = and i16 %615, 511
  %617 = icmp eq i16 %616, 199
  br i1 %617, label %618, label %606

618:                                              ; preds = %611
  %619 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.46) #21
  br label %720

620:                                              ; preds = %606, %594
  %621 = icmp ne ptr %599, null
  %622 = icmp ne ptr %603, null
  %623 = select i1 %621, i1 %622, i1 false
  br i1 %623, label %624, label %637

624:                                              ; preds = %620
  %625 = getelementptr inbounds %struct.op, ptr %603, i64 0, i32 4
  %626 = load i16, ptr %625, align 8
  %627 = and i16 %626, 511
  %628 = icmp eq i16 %627, 196
  %629 = and i8 %555, 1
  %630 = icmp ne i8 %629, 0
  %631 = select i1 %628, i1 %630, i1 false
  %632 = select i1 %631, i64 2, i64 1
  %633 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %632
  %634 = load ptr, ptr %633, align 8, !tbaa !385
  %635 = icmp eq ptr %634, null
  br i1 %635, label %637, label %636

636:                                              ; preds = %624
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 2, ptr noundef nonnull @.str.47) #21
  br label %637

637:                                              ; preds = %624, %636, %620
  %638 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %639 = getelementptr inbounds %struct.stackinfo, ptr %638, i64 0, i32 4
  %640 = load i32, ptr %639, align 8, !tbaa !397
  %641 = icmp sgt i32 %640, %596
  br i1 %641, label %642, label %671

642:                                              ; preds = %637
  call void @Perl_dounwind(i32 noundef %596) #22
  %643 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %644 = getelementptr inbounds %struct.stackinfo, ptr %643, i64 0, i32 1
  %645 = load ptr, ptr %644, align 8, !tbaa !395
  %646 = getelementptr inbounds %struct.stackinfo, ptr %643, i64 0, i32 4
  %647 = load i32, ptr %646, align 8, !tbaa !397
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds %struct.context, ptr %645, i64 %648
  %650 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %651 = getelementptr inbounds %struct.block, ptr %649, i64 0, i32 3
  %652 = load i32, ptr %651, align 4, !tbaa !398
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds ptr, ptr %650, i64 %653
  store ptr %654, ptr @PL_stack_sp, align 8, !tbaa !385
  %655 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %656 = getelementptr inbounds %struct.block, ptr %649, i64 0, i32 5
  %657 = load i32, ptr %656, align 8, !tbaa !398
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds i32, ptr %655, i64 %658
  store ptr %659, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %660 = getelementptr inbounds %struct.block, ptr %649, i64 0, i32 6
  %661 = load i32, ptr %660, align 4, !tbaa !398
  store i32 %661, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %662 = getelementptr inbounds %struct.block, ptr %649, i64 0, i32 7
  %663 = load ptr, ptr %662, align 8, !tbaa !398
  store ptr %663, ptr @PL_curpm, align 8, !tbaa !385
  %664 = load ptr, ptr @PL_scopestack, align 8, !tbaa !385
  %665 = sext i32 %661 to i64
  %666 = getelementptr inbounds i32, ptr %664, i64 %665
  %667 = load i32, ptr %666, align 4, !tbaa !430
  %668 = load i32, ptr @PL_savestack_ix, align 4, !tbaa !430
  %669 = icmp sgt i32 %668, %667
  br i1 %669, label %670, label %671

670:                                              ; preds = %642
  call void @Perl_leave_scope(i32 noundef %667) #21
  br label %671

671:                                              ; preds = %670, %642, %637
  %672 = load ptr, ptr %1, align 16, !tbaa !385
  %673 = icmp ne ptr %672, null
  %674 = load ptr, ptr %602, align 8
  %675 = icmp ne ptr %674, null
  %676 = select i1 %673, i1 %675, i1 false
  br i1 %676, label %677, label %708

677:                                              ; preds = %671
  %678 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %679 = getelementptr inbounds %struct.op, ptr %674, i64 0, i32 4
  %680 = load i16, ptr %679, align 8
  %681 = and i16 %680, 511
  %682 = icmp eq i16 %681, 196
  %683 = and i8 %555, 1
  %684 = icmp ne i8 %683, 0
  %685 = select i1 %682, i1 %684, i1 false
  %686 = select i1 %685, i64 2, i64 1
  %687 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %686
  %688 = load ptr, ptr %687, align 8, !tbaa !385
  %689 = icmp eq ptr %688, null
  br i1 %689, label %707, label %690

690:                                              ; preds = %677, %699
  %691 = phi i64 [ %703, %699 ], [ %686, %677 ]
  %692 = phi ptr [ %705, %699 ], [ %688, %677 ]
  store ptr %692, ptr @PL_op, align 8, !tbaa !385
  %693 = getelementptr inbounds %struct.op, ptr %692, i64 0, i32 4
  %694 = load i16, ptr %693, align 8
  %695 = and i16 %694, 511
  %696 = icmp eq i16 %695, 199
  br i1 %696, label %697, label %699

697:                                              ; preds = %690
  %698 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.46) #21
  br label %720

699:                                              ; preds = %690
  %700 = getelementptr inbounds %struct.op, ptr %692, i64 0, i32 2
  %701 = load ptr, ptr %700, align 8, !tbaa !771
  %702 = call ptr %701() #21
  %703 = add nuw i64 %691, 1
  %704 = getelementptr inbounds [64 x ptr], ptr %1, i64 0, i64 %703
  %705 = load ptr, ptr %704, align 8, !tbaa !385
  %706 = icmp eq ptr %705, null
  br i1 %706, label %707, label %690, !llvm.loop !772

707:                                              ; preds = %699, %677
  store ptr %678, ptr @PL_op, align 8, !tbaa !385
  br label %708

708:                                              ; preds = %671, %707, %493
  %709 = phi ptr [ null, %493 ], [ %595, %671 ], [ %595, %707 ]
  br i1 %8, label %710, label %711

710:                                              ; preds = %708
  store ptr %709, ptr @PL_restartop, align 8, !tbaa !385
  store i8 1, ptr @PL_do_undump, align 1, !tbaa !423
  call void @Perl_my_unexec() #21
  store ptr null, ptr @PL_restartop, align 8, !tbaa !385
  store i8 0, ptr @PL_do_undump, align 1, !tbaa !423
  br label %711

711:                                              ; preds = %434, %708, %710
  %712 = phi ptr [ %709, %710 ], [ %709, %708 ], [ %437, %434 ]
  %713 = phi ptr [ %482, %710 ], [ %482, %708 ], [ %127, %434 ]
  store ptr %713, ptr @PL_stack_sp, align 8, !tbaa !385
  br label %714

714:                                              ; preds = %456, %711
  %715 = phi ptr [ %317, %456 ], [ %712, %711 ]
  %716 = load i32, ptr @PL_sig_pending, align 4, !tbaa !430
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %720, label %718, !prof !748

718:                                              ; preds = %714
  %719 = load ptr, ptr @PL_signalhook, align 8, !tbaa !385
  call void %719() #21
  br label %720

720:                                              ; preds = %697, %546, %589, %618, %550, %80, %83, %224, %227, %152, %147, %145, %110, %718, %714, %485
  %721 = phi ptr [ %486, %485 ], [ %715, %714 ], [ %715, %718 ], [ %228, %227 ], [ %226, %224 ], [ %153, %152 ], [ %148, %147 ], [ %146, %145 ], [ %111, %110 ], [ %82, %80 ], [ %84, %83 ], [ %698, %697 ], [ %547, %546 ], [ %593, %589 ], [ %619, %618 ], [ %551, %550 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %1) #23
  ret ptr %721
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_CvGV(ptr noundef %0) unnamed_addr #0 !prof !422 !PGOFuncName !773 {
  %2 = load ptr, ptr %0, align 8, !tbaa !595
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !597
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %0) #21
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !398
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @Perl_gv_autoload_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_gv_efullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc_NN(ptr noundef returned %0) unnamed_addr #7 !prof !774 !PGOFuncName !775 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !468
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !468
  ret ptr %0
}

; Function Attrs: optsize
declare ptr @Perl_newSVavdefelem(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sub_crush_depth(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_get_db_sub(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_get_cvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_call_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_dofindlabel(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !prof !422 !PGOFuncName !776 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = icmp ult ptr %4, %5
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.102) #21
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.op, ptr %0, i64 0, i32 4
  %13 = load i16, ptr %12, align 8
  %14 = and i16 %13, 511
  switch i16 %14, label %21 [
    i16 197, label %15
    i16 198, label %15
    i16 202, label %15
    i16 186, label %15
    i16 345, label %15
  ]

15:                                               ; preds = %11, %11, %11, %11, %11
  %16 = getelementptr inbounds %struct.unop, ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !584
  %18 = getelementptr inbounds ptr, ptr %4, i64 1
  store ptr %17, ptr %4, align 8, !tbaa !385
  %19 = icmp ult ptr %18, %5
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.102) #21
  br label %21

21:                                               ; preds = %11, %15, %20
  %22 = phi ptr [ %18, %20 ], [ %18, %15 ], [ %4, %11 ]
  store ptr null, ptr %22, align 8, !tbaa !385
  %23 = getelementptr inbounds %struct.op, ptr %0, i64 0, i32 5
  %24 = load i8, ptr %23, align 2, !tbaa !428
  %25 = and i8 %24, 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %113, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.unop, ptr %0, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !385
  %30 = icmp eq ptr %29, null
  br i1 %30, label %113, label %31

31:                                               ; preds = %27
  %32 = and i32 %3, 536870912
  %33 = icmp eq i32 %32, 0
  br label %40

34:                                               ; preds = %71
  %35 = load ptr, ptr %28, align 8, !tbaa !385
  %36 = icmp eq ptr %35, null
  br i1 %36, label %113, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr @PL_lastgotoprobe, align 8, !tbaa !385
  %39 = getelementptr inbounds ptr, ptr %4, i64 1
  br label %75

40:                                               ; preds = %31, %71
  %41 = phi ptr [ %29, %31 ], [ %73, %71 ]
  %42 = getelementptr inbounds %struct.op, ptr %41, i64 0, i32 4
  %43 = load i16, ptr %42, align 8
  %44 = and i16 %43, 511
  %45 = add nsw i16 %44, -193
  %46 = icmp ult i16 %45, 2
  br i1 %46, label %47, label %71

47:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #23
  %48 = call ptr @Perl_cop_fetch_label(ptr noundef nonnull %41, ptr noundef nonnull %7, ptr noundef nonnull %8) #21
  %49 = icmp eq ptr %48, null
  br i1 %49, label %70, label %50

50:                                               ; preds = %47
  %51 = load i32, ptr %8, align 4, !tbaa !430
  %52 = and i32 %51, 536870912
  %53 = icmp eq i32 %52, %32
  %54 = load i64, ptr %7, align 8, !tbaa !509
  br i1 %53, label %62, label %55

55:                                               ; preds = %50
  br i1 %33, label %59, label %56

56:                                               ; preds = %55
  %57 = call i32 @Perl_bytes_cmp_utf8(ptr noundef nonnull %48, i64 noundef %54, ptr noundef %1, i64 noundef %2) #21
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %69, label %70

59:                                               ; preds = %55
  %60 = call i32 @Perl_bytes_cmp_utf8(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %48, i64 noundef %54) #21
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %69, label %70

62:                                               ; preds = %50
  %63 = icmp eq i64 %54, %2
  br i1 %63, label %64, label %70

64:                                               ; preds = %62
  %65 = icmp eq ptr %48, %1
  br i1 %65, label %69, label %66

66:                                               ; preds = %64
  %67 = call i32 @bcmp(ptr nonnull %48, ptr %1, i64 %2)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66, %64, %59, %56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  br label %115

70:                                               ; preds = %47, %56, %59, %62, %66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  br label %71

71:                                               ; preds = %70, %40
  %72 = getelementptr inbounds %struct.op, ptr %41, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !385
  %74 = icmp eq ptr %73, null
  br i1 %74, label %34, label %40, !llvm.loop !777

75:                                               ; preds = %37, %107
  %76 = phi ptr [ %108, %107 ], [ %38, %37 ]
  %77 = phi ptr [ %111, %107 ], [ %35, %37 ]
  %78 = phi ptr [ %109, %107 ], [ %22, %37 ]
  %79 = icmp eq ptr %77, %76
  br i1 %79, label %107, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.op, ptr %77, i64 0, i32 4
  %82 = load i16, ptr %81, align 8
  %83 = and i16 %82, 511
  %84 = add nsw i16 %83, -193
  %85 = icmp ult i16 %84, 2
  br i1 %85, label %86, label %102

86:                                               ; preds = %80
  %87 = icmp eq ptr %78, %4
  br i1 %87, label %99, label %88

88:                                               ; preds = %86
  %89 = getelementptr inbounds ptr, ptr %78, i64 -1
  %90 = load ptr, ptr %89, align 8, !tbaa !385
  %91 = getelementptr inbounds %struct.op, ptr %90, i64 0, i32 4
  %92 = load i16, ptr %91, align 8
  %93 = and i16 %92, 511
  %94 = add nsw i16 %93, -195
  %95 = icmp ult i16 %94, -2
  %96 = select i1 %95, ptr %78, ptr %89
  %97 = zext i1 %95 to i64
  %98 = getelementptr inbounds ptr, ptr %78, i64 %97
  br label %99

99:                                               ; preds = %88, %86
  %100 = phi ptr [ %4, %86 ], [ %96, %88 ]
  %101 = phi ptr [ %39, %86 ], [ %98, %88 ]
  store ptr %77, ptr %100, align 8, !tbaa !385
  br label %102

102:                                              ; preds = %99, %80
  %103 = phi ptr [ %78, %80 ], [ %101, %99 ]
  %104 = call fastcc ptr @S_dofindlabel(ptr noundef nonnull %77, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %103, ptr noundef %5) #22
  %105 = icmp eq ptr %104, null
  %106 = load ptr, ptr @PL_lastgotoprobe, align 8, !tbaa !385
  br i1 %105, label %107, label %115

107:                                              ; preds = %102, %75
  %108 = phi ptr [ %76, %75 ], [ %106, %102 ]
  %109 = phi ptr [ %78, %75 ], [ %103, %102 ]
  %110 = getelementptr inbounds %struct.op, ptr %77, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !385
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %75, !llvm.loop !778

113:                                              ; preds = %107, %27, %34, %21
  %114 = phi ptr [ %22, %21 ], [ %22, %34 ], [ %22, %27 ], [ %109, %107 ]
  store ptr null, ptr %114, align 8, !tbaa !385
  br label %115

115:                                              ; preds = %102, %69, %113
  %116 = phi ptr [ null, %113 ], [ %41, %69 ], [ %104, %102 ]
  ret ptr %116
}

; Function Attrs: optsize
declare void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_my_unexec() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_exit() local_unnamed_addr #0 !prof !422 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 6
  %4 = load i8, ptr %3, align 1, !tbaa !390
  %5 = and i8 %4, 15
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %0
  %8 = load ptr, ptr %1, align 8, !tbaa !385
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds ptr, ptr %1, i64 -1
  br i1 %9, label %25, label %11

11:                                               ; preds = %7
  store ptr %8, ptr @PL_Sv, align 8, !tbaa !385
  %12 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !452
  %14 = and i32 %13, 2097408
  %15 = icmp eq i32 %14, 256
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load ptr, ptr %8, align 8, !tbaa !487
  %18 = getelementptr inbounds %struct.xpviv, ptr %17, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !398
  br label %22

20:                                               ; preds = %11
  %21 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %8, i32 noundef 2) #21
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i64 [ %19, %16 ], [ %21, %20 ]
  %24 = trunc i64 %23 to i32
  br label %25

25:                                               ; preds = %7, %0, %22
  %26 = phi ptr [ %10, %22 ], [ %1, %0 ], [ %10, %7 ]
  %27 = phi i32 [ %24, %22 ], [ 0, %0 ], [ 0, %7 ]
  %28 = load i8, ptr @PL_exit_flags, align 1, !tbaa !398
  %29 = or i8 %28, 1
  store i8 %29, ptr @PL_exit_flags, align 1, !tbaa !398
  tail call void @Perl_my_exit(i32 noundef %27) #21
  %30 = getelementptr inbounds ptr, ptr %26, i64 1
  store ptr @PL_sv_undef, ptr %30, align 8, !tbaa !385
  store ptr %30, ptr @PL_stack_sp, align 8, !tbaa !385
  %31 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %32 = load ptr, ptr %31, align 8, !tbaa !400
  ret ptr %32
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @Perl_find_runcv(ptr noundef %0) local_unnamed_addr #3 !prof !779 {
  %2 = tail call ptr @Perl_find_runcv_where(i8 noundef zeroext 0, i64 noundef 0, ptr noundef %0) #22
  ret ptr %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @Perl_find_runcv_where(i8 noundef zeroext %0, i64 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #3 !prof !779 {
  %4 = icmp ne ptr %2, null
  br i1 %4, label %5, label %11, !prof !780

5:                                                ; preds = %3
  %6 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %7 = icmp eq ptr %6, @PL_compiling
  %8 = getelementptr inbounds %struct.cop, ptr %6, i64 0, i32 11
  %9 = select i1 %7, ptr @PL_cop_seqmax, ptr %8, !prof !781
  %10 = load i32, ptr %9, align 4, !tbaa !430
  store i32 %10, ptr %2, align 4, !tbaa !430
  br label %11

11:                                               ; preds = %5, %3
  %12 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %13 = icmp eq ptr %12, null
  br i1 %13, label %83, label %14, !prof !782

14:                                               ; preds = %11, %78
  %15 = phi ptr [ %81, %78 ], [ %12, %11 ]
  %16 = phi i32 [ %79, %78 ], [ 0, %11 ]
  %17 = getelementptr inbounds %struct.stackinfo, ptr %15, i64 0, i32 4
  %18 = load i32, ptr %17, align 8, !tbaa !397
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %78, !prof !417

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.stackinfo, ptr %15, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !395
  %23 = zext nneg i32 %18 to i64
  br label %24

24:                                               ; preds = %20, %74
  %25 = phi i64 [ %23, %20 ], [ %76, %74 ]
  %26 = phi i32 [ %16, %20 ], [ %75, %74 ]
  %27 = getelementptr inbounds %struct.context, ptr %22, i64 %25
  %28 = load i8, ptr %27, align 8, !tbaa !398
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 15
  switch i32 %30, label %74 [
    i32 8, label %31
    i32 9, label %31
    i32 10, label %50
  ], !prof !783

31:                                               ; preds = %24, %24
  %32 = getelementptr inbounds %struct.block, ptr %27, i64 0, i32 8, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !398
  %34 = load ptr, ptr @PL_debstash, align 8
  %35 = icmp ne ptr %34, null
  %36 = select i1 %4, i1 %35, i1 false
  br i1 %36, label %37, label %47, !prof !784

37:                                               ; preds = %31
  %38 = load ptr, ptr %33, align 8, !tbaa !595
  %39 = getelementptr inbounds %struct.xpvcv, ptr %38, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !785
  %41 = icmp eq ptr %40, %34
  br i1 %41, label %42, label %47, !prof !786

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.block, ptr %27, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !398
  %45 = getelementptr inbounds %struct.cop, ptr %44, i64 0, i32 11
  %46 = load i32, ptr %45, align 4, !tbaa !787
  store i32 %46, ptr %2, align 4, !tbaa !430
  br label %74

47:                                               ; preds = %37, %31
  %48 = and i8 %28, 64
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %56, label %74, !prof !788

50:                                               ; preds = %24
  %51 = and i32 %29, 74
  %52 = icmp eq i32 %51, 74
  br i1 %52, label %74, label %53, !prof !789

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.block, ptr %27, i64 0, i32 8, i32 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !398
  br label %56

56:                                               ; preds = %53, %47
  %57 = phi ptr [ %33, %47 ], [ %55, %53 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %74, label %59, !prof !758

59:                                               ; preds = %56
  switch i8 %0, label %87 [
    i8 1, label %60
    i8 2, label %70
  ], !prof !790

60:                                               ; preds = %59
  %61 = load ptr, ptr %57, align 8, !tbaa !595
  %62 = getelementptr inbounds %struct.xpvcv, ptr %61, i64 0, i32 9
  %63 = load ptr, ptr %62, align 8, !tbaa !398
  %64 = icmp eq ptr %63, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %60
  %66 = trunc i64 %1 to i32
  %67 = getelementptr inbounds %struct.padlist, ptr %63, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !791
  %69 = icmp eq i32 %68, %66
  br i1 %69, label %87, label %74

70:                                               ; preds = %59
  %71 = add nsw i32 %26, 1
  %72 = sext i32 %26 to i64
  %73 = icmp eq i64 %72, %1
  br i1 %73, label %87, label %74

74:                                               ; preds = %24, %50, %42, %47, %60, %56, %65, %70
  %75 = phi i32 [ %71, %70 ], [ %26, %65 ], [ %26, %56 ], [ %26, %60 ], [ %26, %47 ], [ %26, %42 ], [ %26, %50 ], [ %26, %24 ]
  %76 = add nsw i64 %25, -1
  %77 = icmp sgt i64 %25, 0
  br i1 %77, label %24, label %78, !prof !792, !llvm.loop !793

78:                                               ; preds = %74, %14
  %79 = phi i32 [ %16, %14 ], [ %75, %74 ]
  %80 = getelementptr inbounds %struct.stackinfo, ptr %15, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !385
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %14, !prof !794, !llvm.loop !795

83:                                               ; preds = %78, %11
  %84 = icmp eq i8 %0, 1
  %85 = load ptr, ptr @PL_main_cv, align 8
  %86 = select i1 %84, ptr null, ptr %85
  br label %87

87:                                               ; preds = %70, %65, %59, %83
  %88 = phi ptr [ %86, %83 ], [ %57, %59 ], [ %57, %65 ], [ %57, %70 ]
  ret ptr %88
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_require() local_unnamed_addr #0 !prof !796 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #23
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 5
  %6 = load i8, ptr %5, align 2, !tbaa !428
  %7 = and i8 %6, 3
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9, !prof !797

9:                                                ; preds = %0
  %10 = zext nneg i8 %7 to i32
  br label %13

11:                                               ; preds = %0
  %12 = tail call i32 @Perl_block_gimme() #22, !range !553
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = getelementptr inbounds ptr, ptr %3, i64 -1
  %16 = load ptr, ptr %3, align 8, !tbaa !385
  %17 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !452
  %19 = and i32 %18, 2097152
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21, !prof !798

21:                                               ; preds = %13
  %22 = tail call i32 @Perl_mg_get(ptr noundef nonnull %16) #21
  %23 = load i32, ptr %17, align 4, !tbaa !452
  br label %24

24:                                               ; preds = %13, %21
  %25 = phi i32 [ %18, %13 ], [ %23, %21 ]
  %26 = and i32 %25, 12288
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34, !prof !799

28:                                               ; preds = %24
  %29 = and i32 %25, 14680064
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %162, label %31, !prof !800

31:                                               ; preds = %28
  %32 = tail call ptr @Perl_mg_find(ptr noundef nonnull %16, i32 noundef 86) #21
  %33 = icmp eq ptr %32, null
  br i1 %33, label %162, label %34

34:                                               ; preds = %31, %24
  %35 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %36 = getelementptr inbounds %struct.op, ptr %35, i64 0, i32 4
  %37 = load i16, ptr %36, align 8
  %38 = and i16 %37, 511
  %39 = icmp eq i16 %38, 340
  br i1 %39, label %162, label %40, !prof !801

40:                                               ; preds = %34
  %41 = tail call ptr @Perl_new_version(ptr noundef nonnull %16) #21
  %42 = tail call ptr @Perl_sv_2mortal(ptr noundef %41) #21
  %43 = load ptr, ptr @PL_patchlevel, align 8, !tbaa !385
  %44 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %43, ptr noundef nonnull @.str.49, i64 noundef 7, i32 noundef 0) #21
  br i1 %44, label %48, label %45, !prof !802

45:                                               ; preds = %40
  %46 = load ptr, ptr @PL_patchlevel, align 8, !tbaa !385
  %47 = tail call ptr @Perl_upg_version(ptr noundef %46, i1 noundef zeroext true) #21
  br label %48

48:                                               ; preds = %45, %40
  %49 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %50 = getelementptr inbounds %struct.unop, ptr %49, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !584
  %52 = getelementptr inbounds %struct.op, ptr %51, i64 0, i32 4
  %53 = load i16, ptr %52, align 8
  %54 = and i16 %53, 511
  %55 = icmp eq i16 %54, 5
  br i1 %55, label %56, label %72, !prof !803

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.op, ptr %51, i64 0, i32 6
  %58 = load i8, ptr %57, align 1, !tbaa !390
  %59 = and i8 %58, 2
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %72, label %61, !prof !803

61:                                               ; preds = %56
  %62 = load ptr, ptr @PL_patchlevel, align 8, !tbaa !385
  %63 = tail call i32 @Perl_vcmp(ptr noundef %42, ptr noundef %62) #21
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %65, label %159

65:                                               ; preds = %61
  %66 = tail call ptr @Perl_vnormal(ptr noundef %42) #21
  %67 = tail call ptr @Perl_sv_2mortal(ptr noundef %66) #21
  %68 = load ptr, ptr @PL_patchlevel, align 8, !tbaa !385
  %69 = tail call ptr @Perl_vnormal(ptr noundef %68) #21
  %70 = tail call ptr @Perl_sv_2mortal(ptr noundef %69) #21
  %71 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.50, ptr noundef %67, ptr noundef %70) #21
  br label %985

72:                                               ; preds = %56, %48
  %73 = load ptr, ptr @PL_patchlevel, align 8, !tbaa !385
  %74 = tail call i32 @Perl_vcmp(ptr noundef %42, ptr noundef %73) #21
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %159, !prof !801

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !398
  %79 = tail call ptr @Perl_hv_common(ptr noundef %78, ptr noundef null, ptr noundef nonnull @.str.51, i64 noundef 8, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #21
  %80 = load ptr, ptr %79, align 8, !tbaa !385
  %81 = tail call ptr @Perl_hv_common(ptr noundef %78, ptr noundef null, ptr noundef nonnull @.str.49, i64 noundef 7, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #21
  %82 = load ptr, ptr %81, align 8, !tbaa !385
  %83 = getelementptr inbounds %struct.sv, ptr %82, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !398
  %85 = tail call ptr @Perl_av_fetch(ptr noundef %84, i64 noundef 0, i32 noundef 0) #21
  %86 = load ptr, ptr %85, align 8, !tbaa !385
  %87 = getelementptr inbounds %struct.sv, ptr %86, i64 0, i32 2
  %88 = load i32, ptr %87, align 4, !tbaa !452
  %89 = and i32 %88, 2097408
  %90 = icmp eq i32 %89, 256
  %91 = tail call ptr @Perl_av_fetch(ptr noundef %84, i64 noundef 0, i32 noundef 0) #21
  %92 = load ptr, ptr %91, align 8, !tbaa !385
  br i1 %90, label %93, label %97

93:                                               ; preds = %76
  %94 = load ptr, ptr %92, align 8, !tbaa !487
  %95 = getelementptr inbounds %struct.xpviv, ptr %94, i64 0, i32 4
  %96 = load i64, ptr %95, align 8, !tbaa !398
  br label %99

97:                                               ; preds = %76
  %98 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %92, i32 noundef 2) #21
  br label %99

99:                                               ; preds = %97, %93
  %100 = phi i64 [ %96, %93 ], [ %98, %97 ]
  %101 = trunc i64 %100 to i32
  %102 = icmp sgt i32 %101, 5
  br i1 %102, label %114, label %103

103:                                              ; preds = %99
  %104 = tail call ptr @Perl_hv_common_key_len(ptr noundef %78, ptr noundef nonnull @.str.52, i32 noundef 2, i32 noundef 8, ptr noundef null, i32 noundef 0) #21
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = tail call fastcc i64 @S_av_top_index(ptr noundef %84) #22
  %108 = icmp sgt i64 %107, 1
  br i1 %108, label %114, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.sv, ptr %80, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !398
  %112 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %111, ptr noundef nonnull dereferenceable(1) @.str.53) #24
  %113 = icmp eq ptr %112, null
  br i1 %113, label %121, label %114

114:                                              ; preds = %103, %109, %106, %99
  %115 = tail call ptr @Perl_vnormal(ptr noundef %78) #21
  %116 = tail call ptr @Perl_sv_2mortal(ptr noundef %115) #21
  %117 = load ptr, ptr @PL_patchlevel, align 8, !tbaa !385
  %118 = tail call ptr @Perl_vnormal(ptr noundef %117) #21
  %119 = tail call ptr @Perl_sv_2mortal(ptr noundef %118) #21
  %120 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.54, ptr noundef %116, ptr noundef %119) #21
  br label %985

121:                                              ; preds = %109
  %122 = tail call fastcc i64 @S_av_top_index(ptr noundef %84) #22
  %123 = icmp sgt i64 %122, 0
  br i1 %123, label %124, label %146

124:                                              ; preds = %121
  %125 = tail call ptr @Perl_av_fetch(ptr noundef %84, i64 noundef 1, i32 noundef 0) #21
  %126 = load ptr, ptr %125, align 8, !tbaa !385
  %127 = getelementptr inbounds %struct.sv, ptr %126, i64 0, i32 2
  %128 = load i32, ptr %127, align 4, !tbaa !452
  %129 = and i32 %128, 2097408
  %130 = icmp eq i32 %129, 256
  %131 = tail call ptr @Perl_av_fetch(ptr noundef %84, i64 noundef 1, i32 noundef 0) #21
  %132 = load ptr, ptr %131, align 8, !tbaa !385
  br i1 %130, label %133, label %137

133:                                              ; preds = %124
  %134 = load ptr, ptr %132, align 8, !tbaa !487
  %135 = getelementptr inbounds %struct.xpviv, ptr %134, i64 0, i32 4
  %136 = load i64, ptr %135, align 8, !tbaa !398
  br label %139

137:                                              ; preds = %124
  %138 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %132, i32 noundef 2) #21
  br label %139

139:                                              ; preds = %133, %137
  %140 = phi i64 [ %136, %133 ], [ %138, %137 ]
  %141 = freeze i64 %140
  %142 = trunc i64 %141 to i32
  %143 = icmp sgt i32 %142, 599
  %144 = select i1 %143, i32 100, i32 10
  %145 = sdiv i32 %142, %144
  br label %146

146:                                              ; preds = %139, %121
  %147 = phi i32 [ 0, %121 ], [ %145, %139 ]
  %148 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.55, i32 noundef %101, i32 noundef %147) #21
  %149 = tail call ptr @Perl_upg_version(ptr noundef %148, i1 noundef zeroext true) #21
  %150 = tail call ptr @Perl_vnormal(ptr noundef %78) #21
  %151 = tail call ptr @Perl_sv_2mortal(ptr noundef %150) #21
  %152 = tail call ptr @Perl_sv_2mortal(ptr noundef %148) #21
  %153 = tail call ptr @Perl_vnormal(ptr noundef %152) #21
  %154 = tail call ptr @Perl_sv_2mortal(ptr noundef %153) #21
  %155 = load ptr, ptr @PL_patchlevel, align 8, !tbaa !385
  %156 = tail call ptr @Perl_vnormal(ptr noundef %155) #21
  %157 = tail call ptr @Perl_sv_2mortal(ptr noundef %156) #21
  %158 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.56, ptr noundef %151, ptr noundef %154, ptr noundef %157) #21
  br label %985

159:                                              ; preds = %72, %61
  store ptr @PL_sv_yes, ptr %3, align 8, !tbaa !385
  store ptr %3, ptr @PL_stack_sp, align 8, !tbaa !385
  %160 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %161 = load ptr, ptr %160, align 8, !tbaa !400
  br label %985

162:                                              ; preds = %34, %31, %28
  %163 = load i32, ptr %17, align 4, !tbaa !452
  %164 = and i32 %163, 65280
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %174, !prof !804

166:                                              ; preds = %162
  %167 = and i32 %163, 255
  %168 = icmp eq i32 %167, 8
  %169 = and i32 %163, 16777471
  %170 = icmp eq i32 %169, 16777226
  %171 = or i1 %168, %170
  br i1 %171, label %174, label %172

172:                                              ; preds = %166
  %173 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.57) #21
  br label %985

174:                                              ; preds = %166, %162
  %175 = and i32 %163, 2098176
  %176 = icmp eq i32 %175, 1024
  br i1 %176, label %177, label %183, !prof !800

177:                                              ; preds = %174
  %178 = load ptr, ptr %16, align 8, !tbaa !487
  %179 = getelementptr inbounds %struct.xpv, ptr %178, i64 0, i32 2
  %180 = load i64, ptr %179, align 8, !tbaa !458
  store i64 %180, ptr %1, align 8, !tbaa !509
  %181 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 3
  %182 = load ptr, ptr %181, align 8, !tbaa !398
  br label %186

183:                                              ; preds = %174
  %184 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %16, ptr noundef nonnull %1, i32 noundef 32) #21
  %185 = load i64, ptr %1, align 8
  br label %186

186:                                              ; preds = %183, %177
  %187 = phi i64 [ %180, %177 ], [ %185, %183 ]
  %188 = phi ptr [ %182, %177 ], [ %184, %183 ]
  %189 = icmp ne ptr %188, null
  %190 = icmp ne i64 %187, 0
  %191 = select i1 %189, i1 %190, i1 false
  br i1 %191, label %192, label %195, !prof !805

192:                                              ; preds = %186
  %193 = load i8, ptr %188, align 1, !tbaa !398
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %197, !prof !804

195:                                              ; preds = %192, %186
  %196 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.57) #21
  br label %985

197:                                              ; preds = %192
  %198 = call fastcc zeroext i1 @S_is_safe_syscall(ptr noundef nonnull %188, i64 noundef %187, ptr noundef nonnull @.str.58) #22
  br i1 %198, label %213, label %199, !prof !800

199:                                              ; preds = %197
  %200 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.8, i64 noundef 0, i32 noundef 524288) #21
  %201 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 3
  %202 = load ptr, ptr %201, align 8, !tbaa !398
  %203 = load ptr, ptr %16, align 8, !tbaa !487
  %204 = getelementptr inbounds %struct.xpv, ptr %203, i64 0, i32 2
  %205 = load i64, ptr %204, align 8, !tbaa !458
  %206 = shl i64 %205, 1
  %207 = load i32, ptr %17, align 4, !tbaa !452
  %208 = lshr i32 %207, 21
  %209 = and i32 %208, 256
  %210 = call ptr @Perl_pv_escape(ptr noundef %200, ptr noundef %202, i64 noundef %205, i64 noundef %206, ptr noundef null, i32 noundef %209) #21
  %211 = call ptr @strerror(i32 noundef 2) #21
  %212 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.60, ptr noundef %210, ptr noundef %211) #21
  br label %985

213:                                              ; preds = %197
  %214 = load i8, ptr @PL_tainting, align 1, !tbaa !423, !range !444, !noundef !445
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %217, label %216, !prof !800

216:                                              ; preds = %213
  call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.59) #21
  br label %217

217:                                              ; preds = %213, %216
  %218 = call fastcc zeroext i1 @S_path_is_searchable(ptr noundef nonnull %188) #22
  %219 = load i64, ptr %1, align 8, !tbaa !509
  %220 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %221 = getelementptr inbounds %struct.op, ptr %220, i64 0, i32 4
  %222 = load i16, ptr %221, align 8
  %223 = and i16 %222, 511
  %224 = icmp eq i16 %223, 339
  br i1 %224, label %225, label %251, !prof !800

225:                                              ; preds = %217
  %226 = load ptr, ptr @PL_incgv, align 8, !tbaa !385
  %227 = getelementptr inbounds %struct.gv, ptr %226, i64 0, i32 3
  %228 = load ptr, ptr %227, align 8, !tbaa !398
  %229 = getelementptr inbounds %struct.gp, ptr %228, i64 0, i32 5
  %230 = load ptr, ptr %229, align 8, !tbaa !631
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %238, !prof !804

232:                                              ; preds = %225
  %233 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %226, i32 noundef 12) #21
  %234 = getelementptr inbounds %struct.gv, ptr %233, i64 0, i32 3
  %235 = load ptr, ptr %234, align 8, !tbaa !398
  %236 = getelementptr inbounds %struct.gp, ptr %235, i64 0, i32 5
  %237 = load ptr, ptr %236, align 8, !tbaa !631
  br label %238

238:                                              ; preds = %225, %232
  %239 = phi ptr [ %237, %232 ], [ %230, %225 ]
  %240 = trunc i64 %219 to i32
  %241 = call ptr @Perl_hv_common_key_len(ptr noundef %239, ptr noundef nonnull %188, i32 noundef %240, i32 noundef 32, ptr noundef null, i32 noundef 0) #21
  %242 = icmp eq ptr %241, null
  br i1 %242, label %251, label %243, !prof !806

243:                                              ; preds = %238
  %244 = load ptr, ptr %241, align 8, !tbaa !385
  %245 = icmp eq ptr %244, @PL_sv_undef
  br i1 %245, label %249, label %246, !prof !807

246:                                              ; preds = %243
  store ptr @PL_sv_yes, ptr %3, align 8, !tbaa !385
  store ptr %3, ptr @PL_stack_sp, align 8, !tbaa !385
  %247 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %248 = load ptr, ptr %247, align 8, !tbaa !400
  br label %985

249:                                              ; preds = %243
  %250 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.61, ptr noundef nonnull %188) #21
  br label %985

251:                                              ; preds = %238, %217
  br i1 %218, label %258, label %252, !prof !808

252:                                              ; preds = %251
  %253 = call fastcc ptr @S_doopen_pm(ptr noundef nonnull %16) #22
  %254 = icmp eq ptr %253, null
  br i1 %254, label %258, label %255, !prof !758

255:                                              ; preds = %252
  %256 = tail call ptr @__errno_location() #26
  %257 = call ptr @Perl_sv_2mortal(ptr noundef null) #21
  br label %816

258:                                              ; preds = %251, %252
  %259 = phi ptr [ %188, %252 ], [ null, %251 ]
  %260 = tail call ptr @__errno_location() #26
  %261 = load i32, ptr %260, align 4, !tbaa !430
  %262 = icmp ne i32 %261, 13
  %263 = or i1 %218, %262
  br i1 %263, label %264, label %686, !prof !809

264:                                              ; preds = %258
  %265 = load ptr, ptr @PL_incgv, align 8, !tbaa !385
  %266 = getelementptr inbounds %struct.gv, ptr %265, i64 0, i32 3
  %267 = load ptr, ptr %266, align 8, !tbaa !398
  %268 = getelementptr inbounds %struct.gp, ptr %267, i64 0, i32 6
  %269 = load ptr, ptr %268, align 8, !tbaa !604
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %277, !prof !810

271:                                              ; preds = %264
  %272 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %265, i32 noundef 11) #21
  %273 = getelementptr inbounds %struct.gv, ptr %272, i64 0, i32 3
  %274 = load ptr, ptr %273, align 8, !tbaa !398
  %275 = getelementptr inbounds %struct.gp, ptr %274, i64 0, i32 6
  %276 = load ptr, ptr %275, align 8, !tbaa !604
  br label %277

277:                                              ; preds = %264, %271
  %278 = phi ptr [ %276, %271 ], [ %269, %264 ]
  %279 = call ptr @Perl_newSV_type(i32 noundef 3) #21
  %280 = getelementptr inbounds %struct.sv, ptr %278, i64 0, i32 2
  %281 = getelementptr inbounds %struct.sv, ptr %279, i64 0, i32 3
  %282 = getelementptr inbounds %struct.sv, ptr %279, i64 0, i32 2
  br label %283

283:                                              ; preds = %681, %277
  %284 = phi i64 [ 0, %277 ], [ %685, %681 ]
  %285 = phi ptr [ %16, %277 ], [ %684, %681 ]
  %286 = phi ptr [ %259, %277 ], [ %683, %681 ]
  %287 = phi ptr [ %15, %277 ], [ %682, %681 ]
  %288 = load i32, ptr %280, align 4, !tbaa !452
  %289 = and i32 %288, 8388608
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %294, label %291, !prof !811

291:                                              ; preds = %283
  %292 = call i32 @Perl_mg_size(ptr noundef nonnull %278) #21
  %293 = sext i32 %292 to i64
  br label %298

294:                                              ; preds = %283
  %295 = load ptr, ptr %278, align 8, !tbaa !607
  %296 = getelementptr inbounds %struct.xpvav, ptr %295, i64 0, i32 2
  %297 = load i64, ptr %296, align 8, !tbaa !608
  br label %298

298:                                              ; preds = %294, %291
  %299 = phi i64 [ %293, %291 ], [ %297, %294 ]
  %300 = icmp sgt i64 %284, %299
  br i1 %300, label %686, label %301, !prof !812

301:                                              ; preds = %298
  %302 = call ptr @Perl_av_fetch(ptr noundef nonnull %278, i64 noundef %284, i32 noundef 1) #21
  %303 = load ptr, ptr %302, align 8, !tbaa !385
  %304 = getelementptr inbounds %struct.sv, ptr %303, i64 0, i32 2
  %305 = load i32, ptr %304, align 4, !tbaa !452
  %306 = and i32 %305, 2097152
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %311, label %308, !prof !813

308:                                              ; preds = %301
  %309 = call i32 @Perl_mg_get(ptr noundef nonnull %303) #21
  %310 = load i32, ptr %304, align 4, !tbaa !452
  br label %311

311:                                              ; preds = %301, %308
  %312 = phi i32 [ %305, %301 ], [ %310, %308 ]
  %313 = and i32 %312, 2048
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %583, label %315, !prof !813

315:                                              ; preds = %311
  %316 = getelementptr inbounds %struct.sv, ptr %303, i64 0, i32 3
  %317 = load ptr, ptr %316, align 8, !tbaa !398
  %318 = getelementptr inbounds %struct.sv, ptr %317, i64 0, i32 2
  %319 = load i32, ptr %318, align 4, !tbaa !452
  %320 = and i32 %319, 1048831
  %321 = icmp eq i32 %320, 11
  br i1 %321, label %322, label %331

322:                                              ; preds = %315
  %323 = call ptr @Perl_av_fetch(ptr noundef nonnull %317, i64 noundef 0, i32 noundef 1) #21
  %324 = load ptr, ptr %323, align 8, !tbaa !385
  %325 = getelementptr inbounds %struct.sv, ptr %324, i64 0, i32 2
  %326 = load i32, ptr %325, align 4, !tbaa !452
  %327 = and i32 %326, 2097152
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %331, label %329

329:                                              ; preds = %322
  %330 = call i32 @Perl_mg_get(ptr noundef nonnull %324) #21
  br label %331

331:                                              ; preds = %329, %322, %315
  %332 = phi ptr [ %303, %315 ], [ %324, %322 ], [ %324, %329 ]
  %333 = load ptr, ptr %316, align 8, !tbaa !398
  %334 = ptrtoint ptr %333 to i64
  call void (ptr, ptr, ...) @Perl_sv_setpvf(ptr noundef %279, ptr noundef nonnull @.str.62, i64 noundef %334, ptr noundef nonnull %188) #21
  %335 = load ptr, ptr %281, align 8, !tbaa !398
  %336 = getelementptr inbounds %struct.sv, ptr %285, i64 0, i32 2
  %337 = load i32, ptr %336, align 4, !tbaa !452
  %338 = and i32 %337, 131072
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %344, label %340

340:                                              ; preds = %331
  %341 = call ptr @Perl_sv_newmortal() #21
  %342 = icmp eq ptr %341, %16
  br i1 %342, label %344, label %343

343:                                              ; preds = %340
  call void @Perl_sv_setsv_flags(ptr noundef %341, ptr noundef %16, i32 noundef 1554) #21
  br label %344

344:                                              ; preds = %343, %340, %331
  %345 = phi ptr [ %341, %343 ], [ %16, %340 ], [ %285, %331 ]
  call void @Perl_push_scope() #21
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #21
  %346 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  store i64 %346, ptr @PL_tmps_floor, align 8, !tbaa !509
  %347 = load ptr, ptr @PL_stack_max, align 8, !tbaa !385
  %348 = ptrtoint ptr %347 to i64
  %349 = ptrtoint ptr %287 to i64
  %350 = sub i64 %348, %349
  %351 = icmp slt i64 %350, 16
  br i1 %351, label %352, label %354

352:                                              ; preds = %344
  %353 = call ptr @Perl_stack_grow(ptr noundef %287, ptr noundef %287, i64 noundef 2) #21
  br label %354

354:                                              ; preds = %352, %344
  %355 = phi ptr [ %353, %352 ], [ %287, %344 ]
  %356 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %357 = getelementptr inbounds i32, ptr %356, i64 1
  store ptr %357, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %358 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !385
  %359 = icmp eq ptr %357, %358
  br i1 %359, label %360, label %362

360:                                              ; preds = %354
  %361 = call ptr @Perl_markstack_grow() #21
  br label %362

362:                                              ; preds = %354, %360
  %363 = phi ptr [ %361, %360 ], [ %357, %354 ]
  %364 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %365 = ptrtoint ptr %355 to i64
  %366 = ptrtoint ptr %364 to i64
  %367 = sub i64 %365, %366
  %368 = lshr exact i64 %367, 3
  %369 = trunc i64 %368 to i32
  store i32 %369, ptr %363, align 4, !tbaa !430
  %370 = getelementptr inbounds ptr, ptr %355, i64 1
  store ptr %303, ptr %370, align 8, !tbaa !385
  %371 = getelementptr inbounds ptr, ptr %355, i64 2
  store ptr %345, ptr %371, align 8, !tbaa !385
  store ptr %371, ptr @PL_stack_sp, align 8, !tbaa !385
  %372 = getelementptr inbounds %struct.sv, ptr %332, i64 0, i32 2
  %373 = load i32, ptr %372, align 4, !tbaa !452
  %374 = and i32 %373, 2097152
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %378, label %376

376:                                              ; preds = %362
  %377 = call ptr @Perl_sv_newmortal() #21
  call void @Perl_sv_setsv_flags(ptr noundef %377, ptr noundef nonnull %332, i32 noundef 1536) #21
  br label %378

378:                                              ; preds = %376, %362
  %379 = phi ptr [ %377, %376 ], [ %332, %362 ]
  %380 = call i32 @Perl_sv_isobject(ptr noundef %379) #21
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %384, label %382

382:                                              ; preds = %378
  %383 = call i32 @Perl_call_method(ptr noundef nonnull @.str.63, i32 noundef 3) #21
  br label %386

384:                                              ; preds = %378
  %385 = call i32 @Perl_call_sv(ptr noundef %379, i32 noundef 3) #21
  br label %386

386:                                              ; preds = %384, %382
  %387 = phi i32 [ %383, %382 ], [ %385, %384 ]
  %388 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %389 = icmp sgt i32 %387, 0
  br i1 %389, label %390, label %532

390:                                              ; preds = %386
  %391 = add nsw i32 %387, -1
  %392 = zext nneg i32 %391 to i64
  %393 = sub nsw i64 0, %392
  %394 = getelementptr inbounds ptr, ptr %388, i64 %393
  %395 = load ptr, ptr %394, align 8, !tbaa !385
  %396 = getelementptr inbounds %struct.sv, ptr %395, i64 0, i32 2
  %397 = load i32, ptr %396, align 4, !tbaa !452
  %398 = and i32 %397, 2048
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %440, label %400

400:                                              ; preds = %390
  %401 = getelementptr inbounds %struct.sv, ptr %395, i64 0, i32 3
  %402 = load ptr, ptr %401, align 8, !tbaa !398
  %403 = getelementptr inbounds %struct.sv, ptr %402, i64 0, i32 2
  %404 = load i32, ptr %403, align 4, !tbaa !452
  %405 = and i32 %404, 255
  %406 = icmp ult i32 %405, 11
  br i1 %406, label %407, label %422

407:                                              ; preds = %400
  %408 = and i32 %404, 49152
  %409 = icmp eq i32 %408, 32768
  %410 = add nsw i32 %405, -9
  %411 = icmp ult i32 %410, 2
  %412 = and i1 %409, %411
  br i1 %412, label %422, label %413

413:                                              ; preds = %407
  %414 = icmp eq i32 %387, 1
  br i1 %414, label %422, label %415

415:                                              ; preds = %413
  %416 = getelementptr inbounds ptr, ptr %394, i64 1
  %417 = load ptr, ptr %416, align 8, !tbaa !385
  %418 = getelementptr inbounds %struct.sv, ptr %417, i64 0, i32 2
  %419 = load i32, ptr %418, align 4, !tbaa !452
  %420 = and i32 %419, 2048
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %440, label %422

422:                                              ; preds = %400, %413, %407, %415
  %423 = phi ptr [ %402, %415 ], [ null, %400 ], [ %402, %413 ], [ null, %407 ]
  %424 = phi ptr [ %417, %415 ], [ %395, %400 ], [ %395, %413 ], [ %395, %407 ]
  %425 = phi i32 [ 2, %415 ], [ 1, %400 ], [ 1, %413 ], [ 1, %407 ]
  %426 = phi i32 [ %419, %415 ], [ %397, %400 ], [ %397, %413 ], [ %397, %407 ]
  %427 = getelementptr inbounds %struct.sv, ptr %424, i64 0, i32 3
  %428 = load ptr, ptr %427, align 8, !tbaa !398
  %429 = getelementptr inbounds %struct.sv, ptr %428, i64 0, i32 2
  %430 = load i32, ptr %429, align 4, !tbaa !452
  %431 = and i32 %430, 49152
  %432 = icmp eq i32 %431, 32768
  br i1 %432, label %433, label %440

433:                                              ; preds = %422
  %434 = and i32 %430, 255
  %435 = add nsw i32 %434, -9
  %436 = icmp ult i32 %435, 2
  %437 = select i1 %436, ptr %428, ptr %424
  %438 = getelementptr inbounds %struct.sv, ptr %437, i64 0, i32 2
  %439 = load i32, ptr %438, align 4, !tbaa !452
  br label %440

440:                                              ; preds = %390, %433, %422, %415
  %441 = phi ptr [ %423, %422 ], [ %402, %415 ], [ %423, %433 ], [ null, %390 ]
  %442 = phi i32 [ %425, %422 ], [ 2, %415 ], [ %425, %433 ], [ 1, %390 ]
  %443 = phi i32 [ %426, %422 ], [ %419, %415 ], [ %439, %433 ], [ %397, %390 ]
  %444 = phi ptr [ %424, %422 ], [ %417, %415 ], [ %437, %433 ], [ %395, %390 ]
  %445 = and i32 %443, 49152
  %446 = icmp eq i32 %445, 32768
  br i1 %446, label %447, label %482

447:                                              ; preds = %440
  %448 = and i32 %443, 255
  %449 = add nsw i32 %448, -9
  %450 = icmp ult i32 %449, 2
  br i1 %450, label %451, label %482

451:                                              ; preds = %447
  %452 = getelementptr inbounds %struct.gv, ptr %444, i64 0, i32 3
  %453 = load ptr, ptr %452, align 8, !tbaa !398
  %454 = icmp eq ptr %453, null
  br i1 %454, label %474, label %455

455:                                              ; preds = %451
  %456 = getelementptr inbounds %struct.gp, ptr %453, i64 0, i32 1
  %457 = load ptr, ptr %456, align 8, !tbaa !586
  %458 = icmp eq ptr %457, null
  br i1 %458, label %474, label %459

459:                                              ; preds = %455
  %460 = getelementptr inbounds %struct.io, ptr %457, i64 0, i32 3
  %461 = load ptr, ptr %460, align 8, !tbaa !398
  %462 = load ptr, ptr %457, align 8, !tbaa !587
  %463 = getelementptr inbounds %struct.xpvio, ptr %462, i64 0, i32 5
  %464 = load ptr, ptr %463, align 8, !tbaa !629
  %465 = icmp eq ptr %464, null
  %466 = icmp eq ptr %464, %461
  %467 = select i1 %465, i1 true, i1 %466
  br i1 %467, label %471, label %468

468:                                              ; preds = %459
  %469 = call i32 @Perl_PerlIO_close(ptr noundef nonnull %464) #21
  %470 = load ptr, ptr %457, align 8, !tbaa !587
  br label %471

471:                                              ; preds = %468, %459
  %472 = phi ptr [ %470, %468 ], [ %462, %459 ]
  store ptr null, ptr %460, align 8, !tbaa !398
  %473 = getelementptr inbounds %struct.xpvio, ptr %472, i64 0, i32 5
  store ptr null, ptr %473, align 8, !tbaa !629
  br label %474

474:                                              ; preds = %451, %471, %455
  %475 = phi ptr [ %461, %471 ], [ null, %455 ], [ null, %451 ]
  %476 = icmp ult i32 %442, %387
  br i1 %476, label %477, label %482

477:                                              ; preds = %474
  %478 = add nuw nsw i32 %442, 1
  %479 = zext nneg i32 %442 to i64
  %480 = getelementptr inbounds ptr, ptr %394, i64 %479
  %481 = load ptr, ptr %480, align 8, !tbaa !385
  br label %482

482:                                              ; preds = %447, %474, %477, %440
  %483 = phi i32 [ %442, %440 ], [ %442, %447 ], [ %478, %477 ], [ %442, %474 ]
  %484 = phi ptr [ %444, %440 ], [ %444, %447 ], [ %481, %477 ], [ %444, %474 ]
  %485 = phi ptr [ null, %440 ], [ null, %447 ], [ %475, %477 ], [ %475, %474 ]
  %486 = phi i64 [ 0, %440 ], [ 0, %447 ], [ 1, %477 ], [ 1, %474 ]
  %487 = getelementptr inbounds %struct.sv, ptr %484, i64 0, i32 2
  %488 = load i32, ptr %487, align 4, !tbaa !452
  %489 = and i32 %488, 2048
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %512, label %491

491:                                              ; preds = %482
  %492 = getelementptr inbounds %struct.sv, ptr %484, i64 0, i32 3
  %493 = load ptr, ptr %492, align 8, !tbaa !398
  %494 = getelementptr inbounds %struct.sv, ptr %493, i64 0, i32 2
  %495 = load i32, ptr %494, align 4, !tbaa !452
  %496 = and i32 %495, 255
  %497 = icmp eq i32 %496, 13
  br i1 %497, label %498, label %512

498:                                              ; preds = %491
  %499 = getelementptr inbounds %struct.sv, ptr %484, i64 0, i32 1
  %500 = load i32, ptr %499, align 8, !tbaa !468
  %501 = add i32 %500, 1
  store i32 %501, ptr %499, align 8, !tbaa !468
  %502 = icmp ult i32 %483, %387
  br i1 %502, label %503, label %512

503:                                              ; preds = %498
  %504 = zext nneg i32 %483 to i64
  %505 = getelementptr inbounds ptr, ptr %394, i64 %504
  %506 = load ptr, ptr %505, align 8, !tbaa !385
  %507 = icmp eq ptr %506, null
  br i1 %507, label %512, label %508

508:                                              ; preds = %503
  %509 = getelementptr inbounds %struct.sv, ptr %506, i64 0, i32 1
  %510 = load i32, ptr %509, align 8, !tbaa !468
  %511 = add i32 %510, 1
  store i32 %511, ptr %509, align 8, !tbaa !468
  br label %512

512:                                              ; preds = %498, %508, %503, %491, %482
  %513 = phi ptr [ %484, %508 ], [ %484, %503 ], [ %484, %498 ], [ null, %491 ], [ null, %482 ]
  %514 = phi ptr [ %506, %508 ], [ null, %503 ], [ null, %498 ], [ null, %491 ], [ null, %482 ]
  %515 = icmp eq ptr %485, null
  br i1 %515, label %516, label %524

516:                                              ; preds = %512
  %517 = icmp ne ptr %441, null
  %518 = icmp ne ptr %513, null
  %519 = or i1 %517, %518
  br i1 %519, label %522, label %520

520:                                              ; preds = %516
  %521 = getelementptr inbounds ptr, ptr %394, i64 -1
  br label %532

522:                                              ; preds = %516
  %523 = call ptr @PerlIO_open(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65) #21
  br label %524

524:                                              ; preds = %512, %522
  %525 = phi ptr [ %485, %512 ], [ %523, %522 ]
  %526 = getelementptr inbounds ptr, ptr %394, i64 -1
  %527 = icmp eq ptr %441, null
  br i1 %527, label %532, label %528

528:                                              ; preds = %524
  %529 = getelementptr inbounds %struct.sv, ptr %441, i64 0, i32 1
  %530 = load i32, ptr %529, align 8, !tbaa !468
  %531 = add i32 %530, 1
  store i32 %531, ptr %529, align 8, !tbaa !468
  br label %532

532:                                              ; preds = %386, %520, %528, %524
  %533 = phi ptr [ %526, %528 ], [ %526, %524 ], [ %521, %520 ], [ %388, %386 ]
  %534 = phi i64 [ %486, %528 ], [ %486, %524 ], [ %486, %520 ], [ 0, %386 ]
  %535 = phi ptr [ %525, %528 ], [ %525, %524 ], [ null, %520 ], [ null, %386 ]
  %536 = phi ptr [ %441, %528 ], [ null, %524 ], [ null, %520 ], [ null, %386 ]
  %537 = phi ptr [ %514, %528 ], [ %514, %524 ], [ %514, %520 ], [ null, %386 ]
  %538 = phi ptr [ %513, %528 ], [ %513, %524 ], [ null, %520 ], [ null, %386 ]
  store ptr %533, ptr @PL_stack_sp, align 8, !tbaa !385
  %539 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  %540 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !509
  %541 = icmp sgt i64 %539, %540
  br i1 %541, label %542, label %543

542:                                              ; preds = %532
  call void @Perl_free_tmps() #21
  br label %543

543:                                              ; preds = %542, %532
  call void @Perl_pop_scope() #21
  %544 = call ptr @Perl_sv_2mortal(ptr noundef %536) #21
  %545 = load ptr, ptr @PL_incgv, align 8, !tbaa !385
  %546 = getelementptr inbounds %struct.gv, ptr %545, i64 0, i32 3
  %547 = load ptr, ptr %546, align 8, !tbaa !398
  %548 = getelementptr inbounds %struct.gp, ptr %547, i64 0, i32 5
  %549 = load ptr, ptr %548, align 8, !tbaa !631
  %550 = icmp eq ptr %549, null
  br i1 %550, label %551, label %557

551:                                              ; preds = %543
  %552 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %545, i32 noundef 12) #21
  %553 = getelementptr inbounds %struct.gv, ptr %552, i64 0, i32 3
  %554 = load ptr, ptr %553, align 8, !tbaa !398
  %555 = getelementptr inbounds %struct.gp, ptr %554, i64 0, i32 5
  %556 = load ptr, ptr %555, align 8, !tbaa !631
  br label %557

557:                                              ; preds = %543, %551
  %558 = phi ptr [ %556, %551 ], [ %549, %543 ]
  %559 = load i64, ptr %1, align 8, !tbaa !509
  %560 = trunc i64 %559 to i32
  %561 = call ptr @Perl_hv_common_key_len(ptr noundef %558, ptr noundef nonnull %188, i32 noundef %560, i32 noundef 32, ptr noundef null, i32 noundef 0) #21
  %562 = icmp eq ptr %561, null
  br i1 %562, label %574, label %563

563:                                              ; preds = %557
  %564 = load ptr, ptr %561, align 8, !tbaa !385
  %565 = getelementptr inbounds %struct.sv, ptr %564, i64 0, i32 2
  %566 = load i32, ptr %565, align 4, !tbaa !452
  %567 = and i32 %566, 2098176
  %568 = icmp eq i32 %567, 1024
  br i1 %568, label %569, label %572

569:                                              ; preds = %563
  %570 = getelementptr inbounds %struct.sv, ptr %564, i64 0, i32 3
  %571 = load ptr, ptr %570, align 8, !tbaa !398
  br label %574

572:                                              ; preds = %563
  %573 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %564, ptr noundef null, i32 noundef 34) #21
  br label %574

574:                                              ; preds = %569, %572, %557
  %575 = phi ptr [ %335, %557 ], [ %571, %569 ], [ %573, %572 ]
  %576 = icmp eq ptr %535, null
  br i1 %576, label %577, label %838

577:                                              ; preds = %574
  %578 = icmp eq ptr %537, null
  br i1 %578, label %580, label %579

579:                                              ; preds = %577
  call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %537) #22
  br label %580

580:                                              ; preds = %579, %577
  %581 = icmp eq ptr %538, null
  br i1 %581, label %681, label %582

582:                                              ; preds = %580
  call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %538) #22
  br label %681

583:                                              ; preds = %311
  br i1 %218, label %584, label %681, !prof !813

584:                                              ; preds = %583
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  %585 = and i32 %312, 63232
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %587, label %593, !prof !814

587:                                              ; preds = %584
  %588 = and i32 %312, 255
  %589 = icmp eq i32 %588, 8
  %590 = and i32 %312, 16777471
  %591 = icmp eq i32 %590, 16777226
  %592 = or i1 %589, %591
  br i1 %592, label %593, label %605

593:                                              ; preds = %587, %584
  %594 = and i32 %312, 2098176
  %595 = icmp eq i32 %594, 1024
  br i1 %595, label %596, label %602, !prof !813

596:                                              ; preds = %593
  %597 = load ptr, ptr %303, align 8, !tbaa !487
  %598 = getelementptr inbounds %struct.xpv, ptr %597, i64 0, i32 2
  %599 = load i64, ptr %598, align 8, !tbaa !458
  store i64 %599, ptr %2, align 8, !tbaa !509
  %600 = getelementptr inbounds %struct.sv, ptr %303, i64 0, i32 3
  %601 = load ptr, ptr %600, align 8, !tbaa !398
  br label %606

602:                                              ; preds = %593
  %603 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %303, ptr noundef nonnull %2, i32 noundef 32) #21
  %604 = load i64, ptr %2, align 8, !tbaa !509
  br label %606

605:                                              ; preds = %587
  store i64 0, ptr %2, align 8, !tbaa !509
  br label %606

606:                                              ; preds = %596, %602, %605
  %607 = phi i64 [ 0, %605 ], [ %599, %596 ], [ %604, %602 ]
  %608 = phi ptr [ @.str.8, %605 ], [ %601, %596 ], [ %603, %602 ]
  %609 = call fastcc zeroext i1 @S_is_safe_syscall(ptr noundef %608, i64 noundef %607, ptr noundef nonnull @.str.66) #22
  br i1 %609, label %610, label %680, !prof !813

610:                                              ; preds = %606
  %611 = load i32, ptr %282, align 4, !tbaa !452
  %612 = and i32 %611, 268435456
  %613 = icmp eq i32 %612, 0
  %614 = load i64, ptr %2, align 8, !tbaa !509
  %615 = load i64, ptr %1, align 8, !tbaa !509
  br i1 %613, label %619, label %616, !prof !813

616:                                              ; preds = %610
  %617 = add i64 %614, 2
  %618 = add i64 %617, %615
  br label %626

619:                                              ; preds = %610
  %620 = load ptr, ptr %279, align 8, !tbaa !487
  %621 = getelementptr inbounds %struct.xpv, ptr %620, i64 0, i32 3
  %622 = load i64, ptr %621, align 8, !tbaa !398
  %623 = add i64 %614, 2
  %624 = add i64 %623, %615
  %625 = icmp ult i64 %622, %624
  br i1 %625, label %626, label %630, !prof !815

626:                                              ; preds = %616, %619
  %627 = phi i64 [ %618, %616 ], [ %624, %619 ]
  %628 = call ptr @Perl_sv_grow(ptr noundef nonnull %279, i64 noundef %627) #21
  %629 = load i64, ptr %2, align 8, !tbaa !509
  br label %632

630:                                              ; preds = %619
  %631 = load ptr, ptr %281, align 8, !tbaa !398
  br label %632

632:                                              ; preds = %630, %626
  %633 = phi i64 [ %629, %626 ], [ %614, %630 ]
  %634 = phi ptr [ %628, %626 ], [ %631, %630 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %634, ptr align 1 %608, i64 %633, i1 false)
  %635 = load i64, ptr %2, align 8, !tbaa !509
  %636 = getelementptr inbounds i8, ptr %634, i64 %635
  %637 = icmp eq i64 %635, 0
  br i1 %637, label %642, label %638, !prof !814

638:                                              ; preds = %632
  %639 = getelementptr inbounds i8, ptr %636, i64 -1
  %640 = load i8, ptr %639, align 1, !tbaa !398
  %641 = icmp eq i8 %640, 47
  br i1 %641, label %644, label %642, !prof !814

642:                                              ; preds = %638, %632
  %643 = getelementptr inbounds i8, ptr %636, i64 1
  store i8 47, ptr %636, align 1, !tbaa !398
  br label %646

644:                                              ; preds = %638
  %645 = add i64 %635, -1
  store i64 %645, ptr %2, align 8, !tbaa !509
  br label %646

646:                                              ; preds = %644, %642
  %647 = phi ptr [ %643, %642 ], [ %636, %644 ]
  %648 = load i64, ptr %1, align 8, !tbaa !509
  %649 = add i64 %648, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %647, ptr nonnull align 1 %188, i64 %649, i1 false)
  %650 = load i64, ptr %2, align 8, !tbaa !509
  %651 = load i64, ptr %1, align 8, !tbaa !509
  %652 = add i64 %650, 1
  %653 = add i64 %652, %651
  %654 = load ptr, ptr %279, align 8, !tbaa !487
  %655 = getelementptr inbounds %struct.xpv, ptr %654, i64 0, i32 2
  store i64 %653, ptr %655, align 8, !tbaa !458
  %656 = load i32, ptr %282, align 4, !tbaa !452
  %657 = or i32 %656, 17408
  store i32 %657, ptr %282, align 4, !tbaa !452
  %658 = load i8, ptr @PL_tainting, align 1, !tbaa !423, !range !444, !noundef !445
  %659 = icmp eq i8 %658, 0
  br i1 %659, label %661, label %660, !prof !813

660:                                              ; preds = %646
  call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.59) #21
  br label %661

661:                                              ; preds = %646, %660
  %662 = load ptr, ptr %281, align 8, !tbaa !398
  %663 = call fastcc ptr @S_doopen_pm(ptr noundef nonnull %279) #22
  %664 = icmp eq ptr %663, null
  br i1 %664, label %677, label %665, !prof !816

665:                                              ; preds = %661
  %666 = load i8, ptr %662, align 1, !tbaa !398
  %667 = icmp eq i8 %666, 46
  br i1 %667, label %668, label %693, !prof !817

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %662, i64 1
  %670 = load i8, ptr %669, align 1, !tbaa !398
  %671 = icmp eq i8 %670, 47
  br i1 %671, label %672, label %693, !prof !817

672:                                              ; preds = %668, %672
  %673 = phi ptr [ %674, %672 ], [ %669, %668 ]
  %674 = getelementptr inbounds i8, ptr %673, i64 1
  %675 = load i8, ptr %674, align 1, !tbaa !398
  %676 = icmp eq i8 %675, 47
  br i1 %676, label %672, label %698, !prof !818, !llvm.loop !819

677:                                              ; preds = %661
  %678 = load i32, ptr %260, align 4, !tbaa !430
  switch i32 %678, label %679 [
    i32 24, label %695
    i32 13, label %695
  ], !prof !820

679:                                              ; preds = %677
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  br label %681

680:                                              ; preds = %606
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  br label %681

681:                                              ; preds = %582, %580, %583, %679, %680
  %682 = phi ptr [ %287, %680 ], [ %287, %583 ], [ %287, %679 ], [ %533, %580 ], [ %533, %582 ]
  %683 = phi ptr [ %286, %680 ], [ %286, %583 ], [ %662, %679 ], [ %575, %580 ], [ %575, %582 ]
  %684 = phi ptr [ %285, %680 ], [ %285, %583 ], [ %285, %679 ], [ %345, %580 ], [ %345, %582 ]
  %685 = add nuw nsw i64 %284, 1
  br label %283, !llvm.loop !821

686:                                              ; preds = %298, %258
  %687 = phi ptr [ null, %258 ], [ %279, %298 ]
  %688 = phi ptr [ %259, %258 ], [ %286, %298 ]
  %689 = phi ptr [ %15, %258 ], [ %287, %298 ]
  %690 = load i32, ptr %260, align 4, !tbaa !430
  %691 = call ptr @Perl_sv_2mortal(ptr noundef %687) #21
  %692 = icmp eq ptr %687, null
  br label %700

693:                                              ; preds = %668, %665
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  %694 = call ptr @Perl_sv_2mortal(ptr noundef nonnull %279) #21
  br label %816

695:                                              ; preds = %677, %677
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  %696 = load i32, ptr %260, align 4, !tbaa !430
  %697 = call ptr @Perl_sv_2mortal(ptr noundef nonnull %279) #21
  br label %700

698:                                              ; preds = %672
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  %699 = call ptr @Perl_sv_2mortal(ptr noundef nonnull %279) #21
  br label %816

700:                                              ; preds = %695, %686
  %701 = phi i32 [ %690, %686 ], [ %696, %695 ]
  %702 = phi ptr [ %689, %686 ], [ %287, %695 ]
  %703 = phi ptr [ %688, %686 ], [ %662, %695 ]
  %704 = phi i1 [ %692, %686 ], [ false, %695 ]
  %705 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %706 = getelementptr inbounds %struct.op, ptr %705, i64 0, i32 4
  %707 = load i16, ptr %706, align 8
  %708 = and i16 %707, 511
  %709 = icmp eq i16 %708, 339
  br i1 %709, label %710, label %790, !prof !822

710:                                              ; preds = %700
  switch i32 %701, label %714 [
    i32 24, label %711
    i32 13, label %711
  ]

711:                                              ; preds = %710, %710
  %712 = call ptr @strerror(i32 noundef %701) #21
  %713 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.67, ptr noundef nonnull %188, ptr noundef %703, ptr noundef %712) #21
  br label %985

714:                                              ; preds = %710
  br i1 %704, label %788, label %715, !prof !823

715:                                              ; preds = %714
  %716 = load ptr, ptr @PL_incgv, align 8, !tbaa !385
  %717 = getelementptr inbounds %struct.gv, ptr %716, i64 0, i32 3
  %718 = load ptr, ptr %717, align 8, !tbaa !398
  %719 = getelementptr inbounds %struct.gp, ptr %718, i64 0, i32 6
  %720 = load ptr, ptr %719, align 8, !tbaa !604
  %721 = icmp eq ptr %720, null
  br i1 %721, label %722, label %728, !prof !823

722:                                              ; preds = %715
  %723 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %716, i32 noundef 11) #21
  %724 = getelementptr inbounds %struct.gv, ptr %723, i64 0, i32 3
  %725 = load ptr, ptr %724, align 8, !tbaa !398
  %726 = getelementptr inbounds %struct.gp, ptr %725, i64 0, i32 6
  %727 = load ptr, ptr %726, align 8, !tbaa !604
  br label %728

728:                                              ; preds = %715, %722
  %729 = phi ptr [ %727, %722 ], [ %720, %715 ]
  %730 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.8, i64 noundef 0, i32 noundef 524288) #21
  %731 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.8, i64 noundef 0, i32 noundef 524288) #21
  %732 = getelementptr inbounds %struct.sv, ptr %729, i64 0, i32 2
  br label %733

733:                                              ; preds = %748, %728
  %734 = phi i64 [ 0, %728 ], [ %751, %748 ]
  %735 = load i32, ptr %732, align 4, !tbaa !452
  %736 = and i32 %735, 8388608
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %741, label %738, !prof !824

738:                                              ; preds = %733
  %739 = call i32 @Perl_mg_size(ptr noundef nonnull %729) #21
  %740 = sext i32 %739 to i64
  br label %745

741:                                              ; preds = %733
  %742 = load ptr, ptr %729, align 8, !tbaa !607
  %743 = getelementptr inbounds %struct.xpvav, ptr %742, i64 0, i32 2
  %744 = load i64, ptr %743, align 8, !tbaa !608
  br label %745

745:                                              ; preds = %741, %738
  %746 = phi i64 [ %740, %738 ], [ %744, %741 ]
  %747 = icmp sgt i64 %734, %746
  br i1 %747, label %752, label %748, !prof !825

748:                                              ; preds = %745
  call void @Perl_sv_catpvn_flags(ptr noundef %731, ptr noundef nonnull @.str.68, i64 noundef 1, i32 noundef 2) #21
  %749 = call ptr @Perl_av_fetch(ptr noundef nonnull %729, i64 noundef %734, i32 noundef 1) #21
  %750 = load ptr, ptr %749, align 8, !tbaa !385
  call void @Perl_sv_catsv_flags(ptr noundef %731, ptr noundef %750, i32 noundef 2) #21
  %751 = add nuw nsw i64 %734, 1
  br label %733, !llvm.loop !826

752:                                              ; preds = %745
  %753 = load i64, ptr %1, align 8, !tbaa !509
  %754 = icmp ugt i64 %753, 3
  br i1 %754, label %755, label %771, !prof !822

755:                                              ; preds = %752
  %756 = getelementptr inbounds i8, ptr %188, i64 %753
  %757 = getelementptr inbounds i8, ptr %756, i64 -3
  %758 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %757, ptr noundef nonnull dereferenceable(4) @.str.69, i64 4)
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %760, label %773, !prof !823

760:                                              ; preds = %755
  call void @Perl_sv_catpv(ptr noundef %730, ptr noundef nonnull @.str.70) #21
  %761 = icmp ult ptr %188, %757
  br i1 %761, label %762, label %784

762:                                              ; preds = %760, %768
  %763 = phi ptr [ %769, %768 ], [ %188, %760 ]
  %764 = load i8, ptr %763, align 1, !tbaa !398
  %765 = icmp eq i8 %764, 47
  br i1 %765, label %766, label %767

766:                                              ; preds = %762
  call void @Perl_sv_catpvn_flags(ptr noundef %730, ptr noundef nonnull @.str.71, i64 noundef 2, i32 noundef 2) #21
  br label %768

767:                                              ; preds = %762
  call void @Perl_sv_catpvn_flags(ptr noundef %730, ptr noundef nonnull %763, i64 noundef 1, i32 noundef 2) #21
  br label %768

768:                                              ; preds = %766, %767
  %769 = getelementptr inbounds i8, ptr %763, i64 1
  %770 = icmp eq ptr %769, %757
  br i1 %770, label %784, label %762, !llvm.loop !827

771:                                              ; preds = %752
  %772 = icmp ugt i64 %753, 1
  br i1 %772, label %773, label %786, !prof !828

773:                                              ; preds = %755, %771
  %774 = getelementptr inbounds i8, ptr %188, i64 %753
  %775 = getelementptr inbounds i8, ptr %774, i64 -2
  %776 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %775, ptr noundef nonnull dereferenceable(3) @.str.73, i64 3)
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %784, label %778, !prof !823

778:                                              ; preds = %773
  %779 = icmp ugt i64 %753, 2
  br i1 %779, label %780, label %786, !prof !719

780:                                              ; preds = %778
  %781 = getelementptr inbounds i8, ptr %774, i64 -3
  %782 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %781, ptr noundef nonnull dereferenceable(4) @.str.75, i64 4)
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %784, label %786, !prof !823

784:                                              ; preds = %768, %780, %773, %760
  %785 = phi ptr [ @.str.72, %760 ], [ @.str.74, %773 ], [ @.str.76, %780 ], [ @.str.72, %768 ]
  call void @Perl_sv_catpv(ptr noundef %730, ptr noundef nonnull %785) #21
  br label %786

786:                                              ; preds = %784, %771, %780, %778
  %787 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.77, ptr noundef nonnull %188, ptr noundef %730, ptr noundef %731) #21
  br label %985

788:                                              ; preds = %714
  %789 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.78, ptr noundef nonnull %188) #21
  br label %985

790:                                              ; preds = %700
  %791 = load ptr, ptr @PL_errgv, align 8, !tbaa !385
  %792 = getelementptr inbounds %struct.gv, ptr %791, i64 0, i32 3
  %793 = load ptr, ptr %792, align 8, !tbaa !398
  %794 = load ptr, ptr %793, align 8, !tbaa !385
  %795 = icmp eq ptr %794, null
  br i1 %795, label %802, label %796

796:                                              ; preds = %790
  %797 = getelementptr inbounds %struct.sv, ptr %794, i64 0, i32 2
  %798 = load i32, ptr %797, align 4, !tbaa !452
  %799 = and i32 %798, 134283264
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %804, label %801

801:                                              ; preds = %796
  call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %794) #22
  br label %802

802:                                              ; preds = %790, %801
  %803 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.8, i64 noundef 0) #21
  store ptr %803, ptr %793, align 8, !tbaa !385
  br label %812

804:                                              ; preds = %796
  call void @Perl_sv_setpvn(ptr noundef nonnull %794, ptr noundef nonnull @.str.8, i64 noundef 0) #21
  %805 = load i32, ptr %797, align 4, !tbaa !452
  %806 = and i32 %805, 1610547455
  %807 = or disjoint i32 %806, 17408
  store i32 %807, ptr %797, align 4, !tbaa !452
  %808 = and i32 %805, 14680064
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %812, label %810

810:                                              ; preds = %804
  %811 = call i32 @Perl_mg_free(ptr noundef nonnull %794) #21
  br label %812

812:                                              ; preds = %804, %810, %802
  %813 = getelementptr inbounds ptr, ptr %702, i64 1
  store ptr @PL_sv_undef, ptr %813, align 8, !tbaa !385
  store ptr %813, ptr @PL_stack_sp, align 8, !tbaa !385
  %814 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %815 = load ptr, ptr %814, align 8, !tbaa !400
  br label %985

816:                                              ; preds = %698, %693, %255
  %817 = phi ptr [ %256, %255 ], [ %260, %698 ], [ %260, %693 ]
  %818 = phi ptr [ %253, %255 ], [ %663, %698 ], [ %663, %693 ]
  %819 = phi ptr [ %188, %255 ], [ %674, %698 ], [ %662, %693 ]
  %820 = phi ptr [ %15, %255 ], [ %287, %698 ], [ %287, %693 ]
  store i32 0, ptr %817, align 4, !tbaa !430
  %821 = load ptr, ptr @PL_incgv, align 8, !tbaa !385
  %822 = getelementptr inbounds %struct.gv, ptr %821, i64 0, i32 3
  %823 = load ptr, ptr %822, align 8, !tbaa !398
  %824 = getelementptr inbounds %struct.gp, ptr %823, i64 0, i32 5
  %825 = load ptr, ptr %824, align 8, !tbaa !631
  %826 = icmp eq ptr %825, null
  br i1 %826, label %827, label %833, !prof !818

827:                                              ; preds = %816
  %828 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %821, i32 noundef 12) #21
  %829 = getelementptr inbounds %struct.gv, ptr %828, i64 0, i32 3
  %830 = load ptr, ptr %829, align 8, !tbaa !398
  %831 = getelementptr inbounds %struct.gp, ptr %830, i64 0, i32 5
  %832 = load ptr, ptr %831, align 8, !tbaa !631
  br label %833

833:                                              ; preds = %816, %827
  %834 = phi ptr [ %832, %827 ], [ %825, %816 ]
  %835 = trunc i64 %219 to i32
  %836 = call ptr @Perl_newSVpv(ptr noundef nonnull %819, i64 noundef 0) #21
  %837 = call ptr @Perl_hv_common_key_len(ptr noundef %834, ptr noundef nonnull %188, i32 noundef %835, i32 noundef 36, ptr noundef %836, i32 noundef 0) #21
  br label %874

838:                                              ; preds = %574
  %839 = call ptr @Perl_sv_2mortal(ptr noundef nonnull %279) #21
  store i32 0, ptr %260, align 4, !tbaa !430
  %840 = load ptr, ptr @PL_incgv, align 8, !tbaa !385
  %841 = getelementptr inbounds %struct.gv, ptr %840, i64 0, i32 3
  %842 = load ptr, ptr %841, align 8, !tbaa !398
  %843 = getelementptr inbounds %struct.gp, ptr %842, i64 0, i32 5
  %844 = load ptr, ptr %843, align 8, !tbaa !631
  %845 = icmp eq ptr %844, null
  br i1 %845, label %846, label %852

846:                                              ; preds = %838
  %847 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %840, i32 noundef 12) #21
  %848 = getelementptr inbounds %struct.gv, ptr %847, i64 0, i32 3
  %849 = load ptr, ptr %848, align 8, !tbaa !398
  %850 = getelementptr inbounds %struct.gp, ptr %849, i64 0, i32 5
  %851 = load ptr, ptr %850, align 8, !tbaa !631
  br label %852

852:                                              ; preds = %838, %846
  %853 = phi ptr [ %851, %846 ], [ %844, %838 ]
  %854 = trunc i64 %219 to i32
  %855 = call ptr @Perl_hv_common_key_len(ptr noundef %853, ptr noundef nonnull %188, i32 noundef %854, i32 noundef 32, ptr noundef null, i32 noundef 0) #21
  %856 = icmp eq ptr %855, null
  br i1 %856, label %857, label %874

857:                                              ; preds = %852
  %858 = load ptr, ptr @PL_incgv, align 8, !tbaa !385
  %859 = getelementptr inbounds %struct.gv, ptr %858, i64 0, i32 3
  %860 = load ptr, ptr %859, align 8, !tbaa !398
  %861 = getelementptr inbounds %struct.gp, ptr %860, i64 0, i32 5
  %862 = load ptr, ptr %861, align 8, !tbaa !631
  %863 = icmp eq ptr %862, null
  br i1 %863, label %864, label %870

864:                                              ; preds = %857
  %865 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %858, i32 noundef 12) #21
  %866 = getelementptr inbounds %struct.gv, ptr %865, i64 0, i32 3
  %867 = load ptr, ptr %866, align 8, !tbaa !398
  %868 = getelementptr inbounds %struct.gp, ptr %867, i64 0, i32 5
  %869 = load ptr, ptr %868, align 8, !tbaa !631
  br label %870

870:                                              ; preds = %857, %864
  %871 = phi ptr [ %869, %864 ], [ %862, %857 ]
  %872 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %303) #22
  %873 = call ptr @Perl_hv_common_key_len(ptr noundef %871, ptr noundef nonnull %188, i32 noundef %854, i32 noundef 36, ptr noundef nonnull %303, i32 noundef 0) #21
  br label %874

874:                                              ; preds = %852, %870, %833
  %875 = phi ptr [ %538, %852 ], [ %538, %870 ], [ null, %833 ]
  %876 = phi ptr [ %537, %852 ], [ %537, %870 ], [ null, %833 ]
  %877 = phi ptr [ %536, %852 ], [ %536, %870 ], [ null, %833 ]
  %878 = phi ptr [ %535, %852 ], [ %535, %870 ], [ %818, %833 ]
  %879 = phi i64 [ %534, %852 ], [ %534, %870 ], [ 0, %833 ]
  %880 = phi ptr [ %575, %852 ], [ %575, %870 ], [ %819, %833 ]
  %881 = phi ptr [ %533, %852 ], [ %533, %870 ], [ %820, %833 ]
  call void @Perl_push_scope() #21
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #21
  %882 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  store i64 %882, ptr @PL_tmps_floor, align 8, !tbaa !509
  call void @Perl_save_generic_svref(ptr noundef nonnull getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 9)) #21
  %883 = call ptr @Perl_gv_fetchfile(ptr noundef %880) #21
  %884 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %883) #22
  store ptr %883, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 9), align 8, !tbaa !653
  call void @Perl_lex_start(ptr noundef null, ptr noundef nonnull %878, i32 noundef 0) #21
  %885 = icmp ne ptr %875, null
  %886 = icmp ne ptr %877, null
  %887 = or i1 %885, %886
  br i1 %887, label %888, label %901, !prof !829

888:                                              ; preds = %874
  br i1 %886, label %889, label %893

889:                                              ; preds = %888
  %890 = call ptr @Perl_newSV(i64 noundef 0) #21
  %891 = icmp eq ptr %890, null
  br i1 %891, label %893, label %892

892:                                              ; preds = %889
  call void @Perl_sv_copypv_flags(ptr noundef nonnull %890, ptr noundef nonnull %877, i32 noundef 2) #21
  br label %893

893:                                              ; preds = %888, %892, %889
  %894 = phi ptr [ %890, %892 ], [ null, %889 ], [ null, %888 ]
  %895 = call ptr @Perl_filter_add(ptr noundef nonnull @S_run_user_filter, ptr noundef %894) #21
  %896 = load ptr, ptr %895, align 8, !tbaa !487
  %897 = getelementptr inbounds %struct.xpvio, ptr %896, i64 0, i32 4
  store i64 %879, ptr %897, align 8, !tbaa !398
  %898 = load ptr, ptr %895, align 8, !tbaa !487
  %899 = getelementptr inbounds %struct.xpvio, ptr %898, i64 0, i32 11
  store ptr %876, ptr %899, align 8, !tbaa !830
  %900 = getelementptr inbounds %struct.xpvio, ptr %898, i64 0, i32 15
  store ptr %875, ptr %900, align 8, !tbaa !831
  br label %901

901:                                              ; preds = %874, %893
  %902 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %903 = getelementptr inbounds %struct.stackinfo, ptr %902, i64 0, i32 4
  %904 = load i32, ptr %903, align 8, !tbaa !397
  %905 = getelementptr inbounds %struct.stackinfo, ptr %902, i64 0, i32 5
  %906 = load i32, ptr %905, align 4, !tbaa !663
  %907 = icmp slt i32 %904, %906
  br i1 %907, label %908, label %910, !prof !817

908:                                              ; preds = %901
  %909 = add nsw i32 %904, 1
  store i32 %909, ptr %903, align 8, !tbaa !397
  br label %914

910:                                              ; preds = %901
  %911 = call i32 @Perl_cxinc() #21
  %912 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %913 = getelementptr inbounds %struct.stackinfo, ptr %912, i64 0, i32 4
  store i32 %911, ptr %913, align 8, !tbaa !397
  br label %914

914:                                              ; preds = %910, %908
  %915 = phi i32 [ %911, %910 ], [ %909, %908 ]
  %916 = phi ptr [ %912, %910 ], [ %902, %908 ]
  %917 = getelementptr inbounds %struct.stackinfo, ptr %916, i64 0, i32 1
  %918 = load ptr, ptr %917, align 8, !tbaa !395
  %919 = sext i32 %915 to i64
  %920 = getelementptr inbounds %struct.context, ptr %918, i64 %919
  store i8 10, ptr %920, align 8, !tbaa !398
  %921 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %922 = ptrtoint ptr %881 to i64
  %923 = ptrtoint ptr %921 to i64
  %924 = sub i64 %922, %923
  %925 = lshr exact i64 %924, 3
  %926 = trunc i64 %925 to i32
  %927 = getelementptr inbounds %struct.block, ptr %920, i64 0, i32 3
  store i32 %926, ptr %927, align 4, !tbaa !398
  %928 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %929 = getelementptr inbounds %struct.block, ptr %920, i64 0, i32 4
  store ptr %928, ptr %929, align 8, !tbaa !398
  %930 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %931 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %932 = ptrtoint ptr %930 to i64
  %933 = ptrtoint ptr %931 to i64
  %934 = sub i64 %932, %933
  %935 = lshr exact i64 %934, 2
  %936 = trunc i64 %935 to i32
  %937 = getelementptr inbounds %struct.block, ptr %920, i64 0, i32 5
  store i32 %936, ptr %937, align 8, !tbaa !398
  %938 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %939 = getelementptr inbounds %struct.block, ptr %920, i64 0, i32 6
  store i32 %938, ptr %939, align 4, !tbaa !398
  %940 = load ptr, ptr @PL_curpm, align 8, !tbaa !385
  %941 = getelementptr inbounds %struct.block, ptr %920, i64 0, i32 7
  store ptr %940, ptr %941, align 8, !tbaa !398
  %942 = trunc i32 %14 to i8
  %943 = getelementptr inbounds %struct.block, ptr %920, i64 0, i32 1
  store i8 %942, ptr %943, align 1, !tbaa !398
  %944 = load i8, ptr @PL_in_eval, align 1, !tbaa !398
  %945 = and i8 %944, 127
  %946 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %947 = getelementptr inbounds %struct.op, ptr %946, i64 0, i32 4
  %948 = load i16, ptr %947, align 8
  %949 = shl i16 %948, 7
  %950 = zext nneg i8 %945 to i16
  %951 = or disjoint i16 %949, %950
  %952 = getelementptr inbounds %struct.block, ptr %920, i64 0, i32 2
  store i16 %951, ptr %952, align 2, !tbaa !398
  %953 = call ptr @Perl_newSVpv(ptr noundef nonnull %188, i64 noundef 0) #21
  %954 = getelementptr inbounds %struct.block, ptr %920, i64 0, i32 8
  %955 = getelementptr inbounds %struct.block, ptr %920, i64 0, i32 8, i32 0, i32 1
  store ptr %953, ptr %955, align 8, !tbaa !398
  %956 = load ptr, ptr @PL_eval_root, align 8, !tbaa !385
  %957 = getelementptr inbounds %struct.block, ptr %920, i64 0, i32 8, i32 0, i32 2
  store ptr %956, ptr %957, align 8, !tbaa !398
  %958 = load ptr, ptr @PL_parser, align 8, !tbaa !385
  %959 = icmp eq ptr %958, null
  br i1 %959, label %963, label %960, !prof !818

960:                                              ; preds = %914
  %961 = getelementptr inbounds %struct.yy_parser, ptr %958, i64 0, i32 33
  %962 = load ptr, ptr %961, align 8, !tbaa !832
  br label %963

963:                                              ; preds = %914, %960
  %964 = phi ptr [ %962, %960 ], [ null, %914 ]
  %965 = getelementptr inbounds %struct.block, ptr %920, i64 0, i32 8, i32 0, i32 3
  store ptr %964, ptr %965, align 8, !tbaa !398
  %966 = getelementptr inbounds %struct.block, ptr %920, i64 0, i32 8, i32 0, i32 4
  store ptr null, ptr %966, align 8, !tbaa !398
  store ptr null, ptr %954, align 8, !tbaa !398
  %967 = load ptr, ptr @PL_top_env, align 8, !tbaa !385
  %968 = getelementptr inbounds %struct.block, ptr %920, i64 0, i32 8, i32 0, i32 5
  store ptr %967, ptr %968, align 8, !tbaa !398
  %969 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %970 = load ptr, ptr %969, align 8, !tbaa !400
  store ptr %970, ptr %954, align 8, !tbaa !398
  call void @Perl_save_I32(ptr noundef nonnull getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 7)) #21
  store i32 0, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 7), align 4, !tbaa !655
  store ptr %881, ptr @PL_stack_sp, align 8, !tbaa !385
  %971 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %972 = getelementptr inbounds %struct.cop, ptr %971, i64 0, i32 11
  %973 = load i32, ptr %972, align 4, !tbaa !787
  %974 = call fastcc zeroext i1 @S_doeval(i32 noundef %14, ptr noundef null, i32 noundef %973, ptr noundef null) #22
  br i1 %974, label %975, label %982, !prof !817

975:                                              ; preds = %963
  %976 = load ptr, ptr @PL_top_env, align 8, !tbaa !385
  %977 = getelementptr inbounds %struct.jmpenv, ptr %976, i64 0, i32 3
  %978 = load i8, ptr %977, align 4, !tbaa !833, !range !444, !noundef !445
  %979 = icmp eq i8 %978, 0
  %980 = load ptr, ptr @PL_eval_start, align 8, !tbaa !385
  br i1 %979, label %985, label %981, !prof !817

981:                                              ; preds = %975
  call fastcc void @S_docatch(ptr noundef %980) #22
  br label %985

982:                                              ; preds = %963
  %983 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %984 = load ptr, ptr %983, align 8, !tbaa !400
  br label %985

985:                                              ; preds = %975, %246, %249, %982, %981, %114, %146, %812, %788, %786, %711, %199, %195, %172, %159, %65
  %986 = phi ptr [ %71, %65 ], [ %161, %159 ], [ %713, %711 ], [ %787, %786 ], [ %789, %788 ], [ %815, %812 ], [ %212, %199 ], [ %196, %195 ], [ %173, %172 ], [ %120, %114 ], [ %158, %146 ], [ %984, %982 ], [ null, %981 ], [ %250, %249 ], [ %248, %246 ], [ %980, %975 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #23
  ret ptr %986
}

; Function Attrs: optsize
declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_new_version(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_upg_version(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_vcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_vnormal(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @S_av_top_index(ptr noundef %0) unnamed_addr #0 !prof !422 !PGOFuncName !834 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !452
  %4 = and i32 %3, 8388608
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @Perl_mg_size(ptr noundef nonnull %0) #21
  %8 = sext i32 %7 to i64
  br label %13

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8, !tbaa !607
  %11 = getelementptr inbounds %struct.xpvav, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !608
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i64 [ %8, %6 ], [ %12, %9 ]
  ret i64 %14
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @S_is_safe_syscall(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !835 !PGOFuncName !836 {
  %4 = icmp ugt i64 %1, 1
  br i1 %4, label %5, label %12, !prof !837

5:                                                ; preds = %3
  %6 = add i64 %1, -1
  %7 = tail call ptr @memchr(ptr noundef %0, i32 noundef 0, i64 noundef %6) #24
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9, !prof !838

9:                                                ; preds = %5
  %10 = tail call ptr @__errno_location() #26
  store i32 2, ptr %10, align 4, !tbaa !430
  %11 = getelementptr inbounds i8, ptr %7, i64 1
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 59, ptr noundef nonnull @.str.103, ptr noundef %2, ptr noundef nonnull @.str.59, ptr noundef %0, ptr noundef nonnull %11) #21
  br label %12

12:                                               ; preds = %5, %3, %9
  %13 = phi i1 [ false, %9 ], [ true, %3 ], [ true, %5 ]
  ret i1 %13
}

; Function Attrs: optsize
declare ptr @Perl_pv_escape(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare void @Perl_taint_proper(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @S_path_is_searchable(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !839 !PGOFuncName !840 {
  %2 = load i8, ptr %0, align 1, !tbaa !398
  switch i8 %2, label %10 [
    i8 47, label %11
    i8 46, label %3
  ], !prof !841

3:                                                ; preds = %1
  %4 = getelementptr inbounds i8, ptr %0, i64 1
  %5 = load i8, ptr %4, align 1, !tbaa !398
  switch i8 %5, label %10 [
    i8 47, label %11
    i8 46, label %6
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, ptr %0, i64 2
  %8 = load i8, ptr %7, align 1, !tbaa !398
  %9 = icmp eq i8 %8, 47
  br i1 %9, label %11, label %10

10:                                               ; preds = %3, %1, %6
  br label %11

11:                                               ; preds = %6, %1, %3, %10
  %12 = phi i1 [ true, %10 ], [ false, %3 ], [ false, %1 ], [ false, %6 ]
  ret i1 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_doopen_pm(ptr noundef %0) unnamed_addr #0 !prof !842 !PGOFuncName !843 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !452
  %6 = and i32 %5, 2098176
  %7 = icmp eq i32 %6, 1024
  br i1 %7, label %8, label %14, !prof !813

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 8, !tbaa !487
  %10 = getelementptr inbounds %struct.xpv, ptr %9, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !458
  store i64 %11, ptr %2, align 8, !tbaa !509
  %12 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !398
  br label %17

14:                                               ; preds = %1
  %15 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 34) #21
  %16 = load i64, ptr %2, align 8, !tbaa !509
  br label %17

17:                                               ; preds = %14, %8
  %18 = phi i64 [ %11, %8 ], [ %16, %14 ]
  %19 = phi ptr [ %13, %8 ], [ %15, %14 ]
  %20 = call fastcc zeroext i1 @S_is_safe_syscall(ptr noundef %19, i64 noundef %18, ptr noundef nonnull @.str.58) #22
  br i1 %20, label %21, label %52, !prof !813

21:                                               ; preds = %17
  %22 = load i64, ptr %2, align 8, !tbaa !509
  %23 = icmp ugt i64 %22, 3
  br i1 %23, label %24, label %50, !prof !813

24:                                               ; preds = %21
  %25 = getelementptr inbounds i8, ptr %19, i64 %22
  %26 = getelementptr inbounds i8, ptr %25, i64 -3
  %27 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %26, ptr noundef nonnull dereferenceable(3) @.str.69, i64 3)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %50, !prof !844

29:                                               ; preds = %24
  %30 = call ptr @Perl_sv_newmortal() #21
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #23
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %33, label %32, !prof !845

32:                                               ; preds = %29
  call void @Perl_sv_setsv_flags(ptr noundef %30, ptr noundef nonnull %0, i32 noundef 1554) #21
  br label %33

33:                                               ; preds = %29, %32
  call void @Perl_sv_catpvn_flags(ptr noundef %30, ptr noundef nonnull @.str.104, i64 noundef 1, i32 noundef 2) #21
  %34 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !452
  %36 = and i32 %35, 2098176
  %37 = icmp eq i32 %36, 1024
  br i1 %37, label %38, label %41, !prof !845

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !398
  br label %43

41:                                               ; preds = %33
  %42 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %30, ptr noundef null, i32 noundef 34) #21
  br label %43

43:                                               ; preds = %41, %38
  %44 = phi ptr [ %40, %38 ], [ %42, %41 ]
  %45 = call i32 @stat64(ptr noundef %44, ptr noundef nonnull %3) #21
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48, !prof !845

47:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #23
  br label %50

48:                                               ; preds = %43
  %49 = call fastcc ptr @S_check_type_and_open(ptr noundef nonnull %30) #22
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #23
  br label %52

50:                                               ; preds = %47, %24, %21
  %51 = call fastcc ptr @S_check_type_and_open(ptr noundef nonnull %0) #22
  br label %52

52:                                               ; preds = %48, %17, %50
  %53 = phi ptr [ %51, %50 ], [ %49, %48 ], [ null, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret ptr %53
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #14

; Function Attrs: optsize
declare void @Perl_sv_setpvf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_sv_isobject(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_call_method(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_PerlIO_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @PerlIO_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_catpv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_fetchfile(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_lex_start(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_copypv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_filter_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @S_run_user_filter(i32 noundef %0, ptr noundef %1, i32 noundef %2) #0 !prof !422 !PGOFuncName !846 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load ptr, ptr @PL_parser, align 8, !tbaa !385
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.yy_parser, ptr %6, i64 0, i32 47
  %10 = load ptr, ptr %9, align 8, !tbaa !847
  %11 = getelementptr inbounds %struct.av, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !398
  %13 = sext i32 %0 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !385
  br label %16

16:                                               ; preds = %3, %8
  %17 = phi ptr [ %15, %8 ], [ null, %3 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !487
  %19 = getelementptr inbounds %struct.xpvio, ptr %18, i64 0, i32 4
  %20 = load i64, ptr %19, align 8, !tbaa !398
  %21 = getelementptr inbounds %struct.xpvio, ptr %18, i64 0, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !830
  %23 = getelementptr inbounds %struct.xpvio, ptr %18, i64 0, i32 15
  %24 = load ptr, ptr %23, align 8, !tbaa !831
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %25 = sext i32 %2 to i64
  %26 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !452
  %28 = and i32 %27, 65280
  %29 = icmp ne i32 %28, 0
  %30 = and i32 %27, 255
  %31 = icmp eq i32 %30, 8
  %32 = or i1 %29, %31
  %33 = and i32 %27, 16777471
  %34 = icmp eq i32 %33, 16777226
  %35 = or i1 %34, %32
  br i1 %35, label %36, label %75

36:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  %37 = and i32 %27, 2098176
  %38 = icmp eq i32 %37, 1024
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.xpv, ptr %18, i64 0, i32 2
  %41 = load i64, ptr %40, align 8, !tbaa !458
  store i64 %41, ptr %5, align 8, !tbaa !509
  %42 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !398
  br label %46

44:                                               ; preds = %36
  %45 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %17, ptr noundef nonnull %5, i32 noundef 2) #21
  br label %46

46:                                               ; preds = %44, %39
  %47 = phi ptr [ %43, %39 ], [ %45, %44 ]
  %48 = icmp eq i32 %2, 0
  %49 = load i64, ptr %5, align 8, !tbaa !509
  br i1 %48, label %52, label %50

50:                                               ; preds = %46
  %51 = icmp ult i64 %49, %25
  br i1 %51, label %62, label %59

52:                                               ; preds = %46
  %53 = call ptr @memchr(ptr noundef %47, i32 noundef 10, i64 noundef %49) #24
  %54 = icmp eq ptr %53, null
  %55 = getelementptr inbounds i8, ptr %53, i64 1
  %56 = ptrtoint ptr %55 to i64
  %57 = ptrtoint ptr %47 to i64
  %58 = sub i64 %56, %57
  br i1 %54, label %62, label %59

59:                                               ; preds = %50, %52
  %60 = phi i64 [ %58, %52 ], [ %25, %50 ]
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %50, %52, %59
  call void @Perl_sv_catsv_flags(ptr noundef %1, ptr noundef nonnull %17, i32 noundef 2) #21
  %63 = load i64, ptr %5, align 8
  %64 = sub i64 %25, %63
  %65 = select i1 %48, i64 0, i64 %64
  %66 = load i32, ptr %26, align 4, !tbaa !452
  %67 = and i32 %66, 1610547455
  store i32 %67, ptr %26, align 4, !tbaa !452
  %68 = and i32 %66, 33554432
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %62
  %71 = call i32 @Perl_sv_backoff(ptr noundef nonnull %17) #21
  br label %72

72:                                               ; preds = %70, %62
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  br label %75

73:                                               ; preds = %59
  call void @Perl_sv_catpvn_flags(ptr noundef %1, ptr noundef %47, i64 noundef %60, i32 noundef 2) #21
  %74 = getelementptr inbounds i8, ptr %47, i64 %60
  call void @Perl_sv_chop(ptr noundef nonnull %17, ptr noundef nonnull %74) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  br label %417

75:                                               ; preds = %16, %72
  %76 = phi i64 [ %65, %72 ], [ %25, %16 ]
  %77 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %78 = load i32, ptr %77, align 4, !tbaa !452
  %79 = and i32 %78, 65280
  %80 = icmp ne i32 %79, 0
  %81 = and i32 %78, 255
  %82 = icmp eq i32 %81, 8
  %83 = or i1 %80, %82
  %84 = and i32 %78, 16777471
  %85 = icmp eq i32 %84, 16777226
  %86 = or i1 %85, %83
  br i1 %86, label %87, label %92

87:                                               ; preds = %75
  %88 = call i64 @Perl_sv_len(ptr noundef nonnull %1) #21
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i32, ptr %77, align 4, !tbaa !452
  br label %92

92:                                               ; preds = %90, %75
  %93 = phi i32 [ %91, %90 ], [ %78, %75 ]
  %94 = and i32 %93, 2097152
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %92, %87
  %97 = call ptr @Perl_sv_newmortal() #21
  %98 = getelementptr inbounds %struct.sv, ptr %97, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !452
  br label %100

100:                                              ; preds = %92, %96
  %101 = phi i32 [ %99, %96 ], [ %93, %92 ]
  %102 = phi ptr [ %97, %96 ], [ %1, %92 ]
  %103 = getelementptr inbounds %struct.sv, ptr %102, i64 0, i32 2
  %104 = and i32 %101, 255
  %105 = icmp ugt i32 %104, 2
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  call void @Perl_sv_upgrade(ptr noundef nonnull %102, i32 noundef 3) #21
  br label %107

107:                                              ; preds = %106, %100
  %108 = and i64 %20, 4294967295
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = add nsw i32 %0, 1
  %112 = call i32 @Perl_filter_read(i32 noundef %111, ptr noundef nonnull %102, i32 noundef 0) #21
  br label %113

113:                                              ; preds = %110, %107
  %114 = phi i32 [ %112, %110 ], [ 0, %107 ]
  %115 = icmp ne ptr %24, null
  %116 = icmp sgt i32 %114, -1
  %117 = select i1 %115, i1 %116, i1 false
  br i1 %117, label %118, label %282

118:                                              ; preds = %113
  %119 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  call void @Perl_push_scope() #21
  %120 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  call void @Perl_save_gp(ptr noundef %120, i32 noundef 0) #21
  %121 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %122 = load ptr, ptr %121, align 8, !tbaa !555
  %123 = getelementptr inbounds %struct.xpvgv, ptr %122, i64 0, i32 2
  %124 = load i64, ptr %123, align 8, !tbaa !557
  %125 = and i64 %124, -2
  store i64 %125, ptr %123, align 8, !tbaa !557
  %126 = getelementptr inbounds %struct.gv, ptr %121, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !398
  call void @Perl_save_generic_svref(ptr noundef %127) #21
  %128 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %129 = getelementptr inbounds %struct.gv, ptr %128, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !398
  store ptr null, ptr %130, align 8, !tbaa !451
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #21
  %131 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  store i64 %131, ptr @PL_tmps_floor, align 8, !tbaa !509
  %132 = load ptr, ptr @PL_stack_max, align 8, !tbaa !385
  %133 = ptrtoint ptr %132 to i64
  %134 = ptrtoint ptr %119 to i64
  %135 = sub i64 %133, %134
  %136 = icmp slt i64 %135, 16
  br i1 %136, label %137, label %139

137:                                              ; preds = %118
  %138 = call ptr @Perl_stack_grow(ptr noundef %119, ptr noundef %119, i64 noundef 2) #21
  br label %139

139:                                              ; preds = %118, %137
  %140 = phi ptr [ %138, %137 ], [ %119, %118 ]
  %141 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %142 = getelementptr inbounds %struct.gv, ptr %141, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !398
  %144 = load ptr, ptr %143, align 8, !tbaa !451
  call fastcc void @S_SvREFCNT_dec(ptr noundef %144) #22
  %145 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef nonnull %102) #22
  %146 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %147 = getelementptr inbounds %struct.gv, ptr %146, i64 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !398
  store ptr %102, ptr %148, align 8, !tbaa !451
  %149 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %150 = getelementptr inbounds i32, ptr %149, i64 1
  store ptr %150, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %151 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !385
  %152 = icmp eq ptr %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %139
  %154 = call ptr @Perl_markstack_grow() #21
  br label %155

155:                                              ; preds = %139, %153
  %156 = phi ptr [ %154, %153 ], [ %150, %139 ]
  %157 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %158 = ptrtoint ptr %140 to i64
  %159 = ptrtoint ptr %157 to i64
  %160 = sub i64 %158, %159
  %161 = lshr exact i64 %160, 3
  %162 = trunc i64 %161 to i32
  store i32 %162, ptr %156, align 4, !tbaa !430
  %163 = call ptr @Perl_sv_newmortal() #21
  %164 = getelementptr inbounds ptr, ptr %140, i64 1
  store ptr %163, ptr %164, align 8, !tbaa !385
  call void @Perl_sv_setiv(ptr noundef %163, i64 noundef 0) #21
  %165 = icmp eq ptr %22, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %155
  %167 = getelementptr inbounds ptr, ptr %140, i64 2
  store ptr %22, ptr %167, align 8, !tbaa !385
  br label %168

168:                                              ; preds = %166, %155
  %169 = phi ptr [ %167, %166 ], [ %164, %155 ]
  store ptr %169, ptr @PL_stack_sp, align 8, !tbaa !385
  %170 = call i32 @Perl_call_sv(ptr noundef nonnull %24, i32 noundef 10) #21
  %171 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %172 = icmp sgt i32 %170, 0
  br i1 %172, label %173, label %273

173:                                              ; preds = %168
  %174 = getelementptr inbounds ptr, ptr %171, i64 -1
  %175 = load ptr, ptr %171, align 8, !tbaa !385
  %176 = getelementptr inbounds %struct.sv, ptr %175, i64 0, i32 2
  %177 = load i32, ptr %176, align 4, !tbaa !452
  %178 = and i32 %177, 2097152
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %173
  %181 = call i32 @Perl_mg_get(ptr noundef nonnull %175) #21
  %182 = load i32, ptr %176, align 4, !tbaa !452
  br label %183

183:                                              ; preds = %173, %180
  %184 = phi i32 [ %177, %173 ], [ %182, %180 ]
  %185 = and i32 %184, 65280
  %186 = icmp ne i32 %185, 0
  %187 = and i32 %184, 255
  %188 = icmp eq i32 %187, 8
  %189 = or i1 %186, %188
  %190 = and i32 %184, 16777471
  %191 = icmp eq i32 %190, 16777226
  %192 = or i1 %191, %189
  br i1 %192, label %193, label %205

193:                                              ; preds = %183
  %194 = and i32 %184, 2097408
  %195 = icmp eq i32 %194, 256
  br i1 %195, label %196, label %200

196:                                              ; preds = %193
  %197 = load ptr, ptr %175, align 8, !tbaa !487
  %198 = getelementptr inbounds %struct.xpviv, ptr %197, i64 0, i32 4
  %199 = load i64, ptr %198, align 8, !tbaa !398
  br label %202

200:                                              ; preds = %193
  %201 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %175, i32 noundef 2) #21
  br label %202

202:                                              ; preds = %200, %196
  %203 = phi i64 [ %199, %196 ], [ %201, %200 ]
  %204 = trunc i64 %203 to i32
  br label %273

205:                                              ; preds = %183
  %206 = load ptr, ptr @PL_errgv, align 8, !tbaa !385
  %207 = getelementptr inbounds %struct.gv, ptr %206, i64 0, i32 3
  %208 = load ptr, ptr %207, align 8, !tbaa !398
  %209 = load ptr, ptr %208, align 8, !tbaa !385
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %216

211:                                              ; preds = %205
  %212 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %206, i32 noundef 0) #21
  %213 = getelementptr inbounds %struct.gv, ptr %212, i64 0, i32 3
  %214 = load ptr, ptr %213, align 8, !tbaa !398
  %215 = load ptr, ptr %214, align 8, !tbaa !385
  br label %216

216:                                              ; preds = %205, %211
  %217 = phi ptr [ %215, %211 ], [ %209, %205 ]
  %218 = getelementptr inbounds %struct.sv, ptr %217, i64 0, i32 2
  %219 = load i32, ptr %218, align 4, !tbaa !452
  %220 = and i32 %219, 2097152
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %216
  %223 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %217, i32 noundef 2) #21
  br i1 %223, label %271, label %273

224:                                              ; preds = %216
  %225 = and i32 %219, 65280
  %226 = icmp ne i32 %225, 0
  %227 = and i32 %219, 255
  %228 = icmp eq i32 %227, 8
  %229 = or i1 %226, %228
  %230 = and i32 %219, 16777471
  %231 = icmp eq i32 %230, 16777226
  %232 = or i1 %231, %229
  br i1 %232, label %233, label %273

233:                                              ; preds = %224
  %234 = and i32 %219, 1024
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %250, label %236

236:                                              ; preds = %233
  %237 = load ptr, ptr %217, align 8, !tbaa !487
  %238 = icmp eq ptr %237, null
  br i1 %238, label %273, label %239

239:                                              ; preds = %236
  %240 = getelementptr inbounds %struct.xpv, ptr %237, i64 0, i32 2
  %241 = load i64, ptr %240, align 8, !tbaa !458
  %242 = icmp ugt i64 %241, 1
  br i1 %242, label %271, label %243

243:                                              ; preds = %239
  %244 = icmp eq i64 %241, 0
  br i1 %244, label %273, label %245

245:                                              ; preds = %243
  %246 = getelementptr inbounds %struct.sv, ptr %217, i64 0, i32 3
  %247 = load ptr, ptr %246, align 8, !tbaa !398
  %248 = load i8, ptr %247, align 1, !tbaa !398
  %249 = icmp eq i8 %248, 48
  br i1 %249, label %273, label %271

250:                                              ; preds = %233
  %251 = and i32 %219, 768
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %269, label %253

253:                                              ; preds = %250
  %254 = and i32 %219, 256
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %261, label %256

256:                                              ; preds = %253
  %257 = load ptr, ptr %217, align 8, !tbaa !487
  %258 = getelementptr inbounds %struct.xpviv, ptr %257, i64 0, i32 4
  %259 = load i64, ptr %258, align 8, !tbaa !398
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %261, label %271

261:                                              ; preds = %256, %253
  %262 = and i32 %219, 512
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %273, label %264

264:                                              ; preds = %261
  %265 = load ptr, ptr %217, align 8, !tbaa !487
  %266 = getelementptr inbounds %struct.xpvnv, ptr %265, i64 0, i32 5
  %267 = load double, ptr %266, align 8, !tbaa !398
  %268 = fcmp une double %267, 0.000000e+00
  br i1 %268, label %271, label %273

269:                                              ; preds = %250
  %270 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %217, i32 noundef 0) #21
  br i1 %270, label %271, label %273

271:                                              ; preds = %269, %264, %256, %245, %239, %222
  %272 = call ptr @Perl_newSVsv(ptr noundef nonnull %217) #21
  br label %273

273:                                              ; preds = %202, %264, %224, %271, %269, %261, %245, %243, %236, %222, %168
  %274 = phi ptr [ null, %168 ], [ null, %202 ], [ %272, %271 ], [ null, %222 ], [ null, %245 ], [ null, %243 ], [ null, %236 ], [ null, %261 ], [ null, %269 ], [ null, %224 ], [ null, %264 ]
  %275 = phi ptr [ %171, %168 ], [ %174, %202 ], [ %174, %271 ], [ %174, %222 ], [ %174, %245 ], [ %174, %243 ], [ %174, %236 ], [ %174, %261 ], [ %174, %269 ], [ %174, %224 ], [ %174, %264 ]
  %276 = phi i32 [ %114, %168 ], [ %204, %202 ], [ %114, %271 ], [ %114, %222 ], [ %114, %245 ], [ %114, %243 ], [ %114, %236 ], [ %114, %261 ], [ %114, %269 ], [ %114, %224 ], [ %114, %264 ]
  store ptr %275, ptr @PL_stack_sp, align 8, !tbaa !385
  %277 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  %278 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !509
  %279 = icmp sgt i64 %277, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %273
  call void @Perl_free_tmps() #21
  br label %281

281:                                              ; preds = %280, %273
  call void @Perl_pop_scope() #21
  br label %282

282:                                              ; preds = %281, %113
  %283 = phi ptr [ %274, %281 ], [ null, %113 ]
  %284 = phi i32 [ %276, %281 ], [ %114, %113 ]
  %285 = load i32, ptr %103, align 4, !tbaa !452
  %286 = and i32 %285, 2097152
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %293, label %288

288:                                              ; preds = %282
  %289 = call i32 @Perl_mg_get(ptr noundef nonnull %102) #21
  %290 = icmp eq ptr %102, %1
  br i1 %290, label %291, label %293

291:                                              ; preds = %288
  %292 = call i32 @Perl_mg_free(ptr noundef nonnull %1) #21
  br label %293

293:                                              ; preds = %288, %291, %282
  %294 = load i32, ptr %103, align 4, !tbaa !452
  %295 = and i32 %294, 268435456
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %299, label %297

297:                                              ; preds = %293
  call void @Perl_sv_force_normal_flags(ptr noundef nonnull %102, i32 noundef 0) #21
  %298 = load i32, ptr %103, align 4, !tbaa !452
  br label %299

299:                                              ; preds = %297, %293
  %300 = phi i32 [ %298, %297 ], [ %294, %293 ]
  %301 = icmp eq ptr %283, null
  br i1 %301, label %302, label %379

302:                                              ; preds = %299
  %303 = and i32 %300, 65280
  %304 = icmp ne i32 %303, 0
  %305 = and i32 %300, 255
  %306 = icmp eq i32 %305, 8
  %307 = or i1 %304, %306
  %308 = and i32 %300, 16777471
  %309 = icmp eq i32 %308, 16777226
  %310 = or i1 %309, %307
  br i1 %310, label %311, label %365

311:                                              ; preds = %302
  %312 = and i32 %300, 2098176
  %313 = icmp eq i32 %312, 1024
  br i1 %313, label %314, label %320

314:                                              ; preds = %311
  %315 = load ptr, ptr %102, align 8, !tbaa !487
  %316 = getelementptr inbounds %struct.xpv, ptr %315, i64 0, i32 2
  %317 = load i64, ptr %316, align 8, !tbaa !458
  store i64 %317, ptr %4, align 8, !tbaa !509
  %318 = getelementptr inbounds %struct.sv, ptr %102, i64 0, i32 3
  %319 = load ptr, ptr %318, align 8, !tbaa !398
  br label %322

320:                                              ; preds = %311
  %321 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %102, ptr noundef nonnull %4, i32 noundef 0) #21
  br label %322

322:                                              ; preds = %320, %314
  %323 = phi ptr [ %319, %314 ], [ %321, %320 ]
  %324 = icmp eq i64 %76, 0
  %325 = load i64, ptr %4, align 8, !tbaa !509
  br i1 %324, label %329, label %326

326:                                              ; preds = %322
  %327 = icmp ugt i64 %325, %76
  %328 = getelementptr inbounds i8, ptr %323, i64 %76
  br i1 %327, label %336, label %365

329:                                              ; preds = %322
  %330 = call ptr @memchr(ptr noundef %323, i32 noundef 10, i64 noundef %325) #24
  %331 = icmp ne ptr %330, null
  %332 = getelementptr inbounds i8, ptr %330, i64 1
  %333 = getelementptr inbounds i8, ptr %323, i64 %325
  %334 = icmp ult ptr %332, %333
  %335 = select i1 %331, i1 %334, i1 false
  br i1 %335, label %336, label %365

336:                                              ; preds = %326, %329
  %337 = phi ptr [ %332, %329 ], [ %328, %326 ]
  %338 = getelementptr inbounds i8, ptr %323, i64 %325
  %339 = ptrtoint ptr %338 to i64
  %340 = ptrtoint ptr %337 to i64
  %341 = sub i64 %339, %340
  call void @Perl_sv_setpvn(ptr noundef nonnull %17, ptr noundef nonnull %337, i64 noundef %341) #21
  %342 = load i32, ptr %103, align 4, !tbaa !452
  %343 = and i32 %342, 536870912
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %349, label %345

345:                                              ; preds = %336
  %346 = load i32, ptr %26, align 4, !tbaa !452
  %347 = or i32 %346, 536870912
  store i32 %347, ptr %26, align 4, !tbaa !452
  %348 = load i32, ptr %103, align 4, !tbaa !452
  br label %349

349:                                              ; preds = %345, %336
  %350 = phi i32 [ %348, %345 ], [ %342, %336 ]
  %351 = and i32 %350, 1024
  %352 = icmp eq i32 %351, 0
  %353 = load i64, ptr %4, align 8, !tbaa !509
  %354 = sub i64 %353, %341
  br i1 %352, label %358, label %355

355:                                              ; preds = %349
  %356 = load ptr, ptr %102, align 8, !tbaa !487
  %357 = getelementptr inbounds %struct.xpv, ptr %356, i64 0, i32 2
  store i64 %354, ptr %357, align 8, !tbaa !458
  br label %363

358:                                              ; preds = %349
  %359 = trunc i64 %354 to i32
  %360 = call ptr @Perl_savepvn(ptr noundef %323, i32 noundef %359) #21
  %361 = load i64, ptr %4, align 8, !tbaa !509
  %362 = sub i64 %361, %341
  call void @Perl_sv_usepvn_flags(ptr noundef nonnull %102, ptr noundef %360, i64 noundef %362, i32 noundef 0) #21
  br label %363

363:                                              ; preds = %358, %355
  store i8 0, ptr %337, align 1, !tbaa !398
  %364 = call i32 @llvm.umax.i32(i32 %284, i32 1)
  br label %365

365:                                              ; preds = %326, %329, %302, %363
  %366 = phi i32 [ %364, %363 ], [ %284, %302 ], [ %284, %329 ], [ %284, %326 ]
  %367 = icmp eq ptr %102, %1
  %368 = load i32, ptr %103, align 4, !tbaa !452
  br i1 %367, label %379, label %369

369:                                              ; preds = %365
  %370 = and i32 %368, 65280
  %371 = icmp ne i32 %370, 0
  %372 = and i32 %368, 255
  %373 = icmp eq i32 %372, 8
  %374 = or i1 %371, %373
  %375 = and i32 %368, 16777471
  %376 = icmp eq i32 %375, 16777226
  %377 = or i1 %376, %374
  br i1 %377, label %378, label %379

378:                                              ; preds = %369
  call void @Perl_sv_catsv_flags(ptr noundef nonnull %1, ptr noundef nonnull %102, i32 noundef 0) #21
  br label %396

379:                                              ; preds = %299, %369, %365
  %380 = phi i32 [ %368, %369 ], [ %368, %365 ], [ %300, %299 ]
  %381 = phi i32 [ %366, %369 ], [ %366, %365 ], [ %284, %299 ]
  %382 = and i32 %380, 65280
  %383 = icmp ne i32 %382, 0
  %384 = and i32 %380, 255
  %385 = icmp eq i32 %384, 8
  %386 = or i1 %383, %385
  %387 = and i32 %380, 16777471
  %388 = icmp eq i32 %387, 16777226
  %389 = or i1 %388, %386
  br i1 %389, label %390, label %396

390:                                              ; preds = %379
  %391 = load i32, ptr %77, align 4, !tbaa !452
  %392 = and i32 %391, 430018304
  %393 = icmp eq i32 %392, 1024
  br i1 %393, label %396, label %394

394:                                              ; preds = %390
  %395 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %1, ptr noundef null, i32 noundef 2) #21
  br label %396

396:                                              ; preds = %390, %379, %394, %378
  %397 = phi i32 [ %381, %390 ], [ %381, %379 ], [ %381, %394 ], [ %366, %378 ]
  %398 = icmp slt i32 %397, 1
  br i1 %398, label %399, label %411

399:                                              ; preds = %396
  %400 = load ptr, ptr %17, align 8, !tbaa !487
  %401 = getelementptr inbounds %struct.xpvio, ptr %400, i64 0, i32 4
  store i64 0, ptr %401, align 8, !tbaa !398
  %402 = icmp eq ptr %22, null
  br i1 %402, label %406, label %403

403:                                              ; preds = %399
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %22) #22
  %404 = load ptr, ptr %17, align 8, !tbaa !487
  %405 = getelementptr inbounds %struct.xpvio, ptr %404, i64 0, i32 11
  store ptr null, ptr %405, align 8, !tbaa !830
  br label %406

406:                                              ; preds = %403, %399
  br i1 %115, label %407, label %410

407:                                              ; preds = %406
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %24) #22
  %408 = load ptr, ptr %17, align 8, !tbaa !487
  %409 = getelementptr inbounds %struct.xpvio, ptr %408, i64 0, i32 15
  store ptr null, ptr %409, align 8, !tbaa !831
  br label %410

410:                                              ; preds = %407, %406
  call void @Perl_filter_del(ptr noundef nonnull @S_run_user_filter) #21
  br label %411

411:                                              ; preds = %410, %396
  br i1 %301, label %413, label %412

412:                                              ; preds = %411
  call void @Perl_croak_sv(ptr noundef nonnull %283) #21
  br label %413

413:                                              ; preds = %412, %411
  %414 = icmp eq i32 %397, 0
  %415 = and i1 %35, %414
  %416 = select i1 %415, i32 1, i32 %397
  br label %417

417:                                              ; preds = %73, %413
  %418 = phi i32 [ 1, %73 ], [ %416, %413 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  ret i32 %418
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @S_doeval(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !prof !848 !PGOFuncName !849 {
  %5 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %6 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %7 = getelementptr inbounds %struct.op, ptr %6, i64 0, i32 4
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 511
  %10 = icmp eq i16 %9, 342
  %11 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %12 = icmp eq i16 %9, 339
  br i1 %12, label %13, label %17, !prof !850

13:                                               ; preds = %4
  %14 = load i8, ptr @PL_in_eval, align 1, !tbaa !398
  %15 = and i8 %14, 1
  %16 = or disjoint i8 %15, 8
  br label %23

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.op, ptr %6, i64 0, i32 6
  %19 = load i8, ptr %18, align 1, !tbaa !390
  %20 = lshr i8 %19, 1
  %21 = and i8 %20, 16
  %22 = or disjoint i8 %21, 1
  br label %23

23:                                               ; preds = %17, %13
  %24 = phi i8 [ %16, %13 ], [ %22, %17 ]
  store i8 %24, ptr @PL_in_eval, align 1, !tbaa !398
  %25 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %26 = getelementptr inbounds i32, ptr %25, i64 1
  store ptr %26, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %27 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !385
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %31, !prof !851

29:                                               ; preds = %23
  %30 = tail call ptr @Perl_markstack_grow() #21
  br label %31

31:                                               ; preds = %23, %29
  %32 = phi ptr [ %30, %29 ], [ %26, %23 ]
  %33 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %34 = ptrtoint ptr %5 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = lshr exact i64 %36, 3
  %38 = trunc i64 %37 to i32
  store i32 %38, ptr %32, align 4, !tbaa !430
  %39 = tail call ptr @Perl_newSV_type(i32 noundef 13) #21
  %40 = load ptr, ptr %39, align 8, !tbaa !595
  %41 = getelementptr inbounds %struct.xpvcv, ptr %40, i64 0, i32 12
  %42 = load i32, ptr %41, align 4, !tbaa !597
  %43 = or i32 %42, 256
  store i32 %43, ptr %41, align 4, !tbaa !597
  %44 = getelementptr inbounds %struct.cv, ptr %39, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !852
  %46 = and i32 %45, -16777217
  store i32 %46, ptr %44, align 4, !tbaa !852
  %47 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %48 = getelementptr inbounds %struct.stackinfo, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !395
  %50 = getelementptr inbounds %struct.stackinfo, ptr %47, i64 0, i32 4
  %51 = load i32, ptr %50, align 8, !tbaa !397
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.context, ptr %49, i64 %52, i32 0, i32 0, i32 11
  store ptr %39, ptr %53, align 8, !tbaa !398
  %54 = trunc i32 %0 to i8
  %55 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %56 = getelementptr inbounds %struct.stackinfo, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !395
  %58 = getelementptr inbounds %struct.stackinfo, ptr %55, i64 0, i32 4
  %59 = load i32, ptr %58, align 8, !tbaa !397
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.context, ptr %57, i64 %60, i32 0, i32 0, i32 1
  store i8 %54, ptr %61, align 1, !tbaa !398
  %62 = load ptr, ptr %39, align 8, !tbaa !595
  %63 = getelementptr inbounds %struct.xpvcv, ptr %62, i64 0, i32 11
  store i32 %2, ptr %63, align 8, !tbaa !853
  %64 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %1) #22
  %65 = load ptr, ptr %39, align 8, !tbaa !595
  %66 = getelementptr inbounds %struct.xpvcv, ptr %65, i64 0, i32 10
  store ptr %1, ptr %66, align 8, !tbaa !854
  %67 = tail call ptr @Perl_pad_new(i32 noundef 2) #21
  %68 = load ptr, ptr %39, align 8, !tbaa !595
  %69 = getelementptr inbounds %struct.xpvcv, ptr %68, i64 0, i32 9
  store ptr %67, ptr %69, align 8, !tbaa !398
  store ptr null, ptr @PL_op, align 8, !tbaa !385
  tail call void @Perl_save_pushptr(ptr noundef nonnull %39, i32 noundef 16) #21
  %70 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %71 = getelementptr inbounds %struct.cop, ptr %70, i64 0, i32 8
  %72 = load ptr, ptr %71, align 8, !tbaa !640
  %73 = load ptr, ptr @PL_curstash, align 8, !tbaa !385
  %74 = icmp eq ptr %72, %73
  br i1 %74, label %88, label %75, !prof !855

75:                                               ; preds = %31
  tail call void @Perl_save_generic_svref(ptr noundef nonnull @PL_curstash) #21
  %76 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %77 = getelementptr inbounds %struct.cop, ptr %76, i64 0, i32 8
  %78 = load ptr, ptr %77, align 8, !tbaa !640
  store ptr %78, ptr @PL_curstash, align 8, !tbaa !385
  %79 = getelementptr inbounds %struct.hv, ptr %78, i64 0, i32 2
  %80 = load i32, ptr %79, align 4, !tbaa !641
  %81 = and i32 %80, 255
  %82 = icmp eq i32 %81, 12
  br i1 %82, label %84, label %83, !prof !856

83:                                               ; preds = %75
  store ptr null, ptr @PL_curstash, align 8, !tbaa !385
  br label %88

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.hv, ptr %78, i64 0, i32 1
  %86 = load i32, ptr %85, align 8, !tbaa !857
  %87 = add i32 %86, 1
  store i32 %87, ptr %85, align 8, !tbaa !857
  br label %88

88:                                               ; preds = %83, %84, %31
  tail call void @Perl_save_sptr(ptr noundef nonnull @PL_beginav) #21
  %89 = tail call ptr @Perl_newSV_type(i32 noundef 11) #21
  store ptr %89, ptr @PL_beginav, align 8, !tbaa !385
  tail call void @Perl_save_pushptr(ptr noundef %89, i32 noundef 11) #21
  tail call void @Perl_save_sptr(ptr noundef nonnull @PL_unitcheckav) #21
  %90 = tail call ptr @Perl_newSV_type(i32 noundef 11) #21
  store ptr %90, ptr @PL_unitcheckav, align 8, !tbaa !385
  tail call void @Perl_save_pushptr(ptr noundef %90, i32 noundef 11) #21
  tail call void @Perl_push_scope() #21
  tail call void @Perl_save_sptr(ptr noundef nonnull @PL_compcv) #21
  store ptr %39, ptr @PL_compcv, align 8, !tbaa !385
  store ptr null, ptr @PL_eval_root, align 8, !tbaa !385
  store ptr @PL_compiling, ptr @PL_curcop, align 8, !tbaa !385
  %91 = load i16, ptr %7, align 8
  %92 = and i16 %91, 511
  %93 = icmp eq i16 %92, 339
  br i1 %93, label %101, label %94, !prof !850

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.op, ptr %6, i64 0, i32 5
  %96 = load i8, ptr %95, align 2, !tbaa !428
  %97 = icmp sgt i8 %96, -1
  br i1 %97, label %101, label %98, !prof !858

98:                                               ; preds = %94
  %99 = load i8, ptr @PL_in_eval, align 1, !tbaa !398
  %100 = or i8 %99, 4
  store i8 %100, ptr @PL_in_eval, align 1, !tbaa !398
  br label %123

101:                                              ; preds = %88, %94
  %102 = load ptr, ptr @PL_errgv, align 8, !tbaa !385
  %103 = getelementptr inbounds %struct.gv, ptr %102, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !398
  %105 = load ptr, ptr %104, align 8, !tbaa !385
  %106 = icmp eq ptr %105, null
  br i1 %106, label %113, label %107, !prof !851

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.sv, ptr %105, i64 0, i32 2
  %109 = load i32, ptr %108, align 4, !tbaa !452
  %110 = and i32 %109, 134283264
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112, !prof !859

112:                                              ; preds = %107
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %105) #22
  br label %113

113:                                              ; preds = %101, %112
  %114 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.8, i64 noundef 0) #21
  store ptr %114, ptr %104, align 8, !tbaa !385
  br label %123

115:                                              ; preds = %107
  tail call void @Perl_sv_setpvn(ptr noundef nonnull %105, ptr noundef nonnull @.str.8, i64 noundef 0) #21
  %116 = load i32, ptr %108, align 4, !tbaa !452
  %117 = and i32 %116, 1610547455
  %118 = or disjoint i32 %117, 17408
  store i32 %118, ptr %108, align 4, !tbaa !452
  %119 = and i32 %116, 14680064
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %123, label %121, !prof !859

121:                                              ; preds = %115
  %122 = tail call i32 @Perl_mg_free(ptr noundef nonnull %105) #21
  br label %123

123:                                              ; preds = %113, %121, %115, %98
  tail call void @Perl_save_hints() #21
  br i1 %10, label %124, label %156, !prof !860

124:                                              ; preds = %123
  %125 = getelementptr inbounds %struct.op, ptr %6, i64 0, i32 6
  %126 = load i8, ptr %125, align 1, !tbaa !390
  %127 = and i8 %126, 16
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %133, label %129, !prof !858

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.cop, ptr %11, i64 0, i32 10
  %131 = load i32, ptr %130, align 8, !tbaa !482
  %132 = zext i32 %131 to i64
  br label %136

133:                                              ; preds = %124
  %134 = getelementptr inbounds %struct.op, ptr %6, i64 0, i32 3
  %135 = load i64, ptr %134, align 8, !tbaa !442
  br label %136

136:                                              ; preds = %133, %129
  %137 = phi i64 [ %132, %129 ], [ %135, %133 ]
  %138 = trunc i64 %137 to i32
  store i32 %138, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !482
  %139 = load i8, ptr @PL_in_eval, align 1, !tbaa !398
  %140 = and i8 %139, 16
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %144, label %142, !prof !858

142:                                              ; preds = %136
  %143 = and i32 %138, -2097153
  store i32 %143, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !482
  br label %144

144:                                              ; preds = %142, %136
  %145 = icmp eq ptr %3, null
  br i1 %145, label %173, label %146, !prof !858

146:                                              ; preds = %144
  %147 = load ptr, ptr @PL_hintgv, align 8, !tbaa !385
  %148 = getelementptr inbounds %struct.gv, ptr %147, i64 0, i32 3
  %149 = load ptr, ptr %148, align 8, !tbaa !398
  %150 = getelementptr inbounds %struct.gp, ptr %149, i64 0, i32 5
  %151 = load ptr, ptr %150, align 8, !tbaa !631
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %151) #22
  %152 = load ptr, ptr @PL_hintgv, align 8, !tbaa !385
  %153 = getelementptr inbounds %struct.gv, ptr %152, i64 0, i32 3
  %154 = load ptr, ptr %153, align 8, !tbaa !398
  %155 = getelementptr inbounds %struct.gp, ptr %154, i64 0, i32 5
  store ptr %3, ptr %155, align 8, !tbaa !631
  br label %173

156:                                              ; preds = %123
  store i32 0, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !482
  %157 = load ptr, ptr @PL_hintgv, align 8, !tbaa !385
  %158 = getelementptr inbounds %struct.gv, ptr %157, i64 0, i32 3
  %159 = load ptr, ptr %158, align 8, !tbaa !398
  %160 = getelementptr inbounds %struct.gp, ptr %159, i64 0, i32 5
  %161 = load ptr, ptr %160, align 8, !tbaa !631
  tail call void @Perl_hv_clear(ptr noundef %161) #21
  %162 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8, !tbaa !660
  tail call void @Perl_save_pushptr(ptr noundef %162, i32 noundef 6) #21
  %163 = load i8, ptr @PL_dowarn, align 1, !tbaa !398
  %164 = zext i8 %163 to i32
  %165 = and i32 %164, 2
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %168, label %167, !prof !817

167:                                              ; preds = %156
  store ptr inttoptr (i64 8 to ptr), ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8, !tbaa !660
  br label %194

168:                                              ; preds = %156
  %169 = and i32 %164, 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %172, label %171, !prof !817

171:                                              ; preds = %168
  store ptr inttoptr (i64 16 to ptr), ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8, !tbaa !660
  br label %194

172:                                              ; preds = %168
  store ptr null, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8, !tbaa !660
  br label %194

173:                                              ; preds = %144, %146
  %174 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8, !tbaa !660
  tail call void @Perl_save_pushptr(ptr noundef %174, i32 noundef 6) #21
  %175 = getelementptr inbounds %struct.cop, ptr %11, i64 0, i32 12
  %176 = load ptr, ptr %175, align 8, !tbaa !660
  %177 = ptrtoint ptr %176 to i64
  switch i64 %177, label %178 [
    i64 0, label %182
    i64 8, label %182
    i64 16, label %182
  ], !prof !861

178:                                              ; preds = %173
  %179 = load i64, ptr %176, align 8, !tbaa !509
  %180 = add i64 %179, 8
  %181 = tail call noalias ptr @malloc(i64 noundef %180) #27
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %181, ptr nonnull align 1 %176, i64 %180, i1 false)
  br label %182

182:                                              ; preds = %173, %173, %173, %178
  %183 = phi ptr [ %181, %178 ], [ %176, %173 ], [ %176, %173 ], [ %176, %173 ]
  store ptr %183, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8, !tbaa !660
  %184 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 13), align 8, !tbaa !662
  tail call void @Perl_refcounted_he_free(ptr noundef %184) #21
  %185 = tail call ptr @Perl_cop_fetch_label(ptr noundef nonnull %11, ptr noundef null, ptr noundef null) #21
  %186 = icmp eq ptr %185, null
  %187 = getelementptr inbounds %struct.cop, ptr %11, i64 0, i32 13
  %188 = load ptr, ptr %187, align 8, !tbaa !662
  br i1 %186, label %192, label %189, !prof !858

189:                                              ; preds = %182
  %190 = load ptr, ptr %188, align 8, !tbaa !862
  %191 = tail call ptr @Perl_refcounted_he_inc(ptr noundef %190) #21
  store ptr %191, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 13), align 8, !tbaa !662
  br label %194

192:                                              ; preds = %182
  %193 = tail call ptr @Perl_refcounted_he_inc(ptr noundef %188) #21
  store ptr %193, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 13), align 8, !tbaa !662
  br label %194

194:                                              ; preds = %171, %172, %167, %192, %189
  %195 = load ptr, ptr @PL_blockhooks, align 8, !tbaa !385
  %196 = icmp eq ptr %195, null
  br i1 %196, label %232, label %197, !prof !859

197:                                              ; preds = %194
  %198 = tail call fastcc i64 @S_av_top_index(ptr noundef nonnull %195) #22
  %199 = icmp sgt i64 %198, -1
  br i1 %199, label %200, label %232

200:                                              ; preds = %197
  %201 = load ptr, ptr @PL_blockhooks, align 8, !tbaa !385
  br label %202

202:                                              ; preds = %200, %228
  %203 = phi ptr [ %229, %228 ], [ %201, %200 ]
  %204 = phi i64 [ %230, %228 ], [ %198, %200 ]
  %205 = getelementptr inbounds %struct.av, ptr %203, i64 0, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !398
  %207 = getelementptr inbounds ptr, ptr %206, i64 %204
  %208 = load ptr, ptr %207, align 8, !tbaa !385
  %209 = getelementptr inbounds %struct.sv, ptr %208, i64 0, i32 2
  %210 = load i32, ptr %209, align 4, !tbaa !452
  %211 = and i32 %210, -2147483392
  %212 = icmp eq i32 %211, -2147483392
  %213 = load ptr, ptr %208, align 8, !tbaa !487
  %214 = getelementptr inbounds %struct.xpvuv, ptr %213, i64 0, i32 4
  %215 = getelementptr inbounds %struct.xpviv, ptr %213, i64 0, i32 4
  %216 = select i1 %212, ptr %214, ptr %215
  %217 = load i64, ptr %216, align 8, !tbaa !398
  %218 = inttoptr i64 %217 to ptr
  %219 = load i32, ptr %218, align 8, !tbaa !864
  %220 = and i32 %219, 8
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %228, label %222

222:                                              ; preds = %202
  %223 = getelementptr inbounds %struct.block_hooks, ptr %218, i64 0, i32 4
  %224 = load ptr, ptr %223, align 8, !tbaa !866
  %225 = icmp eq ptr %224, null
  br i1 %225, label %228, label %226

226:                                              ; preds = %222
  tail call void %224(ptr noundef %6) #21
  %227 = load ptr, ptr @PL_blockhooks, align 8, !tbaa !385
  br label %228

228:                                              ; preds = %202, %226, %222
  %229 = phi ptr [ %203, %202 ], [ %227, %226 ], [ %203, %222 ]
  %230 = add nsw i64 %204, -1
  %231 = icmp sgt i64 %204, 0
  br i1 %231, label %202, label %232, !llvm.loop !867

232:                                              ; preds = %228, %197, %194
  br i1 %12, label %240, label %233, !prof !850

233:                                              ; preds = %232
  %234 = load ptr, ptr @PL_top_env, align 8, !tbaa !385
  %235 = getelementptr inbounds %struct.jmpenv, ptr %234, i64 0, i32 3
  %236 = load i8, ptr %235, align 4, !tbaa !833, !range !444, !noundef !445
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %240, label %238, !prof !858

238:                                              ; preds = %233
  %239 = tail call fastcc i32 @S_try_yyparse() #22
  br label %242

240:                                              ; preds = %233, %232
  %241 = tail call i32 @Perl_yyparse(i32 noundef 258) #21
  br label %242

242:                                              ; preds = %240, %238
  %243 = phi i32 [ %239, %238 ], [ %241, %240 ]
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %254, !prof !859

245:                                              ; preds = %242
  %246 = load ptr, ptr @PL_parser, align 8, !tbaa !385
  %247 = getelementptr inbounds %struct.yy_parser, ptr %246, i64 0, i32 44
  %248 = load i8, ptr %247, align 1, !tbaa !619
  %249 = icmp eq i8 %248, 0
  %250 = load ptr, ptr @PL_eval_root, align 8
  %251 = icmp ne ptr %250, null
  %252 = select i1 %249, i1 %251, i1 false
  br i1 %252, label %395, label %253, !prof !868

253:                                              ; preds = %245
  store ptr %6, ptr @PL_op, align 8, !tbaa !385
  br label %258

254:                                              ; preds = %242
  store ptr %6, ptr @PL_op, align 8, !tbaa !385
  %255 = icmp eq i32 %243, 3
  br i1 %255, label %315, label %256

256:                                              ; preds = %254
  %257 = load ptr, ptr @PL_eval_root, align 8, !tbaa !385
  br label %258

258:                                              ; preds = %256, %253
  %259 = phi ptr [ %257, %256 ], [ %250, %253 ]
  %260 = icmp eq ptr %259, null
  br i1 %260, label %262, label %261

261:                                              ; preds = %258
  tail call void @Perl_op_free(ptr noundef nonnull %259) #21
  store ptr null, ptr @PL_eval_root, align 8, !tbaa !385
  br label %262

262:                                              ; preds = %261, %258
  %263 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %264 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %265 = getelementptr inbounds i32, ptr %264, i64 -1
  store ptr %265, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %266 = load i32, ptr %264, align 4, !tbaa !430
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds ptr, ptr %263, i64 %267
  %269 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %270 = getelementptr inbounds %struct.stackinfo, ptr %269, i64 0, i32 1
  %271 = load ptr, ptr %270, align 8, !tbaa !395
  %272 = getelementptr inbounds %struct.stackinfo, ptr %269, i64 0, i32 4
  %273 = load i32, ptr %272, align 8, !tbaa !397
  %274 = add nsw i32 %273, -1
  store i32 %274, ptr %272, align 8, !tbaa !397
  %275 = sext i32 %273 to i64
  %276 = getelementptr inbounds %struct.context, ptr %271, i64 %275
  %277 = getelementptr inbounds %struct.block, ptr %276, i64 0, i32 4
  %278 = load ptr, ptr %277, align 8, !tbaa !398
  store ptr %278, ptr @PL_curcop, align 8, !tbaa !385
  %279 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %280 = getelementptr inbounds %struct.block, ptr %276, i64 0, i32 5
  %281 = load i32, ptr %280, align 8, !tbaa !398
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, ptr %279, i64 %282
  store ptr %283, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %284 = getelementptr inbounds %struct.block, ptr %276, i64 0, i32 6
  %285 = load i32, ptr %284, align 4, !tbaa !398
  store i32 %285, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %286 = getelementptr inbounds %struct.block, ptr %276, i64 0, i32 7
  %287 = load ptr, ptr %286, align 8, !tbaa !398
  store ptr %287, ptr @PL_curpm, align 8, !tbaa !385
  %288 = getelementptr inbounds %struct.block, ptr %276, i64 0, i32 1
  %289 = load i8, ptr %288, align 1, !tbaa !398
  %290 = zext i8 %289 to i32
  %291 = getelementptr inbounds %struct.block, ptr %276, i64 0, i32 2
  %292 = load i16, ptr %291, align 2, !tbaa !398
  %293 = trunc i16 %292 to i8
  %294 = and i8 %293, 127
  store i8 %294, ptr @PL_in_eval, align 1, !tbaa !398
  %295 = getelementptr inbounds %struct.block, ptr %276, i64 0, i32 8, i32 0, i32 2
  %296 = load ptr, ptr %295, align 8, !tbaa !398
  store ptr %296, ptr @PL_eval_root, align 8, !tbaa !385
  %297 = getelementptr inbounds %struct.block, ptr %276, i64 0, i32 8, i32 0, i32 3
  %298 = load ptr, ptr %297, align 8, !tbaa !398
  %299 = icmp eq ptr %298, null
  br i1 %299, label %306, label %300

300:                                              ; preds = %262
  %301 = getelementptr inbounds %struct.sv, ptr %298, i64 0, i32 2
  %302 = load i32, ptr %301, align 4, !tbaa !452
  %303 = and i32 %302, 49152
  %304 = icmp eq i32 %303, 49152
  br i1 %304, label %305, label %306

305:                                              ; preds = %300
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %298) #22
  br label %306

306:                                              ; preds = %305, %300, %262
  %307 = getelementptr inbounds %struct.block, ptr %276, i64 0, i32 8, i32 0, i32 1
  %308 = load ptr, ptr %307, align 8, !tbaa !398
  %309 = icmp eq ptr %308, null
  br i1 %309, label %313, label %310

310:                                              ; preds = %306
  %311 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %308) #21
  %312 = load ptr, ptr %307, align 8, !tbaa !398
  br label %313

313:                                              ; preds = %310, %306
  %314 = phi ptr [ %312, %310 ], [ null, %306 ]
  tail call void @Perl_pop_scope() #21
  br label %315

315:                                              ; preds = %313, %254
  %316 = phi i1 [ false, %313 ], [ true, %254 ]
  %317 = phi ptr [ %314, %313 ], [ null, %254 ]
  %318 = phi ptr [ %268, %313 ], [ %5, %254 ]
  %319 = phi i32 [ %290, %313 ], [ %0, %254 ]
  %320 = load ptr, ptr @PL_errgv, align 8, !tbaa !385
  %321 = getelementptr inbounds %struct.gv, ptr %320, i64 0, i32 3
  %322 = load ptr, ptr %321, align 8, !tbaa !398
  %323 = load ptr, ptr %322, align 8, !tbaa !385
  %324 = icmp eq ptr %323, null
  br i1 %324, label %325, label %330

325:                                              ; preds = %315
  %326 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %320, i32 noundef 0) #21
  %327 = getelementptr inbounds %struct.gv, ptr %326, i64 0, i32 3
  %328 = load ptr, ptr %327, align 8, !tbaa !398
  %329 = load ptr, ptr %328, align 8, !tbaa !385
  br label %330

330:                                              ; preds = %315, %325
  %331 = phi ptr [ %323, %315 ], [ %329, %325 ]
  br i1 %12, label %332, label %376

332:                                              ; preds = %330
  br i1 %316, label %333, label %342

333:                                              ; preds = %332
  %334 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %335 = getelementptr inbounds %struct.stackinfo, ptr %334, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !395
  %337 = getelementptr inbounds %struct.stackinfo, ptr %334, i64 0, i32 4
  %338 = load i32, ptr %337, align 8, !tbaa !397
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.context, ptr %336, i64 %339, i32 0, i32 0, i32 8
  %341 = load ptr, ptr %340, align 8, !tbaa !398
  br label %342

342:                                              ; preds = %333, %332
  %343 = phi ptr [ %317, %332 ], [ %341, %333 ]
  %344 = load ptr, ptr @PL_incgv, align 8, !tbaa !385
  %345 = getelementptr inbounds %struct.gv, ptr %344, i64 0, i32 3
  %346 = load ptr, ptr %345, align 8, !tbaa !398
  %347 = getelementptr inbounds %struct.gp, ptr %346, i64 0, i32 5
  %348 = load ptr, ptr %347, align 8, !tbaa !631
  %349 = icmp eq ptr %348, null
  br i1 %349, label %350, label %356

350:                                              ; preds = %342
  %351 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %344, i32 noundef 12) #21
  %352 = getelementptr inbounds %struct.gv, ptr %351, i64 0, i32 3
  %353 = load ptr, ptr %352, align 8, !tbaa !398
  %354 = getelementptr inbounds %struct.gp, ptr %353, i64 0, i32 5
  %355 = load ptr, ptr %354, align 8, !tbaa !631
  br label %356

356:                                              ; preds = %342, %350
  %357 = phi ptr [ %355, %350 ], [ %348, %342 ]
  %358 = getelementptr inbounds %struct.sv, ptr %343, i64 0, i32 3
  %359 = load ptr, ptr %358, align 8, !tbaa !398
  %360 = getelementptr inbounds %struct.sv, ptr %343, i64 0, i32 2
  %361 = load i32, ptr %360, align 4, !tbaa !452
  %362 = and i32 %361, 536870912
  %363 = icmp eq i32 %362, 0
  %364 = load ptr, ptr %343, align 8, !tbaa !487
  %365 = getelementptr inbounds %struct.xpv, ptr %364, i64 0, i32 2
  %366 = load i64, ptr %365, align 8, !tbaa !458
  %367 = trunc i64 %366 to i32
  %368 = sub nsw i32 0, %367
  %369 = select i1 %363, i32 %367, i32 %368
  %370 = tail call ptr @Perl_hv_common_key_len(ptr noundef %357, ptr noundef %359, i32 noundef %369, i32 noundef 36, ptr noundef nonnull @PL_sv_undef, i32 noundef 0) #21
  %371 = icmp eq ptr %331, null
  br i1 %371, label %372, label %374

372:                                              ; preds = %356
  %373 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.17, i64 noundef 14, i32 noundef 524288) #21
  br label %374

374:                                              ; preds = %356, %372
  %375 = phi ptr [ %373, %372 ], [ %331, %356 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.16, ptr noundef %375) #21
  br label %391

376:                                              ; preds = %330
  %377 = getelementptr inbounds %struct.sv, ptr %331, i64 0, i32 2
  %378 = load i32, ptr %377, align 4, !tbaa !452
  %379 = and i32 %378, 2098176
  %380 = icmp eq i32 %379, 1024
  br i1 %380, label %381, label %384

381:                                              ; preds = %376
  %382 = getelementptr inbounds %struct.sv, ptr %331, i64 0, i32 3
  %383 = load ptr, ptr %382, align 8, !tbaa !398
  br label %386

384:                                              ; preds = %376
  %385 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %331, ptr noundef null, i32 noundef 34) #21
  br label %386

386:                                              ; preds = %384, %381
  %387 = phi ptr [ %383, %381 ], [ %385, %384 ]
  %388 = load i8, ptr %387, align 1, !tbaa !398
  %389 = icmp eq i8 %388, 0
  br i1 %389, label %390, label %391

390:                                              ; preds = %386
  tail call void @Perl_sv_setpvn(ptr noundef nonnull %331, ptr noundef nonnull @.str.106, i64 noundef 17) #21
  br label %391

391:                                              ; preds = %386, %390, %374
  %392 = icmp eq i32 %319, 3
  br i1 %392, label %453, label %393

393:                                              ; preds = %391
  %394 = getelementptr inbounds ptr, ptr %318, i64 1
  store ptr @PL_sv_undef, ptr %394, align 8, !tbaa !385
  br label %453

395:                                              ; preds = %245
  tail call void @Perl_pop_scope() #21
  store i32 0, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 7), align 4, !tbaa !655
  %396 = load ptr, ptr @PL_eval_root, align 8, !tbaa !385
  %397 = getelementptr inbounds %struct.op, ptr %396, i64 0, i32 4
  %398 = load i16, ptr %397, align 8
  %399 = or i16 %398, 2048
  store i16 %399, ptr %397, align 8
  tail call void @Perl_save_pushptr(ptr noundef %396, i32 noundef 9) #21
  tail call void @Perl_cv_forget_slab(ptr noundef nonnull %39) #21
  %400 = load i32, ptr @PL_perldb, align 4, !tbaa !430
  %401 = and i32 %400, 8
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %437, label %403, !prof !859

403:                                              ; preds = %395
  %404 = load i16, ptr %7, align 8
  %405 = and i16 %404, 511
  %406 = icmp eq i16 %405, 339
  br i1 %406, label %407, label %437

407:                                              ; preds = %403
  %408 = tail call ptr @Perl_get_cvn_flags(ptr noundef nonnull @.str.107, i64 noundef 13, i32 noundef 0) #21
  %409 = icmp eq ptr %408, null
  br i1 %409, label %437, label %410

410:                                              ; preds = %407
  %411 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %412 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %413 = getelementptr inbounds i32, ptr %412, i64 1
  store ptr %413, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %414 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !385
  %415 = icmp eq ptr %413, %414
  br i1 %415, label %416, label %418

416:                                              ; preds = %410
  %417 = tail call ptr @Perl_markstack_grow() #21
  br label %418

418:                                              ; preds = %410, %416
  %419 = phi ptr [ %417, %416 ], [ %413, %410 ]
  %420 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %421 = ptrtoint ptr %411 to i64
  %422 = ptrtoint ptr %420 to i64
  %423 = sub i64 %421, %422
  %424 = lshr exact i64 %423, 3
  %425 = trunc i64 %424 to i32
  store i32 %425, ptr %419, align 4, !tbaa !430
  %426 = load ptr, ptr @PL_stack_max, align 8, !tbaa !385
  %427 = ptrtoint ptr %426 to i64
  %428 = sub i64 %427, %421
  %429 = icmp slt i64 %428, 8
  br i1 %429, label %430, label %432

430:                                              ; preds = %418
  %431 = tail call ptr @Perl_stack_grow(ptr noundef %411, ptr noundef %411, i64 noundef 1) #21
  br label %432

432:                                              ; preds = %418, %430
  %433 = phi ptr [ %431, %430 ], [ %411, %418 ]
  %434 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 9), align 8, !tbaa !653
  %435 = getelementptr inbounds ptr, ptr %433, i64 1
  store ptr %434, ptr %435, align 8, !tbaa !385
  store ptr %435, ptr @PL_stack_sp, align 8, !tbaa !385
  %436 = tail call i32 @Perl_call_sv(ptr noundef nonnull %408, i32 noundef 4) #21
  br label %437

437:                                              ; preds = %407, %432, %403, %395
  %438 = load ptr, ptr @PL_unitcheckav, align 8, !tbaa !385
  %439 = icmp eq ptr %438, null
  br i1 %439, label %443, label %440, !prof !851

440:                                              ; preds = %437
  %441 = load ptr, ptr @PL_eval_start, align 8, !tbaa !385
  %442 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !430
  tail call void @Perl_call_list(i32 noundef %442, ptr noundef nonnull %438) #21
  store ptr %441, ptr @PL_eval_start, align 8, !tbaa !385
  br label %443

443:                                              ; preds = %440, %437
  %444 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %39) #22
  store i32 1, ptr %444, align 4, !tbaa !430
  %445 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %446 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %447 = getelementptr inbounds i32, ptr %446, i64 -1
  store ptr %447, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %448 = load i32, ptr %446, align 4, !tbaa !430
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds ptr, ptr %445, i64 %449
  store ptr %6, ptr @PL_op, align 8, !tbaa !385
  %451 = load ptr, ptr @PL_parser, align 8, !tbaa !385
  %452 = getelementptr inbounds %struct.yy_parser, ptr %451, i64 0, i32 43
  store i8 11, ptr %452, align 2, !tbaa !869
  br label %453

453:                                              ; preds = %391, %393, %443
  %454 = phi ptr [ %450, %443 ], [ %394, %393 ], [ %318, %391 ]
  %455 = phi i1 [ true, %443 ], [ false, %393 ], [ false, %391 ]
  store ptr %454, ptr @PL_stack_sp, align 8, !tbaa !385
  ret i1 %455
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_docatch(ptr noundef %0) unnamed_addr #0 !prof !422 !PGOFuncName !870 {
  %2 = alloca %struct.jmpenv, align 8
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !385
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %2) #23
  store ptr %0, ptr @PL_op, align 8, !tbaa !385
  %4 = load ptr, ptr @PL_top_env, align 8, !tbaa !385
  %5 = getelementptr inbounds %struct.jmpenv, ptr %2, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !632
  %6 = call i32 @__sigsetjmp(ptr noundef nonnull %2, i32 noundef 0) #28
  %7 = getelementptr inbounds %struct.jmpenv, ptr %2, i64 0, i32 2
  store i32 %6, ptr %7, align 8, !tbaa !871
  store ptr %2, ptr @PL_top_env, align 8, !tbaa !385
  %8 = getelementptr inbounds %struct.jmpenv, ptr %2, i64 0, i32 3
  store i8 0, ptr %8, align 4, !tbaa !833
  switch i32 %6, label %28 [
    i32 0, label %9
    i32 3, label %21
  ]

9:                                                ; preds = %1
  %10 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %11 = getelementptr inbounds %struct.stackinfo, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !395
  %13 = getelementptr inbounds %struct.stackinfo, ptr %10, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !397
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.context, ptr %12, i64 %15, i32 0, i32 0, i32 12
  store ptr %2, ptr %16, align 8, !tbaa !398
  br label %17

17:                                               ; preds = %27, %9
  %18 = load ptr, ptr @PL_runops, align 8, !tbaa !385
  %19 = call i32 %18() #21
  %20 = load ptr, ptr %5, align 8, !tbaa !632
  store ptr %20, ptr @PL_top_env, align 8, !tbaa !385
  store ptr %3, ptr @PL_op, align 8, !tbaa !385
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %2) #23
  ret void

21:                                               ; preds = %1
  %22 = load ptr, ptr @PL_restartop, align 8, !tbaa !385
  %23 = icmp ne ptr %22, null
  %24 = load ptr, ptr @PL_restartjmpenv, align 8
  %25 = icmp eq ptr %24, %2
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  store ptr null, ptr @PL_restartjmpenv, align 8, !tbaa !385
  store ptr %22, ptr @PL_op, align 8, !tbaa !385
  store ptr null, ptr @PL_restartop, align 8, !tbaa !385
  br label %17

28:                                               ; preds = %1
  %29 = load ptr, ptr %5, align 8, !tbaa !632
  store ptr %29, ptr @PL_top_env, align 8, !tbaa !385
  store ptr %3, ptr @PL_op, align 8, !tbaa !385
  %30 = getelementptr inbounds %struct.jmpenv, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !632
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %38

33:                                               ; preds = %21
  %34 = load ptr, ptr %5, align 8, !tbaa !632
  store ptr %34, ptr @PL_top_env, align 8, !tbaa !385
  store ptr %3, ptr @PL_op, align 8, !tbaa !385
  %35 = getelementptr inbounds %struct.jmpenv, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !632
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %33, %28
  %39 = phi ptr [ %34, %33 ], [ %29, %28 ]
  call void @siglongjmp(ptr noundef nonnull %39, i32 noundef %6) #25
  unreachable

40:                                               ; preds = %28
  %41 = icmp eq i32 %6, 2
  br i1 %41, label %42, label %44

42:                                               ; preds = %40
  %43 = load i32, ptr @PL_statusvalue, align 4, !tbaa !430
  call void @exit(i32 noundef %43) #25
  unreachable

44:                                               ; preds = %33, %40
  %45 = call ptr @Perl_PerlIO_stderr() #21
  %46 = call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %45, ptr noundef nonnull @.str.18, i32 noundef %6) #21
  call void @exit(i32 noundef 1) #25
  unreachable
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_hintseval() local_unnamed_addr #0 !prof !422 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %2 = load ptr, ptr @PL_stack_max, align 8, !tbaa !385
  %3 = ptrtoint ptr %2 to i64
  %4 = ptrtoint ptr %1 to i64
  %5 = sub i64 %3, %4
  %6 = icmp slt i64 %5, 8
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = tail call ptr @Perl_stack_grow(ptr noundef %1, ptr noundef %1, i64 noundef 1) #21
  br label %9

9:                                                ; preds = %0, %7
  %10 = phi ptr [ %8, %7 ], [ %1, %0 ]
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %12 = getelementptr inbounds %struct.svop, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !872
  %14 = tail call ptr @Perl_hv_copy_hints_hv(ptr noundef %13) #21
  %15 = tail call ptr @Perl_sv_2mortal(ptr noundef %14) #21
  %16 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %15, ptr %16, align 8, !tbaa !385
  store ptr %16, ptr @PL_stack_sp, align 8, !tbaa !385
  %17 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %18 = load ptr, ptr %17, align 8, !tbaa !400
  ret ptr %18
}

; Function Attrs: optsize
declare ptr @Perl_hv_copy_hints_hv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_entereval() local_unnamed_addr #0 !prof !874 {
  %1 = alloca [32 x i8], align 16
  %2 = getelementptr inbounds i8, ptr %1, i64 2
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %7 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %8 = getelementptr inbounds %struct.op, ptr %7, i64 0, i32 5
  %9 = load i8, ptr %8, align 2, !tbaa !428
  %10 = and i8 %9, 3
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12, !prof !781

12:                                               ; preds = %0
  %13 = zext nneg i8 %10 to i32
  br label %17

14:                                               ; preds = %0
  %15 = tail call i32 @Perl_block_gimme() #22, !range !553
  %16 = load ptr, ptr @PL_op, align 8, !tbaa !385
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi ptr [ %7, %12 ], [ %16, %14 ]
  %19 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %20 = load i32, ptr @PL_breakable_sub_gen, align 4, !tbaa !430
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  %21 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 6
  %22 = load i8, ptr %21, align 1, !tbaa !390
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 8
  %25 = icmp eq i32 %24, 0
  %26 = and i32 %23, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28, !prof !858

28:                                               ; preds = %17
  %29 = getelementptr inbounds ptr, ptr %6, i64 -1
  %30 = load ptr, ptr %6, align 8, !tbaa !385
  %31 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %30) #22
  br label %52

32:                                               ; preds = %17
  %33 = load i32, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !tbaa !482
  %34 = and i32 %33, 131072
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36, !prof !858

36:                                               ; preds = %32
  %37 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  br label %47

38:                                               ; preds = %32
  %39 = and i32 %23, 16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %52, label %41, !prof !858

41:                                               ; preds = %38
  %42 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %43 = getelementptr inbounds %struct.cop, ptr %42, i64 0, i32 10
  %44 = load i32, ptr %43, align 8, !tbaa !482
  %45 = and i32 %44, 131072
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %36, %41
  %48 = phi ptr [ %37, %36 ], [ %42, %41 ]
  %49 = getelementptr inbounds %struct.cop, ptr %48, i64 0, i32 13
  %50 = load ptr, ptr %49, align 8, !tbaa !662
  %51 = tail call ptr @Perl_refcounted_he_chain_2hv(ptr noundef %50, i32 noundef 0) #21
  tail call void @Perl_sv_magic(ptr noundef %51, ptr noundef null, i32 noundef 72, ptr noundef null, i32 noundef 0) #21
  br label %52

52:                                               ; preds = %38, %41, %47, %28
  %53 = phi ptr [ %30, %28 ], [ %51, %47 ], [ null, %41 ], [ null, %38 ]
  %54 = phi ptr [ %29, %28 ], [ %6, %47 ], [ %6, %41 ], [ %6, %38 ]
  %55 = getelementptr inbounds ptr, ptr %54, i64 -1
  %56 = load ptr, ptr %54, align 8, !tbaa !385
  %57 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !452
  %59 = and i32 %58, 1024
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %76, !prof !781

61:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %62 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %56, ptr noundef nonnull %4, i32 noundef 34) #21
  %63 = load i64, ptr %4, align 8, !tbaa !509
  %64 = load i32, ptr %57, align 4, !tbaa !452
  %65 = and i32 %64, 536870912
  %66 = or disjoint i32 %65, 524288
  %67 = call ptr @Perl_newSVpvn_flags(ptr noundef %62, i64 noundef %63, i32 noundef %66) #21
  br i1 %25, label %75, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.sv, ptr %67, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !452
  %71 = and i32 %70, 536870912
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = call ptr @Perl_sv_pvbyten_force(ptr noundef nonnull %67, ptr noundef nonnull %4) #21
  br label %75

75:                                               ; preds = %73, %68, %61
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  br label %90

76:                                               ; preds = %52
  br i1 %25, label %90, label %77, !prof !858

77:                                               ; preds = %76
  %78 = and i32 %58, 536870912
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  %81 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %56) #21
  %82 = tail call ptr @Perl_sv_2mortal(ptr noundef %81) #21
  %83 = getelementptr inbounds %struct.sv, ptr %81, i64 0, i32 2
  %84 = load i32, ptr %83, align 4, !tbaa !452
  %85 = and i32 %84, 966889216
  %86 = icmp eq i32 %85, 1024
  br i1 %86, label %89, label %87

87:                                               ; preds = %80
  %88 = call ptr @Perl_sv_pvbyten_force(ptr noundef nonnull %81, ptr noundef nonnull %5) #21
  br label %89

89:                                               ; preds = %80, %87
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  br label %90

90:                                               ; preds = %76, %77, %89, %75
  %91 = phi i32 [ 8, %89 ], [ 0, %77 ], [ 0, %76 ], [ 8, %75 ]
  %92 = phi ptr [ %81, %89 ], [ %56, %77 ], [ %56, %76 ], [ %67, %75 ]
  %93 = getelementptr inbounds %struct.sv, ptr %92, i64 0, i32 2
  %94 = load i32, ptr %93, align 4, !tbaa !452
  %95 = and i32 %94, 14680064
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %100, label %97, !prof !858

97:                                               ; preds = %90
  %98 = call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %92) #21
  br i1 %98, label %99, label %100

99:                                               ; preds = %97
  store i8 1, ptr @PL_tainted, align 1, !tbaa !423
  br label %100

100:                                              ; preds = %90, %97, %99
  %101 = load i8, ptr @PL_tainting, align 1, !tbaa !423, !range !444, !noundef !445
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %104, label %103, !prof !858

103:                                              ; preds = %100
  call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.79) #21
  br label %104

104:                                              ; preds = %100, %103
  call void @Perl_push_scope() #21
  %105 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %106 = getelementptr inbounds %struct.op, ptr %105, i64 0, i32 6
  %107 = load i8, ptr %106, align 1, !tbaa !390
  %108 = and i8 %107, 4
  %109 = icmp eq i8 %108, 0
  %110 = select i1 %25, i32 1, i32 4
  %111 = select i1 %109, i32 %110, i32 2, !prof !858
  %112 = or disjoint i32 %111, %91
  call void @Perl_lex_start(ptr noundef nonnull %92, ptr noundef null, i32 noundef %112) #21
  call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #21
  %113 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  store i64 %113, ptr @PL_tmps_floor, align 8, !tbaa !509
  %114 = load i32, ptr @PL_perldb, align 4, !tbaa !430
  %115 = and i32 %114, 256
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %148, label %117, !prof !858

117:                                              ; preds = %104
  %118 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %119 = getelementptr inbounds %struct.cop, ptr %118, i64 0, i32 7
  %120 = load i32, ptr %119, align 4, !tbaa !655
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %148, label %122

122:                                              ; preds = %117
  %123 = call ptr @Perl_sv_newmortal() #21
  %124 = load i32, ptr @PL_evalseq, align 4, !tbaa !430
  %125 = add i32 %124, 1
  store i32 %125, ptr @PL_evalseq, align 4, !tbaa !430
  %126 = zext i32 %125 to i64
  %127 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %128 = getelementptr inbounds %struct.cop, ptr %127, i64 0, i32 9
  %129 = load ptr, ptr %128, align 8, !tbaa !653
  %130 = icmp eq ptr %129, null
  br i1 %130, label %136, label %131

131:                                              ; preds = %122
  %132 = load ptr, ptr %129, align 8, !tbaa !555
  %133 = getelementptr inbounds %struct.xpvgv, ptr %132, i64 0, i32 4
  %134 = load ptr, ptr %133, align 8, !tbaa !398
  %135 = getelementptr inbounds %struct.hek, ptr %134, i64 0, i32 2, i64 2
  br label %136

136:                                              ; preds = %122, %131
  %137 = phi ptr [ %135, %131 ], [ null, %122 ]
  %138 = getelementptr inbounds %struct.cop, ptr %127, i64 0, i32 7
  %139 = load i32, ptr %138, align 4, !tbaa !655
  %140 = zext i32 %139 to i64
  call void (ptr, ptr, ...) @Perl_sv_setpvf(ptr noundef %123, ptr noundef nonnull @.str.80, i64 noundef %126, ptr noundef %137, i64 noundef %140) #21
  %141 = getelementptr inbounds %struct.sv, ptr %123, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !398
  %143 = getelementptr inbounds i8, ptr %142, i64 2
  %144 = load ptr, ptr %123, align 8, !tbaa !487
  %145 = getelementptr inbounds %struct.xpv, ptr %144, i64 0, i32 2
  %146 = load i64, ptr %145, align 8, !tbaa !458
  %147 = trunc i64 %146 to i32
  br label %153

148:                                              ; preds = %117, %104
  %149 = load i32, ptr @PL_evalseq, align 4, !tbaa !430
  %150 = add i32 %149, 1
  store i32 %150, ptr @PL_evalseq, align 4, !tbaa !430
  %151 = zext i32 %150 to i64
  %152 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef nonnull %1, i64 noundef 32, ptr noundef nonnull @.str.81, i64 noundef %151) #21
  br label %153

153:                                              ; preds = %148, %136
  %154 = phi i32 [ %147, %136 ], [ %152, %148 ]
  %155 = phi ptr [ %142, %136 ], [ %1, %148 ]
  %156 = phi ptr [ %143, %136 ], [ %2, %148 ]
  call void @Perl_save_generic_svref(ptr noundef nonnull getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 9)) #21
  %157 = call ptr @Perl_gv_fetchfile(ptr noundef nonnull %156) #21
  %158 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %157) #22
  store ptr %157, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 9), align 8, !tbaa !653
  call void @Perl_save_I32(ptr noundef nonnull getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 7)) #21
  store i32 1, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 7), align 4, !tbaa !655
  %159 = call ptr @Perl_find_runcv(ptr noundef nonnull %3) #22
  %160 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %161 = getelementptr inbounds %struct.stackinfo, ptr %160, i64 0, i32 4
  %162 = load i32, ptr %161, align 8, !tbaa !397
  %163 = getelementptr inbounds %struct.stackinfo, ptr %160, i64 0, i32 5
  %164 = load i32, ptr %163, align 4, !tbaa !663
  %165 = icmp slt i32 %162, %164
  br i1 %165, label %166, label %168, !prof !858

166:                                              ; preds = %153
  %167 = add nsw i32 %162, 1
  store i32 %167, ptr %161, align 8, !tbaa !397
  br label %172

168:                                              ; preds = %153
  %169 = call i32 @Perl_cxinc() #21
  %170 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %171 = getelementptr inbounds %struct.stackinfo, ptr %170, i64 0, i32 4
  store i32 %169, ptr %171, align 8, !tbaa !397
  br label %172

172:                                              ; preds = %168, %166
  %173 = phi i32 [ %169, %168 ], [ %167, %166 ]
  %174 = phi ptr [ %170, %168 ], [ %160, %166 ]
  %175 = getelementptr inbounds %struct.stackinfo, ptr %174, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !395
  %177 = sext i32 %173 to i64
  %178 = getelementptr inbounds %struct.context, ptr %176, i64 %177
  store i8 42, ptr %178, align 8, !tbaa !398
  %179 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %180 = ptrtoint ptr %55 to i64
  %181 = ptrtoint ptr %179 to i64
  %182 = sub i64 %180, %181
  %183 = lshr exact i64 %182, 3
  %184 = trunc i64 %183 to i32
  %185 = getelementptr inbounds %struct.block, ptr %178, i64 0, i32 3
  store i32 %184, ptr %185, align 4, !tbaa !398
  %186 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %187 = getelementptr inbounds %struct.block, ptr %178, i64 0, i32 4
  store ptr %186, ptr %187, align 8, !tbaa !398
  %188 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %189 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %190 = ptrtoint ptr %188 to i64
  %191 = ptrtoint ptr %189 to i64
  %192 = sub i64 %190, %191
  %193 = lshr exact i64 %192, 2
  %194 = trunc i64 %193 to i32
  %195 = getelementptr inbounds %struct.block, ptr %178, i64 0, i32 5
  store i32 %194, ptr %195, align 8, !tbaa !398
  %196 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %197 = getelementptr inbounds %struct.block, ptr %178, i64 0, i32 6
  store i32 %196, ptr %197, align 4, !tbaa !398
  %198 = load ptr, ptr @PL_curpm, align 8, !tbaa !385
  %199 = getelementptr inbounds %struct.block, ptr %178, i64 0, i32 7
  store ptr %198, ptr %199, align 8, !tbaa !398
  %200 = trunc i32 %19 to i8
  %201 = getelementptr inbounds %struct.block, ptr %178, i64 0, i32 1
  store i8 %200, ptr %201, align 1, !tbaa !398
  %202 = load i8, ptr @PL_in_eval, align 1, !tbaa !398
  %203 = and i8 %202, 127
  %204 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %205 = getelementptr inbounds %struct.op, ptr %204, i64 0, i32 4
  %206 = load i16, ptr %205, align 8
  %207 = shl i16 %206, 7
  %208 = zext nneg i8 %203 to i16
  %209 = or disjoint i16 %207, %208
  %210 = getelementptr inbounds %struct.block, ptr %178, i64 0, i32 2
  store i16 %209, ptr %210, align 2, !tbaa !398
  %211 = getelementptr inbounds %struct.block, ptr %178, i64 0, i32 8
  %212 = getelementptr inbounds %struct.block, ptr %178, i64 0, i32 8, i32 0, i32 1
  store ptr null, ptr %212, align 8, !tbaa !398
  %213 = load ptr, ptr @PL_eval_root, align 8, !tbaa !385
  %214 = getelementptr inbounds %struct.block, ptr %178, i64 0, i32 8, i32 0, i32 2
  store ptr %213, ptr %214, align 8, !tbaa !398
  %215 = load ptr, ptr @PL_parser, align 8, !tbaa !385
  %216 = icmp eq ptr %215, null
  br i1 %216, label %220, label %217, !prof !781

217:                                              ; preds = %172
  %218 = getelementptr inbounds %struct.yy_parser, ptr %215, i64 0, i32 33
  %219 = load ptr, ptr %218, align 8, !tbaa !832
  br label %220

220:                                              ; preds = %172, %217
  %221 = phi ptr [ %219, %217 ], [ null, %172 ]
  %222 = getelementptr inbounds %struct.block, ptr %178, i64 0, i32 8, i32 0, i32 3
  store ptr %221, ptr %222, align 8, !tbaa !398
  %223 = getelementptr inbounds %struct.block, ptr %178, i64 0, i32 8, i32 0, i32 4
  store ptr null, ptr %223, align 8, !tbaa !398
  store ptr null, ptr %211, align 8, !tbaa !398
  %224 = load ptr, ptr @PL_top_env, align 8, !tbaa !385
  %225 = getelementptr inbounds %struct.block, ptr %178, i64 0, i32 8, i32 0, i32 5
  store ptr %224, ptr %225, align 8, !tbaa !398
  %226 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %227 = load ptr, ptr %226, align 8, !tbaa !400
  store ptr %227, ptr %211, align 8, !tbaa !398
  %228 = load i32, ptr @PL_perldb, align 4, !tbaa !430
  %229 = and i32 %228, 1026
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %248, label %231, !prof !875

231:                                              ; preds = %220
  %232 = load ptr, ptr @PL_curstash, align 8, !tbaa !385
  %233 = load ptr, ptr @PL_debstash, align 8, !tbaa !385
  %234 = icmp eq ptr %232, %233
  br i1 %234, label %248, label %235

235:                                              ; preds = %231
  %236 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 9), align 8, !tbaa !653
  %237 = icmp eq ptr %236, null
  br i1 %237, label %243, label %238

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.gv, ptr %236, i64 0, i32 3
  %240 = load ptr, ptr %239, align 8, !tbaa !398
  %241 = getelementptr inbounds %struct.gp, ptr %240, i64 0, i32 6
  %242 = load ptr, ptr %241, align 8, !tbaa !604
  br label %243

243:                                              ; preds = %235, %238
  %244 = phi ptr [ %242, %238 ], [ null, %235 ]
  %245 = load ptr, ptr @PL_parser, align 8, !tbaa !385
  %246 = getelementptr inbounds %struct.yy_parser, ptr %245, i64 0, i32 33
  %247 = load ptr, ptr %246, align 8, !tbaa !832
  call fastcc void @S_save_lines(ptr noundef %244, ptr noundef %247) #22
  br label %251

248:                                              ; preds = %220, %231
  %249 = call ptr @Perl_savepvn(ptr noundef %155, i32 noundef %154) #21
  %250 = load ptr, ptr @PL_defstash, align 8, !tbaa !385
  call void @Perl_save_delete(ptr noundef %250, ptr noundef %249, i32 noundef %154) #21
  br label %251

251:                                              ; preds = %248, %243
  %252 = phi i1 [ false, %243 ], [ true, %248 ]
  store ptr %55, ptr @PL_stack_sp, align 8, !tbaa !385
  %253 = load i32, ptr %3, align 4, !tbaa !430
  %254 = call fastcc zeroext i1 @S_doeval(i32 noundef %19, ptr noundef %159, i32 noundef %253, ptr noundef %53) #22
  %255 = load i32, ptr @PL_breakable_sub_gen, align 4, !tbaa !430
  %256 = icmp eq i32 %20, %255
  %257 = load i32, ptr @PL_perldb, align 4
  br i1 %254, label %258, label %277, !prof !858

258:                                              ; preds = %251
  br i1 %256, label %263, label %259, !prof !858

259:                                              ; preds = %258
  %260 = and i32 %257, 1026
  %261 = icmp ne i32 %260, 0
  %262 = or i1 %252, %261
  br i1 %262, label %270, label %267, !prof !876

263:                                              ; preds = %258
  %264 = and i32 %257, 2048
  %265 = icmp ne i32 %264, 0
  %266 = or i1 %252, %265
  br i1 %266, label %270, label %267, !prof !876

267:                                              ; preds = %259, %263
  %268 = call ptr @Perl_savepvn(ptr noundef %155, i32 noundef %154) #21
  %269 = load ptr, ptr @PL_defstash, align 8, !tbaa !385
  call void @Perl_save_delete(ptr noundef %269, ptr noundef %268, i32 noundef %154) #21
  br label %270

270:                                              ; preds = %259, %263, %267
  %271 = load ptr, ptr @PL_top_env, align 8, !tbaa !385
  %272 = getelementptr inbounds %struct.jmpenv, ptr %271, i64 0, i32 3
  %273 = load i8, ptr %272, align 4, !tbaa !833, !range !444, !noundef !445
  %274 = icmp eq i8 %273, 0
  %275 = load ptr, ptr @PL_eval_start, align 8, !tbaa !385
  br i1 %274, label %292, label %276, !prof !858

276:                                              ; preds = %270
  call fastcc void @S_docatch(ptr noundef %275) #22
  br label %292

277:                                              ; preds = %251
  br i1 %256, label %282, label %278

278:                                              ; preds = %277
  %279 = and i32 %257, 1026
  %280 = icmp ne i32 %279, 0
  %281 = or i1 %252, %280
  br i1 %281, label %289, label %286

282:                                              ; preds = %277
  %283 = and i32 %257, 4096
  %284 = icmp ne i32 %283, 0
  %285 = or i1 %252, %284
  br i1 %285, label %289, label %286

286:                                              ; preds = %278, %282
  %287 = load ptr, ptr @PL_defstash, align 8, !tbaa !385
  %288 = call ptr @Perl_hv_common_key_len(ptr noundef %287, ptr noundef %155, i32 noundef %154, i32 noundef 68, ptr noundef null, i32 noundef 0) #21
  br label %289

289:                                              ; preds = %278, %282, %286
  %290 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %291 = load ptr, ptr %290, align 8, !tbaa !400
  br label %292

292:                                              ; preds = %270, %276, %289
  %293 = phi ptr [ %291, %289 ], [ null, %276 ], [ %275, %270 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #23
  ret ptr %293
}

; Function Attrs: optsize
declare ptr @Perl_sv_pvbyten_force(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_save_lines(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !422 !PGOFuncName !877 {
  %3 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !398
  %5 = load ptr, ptr %1, align 8, !tbaa !487
  %6 = getelementptr inbounds %struct.xpv, ptr %5, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !458
  %8 = getelementptr inbounds i8, ptr %4, i64 %7
  %9 = icmp ne ptr %4, null
  %10 = icmp sgt i64 %7, 0
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = ptrtoint ptr %8 to i64
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i64 [ 1, %12 ], [ %26, %14 ]
  %16 = phi ptr [ %4, %12 ], [ %23, %14 ]
  %17 = tail call ptr @Perl_newSV_type(i32 noundef 7) #21
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %13, %18
  %20 = tail call ptr @memchr(ptr noundef nonnull %16, i32 noundef 10, i64 noundef %19) #24
  %21 = icmp eq ptr %20, null
  %22 = getelementptr inbounds i8, ptr %20, i64 1
  %23 = select i1 %21, ptr %8, ptr %22
  %24 = ptrtoint ptr %23 to i64
  %25 = sub i64 %24, %18
  tail call void @Perl_sv_setpvn(ptr noundef %17, ptr noundef nonnull %16, i64 noundef %25) #21
  %26 = add nuw i64 %15, 1
  %27 = tail call ptr @Perl_av_store(ptr noundef %0, i64 noundef %15, ptr noundef %17) #21
  %28 = icmp ult ptr %23, %8
  br i1 %28, label %14, label %29, !llvm.loop !878

29:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_savepvn(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_delete(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_leaveeval() local_unnamed_addr #0 !prof !848 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5
  %4 = load i8, ptr %3, align 2, !tbaa !428
  %5 = load i32, ptr @PL_sig_pending, align 4, !tbaa !430
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !859

7:                                                ; preds = %0
  %8 = load ptr, ptr @PL_signalhook, align 8, !tbaa !385
  tail call void %8() #21
  br label %9

9:                                                ; preds = %0, %7
  %10 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %11 = getelementptr inbounds %struct.stackinfo, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !395
  %13 = getelementptr inbounds %struct.stackinfo, ptr %10, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !397
  %15 = add nsw i32 %14, -1
  store i32 %15, ptr %13, align 8, !tbaa !397
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds %struct.context, ptr %12, i64 %16
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %19 = getelementptr inbounds %struct.block, ptr %17, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !398
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %18, i64 %21
  %23 = getelementptr inbounds %struct.block, ptr %17, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !398
  store ptr %24, ptr @PL_curcop, align 8, !tbaa !385
  %25 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %26 = getelementptr inbounds %struct.block, ptr %17, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !398
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %25, i64 %28
  store ptr %29, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %30 = getelementptr inbounds %struct.block, ptr %17, i64 0, i32 6
  %31 = load i32, ptr %30, align 4, !tbaa !398
  store i32 %31, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %32 = getelementptr inbounds %struct.block, ptr %17, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !398
  %34 = getelementptr inbounds %struct.block, ptr %17, i64 0, i32 1
  %35 = load i8, ptr %34, align 1, !tbaa !398
  %36 = zext i8 %35 to i32
  %37 = getelementptr inbounds %struct.block, ptr %17, i64 0, i32 2
  %38 = load i16, ptr %37, align 2, !tbaa !398
  %39 = trunc i16 %38 to i8
  %40 = and i8 %39, 127
  store i8 %40, ptr @PL_in_eval, align 1, !tbaa !398
  %41 = load i16, ptr %37, align 2, !tbaa !398
  %42 = getelementptr inbounds %struct.block, ptr %17, i64 0, i32 8
  %43 = getelementptr inbounds %struct.block, ptr %17, i64 0, i32 8, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !398
  store ptr %44, ptr @PL_eval_root, align 8, !tbaa !385
  %45 = getelementptr inbounds %struct.block, ptr %17, i64 0, i32 8, i32 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !398
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48, !prof !851

48:                                               ; preds = %9
  %49 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !452
  %51 = and i32 %50, 49152
  %52 = icmp eq i32 %51, 49152
  br i1 %52, label %53, label %54, !prof !851

53:                                               ; preds = %48
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %46) #22
  br label %54

54:                                               ; preds = %53, %48, %9
  %55 = getelementptr inbounds %struct.block, ptr %17, i64 0, i32 8, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !398
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58, !prof !860

58:                                               ; preds = %54
  %59 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %56) #21
  %60 = load ptr, ptr %55, align 8, !tbaa !398
  br label %61

61:                                               ; preds = %58, %54
  %62 = phi ptr [ %60, %58 ], [ null, %54 ]
  %63 = load ptr, ptr %42, align 8, !tbaa !398
  %64 = getelementptr inbounds %struct.block, ptr %17, i64 0, i32 8, i32 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !398
  %66 = icmp eq i8 %35, 1
  %67 = select i1 %66, ptr %1, ptr %22, !prof !879
  %68 = tail call fastcc ptr @S_leave_common(ptr noundef %67, ptr noundef %1, ptr noundef %22, i32 noundef %36, i32 noundef 524288, i1 noundef zeroext false) #22
  store ptr %33, ptr @PL_curpm, align 8, !tbaa !385
  %69 = tail call fastcc ptr @S_CvDEPTHp(ptr noundef %65) #22
  store i32 0, ptr %69, align 4, !tbaa !430
  %70 = and i16 %41, -128
  %71 = icmp eq i16 %70, -22144
  br i1 %71, label %72, label %162, !prof !850

72:                                               ; preds = %61
  %73 = icmp eq i8 %35, 2
  br i1 %73, label %74, label %131, !prof !818

74:                                               ; preds = %72
  %75 = load ptr, ptr %68, align 8, !tbaa !385
  %76 = icmp eq ptr %75, null
  br i1 %76, label %133, label %77, !prof !817

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.sv, ptr %75, i64 0, i32 2
  %79 = load i32, ptr %78, align 4, !tbaa !452
  %80 = and i32 %79, 2097152
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82, !prof !817

82:                                               ; preds = %77
  %83 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %75, i32 noundef 2) #21
  br i1 %83, label %162, label %133

84:                                               ; preds = %77
  %85 = and i32 %79, 65280
  %86 = icmp ne i32 %85, 0
  %87 = and i32 %79, 255
  %88 = icmp eq i32 %87, 8
  %89 = or i1 %86, %88
  %90 = and i32 %79, 16777471
  %91 = icmp eq i32 %90, 16777226
  %92 = or i1 %91, %89
  br i1 %92, label %93, label %133

93:                                               ; preds = %84
  %94 = and i32 %79, 1024
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %110, label %96, !prof !818

96:                                               ; preds = %93
  %97 = load ptr, ptr %75, align 8, !tbaa !487
  %98 = icmp eq ptr %97, null
  br i1 %98, label %133, label %99, !prof !880

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.xpv, ptr %97, i64 0, i32 2
  %101 = load i64, ptr %100, align 8, !tbaa !458
  %102 = icmp ugt i64 %101, 1
  br i1 %102, label %162, label %103, !prof !881

103:                                              ; preds = %99
  %104 = icmp eq i64 %101, 0
  br i1 %104, label %133, label %105, !prof !882

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.sv, ptr %75, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !398
  %108 = load i8, ptr %107, align 1, !tbaa !398
  %109 = icmp eq i8 %108, 48
  br i1 %109, label %133, label %162, !prof !883

110:                                              ; preds = %93
  %111 = and i32 %79, 768
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %129, label %113, !prof !884

113:                                              ; preds = %110
  %114 = and i32 %79, 256
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %121, label %116, !prof !885

116:                                              ; preds = %113
  %117 = load ptr, ptr %75, align 8, !tbaa !487
  %118 = getelementptr inbounds %struct.xpviv, ptr %117, i64 0, i32 4
  %119 = load i64, ptr %118, align 8, !tbaa !398
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %162, !prof !884

121:                                              ; preds = %116, %113
  %122 = and i32 %79, 512
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr %75, align 8, !tbaa !487
  %126 = getelementptr inbounds %struct.xpvnv, ptr %125, i64 0, i32 5
  %127 = load double, ptr %126, align 8, !tbaa !398
  %128 = fcmp une double %127, 0.000000e+00
  br i1 %128, label %162, label %133, !prof !886

129:                                              ; preds = %110
  %130 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %75, i32 noundef 0) #21
  br i1 %130, label %162, label %133, !prof !882

131:                                              ; preds = %72
  %132 = icmp ugt ptr %68, %22
  br i1 %132, label %162, label %133, !prof !817

133:                                              ; preds = %124, %84, %74, %131, %129, %121, %105, %103, %96, %82
  %134 = load ptr, ptr @PL_incgv, align 8, !tbaa !385
  %135 = getelementptr inbounds %struct.gv, ptr %134, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !398
  %137 = getelementptr inbounds %struct.gp, ptr %136, i64 0, i32 5
  %138 = load ptr, ptr %137, align 8, !tbaa !631
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %133
  %141 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %134, i32 noundef 12) #21
  %142 = getelementptr inbounds %struct.gv, ptr %141, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !398
  %144 = getelementptr inbounds %struct.gp, ptr %143, i64 0, i32 5
  %145 = load ptr, ptr %144, align 8, !tbaa !631
  br label %146

146:                                              ; preds = %133, %140
  %147 = phi ptr [ %145, %140 ], [ %138, %133 ]
  %148 = getelementptr inbounds %struct.sv, ptr %62, i64 0, i32 3
  %149 = load ptr, ptr %148, align 8, !tbaa !398
  %150 = getelementptr inbounds %struct.sv, ptr %62, i64 0, i32 2
  %151 = load i32, ptr %150, align 4, !tbaa !452
  %152 = and i32 %151, 536870912
  %153 = icmp eq i32 %152, 0
  %154 = load ptr, ptr %62, align 8, !tbaa !487
  %155 = getelementptr inbounds %struct.xpv, ptr %154, i64 0, i32 2
  %156 = load i64, ptr %155, align 8, !tbaa !458
  %157 = trunc i64 %156 to i32
  %158 = sub nsw i32 0, %157
  %159 = select i1 %153, i32 %157, i32 %158
  %160 = tail call ptr @Perl_hv_common_key_len(ptr noundef %147, ptr noundef %149, i32 noundef %159, i32 noundef 68, ptr noundef null, i32 noundef 0) #21
  %161 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.28, ptr noundef nonnull %62) #21
  br label %186

162:                                              ; preds = %131, %129, %124, %116, %105, %99, %82, %61
  tail call void @Perl_pop_scope() #21
  %163 = icmp sgt i8 %4, -1
  br i1 %163, label %164, label %186, !prof !859

164:                                              ; preds = %162
  %165 = load ptr, ptr @PL_errgv, align 8, !tbaa !385
  %166 = getelementptr inbounds %struct.gv, ptr %165, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !398
  %168 = load ptr, ptr %167, align 8, !tbaa !385
  %169 = icmp eq ptr %168, null
  br i1 %169, label %176, label %170, !prof !851

170:                                              ; preds = %164
  %171 = getelementptr inbounds %struct.sv, ptr %168, i64 0, i32 2
  %172 = load i32, ptr %171, align 4, !tbaa !452
  %173 = and i32 %172, 134283264
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %178, label %175, !prof !859

175:                                              ; preds = %170
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %168) #22
  br label %176

176:                                              ; preds = %164, %175
  %177 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.8, i64 noundef 0) #21
  store ptr %177, ptr %167, align 8, !tbaa !385
  br label %186

178:                                              ; preds = %170
  tail call void @Perl_sv_setpvn(ptr noundef nonnull %168, ptr noundef nonnull @.str.8, i64 noundef 0) #21
  %179 = load i32, ptr %171, align 4, !tbaa !452
  %180 = and i32 %179, 1610547455
  %181 = or disjoint i32 %180, 17408
  store i32 %181, ptr %171, align 4, !tbaa !452
  %182 = and i32 %179, 14680064
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %186, label %184, !prof !859

184:                                              ; preds = %178
  %185 = tail call i32 @Perl_mg_free(ptr noundef nonnull %168) #21
  br label %186

186:                                              ; preds = %176, %184, %178, %162, %146
  store ptr %68, ptr @PL_stack_sp, align 8, !tbaa !385
  ret ptr %63
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_delete_eval_scope() local_unnamed_addr #0 !prof !887 {
  %1 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %2 = getelementptr inbounds %struct.stackinfo, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !395
  %4 = getelementptr inbounds %struct.stackinfo, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !397
  %6 = add nsw i32 %5, -1
  store i32 %6, ptr %4, align 8, !tbaa !397
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds %struct.context, ptr %3, i64 %7
  %9 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !398
  store ptr %10, ptr @PL_curcop, align 8, !tbaa !385
  %11 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %12 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !398
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %11, i64 %14
  store ptr %15, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %16 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 6
  %17 = load i32, ptr %16, align 4, !tbaa !398
  store i32 %17, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %18 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !398
  %20 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 2
  %21 = load i16, ptr %20, align 2, !tbaa !398
  %22 = trunc i16 %21 to i8
  %23 = and i8 %22, 127
  store i8 %23, ptr @PL_in_eval, align 1, !tbaa !398
  %24 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 8, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !398
  store ptr %25, ptr @PL_eval_root, align 8, !tbaa !385
  %26 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 8, i32 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !398
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29, !prof !888

29:                                               ; preds = %0
  %30 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !452
  %32 = and i32 %31, 49152
  %33 = icmp eq i32 %32, 49152
  br i1 %33, label %34, label %35, !prof !889

34:                                               ; preds = %29
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %27) #22
  br label %35

35:                                               ; preds = %34, %29, %0
  %36 = getelementptr inbounds %struct.block, ptr %8, i64 0, i32 8, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !398
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39, !prof !890

39:                                               ; preds = %35
  %40 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %37) #21
  br label %41

41:                                               ; preds = %39, %35
  store ptr %19, ptr @PL_curpm, align 8, !tbaa !385
  tail call void @Perl_pop_scope() #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @Perl_create_eval_scope(i32 noundef %0) local_unnamed_addr #0 !prof !891 {
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5
  %4 = load i8, ptr %3, align 2, !tbaa !428
  %5 = and i8 %4, 3
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10, !prof !892

7:                                                ; preds = %1
  %8 = tail call i32 @Perl_block_gimme() #22, !range !553
  %9 = trunc i32 %8 to i8
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi i8 [ %9, %7 ], [ %5, %1 ]
  tail call void @Perl_push_scope() #21
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #21
  %12 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  store i64 %12, ptr @PL_tmps_floor, align 8, !tbaa !509
  %13 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %14 = getelementptr inbounds %struct.stackinfo, ptr %13, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !397
  %16 = getelementptr inbounds %struct.stackinfo, ptr %13, i64 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !663
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %21, !prof !893

19:                                               ; preds = %10
  %20 = add nsw i32 %15, 1
  store i32 %20, ptr %14, align 8, !tbaa !397
  br label %25

21:                                               ; preds = %10
  %22 = tail call i32 @Perl_cxinc() #21
  %23 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %24 = getelementptr inbounds %struct.stackinfo, ptr %23, i64 0, i32 4
  store i32 %22, ptr %24, align 8, !tbaa !397
  br label %25

25:                                               ; preds = %21, %19
  %26 = phi i32 [ %22, %21 ], [ %20, %19 ]
  %27 = phi ptr [ %23, %21 ], [ %13, %19 ]
  %28 = getelementptr inbounds %struct.stackinfo, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !395
  %30 = sext i32 %26 to i64
  %31 = getelementptr inbounds %struct.context, ptr %29, i64 %30
  store i8 74, ptr %31, align 8, !tbaa !398
  %32 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %33 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %34 = ptrtoint ptr %32 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = lshr exact i64 %36, 3
  %38 = trunc i64 %37 to i32
  %39 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 3
  store i32 %38, ptr %39, align 4, !tbaa !398
  %40 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %41 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 4
  store ptr %40, ptr %41, align 8, !tbaa !398
  %42 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %43 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %44 = ptrtoint ptr %42 to i64
  %45 = ptrtoint ptr %43 to i64
  %46 = sub i64 %44, %45
  %47 = lshr exact i64 %46, 2
  %48 = trunc i64 %47 to i32
  %49 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 5
  store i32 %48, ptr %49, align 8, !tbaa !398
  %50 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %51 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 6
  store i32 %50, ptr %51, align 4, !tbaa !398
  %52 = load ptr, ptr @PL_curpm, align 8, !tbaa !385
  %53 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 7
  store ptr %52, ptr %53, align 8, !tbaa !398
  %54 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 1
  store i8 %11, ptr %54, align 1, !tbaa !398
  %55 = load i8, ptr @PL_in_eval, align 1, !tbaa !398
  %56 = and i8 %55, 127
  %57 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %58 = getelementptr inbounds %struct.op, ptr %57, i64 0, i32 4
  %59 = load i16, ptr %58, align 8
  %60 = shl i16 %59, 7
  %61 = zext nneg i8 %56 to i16
  %62 = or disjoint i16 %60, %61
  %63 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 2
  store i16 %62, ptr %63, align 2, !tbaa !398
  %64 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 8
  %65 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 8, i32 0, i32 1
  store ptr null, ptr %65, align 8, !tbaa !398
  %66 = load ptr, ptr @PL_eval_root, align 8, !tbaa !385
  %67 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 8, i32 0, i32 2
  store ptr %66, ptr %67, align 8, !tbaa !398
  %68 = load ptr, ptr @PL_parser, align 8, !tbaa !385
  %69 = icmp eq ptr %68, null
  br i1 %69, label %73, label %70, !prof !894

70:                                               ; preds = %25
  %71 = getelementptr inbounds %struct.yy_parser, ptr %68, i64 0, i32 33
  %72 = load ptr, ptr %71, align 8, !tbaa !832
  br label %73

73:                                               ; preds = %25, %70
  %74 = phi ptr [ %72, %70 ], [ null, %25 ]
  %75 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 8, i32 0, i32 3
  store ptr %74, ptr %75, align 8, !tbaa !398
  %76 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 8, i32 0, i32 4
  store ptr null, ptr %76, align 8, !tbaa !398
  store ptr null, ptr %64, align 8, !tbaa !398
  %77 = load ptr, ptr @PL_top_env, align 8, !tbaa !385
  %78 = getelementptr inbounds %struct.block, ptr %31, i64 0, i32 8, i32 0, i32 5
  store ptr %77, ptr %78, align 8, !tbaa !398
  store i8 1, ptr @PL_in_eval, align 1, !tbaa !398
  %79 = and i32 %0, 32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81, !prof !893

81:                                               ; preds = %73
  store i8 5, ptr @PL_in_eval, align 1, !tbaa !398
  br label %104

82:                                               ; preds = %73
  %83 = load ptr, ptr @PL_errgv, align 8, !tbaa !385
  %84 = getelementptr inbounds %struct.gv, ptr %83, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !398
  %86 = load ptr, ptr %85, align 8, !tbaa !385
  %87 = icmp eq ptr %86, null
  br i1 %87, label %94, label %88, !prof !892

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.sv, ptr %86, i64 0, i32 2
  %90 = load i32, ptr %89, align 4, !tbaa !452
  %91 = and i32 %90, 134283264
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93, !prof !893

93:                                               ; preds = %88
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %86) #22
  br label %94

94:                                               ; preds = %82, %93
  %95 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.8, i64 noundef 0) #21
  store ptr %95, ptr %85, align 8, !tbaa !385
  br label %104

96:                                               ; preds = %88
  tail call void @Perl_sv_setpvn(ptr noundef nonnull %86, ptr noundef nonnull @.str.8, i64 noundef 0) #21
  %97 = load i32, ptr %89, align 4, !tbaa !452
  %98 = and i32 %97, 1610547455
  %99 = or disjoint i32 %98, 17408
  store i32 %99, ptr %89, align 4, !tbaa !452
  %100 = and i32 %97, 14680064
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102, !prof !893

102:                                              ; preds = %96
  %103 = tail call i32 @Perl_mg_free(ptr noundef nonnull %86) #21
  br label %104

104:                                              ; preds = %94, %102, %96, %81
  %105 = and i32 %0, 256
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107, !prof !895

107:                                              ; preds = %104
  %108 = load ptr, ptr @PL_op, align 8, !tbaa !385
  store ptr %108, ptr @PL_eval_root, align 8, !tbaa !385
  br label %109

109:                                              ; preds = %107, %104
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_entertry() local_unnamed_addr #0 !prof !896 {
  %1 = tail call ptr @Perl_create_eval_scope(i32 noundef 0) #22
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %3 = getelementptr inbounds %struct.logop, ptr %2, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !426
  %5 = load ptr, ptr %4, align 8, !tbaa !400
  %6 = getelementptr inbounds %struct.block, ptr %1, i64 0, i32 8
  store ptr %5, ptr %6, align 8, !tbaa !398
  %7 = load ptr, ptr @PL_top_env, align 8, !tbaa !385
  %8 = getelementptr inbounds %struct.jmpenv, ptr %7, i64 0, i32 3
  %9 = load i8, ptr %8, align 4, !tbaa !833, !range !444, !noundef !445
  %10 = icmp eq i8 %9, 0
  %11 = load ptr, ptr %2, align 8, !tbaa !400
  br i1 %10, label %13, label %12, !prof !897

12:                                               ; preds = %0
  tail call fastcc void @S_docatch(ptr noundef %11) #22
  br label %13

13:                                               ; preds = %0, %12
  %14 = phi ptr [ null, %12 ], [ %11, %0 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_leavetry() local_unnamed_addr #0 !prof !898 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %2 = load i32, ptr @PL_sig_pending, align 4, !tbaa !430
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4, !prof !899

4:                                                ; preds = %0
  %5 = load ptr, ptr @PL_signalhook, align 8, !tbaa !385
  tail call void %5() #21
  br label %6

6:                                                ; preds = %0, %4
  %7 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %8 = getelementptr inbounds %struct.stackinfo, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !395
  %10 = getelementptr inbounds %struct.stackinfo, ptr %7, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !397
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr %10, align 8, !tbaa !397
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds %struct.context, ptr %9, i64 %13
  %15 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %16 = getelementptr inbounds %struct.block, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !398
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds ptr, ptr %15, i64 %18
  %20 = getelementptr inbounds %struct.block, ptr %14, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !398
  store ptr %21, ptr @PL_curcop, align 8, !tbaa !385
  %22 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %23 = getelementptr inbounds %struct.block, ptr %14, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !398
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %22, i64 %25
  store ptr %26, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %27 = getelementptr inbounds %struct.block, ptr %14, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !398
  store i32 %28, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %29 = getelementptr inbounds %struct.block, ptr %14, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !398
  %31 = getelementptr inbounds %struct.block, ptr %14, i64 0, i32 1
  %32 = load i8, ptr %31, align 1, !tbaa !398
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds %struct.block, ptr %14, i64 0, i32 2
  %35 = load i16, ptr %34, align 2, !tbaa !398
  %36 = trunc i16 %35 to i8
  %37 = and i8 %36, 127
  store i8 %37, ptr @PL_in_eval, align 1, !tbaa !398
  %38 = getelementptr inbounds %struct.block, ptr %14, i64 0, i32 8, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !398
  store ptr %39, ptr @PL_eval_root, align 8, !tbaa !385
  %40 = getelementptr inbounds %struct.block, ptr %14, i64 0, i32 8, i32 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !398
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43, !prof !900

43:                                               ; preds = %6
  %44 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !452
  %46 = and i32 %45, 49152
  %47 = icmp eq i32 %46, 49152
  br i1 %47, label %48, label %49, !prof !901

48:                                               ; preds = %43
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %41) #22
  br label %49

49:                                               ; preds = %48, %43, %6
  %50 = getelementptr inbounds %struct.block, ptr %14, i64 0, i32 8, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !398
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53, !prof !899

53:                                               ; preds = %49
  %54 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %51) #21
  br label %55

55:                                               ; preds = %53, %49
  %56 = tail call fastcc ptr @S_leave_common(ptr noundef %19, ptr noundef %1, ptr noundef %19, i32 noundef %33, i32 noundef 655360, i1 noundef zeroext false) #22
  store ptr %30, ptr @PL_curpm, align 8, !tbaa !385
  tail call void @Perl_pop_scope() #21
  %57 = load ptr, ptr @PL_errgv, align 8, !tbaa !385
  %58 = getelementptr inbounds %struct.gv, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !398
  %60 = load ptr, ptr %59, align 8, !tbaa !385
  %61 = icmp eq ptr %60, null
  br i1 %61, label %68, label %62, !prof !902

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.sv, ptr %60, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !452
  %65 = and i32 %64, 134283264
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67, !prof !899

67:                                               ; preds = %62
  tail call fastcc void @S_SvREFCNT_dec_NN(ptr noundef nonnull %60) #22
  br label %68

68:                                               ; preds = %55, %67
  %69 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.8, i64 noundef 0) #21
  store ptr %69, ptr %59, align 8, !tbaa !385
  br label %78

70:                                               ; preds = %62
  tail call void @Perl_sv_setpvn(ptr noundef nonnull %60, ptr noundef nonnull @.str.8, i64 noundef 0) #21
  %71 = load i32, ptr %63, align 4, !tbaa !452
  %72 = and i32 %71, 1610547455
  %73 = or disjoint i32 %72, 17408
  store i32 %73, ptr %63, align 4, !tbaa !452
  %74 = and i32 %71, 14680064
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76, !prof !899

76:                                               ; preds = %70
  %77 = tail call i32 @Perl_mg_free(ptr noundef nonnull %60) #21
  br label %78

78:                                               ; preds = %70, %76, %68
  store ptr %56, ptr @PL_stack_sp, align 8, !tbaa !385
  %79 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %80 = load ptr, ptr %79, align 8, !tbaa !400
  ret ptr %80
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_entergiven() local_unnamed_addr #0 !prof !422 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5
  %4 = load i8, ptr %3, align 2, !tbaa !428
  %5 = and i8 %4, 3
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = tail call i32 @Perl_block_gimme() #22, !range !553
  %9 = trunc i32 %8 to i8
  br label %10

10:                                               ; preds = %0, %7
  %11 = phi i8 [ %9, %7 ], [ %5, %0 ]
  tail call void @Perl_push_scope() #21
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #21
  %12 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  store i64 %12, ptr @PL_tmps_floor, align 8, !tbaa !509
  %13 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %14 = getelementptr inbounds %struct.op, ptr %13, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !442
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %10
  tail call void @Perl_save_padsv_and_mortalize(i64 noundef %15) #21
  %18 = load ptr, ptr @PL_curpad, align 8, !tbaa !385
  %19 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %20 = getelementptr inbounds %struct.op, ptr %19, i64 0, i32 3
  %21 = load i64, ptr %20, align 8, !tbaa !442
  %22 = getelementptr inbounds ptr, ptr %18, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !385
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %23) #22
  %24 = load ptr, ptr %1, align 8, !tbaa !385
  %25 = tail call fastcc ptr @S_SvREFCNT_inc_NN(ptr noundef %24) #22
  %26 = load ptr, ptr @PL_curpad, align 8, !tbaa !385
  %27 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %28 = getelementptr inbounds %struct.op, ptr %27, i64 0, i32 3
  %29 = load i64, ptr %28, align 8, !tbaa !442
  %30 = getelementptr inbounds ptr, ptr %26, i64 %29
  store ptr %24, ptr %30, align 8, !tbaa !385
  br label %52

31:                                               ; preds = %10
  %32 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  tail call void @Perl_save_gp(ptr noundef %32, i32 noundef 0) #21
  %33 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %34 = load ptr, ptr %33, align 8, !tbaa !555
  %35 = getelementptr inbounds %struct.xpvgv, ptr %34, i64 0, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !557
  %37 = and i64 %36, -2
  store i64 %37, ptr %35, align 8, !tbaa !557
  %38 = getelementptr inbounds %struct.gv, ptr %33, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !398
  tail call void @Perl_save_generic_svref(ptr noundef %39) #21
  %40 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %41 = getelementptr inbounds %struct.gv, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !398
  store ptr null, ptr %42, align 8, !tbaa !451
  %43 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %44 = getelementptr inbounds %struct.gv, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !398
  %46 = load ptr, ptr %45, align 8, !tbaa !451
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %46) #22
  %47 = load ptr, ptr %1, align 8, !tbaa !385
  %48 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %47) #22
  %49 = load ptr, ptr @PL_defgv, align 8, !tbaa !385
  %50 = getelementptr inbounds %struct.gv, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !398
  store ptr %47, ptr %51, align 8, !tbaa !451
  br label %52

52:                                               ; preds = %31, %17
  %53 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %54 = getelementptr inbounds %struct.stackinfo, ptr %53, i64 0, i32 4
  %55 = load i32, ptr %54, align 8, !tbaa !397
  %56 = getelementptr inbounds %struct.stackinfo, ptr %53, i64 0, i32 5
  %57 = load i32, ptr %56, align 4, !tbaa !663
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = add nsw i32 %55, 1
  store i32 %60, ptr %54, align 8, !tbaa !397
  br label %65

61:                                               ; preds = %52
  %62 = tail call i32 @Perl_cxinc() #21
  %63 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %64 = getelementptr inbounds %struct.stackinfo, ptr %63, i64 0, i32 4
  store i32 %62, ptr %64, align 8, !tbaa !397
  br label %65

65:                                               ; preds = %61, %59
  %66 = phi i32 [ %62, %61 ], [ %60, %59 ]
  %67 = phi ptr [ %63, %61 ], [ %53, %59 ]
  %68 = getelementptr inbounds ptr, ptr %1, i64 -1
  %69 = getelementptr inbounds %struct.stackinfo, ptr %67, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !395
  %71 = sext i32 %66 to i64
  %72 = getelementptr inbounds %struct.context, ptr %70, i64 %71
  store i8 3, ptr %72, align 8, !tbaa !398
  %73 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %74 = ptrtoint ptr %68 to i64
  %75 = ptrtoint ptr %73 to i64
  %76 = sub i64 %74, %75
  %77 = lshr exact i64 %76, 3
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds %struct.block, ptr %72, i64 0, i32 3
  store i32 %78, ptr %79, align 4, !tbaa !398
  %80 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %81 = getelementptr inbounds %struct.block, ptr %72, i64 0, i32 4
  store ptr %80, ptr %81, align 8, !tbaa !398
  %82 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %83 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %84 = ptrtoint ptr %82 to i64
  %85 = ptrtoint ptr %83 to i64
  %86 = sub i64 %84, %85
  %87 = lshr exact i64 %86, 2
  %88 = trunc i64 %87 to i32
  %89 = getelementptr inbounds %struct.block, ptr %72, i64 0, i32 5
  store i32 %88, ptr %89, align 8, !tbaa !398
  %90 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %91 = getelementptr inbounds %struct.block, ptr %72, i64 0, i32 6
  store i32 %90, ptr %91, align 4, !tbaa !398
  %92 = load ptr, ptr @PL_curpm, align 8, !tbaa !385
  %93 = getelementptr inbounds %struct.block, ptr %72, i64 0, i32 7
  store ptr %92, ptr %93, align 8, !tbaa !398
  %94 = getelementptr inbounds %struct.block, ptr %72, i64 0, i32 1
  store i8 %11, ptr %94, align 1, !tbaa !398
  %95 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %96 = getelementptr inbounds %struct.logop, ptr %95, i64 0, i32 8
  %97 = load ptr, ptr %96, align 8, !tbaa !426
  %98 = getelementptr inbounds %struct.block, ptr %72, i64 0, i32 8
  store ptr %97, ptr %98, align 8, !tbaa !398
  store ptr %68, ptr @PL_stack_sp, align 8, !tbaa !385
  %99 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %100 = load ptr, ptr %99, align 8, !tbaa !400
  ret ptr %100
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_leavegiven() local_unnamed_addr #0 !prof !422 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %2 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %3 = getelementptr inbounds %struct.stackinfo, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !395
  %5 = getelementptr inbounds %struct.stackinfo, ptr %2, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !397
  %7 = add nsw i32 %6, -1
  store i32 %7, ptr %5, align 8, !tbaa !397
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds %struct.context, ptr %4, i64 %8
  %10 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %11 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !398
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  %15 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !398
  store ptr %16, ptr @PL_curcop, align 8, !tbaa !385
  %17 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %18 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !398
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %17, i64 %20
  store ptr %21, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %22 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !398
  store i32 %23, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %24 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !398
  %26 = getelementptr inbounds %struct.block, ptr %9, i64 0, i32 1
  %27 = load i8, ptr %26, align 1, !tbaa !398
  %28 = zext i8 %27 to i32
  %29 = tail call fastcc ptr @S_leave_common(ptr noundef %14, ptr noundef %1, ptr noundef %14, i32 noundef %28, i32 noundef 655360, i1 noundef zeroext false) #22
  store ptr %25, ptr @PL_curpm, align 8, !tbaa !385
  tail call void @Perl_pop_scope() #21
  store ptr %29, ptr @PL_stack_sp, align 8, !tbaa !385
  %30 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %31 = load ptr, ptr %30, align 8, !tbaa !400
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_smartmatch() local_unnamed_addr #0 !prof !422 {
  %1 = tail call fastcc ptr @S_do_smartmatch(ptr noundef null, ptr noundef null, i1 noundef zeroext false) #22
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_do_smartmatch(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 !prof !422 !PGOFuncName !903 {
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %5 = load ptr, ptr %4, align 8, !tbaa !385
  %6 = getelementptr inbounds ptr, ptr %4, i64 -1
  %7 = load ptr, ptr %6, align 8, !tbaa !385
  %8 = icmp eq ptr %7, null
  %9 = or i1 %8, %2
  %10 = select i1 %8, ptr @PL_sv_undef, ptr %7
  br i1 %9, label %18, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !452
  %14 = and i32 %13, 2097152
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %7, i32 noundef 1538) #21
  br label %18

18:                                               ; preds = %3, %11, %16
  %19 = phi ptr [ %17, %16 ], [ %7, %11 ], [ %10, %3 ]
  %20 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !452
  %22 = and i32 %21, 2097152
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %5, i32 noundef 1538) #21
  %26 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !452
  br label %28

28:                                               ; preds = %24, %18
  %29 = phi i32 [ %27, %24 ], [ %21, %18 ]
  %30 = phi ptr [ %25, %24 ], [ %5, %18 ]
  %31 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 2
  %32 = and i32 %29, 2048
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %58, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !398
  %37 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !452
  %39 = and i32 %38, 1048576
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %34
  %42 = load ptr, ptr %36, align 8, !tbaa !487
  %43 = load ptr, ptr %42, align 8, !tbaa !904
  %44 = getelementptr inbounds %struct.hv, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !641
  %46 = and i32 %45, 268435456
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %41
  %49 = tail call ptr @Perl_amagic_call(ptr noundef %19, ptr noundef nonnull %30, i32 noundef 72, i32 noundef 2) #21
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, ptr %31, align 4, !tbaa !452
  br label %58

53:                                               ; preds = %48
  %54 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %55 = getelementptr inbounds ptr, ptr %54, i64 -1
  store ptr %49, ptr %55, align 8, !tbaa !385
  store ptr %55, ptr @PL_stack_sp, align 8, !tbaa !385
  %56 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %57 = load ptr, ptr %56, align 8, !tbaa !400
  br label %1087

58:                                               ; preds = %51, %41, %34, %28
  %59 = phi i32 [ %52, %51 ], [ %29, %41 ], [ %29, %34 ], [ %29, %28 ]
  %60 = getelementptr inbounds ptr, ptr %4, i64 -2
  store ptr %60, ptr @PL_stack_sp, align 8, !tbaa !385
  %61 = and i32 %59, 65280
  %62 = icmp ne i32 %61, 0
  %63 = and i32 %59, 255
  %64 = icmp eq i32 %63, 8
  %65 = or i1 %62, %64
  %66 = and i32 %59, 16777471
  %67 = icmp eq i32 %66, 16777226
  %68 = or i1 %67, %65
  br i1 %68, label %86, label %69

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !452
  %72 = and i32 %71, 65280
  %73 = icmp ne i32 %72, 0
  %74 = and i32 %71, 255
  %75 = icmp eq i32 %74, 8
  %76 = or i1 %73, %75
  %77 = and i32 %71, 16777471
  %78 = icmp eq i32 %77, 16777226
  %79 = or i1 %78, %76
  br i1 %79, label %80, label %83

80:                                               ; preds = %69
  store ptr @PL_sv_no, ptr %6, align 8, !tbaa !385
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !385
  %81 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %82 = load ptr, ptr %81, align 8, !tbaa !400
  br label %1087

83:                                               ; preds = %69
  store ptr @PL_sv_yes, ptr %6, align 8, !tbaa !385
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !385
  %84 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %85 = load ptr, ptr %84, align 8, !tbaa !400
  br label %1087

86:                                               ; preds = %58
  %87 = tail call i32 @Perl_sv_isobject(ptr noundef nonnull %30) #21
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !398
  %92 = getelementptr inbounds %struct.sv, ptr %91, i64 0, i32 2
  %93 = load i32, ptr %92, align 4, !tbaa !452
  %94 = and i32 %93, 255
  %95 = icmp eq i32 %94, 8
  br i1 %95, label %97, label %96

96:                                               ; preds = %89
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.108) #21
  br label %97

97:                                               ; preds = %96, %89, %86
  %98 = tail call i32 @Perl_sv_isobject(ptr noundef %19) #21
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !398
  %103 = getelementptr inbounds %struct.sv, ptr %102, i64 0, i32 2
  %104 = load i32, ptr %103, align 4, !tbaa !452
  %105 = and i32 %104, 255
  %106 = icmp ne i32 %105, 8
  br label %107

107:                                              ; preds = %100, %97
  %108 = phi i1 [ false, %97 ], [ %106, %100 ]
  %109 = load i32, ptr %31, align 4, !tbaa !452
  %110 = and i32 %109, 2048
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %954, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !398
  %115 = getelementptr inbounds %struct.sv, ptr %114, i64 0, i32 2
  %116 = load i32, ptr %115, align 4, !tbaa !452
  %117 = trunc i32 %116 to i8
  switch i8 %117, label %954 [
    i8 13, label %118
    i8 12, label %398
    i8 11, label %579
    i8 8, label %934
  ]

118:                                              ; preds = %112
  br i1 %108, label %359, label %119

119:                                              ; preds = %118
  %120 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %121 = load i32, ptr %120, align 4, !tbaa !452
  %122 = and i32 %121, 2048
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %359, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !398
  %127 = getelementptr inbounds %struct.sv, ptr %126, i64 0, i32 2
  %128 = load i32, ptr %127, align 4, !tbaa !452
  %129 = trunc i32 %128 to i8
  switch i8 %129, label %359 [
    i8 12, label %130
    i8 11, label %241
  ]

130:                                              ; preds = %124
  %131 = tail call i32 @Perl_hv_iterinit(ptr noundef nonnull %126) #21
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %126, i32 noundef 0) #21
  %135 = icmp eq ptr %134, null
  br i1 %135, label %236, label %137

136:                                              ; preds = %130
  store ptr @PL_sv_yes, ptr %6, align 8, !tbaa !385
  br label %394

137:                                              ; preds = %133, %231
  %138 = phi ptr [ %232, %231 ], [ %134, %133 ]
  %139 = phi ptr [ %226, %231 ], [ %60, %133 ]
  %140 = phi i8 [ %225, %231 ], [ 1, %133 ]
  tail call void @Perl_push_scope() #21
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #21
  %141 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  store i64 %141, ptr @PL_tmps_floor, align 8, !tbaa !509
  %142 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %143 = getelementptr inbounds i32, ptr %142, i64 1
  store ptr %143, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %144 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !385
  %145 = icmp eq ptr %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %137
  %147 = tail call ptr @Perl_markstack_grow() #21
  br label %148

148:                                              ; preds = %137, %146
  %149 = phi ptr [ %147, %146 ], [ %143, %137 ]
  %150 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %151 = ptrtoint ptr %139 to i64
  %152 = ptrtoint ptr %150 to i64
  %153 = sub i64 %151, %152
  %154 = lshr exact i64 %153, 3
  %155 = trunc i64 %154 to i32
  store i32 %155, ptr %149, align 4, !tbaa !430
  %156 = tail call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %138) #21
  %157 = getelementptr inbounds ptr, ptr %139, i64 1
  store ptr %156, ptr %157, align 8, !tbaa !385
  store ptr %157, ptr @PL_stack_sp, align 8, !tbaa !385
  %158 = tail call i32 @Perl_call_sv(ptr noundef %30, i32 noundef 2) #21
  %159 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %160 = icmp eq i32 %158, 0
  br i1 %160, label %224, label %161

161:                                              ; preds = %148
  %162 = getelementptr inbounds ptr, ptr %159, i64 -1
  %163 = load ptr, ptr %159, align 8, !tbaa !385
  store ptr %163, ptr @PL_Sv, align 8, !tbaa !385
  %164 = icmp eq ptr %163, null
  br i1 %164, label %221, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.sv, ptr %163, i64 0, i32 2
  %167 = load i32, ptr %166, align 4, !tbaa !452
  %168 = and i32 %167, 2097152
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %172, label %170

170:                                              ; preds = %165
  %171 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %163, i32 noundef 2) #21
  br i1 %171, label %219, label %221

172:                                              ; preds = %165
  %173 = and i32 %167, 65280
  %174 = icmp ne i32 %173, 0
  %175 = and i32 %167, 255
  %176 = icmp eq i32 %175, 8
  %177 = or i1 %174, %176
  %178 = and i32 %167, 16777471
  %179 = icmp eq i32 %178, 16777226
  %180 = or i1 %179, %177
  br i1 %180, label %181, label %221

181:                                              ; preds = %172
  %182 = and i32 %167, 1024
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %198, label %184

184:                                              ; preds = %181
  %185 = load ptr, ptr %163, align 8, !tbaa !487
  %186 = icmp eq ptr %185, null
  br i1 %186, label %221, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.xpv, ptr %185, i64 0, i32 2
  %189 = load i64, ptr %188, align 8, !tbaa !458
  %190 = icmp ugt i64 %189, 1
  br i1 %190, label %219, label %191

191:                                              ; preds = %187
  %192 = icmp eq i64 %189, 0
  br i1 %192, label %221, label %193

193:                                              ; preds = %191
  %194 = getelementptr inbounds %struct.sv, ptr %163, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !398
  %196 = load i8, ptr %195, align 1, !tbaa !398
  %197 = icmp eq i8 %196, 48
  br i1 %197, label %221, label %219

198:                                              ; preds = %181
  %199 = and i32 %167, 768
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %217, label %201

201:                                              ; preds = %198
  %202 = and i32 %167, 256
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %209, label %204

204:                                              ; preds = %201
  %205 = load ptr, ptr %163, align 8, !tbaa !487
  %206 = getelementptr inbounds %struct.xpviv, ptr %205, i64 0, i32 4
  %207 = load i64, ptr %206, align 8, !tbaa !398
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %204, %201
  %210 = and i32 %167, 512
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %221, label %212

212:                                              ; preds = %209
  %213 = load ptr, ptr %163, align 8, !tbaa !487
  %214 = getelementptr inbounds %struct.xpvnv, ptr %213, i64 0, i32 5
  %215 = load double, ptr %214, align 8, !tbaa !398
  %216 = fcmp une double %215, 0.000000e+00
  br i1 %216, label %219, label %221

217:                                              ; preds = %198
  %218 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %163, i32 noundef 0) #21
  br i1 %218, label %219, label %221

219:                                              ; preds = %193, %217, %170, %187, %204, %212
  %220 = icmp ne i8 %140, 0
  br label %221

221:                                              ; preds = %212, %193, %217, %170, %172, %184, %191, %209, %161, %219
  %222 = phi i1 [ %220, %219 ], [ false, %161 ], [ false, %209 ], [ false, %191 ], [ false, %184 ], [ false, %172 ], [ false, %170 ], [ false, %217 ], [ false, %193 ], [ false, %212 ]
  %223 = zext i1 %222 to i8
  br label %224

224:                                              ; preds = %148, %221
  %225 = phi i8 [ %223, %221 ], [ 0, %148 ]
  %226 = phi ptr [ %162, %221 ], [ %159, %148 ]
  %227 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  %228 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !509
  %229 = icmp sgt i64 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %224
  tail call void @Perl_free_tmps() #21
  br label %231

231:                                              ; preds = %230, %224
  tail call void @Perl_pop_scope() #21
  %232 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %126, i32 noundef 0) #21
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %137, !llvm.loop !906

234:                                              ; preds = %231
  %235 = icmp eq i8 %225, 0
  br i1 %235, label %239, label %236

236:                                              ; preds = %133, %234
  %237 = phi ptr [ %226, %234 ], [ %60, %133 ]
  %238 = getelementptr inbounds ptr, ptr %237, i64 1
  store ptr @PL_sv_yes, ptr %238, align 8, !tbaa !385
  br label %394

239:                                              ; preds = %234
  %240 = getelementptr inbounds ptr, ptr %226, i64 1
  store ptr @PL_sv_no, ptr %240, align 8, !tbaa !385
  br label %394

241:                                              ; preds = %124
  %242 = tail call fastcc i64 @S_av_top_index(ptr noundef nonnull %126) #22
  %243 = and i64 %242, 4294967295
  %244 = icmp eq i64 %243, 4294967295
  br i1 %244, label %249, label %245

245:                                              ; preds = %241
  %246 = shl i64 %242, 32
  %247 = ashr exact i64 %246, 32
  %248 = icmp slt i64 %247, 0
  br i1 %248, label %354, label %250

249:                                              ; preds = %241
  store ptr @PL_sv_yes, ptr %6, align 8, !tbaa !385
  br label %394

250:                                              ; preds = %245, %349
  %251 = phi ptr [ %344, %349 ], [ %60, %245 ]
  %252 = phi i64 [ %350, %349 ], [ 0, %245 ]
  %253 = phi i8 [ %343, %349 ], [ 1, %245 ]
  %254 = tail call ptr @Perl_av_fetch(ptr noundef %126, i64 noundef %252, i32 noundef 0) #21
  tail call void @Perl_push_scope() #21
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #21
  %255 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  store i64 %255, ptr @PL_tmps_floor, align 8, !tbaa !509
  %256 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %257 = getelementptr inbounds i32, ptr %256, i64 1
  store ptr %257, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %258 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !385
  %259 = icmp eq ptr %257, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %250
  %261 = tail call ptr @Perl_markstack_grow() #21
  br label %262

262:                                              ; preds = %250, %260
  %263 = phi ptr [ %261, %260 ], [ %257, %250 ]
  %264 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %265 = ptrtoint ptr %251 to i64
  %266 = ptrtoint ptr %264 to i64
  %267 = sub i64 %265, %266
  %268 = lshr exact i64 %267, 3
  %269 = trunc i64 %268 to i32
  store i32 %269, ptr %263, align 4, !tbaa !430
  %270 = icmp eq ptr %254, null
  br i1 %270, label %274, label %271

271:                                              ; preds = %262
  %272 = load ptr, ptr %254, align 8, !tbaa !385
  %273 = getelementptr inbounds ptr, ptr %251, i64 1
  store ptr %272, ptr %273, align 8, !tbaa !385
  br label %274

274:                                              ; preds = %271, %262
  %275 = phi ptr [ %273, %271 ], [ %251, %262 ]
  store ptr %275, ptr @PL_stack_sp, align 8, !tbaa !385
  %276 = tail call i32 @Perl_call_sv(ptr noundef %30, i32 noundef 2) #21
  %277 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %278 = icmp eq i32 %276, 0
  br i1 %278, label %342, label %279

279:                                              ; preds = %274
  %280 = getelementptr inbounds ptr, ptr %277, i64 -1
  %281 = load ptr, ptr %277, align 8, !tbaa !385
  store ptr %281, ptr @PL_Sv, align 8, !tbaa !385
  %282 = icmp eq ptr %281, null
  br i1 %282, label %339, label %283

283:                                              ; preds = %279
  %284 = getelementptr inbounds %struct.sv, ptr %281, i64 0, i32 2
  %285 = load i32, ptr %284, align 4, !tbaa !452
  %286 = and i32 %285, 2097152
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %283
  %289 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %281, i32 noundef 2) #21
  br i1 %289, label %337, label %339

290:                                              ; preds = %283
  %291 = and i32 %285, 65280
  %292 = icmp ne i32 %291, 0
  %293 = and i32 %285, 255
  %294 = icmp eq i32 %293, 8
  %295 = or i1 %292, %294
  %296 = and i32 %285, 16777471
  %297 = icmp eq i32 %296, 16777226
  %298 = or i1 %297, %295
  br i1 %298, label %299, label %339

299:                                              ; preds = %290
  %300 = and i32 %285, 1024
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %316, label %302

302:                                              ; preds = %299
  %303 = load ptr, ptr %281, align 8, !tbaa !487
  %304 = icmp eq ptr %303, null
  br i1 %304, label %339, label %305

305:                                              ; preds = %302
  %306 = getelementptr inbounds %struct.xpv, ptr %303, i64 0, i32 2
  %307 = load i64, ptr %306, align 8, !tbaa !458
  %308 = icmp ugt i64 %307, 1
  br i1 %308, label %337, label %309

309:                                              ; preds = %305
  %310 = icmp eq i64 %307, 0
  br i1 %310, label %339, label %311

311:                                              ; preds = %309
  %312 = getelementptr inbounds %struct.sv, ptr %281, i64 0, i32 3
  %313 = load ptr, ptr %312, align 8, !tbaa !398
  %314 = load i8, ptr %313, align 1, !tbaa !398
  %315 = icmp eq i8 %314, 48
  br i1 %315, label %339, label %337

316:                                              ; preds = %299
  %317 = and i32 %285, 768
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %335, label %319

319:                                              ; preds = %316
  %320 = and i32 %285, 256
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %327, label %322

322:                                              ; preds = %319
  %323 = load ptr, ptr %281, align 8, !tbaa !487
  %324 = getelementptr inbounds %struct.xpviv, ptr %323, i64 0, i32 4
  %325 = load i64, ptr %324, align 8, !tbaa !398
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %337

327:                                              ; preds = %322, %319
  %328 = and i32 %285, 512
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %339, label %330

330:                                              ; preds = %327
  %331 = load ptr, ptr %281, align 8, !tbaa !487
  %332 = getelementptr inbounds %struct.xpvnv, ptr %331, i64 0, i32 5
  %333 = load double, ptr %332, align 8, !tbaa !398
  %334 = fcmp une double %333, 0.000000e+00
  br i1 %334, label %337, label %339

335:                                              ; preds = %316
  %336 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %281, i32 noundef 0) #21
  br i1 %336, label %337, label %339

337:                                              ; preds = %311, %335, %288, %305, %322, %330
  %338 = icmp ne i8 %253, 0
  br label %339

339:                                              ; preds = %330, %311, %335, %288, %290, %302, %309, %327, %279, %337
  %340 = phi i1 [ %338, %337 ], [ false, %279 ], [ false, %327 ], [ false, %309 ], [ false, %302 ], [ false, %290 ], [ false, %288 ], [ false, %335 ], [ false, %311 ], [ false, %330 ]
  %341 = zext i1 %340 to i8
  br label %342

342:                                              ; preds = %274, %339
  %343 = phi i8 [ %341, %339 ], [ 0, %274 ]
  %344 = phi ptr [ %280, %339 ], [ %277, %274 ]
  %345 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  %346 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !509
  %347 = icmp sgt i64 %345, %346
  br i1 %347, label %348, label %349

348:                                              ; preds = %342
  tail call void @Perl_free_tmps() #21
  br label %349

349:                                              ; preds = %348, %342
  tail call void @Perl_pop_scope() #21
  %350 = add nuw nsw i64 %252, 1
  %351 = icmp eq i64 %252, %247
  br i1 %351, label %352, label %250, !llvm.loop !907

352:                                              ; preds = %349
  %353 = icmp eq i8 %343, 0
  br i1 %353, label %357, label %354

354:                                              ; preds = %245, %352
  %355 = phi ptr [ %344, %352 ], [ %60, %245 ]
  %356 = getelementptr inbounds ptr, ptr %355, i64 1
  store ptr @PL_sv_yes, ptr %356, align 8, !tbaa !385
  br label %394

357:                                              ; preds = %352
  %358 = getelementptr inbounds ptr, ptr %344, i64 1
  store ptr @PL_sv_no, ptr %358, align 8, !tbaa !385
  br label %394

359:                                              ; preds = %124, %119, %118
  tail call void @Perl_push_scope() #21
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #21
  %360 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  store i64 %360, ptr @PL_tmps_floor, align 8, !tbaa !509
  %361 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %362 = getelementptr inbounds i32, ptr %361, i64 1
  store ptr %362, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %363 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !385
  %364 = icmp eq ptr %362, %363
  br i1 %364, label %365, label %367

365:                                              ; preds = %359
  %366 = tail call ptr @Perl_markstack_grow() #21
  br label %367

367:                                              ; preds = %359, %365
  %368 = phi ptr [ %366, %365 ], [ %362, %359 ]
  %369 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %370 = ptrtoint ptr %60 to i64
  %371 = ptrtoint ptr %369 to i64
  %372 = sub i64 %370, %371
  %373 = lshr exact i64 %372, 3
  %374 = trunc i64 %373 to i32
  store i32 %374, ptr %368, align 4, !tbaa !430
  store ptr %19, ptr %6, align 8, !tbaa !385
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !385
  %375 = tail call i32 @Perl_call_sv(ptr noundef nonnull %30, i32 noundef 2) #21
  %376 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %377 = icmp eq i32 %375, 0
  br i1 %377, label %378, label %380

378:                                              ; preds = %367
  %379 = getelementptr inbounds ptr, ptr %376, i64 1
  store ptr @PL_sv_no, ptr %379, align 8, !tbaa !385
  br label %387

380:                                              ; preds = %367
  %381 = load ptr, ptr %376, align 8, !tbaa !385
  %382 = getelementptr inbounds %struct.sv, ptr %381, i64 0, i32 2
  %383 = load i32, ptr %382, align 4, !tbaa !452
  %384 = and i32 %383, 524288
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %387, label %386

386:                                              ; preds = %380
  tail call fastcc void @S_SvREFCNT_inc_void(ptr noundef nonnull %381) #22
  br label %387

387:                                              ; preds = %380, %386, %378
  %388 = phi ptr [ %379, %378 ], [ %376, %386 ], [ %376, %380 ]
  %389 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  %390 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !509
  %391 = icmp sgt i64 %389, %390
  br i1 %391, label %392, label %393

392:                                              ; preds = %387
  tail call void @Perl_free_tmps() #21
  br label %393

393:                                              ; preds = %392, %387
  tail call void @Perl_pop_scope() #21
  br label %394

394:                                              ; preds = %249, %354, %357, %136, %236, %239, %393
  %395 = phi ptr [ %6, %249 ], [ %356, %354 ], [ %358, %357 ], [ %6, %136 ], [ %238, %236 ], [ %240, %239 ], [ %388, %393 ]
  store ptr %395, ptr @PL_stack_sp, align 8, !tbaa !385
  %396 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %397 = load ptr, ptr %396, align 8, !tbaa !400
  br label %1087

398:                                              ; preds = %112
  br i1 %108, label %570, label %399

399:                                              ; preds = %398
  %400 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %401 = load i32, ptr %400, align 4, !tbaa !452
  %402 = and i32 %401, 65280
  %403 = icmp ne i32 %402, 0
  %404 = and i32 %401, 255
  %405 = icmp eq i32 %404, 8
  %406 = or i1 %403, %405
  %407 = and i32 %401, 16777471
  %408 = icmp eq i32 %407, 16777226
  %409 = or i1 %408, %406
  br i1 %409, label %413, label %410

410:                                              ; preds = %399
  store ptr @PL_sv_no, ptr %6, align 8, !tbaa !385
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !385
  %411 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %412 = load ptr, ptr %411, align 8, !tbaa !400
  br label %1087

413:                                              ; preds = %399
  %414 = and i32 %401, 2048
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %570, label %416

416:                                              ; preds = %413
  %417 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 3
  %418 = load ptr, ptr %417, align 8, !tbaa !398
  %419 = getelementptr inbounds %struct.sv, ptr %418, i64 0, i32 2
  %420 = load i32, ptr %419, align 4, !tbaa !452
  %421 = trunc i32 %420 to i8
  switch i8 %421, label %570 [
    i8 12, label %422
    i8 11, label %521
    i8 8, label %542
  ]

422:                                              ; preds = %416
  %423 = and i32 %116, 8388608
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %429, label %425

425:                                              ; preds = %422
  %426 = tail call ptr @Perl_mg_find(ptr noundef nonnull %114, i32 noundef 80) #21
  %427 = icmp ne ptr %426, null
  %428 = load i32, ptr %419, align 4, !tbaa !452
  br label %429

429:                                              ; preds = %422, %425
  %430 = phi i32 [ %428, %425 ], [ %420, %422 ]
  %431 = phi i1 [ %427, %425 ], [ false, %422 ]
  %432 = and i32 %430, 8388608
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %437, label %434

434:                                              ; preds = %429
  %435 = tail call ptr @Perl_mg_find(ptr noundef nonnull %418, i32 noundef 80) #21
  %436 = icmp ne ptr %435, null
  br label %437

437:                                              ; preds = %429, %434
  %438 = phi i1 [ %436, %434 ], [ false, %429 ]
  %439 = select i1 %431, i1 true, i1 %438
  %440 = select i1 %431, ptr %114, ptr %418
  %441 = select i1 %431, i1 %438, i1 false
  %442 = select i1 %431, ptr %418, ptr %114
  br i1 %439, label %472, label %443

443:                                              ; preds = %437
  %444 = load ptr, ptr %114, align 8, !tbaa !644
  %445 = getelementptr inbounds %struct.xpvhv, ptr %444, i64 0, i32 2
  %446 = load i64, ptr %445, align 8, !tbaa !908
  %447 = getelementptr inbounds %struct.xpvmg, ptr %444, i64 0, i32 1
  %448 = load ptr, ptr %447, align 8, !tbaa !398
  %449 = icmp eq ptr %448, null
  br i1 %449, label %453, label %450

450:                                              ; preds = %443
  %451 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %114) #21
  %452 = sext i32 %451 to i64
  br label %453

453:                                              ; preds = %443, %450
  %454 = phi i64 [ %452, %450 ], [ 0, %443 ]
  %455 = sub i64 %446, %454
  %456 = load ptr, ptr %418, align 8, !tbaa !644
  %457 = getelementptr inbounds %struct.xpvhv, ptr %456, i64 0, i32 2
  %458 = load i64, ptr %457, align 8, !tbaa !908
  %459 = getelementptr inbounds %struct.xpvmg, ptr %456, i64 0, i32 1
  %460 = load ptr, ptr %459, align 8, !tbaa !398
  %461 = icmp eq ptr %460, null
  br i1 %461, label %465, label %462

462:                                              ; preds = %453
  %463 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %418) #21
  %464 = sext i32 %463 to i64
  br label %465

465:                                              ; preds = %453, %462
  %466 = phi i64 [ %464, %462 ], [ 0, %453 ]
  %467 = sub i64 %458, %466
  %468 = icmp eq i64 %455, %467
  br i1 %468, label %472, label %469

469:                                              ; preds = %465
  store ptr @PL_sv_no, ptr %6, align 8, !tbaa !385
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !385
  %470 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %471 = load ptr, ptr %470, align 8, !tbaa !400
  br label %1087

472:                                              ; preds = %437, %465
  %473 = phi ptr [ %440, %437 ], [ %114, %465 ]
  %474 = phi i1 [ %441, %437 ], [ false, %465 ]
  %475 = phi ptr [ %442, %437 ], [ %418, %465 ]
  %476 = tail call i32 @Perl_hv_iterinit(ptr noundef nonnull %473) #21
  br label %477

477:                                              ; preds = %481, %472
  %478 = phi i32 [ 0, %472 ], [ %483, %481 ]
  %479 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %473, i32 noundef 0) #21
  %480 = icmp eq ptr %479, null
  br i1 %480, label %490, label %481

481:                                              ; preds = %477
  %482 = tail call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %479) #21
  %483 = add i32 %478, 1
  %484 = tail call ptr @Perl_hv_common(ptr noundef %475, ptr noundef %482, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef 0) #21
  %485 = icmp eq ptr %484, null
  br i1 %485, label %486, label %477, !llvm.loop !909

486:                                              ; preds = %481
  %487 = tail call i32 @Perl_hv_iterinit(ptr noundef %473) #21
  store ptr @PL_sv_no, ptr %6, align 8, !tbaa !385
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !385
  %488 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %489 = load ptr, ptr %488, align 8, !tbaa !400
  br label %1087

490:                                              ; preds = %477
  br i1 %474, label %491, label %498

491:                                              ; preds = %490
  %492 = tail call i32 @Perl_hv_iterinit(ptr noundef %475) #21
  br label %493

493:                                              ; preds = %493, %491
  %494 = phi i32 [ 0, %491 ], [ %497, %493 ]
  %495 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %475, i32 noundef 0) #21
  %496 = icmp eq ptr %495, null
  %497 = add i32 %494, 1
  br i1 %496, label %512, label %493, !llvm.loop !910

498:                                              ; preds = %490
  %499 = load ptr, ptr %475, align 8, !tbaa !644
  %500 = getelementptr inbounds %struct.xpvhv, ptr %499, i64 0, i32 2
  %501 = load i64, ptr %500, align 8, !tbaa !908
  %502 = getelementptr inbounds %struct.xpvmg, ptr %499, i64 0, i32 1
  %503 = load ptr, ptr %502, align 8, !tbaa !398
  %504 = icmp eq ptr %503, null
  br i1 %504, label %508, label %505

505:                                              ; preds = %498
  %506 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %475) #21
  %507 = zext i32 %506 to i64
  br label %508

508:                                              ; preds = %498, %505
  %509 = phi i64 [ %507, %505 ], [ 0, %498 ]
  %510 = sub i64 %501, %509
  %511 = trunc i64 %510 to i32
  br label %512

512:                                              ; preds = %493, %508
  %513 = phi i32 [ %511, %508 ], [ %494, %493 ]
  %514 = icmp eq i32 %478, %513
  br i1 %514, label %518, label %515

515:                                              ; preds = %512
  store ptr @PL_sv_no, ptr %6, align 8, !tbaa !385
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !385
  %516 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %517 = load ptr, ptr %516, align 8, !tbaa !400
  br label %1087

518:                                              ; preds = %512
  store ptr @PL_sv_yes, ptr %6, align 8, !tbaa !385
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !385
  %519 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %520 = load ptr, ptr %519, align 8, !tbaa !400
  br label %1087

521:                                              ; preds = %416
  %522 = tail call fastcc i64 @S_av_top_index(ptr noundef nonnull %418) #22
  %523 = load ptr, ptr %113, align 8, !tbaa !398
  %524 = icmp slt i64 %522, 0
  br i1 %524, label %539, label %525

525:                                              ; preds = %521, %536
  %526 = phi i64 [ %537, %536 ], [ 0, %521 ]
  %527 = tail call ptr @Perl_av_fetch(ptr noundef %418, i64 noundef %526, i32 noundef 0) #21
  %528 = icmp eq ptr %527, null
  br i1 %528, label %536, label %529

529:                                              ; preds = %525
  %530 = load ptr, ptr %527, align 8, !tbaa !385
  %531 = tail call ptr @Perl_hv_common(ptr noundef %523, ptr noundef %530, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef 0) #21
  %532 = icmp eq ptr %531, null
  br i1 %532, label %536, label %533

533:                                              ; preds = %529
  store ptr @PL_sv_yes, ptr %6, align 8, !tbaa !385
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !385
  %534 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %535 = load ptr, ptr %534, align 8, !tbaa !400
  br label %1087

536:                                              ; preds = %529, %525
  %537 = add nuw i64 %526, 1
  %538 = icmp eq i64 %526, %522
  br i1 %538, label %539, label %525, !llvm.loop !911

539:                                              ; preds = %536, %521
  store ptr @PL_sv_no, ptr %6, align 8, !tbaa !385
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !385
  %540 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %541 = load ptr, ptr %540, align 8, !tbaa !400
  br label %1087

542:                                              ; preds = %940, %416
  %543 = phi ptr [ %114, %940 ], [ %418, %416 ]
  %544 = phi ptr [ %19, %940 ], [ %30, %416 ]
  %545 = tail call fastcc ptr @S_make_matcher(ptr noundef nonnull %543) #22
  %546 = getelementptr inbounds %struct.sv, ptr %544, i64 0, i32 3
  %547 = load ptr, ptr %546, align 8, !tbaa !398
  %548 = tail call i32 @Perl_hv_iterinit(ptr noundef %547) #21
  %549 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %547, i32 noundef 0) #21
  %550 = icmp eq ptr %549, null
  br i1 %550, label %563, label %551

551:                                              ; preds = %542, %560
  %552 = phi ptr [ %561, %560 ], [ %549, %542 ]
  %553 = phi ptr [ %556, %560 ], [ %60, %542 ]
  store ptr %553, ptr @PL_stack_sp, align 8, !tbaa !385
  %554 = tail call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %552) #21
  %555 = tail call fastcc zeroext i1 @S_matcher_matches_sv(ptr noundef %545, ptr noundef %554) #22
  %556 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  br i1 %555, label %557, label %560

557:                                              ; preds = %551
  %558 = tail call i32 @Perl_hv_iterinit(ptr noundef %547) #21
  tail call fastcc void @S_destroy_matcher() #22
  %559 = getelementptr inbounds ptr, ptr %556, i64 1
  store ptr @PL_sv_yes, ptr %559, align 8, !tbaa !385
  br label %566

560:                                              ; preds = %551
  %561 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %547, i32 noundef 0) #21
  %562 = icmp eq ptr %561, null
  br i1 %562, label %563, label %551, !llvm.loop !912

563:                                              ; preds = %560, %542
  %564 = phi ptr [ %60, %542 ], [ %556, %560 ]
  tail call fastcc void @S_destroy_matcher() #22
  %565 = getelementptr inbounds ptr, ptr %564, i64 1
  store ptr @PL_sv_no, ptr %565, align 8, !tbaa !385
  br label %566

566:                                              ; preds = %563, %557
  %567 = phi ptr [ %559, %557 ], [ %565, %563 ]
  store ptr %567, ptr @PL_stack_sp, align 8, !tbaa !385
  %568 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %569 = load ptr, ptr %568, align 8, !tbaa !400
  br label %1087

570:                                              ; preds = %416, %413, %398
  %571 = tail call ptr @Perl_hv_common(ptr noundef nonnull %114, ptr noundef %19, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef 0) #21
  %572 = icmp eq ptr %571, null
  br i1 %572, label %576, label %573

573:                                              ; preds = %570
  store ptr @PL_sv_yes, ptr %6, align 8, !tbaa !385
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !385
  %574 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %575 = load ptr, ptr %574, align 8, !tbaa !400
  br label %1087

576:                                              ; preds = %570
  store ptr @PL_sv_no, ptr %6, align 8, !tbaa !385
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !385
  %577 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %578 = load ptr, ptr %577, align 8, !tbaa !400
  br label %1087

579:                                              ; preds = %112
  br i1 %108, label %850, label %580

580:                                              ; preds = %579
  %581 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %582 = load i32, ptr %581, align 4, !tbaa !452
  %583 = and i32 %582, 2048
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %812, label %585

585:                                              ; preds = %580
  %586 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 3
  %587 = load ptr, ptr %586, align 8, !tbaa !398
  %588 = getelementptr inbounds %struct.sv, ptr %587, i64 0, i32 2
  %589 = load i32, ptr %588, align 4, !tbaa !452
  %590 = trunc i32 %589 to i8
  switch i8 %590, label %812 [
    i8 12, label %591
    i8 11, label %612
    i8 8, label %781
  ]

591:                                              ; preds = %585
  %592 = tail call fastcc i64 @S_av_top_index(ptr noundef nonnull %114) #22
  %593 = icmp slt i64 %592, 0
  br i1 %593, label %609, label %594

594:                                              ; preds = %591, %606
  %595 = phi i64 [ %607, %606 ], [ 0, %591 ]
  %596 = tail call ptr @Perl_av_fetch(ptr noundef %114, i64 noundef %595, i32 noundef 0) #21
  %597 = icmp eq ptr %596, null
  br i1 %597, label %606, label %598

598:                                              ; preds = %594
  %599 = load ptr, ptr %586, align 8, !tbaa !398
  %600 = load ptr, ptr %596, align 8, !tbaa !385
  %601 = tail call ptr @Perl_hv_common(ptr noundef %599, ptr noundef %600, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef 0) #21
  %602 = icmp eq ptr %601, null
  br i1 %602, label %606, label %603

603:                                              ; preds = %598
  store ptr @PL_sv_yes, ptr %6, align 8, !tbaa !385
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !385
  %604 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %605 = load ptr, ptr %604, align 8, !tbaa !400
  br label %1087

606:                                              ; preds = %598, %594
  %607 = add nuw i64 %595, 1
  %608 = icmp eq i64 %595, %592
  br i1 %608, label %609, label %594, !llvm.loop !913

609:                                              ; preds = %606, %591
  store ptr @PL_sv_no, ptr %6, align 8, !tbaa !385
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !385
  %610 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %611 = load ptr, ptr %610, align 8, !tbaa !400
  br label %1087

612:                                              ; preds = %585
  %613 = tail call fastcc i64 @S_av_top_index(ptr noundef nonnull %114) #22
  %614 = tail call fastcc i64 @S_av_top_index(ptr noundef nonnull %587) #22
  %615 = icmp eq i64 %613, %614
  br i1 %615, label %619, label %616

616:                                              ; preds = %612
  store ptr @PL_sv_no, ptr %6, align 8, !tbaa !385
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !385
  %617 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %618 = load ptr, ptr %617, align 8, !tbaa !400
  br label %1087

619:                                              ; preds = %612
  %620 = tail call fastcc i64 @S_av_top_index(ptr noundef nonnull %587) #22
  %621 = icmp eq ptr %0, null
  br i1 %621, label %622, label %625

622:                                              ; preds = %619
  %623 = tail call ptr @Perl_newSV_type(i32 noundef 12) #21
  %624 = tail call ptr @Perl_sv_2mortal(ptr noundef %623) #21
  br label %625

625:                                              ; preds = %622, %619
  %626 = phi ptr [ %623, %622 ], [ %0, %619 ]
  %627 = icmp eq ptr %1, null
  br i1 %627, label %628, label %631

628:                                              ; preds = %625
  %629 = tail call ptr @Perl_newSV_type(i32 noundef 12) #21
  %630 = tail call ptr @Perl_sv_2mortal(ptr noundef %629) #21
  br label %631

631:                                              ; preds = %628, %625
  %632 = phi ptr [ %629, %628 ], [ %1, %625 ]
  %633 = icmp slt i64 %620, 0
  br i1 %633, label %776, label %634

634:                                              ; preds = %631, %772
  %635 = phi ptr [ %773, %772 ], [ %60, %631 ]
  %636 = phi i64 [ %774, %772 ], [ 0, %631 ]
  %637 = load ptr, ptr %113, align 8, !tbaa !398
  %638 = tail call ptr @Perl_av_fetch(ptr noundef %637, i64 noundef %636, i32 noundef 0) #21
  %639 = tail call ptr @Perl_av_fetch(ptr noundef %587, i64 noundef %636, i32 noundef 0) #21
  %640 = icmp ne ptr %638, null
  %641 = icmp ne ptr %639, null
  %642 = select i1 %640, i1 %641, i1 false
  br i1 %642, label %673, label %643

643:                                              ; preds = %634
  br i1 %640, label %644, label %656

644:                                              ; preds = %643
  %645 = load ptr, ptr %638, align 8, !tbaa !385
  %646 = getelementptr inbounds %struct.sv, ptr %645, i64 0, i32 2
  %647 = load i32, ptr %646, align 4, !tbaa !452
  %648 = and i32 %647, 65280
  %649 = icmp ne i32 %648, 0
  %650 = and i32 %647, 255
  %651 = icmp eq i32 %650, 8
  %652 = or i1 %649, %651
  %653 = and i32 %647, 16777471
  %654 = icmp eq i32 %653, 16777226
  %655 = or i1 %654, %652
  br i1 %655, label %669, label %656

656:                                              ; preds = %644, %643
  br i1 %641, label %657, label %772

657:                                              ; preds = %656
  %658 = load ptr, ptr %639, align 8, !tbaa !385
  %659 = getelementptr inbounds %struct.sv, ptr %658, i64 0, i32 2
  %660 = load i32, ptr %659, align 4, !tbaa !452
  %661 = and i32 %660, 65280
  %662 = icmp ne i32 %661, 0
  %663 = and i32 %660, 255
  %664 = icmp eq i32 %663, 8
  %665 = or i1 %662, %664
  %666 = and i32 %660, 16777471
  %667 = icmp eq i32 %666, 16777226
  %668 = or i1 %667, %665
  br i1 %668, label %669, label %772

669:                                              ; preds = %657, %644
  %670 = getelementptr inbounds ptr, ptr %635, i64 1
  store ptr @PL_sv_no, ptr %670, align 8, !tbaa !385
  store ptr %670, ptr @PL_stack_sp, align 8, !tbaa !385
  %671 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %672 = load ptr, ptr %671, align 8, !tbaa !400
  br label %1087

673:                                              ; preds = %634
  %674 = load ptr, ptr %638, align 8, !tbaa !385
  %675 = ptrtoint ptr %674 to i64
  %676 = tail call ptr @Perl_newSViv(i64 noundef %675) #21
  %677 = tail call ptr @Perl_sv_2mortal(ptr noundef %676) #21
  %678 = tail call ptr @Perl_hv_common(ptr noundef %626, ptr noundef %677, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef 0) #21
  %679 = icmp eq ptr %678, null
  br i1 %679, label %680, label %687

680:                                              ; preds = %673
  %681 = load ptr, ptr %639, align 8, !tbaa !385
  %682 = ptrtoint ptr %681 to i64
  %683 = tail call ptr @Perl_newSViv(i64 noundef %682) #21
  %684 = tail call ptr @Perl_sv_2mortal(ptr noundef %683) #21
  %685 = tail call ptr @Perl_hv_common(ptr noundef %632, ptr noundef %684, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 8, ptr noundef null, i32 noundef 0) #21
  %686 = icmp eq ptr %685, null
  br i1 %686, label %695, label %687

687:                                              ; preds = %680, %673
  %688 = load ptr, ptr %638, align 8, !tbaa !385
  %689 = load ptr, ptr %639, align 8, !tbaa !385
  %690 = icmp eq ptr %688, %689
  br i1 %690, label %772, label %691

691:                                              ; preds = %687
  %692 = getelementptr inbounds ptr, ptr %635, i64 1
  store ptr @PL_sv_no, ptr %692, align 8, !tbaa !385
  store ptr %692, ptr @PL_stack_sp, align 8, !tbaa !385
  %693 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %694 = load ptr, ptr %693, align 8, !tbaa !400
  br label %1087

695:                                              ; preds = %680
  %696 = load ptr, ptr %638, align 8, !tbaa !385
  %697 = ptrtoint ptr %696 to i64
  %698 = tail call ptr @Perl_newSViv(i64 noundef %697) #21
  %699 = tail call ptr @Perl_sv_2mortal(ptr noundef %698) #21
  %700 = tail call ptr @Perl_hv_common(ptr noundef %626, ptr noundef %699, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @PL_sv_undef, i32 noundef 0) #21
  %701 = load ptr, ptr %639, align 8, !tbaa !385
  %702 = ptrtoint ptr %701 to i64
  %703 = tail call ptr @Perl_newSViv(i64 noundef %702) #21
  %704 = tail call ptr @Perl_sv_2mortal(ptr noundef %703) #21
  %705 = tail call ptr @Perl_hv_common(ptr noundef %632, ptr noundef %704, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @PL_sv_undef, i32 noundef 0) #21
  %706 = load ptr, ptr %639, align 8, !tbaa !385
  %707 = getelementptr inbounds ptr, ptr %635, i64 1
  store ptr %706, ptr %707, align 8, !tbaa !385
  %708 = load ptr, ptr %638, align 8, !tbaa !385
  %709 = getelementptr inbounds ptr, ptr %635, i64 2
  store ptr %708, ptr %709, align 8, !tbaa !385
  store ptr %709, ptr @PL_stack_sp, align 8, !tbaa !385
  %710 = tail call fastcc ptr @S_do_smartmatch(ptr noundef %626, ptr noundef %632, i1 noundef zeroext false) #22
  %711 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %712 = getelementptr inbounds ptr, ptr %711, i64 -1
  %713 = load ptr, ptr %711, align 8, !tbaa !385
  store ptr %713, ptr @PL_Sv, align 8, !tbaa !385
  %714 = icmp eq ptr %713, null
  br i1 %714, label %769, label %715

715:                                              ; preds = %695
  %716 = getelementptr inbounds %struct.sv, ptr %713, i64 0, i32 2
  %717 = load i32, ptr %716, align 4, !tbaa !452
  %718 = and i32 %717, 2097152
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %722, label %720

720:                                              ; preds = %715
  %721 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %713, i32 noundef 2) #21
  br i1 %721, label %772, label %769

722:                                              ; preds = %715
  %723 = and i32 %717, 65280
  %724 = icmp ne i32 %723, 0
  %725 = and i32 %717, 255
  %726 = icmp eq i32 %725, 8
  %727 = or i1 %724, %726
  %728 = and i32 %717, 16777471
  %729 = icmp eq i32 %728, 16777226
  %730 = or i1 %729, %727
  br i1 %730, label %731, label %769

731:                                              ; preds = %722
  %732 = and i32 %717, 1024
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %748, label %734

734:                                              ; preds = %731
  %735 = load ptr, ptr %713, align 8, !tbaa !487
  %736 = icmp eq ptr %735, null
  br i1 %736, label %769, label %737

737:                                              ; preds = %734
  %738 = getelementptr inbounds %struct.xpv, ptr %735, i64 0, i32 2
  %739 = load i64, ptr %738, align 8, !tbaa !458
  %740 = icmp ugt i64 %739, 1
  br i1 %740, label %772, label %741

741:                                              ; preds = %737
  %742 = icmp eq i64 %739, 0
  br i1 %742, label %769, label %743

743:                                              ; preds = %741
  %744 = getelementptr inbounds %struct.sv, ptr %713, i64 0, i32 3
  %745 = load ptr, ptr %744, align 8, !tbaa !398
  %746 = load i8, ptr %745, align 1, !tbaa !398
  %747 = icmp eq i8 %746, 48
  br i1 %747, label %769, label %772

748:                                              ; preds = %731
  %749 = and i32 %717, 768
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %767, label %751

751:                                              ; preds = %748
  %752 = and i32 %717, 256
  %753 = icmp eq i32 %752, 0
  br i1 %753, label %759, label %754

754:                                              ; preds = %751
  %755 = load ptr, ptr %713, align 8, !tbaa !487
  %756 = getelementptr inbounds %struct.xpviv, ptr %755, i64 0, i32 4
  %757 = load i64, ptr %756, align 8, !tbaa !398
  %758 = icmp eq i64 %757, 0
  br i1 %758, label %759, label %772

759:                                              ; preds = %754, %751
  %760 = and i32 %717, 512
  %761 = icmp eq i32 %760, 0
  br i1 %761, label %769, label %762

762:                                              ; preds = %759
  %763 = load ptr, ptr %713, align 8, !tbaa !487
  %764 = getelementptr inbounds %struct.xpvnv, ptr %763, i64 0, i32 5
  %765 = load double, ptr %764, align 8, !tbaa !398
  %766 = fcmp une double %765, 0.000000e+00
  br i1 %766, label %772, label %769

767:                                              ; preds = %748
  %768 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %713, i32 noundef 0) #21
  br i1 %768, label %772, label %769

769:                                              ; preds = %762, %743, %767, %720, %722, %734, %741, %759, %695
  store ptr @PL_sv_no, ptr %711, align 8, !tbaa !385
  store ptr %711, ptr @PL_stack_sp, align 8, !tbaa !385
  %770 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %771 = load ptr, ptr %770, align 8, !tbaa !400
  br label %1087

772:                                              ; preds = %737, %754, %762, %657, %687, %656, %720, %767, %743
  %773 = phi ptr [ %712, %743 ], [ %712, %767 ], [ %712, %720 ], [ %712, %737 ], [ %712, %754 ], [ %712, %762 ], [ %635, %657 ], [ %635, %656 ], [ %635, %687 ]
  %774 = add nuw i64 %636, 1
  %775 = icmp eq i64 %636, %620
  br i1 %775, label %776, label %634, !llvm.loop !914

776:                                              ; preds = %772, %631
  %777 = phi ptr [ %60, %631 ], [ %773, %772 ]
  %778 = getelementptr inbounds ptr, ptr %777, i64 1
  store ptr @PL_sv_yes, ptr %778, align 8, !tbaa !385
  store ptr %778, ptr @PL_stack_sp, align 8, !tbaa !385
  %779 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %780 = load ptr, ptr %779, align 8, !tbaa !400
  br label %1087

781:                                              ; preds = %940, %585
  %782 = phi ptr [ %587, %585 ], [ %114, %940 ]
  %783 = phi ptr [ %30, %585 ], [ %19, %940 ]
  %784 = tail call fastcc ptr @S_make_matcher(ptr noundef nonnull %782) #22
  %785 = getelementptr inbounds %struct.sv, ptr %783, i64 0, i32 3
  %786 = load ptr, ptr %785, align 8, !tbaa !398
  %787 = tail call fastcc i64 @S_av_top_index(ptr noundef %786) #22
  %788 = icmp slt i64 %787, 0
  br i1 %788, label %807, label %789

789:                                              ; preds = %781, %803
  %790 = phi ptr [ %804, %803 ], [ %60, %781 ]
  %791 = phi i64 [ %805, %803 ], [ 0, %781 ]
  %792 = load ptr, ptr %785, align 8, !tbaa !398
  %793 = tail call ptr @Perl_av_fetch(ptr noundef %792, i64 noundef %791, i32 noundef 0) #21
  store ptr %790, ptr @PL_stack_sp, align 8, !tbaa !385
  %794 = icmp eq ptr %793, null
  br i1 %794, label %803, label %795

795:                                              ; preds = %789
  %796 = load ptr, ptr %793, align 8, !tbaa !385
  %797 = tail call fastcc zeroext i1 @S_matcher_matches_sv(ptr noundef %784, ptr noundef %796) #22
  %798 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  br i1 %797, label %799, label %803

799:                                              ; preds = %795
  tail call fastcc void @S_destroy_matcher() #22
  %800 = getelementptr inbounds ptr, ptr %798, i64 1
  store ptr @PL_sv_yes, ptr %800, align 8, !tbaa !385
  store ptr %800, ptr @PL_stack_sp, align 8, !tbaa !385
  %801 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %802 = load ptr, ptr %801, align 8, !tbaa !400
  br label %1087

803:                                              ; preds = %789, %795
  %804 = phi ptr [ %790, %789 ], [ %798, %795 ]
  %805 = add nuw i64 %791, 1
  %806 = icmp eq i64 %791, %787
  br i1 %806, label %807, label %789, !llvm.loop !915

807:                                              ; preds = %803, %781
  %808 = phi ptr [ %60, %781 ], [ %804, %803 ]
  tail call fastcc void @S_destroy_matcher() #22
  %809 = getelementptr inbounds ptr, ptr %808, i64 1
  store ptr @PL_sv_no, ptr %809, align 8, !tbaa !385
  store ptr %809, ptr @PL_stack_sp, align 8, !tbaa !385
  %810 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %811 = load ptr, ptr %810, align 8, !tbaa !400
  br label %1087

812:                                              ; preds = %585, %580
  %813 = and i32 %582, 65280
  %814 = icmp ne i32 %813, 0
  %815 = and i32 %582, 255
  %816 = icmp eq i32 %815, 8
  %817 = or i1 %814, %816
  %818 = and i32 %582, 16777471
  %819 = icmp eq i32 %818, 16777226
  %820 = or i1 %819, %817
  br i1 %820, label %850, label %821

821:                                              ; preds = %812
  %822 = tail call fastcc i64 @S_av_top_index(ptr noundef nonnull %114) #22
  %823 = icmp slt i64 %822, 0
  br i1 %823, label %847, label %827

824:                                              ; preds = %832
  %825 = add nuw i64 %828, 1
  %826 = icmp eq i64 %828, %822
  br i1 %826, label %847, label %827, !llvm.loop !916

827:                                              ; preds = %821, %824
  %828 = phi i64 [ %825, %824 ], [ 0, %821 ]
  %829 = load ptr, ptr %113, align 8, !tbaa !398
  %830 = tail call ptr @Perl_av_fetch(ptr noundef %829, i64 noundef %828, i32 noundef 0) #21
  %831 = icmp eq ptr %830, null
  br i1 %831, label %844, label %832

832:                                              ; preds = %827
  %833 = load ptr, ptr %830, align 8, !tbaa !385
  %834 = getelementptr inbounds %struct.sv, ptr %833, i64 0, i32 2
  %835 = load i32, ptr %834, align 4, !tbaa !452
  %836 = and i32 %835, 65280
  %837 = icmp ne i32 %836, 0
  %838 = and i32 %835, 255
  %839 = icmp eq i32 %838, 8
  %840 = or i1 %837, %839
  %841 = and i32 %835, 16777471
  %842 = icmp eq i32 %841, 16777226
  %843 = or i1 %842, %840
  br i1 %843, label %824, label %844

844:                                              ; preds = %827, %832
  store ptr @PL_sv_yes, ptr %6, align 8, !tbaa !385
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !385
  %845 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %846 = load ptr, ptr %845, align 8, !tbaa !400
  br label %1087

847:                                              ; preds = %824, %821
  store ptr @PL_sv_no, ptr %6, align 8, !tbaa !385
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !385
  %848 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %849 = load ptr, ptr %848, align 8, !tbaa !400
  br label %1087

850:                                              ; preds = %812, %579
  %851 = tail call fastcc i64 @S_av_top_index(ptr noundef nonnull %114) #22
  %852 = icmp slt i64 %851, 0
  br i1 %852, label %929, label %853

853:                                              ; preds = %850, %925
  %854 = phi ptr [ %926, %925 ], [ %60, %850 ]
  %855 = phi i64 [ %927, %925 ], [ 0, %850 ]
  %856 = load ptr, ptr %113, align 8, !tbaa !398
  %857 = tail call ptr @Perl_av_fetch(ptr noundef %856, i64 noundef %855, i32 noundef 0) #21
  %858 = icmp eq ptr %857, null
  br i1 %858, label %925, label %859

859:                                              ; preds = %853
  %860 = getelementptr inbounds ptr, ptr %854, i64 1
  store ptr %19, ptr %860, align 8, !tbaa !385
  %861 = load ptr, ptr %857, align 8, !tbaa !385
  %862 = getelementptr inbounds ptr, ptr %854, i64 2
  store ptr %861, ptr %862, align 8, !tbaa !385
  store ptr %862, ptr @PL_stack_sp, align 8, !tbaa !385
  %863 = tail call fastcc ptr @S_do_smartmatch(ptr noundef null, ptr noundef null, i1 noundef zeroext true) #22
  %864 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %865 = getelementptr inbounds ptr, ptr %864, i64 -1
  %866 = load ptr, ptr %864, align 8, !tbaa !385
  store ptr %866, ptr @PL_Sv, align 8, !tbaa !385
  %867 = icmp eq ptr %866, null
  br i1 %867, label %925, label %868

868:                                              ; preds = %859
  %869 = getelementptr inbounds %struct.sv, ptr %866, i64 0, i32 2
  %870 = load i32, ptr %869, align 4, !tbaa !452
  %871 = and i32 %870, 2097152
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %875, label %873

873:                                              ; preds = %868
  %874 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %866, i32 noundef 2) #21
  br i1 %874, label %922, label %925

875:                                              ; preds = %868
  %876 = and i32 %870, 65280
  %877 = icmp ne i32 %876, 0
  %878 = and i32 %870, 255
  %879 = icmp eq i32 %878, 8
  %880 = or i1 %877, %879
  %881 = and i32 %870, 16777471
  %882 = icmp eq i32 %881, 16777226
  %883 = or i1 %882, %880
  br i1 %883, label %884, label %925

884:                                              ; preds = %875
  %885 = and i32 %870, 1024
  %886 = icmp eq i32 %885, 0
  br i1 %886, label %901, label %887

887:                                              ; preds = %884
  %888 = load ptr, ptr %866, align 8, !tbaa !487
  %889 = icmp eq ptr %888, null
  br i1 %889, label %925, label %890

890:                                              ; preds = %887
  %891 = getelementptr inbounds %struct.xpv, ptr %888, i64 0, i32 2
  %892 = load i64, ptr %891, align 8, !tbaa !458
  %893 = icmp ugt i64 %892, 1
  br i1 %893, label %922, label %894

894:                                              ; preds = %890
  %895 = icmp eq i64 %892, 0
  br i1 %895, label %925, label %896

896:                                              ; preds = %894
  %897 = getelementptr inbounds %struct.sv, ptr %866, i64 0, i32 3
  %898 = load ptr, ptr %897, align 8, !tbaa !398
  %899 = load i8, ptr %898, align 1, !tbaa !398
  %900 = icmp eq i8 %899, 48
  br i1 %900, label %925, label %922

901:                                              ; preds = %884
  %902 = and i32 %870, 768
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %920, label %904

904:                                              ; preds = %901
  %905 = and i32 %870, 256
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %912, label %907

907:                                              ; preds = %904
  %908 = load ptr, ptr %866, align 8, !tbaa !487
  %909 = getelementptr inbounds %struct.xpviv, ptr %908, i64 0, i32 4
  %910 = load i64, ptr %909, align 8, !tbaa !398
  %911 = icmp eq i64 %910, 0
  br i1 %911, label %912, label %922

912:                                              ; preds = %907, %904
  %913 = and i32 %870, 512
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %925, label %915

915:                                              ; preds = %912
  %916 = load ptr, ptr %866, align 8, !tbaa !487
  %917 = getelementptr inbounds %struct.xpvnv, ptr %916, i64 0, i32 5
  %918 = load double, ptr %917, align 8, !tbaa !398
  %919 = fcmp une double %918, 0.000000e+00
  br i1 %919, label %922, label %925

920:                                              ; preds = %901
  %921 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %866, i32 noundef 0) #21
  br i1 %921, label %922, label %925

922:                                              ; preds = %915, %907, %890, %873, %920, %896
  store ptr @PL_sv_yes, ptr %864, align 8, !tbaa !385
  store ptr %864, ptr @PL_stack_sp, align 8, !tbaa !385
  %923 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %924 = load ptr, ptr %923, align 8, !tbaa !400
  br label %1087

925:                                              ; preds = %915, %853, %875, %887, %894, %912, %859, %873, %920, %896
  %926 = phi ptr [ %865, %896 ], [ %865, %920 ], [ %865, %873 ], [ %865, %859 ], [ %865, %912 ], [ %865, %894 ], [ %865, %887 ], [ %865, %875 ], [ %854, %853 ], [ %865, %915 ]
  %927 = add nuw i64 %855, 1
  %928 = icmp eq i64 %855, %851
  br i1 %928, label %929, label %853, !llvm.loop !917

929:                                              ; preds = %925, %850
  %930 = phi ptr [ %60, %850 ], [ %926, %925 ]
  %931 = getelementptr inbounds ptr, ptr %930, i64 1
  store ptr @PL_sv_no, ptr %931, align 8, !tbaa !385
  store ptr %931, ptr @PL_stack_sp, align 8, !tbaa !385
  %932 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %933 = load ptr, ptr %932, align 8, !tbaa !400
  br label %1087

934:                                              ; preds = %112
  br i1 %108, label %946, label %935

935:                                              ; preds = %934
  %936 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %937 = load i32, ptr %936, align 4, !tbaa !452
  %938 = and i32 %937, 2048
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %946, label %940

940:                                              ; preds = %935
  %941 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 3
  %942 = load ptr, ptr %941, align 8, !tbaa !398
  %943 = getelementptr inbounds %struct.sv, ptr %942, i64 0, i32 2
  %944 = load i32, ptr %943, align 4, !tbaa !452
  %945 = trunc i32 %944 to i8
  switch i8 %945, label %946 [
    i8 12, label %542
    i8 11, label %781
  ]

946:                                              ; preds = %940, %935, %934
  %947 = tail call fastcc ptr @S_make_matcher(ptr noundef nonnull %114) #22
  store ptr %60, ptr @PL_stack_sp, align 8, !tbaa !385
  %948 = tail call fastcc zeroext i1 @S_matcher_matches_sv(ptr noundef %947, ptr noundef %19) #22
  %949 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %950 = select i1 %948, ptr @PL_sv_yes, ptr @PL_sv_no
  %951 = getelementptr inbounds ptr, ptr %949, i64 1
  store ptr %950, ptr %951, align 8, !tbaa !385
  tail call fastcc void @S_destroy_matcher() #22
  store ptr %951, ptr @PL_stack_sp, align 8, !tbaa !385
  %952 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %953 = load ptr, ptr %952, align 8, !tbaa !400
  br label %1087

954:                                              ; preds = %112, %107
  %955 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %956 = load i32, ptr %955, align 4, !tbaa !452
  %957 = and i32 %956, 2048
  %958 = icmp ne i32 %957, 0
  %959 = select i1 %108, i1 %958, i1 false
  br i1 %959, label %960, label %984

960:                                              ; preds = %954
  %961 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 3
  %962 = load ptr, ptr %961, align 8, !tbaa !398
  %963 = getelementptr inbounds %struct.sv, ptr %962, i64 0, i32 2
  %964 = load i32, ptr %963, align 4, !tbaa !452
  %965 = and i32 %964, 1048576
  %966 = icmp eq i32 %965, 0
  br i1 %966, label %984, label %967

967:                                              ; preds = %960
  %968 = load ptr, ptr %962, align 8, !tbaa !487
  %969 = load ptr, ptr %968, align 8, !tbaa !904
  %970 = getelementptr inbounds %struct.hv, ptr %969, i64 0, i32 2
  %971 = load i32, ptr %970, align 4, !tbaa !641
  %972 = and i32 %971, 268435456
  %973 = icmp eq i32 %972, 0
  br i1 %973, label %984, label %974

974:                                              ; preds = %967
  store ptr %19, ptr %6, align 8, !tbaa !385
  store ptr %30, ptr %4, align 8, !tbaa !385
  store ptr %4, ptr @PL_stack_sp, align 8, !tbaa !385
  %975 = tail call ptr @Perl_amagic_call(ptr noundef nonnull %19, ptr noundef nonnull %30, i32 noundef 72, i32 noundef 1) #21
  %976 = icmp eq ptr %975, null
  br i1 %976, label %977, label %979

977:                                              ; preds = %974
  %978 = load i32, ptr %31, align 4, !tbaa !452
  br label %996

979:                                              ; preds = %974
  %980 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %981 = getelementptr inbounds ptr, ptr %980, i64 -1
  store ptr %975, ptr %981, align 8, !tbaa !385
  store ptr %981, ptr @PL_stack_sp, align 8, !tbaa !385
  %982 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %983 = load ptr, ptr %982, align 8, !tbaa !400
  br label %1087

984:                                              ; preds = %954, %967, %960
  %985 = and i32 %956, 65280
  %986 = icmp ne i32 %985, 0
  %987 = and i32 %956, 255
  %988 = icmp eq i32 %987, 8
  %989 = or i1 %986, %988
  %990 = and i32 %956, 16777471
  %991 = icmp eq i32 %990, 16777226
  %992 = or i1 %991, %989
  br i1 %992, label %996, label %993

993:                                              ; preds = %984
  store ptr @PL_sv_no, ptr %6, align 8, !tbaa !385
  store ptr %6, ptr @PL_stack_sp, align 8, !tbaa !385
  %994 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %995 = load ptr, ptr %994, align 8, !tbaa !400
  br label %1087

996:                                              ; preds = %977, %984
  %997 = phi i32 [ %978, %977 ], [ %109, %984 ]
  %998 = and i32 %997, 768
  %999 = icmp eq i32 %998, 0
  br i1 %999, label %1000, label %1011

1000:                                             ; preds = %996
  %1001 = and i32 %997, 1024
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %1085, label %1003

1003:                                             ; preds = %1000
  %1004 = tail call i32 @Perl_looks_like_number(ptr noundef nonnull %30) #21
  %1005 = icmp eq i32 %1004, 0
  br i1 %1005, label %1085, label %1006

1006:                                             ; preds = %1003
  %1007 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %1008 = load i32, ptr %1007, align 4, !tbaa !452
  %1009 = and i32 %1008, 768
  %1010 = icmp eq i32 %1009, 0
  br i1 %1010, label %1085, label %1011

1011:                                             ; preds = %1006, %996
  store ptr %19, ptr %6, align 8, !tbaa !385
  store ptr %30, ptr %4, align 8, !tbaa !385
  store ptr %4, ptr @PL_stack_sp, align 8, !tbaa !385
  %1012 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %1013 = getelementptr inbounds %struct.cop, ptr %1012, i64 0, i32 10
  %1014 = load i32, ptr %1013, align 8, !tbaa !482
  %1015 = and i32 %1014, 1
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1019, label %1017

1017:                                             ; preds = %1011
  %1018 = tail call ptr @Perl_pp_i_eq() #21
  br label %1021

1019:                                             ; preds = %1011
  %1020 = tail call ptr @Perl_pp_eq() #21
  br label %1021

1021:                                             ; preds = %1019, %1017
  %1022 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %1023 = load ptr, ptr %1022, align 8, !tbaa !385
  store ptr %1023, ptr @PL_Sv, align 8, !tbaa !385
  %1024 = icmp eq ptr %1023, null
  br i1 %1024, label %1082, label %1025

1025:                                             ; preds = %1021
  %1026 = getelementptr inbounds %struct.sv, ptr %1023, i64 0, i32 2
  %1027 = load i32, ptr %1026, align 4, !tbaa !452
  %1028 = and i32 %1027, 2097152
  %1029 = icmp eq i32 %1028, 0
  br i1 %1029, label %1032, label %1030

1030:                                             ; preds = %1025
  %1031 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %1023, i32 noundef 2) #21
  br i1 %1031, label %1079, label %1082

1032:                                             ; preds = %1025
  %1033 = and i32 %1027, 65280
  %1034 = icmp ne i32 %1033, 0
  %1035 = and i32 %1027, 255
  %1036 = icmp eq i32 %1035, 8
  %1037 = or i1 %1034, %1036
  %1038 = and i32 %1027, 16777471
  %1039 = icmp eq i32 %1038, 16777226
  %1040 = or i1 %1039, %1037
  br i1 %1040, label %1041, label %1082

1041:                                             ; preds = %1032
  %1042 = and i32 %1027, 1024
  %1043 = icmp eq i32 %1042, 0
  br i1 %1043, label %1058, label %1044

1044:                                             ; preds = %1041
  %1045 = load ptr, ptr %1023, align 8, !tbaa !487
  %1046 = icmp eq ptr %1045, null
  br i1 %1046, label %1082, label %1047

1047:                                             ; preds = %1044
  %1048 = getelementptr inbounds %struct.xpv, ptr %1045, i64 0, i32 2
  %1049 = load i64, ptr %1048, align 8, !tbaa !458
  %1050 = icmp ugt i64 %1049, 1
  br i1 %1050, label %1079, label %1051

1051:                                             ; preds = %1047
  %1052 = icmp eq i64 %1049, 0
  br i1 %1052, label %1082, label %1053

1053:                                             ; preds = %1051
  %1054 = getelementptr inbounds %struct.sv, ptr %1023, i64 0, i32 3
  %1055 = load ptr, ptr %1054, align 8, !tbaa !398
  %1056 = load i8, ptr %1055, align 1, !tbaa !398
  %1057 = icmp eq i8 %1056, 48
  br i1 %1057, label %1082, label %1079

1058:                                             ; preds = %1041
  %1059 = and i32 %1027, 768
  %1060 = icmp eq i32 %1059, 0
  br i1 %1060, label %1077, label %1061

1061:                                             ; preds = %1058
  %1062 = and i32 %1027, 256
  %1063 = icmp eq i32 %1062, 0
  br i1 %1063, label %1069, label %1064

1064:                                             ; preds = %1061
  %1065 = load ptr, ptr %1023, align 8, !tbaa !487
  %1066 = getelementptr inbounds %struct.xpviv, ptr %1065, i64 0, i32 4
  %1067 = load i64, ptr %1066, align 8, !tbaa !398
  %1068 = icmp eq i64 %1067, 0
  br i1 %1068, label %1069, label %1079

1069:                                             ; preds = %1064, %1061
  %1070 = and i32 %1027, 512
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1082, label %1072

1072:                                             ; preds = %1069
  %1073 = load ptr, ptr %1023, align 8, !tbaa !487
  %1074 = getelementptr inbounds %struct.xpvnv, ptr %1073, i64 0, i32 5
  %1075 = load double, ptr %1074, align 8, !tbaa !398
  %1076 = fcmp une double %1075, 0.000000e+00
  br i1 %1076, label %1079, label %1082

1077:                                             ; preds = %1058
  %1078 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %1023, i32 noundef 0) #21
  br i1 %1078, label %1079, label %1082

1079:                                             ; preds = %1053, %1077, %1030, %1072, %1064, %1047
  store ptr @PL_sv_yes, ptr %1022, align 8, !tbaa !385
  store ptr %1022, ptr @PL_stack_sp, align 8, !tbaa !385
  %1080 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %1081 = load ptr, ptr %1080, align 8, !tbaa !400
  br label %1087

1082:                                             ; preds = %1072, %1053, %1077, %1030, %1069, %1051, %1044, %1032, %1021
  store ptr @PL_sv_no, ptr %1022, align 8, !tbaa !385
  store ptr %1022, ptr @PL_stack_sp, align 8, !tbaa !385
  %1083 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %1084 = load ptr, ptr %1083, align 8, !tbaa !400
  br label %1087

1085:                                             ; preds = %1006, %1003, %1000
  store ptr %19, ptr %6, align 8, !tbaa !385
  store ptr %30, ptr %4, align 8, !tbaa !385
  store ptr %4, ptr @PL_stack_sp, align 8, !tbaa !385
  %1086 = tail call ptr @Perl_pp_seq() #21
  br label %1087

1087:                                             ; preds = %979, %922, %844, %799, %669, %691, %769, %603, %533, %486, %53, %929, %847, %807, %616, %776, %609, %539, %469, %515, %518, %1085, %1082, %1079, %993, %946, %576, %573, %566, %410, %394, %83, %80
  %1088 = phi ptr [ %397, %394 ], [ %575, %573 ], [ %578, %576 ], [ %569, %566 ], [ %412, %410 ], [ %953, %946 ], [ %1081, %1079 ], [ %1084, %1082 ], [ %1086, %1085 ], [ %983, %979 ], [ %995, %993 ], [ %82, %80 ], [ %85, %83 ], [ %57, %53 ], [ %517, %515 ], [ %520, %518 ], [ %471, %469 ], [ %535, %533 ], [ %541, %539 ], [ %605, %603 ], [ %611, %609 ], [ %618, %616 ], [ %780, %776 ], [ %802, %799 ], [ %811, %807 ], [ %846, %844 ], [ %849, %847 ], [ %924, %922 ], [ %933, %929 ], [ %489, %486 ], [ %694, %691 ], [ %771, %769 ], [ %672, %669 ]
  ret ptr %1088
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_enterwhen() local_unnamed_addr #0 !prof !422 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %3 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5
  %4 = load i8, ptr %3, align 2, !tbaa !428
  %5 = and i8 %4, 3
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = tail call i32 @Perl_block_gimme() #22, !range !553
  %9 = trunc i32 %8 to i8
  %10 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %11 = getelementptr inbounds %struct.op, ptr %10, i64 0, i32 5
  %12 = load i8, ptr %11, align 2, !tbaa !428
  br label %13

13:                                               ; preds = %0, %7
  %14 = phi i8 [ %12, %7 ], [ %4, %0 ]
  %15 = phi ptr [ %10, %7 ], [ %2, %0 ]
  %16 = phi i8 [ %9, %7 ], [ %5, %0 ]
  %17 = icmp sgt i8 %14, -1
  br i1 %17, label %18, label %81

18:                                               ; preds = %13
  %19 = getelementptr inbounds ptr, ptr %1, i64 -1
  %20 = load ptr, ptr %1, align 8, !tbaa !385
  store ptr %20, ptr @PL_Sv, align 8, !tbaa !385
  %21 = icmp eq ptr %20, null
  br i1 %21, label %78, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !452
  %25 = and i32 %24, 2097152
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %20, i32 noundef 2) #21
  br i1 %28, label %81, label %76

29:                                               ; preds = %22
  %30 = and i32 %24, 65280
  %31 = icmp ne i32 %30, 0
  %32 = and i32 %24, 255
  %33 = icmp eq i32 %32, 8
  %34 = or i1 %31, %33
  %35 = and i32 %24, 16777471
  %36 = icmp eq i32 %35, 16777226
  %37 = or i1 %36, %34
  br i1 %37, label %38, label %78

38:                                               ; preds = %29
  %39 = and i32 %24, 1024
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %20, align 8, !tbaa !487
  %43 = icmp eq ptr %42, null
  br i1 %43, label %78, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.xpv, ptr %42, i64 0, i32 2
  %46 = load i64, ptr %45, align 8, !tbaa !458
  %47 = icmp ugt i64 %46, 1
  br i1 %47, label %81, label %48

48:                                               ; preds = %44
  %49 = icmp eq i64 %46, 0
  br i1 %49, label %78, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !398
  %53 = load i8, ptr %52, align 1, !tbaa !398
  %54 = icmp eq i8 %53, 48
  br i1 %54, label %76, label %81

55:                                               ; preds = %38
  %56 = and i32 %24, 768
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %74, label %58

58:                                               ; preds = %55
  %59 = and i32 %24, 256
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %20, align 8, !tbaa !487
  %63 = getelementptr inbounds %struct.xpviv, ptr %62, i64 0, i32 4
  %64 = load i64, ptr %63, align 8, !tbaa !398
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %61, %58
  %67 = and i32 %24, 512
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %20, align 8, !tbaa !487
  %71 = getelementptr inbounds %struct.xpvnv, ptr %70, i64 0, i32 5
  %72 = load double, ptr %71, align 8, !tbaa !398
  %73 = fcmp une double %72, 0.000000e+00
  br i1 %73, label %81, label %76

74:                                               ; preds = %55
  %75 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %20, i32 noundef 0) #21
  br i1 %75, label %81, label %76

76:                                               ; preds = %69, %50, %74, %27
  %77 = load ptr, ptr @PL_op, align 8, !tbaa !385
  br label %78

78:                                               ; preds = %76, %66, %48, %41, %29, %18
  %79 = phi ptr [ %77, %76 ], [ %15, %66 ], [ %15, %48 ], [ %15, %41 ], [ %15, %29 ], [ %15, %18 ]
  store ptr %19, ptr @PL_stack_sp, align 8, !tbaa !385
  %80 = getelementptr inbounds %struct.logop, ptr %79, i64 0, i32 8
  br label %129

81:                                               ; preds = %50, %74, %27, %69, %61, %44, %13
  %82 = phi ptr [ %1, %13 ], [ %19, %44 ], [ %19, %61 ], [ %19, %69 ], [ %19, %27 ], [ %19, %74 ], [ %19, %50 ]
  tail call void @Perl_push_scope() #21
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #21
  %83 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  store i64 %83, ptr @PL_tmps_floor, align 8, !tbaa !509
  %84 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %85 = getelementptr inbounds %struct.stackinfo, ptr %84, i64 0, i32 4
  %86 = load i32, ptr %85, align 8, !tbaa !397
  %87 = getelementptr inbounds %struct.stackinfo, ptr %84, i64 0, i32 5
  %88 = load i32, ptr %87, align 4, !tbaa !663
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = add nsw i32 %86, 1
  store i32 %91, ptr %85, align 8, !tbaa !397
  br label %96

92:                                               ; preds = %81
  %93 = tail call i32 @Perl_cxinc() #21
  %94 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %95 = getelementptr inbounds %struct.stackinfo, ptr %94, i64 0, i32 4
  store i32 %93, ptr %95, align 8, !tbaa !397
  br label %96

96:                                               ; preds = %92, %90
  %97 = phi i32 [ %93, %92 ], [ %91, %90 ]
  %98 = phi ptr [ %94, %92 ], [ %84, %90 ]
  %99 = getelementptr inbounds %struct.stackinfo, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !395
  %101 = sext i32 %97 to i64
  %102 = getelementptr inbounds %struct.context, ptr %100, i64 %101
  store i8 1, ptr %102, align 8, !tbaa !398
  %103 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %104 = ptrtoint ptr %82 to i64
  %105 = ptrtoint ptr %103 to i64
  %106 = sub i64 %104, %105
  %107 = lshr exact i64 %106, 3
  %108 = trunc i64 %107 to i32
  %109 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 3
  store i32 %108, ptr %109, align 4, !tbaa !398
  %110 = load ptr, ptr @PL_curcop, align 8, !tbaa !385
  %111 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 4
  store ptr %110, ptr %111, align 8, !tbaa !398
  %112 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %113 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %114 = ptrtoint ptr %112 to i64
  %115 = ptrtoint ptr %113 to i64
  %116 = sub i64 %114, %115
  %117 = lshr exact i64 %116, 2
  %118 = trunc i64 %117 to i32
  %119 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 5
  store i32 %118, ptr %119, align 8, !tbaa !398
  %120 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %121 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 6
  store i32 %120, ptr %121, align 4, !tbaa !398
  %122 = load ptr, ptr @PL_curpm, align 8, !tbaa !385
  %123 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 7
  store ptr %122, ptr %123, align 8, !tbaa !398
  %124 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 1
  store i8 %16, ptr %124, align 1, !tbaa !398
  %125 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %126 = getelementptr inbounds %struct.logop, ptr %125, i64 0, i32 8
  %127 = load ptr, ptr %126, align 8, !tbaa !426
  %128 = getelementptr inbounds %struct.block, ptr %102, i64 0, i32 8
  store ptr %127, ptr %128, align 8, !tbaa !398
  store ptr %82, ptr @PL_stack_sp, align 8, !tbaa !385
  br label %129

129:                                              ; preds = %96, %78
  %130 = phi ptr [ @PL_op, %96 ], [ %80, %78 ]
  %131 = load ptr, ptr %130, align 8, !tbaa !385
  %132 = load ptr, ptr %131, align 8, !tbaa !400
  ret ptr %132
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_leavewhen() local_unnamed_addr #0 !prof !422 {
  %1 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %2 = getelementptr inbounds %struct.stackinfo, ptr %1, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !397
  %4 = tail call fastcc i32 @S_dopoptogiven(i32 noundef %3) #22
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  %7 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %8 = getelementptr inbounds %struct.op, ptr %7, i64 0, i32 5
  %9 = load i8, ptr %8, align 2, !tbaa !428
  %10 = icmp sgt i8 %9, -1
  %11 = select i1 %10, ptr @.str.84, ptr @.str.83
  %12 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.82, ptr noundef nonnull %11) #21
  br label %105

13:                                               ; preds = %0
  %14 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %15 = getelementptr inbounds %struct.stackinfo, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !395
  %17 = add nsw i32 %3, -1
  store i32 %17, ptr %2, align 8, !tbaa !397
  %18 = sext i32 %3 to i64
  %19 = getelementptr inbounds %struct.context, ptr %16, i64 %18
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %21 = getelementptr inbounds %struct.block, ptr %19, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !398
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = getelementptr inbounds %struct.block, ptr %19, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !398
  store ptr %26, ptr @PL_curcop, align 8, !tbaa !385
  %27 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %28 = getelementptr inbounds %struct.block, ptr %19, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !398
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %27, i64 %30
  store ptr %31, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %32 = getelementptr inbounds %struct.block, ptr %19, i64 0, i32 6
  %33 = load i32, ptr %32, align 4, !tbaa !398
  store i32 %33, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %34 = getelementptr inbounds %struct.block, ptr %19, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !398
  %36 = getelementptr inbounds %struct.block, ptr %19, i64 0, i32 1
  %37 = load i8, ptr %36, align 1, !tbaa !398
  %38 = zext i8 %37 to i32
  %39 = tail call fastcc ptr @S_leave_common(ptr noundef %24, ptr noundef %14, ptr noundef %24, i32 noundef %38, i32 noundef 655360, i1 noundef zeroext false) #22
  store ptr %35, ptr @PL_curpm, align 8, !tbaa !385
  tail call void @Perl_pop_scope() #21
  %40 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %41 = getelementptr inbounds %struct.stackinfo, ptr %40, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !397
  %43 = icmp slt i32 %4, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %13
  tail call void @Perl_dounwind(i32 noundef %4) #22
  %45 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  br label %46

46:                                               ; preds = %44, %13
  %47 = phi ptr [ %45, %44 ], [ %40, %13 ]
  %48 = getelementptr inbounds %struct.stackinfo, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !395
  %50 = zext nneg i32 %4 to i64
  %51 = getelementptr inbounds %struct.context, ptr %49, i64 %50
  %52 = load i8, ptr %51, align 8, !tbaa !398
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 12
  %55 = icmp ne i32 %54, 4
  %56 = and i32 %53, 7
  %57 = icmp eq i32 %56, 5
  %58 = or i1 %55, %57
  br i1 %58, label %97, label %59

59:                                               ; preds = %46
  %60 = load i32, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %61 = getelementptr inbounds %struct.stackinfo, ptr %47, i64 0, i32 4
  %62 = load i32, ptr %61, align 8, !tbaa !397
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.context, ptr %49, i64 %63
  %65 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %66 = getelementptr inbounds %struct.block, ptr %64, i64 0, i32 3
  %67 = load i32, ptr %66, align 4, !tbaa !398
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds ptr, ptr %65, i64 %68
  store ptr %69, ptr @PL_stack_sp, align 8, !tbaa !385
  %70 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %71 = getelementptr inbounds %struct.block, ptr %64, i64 0, i32 5
  %72 = load i32, ptr %71, align 8, !tbaa !398
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, ptr %70, i64 %73
  store ptr %74, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %75 = getelementptr inbounds %struct.block, ptr %64, i64 0, i32 6
  %76 = load i32, ptr %75, align 4, !tbaa !398
  store i32 %76, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %77 = getelementptr inbounds %struct.block, ptr %64, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !398
  store ptr %78, ptr @PL_curpm, align 8, !tbaa !385
  %79 = icmp slt i32 %76, %60
  br i1 %79, label %80, label %85

80:                                               ; preds = %59
  %81 = load ptr, ptr @PL_scopestack, align 8, !tbaa !385
  %82 = sext i32 %76 to i64
  %83 = getelementptr inbounds i32, ptr %81, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !430
  tail call void @Perl_leave_scope(i32 noundef %84) #21
  br label %85

85:                                               ; preds = %80, %59
  %86 = getelementptr inbounds %struct.block, ptr %64, i64 0, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !398
  store ptr %87, ptr @PL_curcop, align 8, !tbaa !385
  %88 = load i32, ptr @PL_sig_pending, align 4, !tbaa !430
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %85
  %91 = load ptr, ptr @PL_signalhook, align 8, !tbaa !385
  tail call void %91() #21
  br label %92

92:                                               ; preds = %85, %90
  %93 = getelementptr inbounds %struct.block, ptr %64, i64 0, i32 8, i32 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !398
  %95 = getelementptr inbounds %struct.loop, ptr %94, i64 0, i32 10
  %96 = load ptr, ptr %95, align 8, !tbaa !745
  br label %105

97:                                               ; preds = %46
  %98 = load i32, ptr @PL_sig_pending, align 4, !tbaa !430
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr @PL_signalhook, align 8, !tbaa !385
  tail call void %101() #21
  br label %102

102:                                              ; preds = %97, %100
  store ptr %39, ptr @PL_stack_sp, align 8, !tbaa !385
  %103 = getelementptr inbounds %struct.block, ptr %51, i64 0, i32 8
  %104 = load ptr, ptr %103, align 8, !tbaa !398
  br label %105

105:                                              ; preds = %102, %92, %6
  %106 = phi ptr [ %12, %6 ], [ %96, %92 ], [ %104, %102 ]
  ret ptr %106
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @S_dopoptogiven(i32 noundef %0) unnamed_addr #9 !prof !422 !PGOFuncName !918 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %23

3:                                                ; preds = %1
  %4 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %5 = getelementptr inbounds %struct.stackinfo, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !395
  br label %7

7:                                                ; preds = %3, %20
  %8 = phi i32 [ %0, %3 ], [ %21, %20 ]
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.context, ptr %6, i64 %9
  %11 = load i8, ptr %10, align 8, !tbaa !398
  %12 = and i8 %11, 15
  switch i8 %12, label %20 [
    i8 3, label %23
    i8 4, label %13
    i8 7, label %13
    i8 6, label %13
  ]

13:                                               ; preds = %7, %7, %7
  %14 = zext i8 %11 to i32
  %15 = and i32 %14, 7
  %16 = icmp eq i32 %15, 5
  %17 = and i32 %14, 28
  %18 = icmp ne i32 %17, 20
  %19 = or i1 %18, %16
  br i1 %19, label %20, label %23

20:                                               ; preds = %13, %7
  %21 = add nsw i32 %8, -1
  %22 = icmp sgt i32 %8, 0
  br i1 %22, label %7, label %23, !llvm.loop !919

23:                                               ; preds = %20, %13, %7, %1
  %24 = phi i32 [ %0, %1 ], [ %8, %7 ], [ %8, %13 ], [ -1, %20 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_continue() local_unnamed_addr #0 !prof !422 {
  %1 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %2 = getelementptr inbounds %struct.stackinfo, ptr %1, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !397
  %4 = tail call fastcc i32 @S_dopoptowhen(i32 noundef %3) #22
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.85) #21
  br label %42

8:                                                ; preds = %0
  %9 = icmp slt i32 %4, %3
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  tail call void @Perl_dounwind(i32 noundef %4) #22
  %11 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %12 = getelementptr inbounds %struct.stackinfo, ptr %11, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !397
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i32 [ %13, %10 ], [ %3, %8 ]
  %16 = phi ptr [ %11, %10 ], [ %1, %8 ]
  %17 = getelementptr inbounds %struct.stackinfo, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !395
  %19 = getelementptr inbounds %struct.stackinfo, ptr %16, i64 0, i32 4
  %20 = add nsw i32 %15, -1
  store i32 %20, ptr %19, align 8, !tbaa !397
  %21 = sext i32 %15 to i64
  %22 = getelementptr inbounds %struct.context, ptr %18, i64 %21
  %23 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %24 = getelementptr inbounds %struct.block, ptr %22, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !398
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %23, i64 %26
  %28 = getelementptr inbounds %struct.block, ptr %22, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !398
  store ptr %29, ptr @PL_curcop, align 8, !tbaa !385
  %30 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %31 = getelementptr inbounds %struct.block, ptr %22, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !398
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %30, i64 %33
  store ptr %34, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %35 = getelementptr inbounds %struct.block, ptr %22, i64 0, i32 6
  %36 = load i32, ptr %35, align 4, !tbaa !398
  store i32 %36, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %37 = getelementptr inbounds %struct.block, ptr %22, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !398
  store ptr %38, ptr @PL_curpm, align 8, !tbaa !385
  tail call void @Perl_pop_scope() #21
  store ptr %27, ptr @PL_stack_sp, align 8, !tbaa !385
  %39 = getelementptr inbounds %struct.block, ptr %22, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !398
  %41 = load ptr, ptr %40, align 8, !tbaa !400
  br label %42

42:                                               ; preds = %14, %6
  %43 = phi ptr [ %7, %6 ], [ %41, %14 ]
  ret ptr %43
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @S_dopoptowhen(i32 noundef %0) unnamed_addr #9 !prof !422 !PGOFuncName !920 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %17

3:                                                ; preds = %1
  %4 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %5 = getelementptr inbounds %struct.stackinfo, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !395
  br label %7

7:                                                ; preds = %3, %14
  %8 = phi i32 [ %0, %3 ], [ %15, %14 ]
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.context, ptr %6, i64 %9
  %11 = load i8, ptr %10, align 8, !tbaa !398
  %12 = and i8 %11, 15
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = add nsw i32 %8, -1
  %16 = icmp sgt i32 %8, 0
  br i1 %16, label %7, label %17, !llvm.loop !921

17:                                               ; preds = %7, %14, %1
  %18 = phi i32 [ %0, %1 ], [ -1, %14 ], [ %8, %7 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_pp_break() local_unnamed_addr #0 !prof !422 {
  %1 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %2 = getelementptr inbounds %struct.stackinfo, ptr %1, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !397
  %4 = tail call fastcc i32 @S_dopoptogiven(i32 noundef %3) #22
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.86) #21
  br label %51

8:                                                ; preds = %0
  %9 = getelementptr inbounds %struct.stackinfo, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !395
  %11 = zext nneg i32 %4 to i64
  %12 = getelementptr inbounds %struct.context, ptr %10, i64 %11
  %13 = load i8, ptr %12, align 8, !tbaa !398
  %14 = zext i8 %13 to i32
  %15 = and i32 %14, 12
  %16 = icmp ne i32 %15, 4
  %17 = and i32 %14, 7
  %18 = icmp eq i32 %17, 5
  %19 = or i1 %16, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %8
  %21 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.87) #21
  br label %51

22:                                               ; preds = %8
  %23 = icmp slt i32 %4, %3
  br i1 %23, label %24, label %30

24:                                               ; preds = %22
  tail call void @Perl_dounwind(i32 noundef %4) #22
  %25 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %26 = getelementptr inbounds %struct.stackinfo, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !395
  %28 = getelementptr inbounds %struct.stackinfo, ptr %25, i64 0, i32 4
  %29 = load i32, ptr %28, align 8, !tbaa !397
  br label %30

30:                                               ; preds = %24, %22
  %31 = phi i32 [ %29, %24 ], [ %3, %22 ]
  %32 = phi ptr [ %27, %24 ], [ %10, %22 ]
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds %struct.context, ptr %32, i64 %33
  %35 = load ptr, ptr @PL_stack_base, align 8, !tbaa !385
  %36 = getelementptr inbounds %struct.block, ptr %34, i64 0, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !398
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %35, i64 %38
  store ptr %39, ptr @PL_stack_sp, align 8, !tbaa !385
  %40 = load ptr, ptr @PL_markstack, align 8, !tbaa !385
  %41 = getelementptr inbounds %struct.block, ptr %34, i64 0, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !398
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %40, i64 %43
  store ptr %44, ptr @PL_markstack_ptr, align 8, !tbaa !385
  %45 = getelementptr inbounds %struct.block, ptr %34, i64 0, i32 6
  %46 = load i32, ptr %45, align 4, !tbaa !398
  store i32 %46, ptr @PL_scopestack_ix, align 4, !tbaa !430
  %47 = getelementptr inbounds %struct.block, ptr %34, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !398
  store ptr %48, ptr @PL_curpm, align 8, !tbaa !385
  %49 = getelementptr inbounds %struct.block, ptr %34, i64 0, i32 8
  %50 = load ptr, ptr %49, align 8, !tbaa !398
  br label %51

51:                                               ; preds = %30, %20, %6
  %52 = phi ptr [ %7, %6 ], [ %21, %20 ], [ %50, %30 ]
  ret ptr %52
}

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_isinfnan(double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_vivify_ref(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @S_dopoptoloop(i32 noundef %0) unnamed_addr #0 !prof !922 !PGOFuncName !923 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %3, label %41, !prof !417

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  br label %6

6:                                                ; preds = %3, %35
  %7 = phi ptr [ %5, %3 ], [ %36, %35 ]
  %8 = phi i64 [ %4, %3 ], [ %37, %35 ]
  %9 = getelementptr inbounds %struct.stackinfo, ptr %7, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !395
  %11 = getelementptr inbounds %struct.context, ptr %10, i64 %8
  %12 = load i8, ptr %11, align 8, !tbaa !398
  %13 = and i8 %12, 15
  switch i8 %13, label %35 [
    i8 11, label %14
    i8 8, label %14
    i8 9, label %14
    i8 10, label %14
    i8 0, label %14
    i8 7, label %39
    i8 6, label %39
    i8 4, label %39
    i8 5, label %39
  ], !prof !924

14:                                               ; preds = %6, %6, %6, %6, %6
  %15 = zext nneg i8 %13 to i64
  %16 = getelementptr inbounds [12 x ptr], ptr @context_name, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !385
  %18 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %19 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 4
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, 511
  %22 = icmp eq i16 %21, 380
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = tail call ptr @Perl_custom_op_get_field(ptr noundef nonnull %18, i32 noundef 1) #21
  br label %29

25:                                               ; preds = %14
  %26 = zext nneg i16 %21 to i64
  %27 = getelementptr inbounds [0 x ptr], ptr @PL_op_name, i64 0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !385
  br label %29

29:                                               ; preds = %25, %23
  %30 = phi ptr [ %24, %23 ], [ %28, %25 ]
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 3, ptr noundef nonnull @.str.97, ptr noundef %17, ptr noundef %30) #21
  %31 = load i8, ptr %11, align 8, !tbaa !398
  %32 = and i8 %31, 15
  %33 = icmp eq i8 %32, 0
  %34 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  br i1 %33, label %41, label %35

35:                                               ; preds = %29, %6
  %36 = phi ptr [ %34, %29 ], [ %7, %6 ]
  %37 = add nsw i64 %8, -1
  %38 = icmp sgt i64 %8, 0
  br i1 %38, label %6, label %41, !prof !925, !llvm.loop !926

39:                                               ; preds = %6, %6, %6, %6
  %40 = trunc i64 %8 to i32
  br label %41

41:                                               ; preds = %29, %35, %39, %1
  %42 = phi i32 [ %0, %1 ], [ %40, %39 ], [ -1, %35 ], [ -1, %29 ]
  ret i32 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @S_dopoptolabel(ptr noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !927 !PGOFuncName !928 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %7 = getelementptr inbounds %struct.stackinfo, ptr %6, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !397
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %75, !prof !417

10:                                               ; preds = %3
  %11 = and i32 %2, 536870912
  %12 = zext nneg i32 %8 to i64
  br label %13

13:                                               ; preds = %73, %10
  %14 = phi i64 [ %12, %10 ], [ %74, %73 ]
  %15 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !385
  %16 = getelementptr inbounds %struct.stackinfo, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !395
  %18 = getelementptr inbounds %struct.context, ptr %17, i64 %14
  %19 = load i8, ptr %18, align 8, !tbaa !398
  %20 = and i8 %19, 15
  switch i8 %20, label %71 [
    i8 11, label %21
    i8 8, label %21
    i8 9, label %21
    i8 10, label %21
    i8 0, label %21
    i8 7, label %43
    i8 6, label %43
    i8 4, label %43
    i8 5, label %43
  ], !prof !929

21:                                               ; preds = %13, %13, %13, %13, %13
  %22 = zext nneg i8 %20 to i64
  %23 = getelementptr inbounds [12 x ptr], ptr @context_name, i64 0, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !385
  %25 = load ptr, ptr @PL_op, align 8, !tbaa !385
  %26 = getelementptr inbounds %struct.op, ptr %25, i64 0, i32 4
  %27 = load i16, ptr %26, align 8
  %28 = and i16 %27, 511
  %29 = icmp eq i16 %28, 380
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = call ptr @Perl_custom_op_get_field(ptr noundef nonnull %25, i32 noundef 1) #21
  br label %36

32:                                               ; preds = %21
  %33 = zext nneg i16 %28 to i64
  %34 = getelementptr inbounds [0 x ptr], ptr @PL_op_name, i64 0, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !385
  br label %36

36:                                               ; preds = %32, %30
  %37 = phi ptr [ %31, %30 ], [ %35, %32 ]
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 3, ptr noundef nonnull @.str.97, ptr noundef %24, ptr noundef %37) #21
  %38 = load i8, ptr %18, align 8, !tbaa !398
  %39 = and i8 %38, 15
  %40 = icmp ne i8 %39, 0
  %41 = icmp sgt i64 %14, 0
  %42 = and i1 %40, %41
  br i1 %42, label %73, label %75, !prof !930

43:                                               ; preds = %13, %13, %13, %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  store i64 0, ptr %4, align 8, !tbaa !509
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #23
  store i32 0, ptr %5, align 4, !tbaa !430
  %44 = getelementptr inbounds %struct.block, ptr %18, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !398
  %46 = call ptr @Perl_cop_fetch_label(ptr noundef %45, ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %47 = icmp eq ptr %46, null
  br i1 %47, label %68, label %48, !prof !737

48:                                               ; preds = %43
  %49 = load i32, ptr %5, align 4, !tbaa !430
  %50 = and i32 %49, 536870912
  %51 = icmp eq i32 %50, %11
  %52 = load i64, ptr %4, align 8, !tbaa !509
  br i1 %51, label %61, label %53, !prof !736

53:                                               ; preds = %48
  %54 = icmp eq i32 %11, 0
  br i1 %54, label %58, label %55, !prof !736

55:                                               ; preds = %53
  %56 = call i32 @Perl_bytes_cmp_utf8(ptr noundef nonnull %46, i64 noundef %52, ptr noundef %0, i64 noundef %1) #21
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %69, label %68

58:                                               ; preds = %53
  %59 = call i32 @Perl_bytes_cmp_utf8(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %46, i64 noundef %52) #21
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %69, label %68

61:                                               ; preds = %48
  %62 = icmp eq i64 %52, %1
  br i1 %62, label %63, label %68, !prof !736

63:                                               ; preds = %61
  %64 = icmp eq ptr %46, %0
  br i1 %64, label %69, label %65, !prof !737

65:                                               ; preds = %63
  %66 = call i32 @bcmp(ptr nonnull %46, ptr %0, i64 %1)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68, !prof !736

68:                                               ; preds = %65, %61, %58, %55, %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  br label %71

69:                                               ; preds = %55, %58, %63, %65
  %70 = trunc i64 %14 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  br label %75

71:                                               ; preds = %13, %68
  %72 = icmp sgt i64 %14, 0
  br i1 %72, label %73, label %75, !prof !931

73:                                               ; preds = %71, %36
  %74 = add nsw i64 %14, -1
  br label %13, !llvm.loop !932

75:                                               ; preds = %71, %36, %3, %69
  %76 = phi i32 [ %70, %69 ], [ %8, %3 ], [ -1, %36 ], [ -1, %71 ]
  ret i32 %76
}

; Function Attrs: optsize
declare ptr @Perl_custom_op_get_field(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_cop_fetch_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_bytes_cmp_utf8(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @stat64(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_check_type_and_open(ptr noundef %0) unnamed_addr #0 !prof !842 !PGOFuncName !933 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %2, align 8, !tbaa !385
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %5 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !452
  %7 = and i32 %6, 2098176
  %8 = icmp eq i32 %7, 1024
  br i1 %8, label %9, label %15, !prof !813

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8, !tbaa !487
  %11 = getelementptr inbounds %struct.xpv, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !458
  store i64 %12, ptr %4, align 8, !tbaa !509
  %13 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !398
  br label %18

15:                                               ; preds = %1
  %16 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 34) #21
  %17 = load i64, ptr %4, align 8, !tbaa !509
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi i64 [ %12, %9 ], [ %17, %15 ]
  %20 = phi ptr [ %14, %9 ], [ %16, %15 ]
  %21 = call fastcc zeroext i1 @S_is_safe_syscall(ptr noundef %20, i64 noundef %19, ptr noundef nonnull @.str.58) #22
  br i1 %21, label %22, label %33, !prof !813

22:                                               ; preds = %18
  %23 = tail call ptr @__errno_location() #26
  store i32 0, ptr %23, align 4, !tbaa !430
  %24 = call i32 @stat64(ptr noundef %20, ptr noundef nonnull %3) #21
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %33, label %26, !prof !816

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !934
  %29 = trunc i32 %28 to i16
  %30 = and i16 %29, -4096
  switch i16 %30, label %31 [
    i16 16384, label %33
    i16 24576, label %33
  ], !prof !937

31:                                               ; preds = %26
  %32 = call ptr @PerlIO_openn(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.65, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 1, ptr noundef nonnull %2) #21
  br label %33

33:                                               ; preds = %22, %26, %26, %18, %31
  %34 = phi ptr [ %32, %31 ], [ null, %18 ], [ null, %26 ], [ null, %26 ], [ null, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #23
  ret ptr %34
}

; Function Attrs: optsize
declare ptr @PerlIO_openn(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_pad_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_hints() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_hv_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #16

; Function Attrs: optsize
declare void @Perl_refcounted_he_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_refcounted_he_inc(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @S_try_yyparse() unnamed_addr #0 !prof !422 !PGOFuncName !938 {
  %1 = alloca %struct.jmpenv, align 8
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %1) #23
  %2 = load ptr, ptr @PL_top_env, align 8, !tbaa !385
  %3 = getelementptr inbounds %struct.jmpenv, ptr %1, i64 0, i32 1
  store ptr %2, ptr %3, align 8, !tbaa !632
  %4 = call i32 @__sigsetjmp(ptr noundef nonnull %1, i32 noundef 0) #28
  %5 = getelementptr inbounds %struct.jmpenv, ptr %1, i64 0, i32 2
  store i32 %4, ptr %5, align 8, !tbaa !871
  store ptr %1, ptr @PL_top_env, align 8, !tbaa !385
  %6 = getelementptr inbounds %struct.jmpenv, ptr %1, i64 0, i32 3
  store i8 0, ptr %6, align 4, !tbaa !833
  switch i32 %4, label %11 [
    i32 0, label %7
    i32 3, label %24
  ]

7:                                                ; preds = %0
  %8 = call i32 @Perl_yyparse(i32 noundef 258) #21
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  br label %24

11:                                               ; preds = %0
  %12 = load ptr, ptr %3, align 8, !tbaa !632
  store ptr %12, ptr @PL_top_env, align 8, !tbaa !385
  %13 = getelementptr inbounds %struct.jmpenv, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !632
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  call void @siglongjmp(ptr noundef nonnull %12, i32 noundef %4) #25
  unreachable

17:                                               ; preds = %11
  %18 = icmp eq i32 %4, 2
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = load i32, ptr @PL_statusvalue, align 4, !tbaa !430
  call void @exit(i32 noundef %20) #25
  unreachable

21:                                               ; preds = %17
  %22 = call ptr @Perl_PerlIO_stderr() #21
  %23 = call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %22, ptr noundef nonnull @.str.18, i32 noundef %4) #21
  call void @exit(i32 noundef 1) #25
  unreachable

24:                                               ; preds = %7, %0
  %25 = phi i32 [ %4, %0 ], [ %10, %7 ]
  %26 = load ptr, ptr %3, align 8, !tbaa !632
  store ptr %26, ptr @PL_top_env, align 8, !tbaa !385
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %1) #23
  ret i32 %25
}

; Function Attrs: optsize
declare i32 @Perl_yyparse(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_op_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_cv_forget_slab(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_call_list(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize returns_twice
declare i32 @__sigsetjmp(ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: optsize
declare ptr @Perl_av_store(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_amagic_call(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_hv_iterinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_iternext_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_iterkeysv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @S_SvREFCNT_inc_void(ptr noundef %0) unnamed_addr #7 !prof !422 !PGOFuncName !939 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !468
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !468
  br label %7

7:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_hv_placeholders_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @S_make_matcher(ptr noundef %0) unnamed_addr #0 !prof !422 !PGOFuncName !940 {
  %2 = tail call ptr @Perl_newPMOP(i32 noundef 31, i32 noundef 66) #21
  %3 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %0) #22
  %4 = getelementptr inbounds %struct.pmop, ptr %2, i64 0, i32 9
  store ptr %0, ptr %4, align 8, !tbaa !431
  %5 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 4
  %6 = load i16, ptr %5, align 8
  %7 = or i16 %6, 2048
  store i16 %7, ptr %5, align 8
  tail call void @Perl_save_pushptr(ptr noundef %2, i32 noundef 9) #21
  tail call void @Perl_push_scope() #21
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #21
  %8 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  store i64 %8, ptr @PL_tmps_floor, align 8, !tbaa !509
  %9 = load ptr, ptr @PL_op, align 8, !tbaa !385
  tail call void @Perl_save_pushptr(ptr noundef %9, i32 noundef 18) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i1 @S_matcher_matches_sv(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !422 !PGOFuncName !941 {
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  store ptr %0, ptr @PL_op, align 8, !tbaa !385
  %4 = load ptr, ptr @PL_stack_max, align 8, !tbaa !385
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %3 to i64
  %7 = sub i64 %5, %6
  %8 = icmp slt i64 %7, 8
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call ptr @Perl_stack_grow(ptr noundef %3, ptr noundef %3, i64 noundef 1) #21
  br label %11

11:                                               ; preds = %2, %9
  %12 = phi ptr [ %10, %9 ], [ %3, %2 ]
  %13 = getelementptr inbounds ptr, ptr %12, i64 1
  store ptr %1, ptr %13, align 8, !tbaa !385
  store ptr %13, ptr @PL_stack_sp, align 8, !tbaa !385
  %14 = tail call ptr @Perl_pp_match() #21
  %15 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !385
  %16 = load ptr, ptr %15, align 8, !tbaa !385
  store ptr %16, ptr @PL_Sv, align 8, !tbaa !385
  %17 = icmp eq ptr %16, null
  br i1 %17, label %74, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !452
  %21 = and i32 %20, 2097152
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %16, i32 noundef 2) #21
  br label %74

25:                                               ; preds = %18
  %26 = and i32 %20, 65280
  %27 = icmp ne i32 %26, 0
  %28 = and i32 %20, 255
  %29 = icmp eq i32 %28, 8
  %30 = or i1 %27, %29
  %31 = and i32 %20, 16777471
  %32 = icmp eq i32 %31, 16777226
  %33 = or i1 %32, %30
  br i1 %33, label %34, label %74

34:                                               ; preds = %25
  %35 = and i32 %20, 1024
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %16, align 8, !tbaa !487
  %39 = icmp eq ptr %38, null
  br i1 %39, label %74, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.xpv, ptr %38, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !458
  %43 = icmp ugt i64 %42, 1
  br i1 %43, label %74, label %44

44:                                               ; preds = %40
  %45 = icmp eq i64 %42, 0
  br i1 %45, label %74, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !398
  %49 = load i8, ptr %48, align 1, !tbaa !398
  %50 = icmp ne i8 %49, 48
  br label %74

51:                                               ; preds = %34
  %52 = and i32 %20, 768
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %72, label %54

54:                                               ; preds = %51
  %55 = and i32 %20, 256
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %16, align 8, !tbaa !487
  %59 = getelementptr inbounds %struct.xpviv, ptr %58, i64 0, i32 4
  %60 = load i64, ptr %59, align 8, !tbaa !398
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %57, %54
  %63 = and i32 %20, 512
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr %16, align 8, !tbaa !487
  %67 = getelementptr inbounds %struct.xpvnv, ptr %66, i64 0, i32 5
  %68 = load double, ptr %67, align 8, !tbaa !398
  %69 = fcmp uno double %68, 0.000000e+00
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = fcmp une double %68, 0.000000e+00
  br label %74

72:                                               ; preds = %51
  %73 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %16, i32 noundef 0) #21
  br label %74

74:                                               ; preds = %23, %72, %25, %40, %46, %44, %37, %62, %70, %65, %57, %11
  %75 = phi i1 [ false, %11 ], [ %24, %23 ], [ %73, %72 ], [ false, %25 ], [ false, %37 ], [ true, %40 ], [ false, %44 ], [ %50, %46 ], [ true, %57 ], [ false, %62 ], [ true, %65 ], [ %71, %70 ]
  %76 = getelementptr inbounds ptr, ptr %15, i64 -1
  store ptr %76, ptr @PL_stack_sp, align 8, !tbaa !385
  ret i1 %75
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_destroy_matcher() unnamed_addr #0 !prof !422 !PGOFuncName !942 {
  %1 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !509
  %2 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !509
  %3 = icmp sgt i64 %1, %2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  tail call void @Perl_free_tmps() #21
  br label %5

5:                                                ; preds = %4, %0
  tail call void @Perl_pop_scope() #21
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_pp_i_eq() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_pp_eq() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_pp_seq() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newPMOP(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_pp_match() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_magicext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_sv_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_filter_read(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_usepvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_filter_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak_sv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind optsize returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { nounwind optsize }
attributes #22 = { optsize }
attributes #23 = { nounwind }
attributes #24 = { nounwind optsize willreturn memory(read) }
attributes #25 = { noreturn nounwind optsize }
attributes #26 = { nounwind optsize willreturn memory(none) }
attributes #27 = { nounwind optsize allocsize(0) }
attributes #28 = { nounwind optsize returns_twice }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!383}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382}
!35 = !{ptr @Perl_pp_wantarray, ptr @Perl_stack_grow, i64 1}
!36 = !{ptr @Perl_pp_wantarray, ptr @Perl_caller_cx, i64 1}
!37 = !{ptr @Perl_pp_wantarray, ptr @S_dopoptosub_at, i64 94130}
!38 = !{ptr @Perl_caller_cx, ptr @S_dopoptosub_at, i64 270}
!39 = !{ptr @Perl_pp_regcomp, ptr @S_ReANY, i64 272546}
!40 = !{ptr @Perl_pp_regcomp, ptr @Perl_current_re_engine, i64 68}
!41 = !{ptr @Perl_pp_regcomp, ptr @S_SvREFCNT_inc, i64 1}
!42 = !{ptr @Perl_pp_regcomp, ptr @Perl_mg_get, i64 1}
!43 = !{ptr @Perl_pp_regcomp, ptr @Perl_reg_temp_copy, i64 28}
!44 = !{ptr @Perl_pp_regcomp, ptr @S_SvREFCNT_dec, i64 94450}
!45 = !{ptr @Perl_pp_regcomp, ptr @Perl_sv_magic, i64 1}
!46 = !{ptr @S_SvREFCNT_dec, ptr @Perl_sv_free2, i64 1}
!47 = !{ptr @Perl_pp_substcont, ptr @S_SvREFCNT_dec, i64 550697}
!48 = !{ptr @Perl_pp_substcont, ptr @S_SvREFCNT_inc, i64 2}
!49 = !{ptr @Perl_pp_substcont, ptr @S_rxres_restore, i64 1544851}
!50 = !{ptr @Perl_pp_substcont, ptr @Perl_die, i64 1}
!51 = !{ptr @Perl_pp_substcont, ptr @Perl_mg_get, i64 1}
!52 = !{ptr @Perl_pp_substcont, ptr @Perl_sv_tainted, i64 1}
!53 = !{ptr @Perl_pp_substcont, ptr @Perl_sv_catsv_flags, i64 994154}
!54 = !{ptr @Perl_pp_substcont, ptr @S_ReANY, i64 4247348}
!55 = !{ptr @Perl_pp_substcont, ptr @Perl_sv_catpvn_flags, i64 853301}
!56 = !{ptr @Perl_pp_substcont, ptr @Perl_sv_force_normal_flags, i64 530587}
!57 = !{ptr @Perl_pp_substcont, ptr @Perl_croak_no_modify, i64 1}
!58 = !{ptr @Perl_pp_substcont, ptr @Perl_safesysfree, i64 20109}
!59 = !{ptr @Perl_pp_substcont, ptr @Perl_sv_newmortal, i64 550695}
!60 = !{ptr @Perl_pp_substcont, ptr @Perl_sv_setiv, i64 550695}
!61 = !{ptr @Perl_pp_substcont, ptr @Perl_sv_magic, i64 2}
!62 = !{ptr @Perl_pp_substcont, ptr @Perl_mg_set, i64 1}
!63 = !{ptr @Perl_pp_substcont, ptr @Perl_leave_scope, i64 1}
!64 = !{ptr @Perl_pp_substcont, ptr @S_rxres_free, i64 550696}
!65 = !{ptr @Perl_pp_substcont, ptr @Perl_sv_pvn_force_flags, i64 1}
!66 = !{ptr @Perl_pp_substcont, ptr @Perl_mg_find_mglob, i64 994154}
!67 = !{ptr @Perl_pp_substcont, ptr @Perl_sv_magicext_mglob, i64 275384}
!68 = !{ptr @Perl_pp_substcont, ptr @S_sv_only_taint_gmagic, i64 1}
!69 = !{ptr @Perl_pp_substcont, ptr @Perl_rxres_save, i64 994154}
!70 = !{ptr @S_rxres_restore, ptr @S_ReANY, i64 23049172}
!71 = !{ptr @S_rxres_restore, ptr @Perl_sv_force_normal_flags, i64 1}
!72 = !{ptr @S_rxres_restore, ptr @Perl_safesysfree, i64 1}
!73 = !{ptr @S_rxres_restore, ptr @S_SvREFCNT_dec, i64 1}
!74 = !{ptr @S_rxres_free, ptr @S_SvREFCNT_dec, i64 550695}
!75 = !{ptr @S_rxres_free, ptr @Perl_safesysfree, i64 1101390}
!76 = !{ptr @Perl_rxres_save, ptr @S_ReANY, i64 23049172}
!77 = !{ptr @Perl_rxres_save, ptr @Perl_safesysmalloc, i64 550696}
!78 = !{ptr @Perl_rxres_save, ptr @Perl_safesysrealloc, i64 1}
!79 = !{ptr @Perl_pp_grepstart, ptr @Perl_block_gimme, i64 1}
!80 = !{ptr @Perl_pp_grepstart, ptr @Perl_sv_newmortal, i64 1}
!81 = !{ptr @Perl_pp_grepstart, ptr @Perl_sv_setiv, i64 1}
!82 = !{ptr @Perl_pp_grepstart, ptr @Perl_pp_pushmark, i64 612979}
!83 = !{ptr @Perl_pp_grepstart, ptr @Perl_push_scope, i64 413338}
!84 = !{ptr @Perl_pp_grepstart, ptr @Perl_save_strlen, i64 206669}
!85 = !{ptr @Perl_pp_grepstart, ptr @Perl_save_sptr, i64 1}
!86 = !{ptr @Perl_pp_grepstart, ptr @Perl_save_gp, i64 206668}
!87 = !{ptr @Perl_pp_grepstart, ptr @Perl_save_generic_svref, i64 206668}
!88 = !{ptr @Perl_pp_grepstart, ptr @Perl_save_vptr, i64 206669}
!89 = !{ptr @Perl_pp_grepstart, ptr @Perl_sv_mortalcopy_flags, i64 1}
!90 = !{ptr @Perl_pp_grepstart, ptr @S_SvREFCNT_dec, i64 206668}
!91 = !{ptr @Perl_pp_grepstart, ptr @S_SvREFCNT_inc, i64 206668}
!92 = !{ptr @Perl_block_gimme, ptr @S_dopoptosub_at, i64 1534281}
!93 = !{ptr @Perl_block_gimme, ptr @Perl_croak, i64 767140}
!94 = !{ptr @Perl_pp_mapwhile, ptr @Perl_block_gimme, i64 6401}
!95 = !{ptr @Perl_pp_mapwhile, ptr @Perl_stack_grow, i64 1}
!96 = !{ptr @Perl_pp_mapwhile, ptr @Perl_tmps_grow_p, i64 1}
!97 = !{ptr @Perl_pp_mapwhile, ptr @Perl_sv_mortalcopy_flags, i64 302995}
!98 = !{ptr @Perl_pp_mapwhile, ptr @S_SvREFCNT_inc, i64 630906}
!99 = !{ptr @Perl_pp_mapwhile, ptr @Perl_free_tmps, i64 343606}
!100 = !{ptr @Perl_pp_mapwhile, ptr @Perl_pop_scope, i64 635223}
!101 = !{ptr @Perl_pp_mapwhile, ptr @Perl_push_scope, i64 235937}
!102 = !{ptr @Perl_pp_mapwhile, ptr @Perl_save_vptr, i64 235937}
!103 = !{ptr @Perl_pp_mapwhile, ptr @S_SvREFCNT_dec, i64 235936}
!104 = !{ptr @Perl_pp_range, ptr @Perl_block_gimme, i64 1}
!105 = !{ptr @Perl_pp_flip, ptr @Perl_block_gimme, i64 1}
!106 = !{ptr @Perl_pp_flip, ptr @Perl_sv_setpvn, i64 1}
!107 = !{ptr @Perl_pp_flop, ptr @Perl_block_gimme, i64 1}
!108 = !{ptr @Perl_pp_flop, ptr @Perl_mg_get, i64 2}
!109 = !{ptr @Perl_pp_flop, ptr @Perl_sv_2nv_flags, i64 19067}
!110 = !{ptr @Perl_pp_flop, ptr @Perl_croak, i64 1}
!111 = !{ptr @Perl_pp_flop, ptr @Perl_newSViv, i64 149428}
!112 = !{ptr @Perl_pp_flop, ptr @Perl_sv_2mortal, i64 149428}
!113 = !{ptr @Perl_pp_flop, ptr @Perl_die, i64 19067}
!114 = !{ptr @Perl_pp_flop, ptr @Perl_sv_inc, i64 1}
!115 = !{ptr @Perl_dounwind, ptr @S_rxres_free, i64 92734}
!116 = !{ptr @Perl_dounwind, ptr @S_SvREFCNT_dec, i64 826882}
!117 = !{ptr @Perl_dounwind, ptr @S_SvREFCNT_dec_NN, i64 289795}
!118 = !{ptr @Perl_dounwind, ptr @Perl_newSV_type, i64 11592}
!119 = !{ptr @Perl_dounwind, ptr @Perl_av_extend, i64 11592}
!120 = !{ptr @Perl_dounwind, ptr @Perl_leave_scope, i64 69551}
!121 = !{ptr @Perl_dounwind, ptr @S_CvDEPTHp, i64 104326}
!122 = !{ptr @Perl_dounwind, ptr @Perl_sv_2mortal, i64 57959}
!123 = !{ptr @Perl_dounwind, ptr @Perl_setdefout, i64 46367}
!124 = !{ptr @S_SvREFCNT_dec_NN, ptr @Perl_sv_free2, i64 5}
!125 = !{ptr @Perl_die_unwind, ptr @Perl_sv_mortalcopy_flags, i64 48}
!126 = !{ptr @Perl_die_unwind, ptr @Perl_gv_add_by_type, i64 2}
!127 = !{ptr @Perl_die_unwind, ptr @Perl_sv_setsv_flags, i64 91}
!128 = !{ptr @Perl_die_unwind, ptr @Perl_ck_warner, i64 1}
!129 = !{ptr @Perl_die_unwind, ptr @S_dopoptoeval, i64 47}
!130 = !{ptr @Perl_die_unwind, ptr @Perl_dounwind, i64 1}
!131 = !{ptr @Perl_die_unwind, ptr @Perl_PerlIO_stderr, i64 3}
!132 = !{ptr @Perl_die_unwind, ptr @Perl_PerlIO_write, i64 2}
!133 = !{ptr @Perl_die_unwind, ptr @Perl_my_exit, i64 1}
!134 = !{ptr @Perl_die_unwind, ptr @Perl_sv_2mortal, i64 1}
!135 = !{ptr @Perl_die_unwind, ptr @Perl_pop_scope, i64 46}
!136 = !{ptr @Perl_die_unwind, ptr @Perl_hv_common_key_len, i64 1}
!137 = !{ptr @Perl_die_unwind, ptr @Perl_croak, i64 1}
!138 = !{ptr @Perl_die_unwind, ptr @siglongjmp, i64 45}
!139 = !{ptr @Perl_die_unwind, ptr @PerlIO_printf, i64 1}
!140 = !{ptr @Perl_die_unwind, ptr @exit, i64 1}
!141 = !{ptr @Perl_die_unwind, ptr @Perl_write_to_stderr, i64 2}
!142 = !{ptr @Perl_die_unwind, ptr @Perl_my_failure_exit, i64 2}
!143 = !{ptr @Perl_pp_caller, ptr @Perl_block_gimme, i64 1}
!144 = !{ptr @Perl_pp_caller, ptr @Perl_sv_2iv_flags, i64 1}
!145 = !{ptr @Perl_pp_caller, ptr @Perl_caller_cx, i64 133}
!146 = !{ptr @Perl_pp_caller, ptr @Perl_stack_grow, i64 2}
!147 = !{ptr @Perl_pp_caller, ptr @Perl_sv_sethek, i64 130}
!148 = !{ptr @Perl_pp_caller, ptr @Perl_mg_set, i64 1}
!149 = !{ptr @Perl_pp_caller, ptr @Perl_newSVpv, i64 30}
!150 = !{ptr @Perl_pp_caller, ptr @Perl_sv_2mortal, i64 38}
!151 = !{ptr @Perl_pp_caller, ptr @Perl_closest_cop, i64 30}
!152 = !{ptr @Perl_pp_caller, ptr @Perl_sv_newmortal, i64 37}
!153 = !{ptr @Perl_pp_caller, ptr @Perl_sv_setiv, i64 37}
!154 = !{ptr @Perl_pp_caller, ptr @Perl_cv_name, i64 1}
!155 = !{ptr @Perl_pp_caller, ptr @Perl_newSVpvn_flags, i64 5}
!156 = !{ptr @Perl_pp_caller, ptr @Perl_init_dbargs, i64 1}
!157 = !{ptr @Perl_pp_caller, ptr @Perl_newSVpvn, i64 2}
!158 = !{ptr @Perl_pp_caller, ptr @Perl_get_hv, i64 1}
!159 = !{ptr @Perl_pp_caller, ptr @Perl_hv_common, i64 1}
!160 = !{ptr @Perl_pp_caller, ptr @Perl_refcounted_he_chain_2hv, i64 1}
!161 = !{ptr @Perl_pp_caller, ptr @Perl_newRV_noinc, i64 1}
!162 = !{ptr @Perl_pp_enter, ptr @Perl_block_gimme, i64 924658}
!163 = !{ptr @Perl_pp_enter, ptr @Perl_push_scope, i64 5397588}
!164 = !{ptr @Perl_pp_enter, ptr @Perl_save_strlen, i64 5397588}
!165 = !{ptr @Perl_pp_enter, ptr @Perl_cxinc, i64 1}
!166 = !{ptr @Perl_pp_leave, ptr @S_leave_common, i64 4099307}
!167 = !{ptr @Perl_pp_leave, ptr @Perl_pop_scope, i64 4099307}
!168 = !{ptr @S_leave_common, ptr @Perl_sv_2mortal, i64 2}
!169 = !{ptr @S_leave_common, ptr @Perl_sv_mortalcopy_flags, i64 12101}
!170 = !{ptr @Perl_pp_enteriter, ptr @Perl_block_gimme, i64 663}
!171 = !{ptr @Perl_pp_enteriter, ptr @Perl_push_scope, i64 289436}
!172 = !{ptr @Perl_pp_enteriter, ptr @Perl_save_strlen, i64 144718}
!173 = !{ptr @Perl_pp_enteriter, ptr @S_SvPADSTALE_off, i64 6495}
!174 = !{ptr @Perl_pp_enteriter, ptr @Perl_save_set_svflags, i64 6495}
!175 = !{ptr @Perl_pp_enteriter, ptr @Perl_save_padsv_and_mortalize, i64 123743}
!176 = !{ptr @Perl_pp_enteriter, ptr @S_SvREFCNT_inc, i64 126901}
!177 = !{ptr @Perl_pp_enteriter, ptr @Perl_save_pushptrptr, i64 1}
!178 = !{ptr @Perl_pp_enteriter, ptr @Perl_newSV, i64 1}
!179 = !{ptr @Perl_pp_enteriter, ptr @Perl_save_aliased_sv, i64 1}
!180 = !{ptr @Perl_pp_enteriter, ptr @Perl_cxinc, i64 1}
!181 = !{ptr @Perl_pp_enterloop, ptr @Perl_block_gimme, i64 50}
!182 = !{ptr @Perl_pp_enterloop, ptr @Perl_push_scope, i64 83632352}
!183 = !{ptr @Perl_pp_enterloop, ptr @Perl_save_strlen, i64 41816176}
!184 = !{ptr @Perl_pp_enterloop, ptr @Perl_cxinc, i64 1}
!185 = !{ptr @Perl_pp_leaveloop, ptr @S_leave_common, i64 41440792}
!186 = !{ptr @Perl_pp_leaveloop, ptr @S_SvREFCNT_dec_NN, i64 2}
!187 = !{ptr @Perl_pp_leaveloop, ptr @S_SvREFCNT_dec, i64 133572}
!188 = !{ptr @Perl_pp_leaveloop, ptr @Perl_pop_scope, i64 82881584}
!189 = !{ptr @Perl_pp_return, ptr @S_dopoptosub_at, i64 451981}
!190 = !{ptr @Perl_pp_return, ptr @Perl_dounwind, i64 407115}
!191 = !{ptr @Perl_pp_return, ptr @Perl_sv_2mortal, i64 1}
!192 = !{ptr @Perl_pp_return, ptr @Perl_die, i64 1}
!193 = !{ptr @Perl_pp_return, ptr @S_return_lvalues, i64 1}
!194 = !{ptr @Perl_pp_return, ptr @S_CvDEPTHp, i64 882566}
!195 = !{ptr @Perl_pp_return, ptr @S_SvREFCNT_inc, i64 6400}
!196 = !{ptr @Perl_pp_return, ptr @Perl_free_tmps, i64 1}
!197 = !{ptr @Perl_pp_return, ptr @Perl_sv_mortalcopy_flags, i64 435167}
!198 = !{ptr @Perl_pp_return, ptr @S_SvREFCNT_dec, i64 520106}
!199 = !{ptr @Perl_pp_return, ptr @Perl_pop_scope, i64 451978}
!200 = !{ptr @Perl_pp_return, ptr @S_SvREFCNT_dec_NN, i64 7}
!201 = !{ptr @Perl_pp_return, ptr @Perl_newSV_type, i64 7}
!202 = !{ptr @Perl_pp_return, ptr @Perl_av_extend, i64 7}
!203 = !{ptr @Perl_pp_return, ptr @Perl_leave_scope, i64 1}
!204 = !{ptr @Perl_pp_return, ptr @Perl_newSVpvn, i64 1}
!205 = !{ptr @Perl_pp_last, ptr @S_unwind_loop, i64 520098}
!206 = !{ptr @Perl_pp_last, ptr @Perl_pop_scope, i64 1040191}
!207 = !{ptr @Perl_pp_last, ptr @Perl_sv_2mortal, i64 1}
!208 = !{ptr @Perl_pp_last, ptr @Perl_setdefout, i64 1}
!209 = !{ptr @Perl_pp_last, ptr @S_CvDEPTHp, i64 2}
!210 = !{ptr @Perl_pp_last, ptr @S_SvREFCNT_dec_NN, i64 3}
!211 = !{ptr @Perl_pp_last, ptr @Perl_die, i64 1}
!212 = !{ptr @Perl_pp_last, ptr @S_SvREFCNT_dec, i64 531241}
!213 = !{ptr @S_unwind_loop, ptr @S_dopoptoloop, i64 100236}
!214 = !{ptr @S_unwind_loop, ptr @Perl_croak, i64 2}
!215 = !{ptr @S_unwind_loop, ptr @Perl_sv_2pv_flags, i64 1}
!216 = !{ptr @S_unwind_loop, ptr @strlen, i64 496519}
!217 = !{ptr @S_unwind_loop, ptr @S_dopoptolabel, i64 496520}
!218 = !{ptr @S_unwind_loop, ptr @Perl_newSVpvn_flags, i64 1}
!219 = !{ptr @S_unwind_loop, ptr @Perl_dounwind, i64 406420}
!220 = !{ptr @Perl_pp_next, ptr @S_unwind_loop, i64 76658}
!221 = !{ptr @Perl_pp_next, ptr @Perl_leave_scope, i64 7907}
!222 = !{ptr @Perl_find_runcv, ptr @Perl_find_runcv_where, i64 126}
!223 = !{ptr @Perl_pp_require, ptr @Perl_block_gimme, i64 1}
!224 = !{ptr @Perl_pp_require, ptr @Perl_mg_get, i64 2}
!225 = !{ptr @Perl_pp_require, ptr @Perl_mg_find, i64 1}
!226 = !{ptr @Perl_pp_require, ptr @Perl_new_version, i64 19}
!227 = !{ptr @Perl_pp_require, ptr @Perl_sv_2mortal, i64 103}
!228 = !{ptr @Perl_pp_require, ptr @Perl_sv_derived_from_pvn, i64 19}
!229 = !{ptr @Perl_pp_require, ptr @Perl_upg_version, i64 2}
!230 = !{ptr @Perl_pp_require, ptr @Perl_vcmp, i64 19}
!231 = !{ptr @Perl_pp_require, ptr @Perl_hv_common, i64 2}
!232 = !{ptr @Perl_pp_require, ptr @Perl_av_fetch, i64 128}
!233 = !{ptr @Perl_pp_require, ptr @Perl_vnormal, i64 2}
!234 = !{ptr @Perl_pp_require, ptr @Perl_die, i64 24}
!235 = !{ptr @Perl_pp_require, ptr @Perl_sv_2pv_flags, i64 2}
!236 = !{ptr @Perl_pp_require, ptr @S_is_safe_syscall, i64 6157}
!237 = !{ptr @Perl_pp_require, ptr @Perl_newSVpvn_flags, i64 13}
!238 = !{ptr @Perl_pp_require, ptr @Perl_pv_escape, i64 1}
!239 = !{ptr @Perl_pp_require, ptr @strerror, i64 13}
!240 = !{ptr @Perl_pp_require, ptr @Perl_taint_proper, i64 2}
!241 = !{ptr @Perl_pp_require, ptr @S_path_is_searchable, i64 6048}
!242 = !{ptr @Perl_pp_require, ptr @Perl_gv_add_by_type, i64 3}
!243 = !{ptr @Perl_pp_require, ptr @Perl_hv_common_key_len, i64 6110}
!244 = !{ptr @Perl_pp_require, ptr @S_doopen_pm, i64 108}
!245 = !{ptr @Perl_pp_require, ptr @__errno_location, i64 81}
!246 = !{ptr @Perl_pp_require, ptr @Perl_newSV_type, i64 79}
!247 = !{ptr @Perl_pp_require, ptr @Perl_mg_size, i64 1}
!248 = !{ptr @Perl_pp_require, ptr @Perl_sv_setpvf, i64 1}
!249 = !{ptr @Perl_pp_require, ptr @Perl_push_scope, i64 63}
!250 = !{ptr @Perl_pp_require, ptr @Perl_save_strlen, i64 63}
!251 = !{ptr @Perl_pp_require, ptr @Perl_sv_isobject, i64 1}
!252 = !{ptr @Perl_pp_require, ptr @Perl_call_method, i64 1}
!253 = !{ptr @Perl_pp_require, ptr @Perl_pop_scope, i64 1}
!254 = !{ptr @Perl_pp_require, ptr @S_SvREFCNT_dec_NN, i64 2}
!255 = !{ptr @Perl_pp_require, ptr @Perl_sv_grow, i64 76}
!256 = !{ptr @Perl_pp_require, ptr @Perl_sv_catpvn_flags, i64 20}
!257 = !{ptr @Perl_pp_require, ptr @Perl_sv_catsv_flags, i64 16}
!258 = !{ptr @Perl_pp_require, ptr @bcmp, i64 15}
!259 = !{ptr @Perl_pp_require, ptr @Perl_sv_catpv, i64 1}
!260 = !{ptr @Perl_pp_require, ptr @Perl_newSVpvn, i64 1}
!261 = !{ptr @Perl_pp_require, ptr @Perl_newSVpv, i64 124}
!262 = !{ptr @Perl_pp_require, ptr @Perl_save_generic_svref, i64 62}
!263 = !{ptr @Perl_pp_require, ptr @Perl_gv_fetchfile, i64 62}
!264 = !{ptr @Perl_pp_require, ptr @S_SvREFCNT_inc, i64 62}
!265 = !{ptr @Perl_pp_require, ptr @Perl_lex_start, i64 62}
!266 = !{ptr @Perl_pp_require, ptr @Perl_newSV, i64 1}
!267 = !{ptr @Perl_pp_require, ptr @Perl_sv_copypv_flags, i64 1}
!268 = !{ptr @Perl_pp_require, ptr @Perl_filter_add, i64 2}
!269 = !{ptr @Perl_pp_require, ptr @Perl_cxinc, i64 1}
!270 = !{ptr @Perl_pp_require, ptr @Perl_save_I32, i64 62}
!271 = !{ptr @Perl_pp_require, ptr @S_doeval, i64 62}
!272 = !{ptr @Perl_pp_require, ptr @S_docatch, i64 1}
!273 = !{ptr @S_is_safe_syscall, ptr @memchr, i64 6369}
!274 = !{ptr @S_is_safe_syscall, ptr @__errno_location, i64 1}
!275 = !{ptr @S_is_safe_syscall, ptr @Perl_ck_warner, i64 1}
!276 = !{ptr @S_doopen_pm, ptr @Perl_sv_2pv_flags, i64 2}
!277 = !{ptr @S_doopen_pm, ptr @S_is_safe_syscall, i64 111}
!278 = !{ptr @S_doopen_pm, ptr @bcmp, i64 109}
!279 = !{ptr @S_doopen_pm, ptr @Perl_sv_newmortal, i64 44}
!280 = !{ptr @S_doopen_pm, ptr @Perl_sv_setsv_flags, i64 1}
!281 = !{ptr @S_doopen_pm, ptr @Perl_sv_catpvn_flags, i64 44}
!282 = !{ptr @S_doopen_pm, ptr @stat64, i64 44}
!283 = !{ptr @S_doopen_pm, ptr @S_check_type_and_open, i64 110}
!284 = !{ptr @S_doeval, ptr @Perl_markstack_grow, i64 1}
!285 = !{ptr @S_doeval, ptr @Perl_newSV_type, i64 552}
!286 = !{ptr @S_doeval, ptr @S_SvREFCNT_inc, i64 184}
!287 = !{ptr @S_doeval, ptr @Perl_pad_new, i64 184}
!288 = !{ptr @S_doeval, ptr @Perl_save_pushptr, i64 917}
!289 = !{ptr @S_doeval, ptr @Perl_save_generic_svref, i64 143}
!290 = !{ptr @S_doeval, ptr @Perl_save_sptr, i64 552}
!291 = !{ptr @S_doeval, ptr @Perl_push_scope, i64 184}
!292 = !{ptr @S_doeval, ptr @S_SvREFCNT_dec_NN, i64 2}
!293 = !{ptr @S_doeval, ptr @Perl_newSVpvn, i64 2}
!294 = !{ptr @S_doeval, ptr @Perl_sv_setpvn, i64 182}
!295 = !{ptr @S_doeval, ptr @Perl_mg_free, i64 1}
!296 = !{ptr @S_doeval, ptr @Perl_save_hints, i64 184}
!297 = !{ptr @S_doeval, ptr @S_SvREFCNT_dec, i64 1}
!298 = !{ptr @S_doeval, ptr @Perl_hv_clear, i64 63}
!299 = !{ptr @S_doeval, ptr @Perl_refcounted_he_free, i64 121}
!300 = !{ptr @S_doeval, ptr @Perl_cop_fetch_label, i64 121}
!301 = !{ptr @S_doeval, ptr @Perl_refcounted_he_inc, i64 121}
!302 = !{ptr @S_doeval, ptr @S_av_top_index, i64 1}
!303 = !{ptr @S_doeval, ptr @S_try_yyparse, i64 1}
!304 = !{ptr @S_doeval, ptr @Perl_yyparse, i64 183}
!305 = !{ptr @S_doeval, ptr @Perl_op_free, i64 2}
!306 = !{ptr @S_doeval, ptr @Perl_sv_2mortal, i64 2}
!307 = !{ptr @S_doeval, ptr @Perl_pop_scope, i64 183}
!308 = !{ptr @S_doeval, ptr @Perl_gv_add_by_type, i64 2}
!309 = !{ptr @S_doeval, ptr @Perl_hv_common_key_len, i64 1}
!310 = !{ptr @S_doeval, ptr @Perl_newSVpvn_flags, i64 1}
!311 = !{ptr @S_doeval, ptr @Perl_croak, i64 1}
!312 = !{ptr @S_doeval, ptr @Perl_sv_2pv_flags, i64 1}
!313 = !{ptr @S_doeval, ptr @Perl_cv_forget_slab, i64 181}
!314 = !{ptr @S_doeval, ptr @Perl_call_list, i64 180}
!315 = !{ptr @S_doeval, ptr @S_CvDEPTHp, i64 181}
!316 = !{ptr @Perl_pp_entereval, ptr @Perl_block_gimme, i64 1}
!317 = !{ptr @Perl_pp_entereval, ptr @S_SvREFCNT_inc, i64 122}
!318 = !{ptr @Perl_pp_entereval, ptr @Perl_refcounted_he_chain_2hv, i64 1}
!319 = !{ptr @Perl_pp_entereval, ptr @Perl_sv_magic, i64 1}
!320 = !{ptr @Perl_pp_entereval, ptr @Perl_sv_2pv_flags, i64 1}
!321 = !{ptr @Perl_pp_entereval, ptr @Perl_newSVpvn_flags, i64 1}
!322 = !{ptr @Perl_pp_entereval, ptr @Perl_sv_tainted, i64 1}
!323 = !{ptr @Perl_pp_entereval, ptr @Perl_taint_proper, i64 1}
!324 = !{ptr @Perl_pp_entereval, ptr @Perl_push_scope, i64 121}
!325 = !{ptr @Perl_pp_entereval, ptr @Perl_lex_start, i64 121}
!326 = !{ptr @Perl_pp_entereval, ptr @Perl_save_strlen, i64 121}
!327 = !{ptr @Perl_pp_entereval, ptr @Perl_sv_newmortal, i64 1}
!328 = !{ptr @Perl_pp_entereval, ptr @Perl_sv_setpvf, i64 1}
!329 = !{ptr @Perl_pp_entereval, ptr @Perl_my_snprintf, i64 120}
!330 = !{ptr @Perl_pp_entereval, ptr @Perl_save_generic_svref, i64 121}
!331 = !{ptr @Perl_pp_entereval, ptr @Perl_gv_fetchfile, i64 121}
!332 = !{ptr @Perl_pp_entereval, ptr @Perl_save_I32, i64 121}
!333 = !{ptr @Perl_pp_entereval, ptr @Perl_find_runcv, i64 121}
!334 = !{ptr @Perl_pp_entereval, ptr @Perl_cxinc, i64 1}
!335 = !{ptr @Perl_pp_entereval, ptr @S_save_lines, i64 1}
!336 = !{ptr @Perl_pp_entereval, ptr @Perl_savepvn, i64 121}
!337 = !{ptr @Perl_pp_entereval, ptr @Perl_save_delete, i64 121}
!338 = !{ptr @Perl_pp_entereval, ptr @S_doeval, i64 121}
!339 = !{ptr @Perl_pp_entereval, ptr @S_docatch, i64 1}
!340 = !{ptr @Perl_pp_leaveeval, ptr @S_SvREFCNT_dec_NN, i64 2}
!341 = !{ptr @Perl_pp_leaveeval, ptr @Perl_sv_2mortal, i64 63}
!342 = !{ptr @Perl_pp_leaveeval, ptr @S_leave_common, i64 184}
!343 = !{ptr @Perl_pp_leaveeval, ptr @S_CvDEPTHp, i64 184}
!344 = !{ptr @Perl_pp_leaveeval, ptr @Perl_gv_add_by_type, i64 1}
!345 = !{ptr @Perl_pp_leaveeval, ptr @Perl_hv_common_key_len, i64 2}
!346 = !{ptr @Perl_pp_leaveeval, ptr @Perl_die, i64 2}
!347 = !{ptr @Perl_pp_leaveeval, ptr @Perl_pop_scope, i64 182}
!348 = !{ptr @Perl_pp_leaveeval, ptr @Perl_newSVpvn, i64 2}
!349 = !{ptr @Perl_pp_leaveeval, ptr @Perl_sv_setpvn, i64 179}
!350 = !{ptr @Perl_pp_leaveeval, ptr @Perl_mg_free, i64 1}
!351 = !{ptr @Perl_delete_eval_scope, ptr @S_SvREFCNT_dec_NN, i64 1}
!352 = !{ptr @Perl_delete_eval_scope, ptr @Perl_sv_2mortal, i64 1}
!353 = !{ptr @Perl_delete_eval_scope, ptr @Perl_pop_scope, i64 887}
!354 = !{ptr @Perl_create_eval_scope, ptr @Perl_block_gimme, i64 1}
!355 = !{ptr @Perl_create_eval_scope, ptr @Perl_push_scope, i64 15079}
!356 = !{ptr @Perl_create_eval_scope, ptr @Perl_save_strlen, i64 15079}
!357 = !{ptr @Perl_create_eval_scope, ptr @Perl_cxinc, i64 1}
!358 = !{ptr @Perl_create_eval_scope, ptr @S_SvREFCNT_dec_NN, i64 1}
!359 = !{ptr @Perl_create_eval_scope, ptr @Perl_newSVpvn, i64 2}
!360 = !{ptr @Perl_create_eval_scope, ptr @Perl_sv_setpvn, i64 15076}
!361 = !{ptr @Perl_create_eval_scope, ptr @Perl_mg_free, i64 1}
!362 = !{ptr @Perl_pp_entertry, ptr @Perl_create_eval_scope, i64 14192}
!363 = !{ptr @Perl_pp_entertry, ptr @S_docatch, i64 1}
!364 = !{ptr @Perl_pp_leavetry, ptr @S_SvREFCNT_dec_NN, i64 2}
!365 = !{ptr @Perl_pp_leavetry, ptr @Perl_sv_2mortal, i64 1}
!366 = !{ptr @Perl_pp_leavetry, ptr @S_leave_common, i64 14144}
!367 = !{ptr @Perl_pp_leavetry, ptr @Perl_pop_scope, i64 14144}
!368 = !{ptr @Perl_pp_leavetry, ptr @Perl_newSVpvn, i64 2}
!369 = !{ptr @Perl_pp_leavetry, ptr @Perl_sv_setpvn, i64 14142}
!370 = !{ptr @Perl_pp_leavetry, ptr @Perl_mg_free, i64 1}
!371 = !{ptr @S_dopoptoloop, ptr @Perl_custom_op_get_field, i64 2}
!372 = !{ptr @S_dopoptoloop, ptr @Perl_ck_warner, i64 5}
!373 = !{ptr @S_dopoptolabel, ptr @Perl_custom_op_get_field, i64 2}
!374 = !{ptr @S_dopoptolabel, ptr @Perl_ck_warner, i64 5}
!375 = !{ptr @S_dopoptolabel, ptr @Perl_cop_fetch_label, i64 492643}
!376 = !{ptr @S_dopoptolabel, ptr @Perl_bytes_cmp_utf8, i64 1}
!377 = !{ptr @S_dopoptolabel, ptr @bcmp, i64 492639}
!378 = !{ptr @S_check_type_and_open, ptr @Perl_sv_2pv_flags, i64 1}
!379 = !{ptr @S_check_type_and_open, ptr @S_is_safe_syscall, i64 111}
!380 = !{ptr @S_check_type_and_open, ptr @__errno_location, i64 110}
!381 = !{ptr @S_check_type_and_open, ptr @stat64, i64 110}
!382 = !{ptr @S_check_type_and_open, ptr @PerlIO_openn, i64 60}
!383 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!384 = !{!"function_entry_count", i64 94131}
!385 = !{!386, !386, i64 0}
!386 = !{!"any pointer", !387, i64 0}
!387 = !{!"omnipotent char", !388, i64 0}
!388 = !{!"Simple C/C++ TBAA"}
!389 = !{!"branch_weights", i32 1, i32 94132}
!390 = !{!391, !387, i64 35}
!391 = !{!"op", !386, i64 0, !386, i64 8, !386, i64 16, !392, i64 24, !393, i64 32, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !387, i64 34, !387, i64 35}
!392 = !{!"long", !387, i64 0}
!393 = !{!"int", !387, i64 0}
!394 = !{!"branch_weights", i32 94132, i32 1}
!395 = !{!396, !386, i64 8}
!396 = !{!"stackinfo", !386, i64 0, !386, i64 8, !386, i64 16, !386, i64 24, !393, i64 32, !393, i64 36, !393, i64 40, !393, i64 44}
!397 = !{!396, !393, i64 32}
!398 = !{!387, !387, i64 0}
!399 = !{!"branch_weights", i32 1, i32 65916, i32 28217}
!400 = !{!391, !386, i64 0}
!401 = !{!"function_entry_count", i64 133}
!402 = !{!"branch_weights", i32 1, i32 137}
!403 = !{!396, !393, i64 40}
!404 = !{!"branch_weights", i32 138, i32 1}
!405 = !{!396, !386, i64 16}
!406 = !{!"branch_weights", i32 0, i32 1}
!407 = distinct !{!407, !408}
!408 = !{!"llvm.loop.mustprogress"}
!409 = !{!410, !386, i64 16}
!410 = !{!"gp", !386, i64 0, !386, i64 8, !386, i64 16, !393, i64 24, !393, i64 28, !386, i64 32, !386, i64 40, !386, i64 48, !386, i64 56, !393, i64 64, !393, i64 67, !386, i64 72}
!411 = !{!"branch_weights", i32 134, i32 5}
!412 = !{!"branch_weights", i32 1, i32 134}
!413 = !{!"branch_weights", i32 269, i32 1}
!414 = !{!"branch_weights", i32 134, i32 1}
!415 = !{!"function_entry_count", i64 2080686}
!416 = !{!"pp_ctl.c:S_dopoptosub_at"}
!417 = !{!"branch_weights", i32 127, i32 1}
!418 = !{!"branch_weights", i32 1208542, i32 2080568, i32 119, i32 1}
!419 = !{!"branch_weights", i32 2080568, i32 1}
!420 = !{!"branch_weights", i32 210510401, i32 127}
!421 = distinct !{!421, !408}
!422 = !{!"function_entry_count", i64 0}
!423 = !{!424, !424, i64 0}
!424 = !{!"_Bool", !387, i64 0}
!425 = !{!"function_entry_count", i64 136306}
!426 = !{!427, !386, i64 48}
!427 = !{!"logop", !386, i64 0, !386, i64 8, !386, i64 16, !392, i64 24, !393, i64 32, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !387, i64 34, !387, i64 35, !386, i64 40, !386, i64 48}
!428 = !{!391, !387, i64 34}
!429 = !{!"branch_weights", i32 57, i32 136251}
!430 = !{!393, !393, i64 0}
!431 = !{!432, !386, i64 56}
!432 = !{!"pmop", !386, i64 0, !386, i64 8, !386, i64 16, !392, i64 24, !393, i64 32, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !387, i64 34, !387, i64 35, !386, i64 40, !386, i64 48, !386, i64 56, !393, i64 64, !387, i64 72, !387, i64 80, !386, i64 88}
!433 = !{!"branch_weights", i32 68, i32 136240}
!434 = !{!435, !386, i64 32}
!435 = !{!"regexp", !386, i64 0, !387, i64 8, !392, i64 16, !387, i64 24, !386, i64 32, !386, i64 40, !386, i64 48, !393, i64 56, !392, i64 64, !392, i64 72, !392, i64 80, !386, i64 88, !393, i64 96, !393, i64 100, !386, i64 104, !393, i64 112, !393, i64 116, !386, i64 120, !386, i64 128, !386, i64 136, !392, i64 144, !392, i64 152, !392, i64 160, !392, i64 168, !393, i64 176, !393, i64 176, !386, i64 184}
!436 = !{!437, !386, i64 88}
!437 = !{!"regexp_engine", !386, i64 0, !386, i64 8, !386, i64 16, !386, i64 24, !386, i64 32, !386, i64 40, !386, i64 48, !386, i64 56, !386, i64 64, !386, i64 72, !386, i64 80, !386, i64 88}
!438 = !{!"branch_weights", i32 1, i32 136307}
!439 = !{!432, !386, i64 88}
!440 = !{!432, !393, i64 64}
!441 = !{!"branch_weights", i32 136307, i32 1}
!442 = !{!391, !392, i64 24}
!443 = !{!435, !386, i64 184}
!444 = !{i8 0, i8 2}
!445 = !{}
!446 = !{!"branch_weights", i32 136280, i32 28}
!447 = !{!"branch_weights", i32 28, i32 1}
!448 = !{!432, !387, i64 34}
!449 = !{!432, !392, i64 24}
!450 = !{!"branch_weights", i32 1, i32 28}
!451 = !{!410, !386, i64 0}
!452 = !{!453, !393, i64 12}
!453 = !{!"sv", !386, i64 0, !393, i64 8, !393, i64 12, !387, i64 16}
!454 = !{!"branch_weights", i32 41885, i32 94423}
!455 = !{!435, !393, i64 56}
!456 = !{!457, !386, i64 0}
!457 = !{!"p5rx", !386, i64 0, !393, i64 8, !393, i64 12, !387, i64 16}
!458 = !{!459, !392, i64 16}
!459 = !{!"xpv", !386, i64 0, !387, i64 8, !392, i64 16, !387, i64 24}
!460 = !{!"branch_weights", i32 136254, i32 54}
!461 = !{!432, !387, i64 35}
!462 = !{!427, !386, i64 40}
!463 = !{!"function_entry_count", i64 56754960}
!464 = !{!"pp_ctl.c:S_ReANY"}
!465 = !{!"function_entry_count", i64 992224}
!466 = !{!"pp_ctl.c:S_SvREFCNT_inc"}
!467 = !{!"branch_weights", i32 992225, i32 1}
!468 = !{!453, !393, i64 8}
!469 = !{!"function_entry_count", i64 2823446}
!470 = !{!"pp_ctl.c:S_SvREFCNT_dec"}
!471 = !{!"branch_weights", i32 2823447, i32 1}
!472 = !{!"branch_weights", i32 1, i32 1521700}
!473 = !{!"function_entry_count", i64 1544851}
!474 = !{!"branch_weights", i32 1544852, i32 1}
!475 = !{!"branch_weights", i32 550697, i32 994156}
!476 = !{!"branch_weights", i32 994156, i32 1}
!477 = !{!"branch_weights", i32 1562110872, i32 -310054918}
!478 = !{!437, !386, i64 8}
!479 = !{!"branch_weights", i32 270732, i32 443460}
!480 = !{!"branch_weights", i32 506341, i32 44357}
!481 = !{!"branch_weights", i32 506341, i32 1}
!482 = !{!483, !393, i64 56}
!483 = !{!"cop", !386, i64 0, !386, i64 8, !386, i64 16, !392, i64 24, !393, i64 32, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !387, i64 34, !387, i64 35, !393, i64 36, !386, i64 40, !386, i64 48, !393, i64 56, !393, i64 60, !386, i64 64, !386, i64 72}
!484 = !{!"branch_weights", i32 550697, i32 1}
!485 = !{!"branch_weights", i32 20109, i32 530589}
!486 = !{!"branch_weights", i32 1, i32 550697}
!487 = !{!453, !386, i64 0}
!488 = !{!"branch_weights", i32 530589, i32 20109}
!489 = !{!"branch_weights", i32 20109, i32 1}
!490 = !{!"branch_weights", i32 1, i32 9811}
!491 = !{!432, !386, i64 0}
!492 = !{!"branch_weights", i32 973811, i32 20346}
!493 = !{!435, !386, i64 128}
!494 = !{!"branch_weights", i32 238, i32 20109}
!495 = !{!435, !386, i64 120}
!496 = !{!497, !392, i64 0}
!497 = !{!"regexp_paren_pair", !392, i64 0, !392, i64 8, !392, i64 16}
!498 = !{!"branch_weights", i32 346963, i32 647194}
!499 = !{!"branch_weights", i32 346963, i32 1}
!500 = !{!497, !392, i64 8}
!501 = !{!"branch_weights", i32 1, i32 994156}
!502 = !{!"branch_weights", i32 275385, i32 718772}
!503 = !{!504, !392, i64 24}
!504 = !{!"magic", !386, i64 0, !386, i64 8, !505, i64 16, !387, i64 18, !387, i64 19, !392, i64 24, !386, i64 32, !386, i64 40}
!505 = !{!"short", !387, i64 0}
!506 = !{!504, !387, i64 19}
!507 = !{!"pp_ctl.c:S_rxres_restore"}
!508 = !{!435, !386, i64 136}
!509 = !{!392, !392, i64 0}
!510 = !{!"branch_weights", i32 1504399, i32 40454}
!511 = !{!435, !393, i64 96}
!512 = !{!435, !392, i64 144}
!513 = !{!435, !392, i64 152}
!514 = !{!435, !392, i64 160}
!515 = !{!"branch_weights", i32 1544852, i32 1483055}
!516 = distinct !{!516, !408}
!517 = !{!"function_entry_count", i64 550696}
!518 = !{!"pp_ctl.c:S_rxres_free"}
!519 = !{!"pp_ctl.c:S_sv_only_taint_gmagic"}
!520 = !{!504, !387, i64 18}
!521 = !{!504, !386, i64 8}
!522 = !{!523, !386, i64 0}
!523 = !{!"mgvtbl", !386, i64 0, !386, i64 8, !386, i64 16, !386, i64 24, !386, i64 32, !386, i64 40, !386, i64 48, !386, i64 56}
!524 = distinct !{!524, !408}
!525 = distinct !{!525, !408}
!526 = !{!504, !386, i64 40}
!527 = !{!504, !386, i64 32}
!528 = distinct !{!528, !408}
!529 = distinct !{!529, !408}
!530 = distinct !{!530, !408}
!531 = distinct !{!531, !408}
!532 = distinct !{!532, !408}
!533 = distinct !{!533, !408}
!534 = distinct !{!534, !408}
!535 = distinct !{!535, !408}
!536 = distinct !{!536, !408}
!537 = !{!"pp_ctl.c:S_doparseform"}
!538 = distinct !{!538, !408}
!539 = distinct !{!539, !408}
!540 = distinct !{!540, !408}
!541 = distinct !{!541, !408}
!542 = distinct !{!542, !408}
!543 = distinct !{!543, !408}
!544 = distinct !{!544, !408}
!545 = distinct !{!545, !408}
!546 = distinct !{!546, !408}
!547 = !{!"pp_ctl.c:S_num_overflow"}
!548 = distinct !{!548, !408}
!549 = distinct !{!549, !408}
!550 = !{!"function_entry_count", i64 217320}
!551 = !{!"branch_weights", i32 10651, i32 206671}
!552 = !{!"branch_weights", i32 1, i32 10651}
!553 = !{i32 0, i32 4}
!554 = !{!"branch_weights", i32 206671, i32 1}
!555 = !{!556, !386, i64 0}
!556 = !{!"gv", !386, i64 0, !393, i64 8, !393, i64 12, !387, i64 16}
!557 = !{!558, !392, i64 16}
!558 = !{!"xpvgv", !386, i64 0, !387, i64 8, !392, i64 16, !387, i64 24, !387, i64 32, !387, i64 40}
!559 = !{!"branch_weights", i32 199644, i32 7028}
!560 = !{!"function_entry_count", i64 1534281}
!561 = !{!"branch_weights", i32 2, i32 1534281}
!562 = !{!"function_entry_count", i64 435580}
!563 = !{!"branch_weights", i32 6401, i32 429181}
!564 = !{!"branch_weights", i32 -1956387355, i32 625977538}
!565 = !{!"branch_weights", i32 6411, i32 337198}
!566 = !{!"branch_weights", i32 1, i32 6411}
!567 = !{!"branch_weights", i32 1, i32 6410}
!568 = !{!"branch_weights", i32 6410, i32 51367}
!569 = distinct !{!569, !408}
!570 = !{!"branch_weights", i32 343608, i32 1}
!571 = !{!"branch_weights", i32 343607, i32 1}
!572 = !{!"branch_weights", i32 302998, i32 91977}
!573 = !{!"branch_weights", i32 51367, i32 343607}
!574 = distinct !{!574, !408}
!575 = distinct !{!575, !408}
!576 = distinct !{!576, !408}
!577 = !{!"branch_weights", i32 1, i32 91974}
!578 = !{!"branch_weights", i32 199644, i32 235938}
!579 = !{!"branch_weights", i32 79895033, i32 12477, i32 -1883741931}
!580 = !{!"branch_weights", i32 235938, i32 1}
!581 = !{!"function_entry_count", i64 38137}
!582 = !{!"branch_weights", i32 1, i32 38138}
!583 = !{!"branch_weights", i32 38138, i32 1}
!584 = !{!585, !386, i64 40}
!585 = !{!"unop", !386, i64 0, !386, i64 8, !386, i64 16, !392, i64 24, !393, i64 32, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !387, i64 34, !387, i64 35, !386, i64 40}
!586 = !{!410, !386, i64 8}
!587 = !{!588, !386, i64 0}
!588 = !{!"io", !386, i64 0, !393, i64 8, !393, i64 12, !387, i64 16}
!589 = !{!"branch_weights", i32 1, i32 76277}
!590 = !{!"branch_weights", i32 32549, i32 5590}
!591 = !{!"branch_weights", i32 1, i32 2147483647}
!592 = !{!"branch_weights", i32 38137, i32 260728}
!593 = distinct !{!593, !408}
!594 = distinct !{!594, !408}
!595 = !{!596, !386, i64 0}
!596 = !{!"cv", !386, i64 0, !393, i64 8, !393, i64 12, !387, i64 16}
!597 = !{!598, !393, i64 92}
!598 = !{!"xpvcv", !386, i64 0, !387, i64 8, !392, i64 16, !387, i64 24, !386, i64 32, !387, i64 40, !387, i64 48, !387, i64 56, !386, i64 64, !387, i64 72, !386, i64 80, !393, i64 88, !393, i64 92, !393, i64 96}
!599 = !{!"function_entry_count", i64 813538}
!600 = !{!"branch_weights", i32 1, i32 813539}
!601 = !{!"branch_weights", i32 813538, i32 1}
!602 = !{!"branch_weights", i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 5, i32 1, i32 1}
!603 = distinct !{!603, !408}
!604 = !{!410, !386, i64 40}
!605 = !{!606, !393, i64 12}
!606 = !{!"av", !386, i64 0, !393, i64 8, !393, i64 12, !387, i64 16}
!607 = !{!606, !386, i64 0}
!608 = !{!609, !392, i64 16}
!609 = !{!"xpvav", !386, i64 0, !387, i64 8, !392, i64 16, !392, i64 24, !386, i64 32}
!610 = !{!609, !386, i64 32}
!611 = !{!609, !392, i64 24}
!612 = !{!"branch_weights", i32 5, i32 1}
!613 = !{!"branch_weights", i32 484748, i32 813538}
!614 = !{!"function_entry_count", i64 6}
!615 = !{!"pp_ctl.c:S_SvREFCNT_dec_NN"}
!616 = !{!"branch_weights", i32 1, i32 7}
!617 = !{!"function_entry_count", i64 883046}
!618 = !{!"pp_ctl.c:S_CvDEPTHp"}
!619 = !{!620, !387, i64 239}
!620 = !{!"yy_parser", !386, i64 0, !387, i64 8, !393, i64 16, !393, i64 20, !393, i64 24, !393, i64 28, !386, i64 32, !386, i64 40, !393, i64 48, !393, i64 52, !386, i64 56, !386, i64 64, !387, i64 72, !387, i64 73, !387, i64 74, !387, i64 75, !393, i64 76, !386, i64 80, !386, i64 88, !386, i64 96, !505, i64 104, !505, i64 106, !393, i64 108, !386, i64 112, !393, i64 120, !393, i64 124, !387, i64 128, !387, i64 129, !424, i64 130, !424, i64 131, !393, i64 132, !621, i64 136, !386, i64 160, !386, i64 168, !386, i64 176, !386, i64 184, !386, i64 192, !386, i64 200, !386, i64 208, !386, i64 216, !386, i64 224, !393, i64 232, !505, i64 236, !387, i64 238, !387, i64 239, !386, i64 240, !386, i64 248, !386, i64 256, !387, i64 264, !387, i64 272, !387, i64 312, !393, i64 332, !386, i64 336, !387, i64 344, !393, i64 600, !393, i64 604, !387, i64 608, !387, i64 609, !393, i64 610, !393, i64 610, !393, i64 610, !393, i64 610}
!621 = !{!"_sublex_info", !387, i64 0, !505, i64 2, !386, i64 8, !386, i64 16}
!622 = !{!"function_entry_count", i64 48}
!623 = !{!"branch_weights", i32 1, i32 49}
!624 = !{!"branch_weights", i32 49, i32 1}
!625 = !{!"branch_weights", i32 1, i32 48}
!626 = !{!396, !386, i64 0}
!627 = distinct !{!627, !408}
!628 = !{!556, !393, i64 12}
!629 = !{!630, !386, i64 40}
!630 = !{!"xpvio", !386, i64 0, !387, i64 8, !392, i64 16, !387, i64 24, !387, i64 32, !386, i64 40, !387, i64 48, !392, i64 56, !392, i64 64, !392, i64 72, !386, i64 80, !386, i64 88, !386, i64 96, !386, i64 104, !386, i64 112, !386, i64 120, !387, i64 128, !387, i64 129}
!631 = !{!410, !386, i64 32}
!632 = !{!633, !386, i64 200}
!633 = !{!"jmpenv", !387, i64 0, !386, i64 200, !393, i64 208, !424, i64 212}
!634 = !{!"pp_ctl.c:S_dopoptoeval"}
!635 = !{!"branch_weights", i32 6145, i32 127}
!636 = distinct !{!636, !408}
!637 = !{!"branch_weights", i32 81, i32 54}
!638 = !{!"branch_weights", i32 1, i32 54}
!639 = !{!"branch_weights", i32 54, i32 1}
!640 = !{!483, !386, i64 40}
!641 = !{!642, !393, i64 12}
!642 = !{!"hv", !386, i64 0, !393, i64 8, !393, i64 12, !387, i64 16}
!643 = !{!"branch_weights", i32 17956, i32 269}
!644 = !{!642, !386, i64 0}
!645 = !{!646, !392, i64 24}
!646 = !{!"xpvhv", !386, i64 0, !387, i64 8, !392, i64 16, !392, i64 24}
!647 = !{!648, !393, i64 28}
!648 = !{!"xpvhv_aux", !387, i64 0, !386, i64 8, !386, i64 16, !393, i64 24, !393, i64 28, !386, i64 32, !393, i64 40, !393, i64 44, !393, i64 48, !393, i64 52}
!649 = !{!"branch_weights", i32 31, i32 104}
!650 = !{!"branch_weights", i32 1, i32 104}
!651 = !{!"branch_weights", i32 1, i32 31}
!652 = !{!"branch_weights", i32 31, i32 1}
!653 = !{!483, !386, i64 48}
!654 = !{!483, !386, i64 8}
!655 = !{!483, !393, i64 36}
!656 = !{!"branch_weights", i32 7, i32 25}
!657 = !{!"branch_weights", i32 15, i32 1}
!658 = !{!"branch_weights", i32 7, i32 1}
!659 = !{!"branch_weights", i32 49, i32 15}
!660 = !{!483, !386, i64 64}
!661 = !{!"branch_weights", i32 7, i32 16, i32 98, i32 7}
!662 = !{!483, !386, i64 72}
!663 = !{!396, !393, i64 36}
!664 = !{!665, !386, i64 8}
!665 = !{!"padlist", !392, i64 0, !386, i64 8, !393, i64 16, !393, i64 20}
!666 = !{!"function_entry_count", i64 5397588}
!667 = !{!"branch_weights", i32 924658, i32 4472932}
!668 = !{!"branch_weights", i32 5397589, i32 1}
!669 = !{!"function_entry_count", i64 4099307}
!670 = !{!"branch_weights", i32 3954845, i32 144464}
!671 = !{!"branch_weights", i32 137673, i32 3961636}
!672 = !{!"function_entry_count", i64 45554427}
!673 = !{!"pp_ctl.c:S_leave_common"}
!674 = !{!"branch_weights", i32 -412808765, i32 25297666, i32 25223767}
!675 = !{!"branch_weights", i32 1, i32 292180}
!676 = !{!"branch_weights", i32 293037, i32 1}
!677 = !{!"branch_weights", i32 6174, i32 286864}
!678 = !{!"branch_weights", i32 34811183, i32 2887192}
!679 = !{!"branch_weights", i32 1, i32 6104}
!680 = !{!"branch_weights", i32 65153449, i32 -1386542219}
!681 = !{!"branch_weights", i32 1, i32 6401}
!682 = !{!"branch_weights", i32 292180, i32 1}
!683 = distinct !{!683, !408}
!684 = !{!"function_entry_count", i64 144718}
!685 = !{!"branch_weights", i32 663, i32 144057}
!686 = !{!"branch_weights", i32 20975, i32 123745}
!687 = !{!"branch_weights", i32 117251, i32 6495}
!688 = !{!"branch_weights", i32 1, i32 20975}
!689 = !{!"branch_weights", i32 144719, i32 1}
!690 = !{!"branch_weights", i32 17817, i32 126903}
!691 = !{!"branch_weights", i32 126903, i32 1}
!692 = !{!"branch_weights", i32 17817, i32 1}
!693 = !{!"function_entry_count", i64 6494}
!694 = !{!"pp_ctl.c:S_SvPADSTALE_off"}
!695 = !{!"pp_ctl.c:S_outside_integer"}
!696 = !{!"function_entry_count", i64 41816176}
!697 = !{!"branch_weights", i32 50, i32 41816128}
!698 = !{!"branch_weights", i32 41816177, i32 1}
!699 = !{!"function_entry_count", i64 41440792}
!700 = !{!"branch_weights", i32 1, i32 41440793}
!701 = !{!"branch_weights", i32 133572, i32 41307222}
!702 = !{!"function_entry_count", i64 451981}
!703 = !{!"branch_weights", i32 1, i32 451982}
!704 = !{!"branch_weights", i32 407118, i32 44865}
!705 = !{!"branch_weights", i32 451982, i32 1}
!706 = !{!"branch_weights", i32 1, i32 451982, i32 1, i32 1}
!707 = !{!"branch_weights", i32 2147478897, i32 4751}
!708 = !{!"branch_weights", i32 79078032, i32 -1992877393, i32 35246178}
!709 = !{!"branch_weights", i32 1, i32 6592}
!710 = !{!"branch_weights", i32 430599, i32 1}
!711 = !{!"branch_weights", i32 1, i32 430599}
!712 = !{!"branch_weights", i32 6401, i32 424199}
!713 = !{!"branch_weights", i32 6401, i32 1}
!714 = !{!"branch_weights", i32 410979, i32 13221}
!715 = !{!"branch_weights", i32 174794841, i32 26443}
!716 = !{!"branch_weights", i32 17797, i32 1}
!717 = !{!"branch_weights", i32 6592, i32 11205}
!718 = distinct !{!718, !408}
!719 = !{!"branch_weights", i32 -2147483648, i32 0}
!720 = !{!"branch_weights", i32 390254, i32 61729}
!721 = !{!"branch_weights", i32 61723, i32 7}
!722 = !{!"branch_weights", i32 445582, i32 6401}
!723 = !{!"pp_ctl.c:S_return_lvalues"}
!724 = distinct !{!724, !408}
!725 = distinct !{!725, !408}
!726 = !{!"function_entry_count", i64 520098}
!727 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 11144, i32 508956, i32 1, i32 1, i32 1}
!728 = !{!729, !386, i64 72}
!729 = !{!"loop", !386, i64 0, !386, i64 8, !386, i64 16, !392, i64 24, !393, i64 32, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !387, i64 34, !387, i64 35, !386, i64 40, !386, i64 48, !386, i64 56, !386, i64 64, !386, i64 72}
!730 = !{!"branch_weights", i32 1, i32 520099}
!731 = !{!"branch_weights", i32 11144, i32 508956}
!732 = !{!"function_entry_count", i64 596756}
!733 = !{!"pp_ctl.c:S_unwind_loop"}
!734 = !{!"branch_weights", i32 496522, i32 100236}
!735 = !{!"branch_weights", i32 1, i32 100236}
!736 = !{!"branch_weights", i32 496522, i32 1}
!737 = !{!"branch_weights", i32 1, i32 496522}
!738 = !{!739, !386, i64 40}
!739 = !{!"pvop", !386, i64 0, !386, i64 8, !386, i64 16, !392, i64 24, !393, i64 32, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !387, i64 34, !387, i64 35, !386, i64 40}
!740 = !{!739, !387, i64 35}
!741 = !{!"branch_weights", i32 406421, i32 190337}
!742 = !{!"function_entry_count", i64 76658}
!743 = !{!"branch_weights", i32 7907, i32 68753}
!744 = !{!"branch_weights", i32 76659, i32 1}
!745 = !{!729, !386, i64 64}
!746 = !{!729, !386, i64 56}
!747 = !{!"branch_weights", i32 1, i32 24}
!748 = !{!"branch_weights", i32 24, i32 1}
!749 = !{!"branch_weights", i32 1, i32 23}
!750 = !{!751, !393, i64 4}
!751 = !{!"hek", !393, i64 0, !393, i64 4, !387, i64 8}
!752 = !{!596, !393, i64 8}
!753 = !{!"branch_weights", i32 576, i32 49}
!754 = !{!"branch_weights", i32 193, i32 7}
!755 = !{!606, !393, i64 8}
!756 = !{!"branch_weights", i32 20, i32 5}
!757 = !{!"branch_weights", i32 1, i32 5}
!758 = !{!"branch_weights", i32 0, i32 -2147483648}
!759 = !{!"branch_weights", i32 1, i32 159}
!760 = !{!"branch_weights", i32 8, i32 1}
!761 = !{!"branch_weights", i32 155614756, i32 1991868892}
!762 = !{!"branch_weights", i32 7, i32 2}
!763 = !{!"branch_weights", i32 159, i32 97}
!764 = distinct !{!764, !408}
!765 = !{!"branch_weights", i32 25, i32 11}
!766 = !{!"branch_weights", i32 20, i32 1}
!767 = !{!"branch_weights", i32 1, i32 20}
!768 = !{!391, !386, i64 8}
!769 = distinct !{!769, !408}
!770 = distinct !{!770, !408}
!771 = !{!391, !386, i64 16}
!772 = distinct !{!772, !408}
!773 = !{!"pp_ctl.c:S_CvGV"}
!774 = !{!"function_entry_count", i64 1}
!775 = !{!"pp_ctl.c:S_SvREFCNT_inc_NN"}
!776 = !{!"pp_ctl.c:S_dofindlabel"}
!777 = distinct !{!777, !408}
!778 = distinct !{!778, !408}
!779 = !{!"function_entry_count", i64 126}
!780 = !{!"branch_weights", i32 122, i32 6}
!781 = !{!"branch_weights", i32 1, i32 122}
!782 = !{!"branch_weights", i32 1, i32 127}
!783 = !{!"branch_weights", i32 81, i32 11900, i32 90, i32 729}
!784 = !{!"branch_weights", i32 13225, i32 695}
!785 = !{!598, !386, i64 32}
!786 = !{!"branch_weights", i32 1, i32 115}
!787 = !{!483, !393, i64 60}
!788 = !{!"branch_weights", i32 119, i32 1}
!789 = !{!"branch_weights", i32 1, i32 9}
!790 = !{!"branch_weights", i32 127, i32 1, i32 1}
!791 = !{!665, !393, i64 16}
!792 = !{!"branch_weights", i32 16129, i32 127}
!793 = distinct !{!793, !408}
!794 = !{!"branch_weights", i32 127, i32 16129}
!795 = distinct !{!795, !408}
!796 = !{!"function_entry_count", i64 6071}
!797 = !{!"branch_weights", i32 1, i32 6072}
!798 = !{!"branch_weights", i32 6072, i32 1}
!799 = !{!"branch_weights", i32 6054, i32 19}
!800 = !{!"branch_weights", i32 6054, i32 1}
!801 = !{!"branch_weights", i32 1, i32 19}
!802 = !{!"branch_weights", i32 18, i32 2}
!803 = !{!"branch_weights", i32 19, i32 1}
!804 = !{!"branch_weights", i32 1, i32 6054}
!805 = !{!"branch_weights", i32 36650916, i32 12109}
!806 = !{!"branch_weights", i32 80, i32 5975}
!807 = !{!"branch_weights", i32 1, i32 5975}
!808 = !{!"branch_weights", i32 80, i32 1}
!809 = !{!"branch_weights", i32 161, i32 1}
!810 = !{!"branch_weights", i32 1, i32 80}
!811 = !{!"branch_weights", i32 128, i32 1}
!812 = !{!"branch_weights", i32 17, i32 112}
!813 = !{!"branch_weights", i32 112, i32 1}
!814 = !{!"branch_weights", i32 1, i32 112}
!815 = !{!"branch_weights", i32 80, i32 33}
!816 = !{!"branch_weights", i32 49, i32 64}
!817 = !{!"branch_weights", i32 64, i32 1}
!818 = !{!"branch_weights", i32 1, i32 64}
!819 = distinct !{!819, !408}
!820 = !{!"branch_weights", i32 2401, i32 50, i32 49}
!821 = distinct !{!821, !408}
!822 = !{!"branch_weights", i32 17, i32 1}
!823 = !{!"branch_weights", i32 1, i32 17}
!824 = !{!"branch_weights", i32 65, i32 1}
!825 = !{!"branch_weights", i32 17, i32 49}
!826 = distinct !{!826, !408}
!827 = distinct !{!827, !408}
!828 = !{!"branch_weights", i32 112676611, i32 2034807037}
!829 = !{!"branch_weights", i32 129, i32 4096}
!830 = !{!630, !386, i64 88}
!831 = !{!630, !386, i64 120}
!832 = !{!620, !386, i64 168}
!833 = !{!633, !424, i64 212}
!834 = !{!"pp_ctl.c:S_av_top_index"}
!835 = !{!"function_entry_count", i64 6386}
!836 = !{!"pp_ctl.c:S_is_safe_syscall"}
!837 = !{!"branch_weights", i32 6371, i32 17}
!838 = !{!"branch_weights", i32 6371, i32 1}
!839 = !{!"function_entry_count", i64 6053}
!840 = !{!"pp_ctl.c:S_path_is_searchable"}
!841 = !{!"branch_weights", i32 36650916, i32 6055, i32 6054}
!842 = !{!"function_entry_count", i64 111}
!843 = !{!"pp_ctl.c:S_doopen_pm"}
!844 = !{!"branch_weights", i32 46, i32 67}
!845 = !{!"branch_weights", i32 46, i32 1}
!846 = !{!"pp_ctl.c:S_run_user_filter"}
!847 = !{!620, !386, i64 256}
!848 = !{!"function_entry_count", i64 184}
!849 = !{!"pp_ctl.c:S_doeval"}
!850 = !{!"branch_weights", i32 64, i32 122}
!851 = !{!"branch_weights", i32 1, i32 185}
!852 = !{!596, !393, i64 12}
!853 = !{!598, !393, i64 88}
!854 = !{!598, !386, i64 80}
!855 = !{!"branch_weights", i32 41, i32 145}
!856 = !{!"branch_weights", i32 145, i32 1}
!857 = !{!642, !393, i64 8}
!858 = !{!"branch_weights", i32 122, i32 1}
!859 = !{!"branch_weights", i32 185, i32 1}
!860 = !{!"branch_weights", i32 122, i32 64}
!861 = !{!"branch_weights", i32 2, i32 726, i32 8, i32 2}
!862 = !{!863, !386, i64 0}
!863 = !{!"refcounted_he", !386, i64 0, !386, i64 8, !387, i64 16, !393, i64 24, !387, i64 28}
!864 = !{!865, !393, i64 0}
!865 = !{!"block_hooks", !393, i64 0, !386, i64 8, !386, i64 16, !386, i64 24, !386, i64 32}
!866 = !{!865, !386, i64 32}
!867 = distinct !{!867, !408}
!868 = !{!"branch_weights", i32 34225, i32 371}
!869 = !{!620, !387, i64 238}
!870 = !{!"pp_ctl.c:S_docatch"}
!871 = !{!633, !393, i64 208}
!872 = !{!873, !386, i64 40}
!873 = !{!"svop", !386, i64 0, !386, i64 8, !386, i64 16, !392, i64 24, !393, i64 32, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !393, i64 33, !387, i64 34, !387, i64 35, !386, i64 40}
!874 = !{!"function_entry_count", i64 121}
!875 = !{!"branch_weights", i32 14884, i32 245}
!876 = !{!"branch_weights", i32 14153, i32 115}
!877 = !{!"pp_ctl.c:S_save_lines"}
!878 = distinct !{!878, !408}
!879 = !{!"branch_weights", i32 113, i32 73}
!880 = !{!"branch_weights", i32 62, i32 3}
!881 = !{!"branch_weights", i32 2, i32 2}
!882 = !{!"branch_weights", i32 1, i32 2}
!883 = !{!"branch_weights", i32 1, i32 -1}
!884 = !{!"branch_weights", i32 1, i32 62}
!885 = !{!"branch_weights", i32 2, i32 61}
!886 = !{!"branch_weights", i32 -1, i32 0}
!887 = !{!"function_entry_count", i64 887}
!888 = !{!"branch_weights", i32 2, i32 887}
!889 = !{!"branch_weights", i32 1, i32 887}
!890 = !{!"branch_weights", i32 888, i32 1}
!891 = !{!"function_entry_count", i64 15079}
!892 = !{!"branch_weights", i32 1, i32 15080}
!893 = !{!"branch_weights", i32 15080, i32 1}
!894 = !{!"branch_weights", i32 14182, i32 899}
!895 = !{!"branch_weights", i32 14193, i32 888}
!896 = !{!"function_entry_count", i64 14192}
!897 = !{!"branch_weights", i32 14193, i32 1}
!898 = !{!"function_entry_count", i64 14144}
!899 = !{!"branch_weights", i32 14145, i32 1}
!900 = !{!"branch_weights", i32 14133, i32 13}
!901 = !{!"branch_weights", i32 1, i32 13}
!902 = !{!"branch_weights", i32 1, i32 14145}
!903 = !{!"pp_ctl.c:S_do_smartmatch"}
!904 = !{!905, !386, i64 0}
!905 = !{!"xpvmg", !386, i64 0, !387, i64 8, !392, i64 16, !387, i64 24, !387, i64 32, !387, i64 40}
!906 = distinct !{!906, !408}
!907 = distinct !{!907, !408}
!908 = !{!646, !392, i64 16}
!909 = distinct !{!909, !408}
!910 = distinct !{!910, !408}
!911 = distinct !{!911, !408}
!912 = distinct !{!912, !408}
!913 = distinct !{!913, !408}
!914 = distinct !{!914, !408}
!915 = distinct !{!915, !408}
!916 = distinct !{!916, !408}
!917 = distinct !{!917, !408}
!918 = !{!"pp_ctl.c:S_dopoptogiven"}
!919 = distinct !{!919, !408}
!920 = !{!"pp_ctl.c:S_dopoptowhen"}
!921 = distinct !{!921, !408}
!922 = !{!"function_entry_count", i64 100235}
!923 = !{!"pp_ctl.c:S_dopoptoloop"}
!924 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 85130, i32 15107}
!925 = !{!"branch_weights", i32 15870209, i32 127}
!926 = distinct !{!926, !408}
!927 = !{!"function_entry_count", i64 496521}
!928 = !{!"pp_ctl.c:S_dopoptolabel"}
!929 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 496522}
!930 = !{!"branch_weights", i32 124521217, i32 124521471}
!931 = !{!"branch_weights", i32 124521217, i32 127}
!932 = distinct !{!932, !408}
!933 = !{!"pp_ctl.c:S_check_type_and_open"}
!934 = !{!935, !393, i64 24}
!935 = !{!"stat", !392, i64 0, !392, i64 8, !392, i64 16, !393, i64 24, !393, i64 28, !393, i64 32, !393, i64 36, !392, i64 40, !392, i64 48, !392, i64 56, !392, i64 64, !936, i64 72, !936, i64 88, !936, i64 104, !387, i64 120}
!936 = !{!"timespec", !392, i64 0, !392, i64 8}
!937 = !{!"branch_weights", i32 4096, i32 65, i32 64}
!938 = !{!"pp_ctl.c:S_try_yyparse"}
!939 = !{!"pp_ctl.c:S_SvREFCNT_inc_void"}
!940 = !{!"pp_ctl.c:S_make_matcher"}
!941 = !{!"pp_ctl.c:S_matcher_matches_sv"}
!942 = !{!"pp_ctl.c:S_destroy_matcher"}
