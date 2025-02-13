; ModuleID = 'blender/source/blender/blenkernel/intern/editmesh_bvh.c'
source_filename = "blender/source/blender/blenkernel/intern/editmesh_bvh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.BMBVHTree = type { ptr, ptr, i32, ptr, ptr, i8, i32 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BVHTreeRayHit = type { i32, [3 x float], [3 x float], float, i32 }
%struct.RayCastUserData = type { ptr, ptr, [2 x float] }
%struct.BVHTreeRay = type { [3 x float], [3 x float], float }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.SegmentUserData = type { ptr, ptr, [2 x float], ptr, ptr }
%struct.BVHTreeNearest = type { i32, [3 x float], [3 x float], float, i32 }
%struct.VertSearchUserData = type { ptr, ptr, float, i32 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"BMBVHTree\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_bmbvh_new_from_editmesh(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !43
  %10 = tail call ptr @BKE_bmbvh_new(ptr noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) #10
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_bmbvh_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = and i32 %3, 2
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %3, 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, ptr null, ptr @bm_face_is_not_hidden
  %12 = select i1 %8, ptr %11, ptr @bm_face_is_select
  %13 = and i32 %3, -7
  %14 = tail call ptr @BKE_bmbvh_new_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %13, ptr noundef %4, i8 noundef zeroext %5, ptr noundef %12, ptr noundef null) #10
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_bmbvh_new_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5, ptr noundef readonly %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca [3 x [3 x float]], align 16
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %11 = tail call ptr %10(i64 noundef 48, ptr noundef nonnull @.str) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #12
  %12 = icmp eq ptr %4, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext 1) #11
  br label %14

14:                                               ; preds = %13, %8
  %15 = getelementptr inbounds %struct.BMBVHTree, ptr %11, i64 0, i32 1
  store ptr %1, ptr %15, align 8, !tbaa !45
  %16 = getelementptr inbounds %struct.BMBVHTree, ptr %11, i64 0, i32 2
  store i32 %2, ptr %16, align 8, !tbaa !47
  %17 = getelementptr inbounds %struct.BMBVHTree, ptr %11, i64 0, i32 3
  store ptr %0, ptr %17, align 8, !tbaa !48
  %18 = getelementptr inbounds %struct.BMBVHTree, ptr %11, i64 0, i32 4
  store ptr %4, ptr %18, align 8, !tbaa !49
  %19 = getelementptr inbounds %struct.BMBVHTree, ptr %11, i64 0, i32 5
  store i8 %5, ptr %19, align 8, !tbaa !50
  %20 = getelementptr inbounds %struct.BMBVHTree, ptr %11, i64 0, i32 6
  store i32 %3, ptr %20, align 4, !tbaa !51
  %21 = icmp eq ptr %6, null
  br i1 %21, label %48, label %22

22:                                               ; preds = %14
  %23 = icmp sgt i32 %2, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = tail call ptr @BLI_bvhtree_new(i32 noundef 0, float noundef 0x3E90000000000000, i8 noundef zeroext 8, i8 noundef zeroext 8) #11
  store ptr %25, ptr %11, align 8, !tbaa !52
  br label %120

26:                                               ; preds = %22
  %27 = zext nneg i32 %2 to i64
  br label %28

28:                                               ; preds = %26, %40
  %29 = phi i64 [ 0, %26 ], [ %46, %40 ]
  %30 = phi i8 [ 0, %26 ], [ %42, %40 ]
  %31 = phi ptr [ null, %26 ], [ %41, %40 ]
  %32 = phi i32 [ 0, %26 ], [ %45, %40 ]
  %33 = getelementptr inbounds [3 x ptr], ptr %1, i64 %29
  %34 = load ptr, ptr %33, align 8, !tbaa !44
  %35 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !53
  %37 = icmp eq ptr %36, %31
  br i1 %37, label %40, label %38

38:                                               ; preds = %28
  %39 = tail call zeroext i8 %6(ptr noundef %36, ptr noundef %7) #11
  br label %40

40:                                               ; preds = %38, %28
  %41 = phi ptr [ %36, %38 ], [ %31, %28 ]
  %42 = phi i8 [ %39, %38 ], [ %30, %28 ]
  %43 = icmp ne i8 %42, 0
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %32, %44
  %46 = add nuw nsw i64 %29, 1
  %47 = icmp eq i64 %46, %27
  br i1 %47, label %48, label %28, !llvm.loop !56

