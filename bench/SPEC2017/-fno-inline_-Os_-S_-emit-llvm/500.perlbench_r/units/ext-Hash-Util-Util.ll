; ModuleID = 'ext/Hash-Util/Util.c'
source_filename = "ext/Hash-Util/Util.c"
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
%struct.he = type { ptr, ptr, %union.anon.6 }
%union.anon.6 = type { ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.7, %union._xivu, %union._xnvu }
%union.anon.7 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.9 }
%union.anon.9 = type { i64 }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.10, %union._xivu }
%union.anon.10 = type { i64 }
%struct.hv = type { ptr, i32, i32, %union.anon.11 }
%union.anon.11 = type { ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.12, %union._xivu, %union._xnvu }
%union.anon.12 = type { i64 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.13, %union._xivu }
%union.anon.13 = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"ext/Hash-Util/Util.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Hash::Util::all_keys\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\\%\\@\\@\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Hash::Util::hidden_ref_keys\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Hash::Util::legal_ref_keys\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Hash::Util::hv_store\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\\%$$\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Hash::Util::hash_seed\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Hash::Util::hash_value\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"$;$\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Hash::Util::hash_traversal_mask\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Hash::Util::bucket_info\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Hash::Util::bucket_array\00", align 1
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [24 x i8] c"hash, keys, placeholder\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"%s: %s is not a HASH reference\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"%s: %s is not an ARRAY reference\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"placeholder\00", align 1
@PL_sv_placeholder = external global %struct.sv, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [15 x i8] c"hash, key, val\00", align 1
@PL_sv_no = external global %struct.sv, align 8
@PL_sv_yes = external global %struct.sv, align 8
@.str.22 = private unnamed_addr constant [17 x i8] c"Too Hot To Hoot!\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"string, ...\00", align 1
@.str.24 = private unnamed_addr constant [53 x i8] c"seed len must be at least %d long only got %lu bytes\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"rhv, ...\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@.str.26 = private unnamed_addr constant [4 x i8] c"rhv\00", align 1
@PL_strtab = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [49 x i8] c"hash::bucket_array only works on 'normal' hashes\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boot_Hash__Util(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #5
  %3 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_Hash__Util_all_keys, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #5
  %4 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_Hash__Util_hidden_ref_keys) #5
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.xpvcv, ptr %5, i64 0, i32 5
  store i32 0, ptr %6, align 8, !tbaa !11
  %7 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.5, ptr noundef nonnull @XS_Hash__Util_hidden_ref_keys) #5
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.xpvcv, ptr %8, i64 0, i32 5
  store i32 1, ptr %9, align 8, !tbaa !11
  %10 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_Hash__Util_hv_store, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 0) #5
  %11 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.8, ptr noundef nonnull @XS_Hash__Util_hash_seed, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 0) #5
  %12 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_Hash__Util_hash_value, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #5
  %13 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.12, ptr noundef nonnull @XS_Hash__Util_hash_traversal_mask) #5
  %14 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.13, ptr noundef nonnull @XS_Hash__Util_bucket_info) #5
  %15 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.14, ptr noundef nonnull @XS_Hash__Util_bucket_array) #5
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Hash__Util_all_keys(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %5 = load i32, ptr %3, align 4, !tbaa !13
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 24
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.15) #5
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = sext i32 %7 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !12
  %22 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !14
  %24 = and i32 %23, 2097152
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = tail call i32 @Perl_mg_get(ptr noundef nonnull %21) #5
  %28 = load i32, ptr %22, align 4, !tbaa !14
  br label %29

29:                                               ; preds = %17, %26
  %30 = phi i32 [ %23, %17 ], [ %28, %26 ]
  %31 = and i32 %30, 2048
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !11
  %36 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !14
  %38 = and i32 %37, 255
  %39 = icmp eq i32 %38, 12
  br i1 %39, label %41, label %40

40:                                               ; preds = %33, %29
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.17) #5
  br label %41

41:                                               ; preds = %33, %40
  %42 = phi ptr [ undef, %40 ], [ %35, %33 ]
  %43 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %44 = getelementptr ptr, ptr %43, i64 %8
  %45 = getelementptr ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8, !tbaa !12
  %47 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !14
  %49 = and i32 %48, 2097152
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %41
  %52 = tail call i32 @Perl_mg_get(ptr noundef nonnull %46) #5
  %53 = load i32, ptr %47, align 4, !tbaa !14
  br label %54

54:                                               ; preds = %41, %51
  %55 = phi i32 [ %48, %41 ], [ %53, %51 ]
  %56 = and i32 %55, 2048
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !11
  %61 = getelementptr inbounds %struct.sv, ptr %60, i64 0, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !14
  %63 = and i32 %62, 255
  %64 = icmp eq i32 %63, 11
  br i1 %64, label %66, label %65

65:                                               ; preds = %58, %54
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.19) #5
  br label %66

66:                                               ; preds = %58, %65
  %67 = phi ptr [ undef, %65 ], [ %60, %58 ]
  %68 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %69 = getelementptr ptr, ptr %68, i64 %8
  %70 = getelementptr ptr, ptr %69, i64 3
  %71 = load ptr, ptr %70, align 8, !tbaa !12
  %72 = getelementptr inbounds %struct.sv, ptr %71, i64 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !14
  %74 = and i32 %73, 2097152
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %66
  %77 = tail call i32 @Perl_mg_get(ptr noundef nonnull %71) #5
  %78 = load i32, ptr %72, align 4, !tbaa !14
  br label %79

