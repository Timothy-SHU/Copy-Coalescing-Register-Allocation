; ModuleID = 'ggc-common.c'
source_filename = "ggc-common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.host_hooks = type { ptr, ptr, ptr, ptr }
%struct.VEC_const_ggc_root_tab_t_base = type { i32, i32, [1 x ptr] }
%struct.VEC_const_ggc_cache_tab_t_base = type { i32, i32, [1 x ptr] }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ggc_cache_tab = type { ptr, i64, i64, ptr, ptr, ptr }
%struct.ptr_data = type { ptr, ptr, ptr, ptr, i64, ptr, i32 }
%struct.traversal_state = type { ptr, ptr, i64, ptr, i64 }
%struct.mmap_info = type { i64, i64, ptr }
%struct.rlimit = type { i64, i64 }

@ggc_force_collect = dso_local local_unnamed_addr global i8 0, align 1
@ggc_protect_identifiers = dso_local local_unnamed_addr global i8 1, align 1
@extra_root_vec = internal unnamed_addr global ptr null, align 8
@extra_cache_vec = internal unnamed_addr global ptr null, align 8
@gt_ggc_deletable_rtab = external local_unnamed_addr constant [0 x ptr], align 8
@gt_ggc_rtab = external constant [0 x ptr], align 8
@gt_ggc_cache_rtab = external local_unnamed_addr constant [0 x ptr], align 8
@.str = private unnamed_addr constant [13 x i8] c"ggc-common.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@ggc_stats = internal unnamed_addr global ptr null, align 8
@saving_htab = internal unnamed_addr global ptr null, align 8
@host_hooks = external local_unnamed_addr constant %struct.host_hooks, align 8
@gt_pch_cache_rtab = external constant [0 x ptr], align 8
@gt_pch_scalar_rtab = external local_unnamed_addr constant [0 x ptr], align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"can't write PCH file: %m\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"can't get position in PCH file: %m\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"can't write padding to PCH file: %m\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"can't read PCH file: %m\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"had to relocate PCH\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"ggc-min-expand\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"ggc-min-heapsize\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ggc_register_root_tab(ptr noundef %0) local_unnamed_addr #0 !prof !56 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call fastcc void @VEC_const_ggc_root_tab_t_heap_safe_push(ptr noundef nonnull %0) #12
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_const_ggc_root_tab_t_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !56 !PGOFuncName !57 {
  tail call fastcc void @VEC_const_ggc_root_tab_t_heap_reserve() #12
  %2 = load ptr, ptr @extra_root_vec, align 8, !tbaa !58
  tail call fastcc void @VEC_const_ggc_root_tab_t_base_quick_push(ptr noundef %2, ptr noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_const_ggc_root_tab_t_heap_reserve() unnamed_addr #0 !prof !56 !PGOFuncName !62 {
  %1 = load ptr, ptr @extra_root_vec, align 8, !tbaa !58
  %2 = tail call fastcc i32 @VEC_const_ggc_root_tab_t_base_space(ptr noundef %1) #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #13
  store ptr %5, ptr @extra_root_vec, align 8, !tbaa !58
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_const_ggc_root_tab_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !56 !PGOFuncName !63 {
  %3 = load i32, ptr %0, align 8, !tbaa !64
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !64
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_const_ggc_root_tab_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_const_ggc_root_tab_t_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !56 !PGOFuncName !67 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_const_ggc_root_tab_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !68
  %6 = load i32, ptr %0, align 8, !tbaa !64
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ggc_register_cache_tab(ptr noundef %0) local_unnamed_addr #0 !prof !56 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call fastcc void @VEC_const_ggc_cache_tab_t_heap_safe_push(ptr noundef nonnull %0) #12
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_const_ggc_cache_tab_t_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !56 !PGOFuncName !69 {
  tail call fastcc void @VEC_const_ggc_cache_tab_t_heap_reserve() #12
  %2 = load ptr, ptr @extra_cache_vec, align 8, !tbaa !58
  tail call fastcc void @VEC_const_ggc_cache_tab_t_base_quick_push(ptr noundef %2, ptr noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_const_ggc_cache_tab_t_heap_reserve() unnamed_addr #0 !prof !56 !PGOFuncName !70 {
  %1 = load ptr, ptr @extra_cache_vec, align 8, !tbaa !58
  %2 = tail call fastcc i32 @VEC_const_ggc_cache_tab_t_base_space(ptr noundef %1) #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #13
  store ptr %5, ptr @extra_cache_vec, align 8, !tbaa !58
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_const_ggc_cache_tab_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !56 !PGOFuncName !71 {
  %3 = load i32, ptr %0, align 8, !tbaa !72
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !72
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_const_ggc_cache_tab_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_const_ggc_cache_tab_t_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !56 !PGOFuncName !74 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_const_ggc_cache_tab_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !75
  %6 = load i32, ptr %0, align 8, !tbaa !72
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ggc_mark_roots() local_unnamed_addr #0 !prof !56 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %3 = load ptr, ptr @gt_ggc_deletable_rtab, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %0, %21
  %6 = phi ptr [ %23, %21 ], [ %3, %0 ]
  %7 = phi ptr [ %22, %21 ], [ @gt_ggc_deletable_rtab, %0 ]
  %8 = load ptr, ptr %6, align 8, !tbaa !76
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %13

10:                                               ; preds = %21, %0
  %11 = load ptr, ptr @gt_ggc_rtab, align 8, !tbaa !58
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %25

13:                                               ; preds = %5, %13
  %14 = phi ptr [ %19, %13 ], [ %8, %5 ]
  %15 = phi ptr [ %18, %13 ], [ %6, %5 ]
  %16 = getelementptr inbounds %struct.ggc_root_tab, ptr %15, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !79
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %14, i8 0, i64 %17, i1 false)
  %18 = getelementptr inbounds %struct.ggc_root_tab, ptr %15, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !76
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %13, !llvm.loop !80

21:                                               ; preds = %13, %5
  %22 = getelementptr inbounds ptr, ptr %7, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  %24 = icmp eq ptr %23, null
  br i1 %24, label %10, label %5, !llvm.loop !82

25:                                               ; preds = %10, %57
  %26 = phi ptr [ %59, %57 ], [ %11, %10 ]
  %27 = phi ptr [ %58, %57 ], [ @gt_ggc_rtab, %10 ]
  %28 = load ptr, ptr %26, align 8, !tbaa !76
  %29 = icmp eq ptr %28, null
  br i1 %29, label %57, label %34

30:                                               ; preds = %57, %10
  %31 = load ptr, ptr @extra_root_vec, align 8
  %32 = call fastcc i32 @VEC_const_ggc_root_tab_t_base_iterate(ptr noundef %31, i32 noundef 0, ptr noundef nonnull %1) #12, !range !83
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %100, label %61

34:                                               ; preds = %25, %53
  %35 = phi ptr [ %54, %53 ], [ %26, %25 ]
  %36 = getelementptr inbounds %struct.ggc_root_tab, ptr %35, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !84
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.ggc_root_tab, ptr %35, i64 0, i32 3
  %41 = getelementptr inbounds %struct.ggc_root_tab, ptr %35, i64 0, i32 2
  br label %42

42:                                               ; preds = %39, %42
  %43 = phi i64 [ 0, %39 ], [ %50, %42 ]
  %44 = load ptr, ptr %40, align 8, !tbaa !85
  %45 = load ptr, ptr %35, align 8, !tbaa !76
  %46 = load i64, ptr %41, align 8, !tbaa !79
  %47 = mul i64 %46, %43
  %48 = getelementptr inbounds i8, ptr %45, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !58
  tail call void %44(ptr noundef %49) #13
  %50 = add nuw i64 %43, 1
  %51 = load i64, ptr %36, align 8, !tbaa !84
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %42, label %53, !llvm.loop !86

53:                                               ; preds = %42, %34
  %54 = getelementptr inbounds %struct.ggc_root_tab, ptr %35, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !76
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %34, !llvm.loop !87

57:                                               ; preds = %53, %25
  %58 = getelementptr inbounds ptr, ptr %27, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !58
  %60 = icmp eq ptr %59, null
  br i1 %60, label %30, label %25, !llvm.loop !88

61:                                               ; preds = %30, %93
  %62 = phi ptr [ %94, %93 ], [ %31, %30 ]
  %63 = phi i64 [ %96, %93 ], [ 0, %30 ]
  %64 = load ptr, ptr %1, align 8, !tbaa !58
  %65 = load ptr, ptr %64, align 8, !tbaa !76
  %66 = icmp eq ptr %65, null
  br i1 %66, label %93, label %67

67:                                               ; preds = %61, %86
  %68 = phi ptr [ %88, %86 ], [ %64, %61 ]
  %69 = getelementptr inbounds %struct.ggc_root_tab, ptr %68, i64 0, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !84
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.ggc_root_tab, ptr %68, i64 0, i32 3
  %74 = getelementptr inbounds %struct.ggc_root_tab, ptr %68, i64 0, i32 2
  br label %75

75:                                               ; preds = %72, %75
  %76 = phi i64 [ 0, %72 ], [ %83, %75 ]
  %77 = load ptr, ptr %73, align 8, !tbaa !85
  %78 = load ptr, ptr %68, align 8, !tbaa !76
  %79 = load i64, ptr %74, align 8, !tbaa !79
  %80 = mul i64 %79, %76
  %81 = getelementptr inbounds i8, ptr %78, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !58
  tail call void %77(ptr noundef %82) #13
  %83 = add nuw i64 %76, 1
  %84 = load i64, ptr %69, align 8, !tbaa !84
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %75, label %86, !llvm.loop !89

86:                                               ; preds = %75, %67
  %87 = phi i64 [ 0, %67 ], [ %83, %75 ]
  %88 = getelementptr inbounds %struct.ggc_root_tab, ptr %68, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !76
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %67, !llvm.loop !90

91:                                               ; preds = %86
  %92 = load ptr, ptr @extra_root_vec, align 8
  br label %93

93:                                               ; preds = %91, %61
  %94 = phi ptr [ %62, %61 ], [ %92, %91 ]
  %95 = phi i64 [ %63, %61 ], [ %87, %91 ]
  %96 = add i64 %95, 1
  %97 = trunc i64 %96 to i32
  %98 = call fastcc i32 @VEC_const_ggc_root_tab_t_base_iterate(ptr noundef %94, i32 noundef %97, ptr noundef nonnull %1) #12, !range !83
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %61, !llvm.loop !91

100:                                              ; preds = %93, %30
  %101 = load i8, ptr @ggc_protect_identifiers, align 1, !tbaa !92
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  tail call void @ggc_mark_stringpool() #13
  br label %104

104:                                              ; preds = %103, %100
  %105 = load ptr, ptr @gt_ggc_cache_rtab, align 8, !tbaa !58
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %111, %104
  %108 = load ptr, ptr @extra_cache_vec, align 8
  %109 = call fastcc i32 @VEC_const_ggc_cache_tab_t_base_iterate(ptr noundef %108, i32 noundef 0, ptr noundef nonnull %2) #12, !range !83
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %124, label %117

111:                                              ; preds = %104, %111
  %112 = phi ptr [ %115, %111 ], [ %105, %104 ]
  %113 = phi ptr [ %114, %111 ], [ @gt_ggc_cache_rtab, %104 ]
  tail call fastcc void @ggc_scan_cache_tab(ptr noundef nonnull %112) #12
  %114 = getelementptr inbounds ptr, ptr %113, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !58
  %116 = icmp eq ptr %115, null
  br i1 %116, label %107, label %111, !llvm.loop !93

117:                                              ; preds = %107, %117
  %118 = phi i32 [ %120, %117 ], [ 0, %107 ]
  %119 = load ptr, ptr %2, align 8, !tbaa !58
  tail call fastcc void @ggc_scan_cache_tab(ptr noundef %119) #12
  %120 = add i32 %118, 1
  %121 = load ptr, ptr @extra_cache_vec, align 8
  %122 = call fastcc i32 @VEC_const_ggc_cache_tab_t_base_iterate(ptr noundef %121, i32 noundef %120, ptr noundef nonnull %2) #12, !range !83
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %117, !llvm.loop !94

124:                                              ; preds = %117, %107
  %125 = load i8, ptr @ggc_protect_identifiers, align 1, !tbaa !92
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  tail call void @ggc_purge_stringpool() #13
  br label %128

128:                                              ; preds = %127, %124
  %129 = tail call i32 @invoke_plugin_callbacks(i32 noundef 7, ptr noundef null) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_const_ggc_root_tab_t_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 !prof !56 !PGOFuncName !95 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !64
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_const_ggc_root_tab_t_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !58
  ret i32 %14
}

; Function Attrs: optsize
declare void @ggc_mark_stringpool() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ggc_scan_cache_tab(ptr noundef %0) unnamed_addr #0 !prof !56 !PGOFuncName !96 {
  %2 = load ptr, ptr %0, align 8, !tbaa !97
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1, %18
  %5 = phi ptr [ %20, %18 ], [ %2, %1 ]
  %6 = phi ptr [ %19, %18 ], [ %0, %1 ]
  %7 = load ptr, ptr %5, align 8, !tbaa !58
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @ggc_set_mark(ptr noundef nonnull %7) #13
  %11 = load ptr, ptr %6, align 8, !tbaa !97
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  tail call void @htab_traverse_noresize(ptr noundef %12, ptr noundef nonnull @ggc_htab_delete, ptr noundef nonnull %6) #13
  %13 = load ptr, ptr %6, align 8, !tbaa !97
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  %15 = getelementptr inbounds %struct.htab, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !99
  %17 = tail call i32 @ggc_set_mark(ptr noundef %16) #13
  br label %18

18:                                               ; preds = %4, %9
  %19 = getelementptr inbounds %struct.ggc_cache_tab, ptr %6, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !97
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %4, !llvm.loop !101

22:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_const_ggc_cache_tab_t_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 !prof !56 !PGOFuncName !102 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !72
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_const_ggc_cache_tab_t_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !58
  ret i32 %14
}

; Function Attrs: optsize
declare void @ggc_purge_stringpool() local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @invoke_plugin_callbacks(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @htab_traverse_noresize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ggc_htab_delete(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !prof !56 !PGOFuncName !103 {
  %3 = getelementptr inbounds %struct.ggc_cache_tab, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = load ptr, ptr %0, align 8, !tbaa !58
  %6 = tail call i32 %4(ptr noundef %5) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8, !tbaa !97
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  tail call void @htab_clear_slot(ptr noundef %10, ptr noundef nonnull %0) #13
  br label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ggc_cache_tab, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !105
  %14 = load ptr, ptr %0, align 8, !tbaa !58
  tail call void %13(ptr noundef %14) #13
  br label %15

15:                                               ; preds = %11, %8
  ret i32 1
}

; Function Attrs: optsize
declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ggc_alloc_cleared_stat(i64 noundef %0) local_unnamed_addr #0 !prof !106 {
  %2 = tail call ptr @ggc_alloc_stat(i64 noundef %0) #13
  tail call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %0, i1 false)
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ggc_realloc_stat(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !107 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6, !prof !108

4:                                                ; preds = %2
  %5 = tail call ptr @ggc_alloc_stat(i64 noundef %1) #13
  br label %11

6:                                                ; preds = %2
  %7 = tail call i64 @ggc_get_size(ptr noundef nonnull %0) #13
  %8 = icmp ult i64 %7, %1
  br i1 %8, label %9, label %11, !prof !109

9:                                                ; preds = %6
  %10 = tail call ptr @ggc_alloc_stat(i64 noundef %1) #13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr nonnull align 1 %0, i64 %7, i1 false)
  tail call void @ggc_free(ptr noundef nonnull %0) #13
  br label %11

11:                                               ; preds = %6, %9, %4
  %12 = phi ptr [ %5, %4 ], [ %10, %9 ], [ %0, %6 ]
  ret ptr %12
}

; Function Attrs: optsize
declare i64 @ggc_get_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ggc_calloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 !prof !110 {
  %3 = mul i64 %1, %0
  %4 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %3) #12
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ggc_splay_alloc(i32 noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 !prof !111 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %5, label %4, !prof !112

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 260, ptr noundef nonnull @.str.1) #13
  br label %5

5:                                                ; preds = %2, %4
  %6 = sext i32 %0 to i64
  %7 = tail call ptr @ggc_alloc_stat(i64 noundef %6) #13
  ret ptr %7
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ggc_splay_dont_free(ptr nocapture noundef readnone %0, ptr noundef readnone %1) local_unnamed_addr #0 !prof !113 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %5, label %4, !prof !114

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 267, ptr noundef nonnull @.str.1) #13
  br label %5

5:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ggc_print_common_statistics(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 !prof !56 {
  store ptr %1, ptr @ggc_stats, align 8, !tbaa !58
  tail call void @ggc_collect() #13
  ret void
}

; Function Attrs: optsize
declare void @ggc_collect() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !56 {
  %5 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %5, label %40, label %6

6:                                                ; preds = %4
  %7 = ptrtoint ptr %0 to i64
  %8 = load ptr, ptr @saving_htab, align 8, !tbaa !58
  %9 = lshr i64 %7, 3
  %10 = trunc i64 %9 to i32
  %11 = tail call ptr @htab_find_slot_with_hash(ptr noundef %8, ptr noundef %0, i32 noundef %10, i32 noundef 1) #13
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.ptr_data, ptr %12, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !115
  %17 = icmp eq ptr %16, %2
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ptr_data, ptr %12, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !117
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %40, label %22

22:                                               ; preds = %18, %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 330, ptr noundef nonnull @.str.1) #13
  br label %40

23:                                               ; preds = %6
  %24 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 56) #13
  store ptr %24, ptr %11, align 8, !tbaa !58
  store ptr %0, ptr %24, align 8, !tbaa !118
  %25 = load ptr, ptr %11, align 8, !tbaa !58
  %26 = getelementptr inbounds %struct.ptr_data, ptr %25, i64 0, i32 2
  store ptr %2, ptr %26, align 8, !tbaa !115
  %27 = load ptr, ptr %11, align 8, !tbaa !58
  %28 = getelementptr inbounds %struct.ptr_data, ptr %27, i64 0, i32 1
  store ptr %1, ptr %28, align 8, !tbaa !117
  %29 = icmp eq ptr %2, @gt_pch_p_S
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %32 = add i64 %31, 1
  br label %35

33:                                               ; preds = %23
  %34 = tail call i64 @ggc_get_size(ptr noundef %0) #13
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i64 [ %34, %33 ], [ %32, %30 ]
  %37 = load ptr, ptr %11, align 8, !tbaa !58
  %38 = getelementptr inbounds %struct.ptr_data, ptr %37, i64 0, i32 4
  store i64 %36, ptr %38, align 8, !tbaa !119
  %39 = getelementptr inbounds %struct.ptr_data, ptr %37, i64 0, i32 6
  store i32 %3, ptr %39, align 8, !tbaa !120
  br label %40

40:                                               ; preds = %4, %22, %18, %35
  %41 = phi i32 [ 1, %35 ], [ 0, %4 ], [ 0, %18 ], [ 0, %22 ]
  ret i32 %41
}

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gt_pch_p_S(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_note_reorder(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 !prof !56 {
  %4 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = ptrtoint ptr %0 to i64
  %7 = load ptr, ptr @saving_htab, align 8, !tbaa !58
  %8 = lshr i64 %6, 3
  %9 = trunc i64 %8 to i32
  %10 = tail call ptr @htab_find_with_hash(ptr noundef %7, ptr noundef %0, i32 noundef %9) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ptr_data, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !117
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 359, ptr noundef nonnull @.str.1) #13
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.ptr_data, ptr %10, i64 0, i32 3
  store ptr %2, ptr %18, align 8, !tbaa !121
  br label %19

19:                                               ; preds = %3, %17
  ret void
}

; Function Attrs: optsize
declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_save(ptr noundef %0) local_unnamed_addr #0 !prof !56 {
  %2 = alloca %struct.traversal_state, align 8
  %3 = alloca %struct.mmap_info, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  %4 = load ptr, ptr getelementptr inbounds (%struct.host_hooks, ptr @host_hooks, i64 0, i32 3), align 8, !tbaa !122
  %5 = tail call i64 %4() #13
  tail call void @gt_pch_save_stringpool() #13
  %6 = tail call ptr @htab_create(i64 noundef 50000, ptr noundef nonnull @saving_htab_hash, ptr noundef nonnull @saving_htab_eq, ptr noundef nonnull @free) #13
  store ptr %6, ptr @saving_htab, align 8, !tbaa !58
  %7 = load ptr, ptr @gt_ggc_rtab, align 8, !tbaa !58
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1, %40
  %10 = phi ptr [ %42, %40 ], [ %7, %1 ]
  %11 = phi ptr [ %41, %40 ], [ @gt_ggc_rtab, %1 ]
  %12 = load ptr, ptr %10, align 8, !tbaa !76
  %13 = icmp eq ptr %12, null
  br i1 %13, label %40, label %17

14:                                               ; preds = %40, %1
  %15 = load ptr, ptr @gt_pch_cache_rtab, align 8, !tbaa !58
  %16 = icmp eq ptr %15, null
  br i1 %16, label %76, label %44

17:                                               ; preds = %9, %36
  %18 = phi ptr [ %37, %36 ], [ %10, %9 ]
  %19 = getelementptr inbounds %struct.ggc_root_tab, ptr %18, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !84
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ggc_root_tab, ptr %18, i64 0, i32 4
  %24 = getelementptr inbounds %struct.ggc_root_tab, ptr %18, i64 0, i32 2
  br label %25

25:                                               ; preds = %22, %25
  %26 = phi i64 [ 0, %22 ], [ %33, %25 ]
  %27 = load ptr, ptr %23, align 8, !tbaa !124
  %28 = load ptr, ptr %18, align 8, !tbaa !76
  %29 = load i64, ptr %24, align 8, !tbaa !79
  %30 = mul i64 %29, %26
  %31 = getelementptr inbounds i8, ptr %28, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !58
  tail call void %27(ptr noundef %32) #13
  %33 = add nuw i64 %26, 1
  %34 = load i64, ptr %19, align 8, !tbaa !84
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %25, label %36, !llvm.loop !125

36:                                               ; preds = %25, %17
  %37 = getelementptr inbounds %struct.ggc_root_tab, ptr %18, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !76
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %17, !llvm.loop !126

40:                                               ; preds = %36, %9
  %41 = getelementptr inbounds ptr, ptr %11, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !58
  %43 = icmp eq ptr %42, null
  br i1 %43, label %14, label %9, !llvm.loop !127

44:                                               ; preds = %14, %72
  %45 = phi ptr [ %74, %72 ], [ %15, %14 ]
  %46 = phi ptr [ %73, %72 ], [ @gt_pch_cache_rtab, %14 ]
  %47 = load ptr, ptr %45, align 8, !tbaa !76
  %48 = icmp eq ptr %47, null
  br i1 %48, label %72, label %49

49:                                               ; preds = %44, %68
  %50 = phi ptr [ %69, %68 ], [ %45, %44 ]
  %51 = getelementptr inbounds %struct.ggc_root_tab, ptr %50, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !84
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.ggc_root_tab, ptr %50, i64 0, i32 4
  %56 = getelementptr inbounds %struct.ggc_root_tab, ptr %50, i64 0, i32 2
  br label %57

57:                                               ; preds = %54, %57
  %58 = phi i64 [ 0, %54 ], [ %65, %57 ]
  %59 = load ptr, ptr %55, align 8, !tbaa !124
  %60 = load ptr, ptr %50, align 8, !tbaa !76
  %61 = load i64, ptr %56, align 8, !tbaa !79
  %62 = mul i64 %61, %58
  %63 = getelementptr inbounds i8, ptr %60, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !58
  tail call void %59(ptr noundef %64) #13
  %65 = add nuw i64 %58, 1
  %66 = load i64, ptr %51, align 8, !tbaa !84
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %57, label %68, !llvm.loop !128

68:                                               ; preds = %57, %49
  %69 = getelementptr inbounds %struct.ggc_root_tab, ptr %50, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !76
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %49, !llvm.loop !129

72:                                               ; preds = %68, %44
  %73 = getelementptr inbounds ptr, ptr %46, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !58
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %44, !llvm.loop !130

76:                                               ; preds = %72, %14
  store ptr %0, ptr %2, align 8, !tbaa !131
  %77 = tail call ptr @init_ggc_pch() #13
  %78 = getelementptr inbounds %struct.traversal_state, ptr %2, i64 0, i32 1
  store ptr %77, ptr %78, align 8, !tbaa !133
  %79 = getelementptr inbounds %struct.traversal_state, ptr %2, i64 0, i32 2
  store i64 0, ptr %79, align 8, !tbaa !134
  %80 = load ptr, ptr @saving_htab, align 8, !tbaa !58
  call void @htab_traverse(ptr noundef %80, ptr noundef nonnull @call_count, ptr noundef nonnull %2) #13
  %81 = load ptr, ptr %78, align 8, !tbaa !133
  %82 = call i64 @ggc_pch_total_size(ptr noundef %81) #13
  %83 = getelementptr inbounds %struct.mmap_info, ptr %3, i64 0, i32 1
  store i64 %82, ptr %83, align 8, !tbaa !135
  %84 = load ptr, ptr getelementptr inbounds (%struct.host_hooks, ptr @host_hooks, i64 0, i32 1), align 8, !tbaa !137
  %85 = call i32 @fileno(ptr noundef %0) #12
  %86 = call ptr %84(i64 noundef %82, i32 noundef %85) #13
  %87 = getelementptr inbounds %struct.mmap_info, ptr %3, i64 0, i32 2
  store ptr %86, ptr %87, align 8, !tbaa !138
  %88 = load ptr, ptr %78, align 8, !tbaa !133
  call void @ggc_pch_this_base(ptr noundef %88, ptr noundef %86) #13
  %89 = load i64, ptr %79, align 8, !tbaa !134
  %90 = shl i64 %89, 3
  %91 = call ptr @xmalloc(i64 noundef %90) #13
  %92 = getelementptr inbounds %struct.traversal_state, ptr %2, i64 0, i32 3
  store ptr %91, ptr %92, align 8, !tbaa !139
  %93 = getelementptr inbounds %struct.traversal_state, ptr %2, i64 0, i32 4
  store i64 0, ptr %93, align 8, !tbaa !140
  %94 = load ptr, ptr @saving_htab, align 8, !tbaa !58
  call void @htab_traverse(ptr noundef %94, ptr noundef nonnull @call_alloc, ptr noundef nonnull %2) #13
  %95 = load ptr, ptr %92, align 8, !tbaa !139
  %96 = load i64, ptr %79, align 8, !tbaa !134
  call void @spec_qsort(ptr noundef %95, i64 noundef %96, i64 noundef 8, ptr noundef nonnull @compare_ptr_data) #13
  %97 = load ptr, ptr @gt_pch_scalar_rtab, align 8, !tbaa !58
  %98 = icmp eq ptr %97, null
  br i1 %98, label %120, label %99

99:                                               ; preds = %76, %116
  %100 = phi ptr [ %118, %116 ], [ %97, %76 ]
  %101 = phi ptr [ %117, %116 ], [ @gt_pch_scalar_rtab, %76 ]
  %102 = load ptr, ptr %100, align 8, !tbaa !76
  %103 = icmp eq ptr %102, null
  br i1 %103, label %116, label %104

104:                                              ; preds = %99, %112
  %105 = phi ptr [ %114, %112 ], [ %102, %99 ]
  %106 = phi ptr [ %113, %112 ], [ %100, %99 ]
  %107 = getelementptr inbounds %struct.ggc_root_tab, ptr %106, i64 0, i32 2
  %108 = load i64, ptr %107, align 8, !tbaa !79
  %109 = call i64 @fwrite(ptr noundef nonnull %105, i64 noundef %108, i64 noundef 1, ptr noundef %0) #12
  %110 = icmp eq i64 %109, 1
  br i1 %110, label %112, label %111

111:                                              ; preds = %104
  call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.2) #13
  br label %112

112:                                              ; preds = %104, %111
  %113 = getelementptr inbounds %struct.ggc_root_tab, ptr %106, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !76
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %104, !llvm.loop !141

116:                                              ; preds = %112, %99
  %117 = getelementptr inbounds ptr, ptr %101, i64 1
  %118 = load ptr, ptr %117, align 8, !tbaa !58
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %99, !llvm.loop !142

120:                                              ; preds = %116, %76
  call fastcc void @write_pch_globals(ptr noundef nonnull @gt_ggc_rtab, ptr noundef nonnull %2) #12
  call fastcc void @write_pch_globals(ptr noundef nonnull @gt_pch_cache_rtab, ptr noundef nonnull %2) #12
  %121 = load ptr, ptr %2, align 8, !tbaa !131
  %122 = call i64 @ftell(ptr noundef %121) #12
  %123 = add i64 %122, 24
  %124 = icmp eq i64 %123, -1
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.3) #13
  br label %126

126:                                              ; preds = %125, %120
  %127 = urem i64 %123, %5
  %128 = sub i64 %5, %127
  %129 = icmp eq i64 %127, 0
  %130 = select i1 %129, i64 0, i64 %128
  %131 = add i64 %130, %123
  store i64 %131, ptr %3, align 8, !tbaa !143
  %132 = load ptr, ptr %2, align 8, !tbaa !131
  %133 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 24, i64 noundef 1, ptr noundef %132) #12
  %134 = icmp eq i64 %133, 1
  br i1 %134, label %136, label %135

