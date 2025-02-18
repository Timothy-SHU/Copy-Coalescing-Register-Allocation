; ModuleID = 'blender/source/blender/bmesh/intern/bmesh_log.c'
source_filename = "blender/source/blender/bmesh/intern/bmesh_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMLog = type { ptr, ptr, ptr, %struct.ListBase, ptr }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMLogEntry = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMLogFace = type { [3 x i32], i8 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMLogVert = type { [3 x float], [3 x i16], float, i8 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_log_create = private unnamed_addr constant [14 x i8] c"BM_log_create\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_log_mesh_elems_reorder = private unnamed_addr constant [26 x i8] c"BM_log_mesh_elems_reorder\00", align 1
@__func__.bm_log_compress_ids_to_indices = private unnamed_addr constant [31 x i8] c"bm_log_compress_ids_to_indices\00", align 1
@__func__.bm_log_entry_create = private unnamed_addr constant [20 x i8] c"bm_log_entry_create\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_log_create(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 48, ptr noundef nonnull @__func__.BM_log_create) #6
  %5 = tail call ptr @range_tree_uint_alloc(i32 noundef 0, i32 noundef -1) #6
  store ptr %5, ptr %4, align 8, !tbaa !38
  %6 = load i32, ptr %0, align 8, !tbaa !41
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !46
  %9 = add nsw i32 %8, %6
  %10 = tail call ptr @BLI_ghash_ptr_new_ex(ptr noundef nonnull @__func__.BM_log_create, i32 noundef %9) #6
  %11 = getelementptr inbounds %struct.BMLog, ptr %4, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !47
  %12 = load i32, ptr %0, align 8, !tbaa !41
  %13 = load i32, ptr %7, align 4, !tbaa !46
  %14 = add nsw i32 %13, %12
  %15 = tail call ptr @BLI_ghash_ptr_new_ex(ptr noundef nonnull @__func__.BM_log_create, i32 noundef %14) #6
  %16 = getelementptr inbounds %struct.BMLog, ptr %4, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #6
  %17 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 1, ptr %17, align 4, !tbaa !49
  %18 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %18, align 8, !tbaa !51
  %19 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %19, align 8, !tbaa !52
  %20 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !53
  store ptr %21, ptr %2, align 8, !tbaa !54
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #6
  %22 = load ptr, ptr %19, align 8, !tbaa !52
  %23 = call ptr %22(ptr noundef nonnull %2) #6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %1, %25
  %26 = phi ptr [ %36, %25 ], [ %23, %1 ]
  %27 = load ptr, ptr %4, align 8, !tbaa !38
  %28 = call i32 @range_tree_uint_take_any(ptr noundef %27) #6
  %29 = zext i32 %28 to i64
  %30 = inttoptr i64 %29 to ptr
  %31 = load ptr, ptr %11, align 8, !tbaa !47
  %32 = call zeroext i8 @BLI_ghash_reinsert(ptr noundef %31, ptr noundef %30, ptr noundef nonnull %26, ptr noundef null, ptr noundef null) #6
  %33 = load ptr, ptr %16, align 8, !tbaa !48
  %34 = call zeroext i8 @BLI_ghash_reinsert(ptr noundef %33, ptr noundef nonnull %26, ptr noundef %30, ptr noundef null, ptr noundef null) #6
  %35 = load ptr, ptr %19, align 8, !tbaa !52
  %36 = call ptr %35(ptr noundef nonnull %2) #6
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %25, !llvm.loop !55

38:                                               ; preds = %25, %1
  store i8 3, ptr %17, align 4, !tbaa !49
  store ptr @bmiter__elem_of_mesh_begin, ptr %18, align 8, !tbaa !51
  store ptr @bmiter__elem_of_mesh_step, ptr %19, align 8, !tbaa !52
  %39 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !58
  store ptr %40, ptr %2, align 8, !tbaa !54
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %2) #6
  %41 = load ptr, ptr %19, align 8, !tbaa !52
  %42 = call ptr %41(ptr noundef nonnull %2) #6
  %43 = icmp eq ptr %42, null
  br i1 %43, label %57, label %44

44:                                               ; preds = %38, %44
  %45 = phi ptr [ %55, %44 ], [ %42, %38 ]
  %46 = load ptr, ptr %4, align 8, !tbaa !38
  %47 = call i32 @range_tree_uint_take_any(ptr noundef %46) #6
  %48 = zext i32 %47 to i64
  %49 = inttoptr i64 %48 to ptr
  %50 = load ptr, ptr %11, align 8, !tbaa !47
  %51 = call zeroext i8 @BLI_ghash_reinsert(ptr noundef %50, ptr noundef %49, ptr noundef nonnull %45, ptr noundef null, ptr noundef null) #6
  %52 = load ptr, ptr %16, align 8, !tbaa !48
  %53 = call zeroext i8 @BLI_ghash_reinsert(ptr noundef %52, ptr noundef nonnull %45, ptr noundef %49, ptr noundef null, ptr noundef null) #6
  %54 = load ptr, ptr %19, align 8, !tbaa !52
  %55 = call ptr %54(ptr noundef nonnull %2) #6
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %44, !llvm.loop !59

57:                                               ; preds = %44, %38
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #6
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @range_tree_uint_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_ptr_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BM_log_cleanup_entry(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.GHashIterator, align 8
  %3 = alloca %struct.GHashIterator, align 8
  %4 = alloca %struct.GHashIterator, align 8
  %5 = alloca %struct.GHashIterator, align 8
  %6 = alloca %struct.GHashIterator, align 8
  %7 = alloca %struct.GHashIterator, align 8
  %8 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = icmp eq ptr %9, null
  br i1 %10, label %113, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !38
  %13 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #6
  call void @BLI_ghashIterator_init(ptr noundef nonnull %7, ptr noundef %14) #6
  %15 = getelementptr inbounds %struct.GHashIterator, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %11, %18
  %19 = phi ptr [ %25, %18 ], [ %16, %11 ]
  %20 = getelementptr inbounds %struct._gh_Entry, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  %22 = ptrtoint ptr %21 to i64
  %23 = trunc i64 %22 to i32
  %24 = call zeroext i8 @range_tree_uint_retake(ptr noundef %12, i32 noundef %23) #6
  call void @BLI_ghashIterator_step(ptr noundef nonnull %7) #6
  %25 = load ptr, ptr %15, align 8, !tbaa !63
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %18, !llvm.loop !67

27:                                               ; preds = %18, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #6
  %28 = load ptr, ptr %9, align 8, !tbaa !38
  %29 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #6
  call void @BLI_ghashIterator_init(ptr noundef nonnull %6, ptr noundef %30) #6
  %31 = getelementptr inbounds %struct.GHashIterator, ptr %6, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !63
  %33 = icmp eq ptr %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %27, %34
  %35 = phi ptr [ %41, %34 ], [ %32, %27 ]
  %36 = getelementptr inbounds %struct._gh_Entry, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !65
  %38 = ptrtoint ptr %37 to i64
  %39 = trunc i64 %38 to i32
  %40 = call zeroext i8 @range_tree_uint_retake(ptr noundef %28, i32 noundef %39) #6
  call void @BLI_ghashIterator_step(ptr noundef nonnull %6) #6
  %41 = load ptr, ptr %31, align 8, !tbaa !63
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %34, !llvm.loop !67

43:                                               ; preds = %34, %27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #6
  %44 = load ptr, ptr %9, align 8, !tbaa !38
  %45 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #6
  call void @BLI_ghashIterator_init(ptr noundef nonnull %5, ptr noundef %46) #6
  %47 = getelementptr inbounds %struct.GHashIterator, ptr %5, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !63
  %49 = icmp eq ptr %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %43, %50
  %51 = phi ptr [ %57, %50 ], [ %48, %43 ]
  %52 = getelementptr inbounds %struct._gh_Entry, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !65
  %54 = ptrtoint ptr %53 to i64
  %55 = trunc i64 %54 to i32
  %56 = call zeroext i8 @range_tree_uint_retake(ptr noundef %44, i32 noundef %55) #6
  call void @BLI_ghashIterator_step(ptr noundef nonnull %5) #6
  %57 = load ptr, ptr %47, align 8, !tbaa !63
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %50, !llvm.loop !67

59:                                               ; preds = %50, %43
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  %60 = load ptr, ptr %9, align 8, !tbaa !38
  %61 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @BLI_ghashIterator_init(ptr noundef nonnull %4, ptr noundef %62) #6
  %63 = getelementptr inbounds %struct.GHashIterator, ptr %4, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !63
  %65 = icmp eq ptr %64, null
  br i1 %65, label %75, label %66

66:                                               ; preds = %59, %66
  %67 = phi ptr [ %73, %66 ], [ %64, %59 ]
  %68 = getelementptr inbounds %struct._gh_Entry, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !65
  %70 = ptrtoint ptr %69 to i64
  %71 = trunc i64 %70 to i32
  %72 = call zeroext i8 @range_tree_uint_retake(ptr noundef %60, i32 noundef %71) #6
  call void @BLI_ghashIterator_step(ptr noundef nonnull %4) #6
  %73 = load ptr, ptr %63, align 8, !tbaa !63
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %66, !llvm.loop !67

75:                                               ; preds = %66, %59
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  %76 = load ptr, ptr %9, align 8, !tbaa !38
  %77 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 6
  %78 = load ptr, ptr %77, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @BLI_ghashIterator_init(ptr noundef nonnull %3, ptr noundef %78) #6
  %79 = getelementptr inbounds %struct.GHashIterator, ptr %3, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !63
  %81 = icmp eq ptr %80, null
  br i1 %81, label %91, label %82

82:                                               ; preds = %75, %82
  %83 = phi ptr [ %89, %82 ], [ %80, %75 ]
  %84 = getelementptr inbounds %struct._gh_Entry, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !65
  %86 = ptrtoint ptr %85 to i64
  %87 = trunc i64 %86 to i32
  %88 = call zeroext i8 @range_tree_uint_retake(ptr noundef %76, i32 noundef %87) #6
  call void @BLI_ghashIterator_step(ptr noundef nonnull %3) #6
  %89 = load ptr, ptr %79, align 8, !tbaa !63
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %82, !llvm.loop !67

91:                                               ; preds = %82, %75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  %92 = load ptr, ptr %9, align 8, !tbaa !38
  %93 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 7
  %94 = load ptr, ptr %93, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  call void @BLI_ghashIterator_init(ptr noundef nonnull %2, ptr noundef %94) #6
  %95 = getelementptr inbounds %struct.GHashIterator, ptr %2, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !63
  %97 = icmp eq ptr %96, null
  br i1 %97, label %107, label %98

98:                                               ; preds = %91, %98
  %99 = phi ptr [ %105, %98 ], [ %96, %91 ]
  %100 = getelementptr inbounds %struct._gh_Entry, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !65
  %102 = ptrtoint ptr %101 to i64
  %103 = trunc i64 %102 to i32
  %104 = call zeroext i8 @range_tree_uint_retake(ptr noundef %92, i32 noundef %103) #6
  call void @BLI_ghashIterator_step(ptr noundef nonnull %2) #6
  %105 = load ptr, ptr %95, align 8, !tbaa !63
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %98, !llvm.loop !67

107:                                              ; preds = %98, %91
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  %108 = load ptr, ptr %13, align 8, !tbaa !62
  call void @BLI_ghash_clear(ptr noundef %108, ptr noundef null, ptr noundef null) #6
  %109 = load ptr, ptr %29, align 8, !tbaa !68
  call void @BLI_ghash_clear(ptr noundef %109, ptr noundef null, ptr noundef null) #6
  %110 = load ptr, ptr %45, align 8, !tbaa !69
  call void @BLI_ghash_clear(ptr noundef %110, ptr noundef null, ptr noundef null) #6
  %111 = load ptr, ptr %61, align 8, !tbaa !70
  call void @BLI_ghash_clear(ptr noundef %111, ptr noundef null, ptr noundef null) #6
  %112 = load ptr, ptr %77, align 8, !tbaa !71
  call void @BLI_ghash_clear(ptr noundef %112, ptr noundef null, ptr noundef null) #6
  br label %113

113:                                              ; preds = %107, %1
  ret void
}

