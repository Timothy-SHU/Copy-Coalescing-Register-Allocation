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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @Perl_safesysmalloc(i64 noundef %0) local_unnamed_addr #0 !prof !142 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %3, label %4, !prof !143

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %3, %1
  %5 = phi i64 [ %0, %1 ], [ 1, %3 ]
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12, !prof !143

8:                                                ; preds = %4
  %9 = load i8, ptr @PL_nomemok, align 1, !tbaa !144, !range !148, !noundef !149
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @Perl_croak_no_mem() #39
  br label %12

12:                                               ; preds = %8, %4, %11
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_croak_no_mem() local_unnamed_addr #0 !prof !142 {
  %1 = load ptr, ptr @PL_stderrgv, align 8, !tbaa !150
  %2 = icmp eq ptr %1, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.gv, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !152
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 9
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.gv, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !155
  %11 = getelementptr inbounds %struct.gp, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !156
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %12, align 8, !tbaa !158
  %16 = getelementptr inbounds %struct.xpvio, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !160
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %8, %3, %0
  %20 = tail call ptr @Perl_PerlIO_stderr() #40
  br label %21

21:                                               ; preds = %14, %19
  %22 = phi ptr [ %20, %19 ], [ %17, %14 ]
  %23 = tail call i32 @Perl_PerlIO_fileno(ptr noundef %22) #40
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = tail call ptr @__errno_location() #41
  store i32 9, ptr %26, align 4, !tbaa !163
  br label %29

27:                                               ; preds = %21
  %28 = tail call i64 @write(i32 noundef %23, ptr noundef nonnull @PL_no_mem, i64 noundef 15) #40
  br label %29

29:                                               ; preds = %27, %25
  tail call void @Perl_my_exit(i32 noundef 1) #40
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @Perl_safesysrealloc(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !142 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %4, label %5, !prof !164

4:                                                ; preds = %2
  tail call void @Perl_safesysfree(ptr noundef %0) #39
  br label %16

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %9, !prof !165

7:                                                ; preds = %5
  %8 = tail call ptr @Perl_safesysmalloc(i64 noundef %1) #39
  br label %16

9:                                                ; preds = %5
  %10 = tail call ptr @realloc(ptr noundef nonnull %0, i64 noundef %1) #42
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16, !prof !166

12:                                               ; preds = %9
  %13 = load i8, ptr @PL_nomemok, align 1, !tbaa !144, !range !148, !noundef !149
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @Perl_croak_no_mem() #39
  br label %16

16:                                               ; preds = %12, %7, %15, %9, %4
  %17 = phi ptr [ null, %15 ], [ %10, %9 ], [ %8, %7 ], [ null, %4 ], [ null, %12 ]
  ret ptr %17
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @Perl_safesysfree(ptr noundef %0) local_unnamed_addr #3 !prof !167 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3, !prof !168

3:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %0) #40
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @Perl_safesyscalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !142 {
  %3 = icmp ne i64 %1, 0
  br i1 %3, label %4, label %7, !prof !169

4:                                                ; preds = %2
  %5 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0)
  %6 = extractvalue { i64, i1 } %5, 1
  br i1 %6, label %7, label %8, !prof !170

7:                                                ; preds = %4, %2
  tail call fastcc void @S_croak_memory_wrap() #39
  br label %8

8:                                                ; preds = %4, %7
  %9 = icmp ne i64 %0, 0
  %10 = and i1 %9, %3
  br i1 %10, label %11, label %13, !prof !171

11:                                               ; preds = %8
  %12 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #43
  br label %17

13:                                               ; preds = %8
  %14 = select i1 %9, i64 %0, i64 1
  %15 = select i1 %3, i64 %1, i64 1
  %16 = tail call noalias ptr @calloc(i64 noundef %14, i64 noundef %15) #43
  br label %17

17:                                               ; preds = %13, %11
  %18 = phi ptr [ %12, %11 ], [ %16, %13 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %24, !prof !170

20:                                               ; preds = %17
  %21 = load i8, ptr @PL_nomemok, align 1, !tbaa !144, !range !148, !noundef !149
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call void @Perl_croak_no_mem() #39
  br label %24

24:                                               ; preds = %20, %17, %23
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_croak_memory_wrap() unnamed_addr #0 !prof !142 !PGOFuncName !172 {
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.8, ptr noundef nonnull @PL_memory_wrap) #39
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @Perl_malloc(i64 noundef %0) local_unnamed_addr #7 !prof !142 {
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #38
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @Perl_calloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #7 !prof !142 {
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #43
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @Perl_realloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #3 !prof !142 {
  %3 = tail call ptr @realloc(ptr noundef %0, i64 noundef %1) #42
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @Perl_mfree(ptr nocapture noundef %0) local_unnamed_addr #3 !prof !142 {
  tail call void @free(ptr noundef %0) #40
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @Perl_delimcpy(ptr noundef writeonly %0, ptr noundef readnone %1, ptr noundef readonly %2, ptr noundef readnone %3, i32 noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #8 !prof !173 {
  %7 = icmp ult ptr %2, %3
  br i1 %7, label %8, label %42, !prof !174

8:                                                ; preds = %6, %37
  %9 = phi i32 [ %40, %37 ], [ 0, %6 ]
  %10 = phi ptr [ %38, %37 ], [ %0, %6 ]
  %11 = phi ptr [ %39, %37 ], [ %2, %6 ]
  %12 = load i8, ptr %11, align 1, !tbaa !155
  %13 = icmp eq i8 %12, 92
  br i1 %13, label %14, label %26, !prof !175

14:                                               ; preds = %8
  %15 = getelementptr inbounds i8, ptr %11, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !155
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, %4
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = icmp ult ptr %10, %1
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 92, ptr %10, align 1, !tbaa !155
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %22, %21 ], [ %10, %19 ]
  %25 = add nsw i32 %9, 1
  br label %29

26:                                               ; preds = %8
  %27 = sext i8 %12 to i32
  %28 = icmp eq i32 %27, %4
  br i1 %28, label %42, label %29, !prof !176

29:                                               ; preds = %14, %23, %26
  %30 = phi ptr [ %11, %26 ], [ %15, %23 ], [ %15, %14 ]
  %31 = phi ptr [ %10, %26 ], [ %24, %23 ], [ %10, %14 ]
  %32 = phi i32 [ %9, %26 ], [ %25, %23 ], [ %9, %14 ]
  %33 = icmp ult ptr %31, %1
  br i1 %33, label %34, label %37, !prof !177

34:                                               ; preds = %29
  %35 = load i8, ptr %30, align 1, !tbaa !155
  %36 = getelementptr inbounds i8, ptr %31, i64 1
  store i8 %35, ptr %31, align 1, !tbaa !155
  br label %37

37:                                               ; preds = %29, %34
  %38 = phi ptr [ %36, %34 ], [ %31, %29 ]
  %39 = getelementptr inbounds i8, ptr %30, i64 1
  %40 = add nsw i32 %32, 1
  %41 = icmp ult ptr %39, %3
  br i1 %41, label %8, label %42, !prof !178, !llvm.loop !179

42:                                               ; preds = %37, %26, %6
  %43 = phi ptr [ %2, %6 ], [ %11, %26 ], [ %39, %37 ]
  %44 = phi ptr [ %0, %6 ], [ %10, %26 ], [ %38, %37 ]
  %45 = phi i32 [ 0, %6 ], [ %9, %26 ], [ %40, %37 ]
  %46 = icmp ult ptr %44, %1
  br i1 %46, label %47, label %48, !prof !181

47:                                               ; preds = %42
  store i8 0, ptr %44, align 1, !tbaa !155
  br label %48

