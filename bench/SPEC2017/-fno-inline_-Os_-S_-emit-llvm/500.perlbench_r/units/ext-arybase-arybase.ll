; ModuleID = 'ext/arybase/arybase.c'
source_filename = "ext/arybase/arybase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.1, %union._xivu, %union._xnvu }
%union._xmgu = type { ptr }
%union.anon.1 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
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
define dso_local void @tie(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @Perl_newSV_type(i32 noundef 1) #15
  %5 = icmp eq ptr %1, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !5
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 8, !tbaa !5
  br label %12

10:                                               ; preds = %3
  %11 = tail call ptr @Perl_newSV(i64 noundef 0) #15
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %1, %6 ], [ %11, %10 ]
  %14 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 3
  store ptr %13, ptr %14, align 8, !tbaa !11
  %15 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !12
  %17 = or i32 %16, 2048
  store i32 %17, ptr %15, align 4, !tbaa !12
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
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !5
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
define dso_local void @boot_arybase(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #15
  %3 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_arybase_FETCH) #15
  %4 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.3, ptr noundef nonnull @XS_arybase_STORE) #15
  %5 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_arybase__mg_FETCH) #15
  %6 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.5, ptr noundef nonnull @XS_arybase__mg_STORE) #15
  %7 = tail call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.6, i64 noundef 1, i32 noundef 130, i32 noundef 3) #15
  %8 = getelementptr inbounds %struct.gv, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  %11 = tail call i32 @Perl_sv_unmagic(ptr noundef %10, i32 noundef 0) #15
  %12 = load ptr, ptr %8, align 8, !tbaa !11
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = tail call fastcc ptr @S_CvGV(ptr noundef %0) #16
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct.xpvgv, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  tail call void @tie(ptr noundef %13, ptr noundef null, ptr noundef %17) #16
  %18 = load i32, ptr @ab_initialized, align 4, !tbaa !17
  %19 = add i32 %18, 1
  store i32 %19, ptr @ab_initialized, align 4, !tbaa !17
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = tail call fastcc ptr @ptable_new() #16
  store ptr %22, ptr @ab_op_map, align 8, !tbaa !18
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
define internal void @XS_arybase_FETCH(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !18
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !18
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !18
  %5 = load i32, ptr %3, align 4, !tbaa !17
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !18
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = shl i64 %11, 29
  %13 = ashr i64 %12, 32
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds ptr, ptr %2, i64 %14
  %16 = load ptr, ptr @PL_curcop, align 8, !tbaa !18
  %17 = getelementptr %struct.cop, ptr %16, i64 0, i32 10
  %18 = load i32, ptr %17, align 8, !tbaa !19
  %19 = and i32 %18, 469762048
  %20 = icmp ult i32 %19, 201326592
  br i1 %20, label %28, label %21

21:                                               ; preds = %1
  %22 = and i32 %18, 469893120
  %23 = icmp eq i32 %22, 469893120
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  %25 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.7, i64 noundef 7) #15
  br i1 %25, label %26, label %45

26:                                               ; preds = %24
  %27 = load ptr, ptr @PL_curcop, align 8, !tbaa !18
  br label %28

28:                                               ; preds = %26, %1
  %29 = phi ptr [ %27, %26 ], [ %16, %1 ]
  %30 = getelementptr inbounds %struct.cop, ptr %29, i64 0, i32 13
  %31 = load ptr, ptr %30, align 8, !tbaa !22
  %32 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %31, ptr noundef nonnull @.str.8, i64 noundef 2, i32 noundef 0, i32 noundef 0) #15
  %33 = icmp eq ptr %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !12
  %37 = and i32 %36, 65280
  %38 = icmp ne i32 %37, 0
  %39 = and i32 %36, 255
  %40 = icmp eq i32 %39, 8
  %41 = or i1 %38, %40
  %42 = and i32 %36, 16777471
  %43 = icmp eq i32 %42, 16777226
  %44 = or i1 %43, %41
  br i1 %44, label %57, label %45

45:                                               ; preds = %21, %24, %34, %28
  %46 = load ptr, ptr @PL_stack_max, align 8, !tbaa !18
  %47 = ptrtoint ptr %46 to i64
  %48 = ptrtoint ptr %15 to i64
  %49 = sub i64 %47, %48
  %50 = icmp slt i64 %49, 8
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = tail call ptr @Perl_stack_grow(ptr noundef %15, ptr noundef %15, i64 noundef 1) #15
  br label %53

53:                                               ; preds = %45, %51
  %54 = phi ptr [ %52, %51 ], [ %15, %45 ]
  %55 = tail call ptr @Perl_sv_newmortal() #15
  %56 = getelementptr inbounds ptr, ptr %54, i64 1
  store ptr %55, ptr %56, align 8, !tbaa !18
  tail call void @Perl_sv_setiv(ptr noundef %55, i64 noundef 0) #15
  br label %68

57:                                               ; preds = %34
  %58 = load ptr, ptr @PL_stack_max, align 8, !tbaa !18
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
  store ptr %32, ptr %67, align 8, !tbaa !18
  br label %68

68:                                               ; preds = %65, %53
  %69 = phi ptr [ %67, %65 ], [ %56, %53 ]
  store ptr %69, ptr @PL_stack_sp, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_arybase_STORE(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !18
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !18
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !18
  %5 = load i32, ptr %3, align 4, !tbaa !17
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !18
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
  %15 = load ptr, ptr @PL_stack_base, align 8, !tbaa !18
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %6, %1 ]
  %18 = getelementptr ptr, ptr %17, i64 %7
  %19 = getelementptr ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !18
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !12
  %23 = and i32 %22, 2097408
  %24 = icmp eq i32 %23, 256
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load ptr, ptr %20, align 8, !tbaa !23
  %27 = getelementptr inbounds %struct.xpviv, ptr %26, i64 0, i32 4
  %28 = load i64, ptr %27, align 8, !tbaa !11
  br label %31