135:                                              ; preds = %126
  call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.2) #13
  br label %136

136:                                              ; preds = %135, %126
  %137 = load i64, ptr %3, align 8, !tbaa !143
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %136
  %140 = load ptr, ptr %2, align 8, !tbaa !131
  %141 = call i32 @fseek(ptr noundef %140, i64 noundef %137, i32 noundef 0) #12
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.4) #13
  br label %144

144:                                              ; preds = %143, %139, %136
  %145 = load ptr, ptr %78, align 8, !tbaa !133
  %146 = load ptr, ptr %2, align 8, !tbaa !131
  call void @ggc_pch_prepare_write(ptr noundef %145, ptr noundef %146) #13
  %147 = load i64, ptr %79, align 8, !tbaa !134
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %220, label %149

149:                                              ; preds = %144, %216
  %150 = phi i64 [ %170, %216 ], [ 0, %144 ]
  %151 = phi ptr [ %169, %216 ], [ null, %144 ]
  %152 = phi i64 [ %217, %216 ], [ 0, %144 ]
  %153 = load ptr, ptr %92, align 8, !tbaa !139
  %154 = getelementptr inbounds ptr, ptr %153, i64 %152
  %155 = load ptr, ptr %154, align 8, !tbaa !58
  %156 = getelementptr inbounds %struct.ptr_data, ptr %155, i64 0, i32 4
  %157 = load i64, ptr %156, align 8, !tbaa !119
  %158 = icmp ult i64 %150, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %149
  %160 = call ptr @xrealloc(ptr noundef %151, i64 noundef %157) #13
  %161 = load ptr, ptr %92, align 8, !tbaa !139
  %162 = getelementptr inbounds ptr, ptr %161, i64 %152
  %163 = load ptr, ptr %162, align 8, !tbaa !58
  %164 = getelementptr inbounds %struct.ptr_data, ptr %163, i64 0, i32 4
  %165 = load i64, ptr %164, align 8, !tbaa !119
  br label %166

