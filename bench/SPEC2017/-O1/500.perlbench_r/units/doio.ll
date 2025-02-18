; ModuleID = 'doio.c'
source_filename = "doio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.xpvio = type { ptr, %union._xmgu, i64, %union.anon, %union._xivu, ptr, %union.anon.0, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%union._xmgu = type { ptr }
%union.anon = type { i64 }
%union._xivu = type { i64 }
%union.anon.0 = type { ptr }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.sv = type { ptr, i32, i32, %union.anon.2 }
%union.anon.2 = type { ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.3 }
%union.anon.3 = type { i64 }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.4, %union._xivu }
%union.anon.4 = type { i64 }
%struct.gv = type { ptr, i32, i32, %union.anon.5 }
%union.anon.5 = type { ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.io = type { ptr, i32, i32, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.7, %union._xivu, %union._xnvu }
%union.anon.7 = type { i64 }
%union._xnvu = type { double }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.8, %union._xivu }
%union.anon.8 = type { i64 }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.svop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }

@.str = private unnamed_addr constant [47 x i8] c"panic: sysopen with multiple args, num_svs=%ld\00", align 1
@PL_tainting = external local_unnamed_addr global i8, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"sysopen\00", align 1
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"pathname\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Unknown open() mode '%.*s'\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Missing command in piped open\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"piped open\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Can't open bidirectional pipe\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"More than one argument to '%c&' open\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"More than one argument to '>%c' open\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"More than one argument to '<%c' open\00", align 1
@PL_argvoutgv = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"ARGVOUT\00", align 1
@PL_inplace = external local_unnamed_addr global ptr, align 8
@PL_argvout_stack = external global ptr, align 8
@PL_defoutgv = external local_unnamed_addr global ptr, align 8
@PL_filemode = external local_unnamed_addr global i32, align 4
@PL_oldname = external local_unnamed_addr global ptr, align 8
@PL_lastfd = external local_unnamed_addr global i32, align 4
@PL_Sv = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"inplace open\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"STDOUT\00", align 1
@PL_statbuf = external global %struct.stat, align 8
@.str.16 = private unnamed_addr constant [48 x i8] c"Can't do inplace edit: %s is not a regular file\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"Can't rename %s to %-p: %s, skipping file\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"Can't remove %s: %s, skipping file\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"Can't do inplace edit on %s: %s\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"Can't open %s: %s\00", align 1
@PL_argvgv = external local_unnamed_addr global ptr, align 8
@PL_statusvalue_posix = external local_unnamed_addr global i32, align 4
@PL_statusvalue = external local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [54 x i8] c"Warning: unable to close filehandle %2p properly: %-p\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"Warning: unable to close filehandle properly: %-p\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@PL_curcop = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [21 x i8] c"Wide character in %s\00", align 1
@PL_op_desc = external local_unnamed_addr constant [0 x ptr], align 8
@.str.28 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_defgv = external local_unnamed_addr global ptr, align 8
@PL_laststatval = external local_unnamed_addr global i32, align 4
@PL_laststype = external local_unnamed_addr global i16, align 2
@PL_statgv = external local_unnamed_addr global ptr, align 8
@PL_statname = external local_unnamed_addr global ptr, align 8
@PL_statcache = external global %struct.stat, align 8
@PL_warn_nl = external constant [0 x i8], align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"The stat preceding -l _ wasn't an lstat\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"Use of -l on filehandle %2p\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"Use of -l on filehandle\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"lstat\00", align 1
@PL_Argv = external local_unnamed_addr global ptr, align 8
@PL_sigfpe_saved = external local_unnamed_addr global ptr, align 8
@PL_Cmd = external local_unnamed_addr global ptr, align 8
@PL_cshname = external constant [0 x i8], align 1
@.str.35 = private unnamed_addr constant [4 x i8] c" -c\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"csh\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"$&*(){}[]'\22;\\|?<>~`\0A\00", align 1
@PL_sh_path = external constant [0 x i8], align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@PL_op_name = external local_unnamed_addr constant [0 x ptr], align 8
@PL_no_func = external constant [0 x i8], align 1
@PL_tainted = external local_unnamed_addr global i8, align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"fchmod\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"chmod\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@PL_unsafe = external local_unnamed_addr global i8, align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"glob\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c" -cf 'set nonomatch; glob \00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"' 2>/dev/null |\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"ENV\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@PL_last_in_gv = external local_unnamed_addr global ptr, align 8
@.str.52 = private unnamed_addr constant [36 x i8] c"glob failed (can't start child: %s)\00", align 1
@PL_forkprocess = external local_unnamed_addr global i32, align 4
@PL_maxsysfd = external local_unnamed_addr global i32, align 4
@PL_stderrgv = external local_unnamed_addr global ptr, align 8
@.str.53 = private unnamed_addr constant [51 x i8] c"Warning: unable to close filehandle %2p properly.\0A\00", align 1
@.str.54 = private unnamed_addr constant [42 x i8] c"Invalid \\0 character in %s for %s: %s\\0%s\00", align 1
@.str.55 = private unnamed_addr constant [48 x i8] c"Filehandle STD%s reopened as %2p only for input\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1
@.str.58 = private unnamed_addr constant [49 x i8] c"Filehandle STDIN reopened as %2p only for output\00", align 1
@PL_fdpid = external local_unnamed_addr global ptr, align 8
@.str.59 = private unnamed_addr constant [20 x i8] c"Can't exec \22%s\22: %s\00", align 1

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_do_openn(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #0 !prof !58 {
  %10 = icmp eq i32 %3, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %9
  %12 = icmp eq i32 %8, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = sext i32 %8 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str, i64 noundef %14) #11
  br label %15

15:                                               ; preds = %13, %11
  %16 = sext i32 %2 to i64
  %17 = tail call zeroext i1 @Perl_do_open_raw(ptr noundef %0, ptr noundef %1, i64 noundef %16, i32 noundef %4, i32 noundef %5)
  br label %21

18:                                               ; preds = %9
  %19 = sext i32 %2 to i64
  %20 = tail call zeroext i1 @Perl_do_open6(ptr noundef %0, ptr noundef %1, i64 noundef %19, ptr noundef %6, ptr noundef %7, i32 noundef %8)
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i1 [ %17, %15 ], [ %20, %18 ]
  ret i1 %22
}

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i1 @Perl_do_open_raw(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !58 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca [8 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  %13 = call fastcc ptr @S_openn_setup(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  store i32 0, ptr %11, align 4, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  %14 = and i32 %3, 1603
  %15 = icmp eq i32 %14, 0
  %16 = load i8, ptr @PL_tainting, align 1, !range !63
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.1) #11
  br label %20

20:                                               ; preds = %19, %5
  store i8 35, ptr %10, align 1, !tbaa !64
  %21 = getelementptr inbounds [8 x i8], ptr %10, i64 0, i64 1
  %22 = call i32 @PerlIO_intmode2str(i32 noundef %3, ptr noundef nonnull %21, ptr noundef nonnull %11) #11
  %23 = trunc i32 %22 to i8
  %24 = load ptr, ptr %13, align 8, !tbaa !65
  %25 = getelementptr inbounds %struct.xpvio, ptr %24, i64 0, i32 16
  store i8 %23, ptr %25, align 8, !tbaa !68
  %26 = call ptr @Perl_newSVpvn_flags(ptr noundef %1, i64 noundef %2, i32 noundef 524288) #11
  store ptr %26, ptr %12, align 8, !tbaa !71
  %27 = call ptr @PerlIO_openn(ptr noundef null, ptr noundef nonnull %10, i32 noundef -1, i32 noundef %3, i32 noundef %4, ptr noundef null, i32 noundef 1, ptr noundef nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  %28 = load ptr, ptr %6, align 8, !tbaa !71
  %29 = load ptr, ptr %7, align 8, !tbaa !71
  %30 = load i32, ptr %8, align 4, !tbaa !59
  %31 = load i8, ptr %9, align 1, !tbaa !64
  %32 = load i32, ptr %11, align 4, !tbaa !59
  %33 = call fastcc zeroext i1 @S_openn_cleanup(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %27, ptr noundef nonnull %10, ptr noundef %1, ptr noundef %28, ptr noundef %29, i32 noundef %30, i8 noundef signext %31, i32 noundef %32, i1 noundef zeroext false, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  ret i1 %33
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_do_open6(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 !prof !72 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca [8 x i8], align 1
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  %17 = call fastcc ptr @S_openn_setup(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10)
  %18 = load ptr, ptr @PL_op, align 8, !tbaa !71
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20, !prof !73

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 4
  %22 = load i16, ptr %21, align 8
  %23 = and i16 %22, 511
  %24 = icmp eq i16 %23, 220
  br i1 %24, label %25, label %35, !prof !74

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 6
  %27 = load i8, ptr %26, align 1, !tbaa !75
  %28 = lshr i8 %27, 4
  %29 = and i8 %28, 1
  %30 = lshr i8 %27, 5
  %31 = and i8 %30, 1
  %32 = lshr i8 %27, 6
  %33 = and i8 %32, 1
  %34 = lshr i8 %27, 7
  br label %35

35:                                               ; preds = %25, %20, %6
  %36 = phi i8 [ %29, %25 ], [ 0, %20 ], [ 0, %6 ]
  %37 = phi i8 [ %31, %25 ], [ 0, %20 ], [ 0, %6 ]
  %38 = phi i8 [ %33, %25 ], [ 0, %20 ], [ 0, %6 ]
  %39 = phi i8 [ %34, %25 ], [ 0, %20 ], [ 0, %6 ]
  %40 = trunc i64 %2 to i32
  %41 = tail call ptr @Perl_savepvn(ptr noundef %1, i32 noundef %40) #11
  tail call void @Perl_save_pushptr(ptr noundef %41, i32 noundef 10) #11
  br label %42

42:                                               ; preds = %42, %35
  %43 = phi ptr [ %41, %35 ], [ %50, %42 ]
  %44 = load i8, ptr %43, align 1, !tbaa !64
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !59
  %48 = and i32 %47, 17408
  %49 = icmp eq i32 %48, 17408
  %50 = getelementptr inbounds i8, ptr %43, i64 1
  br i1 %49, label %42, label %51, !prof !73, !llvm.loop !77

51:                                               ; preds = %42
  %52 = getelementptr inbounds i8, ptr %41, i64 %2
  %53 = icmp ugt ptr %52, %43
  br i1 %53, label %54, label %65, !prof !74

54:                                               ; preds = %51, %63
  %55 = phi ptr [ %56, %63 ], [ %52, %51 ]
  %56 = getelementptr inbounds i8, ptr %55, i64 -1
  %57 = load i8, ptr %56, align 1, !tbaa !64
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !59
  %61 = and i32 %60, 17408
  %62 = icmp eq i32 %61, 17408
  br i1 %62, label %63, label %65, !prof !73

63:                                               ; preds = %54
  store i8 0, ptr %56, align 1, !tbaa !64
  %64 = icmp ugt ptr %56, %43
  br i1 %64, label %54, label %65, !prof !74, !llvm.loop !80

65:                                               ; preds = %54, %63, %51
  %66 = phi ptr [ %52, %51 ], [ %55, %54 ], [ %56, %63 ]
  %67 = icmp ne i32 %5, 0
  br i1 %67, label %68, label %112, !prof !73

68:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  store i64 0, ptr %12, align 8, !tbaa !81
  %69 = load ptr, ptr %4, align 8, !tbaa !71
  %70 = getelementptr inbounds %struct.sv, ptr %69, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !82
  %72 = and i32 %71, 65280
  %73 = icmp ne i32 %72, 0
  %74 = and i32 %71, 255
  %75 = icmp eq i32 %74, 8
  %76 = or i1 %73, %75
  %77 = and i32 %71, 16777471
  %78 = icmp eq i32 %77, 16777226
  %79 = or i1 %78, %76
  %80 = and i32 %71, 2097152
  %81 = icmp ne i32 %80, 0
  %82 = or i1 %81, %79
  br i1 %82, label %83, label %94

83:                                               ; preds = %68
  %84 = and i32 %71, 2098176
  %85 = icmp eq i32 %84, 1024
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load ptr, ptr %69, align 8, !tbaa !84
  %88 = getelementptr inbounds %struct.xpv, ptr %87, i64 0, i32 2
  %89 = load i64, ptr %88, align 8, !tbaa !85
  store i64 %89, ptr %12, align 8, !tbaa !81
  %90 = getelementptr inbounds %struct.sv, ptr %69, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !64
  br label %94

92:                                               ; preds = %83
  %93 = call ptr @Perl_sv_2pv_flags(ptr noundef %69, ptr noundef nonnull %12, i32 noundef 2) #11
  br label %94

94:                                               ; preds = %68, %86, %92
  %95 = phi ptr [ %91, %86 ], [ %93, %92 ], [ null, %68 ]
  %96 = icmp eq ptr %95, null
  br i1 %96, label %104, label %97

97:                                               ; preds = %94
  %98 = load i64, ptr %12, align 8, !tbaa !81
  %99 = call fastcc zeroext i1 @S_is_safe_syscall(ptr noundef nonnull %95, i64 noundef %98, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3)
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load i64, ptr %12, align 8, !tbaa !81
  %102 = trunc i64 %101 to i32
  %103 = call ptr @Perl_savepvn(ptr noundef nonnull %95, i32 noundef %102) #11
  br label %106

104:                                              ; preds = %94
  %105 = call ptr @Perl_savepvn(ptr noundef nonnull @.str.4, i32 noundef 0) #11
  br label %106

106:                                              ; preds = %104, %100
  %107 = phi ptr [ %103, %100 ], [ %105, %104 ]
  call void @Perl_save_pushptr(ptr noundef %107, i32 noundef 10) #11
  br label %108

108:                                              ; preds = %97, %106
  %109 = phi ptr [ %107, %106 ], [ undef, %97 ]
  %110 = phi i1 [ true, %106 ], [ false, %97 ]
  %111 = phi i32 [ 0, %106 ], [ 6, %97 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  br i1 %110, label %116, label %675

112:                                              ; preds = %65
  %113 = ptrtoint ptr %66 to i64
  %114 = ptrtoint ptr %43 to i64
  %115 = sub i64 %113, %114
  br label %116

116:                                              ; preds = %108, %112
  %117 = phi ptr [ %109, %108 ], [ %43, %112 ]
  %118 = phi i64 [ %2, %108 ], [ %115, %112 ]
  %119 = load i8, ptr %43, align 1, !tbaa !64
  %120 = load ptr, ptr %17, align 8, !tbaa !65
  %121 = getelementptr inbounds %struct.xpvio, ptr %120, i64 0, i32 16
  store i8 %119, ptr %121, align 8, !tbaa !68
  %122 = load i8, ptr %43, align 1, !tbaa !64
  %123 = icmp eq i8 %122, 43
  br i1 %123, label %124, label %141, !prof !73

124:                                              ; preds = %116
  %125 = getelementptr inbounds i8, ptr %43, i64 1
  %126 = load i8, ptr %125, align 1, !tbaa !64
  switch i8 %126, label %141 [
    i8 60, label %127
    i8 62, label %127
  ]

127:                                              ; preds = %124, %124
  br i1 %67, label %128, label %134

128:                                              ; preds = %127
  %129 = icmp ugt ptr %66, %125
  br i1 %129, label %130, label %141

130:                                              ; preds = %128
  %131 = getelementptr inbounds i8, ptr %66, i64 -1
  %132 = load i8, ptr %131, align 1, !tbaa !64
  %133 = icmp eq i8 %132, 124
  br i1 %133, label %141, label %134

134:                                              ; preds = %130, %127
  %135 = load i8, ptr @PL_tainting, align 1, !tbaa !87, !range !63, !noundef !89
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %134
  call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.3) #11
  br label %138

138:                                              ; preds = %134, %137
  %139 = load i8, ptr %43, align 1, !tbaa !64
  %140 = getelementptr inbounds [8 x i8], ptr %11, i64 0, i64 1
  store i8 %139, ptr %140, align 1, !tbaa !64
  br label %141

141:                                              ; preds = %124, %138, %130, %128, %116
  %142 = phi ptr [ %125, %138 ], [ %43, %130 ], [ %43, %128 ], [ %43, %116 ], [ %43, %124 ]
  %143 = phi i32 [ 1, %138 ], [ 0, %130 ], [ 0, %128 ], [ 0, %116 ], [ 0, %124 ]
  %144 = load i8, ptr %142, align 1, !tbaa !64
  switch i8 %144, label %535 [
    i8 124, label %145
    i8 62, label %234
    i8 60, label %476
  ], !prof !90

145:                                              ; preds = %141
  br i1 %67, label %146, label %161

146:                                              ; preds = %145
  %147 = getelementptr inbounds i8, ptr %142, i64 1
  %148 = load i8, ptr %147, align 1, !tbaa !64
  %149 = icmp eq i8 %148, 45
  br i1 %149, label %155, label %150

150:                                              ; preds = %529, %633, %470, %146
  %151 = phi i8 [ 0, %146 ], [ %461, %470 ], [ 0, %633 ], [ 0, %529 ]
  %152 = phi ptr [ %142, %146 ], [ %462, %470 ], [ %142, %633 ], [ %523, %529 ]
  %153 = phi i32 [ %143, %146 ], [ %463, %470 ], [ %143, %633 ], [ %143, %529 ]
  %154 = phi i32 [ %5, %146 ], [ %464, %470 ], [ %5, %633 ], [ %5, %529 ]
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5, i32 noundef %40, ptr noundef %1) #11
  br label %155

155:                                              ; preds = %150, %146
  %156 = phi i8 [ %151, %150 ], [ 0, %146 ]
  %157 = phi ptr [ %152, %150 ], [ %142, %146 ]
  %158 = phi i32 [ %153, %150 ], [ %143, %146 ]
  %159 = phi i32 [ %154, %150 ], [ %5, %146 ]
  %160 = getelementptr inbounds i8, ptr %157, i64 1
  br label %161

161:                                              ; preds = %155, %145
  %162 = phi i8 [ %156, %155 ], [ 0, %145 ]
  %163 = phi ptr [ %160, %155 ], [ %142, %145 ]
  %164 = phi i32 [ %158, %155 ], [ %143, %145 ]
  %165 = phi i32 [ %159, %155 ], [ 0, %145 ]
  br label %166

166:                                              ; preds = %166, %161
  %167 = phi ptr [ %163, %161 ], [ %168, %166 ]
  %168 = getelementptr inbounds i8, ptr %167, i64 1
  %169 = load i8, ptr %168, align 1, !tbaa !64
  %170 = zext i8 %169 to i64
  %171 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %170
  %172 = load i32, ptr %171, align 4, !tbaa !59
  %173 = and i32 %172, 17408
  %174 = icmp eq i32 %173, 17408
  br i1 %174, label %166, label %175, !llvm.loop !91

175:                                              ; preds = %166
  %176 = icmp eq i32 %165, 0
  %177 = ptrtoint ptr %66 to i64
  %178 = ptrtoint ptr %168 to i64
  %179 = sub i64 %177, %178
  %180 = select i1 %176, ptr %168, ptr %117
  %181 = select i1 %176, i64 %179, i64 %118
  %182 = load i8, ptr %180, align 1, !tbaa !64
  switch i8 %182, label %196 [
    i8 0, label %183
    i8 45, label %188
  ]

183:                                              ; preds = %175
  %184 = call zeroext i1 @Perl_ckwarn(i32 noundef 10) #11
  br i1 %184, label %185, label %186

185:                                              ; preds = %183
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 10, ptr noundef nonnull @.str.6) #11
  br label %186

186:                                              ; preds = %185, %183
  %187 = tail call ptr @__errno_location() #12
  store i32 32, ptr %187, align 4, !tbaa !59
  br label %675

188:                                              ; preds = %175
  %189 = getelementptr inbounds i8, ptr %180, i64 1
  %190 = load i8, ptr %189, align 1, !tbaa !64
  %191 = icmp eq i8 %190, 0
  %192 = and i1 %176, %191
  %193 = load i8, ptr @PL_tainting, align 1, !range !63
  %194 = icmp eq i8 %193, 0
  %195 = select i1 %192, i1 true, i1 %194
  br i1 %195, label %200, label %199

196:                                              ; preds = %175
  %197 = load i8, ptr @PL_tainting, align 1, !tbaa !87, !range !63, !noundef !89
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %188, %196
  call void @Perl_taint_env() #11
  br label %200

200:                                              ; preds = %196, %199, %188
  %201 = load i8, ptr @PL_tainting, align 1, !tbaa !87, !range !63, !noundef !89
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %200
  call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.7) #11
  br label %204

204:                                              ; preds = %200, %203
  br i1 %176, label %205, label %213

205:                                              ; preds = %204
  %206 = getelementptr i8, ptr %180, i64 %181
  %207 = getelementptr i8, ptr %206, i64 -1
  %208 = load i8, ptr %207, align 1, !tbaa !64
  %209 = icmp eq i8 %208, 124
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  store i8 0, ptr %207, align 1, !tbaa !64
  %211 = call zeroext i1 @Perl_ckwarn(i32 noundef 10) #11
  br i1 %211, label %212, label %213

212:                                              ; preds = %210
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 10, ptr noundef nonnull @.str.8) #11
  br label %213

213:                                              ; preds = %210, %212, %205, %204
  store i8 119, ptr %11, align 1, !tbaa !64
  %214 = icmp eq i8 %38, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %213
  %216 = icmp eq i8 %39, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %215, %213
  %218 = phi i8 [ 98, %213 ], [ 116, %215 ]
  %219 = getelementptr inbounds [8 x i8], ptr %11, i64 0, i64 1
  store i8 %218, ptr %219, align 1, !tbaa !64
  br label %220

220:                                              ; preds = %217, %215
  %221 = icmp ugt i32 %165, 1
  br i1 %221, label %222, label %224

222:                                              ; preds = %220
  %223 = call ptr @Perl_my_popen_list(ptr noundef nonnull %11, i32 noundef %165, ptr noundef %4) #11
  br label %226

224:                                              ; preds = %220
  %225 = call ptr @Perl_my_popen(ptr noundef nonnull %180, ptr noundef nonnull %11) #11
  br label %226

226:                                              ; preds = %224, %222
  %227 = phi ptr [ %223, %222 ], [ %225, %224 ]
  br i1 %176, label %670, label %228

228:                                              ; preds = %226
  %229 = load i8, ptr %168, align 1, !tbaa !64
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %670, label %231

231:                                              ; preds = %228
  %232 = call i32 @PerlIO_apply_layers(ptr noundef %227, ptr noundef nonnull %11, ptr noundef nonnull %168) #11
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %670, label %675

234:                                              ; preds = %141
  %235 = load i8, ptr @PL_tainting, align 1, !tbaa !87, !range !63, !noundef !89
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %238, label %237

237:                                              ; preds = %234
  call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.3) #11
  br label %238

238:                                              ; preds = %234, %237
  %239 = getelementptr inbounds i8, ptr %142, i64 1
  %240 = load i8, ptr %239, align 1, !tbaa !64
  %241 = icmp eq i8 %240, 62
  br i1 %241, label %242, label %246

242:                                              ; preds = %238
  %243 = load ptr, ptr %17, align 8, !tbaa !65
  %244 = getelementptr inbounds %struct.xpvio, ptr %243, i64 0, i32 16
  store i8 97, ptr %244, align 8, !tbaa !68
  store i8 97, ptr %11, align 1, !tbaa !64
  %245 = getelementptr inbounds i8, ptr %142, i64 2
  br label %247

246:                                              ; preds = %238
  store i8 119, ptr %11, align 1, !tbaa !64
  br label %247

247:                                              ; preds = %246, %242
  %248 = phi ptr [ %245, %242 ], [ %239, %246 ]
  %249 = icmp eq i8 %38, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %247
  %251 = icmp eq i8 %39, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %250, %247
  %253 = phi i8 [ 98, %247 ], [ 116, %250 ]
  %254 = getelementptr inbounds [8 x i8], ptr %11, i64 0, i64 1
  store i8 %253, ptr %254, align 1, !tbaa !64
  br label %255

255:                                              ; preds = %252, %250
  %256 = load i8, ptr %248, align 1, !tbaa !64
  %257 = icmp eq i8 %256, 38
  br i1 %257, label %258, label %421

