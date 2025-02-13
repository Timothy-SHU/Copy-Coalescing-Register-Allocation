; ModuleID = 'dist/PathTools/Cwd.c'
source_filename = "dist/PathTools/Cwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon.5 }
%union.anon.5 = type { ptr }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon, ptr, %union.anon.0, %union.anon.1, %union.anon.2, ptr, %union.anon.3, ptr, i32, i32, i32 }
%union._xmgu = type { ptr }
%union.anon = type { i64 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.6 }
%union.anon.6 = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"dist/PathTools/Cwd.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"Cwd::CLONE\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Cwd::fastcwd\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Cwd::getcwd\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Cwd::abs_path\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"File::Spec::Unix::canonpath\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"File::Spec::Unix::_fn_canonpath\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"File::Spec::Unix::catdir\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"File::Spec::Unix::_fn_catdir\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"File::Spec::Unix::catfile\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"File::Spec::Unix::_fn_catfile\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@my_cxt.0 = internal unnamed_addr global ptr null, align 8
@my_cxt.1 = internal unnamed_addr global ptr null, align 8
@.str.13 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@PL_tainting = external local_unnamed_addr global i8, align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"pathsv=Nullsv\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c".\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@.str.16 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"self, path= &PL_sv_undef, ...\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"self, ...\00", align 1
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [10 x i8] c"canonpath\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"File::Spec::Unix\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"catdir\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boot_Cwd(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  %3 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_Cwd_CLONE) #10
  %4 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.3, ptr noundef nonnull @XS_Cwd_getcwd) #10
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.xpvcv, ptr %5, i64 0, i32 5
  store i32 1, ptr %6, align 8, !tbaa !41
  %7 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_Cwd_getcwd) #10
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.xpvcv, ptr %8, i64 0, i32 5
  store i32 0, ptr %9, align 8, !tbaa !41
  %10 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.5, ptr noundef nonnull @XS_Cwd_abs_path) #10
  %11 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_File__Spec__Unix_canonpath) #10
  %12 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.7, ptr noundef nonnull @XS_File__Spec__Unix__fn_canonpath) #10
  %13 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.8, ptr noundef nonnull @XS_File__Spec__Unix_catdir) #10
  %14 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.9, ptr noundef nonnull @XS_File__Spec__Unix__fn_catdir) #10
  %15 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_File__Spec__Unix_catfile) #10
  %16 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.11, ptr noundef nonnull @XS_File__Spec__Unix__fn_catfile) #10
  %17 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.12, i64 noundef 0) #10
  store ptr %17, ptr @my_cxt.0, align 8, !tbaa !42
  %18 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.13, i64 noundef 1) #10
  store ptr %18, ptr @my_cxt.1, align 8, !tbaa !44
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newXS_deffile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Cwd_CLONE(ptr nocapture readnone %0) #0 !prof !34 !PGOFuncName !45 {
  %2 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %3 = getelementptr inbounds i32, ptr %2, i64 -1
  store ptr %3, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %4 = load i32, ptr %2, align 4, !tbaa !47
  %5 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.12, i64 noundef 0) #10
  store ptr %5, ptr @my_cxt.0, align 8, !tbaa !42
  %6 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.13, i64 noundef 1) #10
  store ptr %6, ptr @my_cxt.1, align 8, !tbaa !44
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %8 = sext i32 %4 to i64
  %9 = getelementptr ptr, ptr %7, i64 %8
  store ptr %9, ptr @PL_stack_sp, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Cwd_getcwd(ptr noundef %0) #0 !prof !34 !PGOFuncName !48 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %5 = load i32, ptr %3, align 4, !tbaa !47
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = load ptr, ptr %0, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.xpvcv, ptr %12, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !41
  %15 = load ptr, ptr @PL_op, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.op, ptr %15, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !49
  %18 = and i8 %17, 4
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load ptr, ptr @PL_curpad, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.op, ptr %15, i64 0, i32 3
  %23 = load i64, ptr %22, align 8, !tbaa !52
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  br label %28

26:                                               ; preds = %1
  %27 = tail call ptr @Perl_sv_newmortal() #10
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi ptr [ %25, %20 ], [ %27, %26 ]
  %30 = icmp eq i32 %14, 1
  %31 = and i64 %11, 34359738360
  %32 = icmp ne i64 %31, 0
  %33 = select i1 %30, i1 %32, i1 false
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #10
  br label %35

35:                                               ; preds = %34, %28
  %36 = tail call i32 @Perl_getcwd_sv(ptr noundef %29) #10
  %37 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %38 = getelementptr ptr, ptr %37, i64 %7
  %39 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !53
  %41 = and i32 %40, 4194304
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %35
  %44 = tail call i32 @Perl_mg_set(ptr noundef nonnull %29) #10
  br label %45

45:                                               ; preds = %35, %43
  %46 = getelementptr inbounds ptr, ptr %38, i64 1
  store ptr %29, ptr %46, align 8, !tbaa !46
  %47 = load i8, ptr @PL_tainting, align 1, !tbaa !55, !range !57, !noundef !58
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @Perl_sv_magic(ptr noundef nonnull %29, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #10
  br label %50

50:                                               ; preds = %45, %49
  store ptr %46, ptr @PL_stack_sp, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Cwd_abs_path(ptr noundef %0) #0 !prof !34 !PGOFuncName !59 {
  %2 = alloca [4096 x i8], align 16
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %6 = load i32, ptr %4, align 4, !tbaa !47
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = icmp ugt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.14) #10
  br label %18

18:                                               ; preds = %1, %17
  %19 = icmp slt i32 %15, 1
  br i1 %19, label %25, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %22 = sext i32 %8 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  br label %25

