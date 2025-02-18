; ModuleID = 'util.c'
source_filename = "util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mgvtbl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.gv = type { ptr, i32, i32, %union.anon.3 }
%union.anon.3 = type { ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.xpvio = type { ptr, %union._xmgu, i64, %union.anon.5, %union._xivu, ptr, %union.anon.6, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%union._xmgu = type { ptr }
%union.anon.5 = type { i64 }
%union._xivu = type { i64 }
%union.anon.6 = type { ptr }
%struct.magic = type { ptr, ptr, i16, i8, i8, i64, ptr, ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.1, %union._xivu }
%union.anon.1 = type { i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.unop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.2, %union._xivu, %union._xnvu }
%union.anon.2 = type { i64 }
%union._xnvu = type { double }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.io = type { ptr, i32, i32, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.10, ptr, %union.anon.11, %union.anon.12, %union.anon.13, ptr, %union.anon.14, ptr, i32, i32, i32 }
%union.anon.10 = type { i64 }
%union.anon.11 = type { ptr }
%union.anon.12 = type { ptr }
%union.anon.13 = type { ptr }
%union.anon.14 = type { ptr }
%struct.stackinfo = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.av = type { ptr, i32, i32, %union.anon.7 }
%union.anon.7 = type { ptr }
%struct.yy_parser = type { ptr, %union.YYSTYPE, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i8, i8, i8, i8, i32, ptr, ptr, ptr, i16, i16, i32, ptr, i32, i32, i8, i8, i8, i8, i32, %struct._sublex_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8, ptr, ptr, ptr, i8, [5 x %union.YYSTYPE], [5 x i32], i32, ptr, [256 x i8], i32, i32, i8, i8, i8 }
%union.YYSTYPE = type { ptr }
%struct._sublex_info = type { i8, i16, ptr, ptr }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.8, %union._xivu }
%union.anon.8 = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.9, %union._xivu, %union._xnvu }
%union.anon.9 = type { i64 }
%struct.hv = type { ptr, i32, i32, %union.anon.16 }
%union.anon.16 = type { ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }

@PL_nomemok = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PL_magic_vtables = external constant [31 x %struct.mgvtbl], align 16
@PL_fold = external local_unnamed_addr constant [0 x i8], align 1
@PL_fold_latin1 = external local_unnamed_addr constant [0 x i8], align 1
@PL_fold_locale = external local_unnamed_addr global [0 x i8], align 1
@PL_curcop = external local_unnamed_addr global ptr, align 8
@PL_op = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c" at %s line %ld\00", align 1
@PL_last_in_gv = external local_unnamed_addr global ptr, align 8
@PL_rs = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c", <%-p> %s %ld\00", align 1
@PL_argvgv = external local_unnamed_addr global ptr, align 8
@PL_sv_no = external global %struct.sv, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"chunk\00", align 1
@PL_phase = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c" during global destruction\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@PL_stderrgv = external local_unnamed_addr global ptr, align 8
@PL_sv_consts = external local_unnamed_addr global [35 x ptr], align 16
@.str.7 = private unnamed_addr constant [6 x i8] c"PRINT\00", align 1
@PL_errgv = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PL_no_modify = external constant [0 x i8], align 1
@PL_no_mem = external constant [16 x i8], align 16
@.str.9 = private unnamed_addr constant [17 x i8] c"panic: POPSTACK\0A\00", align 1
@PL_warnhook = external global ptr, align 8
@PL_sv_placeholder = external global %struct.sv, align 8
@PL_in_eval = external local_unnamed_addr global i8, align 1
@PL_parser = external local_unnamed_addr global ptr, align 8
@PL_dowarn = external local_unnamed_addr global i8, align 1
@PL_use_safe_putenv = external local_unnamed_addr global i8, align 1
@environ = external local_unnamed_addr global ptr, align 8
@PL_origenviron = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_tainting = external local_unnamed_addr global i8, align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Insecure %s%s\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"EXEC\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"Can't fork, trying again in 5 seconds\00", align 1
@PL_fdpid = external local_unnamed_addr global ptr, align 8
@PL_forkprocess = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [34 x i8] c"panic: kid popen errno read, n=%u\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Can't fork: %s\00", align 1
@PL_sig_trapped = external local_unnamed_addr global i32, align 4
@PL_sig_pending = external local_unnamed_addr global i32, align 4
@PL_signalhook = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@PL_statbuf = external global %struct.stat, align 8
@.str.18 = private unnamed_addr constant [16 x i8] c"Can't %s %s%s%s\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"execute\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"find\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c" on PATH\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c", '.' not in PATH\00", align 1
@PL_op_name = external constant [0 x ptr], align 8
@PL_op_desc = external constant [0 x ptr], align 8
@PL_opargs = external constant [0 x i32], align 4
@PL_ppaddr = external global [0 x ptr], align 8
@.str.23 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"Filehandle %2p opened only for %sput\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"Filehandle opened only for %sput\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"closed\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"unopened\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"readline\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"filehandle\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"%s%s on %s %s%s%-p\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.36 = private unnamed_addr constant [51 x i8] c"\09(Are you trying to call %s%s on dirhandle%s%-p?)\0A\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"panic: no strftime\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@.str.38 = private unnamed_addr constant [78 x i8] c"Invalid version format (dotted-decimal versions require at least three parts)\00", align 1
@.str.39 = private unnamed_addr constant [42 x i8] c"Invalid version format (no leading zeros)\00", align 1
@.str.40 = private unnamed_addr constant [59 x i8] c"Invalid version format (maximum 3 digits between decimals)\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"Invalid version format (no underscores)\00", align 1
@.str.42 = private unnamed_addr constant [46 x i8] c"Invalid version format (multiple underscores)\00", align 1
@.str.43 = private unnamed_addr constant [52 x i8] c"Invalid version format (underscores before decimal)\00", align 1
@.str.44 = private unnamed_addr constant [51 x i8] c"Invalid version format (0 before decimal required)\00", align 1
@.str.45 = private unnamed_addr constant [49 x i8] c"Invalid version format (negative version number)\00", align 1
@.str.46 = private unnamed_addr constant [42 x i8] c"Invalid version format (version required)\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"Invalid version format (non-numeric data)\00", align 1
@.str.48 = private unnamed_addr constant [47 x i8] c"Invalid version format (alpha without decimal)\00", align 1
@.str.49 = private unnamed_addr constant [46 x i8] c"Invalid version format (misplaced underscore)\00", align 1
@.str.50 = private unnamed_addr constant [50 x i8] c"Invalid version format (fractional part required)\00", align 1
@.str.51 = private unnamed_addr constant [69 x i8] c"Invalid version format (dotted-decimal versions must begin with 'v')\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"ndef\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"qv\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.57 = private unnamed_addr constant [31 x i8] c"Integer overflow in version %d\00", align 1
@.str.58 = private unnamed_addr constant [28 x i8] c"Integer overflow in version\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"v.Inf\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"original\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"vinf\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.64 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"%.9f\00", align 1
@.str.66 = private unnamed_addr constant [58 x i8] c"Version string '%s' contains invalid data; ignoring: '%s'\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"Invalid version object\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"%d.\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"%0*d_%d\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"%0*d\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"000\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"v%ld\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c".%ld\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"_%ld\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c".0\00", align 1
@.str.77 = private unnamed_addr constant [35 x i8] c"Unknown Unicode option letter '%c'\00", align 1
@.str.78 = private unnamed_addr constant [33 x i8] c"Unknown Unicode option value %lu\00", align 1
@PL_hash_rand_bits_enabled = external local_unnamed_addr global i8, align 1
@.str.79 = private unnamed_addr constant [35 x i8] c"panic: my_snprintf buffer overflow\00", align 1
@.str.80 = private unnamed_addr constant [36 x i8] c"panic: my_vsnprintf buffer overflow\00", align 1
@PL_stack_sp = external global ptr, align 8
@.str.81 = private unnamed_addr constant [89 x i8] c"%s: loadable library and perl binaries are mismatched (got handshake key %p, needed %p)\0A\00", align 1
@PL_xsubfilename = external global ptr, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@.str.82 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@.str.83 = private unnamed_addr constant [45 x i8] c"Perl API version %s of %-p does not match %s\00", align 1
@PL_DBsub = external local_unnamed_addr global ptr, align 8
@PL_tainted = external local_unnamed_addr global i8, align 1
@PL_perldb = external local_unnamed_addr global i32, align 4
@.str.84 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@PL_no_func = external constant [0 x i8], align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"dirfd\00", align 1
@PL_memory_wrap = external constant [0 x i8], align 1
@PL_mess_sv = external local_unnamed_addr global ptr, align 8
@PL_errors = external local_unnamed_addr global ptr, align 8
@PL_diehook = external global ptr, align 8
@PL_curstackinfo = external local_unnamed_addr global ptr, align 8
@PL_curstack = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@.str.87 = private unnamed_addr constant [11 x i8] c"XS_VERSION\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"%-p::%s\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"VERSION\00", align 1
@.str.90 = private unnamed_addr constant [39 x i8] c"%-p object version %-p does not match \00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"$%-p::%s %-p\00", align 1
@.str.92 = private unnamed_addr constant [24 x i8] c"bootstrap parameter %-p\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local noalias noundef ptr @Perl_safesysmalloc(i64 noundef %0) local_unnamed_addr #0 !prof !133 {
  %2 = tail call i64 @llvm.umax.i64(i64 %0, i64 1)
  %3 = tail call noalias ptr @malloc(i64 noundef %2) #43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9, !prof !134

5:                                                ; preds = %1
  %6 = load i8, ptr @PL_nomemok, align 1, !tbaa !135, !range !139, !noundef !140
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @Perl_croak_no_mem()
  br label %9

9:                                                ; preds = %5, %1, %8
  %10 = phi ptr [ null, %8 ], [ %3, %1 ], [ null, %5 ]
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_croak_no_mem() local_unnamed_addr #3 !prof !141 {
  %1 = load ptr, ptr @PL_stderrgv, align 8, !tbaa !142
  %2 = icmp eq ptr %1, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.gv, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !144
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 9
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.gv, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !147
  %11 = getelementptr inbounds %struct.gp, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !148
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %12, align 8, !tbaa !150
  %16 = getelementptr inbounds %struct.xpvio, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !152
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %8, %3, %0
  %20 = tail call ptr @Perl_PerlIO_stderr() #44
  br label %21

21:                                               ; preds = %14, %19
  %22 = phi ptr [ %20, %19 ], [ %17, %14 ]
  %23 = tail call i32 @Perl_PerlIO_fileno(ptr noundef %22) #44
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = tail call ptr @__errno_location() #45
  store i32 9, ptr %26, align 4, !tbaa !155
  br label %29

27:                                               ; preds = %21
  %28 = tail call i64 @write(i32 noundef %23, ptr noundef nonnull @PL_no_mem, i64 noundef 15) #44
  br label %29

29:                                               ; preds = %27, %25
  tail call void @Perl_my_exit(i32 noundef 1) #44
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local noalias noundef ptr @Perl_safesysrealloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !156 {
  %3 = icmp eq i64 %1, 0
  %4 = icmp eq ptr %0, null
  br i1 %3, label %5, label %7, !prof !157

5:                                                ; preds = %2
  br i1 %4, label %23, label %6

6:                                                ; preds = %5
  tail call void @free(ptr noundef %0) #44
  br label %23

7:                                                ; preds = %2
  br i1 %4, label %8, label %16, !prof !158

8:                                                ; preds = %7
  %9 = tail call i64 @llvm.umax.i64(i64 %1, i64 1)
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #43
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %23, !prof !159

12:                                               ; preds = %8
  %13 = load i8, ptr @PL_nomemok, align 1, !tbaa !135, !range !139, !noundef !140
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  tail call void @Perl_croak_no_mem()
  br label %23

16:                                               ; preds = %7
  %17 = tail call ptr @realloc(ptr noundef nonnull %0, i64 noundef %1) #46
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23, !prof !160

19:                                               ; preds = %16
  %20 = load i8, ptr @PL_nomemok, align 1, !tbaa !135, !range !139, !noundef !140
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void @Perl_croak_no_mem()
  br label %23

23:                                               ; preds = %15, %12, %8, %6, %5, %19, %22, %16
  %24 = phi ptr [ null, %22 ], [ %17, %16 ], [ null, %19 ], [ null, %5 ], [ null, %6 ], [ null, %15 ], [ %10, %8 ], [ null, %12 ]
  ret ptr %24
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @Perl_safesysfree(ptr noundef %0) local_unnamed_addr #4 !prof !161 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3, !prof !162

3:                                                ; preds = %1
  tail call void @free(ptr noundef %0) #44
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @Perl_safesyscalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #7 !prof !163 {
  %3 = icmp ne i64 %1, 0
  br i1 %3, label %4, label %7, !prof !164

4:                                                ; preds = %2
  %5 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0)
  %6 = extractvalue { i64, i1 } %5, 1
  br i1 %6, label %7, label %8, !prof !165

7:                                                ; preds = %4, %2
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.8, ptr noundef nonnull @PL_memory_wrap)
  br label %8

8:                                                ; preds = %4, %7
  %9 = icmp ne i64 %0, 0
  %10 = and i1 %9, %3
  br i1 %10, label %11, label %13, !prof !164

11:                                               ; preds = %8
  %12 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47
  br label %17

13:                                               ; preds = %8
  %14 = select i1 %9, i64 %0, i64 1
  %15 = select i1 %3, i64 %1, i64 1
  %16 = tail call noalias ptr @calloc(i64 noundef %14, i64 noundef %15) #47
  br label %17

17:                                               ; preds = %13, %11
  %18 = phi ptr [ %12, %11 ], [ %16, %13 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %24, !prof !165

20:                                               ; preds = %17
  %21 = load i8, ptr @PL_nomemok, align 1, !tbaa !135, !range !139, !noundef !140
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call void @Perl_croak_no_mem()
  br label %24

24:                                               ; preds = %20, %17, %23
  %25 = phi ptr [ null, %23 ], [ %18, %17 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @Perl_malloc(i64 noundef %0) local_unnamed_addr #9 !prof !141 {
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @Perl_calloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #9 !prof !141 {
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @Perl_realloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #10 !prof !141 {
  %3 = tail call ptr @realloc(ptr noundef %0, i64 noundef %1) #46
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @Perl_mfree(ptr nocapture noundef %0) local_unnamed_addr #10 !prof !141 {
  tail call void @free(ptr noundef %0) #44
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @Perl_delimcpy(ptr noundef writeonly %0, ptr noundef readnone %1, ptr noundef readonly %2, ptr noundef readnone %3, i32 noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #11 !prof !166 {
  %7 = icmp ult ptr %2, %3
  br i1 %7, label %8, label %42, !prof !167

8:                                                ; preds = %6, %37
  %9 = phi i32 [ %40, %37 ], [ 0, %6 ]
  %10 = phi ptr [ %38, %37 ], [ %0, %6 ]
  %11 = phi ptr [ %39, %37 ], [ %2, %6 ]
  %12 = load i8, ptr %11, align 1, !tbaa !147
  %13 = icmp eq i8 %12, 92
  br i1 %13, label %14, label %26, !prof !168

14:                                               ; preds = %8
  %15 = getelementptr inbounds i8, ptr %11, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !147
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, %4
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = icmp ult ptr %10, %1
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 %12, ptr %10, align 1, !tbaa !147
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %22, %21 ], [ %10, %19 ]
  %25 = add nsw i32 %9, 1
  br label %29

26:                                               ; preds = %8
  %27 = sext i8 %12 to i32
  %28 = icmp eq i32 %27, %4
  br i1 %28, label %42, label %29, !prof !169

29:                                               ; preds = %14, %23, %26
  %30 = phi ptr [ %11, %26 ], [ %15, %23 ], [ %15, %14 ]
  %31 = phi ptr [ %10, %26 ], [ %24, %23 ], [ %10, %14 ]
  %32 = phi i32 [ %9, %26 ], [ %25, %23 ], [ %9, %14 ]
  %33 = icmp ult ptr %31, %1
  br i1 %33, label %34, label %37, !prof !170

34:                                               ; preds = %29
  %35 = load i8, ptr %30, align 1, !tbaa !147
  %36 = getelementptr inbounds i8, ptr %31, i64 1
  store i8 %35, ptr %31, align 1, !tbaa !147
  br label %37

37:                                               ; preds = %29, %34
  %38 = phi ptr [ %36, %34 ], [ %31, %29 ]
  %39 = getelementptr inbounds i8, ptr %30, i64 1
  %40 = add nsw i32 %32, 1
  %41 = icmp ult ptr %39, %3
  br i1 %41, label %8, label %42, !prof !171, !llvm.loop !172

42:                                               ; preds = %37, %26, %6
  %43 = phi ptr [ %2, %6 ], [ %39, %37 ], [ %11, %26 ]
  %44 = phi ptr [ %0, %6 ], [ %38, %37 ], [ %10, %26 ]
  %45 = phi i32 [ 0, %6 ], [ %40, %37 ], [ %9, %26 ]
  %46 = icmp ult ptr %44, %1
  br i1 %46, label %47, label %48, !prof !175

47:                                               ; preds = %42
  store i8 0, ptr %44, align 1, !tbaa !147
  br label %48

48:                                               ; preds = %47, %42
  store i32 %45, ptr %5, align 4, !tbaa !155
  ret ptr %43
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @Perl_instr(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 !prof !176 {
  %3 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #48
  ret ptr %3
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @Perl_ninstr(ptr noundef readonly %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 !prof !141 {
  %5 = icmp ult ptr %2, %3
  br i1 %5, label %6, label %33

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1, !tbaa !147
  %8 = ptrtoint ptr %3 to i64
  %9 = ptrtoint ptr %2 to i64
  %10 = sub i64 %9, %8
  %11 = getelementptr inbounds i8, ptr %1, i64 %10
  %12 = getelementptr inbounds i8, ptr %2, i64 1
  %13 = icmp ult ptr %12, %3
  br label %14

14:                                               ; preds = %21, %6
  %15 = phi ptr [ %0, %6 ], [ %18, %21 ]
  %16 = icmp ugt ptr %15, %11
  br i1 %16, label %33, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds i8, ptr %15, i64 1
  %19 = load i8, ptr %15, align 1, !tbaa !147
  %20 = icmp eq i8 %19, %7
  br i1 %20, label %22, label %21

21:                                               ; preds = %27, %17
  br label %14, !llvm.loop !177

22:                                               ; preds = %17
  br i1 %13, label %27, label %33

23:                                               ; preds = %27
  %24 = getelementptr inbounds i8, ptr %29, i64 1
  %25 = getelementptr inbounds i8, ptr %28, i64 1
  %26 = icmp eq ptr %25, %3
  br i1 %26, label %33, label %27, !llvm.loop !178

27:                                               ; preds = %22, %23
  %28 = phi ptr [ %25, %23 ], [ %12, %22 ]
  %29 = phi ptr [ %24, %23 ], [ %18, %22 ]
  %30 = load i8, ptr %28, align 1, !tbaa !147
  %31 = load i8, ptr %29, align 1, !tbaa !147
  %32 = icmp eq i8 %30, %31
  br i1 %32, label %23, label %21

33:                                               ; preds = %22, %14, %23, %4
  %34 = phi ptr [ %0, %4 ], [ %15, %23 ], [ %15, %22 ], [ null, %14 ]
  ret ptr %34
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @Perl_rninstr(ptr noundef readnone %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 !prof !141 {
  %5 = load i8, ptr %2, align 1, !tbaa !147
  %6 = icmp ult ptr %2, %3
  br i1 %6, label %7, label %37

7:                                                ; preds = %4
  %8 = ptrtoint ptr %3 to i64
  %9 = ptrtoint ptr %2 to i64
  %10 = sub i64 %9, %8
  %11 = getelementptr inbounds i8, ptr %1, i64 %10
  %12 = icmp ult ptr %11, %0
  br i1 %12, label %37, label %13

13:                                               ; preds = %7, %35
  %14 = phi ptr [ %33, %35 ], [ undef, %7 ]
  %15 = phi ptr [ %16, %35 ], [ %11, %7 ]
  %16 = getelementptr inbounds i8, ptr %15, i64 -1
  %17 = load i8, ptr %15, align 1, !tbaa !147
  %18 = icmp eq i8 %17, %5
  br i1 %18, label %19, label %32, !llvm.loop !179

19:                                               ; preds = %13, %24
  %20 = phi ptr [ %22, %24 ], [ %2, %13 ]
  %21 = phi ptr [ %25, %24 ], [ %15, %13 ]
  %22 = getelementptr inbounds i8, ptr %20, i64 1
  %23 = icmp uge ptr %22, %3
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds i8, ptr %21, i64 1
  %26 = load i8, ptr %22, align 1, !tbaa !147
  %27 = load i8, ptr %25, align 1, !tbaa !147
  %28 = icmp eq i8 %26, %27
  br i1 %28, label %19, label %29, !llvm.loop !180

29:                                               ; preds = %24, %19
  %30 = phi ptr [ %15, %19 ], [ %14, %24 ]
  %31 = zext i1 %23 to i32
  br label %32

32:                                               ; preds = %29, %13
  %33 = phi ptr [ %14, %13 ], [ %30, %29 ]
  %34 = phi i32 [ 2, %13 ], [ %31, %29 ]
  switch i32 %34, label %37 [
    i32 0, label %35
    i32 2, label %35
  ]

35:                                               ; preds = %32, %32
  %36 = icmp ult ptr %16, %0
  br i1 %36, label %37, label %13, !llvm.loop !179

37:                                               ; preds = %35, %32, %7, %4
  %38 = phi ptr [ %1, %4 ], [ null, %7 ], [ %33, %32 ], [ null, %35 ]
  ret ptr %38
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_fbm_compile(ptr noundef %0, i32 noundef %1) local_unnamed_addr #7 !prof !181 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #44
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !182
  %6 = and i32 %5, 49152
  %7 = icmp eq i32 %6, 32768
  br i1 %7, label %8, label %15, !prof !184

8:                                                ; preds = %2
  %9 = and i32 %5, 255
  %10 = add nsw i32 %9, -11
  %11 = icmp ult i32 %10, -2
  %12 = and i32 %5, 2048
  %13 = icmp eq i32 %12, 0
  %14 = and i1 %13, %11
  br i1 %14, label %18, label %126, !prof !185

15:                                               ; preds = %2
  %16 = and i32 %5, 2048
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %126, !prof !186

18:                                               ; preds = %8, %15
  %19 = and i32 %5, 1073741824
  %20 = icmp eq i32 %19, 0
  %21 = icmp eq i32 %6, 49152
  %22 = or i1 %20, %21
  br i1 %22, label %23, label %126, !prof !186

23:                                               ; preds = %18
  %24 = and i32 %1, 15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %43, label %26, !prof !187

26:                                               ; preds = %23
  %27 = and i32 %5, 536870912
  %28 = icmp eq i32 %27, 0
  %29 = and i32 %5, 14680064
  %30 = icmp eq i32 %29, 0
  %31 = or i1 %28, %30
  br i1 %31, label %34, label %32, !prof !188

32:                                               ; preds = %26
  %33 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 119) #44
  br label %34

34:                                               ; preds = %26, %32
  %35 = phi ptr [ %33, %32 ], [ null, %26 ]
  tail call void @Perl_sv_catpvn_flags(ptr noundef %0, ptr noundef nonnull @.str, i64 noundef 1, i32 noundef 2) #44
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37, !prof !188

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.magic, ptr %35, i64 0, i32 5
  %39 = load i64, ptr %38, align 8, !tbaa !189
  %40 = icmp sgt i64 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = add nuw nsw i64 %39, 1
  store i64 %42, ptr %38, align 8, !tbaa !189
  br label %43

43:                                               ; preds = %34, %37, %41, %23
  %44 = load i32, ptr %4, align 4, !tbaa !182
  %45 = and i32 %44, 13312
  %46 = icmp eq i32 %45, 1024
  br i1 %46, label %58, label %47, !prof !186

47:                                               ; preds = %43
  %48 = and i32 %44, 430018304
  %49 = icmp eq i32 %48, 1024
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load ptr, ptr %0, align 8, !tbaa !192
  %52 = getelementptr inbounds %struct.xpv, ptr %51, i64 0, i32 2
  %53 = load i64, ptr %52, align 8, !tbaa !193
  store i64 %53, ptr %3, align 8, !tbaa !195
  %54 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !147
  br label %69

56:                                               ; preds = %47
  %57 = call ptr @Perl_sv_pvn_force_flags(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 66) #44
  br label %69

58:                                               ; preds = %43
  %59 = and i32 %44, 2098176
  %60 = icmp eq i32 %59, 1024
  br i1 %60, label %61, label %67, !prof !186

61:                                               ; preds = %58
  %62 = load ptr, ptr %0, align 8, !tbaa !192
  %63 = getelementptr inbounds %struct.xpv, ptr %62, i64 0, i32 2
  %64 = load i64, ptr %63, align 8, !tbaa !193
  store i64 %64, ptr %3, align 8, !tbaa !195
  %65 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !147
  br label %69

67:                                               ; preds = %58
  %68 = call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 66) #44
  br label %69

69:                                               ; preds = %61, %67, %50, %56
  %70 = phi ptr [ %55, %50 ], [ %57, %56 ], [ %66, %61 ], [ %68, %67 ]
  %71 = load i64, ptr %3, align 8, !tbaa !195
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %126, label %73, !prof !184

73:                                               ; preds = %69
  %74 = load i32, ptr %4, align 4, !tbaa !182
  %75 = and i32 %74, 255
  %76 = icmp ugt i32 %75, 6
  br i1 %76, label %78, label %77, !prof !184

77:                                               ; preds = %73
  call void @Perl_sv_upgrade(ptr noundef %0, i32 noundef 7) #44
  br label %78

78:                                               ; preds = %77, %73
  %79 = load i32, ptr %4, align 4, !tbaa !182
  %80 = and i32 %79, 1073728767
  %81 = or disjoint i32 %80, 1073741824
  store i32 %81, ptr %4, align 4, !tbaa !182
  %82 = call ptr @Perl_sv_magicext(ptr noundef %0, ptr noundef null, i32 noundef 66, ptr noundef nonnull getelementptr inbounds ([31 x %struct.mgvtbl], ptr @PL_magic_vtables, i64 0, i64 23), ptr noundef null, i32 noundef 0) #44
  %83 = load i64, ptr %3, align 8
  %84 = icmp ugt i64 %83, 2
  br i1 %84, label %85, label %120, !prof !196

85:                                               ; preds = %78
  %86 = call i64 @llvm.umin.i64(i64 %83, i64 255)
  %87 = trunc i64 %86 to i8
  %88 = getelementptr inbounds i8, ptr %70, i64 %83
  %89 = sub nsw i64 0, %86
  %90 = getelementptr inbounds i8, ptr %88, i64 %89
  %91 = call noalias dereferenceable_or_null(256) ptr @malloc(i64 noundef 256) #43
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %97, !prof !197

93:                                               ; preds = %85
  %94 = load i8, ptr @PL_nomemok, align 1, !tbaa !135, !range !139, !noundef !140
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  call void @Perl_croak_no_mem()
  br label %97

97:                                               ; preds = %85, %93, %96
  %98 = phi ptr [ null, %96 ], [ %91, %85 ], [ null, %93 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %98, i8 %87, i64 256, i1 false)
  %99 = getelementptr inbounds %struct.magic, ptr %82, i64 0, i32 7
  store ptr %98, ptr %99, align 8, !tbaa !198
  %100 = getelementptr inbounds %struct.magic, ptr %82, i64 0, i32 5
  store i64 256, ptr %100, align 8, !tbaa !189
  %101 = load i64, ptr %3, align 8, !tbaa !195
  %102 = add i64 %101, -1
  %103 = getelementptr inbounds i8, ptr %70, i64 %102
  %104 = icmp ult ptr %103, %90
  br i1 %104, label %120, label %105, !prof !199

105:                                              ; preds = %97, %116
  %106 = phi ptr [ %117, %116 ], [ %103, %97 ]
  %107 = phi i64 [ %118, %116 ], [ 0, %97 ]
  %108 = load i8, ptr %106, align 1, !tbaa !147
  %109 = zext i8 %108 to i64
  %110 = getelementptr inbounds i8, ptr %98, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !147
  %112 = zext i8 %111 to i64
  %113 = icmp eq i64 %86, %112
  br i1 %113, label %114, label %116, !prof !200

114:                                              ; preds = %105
  %115 = trunc i64 %107 to i8
  store i8 %115, ptr %110, align 1, !tbaa !147
  br label %116

116:                                              ; preds = %114, %105
  %117 = getelementptr inbounds i8, ptr %106, i64 -1
  %118 = add i64 %107, 1
  %119 = icmp ult ptr %117, %90
  br i1 %119, label %120, label %105, !prof !201, !llvm.loop !202

120:                                              ; preds = %116, %78, %97
  %121 = load ptr, ptr %0, align 8, !tbaa !192
  %122 = getelementptr inbounds %struct.xpviv, ptr %121, i64 0, i32 4
  store i64 100, ptr %122, align 8, !tbaa !147
  br i1 %25, label %126, label %123, !prof !187

123:                                              ; preds = %120
  %124 = load i32, ptr %4, align 4, !tbaa !182
  %125 = or i32 %124, -2147483648
  store i32 %125, ptr %4, align 4, !tbaa !182
  br label %126

126:                                              ; preds = %8, %120, %123, %69, %18, %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #44
  ret void
}

declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #15

declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #15

declare ptr @Perl_sv_pvn_force_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #15

declare ptr @Perl_sv_magicext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @Perl_fbm_instr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !203 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #44
  %6 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !182
  %8 = and i32 %7, 2098176
  %9 = icmp eq i32 %8, 1024
  br i1 %9, label %10, label %16, !prof !204

10:                                               ; preds = %4
  %11 = load ptr, ptr %2, align 8, !tbaa !192
  %12 = getelementptr inbounds %struct.xpv, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !193
  store i64 %13, ptr %5, align 8, !tbaa !195
  %14 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !147
  br label %18

16:                                               ; preds = %4
  %17 = call ptr @Perl_sv_2pv_flags(ptr noundef %2, ptr noundef nonnull %5, i32 noundef 34) #44
  br label %18

18:                                               ; preds = %16, %10
  %19 = phi ptr [ %15, %10 ], [ %17, %16 ]
  %20 = load i64, ptr %5, align 8, !tbaa !195
  %21 = and i32 %3, 1
  %22 = ptrtoint ptr %1 to i64
  %23 = ptrtoint ptr %0 to i64
  %24 = sub i64 %22, %23
  %25 = icmp ult i64 %24, %20
  br i1 %25, label %26, label %42, !prof !205

26:                                               ; preds = %18
  %27 = load i32, ptr %6, align 4, !tbaa !182
  %28 = icmp ugt i32 %27, -1073741825
  br i1 %28, label %29, label %41, !prof !206

29:                                               ; preds = %26
  %30 = add i64 %20, -1
  %31 = icmp eq i64 %24, %30
  br i1 %31, label %32, label %41, !prof !206

32:                                               ; preds = %29
  %33 = icmp eq i64 %20, 1
  br i1 %33, label %306, label %34, !prof !207

34:                                               ; preds = %32
  %35 = load i8, ptr %0, align 1, !tbaa !147
  %36 = load i8, ptr %19, align 1, !tbaa !147
  %37 = icmp eq i8 %35, %36
  br i1 %37, label %38, label %41, !prof !208

38:                                               ; preds = %34
  %39 = call i32 @bcmp(ptr nonnull %0, ptr nonnull %19, i64 %30), !prof !209
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %306, label %41, !prof !208

41:                                               ; preds = %38, %34, %29, %26
  br label %306

42:                                               ; preds = %18
  switch i64 %20, label %148 [
    i64 0, label %306
    i64 1, label %43
    i64 2, label %67
  ], !prof !210

43:                                               ; preds = %42
  %44 = load i32, ptr %6, align 4, !tbaa !182
  %45 = icmp ult i32 %44, -1073741824
  %46 = icmp ne i32 %21, 0
  %47 = or i1 %46, %45
  br i1 %47, label %48, label %52, !prof !211

48:                                               ; preds = %43
  %49 = icmp ult ptr %0, %1
  br i1 %49, label %50, label %64, !prof !212

50:                                               ; preds = %48
  %51 = load i8, ptr %19, align 1, !tbaa !147
  br label %57

52:                                               ; preds = %43
  %53 = getelementptr inbounds i8, ptr %1, i64 -1
  %54 = load i8, ptr %53, align 1, !tbaa !147
  %55 = icmp eq i8 %54, 10
  %56 = select i1 %55, ptr %53, ptr %1, !prof !213
  br label %306

57:                                               ; preds = %50, %61
  %58 = phi ptr [ %0, %50 ], [ %62, %61 ]
  %59 = load i8, ptr %58, align 1, !tbaa !147
  %60 = icmp eq i8 %59, %51
  br i1 %60, label %306, label %61, !prof !214

61:                                               ; preds = %57
  %62 = getelementptr inbounds i8, ptr %58, i64 1
  %63 = icmp eq ptr %62, %1
  br i1 %63, label %64, label %57, !prof !215, !llvm.loop !216

64:                                               ; preds = %61, %48
  %65 = icmp ugt i32 %44, -1073741825
  %66 = select i1 %65, ptr %1, ptr null, !prof !217
  br label %306

67:                                               ; preds = %42
  %68 = load i32, ptr %6, align 4, !tbaa !182
  %69 = icmp ult i32 %68, -1073741824
  %70 = icmp ne i32 %21, 0
  %71 = or i1 %70, %69
  br i1 %71, label %85, label %72, !prof !218

72:                                               ; preds = %67
  %73 = getelementptr inbounds i8, ptr %1, i64 -1
  %74 = load i8, ptr %73, align 1, !tbaa !147
  %75 = icmp eq i8 %74, 10
  br i1 %75, label %76, label %81, !prof !219

76:                                               ; preds = %72
  %77 = getelementptr inbounds i8, ptr %1, i64 -2
  %78 = load i8, ptr %77, align 1, !tbaa !147
  %79 = load i8, ptr %19, align 1, !tbaa !147
  %80 = icmp eq i8 %78, %79
  br i1 %80, label %306, label %81

81:                                               ; preds = %76, %72
  %82 = load i8, ptr %19, align 1, !tbaa !147
  %83 = icmp eq i8 %74, %82
  %84 = select i1 %83, ptr %73, ptr null, !prof !220
  br label %306

85:                                               ; preds = %67
  %86 = load i8, ptr %19, align 1, !tbaa !147
  %87 = getelementptr inbounds i8, ptr %19, i64 1
  %88 = load i8, ptr %87, align 1, !tbaa !147
  %89 = getelementptr inbounds i8, ptr %0, i64 1
  %90 = getelementptr inbounds i8, ptr %1, i64 -1
  %91 = icmp eq i8 %86, %88
  %92 = icmp ugt ptr %89, %90
  br i1 %91, label %94, label %93, !prof !221

93:                                               ; preds = %85
  br i1 %92, label %139, label %95, !prof !222

94:                                               ; preds = %85
  br i1 %92, label %139, label %117, !prof !223

95:                                               ; preds = %93, %103
  %96 = phi ptr [ %105, %103 ], [ %89, %93 ]
  %97 = load i8, ptr %96, align 1, !tbaa !147
  %98 = icmp eq i8 %97, %88
  br i1 %98, label %99, label %107, !prof !224

99:                                               ; preds = %95
  %100 = getelementptr inbounds i8, ptr %96, i64 -1
  %101 = load i8, ptr %100, align 1, !tbaa !147
  %102 = icmp eq i8 %101, %86
  br i1 %102, label %137, label %103

103:                                              ; preds = %107, %99
  %104 = phi ptr [ %96, %99 ], [ %108, %107 ]
  %105 = getelementptr inbounds i8, ptr %104, i64 2
  %106 = icmp ugt ptr %105, %90
  br i1 %106, label %139, label %95, !prof !225, !llvm.loop !226

107:                                              ; preds = %95, %113
  %108 = phi ptr [ %114, %113 ], [ %96, %95 ]
  %109 = load i8, ptr %108, align 1, !tbaa !147
  %110 = icmp eq i8 %109, %86
  br i1 %110, label %111, label %103, !prof !227

111:                                              ; preds = %107
  %112 = icmp eq ptr %108, %90
  br i1 %112, label %139, label %113, !prof !228

113:                                              ; preds = %111
  %114 = getelementptr inbounds i8, ptr %108, i64 1
  %115 = load i8, ptr %114, align 1, !tbaa !147
  %116 = icmp eq i8 %115, %88
  br i1 %116, label %139, label %107, !prof !229

117:                                              ; preds = %94, %131
  %118 = phi ptr [ %133, %131 ], [ %89, %94 ]
  %119 = load i8, ptr %118, align 1, !tbaa !147
  %120 = icmp eq i8 %119, %86
  br i1 %120, label %121, label %131, !prof !230

121:                                              ; preds = %117
  %122 = getelementptr inbounds i8, ptr %118, i64 -1
  %123 = load i8, ptr %122, align 1, !tbaa !147
  %124 = icmp eq i8 %123, %86
  br i1 %124, label %135, label %125, !prof !231

125:                                              ; preds = %121
  %126 = icmp eq ptr %118, %90
  br i1 %126, label %139, label %127

127:                                              ; preds = %125
  %128 = getelementptr inbounds i8, ptr %118, i64 1
  %129 = load i8, ptr %128, align 1, !tbaa !147
  %130 = icmp eq i8 %129, %86
  br i1 %130, label %139, label %131

131:                                              ; preds = %117, %127
  %132 = phi i64 [ 3, %127 ], [ 2, %117 ]
  %133 = getelementptr inbounds i8, ptr %118, i64 %132
  %134 = icmp ugt ptr %133, %90
  br i1 %134, label %139, label %117, !prof !232, !llvm.loop !233

135:                                              ; preds = %121
  %136 = getelementptr inbounds i8, ptr %118, i64 -1
  br label %139

137:                                              ; preds = %99
  %138 = getelementptr inbounds i8, ptr %96, i64 -1
  br label %139

139:                                              ; preds = %103, %113, %111, %125, %127, %131, %137, %93, %135, %94
  %140 = phi i32 [ 1, %135 ], [ 0, %94 ], [ 1, %137 ], [ 8, %93 ], [ 0, %131 ], [ 1, %127 ], [ 8, %125 ], [ 8, %111 ], [ 1, %113 ], [ 8, %103 ]
  %141 = phi ptr [ %136, %135 ], [ undef, %94 ], [ %138, %137 ], [ undef, %93 ], [ %118, %131 ], [ %118, %127 ], [ %118, %125 ], [ %108, %111 ], [ %108, %113 ], [ undef, %103 ]
  switch i32 %140, label %306 [
    i32 0, label %142
    i32 8, label %142
  ], !prof !234

142:                                              ; preds = %139, %139
  %143 = icmp ugt i32 %68, -1073741825
  br i1 %143, label %144, label %147, !prof !235

144:                                              ; preds = %142
  %145 = load i8, ptr %90, align 1, !tbaa !147
  %146 = icmp eq i8 %145, %86
  br i1 %146, label %306, label %147

147:                                              ; preds = %144, %142
  br label %306

148:                                              ; preds = %42
  %149 = load i32, ptr %6, align 4, !tbaa !182
  %150 = icmp ult i32 %149, -1073741824
  %151 = icmp ne i32 %21, 0
  %152 = or i1 %151, %150
  br i1 %152, label %183, label %153, !prof !236

153:                                              ; preds = %148
  %154 = sub i64 0, %20
  %155 = getelementptr inbounds i8, ptr %1, i64 %154
  %156 = icmp ult ptr %155, %0
  br i1 %156, label %171, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds i8, ptr %1, i64 -1
  %159 = load i8, ptr %158, align 1, !tbaa !147
  %160 = icmp eq i8 %159, 10
  br i1 %160, label %161, label %171

161:                                              ; preds = %157
  %162 = load i8, ptr %155, align 1, !tbaa !147
  %163 = load i8, ptr %19, align 1, !tbaa !147
  %164 = icmp eq i8 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %161
  %166 = getelementptr inbounds i8, ptr %155, i64 1
  %167 = getelementptr inbounds i8, ptr %19, i64 1
  %168 = add i64 %20, -2
  %169 = call i32 @bcmp(ptr nonnull %166, ptr nonnull %167, i64 %168)
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %306, label %171

171:                                              ; preds = %165, %161, %157, %153
  %172 = getelementptr inbounds i8, ptr %155, i64 1
  %173 = load i8, ptr %172, align 1, !tbaa !147
  %174 = load i8, ptr %19, align 1, !tbaa !147
  %175 = icmp eq i8 %173, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %171
  %177 = getelementptr inbounds i8, ptr %155, i64 2
  %178 = getelementptr inbounds i8, ptr %19, i64 1
  %179 = add i64 %20, -2
  %180 = call i32 @bcmp(ptr nonnull %177, ptr nonnull %178, i64 %179)
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %306, label %182

182:                                              ; preds = %176, %171
  br label %306

183:                                              ; preds = %148
  %184 = and i32 %149, 1073741824
  %185 = icmp eq i32 %184, 0
  %186 = and i32 %149, 49152
  %187 = icmp eq i32 %186, 49152
  %188 = or i1 %185, %187
  br i1 %188, label %189, label %236, !prof !237

189:                                              ; preds = %183
  %190 = getelementptr inbounds i8, ptr %19, i64 %20
  %191 = icmp sgt i64 %20, 0
  br i1 %191, label %192, label %217

192:                                              ; preds = %189
  %193 = load i8, ptr %19, align 1, !tbaa !147
  %194 = sub nsw i64 0, %20
  %195 = getelementptr inbounds i8, ptr %1, i64 %194
  %196 = getelementptr inbounds i8, ptr %19, i64 1
  %197 = icmp eq i64 %20, 1
  br label %198

198:                                              ; preds = %205, %192
  %199 = phi ptr [ %0, %192 ], [ %202, %205 ]
  %200 = icmp ugt ptr %199, %195
  br i1 %200, label %217, label %201

201:                                              ; preds = %198
  %202 = getelementptr inbounds i8, ptr %199, i64 1
  %203 = load i8, ptr %199, align 1, !tbaa !147
  %204 = icmp eq i8 %203, %193
  br i1 %204, label %206, label %205

205:                                              ; preds = %211, %201
  br label %198, !llvm.loop !177

206:                                              ; preds = %201
  br i1 %197, label %217, label %211

207:                                              ; preds = %211
  %208 = getelementptr inbounds i8, ptr %213, i64 1
  %209 = getelementptr inbounds i8, ptr %212, i64 1
  %210 = icmp ult ptr %209, %190
  br i1 %210, label %211, label %217, !llvm.loop !178

211:                                              ; preds = %206, %207
  %212 = phi ptr [ %209, %207 ], [ %196, %206 ]
  %213 = phi ptr [ %208, %207 ], [ %202, %206 ]
  %214 = load i8, ptr %212, align 1, !tbaa !147
  %215 = load i8, ptr %213, align 1, !tbaa !147
  %216 = icmp eq i8 %214, %215
  br i1 %216, label %207, label %205

217:                                              ; preds = %206, %198, %207, %189
  %218 = phi ptr [ %0, %189 ], [ %199, %207 ], [ %199, %206 ], [ null, %198 ]
  %219 = icmp eq ptr %218, null
  %220 = icmp ugt i32 %149, -1073741825
  %221 = and i1 %220, %219
  br i1 %221, label %222, label %306

222:                                              ; preds = %217
  %223 = sub i64 0, %20
  %224 = getelementptr inbounds i8, ptr %1, i64 %223
  %225 = getelementptr inbounds i8, ptr %224, i64 1
  %226 = load i8, ptr %225, align 1, !tbaa !147
  %227 = load i8, ptr %19, align 1, !tbaa !147
  %228 = icmp eq i8 %226, %227
  br i1 %228, label %229, label %235

229:                                              ; preds = %222
  %230 = getelementptr inbounds i8, ptr %224, i64 2
  %231 = getelementptr inbounds i8, ptr %19, i64 1
  %232 = add i64 %20, -2
  %233 = call i32 @bcmp(ptr nonnull %230, ptr nonnull %231, i64 %232)
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %306, label %235

235:                                              ; preds = %229, %222
  br label %306

236:                                              ; preds = %183
  %237 = call ptr @Perl_mg_find(ptr noundef %2, i32 noundef 66) #44
  %238 = add i64 %20, -1
  %239 = getelementptr inbounds i8, ptr %0, i64 %238
  %240 = getelementptr inbounds i8, ptr %19, i64 %238
  %241 = icmp ult ptr %239, %1
  br i1 %241, label %242, label %294, !prof !236

242:                                              ; preds = %236
  %243 = getelementptr inbounds %struct.magic, ptr %237, i64 0, i32 7
  %244 = load ptr, ptr %243, align 8, !tbaa !198
  br label %245

245:                                              ; preds = %282, %242
  %246 = phi ptr [ %285, %282 ], [ %240, %242 ]
  %247 = phi ptr [ %286, %282 ], [ %239, %242 ]
  %248 = phi ptr [ %287, %282 ], [ undef, %242 ]
  br label %249

249:                                              ; preds = %245, %256
  %250 = phi ptr [ %258, %256 ], [ %247, %245 ]
  %251 = load i8, ptr %250, align 1, !tbaa !147
  %252 = zext i8 %251 to i64
  %253 = getelementptr inbounds i8, ptr %244, i64 %252
  %254 = load i8, ptr %253, align 1, !tbaa !147
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %260, label %256, !prof !238

256:                                              ; preds = %249
  %257 = zext i8 %254 to i64
  %258 = getelementptr inbounds i8, ptr %250, i64 %257
  %259 = icmp ult ptr %258, %1
  br i1 %259, label %249, label %290, !prof !239

260:                                              ; preds = %249
  %261 = trunc i64 %238 to i32
  %262 = and i64 %238, 4294967295
  %263 = sub nsw i64 0, %262
  %264 = getelementptr i8, ptr %246, i64 %263
  %265 = getelementptr i8, ptr %250, i64 %263
  br label %266

266:                                              ; preds = %271, %260
  %267 = phi ptr [ %246, %260 ], [ %275, %271 ]
  %268 = phi ptr [ %250, %260 ], [ %273, %271 ]
  %269 = phi i32 [ %261, %260 ], [ %272, %271 ]
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %282, label %271, !prof !240

271:                                              ; preds = %266
  %272 = add nsw i32 %269, -1
  %273 = getelementptr inbounds i8, ptr %268, i64 -1
  %274 = load i8, ptr %273, align 1, !tbaa !147
  %275 = getelementptr inbounds i8, ptr %267, i64 -1
  %276 = load i8, ptr %275, align 1, !tbaa !147
  %277 = icmp eq i8 %274, %276
  br i1 %277, label %266, label %278, !prof !241, !llvm.loop !242

278:                                              ; preds = %271
  %279 = getelementptr inbounds i8, ptr %250, i64 1
  %280 = icmp ult ptr %279, %1
  %281 = select i1 %280, i32 11, i32 12, !prof !243
  br label %282

282:                                              ; preds = %266, %278
  %283 = phi i1 [ %280, %278 ], [ false, %266 ]
  %284 = phi i32 [ %281, %278 ], [ 1, %266 ]
  %285 = phi ptr [ %240, %278 ], [ %264, %266 ]
  %286 = phi ptr [ %279, %278 ], [ %265, %266 ]
  %287 = phi ptr [ %248, %278 ], [ %265, %266 ]
  br i1 %283, label %245, label %288, !prof !244

288:                                              ; preds = %282
  %289 = icmp eq i32 %284, 12
  br label %290

290:                                              ; preds = %256, %288
  %291 = phi i1 [ %289, %288 ], [ true, %256 ]
  %292 = phi ptr [ %286, %288 ], [ %258, %256 ]
  %293 = phi ptr [ %287, %288 ], [ %248, %256 ]
  br i1 %291, label %294, label %306, !prof !245

294:                                              ; preds = %236, %290
  %295 = phi ptr [ %292, %290 ], [ %239, %236 ]
  %296 = icmp eq ptr %295, %1
  br i1 %296, label %297, label %305, !prof !246

297:                                              ; preds = %294
  %298 = load i32, ptr %6, align 4, !tbaa !182
  %299 = icmp ugt i32 %298, -1073741825
  br i1 %299, label %300, label %305, !prof !247

300:                                              ; preds = %297
  %301 = sub i64 1, %20
  %302 = getelementptr inbounds i8, ptr %1, i64 %301
  %303 = call i32 @bcmp(ptr %302, ptr %19, i64 %238)
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %306, label %305

305:                                              ; preds = %300, %297, %294
  br label %306

306:                                              ; preds = %57, %300, %165, %305, %290, %235, %229, %217, %176, %144, %81, %76, %64, %52, %42, %32, %38, %182, %147, %139, %41
  %307 = phi ptr [ null, %41 ], [ null, %182 ], [ %141, %139 ], [ null, %147 ], [ %0, %38 ], [ %0, %32 ], [ %0, %42 ], [ %56, %52 ], [ %66, %64 ], [ %77, %76 ], [ %84, %81 ], [ %90, %144 ], [ %172, %176 ], [ null, %235 ], [ %225, %229 ], [ %218, %217 ], [ null, %305 ], [ %293, %290 ], [ %155, %165 ], [ %302, %300 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #44
  ret ptr %307
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @Perl_foldEQ(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #17 !prof !248 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %22, label %5, !prof !249

5:                                                ; preds = %3, %18
  %6 = phi i32 [ %9, %18 ], [ %2, %3 ]
  %7 = phi ptr [ %20, %18 ], [ %1, %3 ]
  %8 = phi ptr [ %19, %18 ], [ %0, %3 ]
  %9 = add nsw i32 %6, -1
  %10 = load i8, ptr %8, align 1, !tbaa !147
  %11 = load i8, ptr %7, align 1, !tbaa !147
  %12 = icmp eq i8 %10, %11
  br i1 %12, label %18, label %13, !prof !250

13:                                               ; preds = %5
  %14 = zext i8 %11 to i64
  %15 = getelementptr inbounds [0 x i8], ptr @PL_fold, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !147
  %17 = icmp eq i8 %10, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %13, %5
  %19 = getelementptr inbounds i8, ptr %8, i64 1
  %20 = getelementptr inbounds i8, ptr %7, i64 1
  %21 = icmp eq i32 %9, 0
  br i1 %21, label %22, label %5, !prof !251, !llvm.loop !252

22:                                               ; preds = %13, %18, %3
  %23 = phi i32 [ 1, %3 ], [ 0, %13 ], [ 1, %18 ]
  ret i32 %23
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @Perl_foldEQ_latin1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #17 !prof !253 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %22, label %5, !prof !254

5:                                                ; preds = %3, %18
  %6 = phi i32 [ %9, %18 ], [ %2, %3 ]
  %7 = phi ptr [ %20, %18 ], [ %1, %3 ]
  %8 = phi ptr [ %19, %18 ], [ %0, %3 ]
  %9 = add nsw i32 %6, -1
  %10 = load i8, ptr %8, align 1, !tbaa !147
  %11 = load i8, ptr %7, align 1, !tbaa !147
  %12 = icmp eq i8 %10, %11
  br i1 %12, label %18, label %13, !prof !255

13:                                               ; preds = %5
  %14 = zext i8 %11 to i64
  %15 = getelementptr inbounds [0 x i8], ptr @PL_fold_latin1, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !147
  %17 = icmp eq i8 %10, %16
  br i1 %17, label %18, label %22, !prof !256

18:                                               ; preds = %13, %5
  %19 = getelementptr inbounds i8, ptr %8, i64 1
  %20 = getelementptr inbounds i8, ptr %7, i64 1
  %21 = icmp eq i32 %9, 0
  br i1 %21, label %22, label %5, !prof !257, !llvm.loop !258

22:                                               ; preds = %13, %18, %3
  %23 = phi i32 [ 1, %3 ], [ 0, %13 ], [ 1, %18 ]
  ret i32 %23
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @Perl_foldEQ_locale(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #14 !prof !141 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %3, %18
  %6 = phi i32 [ %9, %18 ], [ %2, %3 ]
  %7 = phi ptr [ %20, %18 ], [ %1, %3 ]
  %8 = phi ptr [ %19, %18 ], [ %0, %3 ]
  %9 = add nsw i32 %6, -1
  %10 = load i8, ptr %8, align 1, !tbaa !147
  %11 = load i8, ptr %7, align 1, !tbaa !147
  %12 = icmp eq i8 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %5
  %14 = zext i8 %11 to i64
  %15 = getelementptr inbounds [0 x i8], ptr @PL_fold_locale, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !147
  %17 = icmp eq i8 %10, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %13, %5
  %19 = getelementptr inbounds i8, ptr %8, i64 1
  %20 = getelementptr inbounds i8, ptr %7, i64 1
  %21 = icmp eq i32 %9, 0
  br i1 %21, label %22, label %5, !llvm.loop !259

22:                                               ; preds = %13, %18, %3
  %23 = phi i32 [ 1, %3 ], [ 0, %13 ], [ 1, %18 ]
  ret i32 %23
}

; Function Attrs: cold nounwind uwtable
define dso_local noalias noundef ptr @Perl_savepv(ptr noundef readonly %0) local_unnamed_addr #3 !prof !260 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3, !prof !261

3:                                                ; preds = %1
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #48
  %5 = add i64 %4, 1
  %6 = tail call i64 @llvm.umax.i64(i64 %5, i64 1)
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13, !prof !261

9:                                                ; preds = %3
  %10 = load i8, ptr @PL_nomemok, align 1, !tbaa !135, !range !139, !noundef !140
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call void @Perl_croak_no_mem()
  br label %13

13:                                               ; preds = %3, %9, %12
  %14 = phi ptr [ null, %12 ], [ %7, %3 ], [ null, %9 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr nonnull align 1 %0, i64 %5, i1 false), !prof !262
  br label %15

15:                                               ; preds = %1, %13
  %16 = phi ptr [ %14, %13 ], [ null, %1 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @Perl_savepvn(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 !prof !263 {
  %3 = add nsw i32 %1, 1
  %4 = sext i32 %3 to i64
  %5 = tail call i64 @llvm.umax.i64(i64 %4, i64 1)
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #43
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12, !prof !264

8:                                                ; preds = %2
  %9 = load i8, ptr @PL_nomemok, align 1, !tbaa !135, !range !139, !noundef !140
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @Perl_croak_no_mem()
  br label %12

12:                                               ; preds = %2, %8, %11
  %13 = phi ptr [ null, %11 ], [ %6, %2 ], [ null, %8 ]
  %14 = icmp eq ptr %0, null
  br i1 %14, label %18, label %15, !prof !264

15:                                               ; preds = %12
  %16 = sext i32 %1 to i64
  %17 = getelementptr inbounds i8, ptr %13, i64 %16
  store i8 0, ptr %17, align 1, !tbaa !147
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr nonnull align 1 %0, i64 %16, i1 false), !prof !265
  br label %19

18:                                               ; preds = %12
  tail call void @llvm.memset.p0.i64(ptr align 1 %13, i8 0, i64 %4, i1 false)
  br label %19

19:                                               ; preds = %18, %15
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @Perl_savesharedpv(ptr noundef readonly %0) local_unnamed_addr #7 !prof !266 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3, !prof !267

3:                                                ; preds = %1
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #48
  %5 = add i64 %4, 1
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #43
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !267

8:                                                ; preds = %3
  tail call void @Perl_croak_no_mem()
  br label %9

9:                                                ; preds = %8, %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr nonnull align 1 %0, i64 %5, i1 false), !prof !268
  br label %10

10:                                               ; preds = %1, %9
  %11 = phi ptr [ %6, %9 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: cold nounwind uwtable
define dso_local noalias noundef ptr @Perl_savesharedpvn(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #3 !prof !141 {
  %3 = add i64 %1, 1
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @Perl_croak_no_mem()
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds i8, ptr %4, i64 %1
  store i8 0, ptr %8, align 1, !tbaa !147
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %0, i64 %1, i1 false)
  ret ptr %4
}

; Function Attrs: cold nounwind uwtable
define dso_local noalias noundef ptr @Perl_savesvpv(ptr noundef %0) local_unnamed_addr #3 !prof !269 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #44
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !182
  %5 = and i32 %4, 2098176
  %6 = icmp eq i32 %5, 1024
  br i1 %6, label %7, label %13, !prof !270

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !192
  %9 = getelementptr inbounds %struct.xpv, ptr %8, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !193
  store i64 %10, ptr %2, align 8, !tbaa !195
  %11 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !147
  br label %15

13:                                               ; preds = %1
  %14 = call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 34) #44
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %12, %7 ], [ %14, %13 ]
  %17 = load i64, ptr %2, align 8, !tbaa !195
  %18 = add i64 %17, 1
  store i64 %18, ptr %2, align 8, !tbaa !195
  %19 = call i64 @llvm.umax.i64(i64 %18, i64 1)
  %20 = call noalias ptr @malloc(i64 noundef %19) #43
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26, !prof !270

22:                                               ; preds = %15
  %23 = load i8, ptr @PL_nomemok, align 1, !tbaa !135, !range !139, !noundef !140
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  call void @Perl_croak_no_mem()
  br label %26

26:                                               ; preds = %15, %22, %25
  %27 = phi ptr [ null, %25 ], [ %20, %15 ], [ null, %22 ]
  %28 = load i64, ptr %2, align 8, !tbaa !195
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %27, ptr align 1 %16, i64 %28, i1 false), !prof !271
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #44
  ret ptr %27
}

; Function Attrs: cold nounwind uwtable
define dso_local noalias noundef ptr @Perl_savesharedsvpv(ptr noundef %0) local_unnamed_addr #3 !prof !141 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #44
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !182
  %5 = and i32 %4, 2098176
  %6 = icmp eq i32 %5, 1024
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !192
  %9 = getelementptr inbounds %struct.xpv, ptr %8, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !193
  store i64 %10, ptr %2, align 8, !tbaa !195
  %11 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !147
  br label %15

13:                                               ; preds = %1
  %14 = call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 34) #44
  br label %15

15:                                               ; preds = %13, %7
  %16 = phi ptr [ %12, %7 ], [ %14, %13 ]
  %17 = load i64, ptr %2, align 8, !tbaa !195
  %18 = add i64 %17, 1
  %19 = call noalias ptr @malloc(i64 noundef %18) #43
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  call void @Perl_croak_no_mem()
  br label %22

22:                                               ; preds = %15, %21
  %23 = getelementptr inbounds i8, ptr %19, i64 %17
  store i8 0, ptr %23, align 1, !tbaa !147
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %19, ptr align 1 %16, i64 %17, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #44
  ret ptr %19
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_form(ptr noundef %0, ...) local_unnamed_addr #3 !prof !269 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #44
  call void @llvm.va_start(ptr nonnull %2)
  %3 = call fastcc ptr @S_mess_alloc()
  %4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #48
  call void @Perl_sv_vsetpvfn(ptr noundef %3, ptr noundef %0, i64 noundef %4, ptr noundef nonnull %2, ptr noundef null, i32 noundef 0, ptr noundef null) #44
  %5 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !147
  call void @llvm.va_end(ptr %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #44
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_vform(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !141 {
  %3 = tail call fastcc ptr @S_mess_alloc()
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #48
  tail call void @Perl_sv_vsetpvfn(ptr noundef %3, ptr noundef %0, i64 noundef %4, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef null) #44
  %5 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !147
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @S_mess_alloc() unnamed_addr #3 !prof !272 !PGOFuncName !273 {
  %1 = load i32, ptr @PL_phase, align 4, !tbaa !155
  %2 = icmp eq i32 %1, 6
  br i1 %2, label %5, label %3, !prof !274

3:                                                ; preds = %0
  %4 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.10, i64 noundef 0, i32 noundef 524288) #44
  br label %28

5:                                                ; preds = %0
  %6 = load ptr, ptr @PL_mess_sv, align 8, !tbaa !142
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %28

8:                                                ; preds = %5
  %9 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #43
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i8, ptr @PL_nomemok, align 1, !tbaa !135, !range !139, !noundef !140
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void @Perl_croak_no_mem()
  br label %15

15:                                               ; preds = %8, %11, %14
  %16 = phi ptr [ null, %14 ], [ %9, %8 ], [ null, %11 ]
  %17 = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i8, ptr @PL_nomemok, align 1, !tbaa !135, !range !139, !noundef !140
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void @Perl_croak_no_mem()
  br label %23

23:                                               ; preds = %15, %19, %22
  %24 = phi ptr [ null, %22 ], [ %17, %15 ], [ null, %19 ]
  %25 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  store i32 7, ptr %25, align 4, !tbaa !182
  store ptr %24, ptr %16, align 8, !tbaa !192
  %26 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !147
  %27 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 1
  store i32 1073741824, ptr %27, align 8, !tbaa !275
  store ptr %16, ptr @PL_mess_sv, align 8, !tbaa !142
  br label %28

28:                                               ; preds = %5, %23, %3
  %29 = phi ptr [ %4, %3 ], [ %16, %23 ], [ %6, %5 ]
  ret ptr %29
}

declare void @Perl_sv_vsetpvfn(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @Perl_mess(ptr noundef %0, ...) local_unnamed_addr #3 !prof !141 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #44
  call void @llvm.va_start(ptr nonnull %2)
  %3 = call ptr @Perl_vmess(ptr noundef %0, ptr noundef nonnull %2)
  call void @llvm.va_end(ptr %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #44
  ret ptr %3
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @Perl_vmess(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !276 {
  %3 = tail call fastcc ptr @S_mess_alloc()
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #48
  tail call void @Perl_sv_vsetpvfn(ptr noundef %3, ptr noundef %0, i64 noundef %4, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef null) #44
  %5 = tail call ptr @Perl_mess_sv(ptr noundef %3, i1 noundef zeroext true)
  ret ptr %5
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @Perl_closest_cop(ptr noundef readnone %0, ptr noundef readonly %1, ptr noundef readnone %2, i1 noundef zeroext %3) local_unnamed_addr #20 !prof !277 {
  %5 = icmp ne ptr %1, null
  %6 = icmp ne ptr %2, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %55, !prof !278

8:                                                ; preds = %4
  br i1 %3, label %9, label %17, !prof !279

9:                                                ; preds = %8
  %10 = load ptr, ptr %1, align 8, !tbaa !280
  %11 = icmp eq ptr %10, %2
  br i1 %11, label %12, label %19, !prof !282

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 4
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 511
  %16 = icmp eq i16 %15, 198
  br i1 %16, label %19, label %55, !prof !283

17:                                               ; preds = %8
  %18 = icmp eq ptr %1, %2
  br i1 %18, label %55, label %19, !prof !284

19:                                               ; preds = %17, %12, %9
  %20 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 5
  %21 = load i8, ptr %20, align 2, !tbaa !285
  %22 = and i8 %21, 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %54, label %24, !prof !286

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.unop, ptr %1, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !142
  %27 = icmp eq ptr %26, null
  br i1 %27, label %51, label %32, !prof !287

28:                                               ; preds = %46
  %29 = getelementptr inbounds %struct.op, ptr %34, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !142
  %31 = icmp eq ptr %30, null
  br i1 %31, label %51, label %32, !prof !288, !llvm.loop !289

32:                                               ; preds = %24, %28
  %33 = phi i1 [ %31, %28 ], [ %27, %24 ]
  %34 = phi ptr [ %30, %28 ], [ %26, %24 ]
  %35 = phi ptr [ %50, %28 ], [ undef, %24 ]
  %36 = phi ptr [ %47, %28 ], [ %0, %24 ]
  %37 = getelementptr inbounds %struct.op, ptr %34, i64 0, i32 4
  %38 = load i16, ptr %37, align 8
  %39 = and i16 %38, 511
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %46, !prof !290

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.op, ptr %34, i64 0, i32 3
  %43 = load i64, ptr %42, align 8, !tbaa !291
  %44 = icmp eq i64 %43, 193
  %45 = select i1 %44, ptr %34, ptr %36, !prof !292
  br label %46

46:                                               ; preds = %41, %32
  %47 = phi ptr [ %36, %32 ], [ %45, %41 ]
  %48 = tail call ptr @Perl_closest_cop(ptr noundef %47, ptr noundef nonnull %34, ptr noundef nonnull %2, i1 noundef zeroext %3)
  %49 = icmp eq ptr %48, null
  %50 = select i1 %49, ptr %35, ptr %48, !prof !293
  br i1 %49, label %28, label %51, !prof !293

51:                                               ; preds = %46, %28, %24
  %52 = phi i1 [ %27, %24 ], [ %33, %46 ], [ %31, %28 ]
  %53 = phi ptr [ undef, %24 ], [ %50, %28 ], [ %50, %46 ]
  br i1 %52, label %54, label %55, !prof !294

54:                                               ; preds = %51, %19
  br label %55

55:                                               ; preds = %12, %51, %4, %17, %54
  %56 = phi ptr [ %53, %51 ], [ null, %54 ], [ %0, %17 ], [ %0, %4 ], [ %0, %12 ]
  ret ptr %56
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @Perl_mess_sv(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #3 !prof !276 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !182
  %6 = and i32 %5, 2048
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8, !prof !295

8:                                                ; preds = %2
  br i1 %1, label %145, label %9

9:                                                ; preds = %8
  %10 = tail call fastcc ptr @S_mess_alloc()
  tail call void @Perl_sv_setsv_flags(ptr noundef %10, ptr noundef %0, i32 noundef 1538) #44
  br label %145

11:                                               ; preds = %2
  %12 = and i32 %5, 1024
  %13 = icmp ne i32 %12, 0
  %14 = and i1 %13, %1
  br i1 %14, label %17, label %15, !prof !295

15:                                               ; preds = %11
  %16 = tail call fastcc ptr @S_mess_alloc()
  tail call void @Perl_sv_copypv_flags(ptr noundef %16, ptr noundef %0, i32 noundef 2) #44
  br label %17

17:                                               ; preds = %11, %15
  %18 = phi ptr [ %16, %15 ], [ %0, %11 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !192
  %20 = getelementptr inbounds %struct.xpv, ptr %19, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !193
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %30, label %23, !prof !296

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !147
  %26 = getelementptr inbounds i8, ptr %25, i64 %21
  %27 = getelementptr inbounds i8, ptr %26, i64 -1
  %28 = load i8, ptr %27, align 1, !tbaa !147
  %29 = icmp eq i8 %28, 10
  br i1 %29, label %145, label %30, !prof !296

30:                                               ; preds = %23, %17
  %31 = load ptr, ptr @PL_curcop, align 8
  %32 = getelementptr inbounds %struct.cop, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !297
  %34 = load ptr, ptr @PL_op, align 8, !tbaa !142
  %35 = tail call ptr @Perl_closest_cop(ptr noundef %31, ptr noundef %33, ptr noundef %34, i1 noundef zeroext false)
  %36 = icmp eq ptr %35, null
  %37 = select i1 %36, ptr %31, ptr %35, !prof !296
  %38 = getelementptr inbounds %struct.cop, ptr %37, i64 0, i32 7
  %39 = load i32, ptr %38, align 4, !tbaa !299
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %53, label %41, !prof !296

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.cop, ptr %37, i64 0, i32 9
  %43 = load ptr, ptr %42, align 8, !tbaa !300
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45, !prof !296

45:                                               ; preds = %41
  %46 = load ptr, ptr %43, align 8, !tbaa !301
  %47 = getelementptr inbounds %struct.xpvgv, ptr %46, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !147
  %49 = getelementptr inbounds %struct.hek, ptr %48, i64 0, i32 2, i64 2
  br label %50

50:                                               ; preds = %41, %45
  %51 = phi ptr [ %49, %45 ], [ null, %41 ]
  %52 = zext i32 %39 to i64
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef nonnull %18, ptr noundef nonnull @.str.1, ptr noundef %51, i64 noundef %52) #44
  br label %53

53:                                               ; preds = %50, %30
  %54 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !142
  %55 = icmp eq ptr %54, null
  br i1 %55, label %140, label %56, !prof !296

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !182
  %59 = and i32 %58, 255
  %60 = add nsw i32 %59, -9
  %61 = icmp ult i32 %60, 2
  br i1 %61, label %62, label %140, !prof !295

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.gv, ptr %54, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !147
  %65 = icmp eq ptr %64, null
  br i1 %65, label %140, label %66, !prof !296

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.gp, ptr %64, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !148
  %69 = icmp eq ptr %68, null
  br i1 %69, label %140, label %70, !prof !296

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.io, ptr %68, i64 0, i32 2
  %72 = load i32, ptr %71, align 4, !tbaa !302
  %73 = and i32 %72, 255
  %74 = icmp eq i32 %73, 15
  br i1 %74, label %75, label %140, !prof !295

75:                                               ; preds = %70
  %76 = load ptr, ptr %68, align 8, !tbaa !150
  %77 = getelementptr inbounds %struct.xpvio, ptr %76, i64 0, i32 4
  %78 = load i64, ptr %77, align 8, !tbaa !147
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %140, label %80, !prof !295

80:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #44
  %81 = load ptr, ptr @PL_rs, align 8, !tbaa !142
  %82 = getelementptr inbounds %struct.sv, ptr %81, i64 0, i32 2
  %83 = load i32, ptr %82, align 4, !tbaa !182
  %84 = and i32 %83, 65280
  %85 = icmp ne i32 %84, 0
  %86 = and i32 %83, 255
  %87 = icmp eq i32 %86, 8
  %88 = or i1 %85, %87
  %89 = and i32 %83, 16777471
  %90 = icmp eq i32 %89, 16777226
  %91 = or i1 %90, %88
  br i1 %91, label %92, label %119

92:                                               ; preds = %80
  %93 = and i32 %83, 1024
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr %81, align 8, !tbaa !192
  %97 = getelementptr inbounds %struct.xpv, ptr %96, i64 0, i32 2
  %98 = load i64, ptr %97, align 8, !tbaa !193
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %119, label %100

100:                                              ; preds = %95, %92
  %101 = and i32 %83, 2098176
  %102 = icmp eq i32 %101, 1024
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load ptr, ptr %81, align 8, !tbaa !192
  %105 = getelementptr inbounds %struct.xpv, ptr %104, i64 0, i32 2
  %106 = load i64, ptr %105, align 8, !tbaa !193
  store i64 %106, ptr %3, align 8, !tbaa !195
  %107 = getelementptr inbounds %struct.sv, ptr %81, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !147
  br label %111

109:                                              ; preds = %100
  %110 = call ptr @Perl_sv_2pv_flags(ptr noundef %81, ptr noundef nonnull %3, i32 noundef 34) #44
  br label %111

111:                                              ; preds = %109, %103
  %112 = phi ptr [ %108, %103 ], [ %110, %109 ]
  %113 = load i8, ptr %112, align 1, !tbaa !147
  %114 = icmp eq i8 %113, 10
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i64, ptr %3, align 8, !tbaa !195
  %117 = icmp eq i64 %116, 1
  %118 = select i1 %117, ptr @.str.3, ptr @.str.4
  br label %119

119:                                              ; preds = %80, %115, %111, %95
  %120 = phi ptr [ @.str.4, %111 ], [ @.str.4, %95 ], [ %118, %115 ], [ @.str.4, %80 ]
  %121 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !142
  %122 = load ptr, ptr @PL_argvgv, align 8, !tbaa !142
  %123 = icmp eq ptr %121, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %119
  %125 = load ptr, ptr %121, align 8, !tbaa !301
  %126 = getelementptr inbounds %struct.xpvgv, ptr %125, i64 0, i32 4
  %127 = load ptr, ptr %126, align 8, !tbaa !147
  %128 = call ptr @Perl_newSVhek(ptr noundef %127) #44
  %129 = call ptr @Perl_sv_2mortal(ptr noundef %128) #44
  br label %130

130:                                              ; preds = %119, %124
  %131 = phi ptr [ %129, %124 ], [ @PL_sv_no, %119 ]
  %132 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !142
  %133 = getelementptr inbounds %struct.gv, ptr %132, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !147
  %135 = getelementptr inbounds %struct.gp, ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !148
  %137 = load ptr, ptr %136, align 8, !tbaa !150
  %138 = getelementptr inbounds %struct.xpvio, ptr %137, i64 0, i32 4
  %139 = load i64, ptr %138, align 8, !tbaa !147
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef nonnull %18, ptr noundef nonnull @.str.2, ptr noundef %131, ptr noundef nonnull %120, i64 noundef %139) #44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #44
  br label %140

140:                                              ; preds = %56, %53, %62, %130, %75, %70, %66
  %141 = load i32, ptr @PL_phase, align 4, !tbaa !155
  %142 = icmp eq i32 %141, 6
  br i1 %142, label %143, label %144, !prof !296

143:                                              ; preds = %140
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %18, ptr noundef nonnull @.str.5, i64 noundef 26, i32 noundef 2) #44
  br label %144

144:                                              ; preds = %143, %140
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %18, ptr noundef nonnull @.str.6, i64 noundef 2, i32 noundef 2) #44
  br label %145

145:                                              ; preds = %23, %144, %9, %8
  %146 = phi ptr [ %10, %9 ], [ %0, %8 ], [ %18, %144 ], [ %18, %23 ]
  ret ptr %146
}

declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

declare void @Perl_sv_copypv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

declare void @Perl_sv_catpvf(ptr noundef, ptr noundef, ...) local_unnamed_addr #15

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #15

declare ptr @Perl_newSVhek(ptr noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_write_to_stderr(ptr noundef %0) local_unnamed_addr #3 !prof !141 {
  %2 = load ptr, ptr @PL_stderrgv, align 8, !tbaa !142
  %3 = icmp eq ptr %2, null
  br i1 %3, label %42, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gv, ptr %2, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !303
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %42, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !182
  %11 = and i32 %10, 255
  %12 = add nsw i32 %11, -9
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.gv, ptr %2, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !147
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.gp, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !148
  br label %21

21:                                               ; preds = %8, %14, %18
  %22 = phi ptr [ %20, %18 ], [ null, %14 ], [ null, %8 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !182
  %27 = and i32 %26, 8388608
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = tail call ptr @Perl_mg_find(ptr noundef nonnull %22, i32 noundef 113) #44
  br label %31

31:                                               ; preds = %24, %29
  %32 = phi ptr [ %30, %29 ], [ null, %24 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 20), align 16, !tbaa !142
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.7, i32 noundef 0) #44
  store ptr %38, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 20), align 16, !tbaa !142
  br label %39

39:                                               ; preds = %34, %37
  %40 = phi ptr [ %38, %37 ], [ %35, %34 ]
  %41 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef nonnull %22, ptr noundef nonnull %32, ptr noundef %40, i32 noundef 1030, i32 noundef 1, ptr noundef %0) #44
  br label %67

42:                                               ; preds = %31, %21, %4, %1
  %43 = load ptr, ptr @PL_stderrgv, align 8, !tbaa !142
  %44 = icmp eq ptr %43, null
  br i1 %44, label %61, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.gv, ptr %43, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !144
  %48 = and i32 %47, 255
  %49 = icmp eq i32 %48, 9
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.gv, ptr %43, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !147
  %53 = getelementptr inbounds %struct.gp, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !148
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = load ptr, ptr %54, align 8, !tbaa !150
  %58 = getelementptr inbounds %struct.xpvio, ptr %57, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !152
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %56, %50, %45, %42
  %62 = tail call ptr @Perl_PerlIO_stderr() #44
  br label %63

63:                                               ; preds = %56, %61
  %64 = phi ptr [ %62, %61 ], [ %59, %56 ]
  %65 = tail call zeroext i1 @Perl_do_print(ptr noundef %0, ptr noundef %64) #44
  %66 = tail call i32 @Perl_PerlIO_flush(ptr noundef %64) #44
  br label %67

67:                                               ; preds = %63, %39
  ret void
}

declare ptr @Perl_magic_methcall(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #15

declare ptr @Perl_newSVpv_share(ptr noundef, i32 noundef) local_unnamed_addr #15

declare ptr @Perl_PerlIO_stderr() local_unnamed_addr #15

declare zeroext i1 @Perl_do_print(ptr noundef, ptr noundef) local_unnamed_addr #15

declare i32 @Perl_PerlIO_flush(ptr noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind uwtable
define dso_local noalias noundef ptr @Perl_die_sv(ptr noundef %0) local_unnamed_addr #3 !prof !141 {
  tail call void @Perl_croak_sv(ptr noundef %0)
  ret ptr null
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_croak_sv(ptr noundef %0) local_unnamed_addr #3 !prof !141 {
  %2 = tail call ptr @Perl_mess_sv(ptr noundef %0, i1 noundef zeroext false)
  %3 = tail call fastcc ptr @S_with_queued_errors(ptr noundef %2)
  %4 = tail call fastcc zeroext i1 @S_invoke_exception_hook(ptr noundef %3, i1 noundef zeroext false)
  tail call void @Perl_die_unwind(ptr noundef %3) #44
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noalias noundef ptr @Perl_die(ptr noundef %0, ...) local_unnamed_addr #3 !prof !276 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #44
  call void @llvm.va_start(ptr nonnull %2)
  call void @Perl_vcroak(ptr noundef %0, ptr noundef nonnull %2)
  call void @llvm.va_end(ptr %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #44
  ret ptr null
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_vcroak(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !276 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4, !prof !296

4:                                                ; preds = %2
  %5 = tail call ptr @Perl_vmess(ptr noundef nonnull %0, ptr noundef %1)
  br label %20

6:                                                ; preds = %2
  %7 = load ptr, ptr @PL_errgv, align 8, !tbaa !142
  %8 = getelementptr inbounds %struct.gv, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !147
  %10 = load ptr, ptr %9, align 8, !tbaa !304
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = tail call ptr @Perl_gv_add_by_type(ptr noundef %7, i32 noundef 0) #44
  %14 = getelementptr inbounds %struct.gv, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !147
  br label %16

16:                                               ; preds = %6, %12
  %17 = phi ptr [ %15, %12 ], [ %9, %6 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !142
  %19 = tail call ptr @Perl_mess_sv(ptr noundef %18, i1 noundef zeroext false)
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi ptr [ %5, %4 ], [ %19, %16 ]
  %22 = tail call fastcc ptr @S_with_queued_errors(ptr noundef %21)
  %23 = tail call fastcc zeroext i1 @S_invoke_exception_hook(ptr noundef %22, i1 noundef zeroext false)
  tail call void @Perl_die_unwind(ptr noundef %22) #44
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @S_with_queued_errors(ptr noundef %0) unnamed_addr #3 !prof !276 !PGOFuncName !305 {
  %2 = load ptr, ptr @PL_errors, align 8, !tbaa !142
  %3 = icmp eq ptr %2, null
  br i1 %3, label %20, label %4, !prof !296

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !192
  %6 = getelementptr inbounds %struct.xpv, ptr %5, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !193
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %20, label %9, !prof !295

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !182
  %12 = and i32 %11, 2048
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  tail call void @Perl_sv_catsv_flags(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 2) #44
  %15 = load ptr, ptr @PL_errors, align 8, !tbaa !142
  %16 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef %15, i32 noundef 1538) #44
  %17 = load ptr, ptr @PL_errors, align 8, !tbaa !142
  %18 = load ptr, ptr %17, align 8, !tbaa !192
  %19 = getelementptr inbounds %struct.xpv, ptr %18, i64 0, i32 2
  store i64 0, ptr %19, align 8, !tbaa !193
  br label %20

20:                                               ; preds = %14, %9, %4, %1
  %21 = phi ptr [ %0, %9 ], [ %16, %14 ], [ %0, %4 ], [ %0, %1 ]
  ret ptr %21
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i1 @S_invoke_exception_hook(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #3 !prof !276 !PGOFuncName !306 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #44
  %5 = select i1 %1, ptr @PL_warnhook, ptr @PL_diehook, !prof !296
  %6 = load ptr, ptr %5, align 8, !tbaa !142
  %7 = icmp eq ptr %6, null
  br i1 %7, label %119, label %8, !prof !295

8:                                                ; preds = %2
  tail call void @Perl_push_scope() #44
  tail call void @Perl_save_sptr(ptr noundef nonnull %5) #44
  store ptr null, ptr %5, align 8, !tbaa !142
  %9 = call ptr @Perl_sv_2cv(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 0) #44
  call void @Perl_pop_scope() #44
  %10 = icmp eq ptr %9, null
  br i1 %10, label %119, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %9, align 8, !tbaa !307
  %13 = getelementptr inbounds %struct.xpvcv, ptr %12, i64 0, i32 13
  %14 = load i32, ptr %13, align 4, !tbaa !155
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %119

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.xpvcv, ptr %12, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !147
  %19 = icmp eq ptr %18, null
  br i1 %19, label %119, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !142
  call void @Perl_push_scope() #44
  call void @Perl_save_re_context() #44
  br i1 %1, label %22, label %23

22:                                               ; preds = %20
  call void @Perl_save_sptr(ptr noundef nonnull %5) #44
  store ptr null, ptr %5, align 8, !tbaa !142
  br label %23

23:                                               ; preds = %22, %20
  %24 = call ptr @Perl_newSVsv(ptr noundef %0) #44
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !182
  %27 = or i32 %26, 134283264
  store i32 %27, ptr %25, align 4, !tbaa !182
  call void @Perl_save_pushptr(ptr noundef %24, i32 noundef 11) #44
  %28 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !142
  %29 = getelementptr inbounds %struct.stackinfo, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !309
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #44
  %34 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !142
  %35 = getelementptr inbounds %struct.stackinfo, ptr %33, i64 0, i32 2
  store ptr %34, ptr %35, align 8, !tbaa !311
  %36 = getelementptr inbounds %struct.stackinfo, ptr %34, i64 0, i32 3
  store ptr %33, ptr %36, align 8, !tbaa !309
  br label %37

37:                                               ; preds = %32, %23
  %38 = phi ptr [ %30, %23 ], [ %33, %32 ]
  %39 = select i1 %1, i32 7, i32 8
  %40 = getelementptr inbounds %struct.stackinfo, ptr %38, i64 0, i32 6
  store i32 %39, ptr %40, align 8, !tbaa !312
  %41 = getelementptr inbounds %struct.stackinfo, ptr %38, i64 0, i32 4
  store i32 -1, ptr %41, align 8, !tbaa !313
  %42 = load ptr, ptr %38, align 8, !tbaa !314
  %43 = load ptr, ptr %42, align 8, !tbaa !315
  %44 = getelementptr inbounds %struct.xpvav, ptr %43, i64 0, i32 2
  store i64 0, ptr %44, align 8, !tbaa !317
  %45 = load ptr, ptr @PL_stack_base, align 8, !tbaa !142
  %46 = ptrtoint ptr %21 to i64
  %47 = ptrtoint ptr %45 to i64
  %48 = sub i64 %46, %47
  %49 = ashr exact i64 %48, 3
  %50 = load ptr, ptr @PL_curstack, align 8, !tbaa !142
  %51 = load ptr, ptr %50, align 8, !tbaa !315
  %52 = getelementptr inbounds %struct.xpvav, ptr %51, i64 0, i32 2
  store i64 %49, ptr %52, align 8, !tbaa !317
  %53 = getelementptr inbounds %struct.av, ptr %42, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !147
  store ptr %54, ptr @PL_stack_base, align 8, !tbaa !142
  %55 = load ptr, ptr %38, align 8, !tbaa !314
  %56 = load ptr, ptr %55, align 8, !tbaa !315
  %57 = getelementptr inbounds %struct.xpvav, ptr %56, i64 0, i32 3
  %58 = load i64, ptr %57, align 8, !tbaa !319
  %59 = getelementptr inbounds ptr, ptr %54, i64 %58
  store ptr %59, ptr @PL_stack_max, align 8, !tbaa !142
  %60 = load ptr, ptr %38, align 8, !tbaa !314
  %61 = load ptr, ptr %60, align 8, !tbaa !315
  %62 = getelementptr inbounds %struct.xpvav, ptr %61, i64 0, i32 2
  %63 = load i64, ptr %62, align 8, !tbaa !317
  %64 = getelementptr inbounds ptr, ptr %54, i64 %63
  store ptr %64, ptr @PL_stack_sp, align 8, !tbaa !142
  %65 = load ptr, ptr %38, align 8, !tbaa !314
  store ptr %65, ptr @PL_curstack, align 8, !tbaa !142
  store ptr %38, ptr @PL_curstackinfo, align 8, !tbaa !142
  %66 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !142
  %67 = getelementptr inbounds i32, ptr %66, i64 1
  store ptr %67, ptr @PL_markstack_ptr, align 8, !tbaa !142
  %68 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !142
  %69 = icmp eq ptr %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %37
  %71 = call ptr @Perl_markstack_grow() #44
  br label %72

72:                                               ; preds = %37, %70
  %73 = phi ptr [ %71, %70 ], [ %67, %37 ]
  %74 = load ptr, ptr @PL_stack_base, align 8, !tbaa !142
  %75 = ptrtoint ptr %64 to i64
  %76 = ptrtoint ptr %74 to i64
  %77 = sub i64 %75, %76
  %78 = lshr exact i64 %77, 3
  %79 = trunc i64 %78 to i32
  store i32 %79, ptr %73, align 4, !tbaa !155
  %80 = load ptr, ptr @PL_stack_max, align 8, !tbaa !142
  %81 = ptrtoint ptr %80 to i64
  %82 = sub i64 %81, %75
  %83 = icmp slt i64 %82, 8
  br i1 %83, label %84, label %86

84:                                               ; preds = %72
  %85 = call ptr @Perl_stack_grow(ptr noundef %64, ptr noundef %64, i64 noundef 1) #44
  br label %86

86:                                               ; preds = %72, %84
  %87 = phi ptr [ %85, %84 ], [ %64, %72 ]
  %88 = getelementptr inbounds ptr, ptr %87, i64 1
  store ptr %24, ptr %88, align 8, !tbaa !142
  store ptr %88, ptr @PL_stack_sp, align 8, !tbaa !142
  %89 = call i32 @Perl_call_sv(ptr noundef nonnull %9, i32 noundef 4) #44
  %90 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !142
  %91 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !142
  %92 = getelementptr inbounds %struct.stackinfo, ptr %91, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !311
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  call void @Perl_croak_popstack()
  br label %96

96:                                               ; preds = %86, %95
  %97 = load ptr, ptr @PL_stack_base, align 8, !tbaa !142
  %98 = ptrtoint ptr %90 to i64
  %99 = ptrtoint ptr %97 to i64
  %100 = sub i64 %98, %99
  %101 = ashr exact i64 %100, 3
  %102 = load ptr, ptr @PL_curstack, align 8, !tbaa !142
  %103 = load ptr, ptr %102, align 8, !tbaa !315
  %104 = getelementptr inbounds %struct.xpvav, ptr %103, i64 0, i32 2
  store i64 %101, ptr %104, align 8, !tbaa !317
  %105 = load ptr, ptr %93, align 8, !tbaa !314
  %106 = getelementptr inbounds %struct.av, ptr %105, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !147
  store ptr %107, ptr @PL_stack_base, align 8, !tbaa !142
  %108 = load ptr, ptr %93, align 8, !tbaa !314
  %109 = load ptr, ptr %108, align 8, !tbaa !315
  %110 = getelementptr inbounds %struct.xpvav, ptr %109, i64 0, i32 3
  %111 = load i64, ptr %110, align 8, !tbaa !319
  %112 = getelementptr inbounds ptr, ptr %107, i64 %111
  store ptr %112, ptr @PL_stack_max, align 8, !tbaa !142
  %113 = load ptr, ptr %93, align 8, !tbaa !314
  %114 = load ptr, ptr %113, align 8, !tbaa !315
  %115 = getelementptr inbounds %struct.xpvav, ptr %114, i64 0, i32 2
  %116 = load i64, ptr %115, align 8, !tbaa !317
  %117 = getelementptr inbounds ptr, ptr %107, i64 %116
  store ptr %117, ptr @PL_stack_sp, align 8, !tbaa !142
  %118 = load ptr, ptr %93, align 8, !tbaa !314
  store ptr %118, ptr @PL_curstack, align 8, !tbaa !142
  store ptr %93, ptr @PL_curstackinfo, align 8, !tbaa !142
  call void @Perl_pop_scope() #44
  br label %119

119:                                              ; preds = %8, %11, %16, %2, %96
  %120 = phi i1 [ true, %96 ], [ false, %2 ], [ false, %16 ], [ false, %11 ], [ false, %8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #44
  ret i1 %120
}

declare void @Perl_die_unwind(ptr noundef) local_unnamed_addr #15

declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_croak(ptr noundef %0, ...) local_unnamed_addr #3 !prof !141 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #44
  call void @llvm.va_start(ptr nonnull %2)
  call void @Perl_vcroak(ptr noundef %0, ptr noundef nonnull %2)
  call void @llvm.va_end(ptr %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #44
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_croak_no_modify() local_unnamed_addr #3 !prof !141 {
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.8, ptr noundef nonnull @PL_no_modify)
  ret void
}

declare i32 @Perl_PerlIO_fileno(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #21

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #22

declare void @Perl_my_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_croak_popstack() local_unnamed_addr #3 !prof !141 {
  %1 = load ptr, ptr @PL_stderrgv, align 8, !tbaa !142
  %2 = icmp eq ptr %1, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.gv, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !144
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 9
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.gv, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !147
  %11 = getelementptr inbounds %struct.gp, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !148
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %12, align 8, !tbaa !150
  %16 = getelementptr inbounds %struct.xpvio, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !152
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %8, %3, %0
  %20 = tail call ptr @Perl_PerlIO_stderr() #44
  br label %21

21:                                               ; preds = %14, %19
  %22 = phi ptr [ %20, %19 ], [ %17, %14 ]
  %23 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %22, ptr noundef nonnull @.str.9) #44
  tail call void @Perl_my_exit(i32 noundef 1) #44
  ret void
}

declare i32 @PerlIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_warn_sv(ptr noundef %0) local_unnamed_addr #3 !prof !141 {
  %2 = tail call ptr @Perl_mess_sv(ptr noundef %0, i1 noundef zeroext false)
  %3 = tail call fastcc zeroext i1 @S_invoke_exception_hook(ptr noundef %2, i1 noundef zeroext true)
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @Perl_write_to_stderr(ptr noundef %2)
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_vwarn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !141 {
  %3 = tail call ptr @Perl_vmess(ptr noundef %0, ptr noundef %1)
  %4 = tail call fastcc zeroext i1 @S_invoke_exception_hook(ptr noundef %3, i1 noundef zeroext true)
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @Perl_write_to_stderr(ptr noundef %3)
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_warn(ptr noundef %0, ...) local_unnamed_addr #3 !prof !141 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #44
  call void @llvm.va_start(ptr nonnull %2)
  call void @Perl_vwarn(ptr noundef %0, ptr noundef nonnull %2)
  call void @llvm.va_end(ptr %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #44
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_ck_warner_d(i32 noundef %0, ptr noundef %1, ...) local_unnamed_addr #3 !prof !141 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef %0)
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #44
  call void @llvm.va_start(ptr nonnull %3)
  call void @Perl_vwarner(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  call void @llvm.va_end(ptr %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #44
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i1 @Perl_ckwarn_d(i32 noundef %0) local_unnamed_addr #14 !prof !320 {
  %2 = load ptr, ptr @PL_curcop, align 8, !tbaa !142
  %3 = getelementptr inbounds %struct.cop, ptr %2, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !321
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6, !prof !322

6:                                                ; preds = %1
  %7 = ptrtoint ptr %4 to i64
  switch i64 %7, label %8 [
    i64 8, label %27
    i64 16, label %10
  ]

8:                                                ; preds = %6
  %9 = getelementptr inbounds i64, ptr %4, i64 1
  br label %11

10:                                               ; preds = %6
  br label %27

11:                                               ; preds = %11, %8
  %12 = phi i32 [ %0, %8 ], [ %24, %11 ]
  %13 = shl i32 %12, 1
  %14 = lshr i32 %13, 3
  %15 = and i32 %14, 63
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %9, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !147
  %19 = zext i8 %18 to i32
  %20 = and i32 %13, 6
  %21 = shl nuw nsw i32 1, %20
  %22 = and i32 %21, %19
  %23 = icmp ne i32 %22, 0
  %24 = lshr i32 %12, 8
  %25 = icmp ult i32 %12, 256
  %26 = or i1 %23, %25
  br i1 %26, label %27, label %11, !llvm.loop !323

27:                                               ; preds = %11, %10, %6, %1
  %28 = phi i1 [ true, %1 ], [ false, %10 ], [ true, %6 ], [ %23, %11 ]
  ret i1 %28
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_vwarner(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !141 {
  %4 = load ptr, ptr @PL_warnhook, align 8, !tbaa !142
  %5 = icmp eq ptr %4, @PL_sv_placeholder
  br i1 %5, label %67, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @PL_curcop, align 8, !tbaa !142
  %8 = getelementptr inbounds %struct.cop, ptr %7, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !321
  %10 = ptrtoint ptr %9 to i64
  switch i64 %10, label %11 [
    i64 0, label %82
    i64 8, label %82
    i64 16, label %82
  ]

11:                                               ; preds = %6
  %12 = getelementptr inbounds i64, ptr %9, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !147
  %14 = and i8 %13, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %67

16:                                               ; preds = %11
  %17 = shl i32 %0, 1
  %18 = lshr i32 %17, 3
  %19 = and i32 %18, 63
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %12, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !147
  %23 = zext i8 %22 to i32
  %24 = and i32 %17, 6
  %25 = or disjoint i32 %24, 1
  %26 = shl nuw nsw i32 1, %25
  %27 = and i32 %26, %23
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %16
  %30 = lshr i32 %0, 7
  %31 = lshr i32 %0, 10
  %32 = and i32 %31, 63
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %12, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !147
  %36 = zext i8 %35 to i32
  %37 = and i32 %30, 6
  %38 = or disjoint i32 %37, 1
  %39 = shl nuw nsw i32 1, %38
  %40 = and i32 %39, %36
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %29
  %43 = lshr i32 %0, 15
  %44 = lshr i32 %0, 18
  %45 = and i32 %44, 63
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %12, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !147
  %49 = zext i8 %48 to i32
  %50 = and i32 %43, 6
  %51 = or disjoint i32 %50, 1
  %52 = shl nuw nsw i32 1, %51
  %53 = and i32 %52, %49
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %42
  %56 = lshr i32 %0, 23
  %57 = lshr i32 %0, 26
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %12, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !147
  %61 = zext i8 %60 to i32
  %62 = and i32 %56, 6
  %63 = or disjoint i32 %62, 1
  %64 = shl nuw nsw i32 1, %63
  %65 = and i32 %64, %61
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %82, label %67

67:                                               ; preds = %55, %42, %29, %16, %11, %3
  %68 = load i8, ptr @PL_in_eval, align 1, !tbaa !147
  %69 = and i8 %68, 4
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = tail call ptr @Perl_vmess(ptr noundef %1, ptr noundef %2)
  %73 = load ptr, ptr @PL_parser, align 8, !tbaa !142
  %74 = icmp eq ptr %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.yy_parser, ptr %73, i64 0, i32 44
  %77 = load i8, ptr %76, align 1, !tbaa !324
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  tail call void @Perl_qerror(ptr noundef %72) #44
  br label %83

80:                                               ; preds = %75, %71
  %81 = tail call fastcc zeroext i1 @S_invoke_exception_hook(ptr noundef %72, i1 noundef zeroext false)
  tail call void @Perl_die_unwind(ptr noundef %72) #44
  br label %83

82:                                               ; preds = %55, %6, %6, %6, %67
  tail call void @Perl_vwarn(ptr noundef %1, ptr noundef %2)
  br label %83

83:                                               ; preds = %79, %80, %82
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_ck_warner(i32 noundef %0, ptr noundef %1, ...) local_unnamed_addr #3 !prof !141 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = tail call zeroext i1 @Perl_ckwarn(i32 noundef %0)
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #44
  call void @llvm.va_start(ptr nonnull %3)
  call void @Perl_vwarner(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  call void @llvm.va_end(ptr %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #44
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i1 @Perl_ckwarn(i32 noundef %0) local_unnamed_addr #23 !prof !327 {
  %2 = load ptr, ptr @PL_curcop, align 8, !tbaa !142
  %3 = getelementptr inbounds %struct.cop, ptr %2, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !321
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10, !prof !328

6:                                                ; preds = %1
  %7 = load i8, ptr @PL_dowarn, align 1, !tbaa !147
  %8 = and i8 %7, 1
  %9 = icmp ne i8 %8, 0
  br label %31

10:                                               ; preds = %1
  %11 = ptrtoint ptr %4 to i64
  switch i64 %11, label %12 [
    i64 8, label %31
    i64 16, label %14
  ], !prof !329

12:                                               ; preds = %10
  %13 = getelementptr inbounds i64, ptr %4, i64 1
  br label %15

14:                                               ; preds = %10
  br label %31

15:                                               ; preds = %15, %12
  %16 = phi i32 [ %0, %12 ], [ %28, %15 ]
  %17 = shl i32 %16, 1
  %18 = lshr i32 %17, 3
  %19 = and i32 %18, 63
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %13, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !147
  %23 = zext i8 %22 to i32
  %24 = and i32 %17, 6
  %25 = shl nuw nsw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp ne i32 %26, 0
  %28 = lshr i32 %16, 8
  %29 = icmp ult i32 %16, 256
  %30 = or i1 %27, %29
  br i1 %30, label %31, label %15, !prof !330, !llvm.loop !323

31:                                               ; preds = %15, %14, %10, %6
  %32 = phi i1 [ %9, %6 ], [ false, %14 ], [ true, %10 ], [ %27, %15 ]
  ret i1 %32
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_warner(i32 noundef %0, ptr noundef %1, ...) local_unnamed_addr #3 !prof !141 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #44
  call void @llvm.va_start(ptr nonnull %3)
  call void @Perl_vwarner(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  call void @llvm.va_end(ptr %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #44
  ret void
}

declare void @Perl_qerror(ptr noundef) local_unnamed_addr #15

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define dso_local noalias noundef ptr @Perl_new_warnings_bitfield(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #24 !prof !331 {
  %4 = tail call i64 @llvm.umax.i64(i64 %2, i64 17)
  %5 = add i64 %4, 8
  %6 = ptrtoint ptr %0 to i64
  switch i64 %6, label %9 [
    i64 16, label %7
    i64 8, label %7
    i64 0, label %7
  ], !prof !332

7:                                                ; preds = %3, %3, %3
  %8 = tail call noalias ptr @malloc(i64 noundef %5) #43
  br label %11

9:                                                ; preds = %3
  %10 = tail call ptr @realloc(ptr noundef %0, i64 noundef %5) #46
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %8, %7 ], [ %10, %9 ]
  store i64 %2, ptr %12, align 8, !tbaa !195
  %13 = getelementptr inbounds i64, ptr %12, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %13, ptr align 1 %1, i64 %2, i1 false), !prof !333
  %14 = icmp ult i64 %2, 17
  br i1 %14, label %15, label %18, !prof !334

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %13, i64 %2
  %17 = sub nuw nsw i64 17, %2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %16, i8 0, i64 %17, i1 false)
  br label %18

18:                                               ; preds = %15, %11
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_my_setenv(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #7 !prof !269 {
  %3 = load i8, ptr @PL_use_safe_putenv, align 1, !tbaa !135, !range !139, !noundef !140
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %167, !prof !167

5:                                                ; preds = %2
  %6 = load ptr, ptr @environ, align 8, !tbaa !142
  %7 = load ptr, ptr %6, align 8, !tbaa !142
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9, !prof !287

9:                                                ; preds = %5
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #48
  %11 = shl i64 %10, 32
  %12 = ashr exact i64 %11, 32
  br label %13

13:                                               ; preds = %9, %22
  %14 = phi i64 [ 0, %9 ], [ %23, %22 ]
  %15 = phi ptr [ %7, %9 ], [ %25, %22 ]
  %16 = tail call i32 @strncmp(ptr noundef nonnull %15, ptr noundef %0, i64 noundef %12) #48
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22, !prof !292

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, ptr %15, i64 %12
  %20 = load i8, ptr %19, align 1, !tbaa !147
  %21 = icmp eq i8 %20, 61
  br i1 %21, label %27, label %22

22:                                               ; preds = %13, %18
  %23 = add nuw i64 %14, 1
  %24 = getelementptr inbounds ptr, ptr %6, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !142
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %13, !prof !335, !llvm.loop !336

27:                                               ; preds = %18, %22
  %28 = phi i64 [ %23, %22 ], [ %14, %18 ]
  %29 = trunc i64 %28 to i32
  br label %30

30:                                               ; preds = %27, %5
  %31 = phi i32 [ 0, %5 ], [ %29, %27 ]
  %32 = phi i64 [ 0, %5 ], [ %28, %27 ]
  %33 = load ptr, ptr @PL_origenviron, align 8, !tbaa !142
  %34 = icmp eq ptr %6, %33
  br i1 %34, label %35, label %88, !prof !167

35:                                               ; preds = %30
  %36 = zext i32 %31 to i64
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi i32 [ %31, %35 ], [ %44, %37 ]
  %39 = phi i64 [ %36, %35 ], [ %43, %37 ]
  %40 = getelementptr inbounds ptr, ptr %6, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !142
  %42 = icmp eq ptr %41, null
  %43 = add nuw i64 %39, 1
  %44 = add i32 %38, 1
  br i1 %42, label %45, label %37, !prof !167, !llvm.loop !337

45:                                               ; preds = %37
  %46 = shl i64 %39, 3
  %47 = add i64 %46, 16
  %48 = and i64 %47, 34359738360
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1)
  %50 = tail call noalias ptr @malloc(i64 noundef %49) #43
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %56, !prof !270

52:                                               ; preds = %45
  %53 = load i8, ptr @PL_nomemok, align 1, !tbaa !135, !range !139, !noundef !140
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  tail call void @Perl_croak_no_mem()
  br label %56

56:                                               ; preds = %45, %52, %55
  %57 = phi ptr [ null, %55 ], [ %50, %45 ], [ null, %52 ]
  %58 = and i64 %39, 4294967295
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %86, label %60, !prof !287

60:                                               ; preds = %56
  %61 = zext i32 %38 to i64
  br label %62

62:                                               ; preds = %60, %78
  %63 = phi i64 [ 0, %60 ], [ %84, %78 ]
  %64 = load ptr, ptr @environ, align 8, !tbaa !142
  %65 = getelementptr inbounds ptr, ptr %64, i64 %63
  %66 = load ptr, ptr %65, align 8, !tbaa !142
  %67 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %66) #48
  %68 = shl i64 %67, 32
  %69 = add i64 %68, 4294967296
  %70 = ashr exact i64 %69, 32
  %71 = tail call i64 @llvm.umax.i64(i64 %70, i64 1)
  %72 = tail call noalias ptr @malloc(i64 noundef %71) #43
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %78, !prof !292

74:                                               ; preds = %62
  %75 = load i8, ptr @PL_nomemok, align 1, !tbaa !135, !range !139, !noundef !140
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  tail call void @Perl_croak_no_mem()
  br label %78

78:                                               ; preds = %62, %74, %77
  %79 = phi ptr [ null, %77 ], [ %72, %62 ], [ null, %74 ]
  %80 = getelementptr inbounds ptr, ptr %57, i64 %63
  store ptr %79, ptr %80, align 8, !tbaa !142
  %81 = load ptr, ptr @environ, align 8, !tbaa !142
  %82 = getelementptr inbounds ptr, ptr %81, i64 %63
  %83 = load ptr, ptr %82, align 8, !tbaa !142
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %79, ptr align 1 %83, i64 %70, i1 false), !prof !338
  %84 = add nuw nsw i64 %63, 1
  %85 = icmp eq i64 %84, %61
  br i1 %85, label %86, label %62, !prof !335, !llvm.loop !339

86:                                               ; preds = %78, %56
  %87 = getelementptr inbounds ptr, ptr %57, i64 %39
  store ptr null, ptr %87, align 8, !tbaa !142
  store ptr %57, ptr @environ, align 8, !tbaa !142
  br label %88

88:                                               ; preds = %86, %30
  %89 = icmp eq ptr %1, null
  %90 = load ptr, ptr @environ, align 8, !tbaa !142
  %91 = getelementptr inbounds ptr, ptr %90, i64 %32
  %92 = load ptr, ptr %91, align 8, !tbaa !142
  %93 = icmp eq ptr %92, null
  br i1 %89, label %94, label %115, !prof !167

94:                                               ; preds = %88
  br i1 %93, label %96, label %95, !prof !167

95:                                               ; preds = %94
  tail call void @free(ptr noundef %92) #44
  br label %96

96:                                               ; preds = %94, %95
  %97 = load ptr, ptr @environ, align 8, !tbaa !142
  %98 = zext nneg i32 %31 to i64
  %99 = getelementptr inbounds ptr, ptr %97, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !142
  %101 = icmp eq ptr %100, null
  br i1 %101, label %199, label %102, !prof !167

102:                                              ; preds = %96
  %103 = zext i32 %31 to i64
  br label %104

104:                                              ; preds = %102, %104
  %105 = phi i64 [ %103, %102 ], [ %108, %104 ]
  %106 = phi ptr [ %99, %102 ], [ %112, %104 ]
  %107 = phi ptr [ %97, %102 ], [ %111, %104 ]
  %108 = add nuw i64 %105, 1
  %109 = getelementptr inbounds ptr, ptr %107, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !142
  store ptr %110, ptr %106, align 8, !tbaa !142
  %111 = load ptr, ptr @environ, align 8, !tbaa !142
  %112 = getelementptr inbounds ptr, ptr %111, i64 %108
  %113 = load ptr, ptr %112, align 8, !tbaa !142
  %114 = icmp eq ptr %113, null
  br i1 %114, label %199, label %104, !prof !167, !llvm.loop !340

115:                                              ; preds = %88
  br i1 %93, label %116, label %123

116:                                              ; preds = %115
  %117 = add nuw nsw i32 %31, 2
  %118 = zext nneg i32 %117 to i64
  %119 = shl nuw nsw i64 %118, 3
  %120 = tail call ptr @Perl_safesysrealloc(ptr noundef %90, i64 noundef %119)
  store ptr %120, ptr @environ, align 8, !tbaa !142
  %121 = getelementptr ptr, ptr %120, i64 %32
  %122 = getelementptr ptr, ptr %121, i64 1
  store ptr null, ptr %122, align 8, !tbaa !142
  br label %124

123:                                              ; preds = %115
  tail call void @free(ptr noundef %92) #44
  br label %124

124:                                              ; preds = %123, %116
  %125 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #48
  %126 = trunc i64 %125 to i32
  %127 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #48
  %128 = trunc i64 %127 to i32
  %129 = add i64 %127, %125
  %130 = shl i64 %129, 32
  %131 = add i64 %130, 8589934592
  %132 = ashr exact i64 %131, 32
  %133 = tail call i64 @llvm.umax.i64(i64 %132, i64 1)
  %134 = tail call noalias ptr @malloc(i64 noundef %133) #43
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %124
  %137 = load i8, ptr @PL_nomemok, align 1, !tbaa !135, !range !139, !noundef !140
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  tail call void @Perl_croak_no_mem()
  br label %140

140:                                              ; preds = %124, %136, %139
  %141 = phi ptr [ null, %139 ], [ %134, %124 ], [ null, %136 ]
  %142 = load ptr, ptr @environ, align 8, !tbaa !142
  %143 = getelementptr inbounds ptr, ptr %142, i64 %32
  store ptr %141, ptr %143, align 8, !tbaa !142
  %144 = load ptr, ptr @environ, align 8, !tbaa !142
  %145 = getelementptr inbounds ptr, ptr %144, i64 %32
  %146 = load ptr, ptr %145, align 8, !tbaa !142
  %147 = shl i64 %125, 32
  %148 = ashr exact i64 %147, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %146, ptr align 1 %0, i64 %148, i1 false)
  %149 = load ptr, ptr @environ, align 8, !tbaa !142
  %150 = getelementptr inbounds ptr, ptr %149, i64 %32
  %151 = load ptr, ptr %150, align 8, !tbaa !142
  %152 = getelementptr inbounds i8, ptr %151, i64 %148
  store i8 61, ptr %152, align 1, !tbaa !147
  %153 = load ptr, ptr @environ, align 8, !tbaa !142
  %154 = getelementptr inbounds ptr, ptr %153, i64 %32
  %155 = load ptr, ptr %154, align 8, !tbaa !142
  %156 = add nsw i32 %126, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, ptr %155, i64 %157
  %159 = shl i64 %127, 32
  %160 = ashr exact i64 %159, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %158, ptr nonnull align 1 %1, i64 %160, i1 false)
  %161 = load ptr, ptr @environ, align 8, !tbaa !142
  %162 = getelementptr inbounds ptr, ptr %161, i64 %32
  %163 = load ptr, ptr %162, align 8, !tbaa !142
  %164 = add nsw i32 %156, %128
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, ptr %163, i64 %165
  store i8 0, ptr %166, align 1, !tbaa !147
  br label %199

167:                                              ; preds = %2
  %168 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #48
  %169 = trunc i64 %168 to i32
  %170 = icmp eq ptr %1, null
  %171 = select i1 %170, ptr @.str.10, ptr %1
  %172 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %171) #48
  %173 = trunc i64 %172 to i32
  %174 = add i64 %172, %168
  %175 = shl i64 %174, 32
  %176 = add i64 %175, 8589934592
  %177 = ashr exact i64 %176, 32
  %178 = tail call i64 @llvm.umax.i64(i64 %177, i64 1)
  %179 = tail call noalias ptr @malloc(i64 noundef %178) #43
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %167
  %182 = load i8, ptr @PL_nomemok, align 1, !tbaa !135, !range !139, !noundef !140
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  tail call void @Perl_croak_no_mem()
  br label %185

185:                                              ; preds = %167, %181, %184
  %186 = phi ptr [ null, %184 ], [ %179, %167 ], [ null, %181 ]
  %187 = shl i64 %168, 32
  %188 = ashr exact i64 %187, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %186, ptr align 1 %0, i64 %188, i1 false)
  %189 = getelementptr inbounds i8, ptr %186, i64 %188
  store i8 61, ptr %189, align 1, !tbaa !147
  %190 = add nsw i32 %169, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, ptr %186, i64 %191
  %193 = shl i64 %172, 32
  %194 = ashr exact i64 %193, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %192, ptr nonnull align 1 %171, i64 %194, i1 false)
  %195 = add nsw i32 %190, %173
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, ptr %186, i64 %196
  store i8 0, ptr %197, align 1, !tbaa !147
  %198 = tail call i32 @putenv(ptr noundef %186) #44
  br label %199

199:                                              ; preds = %104, %96, %140, %185
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @putenv(ptr noundef) local_unnamed_addr #25

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_my_popen_list(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !141 {
  %4 = alloca [2 x i32], align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #44
  %8 = tail call i32 @Perl_PerlIO_flush(ptr noundef null) #44
  %9 = load i8, ptr %0, align 1, !tbaa !147
  %10 = icmp eq i8 %9, 119
  %11 = xor i1 %10, true
  %12 = load i8, ptr @PL_tainting, align 1, !tbaa !135, !range !139, !noundef !140
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  tail call void @Perl_taint_env() #44
  tail call void @Perl_taint_proper(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #44
  br label %15

15:                                               ; preds = %14, %3
  %16 = call i32 @pipe(ptr noundef nonnull %4) #44
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %171, label %18

18:                                               ; preds = %15
  %19 = call i32 @pipe(ptr noundef nonnull %5) #44
  %20 = icmp sgt i32 %19, -1
  %21 = zext i1 %20 to i32
  %22 = call i32 @fork() #44
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %18
  %25 = tail call ptr @__errno_location() #45
  br label %26

26:                                               ; preds = %24, %44
  %27 = load i32, ptr %25, align 4, !tbaa !155
  %28 = icmp eq i32 %27, 11
  br i1 %28, label %44, label %29

29:                                               ; preds = %26
  %30 = zext i1 %10 to i64
  %31 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !155
  %33 = call i32 @close(i32 noundef %32) #44
  %34 = zext i1 %11 to i64
  %35 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !155
  %37 = call i32 @close(i32 noundef %36) #44
  br i1 %20, label %38, label %171

38:                                               ; preds = %29
  %39 = load i32, ptr %5, align 4, !tbaa !155
  %40 = call i32 @close(i32 noundef %39) #44
  %41 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  %42 = load i32, ptr %41, align 4, !tbaa !155
  %43 = call i32 @close(i32 noundef %42) #44
  br label %171

44:                                               ; preds = %26
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 10, ptr noundef nonnull @.str.13)
  %45 = call i32 @sleep(i32 noundef 5) #44
  %46 = call i32 @fork() #44
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %26, label %48, !llvm.loop !341

48:                                               ; preds = %44, %18
  %49 = phi i32 [ %22, %18 ], [ %46, %44 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %93

51:                                               ; preds = %48
  br i1 %20, label %52, label %59

52:                                               ; preds = %51
  %53 = load i32, ptr %5, align 4, !tbaa !155
  %54 = call i32 @close(i32 noundef %53) #44
  %55 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  %56 = load i32, ptr %55, align 4, !tbaa !155
  %57 = call i32 (i32, i32, ...) @fcntl64(i32 noundef %56, i32 noundef 2, i32 noundef 1) #44
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %171, label %59

59:                                               ; preds = %52, %51
  %60 = zext i1 %11 to i64
  %61 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !155
  %63 = load i8, ptr %0, align 1, !tbaa !147
  %64 = icmp eq i8 %63, 114
  %65 = zext i1 %64 to i32
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %79, label %67

67:                                               ; preds = %59
  %68 = call i32 @close(i32 noundef %65) #44
  %69 = call i32 (i32, i32, ...) @fcntl64(i32 noundef %62, i32 noundef 0, i32 noundef %65) #44
  %70 = load i32, ptr %61, align 4, !tbaa !155
  %71 = call i32 @close(i32 noundef %70) #44
  %72 = zext i1 %10 to i64
  %73 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !155
  %75 = load i8, ptr %0, align 1, !tbaa !147
  %76 = icmp eq i8 %75, 114
  %77 = zext i1 %76 to i32
  %78 = icmp eq i32 %74, %77
  br i1 %78, label %86, label %83

79:                                               ; preds = %59
  %80 = zext i1 %10 to i64
  %81 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !155
  br label %83

83:                                               ; preds = %67, %79
  %84 = phi i32 [ %82, %79 ], [ %74, %67 ]
  %85 = call i32 @close(i32 noundef %84) #44
  br label %86

86:                                               ; preds = %83, %67
  %87 = getelementptr inbounds ptr, ptr %2, i64 -1
  %88 = sext i32 %1 to i64
  %89 = getelementptr inbounds ptr, ptr %87, i64 %88
  %90 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  %91 = load i32, ptr %90, align 4, !tbaa !155
  %92 = call zeroext i1 @Perl_do_aexec5(ptr noundef null, ptr noundef nonnull %87, ptr noundef nonnull %89, i32 noundef %91, i32 noundef %21) #44
  call void @_exit(i32 noundef 1) #49
  unreachable

93:                                               ; preds = %48
  call void @Perl_do_execfree() #44
  br i1 %20, label %94, label %98

94:                                               ; preds = %93
  %95 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  %96 = load i32, ptr %95, align 4, !tbaa !155
  %97 = call i32 @close(i32 noundef %96) #44
  br label %98

98:                                               ; preds = %94, %93
  %99 = zext i1 %11 to i64
  %100 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !155
  %102 = zext i1 %10 to i64
  %103 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !155
  %105 = icmp slt i32 %101, %104
  %106 = call i32 @close(i32 noundef %101) #44
  br i1 %105, label %107, label %112

107:                                              ; preds = %98
  %108 = call i32 (i32, i32, ...) @fcntl64(i32 noundef %104, i32 noundef 0, i32 noundef %101) #44
  %109 = load i32, ptr %103, align 4, !tbaa !155
  %110 = call i32 @close(i32 noundef %109) #44
  %111 = load i32, ptr %100, align 4, !tbaa !155
  store i32 %111, ptr %103, align 4, !tbaa !155
  br label %112

112:                                              ; preds = %98, %107
  %113 = load ptr, ptr @PL_fdpid, align 8, !tbaa !142
  %114 = load i32, ptr %103, align 4, !tbaa !155
  %115 = sext i32 %114 to i64
  %116 = call ptr @Perl_av_fetch(ptr noundef %113, i64 noundef %115, i32 noundef 1) #44
  %117 = load ptr, ptr %116, align 8, !tbaa !142
  %118 = getelementptr inbounds %struct.sv, ptr %117, i64 0, i32 2
  %119 = load i32, ptr %118, align 4, !tbaa !182
  %120 = and i32 %119, 255
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %112
  call void @Perl_sv_upgrade(ptr noundef %117, i32 noundef 1) #44
  br label %123

123:                                              ; preds = %122, %112
  %124 = zext nneg i32 %49 to i64
  %125 = load ptr, ptr %117, align 8, !tbaa !192
  %126 = getelementptr inbounds %struct.xpviv, ptr %125, i64 0, i32 4
  store i64 %124, ptr %126, align 8, !tbaa !147
  store i32 %49, ptr @PL_forkprocess, align 4, !tbaa !155
  br i1 %20, label %127, label %162

127:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #44
  br label %132

128:                                              ; preds = %132
  %129 = trunc i64 %138 to i32
  %130 = add i32 %133, %129
  %131 = icmp ult i32 %130, 4
  br i1 %131, label %132, label %140, !llvm.loop !342

132:                                              ; preds = %127, %128
  %133 = phi i32 [ 0, %127 ], [ %130, %128 ]
  %134 = zext nneg i32 %133 to i64
  %135 = load i32, ptr %5, align 4, !tbaa !155
  %136 = getelementptr inbounds i8, ptr %6, i64 %134
  %137 = sub nuw nsw i64 4, %134
  %138 = call i64 @read(i32 noundef %135, ptr noundef nonnull %136, i64 noundef %137) #44
  %139 = icmp slt i64 %138, 1
  br i1 %139, label %140, label %128

140:                                              ; preds = %132, %128
  %141 = phi i32 [ %133, %132 ], [ %130, %128 ]
  %142 = load i32, ptr %5, align 4, !tbaa !155
  %143 = call i32 @close(i32 noundef %142) #44
  %144 = icmp eq i32 %141, 0
  br i1 %144, label %161, label %145

145:                                              ; preds = %140
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #44
  %146 = load i32, ptr %103, align 4, !tbaa !155
  %147 = call i32 @close(i32 noundef %146) #44
  %148 = icmp eq i32 %141, 4
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.14, i32 noundef %141)
  br label %150

150:                                              ; preds = %149, %145
  br label %151

151:                                              ; preds = %150, %154
  %152 = call i32 @Perl_wait4pid(i32 noundef %49, ptr noundef nonnull %7, i32 noundef 0)
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = tail call ptr @__errno_location() #45
  %156 = load i32, ptr %155, align 4, !tbaa !155
  %157 = icmp eq i32 %156, 4
  br i1 %157, label %151, label %158, !llvm.loop !343

158:                                              ; preds = %154, %151
  %159 = load i32, ptr %6, align 4, !tbaa !155
  %160 = tail call ptr @__errno_location() #45
  store i32 %159, ptr %160, align 4, !tbaa !155
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #44
  br label %171

161:                                              ; preds = %140
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #44
  br label %162

162:                                              ; preds = %161, %123
  %163 = phi i32 [ %21, %123 ], [ 0, %161 ]
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = load i32, ptr %5, align 4, !tbaa !155
  %167 = call i32 @close(i32 noundef %166) #44
  br label %168

168:                                              ; preds = %165, %162
  %169 = load i32, ptr %103, align 4, !tbaa !155
  %170 = call ptr @PerlIO_fdopen(i32 noundef %169, ptr noundef nonnull %0) #44
  br label %171

171:                                              ; preds = %158, %52, %29, %38, %15, %168
  %172 = phi ptr [ %170, %168 ], [ null, %158 ], [ null, %15 ], [ null, %38 ], [ null, %29 ], [ null, %52 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #44
  ret ptr %172
}

declare void @Perl_taint_env() local_unnamed_addr #15

declare void @Perl_taint_proper(ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @pipe(ptr noundef) local_unnamed_addr #25

; Function Attrs: cold nofree nounwind uwtable
define dso_local i32 @Perl_my_fork() local_unnamed_addr #26 !prof !141 {
  %1 = tail call i32 @fork() #44
  ret i32 %1
}

declare i32 @close(i32 noundef) local_unnamed_addr #15

declare i32 @sleep(i32 noundef) local_unnamed_addr #15

declare i32 @fcntl64(i32 noundef, i32 noundef, ...) local_unnamed_addr #15

; Function Attrs: cold nounwind uwtable
define dso_local i32 @dup2(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 !prof !141 {
  %3 = icmp eq i32 %0, %1
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @close(i32 noundef %1) #44
  %6 = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %0, i32 noundef 0, i32 noundef %1) #44
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi i32 [ %6, %4 ], [ %0, %2 ]
  ret i32 %8
}

declare zeroext i1 @Perl_do_aexec5(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #27

declare void @Perl_do_execfree() local_unnamed_addr #15

declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_wait4pid(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !141 {
  %4 = tail call i32 @waitpid(i32 noundef %0, ptr noundef %1, i32 noundef %2) #44
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #45
  %8 = load i32, ptr %7, align 4, !tbaa !155
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, ptr @PL_sig_pending, align 4, !tbaa !155
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr @PL_signalhook, align 8, !tbaa !142
  tail call void %14() #44
  br label %15

15:                                               ; preds = %10, %13
  store i32 4, ptr %7, align 4, !tbaa !155
  br label %16

16:                                               ; preds = %15, %6, %3
  ret i32 %4
}

declare ptr @PerlIO_fdopen(i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_my_popen(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !141 {
  %3 = alloca [2 x i32], align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #44
  %7 = load i8, ptr %0, align 1, !tbaa !147
  %8 = icmp eq i8 %7, 45
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8, ptr %0, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !147
  %12 = icmp eq i8 %11, 0
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i1 [ false, %2 ], [ %12, %9 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #44
  %15 = tail call i32 @Perl_PerlIO_flush(ptr noundef null) #44
  %16 = load i8, ptr %1, align 1, !tbaa !147
  %17 = icmp eq i8 %16, 119
  %18 = xor i1 %17, true
  %19 = load i8, ptr @PL_tainting, align 1, !range !139
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %14, i1 true, i1 %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  tail call void @Perl_taint_env() #44
  tail call void @Perl_taint_proper(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #44
  br label %23

23:                                               ; preds = %22, %13
  %24 = call i32 @pipe(ptr noundef nonnull %3) #44
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %187, label %26

26:                                               ; preds = %23
  br i1 %14, label %31, label %27

27:                                               ; preds = %26
  %28 = call i32 @pipe(ptr noundef nonnull %4) #44
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %30, %27, %26
  %32 = phi i1 [ true, %30 ], [ false, %27 ], [ false, %26 ]
  %33 = phi i1 [ false, %30 ], [ true, %27 ], [ true, %26 ]
  %34 = phi i32 [ 1, %30 ], [ 0, %27 ], [ 0, %26 ]
  %35 = call i32 @fork() #44
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %31
  %38 = tail call ptr @__errno_location() #45
  br label %39

39:                                               ; preds = %37, %61
  %40 = load i32, ptr %38, align 4, !tbaa !155
  %41 = icmp eq i32 %40, 11
  br i1 %41, label %61, label %42

42:                                               ; preds = %39
  %43 = zext i1 %17 to i64
  %44 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !155
  %46 = call i32 @close(i32 noundef %45) #44
  %47 = zext i1 %18 to i64
  %48 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !155
  %50 = call i32 @close(i32 noundef %49) #44
  br i1 %33, label %57, label %51

51:                                               ; preds = %42
  %52 = load i32, ptr %4, align 4, !tbaa !155
  %53 = call i32 @close(i32 noundef %52) #44
  %54 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  %55 = load i32, ptr %54, align 4, !tbaa !155
  %56 = call i32 @close(i32 noundef %55) #44
  br label %57

57:                                               ; preds = %51, %42
  br i1 %14, label %58, label %187

58:                                               ; preds = %57
  %59 = load i32, ptr %38, align 4, !tbaa !155
  %60 = call ptr @strerror(i32 noundef %59) #44
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.15, ptr noundef %60)
  br label %187

61:                                               ; preds = %39
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 10, ptr noundef nonnull @.str.13)
  %62 = call i32 @sleep(i32 noundef 5) #44
  %63 = call i32 @fork() #44
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %39, label %65, !llvm.loop !344

65:                                               ; preds = %61, %31
  %66 = phi i32 [ %35, %31 ], [ %63, %61 ]
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %109

68:                                               ; preds = %65
  br i1 %33, label %76, label %69

69:                                               ; preds = %68
  %70 = load i32, ptr %4, align 4, !tbaa !155
  %71 = call i32 @close(i32 noundef %70) #44
  %72 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  %73 = load i32, ptr %72, align 4, !tbaa !155
  %74 = call i32 (i32, i32, ...) @fcntl64(i32 noundef %73, i32 noundef 2, i32 noundef 1) #44
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %187, label %76

76:                                               ; preds = %69, %68
  %77 = zext i1 %18 to i64
  %78 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !155
  %80 = load i8, ptr %1, align 1, !tbaa !147
  %81 = icmp eq i8 %80, 114
  %82 = zext i1 %81 to i32
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %96, label %84

84:                                               ; preds = %76
  %85 = call i32 @close(i32 noundef %82) #44
  %86 = call i32 (i32, i32, ...) @fcntl64(i32 noundef %79, i32 noundef 0, i32 noundef %82) #44
  %87 = load i32, ptr %78, align 4, !tbaa !155
  %88 = call i32 @close(i32 noundef %87) #44
  %89 = zext i1 %17 to i64
  %90 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !155
  %92 = load i8, ptr %1, align 1, !tbaa !147
  %93 = icmp eq i8 %92, 114
  %94 = zext i1 %93 to i32
  %95 = icmp eq i32 %91, %94
  br i1 %95, label %103, label %100

96:                                               ; preds = %76
  %97 = zext i1 %17 to i64
  %98 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !155
  br label %100

100:                                              ; preds = %84, %96
  %101 = phi i32 [ %99, %96 ], [ %91, %84 ]
  %102 = call i32 @close(i32 noundef %101) #44
  br label %103

103:                                              ; preds = %100, %84
  br i1 %14, label %108, label %104

104:                                              ; preds = %103
  %105 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  %106 = load i32, ptr %105, align 4, !tbaa !155
  %107 = call zeroext i1 @Perl_do_exec3(ptr noundef nonnull %0, i32 noundef %106, i32 noundef %34) #44
  call void @_exit(i32 noundef 1) #49
  unreachable

108:                                              ; preds = %103
  store i32 0, ptr @PL_forkprocess, align 4, !tbaa !155
  br label %187

109:                                              ; preds = %65
  call void @Perl_do_execfree() #44
  br i1 %32, label %110, label %114

110:                                              ; preds = %109
  %111 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  %112 = load i32, ptr %111, align 4, !tbaa !155
  %113 = call i32 @close(i32 noundef %112) #44
  br label %114

114:                                              ; preds = %110, %109
  %115 = zext i1 %18 to i64
  %116 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !155
  %118 = zext i1 %17 to i64
  %119 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !155
  %121 = icmp slt i32 %117, %120
  %122 = call i32 @close(i32 noundef %117) #44
  br i1 %121, label %123, label %128

123:                                              ; preds = %114
  %124 = call i32 (i32, i32, ...) @fcntl64(i32 noundef %120, i32 noundef 0, i32 noundef %117) #44
  %125 = load i32, ptr %119, align 4, !tbaa !155
  %126 = call i32 @close(i32 noundef %125) #44
  %127 = load i32, ptr %116, align 4, !tbaa !155
  store i32 %127, ptr %119, align 4, !tbaa !155
  br label %128

128:                                              ; preds = %114, %123
  %129 = load ptr, ptr @PL_fdpid, align 8, !tbaa !142
  %130 = load i32, ptr %119, align 4, !tbaa !155
  %131 = sext i32 %130 to i64
  %132 = call ptr @Perl_av_fetch(ptr noundef %129, i64 noundef %131, i32 noundef 1) #44
  %133 = load ptr, ptr %132, align 8, !tbaa !142
  %134 = getelementptr inbounds %struct.sv, ptr %133, i64 0, i32 2
  %135 = load i32, ptr %134, align 4, !tbaa !182
  %136 = and i32 %135, 255
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %128
  call void @Perl_sv_upgrade(ptr noundef %133, i32 noundef 1) #44
  br label %139

139:                                              ; preds = %138, %128
  %140 = zext nneg i32 %66 to i64
  %141 = load ptr, ptr %133, align 8, !tbaa !192
  %142 = getelementptr inbounds %struct.xpviv, ptr %141, i64 0, i32 4
  store i64 %140, ptr %142, align 8, !tbaa !147
  store i32 %66, ptr @PL_forkprocess, align 4, !tbaa !155
  br i1 %32, label %143, label %178

143:                                              ; preds = %139
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #44
  br label %148

144:                                              ; preds = %148
  %145 = trunc i64 %154 to i32
  %146 = add i32 %149, %145
  %147 = icmp ult i32 %146, 4
  br i1 %147, label %148, label %156, !llvm.loop !345

148:                                              ; preds = %143, %144
  %149 = phi i32 [ 0, %143 ], [ %146, %144 ]
  %150 = zext nneg i32 %149 to i64
  %151 = load i32, ptr %4, align 4, !tbaa !155
  %152 = getelementptr inbounds i8, ptr %5, i64 %150
  %153 = sub nuw nsw i64 4, %150
  %154 = call i64 @read(i32 noundef %151, ptr noundef nonnull %152, i64 noundef %153) #44
  %155 = icmp slt i64 %154, 1
  br i1 %155, label %156, label %144

156:                                              ; preds = %148, %144
  %157 = phi i32 [ %149, %148 ], [ %146, %144 ]
  %158 = load i32, ptr %4, align 4, !tbaa !155
  %159 = call i32 @close(i32 noundef %158) #44
  %160 = icmp eq i32 %157, 0
  br i1 %160, label %177, label %161

161:                                              ; preds = %156
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #44
  %162 = load i32, ptr %119, align 4, !tbaa !155
  %163 = call i32 @close(i32 noundef %162) #44
  %164 = icmp eq i32 %157, 4
  br i1 %164, label %166, label %165

165:                                              ; preds = %161
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.14, i32 noundef %157)
  br label %166

166:                                              ; preds = %165, %161
  br label %167

167:                                              ; preds = %166, %170
  %168 = call i32 @Perl_wait4pid(i32 noundef %66, ptr noundef nonnull %6, i32 noundef 0)
  %169 = icmp eq i32 %168, -1
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = tail call ptr @__errno_location() #45
  %172 = load i32, ptr %171, align 4, !tbaa !155
  %173 = icmp eq i32 %172, 4
  br i1 %173, label %167, label %174, !llvm.loop !346

174:                                              ; preds = %170, %167
  %175 = load i32, ptr %5, align 4, !tbaa !155
  %176 = tail call ptr @__errno_location() #45
  store i32 %175, ptr %176, align 4, !tbaa !155
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #44
  br label %187

177:                                              ; preds = %156
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #44
  br label %178

178:                                              ; preds = %177, %139
  %179 = phi i32 [ %34, %139 ], [ 0, %177 ]
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %178
  %182 = load i32, ptr %4, align 4, !tbaa !155
  %183 = call i32 @close(i32 noundef %182) #44
  br label %184

184:                                              ; preds = %181, %178
  %185 = load i32, ptr %119, align 4, !tbaa !155
  %186 = call ptr @PerlIO_fdopen(i32 noundef %185, ptr noundef nonnull %1) #44
  br label %187

187:                                              ; preds = %174, %69, %57, %58, %23, %184, %108
  %188 = phi ptr [ null, %108 ], [ %186, %184 ], [ null, %174 ], [ null, %23 ], [ null, %58 ], [ null, %57 ], [ null, %69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #44
  ret ptr %188
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #25

declare zeroext i1 @Perl_do_exec3(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @Perl_atfork_lock() local_unnamed_addr #28 !prof !141 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @Perl_atfork_unlock() local_unnamed_addr #28 !prof !141 {
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @fork() local_unnamed_addr #29

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_rsignal(i32 noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !141 {
  %3 = tail call ptr @__sysv_signal(i32 noundef %0, ptr noundef %1) #44
  ret ptr %3
}

; Function Attrs: nounwind
declare ptr @__sysv_signal(i32 noundef, ptr noundef) local_unnamed_addr #25

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @Perl_rsignal_state(i32 noundef %0) local_unnamed_addr #3 !prof !347 {
  store i32 0, ptr @PL_sig_trapped, align 4, !tbaa !155
  %2 = tail call ptr @__sysv_signal(i32 noundef %0, ptr noundef nonnull @sig_trap) #44
  %3 = tail call ptr @__sysv_signal(i32 noundef %0, ptr noundef %2) #44
  %4 = load i32, ptr @PL_sig_trapped, align 4, !tbaa !155
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !348

6:                                                ; preds = %1
  %7 = tail call i32 @getpid() #44
  %8 = tail call i32 @kill(i32 noundef %7, i32 noundef %0) #44
  br label %9

9:                                                ; preds = %6, %1
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @sig_trap(i32 %0) #30 !prof !141 {
  %2 = load i32, ptr @PL_sig_trapped, align 4, !tbaa !155
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @PL_sig_trapped, align 4, !tbaa !155
  ret void
}

; Function Attrs: nounwind
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #25

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #25

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_rsignal_save(i32 noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 !prof !141 {
  %4 = tail call ptr @__sysv_signal(i32 noundef %0, ptr noundef %1) #44
  store ptr %4, ptr %2, align 8, !tbaa !142
  %5 = icmp eq ptr %4, inttoptr (i64 -1 to ptr)
  %6 = sext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_rsignal_restore(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 !prof !141 {
  %3 = load ptr, ptr %1, align 8, !tbaa !142
  %4 = tail call ptr @__sysv_signal(i32 noundef %0, ptr noundef %3) #44
  %5 = icmp eq ptr %4, inttoptr (i64 -1 to ptr)
  %6 = sext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_my_pclose(ptr noundef %0) local_unnamed_addr #3 !prof !141 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #44
  %3 = tail call i32 @Perl_PerlIO_fileno(ptr noundef %0) #44
  %4 = load ptr, ptr @PL_fdpid, align 8, !tbaa !142
  %5 = sext i32 %3 to i64
  %6 = tail call ptr @Perl_av_fetch(ptr noundef %4, i64 noundef %5, i32 noundef 1) #44
  %7 = load ptr, ptr %6, align 8, !tbaa !142
  %8 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !182
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load ptr, ptr %7, align 8, !tbaa !192
  %14 = getelementptr inbounds %struct.xpviv, ptr %13, i64 0, i32 4
  %15 = load i64, ptr %14, align 8, !tbaa !147
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %1, %12
  %18 = phi i32 [ %16, %12 ], [ -1, %1 ]
  %19 = icmp eq ptr %7, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !275
  %23 = icmp ugt i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = add i32 %22, -1
  store i32 %25, ptr %21, align 8, !tbaa !275
  br label %27

26:                                               ; preds = %20
  tail call void @Perl_sv_free2(ptr noundef nonnull %7, i32 noundef %22) #44
  br label %27

27:                                               ; preds = %17, %24, %26
  store ptr null, ptr %6, align 8, !tbaa !142
  %28 = tail call i32 @PerlIOUnix_refcnt(i32 noundef %3) #44
  %29 = icmp eq i32 %28, 1
  %30 = icmp sgt i32 %18, 0
  %31 = select i1 %29, i1 %30, i1 false
  %32 = tail call i32 @Perl_PerlIO_close(ptr noundef %0) #44
  %33 = icmp eq i32 %32, -1
  %34 = tail call ptr @__errno_location() #45
  %35 = load i32, ptr %34, align 4, !tbaa !155
  br i1 %31, label %36, label %42

36:                                               ; preds = %27, %39
  %37 = call i32 @Perl_wait4pid(i32 noundef %18, ptr noundef nonnull %2, i32 noundef 0)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, ptr %34, align 4, !tbaa !155
  %41 = icmp eq i32 %40, 4
  br i1 %41, label %36, label %42, !llvm.loop !349

42:                                               ; preds = %39, %36, %27
  %43 = phi i32 [ 0, %27 ], [ %37, %36 ], [ -1, %39 ]
  br i1 %33, label %44, label %45

44:                                               ; preds = %42
  store i32 %35, ptr %34, align 4, !tbaa !155
  br label %53

45:                                               ; preds = %42
  br i1 %31, label %46, label %53

46:                                               ; preds = %45
  %47 = icmp slt i32 %43, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %46
  %49 = load i32, ptr %2, align 4, !tbaa !155
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  store i32 0, ptr %34, align 4, !tbaa !155
  %52 = load i32, ptr %2, align 4, !tbaa !155
  br label %53

53:                                               ; preds = %51, %48, %45, %46, %44
  %54 = phi i32 [ -1, %44 ], [ %52, %51 ], [ 0, %48 ], [ 0, %45 ], [ %43, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #44
  ret i32 %54
}

declare i32 @PerlIOUnix_refcnt(i32 noundef) local_unnamed_addr #15

declare i32 @Perl_PerlIO_close(ptr noundef) local_unnamed_addr #15

declare i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local void @Perl_repeatcpy(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #7 !prof !350 {
  %5 = icmp slt i64 %3, 0
  br i1 %5, label %6, label %7, !prof !351

6:                                                ; preds = %4
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.8, ptr noundef nonnull @PL_memory_wrap)
  br label %7

7:                                                ; preds = %6, %4
  %8 = icmp eq i32 %2, 1
  br i1 %8, label %9, label %11, !prof !352

9:                                                ; preds = %7
  %10 = load i8, ptr %1, align 1, !tbaa !147
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 %10, i64 %3, i1 false), !prof !353
  br label %56

11:                                               ; preds = %7
  %12 = icmp eq i64 %3, 0
  br i1 %12, label %56, label %13, !prof !354

13:                                               ; preds = %11
  %14 = tail call i64 @llvm.smin.i64(i64 %3, i64 4)
  %15 = icmp sgt i64 %3, 0
  br i1 %15, label %16, label %35, !prof !355

16:                                               ; preds = %13
  %17 = sext i32 %2 to i64
  %18 = icmp sgt i32 %2, 0
  br label %19

19:                                               ; preds = %16, %31
  %20 = phi ptr [ %0, %16 ], [ %32, %31 ]
  %21 = phi i64 [ 0, %16 ], [ %33, %31 ]
  br i1 %18, label %22, label %31, !prof !355

22:                                               ; preds = %19, %22
  %23 = phi ptr [ %28, %22 ], [ %20, %19 ]
  %24 = phi i64 [ %29, %22 ], [ %17, %19 ]
  %25 = phi ptr [ %26, %22 ], [ %1, %19 ]
  %26 = getelementptr inbounds i8, ptr %25, i64 1
  %27 = load i8, ptr %25, align 1, !tbaa !147
  %28 = getelementptr inbounds i8, ptr %23, i64 1
  store i8 %27, ptr %23, align 1, !tbaa !147
  %29 = add nsw i64 %24, -1
  %30 = icmp sgt i64 %24, 1
  br i1 %30, label %22, label %31, !prof !356, !llvm.loop !357

31:                                               ; preds = %22, %19
  %32 = phi ptr [ %20, %19 ], [ %28, %22 ]
  %33 = add nuw nsw i64 %21, 1
  %34 = icmp eq i64 %33, %14
  br i1 %34, label %35, label %19, !prof !358, !llvm.loop !359

35:                                               ; preds = %31, %13
  %36 = phi i64 [ 0, %13 ], [ %14, %31 ]
  %37 = phi ptr [ %0, %13 ], [ %32, %31 ]
  %38 = sdiv i64 %3, 2
  %39 = icmp sgt i64 %36, %38
  br i1 %39, label %48, label %40, !prof !167

40:                                               ; preds = %35, %40
  %41 = phi ptr [ %45, %40 ], [ %37, %35 ]
  %42 = phi i64 [ %46, %40 ], [ %36, %35 ]
  %43 = sext i32 %2 to i64
  %44 = mul nsw i64 %42, %43
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %41, ptr align 1 %0, i64 %44, i1 false)
  %45 = getelementptr inbounds i8, ptr %41, i64 %44
  %46 = shl nsw i64 %42, 1
  %47 = icmp sgt i64 %46, %38
  br i1 %47, label %48, label %40, !prof !167, !llvm.loop !360

48:                                               ; preds = %40, %35
  %49 = phi i64 [ %36, %35 ], [ %46, %40 ]
  %50 = phi ptr [ %37, %35 ], [ %45, %40 ]
  %51 = icmp slt i64 %49, %3
  br i1 %51, label %52, label %56, !prof !354

52:                                               ; preds = %48
  %53 = sub nsw i64 %3, %49
  %54 = sext i32 %2 to i64
  %55 = mul nsw i64 %53, %54
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %50, ptr align 1 %0, i64 %55, i1 false)
  br label %56

56:                                               ; preds = %48, %52, %11, %9
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_same_dirent(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !141 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #48
  %6 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 47) #48
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #44
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #44
  %7 = tail call ptr @Perl_sv_newmortal() #44
  %8 = icmp eq ptr %5, null
  %9 = getelementptr inbounds i8, ptr %5, i64 1
  %10 = select i1 %8, ptr %0, ptr %9
  %11 = icmp eq ptr %6, null
  %12 = getelementptr inbounds i8, ptr %6, i64 1
  %13 = select i1 %11, ptr %1, ptr %12
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #48
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %2
  %17 = icmp eq ptr %10, %0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @Perl_sv_setpvn(ptr noundef %7, ptr noundef nonnull @.str.16, i64 noundef 1) #44
  br label %23

19:                                               ; preds = %16
  %20 = ptrtoint ptr %10 to i64
  %21 = ptrtoint ptr %0 to i64
  %22 = sub i64 %20, %21
  tail call void @Perl_sv_setpvn(ptr noundef %7, ptr noundef %0, i64 noundef %22) #44
  br label %23

23:                                               ; preds = %19, %18
  %24 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !147
  %26 = call i32 @stat64(ptr noundef %25, ptr noundef nonnull %3) #44
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %50, label %28

28:                                               ; preds = %23
  %29 = icmp eq ptr %13, %1
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  tail call void @Perl_sv_setpvn(ptr noundef %7, ptr noundef nonnull @.str.16, i64 noundef 1) #44
  br label %35

31:                                               ; preds = %28
  %32 = ptrtoint ptr %13 to i64
  %33 = ptrtoint ptr %1 to i64
  %34 = sub i64 %32, %33
  tail call void @Perl_sv_setpvn(ptr noundef %7, ptr noundef %1, i64 noundef %34) #44
  br label %35

35:                                               ; preds = %31, %30
  %36 = load ptr, ptr %24, align 8, !tbaa !147
  %37 = call i32 @stat64(ptr noundef %36, ptr noundef nonnull %4) #44
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %35
  %40 = load i64, ptr %3, align 8, !tbaa !361
  %41 = load i64, ptr %4, align 8, !tbaa !361
  %42 = icmp eq i64 %40, %41
  %43 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 1
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 1
  %46 = load i64, ptr %45, align 8
  %47 = icmp eq i64 %44, %46
  %48 = select i1 %42, i1 %47, i1 false
  %49 = zext i1 %48 to i32
  br label %50

50:                                               ; preds = %35, %23, %2, %39
  %51 = phi i32 [ %49, %39 ], [ 0, %2 ], [ 0, %23 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #44
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #44
  ret i32 %51
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #13

declare ptr @Perl_sv_newmortal() local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #29

; Function Attrs: cold nounwind uwtable
define dso_local noalias noundef ptr @Perl_find_script(ptr noundef %0, i1 noundef zeroext %1, ptr nocapture noundef readnone %2, i32 noundef %3) local_unnamed_addr #3 !prof !269 {
  %5 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #44
  store i8 0, ptr %5, align 16, !tbaa !147
  br i1 %1, label %6, label %149, !prof !270

6:                                                ; preds = %4
  %7 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %149

9:                                                ; preds = %6
  %10 = tail call ptr @getenv(ptr noundef nonnull @.str.17) #44
  %11 = icmp eq ptr %10, null
  br i1 %11, label %149, label %12

12:                                               ; preds = %9
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #48
  %14 = getelementptr inbounds i8, ptr %10, i64 %13
  br label %15

15:                                               ; preds = %113, %12
  %16 = phi ptr [ %114, %113 ], [ null, %12 ]
  %17 = phi ptr [ %71, %113 ], [ %10, %12 ]
  %18 = phi i8 [ %88, %113 ], [ 0, %12 ]
  br label %19

19:                                               ; preds = %15, %111
  %20 = phi ptr [ %71, %111 ], [ %17, %15 ]
  %21 = phi i8 [ %88, %111 ], [ %18, %15 ]
  br label %22

22:                                               ; preds = %19, %98
  %23 = phi ptr [ %20, %19 ], [ %71, %98 ]
  %24 = phi i8 [ %21, %19 ], [ %88, %98 ]
  br label %25

25:                                               ; preds = %22, %69
  %26 = phi ptr [ %71, %69 ], [ %23, %22 ]
  %27 = icmp ult ptr %26, %14
  br i1 %27, label %28, label %115

28:                                               ; preds = %25, %55
  %29 = phi i1 [ %60, %55 ], [ true, %25 ]
  %30 = phi ptr [ %59, %55 ], [ %5, %25 ]
  %31 = phi i32 [ %58, %55 ], [ 0, %25 ]
  %32 = phi i64 [ %56, %55 ], [ 0, %25 ]
  %33 = phi ptr [ %57, %55 ], [ %26, %25 ]
  %34 = load i8, ptr %33, align 1, !tbaa !147
  switch i8 %34, label %46 [
    i8 92, label %35
    i8 58, label %61
  ]

35:                                               ; preds = %28
  %36 = getelementptr inbounds i8, ptr %33, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !147
  %38 = icmp eq i8 %37, 58
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = icmp slt i64 %32, 4096
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = add nsw i64 %32, 1
  store i8 %34, ptr %30, align 1, !tbaa !147
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i64 [ %42, %41 ], [ %32, %39 ]
  %45 = add nsw i32 %31, 1
  br label %46

46:                                               ; preds = %28, %43, %35
  %47 = phi ptr [ %36, %43 ], [ %36, %35 ], [ %33, %28 ]
  %48 = phi i64 [ %44, %43 ], [ %32, %35 ], [ %32, %28 ]
  %49 = phi i32 [ %45, %43 ], [ %31, %35 ], [ %31, %28 ]
  %50 = icmp slt i64 %48, 4096
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = getelementptr inbounds i8, ptr %5, i64 %48
  %53 = load i8, ptr %47, align 1, !tbaa !147
  %54 = add nsw i64 %48, 1
  store i8 %53, ptr %52, align 1, !tbaa !147
  br label %55

55:                                               ; preds = %51, %46
  %56 = phi i64 [ %54, %51 ], [ %48, %46 ]
  %57 = getelementptr inbounds i8, ptr %47, i64 1
  %58 = add nsw i32 %49, 1
  %59 = getelementptr inbounds i8, ptr %5, i64 %56
  %60 = icmp ult ptr %57, %14
  br i1 %60, label %28, label %61, !llvm.loop !172

61:                                               ; preds = %28, %55
  %62 = phi ptr [ %33, %28 ], [ %57, %55 ]
  %63 = phi i64 [ %32, %28 ], [ %56, %55 ]
  %64 = phi i32 [ %31, %28 ], [ %58, %55 ]
  %65 = phi ptr [ %30, %28 ], [ %59, %55 ]
  %66 = phi i1 [ %29, %28 ], [ %60, %55 ]
  %67 = icmp slt i64 %63, 4096
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i8 0, ptr %65, align 1, !tbaa !147
  br label %69

69:                                               ; preds = %61, %68
  %70 = zext i1 %66 to i64
  %71 = getelementptr inbounds i8, ptr %62, i64 %70
  %72 = add nsw i32 %64, 1
  %73 = sext i32 %72 to i64
  %74 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #48
  %75 = add i64 %74, %73
  %76 = icmp ugt i64 %75, 4095
  br i1 %76, label %25, label %77, !llvm.loop !364

77:                                               ; preds = %69
  %78 = icmp eq i32 %64, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %77
  %80 = sext i32 %64 to i64
  %81 = getelementptr inbounds [4096 x i8], ptr %5, i64 0, i64 %80
  store i8 47, ptr %81, align 1, !tbaa !147
  br label %82

82:                                               ; preds = %79, %77
  %83 = phi i32 [ %64, %77 ], [ %72, %79 ]
  %84 = icmp eq i32 %83, 2
  %85 = load i8, ptr %5, align 16
  %86 = icmp eq i8 %85, 46
  %87 = select i1 %84, i1 %86, i1 false
  %88 = select i1 %87, i8 1, i8 %24
  %89 = icmp eq i32 %83, 4096
  br i1 %89, label %98, label %90

90:                                               ; preds = %82
  %91 = sext i32 %83 to i64
  %92 = sub nsw i64 4096, %91
  %93 = getelementptr inbounds i8, ptr %5, i64 %91
  %94 = icmp ult i64 %74, %92
  %95 = sub nsw i64 4095, %91
  %96 = select i1 %94, i64 %74, i64 %95
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %93, ptr align 1 %0, i64 %96, i1 false)
  %97 = getelementptr inbounds i8, ptr %93, i64 %96
  store i8 0, ptr %97, align 1, !tbaa !147
  br label %98

98:                                               ; preds = %82, %90
  %99 = call i32 @stat64(ptr noundef nonnull %5, ptr noundef nonnull @PL_statbuf) #44
  %100 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statbuf, i64 0, i32 3), align 8, !tbaa !365
  %101 = and i32 %100, 61440
  %102 = icmp eq i32 %101, 16384
  %103 = icmp slt i32 %99, 0
  %104 = or i1 %103, %102
  br i1 %104, label %22, label %105, !llvm.loop !364

105:                                              ; preds = %98
  %106 = icmp eq i32 %101, 32768
  br i1 %106, label %107, label %111

107:                                              ; preds = %105
  %108 = call zeroext i1 @Perl_cando(i32 noundef 256, i1 noundef zeroext true, ptr noundef nonnull @PL_statbuf) #44
  br i1 %108, label %109, label %111

109:                                              ; preds = %107
  %110 = call zeroext i1 @Perl_cando(i32 noundef 64, i1 noundef zeroext true, ptr noundef nonnull @PL_statbuf) #44
  br i1 %110, label %115, label %111

111:                                              ; preds = %109, %107, %105
  %112 = icmp eq ptr %16, null
  br i1 %112, label %113, label %19, !llvm.loop !364

113:                                              ; preds = %111
  %114 = call ptr @Perl_savepv(ptr noundef nonnull %5)
  br label %15, !llvm.loop !364

115:                                              ; preds = %109, %25
  %116 = phi ptr [ null, %25 ], [ %5, %109 ]
  %117 = phi i8 [ %24, %25 ], [ %88, %109 ]
  %118 = icmp ne ptr %116, null
  br i1 %118, label %132, label %119

119:                                              ; preds = %115
  %120 = and i8 %117, 1
  %121 = icmp ne i8 %120, 0
  %122 = icmp ne ptr %16, null
  %123 = or i1 %121, %122
  br i1 %123, label %132, label %124

124:                                              ; preds = %119
  %125 = call i32 @stat64(ptr noundef %0, ptr noundef nonnull @PL_statbuf) #44
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %124
  %128 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statbuf, i64 0, i32 3), align 8, !tbaa !365
  %129 = and i32 %128, 61440
  %130 = icmp eq i32 %129, 16384
  br i1 %130, label %131, label %132

131:                                              ; preds = %127, %124
  br label %132

132:                                              ; preds = %131, %127, %119, %115
  %133 = phi i8 [ %117, %115 ], [ %117, %119 ], [ 1, %131 ], [ %117, %127 ]
  %134 = and i32 %3, 1
  %135 = icmp eq i32 %134, 0
  %136 = or i1 %135, %118
  br i1 %136, label %146, label %137

137:                                              ; preds = %132
  %138 = icmp ne ptr %16, null
  %139 = select i1 %138, ptr @.str.19, ptr @.str.20
  %140 = select i1 %138, ptr %16, ptr %0
  %141 = select i1 %138, ptr @.str.10, ptr @.str.21
  %142 = and i8 %133, 1
  %143 = icmp ne i8 %142, 0
  %144 = select i1 %138, i1 true, i1 %143
  %145 = select i1 %144, ptr @.str.10, ptr @.str.22
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.18, ptr noundef nonnull %139, ptr noundef %140, ptr noundef nonnull %141, ptr noundef nonnull %145)
  br label %146

146:                                              ; preds = %137, %132
  %147 = icmp eq ptr %16, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %146
  call void @free(ptr noundef %16) #44
  br label %149

149:                                              ; preds = %148, %146, %9, %6, %4
  %150 = phi ptr [ %0, %6 ], [ %0, %9 ], [ %0, %4 ], [ %116, %146 ], [ %116, %148 ]
  %151 = icmp eq ptr %150, null
  br i1 %151, label %154, label %152, !prof !270

152:                                              ; preds = %149
  %153 = call ptr @Perl_savepv(ptr noundef nonnull %150)
  br label %154

154:                                              ; preds = %149, %152
  %155 = phi ptr [ %153, %152 ], [ null, %149 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #44
  ret ptr %155
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #31

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @Perl_my_strlcpy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #32 !prof !141 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #48
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = icmp ult i64 %4, %2
  %8 = add i64 %2, -1
  %9 = select i1 %7, i64 %4, i64 %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %9, i1 false)
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  store i8 0, ptr %10, align 1, !tbaa !147
  br label %11

11:                                               ; preds = %6, %3
  ret i64 %4
}

declare zeroext i1 @Perl_cando(i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #15

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @Perl_get_context() local_unnamed_addr #28 !prof !141 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @Perl_set_context(ptr nocapture noundef readnone %0) local_unnamed_addr #28 !prof !141 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @Perl_get_op_names() local_unnamed_addr #28 !prof !141 {
  ret ptr @PL_op_name
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @Perl_get_op_descs() local_unnamed_addr #28 !prof !141 {
  ret ptr @PL_op_desc
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @Perl_get_no_modify() local_unnamed_addr #28 !prof !141 {
  ret ptr @PL_no_modify
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @Perl_get_opargs() local_unnamed_addr #28 !prof !141 {
  ret ptr @PL_opargs
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @Perl_get_ppaddr() local_unnamed_addr #28 !prof !141 {
  ret ptr @PL_ppaddr
}

; Function Attrs: cold nofree nounwind memory(read, argmem: readwrite) uwtable
define dso_local noundef ptr @Perl_getenv_len(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #33 !prof !141 {
  %3 = tail call ptr @getenv(ptr noundef %0) #44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #48
  store i64 %6, ptr %1, align 8, !tbaa !195
  br label %7

7:                                                ; preds = %5, %2
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local ptr @Perl_get_vtbl(i32 noundef %0) local_unnamed_addr #28 !prof !141 {
  %2 = icmp ugt i32 %0, 30
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.mgvtbl, ptr @PL_magic_vtables, i64 %3
  %5 = select i1 %2, ptr null, ptr %4
  ret ptr %5
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_my_fflush_all() local_unnamed_addr #3 !prof !269 {
  %1 = tail call i32 @Perl_PerlIO_flush(ptr noundef null) #44
  ret i32 %1
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_report_wrongway_fh(ptr noundef readonly %0, i8 noundef signext %1) local_unnamed_addr #3 !prof !141 {
  %3 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 5)
  br i1 %3, label %4, label %36

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !144
  %9 = and i32 %8, 49152
  %10 = icmp eq i32 %9, 32768
  br i1 %10, label %11, label %25

11:                                               ; preds = %6
  %12 = and i32 %8, 255
  %13 = add nsw i32 %12, -9
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !147
  %18 = getelementptr inbounds %struct.gp, ptr %17, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !366
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr %0, ptr %19
  %22 = load ptr, ptr %21, align 8, !tbaa !301
  %23 = getelementptr inbounds %struct.xpvgv, ptr %22, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !147
  br label %25

25:                                               ; preds = %11, %4, %6, %15
  %26 = phi ptr [ %24, %15 ], [ null, %6 ], [ null, %4 ], [ null, %11 ]
  %27 = icmp eq i8 %1, 62
  %28 = select i1 %27, ptr @.str.23, ptr @.str.24
  %29 = icmp eq ptr %26, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.hek, ptr %26, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !367
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 5, ptr noundef nonnull @.str.25, ptr noundef nonnull %26, ptr noundef nonnull %28)
  br label %36

35:                                               ; preds = %30, %25
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 5, ptr noundef nonnull @.str.26, ptr noundef nonnull %28)
  br label %36

36:                                               ; preds = %34, %35, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_report_evil_fh(ptr noundef readonly %0) local_unnamed_addr #3 !prof !141 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !182
  %6 = and i32 %5, 255
  %7 = add nsw i32 %6, -9
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !147
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gp, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !148
  br label %16

16:                                               ; preds = %3, %1, %13, %9
  %17 = phi ptr [ %15, %13 ], [ null, %9 ], [ null, %1 ], [ null, %3 ]
  %18 = load ptr, ptr @PL_op, align 8, !tbaa !142
  %19 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 4
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, 511
  %22 = icmp eq ptr %17, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr %17, align 8, !tbaa !150
  %25 = getelementptr inbounds %struct.xpvio, ptr %24, i64 0, i32 16
  %26 = load i8, ptr %25, align 8, !tbaa !369
  %27 = icmp eq i8 %26, 32
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %16
  br label %29

29:                                               ; preds = %23, %28
  %30 = phi i32 [ 11, %28 ], [ 6, %23 ]
  %31 = phi ptr [ @.str.28, %28 ], [ @.str.27, %23 ]
  %32 = tail call zeroext i1 @Perl_ckwarn(i32 noundef %30)
  br i1 %32, label %33, label %107

33:                                               ; preds = %29
  br i1 %2, label %59, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !144
  %37 = and i32 %36, 49152
  %38 = icmp eq i32 %37, 32768
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = and i32 %36, 255
  %41 = add nsw i32 %40, -9
  %42 = icmp ult i32 %41, 2
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !147
  %46 = getelementptr inbounds %struct.gp, ptr %45, i64 0, i32 8
  %47 = load ptr, ptr %46, align 8, !tbaa !366
  %48 = icmp eq ptr %47, null
  %49 = select i1 %48, ptr %0, ptr %47
  %50 = load ptr, ptr %49, align 8, !tbaa !301
  %51 = getelementptr inbounds %struct.xpvgv, ptr %50, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !147
  %53 = getelementptr inbounds %struct.hek, ptr %52, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !367
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %43
  %57 = tail call ptr @Perl_newSVhek(ptr noundef %52) #44
  %58 = tail call ptr @Perl_sv_2mortal(ptr noundef %57) #44
  br label %59

59:                                               ; preds = %39, %33, %34, %43, %56
  %60 = phi ptr [ %58, %56 ], [ null, %43 ], [ null, %34 ], [ null, %33 ], [ null, %39 ]
  %61 = add nsw i16 %21, -266
  %62 = icmp ult i16 %61, 27
  %63 = select i1 %62, ptr @.str.10, ptr @.str.29
  %64 = and i16 %20, 510
  %65 = icmp eq i16 %64, 26
  br i1 %65, label %72, label %66

66:                                               ; preds = %59
  %67 = icmp eq i16 %21, 236
  br i1 %67, label %72, label %68

68:                                               ; preds = %66
  %69 = zext nneg i16 %21 to i64
  %70 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !142
  br label %72

72:                                               ; preds = %68, %66, %59
  %73 = phi ptr [ @.str.30, %59 ], [ %71, %68 ], [ @.str.31, %66 ]
  %74 = add nsw i16 %21, -251
  %75 = icmp ult i16 %74, 13
  %76 = or i1 %22, %75
  %77 = select i1 %75, ptr @.str.32, ptr @.str.33
  br i1 %76, label %84, label %78

78:                                               ; preds = %72
  %79 = load ptr, ptr %17, align 8, !tbaa !150
  %80 = getelementptr inbounds %struct.xpvio, ptr %79, i64 0, i32 16
  %81 = load i8, ptr %80, align 8, !tbaa !369
  %82 = icmp eq i8 %81, 115
  %83 = select i1 %82, ptr @.str.32, ptr @.str.33
  br label %84

84:                                               ; preds = %72, %78
  %85 = phi ptr [ %77, %72 ], [ %83, %78 ]
  %86 = icmp eq ptr %60, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %60, align 8, !tbaa !192
  %89 = getelementptr inbounds %struct.xpv, ptr %88, i64 0, i32 2
  %90 = load i64, ptr %89, align 8, !tbaa !193
  %91 = icmp ne i64 %90, 0
  br label %92

92:                                               ; preds = %87, %84
  %93 = phi i1 [ false, %84 ], [ %91, %87 ]
  %94 = select i1 %93, ptr @.str.35, ptr @.str.10
  %95 = select i1 %93, ptr %60, ptr @PL_sv_no
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef %30, ptr noundef nonnull @.str.34, ptr noundef %73, ptr noundef nonnull %63, ptr noundef nonnull %31, ptr noundef nonnull %85, ptr noundef nonnull %94, ptr noundef %95)
  br i1 %22, label %107, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr %17, align 8, !tbaa !150
  %98 = getelementptr inbounds %struct.xpvio, ptr %97, i64 0, i32 6
  %99 = load ptr, ptr %98, align 8, !tbaa !147
  %100 = icmp eq ptr %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.xpvio, ptr %97, i64 0, i32 17
  %103 = load i8, ptr %102, align 1, !tbaa !370
  %104 = and i8 %103, 64
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef %30, ptr noundef nonnull @.str.36, ptr noundef %73, ptr noundef nonnull %63, ptr noundef nonnull %94, ptr noundef %95)
  br label %107

107:                                              ; preds = %92, %96, %101, %106, %29
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_init_tm(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 !prof !141 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #44
  %3 = call i64 @time(ptr noundef nonnull %2) #44
  %4 = call ptr @localtime(ptr noundef nonnull %2) #44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(56) %4, i64 56, i1 false)
  br label %7

7:                                                ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #44
  ret void
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #25

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #25

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @Perl_mini_mktime(ptr nocapture noundef %0) local_unnamed_addr #34 !prof !141 {
  %2 = getelementptr inbounds %struct.tm, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !371
  %4 = getelementptr inbounds %struct.tm, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !373
  %6 = getelementptr inbounds %struct.tm, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !374
  %8 = icmp sgt i32 %5, 1
  %9 = select i1 %8, i32 2, i32 14
  %10 = add nsw i32 %9, %5
  %11 = select i1 %8, i32 1900, i32 1899
  %12 = add nsw i32 %11, %3
  %13 = mul nsw i32 %12, 365
  %14 = sdiv i32 %12, 4
  %15 = sdiv i32 %12, -100
  %16 = sdiv i32 %12, 400
  %17 = mul nsw i32 %10, 153
  %18 = sdiv i32 %17, 5
  %19 = add i32 %14, %7
  %20 = add i32 %19, %13
  %21 = add i32 %20, %15
  %22 = add i32 %21, %16
  %23 = add i32 %22, %18
  %24 = load i32, ptr %0, align 8, !tbaa !375
  %25 = icmp ult i32 %24, 61
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !375
  br label %27

27:                                               ; preds = %1, %26
  %28 = phi i32 [ %24, %26 ], [ 0, %1 ]
  %29 = getelementptr inbounds %struct.tm, ptr %0, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !376
  %31 = mul nsw i32 %30, 60
  %32 = add nsw i32 %31, %28
  %33 = getelementptr inbounds %struct.tm, ptr %0, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !377
  %35 = mul nsw i32 %34, 3600
  %36 = add nsw i32 %32, %35
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %27
  %39 = sdiv i32 %36, 86400
  %40 = mul nsw i32 %39, -86400
  %41 = add i32 %40, %36
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = add nsw i32 %39, -1
  %45 = add nsw i32 %44, %23
  %46 = mul i32 %44, -86400
  %47 = add i32 %46, %36
  br label %56

48:                                               ; preds = %38
  %49 = add nsw i32 %39, %23
  br label %56

50:                                               ; preds = %27
  %51 = icmp sgt i32 %36, 86399
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  %53 = udiv i32 %36, 86400
  %54 = add nsw i32 %53, %23
  %55 = urem i32 %36, 86400
  br label %56

56:                                               ; preds = %50, %52, %43, %48
  %57 = phi i32 [ %47, %43 ], [ %41, %48 ], [ %55, %52 ], [ %36, %50 ]
  %58 = phi i32 [ %45, %43 ], [ %49, %48 ], [ %54, %52 ], [ %23, %50 ]
  %59 = sdiv i32 %57, 3600
  store i32 %59, ptr %33, align 8, !tbaa !377
  %60 = srem i32 %57, 3600
  %61 = sdiv i32 %60, 60
  store i32 %61, ptr %29, align 4, !tbaa !376
  %62 = srem i32 %60, 60
  %63 = load i32, ptr %0, align 8, !tbaa !375
  %64 = add nsw i32 %63, %62
  store i32 %64, ptr %0, align 8, !tbaa !375
  %65 = add nsw i32 %58, -123
  %66 = sdiv i32 %65, 146097
  %67 = mul nsw i32 %66, 400
  %68 = srem i32 %65, 146097
  %69 = sdiv i32 %68, 36524
  %70 = mul nsw i32 %69, 100
  %71 = add nsw i32 %70, %67
  %72 = srem i32 %68, 36524
  %73 = sdiv i32 %72, 1461
  %74 = shl nsw i32 %73, 2
  %75 = add nsw i32 %71, %74
  %76 = srem i32 %72, 1461
  %77 = sdiv i32 %76, 365
  %78 = add nsw i32 %75, %77
  %79 = srem i32 %76, 365
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %56
  %82 = add nsw i32 %68, -146096
  %83 = icmp ult i32 %82, 36524
  %84 = add nsw i32 %76, -1460
  %85 = icmp ult i32 %84, 365
  %86 = select i1 %83, i1 true, i1 %85
  br i1 %86, label %100, label %87

87:                                               ; preds = %81, %56
  %88 = add nsw i32 %79, 123
  %89 = mul nsw i32 %88, 5
  %90 = sdiv i32 %89, 153
  %91 = mul nsw i32 %90, 153
  %92 = sdiv i32 %91, -5
  %93 = add nsw i32 %92, %88
  %94 = icmp sgt i32 %79, 305
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = add nsw i32 %90, -14
  %97 = add nsw i32 %78, 1
  br label %100

98:                                               ; preds = %87
  %99 = add nsw i32 %90, -2
  br label %100

100:                                              ; preds = %81, %95, %98
  %101 = phi i32 [ %96, %95 ], [ %99, %98 ], [ 1, %81 ]
  %102 = phi i32 [ %97, %95 ], [ %78, %98 ], [ %78, %81 ]
  %103 = phi i32 [ %93, %95 ], [ %93, %98 ], [ 29, %81 ]
  %104 = add nsw i32 %102, -1900
  store i32 %104, ptr %2, align 4, !tbaa !371
  %105 = icmp eq i32 %103, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  store i32 %103, ptr %6, align 4, !tbaa !374
  br label %109

107:                                              ; preds = %100
  store i32 31, ptr %6, align 4, !tbaa !374
  %108 = add nsw i32 %101, -1
  br label %109

109:                                              ; preds = %107, %106
  %110 = phi i32 [ %108, %107 ], [ %101, %106 ]
  store i32 %110, ptr %4, align 8, !tbaa !373
  %111 = add nsw i32 %102, -1
  %112 = mul i32 %111, -365
  %113 = sdiv i32 %111, -4
  %114 = sdiv i32 %111, 100
  %115 = sdiv i32 %111, -400
  %116 = add i32 %58, -429
  %117 = add i32 %116, %113
  %118 = add i32 %117, %112
  %119 = add i32 %118, %114
  %120 = add i32 %119, %115
  %121 = getelementptr inbounds %struct.tm, ptr %0, i64 0, i32 7
  store i32 %120, ptr %121, align 4, !tbaa !378
  %122 = add nsw i32 %58, 6
  %123 = srem i32 %122, 7
  %124 = getelementptr inbounds %struct.tm, ptr %0, i64 0, i32 6
  store i32 %123, ptr %124, align 8, !tbaa !379
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noalias noundef ptr @Perl_my_strftime(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #3 !prof !141 {
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.37)
  ret ptr null
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_getcwd_sv(ptr noundef %0) local_unnamed_addr #3 !prof !141 {
  %2 = alloca [4096 x i8], align 16
  %3 = load i8, ptr @PL_tainting, align 1, !tbaa !135, !range !139, !noundef !140
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @Perl_sv_magic(ptr noundef %0, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #44
  br label %6

6:                                                ; preds = %5, %1
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #44
  %7 = call ptr @getcwd(ptr noundef nonnull %2, i64 noundef 4095) #44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  call void @Perl_sv_setpv(ptr noundef %0, ptr noundef nonnull %2) #44
  br label %11

10:                                               ; preds = %6
  call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef nonnull @PL_sv_undef, i32 noundef 1538) #44
  br label %11

11:                                               ; preds = %10, %9
  %12 = phi i32 [ 1, %9 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #44
  ret i32 %12
}

declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #25

declare void @Perl_sv_setpv(ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @Perl_prescan_version(ptr noundef readonly %0, i1 noundef zeroext %1, ptr noundef writeonly %2, ptr noundef %3, ptr noundef writeonly %4, ptr noundef writeonly %5, ptr noundef writeonly %6) local_unnamed_addr #35 !prof !380 {
  %8 = icmp eq ptr %3, null
  br i1 %8, label %12, label %9, !prof !381

9:                                                ; preds = %7
  %10 = load i8, ptr %3, align 1, !tbaa !135, !range !139, !noundef !140
  %11 = zext nneg i8 %10 to i32
  br label %12

12:                                               ; preds = %7, %9
  %13 = phi i32 [ %11, %9 ], [ 0, %7 ]
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i8
  br i1 %14, label %16, label %23, !prof !382

16:                                               ; preds = %12
  %17 = load i8, ptr %0, align 1, !tbaa !147
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !155
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %37, !prof !167

23:                                               ; preds = %16, %12
  %24 = load i8, ptr %0, align 1, !tbaa !147
  %25 = icmp eq i8 %24, 118
  br i1 %25, label %26, label %153, !prof !383

26:                                               ; preds = %23
  %27 = getelementptr inbounds i8, ptr %0, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !147
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !155
  %32 = and i32 %31, 2
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37, !prof !354

34:                                               ; preds = %26
  %35 = icmp eq ptr %2, null
  br i1 %35, label %329, label %36

36:                                               ; preds = %34
  store ptr @.str.38, ptr %2, align 8, !tbaa !142
  br label %329

37:                                               ; preds = %26, %16, %286
  %38 = phi i8 [ %15, %16 ], [ %287, %286 ], [ 1, %26 ]
  %39 = phi i32 [ 3, %16 ], [ %288, %286 ], [ 3, %26 ]
  %40 = phi i32 [ 0, %16 ], [ %289, %286 ], [ 0, %26 ]
  %41 = phi i8 [ 0, %16 ], [ %290, %286 ], [ 0, %26 ]
  %42 = phi ptr [ %0, %16 ], [ %291, %286 ], [ %27, %26 ]
  br i1 %1, label %44, label %43, !prof !354

43:                                               ; preds = %47, %44, %37
  br label %58

44:                                               ; preds = %37
  %45 = load i8, ptr %42, align 1, !tbaa !147
  %46 = icmp eq i8 %45, 48
  br i1 %46, label %47, label %43

47:                                               ; preds = %44
  %48 = getelementptr inbounds i8, ptr %42, i64 1
  %49 = load i8, ptr %48, align 1, !tbaa !147
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !155
  %53 = and i32 %52, 2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %43, label %55

55:                                               ; preds = %47
  %56 = icmp eq ptr %2, null
  br i1 %56, label %329, label %57

57:                                               ; preds = %55
  store ptr @.str.39, ptr %2, align 8, !tbaa !142
  br label %329

58:                                               ; preds = %43, %58
  %59 = phi ptr [ %66, %58 ], [ %42, %43 ]
  %60 = load i8, ptr %59, align 1, !tbaa !147
  %61 = zext i8 %60 to i64
  %62 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !155
  %64 = and i32 %63, 2
  %65 = icmp eq i32 %64, 0
  %66 = getelementptr inbounds i8, ptr %59, i64 1
  br i1 %65, label %67, label %58, !prof !384, !llvm.loop !385

67:                                               ; preds = %58
  %68 = icmp eq i8 %60, 46
  br i1 %68, label %69, label %78, !prof !386

69:                                               ; preds = %67
  %70 = add nuw nsw i32 %40, 1
  %71 = getelementptr inbounds i8, ptr %59, i64 1
  %72 = load i8, ptr %71, align 1, !tbaa !147
  %73 = zext i8 %72 to i64
  %74 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !155
  %76 = and i32 %75, 2
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %135, label %82, !prof !270

78:                                               ; preds = %67
  br i1 %1, label %79, label %293

79:                                               ; preds = %78
  %80 = icmp eq ptr %2, null
  br i1 %80, label %329, label %81

81:                                               ; preds = %79
  store ptr @.str.38, ptr %2, align 8, !tbaa !142
  br label %329

82:                                               ; preds = %69, %120
  %83 = phi ptr [ %123, %120 ], [ %71, %69 ]
  %84 = phi i32 [ %87, %120 ], [ 0, %69 ]
  %85 = phi i8 [ %122, %120 ], [ %41, %69 ]
  %86 = phi i32 [ %121, %120 ], [ %70, %69 ]
  %87 = add nuw nsw i32 %84, 1
  br label %88

88:                                               ; preds = %97, %82
  %89 = phi ptr [ %83, %82 ], [ %98, %97 ]
  %90 = phi i32 [ 0, %82 ], [ %99, %97 ]
  %91 = load i8, ptr %89, align 1, !tbaa !147
  %92 = zext i8 %91 to i64
  %93 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !155
  %95 = and i32 %94, 2
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %104, label %97, !prof !387

97:                                               ; preds = %88
  %98 = getelementptr inbounds i8, ptr %89, i64 1
  %99 = add nuw nsw i32 %90, 1
  %100 = icmp ugt i32 %90, 2
  %101 = select i1 %1, i1 %100, i1 false, !prof !334
  br i1 %101, label %102, label %88, !prof !334, !llvm.loop !388

102:                                              ; preds = %97
  %103 = icmp eq ptr %2, null
  br i1 %103, label %148, label %143

104:                                              ; preds = %88
  switch i8 %91, label %130 [
    i8 95, label %105
    i8 46, label %113
  ], !prof !389

105:                                              ; preds = %104
  br i1 %1, label %106, label %108

106:                                              ; preds = %105
  %107 = icmp eq ptr %2, null
  br i1 %107, label %148, label %143

108:                                              ; preds = %105
  %109 = and i8 %85, 1
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %108
  %112 = icmp eq ptr %2, null
  br i1 %112, label %148, label %143

113:                                              ; preds = %104
  %114 = and i8 %85, 1
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %118, label %116, !prof !386

116:                                              ; preds = %113
  %117 = icmp eq ptr %2, null
  br i1 %117, label %148, label %143

118:                                              ; preds = %113
  %119 = add nsw i32 %86, 1
  br label %120

120:                                              ; preds = %108, %118
  %121 = phi i32 [ %119, %118 ], [ %86, %108 ]
  %122 = phi i8 [ %85, %118 ], [ 1, %108 ]
  %123 = getelementptr inbounds i8, ptr %89, i64 1
  %124 = load i8, ptr %123, align 1, !tbaa !147
  %125 = zext i8 %124 to i64
  %126 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !155
  %128 = and i32 %127, 2
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %82, !prof !390, !llvm.loop !391

130:                                              ; preds = %104, %120
  %131 = phi i32 [ %121, %120 ], [ %86, %104 ]
  %132 = phi i8 [ %122, %120 ], [ %85, %104 ]
  %133 = phi ptr [ %123, %120 ], [ %89, %104 ]
  %134 = icmp eq i32 %84, 0
  br label %135

135:                                              ; preds = %130, %69
  %136 = phi i32 [ %70, %69 ], [ %131, %130 ]
  %137 = phi i8 [ %41, %69 ], [ %132, %130 ]
  %138 = phi ptr [ %71, %69 ], [ %133, %130 ]
  %139 = phi i1 [ true, %69 ], [ %134, %130 ]
  %140 = select i1 %1, i1 %139, i1 false, !prof !354
  br i1 %140, label %141, label %148, !prof !354

141:                                              ; preds = %135
  %142 = icmp eq ptr %2, null
  br i1 %142, label %148, label %143

143:                                              ; preds = %141, %116, %111, %106, %102
  %144 = phi ptr [ @.str.40, %102 ], [ @.str.41, %106 ], [ @.str.42, %111 ], [ @.str.43, %116 ], [ @.str.38, %141 ]
  %145 = phi i32 [ %86, %102 ], [ %86, %106 ], [ %86, %111 ], [ %86, %116 ], [ %136, %141 ]
  %146 = phi i8 [ %85, %102 ], [ %85, %106 ], [ %85, %111 ], [ %85, %116 ], [ %137, %141 ]
  %147 = phi ptr [ %98, %102 ], [ %89, %106 ], [ %89, %111 ], [ %89, %116 ], [ %138, %141 ]
  store ptr %144, ptr %2, align 8, !tbaa !142
  br label %148

148:                                              ; preds = %143, %135, %141, %116, %111, %106, %102
  %149 = phi i32 [ %86, %102 ], [ %86, %106 ], [ %86, %111 ], [ %86, %116 ], [ %136, %141 ], [ %136, %135 ], [ %145, %143 ]
  %150 = phi i8 [ %85, %102 ], [ %85, %106 ], [ %85, %111 ], [ %85, %116 ], [ %137, %141 ], [ %137, %135 ], [ %146, %143 ]
  %151 = phi ptr [ %98, %102 ], [ %89, %106 ], [ %89, %111 ], [ %89, %116 ], [ %138, %141 ], [ %138, %135 ], [ %147, %143 ]
  %152 = phi i1 [ false, %102 ], [ false, %106 ], [ false, %111 ], [ false, %116 ], [ false, %141 ], [ true, %135 ], [ false, %143 ]
  br i1 %152, label %293, label %329, !prof !386

153:                                              ; preds = %23
  br i1 %1, label %154, label %168, !prof !392

154:                                              ; preds = %153
  switch i8 %24, label %155 [
    i8 46, label %156
    i8 48, label %158
    i8 45, label %170
  ], !prof !393

155:                                              ; preds = %168, %154
  br label %172

156:                                              ; preds = %154
  %157 = icmp eq ptr %2, null
  br i1 %157, label %286, label %280

158:                                              ; preds = %154
  %159 = getelementptr inbounds i8, ptr %0, i64 1
  %160 = load i8, ptr %159, align 1, !tbaa !147
  %161 = zext i8 %160 to i64
  %162 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %161
  %163 = load i32, ptr %162, align 4, !tbaa !155
  %164 = and i32 %163, 2
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %158
  %167 = icmp eq ptr %2, null
  br i1 %167, label %286, label %280

168:                                              ; preds = %158, %153
  %169 = icmp eq i8 %24, 45
  br i1 %169, label %170, label %155, !prof !394

170:                                              ; preds = %154, %168
  %171 = icmp eq ptr %2, null
  br i1 %171, label %286, label %280

172:                                              ; preds = %155, %172
  %173 = phi ptr [ %181, %172 ], [ %0, %155 ]
  %174 = load i8, ptr %173, align 1, !tbaa !147
  %175 = zext i8 %174 to i64
  %176 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %175
  %177 = load i32, ptr %176, align 4, !tbaa !155
  %178 = freeze i32 %177
  %179 = and i32 %178, 2
  %180 = icmp eq i32 %179, 0
  %181 = getelementptr inbounds i8, ptr %173, i64 1
  br i1 %180, label %182, label %172, !prof !395, !llvm.loop !396

182:                                              ; preds = %172
  switch i8 %174, label %192 [
    i8 46, label %183
    i8 0, label %196
    i8 59, label %196
  ], !prof !397

183:                                              ; preds = %182
  %184 = getelementptr inbounds i8, ptr %173, i64 1
  %185 = load i8, ptr %184, align 1, !tbaa !147
  %186 = zext i8 %185 to i64
  %187 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %186
  %188 = load i32, ptr %187, align 4, !tbaa !155
  %189 = freeze i32 %188
  %190 = and i32 %189, 2
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %221, label %229, !prof !398

192:                                              ; preds = %182
  %193 = and i32 %178, 17408
  %194 = icmp eq i32 %193, 17408
  br i1 %194, label %196, label %195

195:                                              ; preds = %192
  switch i8 %174, label %200 [
    i8 125, label %196
    i8 123, label %196
  ]

196:                                              ; preds = %195, %195, %192, %182, %182
  %197 = icmp eq ptr %173, %0
  br i1 %197, label %198, label %286, !prof !399

198:                                              ; preds = %196
  %199 = icmp eq ptr %2, null
  br i1 %199, label %286, label %280, !prof !400

200:                                              ; preds = %195
  %201 = icmp eq ptr %173, %0
  br i1 %201, label %202, label %204

202:                                              ; preds = %200
  %203 = icmp eq ptr %2, null
  br i1 %203, label %286, label %280

204:                                              ; preds = %200
  %205 = icmp eq i8 %174, 95
  br i1 %205, label %206, label %219

206:                                              ; preds = %204
  br i1 %1, label %207, label %209

207:                                              ; preds = %206
  %208 = icmp eq ptr %2, null
  br i1 %208, label %286, label %280

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %173, i64 1
  %211 = load i8, ptr %210, align 1, !tbaa !147
  %212 = zext i8 %211 to i64
  %213 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !155
  %215 = and i32 %214, 2
  %216 = icmp eq i32 %215, 0
  %217 = icmp eq ptr %2, null
  %218 = select i1 %216, ptr @.str.49, ptr @.str.48
  br i1 %217, label %286, label %280

219:                                              ; preds = %204
  %220 = icmp eq ptr %2, null
  br i1 %220, label %286, label %280

221:                                              ; preds = %183
  br i1 %1, label %227, label %222

222:                                              ; preds = %221
  switch i8 %185, label %223 [
    i8 0, label %229
    i8 59, label %229
  ]

223:                                              ; preds = %222
  %224 = and i32 %189, 17408
  %225 = icmp eq i32 %224, 17408
  br i1 %225, label %229, label %226

226:                                              ; preds = %223
  switch i8 %185, label %227 [
    i8 125, label %229
    i8 123, label %229
  ]

227:                                              ; preds = %226, %221
  %228 = icmp eq ptr %2, null
  br i1 %228, label %286, label %280

229:                                              ; preds = %226, %226, %223, %222, %222, %183
  %230 = load i8, ptr %184, align 1, !tbaa !147
  %231 = zext i8 %230 to i64
  %232 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %231
  %233 = load i32, ptr %232, align 4, !tbaa !155
  %234 = and i32 %233, 2
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %286, label %236, !prof !401

236:                                              ; preds = %229, %270
  %237 = phi i32 [ %242, %270 ], [ 0, %229 ]
  %238 = phi ptr [ %273, %270 ], [ %184, %229 ]
  %239 = phi i8 [ %272, %270 ], [ 0, %229 ]
  %240 = phi i32 [ %271, %270 ], [ 3, %229 ]
  %241 = getelementptr inbounds i8, ptr %238, i64 1
  %242 = add nuw nsw i32 %237, 1
  %243 = load i8, ptr %241, align 1, !tbaa !147
  switch i8 %243, label %270 [
    i8 46, label %244
    i8 95, label %252
  ], !prof !402

244:                                              ; preds = %236
  %245 = and i8 %239, 1
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %249, label %247

247:                                              ; preds = %244
  %248 = icmp eq ptr %2, null
  br i1 %248, label %286, label %280

249:                                              ; preds = %244
  br i1 %1, label %250, label %286

250:                                              ; preds = %249
  %251 = icmp eq ptr %2, null
  br i1 %251, label %286, label %280

252:                                              ; preds = %236
  br i1 %1, label %253, label %255

253:                                              ; preds = %252
  %254 = icmp eq ptr %2, null
  br i1 %254, label %286, label %280

255:                                              ; preds = %252
  %256 = and i8 %239, 1
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %260, label %258

258:                                              ; preds = %255
  %259 = icmp eq ptr %2, null
  br i1 %259, label %286, label %280

260:                                              ; preds = %255
  %261 = getelementptr inbounds i8, ptr %238, i64 2
  %262 = load i8, ptr %261, align 1, !tbaa !147
  %263 = zext i8 %262 to i64
  %264 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %263
  %265 = load i32, ptr %264, align 4, !tbaa !155
  %266 = and i32 %265, 2
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %260
  %269 = icmp eq ptr %2, null
  br i1 %269, label %286, label %280

270:                                              ; preds = %236, %260
  %271 = phi i32 [ %242, %260 ], [ %240, %236 ]
  %272 = phi i8 [ 1, %260 ], [ %239, %236 ]
  %273 = phi ptr [ %261, %260 ], [ %241, %236 ]
  %274 = load i8, ptr %273, align 1, !tbaa !147
  %275 = zext i8 %274 to i64
  %276 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %275
  %277 = load i32, ptr %276, align 4, !tbaa !155
  %278 = and i32 %277, 2
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %286, label %236, !prof !403, !llvm.loop !404

280:                                              ; preds = %209, %268, %258, %253, %250, %247, %227, %219, %207, %202, %198, %170, %166, %156
  %281 = phi ptr [ @.str.44, %156 ], [ @.str.39, %166 ], [ @.str.45, %170 ], [ @.str.46, %198 ], [ @.str.47, %202 ], [ @.str.41, %207 ], [ @.str.47, %219 ], [ @.str.50, %227 ], [ @.str.43, %247 ], [ @.str.51, %250 ], [ @.str.41, %253 ], [ @.str.42, %258 ], [ @.str.49, %268 ], [ %218, %209 ]
  %282 = phi i32 [ 3, %156 ], [ 3, %166 ], [ 3, %170 ], [ 3, %198 ], [ 3, %202 ], [ 3, %207 ], [ 3, %219 ], [ 3, %227 ], [ %240, %247 ], [ %240, %250 ], [ %240, %253 ], [ %240, %258 ], [ %240, %268 ], [ 3, %209 ]
  %283 = phi i32 [ 0, %156 ], [ 0, %166 ], [ 0, %170 ], [ 0, %198 ], [ 0, %202 ], [ 0, %207 ], [ 0, %219 ], [ 1, %227 ], [ 1, %247 ], [ 1, %250 ], [ 1, %253 ], [ 1, %258 ], [ 1, %268 ], [ 0, %209 ]
  %284 = phi i8 [ 0, %156 ], [ 0, %166 ], [ 0, %170 ], [ 0, %198 ], [ 0, %202 ], [ 0, %207 ], [ 0, %219 ], [ 0, %227 ], [ %239, %247 ], [ %239, %250 ], [ %239, %253 ], [ %239, %258 ], [ %239, %268 ], [ 0, %209 ]
  %285 = phi ptr [ %0, %156 ], [ %0, %166 ], [ %0, %170 ], [ %173, %198 ], [ %173, %202 ], [ %173, %207 ], [ %173, %219 ], [ %184, %227 ], [ %241, %247 ], [ %241, %250 ], [ %241, %253 ], [ %241, %258 ], [ %241, %268 ], [ %173, %209 ]
  store ptr %281, ptr %2, align 8, !tbaa !142
  br label %286

286:                                              ; preds = %270, %209, %280, %229, %268, %258, %253, %249, %250, %247, %227, %219, %207, %202, %196, %198, %170, %166, %156
  %287 = phi i8 [ %15, %156 ], [ %15, %166 ], [ %15, %170 ], [ %15, %198 ], [ %15, %196 ], [ %15, %202 ], [ %15, %207 ], [ %15, %219 ], [ %15, %227 ], [ %15, %247 ], [ %15, %250 ], [ 1, %249 ], [ %15, %253 ], [ %15, %258 ], [ %15, %268 ], [ %15, %229 ], [ %15, %280 ], [ %15, %209 ], [ %15, %270 ]
  %288 = phi i32 [ 3, %156 ], [ 3, %166 ], [ 3, %170 ], [ 3, %198 ], [ 3, %196 ], [ 3, %202 ], [ 3, %207 ], [ 3, %219 ], [ 3, %227 ], [ %240, %247 ], [ %240, %250 ], [ %240, %249 ], [ %240, %253 ], [ %240, %258 ], [ %240, %268 ], [ 3, %229 ], [ %282, %280 ], [ 3, %209 ], [ %271, %270 ]
  %289 = phi i32 [ 0, %156 ], [ 0, %166 ], [ 0, %170 ], [ 0, %198 ], [ 0, %196 ], [ 0, %202 ], [ 0, %207 ], [ 0, %219 ], [ 1, %227 ], [ 1, %247 ], [ 1, %250 ], [ 1, %249 ], [ 1, %253 ], [ 1, %258 ], [ 1, %268 ], [ 1, %229 ], [ %283, %280 ], [ 0, %209 ], [ 1, %270 ]
  %290 = phi i8 [ 0, %156 ], [ 0, %166 ], [ 0, %170 ], [ 0, %198 ], [ 0, %196 ], [ 0, %202 ], [ 0, %207 ], [ 0, %219 ], [ 0, %227 ], [ %239, %247 ], [ %239, %250 ], [ %239, %249 ], [ %239, %253 ], [ %239, %258 ], [ %239, %268 ], [ 0, %229 ], [ %284, %280 ], [ 0, %209 ], [ %272, %270 ]
  %291 = phi ptr [ %0, %156 ], [ %0, %166 ], [ %0, %170 ], [ %173, %198 ], [ %173, %196 ], [ %173, %202 ], [ %173, %207 ], [ %173, %219 ], [ %184, %227 ], [ %241, %247 ], [ %241, %250 ], [ %0, %249 ], [ %241, %253 ], [ %241, %258 ], [ %241, %268 ], [ %184, %229 ], [ %285, %280 ], [ %173, %209 ], [ %273, %270 ]
  %292 = phi i32 [ 1, %156 ], [ 1, %166 ], [ 1, %170 ], [ 1, %198 ], [ 5, %196 ], [ 1, %202 ], [ 1, %207 ], [ 1, %219 ], [ 1, %227 ], [ 1, %247 ], [ 1, %250 ], [ 2, %249 ], [ 1, %253 ], [ 1, %258 ], [ 1, %268 ], [ 0, %229 ], [ 1, %280 ], [ 1, %209 ], [ 0, %270 ]
  switch i32 %292, label %329 [
    i32 0, label %293
    i32 2, label %37
    i32 5, label %293
  ], !prof !405

293:                                              ; preds = %286, %148, %78, %286
  %294 = phi i8 [ %38, %148 ], [ %38, %78 ], [ %287, %286 ], [ %287, %286 ]
  %295 = phi i32 [ %39, %148 ], [ %39, %78 ], [ %288, %286 ], [ %288, %286 ]
  %296 = phi i32 [ %149, %148 ], [ %40, %78 ], [ %289, %286 ], [ %289, %286 ]
  %297 = phi i8 [ %150, %148 ], [ %41, %78 ], [ %290, %286 ], [ %290, %286 ]
  %298 = phi ptr [ %151, %148 ], [ %59, %78 ], [ %291, %286 ], [ %291, %286 ]
  br label %299

299:                                              ; preds = %299, %293
  %300 = phi ptr [ %298, %293 ], [ %308, %299 ]
  %301 = load i8, ptr %300, align 1, !tbaa !147
  %302 = zext i8 %301 to i64
  %303 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %302
  %304 = load i32, ptr %303, align 4, !tbaa !155
  %305 = freeze i32 %304
  %306 = and i32 %305, 17408
  %307 = icmp eq i32 %306, 17408
  %308 = getelementptr inbounds i8, ptr %300, i64 1
  br i1 %307, label %299, label %309, !prof !406, !llvm.loop !407

309:                                              ; preds = %299
  %310 = and i32 %305, 2
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %316, !prof !408

312:                                              ; preds = %309
  switch i8 %301, label %313 [
    i8 125, label %316
    i8 123, label %316
    i8 59, label %316
    i8 0, label %316
  ], !prof !409

313:                                              ; preds = %312
  %314 = icmp eq ptr %2, null
  br i1 %314, label %329, label %315

315:                                              ; preds = %313
  store ptr @.str.47, ptr %2, align 8, !tbaa !142
  br label %329

316:                                              ; preds = %312, %312, %312, %312, %309
  br i1 %8, label %319, label %317, !prof !406

317:                                              ; preds = %316
  %318 = and i8 %294, 1
  store i8 %318, ptr %3, align 1, !tbaa !135
  br label %319

319:                                              ; preds = %317, %316
  %320 = icmp eq ptr %5, null
  br i1 %320, label %322, label %321, !prof !406

321:                                              ; preds = %319
  store i32 %295, ptr %5, align 4, !tbaa !155
  br label %322

322:                                              ; preds = %321, %319
  %323 = icmp eq ptr %4, null
  br i1 %323, label %325, label %324, !prof !406

324:                                              ; preds = %322
  store i32 %296, ptr %4, align 4, !tbaa !155
  br label %325

325:                                              ; preds = %324, %322
  %326 = icmp eq ptr %6, null
  br i1 %326, label %329, label %327, !prof !406

327:                                              ; preds = %325
  %328 = and i8 %297, 1
  store i8 %328, ptr %6, align 1, !tbaa !135
  br label %329

329:                                              ; preds = %286, %325, %327, %313, %315, %79, %81, %55, %57, %34, %36, %148
  %330 = phi ptr [ %0, %148 ], [ %0, %36 ], [ %0, %34 ], [ %0, %57 ], [ %0, %55 ], [ %0, %81 ], [ %0, %79 ], [ %0, %315 ], [ %0, %313 ], [ %300, %327 ], [ %300, %325 ], [ %0, %286 ]
  ret ptr %330
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_scan_version(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #7 !prof !410 {
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = zext i1 %2 to i8
  store i8 %9, ptr %4, align 1, !tbaa !135
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #44
  store ptr null, ptr %5, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #44
  store i32 0, ptr %6, align 4, !tbaa !155
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #44
  store i32 3, ptr %7, align 4, !tbaa !155
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #44
  store i8 0, ptr %8, align 1, !tbaa !135
  br label %10

10:                                               ; preds = %10, %3
  %11 = phi ptr [ %0, %3 ], [ %18, %10 ]
  %12 = load i8, ptr %11, align 1, !tbaa !147
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !155
  %16 = and i32 %15, 17408
  %17 = icmp eq i32 %16, 17408
  %18 = getelementptr inbounds i8, ptr %11, i64 1
  br i1 %17, label %10, label %19, !prof !406, !llvm.loop !411

19:                                               ; preds = %10
  %20 = call ptr @Perl_prescan_version(ptr noundef nonnull %11, i1 noundef zeroext false, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8)
  %21 = load ptr, ptr %5, align 8, !tbaa !142
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23, !prof !408

23:                                               ; preds = %19
  %24 = icmp eq i8 %12, 117
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  %26 = getelementptr inbounds i8, ptr %11, i64 1
  %27 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(5) @.str.52) #48
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25, %23
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.8, ptr noundef nonnull %21)
  br label %30

30:                                               ; preds = %25, %29, %19
  %31 = load i8, ptr %11, align 1, !tbaa !147
  %32 = icmp eq i8 %31, 118
  %33 = zext i1 %32 to i64
  %34 = getelementptr inbounds i8, ptr %11, i64 %33
  %35 = call ptr @Perl_newSV_type(i32 noundef 11) #44
  %36 = call ptr @Perl_newSVrv(ptr noundef %1, ptr noundef nonnull @.str.53) #44
  call void @Perl_sv_upgrade(ptr noundef %36, i32 noundef 12) #44
  %37 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !182
  %39 = or i32 %38, 536870912
  store i32 %39, ptr %37, align 4, !tbaa !182
  %40 = load i8, ptr %4, align 1, !tbaa !135, !range !139, !noundef !140
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %42, !prof !412

42:                                               ; preds = %30
  %43 = call ptr @Perl_newSViv(i64 noundef 1) #44
  %44 = call ptr @Perl_hv_common(ptr noundef %36, ptr noundef null, ptr noundef nonnull @.str.54, i64 noundef 2, i32 noundef 0, i32 noundef 36, ptr noundef %43, i32 noundef 0) #44
  br label %45

45:                                               ; preds = %42, %30
  %46 = load i8, ptr %8, align 1, !tbaa !135, !range !139, !noundef !140
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48, !prof !408

48:                                               ; preds = %45
  %49 = call ptr @Perl_newSViv(i64 noundef 1) #44
  %50 = call ptr @Perl_hv_common(ptr noundef %36, ptr noundef null, ptr noundef nonnull @.str.55, i64 noundef 5, i32 noundef 0, i32 noundef 36, ptr noundef %49, i32 noundef 0) #44
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i8, ptr %4, align 1, !tbaa !135, !range !139, !noundef !140
  %53 = icmp eq i8 %52, 0
  %54 = load i32, ptr %7, align 4
  %55 = icmp slt i32 %54, 3
  %56 = select i1 %53, i1 %55, i1 false, !prof !412
  br i1 %56, label %57, label %61, !prof !406

57:                                               ; preds = %51
  %58 = sext i32 %54 to i64
  %59 = call ptr @Perl_newSViv(i64 noundef %58) #44
  %60 = call ptr @Perl_hv_common(ptr noundef %36, ptr noundef null, ptr noundef nonnull @.str.56, i64 noundef 5, i32 noundef 0, i32 noundef 36, ptr noundef %59, i32 noundef 0) #44
  br label %61

61:                                               ; preds = %57, %51
  br label %62

62:                                               ; preds = %61, %62
  %63 = phi ptr [ %70, %62 ], [ %34, %61 ]
  %64 = load i8, ptr %63, align 1, !tbaa !147
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !155
  %68 = and i32 %67, 2
  %69 = icmp eq i32 %68, 0
  %70 = getelementptr inbounds i8, ptr %63, i64 1
  br i1 %69, label %71, label %62, !prof !413, !llvm.loop !414

71:                                               ; preds = %62
  %72 = and i32 %67, 16388
  %73 = icmp eq i32 %72, 16388
  br i1 %73, label %211, label %74, !prof !406

74:                                               ; preds = %71, %206
  %75 = phi i8 [ %139, %206 ], [ 0, %71 ]
  %76 = phi ptr [ %207, %206 ], [ %63, %71 ]
  %77 = phi ptr [ %174, %206 ], [ %34, %71 ]
  %78 = load i8, ptr %4, align 1, !tbaa !135, !range !139, !noundef !140
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %113, !prof !415

80:                                               ; preds = %74
  %81 = icmp ugt ptr %77, %11
  %82 = load i32, ptr %6, align 4
  %83 = icmp eq i32 %82, 1
  %84 = select i1 %81, i1 %83, i1 false, !prof !416
  br i1 %84, label %85, label %113, !prof !416

85:                                               ; preds = %80
  %86 = icmp ult ptr %77, %76
  br i1 %86, label %87, label %138, !prof !417

87:                                               ; preds = %85, %103
  %88 = phi ptr [ %111, %103 ], [ %77, %85 ]
  %89 = phi i32 [ %97, %103 ], [ 100, %85 ]
  %90 = phi i32 [ %105, %103 ], [ 0, %85 ]
  %91 = phi i8 [ %104, %103 ], [ %75, %85 ]
  %92 = load i8, ptr %88, align 1, !tbaa !147
  %93 = sext i8 %92 to i32
  %94 = add nsw i32 %93, -48
  %95 = mul nsw i32 %94, %89
  %96 = add nsw i32 %95, %90
  %97 = sdiv i32 %89, 10
  %98 = call i32 @llvm.abs.i32(i32 %90, i1 true)
  %99 = call i32 @llvm.abs.i32(i32 %96, i1 true)
  %100 = icmp ugt i32 %98, %99
  br i1 %100, label %101, label %103, !prof !418

101:                                              ; preds = %87
  %102 = getelementptr inbounds i8, ptr %76, i64 -1
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 15, ptr noundef nonnull @.str.57, i32 noundef 2147483647)
  br label %103

103:                                              ; preds = %87, %101
  %104 = phi i8 [ 1, %101 ], [ %91, %87 ]
  %105 = phi i32 [ 2147483647, %101 ], [ %96, %87 ]
  %106 = phi ptr [ %102, %101 ], [ %88, %87 ]
  %107 = getelementptr inbounds i8, ptr %106, i64 1
  %108 = load i8, ptr %107, align 1, !tbaa !147
  %109 = icmp eq i8 %108, 95
  %110 = getelementptr inbounds i8, ptr %106, i64 2
  %111 = select i1 %109, ptr %110, ptr %107, !prof !418
  %112 = icmp ult ptr %111, %76
  br i1 %112, label %87, label %138, !prof !419, !llvm.loop !420

113:                                              ; preds = %80, %74
  %114 = getelementptr inbounds i8, ptr %76, i64 -1
  %115 = icmp ult ptr %114, %77
  br i1 %115, label %138, label %116, !prof !421

116:                                              ; preds = %113, %132
  %117 = phi ptr [ %136, %132 ], [ %114, %113 ]
  %118 = phi i32 [ %126, %132 ], [ 1, %113 ]
  %119 = phi i32 [ %134, %132 ], [ 0, %113 ]
  %120 = phi i8 [ %133, %132 ], [ %75, %113 ]
  %121 = load i8, ptr %117, align 1, !tbaa !147
  %122 = sext i8 %121 to i32
  %123 = add nsw i32 %122, -48
  %124 = mul nsw i32 %123, %118
  %125 = add nsw i32 %124, %119
  %126 = mul nsw i32 %118, 10
  %127 = call i32 @llvm.abs.i32(i32 %119, i1 true)
  %128 = call i32 @llvm.abs.i32(i32 %125, i1 true)
  %129 = icmp ugt i32 %127, %128
  br i1 %129, label %130, label %132, !prof !422

130:                                              ; preds = %116
  %131 = getelementptr inbounds i8, ptr %77, i64 -1
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 15, ptr noundef nonnull @.str.58)
  br label %132

132:                                              ; preds = %116, %130
  %133 = phi i8 [ 1, %130 ], [ %120, %116 ]
  %134 = phi i32 [ 2147483647, %130 ], [ %125, %116 ]
  %135 = phi ptr [ %131, %130 ], [ %117, %116 ]
  %136 = getelementptr inbounds i8, ptr %135, i64 -1
  %137 = icmp ult ptr %136, %77
  br i1 %137, label %138, label %116, !prof !423, !llvm.loop !424

138:                                              ; preds = %132, %103, %113, %85
  %139 = phi i8 [ %75, %85 ], [ %75, %113 ], [ %104, %103 ], [ %133, %132 ]
  %140 = phi i32 [ 0, %85 ], [ 0, %113 ], [ %105, %103 ], [ %134, %132 ]
  %141 = sext i32 %140 to i64
  %142 = call ptr @Perl_newSViv(i64 noundef %141) #44
  call void @Perl_av_push(ptr noundef %35, ptr noundef %142) #44
  %143 = and i8 %139, 1
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %208, !prof !425

145:                                              ; preds = %138
  %146 = load i8, ptr %76, align 1, !tbaa !147
  switch i8 %146, label %167 [
    i8 46, label %147
    i8 95, label %149
    i8 44, label %159
  ], !prof !426

147:                                              ; preds = %145
  %148 = getelementptr inbounds i8, ptr %76, i64 1
  br label %173

149:                                              ; preds = %145
  %150 = getelementptr inbounds i8, ptr %76, i64 1
  %151 = load i8, ptr %150, align 1, !tbaa !147
  %152 = zext i8 %151 to i64
  %153 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !155
  %155 = and i32 %154, 2
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %173

157:                                              ; preds = %149
  %158 = icmp eq i8 %146, 44
  br i1 %158, label %159, label %167, !prof !427

159:                                              ; preds = %145, %157
  %160 = getelementptr inbounds i8, ptr %76, i64 1
  %161 = load i8, ptr %160, align 1, !tbaa !147
  %162 = zext i8 %161 to i64
  %163 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !155
  %165 = and i32 %164, 2
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %145, %159, %157
  %168 = zext i8 %146 to i64
  %169 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %168
  %170 = load i32, ptr %169, align 4, !tbaa !155
  %171 = and i32 %170, 2
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %208, label %173, !prof !428

173:                                              ; preds = %159, %149, %167, %147
  %174 = phi ptr [ %148, %147 ], [ %76, %167 ], [ %150, %149 ], [ %160, %159 ]
  %175 = load i8, ptr %4, align 1, !tbaa !135, !range !139, !noundef !140
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %186, label %177, !prof !429

177:                                              ; preds = %173, %177
  %178 = phi ptr [ %185, %177 ], [ %174, %173 ]
  %179 = load i8, ptr %178, align 1, !tbaa !147
  %180 = zext i8 %179 to i64
  %181 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !155
  %183 = and i32 %182, 2
  %184 = icmp eq i32 %183, 0
  %185 = getelementptr inbounds i8, ptr %178, i64 1
  br i1 %184, label %206, label %177, !prof !387, !llvm.loop !430

186:                                              ; preds = %173, %201
  %187 = phi ptr [ %205, %201 ], [ %174, %173 ]
  %188 = phi i32 [ %204, %201 ], [ 0, %173 ]
  %189 = load i8, ptr %187, align 1, !tbaa !147
  %190 = zext i8 %189 to i64
  %191 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %190
  %192 = load i32, ptr %191, align 4, !tbaa !155
  %193 = and i32 %192, 2
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %199, !prof !431

195:                                              ; preds = %186
  %196 = icmp eq i8 %189, 95
  %197 = icmp ult i32 %188, 3
  %198 = select i1 %196, i1 %197, i1 false, !prof !398
  br i1 %198, label %201, label %206, !prof !398

199:                                              ; preds = %186
  %200 = icmp ult i32 %188, 3
  br i1 %200, label %201, label %206, !prof !432

201:                                              ; preds = %195, %199
  %202 = icmp ne i8 %189, 95
  %203 = zext i1 %202 to i32
  %204 = add nuw nsw i32 %188, %203
  %205 = getelementptr inbounds i8, ptr %187, i64 1
  br label %186, !llvm.loop !433

206:                                              ; preds = %177, %199, %195
  %207 = phi ptr [ %187, %195 ], [ %187, %199 ], [ %178, %177 ]
  br label %74, !llvm.loop !434

208:                                              ; preds = %167, %138
  %209 = phi ptr [ %20, %138 ], [ %76, %167 ]
  %210 = icmp ne i8 %143, 0
  br label %211

211:                                              ; preds = %208, %71
  %212 = phi i1 [ false, %71 ], [ %210, %208 ]
  %213 = phi ptr [ %34, %71 ], [ %209, %208 ]
  %214 = load i8, ptr %4, align 1, !tbaa !135, !range !139, !noundef !140
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %228, label %216, !prof !412

216:                                              ; preds = %211
  %217 = load ptr, ptr %35, align 8, !tbaa !315
  %218 = getelementptr inbounds %struct.xpvav, ptr %217, i64 0, i32 2
  %219 = load i64, ptr %218, align 8, !tbaa !317
  %220 = icmp slt i64 %219, 2
  br i1 %220, label %221, label %228, !prof !270

221:                                              ; preds = %216
  %222 = sub nsw i64 2, %219
  br label %223

223:                                              ; preds = %221, %223
  %224 = phi i64 [ %225, %223 ], [ %222, %221 ]
  %225 = add nsw i64 %224, -1
  %226 = call ptr @Perl_newSViv(i64 noundef 0) #44
  call void @Perl_av_push(ptr noundef nonnull %35, ptr noundef %226) #44
  %227 = icmp sgt i64 %224, 1
  br i1 %227, label %223, label %228, !prof !270, !llvm.loop !435

228:                                              ; preds = %223, %216, %211
  br i1 %212, label %229, label %234, !prof !406

229:                                              ; preds = %228
  %230 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.59, i64 noundef 5) #44
  %231 = call ptr @Perl_hv_common(ptr noundef %36, ptr noundef null, ptr noundef nonnull @.str.60, i64 noundef 8, i32 noundef 0, i32 noundef 36, ptr noundef %230, i32 noundef 0) #44
  %232 = call ptr @Perl_newSViv(i64 noundef 1) #44
  %233 = call ptr @Perl_hv_common(ptr noundef %36, ptr noundef null, ptr noundef nonnull @.str.61, i64 noundef 4, i32 noundef 0, i32 noundef 36, ptr noundef %232, i32 noundef 0) #44
  br label %256

234:                                              ; preds = %228
  %235 = icmp ugt ptr %213, %11
  br i1 %235, label %236, label %252, !prof !408

236:                                              ; preds = %234
  %237 = ptrtoint ptr %213 to i64
  %238 = ptrtoint ptr %11 to i64
  %239 = sub i64 %237, %238
  %240 = call ptr @Perl_newSVpvn(ptr noundef nonnull %11, i64 noundef %239) #44
  %241 = load i8, ptr %4, align 1, !tbaa !135, !range !139, !noundef !140
  %242 = icmp ne i8 %241, 0
  %243 = load i32, ptr %6, align 4
  %244 = icmp eq i32 %243, 1
  %245 = select i1 %242, i1 %244, i1 false, !prof !436
  br i1 %245, label %246, label %250, !prof !406

246:                                              ; preds = %236
  %247 = load i8, ptr %11, align 1, !tbaa !147
  %248 = icmp eq i8 %247, 118
  br i1 %248, label %250, label %249

249:                                              ; preds = %246
  call void @Perl_sv_insert_flags(ptr noundef %240, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.62, i64 noundef 1, i32 noundef 2) #44
  br label %250

250:                                              ; preds = %249, %246, %236
  %251 = call ptr @Perl_hv_common(ptr noundef %36, ptr noundef null, ptr noundef nonnull @.str.60, i64 noundef 8, i32 noundef 0, i32 noundef 36, ptr noundef %240, i32 noundef 0) #44
  br label %256

252:                                              ; preds = %234
  %253 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.63, i64 noundef 1) #44
  %254 = call ptr @Perl_hv_common(ptr noundef %36, ptr noundef null, ptr noundef nonnull @.str.60, i64 noundef 8, i32 noundef 0, i32 noundef 36, ptr noundef %253, i32 noundef 0) #44
  %255 = call ptr @Perl_newSViv(i64 noundef 0) #44
  call void @Perl_av_push(ptr noundef %35, ptr noundef %255) #44
  br label %256

256:                                              ; preds = %250, %252, %229
  %257 = call ptr @Perl_newRV_noinc(ptr noundef %35) #44
  %258 = call ptr @Perl_hv_common(ptr noundef %36, ptr noundef null, ptr noundef nonnull @.str.53, i64 noundef 7, i32 noundef 0, i32 noundef 36, ptr noundef %257, i32 noundef 0) #44
  %259 = load i8, ptr %213, align 1, !tbaa !147
  %260 = icmp eq i8 %259, 117
  br i1 %260, label %261, label %267, !prof !406

261:                                              ; preds = %256
  %262 = getelementptr inbounds i8, ptr %213, i64 1
  %263 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %262, ptr noundef nonnull dereferenceable(5) @.str.52) #48
  %264 = icmp eq i32 %263, 0
  %265 = select i1 %264, i64 5, i64 0
  %266 = getelementptr inbounds i8, ptr %213, i64 %265
  br label %267

267:                                              ; preds = %261, %256
  %268 = phi ptr [ %213, %256 ], [ %266, %261 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #44
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #44
  ret ptr %268
}

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #15

declare ptr @Perl_newSVrv(ptr noundef, ptr noundef) local_unnamed_addr #15

declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #15

declare void @Perl_av_push(ptr noundef, ptr noundef) local_unnamed_addr #15

declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #15

declare void @Perl_sv_insert_flags(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #15

declare ptr @Perl_newRV_noinc(ptr noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_new_version(ptr noundef %0) local_unnamed_addr #3 !prof !437 {
  %2 = tail call ptr @Perl_newSV(i64 noundef 0) #44
  %3 = tail call i32 @Perl_sv_isobject(ptr noundef %0) #44
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %93, label %5, !prof !438

5:                                                ; preds = %1
  %6 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %0, ptr noundef nonnull @.str.53, i64 noundef 7, i32 noundef 0) #44
  br i1 %6, label %7, label %93, !prof !167

7:                                                ; preds = %5
  %8 = tail call ptr @Perl_newSV_type(i32 noundef 11) #44
  %9 = tail call ptr @Perl_newSVrv(ptr noundef %2, ptr noundef nonnull @.str.53) #44
  tail call void @Perl_sv_upgrade(ptr noundef %9, i32 noundef 12) #44
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !182
  %12 = or i32 %11, 536870912
  store i32 %12, ptr %10, align 4, !tbaa !182
  %13 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !182
  %15 = and i32 %14, 2048
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17, !prof !270

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !147
  br label %20

20:                                               ; preds = %17, %7
  %21 = phi ptr [ %19, %17 ], [ %0, %7 ]
  %22 = tail call ptr @Perl_hv_common_key_len(ptr noundef %21, ptr noundef nonnull @.str.54, i32 noundef 2, i32 noundef 8, ptr noundef null, i32 noundef 0) #44
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24, !prof !270

24:                                               ; preds = %20
  %25 = tail call ptr @Perl_newSViv(i64 noundef 1) #44
  %26 = tail call ptr @Perl_hv_common(ptr noundef %9, ptr noundef null, ptr noundef nonnull @.str.54, i64 noundef 2, i32 noundef 0, i32 noundef 36, ptr noundef %25, i32 noundef 0) #44
  br label %27

27:                                               ; preds = %20, %24
  %28 = tail call ptr @Perl_hv_common_key_len(ptr noundef %21, ptr noundef nonnull @.str.55, i32 noundef 5, i32 noundef 8, ptr noundef null, i32 noundef 0) #44
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30, !prof !167

30:                                               ; preds = %27
  %31 = tail call ptr @Perl_newSViv(i64 noundef 1) #44
  %32 = tail call ptr @Perl_hv_common(ptr noundef %9, ptr noundef null, ptr noundef nonnull @.str.55, i64 noundef 5, i32 noundef 0, i32 noundef 36, ptr noundef %31, i32 noundef 0) #44
  br label %33

33:                                               ; preds = %27, %30
  %34 = tail call ptr @Perl_hv_common(ptr noundef %21, ptr noundef null, ptr noundef nonnull @.str.56, i64 noundef 5, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #44
  %35 = icmp eq ptr %34, null
  br i1 %35, label %54, label %36, !prof !167

36:                                               ; preds = %33
  %37 = load ptr, ptr %34, align 8, !tbaa !142
  %38 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !182
  %40 = and i32 %39, 2097408
  %41 = icmp eq i32 %40, 256
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load ptr, ptr %37, align 8, !tbaa !192
  %44 = getelementptr inbounds %struct.xpviv, ptr %43, i64 0, i32 4
  %45 = load i64, ptr %44, align 8, !tbaa !147
  br label %48

46:                                               ; preds = %36
  %47 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %37, i32 noundef 2) #44
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i64 [ %45, %42 ], [ %47, %46 ]
  %50 = shl i64 %49, 32
  %51 = ashr exact i64 %50, 32
  %52 = tail call ptr @Perl_newSViv(i64 noundef %51) #44
  %53 = tail call ptr @Perl_hv_common(ptr noundef %9, ptr noundef null, ptr noundef nonnull @.str.56, i64 noundef 5, i32 noundef 0, i32 noundef 36, ptr noundef %52, i32 noundef 0) #44
  br label %54

54:                                               ; preds = %48, %33
  %55 = tail call ptr @Perl_hv_common(ptr noundef %21, ptr noundef null, ptr noundef nonnull @.str.60, i64 noundef 8, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #44
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57, !prof !270

57:                                               ; preds = %54
  %58 = load ptr, ptr %55, align 8, !tbaa !142
  %59 = tail call ptr @Perl_newSVsv(ptr noundef %58) #44
  %60 = tail call ptr @Perl_hv_common(ptr noundef %9, ptr noundef null, ptr noundef nonnull @.str.60, i64 noundef 8, i32 noundef 0, i32 noundef 36, ptr noundef %59, i32 noundef 0) #44
  br label %61

61:                                               ; preds = %57, %54
  %62 = tail call ptr @Perl_hv_common(ptr noundef %21, ptr noundef null, ptr noundef nonnull @.str.53, i64 noundef 7, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #44
  %63 = load ptr, ptr %62, align 8, !tbaa !142
  %64 = getelementptr inbounds %struct.sv, ptr %63, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !147
  %66 = tail call i64 @Perl_av_len(ptr noundef %65) #44
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %90, label %68, !prof !287

68:                                               ; preds = %61, %82
  %69 = phi i64 [ %87, %82 ], [ 0, %61 ]
  %70 = tail call ptr @Perl_av_fetch(ptr noundef %65, i64 noundef %69, i32 noundef 0) #44
  %71 = load ptr, ptr %70, align 8, !tbaa !142
  %72 = getelementptr inbounds %struct.sv, ptr %71, i64 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !182
  %74 = and i32 %73, 2097408
  %75 = icmp eq i32 %74, 256
  br i1 %75, label %76, label %80, !prof !231

76:                                               ; preds = %68
  %77 = load ptr, ptr %71, align 8, !tbaa !192
  %78 = getelementptr inbounds %struct.xpviv, ptr %77, i64 0, i32 4
  %79 = load i64, ptr %78, align 8, !tbaa !147
  br label %82

80:                                               ; preds = %68
  %81 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %71, i32 noundef 2) #44
  br label %82

82:                                               ; preds = %80, %76
  %83 = phi i64 [ %79, %76 ], [ %81, %80 ]
  %84 = shl i64 %83, 32
  %85 = ashr exact i64 %84, 32
  %86 = tail call ptr @Perl_newSViv(i64 noundef %85) #44
  tail call void @Perl_av_push(ptr noundef %8, ptr noundef %86) #44
  %87 = add nuw nsw i64 %69, 1
  %88 = tail call i64 @Perl_av_len(ptr noundef %65) #44
  %89 = icmp slt i64 %69, %88
  br i1 %89, label %68, label %90, !prof !439, !llvm.loop !440

90:                                               ; preds = %82, %61
  %91 = tail call ptr @Perl_newRV_noinc(ptr noundef %8) #44
  %92 = tail call ptr @Perl_hv_common(ptr noundef %9, ptr noundef null, ptr noundef nonnull @.str.53, i64 noundef 7, i32 noundef 0, i32 noundef 36, ptr noundef %91, i32 noundef 0) #44
  br label %124

93:                                               ; preds = %5, %1
  %94 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %95 = load i32, ptr %94, align 4, !tbaa !182
  %96 = and i32 %95, 14680064
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98, !prof !441

98:                                               ; preds = %93
  %99 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 86) #44
  br label %100

100:                                              ; preds = %93, %98
  %101 = phi ptr [ %99, %98 ], [ null, %93 ]
  %102 = icmp eq ptr %101, null
  br i1 %102, label %115, label %103, !prof !441

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.magic, ptr %101, i64 0, i32 5
  %105 = load i64, ptr %104, align 8, !tbaa !189
  %106 = getelementptr inbounds %struct.magic, ptr %101, i64 0, i32 7
  %107 = load ptr, ptr %106, align 8, !tbaa !198
  tail call void @Perl_sv_setpvn(ptr noundef %2, ptr noundef %107, i64 noundef %105) #44
  %108 = load i8, ptr %107, align 1, !tbaa !147
  %109 = zext i8 %108 to i64
  %110 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !155
  %112 = and i32 %111, 2
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %118, label %114, !prof !270

114:                                              ; preds = %103
  tail call void @Perl_sv_insert_flags(ptr noundef %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.62, i64 noundef 1, i32 noundef 2) #44
  br label %118

115:                                              ; preds = %100
  %116 = icmp eq ptr %2, %0
  br i1 %116, label %118, label %117, !prof !442

117:                                              ; preds = %115
  tail call void @Perl_sv_setsv_flags(ptr noundef %2, ptr noundef %0, i32 noundef 1554) #44
  br label %118

118:                                              ; preds = %114, %103, %117, %115
  %119 = tail call ptr @Perl_sv_2mortal(ptr noundef %2) #44
  %120 = tail call ptr @Perl_upg_version(ptr noundef %2, i1 noundef zeroext false)
  %121 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 1
  %122 = load i32, ptr %121, align 8, !tbaa !275
  %123 = add i32 %122, 1
  store i32 %123, ptr %121, align 8, !tbaa !275
  br label %124

124:                                              ; preds = %118, %90
  ret ptr %2
}

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #15

declare i32 @Perl_sv_isobject(ptr noundef) local_unnamed_addr #15

declare zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #15

declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #15

declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #15

declare i64 @Perl_av_len(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @Perl_upg_version(ptr noundef returned %0, i1 noundef zeroext %1) local_unnamed_addr #7 !prof !410 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !182
  %8 = and i32 %7, -2147483392
  %9 = icmp eq i32 %8, -2147483392
  br i1 %9, label %10, label %15, !prof !406

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !192
  %12 = getelementptr inbounds %struct.xpvuv, ptr %11, i64 0, i32 4
  %13 = load i64, ptr %12, align 8, !tbaa !147
  %14 = icmp ugt i64 %13, 2147483647
  br i1 %14, label %23, label %15

15:                                               ; preds = %10, %2
  %16 = and i32 %7, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %29, label %18, !prof !443

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !192
  %20 = getelementptr inbounds %struct.xpviv, ptr %19, i64 0, i32 4
  %21 = load i64, ptr %20, align 8, !tbaa !147
  %22 = icmp sgt i64 %21, 2147483647
  br i1 %22, label %23, label %26, !prof !270

23:                                               ; preds = %18, %10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #44
  %24 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef nonnull %3, i64 poison, ptr noundef nonnull @.str.64, i32 noundef 2147483647)
  %25 = call ptr @Perl_savepvn(ptr noundef nonnull %3, i32 noundef %24)
  call void @Perl_save_pushptr(ptr noundef %25, i32 noundef 10) #44
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 15, ptr noundef nonnull @.str.57, i32 noundef 2147483647)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #44
  br label %141

26:                                               ; preds = %18
  br i1 %17, label %29, label %27, !prof !443

27:                                               ; preds = %26
  %28 = tail call ptr @Perl_savesvpv(ptr noundef nonnull %0)
  tail call void @Perl_save_pushptr(ptr noundef %28, i32 noundef 10) #44
  br label %141

29:                                               ; preds = %15, %26
  %30 = and i32 %7, 512
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %103, label %32, !prof !444

32:                                               ; preds = %29
  %33 = and i32 %7, 1024
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %40, label %35, !prof !445

35:                                               ; preds = %32
  %36 = load ptr, ptr %0, align 8, !tbaa !192
  %37 = getelementptr inbounds %struct.xpv, ptr %36, i64 0, i32 2
  %38 = load i64, ptr %37, align 8, !tbaa !193
  %39 = icmp eq i64 %38, 3
  br i1 %39, label %103, label %40

40:                                               ; preds = %35, %32
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #44
  %41 = load ptr, ptr %0, align 8, !tbaa !192
  %42 = getelementptr inbounds %struct.xpvnv, ptr %41, i64 0, i32 5
  %43 = load double, ptr %42, align 8, !tbaa !147
  %44 = fcmp ogt double %43, 0x4A8561D276DDFDC0
  br i1 %44, label %45, label %47, !prof !446

45:                                               ; preds = %40
  %46 = tail call ptr @Perl_newSV(i64 noundef 64) #44
  br label %47

47:                                               ; preds = %40, %45
  %48 = phi ptr [ %46, %45 ], [ null, %40 ]
  %49 = icmp eq ptr %48, null
  %50 = load ptr, ptr %0, align 8, !tbaa !192
  %51 = getelementptr inbounds %struct.xpvnv, ptr %50, i64 0, i32 5
  %52 = load double, ptr %51, align 8, !tbaa !147
  br i1 %49, label %59, label %53, !prof !445

53:                                               ; preds = %47
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef nonnull %48, ptr noundef nonnull @.str.65, double noundef %52) #44
  %54 = load ptr, ptr %48, align 8, !tbaa !192
  %55 = getelementptr inbounds %struct.xpv, ptr %54, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !193
  %57 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !147
  br label %62

59:                                               ; preds = %47
  %60 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef nonnull %4, i64 poison, ptr noundef nonnull @.str.65, double noundef %52)
  %61 = sext i32 %60 to i64
  br label %62

62:                                               ; preds = %59, %53
  %63 = phi i64 [ %56, %53 ], [ %61, %59 ]
  %64 = phi ptr [ %58, %53 ], [ %4, %59 ]
  br label %65

65:                                               ; preds = %65, %62
  %66 = phi i64 [ %63, %62 ], [ %67, %65 ]
  %67 = add i64 %66, -1
  %68 = getelementptr inbounds i8, ptr %64, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !147
  %70 = icmp eq i8 %69, 48
  %71 = icmp ne i64 %66, 0
  %72 = and i1 %71, %70
  br i1 %72, label %65, label %73, !prof !447, !llvm.loop !448

73:                                               ; preds = %65
  %74 = icmp eq i8 %69, 46
  %75 = select i1 %74, i64 %67, i64 %66, !prof !449
  %76 = shl i64 %75, 32
  %77 = add i64 %76, 4294967296
  %78 = ashr exact i64 %77, 32
  %79 = tail call i64 @llvm.umax.i64(i64 %78, i64 1)
  %80 = tail call noalias ptr @malloc(i64 noundef %79) #43
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %86, !prof !264

82:                                               ; preds = %73
  %83 = load i8, ptr @PL_nomemok, align 1, !tbaa !135, !range !139, !noundef !140
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  tail call void @Perl_croak_no_mem()
  br label %86

86:                                               ; preds = %85, %82, %73
  %87 = phi ptr [ null, %85 ], [ %80, %73 ], [ null, %82 ]
  %88 = icmp eq ptr %64, null
  br i1 %88, label %93, label %89, !prof !264

89:                                               ; preds = %86
  %90 = shl i64 %75, 32
  %91 = ashr exact i64 %90, 32
  %92 = getelementptr inbounds i8, ptr %87, i64 %91
  store i8 0, ptr %92, align 1, !tbaa !147
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %87, ptr nonnull align 1 %64, i64 %91, i1 false), !prof !450
  br label %94

93:                                               ; preds = %86
  call void @llvm.memset.p0.i64(ptr align 1 %87, i8 0, i64 %78, i1 false)
  br label %94

94:                                               ; preds = %89, %93
  call void @Perl_save_pushptr(ptr noundef %87, i32 noundef 10) #44
  br i1 %49, label %102, label %95, !prof !445

95:                                               ; preds = %94
  %96 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 1
  %97 = load i32, ptr %96, align 8, !tbaa !275
  %98 = icmp ugt i32 %97, 1
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = add i32 %97, -1
  store i32 %100, ptr %96, align 8, !tbaa !275
  br label %102

101:                                              ; preds = %95
  call void @Perl_sv_free2(ptr noundef nonnull %48, i32 noundef %97) #44
  br label %102

102:                                              ; preds = %94, %99, %101
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #44
  br label %141

103:                                              ; preds = %35, %29
  %104 = and i32 %7, 14680064
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106, !prof !451

106:                                              ; preds = %103
  %107 = tail call ptr @Perl_mg_find(ptr noundef %0, i32 noundef 86) #44
  br label %108

108:                                              ; preds = %103, %106
  %109 = phi ptr [ %107, %106 ], [ null, %103 ]
  %110 = icmp eq ptr %109, null
  br i1 %110, label %118, label %111, !prof !451

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.magic, ptr %109, i64 0, i32 7
  %113 = load ptr, ptr %112, align 8, !tbaa !198
  %114 = getelementptr inbounds %struct.magic, ptr %109, i64 0, i32 5
  %115 = load i64, ptr %114, align 8, !tbaa !189
  %116 = trunc i64 %115 to i32
  %117 = tail call ptr @Perl_savepvn(ptr noundef %113, i32 noundef %116)
  tail call void @Perl_save_pushptr(ptr noundef %117, i32 noundef 10) #44
  br label %141

118:                                              ; preds = %108
  %119 = load i32, ptr %6, align 4, !tbaa !182
  %120 = and i32 %119, 1024
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %140, label %122, !prof !452

122:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #44
  %123 = and i32 %119, 2098176
  %124 = icmp eq i32 %123, 1024
  br i1 %124, label %125, label %131, !prof !451

125:                                              ; preds = %122
  %126 = load ptr, ptr %0, align 8, !tbaa !192
  %127 = getelementptr inbounds %struct.xpv, ptr %126, i64 0, i32 2
  %128 = load i64, ptr %127, align 8, !tbaa !193
  store i64 %128, ptr %5, align 8, !tbaa !195
  %129 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !147
  br label %133

131:                                              ; preds = %122
  %132 = call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 2) #44
  br label %133

133:                                              ; preds = %131, %125
  %134 = phi ptr [ %130, %125 ], [ %132, %131 ]
  %135 = load ptr, ptr %0, align 8, !tbaa !192
  %136 = getelementptr inbounds %struct.xpv, ptr %135, i64 0, i32 2
  %137 = load i64, ptr %136, align 8, !tbaa !193
  %138 = trunc i64 %137 to i32
  %139 = call ptr @Perl_savepvn(ptr noundef %134, i32 noundef %138)
  call void @Perl_save_pushptr(ptr noundef %139, i32 noundef 10) #44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #44
  br label %141

140:                                              ; preds = %118
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47)
  br label %141

141:                                              ; preds = %27, %111, %140, %133, %102, %23
  %142 = phi ptr [ %25, %23 ], [ %28, %27 ], [ %117, %111 ], [ %139, %133 ], [ null, %140 ], [ %87, %102 ]
  %143 = phi i1 [ %1, %23 ], [ %1, %27 ], [ true, %111 ], [ %1, %133 ], [ %1, %140 ], [ %1, %102 ]
  %144 = call ptr @Perl_scan_version(ptr noundef %142, ptr noundef %0, i1 noundef zeroext %143)
  %145 = load i8, ptr %144, align 1, !tbaa !147
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %148, label %147, !prof !408

147:                                              ; preds = %141
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 12, ptr noundef nonnull @.str.66, ptr noundef %142, ptr noundef nonnull %144)
  br label %148

148:                                              ; preds = %147, %141
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @Perl_my_snprintf(ptr nocapture noundef %0, i64 %1, ptr nocapture noundef readonly %2, ...) local_unnamed_addr #7 !prof !453 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #44
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call i32 @vsprintf(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4) #44
  call void @llvm.va_end(ptr %4)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8, !prof !454

7:                                                ; preds = %3
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.79)
  br label %8

8:                                                ; preds = %7, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #44
  ret i32 %5
}

declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_vverify(ptr noundef %0) local_unnamed_addr #7 !prof !331 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !182
  %4 = and i32 %3, 2048
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !455

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !147
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ %0, %1 ]
  %11 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !182
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, 12
  br i1 %14, label %15, label %28, !prof !456

15:                                               ; preds = %9
  %16 = tail call ptr @Perl_hv_common(ptr noundef %10, ptr noundef null, ptr noundef nonnull @.str.53, i64 noundef 7, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #44
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18, !prof !457

18:                                               ; preds = %15
  %19 = load ptr, ptr %16, align 8, !tbaa !142
  %20 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !147
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23, !prof !457

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !182
  %26 = and i32 %25, 255
  %27 = icmp eq i32 %26, 11
  br i1 %27, label %29, label %28, !prof !456

28:                                               ; preds = %23, %18, %15, %9
  br label %29

29:                                               ; preds = %23, %28
  %30 = phi ptr [ null, %28 ], [ %10, %23 ]
  ret ptr %30
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_vnumify(ptr noundef %0) local_unnamed_addr #3 !prof !269 {
  %2 = tail call ptr @Perl_vverify(ptr noundef %0)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !270

4:                                                ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.67)
  br label %5

5:                                                ; preds = %4, %1
  %6 = tail call ptr @Perl_hv_common_key_len(ptr noundef %2, ptr noundef nonnull @.str.55, i32 noundef 5, i32 noundef 8, ptr noundef null, i32 noundef 0) #44
  %7 = icmp ne ptr %6, null
  %8 = tail call ptr @Perl_hv_common(ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.56, i64 noundef 5, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10, !prof !167

10:                                               ; preds = %5
  %11 = load ptr, ptr %8, align 8, !tbaa !142
  %12 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !182
  %14 = and i32 %13, 2097408
  %15 = icmp eq i32 %14, 256
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load ptr, ptr %11, align 8, !tbaa !192
  %18 = getelementptr inbounds %struct.xpviv, ptr %17, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !147
  br label %22

20:                                               ; preds = %10
  %21 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %11, i32 noundef 2) #44
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i64 [ %19, %16 ], [ %21, %20 ]
  %24 = trunc i64 %23 to i32
  br label %25

25:                                               ; preds = %5, %22
  %26 = phi i32 [ %24, %22 ], [ 3, %5 ]
  %27 = tail call ptr @Perl_hv_common(ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.53, i64 noundef 7, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #44
  %28 = load ptr, ptr %27, align 8, !tbaa !142
  %29 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !147
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34, !prof !270

32:                                               ; preds = %25
  %33 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.63, i64 noundef 1) #44
  br label %112

34:                                               ; preds = %25
  %35 = tail call i64 @Perl_av_len(ptr noundef nonnull %30) #44
  %36 = icmp eq i64 %35, -1
  br i1 %36, label %37, label %39, !prof !270

37:                                               ; preds = %34
  %38 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.63, i64 noundef 1) #44
  br label %112

39:                                               ; preds = %34
  %40 = tail call ptr @Perl_av_fetch(ptr noundef nonnull %30, i64 noundef 0, i32 noundef 0) #44
  %41 = load ptr, ptr %40, align 8, !tbaa !142
  %42 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !182
  %44 = and i32 %43, 2097408
  %45 = icmp eq i32 %44, 256
  br i1 %45, label %46, label %50, !prof !167

46:                                               ; preds = %39
  %47 = load ptr, ptr %41, align 8, !tbaa !192
  %48 = getelementptr inbounds %struct.xpviv, ptr %47, i64 0, i32 4
  %49 = load i64, ptr %48, align 8, !tbaa !147
  br label %52

50:                                               ; preds = %39
  %51 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %41, i32 noundef 2) #44
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i64 [ %49, %46 ], [ %51, %50 ]
  %54 = trunc i64 %53 to i32
  %55 = tail call i32 @llvm.abs.i32(i32 %54, i1 true)
  %56 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.68, i32 noundef %55) #44
  %57 = icmp sgt i64 %35, 1
  br i1 %57, label %58, label %89, !prof !355

58:                                               ; preds = %52
  %59 = icmp slt i32 %26, 3
  br label %60

60:                                               ; preds = %58, %86
  %61 = phi i64 [ 1, %58 ], [ %87, %86 ]
  %62 = tail call ptr @Perl_av_fetch(ptr noundef nonnull %30, i64 noundef %61, i32 noundef 0) #44
  %63 = load ptr, ptr %62, align 8, !tbaa !142
  %64 = getelementptr inbounds %struct.sv, ptr %63, i64 0, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !182
  %66 = and i32 %65, 2097408
  %67 = icmp eq i32 %66, 256
  br i1 %67, label %68, label %72, !prof !167

68:                                               ; preds = %60
  %69 = load ptr, ptr %63, align 8, !tbaa !192
  %70 = getelementptr inbounds %struct.xpviv, ptr %69, i64 0, i32 4
  %71 = load i64, ptr %70, align 8, !tbaa !147
  br label %74

72:                                               ; preds = %60
  %73 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %63, i32 noundef 2) #44
  br label %74

74:                                               ; preds = %72, %68
  %75 = phi i64 [ %71, %68 ], [ %73, %72 ]
  %76 = trunc i64 %75 to i32
  br i1 %59, label %77, label %85, !prof !270

77:                                               ; preds = %74
  %78 = icmp eq i32 %26, 2
  %79 = select i1 %78, i32 10, i32 100
  %80 = tail call i32 @llvm.abs.i32(i32 %76, i1 true)
  %81 = tail call i64 @div(i32 noundef %80, i32 noundef %79) #45
  %82 = trunc i64 %81 to i32
  %83 = lshr i64 %81, 32
  %84 = trunc i64 %83 to i32
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %56, ptr noundef nonnull @.str.69, i32 noundef %26, i32 noundef %82, i32 noundef %84) #44
  br label %86

85:                                               ; preds = %74
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %56, ptr noundef nonnull @.str.70, i32 noundef %26, i32 noundef %76) #44
  br label %86

86:                                               ; preds = %85, %77
  %87 = add nuw nsw i64 %61, 1
  %88 = icmp eq i64 %87, %35
  br i1 %88, label %89, label %60, !prof !355, !llvm.loop !458

89:                                               ; preds = %86, %52
  %90 = icmp sgt i64 %35, 0
  br i1 %90, label %91, label %111, !prof !167

91:                                               ; preds = %89
  %92 = tail call ptr @Perl_av_fetch(ptr noundef nonnull %30, i64 noundef %35, i32 noundef 0) #44
  %93 = load ptr, ptr %92, align 8, !tbaa !142
  %94 = getelementptr inbounds %struct.sv, ptr %93, i64 0, i32 2
  %95 = load i32, ptr %94, align 4, !tbaa !182
  %96 = and i32 %95, 2097408
  %97 = icmp eq i32 %96, 256
  br i1 %97, label %98, label %102, !prof !167

98:                                               ; preds = %91
  %99 = load ptr, ptr %93, align 8, !tbaa !192
  %100 = getelementptr inbounds %struct.xpviv, ptr %99, i64 0, i32 4
  %101 = load i64, ptr %100, align 8, !tbaa !147
  br label %104

102:                                              ; preds = %91
  %103 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %93, i32 noundef 2) #44
  br label %104

104:                                              ; preds = %102, %98
  %105 = phi i64 [ %101, %98 ], [ %103, %102 ]
  %106 = trunc i64 %105 to i32
  %107 = icmp eq i32 %26, 3
  %108 = select i1 %7, i1 %107, i1 false, !prof !270
  br i1 %108, label %109, label %110, !prof !270

109:                                              ; preds = %104
  tail call void @Perl_sv_catpvn_flags(ptr noundef %56, ptr noundef nonnull @.str.71, i64 noundef 1, i32 noundef 2) #44
  br label %110

110:                                              ; preds = %109, %104
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %56, ptr noundef nonnull @.str.70, i32 noundef %26, i32 noundef %106) #44
  br label %112

111:                                              ; preds = %89
  tail call void @Perl_sv_catpvn_flags(ptr noundef %56, ptr noundef nonnull @.str.72, i64 noundef 3, i32 noundef 2) #44
  br label %112

112:                                              ; preds = %110, %111, %37, %32
  %113 = phi ptr [ %38, %37 ], [ %33, %32 ], [ %56, %111 ], [ %56, %110 ]
  ret ptr %113
}

declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @div(i32 noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_vnormal(ptr noundef %0) local_unnamed_addr #3 !prof !141 {
  %2 = tail call ptr @Perl_vverify(ptr noundef %0)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.67)
  br label %5

5:                                                ; preds = %4, %1
  %6 = tail call ptr @Perl_hv_common_key_len(ptr noundef %2, ptr noundef nonnull @.str.55, i32 noundef 5, i32 noundef 8, ptr noundef null, i32 noundef 0) #44
  %7 = icmp eq ptr %6, null
  %8 = tail call ptr @Perl_hv_common(ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.53, i64 noundef 7, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #44
  %9 = load ptr, ptr %8, align 8, !tbaa !142
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !147
  %12 = tail call i64 @Perl_av_len(ptr noundef %11) #44
  %13 = trunc i64 %12 to i32
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.10, i64 noundef 0) #44
  br label %87

17:                                               ; preds = %5
  %18 = tail call ptr @Perl_av_fetch(ptr noundef %11, i64 noundef 0, i32 noundef 0) #44
  %19 = load ptr, ptr %18, align 8, !tbaa !142
  %20 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !182
  %22 = and i32 %21, 2097408
  %23 = icmp eq i32 %22, 256
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load ptr, ptr %19, align 8, !tbaa !192
  %26 = getelementptr inbounds %struct.xpviv, ptr %25, i64 0, i32 4
  %27 = load i64, ptr %26, align 8, !tbaa !147
  br label %30

28:                                               ; preds = %17
  %29 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %19, i32 noundef 2) #44
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i64 [ %27, %24 ], [ %29, %28 ]
  %32 = shl i64 %31, 32
  %33 = ashr exact i64 %32, 32
  %34 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.73, i64 noundef %33) #44
  %35 = icmp sgt i32 %13, 1
  br i1 %35, label %36, label %58

36:                                               ; preds = %30
  %37 = and i64 %12, 4294967295
  br label %38

38:                                               ; preds = %36, %52
  %39 = phi i64 [ 1, %36 ], [ %56, %52 ]
  %40 = tail call ptr @Perl_av_fetch(ptr noundef %11, i64 noundef %39, i32 noundef 0) #44
  %41 = load ptr, ptr %40, align 8, !tbaa !142
  %42 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !182
  %44 = and i32 %43, 2097408
  %45 = icmp eq i32 %44, 256
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load ptr, ptr %41, align 8, !tbaa !192
  %48 = getelementptr inbounds %struct.xpviv, ptr %47, i64 0, i32 4
  %49 = load i64, ptr %48, align 8, !tbaa !147
  br label %52

50:                                               ; preds = %38
  %51 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %41, i32 noundef 2) #44
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i64 [ %49, %46 ], [ %51, %50 ]
  %54 = shl i64 %53, 32
  %55 = ashr exact i64 %54, 32
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %34, ptr noundef nonnull @.str.74, i64 noundef %55) #44
  %56 = add nuw nsw i64 %39, 1
  %57 = icmp eq i64 %56, %37
  br i1 %57, label %58, label %38, !llvm.loop !459

58:                                               ; preds = %52, %30
  %59 = icmp sgt i32 %13, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %58
  %61 = and i64 %12, 4294967295
  %62 = tail call ptr @Perl_av_fetch(ptr noundef %11, i64 noundef %61, i32 noundef 0) #44
  %63 = load ptr, ptr %62, align 8, !tbaa !142
  %64 = getelementptr inbounds %struct.sv, ptr %63, i64 0, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !182
  %66 = and i32 %65, 2097408
  %67 = icmp eq i32 %66, 256
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load ptr, ptr %63, align 8, !tbaa !192
  %70 = getelementptr inbounds %struct.xpviv, ptr %69, i64 0, i32 4
  %71 = load i64, ptr %70, align 8, !tbaa !147
  br label %74

72:                                               ; preds = %60
  %73 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %63, i32 noundef 2) #44
  br label %74

74:                                               ; preds = %72, %68
  %75 = phi i64 [ %71, %68 ], [ %73, %72 ]
  %76 = shl i64 %75, 32
  %77 = ashr exact i64 %76, 32
  %78 = select i1 %7, ptr @.str.74, ptr @.str.75
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %34, ptr noundef nonnull %78, i64 noundef %77) #44
  br label %79

79:                                               ; preds = %74, %58
  %80 = icmp sgt i32 %13, 1
  br i1 %80, label %87, label %81

81:                                               ; preds = %79
  %82 = sub nsw i32 2, %13
  br label %83

83:                                               ; preds = %81, %83
  %84 = phi i32 [ %85, %83 ], [ %82, %81 ]
  tail call void @Perl_sv_catpvn_flags(ptr noundef %34, ptr noundef nonnull @.str.76, i64 noundef 2, i32 noundef 2) #44
  %85 = add nsw i32 %84, -1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %83, !llvm.loop !460

87:                                               ; preds = %83, %79, %15
  %88 = phi ptr [ %16, %15 ], [ %34, %79 ], [ %34, %83 ]
  ret ptr %88
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_vstringify(ptr noundef %0) local_unnamed_addr #3 !prof !350 {
  %2 = tail call ptr @Perl_vverify(ptr noundef %0)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !351

4:                                                ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.67)
  br label %5

5:                                                ; preds = %4, %1
  %6 = tail call ptr @Perl_hv_common(ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.60, i64 noundef 8, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8, !prof !351

8:                                                ; preds = %5
  %9 = load ptr, ptr %6, align 8, !tbaa !142
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !182
  %12 = and i32 %11, 1024
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14, !prof !351

14:                                               ; preds = %8
  %15 = tail call ptr @Perl_newSVsv(ptr noundef %9) #44
  br label %23

16:                                               ; preds = %5
  %17 = tail call ptr @Perl_hv_common_key_len(ptr noundef %2, ptr noundef nonnull @.str.54, i32 noundef 2, i32 noundef 8, ptr noundef null, i32 noundef 0) #44
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call ptr @Perl_vnormal(ptr noundef %2)
  br label %23

21:                                               ; preds = %16
  %22 = tail call ptr @Perl_vnumify(ptr noundef %2)
  br label %23

23:                                               ; preds = %14, %8, %21, %19
  %24 = phi ptr [ %20, %19 ], [ %22, %21 ], [ %15, %14 ], [ @PL_sv_undef, %8 ]
  ret ptr %24
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_vcmp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 !prof !461 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !182
  %5 = and i32 %4, 2048
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !455

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !147
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %12 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !182
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, 12
  br i1 %15, label %16, label %29, !prof !456

16:                                               ; preds = %10
  %17 = tail call ptr @Perl_hv_common(ptr noundef %11, ptr noundef null, ptr noundef nonnull @.str.53, i64 noundef 7, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #44
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19, !prof !457

19:                                               ; preds = %16
  %20 = load ptr, ptr %17, align 8, !tbaa !142
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !147
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24, !prof !457

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !182
  %27 = and i32 %26, 255
  %28 = icmp eq i32 %27, 11
  br i1 %28, label %30, label %29, !prof !456

29:                                               ; preds = %24, %19, %16, %10
  br label %30

30:                                               ; preds = %24, %29
  %31 = phi ptr [ null, %29 ], [ %11, %24 ]
  %32 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !182
  %34 = and i32 %33, 2048
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36, !prof !455

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !147
  br label %39

39:                                               ; preds = %36, %30
  %40 = phi ptr [ %38, %36 ], [ %1, %30 ]
  %41 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !182
  %43 = and i32 %42, 255
  %44 = icmp eq i32 %43, 12
  br i1 %44, label %45, label %58, !prof !456

45:                                               ; preds = %39
  %46 = tail call ptr @Perl_hv_common(ptr noundef %40, ptr noundef null, ptr noundef nonnull @.str.53, i64 noundef 7, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #44
  %47 = icmp eq ptr %46, null
  br i1 %47, label %58, label %48, !prof !457

48:                                               ; preds = %45
  %49 = load ptr, ptr %46, align 8, !tbaa !142
  %50 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !147
  %52 = icmp eq ptr %51, null
  br i1 %52, label %58, label %53, !prof !457

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.sv, ptr %51, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !182
  %56 = and i32 %55, 255
  %57 = icmp eq i32 %56, 11
  br i1 %57, label %59, label %58, !prof !456

58:                                               ; preds = %53, %48, %45, %39
  br label %59

59:                                               ; preds = %53, %58
  %60 = phi ptr [ null, %58 ], [ %40, %53 ]
  %61 = icmp ne ptr %31, null
  %62 = icmp ne ptr %60, null
  %63 = and i1 %61, %62
  br i1 %63, label %65, label %64, !prof !462

64:                                               ; preds = %59
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.67)
  br label %65

65:                                               ; preds = %59, %64
  %66 = tail call ptr @Perl_hv_common(ptr noundef %31, ptr noundef null, ptr noundef nonnull @.str.53, i64 noundef 7, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #44
  %67 = load ptr, ptr %66, align 8, !tbaa !142
  %68 = getelementptr inbounds %struct.sv, ptr %67, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !147
  %70 = tail call ptr @Perl_hv_common_key_len(ptr noundef %31, ptr noundef nonnull @.str.55, i32 noundef 5, i32 noundef 8, ptr noundef null, i32 noundef 0) #44
  %71 = icmp eq ptr %70, null
  %72 = tail call ptr @Perl_hv_common(ptr noundef %60, ptr noundef null, ptr noundef nonnull @.str.53, i64 noundef 7, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #44
  %73 = load ptr, ptr %72, align 8, !tbaa !142
  %74 = getelementptr inbounds %struct.sv, ptr %73, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !147
  %76 = tail call ptr @Perl_hv_common_key_len(ptr noundef %60, ptr noundef nonnull @.str.55, i32 noundef 5, i32 noundef 8, ptr noundef null, i32 noundef 0) #44
  %77 = icmp eq ptr %76, null
  %78 = tail call i64 @Perl_av_len(ptr noundef %69) #44
  %79 = tail call i64 @Perl_av_len(ptr noundef %75) #44
  %80 = icmp slt i64 %78, %79
  %81 = tail call i64 @llvm.smin.i64(i64 %78, i64 %79)
  %82 = icmp sgt i64 %81, -1
  br i1 %82, label %83, label %123, !prof !463

83:                                               ; preds = %65, %112
  %84 = phi i64 [ %119, %112 ], [ 0, %65 ]
  %85 = tail call ptr @Perl_av_fetch(ptr noundef %69, i64 noundef %84, i32 noundef 0) #44
  %86 = load ptr, ptr %85, align 8, !tbaa !142
  %87 = getelementptr inbounds %struct.sv, ptr %86, i64 0, i32 2
  %88 = load i32, ptr %87, align 4, !tbaa !182
  %89 = and i32 %88, 2097408
  %90 = icmp eq i32 %89, 256
  br i1 %90, label %91, label %95, !prof !464

91:                                               ; preds = %83
  %92 = load ptr, ptr %86, align 8, !tbaa !192
  %93 = getelementptr inbounds %struct.xpviv, ptr %92, i64 0, i32 4
  %94 = load i64, ptr %93, align 8, !tbaa !147
  br label %97

95:                                               ; preds = %83
  %96 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %86, i32 noundef 2) #44
  br label %97

97:                                               ; preds = %95, %91
  %98 = phi i64 [ %94, %91 ], [ %96, %95 ]
  %99 = trunc i64 %98 to i32
  %100 = tail call ptr @Perl_av_fetch(ptr noundef %75, i64 noundef %84, i32 noundef 0) #44
  %101 = load ptr, ptr %100, align 8, !tbaa !142
  %102 = getelementptr inbounds %struct.sv, ptr %101, i64 0, i32 2
  %103 = load i32, ptr %102, align 4, !tbaa !182
  %104 = and i32 %103, 2097408
  %105 = icmp eq i32 %104, 256
  br i1 %105, label %106, label %110, !prof !464

106:                                              ; preds = %97
  %107 = load ptr, ptr %101, align 8, !tbaa !192
  %108 = getelementptr inbounds %struct.xpviv, ptr %107, i64 0, i32 4
  %109 = load i64, ptr %108, align 8, !tbaa !147
  br label %112

110:                                              ; preds = %97
  %111 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %101, i32 noundef 2) #44
  br label %112

112:                                              ; preds = %110, %106
  %113 = phi i64 [ %109, %106 ], [ %111, %110 ]
  %114 = trunc i64 %113 to i32
  %115 = icmp slt i32 %99, %114
  %116 = sext i1 %115 to i32
  %117 = icmp sgt i32 %99, %114
  %118 = select i1 %117, i32 1, i32 %116, !prof !465
  %119 = add nuw nsw i64 %84, 1
  %120 = icmp slt i64 %84, %81
  %121 = icmp eq i32 %118, 0
  %122 = and i1 %121, %120
  br i1 %122, label %83, label %123, !prof !466, !llvm.loop !467

123:                                              ; preds = %112, %65
  %124 = phi i32 [ 0, %65 ], [ %99, %112 ]
  %125 = phi i32 [ 0, %65 ], [ %114, %112 ]
  %126 = phi i32 [ 0, %65 ], [ %118, %112 ]
  %127 = phi i64 [ 0, %65 ], [ %119, %112 ]
  %128 = phi i1 [ true, %65 ], [ %121, %112 ]
  br i1 %128, label %129, label %141, !prof !468

129:                                              ; preds = %123
  %130 = icmp ne i64 %78, %79
  %131 = icmp ne i32 %124, %125
  %132 = select i1 %130, i1 true, i1 %131
  %133 = select i1 %71, i1 %77, i1 false
  %134 = select i1 %132, i1 true, i1 %133
  br i1 %134, label %141, label %135, !prof !469

135:                                              ; preds = %129
  %136 = xor i1 %71, true
  %137 = select i1 %136, i1 %77, i1 false
  %138 = sext i1 %137 to i32
  %139 = zext i1 %71 to i32
  %140 = select i1 %77, i32 %138, i32 %139
  br label %141

141:                                              ; preds = %135, %129, %123
  %142 = phi i32 [ 0, %129 ], [ %126, %123 ], [ %140, %135 ]
  %143 = icmp ne i64 %78, %79
  %144 = icmp eq i32 %142, 0
  %145 = and i1 %143, %144
  br i1 %145, label %146, label %195, !prof !470

146:                                              ; preds = %141
  br i1 %80, label %149, label %147, !prof !231

147:                                              ; preds = %146
  %148 = icmp sgt i64 %127, %78
  br i1 %148, label %195, label %171

149:                                              ; preds = %146
  %150 = icmp sgt i64 %127, %79
  br i1 %150, label %195, label %151, !prof !471

151:                                              ; preds = %149, %165
  %152 = phi i64 [ %168, %165 ], [ %127, %149 ]
  %153 = tail call ptr @Perl_av_fetch(ptr noundef %75, i64 noundef %152, i32 noundef 0) #44
  %154 = load ptr, ptr %153, align 8, !tbaa !142
  %155 = getelementptr inbounds %struct.sv, ptr %154, i64 0, i32 2
  %156 = load i32, ptr %155, align 4, !tbaa !182
  %157 = and i32 %156, 2097408
  %158 = icmp eq i32 %157, 256
  br i1 %158, label %159, label %163, !prof !231

159:                                              ; preds = %151
  %160 = load ptr, ptr %154, align 8, !tbaa !192
  %161 = getelementptr inbounds %struct.xpviv, ptr %160, i64 0, i32 4
  %162 = load i64, ptr %161, align 8, !tbaa !147
  br label %165

163:                                              ; preds = %151
  %164 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %154, i32 noundef 2) #44
  br label %165

165:                                              ; preds = %163, %159
  %166 = phi i64 [ %162, %159 ], [ %164, %163 ]
  %167 = icmp ne i64 %166, 0
  %168 = add nuw nsw i64 %152, 1
  %169 = icmp sge i64 %152, %79
  %170 = or i1 %169, %167
  br i1 %170, label %191, label %151, !prof !472, !llvm.loop !473

171:                                              ; preds = %147, %185
  %172 = phi i64 [ %188, %185 ], [ %127, %147 ]
  %173 = tail call ptr @Perl_av_fetch(ptr noundef %69, i64 noundef %172, i32 noundef 0) #44
  %174 = load ptr, ptr %173, align 8, !tbaa !142
  %175 = getelementptr inbounds %struct.sv, ptr %174, i64 0, i32 2
  %176 = load i32, ptr %175, align 4, !tbaa !182
  %177 = and i32 %176, 2097408
  %178 = icmp eq i32 %177, 256
  br i1 %178, label %179, label %183

179:                                              ; preds = %171
  %180 = load ptr, ptr %174, align 8, !tbaa !192
  %181 = getelementptr inbounds %struct.xpviv, ptr %180, i64 0, i32 4
  %182 = load i64, ptr %181, align 8, !tbaa !147
  br label %185

183:                                              ; preds = %171
  %184 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %174, i32 noundef 2) #44
  br label %185

185:                                              ; preds = %183, %179
  %186 = phi i64 [ %182, %179 ], [ %184, %183 ]
  %187 = icmp ne i64 %186, 0
  %188 = add nuw nsw i64 %172, 1
  %189 = icmp sge i64 %172, %78
  %190 = or i1 %189, %187
  br i1 %190, label %193, label %171, !llvm.loop !474

191:                                              ; preds = %165
  %192 = sext i1 %167 to i32
  br label %195

193:                                              ; preds = %185
  %194 = zext i1 %187 to i32
  br label %195

195:                                              ; preds = %193, %191, %147, %149, %141
  %196 = phi i32 [ %142, %141 ], [ 0, %149 ], [ 0, %147 ], [ %192, %191 ], [ %194, %193 ]
  ret i32 %196
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @Perl_my_socketpair(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #28 !prof !141 {
  ret i32 -1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @Perl_sv_nosharing(ptr nocapture noundef readnone %0) local_unnamed_addr #28 !prof !141 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @Perl_sv_destroyable(ptr nocapture noundef readnone %0) local_unnamed_addr #36 !prof !475 {
  ret i1 true
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_parse_unicode_opts(ptr nocapture noundef %0) local_unnamed_addr #3 !prof !141 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !142
  %5 = load i8, ptr %4, align 1, !tbaa !147
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %75, label %7

7:                                                ; preds = %1
  %8 = zext i8 %5 to i64
  %9 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !155
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i8, ptr %4, align 1, !tbaa !147
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %75, label %38

16:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #44
  %17 = call zeroext i1 @Perl_grok_atoUV(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %2) #44
  %18 = load i64, ptr %3, align 8
  %19 = icmp ult i64 %18, 4294967296
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = trunc i64 %18 to i32
  %23 = load ptr, ptr %2, align 8, !tbaa !142
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %21
  %26 = load i8, ptr %23, align 1, !tbaa !147
  %27 = sext i8 %26 to i32
  switch i8 %26, label %28 [
    i8 0, label %35
    i8 10, label %35
    i8 13, label %35
  ]

28:                                               ; preds = %25
  %29 = zext i8 %26 to i64
  %30 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !155
  %32 = and i32 %31, 17408
  %33 = icmp eq i32 %32, 17408
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.77, i32 noundef %27)
  br label %35

35:                                               ; preds = %25, %25, %16, %34, %21, %25, %28
  %36 = phi ptr [ %23, %28 ], [ %23, %34 ], [ null, %21 ], [ %4, %16 ], [ %23, %25 ], [ %23, %25 ], [ %23, %25 ]
  %37 = phi i32 [ %22, %28 ], [ %22, %34 ], [ %22, %21 ], [ 0, %16 ], [ %22, %25 ], [ %22, %25 ], [ %22, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #44
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #44
  br label %75

38:                                               ; preds = %13, %70
  %39 = phi i8 [ %73, %70 ], [ %14, %13 ]
  %40 = phi i32 [ %71, %70 ], [ 0, %13 ]
  %41 = phi ptr [ %72, %70 ], [ %4, %13 ]
  %42 = sext i8 %39 to i32
  switch i8 %39, label %63 [
    i8 73, label %43
    i8 79, label %45
    i8 69, label %47
    i8 83, label %49
    i8 105, label %51
    i8 111, label %53
    i8 68, label %55
    i8 76, label %57
    i8 65, label %59
    i8 97, label %61
    i8 10, label %70
    i8 13, label %70
  ]

43:                                               ; preds = %38
  %44 = or i32 %40, 1
  br label %70

45:                                               ; preds = %38
  %46 = or i32 %40, 2
  br label %70

47:                                               ; preds = %38
  %48 = or i32 %40, 4
  br label %70

49:                                               ; preds = %38
  %50 = or i32 %40, 7
  br label %70

51:                                               ; preds = %38
  %52 = or i32 %40, 8
  br label %70

53:                                               ; preds = %38
  %54 = or i32 %40, 16
  br label %70

55:                                               ; preds = %38
  %56 = or i32 %40, 24
  br label %70

57:                                               ; preds = %38
  %58 = or i32 %40, 64
  br label %70

59:                                               ; preds = %38
  %60 = or i32 %40, 32
  br label %70

61:                                               ; preds = %38
  %62 = or i32 %40, 256
  br label %70

63:                                               ; preds = %38
  %64 = zext i8 %39 to i64
  %65 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !155
  %67 = and i32 %66, 17408
  %68 = icmp eq i32 %67, 17408
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.77, i32 noundef %42)
  br label %70

70:                                               ; preds = %38, %38, %43, %45, %47, %49, %51, %53, %55, %57, %59, %61, %69
  %71 = phi i32 [ %40, %69 ], [ %62, %61 ], [ %60, %59 ], [ %58, %57 ], [ %56, %55 ], [ %54, %53 ], [ %52, %51 ], [ %50, %49 ], [ %48, %47 ], [ %46, %45 ], [ %44, %43 ], [ %40, %38 ], [ %40, %38 ]
  %72 = getelementptr inbounds i8, ptr %41, i64 1
  %73 = load i8, ptr %72, align 1, !tbaa !147
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %38, !llvm.loop !476

75:                                               ; preds = %63, %70, %13, %1, %35
  %76 = phi ptr [ %36, %35 ], [ %4, %1 ], [ %4, %13 ], [ %72, %70 ], [ %41, %63 ]
  %77 = phi i32 [ %37, %35 ], [ 95, %1 ], [ 0, %13 ], [ %71, %70 ], [ %40, %63 ]
  %78 = and i32 %77, -512
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = zext i32 %78 to i64
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.78, i64 noundef %81)
  br label %82

82:                                               ; preds = %80, %75
  store ptr %76, ptr %0, align 8, !tbaa !142
  ret i32 %77
}

declare zeroext i1 @Perl_grok_atoUV(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @Perl_seed() local_unnamed_addr #28 !prof !141 {
  ret i32 1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @Perl_get_hash_seed(ptr nocapture noundef writeonly %0) local_unnamed_addr #37 !prof !269 {
  store i64 72340172838076673, ptr %0, align 1
  store i8 0, ptr @PL_hash_rand_bits_enabled, align 1, !tbaa !147
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @vsprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #29

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_my_vsnprintf(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #3 !prof !141 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #44
  call void @llvm.va_copy(ptr nonnull %5, ptr %3)
  %6 = call i32 @vsprintf(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5) #44
  call void @llvm.va_end(ptr %5)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.80)
  br label %9

9:                                                ; preds = %8, %4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #44
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy(ptr, ptr) #19

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_my_clearenv() local_unnamed_addr #3 !prof !141 {
  %1 = load i8, ptr @PL_use_safe_putenv, align 1, !tbaa !135, !range !139, !noundef !140
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %28

3:                                                ; preds = %0
  %4 = load ptr, ptr @environ, align 8, !tbaa !142
  %5 = load ptr, ptr @PL_origenviron, align 8, !tbaa !142
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @environ, align 8, !tbaa !142
  %9 = load ptr, ptr %8, align 8, !tbaa !142
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %20

11:                                               ; preds = %3
  %12 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #43
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i8, ptr @PL_nomemok, align 1, !tbaa !135, !range !139, !noundef !140
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @Perl_croak_no_mem()
  br label %18

18:                                               ; preds = %11, %14, %17
  %19 = phi ptr [ null, %17 ], [ %12, %11 ], [ null, %14 ]
  store ptr %19, ptr @environ, align 8, !tbaa !142
  br label %28

20:                                               ; preds = %7, %20
  %21 = phi i64 [ %23, %20 ], [ 0, %7 ]
  %22 = phi ptr [ %26, %20 ], [ %9, %7 ]
  tail call void @free(ptr noundef %22) #44
  %23 = add nuw nsw i64 %21, 1
  %24 = load ptr, ptr @environ, align 8, !tbaa !142
  %25 = getelementptr inbounds ptr, ptr %24, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !142
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %20, !llvm.loop !477

28:                                               ; preds = %20, %7, %18, %0
  %29 = load ptr, ptr @environ, align 8, !tbaa !142
  store ptr null, ptr %29, align 8, !tbaa !142
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_xs_handshake(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ...) local_unnamed_addr #3 !prof !331 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #44
  call void @llvm.va_start(ptr nonnull %4)
  %5 = and i32 %0, -65408
  %6 = zext i32 %5 to i64
  %7 = inttoptr i64 %6 to ptr
  switch i32 %5, label %15 [
    i32 219676672, label %8
    i32 -65408, label %18
  ], !prof !478

8:                                                ; preds = %3
  %9 = load ptr, ptr %1, align 8, !tbaa !307
  %10 = getelementptr inbounds %struct.xpvcv, ptr %9, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !147
  %12 = icmp ne ptr %11, @PL_stack_sp
  %13 = icmp ne ptr %11, inttoptr (i64 4294901888 to ptr)
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %18, !prof !334

15:                                               ; preds = %3, %8
  %16 = phi ptr [ @PL_stack_sp, %8 ], [ inttoptr (i64 219676672 to ptr), %3 ]
  %17 = phi ptr [ %11, %8 ], [ %7, %3 ]
  call void (ptr, ...) @Perl_noperl_die(ptr noundef nonnull @.str.81, ptr noundef %2, ptr noundef %17, ptr noundef nonnull %16) #44
  br label %18

18:                                               ; preds = %8, %3, %15
  %19 = and i32 %0, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21, !prof !479

21:                                               ; preds = %18
  call void @Perl_save_pptr(ptr noundef nonnull @PL_xsubfilename) #44
  store ptr %2, ptr @PL_xsubfilename, align 8, !tbaa !142
  %22 = call ptr @Perl_gv_fetchfile(ptr noundef %2) #44
  br label %23

23:                                               ; preds = %21, %18
  %24 = and i32 %0, 64
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %40, label %26, !prof !479

26:                                               ; preds = %23
  %27 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !142
  %28 = getelementptr inbounds i32, ptr %27, i64 -1
  store ptr %28, ptr @PL_markstack_ptr, align 8, !tbaa !142
  %29 = load i32, ptr %27, align 4, !tbaa !155
  %30 = load ptr, ptr @PL_stack_base, align 8, !tbaa !142
  %31 = add i32 %29, 1
  %32 = zext i32 %29 to i64
  %33 = getelementptr inbounds ptr, ptr %30, i64 %32
  %34 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !142
  %35 = ptrtoint ptr %34 to i64
  %36 = ptrtoint ptr %33 to i64
  %37 = sub i64 %35, %36
  %38 = lshr exact i64 %37, 3
  %39 = trunc i64 %38 to i32
  br label %71

40:                                               ; preds = %23
  %41 = load i32, ptr %4, align 16
  %42 = icmp ult i32 %41, 41
  br i1 %42, label %43, label %49, !prof !167

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %45 = load ptr, ptr %44, align 16
  %46 = zext nneg i32 %41 to i64
  %47 = getelementptr i8, ptr %45, i64 %46
  %48 = add nuw nsw i32 %41, 8
  store i32 %48, ptr %4, align 16
  br label %53

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr i8, ptr %51, i64 8
  store ptr %52, ptr %50, align 8
  br label %53

53:                                               ; preds = %49, %43
  %54 = phi ptr [ %47, %43 ], [ %51, %49 ]
  %55 = load i32, ptr %54, align 4
  %56 = load i32, ptr %4, align 16
  %57 = icmp ult i32 %56, 41
  br i1 %57, label %58, label %64, !prof !167

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %60 = load ptr, ptr %59, align 16
  %61 = zext nneg i32 %56 to i64
  %62 = getelementptr i8, ptr %60, i64 %61
  %63 = add nuw nsw i32 %56, 8
  store i32 %63, ptr %4, align 16
  br label %68

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr i8, ptr %66, i64 8
  store ptr %67, ptr %65, align 8
  br label %68

68:                                               ; preds = %64, %58
  %69 = phi ptr [ %62, %58 ], [ %66, %64 ]
  %70 = load i32, ptr %69, align 4
  br label %71

71:                                               ; preds = %68, %26
  %72 = phi i32 [ %31, %26 ], [ %70, %68 ]
  %73 = phi i32 [ %39, %26 ], [ %55, %68 ]
  %74 = and i32 %0, 31
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %101, label %76, !prof !334

76:                                               ; preds = %71
  %77 = load i32, ptr %4, align 16
  %78 = icmp ult i32 %77, 41
  br i1 %78, label %79, label %85, !prof !480

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %81 = load ptr, ptr %80, align 16
  %82 = zext nneg i32 %77 to i64
  %83 = getelementptr i8, ptr %81, i64 %82
  %84 = add nuw nsw i32 %77, 8
  store i32 %84, ptr %4, align 16
  br label %89

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr i8, ptr %87, i64 8
  store ptr %88, ptr %86, align 8
  br label %89

89:                                               ; preds = %85, %79
  %90 = phi ptr [ %83, %79 ], [ %87, %85 ]
  %91 = load ptr, ptr %90, align 8
  %92 = icmp eq i32 %74, 7
  br i1 %92, label %93, label %96, !prof !480

93:                                               ; preds = %89
  %94 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %91, ptr noundef nonnull dereferenceable(7) @.str.82, i64 7)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %101, label %96, !prof !480

96:                                               ; preds = %93, %89
  %97 = load ptr, ptr @PL_stack_base, align 8, !tbaa !142
  %98 = zext i32 %72 to i64
  %99 = getelementptr inbounds ptr, ptr %97, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !142
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.83, ptr noundef %91, ptr noundef %100, ptr noundef nonnull @.str.82)
  br label %101

101:                                              ; preds = %93, %96, %71
  %102 = lshr i32 %0, 8
  %103 = and i32 %102, 255
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %194, label %105, !prof !480

105:                                              ; preds = %101
  %106 = load i32, ptr %4, align 16
  %107 = icmp ult i32 %106, 41
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %110 = load ptr, ptr %109, align 16
  %111 = zext nneg i32 %106 to i64
  %112 = getelementptr i8, ptr %110, i64 %111
  %113 = add nuw nsw i32 %106, 8
  store i32 %113, ptr %4, align 16
  br label %118

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8
  %117 = getelementptr i8, ptr %116, i64 8
  store ptr %117, ptr %115, align 8
  br label %118

118:                                              ; preds = %114, %108
  %119 = phi ptr [ %112, %108 ], [ %116, %114 ]
  %120 = load ptr, ptr %119, align 8
  %121 = zext nneg i32 %103 to i64
  %122 = load ptr, ptr @PL_stack_base, align 8, !tbaa !142
  %123 = zext i32 %72 to i64
  %124 = getelementptr inbounds ptr, ptr %122, i64 %123
  %125 = load ptr, ptr %124, align 8, !tbaa !142
  %126 = icmp ugt i32 %73, 1
  br i1 %126, label %127, label %132

127:                                              ; preds = %118
  %128 = add i32 %72, 1
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds ptr, ptr %122, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !142
  br label %150

132:                                              ; preds = %118
  %133 = call ptr (ptr, ...) @Perl_form(ptr noundef nonnull @.str.88, ptr noundef %125, ptr noundef nonnull @.str.87)
  %134 = call ptr @Perl_get_sv(ptr noundef %133, i32 noundef 0) #44
  %135 = icmp eq ptr %134, null
  br i1 %135, label %147, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.sv, ptr %134, i64 0, i32 2
  %138 = load i32, ptr %137, align 4, !tbaa !182
  %139 = and i32 %138, 65280
  %140 = icmp ne i32 %139, 0
  %141 = and i32 %138, 255
  %142 = icmp eq i32 %141, 8
  %143 = or i1 %140, %142
  %144 = and i32 %138, 16777471
  %145 = icmp eq i32 %144, 16777226
  %146 = or i1 %145, %143
  br i1 %146, label %150, label %147

147:                                              ; preds = %136, %132
  %148 = call ptr (ptr, ...) @Perl_form(ptr noundef nonnull @.str.88, ptr noundef %125, ptr noundef nonnull @.str.89)
  %149 = call ptr @Perl_get_sv(ptr noundef %148, i32 noundef 0) #44
  br label %150

150:                                              ; preds = %147, %136, %127
  %151 = phi ptr [ null, %127 ], [ @.str.87, %136 ], [ @.str.89, %147 ]
  %152 = phi ptr [ %131, %127 ], [ %134, %136 ], [ %149, %147 ]
  %153 = icmp eq ptr %152, null
  br i1 %153, label %194, label %154

154:                                              ; preds = %150
  %155 = call ptr @Perl_newSVpvn_flags(ptr noundef %120, i64 noundef %121, i32 noundef 524288) #44
  %156 = call i32 @Perl_sv_isobject(ptr noundef nonnull %152) #44
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158

158:                                              ; preds = %154
  %159 = call zeroext i1 @Perl_sv_derived_from(ptr noundef nonnull %152, ptr noundef nonnull @.str.53) #44
  br i1 %159, label %163, label %160

160:                                              ; preds = %158, %154
  %161 = call ptr @Perl_new_version(ptr noundef nonnull %152)
  %162 = call ptr @Perl_sv_2mortal(ptr noundef %161) #44
  br label %163

163:                                              ; preds = %160, %158
  %164 = phi ptr [ %162, %160 ], [ %152, %158 ]
  %165 = call ptr @Perl_upg_version(ptr noundef %155, i1 noundef zeroext false)
  %166 = call i32 @Perl_vcmp(ptr noundef %164, ptr noundef %155)
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %194, label %168

168:                                              ; preds = %163
  %169 = call ptr @Perl_vstringify(ptr noundef %155)
  %170 = call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.90, ptr noundef %125, ptr noundef %169) #44
  %171 = icmp eq ptr %169, null
  br i1 %171, label %179, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.sv, ptr %169, i64 0, i32 1
  %174 = load i32, ptr %173, align 8, !tbaa !275
  %175 = icmp ugt i32 %174, 1
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = add i32 %174, -1
  store i32 %177, ptr %173, align 8, !tbaa !275
  br label %179

178:                                              ; preds = %172
  call void @Perl_sv_free2(ptr noundef nonnull %169, i32 noundef %174) #44
  br label %179

179:                                              ; preds = %178, %176, %168
  %180 = call ptr @Perl_vstringify(ptr noundef %164)
  br i1 %126, label %182, label %181

181:                                              ; preds = %179
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %170, ptr noundef nonnull @.str.91, ptr noundef %125, ptr noundef %151, ptr noundef %180) #44
  br label %183

182:                                              ; preds = %179
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %170, ptr noundef nonnull @.str.92, ptr noundef %180) #44
  br label %183

183:                                              ; preds = %182, %181
  %184 = icmp eq ptr %180, null
  br i1 %184, label %192, label %185

185:                                              ; preds = %183
  %186 = getelementptr inbounds %struct.sv, ptr %180, i64 0, i32 1
  %187 = load i32, ptr %186, align 8, !tbaa !275
  %188 = icmp ugt i32 %187, 1
  br i1 %188, label %189, label %191

189:                                              ; preds = %185
  %190 = add i32 %187, -1
  store i32 %190, ptr %186, align 8, !tbaa !275
  br label %192

191:                                              ; preds = %185
  call void @Perl_sv_free2(ptr noundef nonnull %180, i32 noundef %187) #44
  br label %192

192:                                              ; preds = %191, %189, %183
  %193 = call ptr @Perl_sv_2mortal(ptr noundef %170) #44
  call void @Perl_croak_sv(ptr noundef %170)
  br label %194

194:                                              ; preds = %192, %163, %150, %101
  call void @llvm.va_end(ptr %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #44
  ret i32 %72
}

declare void @Perl_noperl_die(ptr noundef, ...) local_unnamed_addr #15

declare void @Perl_save_pptr(ptr noundef) local_unnamed_addr #15

declare ptr @Perl_gv_fetchfile(ptr noundef) local_unnamed_addr #15

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @Perl_my_strlcat(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #32 !prof !141 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #48
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #48
  %6 = icmp ne i64 %2, 0
  %7 = add i64 %2, -1
  %8 = icmp ult i64 %4, %7
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = sub i64 %2, %4
  %12 = icmp ult i64 %5, %11
  %13 = add i64 %11, -1
  %14 = select i1 %12, i64 %5, i64 %13
  %15 = getelementptr i8, ptr %0, i64 %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr align 1 %1, i64 %14, i1 false)
  %16 = getelementptr i8, ptr %15, i64 %14
  store i8 0, ptr %16, align 1, !tbaa !147
  br label %17

17:                                               ; preds = %10, %3
  %18 = add i64 %5, %4
  ret i64 %18
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_get_db_sub(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 !prof !141 {
  %3 = load ptr, ptr @PL_DBsub, align 8, !tbaa !142
  %4 = getelementptr inbounds %struct.gv, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !147
  %6 = load ptr, ptr %5, align 8, !tbaa !304
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = tail call ptr @Perl_gv_add_by_type(ptr noundef %3, i32 noundef 0) #44
  %10 = getelementptr inbounds %struct.gv, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !147
  br label %12

12:                                               ; preds = %2, %8
  %13 = phi ptr [ %11, %8 ], [ %5, %2 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !142
  %15 = load i8, ptr @PL_tainted, align 1, !tbaa !135, !range !139, !noundef !140
  %16 = icmp eq i8 %15, 0
  store i8 0, ptr @PL_tainted, align 1, !tbaa !135
  tail call void @Perl_save_item(ptr noundef %14) #44
  %17 = load i32, ptr @PL_perldb, align 4, !tbaa !155
  %18 = and i32 %17, 64
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %134

20:                                               ; preds = %12
  %21 = load ptr, ptr %1, align 8, !tbaa !307
  %22 = getelementptr inbounds %struct.xpvcv, ptr %21, i64 0, i32 12
  %23 = load i32, ptr %22, align 4, !tbaa !481
  %24 = and i32 %23, 32768
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %1) #44
  br label %31

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.xpvcv, ptr %21, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !147
  br label %31

31:                                               ; preds = %26, %28
  %32 = phi ptr [ %27, %26 ], [ %30, %28 ]
  %33 = icmp eq ptr %0, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load ptr, ptr %1, align 8, !tbaa !307
  %36 = getelementptr inbounds %struct.xpvcv, ptr %35, i64 0, i32 12
  %37 = load i32, ptr %36, align 4, !tbaa !481
  %38 = and i32 %37, 65536
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  tail call void @Perl_gv_efullname4(ptr noundef %14, ptr noundef %32, ptr noundef null, i1 noundef zeroext true) #44
  br label %148

41:                                               ; preds = %34, %31
  %42 = load ptr, ptr %1, align 8, !tbaa !307
  %43 = getelementptr inbounds %struct.xpvcv, ptr %42, i64 0, i32 12
  %44 = load i32, ptr %43, align 4, !tbaa !481
  %45 = and i32 %44, 65728
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %76

47:                                               ; preds = %41
  %48 = load ptr, ptr %32, align 8, !tbaa !301
  %49 = getelementptr inbounds %struct.xpvgv, ptr %48, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !147
  %51 = getelementptr inbounds %struct.hek, ptr %50, i64 0, i32 2
  %52 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull dereferenceable(4) @.str.84) #48
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %76, label %54

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.gv, ptr %32, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !147
  %57 = getelementptr inbounds %struct.gp, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !483
  %59 = icmp eq ptr %58, %1
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = tail call fastcc zeroext i1 @S_gv_has_usable_name(ptr noundef nonnull %32)
  br i1 %61, label %86, label %62

62:                                               ; preds = %60, %54
  %63 = load ptr, ptr %0, align 8, !tbaa !142
  %64 = getelementptr inbounds %struct.sv, ptr %63, i64 0, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !182
  %66 = and i32 %65, 255
  %67 = icmp eq i32 %66, 9
  br i1 %67, label %68, label %76

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.gv, ptr %63, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !147
  %71 = getelementptr inbounds %struct.gp, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !483
  %73 = icmp eq ptr %72, %1
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = tail call fastcc zeroext i1 @S_gv_has_usable_name(ptr noundef %63)
  br i1 %75, label %86, label %76

76:                                               ; preds = %74, %68, %62, %47, %41
  %77 = tail call ptr @Perl_newRV(ptr noundef nonnull %1) #44
  tail call void @Perl_sv_setsv_flags(ptr noundef %14, ptr noundef %77, i32 noundef 1538) #44
  %78 = icmp eq ptr %77, null
  br i1 %78, label %148, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.sv, ptr %77, i64 0, i32 1
  %81 = load i32, ptr %80, align 8, !tbaa !275
  %82 = icmp ugt i32 %81, 1
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = add i32 %81, -1
  store i32 %84, ptr %80, align 8, !tbaa !275
  br label %148

85:                                               ; preds = %79
  tail call void @Perl_sv_free2(ptr noundef nonnull %77, i32 noundef %81) #44
  br label %148

86:                                               ; preds = %74, %60
  %87 = phi ptr [ %63, %74 ], [ %32, %60 ]
  %88 = load ptr, ptr %87, align 8, !tbaa !301
  %89 = getelementptr inbounds %struct.xpvgv, ptr %88, i64 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !147
  %91 = getelementptr inbounds %struct.hv, ptr %90, i64 0, i32 2
  %92 = load i32, ptr %91, align 4, !tbaa !484
  %93 = and i32 %92, 33554432
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %119, label %95

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.hv, ptr %90, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !147
  %98 = load ptr, ptr %90, align 8, !tbaa !486
  %99 = getelementptr inbounds %struct.xpvhv, ptr %98, i64 0, i32 3
  %100 = load i64, ptr %99, align 8, !tbaa !487
  %101 = getelementptr ptr, ptr %97, i64 %100
  %102 = getelementptr ptr, ptr %101, i64 1
  %103 = load ptr, ptr %102, align 8, !tbaa !147
  %104 = icmp eq ptr %103, null
  br i1 %104, label %119, label %105

105:                                              ; preds = %95
  %106 = getelementptr i8, ptr %101, i64 36
  %107 = load i32, ptr %106, align 4, !tbaa !489
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load ptr, ptr %103, align 8, !tbaa !142
  br label %119

111:                                              ; preds = %105
  %112 = icmp slt i32 %107, -1
  br i1 %112, label %113, label %116

113:                                              ; preds = %111
  %114 = getelementptr inbounds ptr, ptr %103, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !142
  br label %119

116:                                              ; preds = %111
  %117 = icmp eq i32 %107, -1
  %118 = select i1 %117, ptr null, ptr %103
  br label %119

119:                                              ; preds = %116, %86, %95, %109, %113
  %120 = phi ptr [ %110, %109 ], [ %115, %113 ], [ null, %95 ], [ null, %86 ], [ %118, %116 ]
  tail call void @Perl_sv_sethek(ptr noundef %14, ptr noundef %120) #44
  tail call void @Perl_sv_catpvn_flags(ptr noundef %14, ptr noundef nonnull @.str.85, i64 noundef 2, i32 noundef 2) #44
  %121 = load ptr, ptr %87, align 8, !tbaa !301
  %122 = getelementptr inbounds %struct.xpvgv, ptr %121, i64 0, i32 4
  %123 = load ptr, ptr %122, align 8, !tbaa !147
  %124 = getelementptr inbounds %struct.hek, ptr %123, i64 0, i32 2
  %125 = getelementptr inbounds %struct.hek, ptr %123, i64 0, i32 1
  %126 = load i32, ptr %125, align 4, !tbaa !367
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, ptr %124, i64 %127
  %129 = getelementptr inbounds i8, ptr %128, i64 1
  %130 = load i8, ptr %129, align 1, !tbaa !147
  %131 = and i8 %130, 1
  %132 = icmp eq i8 %131, 0
  %133 = select i1 %132, i32 16384, i32 32768
  tail call void @Perl_sv_catpvn_flags(ptr noundef %14, ptr noundef nonnull %124, i64 noundef %127, i32 noundef %133) #44
  br label %148

134:                                              ; preds = %12
  %135 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %136 = load i32, ptr %135, align 4, !tbaa !182
  %137 = and i32 %136, 255
  %138 = icmp ult i32 %137, 5
  %139 = icmp ne i32 %137, 1
  %140 = and i1 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  tail call void @Perl_sv_upgrade(ptr noundef %14, i32 noundef 5) #44
  br label %142

142:                                              ; preds = %141, %134
  %143 = load i32, ptr %135, align 4, !tbaa !182
  %144 = or i32 %143, 4352
  store i32 %144, ptr %135, align 4, !tbaa !182
  %145 = ptrtoint ptr %1 to i64
  %146 = load ptr, ptr %14, align 8, !tbaa !192
  %147 = getelementptr inbounds %struct.xpviv, ptr %146, i64 0, i32 4
  store i64 %145, ptr %147, align 8, !tbaa !147
  br label %148

148:                                              ; preds = %85, %83, %76, %40, %119, %142
  %149 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %150 = load i32, ptr %149, align 4, !tbaa !182
  %151 = and i32 %150, 4194304
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %148
  %154 = tail call i32 @Perl_mg_set(ptr noundef %14) #44
  br label %155

155:                                              ; preds = %148, %153
  br i1 %16, label %157, label %156

156:                                              ; preds = %155
  store i8 1, ptr @PL_tainted, align 1, !tbaa !135
  br label %157

157:                                              ; preds = %155, %156
  ret void
}

declare void @Perl_save_item(ptr noundef) local_unnamed_addr #15

declare void @Perl_gv_efullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #15

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i1 @S_gv_has_usable_name(ptr noundef readonly %0) unnamed_addr #3 !prof !141 {
  %2 = load ptr, ptr %0, align 8, !tbaa !301
  %3 = getelementptr inbounds %struct.xpvgv, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !147
  %5 = icmp eq ptr %4, null
  br i1 %5, label %43, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hv, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !484
  %9 = and i32 %8, 33554432
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %43, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.hv, ptr %4, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !147
  %14 = load ptr, ptr %4, align 8, !tbaa !486
  %15 = getelementptr inbounds %struct.xpvhv, ptr %14, i64 0, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !487
  %17 = getelementptr ptr, ptr %13, i64 %16
  %18 = getelementptr ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !147
  %20 = icmp eq ptr %19, null
  br i1 %20, label %43, label %21

21:                                               ; preds = %11
  %22 = getelementptr i8, ptr %17, i64 36
  %23 = load i32, ptr %22, align 4, !tbaa !489
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %43, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.xpvgv, ptr %2, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !147
  %28 = getelementptr inbounds %struct.hek, ptr %27, i64 0, i32 2
  %29 = getelementptr inbounds %struct.hek, ptr %27, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !367
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, ptr %28, i64 %31
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !147
  %35 = and i8 %34, 1
  %36 = zext nneg i8 %35 to i32
  %37 = load i32, ptr %27, align 4, !tbaa !491
  %38 = tail call ptr @Perl_hv_common(ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %28, i64 noundef %31, i32 noundef %36, i32 noundef 32, ptr noundef null, i32 noundef %37) #44
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %25
  %41 = load ptr, ptr %38, align 8, !tbaa !142
  %42 = icmp eq ptr %41, %0
  br label %43

43:                                               ; preds = %6, %11, %21, %40, %25, %1
  %44 = phi i1 [ false, %25 ], [ false, %1 ], [ %42, %40 ], [ false, %21 ], [ false, %11 ], [ false, %6 ]
  ret i1 %44
}

declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #15

declare void @Perl_sv_sethek(ptr noundef, ptr noundef) local_unnamed_addr #15

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @Perl_my_dirfd(ptr noundef readnone %0) local_unnamed_addr #3 !prof !141 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.86)
  br label %4

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -1, %1 ]
  ret i32 %5
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_get_re_arg(ptr noundef %0) local_unnamed_addr #3 !prof !141 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !182
  %6 = and i32 %5, 14680064
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @Perl_mg_get(ptr noundef nonnull %0) #44
  br label %10

10:                                               ; preds = %8, %3
  %11 = load i32, ptr %4, align 4, !tbaa !182
  %12 = and i32 %11, 2048
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !147
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi ptr [ %16, %14 ], [ %0, %10 ]
  %19 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !182
  %21 = and i32 %20, 255
  %22 = icmp eq i32 %21, 8
  br i1 %22, label %24, label %23

23:                                               ; preds = %17, %1
  br label %24

24:                                               ; preds = %17, %23
  %25 = phi ptr [ null, %23 ], [ %18, %17 ]
  ret ptr %25
}

declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #15

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @Perl_drand48_init_r(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #38 !prof !141 {
  %3 = zext i32 %1 to i64
  %4 = shl nuw nsw i64 %3, 16
  %5 = or disjoint i64 %4, 13070
  store i64 %5, ptr %0, align 8, !tbaa !195
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind willreturn uwtable
define dso_local double @Perl_drand48_r(ptr nocapture noundef %0) local_unnamed_addr #39 !prof !141 {
  %2 = load i64, ptr %0, align 8, !tbaa !195
  %3 = mul i64 %2, 25214903917
  %4 = add i64 %3, 11
  %5 = and i64 %4, 281474976710655
  store i64 %5, ptr %0, align 8, !tbaa !195
  %6 = uitofp i64 %5 to double
  %7 = tail call double @ldexp(double noundef %6, i32 noundef -48) #44
  ret double %7
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #40

declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #15

declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

declare ptr @Perl_sv_mortalcopy_flags(ptr noundef, i32 noundef) local_unnamed_addr #15

declare void @Perl_push_scope() local_unnamed_addr #15

declare void @Perl_save_sptr(ptr noundef) local_unnamed_addr #15

declare ptr @Perl_sv_2cv(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

declare void @Perl_pop_scope() local_unnamed_addr #15

declare void @Perl_save_re_context() local_unnamed_addr #15

declare ptr @Perl_new_stackinfo(i32 noundef, i32 noundef) local_unnamed_addr #15

declare ptr @Perl_markstack_grow() local_unnamed_addr #15

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #15

declare i32 @Perl_call_sv(ptr noundef, i32 noundef) local_unnamed_addr #15

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #15

declare ptr @Perl_get_sv(ptr noundef, i32 noundef) local_unnamed_addr #15

declare zeroext i1 @Perl_sv_derived_from(ptr noundef, ptr noundef) local_unnamed_addr #15

declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #41

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #41

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #41

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #42

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #41

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #41

attributes #0 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #20 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { cold mustprogress nofree nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { cold nofree nounwind memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { cold mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #42 = { nofree nounwind willreturn memory(argmem: read) }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind }
attributes #45 = { nounwind willreturn memory(none) }
attributes #46 = { nounwind allocsize(1) }
attributes #47 = { nounwind allocsize(0,1) }
attributes #48 = { nounwind willreturn memory(read) }
attributes #49 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!132}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131}
!35 = !{ptr @Perl_safesysmalloc, ptr @malloc, i64 8147096}
!36 = !{ptr @Perl_safesysrealloc, ptr @malloc, i64 4807}
!37 = !{ptr @Perl_safesysrealloc, ptr @realloc, i64 2160335}
!38 = !{ptr @Perl_safesysfree, ptr @free, i64 9552732}
!39 = !{ptr @Perl_safesyscalloc, ptr @calloc, i64 1488790}
!40 = !{ptr @Perl_instr, ptr @strstr, i64 2}
!41 = !{ptr @Perl_fbm_compile, ptr @Perl_sv_catpvn_flags, i64 177}
!42 = !{ptr @Perl_fbm_compile, ptr @Perl_sv_upgrade, i64 1009}
!43 = !{ptr @Perl_fbm_compile, ptr @Perl_sv_magicext, i64 1009}
!44 = !{ptr @Perl_fbm_compile, ptr @malloc, i64 153}
!45 = !{ptr @Perl_fbm_instr, ptr @bcmp, i64 118441}
!46 = !{ptr @Perl_fbm_instr, ptr @Perl_mg_find, i64 656857}
!47 = !{ptr @Perl_savepv, ptr @strlen, i64 43}
!48 = !{ptr @Perl_savepv, ptr @malloc, i64 43}
!49 = !{ptr @Perl_savepvn, ptr @malloc, i64 20808}
!50 = !{ptr @Perl_savesharedpv, ptr @strlen, i64 771}
!51 = !{ptr @Perl_savesharedpv, ptr @malloc, i64 771}
!52 = !{ptr @Perl_savesvpv, ptr @Perl_sv_2pv_flags, i64 1}
!53 = !{ptr @Perl_savesvpv, ptr @malloc, i64 1}
!54 = !{ptr @Perl_form, ptr @S_mess_alloc, i64 1}
!55 = !{ptr @Perl_form, ptr @strlen, i64 1}
!56 = !{ptr @Perl_form, ptr @Perl_sv_vsetpvfn, i64 1}
!57 = !{ptr @S_mess_alloc, ptr @Perl_newSVpvn_flags, i64 49}
!58 = !{ptr @Perl_vmess, ptr @S_mess_alloc, i64 48}
!59 = !{ptr @Perl_vmess, ptr @strlen, i64 48}
!60 = !{ptr @Perl_vmess, ptr @Perl_sv_vsetpvfn, i64 48}
!61 = !{ptr @Perl_vmess, ptr @Perl_mess_sv, i64 48}
!62 = !{ptr @Perl_closest_cop, ptr @Perl_closest_cop, i64 293}
!63 = !{ptr @Perl_mess_sv, ptr @Perl_closest_cop, i64 48}
!64 = !{ptr @Perl_mess_sv, ptr @Perl_sv_catpvf, i64 48}
!65 = !{ptr @Perl_mess_sv, ptr @Perl_sv_catpvn_flags, i64 48}
!66 = !{ptr @Perl_die, ptr @Perl_vcroak, i64 48}
!67 = !{ptr @Perl_vcroak, ptr @Perl_vmess, i64 48}
!68 = !{ptr @Perl_vcroak, ptr @S_with_queued_errors, i64 48}
!69 = !{ptr @Perl_vcroak, ptr @S_invoke_exception_hook, i64 48}
!70 = !{ptr @Perl_vcroak, ptr @Perl_die_unwind, i64 48}
!71 = !{ptr @Perl_new_warnings_bitfield, ptr @malloc, i64 5}
!72 = !{ptr @Perl_new_warnings_bitfield, ptr @realloc, i64 1}
!73 = !{ptr @Perl_my_setenv, ptr @strlen, i64 65}
!74 = !{ptr @Perl_my_setenv, ptr @strncmp, i64 64}
!75 = !{ptr @Perl_my_setenv, ptr @malloc, i64 65}
!76 = !{ptr @Perl_rsignal_state, ptr @__sysv_signal, i64 32}
!77 = !{ptr @Perl_find_script, ptr @Perl_savepv, i64 1}
!78 = !{ptr @Perl_my_fflush_all, ptr @Perl_PerlIO_flush, i64 1}
!79 = !{ptr @Perl_scan_version, ptr @Perl_prescan_version, i64 76}
!80 = !{ptr @Perl_scan_version, ptr @Perl_newSV_type, i64 76}
!81 = !{ptr @Perl_scan_version, ptr @Perl_newSVrv, i64 76}
!82 = !{ptr @Perl_scan_version, ptr @Perl_sv_upgrade, i64 76}
!83 = !{ptr @Perl_scan_version, ptr @Perl_newSViv, i64 168}
!84 = !{ptr @Perl_scan_version, ptr @Perl_hv_common, i64 154}
!85 = !{ptr @Perl_scan_version, ptr @Perl_av_push, i64 166}
!86 = !{ptr @Perl_scan_version, ptr @Perl_newSVpvn, i64 76}
!87 = !{ptr @Perl_scan_version, ptr @Perl_newRV_noinc, i64 76}
!88 = !{ptr @Perl_new_version, ptr @Perl_newSV, i64 35}
!89 = !{ptr @Perl_new_version, ptr @Perl_sv_isobject, i64 35}
!90 = !{ptr @Perl_new_version, ptr @Perl_sv_derived_from_pvn, i64 1}
!91 = !{ptr @Perl_new_version, ptr @Perl_newSV_type, i64 1}
!92 = !{ptr @Perl_new_version, ptr @Perl_newSVrv, i64 1}
!93 = !{ptr @Perl_new_version, ptr @Perl_sv_upgrade, i64 1}
!94 = !{ptr @Perl_new_version, ptr @Perl_hv_common_key_len, i64 2}
!95 = !{ptr @Perl_new_version, ptr @Perl_newSViv, i64 4}
!96 = !{ptr @Perl_new_version, ptr @Perl_hv_common, i64 6}
!97 = !{ptr @Perl_new_version, ptr @Perl_newSVsv, i64 1}
!98 = !{ptr @Perl_new_version, ptr @Perl_av_len, i64 4}
!99 = !{ptr @Perl_new_version, ptr @Perl_av_fetch, i64 3}
!100 = !{ptr @Perl_new_version, ptr @Perl_av_push, i64 3}
!101 = !{ptr @Perl_new_version, ptr @Perl_newRV_noinc, i64 1}
!102 = !{ptr @Perl_new_version, ptr @Perl_mg_find, i64 1}
!103 = !{ptr @Perl_new_version, ptr @Perl_sv_setpvn, i64 1}
!104 = !{ptr @Perl_new_version, ptr @Perl_sv_insert_flags, i64 1}
!105 = !{ptr @Perl_new_version, ptr @Perl_sv_setsv_flags, i64 33}
!106 = !{ptr @Perl_new_version, ptr @Perl_sv_2mortal, i64 34}
!107 = !{ptr @Perl_new_version, ptr @Perl_upg_version, i64 34}
!108 = !{ptr @Perl_upg_version, ptr @Perl_my_snprintf, i64 68}
!109 = !{ptr @Perl_upg_version, ptr @malloc, i64 68}
!110 = !{ptr @Perl_upg_version, ptr @Perl_save_pushptr, i64 76}
!111 = !{ptr @Perl_upg_version, ptr @Perl_savepvn, i64 8}
!112 = !{ptr @Perl_upg_version, ptr @Perl_scan_version, i64 76}
!113 = !{ptr @Perl_my_snprintf, ptr @vsprintf, i64 188}
!114 = !{ptr @Perl_vverify, ptr @Perl_hv_common, i64 6}
!115 = !{ptr @Perl_vnumify, ptr @Perl_vverify, i64 1}
!116 = !{ptr @Perl_vnumify, ptr @Perl_hv_common_key_len, i64 1}
!117 = !{ptr @Perl_vnumify, ptr @Perl_hv_common, i64 2}
!118 = !{ptr @Perl_vnumify, ptr @Perl_av_len, i64 1}
!119 = !{ptr @Perl_vnumify, ptr @Perl_av_fetch, i64 3}
!120 = !{ptr @Perl_vnumify, ptr @Perl_newSVpvf, i64 1}
!121 = !{ptr @Perl_vnumify, ptr @Perl_sv_catpvf, i64 2}
!122 = !{ptr @Perl_vstringify, ptr @Perl_vverify, i64 5}
!123 = !{ptr @Perl_vstringify, ptr @Perl_hv_common, i64 5}
!124 = !{ptr @Perl_vstringify, ptr @Perl_newSVsv, i64 5}
!125 = !{ptr @Perl_vcmp, ptr @Perl_hv_common, i64 244}
!126 = !{ptr @Perl_vcmp, ptr @Perl_hv_common_key_len, i64 122}
!127 = !{ptr @Perl_vcmp, ptr @Perl_av_len, i64 122}
!128 = !{ptr @Perl_vcmp, ptr @Perl_av_fetch, i64 239}
!129 = !{ptr @Perl_xs_handshake, ptr @Perl_save_pptr, i64 5}
!130 = !{ptr @Perl_xs_handshake, ptr @Perl_gv_fetchfile, i64 5}
!131 = !{ptr @Perl_xs_handshake, ptr @bcmp, i64 6}
!132 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!133 = !{!"function_entry_count", i64 8147096}
!134 = !{!"branch_weights", i32 0, i32 8147096}
!135 = !{!136, !136, i64 0}
!136 = !{!"_Bool", !137, i64 0}
!137 = !{!"omnipotent char", !138, i64 0}
!138 = !{!"Simple C/C++ TBAA"}
!139 = !{i8 0, i8 2}
!140 = !{}
!141 = !{!"function_entry_count", i64 0}
!142 = !{!143, !143, i64 0}
!143 = !{!"any pointer", !137, i64 0}
!144 = !{!145, !146, i64 12}
!145 = !{!"gv", !143, i64 0, !146, i64 8, !146, i64 12, !137, i64 16}
!146 = !{!"int", !137, i64 0}
!147 = !{!137, !137, i64 0}
!148 = !{!149, !143, i64 8}
!149 = !{!"gp", !143, i64 0, !143, i64 8, !143, i64 16, !146, i64 24, !146, i64 28, !143, i64 32, !143, i64 40, !143, i64 48, !143, i64 56, !146, i64 64, !146, i64 67, !143, i64 72}
!150 = !{!151, !143, i64 0}
!151 = !{!"io", !143, i64 0, !146, i64 8, !146, i64 12, !137, i64 16}
!152 = !{!153, !143, i64 40}
!153 = !{!"xpvio", !143, i64 0, !137, i64 8, !154, i64 16, !137, i64 24, !137, i64 32, !143, i64 40, !137, i64 48, !154, i64 56, !154, i64 64, !154, i64 72, !143, i64 80, !143, i64 88, !143, i64 96, !143, i64 104, !143, i64 112, !143, i64 120, !137, i64 128, !137, i64 129}
!154 = !{!"long", !137, i64 0}
!155 = !{!146, !146, i64 0}
!156 = !{!"function_entry_count", i64 2165142}
!157 = !{!"branch_weights", i32 0, i32 2165142}
!158 = !{!"branch_weights", i32 4807, i32 2160335}
!159 = !{!"branch_weights", i32 0, i32 4807}
!160 = !{!"branch_weights", i32 0, i32 2160335}
!161 = !{!"function_entry_count", i64 459491776}
!162 = !{!"branch_weights", i32 449939044, i32 9552732}
!163 = !{!"function_entry_count", i64 1488790}
!164 = !{!"branch_weights", i32 1488790, i32 0}
!165 = !{!"branch_weights", i32 0, i32 1488790}
!166 = !{!"function_entry_count", i64 50}
!167 = !{!"branch_weights", i32 1, i32 0}
!168 = !{!"branch_weights", i32 0, i32 387}
!169 = !{!"branch_weights", i32 50, i32 337}
!170 = !{!"branch_weights", i32 337, i32 0}
!171 = !{!"branch_weights", i32 387, i32 0}
!172 = distinct !{!172, !173, !174}
!173 = !{!"llvm.loop.mustprogress"}
!174 = !{!"llvm.loop.unroll.disable"}
!175 = !{!"branch_weights", i32 50, i32 0}
!176 = !{!"function_entry_count", i64 2}
!177 = distinct !{!177, !173, !174}
!178 = distinct !{!178, !173, !174}
!179 = distinct !{!179, !173, !174}
!180 = distinct !{!180, !173, !174}
!181 = !{!"function_entry_count", i64 1009}
!182 = !{!183, !146, i64 12}
!183 = !{!"sv", !143, i64 0, !146, i64 8, !146, i64 12, !137, i64 16}
!184 = !{!"branch_weights", i32 0, i32 1009}
!185 = !{!"branch_weights", i32 1009, i32 1009}
!186 = !{!"branch_weights", i32 1009, i32 0}
!187 = !{!"branch_weights", i32 832, i32 177}
!188 = !{!"branch_weights", i32 177, i32 0}
!189 = !{!190, !154, i64 24}
!190 = !{!"magic", !143, i64 0, !143, i64 8, !191, i64 16, !137, i64 18, !137, i64 19, !154, i64 24, !143, i64 32, !143, i64 40}
!191 = !{!"short", !137, i64 0}
!192 = !{!183, !143, i64 0}
!193 = !{!194, !154, i64 16}
!194 = !{!"xpv", !143, i64 0, !137, i64 8, !154, i64 16, !137, i64 24}
!195 = !{!154, !154, i64 0}
!196 = !{!"branch_weights", i32 153, i32 856}
!197 = !{!"branch_weights", i32 0, i32 153}
!198 = !{!190, !143, i64 40}
!199 = !{!"branch_weights", i32 1, i32 152}
!200 = !{!"branch_weights", i32 1076, i32 234}
!201 = !{!"branch_weights", i32 152, i32 1158}
!202 = distinct !{!202, !173, !174}
!203 = !{!"function_entry_count", i64 4280858}
!204 = !{!"branch_weights", i32 4280858, i32 0}
!205 = !{!"branch_weights", i32 119441, i32 4161417}
!206 = !{!"branch_weights", i32 119441, i32 0}
!207 = !{!"branch_weights", i32 1000, i32 118441}
!208 = !{!"branch_weights", i32 118441, i32 0}
!209 = !{!"VP", i32 1, i64 118441, i64 1, i64 118441}
!210 = !{!"branch_weights", i32 656857, i32 0, i32 3291682, i32 212878}
!211 = !{!"branch_weights", i32 3149771, i32 141911}
!212 = !{!"branch_weights", i32 1369463, i32 1}
!213 = !{!"branch_weights", i32 532, i32 141379}
!214 = !{!"branch_weights", i32 1780307, i32 88029694}
!215 = !{!"branch_weights", i32 1369463, i32 88440538}
!216 = distinct !{!216, !173, !174}
!217 = !{!"branch_weights", i32 0, i32 1369464}
!218 = !{!"branch_weights", i32 67585, i32 145293}
!219 = !{!"branch_weights", i32 0, i32 145293}
!220 = !{!"branch_weights", i32 118441, i32 26852}
!221 = !{!"branch_weights", i32 90, i32 67495}
!222 = !{!"branch_weights", i32 1, i32 67149}
!223 = !{!"branch_weights", i32 1, i32 173}
!224 = !{!"branch_weights", i32 0, i32 1024595}
!225 = !{!"branch_weights", i32 67149, i32 957446}
!226 = distinct !{!226, !173, !174}
!227 = !{!"branch_weights", i32 615, i32 1024250}
!228 = !{!"branch_weights", i32 345, i32 270}
!229 = !{!"branch_weights", i32 0, i32 270}
!230 = !{!"branch_weights", i32 3, i32 318}
!231 = !{!"branch_weights", i32 3, i32 0}
!232 = !{!"branch_weights", i32 173, i32 469}
!233 = distinct !{!233, !173, !174}
!234 = !{!"branch_weights", i32 3, i32 87, i32 67495}
!235 = !{!"branch_weights", i32 0, i32 67582}
!236 = !{!"branch_weights", i32 656857, i32 0}
!237 = !{!"branch_weights", i32 0, i32 656857}
!238 = !{!"branch_weights", i32 64914, i32 3129113}
!239 = !{!"branch_weights", i32 2514154, i32 614959}
!240 = !{!"branch_weights", i32 41898, i32 186445}
!241 = !{!"branch_weights", i32 163429, i32 23016}
!242 = distinct !{!242, !173, !174}
!243 = !{!"branch_weights", i32 23016, i32 0}
!244 = !{!"branch_weights", i32 23016, i32 41898}
!245 = !{!"branch_weights", i32 614959, i32 41898}
!246 = !{!"branch_weights", i32 153212, i32 461747}
!247 = !{!"branch_weights", i32 0, i32 153212}
!248 = !{!"function_entry_count", i64 11970}
!249 = !{!"branch_weights", i32 1, i32 11969}
!250 = !{!"branch_weights", i32 126100, i32 0}
!251 = !{!"branch_weights", i32 11969, i32 114131}
!252 = distinct !{!252, !173, !174}
!253 = !{!"function_entry_count", i64 205380}
!254 = !{!"branch_weights", i32 1, i32 166092}
!255 = !{!"branch_weights", i32 1360484, i32 41690}
!256 = !{!"branch_weights", i32 2403, i32 39287}
!257 = !{!"branch_weights", i32 166092, i32 1236082}
!258 = distinct !{!258, !173, !174}
!259 = distinct !{!259, !173, !174}
!260 = !{!"function_entry_count", i64 43}
!261 = !{!"branch_weights", i32 0, i32 43}
!262 = !{!"VP", i32 1, i64 43, i64 9, i64 33, i64 16, i64 6, i64 17, i64 4}
!263 = !{!"function_entry_count", i64 20808}
!264 = !{!"branch_weights", i32 0, i32 20875}
!265 = !{!"VP", i32 1, i64 20808, i64 7, i64 14033, i64 1, i64 6412, i64 9, i64 171, i64 8, i64 71}
!266 = !{!"function_entry_count", i64 771}
!267 = !{!"branch_weights", i32 0, i32 771}
!268 = !{!"VP", i32 1, i64 771, i64 9, i64 413, i64 6, i64 275, i64 3, i64 51, i64 7, i64 14}
!269 = !{!"function_entry_count", i64 1}
!270 = !{!"branch_weights", i32 0, i32 1}
!271 = !{!"VP", i32 1, i64 1, i64 2, i64 1}
!272 = !{!"function_entry_count", i64 49}
!273 = !{!"util.c;S_mess_alloc"}
!274 = !{!"branch_weights", i32 0, i32 49}
!275 = !{!183, !146, i64 8}
!276 = !{!"function_entry_count", i64 48}
!277 = !{!"function_entry_count", i64 344}
!278 = !{!"branch_weights", i32 344, i32 0}
!279 = !{!"branch_weights", i32 72, i32 272}
!280 = !{!281, !143, i64 0}
!281 = !{!"op", !143, i64 0, !143, i64 8, !143, i64 16, !154, i64 24, !146, i64 32, !146, i64 33, !146, i64 33, !146, i64 33, !146, i64 33, !146, i64 33, !146, i64 33, !146, i64 33, !137, i64 34, !137, i64 35}
!282 = !{!"branch_weights", i32 30, i32 42}
!283 = !{!"branch_weights", i32 0, i32 30}
!284 = !{!"branch_weights", i32 48, i32 224}
!285 = !{!281, !137, i64 34}
!286 = !{!"branch_weights", i32 100, i32 166}
!287 = !{!"branch_weights", i32 1, i32 127}
!288 = !{!"branch_weights", i32 127, i32 937}
!289 = distinct !{!289, !173, !174}
!290 = !{!"branch_weights", i32 64, i32 202}
!291 = !{!281, !154, i64 24}
!292 = !{!"branch_weights", i32 0, i32 64}
!293 = !{!"branch_weights", i32 132, i32 134}
!294 = !{!"branch_weights", i32 32, i32 134}
!295 = !{!"branch_weights", i32 48, i32 0}
!296 = !{!"branch_weights", i32 0, i32 48}
!297 = !{!298, !143, i64 8}
!298 = !{!"cop", !143, i64 0, !143, i64 8, !143, i64 16, !154, i64 24, !146, i64 32, !146, i64 33, !146, i64 33, !146, i64 33, !146, i64 33, !146, i64 33, !146, i64 33, !146, i64 33, !137, i64 34, !137, i64 35, !146, i64 36, !143, i64 40, !143, i64 48, !146, i64 56, !146, i64 60, !143, i64 64, !143, i64 72}
!299 = !{!298, !146, i64 36}
!300 = !{!298, !143, i64 48}
!301 = !{!145, !143, i64 0}
!302 = !{!151, !146, i64 12}
!303 = !{!145, !146, i64 8}
!304 = !{!149, !143, i64 0}
!305 = !{!"util.c;S_with_queued_errors"}
!306 = !{!"util.c;S_invoke_exception_hook"}
!307 = !{!308, !143, i64 0}
!308 = !{!"cv", !143, i64 0, !146, i64 8, !146, i64 12, !137, i64 16}
!309 = !{!310, !143, i64 24}
!310 = !{!"stackinfo", !143, i64 0, !143, i64 8, !143, i64 16, !143, i64 24, !146, i64 32, !146, i64 36, !146, i64 40, !146, i64 44}
!311 = !{!310, !143, i64 16}
!312 = !{!310, !146, i64 40}
!313 = !{!310, !146, i64 32}
!314 = !{!310, !143, i64 0}
!315 = !{!316, !143, i64 0}
!316 = !{!"av", !143, i64 0, !146, i64 8, !146, i64 12, !137, i64 16}
!317 = !{!318, !154, i64 16}
!318 = !{!"xpvav", !143, i64 0, !137, i64 8, !154, i64 16, !154, i64 24, !143, i64 32}
!319 = !{!318, !154, i64 24}
!320 = !{!"function_entry_count", i64 12}
!321 = !{!298, !143, i64 64}
!322 = !{!"branch_weights", i32 12, i32 0}
!323 = distinct !{!323, !173, !174}
!324 = !{!325, !137, i64 239}
!325 = !{!"yy_parser", !143, i64 0, !137, i64 8, !146, i64 16, !146, i64 20, !146, i64 24, !146, i64 28, !143, i64 32, !143, i64 40, !146, i64 48, !146, i64 52, !143, i64 56, !143, i64 64, !137, i64 72, !137, i64 73, !137, i64 74, !137, i64 75, !146, i64 76, !143, i64 80, !143, i64 88, !143, i64 96, !191, i64 104, !191, i64 106, !146, i64 108, !143, i64 112, !146, i64 120, !146, i64 124, !137, i64 128, !137, i64 129, !136, i64 130, !136, i64 131, !146, i64 132, !326, i64 136, !143, i64 160, !143, i64 168, !143, i64 176, !143, i64 184, !143, i64 192, !143, i64 200, !143, i64 208, !143, i64 216, !143, i64 224, !146, i64 232, !191, i64 236, !137, i64 238, !137, i64 239, !143, i64 240, !143, i64 248, !143, i64 256, !137, i64 264, !137, i64 272, !137, i64 312, !146, i64 332, !143, i64 336, !137, i64 344, !146, i64 600, !146, i64 604, !137, i64 608, !137, i64 609, !146, i64 610, !146, i64 610, !146, i64 610, !146, i64 610}
!326 = !{!"_sublex_info", !137, i64 0, !191, i64 2, !143, i64 8, !143, i64 16}
!327 = !{!"function_entry_count", i64 457651009}
!328 = !{!"branch_weights", i32 457152279, i32 498730}
!329 = !{!"branch_weights", i32 497967, i32 763, i32 0}
!330 = !{!"branch_weights", i32 -423515074, i32 0}
!331 = !{!"function_entry_count", i64 6}
!332 = !{!"branch_weights", i32 1, i32 0, i32 1, i32 4}
!333 = !{!"VP", i32 1, i64 6, i64 17, i64 6}
!334 = !{!"branch_weights", i32 0, i32 6}
!335 = !{!"branch_weights", i32 127, i32 8065}
!336 = distinct !{!336, !173, !174}
!337 = distinct !{!337, !173, !174}
!338 = !{!"VP", i32 1, i64 64, i64 17, i64 26, i64 33, i64 14, i64 65, i64 8, i64 9, i64 7}
!339 = distinct !{!339, !173, !174}
!340 = distinct !{!340, !173, !174}
!341 = distinct !{!341, !173, !174}
!342 = distinct !{!342, !173, !174}
!343 = distinct !{!343, !173, !174}
!344 = distinct !{!344, !173, !174}
!345 = distinct !{!345, !173, !174}
!346 = distinct !{!346, !173, !174}
!347 = !{!"function_entry_count", i64 16}
!348 = !{!"branch_weights", i32 16, i32 0}
!349 = distinct !{!349, !173, !174}
!350 = !{!"function_entry_count", i64 5}
!351 = !{!"branch_weights", i32 0, i32 5}
!352 = !{!"branch_weights", i32 3, i32 2}
!353 = !{!"VP", i32 1, i64 3, i64 1, i64 1, i64 9, i64 1, i64 3, i64 1}
!354 = !{!"branch_weights", i32 0, i32 2}
!355 = !{!"branch_weights", i32 127, i32 1}
!356 = !{!"branch_weights", i32 10113, i32 127}
!357 = distinct !{!357, !173, !174}
!358 = !{!"branch_weights", i32 127, i32 129}
!359 = distinct !{!359, !173, !174}
!360 = distinct !{!360, !173, !174}
!361 = !{!362, !154, i64 0}
!362 = !{!"stat", !154, i64 0, !154, i64 8, !154, i64 16, !146, i64 24, !146, i64 28, !146, i64 32, !146, i64 36, !154, i64 40, !154, i64 48, !154, i64 56, !154, i64 64, !363, i64 72, !363, i64 88, !363, i64 104, !137, i64 120}
!363 = !{!"timespec", !154, i64 0, !154, i64 8}
!364 = distinct !{!364, !173, !174}
!365 = !{!362, !146, i64 24}
!366 = !{!149, !143, i64 56}
!367 = !{!368, !146, i64 4}
!368 = !{!"hek", !146, i64 0, !146, i64 4, !137, i64 8}
!369 = !{!153, !137, i64 128}
!370 = !{!153, !137, i64 129}
!371 = !{!372, !146, i64 20}
!372 = !{!"tm", !146, i64 0, !146, i64 4, !146, i64 8, !146, i64 12, !146, i64 16, !146, i64 20, !146, i64 24, !146, i64 28, !146, i64 32, !154, i64 40, !143, i64 48}
!373 = !{!372, !146, i64 16}
!374 = !{!372, !146, i64 12}
!375 = !{!372, !146, i64 0}
!376 = !{!372, !146, i64 4}
!377 = !{!372, !146, i64 8}
!378 = !{!372, !146, i64 28}
!379 = !{!372, !146, i64 24}
!380 = !{!"function_entry_count", i64 196}
!381 = !{!"branch_weights", i32 120, i32 76}
!382 = !{!"branch_weights", i32 1, i32 195}
!383 = !{!"branch_weights", i32 2, i32 194}
!384 = !{!"branch_weights", i32 2, i32 2}
!385 = distinct !{!385, !173, !174}
!386 = !{!"branch_weights", i32 2, i32 0}
!387 = !{!"branch_weights", i32 4, i32 6}
!388 = distinct !{!388, !173, !174}
!389 = !{!"branch_weights", i32 2, i32 0, i32 2}
!390 = !{!"branch_weights", i32 0, i32 4}
!391 = distinct !{!391, !173, !174}
!392 = !{!"branch_weights", i32 120, i32 74}
!393 = !{!"branch_weights", i32 23280, i32 0, i32 0, i32 0}
!394 = !{!"branch_weights", i32 0, i32 194}
!395 = !{!"branch_weights", i32 194, i32 74}
!396 = distinct !{!396, !173, !174}
!397 = !{!"branch_weights", i32 0, i32 70, i32 4, i32 120}
!398 = !{!"branch_weights", i32 0, i32 70}
!399 = !{!"branch_weights", i32 120, i32 4}
!400 = !{!"branch_weights", i32 0, i32 120}
!401 = !{!"branch_weights", i32 1, i32 139}
!402 = !{!"branch_weights", i32 61009, i32 0, i32 0}
!403 = !{!"branch_weights", i32 139, i32 355}
!404 = distinct !{!404, !173, !174}
!405 = !{!"branch_weights", i32 120, i32 70, i32 0, i32 4}
!406 = !{!"branch_weights", i32 0, i32 76}
!407 = distinct !{!407, !173, !174}
!408 = !{!"branch_weights", i32 76, i32 0}
!409 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 76}
!410 = !{!"function_entry_count", i64 76}
!411 = distinct !{!411, !173, !174}
!412 = !{!"branch_weights", i32 74, i32 2}
!413 = !{!"branch_weights", i32 76, i32 76}
!414 = distinct !{!414, !173, !174}
!415 = !{!"branch_weights", i32 160, i32 6}
!416 = !{!"branch_weights", i32 86, i32 74}
!417 = !{!"branch_weights", i32 171, i32 1}
!418 = !{!"branch_weights", i32 0, i32 247}
!419 = !{!"branch_weights", i32 323, i32 171}
!420 = distinct !{!420, !173, !174}
!421 = !{!"branch_weights", i32 1, i32 159}
!422 = !{!"branch_weights", i32 0, i32 82}
!423 = !{!"branch_weights", i32 159, i32 5}
!424 = distinct !{!424, !173, !174}
!425 = !{!"branch_weights", i32 166, i32 0}
!426 = !{!"branch_weights", i32 8464, i32 6808, i32 0, i32 0}
!427 = !{!"branch_weights", i32 0, i32 92}
!428 = !{!"branch_weights", i32 76, i32 16}
!429 = !{!"branch_weights", i32 86, i32 4}
!430 = distinct !{!430, !173, !174}
!431 = !{!"branch_weights", i32 70, i32 263}
!432 = !{!"branch_weights", i32 247, i32 16}
!433 = distinct !{!433, !173, !174}
!434 = distinct !{!434, !174}
!435 = distinct !{!435, !173, !174}
!436 = !{!"branch_weights", i32 2, i32 74}
!437 = !{!"function_entry_count", i64 35}
!438 = !{!"branch_weights", i32 34, i32 1}
!439 = !{!"branch_weights", i32 257, i32 127}
!440 = distinct !{!440, !173, !174}
!441 = !{!"branch_weights", i32 33, i32 1}
!442 = !{!"branch_weights", i32 0, i32 33}
!443 = !{!"branch_weights", i32 75, i32 1}
!444 = !{!"branch_weights", i32 8, i32 67}
!445 = !{!"branch_weights", i32 67, i32 0}
!446 = !{!"branch_weights", i32 0, i32 67}
!447 = !{!"branch_weights", i32 367, i32 67}
!448 = distinct !{!448, !173, !174}
!449 = !{!"branch_weights", i32 2, i32 65}
!450 = !{!"VP", i32 1, i64 67, i64 7, i64 45, i64 1, i64 20, i64 9, i64 0, i64 8, i64 0}
!451 = !{!"branch_weights", i32 8, i32 0}
!452 = !{!"branch_weights", i32 0, i32 8}
!453 = !{!"function_entry_count", i64 188}
!454 = !{!"branch_weights", i32 0, i32 188}
!455 = !{!"branch_weights", i32 3, i32 125}
!456 = !{!"branch_weights", i32 128, i32 0}
!457 = !{!"branch_weights", i32 0, i32 128}
!458 = distinct !{!458, !173, !174}
!459 = distinct !{!459, !173, !174}
!460 = distinct !{!460, !173, !174}
!461 = !{!"function_entry_count", i64 61}
!462 = !{!"branch_weights", i32 61, i32 0}
!463 = !{!"branch_weights", i32 243, i32 1}
!464 = !{!"branch_weights", i32 118, i32 0}
!465 = !{!"branch_weights", i32 1, i32 117}
!466 = !{!"branch_weights", i32 229, i32 243}
!467 = distinct !{!467, !173, !174}
!468 = !{!"branch_weights", i32 4, i32 57}
!469 = !{!"branch_weights", i32 4, i32 0}
!470 = !{!"branch_weights", i32 3, i32 58}
!471 = !{!"branch_weights", i32 1, i32 191}
!472 = !{!"branch_weights", i32 191, i32 1}
!473 = distinct !{!473, !173, !174}
!474 = distinct !{!474, !173, !174}
!475 = !{!"function_entry_count", i64 12900}
!476 = distinct !{!476, !173, !174}
!477 = distinct !{!477, !173, !174}
!478 = !{!"branch_weights", i32 0, i32 6, i32 0}
!479 = !{!"branch_weights", i32 1, i32 5}
!480 = !{!"branch_weights", i32 6, i32 0}
!481 = !{!482, !146, i64 92}
!482 = !{!"xpvcv", !143, i64 0, !137, i64 8, !154, i64 16, !137, i64 24, !143, i64 32, !137, i64 40, !137, i64 48, !137, i64 56, !143, i64 64, !137, i64 72, !143, i64 80, !146, i64 88, !146, i64 92, !146, i64 96}
!483 = !{!149, !143, i64 16}
!484 = !{!485, !146, i64 12}
!485 = !{!"hv", !143, i64 0, !146, i64 8, !146, i64 12, !137, i64 16}
!486 = !{!485, !143, i64 0}
!487 = !{!488, !154, i64 24}
!488 = !{!"xpvhv", !143, i64 0, !137, i64 8, !154, i64 16, !154, i64 24}
!489 = !{!490, !146, i64 28}
!490 = !{!"xpvhv_aux", !137, i64 0, !143, i64 8, !143, i64 16, !146, i64 24, !146, i64 28, !143, i64 32, !146, i64 40, !146, i64 44, !146, i64 48, !146, i64 52}
!491 = !{!368, !146, i64 0}
