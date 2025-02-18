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

; Function Attrs: cold nounwind uwtable
define dso_local void @boot_Hash__Util(ptr noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #4
  %3 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_Hash__Util_all_keys, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #4
  %4 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_Hash__Util_hidden_ref_keys) #4
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.xpvcv, ptr %5, i64 0, i32 5
  store i32 0, ptr %6, align 8, !tbaa !41
  %7 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.5, ptr noundef nonnull @XS_Hash__Util_hidden_ref_keys) #4
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.xpvcv, ptr %8, i64 0, i32 5
  store i32 1, ptr %9, align 8, !tbaa !41
  %10 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_Hash__Util_hv_store, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 0) #4
  %11 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.8, ptr noundef nonnull @XS_Hash__Util_hash_seed, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 0) #4
  %12 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_Hash__Util_hash_value, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 0) #4
  %13 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.12, ptr noundef nonnull @XS_Hash__Util_hash_traversal_mask) #4
  %14 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.13, ptr noundef nonnull @XS_Hash__Util_bucket_info) #4
  %15 = tail call ptr @Perl_newXS_deffile(ptr noundef nonnull @.str.14, ptr noundef nonnull @XS_Hash__Util_bucket_array) #4
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal void @XS_Hash__Util_all_keys(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %5 = load i32, ptr %3, align 4, !tbaa !43
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 24
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.15) #4
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %18 = sext i32 %7 to i64
  %19 = getelementptr inbounds ptr, ptr %17, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !44
  %23 = and i32 %22, 2097152
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %16
  %26 = tail call i32 @Perl_mg_get(ptr noundef %20) #4
  br label %27

27:                                               ; preds = %16, %25
  %28 = load i32, ptr %21, align 4, !tbaa !44
  %29 = and i32 %28, 2048
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !41
  %34 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !44
  %36 = and i32 %35, 255
  %37 = icmp eq i32 %36, 12
  br i1 %37, label %39, label %38

38:                                               ; preds = %31, %27
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.17) #4
  br label %39

39:                                               ; preds = %31, %38
  %40 = phi ptr [ undef, %38 ], [ %33, %31 ]
  %41 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %42 = getelementptr ptr, ptr %41, i64 %8
  %43 = getelementptr ptr, ptr %42, i64 2
  %44 = load ptr, ptr %43, align 8, !tbaa !42
  %45 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !44
  %47 = and i32 %46, 2097152
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %39
  %50 = tail call i32 @Perl_mg_get(ptr noundef %44) #4
  br label %51

51:                                               ; preds = %39, %49
  %52 = load i32, ptr %45, align 4, !tbaa !44
  %53 = and i32 %52, 2048
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !41
  %58 = getelementptr inbounds %struct.sv, ptr %57, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !44
  %60 = and i32 %59, 255
  %61 = icmp eq i32 %60, 11
  br i1 %61, label %63, label %62

62:                                               ; preds = %55, %51
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.19) #4
  br label %63

63:                                               ; preds = %55, %62
  %64 = phi ptr [ undef, %62 ], [ %57, %55 ]
  %65 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %66 = getelementptr ptr, ptr %65, i64 %8
  %67 = getelementptr ptr, ptr %66, i64 3
  %68 = load ptr, ptr %67, align 8, !tbaa !42
  %69 = getelementptr inbounds %struct.sv, ptr %68, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !44
  %71 = and i32 %70, 2097152
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %63
  %74 = tail call i32 @Perl_mg_get(ptr noundef %68) #4
  br label %75

75:                                               ; preds = %63, %73
  %76 = load i32, ptr %69, align 4, !tbaa !44
  %77 = and i32 %76, 2048
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.sv, ptr %68, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !41
  %82 = getelementptr inbounds %struct.sv, ptr %81, i64 0, i32 2
  %83 = load i32, ptr %82, align 4, !tbaa !44
  %84 = and i32 %83, 255
  %85 = icmp eq i32 %84, 11
  br i1 %85, label %87, label %86

86:                                               ; preds = %79, %75
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.20) #4
  br label %87

87:                                               ; preds = %79, %86
  %88 = phi ptr [ undef, %86 ], [ %81, %79 ]
  tail call void @Perl_av_clear(ptr noundef %64) #4
  tail call void @Perl_av_clear(ptr noundef %88) #4
  %89 = tail call i32 @Perl_hv_iterinit(ptr noundef %40) #4
  %90 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %40, i32 noundef 1) #4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %107, label %92

92:                                               ; preds = %87, %104
  %93 = phi ptr [ %105, %104 ], [ %90, %87 ]
  %94 = tail call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %93) #4
  %95 = getelementptr inbounds %struct.he, ptr %93, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !41
  %97 = icmp eq ptr %96, @PL_sv_placeholder
  %98 = select i1 %97, ptr %88, ptr %64
  %99 = icmp eq ptr %94, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.sv, ptr %94, i64 0, i32 1
  %102 = load i32, ptr %101, align 8, !tbaa !46
  %103 = add i32 %102, 1
  store i32 %103, ptr %101, align 8, !tbaa !46
  br label %104

104:                                              ; preds = %92, %100
  tail call void @Perl_av_push(ptr noundef %98, ptr noundef %94) #4
  %105 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %40, i32 noundef 1) #4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %92, !llvm.loop !47

