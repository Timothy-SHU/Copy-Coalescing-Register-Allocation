; ModuleID = 'ext/arybase/arybase.c'
source_filename = "ext/arybase/arybase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.1, %union._xivu, %union._xnvu }
%union._xmgu = type { ptr }
%union.anon.1 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.2, %union._xivu }
%union.anon.2 = type { i64 }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.3, ptr, %union.anon.4, %union.anon.5, %union.anon.6, ptr, %union.anon.7, ptr, i32, i32, i32 }
%union.anon.3 = type { i64 }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%union.anon.6 = type { ptr }
%union.anon.7 = type { ptr }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.binop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr }
%struct.ptable = type { ptr, i64, i64 }
%struct.svop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }
%struct.unop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.ab_op_info = type { ptr, i64 }
%struct.ptable_ent = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [22 x i8] c"ext/arybase/arybase.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"arybase::FETCH\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"arybase::STORE\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"arybase::mg::FETCH\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"arybase::mg::STORE\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@ab_initialized = internal unnamed_addr global i32 0, align 4
@ab_op_map = internal unnamed_addr global ptr null, align 8
@ab_old_ck_sassign = internal global ptr null, align 8
@ab_old_ck_aassign = internal global ptr null, align 8
@ab_old_ck_aelem = internal global ptr null, align 8
@ab_old_ck_aslice = internal global ptr null, align 8
@ab_old_ck_lslice = internal global ptr null, align 8
@ab_old_ck_av2arylen = internal global ptr null, align 8
@ab_old_ck_splice = internal global ptr null, align 8
@ab_old_ck_keys = internal global ptr null, align 8
@ab_old_ck_each = internal global ptr null, align 8
@ab_old_ck_substr = internal global ptr null, align 8
@ab_old_ck_rindex = internal global ptr null, align 8
@ab_old_ck_index = internal global ptr null, align 8
@ab_old_ck_pos = internal global ptr null, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_curcop = external local_unnamed_addr global ptr, align 8
@PL_compiling = external global %struct.cop, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"arybase\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"$[\00", align 1
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [12 x i8] c"sv, newbase\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"That use of $[ is unsupported\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"Assigning non-zero to $[ is no longer possible\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"sv\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Not a SCALAR reference\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@.str.14 = private unnamed_addr constant [38 x i8] c"Use of assignment to $[ is deprecated\00", align 1
@PL_defstash = external local_unnamed_addr global ptr, align 8
@PL_hintgv = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [19 x i8] c"arybase::leftbrack\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"panic: invalid op type for arybase.xs:ab_ck_base: %d\00", align 1
@PL_op = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [56 x i8] c"panic: invalid op type for arybase.xs:ab_pp_basearg: %d\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"arybase::mg\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tie(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !57 {
  %4 = tail call ptr @Perl_newSV_type(i32 noundef 1) #15
  %5 = icmp eq ptr %1, null
  br i1 %5, label %10, label %6, !prof !58

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !59
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 8, !tbaa !59
  br label %12

10:                                               ; preds = %3
  %11 = tail call ptr @Perl_newSV(i64 noundef 0) #15
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %1, %6 ], [ %11, %10 ]
  %14 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 3
  store ptr %13, ptr %14, align 8, !tbaa !65
  %15 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !66
  %17 = or i32 %16, 2048
  store i32 %17, ptr %15, align 4, !tbaa !66
  %18 = tail call ptr @Perl_sv_bless(ptr noundef %4, ptr noundef %2) #15
  %19 = tail call i32 @Perl_sv_unmagic(ptr noundef %0, i32 noundef 113) #15
  tail call void @Perl_sv_magic(ptr noundef %0, ptr noundef %4, i32 noundef 113, ptr noundef null, i32 noundef 0) #15
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %4) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_bless(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_sv_unmagic(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 !prof !57 !PGOFuncName !67 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3, !prof !58

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !59
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9, !prof !68

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !59
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #15
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boot_arybase(ptr noundef %0) local_unnamed_addr #0 !prof !69 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #15
  %3 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_arybase_FETCH) #15
  %4 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.3, ptr noundef nonnull @XS_arybase_STORE) #15
  %5 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_arybase__mg_FETCH) #15
  %6 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.5, ptr noundef nonnull @XS_arybase__mg_STORE) #15
  %7 = tail call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.6, i64 noundef 1, i32 noundef 130, i32 noundef 3) #15
  %8 = getelementptr inbounds %struct.gv, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  %11 = tail call i32 @Perl_sv_unmagic(ptr noundef %10, i32 noundef 0) #15
  %12 = load ptr, ptr %8, align 8, !tbaa !65
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  %14 = tail call fastcc ptr @S_CvGV(ptr noundef %0) #16
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = getelementptr inbounds %struct.xpvgv, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !65
  tail call void @tie(ptr noundef %13, ptr noundef null, ptr noundef %17) #16
  %18 = load i32, ptr @ab_initialized, align 4, !tbaa !74
  %19 = add i32 %18, 1
  store i32 %19, ptr @ab_initialized, align 4, !tbaa !74
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %21, label %23, !prof !58

21:                                               ; preds = %1
  %22 = tail call fastcc ptr @ptable_new() #16
  store ptr %22, ptr @ab_op_map, align 8, !tbaa !75
  tail call void @Perl_wrap_op_checker(i32 noundef 37, ptr noundef nonnull @ab_ck_sassign, ptr noundef nonnull @ab_old_ck_sassign) #15
  tail call void @Perl_wrap_op_checker(i32 noundef 38, ptr noundef nonnull @ab_ck_aassign, ptr noundef nonnull @ab_old_ck_aassign) #15
  tail call void @Perl_wrap_op_checker(i32 noundef 138, ptr noundef nonnull @ab_ck_base, ptr noundef nonnull @ab_old_ck_aelem) #15
  tail call void @Perl_wrap_op_checker(i32 noundef 139, ptr noundef nonnull @ab_ck_base, ptr noundef nonnull @ab_old_ck_aslice) #15
  tail call void @Perl_wrap_op_checker(i32 noundef 159, ptr noundef nonnull @ab_ck_base, ptr noundef nonnull @ab_old_ck_lslice) #15
  tail call void @Perl_wrap_op_checker(i32 noundef 16, ptr noundef nonnull @ab_ck_base, ptr noundef nonnull @ab_old_ck_av2arylen) #15
  tail call void @Perl_wrap_op_checker(i32 noundef 162, ptr noundef nonnull @ab_ck_base, ptr noundef nonnull @ab_old_ck_splice) #15
  tail call void @Perl_wrap_op_checker(i32 noundef 146, ptr noundef nonnull @ab_ck_base, ptr noundef nonnull @ab_old_ck_keys) #15
  tail call void @Perl_wrap_op_checker(i32 noundef 144, ptr noundef nonnull @ab_ck_base, ptr noundef nonnull @ab_old_ck_each) #15
  tail call void @Perl_wrap_op_checker(i32 noundef 121, ptr noundef nonnull @ab_ck_base, ptr noundef nonnull @ab_old_ck_substr) #15
  tail call void @Perl_wrap_op_checker(i32 noundef 124, ptr noundef nonnull @ab_ck_base, ptr noundef nonnull @ab_old_ck_rindex) #15
  tail call void @Perl_wrap_op_checker(i32 noundef 123, ptr noundef nonnull @ab_ck_base, ptr noundef nonnull @ab_old_ck_index) #15
  tail call void @Perl_wrap_op_checker(i32 noundef 46, ptr noundef nonnull @ab_ck_base, ptr noundef nonnull @ab_old_ck_pos) #15
  br label %23

23:                                               ; preds = %21, %1
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #15
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newXS_deffile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_arybase_FETCH(ptr nocapture readnone %0) #0 !prof !69 !PGOFuncName !76 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !75
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !75
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !75
  %5 = load i32, ptr %3, align 4, !tbaa !74
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !75
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = shl i64 %11, 29
  %13 = ashr i64 %12, 32
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds ptr, ptr %2, i64 %14
  %16 = load ptr, ptr @PL_curcop, align 8, !tbaa !75
  %17 = getelementptr %struct.cop, ptr %16, i64 0, i32 10
  %18 = load i32, ptr %17, align 8, !tbaa !77
  %19 = and i32 %18, 469762048
  %20 = icmp ult i32 %19, 201326592
  br i1 %20, label %28, label %21, !prof !80

21:                                               ; preds = %1
  %22 = and i32 %18, 469893120
  %23 = icmp eq i32 %22, 469893120
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  %25 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.7, i64 noundef 7) #15
  br i1 %25, label %26, label %45

26:                                               ; preds = %24
  %27 = load ptr, ptr @PL_curcop, align 8, !tbaa !75
  br label %28

28:                                               ; preds = %26, %1
  %29 = phi ptr [ %27, %26 ], [ %16, %1 ]
  %30 = getelementptr inbounds %struct.cop, ptr %29, i64 0, i32 13
  %31 = load ptr, ptr %30, align 8, !tbaa !81
  %32 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %31, ptr noundef nonnull @.str.8, i64 noundef 2, i32 noundef 0, i32 noundef 0) #15
  %33 = icmp eq ptr %32, null
  br i1 %33, label %45, label %34, !prof !82

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !66
  %37 = and i32 %36, 65280
  %38 = icmp ne i32 %37, 0
  %39 = and i32 %36, 255
  %40 = icmp eq i32 %39, 8
  %41 = or i1 %38, %40
  %42 = and i32 %36, 16777471
  %43 = icmp eq i32 %42, 16777226
  %44 = or i1 %43, %41
  br i1 %44, label %57, label %45, !prof !83

45:                                               ; preds = %21, %24, %34, %28
  %46 = load ptr, ptr @PL_stack_max, align 8, !tbaa !75
  %47 = ptrtoint ptr %46 to i64
  %48 = ptrtoint ptr %15 to i64
  %49 = sub i64 %47, %48
  %50 = icmp slt i64 %49, 8
  br i1 %50, label %51, label %53, !prof !84