79:                                               ; preds = %66, %76
  %80 = phi i32 [ %73, %66 ], [ %78, %76 ]
  %81 = and i32 %80, 2048
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.sv, ptr %71, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !11
  %86 = getelementptr inbounds %struct.sv, ptr %85, i64 0, i32 2
  %87 = load i32, ptr %86, align 4, !tbaa !14
  %88 = and i32 %87, 255
  %89 = icmp eq i32 %88, 11
  br i1 %89, label %91, label %90

90:                                               ; preds = %83, %79
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.20) #5
  br label %91

91:                                               ; preds = %83, %90
  %92 = phi ptr [ undef, %90 ], [ %85, %83 ]
  tail call void @Perl_av_clear(ptr noundef %67) #5
  tail call void @Perl_av_clear(ptr noundef %92) #5
  %93 = tail call i32 @Perl_hv_iterinit(ptr noundef %42) #5
  %94 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %42, i32 noundef 1) #5
  %95 = icmp eq ptr %94, null
  br i1 %95, label %106, label %96

96:                                               ; preds = %91, %96
  %97 = phi ptr [ %104, %96 ], [ %94, %91 ]
  %98 = tail call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %97) #5
  %99 = getelementptr inbounds %struct.he, ptr %97, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !11
  %101 = icmp eq ptr %100, @PL_sv_placeholder
  %102 = select i1 %101, ptr %92, ptr %67
  %103 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %98) #6
  tail call void @Perl_av_push(ptr noundef %102, ptr noundef %98) #5
  %104 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %42, i32 noundef 1) #5
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %96, !llvm.loop !16

106:                                              ; preds = %96, %91
  %107 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %108 = getelementptr inbounds ptr, ptr %107, i64 %19
  store ptr %108, ptr @PL_stack_sp, align 8, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_newXS_deffile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Hash__Util_hidden_ref_keys(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %5 = load i32, ptr %3, align 4, !tbaa !13
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = load ptr, ptr %0, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.xpvcv, ptr %12, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !11
  %15 = and i64 %11, 34359738360
  %16 = icmp eq i64 %15, 8
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #5
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  br label %19

19:                                               ; preds = %17, %1
  %20 = phi ptr [ %18, %17 ], [ %6, %1 ]
  %21 = shl i64 %11, 29
  %22 = ashr i64 %21, 32
  %23 = sub nsw i64 0, %22
  %24 = getelementptr inbounds ptr, ptr %2, i64 %23
  %25 = getelementptr ptr, ptr %20, i64 %7
  %26 = getelementptr ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !12
  %28 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !14
  %30 = and i32 %29, 2097152
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %19
  %33 = tail call i32 @Perl_mg_get(ptr noundef nonnull %27) #5
  %34 = load i32, ptr %28, align 4, !tbaa !14
  br label %35

35:                                               ; preds = %19, %32
  %36 = phi i32 [ %29, %19 ], [ %34, %32 ]
  %37 = and i32 %36, 2048
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !11
  %42 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !14
  %44 = and i32 %43, 255
  %45 = icmp eq i32 %44, 12
  br i1 %45, label %52, label %46

46:                                               ; preds = %39, %35
  %47 = tail call fastcc ptr @S_CvGV(ptr noundef nonnull %0) #6
  %48 = load ptr, ptr %47, align 8, !tbaa !18
  %49 = getelementptr inbounds %struct.xpvgv, ptr %48, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !11
  %51 = getelementptr inbounds %struct.hek, ptr %50, i64 0, i32 2
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.16, ptr noundef nonnull %51, ptr noundef nonnull @.str.17) #5
  br label %52

52:                                               ; preds = %39, %46
  %53 = phi ptr [ undef, %46 ], [ %41, %39 ]
  %54 = tail call i32 @Perl_hv_iterinit(ptr noundef %53) #5
  %55 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %53, i32 noundef 1) #5
  %56 = icmp eq ptr %55, null
  br i1 %56, label %82, label %57

57:                                               ; preds = %52
  %58 = icmp eq i32 %14, 0
  br label %59

59:                                               ; preds = %57, %78
  %60 = phi ptr [ %55, %57 ], [ %80, %78 ]
  %61 = phi ptr [ %24, %57 ], [ %79, %78 ]
  %62 = tail call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %60) #5
  br i1 %58, label %63, label %67

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.he, ptr %60, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !11
  %66 = icmp eq ptr %65, @PL_sv_placeholder
  br i1 %66, label %67, label %78

67:                                               ; preds = %63, %59
  %68 = load ptr, ptr @PL_stack_max, align 8, !tbaa !12
  %69 = ptrtoint ptr %68 to i64
  %70 = ptrtoint ptr %61 to i64
  %71 = sub i64 %69, %70
  %72 = icmp slt i64 %71, 8
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = tail call ptr @Perl_stack_grow(ptr noundef %61, ptr noundef %61, i64 noundef 1) #5
  br label %75

75:                                               ; preds = %67, %73
  %76 = phi ptr [ %74, %73 ], [ %61, %67 ]
  %77 = getelementptr inbounds ptr, ptr %76, i64 1
  store ptr %62, ptr %77, align 8, !tbaa !12
  br label %78

78:                                               ; preds = %75, %63
  %79 = phi ptr [ %77, %75 ], [ %61, %63 ]
  %80 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %53, i32 noundef 1) #5
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %59, !llvm.loop !20