48:                                               ; preds = %47, %42
  store i32 %45, ptr %5, align 4, !tbaa !163
  ret ptr %43
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @Perl_instr(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !182 {
  %3 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #44
  ret ptr %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @Perl_ninstr(ptr noundef readonly %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 !prof !142 {
  %5 = icmp ult ptr %2, %3
  br i1 %5, label %6, label %33

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1, !tbaa !155
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
  %19 = load i8, ptr %15, align 1, !tbaa !155
  %20 = icmp eq i8 %19, %7
  br i1 %20, label %22, label %21

21:                                               ; preds = %27, %17
  br label %14, !llvm.loop !183

22:                                               ; preds = %17
  br i1 %13, label %27, label %33

23:                                               ; preds = %27
  %24 = getelementptr inbounds i8, ptr %29, i64 1
  %25 = getelementptr inbounds i8, ptr %28, i64 1
  %26 = icmp eq ptr %25, %3
  br i1 %26, label %33, label %27, !llvm.loop !184

27:                                               ; preds = %22, %23
  %28 = phi ptr [ %25, %23 ], [ %12, %22 ]
  %29 = phi ptr [ %24, %23 ], [ %18, %22 ]
  %30 = load i8, ptr %28, align 1, !tbaa !155
  %31 = load i8, ptr %29, align 1, !tbaa !155
  %32 = icmp eq i8 %30, %31
  br i1 %32, label %23, label %21

33:                                               ; preds = %22, %14, %23, %4
  %34 = phi ptr [ %0, %4 ], [ %15, %23 ], [ %15, %22 ], [ null, %14 ]
  ret ptr %34
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @Perl_rninstr(ptr noundef readnone %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 !prof !142 {
  %5 = load i8, ptr %2, align 1, !tbaa !155
  %6 = icmp ult ptr %2, %3
  br i1 %6, label %7, label %30

7:                                                ; preds = %4
  %8 = ptrtoint ptr %3 to i64
  %9 = ptrtoint ptr %2 to i64
  %10 = sub i64 %9, %8
  %11 = getelementptr inbounds i8, ptr %1, i64 %10
  %12 = icmp ult ptr %11, %0
  br i1 %12, label %30, label %13

13:                                               ; preds = %7, %28
  %14 = phi ptr [ %15, %28 ], [ %11, %7 ]
  %15 = getelementptr inbounds i8, ptr %14, i64 -1
  %16 = load i8, ptr %14, align 1, !tbaa !155
  %17 = icmp eq i8 %16, %5
  br i1 %17, label %18, label %28, !llvm.loop !185

18:                                               ; preds = %13, %23
  %19 = phi ptr [ %21, %23 ], [ %2, %13 ]
  %20 = phi ptr [ %24, %23 ], [ %14, %13 ]
  %21 = getelementptr inbounds i8, ptr %19, i64 1
  %22 = icmp ult ptr %21, %3
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = getelementptr inbounds i8, ptr %20, i64 1
  %25 = load i8, ptr %21, align 1, !tbaa !155
  %26 = load i8, ptr %24, align 1, !tbaa !155
  %27 = icmp eq i8 %25, %26
  br i1 %27, label %18, label %28, !llvm.loop !186

28:                                               ; preds = %23, %13
  %29 = icmp ult ptr %15, %0
  br i1 %29, label %30, label %13

30:                                               ; preds = %28, %18, %7, %4
  %31 = phi ptr [ %1, %4 ], [ null, %7 ], [ %14, %18 ], [ null, %28 ]
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_fbm_compile(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !187 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #45
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !188
  %6 = and i32 %5, 49152
  %7 = icmp eq i32 %6, 32768
  br i1 %7, label %8, label %15, !prof !190

8:                                                ; preds = %2
  %9 = and i32 %5, 255
  %10 = add nsw i32 %9, -11
  %11 = icmp ult i32 %10, -2
  %12 = and i32 %5, 1073743872
  %13 = icmp eq i32 %12, 0
  %14 = and i1 %13, %11
  br i1 %14, label %23, label %121, !prof !191

15:                                               ; preds = %2
  %16 = and i32 %5, 2048
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %121, !prof !192

18:                                               ; preds = %15
  %19 = and i32 %5, 1073741824
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21, !prof !192

21:                                               ; preds = %18
  %22 = icmp eq i32 %6, 49152
  br i1 %22, label %23, label %121

23:                                               ; preds = %8, %21, %18
  %24 = and i32 %1, 15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %42, label %26, !prof !193

26:                                               ; preds = %23
  %27 = and i32 %5, 536870912
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29, !prof !194

29:                                               ; preds = %26
  %30 = and i32 %5, 14680064
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26
  tail call void @Perl_sv_catpvn_flags(ptr noundef nonnull %0, ptr noundef nonnull @.str, i64 noundef 1, i32 noundef 2) #40
  br label %42

33:                                               ; preds = %29
  %34 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 119) #40
  tail call void @Perl_sv_catpvn_flags(ptr noundef nonnull %0, ptr noundef nonnull @.str, i64 noundef 1, i32 noundef 2) #40
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36, !prof !195

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.magic, ptr %34, i64 0, i32 5
  %38 = load i64, ptr %37, align 8, !tbaa !196
  %39 = icmp sgt i64 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = add nuw nsw i64 %38, 1
  store i64 %41, ptr %37, align 8, !tbaa !196
  br label %42

42:                                               ; preds = %32, %33, %36, %40, %23
  %43 = load i32, ptr %4, align 4, !tbaa !188
  %44 = and i32 %43, 13312
  %45 = icmp eq i32 %44, 1024
  br i1 %45, label %57, label %46, !prof !199

46:                                               ; preds = %42
  %47 = and i32 %43, 430018304
  %48 = icmp eq i32 %47, 1024
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load ptr, ptr %0, align 8, !tbaa !200
  %51 = getelementptr inbounds %struct.xpv, ptr %50, i64 0, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !201
  store i64 %52, ptr %3, align 8, !tbaa !203
  %53 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !155
  br label %71

55:                                               ; preds = %46
  %56 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 66) #40
  br label %68

57:                                               ; preds = %42
  %58 = and i32 %43, 2098176
  %59 = icmp eq i32 %58, 1024
  br i1 %59, label %60, label %66, !prof !192

60:                                               ; preds = %57
  %61 = load ptr, ptr %0, align 8, !tbaa !200
  %62 = getelementptr inbounds %struct.xpv, ptr %61, i64 0, i32 2
  %63 = load i64, ptr %62, align 8, !tbaa !201
  store i64 %63, ptr %3, align 8, !tbaa !203
  %64 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !155
  br label %71

66:                                               ; preds = %57
  %67 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 66) #40
  br label %68

68:                                               ; preds = %55, %66
  %69 = phi ptr [ %67, %66 ], [ %56, %55 ]
  %70 = load i64, ptr %3, align 8, !tbaa !203
  br label %71

71:                                               ; preds = %68, %60, %49
  %72 = phi i64 [ %70, %68 ], [ %63, %60 ], [ %52, %49 ]
  %73 = phi ptr [ %69, %68 ], [ %65, %60 ], [ %54, %49 ]
  %74 = icmp eq i64 %72, 0
  br i1 %74, label %121, label %75, !prof !190

75:                                               ; preds = %71
  %76 = load i32, ptr %4, align 4, !tbaa !188
  %77 = and i32 %76, 255
  %78 = icmp ugt i32 %77, 6
  br i1 %78, label %81, label %79, !prof !190

79:                                               ; preds = %75
  call void @Perl_sv_upgrade(ptr noundef nonnull %0, i32 noundef 7) #40
  %80 = load i32, ptr %4, align 4, !tbaa !188
  br label %81

81:                                               ; preds = %79, %75
  %82 = phi i32 [ %80, %79 ], [ %76, %75 ]
  %83 = and i32 %82, 1073728767
  %84 = or disjoint i32 %83, 1073741824
  store i32 %84, ptr %4, align 4, !tbaa !188
  %85 = call ptr @Perl_sv_magicext(ptr noundef nonnull %0, ptr noundef null, i32 noundef 66, ptr noundef nonnull getelementptr inbounds ([31 x %struct.mgvtbl], ptr @PL_magic_vtables, i64 0, i64 23), ptr noundef null, i32 noundef 0) #40
  %86 = load i64, ptr %3, align 8
  %87 = icmp ugt i64 %86, 2
  br i1 %87, label %88, label %115, !prof !204

88:                                               ; preds = %81
  %89 = call i64 @llvm.umin.i64(i64 %86, i64 255)
  %90 = trunc i64 %89 to i8
  %91 = getelementptr inbounds i8, ptr %73, i64 %86
  %92 = sub nsw i64 0, %89
  %93 = getelementptr inbounds i8, ptr %91, i64 %92
  %94 = call ptr @Perl_safesysmalloc(i64 noundef 256) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %94, i8 %90, i64 256, i1 false)
  %95 = getelementptr inbounds %struct.magic, ptr %85, i64 0, i32 7
  store ptr %94, ptr %95, align 8, !tbaa !205
  %96 = getelementptr inbounds %struct.magic, ptr %85, i64 0, i32 5
  store i64 256, ptr %96, align 8, !tbaa !196
  %97 = load i64, ptr %3, align 8, !tbaa !203
  %98 = add i64 %97, -1
  %99 = getelementptr inbounds i8, ptr %73, i64 %98
  %100 = icmp ult ptr %99, %93
  br i1 %100, label %115, label %101, !prof !206

101:                                              ; preds = %88, %111
  %102 = phi ptr [ %112, %111 ], [ %99, %88 ]
  %103 = phi i8 [ %113, %111 ], [ 0, %88 ]
  %104 = load i8, ptr %102, align 1, !tbaa !155
  %105 = zext i8 %104 to i64
  %106 = getelementptr inbounds i8, ptr %94, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !155
  %108 = zext i8 %107 to i64
  %109 = icmp eq i64 %89, %108
  br i1 %109, label %110, label %111, !prof !207

110:                                              ; preds = %101
  store i8 %103, ptr %106, align 1, !tbaa !155
  br label %111

111:                                              ; preds = %110, %101
  %112 = getelementptr inbounds i8, ptr %102, i64 -1
  %113 = add i8 %103, 1
  %114 = icmp ult ptr %112, %93
  br i1 %114, label %115, label %101, !prof !208, !llvm.loop !209

115:                                              ; preds = %111, %81, %88
  %116 = load ptr, ptr %0, align 8, !tbaa !200
  %117 = getelementptr inbounds %struct.xpviv, ptr %116, i64 0, i32 4
  store i64 100, ptr %117, align 8, !tbaa !155
  br i1 %25, label %121, label %118, !prof !193

118:                                              ; preds = %115
  %119 = load i32, ptr %4, align 4, !tbaa !188
  %120 = or i32 %119, -2147483648
  store i32 %120, ptr %4, align 4, !tbaa !188
  br label %121

121:                                              ; preds = %8, %115, %118, %71, %21, %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #45
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @Perl_sv_pvn_force_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @Perl_sv_magicext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_fbm_instr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !210 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #45
  %6 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !188
  %8 = and i32 %7, 2098176
  %9 = icmp eq i32 %8, 1024
  br i1 %9, label %10, label %16, !prof !211

10:                                               ; preds = %4
  %11 = load ptr, ptr %2, align 8, !tbaa !200
  %12 = getelementptr inbounds %struct.xpv, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !201
  store i64 %13, ptr %5, align 8, !tbaa !203
  %14 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !155
  br label %19

16:                                               ; preds = %4
  %17 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %2, ptr noundef nonnull %5, i32 noundef 34) #40
  %18 = load i64, ptr %5, align 8, !tbaa !203
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi i64 [ %18, %16 ], [ %13, %10 ]
  %21 = phi ptr [ %17, %16 ], [ %15, %10 ]
  %22 = and i32 %3, 1
  %23 = ptrtoint ptr %1 to i64
  %24 = ptrtoint ptr %0 to i64
  %25 = sub i64 %23, %24
  %26 = icmp ult i64 %25, %20
  br i1 %26, label %27, label %43, !prof !212

27:                                               ; preds = %19
  %28 = load i32, ptr %6, align 4, !tbaa !188
  %29 = icmp ugt i32 %28, -1073741825
  %30 = add i64 %20, -1
  %31 = icmp eq i64 %25, %30
  %32 = and i1 %29, %31
  br i1 %32, label %33, label %42, !prof !213

33:                                               ; preds = %27
  %34 = icmp eq i64 %20, 1
  br i1 %34, label %262, label %35, !prof !214

35:                                               ; preds = %33
  %36 = load i8, ptr %0, align 1, !tbaa !155
  %37 = load i8, ptr %21, align 1, !tbaa !155
  %38 = icmp eq i8 %36, %37
  br i1 %38, label %39, label %42, !prof !215

39:                                               ; preds = %35
  %40 = call i32 @bcmp(ptr nonnull %0, ptr nonnull %21, i64 %25)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %262, label %42, !prof !215

42:                                               ; preds = %39, %35, %27
  br label %262

43:                                               ; preds = %19
  switch i64 %20, label %141 [
    i64 0, label %262
    i64 1, label %44
    i64 2, label %68
  ], !prof !216

44:                                               ; preds = %43
  %45 = load i32, ptr %6, align 4, !tbaa !188
  %46 = icmp ult i32 %45, -1073741824
  %47 = icmp ne i32 %22, 0
  %48 = or i1 %47, %46
  br i1 %48, label %49, label %53, !prof !217

49:                                               ; preds = %44
  %50 = icmp ult ptr %0, %1
  br i1 %50, label %51, label %65, !prof !218

51:                                               ; preds = %49
  %52 = load i8, ptr %21, align 1, !tbaa !155
  br label %58

53:                                               ; preds = %44
  %54 = getelementptr inbounds i8, ptr %1, i64 -1
  %55 = load i8, ptr %54, align 1, !tbaa !155
  %56 = icmp eq i8 %55, 10
  %57 = select i1 %56, ptr %54, ptr %1, !prof !219
  br label %262

58:                                               ; preds = %51, %62
  %59 = phi ptr [ %0, %51 ], [ %63, %62 ]
  %60 = load i8, ptr %59, align 1, !tbaa !155
  %61 = icmp eq i8 %60, %52
  br i1 %61, label %262, label %62, !prof !220

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1
  %64 = icmp eq ptr %63, %1
  br i1 %64, label %65, label %58, !prof !221, !llvm.loop !222

65:                                               ; preds = %62, %49
  %66 = icmp ugt i32 %45, -1073741825
  %67 = select i1 %66, ptr %1, ptr null, !prof !223
  br label %262

68:                                               ; preds = %43
  %69 = load i32, ptr %6, align 4, !tbaa !188
  %70 = icmp ult i32 %69, -1073741824
  %71 = icmp ne i32 %22, 0
  %72 = or i1 %71, %70
  br i1 %72, label %85, label %73, !prof !224

73:                                               ; preds = %68
  %74 = getelementptr inbounds i8, ptr %1, i64 -1
  %75 = load i8, ptr %74, align 1, !tbaa !155
  %76 = icmp eq i8 %75, 10
  %77 = load i8, ptr %21, align 1, !tbaa !155
  br i1 %76, label %78, label %82, !prof !225

78:                                               ; preds = %73
  %79 = getelementptr inbounds i8, ptr %1, i64 -2
  %80 = load i8, ptr %79, align 1, !tbaa !155
  %81 = icmp eq i8 %80, %77
  br i1 %81, label %262, label %82

82:                                               ; preds = %78, %73
  %83 = icmp eq i8 %75, %77
  %84 = select i1 %83, ptr %74, ptr null, !prof !226
  br label %262

85:                                               ; preds = %68
  %86 = load i8, ptr %21, align 1, !tbaa !155
  %87 = getelementptr inbounds i8, ptr %21, i64 1
  %88 = load i8, ptr %87, align 1, !tbaa !155
  %89 = getelementptr inbounds i8, ptr %0, i64 1
  %90 = getelementptr inbounds i8, ptr %1, i64 -1
  %91 = icmp eq i8 %86, %88
  %92 = icmp ugt ptr %89, %90
  br i1 %91, label %94, label %93, !prof !227

93:                                               ; preds = %85
  br i1 %92, label %135, label %95, !prof !228

94:                                               ; preds = %85
  br i1 %92, label %135, label %117, !prof !229

95:                                               ; preds = %93, %103
  %96 = phi ptr [ %105, %103 ], [ %89, %93 ]
  %97 = load i8, ptr %96, align 1, !tbaa !155
  %98 = icmp eq i8 %97, %88
  br i1 %98, label %99, label %107, !prof !230

99:                                               ; preds = %95
  %100 = getelementptr inbounds i8, ptr %96, i64 -1
  %101 = load i8, ptr %100, align 1, !tbaa !155
  %102 = icmp eq i8 %101, %86
  br i1 %102, label %260, label %103

103:                                              ; preds = %107, %99
  %104 = phi ptr [ %96, %99 ], [ %109, %107 ]
  %105 = getelementptr inbounds i8, ptr %104, i64 2
  %106 = icmp ugt ptr %105, %90
  br i1 %106, label %135, label %95, !prof !231, !llvm.loop !232

107:                                              ; preds = %95, %113
  %108 = phi i8 [ %115, %113 ], [ %97, %95 ]
  %109 = phi ptr [ %114, %113 ], [ %96, %95 ]
  %110 = icmp eq i8 %108, %86
  br i1 %110, label %111, label %103, !prof !233

111:                                              ; preds = %107
  %112 = icmp eq ptr %109, %90
  br i1 %112, label %135, label %113, !prof !234

113:                                              ; preds = %111
  %114 = getelementptr inbounds i8, ptr %109, i64 1
  %115 = load i8, ptr %114, align 1, !tbaa !155
  %116 = icmp eq i8 %115, %88
  br i1 %116, label %262, label %107, !prof !235

117:                                              ; preds = %94, %131
  %118 = phi ptr [ %133, %131 ], [ %89, %94 ]
  %119 = load i8, ptr %118, align 1, !tbaa !155
  %120 = icmp eq i8 %119, %86
  br i1 %120, label %121, label %131, !prof !236

121:                                              ; preds = %117
  %122 = getelementptr inbounds i8, ptr %118, i64 -1
  %123 = load i8, ptr %122, align 1, !tbaa !155
  %124 = icmp eq i8 %123, %86
  br i1 %124, label %258, label %125, !prof !237

125:                                              ; preds = %121
  %126 = icmp eq ptr %118, %90
  br i1 %126, label %135, label %127

127:                                              ; preds = %125
  %128 = getelementptr inbounds i8, ptr %118, i64 1
  %129 = load i8, ptr %128, align 1, !tbaa !155
  %130 = icmp eq i8 %129, %86
  br i1 %130, label %262, label %131

131:                                              ; preds = %117, %127
  %132 = phi i64 [ 3, %127 ], [ 2, %117 ]
  %133 = getelementptr inbounds i8, ptr %118, i64 %132
  %134 = icmp ugt ptr %133, %90
  br i1 %134, label %135, label %117, !prof !238, !llvm.loop !239

135:                                              ; preds = %103, %111, %131, %125, %93, %94
  %136 = icmp ugt i32 %69, -1073741825
  br i1 %136, label %137, label %140, !prof !240

137:                                              ; preds = %135
  %138 = load i8, ptr %90, align 1, !tbaa !155
  %139 = icmp eq i8 %138, %86
  br i1 %139, label %262, label %140

140:                                              ; preds = %137, %135
  br label %262

141:                                              ; preds = %43
  %142 = load i32, ptr %6, align 4, !tbaa !188
  %143 = icmp ult i32 %142, -1073741824
  br i1 %143, label %178, label %144, !prof !241

144:                                              ; preds = %141
  %145 = icmp eq i32 %22, 0
  br i1 %145, label %146, label %178

146:                                              ; preds = %144
  %147 = sub i64 0, %20
  %148 = getelementptr inbounds i8, ptr %1, i64 %147
  %149 = icmp ult ptr %148, %0
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = load i8, ptr %21, align 1, !tbaa !155
  br label %166

152:                                              ; preds = %146
  %153 = getelementptr inbounds i8, ptr %1, i64 -1
  %154 = load i8, ptr %153, align 1, !tbaa !155
  %155 = icmp eq i8 %154, 10
  %156 = load i8, ptr %21, align 1, !tbaa !155
  br i1 %155, label %157, label %166

157:                                              ; preds = %152
  %158 = load i8, ptr %148, align 1, !tbaa !155
  %159 = icmp eq i8 %158, %156
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = getelementptr inbounds i8, ptr %148, i64 1
  %162 = getelementptr inbounds i8, ptr %21, i64 1
  %163 = add i64 %20, -2
  %164 = call i32 @bcmp(ptr nonnull %161, ptr nonnull %162, i64 %163)
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %262, label %166

166:                                              ; preds = %150, %160, %157, %152
  %167 = phi i8 [ %151, %150 ], [ %156, %160 ], [ %156, %157 ], [ %156, %152 ]
  %168 = getelementptr inbounds i8, ptr %148, i64 1
  %169 = load i8, ptr %168, align 1, !tbaa !155
  %170 = icmp eq i8 %169, %167
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = getelementptr inbounds i8, ptr %148, i64 2
  %173 = getelementptr inbounds i8, ptr %21, i64 1
  %174 = add i64 %20, -2
  %175 = call i32 @bcmp(ptr nonnull %172, ptr nonnull %173, i64 %174)
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %262, label %177

177:                                              ; preds = %171, %166
  br label %262

178:                                              ; preds = %144, %141
  %179 = and i32 %142, 1073741824
  %180 = icmp eq i32 %179, 0
  %181 = and i32 %142, 49152
  %182 = icmp eq i32 %181, 49152
  %183 = or i1 %180, %182
  br i1 %183, label %184, label %203, !prof !242

184:                                              ; preds = %178
  %185 = getelementptr inbounds i8, ptr %21, i64 %20
  %186 = call ptr @Perl_ninstr(ptr noundef %0, ptr noundef %1, ptr noundef %21, ptr noundef %185) #39
  %187 = icmp ne ptr %186, null
  %188 = or i1 %143, %187
  br i1 %188, label %262, label %189

189:                                              ; preds = %184
  %190 = sub i64 0, %20
  %191 = getelementptr inbounds i8, ptr %1, i64 %190
  %192 = getelementptr inbounds i8, ptr %191, i64 1
  %193 = load i8, ptr %192, align 1, !tbaa !155
  %194 = load i8, ptr %21, align 1, !tbaa !155
  %195 = icmp eq i8 %193, %194
  br i1 %195, label %196, label %202

196:                                              ; preds = %189
  %197 = getelementptr inbounds i8, ptr %191, i64 2
  %198 = getelementptr inbounds i8, ptr %21, i64 1
  %199 = add i64 %20, -2
  %200 = call i32 @bcmp(ptr nonnull %197, ptr nonnull %198, i64 %199)
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %262, label %202

202:                                              ; preds = %196, %189
  br label %262

203:                                              ; preds = %178
  %204 = call ptr @Perl_mg_find(ptr noundef nonnull %2, i32 noundef 66) #40
  %205 = add i64 %20, -1
  %206 = getelementptr inbounds i8, ptr %0, i64 %205
  %207 = getelementptr inbounds i8, ptr %21, i64 %205
  %208 = icmp ult ptr %206, %1
  br i1 %208, label %209, label %244, !prof !241

209:                                              ; preds = %203
  %210 = getelementptr inbounds %struct.magic, ptr %204, i64 0, i32 7
  %211 = load ptr, ptr %210, align 8, !tbaa !205
  %212 = and i64 %205, 4294967295
  %213 = sub nsw i64 0, %212
  br label %214

214:                                              ; preds = %242, %209
  %215 = phi ptr [ %206, %209 ], [ %243, %242 ]
  %216 = load i8, ptr %215, align 1, !tbaa !155
  %217 = zext i8 %216 to i64
  %218 = getelementptr inbounds i8, ptr %211, i64 %217
  %219 = load i8, ptr %218, align 1, !tbaa !155
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %221, label %223, !prof !243

221:                                              ; preds = %214
  %222 = trunc i64 %205 to i32
  br label %227

223:                                              ; preds = %214
  %224 = zext i8 %219 to i64
  %225 = getelementptr inbounds i8, ptr %215, i64 %224
  %226 = icmp ult ptr %225, %1
  br i1 %226, label %242, label %244, !prof !244

227:                                              ; preds = %221, %232
  %228 = phi ptr [ %236, %232 ], [ %207, %221 ]
  %229 = phi ptr [ %234, %232 ], [ %215, %221 ]
  %230 = phi i32 [ %233, %232 ], [ %222, %221 ]
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %256, label %232, !prof !245

232:                                              ; preds = %227
  %233 = add nsw i32 %230, -1
  %234 = getelementptr inbounds i8, ptr %229, i64 -1
  %235 = load i8, ptr %234, align 1, !tbaa !155
  %236 = getelementptr inbounds i8, ptr %228, i64 -1
  %237 = load i8, ptr %236, align 1, !tbaa !155
  %238 = icmp eq i8 %235, %237
  br i1 %238, label %227, label %239, !prof !246, !llvm.loop !247

239:                                              ; preds = %232
  %240 = getelementptr inbounds i8, ptr %215, i64 1
  %241 = icmp ult ptr %240, %1
  br i1 %241, label %242, label %244

242:                                              ; preds = %239, %223
  %243 = phi ptr [ %225, %223 ], [ %240, %239 ]
  br label %214

244:                                              ; preds = %239, %223, %203
  %245 = phi ptr [ %206, %203 ], [ %240, %239 ], [ %225, %223 ]
  %246 = icmp eq ptr %245, %1
  br i1 %246, label %247, label %255, !prof !248

247:                                              ; preds = %244
  %248 = load i32, ptr %6, align 4, !tbaa !188
  %249 = icmp ugt i32 %248, -1073741825
  br i1 %249, label %250, label %255, !prof !249

250:                                              ; preds = %247
  %251 = sub i64 1, %20
  %252 = getelementptr inbounds i8, ptr %1, i64 %251
  %253 = call i32 @bcmp(ptr %252, ptr %21, i64 %205)
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %262, label %255

255:                                              ; preds = %250, %247, %244
  br label %262

256:                                              ; preds = %227
  %257 = getelementptr i8, ptr %215, i64 %213
  br label %262

258:                                              ; preds = %121
  %259 = getelementptr inbounds i8, ptr %118, i64 -1
  br label %262

260:                                              ; preds = %99
  %261 = getelementptr inbounds i8, ptr %96, i64 -1
  br label %262

262:                                              ; preds = %113, %127, %58, %258, %260, %256, %184, %255, %250, %202, %196, %171, %160, %137, %82, %78, %65, %53, %43, %33, %39, %177, %140, %42
  %263 = phi ptr [ null, %42 ], [ null, %177 ], [ null, %140 ], [ %0, %39 ], [ %0, %33 ], [ %0, %43 ], [ %57, %53 ], [ %67, %65 ], [ %79, %78 ], [ %84, %82 ], [ %90, %137 ], [ %148, %160 ], [ %168, %171 ], [ null, %202 ], [ %192, %196 ], [ %186, %184 ], [ null, %255 ], [ %252, %250 ], [ %257, %256 ], [ %261, %260 ], [ %259, %258 ], [ %59, %58 ], [ %118, %127 ], [ %109, %113 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #45
  ret ptr %263
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @Perl_foldEQ(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #11 !prof !250 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %22, label %5, !prof !251

5:                                                ; preds = %3, %18
  %6 = phi i32 [ %9, %18 ], [ %2, %3 ]
  %7 = phi ptr [ %20, %18 ], [ %1, %3 ]
  %8 = phi ptr [ %19, %18 ], [ %0, %3 ]
  %9 = add nsw i32 %6, -1
  %10 = load i8, ptr %8, align 1, !tbaa !155
  %11 = load i8, ptr %7, align 1, !tbaa !155
  %12 = icmp eq i8 %10, %11
  br i1 %12, label %18, label %13, !prof !252

13:                                               ; preds = %5
  %14 = zext i8 %11 to i64
  %15 = getelementptr inbounds [0 x i8], ptr @PL_fold, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !155
  %17 = icmp eq i8 %10, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %13, %5
  %19 = getelementptr inbounds i8, ptr %8, i64 1
  %20 = getelementptr inbounds i8, ptr %7, i64 1
  %21 = icmp eq i32 %9, 0
  br i1 %21, label %22, label %5, !prof !253, !llvm.loop !254

22:                                               ; preds = %13, %18, %3
  %23 = phi i32 [ 1, %3 ], [ 1, %18 ], [ 0, %13 ]
  ret i32 %23
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @Perl_foldEQ_latin1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #11 !prof !255 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %22, label %5, !prof !256

5:                                                ; preds = %3, %18
  %6 = phi i32 [ %9, %18 ], [ %2, %3 ]
  %7 = phi ptr [ %20, %18 ], [ %1, %3 ]
  %8 = phi ptr [ %19, %18 ], [ %0, %3 ]
  %9 = add nsw i32 %6, -1
  %10 = load i8, ptr %8, align 1, !tbaa !155
  %11 = load i8, ptr %7, align 1, !tbaa !155
  %12 = icmp eq i8 %10, %11
  br i1 %12, label %18, label %13, !prof !257

13:                                               ; preds = %5
  %14 = zext i8 %11 to i64
  %15 = getelementptr inbounds [0 x i8], ptr @PL_fold_latin1, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !155
  %17 = icmp eq i8 %10, %16
  br i1 %17, label %18, label %22, !prof !258

18:                                               ; preds = %13, %5
  %19 = getelementptr inbounds i8, ptr %8, i64 1
  %20 = getelementptr inbounds i8, ptr %7, i64 1
  %21 = icmp eq i32 %9, 0
  br i1 %21, label %22, label %5, !prof !259, !llvm.loop !260

22:                                               ; preds = %13, %18, %3
  %23 = phi i32 [ 1, %3 ], [ 1, %18 ], [ 0, %13 ]
  ret i32 %23
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @Perl_foldEQ_locale(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #11 !prof !142 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %3, %18
  %6 = phi i32 [ %9, %18 ], [ %2, %3 ]
  %7 = phi ptr [ %20, %18 ], [ %1, %3 ]
  %8 = phi ptr [ %19, %18 ], [ %0, %3 ]
  %9 = add nsw i32 %6, -1
  %10 = load i8, ptr %8, align 1, !tbaa !155
  %11 = load i8, ptr %7, align 1, !tbaa !155
  %12 = icmp eq i8 %10, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %5
  %14 = zext i8 %11 to i64
  %15 = getelementptr inbounds [0 x i8], ptr @PL_fold_locale, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !155
  %17 = icmp eq i8 %10, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %13, %5
  %19 = getelementptr inbounds i8, ptr %8, i64 1
  %20 = getelementptr inbounds i8, ptr %7, i64 1
  %21 = icmp eq i32 %9, 0
  br i1 %21, label %22, label %5, !llvm.loop !261

22:                                               ; preds = %13, %18, %3
  %23 = phi i32 [ 1, %3 ], [ 1, %18 ], [ 0, %13 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @Perl_savepv(ptr noundef readonly %0) local_unnamed_addr #0 !prof !262 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !263

3:                                                ; preds = %1
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #44
  %5 = add i64 %4, 1
  %6 = tail call ptr @Perl_safesysmalloc(i64 noundef %5) #39
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr nonnull align 1 %0, i64 %5, i1 false)
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @Perl_savepvn(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !264 {
  %3 = add nsw i32 %1, 1
  %4 = sext i32 %3 to i64
  %5 = tail call ptr @Perl_safesysmalloc(i64 noundef %4) #39
  %6 = icmp eq ptr %0, null
  br i1 %6, label %10, label %7, !prof !265

7:                                                ; preds = %2
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds i8, ptr %5, i64 %8
  store i8 0, ptr %9, align 1, !tbaa !155
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr nonnull align 1 %0, i64 %8, i1 false)
  br label %11

10:                                               ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr align 1 %5, i8 0, i64 %4, i1 false)
  br label %11

11:                                               ; preds = %10, %7
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @Perl_savesharedpv(ptr noundef readonly %0) local_unnamed_addr #0 !prof !266 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3, !prof !267

3:                                                ; preds = %1
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #44
  %5 = add i64 %4, 1
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !267

8:                                                ; preds = %3
  tail call void @Perl_croak_no_mem() #39
  br label %9

9:                                                ; preds = %8, %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr nonnull align 1 %0, i64 %5, i1 false)
  br label %10

10:                                               ; preds = %1, %9
  %11 = phi ptr [ %6, %9 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @Perl_savesharedpvn(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 !prof !142 {
  %3 = add i64 %1, 1
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #38
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @Perl_croak_no_mem() #39
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds i8, ptr %4, i64 %1
  store i8 0, ptr %8, align 1, !tbaa !155
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %0, i64 %1, i1 false)
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @Perl_savesvpv(ptr noundef %0) local_unnamed_addr #0 !prof !268 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #45
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !188
  %5 = and i32 %4, 2098176
  %6 = icmp eq i32 %5, 1024
  br i1 %6, label %7, label %12, !prof !269

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !200
  %9 = getelementptr inbounds %struct.xpv, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !155
  br label %14

12:                                               ; preds = %1
  %13 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 34) #40
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi ptr [ %9, %7 ], [ %2, %12 ]
  %16 = phi ptr [ %11, %7 ], [ %13, %12 ]
  %17 = load i64, ptr %15, align 8, !tbaa !203
  %18 = add i64 %17, 1
  store i64 %18, ptr %2, align 8, !tbaa !203
  %19 = call ptr @Perl_safesysmalloc(i64 noundef %18) #39
  %20 = load i64, ptr %2, align 8, !tbaa !203
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %19, ptr align 1 %16, i64 %20, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #45
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @Perl_savesharedsvpv(ptr noundef %0) local_unnamed_addr #0 !prof !142 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #45
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !188
  %5 = and i32 %4, 2098176
  %6 = icmp eq i32 %5, 1024
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !200
  %9 = getelementptr inbounds %struct.xpv, ptr %8, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !201
  store i64 %10, ptr %2, align 8, !tbaa !203
  %11 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !155
  br label %16

13:                                               ; preds = %1
  %14 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 34) #40
  %15 = load i64, ptr %2, align 8, !tbaa !203
  br label %16

16:                                               ; preds = %13, %7
  %17 = phi i64 [ %10, %7 ], [ %15, %13 ]
  %18 = phi ptr [ %12, %7 ], [ %14, %13 ]
  %19 = call ptr @Perl_savesharedpvn(ptr noundef %18, i64 noundef %17) #39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #45
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_form(ptr noundef %0, ...) local_unnamed_addr #0 !prof !268 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #45
  call void @llvm.va_start(ptr nonnull %2)
  %3 = call ptr @Perl_vform(ptr noundef %0, ptr noundef nonnull %2) #39
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #45
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_vform(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !268 {
  %3 = tail call fastcc ptr @S_mess_alloc() #39
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #44
  tail call void @Perl_sv_vsetpvfn(ptr noundef %3, ptr noundef %0, i64 noundef %4, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef null) #40
  %5 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !155
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_mess_alloc() unnamed_addr #0 !prof !270 !PGOFuncName !271 {
  %1 = load i32, ptr @PL_phase, align 4, !tbaa !163
  %2 = icmp eq i32 %1, 6
  br i1 %2, label %5, label %3, !prof !272

3:                                                ; preds = %0
  %4 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.10, i64 noundef 0, i32 noundef 524288) #40
  br label %14

5:                                                ; preds = %0
  %6 = load ptr, ptr @PL_mess_sv, align 8, !tbaa !150
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = tail call ptr @Perl_safesysmalloc(i64 noundef 24) #39
  %10 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 48) #39
  %11 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  store i32 7, ptr %11, align 4, !tbaa !188
  store ptr %10, ptr %9, align 8, !tbaa !200
  %12 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 3
  store ptr null, ptr %12, align 8, !tbaa !155
  %13 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 1
  store i32 1073741824, ptr %13, align 8, !tbaa !273
  store ptr %9, ptr @PL_mess_sv, align 8, !tbaa !150
  br label %14

14:                                               ; preds = %5, %8, %3
  %15 = phi ptr [ %4, %3 ], [ %9, %8 ], [ %6, %5 ]
  ret ptr %15
}

; Function Attrs: optsize
declare void @Perl_sv_vsetpvfn(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @Perl_mess(ptr noundef %0, ...) local_unnamed_addr #0 !prof !142 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #45
  call void @llvm.va_start(ptr nonnull %2)
  %3 = call ptr @Perl_vmess(ptr noundef %0, ptr noundef nonnull %2) #39
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #45
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @Perl_vmess(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !274 {
  %3 = tail call fastcc ptr @S_mess_alloc() #39
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #44
  tail call void @Perl_sv_vsetpvfn(ptr noundef %3, ptr noundef %0, i64 noundef %4, ptr noundef %1, ptr noundef null, i32 noundef 0, ptr noundef null) #40
  %5 = tail call ptr @Perl_mess_sv(ptr noundef %3, i1 noundef zeroext true) #39
  ret ptr %5
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @Perl_closest_cop(ptr noundef readnone %0, ptr noundef readonly %1, ptr noundef readnone %2, i1 noundef zeroext %3) local_unnamed_addr #16 !prof !275 {
  %5 = icmp ne ptr %1, null
  %6 = icmp ne ptr %2, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %48, !prof !276

8:                                                ; preds = %4
  br i1 %3, label %9, label %17, !prof !277

9:                                                ; preds = %8
  %10 = load ptr, ptr %1, align 8, !tbaa !278
  %11 = icmp eq ptr %10, %2
  br i1 %11, label %12, label %19, !prof !280

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 4
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 511
  %16 = icmp eq i16 %15, 198
  br i1 %16, label %19, label %48, !prof !281

17:                                               ; preds = %8
  %18 = icmp eq ptr %1, %2
  br i1 %18, label %48, label %19, !prof !282

19:                                               ; preds = %17, %12, %9
  %20 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 5
  %21 = load i8, ptr %20, align 2, !tbaa !283
  %22 = and i8 %21, 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %48, label %24, !prof !284

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.unop, ptr %1, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !150
  %27 = icmp eq ptr %26, null
  br i1 %27, label %48, label %32, !prof !285

28:                                               ; preds = %44
  %29 = getelementptr inbounds %struct.op, ptr %33, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !150
  %31 = icmp eq ptr %30, null
  br i1 %31, label %48, label %32, !prof !286, !llvm.loop !287

32:                                               ; preds = %24, %28
  %33 = phi ptr [ %30, %28 ], [ %26, %24 ]
  %34 = phi ptr [ %45, %28 ], [ %0, %24 ]
  %35 = getelementptr inbounds %struct.op, ptr %33, i64 0, i32 4
  %36 = load i16, ptr %35, align 8
  %37 = and i16 %36, 511
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %44, !prof !288

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.op, ptr %33, i64 0, i32 3
  %41 = load i64, ptr %40, align 8, !tbaa !289
  %42 = icmp eq i64 %41, 193
  %43 = select i1 %42, ptr %33, ptr %34, !prof !290
  br label %44

44:                                               ; preds = %39, %32
  %45 = phi ptr [ %34, %32 ], [ %43, %39 ]
  %46 = tail call ptr @Perl_closest_cop(ptr noundef %45, ptr noundef nonnull %33, ptr noundef nonnull %2, i1 noundef zeroext %3) #39
  %47 = icmp eq ptr %46, null
  br i1 %47, label %28, label %48

48:                                               ; preds = %44, %28, %24, %19, %4, %12, %17
  %49 = phi ptr [ %0, %17 ], [ %0, %12 ], [ %0, %4 ], [ null, %19 ], [ null, %24 ], [ %46, %44 ], [ null, %28 ]
  ret ptr %49
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @Perl_mess_sv(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 !prof !274 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !188
  %6 = and i32 %5, 2048
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8, !prof !291

8:                                                ; preds = %2
  br i1 %1, label %146, label %9

9:                                                ; preds = %8
  %10 = tail call fastcc ptr @S_mess_alloc() #39
  tail call void @Perl_sv_setsv_flags(ptr noundef %10, ptr noundef nonnull %0, i32 noundef 1538) #40
  br label %146

11:                                               ; preds = %2
  %12 = and i32 %5, 1024
  %13 = icmp ne i32 %12, 0
  %14 = and i1 %13, %1
  br i1 %14, label %17, label %15, !prof !292

15:                                               ; preds = %11
  %16 = tail call fastcc ptr @S_mess_alloc() #39
  tail call void @Perl_sv_copypv_flags(ptr noundef %16, ptr noundef nonnull %0, i32 noundef 2) #40
  br label %17

17:                                               ; preds = %11, %15
  %18 = phi ptr [ %16, %15 ], [ %0, %11 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !200
  %20 = getelementptr inbounds %struct.xpv, ptr %19, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !201
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %30, label %23, !prof !293

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !155
  %26 = getelementptr inbounds i8, ptr %25, i64 %21
  %27 = getelementptr inbounds i8, ptr %26, i64 -1
  %28 = load i8, ptr %27, align 1, !tbaa !155
  %29 = icmp eq i8 %28, 10
  br i1 %29, label %146, label %30, !prof !293

30:                                               ; preds = %23, %17
  %31 = load ptr, ptr @PL_curcop, align 8
  %32 = getelementptr inbounds %struct.cop, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !294
  %34 = load ptr, ptr @PL_op, align 8, !tbaa !150
  %35 = tail call ptr @Perl_closest_cop(ptr noundef %31, ptr noundef %33, ptr noundef %34, i1 noundef zeroext false) #39
  %36 = icmp eq ptr %35, null
  %37 = select i1 %36, ptr %31, ptr %35, !prof !293
  %38 = getelementptr inbounds %struct.cop, ptr %37, i64 0, i32 7
  %39 = load i32, ptr %38, align 4, !tbaa !296
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %53, label %41, !prof !293

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.cop, ptr %37, i64 0, i32 9
  %43 = load ptr, ptr %42, align 8, !tbaa !297
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45, !prof !293

45:                                               ; preds = %41
  %46 = load ptr, ptr %43, align 8, !tbaa !298
  %47 = getelementptr inbounds %struct.xpvgv, ptr %46, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !155
  %49 = getelementptr inbounds %struct.hek, ptr %48, i64 0, i32 2, i64 2
  br label %50

50:                                               ; preds = %41, %45
  %51 = phi ptr [ %49, %45 ], [ null, %41 ]
  %52 = zext i32 %39 to i64
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef nonnull %18, ptr noundef nonnull @.str.1, ptr noundef %51, i64 noundef %52) #40
  br label %53

53:                                               ; preds = %50, %30
  %54 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !150
  %55 = icmp eq ptr %54, null
  br i1 %55, label %141, label %56, !prof !293

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !188
  %59 = and i32 %58, 255
  %60 = add nsw i32 %59, -9
  %61 = icmp ult i32 %60, 2
  br i1 %61, label %62, label %141, !prof !299

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.gv, ptr %54, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !155
  %65 = icmp eq ptr %64, null
  br i1 %65, label %141, label %66, !prof !291

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.gp, ptr %64, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !156
  %69 = icmp eq ptr %68, null
  br i1 %69, label %141, label %70, !prof !291

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.io, ptr %68, i64 0, i32 2
  %72 = load i32, ptr %71, align 4, !tbaa !300
  %73 = and i32 %72, 255
  %74 = icmp eq i32 %73, 15
  br i1 %74, label %75, label %141, !prof !291

75:                                               ; preds = %70
  %76 = load ptr, ptr %68, align 8, !tbaa !158
  %77 = getelementptr inbounds %struct.xpvio, ptr %76, i64 0, i32 4
  %78 = load i64, ptr %77, align 8, !tbaa !155
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %141, label %80, !prof !291

80:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #45
  %81 = load ptr, ptr @PL_rs, align 8, !tbaa !150
  %82 = getelementptr inbounds %struct.sv, ptr %81, i64 0, i32 2
  %83 = load i32, ptr %82, align 4, !tbaa !188
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
  %96 = load ptr, ptr %81, align 8, !tbaa !200
  %97 = getelementptr inbounds %struct.xpv, ptr %96, i64 0, i32 2
  %98 = load i64, ptr %97, align 8, !tbaa !201
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %119, label %100

100:                                              ; preds = %95, %92
  %101 = and i32 %83, 2098176
  %102 = icmp eq i32 %101, 1024
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load ptr, ptr %81, align 8, !tbaa !200
  %105 = getelementptr inbounds %struct.xpv, ptr %104, i64 0, i32 2
  %106 = load i64, ptr %105, align 8, !tbaa !201
  store i64 %106, ptr %3, align 8, !tbaa !203
  %107 = getelementptr inbounds %struct.sv, ptr %81, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !155
  br label %111

109:                                              ; preds = %100
  %110 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %81, ptr noundef nonnull %3, i32 noundef 34) #40
  br label %111

111:                                              ; preds = %109, %103
  %112 = phi ptr [ %108, %103 ], [ %110, %109 ]
  %113 = load i8, ptr %112, align 1, !tbaa !155
  %114 = icmp eq i8 %113, 10
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i64, ptr %3, align 8, !tbaa !203
  %117 = icmp eq i64 %116, 1
  %118 = select i1 %117, ptr @.str.3, ptr @.str.4
  br label %119

119:                                              ; preds = %80, %115, %111, %95
  %120 = phi ptr [ @.str.4, %111 ], [ @.str.4, %95 ], [ %118, %115 ], [ @.str.4, %80 ]
  %121 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !150
  %122 = load ptr, ptr @PL_argvgv, align 8, !tbaa !150
  %123 = icmp eq ptr %121, %122
  br i1 %123, label %131, label %124

124:                                              ; preds = %119
  %125 = load ptr, ptr %121, align 8, !tbaa !298
  %126 = getelementptr inbounds %struct.xpvgv, ptr %125, i64 0, i32 4
  %127 = load ptr, ptr %126, align 8, !tbaa !155
  %128 = call ptr @Perl_newSVhek(ptr noundef %127) #40
  %129 = call ptr @Perl_sv_2mortal(ptr noundef %128) #40
  %130 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !150
  br label %131

131:                                              ; preds = %119, %124
  %132 = phi ptr [ %130, %124 ], [ %121, %119 ]
  %133 = phi ptr [ %129, %124 ], [ @PL_sv_no, %119 ]
  %134 = getelementptr inbounds %struct.gv, ptr %132, i64 0, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !155
  %136 = getelementptr inbounds %struct.gp, ptr %135, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !156
  %138 = load ptr, ptr %137, align 8, !tbaa !158
  %139 = getelementptr inbounds %struct.xpvio, ptr %138, i64 0, i32 4
  %140 = load i64, ptr %139, align 8, !tbaa !155
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef nonnull %18, ptr noundef nonnull @.str.2, ptr noundef %133, ptr noundef nonnull %120, i64 noundef %140) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #45
  br label %141

141:                                              ; preds = %56, %53, %62, %131, %75, %70, %66
  %142 = load i32, ptr @PL_phase, align 4, !tbaa !163
  %143 = icmp eq i32 %142, 6
  br i1 %143, label %144, label %145, !prof !293

144:                                              ; preds = %141
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %18, ptr noundef nonnull @.str.5, i64 noundef 26, i32 noundef 2) #40
  br label %145

145:                                              ; preds = %144, %141
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %18, ptr noundef nonnull @.str.6, i64 noundef 2, i32 noundef 2) #40
  br label %146

146:                                              ; preds = %23, %145, %9, %8
  %147 = phi ptr [ %10, %9 ], [ %0, %8 ], [ %18, %145 ], [ %18, %23 ]
  ret ptr %147
}

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare void @Perl_sv_copypv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare void @Perl_sv_catpvf(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @Perl_newSVhek(ptr noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_write_to_stderr(ptr noundef %0) local_unnamed_addr #0 !prof !142 {
  %2 = load ptr, ptr @PL_stderrgv, align 8, !tbaa !150
  %3 = icmp eq ptr %2, null
  br i1 %3, label %58, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gv, ptr %2, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !301
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !188
  %11 = and i32 %10, 255
  %12 = add nsw i32 %11, -9
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %41

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.gv, ptr %2, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !155
  %17 = icmp eq ptr %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.gp, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !156
  %21 = icmp eq ptr %20, null
  br i1 %21, label %41, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !188
  %25 = and i32 %24, 8388608
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %22
  %28 = tail call ptr @Perl_mg_find(ptr noundef nonnull %20, i32 noundef 113) #40
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 20), align 16, !tbaa !150
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = tail call ptr @Perl_newSVpv_share(ptr noundef nonnull @.str.7, i32 noundef 0) #40
  store ptr %34, ptr getelementptr inbounds ([35 x ptr], ptr @PL_sv_consts, i64 0, i64 20), align 16, !tbaa !150
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ %31, %30 ]
  %37 = tail call ptr (ptr, ptr, ptr, i32, i32, ...) @Perl_magic_methcall(ptr noundef nonnull %20, ptr noundef nonnull %28, ptr noundef %36, i32 noundef 1030, i32 noundef 1, ptr noundef %0) #40
  br label %64

38:                                               ; preds = %27
  %39 = load ptr, ptr @PL_stderrgv, align 8, !tbaa !150
  %40 = icmp eq ptr %39, null
  br i1 %40, label %58, label %41

41:                                               ; preds = %4, %18, %14, %8, %22, %38
  %42 = phi ptr [ %39, %38 ], [ %2, %22 ], [ %2, %8 ], [ %2, %14 ], [ %2, %18 ], [ %2, %4 ]
  %43 = getelementptr inbounds %struct.gv, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !152
  %45 = and i32 %44, 255
  %46 = icmp eq i32 %45, 9
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.gv, ptr %42, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !155
  %50 = getelementptr inbounds %struct.gp, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !156
  %52 = icmp eq ptr %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = load ptr, ptr %51, align 8, !tbaa !158
  %55 = getelementptr inbounds %struct.xpvio, ptr %54, i64 0, i32 5
  %56 = load ptr, ptr %55, align 8, !tbaa !160
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %1, %53, %47, %41, %38
  %59 = tail call ptr @Perl_PerlIO_stderr() #40
  br label %60

60:                                               ; preds = %53, %58
  %61 = phi ptr [ %59, %58 ], [ %56, %53 ]
  %62 = tail call zeroext i1 @Perl_do_print(ptr noundef %0, ptr noundef %61) #40
  %63 = tail call i32 @Perl_PerlIO_flush(ptr noundef %61) #40
  br label %64

64:                                               ; preds = %60, %35
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_magic_methcall(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @Perl_newSVpv_share(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @Perl_PerlIO_stderr() local_unnamed_addr #12

; Function Attrs: optsize
declare zeroext i1 @Perl_do_print(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare i32 @Perl_PerlIO_flush(ptr noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @Perl_die_sv(ptr noundef %0) local_unnamed_addr #0 !prof !142 {
  tail call void @Perl_croak_sv(ptr noundef %0) #39
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_croak_sv(ptr noundef %0) local_unnamed_addr #0 !prof !142 {
  %2 = tail call ptr @Perl_mess_sv(ptr noundef %0, i1 noundef zeroext false) #39
  %3 = tail call fastcc ptr @S_with_queued_errors(ptr noundef %2) #39
  %4 = tail call fastcc zeroext i1 @S_invoke_exception_hook(ptr noundef %3, i1 noundef zeroext false) #39
  tail call void @Perl_die_unwind(ptr noundef %3) #40
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @Perl_die(ptr noundef %0, ...) local_unnamed_addr #0 !prof !274 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #45
  call void @llvm.va_start(ptr nonnull %2)
  call void @Perl_vcroak(ptr noundef %0, ptr noundef nonnull %2) #39
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #45
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_vcroak(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !274 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4, !prof !293

4:                                                ; preds = %2
  %5 = tail call ptr @Perl_vmess(ptr noundef nonnull %0, ptr noundef %1) #39
  br label %20

6:                                                ; preds = %2
  %7 = load ptr, ptr @PL_errgv, align 8, !tbaa !150
  %8 = getelementptr inbounds %struct.gv, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !155
  %10 = load ptr, ptr %9, align 8, !tbaa !150
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17, !prof !291

12:                                               ; preds = %6
  %13 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %7, i32 noundef 0) #40
  %14 = getelementptr inbounds %struct.gv, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !155
  %16 = load ptr, ptr %15, align 8, !tbaa !150
  br label %17

17:                                               ; preds = %6, %12
  %18 = phi ptr [ %16, %12 ], [ %10, %6 ]
  %19 = tail call ptr @Perl_mess_sv(ptr noundef %18, i1 noundef zeroext false) #39
  br label %20

20:                                               ; preds = %17, %4
  %21 = phi ptr [ %5, %4 ], [ %19, %17 ]
  %22 = tail call fastcc ptr @S_with_queued_errors(ptr noundef %21) #39
  %23 = tail call fastcc zeroext i1 @S_invoke_exception_hook(ptr noundef %22, i1 noundef zeroext false) #39
  tail call void @Perl_die_unwind(ptr noundef %22) #40
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_with_queued_errors(ptr noundef %0) unnamed_addr #0 !prof !274 !PGOFuncName !302 {
  %2 = load ptr, ptr @PL_errors, align 8, !tbaa !150
  %3 = icmp eq ptr %2, null
  br i1 %3, label %20, label %4, !prof !293

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !200
  %6 = getelementptr inbounds %struct.xpv, ptr %5, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !201
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %20, label %9, !prof !291

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !188
  %12 = and i32 %11, 2048
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  tail call void @Perl_sv_catsv_flags(ptr noundef nonnull %2, ptr noundef nonnull %0, i32 noundef 2) #40
  %15 = load ptr, ptr @PL_errors, align 8, !tbaa !150
  %16 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef %15, i32 noundef 1538) #40
  %17 = load ptr, ptr @PL_errors, align 8, !tbaa !150
  %18 = load ptr, ptr %17, align 8, !tbaa !200
  %19 = getelementptr inbounds %struct.xpv, ptr %18, i64 0, i32 2
  store i64 0, ptr %19, align 8, !tbaa !201
  br label %20

20:                                               ; preds = %14, %9, %4, %1
  %21 = phi ptr [ %0, %9 ], [ %16, %14 ], [ %0, %4 ], [ %0, %1 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @S_invoke_exception_hook(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 !prof !274 !PGOFuncName !303 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #45
  %5 = select i1 %1, ptr @PL_warnhook, ptr @PL_diehook
  %6 = load ptr, ptr %5, align 8, !tbaa !150
  %7 = icmp eq ptr %6, null
  br i1 %7, label %121, label %8, !prof !291

8:                                                ; preds = %2
  tail call void @Perl_push_scope() #40
  tail call void @Perl_save_sptr(ptr noundef nonnull %5) #40
  store ptr null, ptr %5, align 8, !tbaa !150
  %9 = call ptr @Perl_sv_2cv(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 0) #40
  call void @Perl_pop_scope() #40
  %10 = icmp eq ptr %9, null
  br i1 %10, label %121, label %11

11:                                               ; preds = %8
  %12 = call fastcc ptr @S_CvDEPTHp(ptr noundef nonnull %9) #39
  %13 = load i32, ptr %12, align 4, !tbaa !163
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %121

15:                                               ; preds = %11
  %16 = load ptr, ptr %9, align 8, !tbaa !304
  %17 = getelementptr inbounds %struct.xpvcv, ptr %16, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !155
  %19 = icmp eq ptr %18, null
  br i1 %19, label %121, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !150
  call void @Perl_push_scope() #40
  call void @Perl_save_re_context() #40
  br i1 %1, label %22, label %23

22:                                               ; preds = %20
  call void @Perl_save_sptr(ptr noundef nonnull @PL_warnhook) #40
  store ptr null, ptr @PL_warnhook, align 8, !tbaa !150
  br label %23

23:                                               ; preds = %22, %20
  %24 = call ptr @Perl_newSVsv(ptr noundef %0) #40
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !188
  %27 = or i32 %26, 134283264
  store i32 %27, ptr %25, align 4, !tbaa !188
  call void @Perl_save_pushptr(ptr noundef %24, i32 noundef 11) #40
  %28 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !150
  %29 = getelementptr inbounds %struct.stackinfo, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !306
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = call ptr @Perl_new_stackinfo(i32 noundef 32, i32 noundef 22) #40
  %34 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !150
  %35 = getelementptr inbounds %struct.stackinfo, ptr %33, i64 0, i32 2
  store ptr %34, ptr %35, align 8, !tbaa !308
  %36 = getelementptr inbounds %struct.stackinfo, ptr %34, i64 0, i32 3
  store ptr %33, ptr %36, align 8, !tbaa !306
  br label %37

37:                                               ; preds = %32, %23
  %38 = phi ptr [ %30, %23 ], [ %33, %32 ]
  %39 = select i1 %1, i32 7, i32 8
  %40 = getelementptr inbounds %struct.stackinfo, ptr %38, i64 0, i32 6
  store i32 %39, ptr %40, align 8, !tbaa !309
  %41 = getelementptr inbounds %struct.stackinfo, ptr %38, i64 0, i32 4
  store i32 -1, ptr %41, align 8, !tbaa !310
  %42 = load ptr, ptr %38, align 8, !tbaa !311
  %43 = load ptr, ptr %42, align 8, !tbaa !312
  %44 = getelementptr inbounds %struct.xpvav, ptr %43, i64 0, i32 2
  store i64 0, ptr %44, align 8, !tbaa !314
  %45 = load ptr, ptr @PL_stack_base, align 8, !tbaa !150
  %46 = ptrtoint ptr %21 to i64
  %47 = ptrtoint ptr %45 to i64
  %48 = sub i64 %46, %47
  %49 = ashr exact i64 %48, 3
  %50 = load ptr, ptr @PL_curstack, align 8, !tbaa !150
  %51 = load ptr, ptr %50, align 8, !tbaa !312
  %52 = getelementptr inbounds %struct.xpvav, ptr %51, i64 0, i32 2
  store i64 %49, ptr %52, align 8, !tbaa !314
  %53 = getelementptr inbounds %struct.av, ptr %42, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !155
  store ptr %54, ptr @PL_stack_base, align 8, !tbaa !150
  %55 = load ptr, ptr %38, align 8, !tbaa !311
  %56 = load ptr, ptr %55, align 8, !tbaa !312
  %57 = getelementptr inbounds %struct.xpvav, ptr %56, i64 0, i32 3
  %58 = load i64, ptr %57, align 8, !tbaa !316
  %59 = getelementptr inbounds ptr, ptr %54, i64 %58
  store ptr %59, ptr @PL_stack_max, align 8, !tbaa !150
  %60 = load ptr, ptr %38, align 8, !tbaa !311
  %61 = load ptr, ptr %60, align 8, !tbaa !312
  %62 = getelementptr inbounds %struct.xpvav, ptr %61, i64 0, i32 2
  %63 = load i64, ptr %62, align 8, !tbaa !314
  %64 = getelementptr inbounds ptr, ptr %54, i64 %63
  store ptr %64, ptr @PL_stack_sp, align 8, !tbaa !150
  %65 = load ptr, ptr %38, align 8, !tbaa !311
  store ptr %65, ptr @PL_curstack, align 8, !tbaa !150
  store ptr %38, ptr @PL_curstackinfo, align 8, !tbaa !150
  %66 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !150
  %67 = getelementptr inbounds i32, ptr %66, i64 1
  store ptr %67, ptr @PL_markstack_ptr, align 8, !tbaa !150
  %68 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !150
  %69 = icmp eq ptr %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %37
  %71 = call ptr @Perl_markstack_grow() #40
  %72 = load ptr, ptr @PL_stack_base, align 8, !tbaa !150
  %73 = load ptr, ptr @PL_stack_max, align 8, !tbaa !150
  br label %74

74:                                               ; preds = %37, %70
  %75 = phi ptr [ %73, %70 ], [ %59, %37 ]
  %76 = phi ptr [ %72, %70 ], [ %54, %37 ]
  %77 = phi ptr [ %71, %70 ], [ %67, %37 ]
  %78 = ptrtoint ptr %64 to i64
  %79 = ptrtoint ptr %76 to i64
  %80 = sub i64 %78, %79
  %81 = lshr exact i64 %80, 3
  %82 = trunc i64 %81 to i32
  store i32 %82, ptr %77, align 4, !tbaa !163
  %83 = ptrtoint ptr %75 to i64
  %84 = sub i64 %83, %78
  %85 = icmp slt i64 %84, 8
  br i1 %85, label %86, label %88

86:                                               ; preds = %74
  %87 = call ptr @Perl_stack_grow(ptr noundef %64, ptr noundef %64, i64 noundef 1) #40
  br label %88

88:                                               ; preds = %74, %86
  %89 = phi ptr [ %87, %86 ], [ %64, %74 ]
  %90 = getelementptr inbounds ptr, ptr %89, i64 1
  store ptr %24, ptr %90, align 8, !tbaa !150
  store ptr %90, ptr @PL_stack_sp, align 8, !tbaa !150
  %91 = call i32 @Perl_call_sv(ptr noundef nonnull %9, i32 noundef 4) #40
  %92 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !150
  %93 = load ptr, ptr @PL_curstackinfo, align 8, !tbaa !150
  %94 = getelementptr inbounds %struct.stackinfo, ptr %93, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !308
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  call void @Perl_croak_popstack() #39
  br label %98

98:                                               ; preds = %88, %97
  %99 = load ptr, ptr @PL_stack_base, align 8, !tbaa !150
  %100 = ptrtoint ptr %92 to i64
  %101 = ptrtoint ptr %99 to i64
  %102 = sub i64 %100, %101
  %103 = ashr exact i64 %102, 3
  %104 = load ptr, ptr @PL_curstack, align 8, !tbaa !150
  %105 = load ptr, ptr %104, align 8, !tbaa !312
  %106 = getelementptr inbounds %struct.xpvav, ptr %105, i64 0, i32 2
  store i64 %103, ptr %106, align 8, !tbaa !314
  %107 = load ptr, ptr %95, align 8, !tbaa !311
  %108 = getelementptr inbounds %struct.av, ptr %107, i64 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !155
  store ptr %109, ptr @PL_stack_base, align 8, !tbaa !150
  %110 = load ptr, ptr %95, align 8, !tbaa !311
  %111 = load ptr, ptr %110, align 8, !tbaa !312
  %112 = getelementptr inbounds %struct.xpvav, ptr %111, i64 0, i32 3
  %113 = load i64, ptr %112, align 8, !tbaa !316
  %114 = getelementptr inbounds ptr, ptr %109, i64 %113
  store ptr %114, ptr @PL_stack_max, align 8, !tbaa !150
  %115 = load ptr, ptr %95, align 8, !tbaa !311
  %116 = load ptr, ptr %115, align 8, !tbaa !312
  %117 = getelementptr inbounds %struct.xpvav, ptr %116, i64 0, i32 2
  %118 = load i64, ptr %117, align 8, !tbaa !314
  %119 = getelementptr inbounds ptr, ptr %109, i64 %118
  store ptr %119, ptr @PL_stack_sp, align 8, !tbaa !150
  %120 = load ptr, ptr %95, align 8, !tbaa !311
  store ptr %120, ptr @PL_curstack, align 8, !tbaa !150
  store ptr %95, ptr @PL_curstackinfo, align 8, !tbaa !150
  call void @Perl_pop_scope() #40
  br label %121

121:                                              ; preds = %8, %11, %15, %2, %98
  %122 = phi i1 [ true, %98 ], [ false, %2 ], [ false, %15 ], [ false, %11 ], [ false, %8 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #45
  ret i1 %122
}

; Function Attrs: optsize
declare void @Perl_die_unwind(ptr noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_croak(ptr noundef %0, ...) local_unnamed_addr #0 !prof !142 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #45
  call void @llvm.va_start(ptr nonnull %2)
  call void @Perl_vcroak(ptr noundef %0, ptr noundef nonnull %2) #39
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_croak_no_modify() local_unnamed_addr #0 !prof !142 {
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.8, ptr noundef nonnull @PL_no_modify) #39
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_PerlIO_fileno(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #17

; Function Attrs: nofree optsize
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #18

; Function Attrs: optsize
declare void @Perl_my_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_croak_popstack() local_unnamed_addr #0 !prof !142 {
  %1 = load ptr, ptr @PL_stderrgv, align 8, !tbaa !150
  %2 = icmp eq ptr %1, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.gv, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !152
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, 9
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.gv, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !155
  %11 = getelementptr inbounds %struct.gp, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !156
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %12, align 8, !tbaa !158
  %16 = getelementptr inbounds %struct.xpvio, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !160
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %8, %3, %0
  %20 = tail call ptr @Perl_PerlIO_stderr() #40
  br label %21

21:                                               ; preds = %14, %19
  %22 = phi ptr [ %20, %19 ], [ %17, %14 ]
  %23 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %22, ptr noundef nonnull @.str.9) #40
  tail call void @Perl_my_exit(i32 noundef 1) #40
  ret void
}

; Function Attrs: optsize
declare i32 @PerlIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_warn_sv(ptr noundef %0) local_unnamed_addr #0 !prof !142 {
  %2 = tail call ptr @Perl_mess_sv(ptr noundef %0, i1 noundef zeroext false) #39
  %3 = tail call fastcc zeroext i1 @S_invoke_exception_hook(ptr noundef %2, i1 noundef zeroext true) #39
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @Perl_write_to_stderr(ptr noundef %2) #39
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_vwarn(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !142 {
  %3 = tail call ptr @Perl_vmess(ptr noundef %0, ptr noundef %1) #39
  %4 = tail call fastcc zeroext i1 @S_invoke_exception_hook(ptr noundef %3, i1 noundef zeroext true) #39
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @Perl_write_to_stderr(ptr noundef %3) #39
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_warn(ptr noundef %0, ...) local_unnamed_addr #0 !prof !142 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #45
  call void @llvm.va_start(ptr nonnull %2)
  call void @Perl_vwarn(ptr noundef %0, ptr noundef nonnull %2) #39
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_ck_warner_d(i32 noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 !prof !142 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = tail call zeroext i1 @Perl_ckwarn_d(i32 noundef %0) #39
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #45
  call void @llvm.va_start(ptr nonnull %3)
  call void @Perl_vwarner(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %3) #39
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #45
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @Perl_ckwarn_d(i32 noundef %0) local_unnamed_addr #11 !prof !317 {
  %2 = load ptr, ptr @PL_curcop, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.cop, ptr %2, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !318
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !319

6:                                                ; preds = %1
  %7 = tail call fastcc zeroext i1 @S_ckwarn_common(i32 noundef %0) #39
  br label %8

8:                                                ; preds = %1, %6
  %9 = phi i1 [ %7, %6 ], [ true, %1 ]
  ret i1 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_vwarner(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !142 {
  %4 = load ptr, ptr @PL_warnhook, align 8, !tbaa !150
  %5 = icmp eq ptr %4, @PL_sv_placeholder
  br i1 %5, label %67, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @PL_curcop, align 8, !tbaa !150
  %8 = getelementptr inbounds %struct.cop, ptr %7, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !318
  %10 = ptrtoint ptr %9 to i64
  switch i64 %10, label %11 [
    i64 0, label %82
    i64 8, label %82
    i64 16, label %82
  ]

11:                                               ; preds = %6
  %12 = getelementptr inbounds i64, ptr %9, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !155
  %14 = and i8 %13, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %67

16:                                               ; preds = %11
  %17 = shl i32 %0, 1
  %18 = lshr i32 %17, 3
  %19 = and i32 %18, 63
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %12, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !155
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
  %35 = load i8, ptr %34, align 1, !tbaa !155
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
  %48 = load i8, ptr %47, align 1, !tbaa !155
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
  %60 = load i8, ptr %59, align 1, !tbaa !155
  %61 = zext i8 %60 to i32
  %62 = and i32 %56, 6
  %63 = or disjoint i32 %62, 1
  %64 = shl nuw nsw i32 1, %63
  %65 = and i32 %64, %61
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %82, label %67

67:                                               ; preds = %55, %42, %29, %16, %11, %3
  %68 = load i8, ptr @PL_in_eval, align 1, !tbaa !155
  %69 = and i8 %68, 4
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = tail call ptr @Perl_vmess(ptr noundef %1, ptr noundef %2) #39
  %73 = load ptr, ptr @PL_parser, align 8, !tbaa !150
  %74 = icmp eq ptr %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.yy_parser, ptr %73, i64 0, i32 44
  %77 = load i8, ptr %76, align 1, !tbaa !320
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  tail call void @Perl_qerror(ptr noundef %72) #40
  br label %83

80:                                               ; preds = %75, %71
  %81 = tail call fastcc zeroext i1 @S_invoke_exception_hook(ptr noundef %72, i1 noundef zeroext false) #39
  tail call void @Perl_die_unwind(ptr noundef %72) #40
  br label %83

82:                                               ; preds = %6, %6, %6, %67, %55
  tail call void @Perl_vwarn(ptr noundef %1, ptr noundef %2) #39
  br label %83

83:                                               ; preds = %79, %80, %82
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_ck_warner(i32 noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 !prof !142 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = tail call zeroext i1 @Perl_ckwarn(i32 noundef %0) #39
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #45
  call void @llvm.va_start(ptr nonnull %3)
  call void @Perl_vwarner(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %3) #39
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #45
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i1 @Perl_ckwarn(i32 noundef %0) local_unnamed_addr #11 !prof !323 {
  %2 = load ptr, ptr @PL_curcop, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.cop, ptr %2, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !318
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10, !prof !324

6:                                                ; preds = %1
  %7 = load i8, ptr @PL_dowarn, align 1, !tbaa !155
  %8 = and i8 %7, 1
  %9 = icmp ne i8 %8, 0
  br label %12

10:                                               ; preds = %1
  %11 = tail call fastcc zeroext i1 @S_ckwarn_common(i32 noundef %0) #39
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i1 [ %9, %6 ], [ %11, %10 ]
  ret i1 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_warner(i32 noundef %0, ptr noundef %1, ...) local_unnamed_addr #0 !prof !142 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #45
  call void @llvm.va_start(ptr nonnull %3)
  call void @Perl_vwarner(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %3) #39
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #45
  ret void
}

; Function Attrs: optsize
declare void @Perl_qerror(ptr noundef) local_unnamed_addr #12

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i1 @S_ckwarn_common(i32 noundef %0) unnamed_addr #11 !prof !325 !PGOFuncName !326 {
  %2 = load ptr, ptr @PL_curcop, align 8, !tbaa !150
  %3 = getelementptr inbounds %struct.cop, ptr %2, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !318
  %5 = ptrtoint ptr %4 to i64
  switch i64 %5, label %6 [
    i64 8, label %25
    i64 16, label %8
  ], !prof !327

6:                                                ; preds = %1
  %7 = getelementptr inbounds i64, ptr %4, i64 1
  br label %9

8:                                                ; preds = %1
  br label %25

9:                                                ; preds = %9, %6
  %10 = phi i32 [ %0, %6 ], [ %22, %9 ]
  %11 = shl i32 %10, 1
  %12 = lshr i32 %11, 3
  %13 = and i32 %12, 63
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %7, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !155
  %17 = zext i8 %16 to i32
  %18 = and i32 %11, 6
  %19 = shl nuw nsw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp ne i32 %20, 0
  %22 = lshr i32 %10, 8
  %23 = icmp ult i32 %10, 256
  %24 = or i1 %21, %23
  br i1 %24, label %25, label %9, !prof !328, !llvm.loop !329

25:                                               ; preds = %9, %1, %8
  %26 = phi i1 [ false, %8 ], [ true, %1 ], [ %21, %9 ]
  ret i1 %26
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local noalias noundef ptr @Perl_new_warnings_bitfield(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #19 !prof !330 {
  %4 = tail call i64 @llvm.umax.i64(i64 %2, i64 17)
  %5 = add i64 %4, 8
  %6 = ptrtoint ptr %0 to i64
  switch i64 %6, label %9 [
    i64 16, label %7
    i64 8, label %7
    i64 0, label %7
  ]

7:                                                ; preds = %3, %3, %3
  %8 = tail call noalias ptr @malloc(i64 noundef %5) #38
  br label %11

9:                                                ; preds = %3
  %10 = tail call ptr @realloc(ptr noundef %0, i64 noundef %5) #42
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %8, %7 ], [ %10, %9 ]
  store i64 %2, ptr %12, align 8, !tbaa !203
  %13 = getelementptr inbounds i64, ptr %12, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %13, ptr align 1 %1, i64 %2, i1 false)
  %14 = icmp ult i64 %2, 17
  br i1 %14, label %15, label %18, !prof !331

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %13, i64 %2
  %17 = sub nuw nsw i64 17, %2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %16, i8 0, i64 %17, i1 false)
  br label %18

18:                                               ; preds = %15, %11
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_my_setenv(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !142 {
  %3 = load i8, ptr @PL_use_safe_putenv, align 1, !tbaa !144, !range !148, !noundef !149
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %140, !prof !332

5:                                                ; preds = %2
  %6 = load ptr, ptr @environ, align 8, !tbaa !150
  %7 = load ptr, ptr %6, align 8, !tbaa !150
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9, !prof !333

9:                                                ; preds = %5
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #44
  %11 = shl i64 %10, 32
  %12 = ashr exact i64 %11, 32
  br label %13

13:                                               ; preds = %9, %22
  %14 = phi i64 [ 0, %9 ], [ %23, %22 ]
  %15 = phi ptr [ %7, %9 ], [ %25, %22 ]
  %16 = tail call i32 @strncmp(ptr noundef nonnull %15, ptr noundef %0, i64 noundef %12) #44
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22, !prof !334

18:                                               ; preds = %13
  %19 = getelementptr inbounds i8, ptr %15, i64 %12
  %20 = load i8, ptr %19, align 1, !tbaa !155
  %21 = icmp eq i8 %20, 61
  br i1 %21, label %27, label %22

22:                                               ; preds = %13, %18
  %23 = add nuw i64 %14, 1
  %24 = getelementptr inbounds ptr, ptr %6, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !150
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %13, !prof !335, !llvm.loop !336

27:                                               ; preds = %18, %22
  %28 = phi i64 [ %23, %22 ], [ %14, %18 ]
  %29 = trunc i64 %28 to i32
  br label %30

30:                                               ; preds = %27, %5
  %31 = phi i32 [ 0, %5 ], [ %29, %27 ]
  %32 = phi i64 [ 0, %5 ], [ %28, %27 ]
  %33 = load ptr, ptr @PL_origenviron, align 8, !tbaa !150
  %34 = icmp eq ptr %6, %33
  br i1 %34, label %35, label %73, !prof !332

35:                                               ; preds = %30
  %36 = zext i32 %31 to i64
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi i32 [ %31, %35 ], [ %44, %37 ]
  %39 = phi i64 [ %36, %35 ], [ %43, %37 ]
  %40 = getelementptr inbounds ptr, ptr %6, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !150
  %42 = icmp eq ptr %41, null
  %43 = add nuw i64 %39, 1
  %44 = add i32 %38, 1
  br i1 %42, label %45, label %37, !prof !332, !llvm.loop !337

45:                                               ; preds = %37
  %46 = shl i64 %39, 3
  %47 = add i64 %46, 16
  %48 = and i64 %47, 34359738360
  %49 = tail call ptr @Perl_safesysmalloc(i64 noundef %48) #39
  %50 = and i64 %39, 4294967295
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %71, label %52, !prof !333

52:                                               ; preds = %45
  %53 = zext i32 %38 to i64
  %54 = load ptr, ptr @environ, align 8, !tbaa !150
  br label %55

55:                                               ; preds = %52, %55
  %56 = phi ptr [ %54, %52 ], [ %66, %55 ]
  %57 = phi i64 [ 0, %52 ], [ %69, %55 ]
  %58 = getelementptr inbounds ptr, ptr %56, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !150
  %60 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %59) #44
  %61 = shl i64 %60, 32
  %62 = add i64 %61, 4294967296
  %63 = ashr exact i64 %62, 32
  %64 = tail call ptr @Perl_safesysmalloc(i64 noundef %63) #39
  %65 = getelementptr inbounds ptr, ptr %49, i64 %57
  store ptr %64, ptr %65, align 8, !tbaa !150
  %66 = load ptr, ptr @environ, align 8, !tbaa !150
  %67 = getelementptr inbounds ptr, ptr %66, i64 %57
  %68 = load ptr, ptr %67, align 8, !tbaa !150
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %64, ptr align 1 %68, i64 %63, i1 false)
  %69 = add nuw nsw i64 %57, 1
  %70 = icmp eq i64 %69, %53
  br i1 %70, label %71, label %55, !prof !335, !llvm.loop !338

71:                                               ; preds = %55, %45
  %72 = getelementptr inbounds ptr, ptr %49, i64 %39
  store ptr null, ptr %72, align 8, !tbaa !150
  store ptr %49, ptr @environ, align 8, !tbaa !150
  br label %73

73:                                               ; preds = %71, %30
  %74 = phi ptr [ %49, %71 ], [ %6, %30 ]
  %75 = icmp eq ptr %1, null
  %76 = getelementptr inbounds ptr, ptr %74, i64 %32
  %77 = load ptr, ptr %76, align 8, !tbaa !150
  br i1 %75, label %78, label %95, !prof !332

78:                                               ; preds = %73
  tail call void @Perl_safesysfree(ptr noundef %77) #39
  %79 = load ptr, ptr @environ, align 8, !tbaa !150
  %80 = zext i32 %31 to i64
  %81 = getelementptr inbounds ptr, ptr %79, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !150
  %83 = icmp eq ptr %82, null
  br i1 %83, label %164, label %84, !prof !339

84:                                               ; preds = %78, %84
  %85 = phi i64 [ %88, %84 ], [ %80, %78 ]
  %86 = phi ptr [ %92, %84 ], [ %81, %78 ]
  %87 = phi ptr [ %91, %84 ], [ %79, %78 ]
  %88 = add nuw i64 %85, 1
  %89 = getelementptr inbounds ptr, ptr %87, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !150
  store ptr %90, ptr %86, align 8, !tbaa !150
  %91 = load ptr, ptr @environ, align 8, !tbaa !150
  %92 = getelementptr inbounds ptr, ptr %91, i64 %88
  %93 = load ptr, ptr %92, align 8, !tbaa !150
  %94 = icmp eq ptr %93, null
  br i1 %94, label %164, label %84, !prof !340, !llvm.loop !341

95:                                               ; preds = %73
  %96 = icmp eq ptr %77, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %95
  %98 = add nuw nsw i32 %31, 2
  %99 = zext nneg i32 %98 to i64
  %100 = shl nuw nsw i64 %99, 3
  %101 = tail call ptr @Perl_safesysrealloc(ptr noundef nonnull %74, i64 noundef %100) #39
  store ptr %101, ptr @environ, align 8, !tbaa !150
  %102 = getelementptr ptr, ptr %101, i64 %32
  %103 = getelementptr ptr, ptr %102, i64 1
  store ptr null, ptr %103, align 8, !tbaa !150
  br label %105

104:                                              ; preds = %95
  tail call void @Perl_safesysfree(ptr noundef nonnull %77) #39
  br label %105

105:                                              ; preds = %104, %97
  %106 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #44
  %107 = trunc i64 %106 to i32
  %108 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #44
  %109 = trunc i64 %108 to i32
  %110 = add i64 %108, %106
  %111 = shl i64 %110, 32
  %112 = add i64 %111, 8589934592
  %113 = ashr exact i64 %112, 32
  %114 = tail call ptr @Perl_safesysmalloc(i64 noundef %113) #39
  %115 = load ptr, ptr @environ, align 8, !tbaa !150
  %116 = getelementptr inbounds ptr, ptr %115, i64 %32
  store ptr %114, ptr %116, align 8, !tbaa !150
  %117 = load ptr, ptr @environ, align 8, !tbaa !150
  %118 = getelementptr inbounds ptr, ptr %117, i64 %32
  %119 = load ptr, ptr %118, align 8, !tbaa !150
  %120 = shl i64 %106, 32
  %121 = ashr exact i64 %120, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %119, ptr align 1 %0, i64 %121, i1 false)
  %122 = load ptr, ptr @environ, align 8, !tbaa !150
  %123 = getelementptr inbounds ptr, ptr %122, i64 %32
  %124 = load ptr, ptr %123, align 8, !tbaa !150
  %125 = getelementptr inbounds i8, ptr %124, i64 %121
  store i8 61, ptr %125, align 1, !tbaa !155
  %126 = load ptr, ptr @environ, align 8, !tbaa !150
  %127 = getelementptr inbounds ptr, ptr %126, i64 %32
  %128 = load ptr, ptr %127, align 8, !tbaa !150
  %129 = add nsw i32 %107, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, ptr %128, i64 %130
  %132 = shl i64 %108, 32
  %133 = ashr exact i64 %132, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %131, ptr nonnull align 1 %1, i64 %133, i1 false)
  %134 = load ptr, ptr @environ, align 8, !tbaa !150
  %135 = getelementptr inbounds ptr, ptr %134, i64 %32
  %136 = load ptr, ptr %135, align 8, !tbaa !150
  %137 = add nsw i32 %129, %109
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, ptr %136, i64 %138
  store i8 0, ptr %139, align 1, !tbaa !155
  br label %164

140:                                              ; preds = %2
  %141 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #44
  %142 = trunc i64 %141 to i32
  %143 = icmp eq ptr %1, null
  %144 = select i1 %143, ptr @.str.10, ptr %1
  %145 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %144) #44
  %146 = trunc i64 %145 to i32
  %147 = add i64 %145, %141
  %148 = shl i64 %147, 32
  %149 = add i64 %148, 8589934592
  %150 = ashr exact i64 %149, 32
  %151 = tail call ptr @Perl_safesysmalloc(i64 noundef %150) #39
  %152 = shl i64 %141, 32
  %153 = ashr exact i64 %152, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %151, ptr align 1 %0, i64 %153, i1 false)
  %154 = getelementptr inbounds i8, ptr %151, i64 %153
  store i8 61, ptr %154, align 1, !tbaa !155
  %155 = add nsw i32 %142, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, ptr %151, i64 %156
  %158 = shl i64 %145, 32
  %159 = ashr exact i64 %158, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %157, ptr nonnull align 1 %144, i64 %159, i1 false)
  %160 = add nsw i32 %155, %146
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, ptr %151, i64 %161
  store i8 0, ptr %162, align 1, !tbaa !155
  %163 = tail call i32 @putenv(ptr noundef %151) #40
  br label %164

164:                                              ; preds = %84, %78, %105, %140
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind optsize
declare i32 @putenv(ptr noundef) local_unnamed_addr #20

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_my_popen_list(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !142 {
  %4 = alloca [2 x i32], align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #45
  %8 = tail call i32 @Perl_PerlIO_flush(ptr noundef null) #40
  %9 = load i8, ptr %0, align 1, !tbaa !155
  %10 = icmp eq i8 %9, 119
  %11 = xor i1 %10, true
  %12 = load i8, ptr @PL_tainting, align 1, !tbaa !144, !range !148, !noundef !149
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  tail call void @Perl_taint_env() #40
  tail call void @Perl_taint_proper(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #40
  br label %15

15:                                               ; preds = %14, %3
  %16 = call i32 @pipe(ptr noundef nonnull %4) #40
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %170, label %18

18:                                               ; preds = %15
  %19 = call i32 @pipe(ptr noundef nonnull %5) #40
  %20 = icmp sgt i32 %19, -1
  %21 = call i32 @Perl_my_fork() #39
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %18
  %24 = tail call ptr @__errno_location() #41
  br label %25

25:                                               ; preds = %23, %43
  %26 = load i32, ptr %24, align 4, !tbaa !163
  %27 = icmp eq i32 %26, 11
  br i1 %27, label %43, label %28

28:                                               ; preds = %25
  %29 = zext i1 %10 to i64
  %30 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !163
  %32 = call i32 @close(i32 noundef %31) #40
  %33 = zext i1 %11 to i64
  %34 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !163
  %36 = call i32 @close(i32 noundef %35) #40
  br i1 %20, label %37, label %170

37:                                               ; preds = %28
  %38 = load i32, ptr %5, align 4, !tbaa !163
  %39 = call i32 @close(i32 noundef %38) #40
  %40 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  %41 = load i32, ptr %40, align 4, !tbaa !163
  %42 = call i32 @close(i32 noundef %41) #40
  br label %170

43:                                               ; preds = %25
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 10, ptr noundef nonnull @.str.13) #39
  %44 = call i32 @sleep(i32 noundef 5) #40
  %45 = call i32 @Perl_my_fork() #39
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %25, label %47, !llvm.loop !342

47:                                               ; preds = %43, %18
  %48 = phi i32 [ %21, %18 ], [ %45, %43 ]
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %92

50:                                               ; preds = %47
  br i1 %20, label %51, label %58

51:                                               ; preds = %50
  %52 = load i32, ptr %5, align 4, !tbaa !163
  %53 = call i32 @close(i32 noundef %52) #40
  %54 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  %55 = load i32, ptr %54, align 4, !tbaa !163
  %56 = call i32 (i32, i32, ...) @fcntl64(i32 noundef %55, i32 noundef 2, i32 noundef 1) #40
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %170, label %58

58:                                               ; preds = %51, %50
  %59 = zext i1 %11 to i64
  %60 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !163
  %62 = load i8, ptr %0, align 1, !tbaa !155
  %63 = icmp eq i8 %62, 114
  %64 = zext i1 %63 to i32
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %77, label %66

66:                                               ; preds = %58
  %67 = call i32 @dup2(i32 noundef %61, i32 noundef %64) #40
  %68 = load i32, ptr %60, align 4, !tbaa !163
  %69 = call i32 @close(i32 noundef %68) #40
  %70 = zext i1 %10 to i64
  %71 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !163
  %73 = load i8, ptr %0, align 1, !tbaa !155
  %74 = icmp eq i8 %73, 114
  %75 = zext i1 %74 to i32
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %84, label %81

77:                                               ; preds = %58
  %78 = zext i1 %10 to i64
  %79 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !163
  br label %81

81:                                               ; preds = %66, %77
  %82 = phi i32 [ %80, %77 ], [ %72, %66 ]
  %83 = call i32 @close(i32 noundef %82) #40
  br label %84

84:                                               ; preds = %81, %66
  %85 = zext i1 %20 to i32
  %86 = getelementptr inbounds ptr, ptr %2, i64 -1
  %87 = sext i32 %1 to i64
  %88 = getelementptr inbounds ptr, ptr %86, i64 %87
  %89 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  %90 = load i32, ptr %89, align 4, !tbaa !163
  %91 = call zeroext i1 @Perl_do_aexec5(ptr noundef null, ptr noundef nonnull %86, ptr noundef nonnull %88, i32 noundef %90, i32 noundef %85) #40
  call void @_exit(i32 noundef 1) #46
  unreachable

92:                                               ; preds = %47
  call void @Perl_do_execfree() #40
  br i1 %20, label %93, label %97

93:                                               ; preds = %92
  %94 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  %95 = load i32, ptr %94, align 4, !tbaa !163
  %96 = call i32 @close(i32 noundef %95) #40
  br label %97

97:                                               ; preds = %93, %92
  %98 = zext i1 %11 to i64
  %99 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !163
  %101 = zext i1 %10 to i64
  %102 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !163
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %97
  %106 = call i32 @dup2(i32 noundef %103, i32 noundef %100) #40
  %107 = load i32, ptr %102, align 4, !tbaa !163
  %108 = call i32 @close(i32 noundef %107) #40
  %109 = load i32, ptr %99, align 4, !tbaa !163
  store i32 %109, ptr %102, align 4, !tbaa !163
  br label %113

110:                                              ; preds = %97
  %111 = call i32 @close(i32 noundef %100) #40
  %112 = load i32, ptr %102, align 4, !tbaa !163
  br label %113

113:                                              ; preds = %110, %105
  %114 = phi i32 [ %112, %110 ], [ %109, %105 ]
  %115 = load ptr, ptr @PL_fdpid, align 8, !tbaa !150
  %116 = sext i32 %114 to i64
  %117 = call ptr @Perl_av_fetch(ptr noundef %115, i64 noundef %116, i32 noundef 1) #40
  %118 = load ptr, ptr %117, align 8, !tbaa !150
  %119 = getelementptr inbounds %struct.sv, ptr %118, i64 0, i32 2
  %120 = load i32, ptr %119, align 4, !tbaa !188
  %121 = and i32 %120, 255
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  call void @Perl_sv_upgrade(ptr noundef nonnull %118, i32 noundef 1) #40
  br label %124

124:                                              ; preds = %123, %113
  %125 = zext nneg i32 %48 to i64
  %126 = load ptr, ptr %118, align 8, !tbaa !200
  %127 = getelementptr inbounds %struct.xpviv, ptr %126, i64 0, i32 4
  store i64 %125, ptr %127, align 8, !tbaa !155
  store i32 %48, ptr @PL_forkprocess, align 4, !tbaa !163
  br i1 %20, label %128, label %167

128:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #45
  br label %133

129:                                              ; preds = %133
  %130 = trunc i64 %139 to i32
  %131 = add i32 %134, %130
  %132 = icmp ult i32 %131, 4
  br i1 %132, label %133, label %148, !llvm.loop !343

133:                                              ; preds = %128, %129
  %134 = phi i32 [ 0, %128 ], [ %131, %129 ]
  %135 = zext nneg i32 %134 to i64
  %136 = load i32, ptr %5, align 4, !tbaa !163
  %137 = getelementptr inbounds i8, ptr %6, i64 %135
  %138 = sub nuw nsw i64 4, %135
  %139 = call i64 @read(i32 noundef %136, ptr noundef nonnull %137, i64 noundef %138) #40
  %140 = icmp slt i64 %139, 1
  br i1 %140, label %141, label %129

141:                                              ; preds = %133
  %142 = load i32, ptr %5, align 4, !tbaa !163
  %143 = call i32 @close(i32 noundef %142) #40
  %144 = icmp eq i32 %134, 0
  br i1 %144, label %166, label %145

145:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #45
  %146 = load i32, ptr %102, align 4, !tbaa !163
  %147 = call i32 @close(i32 noundef %146) #40
  br label %154

148:                                              ; preds = %129
  %149 = load i32, ptr %5, align 4, !tbaa !163
  %150 = call i32 @close(i32 noundef %149) #40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #45
  %151 = load i32, ptr %102, align 4, !tbaa !163
  %152 = call i32 @close(i32 noundef %151) #40
  %153 = icmp eq i32 %131, 4
  br i1 %153, label %156, label %154

154:                                              ; preds = %145, %148
  %155 = phi i32 [ %134, %145 ], [ %131, %148 ]
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.14, i32 noundef %155) #39
  br label %156

156:                                              ; preds = %154, %148
  br label %157

157:                                              ; preds = %156, %161
  %158 = call i32 @Perl_wait4pid(i32 noundef %48, ptr noundef nonnull %7, i32 noundef 0) #39
  %159 = icmp eq i32 %158, -1
  %160 = tail call ptr @__errno_location() #41
  br i1 %159, label %161, label %164

161:                                              ; preds = %157
  %162 = load i32, ptr %160, align 4, !tbaa !163
  %163 = icmp eq i32 %162, 4
  br i1 %163, label %157, label %164, !llvm.loop !344

164:                                              ; preds = %161, %157
  %165 = load i32, ptr %6, align 4, !tbaa !163
  store i32 %165, ptr %160, align 4, !tbaa !163
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #45
  br label %170

166:                                              ; preds = %141
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #45
  br label %167

167:                                              ; preds = %124, %166
  %168 = load i32, ptr %102, align 4, !tbaa !163
  %169 = call ptr @PerlIO_fdopen(i32 noundef %168, ptr noundef nonnull %0) #40
  br label %170

170:                                              ; preds = %164, %51, %28, %37, %15, %167
  %171 = phi ptr [ %169, %167 ], [ null, %164 ], [ null, %15 ], [ null, %37 ], [ null, %28 ], [ null, %51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #45
  ret ptr %171
}

; Function Attrs: optsize
declare void @Perl_taint_env() local_unnamed_addr #12

; Function Attrs: optsize
declare void @Perl_taint_proper(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind optsize
declare i32 @pipe(ptr noundef) local_unnamed_addr #20

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local i32 @Perl_my_fork() local_unnamed_addr #21 !prof !142 {
  %1 = tail call i32 @fork() #40
  ret i32 %1
}

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare i32 @sleep(i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare i32 @fcntl64(i32 noundef, i32 noundef, ...) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @dup2(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !142 {
  %3 = icmp eq i32 %0, %1
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @close(i32 noundef %1) #40
  %6 = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %0, i32 noundef 0, i32 noundef %1) #40
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi i32 [ %6, %4 ], [ %0, %2 ]
  ret i32 %8
}

; Function Attrs: optsize
declare zeroext i1 @Perl_do_aexec5(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: noreturn optsize
declare void @_exit(i32 noundef) local_unnamed_addr #22

; Function Attrs: optsize
declare void @Perl_do_execfree() local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_wait4pid(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !142 {
  %4 = tail call i32 @waitpid(i32 noundef %0, ptr noundef %1, i32 noundef %2) #40
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #41
  %8 = load i32, ptr %7, align 4, !tbaa !163
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, ptr @PL_sig_pending, align 4, !tbaa !163
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr @PL_signalhook, align 8, !tbaa !150
  tail call void %14() #40
  br label %15

15:                                               ; preds = %10, %13
  store i32 4, ptr %7, align 4, !tbaa !163
  br label %16

16:                                               ; preds = %15, %6, %3
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @PerlIO_fdopen(i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_my_popen(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !142 {
  %3 = alloca [2 x i32], align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #45
  %7 = load i8, ptr %0, align 1, !tbaa !155
  %8 = icmp eq i8 %7, 45
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8, ptr %0, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !155
  %12 = icmp eq i8 %11, 0
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i1 [ false, %2 ], [ %12, %9 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #45
  %15 = tail call i32 @Perl_PerlIO_flush(ptr noundef null) #40
  %16 = load i8, ptr %1, align 1, !tbaa !155
  %17 = icmp eq i8 %16, 119
  %18 = xor i1 %17, true
  %19 = load i8, ptr @PL_tainting, align 1, !range !148
  %20 = icmp eq i8 %19, 0
  %21 = select i1 %14, i1 true, i1 %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  tail call void @Perl_taint_env() #40
  tail call void @Perl_taint_proper(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #40
  br label %23

23:                                               ; preds = %22, %13
  %24 = call i32 @pipe(ptr noundef nonnull %3) #40
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %190, label %26

26:                                               ; preds = %23
  br i1 %14, label %31, label %27

27:                                               ; preds = %26
  %28 = call i32 @pipe(ptr noundef nonnull %4) #40
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %30, %27, %26
  %32 = phi i1 [ true, %30 ], [ false, %27 ], [ false, %26 ]
  %33 = phi i1 [ false, %30 ], [ true, %27 ], [ true, %26 ]
  %34 = phi i32 [ 1, %30 ], [ 0, %27 ], [ 0, %26 ]
  %35 = call i32 @Perl_my_fork() #39
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %31
  %38 = tail call ptr @__errno_location() #41
  br label %39

39:                                               ; preds = %37, %61
  %40 = load i32, ptr %38, align 4, !tbaa !163
  %41 = icmp eq i32 %40, 11
  br i1 %41, label %61, label %42

42:                                               ; preds = %39
  %43 = zext i1 %17 to i64
  %44 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !163
  %46 = call i32 @close(i32 noundef %45) #40
  %47 = zext i1 %18 to i64
  %48 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !163
  %50 = call i32 @close(i32 noundef %49) #40
  br i1 %33, label %57, label %51

51:                                               ; preds = %42
  %52 = load i32, ptr %4, align 4, !tbaa !163
  %53 = call i32 @close(i32 noundef %52) #40
  %54 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  %55 = load i32, ptr %54, align 4, !tbaa !163
  %56 = call i32 @close(i32 noundef %55) #40
  br label %57

57:                                               ; preds = %51, %42
  br i1 %14, label %58, label %190

58:                                               ; preds = %57
  %59 = load i32, ptr %38, align 4, !tbaa !163
  %60 = call ptr @strerror(i32 noundef %59) #40
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.15, ptr noundef %60) #39
  br label %190

61:                                               ; preds = %39
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 10, ptr noundef nonnull @.str.13) #39
  %62 = call i32 @sleep(i32 noundef 5) #40
  %63 = call i32 @Perl_my_fork() #39
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %39, label %65, !llvm.loop !345

65:                                               ; preds = %61, %31
  %66 = phi i32 [ %35, %31 ], [ %63, %61 ]
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %108

68:                                               ; preds = %65
  br i1 %33, label %76, label %69

69:                                               ; preds = %68
  %70 = load i32, ptr %4, align 4, !tbaa !163
  %71 = call i32 @close(i32 noundef %70) #40
  %72 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  %73 = load i32, ptr %72, align 4, !tbaa !163
  %74 = call i32 (i32, i32, ...) @fcntl64(i32 noundef %73, i32 noundef 2, i32 noundef 1) #40
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %190, label %76

76:                                               ; preds = %69, %68
  %77 = zext i1 %18 to i64
  %78 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !163
  %80 = load i8, ptr %1, align 1, !tbaa !155
  %81 = icmp eq i8 %80, 114
  %82 = zext i1 %81 to i32
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %95, label %84

84:                                               ; preds = %76
  %85 = call i32 @dup2(i32 noundef %79, i32 noundef %82) #40
  %86 = load i32, ptr %78, align 4, !tbaa !163
  %87 = call i32 @close(i32 noundef %86) #40
  %88 = zext i1 %17 to i64
  %89 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !163
  %91 = load i8, ptr %1, align 1, !tbaa !155
  %92 = icmp eq i8 %91, 114
  %93 = zext i1 %92 to i32
  %94 = icmp eq i32 %90, %93
  br i1 %94, label %102, label %99

95:                                               ; preds = %76
  %96 = zext i1 %17 to i64
  %97 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !163
  br label %99

99:                                               ; preds = %84, %95
  %100 = phi i32 [ %98, %95 ], [ %90, %84 ]
  %101 = call i32 @close(i32 noundef %100) #40
  br label %102

102:                                              ; preds = %99, %84
  br i1 %14, label %107, label %103

103:                                              ; preds = %102
  %104 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  %105 = load i32, ptr %104, align 4, !tbaa !163
  %106 = call zeroext i1 @Perl_do_exec3(ptr noundef nonnull %0, i32 noundef %105, i32 noundef %34) #40
  call void @_exit(i32 noundef 1) #46
  unreachable

107:                                              ; preds = %102
  store i32 0, ptr @PL_forkprocess, align 4, !tbaa !163
  br label %190

108:                                              ; preds = %65
  call void @Perl_do_execfree() #40
  br i1 %32, label %109, label %113

109:                                              ; preds = %108
  %110 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  %111 = load i32, ptr %110, align 4, !tbaa !163
  %112 = call i32 @close(i32 noundef %111) #40
  br label %113

113:                                              ; preds = %109, %108
  %114 = zext i1 %18 to i64
  %115 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !163
  %117 = zext i1 %17 to i64
  %118 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !163
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %113
  %122 = call i32 @dup2(i32 noundef %119, i32 noundef %116) #40
  %123 = load i32, ptr %118, align 4, !tbaa !163
  %124 = call i32 @close(i32 noundef %123) #40
  %125 = load i32, ptr %115, align 4, !tbaa !163
  store i32 %125, ptr %118, align 4, !tbaa !163
  br label %129

126:                                              ; preds = %113
  %127 = call i32 @close(i32 noundef %116) #40
  %128 = load i32, ptr %118, align 4, !tbaa !163
  br label %129

129:                                              ; preds = %126, %121
  %130 = phi i32 [ %128, %126 ], [ %125, %121 ]
  %131 = load ptr, ptr @PL_fdpid, align 8, !tbaa !150
  %132 = sext i32 %130 to i64
  %133 = call ptr @Perl_av_fetch(ptr noundef %131, i64 noundef %132, i32 noundef 1) #40
  %134 = load ptr, ptr %133, align 8, !tbaa !150
  %135 = getelementptr inbounds %struct.sv, ptr %134, i64 0, i32 2
  %136 = load i32, ptr %135, align 4, !tbaa !188
  %137 = and i32 %136, 255
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %129
  call void @Perl_sv_upgrade(ptr noundef nonnull %134, i32 noundef 1) #40
  br label %140

140:                                              ; preds = %139, %129
  %141 = zext nneg i32 %66 to i64
  %142 = load ptr, ptr %134, align 8, !tbaa !200
  %143 = getelementptr inbounds %struct.xpviv, ptr %142, i64 0, i32 4
  store i64 %141, ptr %143, align 8, !tbaa !155
  store i32 %66, ptr @PL_forkprocess, align 4, !tbaa !163
  br i1 %32, label %144, label %183

144:                                              ; preds = %140
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #45
  br label %149

145:                                              ; preds = %149
  %146 = trunc i64 %155 to i32
  %147 = add i32 %150, %146
  %148 = icmp ult i32 %147, 4
  br i1 %148, label %149, label %164, !llvm.loop !346

149:                                              ; preds = %144, %145
  %150 = phi i32 [ 0, %144 ], [ %147, %145 ]
  %151 = zext nneg i32 %150 to i64
  %152 = load i32, ptr %4, align 4, !tbaa !163
  %153 = getelementptr inbounds i8, ptr %5, i64 %151
  %154 = sub nuw nsw i64 4, %151
  %155 = call i64 @read(i32 noundef %152, ptr noundef nonnull %153, i64 noundef %154) #40
  %156 = icmp slt i64 %155, 1
  br i1 %156, label %157, label %145

157:                                              ; preds = %149
  %158 = load i32, ptr %4, align 4, !tbaa !163
  %159 = call i32 @close(i32 noundef %158) #40
  %160 = icmp eq i32 %150, 0
  br i1 %160, label %182, label %161

161:                                              ; preds = %157
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #45
  %162 = load i32, ptr %118, align 4, !tbaa !163
  %163 = call i32 @close(i32 noundef %162) #40
  br label %170

164:                                              ; preds = %145
  %165 = load i32, ptr %4, align 4, !tbaa !163
  %166 = call i32 @close(i32 noundef %165) #40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #45
  %167 = load i32, ptr %118, align 4, !tbaa !163
  %168 = call i32 @close(i32 noundef %167) #40
  %169 = icmp eq i32 %147, 4
  br i1 %169, label %172, label %170

170:                                              ; preds = %161, %164
  %171 = phi i32 [ %150, %161 ], [ %147, %164 ]
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.14, i32 noundef %171) #39
  br label %172

172:                                              ; preds = %170, %164
  br label %173

173:                                              ; preds = %172, %177
  %174 = call i32 @Perl_wait4pid(i32 noundef %66, ptr noundef nonnull %6, i32 noundef 0) #39
  %175 = icmp eq i32 %174, -1
  %176 = tail call ptr @__errno_location() #41
  br i1 %175, label %177, label %180

177:                                              ; preds = %173
  %178 = load i32, ptr %176, align 4, !tbaa !163
  %179 = icmp eq i32 %178, 4
  br i1 %179, label %173, label %180, !llvm.loop !347

180:                                              ; preds = %177, %173
  %181 = load i32, ptr %5, align 4, !tbaa !163
  store i32 %181, ptr %176, align 4, !tbaa !163
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #45
  br label %190

182:                                              ; preds = %157
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #45
  br label %187

183:                                              ; preds = %140
  br i1 %33, label %187, label %184

184:                                              ; preds = %183
  %185 = load i32, ptr %4, align 4, !tbaa !163
  %186 = call i32 @close(i32 noundef %185) #40
  br label %187

187:                                              ; preds = %182, %184, %183
  %188 = load i32, ptr %118, align 4, !tbaa !163
  %189 = call ptr @PerlIO_fdopen(i32 noundef %188, ptr noundef nonnull %1) #40
  br label %190

190:                                              ; preds = %180, %69, %57, %58, %23, %187, %107
  %191 = phi ptr [ null, %107 ], [ %189, %187 ], [ null, %180 ], [ null, %23 ], [ null, %58 ], [ null, %57 ], [ null, %69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #45
  ret ptr %191
}

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #20

; Function Attrs: optsize
declare zeroext i1 @Perl_do_exec3(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @Perl_atfork_lock() local_unnamed_addr #23 !prof !142 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @Perl_atfork_unlock() local_unnamed_addr #23 !prof !142 {
  ret void
}

; Function Attrs: nofree nounwind optsize
declare i32 @fork() local_unnamed_addr #24

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_rsignal(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !142 {
  %3 = tail call ptr @__sysv_signal(i32 noundef %0, ptr noundef %1) #40
  ret ptr %3
}

; Function Attrs: nounwind optsize
declare ptr @__sysv_signal(i32 noundef, ptr noundef) local_unnamed_addr #20

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @Perl_rsignal_state(i32 noundef %0) local_unnamed_addr #0 !prof !142 {
  store i32 0, ptr @PL_sig_trapped, align 4, !tbaa !163
  %2 = tail call ptr @__sysv_signal(i32 noundef %0, ptr noundef nonnull @sig_trap) #40
  %3 = tail call ptr @__sysv_signal(i32 noundef %0, ptr noundef %2) #40
  %4 = load i32, ptr @PL_sig_trapped, align 4, !tbaa !163
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !348

6:                                                ; preds = %1
  %7 = tail call i32 @getpid() #40
  %8 = tail call i32 @kill(i32 noundef %7, i32 noundef %0) #40
  br label %9

9:                                                ; preds = %6, %1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @sig_trap(i32 %0) #25 !prof !142 !PGOFuncName !349 {
  %2 = load i32, ptr @PL_sig_trapped, align 4, !tbaa !163
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @PL_sig_trapped, align 4, !tbaa !163
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: nounwind optsize
declare i32 @getpid() local_unnamed_addr #20

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_rsignal_save(i32 noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !prof !142 {
  %4 = tail call ptr @__sysv_signal(i32 noundef %0, ptr noundef %1) #40
  store ptr %4, ptr %2, align 8, !tbaa !150
  %5 = icmp eq ptr %4, inttoptr (i64 -1 to ptr)
  %6 = sext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_rsignal_restore(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !142 {
  %3 = load ptr, ptr %1, align 8, !tbaa !150
  %4 = tail call ptr @__sysv_signal(i32 noundef %0, ptr noundef %3) #40
  %5 = icmp eq ptr %4, inttoptr (i64 -1 to ptr)
  %6 = sext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_my_pclose(ptr noundef %0) local_unnamed_addr #0 !prof !142 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #45
  %3 = tail call i32 @Perl_PerlIO_fileno(ptr noundef %0) #40
  %4 = load ptr, ptr @PL_fdpid, align 8, !tbaa !150
  %5 = sext i32 %3 to i64
  %6 = tail call ptr @Perl_av_fetch(ptr noundef %4, i64 noundef %5, i32 noundef 1) #40
  %7 = load ptr, ptr %6, align 8, !tbaa !150
  %8 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !188
  %10 = and i32 %9, 255
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load ptr, ptr %7, align 8, !tbaa !200
  %14 = getelementptr inbounds %struct.xpviv, ptr %13, i64 0, i32 4
  %15 = load i64, ptr %14, align 8, !tbaa !155
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %1, %12
  %18 = phi i32 [ %16, %12 ], [ -1, %1 ]
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %7) #39
  store ptr null, ptr %6, align 8, !tbaa !150
  %19 = tail call i32 @PerlIOUnix_refcnt(i32 noundef %3) #40
  %20 = icmp eq i32 %19, 1
  %21 = icmp sgt i32 %18, 0
  %22 = select i1 %20, i1 %21, i1 false
  %23 = tail call i32 @Perl_PerlIO_close(ptr noundef %0) #40
  %24 = icmp eq i32 %23, -1
  %25 = tail call ptr @__errno_location() #41
  %26 = load i32, ptr %25, align 4, !tbaa !163
  br i1 %22, label %27, label %35

27:                                               ; preds = %17, %30
  %28 = call i32 @Perl_wait4pid(i32 noundef %18, ptr noundef nonnull %2, i32 noundef 0) #39
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, ptr %25, align 4, !tbaa !163
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %27, label %34, !llvm.loop !350

33:                                               ; preds = %27
  br i1 %24, label %41, label %36

34:                                               ; preds = %30
  br i1 %24, label %41, label %44

35:                                               ; preds = %17
  br i1 %24, label %41, label %44

36:                                               ; preds = %33
  %37 = icmp slt i32 %28, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %36
  %39 = load i32, ptr %2, align 4, !tbaa !163
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38, %33, %35, %34
  %42 = phi i32 [ %26, %34 ], [ %26, %35 ], [ %26, %33 ], [ 0, %38 ]
  %43 = phi i32 [ -1, %34 ], [ -1, %35 ], [ -1, %33 ], [ %39, %38 ]
  store i32 %42, ptr %25, align 4, !tbaa !163
  br label %44

44:                                               ; preds = %41, %34, %35, %38, %36
  %45 = phi i32 [ 0, %38 ], [ %28, %36 ], [ 0, %35 ], [ -1, %34 ], [ %43, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #45
  ret i32 %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 !prof !351 !PGOFuncName !352 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3, !prof !353

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !273
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !273
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #40
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: optsize
declare i32 @PerlIOUnix_refcnt(i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare i32 @Perl_PerlIO_close(ptr noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_repeatcpy(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !354 {
  %5 = icmp slt i64 %3, 0
  br i1 %5, label %6, label %7, !prof !355

6:                                                ; preds = %4
  tail call fastcc void @S_croak_memory_wrap() #39
  br label %7

7:                                                ; preds = %6, %4
  %8 = icmp eq i32 %2, 1
  br i1 %8, label %9, label %11, !prof !356

9:                                                ; preds = %7
  %10 = load i8, ptr %1, align 1, !tbaa !155
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 %10, i64 %3, i1 false)
  br label %57

11:                                               ; preds = %7
  %12 = icmp eq i64 %3, 0
  br i1 %12, label %57, label %13, !prof !357

13:                                               ; preds = %11
  %14 = tail call i64 @llvm.smin.i64(i64 %3, i64 4)
  %15 = icmp sgt i64 %3, 0
  br i1 %15, label %16, label %35, !prof !358

16:                                               ; preds = %13
  %17 = sext i32 %2 to i64
  %18 = icmp sgt i32 %2, 0
  br label %19

19:                                               ; preds = %16, %31
  %20 = phi ptr [ %0, %16 ], [ %32, %31 ]
  %21 = phi i64 [ 0, %16 ], [ %33, %31 ]
  br i1 %18, label %22, label %31, !prof !359

22:                                               ; preds = %19, %22
  %23 = phi ptr [ %28, %22 ], [ %20, %19 ]
  %24 = phi i64 [ %29, %22 ], [ %17, %19 ]
  %25 = phi ptr [ %26, %22 ], [ %1, %19 ]
  %26 = getelementptr inbounds i8, ptr %25, i64 1
  %27 = load i8, ptr %25, align 1, !tbaa !155
  %28 = getelementptr inbounds i8, ptr %23, i64 1
  store i8 %27, ptr %23, align 1, !tbaa !155
  %29 = add nsw i64 %24, -1
  %30 = icmp sgt i64 %24, 1
  br i1 %30, label %22, label %31, !prof !360, !llvm.loop !361

31:                                               ; preds = %22, %19
  %32 = phi ptr [ %20, %19 ], [ %28, %22 ]
  %33 = add nuw nsw i64 %21, 1
  %34 = icmp eq i64 %33, %14
  br i1 %34, label %35, label %19, !prof !362, !llvm.loop !363

35:                                               ; preds = %31, %13
  %36 = phi i64 [ 0, %13 ], [ %14, %31 ]
  %37 = phi ptr [ %0, %13 ], [ %32, %31 ]
  %38 = sdiv i64 %3, 2
  %39 = icmp sgt i64 %36, %38
  br i1 %39, label %49, label %40, !prof !332

40:                                               ; preds = %35
  %41 = sext i32 %2 to i64
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi ptr [ %37, %40 ], [ %46, %42 ]
  %44 = phi i64 [ %36, %40 ], [ %47, %42 ]
  %45 = mul nsw i64 %44, %41
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %43, ptr align 1 %0, i64 %45, i1 false)
  %46 = getelementptr inbounds i8, ptr %43, i64 %45
  %47 = shl nsw i64 %44, 1
  %48 = icmp sgt i64 %47, %38
  br i1 %48, label %49, label %42, !prof !340, !llvm.loop !364

49:                                               ; preds = %42, %35
  %50 = phi i64 [ %36, %35 ], [ %47, %42 ]
  %51 = phi ptr [ %37, %35 ], [ %46, %42 ]
  %52 = icmp slt i64 %50, %3
  br i1 %52, label %53, label %57, !prof !357

53:                                               ; preds = %49
  %54 = sub nsw i64 %3, %50
  %55 = sext i32 %2 to i64
  %56 = mul nsw i64 %54, %55
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %51, ptr align 1 %0, i64 %56, i1 false)
  br label %57

57:                                               ; preds = %49, %53, %11, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_same_dirent(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !142 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #44
  %6 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 47) #44
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #45
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #45
  %7 = tail call ptr @Perl_sv_newmortal() #40
  %8 = icmp eq ptr %5, null
  %9 = getelementptr inbounds i8, ptr %5, i64 1
  %10 = select i1 %8, ptr %0, ptr %9
  %11 = icmp eq ptr %6, null
  %12 = getelementptr inbounds i8, ptr %6, i64 1
  %13 = select i1 %11, ptr %1, ptr %12
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #44
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %2
  %17 = icmp eq ptr %10, %0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @Perl_sv_setpvn(ptr noundef %7, ptr noundef nonnull @.str.16, i64 noundef 1) #40
  br label %23

19:                                               ; preds = %16
  %20 = ptrtoint ptr %10 to i64
  %21 = ptrtoint ptr %0 to i64
  %22 = sub i64 %20, %21
  tail call void @Perl_sv_setpvn(ptr noundef %7, ptr noundef %0, i64 noundef %22) #40
  br label %23

23:                                               ; preds = %19, %18
  %24 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !155
  %26 = call i32 @stat64(ptr noundef %25, ptr noundef nonnull %3) #40
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %50, label %28

28:                                               ; preds = %23
  %29 = icmp eq ptr %13, %1
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  tail call void @Perl_sv_setpvn(ptr noundef nonnull %7, ptr noundef nonnull @.str.16, i64 noundef 1) #40
  br label %35

31:                                               ; preds = %28
  %32 = ptrtoint ptr %13 to i64
  %33 = ptrtoint ptr %1 to i64
  %34 = sub i64 %32, %33
  tail call void @Perl_sv_setpvn(ptr noundef nonnull %7, ptr noundef %1, i64 noundef %34) #40
  br label %35

35:                                               ; preds = %31, %30
  %36 = load ptr, ptr %24, align 8, !tbaa !155
  %37 = call i32 @stat64(ptr noundef %36, ptr noundef nonnull %4) #40
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %35
  %40 = load i64, ptr %3, align 8, !tbaa !365
  %41 = load i64, ptr %4, align 8, !tbaa !365
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
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #45
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #45
  ret i32 %51
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind optsize
declare noundef i32 @stat64(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @Perl_find_script(ptr noundef %0, i1 noundef zeroext %1, ptr nocapture noundef readnone %2, i32 noundef %3) local_unnamed_addr #0 !prof !268 {
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #45
  store i32 0, ptr %6, align 4, !tbaa !163
  store i8 0, ptr %5, align 16, !tbaa !155
  br i1 %1, label %7, label %100, !prof !269

7:                                                ; preds = %4
  %8 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %100

10:                                               ; preds = %7
  %11 = tail call ptr @getenv(ptr noundef nonnull @.str.17) #40
  %12 = icmp eq ptr %11, null
  br i1 %12, label %100, label %13

13:                                               ; preds = %10
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #44
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  %16 = getelementptr inbounds i8, ptr %5, i64 4096
  br label %17

17:                                               ; preds = %71, %13
  %18 = phi ptr [ %72, %71 ], [ null, %13 ]
  %19 = phi ptr [ %34, %71 ], [ %11, %13 ]
  %20 = phi i8 [ %52, %71 ], [ 0, %13 ]
  br label %21

21:                                               ; preds = %17, %69
  %22 = phi ptr [ %34, %69 ], [ %19, %17 ]
  %23 = phi i8 [ %52, %69 ], [ %20, %17 ]
  br label %24

24:                                               ; preds = %21, %46
  %25 = phi ptr [ %22, %21 ], [ %34, %46 ]
  %26 = phi i8 [ %23, %21 ], [ %52, %46 ]
  br label %27

27:                                               ; preds = %24, %30
  %28 = phi ptr [ %34, %30 ], [ %25, %24 ]
  %29 = icmp ult ptr %28, %15
  br i1 %29, label %30, label %73

30:                                               ; preds = %27
  %31 = call ptr @Perl_delimcpy(ptr noundef nonnull %5, ptr noundef nonnull %16, ptr noundef %28, ptr noundef nonnull %15, i32 noundef 58, ptr noundef nonnull %6) #39
  %32 = icmp ult ptr %31, %15
  %33 = zext i1 %32 to i64
  %34 = getelementptr inbounds i8, ptr %31, i64 %33
  %35 = load i32, ptr %6, align 4, !tbaa !163
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #44
  %39 = add i64 %38, %37
  %40 = icmp ugt i64 %39, 4095
  br i1 %40, label %27, label %41, !llvm.loop !368

41:                                               ; preds = %30
  %42 = icmp eq i32 %35, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %41
  store i32 %36, ptr %6, align 4, !tbaa !163
  %44 = sext i32 %35 to i64
  %45 = getelementptr inbounds [4096 x i8], ptr %5, i64 0, i64 %44
  store i8 47, ptr %45, align 1, !tbaa !155
  br label %46

46:                                               ; preds = %41, %43
  %47 = phi i32 [ %36, %43 ], [ 0, %41 ]
  %48 = icmp eq i32 %47, 2
  %49 = load i8, ptr %5, align 16
  %50 = icmp eq i8 %49, 46
  %51 = select i1 %48, i1 %50, i1 false
  %52 = select i1 %51, i8 1, i8 %26
  %53 = sext i32 %47 to i64
  %54 = getelementptr inbounds i8, ptr %5, i64 %53
  %55 = sub nsw i64 4096, %53
  %56 = call i64 @Perl_my_strlcpy(ptr noundef nonnull %54, ptr noundef %0, i64 noundef %55) #39
  %57 = call i32 @stat64(ptr noundef nonnull %5, ptr noundef nonnull @PL_statbuf) #40
  %58 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statbuf, i64 0, i32 3), align 8, !tbaa !369
  %59 = and i32 %58, 61440
  %60 = icmp eq i32 %59, 16384
  %61 = icmp slt i32 %57, 0
  %62 = or i1 %61, %60
  br i1 %62, label %24, label %63, !llvm.loop !368

63:                                               ; preds = %46
  %64 = icmp eq i32 %59, 32768
  br i1 %64, label %65, label %69

65:                                               ; preds = %63
  %66 = call zeroext i1 @Perl_cando(i32 noundef 256, i1 noundef zeroext true, ptr noundef nonnull @PL_statbuf) #40
  br i1 %66, label %67, label %69

67:                                               ; preds = %65
  %68 = call zeroext i1 @Perl_cando(i32 noundef 64, i1 noundef zeroext true, ptr noundef nonnull @PL_statbuf) #40
  br i1 %68, label %98, label %69

69:                                               ; preds = %67, %65, %63
  %70 = icmp eq ptr %18, null
  br i1 %70, label %71, label %21, !llvm.loop !368

71:                                               ; preds = %69
  %72 = call ptr @Perl_savepv(ptr noundef nonnull %5) #39
  br label %17, !llvm.loop !368

73:                                               ; preds = %27
  %74 = and i8 %26, 1
  %75 = icmp ne i8 %74, 0
  %76 = icmp ne ptr %18, null
  %77 = or i1 %75, %76
  br i1 %77, label %86, label %78

78:                                               ; preds = %73
  %79 = call i32 @stat64(ptr noundef %0, ptr noundef nonnull @PL_statbuf) #40
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statbuf, i64 0, i32 3), align 8, !tbaa !369
  %83 = and i32 %82, 61440
  %84 = icmp eq i32 %83, 16384
  br i1 %84, label %85, label %86

85:                                               ; preds = %81, %78
  br label %86

86:                                               ; preds = %85, %81, %73
  %87 = phi i8 [ %26, %73 ], [ 1, %85 ], [ %26, %81 ]
  %88 = and i32 %3, 1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %86
  %91 = select i1 %76, ptr @.str.19, ptr @.str.20
  %92 = select i1 %76, ptr %18, ptr %0
  %93 = select i1 %76, ptr @.str.10, ptr @.str.21
  %94 = and i8 %87, 1
  %95 = icmp ne i8 %94, 0
  %96 = select i1 %76, i1 true, i1 %95
  %97 = select i1 %96, ptr @.str.10, ptr @.str.22
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.18, ptr noundef nonnull %91, ptr noundef %92, ptr noundef nonnull %93, ptr noundef nonnull %97) #39
  br label %98

98:                                               ; preds = %67, %90, %86
  %99 = phi ptr [ null, %90 ], [ null, %86 ], [ %5, %67 ]
  call void @Perl_safesysfree(ptr noundef %18) #39
  br label %100

100:                                              ; preds = %98, %10, %7, %4
  %101 = phi ptr [ %0, %7 ], [ %99, %98 ], [ %0, %10 ], [ %0, %4 ]
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103, !prof !269

103:                                              ; preds = %100
  %104 = call ptr @Perl_savepv(ptr noundef nonnull %101) #39
  br label %105

105:                                              ; preds = %100, %103
  %106 = phi ptr [ %104, %103 ], [ null, %100 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #45
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #45
  ret ptr %106
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #26

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @Perl_my_strlcpy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #27 !prof !142 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #44
  %5 = icmp eq i64 %2, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = icmp ult i64 %4, %2
  %8 = add i64 %2, -1
  %9 = select i1 %7, i64 %4, i64 %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %9, i1 false)
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  store i8 0, ptr %10, align 1, !tbaa !155
  br label %11

11:                                               ; preds = %6, %3
  ret i64 %4
}

; Function Attrs: optsize
declare zeroext i1 @Perl_cando(i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @Perl_get_context() local_unnamed_addr #23 !prof !142 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @Perl_set_context(ptr nocapture noundef readnone %0) local_unnamed_addr #23 !prof !142 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @Perl_get_op_names() local_unnamed_addr #23 !prof !142 {
  ret ptr @PL_op_name
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @Perl_get_op_descs() local_unnamed_addr #23 !prof !142 {
  ret ptr @PL_op_desc
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @Perl_get_no_modify() local_unnamed_addr #23 !prof !142 {
  ret ptr @PL_no_modify
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @Perl_get_opargs() local_unnamed_addr #23 !prof !142 {
  ret ptr @PL_opargs
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @Perl_get_ppaddr() local_unnamed_addr #23 !prof !142 {
  ret ptr @PL_ppaddr
}

; Function Attrs: nofree noinline nounwind optsize memory(read, argmem: readwrite) uwtable
define dso_local noundef ptr @Perl_getenv_len(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #28 !prof !142 {
  %3 = tail call ptr @getenv(ptr noundef %0) #40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #44
  store i64 %6, ptr %1, align 8, !tbaa !203
  br label %7

7:                                                ; preds = %5, %2
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local ptr @Perl_get_vtbl(i32 noundef %0) local_unnamed_addr #23 !prof !142 {
  %2 = icmp ugt i32 %0, 30
  %3 = zext nneg i32 %0 to i64
  %4 = getelementptr inbounds %struct.mgvtbl, ptr @PL_magic_vtables, i64 %3
  %5 = select i1 %2, ptr null, ptr %4
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_my_fflush_all() local_unnamed_addr #0 !prof !268 {
  %1 = tail call i32 @Perl_PerlIO_flush(ptr noundef null) #40
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_report_wrongway_fh(ptr noundef readonly %0, i8 noundef signext %1) local_unnamed_addr #0 !prof !142 {
  %3 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 5) #39
  br i1 %3, label %4, label %38

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !152
  %9 = and i32 %8, 49152
  %10 = icmp eq i32 %9, 32768
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = and i32 %8, 255
  %13 = add nsw i32 %12, -9
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %18, label %15

15:                                               ; preds = %6, %4, %11
  %16 = icmp eq i8 %1, 62
  %17 = select i1 %16, ptr @.str.23, ptr @.str.24
  br label %36

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !155
  %21 = getelementptr inbounds %struct.gp, ptr %20, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !370
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, ptr %0, ptr %22
  %25 = load ptr, ptr %24, align 8, !tbaa !298
  %26 = getelementptr inbounds %struct.xpvgv, ptr %25, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !155
  %28 = icmp eq i8 %1, 62
  %29 = select i1 %28, ptr @.str.23, ptr @.str.24
  %30 = icmp eq ptr %27, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.hek, ptr %27, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !371
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 5, ptr noundef nonnull @.str.25, ptr noundef nonnull %27, ptr noundef nonnull %29) #39
  br label %38

36:                                               ; preds = %15, %31, %18
  %37 = phi ptr [ %17, %15 ], [ %29, %31 ], [ %29, %18 ]
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 5, ptr noundef nonnull @.str.26, ptr noundef nonnull %37) #39
  br label %38

38:                                               ; preds = %35, %36, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_report_evil_fh(ptr noundef readonly %0) local_unnamed_addr #0 !prof !142 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !188
  %6 = and i32 %5, 255
  %7 = add nsw i32 %6, -9
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !155
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %9, %1, %3
  %14 = load ptr, ptr @PL_op, align 8, !tbaa !150
  %15 = getelementptr inbounds %struct.op, ptr %14, i64 0, i32 4
  %16 = load i16, ptr %15, align 8
  br label %31

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.gp, ptr %11, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !156
  %20 = load ptr, ptr @PL_op, align 8, !tbaa !150
  %21 = getelementptr inbounds %struct.op, ptr %20, i64 0, i32 4
  %22 = load i16, ptr %21, align 8
  %23 = icmp eq ptr %19, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %19, align 8, !tbaa !158
  %26 = getelementptr inbounds %struct.xpvio, ptr %25, i64 0, i32 16
  %27 = load i8, ptr %26, align 8, !tbaa !373
  %28 = icmp eq i8 %27, 32
  %29 = select i1 %28, i32 6, i32 11
  %30 = select i1 %28, ptr @.str.27, ptr @.str.28
  br label %31

31:                                               ; preds = %24, %17, %13
  %32 = phi i1 [ true, %13 ], [ true, %17 ], [ false, %24 ]
  %33 = phi i16 [ %16, %13 ], [ %22, %17 ], [ %22, %24 ]
  %34 = phi ptr [ null, %13 ], [ null, %17 ], [ %19, %24 ]
  %35 = phi i32 [ 11, %13 ], [ 11, %17 ], [ %29, %24 ]
  %36 = phi ptr [ @.str.28, %13 ], [ @.str.28, %17 ], [ %30, %24 ]
  %37 = and i16 %33, 511
  %38 = tail call zeroext i1 @Perl_ckwarn(i32 noundef %35) #39
  br i1 %38, label %39, label %115

39:                                               ; preds = %31
  br i1 %2, label %65, label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !152
  %43 = and i32 %42, 49152
  %44 = icmp eq i32 %43, 32768
  br i1 %44, label %45, label %65

45:                                               ; preds = %40
  %46 = and i32 %42, 255
  %47 = add nsw i32 %46, -9
  %48 = icmp ult i32 %47, 2
  br i1 %48, label %49, label %65

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !155
  %52 = getelementptr inbounds %struct.gp, ptr %51, i64 0, i32 8
  %53 = load ptr, ptr %52, align 8, !tbaa !370
  %54 = icmp eq ptr %53, null
  %55 = select i1 %54, ptr %0, ptr %53
  %56 = load ptr, ptr %55, align 8, !tbaa !298
  %57 = getelementptr inbounds %struct.xpvgv, ptr %56, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !155
  %59 = getelementptr inbounds %struct.hek, ptr %58, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !371
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %49
  %63 = tail call ptr @Perl_newSVhek(ptr noundef nonnull %58) #40
  %64 = tail call ptr @Perl_sv_2mortal(ptr noundef %63) #40
  br label %65

65:                                               ; preds = %45, %39, %40, %49, %62
  %66 = phi ptr [ %64, %62 ], [ null, %49 ], [ null, %40 ], [ null, %39 ], [ null, %45 ]
  %67 = add nsw i16 %37, -266
  %68 = icmp ult i16 %67, 27
  %69 = select i1 %68, ptr @.str.10, ptr @.str.29
  %70 = and i16 %33, 510
  %71 = icmp eq i16 %70, 26
  br i1 %71, label %78, label %72

72:                                               ; preds = %65
  %73 = icmp eq i16 %37, 236
  br i1 %73, label %78, label %74

74:                                               ; preds = %72
  %75 = zext nneg i16 %37 to i64
  %76 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !150
  br label %78

78:                                               ; preds = %74, %72, %65
  %79 = phi ptr [ @.str.30, %65 ], [ %77, %74 ], [ @.str.31, %72 ]
  %80 = add nsw i16 %37, -251
  %81 = icmp ult i16 %80, 13
  %82 = or i1 %32, %81
  %83 = select i1 %81, ptr @.str.32, ptr @.str.33
  br i1 %82, label %90, label %84

84:                                               ; preds = %78
  %85 = load ptr, ptr %34, align 8, !tbaa !158
  %86 = getelementptr inbounds %struct.xpvio, ptr %85, i64 0, i32 16
  %87 = load i8, ptr %86, align 8, !tbaa !373
  %88 = icmp eq i8 %87, 115
  %89 = select i1 %88, ptr @.str.32, ptr @.str.33
  br label %90

90:                                               ; preds = %78, %84
  %91 = phi ptr [ %83, %78 ], [ %89, %84 ]
  %92 = icmp eq ptr %66, null
  br i1 %92, label %101, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr %66, align 8, !tbaa !200
  %95 = getelementptr inbounds %struct.xpv, ptr %94, i64 0, i32 2
  %96 = load i64, ptr %95, align 8, !tbaa !201
  %97 = freeze i64 %96
  %98 = icmp eq i64 %97, 0
  %99 = select i1 %98, ptr @.str.10, ptr @.str.35
  %100 = select i1 %98, ptr @PL_sv_no, ptr %66
  br label %101

101:                                              ; preds = %93, %90
  %102 = phi ptr [ @.str.10, %90 ], [ %99, %93 ]
  %103 = phi ptr [ @PL_sv_no, %90 ], [ %100, %93 ]
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef %35, ptr noundef nonnull @.str.34, ptr noundef %79, ptr noundef nonnull %69, ptr noundef nonnull %36, ptr noundef nonnull %91, ptr noundef nonnull %102, ptr noundef nonnull %103) #39
  br i1 %32, label %115, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr %34, align 8, !tbaa !158
  %106 = getelementptr inbounds %struct.xpvio, ptr %105, i64 0, i32 6
  %107 = load ptr, ptr %106, align 8, !tbaa !155
  %108 = icmp eq ptr %107, null
  br i1 %108, label %115, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.xpvio, ptr %105, i64 0, i32 17
  %111 = load i8, ptr %110, align 1, !tbaa !374
  %112 = and i8 %111, 64
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef %35, ptr noundef nonnull @.str.36, ptr noundef %79, ptr noundef nonnull %69, ptr noundef nonnull %102, ptr noundef nonnull %103) #39
  br label %115

115:                                              ; preds = %101, %104, %109, %114, %31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_init_tm(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 !prof !142 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #45
  %3 = call i64 @time(ptr noundef nonnull %2) #40
  %4 = call ptr @localtime(ptr noundef nonnull %2) #40
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %0, ptr noundef nonnull align 1 dereferenceable(56) %4, i64 56, i1 false)
  br label %7

7:                                                ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #45
  ret void
}

; Function Attrs: nounwind optsize
declare i64 @time(ptr noundef) local_unnamed_addr #20

; Function Attrs: nounwind optsize
declare ptr @localtime(ptr noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @Perl_mini_mktime(ptr nocapture noundef %0) local_unnamed_addr #29 !prof !142 {
  %2 = getelementptr inbounds %struct.tm, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !375
  %4 = getelementptr inbounds %struct.tm, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !377
  %6 = getelementptr inbounds %struct.tm, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !378
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
  %24 = load i32, ptr %0, align 8, !tbaa !379
  %25 = icmp ult i32 %24, 61
  %26 = select i1 %25, i32 %24, i32 0
  %27 = select i1 %25, i32 0, i32 %24
  %28 = getelementptr inbounds %struct.tm, ptr %0, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !380
  %30 = mul nsw i32 %29, 60
  %31 = add nsw i32 %30, %27
  %32 = getelementptr inbounds %struct.tm, ptr %0, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !381
  %34 = mul nsw i32 %33, 3600
  %35 = add nsw i32 %31, %34
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %1
  %38 = sub i32 0, %35
  %39 = udiv i32 %38, 86400
  %40 = mul nuw nsw i32 %39, 86400
  %41 = add nsw i32 %40, %35
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = xor i32 %39, -1
  %45 = add nsw i32 %23, %44
  %46 = mul i32 %44, -86400
  %47 = add i32 %46, %35
  br label %56

48:                                               ; preds = %37
  %49 = sub i32 %23, %39
  br label %56

50:                                               ; preds = %1
  %51 = icmp ugt i32 %35, 86399
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  %53 = udiv i32 %35, 86400
  %54 = add nsw i32 %53, %23
  %55 = urem i32 %35, 86400
  br label %56

56:                                               ; preds = %50, %52, %43, %48
  %57 = phi i32 [ %47, %43 ], [ %41, %48 ], [ %55, %52 ], [ %35, %50 ]
  %58 = phi i32 [ %45, %43 ], [ %49, %48 ], [ %54, %52 ], [ %23, %50 ]
  %59 = sdiv i32 %57, 3600
  store i32 %59, ptr %32, align 8, !tbaa !381
  %60 = srem i32 %57, 3600
  %61 = trunc i32 %60 to i16
  %62 = sdiv i16 %61, 60
  %63 = sext i16 %62 to i32
  store i32 %63, ptr %28, align 4, !tbaa !380
  %64 = srem i16 %61, 60
  %65 = sext i16 %64 to i32
  %66 = add nsw i32 %26, %65
  store i32 %66, ptr %0, align 8, !tbaa !379
  %67 = add nsw i32 %58, -123
  %68 = sdiv i32 %67, 146097
  %69 = mul nsw i32 %68, 400
  %70 = srem i32 %67, 146097
  %71 = sdiv i32 %70, 36524
  %72 = mul nsw i32 %71, 100
  %73 = add nsw i32 %72, %69
  %74 = srem i32 %70, 36524
  %75 = sdiv i32 %74, 1461
  %76 = shl nsw i32 %75, 2
  %77 = add nsw i32 %73, %76
  %78 = srem i32 %74, 1461
  %79 = trunc i32 %78 to i16
  %80 = sdiv i16 %79, 365
  %81 = sext i16 %80 to i32
  %82 = add nsw i32 %77, %81
  %83 = srem i16 %79, 365
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %56
  %86 = add nsw i32 %70, -146096
  %87 = icmp ult i32 %86, 36524
  %88 = add nsw i32 %78, -1460
  %89 = icmp ult i32 %88, 365
  %90 = select i1 %87, i1 true, i1 %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = add nsw i32 %82, -1900
  store i32 %92, ptr %2, align 4, !tbaa !375
  br label %110

93:                                               ; preds = %85, %56
  %94 = add nsw i16 %83, 123
  %95 = sext i16 %94 to i32
  %96 = mul nsw i16 %94, 5
  %97 = sdiv i16 %96, 153
  %98 = sext i16 %97 to i32
  %99 = mul nsw i16 %97, 153
  %100 = sdiv i16 %99, -5
  %101 = sext i16 %100 to i32
  %102 = add nsw i32 %101, %95
  %103 = icmp sgt i16 %83, 305
  %104 = select i1 %103, i32 -14, i32 -2
  %105 = add nsw i32 %104, %98
  %106 = zext i1 %103 to i32
  %107 = add nsw i32 %82, %106
  %108 = add nsw i32 %107, -1900
  store i32 %108, ptr %2, align 4, !tbaa !375
  %109 = icmp eq i32 %102, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %91, %93
  %111 = phi i32 [ 29, %91 ], [ %102, %93 ]
  %112 = phi i32 [ %82, %91 ], [ %107, %93 ]
  %113 = phi i32 [ 1, %91 ], [ %105, %93 ]
  store i32 %111, ptr %6, align 4, !tbaa !378
  br label %116

114:                                              ; preds = %93
  store i32 31, ptr %6, align 4, !tbaa !378
  %115 = add nsw i32 %105, -1
  br label %116

116:                                              ; preds = %114, %110
  %117 = phi i32 [ %107, %114 ], [ %112, %110 ]
  %118 = phi i32 [ %115, %114 ], [ %113, %110 ]
  store i32 %118, ptr %4, align 8, !tbaa !377
  %119 = add nsw i32 %117, -1
  %120 = mul i32 %119, -365
  %121 = sdiv i32 %119, -4
  %122 = sdiv i32 %119, 100
  %123 = sdiv i32 %119, -400
  %124 = add i32 %58, -429
  %125 = add i32 %124, %121
  %126 = add i32 %125, %120
  %127 = add i32 %126, %122
  %128 = add i32 %127, %123
  %129 = getelementptr inbounds %struct.tm, ptr %0, i64 0, i32 7
  store i32 %128, ptr %129, align 4, !tbaa !382
  %130 = add nsw i32 %58, 6
  %131 = srem i32 %130, 7
  %132 = getelementptr inbounds %struct.tm, ptr %0, i64 0, i32 6
  store i32 %131, ptr %132, align 8, !tbaa !383
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @Perl_my_strftime(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 !prof !142 {
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.37) #39
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_getcwd_sv(ptr noundef %0) local_unnamed_addr #0 !prof !142 {
  %2 = alloca [4096 x i8], align 16
  %3 = load i8, ptr @PL_tainting, align 1, !tbaa !144, !range !148, !noundef !149
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @Perl_sv_magic(ptr noundef %0, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #40
  br label %6

6:                                                ; preds = %5, %1
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #45
  %7 = call ptr @getcwd(ptr noundef nonnull %2, i64 noundef 4095) #40
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  call void @Perl_sv_setpv(ptr noundef %0, ptr noundef nonnull %2) #40
  br label %11

10:                                               ; preds = %6
  call void @Perl_sv_setsv_flags(ptr noundef %0, ptr noundef nonnull @PL_sv_undef, i32 noundef 1538) #40
  br label %11

11:                                               ; preds = %10, %9
  %12 = phi i32 [ 1, %9 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #45
  ret i32 %12
}

; Function Attrs: optsize
declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind optsize
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: optsize
declare void @Perl_sv_setpv(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @Perl_prescan_version(ptr noundef readonly %0, i1 noundef zeroext %1, ptr noundef writeonly %2, ptr noundef %3, ptr noundef writeonly %4, ptr noundef writeonly %5, ptr noundef writeonly %6) local_unnamed_addr #30 !prof !384 {
  %8 = icmp eq ptr %3, null
  br i1 %8, label %9, label %11, !prof !385

9:                                                ; preds = %7
  %10 = load i8, ptr %0, align 1, !tbaa !155
  br label %21

11:                                               ; preds = %7
  %12 = load i8, ptr %3, align 1, !tbaa !144, !range !148, !noundef !149
  %13 = icmp eq i8 %12, 0
  %14 = load i8, ptr %0, align 1, !tbaa !155
  br i1 %13, label %21, label %15, !prof !386

15:                                               ; preds = %11
  %16 = zext i8 %14 to i64
  %17 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !163
  %19 = and i32 %18, 2
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %36, !prof !332

21:                                               ; preds = %9, %15, %11
  %22 = phi i8 [ %14, %15 ], [ %14, %11 ], [ %10, %9 ]
  %23 = phi i8 [ 1, %15 ], [ 0, %11 ], [ 0, %9 ]
  %24 = icmp eq i8 %22, 118
  br i1 %24, label %25, label %146, !prof !387

25:                                               ; preds = %21
  %26 = getelementptr inbounds i8, ptr %0, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !155
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !163
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36, !prof !388

33:                                               ; preds = %25
  %34 = icmp eq ptr %2, null
  br i1 %34, label %320, label %35

35:                                               ; preds = %33
  store ptr @.str.38, ptr %2, align 8, !tbaa !150
  br label %320

36:                                               ; preds = %25, %15
  %37 = phi i8 [ %14, %15 ], [ %27, %25 ]
  %38 = phi ptr [ %0, %15 ], [ %26, %25 ]
  %39 = icmp eq i8 %37, 48
  %40 = select i1 %1, i1 %39, i1 false
  br i1 %40, label %41, label %52, !prof !389

41:                                               ; preds = %36
  %42 = getelementptr inbounds i8, ptr %38, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !155
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !163
  %47 = and i32 %46, 2
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = icmp eq ptr %2, null
  br i1 %50, label %320, label %51

51:                                               ; preds = %49
  store ptr @.str.39, ptr %2, align 8, !tbaa !150
  br label %320

52:                                               ; preds = %252, %41, %36
  %53 = phi ptr [ %38, %41 ], [ %38, %36 ], [ %0, %252 ]
  %54 = phi i8 [ 0, %41 ], [ 0, %36 ], [ %237, %252 ]
  %55 = phi i32 [ 0, %41 ], [ 0, %36 ], [ 1, %252 ]
  %56 = phi i32 [ 3, %41 ], [ 3, %36 ], [ %238, %252 ]
  br label %57

57:                                               ; preds = %57, %52
  %58 = phi ptr [ %53, %52 ], [ %65, %57 ]
  %59 = load i8, ptr %58, align 1, !tbaa !155
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !163
  %63 = and i32 %62, 2
  %64 = icmp eq i32 %63, 0
  %65 = getelementptr inbounds i8, ptr %58, i64 1
  br i1 %64, label %66, label %57, !prof !390, !llvm.loop !391

66:                                               ; preds = %57
  %67 = icmp eq i8 %59, 46
  br i1 %67, label %68, label %76, !prof !388

68:                                               ; preds = %66
  %69 = add nuw nsw i32 %55, 1
  %70 = load i8, ptr %65, align 1, !tbaa !155
  %71 = zext i8 %70 to i64
  %72 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !163
  %74 = and i32 %73, 2
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %137, label %80, !prof !333

76:                                               ; preds = %66
  br i1 %1, label %77, label %284

77:                                               ; preds = %76
  %78 = icmp eq ptr %2, null
  br i1 %78, label %320, label %79

79:                                               ; preds = %77
  store ptr @.str.38, ptr %2, align 8, !tbaa !150
  br label %320

80:                                               ; preds = %68, %122
  %81 = phi ptr [ %125, %122 ], [ %65, %68 ]
  %82 = phi i32 [ %85, %122 ], [ 0, %68 ]
  %83 = phi i8 [ %124, %122 ], [ %54, %68 ]
  %84 = phi i32 [ %123, %122 ], [ %69, %68 ]
  %85 = add nuw nsw i32 %82, 1
  br label %86

86:                                               ; preds = %95, %80
  %87 = phi ptr [ %81, %80 ], [ %96, %95 ]
  %88 = phi i32 [ 0, %80 ], [ %97, %95 ]
  %89 = load i8, ptr %87, align 1, !tbaa !155
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !163
  %93 = and i32 %92, 2
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %103, label %95, !prof !392

95:                                               ; preds = %86
  %96 = getelementptr inbounds i8, ptr %87, i64 1
  %97 = add nuw nsw i32 %88, 1
  %98 = icmp ugt i32 %88, 2
  %99 = select i1 %1, i1 %98, i1 false
  br i1 %99, label %100, label %86, !prof !393, !llvm.loop !394

100:                                              ; preds = %95
  %101 = icmp eq ptr %2, null
  br i1 %101, label %320, label %102

102:                                              ; preds = %100
  store ptr @.str.40, ptr %2, align 8, !tbaa !150
  br label %320

103:                                              ; preds = %86
  switch i8 %89, label %132 [
    i8 95, label %104
    i8 46, label %114
  ], !prof !395

104:                                              ; preds = %103
  br i1 %1, label %105, label %108

105:                                              ; preds = %104
  %106 = icmp eq ptr %2, null
  br i1 %106, label %320, label %107

107:                                              ; preds = %105
  store ptr @.str.41, ptr %2, align 8, !tbaa !150
  br label %320

108:                                              ; preds = %104
  %109 = and i8 %83, 1
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %122, label %111

111:                                              ; preds = %108
  %112 = icmp eq ptr %2, null
  br i1 %112, label %320, label %113

113:                                              ; preds = %111
  store ptr @.str.42, ptr %2, align 8, !tbaa !150
  br label %320

114:                                              ; preds = %103
  %115 = and i8 %83, 1
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %120, label %117, !prof !388

117:                                              ; preds = %114
  %118 = icmp eq ptr %2, null
  br i1 %118, label %320, label %119

119:                                              ; preds = %117
  store ptr @.str.43, ptr %2, align 8, !tbaa !150
  br label %320

120:                                              ; preds = %114
  %121 = add nsw i32 %84, 1
  br label %122

122:                                              ; preds = %108, %120
  %123 = phi i32 [ %121, %120 ], [ %84, %108 ]
  %124 = phi i8 [ %83, %120 ], [ 1, %108 ]
  %125 = getelementptr inbounds i8, ptr %87, i64 1
  %126 = load i8, ptr %125, align 1, !tbaa !155
  %127 = zext i8 %126 to i64
  %128 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %127
  %129 = load i32, ptr %128, align 4, !tbaa !163
  %130 = and i32 %129, 2
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %80, !prof !396, !llvm.loop !397

132:                                              ; preds = %103, %122
  %133 = phi i32 [ %123, %122 ], [ %84, %103 ]
  %134 = phi i8 [ %124, %122 ], [ %83, %103 ]
  %135 = phi ptr [ %125, %122 ], [ %87, %103 ]
  %136 = icmp eq i32 %82, 0
  br label %137

137:                                              ; preds = %132, %68
  %138 = phi i32 [ %69, %68 ], [ %133, %132 ]
  %139 = phi i8 [ %54, %68 ], [ %134, %132 ]
  %140 = phi ptr [ %65, %68 ], [ %135, %132 ]
  %141 = phi i1 [ true, %68 ], [ %136, %132 ]
  %142 = select i1 %1, i1 %141, i1 false
  br i1 %142, label %143, label %284, !prof !331

143:                                              ; preds = %137
  %144 = icmp eq ptr %2, null
  br i1 %144, label %320, label %145

145:                                              ; preds = %143
  store ptr @.str.38, ptr %2, align 8, !tbaa !150
  br label %320

146:                                              ; preds = %21
  br i1 %1, label %147, label %163, !prof !398

147:                                              ; preds = %146
  switch i8 %22, label %148 [
    i8 46, label %149
    i8 48, label %152
    i8 45, label %165
  ], !prof !399

148:                                              ; preds = %152, %163, %147
  br label %168

149:                                              ; preds = %147
  %150 = icmp eq ptr %2, null
  br i1 %150, label %320, label %151

151:                                              ; preds = %149
  store ptr @.str.44, ptr %2, align 8, !tbaa !150
  br label %320

152:                                              ; preds = %147
  %153 = getelementptr inbounds i8, ptr %0, i64 1
  %154 = load i8, ptr %153, align 1, !tbaa !155
  %155 = zext i8 %154 to i64
  %156 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !163
  %158 = and i32 %157, 2
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %148, label %160

160:                                              ; preds = %152
  %161 = icmp eq ptr %2, null
  br i1 %161, label %320, label %162

162:                                              ; preds = %160
  store ptr @.str.39, ptr %2, align 8, !tbaa !150
  br label %320

163:                                              ; preds = %146
  %164 = icmp eq i8 %22, 45
  br i1 %164, label %165, label %148, !prof !400

165:                                              ; preds = %147, %163
  %166 = icmp eq ptr %2, null
  br i1 %166, label %320, label %167

167:                                              ; preds = %165
  store ptr @.str.45, ptr %2, align 8, !tbaa !150
  br label %320

168:                                              ; preds = %148, %168
  %169 = phi ptr [ %177, %168 ], [ %0, %148 ]
  %170 = load i8, ptr %169, align 1, !tbaa !155
  %171 = zext i8 %170 to i64
  %172 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %171
  %173 = load i32, ptr %172, align 4, !tbaa !163
  %174 = freeze i32 %173
  %175 = and i32 %174, 2
  %176 = icmp eq i32 %175, 0
  %177 = getelementptr inbounds i8, ptr %169, i64 1
  br i1 %176, label %178, label %168, !prof !401, !llvm.loop !402

178:                                              ; preds = %168
  switch i8 %170, label %187 [
    i8 46, label %179
    i8 0, label %191
    i8 59, label %191
  ], !prof !403

179:                                              ; preds = %178
  %180 = load i8, ptr %177, align 1, !tbaa !155
  %181 = zext i8 %180 to i64
  %182 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !163
  %184 = freeze i32 %183
  %185 = and i32 %184, 2
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %222, label %231, !prof !404

187:                                              ; preds = %178
  %188 = and i32 %174, 17408
  %189 = icmp eq i32 %188, 17408
  br i1 %189, label %191, label %190

190:                                              ; preds = %187
  switch i8 %170, label %196 [
    i8 125, label %191
    i8 123, label %191
  ]

191:                                              ; preds = %190, %190, %187, %178, %178
  %192 = icmp eq ptr %169, %0
  br i1 %192, label %193, label %284, !prof !405

193:                                              ; preds = %191
  %194 = icmp eq ptr %2, null
  br i1 %194, label %320, label %195, !prof !406

195:                                              ; preds = %193
  store ptr @.str.46, ptr %2, align 8, !tbaa !150
  br label %320

196:                                              ; preds = %190
  %197 = icmp eq ptr %169, %0
  br i1 %197, label %198, label %201

198:                                              ; preds = %196
  %199 = icmp eq ptr %2, null
  br i1 %199, label %320, label %200

200:                                              ; preds = %198
  store ptr @.str.47, ptr %2, align 8, !tbaa !150
  br label %320

201:                                              ; preds = %196
  %202 = icmp eq i8 %170, 95
  br i1 %202, label %203, label %219

203:                                              ; preds = %201
  br i1 %1, label %204, label %207

204:                                              ; preds = %203
  %205 = icmp eq ptr %2, null
  br i1 %205, label %320, label %206

206:                                              ; preds = %204
  store ptr @.str.41, ptr %2, align 8, !tbaa !150
  br label %320

207:                                              ; preds = %203
  %208 = load i8, ptr %177, align 1, !tbaa !155
  %209 = zext i8 %208 to i64
  %210 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %209
  %211 = load i32, ptr %210, align 4, !tbaa !163
  %212 = and i32 %211, 2
  %213 = icmp eq i32 %212, 0
  %214 = icmp eq ptr %2, null
  br i1 %213, label %217, label %215

215:                                              ; preds = %207
  br i1 %214, label %320, label %216

216:                                              ; preds = %215
  store ptr @.str.48, ptr %2, align 8, !tbaa !150
  br label %320

217:                                              ; preds = %207
  br i1 %214, label %320, label %218

218:                                              ; preds = %217
  store ptr @.str.49, ptr %2, align 8, !tbaa !150
  br label %320

219:                                              ; preds = %201
  %220 = icmp eq ptr %2, null
  br i1 %220, label %320, label %221

221:                                              ; preds = %219
  store ptr @.str.47, ptr %2, align 8, !tbaa !150
  br label %320

222:                                              ; preds = %179
  br i1 %1, label %228, label %223

223:                                              ; preds = %222
  switch i8 %180, label %224 [
    i8 0, label %231
    i8 59, label %231
  ]

224:                                              ; preds = %223
  %225 = and i32 %184, 17408
  %226 = icmp eq i32 %225, 17408
  br i1 %226, label %231, label %227

227:                                              ; preds = %224
  switch i8 %180, label %228 [
    i8 125, label %231
    i8 123, label %231
  ]

228:                                              ; preds = %227, %222
  %229 = icmp eq ptr %2, null
  br i1 %229, label %320, label %230

230:                                              ; preds = %228
  store ptr @.str.50, ptr %2, align 8, !tbaa !150
  br label %320

231:                                              ; preds = %227, %227, %224, %223, %223, %179
  %232 = and i32 %184, 2
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %284, label %234, !prof !407

234:                                              ; preds = %231, %277
  %235 = phi i32 [ %240, %277 ], [ 0, %231 ]
  %236 = phi ptr [ %281, %277 ], [ %177, %231 ]
  %237 = phi i8 [ %280, %277 ], [ 0, %231 ]
  %238 = phi i32 [ %279, %277 ], [ 3, %231 ]
  %239 = getelementptr inbounds i8, ptr %236, i64 1
  %240 = add nuw nsw i32 %235, 1
  %241 = load i8, ptr %239, align 1, !tbaa !155
  switch i8 %241, label %242 [
    i8 46, label %246
    i8 95, label %256
  ], !prof !408

242:                                              ; preds = %234
  %243 = zext i8 %241 to i64
  %244 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %243
  %245 = load i32, ptr %244, align 4, !tbaa !163
  br label %277

246:                                              ; preds = %234
  %247 = and i8 %237, 1
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %246
  %250 = icmp eq ptr %2, null
  br i1 %250, label %320, label %251

251:                                              ; preds = %249
  store ptr @.str.43, ptr %2, align 8, !tbaa !150
  br label %320

252:                                              ; preds = %246
  br i1 %1, label %253, label %52

253:                                              ; preds = %252
  %254 = icmp eq ptr %2, null
  br i1 %254, label %320, label %255

255:                                              ; preds = %253
  store ptr @.str.51, ptr %2, align 8, !tbaa !150
  br label %320

256:                                              ; preds = %234
  br i1 %1, label %257, label %260

257:                                              ; preds = %256
  %258 = icmp eq ptr %2, null
  br i1 %258, label %320, label %259

259:                                              ; preds = %257
  store ptr @.str.41, ptr %2, align 8, !tbaa !150
  br label %320

260:                                              ; preds = %256
  %261 = and i8 %237, 1
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %266, label %263

263:                                              ; preds = %260
  %264 = icmp eq ptr %2, null
  br i1 %264, label %320, label %265

265:                                              ; preds = %263
  store ptr @.str.42, ptr %2, align 8, !tbaa !150
  br label %320

266:                                              ; preds = %260
  %267 = getelementptr inbounds i8, ptr %236, i64 2
  %268 = load i8, ptr %267, align 1, !tbaa !155
  %269 = zext i8 %268 to i64
  %270 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %269
  %271 = load i32, ptr %270, align 4, !tbaa !163
  %272 = and i32 %271, 2
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %266
  %275 = icmp eq ptr %2, null
  br i1 %275, label %320, label %276

276:                                              ; preds = %274
  store ptr @.str.49, ptr %2, align 8, !tbaa !150
  br label %320

277:                                              ; preds = %242, %266
  %278 = phi i32 [ %271, %266 ], [ %245, %242 ]
  %279 = phi i32 [ %240, %266 ], [ %238, %242 ]
  %280 = phi i8 [ 1, %266 ], [ %237, %242 ]
  %281 = phi ptr [ %267, %266 ], [ %239, %242 ]
  %282 = and i32 %278, 2
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %234, !prof !409, !llvm.loop !410

284:                                              ; preds = %277, %231, %191, %137, %76
  %285 = phi i8 [ 1, %76 ], [ 1, %137 ], [ %23, %191 ], [ %23, %231 ], [ %23, %277 ]
  %286 = phi i32 [ %56, %76 ], [ %56, %137 ], [ 3, %191 ], [ 3, %231 ], [ %279, %277 ]
  %287 = phi i32 [ %55, %76 ], [ %138, %137 ], [ 0, %191 ], [ 1, %231 ], [ 1, %277 ]
  %288 = phi i8 [ %54, %76 ], [ %139, %137 ], [ 0, %191 ], [ 0, %231 ], [ %280, %277 ]
  %289 = phi ptr [ %58, %76 ], [ %140, %137 ], [ %169, %191 ], [ %177, %231 ], [ %281, %277 ]
  br label %290

290:                                              ; preds = %290, %284
  %291 = phi ptr [ %289, %284 ], [ %299, %290 ]
  %292 = load i8, ptr %291, align 1, !tbaa !155
  %293 = zext i8 %292 to i64
  %294 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %293
  %295 = load i32, ptr %294, align 4, !tbaa !163
  %296 = freeze i32 %295
  %297 = and i32 %296, 17408
  %298 = icmp eq i32 %297, 17408
  %299 = getelementptr inbounds i8, ptr %291, i64 1
  br i1 %298, label %290, label %300, !prof !411, !llvm.loop !412

300:                                              ; preds = %290
  %301 = and i32 %296, 2
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %307

303:                                              ; preds = %300
  switch i8 %292, label %304 [
    i8 59, label %307
    i8 0, label %307
    i8 123, label %307
    i8 125, label %307
  ]

304:                                              ; preds = %303
  %305 = icmp eq ptr %2, null
  br i1 %305, label %320, label %306

306:                                              ; preds = %304
  store ptr @.str.47, ptr %2, align 8, !tbaa !150
  br label %320

307:                                              ; preds = %303, %303, %303, %303, %300
  br i1 %8, label %310, label %308, !prof !411

308:                                              ; preds = %307
  %309 = and i8 %285, 1
  store i8 %309, ptr %3, align 1, !tbaa !144
  br label %310

310:                                              ; preds = %308, %307
  %311 = icmp eq ptr %5, null
  br i1 %311, label %313, label %312, !prof !411

312:                                              ; preds = %310
  store i32 %286, ptr %5, align 4, !tbaa !163
  br label %313

313:                                              ; preds = %312, %310
  %314 = icmp eq ptr %4, null
  br i1 %314, label %316, label %315, !prof !411

315:                                              ; preds = %313
  store i32 %287, ptr %4, align 4, !tbaa !163
  br label %316

316:                                              ; preds = %315, %313
  %317 = icmp eq ptr %6, null
  br i1 %317, label %320, label %318, !prof !411

318:                                              ; preds = %316
  %319 = and i8 %288, 1
  store i8 %319, ptr %6, align 1, !tbaa !144
  br label %320

320:                                              ; preds = %274, %276, %263, %265, %257, %259, %253, %255, %249, %251, %228, %230, %219, %221, %217, %218, %215, %216, %204, %206, %198, %200, %193, %195, %165, %167, %160, %162, %149, %151, %143, %145, %117, %119, %111, %113, %105, %107, %100, %102, %316, %318, %304, %306, %77, %79, %49, %51, %33, %35
  %321 = phi ptr [ %0, %35 ], [ %0, %33 ], [ %0, %51 ], [ %0, %49 ], [ %0, %79 ], [ %0, %77 ], [ %0, %306 ], [ %0, %304 ], [ %291, %318 ], [ %291, %316 ], [ %0, %102 ], [ %0, %100 ], [ %0, %107 ], [ %0, %105 ], [ %0, %113 ], [ %0, %111 ], [ %0, %119 ], [ %0, %117 ], [ %0, %145 ], [ %0, %143 ], [ %0, %151 ], [ %0, %149 ], [ %0, %162 ], [ %0, %160 ], [ %0, %167 ], [ %0, %165 ], [ %0, %195 ], [ %0, %193 ], [ %0, %200 ], [ %0, %198 ], [ %0, %206 ], [ %0, %204 ], [ %0, %216 ], [ %0, %215 ], [ %0, %218 ], [ %0, %217 ], [ %0, %221 ], [ %0, %219 ], [ %0, %230 ], [ %0, %228 ], [ %0, %251 ], [ %0, %249 ], [ %0, %255 ], [ %0, %253 ], [ %0, %259 ], [ %0, %257 ], [ %0, %265 ], [ %0, %263 ], [ %0, %276 ], [ %0, %274 ]
  ret ptr %321
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_scan_version(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 !prof !413 {
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = zext i1 %2 to i8
  store i8 %9, ptr %4, align 1, !tbaa !144
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #45
  store ptr null, ptr %5, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #45
  store i32 0, ptr %6, align 4, !tbaa !163
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #45
  store i32 3, ptr %7, align 4, !tbaa !163
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #45
  store i8 0, ptr %8, align 1, !tbaa !144
  br label %10

10:                                               ; preds = %10, %3
  %11 = phi ptr [ %0, %3 ], [ %18, %10 ]
  %12 = load i8, ptr %11, align 1, !tbaa !155
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !163
  %16 = and i32 %15, 17408
  %17 = icmp eq i32 %16, 17408
  %18 = getelementptr inbounds i8, ptr %11, i64 1
  br i1 %17, label %10, label %19, !prof !411, !llvm.loop !414

19:                                               ; preds = %10
  %20 = call ptr @Perl_prescan_version(ptr noundef nonnull %11, i1 noundef zeroext false, ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #39
  %21 = load ptr, ptr %5, align 8, !tbaa !150
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23, !prof !415

23:                                               ; preds = %19
  %24 = icmp eq i8 %12, 117
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(5) @.str.52) #44
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25, %23
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.8, ptr noundef nonnull %21) #39
  %29 = load i8, ptr %11, align 1, !tbaa !155
  br label %30

30:                                               ; preds = %25, %28, %19
  %31 = phi i8 [ 117, %25 ], [ %29, %28 ], [ %12, %19 ]
  %32 = icmp eq i8 %31, 118
  %33 = zext i1 %32 to i64
  %34 = getelementptr inbounds i8, ptr %11, i64 %33
  %35 = call ptr @Perl_newSV_type(i32 noundef 11) #40
  %36 = call ptr @Perl_newSVrv(ptr noundef %1, ptr noundef nonnull @.str.53) #40
  call void @Perl_sv_upgrade(ptr noundef %36, i32 noundef 12) #40
  %37 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !188
  %39 = or i32 %38, 536870912
  store i32 %39, ptr %37, align 4, !tbaa !188
  %40 = load i8, ptr %4, align 1, !tbaa !144, !range !148, !noundef !149
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %42, !prof !416

42:                                               ; preds = %30
  %43 = call ptr @Perl_newSViv(i64 noundef 1) #40
  %44 = call ptr @Perl_hv_common(ptr noundef nonnull %36, ptr noundef null, ptr noundef nonnull @.str.54, i64 noundef 2, i32 noundef 0, i32 noundef 36, ptr noundef %43, i32 noundef 0) #40
  br label %45

45:                                               ; preds = %42, %30
  %46 = load i8, ptr %8, align 1, !tbaa !144, !range !148, !noundef !149
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48, !prof !415

48:                                               ; preds = %45
  %49 = call ptr @Perl_newSViv(i64 noundef 1) #40
  %50 = call ptr @Perl_hv_common(ptr noundef nonnull %36, ptr noundef null, ptr noundef nonnull @.str.55, i64 noundef 5, i32 noundef 0, i32 noundef 36, ptr noundef %49, i32 noundef 0) #40
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i8, ptr %4, align 1, !tbaa !144, !range !148, !noundef !149
  %53 = icmp eq i8 %52, 0
  %54 = load i32, ptr %7, align 4
  %55 = icmp slt i32 %54, 3
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %57, label %61, !prof !417

57:                                               ; preds = %51
  %58 = sext i32 %54 to i64
  %59 = call ptr @Perl_newSViv(i64 noundef %58) #40
  %60 = call ptr @Perl_hv_common(ptr noundef nonnull %36, ptr noundef null, ptr noundef nonnull @.str.56, i64 noundef 5, i32 noundef 0, i32 noundef 36, ptr noundef %59, i32 noundef 0) #40
  br label %61

61:                                               ; preds = %57, %51
  br label %62

62:                                               ; preds = %61, %62
  %63 = phi ptr [ %70, %62 ], [ %34, %61 ]
  %64 = load i8, ptr %63, align 1, !tbaa !155
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !163
  %68 = and i32 %67, 2
  %69 = icmp eq i32 %68, 0
  %70 = getelementptr inbounds i8, ptr %63, i64 1
  br i1 %69, label %71, label %62, !prof !418, !llvm.loop !419

71:                                               ; preds = %62
  %72 = and i32 %67, 16388
  %73 = icmp eq i32 %72, 16388
  %74 = load i8, ptr %4, align 1, !tbaa !144, !range !148
  br i1 %73, label %221, label %78, !prof !411

75:                                               ; preds = %189, %207, %211
  %76 = phi i8 [ %187, %211 ], [ %187, %207 ], [ 1, %189 ]
  %77 = phi ptr [ %199, %211 ], [ %199, %207 ], [ %190, %189 ]
  br label %78

78:                                               ; preds = %71, %75
  %79 = phi i8 [ %76, %75 ], [ %74, %71 ]
  %80 = phi i8 [ %153, %75 ], [ 0, %71 ]
  %81 = phi ptr [ %77, %75 ], [ %63, %71 ]
  %82 = phi ptr [ %186, %75 ], [ %34, %71 ]
  %83 = icmp eq i8 %79, 0
  br i1 %83, label %84, label %127, !prof !420

84:                                               ; preds = %78
  %85 = icmp ugt ptr %82, %11
  %86 = load i32, ptr %6, align 4
  %87 = icmp eq i32 %86, 1
  %88 = select i1 %85, i1 %87, i1 false
  br i1 %88, label %89, label %127, !prof !421

89:                                               ; preds = %84
  %90 = icmp ult ptr %82, %81
  br i1 %90, label %91, label %152, !prof !422

91:                                               ; preds = %89, %124
  %92 = phi ptr [ %125, %124 ], [ %82, %89 ]
  %93 = phi i32 [ %101, %124 ], [ 100, %89 ]
  %94 = phi i32 [ %117, %124 ], [ 0, %89 ]
  %95 = phi i8 [ %116, %124 ], [ %80, %89 ]
  %96 = load i8, ptr %92, align 1, !tbaa !155
  %97 = sext i8 %96 to i32
  %98 = add nsw i32 %97, -48
  %99 = mul nsw i32 %98, %93
  %100 = add nsw i32 %99, %94
  %101 = sdiv i32 %93, 10
  %102 = icmp slt i32 %94, 0
  br i1 %102, label %103, label %105, !prof !423

103:                                              ; preds = %91
  %104 = sub nsw i32 0, %94
  br label %105

105:                                              ; preds = %91, %103
  %106 = phi i32 [ %104, %103 ], [ %94, %91 ]
  %107 = icmp slt i32 %100, 0
  br i1 %107, label %108, label %110, !prof !423

108:                                              ; preds = %105
  %109 = sub nsw i32 0, %100
  br label %110

110:                                              ; preds = %105, %108
  %111 = phi i32 [ %109, %108 ], [ %100, %105 ]
  %112 = icmp ugt i32 %106, %111
  br i1 %112, label %113, label %115, !prof !423

113:                                              ; preds = %110
  %114 = getelementptr inbounds i8, ptr %81, i64 -1
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 15, ptr noundef nonnull @.str.57, i32 noundef 2147483647) #39
  br label %115

115:                                              ; preds = %110, %113
  %116 = phi i8 [ 1, %113 ], [ %95, %110 ]
  %117 = phi i32 [ 2147483647, %113 ], [ %100, %110 ]
  %118 = phi ptr [ %114, %113 ], [ %92, %110 ]
  %119 = getelementptr inbounds i8, ptr %118, i64 1
  %120 = load i8, ptr %119, align 1, !tbaa !155
  %121 = icmp eq i8 %120, 95
  br i1 %121, label %122, label %124, !prof !423

122:                                              ; preds = %115
  %123 = getelementptr inbounds i8, ptr %118, i64 2
  br label %124

124:                                              ; preds = %122, %115
  %125 = phi ptr [ %123, %122 ], [ %119, %115 ]
  %126 = icmp ult ptr %125, %81
  br i1 %126, label %91, label %152, !prof !424, !llvm.loop !425

127:                                              ; preds = %84, %78
  %128 = getelementptr inbounds i8, ptr %81, i64 -1
  %129 = icmp ult ptr %128, %82
  br i1 %129, label %152, label %130, !prof !426

130:                                              ; preds = %127, %146
  %131 = phi ptr [ %150, %146 ], [ %128, %127 ]
  %132 = phi i32 [ %140, %146 ], [ 1, %127 ]
  %133 = phi i32 [ %148, %146 ], [ 0, %127 ]
  %134 = phi i8 [ %147, %146 ], [ %80, %127 ]
  %135 = load i8, ptr %131, align 1, !tbaa !155
  %136 = sext i8 %135 to i32
  %137 = add nsw i32 %136, -48
  %138 = mul nsw i32 %137, %132
  %139 = add nsw i32 %138, %133
  %140 = mul nsw i32 %132, 10
  %141 = call i32 @llvm.abs.i32(i32 %133, i1 true)
  %142 = call i32 @llvm.abs.i32(i32 %139, i1 true)
  %143 = icmp ugt i32 %141, %142
  br i1 %143, label %144, label %146, !prof !427

144:                                              ; preds = %130
  %145 = getelementptr inbounds i8, ptr %82, i64 -1
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 15, ptr noundef nonnull @.str.58) #39
  br label %146

146:                                              ; preds = %130, %144
  %147 = phi i8 [ 1, %144 ], [ %134, %130 ]
  %148 = phi i32 [ 2147483647, %144 ], [ %139, %130 ]
  %149 = phi ptr [ %145, %144 ], [ %131, %130 ]
  %150 = getelementptr inbounds i8, ptr %149, i64 -1
  %151 = icmp ult ptr %150, %82
  br i1 %151, label %152, label %130, !prof !428, !llvm.loop !429

152:                                              ; preds = %146, %124, %127, %89
  %153 = phi i8 [ %80, %89 ], [ %80, %127 ], [ %116, %124 ], [ %147, %146 ]
  %154 = phi i32 [ 0, %89 ], [ 0, %127 ], [ %117, %124 ], [ %148, %146 ]
  %155 = sext i32 %154 to i64
  %156 = call ptr @Perl_newSViv(i64 noundef %155) #40
  call void @Perl_av_push(ptr noundef %35, ptr noundef %156) #40
  %157 = and i8 %153, 1
  %158 = icmp ne i8 %157, 0
  br i1 %158, label %218, label %159, !prof !430

159:                                              ; preds = %152
  %160 = load i8, ptr %81, align 1, !tbaa !155
  switch i8 %160, label %179 [
    i8 46, label %161
    i8 95, label %163
    i8 44, label %171
  ], !prof !431

161:                                              ; preds = %159
  %162 = getelementptr inbounds i8, ptr %81, i64 1
  br label %185

163:                                              ; preds = %159
  %164 = getelementptr inbounds i8, ptr %81, i64 1
  %165 = load i8, ptr %164, align 1, !tbaa !155
  %166 = zext i8 %165 to i64
  %167 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !163
  %169 = and i32 %168, 2
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %179, label %185

171:                                              ; preds = %159
  %172 = getelementptr inbounds i8, ptr %81, i64 1
  %173 = load i8, ptr %172, align 1, !tbaa !155
  %174 = zext i8 %173 to i64
  %175 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !163
  %177 = and i32 %176, 2
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %159, %163, %171
  %180 = zext i8 %160 to i64
  %181 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !163
  %183 = and i32 %182, 2
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %218, label %185, !prof !432

185:                                              ; preds = %179, %171, %163, %161
  %186 = phi ptr [ %162, %161 ], [ %164, %163 ], [ %172, %171 ], [ %81, %179 ]
  %187 = load i8, ptr %4, align 1, !tbaa !144, !range !148, !noundef !149
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %198, label %189, !prof !433

189:                                              ; preds = %185, %189
  %190 = phi ptr [ %197, %189 ], [ %186, %185 ]
  %191 = load i8, ptr %190, align 1, !tbaa !155
  %192 = zext i8 %191 to i64
  %193 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %192
  %194 = load i32, ptr %193, align 4, !tbaa !163
  %195 = and i32 %194, 2
  %196 = icmp eq i32 %195, 0
  %197 = getelementptr inbounds i8, ptr %190, i64 1
  br i1 %196, label %75, label %189, !prof !392, !llvm.loop !434

198:                                              ; preds = %185, %213
  %199 = phi ptr [ %217, %213 ], [ %186, %185 ]
  %200 = phi i32 [ %216, %213 ], [ 0, %185 ]
  %201 = load i8, ptr %199, align 1, !tbaa !155
  %202 = zext i8 %201 to i64
  %203 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %202
  %204 = load i32, ptr %203, align 4, !tbaa !163
  %205 = and i32 %204, 2
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %211, !prof !435

207:                                              ; preds = %198
  %208 = icmp eq i8 %201, 95
  %209 = icmp ult i32 %200, 3
  %210 = select i1 %208, i1 %209, i1 false
  br i1 %210, label %213, label %75, !prof !436

211:                                              ; preds = %198
  %212 = icmp ult i32 %200, 3
  br i1 %212, label %213, label %75, !prof !437

213:                                              ; preds = %207, %211
  %214 = icmp ne i8 %201, 95
  %215 = zext i1 %214 to i32
  %216 = add nuw nsw i32 %200, %215
  %217 = getelementptr inbounds i8, ptr %199, i64 1
  br label %198, !llvm.loop !438

218:                                              ; preds = %179, %152
  %219 = phi ptr [ %81, %179 ], [ %20, %152 ]
  %220 = load i8, ptr %4, align 1, !tbaa !144, !range !148
  br label %221

221:                                              ; preds = %218, %71
  %222 = phi i8 [ %74, %71 ], [ %220, %218 ]
  %223 = phi i1 [ false, %71 ], [ %158, %218 ]
  %224 = phi ptr [ %34, %71 ], [ %219, %218 ]
  %225 = icmp eq i8 %222, 0
  br i1 %225, label %238, label %226, !prof !416

226:                                              ; preds = %221
  %227 = load ptr, ptr %35, align 8, !tbaa !312
  %228 = getelementptr inbounds %struct.xpvav, ptr %227, i64 0, i32 2
  %229 = load i64, ptr %228, align 8, !tbaa !314
  %230 = icmp slt i64 %229, 2
  br i1 %230, label %231, label %238, !prof !269

231:                                              ; preds = %226
  %232 = sub nsw i64 2, %229
  br label %233

233:                                              ; preds = %231, %233
  %234 = phi i64 [ %235, %233 ], [ %232, %231 ]
  %235 = add nsw i64 %234, -1
  %236 = call ptr @Perl_newSViv(i64 noundef 0) #40
  call void @Perl_av_push(ptr noundef nonnull %35, ptr noundef %236) #40
  %237 = icmp ugt i64 %234, 1
  br i1 %237, label %233, label %238, !prof !439, !llvm.loop !440

238:                                              ; preds = %233, %226, %221
  br i1 %223, label %239, label %244, !prof !411

239:                                              ; preds = %238
  %240 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.59, i64 noundef 5) #40
  %241 = call ptr @Perl_hv_common(ptr noundef %36, ptr noundef null, ptr noundef nonnull @.str.60, i64 noundef 8, i32 noundef 0, i32 noundef 36, ptr noundef %240, i32 noundef 0) #40
  %242 = call ptr @Perl_newSViv(i64 noundef 1) #40
  %243 = call ptr @Perl_hv_common(ptr noundef %36, ptr noundef null, ptr noundef nonnull @.str.61, i64 noundef 4, i32 noundef 0, i32 noundef 36, ptr noundef %242, i32 noundef 0) #40
  br label %266

244:                                              ; preds = %238
  %245 = icmp ugt ptr %224, %11
  br i1 %245, label %246, label %262, !prof !415

246:                                              ; preds = %244
  %247 = ptrtoint ptr %224 to i64
  %248 = ptrtoint ptr %11 to i64
  %249 = sub i64 %247, %248
  %250 = call ptr @Perl_newSVpvn(ptr noundef nonnull %11, i64 noundef %249) #40
  %251 = load i8, ptr %4, align 1, !tbaa !144, !range !148, !noundef !149
  %252 = icmp ne i8 %251, 0
  %253 = load i32, ptr %6, align 4
  %254 = icmp eq i32 %253, 1
  %255 = select i1 %252, i1 %254, i1 false
  br i1 %255, label %256, label %260, !prof !441

256:                                              ; preds = %246
  %257 = load i8, ptr %11, align 1, !tbaa !155
  %258 = icmp eq i8 %257, 118
  br i1 %258, label %260, label %259

259:                                              ; preds = %256
  call void @Perl_sv_insert_flags(ptr noundef %250, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.62, i64 noundef 1, i32 noundef 2) #40
  br label %260

260:                                              ; preds = %259, %256, %246
  %261 = call ptr @Perl_hv_common(ptr noundef %36, ptr noundef null, ptr noundef nonnull @.str.60, i64 noundef 8, i32 noundef 0, i32 noundef 36, ptr noundef %250, i32 noundef 0) #40
  br label %266

262:                                              ; preds = %244
  %263 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.63, i64 noundef 1) #40
  %264 = call ptr @Perl_hv_common(ptr noundef %36, ptr noundef null, ptr noundef nonnull @.str.60, i64 noundef 8, i32 noundef 0, i32 noundef 36, ptr noundef %263, i32 noundef 0) #40
  %265 = call ptr @Perl_newSViv(i64 noundef 0) #40
  call void @Perl_av_push(ptr noundef %35, ptr noundef %265) #40
  br label %266

266:                                              ; preds = %260, %262, %239
  %267 = call ptr @Perl_newRV_noinc(ptr noundef %35) #40
  %268 = call ptr @Perl_hv_common(ptr noundef %36, ptr noundef null, ptr noundef nonnull @.str.53, i64 noundef 7, i32 noundef 0, i32 noundef 36, ptr noundef %267, i32 noundef 0) #40
  %269 = load i8, ptr %224, align 1, !tbaa !155
  %270 = icmp eq i8 %269, 117
  br i1 %270, label %271, label %277, !prof !411

271:                                              ; preds = %266
  %272 = getelementptr inbounds i8, ptr %224, i64 1
  %273 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %272, ptr noundef nonnull dereferenceable(5) @.str.52) #44
  %274 = icmp eq i32 %273, 0
  %275 = select i1 %274, i64 5, i64 0
  %276 = getelementptr inbounds i8, ptr %224, i64 %275
  br label %277

277:                                              ; preds = %271, %266
  %278 = phi ptr [ %224, %266 ], [ %276, %271 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #45
  ret ptr %278
}

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @Perl_newSVrv(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare void @Perl_av_push(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare void @Perl_sv_insert_flags(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @Perl_newRV_noinc(ptr noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_new_version(ptr noundef %0) local_unnamed_addr #0 !prof !142 {
  %2 = tail call ptr @Perl_newSV(i64 noundef 0) #40
  %3 = tail call i32 @Perl_sv_isobject(ptr noundef %0) #40
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %93, label %5, !prof !442

5:                                                ; preds = %1
  %6 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %0, ptr noundef nonnull @.str.53, i64 noundef 7, i32 noundef 0) #40
  br i1 %6, label %7, label %93, !prof !332

7:                                                ; preds = %5
  %8 = tail call ptr @Perl_newSV_type(i32 noundef 11) #40
  %9 = tail call ptr @Perl_newSVrv(ptr noundef %2, ptr noundef nonnull @.str.53) #40
  tail call void @Perl_sv_upgrade(ptr noundef %9, i32 noundef 12) #40
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !188
  %12 = or i32 %11, 536870912
  store i32 %12, ptr %10, align 4, !tbaa !188
  %13 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !188
  %15 = and i32 %14, 2048
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17, !prof !269

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !155
  br label %20

20:                                               ; preds = %17, %7
  %21 = phi ptr [ %19, %17 ], [ %0, %7 ]
  %22 = tail call ptr @Perl_hv_common_key_len(ptr noundef %21, ptr noundef nonnull @.str.54, i32 noundef 2, i32 noundef 8, ptr noundef null, i32 noundef 0) #40
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24, !prof !332

24:                                               ; preds = %20
  %25 = tail call ptr @Perl_newSViv(i64 noundef 1) #40
  %26 = tail call ptr @Perl_hv_common(ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull @.str.54, i64 noundef 2, i32 noundef 0, i32 noundef 36, ptr noundef %25, i32 noundef 0) #40
  br label %27

27:                                               ; preds = %20, %24
  %28 = tail call ptr @Perl_hv_common_key_len(ptr noundef %21, ptr noundef nonnull @.str.55, i32 noundef 5, i32 noundef 8, ptr noundef null, i32 noundef 0) #40
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30, !prof !332

30:                                               ; preds = %27
  %31 = tail call ptr @Perl_newSViv(i64 noundef 1) #40
  %32 = tail call ptr @Perl_hv_common(ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull @.str.55, i64 noundef 5, i32 noundef 0, i32 noundef 36, ptr noundef %31, i32 noundef 0) #40
  br label %33

33:                                               ; preds = %27, %30
  %34 = tail call ptr @Perl_hv_common(ptr noundef %21, ptr noundef null, ptr noundef nonnull @.str.56, i64 noundef 5, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #40
  %35 = icmp eq ptr %34, null
  br i1 %35, label %54, label %36, !prof !332

36:                                               ; preds = %33
  %37 = load ptr, ptr %34, align 8, !tbaa !150
  %38 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !188
  %40 = and i32 %39, 2097408
  %41 = icmp eq i32 %40, 256
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load ptr, ptr %37, align 8, !tbaa !200
  %44 = getelementptr inbounds %struct.xpviv, ptr %43, i64 0, i32 4
  %45 = load i64, ptr %44, align 8, !tbaa !155
  br label %48

46:                                               ; preds = %36
  %47 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %37, i32 noundef 2) #40
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i64 [ %45, %42 ], [ %47, %46 ]
  %50 = shl i64 %49, 32
  %51 = ashr exact i64 %50, 32
  %52 = tail call ptr @Perl_newSViv(i64 noundef %51) #40
  %53 = tail call ptr @Perl_hv_common(ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull @.str.56, i64 noundef 5, i32 noundef 0, i32 noundef 36, ptr noundef %52, i32 noundef 0) #40
  br label %54

54:                                               ; preds = %48, %33
  %55 = tail call ptr @Perl_hv_common(ptr noundef %21, ptr noundef null, ptr noundef nonnull @.str.60, i64 noundef 8, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #40
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57, !prof !269

57:                                               ; preds = %54
  %58 = load ptr, ptr %55, align 8, !tbaa !150
  %59 = tail call ptr @Perl_newSVsv(ptr noundef %58) #40
  %60 = tail call ptr @Perl_hv_common(ptr noundef nonnull %9, ptr noundef null, ptr noundef nonnull @.str.60, i64 noundef 8, i32 noundef 0, i32 noundef 36, ptr noundef %59, i32 noundef 0) #40
  br label %61

61:                                               ; preds = %57, %54
  %62 = tail call ptr @Perl_hv_common(ptr noundef %21, ptr noundef null, ptr noundef nonnull @.str.53, i64 noundef 7, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #40
  %63 = load ptr, ptr %62, align 8, !tbaa !150
  %64 = getelementptr inbounds %struct.sv, ptr %63, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !155
  %66 = tail call i64 @Perl_av_len(ptr noundef %65) #40
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %90, label %68, !prof !333

68:                                               ; preds = %61, %82
  %69 = phi i64 [ %87, %82 ], [ 0, %61 ]
  %70 = tail call ptr @Perl_av_fetch(ptr noundef %65, i64 noundef %69, i32 noundef 0) #40
  %71 = load ptr, ptr %70, align 8, !tbaa !150
  %72 = getelementptr inbounds %struct.sv, ptr %71, i64 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !188
  %74 = and i32 %73, 2097408
  %75 = icmp eq i32 %74, 256
  br i1 %75, label %76, label %80, !prof !237

76:                                               ; preds = %68
  %77 = load ptr, ptr %71, align 8, !tbaa !200
  %78 = getelementptr inbounds %struct.xpviv, ptr %77, i64 0, i32 4
  %79 = load i64, ptr %78, align 8, !tbaa !155
  br label %82

80:                                               ; preds = %68
  %81 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %71, i32 noundef 2) #40
  br label %82

82:                                               ; preds = %80, %76
  %83 = phi i64 [ %79, %76 ], [ %81, %80 ]
  %84 = shl i64 %83, 32
  %85 = ashr exact i64 %84, 32
  %86 = tail call ptr @Perl_newSViv(i64 noundef %85) #40
  tail call void @Perl_av_push(ptr noundef %8, ptr noundef %86) #40
  %87 = add nuw nsw i64 %69, 1
  %88 = tail call i64 @Perl_av_len(ptr noundef %65) #40
  %89 = icmp slt i64 %69, %88
  br i1 %89, label %68, label %90, !prof !443, !llvm.loop !444

90:                                               ; preds = %82, %61
  %91 = tail call ptr @Perl_newRV_noinc(ptr noundef %8) #40
  %92 = tail call ptr @Perl_hv_common(ptr noundef %9, ptr noundef null, ptr noundef nonnull @.str.53, i64 noundef 7, i32 noundef 0, i32 noundef 36, ptr noundef %91, i32 noundef 0) #40
  br label %120

93:                                               ; preds = %5, %1
  %94 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %95 = load i32, ptr %94, align 4, !tbaa !188
  %96 = and i32 %95, 14680064
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %113, label %98, !prof !445

98:                                               ; preds = %93
  %99 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 86) #40
  %100 = icmp eq ptr %99, null
  br i1 %100, label %113, label %101, !prof !195

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.magic, ptr %99, i64 0, i32 5
  %103 = load i64, ptr %102, align 8, !tbaa !196
  %104 = getelementptr inbounds %struct.magic, ptr %99, i64 0, i32 7
  %105 = load ptr, ptr %104, align 8, !tbaa !205
  tail call void @Perl_sv_setpvn(ptr noundef %2, ptr noundef %105, i64 noundef %103) #40
  %106 = load i8, ptr %105, align 1, !tbaa !155
  %107 = zext i8 %106 to i64
  %108 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !163
  %110 = and i32 %109, 2
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %116, label %112, !prof !332

112:                                              ; preds = %101
  tail call void @Perl_sv_insert_flags(ptr noundef %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.62, i64 noundef 1, i32 noundef 2) #40
  br label %116

113:                                              ; preds = %93, %98
  %114 = icmp eq ptr %2, %0
  br i1 %114, label %116, label %115, !prof !446

115:                                              ; preds = %113
  tail call void @Perl_sv_setsv_flags(ptr noundef %2, ptr noundef nonnull %0, i32 noundef 1554) #40
  br label %116

116:                                              ; preds = %112, %101, %115, %113
  %117 = tail call ptr @Perl_sv_2mortal(ptr noundef %2) #40
  %118 = tail call ptr @Perl_upg_version(ptr noundef %2, i1 noundef zeroext false) #39
  %119 = tail call fastcc ptr @S_SvREFCNT_inc_NN(ptr noundef %2) #39
  br label %120

120:                                              ; preds = %116, %90
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare i32 @Perl_sv_isobject(ptr noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare i64 @Perl_av_len(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc_NN(ptr noundef returned %0) unnamed_addr #29 !prof !447 !PGOFuncName !448 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !273
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !273
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @Perl_upg_version(ptr noundef returned %0, i1 noundef zeroext %1) local_unnamed_addr #0 !prof !413 {
  %3 = alloca [64 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !188
  %8 = and i32 %7, -2147483392
  %9 = icmp eq i32 %8, -2147483392
  br i1 %9, label %10, label %15, !prof !411

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !200
  %12 = getelementptr inbounds %struct.xpvuv, ptr %11, i64 0, i32 4
  %13 = load i64, ptr %12, align 8, !tbaa !155
  %14 = icmp ugt i64 %13, 2147483647
  br i1 %14, label %23, label %15

15:                                               ; preds = %10, %2
  %16 = and i32 %7, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18, !prof !449

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !200
  %20 = getelementptr inbounds %struct.xpviv, ptr %19, i64 0, i32 4
  %21 = load i64, ptr %20, align 8, !tbaa !155
  %22 = icmp sgt i64 %21, 2147483647
  br i1 %22, label %23, label %26, !prof !269

23:                                               ; preds = %18, %10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #45
  %24 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef nonnull %3, i64 poison, ptr noundef nonnull @.str.64, i32 noundef 2147483647) #39
  %25 = call ptr @Perl_savepvn(ptr noundef nonnull %3, i32 noundef %24) #39
  call void @Perl_save_pushptr(ptr noundef %25, i32 noundef 10) #40
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 15, ptr noundef nonnull @.str.57, i32 noundef 2147483647) #39
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #45
  br label %115

26:                                               ; preds = %18
  %27 = tail call ptr @Perl_savesvpv(ptr noundef nonnull %0) #39
  tail call void @Perl_save_pushptr(ptr noundef %27, i32 noundef 10) #40
  br label %115

28:                                               ; preds = %15
  %29 = and i32 %7, 512
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %76, label %31, !prof !450

31:                                               ; preds = %28
  %32 = and i32 %7, 1024
  %33 = icmp eq i32 %32, 0
  %34 = load ptr, ptr %0, align 8, !tbaa !200
  br i1 %33, label %39, label %35, !prof !353

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.xpv, ptr %34, i64 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !201
  %38 = icmp eq i64 %37, 3
  br i1 %38, label %76, label %39

39:                                               ; preds = %35, %31
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #45
  %40 = getelementptr inbounds %struct.xpvnv, ptr %34, i64 0, i32 5
  %41 = load double, ptr %40, align 8, !tbaa !155
  %42 = fcmp ogt double %41, 0x4A8561D276DDFDC0
  br i1 %42, label %43, label %55, !prof !451

43:                                               ; preds = %39
  %44 = tail call ptr @Perl_newSV(i64 noundef 64) #40
  %45 = icmp eq ptr %44, null
  %46 = load ptr, ptr %0, align 8, !tbaa !200
  %47 = getelementptr inbounds %struct.xpvnv, ptr %46, i64 0, i32 5
  %48 = load double, ptr %47, align 8, !tbaa !155
  br i1 %45, label %55, label %49, !prof !195

49:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef nonnull %44, ptr noundef nonnull @.str.65, double noundef %48) #40
  %50 = load ptr, ptr %44, align 8, !tbaa !200
  %51 = getelementptr inbounds %struct.xpv, ptr %50, i64 0, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !201
  %53 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !155
  br label %59

55:                                               ; preds = %43, %39
  %56 = phi double [ %41, %39 ], [ %48, %43 ]
  %57 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef nonnull %4, i64 poison, ptr noundef nonnull @.str.65, double noundef %56) #39
  %58 = sext i32 %57 to i64
  br label %59

59:                                               ; preds = %55, %49
  %60 = phi ptr [ %44, %49 ], [ null, %55 ]
  %61 = phi i64 [ %52, %49 ], [ %58, %55 ]
  %62 = phi ptr [ %54, %49 ], [ %4, %55 ]
  br label %63

63:                                               ; preds = %63, %59
  %64 = phi i64 [ %61, %59 ], [ %65, %63 ]
  %65 = add i64 %64, -1
  %66 = getelementptr inbounds i8, ptr %62, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !155
  %68 = icmp eq i8 %67, 48
  %69 = icmp ne i64 %64, 0
  %70 = and i1 %69, %68
  br i1 %70, label %63, label %71, !prof !452, !llvm.loop !453

71:                                               ; preds = %63
  %72 = icmp eq i8 %67, 46
  %73 = select i1 %72, i64 %65, i64 %64, !prof !454
  %74 = trunc i64 %73 to i32
  %75 = call ptr @Perl_savepvn(ptr noundef nonnull %62, i32 noundef %74) #39
  call void @Perl_save_pushptr(ptr noundef %75, i32 noundef 10) #40
  call fastcc void @S_SvREFCNT_dec(ptr noundef %60) #39
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #45
  br label %115

76:                                               ; preds = %35, %28
  %77 = and i32 %7, 14680064
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %91, label %79, !prof !455

79:                                               ; preds = %76
  %80 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 86) #40
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %84, !prof !195

82:                                               ; preds = %79
  %83 = load i32, ptr %6, align 4, !tbaa !188
  br label %91

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.magic, ptr %80, i64 0, i32 7
  %86 = load ptr, ptr %85, align 8, !tbaa !205
  %87 = getelementptr inbounds %struct.magic, ptr %80, i64 0, i32 5
  %88 = load i64, ptr %87, align 8, !tbaa !196
  %89 = trunc i64 %88 to i32
  %90 = tail call ptr @Perl_savepvn(ptr noundef %86, i32 noundef %89) #39
  tail call void @Perl_save_pushptr(ptr noundef %90, i32 noundef 10) #40
  br label %115

91:                                               ; preds = %82, %76
  %92 = phi i32 [ %83, %82 ], [ %7, %76 ]
  %93 = and i32 %92, 1024
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %114, label %95, !prof !456

95:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #45
  %96 = and i32 %92, 2098176
  %97 = icmp eq i32 %96, 1024
  br i1 %97, label %98, label %104, !prof !455

98:                                               ; preds = %95
  %99 = load ptr, ptr %0, align 8, !tbaa !200
  %100 = getelementptr inbounds %struct.xpv, ptr %99, i64 0, i32 2
  %101 = load i64, ptr %100, align 8, !tbaa !201
  store i64 %101, ptr %5, align 8, !tbaa !203
  %102 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !155
  br label %109

104:                                              ; preds = %95
  %105 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 2) #40
  %106 = load ptr, ptr %0, align 8, !tbaa !200
  %107 = getelementptr inbounds %struct.xpv, ptr %106, i64 0, i32 2
  %108 = load i64, ptr %107, align 8, !tbaa !201
  br label %109

109:                                              ; preds = %104, %98
  %110 = phi i64 [ %101, %98 ], [ %108, %104 ]
  %111 = phi ptr [ %103, %98 ], [ %105, %104 ]
  %112 = trunc i64 %110 to i32
  %113 = call ptr @Perl_savepvn(ptr noundef %111, i32 noundef %112) #39
  call void @Perl_save_pushptr(ptr noundef %113, i32 noundef 10) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #45
  br label %115

114:                                              ; preds = %91
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47) #39
  br label %115

115:                                              ; preds = %26, %84, %114, %109, %71, %23
  %116 = phi ptr [ %25, %23 ], [ %27, %26 ], [ %90, %84 ], [ %113, %109 ], [ null, %114 ], [ %75, %71 ]
  %117 = phi i1 [ %1, %23 ], [ %1, %26 ], [ true, %84 ], [ %1, %109 ], [ %1, %114 ], [ %1, %71 ]
  %118 = call ptr @Perl_scan_version(ptr noundef %116, ptr noundef %0, i1 noundef zeroext %117) #39
  %119 = load i8, ptr %118, align 1, !tbaa !155
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %122, label %121, !prof !415

121:                                              ; preds = %115
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 12, ptr noundef nonnull @.str.66, ptr noundef %116, ptr noundef nonnull %118) #39
  br label %122

122:                                              ; preds = %121, %115
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_my_snprintf(ptr nocapture noundef %0, i64 %1, ptr nocapture noundef readonly %2, ...) local_unnamed_addr #0 !prof !457 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #45
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call i32 @vsprintf(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4) #40
  call void @llvm.va_end(ptr nonnull %4)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8, !prof !458

7:                                                ; preds = %3
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.79) #39
  br label %8

8:                                                ; preds = %7, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #45
  ret i32 %5
}

; Function Attrs: optsize
declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_vverify(ptr noundef %0) local_unnamed_addr #0 !prof !459 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !188
  %4 = and i32 %3, 2048
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %11, label %6, !prof !460

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !155
  %9 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !188
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i32 [ %10, %6 ], [ %3, %1 ]
  %13 = phi ptr [ %8, %6 ], [ %0, %1 ]
  %14 = and i32 %12, 255
  %15 = icmp eq i32 %14, 12
  br i1 %15, label %16, label %29, !prof !461

16:                                               ; preds = %11
  %17 = tail call ptr @Perl_hv_common(ptr noundef nonnull %13, ptr noundef null, ptr noundef nonnull @.str.53, i64 noundef 7, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #40
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19, !prof !462

19:                                               ; preds = %16
  %20 = load ptr, ptr %17, align 8, !tbaa !150
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !155
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24, !prof !462

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !188
  %27 = and i32 %26, 255
  %28 = icmp eq i32 %27, 11
  br i1 %28, label %30, label %29, !prof !461

29:                                               ; preds = %24, %19, %16, %11
  br label %30

30:                                               ; preds = %24, %29
  %31 = phi ptr [ null, %29 ], [ %13, %24 ]
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_vnumify(ptr noundef %0) local_unnamed_addr #0 !prof !268 {
  %2 = tail call ptr @Perl_vverify(ptr noundef %0) #39
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !269

4:                                                ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.67) #39
  br label %5

5:                                                ; preds = %4, %1
  %6 = tail call ptr @Perl_hv_common_key_len(ptr noundef %2, ptr noundef nonnull @.str.55, i32 noundef 5, i32 noundef 8, ptr noundef null, i32 noundef 0) #40
  %7 = icmp ne ptr %6, null
  %8 = tail call ptr @Perl_hv_common(ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.56, i64 noundef 5, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #40
  %9 = icmp eq ptr %8, null
  br i1 %9, label %25, label %10, !prof !332

10:                                               ; preds = %5
  %11 = load ptr, ptr %8, align 8, !tbaa !150
  %12 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !188
  %14 = and i32 %13, 2097408
  %15 = icmp eq i32 %14, 256
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load ptr, ptr %11, align 8, !tbaa !200
  %18 = getelementptr inbounds %struct.xpviv, ptr %17, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !155
  br label %22

20:                                               ; preds = %10
  %21 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %11, i32 noundef 2) #40
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i64 [ %19, %16 ], [ %21, %20 ]
  %24 = trunc i64 %23 to i32
  br label %25

25:                                               ; preds = %5, %22
  %26 = phi i32 [ %24, %22 ], [ 3, %5 ]
  %27 = tail call ptr @Perl_hv_common(ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.53, i64 noundef 7, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #40
  %28 = load ptr, ptr %27, align 8, !tbaa !150
  %29 = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !155
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34, !prof !269

32:                                               ; preds = %25
  %33 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.63, i64 noundef 1) #40
  br label %112

34:                                               ; preds = %25
  %35 = tail call i64 @Perl_av_len(ptr noundef nonnull %30) #40
  %36 = icmp eq i64 %35, -1
  br i1 %36, label %37, label %39, !prof !269

37:                                               ; preds = %34
  %38 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.63, i64 noundef 1) #40
  br label %112

39:                                               ; preds = %34
  %40 = tail call ptr @Perl_av_fetch(ptr noundef nonnull %30, i64 noundef 0, i32 noundef 0) #40
  %41 = load ptr, ptr %40, align 8, !tbaa !150
  %42 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !188
  %44 = and i32 %43, 2097408
  %45 = icmp eq i32 %44, 256
  br i1 %45, label %46, label %50, !prof !332

46:                                               ; preds = %39
  %47 = load ptr, ptr %41, align 8, !tbaa !200
  %48 = getelementptr inbounds %struct.xpviv, ptr %47, i64 0, i32 4
  %49 = load i64, ptr %48, align 8, !tbaa !155
  br label %52

50:                                               ; preds = %39
  %51 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %41, i32 noundef 2) #40
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i64 [ %49, %46 ], [ %51, %50 ]
  %54 = trunc i64 %53 to i32
  %55 = tail call i32 @llvm.abs.i32(i32 %54, i1 true)
  %56 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.68, i32 noundef %55) #40
  %57 = icmp sgt i64 %35, 1
  br i1 %57, label %58, label %89, !prof !174

58:                                               ; preds = %52
  %59 = icmp slt i32 %26, 3
  br label %60

60:                                               ; preds = %58, %86
  %61 = phi i64 [ 1, %58 ], [ %87, %86 ]
  %62 = tail call ptr @Perl_av_fetch(ptr noundef nonnull %30, i64 noundef %61, i32 noundef 0) #40
  %63 = load ptr, ptr %62, align 8, !tbaa !150
  %64 = getelementptr inbounds %struct.sv, ptr %63, i64 0, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !188
  %66 = and i32 %65, 2097408
  %67 = icmp eq i32 %66, 256
  br i1 %67, label %68, label %72, !prof !332

68:                                               ; preds = %60
  %69 = load ptr, ptr %63, align 8, !tbaa !200
  %70 = getelementptr inbounds %struct.xpviv, ptr %69, i64 0, i32 4
  %71 = load i64, ptr %70, align 8, !tbaa !155
  br label %74

72:                                               ; preds = %60
  %73 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %63, i32 noundef 2) #40
  br label %74

74:                                               ; preds = %72, %68
  %75 = phi i64 [ %71, %68 ], [ %73, %72 ]
  %76 = trunc i64 %75 to i32
  br i1 %59, label %77, label %85, !prof !269

77:                                               ; preds = %74
  %78 = icmp eq i32 %26, 2
  %79 = select i1 %78, i32 10, i32 100
  %80 = tail call i32 @llvm.abs.i32(i32 %76, i1 true)
  %81 = tail call i64 @div(i32 noundef %80, i32 noundef %79) #41
  %82 = trunc i64 %81 to i32
  %83 = lshr i64 %81, 32
  %84 = trunc i64 %83 to i32
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %56, ptr noundef nonnull @.str.69, i32 noundef %26, i32 noundef %82, i32 noundef %84) #40
  br label %86