51:                                               ; preds = %45
  %52 = tail call ptr @Perl_stack_grow(ptr noundef %15, ptr noundef %15, i64 noundef 1) #15
  br label %53

53:                                               ; preds = %45, %51
  %54 = phi ptr [ %52, %51 ], [ %15, %45 ]
  %55 = tail call ptr @Perl_sv_newmortal() #15
  %56 = getelementptr inbounds ptr, ptr %54, i64 1
  store ptr %55, ptr %56, align 8, !tbaa !75
  tail call void @Perl_sv_setiv(ptr noundef %55, i64 noundef 0) #15
  br label %68

57:                                               ; preds = %34
  %58 = load ptr, ptr @PL_stack_max, align 8, !tbaa !75
  %59 = ptrtoint ptr %58 to i64
  %60 = ptrtoint ptr %15 to i64
  %61 = sub i64 %59, %60
  %62 = icmp slt i64 %61, 8
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = tail call ptr @Perl_stack_grow(ptr noundef %15, ptr noundef %15, i64 noundef 1) #15
  br label %65

65:                                               ; preds = %57, %63
  %66 = phi ptr [ %64, %63 ], [ %15, %57 ]
  %67 = getelementptr inbounds ptr, ptr %66, i64 1
  store ptr %32, ptr %67, align 8, !tbaa !75
  br label %68

68:                                               ; preds = %65, %53
  %69 = phi ptr [ %67, %65 ], [ %56, %53 ]
  store ptr %69, ptr @PL_stack_sp, align 8, !tbaa !75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_arybase_STORE(ptr noundef %0) #0 !prof !69 !PGOFuncName !85 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !75
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !75
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !75
  %5 = load i32, ptr %3, align 4, !tbaa !74
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !75
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 16
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.9) #15
  %15 = load ptr, ptr @PL_stack_base, align 8, !tbaa !75
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %6, %1 ]
  %18 = getelementptr ptr, ptr %17, i64 %7
  %19 = getelementptr ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !75
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !66
  %23 = and i32 %22, 2097408
  %24 = icmp eq i32 %23, 256
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load ptr, ptr %20, align 8, !tbaa !86
  %27 = getelementptr inbounds %struct.xpviv, ptr %26, i64 0, i32 4
  %28 = load i64, ptr %27, align 8, !tbaa !65
  br label %31

29:                                               ; preds = %16
  %30 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %20, i32 noundef 2) #15
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi i64 [ %28, %25 ], [ %30, %29 ]
  %33 = load ptr, ptr @PL_curcop, align 8, !tbaa !75
  %34 = getelementptr %struct.cop, ptr %33, i64 0, i32 10
  %35 = load i32, ptr %34, align 8, !tbaa !77
  %36 = and i32 %35, 469762048
  %37 = icmp ult i32 %36, 201326592
  br i1 %37, label %45, label %38

38:                                               ; preds = %31
  %39 = and i32 %35, 469893120
  %40 = icmp eq i32 %39, 469893120
  br i1 %40, label %41, label %74

41:                                               ; preds = %38
  %42 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.7, i64 noundef 7) #15
  br i1 %42, label %43, label %74

43:                                               ; preds = %41
  %44 = load ptr, ptr @PL_curcop, align 8, !tbaa !75
  br label %45

45:                                               ; preds = %43, %31
  %46 = phi ptr [ %44, %43 ], [ %33, %31 ]
  %47 = getelementptr inbounds %struct.cop, ptr %46, i64 0, i32 13
  %48 = load ptr, ptr %47, align 8, !tbaa !81
  %49 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %48, ptr noundef nonnull @.str.8, i64 noundef 2, i32 noundef 0, i32 noundef 0) #15
  %50 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !66
  %52 = and i32 %51, 65280
  %53 = icmp ne i32 %52, 0
  %54 = and i32 %51, 255
  %55 = icmp eq i32 %54, 8
  %56 = or i1 %53, %55
  %57 = and i32 %51, 16777471
  %58 = icmp eq i32 %57, 16777226
  %59 = or i1 %58, %56
  br i1 %59, label %60, label %72

60:                                               ; preds = %45
  %61 = and i32 %51, 2097408
  %62 = icmp eq i32 %61, 256
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load ptr, ptr %49, align 8, !tbaa !86
  %65 = getelementptr inbounds %struct.xpviv, ptr %64, i64 0, i32 4
  %66 = load i64, ptr %65, align 8, !tbaa !65
  br label %69

67:                                               ; preds = %60
  %68 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %49, i32 noundef 2) #15
  br label %69

69:                                               ; preds = %67, %63
  %70 = phi i64 [ %66, %63 ], [ %68, %67 ]
  %71 = icmp eq i64 %70, %32
  br i1 %71, label %78, label %76

72:                                               ; preds = %45
  %73 = icmp eq i64 %32, 0
  br i1 %73, label %78, label %76

74:                                               ; preds = %41, %38
  %75 = icmp eq i64 %32, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %74, %69, %72
  %77 = phi ptr [ @.str.10, %72 ], [ @.str.10, %69 ], [ @.str.11, %74 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull %77) #15
  br label %78

78:                                               ; preds = %76, %74, %69, %72
  %79 = load ptr, ptr @PL_stack_base, align 8, !tbaa !75
  %80 = getelementptr ptr, ptr %79, i64 %7
  store ptr %80, ptr @PL_stack_sp, align 8, !tbaa !75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_arybase__mg_FETCH(ptr noundef %0) #0 !prof !69 !PGOFuncName !87 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !75
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !75
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !75
  %5 = load i32, ptr %3, align 4, !tbaa !74
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !75
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.12) #15
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !75
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = shl i64 %12, 29
  %20 = ashr i64 %19, 32
  %21 = sub nsw i64 0, %20
  %22 = getelementptr inbounds ptr, ptr %2, i64 %21
  %23 = sext i32 %7 to i64
  %24 = getelementptr inbounds ptr, ptr %18, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !75
  %26 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !66
  %28 = and i32 %27, 2048
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !65
  %33 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !66
  %35 = and i32 %34, 255
  %36 = icmp ugt i32 %35, 10
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %17
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.13) #15
  br label %38

38:                                               ; preds = %37, %30
  %39 = load ptr, ptr @PL_curcop, align 8, !tbaa !75
  %40 = getelementptr %struct.cop, ptr %39, i64 0, i32 10
  %41 = load i32, ptr %40, align 8, !tbaa !77
  %42 = and i32 %41, 469762048
  %43 = icmp ult i32 %42, 201326592
  br i1 %43, label %51, label %44

44:                                               ; preds = %38
  %45 = and i32 %41, 469893120
  %46 = icmp eq i32 %45, 469893120
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.7, i64 noundef 7) #15
  br i1 %48, label %49, label %56

49:                                               ; preds = %47
  %50 = load ptr, ptr @PL_curcop, align 8, !tbaa !75
  br label %51

51:                                               ; preds = %49, %38
  %52 = phi ptr [ %50, %49 ], [ %39, %38 ]
  %53 = getelementptr inbounds %struct.cop, ptr %52, i64 0, i32 13
  %54 = load ptr, ptr %53, align 8, !tbaa !81
  %55 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %54, ptr noundef nonnull @.str.8, i64 noundef 2, i32 noundef 0, i32 noundef 0) #15
  br label %56

56:                                               ; preds = %44, %47, %51
  %57 = phi ptr [ %55, %51 ], [ null, %47 ], [ null, %44 ]
  %58 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !65
  %60 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !66
  %62 = and i32 %61, 2097152
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %56
  %65 = tail call i32 @Perl_mg_get(ptr noundef nonnull %59) #15
  %66 = load ptr, ptr %58, align 8, !tbaa !65
  %67 = getelementptr inbounds %struct.sv, ptr %66, i64 0, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !66
  br label %69

69:                                               ; preds = %56, %64
  %70 = phi i32 [ %61, %56 ], [ %68, %64 ]
  %71 = and i32 %70, 65280
  %72 = icmp ne i32 %71, 0
  %73 = and i32 %70, 255
  %74 = icmp eq i32 %73, 8
  %75 = or i1 %72, %74
  %76 = and i32 %70, 16777471
  %77 = icmp eq i32 %76, 16777226
  %78 = or i1 %77, %75
  br i1 %78, label %79, label %125

79:                                               ; preds = %69
  %80 = load ptr, ptr @PL_stack_max, align 8, !tbaa !75
  %81 = ptrtoint ptr %80 to i64
  %82 = ptrtoint ptr %22 to i64
  %83 = sub i64 %81, %82
  %84 = icmp slt i64 %83, 8
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = tail call ptr @Perl_stack_grow(ptr noundef %22, ptr noundef %22, i64 noundef 1) #15
  br label %87

87:                                               ; preds = %79, %85
  %88 = phi ptr [ %86, %85 ], [ %22, %79 ]
  %89 = tail call ptr @Perl_sv_newmortal() #15
  %90 = getelementptr inbounds ptr, ptr %88, i64 1
  store ptr %89, ptr %90, align 8, !tbaa !75
  %91 = load ptr, ptr %58, align 8, !tbaa !65
  %92 = getelementptr inbounds %struct.sv, ptr %91, i64 0, i32 2
  %93 = load i32, ptr %92, align 4, !tbaa !66
  %94 = and i32 %93, 256
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %87
  %97 = load ptr, ptr %91, align 8, !tbaa !86
  %98 = getelementptr inbounds %struct.xpviv, ptr %97, i64 0, i32 4
  %99 = load i64, ptr %98, align 8, !tbaa !65
  br label %102

100:                                              ; preds = %87
  %101 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %91, i32 noundef 0) #15
  br label %102