82:                                               ; preds = %78, %52
  %83 = phi ptr [ %24, %52 ], [ %79, %78 ]
  store ptr %83, ptr @PL_stack_sp, align 8, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Hash__Util_hv_store(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %5 = load i32, ptr %3, align 4, !tbaa !13
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 24
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.21) #5
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = getelementptr ptr, ptr %18, i64 %8
  %20 = getelementptr ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !12
  %22 = getelementptr ptr, ptr %19, i64 3
  %23 = load ptr, ptr %22, align 8, !tbaa !12
  %24 = sext i32 %7 to i64
  %25 = getelementptr inbounds ptr, ptr %18, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !12
  %27 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !14
  %29 = and i32 %28, 2097152
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %17
  %32 = tail call i32 @Perl_mg_get(ptr noundef nonnull %26) #5
  %33 = load i32, ptr %27, align 4, !tbaa !14
  br label %34

34:                                               ; preds = %17, %31
  %35 = phi i32 [ %28, %17 ], [ %33, %31 ]
  %36 = and i32 %35, 2048
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !11
  %41 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !14
  %43 = and i32 %42, 255
  %44 = icmp eq i32 %43, 12
  br i1 %44, label %46, label %45

45:                                               ; preds = %38, %34
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.17) #5
  unreachable

46:                                               ; preds = %38
  %47 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %23) #6
  %48 = tail call ptr @Perl_hv_common(ptr noundef nonnull %40, ptr noundef %21, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %23, i32 noundef 0) #5
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %23) #6
  br label %51

51:                                               ; preds = %46, %50
  %52 = phi ptr [ @PL_sv_no, %50 ], [ @PL_sv_yes, %46 ]
  %53 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %54 = getelementptr inbounds ptr, ptr %53, i64 %24
  store ptr %52, ptr %54, align 8, !tbaa !12
  %55 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %56 = getelementptr inbounds ptr, ptr %55, i64 %24
  store ptr %56, ptr @PL_stack_sp, align 8, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Hash__Util_hash_seed(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %5 = load i32, ptr %3, align 4, !tbaa !13
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.9) #5
  br label %15

15:                                               ; preds = %14, %1
  %16 = shl i64 %11, 29
  %17 = ashr i64 %16, 32
  %18 = sub nsw i64 0, %17
  %19 = getelementptr inbounds ptr, ptr %2, i64 %18
  %20 = load ptr, ptr @PL_stack_max, align 8, !tbaa !12
  %21 = ptrtoint ptr %20 to i64
  %22 = ptrtoint ptr %19 to i64
  %23 = sub i64 %21, %22
  %24 = icmp slt i64 %23, 8
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = tail call ptr @Perl_stack_grow(ptr noundef %19, ptr noundef %19, i64 noundef 1) #5
  br label %27

27:                                               ; preds = %15, %25
  %28 = phi ptr [ %26, %25 ], [ %19, %15 ]
  %29 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.22, i64 noundef 8) #5
  %30 = tail call ptr @Perl_sv_2mortal(ptr noundef %29) #5
  %31 = getelementptr inbounds ptr, ptr %28, i64 1
  store ptr %30, ptr %31, align 8, !tbaa !12
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %33 = getelementptr ptr, ptr %32, i64 %7
  %34 = getelementptr ptr, ptr %33, i64 1
  store ptr %34, ptr @PL_stack_sp, align 8, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Hash__Util_hash_value(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %7 = load i32, ptr %5, align 4, !tbaa !13
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.23) #5
  %19 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi ptr [ %19, %18 ], [ %8, %1 ]
  %22 = sext i32 %9 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !14
  %27 = and i32 %26, 2098176
  %28 = icmp eq i32 %27, 1024
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load ptr, ptr %24, align 8, !tbaa !21
  %31 = getelementptr inbounds %struct.xpv, ptr %30, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !22
  store i64 %32, ptr %2, align 8, !tbaa !25
  %33 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !11
  br label %37

35:                                               ; preds = %20
  %36 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %24, ptr noundef nonnull %2, i32 noundef 2) #5
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi ptr [ %34, %29 ], [ %36, %35 ]
  %39 = icmp slt i32 %16, 2
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i64, ptr %2, align 8, !tbaa !25
  %42 = call fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef nonnull @.str.22, ptr noundef %38, i64 noundef %41) #6
  br label %74

43:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %44 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %45 = add nsw i32 %7, 2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds ptr, ptr %44, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !12
  %49 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !14
  %51 = and i32 %50, 2098176
  %52 = icmp eq i32 %51, 1024
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load ptr, ptr %48, align 8, !tbaa !21
  %55 = getelementptr inbounds %struct.xpv, ptr %54, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !22
  store i64 %56, ptr %3, align 8, !tbaa !25
  %57 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !11
  br label %62

59:                                               ; preds = %43
  %60 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %48, ptr noundef nonnull %3, i32 noundef 2) #5
  %61 = load i64, ptr %3, align 8, !tbaa !25
  br label %62

62:                                               ; preds = %59, %53
  %63 = phi i64 [ %61, %59 ], [ %56, %53 ]
  %64 = phi ptr [ %60, %59 ], [ %58, %53 ]
  %65 = icmp ult i64 %63, 8
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %68 = getelementptr inbounds ptr, ptr %67, i64 %46
  %69 = load ptr, ptr %68, align 8, !tbaa !12
  call void @Perl_sv_dump(ptr noundef %69) #5
  %70 = load i64, ptr %3, align 8, !tbaa !25
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.24, i32 noundef 8, i64 noundef %70) #5
  br label %71

