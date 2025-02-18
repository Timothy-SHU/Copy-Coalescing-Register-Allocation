; ModuleID = 'ext/File-Glob/Glob.c'
source_filename = "ext/File-Glob/Glob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.iv_s = type { ptr, i32, i64 }
%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.he = type { ptr, ptr, %union.anon.10 }
%union.anon.10 = type { ptr }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.0 }
%union._xmgu = type { ptr }
%union.anon.0 = type { i64 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.1, %union._xivu }
%union.anon.1 = type { i64 }
%union._xivu = type { i64 }
%struct.cv = type { ptr, i32, i32, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.3 }
%union.anon.3 = type { ptr }
%struct.glob_t = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.av = type { ptr, i32, i32, %union.anon.2 }
%union.anon.2 = type { ptr }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }

@.str = private unnamed_addr constant [21 x i8] c"ext/File-Glob/Glob.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"File::Glob::GLOB_ERROR\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"File::Glob::bsd_glob\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"File::Glob::csh_glob\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"File::Glob::bsd_glob_override\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"File::Glob::AUTOLOAD\00", align 1
@PL_globhook = external local_unnamed_addr global ptr, align 8
@my_cxt.0 = internal unnamed_addr global i32 0, align 8
@my_cxt.1 = internal unnamed_addr global ptr null, align 8
@my_cxt.2 = internal unnamed_addr global ptr null, align 8
@PL_opfreehook = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"File::Glob::\00", align 1
@boot_File__Glob.values_for_iv = internal unnamed_addr constant [16 x %struct.iv_s] [%struct.iv_s { ptr @.str.8, i32 10, i64 -2 }, %struct.iv_s { ptr @.str.9, i32 14, i64 8192 }, %struct.iv_s { ptr @.str.10, i32 15, i64 64 }, %struct.iv_s { ptr @.str.11, i32 10, i64 128 }, %struct.iv_s { ptr @.str.12, i32 8, i64 4 }, %struct.iv_s { ptr @.str.13, i32 10, i64 16384 }, %struct.iv_s { ptr @.str.14, i32 9, i64 8 }, %struct.iv_s { ptr @.str.15, i32 11, i64 4096 }, %struct.iv_s { ptr @.str.16, i32 12, i64 16 }, %struct.iv_s { ptr @.str.17, i32 12, i64 512 }, %struct.iv_s { ptr @.str.18, i32 11, i64 32 }, %struct.iv_s { ptr @.str.19, i32 12, i64 -1 }, %struct.iv_s { ptr @.str.20, i32 10, i64 1024 }, %struct.iv_s { ptr @.str.21, i32 10, i64 2048 }, %struct.iv_s { ptr @.str.22, i32 8, i64 11904 }, %struct.iv_s zeroinitializer], align 16
@.str.8 = private unnamed_addr constant [11 x i8] c"GLOB_ABEND\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"GLOB_ALPHASORT\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"GLOB_ALTDIRFUNC\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"GLOB_BRACE\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"GLOB_ERR\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"GLOB_LIMIT\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"GLOB_MARK\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"GLOB_NOCASE\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"GLOB_NOCHECK\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"GLOB_NOMAGIC\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"GLOB_NOSORT\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"GLOB_NOSPACE\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"GLOB_QUOTE\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"GLOB_TILDE\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"GLOB_CSH\00", align 1
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_op = external global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [16 x i8] c"pattern_sv, ...\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"bsd_glob\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"File::Glob::DEFAULT_FLAGS\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"Invalid \\0 character in %s for %s: %s\\0%s\00", align 1
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@PL_tainted = external local_unnamed_addr global i8, align 1
@PL_tainting = external local_unnamed_addr global i8, align 1
@PL_sv_undef = external global %struct.sv, align 8
@PL_defgv = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [5 x i8] c"glob\00", align 1
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@PL_curcop = external local_unnamed_addr global ptr, align 8
@.str.30 = private unnamed_addr constant [52 x i8] c"%-p is not a valid File::Glob macro at %-p line %d\0A\00", align 1
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@PL_phase = external local_unnamed_addr global i32, align 4
@.str.31 = private unnamed_addr constant [40 x i8] c"Couldn't add key '%s' to %%File::Glob::\00", align 1

; Function Attrs: cold nounwind uwtable
define dso_local void @boot_File__Glob(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  %3 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_File__Glob_GLOB_ERROR) #8
  %4 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.3, ptr noundef nonnull @XS_File__Glob_bsd_glob) #8
  %5 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_File__Glob_csh_glob) #8
  %6 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.5, ptr noundef nonnull @XS_File__Glob_bsd_glob_override) #8
  %7 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_File__Glob_AUTOLOAD) #8
  store ptr @csh_glob_iter, ptr @PL_globhook, align 8, !tbaa !35
  store ptr null, ptr @my_cxt.1, align 8, !tbaa !39
  %8 = load ptr, ptr @PL_opfreehook, align 8, !tbaa !35
  store ptr %8, ptr @my_cxt.2, align 8, !tbaa !42
  store ptr @glob_ophook, ptr @PL_opfreehook, align 8, !tbaa !35
  %9 = tail call ptr @Perl_get_hv(ptr noundef nonnull @.str.7, i32 noundef 1) #8
  br label %10

10:                                               ; preds = %1, %44
  %11 = phi ptr [ @.str.8, %1 ], [ %46, %44 ]
  %12 = phi ptr [ @boot_File__Glob.values_for_iv, %1 ], [ %45, %44 ]
  %13 = getelementptr inbounds %struct.iv_s, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct.iv_s, ptr %12, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !46
  %17 = tail call ptr @Perl_newSViv(i64 noundef %16) #8
  %18 = tail call ptr @Perl_hv_common_key_len(ptr noundef %9, ptr noundef nonnull %11, i32 noundef %14, i32 noundef 16, ptr noundef null, i32 noundef 0) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.31, ptr noundef nonnull %11) #8
  br label %21

21:                                               ; preds = %20, %10
  %22 = getelementptr inbounds %struct.he, ptr %18, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !48
  %26 = freeze i32 %25
  %27 = and i32 %26, 65280
  %28 = icmp ne i32 %27, 0
  %29 = and i32 %26, 16777471
  %30 = icmp eq i32 %29, 16777226
  %31 = or i1 %28, %30
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  %33 = trunc i32 %26 to i8
  switch i8 %33, label %37 [
    i8 9, label %34
    i8 8, label %34
    i8 0, label %36
  ]

34:                                               ; preds = %32, %32, %21
  %35 = tail call ptr @Perl_newCONSTSUB(ptr noundef %9, ptr noundef nonnull %11, ptr noundef %17) #8
  br label %44

36:                                               ; preds = %32
  tail call void @Perl_sv_upgrade(ptr noundef %23, i32 noundef 1) #8
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 3
  store ptr %17, ptr %38, align 8, !tbaa !47
  %39 = load i32, ptr %24, align 4, !tbaa !48
  %40 = or i32 %39, 2048
  store i32 %40, ptr %24, align 4, !tbaa !48
  %41 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !48
  %43 = or i32 %42, 134217728
  store i32 %43, ptr %41, align 4, !tbaa !48
  br label %44

44:                                               ; preds = %34, %37
  %45 = getelementptr inbounds %struct.iv_s, ptr %12, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !50
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %10, !llvm.loop !51

48:                                               ; preds = %44
  tail call void @Perl_mro_method_changed_in(ptr noundef %9) #8
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_newXS_deffile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal void @XS_File__Glob_GLOB_ERROR(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !54
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.23) #8
  br label %15

15:                                               ; preds = %14, %1
  %16 = load ptr, ptr @PL_op, align 8, !tbaa !35
  %17 = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 6
  %18 = load i8, ptr %17, align 1, !tbaa !55
  %19 = and i8 %18, 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr @PL_curpad, align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !57
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  br label %29