29:                                               ; preds = %16
  %30 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %20, i32 noundef 2) #15
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi i64 [ %28, %25 ], [ %30, %29 ]
  %33 = load ptr, ptr @PL_curcop, align 8, !tbaa !18
  %34 = getelementptr %struct.cop, ptr %33, i64 0, i32 10
  %35 = load i32, ptr %34, align 8, !tbaa !19
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
  %44 = load ptr, ptr @PL_curcop, align 8, !tbaa !18
  br label %45

45:                                               ; preds = %43, %31
  %46 = phi ptr [ %44, %43 ], [ %33, %31 ]
  %47 = getelementptr inbounds %struct.cop, ptr %46, i64 0, i32 13
  %48 = load ptr, ptr %47, align 8, !tbaa !22
  %49 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %48, ptr noundef nonnull @.str.8, i64 noundef 2, i32 noundef 0, i32 noundef 0) #15
  %50 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !12
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
  %64 = load ptr, ptr %49, align 8, !tbaa !23
  %65 = getelementptr inbounds %struct.xpviv, ptr %64, i64 0, i32 4
  %66 = load i64, ptr %65, align 8, !tbaa !11
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
  %79 = load ptr, ptr @PL_stack_base, align 8, !tbaa !18
  %80 = getelementptr ptr, ptr %79, i64 %7
  store ptr %80, ptr @PL_stack_sp, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_arybase__mg_FETCH(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !18
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !18
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !18
  %5 = load i32, ptr %3, align 4, !tbaa !17
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !18
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
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !18
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = shl i64 %12, 29
  %20 = ashr i64 %19, 32
  %21 = sub nsw i64 0, %20
  %22 = getelementptr inbounds ptr, ptr %2, i64 %21
  %23 = sext i32 %7 to i64
  %24 = getelementptr inbounds ptr, ptr %18, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !18
  %26 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !12
  %28 = and i32 %27, 2048
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !11
  %33 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !12
  %35 = and i32 %34, 255
  %36 = icmp ugt i32 %35, 10
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %17
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.13) #15
  br label %38

38:                                               ; preds = %37, %30
  %39 = load ptr, ptr @PL_curcop, align 8, !tbaa !18
  %40 = getelementptr %struct.cop, ptr %39, i64 0, i32 10
  %41 = load i32, ptr %40, align 8, !tbaa !19
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
  %50 = load ptr, ptr @PL_curcop, align 8, !tbaa !18
  br label %51

51:                                               ; preds = %49, %38
  %52 = phi ptr [ %50, %49 ], [ %39, %38 ]
  %53 = getelementptr inbounds %struct.cop, ptr %52, i64 0, i32 13
  %54 = load ptr, ptr %53, align 8, !tbaa !22
  %55 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %54, ptr noundef nonnull @.str.8, i64 noundef 2, i32 noundef 0, i32 noundef 0) #15
  br label %56

56:                                               ; preds = %44, %47, %51
  %57 = phi ptr [ %55, %51 ], [ null, %47 ], [ null, %44 ]
  %58 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !11
  %60 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !12
  %62 = and i32 %61, 2097152
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %56
  %65 = tail call i32 @Perl_mg_get(ptr noundef nonnull %59) #15
  %66 = load ptr, ptr %58, align 8, !tbaa !11
  %67 = getelementptr inbounds %struct.sv, ptr %66, i64 0, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !12
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
  %80 = load ptr, ptr @PL_stack_max, align 8, !tbaa !18
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
  store ptr %89, ptr %90, align 8, !tbaa !18
  %91 = load ptr, ptr %58, align 8, !tbaa !11
  %92 = getelementptr inbounds %struct.sv, ptr %91, i64 0, i32 2
  %93 = load i32, ptr %92, align 4, !tbaa !12
  %94 = and i32 %93, 256
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %87
  %97 = load ptr, ptr %91, align 8, !tbaa !23
  %98 = getelementptr inbounds %struct.xpviv, ptr %97, i64 0, i32 4
  %99 = load i64, ptr %98, align 8, !tbaa !11
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
  %107 = load i32, ptr %106, align 4, !tbaa !12
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
  %120 = load ptr, ptr %57, align 8, !tbaa !23
  %121 = getelementptr inbounds %struct.xpviv, ptr %120, i64 0, i32 4
  %122 = load i64, ptr %121, align 8, !tbaa !11
  br label %130

123:                                              ; preds = %116
  %124 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %57, i32 noundef 2) #15
  br label %130

125:                                              ; preds = %69
  %126 = load ptr, ptr @PL_stack_base, align 8, !tbaa !18
  %127 = getelementptr inbounds ptr, ptr %126, i64 %23
  store ptr @PL_sv_undef, ptr %127, align 8, !tbaa !18
  %128 = load ptr, ptr @PL_stack_base, align 8, !tbaa !18
  %129 = getelementptr inbounds ptr, ptr %128, i64 %23
  br label %133

130:                                              ; preds = %123, %119, %102, %105
  %131 = phi i64 [ %122, %119 ], [ %124, %123 ], [ 0, %102 ], [ 0, %105 ]
  %132 = tail call fastcc i64 @adjust_index_r(i64 noundef %103, i64 noundef %131) #16
  tail call void @Perl_sv_setiv(ptr noundef %89, i64 noundef %132) #15
  br label %133

133:                                              ; preds = %125, %130
  %134 = phi ptr [ %129, %125 ], [ %90, %130 ]
  store ptr %134, ptr @PL_stack_sp, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_arybase__mg_STORE(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !18
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !18
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !18
  %5 = load i32, ptr %3, align 4, !tbaa !17
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !18
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
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !18
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !18
  %22 = getelementptr ptr, ptr %18, i64 %8
  %23 = getelementptr ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !18
  %25 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !12
  %27 = and i32 %26, 2048
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !12
  %34 = and i32 %33, 255
  %35 = icmp ugt i32 %34, 10
  br i1 %35, label %36, label %37

36:                                               ; preds = %29, %17
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.13) #15
  br label %37

37:                                               ; preds = %36, %29
  %38 = load ptr, ptr @PL_curcop, align 8, !tbaa !18
  %39 = getelementptr %struct.cop, ptr %38, i64 0, i32 10
  %40 = load i32, ptr %39, align 8, !tbaa !19
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
  %49 = load ptr, ptr @PL_curcop, align 8, !tbaa !18
  br label %50

