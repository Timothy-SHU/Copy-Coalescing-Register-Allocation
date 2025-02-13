; ModuleID = 'blender/source/blender/bmesh/intern/bmesh_log.c'
source_filename = "blender/source/blender/bmesh/intern/bmesh_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMLog = type { ptr, ptr, ptr, %struct.ListBase, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMLogEntry = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMLogVert = type { [3 x float], [3 x i16], float, i8 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMLogFace = type { [3 x i32], i8 }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_log_create = private unnamed_addr constant [14 x i8] c"BM_log_create\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_log_mesh_elems_reorder = private unnamed_addr constant [26 x i8] c"BM_log_mesh_elems_reorder\00", align 1
@__func__.bm_log_compress_ids_to_indices = private unnamed_addr constant [31 x i8] c"bm_log_compress_ids_to_indices\00", align 1
@__func__.bm_log_entry_create = private unnamed_addr constant [20 x i8] c"bm_log_entry_create\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_log_create(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 48, ptr noundef nonnull @__func__.BM_log_create) #10
  %4 = tail call ptr @range_tree_uint_alloc(i32 noundef 0, i32 noundef -1) #10
  store ptr %4, ptr %3, align 8, !tbaa !38
  %5 = load i32, ptr %0, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !46
  %8 = add nsw i32 %7, %5
  %9 = tail call ptr @BLI_ghash_ptr_new_ex(ptr noundef nonnull @__func__.BM_log_create, i32 noundef %8) #10
  %10 = getelementptr inbounds %struct.BMLog, ptr %3, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !47
  %11 = load i32, ptr %0, align 8, !tbaa !41
  %12 = load i32, ptr %6, align 4, !tbaa !46
  %13 = add nsw i32 %12, %11
  %14 = tail call ptr @BLI_ghash_ptr_new_ex(ptr noundef nonnull @__func__.BM_log_create, i32 noundef %13) #10
  %15 = getelementptr inbounds %struct.BMLog, ptr %3, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !48
  tail call fastcc void @bm_log_assign_ids(ptr noundef nonnull %0, ptr noundef nonnull %3) #11
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @range_tree_uint_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_log_assign_ids(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !49 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %4 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %10, %6 ], [ %4, %2 ]
  %8 = load ptr, ptr %1, align 8, !tbaa !38
  %9 = call i32 @range_tree_uint_take_any(ptr noundef %8) #10
  call fastcc void @bm_log_vert_id_set(ptr noundef nonnull %1, ptr noundef nonnull %7, i32 noundef %9) #11
  %10 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %6, !llvm.loop !50

12:                                               ; preds = %6, %2
  %13 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 3) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %19, %15 ], [ %13, %12 ]
  %17 = load ptr, ptr %1, align 8, !tbaa !38
  %18 = call i32 @range_tree_uint_take_any(ptr noundef %17) #10
  call fastcc void @bm_log_face_id_set(ptr noundef nonnull %1, ptr noundef nonnull %16, i32 noundef %18) #11
  %19 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %15, !llvm.loop !52

21:                                               ; preds = %15, %12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_log_cleanup_entry(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  tail call fastcc void @bm_log_id_ghash_retake(ptr noundef %6, ptr noundef %8) #11
  %9 = load ptr, ptr %3, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  tail call fastcc void @bm_log_id_ghash_retake(ptr noundef %9, ptr noundef %11) #11
  %12 = load ptr, ptr %3, align 8, !tbaa !38
  %13 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  tail call fastcc void @bm_log_id_ghash_retake(ptr noundef %12, ptr noundef %14) #11
  %15 = load ptr, ptr %3, align 8, !tbaa !38
  %16 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !58
  tail call fastcc void @bm_log_id_ghash_retake(ptr noundef %15, ptr noundef %17) #11
  %18 = load ptr, ptr %3, align 8, !tbaa !38
  %19 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  tail call fastcc void @bm_log_id_ghash_retake(ptr noundef %18, ptr noundef %20) #11
  %21 = load ptr, ptr %3, align 8, !tbaa !38
  %22 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !60
  tail call fastcc void @bm_log_id_ghash_retake(ptr noundef %21, ptr noundef %23) #11
  %24 = load ptr, ptr %7, align 8, !tbaa !55
  tail call void @BLI_ghash_clear(ptr noundef %24, ptr noundef null, ptr noundef null) #10
  %25 = load ptr, ptr %10, align 8, !tbaa !56
  tail call void @BLI_ghash_clear(ptr noundef %25, ptr noundef null, ptr noundef null) #10
  %26 = load ptr, ptr %13, align 8, !tbaa !57
  tail call void @BLI_ghash_clear(ptr noundef %26, ptr noundef null, ptr noundef null) #10
  %27 = load ptr, ptr %16, align 8, !tbaa !58
  tail call void @BLI_ghash_clear(ptr noundef %27, ptr noundef null, ptr noundef null) #10
  %28 = load ptr, ptr %19, align 8, !tbaa !59
  tail call void @BLI_ghash_clear(ptr noundef %28, ptr noundef null, ptr noundef null) #10
  br label %29

29:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_log_id_ghash_retake(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !61 {
  %3 = alloca %struct.GHashIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @BLI_ghashIterator_init(ptr noundef nonnull %3, ptr noundef %1) #10
  %4 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %3) #11, !range !62
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2, %6
  %7 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef nonnull %3) #11
  %8 = ptrtoint ptr %7 to i64
  %9 = trunc i64 %8 to i32
  %10 = call zeroext i8 @range_tree_uint_retake(ptr noundef %0, i32 noundef %9) #10
  call void @BLI_ghashIterator_step(ptr noundef nonnull %3) #10
  %11 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %3) #11, !range !62
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %6, label %13, !llvm.loop !63