27:                                               ; preds = %15
  %28 = tail call ptr @Perl_sv_newmortal() #8
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi ptr [ %26, %21 ], [ %28, %27 ]
  %31 = load i32, ptr @my_cxt.0, align 8, !tbaa !58
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %33 = sext i32 %31 to i64
  tail call void @Perl_sv_setiv(ptr noundef %30, i64 noundef %33) #8
  %34 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !48
  %36 = and i32 %35, 4194304
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %29
  %39 = tail call i32 @Perl_mg_set(ptr noundef %30) #8
  br label %40

40:                                               ; preds = %29, %38
  %41 = add nsw i32 %5, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %32, i64 %42
  store ptr %30, ptr %43, align 8, !tbaa !35
  %44 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %45 = getelementptr inbounds ptr, ptr %44, i64 %42
  store ptr %45, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_File__Glob_bsd_glob(ptr noundef %0) #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %6 = load i32, ptr %4, align 4, !tbaa !54
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 3
  %15 = trunc i64 %14 to i32
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.24) #8
  br label %18

18:                                               ; preds = %17, %1
  %19 = shl i64 %13, 29
  %20 = ashr i64 %19, 32
  %21 = sub nsw i64 0, %20
  %22 = getelementptr inbounds ptr, ptr %3, i64 %21
  %23 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %24 = sext i32 %8 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  %27 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !48
  %29 = and i32 %28, 2098176
  %30 = icmp eq i32 %29, 1024
  br i1 %30, label %31, label %37

31:                                               ; preds = %18
  %32 = load ptr, ptr %26, align 8, !tbaa !59
  %33 = getelementptr inbounds %struct.xpv, ptr %32, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !60
  store i64 %34, ptr %2, align 8, !tbaa !62
  %35 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !47
  br label %39

37:                                               ; preds = %18
  %38 = call ptr @Perl_sv_2pv_flags(ptr noundef %26, ptr noundef nonnull %2, i32 noundef 2) #8
  br label %39

39:                                               ; preds = %37, %31
  %40 = phi ptr [ %36, %31 ], [ %38, %37 ]
  %41 = load i64, ptr %2, align 8, !tbaa !62
  %42 = call fastcc zeroext i1 @S_is_safe_syscall(ptr noundef %40, i64 noundef %41, ptr noundef nonnull @.str.26)
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %45 = getelementptr inbounds ptr, ptr %44, i64 %24
  %46 = getelementptr inbounds ptr, ptr %45, i64 -1
  store ptr %46, ptr @PL_stack_sp, align 8, !tbaa !35
  br label %85

47:                                               ; preds = %39
  %48 = icmp sgt i32 %15, 1
  br i1 %48, label %49, label %68

49:                                               ; preds = %47
  %50 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %51 = getelementptr ptr, ptr %50, i64 %9
  %52 = getelementptr ptr, ptr %51, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !35
  %54 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !48
  %56 = and i32 %55, 2097408
  %57 = icmp eq i32 %56, 256
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load ptr, ptr %53, align 8, !tbaa !59
  %60 = getelementptr inbounds %struct.xpviv, ptr %59, i64 0, i32 4
  %61 = load i64, ptr %60, align 8, !tbaa !47
  br label %64

62:                                               ; preds = %49
  %63 = call i64 @Perl_sv_2iv_flags(ptr noundef %53, i32 noundef 2) #8
  br label %64

64:                                               ; preds = %62, %58
  %65 = phi i64 [ %61, %58 ], [ %63, %62 ]
  %66 = trunc i64 %65 to i32
  %67 = and i32 %66, -324
  br label %83

68:                                               ; preds = %47
  %69 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.27, i32 noundef 1) #8
  %70 = getelementptr inbounds %struct.sv, ptr %69, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !48
  %72 = and i32 %71, 2097408
  %73 = icmp eq i32 %72, 256
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load ptr, ptr %69, align 8, !tbaa !59
  %76 = getelementptr inbounds %struct.xpviv, ptr %75, i64 0, i32 4
  %77 = load i64, ptr %76, align 8, !tbaa !47
  br label %80

78:                                               ; preds = %68
  %79 = call i64 @Perl_sv_2iv_flags(ptr noundef %69, i32 noundef 2) #8
  br label %80

80:                                               ; preds = %78, %74
  %81 = phi i64 [ %77, %74 ], [ %79, %78 ]
  %82 = trunc i64 %81 to i32
  br label %83

83:                                               ; preds = %80, %64
  %84 = phi i32 [ %67, %64 ], [ %82, %80 ]
  store ptr %22, ptr @PL_stack_sp, align 8, !tbaa !35
  call fastcc void @doglob(ptr noundef %40, i32 noundef %84)
  br label %85

85:                                               ; preds = %83, %43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_File__Glob_csh_glob(ptr nocapture readnone %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !54
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = shl i64 %11, 29
  %13 = ashr i64 %12, 32
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds ptr, ptr %2, i64 %14
  %16 = and i64 %11, 34359738360
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds ptr, ptr %15, i64 1
  br label %31

20:                                               ; preds = %1
  %21 = load ptr, ptr @PL_stack_max, align 8, !tbaa !35
  %22 = ptrtoint ptr %21 to i64
  %23 = ptrtoint ptr %15 to i64
  %24 = sub i64 %22, %23
  %25 = icmp slt i64 %24, 8
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = tail call ptr @Perl_stack_grow(ptr noundef %15, ptr noundef %15, i64 noundef 1) #8
  br label %28

28:                                               ; preds = %20, %26
  %29 = phi ptr [ %27, %26 ], [ %15, %20 ]
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  store ptr @PL_sv_undef, ptr %30, align 8, !tbaa !35
  br label %31

31:                                               ; preds = %28, %18
  %32 = phi ptr [ %19, %18 ], [ %30, %28 ]
  store ptr %32, ptr @PL_stack_sp, align 8, !tbaa !35
  tail call fastcc void @iterate(ptr noundef nonnull @csh_glob)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_File__Glob_bsd_glob_override(ptr nocapture readnone %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !54
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = shl i64 %11, 29
  %13 = ashr i64 %12, 32
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds ptr, ptr %2, i64 %14
  %16 = and i64 %11, 34359738360
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds ptr, ptr %15, i64 1
  br label %31

20:                                               ; preds = %1
  %21 = load ptr, ptr @PL_stack_max, align 8, !tbaa !35
  %22 = ptrtoint ptr %21 to i64
  %23 = ptrtoint ptr %15 to i64
  %24 = sub i64 %22, %23
  %25 = icmp slt i64 %24, 8
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = tail call ptr @Perl_stack_grow(ptr noundef %15, ptr noundef %15, i64 noundef 1) #8
  br label %28

28:                                               ; preds = %20, %26
  %29 = phi ptr [ %27, %26 ], [ %15, %20 ]
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  store ptr @PL_sv_undef, ptr %30, align 8, !tbaa !35
  br label %31

31:                                               ; preds = %28, %18
  %32 = phi ptr [ %19, %18 ], [ %30, %28 ]
  store ptr %32, ptr @PL_stack_sp, align 8, !tbaa !35
  tail call fastcc void @iterate(ptr noundef nonnull @doglob_iter_wrapper)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_File__Glob_AUTOLOAD(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %5 = load i32, ptr %3, align 4, !tbaa !54
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.23) #8
  br label %15

15:                                               ; preds = %14, %1
  %16 = getelementptr inbounds %struct.cv, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = load ptr, ptr %0, align 8, !tbaa !63
  %19 = getelementptr inbounds %struct.xpv, ptr %18, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !60
  %21 = getelementptr inbounds %struct.cv, ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !65
  %23 = and i32 %22, 536870912
  %24 = or disjoint i32 %23, 524288
  %25 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %17, i64 noundef %20, i32 noundef %24) #8
  %26 = load ptr, ptr @PL_curcop, align 8, !tbaa !35
  %27 = getelementptr inbounds %struct.cop, ptr %26, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !66
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.gv, ptr %28, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  %33 = load ptr, ptr %32, align 8, !tbaa !68
  br label %34

34:                                               ; preds = %15, %30
  %35 = phi ptr [ %33, %30 ], [ null, %15 ]
  %36 = shl i64 %11, 29
  %37 = ashr i64 %36, 32
  %38 = sub nsw i64 0, %37
  %39 = getelementptr inbounds ptr, ptr %2, i64 %38
  %40 = getelementptr inbounds %struct.cop, ptr %26, i64 0, i32 7
  %41 = load i32, ptr %40, align 4, !tbaa !70
  %42 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.30, ptr noundef %25, ptr noundef %35, i32 noundef %41) #8
  %43 = tail call ptr @Perl_sv_2mortal(ptr noundef %42) #8
  tail call void @Perl_croak_sv(ptr noundef %43) #8
  store ptr %39, ptr @PL_stack_sp, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @csh_glob_iter() #0 !prof !34 {
  tail call fastcc void @iterate(ptr noundef nonnull @csh_glob)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @glob_ophook(ptr noundef %0) #0 !prof !34 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !35
  %3 = load i32, ptr @PL_phase, align 4, !tbaa !54
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @my_cxt.1, align 8, !tbaa !39
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.op, ptr %0, i64 0, i32 4
  %10 = load i16, ptr %9, align 8
  %11 = and i16 %10, 511
  switch i16 %11, label %14 [
    i16 25, label %12
    i16 185, label %12
  ]