50:                                               ; preds = %48, %37
  %51 = phi ptr [ %49, %48 ], [ %38, %37 ]
  %52 = getelementptr inbounds %struct.cop, ptr %51, i64 0, i32 13
  %53 = load ptr, ptr %52, align 8, !tbaa !22
  %54 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %53, ptr noundef nonnull @.str.8, i64 noundef 2, i32 noundef 0, i32 noundef 0) #15
  br label %55

55:                                               ; preds = %43, %46, %50
  %56 = phi ptr [ %54, %50 ], [ null, %46 ], [ null, %43 ]
  %57 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !12
  %59 = and i32 %58, 2097152
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = tail call i32 @Perl_mg_get(ptr noundef nonnull %24) #15
  %63 = load i32, ptr %57, align 4, !tbaa !12
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
  %75 = load ptr, ptr %74, align 8, !tbaa !11
  br i1 %73, label %86, label %76

76:                                               ; preds = %64
  %77 = icmp eq ptr %75, @PL_sv_undef
  br i1 %77, label %121, label %78

78:                                               ; preds = %76
  tail call void @Perl_sv_setsv_flags(ptr noundef %75, ptr noundef nonnull @PL_sv_undef, i32 noundef 2) #15
  %79 = load ptr, ptr %74, align 8, !tbaa !11
  %80 = getelementptr inbounds %struct.sv, ptr %79, i64 0, i32 2
  %81 = load i32, ptr %80, align 4, !tbaa !12
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
  %90 = load ptr, ptr %24, align 8, !tbaa !23
  %91 = getelementptr inbounds %struct.xpviv, ptr %90, i64 0, i32 4
  %92 = load i64, ptr %91, align 8, !tbaa !11
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
  %100 = load i32, ptr %99, align 4, !tbaa !12
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
  %113 = load ptr, ptr %56, align 8, !tbaa !23
  %114 = getelementptr inbounds %struct.xpviv, ptr %113, i64 0, i32 4
  %115 = load i64, ptr %114, align 8, !tbaa !11
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
  %122 = load ptr, ptr @PL_stack_base, align 8, !tbaa !18
  %123 = getelementptr inbounds ptr, ptr %122, i64 %19
  %124 = getelementptr inbounds ptr, ptr %123, i64 -1
  store ptr %124, ptr @PL_stack_sp, align 8, !tbaa !18
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_gv_fetchpvn_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_CvGV(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !24
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !26
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %0) #15
  br label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %8, %7 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: optsize
declare void @Perl_wrap_op_checker(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ab_ck_sassign(ptr noundef %0) #0 {
  %2 = load ptr, ptr @ab_old_ck_sassign, align 8, !tbaa !18
  %3 = tail call ptr %2(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 511
  %7 = icmp eq i16 %6, 37
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load ptr, ptr @PL_curcop, align 8, !tbaa !18
  %10 = getelementptr %struct.cop, ptr %9, i64 0, i32 10
  %11 = load i32, ptr %10, align 8, !tbaa !19
  %12 = and i32 %11, 469762048
  %13 = icmp ult i32 %12, 201326592
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = and i32 %11, 469893120
  %16 = icmp eq i32 %15, 469893120
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.7, i64 noundef 7) #15
  br i1 %18, label %19, label %26

19:                                               ; preds = %17, %8
  %20 = getelementptr inbounds %struct.binop, ptr %3, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !28
  %22 = getelementptr inbounds %struct.op, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !30
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  tail call fastcc void @ab_process_assignment(ptr noundef nonnull %23, ptr noundef nonnull %21) #16
  br label %26

26:                                               ; preds = %19, %25, %17, %14, %1
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ab_ck_aassign(ptr noundef %0) #0 {
  %2 = load ptr, ptr @ab_old_ck_aassign, align 8, !tbaa !18
  %3 = tail call ptr %2(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 511
  %7 = icmp eq i16 %6, 38
  br i1 %7, label %8, label %32

8:                                                ; preds = %1
  %9 = load ptr, ptr @PL_curcop, align 8, !tbaa !18
  %10 = getelementptr %struct.cop, ptr %9, i64 0, i32 10
  %11 = load i32, ptr %10, align 8, !tbaa !19
  %12 = and i32 %11, 469762048
  %13 = icmp ult i32 %12, 201326592
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = and i32 %11, 469893120
  %16 = icmp eq i32 %15, 469893120
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.7, i64 noundef 7) #15
  br i1 %18, label %19, label %32

19:                                               ; preds = %17, %8
  %20 = getelementptr inbounds %struct.binop, ptr %3, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !28
  %22 = getelementptr inbounds %struct.op, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !30
  %24 = getelementptr inbounds %struct.binop, ptr %23, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !28
  %26 = getelementptr inbounds %struct.op, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !30
  %28 = getelementptr inbounds %struct.binop, ptr %21, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !28
  %30 = getelementptr inbounds %struct.op, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !30
  tail call fastcc void @ab_process_assignment(ptr noundef %27, ptr noundef %31) #16
  br label %32

32:                                               ; preds = %19, %17, %14, %1
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ab_ck_base(ptr noundef %0) #0 {
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
  ]

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
  %16 = load ptr, ptr @PL_op, align 8, !tbaa !18
  %17 = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 4
  %18 = load i16, ptr %17, align 8
  %19 = and i16 %18, 511
  %20 = zext nneg i16 %19 to i32
  %21 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.16, i32 noundef %20) #15
  br label %68

22:                                               ; preds = %1, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %23 = phi ptr [ @ab_old_ck_pos, %14 ], [ @ab_old_ck_index, %13 ], [ @ab_old_ck_rindex, %12 ], [ @ab_old_ck_substr, %11 ], [ @ab_old_ck_each, %10 ], [ @ab_old_ck_keys, %9 ], [ @ab_old_ck_splice, %8 ], [ @ab_old_ck_av2arylen, %7 ], [ @ab_old_ck_lslice, %6 ], [ @ab_old_ck_aslice, %5 ], [ @ab_old_ck_aelem, %1 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !18
  %25 = tail call ptr %24(ptr noundef nonnull %0) #15
  %26 = load ptr, ptr @PL_curcop, align 8, !tbaa !18
  %27 = getelementptr %struct.cop, ptr %26, i64 0, i32 10
  %28 = load i32, ptr %27, align 8, !tbaa !19
  %29 = and i32 %28, 469762048
  %30 = icmp ult i32 %29, 201326592
  br i1 %30, label %36, label %31

31:                                               ; preds = %22
  %32 = and i32 %28, 469893120
  %33 = icmp eq i32 %32, 469893120
  br i1 %33, label %34, label %68

34:                                               ; preds = %31
  %35 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.7, i64 noundef 7) #15
  br i1 %35, label %36, label %68

