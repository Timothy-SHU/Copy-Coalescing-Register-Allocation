; ModuleID = 'ext/arybase/arybase.c'
source_filename = "ext/arybase/arybase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.3, ptr, %union.anon.4, %union.anon.5, %union.anon.6, ptr, %union.anon.7, ptr, i32, i32, i32 }
%union._xmgu = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%union.anon.6 = type { ptr }
%union.anon.7 = type { ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.1, %union._xivu, %union._xnvu }
%union.anon.1 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.ptable = type { ptr, i64, i64 }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.2, %union._xivu }
%union.anon.2 = type { i64 }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.binop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.ptable_ent = type { ptr, ptr, ptr }
%struct.ab_op_info = type { ptr, i64 }
%struct.unop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }
%struct.svop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }
%struct.hek = type { i32, i32, [1 x i8] }

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

; Function Attrs: cold nounwind uwtable
define dso_local void @tie(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !57 {
  %4 = tail call ptr @Perl_newSV_type(i32 noundef 1) #9
  %5 = icmp eq ptr %1, null
  br i1 %5, label %10, label %6, !prof !58

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !59
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 8, !tbaa !59
  br label %12

10:                                               ; preds = %3
  %11 = tail call ptr @Perl_newSV(i64 noundef 0) #9
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %1, %6 ], [ %11, %10 ]
  %14 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 3
  store ptr %13, ptr %14, align 8, !tbaa !65
  %15 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !66
  %17 = or i32 %16, 2048
  store i32 %17, ptr %15, align 4, !tbaa !66
  %18 = tail call ptr @Perl_sv_bless(ptr noundef %4, ptr noundef %2) #9
  %19 = tail call i32 @Perl_sv_unmagic(ptr noundef %0, i32 noundef 113) #9
  tail call void @Perl_sv_magic(ptr noundef %0, ptr noundef %4, i32 noundef 113, ptr noundef null, i32 noundef 0) #9
  %20 = icmp eq ptr %4, null
  br i1 %20, label %28, label %21, !prof !67

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !59
  %24 = icmp ugt i32 %23, 1
  br i1 %24, label %25, label %27, !prof !58

25:                                               ; preds = %21
  %26 = add i32 %23, -1
  store i32 %26, ptr %22, align 8, !tbaa !59
  br label %28

27:                                               ; preds = %21
  tail call void @Perl_sv_free2(ptr noundef nonnull %4, i32 noundef %23) #9
  br label %28

28:                                               ; preds = %12, %25, %27
  ret void
}

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #1

declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #1

declare ptr @Perl_sv_bless(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @Perl_sv_unmagic(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @boot_arybase(ptr noundef %0) local_unnamed_addr #0 !prof !57 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  %3 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_arybase_FETCH) #9
  %4 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.3, ptr noundef nonnull @XS_arybase_STORE) #9
  %5 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_arybase__mg_FETCH) #9
  %6 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.5, ptr noundef nonnull @XS_arybase__mg_STORE) #9
  %7 = tail call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.6, i64 noundef 1, i32 noundef 130, i32 noundef 3) #9
  %8 = getelementptr inbounds %struct.gv, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = load ptr, ptr %9, align 8, !tbaa !68
  %11 = tail call i32 @Perl_sv_unmagic(ptr noundef %10, i32 noundef 0) #9
  %12 = load ptr, ptr %8, align 8, !tbaa !65
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  %14 = load ptr, ptr %0, align 8, !tbaa !70
  %15 = getelementptr inbounds %struct.xpvcv, ptr %14, i64 0, i32 12
  %16 = load i32, ptr %15, align 4, !tbaa !72
  %17 = and i32 %16, 32768
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19, !prof !58

19:                                               ; preds = %1
  %20 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %0) #9
  br label %24

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.xpvcv, ptr %14, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !65
  br label %24

24:                                               ; preds = %19, %21
  %25 = phi ptr [ %20, %19 ], [ %23, %21 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  %27 = getelementptr inbounds %struct.xpvgv, ptr %26, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  tail call void @tie(ptr noundef %13, ptr noundef null, ptr noundef %28)
  %29 = load i32, ptr @ab_initialized, align 4, !tbaa !77
  %30 = add i32 %29, 1
  store i32 %30, ptr @ab_initialized, align 4, !tbaa !77
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %32, label %37, !prof !58

32:                                               ; preds = %24
  %33 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #10
  %34 = getelementptr inbounds %struct.ptable, ptr %33, i64 0, i32 1
  store i64 63, ptr %34, align 8, !tbaa !78
  %35 = getelementptr inbounds %struct.ptable, ptr %33, i64 0, i32 2
  store i64 0, ptr %35, align 8, !tbaa !80
  %36 = tail call noalias dereferenceable_or_null(512) ptr @calloc(i64 noundef 64, i64 noundef 8) #11
  store ptr %36, ptr %33, align 8, !tbaa !81
  store ptr %33, ptr @ab_op_map, align 8, !tbaa !82
  tail call void @Perl_wrap_op_checker(i32 noundef 37, ptr noundef nonnull @ab_ck_sassign, ptr noundef nonnull @ab_old_ck_sassign) #9
  tail call void @Perl_wrap_op_checker(i32 noundef 38, ptr noundef nonnull @ab_ck_aassign, ptr noundef nonnull @ab_old_ck_aassign) #9
  tail call void @Perl_wrap_op_checker(i32 noundef 138, ptr noundef nonnull @ab_ck_base, ptr noundef nonnull @ab_old_ck_aelem) #9
  tail call void @Perl_wrap_op_checker(i32 noundef 139, ptr noundef nonnull @ab_ck_base, ptr noundef nonnull @ab_old_ck_aslice) #9
  tail call void @Perl_wrap_op_checker(i32 noundef 159, ptr noundef nonnull @ab_ck_base, ptr noundef nonnull @ab_old_ck_lslice) #9
  tail call void @Perl_wrap_op_checker(i32 noundef 16, ptr noundef nonnull @ab_ck_base, ptr noundef nonnull @ab_old_ck_av2arylen) #9
  tail call void @Perl_wrap_op_checker(i32 noundef 162, ptr noundef nonnull @ab_ck_base, ptr noundef nonnull @ab_old_ck_splice) #9
  tail call void @Perl_wrap_op_checker(i32 noundef 146, ptr noundef nonnull @ab_ck_base, ptr noundef nonnull @ab_old_ck_keys) #9
  tail call void @Perl_wrap_op_checker(i32 noundef 144, ptr noundef nonnull @ab_ck_base, ptr noundef nonnull @ab_old_ck_each) #9
  tail call void @Perl_wrap_op_checker(i32 noundef 121, ptr noundef nonnull @ab_ck_base, ptr noundef nonnull @ab_old_ck_substr) #9
  tail call void @Perl_wrap_op_checker(i32 noundef 124, ptr noundef nonnull @ab_ck_base, ptr noundef nonnull @ab_old_ck_rindex) #9
  tail call void @Perl_wrap_op_checker(i32 noundef 123, ptr noundef nonnull @ab_ck_base, ptr noundef nonnull @ab_old_ck_index) #9
  tail call void @Perl_wrap_op_checker(i32 noundef 46, ptr noundef nonnull @ab_ck_base, ptr noundef nonnull @ab_old_ck_pos) #9
  br label %37

37:                                               ; preds = %32, %24
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #9
  ret void
}

declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @Perl_newXS_deffile(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @XS_arybase_FETCH(ptr nocapture readnone %0) #2 !prof !83 !PGOFuncName !84 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !82
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !82
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !82
  %5 = load i32, ptr %3, align 4, !tbaa !77
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !82
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = shl i64 %11, 29
  %13 = ashr i64 %12, 32
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds ptr, ptr %2, i64 %14
  %16 = load ptr, ptr @PL_curcop, align 8, !tbaa !82
  %17 = getelementptr %struct.cop, ptr %16, i64 0, i32 10
  %18 = load i32, ptr %17, align 8, !tbaa !85
  %19 = and i32 %18, 469762048
  %20 = icmp ult i32 %19, 201326592
  br i1 %20, label %26, label %21, !prof !87

21:                                               ; preds = %1
  %22 = and i32 %18, 469893120
  %23 = icmp eq i32 %22, 469893120
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.7, i64 noundef 7) #9
  br i1 %25, label %26, label %31

26:                                               ; preds = %24, %1
  %27 = load ptr, ptr @PL_curcop, align 8, !tbaa !82
  %28 = getelementptr inbounds %struct.cop, ptr %27, i64 0, i32 13
  %29 = load ptr, ptr %28, align 8, !tbaa !88
  %30 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %29, ptr noundef nonnull @.str.8, i64 noundef 2, i32 noundef 0, i32 noundef 0) #9
  br label %31

31:                                               ; preds = %21, %24, %26
  %32 = phi ptr [ %30, %26 ], [ null, %24 ], [ null, %21 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %45, label %34, !prof !89

34:                                               ; preds = %31
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
  br i1 %44, label %57, label %45, !prof !89

45:                                               ; preds = %34, %31
  %46 = load ptr, ptr @PL_stack_max, align 8, !tbaa !82
  %47 = ptrtoint ptr %46 to i64
  %48 = ptrtoint ptr %15 to i64
  %49 = sub i64 %47, %48
  %50 = icmp slt i64 %49, 8
  br i1 %50, label %51, label %53, !prof !89

51:                                               ; preds = %45
  %52 = tail call ptr @Perl_stack_grow(ptr noundef %15, ptr noundef %15, i64 noundef 1) #9
  br label %53

53:                                               ; preds = %45, %51
  %54 = phi ptr [ %52, %51 ], [ %15, %45 ]
  %55 = tail call ptr @Perl_sv_newmortal() #9
  %56 = getelementptr inbounds ptr, ptr %54, i64 1
  store ptr %55, ptr %56, align 8, !tbaa !82
  tail call void @Perl_sv_setiv(ptr noundef %55, i64 noundef 0) #9
  br label %68

57:                                               ; preds = %34
  %58 = load ptr, ptr @PL_stack_max, align 8, !tbaa !82
  %59 = ptrtoint ptr %58 to i64
  %60 = ptrtoint ptr %15 to i64
  %61 = sub i64 %59, %60
  %62 = icmp slt i64 %61, 8
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = tail call ptr @Perl_stack_grow(ptr noundef %15, ptr noundef %15, i64 noundef 1) #9
  br label %65

65:                                               ; preds = %57, %63
  %66 = phi ptr [ %64, %63 ], [ %15, %57 ]
  %67 = getelementptr inbounds ptr, ptr %66, i64 1
  store ptr %32, ptr %67, align 8, !tbaa !82
  br label %68

68:                                               ; preds = %65, %53
  %69 = phi ptr [ %67, %65 ], [ %56, %53 ]
  store ptr %69, ptr @PL_stack_sp, align 8, !tbaa !82
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_arybase_STORE(ptr noundef %0) #0 !prof !90 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !82
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !82
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !82
  %5 = load i32, ptr %3, align 4, !tbaa !77
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !82
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 16
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.9) #9
  br label %15