12:                                               ; preds = %8, %8
  %13 = call ptr @Perl_hv_common_key_len(ptr noundef nonnull %6, ptr noundef nonnull %2, i32 noundef 8, i32 noundef 68, ptr noundef null, i32 noundef 0) #8
  br label %14

14:                                               ; preds = %8, %12, %5
  %15 = load ptr, ptr @my_cxt.2, align 8, !tbaa !42
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %2, align 8, !tbaa !35
  call void %15(ptr noundef %18) #8
  br label %19

19:                                               ; preds = %1, %17, %14
  ret void
}

declare ptr @Perl_get_hv(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

declare void @Perl_mro_method_changed_in(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i1 @S_is_safe_syscall(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !34 {
  %4 = icmp ugt i64 %1, 1
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = add i64 %1, -1
  %7 = tail call ptr @memchr(ptr noundef %0, i32 noundef 0, i64 noundef %6) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @__errno_location() #10
  store i32 2, ptr %10, align 4, !tbaa !54
  %11 = getelementptr inbounds i8, ptr %7, i64 1
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 59, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.25, ptr noundef %2, ptr noundef %0, ptr noundef nonnull %11) #8
  br label %12

12:                                               ; preds = %3, %5, %9
  %13 = phi i1 [ false, %9 ], [ true, %5 ], [ true, %3 ]
  ret i1 %13
}

declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_get_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc void @doglob(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !34 {
  %3 = alloca %struct.glob_t, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, i8 0, i64 72, i1 false)
  %5 = call i32 @bsd_glob(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @errfunc, ptr noundef nonnull %3) #8
  store i32 %5, ptr @my_cxt.0, align 8, !tbaa !58
  %6 = load ptr, ptr @PL_stack_max, align 8, !tbaa !35
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = load i32, ptr %3, align 8, !tbaa !71
  %12 = sext i32 %11 to i64
  %13 = icmp slt i64 %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call ptr @Perl_stack_grow(ptr noundef %4, ptr noundef %4, i64 noundef %12) #8
  br label %16

16:                                               ; preds = %2, %14
  %17 = phi ptr [ %15, %14 ], [ %4, %2 ]
  %18 = load i32, ptr %3, align 8, !tbaa !71
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.glob_t, ptr %3, i64 0, i32 4
  br label %22

22:                                               ; preds = %20, %33
  %23 = phi i64 [ 0, %20 ], [ %35, %33 ]
  %24 = phi ptr [ %17, %20 ], [ %34, %33 ]
  %25 = load ptr, ptr %21, align 8, !tbaa !73
  %26 = getelementptr inbounds ptr, ptr %25, i64 %23
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27) #9
  %29 = call ptr @Perl_newSVpvn_flags(ptr noundef %27, i64 noundef %28, i32 noundef 524288) #8
  store i8 1, ptr @PL_tainted, align 1, !tbaa !74
  %30 = load i8, ptr @PL_tainting, align 1, !tbaa !74, !range !76, !noundef !77
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  call void @Perl_sv_magic(ptr noundef %29, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #8
  br label %33

33:                                               ; preds = %32, %22
  %34 = getelementptr inbounds ptr, ptr %24, i64 1
  store ptr %29, ptr %34, align 8, !tbaa !35
  %35 = add nuw nsw i64 %23, 1
  %36 = load i32, ptr %3, align 8, !tbaa !71
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %22, label %39, !llvm.loop !78

39:                                               ; preds = %33, %16
  %40 = phi ptr [ %17, %16 ], [ %34, %33 ]
  store ptr %40, ptr @PL_stack_sp, align 8, !tbaa !35
  call void @bsd_globfree(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #8
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare i32 @bsd_glob(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @errfunc(ptr nocapture readnone %0, i32 noundef %1) #6 !prof !34 {
  switch i32 %1, label %3 [
    i32 13, label %6
    i32 2, label %6
  ]

3:                                                ; preds = %2
  %4 = icmp ne i32 %1, 20
  %5 = zext i1 %4 to i32
  br label %6

6:                                                ; preds = %2, %2, %3
  %7 = phi i32 [ %5, %3 ], [ 0, %2 ], [ 0, %2 ]
  ret i32 %7
}

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @bsd_globfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal fastcc void @iterate(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 5
  %6 = load i8, ptr %5, align 2, !tbaa !79
  %7 = and i8 %6, 3
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = zext nneg i8 %7 to i32
  br label %13

11:                                               ; preds = %1
  %12 = tail call i32 @Perl_block_gimme() #8
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = getelementptr inbounds ptr, ptr %3, i64 -1
  %16 = load ptr, ptr %3, align 8, !tbaa !35
  %17 = load ptr, ptr @my_cxt.1, align 8, !tbaa !39
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = tail call ptr @Perl_newSV_type(i32 noundef 12) #8
  store ptr %20, ptr @my_cxt.1, align 8, !tbaa !39
  br label %21

21:                                               ; preds = %19, %13
  %22 = load ptr, ptr @my_cxt.1, align 8, !tbaa !39
  %23 = tail call ptr @Perl_hv_common_key_len(ptr noundef %22, ptr noundef nonnull @PL_op, i32 noundef 8, i32 noundef 48, ptr noundef null, i32 noundef 0) #8
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = getelementptr inbounds %struct.av, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !80
  %27 = and i32 %26, 255
  %28 = icmp eq i32 %27, 11
  br i1 %28, label %140, label %29

29:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  %30 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !48
  %32 = and i32 %31, 2097152
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = tail call i32 @Perl_mg_get(ptr noundef %16) #8
  br label %36

36:                                               ; preds = %29, %34
  %37 = load i32, ptr %30, align 4, !tbaa !48
  %38 = and i32 %37, 65280
  %39 = icmp ne i32 %38, 0
  %40 = and i32 %37, 255
  %41 = icmp eq i32 %40, 8
  %42 = or i1 %39, %41
  %43 = and i32 %37, 16777471
  %44 = icmp eq i32 %43, 16777226
  %45 = or i1 %44, %42
  br i1 %45, label %76, label %46

46:                                               ; preds = %36
  %47 = load ptr, ptr @PL_defgv, align 8, !tbaa !35
  %48 = getelementptr inbounds %struct.gv, ptr %47, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !47
  %50 = load ptr, ptr %49, align 8, !tbaa !68
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = tail call ptr @Perl_gv_add_by_type(ptr noundef %47, i32 noundef 0) #8
  %54 = getelementptr inbounds %struct.gv, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !47
  br label %56

56:                                               ; preds = %46, %52
  %57 = phi ptr [ %55, %52 ], [ %49, %46 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !35
  %59 = getelementptr inbounds %struct.sv, ptr %58, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !48
  %61 = and i32 %60, 2097152
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %56
  %64 = tail call i32 @Perl_mg_get(ptr noundef %58) #8
  br label %65

65:                                               ; preds = %56, %63
  %66 = load i32, ptr %59, align 4, !tbaa !48
  %67 = and i32 %66, 65280
  %68 = icmp eq i32 %67, 0
  %69 = and i32 %66, 255
  %70 = icmp ne i32 %69, 8
  %71 = and i1 %68, %70
  %72 = and i32 %66, 16777471
  %73 = icmp ne i32 %72, 16777226
  %74 = and i1 %73, %71
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  store i64 0, ptr %2, align 8, !tbaa !62
  br label %122

76:                                               ; preds = %65, %36
  %77 = phi ptr [ %16, %36 ], [ %58, %65 ]
  %78 = getelementptr inbounds %struct.sv, ptr %77, i64 0, i32 2
  %79 = load i32, ptr %78, align 4, !tbaa !48
  %80 = and i32 %79, 2098176
  %81 = icmp eq i32 %80, 1024
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load ptr, ptr %77, align 8, !tbaa !59
  %84 = getelementptr inbounds %struct.xpv, ptr %83, i64 0, i32 2
  %85 = load i64, ptr %84, align 8, !tbaa !60
  store i64 %85, ptr %2, align 8, !tbaa !62
  %86 = getelementptr inbounds %struct.sv, ptr %77, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !47
  br label %90

88:                                               ; preds = %76
  %89 = call ptr @Perl_sv_2pv_flags(ptr noundef %77, ptr noundef nonnull %2, i32 noundef 0) #8
  br label %90

90:                                               ; preds = %88, %82
  %91 = phi ptr [ %87, %82 ], [ %89, %88 ]
  %92 = load i32, ptr %78, align 4, !tbaa !48
  %93 = lshr i32 %92, 29
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  %96 = and i32 %92, 1024
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.sv, ptr %77, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !47
  %101 = icmp eq ptr %91, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i64, ptr %2, align 8, !tbaa !62
  %104 = getelementptr inbounds i8, ptr %91, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !47
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %122, label %107

107:                                              ; preds = %102, %98, %90
  %108 = load i64, ptr %2, align 8, !tbaa !62
  %109 = call ptr @Perl_newSVpvn_flags(ptr noundef %91, i64 noundef %108, i32 noundef 524288) #8
  %110 = getelementptr inbounds %struct.sv, ptr %109, i64 0, i32 2
  %111 = load i32, ptr %110, align 4, !tbaa !48
  %112 = and i32 %111, 2098176
  %113 = icmp eq i32 %112, 1024
  br i1 %113, label %114, label %120

114:                                              ; preds = %107
  %115 = load ptr, ptr %109, align 8, !tbaa !59
  %116 = getelementptr inbounds %struct.xpv, ptr %115, i64 0, i32 2
  %117 = load i64, ptr %116, align 8, !tbaa !60
  store i64 %117, ptr %2, align 8, !tbaa !62
  %118 = getelementptr inbounds %struct.sv, ptr %109, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !47
  br label %122

120:                                              ; preds = %107
  %121 = call ptr @Perl_sv_2pv_flags(ptr noundef %109, ptr noundef nonnull %2, i32 noundef 0) #8
  br label %122

122:                                              ; preds = %114, %120, %102, %75
  %123 = phi ptr [ %91, %102 ], [ @.str.23, %75 ], [ %119, %114 ], [ %121, %120 ]
  %124 = phi i8 [ %95, %102 ], [ 0, %75 ], [ %95, %114 ], [ %95, %120 ]
  %125 = load i64, ptr %2, align 8, !tbaa !62
  %126 = call fastcc zeroext i1 @S_is_safe_syscall(ptr noundef %123, i64 noundef %125, ptr noundef nonnull @.str.29)
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = icmp eq i32 %14, 3
  br i1 %128, label %130, label %129

129:                                              ; preds = %127
  store ptr @PL_sv_undef, ptr %3, align 8, !tbaa !35
  br label %130

130:                                              ; preds = %129, %127
  %131 = phi ptr [ %3, %129 ], [ %15, %127 ]
  store ptr %131, ptr @PL_stack_sp, align 8, !tbaa !35
  br label %137

132:                                              ; preds = %122
  store ptr %15, ptr @PL_stack_sp, align 8, !tbaa !35
  %133 = load i64, ptr %2, align 8, !tbaa !62
  %134 = icmp ne i8 %124, 0
  %135 = call zeroext i1 %0(ptr noundef %24, ptr noundef %123, i64 noundef %133, i1 noundef zeroext %134) #8, !callees !82
  %136 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  br label %137

137:                                              ; preds = %132, %130
  %138 = phi i1 [ %135, %132 ], [ false, %130 ]
  %139 = phi ptr [ %136, %132 ], [ %131, %130 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  br i1 %126, label %140, label %191

140:                                              ; preds = %137, %21
  %141 = phi i1 [ %138, %137 ], [ false, %21 ]
  %142 = phi ptr [ %139, %137 ], [ %15, %21 ]
  %143 = icmp eq i32 %14, 3
  br i1 %143, label %144, label %177

144:                                              ; preds = %140
  br i1 %141, label %173, label %145

145:                                              ; preds = %144
  %146 = load ptr, ptr @PL_stack_max, align 8, !tbaa !35
  %147 = ptrtoint ptr %146 to i64
  %148 = ptrtoint ptr %142 to i64
  %149 = sub i64 %147, %148
  %150 = ashr exact i64 %149, 3
  %151 = load ptr, ptr %24, align 8, !tbaa !83
  %152 = getelementptr inbounds %struct.xpvav, ptr %151, i64 0, i32 2
  %153 = load i64, ptr %152, align 8, !tbaa !84
  %154 = icmp sgt i64 %150, %153
  br i1 %154, label %158, label %155

155:                                              ; preds = %145
  %156 = add nsw i64 %153, 1
  %157 = call ptr @Perl_stack_grow(ptr noundef %142, ptr noundef %142, i64 noundef %156) #8
  br label %158

158:                                              ; preds = %145, %155
  %159 = phi ptr [ %157, %155 ], [ %142, %145 ]
  %160 = getelementptr inbounds ptr, ptr %159, i64 1
  %161 = getelementptr inbounds %struct.av, ptr %24, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !47
  %163 = load ptr, ptr %24, align 8, !tbaa !83
  %164 = getelementptr inbounds %struct.xpvav, ptr %163, i64 0, i32 2
  %165 = load i64, ptr %164, align 8, !tbaa !84
  %166 = shl i64 %165, 3
  %167 = add i64 %166, 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %160, ptr align 1 %162, i64 %167, i1 false)
  %168 = load ptr, ptr %24, align 8, !tbaa !83
  %169 = getelementptr inbounds %struct.xpvav, ptr %168, i64 0, i32 2
  %170 = load i64, ptr %169, align 8, !tbaa !84
  %171 = add nsw i64 %170, 1
  %172 = getelementptr inbounds ptr, ptr %159, i64 %171
  br label %173

173:                                              ; preds = %158, %144
  %174 = phi ptr [ %142, %144 ], [ %172, %158 ]
  %175 = load ptr, ptr @my_cxt.1, align 8, !tbaa !39
  %176 = call ptr @Perl_hv_common_key_len(ptr noundef %175, ptr noundef nonnull @PL_op, i32 noundef 8, i32 noundef 64, ptr noundef null, i32 noundef 0) #8
  br label %189

177:                                              ; preds = %140
  %178 = load ptr, ptr %24, align 8, !tbaa !83
  %179 = getelementptr inbounds %struct.xpvav, ptr %178, i64 0, i32 2
  %180 = load i64, ptr %179, align 8, !tbaa !84
  %181 = icmp eq i64 %180, -1
  %182 = getelementptr inbounds ptr, ptr %142, i64 1
  br i1 %181, label %186, label %183

183:                                              ; preds = %177
  %184 = call ptr @Perl_av_shift(ptr noundef nonnull %24) #8
  %185 = call ptr @Perl_sv_2mortal(ptr noundef %184) #8
  store ptr %185, ptr %182, align 8, !tbaa !35
  br label %189

186:                                              ; preds = %177
  %187 = load ptr, ptr @my_cxt.1, align 8, !tbaa !39
  %188 = call ptr @Perl_hv_common_key_len(ptr noundef %187, ptr noundef nonnull @PL_op, i32 noundef 8, i32 noundef 68, ptr noundef null, i32 noundef 0) #8
  store ptr @PL_sv_undef, ptr %182, align 8, !tbaa !35
  br label %189

189:                                              ; preds = %183, %186, %173
  %190 = phi ptr [ %174, %173 ], [ %182, %183 ], [ %182, %186 ]
  store ptr %190, ptr @PL_stack_sp, align 8, !tbaa !35
  br label %191

191:                                              ; preds = %137, %189
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal noundef zeroext i1 @doglob_iter_wrapper(ptr noundef %0, ptr noundef %1, i64 %2, i1 zeroext %3) #0 !prof !34 {
  %5 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %6 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.27, i32 noundef 1) #8
  %7 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !48
  %9 = and i32 %8, 2097408
  %10 = icmp eq i32 %9, 256
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load ptr, ptr %6, align 8, !tbaa !59
  %13 = getelementptr inbounds %struct.xpviv, ptr %12, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !47
  br label %17

15:                                               ; preds = %4
  %16 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %6, i32 noundef 2) #8
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i64 [ %14, %11 ], [ %16, %15 ]
  %19 = trunc i64 %18 to i32
  %20 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %21 = getelementptr inbounds i32, ptr %20, i64 1
  store ptr %21, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %22 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !35
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = tail call ptr @Perl_markstack_grow() #8
  br label %26

26:                                               ; preds = %17, %24
  %27 = phi ptr [ %25, %24 ], [ %21, %17 ]
  %28 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %29 = ptrtoint ptr %5 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = lshr exact i64 %31, 3
  %33 = trunc i64 %32 to i32
  store i32 %33, ptr %27, align 4, !tbaa !54
  store ptr %5, ptr @PL_stack_sp, align 8, !tbaa !35
  tail call fastcc void @doglob(ptr noundef %1, i32 noundef %19)
  %34 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %35 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %36 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %37 = getelementptr inbounds i32, ptr %36, i64 -1
  store ptr %37, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %38 = load i32, ptr %36, align 4, !tbaa !54
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %35, i64 %39
  %41 = load ptr, ptr @PL_op, align 8, !tbaa !35
  %42 = getelementptr inbounds %struct.op, ptr %41, i64 0, i32 5
  %43 = load i8, ptr %42, align 2, !tbaa !79
  %44 = and i8 %43, 3
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %26
  %47 = zext nneg i8 %44 to i32
  br label %50

48:                                               ; preds = %26
  %49 = tail call i32 @Perl_block_gimme() #8
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store ptr %34, ptr @PL_stack_sp, align 8, !tbaa !35
  br label %65

54:                                               ; preds = %50
  tail call void @Perl_sv_upgrade(ptr noundef %0, i32 noundef 11) #8
  %55 = getelementptr inbounds ptr, ptr %40, i64 1
  %56 = icmp ugt ptr %55, %34
  br i1 %56, label %65, label %57

57:                                               ; preds = %54, %57
  %58 = phi ptr [ %63, %57 ], [ %55, %54 ]
  %59 = load ptr, ptr %58, align 8, !tbaa !35
  %60 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !86
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 8, !tbaa !86
  tail call void @Perl_av_push(ptr noundef %0, ptr noundef %59) #8
  %63 = getelementptr inbounds ptr, ptr %58, i64 1
  %64 = icmp ugt ptr %63, %34
  br i1 %64, label %65, label %57, !llvm.loop !87

65:                                               ; preds = %57, %54, %53
  ret i1 %52
}

declare i32 @Perl_block_gimme() local_unnamed_addr #2

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_av_shift(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_markstack_grow() local_unnamed_addr #2

declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_av_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #2

declare void @Perl_croak_sv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal zeroext i1 @csh_glob(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) #0 !prof !34 {
  %5 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %6 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.27, i32 noundef 1) #8
  %7 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !48
  %9 = and i32 %8, 2097408
  %10 = icmp eq i32 %9, 256
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load ptr, ptr %6, align 8, !tbaa !59
  %13 = getelementptr inbounds %struct.xpviv, ptr %12, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !47
  br label %17

15:                                               ; preds = %4
  %16 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %6, i32 noundef 2) #8
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i64 [ %14, %11 ], [ %16, %15 ]
  %19 = trunc i64 %18 to i32
  %20 = load ptr, ptr @PL_op, align 8, !tbaa !35
  %21 = getelementptr inbounds %struct.op, ptr %20, i64 0, i32 5
  %22 = load i8, ptr %21, align 2, !tbaa !79
  %23 = and i8 %22, 3
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %17
  %26 = zext nneg i8 %23 to i32
  br label %29

27:                                               ; preds = %17
  %28 = tail call i32 @Perl_block_gimme() #8
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  tail call void @Perl_sv_upgrade(ptr noundef %0, i32 noundef 11) #8
  %31 = icmp sgt i64 %2, 0
  br i1 %31, label %32, label %202

32:                                               ; preds = %29
  %33 = getelementptr inbounds i8, ptr %1, i64 %2
  %34 = getelementptr inbounds i8, ptr %1, i64 -1
  br label %35

35:                                               ; preds = %32, %193
  %36 = phi ptr [ %1, %32 ], [ %200, %193 ]
  %37 = phi ptr [ %1, %32 ], [ %199, %193 ]
  %38 = phi ptr [ null, %32 ], [ %198, %193 ]
  %39 = phi ptr [ %33, %32 ], [ %197, %193 ]
  %40 = phi ptr [ %34, %32 ], [ %196, %193 ]
  %41 = phi ptr [ null, %32 ], [ %195, %193 ]
  %42 = phi ptr [ null, %32 ], [ %194, %193 ]
  %43 = load i8, ptr %36, align 1, !tbaa !47
  switch i8 %43, label %161 [
    i8 39, label %44
    i8 34, label %44
    i8 92, label %141
  ]

44:                                               ; preds = %35, %35
  %45 = icmp eq ptr %41, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %44
  %47 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.23, i64 noundef 0) #8
  br i1 %3, label %48, label %52

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.sv, ptr %47, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !48
  %51 = or i32 %50, 536870912
  store i32 %51, ptr %49, align 4, !tbaa !48
  br label %52

52:                                               ; preds = %46, %48, %44
  %53 = phi ptr [ %41, %44 ], [ %47, %48 ], [ %47, %46 ]
  %54 = icmp eq ptr %42, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = ptrtoint ptr %36 to i64
  %57 = ptrtoint ptr %42 to i64
  %58 = sub i64 %56, %57
  tail call void @Perl_sv_catpvn_flags(ptr noundef %53, ptr noundef nonnull %42, i64 noundef %58, i32 noundef 2) #8
  br label %59

59:                                               ; preds = %55, %52
  %60 = getelementptr inbounds i8, ptr %40, i64 2
  %61 = getelementptr inbounds i8, ptr %36, i64 1
  %62 = icmp ult ptr %61, %39
  br i1 %62, label %63, label %92

63:                                               ; preds = %59, %87
  %64 = phi i1 [ %91, %87 ], [ %62, %59 ]
  %65 = phi ptr [ %90, %87 ], [ %61, %59 ]
  %66 = phi ptr [ %89, %87 ], [ %36, %59 ]
  %67 = phi ptr [ %88, %87 ], [ %60, %59 ]
  %68 = load i8, ptr %65, align 1, !tbaa !47
  %69 = icmp eq i8 %68, 92
  br i1 %69, label %70, label %81

70:                                               ; preds = %63
  %71 = getelementptr inbounds i8, ptr %66, i64 2
  %72 = icmp ult ptr %71, %39
  br i1 %72, label %73, label %87

73:                                               ; preds = %70
  %74 = load i8, ptr %71, align 1, !tbaa !47
  %75 = icmp eq i8 %74, %43
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = ptrtoint ptr %71 to i64
  %78 = ptrtoint ptr %67 to i64
  %79 = xor i64 %78, -1
  %80 = add i64 %77, %79
  tail call void @Perl_sv_catpvn_flags(ptr noundef %53, ptr noundef %67, i64 noundef %80, i32 noundef 2) #8
  br label %87

81:                                               ; preds = %63
  %82 = icmp eq i8 %68, %43
  br i1 %82, label %83, label %87

83:                                               ; preds = %81
  %84 = ptrtoint ptr %65 to i64
  %85 = ptrtoint ptr %67 to i64
  %86 = sub i64 %84, %85
  tail call void @Perl_sv_catpvn_flags(ptr noundef %53, ptr noundef %67, i64 noundef %86, i32 noundef 2) #8
  br label %92

87:                                               ; preds = %81, %70, %73, %76
  %88 = phi ptr [ %71, %76 ], [ %67, %73 ], [ %67, %70 ], [ %67, %81 ]
  %89 = phi ptr [ %71, %76 ], [ %71, %73 ], [ %71, %70 ], [ %65, %81 ]
  %90 = getelementptr inbounds i8, ptr %89, i64 1
  %91 = icmp ult ptr %90, %39
  br i1 %91, label %63, label %92, !llvm.loop !88

92:                                               ; preds = %87, %59, %83
  %93 = phi ptr [ %65, %83 ], [ %61, %59 ], [ %90, %87 ]
  %94 = phi i1 [ %64, %83 ], [ %62, %59 ], [ %91, %87 ]
  %95 = phi ptr [ null, %83 ], [ %60, %59 ], [ %88, %87 ]
  br i1 %94, label %134, label %96

96:                                               ; preds = %92, %96
  %97 = phi ptr [ %104, %96 ], [ %37, %92 ]
  %98 = load i8, ptr %97, align 1, !tbaa !47
  %99 = zext i8 %98 to i64
  %100 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !54
  %102 = and i32 %101, 17408
  %103 = icmp eq i32 %102, 17408
  %104 = getelementptr inbounds i8, ptr %97, i64 1
  br i1 %103, label %96, label %105, !llvm.loop !89

105:                                              ; preds = %96, %105
  %106 = phi ptr [ %107, %105 ], [ %39, %96 ]
  %107 = getelementptr inbounds i8, ptr %106, i64 -1
  %108 = load i8, ptr %107, align 1, !tbaa !47
  %109 = zext i8 %108 to i64
  %110 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !54
  %112 = and i32 %111, 17408
  %113 = icmp eq i32 %112, 17408
  br i1 %113, label %105, label %114, !llvm.loop !90

114:                                              ; preds = %105
  %115 = getelementptr inbounds i8, ptr %97, i64 %2
  %116 = icmp ult ptr %106, %115
  %117 = icmp eq ptr %53, null
  br i1 %116, label %118, label %126

118:                                              ; preds = %114
  %119 = ptrtoint ptr %106 to i64
  %120 = ptrtoint ptr %97 to i64
  %121 = sub i64 %119, %120
  br i1 %117, label %123, label %122

122:                                              ; preds = %118
  tail call void @Perl_sv_setpvn(ptr noundef nonnull %53, ptr noundef nonnull %97, i64 noundef %121) #8
  br label %134

123:                                              ; preds = %118
  %124 = select i1 %3, i32 536870912, i32 0
  %125 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %97, i64 noundef %121, i32 noundef %124) #8
  br label %134