102:                                              ; preds = %100, %96
  %103 = phi i64 [ %99, %96 ], [ %101, %100 ]
  %104 = icmp eq ptr %57, null
  br i1 %104, label %130, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.sv, ptr %57, i64 0, i32 2
  %107 = load i32, ptr %106, align 4, !tbaa !66
  %108 = and i32 %107, 65280
  %109 = icmp ne i32 %108, 0
  %110 = and i32 %107, 255
  %111 = icmp eq i32 %110, 8
  %112 = or i1 %109, %111
  %113 = and i32 %107, 16777471
  %114 = icmp eq i32 %113, 16777226
  %115 = or i1 %114, %112
  br i1 %115, label %116, label %130

116:                                              ; preds = %105
  %117 = and i32 %107, 2097408
  %118 = icmp eq i32 %117, 256
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load ptr, ptr %57, align 8, !tbaa !86
  %121 = getelementptr inbounds %struct.xpviv, ptr %120, i64 0, i32 4
  %122 = load i64, ptr %121, align 8, !tbaa !65
  br label %130

123:                                              ; preds = %116
  %124 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %57, i32 noundef 2) #15
  br label %130

125:                                              ; preds = %69
  %126 = load ptr, ptr @PL_stack_base, align 8, !tbaa !75
  %127 = getelementptr inbounds ptr, ptr %126, i64 %23
  store ptr @PL_sv_undef, ptr %127, align 8, !tbaa !75
  %128 = load ptr, ptr @PL_stack_base, align 8, !tbaa !75
  %129 = getelementptr inbounds ptr, ptr %128, i64 %23
  br label %133

130:                                              ; preds = %123, %119, %102, %105
  %131 = phi i64 [ %122, %119 ], [ %124, %123 ], [ 0, %102 ], [ 0, %105 ]
  %132 = tail call fastcc i64 @adjust_index_r(i64 noundef %103, i64 noundef %131) #16
  tail call void @Perl_sv_setiv(ptr noundef %89, i64 noundef %132) #15
  br label %133

133:                                              ; preds = %125, %130
  %134 = phi ptr [ %129, %125 ], [ %90, %130 ]
  store ptr %134, ptr @PL_stack_sp, align 8, !tbaa !75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_arybase__mg_STORE(ptr noundef %0) #0 !prof !69 !PGOFuncName !88 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !75
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !75
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !75
  %5 = load i32, ptr %3, align 4, !tbaa !74
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !75
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 16
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.9) #15
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !75
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !75
  %22 = getelementptr ptr, ptr %18, i64 %8
  %23 = getelementptr ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !75
  %25 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !66
  %27 = and i32 %26, 2048
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !65
  %32 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !66
  %34 = and i32 %33, 255
  %35 = icmp ugt i32 %34, 10
  br i1 %35, label %36, label %37

36:                                               ; preds = %29, %17
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.13) #15
  br label %37

37:                                               ; preds = %36, %29
  %38 = load ptr, ptr @PL_curcop, align 8, !tbaa !75
  %39 = getelementptr %struct.cop, ptr %38, i64 0, i32 10
  %40 = load i32, ptr %39, align 8, !tbaa !77
  %41 = and i32 %40, 469762048
  %42 = icmp ult i32 %41, 201326592
  br i1 %42, label %50, label %43

43:                                               ; preds = %37
  %44 = and i32 %40, 469893120
  %45 = icmp eq i32 %44, 469893120
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.7, i64 noundef 7) #15
  br i1 %47, label %48, label %55

48:                                               ; preds = %46
  %49 = load ptr, ptr @PL_curcop, align 8, !tbaa !75
  br label %50

50:                                               ; preds = %48, %37
  %51 = phi ptr [ %49, %48 ], [ %38, %37 ]
  %52 = getelementptr inbounds %struct.cop, ptr %51, i64 0, i32 13
  %53 = load ptr, ptr %52, align 8, !tbaa !81
  %54 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %53, ptr noundef nonnull @.str.8, i64 noundef 2, i32 noundef 0, i32 noundef 0) #15
  br label %55

55:                                               ; preds = %43, %46, %50
  %56 = phi ptr [ %54, %50 ], [ null, %46 ], [ null, %43 ]
  %57 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !66
  %59 = and i32 %58, 2097152
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = tail call i32 @Perl_mg_get(ptr noundef nonnull %24) #15
  %63 = load i32, ptr %57, align 4, !tbaa !66
  br label %64

64:                                               ; preds = %55, %61
  %65 = phi i32 [ %58, %55 ], [ %63, %61 ]
  %66 = and i32 %65, 65280
  %67 = icmp ne i32 %66, 0
  %68 = and i32 %65, 255
  %69 = icmp eq i32 %68, 8
  %70 = or i1 %67, %69
  %71 = and i32 %65, 16777471
  %72 = icmp eq i32 %71, 16777226
  %73 = or i1 %72, %70
  %74 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !65
  br i1 %73, label %86, label %76

76:                                               ; preds = %64
  %77 = icmp eq ptr %75, @PL_sv_undef
  br i1 %77, label %121, label %78

78:                                               ; preds = %76
  tail call void @Perl_sv_setsv_flags(ptr noundef %75, ptr noundef nonnull @PL_sv_undef, i32 noundef 2) #15
  %79 = load ptr, ptr %74, align 8, !tbaa !65
  %80 = getelementptr inbounds %struct.sv, ptr %79, i64 0, i32 2
  %81 = load i32, ptr %80, align 4, !tbaa !66
  %82 = and i32 %81, 4194304
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %121, label %84

84:                                               ; preds = %78
  %85 = tail call i32 @Perl_mg_set(ptr noundef nonnull %79) #15
  br label %121

86:                                               ; preds = %64
  %87 = and i32 %65, 256
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %24, align 8, !tbaa !86
  %91 = getelementptr inbounds %struct.xpviv, ptr %90, i64 0, i32 4
  %92 = load i64, ptr %91, align 8, !tbaa !65
  br label %95

93:                                               ; preds = %86
  %94 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %24, i32 noundef 0) #15
  br label %95

95:                                               ; preds = %93, %89
  %96 = phi i64 [ %92, %89 ], [ %94, %93 ]
  %97 = icmp eq ptr %56, null
  br i1 %97, label %118, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 2
  %100 = load i32, ptr %99, align 4, !tbaa !66
  %101 = and i32 %100, 65280
  %102 = icmp ne i32 %101, 0
  %103 = and i32 %100, 255
  %104 = icmp eq i32 %103, 8
  %105 = or i1 %102, %104
  %106 = and i32 %100, 16777471
  %107 = icmp eq i32 %106, 16777226
  %108 = or i1 %107, %105
  br i1 %108, label %109, label %118

109:                                              ; preds = %98
  %110 = and i32 %100, 2097408
  %111 = icmp eq i32 %110, 256
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load ptr, ptr %56, align 8, !tbaa !86
  %114 = getelementptr inbounds %struct.xpviv, ptr %113, i64 0, i32 4
  %115 = load i64, ptr %114, align 8, !tbaa !65
  br label %118

116:                                              ; preds = %109
  %117 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %56, i32 noundef 2) #15
  br label %118

118:                                              ; preds = %98, %95, %112, %116
  %119 = phi i64 [ %115, %112 ], [ %117, %116 ], [ 0, %95 ], [ 0, %98 ]
  %120 = tail call fastcc i64 @adjust_index(i64 noundef %96, i64 noundef %119) #16
  tail call void @Perl_sv_setiv_mg(ptr noundef %75, i64 noundef %120) #15
  br label %121

121:                                              ; preds = %76, %78, %84, %118
  %122 = load ptr, ptr @PL_stack_base, align 8, !tbaa !75
  %123 = getelementptr inbounds ptr, ptr %122, i64 %19
  %124 = getelementptr inbounds ptr, ptr %123, i64 -1
  store ptr %124, ptr @PL_stack_sp, align 8, !tbaa !75
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_gv_fetchpvn_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_CvGV(ptr noundef %0) unnamed_addr #0 !prof !57 !PGOFuncName !89 {
  %2 = load ptr, ptr %0, align 8, !tbaa !90
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !92
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7, !prof !58

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %0) #15
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: optsize
declare void @Perl_wrap_op_checker(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ab_ck_sassign(ptr noundef %0) #0 !prof !94 !PGOFuncName !95 {
  %2 = load ptr, ptr @ab_old_ck_sassign, align 8, !tbaa !75
  %3 = tail call ptr %2(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 511
  %7 = icmp eq i16 %6, 37
  br i1 %7, label %8, label %32, !prof !96

8:                                                ; preds = %1
  %9 = load ptr, ptr @PL_curcop, align 8, !tbaa !75
  %10 = icmp eq ptr %9, @PL_compiling
  br i1 %10, label %13, label %11, !prof !97

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.cop, ptr %9, i64 0, i32 10
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi ptr [ %12, %11 ], [ getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), %8 ]
  %15 = load i32, ptr %14, align 8, !tbaa !77
  %16 = and i32 %15, 469762048
  %17 = icmp ult i32 %16, 201326592
  br i1 %17, label %25, label %18, !prof !97

18:                                               ; preds = %13
  %19 = getelementptr %struct.cop, ptr %9, i64 0, i32 10
  %20 = load i32, ptr %19, align 8, !tbaa !77
  %21 = and i32 %20, 469893120
  %22 = icmp eq i32 %21, 469893120
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.7, i64 noundef 7) #15
  br i1 %24, label %25, label %32

25:                                               ; preds = %23, %13
  %26 = getelementptr inbounds %struct.binop, ptr %3, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !98
  %28 = getelementptr inbounds %struct.op, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !100
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31, !prof !102

31:                                               ; preds = %25
  tail call fastcc void @ab_process_assignment(ptr noundef nonnull %29, ptr noundef nonnull %27) #16
  br label %32