15:                                               ; preds = %14, %1
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !82
  %17 = getelementptr ptr, ptr %16, i64 %7
  %18 = getelementptr ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !82
  %20 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !66
  %22 = and i32 %21, 2097408
  %23 = icmp eq i32 %22, 256
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load ptr, ptr %19, align 8, !tbaa !91
  %26 = getelementptr inbounds %struct.xpviv, ptr %25, i64 0, i32 4
  %27 = load i64, ptr %26, align 8, !tbaa !65
  br label %30

28:                                               ; preds = %15
  %29 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %19, i32 noundef 2) #9
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i64 [ %27, %24 ], [ %29, %28 ]
  %32 = load ptr, ptr @PL_curcop, align 8, !tbaa !82
  %33 = getelementptr %struct.cop, ptr %32, i64 0, i32 10
  %34 = load i32, ptr %33, align 8, !tbaa !85
  %35 = and i32 %34, 469762048
  %36 = icmp ult i32 %35, 201326592
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = and i32 %34, 469893120
  %39 = icmp eq i32 %38, 469893120
  br i1 %39, label %40, label %71

40:                                               ; preds = %37
  %41 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.7, i64 noundef 7) #9
  br i1 %41, label %42, label %71

42:                                               ; preds = %40, %30
  %43 = load ptr, ptr @PL_curcop, align 8, !tbaa !82
  %44 = getelementptr inbounds %struct.cop, ptr %43, i64 0, i32 13
  %45 = load ptr, ptr %44, align 8, !tbaa !88
  %46 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %45, ptr noundef nonnull @.str.8, i64 noundef 2, i32 noundef 0, i32 noundef 0) #9
  %47 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !66
  %49 = and i32 %48, 65280
  %50 = icmp ne i32 %49, 0
  %51 = and i32 %48, 255
  %52 = icmp eq i32 %51, 8
  %53 = or i1 %50, %52
  %54 = and i32 %48, 16777471
  %55 = icmp eq i32 %54, 16777226
  %56 = or i1 %55, %53
  br i1 %56, label %57, label %69

57:                                               ; preds = %42
  %58 = and i32 %48, 2097408
  %59 = icmp eq i32 %58, 256
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load ptr, ptr %46, align 8, !tbaa !91
  %62 = getelementptr inbounds %struct.xpviv, ptr %61, i64 0, i32 4
  %63 = load i64, ptr %62, align 8, !tbaa !65
  br label %66

64:                                               ; preds = %57
  %65 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %46, i32 noundef 2) #9
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi i64 [ %63, %60 ], [ %65, %64 ]
  %68 = icmp eq i64 %67, %31
  br i1 %68, label %75, label %73

69:                                               ; preds = %42
  %70 = icmp eq i64 %31, 0
  br i1 %70, label %75, label %73

71:                                               ; preds = %40, %37
  %72 = icmp eq i64 %31, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %71, %66, %69
  %74 = phi ptr [ @.str.10, %69 ], [ @.str.10, %66 ], [ @.str.11, %71 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull %74) #9
  br label %75

75:                                               ; preds = %73, %71, %66, %69
  %76 = load ptr, ptr @PL_stack_base, align 8, !tbaa !82
  %77 = getelementptr ptr, ptr %76, i64 %7
  store ptr %77, ptr @PL_stack_sp, align 8, !tbaa !82
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_arybase__mg_FETCH(ptr noundef %0) #0 !prof !90 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !82
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !82
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !82
  %5 = load i32, ptr %3, align 4, !tbaa !77
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !82
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 8
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.12) #9
  br label %16

16:                                               ; preds = %15, %1
  %17 = shl i64 %12, 29
  %18 = ashr i64 %17, 32
  %19 = sub nsw i64 0, %18
  %20 = getelementptr inbounds ptr, ptr %2, i64 %19
  %21 = load ptr, ptr @PL_stack_base, align 8, !tbaa !82
  %22 = sext i32 %7 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !82
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !66
  %27 = and i32 %26, 2048
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !65
  %32 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !66
  %34 = and i32 %33, 255
  %35 = icmp ugt i32 %34, 10
  br i1 %35, label %36, label %37

36:                                               ; preds = %29, %16
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.13) #9
  br label %37

37:                                               ; preds = %36, %29
  %38 = load ptr, ptr @PL_curcop, align 8, !tbaa !82
  %39 = getelementptr %struct.cop, ptr %38, i64 0, i32 10
  %40 = load i32, ptr %39, align 8, !tbaa !85
  %41 = and i32 %40, 469762048
  %42 = icmp ult i32 %41, 201326592
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = and i32 %40, 469893120
  %45 = icmp eq i32 %44, 469893120
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.7, i64 noundef 7) #9
  br i1 %47, label %48, label %53

48:                                               ; preds = %46, %37
  %49 = load ptr, ptr @PL_curcop, align 8, !tbaa !82
  %50 = getelementptr inbounds %struct.cop, ptr %49, i64 0, i32 13
  %51 = load ptr, ptr %50, align 8, !tbaa !88
  %52 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %51, ptr noundef nonnull @.str.8, i64 noundef 2, i32 noundef 0, i32 noundef 0) #9
  br label %53

53:                                               ; preds = %43, %46, %48
  %54 = phi ptr [ %52, %48 ], [ null, %46 ], [ null, %43 ]
  %55 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !65
  %57 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !66
  %59 = and i32 %58, 2097152
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %53
  %62 = tail call i32 @Perl_mg_get(ptr noundef %56) #9
  br label %63

63:                                               ; preds = %53, %61
  %64 = load ptr, ptr %55, align 8, !tbaa !65
  %65 = getelementptr inbounds %struct.sv, ptr %64, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !66
  %67 = and i32 %66, 65280
  %68 = icmp ne i32 %67, 0
  %69 = and i32 %66, 255
  %70 = icmp eq i32 %69, 8
  %71 = or i1 %68, %70
  %72 = and i32 %66, 16777471
  %73 = icmp eq i32 %72, 16777226
  %74 = or i1 %73, %71
  br i1 %74, label %80, label %75

75:                                               ; preds = %63
  %76 = load ptr, ptr @PL_stack_base, align 8, !tbaa !82
  %77 = getelementptr inbounds ptr, ptr %76, i64 %22
  store ptr @PL_sv_undef, ptr %77, align 8, !tbaa !82
  %78 = load ptr, ptr @PL_stack_base, align 8, !tbaa !82
  %79 = getelementptr inbounds ptr, ptr %78, i64 %22
  store ptr %79, ptr @PL_stack_sp, align 8, !tbaa !82
  br label %129

80:                                               ; preds = %63
  %81 = load ptr, ptr @PL_stack_max, align 8, !tbaa !82
  %82 = ptrtoint ptr %81 to i64
  %83 = ptrtoint ptr %20 to i64
  %84 = sub i64 %82, %83
  %85 = icmp slt i64 %84, 8
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = tail call ptr @Perl_stack_grow(ptr noundef %20, ptr noundef %20, i64 noundef 1) #9
  br label %88

88:                                               ; preds = %80, %86
  %89 = phi ptr [ %87, %86 ], [ %20, %80 ]
  %90 = tail call ptr @Perl_sv_newmortal() #9
  %91 = getelementptr inbounds ptr, ptr %89, i64 1
  store ptr %90, ptr %91, align 8, !tbaa !82
  %92 = load ptr, ptr %55, align 8, !tbaa !65
  %93 = getelementptr inbounds %struct.sv, ptr %92, i64 0, i32 2
  %94 = load i32, ptr %93, align 4, !tbaa !66
  %95 = and i32 %94, 256
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %88
  %98 = load ptr, ptr %92, align 8, !tbaa !91
  %99 = getelementptr inbounds %struct.xpviv, ptr %98, i64 0, i32 4
  %100 = load i64, ptr %99, align 8, !tbaa !65
  br label %103

101:                                              ; preds = %88
  %102 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %92, i32 noundef 0) #9
  br label %103

103:                                              ; preds = %101, %97
  %104 = phi i64 [ %100, %97 ], [ %102, %101 ]
  %105 = icmp eq ptr %54, null
  br i1 %105, label %126, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 2
  %108 = load i32, ptr %107, align 4, !tbaa !66
  %109 = and i32 %108, 65280
  %110 = icmp ne i32 %109, 0
  %111 = and i32 %108, 255
  %112 = icmp eq i32 %111, 8
  %113 = or i1 %110, %112
  %114 = and i32 %108, 16777471
  %115 = icmp eq i32 %114, 16777226
  %116 = or i1 %115, %113
  br i1 %116, label %117, label %126

117:                                              ; preds = %106
  %118 = and i32 %108, 2097408
  %119 = icmp eq i32 %118, 256
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load ptr, ptr %54, align 8, !tbaa !91
  %122 = getelementptr inbounds %struct.xpviv, ptr %121, i64 0, i32 4
  %123 = load i64, ptr %122, align 8, !tbaa !65
  br label %126