107:                                              ; preds = %104, %87
  %108 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %109 = getelementptr inbounds ptr, ptr %108, i64 %18
  store ptr %109, ptr @PL_stack_sp, align 8, !tbaa !42
  ret void
}

declare ptr @Perl_newXS_deffile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal void @XS_Hash__Util_hidden_ref_keys(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %5 = load i32, ptr %3, align 4, !tbaa !43
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = load ptr, ptr %0, align 8, !tbaa !35
  %13 = getelementptr inbounds %struct.xpvcv, ptr %12, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !41
  %15 = and i64 %11, 34359738360
  %16 = icmp eq i64 %15, 8
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #4
  br label %18

18:                                               ; preds = %17, %1
  %19 = shl i64 %11, 29
  %20 = ashr i64 %19, 32
  %21 = sub nsw i64 0, %20
  %22 = getelementptr inbounds ptr, ptr %2, i64 %21
  %23 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %24 = getelementptr ptr, ptr %23, i64 %7
  %25 = getelementptr ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  %27 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !44
  %29 = and i32 %28, 2097152
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %18
  %32 = tail call i32 @Perl_mg_get(ptr noundef %26) #4
  br label %33

33:                                               ; preds = %18, %31
  %34 = load i32, ptr %27, align 4, !tbaa !44
  %35 = and i32 %34, 2048
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.sv, ptr %26, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !41
  %40 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !44
  %42 = and i32 %41, 255
  %43 = icmp eq i32 %42, 12
  br i1 %43, label %61, label %44

44:                                               ; preds = %37, %33
  %45 = load ptr, ptr %0, align 8, !tbaa !35
  %46 = getelementptr inbounds %struct.xpvcv, ptr %45, i64 0, i32 12
  %47 = load i32, ptr %46, align 4, !tbaa !50
  %48 = and i32 %47, 32768
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %0) #4
  br label %55

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.xpvcv, ptr %45, i64 0, i32 7
  %54 = load ptr, ptr %53, align 8, !tbaa !41
  br label %55

55:                                               ; preds = %50, %52
  %56 = phi ptr [ %51, %50 ], [ %54, %52 ]
  %57 = load ptr, ptr %56, align 8, !tbaa !53
  %58 = getelementptr inbounds %struct.xpvgv, ptr %57, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !41
  %60 = getelementptr inbounds %struct.hek, ptr %59, i64 0, i32 2
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.16, ptr noundef nonnull %60, ptr noundef nonnull @.str.17) #4
  br label %61

61:                                               ; preds = %37, %55
  %62 = phi ptr [ undef, %55 ], [ %39, %37 ]
  %63 = tail call i32 @Perl_hv_iterinit(ptr noundef %62) #4
  %64 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %62, i32 noundef 1) #4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %91, label %66

66:                                               ; preds = %61
  %67 = icmp eq i32 %14, 0
  br label %68

68:                                               ; preds = %66, %87
  %69 = phi ptr [ %64, %66 ], [ %89, %87 ]
  %70 = phi ptr [ %22, %66 ], [ %88, %87 ]
  %71 = tail call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %69) #4
  br i1 %67, label %72, label %76

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.he, ptr %69, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !41
  %75 = icmp eq ptr %74, @PL_sv_placeholder
  br i1 %75, label %76, label %87

76:                                               ; preds = %72, %68
  %77 = load ptr, ptr @PL_stack_max, align 8, !tbaa !42
  %78 = ptrtoint ptr %77 to i64
  %79 = ptrtoint ptr %70 to i64
  %80 = sub i64 %78, %79
  %81 = icmp slt i64 %80, 8
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = tail call ptr @Perl_stack_grow(ptr noundef %70, ptr noundef %70, i64 noundef 1) #4
  br label %84

84:                                               ; preds = %76, %82
  %85 = phi ptr [ %83, %82 ], [ %70, %76 ]
  %86 = getelementptr inbounds ptr, ptr %85, i64 1
  store ptr %71, ptr %86, align 8, !tbaa !42
  br label %87

87:                                               ; preds = %84, %72
  %88 = phi ptr [ %86, %84 ], [ %70, %72 ]
  %89 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %62, i32 noundef 1) #4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %68, !llvm.loop !55

91:                                               ; preds = %87, %61
  %92 = phi ptr [ %22, %61 ], [ %88, %87 ]
  store ptr %92, ptr @PL_stack_sp, align 8, !tbaa !42
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Hash__Util_hv_store(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %5 = load i32, ptr %3, align 4, !tbaa !43
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = and i64 %12, 34359738360
  %14 = icmp eq i64 %13, 24
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.21) #4
  br label %16

16:                                               ; preds = %15, %1
  %17 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %18 = getelementptr ptr, ptr %17, i64 %8
  %19 = getelementptr ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = getelementptr ptr, ptr %18, i64 3
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = sext i32 %7 to i64
  %24 = getelementptr inbounds ptr, ptr %17, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !44
  %28 = and i32 %27, 2097152
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %16
  %31 = tail call i32 @Perl_mg_get(ptr noundef %25) #4
  br label %32

32:                                               ; preds = %16, %30
  %33 = load i32, ptr %26, align 4, !tbaa !44
  %34 = and i32 %33, 2048
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !41
  %39 = getelementptr inbounds %struct.sv, ptr %38, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !44
  %41 = and i32 %40, 255
  %42 = icmp eq i32 %41, 12
  br i1 %42, label %44, label %43