71:                                               ; preds = %66, %62
  %72 = load i64, ptr %2, align 8, !tbaa !25
  %73 = call fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef %64, ptr noundef %38, i64 noundef %72) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  br label %74

74:                                               ; preds = %40, %71
  %75 = phi i32 [ %42, %40 ], [ %73, %71 ]
  %76 = zext i32 %75 to i64
  %77 = call ptr @Perl_newSVuv(i64 noundef %76) #5
  %78 = call ptr @Perl_sv_2mortal(ptr noundef %77) #5
  %79 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %80 = getelementptr inbounds ptr, ptr %79, i64 %22
  store ptr %78, ptr %80, align 8, !tbaa !12
  %81 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %82 = getelementptr inbounds ptr, ptr %81, i64 %22
  store ptr %82, ptr @PL_stack_sp, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Hash__Util_hash_traversal_mask(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %5 = load i32, ptr %3, align 4, !tbaa !13
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.25) #5
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ %17, %16 ], [ %6, %1 ]
  %20 = shl i64 %12, 29
  %21 = ashr i64 %20, 32
  %22 = sub nsw i64 0, %21
  %23 = getelementptr inbounds ptr, ptr %2, i64 %22
  %24 = sext i32 %7 to i64
  %25 = getelementptr inbounds ptr, ptr %19, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !12
  %27 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !14
  %29 = and i32 %28, 2048
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %80, label %31

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !11
  %34 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !13
  %36 = and i32 %35, 14680319
  %37 = icmp eq i32 %36, 12
  br i1 %37, label %38, label %80

38:                                               ; preds = %31
  %39 = icmp sgt i32 %14, 1
  br i1 %39, label %40, label %58

40:                                               ; preds = %38
  %41 = getelementptr ptr, ptr %19, i64 %8
  %42 = getelementptr ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !12
  %44 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !14
  %46 = and i32 %45, -2145386240
  %47 = icmp eq i32 %46, -2147483392
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load ptr, ptr %43, align 8, !tbaa !21
  %50 = getelementptr inbounds %struct.xpvuv, ptr %49, i64 0, i32 4
  %51 = load i64, ptr %50, align 8, !tbaa !11
  br label %54

52:                                               ; preds = %40
  %53 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %43, i32 noundef 2) #5
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi i64 [ %51, %48 ], [ %53, %52 ]
  %56 = trunc i64 %55 to i32
  tail call void @Perl_hv_rand_set(ptr noundef nonnull %33, i32 noundef %56) #5
  %57 = load i32, ptr %34, align 4, !tbaa !26
  br label %58

58:                                               ; preds = %54, %38
  %59 = phi i32 [ %57, %54 ], [ %35, %38 ]
  %60 = and i32 %59, 33554432
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.hv, ptr %33, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !11
  %65 = load ptr, ptr %33, align 8, !tbaa !28
  %66 = getelementptr inbounds %struct.xpvhv, ptr %65, i64 0, i32 3
  %67 = load i64, ptr %66, align 8, !tbaa !29
  %68 = getelementptr ptr, ptr %64, i64 %67
  %69 = getelementptr ptr, ptr %68, i64 6
  %70 = load i32, ptr %69, align 8, !tbaa !31
  %71 = zext i32 %70 to i64
  %72 = tail call ptr @Perl_newSVuv(i64 noundef %71) #5
  %73 = tail call ptr @Perl_sv_2mortal(ptr noundef %72) #5
  br label %74

74:                                               ; preds = %58, %62
  %75 = phi ptr [ %73, %62 ], [ @PL_sv_undef, %58 ]
  %76 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %77 = getelementptr inbounds ptr, ptr %76, i64 %24
  store ptr %75, ptr %77, align 8, !tbaa !12
  %78 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %79 = getelementptr inbounds ptr, ptr %78, i64 %24
  br label %80

80:                                               ; preds = %18, %31, %74
  %81 = phi ptr [ %79, %74 ], [ %23, %31 ], [ %23, %18 ]
  store ptr %81, ptr @PL_stack_sp, align 8, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Hash__Util_bucket_info(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %5 = load i32, ptr %3, align 4, !tbaa !13
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.26) #5
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ %6, %1 ]
  %19 = shl i64 %12, 29
  %20 = ashr i64 %19, 32
  %21 = sub nsw i64 0, %20
  %22 = getelementptr inbounds ptr, ptr %2, i64 %21
  %23 = sext i32 %7 to i64
  %24 = getelementptr inbounds ptr, ptr %18, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !12
  %26 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !14
  %28 = and i32 %27, 2048
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !11
  %33 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !14
  %35 = and i32 %34, 14680319
  %36 = icmp eq i32 %35, 12
  br i1 %36, label %49, label %37

37:                                               ; preds = %30, %17
  %38 = and i32 %27, 65280
  %39 = icmp ne i32 %38, 0
  %40 = and i32 %27, 255
  %41 = icmp eq i32 %40, 8
  %42 = or i1 %39, %41
  %43 = and i32 %27, 16777471
  %44 = icmp eq i32 %43, 16777226
  %45 = or i1 %44, %42
  %46 = load ptr, ptr @PL_strtab, align 8
  %47 = icmp eq ptr %46, null
  %48 = select i1 %45, i1 true, i1 %47
  br i1 %48, label %170, label %49