124:                                              ; preds = %117
  %125 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %54, i32 noundef 2) #9
  br label %126

126:                                              ; preds = %106, %103, %120, %124
  %127 = phi i64 [ %123, %120 ], [ %125, %124 ], [ 0, %103 ], [ 0, %106 ]
  %128 = add nsw i64 %127, %104
  tail call void @Perl_sv_setiv(ptr noundef %90, i64 noundef %128) #9
  br label %129

129:                                              ; preds = %126, %75
  %130 = phi ptr [ %91, %126 ], [ %20, %75 ]
  br i1 %74, label %131, label %132

131:                                              ; preds = %129
  store ptr %130, ptr @PL_stack_sp, align 8, !tbaa !82
  br label %132

132:                                              ; preds = %129, %131
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_arybase__mg_STORE(ptr noundef %0) #0 !prof !90 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !82
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !82
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !82
  %5 = load i32, ptr %3, align 4, !tbaa !77
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !82
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 16
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.9) #9
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !82
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !82
  %21 = getelementptr ptr, ptr %17, i64 %8
  %22 = getelementptr ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !82
  %24 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !66
  %26 = and i32 %25, 2048
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !65
  %31 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !66
  %33 = and i32 %32, 255
  %34 = icmp ugt i32 %33, 10
  br i1 %34, label %35, label %36

35:                                               ; preds = %28, %16
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.13) #9
  br label %36

36:                                               ; preds = %35, %28
  %37 = load ptr, ptr @PL_curcop, align 8, !tbaa !82
  %38 = getelementptr %struct.cop, ptr %37, i64 0, i32 10
  %39 = load i32, ptr %38, align 8, !tbaa !85
  %40 = and i32 %39, 469762048
  %41 = icmp ult i32 %40, 201326592
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = and i32 %39, 469893120
  %44 = icmp eq i32 %43, 469893120
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.7, i64 noundef 7) #9
  br i1 %46, label %47, label %52

47:                                               ; preds = %45, %36
  %48 = load ptr, ptr @PL_curcop, align 8, !tbaa !82
  %49 = getelementptr inbounds %struct.cop, ptr %48, i64 0, i32 13
  %50 = load ptr, ptr %49, align 8, !tbaa !88
  %51 = tail call ptr @Perl_refcounted_he_fetch_pvn(ptr noundef %50, ptr noundef nonnull @.str.8, i64 noundef 2, i32 noundef 0, i32 noundef 0) #9
  br label %52

52:                                               ; preds = %42, %45, %47
  %53 = phi ptr [ %51, %47 ], [ null, %45 ], [ null, %42 ]
  %54 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !66
  %56 = and i32 %55, 2097152
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = tail call i32 @Perl_mg_get(ptr noundef %23) #9
  br label %60

60:                                               ; preds = %52, %58
  %61 = load i32, ptr %54, align 4, !tbaa !66
  %62 = and i32 %61, 65280
  %63 = icmp ne i32 %62, 0
  %64 = and i32 %61, 255
  %65 = icmp eq i32 %64, 8
  %66 = or i1 %63, %65
  %67 = and i32 %61, 16777471
  %68 = icmp eq i32 %67, 16777226
  %69 = or i1 %68, %66
  %70 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !65
  br i1 %69, label %82, label %72

72:                                               ; preds = %60
  %73 = icmp eq ptr %71, @PL_sv_undef
  br i1 %73, label %121, label %74

74:                                               ; preds = %72
  tail call void @Perl_sv_setsv_flags(ptr noundef %71, ptr noundef nonnull @PL_sv_undef, i32 noundef 2) #9
  %75 = load ptr, ptr %70, align 8, !tbaa !65
  %76 = getelementptr inbounds %struct.sv, ptr %75, i64 0, i32 2
  %77 = load i32, ptr %76, align 4, !tbaa !66
  %78 = and i32 %77, 4194304
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %121, label %80

80:                                               ; preds = %74
  %81 = tail call i32 @Perl_mg_set(ptr noundef %75) #9
  br label %121

82:                                               ; preds = %60
  %83 = and i32 %61, 256
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr %23, align 8, !tbaa !91
  %87 = getelementptr inbounds %struct.xpviv, ptr %86, i64 0, i32 4
  %88 = load i64, ptr %87, align 8, !tbaa !65
  br label %91

89:                                               ; preds = %82
  %90 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %23, i32 noundef 0) #9
  br label %91

91:                                               ; preds = %89, %85
  %92 = phi i64 [ %88, %85 ], [ %90, %89 ]
  %93 = icmp eq ptr %53, null
  br i1 %93, label %114, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 2
  %96 = load i32, ptr %95, align 4, !tbaa !66
  %97 = and i32 %96, 65280
  %98 = icmp ne i32 %97, 0
  %99 = and i32 %96, 255
  %100 = icmp eq i32 %99, 8
  %101 = or i1 %98, %100
  %102 = and i32 %96, 16777471
  %103 = icmp eq i32 %102, 16777226
  %104 = or i1 %103, %101
  br i1 %104, label %105, label %114

105:                                              ; preds = %94
  %106 = and i32 %96, 2097408
  %107 = icmp eq i32 %106, 256
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load ptr, ptr %53, align 8, !tbaa !91
  %110 = getelementptr inbounds %struct.xpviv, ptr %109, i64 0, i32 4
  %111 = load i64, ptr %110, align 8, !tbaa !65
  br label %114

112:                                              ; preds = %105
  %113 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %53, i32 noundef 2) #9
  br label %114

114:                                              ; preds = %94, %91, %108, %112
  %115 = phi i64 [ %111, %108 ], [ %113, %112 ], [ 0, %91 ], [ 0, %94 ]
  %116 = icmp sge i64 %92, %115
  %117 = icmp sgt i64 %92, -1
  %118 = or i1 %117, %116
  %119 = select i1 %118, i64 %115, i64 0
  %120 = sub nsw i64 %92, %119
  tail call void @Perl_sv_setiv_mg(ptr noundef %71, i64 noundef %120) #9
  br label %121

121:                                              ; preds = %72, %74, %80, %114
  %122 = load ptr, ptr @PL_stack_base, align 8, !tbaa !82
  %123 = getelementptr inbounds ptr, ptr %122, i64 %18
  %124 = getelementptr inbounds ptr, ptr %123, i64 -1
  store ptr %124, ptr @PL_stack_sp, align 8, !tbaa !82
  ret void
}

declare ptr @Perl_gv_fetchpvn_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_wrap_op_checker(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @ab_ck_sassign(ptr noundef %0) #2 !prof !92 !PGOFuncName !93 {
  %2 = load ptr, ptr @ab_old_ck_sassign, align 8, !tbaa !82
  %3 = tail call ptr %2(ptr noundef %0) #9, !prof !94
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 511
  %7 = icmp eq i16 %6, 37
  br i1 %7, label %8, label %26, !prof !95

8:                                                ; preds = %1
  %9 = load ptr, ptr @PL_curcop, align 8, !tbaa !82
  %10 = getelementptr %struct.cop, ptr %9, i64 0, i32 10
  %11 = load i32, ptr %10, align 8, !tbaa !85
  %12 = and i32 %11, 469762048
  %13 = icmp ult i32 %12, 201326592
  br i1 %13, label %19, label %14, !prof !96

14:                                               ; preds = %8
  %15 = and i32 %11, 469893120
  %16 = icmp eq i32 %15, 469893120
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.7, i64 noundef 7) #9
  br i1 %18, label %19, label %26

19:                                               ; preds = %17, %8
  %20 = getelementptr inbounds %struct.binop, ptr %3, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !97
  %22 = getelementptr inbounds %struct.op, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !99
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25, !prof !101

25:                                               ; preds = %19
  tail call fastcc void @ab_process_assignment(ptr noundef nonnull %23, ptr noundef %21)
  br label %26

26:                                               ; preds = %17, %19, %25, %14, %1
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal ptr @ab_ck_aassign(ptr noundef %0) #2 !prof !102 !PGOFuncName !103 {
  %2 = load ptr, ptr @ab_old_ck_aassign, align 8, !tbaa !82
  %3 = tail call ptr %2(ptr noundef %0) #9, !prof !104
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 4
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 511
  %7 = icmp eq i16 %6, 38
  br i1 %7, label %8, label %32, !prof !105

8:                                                ; preds = %1
  %9 = load ptr, ptr @PL_curcop, align 8, !tbaa !82
  %10 = getelementptr %struct.cop, ptr %9, i64 0, i32 10
  %11 = load i32, ptr %10, align 8, !tbaa !85
  %12 = and i32 %11, 469762048
  %13 = icmp ult i32 %12, 201326592
  br i1 %13, label %19, label %14, !prof !105

14:                                               ; preds = %8
  %15 = and i32 %11, 469893120
  %16 = icmp eq i32 %15, 469893120
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.7, i64 noundef 7) #9
  br i1 %18, label %19, label %32

19:                                               ; preds = %17, %8
  %20 = getelementptr inbounds %struct.binop, ptr %3, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !97
  %22 = getelementptr inbounds %struct.op, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !99
  %24 = getelementptr inbounds %struct.binop, ptr %23, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !97
  %26 = getelementptr inbounds %struct.op, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !99
  %28 = getelementptr inbounds %struct.binop, ptr %21, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !97
  %30 = getelementptr inbounds %struct.op, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !99
  tail call fastcc void @ab_process_assignment(ptr noundef %27, ptr noundef %31)
  br label %32

32:                                               ; preds = %19, %17, %14, %1
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define internal ptr @ab_ck_base(ptr noundef %0) #2 !prof !106 !PGOFuncName !107 {
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
  %16 = load ptr, ptr @PL_op, align 8, !tbaa !82
  %17 = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 4
  %18 = load i16, ptr %17, align 8
  %19 = and i16 %18, 511
  %20 = zext nneg i16 %19 to i32
  %21 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.16, i32 noundef %20) #9
  br label %161