85:                                               ; preds = %74
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %56, ptr noundef nonnull @.str.70, i32 noundef %26, i32 noundef %76) #40
  br label %86

86:                                               ; preds = %85, %77
  %87 = add nuw nsw i64 %61, 1
  %88 = icmp eq i64 %87, %35
  br i1 %88, label %89, label %60, !prof !174, !llvm.loop !463

89:                                               ; preds = %86, %52
  %90 = icmp sgt i64 %35, 0
  br i1 %90, label %91, label %111, !prof !332

91:                                               ; preds = %89
  %92 = tail call ptr @Perl_av_fetch(ptr noundef nonnull %30, i64 noundef %35, i32 noundef 0) #40
  %93 = load ptr, ptr %92, align 8, !tbaa !150
  %94 = getelementptr inbounds %struct.sv, ptr %93, i64 0, i32 2
  %95 = load i32, ptr %94, align 4, !tbaa !188
  %96 = and i32 %95, 2097408
  %97 = icmp eq i32 %96, 256
  br i1 %97, label %98, label %102, !prof !332

98:                                               ; preds = %91
  %99 = load ptr, ptr %93, align 8, !tbaa !200
  %100 = getelementptr inbounds %struct.xpviv, ptr %99, i64 0, i32 4
  %101 = load i64, ptr %100, align 8, !tbaa !155
  br label %104

