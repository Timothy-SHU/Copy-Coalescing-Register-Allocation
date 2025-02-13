; ModuleID = 'ext/File-Glob/Glob.c'
source_filename = "ext/File-Glob/Glob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.iv_s = type { ptr, i32, i64 }
%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
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
%struct.he = type { ptr, ptr, %union.anon.10 }
%union.anon.10 = type { ptr }
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boot_File__Glob(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  %3 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_File__Glob_GLOB_ERROR) #8
  %4 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.3, ptr noundef nonnull @XS_File__Glob_bsd_glob) #8
  %5 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_File__Glob_csh_glob) #8
  %6 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.5, ptr noundef nonnull @XS_File__Glob_bsd_glob_override) #8
  %7 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_File__Glob_AUTOLOAD) #8
  store ptr @csh_glob_iter, ptr @PL_globhook, align 8, !tbaa !36
  store ptr null, ptr @my_cxt.1, align 8, !tbaa !40
  %8 = load ptr, ptr @PL_opfreehook, align 8, !tbaa !36
  store ptr %8, ptr @my_cxt.2, align 8, !tbaa !43
  store ptr @glob_ophook, ptr @PL_opfreehook, align 8, !tbaa !36
  %9 = tail call ptr @Perl_get_hv(ptr noundef nonnull @.str.7, i32 noundef 1) #8
  br label %10

10:                                               ; preds = %1, %10
  %11 = phi ptr [ @.str.8, %1 ], [ %19, %10 ]
  %12 = phi ptr [ @boot_File__Glob.values_for_iv, %1 ], [ %18, %10 ]
  %13 = getelementptr inbounds %struct.iv_s, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.iv_s, ptr %12, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !47
  %17 = tail call ptr @Perl_newSViv(i64 noundef %16) #8
  tail call fastcc void @constant_add_symbol(ptr noundef %9, ptr noundef nonnull %11, i32 noundef %14, ptr noundef %17) #9
  %18 = getelementptr inbounds %struct.iv_s, ptr %12, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %10, !llvm.loop !49

21:                                               ; preds = %10
  tail call void @Perl_mro_method_changed_in(ptr noundef %9) #8
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newXS_deffile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_File__Glob_GLOB_ERROR(ptr noundef %0) #0 !prof !35 !PGOFuncName !51 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !36
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %5 = load i32, ptr %3, align 4, !tbaa !52
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
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
  %16 = load ptr, ptr @PL_op, align 8, !tbaa !36
  %17 = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 6
  %18 = load i8, ptr %17, align 1, !tbaa !53
  %19 = and i8 %18, 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr @PL_curpad, align 8, !tbaa !36
  %23 = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !55
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !36
  br label %29

27:                                               ; preds = %15
  %28 = tail call ptr @Perl_sv_newmortal() #8
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi ptr [ %26, %21 ], [ %28, %27 ]
  %31 = load i32, ptr @my_cxt.0, align 8, !tbaa !56
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %33 = sext i32 %31 to i64
  tail call void @Perl_sv_setiv(ptr noundef %30, i64 noundef %33) #8
  %34 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !57
  %36 = and i32 %35, 4194304
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %29
  %39 = tail call i32 @Perl_mg_set(ptr noundef nonnull %30) #8
  br label %40

40:                                               ; preds = %29, %38
  %41 = add nsw i32 %5, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %32, i64 %42
  store ptr %30, ptr %43, align 8, !tbaa !36
  %44 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %45 = getelementptr inbounds ptr, ptr %44, i64 %42
  store ptr %45, ptr @PL_stack_sp, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_File__Glob_bsd_glob(ptr noundef %0) #0 !prof !35 !PGOFuncName !59 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !36
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %6 = load i32, ptr %4, align 4, !tbaa !52
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.24) #8
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  br label %19

19:                                               ; preds = %17, %1
  %20 = phi ptr [ %18, %17 ], [ %7, %1 ]
  %21 = shl i64 %13, 29
  %22 = ashr i64 %21, 32
  %23 = sub nsw i64 0, %22
  %24 = getelementptr inbounds ptr, ptr %3, i64 %23
  %25 = sext i32 %8 to i64
  %26 = getelementptr inbounds ptr, ptr %20, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %28 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !57
  %30 = and i32 %29, 2098176
  %31 = icmp eq i32 %30, 1024
  br i1 %31, label %32, label %38

32:                                               ; preds = %19
  %33 = load ptr, ptr %27, align 8, !tbaa !60
  %34 = getelementptr inbounds %struct.xpv, ptr %33, i64 0, i32 2
  %35 = load i64, ptr %34, align 8, !tbaa !61
  store i64 %35, ptr %2, align 8, !tbaa !63
  %36 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !64
  br label %41

38:                                               ; preds = %19
  %39 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %27, ptr noundef nonnull %2, i32 noundef 2) #8
  %40 = load i64, ptr %2, align 8, !tbaa !63
  br label %41

41:                                               ; preds = %38, %32
  %42 = phi i64 [ %35, %32 ], [ %40, %38 ]
  %43 = phi ptr [ %37, %32 ], [ %39, %38 ]
  %44 = call fastcc zeroext i1 @S_is_safe_syscall(ptr noundef %43, i64 noundef %42, ptr noundef nonnull @.str.26) #9
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %47 = getelementptr inbounds ptr, ptr %46, i64 %25
  %48 = getelementptr inbounds ptr, ptr %47, i64 -1
  store ptr %48, ptr @PL_stack_sp, align 8, !tbaa !36
  br label %87

49:                                               ; preds = %41
  %50 = icmp sgt i32 %15, 1
  br i1 %50, label %51, label %70

51:                                               ; preds = %49
  %52 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %53 = getelementptr ptr, ptr %52, i64 %9
  %54 = getelementptr ptr, ptr %53, i64 2
  %55 = load ptr, ptr %54, align 8, !tbaa !36
  %56 = getelementptr inbounds %struct.sv, ptr %55, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !57
  %58 = and i32 %57, 2097408
  %59 = icmp eq i32 %58, 256
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load ptr, ptr %55, align 8, !tbaa !60
  %62 = getelementptr inbounds %struct.xpviv, ptr %61, i64 0, i32 4
  %63 = load i64, ptr %62, align 8, !tbaa !64
  br label %66

64:                                               ; preds = %51
  %65 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %55, i32 noundef 2) #8
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi i64 [ %63, %60 ], [ %65, %64 ]
  %68 = trunc i64 %67 to i32
  %69 = and i32 %68, -324
  br label %85

70:                                               ; preds = %49
  %71 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.27, i32 noundef 1) #8
  %72 = getelementptr inbounds %struct.sv, ptr %71, i64 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !57
  %74 = and i32 %73, 2097408
  %75 = icmp eq i32 %74, 256
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load ptr, ptr %71, align 8, !tbaa !60
  %78 = getelementptr inbounds %struct.xpviv, ptr %77, i64 0, i32 4
  %79 = load i64, ptr %78, align 8, !tbaa !64
  br label %82

80:                                               ; preds = %70
  %81 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %71, i32 noundef 2) #8
  br label %82