22:                                               ; preds = %1, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %23 = phi ptr [ @ab_old_ck_pos, %14 ], [ @ab_old_ck_index, %13 ], [ @ab_old_ck_rindex, %12 ], [ @ab_old_ck_substr, %11 ], [ @ab_old_ck_each, %10 ], [ @ab_old_ck_keys, %9 ], [ @ab_old_ck_splice, %8 ], [ @ab_old_ck_av2arylen, %7 ], [ @ab_old_ck_lslice, %6 ], [ @ab_old_ck_aslice, %5 ], [ @ab_old_ck_aelem, %1 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !82
  %25 = tail call ptr %24(ptr noundef %0) #9, !prof !109
  %26 = load ptr, ptr @PL_curcop, align 8, !tbaa !82
  %27 = getelementptr %struct.cop, ptr %26, i64 0, i32 10
  %28 = load i32, ptr %27, align 8, !tbaa !85
  %29 = and i32 %28, 469762048
  %30 = icmp ult i32 %29, 201326592
  br i1 %30, label %36, label %31, !prof !110

31:                                               ; preds = %22
  %32 = and i32 %28, 469893120
  %33 = icmp eq i32 %32, 469893120
  br i1 %33, label %34, label %161

34:                                               ; preds = %31
  %35 = tail call zeroext i1 @Perl_feature_is_enabled(ptr noundef nonnull @.str.7, i64 noundef 7) #9
  br i1 %35, label %36, label %161

36:                                               ; preds = %34, %22
  %37 = getelementptr inbounds %struct.op, ptr %25, i64 0, i32 4
  %38 = load i16, ptr %37, align 8
  %39 = and i16 %38, 511
  switch i16 %39, label %161 [
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
  ], !prof !111

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
  %46 = load ptr, ptr @PL_hintgv, align 8, !tbaa !82
  %47 = getelementptr inbounds %struct.gv, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !65
  %49 = getelementptr inbounds %struct.gp, ptr %48, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !112
  %51 = tail call ptr @Perl_hv_common_key_len(ptr noundef %50, ptr noundef nonnull @.str.8, i32 noundef 2, i32 noundef 32, ptr noundef null, i32 noundef 0) #9
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53, !prof !113

53:                                               ; preds = %44
  %54 = load ptr, ptr %51, align 8, !tbaa !82
  br label %55

55:                                               ; preds = %53, %44
  %56 = phi ptr [ %54, %53 ], [ null, %44 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %78, label %58, !prof !113

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.sv, ptr %56, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !66
  %61 = and i32 %60, 65280
  %62 = icmp ne i32 %61, 0
  %63 = and i32 %60, 255
  %64 = icmp eq i32 %63, 8
  %65 = or i1 %62, %64
  %66 = and i32 %60, 16777471
  %67 = icmp eq i32 %66, 16777226
  %68 = or i1 %67, %65
  br i1 %68, label %69, label %78

69:                                               ; preds = %58
  %70 = and i32 %60, 2097408
  %71 = icmp eq i32 %70, 256
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load ptr, ptr %56, align 8, !tbaa !91
  %74 = getelementptr inbounds %struct.xpviv, ptr %73, i64 0, i32 4
  %75 = load i64, ptr %74, align 8, !tbaa !65
  br label %78

76:                                               ; preds = %69
  %77 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %56, i32 noundef 2) #9
  br label %78

78:                                               ; preds = %55, %58, %72, %76
  %79 = phi i64 [ 0, %58 ], [ 0, %55 ], [ %75, %72 ], [ %77, %76 ]
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %134, label %81, !prof !113

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.op, ptr %25, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !114
  %84 = load ptr, ptr @ab_op_map, align 8, !tbaa !82
  %85 = ptrtoint ptr %25 to i64
  %86 = lshr i64 %85, 3
  %87 = lshr i64 %85, 10
  %88 = xor i64 %86, %87
  %89 = lshr i64 %85, 20
  %90 = xor i64 %88, %89
  %91 = load ptr, ptr %84, align 8, !tbaa !81
  %92 = getelementptr inbounds %struct.ptable, ptr %84, i64 0, i32 1
  %93 = load i64, ptr %92, align 8, !tbaa !78
  %94 = and i64 %93, %90
  %95 = getelementptr inbounds ptr, ptr %91, i64 %94
  br label %96

96:                                               ; preds = %100, %81
  %97 = phi ptr [ %95, %81 ], [ %98, %100 ]
  %98 = load ptr, ptr %97, align 8, !tbaa !82
  %99 = icmp eq ptr %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.ptable_ent, ptr %98, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !115
  %103 = icmp eq ptr %102, %25
  br i1 %103, label %104, label %96, !llvm.loop !117

104:                                              ; preds = %100, %96
  %105 = phi ptr [ null, %96 ], [ %98, %100 ]
  %106 = icmp eq ptr %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.ptable_ent, ptr %105, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !120
  br label %110

110:                                              ; preds = %107, %104
  %111 = phi ptr [ %109, %107 ], [ null, %104 ]
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #10
  tail call fastcc void @ptable_map_store(ptr noundef nonnull %84, ptr noundef %25, ptr noundef %114)
  br label %115

115:                                              ; preds = %110, %113
  %116 = phi ptr [ %111, %110 ], [ %114, %113 ]
  store ptr %83, ptr %116, align 8, !tbaa !121
  %117 = getelementptr inbounds %struct.ab_op_info, ptr %116, i64 0, i32 1
  store i64 %79, ptr %117, align 8, !tbaa !123
  store ptr %45, ptr %82, align 8, !tbaa !114
  %118 = load i16, ptr %37, align 8
  %119 = and i16 %118, 511
  %120 = icmp eq i16 %119, 138
  br i1 %120, label %121, label %161

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.binop, ptr %25, i64 0, i32 7
  %123 = load ptr, ptr %122, align 8, !tbaa !97
  %124 = getelementptr inbounds %struct.op, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !99
  %126 = getelementptr inbounds %struct.op, ptr %125, i64 0, i32 4
  %127 = load i16, ptr %126, align 8
  %128 = and i16 %127, 511
  %129 = icmp eq i16 %128, 5
  br i1 %129, label %130, label %161

130:                                              ; preds = %121
  %131 = tail call ptr @Perl_op_sibling_splice(ptr noundef %25, ptr noundef %123, i32 noundef 1, ptr noundef null) #9
  %132 = tail call ptr @Perl_newUNOP(i32 noundef 0, i32 noundef 0, ptr noundef %125) #9
  %133 = tail call ptr @Perl_op_sibling_splice(ptr noundef %25, ptr noundef %123, i32 noundef 0, ptr noundef %132) #9
  br label %161

134:                                              ; preds = %78
  %135 = load ptr, ptr @ab_op_map, align 8, !tbaa !82
  %136 = ptrtoint ptr %25 to i64
  %137 = lshr i64 %136, 3
  %138 = lshr i64 %136, 10
  %139 = xor i64 %137, %138
  %140 = lshr i64 %136, 20
  %141 = xor i64 %139, %140
  %142 = load ptr, ptr %135, align 8, !tbaa !81
  %143 = getelementptr inbounds %struct.ptable, ptr %135, i64 0, i32 1
  %144 = load i64, ptr %143, align 8, !tbaa !78
  %145 = and i64 %144, %141
  %146 = getelementptr inbounds ptr, ptr %142, i64 %145
  br label %147

147:                                              ; preds = %151, %134
  %148 = phi ptr [ %146, %134 ], [ %149, %151 ]
  %149 = load ptr, ptr %148, align 8, !tbaa !82
  %150 = icmp eq ptr %149, null
  br i1 %150, label %155, label %151, !prof !113

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.ptable_ent, ptr %149, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !115
  %154 = icmp eq ptr %153, %25
  br i1 %154, label %155, label %147, !llvm.loop !117

155:                                              ; preds = %151, %147
  %156 = phi ptr [ null, %147 ], [ %149, %151 ]
  %157 = icmp eq ptr %156, null
  br i1 %157, label %161, label %158, !prof !113

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.ptable_ent, ptr %156, i64 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !120
  tail call void @free(ptr noundef %160) #9
  store ptr null, ptr %159, align 8, !tbaa !120
  br label %161

161:                                              ; preds = %158, %155, %36, %115, %130, %121, %31, %34, %15
  %162 = phi ptr [ %21, %15 ], [ %25, %34 ], [ %25, %31 ], [ %25, %121 ], [ %25, %130 ], [ %25, %115 ], [ %25, %36 ], [ %25, %155 ], [ %25, %158 ]
  ret ptr %162
}

declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #1

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i1 @Perl_feature_is_enabled(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @Perl_refcounted_he_fetch_pvn(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @Perl_sv_newmortal() local_unnamed_addr #1

declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #1

declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #1

declare void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #1

declare void @Perl_sv_setiv_mg(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @ab_process_assignment(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !prof !124 !PGOFuncName !125 {
  %3 = getelementptr inbounds %struct.op, ptr %0, i64 0, i32 4
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 511
  %6 = icmp eq i16 %5, 15
  br i1 %6, label %7, label %70, !prof !126

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.op, ptr %0, i64 0, i32 5
  %9 = load i8, ptr %8, align 2, !tbaa !127
  %10 = and i8 %9, 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %70, label %12, !prof !128

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.unop, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !129
  %15 = icmp eq ptr %14, null
  br i1 %15, label %70, label %16, !prof !128

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.op, ptr %14, i64 0, i32 4
  %18 = load i16, ptr %17, align 8
  %19 = and i16 %18, 511
  %20 = icmp eq i16 %19, 7
  br i1 %20, label %21, label %70, !prof !131

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.svop, ptr %14, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !132
  %24 = load ptr, ptr %23, align 8, !tbaa !75
  %25 = getelementptr inbounds %struct.xpvgv, ptr %24, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !65
  %27 = load ptr, ptr @PL_defstash, align 8, !tbaa !82
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %70, !prof !134

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.xpvgv, ptr %24, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !65
  %32 = getelementptr inbounds %struct.hek, ptr %31, i64 0, i32 2
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(2) @.str.6) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %70, !prof !135

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 4
  %37 = load i16, ptr %36, align 8
  %38 = and i16 %37, 511
  %39 = icmp eq i16 %38, 5
  br i1 %39, label %40, label %70

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.svop, ptr %1, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !132
  %43 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !66
  %45 = and i32 %44, 2097408
  %46 = icmp eq i32 %45, 256
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load ptr, ptr %42, align 8, !tbaa !91
  %49 = getelementptr inbounds %struct.xpviv, ptr %48, i64 0, i32 4
  %50 = load i64, ptr %49, align 8, !tbaa !65
  br label %53

51:                                               ; preds = %40
  %52 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %42, i32 noundef 2) #9
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi i64 [ %50, %47 ], [ %52, %51 ]
  %55 = load ptr, ptr @PL_hintgv, align 8, !tbaa !82
  %56 = getelementptr inbounds %struct.gv, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !65
  %58 = getelementptr inbounds %struct.gp, ptr %57, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !112
  %60 = tail call ptr @Perl_hv_common_key_len(ptr noundef %59, ptr noundef nonnull @.str.8, i32 noundef 2, i32 noundef 48, ptr noundef null, i32 noundef 0) #9
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %53
  %63 = load ptr, ptr %60, align 8, !tbaa !82
  br label %64

64:                                               ; preds = %53, %62
  %65 = phi ptr [ %63, %62 ], [ null, %53 ]
  tail call void @Perl_sv_setiv_mg(ptr noundef %65, i64 noundef %54) #9
  %66 = load ptr, ptr %13, align 8, !tbaa !129
  %67 = tail call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.15, i64 noundef 18, i32 noundef 2, i32 noundef 9) #9
  %68 = tail call ptr @Perl_newGVOP(i32 noundef 7, i32 noundef 0, ptr noundef %67) #9
  %69 = tail call ptr @Perl_op_sibling_splice(ptr noundef %0, ptr noundef null, i32 noundef 1, ptr noundef %68) #9
  tail call void @Perl_op_free(ptr noundef %66) #9
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 2, ptr noundef nonnull @.str.14) #9
  br label %70

70:                                               ; preds = %21, %16, %12, %7, %2, %64, %35, %29
  ret void
}

declare void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Perl_newGVOP(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Perl_op_sibling_splice(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @Perl_op_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal ptr @ab_pp_basearg() #0 !prof !90 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !82
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !82
  %3 = load ptr, ptr @ab_op_map, align 8, !tbaa !82
  %4 = ptrtoint ptr %2 to i64
  %5 = lshr i64 %4, 3
  %6 = lshr i64 %4, 10
  %7 = xor i64 %5, %6
  %8 = lshr i64 %4, 20
  %9 = xor i64 %7, %8
  %10 = load ptr, ptr %3, align 8, !tbaa !81
  %11 = getelementptr inbounds %struct.ptable, ptr %3, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !78
  %13 = and i64 %9, %12
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  br label %15

15:                                               ; preds = %19, %0
  %16 = phi ptr [ %14, %0 ], [ %17, %19 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !82
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ptable_ent, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !115
  %22 = icmp eq ptr %21, %2
  br i1 %22, label %23, label %15, !llvm.loop !117

23:                                               ; preds = %19, %15
  %24 = phi ptr [ null, %15 ], [ %17, %19 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ptable_ent, ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !120
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi ptr [ %28, %26 ], [ null, %23 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %30, align 8, !tbaa.struct !136
  %34 = getelementptr inbounds i8, ptr %30, i64 8
  %35 = load i64, ptr %34, align 8, !tbaa.struct !138
  br label %36

36:                                               ; preds = %29, %32
  %37 = phi ptr [ null, %29 ], [ %33, %32 ]
  %38 = phi i64 [ 0, %29 ], [ %35, %32 ]
  %39 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 4
  %40 = load i16, ptr %39, align 8
  %41 = and i16 %40, 511
  switch i16 %41, label %99 [
    i16 138, label %102
    i16 139, label %42
    i16 159, label %53
    i16 162, label %77
    i16 121, label %91
  ]

42:                                               ; preds = %36
  %43 = load ptr, ptr @PL_stack_base, align 8, !tbaa !82
  %44 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !82
  %45 = load i32, ptr %44, align 4, !tbaa !77
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds ptr, ptr %43, i64 %46
  %48 = getelementptr inbounds ptr, ptr %47, i64 1
  %49 = ptrtoint ptr %1 to i64
  %50 = ptrtoint ptr %48 to i64
  %51 = sub i64 %49, %50
  %52 = ashr exact i64 %51, 3
  br label %102

53:                                               ; preds = %36
  %54 = load ptr, ptr @PL_stack_base, align 8, !tbaa !82
  %55 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !82
  %56 = getelementptr inbounds i32, ptr %55, i64 -1
  %57 = load i32, ptr %56, align 4, !tbaa !77
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds ptr, ptr %54, i64 %58
  %60 = load i32, ptr %55, align 4, !tbaa !77
  %61 = sub nsw i32 %60, %57
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5
  %64 = load i8, ptr %63, align 2, !tbaa !127
  %65 = and i8 %64, 3
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %53
  %68 = zext nneg i8 %65 to i32
  br label %71

69:                                               ; preds = %53
  %70 = tail call i32 @Perl_block_gimme() #9
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = icmp eq i32 %72, 3
  %74 = select i1 %73, i64 1, i64 %62
  %75 = getelementptr inbounds ptr, ptr %59, i64 %74
  %76 = select i1 %73, i64 %62, i64 1
  br label %102

77:                                               ; preds = %36
  %78 = load ptr, ptr @PL_stack_base, align 8, !tbaa !82
  %79 = ptrtoint ptr %1 to i64
  %80 = ptrtoint ptr %78 to i64
  %81 = sub i64 %79, %80
  %82 = ashr exact i64 %81, 3
  %83 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !82
  %84 = load i32, ptr %83, align 4, !tbaa !77
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %82, %85
  %87 = icmp sgt i64 %86, 1
  br i1 %87, label %88, label %102

88:                                               ; preds = %77
  %89 = getelementptr inbounds ptr, ptr %78, i64 %85
  %90 = getelementptr inbounds ptr, ptr %89, i64 2
  br label %102

91:                                               ; preds = %36
  %92 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 6
  %93 = load i8, ptr %92, align 1, !tbaa !139
  %94 = and i8 %93, 7
  %95 = zext nneg i8 %94 to i64
  %96 = sub nsw i64 0, %95
  %97 = getelementptr inbounds ptr, ptr %1, i64 %96
  %98 = getelementptr inbounds ptr, ptr %97, i64 2
  br label %102

99:                                               ; preds = %36
  %100 = zext nneg i16 %41 to i32
  %101 = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @.str.17, i32 noundef %100) #9
  br label %134

102:                                              ; preds = %71, %77, %36, %88, %91, %42
  %103 = phi ptr [ %98, %91 ], [ %90, %88 ], [ %48, %42 ], [ %1, %36 ], [ %75, %71 ], [ null, %77 ]
  %104 = phi i64 [ 1, %91 ], [ 1, %88 ], [ %52, %42 ], [ 1, %36 ], [ %76, %71 ], [ 0, %77 ]
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %132, label %106

106:                                              ; preds = %102, %121
  %107 = phi i64 [ %109, %121 ], [ %104, %102 ]
  %108 = phi ptr [ %130, %121 ], [ %103, %102 ]
  %109 = add i64 %107, -1
  %110 = load ptr, ptr %108, align 8, !tbaa !82
  %111 = getelementptr inbounds %struct.sv, ptr %110, i64 0, i32 2
  %112 = load i32, ptr %111, align 4, !tbaa !66
  %113 = and i32 %112, 2097408
  %114 = icmp eq i32 %113, 256
  br i1 %114, label %115, label %119

115:                                              ; preds = %106
  %116 = load ptr, ptr %110, align 8, !tbaa !91
  %117 = getelementptr inbounds %struct.xpviv, ptr %116, i64 0, i32 4
  %118 = load i64, ptr %117, align 8, !tbaa !65
  br label %121

119:                                              ; preds = %106
  %120 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %110, i32 noundef 2) #9
  br label %121

121:                                              ; preds = %119, %115
  %122 = phi i64 [ %118, %115 ], [ %120, %119 ]
  %123 = icmp sge i64 %122, %38
  %124 = icmp sgt i64 %122, -1
  %125 = or i1 %123, %124
  %126 = select i1 %125, i64 %38, i64 0
  %127 = sub nsw i64 %122, %126
  %128 = tail call ptr @Perl_newSViv(i64 noundef %127) #9
  %129 = tail call ptr @Perl_sv_2mortal(ptr noundef %128) #9
  store ptr %129, ptr %108, align 8, !tbaa !82
  %130 = getelementptr inbounds ptr, ptr %108, i64 1
  %131 = icmp eq i64 %109, 0
  br i1 %131, label %132, label %106, !llvm.loop !140

132:                                              ; preds = %121, %102
  %133 = tail call ptr %37() #9
  br label %134

134:                                              ; preds = %132, %99
  %135 = phi ptr [ %101, %99 ], [ %133, %132 ]
  ret ptr %135
}

declare ptr @Perl_die(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal ptr @ab_pp_av2arylen() #0 !prof !90 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !82
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !82
  %3 = load ptr, ptr @ab_op_map, align 8, !tbaa !82
  %4 = ptrtoint ptr %2 to i64
  %5 = lshr i64 %4, 3
  %6 = lshr i64 %4, 10
  %7 = xor i64 %5, %6
  %8 = lshr i64 %4, 20
  %9 = xor i64 %7, %8
  %10 = load ptr, ptr %3, align 8, !tbaa !81
  %11 = getelementptr inbounds %struct.ptable, ptr %3, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !78
  %13 = and i64 %9, %12
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  br label %15

15:                                               ; preds = %15, %0
  %16 = phi ptr [ %14, %0 ], [ %17, %15 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !82, !nonnull !141, !noundef !141
  %18 = getelementptr inbounds %struct.ptable_ent, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !115
  %20 = icmp eq ptr %19, %2
  br i1 %20, label %21, label %15, !llvm.loop !117

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ptable_ent, ptr %17, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !120, !nonnull !141, !noundef !141
  %24 = load ptr, ptr %23, align 8, !tbaa.struct !136
  %25 = getelementptr inbounds i8, ptr %23, i64 8
  %26 = load i64, ptr %25, align 8, !tbaa.struct !138
  %27 = tail call ptr %24() #9
  %28 = load ptr, ptr @PL_op, align 8, !tbaa !82
  %29 = getelementptr inbounds %struct.op, ptr %28, i64 0, i32 5
  %30 = load i8, ptr %29, align 2, !tbaa !127
  %31 = and i8 %30, 32
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.op, ptr %28, i64 0, i32 6
  %35 = load i8, ptr %34, align 1, !tbaa !139
  %36 = and i8 %35, 8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = tail call i32 @Perl_is_lvalue_sub() #9
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38, %21
  %42 = tail call ptr @Perl_newSV(i64 noundef 0) #9
  %43 = load ptr, ptr %1, align 8, !tbaa !82
  %44 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull @.str.18, i32 noundef 1) #9
  tail call void @tie(ptr noundef %42, ptr noundef %43, ptr noundef %44)
  br label %79

45:                                               ; preds = %38, %33
  %46 = load ptr, ptr %1, align 8, !tbaa !82
  %47 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !66
  %49 = and i32 %48, 2097152
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %45
  %52 = tail call i32 @Perl_mg_get(ptr noundef %46) #9
  br label %53

53:                                               ; preds = %45, %51
  %54 = load ptr, ptr %1, align 8, !tbaa !82
  %55 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !66
  %57 = and i32 %56, 65280
  %58 = icmp ne i32 %57, 0
  %59 = and i32 %56, 255
  %60 = icmp eq i32 %59, 8
  %61 = or i1 %58, %60
  %62 = and i32 %56, 16777471
  %63 = icmp eq i32 %62, 16777226
  %64 = or i1 %63, %61
  br i1 %64, label %65, label %81

65:                                               ; preds = %53
  %66 = and i32 %56, 2097408
  %67 = icmp eq i32 %66, 256
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load ptr, ptr %54, align 8, !tbaa !91
  %70 = getelementptr inbounds %struct.xpviv, ptr %69, i64 0, i32 4
  %71 = load i64, ptr %70, align 8, !tbaa !65
  br label %74

72:                                               ; preds = %65
  %73 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %54, i32 noundef 2) #9
  br label %74

74:                                               ; preds = %72, %68
  %75 = phi i64 [ %71, %68 ], [ %73, %72 ]
  %76 = add nsw i64 %75, %26
  %77 = tail call ptr @Perl_newSViv(i64 noundef %76) #9
  %78 = tail call ptr @Perl_sv_2mortal(ptr noundef %77) #9
  br label %79

79:                                               ; preds = %41, %74
  %80 = phi ptr [ %78, %74 ], [ %42, %41 ]
  store ptr %80, ptr %1, align 8, !tbaa !82
  br label %81

81:                                               ; preds = %79, %53
  ret ptr %27
}

; Function Attrs: cold nounwind uwtable
define internal ptr @ab_pp_keys() #0 !prof !90 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !82
  %2 = load ptr, ptr @PL_stack_base, align 8, !tbaa !82
  %3 = ptrtoint ptr %2 to i64
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !82
  %5 = load ptr, ptr @ab_op_map, align 8, !tbaa !82
  %6 = ptrtoint ptr %4 to i64
  %7 = lshr i64 %6, 3
  %8 = lshr i64 %6, 10
  %9 = xor i64 %7, %8
  %10 = lshr i64 %6, 20
  %11 = xor i64 %9, %10
  %12 = load ptr, ptr %5, align 8, !tbaa !81
  %13 = getelementptr inbounds %struct.ptable, ptr %5, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !78
  %15 = and i64 %11, %14
  %16 = getelementptr inbounds ptr, ptr %12, i64 %15
  br label %17

17:                                               ; preds = %17, %0
  %18 = phi ptr [ %16, %0 ], [ %19, %17 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !82, !nonnull !141, !noundef !141
  %20 = getelementptr inbounds %struct.ptable_ent, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !115
  %22 = icmp eq ptr %21, %4
  br i1 %22, label %23, label %17, !llvm.loop !117

23:                                               ; preds = %17
  %24 = ptrtoint ptr %1 to i64
  %25 = sub i64 %24, %3
  %26 = getelementptr inbounds %struct.ptable_ent, ptr %19, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !120, !nonnull !141, !noundef !141
  %28 = load ptr, ptr %27, align 8, !tbaa.struct !136
  %29 = getelementptr inbounds i8, ptr %27, i64 8
  %30 = load i64, ptr %29, align 8, !tbaa.struct !138
  %31 = tail call ptr %28() #9
  %32 = load ptr, ptr @PL_op, align 8, !tbaa !82
  %33 = getelementptr inbounds %struct.op, ptr %32, i64 0, i32 5
  %34 = load i8, ptr %33, align 2, !tbaa !127
  %35 = and i8 %34, 3
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %23
  %38 = zext nneg i8 %35 to i32
  br label %41

39:                                               ; preds = %23
  %40 = tail call i32 @Perl_block_gimme() #9
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %71, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !82
  %46 = load ptr, ptr @PL_stack_base, align 8, !tbaa !82
  %47 = shl i64 %25, 29
  %48 = ashr i64 %47, 32
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48
  %50 = icmp ugt ptr %49, %45
  br i1 %50, label %71, label %51

51:                                               ; preds = %44, %64
  %52 = phi ptr [ %69, %64 ], [ %49, %44 ]
  %53 = load ptr, ptr %52, align 8, !tbaa !82
  %54 = getelementptr inbounds %struct.sv, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !66
  %56 = and i32 %55, 2097408
  %57 = icmp eq i32 %56, 256
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load ptr, ptr %53, align 8, !tbaa !91
  %60 = getelementptr inbounds %struct.xpviv, ptr %59, i64 0, i32 4
  %61 = load i64, ptr %60, align 8, !tbaa !65
  br label %64

62:                                               ; preds = %51
  %63 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %53, i32 noundef 2) #9
  br label %64

64:                                               ; preds = %62, %58
  %65 = phi i64 [ %61, %58 ], [ %63, %62 ]
  %66 = add nsw i64 %65, %30
  %67 = tail call ptr @Perl_newSViv(i64 noundef %66) #9
  %68 = tail call ptr @Perl_sv_2mortal(ptr noundef %67) #9
  store ptr %68, ptr %52, align 8, !tbaa !82
  %69 = getelementptr inbounds ptr, ptr %52, i64 1
  %70 = icmp ugt ptr %69, %45
  br i1 %70, label %71, label %51, !llvm.loop !142

71:                                               ; preds = %64, %44, %41
  ret ptr %31
}