49:                                               ; preds = %37, %30
  %50 = phi ptr [ %32, %30 ], [ %46, %37 ]
  %51 = load ptr, ptr %50, align 8, !tbaa !28
  %52 = getelementptr inbounds %struct.xpvhv, ptr %51, i64 0, i32 3
  %53 = load i64, ptr %52, align 8, !tbaa !29
  %54 = trunc i64 %53 to i32
  %55 = getelementptr inbounds %struct.xpvhv, ptr %51, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !33
  %57 = getelementptr inbounds %struct.xpvmg, ptr %51, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !11
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %49
  %61 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %50) #5
  %62 = zext i32 %61 to i64
  br label %63

63:                                               ; preds = %49, %60
  %64 = phi i64 [ %62, %60 ], [ 0, %49 ]
  %65 = sub i64 %56, %64
  %66 = getelementptr inbounds %struct.hv, ptr %50, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !11
  %68 = load ptr, ptr @PL_stack_max, align 8, !tbaa !12
  %69 = ptrtoint ptr %68 to i64
  %70 = ptrtoint ptr %22 to i64
  %71 = sub i64 %69, %70
  %72 = icmp slt i64 %71, 8
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = tail call ptr @Perl_stack_grow(ptr noundef %22, ptr noundef %22, i64 noundef 1) #5
  br label %75

75:                                               ; preds = %63, %73
  %76 = phi ptr [ %74, %73 ], [ %22, %63 ]
  %77 = tail call ptr @Perl_sv_newmortal() #5
  %78 = getelementptr inbounds ptr, ptr %76, i64 1
  store ptr %77, ptr %78, align 8, !tbaa !12
  %79 = and i64 %65, 4294967295
  tail call void @Perl_sv_setiv(ptr noundef %77, i64 noundef %79) #5
  %80 = load ptr, ptr @PL_stack_max, align 8, !tbaa !12
  %81 = ptrtoint ptr %80 to i64
  %82 = ptrtoint ptr %78 to i64
  %83 = sub i64 %81, %82
  %84 = icmp slt i64 %83, 8
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %78, ptr noundef nonnull %78, i64 noundef 1) #5
  br label %87

87:                                               ; preds = %75, %85
  %88 = phi ptr [ %86, %85 ], [ %78, %75 ]
  %89 = tail call ptr @Perl_sv_newmortal() #5
  %90 = getelementptr inbounds ptr, ptr %88, i64 1
  store ptr %89, ptr %90, align 8, !tbaa !12
  %91 = add i64 %53, 1
  %92 = and i64 %91, 4294967295
  tail call void @Perl_sv_setiv(ptr noundef %89, i64 noundef %92) #5
  %93 = load ptr, ptr @PL_stack_max, align 8, !tbaa !12
  %94 = ptrtoint ptr %93 to i64
  %95 = ptrtoint ptr %90 to i64
  %96 = sub i64 %94, %95
  %97 = icmp slt i64 %96, 8
  br i1 %97, label %98, label %100

98:                                               ; preds = %87
  %99 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %90, ptr noundef nonnull %90, i64 noundef 1) #5
  br label %100

100:                                              ; preds = %87, %98
  %101 = phi ptr [ %99, %98 ], [ %90, %87 ]
  %102 = tail call ptr @Perl_sv_newmortal() #5
  %103 = getelementptr inbounds ptr, ptr %101, i64 1
  store ptr %102, ptr %103, align 8, !tbaa !12
  tail call void @Perl_sv_setiv(ptr noundef %102, i64 noundef 0) #5
  %104 = icmp eq ptr %67, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %107 = getelementptr inbounds ptr, ptr %106, i64 %23
  %108 = getelementptr inbounds ptr, ptr %107, i64 2
  br label %172

109:                                              ; preds = %100, %139
  %110 = phi ptr [ %141, %139 ], [ %103, %100 ]
  %111 = phi i32 [ %151, %139 ], [ 0, %100 ]
  %112 = phi i32 [ %140, %139 ], [ 2, %100 ]
  %113 = zext i32 %111 to i64
  %114 = getelementptr inbounds ptr, ptr %67, i64 %113
  br label %115

115:                                              ; preds = %115, %109
  %116 = phi ptr [ %114, %109 ], [ %118, %115 ]
  %117 = phi i32 [ 3, %109 ], [ %120, %115 ]
  %118 = load ptr, ptr %116, align 8, !tbaa !12
  %119 = icmp eq ptr %118, null
  %120 = add nuw nsw i32 %117, 1
  br i1 %119, label %121, label %115, !llvm.loop !34

121:                                              ; preds = %115
  %122 = icmp ult i32 %112, %117
  br i1 %122, label %123, label %139

123:                                              ; preds = %121, %133
  %124 = phi ptr [ %136, %133 ], [ %110, %121 ]
  %125 = phi i32 [ %137, %133 ], [ %112, %121 ]
  %126 = load ptr, ptr @PL_stack_max, align 8, !tbaa !12
  %127 = ptrtoint ptr %126 to i64
  %128 = ptrtoint ptr %124 to i64
  %129 = sub i64 %127, %128
  %130 = icmp slt i64 %129, 8
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = tail call ptr @Perl_stack_grow(ptr noundef %124, ptr noundef %124, i64 noundef 1) #5
  br label %133