166:                                              ; preds = %159, %149
  %167 = phi i64 [ %165, %159 ], [ %157, %149 ]
  %168 = phi ptr [ %163, %159 ], [ %155, %149 ]
  %169 = phi ptr [ %160, %159 ], [ %151, %149 ]
  %170 = phi i64 [ %157, %159 ], [ %150, %149 ]
  %171 = load ptr, ptr %168, align 8, !tbaa !118
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %169, ptr align 1 %171, i64 %167, i1 false)
  %172 = load ptr, ptr %92, align 8, !tbaa !139
  %173 = getelementptr inbounds ptr, ptr %172, i64 %152
  %174 = load ptr, ptr %173, align 8, !tbaa !58
  %175 = getelementptr inbounds %struct.ptr_data, ptr %174, i64 0, i32 3
  %176 = load ptr, ptr %175, align 8, !tbaa !121
  %177 = icmp eq ptr %176, null
  br i1 %177, label %185, label %178

178:                                              ; preds = %166
  %179 = load ptr, ptr %174, align 8, !tbaa !118
  %180 = getelementptr inbounds %struct.ptr_data, ptr %174, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !117
  call void %176(ptr noundef %179, ptr noundef %181, ptr noundef nonnull @relocate_ptrs, ptr noundef nonnull %2) #13
  %182 = load ptr, ptr %92, align 8, !tbaa !139
  %183 = getelementptr inbounds ptr, ptr %182, i64 %152
  %184 = load ptr, ptr %183, align 8, !tbaa !58
  br label %185