; Function Attrs: cold nounwind uwtable
define internal ptr @ab_pp_each() #0 !prof !90 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !82
  %2 = load ptr, ptr @PL_stack_base, align 8, !tbaa !82
  %3 = ptrtoint ptr %2 to i64
  %4 = load ptr, ptr @PL_op, align 8, !tbaa !82
  %5 = load ptr, ptr @ab_op_map, align 8, !tbaa !82
  %6 = ptrtoint ptr %4 to i64
  %7 = lshr i64 %6, 3
  %8 = lshr i64 %6, 10
  %9 = xor i64 %7, %8
  %10 = lshr i64 %6, 20
  %11 = xor i64 %9, %10
  %12 = load ptr, ptr %5, align 8, !tbaa !81
  %13 = getelementptr inbounds %struct.ptable, ptr %5, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !78
  %15 = and i64 %11, %14
  %16 = getelementptr inbounds ptr, ptr %12, i64 %15
  br label %17

17:                                               ; preds = %17, %0
  %18 = phi ptr [ %16, %0 ], [ %19, %17 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !82, !nonnull !141, !noundef !141
  %20 = getelementptr inbounds %struct.ptable_ent, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !115
  %22 = icmp eq ptr %21, %4
  br i1 %22, label %23, label %17, !llvm.loop !117

23:                                               ; preds = %17
  %24 = ptrtoint ptr %1 to i64
  %25 = sub i64 %24, %3
  %26 = getelementptr inbounds %struct.ptable_ent, ptr %19, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !120, !nonnull !141, !noundef !141
  %28 = load ptr, ptr %27, align 8, !tbaa.struct !136
  %29 = getelementptr inbounds i8, ptr %27, i64 8
  %30 = load i64, ptr %29, align 8, !tbaa.struct !138
  %31 = tail call ptr %28() #9
  %32 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !82
  %33 = load ptr, ptr @PL_op, align 8, !tbaa !82
  %34 = getelementptr inbounds %struct.op, ptr %33, i64 0, i32 5
  %35 = load i8, ptr %34, align 2, !tbaa !127
  %36 = and i8 %35, 3
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %23
  %39 = zext nneg i8 %36 to i32
  br label %42

40:                                               ; preds = %23
  %41 = tail call i32 @Perl_block_gimme() #9
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %66

45:                                               ; preds = %42
  %46 = load ptr, ptr %32, align 8, !tbaa !82
  %47 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !66
  %49 = and i32 %48, 65280
  %50 = icmp ne i32 %49, 0
  %51 = and i32 %48, 255
  %52 = icmp eq i32 %51, 8
  %53 = or i1 %50, %52
  %54 = and i32 %48, 16777471
  %55 = icmp eq i32 %54, 16777226
  %56 = or i1 %55, %53
  br i1 %56, label %57, label %94

57:                                               ; preds = %45
  %58 = and i32 %48, 2097408
  %59 = icmp eq i32 %58, 256
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load ptr, ptr %46, align 8, !tbaa !91
  %62 = getelementptr inbounds %struct.xpviv, ptr %61, i64 0, i32 4
  %63 = load i64, ptr %62, align 8, !tbaa !65
  br label %88

64:                                               ; preds = %57
  %65 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %46, i32 noundef 2) #9
  br label %88