82:                                               ; preds = %80, %76
  %83 = phi i64 [ %79, %76 ], [ %81, %80 ]
  %84 = trunc i64 %83 to i32
  br label %85

85:                                               ; preds = %82, %66
  %86 = phi i32 [ %69, %66 ], [ %84, %82 ]
  store ptr %24, ptr @PL_stack_sp, align 8, !tbaa !36
  call fastcc void @doglob(ptr noundef %43, i32 noundef %86) #9
  br label %87

87:                                               ; preds = %85, %45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_File__Glob_csh_glob(ptr nocapture readnone %0) #0 !prof !35 !PGOFuncName !65 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !36
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %5 = load i32, ptr %3, align 4, !tbaa !52
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
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
  %21 = load ptr, ptr @PL_stack_max, align 8, !tbaa !36
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
  store ptr @PL_sv_undef, ptr %30, align 8, !tbaa !36
  br label %31

31:                                               ; preds = %28, %18
  %32 = phi ptr [ %19, %18 ], [ %30, %28 ]
  store ptr %32, ptr @PL_stack_sp, align 8, !tbaa !36
  tail call void @csh_glob_iter() #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_File__Glob_bsd_glob_override(ptr nocapture readnone %0) #0 !prof !35 !PGOFuncName !66 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !36
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %5 = load i32, ptr %3, align 4, !tbaa !52
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
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
  %21 = load ptr, ptr @PL_stack_max, align 8, !tbaa !36
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
  store ptr @PL_sv_undef, ptr %30, align 8, !tbaa !36
  br label %31

31:                                               ; preds = %28, %18
  %32 = phi ptr [ %19, %18 ], [ %30, %28 ]
  store ptr %32, ptr @PL_stack_sp, align 8, !tbaa !36
  tail call fastcc void @iterate(ptr noundef nonnull @doglob_iter_wrapper) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_File__Glob_AUTOLOAD(ptr noundef %0) #0 !prof !35 !PGOFuncName !67 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !36
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %5 = load i32, ptr %3, align 4, !tbaa !52
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
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
  %17 = load ptr, ptr %16, align 8, !tbaa !64
  %18 = load ptr, ptr %0, align 8, !tbaa !68
  %19 = getelementptr inbounds %struct.xpv, ptr %18, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !61
  %21 = getelementptr inbounds %struct.cv, ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !70
  %23 = and i32 %22, 536870912
  %24 = or disjoint i32 %23, 524288
  %25 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %17, i64 noundef %20, i32 noundef %24) #8
  %26 = load ptr, ptr @PL_curcop, align 8, !tbaa !36
  %27 = getelementptr inbounds %struct.cop, ptr %26, i64 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !71
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.gv, ptr %28, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !64
  %33 = load ptr, ptr %32, align 8, !tbaa !73
  br label %34

34:                                               ; preds = %15, %30
  %35 = phi ptr [ %33, %30 ], [ null, %15 ]
  %36 = shl i64 %11, 29
  %37 = ashr i64 %36, 32
  %38 = sub nsw i64 0, %37
  %39 = getelementptr inbounds ptr, ptr %2, i64 %38
  %40 = getelementptr inbounds %struct.cop, ptr %26, i64 0, i32 7
  %41 = load i32, ptr %40, align 4, !tbaa !75
  %42 = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.30, ptr noundef %25, ptr noundef %35, i32 noundef %41) #8
  %43 = tail call ptr @Perl_sv_2mortal(ptr noundef %42) #8
  tail call void @Perl_croak_sv(ptr noundef %43) #8
  store ptr %39, ptr @PL_stack_sp, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @csh_glob_iter() #0 !prof !35 !PGOFuncName !76 {
  tail call fastcc void @iterate(ptr noundef nonnull @csh_glob) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @glob_ophook(ptr noundef %0) #0 !prof !35 !PGOFuncName !77 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !36
  %3 = load i32, ptr @PL_phase, align 4, !tbaa !52
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @my_cxt.1, align 8, !tbaa !40
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
  %15 = load ptr, ptr @my_cxt.2, align 8, !tbaa !43
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %2, align 8, !tbaa !36
  call void %15(ptr noundef %18) #8
  br label %19

19:                                               ; preds = %1, %17, %14
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_get_hv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @constant_add_symbol(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !prof !35 !PGOFuncName !78 {
  %5 = tail call ptr @Perl_hv_common_key_len(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 16, ptr noundef null, i32 noundef 0) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.31, ptr noundef %1) #8
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct.he, ptr %5, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !57
  %13 = freeze i32 %12
  %14 = and i32 %13, 65280
  %15 = icmp ne i32 %14, 0
  %16 = and i32 %13, 16777471
  %17 = icmp eq i32 %16, 16777226
  %18 = or i1 %15, %17
  br i1 %18, label %21, label %19

19:                                               ; preds = %8
  %20 = trunc i32 %13 to i8
  switch i8 %20, label %25 [
    i8 9, label %21
    i8 8, label %21
    i8 0, label %23
  ]

21:                                               ; preds = %19, %19, %8
  %22 = tail call ptr @Perl_newCONSTSUB(ptr noundef %0, ptr noundef %1, ptr noundef %3) #8
  br label %32

23:                                               ; preds = %19
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %10, i32 noundef 1) #8
  %24 = load i32, ptr %11, align 4, !tbaa !57
  br label %25

25:                                               ; preds = %19, %23
  %26 = phi i32 [ %13, %19 ], [ %24, %23 ]
  %27 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 3
  store ptr %3, ptr %27, align 8, !tbaa !64
  %28 = or i32 %26, 2048
  store i32 %28, ptr %11, align 4, !tbaa !57
  %29 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !57
  %31 = or i32 %30, 134217728
  store i32 %31, ptr %29, align 4, !tbaa !57
  br label %32