126:                                              ; preds = %114
  br i1 %117, label %134, label %127

127:                                              ; preds = %126
  %128 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 1
  %129 = load i32, ptr %128, align 8, !tbaa !86
  %130 = icmp ugt i32 %129, 1
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = add i32 %129, -1
  store i32 %132, ptr %128, align 8, !tbaa !86
  br label %134

133:                                              ; preds = %127
  tail call void @Perl_sv_free2(ptr noundef nonnull %53, i32 noundef %129) #8
  br label %134

134:                                              ; preds = %133, %131, %92, %123, %122, %126
  %135 = phi ptr [ null, %123 ], [ null, %122 ], [ %97, %126 ], [ %95, %92 ], [ %97, %131 ], [ %97, %133 ]
  %136 = phi ptr [ %125, %123 ], [ %53, %122 ], [ null, %126 ], [ %53, %92 ], [ null, %131 ], [ null, %133 ]
  %137 = phi ptr [ %93, %123 ], [ %93, %122 ], [ %106, %126 ], [ %93, %92 ], [ %106, %131 ], [ %106, %133 ]
  %138 = phi ptr [ %106, %123 ], [ %106, %122 ], [ %106, %126 ], [ %39, %92 ], [ %106, %131 ], [ %106, %133 ]
  %139 = phi i32 [ 11, %123 ], [ 11, %122 ], [ 11, %126 ], [ 4, %92 ], [ 11, %131 ], [ 11, %133 ]
  %140 = phi ptr [ %97, %123 ], [ %97, %122 ], [ %97, %126 ], [ %37, %92 ], [ %97, %131 ], [ %97, %133 ]
  switch i32 %139, label %327 [
    i32 4, label %193
    i32 11, label %202
  ]