102:                                              ; preds = %91
  %103 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %93, i32 noundef 2) #40
  br label %104

104:                                              ; preds = %102, %98
  %105 = phi i64 [ %101, %98 ], [ %103, %102 ]
  %106 = trunc i64 %105 to i32
  %107 = icmp eq i32 %26, 3
  %108 = select i1 %7, i1 %107, i1 false
  br i1 %108, label %109, label %110, !prof !464

109:                                              ; preds = %104
  tail call void @Perl_sv_catpvn_flags(ptr noundef %56, ptr noundef nonnull @.str.71, i64 noundef 1, i32 noundef 2) #40
  br label %110

110:                                              ; preds = %109, %104
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %56, ptr noundef nonnull @.str.70, i32 noundef %26, i32 noundef %106) #40
  br label %112

111:                                              ; preds = %89
  tail call void @Perl_sv_catpvn_flags(ptr noundef %56, ptr noundef nonnull @.str.72, i64 noundef 3, i32 noundef 2) #40
  br label %112

112:                                              ; preds = %110, %111, %37, %32
  %113 = phi ptr [ %38, %37 ], [ %33, %32 ], [ %56, %111 ], [ %56, %110 ]
  ret ptr %113
}

; Function Attrs: optsize
declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare i64 @div(i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_vnormal(ptr noundef %0) local_unnamed_addr #0 !prof !142 {
  %2 = tail call ptr @Perl_vverify(ptr noundef %0) #39
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.67) #39
  br label %5