185:                                              ; preds = %178, %166
  %186 = phi ptr [ %184, %178 ], [ %174, %166 ]
  %187 = getelementptr inbounds %struct.ptr_data, ptr %186, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !115
  %189 = load ptr, ptr %186, align 8, !tbaa !118
  %190 = getelementptr inbounds %struct.ptr_data, ptr %186, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !117
  call void %188(ptr noundef %189, ptr noundef %191, ptr noundef nonnull @relocate_ptrs, ptr noundef nonnull %2) #13
  %192 = load ptr, ptr %78, align 8, !tbaa !133
  %193 = load ptr, ptr %2, align 8, !tbaa !131
  %194 = load ptr, ptr %92, align 8, !tbaa !139
  %195 = getelementptr inbounds ptr, ptr %194, i64 %152
  %196 = load ptr, ptr %195, align 8, !tbaa !58
  %197 = load ptr, ptr %196, align 8, !tbaa !118
  %198 = getelementptr inbounds %struct.ptr_data, ptr %196, i64 0, i32 5
  %199 = load ptr, ptr %198, align 8, !tbaa !144
  %200 = getelementptr inbounds %struct.ptr_data, ptr %196, i64 0, i32 4
  %201 = load i64, ptr %200, align 8, !tbaa !119
  %202 = getelementptr inbounds %struct.ptr_data, ptr %196, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !115
  %204 = icmp eq ptr %203, @gt_pch_p_S
  %205 = zext i1 %204 to i8
  call void @ggc_pch_write_object(ptr noundef %192, ptr noundef %193, ptr noundef %197, ptr noundef %199, i64 noundef %201, i8 noundef zeroext %205) #13
  %206 = load ptr, ptr %92, align 8, !tbaa !139
  %207 = getelementptr inbounds ptr, ptr %206, i64 %152
  %208 = load ptr, ptr %207, align 8, !tbaa !58
  %209 = getelementptr inbounds %struct.ptr_data, ptr %208, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !115
  %211 = icmp eq ptr %210, @gt_pch_p_S
  br i1 %211, label %216, label %212

