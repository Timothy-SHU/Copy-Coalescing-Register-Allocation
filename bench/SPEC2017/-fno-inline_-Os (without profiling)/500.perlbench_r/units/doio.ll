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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @Perl_do_openn(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #0 {
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
  %17 = tail call zeroext i1 @Perl_do_open_raw(ptr noundef %0, ptr noundef %1, i64 noundef %16, i32 noundef %4, i32 noundef %5) #12
  br label %21

18:                                               ; preds = %9
  %19 = sext i32 %2 to i64
  %20 = tail call zeroext i1 @Perl_do_open6(ptr noundef %0, ptr noundef %1, i64 noundef %19, ptr noundef %6, ptr noundef %7, i32 noundef %8) #12
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i1 [ %17, %15 ], [ %20, %18 ]
  ret i1 %22
}

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @Perl_do_open_raw(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca [8 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  %13 = call fastcc ptr @S_openn_setup(ptr noundef %0, ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #13
  store i32 0, ptr %11, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  %14 = and i32 %3, 1603
  %15 = icmp eq i32 %14, 0
  %16 = load i8, ptr @PL_tainting, align 1, !range !9
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.1) #11
  br label %20

20:                                               ; preds = %19, %5
  store i8 35, ptr %10, align 1, !tbaa !10
  %21 = getelementptr inbounds [8 x i8], ptr %10, i64 0, i64 1
  %22 = call i32 @PerlIO_intmode2str(i32 noundef %3, ptr noundef nonnull %21, ptr noundef nonnull %11) #11
  %23 = trunc i32 %22 to i8
  %24 = load ptr, ptr %13, align 8, !tbaa !11
  %25 = getelementptr inbounds %struct.xpvio, ptr %24, i64 0, i32 16
  store i8 %23, ptr %25, align 8, !tbaa !14
  %26 = call ptr @Perl_newSVpvn_flags(ptr noundef %1, i64 noundef %2, i32 noundef 524288) #11
  store ptr %26, ptr %12, align 8, !tbaa !17
  %27 = call ptr @PerlIO_openn(ptr noundef null, ptr noundef nonnull %10, i32 noundef -1, i32 noundef %3, i32 noundef %4, ptr noundef null, i32 noundef 1, ptr noundef nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  %28 = load ptr, ptr %6, align 8, !tbaa !17
  %29 = load ptr, ptr %7, align 8, !tbaa !17
  %30 = load i32, ptr %8, align 4, !tbaa !5
  %31 = load i8, ptr %9, align 1, !tbaa !10
  %32 = load i32, ptr %11, align 4, !tbaa !5
  %33 = call fastcc zeroext i1 @S_openn_cleanup(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %27, ptr noundef nonnull %10, ptr noundef %1, ptr noundef %28, ptr noundef %29, i32 noundef %30, i8 noundef signext %31, i32 noundef %32, i1 noundef zeroext false, ptr noundef null) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  ret i1 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @Perl_do_open6(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #13
  %17 = call fastcc ptr @S_openn_setup(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #12
  %18 = load ptr, ptr @PL_op, align 8, !tbaa !17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 4
  %22 = load i16, ptr %21, align 8
  %23 = and i16 %22, 511
  %24 = icmp eq i16 %23, 220
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.op, ptr %18, i64 0, i32 6
  %27 = load i8, ptr %26, align 1, !tbaa !18
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
  %44 = load i8, ptr %43, align 1, !tbaa !10
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !5
  %48 = and i32 %47, 17408
  %49 = icmp eq i32 %48, 17408
  %50 = getelementptr inbounds i8, ptr %43, i64 1
  br i1 %49, label %42, label %51, !llvm.loop !20

51:                                               ; preds = %42
  %52 = getelementptr inbounds i8, ptr %41, i64 %2
  %53 = icmp ugt ptr %52, %43
  br i1 %53, label %54, label %65

54:                                               ; preds = %51, %63
  %55 = phi ptr [ %56, %63 ], [ %52, %51 ]
  %56 = getelementptr inbounds i8, ptr %55, i64 -1
  %57 = load i8, ptr %56, align 1, !tbaa !10
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !5
  %61 = and i32 %60, 17408
  %62 = icmp eq i32 %61, 17408
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  store i8 0, ptr %56, align 1, !tbaa !10
  %64 = icmp ugt ptr %56, %43
  br i1 %64, label %54, label %65, !llvm.loop !22

65:                                               ; preds = %54, %63, %51
  %66 = phi ptr [ %52, %51 ], [ %56, %63 ], [ %55, %54 ]
  %67 = icmp ne i32 %5, 0
  br i1 %67, label %68, label %106

68:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  store i64 0, ptr %12, align 8, !tbaa !23
  %69 = load ptr, ptr %4, align 8, !tbaa !17
  %70 = getelementptr inbounds %struct.sv, ptr %69, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !24
  %72 = insertelement <4 x i32> poison, i32 %71, i64 0
  %73 = shufflevector <4 x i32> %72, <4 x i32> poison, <4 x i32> zeroinitializer
  %74 = and <4 x i32> %73, <i32 255, i32 65280, i32 16777471, i32 2097152>
  %75 = icmp eq <4 x i32> %74, <i32 8, i32 0, i32 16777226, i32 0>
  %76 = icmp ne <4 x i32> %74, <i32 8, i32 0, i32 16777226, i32 0>
  %77 = shufflevector <4 x i1> %75, <4 x i1> %76, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %78 = bitcast <4 x i1> %77 to i4
  %79 = icmp eq i4 %78, 0
  br i1 %79, label %101, label %80

80:                                               ; preds = %68
  %81 = and i32 %71, 2098176
  %82 = icmp eq i32 %81, 1024
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load ptr, ptr %69, align 8, !tbaa !26
  %85 = getelementptr inbounds %struct.xpv, ptr %84, i64 0, i32 2
  %86 = load i64, ptr %85, align 8, !tbaa !27
  store i64 %86, ptr %12, align 8, !tbaa !23
  %87 = getelementptr inbounds %struct.sv, ptr %69, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !10
  br label %91

89:                                               ; preds = %80
  %90 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %69, ptr noundef nonnull %12, i32 noundef 2) #11
  br label %91

91:                                               ; preds = %83, %89
  %92 = phi ptr [ %88, %83 ], [ %90, %89 ]
  %93 = icmp eq ptr %92, null
  br i1 %93, label %101, label %94

94:                                               ; preds = %91
  %95 = load i64, ptr %12, align 8, !tbaa !23
  %96 = call fastcc zeroext i1 @S_is_safe_syscall(ptr noundef nonnull %92, i64 noundef %95, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  %98 = load i64, ptr %12, align 8, !tbaa !23
  %99 = trunc i64 %98 to i32
  %100 = call ptr @Perl_savepvn(ptr noundef nonnull %92, i32 noundef %99) #11
  br label %103

101:                                              ; preds = %68, %91
  %102 = call ptr @Perl_savepvn(ptr noundef nonnull @.str.4, i32 noundef 0) #11
  br label %103

103:                                              ; preds = %97, %101
  %104 = phi ptr [ %100, %97 ], [ %102, %101 ]
  call void @Perl_save_pushptr(ptr noundef %104, i32 noundef 10) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  br label %106

105:                                              ; preds = %94
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  br label %670

106:                                              ; preds = %65, %103
  %107 = phi ptr [ %104, %103 ], [ %43, %65 ]
  %108 = load i8, ptr %43, align 1, !tbaa !10
  %109 = load ptr, ptr %17, align 8, !tbaa !11
  %110 = getelementptr inbounds %struct.xpvio, ptr %109, i64 0, i32 16
  store i8 %108, ptr %110, align 8, !tbaa !14
  %111 = icmp eq i8 %108, 43
  br i1 %111, label %112, label %130

112:                                              ; preds = %106
  %113 = load i8, ptr %50, align 1, !tbaa !10
  switch i8 %113, label %533 [
    i8 60, label %114
    i8 62, label %114
  ]

114:                                              ; preds = %112, %112
  br i1 %67, label %115, label %121

115:                                              ; preds = %114
  %116 = icmp ugt ptr %66, %50
  br i1 %116, label %117, label %139

117:                                              ; preds = %115
  %118 = getelementptr inbounds i8, ptr %66, i64 -1
  %119 = load i8, ptr %118, align 1, !tbaa !10
  %120 = icmp eq i8 %119, 124
  br i1 %120, label %139, label %121

121:                                              ; preds = %117, %114
  %122 = load i8, ptr @PL_tainting, align 1, !tbaa !29, !range !9, !noundef !31
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.3) #11
  %125 = load i8, ptr %43, align 1, !tbaa !10
  br label %126

126:                                              ; preds = %121, %124
  %127 = phi i8 [ 43, %121 ], [ %125, %124 ]
  %128 = getelementptr inbounds [8 x i8], ptr %11, i64 0, i64 1
  store i8 %127, ptr %128, align 1, !tbaa !10
  %129 = load i8, ptr %50, align 1, !tbaa !10
  br label %130

130:                                              ; preds = %126, %106
  %131 = phi i8 [ %108, %106 ], [ %129, %126 ]
  %132 = phi ptr [ %43, %106 ], [ %50, %126 ]
  %133 = phi i32 [ 0, %106 ], [ 1, %126 ]
  switch i8 %131, label %526 [
    i8 124, label %134
    i8 62, label %222
    i8 60, label %469
  ]

134:                                              ; preds = %130
  br i1 %67, label %135, label %150

135:                                              ; preds = %134
  %136 = getelementptr inbounds i8, ptr %132, i64 1
  %137 = load i8, ptr %136, align 1, !tbaa !10
  %138 = icmp eq i8 %137, 45
  br i1 %138, label %144, label %139

139:                                              ; preds = %115, %117, %529, %629, %520, %463, %135
  %140 = phi i8 [ 0, %135 ], [ %454, %463 ], [ 0, %520 ], [ 0, %629 ], [ 0, %529 ], [ 0, %117 ], [ 0, %115 ]
  %141 = phi ptr [ %132, %135 ], [ %455, %463 ], [ %516, %520 ], [ %534, %629 ], [ %132, %529 ], [ %43, %117 ], [ %43, %115 ]
  %142 = phi i32 [ %133, %135 ], [ %456, %463 ], [ %133, %520 ], [ %535, %629 ], [ %133, %529 ], [ 0, %117 ], [ 0, %115 ]
  %143 = phi i32 [ %5, %135 ], [ %457, %463 ], [ %5, %520 ], [ %5, %629 ], [ %5, %529 ], [ %5, %117 ], [ %5, %115 ]
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5, i32 noundef %40, ptr noundef %1) #11
  br label %144

144:                                              ; preds = %139, %135
  %145 = phi i8 [ %140, %139 ], [ 0, %135 ]
  %146 = phi ptr [ %141, %139 ], [ %132, %135 ]
  %147 = phi i32 [ %142, %139 ], [ %133, %135 ]
  %148 = phi i32 [ %143, %139 ], [ %5, %135 ]
  %149 = getelementptr inbounds i8, ptr %146, i64 1
  br label %150

150:                                              ; preds = %144, %134
  %151 = phi i8 [ %145, %144 ], [ 0, %134 ]
  %152 = phi ptr [ %149, %144 ], [ %132, %134 ]
  %153 = phi i32 [ %147, %144 ], [ %133, %134 ]
  %154 = phi i32 [ %148, %144 ], [ 0, %134 ]
  br label %155

155:                                              ; preds = %155, %150
  %156 = phi ptr [ %152, %150 ], [ %157, %155 ]
  %157 = getelementptr inbounds i8, ptr %156, i64 1
  %158 = load i8, ptr %157, align 1, !tbaa !10
  %159 = zext i8 %158 to i64
  %160 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !5
  %162 = and i32 %161, 17408
  %163 = icmp eq i32 %162, 17408
  br i1 %163, label %155, label %164, !llvm.loop !32

164:                                              ; preds = %155
  %165 = icmp eq i32 %154, 0
  %166 = ptrtoint ptr %66 to i64
  %167 = ptrtoint ptr %157 to i64
  %168 = select i1 %165, ptr %157, ptr %107
  %169 = load i8, ptr %168, align 1, !tbaa !10
  switch i8 %169, label %183 [
    i8 0, label %170
    i8 45, label %175
  ]

170:                                              ; preds = %164
  %171 = call zeroext i1 @Perl_ckwarn(i32 noundef 10) #11
  br i1 %171, label %172, label %173

172:                                              ; preds = %170
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 10, ptr noundef nonnull @.str.6) #11
  br label %173

173:                                              ; preds = %172, %170
  %174 = tail call ptr @__errno_location() #14
  store i32 32, ptr %174, align 4, !tbaa !5
  br label %670

175:                                              ; preds = %164
  %176 = getelementptr inbounds i8, ptr %168, i64 1
  %177 = load i8, ptr %176, align 1, !tbaa !10
  %178 = icmp eq i8 %177, 0
  %179 = and i1 %165, %178
  %180 = load i8, ptr @PL_tainting, align 1, !range !9
  %181 = icmp eq i8 %180, 0
  %182 = select i1 %179, i1 true, i1 %181
  br i1 %182, label %188, label %186

183:                                              ; preds = %164
  %184 = load i8, ptr @PL_tainting, align 1, !tbaa !29, !range !9, !noundef !31
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %192, label %186

186:                                              ; preds = %175, %183
  call void @Perl_taint_env() #11
  %187 = load i8, ptr @PL_tainting, align 1, !tbaa !29
  br label %188

188:                                              ; preds = %186, %175
  %189 = phi i8 [ %187, %186 ], [ %180, %175 ]
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %188
  call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.7) #11
  br label %192

192:                                              ; preds = %183, %188, %191
  br i1 %165, label %193, label %202

193:                                              ; preds = %192
  %194 = xor i64 %167, -1
  %195 = getelementptr i8, ptr %157, i64 %194
  %196 = getelementptr i8, ptr %195, i64 %166
  %197 = load i8, ptr %196, align 1, !tbaa !10
  %198 = icmp eq i8 %197, 124
  br i1 %198, label %199, label %202

199:                                              ; preds = %193
  store i8 0, ptr %196, align 1, !tbaa !10
  %200 = call zeroext i1 @Perl_ckwarn(i32 noundef 10) #11
  br i1 %200, label %201, label %202

201:                                              ; preds = %199
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 10, ptr noundef nonnull @.str.8) #11
  br label %202

202:                                              ; preds = %199, %201, %193, %192
  store i8 119, ptr %11, align 1, !tbaa !10
  %203 = icmp eq i8 %38, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %202
  %205 = icmp eq i8 %39, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %204, %202
  %207 = phi i8 [ 98, %202 ], [ 116, %204 ]
  %208 = getelementptr inbounds [8 x i8], ptr %11, i64 0, i64 1
  store i8 %207, ptr %208, align 1, !tbaa !10
  br label %209

209:                                              ; preds = %206, %204
  %210 = icmp ugt i32 %154, 1
  br i1 %210, label %211, label %213

211:                                              ; preds = %209
  %212 = call ptr @Perl_my_popen_list(ptr noundef nonnull %11, i32 noundef %154, ptr noundef %4) #11
  br label %215

213:                                              ; preds = %209
  %214 = call ptr @Perl_my_popen(ptr noundef nonnull %168, ptr noundef nonnull %11) #11
  br i1 %165, label %665, label %215

215:                                              ; preds = %211, %213
  %216 = phi ptr [ %212, %211 ], [ %214, %213 ]
  %217 = load i8, ptr %157, align 1, !tbaa !10
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %665, label %219

219:                                              ; preds = %215
  %220 = call i32 @PerlIO_apply_layers(ptr noundef %216, ptr noundef nonnull %11, ptr noundef nonnull %157) #11
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %665, label %670

222:                                              ; preds = %130
  %223 = load i8, ptr @PL_tainting, align 1, !tbaa !29, !range !9, !noundef !31
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %222
  call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.3) #11
  br label %226

226:                                              ; preds = %222, %225
  %227 = getelementptr inbounds i8, ptr %132, i64 1
  %228 = load i8, ptr %227, align 1, !tbaa !10
  %229 = icmp eq i8 %228, 62
  br i1 %229, label %230, label %234

230:                                              ; preds = %226
  %231 = load ptr, ptr %17, align 8, !tbaa !11
  %232 = getelementptr inbounds %struct.xpvio, ptr %231, i64 0, i32 16
  store i8 97, ptr %232, align 8, !tbaa !14
  %233 = getelementptr inbounds i8, ptr %132, i64 2
  br label %234

234:                                              ; preds = %226, %230
  %235 = phi i8 [ 97, %230 ], [ 119, %226 ]
  %236 = phi ptr [ %233, %230 ], [ %227, %226 ]
  store i8 %235, ptr %11, align 1
  %237 = icmp eq i8 %38, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %234
  %239 = icmp eq i8 %39, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %238, %234
  %241 = phi i8 [ 98, %234 ], [ 116, %238 ]
  %242 = getelementptr inbounds [8 x i8], ptr %11, i64 0, i64 1
  store i8 %241, ptr %242, align 1, !tbaa !10
  br label %243

243:                                              ; preds = %240, %238
  %244 = load i8, ptr %236, align 1, !tbaa !10
  %245 = icmp eq i8 %244, 38
  br i1 %245, label %252, label %246

246:                                              ; preds = %243
  %247 = zext i8 %244 to i64
  %248 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %247
  %249 = load i32, ptr %248, align 4, !tbaa !5
  %250 = and i32 %249, 17408
  %251 = icmp eq i32 %250, 17408
  br i1 %251, label %412, label %421

252:                                              ; preds = %485, %243
  %253 = phi ptr [ %236, %243 ], [ %471, %485 ]
  %254 = phi i32 [ 1, %243 ], [ %133, %485 ]
  %255 = getelementptr inbounds i8, ptr %253, i64 1
  %256 = load i8, ptr %255, align 1, !tbaa !10
  %257 = icmp ne i8 %256, 61
  %258 = getelementptr inbounds i8, ptr %253, i64 2
  %259 = select i1 %257, ptr %255, ptr %258
  %260 = select i1 %257, i32 2, i32 0
  br i1 %67, label %267, label %261

261:                                              ; preds = %252
  %262 = load i8, ptr %259, align 1, !tbaa !10
  %263 = icmp eq i8 %262, 0
  %264 = icmp ne ptr %3, null
  %265 = and i1 %264, %263
  br i1 %265, label %665, label %266

266:                                              ; preds = %261
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #13
  br label %274

267:                                              ; preds = %252
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #13
  %268 = icmp eq i32 %5, 1
  br i1 %268, label %274, label %269

269:                                              ; preds = %267
  %270 = load ptr, ptr %17, align 8, !tbaa !11
  %271 = getelementptr inbounds %struct.xpvio, ptr %270, i64 0, i32 16
  %272 = load i8, ptr %271, align 8, !tbaa !14
  %273 = sext i8 %272 to i32
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.9, i32 noundef %273) #11
  br label %274

274:                                              ; preds = %266, %269, %267
  br label %275

275:                                              ; preds = %274, %275
  %276 = phi ptr [ %283, %275 ], [ %259, %274 ]
  %277 = load i8, ptr %276, align 1, !tbaa !10
  %278 = zext i8 %277 to i64
  %279 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %278
  %280 = load i32, ptr %279, align 4, !tbaa !5
  %281 = and i32 %280, 17408
  %282 = icmp eq i32 %281, 17408
  %283 = getelementptr inbounds i8, ptr %276, i64 1
  br i1 %282, label %275, label %284, !llvm.loop !33

284:                                              ; preds = %275
  br i1 %67, label %285, label %320

285:                                              ; preds = %284
  %286 = load ptr, ptr %4, align 8, !tbaa !17
  %287 = getelementptr inbounds %struct.sv, ptr %286, i64 0, i32 2
  %288 = load i32, ptr %287, align 4, !tbaa !24
  %289 = and i32 %288, 256
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %306

291:                                              ; preds = %285
  %292 = and i32 %288, 16384
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %320, label %294

294:                                              ; preds = %291
  %295 = call i32 @Perl_looks_like_number(ptr noundef nonnull %286) #11
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %294
  %298 = load i8, ptr %276, align 1, !tbaa !10
  %299 = zext i8 %298 to i64
  %300 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %299
  %301 = load i32, ptr %300, align 4, !tbaa !5
  br label %320

302:                                              ; preds = %294
  %303 = load ptr, ptr %4, align 8, !tbaa !17
  %304 = getelementptr inbounds %struct.sv, ptr %303, i64 0, i32 2
  %305 = load i32, ptr %304, align 4, !tbaa !24
  br label %306

306:                                              ; preds = %302, %285
  %307 = phi i32 [ %305, %302 ], [ %288, %285 ]
  %308 = phi ptr [ %303, %302 ], [ %286, %285 ]
  %309 = and i32 %307, -2145386240
  %310 = icmp eq i32 %309, -2147483392
  br i1 %310, label %311, label %315

311:                                              ; preds = %306
  %312 = load ptr, ptr %308, align 8, !tbaa !26
  %313 = getelementptr inbounds %struct.xpvuv, ptr %312, i64 0, i32 4
  %314 = load i64, ptr %313, align 8, !tbaa !10
  br label %317

315:                                              ; preds = %306
  %316 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %308, i32 noundef 2) #11
  br label %317