declare void @BLI_ghash_clear(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_log_from_existing_entries_create(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.GHashIterator, align 8
  %4 = alloca %struct.GHashIterator, align 8
  %5 = alloca %struct.GHashIterator, align 8
  %6 = alloca %struct.GHashIterator, align 8
  %7 = alloca %struct.GHashIterator, align 8
  %8 = alloca %struct.GHashIterator, align 8
  %9 = tail call ptr @BM_log_create(ptr noundef %0)
  %10 = getelementptr inbounds %struct.BMLogEntry, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.BMLog, ptr %9, i64 0, i32 4
  %14 = select i1 %12, ptr null, ptr %1
  store ptr %14, ptr %13, align 8, !tbaa !74
  %15 = getelementptr inbounds %struct.BMLog, ptr %9, i64 0, i32 3, i32 1
  store ptr %1, ptr %15, align 8, !tbaa !75
  br label %16

16:                                               ; preds = %16, %2
  %17 = phi ptr [ %1, %2 ], [ %19, %16 ]
  %18 = getelementptr inbounds %struct.BMLogEntry, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !73
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %16, !llvm.loop !76

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.BMLog, ptr %9, i64 0, i32 3
  store ptr %17, ptr %22, align 8, !tbaa !77
  %23 = load ptr, ptr %1, align 8, !tbaa !78
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %36

25:                                               ; preds = %36
  store ptr %37, ptr %15, align 8, !tbaa !75
  br label %26

26:                                               ; preds = %25, %21
  %27 = load ptr, ptr %22, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %135, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.GHashIterator, ptr %8, i64 0, i32 1
  %31 = getelementptr inbounds %struct.GHashIterator, ptr %7, i64 0, i32 1
  %32 = getelementptr inbounds %struct.GHashIterator, ptr %6, i64 0, i32 1
  %33 = getelementptr inbounds %struct.GHashIterator, ptr %5, i64 0, i32 1
  %34 = getelementptr inbounds %struct.GHashIterator, ptr %4, i64 0, i32 1
  %35 = getelementptr inbounds %struct.GHashIterator, ptr %3, i64 0, i32 1
  br label %40

36:                                               ; preds = %21, %36
  %37 = phi ptr [ %38, %36 ], [ %23, %21 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !78
  %39 = icmp eq ptr %38, null
  br i1 %39, label %25, label %36, !llvm.loop !79

40:                                               ; preds = %29, %132
  %41 = phi ptr [ %27, %29 ], [ %133, %132 ]
  %42 = getelementptr inbounds %struct.BMLogEntry, ptr %41, i64 0, i32 10
  store ptr %9, ptr %42, align 8, !tbaa !60
  %43 = load ptr, ptr %9, align 8, !tbaa !38
  %44 = getelementptr inbounds %struct.BMLogEntry, ptr %41, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #6
  call void @BLI_ghashIterator_init(ptr noundef nonnull %8, ptr noundef %45) #6
  %46 = load ptr, ptr %30, align 8, !tbaa !63
  %47 = icmp eq ptr %46, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %40, %48
  %49 = phi ptr [ %55, %48 ], [ %46, %40 ]
  %50 = getelementptr inbounds %struct._gh_Entry, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !65
  %52 = ptrtoint ptr %51 to i64
  %53 = trunc i64 %52 to i32
  %54 = call zeroext i8 @range_tree_uint_retake(ptr noundef %43, i32 noundef %53) #6
  call void @BLI_ghashIterator_step(ptr noundef nonnull %8) #6
  %55 = load ptr, ptr %30, align 8, !tbaa !63
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %48, !llvm.loop !67

57:                                               ; preds = %48, %40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #6
  %58 = load ptr, ptr %9, align 8, !tbaa !38
  %59 = getelementptr inbounds %struct.BMLogEntry, ptr %41, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #6
  call void @BLI_ghashIterator_init(ptr noundef nonnull %7, ptr noundef %60) #6
  %61 = load ptr, ptr %31, align 8, !tbaa !63
  %62 = icmp eq ptr %61, null
  br i1 %62, label %72, label %63

63:                                               ; preds = %57, %63
  %64 = phi ptr [ %70, %63 ], [ %61, %57 ]
  %65 = getelementptr inbounds %struct._gh_Entry, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !65
  %67 = ptrtoint ptr %66 to i64
  %68 = trunc i64 %67 to i32
  %69 = call zeroext i8 @range_tree_uint_retake(ptr noundef %58, i32 noundef %68) #6
  call void @BLI_ghashIterator_step(ptr noundef nonnull %7) #6
  %70 = load ptr, ptr %31, align 8, !tbaa !63
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %63, !llvm.loop !67

72:                                               ; preds = %63, %57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #6
  %73 = load ptr, ptr %9, align 8, !tbaa !38
  %74 = getelementptr inbounds %struct.BMLogEntry, ptr %41, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #6
  call void @BLI_ghashIterator_init(ptr noundef nonnull %6, ptr noundef %75) #6
  %76 = load ptr, ptr %32, align 8, !tbaa !63
  %77 = icmp eq ptr %76, null
  br i1 %77, label %87, label %78

78:                                               ; preds = %72, %78
  %79 = phi ptr [ %85, %78 ], [ %76, %72 ]
  %80 = getelementptr inbounds %struct._gh_Entry, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !65
  %82 = ptrtoint ptr %81 to i64
  %83 = trunc i64 %82 to i32
  %84 = call zeroext i8 @range_tree_uint_retake(ptr noundef %73, i32 noundef %83) #6
  call void @BLI_ghashIterator_step(ptr noundef nonnull %6) #6
  %85 = load ptr, ptr %32, align 8, !tbaa !63
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %78, !llvm.loop !67

87:                                               ; preds = %78, %72
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #6
  %88 = load ptr, ptr %9, align 8, !tbaa !38
  %89 = getelementptr inbounds %struct.BMLogEntry, ptr %41, i64 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #6
  call void @BLI_ghashIterator_init(ptr noundef nonnull %5, ptr noundef %90) #6
  %91 = load ptr, ptr %33, align 8, !tbaa !63
  %92 = icmp eq ptr %91, null
  br i1 %92, label %102, label %93

93:                                               ; preds = %87, %93
  %94 = phi ptr [ %100, %93 ], [ %91, %87 ]
  %95 = getelementptr inbounds %struct._gh_Entry, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !65
  %97 = ptrtoint ptr %96 to i64
  %98 = trunc i64 %97 to i32
  %99 = call zeroext i8 @range_tree_uint_retake(ptr noundef %88, i32 noundef %98) #6
  call void @BLI_ghashIterator_step(ptr noundef nonnull %5) #6
  %100 = load ptr, ptr %33, align 8, !tbaa !63
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %93, !llvm.loop !67

102:                                              ; preds = %93, %87
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  %103 = load ptr, ptr %9, align 8, !tbaa !38
  %104 = getelementptr inbounds %struct.BMLogEntry, ptr %41, i64 0, i32 6
  %105 = load ptr, ptr %104, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @BLI_ghashIterator_init(ptr noundef nonnull %4, ptr noundef %105) #6
  %106 = load ptr, ptr %34, align 8, !tbaa !63
  %107 = icmp eq ptr %106, null
  br i1 %107, label %117, label %108

108:                                              ; preds = %102, %108
  %109 = phi ptr [ %115, %108 ], [ %106, %102 ]
  %110 = getelementptr inbounds %struct._gh_Entry, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !65
  %112 = ptrtoint ptr %111 to i64
  %113 = trunc i64 %112 to i32
  %114 = call zeroext i8 @range_tree_uint_retake(ptr noundef %103, i32 noundef %113) #6
  call void @BLI_ghashIterator_step(ptr noundef nonnull %4) #6
  %115 = load ptr, ptr %34, align 8, !tbaa !63
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %108, !llvm.loop !67

117:                                              ; preds = %108, %102
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  %118 = load ptr, ptr %9, align 8, !tbaa !38
  %119 = getelementptr inbounds %struct.BMLogEntry, ptr %41, i64 0, i32 7
  %120 = load ptr, ptr %119, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @BLI_ghashIterator_init(ptr noundef nonnull %3, ptr noundef %120) #6
  %121 = load ptr, ptr %35, align 8, !tbaa !63
  %122 = icmp eq ptr %121, null
  br i1 %122, label %132, label %123

123:                                              ; preds = %117, %123
  %124 = phi ptr [ %130, %123 ], [ %121, %117 ]
  %125 = getelementptr inbounds %struct._gh_Entry, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !65
  %127 = ptrtoint ptr %126 to i64
  %128 = trunc i64 %127 to i32
  %129 = call zeroext i8 @range_tree_uint_retake(ptr noundef %118, i32 noundef %128) #6
  call void @BLI_ghashIterator_step(ptr noundef nonnull %3) #6
  %130 = load ptr, ptr %35, align 8, !tbaa !63
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %123, !llvm.loop !67

132:                                              ; preds = %123, %117
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  %133 = load ptr, ptr %41, align 8, !tbaa !34
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %40, !llvm.loop !80

135:                                              ; preds = %132, %26
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_log_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @range_tree_uint_free(ptr noundef nonnull %2) #6
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @BLI_ghash_free(ptr noundef nonnull %7, ptr noundef null, ptr noundef null) #6
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @BLI_ghash_free(ptr noundef nonnull %12, ptr noundef null, ptr noundef null) #6
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15, %19
  %20 = phi ptr [ %22, %19 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.BMLogEntry, ptr %20, i64 0, i32 10
  store ptr null, ptr %21, align 8, !tbaa !60
  %22 = load ptr, ptr %20, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %19, !llvm.loop !81

24:                                               ; preds = %19, %15
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %25(ptr noundef nonnull %0) #6
  ret void
}

declare void @range_tree_uint_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @BM_log_length(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 3
  %3 = tail call i32 @BLI_countlist(ptr noundef nonnull %2) #6
  ret i32 %3
}

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_log_mesh_elems_reorder(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %5 = load i32, ptr %0, align 8, !tbaa !41
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 2
  %8 = tail call ptr %4(i64 noundef %7, ptr noundef nonnull @__func__.BM_log_mesh_elems_reorder) #6
  %9 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %9, align 4, !tbaa !49
  %10 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %10, align 8, !tbaa !51
  %11 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %11, align 8, !tbaa !52
  %12 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  store ptr %13, ptr %3, align 8, !tbaa !54
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #6
  %14 = load ptr, ptr %11, align 8, !tbaa !52
  %15 = call ptr %14(ptr noundef nonnull %3) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.BMLog, ptr %1, i64 0, i32 2
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ 0, %17 ], [ %26, %19 ]
  %21 = phi ptr [ %15, %17 ], [ %29, %19 ]
  %22 = load ptr, ptr %18, align 8, !tbaa !48
  %23 = call ptr @BLI_ghash_lookup(ptr noundef %22, ptr noundef nonnull %21) #6
  %24 = ptrtoint ptr %23 to i64
  %25 = trunc i64 %24 to i32
  %26 = add nuw i64 %20, 1
  %27 = getelementptr inbounds i32, ptr %8, i64 %20
  store i32 %25, ptr %27, align 4, !tbaa !82
  %28 = load ptr, ptr %11, align 8, !tbaa !52
  %29 = call ptr %28(ptr noundef nonnull %3) #6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %19, !llvm.loop !83

31:                                               ; preds = %19, %2
  %32 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !46
  %35 = sext i32 %34 to i64
  %36 = shl nsw i64 %35, 2
  %37 = call ptr %32(i64 noundef %36, ptr noundef nonnull @__func__.BM_log_mesh_elems_reorder) #6
  store i8 3, ptr %9, align 4, !tbaa !49
  store ptr @bmiter__elem_of_mesh_begin, ptr %10, align 8, !tbaa !51
  store ptr @bmiter__elem_of_mesh_step, ptr %11, align 8, !tbaa !52
  %38 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %39 = load ptr, ptr %38, align 8, !tbaa !58
  store ptr %39, ptr %3, align 8, !tbaa !54
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #6
  %40 = load ptr, ptr %11, align 8, !tbaa !52
  %41 = call ptr %40(ptr noundef nonnull %3) #6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %57, label %43

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.BMLog, ptr %1, i64 0, i32 2
  br label %45

45:                                               ; preds = %43, %45
  %46 = phi i64 [ 0, %43 ], [ %52, %45 ]
  %47 = phi ptr [ %41, %43 ], [ %55, %45 ]
  %48 = load ptr, ptr %44, align 8, !tbaa !48
  %49 = call ptr @BLI_ghash_lookup(ptr noundef %48, ptr noundef nonnull %47) #6
  %50 = ptrtoint ptr %49 to i64
  %51 = trunc i64 %50 to i32
  %52 = add nuw i64 %46, 1
  %53 = getelementptr inbounds i32, ptr %37, i64 %46
  store i32 %51, ptr %53, align 4, !tbaa !82
  %54 = load ptr, ptr %11, align 8, !tbaa !52
  %55 = call ptr %54(ptr noundef nonnull %3) #6
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %45, !llvm.loop !84

57:                                               ; preds = %45, %31
  %58 = load i32, ptr %0, align 8, !tbaa !41
  %59 = call ptr @BLI_ghash_int_new_ex(ptr noundef nonnull @__func__.bm_log_compress_ids_to_indices, i32 noundef %58) #6
  %60 = zext i32 %58 to i64
  call void @qsort(ptr noundef %8, i64 noundef %60, i64 noundef 4, ptr noundef nonnull @uint_compare) #6
  %61 = icmp eq i32 %58, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %57, %62
  %63 = phi i64 [ %69, %62 ], [ 0, %57 ]
  %64 = getelementptr inbounds i32, ptr %8, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !82
  %66 = zext i32 %65 to i64
  %67 = inttoptr i64 %66 to ptr
  %68 = inttoptr i64 %63 to ptr
  call void @BLI_ghash_insert(ptr noundef %59, ptr noundef %67, ptr noundef %68) #6
  %69 = add nuw nsw i64 %63, 1
  %70 = icmp eq i64 %69, %60
  br i1 %70, label %71, label %62, !llvm.loop !85

71:                                               ; preds = %62, %57
  store i8 1, ptr %9, align 4, !tbaa !49
  store ptr @bmiter__elem_of_mesh_begin, ptr %10, align 8, !tbaa !51
  store ptr @bmiter__elem_of_mesh_step, ptr %11, align 8, !tbaa !52
  %72 = load ptr, ptr %12, align 8, !tbaa !53
  store ptr %72, ptr %3, align 8, !tbaa !54
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #6
  %73 = load ptr, ptr %11, align 8, !tbaa !52
  %74 = call ptr %73(ptr noundef nonnull %3) #6
  %75 = icmp eq ptr %74, null
  br i1 %75, label %94, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.BMLog, ptr %1, i64 0, i32 2
  br label %78

78:                                               ; preds = %76, %78
  %79 = phi i64 [ 0, %76 ], [ %89, %78 ]
  %80 = phi ptr [ %74, %76 ], [ %92, %78 ]
  %81 = load ptr, ptr %77, align 8, !tbaa !48
  %82 = call ptr @BLI_ghash_lookup(ptr noundef %81, ptr noundef nonnull %80) #6
  %83 = ptrtoint ptr %82 to i64
  %84 = and i64 %83, 4294967295
  %85 = inttoptr i64 %84 to ptr
  %86 = call ptr @BLI_ghash_lookup(ptr noundef %59, ptr noundef %85) #6
  %87 = ptrtoint ptr %86 to i64
  %88 = trunc i64 %87 to i32
  %89 = add nuw i64 %79, 1
  %90 = getelementptr inbounds i32, ptr %8, i64 %79
  store i32 %88, ptr %90, align 4, !tbaa !82
  %91 = load ptr, ptr %11, align 8, !tbaa !52
  %92 = call ptr %91(ptr noundef nonnull %3) #6
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %78, !llvm.loop !86

94:                                               ; preds = %78, %71
  call void @BLI_ghash_free(ptr noundef %59, ptr noundef null, ptr noundef null) #6
  %95 = load i32, ptr %33, align 4, !tbaa !46
  %96 = call ptr @BLI_ghash_int_new_ex(ptr noundef nonnull @__func__.bm_log_compress_ids_to_indices, i32 noundef %95) #6
  %97 = zext i32 %95 to i64
  call void @qsort(ptr noundef %37, i64 noundef %97, i64 noundef 4, ptr noundef nonnull @uint_compare) #6
  %98 = icmp eq i32 %95, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %94, %99
  %100 = phi i64 [ %106, %99 ], [ 0, %94 ]
  %101 = getelementptr inbounds i32, ptr %37, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !82
  %103 = zext i32 %102 to i64
  %104 = inttoptr i64 %103 to ptr
  %105 = inttoptr i64 %100 to ptr
  call void @BLI_ghash_insert(ptr noundef %96, ptr noundef %104, ptr noundef %105) #6
  %106 = add nuw nsw i64 %100, 1
  %107 = icmp eq i64 %106, %97
  br i1 %107, label %108, label %99, !llvm.loop !85

108:                                              ; preds = %99, %94
  store i8 3, ptr %9, align 4, !tbaa !49
  store ptr @bmiter__elem_of_mesh_begin, ptr %10, align 8, !tbaa !51
  store ptr @bmiter__elem_of_mesh_step, ptr %11, align 8, !tbaa !52
  %109 = load ptr, ptr %38, align 8, !tbaa !58
  store ptr %109, ptr %3, align 8, !tbaa !54
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #6
  %110 = load ptr, ptr %11, align 8, !tbaa !52
  %111 = call ptr %110(ptr noundef nonnull %3) #6
  %112 = icmp eq ptr %111, null
  br i1 %112, label %131, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.BMLog, ptr %1, i64 0, i32 2
  br label %115

115:                                              ; preds = %113, %115
  %116 = phi i64 [ 0, %113 ], [ %126, %115 ]
  %117 = phi ptr [ %111, %113 ], [ %129, %115 ]
  %118 = load ptr, ptr %114, align 8, !tbaa !48
  %119 = call ptr @BLI_ghash_lookup(ptr noundef %118, ptr noundef nonnull %117) #6
  %120 = ptrtoint ptr %119 to i64
  %121 = and i64 %120, 4294967295
  %122 = inttoptr i64 %121 to ptr
  %123 = call ptr @BLI_ghash_lookup(ptr noundef %96, ptr noundef %122) #6
  %124 = ptrtoint ptr %123 to i64
  %125 = trunc i64 %124 to i32
  %126 = add nuw i64 %116, 1
  %127 = getelementptr inbounds i32, ptr %37, i64 %116
  store i32 %125, ptr %127, align 4, !tbaa !82
  %128 = load ptr, ptr %11, align 8, !tbaa !52
  %129 = call ptr %128(ptr noundef nonnull %3) #6
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %115, !llvm.loop !87

131:                                              ; preds = %115, %108
  call void @BLI_ghash_free(ptr noundef %96, ptr noundef null, ptr noundef null) #6
  call void @BM_mesh_remap(ptr noundef nonnull %0, ptr noundef %8, ptr noundef null, ptr noundef %37) #6
  %132 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %132(ptr noundef %8) #6
  %133 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %133(ptr noundef %37) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  ret void
}

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_mesh_remap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_log_entry_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !78
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 3
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi ptr [ %6, %8 ], [ %12, %10 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !78
  tail call fastcc void @bm_log_entry_free(ptr noundef nonnull %11)
  tail call void @BLI_freelinkN(ptr noundef nonnull %9, ptr noundef nonnull %11) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %10, !llvm.loop !88

14:                                               ; preds = %10, %5, %1
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %16 = tail call ptr %15(i64 noundef 88, ptr noundef nonnull @__func__.bm_log_entry_create) #6
  %17 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.bm_log_entry_create) #6
  %18 = getelementptr inbounds %struct.BMLogEntry, ptr %16, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !62
  %19 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.bm_log_entry_create) #6
  %20 = getelementptr inbounds %struct.BMLogEntry, ptr %16, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !68
  %21 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.bm_log_entry_create) #6
  %22 = getelementptr inbounds %struct.BMLogEntry, ptr %16, i64 0, i32 4
  store ptr %21, ptr %22, align 8, !tbaa !69
  %23 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.bm_log_entry_create) #6
  %24 = getelementptr inbounds %struct.BMLogEntry, ptr %16, i64 0, i32 5
  store ptr %23, ptr %24, align 8, !tbaa !70
  %25 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.bm_log_entry_create) #6
  %26 = getelementptr inbounds %struct.BMLogEntry, ptr %16, i64 0, i32 6
  store ptr %25, ptr %26, align 8, !tbaa !71
  %27 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.bm_log_entry_create) #6
  %28 = getelementptr inbounds %struct.BMLogEntry, ptr %16, i64 0, i32 7
  store ptr %27, ptr %28, align 8, !tbaa !72
  %29 = tail call ptr @BLI_mempool_create(i32 noundef 28, i32 noundef 0, i32 noundef 64, i32 noundef 0) #6
  %30 = getelementptr inbounds %struct.BMLogEntry, ptr %16, i64 0, i32 8
  store ptr %29, ptr %30, align 8, !tbaa !89
  %31 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 64, i32 noundef 0) #6
  %32 = getelementptr inbounds %struct.BMLogEntry, ptr %16, i64 0, i32 9
  store ptr %31, ptr %32, align 8, !tbaa !90
  %33 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %33, ptr noundef %16) #6
  %34 = getelementptr inbounds %struct.BMLogEntry, ptr %16, i64 0, i32 10
  store ptr %0, ptr %34, align 8, !tbaa !60
  store ptr %16, ptr %2, align 8, !tbaa !74
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_log_entry_free(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  tail call void @BLI_ghash_free(ptr noundef %3, ptr noundef null, ptr noundef null) #6
  %4 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  tail call void @BLI_ghash_free(ptr noundef %5, ptr noundef null, ptr noundef null) #6
  %6 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  tail call void @BLI_ghash_free(ptr noundef %7, ptr noundef null, ptr noundef null) #6
  %8 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  tail call void @BLI_ghash_free(ptr noundef %9, ptr noundef null, ptr noundef null) #6
  %10 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  tail call void @BLI_ghash_free(ptr noundef %11, ptr noundef null, ptr noundef null) #6
  %12 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  tail call void @BLI_ghash_free(ptr noundef %13, ptr noundef null, ptr noundef null) #6
  %14 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !89
  tail call void @BLI_mempool_destroy(ptr noundef %15) #6
  %16 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !90
  tail call void @BLI_mempool_destroy(ptr noundef %17) #6
  ret void
}

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_log_entry_drop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.GHashIterator, align 8
  %3 = alloca %struct.GHashIterator, align 8
  %4 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  %9 = icmp eq ptr %8, null
  br i1 %6, label %10, label %20