25:                                               ; preds = %18, %20
  %26 = phi ptr [ %24, %20 ], [ null, %18 ]
  %27 = load ptr, ptr @PL_op, align 8, !tbaa !46
  %28 = getelementptr inbounds %struct.op, ptr %27, i64 0, i32 6
  %29 = load i8, ptr %28, align 1, !tbaa !49
  %30 = and i8 %29, 4
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %25
  %33 = load ptr, ptr @PL_curpad, align 8, !tbaa !46
  %34 = getelementptr inbounds %struct.op, ptr %27, i64 0, i32 3
  %35 = load i64, ptr %34, align 8, !tbaa !52
  %36 = getelementptr inbounds ptr, ptr %33, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  br label %40

38:                                               ; preds = %25
  %39 = tail call ptr @Perl_sv_newmortal() #10
  br label %40

40:                                               ; preds = %38, %32
  %41 = phi ptr [ %37, %32 ], [ %39, %38 ]
  %42 = icmp eq ptr %26, null
  br i1 %42, label %53, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !53
  %46 = and i32 %45, 2098176
  %47 = icmp eq i32 %46, 1024
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !41
  br label %53

51:                                               ; preds = %43
  %52 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %26, ptr noundef null, i32 noundef 2) #10
  br label %53

53:                                               ; preds = %40, %48, %51
  %54 = phi ptr [ %50, %48 ], [ %52, %51 ], [ @.str.15, %40 ]
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %2) #11
  %55 = call fastcc ptr @bsd_realpath(ptr noundef %54, ptr noundef nonnull %2) #12
  %56 = icmp eq ptr %55, null
  br i1 %56, label %69, label %57

57:                                               ; preds = %53
  call void @Perl_sv_setpv_mg(ptr noundef %41, ptr noundef nonnull %2) #10
  %58 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !53
  %60 = and i32 %59, 1610547455
  %61 = or disjoint i32 %60, 17408
  store i32 %61, ptr %58, align 4, !tbaa !53
  %62 = load i8, ptr @PL_tainting, align 1, !tbaa !55, !range !57, !noundef !58
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %66 = sext i32 %8 to i64
  %67 = getelementptr inbounds ptr, ptr %65, i64 %66
  store ptr %41, ptr %67, align 8, !tbaa !46
  br label %77

68:                                               ; preds = %57
  call void @Perl_sv_magic(ptr noundef nonnull %41, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #10
  br label %70

69:                                               ; preds = %53
  call void @Perl_sv_setsv_flags(ptr noundef %41, ptr noundef nonnull @PL_sv_undef, i32 noundef 2) #10
  br label %70

70:                                               ; preds = %68, %69
  %71 = load i8, ptr @PL_tainting, align 1, !tbaa !55
  %72 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %73 = sext i32 %8 to i64
  %74 = getelementptr inbounds ptr, ptr %72, i64 %73
  store ptr %41, ptr %74, align 8, !tbaa !46
  %75 = icmp eq i8 %71, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  call void @Perl_sv_magic(ptr noundef %41, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #10
  br label %77

77:                                               ; preds = %64, %70, %76
  %78 = phi ptr [ %67, %64 ], [ %74, %70 ], [ %74, %76 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %2) #11
  store ptr %78, ptr @PL_stack_sp, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_File__Spec__Unix_canonpath(ptr noundef %0) #0 !prof !34 !PGOFuncName !60 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %5 = load i32, ptr %3, align 4, !tbaa !47
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %7 = sext i32 %5 to i64
  %8 = getelementptr ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 3
  %13 = trunc i64 %12 to i32
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.17) #10
  br label %21

16:                                               ; preds = %1
  %17 = icmp eq i32 %13, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  %19 = getelementptr ptr, ptr %8, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  br label %21

21:                                               ; preds = %15, %16, %18
  %22 = phi ptr [ %20, %18 ], [ @PL_sv_undef, %16 ], [ @PL_sv_undef, %15 ]
  %23 = add nsw i32 %5, 1
  %24 = sext i32 %23 to i64
  %25 = tail call fastcc ptr @THX_unix_canonpath(ptr noundef %22) #12
  %26 = tail call ptr @Perl_sv_2mortal(ptr noundef %25) #10
  %27 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %28 = getelementptr inbounds ptr, ptr %27, i64 %24
  store ptr %26, ptr %28, align 8, !tbaa !46
  %29 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %30 = getelementptr inbounds ptr, ptr %29, i64 %24
  store ptr %30, ptr @PL_stack_sp, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_File__Spec__Unix__fn_canonpath(ptr nocapture readnone %0) #0 !prof !34 !PGOFuncName !61 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %5 = load i32, ptr %3, align 4, !tbaa !47
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 1
  %16 = sext i32 %7 to i64
  br i1 %15, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds ptr, ptr %6, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  br label %20

20:                                               ; preds = %1, %17
  %21 = phi ptr [ %19, %17 ], [ @PL_sv_undef, %1 ]
  %22 = tail call fastcc ptr @THX_unix_canonpath(ptr noundef %21) #12
  %23 = tail call ptr @Perl_sv_2mortal(ptr noundef %22) #10
  %24 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %25 = getelementptr inbounds ptr, ptr %24, i64 %16
  store ptr %23, ptr %25, align 8, !tbaa !46
  %26 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %27 = getelementptr inbounds ptr, ptr %26, i64 %16
  store ptr %27, ptr @PL_stack_sp, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_File__Spec__Unix_catdir(ptr noundef %0) #0 !prof !34 !PGOFuncName !62 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %5 = load i32, ptr %3, align 4, !tbaa !47
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.18) #10
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ %17, %16 ], [ %6, %1 ]
  %20 = sext i32 %7 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = load ptr, ptr @PL_stack_max, align 8, !tbaa !46
  %24 = ptrtoint ptr %23 to i64
  %25 = sub i64 %24, %10
  %26 = ashr exact i64 %25, 3
  %27 = shl i64 %12, 29
  %28 = add i64 %27, 4294967296
  %29 = ashr i64 %28, 32
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = tail call ptr @Perl_stack_grow(ptr noundef %2, ptr noundef %2, i64 noundef %29) #10
  %33 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  br label %34