48:                                               ; preds = %40, %14
  %49 = phi i32 [ %2, %14 ], [ %45, %40 ]
  %50 = tail call ptr @BLI_bvhtree_new(i32 noundef %49, float noundef 0x3E90000000000000, i8 noundef zeroext 8, i8 noundef zeroext 8) #11
  store ptr %50, ptr %11, align 8, !tbaa !52
  %51 = icmp sgt i32 %2, 0
  br i1 %51, label %52, label %120

52:                                               ; preds = %48
  %53 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 1
  %54 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2
  %55 = zext nneg i32 %2 to i64
  br label %56

56:                                               ; preds = %52, %113
  %57 = phi i64 [ 0, %52 ], [ %116, %113 ]
  %58 = phi i8 [ 0, %52 ], [ %115, %113 ]
  %59 = phi ptr [ null, %52 ], [ %114, %113 ]
  br i1 %21, label %72, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds [3 x ptr], ptr %1, i64 %57
  %62 = load ptr, ptr %61, align 8, !tbaa !44
  %63 = getelementptr inbounds %struct.BMLoop, ptr %62, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !53
  %65 = icmp eq ptr %64, %59
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  %67 = call zeroext i8 %6(ptr noundef %64, ptr noundef %7) #11
  br label %68

68:                                               ; preds = %66, %60
  %69 = phi ptr [ %64, %66 ], [ %59, %60 ]
  %70 = phi i8 [ %67, %66 ], [ %58, %60 ]
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %113, label %72

72:                                               ; preds = %68, %56
  %73 = phi ptr [ %69, %68 ], [ %59, %56 ]
  %74 = phi i8 [ %70, %68 ], [ %58, %56 ]
  %75 = getelementptr inbounds [3 x ptr], ptr %1, i64 %57
  %76 = load ptr, ptr %75, align 8, !tbaa !44
  %77 = getelementptr inbounds %struct.BMLoop, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !58
  br i1 %12, label %97, label %79

79:                                               ; preds = %72
  %80 = call fastcc i32 @_bm_elem_index_get(ptr noundef %78) #10
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [3 x float], ptr %4, i64 %81
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %82) #10
  %83 = getelementptr inbounds [3 x ptr], ptr %1, i64 %57, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !44
  %85 = getelementptr inbounds %struct.BMLoop, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !58
  %87 = call fastcc i32 @_bm_elem_index_get(ptr noundef %86) #10
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [3 x float], ptr %4, i64 %88
  call fastcc void @copy_v3_v3(ptr noundef nonnull %53, ptr noundef nonnull %89) #10
  %90 = getelementptr inbounds [3 x ptr], ptr %1, i64 %57, i64 2
  %91 = load ptr, ptr %90, align 8, !tbaa !44
  %92 = getelementptr inbounds %struct.BMLoop, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !58
  %94 = call fastcc i32 @_bm_elem_index_get(ptr noundef %93) #10
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [3 x float], ptr %4, i64 %95
  br label %109

97:                                               ; preds = %72
  %98 = getelementptr inbounds %struct.BMVert, ptr %78, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %98) #10
  %99 = getelementptr inbounds [3 x ptr], ptr %1, i64 %57, i64 1
  %100 = load ptr, ptr %99, align 8, !tbaa !44
  %101 = getelementptr inbounds %struct.BMLoop, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !58
  %103 = getelementptr inbounds %struct.BMVert, ptr %102, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %53, ptr noundef nonnull %103) #10
  %104 = getelementptr inbounds [3 x ptr], ptr %1, i64 %57, i64 2
  %105 = load ptr, ptr %104, align 8, !tbaa !44
  %106 = getelementptr inbounds %struct.BMLoop, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !58
  %108 = getelementptr inbounds %struct.BMVert, ptr %107, i64 0, i32 2
  br label %109

109:                                              ; preds = %97, %79
  %110 = phi ptr [ %108, %97 ], [ %96, %79 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %54, ptr noundef nonnull %110) #10
  %111 = load ptr, ptr %11, align 8, !tbaa !52
  %112 = trunc i64 %57 to i32
  call void @BLI_bvhtree_insert(ptr noundef %111, i32 noundef %112, ptr noundef nonnull %9, i32 noundef 3) #11
  br label %113

113:                                              ; preds = %68, %109
  %114 = phi ptr [ %73, %109 ], [ %69, %68 ]
  %115 = phi i8 [ %74, %109 ], [ 0, %68 ]
  %116 = add nuw nsw i64 %57, 1
  %117 = icmp eq i64 %116, %55
  br i1 %117, label %118, label %56, !llvm.loop !59