212:                                              ; preds = %185
  %213 = load ptr, ptr %208, align 8, !tbaa !118
  %214 = getelementptr inbounds %struct.ptr_data, ptr %208, i64 0, i32 4
  %215 = load i64, ptr %214, align 8, !tbaa !119
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %213, ptr align 1 %169, i64 %215, i1 false)
  br label %216

216:                                              ; preds = %185, %212
  %217 = add nuw i64 %152, 1
  %218 = load i64, ptr %79, align 8, !tbaa !134
  %219 = icmp ult i64 %217, %218
  br i1 %219, label %149, label %220, !llvm.loop !145

220:                                              ; preds = %216, %144
  %221 = load ptr, ptr %78, align 8, !tbaa !133
  %222 = load ptr, ptr %2, align 8, !tbaa !131
  call void @ggc_pch_finish(ptr noundef %221, ptr noundef %222) #13
  call void @gt_pch_fixup_stringpool() #13
  %223 = load ptr, ptr %92, align 8, !tbaa !139
  call void @free(ptr noundef %223) #12
  %224 = load ptr, ptr @saving_htab, align 8, !tbaa !58
  call void @htab_delete(ptr noundef %224) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #14
  ret void
}

; Function Attrs: optsize
declare void @gt_pch_save_stringpool() local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @saving_htab_hash(ptr nocapture noundef readonly %0) #3 !prof !56 !PGOFuncName !146 {
  %2 = load ptr, ptr %0, align 8, !tbaa !118
  %3 = ptrtoint ptr %2 to i64
  %4 = lshr i64 %3, 3
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @saving_htab_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #3 !prof !56 !PGOFuncName !147 {
  %3 = load ptr, ptr %0, align 8, !tbaa !118
  %4 = icmp eq ptr %3, %1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #8

; Function Attrs: optsize
declare ptr @init_ggc_pch() local_unnamed_addr #4

; Function Attrs: optsize
declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @call_count(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 !prof !56 !PGOFuncName !148 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.traversal_state, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !133
  %6 = load ptr, ptr %3, align 8, !tbaa !118
  %7 = getelementptr inbounds %struct.ptr_data, ptr %3, i64 0, i32 4
  %8 = load i64, ptr %7, align 8, !tbaa !119
  %9 = getelementptr inbounds %struct.ptr_data, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !115
  %11 = icmp eq ptr %10, @gt_pch_p_S
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.ptr_data, ptr %3, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !120
  tail call void @ggc_pch_count_object(ptr noundef %5, ptr noundef %6, i64 noundef %8, i8 noundef zeroext %12, i32 noundef %14) #13
  %15 = getelementptr inbounds %struct.traversal_state, ptr %1, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !134
  %17 = add i64 %16, 1
  store i64 %17, ptr %15, align 8, !tbaa !134
  ret i32 1
}