34:                                               ; preds = %18, %31
  %35 = phi ptr [ %33, %31 ], [ %19, %18 ]
  %36 = phi ptr [ %32, %31 ], [ %2, %18 ]
  %37 = load ptr, ptr @my_cxt.0, align 8, !tbaa !42
  %38 = add nsw i32 %7, %14
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %35, i64 %39
  store ptr %37, ptr %40, align 8, !tbaa !46
  %41 = tail call ptr @Perl_sv_newmortal() #10
  %42 = load ptr, ptr @my_cxt.1, align 8, !tbaa !44
  %43 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %44 = getelementptr inbounds ptr, ptr %43, i64 %20
  %45 = getelementptr inbounds ptr, ptr %43, i64 %39
  tail call void @Perl_do_join(ptr noundef %41, ptr noundef %42, ptr noundef %44, ptr noundef %45) #10
  %46 = tail call fastcc zeroext i1 @THX_invocant_is_unix(ptr noundef %22) #12
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = tail call fastcc ptr @THX_unix_canonpath(ptr noundef %41) #12
  br label %78

49:                                               ; preds = %34
  tail call void @Perl_push_scope() #10
  %50 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %51 = getelementptr inbounds i32, ptr %50, i64 1
  store ptr %51, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %52 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !46
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = tail call ptr @Perl_markstack_grow() #10
  br label %56

56:                                               ; preds = %49, %54
  %57 = phi ptr [ %55, %54 ], [ %51, %49 ]
  %58 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %59 = ptrtoint ptr %36 to i64
  %60 = ptrtoint ptr %58 to i64
  %61 = sub i64 %59, %60
  %62 = lshr exact i64 %61, 3
  %63 = trunc i64 %62 to i32
  store i32 %63, ptr %57, align 4, !tbaa !47
  %64 = load ptr, ptr @PL_stack_max, align 8, !tbaa !46
  %65 = ptrtoint ptr %64 to i64
  %66 = sub i64 %65, %59
  %67 = icmp slt i64 %66, 16
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = tail call ptr @Perl_stack_grow(ptr noundef %36, ptr noundef %36, i64 noundef 2) #10
  br label %70

70:                                               ; preds = %56, %68
  %71 = phi ptr [ %69, %68 ], [ %36, %56 ]
  %72 = getelementptr inbounds ptr, ptr %71, i64 1
  store ptr %22, ptr %72, align 8, !tbaa !46
  %73 = getelementptr inbounds ptr, ptr %71, i64 2
  store ptr %41, ptr %73, align 8, !tbaa !46
  store ptr %73, ptr @PL_stack_sp, align 8, !tbaa !46
  %74 = tail call i32 @Perl_call_method(ptr noundef nonnull @.str.19, i32 noundef 2) #10
  %75 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %76 = load ptr, ptr %75, align 8, !tbaa !46
  tail call void @Perl_pop_scope() #10
  %77 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %76) #12
  br label %78

78:                                               ; preds = %70, %47
  %79 = phi ptr [ %48, %47 ], [ %76, %70 ]
  %80 = tail call ptr @Perl_sv_2mortal(ptr noundef %79) #10
  %81 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %82 = getelementptr inbounds ptr, ptr %81, i64 %20
  store ptr %80, ptr %82, align 8, !tbaa !46
  %83 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %84 = getelementptr inbounds ptr, ptr %83, i64 %20
  store ptr %84, ptr @PL_stack_sp, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_File__Spec__Unix__fn_catdir(ptr nocapture readnone %0) #0 !prof !34 !PGOFuncName !63 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %5 = load i32, ptr %3, align 4, !tbaa !47
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = load ptr, ptr @PL_stack_max, align 8, !tbaa !46
  %13 = ptrtoint ptr %12 to i64
  %14 = sub i64 %13, %9
  %15 = ashr exact i64 %14, 3
  %16 = shl i64 %11, 29
  %17 = add i64 %16, 4294967296
  %18 = ashr i64 %17, 32
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = tail call ptr @Perl_stack_grow(ptr noundef %2, ptr noundef %2, i64 noundef %18) #10
  %22 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  br label %23

23:                                               ; preds = %1, %20
  %24 = phi ptr [ %6, %1 ], [ %22, %20 ]
  %25 = lshr exact i64 %11, 3
  %26 = trunc i64 %25 to i32
  %27 = add nsw i32 %5, 1
  %28 = load ptr, ptr @my_cxt.0, align 8, !tbaa !42
  %29 = add nsw i32 %27, %26
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %24, i64 %30
  store ptr %28, ptr %31, align 8, !tbaa !46
  %32 = tail call ptr @Perl_sv_newmortal() #10
  %33 = load ptr, ptr @my_cxt.1, align 8, !tbaa !44
  %34 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %35 = getelementptr inbounds ptr, ptr %34, i64 %7
  %36 = getelementptr inbounds ptr, ptr %34, i64 %30
  tail call void @Perl_do_join(ptr noundef %32, ptr noundef %33, ptr noundef %35, ptr noundef %36) #10
  %37 = tail call fastcc ptr @THX_unix_canonpath(ptr noundef %32) #12
  %38 = tail call ptr @Perl_sv_2mortal(ptr noundef %37) #10
  %39 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %40 = sext i32 %27 to i64
  %41 = getelementptr inbounds ptr, ptr %39, i64 %40
  store ptr %38, ptr %41, align 8, !tbaa !46
  %42 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %43 = getelementptr inbounds ptr, ptr %42, i64 %40
  store ptr %43, ptr @PL_stack_sp, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_File__Spec__Unix_catfile(ptr noundef %0) #0 !prof !34 !PGOFuncName !64 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %6 = load i32, ptr %4, align 4, !tbaa !47
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.18) #10
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  br label %19

19:                                               ; preds = %17, %1
  %20 = phi ptr [ %18, %17 ], [ %7, %1 ]
  %21 = sext i32 %8 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = tail call fastcc zeroext i1 @THX_invocant_is_unix(ptr noundef %23) #12
  br i1 %24, label %25, label %59

25:                                               ; preds = %19
  %26 = icmp eq i32 %15, 1
  br i1 %26, label %141, label %27

