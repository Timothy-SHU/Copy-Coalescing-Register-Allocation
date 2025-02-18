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

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_bmbvh_new_from_editmesh(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.BMEditMesh, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !43
  %10 = and i32 %1, 2
  %11 = icmp eq i32 %10, 0
  %12 = and i32 %1, 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, ptr null, ptr @bm_face_is_not_hidden
  %15 = select i1 %11, ptr %14, ptr @bm_face_is_select
  %16 = and i32 %1, -7
  %17 = tail call ptr @BKE_bmbvh_new_ex(ptr noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef %16, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %15, ptr noundef null)
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_bmbvh_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 {
  %7 = and i32 %3, 2
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %3, 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, ptr null, ptr @bm_face_is_not_hidden
  %12 = select i1 %8, ptr %11, ptr @bm_face_is_select
  %13 = and i32 %3, -7
  %14 = tail call ptr @BKE_bmbvh_new_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %13, ptr noundef %4, i8 noundef zeroext %5, ptr noundef %12, ptr noundef null)
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_bmbvh_new_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i8 noundef zeroext %5, ptr noundef readonly %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca [3 x [3 x float]], align 16
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !44
  %11 = tail call ptr %10(i64 noundef 48, ptr noundef nonnull @.str) #7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #7
  %12 = icmp eq ptr %4, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext 1) #7
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
  br i1 %21, label %46, label %22

22:                                               ; preds = %14
  %23 = icmp sgt i32 %2, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %22
  %25 = zext nneg i32 %2 to i64
  br label %26

26:                                               ; preds = %24, %38
  %27 = phi i64 [ 0, %24 ], [ %44, %38 ]
  %28 = phi i8 [ 0, %24 ], [ %40, %38 ]
  %29 = phi ptr [ null, %24 ], [ %39, %38 ]
  %30 = phi i32 [ 0, %24 ], [ %43, %38 ]
  %31 = getelementptr inbounds [3 x ptr], ptr %1, i64 %27
  %32 = load ptr, ptr %31, align 8, !tbaa !44
  %33 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !52
  %35 = icmp eq ptr %34, %29
  br i1 %35, label %38, label %36

36:                                               ; preds = %26
  %37 = tail call zeroext i8 %6(ptr noundef %34, ptr noundef %7) #7
  br label %38

38:                                               ; preds = %36, %26
  %39 = phi ptr [ %34, %36 ], [ %29, %26 ]
  %40 = phi i8 [ %37, %36 ], [ %28, %26 ]
  %41 = icmp ne i8 %40, 0
  %42 = zext i1 %41 to i32
  %43 = add nuw nsw i32 %30, %42
  %44 = add nuw nsw i64 %27, 1
  %45 = icmp eq i64 %44, %25
  br i1 %45, label %46, label %26, !llvm.loop !55

46:                                               ; preds = %38, %22, %14
  %47 = phi i32 [ %2, %14 ], [ 0, %22 ], [ %43, %38 ]
  %48 = tail call ptr @BLI_bvhtree_new(i32 noundef %47, float noundef 0x3E90000000000000, i8 noundef zeroext 8, i8 noundef zeroext 8) #7
  store ptr %48, ptr %11, align 8, !tbaa !58
  %49 = icmp sgt i32 %2, 0
  br i1 %49, label %50, label %163

50:                                               ; preds = %46
  %51 = getelementptr inbounds float, ptr %9, i64 1
  %52 = getelementptr inbounds float, ptr %9, i64 2
  %53 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 1
  %54 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 1, i64 1
  %55 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 1, i64 2
  %56 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2
  %57 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2, i64 1
  %58 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2, i64 2
  %59 = getelementptr inbounds float, ptr %9, i64 1
  %60 = getelementptr inbounds float, ptr %9, i64 2
  %61 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 1
  %62 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 1, i64 1
  %63 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 1, i64 2
  %64 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2
  %65 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2, i64 1
  %66 = getelementptr inbounds [3 x [3 x float]], ptr %9, i64 0, i64 2, i64 2
  %67 = zext nneg i32 %2 to i64
  br label %68

68:                                               ; preds = %50, %158
  %69 = phi i64 [ 0, %50 ], [ %161, %158 ]
  %70 = phi i8 [ 0, %50 ], [ %160, %158 ]
  %71 = phi ptr [ null, %50 ], [ %159, %158 ]
  br i1 %21, label %84, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds [3 x ptr], ptr %1, i64 %69
  %74 = load ptr, ptr %73, align 8, !tbaa !44
  %75 = getelementptr inbounds %struct.BMLoop, ptr %74, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !52
  %77 = icmp eq ptr %76, %71
  br i1 %77, label %80, label %78

78:                                               ; preds = %72
  %79 = call zeroext i8 %6(ptr noundef %76, ptr noundef %7) #7
  br label %80

80:                                               ; preds = %78, %72
  %81 = phi ptr [ %76, %78 ], [ %71, %72 ]
  %82 = phi i8 [ %79, %78 ], [ %70, %72 ]
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %158, label %84