; Function Attrs: optsize
declare i64 @ggc_pch_total_size(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @ggc_pch_this_base(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @call_alloc(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 !prof !56 !PGOFuncName !149 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.traversal_state, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !133
  %6 = load ptr, ptr %3, align 8, !tbaa !118
  %7 = getelementptr inbounds %struct.ptr_data, ptr %3, i64 0, i32 4
  %8 = load i64, ptr %7, align 8, !tbaa !119
  %9 = getelementptr inbounds %struct.ptr_data, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !115
  %11 = icmp eq ptr %10, @gt_pch_p_S
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.ptr_data, ptr %3, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !120
  %15 = tail call ptr @ggc_pch_alloc_object(ptr noundef %5, ptr noundef %6, i64 noundef %8, i8 noundef zeroext %12, i32 noundef %14) #13
  %16 = getelementptr inbounds %struct.ptr_data, ptr %3, i64 0, i32 5
  store ptr %15, ptr %16, align 8, !tbaa !144
  %17 = getelementptr inbounds %struct.traversal_state, ptr %1, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !139
  %19 = getelementptr inbounds %struct.traversal_state, ptr %1, i64 0, i32 4
  %20 = load i64, ptr %19, align 8, !tbaa !140
  %21 = add i64 %20, 1
  store i64 %21, ptr %19, align 8, !tbaa !140
  %22 = getelementptr inbounds ptr, ptr %18, i64 %20
  store ptr %3, ptr %22, align 8, !tbaa !58
  ret i32 1
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_ptr_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 !prof !56 !PGOFuncName !150 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = load ptr, ptr %1, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.ptr_data, ptr %3, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  %7 = getelementptr inbounds %struct.ptr_data, ptr %4, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !144
  %9 = icmp ugt ptr %6, %8
  %10 = zext i1 %9 to i32
  %11 = icmp ult ptr %6, %8
  %12 = sext i1 %11 to i32
  %13 = add nsw i32 %12, %10
  ret i32 %13
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @fatal_error(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @write_pch_globals(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !56 !PGOFuncName !151 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !58
  %5 = icmp eq ptr %4, null
  br i1 %5, label %53, label %6

6:                                                ; preds = %2, %49
  %7 = phi ptr [ %51, %49 ], [ %4, %2 ]
  %8 = phi ptr [ %50, %49 ], [ %0, %2 ]
  %9 = load ptr, ptr %7, align 8, !tbaa !76
  %10 = icmp eq ptr %9, null
  br i1 %10, label %49, label %11

11:                                               ; preds = %6, %45
  %12 = phi ptr [ %46, %45 ], [ %7, %6 ]
  %13 = getelementptr inbounds %struct.ggc_root_tab, ptr %12, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !84
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %45, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.ggc_root_tab, ptr %12, i64 0, i32 2
  br label %18

18:                                               ; preds = %16, %41
  %19 = phi i64 [ 0, %16 ], [ %42, %41 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %20 = load ptr, ptr %12, align 8, !tbaa !76
  %21 = load i64, ptr %17, align 8, !tbaa !79
  %22 = mul i64 %21, %19
  %23 = getelementptr inbounds i8, ptr %20, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !58
  store ptr %24, ptr %3, align 8, !tbaa !58
  %25 = icmp ult ptr %24, inttoptr (i64 2 to ptr)
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load ptr, ptr %1, align 8, !tbaa !131
  %28 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 8, i64 noundef 1, ptr noundef %27) #12
  %29 = icmp eq i64 %28, 1
  br i1 %29, label %41, label %40

30:                                               ; preds = %18
  %31 = ptrtoint ptr %24 to i64
  %32 = load ptr, ptr @saving_htab, align 8, !tbaa !58
  %33 = lshr i64 %31, 3
  %34 = trunc i64 %33 to i32
  %35 = tail call ptr @htab_find_with_hash(ptr noundef %32, ptr noundef %24, i32 noundef %34) #13
  %36 = getelementptr inbounds %struct.ptr_data, ptr %35, i64 0, i32 5
  %37 = load ptr, ptr %1, align 8, !tbaa !131
  %38 = tail call i64 @fwrite(ptr noundef nonnull %36, i64 noundef 8, i64 noundef 1, ptr noundef %37) #12
  %39 = icmp eq i64 %38, 1
  br i1 %39, label %41, label %40

40:                                               ; preds = %30, %26
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.2) #13
  br label %41

41:                                               ; preds = %40, %30, %26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  %42 = add nuw i64 %19, 1
  %43 = load i64, ptr %13, align 8, !tbaa !84
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %18, label %45, !llvm.loop !152

45:                                               ; preds = %41, %11
  %46 = getelementptr inbounds %struct.ggc_root_tab, ptr %12, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !76
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %11, !llvm.loop !153

49:                                               ; preds = %45, %6
  %50 = getelementptr inbounds ptr, ptr %8, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !58
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %6, !llvm.loop !154

53:                                               ; preds = %49, %2
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @ggc_pch_prepare_write(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @relocate_ptrs(ptr nocapture noundef %0, ptr nocapture readnone %1) #0 !prof !56 !PGOFuncName !155 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = icmp ult ptr %3, inttoptr (i64 2 to ptr)
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i64
  %7 = load ptr, ptr @saving_htab, align 8, !tbaa !58
  %8 = lshr i64 %6, 3
  %9 = trunc i64 %8 to i32
  %10 = tail call ptr @htab_find_with_hash(ptr noundef %7, ptr noundef nonnull %3, i32 noundef %9) #13
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 443, ptr noundef nonnull @.str.1) #13
  br label %13

13:                                               ; preds = %5, %12
  %14 = getelementptr inbounds %struct.ptr_data, ptr %10, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !144
  store ptr %15, ptr %0, align 8, !tbaa !58
  br label %16

16:                                               ; preds = %2, %13
  ret void
}

; Function Attrs: optsize
declare void @ggc_pch_write_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ggc_pch_finish(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gt_pch_fixup_stringpool() local_unnamed_addr #4

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @ggc_pch_count_object(ptr noundef, ptr noundef, i64 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @ggc_pch_alloc_object(ptr noundef, ptr noundef, i64 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_restore(ptr noundef %0) local_unnamed_addr #0 !prof !56 {
  %2 = alloca %struct.mmap_info, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %3 = load ptr, ptr @gt_ggc_deletable_rtab, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %21
  %6 = phi ptr [ %23, %21 ], [ %3, %1 ]
  %7 = phi ptr [ %22, %21 ], [ @gt_ggc_deletable_rtab, %1 ]
  %8 = load ptr, ptr %6, align 8, !tbaa !76
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %13

10:                                               ; preds = %21, %1
  %11 = load ptr, ptr @gt_pch_scalar_rtab, align 8, !tbaa !58
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %25

13:                                               ; preds = %5, %13
  %14 = phi ptr [ %19, %13 ], [ %8, %5 ]
  %15 = phi ptr [ %18, %13 ], [ %6, %5 ]
  %16 = getelementptr inbounds %struct.ggc_root_tab, ptr %15, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !79
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %14, i8 0, i64 %17, i1 false)
  %18 = getelementptr inbounds %struct.ggc_root_tab, ptr %15, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !76
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %13, !llvm.loop !156

21:                                               ; preds = %13, %5
  %22 = getelementptr inbounds ptr, ptr %7, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  %24 = icmp eq ptr %23, null
  br i1 %24, label %10, label %5, !llvm.loop !157

25:                                               ; preds = %10, %45
  %26 = phi ptr [ %47, %45 ], [ %11, %10 ]
  %27 = phi ptr [ %46, %45 ], [ @gt_pch_scalar_rtab, %10 ]
  %28 = load ptr, ptr %26, align 8, !tbaa !76
  %29 = icmp eq ptr %28, null
  br i1 %29, label %45, label %33

30:                                               ; preds = %45, %10
  %31 = load ptr, ptr @gt_ggc_rtab, align 8, !tbaa !58
  %32 = icmp eq ptr %31, null
  br i1 %32, label %54, label %49

33:                                               ; preds = %25, %41
  %34 = phi ptr [ %43, %41 ], [ %28, %25 ]
  %35 = phi ptr [ %42, %41 ], [ %26, %25 ]
  %36 = getelementptr inbounds %struct.ggc_root_tab, ptr %35, i64 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !79
  %38 = tail call i64 @fread(ptr noundef nonnull %34, i64 noundef %37, i64 noundef 1, ptr noundef %0) #12
  %39 = icmp eq i64 %38, 1
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.5) #13
  br label %41

41:                                               ; preds = %33, %40
  %42 = getelementptr inbounds %struct.ggc_root_tab, ptr %35, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !76
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %33, !llvm.loop !158

45:                                               ; preds = %41, %25
  %46 = getelementptr inbounds ptr, ptr %27, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !58
  %48 = icmp eq ptr %47, null
  br i1 %48, label %30, label %25, !llvm.loop !159

49:                                               ; preds = %30, %81
  %50 = phi ptr [ %83, %81 ], [ %31, %30 ]
  %51 = phi ptr [ %82, %81 ], [ @gt_ggc_rtab, %30 ]
  %52 = load ptr, ptr %50, align 8, !tbaa !76
  %53 = icmp eq ptr %52, null
  br i1 %53, label %81, label %57

54:                                               ; preds = %81, %30
  %55 = load ptr, ptr @gt_pch_cache_rtab, align 8, !tbaa !58
  %56 = icmp eq ptr %55, null
  br i1 %56, label %118, label %85

57:                                               ; preds = %49, %77
  %58 = phi ptr [ %78, %77 ], [ %50, %49 ]
  %59 = getelementptr inbounds %struct.ggc_root_tab, ptr %58, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !84
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.ggc_root_tab, ptr %58, i64 0, i32 2
  br label %64

64:                                               ; preds = %62, %73
  %65 = phi i64 [ 0, %62 ], [ %74, %73 ]
  %66 = load ptr, ptr %58, align 8, !tbaa !76
  %67 = load i64, ptr %63, align 8, !tbaa !79
  %68 = mul i64 %67, %65
  %69 = getelementptr inbounds i8, ptr %66, i64 %68
  %70 = tail call i64 @fread(ptr noundef %69, i64 noundef 8, i64 noundef 1, ptr noundef %0) #12
  %71 = icmp eq i64 %70, 1
  br i1 %71, label %73, label %72

72:                                               ; preds = %64
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.5) #13
  br label %73

73:                                               ; preds = %64, %72
  %74 = add nuw i64 %65, 1
  %75 = load i64, ptr %59, align 8, !tbaa !84
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %64, label %77, !llvm.loop !160

77:                                               ; preds = %73, %57
  %78 = getelementptr inbounds %struct.ggc_root_tab, ptr %58, i64 1
  %79 = load ptr, ptr %78, align 8, !tbaa !76
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %57, !llvm.loop !161

81:                                               ; preds = %77, %49
  %82 = getelementptr inbounds ptr, ptr %51, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !58
  %84 = icmp eq ptr %83, null
  br i1 %84, label %54, label %49, !llvm.loop !162

85:                                               ; preds = %54, %114
  %86 = phi ptr [ %116, %114 ], [ %55, %54 ]
  %87 = phi ptr [ %115, %114 ], [ @gt_pch_cache_rtab, %54 ]
  %88 = load ptr, ptr %86, align 8, !tbaa !76
  %89 = icmp eq ptr %88, null
  br i1 %89, label %114, label %90

90:                                               ; preds = %85, %110
  %91 = phi ptr [ %111, %110 ], [ %86, %85 ]
  %92 = getelementptr inbounds %struct.ggc_root_tab, ptr %91, i64 0, i32 1
  %93 = load i64, ptr %92, align 8, !tbaa !84
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %110, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.ggc_root_tab, ptr %91, i64 0, i32 2
  br label %97

97:                                               ; preds = %95, %106
  %98 = phi i64 [ 0, %95 ], [ %107, %106 ]
  %99 = load ptr, ptr %91, align 8, !tbaa !76
  %100 = load i64, ptr %96, align 8, !tbaa !79
  %101 = mul i64 %100, %98
  %102 = getelementptr inbounds i8, ptr %99, i64 %101
  %103 = tail call i64 @fread(ptr noundef %102, i64 noundef 8, i64 noundef 1, ptr noundef %0) #12
  %104 = icmp eq i64 %103, 1
  br i1 %104, label %106, label %105

105:                                              ; preds = %97
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.5) #13
  br label %106

106:                                              ; preds = %97, %105
  %107 = add nuw i64 %98, 1
  %108 = load i64, ptr %92, align 8, !tbaa !84
  %109 = icmp ult i64 %107, %108
  br i1 %109, label %97, label %110, !llvm.loop !163

110:                                              ; preds = %106, %90
  %111 = getelementptr inbounds %struct.ggc_root_tab, ptr %91, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !76
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %90, !llvm.loop !164

114:                                              ; preds = %110, %85
  %115 = getelementptr inbounds ptr, ptr %87, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !58
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %85, !llvm.loop !165

118:                                              ; preds = %114, %54
  %119 = call i64 @fread(ptr noundef nonnull %2, i64 noundef 24, i64 noundef 1, ptr noundef %0) #12
  %120 = icmp eq i64 %119, 1
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.5) #13
  br label %122

122:                                              ; preds = %121, %118
  %123 = load ptr, ptr getelementptr inbounds (%struct.host_hooks, ptr @host_hooks, i64 0, i32 2), align 8, !tbaa !166
  %124 = getelementptr inbounds %struct.mmap_info, ptr %2, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !138
  %126 = getelementptr inbounds %struct.mmap_info, ptr %2, i64 0, i32 1
  %127 = load i64, ptr %126, align 8, !tbaa !135
  %128 = tail call i32 @fileno(ptr noundef %0) #12
  %129 = load i64, ptr %2, align 8, !tbaa !143
  %130 = tail call i32 %123(ptr noundef %125, i64 noundef %127, i32 noundef %128, i64 noundef %129) #13
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %122
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.6) #13
  br label %141