258:                                              ; preds = %492, %255
  %259 = phi ptr [ %248, %255 ], [ %478, %492 ]
  %260 = phi i32 [ 1, %255 ], [ %143, %492 ]
  %261 = getelementptr inbounds i8, ptr %259, i64 1
  %262 = load i8, ptr %261, align 1, !tbaa !64
  %263 = icmp ne i8 %262, 61
  %264 = getelementptr inbounds i8, ptr %259, i64 2
  %265 = select i1 %263, ptr %261, ptr %264
  %266 = select i1 %263, i32 2, i32 0
  br i1 %67, label %272, label %267

267:                                              ; preds = %258
  %268 = load i8, ptr %265, align 1, !tbaa !64
  %269 = icmp eq i8 %268, 0
  %270 = icmp ne ptr %3, null
  %271 = and i1 %270, %269
  br i1 %271, label %459, label %272

272:                                              ; preds = %267, %258
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #11
  %273 = icmp ugt i32 %5, 1
  br i1 %273, label %274, label %279

274:                                              ; preds = %272
  %275 = load ptr, ptr %17, align 8, !tbaa !65
  %276 = getelementptr inbounds %struct.xpvio, ptr %275, i64 0, i32 16
  %277 = load i8, ptr %276, align 8, !tbaa !68
  %278 = sext i8 %277 to i32
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.9, i32 noundef %278) #11
  br label %279

279:                                              ; preds = %274, %272
  br label %280

280:                                              ; preds = %279, %280
  %281 = phi ptr [ %288, %280 ], [ %265, %279 ]
  %282 = load i8, ptr %281, align 1, !tbaa !64
  %283 = zext i8 %282 to i64
  %284 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %283
  %285 = load i32, ptr %284, align 4, !tbaa !59
  %286 = and i32 %285, 17408
  %287 = icmp eq i32 %286, 17408
  %288 = getelementptr inbounds i8, ptr %281, i64 1
  br i1 %287, label %280, label %289, !llvm.loop !92

289:                                              ; preds = %280
  br i1 %67, label %290, label %317

290:                                              ; preds = %289
  %291 = load ptr, ptr %4, align 8, !tbaa !71
  %292 = getelementptr inbounds %struct.sv, ptr %291, i64 0, i32 2
  %293 = load i32, ptr %292, align 4, !tbaa !82
  %294 = and i32 %293, 256
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %290
  %297 = and i32 %293, 16384
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %317, label %299

299:                                              ; preds = %296
  %300 = call i32 @Perl_looks_like_number(ptr noundef %291) #11
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %317, label %302

302:                                              ; preds = %299, %290
  %303 = load ptr, ptr %4, align 8, !tbaa !71
  %304 = getelementptr inbounds %struct.sv, ptr %303, i64 0, i32 2
  %305 = load i32, ptr %304, align 4, !tbaa !82
  %306 = and i32 %305, -2145386240
  %307 = icmp eq i32 %306, -2147483392
  br i1 %307, label %308, label %312

308:                                              ; preds = %302
  %309 = load ptr, ptr %303, align 8, !tbaa !84
  %310 = getelementptr inbounds %struct.xpvuv, ptr %309, i64 0, i32 4
  %311 = load i64, ptr %310, align 8, !tbaa !64
  br label %314

312:                                              ; preds = %302
  %313 = call i64 @Perl_sv_2uv_flags(ptr noundef %303, i32 noundef 2) #11
  br label %314

314:                                              ; preds = %312, %308
  %315 = phi i64 [ %311, %308 ], [ %313, %312 ]
  %316 = trunc i64 %315 to i32
  br label %392

317:                                              ; preds = %299, %296, %289
  %318 = load i8, ptr %281, align 1, !tbaa !64
  %319 = zext i8 %318 to i64
  %320 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %319
  %321 = load i32, ptr %320, align 4, !tbaa !59
  %322 = and i32 %321, 2
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %331, label %324

324:                                              ; preds = %317
  %325 = call zeroext i1 @Perl_grok_atoUV(ptr noundef nonnull %281, ptr noundef nonnull %13, ptr noundef null) #11
  %326 = load i64, ptr %13, align 8
  %327 = icmp ult i64 %326, 2147483648
  %328 = select i1 %325, i1 %327, i1 false
  br i1 %328, label %329, label %331

329:                                              ; preds = %324
  %330 = trunc i64 %326 to i32
  br label %392

331:                                              ; preds = %317, %324
  br i1 %67, label %332, label %335

332:                                              ; preds = %331
  %333 = load ptr, ptr %4, align 8, !tbaa !71
  %334 = call ptr @Perl_sv_2io(ptr noundef %333) #11
  br label %354

335:                                              ; preds = %331
  %336 = ptrtoint ptr %66 to i64
  %337 = ptrtoint ptr %281 to i64
  %338 = sub i64 %336, %337
  %339 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull %281, i64 noundef %338, i32 noundef 0, i32 noundef 15) #11
  %340 = icmp eq ptr %339, null
  br i1 %340, label %354, label %341

341:                                              ; preds = %335
  %342 = getelementptr inbounds %struct.sv, ptr %339, i64 0, i32 2
  %343 = load i32, ptr %342, align 4, !tbaa !82
  %344 = and i32 %343, 255
  %345 = add nsw i32 %344, -9
  %346 = icmp ult i32 %345, 2
  br i1 %346, label %347, label %354

347:                                              ; preds = %341
  %348 = getelementptr inbounds %struct.gv, ptr %339, i64 0, i32 3
  %349 = load ptr, ptr %348, align 8, !tbaa !64
  %350 = icmp eq ptr %349, null
  br i1 %350, label %354, label %351

351:                                              ; preds = %347
  %352 = getelementptr inbounds %struct.gp, ptr %349, i64 0, i32 1
  %353 = load ptr, ptr %352, align 8, !tbaa !93
  br label %354

354:                                              ; preds = %341, %351, %347, %335, %332
  %355 = phi ptr [ %334, %332 ], [ %353, %351 ], [ null, %347 ], [ null, %335 ], [ null, %341 ]
  %356 = icmp eq ptr %355, null
  br i1 %356, label %357, label %359

357:                                              ; preds = %354
  %358 = tail call ptr @__errno_location() #12
  store i32 22, ptr %358, align 4, !tbaa !59
  br label %388

359:                                              ; preds = %354
  %360 = getelementptr inbounds %struct.io, ptr %355, i64 0, i32 3
  %361 = load ptr, ptr %360, align 8, !tbaa !64
  %362 = icmp eq ptr %361, null
  br i1 %362, label %388, label %363

363:                                              ; preds = %359
  %364 = call i32 @Perl_PerlIO_flush(ptr noundef nonnull %361) #11
  %365 = call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %361) #11
  %366 = call ptr @Perl_PerlIO_stdout() #11
  %367 = icmp eq ptr %361, %366
  br i1 %367, label %371, label %368

368:                                              ; preds = %363
  %369 = call ptr @Perl_PerlIO_stderr() #11
  %370 = icmp eq ptr %361, %369
  br i1 %370, label %371, label %374

371:                                              ; preds = %368, %363
  %372 = load ptr, ptr %17, align 8, !tbaa !65
  %373 = getelementptr inbounds %struct.xpvio, ptr %372, i64 0, i32 16
  store i8 62, ptr %373, align 8, !tbaa !68
  br label %388

374:                                              ; preds = %368
  %375 = call ptr @Perl_PerlIO_stdin() #11
  %376 = icmp eq ptr %361, %375
  br i1 %376, label %377, label %380

377:                                              ; preds = %374
  %378 = load ptr, ptr %17, align 8, !tbaa !65
  %379 = getelementptr inbounds %struct.xpvio, ptr %378, i64 0, i32 16
  store i8 60, ptr %379, align 8, !tbaa !68
  br label %388

380:                                              ; preds = %374
  %381 = load ptr, ptr %355, align 8, !tbaa !65
  %382 = getelementptr inbounds %struct.xpvio, ptr %381, i64 0, i32 16
  %383 = load i8, ptr %382, align 8, !tbaa !68
  %384 = icmp eq i8 %383, 115
  br i1 %384, label %385, label %388

385:                                              ; preds = %380
  %386 = load ptr, ptr %17, align 8, !tbaa !65
  %387 = getelementptr inbounds %struct.xpvio, ptr %386, i64 0, i32 16
  store i8 115, ptr %387, align 8, !tbaa !68
  br label %388

388:                                              ; preds = %377, %385, %380, %371, %359, %357
  %389 = phi i32 [ 6, %357 ], [ 0, %359 ], [ 0, %371 ], [ 0, %380 ], [ 0, %385 ], [ 0, %377 ]
  %390 = phi ptr [ null, %357 ], [ %361, %359 ], [ %361, %371 ], [ %361, %380 ], [ %361, %385 ], [ %361, %377 ]
  %391 = phi i32 [ undef, %357 ], [ -1, %359 ], [ %365, %371 ], [ %365, %380 ], [ %365, %385 ], [ %365, %377 ]
  br i1 %356, label %414, label %392

392:                                              ; preds = %329, %388, %314
  %393 = phi i32 [ 0, %314 ], [ %5, %329 ], [ %5, %388 ]
  %394 = phi ptr [ null, %314 ], [ null, %329 ], [ %390, %388 ]
  %395 = phi i32 [ %316, %314 ], [ %330, %329 ], [ %391, %388 ]
  %396 = icmp eq i32 %393, 0
  %397 = select i1 %396, ptr null, ptr %281
  %398 = icmp eq ptr %394, null
  br i1 %398, label %401, label %399

399:                                              ; preds = %392
  %400 = call ptr @PerlIO_fdupopen(ptr noundef nonnull %394, ptr noundef null, i32 noundef %266) #11
  br label %414

401:                                              ; preds = %392
  br i1 %263, label %402, label %404

402:                                              ; preds = %401
  %403 = call i32 @dup(i32 noundef %395) #11
  br label %404

404:                                              ; preds = %401, %402
  %405 = phi i8 [ 0, %402 ], [ 1, %401 ]
  %406 = phi i32 [ %403, %402 ], [ %395, %401 ]
  %407 = call ptr @PerlIO_openn(ptr noundef %397, ptr noundef nonnull %11, i32 noundef %406, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef %393, ptr noundef %4) #11
  %408 = icmp eq ptr %407, null
  br i1 %408, label %409, label %414

409:                                              ; preds = %404
  %410 = icmp sgt i32 %406, -1
  %411 = and i1 %263, %410
  br i1 %411, label %412, label %414

412:                                              ; preds = %409
  %413 = call i32 @close(i32 noundef %406) #11
  br label %414

414:                                              ; preds = %399, %409, %412, %404, %388
  %415 = phi ptr [ null, %388 ], [ %400, %399 ], [ %407, %404 ], [ null, %412 ], [ null, %409 ]
  %416 = phi i8 [ 0, %388 ], [ 0, %399 ], [ %405, %404 ], [ %405, %412 ], [ %405, %409 ]
  %417 = phi ptr [ %281, %388 ], [ %397, %399 ], [ %397, %404 ], [ %397, %412 ], [ %397, %409 ]
  %418 = phi i32 [ %5, %388 ], [ %393, %399 ], [ %393, %404 ], [ %393, %412 ], [ %393, %409 ]
  %419 = phi i32 [ %389, %388 ], [ 0, %399 ], [ 0, %404 ], [ 0, %412 ], [ 0, %409 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %459, label %675

421:                                              ; preds = %255, %421
  %422 = phi ptr [ %429, %421 ], [ %248, %255 ]
  %423 = load i8, ptr %422, align 1, !tbaa !64
  %424 = zext i8 %423 to i64
  %425 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %424
  %426 = load i32, ptr %425, align 4, !tbaa !59
  %427 = and i32 %426, 17408
  %428 = icmp eq i32 %427, 17408
  %429 = getelementptr inbounds i8, ptr %422, i64 1
  br i1 %428, label %421, label %430, !llvm.loop !95

430:                                              ; preds = %421
  %431 = icmp eq i8 %423, 45
  br i1 %431, label %432, label %450

432:                                              ; preds = %430
  %433 = getelementptr inbounds i8, ptr %422, i64 1
  %434 = load i8, ptr %433, align 1, !tbaa !64
  %435 = icmp eq i8 %434, 0
  br i1 %435, label %444, label %436

436:                                              ; preds = %432
  %437 = zext i8 %434 to i64
  %438 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %437
  %439 = load i32, ptr %438, align 4, !tbaa !59
  %440 = and i32 %439, 17408
  %441 = icmp eq i32 %440, 17408
  %442 = icmp eq i8 %434, 58
  %443 = or i1 %442, %441
  br i1 %443, label %444, label %450

444:                                              ; preds = %436, %432
  %445 = call ptr @Perl_PerlIO_stdout() #11
  %446 = load ptr, ptr %17, align 8, !tbaa !65
  %447 = getelementptr inbounds %struct.xpvio, ptr %446, i64 0, i32 16
  store i8 45, ptr %447, align 8, !tbaa !68
  %448 = icmp ugt i32 %5, 1
  br i1 %448, label %449, label %459

449:                                              ; preds = %444
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.10, i32 noundef 45) #11
  br label %459

450:                                              ; preds = %436, %430
  br i1 %67, label %451, label %453

451:                                              ; preds = %450
  %452 = call ptr @PerlIO_openn(ptr noundef nonnull %422, ptr noundef nonnull %11, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef %5, ptr noundef %4) #11
  br label %459

453:                                              ; preds = %450
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #11
  %454 = ptrtoint ptr %66 to i64
  %455 = ptrtoint ptr %422 to i64
  %456 = sub i64 %454, %455
  %457 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %422, i64 noundef %456, i32 noundef 524288) #11
  store ptr %457, ptr %14, align 8, !tbaa !71
  %458 = call ptr @PerlIO_openn(ptr noundef null, ptr noundef nonnull %11, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 1, ptr noundef nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #11
  br label %459

459:                                              ; preds = %267, %449, %444, %453, %451, %414
  %460 = phi ptr [ %415, %414 ], [ %445, %449 ], [ %445, %444 ], [ %452, %451 ], [ %458, %453 ], [ %3, %267 ]
  %461 = phi i8 [ %416, %414 ], [ 0, %449 ], [ 0, %444 ], [ 0, %451 ], [ 0, %453 ], [ 0, %267 ]
  %462 = phi ptr [ %417, %414 ], [ %433, %449 ], [ %433, %444 ], [ %422, %451 ], [ null, %453 ], [ %265, %267 ]
  %463 = phi i32 [ %260, %414 ], [ 1, %449 ], [ 1, %444 ], [ 1, %451 ], [ 1, %453 ], [ %260, %267 ]
  %464 = phi i32 [ %418, %414 ], [ %5, %449 ], [ %5, %444 ], [ %5, %451 ], [ 0, %453 ], [ 0, %267 ]
  %465 = icmp eq ptr %460, null
  %466 = icmp ne ptr %462, null
  %467 = select i1 %465, i1 %466, i1 false
  br i1 %467, label %468, label %670

468:                                              ; preds = %459
  %469 = load i8, ptr %462, align 1, !tbaa !64
  switch i8 %469, label %470 [
    i8 0, label %670
    i8 58, label %670
  ]

470:                                              ; preds = %468
  %471 = zext i8 %469 to i64
  %472 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %471
  %473 = load i32, ptr %472, align 4, !tbaa !59
  %474 = and i32 %473, 81920
  %475 = icmp eq i32 %474, 81920
  br i1 %475, label %670, label %150

476:                                              ; preds = %141, %476
  %477 = phi ptr [ %478, %476 ], [ %142, %141 ]
  %478 = getelementptr inbounds i8, ptr %477, i64 1
  %479 = load i8, ptr %478, align 1, !tbaa !64
  %480 = zext i8 %479 to i64
  %481 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %480
  %482 = load i32, ptr %481, align 4, !tbaa !59
  %483 = and i32 %482, 17408
  %484 = icmp eq i32 %483, 17408
  br i1 %484, label %476, label %485, !llvm.loop !96

485:                                              ; preds = %476
  store i8 114, ptr %11, align 1, !tbaa !64
  %486 = icmp eq i8 %36, 0
  br i1 %486, label %487, label %489

487:                                              ; preds = %485
  %488 = icmp eq i8 %37, 0
  br i1 %488, label %492, label %489

489:                                              ; preds = %487, %485
  %490 = phi i8 [ 98, %485 ], [ 116, %487 ]
  %491 = getelementptr inbounds [8 x i8], ptr %11, i64 0, i64 1
  store i8 %490, ptr %491, align 1, !tbaa !64
  br label %492

492:                                              ; preds = %489, %487
  %493 = load i8, ptr %478, align 1, !tbaa !64
  switch i8 %493, label %512 [
    i8 38, label %258
    i8 45, label %494
  ]

494:                                              ; preds = %492
  %495 = getelementptr inbounds i8, ptr %477, i64 2
  %496 = load i8, ptr %495, align 1, !tbaa !64
  %497 = icmp eq i8 %496, 0
  br i1 %497, label %506, label %498

498:                                              ; preds = %494
  %499 = zext i8 %496 to i64
  %500 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %499
  %501 = load i32, ptr %500, align 4, !tbaa !59
  %502 = and i32 %501, 17408
  %503 = icmp eq i32 %502, 17408
  %504 = icmp eq i8 %496, 58
  %505 = or i1 %504, %503
  br i1 %505, label %506, label %512

506:                                              ; preds = %498, %494
  %507 = call ptr @Perl_PerlIO_stdin() #11
  %508 = load ptr, ptr %17, align 8, !tbaa !65
  %509 = getelementptr inbounds %struct.xpvio, ptr %508, i64 0, i32 16
  store i8 45, ptr %509, align 8, !tbaa !68
  %510 = icmp ugt i32 %5, 1
  br i1 %510, label %511, label %521

511:                                              ; preds = %506
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.11, i32 noundef 45) #11
  br label %521

512:                                              ; preds = %498, %492
  br i1 %67, label %513, label %515

513:                                              ; preds = %512
  %514 = call ptr @PerlIO_openn(ptr noundef nonnull %478, ptr noundef nonnull %11, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef %5, ptr noundef %4) #11
  br label %521

515:                                              ; preds = %512
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #11
  %516 = ptrtoint ptr %66 to i64
  %517 = ptrtoint ptr %478 to i64
  %518 = sub i64 %516, %517
  %519 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %478, i64 noundef %518, i32 noundef 524288) #11
  store ptr %519, ptr %15, align 8, !tbaa !71
  %520 = call ptr @PerlIO_openn(ptr noundef null, ptr noundef nonnull %11, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 1, ptr noundef nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #11
  br label %521

521:                                              ; preds = %513, %515, %506, %511
  %522 = phi ptr [ %507, %511 ], [ %507, %506 ], [ %514, %513 ], [ %520, %515 ]
  %523 = phi ptr [ %495, %511 ], [ %495, %506 ], [ %478, %513 ], [ null, %515 ]
  %524 = icmp eq ptr %522, null
  %525 = icmp ne ptr %523, null
  %526 = and i1 %524, %525
  br i1 %526, label %527, label %670

527:                                              ; preds = %521
  %528 = load i8, ptr %523, align 1, !tbaa !64
  switch i8 %528, label %529 [
    i8 0, label %670
    i8 58, label %670
  ]

529:                                              ; preds = %527
  %530 = zext i8 %528 to i64
  %531 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %530
  %532 = load i32, ptr %531, align 4, !tbaa !59
  %533 = and i32 %532, 81920
  %534 = icmp eq i32 %533, 81920
  br i1 %534, label %670, label %150

535:                                              ; preds = %141
  %536 = icmp eq i8 %144, 45
  %537 = and i1 %67, %536
  br i1 %537, label %538, label %542, !prof !73

538:                                              ; preds = %535
  %539 = getelementptr inbounds i8, ptr %142, i64 1
  %540 = load i8, ptr %539, align 1, !tbaa !64
  %541 = icmp eq i8 %540, 124
  br i1 %541, label %550, label %542

542:                                              ; preds = %538, %535
  %543 = getelementptr inbounds i8, ptr %142, i64 1
  %544 = icmp ule ptr %66, %543
  %545 = select i1 %67, i1 true, i1 %544, !prof !73
  br i1 %545, label %633, label %546, !prof !73

546:                                              ; preds = %542
  %547 = getelementptr inbounds i8, ptr %66, i64 -1
  %548 = load i8, ptr %547, align 1, !tbaa !64
  %549 = icmp eq i8 %548, 124
  br i1 %549, label %550, label %633, !prof !73

550:                                              ; preds = %546, %538
  br i1 %67, label %551, label %553

551:                                              ; preds = %550
  %552 = getelementptr inbounds i8, ptr %142, i64 2
  br label %577

553:                                              ; preds = %550
  %554 = getelementptr inbounds i8, ptr %66, i64 -1
  store i8 0, ptr %554, align 1, !tbaa !64
  %555 = icmp ugt ptr %554, %142
  br i1 %555, label %556, label %567

556:                                              ; preds = %553, %565
  %557 = phi ptr [ %558, %565 ], [ %554, %553 ]
  %558 = getelementptr inbounds i8, ptr %557, i64 -1
  %559 = load i8, ptr %558, align 1, !tbaa !64
  %560 = zext i8 %559 to i64
  %561 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %560
  %562 = load i32, ptr %561, align 4, !tbaa !59
  %563 = and i32 %562, 17408
  %564 = icmp eq i32 %563, 17408
  br i1 %564, label %565, label %567

565:                                              ; preds = %556
  store i8 0, ptr %558, align 1, !tbaa !64
  %566 = icmp ugt ptr %558, %142
  br i1 %566, label %556, label %567, !llvm.loop !97

567:                                              ; preds = %556, %565, %553
  br label %568

568:                                              ; preds = %567, %568
  %569 = phi ptr [ %576, %568 ], [ %142, %567 ]
  %570 = load i8, ptr %569, align 1, !tbaa !64
  %571 = zext i8 %570 to i64
  %572 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %571
  %573 = load i32, ptr %572, align 4, !tbaa !59
  %574 = and i32 %573, 17408
  %575 = icmp eq i32 %574, 17408
  %576 = getelementptr inbounds i8, ptr %569, i64 1
  br i1 %575, label %568, label %577, !llvm.loop !98

577:                                              ; preds = %568, %551
  %578 = phi ptr [ %552, %551 ], [ %569, %568 ]
  %579 = phi ptr [ %117, %551 ], [ %569, %568 ]
  %580 = load i8, ptr %579, align 1, !tbaa !64
  switch i8 %580, label %594 [
    i8 0, label %581
    i8 45, label %586
  ]

581:                                              ; preds = %577
  %582 = call zeroext i1 @Perl_ckwarn(i32 noundef 10) #11
  br i1 %582, label %583, label %584

583:                                              ; preds = %581
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 10, ptr noundef nonnull @.str.6) #11
  br label %584

584:                                              ; preds = %583, %581
  %585 = tail call ptr @__errno_location() #12
  store i32 32, ptr %585, align 4, !tbaa !59
  br label %675

586:                                              ; preds = %577
  %587 = getelementptr inbounds i8, ptr %579, i64 1
  %588 = load i8, ptr %587, align 1, !tbaa !64
  %589 = icmp ne i8 %588, 0
  %590 = or i1 %67, %589
  %591 = load i8, ptr @PL_tainting, align 1, !range !63
  %592 = icmp ne i8 %591, 0
  %593 = select i1 %590, i1 %592, i1 false
  br i1 %593, label %597, label %598

594:                                              ; preds = %577
  %595 = load i8, ptr @PL_tainting, align 1, !tbaa !87, !range !63, !noundef !89
  %596 = icmp eq i8 %595, 0
  br i1 %596, label %598, label %597

597:                                              ; preds = %586, %594
  call void @Perl_taint_env() #11
  br label %598

598:                                              ; preds = %594, %597, %586
  %599 = load i8, ptr @PL_tainting, align 1, !tbaa !87, !range !63, !noundef !89
  %600 = icmp eq i8 %599, 0
  br i1 %600, label %602, label %601

601:                                              ; preds = %598
  call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.7) #11
  br label %602

602:                                              ; preds = %598, %601
  store i8 114, ptr %11, align 1, !tbaa !64
  %603 = icmp eq i8 %36, 0
  br i1 %603, label %604, label %606