32:                                               ; preds = %25, %31, %23, %18, %1
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ab_ck_aassign(ptr noundef %0) #0 !prof !103 !PGOFuncName !104 {
  %2 = load ptr, ptr @ab_old_ck_aassign, align 8, !tbaa !75
  %3 = tail call ptr %2(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 511
  %7 = icmp eq i16 %6, 38
  br i1 %7, label %8, label %38, !prof !105

8:                                                ; preds = %1
  %9 = load ptr, ptr @PL_curcop, align 8, !tbaa !75
  %10 = icmp eq ptr %9, @PL_compiling
  br i1 %10, label %13, label %11, !prof !105

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.cop, ptr %9, i64 0, i32 10
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi ptr [ %12, %11 ], [ getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), %8 ]
  %15 = load i32, ptr %14, align 8, !tbaa !77
  %16 = and i32 %15, 469762048
  %17 = icmp ult i32 %16, 201326592
  br i1 %17, label %25, label %18, !prof !105

18:                                               ; preds = %13
  %19 = getelementptr %struct.cop, ptr %9, i64 0, i32 10
  %20 = load i32, ptr %19, align 8, !tbaa !77
  %21 = and i32 %20, 469893120
  %22 = icmp eq i32 %21, 469893120
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.7, i64 noundef 7) #15
  br i1 %24, label %25, label %38

25:                                               ; preds = %23, %13
  %26 = getelementptr inbounds %struct.binop, ptr %3, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !98
  %28 = getelementptr inbounds %struct.op, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !100
  %30 = getelementptr inbounds %struct.binop, ptr %29, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !98
  %32 = getelementptr inbounds %struct.op, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !100
  %34 = getelementptr inbounds %struct.binop, ptr %27, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !98
  %36 = getelementptr inbounds %struct.op, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !100
  tail call fastcc void @ab_process_assignment(ptr noundef %33, ptr noundef %37) #16
  br label %38

38:                                               ; preds = %25, %23, %18, %1
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ab_ck_base(ptr noundef %0) #0 !prof !106 !PGOFuncName !107 {
  %2 = getelementptr inbounds %struct.op, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 511
  switch i16 %4, label %15 [
    i16 138, label %22
    i16 139, label %5
    i16 159, label %6
    i16 16, label %7
    i16 162, label %8
    i16 146, label %9
    i16 144, label %10
    i16 121, label %11
    i16 124, label %12
    i16 123, label %13
    i16 46, label %14
  ], !prof !108

5:                                                ; preds = %1
  br label %22

6:                                                ; preds = %1
  br label %22

7:                                                ; preds = %1
  br label %22

8:                                                ; preds = %1
  br label %22

9:                                                ; preds = %1
  br label %22

10:                                               ; preds = %1
  br label %22

11:                                               ; preds = %1
  br label %22

12:                                               ; preds = %1
  br label %22

13:                                               ; preds = %1
  br label %22

14:                                               ; preds = %1
  br label %22

15:                                               ; preds = %1
  %16 = load ptr, ptr @PL_op, align 8, !tbaa !75
  %17 = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 4
  %18 = load i16, ptr %17, align 8
  %19 = and i16 %18, 511
  %20 = zext nneg i16 %19 to i32
  %21 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.16, i32 noundef %20) #15
  br label %74

22:                                               ; preds = %1, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %23 = phi ptr [ @ab_old_ck_pos, %14 ], [ @ab_old_ck_index, %13 ], [ @ab_old_ck_rindex, %12 ], [ @ab_old_ck_substr, %11 ], [ @ab_old_ck_each, %10 ], [ @ab_old_ck_keys, %9 ], [ @ab_old_ck_splice, %8 ], [ @ab_old_ck_av2arylen, %7 ], [ @ab_old_ck_lslice, %6 ], [ @ab_old_ck_aslice, %5 ], [ @ab_old_ck_aelem, %1 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !75
  %25 = tail call ptr %24(ptr noundef nonnull %0) #15
  %26 = load ptr, ptr @PL_curcop, align 8, !tbaa !75
  %27 = icmp eq ptr %26, @PL_compiling
  br i1 %27, label %30, label %28, !prof !109

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.cop, ptr %26, i64 0, i32 10
  br label %30

30:                                               ; preds = %22, %28
  %31 = phi ptr [ %29, %28 ], [ getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), %22 ]
  %32 = load i32, ptr %31, align 8, !tbaa !77
  %33 = and i32 %32, 469762048
  %34 = icmp ult i32 %33, 201326592
  br i1 %34, label %42, label %35, !prof !109

35:                                               ; preds = %30
  %36 = getelementptr %struct.cop, ptr %26, i64 0, i32 10
  %37 = load i32, ptr %36, align 8, !tbaa !77
  %38 = and i32 %37, 469893120
  %39 = icmp eq i32 %38, 469893120
  br i1 %39, label %40, label %74

40:                                               ; preds = %35
  %41 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.7, i64 noundef 7) #15
  br i1 %41, label %42, label %74

42:                                               ; preds = %40, %30
  %43 = getelementptr inbounds %struct.op, ptr %25, i64 0, i32 4
  %44 = load i16, ptr %43, align 8
  %45 = and i16 %44, 511
  switch i16 %45, label %74 [
    i16 138, label %50
    i16 139, label %50
    i16 159, label %50
    i16 162, label %50
    i16 121, label %50
    i16 46, label %46
    i16 16, label %46
    i16 142, label %47
    i16 141, label %48
    i16 124, label %49
    i16 123, label %49
  ], !prof !110

46:                                               ; preds = %42, %42
  br label %50

47:                                               ; preds = %42
  br label %50

48:                                               ; preds = %42
  br label %50

49:                                               ; preds = %42, %42
  br label %50

50:                                               ; preds = %42, %42, %42, %42, %42, %49, %48, %47, %46
  %51 = phi ptr [ @ab_pp_index, %49 ], [ @ab_pp_each, %48 ], [ @ab_pp_keys, %47 ], [ @ab_pp_av2arylen, %46 ], [ @ab_pp_basearg, %42 ], [ @ab_pp_basearg, %42 ], [ @ab_pp_basearg, %42 ], [ @ab_pp_basearg, %42 ], [ @ab_pp_basearg, %42 ]
  %52 = tail call fastcc i64 @current_base() #16
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %73, label %54, !prof !111

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.op, ptr %25, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !112
  tail call fastcc void @ab_map_store(ptr noundef nonnull %25, ptr noundef %56, i64 noundef %52) #16
  store ptr %51, ptr %55, align 8, !tbaa !112
  %57 = load i16, ptr %43, align 8
  %58 = and i16 %57, 511
  %59 = icmp eq i16 %58, 138
  br i1 %59, label %60, label %74

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.binop, ptr %25, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !98
  %63 = getelementptr inbounds %struct.op, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !100
  %65 = getelementptr inbounds %struct.op, ptr %64, i64 0, i32 4
  %66 = load i16, ptr %65, align 8
  %67 = and i16 %66, 511
  %68 = icmp eq i16 %67, 5
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = tail call ptr @Perl_op_sibling_splice(ptr noundef nonnull %25, ptr noundef nonnull %62, i32 noundef 1, ptr noundef null) #15
  %71 = tail call ptr @Perl_newUNOP(i32 noundef 0, i32 noundef 0, ptr noundef nonnull %64) #15
  %72 = tail call ptr @Perl_op_sibling_splice(ptr noundef nonnull %25, ptr noundef nonnull %62, i32 noundef 0, ptr noundef %71) #15
  br label %74

73:                                               ; preds = %50
  tail call fastcc void @ab_map_delete(ptr noundef nonnull %25) #16
  br label %74

74:                                               ; preds = %73, %54, %69, %60, %42, %35, %40, %15
  %75 = phi ptr [ %21, %15 ], [ %25, %40 ], [ %25, %35 ], [ %25, %42 ], [ %25, %60 ], [ %25, %69 ], [ %25, %54 ], [ %25, %73 ]
  ret ptr %75
}

; Function Attrs: optsize
declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_feature_is_enabled(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_refcounted_he_fetch_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @adjust_index_r(i64 noundef %0, i64 noundef %1) unnamed_addr #3 !prof !69 !PGOFuncName !113 {
  %3 = add nsw i64 %1, %0
  ret i64 %3
}

; Function Attrs: optsize
declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setiv_mg(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @adjust_index(i64 noundef %0, i64 noundef %1) unnamed_addr #3 !prof !69 !PGOFuncName !114 {
  %3 = icmp sge i64 %0, %1
  %4 = icmp sgt i64 %0, -1
  %5 = or i1 %4, %3
  %6 = select i1 %5, i64 %1, i64 0
  %7 = sub nsw i64 %0, %6
  ret i64 %7
}

; Function Attrs: optsize
declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define internal fastcc noalias noundef ptr @ptable_new() unnamed_addr #4 !prof !57 !PGOFuncName !115 {
  %1 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #17
  %2 = getelementptr inbounds %struct.ptable, ptr %1, i64 0, i32 1
  store i64 63, ptr %2, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.ptable, ptr %1, i64 0, i32 2
  store i64 0, ptr %3, align 8, !tbaa !118
  %4 = tail call noalias dereferenceable_or_null(512) ptr @calloc(i64 noundef 64, i64 noundef 8) #18
  store ptr %4, ptr %1, align 8, !tbaa !119
  ret ptr %1
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ab_process_assignment(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !120 !PGOFuncName !121 {
  %3 = tail call fastcc zeroext i1 @ab_op_is_dollar_bracket(ptr noundef %0) #16
  br i1 %3, label %4, label %24, !prof !122

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 4
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, 511
  %8 = icmp eq i16 %7, 5
  br i1 %8, label %9, label %24

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.svop, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !123
  %12 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !66
  %14 = and i32 %13, 2097408
  %15 = icmp eq i32 %14, 256
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load ptr, ptr %11, align 8, !tbaa !86
  %18 = getelementptr inbounds %struct.xpviv, ptr %17, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !65
  br label %22

20:                                               ; preds = %9
  %21 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %11, i32 noundef 2) #15
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i64 [ %19, %16 ], [ %21, %20 ]
  tail call fastcc void @set_arybase_to(i64 noundef %23) #16
  tail call fastcc void @ab_neuter_dollar_bracket(ptr noundef %0) #16
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 2, ptr noundef nonnull @.str.14) #15
  br label %24

24:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i1 @ab_op_is_dollar_bracket(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !120 !PGOFuncName !125 {
  %2 = getelementptr inbounds %struct.op, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 511
  %5 = icmp eq i16 %4, 15
  br i1 %5, label %6, label %34, !prof !126

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.op, ptr %0, i64 0, i32 5
  %8 = load i8, ptr %7, align 2, !tbaa !127
  %9 = and i8 %8, 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %34, label %11, !prof !128

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.unop, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !129
  %14 = icmp eq ptr %13, null
  br i1 %14, label %34, label %15, !prof !128

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.op, ptr %13, i64 0, i32 4
  %17 = load i16, ptr %16, align 8
  %18 = and i16 %17, 511
  %19 = icmp eq i16 %18, 7
  br i1 %19, label %20, label %34, !prof !131

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.svop, ptr %13, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !123
  %23 = load ptr, ptr %22, align 8, !tbaa !72
  %24 = getelementptr inbounds %struct.xpvgv, ptr %23, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !65
  %26 = load ptr, ptr @PL_defstash, align 8, !tbaa !75
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %28, label %34, !prof !132

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.xpvgv, ptr %23, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !65
  %31 = getelementptr inbounds %struct.hek, ptr %30, i64 0, i32 2
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(2) @.str.6) #19
  %33 = icmp eq i32 %32, 0
  br label %34

34:                                               ; preds = %28, %20, %15, %11, %6, %1
  %35 = phi i1 [ false, %20 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ false, %1 ], [ %33, %28 ]
  ret i1 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_arybase_to(i64 noundef %0) unnamed_addr #0 !prof !69 !PGOFuncName !133 {
  %2 = tail call fastcc ptr @ab_hint(i1 noundef zeroext true) #16
  tail call void @Perl_sv_setiv_mg(ptr noundef %2, i64 noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ab_neuter_dollar_bracket(ptr noundef %0) unnamed_addr #0 !prof !69 !PGOFuncName !134 {
  %2 = getelementptr inbounds %struct.unop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  %4 = tail call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.15, i64 noundef 18, i32 noundef 2, i32 noundef 9) #15
  %5 = tail call ptr @Perl_newGVOP(i32 noundef 7, i32 noundef 0, ptr noundef %4) #15
  %6 = tail call ptr @Perl_op_sibling_splice(ptr noundef %0, ptr noundef null, i32 noundef 1, ptr noundef %5) #15
  tail call void @Perl_op_free(ptr noundef %3) #15
  ret void
}

; Function Attrs: optsize
declare void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ab_hint(i1 noundef zeroext %0) unnamed_addr #0 !prof !69 !PGOFuncName !135 {
  %2 = load ptr, ptr @PL_hintgv, align 8, !tbaa !75
  %3 = getelementptr inbounds %struct.gv, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.gp, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !136
  %7 = select i1 %0, i32 48, i32 32
  %8 = tail call ptr @Perl_hv_common_key_len(ptr noundef %6, ptr noundef nonnull @.str.8, i32 noundef 2, i32 noundef %7, ptr noundef null, i32 noundef 0) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !111

10:                                               ; preds = %1
  %11 = load ptr, ptr %8, align 8, !tbaa !75
  br label %12

12:                                               ; preds = %1, %10
  %13 = phi ptr [ %11, %10 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newGVOP(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_op_sibling_splice(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_op_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ab_pp_basearg() #0 !prof !69 !PGOFuncName !137 {
  %1 = alloca %struct.ab_op_info, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !75
  call fastcc void @ab_map_fetch(ptr noundef %3, ptr noundef nonnull %1) #16
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 4
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, 511
  switch i16 %7, label %64 [
    i16 138, label %71
    i16 139, label %8
    i16 159, label %19
    i16 162, label %42
    i16 121, label %56
  ]

8:                                                ; preds = %0
  %9 = load ptr, ptr @PL_stack_base, align 8, !tbaa !75
  %10 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !75
  %11 = load i32, ptr %10, align 4, !tbaa !74
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = getelementptr inbounds ptr, ptr %13, i64 1
  %15 = ptrtoint ptr %2 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = ashr exact i64 %17, 3
  br label %67

19:                                               ; preds = %0
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !75
  %21 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !75
  %22 = getelementptr inbounds i32, ptr %21, i64 -1
  %23 = load i32, ptr %22, align 4, !tbaa !74
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %20, i64 %24
  %26 = load i32, ptr %21, align 4, !tbaa !74
  %27 = sub nsw i32 %26, %23
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 5
  %30 = load i8, ptr %29, align 2, !tbaa !127
  %31 = and i8 %30, 3
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %19
  %34 = zext nneg i8 %31 to i32
  br label %37

35:                                               ; preds = %19
  %36 = call i32 @Perl_block_gimme() #15
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = icmp eq i32 %38, 3
  %40 = select i1 %39, i64 1, i64 %28
  %41 = getelementptr inbounds ptr, ptr %25, i64 %40
  br i1 %39, label %67, label %71

42:                                               ; preds = %0
  %43 = load ptr, ptr @PL_stack_base, align 8, !tbaa !75
  %44 = ptrtoint ptr %2 to i64
  %45 = ptrtoint ptr %43 to i64
  %46 = sub i64 %44, %45
  %47 = ashr exact i64 %46, 3
  %48 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !75
  %49 = load i32, ptr %48, align 4, !tbaa !74
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %47, %50
  %52 = icmp sgt i64 %51, 1
  br i1 %52, label %53, label %98

53:                                               ; preds = %42
  %54 = getelementptr inbounds ptr, ptr %43, i64 %50
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  br label %71

56:                                               ; preds = %0
  %57 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 6
  %58 = load i8, ptr %57, align 1, !tbaa !138
  %59 = and i8 %58, 7
  %60 = zext nneg i8 %59 to i64
  %61 = sub nsw i64 0, %60
  %62 = getelementptr inbounds ptr, ptr %2, i64 %61
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  br label %71

64:                                               ; preds = %0
  %65 = zext nneg i16 %7 to i32
  %66 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.17, i32 noundef %65) #15
  br label %101

67:                                               ; preds = %37, %8
  %68 = phi ptr [ %14, %8 ], [ %41, %37 ]
  %69 = phi i64 [ %18, %8 ], [ %28, %37 ]
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %98, label %71

71:                                               ; preds = %37, %0, %53, %56, %67
  %72 = phi i64 [ %69, %67 ], [ 1, %56 ], [ 1, %53 ], [ 1, %0 ], [ 1, %37 ]
  %73 = phi ptr [ %68, %67 ], [ %63, %56 ], [ %55, %53 ], [ %2, %0 ], [ %41, %37 ]
  %74 = getelementptr inbounds %struct.ab_op_info, ptr %1, i64 0, i32 1
  br label %75

75:                                               ; preds = %71, %90
  %76 = phi i64 [ %72, %71 ], [ %78, %90 ]
  %77 = phi ptr [ %73, %71 ], [ %96, %90 ]
  %78 = add i64 %76, -1
  %79 = load ptr, ptr %77, align 8, !tbaa !75
  %80 = getelementptr inbounds %struct.sv, ptr %79, i64 0, i32 2
  %81 = load i32, ptr %80, align 4, !tbaa !66
  %82 = and i32 %81, 2097408
  %83 = icmp eq i32 %82, 256
  br i1 %83, label %84, label %88

84:                                               ; preds = %75
  %85 = load ptr, ptr %79, align 8, !tbaa !86
  %86 = getelementptr inbounds %struct.xpviv, ptr %85, i64 0, i32 4
  %87 = load i64, ptr %86, align 8, !tbaa !65
  br label %90

88:                                               ; preds = %75
  %89 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %79, i32 noundef 2) #15
  br label %90

90:                                               ; preds = %88, %84
  %91 = phi i64 [ %87, %84 ], [ %89, %88 ]
  %92 = load i64, ptr %74, align 8, !tbaa !139
  %93 = call fastcc i64 @adjust_index(i64 noundef %91, i64 noundef %92) #16
  %94 = call ptr @Perl_newSViv(i64 noundef %93) #15
  %95 = call ptr @Perl_sv_2mortal(ptr noundef %94) #15
  store ptr %95, ptr %77, align 8, !tbaa !75
  %96 = getelementptr inbounds ptr, ptr %77, i64 1
  %97 = icmp eq i64 %78, 0
  br i1 %97, label %98, label %75, !llvm.loop !141

98:                                               ; preds = %90, %42, %67
  %99 = load ptr, ptr %1, align 8, !tbaa !143
  %100 = call ptr %99() #15
  br label %101

101:                                              ; preds = %98, %64
  %102 = phi ptr [ %66, %64 ], [ %100, %98 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #20
  ret ptr %102
}

; Function Attrs: optsize
declare ptr @Perl_die(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ab_pp_av2arylen() #0 !prof !69 !PGOFuncName !144 {
  %1 = alloca %struct.ab_op_info, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !75
  call fastcc void @ab_map_fetch(ptr noundef %3, ptr noundef nonnull %1) #16
  %4 = load ptr, ptr %1, align 8, !tbaa !143
  %5 = call ptr %4() #15
  %6 = load ptr, ptr @PL_op, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.op, ptr %6, i64 0, i32 5
  %8 = load i8, ptr %7, align 2, !tbaa !127
  %9 = and i8 %8, 32
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.op, ptr %6, i64 0, i32 6
  %13 = load i8, ptr %12, align 1, !tbaa !138
  %14 = and i8 %13, 8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = call i32 @Perl_is_lvalue_sub() #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16, %0
  %20 = call ptr @Perl_newSV(i64 noundef 0) #15
  %21 = load ptr, ptr %2, align 8, !tbaa !75
  %22 = call ptr @Perl_gv_stashpv(ptr noundef nonnull @.str.18, i32 noundef 1) #15
  call void @tie(ptr noundef %20, ptr noundef %21, ptr noundef %22) #16
  br label %61

23:                                               ; preds = %16, %11
  %24 = load ptr, ptr %2, align 8, !tbaa !75
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !66
  %27 = and i32 %26, 2097152
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = call i32 @Perl_mg_get(ptr noundef nonnull %24) #15
  %31 = load ptr, ptr %2, align 8, !tbaa !75
  %32 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !66
  br label %34

34:                                               ; preds = %23, %29
  %35 = phi i32 [ %26, %23 ], [ %33, %29 ]
  %36 = phi ptr [ %24, %23 ], [ %31, %29 ]
  %37 = and i32 %35, 65280
  %38 = icmp ne i32 %37, 0
  %39 = and i32 %35, 255
  %40 = icmp eq i32 %39, 8
  %41 = or i1 %38, %40
  %42 = and i32 %35, 16777471
  %43 = icmp eq i32 %42, 16777226
  %44 = or i1 %43, %41
  br i1 %44, label %45, label %63

45:                                               ; preds = %34
  %46 = and i32 %35, 2097408
  %47 = icmp eq i32 %46, 256
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load ptr, ptr %36, align 8, !tbaa !86
  %50 = getelementptr inbounds %struct.xpviv, ptr %49, i64 0, i32 4
  %51 = load i64, ptr %50, align 8, !tbaa !65
  br label %54

52:                                               ; preds = %45
  %53 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %36, i32 noundef 2) #15
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi i64 [ %51, %48 ], [ %53, %52 ]
  %56 = getelementptr inbounds %struct.ab_op_info, ptr %1, i64 0, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !139
  %58 = call fastcc i64 @adjust_index_r(i64 noundef %55, i64 noundef %57) #16
  %59 = call ptr @Perl_newSViv(i64 noundef %58) #15
  %60 = call ptr @Perl_sv_2mortal(ptr noundef %59) #15
  br label %61

61:                                               ; preds = %19, %54
  %62 = phi ptr [ %60, %54 ], [ %20, %19 ]
  store ptr %62, ptr %2, align 8, !tbaa !75
  br label %63

63:                                               ; preds = %61, %34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #20
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ab_pp_keys() #0 !prof !69 !PGOFuncName !145 {
  %1 = alloca %struct.ab_op_info, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #20
  %3 = load ptr, ptr @PL_stack_base, align 8, !tbaa !75
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %3 to i64
  %6 = sub i64 %4, %5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %7 = load ptr, ptr @PL_op, align 8, !tbaa !75
  call fastcc void @ab_map_fetch(ptr noundef %7, ptr noundef nonnull %1) #16
  %8 = load ptr, ptr %1, align 8, !tbaa !143
  %9 = call ptr %8() #15
  %10 = load ptr, ptr @PL_op, align 8, !tbaa !75
  %11 = getelementptr inbounds %struct.op, ptr %10, i64 0, i32 5
  %12 = load i8, ptr %11, align 2, !tbaa !127
  %13 = and i8 %12, 3
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %0
  %16 = zext nneg i8 %13 to i32
  br label %19

17:                                               ; preds = %0
  %18 = call i32 @Perl_block_gimme() #15
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %52, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !75
  %24 = load ptr, ptr @PL_stack_base, align 8, !tbaa !75
  %25 = shl i64 %6, 29
  %26 = ashr i64 %25, 32
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  %28 = icmp ugt ptr %27, %23
  br i1 %28, label %52, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.ab_op_info, ptr %1, i64 0, i32 1
  br label %31

31:                                               ; preds = %29, %44
  %32 = phi ptr [ %27, %29 ], [ %50, %44 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !75
  %34 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !66
  %36 = and i32 %35, 2097408
  %37 = icmp eq i32 %36, 256
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load ptr, ptr %33, align 8, !tbaa !86
  %40 = getelementptr inbounds %struct.xpviv, ptr %39, i64 0, i32 4
  %41 = load i64, ptr %40, align 8, !tbaa !65
  br label %44

42:                                               ; preds = %31
  %43 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %33, i32 noundef 2) #15
  br label %44

44:                                               ; preds = %42, %38
  %45 = phi i64 [ %41, %38 ], [ %43, %42 ]
  %46 = load i64, ptr %30, align 8, !tbaa !139
  %47 = call fastcc i64 @adjust_index_r(i64 noundef %45, i64 noundef %46) #16
  %48 = call ptr @Perl_newSViv(i64 noundef %47) #15
  %49 = call ptr @Perl_sv_2mortal(ptr noundef %48) #15
  store ptr %49, ptr %32, align 8, !tbaa !75
  %50 = getelementptr inbounds ptr, ptr %32, i64 1
  %51 = icmp ugt ptr %50, %23
  br i1 %51, label %52, label %31, !llvm.loop !146

52:                                               ; preds = %44, %22, %19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #20
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ab_pp_each() #0 !prof !69 !PGOFuncName !147 {
  %1 = alloca %struct.ab_op_info, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #20
  %3 = load ptr, ptr @PL_stack_base, align 8, !tbaa !75
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %3 to i64
  %6 = sub i64 %4, %5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %7 = load ptr, ptr @PL_op, align 8, !tbaa !75
  call fastcc void @ab_map_fetch(ptr noundef %7, ptr noundef nonnull %1) #16
  %8 = load ptr, ptr %1, align 8, !tbaa !143
  %9 = call ptr %8() #15
  %10 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !75
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !75
  %12 = getelementptr inbounds %struct.op, ptr %11, i64 0, i32 5
  %13 = load i8, ptr %12, align 2, !tbaa !127
  %14 = and i8 %13, 3
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %0
  %17 = zext nneg i8 %14 to i32
  br label %20

18:                                               ; preds = %0
  %19 = call i32 @Perl_block_gimme() #15
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  %24 = load ptr, ptr %10, align 8, !tbaa !75
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !66
  %27 = and i32 %26, 65280
  %28 = icmp ne i32 %27, 0
  %29 = and i32 %26, 255
  %30 = icmp eq i32 %29, 8
  %31 = or i1 %28, %30
  %32 = and i32 %26, 16777471
  %33 = icmp eq i32 %32, 16777226
  %34 = or i1 %33, %31
  br i1 %34, label %35, label %74

35:                                               ; preds = %23
  %36 = and i32 %26, 2097408
  %37 = icmp eq i32 %36, 256
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load ptr, ptr %24, align 8, !tbaa !86
  %40 = getelementptr inbounds %struct.xpviv, ptr %39, i64 0, i32 4
  %41 = load i64, ptr %40, align 8, !tbaa !65
  br label %66

42:                                               ; preds = %35
  %43 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %24, i32 noundef 2) #15
  br label %66