84:                                               ; preds = %80, %68
  %85 = phi ptr [ %81, %80 ], [ %71, %68 ]
  %86 = phi i8 [ %82, %80 ], [ %70, %68 ]
  %87 = getelementptr inbounds [3 x ptr], ptr %1, i64 %69
  %88 = load ptr, ptr %87, align 8, !tbaa !44
  %89 = getelementptr inbounds %struct.BMLoop, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !59
  br i1 %12, label %126, label %91

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.BMHeader, ptr %90, i64 0, i32 1
  %93 = load i32, ptr %92, align 8, !tbaa !60
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [3 x float], ptr %4, i64 %94
  %96 = load float, ptr %95, align 4, !tbaa !61
  store float %96, ptr %9, align 16, !tbaa !61
  %97 = getelementptr inbounds float, ptr %95, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !61
  store float %98, ptr %51, align 4, !tbaa !61
  %99 = getelementptr inbounds float, ptr %95, i64 2
  %100 = load float, ptr %99, align 4, !tbaa !61
  store float %100, ptr %52, align 8, !tbaa !61
  %101 = getelementptr inbounds [3 x ptr], ptr %1, i64 %69, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !44
  %103 = getelementptr inbounds %struct.BMLoop, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !59
  %105 = getelementptr inbounds %struct.BMHeader, ptr %104, i64 0, i32 1
  %106 = load i32, ptr %105, align 8, !tbaa !60
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [3 x float], ptr %4, i64 %107
  %109 = load float, ptr %108, align 4, !tbaa !61
  store float %109, ptr %53, align 4, !tbaa !61
  %110 = getelementptr inbounds float, ptr %108, i64 1
  %111 = load float, ptr %110, align 4, !tbaa !61
  store float %111, ptr %54, align 16, !tbaa !61
  %112 = getelementptr inbounds float, ptr %108, i64 2
  %113 = load float, ptr %112, align 4, !tbaa !61
  store float %113, ptr %55, align 4, !tbaa !61
  %114 = getelementptr inbounds [3 x ptr], ptr %1, i64 %69, i64 2
  %115 = load ptr, ptr %114, align 8, !tbaa !44
  %116 = getelementptr inbounds %struct.BMLoop, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !59
  %118 = getelementptr inbounds %struct.BMHeader, ptr %117, i64 0, i32 1
  %119 = load i32, ptr %118, align 8, !tbaa !60
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [3 x float], ptr %4, i64 %120
  %122 = load float, ptr %121, align 4, !tbaa !61
  store float %122, ptr %56, align 8, !tbaa !61
  %123 = getelementptr inbounds float, ptr %121, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !61
  store float %124, ptr %57, align 4, !tbaa !61
  %125 = getelementptr inbounds float, ptr %121, i64 2
  br label %152

126:                                              ; preds = %84
  %127 = getelementptr inbounds %struct.BMVert, ptr %90, i64 0, i32 2
  %128 = load float, ptr %127, align 4, !tbaa !61
  store float %128, ptr %9, align 16, !tbaa !61
  %129 = getelementptr inbounds %struct.BMVert, ptr %90, i64 0, i32 2, i64 1
  %130 = load float, ptr %129, align 4, !tbaa !61
  store float %130, ptr %59, align 4, !tbaa !61
  %131 = getelementptr inbounds %struct.BMVert, ptr %90, i64 0, i32 2, i64 2
  %132 = load float, ptr %131, align 4, !tbaa !61
  store float %132, ptr %60, align 8, !tbaa !61
  %133 = getelementptr inbounds [3 x ptr], ptr %1, i64 %69, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !44
  %135 = getelementptr inbounds %struct.BMLoop, ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !59
  %137 = getelementptr inbounds %struct.BMVert, ptr %136, i64 0, i32 2
  %138 = load float, ptr %137, align 4, !tbaa !61
  store float %138, ptr %61, align 4, !tbaa !61
  %139 = getelementptr inbounds %struct.BMVert, ptr %136, i64 0, i32 2, i64 1
  %140 = load float, ptr %139, align 4, !tbaa !61
  store float %140, ptr %62, align 16, !tbaa !61
  %141 = getelementptr inbounds %struct.BMVert, ptr %136, i64 0, i32 2, i64 2
  %142 = load float, ptr %141, align 4, !tbaa !61
  store float %142, ptr %63, align 4, !tbaa !61
  %143 = getelementptr inbounds [3 x ptr], ptr %1, i64 %69, i64 2
  %144 = load ptr, ptr %143, align 8, !tbaa !44
  %145 = getelementptr inbounds %struct.BMLoop, ptr %144, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !59
  %147 = getelementptr inbounds %struct.BMVert, ptr %146, i64 0, i32 2
  %148 = load float, ptr %147, align 4, !tbaa !61
  store float %148, ptr %64, align 8, !tbaa !61
  %149 = getelementptr inbounds %struct.BMVert, ptr %146, i64 0, i32 2, i64 1
  %150 = load float, ptr %149, align 4, !tbaa !61
  store float %150, ptr %65, align 4, !tbaa !61
  %151 = getelementptr inbounds %struct.BMVert, ptr %146, i64 0, i32 2, i64 2
  br label %152

152:                                              ; preds = %126, %91
  %153 = phi ptr [ %151, %126 ], [ %125, %91 ]
  %154 = phi ptr [ %66, %126 ], [ %58, %91 ]
  %155 = load float, ptr %153, align 4, !tbaa !61
  store float %155, ptr %154, align 16, !tbaa !61
  %156 = load ptr, ptr %11, align 8, !tbaa !58
  %157 = trunc i64 %69 to i32
  call void @BLI_bvhtree_insert(ptr noundef %156, i32 noundef %157, ptr noundef nonnull %9, i32 noundef 3) #7
  br label %158

158:                                              ; preds = %80, %152
  %159 = phi ptr [ %85, %152 ], [ %81, %80 ]
  %160 = phi i8 [ %86, %152 ], [ 0, %80 ]
  %161 = add nuw nsw i64 %69, 1
  %162 = icmp eq i64 %161, %67
  br i1 %162, label %163, label %68, !llvm.loop !63