10:                                               ; preds = %1
  br i1 %9, label %11, label %16

11:                                               ; preds = %10
  %12 = load ptr, ptr %0, align 8, !tbaa !78
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.BMLogEntry, ptr %12, i64 0, i32 1
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi ptr [ %15, %14 ], [ %8, %10 ]
  store ptr null, ptr %17, align 8, !tbaa !34
  br label %18

18:                                               ; preds = %16, %11
  tail call fastcc void @bm_log_entry_free(ptr noundef %0)
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef %0) #6
  br label %63

20:                                               ; preds = %1
  br i1 %9, label %55, label %21

21:                                               ; preds = %20
  %22 = load ptr, ptr %0, align 8, !tbaa !78
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %55

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @BLI_ghashIterator_init(ptr noundef nonnull %3, ptr noundef %26) #6
  %27 = getelementptr inbounds %struct.GHashIterator, ptr %3, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !63
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %24, %30
  %31 = phi ptr [ %37, %30 ], [ %28, %24 ]
  %32 = getelementptr inbounds %struct._gh_Entry, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !65
  %34 = ptrtoint ptr %33 to i64
  %35 = trunc i64 %34 to i32
  %36 = load ptr, ptr %5, align 8, !tbaa !38
  call void @range_tree_uint_release(ptr noundef %36, i32 noundef %35) #6
  call void @BLI_ghashIterator_step(ptr noundef nonnull %3) #6
  %37 = load ptr, ptr %27, align 8, !tbaa !63
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %30, !llvm.loop !91