27:                                               ; preds = %25
  %28 = add i32 %6, %15
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %20, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = tail call fastcc ptr @THX_unix_canonpath(ptr noundef %31) #12
  %33 = icmp eq i32 %15, 2
  br i1 %33, label %141, label %34

34:                                               ; preds = %27
  %35 = tail call ptr @Perl_sv_newmortal() #10
  %36 = tail call ptr @Perl_sv_2mortal(ptr noundef %32) #10
  %37 = load ptr, ptr @my_cxt.0, align 8, !tbaa !42
  %38 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %39 = getelementptr inbounds ptr, ptr %38, i64 %29
  store ptr %37, ptr %39, align 8, !tbaa !46
  %40 = load ptr, ptr @my_cxt.1, align 8, !tbaa !44
  %41 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %42 = getelementptr inbounds ptr, ptr %41, i64 %21
  %43 = getelementptr inbounds ptr, ptr %41, i64 %29
  tail call void @Perl_do_join(ptr noundef %35, ptr noundef %40, ptr noundef %42, ptr noundef %43) #10
  %44 = tail call fastcc ptr @THX_unix_canonpath(ptr noundef %35) #12
  %45 = load ptr, ptr %44, align 8, !tbaa !65
  %46 = getelementptr inbounds %struct.xpv, ptr %45, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !66
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %34
  %50 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !41
  %52 = getelementptr i8, ptr %51, i64 %47
  %53 = getelementptr i8, ptr %52, i64 -1
  %54 = load i8, ptr %53, align 1, !tbaa !41
  %55 = icmp eq i8 %54, 47
  br i1 %55, label %58, label %56

56:                                               ; preds = %49, %34
  %57 = load ptr, ptr @my_cxt.1, align 8, !tbaa !44
  tail call void @Perl_sv_catsv_flags(ptr noundef nonnull %44, ptr noundef %57, i32 noundef 2) #10
  br label %58

58:                                               ; preds = %56, %49
  tail call void @Perl_sv_catsv_flags(ptr noundef nonnull %44, ptr noundef %32, i32 noundef 2) #10
  br label %141

59:                                               ; preds = %19
  tail call void @Perl_push_scope() #10
  %60 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %61 = getelementptr inbounds i32, ptr %60, i64 1
  store ptr %61, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %62 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !46
  %63 = icmp eq ptr %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = tail call ptr @Perl_markstack_grow() #10
  br label %66

66:                                               ; preds = %59, %64
  %67 = phi ptr [ %65, %64 ], [ %61, %59 ]
  %68 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %69 = ptrtoint ptr %68 to i64
  %70 = sub i64 %11, %69
  %71 = lshr exact i64 %70, 3
  %72 = trunc i64 %71 to i32
  store i32 %72, ptr %67, align 4, !tbaa !47
  %73 = load ptr, ptr @PL_stack_max, align 8, !tbaa !46
  %74 = ptrtoint ptr %73 to i64
  %75 = sub i64 %74, %11
  %76 = icmp slt i64 %75, 16
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = tail call ptr @Perl_stack_grow(ptr noundef %3, ptr noundef %3, i64 noundef 2) #10
  br label %79

79:                                               ; preds = %66, %77
  %80 = phi ptr [ %78, %77 ], [ %3, %66 ]
  %81 = getelementptr inbounds ptr, ptr %80, i64 1
  store ptr %23, ptr %81, align 8, !tbaa !46
  %82 = icmp eq i32 %15, 1
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %85 = add i32 %6, %15
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds ptr, ptr %84, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !46
  br label %89

89:                                               ; preds = %79, %83
  %90 = phi ptr [ %88, %83 ], [ @PL_sv_undef, %79 ]
  %91 = getelementptr inbounds ptr, ptr %80, i64 2
  store ptr %90, ptr %91, align 8, !tbaa !46
  store ptr %91, ptr @PL_stack_sp, align 8, !tbaa !46
  %92 = tail call i32 @Perl_call_method(ptr noundef nonnull @.str.19, i32 noundef 2) #10
  %93 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %94 = load ptr, ptr %93, align 8, !tbaa !46
  tail call void @Perl_pop_scope() #10
  %95 = icmp slt i32 %15, 3
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %94) #12
  br label %141

98:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %99 = getelementptr inbounds ptr, ptr %93, i64 -2
  tail call void @Perl_push_scope() #10
  %100 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %101 = getelementptr inbounds i32, ptr %100, i64 1
  store ptr %101, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %102 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !46
  %103 = icmp eq ptr %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = tail call ptr @Perl_markstack_grow() #10
  br label %106

106:                                              ; preds = %98, %104
  %107 = phi ptr [ %105, %104 ], [ %101, %98 ]
  store i32 %6, ptr %107, align 4, !tbaa !47
  store ptr %99, ptr @PL_stack_sp, align 8, !tbaa !46
  %108 = tail call i32 @Perl_call_method(ptr noundef nonnull @.str.21, i32 noundef 2) #10
  %109 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %110 = load ptr, ptr %109, align 8, !tbaa !46
  tail call void @Perl_pop_scope() #10
  %111 = getelementptr inbounds %struct.sv, ptr %110, i64 0, i32 2
  %112 = load i32, ptr %111, align 4, !tbaa !53
  %113 = and i32 %112, 2098176
  %114 = icmp eq i32 %113, 1024
  br i1 %114, label %115, label %121

115:                                              ; preds = %106
  %116 = load ptr, ptr %110, align 8, !tbaa !65
  %117 = getelementptr inbounds %struct.xpv, ptr %116, i64 0, i32 2
  %118 = load i64, ptr %117, align 8, !tbaa !66
  store i64 %118, ptr %2, align 8, !tbaa !68
  %119 = getelementptr inbounds %struct.sv, ptr %110, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !41
  br label %124

121:                                              ; preds = %106
  %122 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %110, ptr noundef nonnull %2, i32 noundef 2) #10
  %123 = load i64, ptr %2, align 8, !tbaa !68
  br label %124