32:                                               ; preds = %25, %21
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_mro_method_changed_in(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @S_is_safe_syscall(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !35 !PGOFuncName !79 {
  %4 = icmp ugt i64 %1, 1
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = add i64 %1, -1
  %7 = tail call ptr @memchr(ptr noundef %0, i32 noundef 0, i64 noundef %6) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @__errno_location() #12
  store i32 2, ptr %10, align 4, !tbaa !52
  %11 = getelementptr inbounds i8, ptr %7, i64 1
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 59, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.25, ptr noundef %2, ptr noundef %0, ptr noundef nonnull %11) #8
  br label %12

12:                                               ; preds = %5, %3, %9
  %13 = phi i1 [ false, %9 ], [ true, %3 ], [ true, %5 ]
  ret i1 %13
}

; Function Attrs: optsize
declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_get_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @doglob(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !80 {
  %3 = alloca %struct.glob_t, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, i8 0, i64 72, i1 false)
  %5 = call i32 @bsd_glob(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @errfunc, ptr noundef nonnull %3) #8
  store i32 %5, ptr @my_cxt.0, align 8, !tbaa !56
  %6 = load ptr, ptr @PL_stack_max, align 8, !tbaa !36
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = load i32, ptr %3, align 8, !tbaa !81
  %12 = sext i32 %11 to i64
  %13 = icmp slt i64 %10, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = call ptr @Perl_stack_grow(ptr noundef %4, ptr noundef %4, i64 noundef %12) #8
  %16 = load i32, ptr %3, align 8, !tbaa !81
  br label %17

17:                                               ; preds = %2, %14
  %18 = phi i32 [ %16, %14 ], [ %11, %2 ]
  %19 = phi ptr [ %15, %14 ], [ %4, %2 ]
  %20 = icmp sgt i32 %18, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.glob_t, ptr %3, i64 0, i32 4
  br label %23

23:                                               ; preds = %21, %34
  %24 = phi i64 [ 0, %21 ], [ %36, %34 ]
  %25 = phi ptr [ %19, %21 ], [ %35, %34 ]
  %26 = load ptr, ptr %22, align 8, !tbaa !83
  %27 = getelementptr inbounds ptr, ptr %26, i64 %24
  %28 = load ptr, ptr %27, align 8, !tbaa !36
  %29 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %28) #11
  %30 = call ptr @Perl_newSVpvn_flags(ptr noundef %28, i64 noundef %29, i32 noundef 524288) #8
  store i8 1, ptr @PL_tainted, align 1, !tbaa !84
  %31 = load i8, ptr @PL_tainting, align 1, !tbaa !84, !range !86, !noundef !87
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  call void @Perl_sv_magic(ptr noundef %30, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #8
  br label %34

34:                                               ; preds = %33, %23
  %35 = getelementptr inbounds ptr, ptr %25, i64 1
  store ptr %30, ptr %35, align 8, !tbaa !36
  %36 = add nuw nsw i64 %24, 1
  %37 = load i32, ptr %3, align 8, !tbaa !81
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %23, label %40, !llvm.loop !88

40:                                               ; preds = %34, %17
  %41 = phi ptr [ %19, %17 ], [ %35, %34 ]
  store ptr %41, ptr @PL_stack_sp, align 8, !tbaa !36
  call void @bsd_globfree(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: optsize
declare void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare i32 @bsd_glob(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @errfunc(ptr nocapture readnone %0, i32 noundef %1) #6 !prof !35 !PGOFuncName !89 {
  switch i32 %1, label %3 [
    i32 13, label %6
    i32 2, label %6
  ]

3:                                                ; preds = %2
  %4 = icmp ne i32 %1, 20
  %5 = zext i1 %4 to i32
  br label %6

6:                                                ; preds = %2, %2, %3
  %7 = phi i32 [ 0, %2 ], [ %5, %3 ], [ 0, %2 ]
  ret i32 %7
}

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bsd_globfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @iterate(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !35 !PGOFuncName !90 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !36
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 5
  %6 = load i8, ptr %5, align 2, !tbaa !91
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
  %16 = load ptr, ptr %3, align 8, !tbaa !36
  %17 = load ptr, ptr @my_cxt.1, align 8, !tbaa !40
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = tail call ptr @Perl_newSV_type(i32 noundef 12) #8
  store ptr %20, ptr @my_cxt.1, align 8, !tbaa !40
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi ptr [ %20, %19 ], [ %17, %13 ]
  %23 = tail call ptr @Perl_hv_common_key_len(ptr noundef %22, ptr noundef nonnull @PL_op, i32 noundef 8, i32 noundef 48, ptr noundef null, i32 noundef 0) #8
  %24 = load ptr, ptr %23, align 8, !tbaa !36
  %25 = getelementptr inbounds %struct.av, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !92
  %27 = and i32 %26, 255
  %28 = icmp eq i32 %27, 11
  br i1 %28, label %144, label %29

29:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %30 = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !57
  %32 = and i32 %31, 2097152
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = tail call i32 @Perl_mg_get(ptr noundef nonnull %16) #8
  %36 = load i32, ptr %30, align 4, !tbaa !57
  br label %37

37:                                               ; preds = %29, %34
  %38 = phi i32 [ %31, %29 ], [ %36, %34 ]
  %39 = and i32 %38, 65280
  %40 = icmp ne i32 %39, 0
  %41 = and i32 %38, 255
  %42 = icmp eq i32 %41, 8
  %43 = or i1 %40, %42
  %44 = and i32 %38, 16777471
  %45 = icmp eq i32 %44, 16777226
  %46 = or i1 %45, %43
  br i1 %46, label %78, label %47

47:                                               ; preds = %37
  %48 = load ptr, ptr @PL_defgv, align 8, !tbaa !36
  %49 = getelementptr inbounds %struct.gv, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !64
  %51 = load ptr, ptr %50, align 8, !tbaa !36
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %48, i32 noundef 0) #8
  %55 = getelementptr inbounds %struct.gv, ptr %54, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !64
  %57 = load ptr, ptr %56, align 8, !tbaa !36
  br label %58

58:                                               ; preds = %47, %53
  %59 = phi ptr [ %57, %53 ], [ %51, %47 ]
  %60 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !57
  %62 = and i32 %61, 2097152
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = tail call i32 @Perl_mg_get(ptr noundef nonnull %59) #8
  %66 = load i32, ptr %60, align 4, !tbaa !57
  br label %67

67:                                               ; preds = %58, %64
  %68 = phi i32 [ %61, %58 ], [ %66, %64 ]
  %69 = and i32 %68, 65280
  %70 = icmp eq i32 %69, 0
  %71 = and i32 %68, 255
  %72 = icmp ne i32 %71, 8
  %73 = and i1 %70, %72
  %74 = and i32 %68, 16777471
  %75 = icmp ne i32 %74, 16777226
  %76 = and i1 %75, %73
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  store i64 0, ptr %2, align 8, !tbaa !63
  br label %128

78:                                               ; preds = %67, %37
  %79 = phi i32 [ %38, %37 ], [ %68, %67 ]
  %80 = phi ptr [ %16, %37 ], [ %59, %67 ]
  %81 = and i32 %79, 2098176
  %82 = icmp eq i32 %81, 1024
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load ptr, ptr %80, align 8, !tbaa !60
  %85 = getelementptr inbounds %struct.xpv, ptr %84, i64 0, i32 2
  %86 = load i64, ptr %85, align 8, !tbaa !61
  store i64 %86, ptr %2, align 8, !tbaa !63
  %87 = getelementptr inbounds %struct.sv, ptr %80, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !64
  br label %93

89:                                               ; preds = %78
  %90 = getelementptr inbounds %struct.sv, ptr %80, i64 0, i32 2
  %91 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %80, ptr noundef nonnull %2, i32 noundef 0) #8
  %92 = load i32, ptr %90, align 4, !tbaa !57
  br label %93

93:                                               ; preds = %89, %83
  %94 = phi i32 [ %79, %83 ], [ %92, %89 ]
  %95 = phi ptr [ %88, %83 ], [ %91, %89 ]
  %96 = lshr i32 %94, 29
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  %99 = and i32 %94, 1024
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i64, ptr %2, align 8, !tbaa !63
  br label %112

103:                                              ; preds = %93
  %104 = getelementptr inbounds %struct.sv, ptr %80, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !64
  %106 = icmp eq ptr %95, %105
  %107 = load i64, ptr %2, align 8, !tbaa !63
  br i1 %106, label %108, label %112

108:                                              ; preds = %103
  %109 = getelementptr inbounds i8, ptr %95, i64 %107
  %110 = load i8, ptr %109, align 1, !tbaa !64
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %128, label %112

112:                                              ; preds = %101, %108, %103
  %113 = phi i64 [ %102, %101 ], [ %107, %108 ], [ %107, %103 ]
  %114 = call ptr @Perl_newSVpvn_flags(ptr noundef %95, i64 noundef %113, i32 noundef 524288) #8
  %115 = getelementptr inbounds %struct.sv, ptr %114, i64 0, i32 2
  %116 = load i32, ptr %115, align 4, !tbaa !57
  %117 = and i32 %116, 2098176
  %118 = icmp eq i32 %117, 1024
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load ptr, ptr %114, align 8, !tbaa !60
  %121 = getelementptr inbounds %struct.xpv, ptr %120, i64 0, i32 2
  %122 = load i64, ptr %121, align 8, !tbaa !61
  store i64 %122, ptr %2, align 8, !tbaa !63
  %123 = getelementptr inbounds %struct.sv, ptr %114, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !64
  br label %128

125:                                              ; preds = %112
  %126 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %114, ptr noundef nonnull %2, i32 noundef 0) #8
  %127 = load i64, ptr %2, align 8, !tbaa !63
  br label %128

128:                                              ; preds = %119, %125, %108, %77
  %129 = phi i64 [ %107, %108 ], [ 0, %77 ], [ %122, %119 ], [ %127, %125 ]
  %130 = phi ptr [ %95, %108 ], [ @.str.23, %77 ], [ %124, %119 ], [ %126, %125 ]
  %131 = phi i8 [ %98, %108 ], [ 0, %77 ], [ %98, %119 ], [ %98, %125 ]
  %132 = call fastcc zeroext i1 @S_is_safe_syscall(ptr noundef %130, i64 noundef %129, ptr noundef nonnull @.str.29) #9
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = icmp eq i32 %14, 3
  br i1 %134, label %136, label %135

135:                                              ; preds = %133
  store ptr @PL_sv_undef, ptr %3, align 8, !tbaa !36
  br label %136

136:                                              ; preds = %133, %135
  %137 = phi ptr [ %3, %135 ], [ %15, %133 ]
  store ptr %137, ptr @PL_stack_sp, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  br label %196

138:                                              ; preds = %128
  store ptr %15, ptr @PL_stack_sp, align 8, !tbaa !36
  %139 = load i64, ptr %2, align 8, !tbaa !63
  %140 = icmp ne i8 %131, 0
  %141 = call zeroext i1 %0(ptr noundef nonnull %24, ptr noundef %130, i64 noundef %139, i1 noundef zeroext %140) #8, !callees !94
  %142 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  %143 = icmp eq i32 %14, 3
  br i1 %143, label %146, label %181

144:                                              ; preds = %21
  %145 = icmp eq i32 %14, 3
  br i1 %145, label %147, label %181

146:                                              ; preds = %138
  br i1 %141, label %177, label %147

147:                                              ; preds = %144, %146
  %148 = phi ptr [ %142, %146 ], [ %15, %144 ]
  %149 = load ptr, ptr @PL_stack_max, align 8, !tbaa !36
  %150 = ptrtoint ptr %149 to i64
  %151 = ptrtoint ptr %148 to i64
  %152 = sub i64 %150, %151
  %153 = ashr exact i64 %152, 3
  %154 = load ptr, ptr %24, align 8, !tbaa !95
  %155 = getelementptr inbounds %struct.xpvav, ptr %154, i64 0, i32 2
  %156 = load i64, ptr %155, align 8, !tbaa !96
  %157 = icmp sgt i64 %153, %156
  br i1 %157, label %164, label %158

158:                                              ; preds = %147
  %159 = add nsw i64 %156, 1
  %160 = call ptr @Perl_stack_grow(ptr noundef %148, ptr noundef %148, i64 noundef %159) #8
  %161 = load ptr, ptr %24, align 8, !tbaa !95
  %162 = getelementptr inbounds %struct.xpvav, ptr %161, i64 0, i32 2
  %163 = load i64, ptr %162, align 8, !tbaa !96
  br label %164

164:                                              ; preds = %147, %158
  %165 = phi i64 [ %163, %158 ], [ %156, %147 ]
  %166 = phi ptr [ %160, %158 ], [ %148, %147 ]
  %167 = getelementptr inbounds ptr, ptr %166, i64 1
  %168 = getelementptr inbounds %struct.av, ptr %24, i64 0, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !64
  %170 = shl i64 %165, 3
  %171 = add i64 %170, 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %167, ptr align 1 %169, i64 %171, i1 false)
  %172 = load ptr, ptr %24, align 8, !tbaa !95
  %173 = getelementptr inbounds %struct.xpvav, ptr %172, i64 0, i32 2
  %174 = load i64, ptr %173, align 8, !tbaa !96
  %175 = add nsw i64 %174, 1
  %176 = getelementptr inbounds ptr, ptr %166, i64 %175
  br label %177