141:                                              ; preds = %35
  %142 = icmp eq ptr %42, null
  %143 = select i1 %142, ptr %36, ptr %42
  %144 = getelementptr inbounds i8, ptr %40, i64 2
  %145 = icmp ult ptr %144, %39
  br i1 %145, label %146, label %193

146:                                              ; preds = %141
  %147 = load i8, ptr %144, align 1, !tbaa !47
  switch i8 %147, label %193 [
    i8 34, label %148
    i8 39, label %148
  ]

148:                                              ; preds = %146, %146
  %149 = icmp eq ptr %41, null
  %150 = ptrtoint ptr %144 to i64
  %151 = ptrtoint ptr %143 to i64
  %152 = xor i64 %151, -1
  %153 = add i64 %152, %150
  br i1 %149, label %154, label %160

154:                                              ; preds = %148
  %155 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull %143, i64 noundef %153) #8
  br i1 %3, label %156, label %193

156:                                              ; preds = %154
  %157 = getelementptr inbounds %struct.sv, ptr %155, i64 0, i32 2
  %158 = load i32, ptr %157, align 4, !tbaa !48
  %159 = or i32 %158, 536870912
  store i32 %159, ptr %157, align 4, !tbaa !48
  br label %193

160:                                              ; preds = %148
  tail call void @Perl_sv_catpvn_flags(ptr noundef nonnull %41, ptr noundef nonnull %143, i64 noundef %153, i32 noundef 2) #8
  br label %193