43:                                               ; preds = %36, %32
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.17) #4
  br label %44

44:                                               ; preds = %36, %43
  %45 = phi ptr [ undef, %43 ], [ %38, %36 ]
  %46 = icmp eq ptr %22, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !46
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 8, !tbaa !46
  br label %51

51:                                               ; preds = %44, %47
  %52 = tail call ptr @Perl_hv_common(ptr noundef %45, ptr noundef %20, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef %22, i32 noundef 0) #4
  %53 = icmp ne ptr %52, null
  %54 = or i1 %53, %46
  %55 = select i1 %53, ptr @PL_sv_yes, ptr @PL_sv_no
  br i1 %54, label %63, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !46
  %59 = icmp ugt i32 %58, 1
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = add i32 %58, -1
  store i32 %61, ptr %57, align 8, !tbaa !46
  br label %63

62:                                               ; preds = %56
  tail call void @Perl_sv_free2(ptr noundef nonnull %22, i32 noundef %58) #4
  br label %63

63:                                               ; preds = %51, %62, %60
  %64 = phi ptr [ @PL_sv_no, %60 ], [ @PL_sv_no, %62 ], [ %55, %51 ]
  %65 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %66 = getelementptr inbounds ptr, ptr %65, i64 %23
  store ptr %64, ptr %66, align 8, !tbaa !42
  %67 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %68 = getelementptr inbounds ptr, ptr %67, i64 %23
  store ptr %68, ptr @PL_stack_sp, align 8, !tbaa !42
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Hash__Util_hash_seed(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %5 = load i32, ptr %3, align 4, !tbaa !43
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.9) #4
  br label %15

15:                                               ; preds = %14, %1
  %16 = shl i64 %11, 29
  %17 = ashr i64 %16, 32
  %18 = sub nsw i64 0, %17
  %19 = getelementptr inbounds ptr, ptr %2, i64 %18
  %20 = load ptr, ptr @PL_stack_max, align 8, !tbaa !42
  %21 = ptrtoint ptr %20 to i64
  %22 = ptrtoint ptr %19 to i64
  %23 = sub i64 %21, %22
  %24 = icmp slt i64 %23, 8
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = tail call ptr @Perl_stack_grow(ptr noundef %19, ptr noundef %19, i64 noundef 1) #4
  br label %27

27:                                               ; preds = %15, %25
  %28 = phi ptr [ %26, %25 ], [ %19, %15 ]
  %29 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.22, i64 noundef 8) #4
  %30 = tail call ptr @Perl_sv_2mortal(ptr noundef %29) #4
  %31 = getelementptr inbounds ptr, ptr %28, i64 1
  store ptr %30, ptr %31, align 8, !tbaa !42
  %32 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %33 = getelementptr ptr, ptr %32, i64 %7
  %34 = getelementptr ptr, ptr %33, i64 1
  store ptr %34, ptr @PL_stack_sp, align 8, !tbaa !42
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Hash__Util_hash_value(ptr noundef %0) #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %5 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %6 = getelementptr inbounds i32, ptr %5, i64 -1
  store ptr %6, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %7 = load i32, ptr %5, align 4, !tbaa !43
  %8 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %9 = add nsw i32 %7, 1
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %8, i64 %10
  %12 = ptrtoint ptr %4 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.23) #4
  br label %19

19:                                               ; preds = %18, %1
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %21 = sext i32 %9 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  %24 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !44
  %26 = and i32 %25, 2098176
  %27 = icmp eq i32 %26, 1024
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load ptr, ptr %23, align 8, !tbaa !56
  %30 = getelementptr inbounds %struct.xpv, ptr %29, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !57
  store i64 %31, ptr %2, align 8, !tbaa !59
  %32 = getelementptr inbounds %struct.sv, ptr %23, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !41
  br label %36

34:                                               ; preds = %19
  %35 = call ptr @Perl_sv_2pv_flags(ptr noundef %23, ptr noundef nonnull %2, i32 noundef 2) #4
  br label %36

36:                                               ; preds = %34, %28
  %37 = phi ptr [ %33, %28 ], [ %35, %34 ]
  %38 = icmp slt i32 %16, 2
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i64, ptr %2, align 8, !tbaa !59
  %41 = call fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef nonnull @.str.22, ptr noundef %37, i64 noundef %40)
  br label %72

42:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  %43 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %44 = add nsw i32 %7, 2
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds ptr, ptr %43, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !42
  %48 = getelementptr inbounds %struct.sv, ptr %47, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !44
  %50 = and i32 %49, 2098176
  %51 = icmp eq i32 %50, 1024
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load ptr, ptr %47, align 8, !tbaa !56
  %54 = getelementptr inbounds %struct.xpv, ptr %53, i64 0, i32 2
  %55 = load i64, ptr %54, align 8, !tbaa !57
  store i64 %55, ptr %3, align 8, !tbaa !59
  %56 = getelementptr inbounds %struct.sv, ptr %47, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !41
  br label %60

58:                                               ; preds = %42
  %59 = call ptr @Perl_sv_2pv_flags(ptr noundef %47, ptr noundef nonnull %3, i32 noundef 2) #4
  br label %60