124:                                              ; preds = %121, %115
  %125 = phi i64 [ %123, %121 ], [ %118, %115 ]
  %126 = phi ptr [ %122, %121 ], [ %120, %115 ]
  %127 = icmp eq i64 %125, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = call ptr @Perl_newSVsv(ptr noundef nonnull %110) #10
  br label %136

130:                                              ; preds = %124
  %131 = add i64 %125, -1
  %132 = getelementptr inbounds i8, ptr %126, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !41
  %134 = icmp eq i8 %133, 47
  %135 = call ptr @Perl_newSVsv(ptr noundef nonnull %110) #10
  br i1 %134, label %139, label %136

136:                                              ; preds = %128, %130
  %137 = phi ptr [ %129, %128 ], [ %135, %130 ]
  %138 = load ptr, ptr @my_cxt.1, align 8, !tbaa !44
  call void @Perl_sv_catsv_flags(ptr noundef %137, ptr noundef %138, i32 noundef 2) #10
  br label %139

139:                                              ; preds = %136, %130
  %140 = phi ptr [ %137, %136 ], [ %135, %130 ]
  call void @Perl_sv_catsv_flags(ptr noundef %140, ptr noundef %94, i32 noundef 2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  br label %141

141:                                              ; preds = %96, %139, %58, %27, %25
  %142 = phi ptr [ @PL_sv_undef, %25 ], [ %44, %58 ], [ %32, %27 ], [ %94, %96 ], [ %140, %139 ]
  %143 = call ptr @Perl_sv_2mortal(ptr noundef %142) #10
  %144 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %145 = getelementptr inbounds ptr, ptr %144, i64 %21
  store ptr %143, ptr %145, align 8, !tbaa !46
  %146 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %147 = getelementptr inbounds ptr, ptr %146, i64 %21
  store ptr %147, ptr @PL_stack_sp, align 8, !tbaa !46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_File__Spec__Unix__fn_catfile(ptr nocapture readnone %0) #0 !prof !34 !PGOFuncName !69 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !46
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !46
  %5 = load i32, ptr %3, align 4, !tbaa !47
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 3
  %13 = trunc i64 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %47, label %15

15:                                               ; preds = %1
  %16 = add i32 %5, %13
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %6, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = tail call fastcc ptr @THX_unix_canonpath(ptr noundef %19) #12
  %21 = icmp eq i32 %13, 1
  br i1 %21, label %47, label %22

22:                                               ; preds = %15
  %23 = tail call ptr @Perl_sv_newmortal() #10
  %24 = tail call ptr @Perl_sv_2mortal(ptr noundef %20) #10
  %25 = load ptr, ptr @my_cxt.0, align 8, !tbaa !42
  %26 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %27 = getelementptr inbounds ptr, ptr %26, i64 %17
  store ptr %25, ptr %27, align 8, !tbaa !46
  %28 = load ptr, ptr @my_cxt.1, align 8, !tbaa !44
  %29 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %30 = getelementptr inbounds ptr, ptr %29, i64 %7
  %31 = getelementptr inbounds ptr, ptr %29, i64 %17
  tail call void @Perl_do_join(ptr noundef %23, ptr noundef %28, ptr noundef %30, ptr noundef %31) #10
  %32 = tail call fastcc ptr @THX_unix_canonpath(ptr noundef %23) #12
  %33 = load ptr, ptr %32, align 8, !tbaa !65
  %34 = getelementptr inbounds %struct.xpv, ptr %33, i64 0, i32 2
  %35 = load i64, ptr %34, align 8, !tbaa !66
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %22
  %38 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !41
  %40 = getelementptr i8, ptr %39, i64 %35
  %41 = getelementptr i8, ptr %40, i64 -1
  %42 = load i8, ptr %41, align 1, !tbaa !41
  %43 = icmp eq i8 %42, 47
  br i1 %43, label %46, label %44

44:                                               ; preds = %37, %22
  %45 = load ptr, ptr @my_cxt.1, align 8, !tbaa !44
  tail call void @Perl_sv_catsv_flags(ptr noundef nonnull %32, ptr noundef %45, i32 noundef 2) #10
  br label %46

46:                                               ; preds = %44, %37
  tail call void @Perl_sv_catsv_flags(ptr noundef nonnull %32, ptr noundef %20, i32 noundef 2) #10
  br label %47

47:                                               ; preds = %46, %15, %1
  %48 = phi ptr [ @PL_sv_undef, %1 ], [ %32, %46 ], [ %20, %15 ]
  %49 = add nsw i32 %5, 1
  %50 = tail call ptr @Perl_sv_2mortal(ptr noundef %48) #10
  %51 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %52 = sext i32 %49 to i64
  %53 = getelementptr inbounds ptr, ptr %51, i64 %52
  store ptr %50, ptr %53, align 8, !tbaa !46
  %54 = load ptr, ptr @PL_stack_base, align 8, !tbaa !46
  %55 = getelementptr inbounds ptr, ptr %54, i64 %52
  store ptr %55, ptr @PL_stack_sp, align 8, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_getcwd_sv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @bsd_realpath(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !34 !PGOFuncName !70 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #11
  %5 = tail call ptr @__errno_location() #13
  %6 = load i8, ptr %0, align 1, !tbaa !41
  %7 = icmp eq i8 %6, 47
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  store i8 47, ptr %1, align 1, !tbaa !41
  %9 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 0, ptr %9, align 1, !tbaa !41
  %10 = getelementptr inbounds i8, ptr %0, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !41
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %96, label %20

13:                                               ; preds = %2
  %14 = tail call ptr @getcwd(ptr noundef %1, i64 noundef 4096) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call i64 @Perl_my_strlcpy(ptr noundef %1, ptr noundef nonnull @.str.15, i64 noundef 4096) #10
  br label %96

18:                                               ; preds = %13
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  br label %20

20:                                               ; preds = %8, %18
  %21 = phi ptr [ %0, %18 ], [ %10, %8 ]
  %22 = phi i64 [ %19, %18 ], [ 1, %8 ]
  %23 = call i64 @Perl_my_strlcpy(ptr noundef nonnull %3, ptr noundef nonnull %21, i64 noundef 4096) #10
  %24 = icmp ugt i64 %23, 4095
  %25 = icmp ugt i64 %22, 4095
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = getelementptr i8, ptr %1, i64 -1
  %29 = icmp eq i64 %23, 0
  br i1 %29, label %87, label %30

30:                                               ; preds = %27
  %31 = ptrtoint ptr %3 to i64
  %32 = ptrtoint ptr %1 to i64
  br label %34

33:                                               ; preds = %20
  store i32 36, ptr %5, align 4, !tbaa !47
  br label %96

34:                                               ; preds = %30, %80
  %35 = phi i64 [ %23, %30 ], [ %47, %80 ]
  %36 = phi i64 [ %22, %30 ], [ %81, %80 ]
  %37 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %3, i32 noundef 47) #14
  %38 = icmp eq ptr %37, null
  %39 = getelementptr inbounds i8, ptr %3, i64 %35
  %40 = select i1 %38, ptr %39, ptr %37
  %41 = ptrtoint ptr %40 to i64
  %42 = sub i64 %41, %31
  %43 = icmp ugt i64 %42, 4095
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 36, ptr %5, align 4, !tbaa !47
  br label %96

45:                                               ; preds = %34
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %4, ptr nonnull align 16 %3, i64 %42, i1 false)
  %46 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 %42
  store i8 0, ptr %46, align 1, !tbaa !41
  %47 = sub i64 %35, %42
  br i1 %38, label %51, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds i8, ptr %37, i64 1
  %50 = add i64 %47, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %3, ptr nonnull align 1 %49, i64 %50, i1 false)
  br label %51

