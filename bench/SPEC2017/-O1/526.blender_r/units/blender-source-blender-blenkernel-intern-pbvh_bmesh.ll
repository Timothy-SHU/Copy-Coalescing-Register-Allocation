; ModuleID = 'blender/source/blender/blenkernel/intern/pbvh_bmesh.c'
source_filename = "blender/source/blender/blenkernel/intern/pbvh_bmesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GSetIterator = type { %struct.GHashIterator }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.PBVHNode = type { ptr, %struct.BB, %struct.BB, i32, ptr, i32, ptr, i32, i32, ptr, i16, float, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.BB = type { [3 x float], [3 x float] }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.PBVH = type { i32, i32, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.CCGKey, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, ptr, float, float, i32, i32, ptr }
%struct.CCGKey = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BBC = type { [3 x float], [3 x float], [3 x float] }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BLI_Buffer = type { ptr, i32, i32, i32, i32 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"PBVHNode\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"bm_faces\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.BKE_pbvh_bmesh_node_save_orig = private unnamed_addr constant [30 x i8] c"BKE_pbvh_bmesh_node_save_orig\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"prim_bbc\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"BBC\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"bm_unique_verts\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"bm_other_verts\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"deleted_verts\00", align 1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @pbvh_bmesh_node_raycast(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.GSetIterator, align 8
  %7 = alloca [3 x ptr], align 16
  %8 = icmp eq i8 %4, 0
  br i1 %8, label %42, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 20
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %42, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %10, align 8, !tbaa !34
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %75

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 19
  %18 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 18
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 0, %16 ], [ %38, %19 ]
  %21 = phi i8 [ 0, %16 ], [ %37, %19 ]
  %22 = load ptr, ptr %17, align 8, !tbaa !42
  %23 = getelementptr inbounds [3 x i32], ptr %22, i64 %20
  %24 = load ptr, ptr %18, align 8, !tbaa !43
  %25 = load i32, ptr %23, align 4, !tbaa !44
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x float], ptr %24, i64 %26
  %28 = getelementptr inbounds i32, ptr %23, i64 1
  %29 = load i32, ptr %28, align 4, !tbaa !44
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [3 x float], ptr %24, i64 %30
  %32 = getelementptr inbounds i32, ptr %23, i64 2
  %33 = load i32, ptr %32, align 4, !tbaa !44
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x float], ptr %24, i64 %34
  %36 = tail call zeroext i8 @ray_face_intersection(ptr noundef %1, ptr noundef %2, ptr noundef %27, ptr noundef %31, ptr noundef %35, ptr noundef null, ptr noundef %3) #10
  %37 = or i8 %36, %21
  %38 = add nuw nsw i64 %20, 1
  %39 = load i32, ptr %10, align 8, !tbaa !34
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %19, label %75, !llvm.loop !45

42:                                               ; preds = %9, %5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  %43 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 15
  %44 = load ptr, ptr %43, align 8, !tbaa !48
  call void @BLI_ghashIterator_init(ptr noundef nonnull %6, ptr noundef %44) #10
  %45 = getelementptr inbounds %struct.GHashIterator, ptr %6, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !49
  %47 = icmp eq ptr %46, null
  br i1 %47, label %73, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 1
  %50 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 2
  br label %51

51:                                               ; preds = %48, %69
  %52 = phi ptr [ %46, %48 ], [ %71, %69 ]
  %53 = phi i8 [ 0, %48 ], [ %70, %69 ]
  %54 = getelementptr inbounds %struct._gh_Entry, ptr %52, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !51
  %56 = getelementptr inbounds %struct.BMHeader, ptr %55, i64 0, i32 3
  %57 = load i8, ptr %56, align 1, !tbaa !53
  %58 = and i8 %57, 2
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  call void @BM_face_as_array_vert_tri(ptr noundef %55, ptr noundef nonnull %7) #10
  %61 = load ptr, ptr %7, align 16, !tbaa !55
  %62 = getelementptr inbounds %struct.BMVert, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %49, align 8, !tbaa !55
  %64 = getelementptr inbounds %struct.BMVert, ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %50, align 16, !tbaa !55
  %66 = getelementptr inbounds %struct.BMVert, ptr %65, i64 0, i32 2
  %67 = call zeroext i8 @ray_face_intersection(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %62, ptr noundef nonnull %64, ptr noundef nonnull %66, ptr noundef null, ptr noundef %3) #10
  %68 = or i8 %67, %53
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  br label %69

69:                                               ; preds = %60, %51
  %70 = phi i8 [ %53, %51 ], [ %68, %60 ]
  call void @BLI_ghashIterator_step(ptr noundef nonnull %6) #10
  %71 = load ptr, ptr %45, align 8, !tbaa !49
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %51, !llvm.loop !56