118:                                              ; preds = %113
  %119 = load ptr, ptr %11, align 8, !tbaa !52
  br label %120

120:                                              ; preds = %24, %118, %48
  %121 = phi ptr [ %119, %118 ], [ %50, %48 ], [ %25, %24 ]
  call void @BLI_bvhtree_balance(ptr noundef %121) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #12
  ret ptr %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_bvhtree_new(i32 noundef, float noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !60 {
  %3 = load float, ptr %1, align 4, !tbaa !61
  store float %3, ptr %0, align 4, !tbaa !61
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !61
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !61
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !61
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @_bm_elem_index_get(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !63 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !64
  ret i32 %3
}

; Function Attrs: optsize
declare void @BLI_bvhtree_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_bvhtree_balance(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @bm_face_is_select(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #4 !PGOFuncName !65 {
  %3 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0, i8 noundef zeroext 1) #10, !range !66
  %4 = icmp ne i8 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @bm_face_is_not_hidden(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #4 !PGOFuncName !67 {
  %3 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0, i8 noundef zeroext 2) #10, !range !66
  %4 = icmp eq i8 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_bmbvh_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !52
  tail call void @BLI_bvhtree_free(ptr noundef %2) #11
  %3 = getelementptr inbounds %struct.BMBVHTree, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.BMBVHTree, ptr %0, i64 0, i32 5
  %8 = load i8, ptr %7, align 8, !tbaa !50
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %11(ptr noundef nonnull %4) #11
  br label %12

12:                                               ; preds = %10, %6, %1
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %13(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: optsize
declare void @BLI_bvhtree_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_bmbvh_tree_get(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !52
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_bmbvh_ray_cast(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, float noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca %struct.BVHTreeRayHit, align 4
  %9 = alloca %struct.RayCastUserData, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #12
  %10 = icmp eq ptr %4, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load float, ptr %4, align 4, !tbaa !61
  br label %13

13:                                               ; preds = %7, %11
  %14 = phi float [ %12, %11 ], [ 0x47EFFFFFE0000000, %7 ]
  %15 = getelementptr inbounds %struct.BMBVHTree, ptr %0, i64 0, i32 4
  %16 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %8, i64 0, i32 3
  store float %14, ptr %16, align 4, !tbaa !68
  store i32 -1, ptr %8, align 4, !tbaa !70
  %17 = getelementptr inbounds %struct.BMBVHTree, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  store ptr %18, ptr %9, align 8, !tbaa !71
  %19 = load ptr, ptr %15, align 8, !tbaa !49
  %20 = getelementptr inbounds %struct.RayCastUserData, ptr %9, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !73
  %21 = load ptr, ptr %0, align 8, !tbaa !52
  %22 = call i32 @BLI_bvhtree_ray_cast(ptr noundef %21, ptr noundef %1, ptr noundef %2, float noundef %3, ptr noundef nonnull %8, ptr noundef nonnull @bmbvh_ray_cast_cb, ptr noundef nonnull %9) #11
  %23 = load i32, ptr %8, align 4, !tbaa !70
  %24 = icmp ne i32 %23, -1
  %25 = load float, ptr %16, align 4
  %26 = fcmp une float %25, %14
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %71

28:                                               ; preds = %13
  %29 = icmp eq ptr %5, null
  br i1 %29, label %60, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.BMBVHTree, ptr %0, i64 0, i32 6
  %32 = load i32, ptr %31, align 4, !tbaa !51
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %17, align 8, !tbaa !45
  %37 = sext i32 %23 to i64
  %38 = getelementptr inbounds [3 x ptr], ptr %36, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !44
  %40 = getelementptr inbounds %struct.BMLoop, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !58
  %42 = getelementptr inbounds %struct.BMVert, ptr %41, i64 0, i32 2
  %43 = getelementptr inbounds ptr, ptr %38, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !44
  %45 = getelementptr inbounds %struct.BMLoop, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !58
  %47 = getelementptr inbounds %struct.BMVert, ptr %46, i64 0, i32 2
  %48 = getelementptr inbounds ptr, ptr %38, i64 2
  %49 = load ptr, ptr %48, align 8, !tbaa !44
  %50 = getelementptr inbounds %struct.BMLoop, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !58
  %52 = getelementptr inbounds %struct.BMVert, ptr %51, i64 0, i32 2
  %53 = getelementptr inbounds %struct.RayCastUserData, ptr %9, i64 0, i32 2
  call void @interp_v3_v3v3v3_uv(ptr noundef nonnull %5, ptr noundef nonnull %42, ptr noundef nonnull %47, ptr noundef nonnull %52, ptr noundef nonnull %53) #11
  br label %56

54:                                               ; preds = %30
  %55 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %8, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %55) #10
  br label %56

56:                                               ; preds = %54, %35
  %57 = icmp eq ptr %6, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %8, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %59) #10
  br label %60

60:                                               ; preds = %56, %58, %28
  br i1 %10, label %63, label %61

61:                                               ; preds = %60
  %62 = load float, ptr %16, align 4, !tbaa !68
  store float %62, ptr %4, align 4, !tbaa !61
  br label %63

63:                                               ; preds = %61, %60
  %64 = load ptr, ptr %17, align 8, !tbaa !45
  %65 = load i32, ptr %8, align 4, !tbaa !70
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [3 x ptr], ptr %64, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !44
  %69 = getelementptr inbounds %struct.BMLoop, ptr %68, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !53
  br label %71

71:                                               ; preds = %13, %63
  %72 = phi ptr [ %70, %63 ], [ null, %13 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #12
  ret ptr %72
}

; Function Attrs: optsize
declare i32 @BLI_bvhtree_ray_cast(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @bmbvh_ray_cast_cb(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3) #0 !PGOFuncName !74 {
  %5 = alloca float, align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [3 x ptr], align 16
  %8 = load ptr, ptr %0, align 8, !tbaa !71
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds [3 x ptr], ptr %8, i64 %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
  %11 = getelementptr inbounds %struct.RayCastUserData, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !73
  call fastcc void @bmbvh_tri_from_face(ptr noundef nonnull %7, ptr noundef %10, ptr noundef %12) #10
  %13 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 2
  %14 = load float, ptr %13, align 4, !tbaa !75
  %15 = fcmp ogt float %14, 0.000000e+00
  %16 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 1
  %17 = load ptr, ptr %7, align 16, !tbaa !44
  %18 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 2
  %21 = load ptr, ptr %20, align 16, !tbaa !44
  br i1 %15, label %22, label %24

22:                                               ; preds = %4
  %23 = call zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef nonnull %2, ptr noundef nonnull %16, ptr noundef %17, ptr noundef %19, ptr noundef %21, ptr noundef nonnull %5, ptr noundef nonnull %6, float noundef %14) #11
  br label %26

24:                                               ; preds = %4
  %25 = call zeroext i8 @isect_ray_tri_v3(ptr noundef nonnull %2, ptr noundef nonnull %16, ptr noundef %17, ptr noundef %19, ptr noundef %21, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i8 [ %23, %22 ], [ %25, %24 ]
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = load float, ptr %5, align 4, !tbaa !61
  %31 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 3
  %32 = load float, ptr %31, align 4, !tbaa !68
  %33 = fcmp olt float %30, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  store float %30, ptr %31, align 4, !tbaa !68
  store i32 %1, ptr %3, align 4, !tbaa !70
  %35 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 2
  %36 = load ptr, ptr %10, align 8, !tbaa !44
  %37 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !53
  %39 = getelementptr inbounds %struct.BMFace, ptr %38, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %35, ptr noundef nonnull %39) #10
  %40 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 1
  %41 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 1
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %40, ptr noundef nonnull %2, ptr noundef nonnull %41, float noundef %30) #10
  %42 = getelementptr inbounds %struct.RayCastUserData, ptr %0, i64 0, i32 2
  call fastcc void @copy_v2_v2(ptr noundef nonnull %42, ptr noundef nonnull %6) #10
  br label %43

43:                                               ; preds = %34, %29, %26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret void
}

; Function Attrs: optsize
declare void @interp_v3_v3v3v3_uv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_bmbvh_find_face_segment(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3, ptr noundef %4, ptr noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.BVHTreeRayHit, align 4
  %8 = alloca %struct.SegmentUserData, align 8
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #12
  %10 = tail call fastcc float @len_v3v3(ptr noundef %1, ptr noundef %2) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  %11 = getelementptr inbounds %struct.BMBVHTree, ptr %0, i64 0, i32 4
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef %2, ptr noundef %1) #10
  %12 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %7, i64 0, i32 3
  store float %10, ptr %12, align 4, !tbaa !68
  store i32 -1, ptr %7, align 4, !tbaa !70
  %13 = getelementptr inbounds %struct.BMBVHTree, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  store ptr %14, ptr %8, align 8, !tbaa !77
  %15 = load ptr, ptr %11, align 8, !tbaa !49
  %16 = getelementptr inbounds %struct.SegmentUserData, ptr %8, i64 0, i32 1
  store ptr %15, ptr %16, align 8, !tbaa !79
  %17 = getelementptr inbounds %struct.SegmentUserData, ptr %8, i64 0, i32 3
  store ptr %1, ptr %17, align 8, !tbaa !80
  %18 = getelementptr inbounds %struct.SegmentUserData, ptr %8, i64 0, i32 4
  store ptr %2, ptr %18, align 8, !tbaa !81
  %19 = load ptr, ptr %0, align 8, !tbaa !52
  %20 = call i32 @BLI_bvhtree_ray_cast(ptr noundef %19, ptr noundef %1, ptr noundef nonnull %9, float noundef 0.000000e+00, ptr noundef nonnull %7, ptr noundef nonnull @bmbvh_find_face_segment_cb, ptr noundef nonnull %8) #11
  %21 = load i32, ptr %7, align 4, !tbaa !70
  %22 = icmp ne i32 %21, -1
  %23 = load float, ptr %12, align 4
  %24 = fcmp une float %23, %10
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %71

26:                                               ; preds = %6
  %27 = icmp eq ptr %4, null
  br i1 %27, label %58, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.BMBVHTree, ptr %0, i64 0, i32 6
  %30 = load i32, ptr %29, align 4, !tbaa !51
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %13, align 8, !tbaa !45
  %35 = sext i32 %21 to i64
  %36 = getelementptr inbounds [3 x ptr], ptr %34, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !44
  %38 = getelementptr inbounds %struct.BMLoop, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !58
  %40 = getelementptr inbounds %struct.BMVert, ptr %39, i64 0, i32 2
  %41 = getelementptr inbounds ptr, ptr %36, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !44
  %43 = getelementptr inbounds %struct.BMLoop, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !58
  %45 = getelementptr inbounds %struct.BMVert, ptr %44, i64 0, i32 2
  %46 = getelementptr inbounds ptr, ptr %36, i64 2
  %47 = load ptr, ptr %46, align 8, !tbaa !44
  %48 = getelementptr inbounds %struct.BMLoop, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !58
  %50 = getelementptr inbounds %struct.BMVert, ptr %49, i64 0, i32 2
  %51 = getelementptr inbounds %struct.SegmentUserData, ptr %8, i64 0, i32 2
  call void @interp_v3_v3v3v3_uv(ptr noundef nonnull %4, ptr noundef nonnull %40, ptr noundef nonnull %45, ptr noundef nonnull %50, ptr noundef nonnull %51) #11
  br label %54

52:                                               ; preds = %28
  %53 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %7, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %53) #10
  br label %54

54:                                               ; preds = %52, %33
  %55 = icmp eq ptr %5, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %7, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %57) #10
  br label %58