317:                                              ; preds = %315, %311
  %318 = phi i64 [ %314, %311 ], [ %316, %315 ]
  %319 = trunc i64 %318 to i32
  br label %389

320:                                              ; preds = %297, %291, %284
  %321 = phi i32 [ %301, %297 ], [ %280, %291 ], [ %280, %284 ]
  %322 = and i32 %321, 2
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %331, label %324

324:                                              ; preds = %320
  %325 = call zeroext i1 @Perl_grok_atoUV(ptr noundef nonnull %276, ptr noundef nonnull %13, ptr noundef null) #11
  %326 = load i64, ptr %13, align 8
  %327 = icmp ult i64 %326, 2147483648
  %328 = select i1 %325, i1 %327, i1 false
  br i1 %328, label %329, label %331

329:                                              ; preds = %324
  %330 = trunc i64 %326 to i32
  br label %377

331:                                              ; preds = %320, %324
  br i1 %67, label %332, label %335

332:                                              ; preds = %331
  %333 = load ptr, ptr %4, align 8, !tbaa !17
  %334 = call ptr @Perl_sv_2io(ptr noundef %333) #11
  br label %354

335:                                              ; preds = %331
  %336 = ptrtoint ptr %66 to i64
  %337 = ptrtoint ptr %276 to i64
  %338 = sub i64 %336, %337
  %339 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull %276, i64 noundef %338, i32 noundef 0, i32 noundef 15) #11
  %340 = icmp eq ptr %339, null
  br i1 %340, label %410, label %341

341:                                              ; preds = %335
  %342 = getelementptr inbounds %struct.sv, ptr %339, i64 0, i32 2
  %343 = load i32, ptr %342, align 4, !tbaa !24
  %344 = and i32 %343, 255
  %345 = add nsw i32 %344, -9
  %346 = icmp ult i32 %345, 2
  br i1 %346, label %347, label %410

347:                                              ; preds = %341
  %348 = getelementptr inbounds %struct.gv, ptr %339, i64 0, i32 3
  %349 = load ptr, ptr %348, align 8, !tbaa !10
  %350 = icmp eq ptr %349, null
  br i1 %350, label %410, label %351

351:                                              ; preds = %347
  %352 = getelementptr inbounds %struct.gp, ptr %349, i64 0, i32 1
  %353 = load ptr, ptr %352, align 8, !tbaa !34
  br label %354

354:                                              ; preds = %351, %332
  %355 = phi ptr [ %334, %332 ], [ %353, %351 ]
  %356 = icmp eq ptr %355, null
  br i1 %356, label %410, label %357

357:                                              ; preds = %354
  %358 = getelementptr inbounds %struct.io, ptr %355, i64 0, i32 3
  %359 = load ptr, ptr %358, align 8, !tbaa !10
  %360 = icmp eq ptr %359, null
  br i1 %360, label %377, label %361

361:                                              ; preds = %357
  %362 = call i32 @Perl_PerlIO_flush(ptr noundef nonnull %359) #11
  %363 = call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %359) #11
  %364 = call ptr @Perl_PerlIO_stdout() #11
  %365 = icmp eq ptr %359, %364
  br i1 %365, label %381, label %366

366:                                              ; preds = %361
  %367 = call ptr @Perl_PerlIO_stderr() #11
  %368 = icmp eq ptr %359, %367
  br i1 %368, label %381, label %369

369:                                              ; preds = %366
  %370 = call ptr @Perl_PerlIO_stdin() #11
  %371 = icmp eq ptr %359, %370
  br i1 %371, label %381, label %372

372:                                              ; preds = %369
  %373 = load ptr, ptr %355, align 8, !tbaa !11
  %374 = getelementptr inbounds %struct.xpvio, ptr %373, i64 0, i32 16
  %375 = load i8, ptr %374, align 8, !tbaa !14
  %376 = icmp eq i8 %375, 115
  br i1 %376, label %381, label %385

377:                                              ; preds = %357, %329
  %378 = phi i32 [ %330, %329 ], [ -1, %357 ]
  %379 = icmp eq i32 %5, 0
  %380 = select i1 %379, ptr null, ptr %276
  br label %389

381:                                              ; preds = %372, %369, %361, %366
  %382 = phi i8 [ 62, %366 ], [ 62, %361 ], [ 60, %369 ], [ 115, %372 ]
  %383 = load ptr, ptr %17, align 8, !tbaa !11
  %384 = getelementptr inbounds %struct.xpvio, ptr %383, i64 0, i32 16
  store i8 %382, ptr %384, align 8, !tbaa !14
  br label %385

385:                                              ; preds = %381, %372
  %386 = icmp eq i32 %5, 0
  %387 = select i1 %386, ptr null, ptr %276
  %388 = call ptr @PerlIO_fdupopen(ptr noundef nonnull %359, ptr noundef null, i32 noundef %260) #11
  br label %405

389:                                              ; preds = %377, %317
  %390 = phi ptr [ null, %317 ], [ %380, %377 ]
  %391 = phi i32 [ 0, %317 ], [ %5, %377 ]
  %392 = phi i32 [ %319, %317 ], [ %378, %377 ]
  br i1 %257, label %393, label %395

393:                                              ; preds = %389
  %394 = call i32 @dup(i32 noundef %392) #11
  br label %395

395:                                              ; preds = %389, %393
  %396 = phi i8 [ 0, %393 ], [ 1, %389 ]
  %397 = phi i32 [ %394, %393 ], [ %392, %389 ]
  %398 = call ptr @PerlIO_openn(ptr noundef %390, ptr noundef nonnull %11, i32 noundef %397, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef %391, ptr noundef %4) #11
  %399 = icmp eq ptr %398, null
  br i1 %399, label %400, label %405

400:                                              ; preds = %395
  %401 = icmp sgt i32 %397, -1
  %402 = and i1 %257, %401
  br i1 %402, label %403, label %405

403:                                              ; preds = %400
  %404 = call i32 @close(i32 noundef %397) #11
  br label %405

405:                                              ; preds = %395, %403, %400, %385
  %406 = phi ptr [ null, %400 ], [ null, %403 ], [ %398, %395 ], [ %388, %385 ]
  %407 = phi i8 [ %396, %400 ], [ %396, %403 ], [ %396, %395 ], [ 0, %385 ]
  %408 = phi ptr [ %390, %400 ], [ %390, %403 ], [ %390, %395 ], [ %387, %385 ]
  %409 = phi i32 [ %391, %400 ], [ %391, %403 ], [ %391, %395 ], [ %5, %385 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  br label %452

410:                                              ; preds = %341, %335, %347, %354
  %411 = tail call ptr @__errno_location() #14
  store i32 22, ptr %411, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  br label %670

412:                                              ; preds = %246, %412
  %413 = phi ptr [ %414, %412 ], [ %236, %246 ]
  %414 = getelementptr inbounds i8, ptr %413, i64 1
  %415 = load i8, ptr %414, align 1, !tbaa !10
  %416 = zext i8 %415 to i64
  %417 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %416
  %418 = load i32, ptr %417, align 4, !tbaa !5
  %419 = and i32 %418, 17408
  %420 = icmp eq i32 %419, 17408
  br i1 %420, label %412, label %421, !llvm.loop !36

421:                                              ; preds = %412, %246
  %422 = phi i8 [ %244, %246 ], [ %415, %412 ]
  %423 = phi ptr [ %236, %246 ], [ %414, %412 ]
  %424 = icmp eq i8 %422, 45
  br i1 %424, label %425, label %443

425:                                              ; preds = %421
  %426 = getelementptr inbounds i8, ptr %423, i64 1
  %427 = load i8, ptr %426, align 1, !tbaa !10
  %428 = icmp eq i8 %427, 0
  br i1 %428, label %437, label %429

429:                                              ; preds = %425
  %430 = zext i8 %427 to i64
  %431 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %430
  %432 = load i32, ptr %431, align 4, !tbaa !5
  %433 = and i32 %432, 17408
  %434 = icmp eq i32 %433, 17408
  %435 = icmp eq i8 %427, 58
  %436 = or i1 %435, %434
  br i1 %436, label %437, label %443

437:                                              ; preds = %429, %425
  %438 = call ptr @Perl_PerlIO_stdout() #11
  %439 = load ptr, ptr %17, align 8, !tbaa !11
  %440 = getelementptr inbounds %struct.xpvio, ptr %439, i64 0, i32 16
  store i8 45, ptr %440, align 8, !tbaa !14
  %441 = icmp ugt i32 %5, 1
  br i1 %441, label %442, label %452

442:                                              ; preds = %437
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.10, i32 noundef 45) #11
  br label %452

443:                                              ; preds = %429, %421
  br i1 %67, label %444, label %446

444:                                              ; preds = %443
  %445 = call ptr @PerlIO_openn(ptr noundef nonnull %423, ptr noundef nonnull %11, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef %5, ptr noundef %4) #11
  br label %452

446:                                              ; preds = %443
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #13
  %447 = ptrtoint ptr %66 to i64
  %448 = ptrtoint ptr %423 to i64
  %449 = sub i64 %447, %448
  %450 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %423, i64 noundef %449, i32 noundef 524288) #11
  store ptr %450, ptr %14, align 8, !tbaa !17
  %451 = call ptr @PerlIO_openn(ptr noundef null, ptr noundef nonnull %11, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 1, ptr noundef nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  br label %665

452:                                              ; preds = %405, %442, %437, %444
  %453 = phi ptr [ %438, %442 ], [ %438, %437 ], [ %445, %444 ], [ %406, %405 ]
  %454 = phi i8 [ 0, %442 ], [ 0, %437 ], [ 0, %444 ], [ %407, %405 ]
  %455 = phi ptr [ %426, %442 ], [ %426, %437 ], [ %423, %444 ], [ %408, %405 ]
  %456 = phi i32 [ 1, %442 ], [ 1, %437 ], [ 1, %444 ], [ %254, %405 ]
  %457 = phi i32 [ %5, %442 ], [ %5, %437 ], [ %5, %444 ], [ %409, %405 ]
  %458 = icmp eq ptr %453, null
  %459 = icmp ne ptr %455, null
  %460 = select i1 %458, i1 %459, i1 false
  br i1 %460, label %461, label %665

461:                                              ; preds = %452
  %462 = load i8, ptr %455, align 1, !tbaa !10
  switch i8 %462, label %463 [
    i8 0, label %665
    i8 58, label %665
  ]

463:                                              ; preds = %461
  %464 = zext i8 %462 to i64
  %465 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %464
  %466 = load i32, ptr %465, align 4, !tbaa !5
  %467 = and i32 %466, 81920
  %468 = icmp eq i32 %467, 81920
  br i1 %468, label %665, label %139

469:                                              ; preds = %130, %469
  %470 = phi ptr [ %471, %469 ], [ %132, %130 ]
  %471 = getelementptr inbounds i8, ptr %470, i64 1
  %472 = load i8, ptr %471, align 1, !tbaa !10
  %473 = zext i8 %472 to i64
  %474 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %473
  %475 = load i32, ptr %474, align 4, !tbaa !5
  %476 = and i32 %475, 17408
  %477 = icmp eq i32 %476, 17408
  br i1 %477, label %469, label %478, !llvm.loop !37

478:                                              ; preds = %469
  store i8 114, ptr %11, align 1, !tbaa !10
  %479 = icmp eq i8 %36, 0
  br i1 %479, label %480, label %482

480:                                              ; preds = %478
  %481 = icmp eq i8 %37, 0
  br i1 %481, label %485, label %482

482:                                              ; preds = %480, %478
  %483 = phi i8 [ 98, %478 ], [ 116, %480 ]
  %484 = getelementptr inbounds [8 x i8], ptr %11, i64 0, i64 1
  store i8 %483, ptr %484, align 1, !tbaa !10
  br label %485

485:                                              ; preds = %482, %480
  %486 = load i8, ptr %471, align 1, !tbaa !10
  switch i8 %486, label %505 [
    i8 38, label %252
    i8 45, label %487
  ]

487:                                              ; preds = %485
  %488 = getelementptr inbounds i8, ptr %470, i64 2
  %489 = load i8, ptr %488, align 1, !tbaa !10
  %490 = icmp eq i8 %489, 0
  br i1 %490, label %499, label %491

491:                                              ; preds = %487
  %492 = zext i8 %489 to i64
  %493 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %492
  %494 = load i32, ptr %493, align 4, !tbaa !5
  %495 = and i32 %494, 17408
  %496 = icmp eq i32 %495, 17408
  %497 = icmp eq i8 %489, 58
  %498 = or i1 %497, %496
  br i1 %498, label %499, label %505

499:                                              ; preds = %491, %487
  %500 = call ptr @Perl_PerlIO_stdin() #11
  %501 = load ptr, ptr %17, align 8, !tbaa !11
  %502 = getelementptr inbounds %struct.xpvio, ptr %501, i64 0, i32 16
  store i8 45, ptr %502, align 8, !tbaa !14
  %503 = icmp ugt i32 %5, 1
  br i1 %503, label %504, label %514

504:                                              ; preds = %499
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.11, i32 noundef 45) #11
  br label %514

505:                                              ; preds = %491, %485
  br i1 %67, label %506, label %508

506:                                              ; preds = %505
  %507 = call ptr @PerlIO_openn(ptr noundef nonnull %471, ptr noundef nonnull %11, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef %5, ptr noundef %4) #11
  br label %514

508:                                              ; preds = %505
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #13
  %509 = ptrtoint ptr %66 to i64
  %510 = ptrtoint ptr %471 to i64
  %511 = sub i64 %509, %510
  %512 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %471, i64 noundef %511, i32 noundef 524288) #11
  store ptr %512, ptr %15, align 8, !tbaa !17
  %513 = call ptr @PerlIO_openn(ptr noundef null, ptr noundef nonnull %11, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 1, ptr noundef nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  br label %665

514:                                              ; preds = %506, %499, %504
  %515 = phi ptr [ %500, %504 ], [ %500, %499 ], [ %507, %506 ]
  %516 = phi ptr [ %488, %504 ], [ %488, %499 ], [ %471, %506 ]
  %517 = icmp eq ptr %515, null
  br i1 %517, label %518, label %665

518:                                              ; preds = %514
  %519 = load i8, ptr %516, align 1, !tbaa !10
  switch i8 %519, label %520 [
    i8 0, label %665
    i8 58, label %665
  ]

520:                                              ; preds = %518
  %521 = zext i8 %519 to i64
  %522 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %521
  %523 = load i32, ptr %522, align 4, !tbaa !5
  %524 = and i32 %523, 81920
  %525 = icmp eq i32 %524, 81920
  br i1 %525, label %665, label %139

526:                                              ; preds = %130
  %527 = icmp eq i8 %131, 45
  %528 = and i1 %67, %527
  br i1 %528, label %529, label %533

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, ptr %132, i64 1
  %531 = load i8, ptr %530, align 1, !tbaa !10
  %532 = icmp eq i8 %531, 124
  br i1 %532, label %543, label %139

533:                                              ; preds = %112, %526
  %534 = phi ptr [ %132, %526 ], [ %43, %112 ]
  %535 = phi i32 [ %133, %526 ], [ 0, %112 ]
  %536 = getelementptr inbounds i8, ptr %534, i64 1
  %537 = icmp ule ptr %66, %536
  %538 = select i1 %67, i1 true, i1 %537
  br i1 %538, label %629, label %539

539:                                              ; preds = %533
  %540 = getelementptr inbounds i8, ptr %66, i64 -1
  %541 = load i8, ptr %540, align 1, !tbaa !10
  %542 = icmp eq i8 %541, 124
  br i1 %542, label %546, label %630

543:                                              ; preds = %529
  %544 = getelementptr inbounds i8, ptr %132, i64 2
  %545 = load i8, ptr %107, align 1, !tbaa !10
  br label %569

546:                                              ; preds = %539
  store i8 0, ptr %540, align 1, !tbaa !10
  %547 = icmp ugt ptr %540, %534
  br i1 %547, label %548, label %559

548:                                              ; preds = %546, %557
  %549 = phi ptr [ %550, %557 ], [ %540, %546 ]
  %550 = getelementptr inbounds i8, ptr %549, i64 -1
  %551 = load i8, ptr %550, align 1, !tbaa !10
  %552 = zext i8 %551 to i64
  %553 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %552
  %554 = load i32, ptr %553, align 4, !tbaa !5
  %555 = and i32 %554, 17408
  %556 = icmp eq i32 %555, 17408
  br i1 %556, label %557, label %559

557:                                              ; preds = %548
  store i8 0, ptr %550, align 1, !tbaa !10
  %558 = icmp ugt ptr %550, %534
  br i1 %558, label %548, label %559, !llvm.loop !38

559:                                              ; preds = %548, %557, %546
  br label %560

560:                                              ; preds = %559, %560
  %561 = phi ptr [ %568, %560 ], [ %534, %559 ]
  %562 = load i8, ptr %561, align 1, !tbaa !10
  %563 = zext i8 %562 to i64
  %564 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %563
  %565 = load i32, ptr %564, align 4, !tbaa !5
  %566 = and i32 %565, 17408
  %567 = icmp eq i32 %566, 17408
  %568 = getelementptr inbounds i8, ptr %561, i64 1
  br i1 %567, label %560, label %569, !llvm.loop !39

569:                                              ; preds = %560, %543
  %570 = phi i8 [ %545, %543 ], [ %562, %560 ]
  %571 = phi i32 [ %133, %543 ], [ %535, %560 ]
  %572 = phi ptr [ %544, %543 ], [ %561, %560 ]
  %573 = phi ptr [ %107, %543 ], [ %561, %560 ]
  switch i8 %570, label %587 [
    i8 0, label %574
    i8 45, label %579
  ]

574:                                              ; preds = %569
  %575 = call zeroext i1 @Perl_ckwarn(i32 noundef 10) #11
  br i1 %575, label %576, label %577

576:                                              ; preds = %574
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 10, ptr noundef nonnull @.str.6) #11
  br label %577

577:                                              ; preds = %576, %574
  %578 = tail call ptr @__errno_location() #14
  store i32 32, ptr %578, align 4, !tbaa !5
  br label %670

579:                                              ; preds = %569
  %580 = getelementptr inbounds i8, ptr %573, i64 1
  %581 = load i8, ptr %580, align 1, !tbaa !10
  %582 = icmp ne i8 %581, 0
  %583 = or i1 %67, %582
  %584 = load i8, ptr @PL_tainting, align 1, !range !9
  %585 = icmp ne i8 %584, 0
  %586 = select i1 %583, i1 %585, i1 false
  br i1 %586, label %590, label %592

587:                                              ; preds = %569
  %588 = load i8, ptr @PL_tainting, align 1, !tbaa !29, !range !9, !noundef !31
  %589 = icmp eq i8 %588, 0
  br i1 %589, label %596, label %590

590:                                              ; preds = %579, %587
  call void @Perl_taint_env() #11
  %591 = load i8, ptr @PL_tainting, align 1, !tbaa !29
  br label %592

592:                                              ; preds = %590, %579
  %593 = phi i8 [ %591, %590 ], [ %584, %579 ]
  %594 = icmp eq i8 %593, 0
  br i1 %594, label %596, label %595

595:                                              ; preds = %592
  call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.7) #11
  br label %596

596:                                              ; preds = %587, %592, %595
  store i8 114, ptr %11, align 1, !tbaa !10
  %597 = icmp eq i8 %36, 0
  br i1 %597, label %598, label %600

598:                                              ; preds = %596
  %599 = icmp eq i8 %37, 0
  br i1 %599, label %603, label %600

600:                                              ; preds = %598, %596
  %601 = phi i8 [ 98, %596 ], [ 116, %598 ]
  %602 = getelementptr inbounds [8 x i8], ptr %11, i64 0, i64 1
  store i8 %601, ptr %602, align 1, !tbaa !10
  br label %603

603:                                              ; preds = %600, %598
  %604 = icmp ugt i32 %5, 1
  br i1 %604, label %605, label %609

605:                                              ; preds = %603
  %606 = call ptr @Perl_my_popen_list(ptr noundef nonnull %11, i32 noundef %5, ptr noundef %4) #11
  %607 = load ptr, ptr %17, align 8, !tbaa !11
  %608 = getelementptr inbounds %struct.xpvio, ptr %607, i64 0, i32 16
  store i8 124, ptr %608, align 8, !tbaa !14
  br label %613

609:                                              ; preds = %603
  %610 = call ptr @Perl_my_popen(ptr noundef nonnull %573, ptr noundef nonnull %11) #11
  %611 = load ptr, ptr %17, align 8, !tbaa !11
  %612 = getelementptr inbounds %struct.xpvio, ptr %611, i64 0, i32 16
  store i8 124, ptr %612, align 8, !tbaa !14
  br i1 %67, label %613, label %665

613:                                              ; preds = %605, %609
  %614 = phi ptr [ %606, %605 ], [ %610, %609 ]
  br label %615

615:                                              ; preds = %613, %615
  %616 = phi ptr [ %623, %615 ], [ %572, %613 ]
  %617 = load i8, ptr %616, align 1, !tbaa !10
  %618 = zext i8 %617 to i64
  %619 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %618
  %620 = load i32, ptr %619, align 4, !tbaa !5
  %621 = and i32 %620, 17408
  %622 = icmp eq i32 %621, 17408
  %623 = getelementptr inbounds i8, ptr %616, i64 1
  br i1 %622, label %615, label %624, !llvm.loop !40