60:                                               ; preds = %58, %52
  %61 = phi ptr [ %57, %52 ], [ %59, %58 ]
  %62 = load i64, ptr %3, align 8, !tbaa !59
  %63 = icmp ult i64 %62, 8
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %66 = getelementptr inbounds ptr, ptr %65, i64 %45
  %67 = load ptr, ptr %66, align 8, !tbaa !42
  call void @Perl_sv_dump(ptr noundef %67) #4
  %68 = load i64, ptr %3, align 8, !tbaa !59
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.24, i32 noundef 8, i64 noundef %68) #4
  br label %69

69:                                               ; preds = %64, %60
  %70 = load i64, ptr %2, align 8, !tbaa !59
  %71 = call fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr noundef %61, ptr noundef %37, i64 noundef %70)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  br label %72

72:                                               ; preds = %39, %69
  %73 = phi i32 [ %41, %39 ], [ %71, %69 ]
  %74 = zext i32 %73 to i64
  %75 = call ptr @Perl_newSVuv(i64 noundef %74) #4
  %76 = call ptr @Perl_sv_2mortal(ptr noundef %75) #4
  %77 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %78 = getelementptr inbounds ptr, ptr %77, i64 %21
  store ptr %76, ptr %78, align 8, !tbaa !42
  %79 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %80 = getelementptr inbounds ptr, ptr %79, i64 %21
  store ptr %80, ptr @PL_stack_sp, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Hash__Util_hash_traversal_mask(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %5 = load i32, ptr %3, align 4, !tbaa !43
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %7 = add nsw i32 %5, 1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds ptr, ptr %6, i64 %8
  %10 = ptrtoint ptr %2 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.25) #4
  br label %17

17:                                               ; preds = %16, %1
  %18 = shl i64 %12, 29
  %19 = ashr i64 %18, 32
  %20 = sub nsw i64 0, %19
  %21 = getelementptr inbounds ptr, ptr %2, i64 %20
  %22 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %23 = sext i32 %7 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !44
  %28 = and i32 %27, 2048
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %78, label %30

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !41
  %33 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !44
  %35 = and i32 %34, 14680319
  %36 = icmp eq i32 %35, 12
  br i1 %36, label %37, label %78

37:                                               ; preds = %30
  %38 = icmp sgt i32 %14, 1
  br i1 %38, label %39, label %56

39:                                               ; preds = %37
  %40 = getelementptr ptr, ptr %22, i64 %8
  %41 = getelementptr ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8, !tbaa !42
  %43 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !44
  %45 = and i32 %44, -2145386240
  %46 = icmp eq i32 %45, -2147483392
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load ptr, ptr %42, align 8, !tbaa !56
  %49 = getelementptr inbounds %struct.xpvuv, ptr %48, i64 0, i32 4
  %50 = load i64, ptr %49, align 8, !tbaa !41
  br label %53

51:                                               ; preds = %39
  %52 = tail call i64 @Perl_sv_2uv_flags(ptr noundef %42, i32 noundef 2) #4
  br label %53

53:                                               ; preds = %51, %47
  %54 = phi i64 [ %50, %47 ], [ %52, %51 ]
  %55 = trunc i64 %54 to i32
  tail call void @Perl_hv_rand_set(ptr noundef %32, i32 noundef %55) #4
  br label %56

56:                                               ; preds = %53, %37
  %57 = load i32, ptr %33, align 4, !tbaa !60
  %58 = and i32 %57, 33554432
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.hv, ptr %32, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !41
  %63 = load ptr, ptr %32, align 8, !tbaa !62
  %64 = getelementptr inbounds %struct.xpvhv, ptr %63, i64 0, i32 3
  %65 = load i64, ptr %64, align 8, !tbaa !63
  %66 = getelementptr ptr, ptr %62, i64 %65
  %67 = getelementptr ptr, ptr %66, i64 6
  %68 = load i32, ptr %67, align 8, !tbaa !65
  %69 = zext i32 %68 to i64
  %70 = tail call ptr @Perl_newSVuv(i64 noundef %69) #4
  %71 = tail call ptr @Perl_sv_2mortal(ptr noundef %70) #4
  br label %72

72:                                               ; preds = %56, %60
  %73 = phi ptr [ %71, %60 ], [ @PL_sv_undef, %56 ]
  %74 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %75 = getelementptr inbounds ptr, ptr %74, i64 %23
  store ptr %73, ptr %75, align 8, !tbaa !42
  %76 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %77 = getelementptr inbounds ptr, ptr %76, i64 %23
  br label %78

78:                                               ; preds = %17, %30, %72
  %79 = phi ptr [ %77, %72 ], [ %21, %30 ], [ %21, %17 ]
  store ptr %79, ptr @PL_stack_sp, align 8, !tbaa !42
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Hash__Util_bucket_info(ptr noundef %0) #0 !prof !34 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %5 = load i32, ptr %3, align 4, !tbaa !43
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
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
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.26) #4
  br label %16

16:                                               ; preds = %15, %1
  %17 = shl i64 %12, 29
  %18 = ashr i64 %17, 32
  %19 = sub nsw i64 0, %18
  %20 = getelementptr inbounds ptr, ptr %2, i64 %19
  %21 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %22 = sext i32 %7 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !44
  %27 = and i32 %26, 2048
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %16
  %30 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !41
  %32 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !44
  %34 = and i32 %33, 14680319
  %35 = icmp eq i32 %34, 12
  br i1 %35, label %47, label %36