58:                                               ; preds = %54, %56, %26
  %59 = icmp eq ptr %3, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %58
  %61 = load float, ptr %12, align 4, !tbaa !68
  %62 = fdiv float %61, %10
  store float %62, ptr %3, align 4, !tbaa !61
  br label %63

63:                                               ; preds = %60, %58
  %64 = load ptr, ptr %13, align 8, !tbaa !45
  %65 = load i32, ptr %7, align 4, !tbaa !70
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [3 x ptr], ptr %64, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !44
  %69 = getelementptr inbounds %struct.BMLoop, ptr %68, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !53
  br label %71

71:                                               ; preds = %6, %63
  %72 = phi ptr [ %70, %63 ], [ null, %6 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #12
  ret ptr %72
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !82 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #10
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !83 {
  %4 = load float, ptr %1, align 4, !tbaa !61
  %5 = load float, ptr %2, align 4, !tbaa !61
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !61
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !61
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !61
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !61
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !61
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !61
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !61
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @bmbvh_find_face_segment_cb(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3) #0 !PGOFuncName !84 {
  %5 = alloca float, align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [3 x ptr], align 16
  %8 = load ptr, ptr %0, align 8, !tbaa !77
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds [3 x ptr], ptr %8, i64 %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
  %11 = getelementptr inbounds %struct.SegmentUserData, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  call fastcc void @bmbvh_tri_from_face(ptr noundef nonnull %7, ptr noundef %10, ptr noundef %12) #10
  %13 = getelementptr inbounds %struct.SegmentUserData, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !80
  %15 = load ptr, ptr %7, align 16, !tbaa !44
  %16 = tail call fastcc zeroext i8 @equals_v3v3(ptr noundef %14, ptr noundef %15) #10, !range !85
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %56

18:                                               ; preds = %4
  %19 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = tail call fastcc zeroext i8 @equals_v3v3(ptr noundef %14, ptr noundef %20) #10, !range !85
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %56

23:                                               ; preds = %18
  %24 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 2
  %25 = load ptr, ptr %24, align 16, !tbaa !44
  %26 = tail call fastcc zeroext i8 @equals_v3v3(ptr noundef %14, ptr noundef %25) #10, !range !85
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.SegmentUserData, ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !81
  %31 = tail call fastcc zeroext i8 @equals_v3v3(ptr noundef %30, ptr noundef %15) #10, !range !85
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %28
  %34 = tail call fastcc zeroext i8 @equals_v3v3(ptr noundef %30, ptr noundef %20) #10, !range !85
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  %37 = tail call fastcc zeroext i8 @equals_v3v3(ptr noundef %30, ptr noundef %25) #10, !range !85
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 1
  %41 = call zeroext i8 @isect_ray_tri_v3(ptr noundef %2, ptr noundef nonnull %40, ptr noundef %15, ptr noundef %20, ptr noundef %25, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %39
  %44 = load float, ptr %5, align 4, !tbaa !61
  %45 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 3
  %46 = load float, ptr %45, align 4, !tbaa !68
  %47 = fcmp olt float %44, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  store float %44, ptr %45, align 4, !tbaa !68
  store i32 %1, ptr %3, align 4, !tbaa !70
  %49 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 2
  %50 = load ptr, ptr %10, align 8, !tbaa !44
  %51 = getelementptr inbounds %struct.BMLoop, ptr %50, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !53
  %53 = getelementptr inbounds %struct.BMFace, ptr %52, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %49, ptr noundef nonnull %53) #10
  %54 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 1
  call fastcc void @madd_v3_v3v3fl(ptr noundef nonnull %54, ptr noundef %2, ptr noundef nonnull %40, float noundef %44) #10
  %55 = getelementptr inbounds %struct.SegmentUserData, ptr %0, i64 0, i32 2
  call fastcc void @copy_v2_v2(ptr noundef nonnull %55, ptr noundef nonnull %6) #10
  br label %56

56:                                               ; preds = %39, %43, %48, %4, %18, %23, %28, %33, %36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_bmbvh_find_vert_closest(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BVHTreeNearest, align 4
  %5 = alloca %struct.VertSearchUserData, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %6 = fmul float %2, %2
  %7 = getelementptr inbounds %struct.BMBVHTree, ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %struct.BVHTreeNearest, ptr %4, i64 0, i32 3
  store float %6, ptr %8, align 4, !tbaa !86
  store i32 -1, ptr %4, align 4, !tbaa !88
  %9 = getelementptr inbounds %struct.BMBVHTree, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  store ptr %10, ptr %5, align 8, !tbaa !89
  %11 = load ptr, ptr %7, align 8, !tbaa !49
  %12 = getelementptr inbounds %struct.VertSearchUserData, ptr %5, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !91
  %13 = getelementptr inbounds %struct.VertSearchUserData, ptr %5, i64 0, i32 2
  store float %6, ptr %13, align 8, !tbaa !92
  %14 = load ptr, ptr %0, align 8, !tbaa !52
  %15 = call i32 @BLI_bvhtree_find_nearest(ptr noundef %14, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull @bmbvh_find_vert_closest_cb, ptr noundef nonnull %5) #11
  %16 = load i32, ptr %4, align 4, !tbaa !88
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %29, label %18

18:                                               ; preds = %3
  %19 = load ptr, ptr %9, align 8, !tbaa !45
  %20 = sext i32 %16 to i64
  %21 = getelementptr inbounds [3 x ptr], ptr %19, i64 %20
  %22 = getelementptr inbounds %struct.VertSearchUserData, ptr %5, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !93
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %21, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !58
  br label %29

29:                                               ; preds = %3, %18
  %30 = phi ptr [ %28, %18 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #12
  ret ptr %30
}

; Function Attrs: optsize
declare i32 @BLI_bvhtree_find_nearest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @bmbvh_find_vert_closest_cb(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) #6 !PGOFuncName !94 {
  %5 = alloca [3 x ptr], align 16
  %6 = load ptr, ptr %0, align 8, !tbaa !89
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds [3 x ptr], ptr %6, i64 %7
  %9 = getelementptr inbounds %struct.VertSearchUserData, ptr %0, i64 0, i32 2
  %10 = load float, ptr %9, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  %11 = getelementptr inbounds %struct.VertSearchUserData, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !91
  call fastcc void @bmbvh_tri_from_face(ptr noundef nonnull %5, ptr noundef %8, ptr noundef %12) #10
  %13 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 3
  %14 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 1
  %15 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 2
  %16 = getelementptr inbounds %struct.VertSearchUserData, ptr %0, i64 0, i32 3
  %17 = load float, ptr %13, align 4, !tbaa !86
  br label %18

18:                                               ; preds = %4, %34
  %19 = phi float [ %17, %4 ], [ %35, %34 ]
  %20 = phi i64 [ 0, %4 ], [ %36, %34 ]
  %21 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  %23 = tail call fastcc float @len_squared_v3v3(ptr noundef %2, ptr noundef %22) #10
  %24 = fcmp olt float %23, %19
  %25 = fcmp olt float %23, %10
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %14, ptr noundef %22) #10
  %28 = getelementptr inbounds ptr, ptr %8, i64 %20
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct.BMLoop, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !58
  %32 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 3
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %32) #10
  store float %23, ptr %13, align 4, !tbaa !86
  store i32 %1, ptr %3, align 4, !tbaa !88
  %33 = trunc i64 %20 to i32
  store i32 %33, ptr %16, align 4, !tbaa !93
  br label %34

34:                                               ; preds = %27, %18
  %35 = phi float [ %23, %27 ], [ %19, %18 ]
  %36 = add nuw nsw i64 %20, 1
  %37 = icmp eq i64 %36, 3
  br i1 %37, label %38, label %18, !llvm.loop !95

38:                                               ; preds = %34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #4 !PGOFuncName !96 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !97
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmbvh_tri_from_face(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #7 !PGOFuncName !98 {
  %4 = icmp eq ptr %2, null
  %5 = load ptr, ptr %1, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.BMLoop, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  br i1 %4, label %8, label %21

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 2
  store ptr %9, ptr %0, align 8, !tbaa !44
  %10 = getelementptr inbounds ptr, ptr %1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct.BMLoop, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2
  %15 = getelementptr inbounds ptr, ptr %0, i64 1
  store ptr %14, ptr %15, align 8, !tbaa !44
  %16 = getelementptr inbounds ptr, ptr %1, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  %18 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !58
  %20 = getelementptr inbounds %struct.BMVert, ptr %19, i64 0, i32 2
  br label %40

21:                                               ; preds = %3
  %22 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %7) #10
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [3 x float], ptr %2, i64 %23
  store ptr %24, ptr %0, align 8, !tbaa !44
  %25 = getelementptr inbounds ptr, ptr %1, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !58
  %29 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %28) #10
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [3 x float], ptr %2, i64 %30
  %32 = getelementptr inbounds ptr, ptr %0, i64 1
  store ptr %31, ptr %32, align 8, !tbaa !44
  %33 = getelementptr inbounds ptr, ptr %1, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !44
  %35 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !58
  %37 = tail call fastcc i32 @_bm_elem_index_get(ptr noundef %36) #10
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [3 x float], ptr %2, i64 %38
  br label %40