604:                                              ; preds = %602
  %605 = icmp eq i8 %37, 0
  br i1 %605, label %609, label %606

606:                                              ; preds = %604, %602
  %607 = phi i8 [ 98, %602 ], [ 116, %604 ]
  %608 = getelementptr inbounds [8 x i8], ptr %11, i64 0, i64 1
  store i8 %607, ptr %608, align 1, !tbaa !64
  br label %609

609:                                              ; preds = %606, %604
  %610 = icmp ugt i32 %5, 1
  br i1 %610, label %611, label %613

611:                                              ; preds = %609
  %612 = call ptr @Perl_my_popen_list(ptr noundef nonnull %11, i32 noundef %5, ptr noundef %4) #11
  br label %615

613:                                              ; preds = %609
  %614 = call ptr @Perl_my_popen(ptr noundef nonnull %579, ptr noundef nonnull %11) #11
  br label %615

615:                                              ; preds = %613, %611
  %616 = phi ptr [ %612, %611 ], [ %614, %613 ]
  %617 = load ptr, ptr %17, align 8, !tbaa !65
  %618 = getelementptr inbounds %struct.xpvio, ptr %617, i64 0, i32 16
  store i8 124, ptr %618, align 8, !tbaa !68
  br i1 %67, label %619, label %670

619:                                              ; preds = %615, %619
  %620 = phi ptr [ %627, %619 ], [ %578, %615 ]
  %621 = load i8, ptr %620, align 1, !tbaa !64
  %622 = zext i8 %621 to i64
  %623 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %622
  %624 = load i32, ptr %623, align 4, !tbaa !59
  %625 = and i32 %624, 17408
  %626 = icmp eq i32 %625, 17408
  %627 = getelementptr inbounds i8, ptr %620, i64 1
  br i1 %626, label %619, label %628, !llvm.loop !99

628:                                              ; preds = %619
  %629 = icmp eq i8 %621, 0
  br i1 %629, label %670, label %630

630:                                              ; preds = %628
  %631 = call i32 @PerlIO_apply_layers(ptr noundef %616, ptr noundef nonnull %11, ptr noundef nonnull %620) #11
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %670, label %675

633:                                              ; preds = %546, %542
  br i1 %67, label %150, label %634, !prof !73

634:                                              ; preds = %633
  %635 = load ptr, ptr %17, align 8, !tbaa !65
  %636 = getelementptr inbounds %struct.xpvio, ptr %635, i64 0, i32 16
  store i8 60, ptr %636, align 8, !tbaa !68
  br label %637

637:                                              ; preds = %637, %634
  %638 = phi ptr [ %142, %634 ], [ %645, %637 ]
  %639 = load i8, ptr %638, align 1, !tbaa !64
  %640 = zext i8 %639 to i64
  %641 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %640
  %642 = load i32, ptr %641, align 4, !tbaa !59
  %643 = and i32 %642, 17408
  %644 = icmp eq i32 %643, 17408
  %645 = getelementptr inbounds i8, ptr %638, i64 1
  br i1 %644, label %637, label %646, !prof !73, !llvm.loop !100

646:                                              ; preds = %637
  store i8 114, ptr %11, align 1, !tbaa !64
  %647 = icmp eq i8 %36, 0
  br i1 %647, label %648, label %650, !prof !74

648:                                              ; preds = %646
  %649 = icmp eq i8 %37, 0
  br i1 %649, label %653, label %650, !prof !74

650:                                              ; preds = %648, %646
  %651 = phi i8 [ 98, %646 ], [ 116, %648 ]
  %652 = getelementptr inbounds [8 x i8], ptr %11, i64 0, i64 1
  store i8 %651, ptr %652, align 1, !tbaa !64
  br label %653

653:                                              ; preds = %650, %648
  %654 = load i8, ptr %638, align 1, !tbaa !64
  %655 = icmp eq i8 %654, 45
  br i1 %655, label %656, label %664, !prof !73

656:                                              ; preds = %653
  %657 = getelementptr inbounds i8, ptr %638, i64 1
  %658 = load i8, ptr %657, align 1, !tbaa !64
  %659 = icmp eq i8 %658, 0
  br i1 %659, label %660, label %664

660:                                              ; preds = %656
  %661 = call ptr @Perl_PerlIO_stdin() #11
  %662 = load ptr, ptr %17, align 8, !tbaa !65
  %663 = getelementptr inbounds %struct.xpvio, ptr %662, i64 0, i32 16
  store i8 45, ptr %663, align 8, !tbaa !68
  br label %670

664:                                              ; preds = %653, %656
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #11
  %665 = ptrtoint ptr %66 to i64
  %666 = ptrtoint ptr %142 to i64
  %667 = sub i64 %665, %666
  %668 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %142, i64 noundef %667, i32 noundef 524288) #11
  store ptr %668, ptr %16, align 8, !tbaa !71
  %669 = call ptr @PerlIO_openn(ptr noundef null, ptr noundef nonnull %11, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 1, ptr noundef nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #11
  br label %670

670:                                              ; preds = %630, %527, %468, %231, %527, %468, %470, %459, %628, %615, %664, %660, %521, %529, %226, %228
  %671 = phi ptr [ %227, %228 ], [ %227, %226 ], [ null, %470 ], [ %460, %459 ], [ null, %529 ], [ %522, %521 ], [ %616, %628 ], [ %616, %615 ], [ %661, %660 ], [ %669, %664 ], [ null, %468 ], [ null, %527 ], [ %227, %231 ], [ null, %468 ], [ null, %527 ], [ %616, %630 ]
  %672 = phi i8 [ %162, %228 ], [ %162, %226 ], [ %461, %470 ], [ %461, %459 ], [ 0, %529 ], [ 0, %521 ], [ 0, %628 ], [ 0, %615 ], [ 0, %660 ], [ 0, %664 ], [ %461, %468 ], [ 0, %527 ], [ %162, %231 ], [ %461, %468 ], [ 0, %527 ], [ 0, %630 ]
  %673 = phi ptr [ %168, %228 ], [ %168, %226 ], [ %462, %470 ], [ %462, %459 ], [ %523, %529 ], [ %523, %521 ], [ %620, %628 ], [ %578, %615 ], [ %142, %660 ], [ null, %664 ], [ %462, %468 ], [ %523, %527 ], [ %168, %231 ], [ %462, %468 ], [ %523, %527 ], [ %620, %630 ]
  %674 = phi i32 [ 1, %228 ], [ 1, %226 ], [ %463, %470 ], [ %463, %459 ], [ %143, %529 ], [ %143, %521 ], [ %143, %628 ], [ %143, %615 ], [ %143, %660 ], [ %143, %664 ], [ %463, %468 ], [ %143, %527 ], [ 1, %231 ], [ %463, %468 ], [ %143, %527 ], [ %143, %630 ]
  br label %675

675:                                              ; preds = %630, %231, %108, %414, %584, %186, %670
  %676 = phi ptr [ null, %186 ], [ %671, %670 ], [ %415, %414 ], [ null, %584 ], [ null, %108 ], [ null, %231 ], [ null, %630 ]
  %677 = phi i8 [ %162, %186 ], [ %672, %670 ], [ %416, %414 ], [ 0, %584 ], [ 0, %108 ], [ %162, %231 ], [ 0, %630 ]
  %678 = phi ptr [ %168, %186 ], [ %673, %670 ], [ %417, %414 ], [ %578, %584 ], [ %43, %108 ], [ %168, %231 ], [ %620, %630 ]
  %679 = phi i32 [ %164, %186 ], [ %674, %670 ], [ %260, %414 ], [ %143, %584 ], [ 0, %108 ], [ 1, %231 ], [ %143, %630 ]
  %680 = phi i32 [ 6, %186 ], [ 0, %670 ], [ %419, %414 ], [ 6, %584 ], [ %111, %108 ], [ 6, %231 ], [ 6, %630 ]
  switch i32 %680, label %689 [
    i32 0, label %681
    i32 6, label %681
  ], !prof !101

681:                                              ; preds = %675, %675
  %682 = load ptr, ptr %7, align 8, !tbaa !71
  %683 = load ptr, ptr %8, align 8, !tbaa !71
  %684 = load i32, ptr %9, align 4, !tbaa !59
  %685 = load i8, ptr %10, align 1, !tbaa !64
  %686 = and i8 %677, 1
  %687 = icmp ne i8 %686, 0
  %688 = call fastcc zeroext i1 @S_openn_cleanup(ptr noundef %0, ptr noundef %17, ptr noundef %676, ptr noundef nonnull %11, ptr noundef %1, ptr noundef %682, ptr noundef %683, i32 noundef %684, i8 noundef signext %685, i32 noundef %679, i1 noundef zeroext %687, ptr noundef %678)
  br label %689

689:                                              ; preds = %681, %675
  %690 = phi i1 [ undef, %675 ], [ %688, %681 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  ret i1 %690
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @S_openn_setup(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 !prof !72 !PGOFuncName !102 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %22, label %8, !prof !73

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !82
  %11 = and i32 %10, 255
  %12 = add nsw i32 %11, -9
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %22, !prof !74

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18, !prof !73

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.gp, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !93
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %28, !prof !73

22:                                               ; preds = %8, %6, %14, %18
  %23 = tail call ptr @Perl_gv_add_by_type(ptr noundef %0, i32 noundef 15) #11
  %24 = getelementptr inbounds %struct.gv, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !64
  %26 = getelementptr inbounds %struct.gp, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !93
  br label %28

28:                                               ; preds = %18, %22
  %29 = phi ptr [ %27, %22 ], [ %20, %18 ]
  store ptr null, ptr %2, align 8, !tbaa !71
  store ptr null, ptr %3, align 8, !tbaa !71
  store i32 -1, ptr %4, align 4, !tbaa !59
  store i8 32, ptr %5, align 1, !tbaa !64
  store i64 0, ptr %1, align 1
  store i32 1, ptr @PL_forkprocess, align 4, !tbaa !59
  %30 = getelementptr inbounds %struct.io, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !64
  %32 = icmp eq ptr %31, null
  br i1 %32, label %116, label %33, !prof !74

33:                                               ; preds = %28
  %34 = load ptr, ptr %29, align 8, !tbaa !65
  %35 = getelementptr inbounds %struct.xpvio, ptr %34, i64 0, i32 16
  %36 = load i8, ptr %35, align 8, !tbaa !68
  %37 = icmp eq i8 %36, 45
  br i1 %37, label %113, label %38

38:                                               ; preds = %33
  %39 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %31) #11
  %40 = icmp slt i32 %39, 0
  %41 = load i32, ptr @PL_maxsysfd, align 4
  %42 = icmp sgt i32 %39, %41
  %43 = select i1 %40, i1 true, i1 %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %38
  %45 = load ptr, ptr %30, align 8, !tbaa !64
  store ptr %45, ptr %2, align 8, !tbaa !71
  %46 = load ptr, ptr %29, align 8, !tbaa !65
  %47 = getelementptr inbounds %struct.xpvio, ptr %46, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !103
  store ptr %48, ptr %3, align 8, !tbaa !71
  %49 = load ptr, ptr %29, align 8, !tbaa !65
  %50 = getelementptr inbounds %struct.xpvio, ptr %49, i64 0, i32 16
  %51 = load i8, ptr %50, align 8, !tbaa !68
  store i8 %51, ptr %5, align 1, !tbaa !64
  store i32 %39, ptr %4, align 4, !tbaa !59
  br label %113

52:                                               ; preds = %38
  %53 = load ptr, ptr %29, align 8, !tbaa !65
  %54 = getelementptr inbounds %struct.xpvio, ptr %53, i64 0, i32 16
  %55 = load i8, ptr %54, align 8, !tbaa !68
  %56 = icmp eq i8 %55, 124
  %57 = load ptr, ptr %30, align 8, !tbaa !64
  br i1 %56, label %58, label %60

58:                                               ; preds = %52
  %59 = tail call i32 @Perl_my_pclose(ptr noundef %57) #11
  br label %74

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.xpvio, ptr %53, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !103
  %63 = icmp eq ptr %57, %62
  br i1 %63, label %72, label %64

64:                                               ; preds = %60
  %65 = icmp eq ptr %62, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %64
  %67 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %62) #11
  %68 = load ptr, ptr %30, align 8, !tbaa !64
  %69 = tail call i32 @Perl_PerlIO_close(ptr noundef %68) #11
  br label %74

70:                                               ; preds = %64
  %71 = tail call i32 @Perl_PerlIO_close(ptr noundef %57) #11
  br label %74

72:                                               ; preds = %60
  %73 = tail call i32 @Perl_PerlIO_close(ptr noundef %57) #11
  br label %74

74:                                               ; preds = %72, %70, %66, %58
  %75 = phi i32 [ %59, %58 ], [ %67, %66 ], [ %71, %70 ], [ %73, %72 ]
  %76 = icmp eq i32 %75, -1
  %77 = load i32, ptr @PL_maxsysfd, align 4
  %78 = icmp sgt i32 %39, %77
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %113

80:                                               ; preds = %74
  %81 = load ptr, ptr @PL_stderrgv, align 8, !tbaa !71
  %82 = icmp eq ptr %81, null
  br i1 %82, label %99, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.gv, ptr %81, i64 0, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !104
  %86 = and i32 %85, 255
  %87 = icmp eq i32 %86, 9
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.gv, ptr %81, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !64
  %91 = getelementptr inbounds %struct.gp, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !93
  %93 = icmp eq ptr %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %88
  %95 = load ptr, ptr %92, align 8, !tbaa !65
  %96 = getelementptr inbounds %struct.xpvio, ptr %95, i64 0, i32 5
  %97 = load ptr, ptr %96, align 8, !tbaa !103
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %94, %88, %83, %80
  %100 = tail call ptr @Perl_PerlIO_stderr() #11
  br label %101

101:                                              ; preds = %94, %99
  %102 = phi ptr [ %100, %99 ], [ %97, %94 ]
  %103 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !64
  %105 = getelementptr inbounds %struct.gp, ptr %104, i64 0, i32 8
  %106 = load ptr, ptr %105, align 8, !tbaa !106
  %107 = icmp eq ptr %106, null
  %108 = select i1 %107, ptr %0, ptr %106
  %109 = load ptr, ptr %108, align 8, !tbaa !107
  %110 = getelementptr inbounds %struct.xpvgv, ptr %109, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !64
  %112 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %102, ptr noundef nonnull @.str.53, ptr noundef %111) #11
  br label %113

113:                                              ; preds = %44, %101, %74, %33
  store ptr null, ptr %30, align 8, !tbaa !64
  %114 = load ptr, ptr %29, align 8, !tbaa !65
  %115 = getelementptr inbounds %struct.xpvio, ptr %114, i64 0, i32 5
  store ptr null, ptr %115, align 8, !tbaa !103
  br label %116

116:                                              ; preds = %113, %28
  ret ptr %29
}

declare void @Perl_taint_proper(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PerlIO_intmode2str(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @PerlIO_openn(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i1 @S_openn_cleanup(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i8 noundef signext %8, i32 noundef %9, i1 noundef zeroext %10, ptr noundef %11) unnamed_addr #0 !prof !72 !PGOFuncName !108 {
  %13 = icmp eq ptr %2, null
  br i1 %13, label %14, label %30, !prof !73

14:                                               ; preds = %12
  %15 = load ptr, ptr %1, align 8, !tbaa !65
  %16 = getelementptr inbounds %struct.xpvio, ptr %15, i64 0, i32 16
  %17 = load i8, ptr %16, align 8, !tbaa !68
  %18 = icmp eq i8 %17, 60
  br i1 %18, label %19, label %220

19:                                               ; preds = %14
  %20 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 9) #11
  br i1 %20, label %21, label %220

21:                                               ; preds = %19
  %22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #13
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %220, label %24

24:                                               ; preds = %21
  %25 = getelementptr i8, ptr %4, i64 %22
  %26 = getelementptr i8, ptr %25, i64 -1
  %27 = load i8, ptr %26, align 1, !tbaa !64
  %28 = icmp eq i8 %27, 10
  br i1 %28, label %29, label %220

29:                                               ; preds = %24
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 9, ptr noundef nonnull @PL_warn_nl, ptr noundef nonnull @.str.3) #11
  br label %220

30:                                               ; preds = %12
  %31 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 5) #11
  br i1 %31, label %32, label %74, !prof !73

32:                                               ; preds = %30
  %33 = load ptr, ptr %1, align 8, !tbaa !65
  %34 = getelementptr inbounds %struct.xpvio, ptr %33, i64 0, i32 16
  %35 = load i8, ptr %34, align 8, !tbaa !68
  %36 = icmp eq i8 %35, 60
  br i1 %36, label %37, label %56

37:                                               ; preds = %32
  %38 = tail call ptr @Perl_PerlIO_stdout() #11
  %39 = icmp eq ptr %38, %2
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = tail call ptr @Perl_PerlIO_stderr() #11
  %42 = icmp eq ptr %41, %2
  br i1 %42, label %43, label %56

43:                                               ; preds = %40, %37
  %44 = tail call ptr @Perl_PerlIO_stdout() #11
  %45 = icmp eq ptr %44, %2
  %46 = select i1 %45, ptr @.str.56, ptr @.str.57
  %47 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !64
  %49 = getelementptr inbounds %struct.gp, ptr %48, i64 0, i32 8
  %50 = load ptr, ptr %49, align 8, !tbaa !106
  %51 = icmp eq ptr %50, null
  %52 = select i1 %51, ptr %0, ptr %50
  %53 = load ptr, ptr %52, align 8, !tbaa !107
  %54 = getelementptr inbounds %struct.xpvgv, ptr %53, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !64
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 5, ptr noundef nonnull @.str.55, ptr noundef nonnull %46, ptr noundef %55) #11
  br label %74

56:                                               ; preds = %40, %32
  %57 = load ptr, ptr %1, align 8, !tbaa !65
  %58 = getelementptr inbounds %struct.xpvio, ptr %57, i64 0, i32 16
  %59 = load i8, ptr %58, align 8, !tbaa !68
  %60 = icmp eq i8 %59, 62
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = tail call ptr @Perl_PerlIO_stdin() #11
  %63 = icmp eq ptr %62, %2
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !64
  %67 = getelementptr inbounds %struct.gp, ptr %66, i64 0, i32 8
  %68 = load ptr, ptr %67, align 8, !tbaa !106
  %69 = icmp eq ptr %68, null
  %70 = select i1 %69, ptr %0, ptr %68
  %71 = load ptr, ptr %70, align 8, !tbaa !107
  %72 = getelementptr inbounds %struct.xpvgv, ptr %71, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !64
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 5, ptr noundef nonnull @.str.58, ptr noundef %73) #11
  br label %74

74:                                               ; preds = %43, %64, %61, %56, %30
  %75 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %2) #11
  %76 = load ptr, ptr %1, align 8, !tbaa !65
  %77 = getelementptr inbounds %struct.xpvio, ptr %76, i64 0, i32 16
  %78 = load i8, ptr %77, align 8, !tbaa !68
  switch i8 %78, label %79 [
    i8 0, label %95
    i8 124, label %95
  ], !prof !109

79:                                               ; preds = %74
  %80 = icmp ne i8 %78, 45
  %81 = icmp sgt i32 %75, -1
  %82 = select i1 %80, i1 %81, i1 false, !prof !74
  br i1 %82, label %83, label %95, !prof !74

83:                                               ; preds = %79
  %84 = tail call i32 @fstat64(i32 noundef %75, ptr noundef nonnull @PL_statbuf) #11
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88, !prof !73

86:                                               ; preds = %83
  %87 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %2) #11
  br label %220

88:                                               ; preds = %83
  %89 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statbuf, i64 0, i32 3), align 8, !tbaa !110
  %90 = and i32 %89, 61440
  %91 = icmp eq i32 %90, 49152
  br i1 %91, label %92, label %95, !prof !73

92:                                               ; preds = %88
  %93 = load ptr, ptr %1, align 8, !tbaa !65
  %94 = getelementptr inbounds %struct.xpvio, ptr %93, i64 0, i32 16
  store i8 115, ptr %94, align 8, !tbaa !68
  br label %95

95:                                               ; preds = %74, %74, %88, %92, %79
  %96 = icmp eq ptr %5, null
  br i1 %96, label %176, label %97, !prof !74

97:                                               ; preds = %95
  %98 = icmp eq ptr %6, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %97
  %100 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %6) #11
  %101 = icmp eq ptr %6, %5
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %6) #11
  br label %104

104:                                              ; preds = %99, %102, %97
  %105 = icmp eq i32 %75, %7
  br i1 %105, label %174, label %106

106:                                              ; preds = %104
  %107 = icmp slt i32 %75, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %106
  %109 = tail call ptr @__errno_location() #12
  store i32 9, ptr %109, align 4, !tbaa !59
  br label %220

110:                                              ; preds = %106
  %111 = tail call i32 @dup2(i32 noundef %75, i32 noundef %7) #11
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %2) #11
  br label %220

115:                                              ; preds = %110
  %116 = load ptr, ptr @PL_fdpid, align 8, !tbaa !71
  %117 = zext nneg i32 %75 to i64
  %118 = tail call ptr @Perl_av_fetch(ptr noundef %116, i64 noundef %117, i32 noundef 1) #11
  %119 = load ptr, ptr %118, align 8, !tbaa !71
  %120 = getelementptr inbounds %struct.sv, ptr %119, i64 0, i32 2
  %121 = load i32, ptr %120, align 4, !tbaa !82
  %122 = and i32 %121, 255
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  tail call void @Perl_sv_upgrade(ptr noundef %119, i32 noundef 1) #11
  br label %125

125:                                              ; preds = %124, %115
  %126 = load ptr, ptr %119, align 8, !tbaa !84
  %127 = getelementptr inbounds %struct.xpviv, ptr %126, i64 0, i32 4
  %128 = load i64, ptr %127, align 8, !tbaa !64
  store i64 0, ptr %127, align 8, !tbaa !64
  %129 = load ptr, ptr @PL_fdpid, align 8, !tbaa !71
  %130 = sext i32 %7 to i64
  %131 = tail call ptr @Perl_av_fetch(ptr noundef %129, i64 noundef %130, i32 noundef 1) #11
  %132 = load ptr, ptr %131, align 8, !tbaa !71
  %133 = getelementptr inbounds %struct.sv, ptr %132, i64 0, i32 2
  %134 = load i32, ptr %133, align 4, !tbaa !82
  %135 = and i32 %134, 255
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %125
  tail call void @Perl_sv_upgrade(ptr noundef %132, i32 noundef 1) #11
  br label %138

138:                                              ; preds = %137, %125
  %139 = shl i64 %128, 32
  %140 = ashr exact i64 %139, 32
  %141 = load ptr, ptr %132, align 8, !tbaa !84
  %142 = getelementptr inbounds %struct.xpviv, ptr %141, i64 0, i32 4
  store i64 %140, ptr %142, align 8, !tbaa !64
  br i1 %10, label %143, label %172

143:                                              ; preds = %138
  %144 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %2) #11
  %145 = icmp sgt i32 %144, -1
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = tail call i32 @dup(i32 noundef %144) #11
  br label %148

148:                                              ; preds = %143, %146
  %149 = phi i32 [ %147, %146 ], [ -1, %143 ]
  br i1 %145, label %150, label %152

150:                                              ; preds = %148
  %151 = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %144, i32 noundef 1) #11
  br label %152

152:                                              ; preds = %148, %150
  %153 = phi i32 [ %151, %150 ], [ -1, %148 ]
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = icmp sgt i32 %149, -1
  br i1 %156, label %157, label %220

157:                                              ; preds = %155
  %158 = tail call i32 @close(i32 noundef %149) #11
  br label %220

159:                                              ; preds = %152
  %160 = icmp slt i32 %144, 0
  %161 = icmp slt i32 %149, 0
  %162 = select i1 %160, i1 true, i1 %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = icmp sgt i32 %149, -1
  br i1 %164, label %165, label %220

165:                                              ; preds = %163
  %166 = tail call i32 @close(i32 noundef %149) #11
  br label %220

167:                                              ; preds = %159
  %168 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %2) #11
  %169 = tail call i32 @dup2(i32 noundef %149, i32 noundef %144) #11
  %170 = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %144, i32 noundef 2, i32 noundef %153) #11
  %171 = tail call i32 @close(i32 noundef %149) #11
  br label %174