133:                                              ; preds = %122
  %134 = icmp eq i32 %130, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %133
  %136 = tail call i32 @fseek(ptr noundef %0, i64 noundef %129, i32 noundef 0) #12
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = tail call i64 @fread(ptr noundef %125, i64 noundef %127, i64 noundef 1, ptr noundef %0) #12
  %140 = icmp eq i64 %139, 1
  br i1 %140, label %146, label %145

141:                                              ; preds = %132, %133
  %142 = add i64 %129, %127
  %143 = tail call i32 @fseek(ptr noundef %0, i64 noundef %142, i32 noundef 0) #12
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %141, %135, %138
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.5) #13
  br label %146

146:                                              ; preds = %145, %141, %138
  tail call void @ggc_pch_read(ptr noundef %0, ptr noundef %125) #13
  tail call void @gt_pch_restore_stringpool() #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @ggc_pch_read(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gt_pch_restore_stringpool() local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @default_gt_pch_get_address(i64 noundef %0, i32 noundef %1) local_unnamed_addr #11 !prof !56 {
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @default_gt_pch_use_address(ptr noundef readnone %0, i64 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 !prof !167 {
  %5 = tail call ptr @xmalloc(i64 noundef %1) #13
  %6 = icmp ne ptr %5, %0
  %7 = sext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i64 @default_gt_pch_alloc_granularity() local_unnamed_addr #11 !prof !56 {
  ret i64 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ggc_min_expand_heuristic() local_unnamed_addr #0 !prof !168 {
  %1 = tail call double @physmem_total() #13
  %2 = tail call fastcc double @ggc_rlimit_bound(double noundef %1) #12
  %3 = fmul double %2, 0x3E10000000000000
  %4 = fmul double %3, 7.000000e+01
  %5 = fcmp olt double %4, 7.000000e+01
  %6 = select i1 %5, double %4, double 7.000000e+01, !prof !169
  %7 = fadd double %6, 3.000000e+01
  %8 = fptosi double %7 to i32
  ret i32 %8
}

; Function Attrs: optsize
declare double @physmem_total() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @ggc_rlimit_bound(double noundef %0) unnamed_addr #0 !prof !170 !PGOFuncName !171 {
  %2 = alloca %struct.rlimit, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %3 = call i32 @getrlimit(i32 noundef 9, ptr noundef nonnull %2) #13
  %4 = icmp eq i32 %3, 0
  %5 = load i64, ptr %2, align 8
  %6 = icmp ne i64 %5, -1
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %12, !prof !172

8:                                                ; preds = %1
  %9 = uitofp i64 %5 to double
  %10 = fcmp olt double %9, %0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %11, %8, %1
  %13 = phi double [ %9, %11 ], [ %0, %8 ], [ %0, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  ret double %13
}

; Function Attrs: optsize
declare i32 @getrlimit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ggc_min_heapsize_heuristic() local_unnamed_addr #0 !prof !167 {
  %1 = alloca %struct.rlimit, align 8
  %2 = tail call double @physmem_total() #13
  %3 = fmul double %2, 2.000000e+00
  %4 = tail call fastcc double @ggc_rlimit_bound(double noundef %3) #12
  %5 = fmul double %2, 0x3F50000000000000
  %6 = fmul double %5, 1.250000e-01
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #14
  %7 = call i32 @getrlimit(i32 noundef 5, ptr noundef nonnull %1) #13
  %8 = icmp eq i32 %7, 0
  %9 = load i64, ptr %1, align 8
  %10 = icmp ne i64 %9, -1
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %17, !prof !173

12:                                               ; preds = %0
  %13 = lshr i64 %9, 10
  %14 = uitofp i64 %13 to double
  %15 = fcmp olt double %6, %14
  %16 = select i1 %15, double %6, double %14
  br label %17

17:                                               ; preds = %12, %0
  %18 = phi double [ %16, %12 ], [ %6, %0 ]
  %19 = fmul double %4, 0x3F50000000000000
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #14
  %20 = fmul double %19, 2.500000e-01
  %21 = fcmp ogt double %20, 2.048000e+04
  %22 = select i1 %21, double %20, double 2.048000e+04, !prof !174
  %23 = fsub double %19, %22
  %24 = fcmp olt double %23, 0.000000e+00
  %25 = fmul double %23, 1.000000e+02
  %26 = select i1 %24, double 0.000000e+00, double %25, !prof !175
  %27 = call i32 @ggc_min_expand_heuristic() #12
  %28 = add nsw i32 %27, 110
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %26, %29
  %31 = fcmp olt double %18, %30
  %32 = select i1 %31, double %18, double %30, !prof !174
  %33 = fcmp ogt double %32, 4.096000e+03
  %34 = select i1 %33, double %32, double 4.096000e+03, !prof !174
  %35 = fcmp olt double %34, 1.310720e+05
  %36 = select i1 %35, double %34, double 1.310720e+05, !prof !175
  %37 = fptosi double %36 to i32
  ret i32 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_ggc_heuristics() local_unnamed_addr #0 !prof !167 {
  %1 = tail call i32 @ggc_min_expand_heuristic() #12
  tail call void @set_param_value(ptr noundef nonnull @.str.7, i32 noundef %1) #13
  %2 = tail call i32 @ggc_min_heapsize_heuristic() #12
  tail call void @set_param_value(ptr noundef nonnull @.str.8, i32 noundef %2) #13
  ret void
}