624:                                              ; preds = %615
  %625 = icmp eq i8 %617, 0
  br i1 %625, label %665, label %626

626:                                              ; preds = %624
  %627 = call i32 @PerlIO_apply_layers(ptr noundef %614, ptr noundef nonnull %11, ptr noundef nonnull %616) #11
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %665, label %670

629:                                              ; preds = %533
  br i1 %67, label %139, label %630

630:                                              ; preds = %539, %629
  %631 = load ptr, ptr %17, align 8, !tbaa !11
  %632 = getelementptr inbounds %struct.xpvio, ptr %631, i64 0, i32 16
  store i8 60, ptr %632, align 8, !tbaa !14
  br label %633

633:                                              ; preds = %633, %630
  %634 = phi ptr [ %534, %630 ], [ %641, %633 ]
  %635 = load i8, ptr %634, align 1, !tbaa !10
  %636 = zext i8 %635 to i64
  %637 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %636
  %638 = load i32, ptr %637, align 4, !tbaa !5
  %639 = and i32 %638, 17408
  %640 = icmp eq i32 %639, 17408
  %641 = getelementptr inbounds i8, ptr %634, i64 1
  br i1 %640, label %633, label %642, !llvm.loop !41

642:                                              ; preds = %633
  store i8 114, ptr %11, align 1, !tbaa !10
  %643 = icmp eq i8 %36, 0
  br i1 %643, label %644, label %646

644:                                              ; preds = %642
  %645 = icmp eq i8 %37, 0
  br i1 %645, label %649, label %646

646:                                              ; preds = %644, %642
  %647 = phi i8 [ 98, %642 ], [ 116, %644 ]
  %648 = getelementptr inbounds [8 x i8], ptr %11, i64 0, i64 1
  store i8 %647, ptr %648, align 1, !tbaa !10
  br label %649

649:                                              ; preds = %646, %644
  %650 = load i8, ptr %634, align 1, !tbaa !10
  %651 = icmp eq i8 %650, 45
  br i1 %651, label %652, label %659

652:                                              ; preds = %649
  %653 = load i8, ptr %641, align 1, !tbaa !10
  %654 = icmp eq i8 %653, 0
  br i1 %654, label %655, label %659

655:                                              ; preds = %652
  %656 = call ptr @Perl_PerlIO_stdin() #11
  %657 = load ptr, ptr %17, align 8, !tbaa !11
  %658 = getelementptr inbounds %struct.xpvio, ptr %657, i64 0, i32 16
  store i8 45, ptr %658, align 8, !tbaa !14
  br label %665

659:                                              ; preds = %649, %652
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #13
  %660 = ptrtoint ptr %66 to i64
  %661 = ptrtoint ptr %534 to i64
  %662 = sub i64 %660, %661
  %663 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %534, i64 noundef %662, i32 noundef 524288) #11
  store ptr %663, ptr %16, align 8, !tbaa !17
  %664 = call ptr @PerlIO_openn(ptr noundef null, ptr noundef nonnull %11, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 1, ptr noundef nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #13
  br label %665

665:                                              ; preds = %446, %261, %508, %518, %518, %461, %461, %463, %452, %624, %626, %609, %659, %655, %514, %520, %213, %219, %215
  %666 = phi ptr [ %216, %219 ], [ %216, %215 ], [ %214, %213 ], [ null, %463 ], [ null, %461 ], [ %453, %452 ], [ null, %520 ], [ null, %518 ], [ %515, %514 ], [ %614, %626 ], [ %614, %624 ], [ %610, %609 ], [ %656, %655 ], [ %664, %659 ], [ null, %461 ], [ null, %518 ], [ %513, %508 ], [ %3, %261 ], [ %451, %446 ]
  %667 = phi i8 [ %151, %219 ], [ %151, %215 ], [ %151, %213 ], [ %454, %463 ], [ %454, %461 ], [ %454, %452 ], [ 0, %520 ], [ 0, %518 ], [ 0, %514 ], [ 0, %626 ], [ 0, %624 ], [ 0, %609 ], [ 0, %655 ], [ 0, %659 ], [ %454, %461 ], [ 0, %518 ], [ 0, %508 ], [ 0, %261 ], [ 0, %446 ]
  %668 = phi ptr [ %157, %219 ], [ %157, %215 ], [ %157, %213 ], [ %455, %463 ], [ %455, %461 ], [ %455, %452 ], [ %516, %520 ], [ %516, %518 ], [ %516, %514 ], [ %616, %626 ], [ %616, %624 ], [ %572, %609 ], [ %534, %655 ], [ null, %659 ], [ %455, %461 ], [ %516, %518 ], [ null, %508 ], [ %259, %261 ], [ null, %446 ]
  %669 = phi i32 [ 1, %219 ], [ 1, %215 ], [ 1, %213 ], [ %456, %463 ], [ %456, %461 ], [ %456, %452 ], [ %133, %520 ], [ %133, %518 ], [ %133, %514 ], [ %571, %626 ], [ %571, %624 ], [ %571, %609 ], [ %535, %655 ], [ %535, %659 ], [ %456, %461 ], [ %133, %518 ], [ %133, %508 ], [ %254, %261 ], [ 1, %446 ]
  br label %670

670:                                              ; preds = %410, %105, %626, %219, %577, %173, %665
  %671 = phi ptr [ null, %173 ], [ %666, %665 ], [ null, %410 ], [ null, %577 ], [ null, %105 ], [ null, %219 ], [ null, %626 ]
  %672 = phi i8 [ %151, %173 ], [ %667, %665 ], [ 0, %410 ], [ 0, %577 ], [ 0, %105 ], [ %151, %219 ], [ 0, %626 ]
  %673 = phi ptr [ %157, %173 ], [ %668, %665 ], [ %276, %410 ], [ %572, %577 ], [ %43, %105 ], [ %157, %219 ], [ %616, %626 ]
  %674 = phi i32 [ %153, %173 ], [ %669, %665 ], [ %254, %410 ], [ %571, %577 ], [ 0, %105 ], [ 1, %219 ], [ %571, %626 ]
  %675 = load ptr, ptr %7, align 8, !tbaa !17
  %676 = load ptr, ptr %8, align 8, !tbaa !17
  %677 = load i32, ptr %9, align 4, !tbaa !5
  %678 = load i8, ptr %10, align 1, !tbaa !10
  %679 = and i8 %672, 1
  %680 = icmp ne i8 %679, 0
  %681 = call fastcc zeroext i1 @S_openn_cleanup(ptr noundef %0, ptr noundef %17, ptr noundef %671, ptr noundef nonnull %11, ptr noundef %1, ptr noundef %675, ptr noundef %676, i32 noundef %677, i8 noundef signext %678, i32 noundef %674, i1 noundef zeroext %680, ptr noundef %673) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  ret i1 %681
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_openn_setup(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !24
  %11 = and i32 %10, 255
  %12 = add nsw i32 %11, -9
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %22

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.gp, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %8, %6, %14, %18
  %23 = tail call ptr @Perl_gv_add_by_type(ptr noundef %0, i32 noundef 15) #11
  %24 = getelementptr inbounds %struct.gv, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !10
  %26 = getelementptr inbounds %struct.gp, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  br label %28

28:                                               ; preds = %18, %22
  %29 = phi ptr [ %27, %22 ], [ %20, %18 ]
  store ptr null, ptr %2, align 8, !tbaa !17
  store ptr null, ptr %3, align 8, !tbaa !17
  store i32 -1, ptr %4, align 4, !tbaa !5
  store i8 32, ptr %5, align 1, !tbaa !10
  store i64 0, ptr %1, align 1
  store i32 1, ptr @PL_forkprocess, align 4, !tbaa !5
  %30 = getelementptr inbounds %struct.io, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !10
  %32 = icmp eq ptr %31, null
  br i1 %32, label %116, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %29, align 8, !tbaa !11
  %35 = getelementptr inbounds %struct.xpvio, ptr %34, i64 0, i32 16
  %36 = load i8, ptr %35, align 8, !tbaa !14
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
  %45 = load ptr, ptr %30, align 8, !tbaa !10
  store ptr %45, ptr %2, align 8, !tbaa !17
  %46 = load ptr, ptr %29, align 8, !tbaa !11
  %47 = getelementptr inbounds %struct.xpvio, ptr %46, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !42
  store ptr %48, ptr %3, align 8, !tbaa !17
  %49 = load ptr, ptr %29, align 8, !tbaa !11
  %50 = getelementptr inbounds %struct.xpvio, ptr %49, i64 0, i32 16
  %51 = load i8, ptr %50, align 8, !tbaa !14
  store i8 %51, ptr %5, align 1, !tbaa !10
  store i32 %39, ptr %4, align 4, !tbaa !5
  br label %113

52:                                               ; preds = %38
  %53 = load ptr, ptr %29, align 8, !tbaa !11
  %54 = getelementptr inbounds %struct.xpvio, ptr %53, i64 0, i32 16
  %55 = load i8, ptr %54, align 8, !tbaa !14
  %56 = icmp eq i8 %55, 124
  %57 = load ptr, ptr %30, align 8, !tbaa !10
  br i1 %56, label %58, label %60

58:                                               ; preds = %52
  %59 = tail call i32 @Perl_my_pclose(ptr noundef %57) #11
  br label %74

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.xpvio, ptr %53, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !42
  %63 = icmp eq ptr %57, %62
  br i1 %63, label %72, label %64

64:                                               ; preds = %60
  %65 = icmp eq ptr %62, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %64
  %67 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %62) #11
  %68 = load ptr, ptr %30, align 8, !tbaa !10
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
  %81 = load ptr, ptr @PL_stderrgv, align 8, !tbaa !17
  %82 = icmp eq ptr %81, null
  br i1 %82, label %99, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.gv, ptr %81, i64 0, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !43
  %86 = and i32 %85, 255
  %87 = icmp eq i32 %86, 9
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.gv, ptr %81, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !10
  %91 = getelementptr inbounds %struct.gp, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !34
  %93 = icmp eq ptr %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %88
  %95 = load ptr, ptr %92, align 8, !tbaa !11
  %96 = getelementptr inbounds %struct.xpvio, ptr %95, i64 0, i32 5
  %97 = load ptr, ptr %96, align 8, !tbaa !42
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %94, %88, %83, %80
  %100 = tail call ptr @Perl_PerlIO_stderr() #11
  br label %101

101:                                              ; preds = %94, %99
  %102 = phi ptr [ %100, %99 ], [ %97, %94 ]
  %103 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !10
  %105 = getelementptr inbounds %struct.gp, ptr %104, i64 0, i32 8
  %106 = load ptr, ptr %105, align 8, !tbaa !45
  %107 = icmp eq ptr %106, null
  %108 = select i1 %107, ptr %0, ptr %106
  %109 = load ptr, ptr %108, align 8, !tbaa !46
  %110 = getelementptr inbounds %struct.xpvgv, ptr %109, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !10
  %112 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %102, ptr noundef nonnull @.str.53, ptr noundef %111) #11
  br label %113

113:                                              ; preds = %44, %101, %74, %33
  store ptr null, ptr %30, align 8, !tbaa !10
  %114 = load ptr, ptr %29, align 8, !tbaa !11
  %115 = getelementptr inbounds %struct.xpvio, ptr %114, i64 0, i32 5
  store ptr null, ptr %115, align 8, !tbaa !42
  br label %116

116:                                              ; preds = %113, %28
  ret ptr %29
}

; Function Attrs: optsize
declare void @Perl_taint_proper(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @PerlIO_intmode2str(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @PerlIO_openn(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @S_openn_cleanup(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i8 noundef signext %8, i32 noundef %9, i1 noundef zeroext %10, ptr noundef %11) unnamed_addr #0 {
  %13 = icmp eq ptr %2, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %12
  %15 = load ptr, ptr %1, align 8, !tbaa !11
  %16 = getelementptr inbounds %struct.xpvio, ptr %15, i64 0, i32 16
  %17 = load i8, ptr %16, align 8, !tbaa !14
  %18 = icmp eq i8 %17, 60
  br i1 %18, label %19, label %205

19:                                               ; preds = %14
  %20 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 9) #11
  br i1 %20, label %21, label %205

21:                                               ; preds = %19
  %22 = tail call fastcc zeroext i1 @S_should_warn_nl(ptr noundef %4) #12
  br i1 %22, label %23, label %205

23:                                               ; preds = %21
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 9, ptr noundef nonnull @PL_warn_nl, ptr noundef nonnull @.str.3) #11
  br label %205

24:                                               ; preds = %12
  %25 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 5) #11
  br i1 %25, label %26, label %70

26:                                               ; preds = %24
  %27 = load ptr, ptr %1, align 8, !tbaa !11
  %28 = getelementptr inbounds %struct.xpvio, ptr %27, i64 0, i32 16
  %29 = load i8, ptr %28, align 8, !tbaa !14
  %30 = icmp eq i8 %29, 60
  br i1 %30, label %31, label %54

31:                                               ; preds = %26
  %32 = tail call ptr @Perl_PerlIO_stdout() #11
  %33 = icmp eq ptr %32, %2
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = tail call ptr @Perl_PerlIO_stderr() #11
  %36 = icmp eq ptr %35, %2
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %1, align 8, !tbaa !11
  %39 = getelementptr inbounds %struct.xpvio, ptr %38, i64 0, i32 16
  %40 = load i8, ptr %39, align 8, !tbaa !14
  br label %54

41:                                               ; preds = %34, %31
  %42 = tail call ptr @Perl_PerlIO_stdout() #11
  %43 = icmp eq ptr %42, %2
  %44 = select i1 %43, ptr @.str.56, ptr @.str.57
  %45 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !10
  %47 = getelementptr inbounds %struct.gp, ptr %46, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !45
  %49 = icmp eq ptr %48, null
  %50 = select i1 %49, ptr %0, ptr %48
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  %52 = getelementptr inbounds %struct.xpvgv, ptr %51, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !10
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 5, ptr noundef nonnull @.str.55, ptr noundef nonnull %44, ptr noundef %53) #11
  br label %70

54:                                               ; preds = %37, %26
  %55 = phi i8 [ %40, %37 ], [ %29, %26 ]
  %56 = icmp eq i8 %55, 62
  br i1 %56, label %57, label %70

57:                                               ; preds = %54
  %58 = tail call ptr @Perl_PerlIO_stdin() #11
  %59 = icmp eq ptr %58, %2
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !10
  %63 = getelementptr inbounds %struct.gp, ptr %62, i64 0, i32 8
  %64 = load ptr, ptr %63, align 8, !tbaa !45
  %65 = icmp eq ptr %64, null
  %66 = select i1 %65, ptr %0, ptr %64
  %67 = load ptr, ptr %66, align 8, !tbaa !46
  %68 = getelementptr inbounds %struct.xpvgv, ptr %67, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !10
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 5, ptr noundef nonnull @.str.58, ptr noundef %69) #11
  br label %70

70:                                               ; preds = %41, %60, %57, %54, %24
  %71 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %2) #11
  %72 = load ptr, ptr %1, align 8, !tbaa !11
  %73 = getelementptr inbounds %struct.xpvio, ptr %72, i64 0, i32 16
  %74 = load i8, ptr %73, align 8, !tbaa !14
  switch i8 %74, label %75 [
    i8 0, label %91
    i8 124, label %91
  ]

75:                                               ; preds = %70
  %76 = icmp ne i8 %74, 45
  %77 = icmp sgt i32 %71, -1
  %78 = select i1 %76, i1 %77, i1 false
  br i1 %78, label %79, label %91

79:                                               ; preds = %75
  %80 = tail call i32 @fstat64(i32 noundef %71, ptr noundef nonnull @PL_statbuf) #11
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %2) #11
  br label %205

84:                                               ; preds = %79
  %85 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statbuf, i64 0, i32 3), align 8, !tbaa !47
  %86 = and i32 %85, 61440
  %87 = icmp eq i32 %86, 49152
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load ptr, ptr %1, align 8, !tbaa !11
  %90 = getelementptr inbounds %struct.xpvio, ptr %89, i64 0, i32 16
  store i8 115, ptr %90, align 8, !tbaa !14
  br label %91

91:                                               ; preds = %70, %70, %84, %88, %75
  %92 = icmp eq ptr %5, null
  br i1 %92, label %161, label %93

93:                                               ; preds = %91
  %94 = icmp eq ptr %6, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %93
  %96 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %6) #11
  %97 = icmp eq ptr %6, %5
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %6) #11
  br label %100

100:                                              ; preds = %95, %98, %93
  %101 = icmp eq i32 %71, %7
  br i1 %101, label %159, label %102

102:                                              ; preds = %100
  %103 = icmp slt i32 %71, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %102
  %105 = tail call ptr @__errno_location() #14
  store i32 9, ptr %105, align 4, !tbaa !5
  br label %205

106:                                              ; preds = %102
  %107 = tail call i32 @dup2(i32 noundef %71, i32 noundef %7) #11
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %2) #11
  br label %205

111:                                              ; preds = %106
  %112 = load ptr, ptr @PL_fdpid, align 8, !tbaa !17
  %113 = zext nneg i32 %71 to i64
  %114 = tail call ptr @Perl_av_fetch(ptr noundef %112, i64 noundef %113, i32 noundef 1) #11
  %115 = load ptr, ptr %114, align 8, !tbaa !17
  %116 = getelementptr inbounds %struct.sv, ptr %115, i64 0, i32 2
  %117 = load i32, ptr %116, align 4, !tbaa !24
  %118 = and i32 %117, 255
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %115, i32 noundef 1) #11
  br label %121

121:                                              ; preds = %120, %111
  %122 = load ptr, ptr %115, align 8, !tbaa !26
  %123 = getelementptr inbounds %struct.xpviv, ptr %122, i64 0, i32 4
  %124 = load i64, ptr %123, align 8, !tbaa !10
  store i64 0, ptr %123, align 8, !tbaa !10
  %125 = load ptr, ptr @PL_fdpid, align 8, !tbaa !17
  %126 = sext i32 %7 to i64
  %127 = tail call ptr @Perl_av_fetch(ptr noundef %125, i64 noundef %126, i32 noundef 1) #11
  %128 = load ptr, ptr %127, align 8, !tbaa !17
  %129 = getelementptr inbounds %struct.sv, ptr %128, i64 0, i32 2
  %130 = load i32, ptr %129, align 4, !tbaa !24
  %131 = and i32 %130, 255
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %121
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %128, i32 noundef 1) #11
  br label %134

134:                                              ; preds = %133, %121
  %135 = shl i64 %124, 32
  %136 = ashr exact i64 %135, 32
  %137 = load ptr, ptr %128, align 8, !tbaa !26
  %138 = getelementptr inbounds %struct.xpviv, ptr %137, i64 0, i32 4
  store i64 %136, ptr %138, align 8, !tbaa !10
  br i1 %10, label %139, label %157

139:                                              ; preds = %134
  %140 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %2) #11
  %141 = icmp sgt i32 %140, -1
  br i1 %141, label %142, label %205

142:                                              ; preds = %139
  %143 = tail call i32 @dup(i32 noundef %140) #11
  %144 = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %140, i32 noundef 1) #11
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = icmp sgt i32 %143, -1
  br i1 %147, label %148, label %205

148:                                              ; preds = %146
  %149 = tail call i32 @close(i32 noundef %143) #11
  br label %205

150:                                              ; preds = %142
  %151 = icmp slt i32 %143, 0
  br i1 %151, label %205, label %152

152:                                              ; preds = %150
  %153 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %2) #11
  %154 = tail call i32 @dup2(i32 noundef %143, i32 noundef %140) #11
  %155 = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %140, i32 noundef 2, i32 noundef %144) #11
  %156 = tail call i32 @close(i32 noundef %143) #11
  br label %159

157:                                              ; preds = %134
  %158 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %2) #11
  br label %159

159:                                              ; preds = %152, %157, %100
  tail call void @Perl_PerlIO_clearerr(ptr noundef nonnull %5) #11
  %160 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %5) #11
  br label %161

161:                                              ; preds = %159, %91
  %162 = phi i32 [ %160, %159 ], [ %71, %91 ]
  %163 = phi ptr [ %5, %159 ], [ %2, %91 ]
  %164 = icmp sgt i32 %162, -1
  br i1 %164, label %165, label %173

165:                                              ; preds = %161
  %166 = load i32, ptr @PL_maxsysfd, align 4, !tbaa !5
  %167 = icmp sgt i32 %162, %166
  %168 = zext i1 %167 to i32
  %169 = tail call i32 (i32, i32, ...) @fcntl64(i32 noundef %162, i32 noundef 2, i32 noundef %168) #11
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %165
  %172 = tail call i32 @close(i32 noundef %162) #11
  br label %205

173:                                              ; preds = %165, %161
  %174 = getelementptr inbounds %struct.io, ptr %1, i64 0, i32 3
  store ptr %163, ptr %174, align 8, !tbaa !10
  %175 = load ptr, ptr %1, align 8, !tbaa !11
  %176 = getelementptr inbounds %struct.xpvio, ptr %175, i64 0, i32 17
  %177 = load i8, ptr %176, align 1, !tbaa !50
  %178 = and i8 %177, -33
  store i8 %178, ptr %176, align 1, !tbaa !50
  %179 = icmp eq i32 %9, 0
  br i1 %179, label %210, label %180

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.xpvio, ptr %175, i64 0, i32 16
  %182 = load i8, ptr %181, align 8, !tbaa !14
  %183 = icmp eq i8 %182, 115
  br i1 %183, label %191, label %184