44:                                               ; preds = %20
  %45 = shl i64 %6, 29
  %46 = ashr i64 %45, 32
  %47 = load ptr, ptr @PL_stack_base, align 8, !tbaa !75
  %48 = ptrtoint ptr %10 to i64
  %49 = ptrtoint ptr %47 to i64
  %50 = sub i64 %48, %49
  %51 = ashr exact i64 %50, 3
  %52 = icmp slt i64 %46, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %44
  %54 = getelementptr inbounds ptr, ptr %10, i64 -1
  %55 = load ptr, ptr %54, align 8, !tbaa !75
  %56 = getelementptr inbounds %struct.sv, ptr %55, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !66
  %58 = and i32 %57, 2097408
  %59 = icmp eq i32 %58, 256
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load ptr, ptr %55, align 8, !tbaa !86
  %62 = getelementptr inbounds %struct.xpviv, ptr %61, i64 0, i32 4
  %63 = load i64, ptr %62, align 8, !tbaa !65
  br label %66

64:                                               ; preds = %53
  %65 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %55, i32 noundef 2) #15
  br label %66

66:                                               ; preds = %60, %64, %38, %42
  %67 = phi i64 [ %41, %38 ], [ %43, %42 ], [ %63, %60 ], [ %65, %64 ]
  %68 = phi ptr [ %10, %38 ], [ %10, %42 ], [ %54, %60 ], [ %54, %64 ]
  %69 = getelementptr inbounds %struct.ab_op_info, ptr %1, i64 0, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !139
  %71 = call fastcc i64 @adjust_index_r(i64 noundef %67, i64 noundef %70) #16
  %72 = call ptr @Perl_newSViv(i64 noundef %71) #15
  %73 = call ptr @Perl_sv_2mortal(ptr noundef %72) #15
  store ptr %73, ptr %68, align 8, !tbaa !75
  br label %74

74:                                               ; preds = %66, %23, %44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #20
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ab_pp_index() #0 !prof !69 !PGOFuncName !148 {
  %1 = alloca %struct.ab_op_info, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !75
  call fastcc void @ab_map_fetch(ptr noundef %3, ptr noundef nonnull %1) #16
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 6
  %6 = load i8, ptr %5, align 1, !tbaa !138
  %7 = and i8 %6, 15
  %8 = icmp eq i8 %7, 3
  br i1 %8, label %9, label %30

9:                                                ; preds = %0
  %10 = load ptr, ptr %2, align 8, !tbaa !75
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !66
  %15 = and i32 %14, 2097408
  %16 = icmp eq i32 %15, 256
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load ptr, ptr %10, align 8, !tbaa !86
  %19 = getelementptr inbounds %struct.xpviv, ptr %18, i64 0, i32 4
  %20 = load i64, ptr %19, align 8, !tbaa !65
  br label %23

21:                                               ; preds = %12
  %22 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %10, i32 noundef 2) #15
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i64 [ %20, %17 ], [ %22, %21 ]
  %25 = getelementptr inbounds %struct.ab_op_info, ptr %1, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !139
  %27 = call fastcc i64 @adjust_index(i64 noundef %24, i64 noundef %26) #16
  %28 = call ptr @Perl_newSViv(i64 noundef %27) #15
  %29 = call ptr @Perl_sv_2mortal(ptr noundef %28) #15
  store ptr %29, ptr %2, align 8, !tbaa !75
  br label %30