5:                                                ; preds = %4, %1
  %6 = tail call ptr @Perl_hv_common_key_len(ptr noundef %2, ptr noundef nonnull @.str.55, i32 noundef 5, i32 noundef 8, ptr noundef null, i32 noundef 0) #40
  %7 = icmp eq ptr %6, null
  %8 = tail call ptr @Perl_hv_common(ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.53, i64 noundef 7, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #40
  %9 = load ptr, ptr %8, align 8, !tbaa !150
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !155
  %12 = tail call i64 @Perl_av_len(ptr noundef %11) #40
  %13 = trunc i64 %12 to i32
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.10, i64 noundef 0) #40
  br label %86

17:                                               ; preds = %5
  %18 = tail call ptr @Perl_av_fetch(ptr noundef %11, i64 noundef 0, i32 noundef 0) #40
  %19 = load ptr, ptr %18, align 8, !tbaa !150
  %20 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !188
  %22 = and i32 %21, 2097408
  %23 = icmp eq i32 %22, 256
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load ptr, ptr %19, align 8, !tbaa !200
  %26 = getelementptr inbounds %struct.xpviv, ptr %25, i64 0, i32 4
  %27 = load i64, ptr %26, align 8, !tbaa !155
  br label %30

28:                                               ; preds = %17
  %29 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %19, i32 noundef 2) #40
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i64 [ %27, %24 ], [ %29, %28 ]
  %32 = shl i64 %31, 32
  %33 = ashr exact i64 %32, 32
  %34 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.73, i64 noundef %33) #40
  %35 = icmp sgt i32 %13, 1
  br i1 %35, label %36, label %58