36:                                               ; preds = %34, %22
  %37 = getelementptr inbounds %struct.op, ptr %25, i64 0, i32 4
  %38 = load i16, ptr %37, align 8
  %39 = and i16 %38, 511
  switch i16 %39, label %68 [
    i16 138, label %44
    i16 139, label %44
    i16 159, label %44
    i16 162, label %44
    i16 121, label %44
    i16 46, label %40
    i16 16, label %40
    i16 142, label %41
    i16 141, label %42
    i16 124, label %43
    i16 123, label %43
  ]

40:                                               ; preds = %36, %36
  br label %44

41:                                               ; preds = %36
  br label %44

42:                                               ; preds = %36
  br label %44

43:                                               ; preds = %36, %36
  br label %44

44:                                               ; preds = %36, %36, %36, %36, %36, %43, %42, %41, %40
  %45 = phi ptr [ @ab_pp_index, %43 ], [ @ab_pp_each, %42 ], [ @ab_pp_keys, %41 ], [ @ab_pp_av2arylen, %40 ], [ @ab_pp_basearg, %36 ], [ @ab_pp_basearg, %36 ], [ @ab_pp_basearg, %36 ], [ @ab_pp_basearg, %36 ], [ @ab_pp_basearg, %36 ]
  %46 = tail call fastcc i64 @current_base() #16
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %67, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.op, ptr %25, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !32
  tail call fastcc void @ab_map_store(ptr noundef nonnull %25, ptr noundef %50, i64 noundef %46) #16
  store ptr %45, ptr %49, align 8, !tbaa !32
  %51 = load i16, ptr %37, align 8
  %52 = and i16 %51, 511
  %53 = icmp eq i16 %52, 138
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.binop, ptr %25, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !28
  %57 = getelementptr inbounds %struct.op, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !30
  %59 = getelementptr inbounds %struct.op, ptr %58, i64 0, i32 4
  %60 = load i16, ptr %59, align 8
  %61 = and i16 %60, 511
  %62 = icmp eq i16 %61, 5
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = tail call ptr @Perl_op_sibling_splice(ptr noundef nonnull %25, ptr noundef nonnull %56, i32 noundef 1, ptr noundef null) #15
  %65 = tail call ptr @Perl_newUNOP(i32 noundef 0, i32 noundef 0, ptr noundef nonnull %58) #15
  %66 = tail call ptr @Perl_op_sibling_splice(ptr noundef nonnull %25, ptr noundef nonnull %56, i32 noundef 0, ptr noundef %65) #15
  br label %68

67:                                               ; preds = %44
  tail call fastcc void @ab_map_delete(ptr noundef nonnull %25) #16
  br label %68