36:                                               ; preds = %29, %16
  %37 = and i32 %26, 65280
  %38 = icmp ne i32 %37, 0
  %39 = and i32 %26, 255
  %40 = icmp eq i32 %39, 8
  %41 = or i1 %38, %40
  %42 = and i32 %26, 16777471
  %43 = icmp eq i32 %42, 16777226
  %44 = or i1 %43, %41
  %45 = load ptr, ptr @PL_strtab, align 8
  %46 = select i1 %44, ptr null, ptr %45
  br label %47

47:                                               ; preds = %36, %29
  %48 = phi ptr [ %31, %29 ], [ %46, %36 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %171, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %48, align 8, !tbaa !62
  %52 = getelementptr inbounds %struct.xpvhv, ptr %51, i64 0, i32 3
  %53 = load i64, ptr %52, align 8, !tbaa !63
  %54 = trunc i64 %53 to i32
  %55 = getelementptr inbounds %struct.xpvhv, ptr %51, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !67
  %57 = getelementptr inbounds %struct.xpvmg, ptr %51, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !41
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %50
  %61 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %48) #4
  %62 = zext i32 %61 to i64
  br label %63

63:                                               ; preds = %50, %60
  %64 = phi i64 [ %62, %60 ], [ 0, %50 ]
  %65 = sub i64 %56, %64
  %66 = getelementptr inbounds %struct.hv, ptr %48, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !41
  %68 = load ptr, ptr @PL_stack_max, align 8, !tbaa !42
  %69 = ptrtoint ptr %68 to i64
  %70 = ptrtoint ptr %20 to i64
  %71 = sub i64 %69, %70
  %72 = icmp slt i64 %71, 8
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = tail call ptr @Perl_stack_grow(ptr noundef %20, ptr noundef %20, i64 noundef 1) #4
  br label %75

75:                                               ; preds = %63, %73
  %76 = phi ptr [ %74, %73 ], [ %20, %63 ]
  %77 = tail call ptr @Perl_sv_newmortal() #4
  %78 = getelementptr inbounds ptr, ptr %76, i64 1
  store ptr %77, ptr %78, align 8, !tbaa !42
  %79 = and i64 %65, 4294967295
  tail call void @Perl_sv_setiv(ptr noundef %77, i64 noundef %79) #4
  %80 = load ptr, ptr @PL_stack_max, align 8, !tbaa !42
  %81 = ptrtoint ptr %80 to i64
  %82 = ptrtoint ptr %78 to i64
  %83 = sub i64 %81, %82
  %84 = icmp slt i64 %83, 8
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %78, ptr noundef nonnull %78, i64 noundef 1) #4
  br label %87

87:                                               ; preds = %75, %85
  %88 = phi ptr [ %86, %85 ], [ %78, %75 ]
  %89 = tail call ptr @Perl_sv_newmortal() #4
  %90 = getelementptr inbounds ptr, ptr %88, i64 1
  store ptr %89, ptr %90, align 8, !tbaa !42
  %91 = add i64 %53, 1
  %92 = and i64 %91, 4294967295
  tail call void @Perl_sv_setiv(ptr noundef %89, i64 noundef %92) #4
  %93 = load ptr, ptr @PL_stack_max, align 8, !tbaa !42
  %94 = ptrtoint ptr %93 to i64
  %95 = ptrtoint ptr %90 to i64
  %96 = sub i64 %94, %95
  %97 = icmp slt i64 %96, 8
  br i1 %97, label %98, label %100

98:                                               ; preds = %87
  %99 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %90, ptr noundef nonnull %90, i64 noundef 1) #4
  br label %100

100:                                              ; preds = %87, %98
  %101 = phi ptr [ %99, %98 ], [ %90, %87 ]
  %102 = tail call ptr @Perl_sv_newmortal() #4
  %103 = getelementptr inbounds ptr, ptr %101, i64 1
  store ptr %102, ptr %103, align 8, !tbaa !42
  tail call void @Perl_sv_setiv(ptr noundef %102, i64 noundef 0) #4
  %104 = icmp eq ptr %67, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %107 = getelementptr inbounds ptr, ptr %106, i64 %22
  %108 = getelementptr inbounds ptr, ptr %107, i64 2
  br label %173

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
  %118 = load ptr, ptr %116, align 8, !tbaa !42
  %119 = icmp eq ptr %118, null
  %120 = add nuw nsw i32 %117, 1
  br i1 %119, label %121, label %115, !llvm.loop !68

121:                                              ; preds = %115
  %122 = icmp ult i32 %112, %117
  br i1 %122, label %123, label %139

123:                                              ; preds = %121, %133
  %124 = phi ptr [ %136, %133 ], [ %110, %121 ]
  %125 = phi i32 [ %137, %133 ], [ %112, %121 ]
  %126 = load ptr, ptr @PL_stack_max, align 8, !tbaa !42
  %127 = ptrtoint ptr %126 to i64
  %128 = ptrtoint ptr %124 to i64
  %129 = sub i64 %127, %128
  %130 = icmp slt i64 %129, 8
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = tail call ptr @Perl_stack_grow(ptr noundef %124, ptr noundef %124, i64 noundef 1) #4
  br label %133