36:                                               ; preds = %30
  %37 = and i64 %12, 4294967295
  br label %38

38:                                               ; preds = %36, %52
  %39 = phi i64 [ 1, %36 ], [ %56, %52 ]
  %40 = tail call ptr @Perl_av_fetch(ptr noundef %11, i64 noundef %39, i32 noundef 0) #40
  %41 = load ptr, ptr %40, align 8, !tbaa !150
  %42 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !188
  %44 = and i32 %43, 2097408
  %45 = icmp eq i32 %44, 256
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load ptr, ptr %41, align 8, !tbaa !200
  %48 = getelementptr inbounds %struct.xpviv, ptr %47, i64 0, i32 4
  %49 = load i64, ptr %48, align 8, !tbaa !155
  br label %52

50:                                               ; preds = %38
  %51 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %41, i32 noundef 2) #40
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i64 [ %49, %46 ], [ %51, %50 ]
  %54 = shl i64 %53, 32
  %55 = ashr exact i64 %54, 32
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %34, ptr noundef nonnull @.str.74, i64 noundef %55) #40
  %56 = add nuw nsw i64 %39, 1
  %57 = icmp eq i64 %56, %37
  br i1 %57, label %58, label %38, !llvm.loop !465

58:                                               ; preds = %52, %30
  %59 = icmp sgt i32 %13, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %58
  %61 = and i64 %12, 4294967295
  %62 = tail call ptr @Perl_av_fetch(ptr noundef %11, i64 noundef %61, i32 noundef 0) #40
  %63 = load ptr, ptr %62, align 8, !tbaa !150
  %64 = getelementptr inbounds %struct.sv, ptr %63, i64 0, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !188
  %66 = and i32 %65, 2097408
  %67 = icmp eq i32 %66, 256
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load ptr, ptr %63, align 8, !tbaa !200
  %70 = getelementptr inbounds %struct.xpviv, ptr %69, i64 0, i32 4
  %71 = load i64, ptr %70, align 8, !tbaa !155
  br label %74

72:                                               ; preds = %60
  %73 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %63, i32 noundef 2) #40
  br label %74

74:                                               ; preds = %72, %68
  %75 = phi i64 [ %71, %68 ], [ %73, %72 ]
  %76 = shl i64 %75, 32
  %77 = ashr exact i64 %76, 32
  %78 = select i1 %7, ptr @.str.74, ptr @.str.75
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %34, ptr noundef nonnull %78, i64 noundef %77) #40
  %79 = icmp eq i32 %13, 1
  br i1 %79, label %80, label %86

80:                                               ; preds = %58, %74
  %81 = sub nsw i32 2, %13
  br label %82

82:                                               ; preds = %80, %82
  %83 = phi i32 [ %84, %82 ], [ %81, %80 ]
  tail call void @Perl_sv_catpvn_flags(ptr noundef %34, ptr noundef nonnull @.str.76, i64 noundef 2, i32 noundef 2) #40
  %84 = add nsw i32 %83, -1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %82, !llvm.loop !466

86:                                               ; preds = %82, %74, %15
  %87 = phi ptr [ %16, %15 ], [ %34, %74 ], [ %34, %82 ]
  ret ptr %87
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_vstringify(ptr noundef %0) local_unnamed_addr #0 !prof !354 {
  %2 = tail call ptr @Perl_vverify(ptr noundef %0) #39
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !355

4:                                                ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.67) #39
  br label %5

5:                                                ; preds = %4, %1
  %6 = tail call ptr @Perl_hv_common(ptr noundef %2, ptr noundef null, ptr noundef nonnull @.str.60, i64 noundef 8, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #40
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8, !prof !355

8:                                                ; preds = %5
  %9 = load ptr, ptr %6, align 8, !tbaa !150
  %10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !188
  %12 = and i32 %11, 1024
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14, !prof !355

14:                                               ; preds = %8
  %15 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %9) #40
  br label %23