13:                                               ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghash_clear(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_log_from_existing_entries_create(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BM_log_create(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.BMLogEntry, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr null, ptr %1
  %8 = getelementptr inbounds %struct.BMLog, ptr %3, i64 0, i32 4
  store ptr %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.BMLog, ptr %3, i64 0, i32 3, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !65
  br label %10

10:                                               ; preds = %10, %2
  %11 = phi ptr [ %1, %2 ], [ %13, %10 ]
  %12 = getelementptr inbounds %struct.BMLogEntry, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %10, !llvm.loop !66

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.BMLog, ptr %3, i64 0, i32 3
  store ptr %11, ptr %16, align 8, !tbaa !67
  %17 = load ptr, ptr %1, align 8, !tbaa !68
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %22

19:                                               ; preds = %22
  store ptr %23, ptr %9, align 8, !tbaa !65
  %20 = icmp eq ptr %11, null
  br i1 %20, label %49, label %21

21:                                               ; preds = %15, %19
  br label %26

22:                                               ; preds = %15, %22
  %23 = phi ptr [ %24, %22 ], [ %17, %15 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !68
  %25 = icmp eq ptr %24, null
  br i1 %25, label %19, label %22, !llvm.loop !69

26:                                               ; preds = %21, %26
  %27 = phi ptr [ %47, %26 ], [ %11, %21 ]
  %28 = getelementptr inbounds %struct.BMLogEntry, ptr %27, i64 0, i32 10
  store ptr %3, ptr %28, align 8, !tbaa !53
  %29 = load ptr, ptr %3, align 8, !tbaa !38
  %30 = getelementptr inbounds %struct.BMLogEntry, ptr %27, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !55
  tail call fastcc void @bm_log_id_ghash_retake(ptr noundef %29, ptr noundef %31) #11
  %32 = load ptr, ptr %3, align 8, !tbaa !38
  %33 = getelementptr inbounds %struct.BMLogEntry, ptr %27, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !56
  tail call fastcc void @bm_log_id_ghash_retake(ptr noundef %32, ptr noundef %34) #11
  %35 = load ptr, ptr %3, align 8, !tbaa !38
  %36 = getelementptr inbounds %struct.BMLogEntry, ptr %27, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !57
  tail call fastcc void @bm_log_id_ghash_retake(ptr noundef %35, ptr noundef %37) #11
  %38 = load ptr, ptr %3, align 8, !tbaa !38
  %39 = getelementptr inbounds %struct.BMLogEntry, ptr %27, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !58
  tail call fastcc void @bm_log_id_ghash_retake(ptr noundef %38, ptr noundef %40) #11
  %41 = load ptr, ptr %3, align 8, !tbaa !38
  %42 = getelementptr inbounds %struct.BMLogEntry, ptr %27, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !59
  tail call fastcc void @bm_log_id_ghash_retake(ptr noundef %41, ptr noundef %43) #11
  %44 = load ptr, ptr %3, align 8, !tbaa !38
  %45 = getelementptr inbounds %struct.BMLogEntry, ptr %27, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !60
  tail call fastcc void @bm_log_id_ghash_retake(ptr noundef %44, ptr noundef %46) #11
  %47 = load ptr, ptr %27, align 8, !tbaa !34
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %26, !llvm.loop !70

49:                                               ; preds = %26, %19
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_log_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @range_tree_uint_free(ptr noundef nonnull %2) #10
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @BLI_ghash_free(ptr noundef nonnull %7, ptr noundef null, ptr noundef null) #10
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @BLI_ghash_free(ptr noundef nonnull %12, ptr noundef null, ptr noundef null) #10
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15, %19
  %20 = phi ptr [ %22, %19 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.BMLogEntry, ptr %20, i64 0, i32 10
  store ptr null, ptr %21, align 8, !tbaa !53
  %22 = load ptr, ptr %20, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %19, !llvm.loop !71

24:                                               ; preds = %19, %15
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %25(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize
declare void @range_tree_uint_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @BM_log_length(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 3
  %3 = tail call i32 @BLI_countlist(ptr noundef nonnull %2) #10
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_log_mesh_elems_reorder(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %4 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %5 = load i32, ptr %0, align 8, !tbaa !41
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 2
  %8 = tail call ptr %4(i64 noundef %7, ptr noundef nonnull @__func__.BM_log_mesh_elems_reorder) #10
  %9 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %0, i8 noundef zeroext 1) #11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %2, %11
  %12 = phi i64 [ %15, %11 ], [ 0, %2 ]
  %13 = phi ptr [ %17, %11 ], [ %9, %2 ]
  %14 = call fastcc i32 @bm_log_vert_id_get(ptr noundef %1, ptr noundef nonnull %13) #11
  %15 = add nuw i64 %12, 1
  %16 = getelementptr inbounds i32, ptr %8, i64 %12
  store i32 %14, ptr %16, align 4, !tbaa !72
  %17 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %11, !llvm.loop !73

19:                                               ; preds = %11, %2
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !46
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 2
  %25 = call ptr %20(i64 noundef %24, ptr noundef nonnull @__func__.BM_log_mesh_elems_reorder) #10
  %26 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %0, i8 noundef zeroext 3) #11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %19, %28
  %29 = phi i64 [ %32, %28 ], [ 0, %19 ]
  %30 = phi ptr [ %34, %28 ], [ %26, %19 ]
  %31 = call fastcc i32 @bm_log_face_id_get(ptr noundef %1, ptr noundef nonnull %30) #11
  %32 = add nuw i64 %29, 1
  %33 = getelementptr inbounds i32, ptr %25, i64 %29
  store i32 %31, ptr %33, align 4, !tbaa !72
  %34 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #11
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %28, !llvm.loop !74

36:                                               ; preds = %28, %19
  %37 = load i32, ptr %0, align 8, !tbaa !41
  %38 = call fastcc ptr @bm_log_compress_ids_to_indices(ptr noundef %8, i32 noundef %37) #11
  %39 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %0, i8 noundef zeroext 1) #11
  %40 = icmp eq ptr %39, null
  br i1 %40, label %54, label %41

41:                                               ; preds = %36, %41
  %42 = phi i64 [ %50, %41 ], [ 0, %36 ]
  %43 = phi ptr [ %52, %41 ], [ %39, %36 ]
  %44 = call fastcc i32 @bm_log_vert_id_get(ptr noundef %1, ptr noundef nonnull %43) #11
  %45 = zext i32 %44 to i64
  %46 = inttoptr i64 %45 to ptr
  %47 = call ptr @BLI_ghash_lookup(ptr noundef %38, ptr noundef %46) #10
  %48 = ptrtoint ptr %47 to i64
  %49 = trunc i64 %48 to i32
  %50 = add nuw i64 %42, 1
  %51 = getelementptr inbounds i32, ptr %8, i64 %42
  store i32 %49, ptr %51, align 4, !tbaa !72
  %52 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #11
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %41, !llvm.loop !75

54:                                               ; preds = %41, %36
  call void @BLI_ghash_free(ptr noundef %38, ptr noundef null, ptr noundef null) #10
  %55 = load i32, ptr %21, align 4, !tbaa !46
  %56 = call fastcc ptr @bm_log_compress_ids_to_indices(ptr noundef %25, i32 noundef %55) #11
  %57 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %0, i8 noundef zeroext 3) #11
  %58 = icmp eq ptr %57, null
  br i1 %58, label %72, label %59

59:                                               ; preds = %54, %59
  %60 = phi i64 [ %68, %59 ], [ 0, %54 ]
  %61 = phi ptr [ %70, %59 ], [ %57, %54 ]
  %62 = call fastcc i32 @bm_log_face_id_get(ptr noundef %1, ptr noundef nonnull %61) #11
  %63 = zext i32 %62 to i64
  %64 = inttoptr i64 %63 to ptr
  %65 = call ptr @BLI_ghash_lookup(ptr noundef %56, ptr noundef %64) #10
  %66 = ptrtoint ptr %65 to i64
  %67 = trunc i64 %66 to i32
  %68 = add nuw i64 %60, 1
  %69 = getelementptr inbounds i32, ptr %25, i64 %60
  store i32 %67, ptr %69, align 4, !tbaa !72
  %70 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #11
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %59, !llvm.loop !76

72:                                               ; preds = %59, %54
  call void @BLI_ghash_free(ptr noundef %56, ptr noundef null, ptr noundef null) #10
  call void @BM_mesh_remap(ptr noundef nonnull %0, ptr noundef %8, ptr noundef null, ptr noundef %25) #10
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %73(ptr noundef %8) #10
  %74 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %74(ptr noundef %25) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !77 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #11
  %4 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #11
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @bm_log_vert_id_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !78 {
  %3 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = tail call ptr @BLI_ghash_lookup(ptr noundef %4, ptr noundef %1) #10
  %6 = ptrtoint ptr %5 to i64
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !79 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = tail call ptr %3(ptr noundef %0) #10
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @bm_log_face_id_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !82 {
  %3 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = tail call ptr @BLI_ghash_lookup(ptr noundef %4, ptr noundef %1) #10
  %6 = ptrtoint ptr %5 to i64
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bm_log_compress_ids_to_indices(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !83 {
  %3 = tail call ptr @BLI_ghash_int_new_ex(ptr noundef nonnull @__func__.bm_log_compress_ids_to_indices, i32 noundef %1) #10
  %4 = zext i32 %1 to i64
  tail call void @qsort(ptr noundef %0, i64 noundef %4, i64 noundef 4, ptr noundef nonnull @uint_compare) #10
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %2, %6
  %7 = phi i64 [ %13, %6 ], [ 0, %2 ]
  %8 = getelementptr inbounds i32, ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !72
  %10 = zext i32 %9 to i64
  %11 = inttoptr i64 %10 to ptr
  %12 = inttoptr i64 %7 to ptr
  tail call void @BLI_ghash_insert(ptr noundef %3, ptr noundef %11, ptr noundef %12) #10
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, %4
  br i1 %14, label %15, label %6, !llvm.loop !84

15:                                               ; preds = %6, %2
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_remap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BM_log_entry_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !68
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 3
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi ptr [ %6, %8 ], [ %12, %10 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !68
  tail call fastcc void @bm_log_entry_free(ptr noundef nonnull %11) #11
  tail call void @BLI_freelinkN(ptr noundef nonnull %9, ptr noundef nonnull %11) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %10, !llvm.loop !86

14:                                               ; preds = %10, %5, %1
  %15 = tail call fastcc ptr @bm_log_entry_create() #11
  %16 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 3
  tail call void @BLI_addtail(ptr noundef nonnull %16, ptr noundef %15) #10
  %17 = getelementptr inbounds %struct.BMLogEntry, ptr %15, i64 0, i32 10
  store ptr %0, ptr %17, align 8, !tbaa !53
  store ptr %15, ptr %2, align 8, !tbaa !85
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_log_entry_free(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !87 {
  %2 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  tail call void @BLI_ghash_free(ptr noundef %3, ptr noundef null, ptr noundef null) #10
  %4 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  tail call void @BLI_ghash_free(ptr noundef %5, ptr noundef null, ptr noundef null) #10
  %6 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  tail call void @BLI_ghash_free(ptr noundef %7, ptr noundef null, ptr noundef null) #10
  %8 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  tail call void @BLI_ghash_free(ptr noundef %9, ptr noundef null, ptr noundef null) #10
  %10 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !59
  tail call void @BLI_ghash_free(ptr noundef %11, ptr noundef null, ptr noundef null) #10
  %12 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  tail call void @BLI_ghash_free(ptr noundef %13, ptr noundef null, ptr noundef null) #10
  %14 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  tail call void @BLI_mempool_destroy(ptr noundef %15) #10
  %16 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !89
  tail call void @BLI_mempool_destroy(ptr noundef %17) #10
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bm_log_entry_create() unnamed_addr #0 !PGOFuncName !90 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 88, ptr noundef nonnull @__func__.bm_log_entry_create) #10
  %3 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.bm_log_entry_create) #10
  %4 = getelementptr inbounds %struct.BMLogEntry, ptr %2, i64 0, i32 2
  store ptr %3, ptr %4, align 8, !tbaa !55
  %5 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.bm_log_entry_create) #10
  %6 = getelementptr inbounds %struct.BMLogEntry, ptr %2, i64 0, i32 3
  store ptr %5, ptr %6, align 8, !tbaa !56
  %7 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.bm_log_entry_create) #10
  %8 = getelementptr inbounds %struct.BMLogEntry, ptr %2, i64 0, i32 4
  store ptr %7, ptr %8, align 8, !tbaa !57
  %9 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.bm_log_entry_create) #10
  %10 = getelementptr inbounds %struct.BMLogEntry, ptr %2, i64 0, i32 5
  store ptr %9, ptr %10, align 8, !tbaa !58
  %11 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.bm_log_entry_create) #10
  %12 = getelementptr inbounds %struct.BMLogEntry, ptr %2, i64 0, i32 6
  store ptr %11, ptr %12, align 8, !tbaa !59
  %13 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.bm_log_entry_create) #10
  %14 = getelementptr inbounds %struct.BMLogEntry, ptr %2, i64 0, i32 7
  store ptr %13, ptr %14, align 8, !tbaa !60
  %15 = tail call ptr @BLI_mempool_create(i32 noundef 28, i32 noundef 0, i32 noundef 64, i32 noundef 0) #10
  %16 = getelementptr inbounds %struct.BMLogEntry, ptr %2, i64 0, i32 8
  store ptr %15, ptr %16, align 8, !tbaa !88
  %17 = tail call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 64, i32 noundef 0) #10
  %18 = getelementptr inbounds %struct.BMLogEntry, ptr %2, i64 0, i32 9
  store ptr %17, ptr %18, align 8, !tbaa !89
  ret ptr %2
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_log_entry_drop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq ptr %6, null
  br i1 %4, label %8, label %18

8:                                                ; preds = %1
  br i1 %7, label %9, label %14

9:                                                ; preds = %8
  %10 = load ptr, ptr %0, align 8, !tbaa !68
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.BMLogEntry, ptr %10, i64 0, i32 1
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi ptr [ %13, %12 ], [ %6, %8 ]
  store ptr null, ptr %15, align 8, !tbaa !34
  br label %16

16:                                               ; preds = %14, %9
  tail call fastcc void @bm_log_entry_free(ptr noundef nonnull %0) #11
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %17(ptr noundef nonnull %0) #10
  br label %35

18:                                               ; preds = %1
  br i1 %7, label %27, label %19

19:                                               ; preds = %18
  %20 = load ptr, ptr %0, align 8, !tbaa !68
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !58
  tail call fastcc void @bm_log_id_ghash_release(ptr noundef nonnull %3, ptr noundef %24) #11
  %25 = getelementptr inbounds %struct.BMLogEntry, ptr %0, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !57
  tail call fastcc void @bm_log_id_ghash_release(ptr noundef nonnull %3, ptr noundef %26) #11
  br label %27

27:                                               ; preds = %22, %19, %18
  %28 = getelementptr inbounds %struct.BMLog, ptr %3, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !85
  %30 = icmp eq ptr %29, %0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load ptr, ptr %5, align 8, !tbaa !64
  store ptr %32, ptr %28, align 8, !tbaa !85
  br label %33

33:                                               ; preds = %31, %27
  tail call fastcc void @bm_log_entry_free(ptr noundef nonnull %0) #11
  %34 = getelementptr inbounds %struct.BMLog, ptr %3, i64 0, i32 3
  tail call void @BLI_freelinkN(ptr noundef nonnull %34, ptr noundef nonnull %0) #10
  br label %35

35:                                               ; preds = %33, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_log_id_ghash_release(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !91 {
  %3 = alloca %struct.GHashIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @BLI_ghashIterator_init(ptr noundef nonnull %3, ptr noundef %1) #10
  %4 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %3) #11, !range !62
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2, %6
  %7 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef nonnull %3) #11
  %8 = ptrtoint ptr %7 to i64
  %9 = trunc i64 %8 to i32
  %10 = load ptr, ptr %0, align 8, !tbaa !38
  call void @range_tree_uint_release(ptr noundef %10, i32 noundef %9) #10
  call void @BLI_ghashIterator_step(ptr noundef nonnull %3) #10
  %11 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %3) #11, !range !62
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %6, label %13, !llvm.loop !92

13:                                               ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_log_undo(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMLog, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.BMLogEntry, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !64
  store ptr %8, ptr %3, align 8, !tbaa !85
  %9 = getelementptr inbounds %struct.BMLogEntry, ptr %4, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  tail call fastcc void @bm_log_faces_unmake(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %10) #11
  %11 = getelementptr inbounds %struct.BMLogEntry, ptr %4, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  tail call fastcc void @bm_log_verts_unmake(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %12) #11
  %13 = getelementptr inbounds %struct.BMLogEntry, ptr %4, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  tail call fastcc void @bm_log_verts_restore(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %14) #11
  %15 = getelementptr inbounds %struct.BMLogEntry, ptr %4, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  tail call fastcc void @bm_log_faces_restore(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %16) #11
  %17 = getelementptr inbounds %struct.BMLogEntry, ptr %4, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  tail call fastcc void @bm_log_vert_values_swap(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %18) #11
  %19 = getelementptr inbounds %struct.BMLogEntry, ptr %4, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !60
  tail call fastcc void @bm_log_face_values_swap(ptr noundef nonnull %1, ptr noundef %20) #11
  br label %21

21:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_log_faces_unmake(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !93 {
  %4 = alloca %struct.GHashIterator, align 8
  %5 = alloca [3 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @BLI_ghashIterator_init(ptr noundef nonnull %4, ptr noundef %2) #10
  %6 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %4) #11, !range !62
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %38

8:                                                ; preds = %3, %35
  %9 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef nonnull %4) #11
  %10 = ptrtoint ptr %9 to i64
  %11 = trunc i64 %10 to i32
  %12 = call fastcc ptr @bm_log_face_from_id(ptr noundef %1, i32 noundef %11) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %13 = getelementptr inbounds %struct.BMFace, ptr %12, i64 0, i32 2
  br label %14

14:                                               ; preds = %8, %14
  %15 = phi i64 [ 0, %8 ], [ %21, %14 ]
  %16 = phi ptr [ %13, %8 ], [ %22, %14 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !94
  %20 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 %15
  store ptr %19, ptr %20, align 8, !tbaa !34
  %21 = add nuw nsw i64 %15, 1
  %22 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 6
  %23 = icmp eq i64 %21, 3
  br i1 %23, label %24, label %14, !llvm.loop !97

24:                                               ; preds = %14
  call void @BM_face_kill(ptr noundef %0, ptr noundef %12) #10
  br label %25

25:                                               ; preds = %24, %32
  %26 = phi i64 [ 0, %24 ], [ %33, %32 ]
  %27 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = call fastcc zeroext i8 @BM_edge_is_wire(ptr noundef %28) #11, !range !62
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  call void @BM_edge_kill(ptr noundef %0, ptr noundef %28) #10
  br label %32

32:                                               ; preds = %25, %31
  %33 = add nuw nsw i64 %26, 1
  %34 = icmp eq i64 %33, 3
  br i1 %34, label %35, label %25, !llvm.loop !98

35:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @BLI_ghashIterator_step(ptr noundef nonnull %4) #10
  %36 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %4) #11, !range !62
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %8, label %38, !llvm.loop !99

38:                                               ; preds = %35, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_log_verts_unmake(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !100 {
  %4 = alloca %struct.GHashIterator, align 8
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %6 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %5, i32 noundef 34) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @BLI_ghashIterator_init(ptr noundef nonnull %4, ptr noundef %2) #10
  %7 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %4) #11, !range !62
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %3, %9
  %10 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef nonnull %4) #11
  %11 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef nonnull %4) #11
  %12 = ptrtoint ptr %10 to i64
  %13 = trunc i64 %12 to i32
  %14 = call fastcc ptr @bm_log_vert_from_id(ptr noundef %1, i32 noundef %13) #11
  call fastcc void @bm_log_vert_bmvert_copy(ptr noundef %11, ptr noundef %14, i32 noundef %6) #11
  call void @BM_vert_kill(ptr noundef %0, ptr noundef %14) #10
  call void @BLI_ghashIterator_step(ptr noundef nonnull %4) #10
  %15 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %4) #11, !range !62
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %9, label %17, !llvm.loop !101

17:                                               ; preds = %9, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_log_verts_restore(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !102 {
  %4 = alloca %struct.GHashIterator, align 8
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %6 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %5, i32 noundef 34) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @BLI_ghashIterator_init(ptr noundef nonnull %4, ptr noundef %2) #10
  %7 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %4) #11, !range !62
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %3, %9
  %10 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef nonnull %4) #11
  %11 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef nonnull %4) #11
  %12 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef %11, ptr noundef null, i32 noundef 0) #10
  %13 = getelementptr inbounds %struct.BMLogVert, ptr %11, i64 0, i32 2
  %14 = load float, ptr %13, align 4, !tbaa !103
  call fastcc void @vert_mask_set(ptr noundef %12, float noundef %14, i32 noundef %6) #11
  %15 = getelementptr inbounds %struct.BMLogVert, ptr %11, i64 0, i32 3
  %16 = load i8, ptr %15, align 4, !tbaa !106
  %17 = getelementptr inbounds %struct.BMHeader, ptr %12, i64 0, i32 3
  store i8 %16, ptr %17, align 1, !tbaa !107
  %18 = getelementptr inbounds %struct.BMVert, ptr %12, i64 0, i32 3
  %19 = getelementptr inbounds %struct.BMLogVert, ptr %11, i64 0, i32 1
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %18, ptr noundef nonnull %19) #11
  %20 = ptrtoint ptr %10 to i64
  %21 = trunc i64 %20 to i32
  call fastcc void @bm_log_vert_id_set(ptr noundef %1, ptr noundef %12, i32 noundef %21) #11
  call void @BLI_ghashIterator_step(ptr noundef nonnull %4) #10
  %22 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %4) #11, !range !62
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %9, label %24, !llvm.loop !109