172:                                              ; preds = %138
  %173 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %2) #11
  br label %174

174:                                              ; preds = %167, %172, %104
  tail call void @Perl_PerlIO_clearerr(ptr noundef nonnull %5) #11
  %175 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %5) #11
  br label %176

176:                                              ; preds = %174, %95
  %177 = phi i32 [ %175, %174 ], [ %75, %95 ]
  %178 = phi ptr [ %5, %174 ], [ %2, %95 ]
  %179 = icmp sgt i32 %177, -1
  br i1 %179, label %180, label %188, !prof !74

180:                                              ; preds = %176
  %181 = load i32, ptr @PL_maxsysfd, align 4, !tbaa !59
  %182 = icmp sgt i32 %177, %181
  %183 = zext i1 %182 to i32
  %184 = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %177, i32 noundef 2, i32 noundef %183) #11
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %188, !prof !73

186:                                              ; preds = %180
  %187 = tail call i32 @close(i32 noundef %177) #11
  br label %220

188:                                              ; preds = %180, %176
  %189 = getelementptr inbounds %struct.io, ptr %1, i64 0, i32 3
  store ptr %178, ptr %189, align 8, !tbaa !64
  %190 = load ptr, ptr %1, align 8, !tbaa !65
  %191 = getelementptr inbounds %struct.xpvio, ptr %190, i64 0, i32 17
  %192 = load i8, ptr %191, align 1, !tbaa !113
  %193 = and i8 %192, -33
  store i8 %193, ptr %191, align 1, !tbaa !113
  %194 = icmp eq i32 %9, 0
  br i1 %194, label %225, label %195, !prof !74

195:                                              ; preds = %188
  %196 = getelementptr inbounds %struct.xpvio, ptr %190, i64 0, i32 16
  %197 = load i8, ptr %196, align 8, !tbaa !68
  %198 = icmp eq i8 %197, 115
  br i1 %198, label %206, label %199

199:                                              ; preds = %195
  %200 = icmp eq i8 %197, 62
  %201 = and i1 %179, %200
  br i1 %201, label %202, label %218

202:                                              ; preds = %199
  %203 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statbuf, i64 0, i32 3), align 8, !tbaa !110
  %204 = and i32 %203, 61440
  %205 = icmp eq i32 %204, 8192
  br i1 %205, label %206, label %218

206:                                              ; preds = %202, %195
  %207 = load i8, ptr %3, align 1, !tbaa !64
  switch i8 %207, label %210 [
    i8 73, label %208
    i8 35, label %208
  ]

208:                                              ; preds = %206, %206
  %209 = getelementptr inbounds i8, ptr %3, i64 1
  br label %210

210:                                              ; preds = %206, %208
  %211 = phi ptr [ %209, %208 ], [ %3, %206 ]
  store i8 119, ptr %211, align 1, !tbaa !64
  %212 = tail call ptr @PerlIO_openn(ptr noundef %11, ptr noundef nonnull %211, i32 noundef %177, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null) #11
  %213 = load ptr, ptr %1, align 8, !tbaa !65
  %214 = getelementptr inbounds %struct.xpvio, ptr %213, i64 0, i32 5
  store ptr %212, ptr %214, align 8, !tbaa !103
  %215 = icmp eq ptr %212, null
  br i1 %215, label %216, label %225

216:                                              ; preds = %210
  %217 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %178) #11
  br label %220

218:                                              ; preds = %202, %199
  %219 = getelementptr inbounds %struct.xpvio, ptr %190, i64 0, i32 5
  store ptr %178, ptr %219, align 8, !tbaa !103
  br label %225

220:                                              ; preds = %216, %157, %155, %165, %163, %21, %14, %19, %24, %29, %186, %113, %108, %86
  %221 = getelementptr inbounds %struct.io, ptr %1, i64 0, i32 3
  store ptr %5, ptr %221, align 8, !tbaa !64
  %222 = load ptr, ptr %1, align 8, !tbaa !65
  %223 = getelementptr inbounds %struct.xpvio, ptr %222, i64 0, i32 5
  store ptr %6, ptr %223, align 8, !tbaa !103
  %224 = getelementptr inbounds %struct.xpvio, ptr %222, i64 0, i32 16
  store i8 %8, ptr %224, align 8, !tbaa !68
  br label %225

225:                                              ; preds = %210, %188, %218, %220
  %226 = phi i1 [ false, %220 ], [ true, %218 ], [ true, %188 ], [ true, %210 ]
  ret i1 %226
}

declare ptr @Perl_savepvn(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i1 @S_is_safe_syscall(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !58 {
  %5 = icmp ugt i64 %1, 1
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = add i64 %1, -1
  %8 = tail call ptr @memchr(ptr noundef %0, i32 noundef 0, i64 noundef %7) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @__errno_location() #12
  store i32 2, ptr %11, align 4, !tbaa !59
  %12 = getelementptr inbounds i8, ptr %8, i64 1
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 59, ptr noundef nonnull @.str.54, ptr noundef %2, ptr noundef %3, ptr noundef %0, ptr noundef nonnull %12) #11
  br label %13

13:                                               ; preds = %4, %6, %10
  %14 = phi i1 [ false, %10 ], [ true, %6 ], [ true, %4 ]
  ret i1 %14
}

declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #1

declare void @Perl_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

declare void @Perl_taint_env() local_unnamed_addr #1

declare ptr @Perl_my_popen_list(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Perl_my_popen(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PerlIO_apply_layers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @Perl_looks_like_number(ptr noundef) local_unnamed_addr #1

declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i1 @Perl_grok_atoUV(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Perl_sv_2io(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_gv_fetchpvn_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Perl_PerlIO_flush(ptr noundef) local_unnamed_addr #1

declare i32 @Perl_PerlIO_fileno(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_PerlIO_stdout() local_unnamed_addr #1

declare ptr @Perl_PerlIO_stderr() local_unnamed_addr #1

declare ptr @Perl_PerlIO_stdin() local_unnamed_addr #1

declare ptr @PerlIO_fdupopen(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @dup(i32 noundef) local_unnamed_addr #4

declare i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_nextargv(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 !prof !58 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = getelementptr inbounds %struct.gp, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = load ptr, ptr @PL_argvoutgv, align 8, !tbaa !71
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = tail call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.12, i64 noundef 7, i32 noundef 129, i32 noundef 15) #11
  store ptr %11, ptr @PL_argvoutgv, align 8, !tbaa !71
  br label %12

12:                                               ; preds = %10, %2
  %13 = icmp eq ptr %7, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %7, align 8, !tbaa !65
  %16 = getelementptr inbounds %struct.xpvio, ptr %15, i64 0, i32 17
  %17 = load i8, ptr %16, align 1, !tbaa !113
  %18 = and i8 %17, 3
  %19 = icmp eq i8 %18, 3
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = and i8 %17, -3
  store i8 %21, ptr %16, align 1, !tbaa !113
  %22 = load ptr, ptr @PL_inplace, align 8, !tbaa !71
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !71
  %26 = getelementptr inbounds %struct.gv, ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !114
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 8, !tbaa !114
  tail call void @Perl_av_create_and_push(ptr noundef nonnull @PL_argvout_stack, ptr noundef %25) #11
  br label %29

29:                                               ; preds = %20, %24, %14, %12
  %30 = load i32, ptr @PL_filemode, align 4, !tbaa !59
  %31 = and i32 %30, 3072
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %64, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @PL_argvoutgv, align 8, !tbaa !71
  %35 = icmp eq ptr %34, null
  br i1 %35, label %50, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !82
  %39 = and i32 %38, 255
  %40 = add nsw i32 %39, -9
  %41 = icmp ult i32 %40, 2
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.gv, ptr %34, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !64
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.gp, ptr %44, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !93
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %36, %33, %42, %46
  %51 = tail call ptr @Perl_gv_add_by_type(ptr noundef %34, i32 noundef 15) #11
  %52 = getelementptr inbounds %struct.gv, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !64
  %54 = getelementptr inbounds %struct.gp, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !93
  br label %56

56:                                               ; preds = %46, %50
  %57 = phi ptr [ %55, %50 ], [ %48, %46 ]
  %58 = getelementptr inbounds %struct.io, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !64
  %60 = tail call i32 @Perl_PerlIO_flush(ptr noundef %59) #11
  %61 = load ptr, ptr @PL_oldname, align 8, !tbaa !71
  %62 = load i32, ptr @PL_filemode, align 4, !tbaa !59
  %63 = tail call i32 @chmod(ptr noundef %61, i32 noundef %62) #11
  br label %64

64:                                               ; preds = %56, %29
  store i32 -1, ptr @PL_lastfd, align 4, !tbaa !59
  store i32 0, ptr @PL_filemode, align 4, !tbaa !59
  %65 = load ptr, ptr %4, align 8, !tbaa !64
  %66 = getelementptr inbounds %struct.gp, ptr %65, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !115
  %68 = icmp eq ptr %67, null
  br i1 %68, label %338, label %69

69:                                               ; preds = %64, %298
  %70 = phi ptr [ %297, %298 ], [ undef, %64 ]
  %71 = load ptr, ptr %4, align 8, !tbaa !64
  %72 = getelementptr inbounds %struct.gp, ptr %71, i64 0, i32 6
  %73 = load ptr, ptr %72, align 8, !tbaa !115
  %74 = getelementptr inbounds %struct.sv, ptr %73, i64 0, i32 2
  %75 = load i32, ptr %74, align 4, !tbaa !82
  %76 = and i32 %75, 8388608
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %69
  %79 = call i32 @Perl_mg_size(ptr noundef %73) #11
  %80 = sext i32 %79 to i64
  br label %85

81:                                               ; preds = %69
  %82 = load ptr, ptr %73, align 8, !tbaa !116
  %83 = getelementptr inbounds %struct.xpvav, ptr %82, i64 0, i32 2
  %84 = load i64, ptr %83, align 8, !tbaa !118
  br label %85

85:                                               ; preds = %78, %81
  %86 = phi i64 [ %80, %78 ], [ %84, %81 ]
  %87 = icmp sgt i64 %86, -1
  br i1 %87, label %88, label %299

88:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %89 = load ptr, ptr %4, align 8, !tbaa !64
  %90 = getelementptr inbounds %struct.gp, ptr %89, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8, !tbaa !115
  %92 = call ptr @Perl_av_shift(ptr noundef %91) #11
  call void @Perl_save_pushptr(ptr noundef %92, i32 noundef 11) #11
  %93 = load i8, ptr @PL_tainting, align 1, !tbaa !87, !range !63, !noundef !89
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %88
  %96 = load ptr, ptr %4, align 8, !tbaa !64
  %97 = load ptr, ptr %96, align 8, !tbaa !120
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = call ptr @Perl_gv_add_by_type(ptr noundef %0, i32 noundef 0) #11
  %101 = getelementptr inbounds %struct.gv, ptr %100, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !64
  br label %103

103:                                              ; preds = %95, %99
  %104 = phi ptr [ %102, %99 ], [ %96, %95 ]
  %105 = load ptr, ptr %104, align 8, !tbaa !71
  call void @Perl_sv_untaint(ptr noundef %105) #11
  br label %106

106:                                              ; preds = %88, %103
  %107 = load ptr, ptr %4, align 8, !tbaa !64
  %108 = load ptr, ptr %107, align 8, !tbaa !120
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = call ptr @Perl_gv_add_by_type(ptr noundef %0, i32 noundef 0) #11
  %112 = getelementptr inbounds %struct.gv, ptr %111, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !64
  br label %114

114:                                              ; preds = %106, %110
  %115 = phi ptr [ %113, %110 ], [ %107, %106 ]
  %116 = load ptr, ptr %115, align 8, !tbaa !71
  call void @Perl_sv_setsv_flags(ptr noundef %116, ptr noundef %92, i32 noundef 1538) #11
  %117 = load ptr, ptr %4, align 8, !tbaa !64
  %118 = load ptr, ptr %117, align 8, !tbaa !120
  %119 = getelementptr inbounds %struct.sv, ptr %118, i64 0, i32 2
  %120 = load i32, ptr %119, align 4, !tbaa !82
  %121 = and i32 %120, 4194304
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %114
  %124 = call i32 @Perl_mg_set(ptr noundef %118) #11
  br label %125

125:                                              ; preds = %114, %123
  %126 = load ptr, ptr %4, align 8, !tbaa !64
  %127 = load ptr, ptr %126, align 8, !tbaa !120
  store ptr %127, ptr @PL_Sv, align 8, !tbaa !71
  %128 = getelementptr inbounds %struct.sv, ptr %127, i64 0, i32 2
  %129 = load i32, ptr %128, align 4, !tbaa !82
  %130 = and i32 %129, 2098176
  %131 = icmp eq i32 %130, 1024
  br i1 %131, label %132, label %138

132:                                              ; preds = %125
  %133 = load ptr, ptr %127, align 8, !tbaa !84
  %134 = getelementptr inbounds %struct.xpv, ptr %133, i64 0, i32 2
  %135 = load i64, ptr %134, align 8, !tbaa !85
  store i64 %135, ptr %3, align 8, !tbaa !81
  %136 = getelementptr inbounds %struct.sv, ptr %127, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !64
  br label %140

138:                                              ; preds = %125
  %139 = call ptr @Perl_sv_2pv_flags(ptr noundef %127, ptr noundef nonnull %3, i32 noundef 2) #11
  br label %140

140:                                              ; preds = %138, %132
  %141 = phi ptr [ %137, %132 ], [ %139, %138 ]
  store ptr %141, ptr @PL_oldname, align 8, !tbaa !71
  %142 = load ptr, ptr @PL_inplace, align 8, !tbaa !71
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %157

144:                                              ; preds = %140
  br i1 %1, label %145, label %148

145:                                              ; preds = %144
  %146 = load ptr, ptr %4, align 8, !tbaa !64
  %147 = call zeroext i1 @Perl_do_open6(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef 1, ptr noundef null, ptr noundef %146, i32 noundef 1)
  br i1 %147, label %151, label %278

148:                                              ; preds = %144
  %149 = load i64, ptr %3, align 8, !tbaa !81
  %150 = call zeroext i1 @Perl_do_open6(ptr noundef %0, ptr noundef %141, i64 noundef %149, ptr noundef null, ptr noundef null, i32 noundef 0)
  br i1 %150, label %151, label %278

151:                                              ; preds = %148, %145
  %152 = load ptr, ptr %4, align 8, !tbaa !64
  %153 = getelementptr inbounds %struct.gp, ptr %152, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !93
  %155 = getelementptr inbounds %struct.io, ptr %154, i64 0, i32 3
  %156 = load ptr, ptr %155, align 8, !tbaa !64
  br label %295

157:                                              ; preds = %140
  %158 = load i64, ptr %3, align 8, !tbaa !81
  %159 = call zeroext i1 @Perl_do_open_raw(ptr noundef %0, ptr noundef %141, i64 noundef %158, i32 noundef 0, i32 noundef 0)
  br i1 %159, label %160, label %278

160:                                              ; preds = %157
  %161 = load i8, ptr @PL_tainting, align 1, !tbaa !87, !range !63, !noundef !89
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %160
  call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.14) #11
  br label %164

164:                                              ; preds = %160, %163
  %165 = load i64, ptr %3, align 8, !tbaa !81
  %166 = icmp eq i64 %165, 1
  br i1 %166, label %167, label %178

167:                                              ; preds = %164
  %168 = load ptr, ptr @PL_oldname, align 8, !tbaa !71
  %169 = load i8, ptr %168, align 1, !tbaa !64
  %170 = icmp eq i8 %169, 45
  br i1 %170, label %171, label %178

171:                                              ; preds = %167
  %172 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.15, i64 noundef 6, i32 noundef 129, i32 noundef 15) #11
  call void @Perl_setdefout(ptr noundef %172) #11
  %173 = load ptr, ptr %4, align 8, !tbaa !64
  %174 = getelementptr inbounds %struct.gp, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !93
  %176 = getelementptr inbounds %struct.io, ptr %175, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !64
  br label %295

178:                                              ; preds = %167, %164
  %179 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statbuf, i64 0, i32 3), align 8, !tbaa !110
  store i32 %179, ptr @PL_filemode, align 4, !tbaa !59
  %180 = and i32 %179, 61440
  %181 = icmp eq i32 %180, 32768
  br i1 %181, label %185, label %182

182:                                              ; preds = %178
  %183 = load ptr, ptr @PL_oldname, align 8, !tbaa !71
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 23, ptr noundef nonnull @.str.16, ptr noundef %183) #11
  %184 = call zeroext i1 @Perl_do_close(ptr noundef %0, i1 noundef zeroext false)
  br label %295, !llvm.loop !121

185:                                              ; preds = %178
  %186 = load ptr, ptr @PL_inplace, align 8, !tbaa !71
  %187 = load i8, ptr %186, align 1, !tbaa !64
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %230, label %189

189:                                              ; preds = %185
  %190 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %186, ptr noundef nonnull dereferenceable(2) @.str.17) #13
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %230, label %192

192:                                              ; preds = %189
  %193 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %186, i32 noundef 42) #13
  %194 = icmp eq ptr %193, null
  br i1 %194, label %210, label %195

195:                                              ; preds = %192
  call void @Perl_sv_setpvn(ptr noundef %92, ptr noundef nonnull @.str.4, i64 noundef 0) #11
  br label %196

196:                                              ; preds = %196, %195
  %197 = phi ptr [ %193, %195 ], [ %205, %196 ]
  %198 = phi ptr [ %186, %195 ], [ %204, %196 ]
  %199 = ptrtoint ptr %197 to i64
  %200 = ptrtoint ptr %198 to i64
  %201 = sub i64 %199, %200
  call void @Perl_sv_catpvn_flags(ptr noundef %92, ptr noundef nonnull %198, i64 noundef %201, i32 noundef 2) #11
  %202 = load ptr, ptr @PL_oldname, align 8, !tbaa !71
  %203 = load i64, ptr %3, align 8, !tbaa !81
  call void @Perl_sv_catpvn_flags(ptr noundef %92, ptr noundef %202, i64 noundef %203, i32 noundef 2) #11
  %204 = getelementptr inbounds i8, ptr %197, i64 1
  %205 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %204, i32 noundef 42) #13
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %196, !llvm.loop !122

207:                                              ; preds = %196
  %208 = load i8, ptr %204, align 1, !tbaa !64
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %192, %207
  %211 = phi ptr [ %204, %207 ], [ %186, %192 ]
  call void @Perl_sv_catpv(ptr noundef %92, ptr noundef nonnull %211) #11
  br label %212

212:                                              ; preds = %210, %207
  %213 = getelementptr inbounds %struct.sv, ptr %92, i64 0, i32 3
  %214 = load ptr, ptr %213, align 8, !tbaa !64
  %215 = call i32 @unlink(ptr noundef %214) #11
  %216 = load ptr, ptr @PL_oldname, align 8, !tbaa !71
  %217 = load ptr, ptr %213, align 8, !tbaa !64
  %218 = call i32 @link(ptr noundef %216, ptr noundef %217) #11
  %219 = icmp sgt i32 %218, -1
  %220 = load ptr, ptr @PL_oldname, align 8, !tbaa !71
  br i1 %219, label %226, label %221

221:                                              ; preds = %212
  %222 = tail call ptr @__errno_location() #12
  %223 = load i32, ptr %222, align 4, !tbaa !59
  %224 = call ptr @strerror(i32 noundef %223) #11
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 23, ptr noundef nonnull @.str.18, ptr noundef %220, ptr noundef %92, ptr noundef %224) #11
  %225 = call zeroext i1 @Perl_do_close(ptr noundef %0, i1 noundef zeroext false)
  br label %228, !llvm.loop !121

226:                                              ; preds = %212
  %227 = call i32 @unlink(ptr noundef %220) #11
  br label %228

228:                                              ; preds = %226, %221
  %229 = phi i32 [ 2, %221 ], [ 0, %226 ]
  br i1 %219, label %240, label %295

230:                                              ; preds = %189, %185
  %231 = load ptr, ptr @PL_oldname, align 8, !tbaa !71
  %232 = call i32 @unlink(ptr noundef %231) #11
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %230
  %235 = load ptr, ptr @PL_oldname, align 8, !tbaa !71
  %236 = tail call ptr @__errno_location() #12
  %237 = load i32, ptr %236, align 4, !tbaa !59
  %238 = call ptr @strerror(i32 noundef %237) #11
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 23, ptr noundef nonnull @.str.19, ptr noundef %235, ptr noundef %238) #11
  %239 = call zeroext i1 @Perl_do_close(ptr noundef %0, i1 noundef zeroext false)
  br label %295, !llvm.loop !121

240:                                              ; preds = %230, %228
  %241 = load ptr, ptr @PL_oldname, align 8, !tbaa !71
  %242 = load i64, ptr %3, align 8, !tbaa !81
  call void @Perl_sv_setpvn(ptr noundef %92, ptr noundef %241, i64 noundef %242) #11
  %243 = tail call ptr @__errno_location() #12
  store i32 0, ptr %243, align 4, !tbaa !59
  %244 = load ptr, ptr @PL_argvoutgv, align 8, !tbaa !71
  %245 = getelementptr inbounds %struct.sv, ptr %92, i64 0, i32 3
  %246 = load ptr, ptr %245, align 8, !tbaa !64
  %247 = load ptr, ptr %92, align 8, !tbaa !84
  %248 = getelementptr inbounds %struct.xpv, ptr %247, i64 0, i32 2
  %249 = load i64, ptr %248, align 8, !tbaa !85
  %250 = call zeroext i1 @Perl_do_open_raw(ptr noundef %244, ptr noundef %246, i64 noundef %249, i32 noundef 193, i32 noundef 384)
  br i1 %250, label %256, label %251

251:                                              ; preds = %240
  %252 = load ptr, ptr @PL_oldname, align 8, !tbaa !71
  %253 = load i32, ptr %243, align 4, !tbaa !59
  %254 = call ptr @strerror(i32 noundef %253) #11
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 23, ptr noundef nonnull @.str.20, ptr noundef %252, ptr noundef %254) #11
  %255 = call zeroext i1 @Perl_do_close(ptr noundef %0, i1 noundef zeroext false)
  br label %295, !llvm.loop !121

256:                                              ; preds = %240
  %257 = load ptr, ptr @PL_argvoutgv, align 8, !tbaa !71
  call void @Perl_setdefout(ptr noundef %257) #11
  %258 = load ptr, ptr @PL_argvoutgv, align 8, !tbaa !71
  %259 = getelementptr inbounds %struct.gv, ptr %258, i64 0, i32 3
  %260 = load ptr, ptr %259, align 8, !tbaa !64
  %261 = getelementptr inbounds %struct.gp, ptr %260, i64 0, i32 1
  %262 = load ptr, ptr %261, align 8, !tbaa !93
  %263 = getelementptr inbounds %struct.io, ptr %262, i64 0, i32 3
  %264 = load ptr, ptr %263, align 8, !tbaa !64
  %265 = call i32 @Perl_PerlIO_fileno(ptr noundef %264) #11
  store i32 %265, ptr @PL_lastfd, align 4, !tbaa !59
  %266 = icmp sgt i32 %265, -1
  br i1 %266, label %267, label %272

267:                                              ; preds = %256
  %268 = call i32 @fstat64(i32 noundef %265, ptr noundef nonnull @PL_statbuf) #11
  %269 = load ptr, ptr @PL_oldname, align 8, !tbaa !71
  %270 = load i32, ptr @PL_filemode, align 4, !tbaa !59
  %271 = call i32 @chmod(ptr noundef %269, i32 noundef %270) #11
  br label %272

272:                                              ; preds = %267, %256
  %273 = load ptr, ptr %4, align 8, !tbaa !64
  %274 = getelementptr inbounds %struct.gp, ptr %273, i64 0, i32 1
  %275 = load ptr, ptr %274, align 8, !tbaa !93
  %276 = getelementptr inbounds %struct.io, ptr %275, i64 0, i32 3
  %277 = load ptr, ptr %276, align 8, !tbaa !64
  br label %295

278:                                              ; preds = %148, %157, %145
  %279 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 23) #11
  br i1 %279, label %280, label %295