177:                                              ; preds = %164, %146
  %178 = phi ptr [ %142, %146 ], [ %176, %164 ]
  %179 = load ptr, ptr @my_cxt.1, align 8, !tbaa !40
  %180 = call ptr @Perl_hv_common_key_len(ptr noundef %179, ptr noundef nonnull @PL_op, i32 noundef 8, i32 noundef 64, ptr noundef null, i32 noundef 0) #8
  br label %194

181:                                              ; preds = %144, %138
  %182 = phi ptr [ %15, %144 ], [ %142, %138 ]
  %183 = load ptr, ptr %24, align 8, !tbaa !95
  %184 = getelementptr inbounds %struct.xpvav, ptr %183, i64 0, i32 2
  %185 = load i64, ptr %184, align 8, !tbaa !96
  %186 = icmp eq i64 %185, -1
  %187 = getelementptr inbounds ptr, ptr %182, i64 1
  br i1 %186, label %191, label %188

188:                                              ; preds = %181
  %189 = call ptr @Perl_av_shift(ptr noundef nonnull %24) #8
  %190 = call ptr @Perl_sv_2mortal(ptr noundef %189) #8
  store ptr %190, ptr %187, align 8, !tbaa !36
  br label %194

191:                                              ; preds = %181
  %192 = load ptr, ptr @my_cxt.1, align 8, !tbaa !40
  %193 = call ptr @Perl_hv_common_key_len(ptr noundef %192, ptr noundef nonnull @PL_op, i32 noundef 8, i32 noundef 68, ptr noundef null, i32 noundef 0) #8
  store ptr @PL_sv_undef, ptr %187, align 8, !tbaa !36
  br label %194

194:                                              ; preds = %188, %191, %177
  %195 = phi ptr [ %178, %177 ], [ %187, %188 ], [ %187, %191 ]
  store ptr %195, ptr @PL_stack_sp, align 8, !tbaa !36
  br label %196