39:                                               ; preds = %30, %24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  %40 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  call void @BLI_ghashIterator_init(ptr noundef nonnull %2, ptr noundef %41) #6
  %42 = getelementptr inbounds %struct.GHashIterator, ptr %2, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !63
  %44 = icmp eq ptr %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %39, %45
  %46 = phi ptr [ %52, %45 ], [ %43, %39 ]
  %47 = getelementptr inbounds %struct._gh_Entry, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !65
  %49 = ptrtoint ptr %48 to i64
  %50 = trunc i64 %49 to i32
  %51 = load ptr, ptr %5, align 8, !tbaa !38
  call void @range_tree_uint_release(ptr noundef %51, i32 noundef %50) #6
  call void @BLI_ghashIterator_step(ptr noundef nonnull %2) #6
  %52 = load ptr, ptr %42, align 8, !tbaa !63
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %45, !llvm.loop !91

54:                                               ; preds = %45, %39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  br label %55

55:                                               ; preds = %54, %21, %20
  %56 = getelementptr inbounds %struct.BMLog, ptr %5, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !74
  %58 = icmp eq ptr %57, %0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load ptr, ptr %7, align 8, !tbaa !73
  store ptr %60, ptr %56, align 8, !tbaa !74
  br label %61

61:                                               ; preds = %59, %55
  call fastcc void @bm_log_entry_free(ptr noundef %0)
  %62 = getelementptr inbounds %struct.BMLog, ptr %5, i64 0, i32 3
  call void @BLI_freelinkN(ptr noundef nonnull %62, ptr noundef %0) #6
  br label %63