24:                                               ; preds = %9, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_log_faces_restore(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !110 {
  %4 = alloca %struct.GHashIterator, align 8
  %5 = alloca [3 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @BLI_ghashIterator_init(ptr noundef nonnull %4, ptr noundef %2) #10
  %6 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %4) #11, !range !62
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %3
  %9 = getelementptr inbounds ptr, ptr %5, i64 1
  %10 = getelementptr inbounds ptr, ptr %5, i64 2
  br label %11

11:                                               ; preds = %8, %11
  %12 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef nonnull %4) #11
  %13 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %14 = load i32, ptr %13, align 4, !tbaa !72
  %15 = call fastcc ptr @bm_log_vert_from_id(ptr noundef %1, i32 noundef %14) #11
  store ptr %15, ptr %5, align 16, !tbaa !34
  %16 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !72
  %18 = call fastcc ptr @bm_log_vert_from_id(ptr noundef %1, i32 noundef %17) #11
  store ptr %18, ptr %9, align 8, !tbaa !34
  %19 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 2
  %20 = load i32, ptr %19, align 4, !tbaa !72
  %21 = call fastcc ptr @bm_log_vert_from_id(ptr noundef %1, i32 noundef %20) #11
  store ptr %21, ptr %10, align 16, !tbaa !34
  %22 = call ptr @BM_face_create_verts(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 3, ptr noundef null, i32 noundef 0, i8 noundef zeroext 1) #10
  %23 = getelementptr inbounds %struct.BMLogFace, ptr %13, i64 0, i32 1
  %24 = load i8, ptr %23, align 4, !tbaa !111
  %25 = getelementptr inbounds %struct.BMHeader, ptr %22, i64 0, i32 3
  store i8 %24, ptr %25, align 1, !tbaa !113
  %26 = ptrtoint ptr %12 to i64
  %27 = trunc i64 %26 to i32
  call fastcc void @bm_log_face_id_set(ptr noundef %1, ptr noundef %22, i32 noundef %27) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @BLI_ghashIterator_step(ptr noundef nonnull %4) #10
  %28 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %4) #11, !range !62
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %11, label %30, !llvm.loop !115