66:                                               ; preds = %42
  %67 = shl i64 %25, 29
  %68 = ashr i64 %67, 32
  %69 = load ptr, ptr @PL_stack_base, align 8, !tbaa !82
  %70 = ptrtoint ptr %32 to i64
  %71 = ptrtoint ptr %69 to i64
  %72 = sub i64 %70, %71
  %73 = ashr exact i64 %72, 3
  %74 = icmp slt i64 %68, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %66
  %76 = getelementptr inbounds ptr, ptr %32, i64 -1
  %77 = load ptr, ptr %76, align 8, !tbaa !82
  %78 = getelementptr inbounds %struct.sv, ptr %77, i64 0, i32 2
  %79 = load i32, ptr %78, align 4, !tbaa !66
  %80 = and i32 %79, 2097408
  %81 = icmp eq i32 %80, 256
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load ptr, ptr %77, align 8, !tbaa !91
  %84 = getelementptr inbounds %struct.xpviv, ptr %83, i64 0, i32 4
  %85 = load i64, ptr %84, align 8, !tbaa !65
  br label %88

86:                                               ; preds = %75
  %87 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %77, i32 noundef 2) #9
  br label %88

88:                                               ; preds = %82, %86, %60, %64
  %89 = phi i64 [ %63, %60 ], [ %65, %64 ], [ %85, %82 ], [ %87, %86 ]
  %90 = phi ptr [ %32, %60 ], [ %32, %64 ], [ %76, %82 ], [ %76, %86 ]
  %91 = add nsw i64 %89, %30
  %92 = tail call ptr @Perl_newSViv(i64 noundef %91) #9
  %93 = tail call ptr @Perl_sv_2mortal(ptr noundef %92) #9
  store ptr %93, ptr %90, align 8, !tbaa !82
  br label %94

94:                                               ; preds = %88, %45, %66
  ret ptr %31
}

; Function Attrs: cold nounwind uwtable
define internal ptr @ab_pp_index() #0 !prof !90 {
  %1 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !82
  %2 = load ptr, ptr @PL_op, align 8, !tbaa !82
  %3 = load ptr, ptr @ab_op_map, align 8, !tbaa !82
  %4 = ptrtoint ptr %2 to i64
  %5 = lshr i64 %4, 3
  %6 = lshr i64 %4, 10
  %7 = xor i64 %5, %6
  %8 = lshr i64 %4, 20
  %9 = xor i64 %7, %8
  %10 = load ptr, ptr %3, align 8, !tbaa !81
  %11 = getelementptr inbounds %struct.ptable, ptr %3, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !78
  %13 = and i64 %9, %12
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  br label %15