184:                                              ; preds = %180
  %185 = icmp eq i8 %182, 62
  %186 = and i1 %164, %185
  br i1 %186, label %187, label %203

187:                                              ; preds = %184
  %188 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statbuf, i64 0, i32 3), align 8, !tbaa !47
  %189 = and i32 %188, 61440
  %190 = icmp eq i32 %189, 8192
  br i1 %190, label %191, label %203

191:                                              ; preds = %187, %180
  %192 = load i8, ptr %3, align 1, !tbaa !10
  switch i8 %192, label %195 [
    i8 73, label %193
    i8 35, label %193
  ]

193:                                              ; preds = %191, %191
  %194 = getelementptr inbounds i8, ptr %3, i64 1
  br label %195

195:                                              ; preds = %191, %193
  %196 = phi ptr [ %194, %193 ], [ %3, %191 ]
  store i8 119, ptr %196, align 1, !tbaa !10
  %197 = tail call ptr @PerlIO_openn(ptr noundef %11, ptr noundef nonnull %196, i32 noundef %162, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null) #11
  %198 = load ptr, ptr %1, align 8, !tbaa !11
  %199 = getelementptr inbounds %struct.xpvio, ptr %198, i64 0, i32 5
  store ptr %197, ptr %199, align 8, !tbaa !42
  %200 = icmp eq ptr %197, null
  br i1 %200, label %201, label %210

201:                                              ; preds = %195
  %202 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %163) #11
  br label %205

203:                                              ; preds = %187, %184
  %204 = getelementptr inbounds %struct.xpvio, ptr %175, i64 0, i32 5
  store ptr %163, ptr %204, align 8, !tbaa !42
  br label %210

205:                                              ; preds = %150, %139, %146, %148, %201, %14, %19, %21, %23, %171, %109, %104, %82
  %206 = getelementptr inbounds %struct.io, ptr %1, i64 0, i32 3
  store ptr %5, ptr %206, align 8, !tbaa !10
  %207 = load ptr, ptr %1, align 8, !tbaa !11
  %208 = getelementptr inbounds %struct.xpvio, ptr %207, i64 0, i32 5
  store ptr %6, ptr %208, align 8, !tbaa !42
  %209 = getelementptr inbounds %struct.xpvio, ptr %207, i64 0, i32 16
  store i8 %8, ptr %209, align 8, !tbaa !14
  br label %210

210:                                              ; preds = %195, %173, %203, %205
  %211 = phi i1 [ false, %205 ], [ true, %203 ], [ true, %173 ], [ true, %195 ]
  ret i1 %211
}

; Function Attrs: optsize
declare ptr @Perl_savepvn(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @S_is_safe_syscall(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = icmp ugt i64 %1, 1
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = add i64 %1, -1
  %8 = tail call ptr @memchr(ptr noundef %0, i32 noundef 0, i64 noundef %7) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @__errno_location() #14
  store i32 2, ptr %11, align 4, !tbaa !5
  %12 = getelementptr inbounds i8, ptr %8, i64 1
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 59, ptr noundef nonnull @.str.54, ptr noundef %2, ptr noundef %3, ptr noundef %0, ptr noundef nonnull %12) #11
  br label %13

13:                                               ; preds = %6, %4, %10
  %14 = phi i1 [ false, %10 ], [ true, %4 ], [ true, %6 ]
  ret i1 %14
}

; Function Attrs: optsize
declare zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_taint_env() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_my_popen_list(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_my_popen(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @PerlIO_apply_layers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @Perl_looks_like_number(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i1 @Perl_grok_atoUV(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_sv_2io(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_gv_fetchpvn_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @Perl_PerlIO_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @Perl_PerlIO_fileno(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_PerlIO_stdout() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_PerlIO_stderr() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_PerlIO_stdin() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @PerlIO_fdupopen(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare i32 @dup(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_nextargv(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.gp, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = load ptr, ptr @PL_argvoutgv, align 8, !tbaa !17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = tail call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.12, i64 noundef 7, i32 noundef 129, i32 noundef 15) #11
  store ptr %11, ptr @PL_argvoutgv, align 8, !tbaa !17
  br label %12

12:                                               ; preds = %10, %2
  %13 = icmp eq ptr %7, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %7, align 8, !tbaa !11
  %16 = getelementptr inbounds %struct.xpvio, ptr %15, i64 0, i32 17
  %17 = load i8, ptr %16, align 1, !tbaa !50
  %18 = and i8 %17, 3
  %19 = icmp eq i8 %18, 3
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = and i8 %17, -3
  store i8 %21, ptr %16, align 1, !tbaa !50
  %22 = load ptr, ptr @PL_inplace, align 8, !tbaa !17
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @PL_defoutgv, align 8, !tbaa !17
  %26 = getelementptr inbounds %struct.gv, ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !51
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 8, !tbaa !51
  tail call void @Perl_av_create_and_push(ptr noundef nonnull @PL_argvout_stack, ptr noundef %25) #11
  br label %29

29:                                               ; preds = %20, %24, %14, %12
  %30 = load i32, ptr @PL_filemode, align 4, !tbaa !5
  %31 = and i32 %30, 3072
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %64, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @PL_argvoutgv, align 8, !tbaa !17
  %35 = icmp eq ptr %34, null
  br i1 %35, label %50, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !24
  %39 = and i32 %38, 255
  %40 = add nsw i32 %39, -9
  %41 = icmp ult i32 %40, 2
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.gv, ptr %34, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !10
  %45 = icmp eq ptr %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.gp, ptr %44, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %36, %33, %42, %46
  %51 = tail call ptr @Perl_gv_add_by_type(ptr noundef %34, i32 noundef 15) #11
  %52 = getelementptr inbounds %struct.gv, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !10
  %54 = getelementptr inbounds %struct.gp, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !34
  br label %56

56:                                               ; preds = %46, %50
  %57 = phi ptr [ %55, %50 ], [ %48, %46 ]
  %58 = getelementptr inbounds %struct.io, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !10
  %60 = tail call i32 @Perl_PerlIO_flush(ptr noundef %59) #11
  %61 = load ptr, ptr @PL_oldname, align 8, !tbaa !17
  %62 = load i32, ptr @PL_filemode, align 4, !tbaa !5
  %63 = tail call i32 @chmod(ptr noundef %61, i32 noundef %62) #11
  br label %64

64:                                               ; preds = %56, %29
  store i32 -1, ptr @PL_lastfd, align 4, !tbaa !5
  store i32 0, ptr @PL_filemode, align 4, !tbaa !5
  %65 = load ptr, ptr %4, align 8, !tbaa !10
  %66 = getelementptr inbounds %struct.gp, ptr %65, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !52
  %68 = icmp eq ptr %67, null
  br i1 %68, label %307, label %69

69:                                               ; preds = %64
  %70 = tail call fastcc i64 @S_av_top_index(ptr noundef nonnull %67) #12
  %71 = icmp sgt i64 %70, -1
  br i1 %71, label %72, label %274

72:                                               ; preds = %69, %268
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %73 = load ptr, ptr %4, align 8, !tbaa !10
  %74 = getelementptr inbounds %struct.gp, ptr %73, i64 0, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !52
  %76 = call ptr @Perl_av_shift(ptr noundef %75) #11
  call void @Perl_save_pushptr(ptr noundef %76, i32 noundef 11) #11
  %77 = load i8, ptr @PL_tainting, align 1, !tbaa !29, !range !9, !noundef !31
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %72
  %80 = load ptr, ptr %4, align 8, !tbaa !10
  %81 = load ptr, ptr %80, align 8, !tbaa !17
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 0) #11
  %85 = getelementptr inbounds %struct.gv, ptr %84, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !10
  %87 = load ptr, ptr %86, align 8, !tbaa !17
  br label %88

88:                                               ; preds = %79, %83
  %89 = phi ptr [ %87, %83 ], [ %81, %79 ]
  call void @Perl_sv_untaint(ptr noundef %89) #11
  br label %90

90:                                               ; preds = %72, %88
  %91 = load ptr, ptr %4, align 8, !tbaa !10
  %92 = load ptr, ptr %91, align 8, !tbaa !17
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %0, i32 noundef 0) #11
  %96 = getelementptr inbounds %struct.gv, ptr %95, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !10
  %98 = load ptr, ptr %97, align 8, !tbaa !17
  br label %99

99:                                               ; preds = %90, %94
  %100 = phi ptr [ %98, %94 ], [ %92, %90 ]
  call void @Perl_sv_setsv_flags(ptr noundef %100, ptr noundef %76, i32 noundef 1538) #11
  %101 = load ptr, ptr %4, align 8, !tbaa !10
  %102 = load ptr, ptr %101, align 8, !tbaa !53
  %103 = getelementptr inbounds %struct.sv, ptr %102, i64 0, i32 2
  %104 = load i32, ptr %103, align 4, !tbaa !24
  %105 = and i32 %104, 4194304
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %99
  %108 = call i32 @Perl_mg_set(ptr noundef nonnull %102) #11
  %109 = load ptr, ptr %4, align 8, !tbaa !10
  %110 = load ptr, ptr %109, align 8, !tbaa !53
  %111 = getelementptr inbounds %struct.sv, ptr %110, i64 0, i32 2
  %112 = load i32, ptr %111, align 4, !tbaa !24
  br label %113

113:                                              ; preds = %99, %107
  %114 = phi i32 [ %104, %99 ], [ %112, %107 ]
  %115 = phi ptr [ %102, %99 ], [ %110, %107 ]
  store ptr %115, ptr @PL_Sv, align 8, !tbaa !17
  %116 = and i32 %114, 2098176
  %117 = icmp eq i32 %116, 1024
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load ptr, ptr %115, align 8, !tbaa !26
  %120 = getelementptr inbounds %struct.xpv, ptr %119, i64 0, i32 2
  %121 = load i64, ptr %120, align 8, !tbaa !27
  store i64 %121, ptr %3, align 8, !tbaa !23
  %122 = getelementptr inbounds %struct.sv, ptr %115, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !10
  br label %126

124:                                              ; preds = %113
  %125 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %115, ptr noundef nonnull %3, i32 noundef 2) #11
  br label %126

126:                                              ; preds = %124, %118
  %127 = phi ptr [ %123, %118 ], [ %125, %124 ]
  store ptr %127, ptr @PL_oldname, align 8, !tbaa !17
  %128 = load ptr, ptr @PL_inplace, align 8, !tbaa !17
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %126
  br i1 %1, label %131, label %134

131:                                              ; preds = %130
  %132 = load ptr, ptr %4, align 8, !tbaa !10
  %133 = call zeroext i1 @Perl_do_open6(ptr noundef nonnull %0, ptr noundef nonnull @.str.13, i64 noundef 1, ptr noundef null, ptr noundef %132, i32 noundef 1) #12
  br i1 %133, label %262, label %245

134:                                              ; preds = %130
  %135 = load i64, ptr %3, align 8, !tbaa !23
  %136 = call zeroext i1 @Perl_do_open6(ptr noundef nonnull %0, ptr noundef %127, i64 noundef %135, ptr noundef null, ptr noundef null, i32 noundef 0) #12
  br i1 %136, label %262, label %245

137:                                              ; preds = %126
  %138 = load i64, ptr %3, align 8, !tbaa !23
  %139 = call zeroext i1 @Perl_do_open_raw(ptr noundef nonnull %0, ptr noundef %127, i64 noundef %138, i32 noundef 0, i32 noundef 0) #12
  br i1 %139, label %140, label %245

140:                                              ; preds = %137
  %141 = load i8, ptr @PL_tainting, align 1, !tbaa !29, !range !9, !noundef !31
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %140
  call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.14) #11
  br label %144

144:                                              ; preds = %140, %143
  %145 = load i64, ptr %3, align 8, !tbaa !23
  %146 = icmp eq i64 %145, 1
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = load ptr, ptr @PL_oldname, align 8, !tbaa !17
  %149 = load i8, ptr %148, align 1, !tbaa !10
  %150 = icmp eq i8 %149, 45
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.15, i64 noundef 6, i32 noundef 129, i32 noundef 15) #11
  call void @Perl_setdefout(ptr noundef %152) #11
  br label %262

153:                                              ; preds = %147, %144
  %154 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statbuf, i64 0, i32 3), align 8, !tbaa !47
  store i32 %154, ptr @PL_filemode, align 4, !tbaa !5
  %155 = and i32 %154, 61440
  %156 = icmp eq i32 %155, 32768
  br i1 %156, label %160, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr @PL_oldname, align 8, !tbaa !17
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 23, ptr noundef nonnull @.str.16, ptr noundef %158) #11
  %159 = call zeroext i1 @Perl_do_close(ptr noundef nonnull %0, i1 noundef zeroext false) #12
  br label %268, !llvm.loop !54

160:                                              ; preds = %153
  %161 = load ptr, ptr @PL_inplace, align 8, !tbaa !17
  %162 = load i8, ptr %161, align 1, !tbaa !10
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %203, label %164

164:                                              ; preds = %160
  %165 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %161, ptr noundef nonnull dereferenceable(2) @.str.17) #15
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %203, label %167

167:                                              ; preds = %164
  %168 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %161, i32 noundef 42) #15
  %169 = icmp eq ptr %168, null
  br i1 %169, label %185, label %170

170:                                              ; preds = %167
  call void @Perl_sv_setpvn(ptr noundef %76, ptr noundef nonnull @.str.4, i64 noundef 0) #11
  br label %171

171:                                              ; preds = %171, %170
  %172 = phi ptr [ %168, %170 ], [ %180, %171 ]
  %173 = phi ptr [ %161, %170 ], [ %179, %171 ]
  %174 = ptrtoint ptr %172 to i64
  %175 = ptrtoint ptr %173 to i64
  %176 = sub i64 %174, %175
  call void @Perl_sv_catpvn_flags(ptr noundef %76, ptr noundef nonnull %173, i64 noundef %176, i32 noundef 2) #11
  %177 = load ptr, ptr @PL_oldname, align 8, !tbaa !17
  %178 = load i64, ptr %3, align 8, !tbaa !23
  call void @Perl_sv_catpvn_flags(ptr noundef %76, ptr noundef %177, i64 noundef %178, i32 noundef 2) #11
  %179 = getelementptr inbounds i8, ptr %172, i64 1
  %180 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %179, i32 noundef 42) #15
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %171, !llvm.loop !55

182:                                              ; preds = %171
  %183 = load i8, ptr %179, align 1, !tbaa !10
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %167, %182
  %186 = phi ptr [ %179, %182 ], [ %161, %167 ]
  call void @Perl_sv_catpv(ptr noundef %76, ptr noundef nonnull %186) #11
  br label %187

187:                                              ; preds = %185, %182
  %188 = getelementptr inbounds %struct.sv, ptr %76, i64 0, i32 3
  %189 = load ptr, ptr %188, align 8, !tbaa !10
  %190 = call i32 @unlink(ptr noundef %189) #11
  %191 = load ptr, ptr @PL_oldname, align 8, !tbaa !17
  %192 = load ptr, ptr %188, align 8, !tbaa !10
  %193 = call i32 @link(ptr noundef %191, ptr noundef %192) #11
  %194 = icmp sgt i32 %193, -1
  %195 = load ptr, ptr @PL_oldname, align 8, !tbaa !17
  br i1 %194, label %196, label %198

196:                                              ; preds = %187
  %197 = call i32 @unlink(ptr noundef %195) #11
  br label %213

198:                                              ; preds = %187
  %199 = tail call ptr @__errno_location() #14
  %200 = load i32, ptr %199, align 4, !tbaa !5
  %201 = call ptr @strerror(i32 noundef %200) #11
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 23, ptr noundef nonnull @.str.18, ptr noundef %195, ptr noundef nonnull %76, ptr noundef %201) #11
  %202 = call zeroext i1 @Perl_do_close(ptr noundef %0, i1 noundef zeroext false) #12
  br label %268

203:                                              ; preds = %164, %160
  %204 = load ptr, ptr @PL_oldname, align 8, !tbaa !17
  %205 = call i32 @unlink(ptr noundef %204) #11
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %203
  %208 = load ptr, ptr @PL_oldname, align 8, !tbaa !17
  %209 = tail call ptr @__errno_location() #14
  %210 = load i32, ptr %209, align 4, !tbaa !5
  %211 = call ptr @strerror(i32 noundef %210) #11
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 23, ptr noundef nonnull @.str.19, ptr noundef %208, ptr noundef %211) #11
  %212 = call zeroext i1 @Perl_do_close(ptr noundef nonnull %0, i1 noundef zeroext false) #12
  br label %268, !llvm.loop !54

213:                                              ; preds = %196, %203
  %214 = load ptr, ptr @PL_oldname, align 8, !tbaa !17
  %215 = load i64, ptr %3, align 8, !tbaa !23
  call void @Perl_sv_setpvn(ptr noundef %76, ptr noundef %214, i64 noundef %215) #11
  %216 = tail call ptr @__errno_location() #14
  store i32 0, ptr %216, align 4, !tbaa !5
  %217 = load ptr, ptr @PL_argvoutgv, align 8, !tbaa !17
  %218 = getelementptr inbounds %struct.sv, ptr %76, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !10
  %220 = load ptr, ptr %76, align 8, !tbaa !26
  %221 = getelementptr inbounds %struct.xpv, ptr %220, i64 0, i32 2
  %222 = load i64, ptr %221, align 8, !tbaa !27
  %223 = call zeroext i1 @Perl_do_open_raw(ptr noundef %217, ptr noundef %219, i64 noundef %222, i32 noundef 193, i32 noundef 384) #12
  br i1 %223, label %229, label %224

224:                                              ; preds = %213
  %225 = load ptr, ptr @PL_oldname, align 8, !tbaa !17
  %226 = load i32, ptr %216, align 4, !tbaa !5
  %227 = call ptr @strerror(i32 noundef %226) #11
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 23, ptr noundef nonnull @.str.20, ptr noundef %225, ptr noundef %227) #11
  %228 = call zeroext i1 @Perl_do_close(ptr noundef %0, i1 noundef zeroext false) #12
  br label %268, !llvm.loop !54

229:                                              ; preds = %213
  %230 = load ptr, ptr @PL_argvoutgv, align 8, !tbaa !17
  call void @Perl_setdefout(ptr noundef %230) #11
  %231 = load ptr, ptr @PL_argvoutgv, align 8, !tbaa !17
  %232 = getelementptr inbounds %struct.gv, ptr %231, i64 0, i32 3
  %233 = load ptr, ptr %232, align 8, !tbaa !10
  %234 = getelementptr inbounds %struct.gp, ptr %233, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !34
  %236 = getelementptr inbounds %struct.io, ptr %235, i64 0, i32 3
  %237 = load ptr, ptr %236, align 8, !tbaa !10
  %238 = call i32 @Perl_PerlIO_fileno(ptr noundef %237) #11
  store i32 %238, ptr @PL_lastfd, align 4, !tbaa !5
  %239 = icmp sgt i32 %238, -1
  br i1 %239, label %240, label %262

240:                                              ; preds = %229
  %241 = call i32 @fstat64(i32 noundef %238, ptr noundef nonnull @PL_statbuf) #11
  %242 = load ptr, ptr @PL_oldname, align 8, !tbaa !17
  %243 = load i32, ptr @PL_filemode, align 4, !tbaa !5
  %244 = call i32 @chmod(ptr noundef %242, i32 noundef %243) #11
  br label %262

245:                                              ; preds = %137, %131, %134
  %246 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 23) #11
  br i1 %246, label %247, label %268

247:                                              ; preds = %245
  %248 = tail call ptr @__errno_location() #14
  %249 = load i32, ptr %248, align 4, !tbaa !5
  %250 = load ptr, ptr @PL_oldname, align 8, !tbaa !17
  %251 = call i32 @stat64(ptr noundef %250, ptr noundef nonnull @PL_statbuf) #11
  %252 = icmp sgt i32 %251, -1
  br i1 %252, label %253, label %259

253:                                              ; preds = %247
  %254 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statbuf, i64 0, i32 3), align 8, !tbaa !47
  %255 = and i32 %254, 61440
  %256 = icmp eq i32 %255, 32768
  br i1 %256, label %259, label %257

257:                                              ; preds = %253
  %258 = load ptr, ptr @PL_oldname, align 8, !tbaa !17
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 23, ptr noundef nonnull @.str.16, ptr noundef %258) #11
  br label %268

259:                                              ; preds = %253, %247
  %260 = load ptr, ptr @PL_oldname, align 8, !tbaa !17
  %261 = call ptr @strerror(i32 noundef %249) #11
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 23, ptr noundef nonnull @.str.21, ptr noundef %260, ptr noundef %261) #11
  br label %268

262:                                              ; preds = %131, %134, %229, %240, %151
  %263 = load ptr, ptr %4, align 8, !tbaa !10
  %264 = getelementptr inbounds %struct.gp, ptr %263, i64 0, i32 1
  %265 = load ptr, ptr %264, align 8, !tbaa !34
  %266 = getelementptr inbounds %struct.io, ptr %265, i64 0, i32 3
  %267 = load ptr, ptr %266, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %307