133:                                              ; preds = %123, %131
  %134 = phi ptr [ %132, %131 ], [ %124, %123 ]
  %135 = tail call ptr @Perl_sv_newmortal() #5
  %136 = getelementptr inbounds ptr, ptr %134, i64 1
  store ptr %135, ptr %136, align 8, !tbaa !12
  tail call void @Perl_sv_setiv(ptr noundef %135, i64 noundef 0) #5
  %137 = add i32 %125, 1
  %138 = icmp eq i32 %137, %117
  br i1 %138, label %139, label %123, !llvm.loop !35

139:                                              ; preds = %133, %121
  %140 = phi i32 [ %112, %121 ], [ %117, %133 ]
  %141 = phi ptr [ %110, %121 ], [ %136, %133 ]
  %142 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %143 = add nsw i32 %117, %7
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds ptr, ptr %142, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !12
  %147 = load ptr, ptr %146, align 8, !tbaa !21
  %148 = getelementptr inbounds %struct.xpviv, ptr %147, i64 0, i32 4
  %149 = load i64, ptr %148, align 8, !tbaa !11
  %150 = add nsw i64 %149, 1
  store i64 %150, ptr %148, align 8, !tbaa !11
  %151 = add i32 %111, 1
  %152 = icmp ugt i32 %151, %54
  br i1 %152, label %153, label %109, !llvm.loop !36

153:                                              ; preds = %139
  %154 = and i64 %53, 4294967295
  %155 = getelementptr ptr, ptr %142, i64 %8
  %156 = getelementptr ptr, ptr %155, i64 4
  %157 = load ptr, ptr %156, align 8, !tbaa !12
  %158 = load ptr, ptr %157, align 8, !tbaa !21
  %159 = getelementptr inbounds %struct.xpviv, ptr %158, i64 0, i32 4
  %160 = load i64, ptr %159, align 8, !tbaa !11
  %161 = add nuw nsw i64 %154, 1
  %162 = sub i64 %161, %160
  %163 = getelementptr ptr, ptr %155, i64 3
  %164 = load ptr, ptr %163, align 8, !tbaa !12
  %165 = load ptr, ptr %164, align 8, !tbaa !21
  %166 = getelementptr inbounds %struct.xpviv, ptr %165, i64 0, i32 4
  store i64 %162, ptr %166, align 8, !tbaa !11
  %167 = getelementptr inbounds ptr, ptr %142, i64 %23
  %168 = sext i32 %140 to i64
  %169 = getelementptr inbounds ptr, ptr %167, i64 %168
  br label %172

170:                                              ; preds = %37
  %171 = getelementptr inbounds ptr, ptr %24, i64 -1
  br label %172

172:                                              ; preds = %105, %153, %170
  %173 = phi ptr [ %171, %170 ], [ %108, %105 ], [ %169, %153 ]
  store ptr %173, ptr @PL_stack_sp, align 8, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Hash__Util_bucket_array(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %6 = load i32, ptr %4, align 4, !tbaa !13
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.26) #5
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi ptr [ %17, %16 ], [ %7, %1 ]
  %20 = shl i64 %13, 29
  %21 = ashr i64 %20, 32
  %22 = sub nsw i64 0, %21
  %23 = getelementptr inbounds ptr, ptr %3, i64 %22
  %24 = sext i32 %8 to i64
  %25 = getelementptr inbounds ptr, ptr %19, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !12
  %27 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !14
  %29 = and i32 %28, 2048
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !11
  %34 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !14
  %36 = and i32 %35, 14680319
  %37 = icmp eq i32 %36, 12
  br i1 %37, label %50, label %38

38:                                               ; preds = %31, %18
  %39 = and i32 %28, 65280
  %40 = icmp ne i32 %39, 0
  %41 = and i32 %28, 255
  %42 = icmp eq i32 %41, 8
  %43 = or i1 %40, %42
  %44 = and i32 %28, 16777471
  %45 = icmp eq i32 %44, 16777226
  %46 = or i1 %45, %43
  %47 = load ptr, ptr @PL_strtab, align 8
  %48 = icmp eq ptr %47, null
  %49 = select i1 %46, i1 true, i1 %48
  br i1 %49, label %174, label %50

50:                                               ; preds = %38, %31
  %51 = phi ptr [ %33, %31 ], [ %47, %38 ]
  %52 = getelementptr inbounds %struct.hv, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !11
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = getelementptr inbounds ptr, ptr %25, i64 -1
  br label %176

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.hv, ptr %51, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !26
  %60 = and i32 %59, 14680064
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.27) #5
  br label %63

63:                                               ; preds = %62, %57
  %64 = tail call ptr @Perl_newSV_type(i32 noundef 11) #5
  %65 = load ptr, ptr %51, align 8, !tbaa !28
  %66 = getelementptr inbounds %struct.xpvhv, ptr %65, i64 0, i32 3
  %67 = load i64, ptr %66, align 8, !tbaa !29
  %68 = trunc i64 %67 to i32
  %69 = load ptr, ptr @PL_stack_max, align 8, !tbaa !12
  %70 = ptrtoint ptr %69 to i64
  %71 = ptrtoint ptr %23 to i64
  %72 = sub i64 %70, %71
  %73 = icmp slt i64 %72, 8
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = tail call ptr @Perl_stack_grow(ptr noundef %23, ptr noundef %23, i64 noundef 1) #5
  br label %76

76:                                               ; preds = %63, %74
  %77 = phi ptr [ %75, %74 ], [ %23, %63 ]
  %78 = tail call ptr @Perl_newRV_noinc(ptr noundef %64) #5
  %79 = tail call ptr @Perl_sv_2mortal(ptr noundef %78) #5
  %80 = getelementptr inbounds ptr, ptr %77, i64 1
  store ptr %79, ptr %80, align 8, !tbaa !12
  br label %81