51:                                               ; preds = %48, %45
  %52 = getelementptr i8, ptr %1, i64 %36
  %53 = getelementptr i8, ptr %52, i64 -1
  %54 = load i8, ptr %53, align 1, !tbaa !41
  %55 = icmp eq i8 %54, 47
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = add i64 %36, 1
  %58 = icmp ugt i64 %57, 4095
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 36, ptr %5, align 4, !tbaa !47
  br label %96

60:                                               ; preds = %56
  store i8 47, ptr %52, align 1, !tbaa !41
  %61 = getelementptr inbounds i8, ptr %1, i64 %57
  store i8 0, ptr %61, align 1, !tbaa !41
  br label %62

62:                                               ; preds = %60, %51
  %63 = phi i64 [ %57, %60 ], [ %36, %51 ]
  %64 = load i8, ptr %4, align 16, !tbaa !41
  %65 = icmp eq i8 %64, 0
  %66 = load i16, ptr %4, align 16
  %67 = icmp eq i16 %66, 46
  %68 = select i1 %65, i1 true, i1 %67
  br i1 %68, label %80, label %69

69:                                               ; preds = %62
  %70 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %4, ptr noundef nonnull dereferenceable(3) @.str.16, i64 3)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = icmp ugt i64 %63, 1
  br i1 %73, label %74, label %80

74:                                               ; preds = %72
  %75 = getelementptr i8, ptr %28, i64 %63
  store i8 0, ptr %75, align 1, !tbaa !41
  %76 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 47) #14
  %77 = getelementptr inbounds i8, ptr %76, i64 1
  store i8 0, ptr %77, align 1, !tbaa !41
  %78 = ptrtoint ptr %77 to i64
  %79 = sub i64 %78, %32
  br label %80

80:                                               ; preds = %72, %74, %62, %83
  %81 = phi i64 [ %63, %62 ], [ %84, %83 ], [ %79, %74 ], [ %63, %72 ]
  %82 = icmp eq i64 %47, 0
  br i1 %82, label %87, label %34, !llvm.loop !71

83:                                               ; preds = %69
  %84 = call i64 @Perl_my_strlcat(ptr noundef nonnull %1, ptr noundef nonnull %4, i64 noundef 4096) #10
  %85 = icmp ugt i64 %84, 4095
  br i1 %85, label %86, label %80

86:                                               ; preds = %83
  store i32 36, ptr %5, align 4, !tbaa !47
  br label %96

87:                                               ; preds = %80, %27
  %88 = phi i64 [ %22, %27 ], [ %81, %80 ]
  %89 = icmp ugt i64 %88, 1
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = getelementptr i8, ptr %1, i64 %88
  %92 = getelementptr i8, ptr %91, i64 -1
  %93 = load i8, ptr %92, align 1, !tbaa !41
  %94 = icmp eq i8 %93, 47
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i8 0, ptr %92, align 1, !tbaa !41
  br label %96

96:                                               ; preds = %87, %90, %95, %8, %86, %59, %44, %33, %16
  %97 = phi ptr [ null, %33 ], [ null, %44 ], [ null, %59 ], [ null, %86 ], [ null, %16 ], [ %1, %8 ], [ %1, %95 ], [ %1, %90 ], [ %1, %87 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #11
  ret ptr %97
}

; Function Attrs: optsize
declare void @Perl_sv_setpv_mg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @Perl_my_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i64 @Perl_my_strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @THX_unix_canonpath(ptr noundef %0) unnamed_addr #0 !prof !34 !PGOFuncName !73 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !53
  %5 = and i32 %4, 2097152
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @Perl_mg_get(ptr noundef nonnull %0) #10
  %9 = load i32, ptr %3, align 4, !tbaa !53
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi i32 [ %4, %1 ], [ %9, %7 ]
  %12 = and i32 %11, 65280
  %13 = icmp ne i32 %12, 0
  %14 = and i32 %11, 255
  %15 = icmp eq i32 %14, 8
  %16 = or i1 %13, %15
  %17 = and i32 %11, 16777471
  %18 = icmp eq i32 %17, 16777226
  %19 = or i1 %18, %16
  br i1 %19, label %20, label %152