268:                                              ; preds = %198, %245, %259, %257, %157, %207, %224
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  %269 = load ptr, ptr %4, align 8, !tbaa !10
  %270 = getelementptr inbounds %struct.gp, ptr %269, i64 0, i32 6
  %271 = load ptr, ptr %270, align 8, !tbaa !52
  %272 = call fastcc i64 @S_av_top_index(ptr noundef %271) #12
  %273 = icmp sgt i64 %272, -1
  br i1 %273, label %72, label %274

274:                                              ; preds = %268, %69
  br i1 %13, label %283, label %275

275:                                              ; preds = %274
  %276 = load ptr, ptr %7, align 8, !tbaa !11
  %277 = getelementptr inbounds %struct.xpvio, ptr %276, i64 0, i32 17
  %278 = load i8, ptr %277, align 1, !tbaa !50
  %279 = and i8 %278, 1
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %283, label %281

281:                                              ; preds = %275
  %282 = or i8 %278, 2
  store i8 %282, ptr %277, align 1, !tbaa !50
  br label %283

283:                                              ; preds = %281, %275, %274
  %284 = load ptr, ptr @PL_inplace, align 8, !tbaa !17
  %285 = icmp eq ptr %284, null
  br i1 %285, label %307, label %286

286:                                              ; preds = %283
  %287 = load ptr, ptr @PL_argvoutgv, align 8, !tbaa !17
  %288 = call zeroext i1 @Perl_do_close(ptr noundef %287, i1 noundef zeroext false) #12
  br i1 %13, label %305, label %289

289:                                              ; preds = %286
  %290 = load ptr, ptr %7, align 8, !tbaa !11
  %291 = getelementptr inbounds %struct.xpvio, ptr %290, i64 0, i32 17
  %292 = load i8, ptr %291, align 1, !tbaa !50
  %293 = and i8 %292, 1
  %294 = icmp ne i8 %293, 0
  %295 = load ptr, ptr @PL_argvout_stack, align 8
  %296 = icmp ne ptr %295, null
  %297 = select i1 %294, i1 %296, i1 false
  br i1 %297, label %298, label %305

298:                                              ; preds = %289
  %299 = load ptr, ptr %295, align 8, !tbaa !56
  %300 = getelementptr inbounds %struct.xpvav, ptr %299, i64 0, i32 2
  %301 = load i64, ptr %300, align 8, !tbaa !58
  %302 = icmp sgt i64 %301, -1
  br i1 %302, label %303, label %305

303:                                              ; preds = %298
  %304 = call ptr @Perl_av_pop(ptr noundef nonnull %295) #11
  call void @Perl_setdefout(ptr noundef %304) #11
  call fastcc void @S_SvREFCNT_dec_NN(ptr noundef %304) #12
  br label %307

305:                                              ; preds = %298, %289, %286
  %306 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.15, i64 noundef 6, i32 noundef 129, i32 noundef 15) #11
  call void @Perl_setdefout(ptr noundef %306) #11
  br label %307

307:                                              ; preds = %262, %283, %305, %64, %303
  %308 = phi ptr [ null, %303 ], [ null, %64 ], [ null, %305 ], [ null, %283 ], [ %267, %262 ]
  ret ptr %308
}