81:                                               ; preds = %76, %158
  %82 = phi i32 [ 0, %76 ], [ %163, %158 ]
  %83 = phi i32 [ 0, %76 ], [ %164, %158 ]
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds ptr, ptr %53, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !12
  %87 = icmp eq ptr %86, null
  br i1 %87, label %158, label %88

88:                                               ; preds = %81, %155
  %89 = phi ptr [ %156, %155 ], [ %86, %81 ]
  %90 = phi ptr [ %103, %155 ], [ null, %81 ]
  %91 = phi i32 [ %102, %155 ], [ %82, %81 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  %92 = icmp eq ptr %90, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = call ptr @Perl_newSV_type(i32 noundef 11) #5
  %95 = icmp eq i32 %91, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = sext i32 %91 to i64
  %98 = call ptr @Perl_newSViv(i64 noundef %97) #5
  call void @Perl_av_push(ptr noundef %64, ptr noundef %98) #5
  br label %99

99:                                               ; preds = %96, %93
  %100 = call ptr @Perl_newRV_noinc(ptr noundef %94) #5
  call void @Perl_av_push(ptr noundef %64, ptr noundef %100) #5
  br label %101

101:                                              ; preds = %99, %88
  %102 = phi i32 [ %91, %88 ], [ 0, %99 ]
  %103 = phi ptr [ %90, %88 ], [ %94, %99 ]
  %104 = getelementptr inbounds %struct.he, ptr %89, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !37
  %106 = getelementptr inbounds %struct.hek, ptr %105, i64 0, i32 1
  %107 = load i32, ptr %106, align 4, !tbaa !39
  %108 = icmp eq i32 %107, -2
  %109 = getelementptr inbounds %struct.hek, ptr %105, i64 0, i32 2
  br i1 %108, label %110, label %139

110:                                              ; preds = %101
  %111 = load ptr, ptr %109, align 4, !tbaa !12
  %112 = getelementptr inbounds %struct.sv, ptr %111, i64 0, i32 2
  %113 = load i32, ptr %112, align 4, !tbaa !14
  %114 = and i32 %113, 2097152
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %110
  %117 = call i32 @Perl_mg_get(ptr noundef nonnull %111) #5
  %118 = load i32, ptr %112, align 4, !tbaa !14
  br label %119

119:                                              ; preds = %110, %116
  %120 = phi i32 [ %113, %110 ], [ %118, %116 ]
  %121 = and i32 %120, 2098176
  %122 = icmp eq i32 %121, 1024
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load ptr, ptr %111, align 8, !tbaa !21
  %125 = getelementptr inbounds %struct.xpv, ptr %124, i64 0, i32 2
  %126 = load i64, ptr %125, align 8, !tbaa !22
  store i64 %126, ptr %2, align 8, !tbaa !25
  %127 = getelementptr inbounds %struct.sv, ptr %111, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !11
  br label %133

129:                                              ; preds = %119
  %130 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %111, ptr noundef nonnull %2, i32 noundef 2) #5
  %131 = load i32, ptr %112, align 4, !tbaa !14
  %132 = load i64, ptr %2, align 8, !tbaa !25
  br label %133

133:                                              ; preds = %129, %123
  %134 = phi i64 [ %126, %123 ], [ %132, %129 ]
  %135 = phi i32 [ %120, %123 ], [ %131, %129 ]
  %136 = phi ptr [ %128, %123 ], [ %130, %129 ]
  %137 = lshr i32 %135, 29
  %138 = trunc i32 %137 to i8
  br label %144

139:                                              ; preds = %101
  %140 = sext i32 %107 to i64
  store i64 %140, ptr %2, align 8, !tbaa !25
  %141 = getelementptr inbounds i8, ptr %109, i64 %140
  %142 = getelementptr inbounds i8, ptr %141, i64 1
  %143 = load i8, ptr %142, align 1, !tbaa !11
  br label %144

144:                                              ; preds = %139, %133
  %145 = phi i64 [ %134, %133 ], [ %140, %139 ]
  %146 = phi ptr [ %136, %133 ], [ %109, %139 ]
  %147 = phi i8 [ %138, %133 ], [ %143, %139 ]
  %148 = and i8 %147, 1
  %149 = call ptr @Perl_newSVpvn(ptr noundef %146, i64 noundef %145) #5
  call void @Perl_av_push(ptr noundef %103, ptr noundef %149) #5
  %150 = icmp eq i8 %148, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %144
  %152 = getelementptr inbounds %struct.sv, ptr %149, i64 0, i32 2
  %153 = load i32, ptr %152, align 4, !tbaa !14
  %154 = or i32 %153, 536870912
  store i32 %154, ptr %152, align 4, !tbaa !14
  br label %155

155:                                              ; preds = %151, %144
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  %156 = load ptr, ptr %89, align 8, !tbaa !12
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %88, !llvm.loop !41

158:                                              ; preds = %155, %81
  %159 = phi i32 [ %82, %81 ], [ %102, %155 ]
  %160 = phi ptr [ null, %81 ], [ %103, %155 ]
  %161 = icmp eq ptr %160, null
  %162 = zext i1 %161 to i32
  %163 = add nsw i32 %159, %162
  %164 = add i32 %83, 1
  %165 = icmp ugt i32 %164, %68
  br i1 %165, label %166, label %81, !llvm.loop !42