73:                                               ; preds = %69, %42
  %74 = phi i8 [ 0, %42 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  br label %75

75:                                               ; preds = %19, %13, %73
  %76 = phi i8 [ %74, %73 ], [ 0, %13 ], [ %37, %19 ]
  ret i8 %76
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare zeroext i8 @ray_face_intersection(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BM_face_as_array_vert_tri(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_pbvh_bmesh_node_raycast_detail(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.GSetIterator, align 8
  %7 = alloca [3 x ptr], align 16
  %8 = alloca [3 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  %9 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 10
  %10 = load i16, ptr %9, align 8
  %11 = and i16 %10, 128
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %99

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  call void @BLI_ghashIterator_init(ptr noundef nonnull %6, ptr noundef %15) #10
  %16 = getelementptr inbounds %struct.GHashIterator, ptr %6, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = icmp eq ptr %17, null
  br i1 %18, label %48, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 1
  %21 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 2
  br label %22

22:                                               ; preds = %19, %43
  %23 = phi ptr [ %17, %19 ], [ %46, %43 ]
  %24 = phi i8 [ 0, %19 ], [ %45, %43 ]
  %25 = phi ptr [ null, %19 ], [ %44, %43 ]
  %26 = getelementptr inbounds %struct._gh_Entry, ptr %23, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  %28 = getelementptr inbounds %struct.BMHeader, ptr %27, i64 0, i32 3
  %29 = load i8, ptr %28, align 1, !tbaa !53
  %30 = and i8 %29, 2
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  call void @BM_face_as_array_vert_tri(ptr noundef %27, ptr noundef nonnull %7) #10
  %33 = load ptr, ptr %7, align 16, !tbaa !55
  %34 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %20, align 8, !tbaa !55
  %36 = getelementptr inbounds %struct.BMVert, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %21, align 16, !tbaa !55
  %38 = getelementptr inbounds %struct.BMVert, ptr %37, i64 0, i32 2
  %39 = call zeroext i8 @ray_face_intersection(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %34, ptr noundef nonnull %36, ptr noundef nonnull %38, ptr noundef null, ptr noundef %4) #10
  %40 = icmp eq i8 %39, 0
  %41 = select i1 %40, ptr %25, ptr %27
  %42 = select i1 %40, i8 %24, i8 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  br label %43

43:                                               ; preds = %32, %22
  %44 = phi ptr [ %25, %22 ], [ %41, %32 ]
  %45 = phi i8 [ %24, %22 ], [ %42, %32 ]
  call void @BLI_ghashIterator_step(ptr noundef nonnull %6) #10
  %46 = load ptr, ptr %16, align 8, !tbaa !49
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %22, !llvm.loop !57

48:                                               ; preds = %43, %13
  %49 = phi ptr [ null, %13 ], [ %44, %43 ]
  %50 = phi i8 [ 0, %13 ], [ %45, %43 ]
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %99, label %52

52:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #10
  call void @BM_face_as_array_vert_tri(ptr noundef %49, ptr noundef nonnull %8) #10
  %53 = load ptr, ptr %8, align 16, !tbaa !55
  %54 = getelementptr inbounds %struct.BMVert, ptr %53, i64 0, i32 2
  %55 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !55
  %57 = getelementptr inbounds %struct.BMVert, ptr %56, i64 0, i32 2
  %58 = load float, ptr %57, align 4, !tbaa !58
  %59 = load float, ptr %54, align 4, !tbaa !58
  %60 = fsub float %58, %59
  %61 = getelementptr inbounds %struct.BMVert, ptr %56, i64 0, i32 2, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !58
  %63 = getelementptr inbounds %struct.BMVert, ptr %53, i64 0, i32 2, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !58
  %65 = fsub float %62, %64
  %66 = getelementptr inbounds %struct.BMVert, ptr %56, i64 0, i32 2, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !58
  %68 = getelementptr inbounds %struct.BMVert, ptr %53, i64 0, i32 2, i64 2
  %69 = load float, ptr %68, align 4, !tbaa !58
  %70 = fsub float %67, %69
  %71 = fmul float %65, %65
  %72 = call float @llvm.fmuladd.f32(float %60, float %60, float %71)
  %73 = call float @llvm.fmuladd.f32(float %70, float %70, float %72)
  %74 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 2
  %75 = load ptr, ptr %74, align 16, !tbaa !55
  %76 = getelementptr inbounds %struct.BMVert, ptr %75, i64 0, i32 2
  %77 = load float, ptr %76, align 4, !tbaa !58
  %78 = fsub float %77, %58
  %79 = getelementptr inbounds %struct.BMVert, ptr %75, i64 0, i32 2, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !58
  %81 = fsub float %80, %62
  %82 = getelementptr inbounds %struct.BMVert, ptr %75, i64 0, i32 2, i64 2
  %83 = load float, ptr %82, align 4, !tbaa !58
  %84 = fsub float %83, %67
  %85 = fmul float %81, %81
  %86 = call float @llvm.fmuladd.f32(float %78, float %78, float %85)
  %87 = call float @llvm.fmuladd.f32(float %84, float %84, float %86)
  %88 = fsub float %59, %77
  %89 = fsub float %64, %80
  %90 = fsub float %69, %83
  %91 = fmul float %89, %89
  %92 = call float @llvm.fmuladd.f32(float %88, float %88, float %91)
  %93 = call float @llvm.fmuladd.f32(float %90, float %90, float %92)
  %94 = fcmp ogt float %73, %87
  %95 = select i1 %94, float %73, float %87
  %96 = fcmp ogt float %95, %93
  %97 = select i1 %96, float %95, float %93
  %98 = call float @sqrtf(float noundef %97) #10
  store float %98, ptr %3, align 4, !tbaa !58
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #10
  br label %99

99:                                               ; preds = %48, %52, %5
  %100 = phi i8 [ 0, %5 ], [ %50, %52 ], [ %50, %48 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  ret i8 %100
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @pbvh_bmesh_normals_update(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.GSetIterator, align 8
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %56

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.GHashIterator, ptr %3, i64 0, i32 1
  %7 = getelementptr inbounds %struct.GHashIterator, ptr %3, i64 0, i32 1
  %8 = zext nneg i32 %1 to i64
  br label %9

9:                                                ; preds = %5, %53
  %10 = phi i64 [ 0, %5 ], [ %54, %53 ]
  %11 = getelementptr inbounds ptr, ptr %0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.PBVHNode, ptr %12, i64 0, i32 10
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %53, label %17

17:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  %18 = getelementptr inbounds %struct.PBVHNode, ptr %12, i64 0, i32 15
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  call void @BLI_ghashIterator_init(ptr noundef nonnull %3, ptr noundef %19) #10
  %20 = load ptr, ptr %6, align 8, !tbaa !49
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %17, %22
  %23 = phi ptr [ %26, %22 ], [ %20, %17 ]
  %24 = getelementptr inbounds %struct._gh_Entry, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !51
  call void @BM_face_normal_update(ptr noundef %25) #10
  call void @BLI_ghashIterator_step(ptr noundef nonnull %3) #10
  %26 = load ptr, ptr %6, align 8, !tbaa !49
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %22, !llvm.loop !59

28:                                               ; preds = %22, %17
  %29 = getelementptr inbounds %struct.PBVHNode, ptr %12, i64 0, i32 16
  %30 = load ptr, ptr %29, align 8, !tbaa !60
  call void @BLI_ghashIterator_init(ptr noundef nonnull %3, ptr noundef %30) #10
  %31 = load ptr, ptr %7, align 8, !tbaa !49
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %28, %33
  %34 = phi ptr [ %37, %33 ], [ %31, %28 ]
  %35 = getelementptr inbounds %struct._gh_Entry, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !51
  call void @BM_vert_normal_update(ptr noundef %36) #10
  call void @BLI_ghashIterator_step(ptr noundef nonnull %3) #10
  %37 = load ptr, ptr %7, align 8, !tbaa !49
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %33, !llvm.loop !61

39:                                               ; preds = %33, %28
  %40 = getelementptr inbounds %struct.PBVHNode, ptr %12, i64 0, i32 17
  %41 = load ptr, ptr %40, align 8, !tbaa !62
  call void @BLI_ghashIterator_init(ptr noundef nonnull %3, ptr noundef %41) #10
  %42 = load ptr, ptr %7, align 8, !tbaa !49
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %39, %44
  %45 = phi ptr [ %48, %44 ], [ %42, %39 ]
  %46 = getelementptr inbounds %struct._gh_Entry, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !51
  call void @BM_vert_normal_update(ptr noundef %47) #10
  call void @BLI_ghashIterator_step(ptr noundef nonnull %3) #10
  %48 = load ptr, ptr %7, align 8, !tbaa !49
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %44, !llvm.loop !63

50:                                               ; preds = %44, %39
  %51 = load i16, ptr %13, align 8
  %52 = and i16 %51, -3
  store i16 %52, ptr %13, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  br label %53

53:                                               ; preds = %50, %9
  %54 = add nuw nsw i64 %10, 1
  %55 = icmp eq i64 %54, %8
  br i1 %55, label %56, label %9, !llvm.loop !64

56:                                               ; preds = %53, %2
  ret void
}

declare void @BM_face_normal_update(ptr noundef) local_unnamed_addr #2

declare void @BM_vert_normal_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pbvh_build_bmesh(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #10
  %9 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 25
  store i32 %4, ptr %9, align 8, !tbaa !65
  %10 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 26
  store i32 %5, ptr %10, align 4, !tbaa !68
  %11 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 22
  store ptr %1, ptr %11, align 8, !tbaa !69
  %12 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 23
  store float 7.500000e-01, ptr %12, align 8, !tbaa !70
  %13 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 24
  store float 0x3FD3333340000000, ptr %13, align 4, !tbaa !71
  store i32 2, ptr %0, align 8, !tbaa !72
  %14 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 27
  store ptr %3, ptr %14, align 8, !tbaa !73
  %15 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 8
  store i32 100, ptr %15, align 8, !tbaa !74
  %16 = icmp eq i8 %2, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !75
  %20 = or i32 %19, 1
  store i32 %20, ptr %18, align 4, !tbaa !75
  br label %21

21:                                               ; preds = %17, %6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #10
  %22 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 1, ptr %22, align 4, !tbaa !76
  %23 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %23, align 8, !tbaa !78
  %24 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %24, align 8, !tbaa !79
  %25 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !80
  store ptr %26, ptr %7, align 8, !tbaa !85
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #10
  %27 = load ptr, ptr %24, align 8, !tbaa !79
  %28 = call ptr %27(ptr noundef nonnull %7) #10
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %21
  %31 = sext i32 %4 to i64
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi ptr [ %28, %30 ], [ %37, %32 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !86
  %35 = getelementptr inbounds i8, ptr %34, i64 %31
  store i32 -1, ptr %35, align 4, !tbaa !44
  %36 = load ptr, ptr %24, align 8, !tbaa !79
  %37 = call ptr %36(ptr noundef nonnull %7) #10
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %32, !llvm.loop !88

39:                                               ; preds = %32, %21
  store i8 3, ptr %22, align 4, !tbaa !76
  store ptr @bmiter__elem_of_mesh_begin, ptr %23, align 8, !tbaa !78
  store ptr @bmiter__elem_of_mesh_step, ptr %24, align 8, !tbaa !79
  %40 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %41 = load ptr, ptr %40, align 8, !tbaa !89
  store ptr %41, ptr %7, align 8, !tbaa !85
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #10
  %42 = load ptr, ptr %24, align 8, !tbaa !79
  %43 = call ptr %42(ptr noundef nonnull %7) #10
  %44 = icmp eq ptr %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %39
  %46 = sext i32 %5 to i64
  br label %47

47:                                               ; preds = %45, %47
  %48 = phi ptr [ %43, %45 ], [ %52, %47 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !90
  %50 = getelementptr inbounds i8, ptr %49, i64 %46
  store i32 -1, ptr %50, align 4, !tbaa !44
  %51 = load ptr, ptr %24, align 8, !tbaa !79
  %52 = call ptr %51(ptr noundef nonnull %7) #10
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %47, !llvm.loop !92

54:                                               ; preds = %47, %39
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #10
  %55 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %56 = call ptr %55(i64 noundef 184, ptr noundef nonnull @.str) #10
  %57 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  store ptr %56, ptr %57, align 8, !tbaa !93
  %58 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  store i32 1, ptr %58, align 4, !tbaa !94
  %59 = getelementptr inbounds %struct.PBVHNode, ptr %56, i64 0, i32 10
  store i16 1, ptr %59, align 8
  %60 = load ptr, ptr %11, align 8, !tbaa !69
  %61 = getelementptr inbounds %struct.BMesh, ptr %60, i64 0, i32 3
  %62 = load i32, ptr %61, align 4, !tbaa !95
  %63 = call ptr @BLI_gset_ptr_new_ex(ptr noundef nonnull @.str.1, i32 noundef %62) #10
  %64 = getelementptr inbounds %struct.PBVHNode, ptr %56, i64 0, i32 15
  store ptr %63, ptr %64, align 8, !tbaa !48
  %65 = load ptr, ptr %11, align 8, !tbaa !69
  %66 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 3, ptr %66, align 4, !tbaa !76
  %67 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %67, align 8, !tbaa !78
  %68 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %68, align 8, !tbaa !79
  %69 = getelementptr inbounds %struct.BMesh, ptr %65, i64 0, i32 12
  %70 = load ptr, ptr %69, align 8, !tbaa !89
  store ptr %70, ptr %8, align 8, !tbaa !85
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #10
  %71 = load ptr, ptr %68, align 8, !tbaa !79
  %72 = call ptr %71(ptr noundef nonnull %8) #10
  %73 = icmp eq ptr %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %54, %74
  %75 = phi ptr [ %78, %74 ], [ %72, %54 ]
  %76 = load ptr, ptr %64, align 8, !tbaa !48
  call void @BLI_gset_insert(ptr noundef %76, ptr noundef nonnull %75) #10
  %77 = load ptr, ptr %68, align 8, !tbaa !79
  %78 = call ptr %77(ptr noundef nonnull %8) #10
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %74, !llvm.loop !96

80:                                               ; preds = %74, %54
  %81 = call fastcc zeroext i8 @pbvh_bmesh_node_limit_ensure(ptr noundef nonnull %0, i32 noundef 0), !range !97
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  call fastcc void @pbvh_bmesh_node_finalize(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %4, i32 noundef %5)
  br label %84

84:                                               ; preds = %83, %80
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BKE_pbvh_bmesh_detail_size_set(ptr nocapture noundef writeonly %0, float noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 23
  store float %1, ptr %3, align 8, !tbaa !70
  %4 = fmul float %1, 0x3FD99999A0000000
  %5 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 24
  store float %4, ptr %5, align 4, !tbaa !71
  ret void
}

declare ptr @BLI_gset_ptr_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_gset_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @pbvh_bmesh_node_limit_ensure(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.GSetIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.PBVHNode, ptr %5, i64 %6, i32 15
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = tail call i32 @BLI_gset_size(ptr noundef %8) #10
  %10 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !74
  %12 = icmp sgt i32 %9, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %2
  %14 = tail call ptr @BLI_ghash_ptr_new_ex(ptr noundef nonnull @.str.2, i32 noundef %9) #10
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !55
  %16 = sext i32 %9 to i64
  %17 = mul nsw i64 %16, 36
  %18 = tail call ptr %15(i64 noundef %17, ptr noundef nonnull @.str.3) #10
  call void @BLI_ghashIterator_init(ptr noundef nonnull %3, ptr noundef %8) #10
  %19 = getelementptr inbounds %struct.GHashIterator, ptr %3, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = icmp eq ptr %20, null
  br i1 %21, label %43, label %22

22:                                               ; preds = %13, %39
  %23 = phi ptr [ %41, %39 ], [ %20, %13 ]
  %24 = phi i32 [ %40, %39 ], [ 0, %13 ]
  %25 = getelementptr inbounds %struct._gh_Entry, ptr %23, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !51
  %27 = zext i32 %24 to i64
  %28 = getelementptr inbounds %struct.BBC, ptr %18, i64 %27
  call void @BB_reset(ptr noundef %28) #10
  %29 = getelementptr inbounds %struct.BMFace, ptr %26, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !98
  br label %31

31:                                               ; preds = %31, %22
  %32 = phi ptr [ %30, %22 ], [ %37, %31 ]
  %33 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !99
  %35 = getelementptr inbounds %struct.BMVert, ptr %34, i64 0, i32 2
  call void @BB_expand(ptr noundef %28, ptr noundef nonnull %35) #10
  %36 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !101
  %38 = icmp eq ptr %37, %30
  br i1 %38, label %39, label %31, !llvm.loop !102

39:                                               ; preds = %31
  call void @BBC_update_centroid(ptr noundef %28) #10
  call void @BLI_ghash_insert(ptr noundef %14, ptr noundef %26, ptr noundef %28) #10
  call void @BLI_ghashIterator_step(ptr noundef nonnull %3) #10
  %40 = add i32 %24, 1
  %41 = load ptr, ptr %19, align 8, !tbaa !49
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %22, !llvm.loop !103

43:                                               ; preds = %39, %13
  call fastcc void @pbvh_bmesh_node_split(ptr noundef %0, ptr noundef %14, i32 noundef %1)
  call void @BLI_ghash_free(ptr noundef %14, ptr noundef null, ptr noundef null) #10
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  call void %44(ptr noundef %18) #10
  br label %45

45:                                               ; preds = %2, %43
  %46 = phi i8 [ 1, %43 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret i8 %46
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pbvh_bmesh_node_finalize(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.GSetIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %6 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = sext i32 %1 to i64
  %9 = tail call ptr @BLI_gset_ptr_new(ptr noundef nonnull @.str.4) #10
  %10 = getelementptr inbounds %struct.PBVHNode, ptr %7, i64 %8, i32 16
  store ptr %9, ptr %10, align 8, !tbaa !60
  %11 = tail call ptr @BLI_gset_ptr_new(ptr noundef nonnull @.str.5) #10
  %12 = getelementptr inbounds %struct.PBVHNode, ptr %7, i64 %8, i32 17
  store ptr %11, ptr %12, align 8, !tbaa !62
  %13 = getelementptr inbounds %struct.PBVHNode, ptr %7, i64 %8, i32 1
  tail call void @BB_reset(ptr noundef nonnull %13) #10
  %14 = getelementptr inbounds %struct.PBVHNode, ptr %7, i64 %8, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  call void @BLI_ghashIterator_init(ptr noundef nonnull %5, ptr noundef %15) #10
  %16 = getelementptr inbounds %struct.GHashIterator, ptr %5, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = icmp eq ptr %17, null
  br i1 %18, label %66, label %19

19:                                               ; preds = %4
  %20 = sext i32 %3 to i64
  %21 = sext i32 %2 to i64
  br label %22

22:                                               ; preds = %19, %55
  %23 = phi ptr [ %17, %19 ], [ %61, %55 ]
  %24 = phi i8 [ 0, %19 ], [ %60, %55 ]
  %25 = getelementptr inbounds %struct._gh_Entry, ptr %23, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !51
  %27 = load ptr, ptr %26, align 8, !tbaa !90
  %28 = getelementptr inbounds i8, ptr %27, i64 %20
  store i32 %1, ptr %28, align 4, !tbaa !44
  %29 = getelementptr inbounds %struct.BMFace, ptr %26, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !98
  br label %31

31:                                               ; preds = %50, %22
  %32 = phi ptr [ %30, %22 ], [ %53, %50 ]
  %33 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !99
  %35 = load ptr, ptr %10, align 8, !tbaa !60
  %36 = call zeroext i8 @BLI_gset_haskey(ptr noundef %35, ptr noundef %34) #10
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %31
  %39 = load ptr, ptr %34, align 8, !tbaa !86
  %40 = getelementptr inbounds i8, ptr %39, i64 %21
  %41 = load i32, ptr %40, align 4, !tbaa !44
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %12, align 8, !tbaa !62
  %45 = call zeroext i8 @BLI_gset_add(ptr noundef %44, ptr noundef nonnull %34) #10
  br label %50

46:                                               ; preds = %38
  %47 = load ptr, ptr %10, align 8, !tbaa !60
  call void @BLI_gset_insert(ptr noundef %47, ptr noundef nonnull %34) #10
  %48 = load ptr, ptr %34, align 8, !tbaa !86
  %49 = getelementptr inbounds i8, ptr %48, i64 %21
  store i32 %1, ptr %49, align 4, !tbaa !44
  br label %50

50:                                               ; preds = %43, %46, %31
  %51 = getelementptr inbounds %struct.BMVert, ptr %34, i64 0, i32 2
  call void @BB_expand(ptr noundef nonnull %13, ptr noundef nonnull %51) #10
  %52 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !101
  %54 = icmp eq ptr %53, %30
  br i1 %54, label %55, label %31, !llvm.loop !104

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.BMHeader, ptr %26, i64 0, i32 3
  %57 = load i8, ptr %56, align 1, !tbaa !53
  %58 = and i8 %57, 2
  %59 = icmp eq i8 %58, 0
  %60 = select i1 %59, i8 1, i8 %24
  call void @BLI_ghashIterator_step(ptr noundef nonnull %5) #10
  %61 = load ptr, ptr %16, align 8, !tbaa !49
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %22, !llvm.loop !105

63:                                               ; preds = %55
  %64 = icmp eq i8 %60, 0
  %65 = zext i1 %64 to i32
  br label %66

66:                                               ; preds = %63, %4
  %67 = phi i32 [ 1, %4 ], [ %65, %63 ]
  %68 = getelementptr inbounds %struct.PBVHNode, ptr %7, i64 %8
  %69 = getelementptr inbounds %struct.PBVHNode, ptr %7, i64 %8, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %69, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !106
  call void @BKE_pbvh_node_mark_rebuild_draw(ptr noundef %68) #10
  call void @BKE_pbvh_node_fully_hidden_set(ptr noundef %68, i32 noundef %67) #10
  %70 = getelementptr inbounds %struct.PBVHNode, ptr %7, i64 %8, i32 10
  %71 = load i16, ptr %70, align 8
  %72 = or i16 %71, 2
  store i16 %72, ptr %70, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BKE_pbvh_bmesh_update_topology(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #0 {
  %5 = alloca [3 x ptr], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x ptr], align 16
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x ptr], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x ptr], align 16
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x ptr], align 16
  %15 = alloca [3 x ptr], align 16
  %16 = alloca %struct.BMIter, align 8
  %17 = alloca %struct.GSetIterator, align 8
  %18 = alloca %struct.BMIter, align 8
  %19 = alloca [3 x ptr], align 16
  %20 = alloca ptr, align 8
  %21 = alloca [3 x ptr], align 16
  %22 = alloca [3 x ptr], align 16
  %23 = alloca [3 x ptr], align 16
  %24 = alloca %struct.GSetIterator, align 8
  %25 = alloca [2 x ptr], align 16
  %26 = alloca %struct.BLI_Buffer, align 8
  %27 = alloca [32 x ptr], align 16
  %28 = alloca %struct.BLI_Buffer, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %25) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %26) #10
  store ptr %25, ptr %26, align 8, !tbaa !107
  %29 = getelementptr inbounds %struct.BLI_Buffer, ptr %26, i64 0, i32 1
  store i32 8, ptr %29, align 8, !tbaa !109
  %30 = getelementptr inbounds %struct.BLI_Buffer, ptr %26, i64 0, i32 2
  store i32 0, ptr %30, align 4, !tbaa !110
  %31 = getelementptr inbounds %struct.BLI_Buffer, ptr %26, i64 0, i32 3
  store i32 2, ptr %31, align 8, !tbaa !111
  %32 = getelementptr inbounds %struct.BLI_Buffer, ptr %26, i64 0, i32 4
  store i32 1, ptr %32, align 4, !tbaa !112
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %27) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %28) #10
  store ptr %27, ptr %28, align 8, !tbaa !107
  %33 = getelementptr inbounds %struct.BLI_Buffer, ptr %28, i64 0, i32 1
  store i32 8, ptr %33, align 8, !tbaa !109
  %34 = getelementptr inbounds %struct.BLI_Buffer, ptr %28, i64 0, i32 2
  store i32 0, ptr %34, align 4, !tbaa !110
  %35 = getelementptr inbounds %struct.BLI_Buffer, ptr %28, i64 0, i32 3
  store i32 32, ptr %35, align 8, !tbaa !111
  %36 = getelementptr inbounds %struct.BLI_Buffer, ptr %28, i64 0, i32 4
  store i32 1, ptr %36, align 4, !tbaa !112
  %37 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 22
  %38 = load ptr, ptr %37, align 8, !tbaa !69
  %39 = getelementptr inbounds %struct.BMesh, ptr %38, i64 0, i32 24
  %40 = call i32 @CustomData_get_offset(ptr noundef nonnull %39, i32 noundef 34) #10
  %41 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 25
  %42 = load i32, ptr %41, align 8, !tbaa !65
  %43 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 26
  %44 = load i32, ptr %43, align 4, !tbaa !68
  %45 = and i32 %1, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %425, label %47

47:                                               ; preds = %4
  %48 = call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 128, i32 noundef 0) #10
  %49 = call ptr @BLI_heap_new() #10
  %50 = fmul float %3, %3
  %51 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 24
  %52 = load float, ptr %51, align 4, !tbaa !71
  %53 = fmul float %52, %52
  %54 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %55 = load i32, ptr %54, align 4, !tbaa !94
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %160

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %59 = getelementptr inbounds %struct.GHashIterator, ptr %24, i64 0, i32 1
  %60 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 1
  %61 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 2
  %62 = getelementptr inbounds float, ptr %12, i64 1
  %63 = getelementptr inbounds float, ptr %2, i64 1
  %64 = getelementptr inbounds float, ptr %12, i64 2
  %65 = getelementptr inbounds float, ptr %2, i64 2
  %66 = icmp eq i32 %40, -1
  %67 = sext i32 %40 to i64
  br label %68

68:                                               ; preds = %57, %155
  %69 = phi i64 [ 0, %57 ], [ %156, %155 ]
  %70 = load ptr, ptr %58, align 8, !tbaa !93
  %71 = getelementptr inbounds %struct.PBVHNode, ptr %70, i64 %69, i32 10
  %72 = load i16, ptr %71, align 8
  %73 = and i16 %72, 385
  %74 = icmp eq i16 %73, 257
  br i1 %74, label %75, label %155

75:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %24) #10
  %76 = getelementptr inbounds %struct.PBVHNode, ptr %70, i64 %69, i32 15
  %77 = load ptr, ptr %76, align 8, !tbaa !48
  call void @BLI_ghashIterator_init(ptr noundef nonnull %24, ptr noundef %77) #10
  %78 = load ptr, ptr %59, align 8, !tbaa !49
  %79 = icmp eq ptr %78, null
  br i1 %79, label %154, label %80

80:                                               ; preds = %75, %151
  %81 = phi ptr [ %152, %151 ], [ %78, %75 ]
  %82 = getelementptr inbounds %struct._gh_Entry, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #10
  call void @BM_face_as_array_vert_tri(ptr noundef %83, ptr noundef nonnull %11) #10
  %84 = load ptr, ptr %11, align 16, !tbaa !55
  %85 = getelementptr inbounds %struct.BMVert, ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %60, align 8, !tbaa !55
  %87 = getelementptr inbounds %struct.BMVert, ptr %86, i64 0, i32 2
  %88 = load ptr, ptr %61, align 16, !tbaa !55
  %89 = getelementptr inbounds %struct.BMVert, ptr %88, i64 0, i32 2
  call void @closest_on_tri_to_point_v3(ptr noundef nonnull %12, ptr noundef %2, ptr noundef nonnull %85, ptr noundef nonnull %87, ptr noundef nonnull %89) #10
  %90 = load float, ptr %12, align 4, !tbaa !58
  %91 = load float, ptr %2, align 4, !tbaa !58
  %92 = fsub float %90, %91
  %93 = load float, ptr %62, align 4, !tbaa !58
  %94 = load float, ptr %63, align 4, !tbaa !58
  %95 = fsub float %93, %94
  %96 = load float, ptr %64, align 4, !tbaa !58
  %97 = load float, ptr %65, align 4, !tbaa !58
  %98 = fsub float %96, %97
  %99 = fmul float %95, %95
  %100 = call float @llvm.fmuladd.f32(float %92, float %92, float %99)
  %101 = call float @llvm.fmuladd.f32(float %98, float %98, float %100)
  %102 = fcmp ugt float %101, %50
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #10
  br i1 %102, label %151, label %103

103:                                              ; preds = %80
  %104 = getelementptr inbounds %struct.BMFace, ptr %83, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !98
  br label %106

106:                                              ; preds = %147, %103
  %107 = phi ptr [ %105, %103 ], [ %149, %147 ]
  %108 = getelementptr inbounds %struct.BMLoop, ptr %107, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !113
  %110 = call float @BM_edge_calc_length_squared(ptr noundef %109) #10
  %111 = fcmp olt float %110, %53
  br i1 %111, label %112, label %147

112:                                              ; preds = %106
  br i1 %66, label %127, label %113

113:                                              ; preds = %112
  %114 = getelementptr inbounds %struct.BMEdge, ptr %109, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !114
  %116 = load ptr, ptr %115, align 8, !tbaa !86
  %117 = getelementptr inbounds i8, ptr %116, i64 %67
  %118 = load float, ptr %117, align 4, !tbaa !58
  %119 = fcmp uge float %118, 1.000000e+00
  br i1 %119, label %120, label %127

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.BMEdge, ptr %109, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !117
  %123 = load ptr, ptr %122, align 8, !tbaa !86
  %124 = getelementptr inbounds i8, ptr %123, i64 %67
  %125 = load float, ptr %124, align 4, !tbaa !58
  %126 = fcmp uge float %125, 1.000000e+00
  br i1 %126, label %147, label %127

127:                                              ; preds = %120, %113, %112
  %128 = getelementptr inbounds %struct.BMEdge, ptr %109, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !114
  %130 = getelementptr inbounds %struct.BMHeader, ptr %129, i64 0, i32 3
  %131 = load i8, ptr %130, align 1, !tbaa !53
  %132 = and i8 %131, 2
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %147

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.BMEdge, ptr %109, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !117
  %137 = getelementptr inbounds %struct.BMHeader, ptr %136, i64 0, i32 3
  %138 = load i8, ptr %137, align 1, !tbaa !53
  %139 = and i8 %138, 2
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %134
  %142 = call ptr @BLI_mempool_alloc(ptr noundef %48) #10
  %143 = load ptr, ptr %128, align 8, !tbaa !114
  store ptr %143, ptr %142, align 8, !tbaa !55
  %144 = load ptr, ptr %135, align 8, !tbaa !117
  %145 = getelementptr inbounds ptr, ptr %142, i64 1
  store ptr %144, ptr %145, align 8, !tbaa !55
  %146 = call ptr @BLI_heap_insert(ptr noundef %49, float noundef %110, ptr noundef nonnull %142) #10
  br label %147

147:                                              ; preds = %141, %134, %127, %120, %106
  %148 = getelementptr inbounds %struct.BMLoop, ptr %107, i64 0, i32 6
  %149 = load ptr, ptr %148, align 8, !tbaa !101
  %150 = icmp eq ptr %149, %105
  br i1 %150, label %151, label %106, !llvm.loop !118

151:                                              ; preds = %147, %80
  call void @BLI_ghashIterator_step(ptr noundef nonnull %24) #10
  %152 = load ptr, ptr %59, align 8, !tbaa !49
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %80, !llvm.loop !119

154:                                              ; preds = %151, %75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %24) #10
  br label %155

155:                                              ; preds = %154, %68
  %156 = add nuw nsw i64 %69, 1
  %157 = load i32, ptr %54, align 4, !tbaa !94
  %158 = sext i32 %157 to i64
  %159 = icmp slt i64 %156, %158
  br i1 %159, label %68, label %160, !llvm.loop !120

160:                                              ; preds = %155, %47
  %161 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %49) #10
  %162 = icmp eq i8 %161, 0
  %163 = zext i1 %162 to i8
  %164 = load float, ptr %51, align 4, !tbaa !71
  %165 = fmul float %164, %164
  %166 = call ptr @BLI_gset_ptr_new(ptr noundef nonnull @.str.6) #10
  %167 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %49) #10
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %424