16:                                               ; preds = %5
  %17 = tail call ptr @Perl_hv_common_key_len(ptr noundef %2, ptr noundef nonnull @.str.54, i32 noundef 2, i32 noundef 8, ptr noundef null, i32 noundef 0) #40
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call ptr @Perl_vnormal(ptr noundef %2) #39
  br label %23

21:                                               ; preds = %16
  %22 = tail call ptr @Perl_vnumify(ptr noundef %2) #39
  br label %23

23:                                               ; preds = %14, %8, %21, %19
  %24 = phi ptr [ %20, %19 ], [ %22, %21 ], [ %15, %14 ], [ @PL_sv_undef, %8 ]
  ret ptr %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_vcmp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !467 {
  %3 = tail call ptr @Perl_vverify(ptr noundef %0) #39
  %4 = tail call ptr @Perl_vverify(ptr noundef %1) #39
  %5 = icmp ne ptr %3, null
  %6 = icmp ne ptr %4, null
  %7 = select i1 %5, i1 %6, i1 false
  br i1 %7, label %9, label %8, !prof !468

8:                                                ; preds = %2
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.67) #39
  br label %9

9:                                                ; preds = %2, %8
  %10 = tail call ptr @Perl_hv_common(ptr noundef %3, ptr noundef null, ptr noundef nonnull @.str.53, i64 noundef 7, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #40
  %11 = load ptr, ptr %10, align 8, !tbaa !150
  %12 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !155
  %14 = tail call ptr @Perl_hv_common_key_len(ptr noundef %3, ptr noundef nonnull @.str.55, i32 noundef 5, i32 noundef 8, ptr noundef null, i32 noundef 0) #40
  %15 = icmp eq ptr %14, null
  %16 = tail call ptr @Perl_hv_common(ptr noundef %4, ptr noundef null, ptr noundef nonnull @.str.53, i64 noundef 7, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #40
  %17 = load ptr, ptr %16, align 8, !tbaa !150
  %18 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !155
  %20 = tail call ptr @Perl_hv_common_key_len(ptr noundef %4, ptr noundef nonnull @.str.55, i32 noundef 5, i32 noundef 8, ptr noundef null, i32 noundef 0) #40
  %21 = icmp eq ptr %20, null
  %22 = tail call i64 @Perl_av_len(ptr noundef %13) #40
  %23 = tail call i64 @Perl_av_len(ptr noundef %19) #40
  %24 = icmp slt i64 %22, %23
  %25 = tail call i64 @llvm.smin.i64(i64 %22, i64 %23)
  %26 = icmp sgt i64 %25, -1
  br i1 %26, label %27, label %68, !prof !469

27:                                               ; preds = %9, %56
  %28 = phi i64 [ %63, %56 ], [ 0, %9 ]
  %29 = tail call ptr @Perl_av_fetch(ptr noundef %13, i64 noundef %28, i32 noundef 0) #40
  %30 = load ptr, ptr %29, align 8, !tbaa !150
  %31 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !188
  %33 = and i32 %32, 2097408
  %34 = icmp eq i32 %33, 256
  br i1 %34, label %35, label %39, !prof !470

35:                                               ; preds = %27
  %36 = load ptr, ptr %30, align 8, !tbaa !200
  %37 = getelementptr inbounds %struct.xpviv, ptr %36, i64 0, i32 4
  %38 = load i64, ptr %37, align 8, !tbaa !155
  br label %41

39:                                               ; preds = %27
  %40 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %30, i32 noundef 2) #40
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi i64 [ %38, %35 ], [ %40, %39 ]
  %43 = trunc i64 %42 to i32
  %44 = tail call ptr @Perl_av_fetch(ptr noundef %19, i64 noundef %28, i32 noundef 0) #40
  %45 = load ptr, ptr %44, align 8, !tbaa !150
  %46 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !188
  %48 = and i32 %47, 2097408
  %49 = icmp eq i32 %48, 256
  br i1 %49, label %50, label %54, !prof !470

50:                                               ; preds = %41
  %51 = load ptr, ptr %45, align 8, !tbaa !200
  %52 = getelementptr inbounds %struct.xpviv, ptr %51, i64 0, i32 4
  %53 = load i64, ptr %52, align 8, !tbaa !155
  br label %56

54:                                               ; preds = %41
  %55 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %45, i32 noundef 2) #40
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi i64 [ %53, %50 ], [ %55, %54 ]
  %58 = trunc i64 %57 to i32
  %59 = icmp slt i32 %43, %58
  %60 = sext i1 %59 to i32
  %61 = icmp sgt i32 %43, %58
  %62 = select i1 %61, i32 1, i32 %60, !prof !471
  %63 = add nuw nsw i64 %28, 1
  %64 = icmp slt i64 %28, %25
  %65 = icmp eq i32 %62, 0
  %66 = and i1 %65, %64
  br i1 %66, label %27, label %67, !prof !472, !llvm.loop !473

67:                                               ; preds = %56
  br i1 %65, label %68, label %83, !prof !474

68:                                               ; preds = %9, %67
  %69 = phi i64 [ %63, %67 ], [ 0, %9 ]
  %70 = phi i32 [ %58, %67 ], [ 0, %9 ]
  %71 = phi i32 [ %43, %67 ], [ 0, %9 ]
  %72 = icmp ne i64 %22, %23
  %73 = icmp ne i32 %71, %70
  %74 = select i1 %72, i1 true, i1 %73
  %75 = select i1 %15, i1 %21, i1 false
  %76 = select i1 %74, i1 true, i1 %75
  br i1 %76, label %83, label %77, !prof !475

77:                                               ; preds = %68
  %78 = xor i1 %15, true
  %79 = select i1 %78, i1 %21, i1 false
  %80 = sext i1 %79 to i32
  %81 = zext i1 %15 to i32
  %82 = select i1 %21, i32 %80, i32 %81
  br label %83

83:                                               ; preds = %77, %68, %67
  %84 = phi i64 [ %69, %68 ], [ %63, %67 ], [ %69, %77 ]
  %85 = phi i32 [ 0, %68 ], [ %62, %67 ], [ %82, %77 ]
  %86 = icmp ne i64 %22, %23
  %87 = icmp eq i32 %85, 0
  %88 = and i1 %86, %87
  br i1 %88, label %89, label %138, !prof !476

89:                                               ; preds = %83
  br i1 %24, label %92, label %90, !prof !237

90:                                               ; preds = %89
  %91 = icmp sgt i64 %84, %22
  br i1 %91, label %138, label %114

92:                                               ; preds = %89
  %93 = icmp sgt i64 %84, %23
  br i1 %93, label %138, label %94, !prof !333

94:                                               ; preds = %92, %108
  %95 = phi i64 [ %111, %108 ], [ %84, %92 ]
  %96 = tail call ptr @Perl_av_fetch(ptr noundef %19, i64 noundef %95, i32 noundef 0) #40
  %97 = load ptr, ptr %96, align 8, !tbaa !150
  %98 = getelementptr inbounds %struct.sv, ptr %97, i64 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !188
  %100 = and i32 %99, 2097408
  %101 = icmp eq i32 %100, 256
  br i1 %101, label %102, label %106, !prof !237

102:                                              ; preds = %94
  %103 = load ptr, ptr %97, align 8, !tbaa !200
  %104 = getelementptr inbounds %struct.xpviv, ptr %103, i64 0, i32 4
  %105 = load i64, ptr %104, align 8, !tbaa !155
  br label %108

106:                                              ; preds = %94
  %107 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %97, i32 noundef 2) #40
  br label %108

108:                                              ; preds = %106, %102
  %109 = phi i64 [ %105, %102 ], [ %107, %106 ]
  %110 = icmp ne i64 %109, 0
  %111 = add nuw nsw i64 %95, 1
  %112 = icmp sge i64 %95, %23
  %113 = or i1 %112, %110
  br i1 %113, label %134, label %94, !prof !174, !llvm.loop !477

114:                                              ; preds = %90, %128
  %115 = phi i64 [ %131, %128 ], [ %84, %90 ]
  %116 = tail call ptr @Perl_av_fetch(ptr noundef %13, i64 noundef %115, i32 noundef 0) #40
  %117 = load ptr, ptr %116, align 8, !tbaa !150
  %118 = getelementptr inbounds %struct.sv, ptr %117, i64 0, i32 2
  %119 = load i32, ptr %118, align 4, !tbaa !188
  %120 = and i32 %119, 2097408
  %121 = icmp eq i32 %120, 256
  br i1 %121, label %122, label %126

122:                                              ; preds = %114
  %123 = load ptr, ptr %117, align 8, !tbaa !200
  %124 = getelementptr inbounds %struct.xpviv, ptr %123, i64 0, i32 4
  %125 = load i64, ptr %124, align 8, !tbaa !155
  br label %128

126:                                              ; preds = %114
  %127 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %117, i32 noundef 2) #40
  br label %128

128:                                              ; preds = %126, %122
  %129 = phi i64 [ %125, %122 ], [ %127, %126 ]
  %130 = icmp ne i64 %129, 0
  %131 = add nuw nsw i64 %115, 1
  %132 = icmp sge i64 %115, %22
  %133 = or i1 %132, %130
  br i1 %133, label %136, label %114, !llvm.loop !478

134:                                              ; preds = %108
  %135 = sext i1 %110 to i32
  br label %138

136:                                              ; preds = %128
  %137 = zext i1 %130 to i32
  br label %138

138:                                              ; preds = %136, %134, %90, %92, %83
  %139 = phi i32 [ %85, %83 ], [ 0, %92 ], [ 0, %90 ], [ %135, %134 ], [ %137, %136 ]
  ret i32 %139
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @Perl_my_socketpair(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #23 !prof !142 {
  ret i32 -1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @Perl_sv_nosharing(ptr nocapture noundef readnone %0) local_unnamed_addr #23 !prof !142 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @Perl_sv_destroyable(ptr nocapture noundef readnone %0) local_unnamed_addr #23 !prof !479 {
  ret i1 true
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_parse_unicode_opts(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !142 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !150
  %5 = load i8, ptr %4, align 1, !tbaa !155
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %79, label %7

7:                                                ; preds = %1
  %8 = zext i8 %5 to i64
  %9 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !163
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #45
  %14 = call zeroext i1 @Perl_grok_atoUV(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %2) #40
  %15 = load i64, ptr %3, align 8
  %16 = icmp ult i64 %15, 4294967296
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = trunc i64 %15 to i32
  %20 = load ptr, ptr %2, align 8, !tbaa !150
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %18
  %23 = load i8, ptr %20, align 1, !tbaa !155
  %24 = sext i8 %23 to i32
  switch i8 %23, label %25 [
    i8 0, label %32
    i8 10, label %32
    i8 13, label %32
  ]

25:                                               ; preds = %22
  %26 = zext i8 %23 to i64
  %27 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !163
  %29 = and i32 %28, 17408
  %30 = icmp eq i32 %29, 17408
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.77, i32 noundef %24) #39
  br label %32

32:                                               ; preds = %13, %31, %18, %22, %22, %22, %25
  %33 = phi ptr [ %20, %25 ], [ %20, %31 ], [ %20, %22 ], [ null, %18 ], [ %4, %13 ], [ %20, %22 ], [ %20, %22 ]
  %34 = phi i32 [ %19, %25 ], [ %19, %31 ], [ %19, %22 ], [ %19, %18 ], [ 0, %13 ], [ %19, %22 ], [ %19, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #45
  br label %72

35:                                               ; preds = %7, %67
  %36 = phi i8 [ %70, %67 ], [ %5, %7 ]
  %37 = phi i32 [ %68, %67 ], [ 0, %7 ]
  %38 = phi ptr [ %69, %67 ], [ %4, %7 ]
  %39 = sext i8 %36 to i32
  switch i8 %36, label %60 [
    i8 73, label %40
    i8 79, label %42
    i8 69, label %44
    i8 83, label %46
    i8 105, label %48
    i8 111, label %50
    i8 68, label %52
    i8 76, label %54
    i8 65, label %56
    i8 97, label %58
    i8 10, label %67
    i8 13, label %67
  ]

40:                                               ; preds = %35
  %41 = or i32 %37, 1
  br label %67

42:                                               ; preds = %35
  %43 = or i32 %37, 2
  br label %67

44:                                               ; preds = %35
  %45 = or i32 %37, 4
  br label %67

46:                                               ; preds = %35
  %47 = or i32 %37, 7
  br label %67

48:                                               ; preds = %35
  %49 = or i32 %37, 8
  br label %67

50:                                               ; preds = %35
  %51 = or i32 %37, 16
  br label %67

52:                                               ; preds = %35
  %53 = or i32 %37, 24
  br label %67

54:                                               ; preds = %35
  %55 = or i32 %37, 64
  br label %67

56:                                               ; preds = %35
  %57 = or i32 %37, 32
  br label %67

58:                                               ; preds = %35
  %59 = or i32 %37, 256
  br label %67

60:                                               ; preds = %35
  %61 = zext i8 %36 to i64
  %62 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !163
  %64 = and i32 %63, 17408
  %65 = icmp eq i32 %64, 17408
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.77, i32 noundef %39) #39
  br label %67

67:                                               ; preds = %35, %35, %40, %42, %44, %46, %48, %50, %52, %54, %56, %58, %66
  %68 = phi i32 [ %37, %66 ], [ %59, %58 ], [ %57, %56 ], [ %55, %54 ], [ %53, %52 ], [ %51, %50 ], [ %49, %48 ], [ %47, %46 ], [ %45, %44 ], [ %43, %42 ], [ %41, %40 ], [ %37, %35 ], [ %37, %35 ]
  %69 = getelementptr inbounds i8, ptr %38, i64 1
  %70 = load i8, ptr %69, align 1, !tbaa !155
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %35, !llvm.loop !480

72:                                               ; preds = %60, %67, %32
  %73 = phi ptr [ %33, %32 ], [ %38, %60 ], [ %69, %67 ]
  %74 = phi i32 [ %34, %32 ], [ %37, %60 ], [ %68, %67 ]
  %75 = and i32 %74, -512
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = zext i32 %75 to i64
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.78, i64 noundef %78) #39
  br label %79

79:                                               ; preds = %1, %77, %72
  %80 = phi i32 [ %74, %77 ], [ %74, %72 ], [ 95, %1 ]
  %81 = phi ptr [ %73, %77 ], [ %73, %72 ], [ %4, %1 ]
  store ptr %81, ptr %0, align 8, !tbaa !150
  ret i32 %80
}

; Function Attrs: optsize
declare zeroext i1 @Perl_grok_atoUV(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @Perl_seed() local_unnamed_addr #23 !prof !142 {
  ret i32 1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @Perl_get_hash_seed(ptr nocapture noundef writeonly %0) local_unnamed_addr #31 !prof !268 {
  store i64 72340172838076673, ptr %0, align 1
  store i8 0, ptr @PL_hash_rand_bits_enabled, align 1, !tbaa !155
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vsprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #24

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_my_vsnprintf(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 !prof !142 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #45
  call void @llvm.va_copy(ptr nonnull %5, ptr %3)
  %6 = call i32 @vsprintf(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %5) #40
  call void @llvm.va_end(ptr nonnull %5)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.80) #39
  br label %9

9:                                                ; preds = %8, %4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #45
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy(ptr, ptr) #15

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_my_clearenv() local_unnamed_addr #0 !prof !142 {
  %1 = load i8, ptr @PL_use_safe_putenv, align 1, !tbaa !144, !range !148, !noundef !149
  %2 = icmp eq i8 %1, 0
  %3 = load ptr, ptr @environ, align 8, !tbaa !150
  br i1 %2, label %4, label %20

4:                                                ; preds = %0
  %5 = load ptr, ptr @PL_origenviron, align 8, !tbaa !150
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %3, align 8, !tbaa !150
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %12

10:                                               ; preds = %4
  %11 = tail call ptr @Perl_safesysmalloc(i64 noundef 8) #39
  store ptr %11, ptr @environ, align 8, !tbaa !150
  br label %20

12:                                               ; preds = %7, %12
  %13 = phi i64 [ %15, %12 ], [ 0, %7 ]
  %14 = phi ptr [ %18, %12 ], [ %8, %7 ]
  tail call void @Perl_safesysfree(ptr noundef nonnull %14) #39
  %15 = add nuw nsw i64 %13, 1
  %16 = load ptr, ptr @environ, align 8, !tbaa !150
  %17 = getelementptr inbounds ptr, ptr %16, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !150
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %12, !llvm.loop !481

20:                                               ; preds = %12, %7, %10, %0
  %21 = phi ptr [ %3, %7 ], [ %11, %10 ], [ %3, %0 ], [ %16, %12 ]
  store ptr null, ptr %21, align 8, !tbaa !150
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_xs_handshake(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ...) local_unnamed_addr #0 !prof !330 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #45
  call void @llvm.va_start(ptr nonnull %4)
  %5 = and i32 %0, -65408
  %6 = zext i32 %5 to i64
  %7 = inttoptr i64 %6 to ptr
  switch i32 %5, label %15 [
    i32 219676672, label %8
    i32 -65408, label %18
  ], !prof !482

8:                                                ; preds = %3
  %9 = load ptr, ptr %1, align 8, !tbaa !304
  %10 = getelementptr inbounds %struct.xpvcv, ptr %9, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !155
  %12 = icmp ne ptr %11, @PL_stack_sp
  %13 = icmp ne ptr %11, inttoptr (i64 4294901888 to ptr)
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %18, !prof !393

15:                                               ; preds = %3, %8
  %16 = phi ptr [ @PL_stack_sp, %8 ], [ inttoptr (i64 219676672 to ptr), %3 ]
  %17 = phi ptr [ %11, %8 ], [ %7, %3 ]
  call void (ptr, ...) @Perl_noperl_die(ptr noundef nonnull @.str.81, ptr noundef %2, ptr noundef %17, ptr noundef nonnull %16) #40
  br label %18

18:                                               ; preds = %3, %15, %8
  %19 = and i32 %0, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21, !prof !483

21:                                               ; preds = %18
  call void @Perl_save_pptr(ptr noundef nonnull @PL_xsubfilename) #40
  store ptr %2, ptr @PL_xsubfilename, align 8, !tbaa !150
  %22 = call ptr @Perl_gv_fetchfile(ptr noundef %2) #40
  br label %23

23:                                               ; preds = %21, %18
  %24 = and i32 %0, 64
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %40, label %26, !prof !483

26:                                               ; preds = %23
  %27 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !150
  %28 = getelementptr inbounds i32, ptr %27, i64 -1
  store ptr %28, ptr @PL_markstack_ptr, align 8, !tbaa !150
  %29 = load i32, ptr %27, align 4, !tbaa !163
  %30 = load ptr, ptr @PL_stack_base, align 8, !tbaa !150
  %31 = add i32 %29, 1
  %32 = zext i32 %29 to i64
  %33 = getelementptr inbounds ptr, ptr %30, i64 %32
  %34 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !150
  %35 = ptrtoint ptr %34 to i64
  %36 = ptrtoint ptr %33 to i64
  %37 = sub i64 %35, %36
  %38 = lshr exact i64 %37, 3
  %39 = trunc i64 %38 to i32
  br label %71

40:                                               ; preds = %23
  %41 = load i32, ptr %4, align 16
  %42 = icmp ult i32 %41, 41
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr i8, ptr %45, i64 8
  store ptr %46, ptr %44, align 8
  %47 = load i32, ptr %45, align 4
  br label %62

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %50 = load ptr, ptr %49, align 16
  %51 = zext nneg i32 %41 to i64
  %52 = getelementptr i8, ptr %50, i64 %51
  %53 = add nuw nsw i32 %41, 8
  store i32 %53, ptr %4, align 16
  %54 = load i32, ptr %52, align 4
  %55 = icmp ult i32 %41, 33
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %58 = load ptr, ptr %57, align 16
  %59 = zext nneg i32 %53 to i64
  %60 = getelementptr i8, ptr %58, i64 %59
  %61 = add nuw nsw i32 %41, 16
  store i32 %61, ptr %4, align 16
  br label %67

62:                                               ; preds = %43, %48
  %63 = phi i32 [ %47, %43 ], [ %54, %48 ]
  %64 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr i8, ptr %65, i64 8
  store ptr %66, ptr %64, align 8
  br label %67

67:                                               ; preds = %62, %56
  %68 = phi i32 [ %54, %56 ], [ %63, %62 ]
  %69 = phi ptr [ %60, %56 ], [ %65, %62 ]
  %70 = load i32, ptr %69, align 4
  br label %71

71:                                               ; preds = %67, %26
  %72 = phi i32 [ %31, %26 ], [ %70, %67 ]
  %73 = phi i32 [ %39, %26 ], [ %68, %67 ]
  %74 = and i32 %0, 31
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %101, label %76, !prof !331

76:                                               ; preds = %71
  %77 = load i32, ptr %4, align 16
  %78 = icmp ult i32 %77, 41
  br i1 %78, label %79, label %85

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
  br i1 %92, label %93, label %96, !prof !484

93:                                               ; preds = %89
  %94 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %91, ptr noundef nonnull dereferenceable(7) @.str.82, i64 7)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %101, label %96, !prof !484

96:                                               ; preds = %93, %89
  %97 = load ptr, ptr @PL_stack_base, align 8, !tbaa !150
  %98 = zext i32 %72 to i64
  %99 = getelementptr inbounds ptr, ptr %97, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !150
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.83, ptr noundef %91, ptr noundef %100, ptr noundef nonnull @.str.82) #39
  br label %101

101:                                              ; preds = %93, %96, %71
  %102 = lshr i32 %0, 8
  %103 = and i32 %102, 255
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %122, label %105, !prof !484

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
  call fastcc void @S_xs_version_bootcheck(i32 noundef %73, i32 noundef %72, ptr noundef %120, i64 noundef %121) #39
  br label %122

122:                                              ; preds = %118, %101
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #45
  ret i32 %72
}

; Function Attrs: optsize
declare void @Perl_noperl_die(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: optsize
declare void @Perl_save_pptr(ptr noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @Perl_gv_fetchfile(ptr noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_xs_version_bootcheck(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 !prof !142 !PGOFuncName !485 {
  %5 = load ptr, ptr @PL_stack_base, align 8, !tbaa !150
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !150
  %9 = icmp ugt i32 %0, 1
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = add i32 %1, 1
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %5, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !150
  br label %33

15:                                               ; preds = %4
  %16 = tail call ptr (ptr, ...) @Perl_form(ptr noundef nonnull @.str.88, ptr noundef %8, ptr noundef nonnull @.str.87) #39
  %17 = tail call ptr @Perl_get_sv(ptr noundef %16, i32 noundef 0) #40
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !188
  %22 = and i32 %21, 65280
  %23 = icmp ne i32 %22, 0
  %24 = and i32 %21, 255
  %25 = icmp eq i32 %24, 8
  %26 = or i1 %23, %25
  %27 = and i32 %21, 16777471
  %28 = icmp eq i32 %27, 16777226
  %29 = or i1 %28, %26
  br i1 %29, label %37, label %30

30:                                               ; preds = %19, %15
  %31 = tail call ptr (ptr, ...) @Perl_form(ptr noundef nonnull @.str.88, ptr noundef %8, ptr noundef nonnull @.str.89) #39
  %32 = tail call ptr @Perl_get_sv(ptr noundef %31, i32 noundef 0) #40
  br label %33

33:                                               ; preds = %30, %10
  %34 = phi ptr [ null, %10 ], [ @.str.89, %30 ]
  %35 = phi ptr [ %14, %10 ], [ %32, %30 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %61, label %37

37:                                               ; preds = %19, %33
  %38 = phi ptr [ %35, %33 ], [ %17, %19 ]
  %39 = phi ptr [ %34, %33 ], [ @.str.87, %19 ]
  %40 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %2, i64 noundef %3, i32 noundef 524288) #40
  %41 = tail call i32 @Perl_sv_isobject(ptr noundef nonnull %38) #40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = tail call zeroext i1 @Perl_sv_derived_from(ptr noundef nonnull %38, ptr noundef nonnull @.str.53) #40
  br i1 %44, label %48, label %45

45:                                               ; preds = %43, %37
  %46 = tail call ptr @Perl_new_version(ptr noundef nonnull %38) #39
  %47 = tail call ptr @Perl_sv_2mortal(ptr noundef %46) #40
  br label %48

48:                                               ; preds = %43, %45
  %49 = phi ptr [ %47, %45 ], [ %38, %43 ]
  %50 = tail call ptr @Perl_upg_version(ptr noundef %40, i1 noundef zeroext false) #39
  %51 = tail call i32 @Perl_vcmp(ptr noundef %49, ptr noundef %40) #39
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %48
  %54 = tail call ptr @Perl_vstringify(ptr noundef %40) #39
  %55 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.90, ptr noundef %8, ptr noundef %54) #40
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %54) #39
  %56 = tail call ptr @Perl_vstringify(ptr noundef %49) #39
  br i1 %9, label %58, label %57

57:                                               ; preds = %53
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %55, ptr noundef nonnull @.str.91, ptr noundef %8, ptr noundef %39, ptr noundef %56) #40
  br label %59

58:                                               ; preds = %53
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %55, ptr noundef nonnull @.str.92, ptr noundef %56) #40
  br label %59

59:                                               ; preds = %58, %57
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %56) #39
  %60 = tail call ptr @Perl_sv_2mortal(ptr noundef %55) #40
  tail call void @Perl_croak_sv(ptr noundef %55) #39
  br label %61

61:                                               ; preds = %48, %59, %33
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local i64 @Perl_my_strlcat(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #27 !prof !142 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #44
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #44
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
  store i8 0, ptr %16, align 1, !tbaa !155
  br label %17

17:                                               ; preds = %10, %3
  %18 = add i64 %5, %4
  ret i64 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_get_db_sub(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !142 {
  %3 = load ptr, ptr @PL_DBsub, align 8, !tbaa !150
  %4 = getelementptr inbounds %struct.gv, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !155
  %6 = load ptr, ptr %5, align 8, !tbaa !150
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %3, i32 noundef 0) #40
  %10 = getelementptr inbounds %struct.gv, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !155
  %12 = load ptr, ptr %11, align 8, !tbaa !150
  br label %13

13:                                               ; preds = %2, %8
  %14 = phi ptr [ %12, %8 ], [ %6, %2 ]
  %15 = load i8, ptr @PL_tainted, align 1, !tbaa !144, !range !148, !noundef !149
  %16 = icmp eq i8 %15, 0
  store i8 0, ptr @PL_tainted, align 1, !tbaa !144
  tail call void @Perl_save_item(ptr noundef %14) #40
  %17 = load i32, ptr @PL_perldb, align 4, !tbaa !163
  %18 = and i32 %17, 64
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %112

20:                                               ; preds = %13
  %21 = tail call fastcc ptr @S_CvGV(ptr noundef %1) #39
  %22 = icmp eq ptr %0, null
  %23 = load ptr, ptr %1, align 8, !tbaa !304
  %24 = getelementptr inbounds %struct.xpvcv, ptr %23, i64 0, i32 12
  %25 = load i32, ptr %24, align 4, !tbaa !486
  %26 = and i32 %25, 65536
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %22, i1 %27, i1 false
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  tail call void @Perl_gv_efullname4(ptr noundef %14, ptr noundef %21, ptr noundef null, i1 noundef zeroext true) #40
  br label %127

30:                                               ; preds = %20
  %31 = and i32 %25, 65728
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %30
  %34 = load ptr, ptr %21, align 8, !tbaa !298
  %35 = getelementptr inbounds %struct.xpvgv, ptr %34, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !155
  %37 = getelementptr inbounds %struct.hek, ptr %36, i64 0, i32 2
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(4) @.str.84) #44
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %62, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.gv, ptr %21, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !155
  %43 = getelementptr inbounds %struct.gp, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !488
  %45 = icmp eq ptr %44, %1
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = tail call fastcc zeroext i1 @S_gv_has_usable_name(ptr noundef nonnull %21) #39
  br i1 %47, label %64, label %48

48:                                               ; preds = %46, %40
  %49 = load ptr, ptr %0, align 8, !tbaa !150
  %50 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !188
  %52 = and i32 %51, 255
  %53 = icmp eq i32 %52, 9
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.gv, ptr %49, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !155
  %57 = getelementptr inbounds %struct.gp, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !488
  %59 = icmp eq ptr %58, %1
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = tail call fastcc zeroext i1 @S_gv_has_usable_name(ptr noundef nonnull %49) #39
  br i1 %61, label %64, label %62

62:                                               ; preds = %60, %54, %48, %33, %30
  %63 = tail call ptr @Perl_newRV(ptr noundef nonnull %1) #40
  tail call void @Perl_sv_setsv_flags(ptr noundef %14, ptr noundef %63, i32 noundef 1538) #40
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %63) #39
  br label %127

64:                                               ; preds = %60, %46
  %65 = phi ptr [ %49, %60 ], [ %21, %46 ]
  %66 = load ptr, ptr %65, align 8, !tbaa !298
  %67 = getelementptr inbounds %struct.xpvgv, ptr %66, i64 0, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !155
  %69 = getelementptr inbounds %struct.hv, ptr %68, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !489
  %71 = and i32 %70, 33554432
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %97, label %73

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.hv, ptr %68, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !155
  %76 = load ptr, ptr %68, align 8, !tbaa !491
  %77 = getelementptr inbounds %struct.xpvhv, ptr %76, i64 0, i32 3
  %78 = load i64, ptr %77, align 8, !tbaa !492
  %79 = getelementptr ptr, ptr %75, i64 %78
  %80 = getelementptr ptr, ptr %79, i64 1
  %81 = load ptr, ptr %80, align 8, !tbaa !155
  %82 = icmp eq ptr %81, null
  br i1 %82, label %97, label %83

83:                                               ; preds = %73
  %84 = getelementptr i8, ptr %79, i64 36
  %85 = load i32, ptr %84, align 4, !tbaa !494
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load ptr, ptr %81, align 8, !tbaa !150
  br label %97

89:                                               ; preds = %83
  %90 = icmp slt i32 %85, -1
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = getelementptr inbounds ptr, ptr %81, i64 1
  %93 = load ptr, ptr %92, align 8, !tbaa !150
  br label %97

94:                                               ; preds = %89
  %95 = icmp eq i32 %85, -1
  %96 = select i1 %95, ptr null, ptr %81
  br label %97

97:                                               ; preds = %94, %64, %73, %87, %91
  %98 = phi ptr [ %88, %87 ], [ %93, %91 ], [ null, %73 ], [ null, %64 ], [ %96, %94 ]
  tail call void @Perl_sv_sethek(ptr noundef %14, ptr noundef %98) #40
  tail call void @Perl_sv_catpvn_flags(ptr noundef %14, ptr noundef nonnull @.str.85, i64 noundef 2, i32 noundef 2) #40
  %99 = load ptr, ptr %65, align 8, !tbaa !298
  %100 = getelementptr inbounds %struct.xpvgv, ptr %99, i64 0, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !155
  %102 = getelementptr inbounds %struct.hek, ptr %101, i64 0, i32 2
  %103 = getelementptr inbounds %struct.hek, ptr %101, i64 0, i32 1
  %104 = load i32, ptr %103, align 4, !tbaa !371
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, ptr %102, i64 %105
  %107 = getelementptr inbounds i8, ptr %106, i64 1
  %108 = load i8, ptr %107, align 1, !tbaa !155
  %109 = and i8 %108, 1
  %110 = icmp eq i8 %109, 0
  %111 = select i1 %110, i32 16384, i32 32768
  tail call void @Perl_sv_catpvn_flags(ptr noundef %14, ptr noundef nonnull %102, i64 noundef %105, i32 noundef %111) #40
  br label %127

112:                                              ; preds = %13
  %113 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %114 = load i32, ptr %113, align 4, !tbaa !188
  %115 = and i32 %114, 255
  %116 = icmp ult i32 %115, 5
  %117 = icmp ne i32 %115, 1
  %118 = and i1 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %14, i32 noundef 5) #40
  %120 = load i32, ptr %113, align 4, !tbaa !188
  br label %121

121:                                              ; preds = %119, %112
  %122 = phi i32 [ %120, %119 ], [ %114, %112 ]
  %123 = or i32 %122, 4352
  store i32 %123, ptr %113, align 4, !tbaa !188
  %124 = ptrtoint ptr %1 to i64
  %125 = load ptr, ptr %14, align 8, !tbaa !200
  %126 = getelementptr inbounds %struct.xpviv, ptr %125, i64 0, i32 4
  store i64 %124, ptr %126, align 8, !tbaa !155
  br label %127

127:                                              ; preds = %29, %97, %62, %121
  %128 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2
  %129 = load i32, ptr %128, align 4, !tbaa !188
  %130 = and i32 %129, 4194304
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %127
  %133 = tail call i32 @Perl_mg_set(ptr noundef nonnull %14) #40
  br label %134

134:                                              ; preds = %127, %132
  br i1 %16, label %136, label %135

135:                                              ; preds = %134
  store i8 1, ptr @PL_tainted, align 1, !tbaa !144
  br label %136

136:                                              ; preds = %134, %135
  ret void
}

; Function Attrs: optsize
declare void @Perl_save_item(ptr noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_CvGV(ptr noundef %0) unnamed_addr #0 !prof !142 !PGOFuncName !496 {
  %2 = load ptr, ptr %0, align 8, !tbaa !304
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !486
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %0) #40
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !155
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: optsize
declare void @Perl_gv_efullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i1 @S_gv_has_usable_name(ptr noundef readonly %0) unnamed_addr #0 !prof !142 !PGOFuncName !497 {
  %2 = load ptr, ptr %0, align 8, !tbaa !298
  %3 = getelementptr inbounds %struct.xpvgv, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !155
  %5 = icmp eq ptr %4, null
  br i1 %5, label %43, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hv, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !489
  %9 = and i32 %8, 33554432
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %43, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.hv, ptr %4, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !155
  %14 = load ptr, ptr %4, align 8, !tbaa !491
  %15 = getelementptr inbounds %struct.xpvhv, ptr %14, i64 0, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !492
  %17 = getelementptr ptr, ptr %13, i64 %16
  %18 = getelementptr ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !155
  %20 = icmp eq ptr %19, null
  br i1 %20, label %43, label %21

21:                                               ; preds = %11
  %22 = getelementptr i8, ptr %17, i64 36
  %23 = load i32, ptr %22, align 4, !tbaa !494
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %43, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.xpvgv, ptr %2, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !155
  %28 = getelementptr inbounds %struct.hek, ptr %27, i64 0, i32 2
  %29 = getelementptr inbounds %struct.hek, ptr %27, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !371
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, ptr %28, i64 %31
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !155
  %35 = and i8 %34, 1
  %36 = zext nneg i8 %35 to i32
  %37 = load i32, ptr %27, align 4, !tbaa !498
  %38 = tail call ptr @Perl_hv_common(ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %28, i64 noundef %31, i32 noundef %36, i32 noundef 32, ptr noundef null, i32 noundef %37) #40
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %25
  %41 = load ptr, ptr %38, align 8, !tbaa !150
  %42 = icmp eq ptr %41, %0
  br label %43

43:                                               ; preds = %6, %11, %21, %40, %25, %1
  %44 = phi i1 [ false, %25 ], [ false, %1 ], [ %42, %40 ], [ false, %21 ], [ false, %11 ], [ false, %6 ]
  ret i1 %44
}

; Function Attrs: optsize
declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare void @Perl_sv_sethek(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_my_dirfd(ptr noundef readnone %0) local_unnamed_addr #0 !prof !142 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.86) #39
  br label %4

4:                                                ; preds = %1, %3
  %5 = phi i32 [ 0, %3 ], [ -1, %1 ]
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_get_re_arg(ptr noundef %0) local_unnamed_addr #0 !prof !142 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !188
  %6 = and i32 %5, 14680064
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @Perl_mg_get(ptr noundef nonnull %0) #40
  %10 = load i32, ptr %4, align 4, !tbaa !188
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi i32 [ %10, %8 ], [ %5, %3 ]
  %13 = and i32 %12, 2048
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !155
  %18 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !188
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi i32 [ %19, %15 ], [ %12, %11 ]
  %22 = phi ptr [ %17, %15 ], [ %0, %11 ]
  %23 = and i32 %21, 255
  %24 = icmp eq i32 %23, 8
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %1
  br label %26

26:                                               ; preds = %20, %25
  %27 = phi ptr [ null, %25 ], [ %22, %20 ]
  ret ptr %27
}