133:                                              ; preds = %123, %131
  %134 = phi ptr [ %132, %131 ], [ %124, %123 ]
  %135 = tail call ptr @Perl_sv_newmortal() #4
  %136 = getelementptr inbounds ptr, ptr %134, i64 1
  store ptr %135, ptr %136, align 8, !tbaa !42
  tail call void @Perl_sv_setiv(ptr noundef %135, i64 noundef 0) #4
  %137 = add i32 %125, 1
  %138 = icmp eq i32 %137, %117
  br i1 %138, label %139, label %123, !llvm.loop !69

139:                                              ; preds = %133, %121
  %140 = phi i32 [ %112, %121 ], [ %117, %133 ]
  %141 = phi ptr [ %110, %121 ], [ %136, %133 ]
  %142 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %143 = add nsw i32 %117, %7
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds ptr, ptr %142, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !42
  %147 = load ptr, ptr %146, align 8, !tbaa !56
  %148 = getelementptr inbounds %struct.xpviv, ptr %147, i64 0, i32 4
  %149 = load i64, ptr %148, align 8, !tbaa !41
  %150 = add nsw i64 %149, 1
  store i64 %150, ptr %148, align 8, !tbaa !41
  %151 = add i32 %111, 1
  %152 = icmp ugt i32 %151, %54
  br i1 %152, label %153, label %109, !llvm.loop !70

153:                                              ; preds = %139
  %154 = and i64 %53, 4294967295
  %155 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %156 = getelementptr ptr, ptr %155, i64 %8
  %157 = getelementptr ptr, ptr %156, i64 4
  %158 = load ptr, ptr %157, align 8, !tbaa !42
  %159 = load ptr, ptr %158, align 8, !tbaa !56
  %160 = getelementptr inbounds %struct.xpviv, ptr %159, i64 0, i32 4
  %161 = load i64, ptr %160, align 8, !tbaa !41
  %162 = add nuw nsw i64 %154, 1
  %163 = sub i64 %162, %161
  %164 = getelementptr ptr, ptr %156, i64 3
  %165 = load ptr, ptr %164, align 8, !tbaa !42
  %166 = load ptr, ptr %165, align 8, !tbaa !56
  %167 = getelementptr inbounds %struct.xpviv, ptr %166, i64 0, i32 4
  store i64 %163, ptr %167, align 8, !tbaa !41
  %168 = getelementptr inbounds ptr, ptr %155, i64 %22
  %169 = sext i32 %140 to i64
  %170 = getelementptr inbounds ptr, ptr %168, i64 %169
  br label %173

171:                                              ; preds = %47
  %172 = getelementptr inbounds ptr, ptr %23, i64 -1
  br label %173

173:                                              ; preds = %105, %153, %171
  %174 = phi ptr [ %172, %171 ], [ %108, %105 ], [ %170, %153 ]
  store ptr %174, ptr @PL_stack_sp, align 8, !tbaa !42
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @XS_Hash__Util_bucket_array(ptr noundef %0) #0 !prof !34 {
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !42
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !42
  %6 = load i32, ptr %4, align 4, !tbaa !43
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = and i64 %13, 34359738360
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.26) #4
  br label %17

17:                                               ; preds = %16, %1
  %18 = shl i64 %13, 29
  %19 = ashr i64 %18, 32
  %20 = sub nsw i64 0, %19
  %21 = getelementptr inbounds ptr, ptr %3, i64 %20
  %22 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %23 = sext i32 %8 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !44
  %28 = and i32 %27, 2048
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !41
  %33 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !44
  %35 = and i32 %34, 14680319
  %36 = icmp eq i32 %35, 12
  br i1 %36, label %48, label %37

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
  %47 = select i1 %45, ptr null, ptr %46
  br label %48

48:                                               ; preds = %37, %30
  %49 = phi ptr [ %32, %30 ], [ %47, %37 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %170, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.hv, ptr %49, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !41
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = getelementptr inbounds ptr, ptr %24, i64 -1
  br label %172

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.hv, ptr %49, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !60
  %60 = and i32 %59, 14680064
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.27) #4
  br label %63

63:                                               ; preds = %62, %57
  %64 = tail call ptr @Perl_newSV_type(i32 noundef 11) #4
  %65 = load ptr, ptr %49, align 8, !tbaa !62
  %66 = getelementptr inbounds %struct.xpvhv, ptr %65, i64 0, i32 3
  %67 = load i64, ptr %66, align 8, !tbaa !63
  %68 = trunc i64 %67 to i32
  %69 = load ptr, ptr @PL_stack_max, align 8, !tbaa !42
  %70 = ptrtoint ptr %69 to i64
  %71 = ptrtoint ptr %21 to i64
  %72 = sub i64 %70, %71
  %73 = icmp slt i64 %72, 8
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = tail call ptr @Perl_stack_grow(ptr noundef %21, ptr noundef %21, i64 noundef 1) #4
  br label %76

76:                                               ; preds = %63, %74
  %77 = phi ptr [ %75, %74 ], [ %21, %63 ]
  %78 = tail call ptr @Perl_newRV_noinc(ptr noundef %64) #4
  %79 = tail call ptr @Perl_sv_2mortal(ptr noundef %78) #4
  %80 = getelementptr inbounds ptr, ptr %77, i64 1
  store ptr %79, ptr %80, align 8, !tbaa !42
  br label %81