169:                                              ; preds = %160
  %170 = sext i32 %42 to i64
  %171 = sext i32 %40 to i64
  %172 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 4
  %173 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 1
  %174 = getelementptr inbounds %struct.BMIter, ptr %18, i64 0, i32 2
  %175 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %176 = getelementptr inbounds ptr, ptr %19, i64 1
  %177 = getelementptr inbounds ptr, ptr %19, i64 2
  %178 = getelementptr inbounds ptr, ptr %21, i64 1
  %179 = getelementptr inbounds ptr, ptr %21, i64 2
  %180 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 27
  %181 = getelementptr inbounds [3 x ptr], ptr %22, i64 0, i64 1
  %182 = getelementptr inbounds [3 x ptr], ptr %23, i64 0, i64 1
  %183 = getelementptr inbounds [3 x ptr], ptr %22, i64 0, i64 2
  %184 = getelementptr inbounds [3 x ptr], ptr %23, i64 0, i64 2
  %185 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 27
  %186 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 27
  %187 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 27
  br label %188

188:                                              ; preds = %169, %421
  %189 = call ptr @BLI_heap_popmin(ptr noundef %49) #10
  %190 = load ptr, ptr %189, align 8, !tbaa !55
  %191 = getelementptr inbounds ptr, ptr %189, i64 1
  %192 = load ptr, ptr %191, align 8, !tbaa !55
  call void @BLI_mempool_free(ptr noundef %48, ptr noundef nonnull %189) #10
  %193 = call zeroext i8 @BLI_gset_haskey(ptr noundef %166, ptr noundef %190) #10
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %421, !llvm.loop !121

195:                                              ; preds = %188
  %196 = call zeroext i8 @BLI_gset_haskey(ptr noundef %166, ptr noundef %192) #10
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %421, !llvm.loop !121

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.BMVert, ptr %190, i64 0, i32 2
  %200 = getelementptr inbounds %struct.BMVert, ptr %192, i64 0, i32 2
  %201 = load float, ptr %200, align 4, !tbaa !58
  %202 = load float, ptr %199, align 4, !tbaa !58
  %203 = fsub float %201, %202
  %204 = getelementptr inbounds %struct.BMVert, ptr %192, i64 0, i32 2, i64 1
  %205 = load float, ptr %204, align 4, !tbaa !58
  %206 = getelementptr inbounds %struct.BMVert, ptr %190, i64 0, i32 2, i64 1
  %207 = load float, ptr %206, align 4, !tbaa !58
  %208 = fsub float %205, %207
  %209 = getelementptr inbounds %struct.BMVert, ptr %192, i64 0, i32 2, i64 2
  %210 = load float, ptr %209, align 4, !tbaa !58
  %211 = getelementptr inbounds %struct.BMVert, ptr %190, i64 0, i32 2, i64 2
  %212 = load float, ptr %211, align 4, !tbaa !58
  %213 = fsub float %210, %212
  %214 = fmul float %208, %208
  %215 = call float @llvm.fmuladd.f32(float %203, float %203, float %214)
  %216 = call float @llvm.fmuladd.f32(float %213, float %213, float %215)
  %217 = fcmp ult float %216, %165
  br i1 %217, label %218, label %421, !llvm.loop !121

218:                                              ; preds = %198
  %219 = call ptr @BM_edge_exists(ptr noundef %190, ptr noundef %192) #10
  %220 = icmp eq ptr %219, null
  br i1 %220, label %421, label %221, !llvm.loop !121

221:                                              ; preds = %218
  %222 = getelementptr inbounds %struct.BMEdge, ptr %219, i64 0, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !114
  %224 = load ptr, ptr %223, align 8, !tbaa !86
  %225 = getelementptr inbounds i8, ptr %224, i64 %170
  %226 = load i32, ptr %225, align 4, !tbaa !44
  %227 = icmp eq i32 %226, -1
  br i1 %227, label %421, label %228, !llvm.loop !121

228:                                              ; preds = %221
  %229 = getelementptr inbounds %struct.BMEdge, ptr %219, i64 0, i32 3
  %230 = load ptr, ptr %229, align 8, !tbaa !117
  %231 = load ptr, ptr %230, align 8, !tbaa !86
  %232 = getelementptr inbounds i8, ptr %231, i64 %170
  %233 = load i32, ptr %232, align 4, !tbaa !44
  %234 = icmp eq i32 %233, -1
  br i1 %234, label %421, label %235, !llvm.loop !121

235:                                              ; preds = %228
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #10
  %236 = load ptr, ptr %190, align 8, !tbaa !86
  %237 = getelementptr inbounds i8, ptr %236, i64 %171
  %238 = load float, ptr %237, align 4, !tbaa !58
  %239 = fcmp olt float %238, 1.000000e+00
  %240 = select i1 %239, ptr %192, ptr %190
  %241 = select i1 %239, ptr %190, ptr %192
  call fastcc void @pbvh_bmesh_vert_remove(ptr noundef %0, ptr noundef %241)
  %242 = getelementptr inbounds %struct.BMEdge, ptr %219, i64 0, i32 4
  %243 = load ptr, ptr %242, align 8, !tbaa !122
  %244 = icmp eq ptr %243, null
  br i1 %244, label %252, label %245

245:                                              ; preds = %235, %245
  %246 = phi ptr [ %250, %245 ], [ %243, %235 ]
  %247 = getelementptr inbounds %struct.BMLoop, ptr %246, i64 0, i32 3
  %248 = load ptr, ptr %247, align 8, !tbaa !123
  call fastcc void @pbvh_bmesh_face_remove(ptr noundef %0, ptr noundef %248)
  %249 = load ptr, ptr %37, align 8, !tbaa !69
  call void @BM_face_kill(ptr noundef %249, ptr noundef %248) #10
  %250 = load ptr, ptr %242, align 8, !tbaa !122
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %245, !llvm.loop !124

252:                                              ; preds = %245, %235
  %253 = load ptr, ptr %37, align 8, !tbaa !69
  call void @BM_edge_kill(ptr noundef %253, ptr noundef nonnull %219) #10
  store i32 0, ptr %34, align 4, !tbaa !110
  store i8 5, ptr %172, align 4, !tbaa !76
  store ptr @bmiter__face_of_vert_begin, ptr %173, align 8, !tbaa !78
  store ptr @bmiter__face_of_vert_step, ptr %174, align 8, !tbaa !79
  store ptr %241, ptr %18, align 8, !tbaa !85
  call void @bmiter__face_of_vert_begin(ptr noundef nonnull %18) #10
  %254 = load ptr, ptr %174, align 8, !tbaa !79
  %255 = call ptr %254(ptr noundef nonnull %18) #10
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %260

257:                                              ; preds = %334, %252
  %258 = load i32, ptr %34, align 4, !tbaa !110
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %345, label %411

260:                                              ; preds = %252, %334
  %261 = phi ptr [ %343, %334 ], [ %255, %252 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %19) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #10
  call void @BM_face_as_array_vert_tri(ptr noundef nonnull %261, ptr noundef nonnull %19) #10
  br label %262

262:                                              ; preds = %260, %268
  %263 = phi i64 [ 0, %260 ], [ %269, %268 ]
  %264 = getelementptr inbounds [3 x ptr], ptr %19, i64 0, i64 %263
  %265 = load ptr, ptr %264, align 8, !tbaa !55
  %266 = icmp eq ptr %265, %241
  br i1 %266, label %267, label %268

267:                                              ; preds = %262
  store ptr %240, ptr %264, align 8, !tbaa !55
  br label %268

268:                                              ; preds = %267, %262
  %269 = add nuw nsw i64 %263, 1
  %270 = icmp eq i64 %269, 3
  br i1 %270, label %271, label %262, !llvm.loop !125

271:                                              ; preds = %268
  %272 = call zeroext i8 @BM_face_exists(ptr noundef nonnull %19, i32 noundef 3, ptr noundef nonnull %20) #10
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %283, label %274

274:                                              ; preds = %271
  %275 = load i32, ptr %34, align 4, !tbaa !110
  %276 = add nsw i32 %275, 1
  call void @BLI_buffer_resize(ptr noundef nonnull %28, i32 noundef %276) #10
  %277 = load ptr, ptr %20, align 8, !tbaa !55
  %278 = load ptr, ptr %28, align 8, !tbaa !107
  %279 = load i32, ptr %34, align 4, !tbaa !110
  %280 = sext i32 %279 to i64
  %281 = getelementptr ptr, ptr %278, i64 %280
  %282 = getelementptr ptr, ptr %281, i64 -1
  store ptr %277, ptr %282, align 8, !tbaa !55
  br label %334

283:                                              ; preds = %271
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %21) #10
  %284 = load ptr, ptr %175, align 8, !tbaa !93
  %285 = getelementptr inbounds %struct.BMHeader, ptr %261, i64 0, i32 2
  %286 = load i8, ptr %285, align 4, !tbaa !126
  %287 = icmp eq i8 %286, 1
  %288 = select i1 %287, ptr %41, ptr %43
  %289 = load i32, ptr %288, align 4, !tbaa !44
  %290 = load ptr, ptr %261, align 8, !tbaa !128
  %291 = sext i32 %289 to i64
  %292 = getelementptr inbounds i8, ptr %290, i64 %291
  %293 = load i32, ptr %292, align 4, !tbaa !44
  %294 = sext i32 %293 to i64
  %295 = load ptr, ptr %37, align 8, !tbaa !69
  %296 = load ptr, ptr %19, align 16, !tbaa !55
  %297 = load ptr, ptr %176, align 8, !tbaa !55
  %298 = call ptr @BM_edge_create(ptr noundef %295, ptr noundef %296, ptr noundef %297, ptr noundef null, i32 noundef 2) #10
  store ptr %298, ptr %21, align 16, !tbaa !55
  %299 = load ptr, ptr %176, align 8, !tbaa !55
  %300 = load ptr, ptr %177, align 16, !tbaa !55
  %301 = call ptr @BM_edge_create(ptr noundef %295, ptr noundef %299, ptr noundef %300, ptr noundef null, i32 noundef 2) #10
  store ptr %301, ptr %178, align 8, !tbaa !55
  %302 = load ptr, ptr %177, align 16, !tbaa !55
  %303 = load ptr, ptr %19, align 16, !tbaa !55
  %304 = call ptr @BM_edge_create(ptr noundef %295, ptr noundef %302, ptr noundef %303, ptr noundef null, i32 noundef 2) #10
  store ptr %304, ptr %179, align 16, !tbaa !55
  %305 = load ptr, ptr %175, align 8, !tbaa !93
  %306 = load ptr, ptr %37, align 8, !tbaa !69
  %307 = call ptr @BM_face_create(ptr noundef %306, ptr noundef nonnull %19, ptr noundef nonnull %21, i32 noundef 3, ptr noundef nonnull %261, i32 noundef 0) #10
  %308 = getelementptr inbounds %struct.BMHeader, ptr %261, i64 0, i32 3
  %309 = load i8, ptr %308, align 1, !tbaa !129
  %310 = getelementptr inbounds %struct.BMHeader, ptr %307, i64 0, i32 3
  store i8 %309, ptr %310, align 1, !tbaa !129
  %311 = getelementptr inbounds %struct.PBVHNode, ptr %305, i64 %294, i32 15
  %312 = load ptr, ptr %311, align 8, !tbaa !48
  call void @BLI_gset_insert(ptr noundef %312, ptr noundef %307) #10
  %313 = load ptr, ptr %307, align 8, !tbaa !90
  %314 = load i32, ptr %43, align 4, !tbaa !68
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8, ptr %313, i64 %315
  store i32 %293, ptr %316, align 4, !tbaa !44
  %317 = getelementptr inbounds %struct.PBVHNode, ptr %305, i64 %294, i32 10
  %318 = load i16, ptr %317, align 8
  %319 = and i16 %318, -147
  %320 = or disjoint i16 %319, 18
  store i16 %320, ptr %317, align 8
  %321 = load ptr, ptr %180, align 8, !tbaa !73
  call void @BM_log_face_added(ptr noundef %321, ptr noundef nonnull %307) #10
  %322 = getelementptr inbounds %struct.PBVHNode, ptr %284, i64 %294, i32 16
  %323 = load ptr, ptr %322, align 8, !tbaa !60
  %324 = call zeroext i8 @BLI_gset_haskey(ptr noundef %323, ptr noundef %240) #10
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %326, label %333

326:                                              ; preds = %283
  %327 = getelementptr inbounds %struct.PBVHNode, ptr %284, i64 %294, i32 17
  %328 = load ptr, ptr %327, align 8, !tbaa !62
  %329 = call zeroext i8 @BLI_gset_haskey(ptr noundef %328, ptr noundef %240) #10
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %331, label %333

331:                                              ; preds = %326
  %332 = load ptr, ptr %327, align 8, !tbaa !62
  call void @BLI_gset_insert(ptr noundef %332, ptr noundef %240) #10
  br label %333

333:                                              ; preds = %331, %326, %283
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %21) #10
  br label %334

334:                                              ; preds = %333, %274
  %335 = load i32, ptr %34, align 4, !tbaa !110
  %336 = add nsw i32 %335, 1
  call void @BLI_buffer_resize(ptr noundef nonnull %28, i32 noundef %336) #10
  %337 = load ptr, ptr %28, align 8, !tbaa !107
  %338 = load i32, ptr %34, align 4, !tbaa !110
  %339 = sext i32 %338 to i64
  %340 = getelementptr ptr, ptr %337, i64 %339
  %341 = getelementptr ptr, ptr %340, i64 -1
  store ptr %261, ptr %341, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #10
  %342 = load ptr, ptr %174, align 8, !tbaa !79
  %343 = call ptr %342(ptr noundef nonnull %18) #10
  %344 = icmp eq ptr %343, null
  br i1 %344, label %257, label %260, !llvm.loop !130

345:                                              ; preds = %257, %406
  %346 = phi i64 [ %407, %406 ], [ 0, %257 ]
  %347 = load ptr, ptr %28, align 8, !tbaa !107
  %348 = getelementptr inbounds ptr, ptr %347, i64 %346
  %349 = load ptr, ptr %348, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %22) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %23) #10
  %350 = getelementptr inbounds %struct.BMFace, ptr %349, i64 0, i32 2
  %351 = load ptr, ptr %350, align 8, !tbaa !98
  %352 = getelementptr inbounds %struct.BMLoop, ptr %351, i64 0, i32 1
  %353 = load ptr, ptr %352, align 8, !tbaa !99
  store ptr %353, ptr %22, align 16, !tbaa !55
  %354 = getelementptr inbounds %struct.BMLoop, ptr %351, i64 0, i32 2
  %355 = load ptr, ptr %354, align 8, !tbaa !113
  store ptr %355, ptr %23, align 16, !tbaa !55
  %356 = getelementptr inbounds %struct.BMLoop, ptr %351, i64 0, i32 6
  %357 = load ptr, ptr %356, align 8, !tbaa !101
  %358 = getelementptr inbounds %struct.BMLoop, ptr %357, i64 0, i32 1
  %359 = load ptr, ptr %358, align 8, !tbaa !99
  store ptr %359, ptr %181, align 8, !tbaa !55
  %360 = getelementptr inbounds %struct.BMLoop, ptr %357, i64 0, i32 2
  %361 = load ptr, ptr %360, align 8, !tbaa !113
  store ptr %361, ptr %182, align 8, !tbaa !55
  %362 = getelementptr inbounds %struct.BMLoop, ptr %357, i64 0, i32 6
  %363 = load ptr, ptr %362, align 8, !tbaa !101
  %364 = getelementptr inbounds %struct.BMLoop, ptr %363, i64 0, i32 1
  %365 = load ptr, ptr %364, align 8, !tbaa !99
  store ptr %365, ptr %183, align 16, !tbaa !55
  %366 = getelementptr inbounds %struct.BMLoop, ptr %363, i64 0, i32 2
  %367 = load ptr, ptr %366, align 8, !tbaa !113
  store ptr %367, ptr %184, align 16, !tbaa !55
  br label %368

368:                                              ; preds = %345, %378
  %369 = phi i64 [ 0, %345 ], [ %379, %378 ]
  %370 = getelementptr inbounds [3 x ptr], ptr %22, i64 0, i64 %369
  %371 = load ptr, ptr %370, align 8, !tbaa !55
  %372 = icmp eq ptr %371, %241
  br i1 %372, label %377, label %373

373:                                              ; preds = %368
  %374 = call i32 @BM_vert_face_count(ptr noundef %371) #10
  %375 = icmp eq i32 %374, 1
  br i1 %375, label %376, label %377

376:                                              ; preds = %373
  call void @BLI_gset_insert(ptr noundef %166, ptr noundef %371) #10
  call fastcc void @pbvh_bmesh_vert_remove(ptr noundef %0, ptr noundef %371)
  br label %378

377:                                              ; preds = %373, %368
  store ptr null, ptr %370, align 8, !tbaa !55
  br label %378

378:                                              ; preds = %377, %376
  %379 = add nuw nsw i64 %369, 1
  %380 = icmp eq i64 %379, 3
  br i1 %380, label %381, label %368, !llvm.loop !131

381:                                              ; preds = %378
  call fastcc void @pbvh_bmesh_face_remove(ptr noundef %0, ptr noundef %349)
  %382 = load ptr, ptr %37, align 8, !tbaa !69
  call void @BM_face_kill(ptr noundef %382, ptr noundef %349) #10
  br label %383

383:                                              ; preds = %381, %392
  %384 = phi i64 [ 0, %381 ], [ %393, %392 ]
  %385 = getelementptr inbounds [3 x ptr], ptr %23, i64 0, i64 %384
  %386 = load ptr, ptr %385, align 8, !tbaa !55
  %387 = getelementptr inbounds %struct.BMEdge, ptr %386, i64 0, i32 4
  %388 = load ptr, ptr %387, align 8, !tbaa !122
  %389 = icmp eq ptr %388, null
  br i1 %389, label %390, label %392

390:                                              ; preds = %383
  %391 = load ptr, ptr %37, align 8, !tbaa !69
  call void @BM_edge_kill(ptr noundef %391, ptr noundef %386) #10
  br label %392