; Function Attrs: optsize
declare void @Perl_av_create_and_push(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @chmod(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @S_av_top_index(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !24
  %4 = and i32 %3, 8388608
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @Perl_mg_size(ptr noundef nonnull %0) #11
  %8 = sext i32 %7 to i64
  br label %13

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.xpvav, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !58
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i64 [ %8, %6 ], [ %12, %9 ]
  ret i64 %14
}

; Function Attrs: optsize
declare ptr @Perl_av_shift(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_sv_untaint(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_setdefout(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i1 @Perl_do_close(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = load ptr, ptr @PL_argvgv, align 8
  %5 = select i1 %3, ptr %4, ptr %0
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gv, ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !5
  %10 = and i32 %9, 49152
  %11 = icmp eq i32 %10, 32768
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = and i32 %9, 255
  %14 = add nsw i32 %13, -9
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %19, label %16

16:                                               ; preds = %12, %7, %2
  br i1 %1, label %17, label %43

17:                                               ; preds = %16
  %18 = tail call ptr @__errno_location() #14
  store i32 9, ptr %18, align 4, !tbaa !5
  br label %43

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.gv, ptr %5, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gp, ptr %21, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %19, %23
  br i1 %1, label %28, label %43

28:                                               ; preds = %27
  tail call void @Perl_report_evil_fh(ptr noundef nonnull %5) #11
  %29 = tail call ptr @__errno_location() #14
  store i32 9, ptr %29, align 4, !tbaa !5
  br label %43

30:                                               ; preds = %23
  %31 = tail call zeroext i1 @Perl_io_close(ptr noundef nonnull %25, ptr noundef null, i1 noundef zeroext %1, i1 noundef zeroext false) #12
  %32 = load ptr, ptr %25, align 8, !tbaa !11
  br i1 %1, label %33, label %40

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.xpvio, ptr %32, i64 0, i32 4
  store i64 0, ptr %34, align 8, !tbaa !10
  %35 = load ptr, ptr %25, align 8, !tbaa !11
  %36 = getelementptr inbounds %struct.xpvio, ptr %35, i64 0, i32 7
  store i64 0, ptr %36, align 8, !tbaa !60
  %37 = getelementptr inbounds %struct.xpvio, ptr %35, i64 0, i32 8
  %38 = load i64, ptr %37, align 8, !tbaa !61
  %39 = getelementptr inbounds %struct.xpvio, ptr %35, i64 0, i32 9
  store i64 %38, ptr %39, align 8, !tbaa !62
  br label %40

40:                                               ; preds = %33, %30
  %41 = phi ptr [ %35, %33 ], [ %32, %30 ]
  %42 = getelementptr inbounds %struct.xpvio, ptr %41, i64 0, i32 16
  store i8 32, ptr %42, align 8, !tbaa !14
  br label %43

43:                                               ; preds = %27, %28, %16, %17, %40
  %44 = phi i1 [ %31, %40 ], [ false, %17 ], [ false, %16 ], [ false, %28 ], [ false, %27 ]
  ret i1 %44
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_sv_catpv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind optsize
declare i32 @link(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fstat64(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i1 @Perl_ckwarn_d(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @stat64(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @Perl_av_pop(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec_NN(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !63
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 8, !tbaa !63
  br label %8

7:                                                ; preds = %1
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %3) #11
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: optsize
declare void @Perl_report_evil_fh(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i1 @Perl_io_close(ptr nocapture noundef %0, ptr noundef readonly %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.io, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %80, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.xpvio, ptr %9, i64 0, i32 16
  %11 = load i8, ptr %10, align 8, !tbaa !14
  switch i8 %11, label %33 [
    i8 124, label %14
    i8 45, label %12
  ]

12:                                               ; preds = %8
  store ptr null, ptr %5, align 8, !tbaa !10
  %13 = getelementptr inbounds %struct.xpvio, ptr %9, i64 0, i32 5
  store ptr null, ptr %13, align 8, !tbaa !42
  br label %83

14:                                               ; preds = %8
  %15 = tail call i32 @Perl_my_pclose(ptr noundef nonnull %6) #11
  br i1 %2, label %16, label %31

16:                                               ; preds = %14
  store i32 %15, ptr @PL_statusvalue_posix, align 4, !tbaa !5
  %17 = icmp eq i32 %15, -1
  br i1 %17, label %28, label %18

18:                                               ; preds = %16
  %19 = and i32 %15, 127
  %20 = icmp eq i32 %19, 0
  %21 = and i32 %15, 65280
  %22 = select i1 %20, i32 %21, i32 0
  %23 = shl nuw nsw i32 %19, 24
  %24 = add nuw i32 %23, 16777216
  %25 = icmp sgt i32 %24, 33554431
  %26 = select i1 %25, i32 %19, i32 0
  %27 = or disjoint i32 %26, %22
  br label %28

28:                                               ; preds = %16, %18
  %29 = phi i32 [ %27, %18 ], [ -1, %16 ]
  store i32 %29, ptr @PL_statusvalue, align 4, !tbaa !5
  %30 = icmp eq i32 %29, 0
  br label %65

31:                                               ; preds = %14
  %32 = icmp ne i32 %15, -1
  br label %65

33:                                               ; preds = %8
  %34 = getelementptr inbounds %struct.xpvio, ptr %9, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !42
  %36 = icmp eq ptr %35, null
  %37 = icmp eq ptr %35, %6
  %38 = or i1 %36, %37
  br i1 %38, label %55, label %39

39:                                               ; preds = %33
  %40 = tail call i32 @Perl_PerlIO_error(ptr noundef nonnull %35) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %0, align 8, !tbaa !11
  %44 = getelementptr inbounds %struct.xpvio, ptr %43, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !42
  tail call void @Perl_PerlIO_restore_errno(ptr noundef %45) #11
  br label %46

46:                                               ; preds = %42, %39
  %47 = load ptr, ptr %0, align 8, !tbaa !11
  %48 = getelementptr inbounds %struct.xpvio, ptr %47, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !42
  %50 = tail call i32 @Perl_PerlIO_close(ptr noundef %49) #11
  %51 = icmp ne i32 %50, -1
  %52 = and i1 %41, %51
  %53 = load ptr, ptr %5, align 8, !tbaa !10
  %54 = tail call i32 @Perl_PerlIO_close(ptr noundef %53) #11
  br label %65

55:                                               ; preds = %33
  %56 = tail call i32 @Perl_PerlIO_error(ptr noundef nonnull %6) #11
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %5, align 8, !tbaa !10
  tail call void @Perl_PerlIO_restore_errno(ptr noundef %59) #11
  br label %60

60:                                               ; preds = %58, %55
  %61 = load ptr, ptr %5, align 8, !tbaa !10
  %62 = tail call i32 @Perl_PerlIO_close(ptr noundef %61) #11
  %63 = icmp ne i32 %62, -1
  %64 = and i1 %57, %63
  br label %65

65:                                               ; preds = %28, %31, %60, %46
  %66 = phi i1 [ %52, %46 ], [ %64, %60 ], [ %30, %28 ], [ %32, %31 ]
  store ptr null, ptr %5, align 8, !tbaa !10
  %67 = load ptr, ptr %0, align 8, !tbaa !11
  %68 = getelementptr inbounds %struct.xpvio, ptr %67, i64 0, i32 5
  store ptr null, ptr %68, align 8, !tbaa !42
  %69 = xor i1 %3, true
  %70 = select i1 %69, i1 true, i1 %66
  br i1 %70, label %83, label %71

71:                                               ; preds = %65
  %72 = icmp eq ptr %1, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %71
  %74 = load ptr, ptr %1, align 8, !tbaa !46
  %75 = getelementptr inbounds %struct.xpvgv, ptr %74, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !10
  %77 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.23, i32 noundef 1) #11
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 5, ptr noundef nonnull @.str.22, ptr noundef %76, ptr noundef %77) #11
  br label %83

78:                                               ; preds = %71
  %79 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.23, i32 noundef 1) #11
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 5, ptr noundef nonnull @.str.24, ptr noundef %79) #11
  br label %83

80:                                               ; preds = %4
  br i1 %2, label %81, label %83

81:                                               ; preds = %80
  %82 = tail call ptr @__errno_location() #14
  store i32 9, ptr %82, align 4, !tbaa !5
  br label %83

83:                                               ; preds = %12, %65, %80, %81, %78, %73
  %84 = phi i1 [ false, %73 ], [ false, %78 ], [ %66, %65 ], [ false, %81 ], [ false, %80 ], [ true, %12 ]
  ret i1 %84
}

; Function Attrs: optsize
declare i32 @Perl_my_pclose(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @Perl_PerlIO_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_PerlIO_restore_errno(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @Perl_PerlIO_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_get_sv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @Perl_do_eof(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %69, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !24
  %6 = and i32 %5, 255
  %7 = add nsw i32 %6, -9
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %69

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %69, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gp, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %69, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !11
  %19 = getelementptr inbounds %struct.xpvio, ptr %18, i64 0, i32 16
  %20 = load i8, ptr %19, align 8, !tbaa !14
  %21 = icmp eq i8 %20, 62
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  tail call void @Perl_report_wrongway_fh(ptr noundef nonnull %0, i8 noundef signext 62) #11
  br label %23

23:                                               ; preds = %17, %22
  %24 = getelementptr inbounds %struct.io, ptr %15, i64 0, i32 3
  br label %25

25:                                               ; preds = %66, %23
  %26 = load ptr, ptr %24, align 8, !tbaa !10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %69, label %28

28:                                               ; preds = %25
  %29 = tail call i32 @PerlIO_has_cntptr(ptr noundef nonnull %26) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %24, align 8, !tbaa !10
  %33 = tail call i64 @Perl_PerlIO_get_cnt(ptr noundef %32) #11
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %69, label %35

35:                                               ; preds = %31, %28
  %36 = tail call ptr @__errno_location() #14
  %37 = load i32, ptr %36, align 4, !tbaa !5
  %38 = load ptr, ptr %24, align 8, !tbaa !10
  %39 = tail call i32 @PerlIO_getc(ptr noundef %38) #11
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load ptr, ptr %24, align 8, !tbaa !10
  %43 = tail call i32 @PerlIO_ungetc(ptr noundef %42, i32 noundef %39) #11
  store i32 %37, ptr %36, align 4, !tbaa !5
  br label %69

44:                                               ; preds = %35
  store i32 %37, ptr %36, align 4, !tbaa !5
  %45 = load ptr, ptr %24, align 8, !tbaa !10
  %46 = tail call i32 @PerlIO_has_cntptr(ptr noundef %45) #11
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %24, align 8, !tbaa !10
  %50 = tail call i32 @PerlIO_canset_cnt(ptr noundef %49) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %24, align 8, !tbaa !10
  %54 = tail call i64 @Perl_PerlIO_get_cnt(ptr noundef %53) #11
  %55 = icmp slt i64 %54, -1
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load ptr, ptr %24, align 8, !tbaa !10
  tail call void @Perl_PerlIO_set_cnt(ptr noundef %57, i64 noundef -1) #11
  br label %58

58:                                               ; preds = %52, %56, %48, %44
  %59 = load ptr, ptr @PL_op, align 8, !tbaa !17
  %60 = getelementptr inbounds %struct.op, ptr %59, i64 0, i32 5
  %61 = load i8, ptr %60, align 2, !tbaa !64
  %62 = icmp slt i8 %61, 0
  %63 = load ptr, ptr @PL_argvgv, align 8
  %64 = icmp eq ptr %63, %0
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = tail call ptr @Perl_nextargv(ptr noundef nonnull %0, i1 noundef zeroext false) #12
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %25, !llvm.loop !65

69:                                               ; preds = %25, %58, %66, %31, %3, %1, %9, %41, %13
  %70 = phi i1 [ false, %41 ], [ true, %13 ], [ true, %9 ], [ true, %1 ], [ true, %3 ], [ true, %25 ], [ true, %58 ], [ true, %66 ], [ false, %31 ]
  ret i1 %70
}

; Function Attrs: optsize
declare void @Perl_report_wrongway_fh(ptr noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @PerlIO_has_cntptr(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @Perl_PerlIO_get_cnt(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @PerlIO_getc(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @PerlIO_ungetc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @PerlIO_canset_cnt(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_PerlIO_set_cnt(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_do_tell(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !24
  %6 = and i32 %5, 255
  %7 = add nsw i32 %6, -9
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %23

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gp, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.io, ptr %15, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = tail call i64 @Perl_PerlIO_tell(ptr noundef nonnull %19) #11
  br label %25

23:                                               ; preds = %3, %1, %9, %17, %13
  tail call void @Perl_report_evil_fh(ptr noundef %0) #11
  %24 = tail call ptr @__errno_location() #14
  store i32 9, ptr %24, align 4, !tbaa !5
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i64 [ %22, %21 ], [ -1, %23 ]
  ret i64 %26
}

; Function Attrs: optsize
declare i64 @Perl_PerlIO_tell(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i1 @Perl_do_seek(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !24
  %8 = and i32 %7, 255
  %9 = add nsw i32 %8, -9
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %26

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gp, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.io, ptr %17, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @Perl_PerlIO_seek(ptr noundef nonnull %21, i64 noundef %1, i32 noundef %2) #11
  %25 = icmp sgt i32 %24, -1
  br label %28

26:                                               ; preds = %5, %3, %11, %19, %15
  tail call void @Perl_report_evil_fh(ptr noundef %0) #11
  %27 = tail call ptr @__errno_location() #14
  store i32 9, ptr %27, align 4, !tbaa !5
  br label %28

28:                                               ; preds = %26, %23
  %29 = phi i1 [ %25, %23 ], [ false, %26 ]
  ret i1 %29
}

; Function Attrs: optsize
declare i32 @Perl_PerlIO_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @Perl_do_sysseek(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %28, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !24
  %8 = and i32 %7, 255
  %9 = add nsw i32 %8, -9
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %28

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.gv, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gp, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.io, ptr %17, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %21) #11
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call i64 @lseek64(i32 noundef %24, i64 noundef %1, i32 noundef %2) #11
  br label %30

28:                                               ; preds = %23, %5, %3, %11, %19, %15
  tail call void @Perl_report_evil_fh(ptr noundef %0) #11
  %29 = tail call ptr @__errno_location() #14
  store i32 9, ptr %29, align 4, !tbaa !5
  br label %30

30:                                               ; preds = %26, %28
  %31 = phi i64 [ -1, %28 ], [ %27, %26 ]
  ret i64 %31
}

; Function Attrs: nounwind optsize
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @Perl_mode_from_discipline(ptr nocapture noundef readnone %0, i64 noundef %1) local_unnamed_addr #7 {
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i1 @Perl_do_print(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = icmp eq ptr %0, null
  br i1 %6, label %96, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !24
  %10 = and i32 %9, 511
  %11 = icmp eq i32 %10, 257
  br i1 %11, label %12, label %23

12:                                               ; preds = %7
  %13 = icmp sgt i32 %9, -1
  %14 = load ptr, ptr %0, align 8, !tbaa !26
  %15 = getelementptr inbounds %struct.xpviv, ptr %14, i64 0, i32 4
  %16 = getelementptr inbounds %struct.xpvuv, ptr %14, i64 0, i32 4
  %17 = select i1 %13, ptr %15, ptr %16
  %18 = select i1 %13, ptr @.str.26, ptr @.str.25
  %19 = load i64, ptr %17, align 8, !tbaa !10
  %20 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %1, ptr noundef nonnull %18, i64 noundef %19) #11
  %21 = tail call i32 @Perl_PerlIO_error(ptr noundef %1) #11
  %22 = icmp eq i32 %21, 0
  br label %96

23:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %24 = and i32 %9, 2098176
  %25 = icmp eq i32 %24, 1024
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load ptr, ptr %0, align 8, !tbaa !26
  %28 = getelementptr inbounds %struct.xpv, ptr %27, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !27
  store i64 %29, ptr %3, align 8, !tbaa !23
  %30 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !10
  br label %34

32:                                               ; preds = %23
  %33 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 34) #11
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi ptr [ %31, %26 ], [ %33, %32 ]
  %36 = call i32 @PerlIO_isutf8(ptr noundef %1) #11
  %37 = icmp eq i32 %36, 0
  %38 = load i32, ptr %8, align 4, !tbaa !24
  %39 = and i32 %38, 536870912
  %40 = icmp eq i32 %39, 0
  br i1 %37, label %49, label %41

41:                                               ; preds = %34
  br i1 %40, label %42, label %44

42:                                               ; preds = %41
  %43 = call ptr @Perl_bytes_to_utf8(ptr noundef %35, ptr noundef nonnull %3) #11
  br label %82

44:                                               ; preds = %41
  %45 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 825242156) #11
  br i1 %45, label %46, label %82

46:                                               ; preds = %44
  %47 = load i64, ptr %3, align 8, !tbaa !23
  %48 = call zeroext i1 @Perl_check_utf8_print(ptr noundef %35, i64 noundef %47) #11
  br label %82

49:                                               ; preds = %34
  br i1 %40, label %82, label %50

50:                                               ; preds = %49
  %51 = load ptr, ptr @PL_curcop, align 8, !tbaa !17
  %52 = getelementptr inbounds %struct.cop, ptr %51, i64 0, i32 10
  %53 = load i32, ptr %52, align 8, !tbaa !66
  %54 = and i32 %53, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %57 = load i64, ptr %3, align 8, !tbaa !23
  store i64 %57, ptr %4, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  store i8 1, ptr %5, align 1, !tbaa !29
  %58 = call ptr @Perl_bytes_from_utf8(ptr noundef %35, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %59 = load i8, ptr %5, align 1, !tbaa !29, !range !9, !noundef !31
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i64, ptr %4, align 8, !tbaa !23
  store i64 %62, ptr %3, align 8, !tbaa !23
  br label %79

63:                                               ; preds = %56
  %64 = load ptr, ptr @PL_op, align 8, !tbaa !17
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
  %76 = load ptr, ptr %75, align 8, !tbaa !17
  br label %77

77:                                               ; preds = %63, %71, %73
  %78 = phi ptr [ %72, %71 ], [ %76, %73 ], [ @.str.28, %63 ]
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 44, ptr noundef nonnull @.str.27, ptr noundef %78) #11
  br label %79

79:                                               ; preds = %77, %61
  %80 = phi ptr [ null, %77 ], [ %58, %61 ]
  %81 = phi ptr [ %35, %77 ], [ %58, %61 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %82

82:                                               ; preds = %49, %50, %79, %42, %46, %44
  %83 = phi ptr [ null, %46 ], [ null, %44 ], [ %43, %42 ], [ null, %50 ], [ %80, %79 ], [ null, %49 ]
  %84 = phi ptr [ %35, %46 ], [ %35, %44 ], [ %43, %42 ], [ %35, %50 ], [ %81, %79 ], [ %35, %49 ]
  %85 = load i64, ptr %3, align 8, !tbaa !23
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = call i64 @Perl_PerlIO_write(ptr noundef %1, ptr noundef %84, i64 noundef %85) #11
  %89 = icmp eq i64 %88, 0
  call void @Perl_safesysfree(ptr noundef %83) #11
  br i1 %89, label %94, label %91

90:                                               ; preds = %82
  call void @Perl_safesysfree(ptr noundef %83) #11
  br label %91

91:                                               ; preds = %90, %87
  %92 = call i32 @Perl_PerlIO_error(ptr noundef %1) #11
  %93 = icmp eq i32 %92, 0
  br label %94

94:                                               ; preds = %87, %91
  %95 = phi i1 [ %93, %91 ], [ false, %87 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %96

96:                                               ; preds = %2, %94, %12
  %97 = phi i1 [ %22, %12 ], [ %95, %94 ], [ true, %2 ]
  ret i1 %97
}

; Function Attrs: optsize
declare i32 @PerlIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @PerlIO_isutf8(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_bytes_to_utf8(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i1 @Perl_check_utf8_print(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_bytes_from_utf8(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_custom_op_get_field(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @Perl_PerlIO_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_my_stat_flags(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !17
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 5
  %6 = load i8, ptr %5, align 2, !tbaa !64
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %60, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.svop, ptr %4, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  br label %12

12:                                               ; preds = %154, %9
  %13 = phi ptr [ %11, %9 ], [ %155, %154 ]
  %14 = load ptr, ptr @PL_defgv, align 8, !tbaa !17
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, ptr @PL_laststatval, align 4, !tbaa !5
  br label %157

18:                                               ; preds = %12
  %19 = icmp eq ptr %13, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !24
  %23 = and i32 %22, 255
  %24 = add nsw i32 %23, -9
  %25 = icmp ult i32 %24, 2
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.gv, ptr %13, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.gp, ptr %28, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  br label %33

33:                                               ; preds = %156, %20, %30, %26, %18
  %34 = phi ptr [ null, %156 ], [ %13, %20 ], [ null, %18 ], [ %13, %26 ], [ %13, %30 ]
  %35 = phi ptr [ %120, %156 ], [ null, %20 ], [ null, %18 ], [ null, %26 ], [ %32, %30 ]
  store i16 265, ptr @PL_laststype, align 2, !tbaa !70
  %36 = icmp eq ptr %34, null
  %37 = select i1 %36, ptr %35, ptr %34
  store ptr %37, ptr @PL_statgv, align 8, !tbaa !17
  %38 = load ptr, ptr @PL_statname, align 8, !tbaa !17
  tail call void @Perl_sv_setpvn(ptr noundef %38, ptr noundef nonnull @.str.4, i64 noundef 0) #11
  %39 = icmp eq ptr %35, null
  br i1 %39, label %59, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.io, ptr %35, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !10
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %42) #11
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = tail call i32 @fstat64(i32 noundef %45, ptr noundef nonnull @PL_statcache) #11
  br label %49

49:                                               ; preds = %44, %47
  %50 = phi i32 [ %48, %47 ], [ -1, %44 ]
  store i32 %50, ptr @PL_laststatval, align 4, !tbaa !5
  br label %157

51:                                               ; preds = %40
  %52 = load ptr, ptr %35, align 8, !tbaa !11
  %53 = getelementptr inbounds %struct.xpvio, ptr %52, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !10
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = tail call i32 @Perl_my_dirfd(ptr noundef nonnull %54) #11
  %58 = tail call i32 @fstat64(i32 noundef %57, ptr noundef nonnull @PL_statcache) #11
  store i32 %58, ptr @PL_laststatval, align 4, !tbaa !5
  br label %157

59:                                               ; preds = %51, %33
  store i32 -1, ptr @PL_laststatval, align 4, !tbaa !5
  tail call void @Perl_report_evil_fh(ptr noundef %34) #11
  br label %157

60:                                               ; preds = %1
  %61 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 6
  %62 = load i8, ptr %61, align 1, !tbaa !18
  %63 = and i8 %62, 20
  %64 = icmp eq i8 %63, 4
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, ptr @PL_laststatval, align 4, !tbaa !5
  br label %157

67:                                               ; preds = %60
  %68 = load ptr, ptr %3, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  %69 = and i32 %0, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.sv, ptr %68, i64 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !24
  %74 = and i32 %73, 2097152
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = tail call i32 @Perl_mg_get(ptr noundef nonnull %68) #11
  br label %78

78:                                               ; preds = %76, %71, %67
  %79 = getelementptr inbounds %struct.sv, ptr %68, i64 0, i32 2
  %80 = load i32, ptr %79, align 4, !tbaa !24
  %81 = and i32 %80, 49152
  %82 = icmp eq i32 %81, 32768
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = and i32 %80, 255
  %85 = add nsw i32 %84, -9
  %86 = icmp ult i32 %85, 2
  br i1 %86, label %154, label %87

87:                                               ; preds = %83, %78
  %88 = and i32 %80, 2048
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %114, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.sv, ptr %68, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !10
  %93 = getelementptr inbounds %struct.sv, ptr %92, i64 0, i32 2
  %94 = load i32, ptr %93, align 4, !tbaa !24
  %95 = and i32 %94, 255
  %96 = icmp ult i32 %95, 11
  br i1 %96, label %97, label %114

97:                                               ; preds = %90
  %98 = and i32 %94, 2097152
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  %101 = tail call i32 @Perl_mg_get(ptr noundef nonnull %92) #11
  %102 = load ptr, ptr %91, align 8, !tbaa !10
  %103 = getelementptr inbounds %struct.sv, ptr %102, i64 0, i32 2
  %104 = load i32, ptr %103, align 4, !tbaa !24
  br label %105

105:                                              ; preds = %97, %100
  %106 = phi i32 [ %94, %97 ], [ %104, %100 ]
  %107 = phi ptr [ %92, %97 ], [ %102, %100 ]
  %108 = and i32 %106, 49152
  %109 = icmp eq i32 %108, 32768
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = and i32 %106, 255
  %112 = add nsw i32 %111, -9
  %113 = icmp ult i32 %112, 2
  br i1 %113, label %154, label %114

114:                                              ; preds = %105, %90, %87, %110
  %115 = load i32, ptr %79, align 4, !tbaa !24
  %116 = and i32 %115, 2048
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.sv, ptr %68, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !10
  %121 = getelementptr inbounds %struct.sv, ptr %120, i64 0, i32 2
  %122 = load i32, ptr %121, align 4, !tbaa !24
  %123 = and i32 %122, 255
  %124 = icmp eq i32 %123, 15
  br i1 %124, label %156, label %125

125:                                              ; preds = %114, %118
  %126 = and i32 %115, 2098176
  %127 = icmp eq i32 %126, 1024
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load ptr, ptr %68, align 8, !tbaa !26
  %130 = getelementptr inbounds %struct.xpv, ptr %129, i64 0, i32 2
  %131 = load i64, ptr %130, align 8, !tbaa !27
  store i64 %131, ptr %2, align 8, !tbaa !23
  %132 = getelementptr inbounds %struct.sv, ptr %68, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !10
  br label %138

134:                                              ; preds = %125
  %135 = or i32 %0, 32
  %136 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %68, ptr noundef nonnull %2, i32 noundef %135) #11
  %137 = load i64, ptr %2, align 8, !tbaa !23
  br label %138

138:                                              ; preds = %134, %128
  %139 = phi i64 [ %131, %128 ], [ %137, %134 ]
  %140 = phi ptr [ %133, %128 ], [ %136, %134 ]
  store ptr null, ptr @PL_statgv, align 8, !tbaa !17
  %141 = load ptr, ptr @PL_statname, align 8, !tbaa !17
  call void @Perl_sv_setpvn(ptr noundef %141, ptr noundef %140, i64 noundef %139) #11
  %142 = load ptr, ptr @PL_statname, align 8, !tbaa !17
  %143 = getelementptr inbounds %struct.sv, ptr %142, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !10
  store i16 265, ptr @PL_laststype, align 2, !tbaa !70
  %145 = call i32 @stat64(ptr noundef %144, ptr noundef nonnull @PL_statcache) #11
  store i32 %145, ptr @PL_laststatval, align 4, !tbaa !5
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %138
  %148 = call zeroext i1 @Perl_ckwarn(i32 noundef 9) #11
  br i1 %148, label %149, label %152

149:                                              ; preds = %147
  %150 = call fastcc zeroext i1 @S_should_warn_nl(ptr noundef %144) #12
  br i1 %150, label %151, label %152

151:                                              ; preds = %149
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 9, ptr noundef nonnull @PL_warn_nl, ptr noundef nonnull @.str.29) #11
  br label %152

152:                                              ; preds = %138, %147, %149, %151
  %153 = load i32, ptr @PL_laststatval, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  br label %157

154:                                              ; preds = %83, %110
  %155 = phi ptr [ %68, %83 ], [ %107, %110 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  br label %12

156:                                              ; preds = %118
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  br label %33

157:                                              ; preds = %152, %65, %59, %56, %49, %16
  %158 = phi i32 [ %17, %16 ], [ %50, %49 ], [ %58, %56 ], [ -1, %59 ], [ %66, %65 ], [ %153, %152 ]
  ret i32 %158
}

; Function Attrs: optsize
declare i32 @Perl_my_dirfd(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i1 @S_should_warn_nl(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i64 %2
  %6 = getelementptr i8, ptr %5, i64 -1
  %7 = load i8, ptr %6, align 1, !tbaa !10
  %8 = icmp eq i8 %7, 10
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i1 [ false, %1 ], [ %8, %4 ]
  ret i1 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_my_lstat_flags(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !17
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 5
  %6 = load i8, ptr %5, align 2, !tbaa !64
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %35, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.svop, ptr %4, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = load ptr, ptr @PL_defgv, align 8, !tbaa !17
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load i16, ptr @PL_laststype, align 2, !tbaa !70
  %16 = icmp eq i16 %15, 264
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30) #11
  br label %18

18:                                               ; preds = %17, %14
  %19 = load i32, ptr @PL_laststatval, align 4, !tbaa !5
  br label %123

20:                                               ; preds = %9
  store i32 -1, ptr @PL_laststatval, align 4, !tbaa !5
  %21 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 5) #11
  br i1 %21, label %22, label %123

22:                                               ; preds = %20
  %23 = load ptr, ptr @PL_op, align 8, !tbaa !17
  %24 = getelementptr inbounds %struct.svop, ptr %23, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !68
  %26 = getelementptr inbounds %struct.gv, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !10
  %28 = getelementptr inbounds %struct.gp, ptr %27, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !45
  %30 = icmp eq ptr %29, null
  %31 = select i1 %30, ptr %25, ptr %29
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = getelementptr inbounds %struct.xpvgv, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !10
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 5, ptr noundef nonnull @.str.32, ptr noundef %34) #11
  br label %123

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 6
  %37 = load i8, ptr %36, align 1, !tbaa !18
  %38 = and i8 %37, 20
  %39 = icmp eq i8 %38, 4
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i16, ptr @PL_laststype, align 2, !tbaa !70
  %42 = icmp eq i16 %41, 264
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30) #11
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i32, ptr @PL_laststatval, align 4, !tbaa !5
  br label %123

46:                                               ; preds = %35
  store i16 264, ptr @PL_laststype, align 2, !tbaa !70
  store ptr null, ptr @PL_statgv, align 8, !tbaa !17
  %47 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !24
  %49 = and i32 %48, 2048
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !10
  %54 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !24
  %56 = and i32 %55, 49152
  %57 = icmp eq i32 %56, 32768
  %58 = and i32 %55, 255
  %59 = add nsw i32 %58, -9
  %60 = icmp ult i32 %59, 2
  %61 = select i1 %57, i1 %60, i1 false
  br i1 %61, label %71, label %62

62:                                               ; preds = %51
  %63 = icmp eq i32 %58, 15
  br i1 %63, label %73, label %64

64:                                               ; preds = %62, %46
  %65 = and i32 %48, 49152
  %66 = icmp eq i32 %65, 32768
  br i1 %66, label %67, label %101

67:                                               ; preds = %64
  %68 = and i32 %48, 255
  %69 = add nsw i32 %68, -9
  %70 = icmp ult i32 %69, 2
  br i1 %70, label %71, label %101

71:                                               ; preds = %51, %67
  %72 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 5) #11
  br i1 %72, label %76, label %101

73:                                               ; preds = %62
  %74 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 5) #11
  br i1 %74, label %75, label %101

75:                                               ; preds = %73
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 5, ptr noundef nonnull @.str.33) #11
  br label %101

76:                                               ; preds = %71
  %77 = load i32, ptr %47, align 4, !tbaa !24
  %78 = and i32 %77, 2048
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.gv, ptr %3, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !10
  %83 = getelementptr inbounds %struct.gp, ptr %82, i64 0, i32 8
  %84 = load ptr, ptr %83, align 8, !tbaa !45
  %85 = icmp eq ptr %84, null
  %86 = select i1 %85, ptr %3, ptr %84
  br label %96

87:                                               ; preds = %76
  %88 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !10
  %90 = getelementptr inbounds %struct.gv, ptr %89, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !10
  %92 = getelementptr inbounds %struct.gp, ptr %91, i64 0, i32 8
  %93 = load ptr, ptr %92, align 8, !tbaa !45
  %94 = icmp eq ptr %93, null
  %95 = select i1 %94, ptr %89, ptr %93
  br label %96

96:                                               ; preds = %87, %80
  %97 = phi ptr [ %86, %80 ], [ %95, %87 ]
  %98 = load ptr, ptr %97, align 8, !tbaa !46
  %99 = getelementptr inbounds %struct.xpvgv, ptr %98, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !10
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 5, ptr noundef nonnull @.str.32, ptr noundef %100) #11
  br label %101

101:                                              ; preds = %73, %67, %75, %96, %71, %64
  %102 = load i32, ptr %47, align 4, !tbaa !24
  %103 = and i32 %102, 2098176
  %104 = icmp eq i32 %103, 1024
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !10
  br label %111

108:                                              ; preds = %101
  %109 = or i32 %0, 32
  %110 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %3, ptr noundef null, i32 noundef %109) #11
  br label %111

111:                                              ; preds = %108, %105
  %112 = phi ptr [ %107, %105 ], [ %110, %108 ]
  %113 = load ptr, ptr @PL_statname, align 8, !tbaa !17
  tail call void @Perl_sv_setpv(ptr noundef %113, ptr noundef %112) #11
  %114 = tail call i32 @stat64(ptr noundef %112, ptr noundef nonnull @PL_statcache) #11
  store i32 %114, ptr @PL_laststatval, align 4, !tbaa !5
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 9) #11
  br i1 %117, label %118, label %121

118:                                              ; preds = %116
  %119 = tail call fastcc zeroext i1 @S_should_warn_nl(ptr noundef %112) #12
  br i1 %119, label %120, label %121

120:                                              ; preds = %118
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 9, ptr noundef nonnull @PL_warn_nl, ptr noundef nonnull @.str.34) #11
  br label %121

121:                                              ; preds = %120, %118, %116, %111
  %122 = load i32, ptr @PL_laststatval, align 4, !tbaa !5
  br label %123

123:                                              ; preds = %20, %22, %121, %44, %18
  %124 = phi i32 [ %19, %18 ], [ %45, %44 ], [ %122, %121 ], [ -1, %22 ], [ -1, %20 ]
  ret i32 %124
}

; Function Attrs: optsize
declare void @Perl_sv_setpv(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @Perl_do_aexec5(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = icmp ugt ptr %2, %1
  br i1 %7, label %8, label %95

8:                                                ; preds = %5
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %1 to i64
  %11 = sub i64 %9, %10
  %12 = add i64 %11, 8
  %13 = tail call ptr @Perl_safesysmalloc(i64 noundef %12) #11
  store ptr %13, ptr @PL_Argv, align 8, !tbaa !17
  %14 = getelementptr inbounds ptr, ptr %1, i64 1
  %15 = icmp ugt ptr %14, %2
  br i1 %15, label %36, label %16

16:                                               ; preds = %8, %31
  %17 = phi ptr [ %34, %31 ], [ %14, %8 ]
  %18 = phi ptr [ %33, %31 ], [ %13, %8 ]
  %19 = load ptr, ptr %17, align 8, !tbaa !17
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !24
  %24 = and i32 %23, 2098176
  %25 = icmp eq i32 %24, 1024
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !10
  br label %31

29:                                               ; preds = %21
  %30 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %19, ptr noundef null, i32 noundef 34) #11
  br label %31

31:                                               ; preds = %16, %26, %29
  %32 = phi ptr [ %28, %26 ], [ %30, %29 ], [ @.str.4, %16 ]
  %33 = getelementptr inbounds ptr, ptr %18, i64 1
  store ptr %32, ptr %18, align 8, !tbaa !17
  %34 = getelementptr inbounds ptr, ptr %17, i64 1
  %35 = icmp ugt ptr %34, %2
  br i1 %35, label %36, label %16, !llvm.loop !72

36:                                               ; preds = %31, %8
  %37 = phi ptr [ %13, %8 ], [ %33, %31 ]
  store ptr null, ptr %37, align 8, !tbaa !17
  %38 = icmp eq ptr %0, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !24
  %42 = and i32 %41, 2098176
  %43 = icmp eq i32 %42, 1024
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !10
  br label %54

47:                                               ; preds = %39
  %48 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef null, i32 noundef 34) #11
  br label %54

49:                                               ; preds = %36
  %50 = load ptr, ptr @PL_Argv, align 8, !tbaa !17
  %51 = load ptr, ptr %50, align 8, !tbaa !17
  %52 = load i8, ptr %51, align 1, !tbaa !10
  %53 = icmp eq i8 %52, 47
  br i1 %53, label %80, label %64

54:                                               ; preds = %44, %47
  %55 = phi ptr [ %48, %47 ], [ %46, %44 ]
  %56 = load i8, ptr %55, align 1, !tbaa !10
  %57 = icmp eq i8 %56, 47
  %58 = load i8, ptr @PL_tainting, align 1, !range !9
  %59 = icmp eq i8 %58, 0
  %60 = select i1 %57, i1 true, i1 %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %62 = load ptr, ptr @PL_sigfpe_saved, align 8, !tbaa !17
  %63 = call i32 @Perl_rsignal_save(i32 noundef 8, ptr noundef %62, ptr noundef nonnull %6) #11
  br label %72

64:                                               ; preds = %49
  %65 = load i8, ptr @PL_tainting, align 1, !tbaa !29, !range !9, !noundef !31
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  br label %81

68:                                               ; preds = %64, %54
  %69 = phi ptr [ %55, %54 ], [ null, %64 ]
  tail call void @Perl_taint_env() #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %70 = load ptr, ptr @PL_sigfpe_saved, align 8, !tbaa !17
  %71 = call i32 @Perl_rsignal_save(i32 noundef 8, ptr noundef %70, ptr noundef nonnull %6) #11
  br i1 %38, label %84, label %72

72:                                               ; preds = %61, %68
  %73 = phi ptr [ %55, %61 ], [ %69, %68 ]
  %74 = load i8, ptr %73, align 1, !tbaa !10
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr @PL_Argv, align 8, !tbaa !17
  %78 = call i32 @execvp(ptr noundef nonnull %73, ptr noundef %77) #11
  %79 = call i32 @Perl_rsignal_restore(i32 noundef 8, ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  br label %93

80:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  br label %81

81:                                               ; preds = %67, %80
  %82 = load ptr, ptr @PL_sigfpe_saved, align 8, !tbaa !17
  %83 = call i32 @Perl_rsignal_save(i32 noundef 8, ptr noundef %82, ptr noundef nonnull %6) #11
  br label %84

84:                                               ; preds = %81, %68, %72
  %85 = phi ptr [ %73, %72 ], [ %69, %68 ], [ null, %81 ]
  %86 = load ptr, ptr @PL_Argv, align 8, !tbaa !17
  %87 = load ptr, ptr %86, align 8, !tbaa !17
  %88 = call i32 @execvp(ptr noundef %87, ptr noundef nonnull %86) #11
  %89 = call i32 @Perl_rsignal_restore(i32 noundef 8, ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  br i1 %38, label %90, label %93

90:                                               ; preds = %84
  %91 = load ptr, ptr @PL_Argv, align 8, !tbaa !17
  %92 = load ptr, ptr %91, align 8, !tbaa !17
  br label %93

93:                                               ; preds = %76, %84, %90
  %94 = phi ptr [ %92, %90 ], [ %85, %84 ], [ %73, %76 ]
  call fastcc void @S_exec_failed(ptr noundef %94, i32 noundef %3, i32 noundef %4) #12
  br label %95

95:                                               ; preds = %93, %5
  call void @Perl_do_execfree() #12
  ret i1 false
}

; Function Attrs: optsize
declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @Perl_rsignal_save(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @Perl_rsignal_restore(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_exec_failed(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %5 = tail call ptr @__errno_location() #14
  %6 = load i32, ptr %5, align 4, !tbaa !5
  store i32 %6, ptr %4, align 4, !tbaa !5
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
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_do_execfree() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_Argv, align 8, !tbaa !17
  tail call void @Perl_safesysfree(ptr noundef %1) #11
  store ptr null, ptr @PL_Argv, align 8, !tbaa !17
  %2 = load ptr, ptr @PL_Cmd, align 8, !tbaa !17
  tail call void @Perl_safesysfree(ptr noundef %2) #11
  store ptr null, ptr @PL_Cmd, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @Perl_do_exec3(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [10 x i8], align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #15
  %9 = add i64 %8, 1
  %10 = tail call ptr @Perl_safesysmalloc(i64 noundef %9) #11
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %0, i64 %9, i1 false)
  %11 = load i8, ptr %10, align 1, !tbaa !10
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %3, %21
  %14 = phi i8 [ %23, %21 ], [ %11, %3 ]
  %15 = phi ptr [ %22, %21 ], [ %10, %3 ]
  %16 = zext i8 %14 to i64
  %17 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !5
  %19 = and i32 %18, 17408
  %20 = icmp eq i32 %19, 17408
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = getelementptr inbounds i8, ptr %15, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !10
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %13, !llvm.loop !73

25:                                               ; preds = %13, %21, %3
  %26 = phi ptr [ %10, %3 ], [ %22, %21 ], [ %15, %13 ]
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #13
  %27 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(4) @.str.35, i64 noundef 3) #15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %70

29:                                               ; preds = %25
  %30 = call i64 @Perl_my_strlcpy(ptr noundef nonnull %4, ptr noundef nonnull @.str.36, i64 noundef 10) #11
  %31 = getelementptr inbounds i8, ptr %26, i64 3
  %32 = load i8, ptr %31, align 1, !tbaa !10
  %33 = icmp eq i8 %32, 102
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = getelementptr inbounds i8, ptr %26, i64 4
  %36 = call i64 @Perl_my_strlcat(ptr noundef nonnull %4, ptr noundef nonnull @.str.37, i64 noundef 8) #11
  %37 = load i8, ptr %35, align 1, !tbaa !10
  br label %38

38:                                               ; preds = %34, %29
  %39 = phi i8 [ %37, %34 ], [ %32, %29 ]
  %40 = phi i64 [ 4, %34 ], [ 3, %29 ]
  %41 = getelementptr inbounds i8, ptr %26, i64 %40
  %42 = icmp eq i8 %39, 32
  %43 = zext i1 %42 to i64
  %44 = getelementptr inbounds i8, ptr %41, i64 %43
  %45 = getelementptr inbounds i8, ptr %44, i64 1
  %46 = load i8, ptr %44, align 1, !tbaa !10
  %47 = icmp eq i8 %46, 39
  br i1 %47, label %48, label %70

48:                                               ; preds = %38, %48
  %49 = phi ptr [ %52, %48 ], [ %45, %38 ]
  %50 = load i8, ptr %49, align 1, !tbaa !10
  %51 = icmp eq i8 %50, 0
  %52 = getelementptr inbounds i8, ptr %49, i64 1
  br i1 %51, label %53, label %48, !llvm.loop !74

53:                                               ; preds = %48
  %54 = getelementptr inbounds i8, ptr %49, i64 -1
  %55 = load i8, ptr %54, align 1, !tbaa !10
  %56 = icmp eq i8 %55, 10
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  store i8 0, ptr %54, align 1, !tbaa !10
  %58 = getelementptr inbounds i8, ptr %49, i64 -2
  %59 = load i8, ptr %58, align 1, !tbaa !10
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i8 [ %59, %57 ], [ %55, %53 ]
  %62 = phi ptr [ %54, %57 ], [ %49, %53 ]
  %63 = icmp eq i8 %61, 39
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, ptr %62, i64 -1
  store i8 0, ptr %65, align 1, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %66 = load ptr, ptr @PL_sigfpe_saved, align 8, !tbaa !17
  %67 = call i32 @Perl_rsignal_save(i32 noundef 8, ptr noundef %66, ptr noundef nonnull %5) #11
  %68 = call i32 (ptr, ptr, ...) @execl(ptr noundef nonnull @PL_cshname, ptr noundef nonnull @.str.38, ptr noundef nonnull %4, ptr noundef nonnull %45, ptr noundef null) #11
  %69 = call i32 @Perl_rsignal_restore(i32 noundef 8, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  store i8 39, ptr %65, align 1, !tbaa !10
  call fastcc void @S_exec_failed(ptr noundef nonnull @PL_cshname, i32 noundef %1, i32 noundef %2) #12
  call void @Perl_safesysfree(ptr noundef nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #13
  br label %260

70:                                               ; preds = %60, %38, %25
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #13
  %71 = load i8, ptr %26, align 1, !tbaa !10
  %72 = icmp eq i8 %71, 46
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = getelementptr inbounds i8, ptr %26, i64 1
  %75 = load i8, ptr %74, align 1, !tbaa !10
  %76 = zext i8 %75 to i64
  %77 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !5
  %79 = and i32 %78, 17408
  %80 = icmp eq i32 %79, 17408
  br i1 %80, label %173, label %81

81:                                               ; preds = %73, %70
  %82 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(5) @.str.39, i64 noundef 4) #15
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = getelementptr inbounds i8, ptr %26, i64 4
  %86 = load i8, ptr %85, align 1, !tbaa !10
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !5
  %90 = and i32 %89, 17408
  %91 = icmp eq i32 %90, 17408
  br i1 %91, label %173, label %92

92:                                               ; preds = %84, %81
  br label %93

93:                                               ; preds = %92, %93
  %94 = phi ptr [ %101, %93 ], [ %26, %92 ]
  %95 = load i8, ptr %94, align 1, !tbaa !10
  %96 = zext i8 %95 to i64
  %97 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !5
  %99 = and i32 %98, 16385
  %100 = icmp eq i32 %99, 16385
  %101 = getelementptr inbounds i8, ptr %94, i64 1
  br i1 %100, label %93, label %102, !llvm.loop !75

102:                                              ; preds = %93
  %103 = icmp eq i8 %95, 61
  br i1 %103, label %173, label %104

104:                                              ; preds = %102
  %105 = icmp eq i8 %71, 0
  br i1 %105, label %185, label %106

106:                                              ; preds = %104, %178
  %107 = phi i8 [ %181, %178 ], [ %71, %104 ]
  %108 = phi i64 [ %179, %178 ], [ 0, %104 ]
  %109 = sext i8 %107 to i32
  %110 = icmp eq i8 %107, 32
  br i1 %110, label %178, label %111

111:                                              ; preds = %106
  %112 = zext i8 %107 to i64
  %113 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !5
  %115 = and i32 %114, 16388
  %116 = icmp eq i32 %115, 16388
  br i1 %116, label %178, label %117

117:                                              ; preds = %111
  %118 = call ptr @memchr(ptr nonnull dereferenceable(1) @.str.40, i32 %109, i64 21)
  %119 = icmp eq ptr %118, null
  br i1 %119, label %178, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds i8, ptr %26, i64 %108
  switch i8 %107, label %173 [
    i8 10, label %122
    i8 62, label %126
  ]

122:                                              ; preds = %120
  %123 = getelementptr inbounds i8, ptr %121, i64 1
  %124 = load i8, ptr %123, align 1, !tbaa !10
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %183, label %173

126:                                              ; preds = %120
  %127 = getelementptr inbounds i8, ptr %121, i64 1
  %128 = load i8, ptr %127, align 1, !tbaa !10
  %129 = icmp eq i8 %128, 38
  br i1 %129, label %130, label %173

130:                                              ; preds = %126
  %131 = getelementptr inbounds i8, ptr %121, i64 2
  %132 = load i8, ptr %131, align 1, !tbaa !10
  %133 = icmp eq i8 %132, 49
  %134 = icmp ugt i64 %108, 1
  %135 = and i1 %134, %133
  br i1 %135, label %136, label %173

136:                                              ; preds = %130
  %137 = getelementptr inbounds i8, ptr %121, i64 -1
  %138 = load i8, ptr %137, align 1, !tbaa !10
  %139 = icmp eq i8 %138, 50
  br i1 %139, label %140, label %173

140:                                              ; preds = %136
  %141 = getelementptr inbounds i8, ptr %121, i64 -2
  %142 = load i8, ptr %141, align 1, !tbaa !10
  %143 = zext i8 %142 to i64
  %144 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %143
  %145 = load i32, ptr %144, align 4, !tbaa !5
  %146 = and i32 %145, 17408
  %147 = icmp eq i32 %146, 17408
  br i1 %147, label %148, label %173

148:                                              ; preds = %140
  %149 = getelementptr inbounds i8, ptr %121, i64 3
  %150 = load i8, ptr %149, align 1, !tbaa !10
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %170, label %152

152:                                              ; preds = %148
  %153 = zext i8 %150 to i64
  %154 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %153
  %155 = load i32, ptr %154, align 4, !tbaa !5
  %156 = and i32 %155, 17408
  %157 = icmp eq i32 %156, 17408
  br i1 %157, label %162, label %173

158:                                              ; preds = %162
  %159 = getelementptr inbounds i8, ptr %164, i64 1
  %160 = load i8, ptr %159, align 1, !tbaa !10
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %170, label %162, !llvm.loop !76

162:                                              ; preds = %152, %158
  %163 = phi i8 [ %160, %158 ], [ %150, %152 ]
  %164 = phi ptr [ %159, %158 ], [ %149, %152 ]
  %165 = zext i8 %163 to i64
  %166 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !5
  %168 = and i32 %167, 17408
  %169 = icmp eq i32 %168, 17408
  br i1 %169, label %158, label %173

170:                                              ; preds = %158, %148
  %171 = call i32 @dup2(i32 noundef 1, i32 noundef 2) #11
  %172 = icmp eq i32 %171, -1
  br i1 %172, label %173, label %183

173:                                              ; preds = %162, %120, %170, %122, %126, %130, %136, %140, %152, %102, %84, %73, %255
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %174 = load ptr, ptr @PL_sigfpe_saved, align 8, !tbaa !17
  %175 = call i32 @Perl_rsignal_save(i32 noundef 8, ptr noundef %174, ptr noundef nonnull %6) #11
  %176 = call i32 (ptr, ptr, ...) @execl(ptr noundef nonnull @PL_sh_path, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.36, ptr noundef nonnull %26, ptr noundef null) #11
  %177 = call i32 @Perl_rsignal_restore(i32 noundef 8, ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call fastcc void @S_exec_failed(ptr noundef nonnull @PL_sh_path, i32 noundef %1, i32 noundef %2) #12
  call void @Perl_safesysfree(ptr noundef nonnull %10) #11
  br label %260

178:                                              ; preds = %106, %111, %117
  %179 = add nuw nsw i64 %108, 1
  %180 = getelementptr inbounds i8, ptr %26, i64 %179
  %181 = load i8, ptr %180, align 1, !tbaa !10
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %185, label %106, !llvm.loop !77

183:                                              ; preds = %170, %122
  %184 = phi ptr [ %121, %122 ], [ %141, %170 ]
  store i8 0, ptr %184, align 1, !tbaa !10
  br label %185

185:                                              ; preds = %178, %183, %104
  %186 = phi i64 [ 0, %104 ], [ %108, %183 ], [ %179, %178 ]
  %187 = shl i64 %186, 2
  %188 = and i64 %187, -8
  %189 = add i64 %188, 16
  %190 = call ptr @Perl_safesysmalloc(i64 noundef %189) #11
  store ptr %190, ptr @PL_Argv, align 8, !tbaa !17
  %191 = trunc i64 %186 to i32
  %192 = call ptr @Perl_savepvn(ptr noundef nonnull %26, i32 noundef %191) #11
  store ptr %192, ptr @PL_Cmd, align 8, !tbaa !17
  %193 = load ptr, ptr @PL_Argv, align 8, !tbaa !17
  %194 = load i8, ptr %192, align 1, !tbaa !10
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %240, label %196

196:                                              ; preds = %185, %237
  %197 = phi i8 [ %238, %237 ], [ %194, %185 ]
  %198 = phi ptr [ %223, %237 ], [ %193, %185 ]
  %199 = phi ptr [ %233, %237 ], [ %192, %185 ]
  %200 = zext i8 %197 to i64
  %201 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %200
  %202 = load i32, ptr %201, align 4, !tbaa !5
  %203 = and i32 %202, 17408
  %204 = icmp eq i32 %203, 17408
  br i1 %204, label %205, label %216

205:                                              ; preds = %196, %205
  %206 = phi ptr [ %207, %205 ], [ %199, %196 ]
  %207 = getelementptr inbounds i8, ptr %206, i64 1
  %208 = load i8, ptr %207, align 1, !tbaa !10
  %209 = zext i8 %208 to i64
  %210 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %209
  %211 = load i32, ptr %210, align 4, !tbaa !5
  %212 = and i32 %211, 17408
  %213 = icmp eq i32 %212, 17408
  br i1 %213, label %205, label %214, !llvm.loop !78

214:                                              ; preds = %205
  %215 = icmp eq i8 %208, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %196, %214
  %217 = phi ptr [ %207, %214 ], [ %199, %196 ]
  %218 = getelementptr inbounds ptr, ptr %198, i64 1
  store ptr %217, ptr %198, align 8, !tbaa !17
  %219 = load i8, ptr %217, align 1, !tbaa !10
  br label %220

220:                                              ; preds = %216, %214
  %221 = phi ptr [ %217, %216 ], [ %207, %214 ]
  %222 = phi i8 [ %219, %216 ], [ 0, %214 ]
  %223 = phi ptr [ %218, %216 ], [ %198, %214 ]
  %224 = icmp eq i8 %222, 0
  br i1 %224, label %240, label %225

225:                                              ; preds = %220, %234
  %226 = phi i8 [ %235, %234 ], [ %222, %220 ]
  %227 = phi ptr [ %233, %234 ], [ %221, %220 ]
  %228 = zext i8 %226 to i64
  %229 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %228
  %230 = load i32, ptr %229, align 4, !tbaa !5
  %231 = and i32 %230, 17408
  %232 = icmp eq i32 %231, 17408
  %233 = getelementptr inbounds i8, ptr %227, i64 1
  br i1 %232, label %237, label %234

234:                                              ; preds = %225
  %235 = load i8, ptr %233, align 1, !tbaa !10
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %240, label %225, !llvm.loop !79

237:                                              ; preds = %225
  store i8 0, ptr %227, align 1, !tbaa !10
  %238 = load i8, ptr %233, align 1, !tbaa !10
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %240, label %196, !llvm.loop !80

240:                                              ; preds = %220, %237, %234, %185
  %241 = phi ptr [ %193, %185 ], [ %223, %234 ], [ %223, %237 ], [ %223, %220 ]
  store ptr null, ptr %241, align 8, !tbaa !17
  %242 = load ptr, ptr @PL_Argv, align 8, !tbaa !17
  %243 = load ptr, ptr %242, align 8, !tbaa !17
  %244 = icmp eq ptr %243, null
  br i1 %244, label %259, label %245

245:                                              ; preds = %240
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  %246 = load ptr, ptr @PL_sigfpe_saved, align 8, !tbaa !17
  %247 = call i32 @Perl_rsignal_save(i32 noundef 8, ptr noundef %246, ptr noundef nonnull %7) #11
  %248 = load ptr, ptr @PL_Argv, align 8, !tbaa !17
  %249 = load ptr, ptr %248, align 8, !tbaa !17
  %250 = call i32 @execvp(ptr noundef %249, ptr noundef nonnull %248) #11
  %251 = call i32 @Perl_rsignal_restore(i32 noundef 8, ptr noundef nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  %252 = tail call ptr @__errno_location() #14
  %253 = load i32, ptr %252, align 4, !tbaa !5
  %254 = icmp eq i32 %253, 8
  br i1 %254, label %255, label %256

255:                                              ; preds = %245
  call void @Perl_do_execfree() #12
  br label %173

256:                                              ; preds = %245
  %257 = load ptr, ptr @PL_Argv, align 8, !tbaa !17
  %258 = load ptr, ptr %257, align 8, !tbaa !17
  call fastcc void @S_exec_failed(ptr noundef %258, i32 noundef %1, i32 noundef %2) #12
  br label %259

259:                                              ; preds = %256, %240
  call void @Perl_do_execfree() #12
  call void @Perl_safesysfree(ptr noundef nonnull %10) #11
  br label %260

260:                                              ; preds = %64, %259, %173
  ret i1 false
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i64 @Perl_my_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @Perl_my_strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare i32 @execl(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind optsize
declare i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Perl_apply(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [0 x ptr], ptr @PL_op_name, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  switch i32 %0, label %10 [
    i32 316, label %8
    i32 294, label %8
  ]

8:                                                ; preds = %3, %3
  %9 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef %7) #11
  br label %10

10:                                               ; preds = %8, %3
  %11 = load i8, ptr @PL_tainting, align 1, !tbaa !29, !range !9, !noundef !31
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds ptr, ptr %1, i64 1
  %14 = icmp ugt ptr %13, %2
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %29, label %16

16:                                               ; preds = %10, %26
  %17 = phi ptr [ %27, %26 ], [ %13, %10 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !17
  %19 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !24
  %21 = and i32 %20, 14680064
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = tail call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %18) #11
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  store i8 1, ptr @PL_tainted, align 1, !tbaa !29
  br label %29

26:                                               ; preds = %23, %16
  %27 = getelementptr inbounds ptr, ptr %17, i64 1
  %28 = icmp ugt ptr %27, %2
  br i1 %28, label %29, label %16, !llvm.loop !81

29:                                               ; preds = %26, %25, %10
  switch i32 %0, label %242 [
    i32 297, label %30
    i32 296, label %171
  ]

30:                                               ; preds = %29
  %31 = load i8, ptr @PL_tainted, align 1, !tbaa !29, !range !9, !noundef !31
  %32 = icmp eq i8 %31, 0
  %33 = load i8, ptr @PL_tainting, align 1, !range !9
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef %7) #11
  br label %37

37:                                               ; preds = %36, %30
  br i1 %14, label %242, label %38

38:                                               ; preds = %37
  %39 = load ptr, ptr %13, align 8, !tbaa !17
  %40 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !24
  %42 = and i32 %41, 2097408
  %43 = icmp eq i32 %42, 256
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load ptr, ptr %39, align 8, !tbaa !26
  %46 = getelementptr inbounds %struct.xpviv, ptr %45, i64 0, i32 4
  %47 = load i64, ptr %46, align 8, !tbaa !10
  br label %50

48:                                               ; preds = %38
  %49 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %39, i32 noundef 2) #11
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi i64 [ %47, %44 ], [ %49, %48 ]
  %52 = trunc i64 %51 to i32
  %53 = load i8, ptr @PL_tainted, align 1, !tbaa !29, !range !9, !noundef !31
  %54 = icmp eq i8 %53, 0
  %55 = load i8, ptr @PL_tainting, align 1, !range !9
  %56 = icmp eq i8 %55, 0
  %57 = select i1 %54, i1 true, i1 %56
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef %7) #11
  br label %59

59:                                               ; preds = %58, %50
  %60 = ptrtoint ptr %2 to i64
  %61 = ptrtoint ptr %13 to i64
  %62 = sub i64 %60, %61
  %63 = lshr exact i64 %62, 3
  %64 = trunc i64 %63 to i32
  %65 = getelementptr inbounds ptr, ptr %1, i64 2
  %66 = icmp ugt ptr %65, %2
  br i1 %66, label %242, label %67

67:                                               ; preds = %59, %167
  %68 = phi ptr [ %169, %167 ], [ %65, %59 ]
  %69 = phi i32 [ %168, %167 ], [ %64, %59 ]
  %70 = load ptr, ptr %68, align 8, !tbaa !17
  %71 = getelementptr inbounds %struct.sv, ptr %70, i64 0, i32 2
  %72 = load i32, ptr %71, align 4, !tbaa !24
  %73 = and i32 %72, 2097152
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %67
  %76 = call i32 @Perl_mg_get(ptr noundef nonnull %70) #11
  %77 = load ptr, ptr %68, align 8, !tbaa !17
  %78 = getelementptr inbounds %struct.sv, ptr %77, i64 0, i32 2
  %79 = load i32, ptr %78, align 4, !tbaa !24
  br label %80

80:                                               ; preds = %67, %75
  %81 = phi i32 [ %72, %67 ], [ %79, %75 ]
  %82 = phi ptr [ %70, %67 ], [ %77, %75 ]
  %83 = and i32 %81, 49152
  %84 = icmp eq i32 %83, 32768
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = and i32 %81, 255
  %87 = add nsw i32 %86, -9
  %88 = icmp ult i32 %87, 2
  br i1 %88, label %119, label %89

89:                                               ; preds = %85, %80
  %90 = and i32 %81, 2048
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %137, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.sv, ptr %82, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !10
  %95 = getelementptr inbounds %struct.sv, ptr %94, i64 0, i32 2
  %96 = load i32, ptr %95, align 4, !tbaa !24
  %97 = and i32 %96, 255
  %98 = icmp ult i32 %97, 11
  br i1 %98, label %99, label %137

99:                                               ; preds = %92
  %100 = and i32 %96, 2097152
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %99
  %103 = call i32 @Perl_mg_get(ptr noundef nonnull %94) #11
  %104 = load ptr, ptr %68, align 8, !tbaa !17
  %105 = getelementptr inbounds %struct.sv, ptr %104, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !10
  %107 = getelementptr inbounds %struct.sv, ptr %106, i64 0, i32 2
  %108 = load i32, ptr %107, align 4, !tbaa !24
  br label %109

109:                                              ; preds = %99, %102
  %110 = phi i32 [ %96, %99 ], [ %108, %102 ]
  %111 = phi ptr [ %94, %99 ], [ %106, %102 ]
  %112 = phi ptr [ %82, %99 ], [ %104, %102 ]
  %113 = and i32 %110, 49152
  %114 = icmp eq i32 %113, 32768
  br i1 %114, label %115, label %137

115:                                              ; preds = %109
  %116 = and i32 %110, 255
  %117 = add nsw i32 %116, -9
  %118 = icmp ult i32 %117, 2
  br i1 %118, label %119, label %137

119:                                              ; preds = %85, %115
  %120 = phi ptr [ %111, %115 ], [ %82, %85 ]
  %121 = getelementptr inbounds %struct.gv, ptr %120, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !10
  %123 = icmp eq ptr %122, null
  br i1 %123, label %134, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.gp, ptr %122, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !34
  %127 = icmp eq ptr %126, null
  br i1 %127, label %134, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.io, ptr %126, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !10
  %131 = icmp eq ptr %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.42) #11
  br label %167

134:                                              ; preds = %119, %128, %124
  %135 = tail call ptr @__errno_location() #14
  store i32 9, ptr %135, align 4, !tbaa !5
  %136 = add nsw i32 %69, -1
  br label %167

137:                                              ; preds = %109, %92, %89, %115
  %138 = phi ptr [ %112, %109 ], [ %82, %92 ], [ %82, %89 ], [ %112, %115 ]
  %139 = getelementptr inbounds %struct.sv, ptr %138, i64 0, i32 2
  %140 = load i32, ptr %139, align 4, !tbaa !24
  %141 = and i32 %140, 2098176
  %142 = icmp eq i32 %141, 1024
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load ptr, ptr %138, align 8, !tbaa !26
  %145 = getelementptr inbounds %struct.xpv, ptr %144, i64 0, i32 2
  %146 = load i64, ptr %145, align 8, !tbaa !27
  store i64 %146, ptr %4, align 8, !tbaa !23
  %147 = getelementptr inbounds %struct.sv, ptr %138, i64 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !10
  br label %151

149:                                              ; preds = %137
  %150 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %138, ptr noundef nonnull %4, i32 noundef 32) #11
  br label %151

151:                                              ; preds = %149, %143
  %152 = phi ptr [ %148, %143 ], [ %150, %149 ]
  %153 = load i8, ptr @PL_tainted, align 1, !tbaa !29, !range !9, !noundef !31
  %154 = icmp eq i8 %153, 0
  %155 = load i8, ptr @PL_tainting, align 1, !range !9
  %156 = icmp eq i8 %155, 0
  %157 = select i1 %154, i1 true, i1 %156
  br i1 %157, label %159, label %158

158:                                              ; preds = %151
  call void @Perl_taint_proper(ptr noundef null, ptr noundef %7) #11
  br label %159

159:                                              ; preds = %158, %151
  %160 = load i64, ptr %4, align 8, !tbaa !23
  %161 = call fastcc zeroext i1 @S_is_safe_syscall(ptr noundef %152, i64 noundef %160, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.43) #12
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = call i32 @chmod(ptr noundef %152, i32 noundef %52) #11
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %162, %159
  %166 = add nsw i32 %69, -1
  br label %167

167:                                              ; preds = %162, %165, %132, %134
  %168 = phi i32 [ %69, %132 ], [ %136, %134 ], [ %166, %165 ], [ %69, %162 ]
  %169 = getelementptr inbounds ptr, ptr %68, i64 1
  %170 = icmp ugt ptr %169, %2
  br i1 %170, label %242, label %67, !llvm.loop !82

171:                                              ; preds = %29
  %172 = load i8, ptr @PL_tainted, align 1, !tbaa !29, !range !9, !noundef !31
  %173 = icmp eq i8 %172, 0
  %174 = load i8, ptr @PL_tainting, align 1, !range !9
  %175 = icmp eq i8 %174, 0
  %176 = select i1 %173, i1 true, i1 %175
  br i1 %176, label %178, label %177

177:                                              ; preds = %171
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef %7) #11
  br label %178

178:                                              ; preds = %177, %171
  %179 = ptrtoint ptr %2 to i64
  %180 = ptrtoint ptr %1 to i64
  %181 = sub i64 %179, %180
  %182 = lshr exact i64 %181, 3
  %183 = trunc i64 %182 to i32
  br i1 %14, label %242, label %184

184:                                              ; preds = %178, %238
  %185 = phi ptr [ %240, %238 ], [ %13, %178 ]
  %186 = phi i32 [ %239, %238 ], [ %183, %178 ]
  %187 = load ptr, ptr %185, align 8, !tbaa !17
  %188 = getelementptr inbounds %struct.sv, ptr %187, i64 0, i32 2
  %189 = load i32, ptr %188, align 4, !tbaa !24
  %190 = and i32 %189, 2098176
  %191 = icmp eq i32 %190, 1024
  br i1 %191, label %192, label %198

192:                                              ; preds = %184
  %193 = load ptr, ptr %187, align 8, !tbaa !26
  %194 = getelementptr inbounds %struct.xpv, ptr %193, i64 0, i32 2
  %195 = load i64, ptr %194, align 8, !tbaa !27
  store i64 %195, ptr %4, align 8, !tbaa !23
  %196 = getelementptr inbounds %struct.sv, ptr %187, i64 0, i32 3
  %197 = load ptr, ptr %196, align 8, !tbaa !10
  br label %200

198:                                              ; preds = %184
  %199 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %187, ptr noundef nonnull %4, i32 noundef 34) #11
  br label %200

200:                                              ; preds = %198, %192
  %201 = phi ptr [ %197, %192 ], [ %199, %198 ]
  %202 = load i8, ptr @PL_tainted, align 1, !tbaa !29, !range !9, !noundef !31
  %203 = icmp eq i8 %202, 0
  %204 = load i8, ptr @PL_tainting, align 1, !range !9
  %205 = icmp eq i8 %204, 0
  %206 = select i1 %203, i1 true, i1 %205
  br i1 %206, label %208, label %207

207:                                              ; preds = %200
  call void @Perl_taint_proper(ptr noundef null, ptr noundef %7) #11
  br label %208

208:                                              ; preds = %207, %200
  %209 = load i64, ptr %4, align 8, !tbaa !23
  %210 = call fastcc zeroext i1 @S_is_safe_syscall(ptr noundef %201, i64 noundef %209, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.44) #12
  br i1 %210, label %213, label %211

211:                                              ; preds = %208
  %212 = add nsw i32 %186, -1
  br label %238

213:                                              ; preds = %208
  %214 = load i8, ptr @PL_unsafe, align 1, !tbaa !29, !range !9, !noundef !31
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %221, label %216

216:                                              ; preds = %213
  %217 = call i32 @unlink(ptr noundef %201) #11
  %218 = icmp ne i32 %217, 0
  %219 = sext i1 %218 to i32
  %220 = add nsw i32 %186, %219
  br label %238

221:                                              ; preds = %213
  %222 = call i32 @stat64(ptr noundef %201, ptr noundef nonnull @PL_statbuf) #11
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %221
  %225 = add nsw i32 %186, -1
  br label %238

226:                                              ; preds = %221
  %227 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statbuf, i64 0, i32 3), align 8, !tbaa !47
  %228 = and i32 %227, 61440
  %229 = icmp eq i32 %228, 16384
  br i1 %229, label %230, label %233

230:                                              ; preds = %226
  %231 = add nsw i32 %186, -1
  %232 = tail call ptr @__errno_location() #14
  store i32 21, ptr %232, align 4, !tbaa !5
  br label %238

233:                                              ; preds = %226
  %234 = call i32 @unlink(ptr noundef %201) #11
  %235 = icmp ne i32 %234, 0
  %236 = sext i1 %235 to i32
  %237 = add nsw i32 %186, %236
  br label %238

238:                                              ; preds = %233, %216, %230, %224, %211
  %239 = phi i32 [ %225, %224 ], [ %231, %230 ], [ %212, %211 ], [ %220, %216 ], [ %237, %233 ]
  %240 = getelementptr inbounds ptr, ptr %185, i64 1
  %241 = icmp ugt ptr %240, %2
  br i1 %241, label %242, label %184, !llvm.loop !83

242:                                              ; preds = %238, %167, %178, %59, %37, %29
  %243 = phi i32 [ 0, %29 ], [ 0, %37 ], [ %64, %59 ], [ %183, %178 ], [ %168, %167 ], [ %239, %238 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret i32 %243
}

; Function Attrs: optsize
declare ptr @Perl_die(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_tainted(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i1 @Perl_cando(i32 noundef %0, i1 noundef zeroext %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  br i1 %1, label %4, label %7

4:                                                ; preds = %3
  %5 = tail call i32 @geteuid() #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %20

7:                                                ; preds = %3
  %8 = tail call i32 @getuid() #11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %7, %4
  %11 = icmp eq i32 %0, 64
  br i1 %11, label %12, label %52

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !47
  %15 = and i32 %14, 73
  %16 = icmp ne i32 %15, 0
  %17 = and i32 %14, 61440
  %18 = icmp eq i32 %17, 16384
  %19 = or i1 %16, %18
  br label %52

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !84
  %23 = tail call i32 @geteuid() #11
  br label %28

24:                                               ; preds = %7
  %25 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !84
  %27 = tail call i32 @getuid() #11
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i32 [ %22, %20 ], [ %26, %24 ]
  %30 = phi i32 [ %23, %20 ], [ %27, %24 ]
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !47
  %35 = and i32 %34, %0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %51, label %52

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !85
  %40 = tail call fastcc zeroext i1 @S_ingroup(i32 noundef %39, i1 noundef zeroext %1) #12
  %41 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !47
  br i1 %40, label %43, label %47

43:                                               ; preds = %37
  %44 = lshr i32 %0, 3
  %45 = and i32 %42, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %52

47:                                               ; preds = %37
  %48 = lshr i32 %0, 6
  %49 = and i32 %42, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43, %47, %32
  br label %52

52:                                               ; preds = %12, %47, %43, %32, %10, %51
  %53 = phi i1 [ false, %51 ], [ true, %10 ], [ true, %32 ], [ true, %43 ], [ true, %47 ], [ %19, %12 ]
  ret i1 %53
}

; Function Attrs: nounwind optsize
declare i32 @geteuid() local_unnamed_addr #4

; Function Attrs: nounwind optsize
declare i32 @getuid() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i1 @S_ingroup(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  br i1 %1, label %3, label %5

3:                                                ; preds = %2
  %4 = tail call i32 @getegid() #11
  br label %7

5:                                                ; preds = %2
  %6 = tail call i32 @getgid() #11
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ %4, %3 ], [ %6, %5 ]
  %9 = icmp eq i32 %8, %0
  ret i1 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @Perl_start_glob(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = tail call ptr @Perl_newSV(i64 noundef 0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %5 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !24
  %7 = and i32 %6, 2098176
  %8 = icmp eq i32 %7, 1024
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !26
  %11 = getelementptr inbounds %struct.xpv, ptr %10, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !27
  store i64 %12, ptr %3, align 8, !tbaa !23
  %13 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !10
  br label %18

15:                                               ; preds = %2
  %16 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 2) #11
  %17 = load i64, ptr %3, align 8, !tbaa !23
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi i64 [ %12, %9 ], [ %17, %15 ]
  %20 = phi ptr [ %14, %9 ], [ %16, %15 ]
  %21 = call fastcc zeroext i1 @S_is_safe_syscall(ptr noundef %20, i64 noundef %19, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46) #12
  br i1 %21, label %22, label %97

22:                                               ; preds = %18
  call void @Perl_push_scope() #11
  call void @Perl_save_pushptr(ptr noundef %4, i32 noundef 11) #11
  call void @Perl_sv_setpvn(ptr noundef %4, ptr noundef nonnull @PL_cshname, i64 noundef 0) #11
  call void @Perl_sv_catpv(ptr noundef %4, ptr noundef nonnull @.str.47) #11
  call void @Perl_sv_catsv_flags(ptr noundef %4, ptr noundef nonnull %0, i32 noundef 2) #11
  call void @Perl_sv_catpv(ptr noundef %4, ptr noundef nonnull @.str.48) #11
  %23 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.49, i64 noundef 3, i32 noundef 0, i32 noundef 12) #11
  %24 = getelementptr inbounds %struct.gv, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !10
  %26 = getelementptr inbounds %struct.gp, ptr %25, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !86
  %28 = call ptr @Perl_hv_common(ptr noundef %27, ptr noundef null, ptr noundef nonnull @.str.50, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #11
  %29 = load ptr, ptr %24, align 8, !tbaa !10
  %30 = getelementptr inbounds %struct.gp, ptr %29, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !86
  %32 = call ptr @Perl_hv_common(ptr noundef %31, ptr noundef null, ptr noundef nonnull @.str.51, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #11
  %33 = icmp eq ptr %28, null
  br i1 %33, label %44, label %34

34:                                               ; preds = %22
  %35 = load ptr, ptr %28, align 8, !tbaa !17
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !24
  %40 = and i32 %39, 2097152
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = call i32 @Perl_mg_get(ptr noundef nonnull %35) #11
  br label %44

44:                                               ; preds = %42, %37, %34, %22
  %45 = icmp eq ptr %32, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %44
  %47 = load ptr, ptr %32, align 8, !tbaa !17
  %48 = icmp eq ptr %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.sv, ptr %47, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !24
  %52 = and i32 %51, 2097152
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = call i32 @Perl_mg_get(ptr noundef nonnull %47) #11
  br label %56

56:                                               ; preds = %54, %49, %46, %44
  %57 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.49, i64 noundef 3, i32 noundef 0, i32 noundef 12) #11
  %58 = call ptr @Perl_save_hash(ptr noundef %57) #11
  br i1 %33, label %69, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %28, align 8, !tbaa !17
  %61 = icmp eq ptr %60, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.sv, ptr %60, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !24
  %65 = and i32 %64, 4194304
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = call i32 @Perl_mg_set(ptr noundef nonnull %60) #11
  br label %69

69:                                               ; preds = %67, %62, %59, %56
  br i1 %45, label %80, label %70

70:                                               ; preds = %69
  %71 = load ptr, ptr %32, align 8, !tbaa !17
  %72 = icmp eq ptr %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.sv, ptr %71, i64 0, i32 2
  %75 = load i32, ptr %74, align 4, !tbaa !24
  %76 = and i32 %75, 4194304
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = call i32 @Perl_mg_set(ptr noundef nonnull %71) #11
  br label %80

80:                                               ; preds = %78, %73, %70, %69
  %81 = load ptr, ptr @PL_last_in_gv, align 8, !tbaa !17
  %82 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !10
  %84 = load ptr, ptr %4, align 8, !tbaa !26
  %85 = getelementptr inbounds %struct.xpv, ptr %84, i64 0, i32 2
  %86 = load i64, ptr %85, align 8, !tbaa !27
  %87 = call zeroext i1 @Perl_do_open6(ptr noundef %81, ptr noundef %83, i64 noundef %86, ptr noundef null, ptr noundef null, i32 noundef 0) #12
  %88 = getelementptr inbounds %struct.io, ptr %1, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !10
  call void @Perl_pop_scope() #11
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %80
  %92 = call zeroext i1 @Perl_ckwarn(i32 noundef 4) #11
  br i1 %92, label %93, label %97

93:                                               ; preds = %91
  %94 = tail call ptr @__errno_location() #14
  %95 = load i32, ptr %94, align 4, !tbaa !5
  %96 = call ptr @strerror(i32 noundef %95) #11
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 4, ptr noundef nonnull @.str.52, ptr noundef %96) #11
  br label %97

97:                                               ; preds = %80, %91, %93, %18
  %98 = phi ptr [ null, %18 ], [ null, %93 ], [ null, %91 ], [ %89, %80 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret ptr %98
}

; Function Attrs: optsize
declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_push_scope() local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_save_hash(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_pop_scope() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @fcntl64(i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_PerlIO_clearerr(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree optsize
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind optsize
declare i32 @getegid() local_unnamed_addr #4

; Function Attrs: nounwind optsize
declare i32 @getgid() local_unnamed_addr #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize willreturn memory(none) }
attributes #15 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{i8 0, i8 2}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"io", !13, i64 0, !6, i64 8, !6, i64 12, !7, i64 16}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!15, !7, i64 128}
!15 = !{!"xpvio", !13, i64 0, !7, i64 8, !16, i64 16, !7, i64 24, !7, i64 32, !13, i64 40, !7, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !7, i64 128, !7, i64 129}
!16 = !{!"long", !7, i64 0}
!17 = !{!13, !13, i64 0}
!18 = !{!19, !7, i64 35}
!19 = !{!"op", !13, i64 0, !13, i64 8, !13, i64 16, !16, i64 24, !6, i64 32, !6, i64 33, !6, i64 33, !6, i64 33, !6, i64 33, !6, i64 33, !6, i64 33, !6, i64 33, !7, i64 34, !7, i64 35}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = !{!16, !16, i64 0}
!24 = !{!25, !6, i64 12}
!25 = !{!"sv", !13, i64 0, !6, i64 8, !6, i64 12, !7, i64 16}
!26 = !{!25, !13, i64 0}
!27 = !{!28, !16, i64 16}
!28 = !{!"xpv", !13, i64 0, !7, i64 8, !16, i64 16, !7, i64 24}
!29 = !{!30, !30, i64 0}
!30 = !{!"_Bool", !7, i64 0}
!31 = !{}
!32 = distinct !{!32, !21}
!33 = distinct !{!33, !21}
!34 = !{!35, !13, i64 8}
!35 = !{!"gp", !13, i64 0, !13, i64 8, !13, i64 16, !6, i64 24, !6, i64 28, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !6, i64 64, !6, i64 67, !13, i64 72}
!36 = distinct !{!36, !21}
!37 = distinct !{!37, !21}
!38 = distinct !{!38, !21}
!39 = distinct !{!39, !21}
!40 = distinct !{!40, !21}
!41 = distinct !{!41, !21}
!42 = !{!15, !13, i64 40}
!43 = !{!44, !6, i64 12}
!44 = !{!"gv", !13, i64 0, !6, i64 8, !6, i64 12, !7, i64 16}
!45 = !{!35, !13, i64 56}
!46 = !{!44, !13, i64 0}
!47 = !{!48, !6, i64 24}
!48 = !{!"stat", !16, i64 0, !16, i64 8, !16, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !49, i64 72, !49, i64 88, !49, i64 104, !7, i64 120}
!49 = !{!"timespec", !16, i64 0, !16, i64 8}
!50 = !{!15, !7, i64 129}
!51 = !{!44, !6, i64 8}
!52 = !{!35, !13, i64 40}
!53 = !{!35, !13, i64 0}
!54 = distinct !{!54, !21}
!55 = distinct !{!55, !21}
!56 = !{!57, !13, i64 0}
!57 = !{!"av", !13, i64 0, !6, i64 8, !6, i64 12, !7, i64 16}
!58 = !{!59, !16, i64 16}
!59 = !{!"xpvav", !13, i64 0, !7, i64 8, !16, i64 16, !16, i64 24, !13, i64 32}
!60 = !{!15, !16, i64 56}
!61 = !{!15, !16, i64 64}
!62 = !{!15, !16, i64 72}
!63 = !{!25, !6, i64 8}
!64 = !{!19, !7, i64 34}
!65 = distinct !{!65, !21}
!66 = !{!67, !6, i64 56}
!67 = !{!"cop", !13, i64 0, !13, i64 8, !13, i64 16, !16, i64 24, !6, i64 32, !6, i64 33, !6, i64 33, !6, i64 33, !6, i64 33, !6, i64 33, !6, i64 33, !6, i64 33, !7, i64 34, !7, i64 35, !6, i64 36, !13, i64 40, !13, i64 48, !6, i64 56, !6, i64 60, !13, i64 64, !13, i64 72}
!68 = !{!69, !13, i64 40}
!69 = !{!"svop", !13, i64 0, !13, i64 8, !13, i64 16, !16, i64 24, !6, i64 32, !6, i64 33, !6, i64 33, !6, i64 33, !6, i64 33, !6, i64 33, !6, i64 33, !6, i64 33, !7, i64 34, !7, i64 35, !13, i64 40}
!70 = !{!71, !71, i64 0}
!71 = !{!"short", !7, i64 0}
!72 = distinct !{!72, !21}
!73 = distinct !{!73, !21}
!74 = distinct !{!74, !21}
!75 = distinct !{!75, !21}
!76 = distinct !{!76, !21}
!77 = distinct !{!77, !21}
!78 = distinct !{!78, !21}
!79 = distinct !{!79, !21}
!80 = distinct !{!80, !21}
!81 = distinct !{!81, !21}
!82 = distinct !{!82, !21}
!83 = distinct !{!83, !21}
!84 = !{!48, !6, i64 28}
!85 = !{!48, !6, i64 32}
!86 = !{!35, !13, i64 32}