161:                                              ; preds = %35
  %162 = zext i8 %43 to i64
  %163 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !54
  %165 = and i32 %164, 17408
  %166 = icmp eq i32 %165, 17408
  %167 = icmp eq ptr %42, null
  br i1 %166, label %168, label %191

168:                                              ; preds = %161
  br i1 %167, label %181, label %169

169:                                              ; preds = %168
  %170 = icmp eq ptr %41, null
  %171 = ptrtoint ptr %36 to i64
  %172 = ptrtoint ptr %42 to i64
  %173 = sub i64 %171, %172
  br i1 %170, label %174, label %180

174:                                              ; preds = %169
  %175 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull %42, i64 noundef %173) #8
  br i1 %3, label %176, label %181

176:                                              ; preds = %174
  %177 = getelementptr inbounds %struct.sv, ptr %175, i64 0, i32 2
  %178 = load i32, ptr %177, align 4, !tbaa !48
  %179 = or i32 %178, 536870912
  store i32 %179, ptr %177, align 4, !tbaa !48
  br label %181

180:                                              ; preds = %169
  tail call void @Perl_sv_catpvn_flags(ptr noundef nonnull %41, ptr noundef nonnull %42, i64 noundef %173, i32 noundef 2) #8
  br label %181

181:                                              ; preds = %180, %176, %174, %168
  %182 = phi ptr [ %41, %180 ], [ %175, %176 ], [ %175, %174 ], [ %41, %168 ]
  %183 = icmp eq ptr %182, null
  br i1 %183, label %193, label %184