392:                                              ; preds = %390, %383
  %393 = add nuw nsw i64 %384, 1
  %394 = icmp eq i64 %393, 3
  br i1 %394, label %395, label %383, !llvm.loop !132

395:                                              ; preds = %392, %403
  %396 = phi i64 [ %404, %403 ], [ 0, %392 ]
  %397 = getelementptr inbounds [3 x ptr], ptr %22, i64 0, i64 %396
  %398 = load ptr, ptr %397, align 8, !tbaa !55
  %399 = icmp eq ptr %398, null
  br i1 %399, label %403, label %400

400:                                              ; preds = %395
  %401 = load ptr, ptr %185, align 8, !tbaa !73
  call void @BM_log_vert_removed(ptr noundef %401, ptr noundef nonnull %398, i32 noundef %40) #10
  %402 = load ptr, ptr %37, align 8, !tbaa !69
  call void @BM_vert_kill(ptr noundef %402, ptr noundef nonnull %398) #10
  br label %403

403:                                              ; preds = %400, %395
  %404 = add nuw nsw i64 %396, 1
  %405 = icmp eq i64 %404, 3
  br i1 %405, label %406, label %395, !llvm.loop !133

406:                                              ; preds = %403
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %23) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #10
  %407 = add nuw nsw i64 %346, 1
  %408 = load i32, ptr %34, align 4, !tbaa !110
  %409 = sext i32 %408 to i64
  %410 = icmp slt i64 %407, %409
  br i1 %410, label %345, label %411, !llvm.loop !134

411:                                              ; preds = %406, %257
  %412 = call zeroext i8 @BLI_gset_haskey(ptr noundef %166, ptr noundef %240) #10
  %413 = icmp eq i8 %412, 0
  br i1 %413, label %414, label %418

414:                                              ; preds = %411
  %415 = load ptr, ptr %186, align 8, !tbaa !73
  call void @BM_log_vert_before_modified(ptr noundef %415, ptr noundef %240, i32 noundef %40) #10
  %416 = getelementptr inbounds %struct.BMVert, ptr %240, i64 0, i32 2
  %417 = getelementptr inbounds %struct.BMVert, ptr %241, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %416, ptr noundef nonnull %416, ptr noundef nonnull %417) #10
  br label %418

418:                                              ; preds = %414, %411
  call void @BLI_gset_insert(ptr noundef %166, ptr noundef %241) #10
  %419 = load ptr, ptr %187, align 8, !tbaa !73
  call void @BM_log_vert_removed(ptr noundef %419, ptr noundef %241, i32 noundef %40) #10
  %420 = load ptr, ptr %37, align 8, !tbaa !69
  call void @BM_vert_kill(ptr noundef %420, ptr noundef %241) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #10
  br label %421

421:                                              ; preds = %418, %228, %221, %218, %198, %195, %188
  %422 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %49) #10
  %423 = icmp eq i8 %422, 0
  br i1 %423, label %188, label %424

424:                                              ; preds = %421, %160
  call void @BLI_gset_free(ptr noundef %166, ptr noundef null) #10
  call void @BLI_heap_free(ptr noundef %49, ptr noundef null) #10
  call void @BLI_mempool_destroy(ptr noundef %48) #10
  br label %425

425:                                              ; preds = %424, %4
  %426 = phi i8 [ %163, %424 ], [ 0, %4 ]
  %427 = and i32 %1, 1
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %997, label %429

429:                                              ; preds = %425
  %430 = call ptr @BLI_mempool_create(i32 noundef 16, i32 noundef 0, i32 noundef 128, i32 noundef 0) #10
  %431 = call ptr @BLI_heap_new() #10
  %432 = fmul float %3, %3
  %433 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 23
  %434 = load float, ptr %433, align 8, !tbaa !70
  %435 = fmul float %434, %434
  %436 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %437 = load i32, ptr %436, align 4, !tbaa !94
  %438 = icmp sgt i32 %437, 0
  br i1 %438, label %439, label %543

439:                                              ; preds = %429
  %440 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %441 = getelementptr inbounds %struct.GHashIterator, ptr %17, i64 0, i32 1
  %442 = getelementptr inbounds [3 x ptr], ptr %9, i64 0, i64 1
  %443 = getelementptr inbounds [3 x ptr], ptr %9, i64 0, i64 2
  %444 = getelementptr inbounds float, ptr %10, i64 1
  %445 = getelementptr inbounds float, ptr %2, i64 1
  %446 = getelementptr inbounds float, ptr %10, i64 2
  %447 = getelementptr inbounds float, ptr %2, i64 2
  %448 = icmp eq i32 %40, -1
  %449 = sext i32 %40 to i64
  br label %450

450:                                              ; preds = %439, %538
  %451 = phi i64 [ 0, %439 ], [ %539, %538 ]
  %452 = load ptr, ptr %440, align 8, !tbaa !93
  %453 = getelementptr inbounds %struct.PBVHNode, ptr %452, i64 %451, i32 10
  %454 = load i16, ptr %453, align 8
  %455 = and i16 %454, 385
  %456 = icmp eq i16 %455, 257
  br i1 %456, label %457, label %538

457:                                              ; preds = %450
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #10
  %458 = getelementptr inbounds %struct.PBVHNode, ptr %452, i64 %451, i32 15
  %459 = load ptr, ptr %458, align 8, !tbaa !48
  call void @BLI_ghashIterator_init(ptr noundef nonnull %17, ptr noundef %459) #10
  %460 = load ptr, ptr %441, align 8, !tbaa !49
  %461 = icmp eq ptr %460, null
  br i1 %461, label %537, label %462

462:                                              ; preds = %457, %534
  %463 = phi ptr [ %535, %534 ], [ %460, %457 ]
  %464 = getelementptr inbounds %struct._gh_Entry, ptr %463, i64 0, i32 1
  %465 = load ptr, ptr %464, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #10
  call void @BM_face_as_array_vert_tri(ptr noundef %465, ptr noundef nonnull %9) #10
  %466 = load ptr, ptr %9, align 16, !tbaa !55
  %467 = getelementptr inbounds %struct.BMVert, ptr %466, i64 0, i32 2
  %468 = load ptr, ptr %442, align 8, !tbaa !55
  %469 = getelementptr inbounds %struct.BMVert, ptr %468, i64 0, i32 2
  %470 = load ptr, ptr %443, align 16, !tbaa !55
  %471 = getelementptr inbounds %struct.BMVert, ptr %470, i64 0, i32 2
  call void @closest_on_tri_to_point_v3(ptr noundef nonnull %10, ptr noundef %2, ptr noundef nonnull %467, ptr noundef nonnull %469, ptr noundef nonnull %471) #10
  %472 = load float, ptr %10, align 4, !tbaa !58
  %473 = load float, ptr %2, align 4, !tbaa !58
  %474 = fsub float %472, %473
  %475 = load float, ptr %444, align 4, !tbaa !58
  %476 = load float, ptr %445, align 4, !tbaa !58
  %477 = fsub float %475, %476
  %478 = load float, ptr %446, align 4, !tbaa !58
  %479 = load float, ptr %447, align 4, !tbaa !58
  %480 = fsub float %478, %479
  %481 = fmul float %477, %477
  %482 = call float @llvm.fmuladd.f32(float %474, float %474, float %481)
  %483 = call float @llvm.fmuladd.f32(float %480, float %480, float %482)
  %484 = fcmp ugt float %483, %432
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #10
  br i1 %484, label %534, label %485

485:                                              ; preds = %462
  %486 = getelementptr inbounds %struct.BMFace, ptr %465, i64 0, i32 2
  %487 = load ptr, ptr %486, align 8, !tbaa !98
  br label %488

488:                                              ; preds = %530, %485
  %489 = phi ptr [ %487, %485 ], [ %532, %530 ]
  %490 = getelementptr inbounds %struct.BMLoop, ptr %489, i64 0, i32 2
  %491 = load ptr, ptr %490, align 8, !tbaa !113
  %492 = call float @BM_edge_calc_length_squared(ptr noundef %491) #10
  %493 = fcmp ogt float %492, %435
  br i1 %493, label %494, label %530

494:                                              ; preds = %488
  %495 = fneg float %492
  br i1 %448, label %510, label %496

496:                                              ; preds = %494
  %497 = getelementptr inbounds %struct.BMEdge, ptr %491, i64 0, i32 2
  %498 = load ptr, ptr %497, align 8, !tbaa !114
  %499 = load ptr, ptr %498, align 8, !tbaa !86
  %500 = getelementptr inbounds i8, ptr %499, i64 %449
  %501 = load float, ptr %500, align 4, !tbaa !58
  %502 = fcmp uge float %501, 1.000000e+00
  br i1 %502, label %503, label %510

503:                                              ; preds = %496
  %504 = getelementptr inbounds %struct.BMEdge, ptr %491, i64 0, i32 3
  %505 = load ptr, ptr %504, align 8, !tbaa !117
  %506 = load ptr, ptr %505, align 8, !tbaa !86
  %507 = getelementptr inbounds i8, ptr %506, i64 %449
  %508 = load float, ptr %507, align 4, !tbaa !58
  %509 = fcmp uge float %508, 1.000000e+00
  br i1 %509, label %530, label %510

510:                                              ; preds = %503, %496, %494
  %511 = getelementptr inbounds %struct.BMEdge, ptr %491, i64 0, i32 2
  %512 = load ptr, ptr %511, align 8, !tbaa !114
  %513 = getelementptr inbounds %struct.BMHeader, ptr %512, i64 0, i32 3
  %514 = load i8, ptr %513, align 1, !tbaa !53
  %515 = and i8 %514, 2
  %516 = icmp eq i8 %515, 0
  br i1 %516, label %517, label %530

517:                                              ; preds = %510
  %518 = getelementptr inbounds %struct.BMEdge, ptr %491, i64 0, i32 3
  %519 = load ptr, ptr %518, align 8, !tbaa !117
  %520 = getelementptr inbounds %struct.BMHeader, ptr %519, i64 0, i32 3
  %521 = load i8, ptr %520, align 1, !tbaa !53
  %522 = and i8 %521, 2
  %523 = icmp eq i8 %522, 0
  br i1 %523, label %524, label %530

524:                                              ; preds = %517
  %525 = call ptr @BLI_mempool_alloc(ptr noundef %430) #10
  %526 = load ptr, ptr %511, align 8, !tbaa !114
  store ptr %526, ptr %525, align 8, !tbaa !55
  %527 = load ptr, ptr %518, align 8, !tbaa !117
  %528 = getelementptr inbounds ptr, ptr %525, i64 1
  store ptr %527, ptr %528, align 8, !tbaa !55
  %529 = call ptr @BLI_heap_insert(ptr noundef %431, float noundef %495, ptr noundef nonnull %525) #10
  br label %530

530:                                              ; preds = %524, %517, %510, %503, %488
  %531 = getelementptr inbounds %struct.BMLoop, ptr %489, i64 0, i32 6
  %532 = load ptr, ptr %531, align 8, !tbaa !101
  %533 = icmp eq ptr %532, %487
  br i1 %533, label %534, label %488, !llvm.loop !135

534:                                              ; preds = %530, %462
  call void @BLI_ghashIterator_step(ptr noundef nonnull %17) #10
  %535 = load ptr, ptr %441, align 8, !tbaa !49
  %536 = icmp eq ptr %535, null
  br i1 %536, label %537, label %462, !llvm.loop !136

537:                                              ; preds = %534, %457
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #10
  br label %538

538:                                              ; preds = %537, %450
  %539 = add nuw nsw i64 %451, 1
  %540 = load i32, ptr %436, align 4, !tbaa !94
  %541 = sext i32 %540 to i64
  %542 = icmp slt i64 %539, %541
  br i1 %542, label %450, label %543, !llvm.loop !137

543:                                              ; preds = %538, %429
  %544 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %431) #10
  %545 = icmp eq i8 %544, 0
  %546 = zext i1 %545 to i8
  %547 = or i8 %426, %546
  %548 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %431) #10
  %549 = icmp eq i8 %548, 0
  br i1 %549, label %550, label %996

550:                                              ; preds = %543
  %551 = sext i32 %42 to i64
  %552 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %553 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 27
  %554 = icmp eq i32 %40, -1
  %555 = sext i32 %40 to i64
  %556 = sext i32 %44 to i64
  %557 = getelementptr inbounds [3 x ptr], ptr %14, i64 0, i64 1
  %558 = getelementptr inbounds [3 x ptr], ptr %14, i64 0, i64 2
  %559 = getelementptr inbounds ptr, ptr %15, i64 1
  %560 = getelementptr inbounds ptr, ptr %15, i64 2
  %561 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 1
  %562 = getelementptr inbounds [3 x ptr], ptr %7, i64 0, i64 2
  %563 = getelementptr inbounds float, ptr %8, i64 1
  %564 = getelementptr inbounds float, ptr %2, i64 1
  %565 = getelementptr inbounds float, ptr %8, i64 2
  %566 = getelementptr inbounds float, ptr %2, i64 2
  %567 = sext i32 %40 to i64
  %568 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 1
  %569 = getelementptr inbounds [3 x ptr], ptr %5, i64 0, i64 2
  %570 = getelementptr inbounds float, ptr %6, i64 1
  %571 = getelementptr inbounds float, ptr %6, i64 2
  %572 = sext i32 %40 to i64
  %573 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 4
  %574 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 1
  %575 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 2
  %576 = sext i32 %40 to i64
  br label %577

577:                                              ; preds = %550, %993
  %578 = call ptr @BLI_heap_popmin(ptr noundef %431) #10
  %579 = load ptr, ptr %578, align 8, !tbaa !55
  %580 = getelementptr inbounds ptr, ptr %578, i64 1
  %581 = load ptr, ptr %580, align 8, !tbaa !55
  call void @BLI_mempool_free(ptr noundef %430, ptr noundef nonnull %578) #10
  %582 = getelementptr inbounds %struct.BMVert, ptr %579, i64 0, i32 2
  %583 = getelementptr inbounds %struct.BMVert, ptr %581, i64 0, i32 2
  %584 = load float, ptr %583, align 4, !tbaa !58
  %585 = load float, ptr %582, align 4, !tbaa !58
  %586 = fsub float %584, %585
  %587 = getelementptr inbounds %struct.BMVert, ptr %581, i64 0, i32 2, i64 1
  %588 = load float, ptr %587, align 4, !tbaa !58
  %589 = getelementptr inbounds %struct.BMVert, ptr %579, i64 0, i32 2, i64 1
  %590 = load float, ptr %589, align 4, !tbaa !58
  %591 = fsub float %588, %590
  %592 = getelementptr inbounds %struct.BMVert, ptr %581, i64 0, i32 2, i64 2
  %593 = load float, ptr %592, align 4, !tbaa !58
  %594 = getelementptr inbounds %struct.BMVert, ptr %579, i64 0, i32 2, i64 2
  %595 = load float, ptr %594, align 4, !tbaa !58
  %596 = fsub float %593, %595
  %597 = fmul float %591, %591
  %598 = call float @llvm.fmuladd.f32(float %586, float %586, float %597)
  %599 = call float @llvm.fmuladd.f32(float %596, float %596, float %598)
  %600 = fcmp ugt float %599, %435
  br i1 %600, label %601, label %993, !llvm.loop !138

601:                                              ; preds = %577
  %602 = call ptr @BM_edge_exists(ptr noundef %579, ptr noundef %581) #10
  %603 = icmp eq ptr %602, null
  br i1 %603, label %993, label %604, !llvm.loop !138

604:                                              ; preds = %601
  %605 = getelementptr inbounds %struct.BMEdge, ptr %602, i64 0, i32 2
  %606 = load ptr, ptr %605, align 8, !tbaa !114
  %607 = load ptr, ptr %606, align 8, !tbaa !86
  %608 = getelementptr inbounds i8, ptr %607, i64 %551
  %609 = load i32, ptr %608, align 4, !tbaa !44
  %610 = icmp eq i32 %609, -1
  br i1 %610, label %993, label %611, !llvm.loop !138

611:                                              ; preds = %604
  %612 = getelementptr inbounds %struct.BMEdge, ptr %602, i64 0, i32 3
  %613 = load ptr, ptr %612, align 8, !tbaa !117
  %614 = load ptr, ptr %613, align 8, !tbaa !86
  %615 = getelementptr inbounds i8, ptr %614, i64 %551
  %616 = load i32, ptr %615, align 4, !tbaa !44
  %617 = icmp eq i32 %616, -1
  br i1 %617, label %993, label %618, !llvm.loop !138

618:                                              ; preds = %611
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #10
  %619 = load ptr, ptr %26, align 8, !tbaa !107
  %620 = getelementptr inbounds ptr, ptr %619, i64 1
  %621 = call zeroext i8 @BM_edge_loop_pair(ptr noundef nonnull %602, ptr noundef %619, ptr noundef nonnull %620) #10
  %622 = icmp eq i8 %621, 0
  br i1 %622, label %624, label %623

623:                                              ; preds = %618
  store i32 2, ptr %30, align 4, !tbaa !110
  br label %629

624:                                              ; preds = %618
  %625 = call i32 @BM_edge_face_count(ptr noundef nonnull %602) #10
  call void @BLI_buffer_resize(ptr noundef nonnull %26, i32 noundef %625) #10
  %626 = load ptr, ptr %26, align 8, !tbaa !107
  %627 = load i32, ptr %30, align 4, !tbaa !110
  %628 = call i32 @BM_iter_as_array(ptr noundef null, i8 noundef zeroext 14, ptr noundef nonnull %602, ptr noundef %626, i32 noundef %627) #10
  br label %629