68:                                               ; preds = %67, %48, %63, %54, %36, %31, %34, %15
  %69 = phi ptr [ %21, %15 ], [ %25, %34 ], [ %25, %31 ], [ %25, %36 ], [ %25, %54 ], [ %25, %63 ], [ %25, %48 ], [ %25, %67 ]
  ret ptr %69
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
define internal fastcc i64 @adjust_index_r(i64 noundef %0, i64 noundef %1) unnamed_addr #3 {
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
define internal fastcc i64 @adjust_index(i64 noundef %0, i64 noundef %1) unnamed_addr #3 {
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
define internal fastcc noalias noundef ptr @ptable_new() unnamed_addr #4 {
  %1 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #17
  %2 = getelementptr inbounds %struct.ptable, ptr %1, i64 0, i32 1
  store i64 63, ptr %2, align 8, !tbaa !33
  %3 = getelementptr inbounds %struct.ptable, ptr %1, i64 0, i32 2
  store i64 0, ptr %3, align 8, !tbaa !35
  %4 = tail call noalias dereferenceable_or_null(512) ptr @calloc(i64 noundef 64, i64 noundef 8) #18
  store ptr %4, ptr %1, align 8, !tbaa !36
  ret ptr %1
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ab_process_assignment(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i1 @ab_op_is_dollar_bracket(ptr noundef %0) #16
  br i1 %3, label %4, label %24

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 4
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, 511
  %8 = icmp eq i16 %7, 5
  br i1 %8, label %9, label %24

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.svop, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !37
  %12 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !12
  %14 = and i32 %13, 2097408
  %15 = icmp eq i32 %14, 256
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load ptr, ptr %11, align 8, !tbaa !23
  %18 = getelementptr inbounds %struct.xpviv, ptr %17, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !11
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
define internal fastcc zeroext i1 @ab_op_is_dollar_bracket(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.op, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 511
  %5 = icmp eq i16 %4, 15
  br i1 %5, label %6, label %34

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.op, ptr %0, i64 0, i32 5
  %8 = load i8, ptr %7, align 2, !tbaa !39
  %9 = and i8 %8, 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.unop, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %34, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.op, ptr %13, i64 0, i32 4
  %17 = load i16, ptr %16, align 8
  %18 = and i16 %17, 511
  %19 = icmp eq i16 %18, 7
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.svop, ptr %13, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !37
  %23 = load ptr, ptr %22, align 8, !tbaa !15
  %24 = getelementptr inbounds %struct.xpvgv, ptr %23, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !11
  %26 = load ptr, ptr @PL_defstash, align 8, !tbaa !18
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.xpvgv, ptr %23, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  %31 = getelementptr inbounds %struct.hek, ptr %30, i64 0, i32 2
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(2) @.str.6) #19
  %33 = icmp eq i32 %32, 0
  br label %34

34:                                               ; preds = %28, %20, %15, %11, %6, %1
  %35 = phi i1 [ false, %20 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ false, %1 ], [ %33, %28 ]
  ret i1 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_arybase_to(i64 noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @ab_hint(i1 noundef zeroext true) #16
  tail call void @Perl_sv_setiv_mg(ptr noundef %2, i64 noundef %0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ab_neuter_dollar_bracket(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.unop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !40
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
define internal fastcc ptr @ab_hint(i1 noundef zeroext %0) unnamed_addr #0 {
  %2 = load ptr, ptr @PL_hintgv, align 8, !tbaa !18
  %3 = getelementptr inbounds %struct.gv, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.gp, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = select i1 %0, i32 48, i32 32
  %8 = tail call ptr @Perl_hv_common_key_len(ptr noundef %6, ptr noundef nonnull @.str.8, i32 noundef 2, i32 noundef %7, ptr noundef null, i32 noundef 0) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %8, align 8, !tbaa !18
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
define internal ptr @ab_pp_basearg() #0 {
  %1 = alloca %struct.ab_op_info, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !18
  call fastcc void @ab_map_fetch(ptr noundef %3, ptr noundef nonnull %1) #16
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !18
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
  %9 = load ptr, ptr @PL_stack_base, align 8, !tbaa !18
  %10 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !18
  %11 = load i32, ptr %10, align 4, !tbaa !17
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = getelementptr inbounds ptr, ptr %13, i64 1
  %15 = ptrtoint ptr %2 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = ashr exact i64 %17, 3
  br label %67

19:                                               ; preds = %0
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !18
  %21 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !18
  %22 = getelementptr inbounds i32, ptr %21, i64 -1
  %23 = load i32, ptr %22, align 4, !tbaa !17
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %20, i64 %24
  %26 = load i32, ptr %21, align 4, !tbaa !17
  %27 = sub nsw i32 %26, %23
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 5
  %30 = load i8, ptr %29, align 2, !tbaa !39
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
  %43 = load ptr, ptr @PL_stack_base, align 8, !tbaa !18
  %44 = ptrtoint ptr %2 to i64
  %45 = ptrtoint ptr %43 to i64
  %46 = sub i64 %44, %45
  %47 = ashr exact i64 %46, 3
  %48 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !18
  %49 = load i32, ptr %48, align 4, !tbaa !17
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
  %58 = load i8, ptr %57, align 1, !tbaa !43
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
  %79 = load ptr, ptr %77, align 8, !tbaa !18
  %80 = getelementptr inbounds %struct.sv, ptr %79, i64 0, i32 2
  %81 = load i32, ptr %80, align 4, !tbaa !12
  %82 = and i32 %81, 2097408
  %83 = icmp eq i32 %82, 256
  br i1 %83, label %84, label %88

84:                                               ; preds = %75
  %85 = load ptr, ptr %79, align 8, !tbaa !23
  %86 = getelementptr inbounds %struct.xpviv, ptr %85, i64 0, i32 4
  %87 = load i64, ptr %86, align 8, !tbaa !11
  br label %90

88:                                               ; preds = %75
  %89 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %79, i32 noundef 2) #15
  br label %90

90:                                               ; preds = %88, %84
  %91 = phi i64 [ %87, %84 ], [ %89, %88 ]
  %92 = load i64, ptr %74, align 8, !tbaa !44
  %93 = call fastcc i64 @adjust_index(i64 noundef %91, i64 noundef %92) #16
  %94 = call ptr @Perl_newSViv(i64 noundef %93) #15
  %95 = call ptr @Perl_sv_2mortal(ptr noundef %94) #15
  store ptr %95, ptr %77, align 8, !tbaa !18
  %96 = getelementptr inbounds ptr, ptr %77, i64 1
  %97 = icmp eq i64 %78, 0
  br i1 %97, label %98, label %75, !llvm.loop !46

98:                                               ; preds = %90, %42, %67
  %99 = load ptr, ptr %1, align 8, !tbaa !48
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
define internal ptr @ab_pp_av2arylen() #0 {
  %1 = alloca %struct.ab_op_info, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !18
  call fastcc void @ab_map_fetch(ptr noundef %3, ptr noundef nonnull %1) #16
  %4 = load ptr, ptr %1, align 8, !tbaa !48
  %5 = call ptr %4() #15
  %6 = load ptr, ptr @PL_op, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.op, ptr %6, i64 0, i32 5
  %8 = load i8, ptr %7, align 2, !tbaa !39
  %9 = and i8 %8, 32
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.op, ptr %6, i64 0, i32 6
  %13 = load i8, ptr %12, align 1, !tbaa !43
  %14 = and i8 %13, 8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = call i32 @Perl_is_lvalue_sub() #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %16, %0
  %20 = call ptr @Perl_newSV(i64 noundef 0) #15
  %21 = load ptr, ptr %2, align 8, !tbaa !18
  %22 = call ptr @Perl_gv_stashpv(ptr noundef nonnull @.str.18, i32 noundef 1) #15
  call void @tie(ptr noundef %20, ptr noundef %21, ptr noundef %22) #16
  br label %61

23:                                               ; preds = %16, %11
  %24 = load ptr, ptr %2, align 8, !tbaa !18
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !12
  %27 = and i32 %26, 2097152
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = call i32 @Perl_mg_get(ptr noundef nonnull %24) #15
  %31 = load ptr, ptr %2, align 8, !tbaa !18
  %32 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !12
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
  %49 = load ptr, ptr %36, align 8, !tbaa !23
  %50 = getelementptr inbounds %struct.xpviv, ptr %49, i64 0, i32 4
  %51 = load i64, ptr %50, align 8, !tbaa !11
  br label %54

52:                                               ; preds = %45
  %53 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %36, i32 noundef 2) #15
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi i64 [ %51, %48 ], [ %53, %52 ]
  %56 = getelementptr inbounds %struct.ab_op_info, ptr %1, i64 0, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !44
  %58 = call fastcc i64 @adjust_index_r(i64 noundef %55, i64 noundef %57) #16
  %59 = call ptr @Perl_newSViv(i64 noundef %58) #15
  %60 = call ptr @Perl_sv_2mortal(ptr noundef %59) #15
  br label %61

61:                                               ; preds = %19, %54
  %62 = phi ptr [ %60, %54 ], [ %20, %19 ]
  store ptr %62, ptr %2, align 8, !tbaa !18
  br label %63

63:                                               ; preds = %61, %34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #20
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ab_pp_keys() #0 {
  %1 = alloca %struct.ab_op_info, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #20
  %3 = load ptr, ptr @PL_stack_base, align 8, !tbaa !18
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %3 to i64
  %6 = sub i64 %4, %5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %7 = load ptr, ptr @PL_op, align 8, !tbaa !18
  call fastcc void @ab_map_fetch(ptr noundef %7, ptr noundef nonnull %1) #16
  %8 = load ptr, ptr %1, align 8, !tbaa !48
  %9 = call ptr %8() #15
  %10 = load ptr, ptr @PL_op, align 8, !tbaa !18
  %11 = getelementptr inbounds %struct.op, ptr %10, i64 0, i32 5
  %12 = load i8, ptr %11, align 2, !tbaa !39
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
  %23 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !18
  %24 = load ptr, ptr @PL_stack_base, align 8, !tbaa !18
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
  %33 = load ptr, ptr %32, align 8, !tbaa !18
  %34 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !12
  %36 = and i32 %35, 2097408
  %37 = icmp eq i32 %36, 256
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load ptr, ptr %33, align 8, !tbaa !23
  %40 = getelementptr inbounds %struct.xpviv, ptr %39, i64 0, i32 4
  %41 = load i64, ptr %40, align 8, !tbaa !11
  br label %44

42:                                               ; preds = %31
  %43 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %33, i32 noundef 2) #15
  br label %44

44:                                               ; preds = %42, %38
  %45 = phi i64 [ %41, %38 ], [ %43, %42 ]
  %46 = load i64, ptr %30, align 8, !tbaa !44
  %47 = call fastcc i64 @adjust_index_r(i64 noundef %45, i64 noundef %46) #16
  %48 = call ptr @Perl_newSViv(i64 noundef %47) #15
  %49 = call ptr @Perl_sv_2mortal(ptr noundef %48) #15
  store ptr %49, ptr %32, align 8, !tbaa !18
  %50 = getelementptr inbounds ptr, ptr %32, i64 1
  %51 = icmp ugt ptr %50, %23
  br i1 %51, label %52, label %31, !llvm.loop !49

52:                                               ; preds = %44, %22, %19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #20
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ab_pp_each() #0 {
  %1 = alloca %struct.ab_op_info, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #20
  %3 = load ptr, ptr @PL_stack_base, align 8, !tbaa !18
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %3 to i64
  %6 = sub i64 %4, %5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %7 = load ptr, ptr @PL_op, align 8, !tbaa !18
  call fastcc void @ab_map_fetch(ptr noundef %7, ptr noundef nonnull %1) #16
  %8 = load ptr, ptr %1, align 8, !tbaa !48
  %9 = call ptr %8() #15
  %10 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !18
  %11 = load ptr, ptr @PL_op, align 8, !tbaa !18
  %12 = getelementptr inbounds %struct.op, ptr %11, i64 0, i32 5
  %13 = load i8, ptr %12, align 2, !tbaa !39
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
  %24 = load ptr, ptr %10, align 8, !tbaa !18
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !12
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
  %39 = load ptr, ptr %24, align 8, !tbaa !23
  %40 = getelementptr inbounds %struct.xpviv, ptr %39, i64 0, i32 4
  %41 = load i64, ptr %40, align 8, !tbaa !11
  br label %66

42:                                               ; preds = %35
  %43 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %24, i32 noundef 2) #15
  br label %66