184:                                              ; preds = %181
  %185 = icmp eq ptr %38, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %184
  %187 = tail call ptr @Perl_newSV_type(i32 noundef 11) #8
  %188 = tail call ptr @Perl_sv_2mortal(ptr noundef %187) #8
  br label %189

189:                                              ; preds = %186, %184
  %190 = phi ptr [ %38, %184 ], [ %188, %186 ]
  tail call void @Perl_av_push(ptr noundef %190, ptr noundef nonnull %182) #8
  br label %193

191:                                              ; preds = %161
  %192 = select i1 %167, ptr %36, ptr %42
  br label %193

193:                                              ; preds = %191, %160, %156, %154, %146, %189, %181, %141, %134
  %194 = phi ptr [ null, %189 ], [ %42, %181 ], [ %143, %141 ], [ %135, %134 ], [ %143, %146 ], [ %144, %154 ], [ %144, %156 ], [ %144, %160 ], [ %192, %191 ]
  %195 = phi ptr [ null, %189 ], [ null, %181 ], [ %41, %141 ], [ %136, %134 ], [ %41, %146 ], [ %155, %154 ], [ %155, %156 ], [ %41, %160 ], [ %41, %191 ]
  %196 = phi ptr [ %36, %189 ], [ %36, %181 ], [ %144, %141 ], [ %137, %134 ], [ %144, %146 ], [ %144, %154 ], [ %144, %156 ], [ %144, %160 ], [ %36, %191 ]
  %197 = phi ptr [ %39, %189 ], [ %39, %181 ], [ %39, %141 ], [ %138, %134 ], [ %39, %146 ], [ %39, %154 ], [ %39, %156 ], [ %39, %160 ], [ %39, %191 ]
  %198 = phi ptr [ %190, %189 ], [ %38, %181 ], [ %38, %141 ], [ %38, %134 ], [ %38, %146 ], [ %38, %154 ], [ %38, %156 ], [ %38, %160 ], [ %38, %191 ]
  %199 = phi ptr [ %37, %189 ], [ %37, %181 ], [ %37, %141 ], [ %140, %134 ], [ %37, %146 ], [ %37, %154 ], [ %37, %156 ], [ %37, %160 ], [ %37, %191 ]
  %200 = getelementptr inbounds i8, ptr %196, i64 1
  %201 = icmp ult ptr %200, %197
  br i1 %201, label %35, label %202, !llvm.loop !91

202:                                              ; preds = %134, %193, %29
  %203 = phi ptr [ null, %29 ], [ %38, %134 ], [ %198, %193 ]
  %204 = phi ptr [ null, %29 ], [ %135, %134 ], [ %194, %193 ]
  %205 = phi ptr [ null, %29 ], [ %136, %134 ], [ %195, %193 ]
  %206 = phi ptr [ %1, %29 ], [ %137, %134 ], [ %200, %193 ]
  %207 = icmp eq ptr %203, null
  br i1 %207, label %261, label %208

208:                                              ; preds = %202
  %209 = load ptr, ptr %203, align 8, !tbaa !83
  %210 = getelementptr inbounds %struct.xpvav, ptr %209, i64 0, i32 2
  %211 = load i64, ptr %210, align 8, !tbaa !84
  %212 = trunc i64 %211 to i32
  %213 = icmp eq i32 %212, -1
  br i1 %213, label %261, label %214

214:                                              ; preds = %208
  %215 = getelementptr inbounds %struct.av, ptr %203, i64 0, i32 3
  %216 = load ptr, ptr %215, align 8, !tbaa !47
  br label %217

217:                                              ; preds = %214, %256
  %218 = phi i32 [ %259, %256 ], [ %212, %214 ]
  %219 = phi ptr [ %235, %256 ], [ %216, %214 ]
  %220 = phi ptr [ %258, %256 ], [ %5, %214 ]
  %221 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %222 = getelementptr inbounds i32, ptr %221, i64 1
  store ptr %222, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %223 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !35
  %224 = icmp eq ptr %222, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %217
  %226 = tail call ptr @Perl_markstack_grow() #8
  br label %227

227:                                              ; preds = %217, %225
  %228 = phi ptr [ %226, %225 ], [ %222, %217 ]
  %229 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %230 = ptrtoint ptr %220 to i64
  %231 = ptrtoint ptr %229 to i64
  %232 = sub i64 %230, %231
  %233 = lshr exact i64 %232, 3
  %234 = trunc i64 %233 to i32
  store i32 %234, ptr %228, align 4, !tbaa !54
  store ptr %220, ptr @PL_stack_sp, align 8, !tbaa !35
  %235 = getelementptr inbounds ptr, ptr %219, i64 1
  %236 = load ptr, ptr %219, align 8, !tbaa !35
  %237 = getelementptr inbounds %struct.sv, ptr %236, i64 0, i32 3
  %238 = load ptr, ptr %237, align 8, !tbaa !47
  tail call fastcc void @doglob(ptr noundef %238, i32 noundef %19)
  %239 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %240 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %241 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %242 = getelementptr inbounds i32, ptr %241, i64 -1
  store ptr %242, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %243 = load i32, ptr %241, align 4, !tbaa !54
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds ptr, ptr %240, i64 %244
  %246 = getelementptr inbounds ptr, ptr %245, i64 1
  %247 = icmp ugt ptr %246, %239
  br i1 %247, label %256, label %248

248:                                              ; preds = %227, %248
  %249 = phi ptr [ %254, %248 ], [ %246, %227 ]
  %250 = load ptr, ptr %249, align 8, !tbaa !35
  %251 = getelementptr inbounds %struct.sv, ptr %250, i64 0, i32 1
  %252 = load i32, ptr %251, align 8, !tbaa !86
  %253 = add i32 %252, 1
  store i32 %253, ptr %251, align 8, !tbaa !86
  tail call void @Perl_av_push(ptr noundef %0, ptr noundef %250) #8
  %254 = getelementptr inbounds ptr, ptr %249, i64 1
  %255 = icmp ugt ptr %254, %239
  br i1 %255, label %256, label %248, !llvm.loop !92

256:                                              ; preds = %248, %227
  %257 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %258 = getelementptr inbounds ptr, ptr %257, i64 %244
  %259 = add nsw i32 %218, -1
  %260 = icmp eq i32 %218, 0
  br i1 %260, label %261, label %217, !llvm.loop !93

261:                                              ; preds = %256, %208, %202
  %262 = phi ptr [ %5, %202 ], [ %5, %208 ], [ %258, %256 ]
  %263 = icmp ne ptr %204, null
  %264 = icmp ne ptr %205, null
  %265 = select i1 %263, i1 true, i1 %264
  br i1 %265, label %266, label %325

266:                                              ; preds = %261
  br i1 %264, label %267, label %275