196:                                              ; preds = %136, %194
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i1 @doglob_iter_wrapper(ptr noundef %0, ptr noundef %1, i64 %2, i1 zeroext %3) #0 !prof !35 !PGOFuncName !98 {
  %5 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !36
  %6 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.27, i32 noundef 1) #8
  %7 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !57
  %9 = and i32 %8, 2097408
  %10 = icmp eq i32 %9, 256
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load ptr, ptr %6, align 8, !tbaa !60
  %13 = getelementptr inbounds %struct.xpviv, ptr %12, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !64
  br label %17

15:                                               ; preds = %4
  %16 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %6, i32 noundef 2) #8
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i64 [ %14, %11 ], [ %16, %15 ]
  %19 = trunc i64 %18 to i32
  %20 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %21 = getelementptr inbounds i32, ptr %20, i64 1
  store ptr %21, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %22 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !36
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = tail call ptr @Perl_markstack_grow() #8
  br label %26

26:                                               ; preds = %17, %24
  %27 = phi ptr [ %25, %24 ], [ %21, %17 ]
  %28 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %29 = ptrtoint ptr %5 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = lshr exact i64 %31, 3
  %33 = trunc i64 %32 to i32
  store i32 %33, ptr %27, align 4, !tbaa !52
  store ptr %5, ptr @PL_stack_sp, align 8, !tbaa !36
  tail call fastcc void @doglob(ptr noundef %1, i32 noundef %19) #9
  %34 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !36
  %35 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %36 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %37 = getelementptr inbounds i32, ptr %36, i64 -1
  store ptr %37, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %38 = load i32, ptr %36, align 4, !tbaa !52
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %35, i64 %39
  %41 = load ptr, ptr @PL_op, align 8, !tbaa !36
  %42 = getelementptr inbounds %struct.op, ptr %41, i64 0, i32 5
  %43 = load i8, ptr %42, align 2, !tbaa !91
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
  store ptr %34, ptr @PL_stack_sp, align 8, !tbaa !36
  br label %65

54:                                               ; preds = %50
  tail call void @Perl_sv_upgrade(ptr noundef %0, i32 noundef 11) #8
  %55 = getelementptr inbounds ptr, ptr %40, i64 1
  %56 = icmp ugt ptr %55, %34
  br i1 %56, label %65, label %57

57:                                               ; preds = %54, %57
  %58 = phi ptr [ %63, %57 ], [ %55, %54 ]
  %59 = load ptr, ptr %58, align 8, !tbaa !36
  %60 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !99
  %62 = add i32 %61, 1
  store i32 %62, ptr %60, align 8, !tbaa !99
  tail call void @Perl_av_push(ptr noundef %0, ptr noundef %59) #8
  %63 = getelementptr inbounds ptr, ptr %58, i64 1
  %64 = icmp ugt ptr %63, %34
  br i1 %64, label %65, label %57, !llvm.loop !100

65:                                               ; preds = %57, %54, %53
  ret i1 %52
}

; Function Attrs: optsize
declare i32 @Perl_block_gimme() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_av_shift(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_markstack_grow() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_av_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak_sv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i1 @csh_glob(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) #0 !prof !35 !PGOFuncName !101 {
  %5 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !36
  %6 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.27, i32 noundef 1) #8
  %7 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !57
  %9 = and i32 %8, 2097408
  %10 = icmp eq i32 %9, 256
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load ptr, ptr %6, align 8, !tbaa !60
  %13 = getelementptr inbounds %struct.xpviv, ptr %12, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !64
  br label %17

15:                                               ; preds = %4
  %16 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %6, i32 noundef 2) #8
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i64 [ %14, %11 ], [ %16, %15 ]
  %19 = trunc i64 %18 to i32
  %20 = load ptr, ptr @PL_op, align 8, !tbaa !36
  %21 = getelementptr inbounds %struct.op, ptr %20, i64 0, i32 5
  %22 = load i8, ptr %21, align 2, !tbaa !91
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
  %31 = getelementptr inbounds i8, ptr %1, i64 %2
  tail call void @Perl_sv_upgrade(ptr noundef %0, i32 noundef 11) #8
  %32 = icmp sgt i64 %2, 0
  br i1 %32, label %33, label %245

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %1, i64 -1
  br label %35

35:                                               ; preds = %33, %177
  %36 = phi ptr [ %182, %177 ], [ %1, %33 ]
  %37 = phi ptr [ %181, %177 ], [ null, %33 ]
  %38 = phi ptr [ %180, %177 ], [ %34, %33 ]
  %39 = phi ptr [ %179, %177 ], [ null, %33 ]
  %40 = phi ptr [ %178, %177 ], [ null, %33 ]
  %41 = load i8, ptr %36, align 1, !tbaa !64
  switch i8 %41, label %144 [
    i8 39, label %42
    i8 34, label %42
    i8 92, label %124
  ]

42:                                               ; preds = %35, %35
  %43 = icmp eq ptr %39, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %42
  %45 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.23, i64 noundef 0) #8
  br i1 %3, label %46, label %50

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !57
  %49 = or i32 %48, 536870912
  store i32 %49, ptr %47, align 4, !tbaa !57
  br label %50

50:                                               ; preds = %44, %46, %42
  %51 = phi ptr [ %39, %42 ], [ %45, %46 ], [ %45, %44 ]
  %52 = icmp eq ptr %40, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = ptrtoint ptr %36 to i64
  %55 = ptrtoint ptr %40 to i64
  %56 = sub i64 %54, %55
  tail call void @Perl_sv_catpvn_flags(ptr noundef %51, ptr noundef nonnull %40, i64 noundef %56, i32 noundef 2) #8
  br label %57

57:                                               ; preds = %53, %50
  %58 = getelementptr inbounds i8, ptr %36, i64 1
  %59 = icmp ult ptr %58, %31
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, ptr %38, i64 2
  br label %64

62:                                               ; preds = %57, %83
  %63 = phi ptr [ %86, %83 ], [ %58, %57 ]
  br label %88

64:                                               ; preds = %60, %83
  %65 = phi ptr [ %86, %83 ], [ %58, %60 ]
  %66 = phi ptr [ %85, %83 ], [ %36, %60 ]
  %67 = phi ptr [ %84, %83 ], [ %61, %60 ]
  %68 = load i8, ptr %65, align 1, !tbaa !64
  %69 = icmp eq i8 %68, 92
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = getelementptr inbounds i8, ptr %66, i64 2
  %72 = icmp ult ptr %71, %31
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load i8, ptr %71, align 1, !tbaa !64
  %75 = icmp eq i8 %74, %41
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = ptrtoint ptr %71 to i64
  %78 = ptrtoint ptr %67 to i64
  %79 = xor i64 %78, -1
  %80 = add i64 %77, %79
  tail call void @Perl_sv_catpvn_flags(ptr noundef %51, ptr noundef %67, i64 noundef %80, i32 noundef 2) #8
  br label %83

81:                                               ; preds = %64
  %82 = icmp eq i8 %68, %41
  br i1 %82, label %120, label %83