629:                                              ; preds = %624, %623
  %630 = load ptr, ptr %605, align 8, !tbaa !114
  %631 = getelementptr inbounds %struct.BMVert, ptr %630, i64 0, i32 2
  %632 = load ptr, ptr %612, align 8, !tbaa !117
  %633 = getelementptr inbounds %struct.BMVert, ptr %632, i64 0, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %631, ptr noundef nonnull %633) #10
  %634 = load ptr, ptr %605, align 8, !tbaa !114
  %635 = load ptr, ptr %634, align 8, !tbaa !86
  %636 = getelementptr inbounds i8, ptr %635, i64 %551
  %637 = load i32, ptr %636, align 4, !tbaa !44
  %638 = load ptr, ptr %37, align 8, !tbaa !69
  %639 = call ptr @BM_vert_create(ptr noundef %638, ptr noundef nonnull %13, ptr noundef nonnull %634, i32 noundef 0) #10
  %640 = load ptr, ptr %552, align 8, !tbaa !93
  %641 = sext i32 %637 to i64
  %642 = getelementptr inbounds %struct.PBVHNode, ptr %640, i64 %641, i32 16
  %643 = load ptr, ptr %642, align 8, !tbaa !60
  call void @BLI_gset_insert(ptr noundef %643, ptr noundef %639) #10
  %644 = load ptr, ptr %639, align 8, !tbaa !86
  %645 = load i32, ptr %41, align 8, !tbaa !65
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds i8, ptr %644, i64 %646
  store i32 %637, ptr %647, align 4, !tbaa !44
  %648 = getelementptr inbounds %struct.PBVHNode, ptr %640, i64 %641, i32 10
  %649 = load i16, ptr %648, align 8
  %650 = or i16 %649, 20
  store i16 %650, ptr %648, align 8
  %651 = load ptr, ptr %553, align 8, !tbaa !73
  call void @BM_log_vert_added(ptr noundef %651, ptr noundef nonnull %639, i32 noundef %40) #10
  br i1 %554, label %665, label %652

652:                                              ; preds = %629
  %653 = load ptr, ptr %605, align 8, !tbaa !114
  %654 = load ptr, ptr %653, align 8, !tbaa !86
  %655 = getelementptr inbounds i8, ptr %654, i64 %555
  %656 = load float, ptr %655, align 4, !tbaa !58
  %657 = load ptr, ptr %612, align 8, !tbaa !117
  %658 = load ptr, ptr %657, align 8, !tbaa !86
  %659 = getelementptr inbounds i8, ptr %658, i64 %555
  %660 = load float, ptr %659, align 4, !tbaa !58
  %661 = fadd float %656, %660
  %662 = fmul float %661, 5.000000e-01
  %663 = load ptr, ptr %639, align 8, !tbaa !86
  %664 = getelementptr inbounds i8, ptr %663, i64 %555
  store float %662, ptr %664, align 4, !tbaa !58
  br label %665

665:                                              ; preds = %652, %629
  %666 = load i32, ptr %30, align 4, !tbaa !110
  %667 = icmp sgt i32 %666, 0
  br i1 %667, label %668, label %991

668:                                              ; preds = %665
  %669 = getelementptr inbounds %struct.BMHeader, ptr %639, i64 0, i32 2
  br label %670

670:                                              ; preds = %668, %986
  %671 = phi i64 [ 0, %668 ], [ %987, %986 ]
  %672 = load ptr, ptr %26, align 8, !tbaa !107
  %673 = getelementptr inbounds ptr, ptr %672, i64 %671
  %674 = load ptr, ptr %673, align 8, !tbaa !55
  %675 = getelementptr inbounds %struct.BMLoop, ptr %674, i64 0, i32 3
  %676 = load ptr, ptr %675, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #10
  %677 = load ptr, ptr %676, align 8, !tbaa !90
  %678 = getelementptr inbounds i8, ptr %677, i64 %556
  %679 = load i32, ptr %678, align 4, !tbaa !44
  %680 = getelementptr inbounds %struct.BMLoop, ptr %674, i64 0, i32 7
  %681 = load ptr, ptr %680, align 8, !tbaa !139
  %682 = getelementptr inbounds %struct.BMLoop, ptr %681, i64 0, i32 1
  %683 = load ptr, ptr %682, align 8, !tbaa !99
  %684 = getelementptr inbounds %struct.BMLoop, ptr %674, i64 0, i32 1
  %685 = load ptr, ptr %684, align 8, !tbaa !99
  %686 = getelementptr inbounds %struct.BMLoop, ptr %674, i64 0, i32 6
  %687 = load ptr, ptr %686, align 8, !tbaa !101
  %688 = getelementptr inbounds %struct.BMLoop, ptr %687, i64 0, i32 1
  %689 = load ptr, ptr %688, align 8, !tbaa !99
  %690 = icmp ne i32 %679, %637
  %691 = icmp eq i64 %671, 0
  %692 = and i1 %691, %690
  br i1 %692, label %693, label %730

693:                                              ; preds = %670
  %694 = load ptr, ptr %552, align 8, !tbaa !93
  %695 = sext i32 %679 to i64
  %696 = getelementptr inbounds %struct.PBVHNode, ptr %694, i64 %695
  %697 = load i8, ptr %669, align 4, !tbaa !126
  %698 = icmp eq i8 %697, 1
  %699 = select i1 %698, ptr %41, ptr %43
  %700 = load i32, ptr %699, align 4, !tbaa !44
  %701 = load ptr, ptr %639, align 8, !tbaa !128
  %702 = sext i32 %700 to i64
  %703 = getelementptr inbounds i8, ptr %701, i64 %702
  %704 = load i32, ptr %703, align 4, !tbaa !44
  %705 = sext i32 %704 to i64
  %706 = getelementptr inbounds %struct.PBVHNode, ptr %694, i64 %705, i32 10
  %707 = load i16, ptr %706, align 8
  %708 = or i16 %707, 20
  store i16 %708, ptr %706, align 8
  %709 = getelementptr inbounds %struct.PBVHNode, ptr %694, i64 %705, i32 16
  %710 = load ptr, ptr %709, align 8, !tbaa !60
  %711 = call zeroext i8 @BLI_gset_remove(ptr noundef %710, ptr noundef nonnull %639, ptr noundef null) #10
  %712 = load ptr, ptr %552, align 8, !tbaa !93
  %713 = ptrtoint ptr %696 to i64
  %714 = ptrtoint ptr %712 to i64
  %715 = sub i64 %713, %714
  %716 = sdiv exact i64 %715, 184
  %717 = trunc i64 %716 to i32
  %718 = load ptr, ptr %639, align 8, !tbaa !86
  %719 = load i32, ptr %41, align 8, !tbaa !65
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds i8, ptr %718, i64 %720
  store i32 %717, ptr %721, align 4, !tbaa !44
  %722 = getelementptr inbounds %struct.PBVHNode, ptr %694, i64 %695, i32 16
  %723 = load ptr, ptr %722, align 8, !tbaa !60
  call void @BLI_gset_insert(ptr noundef %723, ptr noundef nonnull %639) #10
  %724 = getelementptr inbounds %struct.PBVHNode, ptr %694, i64 %695, i32 17
  %725 = load ptr, ptr %724, align 8, !tbaa !62
  %726 = call zeroext i8 @BLI_gset_remove(ptr noundef %725, ptr noundef nonnull %639, ptr noundef null) #10
  %727 = getelementptr inbounds %struct.PBVHNode, ptr %694, i64 %695, i32 10
  %728 = load i16, ptr %727, align 8
  %729 = or i16 %728, 20
  store i16 %729, ptr %727, align 8
  br label %730

730:                                              ; preds = %693, %670
  store ptr %685, ptr %14, align 16, !tbaa !55
  store ptr %639, ptr %557, align 8, !tbaa !55
  store ptr %683, ptr %558, align 16, !tbaa !55
  %731 = load ptr, ptr %37, align 8, !tbaa !69
  %732 = call ptr @BM_edge_create(ptr noundef %731, ptr noundef %685, ptr noundef nonnull %639, ptr noundef null, i32 noundef 2) #10
  store ptr %732, ptr %15, align 16, !tbaa !55
  %733 = load ptr, ptr %557, align 8, !tbaa !55
  %734 = load ptr, ptr %558, align 16, !tbaa !55
  %735 = call ptr @BM_edge_create(ptr noundef %731, ptr noundef %733, ptr noundef %734, ptr noundef null, i32 noundef 2) #10
  store ptr %735, ptr %559, align 8, !tbaa !55
  %736 = load ptr, ptr %558, align 16, !tbaa !55
  %737 = load ptr, ptr %14, align 16, !tbaa !55
  %738 = call ptr @BM_edge_create(ptr noundef %731, ptr noundef %736, ptr noundef %737, ptr noundef null, i32 noundef 2) #10
  store ptr %738, ptr %560, align 16, !tbaa !55
  %739 = load ptr, ptr %552, align 8, !tbaa !93
  %740 = sext i32 %679 to i64
  %741 = load ptr, ptr %37, align 8, !tbaa !69
  %742 = call ptr @BM_face_create(ptr noundef %741, ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef 3, ptr noundef nonnull %676, i32 noundef 0) #10
  %743 = getelementptr inbounds %struct.BMHeader, ptr %676, i64 0, i32 3
  %744 = load i8, ptr %743, align 1, !tbaa !129
  %745 = getelementptr inbounds %struct.BMHeader, ptr %742, i64 0, i32 3
  store i8 %744, ptr %745, align 1, !tbaa !129
  %746 = getelementptr inbounds %struct.PBVHNode, ptr %739, i64 %740, i32 15
  %747 = load ptr, ptr %746, align 8, !tbaa !48
  call void @BLI_gset_insert(ptr noundef %747, ptr noundef %742) #10
  %748 = load ptr, ptr %742, align 8, !tbaa !90
  %749 = load i32, ptr %43, align 4, !tbaa !68
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds i8, ptr %748, i64 %750
  store i32 %679, ptr %751, align 4, !tbaa !44
  %752 = getelementptr inbounds %struct.PBVHNode, ptr %739, i64 %740, i32 10
  %753 = load i16, ptr %752, align 8
  %754 = and i16 %753, -147
  %755 = or disjoint i16 %754, 18
  store i16 %755, ptr %752, align 8
  %756 = load ptr, ptr %553, align 8, !tbaa !73
  call void @BM_log_face_added(ptr noundef %756, ptr noundef nonnull %742) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  call void @BM_face_as_array_vert_tri(ptr noundef nonnull %742, ptr noundef nonnull %7) #10
  %757 = load ptr, ptr %7, align 16, !tbaa !55
  %758 = getelementptr inbounds %struct.BMVert, ptr %757, i64 0, i32 2
  %759 = load ptr, ptr %561, align 8, !tbaa !55
  %760 = getelementptr inbounds %struct.BMVert, ptr %759, i64 0, i32 2
  %761 = load ptr, ptr %562, align 16, !tbaa !55
  %762 = getelementptr inbounds %struct.BMVert, ptr %761, i64 0, i32 2
  call void @closest_on_tri_to_point_v3(ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull %758, ptr noundef nonnull %760, ptr noundef nonnull %762) #10
  %763 = load float, ptr %8, align 4, !tbaa !58
  %764 = load float, ptr %2, align 4, !tbaa !58
  %765 = fsub float %763, %764
  %766 = load float, ptr %563, align 4, !tbaa !58
  %767 = load float, ptr %564, align 4, !tbaa !58
  %768 = fsub float %766, %767
  %769 = load float, ptr %565, align 4, !tbaa !58
  %770 = load float, ptr %566, align 4, !tbaa !58
  %771 = fsub float %769, %770
  %772 = fmul float %768, %768
  %773 = call float @llvm.fmuladd.f32(float %765, float %765, float %772)
  %774 = call float @llvm.fmuladd.f32(float %771, float %771, float %773)
  %775 = fcmp ugt float %774, %432
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #10
  br i1 %775, label %825, label %776

776:                                              ; preds = %730
  %777 = getelementptr inbounds %struct.BMFace, ptr %742, i64 0, i32 2
  %778 = load ptr, ptr %777, align 8, !tbaa !98
  br label %779

779:                                              ; preds = %821, %776
  %780 = phi ptr [ %778, %776 ], [ %823, %821 ]
  %781 = getelementptr inbounds %struct.BMLoop, ptr %780, i64 0, i32 2
  %782 = load ptr, ptr %781, align 8, !tbaa !113
  %783 = call float @BM_edge_calc_length_squared(ptr noundef %782) #10
  %784 = fcmp ogt float %783, %435
  br i1 %784, label %785, label %821

785:                                              ; preds = %779
  %786 = fneg float %783
  br i1 %554, label %801, label %787

787:                                              ; preds = %785
  %788 = getelementptr inbounds %struct.BMEdge, ptr %782, i64 0, i32 2
  %789 = load ptr, ptr %788, align 8, !tbaa !114
  %790 = load ptr, ptr %789, align 8, !tbaa !86
  %791 = getelementptr inbounds i8, ptr %790, i64 %567
  %792 = load float, ptr %791, align 4, !tbaa !58
  %793 = fcmp uge float %792, 1.000000e+00
  br i1 %793, label %794, label %801

794:                                              ; preds = %787
  %795 = getelementptr inbounds %struct.BMEdge, ptr %782, i64 0, i32 3
  %796 = load ptr, ptr %795, align 8, !tbaa !117
  %797 = load ptr, ptr %796, align 8, !tbaa !86
  %798 = getelementptr inbounds i8, ptr %797, i64 %567
  %799 = load float, ptr %798, align 4, !tbaa !58
  %800 = fcmp uge float %799, 1.000000e+00
  br i1 %800, label %821, label %801

801:                                              ; preds = %794, %787, %785
  %802 = getelementptr inbounds %struct.BMEdge, ptr %782, i64 0, i32 2
  %803 = load ptr, ptr %802, align 8, !tbaa !114
  %804 = getelementptr inbounds %struct.BMHeader, ptr %803, i64 0, i32 3
  %805 = load i8, ptr %804, align 1, !tbaa !53
  %806 = and i8 %805, 2
  %807 = icmp eq i8 %806, 0
  br i1 %807, label %808, label %821

808:                                              ; preds = %801
  %809 = getelementptr inbounds %struct.BMEdge, ptr %782, i64 0, i32 3
  %810 = load ptr, ptr %809, align 8, !tbaa !117
  %811 = getelementptr inbounds %struct.BMHeader, ptr %810, i64 0, i32 3
  %812 = load i8, ptr %811, align 1, !tbaa !53
  %813 = and i8 %812, 2
  %814 = icmp eq i8 %813, 0
  br i1 %814, label %815, label %821

815:                                              ; preds = %808
  %816 = call ptr @BLI_mempool_alloc(ptr noundef %430) #10
  %817 = load ptr, ptr %802, align 8, !tbaa !114
  store ptr %817, ptr %816, align 8, !tbaa !55
  %818 = load ptr, ptr %809, align 8, !tbaa !117
  %819 = getelementptr inbounds ptr, ptr %816, i64 1
  store ptr %818, ptr %819, align 8, !tbaa !55
  %820 = call ptr @BLI_heap_insert(ptr noundef %431, float noundef %786, ptr noundef nonnull %816) #10
  br label %821

821:                                              ; preds = %815, %808, %801, %794, %779
  %822 = getelementptr inbounds %struct.BMLoop, ptr %780, i64 0, i32 6
  %823 = load ptr, ptr %822, align 8, !tbaa !101
  %824 = icmp eq ptr %823, %778
  br i1 %824, label %825, label %779, !llvm.loop !135

825:                                              ; preds = %821, %730
  store ptr %639, ptr %14, align 16, !tbaa !55
  store ptr %689, ptr %557, align 8, !tbaa !55
  %826 = load ptr, ptr %37, align 8, !tbaa !69
  %827 = call ptr @BM_edge_create(ptr noundef %826, ptr noundef nonnull %639, ptr noundef %689, ptr noundef null, i32 noundef 2) #10
  store ptr %827, ptr %15, align 16, !tbaa !55
  %828 = load ptr, ptr %559, align 8, !tbaa !55
  store ptr %828, ptr %560, align 16, !tbaa !55
  %829 = load ptr, ptr %37, align 8, !tbaa !69
  %830 = load ptr, ptr %557, align 8, !tbaa !55
  %831 = load ptr, ptr %558, align 16, !tbaa !55
  %832 = call ptr @BM_edge_create(ptr noundef %829, ptr noundef %830, ptr noundef %831, ptr noundef null, i32 noundef 2) #10
  store ptr %832, ptr %559, align 8, !tbaa !55
  %833 = load ptr, ptr %552, align 8, !tbaa !93
  %834 = load ptr, ptr %37, align 8, !tbaa !69
  %835 = call ptr @BM_face_create(ptr noundef %834, ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef 3, ptr noundef nonnull %676, i32 noundef 0) #10
  %836 = load i8, ptr %743, align 1, !tbaa !129
  %837 = getelementptr inbounds %struct.BMHeader, ptr %835, i64 0, i32 3
  store i8 %836, ptr %837, align 1, !tbaa !129
  %838 = getelementptr inbounds %struct.PBVHNode, ptr %833, i64 %740, i32 15
  %839 = load ptr, ptr %838, align 8, !tbaa !48
  call void @BLI_gset_insert(ptr noundef %839, ptr noundef %835) #10
  %840 = load ptr, ptr %835, align 8, !tbaa !90
  %841 = load i32, ptr %43, align 4, !tbaa !68
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds i8, ptr %840, i64 %842
  store i32 %679, ptr %843, align 4, !tbaa !44
  %844 = getelementptr inbounds %struct.PBVHNode, ptr %833, i64 %740, i32 10
  %845 = load i16, ptr %844, align 8
  %846 = and i16 %845, -147
  %847 = or disjoint i16 %846, 18
  store i16 %847, ptr %844, align 8
  %848 = load ptr, ptr %553, align 8, !tbaa !73
  call void @BM_log_face_added(ptr noundef %848, ptr noundef nonnull %835) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  call void @BM_face_as_array_vert_tri(ptr noundef nonnull %835, ptr noundef nonnull %5) #10
  %849 = load ptr, ptr %5, align 16, !tbaa !55
  %850 = getelementptr inbounds %struct.BMVert, ptr %849, i64 0, i32 2
  %851 = load ptr, ptr %568, align 8, !tbaa !55
  %852 = getelementptr inbounds %struct.BMVert, ptr %851, i64 0, i32 2
  %853 = load ptr, ptr %569, align 16, !tbaa !55
  %854 = getelementptr inbounds %struct.BMVert, ptr %853, i64 0, i32 2
  call void @closest_on_tri_to_point_v3(ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %850, ptr noundef nonnull %852, ptr noundef nonnull %854) #10
  %855 = load float, ptr %6, align 4, !tbaa !58
  %856 = load float, ptr %2, align 4, !tbaa !58
  %857 = fsub float %855, %856
  %858 = load float, ptr %570, align 4, !tbaa !58
  %859 = load float, ptr %564, align 4, !tbaa !58
  %860 = fsub float %858, %859
  %861 = load float, ptr %571, align 4, !tbaa !58
  %862 = load float, ptr %566, align 4, !tbaa !58
  %863 = fsub float %861, %862
  %864 = fmul float %860, %860
  %865 = call float @llvm.fmuladd.f32(float %857, float %857, float %864)
  %866 = call float @llvm.fmuladd.f32(float %863, float %863, float %865)
  %867 = fcmp ugt float %866, %432
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  br i1 %867, label %917, label %868