166:                                              ; preds = %158
  %167 = icmp eq i32 %163, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %166
  %169 = sext i32 %163 to i64
  %170 = call ptr @Perl_newSViv(i64 noundef %169) #5
  call void @Perl_av_push(ptr noundef %64, ptr noundef %170) #5
  br label %171

171:                                              ; preds = %168, %166
  %172 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %173 = getelementptr inbounds ptr, ptr %172, i64 %24
  br label %176

174:                                              ; preds = %38
  %175 = getelementptr inbounds ptr, ptr %25, i64 -1
  br label %176

176:                                              ; preds = %55, %171, %174
  %177 = phi ptr [ %175, %174 ], [ %56, %55 ], [ %173, %171 ]
  store ptr %177, ptr @PL_stack_sp, align 8, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_av_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_hv_iterinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_iternext_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_iterkeysv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_av_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !43
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !43
  br label %7

7:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @S_CvGV(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !44
  %5 = and i32 %4, 32768
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %0) #5
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
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !43
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !43
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #5
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i64 noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds i8, ptr %1, i64 %2
  %5 = load i32, ptr %0, align 4, !tbaa !13
  %6 = trunc i64 %2 to i32
  %7 = add i32 %5, %6
  %8 = icmp sgt i64 %2, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %3, %9
  %10 = phi i32 [ %18, %9 ], [ %7, %3 ]
  %11 = phi ptr [ %15, %9 ], [ %1, %3 ]
  %12 = mul i32 %10, 1025
  %13 = lshr i32 %12, 6
  %14 = xor i32 %13, %12
  %15 = getelementptr inbounds i8, ptr %11, i64 1
  %16 = load i8, ptr %11, align 1, !tbaa !11
  %17 = zext i8 %16 to i32
  %18 = add i32 %14, %17
  %19 = icmp ult ptr %15, %4
  br i1 %19, label %9, label %20, !llvm.loop !46

20:                                               ; preds = %9, %3
  %21 = phi i32 [ %7, %3 ], [ %18, %9 ]
  %22 = mul i32 %21, 1025
  %23 = lshr i32 %22, 6
  %24 = xor i32 %23, %22
  %25 = getelementptr inbounds i8, ptr %0, i64 4
  %26 = load i8, ptr %25, align 1, !tbaa !11
  %27 = zext i8 %26 to i32
  %28 = add i32 %24, %27
  %29 = mul i32 %28, 1025
  %30 = lshr i32 %29, 6
  %31 = xor i32 %30, %29
  %32 = getelementptr inbounds i8, ptr %0, i64 5
  %33 = load i8, ptr %32, align 1, !tbaa !11
  %34 = zext i8 %33 to i32
  %35 = add i32 %31, %34
  %36 = mul i32 %35, 1025
  %37 = lshr i32 %36, 6
  %38 = xor i32 %37, %36
  %39 = getelementptr inbounds i8, ptr %0, i64 6
  %40 = load i8, ptr %39, align 1, !tbaa !11
  %41 = zext i8 %40 to i32
  %42 = add i32 %38, %41
  %43 = mul i32 %42, 1025
  %44 = lshr i32 %43, 6
  %45 = xor i32 %44, %43
  %46 = getelementptr inbounds i8, ptr %0, i64 7
  %47 = load i8, ptr %46, align 1, !tbaa !11
  %48 = zext i8 %47 to i32
  %49 = add i32 %45, %48
  %50 = mul i32 %49, 1025
  %51 = lshr i32 %50, 6
  %52 = xor i32 %51, %50
  %53 = mul i32 %52, 9
  %54 = lshr i32 %53, 11
  %55 = xor i32 %54, %53
  %56 = mul i32 %55, 32769
  ret i32 %56
}

; Function Attrs: optsize
declare void @Perl_sv_dump(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_hv_rand_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_hv_placeholders_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newRV_noinc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"cv", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!15, !10, i64 12}
!15 = !{!"sv", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!19, !7, i64 0}
!19 = !{!"gv", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!20 = distinct !{!20, !17}
!21 = !{!15, !7, i64 0}
!22 = !{!23, !24, i64 16}
!23 = !{!"xpv", !7, i64 0, !8, i64 8, !24, i64 16, !8, i64 24}
!24 = !{!"long", !8, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!27, !10, i64 12}
!27 = !{!"hv", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!28 = !{!27, !7, i64 0}
!29 = !{!30, !24, i64 24}
!30 = !{!"xpvhv", !7, i64 0, !8, i64 8, !24, i64 16, !24, i64 24}
!31 = !{!32, !10, i64 40}
!32 = !{!"xpvhv_aux", !8, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52}
!33 = !{!30, !24, i64 16}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !17}
!36 = distinct !{!36, !17}
!37 = !{!38, !7, i64 8}
!38 = !{!"he", !7, i64 0, !7, i64 8, !8, i64 16}
!39 = !{!40, !10, i64 4}
!40 = !{!"hek", !10, i64 0, !10, i64 4, !8, i64 8}
!41 = distinct !{!41, !17}
!42 = distinct !{!42, !17}
!43 = !{!15, !10, i64 8}
!44 = !{!45, !10, i64 92}
!45 = !{!"xpvcv", !7, i64 0, !8, i64 8, !24, i64 16, !8, i64 24, !7, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !7, i64 64, !8, i64 72, !7, i64 80, !10, i64 88, !10, i64 92, !10, i64 96}
!46 = distinct !{!46, !17}