44:                                               ; preds = %20
  %45 = shl i64 %6, 29
  %46 = ashr i64 %45, 32
  %47 = load ptr, ptr @PL_stack_base, align 8, !tbaa !18
  %48 = ptrtoint ptr %10 to i64
  %49 = ptrtoint ptr %47 to i64
  %50 = sub i64 %48, %49
  %51 = ashr exact i64 %50, 3
  %52 = icmp slt i64 %46, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %44
  %54 = getelementptr inbounds ptr, ptr %10, i64 -1
  %55 = load ptr, ptr %54, align 8, !tbaa !18
  %56 = getelementptr inbounds %struct.sv, ptr %55, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !12
  %58 = and i32 %57, 2097408
  %59 = icmp eq i32 %58, 256
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load ptr, ptr %55, align 8, !tbaa !23
  %62 = getelementptr inbounds %struct.xpviv, ptr %61, i64 0, i32 4
  %63 = load i64, ptr %62, align 8, !tbaa !11
  br label %66

64:                                               ; preds = %53
  %65 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %55, i32 noundef 2) #15
  br label %66

66:                                               ; preds = %60, %64, %38, %42
  %67 = phi i64 [ %41, %38 ], [ %43, %42 ], [ %63, %60 ], [ %65, %64 ]
  %68 = phi ptr [ %10, %38 ], [ %10, %42 ], [ %54, %60 ], [ %54, %64 ]
  %69 = getelementptr inbounds %struct.ab_op_info, ptr %1, i64 0, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !44
  %71 = call fastcc i64 @adjust_index_r(i64 noundef %67, i64 noundef %70) #16
  %72 = call ptr @Perl_newSViv(i64 noundef %71) #15
  %73 = call ptr @Perl_sv_2mortal(ptr noundef %72) #15
  store ptr %73, ptr %68, align 8, !tbaa !18
  br label %74

74:                                               ; preds = %66, %23, %44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #20
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @ab_pp_index() #0 {
  %1 = alloca %struct.ab_op_info, align 8
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr @PL_op, align 8, !tbaa !18
  call fastcc void @ab_map_fetch(ptr noundef %3, ptr noundef nonnull %1) #16
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !18
  %5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 6
  %6 = load i8, ptr %5, align 1, !tbaa !43
  %7 = and i8 %6, 15
  %8 = icmp eq i8 %7, 3
  br i1 %8, label %9, label %30

9:                                                ; preds = %0
  %10 = load ptr, ptr %2, align 8, !tbaa !18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !12
  %15 = and i32 %14, 2097408
  %16 = icmp eq i32 %15, 256
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load ptr, ptr %10, align 8, !tbaa !23
  %19 = getelementptr inbounds %struct.xpviv, ptr %18, i64 0, i32 4
  %20 = load i64, ptr %19, align 8, !tbaa !11
  br label %23