83:                                               ; preds = %81, %70, %73, %76
  %84 = phi ptr [ %71, %76 ], [ %67, %73 ], [ %67, %70 ], [ %67, %81 ]
  %85 = phi ptr [ %71, %76 ], [ %71, %73 ], [ %71, %70 ], [ %65, %81 ]
  %86 = getelementptr inbounds i8, ptr %85, i64 1
  %87 = icmp ult ptr %86, %31
  br i1 %87, label %64, label %62, !llvm.loop !102

88:                                               ; preds = %88, %62
  %89 = phi ptr [ %96, %88 ], [ %1, %62 ]
  %90 = load i8, ptr %89, align 1, !tbaa !64
  %91 = zext i8 %90 to i64
  %92 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !52
  %94 = and i32 %93, 17408
  %95 = icmp eq i32 %94, 17408
  %96 = getelementptr inbounds i8, ptr %89, i64 1
  br i1 %95, label %88, label %97, !llvm.loop !103

97:                                               ; preds = %88, %97
  %98 = phi ptr [ %99, %97 ], [ %31, %88 ]
  %99 = getelementptr inbounds i8, ptr %98, i64 -1
  %100 = load i8, ptr %99, align 1, !tbaa !64
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !52
  %104 = and i32 %103, 17408
  %105 = icmp eq i32 %104, 17408
  br i1 %105, label %97, label %106, !llvm.loop !104

106:                                              ; preds = %97
  %107 = getelementptr inbounds i8, ptr %89, i64 %2
  %108 = icmp ult ptr %98, %107
  %109 = icmp eq ptr %51, null
  br i1 %108, label %110, label %118

110:                                              ; preds = %106
  %111 = ptrtoint ptr %98 to i64
  %112 = ptrtoint ptr %89 to i64
  %113 = sub i64 %111, %112
  br i1 %109, label %115, label %114

114:                                              ; preds = %110
  tail call void @Perl_sv_setpvn(ptr noundef nonnull %51, ptr noundef nonnull %89, i64 noundef %113) #8
  br label %184

115:                                              ; preds = %110
  %116 = select i1 %3, i32 536870912, i32 0
  %117 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %89, i64 noundef %113, i32 noundef %116) #8
  br label %184

118:                                              ; preds = %106
  br i1 %109, label %184, label %119

119:                                              ; preds = %118
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %51) #9
  br label %184

120:                                              ; preds = %81
  %121 = ptrtoint ptr %65 to i64
  %122 = ptrtoint ptr %67 to i64
  %123 = sub i64 %121, %122
  tail call void @Perl_sv_catpvn_flags(ptr noundef %51, ptr noundef %67, i64 noundef %123, i32 noundef 2) #8
  br label %177

124:                                              ; preds = %35
  %125 = icmp eq ptr %40, null
  %126 = select i1 %125, ptr %36, ptr %40
  %127 = getelementptr inbounds i8, ptr %38, i64 2
  %128 = icmp ult ptr %127, %31
  br i1 %128, label %129, label %177

129:                                              ; preds = %124
  %130 = load i8, ptr %127, align 1, !tbaa !64
  switch i8 %130, label %177 [
    i8 34, label %131
    i8 39, label %131
  ]

131:                                              ; preds = %129, %129
  %132 = icmp eq ptr %39, null
  %133 = ptrtoint ptr %127 to i64
  %134 = ptrtoint ptr %126 to i64
  %135 = xor i64 %134, -1
  %136 = add i64 %135, %133
  br i1 %132, label %137, label %143

137:                                              ; preds = %131
  %138 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull %126, i64 noundef %136) #8
  br i1 %3, label %139, label %177

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.sv, ptr %138, i64 0, i32 2
  %141 = load i32, ptr %140, align 4, !tbaa !57
  %142 = or i32 %141, 536870912
  store i32 %142, ptr %140, align 4, !tbaa !57
  br label %177

143:                                              ; preds = %131
  tail call void @Perl_sv_catpvn_flags(ptr noundef nonnull %39, ptr noundef nonnull %126, i64 noundef %136, i32 noundef 2) #8
  br label %177

144:                                              ; preds = %35
  %145 = zext i8 %41 to i64
  %146 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %145
  %147 = load i32, ptr %146, align 4, !tbaa !52
  %148 = and i32 %147, 17408
  %149 = icmp eq i32 %148, 17408
  %150 = icmp eq ptr %40, null
  br i1 %149, label %151, label %175

151:                                              ; preds = %144
  br i1 %150, label %164, label %152

152:                                              ; preds = %151
  %153 = icmp eq ptr %39, null
  %154 = ptrtoint ptr %36 to i64
  %155 = ptrtoint ptr %40 to i64
  %156 = sub i64 %154, %155
  br i1 %153, label %157, label %163

157:                                              ; preds = %152
  %158 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull %40, i64 noundef %156) #8
  br i1 %3, label %159, label %164

159:                                              ; preds = %157
  %160 = getelementptr inbounds %struct.sv, ptr %158, i64 0, i32 2
  %161 = load i32, ptr %160, align 4, !tbaa !57
  %162 = or i32 %161, 536870912
  store i32 %162, ptr %160, align 4, !tbaa !57
  br label %167

163:                                              ; preds = %152
  tail call void @Perl_sv_catpvn_flags(ptr noundef nonnull %39, ptr noundef nonnull %40, i64 noundef %156, i32 noundef 2) #8
  br label %167

164:                                              ; preds = %157, %151
  %165 = phi ptr [ %158, %157 ], [ %39, %151 ]
  %166 = icmp eq ptr %165, null
  br i1 %166, label %177, label %167

167:                                              ; preds = %159, %163, %164
  %168 = phi ptr [ %165, %164 ], [ %158, %159 ], [ %39, %163 ]
  %169 = icmp eq ptr %37, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = tail call ptr @Perl_newSV_type(i32 noundef 11) #8
  %172 = tail call ptr @Perl_sv_2mortal(ptr noundef %171) #8
  br label %173

173:                                              ; preds = %170, %167
  %174 = phi ptr [ %37, %167 ], [ %172, %170 ]
  tail call void @Perl_av_push(ptr noundef %174, ptr noundef nonnull %168) #8
  br label %177

175:                                              ; preds = %144
  %176 = select i1 %150, ptr %36, ptr %40
  br label %177

177:                                              ; preds = %120, %175, %143, %139, %137, %129, %173, %164, %124
  %178 = phi ptr [ null, %173 ], [ %40, %164 ], [ %126, %124 ], [ null, %120 ], [ %126, %129 ], [ %127, %137 ], [ %127, %139 ], [ %127, %143 ], [ %176, %175 ]
  %179 = phi ptr [ null, %173 ], [ null, %164 ], [ %39, %124 ], [ %51, %120 ], [ %39, %129 ], [ %138, %137 ], [ %138, %139 ], [ %39, %143 ], [ %39, %175 ]
  %180 = phi ptr [ %36, %173 ], [ %36, %164 ], [ %127, %124 ], [ %65, %120 ], [ %127, %129 ], [ %127, %137 ], [ %127, %139 ], [ %127, %143 ], [ %36, %175 ]
  %181 = phi ptr [ %174, %173 ], [ %37, %164 ], [ %37, %124 ], [ %37, %120 ], [ %37, %129 ], [ %37, %137 ], [ %37, %139 ], [ %37, %143 ], [ %37, %175 ]
  %182 = getelementptr inbounds i8, ptr %180, i64 1
  %183 = icmp ult ptr %182, %31
  br i1 %183, label %35, label %184, !llvm.loop !105