280:                                              ; preds = %278
  %281 = tail call ptr @__errno_location() #12
  %282 = load i32, ptr %281, align 4, !tbaa !59
  %283 = load ptr, ptr @PL_oldname, align 8, !tbaa !71
  %284 = call i32 @stat64(ptr noundef %283, ptr noundef nonnull @PL_statbuf) #11
  %285 = icmp sgt i32 %284, -1
  br i1 %285, label %286, label %292

286:                                              ; preds = %280
  %287 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statbuf, i64 0, i32 3), align 8, !tbaa !110
  %288 = and i32 %287, 61440
  %289 = icmp eq i32 %288, 32768
  br i1 %289, label %292, label %290

290:                                              ; preds = %286
  %291 = load ptr, ptr @PL_oldname, align 8, !tbaa !71
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 23, ptr noundef nonnull @.str.16, ptr noundef %291) #11
  br label %295

292:                                              ; preds = %286, %280
  %293 = load ptr, ptr @PL_oldname, align 8, !tbaa !71
  %294 = call ptr @strerror(i32 noundef %282) #11
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 23, ptr noundef nonnull @.str.21, ptr noundef %293, ptr noundef %294) #11
  br label %295

295:                                              ; preds = %278, %292, %290, %171, %182, %234, %251, %272, %228, %151
  %296 = phi i32 [ 1, %151 ], [ 1, %171 ], [ 1, %272 ], [ 2, %251 ], [ %229, %228 ], [ 2, %234 ], [ 2, %182 ], [ 0, %290 ], [ 0, %292 ], [ 0, %278 ]
  %297 = phi ptr [ %156, %151 ], [ %177, %171 ], [ %277, %272 ], [ %70, %251 ], [ %70, %228 ], [ %70, %234 ], [ %70, %182 ], [ %70, %290 ], [ %70, %292 ], [ %70, %278 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  switch i32 %296, label %338 [
    i32 0, label %298
    i32 2, label %298
  ]

298:                                              ; preds = %295, %295
  br label %69, !llvm.loop !121

299:                                              ; preds = %85
  br i1 %13, label %308, label %300

300:                                              ; preds = %299
  %301 = load ptr, ptr %7, align 8, !tbaa !65
  %302 = getelementptr inbounds %struct.xpvio, ptr %301, i64 0, i32 17
  %303 = load i8, ptr %302, align 1, !tbaa !113
  %304 = and i8 %303, 1
  %305 = icmp eq i8 %304, 0
  br i1 %305, label %308, label %306

306:                                              ; preds = %300
  %307 = or i8 %303, 2
  store i8 %307, ptr %302, align 1, !tbaa !113
  br label %308

308:                                              ; preds = %306, %300, %299
  %309 = load ptr, ptr @PL_inplace, align 8, !tbaa !71
  %310 = icmp eq ptr %309, null
  br i1 %310, label %338, label %311

311:                                              ; preds = %308
  %312 = load ptr, ptr @PL_argvoutgv, align 8, !tbaa !71
  %313 = call zeroext i1 @Perl_do_close(ptr noundef %312, i1 noundef zeroext false)
  br i1 %13, label %336, label %314

314:                                              ; preds = %311
  %315 = load ptr, ptr %7, align 8, !tbaa !65
  %316 = getelementptr inbounds %struct.xpvio, ptr %315, i64 0, i32 17
  %317 = load i8, ptr %316, align 1, !tbaa !113
  %318 = and i8 %317, 1
  %319 = icmp ne i8 %318, 0
  %320 = load ptr, ptr @PL_argvout_stack, align 8
  %321 = icmp ne ptr %320, null
  %322 = select i1 %319, i1 %321, i1 false
  br i1 %322, label %323, label %336

323:                                              ; preds = %314
  %324 = load ptr, ptr %320, align 8, !tbaa !116
  %325 = getelementptr inbounds %struct.xpvav, ptr %324, i64 0, i32 2
  %326 = load i64, ptr %325, align 8, !tbaa !118
  %327 = icmp sgt i64 %326, -1
  br i1 %327, label %328, label %336

328:                                              ; preds = %323
  %329 = call ptr @Perl_av_pop(ptr noundef nonnull %320) #11
  call void @Perl_setdefout(ptr noundef %329) #11
  %330 = getelementptr inbounds %struct.sv, ptr %329, i64 0, i32 1
  %331 = load i32, ptr %330, align 8, !tbaa !123
  %332 = icmp ugt i32 %331, 1
  br i1 %332, label %333, label %335

333:                                              ; preds = %328
  %334 = add i32 %331, -1
  store i32 %334, ptr %330, align 8, !tbaa !123
  br label %338

335:                                              ; preds = %328
  call void @Perl_sv_free2(ptr noundef %329, i32 noundef %331) #11
  br label %338

336:                                              ; preds = %323, %314, %311
  %337 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.15, i64 noundef 6, i32 noundef 129, i32 noundef 15) #11
  call void @Perl_setdefout(ptr noundef %337) #11
  br label %338

338:                                              ; preds = %295, %335, %333, %308, %336, %64
  %339 = phi ptr [ null, %64 ], [ null, %336 ], [ null, %308 ], [ null, %333 ], [ null, %335 ], [ %297, %295 ]
  ret ptr %339
}

declare void @Perl_av_create_and_push(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @chmod(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

declare ptr @Perl_av_shift(ptr noundef) local_unnamed_addr #1

declare void @Perl_sv_untaint(ptr noundef) local_unnamed_addr #1

declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #1

declare void @Perl_setdefout(ptr noundef) local_unnamed_addr #1

declare void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_do_close(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 !prof !72 {
  %3 = icmp eq ptr %0, null
  %4 = load ptr, ptr @PL_argvgv, align 8
  %5 = select i1 %3, ptr %4, ptr %0, !prof !73
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7, !prof !73

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gv, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !59
  %10 = and i32 %9, 49152
  %11 = icmp eq i32 %10, 32768
  br i1 %11, label %12, label %16, !prof !74

12:                                               ; preds = %7
  %13 = and i32 %9, 255
  %14 = add nsw i32 %13, -9
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %19, label %16, !prof !74

16:                                               ; preds = %12, %7, %2
  br i1 %1, label %17, label %45

17:                                               ; preds = %16
  %18 = tail call ptr @__errno_location() #12
  store i32 9, ptr %18, align 4, !tbaa !59
  br label %45

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.gv, ptr %5, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23, !prof !73

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gp, ptr %21, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !93
  br label %26

26:                                               ; preds = %19, %23
  %27 = phi ptr [ %25, %23 ], [ null, %19 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32, !prof !73

29:                                               ; preds = %26
  br i1 %1, label %30, label %45

30:                                               ; preds = %29
  tail call void @Perl_report_evil_fh(ptr noundef nonnull %5) #11
  %31 = tail call ptr @__errno_location() #12
  store i32 9, ptr %31, align 4, !tbaa !59
  br label %45

32:                                               ; preds = %26
  %33 = tail call zeroext i1 @Perl_io_close(ptr noundef nonnull %27, ptr noundef null, i1 noundef zeroext %1, i1 noundef zeroext false)
  br i1 %1, label %34, label %42, !prof !74

34:                                               ; preds = %32
  %35 = load ptr, ptr %27, align 8, !tbaa !65
  %36 = getelementptr inbounds %struct.xpvio, ptr %35, i64 0, i32 4
  store i64 0, ptr %36, align 8, !tbaa !64
  %37 = load ptr, ptr %27, align 8, !tbaa !65
  %38 = getelementptr inbounds %struct.xpvio, ptr %37, i64 0, i32 7
  store i64 0, ptr %38, align 8, !tbaa !124
  %39 = getelementptr inbounds %struct.xpvio, ptr %37, i64 0, i32 8
  %40 = load i64, ptr %39, align 8, !tbaa !125
  %41 = getelementptr inbounds %struct.xpvio, ptr %37, i64 0, i32 9
  store i64 %40, ptr %41, align 8, !tbaa !126
  br label %42

42:                                               ; preds = %34, %32
  %43 = load ptr, ptr %27, align 8, !tbaa !65
  %44 = getelementptr inbounds %struct.xpvio, ptr %43, i64 0, i32 16
  store i8 32, ptr %44, align 8, !tbaa !68
  br label %45

45:                                               ; preds = %29, %30, %16, %17, %42
  %46 = phi i1 [ %33, %42 ], [ false, %17 ], [ false, %16 ], [ false, %30 ], [ false, %29 ]
  ret i1 %46
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_sv_catpv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @link(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

declare zeroext i1 @Perl_ckwarn_d(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #5

declare ptr @Perl_av_pop(ptr noundef) local_unnamed_addr #1

declare void @Perl_report_evil_fh(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_io_close(ptr nocapture noundef %0, ptr noundef readonly %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 !prof !72 {
  %5 = getelementptr inbounds %struct.io, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq ptr %6, null
  br i1 %7, label %78, label %8, !prof !73

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !65
  %10 = getelementptr inbounds %struct.xpvio, ptr %9, i64 0, i32 16
  %11 = load i8, ptr %10, align 8, !tbaa !68
  switch i8 %11, label %31 [
    i8 124, label %12
    i8 45, label %63
  ], !prof !109

12:                                               ; preds = %8
  %13 = tail call i32 @Perl_my_pclose(ptr noundef nonnull %6) #11
  br i1 %2, label %14, label %29

14:                                               ; preds = %12
  store i32 %13, ptr @PL_statusvalue_posix, align 4, !tbaa !59
  %15 = icmp eq i32 %13, -1
  br i1 %15, label %26, label %16

16:                                               ; preds = %14
  %17 = and i32 %13, 127
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %13, 65280
  %20 = select i1 %18, i32 %19, i32 0
  %21 = shl nuw nsw i32 %17, 24
  %22 = add nuw i32 %21, 16777216
  %23 = icmp sgt i32 %22, 33554431
  %24 = select i1 %23, i32 %17, i32 0
  %25 = or disjoint i32 %24, %20
  br label %26

26:                                               ; preds = %14, %16
  %27 = phi i32 [ %25, %16 ], [ -1, %14 ]
  store i32 %27, ptr @PL_statusvalue, align 4, !tbaa !59
  %28 = icmp eq i32 %27, 0
  br label %63

29:                                               ; preds = %12
  %30 = icmp ne i32 %13, -1
  br label %63

31:                                               ; preds = %8
  %32 = getelementptr inbounds %struct.xpvio, ptr %9, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !103
  %34 = icmp eq ptr %33, null
  %35 = icmp eq ptr %33, %6
  %36 = or i1 %34, %35
  br i1 %36, label %53, label %37, !prof !74

37:                                               ; preds = %31
  %38 = tail call i32 @Perl_PerlIO_error(ptr noundef nonnull %33) #11
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %0, align 8, !tbaa !65
  %42 = getelementptr inbounds %struct.xpvio, ptr %41, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !103
  tail call void @Perl_PerlIO_restore_errno(ptr noundef %43) #11
  br label %44

44:                                               ; preds = %40, %37
  %45 = load ptr, ptr %0, align 8, !tbaa !65
  %46 = getelementptr inbounds %struct.xpvio, ptr %45, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !103
  %48 = tail call i32 @Perl_PerlIO_close(ptr noundef %47) #11
  %49 = icmp ne i32 %48, -1
  %50 = and i1 %39, %49
  %51 = load ptr, ptr %5, align 8, !tbaa !64
  %52 = tail call i32 @Perl_PerlIO_close(ptr noundef %51) #11
  br label %63

53:                                               ; preds = %31
  %54 = tail call i32 @Perl_PerlIO_error(ptr noundef nonnull %6) #11
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56, !prof !74

56:                                               ; preds = %53
  %57 = load ptr, ptr %5, align 8, !tbaa !64
  tail call void @Perl_PerlIO_restore_errno(ptr noundef %57) #11
  br label %58

58:                                               ; preds = %56, %53
  %59 = load ptr, ptr %5, align 8, !tbaa !64
  %60 = tail call i32 @Perl_PerlIO_close(ptr noundef %59) #11
  %61 = icmp ne i32 %60, -1
  %62 = and i1 %55, %61
  br label %63

63:                                               ; preds = %8, %26, %29, %58, %44
  %64 = phi i1 [ %50, %44 ], [ %62, %58 ], [ %28, %26 ], [ %30, %29 ], [ true, %8 ]
  store ptr null, ptr %5, align 8, !tbaa !64
  %65 = load ptr, ptr %0, align 8, !tbaa !65
  %66 = getelementptr inbounds %struct.xpvio, ptr %65, i64 0, i32 5
  store ptr null, ptr %66, align 8, !tbaa !103
  %67 = xor i1 %3, true
  %68 = select i1 %67, i1 true, i1 %64, !prof !74
  br i1 %68, label %81, label %69, !prof !74

69:                                               ; preds = %63
  %70 = icmp eq ptr %1, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %69
  %72 = load ptr, ptr %1, align 8, !tbaa !107
  %73 = getelementptr inbounds %struct.xpvgv, ptr %72, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !64
  %75 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.23, i32 noundef 1) #11
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 5, ptr noundef nonnull @.str.22, ptr noundef %74, ptr noundef %75) #11
  br label %81

76:                                               ; preds = %69
  %77 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.23, i32 noundef 1) #11
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 5, ptr noundef nonnull @.str.24, ptr noundef %77) #11
  br label %81

78:                                               ; preds = %4
  br i1 %2, label %79, label %81

79:                                               ; preds = %78
  %80 = tail call ptr @__errno_location() #12
  store i32 9, ptr %80, align 4, !tbaa !59
  br label %81

81:                                               ; preds = %63, %78, %79, %76, %71
  %82 = phi i1 [ %64, %71 ], [ %64, %76 ], [ %64, %63 ], [ false, %79 ], [ false, %78 ]
  ret i1 %82
}

declare i32 @Perl_my_pclose(ptr noundef) local_unnamed_addr #1

declare i32 @Perl_PerlIO_error(ptr noundef) local_unnamed_addr #1

declare void @Perl_PerlIO_restore_errno(ptr noundef) local_unnamed_addr #1

declare i32 @Perl_PerlIO_close(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_get_sv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i1 @Perl_do_eof(ptr noundef %0) local_unnamed_addr #0 !prof !58 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !82
  %6 = and i32 %5, 255
  %7 = add nsw i32 %6, -9
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gp, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !93
  br label %16

16:                                               ; preds = %3, %1, %9, %13
  %17 = phi ptr [ %15, %13 ], [ null, %9 ], [ null, %1 ], [ null, %3 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %71, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %17, align 8, !tbaa !65
  %21 = getelementptr inbounds %struct.xpvio, ptr %20, i64 0, i32 16
  %22 = load i8, ptr %21, align 8, !tbaa !68
  %23 = icmp eq i8 %22, 62
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  tail call void @Perl_report_wrongway_fh(ptr noundef %0, i8 noundef signext 62) #11
  br label %25

25:                                               ; preds = %19, %24
  %26 = getelementptr inbounds %struct.io, ptr %17, i64 0, i32 3
  br label %27

27:                                               ; preds = %68, %25
  %28 = load ptr, ptr %26, align 8, !tbaa !64
  %29 = icmp eq ptr %28, null
  br i1 %29, label %71, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @PerlIO_has_cntptr(ptr noundef nonnull %28) #11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %26, align 8, !tbaa !64
  %35 = tail call i64 @Perl_PerlIO_get_cnt(ptr noundef %34) #11
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %71, label %37

37:                                               ; preds = %33, %30
  %38 = tail call ptr @__errno_location() #12
  %39 = load i32, ptr %38, align 4, !tbaa !59
  %40 = load ptr, ptr %26, align 8, !tbaa !64
  %41 = tail call i32 @PerlIO_getc(ptr noundef %40) #11
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load ptr, ptr %26, align 8, !tbaa !64
  %45 = tail call i32 @PerlIO_ungetc(ptr noundef %44, i32 noundef %41) #11
  store i32 %39, ptr %38, align 4, !tbaa !59
  br label %71

46:                                               ; preds = %37
  store i32 %39, ptr %38, align 4, !tbaa !59
  %47 = load ptr, ptr %26, align 8, !tbaa !64
  %48 = tail call i32 @PerlIO_has_cntptr(ptr noundef %47) #11
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %26, align 8, !tbaa !64
  %52 = tail call i32 @PerlIO_canset_cnt(ptr noundef %51) #11
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %26, align 8, !tbaa !64
  %56 = tail call i64 @Perl_PerlIO_get_cnt(ptr noundef %55) #11
  %57 = icmp slt i64 %56, -1
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load ptr, ptr %26, align 8, !tbaa !64
  tail call void @Perl_PerlIO_set_cnt(ptr noundef %59, i64 noundef -1) #11
  br label %60

60:                                               ; preds = %54, %58, %50, %46
  %61 = load ptr, ptr @PL_op, align 8, !tbaa !71
  %62 = getelementptr inbounds %struct.op, ptr %61, i64 0, i32 5
  %63 = load i8, ptr %62, align 2, !tbaa !127
  %64 = icmp slt i8 %63, 0
  %65 = load ptr, ptr @PL_argvgv, align 8
  %66 = icmp eq ptr %65, %0
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = tail call ptr @Perl_nextargv(ptr noundef %0, i1 noundef zeroext false)
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %27, !llvm.loop !128

71:                                               ; preds = %68, %27, %60, %33, %43, %16
  %72 = phi i1 [ false, %43 ], [ true, %16 ], [ false, %33 ], [ true, %60 ], [ true, %27 ], [ true, %68 ]
  ret i1 %72
}

declare void @Perl_report_wrongway_fh(ptr noundef, i8 noundef signext) local_unnamed_addr #1

declare i32 @PerlIO_has_cntptr(ptr noundef) local_unnamed_addr #1

declare i64 @Perl_PerlIO_get_cnt(ptr noundef) local_unnamed_addr #1

declare i32 @PerlIO_getc(ptr noundef) local_unnamed_addr #1

declare i32 @PerlIO_ungetc(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @PerlIO_canset_cnt(ptr noundef) local_unnamed_addr #1

declare void @Perl_PerlIO_set_cnt(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_do_tell(ptr noundef %0) local_unnamed_addr #0 !prof !58 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !82
  %6 = and i32 %5, 255
  %7 = add nsw i32 %6, -9
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %16

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gp, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !93
  br label %16

16:                                               ; preds = %3, %1, %9, %13
  %17 = phi ptr [ %15, %13 ], [ null, %9 ], [ null, %1 ], [ null, %3 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.io, ptr %17, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i64 @Perl_PerlIO_tell(ptr noundef nonnull %21) #11
  br label %27

25:                                               ; preds = %19, %16
  tail call void @Perl_report_evil_fh(ptr noundef %0) #11
  %26 = tail call ptr @__errno_location() #12
  store i32 9, ptr %26, align 4, !tbaa !59
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i64 [ %24, %23 ], [ -1, %25 ]
  ret i64 %28
}

declare i64 @Perl_PerlIO_tell(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_do_seek(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !58 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !82
  %8 = and i32 %7, 255
  %9 = add nsw i32 %8, -9
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %18

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gp, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !93
  br label %18

18:                                               ; preds = %5, %3, %11, %15
  %19 = phi ptr [ %17, %15 ], [ null, %11 ], [ null, %3 ], [ null, %5 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.io, ptr %19, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !64
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @Perl_PerlIO_seek(ptr noundef nonnull %23, i64 noundef %1, i32 noundef %2) #11
  %27 = icmp sgt i32 %26, -1
  br label %30

28:                                               ; preds = %21, %18
  tail call void @Perl_report_evil_fh(ptr noundef %0) #11
  %29 = tail call ptr @__errno_location() #12
  store i32 9, ptr %29, align 4, !tbaa !59
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i1 [ %27, %25 ], [ false, %28 ]
  ret i1 %31
}

declare i32 @Perl_PerlIO_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i64 @Perl_do_sysseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !58 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !82
  %8 = and i32 %7, 255
  %9 = add nsw i32 %8, -9
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %18

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gp, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !93
  br label %18

18:                                               ; preds = %5, %3, %11, %15
  %19 = phi ptr [ %17, %15 ], [ null, %11 ], [ null, %3 ], [ null, %5 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.io, ptr %19, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !64
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %23) #11
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call i64 @lseek64(i32 noundef %26, i64 noundef %1, i32 noundef %2) #11
  br label %30

30:                                               ; preds = %25, %28
  %31 = phi i64 [ %29, %28 ], [ undef, %25 ]
  br i1 %27, label %32, label %34

32:                                               ; preds = %30, %21, %18
  tail call void @Perl_report_evil_fh(ptr noundef %0) #11
  %33 = tail call ptr @__errno_location() #12
  store i32 9, ptr %33, align 4, !tbaa !59
  br label %34

34:                                               ; preds = %30, %32
  %35 = phi i64 [ -1, %32 ], [ %31, %30 ]
  ret i64 %35
}

; Function Attrs: nounwind
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @Perl_mode_from_discipline(ptr nocapture noundef readnone %0, i64 noundef %1) local_unnamed_addr #7 !prof !58 {
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_do_print(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 !prof !129 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = icmp eq ptr %0, null
  br i1 %6, label %96, label %7, !prof !130

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !82
  %10 = and i32 %9, 511
  %11 = icmp eq i32 %10, 257
  br i1 %11, label %12, label %23, !prof !130

12:                                               ; preds = %7
  %13 = icmp sgt i32 %9, -1
  %14 = load ptr, ptr %0, align 8, !tbaa !84
  %15 = getelementptr inbounds %struct.xpviv, ptr %14, i64 0, i32 4
  %16 = getelementptr inbounds %struct.xpvuv, ptr %14, i64 0, i32 4
  %17 = select i1 %13, ptr %15, ptr %16
  %18 = select i1 %13, ptr @.str.26, ptr @.str.25
  %19 = load i64, ptr %17, align 8, !tbaa !64
  %20 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull %18, i64 noundef %19) #11
  %21 = tail call i32 @Perl_PerlIO_error(ptr noundef %1) #11
  %22 = icmp eq i32 %21, 0
  br label %96

23:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %24 = and i32 %9, 2098176
  %25 = icmp eq i32 %24, 1024
  br i1 %25, label %26, label %32, !prof !131

26:                                               ; preds = %23
  %27 = load ptr, ptr %0, align 8, !tbaa !84
  %28 = getelementptr inbounds %struct.xpv, ptr %27, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !85
  store i64 %29, ptr %3, align 8, !tbaa !81
  %30 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !64
  br label %34

32:                                               ; preds = %23
  %33 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 34) #11
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi ptr [ %31, %26 ], [ %33, %32 ]
  %36 = call i32 @PerlIO_isutf8(ptr noundef %1) #11
  %37 = icmp eq i32 %36, 0
  %38 = load i32, ptr %8, align 4, !tbaa !82
  %39 = and i32 %38, 536870912
  %40 = icmp eq i32 %39, 0
  br i1 %37, label %49, label %41, !prof !131

41:                                               ; preds = %34
  br i1 %40, label %42, label %44

42:                                               ; preds = %41
  %43 = call ptr @Perl_bytes_to_utf8(ptr noundef %35, ptr noundef nonnull %3) #11
  br label %82

44:                                               ; preds = %41
  %45 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 825242156) #11
  br i1 %45, label %46, label %82

46:                                               ; preds = %44
  %47 = load i64, ptr %3, align 8, !tbaa !81
  %48 = call zeroext i1 @Perl_check_utf8_print(ptr noundef %35, i64 noundef %47) #11
  br label %82

49:                                               ; preds = %34
  br i1 %40, label %82, label %50, !prof !131

50:                                               ; preds = %49
  %51 = load ptr, ptr @PL_curcop, align 8, !tbaa !71
  %52 = getelementptr inbounds %struct.cop, ptr %51, i64 0, i32 10
  %53 = load i32, ptr %52, align 8, !tbaa !132
  %54 = and i32 %53, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %57 = load i64, ptr %3, align 8, !tbaa !81
  store i64 %57, ptr %4, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 1, ptr %5, align 1, !tbaa !87
  %58 = call ptr @Perl_bytes_from_utf8(ptr noundef %35, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %59 = load i8, ptr %5, align 1, !tbaa !87, !range !63, !noundef !89
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i64, ptr %4, align 8, !tbaa !81
  store i64 %62, ptr %3, align 8, !tbaa !81
  br label %79

63:                                               ; preds = %56
  %64 = load ptr, ptr @PL_op, align 8, !tbaa !71
  %65 = icmp eq ptr %64, null
  br i1 %65, label %77, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.op, ptr %64, i64 0, i32 4
  %68 = load i16, ptr %67, align 8
  %69 = and i16 %68, 511
  %70 = icmp eq i16 %69, 380
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = call ptr @Perl_custom_op_get_field(ptr noundef nonnull %64, i32 noundef 2) #11
  br label %77

73:                                               ; preds = %66
  %74 = zext nneg i16 %69 to i64
  %75 = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !71
  br label %77

77:                                               ; preds = %63, %71, %73
  %78 = phi ptr [ %72, %71 ], [ %76, %73 ], [ @.str.28, %63 ]
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 44, ptr noundef nonnull @.str.27, ptr noundef %78) #11
  br label %79

79:                                               ; preds = %77, %61
  %80 = phi ptr [ null, %77 ], [ %58, %61 ]
  %81 = phi ptr [ %35, %77 ], [ %58, %61 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %82

82:                                               ; preds = %49, %50, %79, %42, %46, %44
  %83 = phi ptr [ null, %46 ], [ null, %44 ], [ %43, %42 ], [ null, %50 ], [ %80, %79 ], [ null, %49 ]
  %84 = phi ptr [ %35, %46 ], [ %35, %44 ], [ %43, %42 ], [ %35, %50 ], [ %81, %79 ], [ %35, %49 ]
  %85 = load i64, ptr %3, align 8, !tbaa !81
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %90, label %87, !prof !134

87:                                               ; preds = %82
  %88 = call i64 @Perl_PerlIO_write(ptr noundef %1, ptr noundef %84, i64 noundef %85) #11
  %89 = icmp eq i64 %88, 0
  call void @Perl_safesysfree(ptr noundef %83) #11
  br i1 %89, label %94, label %91, !prof !135

90:                                               ; preds = %82
  call void @Perl_safesysfree(ptr noundef %83) #11
  br label %91

91:                                               ; preds = %90, %87
  %92 = call i32 @Perl_PerlIO_error(ptr noundef %1) #11
  %93 = icmp eq i32 %92, 0
  br label %94

94:                                               ; preds = %87, %91
  %95 = phi i1 [ %93, %91 ], [ false, %87 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %96

96:                                               ; preds = %2, %94, %12
  %97 = phi i1 [ %22, %12 ], [ %95, %94 ], [ true, %2 ]
  ret i1 %97
}

declare i32 @PerlIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @PerlIO_isutf8(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_bytes_to_utf8(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @Perl_check_utf8_print(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @Perl_bytes_from_utf8(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Perl_custom_op_get_field(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @Perl_PerlIO_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_my_stat_flags(i32 noundef %0) local_unnamed_addr #0 !prof !136 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !71
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 5
  %6 = load i8, ptr %5, align 2, !tbaa !127
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %60, label %9, !prof !137

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.svop, ptr %4, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !138
  br label %12

12:                                               ; preds = %161, %9
  %13 = phi ptr [ %11, %9 ], [ %162, %161 ]
  %14 = load ptr, ptr @PL_defgv, align 8, !tbaa !71
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, ptr @PL_laststatval, align 4, !tbaa !59
  br label %166

18:                                               ; preds = %12
  %19 = icmp eq ptr %13, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !82
  %23 = and i32 %22, 255
  %24 = add nsw i32 %23, -9
  %25 = icmp ult i32 %24, 2
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.gv, ptr %13, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !64
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.gp, ptr %28, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !93
  br label %33

33:                                               ; preds = %20, %30, %26, %18, %161
  %34 = phi ptr [ %162, %161 ], [ %13, %20 ], [ %13, %18 ], [ %13, %26 ], [ %13, %30 ]
  %35 = phi ptr [ %164, %161 ], [ null, %20 ], [ null, %18 ], [ null, %26 ], [ %32, %30 ]
  store i16 265, ptr @PL_laststype, align 2, !tbaa !140
  %36 = icmp eq ptr %34, null
  %37 = select i1 %36, ptr %35, ptr %34
  store ptr %37, ptr @PL_statgv, align 8, !tbaa !71
  %38 = load ptr, ptr @PL_statname, align 8, !tbaa !71
  call void @Perl_sv_setpvn(ptr noundef %38, ptr noundef nonnull @.str.4, i64 noundef 0) #11
  %39 = icmp eq ptr %35, null
  br i1 %39, label %59, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.io, ptr %35, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !64
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %42) #11
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = call i32 @fstat64(i32 noundef %45, ptr noundef nonnull @PL_statcache) #11
  br label %49

49:                                               ; preds = %44, %47
  %50 = phi i32 [ %48, %47 ], [ -1, %44 ]
  store i32 %50, ptr @PL_laststatval, align 4, !tbaa !59
  br label %166

51:                                               ; preds = %40
  %52 = load ptr, ptr %35, align 8, !tbaa !65
  %53 = getelementptr inbounds %struct.xpvio, ptr %52, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !64
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = call i32 @Perl_my_dirfd(ptr noundef nonnull %54) #11
  %58 = call i32 @fstat64(i32 noundef %57, ptr noundef nonnull @PL_statcache) #11
  store i32 %58, ptr @PL_laststatval, align 4, !tbaa !59
  br label %166

59:                                               ; preds = %51, %33
  store i32 -1, ptr @PL_laststatval, align 4, !tbaa !59
  call void @Perl_report_evil_fh(ptr noundef %34) #11
  br label %166

60:                                               ; preds = %1
  %61 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 6
  %62 = load i8, ptr %61, align 1, !tbaa !75
  %63 = and i8 %62, 20
  %64 = icmp eq i8 %63, 4
  br i1 %64, label %65, label %67, !prof !142

65:                                               ; preds = %60
  %66 = load i32, ptr @PL_laststatval, align 4, !tbaa !59
  br label %166

67:                                               ; preds = %60
  %68 = load ptr, ptr %3, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %69 = and i32 %0, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %78, label %71, !prof !137

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.sv, ptr %68, i64 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !82
  %74 = and i32 %73, 2097152
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = tail call i32 @Perl_mg_get(ptr noundef %68) #11
  br label %78

78:                                               ; preds = %76, %71, %67
  %79 = getelementptr inbounds %struct.sv, ptr %68, i64 0, i32 2
  %80 = load i32, ptr %79, align 4, !tbaa !82
  %81 = and i32 %80, 49152
  %82 = icmp eq i32 %81, 32768
  br i1 %82, label %83, label %87, !prof !142

83:                                               ; preds = %78
  %84 = and i32 %80, 255
  %85 = add nsw i32 %84, -9
  %86 = icmp ult i32 %85, 2
  br i1 %86, label %113, label %87

87:                                               ; preds = %83, %78
  %88 = and i32 %80, 2048
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %113, label %90, !prof !137

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.sv, ptr %68, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !64
  %93 = getelementptr inbounds %struct.sv, ptr %92, i64 0, i32 2
  %94 = load i32, ptr %93, align 4, !tbaa !82
  %95 = and i32 %94, 255
  %96 = icmp ult i32 %95, 11
  br i1 %96, label %97, label %113

97:                                               ; preds = %90
  %98 = and i32 %94, 2097152
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = tail call i32 @Perl_mg_get(ptr noundef %92) #11
  br label %102

102:                                              ; preds = %97, %100
  %103 = load ptr, ptr %91, align 8, !tbaa !64
  %104 = getelementptr inbounds %struct.sv, ptr %103, i64 0, i32 2
  %105 = load i32, ptr %104, align 4, !tbaa !82
  %106 = and i32 %105, 49152
  %107 = icmp eq i32 %106, 32768
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = and i32 %105, 255
  %110 = add nsw i32 %109, -9
  %111 = icmp ult i32 %110, 2
  %112 = select i1 %111, ptr %103, ptr null
  br label %113

113:                                              ; preds = %108, %83, %102, %90, %87
  %114 = phi ptr [ null, %102 ], [ null, %90 ], [ null, %87 ], [ %68, %83 ], [ %112, %108 ]
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %161, !prof !137

116:                                              ; preds = %113
  %117 = load i32, ptr %79, align 4, !tbaa !82
  %118 = and i32 %117, 2048
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %127, label %120, !prof !137

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.sv, ptr %68, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !64
  %123 = getelementptr inbounds %struct.sv, ptr %122, i64 0, i32 2
  %124 = load i32, ptr %123, align 4, !tbaa !82
  %125 = and i32 %124, 255
  %126 = icmp eq i32 %125, 15
  br i1 %126, label %161, label %127

127:                                              ; preds = %116, %120
  %128 = and i32 %117, 2098176
  %129 = icmp eq i32 %128, 1024
  br i1 %129, label %130, label %136, !prof !137

130:                                              ; preds = %127
  %131 = load ptr, ptr %68, align 8, !tbaa !84
  %132 = getelementptr inbounds %struct.xpv, ptr %131, i64 0, i32 2
  %133 = load i64, ptr %132, align 8, !tbaa !85
  store i64 %133, ptr %2, align 8, !tbaa !81
  %134 = getelementptr inbounds %struct.sv, ptr %68, i64 0, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !64
  br label %139

136:                                              ; preds = %127
  %137 = or i32 %0, 32
  %138 = call ptr @Perl_sv_2pv_flags(ptr noundef %68, ptr noundef nonnull %2, i32 noundef %137) #11
  br label %139

139:                                              ; preds = %136, %130
  %140 = phi ptr [ %135, %130 ], [ %138, %136 ]
  store ptr null, ptr @PL_statgv, align 8, !tbaa !71
  %141 = load ptr, ptr @PL_statname, align 8, !tbaa !71
  %142 = load i64, ptr %2, align 8, !tbaa !81
  call void @Perl_sv_setpvn(ptr noundef %141, ptr noundef %140, i64 noundef %142) #11
  %143 = load ptr, ptr @PL_statname, align 8, !tbaa !71
  %144 = getelementptr inbounds %struct.sv, ptr %143, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !64
  store i16 265, ptr @PL_laststype, align 2, !tbaa !140
  %146 = call i32 @stat64(ptr noundef %145, ptr noundef nonnull @PL_statcache) #11
  store i32 %146, ptr @PL_laststatval, align 4, !tbaa !59
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %159, !prof !143

148:                                              ; preds = %139
  %149 = call zeroext i1 @Perl_ckwarn(i32 noundef 9) #11
  br i1 %149, label %150, label %159, !prof !144

150:                                              ; preds = %148
  %151 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %145) #13
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %150
  %154 = getelementptr i8, ptr %145, i64 %151
  %155 = getelementptr i8, ptr %154, i64 -1
  %156 = load i8, ptr %155, align 1, !tbaa !64
  %157 = icmp eq i8 %156, 10
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 9, ptr noundef nonnull @PL_warn_nl, ptr noundef nonnull @.str.29) #11
  br label %159

159:                                              ; preds = %150, %158, %153, %148, %139
  %160 = load i32, ptr @PL_laststatval, align 4, !tbaa !59
  br label %161

161:                                              ; preds = %120, %113, %159
  %162 = phi ptr [ null, %159 ], [ %114, %113 ], [ null, %120 ]
  %163 = phi i32 [ 1, %159 ], [ 2, %113 ], [ 3, %120 ]
  %164 = phi ptr [ undef, %159 ], [ undef, %113 ], [ %122, %120 ]
  %165 = phi i32 [ %160, %159 ], [ undef, %113 ], [ undef, %120 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  switch i32 %163, label %166 [
    i32 2, label %12
    i32 3, label %33
  ], !prof !145

166:                                              ; preds = %161, %65, %59, %56, %49, %16
  %167 = phi i32 [ %17, %16 ], [ %50, %49 ], [ %58, %56 ], [ -1, %59 ], [ %66, %65 ], [ %165, %161 ]
  ret i32 %167
}

declare i32 @Perl_my_dirfd(ptr noundef) local_unnamed_addr #1

declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_my_lstat_flags(i32 noundef %0) local_unnamed_addr #0 !prof !58 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !71
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 5
  %6 = load i8, ptr %5, align 2, !tbaa !127
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %35, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.svop, ptr %4, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !138
  %12 = load ptr, ptr @PL_defgv, align 8, !tbaa !71
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load i16, ptr @PL_laststype, align 2, !tbaa !140
  %16 = icmp eq i16 %15, 264
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30) #11
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i32, ptr @PL_laststatval, align 4, !tbaa !59
  br label %143

20:                                               ; preds = %9
  store i32 -1, ptr @PL_laststatval, align 4, !tbaa !59
  %21 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 5) #11
  br i1 %21, label %22, label %143

22:                                               ; preds = %20
  %23 = load ptr, ptr @PL_op, align 8, !tbaa !71
  %24 = getelementptr inbounds %struct.svop, ptr %23, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !138
  %26 = getelementptr inbounds %struct.gv, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !64
  %28 = getelementptr inbounds %struct.gp, ptr %27, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !106
  %30 = icmp eq ptr %29, null
  %31 = select i1 %30, ptr %25, ptr %29
  %32 = load ptr, ptr %31, align 8, !tbaa !107
  %33 = getelementptr inbounds %struct.xpvgv, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !64
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 5, ptr noundef nonnull @.str.32, ptr noundef %34) #11
  br label %143

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 6
  %37 = load i8, ptr %36, align 1, !tbaa !75
  %38 = and i8 %37, 20
  %39 = icmp eq i8 %38, 4
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i16, ptr @PL_laststype, align 2, !tbaa !140
  %42 = icmp eq i16 %41, 264
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30) #11
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i32, ptr @PL_laststatval, align 4, !tbaa !59
  br label %143

46:                                               ; preds = %35
  store i16 264, ptr @PL_laststype, align 2, !tbaa !140
  store ptr null, ptr @PL_statgv, align 8, !tbaa !71
  %47 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !82
  %49 = and i32 %48, 2048
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !64
  %54 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !82
  %56 = and i32 %55, 49152
  %57 = icmp eq i32 %56, 32768
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = and i32 %55, 255
  %60 = add nsw i32 %59, -9
  %61 = icmp ult i32 %60, 2
  br i1 %61, label %74, label %62

62:                                               ; preds = %58, %51
  %63 = and i32 %55, 255
  %64 = icmp eq i32 %63, 15
  %65 = zext i1 %64 to i8
  br i1 %64, label %74, label %66

66:                                               ; preds = %62, %46
  %67 = phi i8 [ 0, %46 ], [ %65, %62 ]
  %68 = and i32 %48, 49152
  %69 = icmp eq i32 %68, 32768
  br i1 %69, label %70, label %115

70:                                               ; preds = %66
  %71 = and i32 %48, 255
  %72 = add nsw i32 %71, -9
  %73 = icmp ult i32 %72, 2
  br i1 %73, label %74, label %115

74:                                               ; preds = %70, %58, %62
  %75 = phi i8 [ %65, %62 ], [ 0, %58 ], [ %67, %70 ]
  %76 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 5) #11
  br i1 %76, label %77, label %115

77:                                               ; preds = %74
  %78 = and i8 %75, 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 5, ptr noundef nonnull @.str.33) #11
  br label %115

81:                                               ; preds = %77
  %82 = load i32, ptr %47, align 4, !tbaa !82
  %83 = and i32 %82, 2048
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !64
  br label %88

88:                                               ; preds = %81, %85
  %89 = phi ptr [ %87, %85 ], [ %3, %81 ]
  %90 = getelementptr inbounds %struct.gv, ptr %89, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !64
  %92 = getelementptr inbounds %struct.gp, ptr %91, i64 0, i32 8
  %93 = load ptr, ptr %92, align 8, !tbaa !106
  %94 = icmp eq ptr %93, null
  br i1 %94, label %104, label %95

95:                                               ; preds = %88
  br i1 %84, label %99, label %96

96:                                               ; preds = %95
  %97 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !64
  br label %99

99:                                               ; preds = %95, %96
  %100 = phi ptr [ %98, %96 ], [ %3, %95 ]
  %101 = getelementptr inbounds %struct.gv, ptr %100, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !64
  %103 = getelementptr inbounds %struct.gp, ptr %102, i64 0, i32 8
  br label %107

104:                                              ; preds = %88
  br i1 %84, label %110, label %105

105:                                              ; preds = %104
  %106 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  br label %107

107:                                              ; preds = %99, %105
  %108 = phi ptr [ %106, %105 ], [ %103, %99 ]
  %109 = load ptr, ptr %108, align 8, !tbaa !64
  br label %110

110:                                              ; preds = %107, %104
  %111 = phi ptr [ %3, %104 ], [ %109, %107 ]
  %112 = load ptr, ptr %111, align 8, !tbaa !107
  %113 = getelementptr inbounds %struct.xpvgv, ptr %112, i64 0, i32 4
  %114 = load ptr, ptr %113, align 8, !tbaa !64
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 5, ptr noundef nonnull @.str.32, ptr noundef %114) #11
  br label %115

115:                                              ; preds = %70, %80, %110, %74, %66
  %116 = load i32, ptr %47, align 4, !tbaa !82
  %117 = and i32 %116, 2098176
  %118 = icmp eq i32 %117, 1024
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !64
  br label %125

122:                                              ; preds = %115
  %123 = or i32 %0, 32
  %124 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %3, ptr noundef null, i32 noundef %123) #11
  br label %125

125:                                              ; preds = %122, %119
  %126 = phi ptr [ %121, %119 ], [ %124, %122 ]
  %127 = load ptr, ptr @PL_statname, align 8, !tbaa !71
  tail call void @Perl_sv_setpv(ptr noundef %127, ptr noundef %126) #11
  %128 = tail call i32 @stat64(ptr noundef %126, ptr noundef nonnull @PL_statcache) #11
  store i32 %128, ptr @PL_laststatval, align 4, !tbaa !59
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %125
  %131 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 9) #11
  br i1 %131, label %132, label %141

132:                                              ; preds = %130
  %133 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %126) #13
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %132
  %136 = getelementptr i8, ptr %126, i64 %133
  %137 = getelementptr i8, ptr %136, i64 -1
  %138 = load i8, ptr %137, align 1, !tbaa !64
  %139 = icmp eq i8 %138, 10
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 9, ptr noundef nonnull @PL_warn_nl, ptr noundef nonnull @.str.34) #11
  br label %141