868:                                              ; preds = %825
  %869 = getelementptr inbounds %struct.BMFace, ptr %835, i64 0, i32 2
  %870 = load ptr, ptr %869, align 8, !tbaa !98
  br label %871

871:                                              ; preds = %913, %868
  %872 = phi ptr [ %870, %868 ], [ %915, %913 ]
  %873 = getelementptr inbounds %struct.BMLoop, ptr %872, i64 0, i32 2
  %874 = load ptr, ptr %873, align 8, !tbaa !113
  %875 = call float @BM_edge_calc_length_squared(ptr noundef %874) #10
  %876 = fcmp ogt float %875, %435
  br i1 %876, label %877, label %913

877:                                              ; preds = %871
  %878 = fneg float %875
  br i1 %554, label %893, label %879

879:                                              ; preds = %877
  %880 = getelementptr inbounds %struct.BMEdge, ptr %874, i64 0, i32 2
  %881 = load ptr, ptr %880, align 8, !tbaa !114
  %882 = load ptr, ptr %881, align 8, !tbaa !86
  %883 = getelementptr inbounds i8, ptr %882, i64 %572
  %884 = load float, ptr %883, align 4, !tbaa !58
  %885 = fcmp uge float %884, 1.000000e+00
  br i1 %885, label %886, label %893

886:                                              ; preds = %879
  %887 = getelementptr inbounds %struct.BMEdge, ptr %874, i64 0, i32 3
  %888 = load ptr, ptr %887, align 8, !tbaa !117
  %889 = load ptr, ptr %888, align 8, !tbaa !86
  %890 = getelementptr inbounds i8, ptr %889, i64 %572
  %891 = load float, ptr %890, align 4, !tbaa !58
  %892 = fcmp uge float %891, 1.000000e+00
  br i1 %892, label %913, label %893

893:                                              ; preds = %886, %879, %877
  %894 = getelementptr inbounds %struct.BMEdge, ptr %874, i64 0, i32 2
  %895 = load ptr, ptr %894, align 8, !tbaa !114
  %896 = getelementptr inbounds %struct.BMHeader, ptr %895, i64 0, i32 3
  %897 = load i8, ptr %896, align 1, !tbaa !53
  %898 = and i8 %897, 2
  %899 = icmp eq i8 %898, 0
  br i1 %899, label %900, label %913

900:                                              ; preds = %893
  %901 = getelementptr inbounds %struct.BMEdge, ptr %874, i64 0, i32 3
  %902 = load ptr, ptr %901, align 8, !tbaa !117
  %903 = getelementptr inbounds %struct.BMHeader, ptr %902, i64 0, i32 3
  %904 = load i8, ptr %903, align 1, !tbaa !53
  %905 = and i8 %904, 2
  %906 = icmp eq i8 %905, 0
  br i1 %906, label %907, label %913

907:                                              ; preds = %900
  %908 = call ptr @BLI_mempool_alloc(ptr noundef %430) #10
  %909 = load ptr, ptr %894, align 8, !tbaa !114
  store ptr %909, ptr %908, align 8, !tbaa !55
  %910 = load ptr, ptr %901, align 8, !tbaa !117
  %911 = getelementptr inbounds ptr, ptr %908, i64 1
  store ptr %910, ptr %911, align 8, !tbaa !55
  %912 = call ptr @BLI_heap_insert(ptr noundef %431, float noundef %878, ptr noundef nonnull %908) #10
  br label %913

913:                                              ; preds = %907, %900, %893, %886, %871
  %914 = getelementptr inbounds %struct.BMLoop, ptr %872, i64 0, i32 6
  %915 = load ptr, ptr %914, align 8, !tbaa !101
  %916 = icmp eq ptr %915, %870
  br i1 %916, label %917, label %871, !llvm.loop !135

917:                                              ; preds = %913, %825
  call fastcc void @pbvh_bmesh_face_remove(ptr noundef %0, ptr noundef nonnull %676)
  %918 = load ptr, ptr %37, align 8, !tbaa !69
  call void @BM_face_kill(ptr noundef %918, ptr noundef nonnull %676) #10
  %919 = load ptr, ptr %552, align 8, !tbaa !93
  %920 = getelementptr inbounds %struct.PBVHNode, ptr %919, i64 %740, i32 16
  %921 = load ptr, ptr %920, align 8, !tbaa !60
  %922 = call zeroext i8 @BLI_gset_haskey(ptr noundef %921, ptr noundef nonnull %639) #10
  %923 = icmp eq i8 %922, 0
  br i1 %923, label %924, label %934

924:                                              ; preds = %917
  %925 = load ptr, ptr %552, align 8, !tbaa !93
  %926 = getelementptr inbounds %struct.PBVHNode, ptr %925, i64 %740, i32 17
  %927 = load ptr, ptr %926, align 8, !tbaa !62
  %928 = call zeroext i8 @BLI_gset_haskey(ptr noundef %927, ptr noundef nonnull %639) #10
  %929 = icmp eq i8 %928, 0
  br i1 %929, label %930, label %934

930:                                              ; preds = %924
  %931 = load ptr, ptr %552, align 8, !tbaa !93
  %932 = getelementptr inbounds %struct.PBVHNode, ptr %931, i64 %740, i32 17
  %933 = load ptr, ptr %932, align 8, !tbaa !62
  call void @BLI_gset_insert(ptr noundef %933, ptr noundef nonnull %639) #10
  br label %934

934:                                              ; preds = %930, %924, %917
  %935 = call i32 @BM_vert_edge_count(ptr noundef %683) #10
  %936 = icmp sgt i32 %935, 8
  br i1 %936, label %937, label %986

937:                                              ; preds = %934
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #10
  store i8 4, ptr %573, align 4, !tbaa !76
  store ptr @bmiter__edge_of_vert_begin, ptr %574, align 8, !tbaa !78
  store ptr @bmiter__edge_of_vert_step, ptr %575, align 8, !tbaa !79
  store ptr %683, ptr %16, align 8, !tbaa !85
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %16) #10
  %938 = load ptr, ptr %575, align 8, !tbaa !79
  %939 = call ptr %938(ptr noundef nonnull %16) #10
  %940 = icmp eq ptr %939, null
  br i1 %940, label %985, label %941

941:                                              ; preds = %937, %981
  %942 = phi ptr [ %983, %981 ], [ %939, %937 ]
  %943 = call float @BM_edge_calc_length_squared(ptr noundef nonnull %942) #10
  %944 = fcmp ogt float %943, %435
  br i1 %944, label %945, label %981

945:                                              ; preds = %941
  %946 = fneg float %943
  br i1 %554, label %961, label %947

947:                                              ; preds = %945
  %948 = getelementptr inbounds %struct.BMEdge, ptr %942, i64 0, i32 2
  %949 = load ptr, ptr %948, align 8, !tbaa !114
  %950 = load ptr, ptr %949, align 8, !tbaa !86
  %951 = getelementptr inbounds i8, ptr %950, i64 %576
  %952 = load float, ptr %951, align 4, !tbaa !58
  %953 = fcmp uge float %952, 1.000000e+00
  br i1 %953, label %954, label %961

954:                                              ; preds = %947
  %955 = getelementptr inbounds %struct.BMEdge, ptr %942, i64 0, i32 3
  %956 = load ptr, ptr %955, align 8, !tbaa !117
  %957 = load ptr, ptr %956, align 8, !tbaa !86
  %958 = getelementptr inbounds i8, ptr %957, i64 %576
  %959 = load float, ptr %958, align 4, !tbaa !58
  %960 = fcmp uge float %959, 1.000000e+00
  br i1 %960, label %981, label %961

961:                                              ; preds = %954, %947, %945
  %962 = getelementptr inbounds %struct.BMEdge, ptr %942, i64 0, i32 2
  %963 = load ptr, ptr %962, align 8, !tbaa !114
  %964 = getelementptr inbounds %struct.BMHeader, ptr %963, i64 0, i32 3
  %965 = load i8, ptr %964, align 1, !tbaa !53
  %966 = and i8 %965, 2
  %967 = icmp eq i8 %966, 0
  br i1 %967, label %968, label %981

968:                                              ; preds = %961
  %969 = getelementptr inbounds %struct.BMEdge, ptr %942, i64 0, i32 3
  %970 = load ptr, ptr %969, align 8, !tbaa !117
  %971 = getelementptr inbounds %struct.BMHeader, ptr %970, i64 0, i32 3
  %972 = load i8, ptr %971, align 1, !tbaa !53
  %973 = and i8 %972, 2
  %974 = icmp eq i8 %973, 0
  br i1 %974, label %975, label %981

975:                                              ; preds = %968
  %976 = call ptr @BLI_mempool_alloc(ptr noundef %430) #10
  %977 = load ptr, ptr %962, align 8, !tbaa !114
  store ptr %977, ptr %976, align 8, !tbaa !55
  %978 = load ptr, ptr %969, align 8, !tbaa !117
  %979 = getelementptr inbounds ptr, ptr %976, i64 1
  store ptr %978, ptr %979, align 8, !tbaa !55
  %980 = call ptr @BLI_heap_insert(ptr noundef %431, float noundef %946, ptr noundef nonnull %976) #10
  br label %981

981:                                              ; preds = %975, %968, %961, %954, %941
  %982 = load ptr, ptr %575, align 8, !tbaa !79
  %983 = call ptr %982(ptr noundef nonnull %16) #10
  %984 = icmp eq ptr %983, null
  br i1 %984, label %985, label %941, !llvm.loop !140

985:                                              ; preds = %981, %937
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #10
  br label %986

986:                                              ; preds = %985, %934
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #10
  %987 = add nuw nsw i64 %671, 1
  %988 = load i32, ptr %30, align 4, !tbaa !110
  %989 = sext i32 %988 to i64
  %990 = icmp slt i64 %987, %989
  br i1 %990, label %670, label %991, !llvm.loop !141

991:                                              ; preds = %986, %665
  %992 = load ptr, ptr %37, align 8, !tbaa !69
  call void @BM_edge_kill(ptr noundef %992, ptr noundef nonnull %602) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #10
  br label %993

993:                                              ; preds = %991, %611, %604, %601, %577
  %994 = call zeroext i8 @BLI_heap_is_empty(ptr noundef %431) #10
  %995 = icmp eq i8 %994, 0
  br i1 %995, label %577, label %996

996:                                              ; preds = %993, %543
  call void @BLI_heap_free(ptr noundef %431, ptr noundef null) #10
  call void @BLI_mempool_destroy(ptr noundef %430) #10
  br label %997

997:                                              ; preds = %996, %425
  %998 = phi i8 [ %547, %996 ], [ %426, %425 ]
  %999 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %1000 = load i32, ptr %999, align 4, !tbaa !94
  %1001 = icmp sgt i32 %1000, 0
  br i1 %1001, label %1002, label %1018

1002:                                             ; preds = %997
  %1003 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  br label %1004

1004:                                             ; preds = %1002, %1013
  %1005 = phi i64 [ 0, %1002 ], [ %1014, %1013 ]
  %1006 = load ptr, ptr %1003, align 8, !tbaa !93
  %1007 = getelementptr inbounds %struct.PBVHNode, ptr %1006, i64 %1005, i32 10
  %1008 = load i16, ptr %1007, align 8
  %1009 = and i16 %1008, 257
  %1010 = icmp eq i16 %1009, 257
  br i1 %1010, label %1011, label %1013

1011:                                             ; preds = %1004
  %1012 = and i16 %1008, -257
  store i16 %1012, ptr %1007, align 8
  br label %1013

1013:                                             ; preds = %1011, %1004
  %1014 = add nuw nsw i64 %1005, 1
  %1015 = load i32, ptr %999, align 4, !tbaa !94
  %1016 = sext i32 %1015 to i64
  %1017 = icmp slt i64 %1014, %1016
  br i1 %1017, label %1004, label %1018, !llvm.loop !142

1018:                                             ; preds = %1013, %997
  call void @_bli_buffer_free(ptr noundef nonnull %26) #10
  call void @_bli_buffer_free(ptr noundef nonnull %28) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %28) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %27) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %26) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %25) #10
  ret i8 %998
}

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_heap_is_empty(ptr noundef) local_unnamed_addr #2

declare void @BLI_heap_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

declare void @_bli_buffer_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pbvh_bmesh_node_save_orig(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.GSetIterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #10
  %3 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %123

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 16
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = tail call i32 @BLI_gset_size(ptr noundef %8) #10
  %10 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  %12 = tail call i32 @BLI_gset_size(ptr noundef %11) #10
  %13 = add nsw i32 %12, %9
  %14 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 15
  %15 = load ptr, ptr %14, align 8, !tbaa !48
  %16 = tail call i32 @BLI_gset_size(ptr noundef %15) #10
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !55
  %18 = sext i32 %13 to i64
  %19 = mul nsw i64 %18, 12
  %20 = tail call ptr %17(i64 noundef %19, ptr noundef nonnull @__func__.BKE_pbvh_bmesh_node_save_orig) #10
  store ptr %20, ptr %3, align 8, !tbaa !43
  %21 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !55
  %22 = sext i32 %16 to i64
  %23 = mul nsw i64 %22, 12
  %24 = tail call ptr %21(i64 noundef %23, ptr noundef nonnull @__func__.BKE_pbvh_bmesh_node_save_orig) #10
  %25 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 19
  store ptr %24, ptr %25, align 8, !tbaa !42
  %26 = load ptr, ptr %7, align 8, !tbaa !60
  call void @BLI_ghashIterator_init(ptr noundef nonnull %2, ptr noundef %26) #10
  %27 = getelementptr inbounds %struct.GHashIterator, ptr %2, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  %29 = icmp eq ptr %28, null
  br i1 %29, label %52, label %30

30:                                               ; preds = %6, %30
  %31 = phi i64 [ %47, %30 ], [ 0, %6 ]
  %32 = phi ptr [ %48, %30 ], [ %28, %6 ]
  %33 = getelementptr inbounds %struct._gh_Entry, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !51
  %35 = load ptr, ptr %3, align 8, !tbaa !43
  %36 = getelementptr inbounds [3 x float], ptr %35, i64 %31
  %37 = getelementptr inbounds %struct.BMVert, ptr %34, i64 0, i32 2
  %38 = load float, ptr %37, align 4, !tbaa !58
  store float %38, ptr %36, align 4, !tbaa !58
  %39 = getelementptr inbounds %struct.BMVert, ptr %34, i64 0, i32 2, i64 1
  %40 = load float, ptr %39, align 4, !tbaa !58
  %41 = getelementptr inbounds float, ptr %36, i64 1
  store float %40, ptr %41, align 4, !tbaa !58
  %42 = getelementptr inbounds %struct.BMVert, ptr %34, i64 0, i32 2, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !58
  %44 = getelementptr inbounds float, ptr %36, i64 2
  store float %43, ptr %44, align 4, !tbaa !58
  %45 = getelementptr inbounds %struct.BMHeader, ptr %34, i64 0, i32 1
  %46 = trunc i64 %31 to i32
  store i32 %46, ptr %45, align 8, !tbaa !143
  %47 = add nuw i64 %31, 1
  call void @BLI_ghashIterator_step(ptr noundef nonnull %2) #10
  %48 = load ptr, ptr %27, align 8, !tbaa !49
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %30, !llvm.loop !144

50:                                               ; preds = %30
  %51 = and i64 %47, 4294967295
  br label %52

52:                                               ; preds = %50, %6
  %53 = phi i64 [ 0, %6 ], [ %51, %50 ]
  %54 = getelementptr inbounds %struct.GHashIterator, ptr %2, i64 0, i32 1
  %55 = load ptr, ptr %10, align 8, !tbaa !62
  call void @BLI_ghashIterator_init(ptr noundef nonnull %2, ptr noundef %55) #10
  %56 = load ptr, ptr %54, align 8, !tbaa !49
  %57 = icmp eq ptr %56, null
  br i1 %57, label %78, label %58

58:                                               ; preds = %52, %58
  %59 = phi i64 [ %75, %58 ], [ %53, %52 ]
  %60 = phi ptr [ %76, %58 ], [ %56, %52 ]
  %61 = getelementptr inbounds %struct._gh_Entry, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !51
  %63 = load ptr, ptr %3, align 8, !tbaa !43
  %64 = getelementptr inbounds [3 x float], ptr %63, i64 %59
  %65 = getelementptr inbounds %struct.BMVert, ptr %62, i64 0, i32 2
  %66 = load float, ptr %65, align 4, !tbaa !58
  store float %66, ptr %64, align 4, !tbaa !58
  %67 = getelementptr inbounds %struct.BMVert, ptr %62, i64 0, i32 2, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !58
  %69 = getelementptr inbounds float, ptr %64, i64 1
  store float %68, ptr %69, align 4, !tbaa !58
  %70 = getelementptr inbounds %struct.BMVert, ptr %62, i64 0, i32 2, i64 2
  %71 = load float, ptr %70, align 4, !tbaa !58
  %72 = getelementptr inbounds float, ptr %64, i64 2
  store float %71, ptr %72, align 4, !tbaa !58
  %73 = getelementptr inbounds %struct.BMHeader, ptr %62, i64 0, i32 1
  %74 = trunc i64 %59 to i32
  store i32 %74, ptr %73, align 8, !tbaa !143
  %75 = add nuw i64 %59, 1
  call void @BLI_ghashIterator_step(ptr noundef nonnull %2) #10
  %76 = load ptr, ptr %54, align 8, !tbaa !49
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %58, !llvm.loop !145

78:                                               ; preds = %58, %52
  %79 = load ptr, ptr %14, align 8, !tbaa !48
  call void @BLI_ghashIterator_init(ptr noundef nonnull %2, ptr noundef %79) #10
  %80 = load ptr, ptr %54, align 8, !tbaa !49
  %81 = icmp eq ptr %80, null
  br i1 %81, label %120, label %82

82:                                               ; preds = %78, %116
  %83 = phi ptr [ %118, %116 ], [ %80, %78 ]
  %84 = phi i32 [ %117, %116 ], [ 0, %78 ]
  %85 = getelementptr inbounds %struct._gh_Entry, ptr %83, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !51
  %87 = getelementptr inbounds %struct.BMHeader, ptr %86, i64 0, i32 3
  %88 = load i8, ptr %87, align 1, !tbaa !53
  %89 = and i8 %88, 2
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %116

91:                                               ; preds = %82
  %92 = load ptr, ptr %25, align 8, !tbaa !42
  %93 = sext i32 %84 to i64
  %94 = getelementptr inbounds [3 x i32], ptr %92, i64 %93
  %95 = getelementptr inbounds %struct.BMFace, ptr %86, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !98
  %97 = getelementptr inbounds %struct.BMLoop, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !99
  %99 = getelementptr inbounds %struct.BMHeader, ptr %98, i64 0, i32 1
  %100 = load i32, ptr %99, align 8, !tbaa !143
  store i32 %100, ptr %94, align 4, !tbaa !44
  %101 = getelementptr inbounds %struct.BMLoop, ptr %96, i64 0, i32 6
  %102 = load ptr, ptr %101, align 8, !tbaa !101
  %103 = getelementptr inbounds %struct.BMLoop, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !99
  %105 = getelementptr inbounds %struct.BMHeader, ptr %104, i64 0, i32 1
  %106 = load i32, ptr %105, align 8, !tbaa !143
  %107 = getelementptr inbounds i32, ptr %94, i64 1
  store i32 %106, ptr %107, align 4, !tbaa !44
  %108 = getelementptr inbounds %struct.BMLoop, ptr %102, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !101
  %110 = getelementptr inbounds %struct.BMLoop, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !99
  %112 = getelementptr inbounds %struct.BMHeader, ptr %111, i64 0, i32 1
  %113 = load i32, ptr %112, align 8, !tbaa !143
  %114 = getelementptr inbounds i32, ptr %94, i64 2
  store i32 %113, ptr %114, align 4, !tbaa !44
  %115 = add nsw i32 %84, 1
  br label %116

116:                                              ; preds = %82, %91
  %117 = phi i32 [ %115, %91 ], [ %84, %82 ]
  call void @BLI_ghashIterator_step(ptr noundef nonnull %2) #10
  %118 = load ptr, ptr %54, align 8, !tbaa !49
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %82, !llvm.loop !146

120:                                              ; preds = %116, %78
  %121 = phi i32 [ 0, %78 ], [ %117, %116 ]
  %122 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 20
  store i32 %121, ptr %122, align 8, !tbaa !34
  br label %123

123:                                              ; preds = %1, %120
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #10
  ret void
}