30:                                               ; preds = %11, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_log_vert_values_swap(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !116 {
  %4 = alloca %struct.GHashIterator, align 8
  %5 = alloca [3 x i16], align 2
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %7 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %6, i32 noundef 34) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @BLI_ghashIterator_init(ptr noundef nonnull %4, ptr noundef %2) #10
  %8 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %4) #11, !range !62
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %3, %10
  %11 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef nonnull %4) #11
  %12 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef nonnull %4) #11
  %13 = ptrtoint ptr %11 to i64
  %14 = trunc i64 %13 to i32
  %15 = call fastcc ptr @bm_log_vert_from_id(ptr noundef %1, i32 noundef %14) #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #12
  %16 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2
  call fastcc void @swap_v3_v3(ptr noundef nonnull %16, ptr noundef %12) #11
  %17 = getelementptr inbounds %struct.BMLogVert, ptr %12, i64 0, i32 1
  call fastcc void @copy_v3_v3_short(ptr noundef nonnull %5, ptr noundef nonnull %17) #11
  %18 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 3
  call fastcc void @normal_float_to_short_v3(ptr noundef nonnull %17, ptr noundef nonnull %18) #11
  call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %18, ptr noundef nonnull %5) #11
  %19 = getelementptr inbounds %struct.BMHeader, ptr %15, i64 0, i32 3
  %20 = load i8, ptr %19, align 1, !tbaa !107
  %21 = getelementptr inbounds %struct.BMLogVert, ptr %12, i64 0, i32 3
  %22 = load i8, ptr %21, align 4, !tbaa !106
  store i8 %22, ptr %19, align 1, !tbaa !107
  store i8 %20, ptr %21, align 4, !tbaa !106
  %23 = getelementptr inbounds %struct.BMLogVert, ptr %12, i64 0, i32 2
  %24 = load float, ptr %23, align 4, !tbaa !103
  %25 = call fastcc float @vert_mask_get(ptr noundef %15, i32 noundef %7) #11
  store float %25, ptr %23, align 4, !tbaa !103
  call fastcc void @vert_mask_set(ptr noundef %15, float noundef %24, i32 noundef %7) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #12
  call void @BLI_ghashIterator_step(ptr noundef nonnull %4) #10
  %26 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %4) #11, !range !62
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %10, label %28, !llvm.loop !117