184:                                              ; preds = %177, %115, %114, %119, %118
  %185 = phi ptr [ %37, %118 ], [ %37, %119 ], [ %37, %114 ], [ %37, %115 ], [ %181, %177 ]
  %186 = phi ptr [ %89, %118 ], [ %89, %119 ], [ null, %114 ], [ null, %115 ], [ %178, %177 ]
  %187 = phi ptr [ null, %118 ], [ null, %119 ], [ %51, %114 ], [ %117, %115 ], [ %179, %177 ]
  %188 = phi ptr [ %98, %118 ], [ %98, %119 ], [ %63, %114 ], [ %63, %115 ], [ %182, %177 ]
  %189 = icmp eq ptr %185, null
  br i1 %189, label %245, label %190

190:                                              ; preds = %184
  %191 = load ptr, ptr %185, align 8, !tbaa !95
  %192 = getelementptr inbounds %struct.xpvav, ptr %191, i64 0, i32 2
  %193 = load i64, ptr %192, align 8, !tbaa !96
  %194 = trunc i64 %193 to i32
  %195 = icmp eq i32 %194, -1
  br i1 %195, label %245, label %196

196:                                              ; preds = %190
  %197 = getelementptr inbounds %struct.av, ptr %185, i64 0, i32 3
  %198 = load ptr, ptr %197, align 8, !tbaa !64
  br label %199

199:                                              ; preds = %196, %240
  %200 = phi i32 [ %243, %240 ], [ %194, %196 ]
  %201 = phi ptr [ %217, %240 ], [ %198, %196 ]
  %202 = phi ptr [ %242, %240 ], [ %5, %196 ]
  %203 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %204 = getelementptr inbounds i32, ptr %203, i64 1
  store ptr %204, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %205 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !36
  %206 = icmp eq ptr %204, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %199
  %208 = tail call ptr @Perl_markstack_grow() #8
  br label %209

209:                                              ; preds = %199, %207
  %210 = phi ptr [ %208, %207 ], [ %204, %199 ]
  %211 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %212 = ptrtoint ptr %202 to i64
  %213 = ptrtoint ptr %211 to i64
  %214 = sub i64 %212, %213
  %215 = lshr exact i64 %214, 3
  %216 = trunc i64 %215 to i32
  store i32 %216, ptr %210, align 4, !tbaa !52
  store ptr %202, ptr @PL_stack_sp, align 8, !tbaa !36
  %217 = getelementptr inbounds ptr, ptr %201, i64 1
  %218 = load ptr, ptr %201, align 8, !tbaa !36
  %219 = getelementptr inbounds %struct.sv, ptr %218, i64 0, i32 3
  %220 = load ptr, ptr %219, align 8, !tbaa !64
  tail call fastcc void @doglob(ptr noundef %220, i32 noundef %19) #9
  %221 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !36
  %222 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %223 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %224 = getelementptr inbounds i32, ptr %223, i64 -1
  store ptr %224, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %225 = load i32, ptr %223, align 4, !tbaa !52
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds ptr, ptr %222, i64 %226
  %228 = getelementptr inbounds ptr, ptr %227, i64 1
  %229 = icmp ugt ptr %228, %221
  br i1 %229, label %240, label %230

230:                                              ; preds = %209, %230
  %231 = phi ptr [ %236, %230 ], [ %228, %209 ]
  %232 = load ptr, ptr %231, align 8, !tbaa !36
  %233 = getelementptr inbounds %struct.sv, ptr %232, i64 0, i32 1
  %234 = load i32, ptr %233, align 8, !tbaa !99
  %235 = add i32 %234, 1
  store i32 %235, ptr %233, align 8, !tbaa !99
  tail call void @Perl_av_push(ptr noundef %0, ptr noundef %232) #8
  %236 = getelementptr inbounds ptr, ptr %231, i64 1
  %237 = icmp ugt ptr %236, %221
  br i1 %237, label %238, label %230, !llvm.loop !106

238:                                              ; preds = %230
  %239 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  br label %240

240:                                              ; preds = %238, %209
  %241 = phi ptr [ %239, %238 ], [ %222, %209 ]
  %242 = getelementptr inbounds ptr, ptr %241, i64 %226
  %243 = add nsw i32 %200, -1
  %244 = icmp eq i32 %200, 0
  br i1 %244, label %245, label %199, !llvm.loop !107

245:                                              ; preds = %240, %29, %190, %184
  %246 = phi ptr [ %188, %184 ], [ %188, %190 ], [ %1, %29 ], [ %188, %240 ]
  %247 = phi ptr [ %187, %184 ], [ %187, %190 ], [ null, %29 ], [ %187, %240 ]
  %248 = phi ptr [ %186, %184 ], [ %186, %190 ], [ null, %29 ], [ %186, %240 ]
  %249 = phi i1 [ false, %184 ], [ true, %190 ], [ false, %29 ], [ true, %240 ]
  %250 = phi ptr [ %5, %184 ], [ %5, %190 ], [ %5, %29 ], [ %242, %240 ]
  %251 = icmp ne ptr %248, null
  %252 = icmp ne ptr %247, null
  %253 = select i1 %251, i1 true, i1 %252
  br i1 %253, label %254, label %306

254:                                              ; preds = %245
  br i1 %252, label %255, label %263

255:                                              ; preds = %254
  br i1 %251, label %256, label %260

256:                                              ; preds = %255
  %257 = ptrtoint ptr %246 to i64
  %258 = ptrtoint ptr %248 to i64
  %259 = sub i64 %257, %258
  tail call void @Perl_sv_catpvn_flags(ptr noundef nonnull %247, ptr noundef nonnull %248, i64 noundef %259, i32 noundef 2) #8
  br label %260

260:                                              ; preds = %256, %255
  %261 = getelementptr inbounds %struct.sv, ptr %247, i64 0, i32 3
  %262 = load ptr, ptr %261, align 8, !tbaa !64
  br label %263

263:                                              ; preds = %254, %260
  %264 = phi ptr [ %262, %260 ], [ %248, %254 ]
  %265 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %266 = getelementptr inbounds i32, ptr %265, i64 1
  store ptr %266, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %267 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !36
  %268 = icmp eq ptr %266, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %263
  %270 = tail call ptr @Perl_markstack_grow() #8
  br label %271

271:                                              ; preds = %263, %269
  %272 = phi ptr [ %270, %269 ], [ %266, %263 ]
  %273 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %274 = ptrtoint ptr %250 to i64
  %275 = ptrtoint ptr %273 to i64
  %276 = sub i64 %274, %275
  %277 = lshr exact i64 %276, 3
  %278 = trunc i64 %277 to i32
  store i32 %278, ptr %272, align 4, !tbaa !52
  store ptr %250, ptr @PL_stack_sp, align 8, !tbaa !36
  tail call fastcc void @doglob(ptr noundef %264, i32 noundef %19) #9
  br i1 %252, label %279, label %280