163:                                              ; preds = %158, %46
  %164 = load ptr, ptr %11, align 8, !tbaa !58
  call void @BLI_bvhtree_balance(ptr noundef %164) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #7
  ret ptr %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BLI_bvhtree_new(i32 noundef, float noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @BLI_bvhtree_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_bvhtree_balance(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @bm_face_is_select(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !64
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @bm_face_is_not_hidden(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !64
  %5 = lshr i8 %4, 1
  %6 = and i8 %5, 1
  %7 = xor i8 %6, 1
  ret i8 %7
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_bmbvh_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !58
  tail call void @BLI_bvhtree_free(ptr noundef %2) #7
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
  tail call void %11(ptr noundef nonnull %4) #7
  br label %12

12:                                               ; preds = %10, %6, %1
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !44
  tail call void %13(ptr noundef nonnull %0) #7
  ret void
}

declare void @BLI_bvhtree_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_bmbvh_tree_get(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !58
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_bmbvh_ray_cast(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, float noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca %struct.BVHTreeRayHit, align 4
  %9 = alloca %struct.RayCastUserData, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #7
  %10 = icmp eq ptr %4, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load float, ptr %4, align 4, !tbaa !61
  br label %13

13:                                               ; preds = %7, %11
  %14 = phi float [ %12, %11 ], [ 0x47EFFFFFE0000000, %7 ]
  %15 = getelementptr inbounds %struct.BMBVHTree, ptr %0, i64 0, i32 4
  %16 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %8, i64 0, i32 3
  store float %14, ptr %16, align 4, !tbaa !65
  store i32 -1, ptr %8, align 4, !tbaa !67
  %17 = getelementptr inbounds %struct.BMBVHTree, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  store ptr %18, ptr %9, align 8, !tbaa !68
  %19 = load ptr, ptr %15, align 8, !tbaa !49
  %20 = getelementptr inbounds %struct.RayCastUserData, ptr %9, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !70
  %21 = load ptr, ptr %0, align 8, !tbaa !58
  %22 = call i32 @BLI_bvhtree_ray_cast(ptr noundef %21, ptr noundef %1, ptr noundef %2, float noundef %3, ptr noundef nonnull %8, ptr noundef nonnull @bmbvh_ray_cast_cb, ptr noundef nonnull %9) #7
  %23 = load i32, ptr %8, align 4, !tbaa !67
  %24 = icmp ne i32 %23, -1
  %25 = load float, ptr %16, align 4
  %26 = fcmp une float %25, %14
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %85

28:                                               ; preds = %13
  %29 = icmp eq ptr %5, null
  br i1 %29, label %74, label %30

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
  %41 = load ptr, ptr %40, align 8, !tbaa !59
  %42 = getelementptr inbounds %struct.BMVert, ptr %41, i64 0, i32 2
  %43 = getelementptr inbounds ptr, ptr %38, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !44
  %45 = getelementptr inbounds %struct.BMLoop, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !59
  %47 = getelementptr inbounds %struct.BMVert, ptr %46, i64 0, i32 2
  %48 = getelementptr inbounds ptr, ptr %38, i64 2
  %49 = load ptr, ptr %48, align 8, !tbaa !44
  %50 = getelementptr inbounds %struct.BMLoop, ptr %49, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !59
  %52 = getelementptr inbounds %struct.BMVert, ptr %51, i64 0, i32 2
  %53 = getelementptr inbounds %struct.RayCastUserData, ptr %9, i64 0, i32 2
  call void @interp_v3_v3v3v3_uv(ptr noundef nonnull %5, ptr noundef nonnull %42, ptr noundef nonnull %47, ptr noundef nonnull %52, ptr noundef nonnull %53) #7
  br label %63

54:                                               ; preds = %30
  %55 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %8, i64 0, i32 1
  %56 = load float, ptr %55, align 4, !tbaa !61
  store float %56, ptr %5, align 4, !tbaa !61
  %57 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %8, i64 0, i32 1, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !61
  %59 = getelementptr inbounds float, ptr %5, i64 1
  store float %58, ptr %59, align 4, !tbaa !61
  %60 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %8, i64 0, i32 1, i64 2
  %61 = load float, ptr %60, align 4, !tbaa !61
  %62 = getelementptr inbounds float, ptr %5, i64 2
  store float %61, ptr %62, align 4, !tbaa !61
  br label %63

63:                                               ; preds = %54, %35
  %64 = icmp eq ptr %6, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %8, i64 0, i32 1
  %67 = load float, ptr %66, align 4, !tbaa !61
  store float %67, ptr %6, align 4, !tbaa !61
  %68 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %8, i64 0, i32 1, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !61
  %70 = getelementptr inbounds float, ptr %6, i64 1
  store float %69, ptr %70, align 4, !tbaa !61
  %71 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %8, i64 0, i32 1, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !61
  %73 = getelementptr inbounds float, ptr %6, i64 2
  store float %72, ptr %73, align 4, !tbaa !61
  br label %74

74:                                               ; preds = %63, %65, %28
  br i1 %10, label %77, label %75

75:                                               ; preds = %74
  %76 = load float, ptr %16, align 4, !tbaa !65
  store float %76, ptr %4, align 4, !tbaa !61
  br label %77

77:                                               ; preds = %75, %74
  %78 = load ptr, ptr %17, align 8, !tbaa !45
  %79 = load i32, ptr %8, align 4, !tbaa !67
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [3 x ptr], ptr %78, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !44
  %83 = getelementptr inbounds %struct.BMLoop, ptr %82, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !52
  br label %85

85:                                               ; preds = %13, %77
  %86 = phi ptr [ %84, %77 ], [ null, %13 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #7
  ret ptr %86
}

declare i32 @BLI_bvhtree_ray_cast(ptr noundef, ptr noundef, ptr noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @bmbvh_ray_cast_cb(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca [2 x float], align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !68
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds [3 x ptr], ptr %7, i64 %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  %10 = getelementptr inbounds %struct.RayCastUserData, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  %12 = icmp eq ptr %11, null
  %13 = load ptr, ptr %9, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  br i1 %12, label %16, label %28

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2
  %18 = getelementptr inbounds ptr, ptr %9, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct.BMLoop, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !59
  %22 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2
  %23 = getelementptr inbounds ptr, ptr %9, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  %25 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  %27 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2
  br label %49

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.BMHeader, ptr %15, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !60
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [3 x float], ptr %11, i64 %31
  %33 = getelementptr inbounds ptr, ptr %9, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !44
  %35 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !59
  %37 = getelementptr inbounds %struct.BMHeader, ptr %36, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !60
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [3 x float], ptr %11, i64 %39
  %41 = getelementptr inbounds ptr, ptr %9, i64 2
  %42 = load ptr, ptr %41, align 8, !tbaa !44
  %43 = getelementptr inbounds %struct.BMLoop, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !59
  %45 = getelementptr inbounds %struct.BMHeader, ptr %44, i64 0, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !60
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [3 x float], ptr %11, i64 %47
  br label %49

49:                                               ; preds = %16, %28
  %50 = phi ptr [ %27, %16 ], [ %48, %28 ]
  %51 = phi ptr [ %22, %16 ], [ %40, %28 ]
  %52 = phi ptr [ %17, %16 ], [ %32, %28 ]
  %53 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 2
  %54 = load float, ptr %53, align 4, !tbaa !71
  %55 = fcmp ogt float %54, 0.000000e+00
  %56 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 1
  br i1 %55, label %57, label %59

57:                                               ; preds = %49
  %58 = call zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef %2, ptr noundef nonnull %56, ptr noundef %52, ptr noundef %51, ptr noundef %50, ptr noundef nonnull %5, ptr noundef nonnull %6, float noundef %54) #7
  br label %61

59:                                               ; preds = %49
  %60 = call zeroext i8 @isect_ray_tri_v3(ptr noundef %2, ptr noundef nonnull %56, ptr noundef %52, ptr noundef %51, ptr noundef %50, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i8 [ %58, %57 ], [ %60, %59 ]
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %104, label %64

64:                                               ; preds = %61
  %65 = load float, ptr %5, align 4, !tbaa !61
  %66 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 3
  %67 = load float, ptr %66, align 4, !tbaa !65
  %68 = fcmp olt float %65, %67
  br i1 %68, label %69, label %104

69:                                               ; preds = %64
  store float %65, ptr %66, align 4, !tbaa !65
  store i32 %1, ptr %3, align 4, !tbaa !67
  %70 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 2
  %71 = load ptr, ptr %9, align 8, !tbaa !44
  %72 = getelementptr inbounds %struct.BMLoop, ptr %71, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !52
  %74 = getelementptr inbounds %struct.BMFace, ptr %73, i64 0, i32 4
  %75 = load float, ptr %74, align 4, !tbaa !61
  store float %75, ptr %70, align 4, !tbaa !61
  %76 = getelementptr inbounds %struct.BMFace, ptr %73, i64 0, i32 4, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !61
  %78 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 2, i64 1
  store float %77, ptr %78, align 4, !tbaa !61
  %79 = getelementptr inbounds %struct.BMFace, ptr %73, i64 0, i32 4, i64 2
  %80 = load float, ptr %79, align 4, !tbaa !61
  %81 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 2, i64 2
  store float %80, ptr %81, align 4, !tbaa !61
  %82 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 1
  %83 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 1
  %84 = load float, ptr %2, align 4, !tbaa !61
  %85 = load float, ptr %83, align 4, !tbaa !61
  %86 = call float @llvm.fmuladd.f32(float %85, float %65, float %84)
  store float %86, ptr %82, align 4, !tbaa !61
  %87 = getelementptr inbounds float, ptr %2, i64 1
  %88 = load float, ptr %87, align 4, !tbaa !61
  %89 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 1, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !61
  %91 = call float @llvm.fmuladd.f32(float %90, float %65, float %88)
  %92 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 1, i64 1
  store float %91, ptr %92, align 4, !tbaa !61
  %93 = getelementptr inbounds float, ptr %2, i64 2
  %94 = load float, ptr %93, align 4, !tbaa !61
  %95 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 1, i64 2
  %96 = load float, ptr %95, align 4, !tbaa !61
  %97 = call float @llvm.fmuladd.f32(float %96, float %65, float %94)
  %98 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 1, i64 2
  store float %97, ptr %98, align 4, !tbaa !61
  %99 = getelementptr inbounds %struct.RayCastUserData, ptr %0, i64 0, i32 2
  %100 = load float, ptr %6, align 4, !tbaa !61
  store float %100, ptr %99, align 4, !tbaa !61
  %101 = getelementptr inbounds float, ptr %6, i64 1
  %102 = load float, ptr %101, align 4, !tbaa !61
  %103 = getelementptr inbounds %struct.RayCastUserData, ptr %0, i64 0, i32 2, i64 1
  store float %102, ptr %103, align 4, !tbaa !61
  br label %104

104:                                              ; preds = %69, %64, %61
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret void
}

declare void @interp_v3_v3v3v3_uv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_bmbvh_find_face_segment(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3, ptr noundef %4, ptr noundef writeonly %5) local_unnamed_addr #0 {
  %7 = alloca %struct.BVHTreeRayHit, align 4
  %8 = alloca %struct.SegmentUserData, align 8
  %9 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #7
  %10 = load float, ptr %2, align 4, !tbaa !61
  %11 = load float, ptr %1, align 4, !tbaa !61
  %12 = fsub float %10, %11
  %13 = getelementptr inbounds float, ptr %2, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !61
  %15 = getelementptr inbounds float, ptr %1, i64 1
  %16 = load float, ptr %15, align 4, !tbaa !61
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %2, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !61
  %20 = getelementptr inbounds float, ptr %1, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !61
  %22 = fsub float %19, %21
  %23 = fmul float %17, %17
  %24 = tail call float @llvm.fmuladd.f32(float %12, float %12, float %23)
  %25 = tail call float @llvm.fmuladd.f32(float %22, float %22, float %24)
  %26 = tail call float @sqrtf(float noundef %25) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #7
  %27 = getelementptr inbounds %struct.BMBVHTree, ptr %0, i64 0, i32 4
  %28 = load float, ptr %2, align 4, !tbaa !61
  %29 = load float, ptr %1, align 4, !tbaa !61
  %30 = fsub float %28, %29
  store float %30, ptr %9, align 4, !tbaa !61
  %31 = load float, ptr %13, align 4, !tbaa !61
  %32 = load float, ptr %15, align 4, !tbaa !61
  %33 = fsub float %31, %32
  %34 = getelementptr inbounds float, ptr %9, i64 1
  store float %33, ptr %34, align 4, !tbaa !61
  %35 = load float, ptr %18, align 4, !tbaa !61
  %36 = load float, ptr %20, align 4, !tbaa !61
  %37 = fsub float %35, %36
  %38 = getelementptr inbounds float, ptr %9, i64 2
  store float %37, ptr %38, align 4, !tbaa !61
  %39 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %7, i64 0, i32 3
  store float %26, ptr %39, align 4, !tbaa !65
  store i32 -1, ptr %7, align 4, !tbaa !67
  %40 = getelementptr inbounds %struct.BMBVHTree, ptr %0, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !45
  store ptr %41, ptr %8, align 8, !tbaa !73
  %42 = load ptr, ptr %27, align 8, !tbaa !49
  %43 = getelementptr inbounds %struct.SegmentUserData, ptr %8, i64 0, i32 1
  store ptr %42, ptr %43, align 8, !tbaa !75
  %44 = getelementptr inbounds %struct.SegmentUserData, ptr %8, i64 0, i32 3
  store ptr %1, ptr %44, align 8, !tbaa !76
  %45 = getelementptr inbounds %struct.SegmentUserData, ptr %8, i64 0, i32 4
  store ptr %2, ptr %45, align 8, !tbaa !77
  %46 = load ptr, ptr %0, align 8, !tbaa !58
  %47 = call i32 @BLI_bvhtree_ray_cast(ptr noundef %46, ptr noundef nonnull %1, ptr noundef nonnull %9, float noundef 0.000000e+00, ptr noundef nonnull %7, ptr noundef nonnull @bmbvh_find_face_segment_cb, ptr noundef nonnull %8) #7
  %48 = load i32, ptr %7, align 4, !tbaa !67
  %49 = icmp ne i32 %48, -1
  %50 = load float, ptr %39, align 4
  %51 = fcmp une float %50, %26
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %53, label %112

53:                                               ; preds = %6
  %54 = icmp eq ptr %4, null
  br i1 %54, label %99, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.BMBVHTree, ptr %0, i64 0, i32 6
  %57 = load i32, ptr %56, align 4, !tbaa !51
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %79, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %40, align 8, !tbaa !45
  %62 = sext i32 %48 to i64
  %63 = getelementptr inbounds [3 x ptr], ptr %61, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !44
  %65 = getelementptr inbounds %struct.BMLoop, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !59
  %67 = getelementptr inbounds %struct.BMVert, ptr %66, i64 0, i32 2
  %68 = getelementptr inbounds ptr, ptr %63, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !44
  %70 = getelementptr inbounds %struct.BMLoop, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !59
  %72 = getelementptr inbounds %struct.BMVert, ptr %71, i64 0, i32 2
  %73 = getelementptr inbounds ptr, ptr %63, i64 2
  %74 = load ptr, ptr %73, align 8, !tbaa !44
  %75 = getelementptr inbounds %struct.BMLoop, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !59
  %77 = getelementptr inbounds %struct.BMVert, ptr %76, i64 0, i32 2
  %78 = getelementptr inbounds %struct.SegmentUserData, ptr %8, i64 0, i32 2
  call void @interp_v3_v3v3v3_uv(ptr noundef nonnull %4, ptr noundef nonnull %67, ptr noundef nonnull %72, ptr noundef nonnull %77, ptr noundef nonnull %78) #7
  br label %88

79:                                               ; preds = %55
  %80 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %7, i64 0, i32 1
  %81 = load float, ptr %80, align 4, !tbaa !61
  store float %81, ptr %4, align 4, !tbaa !61
  %82 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %7, i64 0, i32 1, i64 1
  %83 = load float, ptr %82, align 4, !tbaa !61
  %84 = getelementptr inbounds float, ptr %4, i64 1
  store float %83, ptr %84, align 4, !tbaa !61
  %85 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %7, i64 0, i32 1, i64 2
  %86 = load float, ptr %85, align 4, !tbaa !61
  %87 = getelementptr inbounds float, ptr %4, i64 2
  store float %86, ptr %87, align 4, !tbaa !61
  br label %88

88:                                               ; preds = %79, %60
  %89 = icmp eq ptr %5, null
  br i1 %89, label %99, label %90

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %7, i64 0, i32 1
  %92 = load float, ptr %91, align 4, !tbaa !61
  store float %92, ptr %5, align 4, !tbaa !61
  %93 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %7, i64 0, i32 1, i64 1
  %94 = load float, ptr %93, align 4, !tbaa !61
  %95 = getelementptr inbounds float, ptr %5, i64 1
  store float %94, ptr %95, align 4, !tbaa !61
  %96 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %7, i64 0, i32 1, i64 2
  %97 = load float, ptr %96, align 4, !tbaa !61
  %98 = getelementptr inbounds float, ptr %5, i64 2
  store float %97, ptr %98, align 4, !tbaa !61
  br label %99

99:                                               ; preds = %88, %90, %53
  %100 = icmp eq ptr %3, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %99
  %102 = load float, ptr %39, align 4, !tbaa !65
  %103 = fdiv float %102, %26
  store float %103, ptr %3, align 4, !tbaa !61
  br label %104

104:                                              ; preds = %101, %99
  %105 = load ptr, ptr %40, align 8, !tbaa !45
  %106 = load i32, ptr %7, align 4, !tbaa !67
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [3 x ptr], ptr %105, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !44
  %110 = getelementptr inbounds %struct.BMLoop, ptr %109, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !52
  br label %112

112:                                              ; preds = %6, %104
  %113 = phi ptr [ %111, %104 ], [ null, %6 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #7
  ret ptr %113
}

; Function Attrs: nounwind uwtable
define internal void @bmbvh_find_face_segment_cb(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca [2 x float], align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !73
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds [3 x ptr], ptr %7, i64 %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  %10 = getelementptr inbounds %struct.SegmentUserData, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = icmp eq ptr %11, null
  %13 = load ptr, ptr %9, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  br i1 %12, label %16, label %28

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2
  %18 = getelementptr inbounds ptr, ptr %9, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct.BMLoop, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !59
  %22 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2
  %23 = getelementptr inbounds ptr, ptr %9, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  %25 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !59
  %27 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2
  br label %49

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.BMHeader, ptr %15, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !60
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [3 x float], ptr %11, i64 %31
  %33 = getelementptr inbounds ptr, ptr %9, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !44
  %35 = getelementptr inbounds %struct.BMLoop, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !59
  %37 = getelementptr inbounds %struct.BMHeader, ptr %36, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !60
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [3 x float], ptr %11, i64 %39
  %41 = getelementptr inbounds ptr, ptr %9, i64 2
  %42 = load ptr, ptr %41, align 8, !tbaa !44
  %43 = getelementptr inbounds %struct.BMLoop, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !59
  %45 = getelementptr inbounds %struct.BMHeader, ptr %44, i64 0, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !60
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [3 x float], ptr %11, i64 %47
  br label %49

49:                                               ; preds = %16, %28
  %50 = phi ptr [ %27, %16 ], [ %48, %28 ]
  %51 = phi ptr [ %22, %16 ], [ %40, %28 ]
  %52 = phi ptr [ %17, %16 ], [ %32, %28 ]
  %53 = getelementptr inbounds %struct.SegmentUserData, ptr %0, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !76
  %55 = load float, ptr %54, align 4, !tbaa !61
  %56 = load float, ptr %52, align 4, !tbaa !61
  %57 = fcmp oeq float %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %49
  %59 = getelementptr inbounds float, ptr %54, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !61
  %61 = getelementptr inbounds float, ptr %52, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !61
  %63 = fcmp oeq float %60, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = getelementptr inbounds float, ptr %54, i64 2
  %66 = load float, ptr %65, align 4, !tbaa !61
  %67 = getelementptr inbounds float, ptr %52, i64 2
  %68 = load float, ptr %67, align 4, !tbaa !61
  %69 = fcmp une float %66, %68
  br i1 %69, label %70, label %188

70:                                               ; preds = %58, %49, %64
  %71 = load float, ptr %51, align 4, !tbaa !61
  %72 = fcmp oeq float %55, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = getelementptr inbounds float, ptr %54, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !61
  %76 = getelementptr inbounds float, ptr %51, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !61
  %78 = fcmp oeq float %75, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = getelementptr inbounds float, ptr %54, i64 2
  %81 = load float, ptr %80, align 4, !tbaa !61
  %82 = getelementptr inbounds float, ptr %51, i64 2
  %83 = load float, ptr %82, align 4, !tbaa !61
  %84 = fcmp une float %81, %83
  br i1 %84, label %85, label %188

85:                                               ; preds = %73, %70, %79
  %86 = load float, ptr %50, align 4, !tbaa !61
  %87 = fcmp oeq float %55, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = getelementptr inbounds float, ptr %54, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !61
  %91 = getelementptr inbounds float, ptr %50, i64 1
  %92 = load float, ptr %91, align 4, !tbaa !61
  %93 = fcmp oeq float %90, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = getelementptr inbounds float, ptr %54, i64 2
  %96 = load float, ptr %95, align 4, !tbaa !61
  %97 = getelementptr inbounds float, ptr %50, i64 2
  %98 = load float, ptr %97, align 4, !tbaa !61
  %99 = fcmp une float %96, %98
  br i1 %99, label %100, label %188

100:                                              ; preds = %88, %85, %94
  %101 = getelementptr inbounds %struct.SegmentUserData, ptr %0, i64 0, i32 4
  %102 = load ptr, ptr %101, align 8, !tbaa !77
  %103 = load float, ptr %102, align 4, !tbaa !61
  %104 = fcmp oeq float %103, %56
  br i1 %104, label %105, label %117

105:                                              ; preds = %100
  %106 = getelementptr inbounds float, ptr %102, i64 1
  %107 = load float, ptr %106, align 4, !tbaa !61
  %108 = getelementptr inbounds float, ptr %52, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !61
  %110 = fcmp oeq float %107, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = getelementptr inbounds float, ptr %102, i64 2
  %113 = load float, ptr %112, align 4, !tbaa !61
  %114 = getelementptr inbounds float, ptr %52, i64 2
  %115 = load float, ptr %114, align 4, !tbaa !61
  %116 = fcmp une float %113, %115
  br i1 %116, label %117, label %188

117:                                              ; preds = %105, %100, %111
  %118 = fcmp oeq float %103, %71
  br i1 %118, label %119, label %131

119:                                              ; preds = %117
  %120 = getelementptr inbounds float, ptr %102, i64 1
  %121 = load float, ptr %120, align 4, !tbaa !61
  %122 = getelementptr inbounds float, ptr %51, i64 1
  %123 = load float, ptr %122, align 4, !tbaa !61
  %124 = fcmp oeq float %121, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = getelementptr inbounds float, ptr %102, i64 2
  %127 = load float, ptr %126, align 4, !tbaa !61
  %128 = getelementptr inbounds float, ptr %51, i64 2
  %129 = load float, ptr %128, align 4, !tbaa !61
  %130 = fcmp une float %127, %129
  br i1 %130, label %131, label %188

131:                                              ; preds = %119, %117, %125
  %132 = fcmp oeq float %103, %86
  br i1 %132, label %133, label %145

133:                                              ; preds = %131
  %134 = getelementptr inbounds float, ptr %102, i64 1
  %135 = load float, ptr %134, align 4, !tbaa !61
  %136 = getelementptr inbounds float, ptr %50, i64 1
  %137 = load float, ptr %136, align 4, !tbaa !61
  %138 = fcmp oeq float %135, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = getelementptr inbounds float, ptr %102, i64 2
  %141 = load float, ptr %140, align 4, !tbaa !61
  %142 = getelementptr inbounds float, ptr %50, i64 2
  %143 = load float, ptr %142, align 4, !tbaa !61
  %144 = fcmp une float %141, %143
  br i1 %144, label %145, label %188

145:                                              ; preds = %133, %131, %139
  %146 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 1
  %147 = call zeroext i8 @isect_ray_tri_v3(ptr noundef %2, ptr noundef nonnull %146, ptr noundef nonnull %52, ptr noundef nonnull %51, ptr noundef nonnull %50, ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %188, label %149

149:                                              ; preds = %145
  %150 = load float, ptr %5, align 4, !tbaa !61
  %151 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 3
  %152 = load float, ptr %151, align 4, !tbaa !65
  %153 = fcmp olt float %150, %152
  br i1 %153, label %154, label %188

154:                                              ; preds = %149
  store float %150, ptr %151, align 4, !tbaa !65
  store i32 %1, ptr %3, align 4, !tbaa !67
  %155 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 2
  %156 = load ptr, ptr %9, align 8, !tbaa !44
  %157 = getelementptr inbounds %struct.BMLoop, ptr %156, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !52
  %159 = getelementptr inbounds %struct.BMFace, ptr %158, i64 0, i32 4
  %160 = load float, ptr %159, align 4, !tbaa !61
  store float %160, ptr %155, align 4, !tbaa !61
  %161 = getelementptr inbounds %struct.BMFace, ptr %158, i64 0, i32 4, i64 1
  %162 = load float, ptr %161, align 4, !tbaa !61
  %163 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 2, i64 1
  store float %162, ptr %163, align 4, !tbaa !61
  %164 = getelementptr inbounds %struct.BMFace, ptr %158, i64 0, i32 4, i64 2
  %165 = load float, ptr %164, align 4, !tbaa !61
  %166 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 2, i64 2
  store float %165, ptr %166, align 4, !tbaa !61
  %167 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 1
  %168 = load float, ptr %2, align 4, !tbaa !61
  %169 = load float, ptr %146, align 4, !tbaa !61
  %170 = call float @llvm.fmuladd.f32(float %169, float %150, float %168)
  store float %170, ptr %167, align 4, !tbaa !61
  %171 = getelementptr inbounds float, ptr %2, i64 1
  %172 = load float, ptr %171, align 4, !tbaa !61
  %173 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 1, i64 1
  %174 = load float, ptr %173, align 4, !tbaa !61
  %175 = call float @llvm.fmuladd.f32(float %174, float %150, float %172)
  %176 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 1, i64 1
  store float %175, ptr %176, align 4, !tbaa !61
  %177 = getelementptr inbounds float, ptr %2, i64 2
  %178 = load float, ptr %177, align 4, !tbaa !61
  %179 = getelementptr inbounds %struct.BVHTreeRay, ptr %2, i64 0, i32 1, i64 2
  %180 = load float, ptr %179, align 4, !tbaa !61
  %181 = call float @llvm.fmuladd.f32(float %180, float %150, float %178)
  %182 = getelementptr inbounds %struct.BVHTreeRayHit, ptr %3, i64 0, i32 1, i64 2
  store float %181, ptr %182, align 4, !tbaa !61
  %183 = getelementptr inbounds %struct.SegmentUserData, ptr %0, i64 0, i32 2
  %184 = load float, ptr %6, align 4, !tbaa !61
  store float %184, ptr %183, align 4, !tbaa !61
  %185 = getelementptr inbounds float, ptr %6, i64 1
  %186 = load float, ptr %185, align 4, !tbaa !61
  %187 = getelementptr inbounds %struct.SegmentUserData, ptr %0, i64 0, i32 2, i64 1
  store float %186, ptr %187, align 4, !tbaa !61
  br label %188

188:                                              ; preds = %145, %149, %154, %64, %79, %94, %111, %125, %139
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_bmbvh_find_vert_closest(ptr nocapture noundef readonly %0, ptr noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BVHTreeNearest, align 4
  %5 = alloca %struct.VertSearchUserData, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
  %6 = fmul float %2, %2
  %7 = getelementptr inbounds %struct.BMBVHTree, ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %struct.BVHTreeNearest, ptr %4, i64 0, i32 3
  store float %6, ptr %8, align 4, !tbaa !78
  store i32 -1, ptr %4, align 4, !tbaa !80
  %9 = getelementptr inbounds %struct.BMBVHTree, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  store ptr %10, ptr %5, align 8, !tbaa !81
  %11 = load ptr, ptr %7, align 8, !tbaa !49
  %12 = getelementptr inbounds %struct.VertSearchUserData, ptr %5, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !83
  %13 = getelementptr inbounds %struct.VertSearchUserData, ptr %5, i64 0, i32 2
  store float %6, ptr %13, align 8, !tbaa !84
  %14 = load ptr, ptr %0, align 8, !tbaa !58
  %15 = call i32 @BLI_bvhtree_find_nearest(ptr noundef %14, ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull @bmbvh_find_vert_closest_cb, ptr noundef nonnull %5) #7
  %16 = load i32, ptr %4, align 4, !tbaa !80
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %29, label %18

18:                                               ; preds = %3
  %19 = load ptr, ptr %9, align 8, !tbaa !45
  %20 = sext i32 %16 to i64
  %21 = getelementptr inbounds [3 x ptr], ptr %19, i64 %20
  %22 = getelementptr inbounds %struct.VertSearchUserData, ptr %5, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !85
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %21, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !59
  br label %29

29:                                               ; preds = %3, %18
  %30 = phi ptr [ %28, %18 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #7
  ret ptr %30
}

declare i32 @BLI_bvhtree_find_nearest(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @bmbvh_find_vert_closest_cb(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) #4 {
  %5 = alloca [3 x ptr], align 16
  %6 = load ptr, ptr %0, align 8, !tbaa !81
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds [3 x ptr], ptr %6, i64 %7
  %9 = getelementptr inbounds %struct.VertSearchUserData, ptr %0, i64 0, i32 2
  %10 = load float, ptr %9, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #7
  %11 = getelementptr inbounds %struct.VertSearchUserData, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !83
  %13 = icmp eq ptr %12, null
  %14 = load ptr, ptr %8, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  br i1 %13, label %17, label %30

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2
  store ptr %18, ptr %5, align 16, !tbaa !44
  %19 = getelementptr inbounds ptr, ptr %8, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.BMLoop, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  %23 = getelementptr inbounds %struct.BMVert, ptr %22, i64 0, i32 2
  %24 = getelementptr inbounds ptr, ptr %5, i64 1
  store ptr %23, ptr %24, align 8, !tbaa !44
  %25 = getelementptr inbounds ptr, ptr %8, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = getelementptr inbounds %struct.BMLoop, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !59
  %29 = getelementptr inbounds %struct.BMVert, ptr %28, i64 0, i32 2
  br label %52

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.BMHeader, ptr %16, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !60
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [3 x float], ptr %12, i64 %33
  store ptr %34, ptr %5, align 16, !tbaa !44
  %35 = getelementptr inbounds ptr, ptr %8, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !44
  %37 = getelementptr inbounds %struct.BMLoop, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !59
  %39 = getelementptr inbounds %struct.BMHeader, ptr %38, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !60
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [3 x float], ptr %12, i64 %41
  %43 = getelementptr inbounds ptr, ptr %5, i64 1
  store ptr %42, ptr %43, align 8, !tbaa !44
  %44 = getelementptr inbounds ptr, ptr %8, i64 2
  %45 = load ptr, ptr %44, align 8, !tbaa !44
  %46 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !59
  %48 = getelementptr inbounds %struct.BMHeader, ptr %47, i64 0, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !60
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x float], ptr %12, i64 %50
  br label %52

52:                                               ; preds = %17, %30
  %53 = phi ptr [ %29, %17 ], [ %51, %30 ]
  %54 = getelementptr inbounds ptr, ptr %5, i64 2
  store ptr %53, ptr %54, align 16, !tbaa !44
  %55 = getelementptr inbounds float, ptr %2, i64 1
  %56 = getelementptr inbounds float, ptr %2, i64 2
  %57 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 3
  %58 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 1
  %59 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 1, i64 1
  %60 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 1, i64 2
  %61 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 2
  %62 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 2, i64 1
  %63 = getelementptr inbounds %struct.BVHTreeNearest, ptr %3, i64 0, i32 2, i64 2
  %64 = getelementptr inbounds %struct.VertSearchUserData, ptr %0, i64 0, i32 3
  br label %65

65:                                               ; preds = %52, %101
  %66 = phi i64 [ 0, %52 ], [ %102, %101 ]
  %67 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !44
  %69 = load float, ptr %68, align 4, !tbaa !61
  %70 = load float, ptr %2, align 4, !tbaa !61
  %71 = fsub float %69, %70
  %72 = getelementptr inbounds float, ptr %68, i64 1
  %73 = load float, ptr %72, align 4, !tbaa !61
  %74 = load float, ptr %55, align 4, !tbaa !61
  %75 = fsub float %73, %74
  %76 = getelementptr inbounds float, ptr %68, i64 2
  %77 = load float, ptr %76, align 4, !tbaa !61
  %78 = load float, ptr %56, align 4, !tbaa !61
  %79 = fsub float %77, %78
  %80 = fmul float %75, %75
  %81 = tail call float @llvm.fmuladd.f32(float %71, float %71, float %80)
  %82 = tail call float @llvm.fmuladd.f32(float %79, float %79, float %81)
  %83 = load float, ptr %57, align 4, !tbaa !78
  %84 = fcmp olt float %82, %83
  %85 = fcmp olt float %82, %10
  %86 = select i1 %84, i1 %85, i1 false
  br i1 %86, label %87, label %101

87:                                               ; preds = %65
  store float %69, ptr %58, align 4, !tbaa !61
  %88 = load float, ptr %72, align 4, !tbaa !61
  store float %88, ptr %59, align 4, !tbaa !61
  %89 = load float, ptr %76, align 4, !tbaa !61
  store float %89, ptr %60, align 4, !tbaa !61
  %90 = getelementptr inbounds ptr, ptr %8, i64 %66
  %91 = load ptr, ptr %90, align 8, !tbaa !44
  %92 = getelementptr inbounds %struct.BMLoop, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !59
  %94 = getelementptr inbounds %struct.BMVert, ptr %93, i64 0, i32 3
  %95 = load float, ptr %94, align 4, !tbaa !61
  store float %95, ptr %61, align 4, !tbaa !61
  %96 = getelementptr inbounds %struct.BMVert, ptr %93, i64 0, i32 3, i64 1
  %97 = load float, ptr %96, align 4, !tbaa !61
  store float %97, ptr %62, align 4, !tbaa !61
  %98 = getelementptr inbounds %struct.BMVert, ptr %93, i64 0, i32 3, i64 2
  %99 = load float, ptr %98, align 4, !tbaa !61
  store float %99, ptr %63, align 4, !tbaa !61
  store float %82, ptr %57, align 4, !tbaa !78
  store i32 %1, ptr %3, align 4, !tbaa !80
  %100 = trunc i64 %66 to i32
  store i32 %100, ptr %64, align 4, !tbaa !85
  br label %101

101:                                              ; preds = %87, %65
  %102 = add nuw nsw i64 %66, 1
  %103 = icmp eq i64 %102, 3
  br i1 %103, label %104, label %65, !llvm.loop !86

104:                                              ; preds = %101
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #7
  ret void
}

declare zeroext i8 @isect_ray_tri_epsilon_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare zeroext i8 @isect_ray_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
!52 = !{!53, !36, i64 32}
!53 = !{!"BMLoop", !54, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!54 = !{!"BMHeader", !36, i64 0, !39, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!46, !36, i64 0}
!59 = !{!53, !36, i64 16}
!60 = !{!54, !39, i64 8}
!61 = !{!62, !62, i64 0}
!62 = !{!"float", !37, i64 0}
!63 = distinct !{!63, !56, !57}
!64 = !{!54, !37, i64 13}
!65 = !{!66, !62, i64 28}
!66 = !{!"BVHTreeRayHit", !39, i64 0, !37, i64 4, !37, i64 16, !62, i64 28, !39, i64 32}
!67 = !{!66, !39, i64 0}
!68 = !{!69, !36, i64 0}
!69 = !{!"RayCastUserData", !36, i64 0, !36, i64 8, !37, i64 16}
!70 = !{!69, !36, i64 8}
!71 = !{!72, !62, i64 24}
!72 = !{!"BVHTreeRay", !37, i64 0, !37, i64 12, !62, i64 24}
!73 = !{!74, !36, i64 0}
!74 = !{!"SegmentUserData", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32}
!75 = !{!74, !36, i64 8}
!76 = !{!74, !36, i64 24}
!77 = !{!74, !36, i64 32}
!78 = !{!79, !62, i64 28}
!79 = !{!"BVHTreeNearest", !39, i64 0, !37, i64 4, !37, i64 16, !62, i64 28, !39, i64 32}
!80 = !{!79, !39, i64 0}
!81 = !{!82, !36, i64 0}
!82 = !{!"VertSearchUserData", !36, i64 0, !36, i64 8, !62, i64 16, !39, i64 20}
!83 = !{!82, !36, i64 8}
!84 = !{!82, !62, i64 16}
!85 = !{!82, !39, i64 20}
!86 = distinct !{!86, !56, !57}