20:                                               ; preds = %10
  %21 = and i32 %11, 2098176
  %22 = icmp eq i32 %21, 1024
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load ptr, ptr %0, align 8, !tbaa !65
  %25 = getelementptr inbounds %struct.xpv, ptr %24, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !66
  store i64 %26, ptr %2, align 8, !tbaa !68
  %27 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !41
  br label %32

29:                                               ; preds = %20
  %30 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0) #10
  %31 = load i64, ptr %2, align 8, !tbaa !68
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi i64 [ %31, %29 ], [ %26, %23 ]
  %34 = phi ptr [ %30, %29 ], [ %28, %23 ]
  %35 = icmp eq i64 %33, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.12, i64 noundef 0) #10
  br label %152

38:                                               ; preds = %32
  %39 = getelementptr inbounds i8, ptr %34, i64 %33
  %40 = call ptr @Perl_newSV(i64 noundef %33) #10
  %41 = load i32, ptr %3, align 4, !tbaa !53
  %42 = and i32 %41, 536870912
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !53
  %47 = or i32 %46, 536870912
  store i32 %47, ptr %45, align 4, !tbaa !53
  br label %48

48:                                               ; preds = %44, %38
  %49 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !41
  %51 = load i8, ptr %34, align 1, !tbaa !41
  switch i8 %51, label %95 [
    i8 47, label %52
    i8 46, label %76
  ]

52:                                               ; preds = %48
  %53 = getelementptr inbounds i8, ptr %50, i64 1
  store i8 47, ptr %50, align 1, !tbaa !41
  br label %54

54:                                               ; preds = %58, %52
  %55 = phi ptr [ %34, %52 ], [ %59, %58 ]
  %56 = getelementptr inbounds i8, ptr %55, i64 1
  %57 = load i8, ptr %56, align 1, !tbaa !41
  switch i8 %57, label %95 [
    i8 47, label %58
    i8 46, label %60
  ]

58:                                               ; preds = %54, %74, %64, %67, %70
  %59 = phi ptr [ %56, %54 ], [ %56, %70 ], [ %61, %67 ], [ %61, %64 ], [ %56, %74 ]
  br label %54

60:                                               ; preds = %54
  %61 = getelementptr inbounds i8, ptr %55, i64 2
  %62 = load i8, ptr %61, align 1, !tbaa !41
  %63 = icmp eq i8 %62, 46
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, ptr %55, i64 3
  %66 = icmp eq ptr %65, %39
  br i1 %66, label %58, label %67

67:                                               ; preds = %64
  %68 = load i8, ptr %65, align 1, !tbaa !41
  %69 = icmp eq i8 %68, 47
  br i1 %69, label %58, label %74

70:                                               ; preds = %60
  %71 = icmp eq ptr %61, %39
  %72 = icmp eq i8 %62, 47
  %73 = or i1 %71, %72
  br i1 %73, label %58, label %95

74:                                               ; preds = %67
  %75 = icmp eq ptr %61, %39
  br i1 %75, label %58, label %95

76:                                               ; preds = %48
  %77 = getelementptr inbounds i8, ptr %34, i64 1
  %78 = load i8, ptr %77, align 1, !tbaa !41
  %79 = icmp eq i8 %78, 47
  br i1 %79, label %80, label %95

80:                                               ; preds = %76, %87
  %81 = phi ptr [ %85, %87 ], [ %34, %76 ]
  %82 = getelementptr inbounds i8, ptr %81, i64 1
  br label %83

83:                                               ; preds = %83, %80
  %84 = phi ptr [ %82, %80 ], [ %85, %83 ]
  %85 = getelementptr inbounds i8, ptr %84, i64 1
  %86 = load i8, ptr %85, align 1, !tbaa !41
  switch i8 %86, label %91 [
    i8 47, label %83
    i8 46, label %87
  ]

87:                                               ; preds = %83
  %88 = getelementptr inbounds i8, ptr %84, i64 2
  %89 = load i8, ptr %88, align 1, !tbaa !41
  %90 = icmp eq i8 %89, 47
  br i1 %90, label %80, label %91, !llvm.loop !74

91:                                               ; preds = %87, %83
  %92 = icmp eq ptr %85, %39
  br i1 %92, label %93, label %95

93:                                               ; preds = %91
  %94 = getelementptr inbounds i8, ptr %50, i64 1
  store i8 46, ptr %50, align 1, !tbaa !41
  br label %141

95:                                               ; preds = %74, %70, %54, %48, %76, %91
  %96 = phi ptr [ %85, %91 ], [ %34, %76 ], [ %34, %48 ], [ %56, %54 ], [ %56, %70 ], [ %56, %74 ]
  %97 = phi ptr [ %50, %91 ], [ %50, %76 ], [ %50, %48 ], [ %53, %54 ], [ %53, %70 ], [ %53, %74 ]
  %98 = icmp eq ptr %96, %39
  br i1 %98, label %141, label %99

99:                                               ; preds = %95
  %100 = ptrtoint ptr %39 to i64
  %101 = ptrtoint ptr %96 to i64
  %102 = sub i64 %100, %101
  %103 = call ptr @memchr(ptr noundef nonnull %96, i32 noundef 47, i64 noundef %102) #14
  %104 = icmp eq ptr %103, null
  %105 = select i1 %104, ptr %39, ptr %103
  %106 = ptrtoint ptr %105 to i64
  %107 = sub i64 %106, %101
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %97, ptr nonnull align 1 %96, i64 %107, i1 false)
  %108 = getelementptr inbounds i8, ptr %97, i64 %107
  %109 = icmp eq ptr %105, %39
  br i1 %109, label %141, label %110

110:                                              ; preds = %99, %130
  %111 = phi ptr [ %139, %130 ], [ %108, %99 ]
  %112 = phi ptr [ %136, %130 ], [ %105, %99 ]
  br label %113

113:                                              ; preds = %118, %110
  %114 = phi ptr [ %112, %110 ], [ %119, %118 ]
  %115 = getelementptr inbounds i8, ptr %114, i64 1
  %116 = load i8, ptr %115, align 1, !tbaa !41
  %117 = icmp eq i8 %116, 47
  br i1 %117, label %118, label %120