279:                                              ; preds = %271
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %247) #9
  br label %280

280:                                              ; preds = %279, %271
  %281 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !36
  %282 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  %283 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %284 = getelementptr inbounds i32, ptr %283, i64 -1
  store ptr %284, ptr @PL_markstack_ptr, align 8, !tbaa !36
  %285 = load i32, ptr %283, align 4, !tbaa !52
  %286 = sext i32 %285 to i64
  %287 = icmp ne i32 %30, 3
  %288 = select i1 %249, i1 true, i1 %287
  br i1 %288, label %289, label %308

289:                                              ; preds = %280
  %290 = getelementptr inbounds ptr, ptr %282, i64 %286
  %291 = getelementptr inbounds ptr, ptr %290, i64 1
  %292 = icmp ugt ptr %291, %281
  br i1 %292, label %303, label %293

293:                                              ; preds = %289, %293
  %294 = phi ptr [ %299, %293 ], [ %291, %289 ]
  %295 = load ptr, ptr %294, align 8, !tbaa !36
  %296 = getelementptr inbounds %struct.sv, ptr %295, i64 0, i32 1
  %297 = load i32, ptr %296, align 8, !tbaa !99
  %298 = add i32 %297, 1
  store i32 %298, ptr %296, align 8, !tbaa !99
  tail call void @Perl_av_push(ptr noundef %0, ptr noundef %295) #8
  %299 = getelementptr inbounds ptr, ptr %294, i64 1
  %300 = icmp ugt ptr %299, %281
  br i1 %300, label %301, label %293, !llvm.loop !108

301:                                              ; preds = %293
  %302 = load ptr, ptr @PL_stack_base, align 8, !tbaa !36
  br label %303

303:                                              ; preds = %301, %289
  %304 = phi ptr [ %302, %301 ], [ %282, %289 ]
  %305 = getelementptr inbounds ptr, ptr %304, i64 %286
  br label %306

306:                                              ; preds = %303, %245
  %307 = phi ptr [ %305, %303 ], [ %250, %245 ]
  store ptr %307, ptr @PL_stack_sp, align 8, !tbaa !36
  br label %308

308:                                              ; preds = %280, %306
  %309 = phi i1 [ false, %306 ], [ true, %280 ]
  ret i1 %309
}

; Function Attrs: optsize
declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !109 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !99
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 8, !tbaa !99
  br label %8

7:                                                ; preds = %1
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %3) #8
  br label %8

8:                                                ; preds = %5, %7
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newCONSTSUB(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }
attributes #11 = { nounwind optsize willreturn memory(read) }
attributes #12 = { nounwind optsize willreturn memory(none) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

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
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !37, i64 8}
!41 = !{!"", !42, i64 0, !37, i64 8, !37, i64 16}
!42 = !{!"int", !38, i64 0}
!43 = !{!41, !37, i64 16}
!44 = !{!45, !42, i64 8}
!45 = !{!"iv_s", !37, i64 0, !42, i64 8, !46, i64 16}
!46 = !{!"long", !38, i64 0}
!47 = !{!45, !46, i64 16}
!48 = !{!45, !37, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"Glob.c:XS_File__Glob_GLOB_ERROR"}
!52 = !{!42, !42, i64 0}
!53 = !{!54, !38, i64 35}
!54 = !{!"op", !37, i64 0, !37, i64 8, !37, i64 16, !46, i64 24, !42, i64 32, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !38, i64 34, !38, i64 35}
!55 = !{!54, !46, i64 24}
!56 = !{!41, !42, i64 0}
!57 = !{!58, !42, i64 12}
!58 = !{!"sv", !37, i64 0, !42, i64 8, !42, i64 12, !38, i64 16}
!59 = !{!"Glob.c:XS_File__Glob_bsd_glob"}
!60 = !{!58, !37, i64 0}
!61 = !{!62, !46, i64 16}
!62 = !{!"xpv", !37, i64 0, !38, i64 8, !46, i64 16, !38, i64 24}
!63 = !{!46, !46, i64 0}
!64 = !{!38, !38, i64 0}
!65 = !{!"Glob.c:XS_File__Glob_csh_glob"}
!66 = !{!"Glob.c:XS_File__Glob_bsd_glob_override"}
!67 = !{!"Glob.c:XS_File__Glob_AUTOLOAD"}
!68 = !{!69, !37, i64 0}
!69 = !{!"cv", !37, i64 0, !42, i64 8, !42, i64 12, !38, i64 16}
!70 = !{!69, !42, i64 12}
!71 = !{!72, !37, i64 48}
!72 = !{!"cop", !37, i64 0, !37, i64 8, !37, i64 16, !46, i64 24, !42, i64 32, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !38, i64 34, !38, i64 35, !42, i64 36, !37, i64 40, !37, i64 48, !42, i64 56, !42, i64 60, !37, i64 64, !37, i64 72}
!73 = !{!74, !37, i64 0}
!74 = !{!"gp", !37, i64 0, !37, i64 8, !37, i64 16, !42, i64 24, !42, i64 28, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !42, i64 64, !42, i64 67, !37, i64 72}
!75 = !{!72, !42, i64 36}
!76 = !{!"Glob.c:csh_glob_iter"}
!77 = !{!"Glob.c:glob_ophook"}
!78 = !{!"Glob.c:constant_add_symbol"}
!79 = !{!"Glob.c:S_is_safe_syscall"}
!80 = !{!"Glob.c:doglob"}
!81 = !{!82, !42, i64 0}
!82 = !{!"", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!83 = !{!82, !37, i64 16}
!84 = !{!85, !85, i64 0}
!85 = !{!"_Bool", !38, i64 0}
!86 = !{i8 0, i8 2}
!87 = !{}
!88 = distinct !{!88, !50}
!89 = !{!"Glob.c:errfunc"}
!90 = !{!"Glob.c:iterate"}
!91 = !{!54, !38, i64 34}
!92 = !{!93, !42, i64 12}
!93 = !{!"av", !37, i64 0, !42, i64 8, !42, i64 12, !38, i64 16}
!94 = !{ptr @csh_glob, ptr @doglob_iter_wrapper}
!95 = !{!93, !37, i64 0}
!96 = !{!97, !46, i64 16}
!97 = !{!"xpvav", !37, i64 0, !38, i64 8, !46, i64 16, !46, i64 24, !37, i64 32}
!98 = !{!"Glob.c:doglob_iter_wrapper"}
!99 = !{!58, !42, i64 8}
!100 = distinct !{!100, !50}
!101 = !{!"Glob.c:csh_glob"}
!102 = distinct !{!102, !50}
!103 = distinct !{!103, !50}
!104 = distinct !{!104, !50}
!105 = distinct !{!105, !50}
!106 = distinct !{!106, !50}
!107 = distinct !{!107, !50}
!108 = distinct !{!108, !50}
!109 = !{!"Glob.c:S_SvREFCNT_dec"}