30:                                               ; preds = %23, %9, %0
  %31 = load ptr, ptr %1, align 8, !tbaa !143
  %32 = call ptr %31() #15
  %33 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !75
  %34 = load ptr, ptr %33, align 8, !tbaa !75
  %35 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !66
  %37 = and i32 %36, 2097408
  %38 = icmp eq i32 %37, 256
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load ptr, ptr %34, align 8, !tbaa !86
  %41 = getelementptr inbounds %struct.xpviv, ptr %40, i64 0, i32 4
  %42 = load i64, ptr %41, align 8, !tbaa !65
  br label %45

43:                                               ; preds = %30
  %44 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %34, i32 noundef 2) #15
  br label %45

45:                                               ; preds = %43, %39
  %46 = phi i64 [ %42, %39 ], [ %44, %43 ]
  %47 = getelementptr inbounds %struct.ab_op_info, ptr %1, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !139
  %49 = call fastcc i64 @adjust_index_r(i64 noundef %46, i64 noundef %48) #16
  %50 = call ptr @Perl_newSViv(i64 noundef %49) #15
  %51 = call ptr @Perl_sv_2mortal(ptr noundef %50) #15
  store ptr %51, ptr %33, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #20
  ret ptr %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @current_base() unnamed_addr #0 !prof !149 !PGOFuncName !150 {
  %1 = tail call fastcc ptr @ab_hint(i1 noundef zeroext false) #16
  %2 = icmp eq ptr %1, null
  br i1 %2, label %23, label %3, !prof !111

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !66
  %6 = and i32 %5, 65280
  %7 = icmp ne i32 %6, 0
  %8 = and i32 %5, 255
  %9 = icmp eq i32 %8, 8
  %10 = or i1 %7, %9
  %11 = and i32 %5, 16777471
  %12 = icmp eq i32 %11, 16777226
  %13 = or i1 %12, %10
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = and i32 %5, 2097408
  %16 = icmp eq i32 %15, 256
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load ptr, ptr %1, align 8, !tbaa !86
  %19 = getelementptr inbounds %struct.xpviv, ptr %18, i64 0, i32 4
  %20 = load i64, ptr %19, align 8, !tbaa !65
  br label %23

21:                                               ; preds = %14
  %22 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %1, i32 noundef 2) #15
  br label %23