; Function Attrs: optsize
declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @Perl_drand48_init_r(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #32 !prof !142 {
  %3 = zext i32 %1 to i64
  %4 = shl nuw nsw i64 %3, 16
  %5 = or disjoint i64 %4, 13070
  store i64 %5, ptr %0, align 8, !tbaa !203
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn uwtable
define dso_local double @Perl_drand48_r(ptr nocapture noundef %0) local_unnamed_addr #33 !prof !142 {
  %2 = load i64, ptr %0, align 8, !tbaa !203
  %3 = mul i64 %2, 25214903917
  %4 = add i64 %3, 11
  %5 = and i64 %4, 281474976710655
  store i64 %5, ptr %0, align 8, !tbaa !203
  %6 = uitofp i64 %5 to double
  %7 = tail call double @ldexp(double noundef %6, i32 noundef -48) #40
  ret double %7
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #34

; Function Attrs: optsize
declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @Perl_sv_mortalcopy_flags(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare void @Perl_push_scope() local_unnamed_addr #12

; Function Attrs: optsize
declare void @Perl_save_sptr(ptr noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @Perl_sv_2cv(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare void @Perl_pop_scope() local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @S_CvDEPTHp(ptr nocapture noundef readonly %0) unnamed_addr #35 !prof !142 !PGOFuncName !499 {
  %2 = load ptr, ptr %0, align 8, !tbaa !304
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 13
  ret ptr %3
}

; Function Attrs: optsize
declare void @Perl_save_re_context() local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @Perl_new_stackinfo(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @Perl_markstack_grow() local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare i32 @Perl_call_sv(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @Perl_get_sv(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_derived_from(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #36

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #36

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #37

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #36

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #36

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #36

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #16 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree noinline nounwind optsize memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #37 = { nofree nounwind willreturn memory(argmem: read) }
attributes #38 = { nounwind optsize allocsize(0) }
attributes #39 = { optsize }
attributes #40 = { nounwind optsize }
attributes #41 = { nounwind optsize willreturn memory(none) }
attributes #42 = { nounwind optsize allocsize(1) }
attributes #43 = { nounwind optsize allocsize(0,1) }
attributes #44 = { nounwind optsize willreturn memory(read) }
attributes #45 = { nounwind }
attributes #46 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!141}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140}
!35 = !{ptr @Perl_safesysfree, ptr @free, i64 9552730}
!36 = !{ptr @Perl_instr, ptr @strstr, i64 2}
!37 = !{ptr @Perl_fbm_compile, ptr @Perl_sv_catpvn_flags, i64 178}
!38 = !{ptr @Perl_fbm_compile, ptr @Perl_mg_find, i64 1}
!39 = !{ptr @Perl_fbm_compile, ptr @Perl_sv_pvn_force_flags, i64 1}
!40 = !{ptr @Perl_fbm_compile, ptr @Perl_sv_2pv_flags, i64 1}
!41 = !{ptr @Perl_fbm_compile, ptr @Perl_sv_upgrade, i64 1005}
!42 = !{ptr @Perl_fbm_compile, ptr @Perl_sv_magicext, i64 1006}
!43 = !{ptr @Perl_fbm_compile, ptr @Perl_safesysmalloc, i64 153}
!44 = !{ptr @Perl_fbm_instr, ptr @Perl_sv_2pv_flags, i64 1}
!45 = !{ptr @Perl_fbm_instr, ptr @bcmp, i64 118439}
!46 = !{ptr @Perl_fbm_instr, ptr @Perl_ninstr, i64 2}
!47 = !{ptr @Perl_fbm_instr, ptr @Perl_mg_find, i64 656855}
!48 = !{ptr @Perl_savepv, ptr @strlen, i64 42}
!49 = !{ptr @Perl_savepv, ptr @Perl_safesysmalloc, i64 42}
!50 = !{ptr @Perl_savepvn, ptr @Perl_safesysmalloc, i64 20872}
!51 = !{ptr @Perl_savesharedpv, ptr @strlen, i64 770}
!52 = !{ptr @Perl_savesharedpv, ptr @malloc, i64 770}
!53 = !{ptr @Perl_savesharedpv, ptr @Perl_croak_no_mem, i64 1}
!54 = !{ptr @Perl_savesvpv, ptr @Perl_sv_2pv_flags, i64 1}
!55 = !{ptr @Perl_savesvpv, ptr @Perl_safesysmalloc, i64 1}
!56 = !{ptr @Perl_form, ptr @Perl_vform, i64 1}
!57 = !{ptr @Perl_vform, ptr @S_mess_alloc, i64 1}
!58 = !{ptr @Perl_vform, ptr @strlen, i64 1}
!59 = !{ptr @Perl_vform, ptr @Perl_sv_vsetpvfn, i64 1}
!60 = !{ptr @S_mess_alloc, ptr @Perl_newSVpvn_flags, i64 48}
!61 = !{ptr @Perl_vmess, ptr @S_mess_alloc, i64 48}
!62 = !{ptr @Perl_vmess, ptr @strlen, i64 48}
!63 = !{ptr @Perl_vmess, ptr @Perl_sv_vsetpvfn, i64 48}
!64 = !{ptr @Perl_vmess, ptr @Perl_mess_sv, i64 48}
!65 = !{ptr @Perl_closest_cop, ptr @Perl_closest_cop, i64 1004}
!66 = !{ptr @Perl_mess_sv, ptr @S_mess_alloc, i64 2}
!67 = !{ptr @Perl_mess_sv, ptr @Perl_sv_copypv_flags, i64 2}
!68 = !{ptr @Perl_mess_sv, ptr @Perl_closest_cop, i64 46}
!69 = !{ptr @Perl_mess_sv, ptr @Perl_sv_catpvf, i64 45}
!70 = !{ptr @Perl_mess_sv, ptr @Perl_sv_catpvn_flags, i64 47}
!71 = !{ptr @Perl_die, ptr @Perl_vcroak, i64 48}
!72 = !{ptr @Perl_vcroak, ptr @Perl_vmess, i64 47}
!73 = !{ptr @Perl_vcroak, ptr @Perl_gv_add_by_type, i64 1}
!74 = !{ptr @Perl_vcroak, ptr @Perl_mess_sv, i64 1}
!75 = !{ptr @Perl_vcroak, ptr @S_with_queued_errors, i64 48}
!76 = !{ptr @Perl_vcroak, ptr @S_invoke_exception_hook, i64 48}
!77 = !{ptr @Perl_vcroak, ptr @Perl_die_unwind, i64 48}
!78 = !{ptr @S_invoke_exception_hook, ptr @Perl_push_scope, i64 1}
!79 = !{ptr @S_invoke_exception_hook, ptr @Perl_save_sptr, i64 1}
!80 = !{ptr @S_invoke_exception_hook, ptr @Perl_sv_2cv, i64 1}
!81 = !{ptr @S_invoke_exception_hook, ptr @Perl_pop_scope, i64 1}
!82 = !{ptr @S_invoke_exception_hook, ptr @S_CvDEPTHp, i64 1}
!83 = !{ptr @Perl_ckwarn_d, ptr @S_ckwarn_common, i64 1}
!84 = !{ptr @Perl_ckwarn, ptr @S_ckwarn_common, i64 498731}
!85 = !{ptr @Perl_new_warnings_bitfield, ptr @malloc, i64 5}
!86 = !{ptr @Perl_new_warnings_bitfield, ptr @realloc, i64 2}
!87 = !{ptr @Perl_repeatcpy, ptr @S_croak_memory_wrap, i64 1}
!88 = !{ptr @Perl_find_script, ptr @Perl_delimcpy, i64 2}
!89 = !{ptr @Perl_find_script, ptr @strlen, i64 2}
!90 = !{ptr @Perl_find_script, ptr @Perl_savepv, i64 1}
!91 = !{ptr @Perl_my_fflush_all, ptr @Perl_PerlIO_flush, i64 1}
!92 = !{ptr @Perl_scan_version, ptr @Perl_prescan_version, i64 76}
!93 = !{ptr @Perl_scan_version, ptr @Perl_croak, i64 1}
!94 = !{ptr @Perl_scan_version, ptr @Perl_newSV_type, i64 76}
!95 = !{ptr @Perl_scan_version, ptr @Perl_newSVrv, i64 76}
!96 = !{ptr @Perl_scan_version, ptr @Perl_sv_upgrade, i64 76}
!97 = !{ptr @Perl_scan_version, ptr @Perl_newSViv, i64 146}
!98 = !{ptr @Perl_scan_version, ptr @Perl_hv_common, i64 158}
!99 = !{ptr @Perl_scan_version, ptr @Perl_ck_warner, i64 2}
!100 = !{ptr @Perl_scan_version, ptr @Perl_av_push, i64 140}
!101 = !{ptr @Perl_scan_version, ptr @Perl_newSVpvn, i64 76}
!102 = !{ptr @Perl_scan_version, ptr @Perl_newRV_noinc, i64 76}
!103 = !{ptr @Perl_scan_version, ptr @strcmp, i64 1}
!104 = !{ptr @Perl_upg_version, ptr @Perl_my_snprintf, i64 65}
!105 = !{ptr @Perl_upg_version, ptr @Perl_savepvn, i64 74}
!106 = !{ptr @Perl_upg_version, ptr @Perl_save_pushptr, i64 75}
!107 = !{ptr @Perl_upg_version, ptr @Perl_ck_warner, i64 2}
!108 = !{ptr @Perl_upg_version, ptr @Perl_savesvpv, i64 1}
!109 = !{ptr @Perl_upg_version, ptr @Perl_newSV, i64 1}
!110 = !{ptr @Perl_upg_version, ptr @Perl_sv_catpvf, i64 1}
!111 = !{ptr @Perl_upg_version, ptr @S_SvREFCNT_dec, i64 65}
!112 = !{ptr @Perl_upg_version, ptr @Perl_mg_find, i64 1}
!113 = !{ptr @Perl_upg_version, ptr @Perl_sv_2pv_flags, i64 1}
!114 = !{ptr @Perl_upg_version, ptr @Perl_croak, i64 1}
!115 = !{ptr @Perl_upg_version, ptr @Perl_scan_version, i64 76}
!116 = !{ptr @Perl_my_snprintf, ptr @vsprintf, i64 188}
!117 = !{ptr @Perl_my_snprintf, ptr @Perl_croak, i64 1}
!118 = !{ptr @Perl_vverify, ptr @Perl_hv_common, i64 127}
!119 = !{ptr @Perl_vnumify, ptr @Perl_vverify, i64 1}
!120 = !{ptr @Perl_vnumify, ptr @Perl_hv_common_key_len, i64 1}
!121 = !{ptr @Perl_vnumify, ptr @Perl_hv_common, i64 2}
!122 = !{ptr @Perl_vnumify, ptr @Perl_av_len, i64 1}
!123 = !{ptr @Perl_vstringify, ptr @Perl_vverify, i64 5}
!124 = !{ptr @Perl_vstringify, ptr @Perl_croak, i64 1}
!125 = !{ptr @Perl_vstringify, ptr @Perl_hv_common, i64 5}
!126 = !{ptr @Perl_vstringify, ptr @Perl_newSVsv, i64 4}
!127 = !{ptr @Perl_vstringify, ptr @Perl_hv_common_key_len, i64 1}
!128 = !{ptr @Perl_vcmp, ptr @Perl_vverify, i64 122}
!129 = !{ptr @Perl_vcmp, ptr @Perl_croak, i64 2}
!130 = !{ptr @Perl_vcmp, ptr @Perl_hv_common, i64 122}
!131 = !{ptr @Perl_vcmp, ptr @Perl_hv_common_key_len, i64 122}
!132 = !{ptr @Perl_vcmp, ptr @Perl_av_len, i64 122}
!133 = !{ptr @Perl_vcmp, ptr @Perl_av_fetch, i64 249}
!134 = !{ptr @Perl_vcmp, ptr @Perl_sv_2iv_flags, i64 9}
!135 = !{ptr @Perl_xs_handshake, ptr @Perl_noperl_die, i64 1}
!136 = !{ptr @Perl_xs_handshake, ptr @Perl_save_pptr, i64 5}
!137 = !{ptr @Perl_xs_handshake, ptr @Perl_gv_fetchfile, i64 5}
!138 = !{ptr @Perl_xs_handshake, ptr @bcmp, i64 5}
!139 = !{ptr @Perl_xs_handshake, ptr @Perl_croak, i64 1}
!140 = !{ptr @Perl_xs_handshake, ptr @S_xs_version_bootcheck, i64 1}
!141 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!142 = !{!"function_entry_count", i64 0}
!143 = !{!"branch_weights", i32 1, i32 8173029}
!144 = !{!145, !145, i64 0}
!145 = !{!"_Bool", !146, i64 0}
!146 = !{!"omnipotent char", !147, i64 0}
!147 = !{!"Simple C/C++ TBAA"}
!148 = !{i8 0, i8 2}
!149 = !{}
!150 = !{!151, !151, i64 0}
!151 = !{!"any pointer", !146, i64 0}
!152 = !{!153, !154, i64 12}
!153 = !{!"gv", !151, i64 0, !154, i64 8, !154, i64 12, !146, i64 16}
!154 = !{!"int", !146, i64 0}
!155 = !{!146, !146, i64 0}
!156 = !{!157, !151, i64 8}
!157 = !{!"gp", !151, i64 0, !151, i64 8, !151, i64 16, !154, i64 24, !154, i64 28, !151, i64 32, !151, i64 40, !151, i64 48, !151, i64 56, !154, i64 64, !154, i64 67, !151, i64 72}
!158 = !{!159, !151, i64 0}
!159 = !{!"io", !151, i64 0, !154, i64 8, !154, i64 12, !146, i64 16}
!160 = !{!161, !151, i64 40}
!161 = !{!"xpvio", !151, i64 0, !146, i64 8, !162, i64 16, !146, i64 24, !146, i64 32, !151, i64 40, !146, i64 48, !162, i64 56, !162, i64 64, !162, i64 72, !151, i64 80, !151, i64 88, !151, i64 96, !151, i64 104, !151, i64 112, !151, i64 120, !146, i64 128, !146, i64 129}
!162 = !{!"long", !146, i64 0}
!163 = !{!154, !154, i64 0}
!164 = !{!"branch_weights", i32 1, i32 2165142}
!165 = !{!"branch_weights", i32 4808, i32 2160335}
!166 = !{!"branch_weights", i32 1, i32 2160335}
!167 = !{!"function_entry_count", i64 459491774}
!168 = !{!"branch_weights", i32 449939046, i32 9552730}
!169 = !{!"branch_weights", i32 1488788, i32 1}
!170 = !{!"branch_weights", i32 1, i32 1488788}
!171 = !{!"branch_weights", i32 -2130426565, i32 2907}
!172 = !{!"util.c:S_croak_memory_wrap"}
!173 = !{!"function_entry_count", i64 50}
!174 = !{!"branch_weights", i32 127, i32 1}
!175 = !{!"branch_weights", i32 1, i32 388}
!176 = !{!"branch_weights", i32 51, i32 338}
!177 = !{!"branch_weights", i32 338, i32 1}
!178 = !{!"branch_weights", i32 49537, i32 127}
!179 = distinct !{!179, !180}
!180 = !{!"llvm.loop.mustprogress"}
!181 = !{!"branch_weights", i32 51, i32 1}
!182 = !{!"function_entry_count", i64 2}
!183 = distinct !{!183, !180}
!184 = distinct !{!184, !180}
!185 = distinct !{!185, !180}
!186 = distinct !{!186, !180}
!187 = !{!"function_entry_count", i64 1009}
!188 = !{!189, !154, i64 12}
!189 = !{!"sv", !151, i64 0, !154, i64 8, !154, i64 12, !146, i64 16}
!190 = !{!"branch_weights", i32 1, i32 1010}
!191 = !{!"branch_weights", i32 1020100, i32 1024142}
!192 = !{!"branch_weights", i32 1010, i32 1}
!193 = !{!"branch_weights", i32 833, i32 178}
!194 = !{!"branch_weights", i32 178, i32 1}
!195 = !{!"branch_weights", i32 0, i32 -2147483648}
!196 = !{!197, !162, i64 24}
!197 = !{!"magic", !151, i64 0, !151, i64 8, !198, i64 16, !146, i64 18, !146, i64 19, !162, i64 24, !151, i64 32, !151, i64 40}
!198 = !{!"short", !146, i64 0}
!199 = !{!"branch_weights", i32 1020100, i32 2021}
!200 = !{!189, !151, i64 0}
!201 = !{!202, !162, i64 16}
!202 = !{!"xpv", !151, i64 0, !146, i64 8, !162, i64 16, !146, i64 24}
!203 = !{!162, !162, i64 0}
!204 = !{!"branch_weights", i32 154, i32 857}
!205 = !{!197, !151, i64 40}
!206 = !{!"branch_weights", i32 1, i32 153}
!207 = !{!"branch_weights", i32 1077, i32 235}
!208 = !{!"branch_weights", i32 153, i32 1158}
!209 = distinct !{!209, !180}
!210 = !{!"function_entry_count", i64 4280858}
!211 = !{!"branch_weights", i32 4280859, i32 1}
!212 = !{!"branch_weights", i32 119442, i32 4161418}
!213 = !{!"branch_weights", i32 -728369455, i32 59721}
!214 = !{!"branch_weights", i32 1001, i32 118442}
!215 = !{!"branch_weights", i32 118442, i32 1}
!216 = !{!"branch_weights", i32 656858, i32 1, i32 3291683, i32 212879}
!217 = !{!"branch_weights", i32 -802828736, i32 157336060}
!218 = !{!"branch_weights", i32 1369464, i32 1}
!219 = !{!"branch_weights", i32 533, i32 141380}
!220 = !{!"branch_weights", i32 1780308, i32 88029695}
!221 = !{!"branch_weights", i32 1369464, i32 88440538}
!222 = distinct !{!222, !180}
!223 = !{!"branch_weights", i32 1, i32 1369465}
!224 = !{!"branch_weights", i32 1227506645, i32 -1656173992}
!225 = !{!"branch_weights", i32 1, i32 145294}
!226 = !{!"branch_weights", i32 118442, i32 26853}
!227 = !{!"branch_weights", i32 91, i32 67496}
!228 = !{!"branch_weights", i32 1, i32 67150}
!229 = !{!"branch_weights", i32 1, i32 175}
!230 = !{!"branch_weights", i32 1, i32 1024596}
!231 = !{!"branch_weights", i32 67150, i32 957446}
!232 = distinct !{!232, !180}
!233 = !{!"branch_weights", i32 616, i32 1024251}
!234 = !{!"branch_weights", i32 346, i32 271}
!235 = !{!"branch_weights", i32 1, i32 271}
!236 = !{!"branch_weights", i32 4, i32 319}
!237 = !{!"branch_weights", i32 4, i32 1}
!238 = !{!"branch_weights", i32 175, i32 469}
!239 = distinct !{!239, !180}
!240 = !{!"branch_weights", i32 1, i32 67583}
!241 = !{!"branch_weights", i32 656858, i32 1}
!242 = !{!"branch_weights", i32 10263, i32 -924167045}
!243 = !{!"branch_weights", i32 64915, i32 3129114}
!244 = !{!"branch_weights", i32 2514155, i32 614960}
!245 = !{!"branch_weights", i32 41899, i32 186446}
!246 = !{!"branch_weights", i32 163430, i32 23017}
!247 = distinct !{!247, !180}
!248 = !{!"branch_weights", i32 153213, i32 461748}
!249 = !{!"branch_weights", i32 1, i32 153213}
!250 = !{!"function_entry_count", i64 11970}
!251 = !{!"branch_weights", i32 1, i32 11970}
!252 = !{!"branch_weights", i32 126101, i32 1}
!253 = !{!"branch_weights", i32 11970, i32 114131}
!254 = distinct !{!254, !180}
!255 = !{!"function_entry_count", i64 205380}
!256 = !{!"branch_weights", i32 1, i32 166093}
!257 = !{!"branch_weights", i32 1360485, i32 41691}
!258 = !{!"branch_weights", i32 2404, i32 39288}
!259 = !{!"branch_weights", i32 166093, i32 1236082}
!260 = distinct !{!260, !180}
!261 = distinct !{!261, !180}
!262 = !{!"function_entry_count", i64 43}
!263 = !{!"branch_weights", i32 1, i32 44}
!264 = !{!"function_entry_count", i64 20872}
!265 = !{!"branch_weights", i32 1, i32 20873}
!266 = !{!"function_entry_count", i64 771}
!267 = !{!"branch_weights", i32 1, i32 772}
!268 = !{!"function_entry_count", i64 1}
!269 = !{!"branch_weights", i32 1, i32 2}
!270 = !{!"function_entry_count", i64 49}
!271 = !{!"util.c:S_mess_alloc"}
!272 = !{!"branch_weights", i32 1, i32 50}
!273 = !{!189, !154, i64 8}
!274 = !{!"function_entry_count", i64 48}
!275 = !{!"function_entry_count", i64 344}
!276 = !{!"branch_weights", i32 119025, i32 691}
!277 = !{!"branch_weights", i32 1, i32 345}
!278 = !{!279, !151, i64 0}
!279 = !{!"op", !151, i64 0, !151, i64 8, !151, i64 16, !162, i64 24, !154, i64 32, !154, i64 33, !154, i64 33, !154, i64 33, !154, i64 33, !154, i64 33, !154, i64 33, !154, i64 33, !146, i64 34, !146, i64 35}
!280 = !{!"branch_weights", i32 31, i32 315}
!281 = !{!"branch_weights", i32 31, i32 1}
!282 = !{!"branch_weights", i32 79, i32 195}
!283 = !{!279, !146, i64 34}
!284 = !{!"branch_weights", i32 101, i32 167}
!285 = !{!"branch_weights", i32 1, i32 131}
!286 = !{!"branch_weights", i32 131, i32 937}
!287 = distinct !{!287, !180}
!288 = !{!"branch_weights", i32 65, i32 203}
!289 = !{!279, !162, i64 24}
!290 = !{!"branch_weights", i32 1, i32 65}
!291 = !{!"branch_weights", i32 49, i32 1}
!292 = !{!"branch_weights", i32 2401, i32 99}
!293 = !{!"branch_weights", i32 1, i32 49}
!294 = !{!295, !151, i64 8}
!295 = !{!"cop", !151, i64 0, !151, i64 8, !151, i64 16, !162, i64 24, !154, i64 32, !154, i64 33, !154, i64 33, !154, i64 33, !154, i64 33, !154, i64 33, !154, i64 33, !154, i64 33, !146, i64 34, !146, i64 35, !154, i64 36, !151, i64 40, !151, i64 48, !154, i64 56, !154, i64 60, !151, i64 64, !151, i64 72}
!296 = !{!295, !154, i64 36}
!297 = !{!295, !151, i64 48}
!298 = !{!153, !151, i64 0}
!299 = !{!"branch_weights", i32 99, i32 1}
!300 = !{!159, !154, i64 12}
!301 = !{!153, !154, i64 8}
!302 = !{!"util.c:S_with_queued_errors"}
!303 = !{!"util.c:S_invoke_exception_hook"}
!304 = !{!305, !151, i64 0}
!305 = !{!"cv", !151, i64 0, !154, i64 8, !154, i64 12, !146, i64 16}
!306 = !{!307, !151, i64 24}
!307 = !{!"stackinfo", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !154, i64 32, !154, i64 36, !154, i64 40, !154, i64 44}
!308 = !{!307, !151, i64 16}
!309 = !{!307, !154, i64 40}
!310 = !{!307, !154, i64 32}
!311 = !{!307, !151, i64 0}
!312 = !{!313, !151, i64 0}
!313 = !{!"av", !151, i64 0, !154, i64 8, !154, i64 12, !146, i64 16}
!314 = !{!315, !162, i64 16}
!315 = !{!"xpvav", !151, i64 0, !146, i64 8, !162, i64 16, !162, i64 24, !151, i64 32}
!316 = !{!315, !162, i64 24}
!317 = !{!"function_entry_count", i64 12}
!318 = !{!295, !151, i64 64}
!319 = !{!"branch_weights", i32 13, i32 1}
!320 = !{!321, !146, i64 239}
!321 = !{!"yy_parser", !151, i64 0, !146, i64 8, !154, i64 16, !154, i64 20, !154, i64 24, !154, i64 28, !151, i64 32, !151, i64 40, !154, i64 48, !154, i64 52, !151, i64 56, !151, i64 64, !146, i64 72, !146, i64 73, !146, i64 74, !146, i64 75, !154, i64 76, !151, i64 80, !151, i64 88, !151, i64 96, !198, i64 104, !198, i64 106, !154, i64 108, !151, i64 112, !154, i64 120, !154, i64 124, !146, i64 128, !146, i64 129, !145, i64 130, !145, i64 131, !154, i64 132, !322, i64 136, !151, i64 160, !151, i64 168, !151, i64 176, !151, i64 184, !151, i64 192, !151, i64 200, !151, i64 208, !151, i64 216, !151, i64 224, !154, i64 232, !198, i64 236, !146, i64 238, !146, i64 239, !151, i64 240, !151, i64 248, !151, i64 256, !146, i64 264, !146, i64 272, !146, i64 312, !154, i64 332, !151, i64 336, !146, i64 344, !154, i64 600, !154, i64 604, !146, i64 608, !146, i64 609, !154, i64 610, !154, i64 610, !154, i64 610, !154, i64 610}
!322 = !{!"_sublex_info", !146, i64 0, !198, i64 2, !151, i64 8, !151, i64 16}
!323 = !{!"function_entry_count", i64 457651009}
!324 = !{!"branch_weights", i32 457152280, i32 498731}
!325 = !{!"function_entry_count", i64 498730}
!326 = !{!"util.c:S_ckwarn_common"}
!327 = !{!"branch_weights", i32 -420402780, i32 5944504, i32 7780}
!328 = !{!"branch_weights", i32 -423491738, i32 7774}
!329 = distinct !{!329, !180}
!330 = !{!"function_entry_count", i64 6}
!331 = !{!"branch_weights", i32 1, i32 7}
!332 = !{!"branch_weights", i32 2, i32 1}
!333 = !{!"branch_weights", i32 1, i32 127}
!334 = !{!"branch_weights", i32 1, i32 62}
!335 = !{!"branch_weights", i32 127, i32 3841}
!336 = distinct !{!336, !180}
!337 = distinct !{!337, !180}
!338 = distinct !{!338, !180}
!339 = !{!"branch_weights", i32 1, i32 1}
!340 = !{!"branch_weights", i32 1, i32 0}
!341 = distinct !{!341, !180}
!342 = distinct !{!342, !180}
!343 = distinct !{!343, !180}
!344 = distinct !{!344, !180}
!345 = distinct !{!345, !180}
!346 = distinct !{!346, !180}
!347 = distinct !{!347, !180}
!348 = !{!"branch_weights", i32 17, i32 1}
!349 = !{!"util.c:sig_trap"}
!350 = distinct !{!350, !180}
!351 = !{!"function_entry_count", i64 67}
!352 = !{!"util.c:S_SvREFCNT_dec"}
!353 = !{!"branch_weights", i32 68, i32 1}
!354 = !{!"function_entry_count", i64 5}
!355 = !{!"branch_weights", i32 1, i32 6}
!356 = !{!"branch_weights", i32 4, i32 3}
!357 = !{!"branch_weights", i32 1, i32 3}
!358 = !{!"branch_weights", i32 191, i32 1}
!359 = !{!"branch_weights", i32 159, i32 1}
!360 = !{!"branch_weights", i32 10113, i32 159}
!361 = distinct !{!361, !180}
!362 = !{!"branch_weights", i32 191, i32 129}
!363 = distinct !{!363, !180}
!364 = distinct !{!364, !180}
!365 = !{!366, !162, i64 0}
!366 = !{!"stat", !162, i64 0, !162, i64 8, !162, i64 16, !154, i64 24, !154, i64 28, !154, i64 32, !154, i64 36, !162, i64 40, !162, i64 48, !162, i64 56, !162, i64 64, !367, i64 72, !367, i64 88, !367, i64 104, !146, i64 120}
!367 = !{!"timespec", !162, i64 0, !162, i64 8}
!368 = distinct !{!368, !180}
!369 = !{!366, !154, i64 24}
!370 = !{!157, !151, i64 56}
!371 = !{!372, !154, i64 4}
!372 = !{!"hek", !154, i64 0, !154, i64 4, !146, i64 8}
!373 = !{!161, !146, i64 128}
!374 = !{!161, !146, i64 129}
!375 = !{!376, !154, i64 20}
!376 = !{!"tm", !154, i64 0, !154, i64 4, !154, i64 8, !154, i64 12, !154, i64 16, !154, i64 20, !154, i64 24, !154, i64 28, !154, i64 32, !162, i64 40, !151, i64 48}
!377 = !{!376, !154, i64 16}
!378 = !{!376, !154, i64 12}
!379 = !{!376, !154, i64 0}
!380 = !{!376, !154, i64 4}
!381 = !{!376, !154, i64 8}
!382 = !{!376, !154, i64 28}
!383 = !{!376, !154, i64 24}
!384 = !{!"function_entry_count", i64 196}
!385 = !{!"branch_weights", i32 121, i32 77}
!386 = !{!"branch_weights", i32 2091704853, i32 55778795}
!387 = !{!"branch_weights", i32 3, i32 195}
!388 = !{!"branch_weights", i32 3, i32 1}
!389 = !{!"branch_weights", i32 536905586, i32 -536905586}
!390 = !{!"branch_weights", i32 3, i32 3}
!391 = distinct !{!391, !180}
!392 = !{!"branch_weights", i32 5, i32 7}
!393 = !{!"branch_weights", i32 1, i32 15}
!394 = distinct !{!394, !180}
!395 = !{!"branch_weights", i32 15, i32 6, i32 15}
!396 = !{!"branch_weights", i32 127, i32 513}
!397 = distinct !{!397, !180}
!398 = !{!"branch_weights", i32 121, i32 75}
!399 = !{!"branch_weights", i32 2854995, i32 23912, i32 23716, i32 14641}
!400 = !{!"branch_weights", i32 11028399, i32 2136455249}
!401 = !{!"branch_weights", i32 195, i32 75}
!402 = distinct !{!402, !180}
!403 = !{!"branch_weights", i32 15125, i32 1091412, i32 76250, i32 1830125}
!404 = !{!"branch_weights", i32 71, i32 1}
!405 = !{!"branch_weights", i32 121, i32 5}
!406 = !{!"branch_weights", i32 1, i32 121}
!407 = !{!"branch_weights", i32 1, i32 141}
!408 = !{!"branch_weights", i32 61504, i32 249, i32 248}
!409 = !{!"branch_weights", i32 141, i32 355}
!410 = distinct !{!410, !180}
!411 = !{!"branch_weights", i32 1, i32 77}
!412 = distinct !{!412, !180}
!413 = !{!"function_entry_count", i64 76}
!414 = distinct !{!414, !180}
!415 = !{!"branch_weights", i32 77, i32 1}
!416 = !{!"branch_weights", i32 75, i32 3}
!417 = !{!"branch_weights", i32 75, i32 5853}
!418 = !{!"branch_weights", i32 77, i32 77}
!419 = distinct !{!419, !180}
!420 = !{!"branch_weights", i32 161, i32 7}
!421 = !{!"branch_weights", i32 7569, i32 6687}
!422 = !{!"branch_weights", i32 173, i32 1}
!423 = !{!"branch_weights", i32 1, i32 248}
!424 = !{!"branch_weights", i32 323, i32 173}
!425 = distinct !{!425, !180}
!426 = !{!"branch_weights", i32 1, i32 161}
!427 = !{!"branch_weights", i32 1, i32 83}
!428 = !{!"branch_weights", i32 161, i32 5}
!429 = distinct !{!429, !180}
!430 = !{!"branch_weights", i32 1, i32 167}
!431 = !{!"branch_weights", i32 -2051933556, i32 1848115200, i32 24379392, i32 24249715}
!432 = !{!"branch_weights", i32 93, i32 1}
!433 = !{!"branch_weights", i32 87, i32 5}
!434 = distinct !{!434, !180}
!435 = !{!"branch_weights", i32 334, i32 1}
!436 = !{!"branch_weights", i32 248, i32 23872}
!437 = !{!"branch_weights", i32 248, i32 87}
!438 = distinct !{!438, !180}
!439 = !{!"branch_weights", i32 0, i32 1}
!440 = distinct !{!440, !180}
!441 = !{!"branch_weights", i32 3, i32 309}
!442 = !{!"branch_weights", i32 35, i32 2}
!443 = !{!"branch_weights", i32 129, i32 127}
!444 = distinct !{!444, !180}
!445 = !{!"branch_weights", i32 34, i32 2}
!446 = !{!"branch_weights", i32 34, i32 1}
!447 = !{!"function_entry_count", i64 34}
!448 = !{!"util.c:S_SvREFCNT_inc_NN"}
!449 = !{!"branch_weights", i32 76, i32 2}
!450 = !{!"branch_weights", i32 9, i32 68}
!451 = !{!"branch_weights", i32 1, i32 68}
!452 = !{!"branch_weights", i32 368, i32 68}
!453 = distinct !{!453, !180}
!454 = !{!"branch_weights", i32 3, i32 66}
!455 = !{!"branch_weights", i32 9, i32 1}
!456 = !{!"branch_weights", i32 1, i32 9}
!457 = !{!"function_entry_count", i64 188}
!458 = !{!"branch_weights", i32 1, i32 189}
!459 = !{!"function_entry_count", i64 128}
!460 = !{!"branch_weights", i32 4, i32 126}
!461 = !{!"branch_weights", i32 129, i32 1}
!462 = !{!"branch_weights", i32 1, i32 129}
!463 = distinct !{!463, !180}
!464 = !{!"branch_weights", i32 1, i32 5}
!465 = distinct !{!465, !180}
!466 = distinct !{!466, !180}
!467 = !{!"function_entry_count", i64 61}
!468 = !{!"branch_weights", i32 3844, i32 125}
!469 = !{!"branch_weights", i32 247, i32 1}
!470 = !{!"branch_weights", i32 119, i32 1}
!471 = !{!"branch_weights", i32 2, i32 118}
!472 = !{!"branch_weights", i32 229, i32 247}
!473 = distinct !{!473, !180}
!474 = !{!"branch_weights", i32 162430966, i32 1985052682}
!475 = !{!"branch_weights", i32 142, i32 20}
!476 = !{!"branch_weights", i32 124, i32 1892}
!477 = distinct !{!477, !180}
!478 = distinct !{!478, !180}
!479 = !{!"function_entry_count", i64 12900}
!480 = distinct !{!480, !180}
!481 = distinct !{!481, !180}
!482 = !{!"branch_weights", i32 1, i32 14, i32 1}
!483 = !{!"branch_weights", i32 2, i32 6}
!484 = !{!"branch_weights", i32 7, i32 1}
!485 = !{!"util.c:S_xs_version_bootcheck"}
!486 = !{!487, !154, i64 92}
!487 = !{!"xpvcv", !151, i64 0, !146, i64 8, !162, i64 16, !146, i64 24, !151, i64 32, !146, i64 40, !146, i64 48, !146, i64 56, !151, i64 64, !146, i64 72, !151, i64 80, !154, i64 88, !154, i64 92, !154, i64 96}
!488 = !{!157, !151, i64 16}
!489 = !{!490, !154, i64 12}
!490 = !{!"hv", !151, i64 0, !154, i64 8, !154, i64 12, !146, i64 16}
!491 = !{!490, !151, i64 0}
!492 = !{!493, !162, i64 24}
!493 = !{!"xpvhv", !151, i64 0, !146, i64 8, !162, i64 16, !162, i64 24}
!494 = !{!495, !154, i64 28}
!495 = !{!"xpvhv_aux", !146, i64 0, !151, i64 8, !151, i64 16, !154, i64 24, !154, i64 28, !151, i64 32, !154, i64 40, !154, i64 44, !154, i64 48, !154, i64 52}
!496 = !{!"util.c:S_CvGV"}
!497 = !{!"util.c:S_gv_has_usable_name"}
!498 = !{!372, !154, i64 0}
!499 = !{!"util.c:S_CvDEPTHp"}