63:                                               ; preds = %61, %18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_log_undo(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.GHashIterator, align 8
  %4 = getelementptr inbounds %struct.BMLog, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = icmp eq ptr %5, null
  br i1 %6, label %45, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMLogEntry, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  store ptr %9, ptr %4, align 8, !tbaa !74
  %10 = getelementptr inbounds %struct.BMLogEntry, ptr %5, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  tail call fastcc void @bm_log_faces_unmake(ptr noundef %0, ptr noundef %1, ptr noundef %11)
  %12 = getelementptr inbounds %struct.BMLogEntry, ptr %5, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  tail call fastcc void @bm_log_verts_unmake(ptr noundef %0, ptr noundef %1, ptr noundef %13)
  %14 = getelementptr inbounds %struct.BMLogEntry, ptr %5, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !62
  tail call fastcc void @bm_log_verts_restore(ptr noundef %0, ptr noundef %1, ptr noundef %15)
  %16 = getelementptr inbounds %struct.BMLogEntry, ptr %5, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !68
  tail call fastcc void @bm_log_faces_restore(ptr noundef %0, ptr noundef %1, ptr noundef %17)
  %18 = getelementptr inbounds %struct.BMLogEntry, ptr %5, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  tail call fastcc void @bm_log_vert_values_swap(ptr noundef %0, ptr noundef %1, ptr noundef %19)
  %20 = getelementptr inbounds %struct.BMLogEntry, ptr %5, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @BLI_ghashIterator_init(ptr noundef nonnull %3, ptr noundef %21) #6
  %22 = getelementptr inbounds %struct.GHashIterator, ptr %3, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !63
  %24 = icmp eq ptr %23, null
  br i1 %24, label %44, label %25

25:                                               ; preds = %7
  %26 = getelementptr inbounds %struct.BMLog, ptr %1, i64 0, i32 1
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi ptr [ %23, %25 ], [ %42, %27 ]
  %29 = getelementptr inbounds %struct._gh_Entry, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !65
  %31 = getelementptr inbounds %struct._gh_Entry, ptr %28, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !92
  %33 = ptrtoint ptr %30 to i64
  %34 = and i64 %33, 4294967295
  %35 = inttoptr i64 %34 to ptr
  %36 = load ptr, ptr %26, align 8, !tbaa !47
  %37 = call ptr @BLI_ghash_lookup(ptr noundef %36, ptr noundef %35) #6
  %38 = getelementptr inbounds %struct.BMHeader, ptr %37, i64 0, i32 3
  %39 = load i8, ptr %38, align 1, !tbaa !93
  %40 = getelementptr inbounds %struct.BMLogFace, ptr %32, i64 0, i32 1
  %41 = load i8, ptr %40, align 4, !tbaa !96
  store i8 %41, ptr %38, align 1, !tbaa !93
  store i8 %39, ptr %40, align 4, !tbaa !96
  call void @BLI_ghashIterator_step(ptr noundef nonnull %3) #6
  %42 = load ptr, ptr %22, align 8, !tbaa !63
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %27, !llvm.loop !98

44:                                               ; preds = %27, %7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  br label %45

45:                                               ; preds = %44, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_log_faces_unmake(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.GHashIterator, align 8
  %5 = alloca [3 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @BLI_ghashIterator_init(ptr noundef nonnull %4, ptr noundef %2) #6
  %6 = getelementptr inbounds %struct.GHashIterator, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = icmp eq ptr %7, null
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.BMLog, ptr %1, i64 0, i32 1
  br label %11

11:                                               ; preds = %9, %43
  %12 = phi ptr [ %7, %9 ], [ %44, %43 ]
  %13 = getelementptr inbounds %struct._gh_Entry, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !65
  %15 = ptrtoint ptr %14 to i64
  %16 = and i64 %15, 4294967295
  %17 = inttoptr i64 %16 to ptr
  %18 = load ptr, ptr %10, align 8, !tbaa !47
  %19 = call ptr @BLI_ghash_lookup(ptr noundef %18, ptr noundef %17) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #6
  %20 = getelementptr inbounds %struct.BMFace, ptr %19, i64 0, i32 2
  br label %21

21:                                               ; preds = %11, %21
  %22 = phi i64 [ 0, %11 ], [ %28, %21 ]
  %23 = phi ptr [ %20, %11 ], [ %29, %21 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !99
  %27 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 %22
  store ptr %26, ptr %27, align 8, !tbaa !34
  %28 = add nuw nsw i64 %22, 1
  %29 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 6
  %30 = icmp eq i64 %28, 3
  br i1 %30, label %31, label %21, !llvm.loop !101

31:                                               ; preds = %21
  call void @BM_face_kill(ptr noundef %0, ptr noundef %19) #6
  br label %32

32:                                               ; preds = %31, %40
  %33 = phi i64 [ 0, %31 ], [ %41, %40 ]
  %34 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !34
  %36 = getelementptr inbounds %struct.BMEdge, ptr %35, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !102
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  call void @BM_edge_kill(ptr noundef %0, ptr noundef %35) #6
  br label %40

40:                                               ; preds = %32, %39
  %41 = add nuw nsw i64 %33, 1
  %42 = icmp eq i64 %41, 3
  br i1 %42, label %43, label %32, !llvm.loop !105

43:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  call void @BLI_ghashIterator_step(ptr noundef nonnull %4) #6
  %44 = load ptr, ptr %6, align 8, !tbaa !63
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %11, !llvm.loop !106

46:                                               ; preds = %43, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_log_verts_unmake(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.GHashIterator, align 8
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %6 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %5, i32 noundef 34) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @BLI_ghashIterator_init(ptr noundef nonnull %4, ptr noundef %2) #6
  %7 = getelementptr inbounds %struct.GHashIterator, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = icmp eq ptr %8, null
  br i1 %9, label %60, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.BMLog, ptr %1, i64 0, i32 1
  %12 = icmp eq i32 %6, -1
  %13 = sext i32 %6 to i64
  br label %14

14:                                               ; preds = %10, %52
  %15 = phi ptr [ %8, %10 ], [ %58, %52 ]
  %16 = getelementptr inbounds %struct._gh_Entry, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !65
  %18 = getelementptr inbounds %struct._gh_Entry, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !92
  %20 = ptrtoint ptr %17 to i64
  %21 = and i64 %20, 4294967295
  %22 = inttoptr i64 %21 to ptr
  %23 = load ptr, ptr %11, align 8, !tbaa !47
  %24 = call ptr @BLI_ghash_lookup(ptr noundef %23, ptr noundef %22) #6
  %25 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 2
  %26 = load float, ptr %25, align 4, !tbaa !107
  store float %26, ptr %19, align 4, !tbaa !107
  %27 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 2, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !107
  %29 = getelementptr inbounds float, ptr %19, i64 1
  store float %28, ptr %29, align 4, !tbaa !107
  %30 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 2, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !107
  %32 = getelementptr inbounds float, ptr %19, i64 2
  store float %31, ptr %32, align 4, !tbaa !107
  %33 = getelementptr inbounds %struct.BMLogVert, ptr %19, i64 0, i32 1
  %34 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 3
  %35 = load float, ptr %34, align 4, !tbaa !107
  %36 = fmul float %35, 3.276700e+04
  %37 = fptosi float %36 to i16
  store i16 %37, ptr %33, align 2, !tbaa !109
  %38 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 3, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !107
  %40 = fmul float %39, 3.276700e+04
  %41 = fptosi float %40 to i16
  %42 = getelementptr inbounds %struct.BMLogVert, ptr %19, i64 0, i32 1, i64 1
  store i16 %41, ptr %42, align 2, !tbaa !109
  %43 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 3, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !107
  %45 = fmul float %44, 3.276700e+04
  %46 = fptosi float %45 to i16
  %47 = getelementptr inbounds %struct.BMLogVert, ptr %19, i64 0, i32 1, i64 2
  store i16 %46, ptr %47, align 2, !tbaa !109
  br i1 %12, label %52, label %48

48:                                               ; preds = %14
  %49 = load ptr, ptr %24, align 8, !tbaa !110
  %50 = getelementptr inbounds i8, ptr %49, i64 %13
  %51 = load float, ptr %50, align 4, !tbaa !107
  br label %52

52:                                               ; preds = %14, %48
  %53 = phi float [ %51, %48 ], [ 0.000000e+00, %14 ]
  %54 = getelementptr inbounds %struct.BMLogVert, ptr %19, i64 0, i32 2
  store float %53, ptr %54, align 4, !tbaa !112
  %55 = getelementptr inbounds %struct.BMHeader, ptr %24, i64 0, i32 3
  %56 = load i8, ptr %55, align 1, !tbaa !114
  %57 = getelementptr inbounds %struct.BMLogVert, ptr %19, i64 0, i32 3
  store i8 %56, ptr %57, align 4, !tbaa !115
  call void @BM_vert_kill(ptr noundef %0, ptr noundef %24) #6
  call void @BLI_ghashIterator_step(ptr noundef nonnull %4) #6
  %58 = load ptr, ptr %7, align 8, !tbaa !63
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %14, !llvm.loop !116

60:                                               ; preds = %52, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_log_verts_restore(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.GHashIterator, align 8
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %6 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %5, i32 noundef 34) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @BLI_ghashIterator_init(ptr noundef nonnull %4, ptr noundef %2) #6
  %7 = getelementptr inbounds %struct.GHashIterator, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = icmp eq ptr %8, null
  br i1 %9, label %55, label %10

10:                                               ; preds = %3
  %11 = icmp eq i32 %6, -1
  %12 = sext i32 %6 to i64
  %13 = getelementptr inbounds %struct.BMLog, ptr %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct.BMLog, ptr %1, i64 0, i32 2
  br label %15

15:                                               ; preds = %10, %27
  %16 = phi ptr [ %8, %10 ], [ %53, %27 ]
  %17 = getelementptr inbounds %struct._gh_Entry, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !65
  %19 = getelementptr inbounds %struct._gh_Entry, ptr %16, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !92
  %21 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef %20, ptr noundef null, i32 noundef 0) #6
  br i1 %11, label %27, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.BMLogVert, ptr %20, i64 0, i32 2
  %24 = load float, ptr %23, align 4, !tbaa !112
  %25 = load ptr, ptr %21, align 8, !tbaa !110
  %26 = getelementptr inbounds i8, ptr %25, i64 %12
  store float %24, ptr %26, align 4, !tbaa !107
  br label %27

27:                                               ; preds = %15, %22
  %28 = getelementptr inbounds %struct.BMLogVert, ptr %20, i64 0, i32 3
  %29 = load i8, ptr %28, align 4, !tbaa !115
  %30 = getelementptr inbounds %struct.BMHeader, ptr %21, i64 0, i32 3
  store i8 %29, ptr %30, align 1, !tbaa !114
  %31 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 3
  %32 = getelementptr inbounds %struct.BMLogVert, ptr %20, i64 0, i32 1
  %33 = load i16, ptr %32, align 2, !tbaa !109
  %34 = sitofp i16 %33 to float
  %35 = fmul float %34, 0x3F00002000000000
  store float %35, ptr %31, align 4, !tbaa !107
  %36 = getelementptr inbounds %struct.BMLogVert, ptr %20, i64 0, i32 1, i64 1
  %37 = load i16, ptr %36, align 2, !tbaa !109
  %38 = sitofp i16 %37 to float
  %39 = fmul float %38, 0x3F00002000000000
  %40 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 3, i64 1
  store float %39, ptr %40, align 4, !tbaa !107
  %41 = getelementptr inbounds %struct.BMLogVert, ptr %20, i64 0, i32 1, i64 2
  %42 = load i16, ptr %41, align 2, !tbaa !109
  %43 = sitofp i16 %42 to float
  %44 = fmul float %43, 0x3F00002000000000
  %45 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 3, i64 2
  store float %44, ptr %45, align 4, !tbaa !107
  %46 = ptrtoint ptr %18 to i64
  %47 = and i64 %46, 4294967295
  %48 = inttoptr i64 %47 to ptr
  %49 = load ptr, ptr %13, align 8, !tbaa !47
  %50 = call zeroext i8 @BLI_ghash_reinsert(ptr noundef %49, ptr noundef %48, ptr noundef %21, ptr noundef null, ptr noundef null) #6
  %51 = load ptr, ptr %14, align 8, !tbaa !48
  %52 = call zeroext i8 @BLI_ghash_reinsert(ptr noundef %51, ptr noundef %21, ptr noundef %48, ptr noundef null, ptr noundef null) #6
  call void @BLI_ghashIterator_step(ptr noundef nonnull %4) #6
  %53 = load ptr, ptr %7, align 8, !tbaa !63
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %15, !llvm.loop !117

55:                                               ; preds = %27, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_log_faces_restore(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.GHashIterator, align 8
  %5 = alloca [3 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @BLI_ghashIterator_init(ptr noundef nonnull %4, ptr noundef %2) #6
  %6 = getelementptr inbounds %struct.GHashIterator, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = icmp eq ptr %7, null
  br i1 %8, label %50, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.BMLog, ptr %1, i64 0, i32 1
  %11 = getelementptr inbounds ptr, ptr %5, i64 1
  %12 = getelementptr inbounds ptr, ptr %5, i64 2
  %13 = getelementptr inbounds %struct.BMLog, ptr %1, i64 0, i32 2
  br label %14

14:                                               ; preds = %9, %14
  %15 = phi ptr [ %7, %9 ], [ %48, %14 ]
  %16 = getelementptr inbounds %struct._gh_Entry, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !65
  %18 = getelementptr inbounds %struct._gh_Entry, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #6
  %20 = load i32, ptr %19, align 4, !tbaa !82
  %21 = zext i32 %20 to i64
  %22 = inttoptr i64 %21 to ptr
  %23 = load ptr, ptr %10, align 8, !tbaa !47
  %24 = call ptr @BLI_ghash_lookup(ptr noundef %23, ptr noundef %22) #6
  store ptr %24, ptr %5, align 16, !tbaa !34
  %25 = getelementptr inbounds [3 x i32], ptr %19, i64 0, i64 1
  %26 = load i32, ptr %25, align 4, !tbaa !82
  %27 = zext i32 %26 to i64
  %28 = inttoptr i64 %27 to ptr
  %29 = load ptr, ptr %10, align 8, !tbaa !47
  %30 = call ptr @BLI_ghash_lookup(ptr noundef %29, ptr noundef %28) #6
  store ptr %30, ptr %11, align 8, !tbaa !34
  %31 = getelementptr inbounds [3 x i32], ptr %19, i64 0, i64 2
  %32 = load i32, ptr %31, align 4, !tbaa !82
  %33 = zext i32 %32 to i64
  %34 = inttoptr i64 %33 to ptr
  %35 = load ptr, ptr %10, align 8, !tbaa !47
  %36 = call ptr @BLI_ghash_lookup(ptr noundef %35, ptr noundef %34) #6
  store ptr %36, ptr %12, align 16, !tbaa !34
  %37 = call ptr @BM_face_create_verts(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 3, ptr noundef null, i32 noundef 0, i8 noundef zeroext 1) #6
  %38 = getelementptr inbounds %struct.BMLogFace, ptr %19, i64 0, i32 1
  %39 = load i8, ptr %38, align 4, !tbaa !96
  %40 = getelementptr inbounds %struct.BMHeader, ptr %37, i64 0, i32 3
  store i8 %39, ptr %40, align 1, !tbaa !93
  %41 = ptrtoint ptr %17 to i64
  %42 = and i64 %41, 4294967295
  %43 = inttoptr i64 %42 to ptr
  %44 = load ptr, ptr %10, align 8, !tbaa !47
  %45 = call zeroext i8 @BLI_ghash_reinsert(ptr noundef %44, ptr noundef %43, ptr noundef %37, ptr noundef null, ptr noundef null) #6
  %46 = load ptr, ptr %13, align 8, !tbaa !48
  %47 = call zeroext i8 @BLI_ghash_reinsert(ptr noundef %46, ptr noundef %37, ptr noundef %43, ptr noundef null, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  call void @BLI_ghashIterator_step(ptr noundef nonnull %4) #6
  %48 = load ptr, ptr %6, align 8, !tbaa !63
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %14, !llvm.loop !118

50:                                               ; preds = %14, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_log_vert_values_swap(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.GHashIterator, align 8
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %6 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %5, i32 noundef 34) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @BLI_ghashIterator_init(ptr noundef nonnull %4, ptr noundef %2) #6
  %7 = getelementptr inbounds %struct.GHashIterator, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = icmp eq ptr %8, null
  br i1 %9, label %74, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.BMLog, ptr %1, i64 0, i32 1
  %12 = icmp eq i32 %6, -1
  %13 = sext i32 %6 to i64
  br label %14

14:                                               ; preds = %10, %71
  %15 = phi ptr [ %8, %10 ], [ %72, %71 ]
  %16 = getelementptr inbounds %struct._gh_Entry, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !65
  %18 = getelementptr inbounds %struct._gh_Entry, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !92
  %20 = ptrtoint ptr %17 to i64
  %21 = and i64 %20, 4294967295
  %22 = inttoptr i64 %21 to ptr
  %23 = load ptr, ptr %11, align 8, !tbaa !47
  %24 = call ptr @BLI_ghash_lookup(ptr noundef %23, ptr noundef %22) #6
  %25 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 2
  %26 = load float, ptr %25, align 4, !tbaa !107
  %27 = load float, ptr %19, align 4, !tbaa !107
  store float %27, ptr %25, align 4, !tbaa !107
  store float %26, ptr %19, align 4, !tbaa !107
  %28 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 2, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !107
  %30 = getelementptr inbounds float, ptr %19, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !107
  store float %31, ptr %28, align 4, !tbaa !107
  store float %29, ptr %30, align 4, !tbaa !107
  %32 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 2, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !107
  %34 = getelementptr inbounds float, ptr %19, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !107
  store float %35, ptr %32, align 4, !tbaa !107
  store float %33, ptr %34, align 4, !tbaa !107
  %36 = getelementptr inbounds %struct.BMLogVert, ptr %19, i64 0, i32 1
  %37 = load i16, ptr %36, align 2, !tbaa !109
  %38 = getelementptr inbounds %struct.BMLogVert, ptr %19, i64 0, i32 1, i64 1
  %39 = load i16, ptr %38, align 2, !tbaa !109
  %40 = getelementptr inbounds %struct.BMLogVert, ptr %19, i64 0, i32 1, i64 2
  %41 = load i16, ptr %40, align 2, !tbaa !109
  %42 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 3
  %43 = load float, ptr %42, align 4, !tbaa !107
  %44 = fmul float %43, 3.276700e+04
  %45 = fptosi float %44 to i16
  store i16 %45, ptr %36, align 2, !tbaa !109
  %46 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 3, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !107
  %48 = fmul float %47, 3.276700e+04
  %49 = fptosi float %48 to i16
  store i16 %49, ptr %38, align 2, !tbaa !109
  %50 = getelementptr inbounds %struct.BMVert, ptr %24, i64 0, i32 3, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !107
  %52 = fmul float %51, 3.276700e+04
  %53 = fptosi float %52 to i16
  store i16 %53, ptr %40, align 2, !tbaa !109
  %54 = sitofp i16 %37 to float
  %55 = fmul float %54, 0x3F00002000000000
  store float %55, ptr %42, align 4, !tbaa !107
  %56 = sitofp i16 %39 to float
  %57 = fmul float %56, 0x3F00002000000000
  store float %57, ptr %46, align 4, !tbaa !107
  %58 = sitofp i16 %41 to float
  %59 = fmul float %58, 0x3F00002000000000
  store float %59, ptr %50, align 4, !tbaa !107
  %60 = getelementptr inbounds %struct.BMHeader, ptr %24, i64 0, i32 3
  %61 = load i8, ptr %60, align 1, !tbaa !114
  %62 = getelementptr inbounds %struct.BMLogVert, ptr %19, i64 0, i32 3
  %63 = load i8, ptr %62, align 4, !tbaa !115
  store i8 %63, ptr %60, align 1, !tbaa !114
  store i8 %61, ptr %62, align 4, !tbaa !115
  %64 = getelementptr inbounds %struct.BMLogVert, ptr %19, i64 0, i32 2
  br i1 %12, label %70, label %65

65:                                               ; preds = %14
  %66 = load float, ptr %64, align 4, !tbaa !112
  %67 = load ptr, ptr %24, align 8, !tbaa !110
  %68 = getelementptr inbounds i8, ptr %67, i64 %13
  %69 = load float, ptr %68, align 4, !tbaa !107
  store float %69, ptr %64, align 4, !tbaa !112
  store float %66, ptr %68, align 4, !tbaa !107
  br label %71

70:                                               ; preds = %14
  store float 0.000000e+00, ptr %64, align 4, !tbaa !112
  br label %71

71:                                               ; preds = %70, %65
  call void @BLI_ghashIterator_step(ptr noundef nonnull %4) #6
  %72 = load ptr, ptr %7, align 8, !tbaa !63
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %14, !llvm.loop !119

74:                                               ; preds = %71, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_log_redo(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.GHashIterator, align 8
  %4 = getelementptr inbounds %struct.BMLog, ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMLog, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  br label %13

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 8, !tbaa !78
  %12 = icmp eq ptr %11, null
  br i1 %12, label %52, label %13

13:                                               ; preds = %10, %7
  %14 = phi ptr [ %9, %7 ], [ %11, %10 ]
  store ptr %14, ptr %4, align 8, !tbaa !74
  %15 = icmp eq ptr %14, null
  br i1 %15, label %52, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.BMLogEntry, ptr %14, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  tail call fastcc void @bm_log_faces_unmake(ptr noundef %0, ptr noundef %1, ptr noundef %18)
  %19 = getelementptr inbounds %struct.BMLogEntry, ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !62
  tail call fastcc void @bm_log_verts_unmake(ptr noundef %0, ptr noundef %1, ptr noundef %20)
  %21 = getelementptr inbounds %struct.BMLogEntry, ptr %14, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !69
  tail call fastcc void @bm_log_verts_restore(ptr noundef %0, ptr noundef %1, ptr noundef %22)
  %23 = getelementptr inbounds %struct.BMLogEntry, ptr %14, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  tail call fastcc void @bm_log_faces_restore(ptr noundef %0, ptr noundef %1, ptr noundef %24)
  %25 = getelementptr inbounds %struct.BMLogEntry, ptr %14, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !71
  tail call fastcc void @bm_log_vert_values_swap(ptr noundef %0, ptr noundef %1, ptr noundef %26)
  %27 = getelementptr inbounds %struct.BMLogEntry, ptr %14, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @BLI_ghashIterator_init(ptr noundef nonnull %3, ptr noundef %28) #6
  %29 = getelementptr inbounds %struct.GHashIterator, ptr %3, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !63
  %31 = icmp eq ptr %30, null
  br i1 %31, label %51, label %32

32:                                               ; preds = %16
  %33 = getelementptr inbounds %struct.BMLog, ptr %1, i64 0, i32 1
  br label %34

34:                                               ; preds = %34, %32
  %35 = phi ptr [ %30, %32 ], [ %49, %34 ]
  %36 = getelementptr inbounds %struct._gh_Entry, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !65
  %38 = getelementptr inbounds %struct._gh_Entry, ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !92
  %40 = ptrtoint ptr %37 to i64
  %41 = and i64 %40, 4294967295
  %42 = inttoptr i64 %41 to ptr
  %43 = load ptr, ptr %33, align 8, !tbaa !47
  %44 = call ptr @BLI_ghash_lookup(ptr noundef %43, ptr noundef %42) #6
  %45 = getelementptr inbounds %struct.BMHeader, ptr %44, i64 0, i32 3
  %46 = load i8, ptr %45, align 1, !tbaa !93
  %47 = getelementptr inbounds %struct.BMLogFace, ptr %39, i64 0, i32 1
  %48 = load i8, ptr %47, align 4, !tbaa !96
  store i8 %48, ptr %45, align 1, !tbaa !93
  store i8 %46, ptr %47, align 4, !tbaa !96
  call void @BLI_ghashIterator_step(ptr noundef nonnull %3) #6
  %49 = load ptr, ptr %29, align 8, !tbaa !63
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %34, !llvm.loop !98

51:                                               ; preds = %34, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  br label %52

52:                                               ; preds = %13, %51, %10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_log_vert_before_modified(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = tail call ptr @BLI_ghash_lookup(ptr noundef %7, ptr noundef %1) #6
  %9 = ptrtoint ptr %8 to i64
  %10 = and i64 %9, 4294967295
  %11 = inttoptr i64 %10 to ptr
  %12 = getelementptr inbounds %struct.BMLogEntry, ptr %5, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  %14 = tail call ptr @BLI_ghash_lookup(ptr noundef %13, ptr noundef %11) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %52, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2
  %18 = load float, ptr %17, align 4, !tbaa !107
  store float %18, ptr %14, align 4, !tbaa !107
  %19 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2, i64 1
  %20 = load float, ptr %19, align 4, !tbaa !107
  %21 = getelementptr inbounds float, ptr %14, i64 1
  store float %20, ptr %21, align 4, !tbaa !107
  %22 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2, i64 2
  %23 = load float, ptr %22, align 4, !tbaa !107
  %24 = getelementptr inbounds float, ptr %14, i64 2
  store float %23, ptr %24, align 4, !tbaa !107
  %25 = getelementptr inbounds %struct.BMLogVert, ptr %14, i64 0, i32 1
  %26 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 3
  %27 = load float, ptr %26, align 4, !tbaa !107
  %28 = fmul float %27, 3.276700e+04
  %29 = fptosi float %28 to i16
  store i16 %29, ptr %25, align 2, !tbaa !109
  %30 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 3, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !107
  %32 = fmul float %31, 3.276700e+04
  %33 = fptosi float %32 to i16
  %34 = getelementptr inbounds %struct.BMLogVert, ptr %14, i64 0, i32 1, i64 1
  store i16 %33, ptr %34, align 2, !tbaa !109
  %35 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 3, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !107
  %37 = fmul float %36, 3.276700e+04
  %38 = fptosi float %37 to i16
  %39 = getelementptr inbounds %struct.BMLogVert, ptr %14, i64 0, i32 1, i64 2
  store i16 %38, ptr %39, align 2, !tbaa !109
  %40 = icmp eq i32 %2, -1
  br i1 %40, label %46, label %41

41:                                               ; preds = %16
  %42 = load ptr, ptr %1, align 8, !tbaa !110
  %43 = sext i32 %2 to i64
  %44 = getelementptr inbounds i8, ptr %42, i64 %43
  %45 = load float, ptr %44, align 4, !tbaa !107
  br label %46

46:                                               ; preds = %16, %41
  %47 = phi float [ %45, %41 ], [ 0.000000e+00, %16 ]
  %48 = getelementptr inbounds %struct.BMLogVert, ptr %14, i64 0, i32 2
  store float %47, ptr %48, align 4, !tbaa !112
  %49 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %50 = load i8, ptr %49, align 1, !tbaa !114
  %51 = getelementptr inbounds %struct.BMLogVert, ptr %14, i64 0, i32 3
  store i8 %50, ptr %51, align 4, !tbaa !115
  br label %98

52:                                               ; preds = %3
  %53 = getelementptr inbounds %struct.BMLogEntry, ptr %5, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !71
  %55 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %54, ptr noundef %11) #6
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %98

57:                                               ; preds = %52
  %58 = load ptr, ptr %4, align 8, !tbaa !74
  %59 = getelementptr inbounds %struct.BMLogEntry, ptr %58, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !89
  %61 = tail call ptr @BLI_mempool_alloc(ptr noundef %60) #6
  %62 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2
  %63 = load float, ptr %62, align 4, !tbaa !107
  store float %63, ptr %61, align 4, !tbaa !107
  %64 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !107
  %66 = getelementptr inbounds float, ptr %61, i64 1
  store float %65, ptr %66, align 4, !tbaa !107
  %67 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !107
  %69 = getelementptr inbounds float, ptr %61, i64 2
  store float %68, ptr %69, align 4, !tbaa !107
  %70 = getelementptr inbounds %struct.BMLogVert, ptr %61, i64 0, i32 1
  %71 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 3
  %72 = load float, ptr %71, align 4, !tbaa !107
  %73 = fmul float %72, 3.276700e+04
  %74 = fptosi float %73 to i16
  store i16 %74, ptr %70, align 2, !tbaa !109
  %75 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 3, i64 1
  %76 = load float, ptr %75, align 4, !tbaa !107
  %77 = fmul float %76, 3.276700e+04
  %78 = fptosi float %77 to i16
  %79 = getelementptr inbounds %struct.BMLogVert, ptr %61, i64 0, i32 1, i64 1
  store i16 %78, ptr %79, align 2, !tbaa !109
  %80 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 3, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !107
  %82 = fmul float %81, 3.276700e+04
  %83 = fptosi float %82 to i16
  %84 = getelementptr inbounds %struct.BMLogVert, ptr %61, i64 0, i32 1, i64 2
  store i16 %83, ptr %84, align 2, !tbaa !109
  %85 = icmp eq i32 %2, -1
  br i1 %85, label %91, label %86

86:                                               ; preds = %57
  %87 = load ptr, ptr %1, align 8, !tbaa !110
  %88 = sext i32 %2 to i64
  %89 = getelementptr inbounds i8, ptr %87, i64 %88
  %90 = load float, ptr %89, align 4, !tbaa !107
  br label %91

91:                                               ; preds = %57, %86
  %92 = phi float [ %90, %86 ], [ 0.000000e+00, %57 ]
  %93 = getelementptr inbounds %struct.BMLogVert, ptr %61, i64 0, i32 2
  store float %92, ptr %93, align 4, !tbaa !112
  %94 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %95 = load i8, ptr %94, align 1, !tbaa !114
  %96 = getelementptr inbounds %struct.BMLogVert, ptr %61, i64 0, i32 3
  store i8 %95, ptr %96, align 4, !tbaa !115
  %97 = load ptr, ptr %53, align 8, !tbaa !71
  tail call void @BLI_ghash_insert(ptr noundef %97, ptr noundef %11, ptr noundef nonnull %61) #6
  br label %98

98:                                               ; preds = %52, %91, %46
  ret void
}

declare zeroext i8 @BLI_ghash_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_log_vert_added(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !38
  %5 = tail call i32 @range_tree_uint_take_any(ptr noundef %4) #6
  %6 = zext i32 %5 to i64
  %7 = inttoptr i64 %6 to ptr
  %8 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call zeroext i8 @BLI_ghash_reinsert(ptr noundef %9, ptr noundef %7, ptr noundef %1, ptr noundef null, ptr noundef null) #6
  %11 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = tail call zeroext i8 @BLI_ghash_reinsert(ptr noundef %12, ptr noundef %1, ptr noundef %7, ptr noundef null, ptr noundef null) #6
  %14 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !74
  %16 = getelementptr inbounds %struct.BMLogEntry, ptr %15, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !89
  %18 = tail call ptr @BLI_mempool_alloc(ptr noundef %17) #6
  %19 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2
  %20 = load float, ptr %19, align 4, !tbaa !107
  store float %20, ptr %18, align 4, !tbaa !107
  %21 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !107
  %23 = getelementptr inbounds float, ptr %18, i64 1
  store float %22, ptr %23, align 4, !tbaa !107
  %24 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2, i64 2
  %25 = load float, ptr %24, align 4, !tbaa !107
  %26 = getelementptr inbounds float, ptr %18, i64 2
  store float %25, ptr %26, align 4, !tbaa !107
  %27 = getelementptr inbounds %struct.BMLogVert, ptr %18, i64 0, i32 1
  %28 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 3
  %29 = load float, ptr %28, align 4, !tbaa !107
  %30 = fmul float %29, 3.276700e+04
  %31 = fptosi float %30 to i16
  store i16 %31, ptr %27, align 2, !tbaa !109
  %32 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 3, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !107
  %34 = fmul float %33, 3.276700e+04
  %35 = fptosi float %34 to i16
  %36 = getelementptr inbounds %struct.BMLogVert, ptr %18, i64 0, i32 1, i64 1
  store i16 %35, ptr %36, align 2, !tbaa !109
  %37 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 3, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !107
  %39 = fmul float %38, 3.276700e+04
  %40 = fptosi float %39 to i16
  %41 = getelementptr inbounds %struct.BMLogVert, ptr %18, i64 0, i32 1, i64 2
  store i16 %40, ptr %41, align 2, !tbaa !109
  %42 = icmp eq i32 %2, -1
  br i1 %42, label %48, label %43

43:                                               ; preds = %3
  %44 = load ptr, ptr %1, align 8, !tbaa !110
  %45 = sext i32 %2 to i64
  %46 = getelementptr inbounds i8, ptr %44, i64 %45
  %47 = load float, ptr %46, align 4, !tbaa !107
  br label %48

48:                                               ; preds = %3, %43
  %49 = phi float [ %47, %43 ], [ 0.000000e+00, %3 ]
  %50 = getelementptr inbounds %struct.BMLogVert, ptr %18, i64 0, i32 2
  store float %49, ptr %50, align 4, !tbaa !112
  %51 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %52 = load i8, ptr %51, align 1, !tbaa !114
  %53 = getelementptr inbounds %struct.BMLogVert, ptr %18, i64 0, i32 3
  store i8 %52, ptr %53, align 4, !tbaa !115
  %54 = load ptr, ptr %14, align 8, !tbaa !74
  %55 = getelementptr inbounds %struct.BMLogEntry, ptr %54, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !69
  tail call void @BLI_ghash_insert(ptr noundef %56, ptr noundef %7, ptr noundef nonnull %18) #6
  ret void
}

declare i32 @range_tree_uint_take_any(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_log_face_modified(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x ptr], align 16
  %4 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = tail call ptr @BLI_ghash_lookup(ptr noundef %5, ptr noundef %1) #6
  %7 = ptrtoint ptr %6 to i64
  %8 = and i64 %7, 4294967295
  %9 = inttoptr i64 %8 to ptr
  %10 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  %12 = getelementptr inbounds %struct.BMLogEntry, ptr %11, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  %14 = tail call ptr @BLI_mempool_alloc(ptr noundef %13) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @BM_face_as_array_vert_tri(ptr noundef %1, ptr noundef nonnull %3) #6
  %15 = load ptr, ptr %3, align 16, !tbaa !34
  %16 = load ptr, ptr %4, align 8, !tbaa !48
  %17 = call ptr @BLI_ghash_lookup(ptr noundef %16, ptr noundef %15) #6
  %18 = ptrtoint ptr %17 to i64
  %19 = trunc i64 %18 to i32
  store i32 %19, ptr %14, align 4, !tbaa !82
  %20 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = load ptr, ptr %4, align 8, !tbaa !48
  %23 = call ptr @BLI_ghash_lookup(ptr noundef %22, ptr noundef %21) #6
  %24 = ptrtoint ptr %23 to i64
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 1
  store i32 %25, ptr %26, align 4, !tbaa !82
  %27 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 2
  %28 = load ptr, ptr %27, align 16, !tbaa !34
  %29 = load ptr, ptr %4, align 8, !tbaa !48
  %30 = call ptr @BLI_ghash_lookup(ptr noundef %29, ptr noundef %28) #6
  %31 = ptrtoint ptr %30 to i64
  %32 = trunc i64 %31 to i32
  %33 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 2
  store i32 %32, ptr %33, align 4, !tbaa !82
  %34 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %35 = load i8, ptr %34, align 1, !tbaa !93
  %36 = getelementptr inbounds %struct.BMLogFace, ptr %14, i64 0, i32 1
  store i8 %35, ptr %36, align 4, !tbaa !96
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  %37 = load ptr, ptr %10, align 8, !tbaa !74
  %38 = getelementptr inbounds %struct.BMLogEntry, ptr %37, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !72
  call void @BLI_ghash_insert(ptr noundef %39, ptr noundef %9, ptr noundef nonnull %14) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_log_face_added(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x ptr], align 16
  %4 = load ptr, ptr %0, align 8, !tbaa !38
  %5 = tail call i32 @range_tree_uint_take_any(ptr noundef %4) #6
  %6 = zext i32 %5 to i64
  %7 = inttoptr i64 %6 to ptr
  %8 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = tail call zeroext i8 @BLI_ghash_reinsert(ptr noundef %9, ptr noundef %7, ptr noundef %1, ptr noundef null, ptr noundef null) #6
  %11 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = tail call zeroext i8 @BLI_ghash_reinsert(ptr noundef %12, ptr noundef %1, ptr noundef %7, ptr noundef null, ptr noundef null) #6
  %14 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !74
  %16 = getelementptr inbounds %struct.BMLogEntry, ptr %15, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !90
  %18 = tail call ptr @BLI_mempool_alloc(ptr noundef %17) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @BM_face_as_array_vert_tri(ptr noundef %1, ptr noundef nonnull %3) #6
  %19 = load ptr, ptr %3, align 16, !tbaa !34
  %20 = load ptr, ptr %11, align 8, !tbaa !48
  %21 = call ptr @BLI_ghash_lookup(ptr noundef %20, ptr noundef %19) #6
  %22 = ptrtoint ptr %21 to i64
  %23 = trunc i64 %22 to i32
  store i32 %23, ptr %18, align 4, !tbaa !82
  %24 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = load ptr, ptr %11, align 8, !tbaa !48
  %27 = call ptr @BLI_ghash_lookup(ptr noundef %26, ptr noundef %25) #6
  %28 = ptrtoint ptr %27 to i64
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds [3 x i32], ptr %18, i64 0, i64 1
  store i32 %29, ptr %30, align 4, !tbaa !82
  %31 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 2
  %32 = load ptr, ptr %31, align 16, !tbaa !34
  %33 = load ptr, ptr %11, align 8, !tbaa !48
  %34 = call ptr @BLI_ghash_lookup(ptr noundef %33, ptr noundef %32) #6
  %35 = ptrtoint ptr %34 to i64
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds [3 x i32], ptr %18, i64 0, i64 2
  store i32 %36, ptr %37, align 4, !tbaa !82
  %38 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %39 = load i8, ptr %38, align 1, !tbaa !93
  %40 = getelementptr inbounds %struct.BMLogFace, ptr %18, i64 0, i32 1
  store i8 %39, ptr %40, align 4, !tbaa !96
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  %41 = load ptr, ptr %14, align 8, !tbaa !74
  %42 = getelementptr inbounds %struct.BMLogEntry, ptr %41, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !70
  call void @BLI_ghash_insert(ptr noundef %43, ptr noundef %7, ptr noundef nonnull %18) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_log_vert_removed(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = tail call ptr @BLI_ghash_lookup(ptr noundef %7, ptr noundef %1) #6
  %9 = ptrtoint ptr %8 to i64
  %10 = and i64 %9, 4294967295
  %11 = inttoptr i64 %10 to ptr
  %12 = getelementptr inbounds %struct.BMLogEntry, ptr %5, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  %14 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %13, ptr noundef %11, ptr noundef null, ptr noundef null) #6
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = trunc i64 %9 to i32
  %18 = load ptr, ptr %0, align 8, !tbaa !38
  tail call void @range_tree_uint_release(ptr noundef %18, i32 noundef %17) #6
  br label %68

19:                                               ; preds = %3
  %20 = load ptr, ptr %4, align 8, !tbaa !74
  %21 = getelementptr inbounds %struct.BMLogEntry, ptr %20, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !89
  %23 = tail call ptr @BLI_mempool_alloc(ptr noundef %22) #6
  %24 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2
  %25 = load float, ptr %24, align 4, !tbaa !107
  store float %25, ptr %23, align 4, !tbaa !107
  %26 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !107
  %28 = getelementptr inbounds float, ptr %23, i64 1
  store float %27, ptr %28, align 4, !tbaa !107
  %29 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !107
  %31 = getelementptr inbounds float, ptr %23, i64 2
  store float %30, ptr %31, align 4, !tbaa !107
  %32 = getelementptr inbounds %struct.BMLogVert, ptr %23, i64 0, i32 1
  %33 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 3
  %34 = load float, ptr %33, align 4, !tbaa !107
  %35 = fmul float %34, 3.276700e+04
  %36 = fptosi float %35 to i16
  store i16 %36, ptr %32, align 2, !tbaa !109
  %37 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 3, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !107
  %39 = fmul float %38, 3.276700e+04
  %40 = fptosi float %39 to i16
  %41 = getelementptr inbounds %struct.BMLogVert, ptr %23, i64 0, i32 1, i64 1
  store i16 %40, ptr %41, align 2, !tbaa !109
  %42 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 3, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !107
  %44 = fmul float %43, 3.276700e+04
  %45 = fptosi float %44 to i16
  %46 = getelementptr inbounds %struct.BMLogVert, ptr %23, i64 0, i32 1, i64 2
  store i16 %45, ptr %46, align 2, !tbaa !109
  %47 = icmp eq i32 %2, -1
  br i1 %47, label %53, label %48

48:                                               ; preds = %19
  %49 = load ptr, ptr %1, align 8, !tbaa !110
  %50 = sext i32 %2 to i64
  %51 = getelementptr inbounds i8, ptr %49, i64 %50
  %52 = load float, ptr %51, align 4, !tbaa !107
  br label %53

53:                                               ; preds = %19, %48
  %54 = phi float [ %52, %48 ], [ 0.000000e+00, %19 ]
  %55 = getelementptr inbounds %struct.BMLogVert, ptr %23, i64 0, i32 2
  store float %54, ptr %55, align 4, !tbaa !112
  %56 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %57 = load i8, ptr %56, align 1, !tbaa !114
  %58 = getelementptr inbounds %struct.BMLogVert, ptr %23, i64 0, i32 3
  store i8 %57, ptr %58, align 4, !tbaa !115
  %59 = getelementptr inbounds %struct.BMLogEntry, ptr %5, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !62
  tail call void @BLI_ghash_insert(ptr noundef %60, ptr noundef %11, ptr noundef nonnull %23) #6
  %61 = getelementptr inbounds %struct.BMLogEntry, ptr %5, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !71
  %63 = tail call ptr @BLI_ghash_lookup(ptr noundef %62, ptr noundef %11) #6
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %53
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %23, ptr noundef nonnull align 4 dereferenceable(28) %63, i64 28, i1 false), !tbaa.struct !120
  %66 = load ptr, ptr %61, align 8, !tbaa !71
  %67 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %66, ptr noundef %11, ptr noundef null, ptr noundef null) #6
  br label %68

68:                                               ; preds = %53, %65, %16
  ret void
}

declare zeroext i8 @BLI_ghash_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @range_tree_uint_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @BM_log_face_removed(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x ptr], align 16
  %4 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = tail call ptr @BLI_ghash_lookup(ptr noundef %7, ptr noundef %1) #6
  %9 = ptrtoint ptr %8 to i64
  %10 = and i64 %9, 4294967295
  %11 = inttoptr i64 %10 to ptr
  %12 = getelementptr inbounds %struct.BMLogEntry, ptr %5, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  %14 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %13, ptr noundef %11, ptr noundef null, ptr noundef null) #6
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = trunc i64 %9 to i32
  %18 = load ptr, ptr %0, align 8, !tbaa !38
  tail call void @range_tree_uint_release(ptr noundef %18, i32 noundef %17) #6
  br label %48

19:                                               ; preds = %2
  %20 = load ptr, ptr %4, align 8, !tbaa !74
  %21 = getelementptr inbounds %struct.BMLogEntry, ptr %20, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !90
  %23 = tail call ptr @BLI_mempool_alloc(ptr noundef %22) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  call void @BM_face_as_array_vert_tri(ptr noundef %1, ptr noundef nonnull %3) #6
  %24 = load ptr, ptr %3, align 16, !tbaa !34
  %25 = load ptr, ptr %6, align 8, !tbaa !48
  %26 = call ptr @BLI_ghash_lookup(ptr noundef %25, ptr noundef %24) #6
  %27 = ptrtoint ptr %26 to i64
  %28 = trunc i64 %27 to i32
  store i32 %28, ptr %23, align 4, !tbaa !82
  %29 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = load ptr, ptr %6, align 8, !tbaa !48
  %32 = call ptr @BLI_ghash_lookup(ptr noundef %31, ptr noundef %30) #6
  %33 = ptrtoint ptr %32 to i64
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds [3 x i32], ptr %23, i64 0, i64 1
  store i32 %34, ptr %35, align 4, !tbaa !82
  %36 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 2
  %37 = load ptr, ptr %36, align 16, !tbaa !34
  %38 = load ptr, ptr %6, align 8, !tbaa !48
  %39 = call ptr @BLI_ghash_lookup(ptr noundef %38, ptr noundef %37) #6
  %40 = ptrtoint ptr %39 to i64
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds [3 x i32], ptr %23, i64 0, i64 2
  store i32 %41, ptr %42, align 4, !tbaa !82
  %43 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %44 = load i8, ptr %43, align 1, !tbaa !93
  %45 = getelementptr inbounds %struct.BMLogFace, ptr %23, i64 0, i32 1
  store i8 %44, ptr %45, align 4, !tbaa !96
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  %46 = getelementptr inbounds %struct.BMLogEntry, ptr %5, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !68
  call void @BLI_ghash_insert(ptr noundef %47, ptr noundef %11, ptr noundef nonnull %23) #6
  br label %48

48:                                               ; preds = %19, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_log_all_added(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %5 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %4, i32 noundef 34) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %6 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %6, align 4, !tbaa !49
  %7 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %7, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %8, align 8, !tbaa !52
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  store ptr %10, ptr %3, align 8, !tbaa !54
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #6
  %11 = load ptr, ptr %8, align 8, !tbaa !52
  %12 = call ptr %11(ptr noundef nonnull %3) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2, %14
  %15 = phi ptr [ %17, %14 ], [ %12, %2 ]
  call void @BM_log_vert_added(ptr noundef %1, ptr noundef nonnull %15, i32 noundef %5)
  %16 = load ptr, ptr %8, align 8, !tbaa !52
  %17 = call ptr %16(ptr noundef nonnull %3) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !llvm.loop !121

19:                                               ; preds = %14, %2
  store i8 3, ptr %6, align 4, !tbaa !49
  store ptr @bmiter__elem_of_mesh_begin, ptr %7, align 8, !tbaa !51
  store ptr @bmiter__elem_of_mesh_step, ptr %8, align 8, !tbaa !52
  %20 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  store ptr %21, ptr %3, align 8, !tbaa !54
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #6
  %22 = load ptr, ptr %8, align 8, !tbaa !52
  %23 = call ptr %22(ptr noundef nonnull %3) #6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %19, %25
  %26 = phi ptr [ %28, %25 ], [ %23, %19 ]
  call void @BM_log_face_added(ptr noundef %1, ptr noundef nonnull %26)
  %27 = load ptr, ptr %8, align 8, !tbaa !52
  %28 = call ptr %27(ptr noundef nonnull %3) #6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %25, !llvm.loop !122

30:                                               ; preds = %25, %19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  ret void
}

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_log_before_all_removed(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %5 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %4, i32 noundef 34) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %6 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %6, align 4, !tbaa !49
  %7 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %7, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %8, align 8, !tbaa !52
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  store ptr %10, ptr %3, align 8, !tbaa !54
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #6
  %11 = load ptr, ptr %8, align 8, !tbaa !52
  %12 = call ptr %11(ptr noundef nonnull %3) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2, %14
  %15 = phi ptr [ %17, %14 ], [ %12, %2 ]
  call void @BM_log_face_removed(ptr noundef %1, ptr noundef nonnull %15)
  %16 = load ptr, ptr %8, align 8, !tbaa !52
  %17 = call ptr %16(ptr noundef nonnull %3) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !llvm.loop !123

19:                                               ; preds = %14, %2
  store i8 1, ptr %6, align 4, !tbaa !49
  store ptr @bmiter__elem_of_mesh_begin, ptr %7, align 8, !tbaa !51
  store ptr @bmiter__elem_of_mesh_step, ptr %8, align 8, !tbaa !52
  %20 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !53
  store ptr %21, ptr %3, align 8, !tbaa !54
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #6
  %22 = load ptr, ptr %8, align 8, !tbaa !52
  %23 = call ptr %22(ptr noundef nonnull %3) #6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %19, %25
  %26 = phi ptr [ %28, %25 ], [ %23, %19 ]
  call void @BM_log_vert_removed(ptr noundef %1, ptr noundef nonnull %26, i32 noundef %5)
  %27 = load ptr, ptr %8, align 8, !tbaa !52
  %28 = call ptr %27(ptr noundef nonnull %3) #6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %25, !llvm.loop !124

30:                                               ; preds = %25, %19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_log_original_vert_co(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef %1) #6
  %8 = ptrtoint ptr %7 to i64
  %9 = and i64 %8, 4294967295
  %10 = inttoptr i64 %9 to ptr
  %11 = getelementptr inbounds %struct.BMLogEntry, ptr %4, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = tail call ptr @BLI_ghash_lookup(ptr noundef %12, ptr noundef %10) #6
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @BM_log_original_vert_no(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef %1) #6
  %8 = ptrtoint ptr %7 to i64
  %9 = and i64 %8, 4294967295
  %10 = inttoptr i64 %9 to ptr
  %11 = getelementptr inbounds %struct.BMLogEntry, ptr %4, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = tail call ptr @BLI_ghash_lookup(ptr noundef %12, ptr noundef %10) #6
  %14 = getelementptr inbounds %struct.BMLogVert, ptr %13, i64 0, i32 1
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define dso_local float @BM_log_original_mask(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef %1) #6
  %8 = ptrtoint ptr %7 to i64
  %9 = and i64 %8, 4294967295
  %10 = inttoptr i64 %9 to ptr
  %11 = getelementptr inbounds %struct.BMLogEntry, ptr %4, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = tail call ptr @BLI_ghash_lookup(ptr noundef %12, ptr noundef %10) #6
  %14 = getelementptr inbounds %struct.BMLogVert, ptr %13, i64 0, i32 2
  %15 = load float, ptr %14, align 4, !tbaa !112
  ret float %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BM_log_current_entry(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BM_log_unused_ids(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  ret ptr %2
}

declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @range_tree_uint_retake(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare ptr @BLI_ghash_int_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @uint_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load i32, ptr %0, align 4, !tbaa !82
  %4 = load i32, ptr %1, align 4, !tbaa !82
  %5 = icmp ult i32 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_face_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_edge_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_vert_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BM_face_create_verts(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_ghash_reinsert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_face_as_array_vert_tri(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 0}
!39 = !{!"BMLog", !35, i64 0, !35, i64 8, !35, i64 16, !40, i64 24, !35, i64 40}
!40 = !{!"ListBase", !35, i64 0, !35, i64 8}
!41 = !{!42, !43, i64 0}
!42 = !{!"BMesh", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !43, i64 88, !43, i64 92, !43, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !43, i64 128, !35, i64 136, !44, i64 144, !44, i64 344, !44, i64 544, !44, i64 744, !45, i64 944, !43, i64 948, !43, i64 952, !43, i64 956, !40, i64 960, !35, i64 976, !40, i64 984, !35, i64 1000}
!43 = !{!"int", !36, i64 0}
!44 = !{!"CustomData", !35, i64 0, !36, i64 8, !43, i64 172, !43, i64 176, !43, i64 180, !35, i64 184, !35, i64 192}
!45 = !{!"short", !36, i64 0}
!46 = !{!42, !43, i64 12}
!47 = !{!39, !35, i64 8}
!48 = !{!39, !35, i64 16}
!49 = !{!50, !36, i64 60}
!50 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !43, i64 56, !36, i64 60}
!51 = !{!50, !35, i64 40}
!52 = !{!50, !35, i64 48}
!53 = !{!42, !35, i64 32}
!54 = !{!36, !36, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!42, !35, i64 56}
!59 = distinct !{!59, !56, !57}
!60 = !{!61, !35, i64 80}
!61 = !{!"BMLogEntry", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80}
!62 = !{!61, !35, i64 16}
!63 = !{!64, !35, i64 8}
!64 = !{!"GHashIterator", !35, i64 0, !35, i64 8, !43, i64 16}
!65 = !{!66, !35, i64 8}
!66 = !{!"_gh_Entry", !35, i64 0, !35, i64 8, !35, i64 16}
!67 = distinct !{!67, !56, !57}
!68 = !{!61, !35, i64 24}
!69 = !{!61, !35, i64 32}
!70 = !{!61, !35, i64 40}
!71 = !{!61, !35, i64 48}
!72 = !{!61, !35, i64 56}
!73 = !{!61, !35, i64 8}
!74 = !{!39, !35, i64 40}
!75 = !{!39, !35, i64 32}
!76 = distinct !{!76, !56, !57}
!77 = !{!39, !35, i64 24}
!78 = !{!61, !35, i64 0}
!79 = distinct !{!79, !56, !57}
!80 = distinct !{!80, !56, !57}
!81 = distinct !{!81, !56, !57}
!82 = !{!43, !43, i64 0}
!83 = distinct !{!83, !56, !57}
!84 = distinct !{!84, !56, !57}
!85 = distinct !{!85, !56, !57}
!86 = distinct !{!86, !56, !57}
!87 = distinct !{!87, !56, !57}
!88 = distinct !{!88, !56, !57}
!89 = !{!61, !35, i64 64}
!90 = !{!61, !35, i64 72}
!91 = distinct !{!91, !56, !57}
!92 = !{!66, !35, i64 16}
!93 = !{!94, !36, i64 13}
!94 = !{!"BMFace", !95, i64 0, !35, i64 16, !35, i64 24, !43, i64 32, !36, i64 36, !45, i64 48}
!95 = !{!"BMHeader", !35, i64 0, !43, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!96 = !{!97, !36, i64 12}
!97 = !{!"", !36, i64 0, !36, i64 12}
!98 = distinct !{!98, !56, !57}
!99 = !{!100, !35, i64 24}
!100 = !{!"BMLoop", !95, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!101 = distinct !{!101, !56, !57}
!102 = !{!103, !35, i64 40}
!103 = !{!"BMEdge", !95, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !104, i64 48, !104, i64 64}
!104 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!105 = distinct !{!105, !56, !57}
!106 = distinct !{!106, !56, !57}
!107 = !{!108, !108, i64 0}
!108 = !{!"float", !36, i64 0}
!109 = !{!45, !45, i64 0}
!110 = !{!111, !35, i64 0}
!111 = !{!"BMVert", !95, i64 0, !35, i64 16, !36, i64 24, !36, i64 36, !35, i64 48}
!112 = !{!113, !108, i64 20}
!113 = !{!"", !36, i64 0, !36, i64 12, !108, i64 20, !36, i64 24}
!114 = !{!111, !36, i64 13}
!115 = !{!113, !36, i64 24}
!116 = distinct !{!116, !56, !57}
!117 = distinct !{!117, !56, !57}
!118 = distinct !{!118, !56, !57}
!119 = distinct !{!119, !56, !57}
!120 = !{i64 0, i64 12, !54, i64 12, i64 6, !54, i64 20, i64 4, !107, i64 24, i64 1, !54}
!121 = distinct !{!121, !56, !57}
!122 = distinct !{!122, !56, !57}
!123 = distinct !{!123, !56, !57}
!124 = distinct !{!124, !56, !57}