21:                                               ; preds = %12
  %22 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %10, i32 noundef 2) #15
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i64 [ %20, %17 ], [ %22, %21 ]
  %25 = getelementptr inbounds %struct.ab_op_info, ptr %1, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !44
  %27 = call fastcc i64 @adjust_index(i64 noundef %24, i64 noundef %26) #16
  %28 = call ptr @Perl_newSViv(i64 noundef %27) #15
  %29 = call ptr @Perl_sv_2mortal(ptr noundef %28) #15
  store ptr %29, ptr %2, align 8, !tbaa !18
  br label %30

30:                                               ; preds = %23, %9, %0
  %31 = load ptr, ptr %1, align 8, !tbaa !48
  %32 = call ptr %31() #15
  %33 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !18
  %34 = load ptr, ptr %33, align 8, !tbaa !18
  %35 = getelementptr inbounds %struct.sv, ptr %34, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !12
  %37 = and i32 %36, 2097408
  %38 = icmp eq i32 %37, 256
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load ptr, ptr %34, align 8, !tbaa !23
  %41 = getelementptr inbounds %struct.xpviv, ptr %40, i64 0, i32 4
  %42 = load i64, ptr %41, align 8, !tbaa !11
  br label %45

43:                                               ; preds = %30
  %44 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %34, i32 noundef 2) #15
  br label %45

45:                                               ; preds = %43, %39
  %46 = phi i64 [ %42, %39 ], [ %44, %43 ]
  %47 = getelementptr inbounds %struct.ab_op_info, ptr %1, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !44
  %49 = call fastcc i64 @adjust_index_r(i64 noundef %46, i64 noundef %48) #16
  %50 = call ptr @Perl_newSViv(i64 noundef %49) #15
  %51 = call ptr @Perl_sv_2mortal(ptr noundef %50) #15
  store ptr %51, ptr %33, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #20
  ret ptr %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @current_base() unnamed_addr #0 {
  %1 = tail call fastcc ptr @ab_hint(i1 noundef zeroext false) #16
  %2 = icmp eq ptr %1, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !12
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
  %18 = load ptr, ptr %1, align 8, !tbaa !23
  %19 = getelementptr inbounds %struct.xpviv, ptr %18, i64 0, i32 4
  %20 = load i64, ptr %19, align 8, !tbaa !11
  br label %23

21:                                               ; preds = %14
  %22 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %1, i32 noundef 2) #15
  br label %23