267:                                              ; preds = %266
  br i1 %263, label %268, label %272

268:                                              ; preds = %267
  %269 = ptrtoint ptr %206 to i64
  %270 = ptrtoint ptr %204 to i64
  %271 = sub i64 %269, %270
  tail call void @Perl_sv_catpvn_flags(ptr noundef nonnull %205, ptr noundef nonnull %204, i64 noundef %271, i32 noundef 2) #8
  br label %272

272:                                              ; preds = %268, %267
  %273 = getelementptr inbounds %struct.sv, ptr %205, i64 0, i32 3
  %274 = load ptr, ptr %273, align 8, !tbaa !47
  br label %275

275:                                              ; preds = %266, %272
  %276 = phi ptr [ %274, %272 ], [ %204, %266 ]
  %277 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %278 = getelementptr inbounds i32, ptr %277, i64 1
  store ptr %278, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %279 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !35
  %280 = icmp eq ptr %278, %279
  br i1 %280, label %281, label %283

281:                                              ; preds = %275
  %282 = tail call ptr @Perl_markstack_grow() #8
  br label %283

283:                                              ; preds = %275, %281
  %284 = phi ptr [ %282, %281 ], [ %278, %275 ]
  %285 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %286 = ptrtoint ptr %262 to i64
  %287 = ptrtoint ptr %285 to i64
  %288 = sub i64 %286, %287
  %289 = lshr exact i64 %288, 3
  %290 = trunc i64 %289 to i32
  store i32 %290, ptr %284, align 4, !tbaa !54
  store ptr %262, ptr @PL_stack_sp, align 8, !tbaa !35
  tail call fastcc void @doglob(ptr noundef %276, i32 noundef %19)
  br i1 %264, label %291, label %298

291:                                              ; preds = %283
  %292 = getelementptr inbounds %struct.sv, ptr %205, i64 0, i32 1
  %293 = load i32, ptr %292, align 8, !tbaa !86
  %294 = icmp ugt i32 %293, 1
  br i1 %294, label %295, label %297

295:                                              ; preds = %291
  %296 = add i32 %293, -1
  store i32 %296, ptr %292, align 8, !tbaa !86
  br label %298

297:                                              ; preds = %291
  tail call void @Perl_sv_free2(ptr noundef nonnull %205, i32 noundef %293) #8
  br label %298

298:                                              ; preds = %297, %295, %283
  %299 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !35
  %300 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %301 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %302 = getelementptr inbounds i32, ptr %301, i64 -1
  store ptr %302, ptr @PL_markstack_ptr, align 8, !tbaa !35
  %303 = load i32, ptr %301, align 4, !tbaa !54
  %304 = sext i32 %303 to i64
  %305 = icmp ne ptr %203, null
  %306 = icmp ne i32 %30, 3
  %307 = select i1 %305, i1 true, i1 %306
  br i1 %307, label %308, label %323

308:                                              ; preds = %298
  %309 = getelementptr inbounds ptr, ptr %300, i64 %304
  %310 = getelementptr inbounds ptr, ptr %309, i64 1
  %311 = icmp ugt ptr %310, %299
  br i1 %311, label %320, label %312

312:                                              ; preds = %308, %312
  %313 = phi ptr [ %318, %312 ], [ %310, %308 ]
  %314 = load ptr, ptr %313, align 8, !tbaa !35
  %315 = getelementptr inbounds %struct.sv, ptr %314, i64 0, i32 1
  %316 = load i32, ptr %315, align 8, !tbaa !86
  %317 = add i32 %316, 1
  store i32 %317, ptr %315, align 8, !tbaa !86
  tail call void @Perl_av_push(ptr noundef %0, ptr noundef %314) #8
  %318 = getelementptr inbounds ptr, ptr %313, i64 1
  %319 = icmp ugt ptr %318, %299
  br i1 %319, label %320, label %312, !llvm.loop !94

320:                                              ; preds = %312, %308
  %321 = load ptr, ptr @PL_stack_base, align 8, !tbaa !35
  %322 = getelementptr inbounds ptr, ptr %321, i64 %304
  br label %323

323:                                              ; preds = %298, %320
  %324 = phi ptr [ %322, %320 ], [ %299, %298 ]
  br i1 %307, label %325, label %327

325:                                              ; preds = %323, %261
  %326 = phi ptr [ %324, %323 ], [ %262, %261 ]
  store ptr %326, ptr @PL_stack_sp, align 8, !tbaa !35
  br label %327

327:                                              ; preds = %134, %323, %325
  %328 = phi i1 [ false, %325 ], [ true, %323 ], [ undef, %134 ]
  ret i1 %328
}

declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_newCONSTSUB(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"", !41, i64 0, !36, i64 8, !36, i64 16}
!41 = !{!"int", !37, i64 0}
!42 = !{!40, !36, i64 16}
!43 = !{!44, !41, i64 8}
!44 = !{!"iv_s", !36, i64 0, !41, i64 8, !45, i64 16}
!45 = !{!"long", !37, i64 0}
!46 = !{!44, !45, i64 16}
!47 = !{!37, !37, i64 0}
!48 = !{!49, !41, i64 12}
!49 = !{!"sv", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!50 = !{!44, !36, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!41, !41, i64 0}
!55 = !{!56, !37, i64 35}
!56 = !{!"op", !36, i64 0, !36, i64 8, !36, i64 16, !45, i64 24, !41, i64 32, !41, i64 33, !41, i64 33, !41, i64 33, !41, i64 33, !41, i64 33, !41, i64 33, !41, i64 33, !37, i64 34, !37, i64 35}
!57 = !{!56, !45, i64 24}
!58 = !{!40, !41, i64 0}
!59 = !{!49, !36, i64 0}
!60 = !{!61, !45, i64 16}
!61 = !{!"xpv", !36, i64 0, !37, i64 8, !45, i64 16, !37, i64 24}
!62 = !{!45, !45, i64 0}
!63 = !{!64, !36, i64 0}
!64 = !{!"cv", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!65 = !{!64, !41, i64 12}
!66 = !{!67, !36, i64 48}
!67 = !{!"cop", !36, i64 0, !36, i64 8, !36, i64 16, !45, i64 24, !41, i64 32, !41, i64 33, !41, i64 33, !41, i64 33, !41, i64 33, !41, i64 33, !41, i64 33, !41, i64 33, !37, i64 34, !37, i64 35, !41, i64 36, !36, i64 40, !36, i64 48, !41, i64 56, !41, i64 60, !36, i64 64, !36, i64 72}
!68 = !{!69, !36, i64 0}
!69 = !{!"gp", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !41, i64 64, !41, i64 67, !36, i64 72}
!70 = !{!67, !41, i64 36}
!71 = !{!72, !41, i64 0}
!72 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!73 = !{!72, !36, i64 16}
!74 = !{!75, !75, i64 0}
!75 = !{!"_Bool", !37, i64 0}
!76 = !{i8 0, i8 2}
!77 = !{}
!78 = distinct !{!78, !52, !53}
!79 = !{!56, !37, i64 34}
!80 = !{!81, !41, i64 12}
!81 = !{!"av", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!82 = !{ptr @csh_glob, ptr @doglob_iter_wrapper}
!83 = !{!81, !36, i64 0}
!84 = !{!85, !45, i64 16}
!85 = !{!"xpvav", !36, i64 0, !37, i64 8, !45, i64 16, !45, i64 24, !36, i64 32}
!86 = !{!49, !41, i64 8}
!87 = distinct !{!87, !52, !53}
!88 = distinct !{!88, !52, !53}
!89 = distinct !{!89, !52, !53}
!90 = distinct !{!90, !52, !53}
!91 = distinct !{!91, !52, !53}
!92 = distinct !{!92, !52, !53}
!93 = distinct !{!93, !52, !53}
!94 = distinct !{!94, !52, !53}