28:                                               ; preds = %10, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_log_face_values_swap(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !118 {
  %3 = alloca %struct.GHashIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @BLI_ghashIterator_init(ptr noundef nonnull %3, ptr noundef %1) #10
  %4 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %3) #11, !range !62
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %2, %6
  %7 = call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef nonnull %3) #11
  %8 = call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef nonnull %3) #11
  %9 = ptrtoint ptr %7 to i64
  %10 = trunc i64 %9 to i32
  %11 = call fastcc ptr @bm_log_face_from_id(ptr noundef %0, i32 noundef %10) #11
  %12 = getelementptr inbounds %struct.BMHeader, ptr %11, i64 0, i32 3
  %13 = load i8, ptr %12, align 1, !tbaa !113
  %14 = getelementptr inbounds %struct.BMLogFace, ptr %8, i64 0, i32 1
  %15 = load i8, ptr %14, align 4, !tbaa !111
  store i8 %15, ptr %12, align 1, !tbaa !113
  store i8 %13, ptr %14, align 4, !tbaa !111
  call void @BLI_ghashIterator_step(ptr noundef nonnull %3) #10
  %16 = call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef nonnull %3) #11, !range !62
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %6, label %18, !llvm.loop !119

18:                                               ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_log_redo(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMLog, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !68
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %6
  store ptr %7, ptr %3, align 8, !tbaa !85
  br label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.BMLog, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  store ptr %12, ptr %3, align 8, !tbaa !85
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %9, %10
  %15 = phi ptr [ %7, %9 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.BMLogEntry, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  tail call fastcc void @bm_log_faces_unmake(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %17) #11
  %18 = getelementptr inbounds %struct.BMLogEntry, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !55
  tail call fastcc void @bm_log_verts_unmake(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %19) #11
  %20 = getelementptr inbounds %struct.BMLogEntry, ptr %15, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !57
  tail call fastcc void @bm_log_verts_restore(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %21) #11
  %22 = getelementptr inbounds %struct.BMLogEntry, ptr %15, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  tail call fastcc void @bm_log_faces_restore(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %23) #11
  %24 = getelementptr inbounds %struct.BMLogEntry, ptr %15, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  tail call fastcc void @bm_log_vert_values_swap(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %25) #11
  %26 = getelementptr inbounds %struct.BMLogEntry, ptr %15, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !60
  tail call fastcc void @bm_log_face_values_swap(ptr noundef nonnull %1, ptr noundef %27) #11
  br label %28

28:                                               ; preds = %10, %14, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_log_vert_before_modified(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = tail call fastcc i32 @bm_log_vert_id_get(ptr noundef %0, ptr noundef %1) #11
  %7 = zext i32 %6 to i64
  %8 = inttoptr i64 %7 to ptr
  %9 = getelementptr inbounds %struct.BMLogEntry, ptr %5, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = tail call ptr @BLI_ghash_lookup(ptr noundef %10, ptr noundef %8) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  tail call fastcc void @bm_log_vert_bmvert_copy(ptr noundef nonnull %11, ptr noundef %1, i32 noundef %2) #11
  br label %22

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.BMLogEntry, ptr %5, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  %17 = tail call zeroext i8 @BLI_ghash_haskey(ptr noundef %16, ptr noundef %8) #10
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = tail call fastcc ptr @bm_log_vert_alloc(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #11
  %21 = load ptr, ptr %15, align 8, !tbaa !59
  tail call void @BLI_ghash_insert(ptr noundef %21, ptr noundef %8, ptr noundef %20) #10
  br label %22

22:                                               ; preds = %14, %19, %13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bm_log_vert_bmvert_copy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #3 !PGOFuncName !120 {
  %4 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef %0, ptr noundef nonnull %4) #11
  %5 = getelementptr inbounds %struct.BMLogVert, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.BMVert, ptr %1, i64 0, i32 3
  tail call fastcc void @normal_float_to_short_v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %7 = tail call fastcc float @vert_mask_get(ptr noundef %1, i32 noundef %2) #11
  %8 = getelementptr inbounds %struct.BMLogVert, ptr %0, i64 0, i32 2
  store float %7, ptr %8, align 4, !tbaa !103
  %9 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %10 = load i8, ptr %9, align 1, !tbaa !107
  %11 = getelementptr inbounds %struct.BMLogVert, ptr %0, i64 0, i32 3
  store i8 %10, ptr %11, align 4, !tbaa !106
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_ghash_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @bm_log_vert_alloc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !121 {
  %4 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = getelementptr inbounds %struct.BMLogEntry, ptr %5, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = tail call ptr @BLI_mempool_alloc(ptr noundef %7) #10
  tail call fastcc void @bm_log_vert_bmvert_copy(ptr noundef %8, ptr noundef %1, i32 noundef %2) #11
  ret ptr %8
}

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_log_vert_added(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !38
  %5 = tail call i32 @range_tree_uint_take_any(ptr noundef %4) #10
  %6 = zext i32 %5 to i64
  %7 = inttoptr i64 %6 to ptr
  tail call fastcc void @bm_log_vert_id_set(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %5) #11
  %8 = tail call fastcc ptr @bm_log_vert_alloc(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #11
  %9 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !85
  %11 = getelementptr inbounds %struct.BMLogEntry, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  tail call void @BLI_ghash_insert(ptr noundef %12, ptr noundef %7, ptr noundef %8) #10
  ret void
}

; Function Attrs: optsize
declare i32 @range_tree_uint_take_any(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_log_vert_id_set(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !122 {
  %4 = zext i32 %2 to i64
  %5 = inttoptr i64 %4 to ptr
  %6 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = tail call zeroext i8 @BLI_ghash_reinsert(ptr noundef %7, ptr noundef %5, ptr noundef %1, ptr noundef null, ptr noundef null) #10
  %9 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = tail call zeroext i8 @BLI_ghash_reinsert(ptr noundef %10, ptr noundef %1, ptr noundef %5, ptr noundef null, ptr noundef null) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_log_face_modified(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @bm_log_face_id_get(ptr noundef %0, ptr noundef %1) #11
  %4 = zext i32 %3 to i64
  %5 = inttoptr i64 %4 to ptr
  %6 = tail call fastcc ptr @bm_log_face_alloc(ptr noundef %0, ptr noundef %1) #11
  %7 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !85
  %9 = getelementptr inbounds %struct.BMLogEntry, ptr %8, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  tail call void @BLI_ghash_insert(ptr noundef %10, ptr noundef %5, ptr noundef %6) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bm_log_face_alloc(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !123 {
  %3 = alloca [3 x ptr], align 16
  %4 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = getelementptr inbounds %struct.BMLogEntry, ptr %5, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !89
  %8 = tail call ptr @BLI_mempool_alloc(ptr noundef %7) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @BM_face_as_array_vert_tri(ptr noundef %1, ptr noundef nonnull %3) #10
  %9 = load ptr, ptr %3, align 16, !tbaa !34
  %10 = call fastcc i32 @bm_log_vert_id_get(ptr noundef %0, ptr noundef %9) #11
  store i32 %10, ptr %8, align 4, !tbaa !72
  %11 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = call fastcc i32 @bm_log_vert_id_get(ptr noundef %0, ptr noundef %12) #11
  %14 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 1
  store i32 %13, ptr %14, align 4, !tbaa !72
  %15 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 2
  %16 = load ptr, ptr %15, align 16, !tbaa !34
  %17 = call fastcc i32 @bm_log_vert_id_get(ptr noundef %0, ptr noundef %16) #11
  %18 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 2
  store i32 %17, ptr %18, align 4, !tbaa !72
  %19 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 3
  %20 = load i8, ptr %19, align 1, !tbaa !113
  %21 = getelementptr inbounds %struct.BMLogFace, ptr %8, i64 0, i32 1
  store i8 %20, ptr %21, align 4, !tbaa !111
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_log_face_added(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = tail call i32 @range_tree_uint_take_any(ptr noundef %3) #10
  %5 = zext i32 %4 to i64
  %6 = inttoptr i64 %5 to ptr
  tail call fastcc void @bm_log_face_id_set(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %4) #11
  %7 = tail call fastcc ptr @bm_log_face_alloc(ptr noundef nonnull %0, ptr noundef %1) #11
  %8 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !85
  %10 = getelementptr inbounds %struct.BMLogEntry, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  tail call void @BLI_ghash_insert(ptr noundef %11, ptr noundef %6, ptr noundef %7) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_log_face_id_set(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !124 {
  %4 = zext i32 %2 to i64
  %5 = inttoptr i64 %4 to ptr
  %6 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = tail call zeroext i8 @BLI_ghash_reinsert(ptr noundef %7, ptr noundef %5, ptr noundef %1, ptr noundef null, ptr noundef null) #10
  %9 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = tail call zeroext i8 @BLI_ghash_reinsert(ptr noundef %10, ptr noundef %1, ptr noundef %5, ptr noundef null, ptr noundef null) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_log_vert_removed(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = tail call fastcc i32 @bm_log_vert_id_get(ptr noundef %0, ptr noundef %1) #11
  %7 = zext i32 %6 to i64
  %8 = inttoptr i64 %7 to ptr
  %9 = getelementptr inbounds %struct.BMLogEntry, ptr %5, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %10, ptr noundef %8, ptr noundef null, ptr noundef null) #10
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %0, align 8, !tbaa !38
  tail call void @range_tree_uint_release(ptr noundef %14, i32 noundef %6) #10
  br label %26

15:                                               ; preds = %3
  %16 = tail call fastcc ptr @bm_log_vert_alloc(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #11
  %17 = getelementptr inbounds %struct.BMLogEntry, ptr %5, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  tail call void @BLI_ghash_insert(ptr noundef %18, ptr noundef %8, ptr noundef %16) #10
  %19 = getelementptr inbounds %struct.BMLogEntry, ptr %5, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  %21 = tail call ptr @BLI_ghash_lookup(ptr noundef %20, ptr noundef %8) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %16, ptr noundef nonnull align 4 dereferenceable(28) %21, i64 28, i1 false), !tbaa.struct !125
  %24 = load ptr, ptr %19, align 8, !tbaa !59
  %25 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %24, ptr noundef %8, ptr noundef null, ptr noundef null) #10
  br label %26

26:                                               ; preds = %15, %23, %13
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_ghash_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @range_tree_uint_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_log_face_removed(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = tail call fastcc i32 @bm_log_face_id_get(ptr noundef %0, ptr noundef %1) #11
  %6 = zext i32 %5 to i64
  %7 = inttoptr i64 %6 to ptr
  %8 = getelementptr inbounds %struct.BMLogEntry, ptr %4, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %9, ptr noundef %7, ptr noundef null, ptr noundef null) #10
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 8, !tbaa !38
  tail call void @range_tree_uint_release(ptr noundef %13, i32 noundef %5) #10
  br label %18

14:                                               ; preds = %2
  %15 = tail call fastcc ptr @bm_log_face_alloc(ptr noundef nonnull %0, ptr noundef %1) #11
  %16 = getelementptr inbounds %struct.BMLogEntry, ptr %4, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  tail call void @BLI_ghash_insert(ptr noundef %17, ptr noundef %7, ptr noundef %15) #10
  br label %18

18:                                               ; preds = %14, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_log_all_added(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %5 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %4, i32 noundef 34) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %6 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %2 ]
  call void @BM_log_vert_added(ptr noundef %1, ptr noundef nonnull %9, i32 noundef %5) #11
  %10 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !llvm.loop !128

12:                                               ; preds = %8, %2
  %13 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 3) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %17, %15 ], [ %13, %12 ]
  call void @BM_log_face_added(ptr noundef %1, ptr noundef nonnull %16) #11
  %17 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %15, !llvm.loop !129

19:                                               ; preds = %15, %12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret void
}

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_log_before_all_removed(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %5 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %4, i32 noundef 34) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  %6 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 3) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %10, %8 ], [ %6, %2 ]
  call void @BM_log_face_removed(ptr noundef %1, ptr noundef nonnull %9) #11
  %10 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %8, !llvm.loop !130

12:                                               ; preds = %8, %2
  %13 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef %0, i8 noundef zeroext 1) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %17, %15 ], [ %13, %12 ]
  call void @BM_log_vert_removed(ptr noundef %1, ptr noundef nonnull %16, i32 noundef %5) #11
  %17 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %15, !llvm.loop !131

19:                                               ; preds = %15, %12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BM_log_original_vert_co(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = tail call fastcc i32 @bm_log_vert_id_get(ptr noundef %0, ptr noundef %1) #11
  %6 = zext i32 %5 to i64
  %7 = inttoptr i64 %6 to ptr
  %8 = getelementptr inbounds %struct.BMLogEntry, ptr %4, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = tail call ptr @BLI_ghash_lookup(ptr noundef %9, ptr noundef %7) #10
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @BM_log_original_vert_no(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = tail call fastcc i32 @bm_log_vert_id_get(ptr noundef %0, ptr noundef %1) #11
  %6 = zext i32 %5 to i64
  %7 = inttoptr i64 %6 to ptr
  %8 = getelementptr inbounds %struct.BMLogEntry, ptr %4, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = tail call ptr @BLI_ghash_lookup(ptr noundef %9, ptr noundef %7) #10
  %11 = getelementptr inbounds %struct.BMLogVert, ptr %10, i64 0, i32 1
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @BM_log_original_mask(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = tail call fastcc i32 @bm_log_vert_id_get(ptr noundef %0, ptr noundef %1) #11
  %6 = zext i32 %5 to i64
  %7 = inttoptr i64 %6 to ptr
  %8 = getelementptr inbounds %struct.BMLogEntry, ptr %4, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = tail call ptr @BLI_ghash_lookup(ptr noundef %9, ptr noundef %7) #10
  %11 = getelementptr inbounds %struct.BMLogVert, ptr %10, i64 0, i32 2
  %12 = load float, ptr %11, align 4, !tbaa !103
  ret float %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BM_log_current_entry(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BM_log_unused_ids(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  ret ptr %2
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !132 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !135 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !136
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @range_tree_uint_retake(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !138 {
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %4, align 4, !tbaa !139
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %5, align 8, !tbaa !140
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %6, align 8, !tbaa !80
  switch i8 %2, label %13 [
    i8 1, label %7
    i8 2, label %9
    i8 3, label %11
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  br label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  br label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  br label %14

13:                                               ; preds = %3
  unreachable

14:                                               ; preds = %11, %9, %7
  %15 = phi ptr [ %12, %11 ], [ %10, %9 ], [ %8, %7 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  store ptr %16, ptr %0, align 8, !tbaa !126
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: optsize
declare ptr @BLI_ghash_int_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @uint_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !141 {
  %3 = load i32, ptr %0, align 4, !tbaa !72
  %4 = load i32, ptr %1, align 4, !tbaa !72
  %5 = icmp ult i32 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: optsize
declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bm_log_face_from_id(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !142 {
  %3 = zext i32 %1 to i64
  %4 = inttoptr i64 %3 to ptr
  %5 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef %4) #10
  ret ptr %7
}

; Function Attrs: optsize
declare void @BM_face_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_edge_is_wire(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !143 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !144
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare void @BM_edge_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !147 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !148
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bm_log_vert_from_id(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !149 {
  %3 = zext i32 %1 to i64
  %4 = inttoptr i64 %3 to ptr
  %5 = getelementptr inbounds %struct.BMLog, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef %4) #10
  ret ptr %7
}

; Function Attrs: optsize
declare void @BM_vert_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @vert_mask_set(ptr nocapture noundef readonly %0, float noundef %1, i32 noundef %2) unnamed_addr #8 !PGOFuncName !150 {
  %4 = icmp eq i32 %2, -1
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !151
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds i8, ptr %6, i64 %7
  store float %1, ptr %8, align 4, !tbaa !127
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_short_to_float_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !152 {
  %3 = load <2 x i16>, ptr %1, align 2, !tbaa !153
  %4 = sitofp <2 x i16> %3 to <2 x float>
  %5 = fmul <2 x float> %4, <float 0x3F00002000000000, float 0x3F00002000000000>
  store <2 x float> %5, ptr %0, align 4, !tbaa !127
  %6 = getelementptr inbounds i16, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !153
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 0x3F00002000000000
  %10 = getelementptr inbounds float, ptr %0, i64 2
  store float %9, ptr %10, align 4, !tbaa !127
  ret void
}

; Function Attrs: optsize
declare ptr @BM_face_create_verts(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @swap_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !PGOFuncName !154 {
  %3 = load float, ptr %0, align 4, !tbaa !127
  %4 = load float, ptr %1, align 4, !tbaa !127
  store float %4, ptr %0, align 4, !tbaa !127
  store float %3, ptr %1, align 4, !tbaa !127
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !127
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !127
  store float %8, ptr %5, align 4, !tbaa !127
  store float %6, ptr %7, align 4, !tbaa !127
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !127
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !127
  store float %12, ptr %9, align 4, !tbaa !127
  store float %10, ptr %11, align 4, !tbaa !127
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3_short(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !155 {
  %3 = load i16, ptr %1, align 2, !tbaa !153
  store i16 %3, ptr %0, align 2, !tbaa !153
  %4 = getelementptr inbounds i16, ptr %1, i64 1
  %5 = load i16, ptr %4, align 2, !tbaa !153
  %6 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %5, ptr %6, align 2, !tbaa !153
  %7 = getelementptr inbounds i16, ptr %1, i64 2
  %8 = load i16, ptr %7, align 2, !tbaa !153
  %9 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %8, ptr %9, align 2, !tbaa !153
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_float_to_short_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !156 {
  %3 = load <2 x float>, ptr %1, align 4, !tbaa !127
  %4 = fmul <2 x float> %3, <float 3.276700e+04, float 3.276700e+04>
  %5 = fptosi <2 x float> %4 to <2 x i16>
  store <2 x i16> %5, ptr %0, align 2, !tbaa !153
  %6 = getelementptr inbounds float, ptr %1, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !127
  %8 = fmul float %7, 3.276700e+04
  %9 = fptosi float %8 to i16
  %10 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %9, ptr %10, align 2, !tbaa !153
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @vert_mask_get(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !157 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !151
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds i8, ptr %5, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !127
  br label %9

9:                                                ; preds = %2, %4
  %10 = phi float [ %8, %4 ], [ 0.000000e+00, %2 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !158 {
  %3 = load float, ptr %1, align 4, !tbaa !127
  store float %3, ptr %0, align 4, !tbaa !127
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !127
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !127
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !127
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !127
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_ghash_reinsert(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_face_as_array_vert_tri(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
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
!49 = !{!"bmesh_log.c:bm_log_assign_ids"}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = distinct !{!52, !51}
!53 = !{!54, !35, i64 80}
!54 = !{!"BMLogEntry", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80}
!55 = !{!54, !35, i64 16}
!56 = !{!54, !35, i64 24}
!57 = !{!54, !35, i64 32}
!58 = !{!54, !35, i64 40}
!59 = !{!54, !35, i64 48}
!60 = !{!54, !35, i64 56}
!61 = !{!"bmesh_log.c:bm_log_id_ghash_retake"}
!62 = !{i8 0, i8 2}
!63 = distinct !{!63, !51}
!64 = !{!54, !35, i64 8}
!65 = !{!39, !35, i64 32}
!66 = distinct !{!66, !51}
!67 = !{!39, !35, i64 24}
!68 = !{!54, !35, i64 0}
!69 = distinct !{!69, !51}
!70 = distinct !{!70, !51}
!71 = distinct !{!71, !51}
!72 = !{!43, !43, i64 0}
!73 = distinct !{!73, !51}
!74 = distinct !{!74, !51}
!75 = distinct !{!75, !51}
!76 = distinct !{!76, !51}
!77 = !{!"bmesh_log.c:BM_iter_new"}
!78 = !{!"bmesh_log.c:bm_log_vert_id_get"}
!79 = !{!"bmesh_log.c:BM_iter_step"}
!80 = !{!81, !35, i64 48}
!81 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !43, i64 56, !36, i64 60}
!82 = !{!"bmesh_log.c:bm_log_face_id_get"}
!83 = !{!"bmesh_log.c:bm_log_compress_ids_to_indices"}
!84 = distinct !{!84, !51}
!85 = !{!39, !35, i64 40}
!86 = distinct !{!86, !51}
!87 = !{!"bmesh_log.c:bm_log_entry_free"}
!88 = !{!54, !35, i64 64}
!89 = !{!54, !35, i64 72}
!90 = !{!"bmesh_log.c:bm_log_entry_create"}
!91 = !{!"bmesh_log.c:bm_log_id_ghash_release"}
!92 = distinct !{!92, !51}
!93 = !{!"bmesh_log.c:bm_log_faces_unmake"}
!94 = !{!95, !35, i64 24}
!95 = !{!"BMLoop", !96, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!96 = !{!"BMHeader", !35, i64 0, !43, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!97 = distinct !{!97, !51}
!98 = distinct !{!98, !51}
!99 = distinct !{!99, !51}
!100 = !{!"bmesh_log.c:bm_log_verts_unmake"}
!101 = distinct !{!101, !51}
!102 = !{!"bmesh_log.c:bm_log_verts_restore"}
!103 = !{!104, !105, i64 20}
!104 = !{!"", !36, i64 0, !36, i64 12, !105, i64 20, !36, i64 24}
!105 = !{!"float", !36, i64 0}
!106 = !{!104, !36, i64 24}
!107 = !{!108, !36, i64 13}
!108 = !{!"BMVert", !96, i64 0, !35, i64 16, !36, i64 24, !36, i64 36, !35, i64 48}
!109 = distinct !{!109, !51}
!110 = !{!"bmesh_log.c:bm_log_faces_restore"}
!111 = !{!112, !36, i64 12}
!112 = !{!"", !36, i64 0, !36, i64 12}
!113 = !{!114, !36, i64 13}
!114 = !{!"BMFace", !96, i64 0, !35, i64 16, !35, i64 24, !43, i64 32, !36, i64 36, !45, i64 48}
!115 = distinct !{!115, !51}
!116 = !{!"bmesh_log.c:bm_log_vert_values_swap"}
!117 = distinct !{!117, !51}
!118 = !{!"bmesh_log.c:bm_log_face_values_swap"}
!119 = distinct !{!119, !51}
!120 = !{!"bmesh_log.c:bm_log_vert_bmvert_copy"}
!121 = !{!"bmesh_log.c:bm_log_vert_alloc"}
!122 = !{!"bmesh_log.c:bm_log_vert_id_set"}
!123 = !{!"bmesh_log.c:bm_log_face_alloc"}
!124 = !{!"bmesh_log.c:bm_log_face_id_set"}
!125 = !{i64 0, i64 12, !126, i64 12, i64 6, !126, i64 20, i64 4, !127, i64 24, i64 1, !126}
!126 = !{!36, !36, i64 0}
!127 = !{!105, !105, i64 0}
!128 = distinct !{!128, !51}
!129 = distinct !{!129, !51}
!130 = distinct !{!130, !51}
!131 = distinct !{!131, !51}
!132 = !{!"bmesh_log.c:BLI_ghashIterator_done"}
!133 = !{!134, !35, i64 8}
!134 = !{!"GHashIterator", !35, i64 0, !35, i64 8, !43, i64 16}
!135 = !{!"bmesh_log.c:BLI_ghashIterator_getKey"}
!136 = !{!137, !35, i64 8}
!137 = !{!"_gh_Entry", !35, i64 0, !35, i64 8, !35, i64 16}
!138 = !{!"bmesh_log.c:BM_iter_init"}
!139 = !{!81, !36, i64 60}
!140 = !{!81, !35, i64 40}
!141 = !{!"bmesh_log.c:uint_compare"}
!142 = !{!"bmesh_log.c:bm_log_face_from_id"}
!143 = !{!"bmesh_log.c:BM_edge_is_wire"}
!144 = !{!145, !35, i64 40}
!145 = !{!"BMEdge", !96, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !146, i64 48, !146, i64 64}
!146 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!147 = !{!"bmesh_log.c:BLI_ghashIterator_getValue"}
!148 = !{!137, !35, i64 16}
!149 = !{!"bmesh_log.c:bm_log_vert_from_id"}
!150 = !{!"bmesh_log.c:vert_mask_set"}
!151 = !{!108, !35, i64 0}
!152 = !{!"bmesh_log.c:normal_short_to_float_v3"}
!153 = !{!45, !45, i64 0}
!154 = !{!"bmesh_log.c:swap_v3_v3"}
!155 = !{!"bmesh_log.c:copy_v3_v3_short"}
!156 = !{!"bmesh_log.c:normal_float_to_short_v3"}
!157 = !{!"bmesh_log.c:vert_mask_get"}
!158 = !{!"bmesh_log.c:copy_v3_v3"}