141:                                              ; preds = %132, %140, %135, %130, %125
  %142 = load i32, ptr @PL_laststatval, align 4, !tbaa !59
  br label %143

143:                                              ; preds = %20, %22, %141, %44, %18
  %144 = phi i32 [ %19, %18 ], [ %45, %44 ], [ %142, %141 ], [ -1, %22 ], [ -1, %20 ]
  ret i32 %144
}

declare void @Perl_sv_setpv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i1 @Perl_do_aexec5(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 !prof !58 {
  %6 = alloca ptr, align 8
  %7 = icmp ugt ptr %2, %1
  br i1 %7, label %8, label %89

8:                                                ; preds = %5
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %1 to i64
  %11 = sub i64 %9, %10
  %12 = add i64 %11, 8
  %13 = tail call ptr @Perl_safesysmalloc(i64 noundef %12) #11
  store ptr %13, ptr @PL_Argv, align 8, !tbaa !71
  %14 = getelementptr inbounds ptr, ptr %1, i64 1
  %15 = icmp ugt ptr %14, %2
  br i1 %15, label %36, label %16

16:                                               ; preds = %8, %31
  %17 = phi ptr [ %34, %31 ], [ %14, %8 ]
  %18 = phi ptr [ %33, %31 ], [ %13, %8 ]
  %19 = load ptr, ptr %17, align 8, !tbaa !71
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !82
  %24 = and i32 %23, 2098176
  %25 = icmp eq i32 %24, 1024
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !64
  br label %31

29:                                               ; preds = %21
  %30 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %19, ptr noundef null, i32 noundef 34) #11
  br label %31

31:                                               ; preds = %16, %26, %29
  %32 = phi ptr [ %28, %26 ], [ %30, %29 ], [ @.str.4, %16 ]
  %33 = getelementptr inbounds ptr, ptr %18, i64 1
  store ptr %32, ptr %18, align 8, !tbaa !71
  %34 = getelementptr inbounds ptr, ptr %17, i64 1
  %35 = icmp ugt ptr %34, %2
  br i1 %35, label %36, label %16, !llvm.loop !146

36:                                               ; preds = %31, %8
  %37 = phi ptr [ %13, %8 ], [ %33, %31 ]
  store ptr null, ptr %37, align 8, !tbaa !71
  %38 = icmp eq ptr %0, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !82
  %42 = and i32 %41, 2098176
  %43 = icmp eq i32 %42, 1024
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !64
  br label %49

47:                                               ; preds = %39
  %48 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef null, i32 noundef 34) #11
  br label %49

49:                                               ; preds = %44, %47, %36
  %50 = phi ptr [ null, %36 ], [ %46, %44 ], [ %48, %47 ]
  br i1 %38, label %51, label %56

51:                                               ; preds = %49
  %52 = load ptr, ptr @PL_Argv, align 8, !tbaa !71
  %53 = load ptr, ptr %52, align 8, !tbaa !71
  %54 = load i8, ptr %53, align 1, !tbaa !64
  %55 = icmp eq i8 %54, 47
  br i1 %55, label %75, label %62

56:                                               ; preds = %49
  %57 = load i8, ptr %50, align 1, !tbaa !64
  %58 = icmp eq i8 %57, 47
  %59 = load i8, ptr @PL_tainting, align 1, !range !63
  %60 = icmp eq i8 %59, 0
  %61 = select i1 %58, i1 true, i1 %60
  br i1 %61, label %66, label %65

62:                                               ; preds = %51
  %63 = load i8, ptr @PL_tainting, align 1, !tbaa !87, !range !63, !noundef !89
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %56, %62
  tail call void @Perl_taint_env() #11
  br label %66

66:                                               ; preds = %62, %65, %56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %67 = load ptr, ptr @PL_sigfpe_saved, align 8, !tbaa !71
  %68 = call i32 @Perl_rsignal_save(i32 noundef 8, ptr noundef %67, ptr noundef nonnull %6) #11
  br i1 %38, label %78, label %69

69:                                               ; preds = %66
  %70 = load i8, ptr %50, align 1, !tbaa !64
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr @PL_Argv, align 8, !tbaa !71
  %74 = call i32 @execvp(ptr noundef nonnull %50, ptr noundef %73) #11
  br label %82

75:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %76 = load ptr, ptr @PL_sigfpe_saved, align 8, !tbaa !71
  %77 = call i32 @Perl_rsignal_save(i32 noundef 8, ptr noundef %76, ptr noundef nonnull %6) #11
  br label %78

78:                                               ; preds = %75, %69, %66
  %79 = load ptr, ptr @PL_Argv, align 8, !tbaa !71
  %80 = load ptr, ptr %79, align 8, !tbaa !71
  %81 = call i32 @execvp(ptr noundef %80, ptr noundef nonnull %79) #11
  br label %82

82:                                               ; preds = %78, %72
  %83 = call i32 @Perl_rsignal_restore(i32 noundef 8, ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br i1 %38, label %84, label %87

84:                                               ; preds = %82
  %85 = load ptr, ptr @PL_Argv, align 8, !tbaa !71
  %86 = load ptr, ptr %85, align 8, !tbaa !71
  br label %87

87:                                               ; preds = %82, %84
  %88 = phi ptr [ %86, %84 ], [ %50, %82 ]
  call fastcc void @S_exec_failed(ptr noundef %88, i32 noundef %3, i32 noundef %4)
  br label %89

89:                                               ; preds = %87, %5
  %90 = load ptr, ptr @PL_Argv, align 8, !tbaa !71
  call void @Perl_safesysfree(ptr noundef %90) #11
  store ptr null, ptr @PL_Argv, align 8, !tbaa !71
  %91 = load ptr, ptr @PL_Cmd, align 8, !tbaa !71
  call void @Perl_safesysfree(ptr noundef %91) #11
  store ptr null, ptr @PL_Cmd, align 8, !tbaa !71
  ret i1 false
}

declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #1