23:                                               ; preds = %17, %21, %0, %3
  %24 = phi i64 [ 0, %3 ], [ 0, %0 ], [ %20, %17 ], [ %22, %21 ]
  ret i64 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ab_map_store(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 !prof !69 !PGOFuncName !151 {
  tail call fastcc void @ab_map_store_locked(ptr noundef %0, ptr noundef %1, i64 noundef %2) #16
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newUNOP(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ab_map_delete(ptr noundef %0) unnamed_addr #0 !prof !149 !PGOFuncName !152 {
  %2 = load ptr, ptr @ab_op_map, align 8, !tbaa !75
  tail call fastcc void @ptable_map_store(ptr noundef %2, ptr noundef %0, ptr noundef null) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ab_map_fetch(ptr noundef readonly %0, ptr noundef writeonly %1) unnamed_addr #10 !prof !69 !PGOFuncName !153 {
  %3 = load ptr, ptr @ab_op_map, align 8, !tbaa !75
  %4 = tail call fastcc ptr @ptable_fetch(ptr noundef %3, ptr noundef %0) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !154
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare i32 @Perl_block_gimme() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @ptable_fetch(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #11 !prof !69 !PGOFuncName !156 {
  %3 = tail call fastcc ptr @ptable_find(ptr noundef %0, ptr noundef %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ptable_ent, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !157
  br label %8

8:                                                ; preds = %2, %5
  %9 = phi ptr [ %7, %5 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @ptable_find(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #11 !prof !149 !PGOFuncName !159 {
  %3 = ptrtoint ptr %1 to i64
  %4 = lshr i64 %3, 3
  %5 = lshr i64 %3, 10
  %6 = xor i64 %4, %5
  %7 = lshr i64 %3, 20
  %8 = xor i64 %6, %7
  %9 = load ptr, ptr %0, align 8, !tbaa !119
  %10 = getelementptr inbounds %struct.ptable, ptr %0, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !116
  %12 = and i64 %11, %8
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  br label %14

14:                                               ; preds = %18, %2
  %15 = phi ptr [ %13, %2 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !75
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18, !prof !111

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ptable_ent, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !160
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %14, !llvm.loop !161

22:                                               ; preds = %14, %18
  ret ptr %16
}

; Function Attrs: optsize
declare i32 @Perl_is_lvalue_sub() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_stashpv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ab_map_store_locked(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 !prof !69 !PGOFuncName !162 {
  %4 = load ptr, ptr @ab_op_map, align 8, !tbaa !75
  %5 = tail call fastcc ptr @ptable_fetch(ptr noundef %4, ptr noundef %0) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  tail call fastcc void @ptable_map_store(ptr noundef %4, ptr noundef %0, ptr noundef %8) #16
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi ptr [ %5, %3 ], [ %8, %7 ]
  store ptr %1, ptr %10, align 8, !tbaa !143
  %11 = getelementptr inbounds %struct.ab_op_info, ptr %10, i64 0, i32 1
  store i64 %2, ptr %11, align 8, !tbaa !139
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ptable_map_store(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !149 !PGOFuncName !163 {
  %4 = tail call fastcc ptr @ptable_find(ptr noundef %0, ptr noundef %1) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6, !prof !111

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ptable_ent, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !157
  tail call void @free(ptr noundef %8) #15
  store ptr %2, ptr %7, align 8, !tbaa !157
  br label %34

9:                                                ; preds = %3
  %10 = icmp eq ptr %2, null
  br i1 %10, label %34, label %11, !prof !111

11:                                               ; preds = %9
  %12 = ptrtoint ptr %1 to i64
  %13 = lshr i64 %12, 3
  %14 = lshr i64 %12, 10
  %15 = xor i64 %13, %14
  %16 = lshr i64 %12, 20
  %17 = xor i64 %15, %16
  %18 = getelementptr inbounds %struct.ptable, ptr %0, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !116
  %20 = and i64 %19, %17
  %21 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #17
  %22 = getelementptr inbounds %struct.ptable_ent, ptr %21, i64 0, i32 1
  store ptr %1, ptr %22, align 8, !tbaa !160
  %23 = getelementptr inbounds %struct.ptable_ent, ptr %21, i64 0, i32 2
  store ptr %2, ptr %23, align 8, !tbaa !157
  %24 = load ptr, ptr %0, align 8, !tbaa !119
  %25 = getelementptr inbounds ptr, ptr %24, i64 %20
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  store ptr %26, ptr %21, align 8, !tbaa !164
  store ptr %21, ptr %25, align 8, !tbaa !75
  %27 = getelementptr inbounds %struct.ptable, ptr %0, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !118
  %29 = add i64 %28, 1
  store i64 %29, ptr %27, align 8, !tbaa !118
  %30 = icmp ne ptr %26, null
  %31 = icmp ugt i64 %29, %19
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %34

33:                                               ; preds = %11
  tail call fastcc void @ptable_split(ptr noundef nonnull %0) #16
  br label %34

34:                                               ; preds = %11, %33, %9, %6
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ptable_split(ptr nocapture noundef %0) unnamed_addr #0 !prof !69 !PGOFuncName !165 {
  %2 = load ptr, ptr %0, align 8, !tbaa !119
  %3 = getelementptr inbounds %struct.ptable, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !116
  %5 = add i64 %4, 1
  %6 = shl i64 %5, 1
  %7 = shl i64 %5, 4
  %8 = tail call ptr @realloc(ptr noundef %2, i64 noundef %7) #21
  %9 = getelementptr inbounds ptr, ptr %8, i64 %5
  %10 = shl i64 %5, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %9, i8 0, i64 %10, i1 false)
  %11 = add i64 %6, -1
  store i64 %11, ptr %3, align 8, !tbaa !116
  store ptr %8, ptr %0, align 8, !tbaa !119
  %12 = icmp eq i64 %5, 0
  br i1 %12, label %44, label %13

13:                                               ; preds = %1, %40
  %14 = phi ptr [ %42, %40 ], [ %8, %1 ]
  %15 = phi i64 [ %41, %40 ], [ 0, %1 ]
  %16 = load ptr, ptr %14, align 8, !tbaa !75
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds ptr, ptr %14, i64 %5
  br label %20

20:                                               ; preds = %18, %36
  %21 = phi ptr [ %16, %18 ], [ %38, %36 ]
  %22 = phi ptr [ %14, %18 ], [ %37, %36 ]
  %23 = getelementptr inbounds %struct.ptable_ent, ptr %21, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !160
  %25 = ptrtoint ptr %24 to i64
  %26 = lshr i64 %25, 3
  %27 = lshr i64 %25, 10
  %28 = xor i64 %26, %27
  %29 = lshr i64 %25, 20
  %30 = xor i64 %28, %29
  %31 = and i64 %30, %11
  %32 = icmp eq i64 %31, %15
  br i1 %32, label %36, label %33

33:                                               ; preds = %20
  %34 = load ptr, ptr %21, align 8, !tbaa !164
  store ptr %34, ptr %22, align 8, !tbaa !75
  %35 = load ptr, ptr %19, align 8, !tbaa !75
  store ptr %35, ptr %21, align 8, !tbaa !164
  store ptr %21, ptr %19, align 8, !tbaa !75
  br label %36

36:                                               ; preds = %20, %33
  %37 = phi ptr [ %22, %33 ], [ %21, %20 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !75
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %20, !llvm.loop !166

40:                                               ; preds = %36, %13
  %41 = add nuw i64 %15, 1
  %42 = getelementptr inbounds ptr, ptr %14, i64 1
  %43 = icmp eq i64 %15, %4
  br i1 %43, label %44, label %13, !llvm.loop !167

44:                                               ; preds = %40, %1
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize allocsize(0) }
attributes #18 = { nounwind optsize allocsize(0,1) }
attributes #19 = { nounwind optsize willreturn memory(read) }
attributes #20 = { nounwind }
attributes #21 = { nounwind optsize allocsize(1) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!56}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!35 = !{ptr @tie, ptr @Perl_newSV_type, i64 1}
!36 = !{ptr @tie, ptr @Perl_newSV, i64 1}
!37 = !{ptr @tie, ptr @Perl_sv_bless, i64 1}
!38 = !{ptr @tie, ptr @Perl_sv_unmagic, i64 1}
!39 = !{ptr @tie, ptr @Perl_sv_magic, i64 1}
!40 = !{ptr @tie, ptr @S_SvREFCNT_dec, i64 1}
!41 = !{ptr @ab_ck_sassign, ptr @ab_process_assignment, i64 1853}
!42 = !{ptr @ab_ck_aassign, ptr @ab_process_assignment, i64 362}
!43 = !{ptr @ab_ck_base, ptr @Perl_die, i64 1}
!44 = !{ptr @ab_ck_base, ptr @current_base, i64 206}
!45 = !{ptr @ab_ck_base, ptr @ab_map_store, i64 1}
!46 = !{ptr @ab_ck_base, ptr @ab_map_delete, i64 205}
!47 = !{ptr @ptable_new, ptr @malloc, i64 1}
!48 = !{ptr @ptable_new, ptr @calloc, i64 1}
!49 = !{ptr @ab_process_assignment, ptr @ab_op_is_dollar_bracket, i64 2220}
!50 = !{ptr @ab_op_is_dollar_bracket, ptr @strcmp, i64 73}
!51 = !{ptr @current_base, ptr @ab_hint, i64 207}
!52 = !{ptr @ab_map_delete, ptr @ptable_map_store, i64 207}
!53 = !{ptr @ptable_map_store, ptr @ptable_find, i64 207}
!54 = !{ptr @ptable_map_store, ptr @free, i64 1}
!55 = !{ptr @ptable_map_store, ptr @malloc, i64 1}
!56 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!57 = !{!"function_entry_count", i64 1}
!58 = !{!"branch_weights", i32 2, i32 1}
!59 = !{!60, !64, i64 8}
!60 = !{!"sv", !61, i64 0, !64, i64 8, !64, i64 12, !62, i64 16}
!61 = !{!"any pointer", !62, i64 0}
!62 = !{!"omnipotent char", !63, i64 0}
!63 = !{!"Simple C/C++ TBAA"}
!64 = !{!"int", !62, i64 0}
!65 = !{!62, !62, i64 0}
!66 = !{!60, !64, i64 12}
!67 = !{!"arybase.c:S_SvREFCNT_dec"}
!68 = !{!"branch_weights", i32 1, i32 2}
!69 = !{!"function_entry_count", i64 0}
!70 = !{!71, !61, i64 0}
!71 = !{!"gp", !61, i64 0, !61, i64 8, !61, i64 16, !64, i64 24, !64, i64 28, !61, i64 32, !61, i64 40, !61, i64 48, !61, i64 56, !64, i64 64, !64, i64 67, !61, i64 72}
!72 = !{!73, !61, i64 0}
!73 = !{!"gv", !61, i64 0, !64, i64 8, !64, i64 12, !62, i64 16}
!74 = !{!64, !64, i64 0}
!75 = !{!61, !61, i64 0}
!76 = !{!"arybase.c:XS_arybase_FETCH"}
!77 = !{!78, !64, i64 56}
!78 = !{!"cop", !61, i64 0, !61, i64 8, !61, i64 16, !79, i64 24, !64, i64 32, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !62, i64 34, !62, i64 35, !64, i64 36, !61, i64 40, !61, i64 48, !64, i64 56, !64, i64 60, !61, i64 64, !61, i64 72}
!79 = !{!"long", !62, i64 0}
!80 = !{!"branch_weights", i32 517909, i32 1}
!81 = !{!78, !61, i64 72}
!82 = !{!"branch_weights", i32 518, i32 2147483130}
!83 = !{!"branch_weights", i32 23980, i32 -154870621}
!84 = !{!"branch_weights", i32 1, i32 517909}
!85 = !{!"arybase.c:XS_arybase_STORE"}
!86 = !{!60, !61, i64 0}
!87 = !{!"arybase.c:XS_arybase__mg_FETCH"}
!88 = !{!"arybase.c:XS_arybase__mg_STORE"}
!89 = !{!"arybase.c:S_CvGV"}
!90 = !{!91, !61, i64 0}
!91 = !{!"cv", !61, i64 0, !64, i64 8, !64, i64 12, !62, i64 16}
!92 = !{!93, !64, i64 92}
!93 = !{!"xpvcv", !61, i64 0, !62, i64 8, !79, i64 16, !62, i64 24, !61, i64 32, !62, i64 40, !62, i64 48, !62, i64 56, !61, i64 64, !62, i64 72, !61, i64 80, !64, i64 88, !64, i64 92, !64, i64 96}
!94 = !{!"function_entry_count", i64 1911}
!95 = !{!"arybase.c:ab_ck_sassign"}
!96 = !{!"branch_weights", i32 1857, i32 56}
!97 = !{!"branch_weights", i32 1857, i32 1}
!98 = !{!99, !61, i64 40}
!99 = !{!"binop", !61, i64 0, !61, i64 8, !61, i64 16, !79, i64 24, !64, i64 32, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !62, i64 34, !62, i64 35, !61, i64 40, !61, i64 48}
!100 = !{!101, !61, i64 8}
!101 = !{!"op", !61, i64 0, !61, i64 8, !61, i64 16, !79, i64 24, !64, i64 32, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !62, i64 34, !62, i64 35}
!102 = !{!"branch_weights", i32 1, i32 1857}
!103 = !{!"function_entry_count", i64 364}
!104 = !{!"arybase.c:ab_ck_aassign"}
!105 = !{!"branch_weights", i32 365, i32 1}
!106 = !{!"function_entry_count", i64 245}
!107 = !{!"arybase.c:ab_ck_base"}
!108 = !{!"branch_weights", i32 1, i32 117, i32 8, i32 7, i32 31, i32 4, i32 33, i32 7, i32 31, i32 1, i32 8, i32 9}
!109 = !{!"branch_weights", i32 246, i32 1}
!110 = !{!"branch_weights", i32 39, i32 117, i32 8, i32 7, i32 4, i32 31, i32 9, i32 31, i32 1, i32 1, i32 1, i32 8}
!111 = !{!"branch_weights", i32 208, i32 1}
!112 = !{!101, !61, i64 16}
!113 = !{!"arybase.c:adjust_index_r"}
!114 = !{!"arybase.c:adjust_index"}
!115 = !{!"arybase.c:ptable_new"}
!116 = !{!117, !79, i64 8}
!117 = !{!"ptable", !61, i64 0, !79, i64 8, !79, i64 16}
!118 = !{!117, !79, i64 16}
!119 = !{!117, !61, i64 0}
!120 = !{!"function_entry_count", i64 2220}
!121 = !{!"arybase.c:ab_process_assignment"}
!122 = !{!"branch_weights", i32 1, i32 2221}
!123 = !{!124, !61, i64 40}
!124 = !{!"svop", !61, i64 0, !61, i64 8, !61, i64 16, !79, i64 24, !64, i64 32, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !62, i64 34, !62, i64 35, !61, i64 40}
!125 = !{!"arybase.c:ab_op_is_dollar_bracket"}
!126 = !{!"branch_weights", i32 602, i32 1620}
!127 = !{!101, !62, i64 34}
!128 = !{!"branch_weights", i32 1, i32 602}
!129 = !{!130, !61, i64 40}
!130 = !{!"unop", !61, i64 0, !61, i64 8, !61, i64 16, !79, i64 24, !64, i64 32, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !62, i64 34, !62, i64 35, !61, i64 40}
!131 = !{!"branch_weights", i32 589, i32 14}
!132 = !{!"branch_weights", i32 74, i32 516}
!133 = !{!"arybase.c:set_arybase_to"}
!134 = !{!"arybase.c:ab_neuter_dollar_bracket"}
!135 = !{!"arybase.c:ab_hint"}
!136 = !{!71, !61, i64 32}
!137 = !{!"arybase.c:ab_pp_basearg"}
!138 = !{!101, !62, i64 35}
!139 = !{!140, !79, i64 8}
!140 = !{!"", !61, i64 0, !79, i64 8}
!141 = distinct !{!141, !142}
!142 = !{!"llvm.loop.mustprogress"}
!143 = !{!140, !61, i64 0}
!144 = !{!"arybase.c:ab_pp_av2arylen"}
!145 = !{!"arybase.c:ab_pp_keys"}
!146 = distinct !{!146, !142}
!147 = !{!"arybase.c:ab_pp_each"}
!148 = !{!"arybase.c:ab_pp_index"}
!149 = !{!"function_entry_count", i64 207}
!150 = !{!"arybase.c:current_base"}
!151 = !{!"arybase.c:ab_map_store"}
!152 = !{!"arybase.c:ab_map_delete"}
!153 = !{!"arybase.c:ab_map_fetch"}
!154 = !{i64 0, i64 8, !75, i64 8, i64 8, !155}
!155 = !{!79, !79, i64 0}
!156 = !{!"arybase.c:ptable_fetch"}
!157 = !{!158, !61, i64 16}
!158 = !{!"ptable_ent", !61, i64 0, !61, i64 8, !61, i64 16}
!159 = !{!"arybase.c:ptable_find"}
!160 = !{!158, !61, i64 8}
!161 = distinct !{!161, !142}
!162 = !{!"arybase.c:ab_map_store_locked"}
!163 = !{!"arybase.c:ptable_map_store"}
!164 = !{!158, !61, i64 0}
!165 = !{!"arybase.c:ptable_split"}
!166 = distinct !{!166, !142}
!167 = distinct !{!167, !142}