23:                                               ; preds = %17, %21, %0, %3
  %24 = phi i64 [ 0, %3 ], [ 0, %0 ], [ %20, %17 ], [ %22, %21 ]
  ret i64 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ab_map_store(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  tail call fastcc void @ab_map_store_locked(ptr noundef %0, ptr noundef %1, i64 noundef %2) #16
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newUNOP(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ab_map_delete(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @ab_op_map, align 8, !tbaa !18
  tail call fastcc void @ptable_map_store(ptr noundef %2, ptr noundef %0, ptr noundef null) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @ab_map_fetch(ptr noundef readonly %0, ptr noundef writeonly %1) unnamed_addr #10 {
  %3 = load ptr, ptr @ab_op_map, align 8, !tbaa !18
  %4 = tail call fastcc ptr @ptable_fetch(ptr noundef %3, ptr noundef %0) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !50
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
define internal fastcc ptr @ptable_fetch(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #11 {
  %3 = tail call fastcc ptr @ptable_find(ptr noundef %0, ptr noundef %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ptable_ent, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  br label %8

8:                                                ; preds = %2, %5
  %9 = phi ptr [ %7, %5 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @ptable_find(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #11 {
  %3 = ptrtoint ptr %1 to i64
  %4 = lshr i64 %3, 3
  %5 = lshr i64 %3, 10
  %6 = xor i64 %4, %5
  %7 = lshr i64 %3, 20
  %8 = xor i64 %6, %7
  %9 = load ptr, ptr %0, align 8, !tbaa !36
  %10 = getelementptr inbounds %struct.ptable, ptr %0, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !33
  %12 = and i64 %11, %8
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  br label %14

14:                                               ; preds = %18, %2
  %15 = phi ptr [ %13, %2 ], [ %16, %18 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ptable_ent, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %14, !llvm.loop !55

22:                                               ; preds = %14, %18
  ret ptr %16
}

; Function Attrs: optsize
declare i32 @Perl_is_lvalue_sub() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_gv_stashpv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ab_map_store_locked(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr @ab_op_map, align 8, !tbaa !18
  %5 = tail call fastcc ptr @ptable_fetch(ptr noundef %4, ptr noundef %0) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17
  tail call fastcc void @ptable_map_store(ptr noundef %4, ptr noundef %0, ptr noundef %8) #16
  br label %9

9:                                                ; preds = %7, %3
  %10 = phi ptr [ %5, %3 ], [ %8, %7 ]
  store ptr %1, ptr %10, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.ab_op_info, ptr %10, i64 0, i32 1
  store i64 %2, ptr %11, align 8, !tbaa !44
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ptable_map_store(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc ptr @ptable_find(ptr noundef %0, ptr noundef %1) #16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ptable_ent, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  tail call void @free(ptr noundef %8) #15
  store ptr %2, ptr %7, align 8, !tbaa !52
  br label %34

9:                                                ; preds = %3
  %10 = icmp eq ptr %2, null
  br i1 %10, label %34, label %11

11:                                               ; preds = %9
  %12 = ptrtoint ptr %1 to i64
  %13 = lshr i64 %12, 3
  %14 = lshr i64 %12, 10
  %15 = xor i64 %13, %14
  %16 = lshr i64 %12, 20
  %17 = xor i64 %15, %16
  %18 = getelementptr inbounds %struct.ptable, ptr %0, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !33
  %20 = and i64 %19, %17
  %21 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #17
  %22 = getelementptr inbounds %struct.ptable_ent, ptr %21, i64 0, i32 1
  store ptr %1, ptr %22, align 8, !tbaa !54
  %23 = getelementptr inbounds %struct.ptable_ent, ptr %21, i64 0, i32 2
  store ptr %2, ptr %23, align 8, !tbaa !52
  %24 = load ptr, ptr %0, align 8, !tbaa !36
  %25 = getelementptr inbounds ptr, ptr %24, i64 %20
  %26 = load ptr, ptr %25, align 8, !tbaa !18
  store ptr %26, ptr %21, align 8, !tbaa !56
  store ptr %21, ptr %25, align 8, !tbaa !18
  %27 = getelementptr inbounds %struct.ptable, ptr %0, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !35
  %29 = add i64 %28, 1
  store i64 %29, ptr %27, align 8, !tbaa !35
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
define internal fastcc void @ptable_split(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = getelementptr inbounds %struct.ptable, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !33
  %5 = add i64 %4, 1
  %6 = shl i64 %5, 1
  %7 = shl i64 %5, 4
  %8 = tail call ptr @realloc(ptr noundef %2, i64 noundef %7) #21
  %9 = getelementptr inbounds ptr, ptr %8, i64 %5
  %10 = shl i64 %5, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %9, i8 0, i64 %10, i1 false)
  %11 = add i64 %6, -1
  store i64 %11, ptr %3, align 8, !tbaa !33
  store ptr %8, ptr %0, align 8, !tbaa !36
  %12 = icmp eq i64 %5, 0
  br i1 %12, label %44, label %13

13:                                               ; preds = %1, %40
  %14 = phi ptr [ %42, %40 ], [ %8, %1 ]
  %15 = phi i64 [ %41, %40 ], [ 0, %1 ]
  %16 = load ptr, ptr %14, align 8, !tbaa !18
  %17 = icmp eq ptr %16, null
  br i1 %17, label %40, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds ptr, ptr %14, i64 %5
  br label %20

20:                                               ; preds = %18, %36
  %21 = phi ptr [ %16, %18 ], [ %38, %36 ]
  %22 = phi ptr [ %14, %18 ], [ %37, %36 ]
  %23 = getelementptr inbounds %struct.ptable_ent, ptr %21, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !54
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
  %34 = load ptr, ptr %21, align 8, !tbaa !56
  store ptr %34, ptr %22, align 8, !tbaa !18
  %35 = load ptr, ptr %19, align 8, !tbaa !18
  store ptr %35, ptr %21, align 8, !tbaa !56
  store ptr %21, ptr %19, align 8, !tbaa !18
  br label %36

36:                                               ; preds = %20, %33
  %37 = phi ptr [ %22, %33 ], [ %21, %20 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !18
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %20, !llvm.loop !57

40:                                               ; preds = %36, %13
  %41 = add nuw i64 %15, 1
  %42 = getelementptr inbounds ptr, ptr %14, i64 1
  %43 = icmp eq i64 %15, %4
  br i1 %43, label %44, label %13, !llvm.loop !58

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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 8}
!6 = !{!"sv", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!6, !10, i64 12}
!13 = !{!14, !7, i64 0}
!14 = !{!"gp", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !10, i64 64, !10, i64 67, !7, i64 72}
!15 = !{!16, !7, i64 0}
!16 = !{!"gv", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!17 = !{!10, !10, i64 0}
!18 = !{!7, !7, i64 0}
!19 = !{!20, !10, i64 56}
!20 = !{!"cop", !7, i64 0, !7, i64 8, !7, i64 16, !21, i64 24, !10, i64 32, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !8, i64 34, !8, i64 35, !10, i64 36, !7, i64 40, !7, i64 48, !10, i64 56, !10, i64 60, !7, i64 64, !7, i64 72}
!21 = !{!"long", !8, i64 0}
!22 = !{!20, !7, i64 72}
!23 = !{!6, !7, i64 0}
!24 = !{!25, !7, i64 0}
!25 = !{!"cv", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!26 = !{!27, !10, i64 92}
!27 = !{!"xpvcv", !7, i64 0, !8, i64 8, !21, i64 16, !8, i64 24, !7, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !7, i64 64, !8, i64 72, !7, i64 80, !10, i64 88, !10, i64 92, !10, i64 96}
!28 = !{!29, !7, i64 40}
!29 = !{!"binop", !7, i64 0, !7, i64 8, !7, i64 16, !21, i64 24, !10, i64 32, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !8, i64 34, !8, i64 35, !7, i64 40, !7, i64 48}
!30 = !{!31, !7, i64 8}
!31 = !{!"op", !7, i64 0, !7, i64 8, !7, i64 16, !21, i64 24, !10, i64 32, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !8, i64 34, !8, i64 35}
!32 = !{!31, !7, i64 16}
!33 = !{!34, !21, i64 8}
!34 = !{!"ptable", !7, i64 0, !21, i64 8, !21, i64 16}
!35 = !{!34, !21, i64 16}
!36 = !{!34, !7, i64 0}
!37 = !{!38, !7, i64 40}
!38 = !{!"svop", !7, i64 0, !7, i64 8, !7, i64 16, !21, i64 24, !10, i64 32, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !8, i64 34, !8, i64 35, !7, i64 40}
!39 = !{!31, !8, i64 34}
!40 = !{!41, !7, i64 40}
!41 = !{!"unop", !7, i64 0, !7, i64 8, !7, i64 16, !21, i64 24, !10, i64 32, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !10, i64 33, !8, i64 34, !8, i64 35, !7, i64 40}
!42 = !{!14, !7, i64 32}
!43 = !{!31, !8, i64 35}
!44 = !{!45, !21, i64 8}
!45 = !{!"", !7, i64 0, !21, i64 8}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!45, !7, i64 0}
!49 = distinct !{!49, !47}
!50 = !{i64 0, i64 8, !18, i64 8, i64 8, !51}
!51 = !{!21, !21, i64 0}
!52 = !{!53, !7, i64 16}
!53 = !{!"ptable_ent", !7, i64 0, !7, i64 8, !7, i64 16}
!54 = !{!53, !7, i64 8}
!55 = distinct !{!55, !47}
!56 = !{!53, !7, i64 0}
!57 = distinct !{!57, !47}
!58 = distinct !{!58, !47}