declare i32 @Perl_rsignal_save(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @Perl_rsignal_restore(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc void @S_exec_failed(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !58 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %5 = tail call ptr @__errno_location() #12
  %6 = load i32, ptr %5, align 4, !tbaa !59
  store i32 %6, ptr %4, align 4, !tbaa !59
  %7 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 7) #11
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call ptr @strerror(i32 noundef %6) #11
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 7, ptr noundef nonnull @.str.59, ptr noundef %0, ptr noundef %9) #11
  br label %10

10:                                               ; preds = %8, %3
  %11 = icmp eq i32 %2, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = call i64 @write(i32 noundef %1, ptr noundef nonnull %4, i64 noundef 4) #11
  %14 = tail call i32 @close(i32 noundef %1) #11
  br label %15

15:                                               ; preds = %12, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @Perl_do_execfree() local_unnamed_addr #0 !prof !58 {
  %1 = load ptr, ptr @PL_Argv, align 8, !tbaa !71
  tail call void @Perl_safesysfree(ptr noundef %1) #11
  store ptr null, ptr @PL_Argv, align 8, !tbaa !71
  %2 = load ptr, ptr @PL_Cmd, align 8, !tbaa !71
  tail call void @Perl_safesysfree(ptr noundef %2) #11
  store ptr null, ptr @PL_Cmd, align 8, !tbaa !71
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i1 @Perl_do_exec3(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !58 {
  %4 = alloca [10 x i8], align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  %9 = add i64 %8, 1
  %10 = tail call ptr @Perl_safesysmalloc(i64 noundef %9) #11
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %0, i64 %9, i1 false)
  %11 = load i8, ptr %10, align 1, !tbaa !64
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %3, %21
  %14 = phi i8 [ %23, %21 ], [ %11, %3 ]
  %15 = phi ptr [ %22, %21 ], [ %10, %3 ]
  %16 = zext i8 %14 to i64
  %17 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !59
  %19 = and i32 %18, 17408
  %20 = icmp eq i32 %19, 17408
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = getelementptr inbounds i8, ptr %15, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !64
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %13, !llvm.loop !147

25:                                               ; preds = %13, %21, %3
  %26 = phi ptr [ %10, %3 ], [ %15, %13 ], [ %22, %21 ]
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #11
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(4) @.str.35, i64 noundef 3) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %25
  %30 = call i64 @Perl_my_strlcpy(ptr noundef nonnull %4, ptr noundef nonnull @.str.36, i64 noundef 10) #11
  %31 = getelementptr inbounds i8, ptr %26, i64 3
  %32 = load i8, ptr %31, align 1, !tbaa !64
  %33 = icmp eq i8 %32, 102
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = getelementptr inbounds i8, ptr %26, i64 4
  %36 = call i64 @Perl_my_strlcat(ptr noundef nonnull %4, ptr noundef nonnull @.str.37, i64 noundef 8) #11
  br label %37

37:                                               ; preds = %34, %29
  %38 = phi ptr [ %35, %34 ], [ %31, %29 ]
  %39 = load i8, ptr %38, align 1, !tbaa !64
  %40 = icmp eq i8 %39, 32
  %41 = zext i1 %40 to i64
  %42 = getelementptr inbounds i8, ptr %38, i64 %41
  %43 = getelementptr inbounds i8, ptr %42, i64 1
  %44 = load i8, ptr %42, align 1, !tbaa !64
  %45 = icmp eq i8 %44, 39
  br i1 %45, label %46, label %66

46:                                               ; preds = %37, %46
  %47 = phi ptr [ %50, %46 ], [ %43, %37 ]
  %48 = load i8, ptr %47, align 1, !tbaa !64
  %49 = icmp eq i8 %48, 0
  %50 = getelementptr inbounds i8, ptr %47, i64 1
  br i1 %49, label %51, label %46, !llvm.loop !148

51:                                               ; preds = %46
  %52 = getelementptr inbounds i8, ptr %47, i64 -1
  %53 = load i8, ptr %52, align 1, !tbaa !64
  %54 = icmp eq i8 %53, 10
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i8 0, ptr %52, align 1, !tbaa !64
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi ptr [ %52, %55 ], [ %47, %51 ]
  %58 = getelementptr inbounds i8, ptr %57, i64 -1
  %59 = load i8, ptr %58, align 1, !tbaa !64
  %60 = icmp eq i8 %59, 39
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  store i8 0, ptr %58, align 1, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %62 = load ptr, ptr @PL_sigfpe_saved, align 8, !tbaa !71
  %63 = call i32 @Perl_rsignal_save(i32 noundef 8, ptr noundef %62, ptr noundef nonnull %5) #11
  %64 = call i32 (ptr, ptr, ...) @execl(ptr noundef nonnull @PL_cshname, ptr noundef nonnull @.str.38, ptr noundef nonnull %4, ptr noundef nonnull %43, ptr noundef null) #11
  %65 = call i32 @Perl_rsignal_restore(i32 noundef 8, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  store i8 39, ptr %58, align 1, !tbaa !64
  call fastcc void @S_exec_failed(ptr noundef nonnull @PL_cshname, i32 noundef %1, i32 noundef %2)
  call void @Perl_safesysfree(ptr noundef nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #11
  br label %274

66:                                               ; preds = %56, %37, %25
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #11
  %67 = load i8, ptr %26, align 1, !tbaa !64
  %68 = icmp eq i8 %67, 46
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = getelementptr inbounds i8, ptr %26, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !64
  %72 = zext i8 %71 to i64
  %73 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !59
  %75 = and i32 %74, 17408
  %76 = icmp eq i32 %75, 17408
  br i1 %76, label %182, label %77

77:                                               ; preds = %69, %66
  %78 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(5) @.str.39, i64 noundef 4) #13
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = getelementptr inbounds i8, ptr %26, i64 4
  %82 = load i8, ptr %81, align 1, !tbaa !64
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !59
  %86 = and i32 %85, 17408
  %87 = icmp eq i32 %86, 17408
  br i1 %87, label %182, label %88

88:                                               ; preds = %80, %77
  br label %89

89:                                               ; preds = %88, %89
  %90 = phi ptr [ %97, %89 ], [ %26, %88 ]
  %91 = load i8, ptr %90, align 1, !tbaa !64
  %92 = zext i8 %91 to i64
  %93 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !59
  %95 = and i32 %94, 16385
  %96 = icmp eq i32 %95, 16385
  %97 = getelementptr inbounds i8, ptr %90, i64 1
  br i1 %96, label %89, label %98, !llvm.loop !149

98:                                               ; preds = %89
  %99 = icmp eq i8 %91, 61
  br i1 %99, label %182, label %100

100:                                              ; preds = %98
  %101 = load i8, ptr %26, align 1, !tbaa !64
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %194, label %103

103:                                              ; preds = %100, %187
  %104 = phi i8 [ %190, %187 ], [ %101, %100 ]
  %105 = phi i64 [ %188, %187 ], [ 0, %100 ]
  %106 = sext i8 %104 to i32
  %107 = icmp eq i8 %104, 32
  br i1 %107, label %187, label %108

108:                                              ; preds = %103
  %109 = zext i8 %104 to i64
  %110 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !59
  %112 = and i32 %111, 16388
  %113 = icmp eq i32 %112, 16388
  br i1 %113, label %187, label %114

114:                                              ; preds = %108
  %115 = call ptr @memchr(ptr nonnull dereferenceable(1) @.str.40, i32 %106, i64 21)
  %116 = icmp eq ptr %115, null
  br i1 %116, label %187, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds i8, ptr %26, i64 %105
  switch i8 %104, label %182 [
    i8 10, label %119
    i8 62, label %125
  ]

119:                                              ; preds = %117
  %120 = getelementptr inbounds i8, ptr %118, i64 1
  %121 = load i8, ptr %120, align 1, !tbaa !64
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %192, label %123

123:                                              ; preds = %119
  %124 = icmp eq i8 %104, 62
  br i1 %124, label %125, label %182

125:                                              ; preds = %117, %123
  %126 = getelementptr inbounds i8, ptr %118, i64 1
  %127 = load i8, ptr %126, align 1, !tbaa !64
  %128 = icmp eq i8 %127, 38
  br i1 %128, label %129, label %182

129:                                              ; preds = %125
  %130 = getelementptr inbounds i8, ptr %118, i64 2
  %131 = load i8, ptr %130, align 1, !tbaa !64
  %132 = icmp eq i8 %131, 49
  %133 = icmp ugt i64 %105, 1
  %134 = and i1 %133, %132
  br i1 %134, label %135, label %182

135:                                              ; preds = %129
  %136 = getelementptr inbounds i8, ptr %118, i64 -1
  %137 = load i8, ptr %136, align 1, !tbaa !64
  %138 = icmp eq i8 %137, 50
  br i1 %138, label %139, label %182

139:                                              ; preds = %135
  %140 = getelementptr inbounds i8, ptr %118, i64 -2
  %141 = load i8, ptr %140, align 1, !tbaa !64
  %142 = zext i8 %141 to i64
  %143 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !59
  %145 = and i32 %144, 17408
  %146 = icmp eq i32 %145, 17408
  br i1 %146, label %147, label %182

147:                                              ; preds = %139
  %148 = getelementptr inbounds i8, ptr %118, i64 3
  %149 = load i8, ptr %148, align 1, !tbaa !64
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %147
  %152 = zext i8 %149 to i64
  %153 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !59
  %155 = and i32 %154, 17408
  %156 = icmp eq i32 %155, 17408
  br i1 %156, label %157, label %182

157:                                              ; preds = %151, %147
  %158 = load i8, ptr %148, align 1, !tbaa !64
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %179, label %160

160:                                              ; preds = %157
  %161 = zext i8 %158 to i64
  %162 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %161
  %163 = load i32, ptr %162, align 4, !tbaa !59
  %164 = and i32 %163, 17408
  %165 = icmp eq i32 %164, 17408
  br i1 %165, label %166, label %177

166:                                              ; preds = %160, %171
  %167 = phi ptr [ %168, %171 ], [ %148, %160 ]
  %168 = getelementptr inbounds i8, ptr %167, i64 1
  %169 = load i8, ptr %168, align 1, !tbaa !64
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %179, label %171, !llvm.loop !150

171:                                              ; preds = %166
  %172 = zext i8 %169 to i64
  %173 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !59
  %175 = and i32 %174, 17408
  %176 = icmp eq i32 %175, 17408
  br i1 %176, label %166, label %177, !llvm.loop !150

177:                                              ; preds = %171, %160
  %178 = phi i1 [ %159, %160 ], [ %170, %171 ]
  br i1 %178, label %179, label %182

179:                                              ; preds = %166, %157, %177
  %180 = call i32 @dup2(i32 noundef 1, i32 noundef 2) #11
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %182, label %192

182:                                              ; preds = %179, %177, %117, %123, %125, %129, %135, %139, %151, %98, %80, %69, %267
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %183 = load ptr, ptr @PL_sigfpe_saved, align 8, !tbaa !71
  %184 = call i32 @Perl_rsignal_save(i32 noundef 8, ptr noundef %183, ptr noundef nonnull %6) #11
  %185 = call i32 (ptr, ptr, ...) @execl(ptr noundef nonnull @PL_sh_path, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.36, ptr noundef nonnull %26, ptr noundef null) #11
  %186 = call i32 @Perl_rsignal_restore(i32 noundef 8, ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call fastcc void @S_exec_failed(ptr noundef nonnull @PL_sh_path, i32 noundef %1, i32 noundef %2)
  call void @Perl_safesysfree(ptr noundef nonnull %10) #11
  br label %274

187:                                              ; preds = %103, %108, %114
  %188 = add nuw nsw i64 %105, 1
  %189 = getelementptr inbounds i8, ptr %26, i64 %188
  %190 = load i8, ptr %189, align 1, !tbaa !64
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %194, label %103, !llvm.loop !151

192:                                              ; preds = %179, %119
  %193 = phi ptr [ %118, %119 ], [ %140, %179 ]
  store i8 0, ptr %193, align 1, !tbaa !64
  br label %194

194:                                              ; preds = %187, %192, %100
  %195 = phi i64 [ 0, %100 ], [ %105, %192 ], [ %188, %187 ]
  %196 = shl i64 %195, 2
  %197 = and i64 %196, -8
  %198 = add i64 %197, 16
  %199 = call ptr @Perl_safesysmalloc(i64 noundef %198) #11
  store ptr %199, ptr @PL_Argv, align 8, !tbaa !71
  %200 = trunc i64 %195 to i32
  %201 = call ptr @Perl_savepvn(ptr noundef nonnull %26, i32 noundef %200) #11
  store ptr %201, ptr @PL_Cmd, align 8, !tbaa !71
  %202 = load ptr, ptr @PL_Argv, align 8, !tbaa !71
  %203 = load i8, ptr %201, align 1, !tbaa !64
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %251, label %205

205:                                              ; preds = %194, %247
  %206 = phi ptr [ %222, %247 ], [ %202, %194 ]
  %207 = phi ptr [ %248, %247 ], [ %201, %194 ]
  br label %208

208:                                              ; preds = %208, %205
  %209 = phi ptr [ %216, %208 ], [ %207, %205 ]
  %210 = load i8, ptr %209, align 1, !tbaa !64
  %211 = zext i8 %210 to i64
  %212 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %211
  %213 = load i32, ptr %212, align 4, !tbaa !59
  %214 = and i32 %213, 17408
  %215 = icmp eq i32 %214, 17408
  %216 = getelementptr inbounds i8, ptr %209, i64 1
  br i1 %215, label %208, label %217, !llvm.loop !152

217:                                              ; preds = %208
  %218 = icmp eq i8 %210, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %217
  %220 = getelementptr inbounds ptr, ptr %206, i64 1
  store ptr %209, ptr %206, align 8, !tbaa !71
  br label %221

221:                                              ; preds = %219, %217
  %222 = phi ptr [ %220, %219 ], [ %206, %217 ]
  %223 = load i8, ptr %209, align 1, !tbaa !64
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %247, label %225

225:                                              ; preds = %221
  %226 = zext i8 %223 to i64
  %227 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %226
  %228 = load i32, ptr %227, align 4, !tbaa !59
  %229 = and i32 %228, 17408
  %230 = icmp eq i32 %229, 17408
  br i1 %230, label %242, label %237

231:                                              ; preds = %237
  %232 = zext i8 %240 to i64
  %233 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !59
  %235 = and i32 %234, 17408
  %236 = icmp eq i32 %235, 17408
  br i1 %236, label %242, label %237, !llvm.loop !153

237:                                              ; preds = %225, %231
  %238 = phi ptr [ %239, %231 ], [ %209, %225 ]
  %239 = getelementptr inbounds i8, ptr %238, i64 1
  %240 = load i8, ptr %239, align 1, !tbaa !64
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %247, label %231, !llvm.loop !153

242:                                              ; preds = %231, %225
  %243 = phi i1 [ %224, %225 ], [ %241, %231 ]
  %244 = phi ptr [ %209, %225 ], [ %239, %231 ]
  br i1 %243, label %247, label %245

245:                                              ; preds = %242
  %246 = getelementptr inbounds i8, ptr %244, i64 1
  store i8 0, ptr %244, align 1, !tbaa !64
  br label %247

247:                                              ; preds = %237, %221, %245, %242
  %248 = phi ptr [ %246, %245 ], [ %244, %242 ], [ %209, %221 ], [ %239, %237 ]
  %249 = load i8, ptr %248, align 1, !tbaa !64
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %251, label %205, !llvm.loop !154

251:                                              ; preds = %247, %194
  %252 = phi ptr [ %202, %194 ], [ %222, %247 ]
  store ptr null, ptr %252, align 8, !tbaa !71
  %253 = load ptr, ptr @PL_Argv, align 8, !tbaa !71
  %254 = load ptr, ptr %253, align 8, !tbaa !71
  %255 = icmp eq ptr %254, null
  br i1 %255, label %271, label %256

256:                                              ; preds = %251
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %257 = load ptr, ptr @PL_sigfpe_saved, align 8, !tbaa !71
  %258 = call i32 @Perl_rsignal_save(i32 noundef 8, ptr noundef %257, ptr noundef nonnull %7) #11
  %259 = load ptr, ptr @PL_Argv, align 8, !tbaa !71
  %260 = load ptr, ptr %259, align 8, !tbaa !71
  %261 = call i32 @execvp(ptr noundef %260, ptr noundef nonnull %259) #11
  %262 = call i32 @Perl_rsignal_restore(i32 noundef 8, ptr noundef nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  %263 = tail call ptr @__errno_location() #12
  %264 = load i32, ptr %263, align 4, !tbaa !59
  %265 = icmp eq i32 %264, 8
  %266 = load ptr, ptr @PL_Argv, align 8, !tbaa !71
  br i1 %265, label %267, label %269

267:                                              ; preds = %256
  call void @Perl_safesysfree(ptr noundef %266) #11
  store ptr null, ptr @PL_Argv, align 8, !tbaa !71
  %268 = load ptr, ptr @PL_Cmd, align 8, !tbaa !71
  call void @Perl_safesysfree(ptr noundef %268) #11
  store ptr null, ptr @PL_Cmd, align 8, !tbaa !71
  br label %182

269:                                              ; preds = %256
  %270 = load ptr, ptr %266, align 8, !tbaa !71
  call fastcc void @S_exec_failed(ptr noundef %270, i32 noundef %1, i32 noundef %2)
  br label %271

271:                                              ; preds = %269, %251
  %272 = load ptr, ptr @PL_Argv, align 8, !tbaa !71
  call void @Perl_safesysfree(ptr noundef %272) #11
  store ptr null, ptr @PL_Argv, align 8, !tbaa !71
  %273 = load ptr, ptr @PL_Cmd, align 8, !tbaa !71
  call void @Perl_safesysfree(ptr noundef %273) #11
  store ptr null, ptr @PL_Cmd, align 8, !tbaa !71
  call void @Perl_safesysfree(ptr noundef nonnull %10) #11
  br label %274

274:                                              ; preds = %61, %271, %182
  ret i1 false
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

declare i64 @Perl_my_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @Perl_my_strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @execl(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind uwtable
define dso_local i32 @Perl_apply(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !58 {
  %4 = alloca i64, align 8
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [0 x ptr], ptr @PL_op_name, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  switch i32 %0, label %10 [
    i32 316, label %8
    i32 294, label %8
  ]

8:                                                ; preds = %3, %3
  %9 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef %7) #11
  br label %10

10:                                               ; preds = %8, %3
  %11 = load i8, ptr @PL_tainting, align 1, !tbaa !87, !range !63, !noundef !89
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds ptr, ptr %1, i64 1
  %14 = icmp ugt ptr %13, %2
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %29, label %16

16:                                               ; preds = %10, %26
  %17 = phi ptr [ %27, %26 ], [ %13, %10 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !71
  %19 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !82
  %21 = and i32 %20, 14680064
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = tail call zeroext i1 @Perl_sv_tainted(ptr noundef %18) #11
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  store i8 1, ptr @PL_tainted, align 1, !tbaa !87
  br label %29

26:                                               ; preds = %23, %16
  %27 = getelementptr inbounds ptr, ptr %17, i64 1
  %28 = icmp ugt ptr %27, %2
  br i1 %28, label %29, label %16, !llvm.loop !155

29:                                               ; preds = %26, %10, %25
  switch i32 %0, label %250 [
    i32 297, label %30
    i32 296, label %177
  ]

30:                                               ; preds = %29
  %31 = load i8, ptr @PL_tainted, align 1, !tbaa !87, !range !63, !noundef !89
  %32 = icmp eq i8 %31, 0
  %33 = load i8, ptr @PL_tainting, align 1, !range !63
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef %7) #11
  br label %37

37:                                               ; preds = %36, %30
  %38 = getelementptr inbounds ptr, ptr %1, i64 1
  %39 = icmp ugt ptr %38, %2
  br i1 %39, label %250, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %38, align 8, !tbaa !71
  %42 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !82
  %44 = and i32 %43, 2097408
  %45 = icmp eq i32 %44, 256
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load ptr, ptr %41, align 8, !tbaa !84
  %48 = getelementptr inbounds %struct.xpviv, ptr %47, i64 0, i32 4
  %49 = load i64, ptr %48, align 8, !tbaa !64
  br label %52

50:                                               ; preds = %40
  %51 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %41, i32 noundef 2) #11
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i64 [ %49, %46 ], [ %51, %50 ]
  %54 = trunc i64 %53 to i32
  %55 = load i8, ptr @PL_tainted, align 1, !tbaa !87, !range !63, !noundef !89
  %56 = icmp eq i8 %55, 0
  %57 = load i8, ptr @PL_tainting, align 1, !range !63
  %58 = icmp eq i8 %57, 0
  %59 = select i1 %56, i1 true, i1 %58
  br i1 %59, label %61, label %60

60:                                               ; preds = %52
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef %7) #11
  br label %61

61:                                               ; preds = %60, %52
  %62 = ptrtoint ptr %2 to i64
  %63 = ptrtoint ptr %38 to i64
  %64 = sub i64 %62, %63
  %65 = lshr exact i64 %64, 3
  %66 = trunc i64 %65 to i32
  %67 = getelementptr inbounds ptr, ptr %1, i64 2
  %68 = icmp ugt ptr %67, %2
  br i1 %68, label %250, label %69

69:                                               ; preds = %61, %173
  %70 = phi ptr [ %175, %173 ], [ %67, %61 ]
  %71 = phi i32 [ %174, %173 ], [ %66, %61 ]
  %72 = load ptr, ptr %70, align 8, !tbaa !71
  %73 = getelementptr inbounds %struct.sv, ptr %72, i64 0, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !82
  %75 = and i32 %74, 2097152
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %69
  %78 = call i32 @Perl_mg_get(ptr noundef %72) #11
  br label %79

79:                                               ; preds = %69, %77
  %80 = load ptr, ptr %70, align 8, !tbaa !71
  %81 = getelementptr inbounds %struct.sv, ptr %80, i64 0, i32 2
  %82 = load i32, ptr %81, align 4, !tbaa !82
  %83 = and i32 %82, 49152
  %84 = icmp eq i32 %83, 32768
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = and i32 %82, 255
  %87 = add nsw i32 %86, -9
  %88 = icmp ult i32 %87, 2
  br i1 %88, label %117, label %89

89:                                               ; preds = %85, %79
  %90 = and i32 %82, 2048
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %117, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.sv, ptr %80, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !64
  %95 = getelementptr inbounds %struct.sv, ptr %94, i64 0, i32 2
  %96 = load i32, ptr %95, align 4, !tbaa !82
  %97 = and i32 %96, 255
  %98 = icmp ult i32 %97, 11
  br i1 %98, label %99, label %117

99:                                               ; preds = %92
  %100 = and i32 %96, 2097152
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = call i32 @Perl_mg_get(ptr noundef %94) #11
  br label %104

104:                                              ; preds = %99, %102
  %105 = load ptr, ptr %70, align 8, !tbaa !71
  %106 = getelementptr inbounds %struct.sv, ptr %105, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !64
  %108 = getelementptr inbounds %struct.sv, ptr %107, i64 0, i32 2
  %109 = load i32, ptr %108, align 4, !tbaa !82
  %110 = and i32 %109, 49152
  %111 = icmp eq i32 %110, 32768
  br i1 %111, label %112, label %117

112:                                              ; preds = %104
  %113 = and i32 %109, 255
  %114 = add nsw i32 %113, -9
  %115 = icmp ult i32 %114, 2
  %116 = select i1 %115, ptr %107, ptr null
  br label %117

117:                                              ; preds = %112, %85, %104, %92, %89
  %118 = phi ptr [ null, %104 ], [ null, %92 ], [ null, %89 ], [ %80, %85 ], [ %116, %112 ]
  %119 = icmp eq ptr %118, null
  br i1 %119, label %143, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.sv, ptr %118, i64 0, i32 2
  %122 = load i32, ptr %121, align 4, !tbaa !82
  %123 = and i32 %122, 255
  %124 = add nsw i32 %123, -9
  %125 = icmp ult i32 %124, 2
  br i1 %125, label %126, label %140

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.gv, ptr %118, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !64
  %129 = icmp eq ptr %128, null
  br i1 %129, label %140, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.gp, ptr %128, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !93
  %133 = icmp eq ptr %132, null
  br i1 %133, label %140, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.io, ptr %132, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !64
  %137 = icmp eq ptr %136, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %134
  %139 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.42) #11
  br label %173

140:                                              ; preds = %120, %126, %134, %130
  %141 = tail call ptr @__errno_location() #12
  store i32 9, ptr %141, align 4, !tbaa !59
  %142 = add nsw i32 %71, -1
  br label %173

143:                                              ; preds = %117
  %144 = load ptr, ptr %70, align 8, !tbaa !71
  %145 = getelementptr inbounds %struct.sv, ptr %144, i64 0, i32 2
  %146 = load i32, ptr %145, align 4, !tbaa !82
  %147 = and i32 %146, 2098176
  %148 = icmp eq i32 %147, 1024
  br i1 %148, label %149, label %155

149:                                              ; preds = %143
  %150 = load ptr, ptr %144, align 8, !tbaa !84
  %151 = getelementptr inbounds %struct.xpv, ptr %150, i64 0, i32 2
  %152 = load i64, ptr %151, align 8, !tbaa !85
  store i64 %152, ptr %4, align 8, !tbaa !81
  %153 = getelementptr inbounds %struct.sv, ptr %144, i64 0, i32 3
  %154 = load ptr, ptr %153, align 8, !tbaa !64
  br label %157

155:                                              ; preds = %143
  %156 = call ptr @Perl_sv_2pv_flags(ptr noundef %144, ptr noundef nonnull %4, i32 noundef 32) #11
  br label %157

157:                                              ; preds = %155, %149
  %158 = phi ptr [ %154, %149 ], [ %156, %155 ]
  %159 = load i8, ptr @PL_tainted, align 1, !tbaa !87, !range !63, !noundef !89
  %160 = icmp eq i8 %159, 0
  %161 = load i8, ptr @PL_tainting, align 1, !range !63
  %162 = icmp eq i8 %161, 0
  %163 = select i1 %160, i1 true, i1 %162
  br i1 %163, label %165, label %164

164:                                              ; preds = %157
  call void @Perl_taint_proper(ptr noundef null, ptr noundef %7) #11
  br label %165

165:                                              ; preds = %164, %157
  %166 = load i64, ptr %4, align 8, !tbaa !81
  %167 = call fastcc zeroext i1 @S_is_safe_syscall(ptr noundef %158, i64 noundef %166, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.43)
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = call i32 @chmod(ptr noundef %158, i32 noundef %54) #11
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %168, %165
  %172 = add nsw i32 %71, -1
  br label %173

173:                                              ; preds = %168, %171, %138, %140
  %174 = phi i32 [ %71, %138 ], [ %142, %140 ], [ %172, %171 ], [ %71, %168 ]
  %175 = getelementptr inbounds ptr, ptr %70, i64 1
  %176 = icmp ugt ptr %175, %2
  br i1 %176, label %250, label %69, !llvm.loop !156

177:                                              ; preds = %29
  %178 = load i8, ptr @PL_tainted, align 1, !tbaa !87, !range !63, !noundef !89
  %179 = icmp eq i8 %178, 0
  %180 = load i8, ptr @PL_tainting, align 1, !range !63
  %181 = icmp eq i8 %180, 0
  %182 = select i1 %179, i1 true, i1 %181
  br i1 %182, label %184, label %183

183:                                              ; preds = %177
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef %7) #11
  br label %184

184:                                              ; preds = %183, %177
  %185 = ptrtoint ptr %2 to i64
  %186 = ptrtoint ptr %1 to i64
  %187 = sub i64 %185, %186
  %188 = lshr exact i64 %187, 3
  %189 = trunc i64 %188 to i32
  %190 = getelementptr inbounds ptr, ptr %1, i64 1
  %191 = icmp ugt ptr %190, %2
  br i1 %191, label %250, label %192

192:                                              ; preds = %184, %246
  %193 = phi ptr [ %248, %246 ], [ %190, %184 ]
  %194 = phi i32 [ %247, %246 ], [ %189, %184 ]
  %195 = load ptr, ptr %193, align 8, !tbaa !71
  %196 = getelementptr inbounds %struct.sv, ptr %195, i64 0, i32 2
  %197 = load i32, ptr %196, align 4, !tbaa !82
  %198 = and i32 %197, 2098176
  %199 = icmp eq i32 %198, 1024
  br i1 %199, label %200, label %206

200:                                              ; preds = %192
  %201 = load ptr, ptr %195, align 8, !tbaa !84
  %202 = getelementptr inbounds %struct.xpv, ptr %201, i64 0, i32 2
  %203 = load i64, ptr %202, align 8, !tbaa !85
  store i64 %203, ptr %4, align 8, !tbaa !81
  %204 = getelementptr inbounds %struct.sv, ptr %195, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !64
  br label %208

206:                                              ; preds = %192
  %207 = call ptr @Perl_sv_2pv_flags(ptr noundef %195, ptr noundef nonnull %4, i32 noundef 34) #11
  br label %208

208:                                              ; preds = %206, %200
  %209 = phi ptr [ %205, %200 ], [ %207, %206 ]
  %210 = load i8, ptr @PL_tainted, align 1, !tbaa !87, !range !63, !noundef !89
  %211 = icmp eq i8 %210, 0
  %212 = load i8, ptr @PL_tainting, align 1, !range !63
  %213 = icmp eq i8 %212, 0
  %214 = select i1 %211, i1 true, i1 %213
  br i1 %214, label %216, label %215

215:                                              ; preds = %208
  call void @Perl_taint_proper(ptr noundef null, ptr noundef %7) #11
  br label %216

216:                                              ; preds = %215, %208
  %217 = load i64, ptr %4, align 8, !tbaa !81
  %218 = call fastcc zeroext i1 @S_is_safe_syscall(ptr noundef %209, i64 noundef %217, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.44)
  br i1 %218, label %221, label %219

219:                                              ; preds = %216
  %220 = add nsw i32 %194, -1
  br label %246

221:                                              ; preds = %216
  %222 = load i8, ptr @PL_unsafe, align 1, !tbaa !87, !range !63, !noundef !89
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %229, label %224

224:                                              ; preds = %221
  %225 = call i32 @unlink(ptr noundef %209) #11
  %226 = icmp ne i32 %225, 0
  %227 = sext i1 %226 to i32
  %228 = add nsw i32 %194, %227
  br label %246

229:                                              ; preds = %221
  %230 = call i32 @stat64(ptr noundef %209, ptr noundef nonnull @PL_statbuf) #11
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %229
  %233 = add nsw i32 %194, -1
  br label %246

234:                                              ; preds = %229
  %235 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statbuf, i64 0, i32 3), align 8, !tbaa !110
  %236 = and i32 %235, 61440
  %237 = icmp eq i32 %236, 16384
  br i1 %237, label %238, label %241

238:                                              ; preds = %234
  %239 = add nsw i32 %194, -1
  %240 = tail call ptr @__errno_location() #12
  store i32 21, ptr %240, align 4, !tbaa !59
  br label %246

241:                                              ; preds = %234
  %242 = call i32 @unlink(ptr noundef %209) #11
  %243 = icmp ne i32 %242, 0
  %244 = sext i1 %243 to i32
  %245 = add nsw i32 %194, %244
  br label %246

246:                                              ; preds = %241, %224, %238, %232, %219
  %247 = phi i32 [ %233, %232 ], [ %239, %238 ], [ %220, %219 ], [ %228, %224 ], [ %245, %241 ]
  %248 = getelementptr inbounds ptr, ptr %193, i64 1
  %249 = icmp ugt ptr %248, %2
  br i1 %249, label %250, label %192, !llvm.loop !157

250:                                              ; preds = %246, %173, %184, %61, %37, %29
  %251 = phi i32 [ 0, %29 ], [ 0, %37 ], [ %66, %61 ], [ %189, %184 ], [ %174, %173 ], [ %247, %246 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret i32 %251
}

declare ptr @Perl_die(ptr noundef, ...) local_unnamed_addr #1

declare zeroext i1 @Perl_sv_tainted(ptr noundef) local_unnamed_addr #1

declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i1 @Perl_cando(i32 noundef %0, i1 noundef zeroext %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 !prof !72 {
  br i1 %1, label %4, label %6, !prof !74

4:                                                ; preds = %3
  %5 = tail call i32 @geteuid() #11
  br label %8

6:                                                ; preds = %3
  %7 = tail call i32 @getuid() #11
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ %5, %4 ], [ %7, %6 ]
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21, !prof !73

11:                                               ; preds = %8
  %12 = icmp eq i32 %0, 64
  br i1 %12, label %13, label %57

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !110
  %16 = and i32 %15, 73
  %17 = icmp ne i32 %16, 0
  %18 = and i32 %15, 61440
  %19 = icmp eq i32 %18, 16384
  %20 = or i1 %17, %19
  br label %57

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 4
  %23 = load i32, ptr %22, align 4, !tbaa !158
  br i1 %1, label %24, label %26, !prof !74

24:                                               ; preds = %21
  %25 = tail call i32 @geteuid() #11
  br label %28

26:                                               ; preds = %21
  %27 = tail call i32 @getuid() #11
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = icmp eq i32 %23, %29
  br i1 %30, label %31, label %36, !prof !73

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !110
  %34 = and i32 %33, %0
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %56, label %57

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !159
  br i1 %1, label %39, label %41, !prof !74

39:                                               ; preds = %36
  %40 = tail call i32 @getegid() #11
  br label %43

41:                                               ; preds = %36
  %42 = tail call i32 @getgid() #11
  br label %43

43:                                               ; preds = %39, %41
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = icmp eq i32 %44, %38
  %46 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !110
  br i1 %45, label %48, label %52, !prof !73

48:                                               ; preds = %43
  %49 = lshr i32 %0, 3
  %50 = and i32 %47, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %57

52:                                               ; preds = %43
  %53 = lshr i32 %0, 6
  %54 = and i32 %47, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57, !prof !73

56:                                               ; preds = %52, %48, %31
  br label %57

57:                                               ; preds = %13, %52, %48, %31, %11, %56
  %58 = phi i1 [ false, %56 ], [ true, %11 ], [ true, %31 ], [ true, %48 ], [ true, %52 ], [ %20, %13 ]
  ret i1 %58
}

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @getuid() local_unnamed_addr #4

; Function Attrs: cold nounwind uwtable
define dso_local ptr @Perl_start_glob(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !58 {
  %3 = alloca i64, align 8
  %4 = tail call ptr @Perl_newSV(i64 noundef 0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  %5 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !82
  %7 = and i32 %6, 2098176
  %8 = icmp eq i32 %7, 1024
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !84
  %11 = getelementptr inbounds %struct.xpv, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !85
  store i64 %12, ptr %3, align 8, !tbaa !81
  %13 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  br label %17

15:                                               ; preds = %2
  %16 = call ptr @Perl_sv_2pv_flags(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 2) #11
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi ptr [ %14, %9 ], [ %16, %15 ]
  %19 = load i64, ptr %3, align 8, !tbaa !81
  %20 = call fastcc zeroext i1 @S_is_safe_syscall(ptr noundef %18, i64 noundef %19, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46)
  br i1 %20, label %21, label %96

21:                                               ; preds = %17
  call void @Perl_push_scope() #11
  call void @Perl_save_pushptr(ptr noundef %4, i32 noundef 11) #11
  call void @Perl_sv_setpvn(ptr noundef %4, ptr noundef nonnull @PL_cshname, i64 noundef 0) #11
  call void @Perl_sv_catpv(ptr noundef %4, ptr noundef nonnull @.str.47) #11
  call void @Perl_sv_catsv_flags(ptr noundef %4, ptr noundef %0, i32 noundef 2) #11
  call void @Perl_sv_catpv(ptr noundef %4, ptr noundef nonnull @.str.48) #11
  %22 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.49, i64 noundef 3, i32 noundef 0, i32 noundef 12) #11
  %23 = getelementptr inbounds %struct.gv, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !64
  %25 = getelementptr inbounds %struct.gp, ptr %24, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !160
  %27 = call ptr @Perl_hv_common(ptr noundef %26, ptr noundef null, ptr noundef nonnull @.str.50, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #11
  %28 = load ptr, ptr %23, align 8, !tbaa !64
  %29 = getelementptr inbounds %struct.gp, ptr %28, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !160
  %31 = call ptr @Perl_hv_common(ptr noundef %30, ptr noundef null, ptr noundef nonnull @.str.51, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #11
  %32 = icmp eq ptr %27, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %21
  %34 = load ptr, ptr %27, align 8, !tbaa !71
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !82
  %39 = and i32 %38, 2097152
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  %42 = call i32 @Perl_mg_get(ptr noundef nonnull %34) #11
  br label %43

43:                                               ; preds = %41, %36, %33, %21
  %44 = icmp eq ptr %31, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %43
  %46 = load ptr, ptr %31, align 8, !tbaa !71
  %47 = icmp eq ptr %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !82
  %51 = and i32 %50, 2097152
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = call i32 @Perl_mg_get(ptr noundef nonnull %46) #11
  br label %55

55:                                               ; preds = %53, %48, %45, %43
  %56 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.49, i64 noundef 3, i32 noundef 0, i32 noundef 12) #11
  %57 = call ptr @Perl_save_hash(ptr noundef %56) #11
  br i1 %32, label %68, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %27, align 8, !tbaa !71
  %60 = icmp eq ptr %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !82
  %64 = and i32 %63, 4194304
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = call i32 @Perl_mg_set(ptr noundef nonnull %59) #11
  br label %68

68:                                               ; preds = %66, %61, %58, %55
  br i1 %44, label %79, label %69

69:                                               ; preds = %68
  %70 = load ptr, ptr %31, align 8, !tbaa !71
  %71 = icmp eq ptr %70, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.sv, ptr %70, i64 0, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !82
  %75 = and i32 %74, 4194304
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = call i32 @Perl_mg_set(ptr noundef nonnull %70) #11
  br label %79

79:                                               ; preds = %77, %72, %69, %68
  %80 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !71
  %81 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !64
  %83 = load ptr, ptr %4, align 8, !tbaa !84
  %84 = getelementptr inbounds %struct.xpv, ptr %83, i64 0, i32 2
  %85 = load i64, ptr %84, align 8, !tbaa !85
  %86 = call zeroext i1 @Perl_do_open6(ptr noundef %80, ptr noundef %82, i64 noundef %85, ptr noundef null, ptr noundef null, i32 noundef 0)
  %87 = getelementptr inbounds %struct.io, ptr %1, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !64
  call void @Perl_pop_scope() #11
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %79
  %91 = call zeroext i1 @Perl_ckwarn(i32 noundef 4) #11
  br i1 %91, label %92, label %96

92:                                               ; preds = %90
  %93 = tail call ptr @__errno_location() #12
  %94 = load i32, ptr %93, align 4, !tbaa !59
  %95 = call ptr @strerror(i32 noundef %94) #11
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 4, ptr noundef nonnull @.str.52, ptr noundef %95) #11
  br label %96

96:                                               ; preds = %79, %90, %92, %17
  %97 = phi ptr [ null, %17 ], [ %88, %92 ], [ %88, %90 ], [ %88, %79 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret ptr %97
}

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #1

declare void @Perl_push_scope() local_unnamed_addr #1

declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Perl_save_hash(ptr noundef) local_unnamed_addr #1

declare void @Perl_pop_scope() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @fcntl64(i32 noundef, i32 noundef, ...) local_unnamed_addr #1

declare void @Perl_PerlIO_clearerr(ptr noundef) local_unnamed_addr #1

declare i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #1

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @getegid() local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @getgid() local_unnamed_addr #4

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!57}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!35 = !{ptr @Perl_do_open6, ptr @S_openn_setup, i64 1}
!36 = !{ptr @Perl_do_open6, ptr @Perl_savepvn, i64 1}
!37 = !{ptr @Perl_do_open6, ptr @Perl_save_pushptr, i64 1}
!38 = !{ptr @Perl_do_open6, ptr @Perl_newSVpvn_flags, i64 1}
!39 = !{ptr @Perl_do_open6, ptr @PerlIO_openn, i64 1}
!40 = !{ptr @Perl_do_open6, ptr @S_openn_cleanup, i64 1}
!41 = !{ptr @S_openn_cleanup, ptr @Perl_ckwarn, i64 1}
!42 = !{ptr @S_openn_cleanup, ptr @Perl_PerlIO_fileno, i64 1}
!43 = !{ptr @S_openn_cleanup, ptr @fstat64, i64 1}
!44 = !{ptr @S_openn_cleanup, ptr @fcntl64, i64 1}
!45 = !{ptr @Perl_do_close, ptr @Perl_io_close, i64 1}
!46 = !{ptr @Perl_io_close, ptr @Perl_PerlIO_error, i64 1}
!47 = !{ptr @Perl_io_close, ptr @Perl_PerlIO_close, i64 1}
!48 = !{ptr @Perl_do_print, ptr @PerlIO_isutf8, i64 42073}
!49 = !{ptr @Perl_do_print, ptr @Perl_PerlIO_write, i64 42041}
!50 = !{ptr @Perl_do_print, ptr @Perl_safesysfree, i64 42073}
!51 = !{ptr @Perl_do_print, ptr @Perl_PerlIO_error, i64 42073}
!52 = !{ptr @Perl_my_stat_flags, ptr @Perl_sv_setpvn, i64 17}
!53 = !{ptr @Perl_my_stat_flags, ptr @stat64, i64 17}
!54 = !{ptr @Perl_my_stat_flags, ptr @Perl_ckwarn, i64 16}
!55 = !{ptr @Perl_cando, ptr @geteuid, i64 2}
!56 = !{ptr @Perl_cando, ptr @getegid, i64 1}
!57 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!58 = !{!"function_entry_count", i64 0}
!59 = !{!60, !60, i64 0}
!60 = !{!"int", !61, i64 0}
!61 = !{!"omnipotent char", !62, i64 0}
!62 = !{!"Simple C/C++ TBAA"}
!63 = !{i8 0, i8 2}
!64 = !{!61, !61, i64 0}
!65 = !{!66, !67, i64 0}
!66 = !{!"io", !67, i64 0, !60, i64 8, !60, i64 12, !61, i64 16}
!67 = !{!"any pointer", !61, i64 0}
!68 = !{!69, !61, i64 128}
!69 = !{!"xpvio", !67, i64 0, !61, i64 8, !70, i64 16, !61, i64 24, !61, i64 32, !67, i64 40, !61, i64 48, !70, i64 56, !70, i64 64, !70, i64 72, !67, i64 80, !67, i64 88, !67, i64 96, !67, i64 104, !67, i64 112, !67, i64 120, !61, i64 128, !61, i64 129}
!70 = !{!"long", !61, i64 0}
!71 = !{!67, !67, i64 0}
!72 = !{!"function_entry_count", i64 1}
!73 = !{!"branch_weights", i32 0, i32 1}
!74 = !{!"branch_weights", i32 1, i32 0}
!75 = !{!76, !61, i64 35}
!76 = !{!"op", !67, i64 0, !67, i64 8, !67, i64 16, !70, i64 24, !60, i64 32, !60, i64 33, !60, i64 33, !60, i64 33, !60, i64 33, !60, i64 33, !60, i64 33, !60, i64 33, !61, i64 34, !61, i64 35}
!77 = distinct !{!77, !78, !79}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = distinct !{!80, !78, !79}
!81 = !{!70, !70, i64 0}
!82 = !{!83, !60, i64 12}
!83 = !{!"sv", !67, i64 0, !60, i64 8, !60, i64 12, !61, i64 16}
!84 = !{!83, !67, i64 0}
!85 = !{!86, !70, i64 16}
!86 = !{!"xpv", !67, i64 0, !61, i64 8, !70, i64 16, !61, i64 24}
!87 = !{!88, !88, i64 0}
!88 = !{!"_Bool", !61, i64 0}
!89 = !{}
!90 = !{!"branch_weights", i32 1, i32 0, i32 0, i32 0}
!91 = distinct !{!91, !78, !79}
!92 = distinct !{!92, !78, !79}
!93 = !{!94, !67, i64 8}
!94 = !{!"gp", !67, i64 0, !67, i64 8, !67, i64 16, !60, i64 24, !60, i64 28, !67, i64 32, !67, i64 40, !67, i64 48, !67, i64 56, !60, i64 64, !60, i64 67, !67, i64 72}
!95 = distinct !{!95, !78, !79}
!96 = distinct !{!96, !78, !79}
!97 = distinct !{!97, !78, !79}
!98 = distinct !{!98, !78, !79}
!99 = distinct !{!99, !78, !79}
!100 = distinct !{!100, !78, !79}
!101 = !{!"branch_weights", i32 0, i32 1, i32 0}
!102 = !{!"doio.c;S_openn_setup"}
!103 = !{!69, !67, i64 40}
!104 = !{!105, !60, i64 12}
!105 = !{!"gv", !67, i64 0, !60, i64 8, !60, i64 12, !61, i64 16}
!106 = !{!94, !67, i64 56}
!107 = !{!105, !67, i64 0}
!108 = !{!"doio.c;S_openn_cleanup"}
!109 = !{!"branch_weights", i32 1, i32 0, i32 0}
!110 = !{!111, !60, i64 24}
!111 = !{!"stat", !70, i64 0, !70, i64 8, !70, i64 16, !60, i64 24, !60, i64 28, !60, i64 32, !60, i64 36, !70, i64 40, !70, i64 48, !70, i64 56, !70, i64 64, !112, i64 72, !112, i64 88, !112, i64 104, !61, i64 120}
!112 = !{!"timespec", !70, i64 0, !70, i64 8}
!113 = !{!69, !61, i64 129}
!114 = !{!105, !60, i64 8}
!115 = !{!94, !67, i64 40}
!116 = !{!117, !67, i64 0}
!117 = !{!"av", !67, i64 0, !60, i64 8, !60, i64 12, !61, i64 16}
!118 = !{!119, !70, i64 16}
!119 = !{!"xpvav", !67, i64 0, !61, i64 8, !70, i64 16, !70, i64 24, !67, i64 32}
!120 = !{!94, !67, i64 0}
!121 = distinct !{!121, !78, !79}
!122 = distinct !{!122, !78, !79}
!123 = !{!83, !60, i64 8}
!124 = !{!69, !70, i64 56}
!125 = !{!69, !70, i64 64}
!126 = !{!69, !70, i64 72}
!127 = !{!76, !61, i64 34}
!128 = distinct !{!128, !78, !79}
!129 = !{!"function_entry_count", i64 42073}
!130 = !{!"branch_weights", i32 0, i32 42073}
!131 = !{!"branch_weights", i32 42073, i32 0}
!132 = !{!133, !60, i64 56}
!133 = !{!"cop", !67, i64 0, !67, i64 8, !67, i64 16, !70, i64 24, !60, i64 32, !60, i64 33, !60, i64 33, !60, i64 33, !60, i64 33, !60, i64 33, !60, i64 33, !60, i64 33, !61, i64 34, !61, i64 35, !60, i64 36, !67, i64 40, !67, i64 48, !60, i64 56, !60, i64 60, !67, i64 64, !67, i64 72}
!134 = !{!"branch_weights", i32 32, i32 42041}
!135 = !{!"branch_weights", i32 0, i32 42041}
!136 = !{!"function_entry_count", i64 17}
!137 = !{!"branch_weights", i32 17, i32 0}
!138 = !{!139, !67, i64 40}
!139 = !{!"svop", !67, i64 0, !67, i64 8, !67, i64 16, !70, i64 24, !60, i64 32, !60, i64 33, !60, i64 33, !60, i64 33, !60, i64 33, !60, i64 33, !60, i64 33, !60, i64 33, !61, i64 34, !61, i64 35, !67, i64 40}
!140 = !{!141, !141, i64 0}
!141 = !{!"short", !61, i64 0}
!142 = !{!"branch_weights", i32 0, i32 17}
!143 = !{!"branch_weights", i32 16, i32 1}
!144 = !{!"branch_weights", i32 0, i32 16}
!145 = !{!"branch_weights", i32 17, i32 0, i32 0}
!146 = distinct !{!146, !78, !79}
!147 = distinct !{!147, !78, !79}
!148 = distinct !{!148, !78, !79}
!149 = distinct !{!149, !78, !79}
!150 = distinct !{!150, !78, !79}
!151 = distinct !{!151, !78, !79}
!152 = distinct !{!152, !78, !79}
!153 = distinct !{!153, !78, !79}
!154 = distinct !{!154, !78, !79}
!155 = distinct !{!155, !78, !79}
!156 = distinct !{!156, !78, !79}
!157 = distinct !{!157, !78, !79}
!158 = !{!111, !60, i64 28}
!159 = !{!111, !60, i64 32}
!160 = !{!94, !67, i64 32}