81:                                               ; preds = %76, %154
  %82 = phi i32 [ 0, %76 ], [ %159, %154 ]
  %83 = phi i32 [ 0, %76 ], [ %160, %154 ]
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds ptr, ptr %53, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !42
  %87 = icmp eq ptr %86, null
  br i1 %87, label %154, label %88

88:                                               ; preds = %81, %151
  %89 = phi ptr [ %152, %151 ], [ %86, %81 ]
  %90 = phi ptr [ %103, %151 ], [ null, %81 ]
  %91 = phi i32 [ %102, %151 ], [ %82, %81 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  %92 = icmp eq ptr %90, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = call ptr @Perl_newSV_type(i32 noundef 11) #4
  %95 = icmp eq i32 %91, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = sext i32 %91 to i64
  %98 = call ptr @Perl_newSViv(i64 noundef %97) #4
  call void @Perl_av_push(ptr noundef %64, ptr noundef %98) #4
  br label %99

99:                                               ; preds = %96, %93
  %100 = call ptr @Perl_newRV_noinc(ptr noundef %94) #4
  call void @Perl_av_push(ptr noundef %64, ptr noundef %100) #4
  br label %101

101:                                              ; preds = %99, %88
  %102 = phi i32 [ %91, %88 ], [ 0, %99 ]
  %103 = phi ptr [ %90, %88 ], [ %94, %99 ]
  %104 = getelementptr inbounds %struct.he, ptr %89, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !71
  %106 = getelementptr inbounds %struct.hek, ptr %105, i64 0, i32 1
  %107 = load i32, ptr %106, align 4, !tbaa !73
  %108 = icmp eq i32 %107, -2
  %109 = getelementptr inbounds %struct.hek, ptr %105, i64 0, i32 2
  br i1 %108, label %110, label %135

110:                                              ; preds = %101
  %111 = load ptr, ptr %109, align 4, !tbaa !42
  %112 = getelementptr inbounds %struct.sv, ptr %111, i64 0, i32 2
  %113 = load i32, ptr %112, align 4, !tbaa !44
  %114 = and i32 %113, 2097152
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %110
  %117 = call i32 @Perl_mg_get(ptr noundef %111) #4
  br label %118

118:                                              ; preds = %110, %116
  %119 = load i32, ptr %112, align 4, !tbaa !44
  %120 = and i32 %119, 2098176
  %121 = icmp eq i32 %120, 1024
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load ptr, ptr %111, align 8, !tbaa !56
  %124 = getelementptr inbounds %struct.xpv, ptr %123, i64 0, i32 2
  %125 = load i64, ptr %124, align 8, !tbaa !57
  store i64 %125, ptr %2, align 8, !tbaa !59
  %126 = getelementptr inbounds %struct.sv, ptr %111, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !41
  br label %130

128:                                              ; preds = %118
  %129 = call ptr @Perl_sv_2pv_flags(ptr noundef %111, ptr noundef nonnull %2, i32 noundef 2) #4
  br label %130

130:                                              ; preds = %128, %122
  %131 = phi ptr [ %127, %122 ], [ %129, %128 ]
  %132 = load i32, ptr %112, align 4, !tbaa !44
  %133 = lshr i32 %132, 29
  %134 = trunc i32 %133 to i8
  br label %140

135:                                              ; preds = %101
  %136 = sext i32 %107 to i64
  store i64 %136, ptr %2, align 8, !tbaa !59
  %137 = getelementptr inbounds i8, ptr %109, i64 %136
  %138 = getelementptr inbounds i8, ptr %137, i64 1
  %139 = load i8, ptr %138, align 1, !tbaa !41
  br label %140

140:                                              ; preds = %135, %130
  %141 = phi ptr [ %131, %130 ], [ %109, %135 ]
  %142 = phi i8 [ %134, %130 ], [ %139, %135 ]
  %143 = and i8 %142, 1
  %144 = load i64, ptr %2, align 8, !tbaa !59
  %145 = call ptr @Perl_newSVpvn(ptr noundef %141, i64 noundef %144) #4
  call void @Perl_av_push(ptr noundef %103, ptr noundef %145) #4
  %146 = icmp eq i8 %143, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %140
  %148 = getelementptr inbounds %struct.sv, ptr %145, i64 0, i32 2
  %149 = load i32, ptr %148, align 4, !tbaa !44
  %150 = or i32 %149, 536870912
  store i32 %150, ptr %148, align 4, !tbaa !44
  br label %151

151:                                              ; preds = %147, %140
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  %152 = load ptr, ptr %89, align 8, !tbaa !42
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %88, !llvm.loop !75

154:                                              ; preds = %151, %81
  %155 = phi i32 [ %82, %81 ], [ %102, %151 ]
  %156 = phi ptr [ null, %81 ], [ %103, %151 ]
  %157 = icmp eq ptr %156, null
  %158 = zext i1 %157 to i32
  %159 = add nsw i32 %155, %158
  %160 = add i32 %83, 1
  %161 = icmp ugt i32 %160, %68
  br i1 %161, label %162, label %81, !llvm.loop !76

162:                                              ; preds = %154
  %163 = icmp eq i32 %159, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %162
  %165 = sext i32 %159 to i64
  %166 = call ptr @Perl_newSViv(i64 noundef %165) #4
  call void @Perl_av_push(ptr noundef %64, ptr noundef %166) #4
  br label %167

167:                                              ; preds = %164, %162
  %168 = load ptr, ptr @PL_stack_base, align 8, !tbaa !42
  %169 = getelementptr inbounds ptr, ptr %168, i64 %23
  br label %172

170:                                              ; preds = %48
  %171 = getelementptr inbounds ptr, ptr %24, i64 -1
  br label %172

172:                                              ; preds = %55, %167, %170
  %173 = phi ptr [ %171, %170 ], [ %56, %55 ], [ %169, %167 ]
  store ptr %173, ptr @PL_stack_sp, align 8, !tbaa !42
  ret void
}

declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

declare void @Perl_av_clear(ptr noundef) local_unnamed_addr #2

declare i32 @Perl_hv_iterinit(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_hv_iternext_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_hv_iterkeysv(ptr noundef) local_unnamed_addr #2

declare void @Perl_av_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @S_perl_hash_one_at_a_time_hard(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i64 noundef %2) unnamed_addr #3 !prof !34 {
  %4 = getelementptr inbounds i8, ptr %1, i64 %2
  %5 = load i32, ptr %0, align 4, !tbaa !43
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
  %16 = load i8, ptr %11, align 1, !tbaa !41
  %17 = zext i8 %16 to i32
  %18 = add i32 %14, %17
  %19 = icmp ult ptr %15, %4
  br i1 %19, label %9, label %20, !llvm.loop !77

20:                                               ; preds = %9, %3
  %21 = phi i32 [ %7, %3 ], [ %18, %9 ]
  %22 = mul i32 %21, 1025
  %23 = lshr i32 %22, 6
  %24 = xor i32 %23, %22
  %25 = getelementptr inbounds i8, ptr %0, i64 4
  %26 = load i8, ptr %25, align 1, !tbaa !41
  %27 = zext i8 %26 to i32
  %28 = add i32 %24, %27
  %29 = mul i32 %28, 1025
  %30 = lshr i32 %29, 6
  %31 = xor i32 %30, %29
  %32 = getelementptr inbounds i8, ptr %0, i64 5
  %33 = load i8, ptr %32, align 1, !tbaa !41
  %34 = zext i8 %33 to i32
  %35 = add i32 %31, %34
  %36 = mul i32 %35, 1025
  %37 = lshr i32 %36, 6
  %38 = xor i32 %37, %36
  %39 = getelementptr inbounds i8, ptr %0, i64 6
  %40 = load i8, ptr %39, align 1, !tbaa !41
  %41 = zext i8 %40 to i32
  %42 = add i32 %38, %41
  %43 = mul i32 %42, 1025
  %44 = lshr i32 %43, 6
  %45 = xor i32 %44, %43
  %46 = getelementptr inbounds i8, ptr %0, i64 7
  %47 = load i8, ptr %46, align 1, !tbaa !41
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

declare void @Perl_sv_dump(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #2

declare void @Perl_hv_rand_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Perl_hv_placeholders_get(ptr noundef) local_unnamed_addr #2

declare void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

declare ptr @Perl_newRV_noinc(ptr noundef) local_unnamed_addr #2

declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!35 = !{!36, !37, i64 0}
!36 = !{!"cv", !37, i64 0, !40, i64 8, !40, i64 12, !38, i64 16}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!38, !38, i64 0}
!42 = !{!37, !37, i64 0}
!43 = !{!40, !40, i64 0}
!44 = !{!45, !40, i64 12}
!45 = !{!"sv", !37, i64 0, !40, i64 8, !40, i64 12, !38, i64 16}
!46 = !{!45, !40, i64 8}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!51, !40, i64 92}
!51 = !{!"xpvcv", !37, i64 0, !38, i64 8, !52, i64 16, !38, i64 24, !37, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !37, i64 64, !38, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96}
!52 = !{!"long", !38, i64 0}
!53 = !{!54, !37, i64 0}
!54 = !{!"gv", !37, i64 0, !40, i64 8, !40, i64 12, !38, i64 16}
!55 = distinct !{!55, !48, !49}
!56 = !{!45, !37, i64 0}
!57 = !{!58, !52, i64 16}
!58 = !{!"xpv", !37, i64 0, !38, i64 8, !52, i64 16, !38, i64 24}
!59 = !{!52, !52, i64 0}
!60 = !{!61, !40, i64 12}
!61 = !{!"hv", !37, i64 0, !40, i64 8, !40, i64 12, !38, i64 16}
!62 = !{!61, !37, i64 0}
!63 = !{!64, !52, i64 24}
!64 = !{!"xpvhv", !37, i64 0, !38, i64 8, !52, i64 16, !52, i64 24}
!65 = !{!66, !40, i64 40}
!66 = !{!"xpvhv_aux", !38, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !40, i64 28, !37, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52}
!67 = !{!64, !52, i64 16}
!68 = distinct !{!68, !48, !49}
!69 = distinct !{!69, !48, !49}
!70 = distinct !{!70, !48, !49}
!71 = !{!72, !37, i64 8}
!72 = !{!"he", !37, i64 0, !37, i64 8, !38, i64 16}
!73 = !{!74, !40, i64 4}
!74 = !{!"hek", !40, i64 0, !40, i64 4, !38, i64 8}
!75 = distinct !{!75, !48, !49}
!76 = distinct !{!76, !48, !49}
!77 = distinct !{!77, !48, !49}