; Function Attrs: optsize
declare void @set_param_value(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @dump_ggc_loc_statistics(i8 noundef zeroext %0) local_unnamed_addr #11 !prof !56 {
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!55}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!36 = !{ptr @ggc_alloc_cleared_stat, ptr @ggc_alloc_stat, i64 10519983}
!37 = !{ptr @ggc_realloc_stat, ptr @ggc_alloc_stat, i64 2786840}
!38 = !{ptr @ggc_realloc_stat, ptr @ggc_get_size, i64 145545}
!39 = !{ptr @ggc_realloc_stat, ptr @ggc_free, i64 96854}
!40 = !{ptr @ggc_calloc, ptr @ggc_alloc_cleared_stat, i64 336004}
!41 = !{ptr @ggc_splay_alloc, ptr @fancy_abort, i64 1}
!42 = !{ptr @ggc_splay_alloc, ptr @ggc_alloc_stat, i64 5150}
!43 = !{ptr @ggc_splay_dont_free, ptr @fancy_abort, i64 1}
!44 = !{ptr @default_gt_pch_use_address, ptr @xmalloc, i64 1}
!45 = !{ptr @ggc_min_expand_heuristic, ptr @physmem_total, i64 2}
!46 = !{ptr @ggc_min_expand_heuristic, ptr @ggc_rlimit_bound, i64 2}
!47 = !{ptr @ggc_rlimit_bound, ptr @getrlimit, i64 3}
!48 = !{ptr @ggc_min_heapsize_heuristic, ptr @physmem_total, i64 1}
!49 = !{ptr @ggc_min_heapsize_heuristic, ptr @ggc_rlimit_bound, i64 1}
!50 = !{ptr @ggc_min_heapsize_heuristic, ptr @getrlimit, i64 1}
!51 = !{ptr @ggc_min_heapsize_heuristic, ptr @ggc_min_expand_heuristic, i64 1}
!52 = !{ptr @init_ggc_heuristics, ptr @ggc_min_expand_heuristic, i64 1}
!53 = !{ptr @init_ggc_heuristics, ptr @set_param_value, i64 2}
!54 = !{ptr @init_ggc_heuristics, ptr @ggc_min_heapsize_heuristic, i64 1}
!55 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!56 = !{!"function_entry_count", i64 0}
!57 = !{!"ggc-common.c:VEC_const_ggc_root_tab_t_heap_safe_push"}
!58 = !{!59, !59, i64 0}
!59 = !{!"any pointer", !60, i64 0}
!60 = !{!"omnipotent char", !61, i64 0}
!61 = !{!"Simple C/C++ TBAA"}
!62 = !{!"ggc-common.c:VEC_const_ggc_root_tab_t_heap_reserve"}
!63 = !{!"ggc-common.c:VEC_const_ggc_root_tab_t_base_quick_push"}
!64 = !{!65, !66, i64 0}
!65 = !{!"VEC_const_ggc_root_tab_t_base", !66, i64 0, !66, i64 4, !60, i64 8}
!66 = !{!"int", !60, i64 0}
!67 = !{!"ggc-common.c:VEC_const_ggc_root_tab_t_base_space"}
!68 = !{!65, !66, i64 4}
!69 = !{!"ggc-common.c:VEC_const_ggc_cache_tab_t_heap_safe_push"}
!70 = !{!"ggc-common.c:VEC_const_ggc_cache_tab_t_heap_reserve"}
!71 = !{!"ggc-common.c:VEC_const_ggc_cache_tab_t_base_quick_push"}
!72 = !{!73, !66, i64 0}
!73 = !{!"VEC_const_ggc_cache_tab_t_base", !66, i64 0, !66, i64 4, !60, i64 8}
!74 = !{!"ggc-common.c:VEC_const_ggc_cache_tab_t_base_space"}
!75 = !{!73, !66, i64 4}
!76 = !{!77, !59, i64 0}
!77 = !{!"ggc_root_tab", !59, i64 0, !78, i64 8, !78, i64 16, !59, i64 24, !59, i64 32}
!78 = !{!"long", !60, i64 0}
!79 = !{!77, !78, i64 16}
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.mustprogress"}
!82 = distinct !{!82, !81}
!83 = !{i32 0, i32 2}
!84 = !{!77, !78, i64 8}
!85 = !{!77, !59, i64 24}
!86 = distinct !{!86, !81}
!87 = distinct !{!87, !81}
!88 = distinct !{!88, !81}
!89 = distinct !{!89, !81}
!90 = distinct !{!90, !81}
!91 = distinct !{!91, !81}
!92 = !{!60, !60, i64 0}
!93 = distinct !{!93, !81}
!94 = distinct !{!94, !81}
!95 = !{!"ggc-common.c:VEC_const_ggc_root_tab_t_base_iterate"}
!96 = !{!"ggc-common.c:ggc_scan_cache_tab"}
!97 = !{!98, !59, i64 0}
!98 = !{!"ggc_cache_tab", !59, i64 0, !78, i64 8, !78, i64 16, !59, i64 24, !59, i64 32, !59, i64 40}
!99 = !{!100, !59, i64 24}
!100 = !{!"htab", !59, i64 0, !59, i64 8, !59, i64 16, !59, i64 24, !78, i64 32, !78, i64 40, !78, i64 48, !66, i64 56, !66, i64 60, !59, i64 64, !59, i64 72, !59, i64 80, !59, i64 88, !59, i64 96, !66, i64 104}
!101 = distinct !{!101, !81}
!102 = !{!"ggc-common.c:VEC_const_ggc_cache_tab_t_base_iterate"}
!103 = !{!"ggc-common.c:ggc_htab_delete"}
!104 = !{!98, !59, i64 40}
!105 = !{!98, !59, i64 24}
!106 = !{!"function_entry_count", i64 10519983}
!107 = !{!"function_entry_count", i64 2835531}
!108 = !{!"branch_weights", i32 2689988, i32 145545}
!109 = !{!"branch_weights", i32 96855, i32 48691}
!110 = !{!"function_entry_count", i64 336004}
!111 = !{!"function_entry_count", i64 5150}
!112 = !{!"branch_weights", i32 5151, i32 1}
!113 = !{!"function_entry_count", i64 1044}
!114 = !{!"branch_weights", i32 1045, i32 1}
!115 = !{!116, !59, i64 16}
!116 = !{!"ptr_data", !59, i64 0, !59, i64 8, !59, i64 16, !59, i64 24, !78, i64 32, !59, i64 40, !66, i64 48}
!117 = !{!116, !59, i64 8}
!118 = !{!116, !59, i64 0}
!119 = !{!116, !78, i64 32}
!120 = !{!116, !66, i64 48}
!121 = !{!116, !59, i64 24}
!122 = !{!123, !59, i64 24}
!123 = !{!"host_hooks", !59, i64 0, !59, i64 8, !59, i64 16, !59, i64 24}
!124 = !{!77, !59, i64 32}
!125 = distinct !{!125, !81}
!126 = distinct !{!126, !81}
!127 = distinct !{!127, !81}
!128 = distinct !{!128, !81}
!129 = distinct !{!129, !81}
!130 = distinct !{!130, !81}
!131 = !{!132, !59, i64 0}
!132 = !{!"traversal_state", !59, i64 0, !59, i64 8, !78, i64 16, !59, i64 24, !78, i64 32}
!133 = !{!132, !59, i64 8}
!134 = !{!132, !78, i64 16}
!135 = !{!136, !78, i64 8}
!136 = !{!"mmap_info", !78, i64 0, !78, i64 8, !59, i64 16}
!137 = !{!123, !59, i64 8}
!138 = !{!136, !59, i64 16}
!139 = !{!132, !59, i64 24}
!140 = !{!132, !78, i64 32}
!141 = distinct !{!141, !81}
!142 = distinct !{!142, !81}
!143 = !{!136, !78, i64 0}
!144 = !{!116, !59, i64 40}
!145 = distinct !{!145, !81}
!146 = !{!"ggc-common.c:saving_htab_hash"}
!147 = !{!"ggc-common.c:saving_htab_eq"}
!148 = !{!"ggc-common.c:call_count"}
!149 = !{!"ggc-common.c:call_alloc"}
!150 = !{!"ggc-common.c:compare_ptr_data"}
!151 = !{!"ggc-common.c:write_pch_globals"}
!152 = distinct !{!152, !81}
!153 = distinct !{!153, !81}
!154 = distinct !{!154, !81}
!155 = !{!"ggc-common.c:relocate_ptrs"}
!156 = distinct !{!156, !81}
!157 = distinct !{!157, !81}
!158 = distinct !{!158, !81}
!159 = distinct !{!159, !81}
!160 = distinct !{!160, !81}
!161 = distinct !{!161, !81}
!162 = distinct !{!162, !81}
!163 = distinct !{!163, !81}
!164 = distinct !{!164, !81}
!165 = distinct !{!165, !81}
!166 = !{!123, !59, i64 16}
!167 = !{!"function_entry_count", i64 1}
!168 = !{!"function_entry_count", i64 2}
!169 = !{!"branch_weights", i32 1, i32 3}
!170 = !{!"function_entry_count", i64 3}
!171 = !{!"ggc-common.c:ggc_rlimit_bound"}
!172 = !{!"branch_weights", i32 4, i32 21}
!173 = !{!"branch_weights", i32 2, i32 7}
!174 = !{!"branch_weights", i32 2, i32 1}
!175 = !{!"branch_weights", i32 1, i32 2}