15:                                               ; preds = %19, %0
  %16 = phi ptr [ %14, %0 ], [ %17, %19 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !82
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ptable_ent, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !115
  %22 = icmp eq ptr %21, %2
  br i1 %22, label %23, label %15, !llvm.loop !117

23:                                               ; preds = %19, %15
  %24 = phi ptr [ null, %15 ], [ %17, %19 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ptable_ent, ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !120
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi ptr [ %28, %26 ], [ null, %23 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %30, align 8, !tbaa.struct !136
  %34 = getelementptr inbounds i8, ptr %30, i64 8
  %35 = load i64, ptr %34, align 8, !tbaa.struct !138
  br label %36

36:                                               ; preds = %29, %32
  %37 = phi ptr [ null, %29 ], [ %33, %32 ]
  %38 = phi i64 [ 0, %29 ], [ %35, %32 ]
  %39 = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 6
  %40 = load i8, ptr %39, align 1, !tbaa !139
  %41 = and i8 %40, 15
  %42 = icmp eq i8 %41, 3
  br i1 %42, label %43, label %66

43:                                               ; preds = %36
  %44 = load ptr, ptr %1, align 8, !tbaa !82
  %45 = icmp eq ptr %44, null
  br i1 %45, label %66, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !66
  %49 = and i32 %48, 2097408
  %50 = icmp eq i32 %49, 256
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load ptr, ptr %44, align 8, !tbaa !91
  %53 = getelementptr inbounds %struct.xpviv, ptr %52, i64 0, i32 4
  %54 = load i64, ptr %53, align 8, !tbaa !65
  br label %57

55:                                               ; preds = %46
  %56 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %44, i32 noundef 2) #9
  br label %57

57:                                               ; preds = %55, %51
  %58 = phi i64 [ %54, %51 ], [ %56, %55 ]
  %59 = icmp sge i64 %58, %38
  %60 = icmp sgt i64 %58, -1
  %61 = or i1 %59, %60
  %62 = select i1 %61, i64 %38, i64 0
  %63 = sub nsw i64 %58, %62
  %64 = tail call ptr @Perl_newSViv(i64 noundef %63) #9
  %65 = tail call ptr @Perl_sv_2mortal(ptr noundef %64) #9
  store ptr %65, ptr %1, align 8, !tbaa !82
  br label %66

66:                                               ; preds = %57, %43, %36
  %67 = tail call ptr %37() #9
  %68 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !82
  %69 = load ptr, ptr %68, align 8, !tbaa !82
  %70 = getelementptr inbounds %struct.sv, ptr %69, i64 0, i32 2
  %71 = load i32, ptr %70, align 4, !tbaa !66
  %72 = and i32 %71, 2097408
  %73 = icmp eq i32 %72, 256
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load ptr, ptr %69, align 8, !tbaa !91
  %76 = getelementptr inbounds %struct.xpviv, ptr %75, i64 0, i32 4
  %77 = load i64, ptr %76, align 8, !tbaa !65
  br label %80

78:                                               ; preds = %66
  %79 = tail call i64 @Perl_sv_2iv_flags(ptr noundef %69, i32 noundef 2) #9
  br label %80

80:                                               ; preds = %78, %74
  %81 = phi i64 [ %77, %74 ], [ %79, %78 ]
  %82 = add nsw i64 %81, %38
  %83 = tail call ptr @Perl_newSViv(i64 noundef %82) #9
  %84 = tail call ptr @Perl_sv_2mortal(ptr noundef %83) #9
  store ptr %84, ptr %68, align 8, !tbaa !82
  ret ptr %67
}

declare ptr @Perl_newUNOP(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare i32 @Perl_block_gimme() local_unnamed_addr #1

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #1

declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #1

declare i32 @Perl_is_lvalue_sub() local_unnamed_addr #1

declare ptr @Perl_gv_stashpv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @ptable_map_store(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 !prof !90 !PGOFuncName !143 {
  %4 = ptrtoint ptr %1 to i64
  %5 = lshr i64 %4, 3
  %6 = lshr i64 %4, 10
  %7 = xor i64 %5, %6
  %8 = lshr i64 %4, 20
  %9 = xor i64 %7, %8
  %10 = load ptr, ptr %0, align 8, !tbaa !81
  %11 = getelementptr inbounds %struct.ptable, ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !78
  %13 = and i64 %12, %9
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  br label %15

15:                                               ; preds = %19, %3
  %16 = phi ptr [ %14, %3 ], [ %17, %19 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !82
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19, !prof !113

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ptable_ent, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !115
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %15, !llvm.loop !117

23:                                               ; preds = %19, %15
  %24 = phi ptr [ null, %15 ], [ %17, %19 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26, !prof !113

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ptable_ent, ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !120
  tail call void @free(ptr noundef %28) #9
  store ptr %2, ptr %27, align 8, !tbaa !120
  br label %84

29:                                               ; preds = %23
  %30 = icmp eq ptr %2, null
  br i1 %30, label %84, label %31, !prof !113

31:                                               ; preds = %29
  %32 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #10
  %33 = getelementptr inbounds %struct.ptable_ent, ptr %32, i64 0, i32 1
  store ptr %1, ptr %33, align 8, !tbaa !115
  %34 = getelementptr inbounds %struct.ptable_ent, ptr %32, i64 0, i32 2
  store ptr %2, ptr %34, align 8, !tbaa !120
  %35 = load ptr, ptr %14, align 8, !tbaa !82
  store ptr %35, ptr %32, align 8, !tbaa !144
  store ptr %32, ptr %14, align 8, !tbaa !82
  %36 = getelementptr inbounds %struct.ptable, ptr %0, i64 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !80
  %38 = add i64 %37, 1
  store i64 %38, ptr %36, align 8, !tbaa !80
  %39 = load ptr, ptr %32, align 8, !tbaa !144
  %40 = icmp ne ptr %39, null
  %41 = icmp ugt i64 %38, %12
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %84

43:                                               ; preds = %31
  %44 = load ptr, ptr %0, align 8, !tbaa !81
  %45 = add i64 %12, 1
  %46 = shl i64 %45, 1
  %47 = shl i64 %45, 4
  %48 = tail call ptr @realloc(ptr noundef %44, i64 noundef %47) #13
  %49 = getelementptr inbounds ptr, ptr %48, i64 %45
  %50 = shl i64 %45, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %49, i8 0, i64 %50, i1 false)
  %51 = add i64 %46, -1
  store i64 %51, ptr %11, align 8, !tbaa !78
  store ptr %48, ptr %0, align 8, !tbaa !81
  %52 = icmp eq i64 %45, 0
  br i1 %52, label %84, label %53

53:                                               ; preds = %43, %80
  %54 = phi ptr [ %82, %80 ], [ %48, %43 ]
  %55 = phi i64 [ %81, %80 ], [ 0, %43 ]
  %56 = load ptr, ptr %54, align 8, !tbaa !82
  %57 = icmp eq ptr %56, null
  br i1 %57, label %80, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds ptr, ptr %54, i64 %45
  br label %60

60:                                               ; preds = %58, %76
  %61 = phi ptr [ %56, %58 ], [ %78, %76 ]
  %62 = phi ptr [ %54, %58 ], [ %77, %76 ]
  %63 = getelementptr inbounds %struct.ptable_ent, ptr %61, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !115
  %65 = ptrtoint ptr %64 to i64
  %66 = lshr i64 %65, 3
  %67 = lshr i64 %65, 10
  %68 = xor i64 %66, %67
  %69 = lshr i64 %65, 20
  %70 = xor i64 %68, %69
  %71 = and i64 %70, %51
  %72 = icmp eq i64 %71, %55
  br i1 %72, label %76, label %73

73:                                               ; preds = %60
  %74 = load ptr, ptr %61, align 8, !tbaa !144
  store ptr %74, ptr %62, align 8, !tbaa !82
  %75 = load ptr, ptr %59, align 8, !tbaa !82
  store ptr %75, ptr %61, align 8, !tbaa !144
  store ptr %61, ptr %59, align 8, !tbaa !82
  br label %76

76:                                               ; preds = %73, %60
  %77 = phi ptr [ %62, %73 ], [ %61, %60 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !82
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %60, !llvm.loop !145

80:                                               ; preds = %76, %53
  %81 = add nuw i64 %55, 1
  %82 = getelementptr inbounds ptr, ptr %54, i64 1
  %83 = icmp eq i64 %55, %12
  br i1 %83, label %84, label %53, !llvm.loop !146

84:                                               ; preds = %80, %43, %31, %29, %26
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #8

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!56}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!35 = !{ptr @tie, ptr @Perl_newSV_type, i64 1}
!36 = !{ptr @tie, ptr @Perl_newSV, i64 1}
!37 = !{ptr @tie, ptr @Perl_sv_bless, i64 1}
!38 = !{ptr @tie, ptr @Perl_sv_unmagic, i64 1}
!39 = !{ptr @tie, ptr @Perl_sv_magic, i64 1}
!40 = !{ptr @boot_arybase, ptr @Perl_xs_handshake, i64 1}
!41 = !{ptr @boot_arybase, ptr @Perl_newXS_deffile, i64 4}
!42 = !{ptr @boot_arybase, ptr @Perl_gv_fetchpvn_flags, i64 1}
!43 = !{ptr @boot_arybase, ptr @Perl_sv_unmagic, i64 1}
!44 = !{ptr @boot_arybase, ptr @tie, i64 1}
!45 = !{ptr @boot_arybase, ptr @malloc, i64 1}
!46 = !{ptr @boot_arybase, ptr @calloc, i64 1}
!47 = !{ptr @boot_arybase, ptr @Perl_wrap_op_checker, i64 13}
!48 = !{ptr @boot_arybase, ptr @Perl_xs_boot_epilog, i64 1}
!49 = !{ptr @XS_arybase_FETCH, ptr @Perl_refcounted_he_fetch_pvn, i64 517908}
!50 = !{ptr @XS_arybase_FETCH, ptr @Perl_sv_newmortal, i64 517908}
!51 = !{ptr @XS_arybase_FETCH, ptr @Perl_sv_setiv, i64 517908}
!52 = !{ptr @ab_ck_sassign, ptr @ab_process_assignment, i64 1856}
!53 = !{ptr @ab_ck_aassign, ptr @ab_process_assignment, i64 364}
!54 = !{ptr @ab_ck_base, ptr @Perl_hv_common_key_len, i64 207}
!55 = !{ptr @ab_process_assignment, ptr @strcmp, i64 73}
!56 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!57 = !{!"function_entry_count", i64 1}
!58 = !{!"branch_weights", i32 1, i32 0}
!59 = !{!60, !64, i64 8}
!60 = !{!"sv", !61, i64 0, !64, i64 8, !64, i64 12, !62, i64 16}
!61 = !{!"any pointer", !62, i64 0}
!62 = !{!"omnipotent char", !63, i64 0}
!63 = !{!"Simple C/C++ TBAA"}
!64 = !{!"int", !62, i64 0}
!65 = !{!62, !62, i64 0}
!66 = !{!60, !64, i64 12}
!67 = !{!"branch_weights", i32 0, i32 1}
!68 = !{!69, !61, i64 0}
!69 = !{!"gp", !61, i64 0, !61, i64 8, !61, i64 16, !64, i64 24, !64, i64 28, !61, i64 32, !61, i64 40, !61, i64 48, !61, i64 56, !64, i64 64, !64, i64 67, !61, i64 72}
!70 = !{!71, !61, i64 0}
!71 = !{!"cv", !61, i64 0, !64, i64 8, !64, i64 12, !62, i64 16}
!72 = !{!73, !64, i64 92}
!73 = !{!"xpvcv", !61, i64 0, !62, i64 8, !74, i64 16, !62, i64 24, !61, i64 32, !62, i64 40, !62, i64 48, !62, i64 56, !61, i64 64, !62, i64 72, !61, i64 80, !64, i64 88, !64, i64 92, !64, i64 96}
!74 = !{!"long", !62, i64 0}
!75 = !{!76, !61, i64 0}
!76 = !{!"gv", !61, i64 0, !64, i64 8, !64, i64 12, !62, i64 16}
!77 = !{!64, !64, i64 0}
!78 = !{!79, !74, i64 8}
!79 = !{!"ptable", !61, i64 0, !74, i64 8, !74, i64 16}
!80 = !{!79, !74, i64 16}
!81 = !{!79, !61, i64 0}
!82 = !{!61, !61, i64 0}
!83 = !{!"function_entry_count", i64 517908}
!84 = !{!"ext/arybase/arybase.c;XS_arybase_FETCH"}
!85 = !{!86, !64, i64 56}
!86 = !{!"cop", !61, i64 0, !61, i64 8, !61, i64 16, !74, i64 24, !64, i64 32, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !62, i64 34, !62, i64 35, !64, i64 36, !61, i64 40, !61, i64 48, !64, i64 56, !64, i64 60, !61, i64 64, !61, i64 72}
!87 = !{!"branch_weights", i32 517908, i32 0}
!88 = !{!86, !61, i64 72}
!89 = !{!"branch_weights", i32 0, i32 517908}
!90 = !{!"function_entry_count", i64 0}
!91 = !{!60, !61, i64 0}
!92 = !{!"function_entry_count", i64 1911}
!93 = !{!"ext/arybase/arybase.c;ab_ck_sassign"}
!94 = !{!"VP", i32 0, i64 1911, i64 -5044748116694523600, i64 1911}
!95 = !{!"branch_weights", i32 1856, i32 55}
!96 = !{!"branch_weights", i32 1856, i32 0}
!97 = !{!98, !61, i64 40}
!98 = !{!"binop", !61, i64 0, !61, i64 8, !61, i64 16, !74, i64 24, !64, i64 32, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !62, i64 34, !62, i64 35, !61, i64 40, !61, i64 48}
!99 = !{!100, !61, i64 8}
!100 = !{!"op", !61, i64 0, !61, i64 8, !61, i64 16, !74, i64 24, !64, i64 32, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !62, i64 34, !62, i64 35}
!101 = !{!"branch_weights", i32 0, i32 1856}
!102 = !{!"function_entry_count", i64 364}
!103 = !{!"ext/arybase/arybase.c;ab_ck_aassign"}
!104 = !{!"VP", i32 0, i64 364, i64 -82037114550712389, i64 364}
!105 = !{!"branch_weights", i32 364, i32 0}
!106 = !{!"function_entry_count", i64 245}
!107 = !{!"ext/arybase/arybase.c;ab_ck_base"}
!108 = !{!"branch_weights", i32 0, i32 116, i32 7, i32 6, i32 30, i32 3, i32 32, i32 6, i32 30, i32 0, i32 7, i32 8}
!109 = !{!"VP", i32 0, i64 245, i64 -82037114550712389, i64 159, i64 -1646611309430085177, i64 38, i64 -4451836871427821989, i64 30}
!110 = !{!"branch_weights", i32 245, i32 0}
!111 = !{!"branch_weights", i32 38, i32 116, i32 7, i32 6, i32 3, i32 30, i32 8, i32 30, i32 0, i32 0, i32 0, i32 7}
!112 = !{!69, !61, i64 32}
!113 = !{!"branch_weights", i32 207, i32 0}
!114 = !{!100, !61, i64 16}
!115 = !{!116, !61, i64 8}
!116 = !{!"ptable_ent", !61, i64 0, !61, i64 8, !61, i64 16}
!117 = distinct !{!117, !118, !119}
!118 = !{!"llvm.loop.mustprogress"}
!119 = !{!"llvm.loop.unroll.disable"}
!120 = !{!116, !61, i64 16}
!121 = !{!122, !61, i64 0}
!122 = !{!"", !61, i64 0, !74, i64 8}
!123 = !{!122, !74, i64 8}
!124 = !{!"function_entry_count", i64 2220}
!125 = !{!"ext/arybase/arybase.c;ab_process_assignment"}
!126 = !{!"branch_weights", i32 601, i32 1619}
!127 = !{!100, !62, i64 34}
!128 = !{!"branch_weights", i32 0, i32 601}
!129 = !{!130, !61, i64 40}
!130 = !{!"unop", !61, i64 0, !61, i64 8, !61, i64 16, !74, i64 24, !64, i64 32, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !62, i64 34, !62, i64 35, !61, i64 40}
!131 = !{!"branch_weights", i32 588, i32 13}
!132 = !{!133, !61, i64 40}
!133 = !{!"svop", !61, i64 0, !61, i64 8, !61, i64 16, !74, i64 24, !64, i64 32, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !64, i64 33, !62, i64 34, !62, i64 35, !61, i64 40}
!134 = !{!"branch_weights", i32 73, i32 515}
!135 = !{!"branch_weights", i32 0, i32 73}
!136 = !{i64 0, i64 8, !82, i64 8, i64 8, !137}
!137 = !{!74, !74, i64 0}
!138 = !{i64 0, i64 8, !137}
!139 = !{!100, !62, i64 35}
!140 = distinct !{!140, !118, !119}
!141 = !{}
!142 = distinct !{!142, !118, !119}
!143 = !{!"ext/arybase/arybase.c;ptable_map_store"}
!144 = !{!116, !61, i64 0}
!145 = distinct !{!145, !118, !119}
!146 = distinct !{!146, !118, !119}