40:                                               ; preds = %21, %8
  %41 = phi ptr [ %20, %8 ], [ %39, %21 ]
  %42 = getelementptr inbounds ptr, ptr %0, i64 2
  store ptr %41, ptr %42, align 8
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @isect_ray_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #3 !PGOFuncName !99 {
  %5 = load float, ptr %1, align 4, !tbaa !61
  %6 = load float, ptr %2, align 4, !tbaa !61
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %3, float %5)
  store float %7, ptr %0, align 4, !tbaa !61
  %8 = getelementptr inbounds float, ptr %1, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !61
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !61
  %12 = tail call float @llvm.fmuladd.f32(float %11, float %3, float %9)
  %13 = getelementptr inbounds float, ptr %0, i64 1
  store float %12, ptr %13, align 4, !tbaa !61
  %14 = getelementptr inbounds float, ptr %1, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !61
  %16 = getelementptr inbounds float, ptr %2, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !61
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %3, float %15)
  %19 = getelementptr inbounds float, ptr %0, i64 2
  store float %18, ptr %19, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !100 {
  %3 = load float, ptr %1, align 4, !tbaa !61
  store float %3, ptr %0, align 4, !tbaa !61
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !61
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !101 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #10
  %3 = tail call float @sqrtf(float noundef %2) #11
  ret float %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !102 {
  %3 = load float, ptr %0, align 4, !tbaa !61
  %4 = load float, ptr %1, align 4, !tbaa !61
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !61
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !61
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !61
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !61
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @equals_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !103 {
  %3 = load float, ptr %0, align 4, !tbaa !61
  %4 = load float, ptr %1, align 4, !tbaa !61
  %5 = fcmp oeq float %3, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !61
  %9 = getelementptr inbounds float, ptr %1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !61
  %11 = fcmp oeq float %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !61
  %15 = getelementptr inbounds float, ptr %1, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !61
  %17 = fcmp oeq float %14, %16
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %12, %6, %2
  %20 = phi i8 [ 0, %6 ], [ 0, %2 ], [ %18, %12 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @len_squared_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !104 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #10
  %4 = call fastcc float @dot_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  ret float %4
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
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
!34 = !{!35, !36, i64 0}
!35 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !39, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !36, i64 48, !40, i64 56, !36, i64 64, !39, i64 72, !36, i64 80, !39, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !39, i64 104}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"long", !37, i64 0}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 24}
!43 = !{!35, !39, i64 32}
!44 = !{!36, !36, i64 0}
!45 = !{!46, !36, i64 8}
!46 = !{!"BMBVHTree", !36, i64 0, !36, i64 8, !39, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !39, i64 44}
!47 = !{!46, !39, i64 16}
!48 = !{!46, !36, i64 24}
!49 = !{!46, !36, i64 32}
!50 = !{!46, !37, i64 40}
!51 = !{!46, !39, i64 44}
!52 = !{!46, !36, i64 0}
!53 = !{!54, !36, i64 32}
!54 = !{!"BMLoop", !55, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!55 = !{!"BMHeader", !36, i64 0, !39, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!54, !36, i64 16}
!59 = distinct !{!59, !57}
!60 = !{!"editmesh_bvh.c:copy_v3_v3"}
!61 = !{!62, !62, i64 0}
!62 = !{!"float", !37, i64 0}
!63 = !{!"editmesh_bvh.c:_bm_elem_index_get"}
!64 = !{!55, !39, i64 8}
!65 = !{!"editmesh_bvh.c:bm_face_is_select"}
!66 = !{i8 0, i8 3}
!67 = !{!"editmesh_bvh.c:bm_face_is_not_hidden"}
!68 = !{!69, !62, i64 28}
!69 = !{!"BVHTreeRayHit", !39, i64 0, !37, i64 4, !37, i64 16, !62, i64 28, !39, i64 32}
!70 = !{!69, !39, i64 0}
!71 = !{!72, !36, i64 0}
!72 = !{!"RayCastUserData", !36, i64 0, !36, i64 8, !37, i64 16}
!73 = !{!72, !36, i64 8}
!74 = !{!"editmesh_bvh.c:bmbvh_ray_cast_cb"}
!75 = !{!76, !62, i64 24}
!76 = !{!"BVHTreeRay", !37, i64 0, !37, i64 12, !62, i64 24}
!77 = !{!78, !36, i64 0}
!78 = !{!"SegmentUserData", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32}
!79 = !{!78, !36, i64 8}
!80 = !{!78, !36, i64 24}
!81 = !{!78, !36, i64 32}
!82 = !{!"editmesh_bvh.c:len_v3v3"}
!83 = !{!"editmesh_bvh.c:sub_v3_v3v3"}
!84 = !{!"editmesh_bvh.c:bmbvh_find_face_segment_cb"}
!85 = !{i8 0, i8 2}
!86 = !{!87, !62, i64 28}
!87 = !{!"BVHTreeNearest", !39, i64 0, !37, i64 4, !37, i64 16, !62, i64 28, !39, i64 32}
!88 = !{!87, !39, i64 0}
!89 = !{!90, !36, i64 0}
!90 = !{!"VertSearchUserData", !36, i64 0, !36, i64 8, !62, i64 16, !39, i64 20}
!91 = !{!90, !36, i64 8}
!92 = !{!90, !62, i64 16}
!93 = !{!90, !39, i64 20}
!94 = !{!"editmesh_bvh.c:bmbvh_find_vert_closest_cb"}
!95 = distinct !{!95, !57}
!96 = !{!"editmesh_bvh.c:_bm_elem_flag_test"}
!97 = !{!55, !37, i64 13}
!98 = !{!"editmesh_bvh.c:bmbvh_tri_from_face"}
!99 = !{!"editmesh_bvh.c:madd_v3_v3v3fl"}
!100 = !{!"editmesh_bvh.c:copy_v2_v2"}
!101 = !{!"editmesh_bvh.c:len_v3"}
!102 = !{!"editmesh_bvh.c:dot_v3v3"}
!103 = !{!"editmesh_bvh.c:equals_v3v3"}
!104 = !{!"editmesh_bvh.c:len_squared_v3v3"}