118:                                              ; preds = %113, %127
  %119 = phi ptr [ %115, %113 ], [ %125, %127 ]
  br label %113, !llvm.loop !75

120:                                              ; preds = %113
  %121 = icmp eq ptr %115, %39
  br i1 %121, label %141, label %122

122:                                              ; preds = %120
  %123 = icmp eq i8 %116, 46
  br i1 %123, label %124, label %130

124:                                              ; preds = %122
  %125 = getelementptr inbounds i8, ptr %114, i64 2
  %126 = icmp eq ptr %125, %39
  br i1 %126, label %141, label %127

127:                                              ; preds = %124
  %128 = load i8, ptr %125, align 1, !tbaa !41
  %129 = icmp eq i8 %128, 47
  br i1 %129, label %118, label %130

130:                                              ; preds = %127, %122
  %131 = getelementptr inbounds i8, ptr %111, i64 1
  store i8 47, ptr %111, align 1, !tbaa !41
  %132 = ptrtoint ptr %115 to i64
  %133 = sub i64 %100, %132
  %134 = call ptr @memchr(ptr noundef nonnull %115, i32 noundef 47, i64 noundef %133) #14
  %135 = icmp eq ptr %134, null
  %136 = select i1 %135, ptr %39, ptr %134
  %137 = ptrtoint ptr %136 to i64
  %138 = sub i64 %137, %132
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %131, ptr nonnull align 1 %115, i64 %138, i1 false)
  %139 = getelementptr inbounds i8, ptr %131, i64 %138
  %140 = icmp eq ptr %136, %39
  br i1 %140, label %141, label %110

141:                                              ; preds = %130, %124, %120, %93, %99, %95
  %142 = phi ptr [ %97, %95 ], [ %108, %99 ], [ %94, %93 ], [ %111, %120 ], [ %111, %124 ], [ %139, %130 ]
  store i8 0, ptr %142, align 1, !tbaa !41
  %143 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 2
  %144 = load i32, ptr %143, align 4, !tbaa !53
  %145 = or i32 %144, 17408
  store i32 %145, ptr %143, align 4, !tbaa !53
  %146 = load ptr, ptr %49, align 8, !tbaa !41
  %147 = ptrtoint ptr %142 to i64
  %148 = ptrtoint ptr %146 to i64
  %149 = sub i64 %147, %148
  %150 = load ptr, ptr %40, align 8, !tbaa !65
  %151 = getelementptr inbounds %struct.xpv, ptr %150, i64 0, i32 2
  store i64 %149, ptr %151, align 8, !tbaa !66
  br label %152

152:                                              ; preds = %10, %141, %36
  %153 = phi ptr [ %37, %36 ], [ %40, %141 ], [ @PL_sv_undef, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret ptr %153
}

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_do_join(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i1 @THX_invocant_is_unix(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !34 !PGOFuncName !76 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !53
  %4 = and i32 %3, 1024
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.xpv, ptr %7, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !66
  %10 = icmp eq i64 %9, 16
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %13, ptr noundef nonnull dereferenceable(16) @.str.20, i64 16)
  %15 = icmp eq i32 %14, 0
  br label %16

16:                                               ; preds = %11, %6, %1
  %17 = phi i1 [ false, %6 ], [ false, %1 ], [ %15, %11 ]
  ret i1 %17
}

; Function Attrs: optsize
declare void @Perl_push_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_markstack_grow() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_call_method(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_pop_scope() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #8 !prof !34 !PGOFuncName !77 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !78
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !78
  br label %7

7:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: optsize
declare void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize willreturn memory(none) }
attributes #14 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"cv", !37, i64 0, !40, i64 8, !40, i64 12, !38, i64 16}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!38, !38, i64 0}
!42 = !{!43, !37, i64 0}
!43 = !{!"", !37, i64 0, !37, i64 8}
!44 = !{!43, !37, i64 8}
!45 = !{!"Cwd.c:XS_Cwd_CLONE"}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !40, i64 0}
!48 = !{!"Cwd.c:XS_Cwd_getcwd"}
!49 = !{!50, !38, i64 35}
!50 = !{!"op", !37, i64 0, !37, i64 8, !37, i64 16, !51, i64 24, !40, i64 32, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !40, i64 33, !38, i64 34, !38, i64 35}
!51 = !{!"long", !38, i64 0}
!52 = !{!50, !51, i64 24}
!53 = !{!54, !40, i64 12}
!54 = !{!"sv", !37, i64 0, !40, i64 8, !40, i64 12, !38, i64 16}
!55 = !{!56, !56, i64 0}
!56 = !{!"_Bool", !38, i64 0}
!57 = !{i8 0, i8 2}
!58 = !{}
!59 = !{!"Cwd.c:XS_Cwd_abs_path"}
!60 = !{!"Cwd.c:XS_File__Spec__Unix_canonpath"}
!61 = !{!"Cwd.c:XS_File__Spec__Unix__fn_canonpath"}
!62 = !{!"Cwd.c:XS_File__Spec__Unix_catdir"}
!63 = !{!"Cwd.c:XS_File__Spec__Unix__fn_catdir"}
!64 = !{!"Cwd.c:XS_File__Spec__Unix_catfile"}
!65 = !{!54, !37, i64 0}
!66 = !{!67, !51, i64 16}
!67 = !{!"xpv", !37, i64 0, !38, i64 8, !51, i64 16, !38, i64 24}
!68 = !{!51, !51, i64 0}
!69 = !{!"Cwd.c:XS_File__Spec__Unix__fn_catfile"}
!70 = !{!"Cwd.c:bsd_realpath"}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!"Cwd.c:THX_unix_canonpath"}
!74 = distinct !{!74, !72}
!75 = distinct !{!75, !72}
!76 = !{!"Cwd.c:THX_invocant_is_unix"}
!77 = !{!"Cwd.c:S_SvREFCNT_inc"}
!78 = !{!54, !40, i64 8}