declare i32 @BLI_gset_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_pbvh_bmesh_after_stroke(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !94
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %5, %29
  %8 = phi i64 [ 0, %5 ], [ %30, %29 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !93
  %10 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 %8, i32 10
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 %8, i32 18
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  tail call void %19(ptr noundef nonnull %16) #10
  br label %20

20:                                               ; preds = %18, %14
  %21 = getelementptr inbounds %struct.PBVHNode, ptr %9, i64 %8, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  tail call void %25(ptr noundef nonnull %22) #10
  br label %26

26:                                               ; preds = %20, %24
  %27 = trunc i64 %8 to i32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %15, i8 0, i64 20, i1 false)
  %28 = tail call fastcc zeroext i8 @pbvh_bmesh_node_limit_ensure(ptr noundef %0, i32 noundef %27), !range !97
  br label %29

29:                                               ; preds = %26, %7
  %30 = add nuw nsw i64 %8, 1
  %31 = load i32, ptr %2, align 4, !tbaa !94
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %7, label %34, !llvm.loop !147

34:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @BKE_pbvh_node_mark_topology_update(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 10
  %3 = load i16, ptr %2, align 8
  %4 = or i16 %3, 256
  store i16 %4, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_pbvh_bmesh_node_unique_verts(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_pbvh_bmesh_node_other_verts(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @BKE_pbvh_bmesh_node_faces(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.PBVHNode, ptr %0, i64 0, i32 15
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  ret ptr %3
}

declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

declare void @bmiter__face_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

declare ptr @BLI_ghash_ptr_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BB_reset(ptr noundef) local_unnamed_addr #2

declare void @BB_expand(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BBC_update_centroid(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @pbvh_bmesh_node_split(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.GSetIterator, align 8
  %5 = alloca %struct.BB, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %6 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 25
  %7 = load i32, ptr %6, align 8, !tbaa !65
  %8 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 26
  %9 = load i32, ptr %8, align 4, !tbaa !68
  %10 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = sext i32 %2 to i64
  %13 = getelementptr inbounds %struct.PBVHNode, ptr %11, i64 %12, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = tail call i32 @BLI_gset_size(ptr noundef %14) #10
  %16 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 8
  %17 = load i32, ptr %16, align 8, !tbaa !74
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  tail call fastcc void @pbvh_bmesh_node_finalize(ptr noundef %0, i32 noundef %2, i32 noundef %7, i32 noundef %9)
  br label %174

20:                                               ; preds = %3
  call void @BB_reset(ptr noundef nonnull %5) #10
  %21 = load ptr, ptr %13, align 8, !tbaa !48
  call void @BLI_ghashIterator_init(ptr noundef nonnull %4, ptr noundef %21) #10
  %22 = getelementptr inbounds %struct.GHashIterator, ptr %4, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !49
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %20, %25
  %26 = phi ptr [ %31, %25 ], [ %23, %20 ]
  %27 = getelementptr inbounds %struct._gh_Entry, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !51
  %29 = call ptr @BLI_ghash_lookup(ptr noundef %1, ptr noundef %28) #10
  %30 = getelementptr inbounds %struct.BBC, ptr %29, i64 0, i32 2
  call void @BB_expand(ptr noundef nonnull %5, ptr noundef nonnull %30) #10
  call void @BLI_ghashIterator_step(ptr noundef nonnull %4) #10
  %31 = load ptr, ptr %22, align 8, !tbaa !49
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %25, !llvm.loop !148

33:                                               ; preds = %25, %20
  %34 = getelementptr inbounds %struct.GHashIterator, ptr %4, i64 0, i32 1
  %35 = call i32 @BB_widest_axis(ptr noundef nonnull %5) #10
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.BB, ptr %5, i64 0, i32 1, i64 %36
  %38 = load float, ptr %37, align 4, !tbaa !58
  %39 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 %36
  %40 = load float, ptr %39, align 4, !tbaa !58
  %41 = fadd float %38, %40
  %42 = fmul float %41, 5.000000e-01
  %43 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !94
  %45 = getelementptr inbounds %struct.PBVHNode, ptr %11, i64 %12, i32 3
  store i32 %44, ptr %45, align 8, !tbaa !149
  %46 = add nsw i32 %44, 2
  call void @pbvh_grow_nodes(ptr noundef %0, i32 noundef %46) #10
  %47 = load ptr, ptr %10, align 8, !tbaa !93
  %48 = getelementptr inbounds %struct.PBVHNode, ptr %47, i64 %12
  %49 = sext i32 %44 to i64
  %50 = add nsw i32 %44, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.PBVHNode, ptr %47, i64 %49, i32 10
  %53 = load i16, ptr %52, align 8
  %54 = or i16 %53, 1
  store i16 %54, ptr %52, align 8
  %55 = getelementptr inbounds %struct.PBVHNode, ptr %47, i64 %51, i32 10
  %56 = load i16, ptr %55, align 8
  %57 = or i16 %56, 1
  store i16 %57, ptr %55, align 8
  %58 = getelementptr inbounds %struct.PBVHNode, ptr %47, i64 %12, i32 15
  %59 = load ptr, ptr %58, align 8, !tbaa !48
  %60 = call i32 @BLI_gset_size(ptr noundef %59) #10
  %61 = sdiv i32 %60, 2
  %62 = call ptr @BLI_gset_ptr_new_ex(ptr noundef nonnull @.str.1, i32 noundef %61) #10
  %63 = getelementptr inbounds %struct.PBVHNode, ptr %47, i64 %49, i32 15
  store ptr %62, ptr %63, align 8, !tbaa !48
  %64 = load ptr, ptr %58, align 8, !tbaa !48
  %65 = call i32 @BLI_gset_size(ptr noundef %64) #10
  %66 = sdiv i32 %65, 2
  %67 = call ptr @BLI_gset_ptr_new_ex(ptr noundef nonnull @.str.1, i32 noundef %66) #10
  %68 = getelementptr inbounds %struct.PBVHNode, ptr %47, i64 %51, i32 15
  store ptr %67, ptr %68, align 8, !tbaa !48
  %69 = load ptr, ptr %58, align 8, !tbaa !48
  call void @BLI_ghashIterator_init(ptr noundef nonnull %4, ptr noundef %69) #10
  %70 = load ptr, ptr %34, align 8, !tbaa !49
  %71 = icmp eq ptr %70, null
  br i1 %71, label %84, label %72

72:                                               ; preds = %33, %72
  %73 = phi ptr [ %82, %72 ], [ %70, %33 ]
  %74 = getelementptr inbounds %struct._gh_Entry, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !51
  %76 = call ptr @BLI_ghash_lookup(ptr noundef %1, ptr noundef %75) #10
  %77 = getelementptr inbounds %struct.BBC, ptr %76, i64 0, i32 2, i64 %36
  %78 = load float, ptr %77, align 4, !tbaa !58
  %79 = fcmp olt float %78, %42
  %80 = select i1 %79, ptr %63, ptr %68
  %81 = load ptr, ptr %80, align 8, !tbaa !48
  call void @BLI_gset_insert(ptr noundef %81, ptr noundef %75) #10
  call void @BLI_ghashIterator_step(ptr noundef nonnull %4) #10
  %82 = load ptr, ptr %34, align 8, !tbaa !49
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %72, !llvm.loop !150

84:                                               ; preds = %72, %33
  %85 = load ptr, ptr %63, align 8, !tbaa !48
  %86 = call i32 @BLI_gset_size(ptr noundef %85) #10
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %68, align 8, !tbaa !48
  %90 = call i32 @BLI_gset_size(ptr noundef %89) #10
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88, %84
  %93 = phi ptr [ %63, %84 ], [ %68, %88 ]
  %94 = phi ptr [ %68, %84 ], [ %63, %88 ]
  %95 = load ptr, ptr %93, align 8, !tbaa !48
  %96 = load ptr, ptr %94, align 8, !tbaa !48
  br label %97

97:                                               ; preds = %92, %88
  %98 = phi ptr [ undef, %88 ], [ %96, %92 ]
  %99 = phi ptr [ null, %88 ], [ %95, %92 ]
  %100 = icmp eq ptr %99, null
  br i1 %100, label %108, label %101

101:                                              ; preds = %97
  call void @BLI_ghashIterator_init(ptr noundef nonnull %4, ptr noundef %98) #10
  %102 = load ptr, ptr %34, align 8, !tbaa !49
  %103 = icmp eq ptr %102, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct._gh_Entry, ptr %102, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !51
  call void @BLI_gset_insert(ptr noundef nonnull %99, ptr noundef %106) #10
  %107 = call zeroext i8 @BLI_gset_remove(ptr noundef %98, ptr noundef %106, ptr noundef null) #10
  br label %108

108:                                              ; preds = %101, %104, %97
  %109 = getelementptr inbounds %struct.PBVHNode, ptr %47, i64 %12, i32 16
  %110 = load ptr, ptr %109, align 8, !tbaa !60
  %111 = icmp eq ptr %110, null
  br i1 %111, label %127, label %112

112:                                              ; preds = %108
  call void @BLI_ghashIterator_init(ptr noundef nonnull %4, ptr noundef nonnull %110) #10
  %113 = load ptr, ptr %34, align 8, !tbaa !49
  %114 = icmp eq ptr %113, null
  br i1 %114, label %125, label %115

115:                                              ; preds = %112
  %116 = sext i32 %7 to i64
  br label %117

117:                                              ; preds = %115, %117
  %118 = phi ptr [ %113, %115 ], [ %123, %117 ]
  %119 = getelementptr inbounds %struct._gh_Entry, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !51
  %121 = load ptr, ptr %120, align 8, !tbaa !86
  %122 = getelementptr inbounds i8, ptr %121, i64 %116
  store i32 -1, ptr %122, align 4, !tbaa !44
  call void @BLI_ghashIterator_step(ptr noundef nonnull %4) #10
  %123 = load ptr, ptr %34, align 8, !tbaa !49
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %117, !llvm.loop !151

125:                                              ; preds = %117, %112
  %126 = load ptr, ptr %109, align 8, !tbaa !60
  call void @BLI_gset_free(ptr noundef %126, ptr noundef null) #10
  br label %127

127:                                              ; preds = %125, %108
  %128 = load ptr, ptr %58, align 8, !tbaa !48
  call void @BLI_ghashIterator_init(ptr noundef nonnull %4, ptr noundef %128) #10
  %129 = load ptr, ptr %34, align 8, !tbaa !49
  %130 = icmp eq ptr %129, null
  br i1 %130, label %141, label %131

131:                                              ; preds = %127
  %132 = sext i32 %9 to i64
  br label %133

133:                                              ; preds = %131, %133
  %134 = phi ptr [ %129, %131 ], [ %139, %133 ]
  %135 = getelementptr inbounds %struct._gh_Entry, ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !51
  %137 = load ptr, ptr %136, align 8, !tbaa !90
  %138 = getelementptr inbounds i8, ptr %137, i64 %132
  store i32 -1, ptr %138, align 4, !tbaa !44
  call void @BLI_ghashIterator_step(ptr noundef nonnull %4) #10
  %139 = load ptr, ptr %34, align 8, !tbaa !49
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %133, !llvm.loop !152

141:                                              ; preds = %133, %127
  %142 = load ptr, ptr %58, align 8, !tbaa !48
  call void @BLI_gset_free(ptr noundef %142, ptr noundef null) #10
  %143 = getelementptr inbounds %struct.PBVHNode, ptr %47, i64 %12, i32 17
  %144 = load ptr, ptr %143, align 8, !tbaa !62
  %145 = icmp eq ptr %144, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %141
  call void @BLI_gset_free(ptr noundef nonnull %144, ptr noundef null) #10
  br label %147

147:                                              ; preds = %146, %141
  %148 = getelementptr inbounds %struct.PBVHNode, ptr %47, i64 %12, i32 12
  %149 = load ptr, ptr %148, align 8, !tbaa !153
  %150 = icmp eq ptr %149, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %147
  %152 = load ptr, ptr @MEM_freeN, align 8, !tbaa !55
  call void %152(ptr noundef nonnull %149) #10
  br label %153

153:                                              ; preds = %151, %147
  store ptr null, ptr %148, align 8, !tbaa !153
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %58, i8 0, i64 24, i1 false)
  %154 = load ptr, ptr %48, align 8, !tbaa !154
  %155 = icmp eq ptr %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %153
  call void @GPU_free_pbvh_buffers(ptr noundef nonnull %154) #10
  store ptr null, ptr %48, align 8, !tbaa !154
  br label %157

157:                                              ; preds = %156, %153
  %158 = getelementptr inbounds %struct.PBVHNode, ptr %47, i64 %12, i32 10
  %159 = load i16, ptr %158, align 8
  %160 = and i16 %159, -2
  store i16 %160, ptr %158, align 8
  call fastcc void @pbvh_bmesh_node_split(ptr noundef %0, ptr noundef %1, i32 noundef %44)
  call fastcc void @pbvh_bmesh_node_split(ptr noundef %0, ptr noundef %1, i32 noundef %50)
  %161 = load ptr, ptr %10, align 8, !tbaa !93
  %162 = getelementptr inbounds %struct.PBVHNode, ptr %161, i64 %12, i32 1
  call void @BB_reset(ptr noundef nonnull %162) #10
  %163 = load ptr, ptr %10, align 8, !tbaa !93
  %164 = getelementptr inbounds %struct.PBVHNode, ptr %161, i64 %12, i32 3
  %165 = load i32, ptr %164, align 8, !tbaa !149
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.PBVHNode, ptr %163, i64 %166, i32 1
  call void @BB_expand_with_bb(ptr noundef nonnull %162, ptr noundef nonnull %167) #10
  %168 = load ptr, ptr %10, align 8, !tbaa !93
  %169 = load i32, ptr %164, align 8, !tbaa !149
  %170 = sext i32 %169 to i64
  %171 = getelementptr %struct.PBVHNode, ptr %168, i64 %170
  %172 = getelementptr %struct.PBVHNode, ptr %171, i64 1, i32 1
  call void @BB_expand_with_bb(ptr noundef nonnull %162, ptr noundef %172) #10
  %173 = getelementptr inbounds %struct.PBVHNode, ptr %161, i64 %12, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %173, ptr noundef nonnull align 8 dereferenceable(24) %162, i64 24, i1 false), !tbaa.struct !106
  br label %174

174:                                              ; preds = %157, %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BB_widest_axis(ptr noundef) local_unnamed_addr #2

declare void @pbvh_grow_nodes(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_gset_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_gset_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @GPU_free_pbvh_buffers(ptr noundef) local_unnamed_addr #2

declare void @BB_expand_with_bb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare ptr @BLI_gset_ptr_new(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_gset_haskey(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_gset_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_pbvh_node_mark_rebuild_draw(ptr noundef) local_unnamed_addr #2

declare void @BKE_pbvh_node_fully_hidden_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_heap_new() local_unnamed_addr #2

declare void @closest_on_tri_to_point_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BM_edge_calc_length_squared(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_heap_insert(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_heap_popmin(ptr noundef) local_unnamed_addr #2

declare void @BLI_mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @pbvh_bmesh_vert_remove(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 2
  %7 = load i8, ptr %6, align 4, !tbaa !126
  %8 = icmp eq i8 %7, 1
  %9 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 25
  %10 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 26
  %11 = select i1 %8, ptr %9, ptr %10
  %12 = load i32, ptr %11, align 4, !tbaa !44
  %13 = load ptr, ptr %1, align 8, !tbaa !128
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds i8, ptr %13, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !44
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.PBVHNode, ptr %5, i64 %17, i32 16
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  %20 = tail call zeroext i8 @BLI_gset_remove(ptr noundef %19, ptr noundef nonnull %1, ptr noundef null) #10
  %21 = load ptr, ptr %1, align 8, !tbaa !86
  %22 = load i32, ptr %9, align 8, !tbaa !65
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %21, i64 %23
  store i32 -1, ptr %24, align 4, !tbaa !44
  %25 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 5, ptr %25, align 4, !tbaa !76
  %26 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__face_of_vert_begin, ptr %26, align 8, !tbaa !78
  %27 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__face_of_vert_step, ptr %27, align 8, !tbaa !79
  store ptr %1, ptr %3, align 8, !tbaa !85
  call void @bmiter__face_of_vert_begin(ptr noundef nonnull %3) #10
  %28 = load ptr, ptr %27, align 8, !tbaa !79
  %29 = call ptr %28(ptr noundef nonnull %3) #10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %58, label %31

31:                                               ; preds = %2, %53
  %32 = phi ptr [ %56, %53 ], [ %29, %2 ]
  %33 = phi i32 [ %54, %53 ], [ -1, %2 ]
  %34 = getelementptr inbounds %struct.BMHeader, ptr %32, i64 0, i32 2
  %35 = load i8, ptr %34, align 4, !tbaa !126
  %36 = icmp eq i8 %35, 1
  %37 = select i1 %36, ptr %9, ptr %10
  %38 = load i32, ptr %37, align 4, !tbaa !44
  %39 = load ptr, ptr %32, align 8, !tbaa !128
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, ptr %39, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !44
  %43 = icmp eq i32 %33, %42
  br i1 %43, label %53, label %44

44:                                               ; preds = %31
  %45 = load ptr, ptr %4, align 8, !tbaa !93
  %46 = sext i32 %42 to i64
  %47 = getelementptr inbounds %struct.PBVHNode, ptr %45, i64 %46, i32 10
  %48 = load i16, ptr %47, align 8
  %49 = or i16 %48, 20
  store i16 %49, ptr %47, align 8
  %50 = getelementptr inbounds %struct.PBVHNode, ptr %45, i64 %46, i32 17
  %51 = load ptr, ptr %50, align 8, !tbaa !62
  %52 = call zeroext i8 @BLI_gset_remove(ptr noundef %51, ptr noundef nonnull %1, ptr noundef null) #10
  br label %53

53:                                               ; preds = %31, %44
  %54 = phi i32 [ %42, %44 ], [ %33, %31 ]
  %55 = load ptr, ptr %27, align 8, !tbaa !79
  %56 = call ptr %55(ptr noundef nonnull %3) #10
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %31, !llvm.loop !155

58:                                               ; preds = %53, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pbvh_bmesh_face_remove(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = getelementptr inbounds %struct.BMHeader, ptr %1, i64 0, i32 2
  %8 = load i8, ptr %7, align 4, !tbaa !126
  %9 = icmp eq i8 %8, 1
  %10 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 25
  %11 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 26
  %12 = select i1 %9, ptr %10, ptr %11
  %13 = load i32, ptr %12, align 4, !tbaa !44
  %14 = load ptr, ptr %1, align 8, !tbaa !128
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i8, ptr %14, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !44
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.PBVHNode, ptr %6, i64 %18
  %20 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !98
  %22 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %23 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %24 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %25 = getelementptr inbounds %struct.PBVHNode, ptr %6, i64 %18, i32 16
  %26 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  %27 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %28 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %29 = getelementptr inbounds %struct.PBVHNode, ptr %6, i64 %18, i32 17
  br label %30

30:                                               ; preds = %143, %2
  %31 = phi ptr [ %21, %2 ], [ %145, %143 ]
  %32 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  store i8 5, ptr %22, align 4, !tbaa !76
  store ptr @bmiter__face_of_vert_begin, ptr %23, align 8, !tbaa !78
  store ptr @bmiter__face_of_vert_step, ptr %24, align 8, !tbaa !79
  store ptr %33, ptr %4, align 8, !tbaa !85
  call void @bmiter__face_of_vert_begin(ptr noundef nonnull %4) #10
  %34 = load ptr, ptr %24, align 8, !tbaa !79
  %35 = call ptr %34(ptr noundef nonnull %4) #10
  %36 = icmp eq ptr %35, null
  br i1 %36, label %58, label %37

37:                                               ; preds = %30, %37
  %38 = phi ptr [ %56, %37 ], [ %35, %30 ]
  %39 = phi i32 [ %54, %37 ], [ 0, %30 ]
  %40 = load ptr, ptr %5, align 8, !tbaa !93
  %41 = getelementptr inbounds %struct.BMHeader, ptr %38, i64 0, i32 2
  %42 = load i8, ptr %41, align 4, !tbaa !126
  %43 = icmp eq i8 %42, 1
  %44 = select i1 %43, ptr %10, ptr %11
  %45 = load i32, ptr %44, align 4, !tbaa !44
  %46 = load ptr, ptr %38, align 8, !tbaa !128
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, ptr %46, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !44
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.PBVHNode, ptr %40, i64 %50
  %52 = icmp eq ptr %51, %19
  %53 = zext i1 %52 to i32
  %54 = add nuw nsw i32 %39, %53
  %55 = load ptr, ptr %24, align 8, !tbaa !79
  %56 = call ptr %55(ptr noundef nonnull %4) #10
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %37, !llvm.loop !156

58:                                               ; preds = %37, %30
  %59 = phi i32 [ 0, %30 ], [ %54, %37 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %143

61:                                               ; preds = %58
  %62 = load ptr, ptr %25, align 8, !tbaa !60
  %63 = call zeroext i8 @BLI_gset_haskey(ptr noundef %62, ptr noundef %33) #10
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %140, label %65

65:                                               ; preds = %61
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  %66 = load ptr, ptr %5, align 8, !tbaa !93
  %67 = getelementptr inbounds %struct.BMHeader, ptr %33, i64 0, i32 2
  %68 = load i8, ptr %67, align 4, !tbaa !126
  %69 = icmp eq i8 %68, 1
  %70 = select i1 %69, ptr %10, ptr %11
  %71 = load i32, ptr %70, align 4, !tbaa !44
  %72 = load ptr, ptr %33, align 8, !tbaa !128
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, ptr %72, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !44
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.PBVHNode, ptr %66, i64 %76
  store i8 5, ptr %26, align 4, !tbaa !76
  store ptr @bmiter__face_of_vert_begin, ptr %27, align 8, !tbaa !78
  store ptr @bmiter__face_of_vert_step, ptr %28, align 8, !tbaa !79
  store ptr %33, ptr %3, align 8, !tbaa !85
  call void @bmiter__face_of_vert_begin(ptr noundef nonnull %3) #10
  %78 = load ptr, ptr %28, align 8, !tbaa !79
  %79 = call ptr %78(ptr noundef nonnull %3) #10
  %80 = icmp eq ptr %79, null
  br i1 %80, label %102, label %81

81:                                               ; preds = %65, %98
  %82 = phi ptr [ %97, %98 ], [ undef, %65 ]
  %83 = phi ptr [ %100, %98 ], [ %79, %65 ]
  %84 = load ptr, ptr %5, align 8, !tbaa !93
  %85 = getelementptr inbounds %struct.BMHeader, ptr %83, i64 0, i32 2
  %86 = load i8, ptr %85, align 4, !tbaa !126
  %87 = icmp eq i8 %86, 1
  %88 = select i1 %87, ptr %10, ptr %11
  %89 = load i32, ptr %88, align 4, !tbaa !44
  %90 = load ptr, ptr %83, align 8, !tbaa !128
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8, ptr %90, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !44
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.PBVHNode, ptr %84, i64 %94
  %96 = icmp eq ptr %95, %77
  %97 = select i1 %96, ptr %82, ptr %95
  br i1 %96, label %98, label %102

98:                                               ; preds = %81
  %99 = load ptr, ptr %28, align 8, !tbaa !79
  %100 = call ptr %99(ptr noundef nonnull %3) #10
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %81, !llvm.loop !157

102:                                              ; preds = %81, %98, %65
  %103 = phi ptr [ null, %65 ], [ %97, %81 ], [ null, %98 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  %104 = icmp eq ptr %103, null
  br i1 %104, label %143, label %105

105:                                              ; preds = %102
  %106 = load ptr, ptr %5, align 8, !tbaa !93
  %107 = load i8, ptr %67, align 4, !tbaa !126
  %108 = icmp eq i8 %107, 1
  %109 = select i1 %108, ptr %10, ptr %11
  %110 = load i32, ptr %109, align 4, !tbaa !44
  %111 = load ptr, ptr %33, align 8, !tbaa !128
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i8, ptr %111, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !44
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.PBVHNode, ptr %106, i64 %115, i32 10
  %117 = load i16, ptr %116, align 8
  %118 = or i16 %117, 20
  store i16 %118, ptr %116, align 8
  %119 = getelementptr inbounds %struct.PBVHNode, ptr %106, i64 %115, i32 16
  %120 = load ptr, ptr %119, align 8, !tbaa !60
  %121 = call zeroext i8 @BLI_gset_remove(ptr noundef %120, ptr noundef nonnull %33, ptr noundef null) #10
  %122 = load ptr, ptr %5, align 8, !tbaa !93
  %123 = ptrtoint ptr %103 to i64
  %124 = ptrtoint ptr %122 to i64
  %125 = sub i64 %123, %124
  %126 = sdiv exact i64 %125, 184
  %127 = trunc i64 %126 to i32
  %128 = load ptr, ptr %33, align 8, !tbaa !86
  %129 = load i32, ptr %10, align 8, !tbaa !65
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, ptr %128, i64 %130
  store i32 %127, ptr %131, align 4, !tbaa !44
  %132 = getelementptr inbounds %struct.PBVHNode, ptr %103, i64 0, i32 16
  %133 = load ptr, ptr %132, align 8, !tbaa !60
  call void @BLI_gset_insert(ptr noundef %133, ptr noundef nonnull %33) #10
  %134 = getelementptr inbounds %struct.PBVHNode, ptr %103, i64 0, i32 17
  %135 = load ptr, ptr %134, align 8, !tbaa !62
  %136 = call zeroext i8 @BLI_gset_remove(ptr noundef %135, ptr noundef nonnull %33, ptr noundef null) #10
  %137 = getelementptr inbounds %struct.PBVHNode, ptr %103, i64 0, i32 10
  %138 = load i16, ptr %137, align 8
  %139 = or i16 %138, 20
  store i16 %139, ptr %137, align 8
  br label %143

140:                                              ; preds = %61
  %141 = load ptr, ptr %29, align 8, !tbaa !62
  %142 = call zeroext i8 @BLI_gset_remove(ptr noundef %141, ptr noundef %33, ptr noundef null) #10
  br label %143

143:                                              ; preds = %102, %105, %58, %140
  %144 = getelementptr inbounds %struct.BMLoop, ptr %31, i64 0, i32 6
  %145 = load ptr, ptr %144, align 8, !tbaa !101
  %146 = icmp eq ptr %145, %21
  br i1 %146, label %147, label %30, !llvm.loop !158

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.PBVHNode, ptr %6, i64 %18, i32 15
  %149 = load ptr, ptr %148, align 8, !tbaa !48
  %150 = call zeroext i8 @BLI_gset_remove(ptr noundef %149, ptr noundef nonnull %1, ptr noundef null) #10
  %151 = load ptr, ptr %1, align 8, !tbaa !90
  %152 = load i32, ptr %11, align 4, !tbaa !68
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, ptr %151, i64 %153
  store i32 -1, ptr %154, align 4, !tbaa !44
  %155 = getelementptr inbounds %struct.PBVH, ptr %0, i64 0, i32 27
  %156 = load ptr, ptr %155, align 8, !tbaa !73
  call void @BM_log_face_removed(ptr noundef %156, ptr noundef nonnull %1) #10
  %157 = getelementptr inbounds %struct.PBVHNode, ptr %6, i64 %18, i32 10
  %158 = load i16, ptr %157, align 8
  %159 = or i16 %158, 18
  store i16 %159, ptr %157, align 8
  ret void
}

declare void @BM_face_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_edge_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_face_exists(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_buffer_resize(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BM_vert_face_count(ptr noundef) local_unnamed_addr #2

declare void @BM_log_vert_removed(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_vert_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_log_vert_before_modified(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_log_face_removed(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BM_face_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_log_face_added(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BM_vert_edge_count(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_edge_loop_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BM_edge_face_count(ptr noundef) local_unnamed_addr #2

declare i32 @BM_iter_as_array(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BM_log_vert_added(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }

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
!34 = !{!35, !40, i64 176}
!35 = !{!"PBVHNode", !36, i64 0, !39, i64 8, !39, i64 32, !40, i64 56, !36, i64 64, !40, i64 72, !36, i64 80, !40, i64 88, !40, i64 92, !36, i64 96, !40, i64 104, !41, i64 108, !36, i64 112, !40, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !40, i64 176}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"", !37, i64 0, !37, i64 12}
!40 = !{!"int", !37, i64 0}
!41 = !{!"float", !37, i64 0}
!42 = !{!35, !36, i64 168}
!43 = !{!35, !36, i64 160}
!44 = !{!40, !40, i64 0}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!35, !36, i64 136}
!49 = !{!50, !36, i64 8}
!50 = !{!"GHashIterator", !36, i64 0, !36, i64 8, !40, i64 16}
!51 = !{!52, !36, i64 8}
!52 = !{!"_gh_Entry", !36, i64 0, !36, i64 8, !36, i64 16}
!53 = !{!54, !37, i64 13}
!54 = !{!"BMHeader", !36, i64 0, !40, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!55 = !{!36, !36, i64 0}
!56 = distinct !{!56, !46, !47}
!57 = distinct !{!57, !46, !47}
!58 = !{!41, !41, i64 0}
!59 = distinct !{!59, !46, !47}
!60 = !{!35, !36, i64 144}
!61 = distinct !{!61, !46, !47}
!62 = !{!35, !36, i64 152}
!63 = distinct !{!63, !46, !47}
!64 = distinct !{!64, !46, !47}
!65 = !{!66, !40, i64 192}
!66 = !{!"PBVH", !40, i64 0, !40, i64 4, !36, i64 8, !40, i64 16, !40, i64 20, !36, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !67, i64 72, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !40, i64 144, !36, i64 152, !36, i64 160, !37, i64 168, !37, i64 169, !36, i64 176, !41, i64 184, !41, i64 188, !40, i64 192, !40, i64 196, !36, i64 200}
!67 = !{!"CCGKey", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36}
!68 = !{!66, !40, i64 196}
!69 = !{!66, !36, i64 176}
!70 = !{!66, !41, i64 184}
!71 = !{!66, !41, i64 188}
!72 = !{!66, !40, i64 0}
!73 = !{!66, !36, i64 200}
!74 = !{!66, !40, i64 40}
!75 = !{!66, !40, i64 4}
!76 = !{!77, !37, i64 60}
!77 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !40, i64 56, !37, i64 60}
!78 = !{!77, !36, i64 40}
!79 = !{!77, !36, i64 48}
!80 = !{!81, !36, i64 32}
!81 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !40, i64 128, !36, i64 136, !82, i64 144, !82, i64 344, !82, i64 544, !82, i64 744, !83, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !84, i64 960, !36, i64 976, !84, i64 984, !36, i64 1000}
!82 = !{!"CustomData", !36, i64 0, !37, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !36, i64 184, !36, i64 192}
!83 = !{!"short", !37, i64 0}
!84 = !{!"ListBase", !36, i64 0, !36, i64 8}
!85 = !{!37, !37, i64 0}
!86 = !{!87, !36, i64 0}
!87 = !{!"BMVert", !54, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!88 = distinct !{!88, !46, !47}
!89 = !{!81, !36, i64 56}
!90 = !{!91, !36, i64 0}
!91 = !{!"BMFace", !54, i64 0, !36, i64 16, !36, i64 24, !40, i64 32, !37, i64 36, !83, i64 48}
!92 = distinct !{!92, !46, !47}
!93 = !{!66, !36, i64 8}
!94 = !{!66, !40, i64 20}
!95 = !{!81, !40, i64 12}
!96 = distinct !{!96, !46, !47}
!97 = !{i8 0, i8 2}
!98 = !{!91, !36, i64 24}
!99 = !{!100, !36, i64 16}
!100 = !{!"BMLoop", !54, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!101 = !{!100, !36, i64 56}
!102 = distinct !{!102, !46, !47}
!103 = distinct !{!103, !46, !47}
!104 = distinct !{!104, !46, !47}
!105 = distinct !{!105, !46, !47}
!106 = !{i64 0, i64 12, !85, i64 12, i64 12, !85}
!107 = !{!108, !36, i64 0}
!108 = !{!"", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20}
!109 = !{!108, !40, i64 8}
!110 = !{!108, !40, i64 12}
!111 = !{!108, !40, i64 16}
!112 = !{!108, !40, i64 20}
!113 = !{!100, !36, i64 24}
!114 = !{!115, !36, i64 24}
!115 = !{!"BMEdge", !54, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !116, i64 48, !116, i64 64}
!116 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!117 = !{!115, !36, i64 32}
!118 = distinct !{!118, !46, !47}
!119 = distinct !{!119, !46, !47}
!120 = distinct !{!120, !46, !47}
!121 = distinct !{!121, !46, !47}
!122 = !{!115, !36, i64 40}
!123 = !{!100, !36, i64 32}
!124 = distinct !{!124, !46, !47}
!125 = distinct !{!125, !46, !47}
!126 = !{!127, !37, i64 12}
!127 = !{!"BMElem", !54, i64 0}
!128 = !{!127, !36, i64 0}
!129 = !{!91, !37, i64 13}
!130 = distinct !{!130, !46, !47}
!131 = distinct !{!131, !46, !47}
!132 = distinct !{!132, !46, !47}
!133 = distinct !{!133, !46, !47}
!134 = distinct !{!134, !46, !47}
!135 = distinct !{!135, !46, !47}
!136 = distinct !{!136, !46, !47}
!137 = distinct !{!137, !46, !47}
!138 = distinct !{!138, !46, !47}
!139 = !{!100, !36, i64 64}
!140 = distinct !{!140, !46, !47}
!141 = distinct !{!141, !46, !47}
!142 = distinct !{!142, !46, !47}
!143 = !{!54, !40, i64 8}
!144 = distinct !{!144, !46, !47}
!145 = distinct !{!145, !46, !47}
!146 = distinct !{!146, !46, !47}
!147 = distinct !{!147, !46, !47}
!148 = distinct !{!148, !46, !47}
!149 = !{!35, !40, i64 56}
!150 = distinct !{!150, !46, !47}
!151 = distinct !{!151, !46, !47}
!152 = distinct !{!152, !46, !47}
!153 = !{!35, !36, i64 112}
!154 = !{!35, !36, i64 0}
!155 = distinct !{!155, !46, !47}
!156 = distinct !{!156, !46, !47}
!157 = distinct !{!157, !46, !47}
!158 = distinct !{!158, !46, !47}
